uint64_t sub_20D9E980C(void **__dst, id *__src, id *a3, id *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != __src || &__src[v12] <= a4)
    {
      v29 = a4;
      memmove(a4, __src, 8 * v12);
      a4 = v29;
    }

    v54 = &a4[v12];
    v13 = a4;
    if (v10 >= 8 && v5 > v6)
    {
      v49 = a4;
      v48 = v6;
LABEL_32:
      v30 = v5 - 1;
      v31 = v4;
      v32 = v54;
      v51 = v5 - 1;
      v53 = v5;
      do
      {
        v33 = *--v32;
        v34 = *v30;
        v35 = v33;
        v36 = v34;
        v37 = [v35 name];
        v38 = sub_20DD64EB4();
        v40 = v39;

        v41 = [v36 name];
        v42 = sub_20DD64EB4();
        v44 = v43;

        if (v38 == v42 && v40 == v44)
        {

          v4 = v31 - 1;
        }

        else
        {
          v46 = sub_20DD65974();

          v4 = v31 - 1;
          if (v46)
          {
            v13 = v49;
            if (v31 != v53)
            {
              *v4 = *v51;
            }

            if (v54 <= v49 || (v5 = v51, v51 <= v48))
            {
              v5 = v51;
              goto LABEL_49;
            }

            goto LABEL_32;
          }
        }

        v13 = v49;
        v30 = v51;
        if (v54 != v31)
        {
          *v4 = *v32;
        }

        v54 = v32;
        v31 = v4;
      }

      while (v32 > v49);
      v54 = v32;
      v5 = v53;
    }
  }

  else
  {
    v13 = a4;
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v54 = &v13[v9];
    if (v7 >= 8 && v5 < v4)
    {
      v50 = v4;
      while (1)
      {
        v52 = v5;
        v14 = *v13;
        v15 = *v5;
        v16 = v14;
        v17 = [v15 name];
        v18 = sub_20DD64EB4();
        v20 = v19;

        v21 = [v16 name];
        v22 = sub_20DD64EB4();
        v24 = v23;

        v25 = v18 == v22 && v20 == v24;
        if (v25)
        {
          break;
        }

        v26 = sub_20DD65974();

        if ((v26 & 1) == 0)
        {
          goto LABEL_20;
        }

        v27 = v52;
        v5 = v52 + 1;
        v28 = v50;
        if (v6 != v52)
        {
          goto LABEL_21;
        }

LABEL_22:
        ++v6;
        if (v13 >= v54 || v5 >= v28)
        {
          goto LABEL_24;
        }
      }

LABEL_20:
      v27 = v13;
      v25 = v6 == v13++;
      v5 = v52;
      v28 = v50;
      if (v25)
      {
        goto LABEL_22;
      }

LABEL_21:
      *v6 = *v27;
      goto LABEL_22;
    }

LABEL_24:
    v5 = v6;
  }

LABEL_49:
  if (v5 != v13 || v5 >= (v13 + ((v54 - v13 + (v54 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v13, 8 * (v54 - v13));
  }

  return 1;
}

void sub_20D9E9C28(uint64_t a1, unint64_t *a2, void *a3, unint64_t *a4, uint64_t (*a5)(id))
{
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (!sub_20DD655B4())
    {
      return;
    }
  }

  else if (!*(*v5 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20DD65564();
    sub_20D9D7510(0, a2, a3);
    sub_20D9EC18C(a4, a2, a3);
    sub_20DD65284();
    a1 = v26;
    v8 = v27;
    v9 = v28;
    v10 = v29;
    v11 = v30;
  }

  else
  {
    v12 = -1 << *(a1 + 32);
    v8 = a1 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(a1 + 56);

    v10 = 0;
  }

  v15 = (v9 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v16 = v10;
    v17 = v11;
    v18 = v10;
    if (!v11)
    {
      break;
    }

LABEL_16:
    v19 = (v17 - 1) & v17;
    v20 = *(*(a1 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v20)
    {
LABEL_22:
      sub_20D9C51CC(a1);
      return;
    }

    while (1)
    {
      v21 = a5(v20);

      v10 = v18;
      v11 = v19;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_20DD655F4())
      {
        sub_20D9D7510(0, a2, a3);
        swift_dynamicCast();
        v20 = v25;
        v18 = v10;
        v19 = v11;
        if (v25)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_22;
    }

    v17 = *(v8 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_20D9E9E58(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v17 - v4;
  v6 = sub_20DD63744();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    v17[0] = v7 + 8;
    v17[1] = v7 + 16;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v7 + 16))(v9, *(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v6);
      sub_20D9EA40C(v9, v5);
      (*(v7 + 8))(v9, v6);
      sub_20D9D76EC(v5, &unk_27C843A70, &qword_20DD94260);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_20D9EA074(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = sub_20DD65604();

    if (v6)
    {
      v7 = sub_20D9EA6E0(v4, v5, sub_20D9E3788, &qword_280E02100, 0x277CD1970);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
  v10 = sub_20DD65444();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_20DD65454();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_20D9E71B0(&qword_27C843978, &qword_20DD93FE0);
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_20D9EA850(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_20D9EA240(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = sub_20DD65604();

    if (v6)
    {
      v7 = sub_20D9EA6E0(v4, v5, sub_20D9E3D58, &qword_27C843BB0, 0x277CD1B68);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  sub_20D9D7510(0, &qword_27C843BB0, 0x277CD1B68);
  v10 = sub_20DD65444();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_20DD65454();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_20D9E71B0(&unk_27C843920, &qword_20DD93FA8);
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_20D9EA850(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_20D9EA40C@<X0>(uint64_t a1@<X0>, uint64_t a6@<X8>)
{
  v9 = sub_20DD63744();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v6;
  sub_20D9EBA28(&qword_280E02290, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v39 = a1;
  v14 = sub_20DD64E24();
  v15 = v13 + 56;
  v37 = v13 + 56;
  v38 = v13;
  v16 = -1 << *(v13 + 32);
  v17 = v14 & ~v16;
  if ((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v34 = v6;
    v35 = v10;
    v36 = a6;
    v18 = ~v16;
    v21 = *(v10 + 16);
    v20 = v10 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    while (1)
    {
      v19(v12, *(v38 + 48) + v22 * v17, v9);
      sub_20D9EBA28(&qword_280E02288, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v23 = sub_20DD64E64();
      (*(v20 - 8))(v12, v9);
      if (v23)
      {
        break;
      }

      v17 = (v17 + 1) & v18;
      if (((*(v37 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v24 = 1;
        v10 = v35;
        a6 = v36;
        return (*(v10 + 56))(a6, v24, 1, v9);
      }
    }

    v25 = v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v25;
    v40 = *v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_20D9E6CCC(MEMORY[0x277CC95F0], &unk_27C843830, &unk_20DD93F10);
      v27 = v40;
    }

    v10 = v35;
    a6 = v36;
    (*(v35 + 32))(v36, *(v27 + 48) + v22 * v17, v9);
    sub_20D9EA9F0(v17, v28, v29, v30, v31);
    v24 = 0;
    *v25 = v40;
  }

  else
  {
    v24 = 1;
  }

  return (*(v10 + 56))(a6, v24, 1, v9);
}

uint64_t sub_20D9EA6E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), unint64_t *a4, void *a5)
{
  v9 = v5;

  v10 = sub_20DD655B4();
  v11 = swift_unknownObjectRetain();
  v12 = a3(v11, v10);
  v21 = v12;

  v13 = sub_20DD65444();
  v14 = -1 << *(v12 + 32);
  v15 = v13 & ~v14;
  if ((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    sub_20D9D7510(0, a4, a5);
    while (1)
    {
      v17 = *(*(v12 + 48) + 8 * v15);
      v18 = sub_20DD65454();

      if (v18)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v19 = *(*(v12 + 48) + 8 * v15);
  sub_20D9EA850(v15);
  result = sub_20DD65454();
  if (result)
  {
    *v9 = v21;
    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_20D9EA850(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_20DD65524();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_20DD65444();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_20D9EA9F0(int64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_20DD63744();
  v8 = *(v7 - 8);
  result = MEMORY[0x28223BE20](v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v5;
  v13 = *v5 + 56;
  v14 = -1 << *(*v5 + 32);
  v15 = (a1 + 1) & ~v14;
  if (((1 << v15) & *(v13 + 8 * (v15 >> 6))) != 0)
  {
    v16 = ~v14;

    v17 = sub_20DD65524();
    if ((*(v13 + 8 * (v15 >> 6)) & (1 << v15)) != 0)
    {
      v18 = v16;
      v19 = (v17 + 1) & v16;
      v39 = *(v8 + 16);
      v40 = v8 + 16;
      v20 = *(v8 + 72);
      v37 = (v8 + 8);
      v38 = v13;
      v21 = v20;
      do
      {
        v22 = v21;
        v23 = v21 * v15;
        v39(v11, *(v12 + 48) + v21 * v15, v7);
        v24 = v12;
        v25 = v19;
        v26 = v18;
        v27 = v24;
        sub_20D9EBA28(&qword_280E02290, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        v28 = sub_20DD64E24();
        (*v37)(v11, v7);
        v29 = v28 & v26;
        v18 = v26;
        v19 = v25;
        if (a1 >= v25)
        {
          if (v29 >= v25 && a1 >= v29)
          {
LABEL_16:
            v12 = v27;
            v32 = *(v27 + 48);
            v21 = v22;
            v33 = v22 * a1;
            if (v22 * a1 < v23 || v32 + v22 * a1 >= (v32 + v23 + v22))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v15;
            }

            else
            {
              a1 = v15;
              if (v33 != v23)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v15;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v29 >= v25 || a1 >= v29)
        {
          goto LABEL_16;
        }

        v12 = v27;
        v21 = v22;
LABEL_5:
        v15 = (v15 + 1) & v18;
        v13 = v38;
      }

      while (((*(v38 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
    }

    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v34 = *(v12 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v36;
    ++*(v12 + 36);
  }

  return result;
}

void (*sub_20D9EACFC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x20F326680](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_20D9EAD7C;
  }

  __break(1u);
  return result;
}

void (*sub_20D9EAD84(void (*result)(id *), unint64_t a2, unint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_20D9E8B24(a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_20D9EF644;
  }

  __break(1u);
  return result;
}

void (*sub_20D9EAE04(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x20F326680](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_20D9EF644;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_20D9EAE84(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x20F326680](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_20D9EAF04;
  }

  __break(1u);
  return result;
}

void *sub_20D9EAF28(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

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
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_20D9EB07C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
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
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_20D9EB224(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_20DD636C4();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_20D9EB4C8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {
        swift_unknownObjectRetain();
        goto LABEL_24;
      }

      ++v11;
      swift_unknownObjectRetain();
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
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_20D9EB61C(void *result, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t *sub_20D9EB790(uint64_t *result, uint64_t **a2, void *a3, uint64_t a4, unint64_t *a5, void *a6, unint64_t *a7)
{
  v9 = a4;
  v11 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v23 = -1 << *(v9 + 32);
    v13 = v9 + 56;
    v14 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v16 = v25 & *(v9 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a6 = 0;
    goto LABEL_32;
  }

  sub_20DD65564();
  sub_20D9D7510(0, a5, a6);
  sub_20D9EC18C(a7, a5, a6);
  result = sub_20DD65284();
  v9 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a6 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v29 = a6;
  a6 = 0;
  v27 = v14;
  a5 = ((v14 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v9 < 0)
    {
      if (!sub_20DD655F4())
      {
        goto LABEL_30;
      }

      sub_20D9D7510(0, v28, v29);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v15;
    if (!v16)
    {
      break;
    }

    v20 = v15;
LABEL_13:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v9 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v17)
    {
      a6 = v17;
      goto LABEL_30;
    }

    ++a2;
    a6 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= a5)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v15 = v20;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (a5 <= (v15 + 1))
  {
    v26 = (v15 + 1);
  }

  else
  {
    v26 = a5;
  }

  v15 = v26 - 1;
LABEL_30:
  v14 = v27;
LABEL_32:
  *v11 = v9;
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  return a6;
}

uint64_t sub_20D9EBA28(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20D9EBA94()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20D9D77C4;

  return sub_20D9DDB00();
}

uint64_t sub_20D9EBB40()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20D9C76B4;

  return sub_20D9DDB00();
}

void sub_20D9EBC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_20D9EBE34(319, a2, a3, a4, a5);
  if (v5 <= 0x3F)
  {
    sub_20D9EBF3C(319, v5, v6, v7, v8);
    if (v9 <= 0x3F)
    {
      sub_20D9EBFFC(319, &qword_27C843740, MEMORY[0x277D857B8]);
      if (v10 <= 0x3F)
      {
        sub_20D9EBFFC(319, &unk_27C843748, MEMORY[0x277D85788]);
        if (v11 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_20D9EBE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!qword_27C843720)
  {
    sub_20DD63744();
    type metadata accessor for CharacteristicNotificationManager.RegistrationRequest(255);
    sub_20D9EBA28(&qword_280E02290, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v5 = sub_20DD64104();
    if (!v6)
    {
      atomic_store(v5, &qword_27C843720);
    }
  }
}

uint64_t sub_20D9EBF04(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20D9EBF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!qword_27C843730)
  {
    sub_20DD63744();
    sub_20D9D7510(255, &qword_280E01EF0, 0x277CD1A60);
    sub_20D9EBA28(&qword_280E02290, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v5 = sub_20DD64104();
    if (!v6)
    {
      atomic_store(v5, &qword_27C843730);
    }
  }
}

void sub_20D9EBFFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C843668, &qword_20DD93CB0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_20D9EC070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_20DD63744();
  if (v6 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_20D9EC18C(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_20D9D7510(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_20D9EC1DC(unint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v3 = sub_20D9D4E78(MEMORY[0x277D84F90]);
  if (a1 >> 62)
  {
LABEL_28:
    v4 = sub_20DD655B4();
    if (v4)
    {
      goto LABEL_3;
    }

    return v3;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return v3;
  }

LABEL_3:
  v5 = 0;
  v27 = a1 & 0xFFFFFFFFFFFFFF8;
  v28 = a1 & 0xC000000000000001;
  v25 = v2 >> 62;
  v26 = a1;
  while (1)
  {
    if (v28)
    {
      v8 = MEMORY[0x20F326680](v5, a1);
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (v5 >= *(v27 + 16))
      {
        goto LABEL_26;
      }

      v8 = *(a1 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    v29 = v9;
    v2 = v4;
    v10 = *(v8 + 16);
    v11 = OBJC_IVAR____TtCC4Home33CharacteristicNotificationManager19RegistrationRequest_subscribedCharacteristics;
    swift_beginAccess();
    v12 = *(v8 + v11);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a1 = v3;
    v15 = sub_20D9CB2EC(v10);
    v16 = v3[2];
    v17 = (v14 & 1) == 0;
    v18 = v16 + v17;
    if (__OFADD__(v16, v17))
    {
      goto LABEL_27;
    }

    v19 = v14;
    if (v3[3] < v18)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v14 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_20D9D2594();
      if ((v19 & 1) == 0)
      {
LABEL_17:
        if (v25 && (v22 = MEMORY[0x277D84F90], sub_20DD655B4()))
        {
          sub_20D9EE5C0(v22, &qword_27C843978, &qword_20DD93FE0, &qword_280E02100, 0x277CD1970);
          v6 = v23;
        }

        else
        {
          v6 = MEMORY[0x277D84FA0];
        }

        sub_20D9D1C80(v15, v10, v6, v3);
        v7 = v10;
      }
    }

LABEL_6:
    sub_20D9DD3AC(v12, &qword_280E02100, 0x277CD1970, &unk_280E020F0, sub_20D9E10E0);

    ++v5;
    v4 = v2;
    a1 = v26;
    if (v29 == v2)
    {
      return v3;
    }
  }

  sub_20D9CC5EC(v18, isUniquelyReferenced_nonNull_native);
  sub_20D9D7510(0, &qword_280E01EF0, 0x277CD1A60);
  v20 = sub_20D9CB2EC(v10);
  if ((v19 & 1) == (v21 & 1))
  {
    v15 = v20;
    if ((v19 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_6;
  }

  result = sub_20DD659E4();
  __break(1u);
  return result;
}

uint64_t sub_20D9EC494(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 152) = a2;
  *(v3 + 160) = a3;
  *(v3 + 184) = a1;
  if (qword_27C842410 != -1)
  {
    swift_once();
  }

  v4 = qword_27C843648;
  *(v3 + 168) = qword_27C843648;

  return MEMORY[0x2822009F8](sub_20D9EC534, v4, 0);
}

uint64_t sub_20D9EC534()
{
  v34 = v0;
  v1 = *(v0 + 160);
  if ((v1 & 0xC000000000000001) != 0)
  {
    if (sub_20DD655B4())
    {
LABEL_3:
      if (qword_27C842428 != -1)
      {
        swift_once();
      }

      v2 = *(v0 + 152);
      v3 = sub_20DD64C44();
      __swift_project_value_buffer(v3, qword_27C843650);
      v4 = v2;

      v5 = sub_20DD64C24();
      v6 = sub_20DD65384();

      if (os_log_type_enabled(v5, v6))
      {
        v8 = *(v0 + 152);
        v7 = *(v0 + 160);
        v9 = *(v0 + 184);
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v33 = v11;
        *v10 = 136315650;
        v12 = [v8 name];
        v13 = sub_20DD64EB4();
        v15 = v14;

        v16 = sub_20D9E0B38(v13, v15, &v33);

        *(v10 + 4) = v16;
        *(v10 + 12) = 2080;
        if (v9)
        {
          v17 = 0x676E696C62616E45;
        }

        else
        {
          v17 = 0x6E696C6261736944;
        }

        if (v9)
        {
          v18 = 0xE800000000000000;
        }

        else
        {
          v18 = 0xE900000000000067;
        }

        v19 = sub_20D9E0B38(v17, v18, &v33);

        *(v10 + 14) = v19;
        *(v10 + 22) = 2080;
        v24 = Set<>.groupedDescription.getter(v7, v20, v21, v22, v23);
        v26 = sub_20D9E0B38(v24, v25, &v33);

        *(v10 + 24) = v26;
        _os_log_impl(&dword_20D9BF000, v5, v6, "%s: %s notifications for %s", v10, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x20F327D10](v11, -1, -1);
        MEMORY[0x20F327D10](v10, -1, -1);
      }

      v27 = *(v0 + 152);
      v28 = *(v0 + 184);
      sub_20DA54FA8(*(v0 + 160));
      sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
      v29 = sub_20DD64FB4();
      *(v0 + 176) = v29;

      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 144;
      *(v0 + 24) = sub_20D9EC904;
      v30 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8439D8, &qword_20DD94070);
      *(v0 + 80) = MEMORY[0x277D85DD0];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_20D9DD1F8;
      *(v0 + 104) = &block_descriptor;
      *(v0 + 112) = v30;
      [v27 enableNotification:v28 forCharacteristics:v29 completionHandler:v0 + 80];

      return MEMORY[0x282200938](v0 + 16);
    }
  }

  else if (*(v1 + 16))
  {
    goto LABEL_3;
  }

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_20D9EC904()
{
  v1 = *(*v0 + 168);

  return MEMORY[0x2822009F8](sub_20D9EC9F8, v1, 0);
}

uint64_t sub_20D9EC9F8()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20D9ECA60(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  if (qword_27C842410 != -1)
  {
    swift_once();
  }

  v3 = qword_27C843648;
  v2[4] = qword_27C843648;

  return MEMORY[0x2822009F8](sub_20D9ECAFC, v3, 0);
}

uint64_t sub_20D9ECAFC()
{
  v1 = sub_20D9DFEE4(*(v0 + 16), *(v0 + 24));
  *(v0 + 160) = v1 & 1;
  if ((v1 & 1) == 0)
  {
    v7 = *(v0 + 16);
    v6 = *(v0 + 24);
    v59 = MEMORY[0x277D84F90];
    v8 = -1;
    v9 = -1 << v6[32];
    if (-v9 < 64)
    {
      v8 = ~(-1 << -v9);
    }

    v10 = v8 & *(v6 + 8);
    v11 = (63 - v9) >> 6;

    v12 = 0;
    if (!v10)
    {
      while (1)
      {
LABEL_9:
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
          goto LABEL_39;
        }

        if (v13 >= v11)
        {
          break;
        }

        v10 = *&v6[8 * v13 + 64];
        ++v12;
        if (v10)
        {
          v12 = v13;
          goto LABEL_13;
        }
      }

      *(v0 + 40) = v59;
      if (v59 < 0 || (v59 & 0x4000000000000000) != 0)
      {
        v22 = sub_20DD655B4();
        *(v0 + 48) = v22;
        if (v22)
        {
LABEL_25:
          if (v22 >= 1)
          {
            *(v0 + 56) = 0;
            v23 = *(v0 + 40);
            if ((v23 & 0xC000000000000001) != 0)
            {
              v24 = MEMORY[0x20F326680](0);
            }

            else
            {
              v24 = *(v23 + 32);
            }

            v6 = v24;
            v25 = MEMORY[0x277D84F90];
            *(v0 + 64) = v24;
            if (*(*(v0 + 24) + 16))
            {
              v26 = sub_20D9CB2EC(v24);
              if (v27)
              {
                v28 = *(*(*(v0 + 24) + 56) + 8 * v26);

LABEL_34:
                *(v0 + 72) = v28;
                v29 = swift_task_alloc();
                *(v0 + 80) = v29;
                *v29 = v0;
                v29[1] = sub_20D9ED1C8;
                v30 = 0;
LABEL_35:

                return sub_20D9EC494(v30, v6, v28);
              }
            }

            if (!(v25 >> 62))
            {
LABEL_33:
              v28 = MEMORY[0x277D84FA0];
              goto LABEL_34;
            }

LABEL_79:
            if (sub_20DD655B4())
            {
              sub_20D9EE5C0(MEMORY[0x277D84F90], &qword_27C843978, &qword_20DD93FE0, &qword_280E02100, 0x277CD1970);
              v28 = v58;
              goto LABEL_34;
            }

            goto LABEL_33;
          }

LABEL_78:
          __break(1u);
          goto LABEL_79;
        }
      }

      else
      {
        v22 = *(v59 + 16);
        *(v0 + 48) = v22;
        if (v22)
        {
          goto LABEL_25;
        }
      }

      v32 = *(v0 + 16);

      v33 = *(v32 + 32);
      *(v0 + 161) = v33;
      v34 = 1 << v33;
      if (v34 < 64)
      {
        v35 = ~(-1 << v34);
      }

      else
      {
        v35 = -1;
      }

      v36 = v35 & *(v32 + 64);

      v37 = 0;
      v38 = MEMORY[0x277D84FA0];
      v39 = MEMORY[0x277D84F90] >> 62;
      if (!v36)
      {
LABEL_46:
        while (1)
        {
          v41 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            break;
          }

          v40 = *(v0 + 16);
          if (v41 >= (((1 << *(v0 + 161)) + 63) >> 6))
          {

            goto LABEL_61;
          }

          v36 = *(v40 + 8 * v41 + 64);
          ++v37;
          if (v36)
          {
            v37 = v41;
            goto LABEL_50;
          }
        }

        __break(1u);
        goto LABEL_78;
      }

      while (1)
      {
        v40 = *(v0 + 16);
LABEL_50:
        *(v0 + 88) = v36;
        *(v0 + 96) = v37;
        v42 = *(v0 + 24);
        v43 = (v37 << 9) | (8 * __clz(__rbit64(v36)));
        v44 = *(*(v40 + 48) + v43);
        *(v0 + 104) = v44;
        v45 = *(*(v40 + 56) + v43);
        *(v0 + 112) = v45;
        v46 = *(v42 + 16);
        v6 = v44;

        if (v46 && (v47 = sub_20D9CB2EC(v6), (v48 & 1) != 0))
        {
          v49 = *(*(*(v0 + 24) + 56) + 8 * v47);
        }

        else if (v39 && (v50 = MEMORY[0x277D84F90], sub_20DD655B4()))
        {
          sub_20D9EE5C0(v50, &qword_27C843978, &qword_20DD93FE0, &qword_280E02100, 0x277CD1970);
          v49 = v51;
        }

        else
        {
          v49 = v38;
        }

        *(v0 + 120) = v49;
        if ((sub_20DA2C03C(v45, v49) & 1) == 0)
        {
          break;
        }

        v36 &= v36 - 1;

        if (!v36)
        {
          goto LABEL_46;
        }
      }

      if ((v49 & 0xC000000000000001) != 0)
      {

        v54 = sub_20DD655B4();
      }

      else
      {
        v54 = *(v49 + 16);
      }

      if ((v45 & 0xC000000000000001) != 0)
      {
        if (v45 < 0)
        {
          v55 = v45;
        }

        else
        {
          v55 = v45 & 0xFFFFFFFFFFFFFF8;
        }

        if (v54 > sub_20DD655B4() / 8)
        {
          v56 = sub_20DD655B4();
          v45 = sub_20D9E3788(v55, v56);
LABEL_74:
          v28 = sub_20DA86820(v49, v45);
LABEL_76:
          *(v0 + 128) = v28;
          v57 = swift_task_alloc();
          *(v0 + 136) = v57;
          *v57 = v0;
          v57[1] = sub_20D9ED798;
          v30 = 1;
          goto LABEL_35;
        }
      }

      else if (v54 > *(v45 + 16) >> 3)
      {
        goto LABEL_74;
      }

      sub_20D9E9C28(v49, &qword_280E02100, 0x277CD1970, &unk_280E020F0, sub_20D9EA074);
      v28 = v45;
      goto LABEL_76;
    }

    while (1)
    {
      while (1)
      {
LABEL_13:
        v14 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v15 = *(v7 + 16);
        v16 = *(*(v6 + 6) + ((v12 << 9) | (8 * v14)));
        v17 = v16;
        if (!v15)
        {
          goto LABEL_20;
        }

        v18 = sub_20D9CB2EC(v16);
        if ((v19 & 1) == 0)
        {
          goto LABEL_20;
        }

        v20 = *(*(v7 + 56) + 8 * v18);
        if ((v20 & 0xC000000000000001) != 0)
        {
          break;
        }

        if (*(v20 + 16))
        {
          goto LABEL_17;
        }

LABEL_20:
        sub_20DD65754();
        sub_20DD65784();
        sub_20DD65794();
        sub_20DD65764();
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v21 = sub_20DD655B4();

      if (!v21)
      {
        goto LABEL_20;
      }

LABEL_17:

      if (!v10)
      {
        goto LABEL_9;
      }
    }
  }

  if (qword_27C842428 != -1)
  {
LABEL_39:
    swift_once();
  }

  v2 = sub_20DD64C44();
  __swift_project_value_buffer(v2, qword_27C843650);
  v3 = sub_20DD64C24();
  v4 = sub_20DD65384();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20D9BF000, v3, v4, "Nothing changed", v5, 2u);
    MEMORY[0x20F327D10](v5, -1, -1);
  }

LABEL_61:
  v52 = *(v0 + 8);
  v53 = (*(v0 + 160) & 1) == 0;

  return v52(v53);
}

uint64_t sub_20D9ED1C8()
{
  v1 = *(*v0 + 32);

  return MEMORY[0x2822009F8](sub_20D9ED2F4, v1, 0);
}

uint64_t sub_20D9ED2F4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 48);

  if ((v1 + 1) != v2)
  {
    v23 = *(v0 + 56) + 1;
    *(v0 + 56) = v23;
    v24 = *(v0 + 40);
    if ((v24 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x20F326680]();
    }

    else
    {
      v25 = *(v24 + 8 * v23 + 32);
    }

    v2 = v25;
    *(v0 + 64) = v25;
    if (*(*(v0 + 24) + 16) && (v29 = sub_20D9CB2EC(v25), (v30 & 1) != 0))
    {
      v31 = *(*(*(v0 + 24) + 56) + 8 * v29);
    }

    else
    {
      if (MEMORY[0x277D84F90] >> 62)
      {
LABEL_49:
        if (sub_20DD655B4())
        {
          sub_20D9EE5C0(MEMORY[0x277D84F90], &qword_27C843978, &qword_20DD93FE0, &qword_280E02100, 0x277CD1970);
          v31 = v38;
          goto LABEL_32;
        }
      }

      v31 = MEMORY[0x277D84FA0];
    }

LABEL_32:
    *(v0 + 72) = v31;
    v32 = swift_task_alloc();
    *(v0 + 80) = v32;
    *v32 = v0;
    v32[1] = sub_20D9ED1C8;
    v33 = 0;
LABEL_33:

    return sub_20D9EC494(v33, v2, v31);
  }

  v3 = *(v0 + 16);

  v4 = *(v3 + 32);
  *(v0 + 161) = v4;
  v5 = 1 << v4;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(v3 + 64);

  v8 = 0;
  v9 = MEMORY[0x277D84FA0];
  v10 = MEMORY[0x277D84F90] >> 62;
  if (v7)
  {
    while (1)
    {
      v11 = *(v0 + 16);
LABEL_11:
      *(v0 + 88) = v7;
      *(v0 + 96) = v8;
      v13 = *(v0 + 24);
      v14 = (v8 << 9) | (8 * __clz(__rbit64(v7)));
      v15 = *(*(v11 + 48) + v14);
      *(v0 + 104) = v15;
      v16 = *(*(v11 + 56) + v14);
      *(v0 + 112) = v16;
      v17 = *(v13 + 16);
      v2 = v15;

      if (v17 && (v18 = sub_20D9CB2EC(v2), (v19 & 1) != 0))
      {
        v20 = *(*(*(v0 + 24) + 56) + 8 * v18);
      }

      else if (v10 && (v21 = MEMORY[0x277D84F90], sub_20DD655B4()))
      {
        sub_20D9EE5C0(v21, &qword_27C843978, &qword_20DD93FE0, &qword_280E02100, 0x277CD1970);
        v20 = v22;
      }

      else
      {
        v20 = v9;
      }

      *(v0 + 120) = v20;
      if ((sub_20DA2C03C(v16, v20) & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;

      if (!v7)
      {
        goto LABEL_7;
      }
    }

    if ((v20 & 0xC000000000000001) != 0)
    {

      v34 = sub_20DD655B4();
      if ((v16 & 0xC000000000000001) != 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v34 = *(v20 + 16);

      if ((v16 & 0xC000000000000001) != 0)
      {
LABEL_38:
        if (v16 < 0)
        {
          v35 = v16;
        }

        else
        {
          v35 = v16 & 0xFFFFFFFFFFFFFF8;
        }

        if (v34 > sub_20DD655B4() / 8)
        {
          v36 = sub_20DD655B4();
          v16 = sub_20D9E3788(v35, v36);
LABEL_45:
          v31 = sub_20DA86820(v20, v16);
LABEL_47:
          *(v0 + 128) = v31;
          v37 = swift_task_alloc();
          *(v0 + 136) = v37;
          *v37 = v0;
          v37[1] = sub_20D9ED798;
          v33 = 1;
          goto LABEL_33;
        }

LABEL_46:
        sub_20D9E9C28(v20, &qword_280E02100, 0x277CD1970, &unk_280E020F0, sub_20D9EA074);
        v31 = v16;
        goto LABEL_47;
      }
    }

    if (v34 > *(v16 + 16) >> 3)
    {
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  while (1)
  {
LABEL_7:
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_49;
    }

    v11 = *(v0 + 16);
    if (v12 >= (((1 << *(v0 + 161)) + 63) >> 6))
    {
      break;
    }

    v7 = *(v11 + 8 * v12 + 64);
    ++v8;
    if (v7)
    {
      v8 = v12;
      goto LABEL_11;
    }
  }

  v26 = *(v0 + 8);
  v27 = (*(v0 + 160) & 1) == 0;

  return v26(v27);
}

uint64_t sub_20D9ED798()
{
  v1 = *(*v0 + 32);

  return MEMORY[0x2822009F8](sub_20D9ED8C4, v1, 0);
}

uint64_t sub_20D9ED8C4()
{
  v1 = v0[14];
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = sub_20DD655B4();
  }

  else
  {
    v2 = *(v1 + 16);
  }

  v3 = v0[15];
  if ((v3 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = v0[15];
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    if (v2 > sub_20DD655B4() / 8)
    {
      v5 = sub_20DD655B4();
      v3 = sub_20D9E3788(v4, v5);
LABEL_11:
      v6 = sub_20DA86820(v0[14], v3);

      goto LABEL_14;
    }

    v3 = v0[15];
  }

  else if (v2 > *(v3 + 16) >> 3)
  {
    goto LABEL_11;
  }

  v10 = v3;
  sub_20D9E9C28(v0[14], &qword_280E02100, 0x277CD1970, &unk_280E020F0, sub_20D9EA074);

  v6 = v10;
LABEL_14:
  v0[18] = v6;
  v7 = swift_task_alloc();
  v0[19] = v7;
  *v7 = v0;
  v7[1] = sub_20D9EDA58;
  v8 = v0[13];

  return sub_20D9EC494(0, v8, v6);
}

uint64_t sub_20D9EDA58()
{
  v1 = *(*v0 + 32);

  return MEMORY[0x2822009F8](sub_20D9EDB84, v1, 0);
}

void sub_20D9EDB84()
{
  v1 = *(v0 + 96);
  v2 = (*(v0 + 88) - 1) & *(v0 + 88);
  v3 = MEMORY[0x277D84FA0];
  v4 = MEMORY[0x277D84F90] >> 62;
  if (v2)
  {
    while (1)
    {
      v5 = *(v0 + 16);
LABEL_7:
      *(v0 + 88) = v2;
      *(v0 + 96) = v1;
      v7 = *(v0 + 24);
      v8 = (v1 << 9) | (8 * __clz(__rbit64(v2)));
      v9 = *(*(v5 + 48) + v8);
      *(v0 + 104) = v9;
      v10 = *(*(v5 + 56) + v8);
      *(v0 + 112) = v10;
      v11 = *(v7 + 16);
      v12 = v9;

      if (v11 && (v13 = sub_20D9CB2EC(v12), (v14 & 1) != 0))
      {
        v15 = *(*(*(v0 + 24) + 56) + 8 * v13);
      }

      else if (v4 && (v16 = MEMORY[0x277D84F90], sub_20DD655B4()))
      {
        sub_20D9EE5C0(v16, &qword_27C843978, &qword_20DD93FE0, &qword_280E02100, 0x277CD1970);
        v15 = v17;
      }

      else
      {
        v15 = v3;
      }

      *(v0 + 120) = v15;
      if ((sub_20DA2C03C(v10, v15) & 1) == 0)
      {
        break;
      }

      v2 &= v2 - 1;

      if (!v2)
      {
        goto LABEL_3;
      }
    }

    if ((v15 & 0xC000000000000001) != 0)
    {

      v20 = sub_20DD655B4();
      if ((v10 & 0xC000000000000001) != 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v20 = *(v15 + 16);

      if ((v10 & 0xC000000000000001) != 0)
      {
LABEL_22:
        if (v10 < 0)
        {
          v21 = v10;
        }

        else
        {
          v21 = v10 & 0xFFFFFFFFFFFFFF8;
        }

        if (v20 > sub_20DD655B4() / 8)
        {
          v22 = sub_20DD655B4();
          v10 = sub_20D9E3788(v21, v22);
LABEL_29:
          v23 = sub_20DA86820(v15, v10);
LABEL_31:
          *(v0 + 128) = v23;
          v24 = swift_task_alloc();
          *(v0 + 136) = v24;
          *v24 = v0;
          v24[1] = sub_20D9ED798;

          sub_20D9EC494(1, v12, v23);
          return;
        }

LABEL_30:
        sub_20D9E9C28(v15, &qword_280E02100, 0x277CD1970, &unk_280E020F0, sub_20D9EA074);
        v23 = v10;
        goto LABEL_31;
      }
    }

    if (v20 > *(v10 + 16) >> 3)
    {
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  while (1)
  {
LABEL_3:
    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      return;
    }

    v5 = *(v0 + 16);
    if (v6 >= (((1 << *(v0 + 161)) + 63) >> 6))
    {
      break;
    }

    v2 = *(v5 + 8 * v6 + 64);
    ++v1;
    if (v2)
    {
      v1 = v6;
      goto LABEL_7;
    }
  }

  v18 = *(v0 + 8);
  v19 = (*(v0 + 160) & 1) == 0;

  v18(v19);
}

unint64_t sub_20D9EDED8(unint64_t isUniquelyReferenced_nonNull_bridgeObject, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v6 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v6)
  {
    v7 = 0;
    v33 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v8 = MEMORY[0x277D84F90];
    v30 = isUniquelyReferenced_nonNull_bridgeObject;
    v31 = v6;
    v32 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (1)
    {
      if (v34)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x20F326680](v7, v30);
      }

      else
      {
        if (v7 >= *(v33 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v32 + 8 * v7);
      }

      v9 = isUniquelyReferenced_nonNull_bridgeObject;
      v10 = __OFADD__(v7++, 1);
      if (v10)
      {
        break;
      }

      v41 = isUniquelyReferenced_nonNull_bridgeObject;
      v11 = v5;
      sub_20D9DCD90(&v41, a2, a4, &v40);
      if (v5)
      {
        goto LABEL_40;
      }

      v12 = v40;
      v9 = (v40 >> 62);
      if (v40 >> 62)
      {
        v13 = sub_20DD655B4();
      }

      else
      {
        v13 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v14 = v8 >> 62;
      if (v8 >> 62)
      {
        v27 = sub_20DD655B4();
        v16 = v27 + v13;
        if (__OFADD__(v27, v13))
        {
LABEL_39:
          __break(1u);
LABEL_40:

          return v8;
        }
      }

      else
      {
        v15 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v16 = v15 + v13;
        if (__OFADD__(v15, v13))
        {
          goto LABEL_39;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v38 = v13;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v14)
        {
          v17 = v8 & 0xFFFFFFFFFFFFFF8;
          if (v16 <= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

LABEL_20:
        sub_20DD655B4();
        goto LABEL_21;
      }

      if (v14)
      {
        goto LABEL_20;
      }

LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_20DD65734();
      v8 = isUniquelyReferenced_nonNull_bridgeObject;
      v17 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v18 = *(v17 + 16);
      v19 = *(v17 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_20DD655B4();
        v20 = isUniquelyReferenced_nonNull_bridgeObject;
        if (!isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_4:

          if (v38 > 0)
          {
            goto LABEL_43;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v20 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v20)
        {
          goto LABEL_4;
        }
      }

      if (((v19 >> 1) - v18) < v38)
      {
        goto LABEL_44;
      }

      v37 = v8;
      v5 = v17 + 8 * v18 + 32;
      if (v9)
      {
        if (v20 < 1)
        {
          goto LABEL_46;
        }

        sub_20D9EF5F8(&qword_27C8439E8, &qword_27C8439E0, &qword_20DD94078, MEMORY[0x277D83988]);
        for (i = 0; i != v20; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8439E0, &qword_20DD94078);
          v22 = sub_20D9EACFC(v39, i, v12);
          v24 = *v23;
          (v22)(v39, 0);
          *(v5 + 8 * i) = v24;
        }
      }

      else
      {
        sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
        swift_arrayInitWithCopy();
      }

      v5 = v11;
      v8 = v37;
      if (v38 >= 1)
      {
        v25 = *(v17 + 16);
        v10 = __OFADD__(v25, v38);
        v26 = v25 + v38;
        if (v10)
        {
          goto LABEL_45;
        }

        *(v17 + 16) = v26;
      }

LABEL_5:
      if (v7 == v31)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v28 = isUniquelyReferenced_nonNull_bridgeObject;
    v6 = sub_20DD655B4();
    isUniquelyReferenced_nonNull_bridgeObject = v28;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_20D9EE274(uint64_t a1)
{
  v2 = sub_20DD641A4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843990, &qword_20DD93FF8);
    v9 = sub_20DD656D4();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_20D9EBA28(&qword_27C8435C0, 255, MEMORY[0x277D15F40], MEMORY[0x277D15F50]);
      v16 = sub_20DD64E24();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_20D9EBA28(&qword_27C8435D0, 255, MEMORY[0x277D15F40], MEMORY[0x277D15F60]);
          v23 = sub_20DD64E64();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_20D9EE5C0(unint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, void *a5)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v10 = a3;
    v11 = a2;
    v12 = sub_20DD655B4();
    a2 = v11;
    a3 = v10;
    if (v12)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      v7 = sub_20DD656D4();
      v8 = v5 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = sub_20DD655B4();
      if (!v9)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v7 = MEMORY[0x277D84FA0];
  v8 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *(v8 + 16);
  if (!v9)
  {
    return;
  }

LABEL_9:
  v13 = v7 + 56;
  v46 = v9;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    v42 = v5;
    while (1)
    {
      v15 = MEMORY[0x20F326680](v14, v5);
      v16 = __OFADD__(v14++, 1);
      if (v16)
      {
        break;
      }

      v17 = v15;
      v18 = sub_20DD65444();
      v19 = -1 << *(v7 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = *(v13 + 8 * (v20 >> 6));
      v23 = 1 << v20;
      if (((1 << v20) & v22) != 0)
      {
        v24 = ~v19;
        sub_20D9D7510(0, a4, a5);
        while (1)
        {
          v25 = *(*(v7 + 48) + 8 * v20);
          v26 = sub_20DD65454();

          if (v26)
          {
            break;
          }

          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = *(v13 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          if (((1 << v20) & v22) == 0)
          {
            v9 = v46;
            v5 = v42;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v9 = v46;
        v5 = v42;
        if (v14 == v46)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v13 + 8 * v21) = v23 | v22;
        *(*(v7 + 48) + 8 * v20) = v17;
        v27 = *(v7 + 16);
        v16 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v16)
        {
          goto LABEL_32;
        }

        *(v7 + 16) = v28;
        if (v14 == v9)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v29 = 0;
    v43 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v29 != v43)
    {
      v30 = *(v5 + 32 + 8 * v29);
      v31 = sub_20DD65444();
      v32 = -1 << *(v7 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      v35 = *(v13 + 8 * (v33 >> 6));
      v36 = 1 << v33;
      if (((1 << v33) & v35) != 0)
      {
        v37 = ~v32;
        sub_20D9D7510(0, a4, a5);
        while (1)
        {
          v38 = *(*(v7 + 48) + 8 * v33);
          v39 = sub_20DD65454();

          if (v39)
          {
            break;
          }

          v33 = (v33 + 1) & v37;
          v34 = v33 >> 6;
          v35 = *(v13 + 8 * (v33 >> 6));
          v36 = 1 << v33;
          if (((1 << v33) & v35) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v13 + 8 * v34) = v36 | v35;
        *(*(v7 + 48) + 8 * v33) = v30;
        v40 = *(v7 + 16);
        v16 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v16)
        {
          goto LABEL_34;
        }

        *(v7 + 16) = v41;
      }

      if (++v29 == v46)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_20D9EE93C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843848, &qword_20DD93F20);
    v3 = sub_20DD656D4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_20DD65A64();

      sub_20DD64F24();
      result = sub_20DD65AA4();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_20DD65974();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_20D9EEAEC(uint64_t a1)
{
  v2 = sub_20DD64674();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8438B0, &qword_20DD93F68);
    v9 = sub_20DD656D4();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_20D9EBA28(&qword_27C8438A0, 255, MEMORY[0x277D17688], MEMORY[0x277D17690]);
      v16 = sub_20DD64E24();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_20D9EBA28(&qword_27C8438A8, 255, MEMORY[0x277D17688], MEMORY[0x277D17698]);
          v23 = sub_20DD64E64();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_20D9EEE3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843B60, &qword_20DD93ED8);
    v3 = sub_20DD656D4();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_20DD64EB4();
      sub_20DD65A64();
      v27 = v7;
      sub_20DD64F24();
      v8 = sub_20DD65AA4();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_20DD64EB4();
        v18 = v17;
        if (v16 == sub_20DD64EB4() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_20DD65974();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_20D9EF030(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_20DD655B4())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843800, &unk_20DD93EF0);
      v3 = sub_20DD656D4();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_20DD655B4();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v37 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v35 = v1;
    while (1)
    {
      v8 = MEMORY[0x20F326680](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_20DD65444();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        _s19ItemSearchContainerCMa();
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_20DD65454();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v35;
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v35;
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = *(v1 + 32 + 8 * v22);
      v24 = sub_20DD65444();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        _s19ItemSearchContainerCMa();
        while (1)
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_20DD65454();

          if (v32)
          {
            break;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
          if (((1 << v26) & v28) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v27) = v29 | v28;
        *(*(v3 + 48) + 8 * v26) = v23;
        v33 = *(v3 + 16);
        v9 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v34;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_20D9EF2FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20D9D77C4;

  return sub_20DA206D0(a1, v4);
}

uint64_t sub_20D9EF3B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20D9C76B4;

  return sub_20DA206D0(a1, v4);
}

uint64_t sub_20D9EF46C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_20D9EF478(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20D9D77C4;

  return sub_20D9D94B0(a1, v4, v5, v6);
}

uint64_t sub_20D9EF52C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843668, &qword_20DD93CB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_20D9EF5F8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t HFItemManager.reloadAndUpdateAllItems(sender:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = sub_20DD650F4();
  v2[6] = sub_20DD650E4();
  v4 = sub_20DD65094();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_20D9EF6F0, v4, v3);
}

uint64_t sub_20D9EF6F0()
{
  v1 = [*(v0 + 32) reloadAndUpdateAllItemsFromSenderSelector_];
  *(v0 + 72) = v1;
  v2 = sub_20DD650E4();
  *(v0 + 80) = v2;
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  v5 = sub_20D9EFC10();
  *v4 = v0;
  v4[1] = sub_20D9EF81C;
  v6 = MEMORY[0x277D85700];

  return MEMORY[0x2822008A0](v0 + 16, v2, v6, 0xD000000000000020, 0x800000020DD97F80, sub_20D9EFC08, v3, v5);
}

uint64_t sub_20D9EF81C()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_20D9EF9C0;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_20D9EF940;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_20D9EF940()
{

  v1 = *(v0 + 8);
  v2 = ~(*(v0 + 16) >> 1) & 0x4000000000000000 | *(v0 + 16);

  return v1(v2);
}

uint64_t sub_20D9EF9C0()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

void sub_20D9EFA48(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8439F8, &unk_20DD94090);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_20D9EFD14;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20DA1AA10;
  aBlock[3] = &block_descriptor_0;
  v10 = _Block_copy(aBlock);

  v11 = [a2 addCompletionBlock_];
  _Block_release(v10);
}

unint64_t sub_20D9EFC10()
{
  result = qword_27C8439F0;
  if (!qword_27C8439F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C8439F0);
  }

  return result;
}

id sub_20D9EFC5C(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8439F8, &unk_20DD94090);
    return sub_20DD650A4();
  }

  if (a1)
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8439F8, &unk_20DD94090);
    return sub_20DD650B4();
  }

  else
  {
    result = [objc_opt_self() na_genericError];
    if (result)
    {
      goto LABEL_3;
    }

    __break(1u);
  }

  return result;
}

id sub_20D9EFD14(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8439F8, &unk_20DD94090);

  return sub_20D9EFC5C(a1, a2);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20D9EFDCC(uint64_t a1, uint64_t a2)
{
  v3 = sub_20DD641A4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_20D9F498C(&qword_27C8435C0, MEMORY[0x277D15F40], MEMORY[0x277D15F50]), v7 = sub_20DD64E24(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_20D9F498C(&qword_27C8435D0, MEMORY[0x277D15F40], MEMORY[0x277D15F60]);
      v15 = sub_20DD64E64();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_20D9EFFE4(uint64_t a1, uint64_t a2)
{
  v3 = sub_20DD641F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_20D9F498C(&qword_27C843998, MEMORY[0x277D16340], MEMORY[0x277D16358]), v7 = sub_20DD64E24(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_20D9F498C(&unk_27C8439A0, MEMORY[0x277D16340], MEMORY[0x277D16368]);
      v15 = sub_20DD64E64();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_20D9F0210(void *a1, uint64_t a2, unint64_t *a3, void *a4)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v5 = a1;
    v6 = sub_20DD65604();
  }

  else if (*(a2 + 16) && (sub_20D9D7510(0, a3, a4), v7 = sub_20DD65444(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v10 = ~v8;
    do
    {
      v11 = *(*(a2 + 48) + 8 * v9);
      v6 = sub_20DD65454();

      if (v6)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t MatterAccessoryRepresentable.tilePath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___HFMatterAccessoryRepresentable_tilePath;
  v4 = sub_20DD63FE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_20D9F0398(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A20, &qword_20DD940B0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  sub_20D9D7558(a1, &v13[-v8], &qword_27C843A20, &qword_20DD940B0);
  v10 = *a2;
  v11 = OBJC_IVAR___HFMatterAccessoryRepresentable_staticMatterDevice;
  swift_beginAccess();
  sub_20D9D7558(v10 + v11, v7, &qword_27C843A20, &qword_20DD940B0);
  swift_beginAccess();
  sub_20D9F0D50(v9, v10 + v11);
  swift_endAccess();
  sub_20D9F04E4(v7);
  sub_20D9D76EC(v7, &qword_27C843A20, &qword_20DD940B0);
  return sub_20D9D76EC(v9, &qword_27C843A20, &qword_20DD940B0);
}

uint64_t sub_20D9F04E4(uint64_t a1)
{
  v2 = v1;
  v34 = a1;
  ObjectType = swift_getObjectType();
  v3 = sub_20DD64294();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v31 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v30 = &v28[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A20, &qword_20DD940B0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v33 = &v28[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v12 = &v28[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843B18, &qword_20DD94178);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v28[-v15];
  v17 = OBJC_IVAR___HFMatterAccessoryRepresentable_staticMatterDevice;
  swift_beginAccess();
  v18 = *(v14 + 56);
  sub_20D9D7558(v34, v16, &qword_27C843A20, &qword_20DD940B0);
  sub_20D9D7558(v2 + v17, &v16[v18], &qword_27C843A20, &qword_20DD940B0);
  v34 = v4;
  v19 = *(v4 + 48);
  if (v19(v16, 1, v3) == 1)
  {
    if (v19(&v16[v18], 1, v3) == 1)
    {
      return sub_20D9D76EC(v16, &qword_27C843A20, &qword_20DD940B0);
    }
  }

  else
  {
    sub_20D9D7558(v16, v12, &qword_27C843A20, &qword_20DD940B0);
    if (v19(&v16[v18], 1, v3) != 1)
    {
      v25 = v34;
      v26 = v30;
      (*(v34 + 32))(v30, &v16[v18], v3);
      sub_20D9F498C(&unk_27C843B20, MEMORY[0x277D16408], MEMORY[0x277D16428]);
      v29 = sub_20DD64E64();
      v27 = *(v25 + 8);
      v27(v26, v3);
      v27(v12, v3);
      result = sub_20D9D76EC(v16, &qword_27C843A20, &qword_20DD940B0);
      if (v29)
      {
        return result;
      }

      goto LABEL_7;
    }

    (*(v34 + 8))(v12, v3);
  }

  sub_20D9D76EC(v16, &qword_27C843B18, &qword_20DD94178);
LABEL_7:
  v21 = v33;
  sub_20D9D7558(v2 + v17, v33, &qword_27C843A20, &qword_20DD940B0);
  if (v19(v21, 1, v3) == 1)
  {
    sub_20D9D76EC(v21, &qword_27C843A20, &qword_20DD940B0);
    v36 = 0;
    memset(v35, 0, sizeof(v35));
  }

  else
  {
    v22 = v34;
    v23 = v31;
    (*(v34 + 32))(v31, v21, v3);
    sub_20D9F0980(v23, v35);
    (*(v22 + 8))(v23, v3);
  }

  v24 = OBJC_IVAR___HFMatterAccessoryRepresentable__tileInfo;
  swift_beginAccess();
  sub_20D9F4A38(v35, v2 + v24);
  return swift_endAccess();
}

uint64_t sub_20D9F0980@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_20DD64054();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  v11 = sub_20DD63F84();
  if ((v11 & 0x10000) == 0)
  {
    v12 = v11;
    v13 = sub_20DD64284();
    if (*(v13 + 16))
    {
      v14 = sub_20D9CB188(v12);
      if (v15)
      {
        (*(v5 + 16))(v8, *(v13 + 56) + *(v5 + 72) * v14, v4);

        v16 = *(v5 + 32);
        v16(v10, v8, v4);
        a2[3] = v4;
        a2[4] = sub_20D9F498C(&qword_27C843B10, MEMORY[0x277D15C38], MEMORY[0x277D15C28]);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
        return (v16)(boxed_opaque_existential_1, v10, v4);
      }
    }
  }

  v19 = sub_20DD64294();
  a2[3] = v19;
  a2[4] = sub_20D9F498C(&qword_27C843D60, MEMORY[0x277D16408], MEMORY[0x277D163F8]);
  v20 = __swift_allocate_boxed_opaque_existential_1(a2);
  v21 = *(*(v19 - 8) + 16);

  return v21(v20, a1, v19);
}

uint64_t sub_20D9F0BDC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___HFMatterAccessoryRepresentable_staticMatterDevice;
  swift_beginAccess();
  return sub_20D9D7558(v1 + v3, a1, &qword_27C843A20, &qword_20DD940B0);
}

uint64_t sub_20D9F0C44(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A20, &qword_20DD940B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8[-v4];
  v6 = OBJC_IVAR___HFMatterAccessoryRepresentable_staticMatterDevice;
  swift_beginAccess();
  sub_20D9D7558(v1 + v6, v5, &qword_27C843A20, &qword_20DD940B0);
  swift_beginAccess();
  sub_20D9F0D50(a1, v1 + v6);
  swift_endAccess();
  sub_20D9F04E4(v5);
  sub_20D9D76EC(a1, &qword_27C843A20, &qword_20DD940B0);
  return sub_20D9D76EC(v5, &qword_27C843A20, &qword_20DD940B0);
}

uint64_t sub_20D9F0D50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A20, &qword_20DD940B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void (*sub_20D9F0DC0(uint64_t *a1))(char **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A20, &qword_20DD940B0) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v5[11] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v9 = OBJC_IVAR___HFMatterAccessoryRepresentable_staticMatterDevice;
  v5[12] = v7;
  v5[13] = v9;
  swift_beginAccess();
  sub_20D9D7558(v1 + v9, v8, &qword_27C843A20, &qword_20DD940B0);
  return sub_20D9F0EF0;
}

void sub_20D9F0EF0(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = *(*a1 + 13);
  v5 = *(*a1 + 10);
  v6 = *(*a1 + 11);
  v7 = *(*a1 + 9);
  if (a2)
  {
    sub_20D9D7558(*(*a1 + 12), v6, &qword_27C843A20, &qword_20DD940B0);
    sub_20D9D7558(v7 + v4, v5, &qword_27C843A20, &qword_20DD940B0);
    swift_beginAccess();
    sub_20D9F0D50(v6, v7 + v4);
    swift_endAccess();
    sub_20D9F04E4(v5);
    sub_20D9D76EC(v5, &qword_27C843A20, &qword_20DD940B0);
  }

  else
  {
    sub_20D9D7558(v7 + v4, v6, &qword_27C843A20, &qword_20DD940B0);
    swift_beginAccess();
    sub_20D9F0D50(v3, v7 + v4);
    swift_endAccess();
    sub_20D9F04E4(v6);
  }

  sub_20D9D76EC(v6, &qword_27C843A20, &qword_20DD940B0);
  sub_20D9D76EC(v3, &qword_27C843A20, &qword_20DD940B0);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t sub_20D9F105C@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A20, &qword_20DD940B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13[-v4];
  v6 = sub_20DD64294();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = OBJC_IVAR___HFMatterAccessoryRepresentable__tileInfo;
  swift_beginAccess();
  sub_20D9D7558(v1 + v10, &v14, &qword_27C843A30, &qword_20DD940B8);
  if (v15)
  {
    return sub_20D9C51D4(&v14, a1);
  }

  sub_20D9D76EC(&v14, &qword_27C843A30, &qword_20DD940B8);
  v12 = OBJC_IVAR___HFMatterAccessoryRepresentable_staticMatterDevice;
  swift_beginAccess();
  sub_20D9D7558(v1 + v12, v5, &qword_27C843A20, &qword_20DD940B0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    result = sub_20D9D76EC(v5, &qword_27C843A20, &qword_20DD940B0);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    sub_20D9F0980(v9, a1);
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

id MatterAccessoryRepresentable.__allocating_init(accessory:tilePath:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR___HFMatterAccessoryRepresentable_staticMatterDevice;
  v7 = sub_20DD64294();
  (*(*(v7 - 8) + 56))(&v5[v6], 1, 1, v7);
  v8 = &v5[OBJC_IVAR___HFMatterAccessoryRepresentable__tileInfo];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  *&v5[OBJC_IVAR___HFMatterAccessoryRepresentable_accessory] = a1;
  v9 = OBJC_IVAR___HFMatterAccessoryRepresentable_tilePath;
  v10 = sub_20DD63FE4();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v5[v9], a2, v10);
  v14.receiver = v5;
  v14.super_class = v2;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  (*(v11 + 8))(a2, v10);
  return v12;
}

id MatterAccessoryRepresentable.init(accessory:tilePath:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR___HFMatterAccessoryRepresentable_staticMatterDevice;
  v6 = sub_20DD64294();
  (*(*(v6 - 8) + 56))(&v2[v5], 1, 1, v6);
  v7 = &v2[OBJC_IVAR___HFMatterAccessoryRepresentable__tileInfo];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  *&v2[OBJC_IVAR___HFMatterAccessoryRepresentable_accessory] = a1;
  v8 = OBJC_IVAR___HFMatterAccessoryRepresentable_tilePath;
  v9 = sub_20DD63FE4();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v2[v8], a2, v9);
  v13.receiver = v2;
  v13.super_class = type metadata accessor for MatterAccessoryRepresentable(0);
  v11 = objc_msgSendSuper2(&v13, sel_init);
  (*(v10 + 8))(a2, v9);
  return v11;
}

uint64_t type metadata accessor for MatterAccessoryRepresentable(uint64_t a1)
{
  result = qword_27C843A90;
  if (!qword_27C843A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id MatterAccessoryRepresentable.init(accessory:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_20DD63744();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_20DD63FE4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DD65334();
  if ((v11 & 1) != 0 || (v12 = [a1 home]) == 0)
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v13 = v12;
    v14 = a1;
    v15 = [v13 uniqueIdentifier];
    sub_20DD63714();

    sub_20DD63FB4();
    v16 = type metadata accessor for MatterAccessoryRepresentable(0);
    v17 = objc_allocWithZone(v16);
    v18 = OBJC_IVAR___HFMatterAccessoryRepresentable_staticMatterDevice;
    v19 = sub_20DD64294();
    (*(*(v19 - 8) + 56))(&v17[v18], 1, 1, v19);
    v20 = &v17[OBJC_IVAR___HFMatterAccessoryRepresentable__tileInfo];
    *v20 = 0u;
    *(v20 + 1) = 0u;
    *(v20 + 4) = 0;
    *&v17[OBJC_IVAR___HFMatterAccessoryRepresentable_accessory] = v14;
    (*(v8 + 16))(&v17[OBJC_IVAR___HFMatterAccessoryRepresentable_tilePath], v10, v7);
    v25.receiver = v17;
    v25.super_class = v16;
    v21 = objc_msgSendSuper2(&v25, sel_init);
    (*(v8 + 8))(v10, v7);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    v22 = v21;
    sub_20D9F18F4();
  }

  return v22;
}

uint64_t sub_20D9F18F4()
{
  v1 = v0;
  v2 = sub_20DD64354();
  v26 = *(v2 - 8);
  v27 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A20, &qword_20DD940B0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v28 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  v13 = OBJC_IVAR___HFMatterAccessoryRepresentable_staticMatterDevice;
  swift_beginAccess();
  sub_20D9D7558(v0 + v13, v12, &qword_27C843A20, &qword_20DD940B0);
  v14 = sub_20DD64294();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v12, 1, v14);
  result = sub_20D9D76EC(v12, &qword_27C843A20, &qword_20DD940B0);
  if (v16 == 1)
  {
    sub_20DD63C84();
    v18 = sub_20DD63C64();
    sub_20DD63BF4();

    v19 = sub_20DD642E4();
    (*(v26 + 8))(v4, v27);
    v20 = sub_20DD63FD4();
    if (*(v19 + 16) && (v21 = sub_20D9CB2A8(v20), (v22 & 1) != 0))
    {
      (*(v15 + 16))(v10, *(v19 + 56) + *(v15 + 72) * v21, v14);
      v23 = 0;
    }

    else
    {
      v23 = 1;
    }

    (*(v15 + 56))(v10, v23, 1, v14);
    v24 = v28;
    sub_20D9D7558(v1 + v13, v28, &qword_27C843A20, &qword_20DD940B0);
    swift_beginAccess();
    sub_20D9F0D50(v10, v1 + v13);
    swift_endAccess();
    sub_20D9F04E4(v24);
    sub_20D9D76EC(v24, &qword_27C843A20, &qword_20DD940B0);
    return sub_20D9D76EC(v10, &qword_27C843A20, &qword_20DD940B0);
  }

  return result;
}

uint64_t sub_20D9F1C2C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20DD64054();
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v27 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A20, &qword_20DD940B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  v11 = sub_20DD64294();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR___HFMatterAccessoryRepresentable_staticMatterDevice;
  swift_beginAccess();
  sub_20D9D7558(v1 + v15, v10, &qword_27C843A20, &qword_20DD940B0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_20D9D76EC(v10, &qword_27C843A20, &qword_20DD940B0);
    v16 = sub_20DD641A4();
    return (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
  }

  (*(v12 + 32))(v14, v10, v11);
  v18 = sub_20DD63F84();
  if ((v18 & 0x10000) != 0)
  {
    sub_20DD64204();
    return (*(v12 + 8))(v14, v11);
  }

  v19 = v18;
  v20 = sub_20DD64284();
  if (*(v20 + 16))
  {
    v21 = sub_20D9CB188(v19);
    if (v22)
    {
      v24 = v27;
      v23 = v28;
      v25 = v29;
      (*(v28 + 16))(v27, *(v20 + 56) + *(v28 + 72) * v21, v29);

      (*(v23 + 32))(v7, v24, v25);
      sub_20DD64044();
      (*(v23 + 8))(v7, v25);
      return (*(v12 + 8))(v14, v11);
    }
  }

  (*(v12 + 8))(v14, v11);
  v26 = sub_20DD641A4();
  return (*(*(v26 - 8) + 56))(a1, 1, 1, v26);
}

id MatterAccessoryRepresentable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MatterAccessoryRepresentable.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MatterAccessoryRepresentable(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20D9F2158()
{
  v0 = sub_20DD64C44();
  __swift_allocate_value_buffer(v0, qword_27C843A00);
  __swift_project_value_buffer(v0, qword_27C843A00);
  return sub_20DD64C34();
}

uint64_t MatterAccessoryRepresentable.__hf_canShowInControlCenter.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A38, &unk_20DD940C0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v22 - v2;
  v4 = sub_20DD641A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D9F1C2C(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_20D9D76EC(v3, &unk_27C843A38, &unk_20DD940C0);
    if (qword_27C842430 != -1)
    {
      swift_once();
    }

    v8 = sub_20DD64C44();
    __swift_project_value_buffer(v8, qword_27C843A00);
    v9 = v0;
    v10 = sub_20DD64C24();
    v11 = sub_20DD65384();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v12 = 136315394;
      *(v12 + 4) = sub_20D9E0B38(0xD00000000000001BLL, 0x800000020DD98000, &v23);
      *(v12 + 12) = 2114;
      *(v12 + 14) = v9;
      *v13 = v9;
      v15 = v9;
      _os_log_impl(&dword_20D9BF000, v10, v11, "%s:%{public}@ deviceTypes is empty", v12, 0x16u);
      sub_20D9D76EC(v13, &unk_27C843630, &qword_20DD94080);
      MEMORY[0x20F327D10](v13, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x20F327D10](v14, -1, -1);
      MEMORY[0x20F327D10](v12, -1, -1);
    }

    v16 = 0;
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A48, &qword_20DD940D0);
    v17 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_20DD93A70;
    (*(v5 + 104))(v18 + v17, *MEMORY[0x277D15EE8], v4);
    v19 = sub_20D9EE274(v18);
    swift_setDeallocating();
    v20 = *(v5 + 8);
    v20(v18 + v17, v4);
    swift_deallocClassInstance();
    LOBYTE(v18) = sub_20D9EFDCC(v7, v19);

    v20(v7, v4);
    v16 = v18 ^ 1;
  }

  return v16 & 1;
}

id MatterAccessoryRepresentable.__hf_safeRoom.getter()
{
  v1 = [*(v0 + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory) room];

  return v1;
}

id MatterAccessoryRepresentable.__hf_isIdentifiable.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A50, &qword_20DD940D8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v21 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A58, &unk_20DD940E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A20, &qword_20DD940B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = sub_20DD64294();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR___HFMatterAccessoryRepresentable_staticMatterDevice;
  swift_beginAccess();
  sub_20D9D7558(v0 + v14, v9, &qword_27C843A20, &qword_20DD940B0);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_20DD64224();
    v16 = sub_20DD64054();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v3, 1, v16) == 1)
    {
      (*(v11 + 8))(v13, v10);
      sub_20D9D76EC(v3, &qword_27C843A50, &qword_20DD940D8);
      v18 = sub_20DD64004();
      (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
    }

    else
    {
      sub_20DD64024();
      (*(v11 + 8))(v13, v10);
      (*(v17 + 8))(v3, v16);
      v19 = sub_20DD64004();
      v15 = 1;
      if ((*(*(v19 - 8) + 48))(v6, 1, v19) != 1)
      {
LABEL_7:
        sub_20D9D76EC(v6, &qword_27C843A58, &unk_20DD940E0);
        return v15;
      }
    }

    v15 = 0;
    goto LABEL_7;
  }

  sub_20D9D76EC(v9, &qword_27C843A20, &qword_20DD940B0);
  return [*(v0 + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory) hf_isIdentifiable];
}

id sub_20D9F2BC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void *a5, unint64_t *a6)
{
  if (MEMORY[0x277D84F90] >> 62 && sub_20DD655B4())
  {
    a3(MEMORY[0x277D84F90]);
  }

  sub_20D9D7510(0, a4, a5);
  sub_20D9EC18C(a6, a4, a5);
  v9 = sub_20DD651C4();

  return v9;
}

uint64_t sub_20D9F2CAC(uint64_t (*a1)(uint64_t))
{
  if (!(MEMORY[0x277D84F90] >> 62) || !sub_20DD655B4())
  {
    return MEMORY[0x277D84FA0];
  }

  v3 = MEMORY[0x277D84F90];

  return a1(v3);
}

uint64_t MatterAccessoryRepresentable.__hf_associatedAccessories.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20DD940A0;
  v2 = *(v0 + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory);
  *(inited + 32) = v2;
  v3 = v2;
  sub_20D9EE8D0(inited);
  v5 = v4;
  swift_setDeallocating();
  swift_arrayDestroy();
  return v5;
}

Swift::Bool __swiftcall MatterAccessoryRepresentable.__hf_is(in:)(HMRoom in)
{
  isa = in.super.isa;
  v2 = sub_20DD63744();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A68, &unk_20DD940F0);
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v30 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v28 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;
  v16 = [*(v1 + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory) room];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 uniqueIdentifier];

    sub_20DD63714();
    v19 = *(v3 + 56);
    v19(v15, 0, 1, v2);
  }

  else
  {
    v19 = *(v3 + 56);
    v19(v15, 1, 1, v2);
  }

  v20 = [(objc_class *)isa uniqueIdentifier];
  sub_20DD63714();

  v19(v13, 0, 1, v2);
  v21 = *(v5 + 48);
  sub_20D9D7558(v15, v7, &unk_27C843A70, &qword_20DD94260);
  sub_20D9D7558(v13, &v7[v21], &unk_27C843A70, &qword_20DD94260);
  v22 = *(v3 + 48);
  if (v22(v7, 1, v2) != 1)
  {
    v24 = v30;
    sub_20D9D7558(v7, v30, &unk_27C843A70, &qword_20DD94260);
    if (v22(&v7[v21], 1, v2) != 1)
    {
      v25 = v29;
      (*(v3 + 32))(v29, &v7[v21], v2);
      sub_20D9F498C(&qword_280E02288, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v23 = sub_20DD64E64();
      v26 = *(v3 + 8);
      v26(v25, v2);
      sub_20D9D76EC(v13, &unk_27C843A70, &qword_20DD94260);
      sub_20D9D76EC(v15, &unk_27C843A70, &qword_20DD94260);
      v26(v24, v2);
      sub_20D9D76EC(v7, &unk_27C843A70, &qword_20DD94260);
      return v23 & 1;
    }

    sub_20D9D76EC(v13, &unk_27C843A70, &qword_20DD94260);
    sub_20D9D76EC(v15, &unk_27C843A70, &qword_20DD94260);
    (*(v3 + 8))(v24, v2);
    goto LABEL_9;
  }

  sub_20D9D76EC(v13, &unk_27C843A70, &qword_20DD94260);
  sub_20D9D76EC(v15, &unk_27C843A70, &qword_20DD94260);
  if (v22(&v7[v21], 1, v2) != 1)
  {
LABEL_9:
    sub_20D9D76EC(v7, &qword_27C843A68, &unk_20DD940F0);
    v23 = 0;
    return v23 & 1;
  }

  sub_20D9D76EC(v7, &unk_27C843A70, &qword_20DD94260);
  v23 = 1;
  return v23 & 1;
}

id MatterAccessoryRepresentable.__hf_move(to:)(uint64_t a1)
{
  v2 = [*(v1 + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory) hf:a1 moveToRoom:?];

  return v2;
}

id MatterAccessoryRepresentable.__hf_accessoryType.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A38, &unk_20DD940C0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v34 - v6;
  v8 = sub_20DD641A4();
  v38 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v36 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v35 = &v34 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A20, &qword_20DD940B0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v34 - v13;
  v15 = sub_20DD64294();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR___HFMatterAccessoryRepresentable_staticMatterDevice;
  swift_beginAccess();
  v37 = v1;
  sub_20D9D7558(v1 + v19, v14, &qword_27C843A20, &qword_20DD940B0);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_20D9D76EC(v14, &qword_27C843A20, &qword_20DD940B0);
    v20 = v8;
    v21 = v38;
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    sub_20DD64204();
    v21 = v38;
    v20 = v8;
    if ((*(v38 + 48))(v7, 1, v8) != 1)
    {
      v31 = v35;
      (*(v21 + 32))(v35, v7, v8);
      v32 = objc_opt_self();
      sub_20DD64194();
      v33 = sub_20DD65AC4();
      v30 = [v32 matterDeviceType_];

      (*(v21 + 8))(v31, v20);
      (*(v16 + 8))(v18, v15);
      return v30;
    }

    (*(v16 + 8))(v18, v15);
    sub_20D9D76EC(v7, &unk_27C843A38, &unk_20DD940C0);
  }

  v22 = v37;
  sub_20D9F1C2C(v5);
  if ((*(v21 + 48))(v5, 1, v20) != 1)
  {
    v27 = v36;
    (*(v21 + 32))(v36, v5, v20);
    v28 = objc_opt_self();
    sub_20DD64194();
    v29 = sub_20DD65AC4();
    v30 = [v28 matterDeviceType_];

    (*(v21 + 8))(v27, v20);
    return v30;
  }

  sub_20D9D76EC(v5, &unk_27C843A38, &unk_20DD940C0);
  v23 = [*(v22 + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory) category];
  v24 = [v23 categoryType];

  if (!v24)
  {
    sub_20DD64EB4();
    v24 = sub_20DD64E74();
  }

  v25 = [objc_opt_self() categoryType_];

  return v25;
}

id MatterAccessoryRepresentable.hf_serviceNameComponents.getter()
{
  v1 = [*(v0 + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory) hf_serviceNameComponents];

  return v1;
}

id MatterAccessoryRepresentable.updateIsFavorite(_:)(char a1)
{
  v2 = [*(v1 + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory) hf:a1 & 1 updateIsFavorite:?];

  return v2;
}

id MatterAccessoryRepresentable.updateIsVisibleInHomeStatus(_:)(char a1)
{
  v2 = [*(v1 + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory) hf:a1 & 1 updateIsVisibleInHomeStatus:?];

  return v2;
}

id MatterAccessoryRepresentable.updateShowInHomeDashboard(_:)(char a1)
{
  v2 = [*(v1 + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory) hf:a1 & 1 updateShowInHomeDashboard:?];

  return v2;
}

id MatterAccessoryRepresentable.__hf_tileSize.getter()
{
  v1 = [*(v0 + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory) hf_tileSize];

  return v1;
}

id MatterAccessoryRepresentable.__hf_setTileSize(_:)(uint64_t a1)
{
  v2 = [*(v1 + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory) hf:a1 setTileSize:?];

  return v2;
}

uint64_t MatterAccessoryRepresentable.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  v3 = sub_20DD63744();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  sub_20D9D7558(a1, v18, &unk_27C843A80, &qword_20DD94100);
  if (!v19)
  {
    sub_20D9D76EC(v18, &unk_27C843A80, &qword_20DD94100);
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v14 = 0;
    return v14 & 1;
  }

  v10 = v17;
  v11 = [*&v17[OBJC_IVAR___HFMatterAccessoryRepresentable_accessory] uniqueIdentifier];
  sub_20DD63714();

  v12 = [*(v1 + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory) uniqueIdentifier];
  sub_20DD63714();

  LOBYTE(v12) = sub_20DD63704();
  v13 = *(v4 + 8);
  v13(v7, v3);
  v13(v9, v3);
  if ((v12 & 1) == 0)
  {

    goto LABEL_7;
  }

  v14 = MEMORY[0x20F324EF0](&v10[OBJC_IVAR___HFMatterAccessoryRepresentable_tilePath], v1 + OBJC_IVAR___HFMatterAccessoryRepresentable_tilePath);

  return v14 & 1;
}

uint64_t MatterAccessoryRepresentable.hash.getter()
{
  v1 = sub_20DD63744();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DD65AB4();
  sub_20DD63FA4();
  v5 = [*(v0 + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory) uniqueIdentifier];
  sub_20DD63714();

  sub_20DD63724();
  (*(v2 + 8))(v4, v1);
  return sub_20DD65A94();
}

uint64_t MatterAccessoryRepresentable.__hf_iconIdentifier.getter()
{
  v0 = sub_20DD645F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20DD64604();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D9F105C(&v10);
  if (v11)
  {
    sub_20D9C51D4(&v10, v12);
    __swift_project_boxed_opaque_existential_0(v12, v12[3]);
    sub_20DD640C4();
    sub_20DD645B4();
    (*(v5 + 8))(v7, v4);
    v8 = sub_20DD645E4();
    (*(v1 + 8))(v3, v0);
    __swift_destroy_boxed_opaque_existential_0(v12);
    return v8;
  }

  else
  {
    sub_20D9D76EC(&v10, &qword_27C843A30, &qword_20DD940B8);
    return sub_20DD64EB4();
  }
}

void sub_20D9F46EC(uint64_t a1)
{
  sub_20DD63FE4();
  if (v1 <= 0x3F)
  {
    sub_20D9F4934(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_20D9F4934(uint64_t a1)
{
  if (!qword_27C843AA0)
  {
    sub_20DD64294();
    v1 = sub_20DD65494();
    if (!v2)
    {
      atomic_store(v1, &qword_27C843AA0);
    }
  }
}

uint64_t sub_20D9F498C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_20D9F4A38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A30, &qword_20DD940B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D9F4AB8(uint64_t a1)
{
  v2 = sub_20DD63744();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v28 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v28 - v10;
  v12 = *(a1 + 16);
  v13 = sub_20D9F96B0(&qword_280E02290, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  result = MEMORY[0x20F326190](v12, v2, v13);
  v15 = 0;
  v29 = a1;
  v30 = result;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v28[2] = v3 + 32;
  v28[3] = v3 + 16;
  v28[1] = v3 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v3 + 16))(v11, *(v29 + 48) + *(v3 + 72) * (v24 | (v23 << 6)), v2);
      (*(v3 + 32))(v6, v11, v2);
      sub_20D9E2834(v9, v6, v25, v26, v27);
      result = (*(v3 + 8))(v9, v2);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v30;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20D9F4D18(uint64_t a1)
{
  v2 = sub_20DD63FE4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v25 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v25 - v10;
  v12 = *(a1 + 16);
  v13 = sub_20D9F96B0(&qword_27C844380, MEMORY[0x277D15B60], MEMORY[0x277D15B68]);
  result = MEMORY[0x20F326190](v12, v2, v13);
  v15 = 0;
  v26 = a1;
  v27 = result;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v3 + 32;
  v25[3] = v3 + 16;
  v25[1] = v3 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v3 + 16))(v11, *(v26 + 48) + *(v3 + 72) * (v24 | (v23 << 6)), v2);
      (*(v3 + 32))(v6, v11, v2);
      sub_20D9E2D34(v9, v6);
      result = (*(v3 + 8))(v9, v2);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t static CharacteristicNotificationManager.characteristicsToEnableNotifications(for:)(void *a1)
{
  v1 = MEMORY[0x277D84FA0];
  v13 = MEMORY[0x277D84FA0];
  v2 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v10);
  sub_20DD64F64();
  __swift_mutable_project_boxed_opaque_existential_1(v10, AssociatedTypeWitness);
  sub_20DD654A4();
  v5 = v9;
  if (v9)
  {
    do
    {
      static CharacteristicNotificationManager.characteristicsToEnableNotifications(for:)(v5);
      sub_20D9DD25C(v6);

      __swift_mutable_project_boxed_opaque_existential_1(v10, AssociatedTypeWitness);
      sub_20DD654A4();
      v5 = v9;
    }

    while (v9);
    v1 = v13;
  }

  __swift_destroy_boxed_opaque_existential_0(v10);
  return v1;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

void static CharacteristicNotificationManager.characteristicsToEnableNotifications(for:)(uint64_t a1)
{
  v211 = *MEMORY[0x277D85DE8];
  v2 = sub_20DD641F4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v182 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v182 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = (&v182 - v11);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v182 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v182 - v16;
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    v19 = [v18 actionSet];
    v20 = [v19 hf_affectedCharacteristics];

    sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
    sub_20D9EC18C(&unk_280E020F0, &qword_280E02100, 0x277CD1970);
    sub_20DD651E4();

    return;
  }

  v207 = &unk_28252AFF0;
  v21 = swift_dynamicCastObjCProtocolConditional();
  v202 = v2;
  v191 = v3;
  v201 = v15;
  if (!v21)
  {
    v200 = v1;
    HFItem.subscript.getter();
    v57 = MEMORY[0x277D84F90];
    if (v209)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843B40, &qword_20DD94180);
      if (swift_dynamicCast())
      {
        v198 = v9;
        v199 = v6;
        v58 = v206;
        v205 = v57;
        v59 = (v206 + 56);
        v60 = 1 << *(v206 + 32);
        v61 = -1;
        if (v60 < 64)
        {
          v61 = ~(-1 << v60);
        }

        v62 = v57;
        v63 = v61 & *(v206 + 56);
        v64 = (v60 + 63) >> 6;

        v65 = 0;
        while (1)
        {
          v66 = v65;
          if (!v63)
          {
            break;
          }

LABEL_39:
          v67 = __clz(__rbit64(v63));
          v63 &= v63 - 1;
          sub_20D9D7288(*(v58 + 48) + 40 * (v67 | (v65 << 6)), v208);
          v68 = sub_20DD65644();
          sub_20D9D4298(v208);
          objc_opt_self();
          v69 = swift_dynamicCastObjCClass();
          if (v69)
          {
            v197 = v69;
            MEMORY[0x20F325F00]();
            if (*((v205 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v205 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v196 = v58;
              sub_20DD65014();
              v58 = v196;
            }

            sub_20DD65054();
            v62 = v205;
          }

          else
          {
          }
        }

        while (1)
        {
          v65 = v66 + 1;
          if (__OFADD__(v66, 1))
          {
            goto LABEL_149;
          }

          if (v65 >= v64)
          {
            break;
          }

          v63 = *&v59[8 * v65];
          ++v66;
          if (v63)
          {
            goto LABEL_39;
          }
        }

        v102 = sub_20D9F93BC(v62, &qword_280E02100, 0x277CD1970, &unk_280E020F0, sub_20D9E10E0);

        v206 = v102;
        HFItem.subscript.getter();
        if (v209)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843B50, &qword_20DD94188);
          v103 = swift_dynamicCast();
          v104 = MEMORY[0x277D84F90];
          if (v103)
          {
            v105 = v205;
            if ((v205 & 0xC000000000000001) == 0)
            {
LABEL_76:
              v106 = 0;
              v107 = -1 << *(v105 + 32);
              v108 = v105 + 56;
              v109 = ~v107;
              v110 = -v107;
              if (v110 < 64)
              {
                v111 = ~(-1 << v110);
              }

              else
              {
                v111 = -1;
              }

              v112 = v111 & *(v105 + 56);
              goto LABEL_84;
            }

LABEL_83:
            sub_20DD65564();
            sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
            sub_20D9EC18C(&qword_280E01F00, &qword_280E01F10, off_277DEFBE0);
            sub_20DD65284();
            v105 = v208[0];
            v108 = v208[1];
            v109 = v208[2];
            v106 = v209;
            v112 = v210;
LABEL_84:
            v196 = v109;
            v197 = v105;
            v113 = (v109 + 64) >> 6;
            if ((v105 & 0x8000000000000000) == 0)
            {
              goto LABEL_88;
            }

LABEL_85:
            v114 = sub_20DD655F4();
            if (v114)
            {
              v204 = v114;
              sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
              swift_dynamicCast();
              v115 = v205;
              v116 = v106;
              v117 = v112;
              if (v205)
              {
                while (1)
                {
                  v120 = static CharacteristicNotificationManager.characteristicsToEnableNotifications(for:)(v115);
                  sub_20D9DD25C(v120);

                  v106 = v116;
                  v112 = v117;
                  v105 = v197;
                  if (v197 < 0)
                  {
                    goto LABEL_85;
                  }

LABEL_88:
                  v118 = v106;
                  v119 = v112;
                  v116 = v106;
                  if (!v112)
                  {
                    break;
                  }

LABEL_92:
                  v117 = (v119 - 1) & v119;
                  v115 = *(*(v105 + 48) + ((v116 << 9) | (8 * __clz(__rbit64(v119)))));
                  if (!v115)
                  {
                    goto LABEL_95;
                  }
                }

                while (1)
                {
                  v116 = v118 + 1;
                  if (__OFADD__(v118, 1))
                  {
                    goto LABEL_151;
                  }

                  if (v116 >= v113)
                  {
                    break;
                  }

                  v119 = *(v108 + 8 * v116);
                  ++v118;
                  if (v119)
                  {
                    goto LABEL_92;
                  }
                }
              }
            }

LABEL_95:
            v121 = sub_20D9C51CC(v197);
            v122 = v206;
            if ((v206 & 0xC000000000000001) != 0)
            {
              v26 = MEMORY[0x277D84FA0];
              v205 = MEMORY[0x277D84FA0];
              v196 = sub_20DD65564();
              v123 = sub_20DD655F4();
              if (!v123)
              {
                goto LABEL_121;
              }

              v124 = v123;
              v194 = sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
              v125 = v124;
              v193 = v191 + 104;
              v200 = (v191 + 8);
              v197 = v191 + 16;
              v195 = MEMORY[0x277D84FA0];
              LODWORD(v192) = *MEMORY[0x277D162E8];
              while (1)
              {
                v203 = v125;
                swift_dynamicCast();
                sub_20DD653B4();
                (*v193)(v15, v192, v2);
                v198 = sub_20D9F96B0(&unk_27C8439A0, MEMORY[0x277D16340], MEMORY[0x277D16368]);
                v126 = sub_20DD64E64();
                v127 = *v200;
                (*v200)(v15, v2);
                if ((v126 & 1) == 0)
                {
                  if (qword_27C842438 != -1)
                  {
                    swift_once();
                  }

                  v128 = off_27C843B30;
                  v129 = v199;
                  if (!*(off_27C843B30 + 2) || (sub_20D9F96B0(&qword_27C843998, MEMORY[0x277D16340], MEMORY[0x277D16358]), v130 = sub_20DD64E24(), v131 = -1 << v128[32], v132 = v130 & ~v131, ((*&v128[((v132 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v132) & 1) == 0))
                  {
LABEL_108:
                    v2 = v202;
                    v127(v129, v202);
                    v139 = v204;
                    v140 = *(v195 + 16);
                    if (*(v195 + 24) <= v140)
                    {
                      sub_20D9F8364(v140 + 1, &qword_27C843978, &qword_20DD93FE0);
                    }

                    v141 = v205;
                    v142 = sub_20DD65444();
                    v143 = v141 + 56;
                    v144 = -1 << *(v141 + 32);
                    v145 = v142 & ~v144;
                    v146 = v145 >> 6;
                    v15 = v201;
                    if (((-1 << v145) & ~*(v141 + 56 + 8 * (v145 >> 6))) != 0)
                    {
                      v147 = __clz(__rbit64((-1 << v145) & ~*(v141 + 56 + 8 * (v145 >> 6)))) | v145 & 0x7FFFFFFFFFFFFFC0;
                    }

                    else
                    {
                      v148 = 0;
                      v149 = (63 - v144) >> 6;
                      do
                      {
                        if (++v146 == v149 && (v148 & 1) != 0)
                        {
                          goto LABEL_150;
                        }

                        v150 = v146 == v149;
                        if (v146 == v149)
                        {
                          v146 = 0;
                        }

                        v148 |= v150;
                        v151 = *(v143 + 8 * v146);
                      }

                      while (v151 == -1);
                      v147 = __clz(__rbit64(~v151)) + (v146 << 6);
                    }

                    *(v143 + ((v147 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v147;
                    *(*(v141 + 48) + 8 * v147) = v139;
                    v152 = *(v141 + 16) + 1;
                    v195 = v141;
                    *(v141 + 16) = v152;
                    goto LABEL_99;
                  }

                  v133 = ~v131;
                  v134 = *(v191 + 72);
                  v135 = *(v191 + 16);
                  while (1)
                  {
                    v137 = v201;
                    v136 = v202;
                    v135(v201, *(v128 + 6) + v134 * v132, v202);
                    v138 = sub_20DD64E64();
                    v127(v137, v136);
                    if (v138)
                    {
                      break;
                    }

                    v132 = (v132 + 1) & v133;
                    v129 = v199;
                    if (((*&v128[((v132 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v132) & 1) == 0)
                    {
                      goto LABEL_108;
                    }
                  }
                }

                v2 = v202;
                v127(v199, v202);

                v15 = v201;
LABEL_99:
                v125 = sub_20DD655F4();
                if (!v125)
                {
                  goto LABEL_122;
                }
              }
            }

            v153 = *(v206 + 32);
            v184 = ((1 << v153) + 63) >> 6;
            if ((v153 & 0x3Fu) > 0xD)
            {
              goto LABEL_162;
            }

LABEL_124:
            v183 = &v182;
            MEMORY[0x28223BE20](v121);
            v185 = &v182 - ((v154 + 15) & 0x3FFFFFFFFFFFFFF0);
            bzero(v185, v154);
            v186 = 0;
            v155 = 0;
            v156 = v122 + 56;
            v157 = 1 << *(v122 + 32);
            if (v157 < 64)
            {
              v158 = ~(-1 << v157);
            }

            else
            {
              v158 = -1;
            }

            v159 = v158 & *(v122 + 56);
            v160 = (v157 + 63) >> 6;
            v188 = *MEMORY[0x277D162E8];
            v187 = (v191 + 104);
            v200 = (v191 + 8);
            v196 = v191 + 16;
            v190 = v122 + 56;
            v189 = v160;
            v192 = v122;
            v161 = v201;
            while (1)
            {
              if (v159)
              {
                v162 = __clz(__rbit64(v159));
                v195 = (v159 - 1) & v159;
              }

              else
              {
                v163 = v155;
                do
                {
                  v155 = v163 + 1;
                  if (__OFADD__(v163, 1))
                  {
                    goto LABEL_152;
                  }

                  if (v155 >= v160)
                  {
                    v99 = v185;
                    v100 = v184;
                    v101 = v186;
                    v80 = v122;
LABEL_69:
                    sub_20D9F89E8(v99, v100, v101, v80, &qword_27C843978, &qword_20DD93FE0);
                    return;
                  }

                  v164 = *(v156 + 8 * v155);
                  ++v163;
                }

                while (!v164);
                v162 = __clz(__rbit64(v164));
                v195 = (v164 - 1) & v164;
              }

              v165 = v162 | (v155 << 6);
              v166 = *(v122 + 48);
              v193 = v165;
              v194 = *(v166 + 8 * v165);
              sub_20DD653B4();
              (*v187)(v15, v188, v2);
              v197 = sub_20D9F96B0(&unk_27C8439A0, MEMORY[0x277D16340], MEMORY[0x277D16368]);
              v167 = sub_20DD64E64();
              v199 = *v200;
              v199(v15, v2);
              if (v167)
              {
                goto LABEL_128;
              }

              if (qword_27C842438 != -1)
              {
                swift_once();
              }

              v168 = off_27C843B30;
              v169 = v198;
              if (*(off_27C843B30 + 2) && (sub_20D9F96B0(&qword_27C843998, MEMORY[0x277D16340], MEMORY[0x277D16358]), v170 = sub_20DD64E24(), v171 = -1 << *(v168 + 32), v172 = v170 & ~v171, ((*(v168 + ((v172 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v172) & 1) != 0))
              {
                v173 = ~v171;
                v174 = *(v191 + 72);
                v175 = *(v191 + 16);
                while (1)
                {
                  v176 = v202;
                  v175(v161, v168[6] + v174 * v172, v202);
                  v177 = sub_20DD64E64();
                  v199(v161, v176);
                  if (v177)
                  {
                    break;
                  }

                  v172 = (v172 + 1) & v173;
                  v169 = v198;
                  if (((*(v168 + ((v172 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v172) & 1) == 0)
                  {
                    goto LABEL_144;
                  }
                }

LABEL_128:
                v2 = v202;
                v199(v198, v202);

                v15 = v201;
                v122 = v192;
                v156 = v190;
                v160 = v189;
                v159 = v195;
              }

              else
              {
LABEL_144:
                v2 = v202;
                v199(v169, v202);

                *&v185[(v193 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v193;
                v98 = __OFADD__(v186++, 1);
                v15 = v201;
                v122 = v192;
                v156 = v190;
                v160 = v189;
                v159 = v195;
                if (v98)
                {
                  __break(1u);
LABEL_162:
                  v181 = v122;

                  if (swift_stdlib_isStackAllocationSafe())
                  {

                    v15 = v201;
                    v2 = v202;
                    goto LABEL_124;
                  }

                  v178 = swift_slowAlloc();
                  v179 = v178;
                  v180 = v184;
LABEL_159:
                  sub_20D9F8EFC(v178, v180, v181, sub_20D9F9700, 0);

                  MEMORY[0x20F327D10](v179, -1, -1);
                  return;
                }
              }
            }
          }
        }

        else
        {
          sub_20D9F8608(v208);
          v104 = MEMORY[0x277D84F90];
        }

        if (v104 >> 62)
        {
          if (sub_20DD655B4())
          {
            sub_20D9EE8F4(MEMORY[0x277D84F90]);
          }

          else
          {
            v105 = MEMORY[0x277D84FA0];
          }

          v15 = v201;
          v2 = v202;
          if ((v105 & 0xC000000000000001) == 0)
          {
            goto LABEL_76;
          }
        }

        else
        {
          v105 = MEMORY[0x277D84FA0];
          if ((MEMORY[0x277D84FA0] & 0xC000000000000001) == 0)
          {
            goto LABEL_76;
          }
        }

        goto LABEL_83;
      }
    }

    else
    {
      sub_20D9F8608(v208);
    }

    if (v57 >> 62)
    {
      goto LABEL_154;
    }

    return;
  }

  v22 = [v21 accessoryRepresentableObject];
  ObjectType = swift_getObjectType();
  v24 = HFAccessoryRepresentable.containedCharacteristics.getter(ObjectType);
  v25 = swift_unknownObjectRelease();
  if ((v24 & 0xC000000000000001) != 0)
  {
    v26 = MEMORY[0x277D84FA0];
    v208[0] = MEMORY[0x277D84FA0];
    v196 = sub_20DD65564();
    v27 = sub_20DD655F4();
    if (v27)
    {
      v28 = v27;
      v194 = sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
      v29 = v28;
      v193 = v3 + 104;
      v200 = (v3 + 8);
      v197 = v3 + 16;
      v195 = MEMORY[0x277D84FA0];
      LODWORD(v192) = *MEMORY[0x277D162E8];
      v199 = v12;
      while (1)
      {
        v205 = v29;
        swift_dynamicCast();
        sub_20DD653B4();
        (*v193)(v15, v192, v2);
        v198 = sub_20D9F96B0(&unk_27C8439A0, MEMORY[0x277D16340], MEMORY[0x277D16368]);
        v30 = sub_20DD64E64();
        v31 = *v200;
        (*v200)(v15, v2);
        if ((v30 & 1) == 0)
        {
          if (qword_27C842438 != -1)
          {
            swift_once();
          }

          v32 = off_27C843B30;
          v33 = v199;
          if (!*(off_27C843B30 + 2) || (sub_20D9F96B0(&qword_27C843998, MEMORY[0x277D16340], MEMORY[0x277D16358]), v34 = sub_20DD64E24(), v35 = -1 << v32[32], v36 = v34 & ~v35, ((*&v32[((v36 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v36) & 1) == 0))
          {
LABEL_17:
            v2 = v202;
            v31(v33, v202);
            v43 = v206;
            v44 = *(v195 + 16);
            if (*(v195 + 24) <= v44)
            {
              sub_20D9F8364(v44 + 1, &qword_27C843978, &qword_20DD93FE0);
            }

            v45 = v208[0];
            v46 = sub_20DD65444();
            v47 = v45 + 56;
            v48 = -1 << *(v45 + 32);
            v49 = v46 & ~v48;
            v50 = v49 >> 6;
            v15 = v201;
            if (((-1 << v49) & ~*(v45 + 56 + 8 * (v49 >> 6))) != 0)
            {
              v51 = __clz(__rbit64((-1 << v49) & ~*(v45 + 56 + 8 * (v49 >> 6)))) | v49 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v52 = 0;
              v53 = (63 - v48) >> 6;
              do
              {
                if (++v50 == v53 && (v52 & 1) != 0)
                {
                  __break(1u);
                  goto LABEL_148;
                }

                v54 = v50 == v53;
                if (v50 == v53)
                {
                  v50 = 0;
                }

                v52 |= v54;
                v55 = *(v47 + 8 * v50);
              }

              while (v55 == -1);
              v51 = __clz(__rbit64(~v55)) + (v50 << 6);
            }

            *(v47 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
            *(*(v45 + 48) + 8 * v51) = v43;
            v56 = *(v45 + 16) + 1;
            v195 = v45;
            *(v45 + 16) = v56;
            goto LABEL_8;
          }

          v37 = ~v35;
          v38 = *(v191 + 72);
          v39 = *(v191 + 16);
          while (1)
          {
            v41 = v201;
            v40 = v202;
            v39(v201, *(v32 + 6) + v38 * v36, v202);
            v42 = sub_20DD64E64();
            v31(v41, v40);
            if (v42)
            {
              break;
            }

            v36 = (v36 + 1) & v37;
            v33 = v199;
            if (((*&v32[((v36 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v36) & 1) == 0)
            {
              goto LABEL_17;
            }
          }
        }

        v2 = v202;
        v31(v199, v202);

        v15 = v201;
LABEL_8:
        v29 = sub_20DD655F4();
        if (!v29)
        {
          goto LABEL_122;
        }
      }
    }

LABEL_121:
    v195 = v26;
LABEL_122:

    return;
  }

  v70 = *(v24 + 32);
  v184 = ((1 << v70) + 63) >> 6;
  v198 = v17;
  v193 = v24;
  if ((v70 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v178 = swift_slowAlloc();
      v179 = v178;
      v180 = v184;
      v181 = v193;
      goto LABEL_159;
    }

    v24 = v193;

    v15 = v201;
    v2 = v202;
    v3 = v191;
  }

  v183 = &v182;
  MEMORY[0x28223BE20](v25);
  v185 = &v182 - ((v71 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v185, v71);
  v186 = 0;
  v72 = 0;
  v75 = *(v24 + 56);
  v74 = v24 + 56;
  v73 = v75;
  v76 = 1 << *(v74 - 24);
  if (v76 < 64)
  {
    v77 = ~(-1 << v76);
  }

  else
  {
    v77 = -1;
  }

  v78 = v77 & v73;
  v79 = (v76 + 63) >> 6;
  v188 = *MEMORY[0x277D162E8];
  v187 = (v3 + 104);
  v200 = (v3 + 8);
  v196 = v3 + 16;
  v190 = v74;
  v189 = v79;
  while (1)
  {
    v80 = v193;
    if (!v78)
    {
      break;
    }

    v81 = __clz(__rbit64(v78));
    v195 = (v78 - 1) & v78;
LABEL_57:
    v84 = v81 | (v72 << 6);
    v85 = *(v193 + 48);
    v192 = v84;
    v194 = *(v85 + 8 * v84);
    sub_20DD653B4();
    (*v187)(v15, v188, v2);
    v197 = sub_20D9F96B0(&unk_27C8439A0, MEMORY[0x277D16340], MEMORY[0x277D16368]);
    v86 = sub_20DD64E64();
    v199 = *v200;
    v199(v15, v2);
    if (v86)
    {
LABEL_49:
      v2 = v202;
      v199(v198, v202);

      v15 = v201;
      v74 = v190;
      v79 = v189;
      v78 = v195;
    }

    else
    {
      if (qword_27C842438 != -1)
      {
        swift_once();
      }

      v87 = off_27C843B30;
      v88 = v198;
      if (*(off_27C843B30 + 2))
      {
        sub_20D9F96B0(&qword_27C843998, MEMORY[0x277D16340], MEMORY[0x277D16358]);
        v89 = sub_20DD64E24();
        v90 = -1 << v87[32];
        v91 = v89 & ~v90;
        if ((*&v87[((v91 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v91))
        {
          v92 = ~v90;
          v93 = *(v191 + 72);
          v94 = *(v191 + 16);
          do
          {
            v96 = v201;
            v95 = v202;
            v94(v201, *(v87 + 6) + v93 * v91, v202);
            v97 = sub_20DD64E64();
            v199(v96, v95);
            if (v97)
            {
              goto LABEL_49;
            }

            v91 = (v91 + 1) & v92;
            v88 = v198;
          }

          while (((*&v87[((v91 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v91) & 1) != 0);
        }
      }

      v2 = v202;
      v199(v88, v202);

      *&v185[(v192 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v192;
      v98 = __OFADD__(v186++, 1);
      v15 = v201;
      v74 = v190;
      v79 = v189;
      v78 = v195;
      if (v98)
      {
        goto LABEL_153;
      }
    }
  }

  v82 = v72;
  while (1)
  {
    v72 = v82 + 1;
    if (__OFADD__(v82, 1))
    {
      break;
    }

    if (v72 >= v79)
    {
      v99 = v185;
      v100 = v184;
      v101 = v186;
      goto LABEL_69;
    }

    v83 = *(v74 + 8 * v72);
    ++v82;
    if (v83)
    {
      v81 = __clz(__rbit64(v83));
      v195 = (v83 - 1) & v83;
      goto LABEL_57;
    }
  }

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
LABEL_153:
  __break(1u);
LABEL_154:
  if (sub_20DD655B4())
  {
    sub_20D9EBA70(MEMORY[0x277D84F90]);
  }
}

uint64_t sub_20D9F6B00(uint64_t a1)
{
  v2 = v1;
  v36 = sub_20DD641F4();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C843BD0, &qword_20DD94010);
  result = sub_20DD656B4();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_20D9F96B0(&qword_27C843998, MEMORY[0x277D16340], MEMORY[0x277D16358]);
      result = sub_20DD64E24();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_20D9F6E5C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843960, &qword_20DD93FC8);
  result = sub_20DD656B4();
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
    while (1)
    {
      if (!v10)
      {
        v15 = v6;
        while (1)
        {
          v6 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            __break(1u);
            goto LABEL_37;
          }

          if (v6 >= v11)
          {
            break;
          }

          v16 = v7[v6];
          ++v15;
          if (v16)
          {
            v14 = __clz(__rbit64(v16));
            v10 = (v16 - 1) & v16;
            goto LABEL_15;
          }
        }

        v26 = 1 << *(v3 + 32);
        if (v26 >= 64)
        {
          bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v7 = -1 << v26;
        }

        v2 = v1;
        *(v3 + 16) = 0;
        goto LABEL_35;
      }

      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_20DD65A64();
      if (v17 == 5)
      {
        break;
      }

      if (v17 == 4)
      {
        v18 = 0;
LABEL_19:
        MEMORY[0x20F3269D0](v18);
        goto LABEL_20;
      }

      MEMORY[0x20F3269D0](2);
      sub_20DD65A84();
      if (v17 != 3)
      {
        sub_20DD64F24();
      }

LABEL_20:
      result = sub_20DD65AA4();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v18 = 1;
    goto LABEL_19;
  }

LABEL_35:

  *v2 = v5;
  return result;
}

uint64_t sub_20D9F719C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843BA0, &qword_20DD93FA0);
  result = sub_20DD656B4();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_20DD65A64();
      sub_20DD65A84();
      if (v17)
      {
        v18 = v17;
        sub_20DD65464();
      }

      result = sub_20DD65AA4();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_20D9F7410(uint64_t a1)
{
  v2 = v1;
  v36 = sub_20DD64674();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8438B0, &qword_20DD93F68);
  result = sub_20DD656B4();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_20D9F96B0(&qword_27C8438A0, MEMORY[0x277D17688], MEMORY[0x277D17690]);
      result = sub_20DD64E24();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_20D9F7794(uint64_t a1)
{
  v2 = v1;
  v36 = sub_20DD63744();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843830, &unk_20DD93F10);
  result = sub_20DD656B4();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_20D9F96B0(&qword_280E02290, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_20DD64E24();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_20D9F7B04(uint64_t a1)
{
  v2 = v1;
  v36 = sub_20DD63FE4();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843B70, &qword_20DD93F30);
  result = sub_20DD656B4();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_20D9F96B0(&qword_27C844380, MEMORY[0x277D15B60], MEMORY[0x277D15B68]);
      result = sub_20DD64E24();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_20D9F7E74(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843B60, &qword_20DD93ED8);
  result = sub_20DD656B4();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_20DD64EB4();
      sub_20DD65A64();
      sub_20DD64F24();
      v18 = sub_20DD65AA4();

      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_20D9F80F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843848, &qword_20DD93F20);
  result = sub_20DD656B4();
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
      sub_20DD65A64();
      sub_20DD64F24();
      result = sub_20DD65AA4();
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

uint64_t sub_20D9F8364(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_20DD656B4();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = sub_20DD65444();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

unint64_t sub_20D9F8584(uint64_t a1, uint64_t a2)
{
  sub_20DD65444();
  result = sub_20DD65534();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_20D9F8608(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A80, &qword_20DD94100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20D9F86AC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_20DD63FE4();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843B70, &qword_20DD93F30);
  result = sub_20DD656D4();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_20D9F96B0(&qword_27C844380, MEMORY[0x277D15B60], MEMORY[0x277D15B68]);
    result = sub_20DD64E24();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
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

uint64_t sub_20D9F89E8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = MEMORY[0x277D84FA0];
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_20DD656D4();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = *(*(v6 + 48) + 8 * (v15 | (v13 << 6)));
    result = sub_20DD65444();
    v19 = -1 << *(v11 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v11 + 48) + 8 * v22) = v18;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_20D9F8BD4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_20DD63744();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843830, &unk_20DD93F10);
  result = sub_20DD656D4();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_20D9F96B0(&qword_280E02290, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    result = sub_20DD64E24();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
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

void *sub_20D9F8EFC(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_20DA68FC0(result, a2, a3, a4, a5);
    v11 = v10;

    return v11;
  }

  return result;
}

uint64_t sub_20D9F8F8C()
{
  v0 = sub_20DD641F4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v11 - v5;
  sub_20DD653B4();
  (*(v1 + 104))(v4, *MEMORY[0x277D162E8], v0);
  sub_20D9F96B0(&unk_27C8439A0, MEMORY[0x277D16340], MEMORY[0x277D16368]);
  v7 = sub_20DD64E64();
  v8 = *(v1 + 8);
  v8(v4, v0);
  if (v7)
  {
    v9 = 0;
  }

  else
  {
    if (qword_27C842438 != -1)
    {
      swift_once();
    }

    v9 = sub_20D9EFFE4(v6, off_27C843B30) ^ 1;
  }

  v8(v6, v0);
  return v9 & 1;
}

uint64_t sub_20D9F922C(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_20DD655B4())
  {
    v4 = type metadata accessor for MatterAccessoryLikeItem(0);
    v5 = sub_20D9F96B0(&qword_27C843B68, type metadata accessor for MatterAccessoryLikeItem, MEMORY[0x277D85378]);
    result = MEMORY[0x20F326190](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x20F326680](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_20D9E2B1C(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_20DD655B4();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t *sub_20D9F93BC(unint64_t a1, unint64_t *a2, void *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_20DD655B4())
  {
    v12 = sub_20D9D7510(0, a2, a3);
    v13 = sub_20D9EC18C(a4, a2, a3);
    result = MEMORY[0x20F326190](i, v12, v13);
    v18 = result;
    if (v10)
    {
      break;
    }

    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return result;
    }

LABEL_7:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v16 = MEMORY[0x20F326680](a2, a1);
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * a2 + 32);
      }

      v10 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v18;
      a5(&v17, v16);

      a2 = (a2 + 1);
      if (v10 == v15)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v15 = sub_20DD655B4();
  result = a4;
  if (v15)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_20D9F9514(uint64_t a1)
{
  v2 = sub_20DD63744();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  v9 = *(a1 + 16);
  v10 = sub_20D9F96B0(&qword_280E02290, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  result = MEMORY[0x20F326190](v9, v2, v10);
  v21 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_20D9E2834(v8, v6, v17, v18, v19);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v21;
  }

  return result;
}

uint64_t sub_20D9F96B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_20D9F971C(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    sub_20D9D77C8(a1, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v2;
    sub_20D9D0070(v6, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v5;
  }

  else
  {
    sub_20D9D76EC(a1, &unk_27C843A80, &qword_20DD94100);
    sub_20DA27550(a2, v6);

    sub_20D9D76EC(v6, &unk_27C843A80, &qword_20DD94100);
  }
}

uint64_t sub_20D9F97D0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_20DD636C4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_20D9D76EC(a1, &unk_27C843810, &qword_20DD93F00);
    sub_20DA2761C(a2, v12, v7);
    v13 = sub_20DD63744();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_20D9D76EC(v7, &unk_27C843810, &qword_20DD93F00);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_20D9D0514(v11, a2, isUniquelyReferenced_nonNull_native, v16, v17);
    v18 = sub_20DD63744();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_20D9F99FC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A20, &qword_20DD940B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_20DD64294();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_20D9D76EC(a1, &qword_27C843A20, &qword_20DD940B0);
    sub_20DA2765C(a2, v12, v7);
    v13 = sub_20DD63744();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_20D9D76EC(v7, &qword_27C843A20, &qword_20DD940B0);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_20D9D079C(v11, a2, isUniquelyReferenced_nonNull_native, v16, v17);
    v18 = sub_20DD63744();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_20D9F9C28(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844270, &qword_20DD94228);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_20DD64544();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_20D9D76EC(a1, &qword_27C844270, &qword_20DD94228);
    sub_20DA278E0(a2, v12, v7);
    v13 = sub_20DD63744();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_20D9D76EC(v7, &qword_27C844270, &qword_20DD94228);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_20D9D1300(v11, a2, isUniquelyReferenced_nonNull_native, v16, v17);
    v18 = sub_20DD63744();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_20D9F9E54(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843D40, &unk_20DD94230);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_20DD63FE4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_20D9D76EC(a1, &qword_27C843D40, &unk_20DD94230);
    sub_20DA27BA4(a2, v7);
    (*(v9 + 8))(a2, v8);
    return sub_20D9D76EC(v7, &qword_27C843D40, &unk_20DD94230);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_20D9D17FC(v11, a2, isUniquelyReferenced_nonNull_native);
    result = (*(v9 + 8))(a2, v8);
    *v2 = v15;
  }

  return result;
}

uint64_t MatterAccessoryLikeItem.tilePath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_tilePath;
  v4 = sub_20DD63FE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void *MatterAccessoryLikeItem.actionSetBuilder.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_actionSetBuilder);
  v2 = v1;
  return v1;
}

uint64_t sub_20D9FA0FC()
{
  v1 = sub_20DD64054();
  v25 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A20, &qword_20DD940B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v25 - v8;
  v10 = sub_20DD64294();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v0 + OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable);
  v15 = OBJC_IVAR___HFMatterAccessoryRepresentable_staticMatterDevice;
  swift_beginAccess();
  sub_20D9FA458(v14 + v15, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_20D9D76EC(v9, &qword_27C843A20, &qword_20DD940B0);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v16 = sub_20DD63F84();
    if ((v16 & 0x10000) != 0)
    {
      v24 = sub_20DD64214();
      (*(v11 + 8))(v13, v10);
      return v24;
    }

    v17 = v16;
    v18 = sub_20DD64284();
    if (*(v18 + 16))
    {
      v19 = sub_20D9CB188(v17);
      if (v20)
      {
        v21 = v25;
        (*(v25 + 16))(v4, *(v18 + 56) + *(v25 + 72) * v19, v1);

        (*(v21 + 32))(v6, v4, v1);
        v22 = sub_20DD63FF4();
        (*(v21 + 8))(v6, v1);
        (*(v11 + 8))(v13, v10);
        return v22;
      }
    }

    (*(v11 + 8))(v13, v10);
  }

  return 0;
}

uint64_t sub_20D9FA458(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A20, &qword_20DD940B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *MatterAccessoryLikeItem.__allocating_init(tilePath:matterSnapshotProvider:accessory:)(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_20D9FED40(a1, a2, a3, a4);

  return v5;
}

id MatterAccessoryLikeItem.__allocating_init(matterAccessoryRepresentable:actionSetBuilder:matterSnapshotProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = OBJC_IVAR___HFMatterAccessoryRepresentable_tilePath;
  v11 = OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_tilePath;
  v12 = sub_20DD63FE4();
  (*(*(v12 - 8) + 16))(&v9[v11], a1 + v10, v12);
  v13 = &v9[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterSnapshotProvider];
  *v13 = a3;
  *(v13 + 1) = a4;
  *&v9[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable] = a1;
  *&v9[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_actionSetBuilder] = a2;
  v15.receiver = v9;
  v15.super_class = v4;
  return objc_msgSendSuper2(&v15, sel_init);
}

id MatterAccessoryLikeItem.init(matterAccessoryRepresentable:actionSetBuilder:matterSnapshotProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR___HFMatterAccessoryRepresentable_tilePath;
  v10 = OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_tilePath;
  v11 = sub_20DD63FE4();
  (*(*(v11 - 8) + 16))(&v4[v10], a1 + v9, v11);
  v12 = &v4[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterSnapshotProvider];
  *v12 = a3;
  *(v12 + 1) = a4;
  *&v4[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable] = a1;
  *&v4[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_actionSetBuilder] = a2;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for MatterAccessoryLikeItem(0);
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t sub_20D9FA6DC()
{
  v1 = sub_20D9D4AFC(MEMORY[0x277D84F90]);
  *(v0 + 120) = MEMORY[0x277D839B0];
  *(v0 + 96) = 1;
  sub_20D9D77C8((v0 + 96), (v0 + 128));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_20D9D0070((v0 + 128), @"dependentOnMatterSnapshot", isUniquelyReferenced_nonNull_native);
  *(v0 + 160) = v1;
  v3 = swift_task_alloc();
  *(v0 + 176) = v3;
  *v3 = v0;
  v3[1] = sub_20D9FA7E0;

  return sub_20D9FB850(v0 + 56);
}

uint64_t sub_20D9FA7E0()
{

  return MEMORY[0x2822009F8](sub_20D9FA8DC, 0, 0);
}

uint64_t sub_20D9FA8DC()
{
  if (*(v0 + 80))
  {
    sub_20D9C51D4((v0 + 56), v0 + 16);
    sub_20D9FB098(v0 + 160, (v0 + 16));
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  else
  {
    sub_20D9D76EC(v0 + 56, &qword_27C843A30, &qword_20DD940B8);
    sub_20D9FAA84(v0 + 160);
  }

  v1 = *(v0 + 160);
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_20D9FA98C()
{
  v0 = sub_20D9D4AFC(MEMORY[0x277D84F90]);
  v6 = MEMORY[0x277D839B0];
  LOBYTE(v5) = 1;
  sub_20D9D77C8(&v5, &v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = v0;
  sub_20D9D0070(&v3, @"dependentOnMatterSnapshot", isUniquelyReferenced_nonNull_native);
  v8 = v7;
  sub_20D9FC2D8(&v3);
  if (v4)
  {
    sub_20D9C51D4(&v3, &v5);
    sub_20D9FB098(&v8, &v5);
    __swift_destroy_boxed_opaque_existential_0(&v5);
  }

  else
  {
    sub_20D9D76EC(&v3, &qword_27C843A30, &qword_20DD940B8);
    sub_20D9FAA84(&v8);
  }

  return v8;
}

uint64_t sub_20D9FAA84(uint64_t a1)
{
  v54 = a1;
  v2 = sub_20DD645F4();
  v48 = *(v2 - 8);
  v49 = v2;
  MEMORY[0x28223BE20](v2);
  v47 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A38, &unk_20DD940C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v45 - v5;
  v7 = sub_20DD641A4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v45 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v45 - v11;
  v13 = sub_20DD64604();
  v51 = *(v13 - 8);
  v52 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = &v45 - v17;
  v53 = v1;
  v18 = *&v1[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable];
  v19 = *&v18[OBJC_IVAR___HFMatterAccessoryRepresentable_accessory];
  v20 = @"title";
  v21 = [v19 name];
  v22 = sub_20DD64EB4();
  v24 = v23;

  v58 = MEMORY[0x277D837D0];
  v55 = v22;
  v56 = v24;
  sub_20D9F971C(&v55, v20);
  v25 = @"serviceNameComponents";
  v26 = [v18 hf_serviceNameComponents];
  v58 = sub_20D9D7510(0, &qword_27C843D68, off_277DF00A8);
  v55 = v26;
  sub_20D9F971C(&v55, v25);
  v46 = v18;
  sub_20D9F1C2C(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_20D9D76EC(v6, &unk_27C843A38, &unk_20DD940C0);
    sub_20DD645C4();
  }

  else
  {
    (*(v8 + 32))(v12, v6, v7);
    (*(v8 + 16))(v45, v12, v7);
    sub_20DD645D4();
    (*(v8 + 8))(v12, v7);
  }

  v28 = v50;
  v27 = v51;
  v29 = v52;
  (*(v51 + 32))(v50, v16, v52);
  v30 = @"icon";
  v31 = v47;
  sub_20DD645B4();
  sub_20DD645E4();
  (*(v48 + 8))(v31, v49);
  if (qword_27C842440 != -1)
  {
    swift_once();
  }

  v32 = qword_27C84C5D8;
  v33 = objc_allocWithZone(HFImageIconDescriptor);
  v34 = v32;
  v35 = sub_20DD64E74();

  v36 = [v33 initWithSystemImageNamed:v35 configuration:v34];

  v58 = sub_20D9D7510(0, &unk_27C843D70, off_277DEFBA8);
  v55 = v36;
  sub_20D9F971C(&v55, v30);
  v37 = [v46 hf_safeRoom];
  if (v37)
  {
    v38 = v37;
    v39 = @"roomIdentifier";
    v40 = [v38 uniqueIdentifier];
    v58 = sub_20DD63744();
    __swift_allocate_boxed_opaque_existential_1(&v55);
    sub_20DD63714();

    sub_20D9F971C(&v55, v39);
  }

  v41 = @"isFavorite";
  v42 = v53;
  if ([v53 hf_hasSetFavorite])
  {
    LOBYTE(v55) = [v42 hf_effectiveIsFavorite];
    v43 = MEMORY[0x277D839B0];
  }

  else
  {
    v43 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
  }

  v58 = v43;
  sub_20D9F971C(&v55, v41);
  return (*(v27 + 8))(v28, v29);
}

void sub_20D9FB098(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  MEMORY[0x28223BE20](v3 - 8);
  v53 = &v48 - v4;
  v5 = sub_20DD63744();
  v55 = *(v5 - 8);
  v56 = v5;
  MEMORY[0x28223BE20](v5);
  v54 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20DD645F4();
  v51 = *(v7 - 8);
  v52 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20DD64604();
  v49 = *(v10 - 8);
  v50 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v13 = @"title";
  v14 = sub_20DD64094();
  v61 = MEMORY[0x277D837D0];
  v58 = v14;
  v59 = v15;
  sub_20D9F971C(&v58, v13);
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v16 = @"serviceNameComponents";
  sub_20DD64094();
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  sub_20DD640B4();
  v18 = v17;
  v19 = sub_20DD64E74();

  if (v18)
  {
    v20 = sub_20DD64E74();
  }

  else
  {
    v20 = 0;
  }

  v21 = [objc_allocWithZone(HFServiceNameComponents) initWithRawServiceName:v19 rawRoomName:v20];

  v61 = sub_20D9D7510(0, &qword_27C843D68, off_277DF00A8);
  v58 = v21;
  sub_20D9F971C(&v58, v16);
  if (qword_27C842440 != -1)
  {
    swift_once();
  }

  v22 = qword_27C84C5D8;
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  sub_20DD64084();
  v23 = sub_20DD64D64();

  v24 = [objc_opt_self() configurationWithHierarchicalColor_];

  v25 = [v22 configurationByApplyingConfiguration_];
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v26 = @"icon";
  sub_20DD640C4();
  sub_20DD645B4();
  (*(v49 + 8))(v12, v50);
  sub_20DD645E4();
  (*(v51 + 8))(v9, v52);
  v27 = objc_allocWithZone(HFImageIconDescriptor);
  v28 = v25;
  v29 = sub_20DD64E74();

  v30 = [v27 initWithSystemImageNamed:v29 configuration:v28];

  v61 = sub_20D9D7510(0, &unk_27C843D70, off_277DEFBA8);
  v58 = v30;
  sub_20D9F971C(&v58, v26);
  v31 = @"description";
  v32 = sub_20D9FE62C(a2);
  v34 = v53;
  if (v33)
  {
    v35 = MEMORY[0x277D837D0];
  }

  else
  {
    v32 = 0;
    v35 = 0;
    v60 = 0;
  }

  v37 = v55;
  v36 = v56;
  v38 = v54;
  v58 = v32;
  v59 = v33;
  v61 = v35;
  sub_20D9F971C(&v58, v31);
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v39 = sub_20DD640A4();
  sub_20DA52FF8(v39, v34);

  if ((*(v37 + 48))(v34, 1, v36) == 1)
  {
    sub_20D9D76EC(v34, &unk_27C843A70, &qword_20DD94260);
  }

  else
  {
    (*(v37 + 32))(v38, v34, v36);
    __swift_project_boxed_opaque_existential_0(a2, a2[3]);
    v40 = *(sub_20DD640A4() + 16);

    if (v40 == 1)
    {
      v61 = v36;
      v41 = __swift_allocate_boxed_opaque_existential_1(&v58);
      (*(v37 + 16))(v41, v38, v36);
      sub_20D9F971C(&v58, @"roomIdentifier");
    }

    (*(v37 + 8))(v38, v36);
  }

  v42 = v57;
  v43 = @"isFavorite";
  if ([v42 hf_hasSetFavorite])
  {
    LOBYTE(v58) = [v42 hf_effectiveIsFavorite];
    v44 = MEMORY[0x277D839B0];
  }

  else
  {
    v44 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
  }

  v61 = v44;
  sub_20D9F971C(&v58, v43);
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  if (sub_20DD64074())
  {
    __swift_project_boxed_opaque_existential_0(a2, a2[3]);
    v45 = sub_20DD64064();
    HFPrimaryStateFromBOOL(v45 & 1);
  }

  v46 = @"state";
  v47 = sub_20DD652E4();
  v61 = sub_20D9D7510(0, &qword_27C8433B0, 0x277CCABB0);
  v58 = v47;
  sub_20D9F971C(&v58, v46);
}

uint64_t sub_20D9FB850(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A20, &qword_20DD940B0);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v3 = sub_20DD63744();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v4 = sub_20DD64354();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D9FB9B0, 0, 0);
}

uint64_t sub_20D9FB9B0()
{
  v1 = v0[9];
  if (*(v1 + OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_actionSetBuilder))
  {
    MatterAccessoryLikeItem.updateTileInfo()(v0[8]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = *(v1 + OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterSnapshotProvider);
    v0[18] = OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_tilePath;
    MEMORY[0x20F324F20]();
    v8 = (v4 + *v4);
    v5 = swift_task_alloc();
    v0[19] = v5;
    *v5 = v0;
    v5[1] = sub_20D9FBB4C;
    v6 = v0[17];
    v7 = v0[14];

    return v8(v6, v7);
  }
}

uint64_t sub_20D9FBB4C()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_20D9FBCA4, 0, 0);
}

uint64_t sub_20D9FBCA4()
{
  v1 = *(v0[9] + OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable);
  v2 = sub_20DD642E4();
  v3 = sub_20DD63FD4();
  if (*(v2 + 16) && (v4 = sub_20D9CB2A8(v3), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = v0[11];
    v8 = *(v2 + 56);
    v9 = sub_20DD64294();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v7, v8 + *(v10 + 72) * v6, v9);

    v11 = 0;
  }

  else
  {

    v9 = sub_20DD64294();
    v10 = *(v9 - 8);
    v11 = 1;
  }

  v12 = v0[17];
  v13 = v0[16];
  v19 = v0[15];
  v15 = v0[10];
  v14 = v0[11];
  (*(v10 + 56))(v14, v11, 1, v9);
  v16 = OBJC_IVAR___HFMatterAccessoryRepresentable_staticMatterDevice;
  swift_beginAccess();
  sub_20D9FA458(v1 + v16, v15);
  swift_beginAccess();
  sub_20D9F0D50(v14, v1 + v16);
  swift_endAccess();
  sub_20D9F04E4(v15);
  sub_20D9D76EC(v15, &qword_27C843A20, &qword_20DD940B0);
  sub_20D9D76EC(v14, &qword_27C843A20, &qword_20DD940B0);
  sub_20DD64334();
  (*(v13 + 8))(v12, v19);

  v17 = v0[1];

  return v17();
}

uint64_t MatterAccessoryLikeItem.updateTileInfo()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A20, &qword_20DD940B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24 - v4;
  v6 = sub_20DD64294();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  v13 = *(v1 + OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_actionSetBuilder);
  if (!v13 || (v29 = *(v1 + OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_actionSetBuilder), v14 = v13, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843C50, &unk_20DD941C0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843C58, &unk_20DD94500), (swift_dynamicCast() & 1) == 0))
  {
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    goto LABEL_9;
  }

  if (!*(&v31 + 1))
  {
LABEL_9:
    result = sub_20D9D76EC(&v30, &unk_27C843F70, &unk_20DD941B0);
LABEL_10:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  v26 = v7;
  v27 = v6;
  sub_20D9C51D4(&v30, v33);
  v15 = v33[4];
  v28 = __swift_project_boxed_opaque_existential_0(v33, v33[3]);
  v25 = *(v1 + OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable);
  v16 = *(v15 + 8);
  v17 = *(v25 + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory);
  v18 = v16();

  if (!v18)
  {
LABEL_13:
    result = __swift_destroy_boxed_opaque_existential_0(v33);
    goto LABEL_10;
  }

  if (!*(v18 + 16))
  {

    goto LABEL_13;
  }

  v19 = OBJC_IVAR___HFMatterAccessoryRepresentable_staticMatterDevice;
  v20 = v25;
  swift_beginAccess();
  sub_20D9FA458(v20 + v19, v5);
  v22 = v26;
  v21 = v27;
  if ((*(v26 + 48))(v5, 1, v27) == 1)
  {

    sub_20D9D76EC(v5, &qword_27C843A20, &qword_20DD940B0);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    (*(v22 + 32))(v12, v5, v21);
    (*(v22 + 16))(v10, v12, v21);
    *(a1 + 24) = sub_20DD641D4();
    *(a1 + 32) = sub_20D9FF488(&unk_27C843C60, MEMORY[0x277D16078], MEMORY[0x277D16070]);
    __swift_allocate_boxed_opaque_existential_1(a1);
    sub_20DD641B4();
    (*(v22 + 8))(v12, v21);
  }

  return __swift_destroy_boxed_opaque_existential_0(v33);
}

double sub_20D9FC2D8@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_20DD64C44();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x28223BE20](v4);
  v43 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20DD64054();
  v42 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A20, &qword_20DD940B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v38 - v10;
  v12 = sub_20DD64294();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *&v2[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable];
  v17 = OBJC_IVAR___HFMatterAccessoryRepresentable_staticMatterDevice;
  swift_beginAccess();
  sub_20D9FA458(v16 + v17, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_20D9D76EC(v11, &qword_27C843A20, &qword_20DD940B0);
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    v41 = a1;
    v19 = *(v13 + 32);
    v19(v15, v11, v12);
    v40 = OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_tilePath;
    v20 = sub_20DD63F84();
    if ((v20 & 0x10000) != 0)
    {
      v28 = v41;
      *(v41 + 24) = v12;
      v28[4] = sub_20D9FF488(&qword_27C843D60, MEMORY[0x277D16408], MEMORY[0x277D163F8]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
      v19(boxed_opaque_existential_1, v15, v12);
    }

    else
    {
      v21 = v20;
      v22 = sub_20DD64284();
      if (*(v22 + 16) && (v23 = sub_20D9CB188(v21), (v24 & 1) != 0))
      {
        v25 = v42;
        (v42[2])(v8, *(v22 + 56) + v42[9] * v23, v6);

        v26 = v41;
        *(v41 + 24) = v6;
        v26[4] = sub_20D9FF488(&qword_27C843B10, MEMORY[0x277D15C38], MEMORY[0x277D15C28]);
        v27 = __swift_allocate_boxed_opaque_existential_1(v26);
        (v25[4])(v27, v8, v6);
        (*(v13 + 8))(v15, v12);
      }

      else
      {

        v30 = v43;
        sub_20DD64BE4();
        v31 = v2;
        v32 = sub_20DD64C24();
        v33 = sub_20DD65364();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v39 = v31;
          v35 = v34;
          v42 = swift_slowAlloc();
          v46 = v42;
          *v35 = 136315650;
          *(v35 + 4) = sub_20D9E0B38(0xD000000000000019, 0x800000020DD985D0, &v46);
          *(v35 + 12) = 512;
          *(v35 + 14) = v21;
          *(v35 + 16) = 2050;
          *(v35 + 18) = sub_20DD63FD4();

          _os_log_impl(&dword_20D9BF000, v32, v33, "%s Failed to get static endpoint for endpoint %hu in device with id %{public}llu", v35, 0x1Au);
          v36 = v42;
          __swift_destroy_boxed_opaque_existential_0(v42);
          MEMORY[0x20F327D10](v36, -1, -1);
          MEMORY[0x20F327D10](v35, -1, -1);
        }

        else
        {
        }

        (*(v44 + 8))(v30, v45);
        (*(v13 + 8))(v15, v12);
        v37 = v41;
        *(v41 + 32) = 0;
        result = 0.0;
        *v37 = 0u;
        v37[1] = 0u;
      }
    }
  }

  return result;
}

id sub_20D9FC874()
{
  v1 = [*(v0 + OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable) hf_homeKitObject];

  return v1;
}

uint64_t sub_20D9FC8C8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843D50, &qword_20DD94250);
  v2[4] = swift_task_alloc();
  v3 = sub_20DD63744();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_20DD638F4();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_20DD63E94();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843D58, &qword_20DD94258);
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D9FCAB0, 0, 0);
}

uint64_t sub_20D9FCAB0()
{
  v0[15] = sub_20DD63C84();
  v0[16] = sub_20DD650F4();
  v0[17] = sub_20DD650E4();
  v2 = sub_20DD65094();

  return MEMORY[0x2822009F8](sub_20D9FCB54, v2, v1);
}

uint64_t sub_20D9FCB54()
{

  *(v0 + 144) = sub_20DD63C64();

  return MEMORY[0x2822009F8](sub_20D9FCBC8, 0, 0);
}

uint64_t sub_20D9FCBC8()
{
  *(v0 + 152) = sub_20DD650E4();
  v2 = sub_20DD65094();

  return MEMORY[0x2822009F8](sub_20D9FCC54, v2, v1);
}

uint64_t sub_20D9FCC54()
{
  v1 = *(v0 + 144);

  *(v0 + 160) = sub_20DD63C04();

  return MEMORY[0x2822009F8](sub_20D9FCCC8, 0, 0);
}

uint64_t sub_20D9FCCC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(v5[20] + 16) && (v6 = sub_20D9CB38C(v5[3], a2, a3, a4, a5), (v7 & 1) != 0))
  {
    (*(v5[12] + 16))(v5[14], *(v5[20] + 56) + *(v5[12] + 72) * v6, v5[11]);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = v5[14];
  v10 = v5[11];
  v11 = v5[12];

  (*(v11 + 56))(v9, v8, 1, v10);
  if ((*(v11 + 48))(v9, 1, v10))
  {
    sub_20D9D76EC(v5[14], &qword_27C843D58, &qword_20DD94258);
    sub_20DD64324();

    v12 = v5[1];

    return v12();
  }

  else
  {
    v14 = v5[13];
    v15 = v5[14];
    v16 = v5[11];
    v17 = v5[12];
    (*(v17 + 16))(v14, v15, v16);
    sub_20D9D76EC(v15, &qword_27C843D58, &qword_20DD94258);
    sub_20DD63E34();
    (*(v17 + 8))(v14, v16);
    v18 = swift_task_alloc();
    v5[21] = v18;
    *v18 = v5;
    v18[1] = sub_20D9FCF08;

    return MEMORY[0x28216E688]();
  }
}

uint64_t sub_20D9FCF08(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  *(*v1 + 176) = a1;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_20D9FD068, 0, 0);
}

uint64_t sub_20D9FD068(uint64_t a1)
{
  if (v1[22])
  {
    v1[23] = sub_20DD650E4();
    v3 = sub_20DD65094();

    return MEMORY[0x2822009F8](sub_20D9FD174, v3, v2);
  }

  else
  {
    sub_20DD64324();

    v4 = v1[1];

    return v4();
  }
}

uint64_t sub_20D9FD174()
{

  *(v0 + 192) = sub_20DD63C64();

  return MEMORY[0x2822009F8](sub_20D9FD1E8, 0, 0);
}

uint64_t sub_20D9FD1E8()
{
  v1 = [*(v0 + 176) uniqueIdentifier];
  sub_20DD63714();

  *(v0 + 200) = sub_20DD650E4();
  v3 = sub_20DD65094();

  return MEMORY[0x2822009F8](sub_20D9FD2A8, v3, v2);
}

uint64_t sub_20D9FD2A8()
{
  v1 = *(v0 + 192);

  *(v0 + 208) = sub_20DD63C14();

  return MEMORY[0x2822009F8](sub_20D9FD31C, 0, 0);
}

uint64_t sub_20D9FD31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(v5[26] + 16) && (v6 = sub_20D9CB38C(v5[7], a2, a3, a4, a5), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = v5[22];
    v10 = v5[6];
    v12 = v5[4];
    v11 = v5[5];
    v25 = v5[7];
    v26 = v5[2];
    v13 = *(v5[26] + 56);
    v14 = sub_20DD64354();
    v15 = *(v14 - 8);
    (*(v15 + 16))(v12, v13 + *(v15 + 72) * v8, v14);

    (*(v10 + 8))(v25, v11);

    (*(v15 + 56))(v12, 0, 1, v14);
    (*(v15 + 32))(v26, v12, v14);
  }

  else
  {
    v16 = v5[22];
    v18 = v5[6];
    v17 = v5[7];
    v20 = v5[4];
    v19 = v5[5];

    (*(v18 + 8))(v17, v19);
    v21 = sub_20DD64354();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v20, 1, 1, v21);
    sub_20DD64324();

    if ((*(v22 + 48))(v20, 1, v21) != 1)
    {
      sub_20D9D76EC(v5[4], &qword_27C843D50, &qword_20DD94250);
    }
  }

  v23 = v5[1];

  return v23();
}

void *sub_20D9FD61C@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable);
  v5 = *(v1 + OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterSnapshotProvider);
  v4 = *(v1 + OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterSnapshotProvider + 8);
  v6 = type metadata accessor for MatterAccessoryLikeItem(0);
  v7 = objc_allocWithZone(v6);
  v8 = OBJC_IVAR___HFMatterAccessoryRepresentable_tilePath;
  v9 = OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_tilePath;
  v10 = sub_20DD63FE4();
  (*(*(v10 - 8) + 16))(&v7[v9], &v3[v8], v10);
  v11 = &v7[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterSnapshotProvider];
  *v11 = v5;
  *(v11 + 1) = v4;
  *&v7[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable] = v3;
  *&v7[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_actionSetBuilder] = 0;
  v14.receiver = v7;
  v14.super_class = v6;

  v12 = v3;
  result = objc_msgSendSuper2(&v14, sel_init);
  a1[3] = v6;
  *a1 = result;
  return result;
}

id MatterAccessoryLikeItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_20D9FD824()
{
  v1 = OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_tilePath;
  v2 = sub_20DD63FE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_actionSetBuilder);
}

id MatterAccessoryLikeItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MatterAccessoryLikeItem(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id MatterAccessoryLikeItem.updateShowInHomeDashboard(_:)(char a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable) hf:a1 & 1 updateShowInHomeDashboard:?];

  return v2;
}

id MatterAccessoryLikeItem.updateIsFavorite(_:)(char a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable) hf:a1 & 1 updateIsFavorite:?];

  return v2;
}

id MatterAccessoryLikeItem.updateIsVisibleInHomeStatus(_:)(char a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable) hf:a1 & 1 updateIsVisibleInHomeStatus:?];

  return v2;
}

uint64_t MatterAccessoryLikeItem.copy(with:)(uint64_t a1)
{
  swift_getObjectType();
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    swift_unknownObjectRetain();
    v4 = [v3 actionSetBuilder];
    if (v4)
    {
      v5 = v4;
      v6 = *&v1[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable];
      v8 = *&v1[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterSnapshotProvider];
      v7 = *&v1[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterSnapshotProvider + 8];
      v9 = type metadata accessor for MatterAccessoryLikeItem(0);
      v10 = objc_allocWithZone(v9);
      v11 = OBJC_IVAR___HFMatterAccessoryRepresentable_tilePath;
      v12 = OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_tilePath;
      v13 = sub_20DD63FE4();
      (*(*(v13 - 8) + 16))(&v10[v12], &v6[v11], v13);
      v14 = &v10[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterSnapshotProvider];
      *v14 = v8;
      *(v14 + 1) = v7;
      *&v10[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable] = v6;
      *&v10[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_actionSetBuilder] = v5;
      v18.receiver = v10;
      v18.super_class = v9;

      v15 = v6;
      v16 = v5;
      objc_msgSendSuper2(&v18, sel_init);

      swift_unknownObjectRelease();
      return swift_dynamicCastClassUnconditional();
    }

    swift_unknownObjectRelease();
  }

  [v1 copy];
  sub_20DD654E4();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  return v19;
}

id MatterAccessoryLikeItem.home.getter()
{
  v1 = [*(*(v0 + OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable) + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory) home];

  return v1;
}

void MatterAccessoryLikeItem.services.getter()
{
  if (MEMORY[0x277D84F90] >> 62 && sub_20DD655B4())
  {
    v1 = MEMORY[0x277D84F90];

    sub_20D9EE59C(v1);
  }
}

uint64_t MatterAccessoryLikeItem.accessories()()
{
  v1 = [*(v0 + OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable) hf_associatedAccessories];
  sub_20D9D7510(0, &qword_27C844290, 0x277CD1650);
  sub_20D9EC18C(&qword_27C843840, &qword_27C844290, 0x277CD1650);
  v2 = sub_20DD651E4();

  return v2;
}

id MatterAccessoryLikeItem.namingComponentForHomeKitObject()()
{
  v0 = objc_allocWithZone(HFNamingComponents);

  return [v0 initWithHomeKitObject_];
}

void sub_20D9FE440()
{
  v0 = *MEMORY[0x277D76A20];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 configurationWithTextStyle:v2 scale:3];

  qword_27C84C5D8 = v3;
}

id MatterAccessoryLikeItem.serviceLikeBuilder(in:)()
{
  v1 = [*&v0[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable] hf_homeKitObject];
  v2 = [v0 home];
  v3 = [objc_allocWithZone(HFAccessoryBuilder) initWithExistingObject:v1 inHome:v2];
  swift_unknownObjectRelease();

  return v3;
}

uint64_t sub_20D9FE62C(uint64_t a1)
{
  v50 = a1;
  v44 = sub_20DD63F14();
  v40 = *(v44 - 8);
  v1 = MEMORY[0x28223BE20](v44);
  v39 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v42 = &v39 - v3;
  v48 = sub_20DD64054();
  v43 = *(v48 - 8);
  v4 = MEMORY[0x28223BE20](v48);
  v41 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v46 = &v39 - v6;
  v49 = sub_20DD641D4();
  v47 = *(v49 - 8);
  v7 = MEMORY[0x28223BE20](v49);
  v45 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A20, &qword_20DD940B0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v39 - v12;
  v14 = sub_20DD64294();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v39 - v19;
  v21 = sub_20DD63ED4();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_20DD63EF4();
  v51 = *(v25 - 8);
  v52 = v25;
  MEMORY[0x28223BE20](v25);
  v27 = &v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 104))(v24, *MEMORY[0x277D15AE8], v21);
  sub_20DD63EE4();
  (*(v22 + 8))(v24, v21);
  sub_20D9FF4D0(v50, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843D80, &qword_20DD94268);
  if (swift_dynamicCast())
  {
    (*(v15 + 32))(v18, v20, v14);
    (*(v15 + 56))(v13, 1, 1, v14);
    v28 = sub_20DD64234();
    sub_20D9D76EC(v13, &qword_27C843A20, &qword_20DD940B0);
    (*(v15 + 8))(v18, v14);
    goto LABEL_8;
  }

  v29 = v49;
  if (swift_dynamicCast())
  {
    v30 = v47;
    v31 = v45;
    (*(v47 + 32))(v45, v10, v29);
    (*(v15 + 56))(v13, 1, 1, v14);
    v32 = sub_20DD641C4();
LABEL_7:
    v28 = v32;
    sub_20D9D76EC(v13, &qword_27C843A20, &qword_20DD940B0);
    (*(v30 + 8))(v31, v29);
    goto LABEL_8;
  }

  v33 = v46;
  v29 = v48;
  if (swift_dynamicCast())
  {
    v30 = v43;
    v31 = v41;
    (*(v43 + 32))(v41, v33, v29);
    (*(v15 + 56))(v13, 1, 1, v14);
    v32 = sub_20DD64034();
    goto LABEL_7;
  }

  v35 = v42;
  v36 = v44;
  v28 = 0;
  if (swift_dynamicCast())
  {
    v37 = v39;
    v38 = v40;
    (*(v40 + 32))(v39, v35, v36);
    (*(v15 + 56))(v13, 1, 1, v14);
    v28 = sub_20DD63F04();
    sub_20D9D76EC(v13, &qword_27C843A20, &qword_20DD940B0);
    (*(v38 + 8))(v37, v36);
  }

LABEL_8:
  (*(v51 + 8))(v27, v52);
  __swift_destroy_boxed_opaque_existential_0(v53);
  return v28;
}

char *sub_20D9FED40(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v27 = a2;
  v28 = a3;
  v26 = a1;
  v6 = sub_20DD63FE4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 16);
  v10(v9, a1, v6);
  v11 = type metadata accessor for MatterAccessoryRepresentable(0);
  v12 = objc_allocWithZone(v11);
  v13 = OBJC_IVAR___HFMatterAccessoryRepresentable_staticMatterDevice;
  v14 = sub_20DD64294();
  (*(*(v14 - 8) + 56))(&v12[v13], 1, 1, v14);
  v15 = &v12[OBJC_IVAR___HFMatterAccessoryRepresentable__tileInfo];
  *(v15 + 4) = 0;
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *&v12[OBJC_IVAR___HFMatterAccessoryRepresentable_accessory] = a4;
  v10(&v12[OBJC_IVAR___HFMatterAccessoryRepresentable_tilePath], v9, v6);
  v30.receiver = v12;
  v30.super_class = v11;
  v16 = a4;
  v17 = objc_msgSendSuper2(&v30, sel_init);
  v18 = *(v7 + 8);
  v18(v9, v6);
  v19 = type metadata accessor for MatterAccessoryLikeItem(0);
  v20 = objc_allocWithZone(v19);
  v10(&v20[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_tilePath], &v17[OBJC_IVAR___HFMatterAccessoryRepresentable_tilePath], v6);
  v21 = &v20[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterSnapshotProvider];
  v22 = v28;
  *v21 = v27;
  v21[1] = v22;
  *&v20[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable] = v17;
  *&v20[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_actionSetBuilder] = 0;
  v29.receiver = v20;
  v29.super_class = v19;
  v23 = objc_msgSendSuper2(&v29, sel_init);
  v18(v26, v6);
  return v23;
}

uint64_t type metadata accessor for MatterAccessoryLikeItem(uint64_t a1)
{
  result = qword_27C843C70;
  if (!qword_27C843C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s4Home23MatterAccessoryLikeItemC04withC19RepresentableObject_11valueSourceACXDSgSo011HFAccessoryG0_p_So021HFCharacteristicValueJ0_ptFZ_0(uint64_t a1)
{
  v2 = sub_20DD64C44();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MatterAccessoryRepresentable(0);
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v8 = type metadata accessor for MatterAccessoryLikeItem(0);
    v9 = objc_allocWithZone(v8);
    v10 = OBJC_IVAR___HFMatterAccessoryRepresentable_tilePath;
    v11 = OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_tilePath;
    v12 = sub_20DD63FE4();
    (*(*(v12 - 8) + 16))(&v9[v11], v7 + v10, v12);
    v13 = &v9[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterSnapshotProvider];
    *v13 = &unk_20DD94248;
    *(v13 + 1) = 0;
    *&v9[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable] = v7;
    *&v9[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_actionSetBuilder] = 0;
    v22.receiver = v9;
    v22.super_class = v8;
    swift_unknownObjectRetain();
    v24 = objc_msgSendSuper2(&v22, sel_init);
    sub_20DD65494();
    swift_dynamicCast();
    return v23;
  }

  else
  {
    sub_20DD64BE4();
    swift_unknownObjectRetain();
    v15 = sub_20DD64C24();
    v16 = sub_20DD65364();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23 = a1;
      v24 = v18;
      *v17 = 136446210;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843D48, &qword_20DD94240);
      v19 = sub_20DD64EE4();
      v21 = sub_20D9E0B38(v19, v20, &v24);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_20D9BF000, v15, v16, "Attempted to create MatterAccessoryLikeItem with an object that is not a MatterAccessoryRepresentable! %{public}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x20F327D10](v18, -1, -1);
      MEMORY[0x20F327D10](v17, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }
}

uint64_t sub_20D9FF2D8(uint64_t a1)
{
  result = sub_20DD63FE4();
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

uint64_t sub_20D9FF488(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20D9FF4D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_20D9FF53C(id result, unint64_t a2, uint64_t *a3)
{
  v12 = result;
  if (a2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; result = v10)
  {
    for (j = 0; ; ++j)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x20F326680](j, a2);
      }

      else
      {
        if (j >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        result = *(a2 + 8 * j + 32);
      }

      v8 = result;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v11 = result;
      sub_20DA00DF8(&v12, &v11, a3);

      if (v3)
      {
      }

      if (v9 == i)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v10 = result;
    i = sub_20DD655B4();
  }

  return result;
}