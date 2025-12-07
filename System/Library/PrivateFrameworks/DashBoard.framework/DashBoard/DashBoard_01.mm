char *sub_24822B3C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91CA0, &unk_24839D8A0);
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

void *sub_24822B4D0(uint64_t a1, unint64_t a2)
{
  v3 = sub_24822B51C(a1, a2);
  sub_24822B64C(&unk_285A503C0);
  return v3;
}

void *sub_24822B51C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_24822B738(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_248384490();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_248383A00();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24822B738(v10, 0);
        result = sub_248384430();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void sub_24822B64C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_24822B7AC(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_24822B738(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8FD90, qword_24839C970);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24822B7AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8FD90, qword_24839C970);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_24822B8A0(uint64_t a1, uint64_t a2)
{
  sub_248384780();
  sub_2483839E0();
  v4 = sub_2483847B0();

  return sub_24822C0A0(a1, a2, v4);
}

uint64_t sub_24822B918(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_2483815A0();
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F8E8, &qword_24839C040);
  v42 = v4;
  result = sub_2483845D0();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_248384780();
      sub_2483839E0();
      result = sub_2483847B0();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_24822BC98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F8E0, &qword_24839C038);
  v34 = v4;
  result = sub_2483845D0();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_248384780();
      sub_2483839E0();
      result = sub_2483847B0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t *sub_24822BF40(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_24822C158(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_24822C244(v8, v4, v2);
  result = MEMORY[0x24C1CD5F0](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t sub_24822C0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_248384680())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t *sub_24822C158(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(*(a3 + 56) + 8 * v11) + 16))
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_24822C2BC(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_24822C2BC(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_24822C244(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_24822C158(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_24822C2BC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F8E0, &qword_24839C038);
  result = sub_2483845F0();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    sub_248384780();

    sub_2483839E0();
    result = sub_2483847B0();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
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

char *sub_24822C500()
{
  v1 = v0;
  v35 = sub_2483815A0();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F8E8, &qword_24839C040);
  v3 = *v0;
  v4 = sub_2483845C0();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
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

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
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

  return result;
}

void *sub_24822C780()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F8E0, &qword_24839C038);
  v2 = *v0;
  v3 = sub_2483845C0();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

char *sub_24822C8F0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24822C910(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24822C910(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91CA0, &unk_24839D8A0);
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

void *sub_24822CA1C(void *result, void *a2, uint64_t a3, uint64_t a4)
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

unint64_t sub_24822CB74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F8E0, &qword_24839C038);
    v3 = sub_2483845F0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_24822B8A0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_24822CC78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F8D8, &qword_24839C030);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F8E8, &qword_24839C040);
    v7 = sub_2483845F0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24822D5D8(v9, v5);
      v11 = *v5;
      v12 = v5[1];
      result = sub_24822B8A0(*v5, v12);
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
      v18 = sub_2483815A0();
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

void *sub_24822CE54(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F8E0, &qword_24839C038);
  result = sub_2483845C0();
  v5 = 0;
  v26 = a1;
  v8 = *(a1 + 64);
  v7 = a1 + 64;
  v6 = v8;
  v9 = 1 << *(v7 - 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v25 = result + 8;
  v28 = result;
  if ((v10 & v6) != 0)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v16 = v13 | (v5 << 6);
      v17 = (*(v26 + 48) + 16 * v16);
      v18 = *v17;
      v19 = v17[1];
      v30 = *(*(v26 + 56) + 8 * v16);

      sub_24822A790(&v30, a2, &v29);

      if (v2)
      {
        break;
      }

      *(v25 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v28;
      v20 = v29;
      v21 = (v28[6] + 16 * v16);
      *v21 = v18;
      v21[1] = v19;
      *(v28[7] + 8 * v16) = v20;
      v22 = v28[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_17;
      }

      v28[2] = v24;
      if (!v11)
      {
        goto LABEL_5;
      }
    }

    return v28;
  }

  else
  {
LABEL_5:
    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v12)
      {
        return result;
      }

      v15 = *(v7 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

unint64_t sub_24822D018(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_248384360();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F890, &qword_2483A1ED0);
      result = sub_248384420();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_248384360();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
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
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v21 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  v20 = v1;
  while (v21)
  {
    result = MEMORY[0x24C1CBA50](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    sub_248382DC0();
    sub_24822D4C4(&qword_27EE8F898, MEMORY[0x277CBCDB0]);
    result = sub_2483838D0();
    v10 = -1 << *(v3 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *(v7 + 8 * (v11 >> 6));
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_24822D4C4(&qword_27EE8F8A0, MEMORY[0x277CBCDB8]);
      do
      {
        result = sub_248383910();
        if (result)
        {

          v1 = v20;
          goto LABEL_11;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v7 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v1 = v20;
    }

    *(v7 + 8 * v12) = v14 | v13;
    *(*(v3 + 48) + 8 * v11) = v8;
    v16 = *(v3 + 16);
    v9 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v17;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
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

unint64_t sub_24822D338()
{
  result = qword_27EE90400;
  if (!qword_27EE90400)
  {
    sub_24814FB28(255, &qword_27EE903F0, 0x277CBEB88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE90400);
  }

  return result;
}

void sub_24822D3A0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;

    v2 = sub_248381510();

    if (v2)
    {

      v3 = sub_248383DC0();
      v4 = *sub_24814FB80();
      sub_248382A40(v3, &dword_248146000, v4, "DBAssetLibrary assetManager updated", 35, 2, MEMORY[0x277D84F90]);

      sub_248228A0C();
      v5 = (*((*MEMORY[0x277D85000] & *v1) + 0xB8))();
      if (v5)
      {
        [v5 assetLibraryPunchThroughsUpdated];
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_24822D4C4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_248382DC0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24822D508(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F8A8, &qword_24839C008);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24822D578(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24822D5D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F8D8, &qword_24839C030);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24822D648(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_24822D704()
{
  swift_getKeyPath();
  (*(*v0 + 144))();

  swift_beginAccess();
  return v0[16];
}

uint64_t sub_24822D77C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_24822D814(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[16] == v2)
  {
    v1[16] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x28223BE20](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 152))(v5);
  }

  return result;
}

uint64_t sub_24822D8FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

uint64_t (*sub_24822D950(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  (*(*v1 + 144))();

  v4[5] = OBJC_IVAR____TtC9DashBoard26TimelinePlaybackController___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_248232B2C(&qword_27EE8F910, type metadata accessor for TimelinePlaybackController, &unk_24839C318);
  sub_248381410();

  v4[7] = sub_24822D6AC(v4);
  return sub_24822DA8C;
}

void sub_24822DA8C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_248381400();

  free(v1);
}

uint64_t sub_24822DC84()
{
  v1 = OBJC_IVAR____TtC9DashBoard26TimelinePlaybackController___observationRegistrar;
  v2 = sub_248381430();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_24822DCE4()
{
  v1 = OBJC_IVAR____TtC9DashBoard26TimelinePlaybackController___observationRegistrar;
  v2 = sub_248381430();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24822DD80()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  sub_248381420();
  return v0;
}

uint64_t sub_24822DDC8()
{
  *(v0 + 16) = 0;
  sub_248381420();
  return v0;
}

uint64_t sub_24822DDF4()
{
  type metadata accessor for TimelinePlaybackController(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  result = sub_248381420();
  qword_27EE98E60 = v0;
  return result;
}

uint64_t *sub_24822DE44()
{
  if (qword_27EE948E0 != -1)
  {
    swift_once();
  }

  return &qword_27EE98E60;
}

uint64_t sub_24822DE94()
{
  if (qword_27EE948E0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_24822DEF4@<X0>(void *a1@<X8>)
{
  if (qword_27EE948E0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27EE98E60;
}

uint64_t sub_24822DF68()
{
  sub_24822DFA4();
  sub_248383300();
  return v1;
}

unint64_t sub_24822DFA4()
{
  result = qword_27EE8F918;
  if (!qword_27EE8F918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE8F918);
  }

  return result;
}

uint64_t (*sub_24822E034(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  a1[3] = sub_24822DFA4();
  sub_248383300();
  return sub_24822E094;
}

uint64_t sub_24822E094(uint64_t *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_248383310();
  }

  sub_248383310();
}

uint64_t sub_24822E128@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F920, &qword_24839C0B8);

  return swift_storeEnumTagMultiPayload();
}

void *sub_24822E1FC@<X0>(void *a1@<X8>)
{
  sub_24822DFA4();
  result = sub_248383300();
  *a1 = v3;
  return result;
}

uint64_t sub_24822E24C(uint64_t *a1)
{
  sub_24822DFA4();

  return sub_248383310();
}

uint64_t sub_24822E2F0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F928, &qword_24839C0E8);
  sub_2483836B0();
  return v2;
}

uint64_t sub_24822E340()
{
  v1 = *(v0 + *(type metadata accessor for DBWidgetHomeIntroView(0) + 32));

  return v1;
}

uint64_t sub_24822E3A0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24822E3D8()
{
  v1 = *(v0 + *(type metadata accessor for DBWidgetHomeIntroView(0) + 36));

  return v1;
}

void sub_24822E418(uint64_t a1@<X8>)
{
  v3 = sub_248383760();
  v5 = v4;
  sub_24822E56C(v1, &v20);
  v6 = v20;
  v7 = v21;
  v8 = v22;
  v9 = type metadata accessor for DBWidgetHomeIntroView(0);
  v18 = v23;
  v10 = v1 + *(v9 + 24);
  v11 = *v10;
  v12 = *(v10 + 8);
  LOBYTE(v20) = *v10;
  v21 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94490, &qword_24839C0F0);
  sub_2483836C0();
  v13 = 0.0;
  v14 = 1.0;
  if (v19)
  {
    v15 = 1.0;
  }

  else
  {
    v15 = 0.0;
  }

  LOBYTE(v20) = v11;
  v21 = v12;
  sub_2483836C0();
  if (!v19)
  {
    v13 = 10.0;
  }

  LOBYTE(v20) = v11;
  v21 = v12;
  sub_2483836C0();
  if (!v19)
  {
    v14 = 1.08;
  }

  sub_248383790();
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v18;
  *(a1 + 56) = v15;
  *(a1 + 64) = v13;
  *(a1 + 72) = 0;
  *(a1 + 80) = v14;
  *(a1 + 88) = v14;
  *(a1 + 96) = v16;
  *(a1 + 104) = v17;
}

uint64_t sub_24822E56C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DBWidgetHomeIntroView(0);
  v5 = v4 - 8;
  v14 = *(v4 - 8);
  v6 = *(v14 + 64);
  MEMORY[0x28223BE20](v4);
  sub_2483835F0();
  v7 = (a1 + *(v5 + 32));
  v8 = *v7;
  v9 = *(v7 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94490, &qword_24839C0F0);
  sub_2483836C0();
  v10 = sub_248383680();

  v16 = v8;
  v17 = v9;
  sub_2483836C0();
  LOBYTE(v9) = v15;
  sub_248232424(a1, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v12 = swift_allocObject();
  result = sub_248232584(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  *a2 = v10;
  *(a2 + 8) = 0;
  *(a2 + 16) = v9;
  *(a2 + 24) = sub_2482325E8;
  *(a2 + 32) = v12;
  return result;
}

uint64_t sub_24822E70C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FAC8, &qword_24839C4F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FAD0, &qword_24839C4F8);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = v24 - v11;
  *v8 = sub_248383340();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FAD8, &qword_24839C500);
  sub_24822E918(a2, a1, &v8[*(v13 + 44)]);
  sub_248383760();
  sub_248383170();
  sub_248231B84(v8, v12, &qword_27EE8FAC8, &qword_24839C4F0);
  v14 = &v12[*(v10 + 44)];
  v15 = v24[5];
  *(v14 + 4) = v24[4];
  *(v14 + 5) = v15;
  *(v14 + 6) = v24[6];
  v16 = v24[1];
  *v14 = v24[0];
  *(v14 + 1) = v16;
  v17 = v24[3];
  *(v14 + 2) = v24[2];
  *(v14 + 3) = v17;
  sub_2483830E0();
  v19 = v18 * 0.5;
  sub_2483830E0();
  v21 = v20 * 0.5;
  sub_248231B84(v12, a3, &qword_27EE8FAD0, &qword_24839C4F8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FAE0, &qword_24839C508);
  v23 = (a3 + *(result + 36));
  *v23 = v19;
  v23[1] = v21;
  return result;
}

uint64_t sub_24822E918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v120 = a2;
  v135 = a3;
  v128 = sub_248383160();
  MEMORY[0x28223BE20](v128);
  v129 = &v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FAE8, &qword_24839C510);
  v6 = *(v5 - 8);
  v133 = v5;
  v134 = v6;
  MEMORY[0x28223BE20](v5);
  v127 = &v105 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FAF0, &qword_24839C518);
  v9 = *(v8 - 8);
  v130 = v8;
  v131 = v9;
  MEMORY[0x28223BE20](v8);
  v125 = &v105 - v10;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FAF8, &qword_24839C520);
  v147 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v145 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v139 = &v105 - v13;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FB00, &qword_24839C528) - 8;
  MEMORY[0x28223BE20](v117);
  v112 = &v105 - v14;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FB08, &qword_24839C530) - 8;
  MEMORY[0x28223BE20](v119);
  v126 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v118 = &v105 - v17;
  MEMORY[0x28223BE20](v18);
  v136 = &v105 - v19;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FB10, &qword_24839C538);
  v146 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v137 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v148 = &v105 - v22;
  v23 = type metadata accessor for DBWidgetHomeIntroView(0);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23 - 8);
  v110 = v25;
  v111 = a1;
  v26 = &v105 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24822F7E0(&v158);
  v143 = v159;
  v144 = v158;
  v142 = v160;
  v27 = v161[0];
  v141 = v161[0];
  sub_248383760();
  sub_248383090();
  LOBYTE(v158) = v27;
  *(v167 + 5) = *&v167[7];
  *(&v167[2] + 5) = *&v167[9];
  *(&v167[4] + 5) = *&v167[11];
  v107 = v26;
  sub_248232424(a1, v26);
  v28 = *(v24 + 80);
  v29 = (v28 + 16) & ~v28;
  v108 = v29;
  v109 = v28;
  v140 = swift_allocObject();
  sub_248232584(v26, v140 + v29);
  sub_248383760();
  sub_248383090();
  v123 = v169;
  v124 = v167[13];
  v121 = v172;
  v122 = v171;
  v187 = 1;
  v186 = v168;
  v185 = v170;
  sub_248383320();
  _s5DummyCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v106 = ObjCClassFromMetadata;
  v105 = objc_opt_self();
  v31 = [v105 bundleForClass_];
  v32 = sub_248383500();
  v34 = v33;
  LOBYTE(v29) = v35;
  v37 = v36;
  v38 = sub_2483834D0();
  KeyPath = swift_getKeyPath();
  v158 = v32;
  v159 = v34;
  LOBYTE(v160) = v29 & 1;
  *v161 = v37;
  *&v161[8] = KeyPath;
  *&v161[16] = v38;
  sub_2483834A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FB18, &qword_24839C570);
  sub_2482327F0();
  sub_248383540();
  sub_2482328A8(v32, v34, v29 & 1);

  sub_248383760();
  sub_248383090();
  v115 = v175;
  v116 = v173;
  v113 = v178;
  v114 = v177;
  v190 = 1;
  v189 = v174;
  v188 = v176;
  sub_248383320();
  v40 = [v105 bundleForClass_];
  v41 = sub_248383500();
  v43 = v42;
  v158 = v41;
  v159 = v42;
  v45 = v44 & 1;
  LOBYTE(v160) = v44 & 1;
  *v161 = v46;
  v47 = v112;
  sub_248383570();
  sub_2482328A8(v41, v43, v45);

  v48 = sub_248383470();
  v49 = swift_getKeyPath();
  v50 = (v47 + *(v117 + 44));
  *v50 = v49;
  v50[1] = v48;
  sub_2483830E0();
  v52 = v51;
  sub_2483830E0();
  v54 = v53;
  sub_2483830E0();
  if (v54 / v55 < 1.0)
  {
    v56 = 4;
  }

  else
  {
    v56 = 3;
  }

  *&v153 = 0;
  sub_2483836B0();
  v57 = v158;
  v58 = v159;
  v59 = v118;
  sub_248231B84(v47, v118, &qword_27EE8FB00, &qword_24839C528);
  v60 = v59 + *(v119 + 44);
  *v60 = v52 * 0.8;
  *(v60 + 8) = v56;
  *(v60 + 16) = v57;
  *(v60 + 24) = v58;
  v61 = v136;
  sub_248231B84(v59, v136, &qword_27EE8FB08, &qword_24839C530);
  sub_248383760();
  sub_248383090();
  v119 = v181;
  v120 = v179;
  v117 = v184;
  v118 = v183;
  v152 = 1;
  v151 = v180;
  v150 = v182;
  v62 = v111;
  v63 = v107;
  sub_248232424(v111, v107);
  v64 = v108;
  v65 = swift_allocObject();
  sub_248232584(v63, v65 + v64);
  v149 = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FB38, &qword_24839C580);
  sub_248232AA0();
  v66 = v125;
  sub_248383700();
  v67 = *(v128 + 20);
  v68 = *MEMORY[0x277CE0128];
  v69 = sub_248383330();
  v70 = v129;
  (*(*(v69 - 8) + 104))(&v129[v67], v68, v69);
  __asm { FMOV            V0.2D, #20.0 }

  *v70 = _Q0;
  sub_248232B2C(&qword_27EE8FB48, MEMORY[0x277CDFC08], MEMORY[0x277CDFBF8]);
  v76 = v127;
  sub_248381C40();
  sub_24822D648(&qword_27EE8FB50, &qword_27EE8FAF0, &qword_24839C518, MEMORY[0x277CDF028]);
  sub_24822D648(&qword_27EE8FB58, &qword_27EE8FAE8, &qword_24839C510, MEMORY[0x277CF8C28]);
  v77 = v139;
  v78 = v76;
  v79 = v130;
  v80 = v133;
  sub_248383550();
  (*(v134 + 1))(v78, v80);
  (*(v131 + 8))(v66, v79);
  LODWORD(v111) = v187;
  LODWORD(v112) = v186;
  LOBYTE(v80) = v185;
  v81 = *(v146 + 16);
  v82 = v137;
  v83 = v138;
  v81(v137, v148, v138);
  LODWORD(v125) = v190;
  LODWORD(v127) = v189;
  LODWORD(v128) = v188;
  v84 = v126;
  sub_248164738(v61, v126);
  LODWORD(v129) = v152;
  LODWORD(v130) = v151;
  LODWORD(v131) = v150;
  v133 = *(v147 + 16);
  v85 = v132;
  v133(v145, v77, v132);
  *&v153 = v144;
  *(&v153 + 1) = v143;
  *&v154[0] = v142;
  BYTE8(v154[0]) = v141;
  *(v154 + 9) = 0;
  *(&v154[2] + 11) = *&v167[4];
  *(&v154[1] + 11) = *&v167[2];
  *(v154 + 11) = *v167;
  v134 = sub_2482327D8;
  *(&v154[3] + 1) = *(&v167[5] + 5);
  *&v155 = sub_2482327D8;
  *(&v155 + 1) = v140;
  v156 = 0;
  v157 = 0;
  v86 = v135;
  *(v135 + 80) = v155;
  *(v86 + 96) = 0u;
  v87 = v154[3];
  v88 = v154[0];
  *v86 = v153;
  *(v86 + 16) = v88;
  v89 = v154[1];
  *(v86 + 48) = v154[2];
  *(v86 + 64) = v87;
  *(v86 + 32) = v89;
  *(v86 + 112) = 0;
  *(v86 + 120) = v111;
  *(v86 + 128) = v124;
  *(v86 + 136) = v112;
  v90 = v122;
  *(v86 + 144) = v123;
  *(v86 + 152) = v80;
  v91 = v121;
  *(v86 + 160) = v90;
  *(v86 + 168) = v91;
  v92 = v86;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FB60, &qword_24839C588);
  v81((v92 + v93[16]), v82, v83);
  v94 = v92 + v93[20];
  *v94 = 0;
  *(v94 + 8) = v125;
  *(v94 + 16) = v116;
  *(v94 + 24) = v127;
  *(v94 + 32) = v115;
  *(v94 + 40) = v128;
  v95 = v113;
  *(v94 + 48) = v114;
  *(v94 + 56) = v95;
  v96 = v84;
  sub_248164738(v84, v92 + v93[24]);
  v97 = v92 + v93[28];
  *v97 = 0;
  *(v97 + 8) = v129;
  *(v97 + 16) = v120;
  *(v97 + 24) = v130;
  *(v97 + 32) = v119;
  *(v97 + 40) = v131;
  v98 = v117;
  *(v97 + 48) = v118;
  *(v97 + 56) = v98;
  v99 = v145;
  v133(v92 + v93[32], v145, v85);
  sub_248232C78(&v153, &v158, &qword_27EE8FB68, &qword_24839C590);
  v100 = *(v147 + 8);
  v101 = v85;
  v100(v139, v85);
  sub_2481647A8(v136);
  v102 = *(v146 + 8);
  v103 = v138;
  v102(v148, v138);
  v100(v99, v101);
  sub_2481647A8(v96);
  v102(v137, v103);
  v158 = v144;
  v159 = v143;
  v160 = v142;
  v161[0] = v141;
  v161[1] = 0;
  v161[2] = 0;
  *&v161[3] = *v167;
  *&v161[19] = *&v167[2];
  *v162 = *&v167[4];
  *&v162[13] = *(&v167[5] + 5);
  v163 = v134;
  v164 = v140;
  v165 = 0;
  v166 = 0;
  return sub_24822D578(&v158, &qword_27EE8FB68, &qword_24839C590);
}

double sub_24822F7E0@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_2483832F0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DBWidgetHomeIntroView(0);
  v28 = *(v1 + *(v7 + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FB78, &qword_24839C598);
  sub_2483836C0();
  if (v24)
  {
    v8 = (v1 + *(v7 + 20));
    v9 = *v8;
    v10 = *(v8 + 8);
    v11 = v24;

    if ((v10 & 1) == 0)
    {
      v13 = sub_248383DB0();
      v14 = sub_248383450();
      sub_248382A40(v13, &dword_248146000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x277D84F90]);

      sub_2483832E0();
      swift_getAtKeyPath();

      v12 = (*(v4 + 8))(v6, v3);
      v9 = v28;
    }

    (*(*v9 + 120))(v12);

    sub_24829BA04();
    v16 = v15;
    v24 = v15;
    v25 = v17 & 1;
    v26 = v18;
    v27 = 0;
    sub_248232CE0();
    v19 = v16;
    sub_248383420();
  }

  else
  {
    v20 = sub_248383610();
    v25 = 0;
    v26 = 0;
    v24 = v20;
    v27 = 1;
    sub_248232CE0();
    sub_248383420();
  }

  result = *&v28;
  v22 = v29;
  v23 = v30;
  *a1 = v28;
  *(a1 + 16) = v22;
  *(a1 + 24) = v23;
  return result;
}

void sub_24822FA68(uint64_t a1)
{
  v2 = sub_248381170();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v32[2] = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v32 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = v32 - v9;
  v11 = sub_248383140();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v32 - v16;
  v33 = a1;
  sub_248231754((v32 - v16));
  (*(v12 + 104))(v14, *MEMORY[0x277CDFA88], v11);
  sub_248383130();
  v18 = *(v12 + 8);
  v18(v14, v11);
  v18(v17, v11);
  _s5DummyCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [objc_opt_self() bundleForClass_];
  v21 = sub_248383930();
  v22 = sub_248383930();
  v23 = [v20 URLForResource:v21 withExtension:v22];

  if (v23)
  {

    sub_248381120();

    sub_24814FB28(0, &qword_27EE8FB70, 0x277CD9F28);
    (*(v3 + 16))(v7, v10, v2);
    v24 = sub_248383960();
    v26 = sub_248230048(v7, v24, v25, 0);
    v27 = v26;
    v28 = (v33 + *(type metadata accessor for DBWidgetHomeIntroView(0) + 28));
    v30 = v28[1];
    v35 = *v28;
    v29 = v35;
    v36 = v30;
    v34 = v26;

    v31 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FB78, &qword_24839C598);
    sub_2483836D0();

    (*(v3 + 8))(v10, v2);
  }

  else
  {
    __break(1u);
  }
}

id sub_248230048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = sub_2483810F0();
  v7 = sub_248383930();

  if (a4)
  {
    v8 = sub_248383880();
  }

  else
  {
    v8 = 0;
  }

  v17[0] = 0;
  v9 = [swift_getObjCClassFromMetadata() packageWithContentsOfURL:v6 type:v7 options:v8 error:v17];

  v10 = v17[0];
  if (v9)
  {
    v11 = sub_248381170();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a1, v11);
  }

  else
  {
    v14 = v17[0];
    sub_2483810C0();

    swift_willThrow();
    v15 = sub_248381170();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  return v9;
}

uint64_t sub_248230210@<X0>(uint64_t a8@<X8>)
{
  _s5DummyCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = objc_opt_self();

  v11 = [v10 bundleForClass_];
  result = sub_248383500();
  *a8 = result;
  *(a8 + 8) = v13;
  *(a8 + 16) = v14 & 1;
  *(a8 + 24) = v15;
  return result;
}

uint64_t sub_248230310(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v15 = 0;
  sub_2483836B0();
  v8 = v11;
  v9 = v12;
  v11 = a4;
  v12 = a1;
  v13 = v8;
  v14 = v9;
  MEMORY[0x24C1CAB60](&v11, a2, &type metadata for BalancedLinesWidthModifier, a3);
}

uint64_t sub_2482303B4(uint64_t a1)
{
  v2 = sub_248383440();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for DBWidgetHomeIntroView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  MEMORY[0x24C1CAD50](0.3436, 1.0, 0.0);
  v13 = a1;
  sub_248232424(a1, &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  sub_248232584(&v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9);
  sub_248383430();
  sub_248383110();

  return (*(v3 + 8))(v5, v2);
}

double sub_2482305B0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F920, &qword_24839C0B8);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for DBWidgetHomeIntroView(0);
  v11 = a5 + v10[5];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  v12 = a5 + v10[6];
  sub_2483836B0();
  *v12 = v17;
  *(v12 + 1) = *(&v17 + 1);
  v13 = v10[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F928, &qword_24839C0E8);
  sub_2483836B0();
  result = *&v17;
  *(a5 + v13) = v17;
  v15 = (a5 + v10[8]);
  *v15 = a1;
  v15[1] = a2;
  v16 = (a5 + v10[9]);
  *v16 = a3;
  v16[1] = a4;
  return result;
}

uint64_t sub_248230748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v48 = a1;
  v49 = a2;
  v51 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F930, &qword_24839C0F8);
  MEMORY[0x28223BE20](v9);
  v11 = v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F938, &qword_24839C100);
  MEMORY[0x28223BE20](v12);
  v14 = v46 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F940, &qword_24839C108);
  MEMORY[0x28223BE20](v15);
  v17 = v46 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F948, &qword_24839C110);
  MEMORY[0x28223BE20](v18);
  v20 = v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v47 = v46 - v22;
  *&v53 = a6;
  v50 = a3;
  *(&v53 + 1) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F950, &qword_24839C118);
  sub_2483836C0();
  if (v52 <= 0.0)
  {
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F958, &qword_24839C120);
    (*(*(v40 - 8) + 16))(v11, v48, v40);
    *&v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F960, &qword_24839C128) + 36)] = 1;
    v41 = swift_allocObject();
    *(v41 + 16) = a5;
    *(v41 + 24) = v49;
    *(v41 + 32) = a6;
    *(v41 + 40) = v50;

    v42 = sub_248383760();
    v43 = &v11[*(v9 + 36)];
    *v43 = sub_248230F18;
    v43[1] = v41;
    v43[2] = v42;
    v43[3] = v44;
    sub_248232C78(v11, v14, &qword_27EE8F930, &qword_24839C0F8);
    swift_storeEnumTagMultiPayload();
    sub_248230F2C();
    sub_248231298();
    sub_248383420();
    v37 = v11;
    v38 = &qword_27EE8F930;
    v39 = &qword_24839C0F8;
  }

  else
  {
    v46[1] = v12;
    KeyPath = swift_getKeyPath();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F958, &qword_24839C120);
    (*(*(v24 - 8) + 16))(v17, v48, v24);
    v25 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F9A0, &qword_24839C140) + 36)];
    *v25 = KeyPath;
    v25[8] = 1;
    v26 = swift_getKeyPath();
    v27 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F990, &qword_24839C138) + 36)];
    v28 = v49;
    *v27 = v26;
    *(v27 + 1) = v28;
    v27[16] = 0;
    *&v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F980, &qword_24839C130) + 36)] = 256;
    v29 = &v17[*(v15 + 36)];
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F9D8, &qword_24839C158) + 28);
    v31 = *MEMORY[0x277CE0B28];
    v32 = sub_2483834F0();
    (*(*(v32 - 8) + 104))(v29 + v30, v31, v32);
    *v29 = swift_getKeyPath();
    *&v53 = a6;
    v33 = v50;
    *(&v53 + 1) = v50;
    sub_2483836C0();
    if (v52 > 0.0)
    {
      *&v53 = a6;
      *(&v53 + 1) = v33;
      sub_2483836C0();
    }

    sub_248383760();
    sub_248383090();
    sub_248231B84(v17, v20, &qword_27EE8F940, &qword_24839C108);
    v34 = &v20[*(v18 + 36)];
    v35 = v54;
    *v34 = v53;
    *(v34 + 1) = v35;
    *(v34 + 2) = v55;
    v36 = v47;
    sub_248231B84(v20, v47, &qword_27EE8F948, &qword_24839C110);
    sub_248232C78(v36, v14, &qword_27EE8F948, &qword_24839C110);
    swift_storeEnumTagMultiPayload();
    sub_248230F2C();
    sub_248231298();
    sub_248383420();
    v37 = v36;
    v38 = &qword_27EE8F948;
    v39 = &qword_24839C110;
  }

  return sub_24822D578(v37, v38, v39);
}

uint64_t sub_248230D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v12 = sub_2483830F0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_248383610();
  (*(v13 + 16))(&v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
  v16 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a2;
  *(v17 + 32) = a6;
  *(v17 + 40) = a3;
  (*(v13 + 32))(v17 + v16, &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  *a4 = v15;
  a4[1] = sub_2482324E4;
  a4[2] = v17;
  a4[3] = 0;
  a4[4] = 0;
}

unint64_t sub_248230F2C()
{
  result = qword_27EE8F968;
  if (!qword_27EE8F968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE8F948, &qword_24839C110);
    sub_248230FB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE8F968);
  }

  return result;
}

unint64_t sub_248230FB8()
{
  result = qword_27EE8F970;
  if (!qword_27EE8F970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE8F940, &qword_24839C108);
    sub_248231070();
    sub_24822D648(&qword_27EE8F9D0, &qword_27EE8F9D8, &qword_24839C158, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE8F970);
  }

  return result;
}

unint64_t sub_248231070()
{
  result = qword_27EE8F978;
  if (!qword_27EE8F978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE8F980, &qword_24839C130);
    sub_2482310FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE8F978);
  }

  return result;
}

unint64_t sub_2482310FC()
{
  result = qword_27EE8F988;
  if (!qword_27EE8F988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE8F990, &qword_24839C138);
    sub_2482311B4();
    sub_24822D648(&qword_27EE8F9C0, &qword_27EE8F9C8, &qword_24839C150, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE8F988);
  }

  return result;
}

unint64_t sub_2482311B4()
{
  result = qword_27EE8F998;
  if (!qword_27EE8F998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE8F9A0, &qword_24839C140);
    sub_24822D648(&qword_27EE8F9A8, &qword_27EE8F958, &qword_24839C120, MEMORY[0x277CE04B0]);
    sub_24822D648(&qword_27EE8F9B0, &qword_27EE8F9B8, &qword_24839C148, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE8F998);
  }

  return result;
}

unint64_t sub_248231298()
{
  result = qword_27EE8F9E0;
  if (!qword_27EE8F9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE8F930, &qword_24839C0F8);
    sub_248231350();
    sub_24822D648(&qword_27EE8F9F0, &qword_27EE8F9F8, &qword_24839C160, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE8F9E0);
  }

  return result;
}

unint64_t sub_248231350()
{
  result = qword_27EE8F9E8;
  if (!qword_27EE8F9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE8F960, &qword_24839C128);
    sub_24822D648(&qword_27EE8F9A8, &qword_27EE8F958, &qword_24839C120, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE8F9E8);
  }

  return result;
}

uint64_t sub_248231494@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_248383760();
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FA88, &qword_24839C4C8);
  a2[3] = v6;
  a2[4] = sub_2482322DC();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  *boxed_opaque_existential_1 = v3;
  boxed_opaque_existential_1[1] = v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FAB8, &qword_24839C4E0);
  sub_248231564((boxed_opaque_existential_1 + *(v8 + 44)));
  KeyPath = swift_getKeyPath();
  type metadata accessor for TimelinePlaybackController(0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  result = sub_248381420();
  v12 = (boxed_opaque_existential_1 + *(v6 + 36));
  *v12 = KeyPath;
  v12[1] = v10;
  return result;
}

uint64_t sub_248231564@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DBWidgetHomeIntroView(0);
  v3 = (v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v18 - v7);
  v9 = sub_2483835A0();
  *v8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F920, &qword_24839C0B8);
  swift_storeEnumTagMultiPayload();
  v10 = v8 + v3[7];
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  v11 = v8 + v3[8];
  LOBYTE(v19) = 1;
  sub_2483836B0();
  v12 = *(&v20 + 1);
  *v11 = v20;
  *(v11 + 1) = v12;
  v13 = v3[9];
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F928, &qword_24839C0E8);
  sub_2483836B0();
  *(v8 + v13) = v20;
  v14 = (v8 + v3[10]);
  *v14 = nullsub_1;
  v14[1] = 0;
  v15 = (v8 + v3[11]);
  *v15 = nullsub_1;
  v15[1] = 0;
  sub_248232424(v8, v5);
  *a1 = v9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FAC0, &qword_24839C4E8);
  sub_248232424(v5, a1 + *(v16 + 48));

  sub_248232488(v8);
  sub_248232488(v5);
}

uint64_t sub_248231754@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_2483832F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F920, &qword_24839C0B8);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  sub_248232C78(v2, &v15 - v9, &qword_27EE8F920, &qword_24839C0B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_248383140();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_248383DB0();
    v14 = sub_248383450();
    sub_248382A40(v13, &dword_248146000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x277D84F90]);

    sub_2483832E0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_248231954@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2483832A0();
  *a1 = result;
  return result;
}

uint64_t sub_2482319AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_248383280();
  *a1 = result;
  return result;
}

uint64_t sub_248231A00@<X0>(uint64_t a1@<X8>)
{
  result = sub_2483832C0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_248231AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t sub_248231B84(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_248231C2C(uint64_t a1)
{
  result = sub_248381430();
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

void sub_248231D00(uint64_t a1)
{
  sub_248231E04(319, &qword_27EE8FA08, MEMORY[0x277CDFAA0]);
  if (v1 <= 0x3F)
  {
    sub_248231E04(319, &qword_27EE8FA10, type metadata accessor for TimelinePlaybackController);
    if (v2 <= 0x3F)
    {
      sub_248231E58();
      if (v3 <= 0x3F)
      {
        sub_248231EA8(319);
        if (v4 <= 0x3F)
        {
          sub_248231F0C();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_248231E04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_248383050();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_248231E58()
{
  if (!qword_27EE8FA18)
  {
    v0 = sub_2483836F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE8FA18);
    }
  }
}

void sub_248231EA8(uint64_t a1)
{
  if (!qword_27EE8FA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE8F928, &qword_24839C0E8);
    v1 = sub_2483836F0();
    if (!v2)
    {
      atomic_store(v1, &qword_27EE8FA20);
    }
  }
}

unint64_t sub_248231F0C()
{
  result = qword_27EE8FA28;
  if (!qword_27EE8FA28)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27EE8FA28);
  }

  return result;
}

uint64_t sub_248231F5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_248231FB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_24823202C()
{
  result = qword_27EE8FA30;
  if (!qword_27EE8FA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE8FA38, &qword_24839C4A0);
    sub_2482320B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE8FA30);
  }

  return result;
}

unint64_t sub_2482320B8()
{
  result = qword_27EE8FA40;
  if (!qword_27EE8FA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE8FA48, &qword_24839C4A8);
    sub_248232144();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE8FA40);
  }

  return result;
}

unint64_t sub_248232144()
{
  result = qword_27EE8FA50;
  if (!qword_27EE8FA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE8FA58, &qword_24839C4B0);
    sub_24822D648(&qword_27EE8FA60, &qword_27EE8FA68, &qword_24839C4B8, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE8FA50);
  }

  return result;
}

unint64_t sub_2482321FC()
{
  result = qword_27EE8FA70;
  if (!qword_27EE8FA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE8FA78, &qword_24839C4C0);
    sub_248230F2C();
    sub_248231298();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE8FA70);
  }

  return result;
}

unint64_t sub_248232288()
{
  result = qword_27EE8FA80;
  if (!qword_27EE8FA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE8FA80);
  }

  return result;
}

unint64_t sub_2482322DC()
{
  result = qword_27EE8FA90;
  if (!qword_27EE8FA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE8FA88, &qword_24839C4C8);
    sub_24822D648(&qword_27EE8FA98, &qword_27EE8FAA0, &qword_24839C4D0, MEMORY[0x277CE11A8]);
    sub_24822D648(&qword_27EE8FAA8, &qword_27EE8FAB0, &qword_24839C4D8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE8FA90);
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

uint64_t sub_248232424(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DBWidgetHomeIntroView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_248232488(uint64_t a1)
{
  v2 = type metadata accessor for DBWidgetHomeIntroView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2482324E4()
{
  sub_2483830F0();
  sub_2483830E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F950, &qword_24839C118);
  return sub_2483836D0();
}

uint64_t sub_248232584(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DBWidgetHomeIntroView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2482325E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for DBWidgetHomeIntroView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24822E70C(a1, v6, a2);
}

uint64_t objectdestroy_33Tm()
{
  v1 = type metadata accessor for DBWidgetHomeIntroView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F920, &qword_24839C0B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_248383140();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_2482327F0()
{
  result = qword_27EE8FB20;
  if (!qword_27EE8FB20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE8FB18, &qword_24839C570);
    sub_24822D648(&qword_27EE8FB28, &qword_27EE8FB30, &qword_24839C578, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE8FB20);
  }

  return result;
}

double sub_2482328A8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_2482328D0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for DBWidgetHomeIntroView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

double sub_248232944@<D0>(uint64_t a1@<X8>)
{
  sub_248383320();
  _s5DummyCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_248383500();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_2483834E0();
  v11 = sub_248383480();

  KeyPath = swift_getKeyPath();
  sub_248383760();
  sub_248383090();
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v10;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = v11;
  *(a1 + 48) = v14;
  *(a1 + 64) = v15;
  result = *&v16;
  *(a1 + 80) = v16;
  return result;
}

unint64_t sub_248232AA0()
{
  result = qword_27EE8FB40;
  if (!qword_27EE8FB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE8FB38, &qword_24839C580);
    sub_2482327F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE8FB40);
  }

  return result;
}

uint64_t sub_248232B2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_248232B74()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for DBWidgetHomeIntroView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94490, &qword_24839C0F0);
  v3 = sub_2483836D0();
  return (*(v1 + *(v2 + 32)))(v3);
}

uint64_t sub_248232C78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_248232CE0()
{
  result = qword_27EE8FB80;
  if (!qword_27EE8FB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE8FB80);
  }

  return result;
}

id DBClimateWindow.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBClimateWindow();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_248232EC0()
{
  sub_248384780();
  MEMORY[0x24C1CBD70](0);
  return sub_2483847B0();
}

uint64_t sub_248232F04(uint64_t a1)
{
  sub_248384780();
  MEMORY[0x24C1CBD70](0);
  return sub_2483847B0();
}

unint64_t sub_248232F48()
{
  result = qword_27EE8FB88;
  if (!qword_27EE8FB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE8FB88);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CarPlayFeatureFlags(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CarPlayFeatureFlags(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

char *DBInterestingWindow.init(windowScene:frame:)(void *a1, double a2, double a3, double a4, double a5)
{
  v11 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *(v5 + OBJC_IVAR____TtC9DashBoard19DBInterestingWindow__interestingView) = v11;
  v12 = a1;
  v13 = sub_248279ADC(v12, 0, a2, a3, a4, a5);
  v14 = OBJC_IVAR____TtC9DashBoard19DBInterestingWindow__interestingView;
  v15 = *&v13[OBJC_IVAR____TtC9DashBoard19DBInterestingWindow__interestingView];
  v16 = objc_opt_self();
  v17 = v13;
  v18 = v15;
  v19 = [v16 blackColor];
  [v18 setBackgroundColor_];

  v20 = [*&v13[v14] layer];
  [v20 setDefinesDisplayRegionOfInterest_];

  [v17 addSubview_];
  return v17;
}

id DBInterestingWindow.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBInterestingWindow();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id DBInterestingWindow.frame.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBInterestingWindow();
  return objc_msgSendSuper2(&v2, sel_frame);
}

id DBInterestingWindow.frame.setter(double a1, double a2, double a3, double a4)
{
  v11.receiver = v4;
  v11.super_class = type metadata accessor for DBInterestingWindow();
  objc_msgSendSuper2(&v11, sel_setFrame_, a1, a2, a3, a4);
  v9 = *&v4[OBJC_IVAR____TtC9DashBoard19DBInterestingWindow__interestingView];
  [v4 bounds];
  [v9 setFrame_];
  return [v4 layoutIfNeeded];
}

void *DBAppLinkLeafIconDataSource.appLink.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard27DBAppLinkLeafIconDataSource_appLink;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DBAppLinkLeafIconDataSource.appLink.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard27DBAppLinkLeafIconDataSource_appLink;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t DBAppLinkLeafIconDataSource.icon(_:displayNameForLocation:)()
{
  v1 = OBJC_IVAR____TtC9DashBoard27DBAppLinkLeafIconDataSource_appLink;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    return 0;
  }

  v3 = [v2 title];
  v4 = sub_248383960();

  return v4;
}

id sub_248233730(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, void *a7, uint64_t (*a8)(double, double, double, double))
{
  v14 = a7;
  v15 = a1;
  v16 = a8(a2, a3, a4, a5);

  return v16;
}

id sub_24823380C(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t (*a10)(void *, uint64_t, double, double, double, double))
{
  v18 = a7;
  v19 = a8;
  v20 = a1;
  v21 = a10(a8, a9, a2, a3, a4, a5);

  return v21;
}

void *DBAppLinkLeafIconDataSource.__allocating_init(identifier:application:sessionConfiguration:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC9DashBoard27DBAppLinkLeafIconDataSource_appLink] = 0;
  return DBLeafIconDataSource.init(identifier:application:sessionConfiguration:)(a1, a2, a3, a4);
}

id DBAppLinkLeafIconDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id _s9DashBoard27DBAppLinkLeafIconDataSourceC4icon_17unmaskedImageWithSo7UIImageCSgSo06SBLeafF0C_So06SBIconK4InfoVtF_0(double a1, double a2, double a3, double a4)
{
  v8 = OBJC_IVAR____TtC9DashBoard27DBAppLinkLeafIconDataSource_appLink;
  swift_beginAccess();
  result = *(v4 + v8);
  if (result)
  {
    result = [result symbolNameAndColor];
    if (result)
    {
      v10 = result;
      v11 = [result name];
      if (v11)
      {
        v12 = v11;
        v13 = [objc_opt_self() traitCollectionWithUserInterfaceIdiom_];
        [v10 color];
        v14 = UIColorFromCAFImageColor();
        v15 = [objc_opt_self() crsui:v12 symbolImageNamed:v14 tintColor:v13 compatibleWithTraitCollection:?];

        if (v15)
        {
          v16 = sub_24833C0B8(a1, a2, a3);
          v17 = [objc_opt_self() defaultAppearance];
          v18 = SBHGetIconImageWithImageAppearance();

          return v18;
        }
      }

      else
      {
      }

      return 0;
    }
  }

  return result;
}

id _s9DashBoard27DBAppLinkLeafIconDataSourceC4icon_9imageWithSo7UIImageCSgSo06SBLeafF0C_So15SBIconImageInfoVtF_0(double a1, double a2, double a3, double a4)
{
  v8 = OBJC_IVAR____TtC9DashBoard27DBAppLinkLeafIconDataSource_appLink;
  swift_beginAccess();
  result = *(v4 + v8);
  if (result)
  {
    result = [result symbolNameAndColor];
    if (result)
    {
      v10 = result;
      v11 = [result name];
      if (v11)
      {
        v12 = v11;
        v13 = [objc_opt_self() traitCollectionWithUserInterfaceIdiom_];
        [v10 color];
        v14 = UIColorFromCAFImageColor();
        v15 = [objc_opt_self() crsui:v12 symbolImageNamed:v14 tintColor:v13 compatibleWithTraitCollection:?];

        if (v15)
        {
          v16 = sub_24833C0B8(a1, a2, a3);
          v17 = [objc_opt_self() defaultAppearance];
          v18 = SBHGetIconImageWithImageAppearance();

          return v18;
        }
      }

      else
      {
      }

      return 0;
    }
  }

  return result;
}

id sub_248233D94(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v11 = OBJC_IVAR____TtC9DashBoard27DBAppLinkLeafIconDataSource_appLink;
  swift_beginAccess();
  result = *(v6 + v11);
  if (result)
  {
    result = [result symbolNameAndColor];
    if (result)
    {
      v13 = result;
      v14 = [result name];
      if (v14)
      {
        v15 = v14;
        v16 = objc_opt_self();
        v17 = [v16 traitCollectionWithUserInterfaceIdiom_];
        [v13 color];
        v18 = UIColorFromCAFImageColor();
        v19 = [objc_opt_self() crsui:v15 symbolImageNamed:v18 tintColor:v17 compatibleWithTraitCollection:?];

        if (v19)
        {
          v20 = sub_24833C0B8(a3, a4, a5);
          v21 = [v16 sbh:a1 iconImageAppearanceFromTraitCollection:?];
          SBHIconServicesOptionsForImageOptions();
          v22 = SBHGetIconImageWithImageAppearance();

          return v22;
        }
      }

      else
      {
      }

      return 0;
    }
  }

  return result;
}

id sub_248233F70(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v11 = OBJC_IVAR____TtC9DashBoard27DBAppLinkLeafIconDataSource_appLink;
  swift_beginAccess();
  result = *(v6 + v11);
  if (result)
  {
    result = [result symbolNameAndColor];
    if (result)
    {
      v13 = result;
      v14 = [result name];
      if (v14)
      {
        v15 = v14;
        v16 = objc_opt_self();
        v17 = [v16 traitCollectionWithUserInterfaceIdiom_];
        [v13 color];
        v18 = UIColorFromCAFImageColor();
        v19 = [objc_opt_self() crsui:v15 symbolImageNamed:v18 tintColor:v17 compatibleWithTraitCollection:?];

        if (v19)
        {
          v20 = sub_24833C0B8(a3, a4, a5);
          v21 = [v16 sbh:a1 iconImageAppearanceFromTraitCollection:?];
          SBHIconServicesOptionsForImageOptions();
          v22 = SBHGetIconLayerWithImageAppearance();

          return v22;
        }
      }

      else
      {
      }

      return 0;
    }
  }

  return result;
}

uint64_t DirectionalPress.hashValue.getter(unsigned __int8 a1)
{
  sub_248384780();
  MEMORY[0x24C1CBD70](a1);
  return sub_2483847B0();
}

uint64_t sub_248234204()
{
  v1 = *v0;
  sub_248384780();
  MEMORY[0x24C1CBD70](v1);
  return sub_2483847B0();
}

uint64_t sub_248234278(uint64_t a1)
{
  v2 = *v1;
  sub_248384780();
  MEMORY[0x24C1CBD70](v2);
  return sub_2483847B0();
}

uint64_t sub_248234318(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC9DashBoard15DBLayoutControl_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_248234384(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9DashBoard15DBLayoutControl_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_248234424;
}

void sub_248234424(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void sub_2482344BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2482346E0(a1);
  if (!v4)
  {
    return;
  }

  v8 = v4;
  v5 = [v4 type];
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      (*((*MEMORY[0x277D85000] & *v2) + 0xA8))();
      goto LABEL_15;
    }

    if (v5 == 3)
    {
      (*((*MEMORY[0x277D85000] & *v2) + 0xB0))();
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  if (!v5)
  {
    v6 = *MEMORY[0x277D85000] & *v2;
    if (*(v2 + OBJC_IVAR____TtC9DashBoard15DBLayoutControl_reversesDPadVerticalScrolling) != 1)
    {
      goto LABEL_6;
    }

LABEL_13:
    (*(v6 + 160))();
    goto LABEL_15;
  }

  if (v5 != 1)
  {
LABEL_10:
    sub_24814FB28(0, &unk_27EE92A80, 0x277D758B8);
    sub_2482347FC();
    v7 = sub_248383C70();
    v9.receiver = v2;
    v9.super_class = type metadata accessor for DBLayoutControl();
    objc_msgSendSuper2(&v9, sel_pressesBegan_withEvent_, v7, a2);

    return;
  }

  v6 = *MEMORY[0x277D85000] & *v2;
  if (*(v2 + OBJC_IVAR____TtC9DashBoard15DBLayoutControl_reversesDPadVerticalScrolling) != 1)
  {
    goto LABEL_13;
  }

LABEL_6:
  (*(v6 + 152))();
LABEL_15:
}

uint64_t sub_2482346E0(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_248384310();
    v5 = v4;
    v6 = sub_2483843B0();
    v8 = v7;
    v9 = MEMORY[0x24C1CB910](v3, v5, v6, v7);
    sub_248235F68(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_248235F68(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_2483842E0();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_248235F74(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_248235F68(v3, v5, v2 != 0);
  return v12;
}

unint64_t sub_2482347FC()
{
  result = qword_27EE8FBB0;
  if (!qword_27EE8FBB0)
  {
    sub_24814FB28(255, &unk_27EE92A80, 0x277D758B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE8FBB0);
  }

  return result;
}

char *sub_24823492C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v7 = objc_allocWithZone(v3);
  return sub_248234978(a1, a2, v4);
}

char *sub_248234978(uint64_t a1, uint64_t a2, char a3)
{
  *&v3[OBJC_IVAR____TtC9DashBoard15DBLayoutControl_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC9DashBoard15DBLayoutControl_reversesDPadVerticalScrolling] = a3;
  v10.receiver = v3;
  v10.super_class = type metadata accessor for DBLayoutControl();
  v6 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v7 = &v6[OBJC_IVAR____TtC9DashBoard15DBLayoutControl_delegate];
  swift_beginAccess();
  *(v7 + 1) = a2;
  swift_unknownObjectWeakAssign();
  v8 = v6;
  sub_248235A00(101, sel_homeButtonHandler);
  sub_248235A0C(4, sel_downButtonHandler);
  sub_248235A0C(8, sel_upButtonHandler);
  sub_248235A0C(2, sel_leftButtonHandler);
  sub_248235A0C(1, sel_rightButtonHandler);
  sub_248235A00(4, sel_selectButtonHandler);
  sub_248235A00(416, sel_rightButtonHandler);
  sub_248235B5C(4, sel_selectButtonLongPressHandler);

  swift_unknownObjectRelease();
  return v8;
}

id _s9DashBoard39DBInstrumentClusterLayoutViewControllerC5coderACSgSo7NSCoderC_tcfC_0(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_248234B14()
{
  *(v0 + OBJC_IVAR____TtC9DashBoard15DBLayoutControl_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_248384580();
  __break(1u);
}

id sub_248234C0C()
{
  v1 = sub_248382A70();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248383EA0();
  v5 = *sub_24827BA50();
  sub_248382A60();
  sub_248382A50();

  (*(v2 + 8))(v4, v1);
  result = [v0 isFocused];
  if (result)
  {
    result = (*((*MEMORY[0x277D85000] & *v0) + 0x60))();
    if (result)
    {
      v8 = v7;
      ObjectType = swift_getObjectType();
      (*(v8 + 16))(ObjectType, v8);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_248234DD8()
{
  v1 = sub_248382A70();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248383EA0();
  v5 = *sub_24827BA50();
  sub_248382A60();
  sub_248382A50();

  (*(v2 + 8))(v4, v1);
  result = [v0 isFocused];
  if (result)
  {
    result = (*((*MEMORY[0x277D85000] & *v0) + 0x60))();
    if (result)
    {
      v8 = v7;
      ObjectType = swift_getObjectType();
      (*(v8 + 32))(ObjectType, v8);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_248234FA4()
{
  v1 = sub_248382A70();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248383EA0();
  v5 = *sub_24827BA50();
  sub_248382A60();
  sub_248382A50();

  (*(v2 + 8))(v4, v1);
  result = [v0 isFocused];
  if (result)
  {
    result = (*((*MEMORY[0x277D85000] & *v0) + 0x60))();
    if (result)
    {
      v8 = v7;
      ObjectType = swift_getObjectType();
      (*(v8 + 24))(ObjectType, v8);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_2482351FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_248382A70();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248383EA0();
  v9 = *sub_24827BA50();
  sub_248382A60();
  sub_248382A50();

  (*(v6 + 8))(v8, v5);
  return (*((*MEMORY[0x277D85000] & *v3) + 0xB8))(a3);
}

void sub_24823536C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_248382A70();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1;
  sub_248383EA0();
  v12 = *sub_24827BA50();
  sub_248382A60();
  sub_248382A50();

  (*(v8 + 8))(v10, v7);
  (*((*MEMORY[0x277D85000] & *v11) + 0xB8))(a5);
}

BOOL sub_2482354DC(void *a1)
{
  v1 = [a1 previouslyFocusedView];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for DBLayoutControl();
  v3 = swift_dynamicCastClass() != 0;

  return v3;
}

id sub_2482355A0(void *a1)
{
  v3 = sub_248382A70();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248383EA0();
  v7 = *sub_24827BA50();
  sub_248382A60();
  sub_248382A50();

  (*(v4 + 8))(v6, v3);
  result = [v1 isFocused];
  if (result)
  {
    if (a1)
    {
      if ([a1 subtype] == 201)
      {
        return (*((*MEMORY[0x277D85000] & *v1) + 0xB8))(0);
      }

      else
      {
        result = [a1 subtype];
        if (result == 200)
        {
          return (*((*MEMORY[0x277D85000] & *v1) + 0xB8))(1);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v9 = type metadata accessor for DBLayoutControl();
    v10.receiver = v1;
    v10.super_class = v9;
    return objc_msgSendSuper2(&v10, sel__wheelChangedWithEvent_, a1);
  }

  return result;
}

uint64_t sub_248235804(uint64_t a1)
{
  v3 = sub_248382A90();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v1 isFocused])
  {
    result = (*((*MEMORY[0x277D85000] & *v1) + 0x60))();
    if (result)
    {
      v10 = v9;
      ObjectType = swift_getObjectType();
      (*(v10 + 8))(a1, ObjectType, v10);

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    v12 = sub_24827C568();
    (*(v4 + 16))(v7, v12, v3);
    v13 = sub_248382A80();
    v14 = sub_248383DC0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_248146000, v13, v14, "Not focused. Unable to forward directional button to delegate.", v15, 2u);
      MEMORY[0x24C1CD5F0](v15, -1, -1);
    }

    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

void sub_248235A0C(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D75AE0]) initWithTarget:v2 action:a2];
  [v4 setDirection_];
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0, &unk_24839DA80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24839C700;
  *(v6 + 32) = v5;
  sub_24814FB28(0, &qword_27EE90740, 0x277CCABB0);
  v7 = v4;
  v9 = v5;
  v8 = sub_248383B00();

  [v7 setAllowedTouchTypes_];

  [v2 addGestureRecognizer_];
}

void sub_248235B68(uint64_t a1, uint64_t a2, Class *a3)
{
  v5 = [objc_allocWithZone(*a3) initWithTarget:v3 action:a2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0, &unk_24839DA80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24839C700;
  v7 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v9 = v5;
  *(v6 + 32) = [v7 initWithInteger_];
  sub_24814FB28(0, &qword_27EE90740, 0x277CCABB0);
  v8 = sub_248383B00();

  [v9 setAllowedPressTypes_];

  [v3 addGestureRecognizer_];
}

id sub_248235C9C(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id sub_248235D60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBLayoutControl();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_248235DA8()
{
  result = qword_27EE8FBB8;
  if (!qword_27EE8FBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE8FBB8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DirectionalPress(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DirectionalPress(uint64_t result, unsigned int a2, unsigned int a3)
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

double sub_248235F68(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_248235F74(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x24C1CB960](a1, a2, v7);
      sub_24814FB28(0, &unk_27EE92A80, 0x277D758B8);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_24814FB28(0, &unk_27EE92A80, 0x277D758B8);
    if (sub_248384340() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_248384350();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_248384020();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_248384030();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

id DBMainWindow.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBMainWindow();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2482362FC()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FBC0, &qword_24839C808);
    sub_24822D648(&qword_27EE8FBE8, &qword_27EE8FBC0, &qword_24839C808, MEMORY[0x277CBCE48]);
    v1 = sub_248382F10();
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t sub_2482363C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90410, &qword_24839C800);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  v3 = sub_248381C60();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FBC0, &qword_24839C808);
  swift_allocObject();
  return sub_248382E20();
}

void *sub_2482364C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_248236F90(a1, a2, a3, a4);

  return v8;
}

void *sub_248236550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_248236F90(a1, a2, a3, a4);

  return v4;
}

uint64_t sub_2482365B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, char *a5@<X8>)
{
  v37 = a4;
  v39 = a3;
  v44 = a2;
  v46 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FC68, &qword_24839C920);
  MEMORY[0x28223BE20](v6 - 8);
  v42 = &v35 - v7;
  v8 = sub_248381B80();
  v40 = *(v8 - 8);
  v41 = v8;
  MEMORY[0x28223BE20](v8);
  v36 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FC48, &qword_24839E780);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v35 - v11;
  v13 = sub_248381D50();
  v43 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v38 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FC28, &qword_24839C8F0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v35 - v16;
  v18 = sub_2483818B0();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_248381C60();
  v23 = *(v22 - 8);
  v45 = *(v23 + 56);
  v45(a5, 1, 1, v22);
  sub_248232C78(v46, v17, &qword_27EE8FC28, &qword_24839C8F0);
  if ((*(v19 + 48))(v17, 1, v18) != 1)
  {
    sub_24822D578(a5, &qword_27EE90410, &qword_24839C800);
    v30 = *(v19 + 32);
    v30(v21, v17, v18);
    v30(a5, v21, v18);
    v29 = MEMORY[0x277CF8C48];
    goto LABEL_10;
  }

  sub_24822D578(v17, &qword_27EE8FC28, &qword_24839C8F0);
  sub_248232C78(v44, v12, &qword_27EE8FC48, &qword_24839E780);
  v24 = v43;
  if ((*(v43 + 48))(v12, 1, v13) != 1)
  {
    sub_24822D578(a5, &qword_27EE90410, &qword_24839C800);
    v31 = *(v24 + 32);
    v32 = v38;
    v31(v38, v12, v13);
    v31(a5, v32, v13);
    v29 = MEMORY[0x277CF8C30];
    goto LABEL_10;
  }

  sub_24822D578(v12, &qword_27EE8FC48, &qword_24839E780);
  v25 = v42;
  sub_248232C78(v39, v42, &qword_27EE8FC68, &qword_24839C920);
  v27 = v40;
  v26 = v41;
  if ((*(v40 + 48))(v25, 1, v41) != 1)
  {
    sub_24822D578(a5, &qword_27EE90410, &qword_24839C800);
    v33 = *(v27 + 32);
    v34 = v36;
    v33(v36, v25, v26);
    v33(a5, v34, v26);
    v29 = MEMORY[0x277CF8C40];
    goto LABEL_10;
  }

  result = sub_24822D578(v25, &qword_27EE8FC68, &qword_24839C920);
  if (v37 != 2 && (v37 & 1) != 0)
  {
    sub_24822D578(a5, &qword_27EE90410, &qword_24839C800);
    v29 = MEMORY[0x277CF8C38];
LABEL_10:
    (*(v23 + 104))(a5, *v29, v22);
    return (v45)(a5, 0, 1, v22);
  }

  return result;
}

uint64_t sub_248236B60@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FCC0, qword_24839C938);
  v5 = *(a1 + v4[20]);
  v6 = a1 + v4[12];
  v7 = a1 + v4[16];

  return sub_2482365B8(a1, v6, v7, v5, a2);
}

void *sub_248236BC8()
{

  return v0;
}

uint64_t sub_248236C18()
{
  sub_248236BC8();

  return swift_deallocClassInstance();
}

uint64_t sub_248236C4C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FBC8, qword_24839C810);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v6 - v2;
  v6[1] = sub_2482362FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE903D0, &qword_24839D5B0);
  sub_24822D648(&qword_27EE8FBD0, &unk_27EE903D0, &qword_24839D5B0, MEMORY[0x277CBCD90]);
  sub_2482379D8();
  sub_248382FD0();

  sub_24822D648(&qword_27EE8FBE0, &qword_27EE8FBC8, qword_24839C810, MEMORY[0x277CBCBE0]);
  v4 = sub_248382F10();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_248236DEC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FBC8, qword_24839C810);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v6 - v2;
  v6[1] = sub_2482362FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE903D0, &qword_24839D5B0);
  sub_24822D648(&qword_27EE8FBD0, &unk_27EE903D0, &qword_24839D5B0, MEMORY[0x277CBCD90]);
  sub_2482379D8();
  sub_248382FD0();

  sub_24822D648(&qword_27EE8FBE0, &qword_27EE8FBC8, qword_24839C810, MEMORY[0x277CBCBE0]);
  v4 = sub_248382F10();
  (*(v1 + 8))(v3, v0);
  return v4;
}

void *sub_248236F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FBF0, &qword_24839C8B8);
  MEMORY[0x28223BE20](v53);
  v45 = v41 - v10;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FBF8, &qword_24839C8C0);
  MEMORY[0x28223BE20](v52);
  v41[1] = v41 - v11;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FC00, &qword_24839C8C8);
  MEMORY[0x28223BE20](v49);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FC08, &qword_24839C8D0);
  MEMORY[0x28223BE20](v46);
  v41[0] = v41 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FC10, &qword_24839C8D8);
  v14 = *(v13 - 8);
  v47 = v13;
  v48 = v14;
  MEMORY[0x28223BE20](v13);
  v43 = v41 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FC18, &qword_24839C8E0);
  v17 = *(v16 - 8);
  v50 = v16;
  v51 = v17;
  MEMORY[0x28223BE20](v16);
  v44 = v41 - v18;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90410, &qword_24839C800);
  MEMORY[0x28223BE20](v42);
  v20 = v41 - v19;
  v5[2] = 0;
  v21 = sub_248381C60();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FBC0, &qword_24839C808);
  swift_allocObject();
  v5[3] = sub_248382E20();
  v5[4] = MEMORY[0x277D84FA0];
  v5[5] = a1;
  v5[6] = a2;
  v5[7] = a3;
  v5[8] = a4;

  v55 = sub_24833E214();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FC20, &qword_24839C8E8);
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FC28, &qword_24839C8F0) - 8);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  v54 = xmmword_24839C7F0;
  *(v24 + 16) = xmmword_24839C7F0;
  v25 = sub_2483818B0();
  (*(*(v25 - 8) + 56))(v24 + v23, 1, 1, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FC30, &qword_24839C8F8);
  v26 = MEMORY[0x277CBCD90];
  sub_24822D648(&qword_27EE8FC38, &qword_27EE8FC30, &qword_24839C8F8, MEMORY[0x277CBCD90]);
  sub_248382F90();

  v55 = sub_24828F56C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FC40, &unk_24839C900);
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FC48, &qword_24839E780) - 8);
  v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v54;
  v30 = sub_248381D50();
  (*(*(v30 - 8) + 56))(v29 + v28, 1, 1, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FC50, &qword_24839C910);
  sub_24822D648(&qword_27EE8FC58, &qword_27EE8FC50, &qword_24839C910, v26);
  sub_248382F90();

  v55 = sub_248382AF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FC60, &qword_24839C918);
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FC68, &qword_24839C920) - 8);
  v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v54;
  v34 = sub_248381B80();
  (*(*(v34 - 8) + 56))(v33 + v32, 1, 1, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FC70, &qword_24839C928);
  sub_24822D648(&qword_27EE8FC78, &qword_27EE8FC70, &qword_24839C928, v26);
  sub_248382F90();

  v55 = sub_2482FE1B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FC80, &qword_24839C930);
  sub_24822D648(&qword_27EE8FC88, &qword_27EE8FC80, &qword_24839C930, v26);
  sub_248382F90();

  v35 = MEMORY[0x277CBCB40];
  sub_24822D648(&qword_27EE8FC90, &qword_27EE8FC08, &qword_24839C8D0, MEMORY[0x277CBCB40]);
  sub_24822D648(&qword_27EE8FC98, &qword_27EE8FC00, &qword_24839C8C8, v35);
  sub_24822D648(&qword_27EE8FCA0, &qword_27EE8FBF8, &qword_24839C8C0, v35);
  sub_24822D648(&qword_27EE8FCA8, &qword_27EE8FBF0, &qword_24839C8B8, v35);
  v36 = v43;
  sub_248382D10();
  sub_24822D648(&qword_27EE8FCB0, &qword_27EE8FC10, &qword_24839C8D8, MEMORY[0x277CBCB00]);
  v37 = v44;
  v38 = v47;
  sub_248382F60();
  (*(v48 + 8))(v36, v38);
  swift_allocObject();
  swift_weakInit();
  sub_24822D648(&qword_27EE8FCB8, &qword_27EE8FC18, &qword_24839C8E0, MEMORY[0x277CBCC08]);
  v39 = v50;
  sub_248383000();

  (*(v51 + 8))(v37, v39);
  swift_beginAccess();
  sub_248382DB0();
  swift_endAccess();

  return v5;
}

unint64_t sub_2482379D8()
{
  result = qword_27EE8FBD8;
  if (!qword_27EE8FBD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE90410, &qword_24839C800);
    sub_248237A5C(v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE8FBD8);
  }

  return result;
}

unint64_t sub_248237A5C(__n128 a1)
{
  result = qword_27EE90430;
  if (!qword_27EE90430)
  {
    sub_248381C60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE90430);
  }

  return result;
}

uint64_t sub_248237AD8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_248382E10();
  }

  return result;
}

id DBAppLinkPunchthroughLauncher.__allocating_init(carSession:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  *&v4[OBJC_IVAR____TtC9DashBoard29DBAppLinkPunchthroughLauncher_carSession] = a1;
  sub_248382B80();
  swift_allocObject();
  v5 = a1;
  *&v4[OBJC_IVAR____TtC9DashBoard29DBAppLinkPunchthroughLauncher_requestContentManager] = sub_248382B70();
  v8.receiver = v4;
  v8.super_class = v2;
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

id DBAppLinkPunchthroughLauncher.init(carSession:)(void *a1)
{
  v2 = v1;
  *&v2[OBJC_IVAR____TtC9DashBoard29DBAppLinkPunchthroughLauncher_carSession] = a1;
  sub_248382B80();
  swift_allocObject();
  v4 = a1;
  *&v2[OBJC_IVAR____TtC9DashBoard29DBAppLinkPunchthroughLauncher_requestContentManager] = sub_248382B70();
  v7.receiver = v2;
  v7.super_class = type metadata accessor for DBAppLinkPunchthroughLauncher();
  v5 = objc_msgSendSuper2(&v7, sel_init);

  return v5;
}

void DBAppLinkPunchthroughLauncher.activatePunchthrough(appLink:)(void *a1)
{
  v2 = sub_248382A90();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v51 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v56 = &v50 - v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v50 - v8;
  v10 = sub_24827C764();
  v57 = v3;
  v11 = *(v3 + 16);
  v52 = v10;
  v53 = v11;
  v54 = v3 + 16;
  (v11)(v9);
  v12 = a1;
  v13 = sub_248382A80();
  v14 = sub_248383D90();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v58 = v16;
    *v15 = 136315138;
    v17 = [v12 contentURLAction];
    v50 = v2;
    v18 = v17;
    v19 = sub_248383960();
    v21 = v20;

    v22 = v19;
    v23 = v57;
    v24 = sub_24814A378(v22, v21, &v58);

    *(v15 + 4) = v24;
    v2 = v50;
    _os_log_impl(&dword_248146000, v13, v14, "AppLink will present result: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x24C1CD5F0](v16, -1, -1);
    MEMORY[0x24C1CD5F0](v15, -1, -1);

    v55 = *(v23 + 8);
  }

  else
  {

    v55 = *(v57 + 8);
  }

  v55(v9, v2);
  sub_248382B80();
  v25 = [v12 contentURLAction];
  v26 = sub_248383960();
  v28 = v27;

  v29 = MEMORY[0x24C1CA130](v26, v28);
  v31 = v30;

  if (v31)
  {
    v53(v56, v52, v2);

    v32 = sub_248382A80();
    v33 = sub_248383D80();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v58 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_24814A378(v29, v31, &v58);
      _os_log_impl(&dword_248146000, v32, v33, "Activating AppLink punchthrough %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x24C1CD5F0](v35, -1, -1);
      MEMORY[0x24C1CD5F0](v34, -1, -1);
    }

    v55(v56, v2);
    sub_248382B60();
  }

  else
  {
    v36 = v51;
    v53(v51, v52, v2);
    v37 = v12;
    v38 = sub_248382A80();
    v39 = sub_248383DA0();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v58 = v41;
      *v40 = 136315138;
      v42 = [v37 contentURLAction];
      v43 = v2;
      v44 = sub_248383960();
      v46 = v45;

      v47 = sub_24814A378(v44, v46, &v58);

      *(v40 + 4) = v47;
      _os_log_impl(&dword_248146000, v38, v39, "Failed extracting punchthrough inputStreamIdentifier from %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x24C1CD5F0](v41, -1, -1);
      MEMORY[0x24C1CD5F0](v40, -1, -1);

      v48 = v36;
      v49 = v43;
    }

    else
    {

      v48 = v36;
      v49 = v2;
    }

    v55(v48, v49);
  }
}

uint64_t sub_2482382C0(char a1)
{
  v2 = sub_248382A90();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24827C764();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_248382A80();
  v8 = sub_248383D90();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = a1 & 1;
    _os_log_impl(&dword_248146000, v7, v8, "AppLink presentation result: %{BOOL}d", v9, 8u);
    MEMORY[0x24C1CD5F0](v9, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

id DBAppLinkPunchthroughLauncher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DBAppLinkPunchthroughLauncher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBAppLinkPunchthroughLauncher();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id DBScreenshotFlashWindow.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBScreenshotFlashWindow();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *DBLeafIconDataSource.init(identifier:application:sessionConfiguration:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = &v4[OBJC_IVAR____TtC9DashBoard20DBLeafIconDataSource_cachedBadgeValue];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v4[OBJC_IVAR____TtC9DashBoard20DBLeafIconDataSource_identifier];
  *v7 = a1;
  *(v7 + 1) = a2;
  *&v4[OBJC_IVAR____TtC9DashBoard20DBLeafIconDataSource_application] = a3;
  *&v4[OBJC_IVAR____TtC9DashBoard20DBLeafIconDataSource_sessionConfiguration] = a4;
  v8 = a4;

  v9 = a3;
  v10 = sub_248383930();

  v11 = [objc_opt_self() storeForApplication_];

  *&v4[OBJC_IVAR____TtC9DashBoard20DBLeafIconDataSource_dataStore] = v11;
  *v6 = 0;
  *(v6 + 1) = 0;

  v16.receiver = v4;
  v16.super_class = type metadata accessor for DBLeafIconDataSource();
  v12 = objc_msgSendSuper2(&v16, sel_init);
  v13 = *((*MEMORY[0x277D85000] & *v12) + 0x98);
  v14 = v12;
  v13();

  return v14;
}

uint64_t DBLeafIconDataSource.__allocating_init(for:)(void *a1)
{
  v3 = [a1 bundleIdentifier];
  v4 = sub_248383960();
  v6 = v5;

  v7 = *(v1 + 144);

  return v7(v4, v6, a1, 0);
}

Swift::Void __swiftcall DBLeafIconDataSource.invalidateBadgeValue()()
{
  v1 = sub_248382A90();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v121 = &v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v116 = &v114 - v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v114 - v7;
  MEMORY[0x28223BE20](v9);
  v115 = &v114 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v114 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v114 - v15;
  v17 = sub_24827C40C();
  v18 = *(v2 + 16);
  v119 = v17;
  v120 = v2 + 16;
  v118 = v18;
  (v18)(v16);
  v19 = v0;
  v20 = sub_248382A80();
  v21 = sub_248383DC0();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = v1;
    v24 = v8;
    v25 = v2;
    v26 = swift_slowAlloc();
    *&v126 = v26;
    *v22 = 136446210;
    *(v22 + 4) = sub_24814A378(*&v19[OBJC_IVAR____TtC9DashBoard20DBLeafIconDataSource_identifier], *&v19[OBJC_IVAR____TtC9DashBoard20DBLeafIconDataSource_identifier + 8], &v126);
    _os_log_impl(&dword_248146000, v20, v21, "Badge value invalidated for: %{public}s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    v27 = v26;
    v2 = v25;
    v8 = v24;
    v1 = v23;
    MEMORY[0x24C1CD5F0](v27, -1, -1);
    MEMORY[0x24C1CD5F0](v22, -1, -1);
  }

  v28 = *(v2 + 8);
  v28(v16, v1);
  v29 = *&v19[OBJC_IVAR____TtC9DashBoard20DBLeafIconDataSource_dataStore];
  v30 = v19;
  v117 = v28;
  if (!v29)
  {
    v126 = 0u;
    v127 = 0u;
LABEL_13:
    v118(v13, v119, v1);
    v37 = v19;
    v38 = sub_248382A80();
    v39 = sub_248383DC0();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&v124 = v41;
      *v40 = 136446210;
      *(v40 + 4) = sub_24814A378(*&v37[OBJC_IVAR____TtC9DashBoard20DBLeafIconDataSource_identifier], *&v37[OBJC_IVAR____TtC9DashBoard20DBLeafIconDataSource_identifier + 8], &v124);
      _os_log_impl(&dword_248146000, v38, v39, "Badge for identifier: %{public}s is nil", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      v42 = v41;
      v30 = v19;
      MEMORY[0x24C1CD5F0](v42, -1, -1);
      MEMORY[0x24C1CD5F0](v40, -1, -1);
    }

    v28(v13, v1);
    v34 = 0;
    v36 = 0;
    goto LABEL_44;
  }

  v31 = sub_248383930();
  v32 = [v29 objectForKey_];

  if (v32)
  {
    sub_248384230();
    swift_unknownObjectRelease();
  }

  else
  {
    v124 = 0u;
    v125 = 0u;
  }

  v126 = v124;
  v127 = v125;
  if (!*(&v125 + 1))
  {
    goto LABEL_13;
  }

  v114 = v2;
  sub_24823A878(&v126, &v124);
  if (*(&v125 + 1))
  {
    if (swift_dynamicCast())
    {
      v33 = v122;
      if (v122 <= 0)
      {
        v73 = v115;
        v118(v115, v119, v1);
        v74 = v19;
        v75 = sub_248382A80();
        v76 = sub_248383DC0();

        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          *&v124 = v78;
          *v77 = 136446466;
          *(v77 + 4) = sub_24814A378(*&v74[OBJC_IVAR____TtC9DashBoard20DBLeafIconDataSource_identifier], *&v74[OBJC_IVAR____TtC9DashBoard20DBLeafIconDataSource_identifier + 8], &v124);
          *(v77 + 12) = 2050;
          *(v77 + 14) = v33;
          _os_log_impl(&dword_248146000, v75, v76, "Badge for identifier %{public}s is negative: %{public}ld", v77, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v78);
          MEMORY[0x24C1CD5F0](v78, -1, -1);
          MEMORY[0x24C1CD5F0](v77, -1, -1);
        }

        v117(v73, v1);
        v34 = 0;
        v36 = 0;
        v30 = v19;
      }

      else
      {
        *&v124 = v122;
        v34 = sub_248384650();
        v36 = v35;
      }

      goto LABEL_44;
    }
  }

  else
  {
    sub_2482397D4(&v124);
  }

  sub_24823A878(&v126, &v124);
  if (!*(&v125 + 1))
  {
    sub_2482397D4(&v124);
    goto LABEL_39;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_39:
    v54 = v116;
    v118(v116, v119, v1);
    sub_24823A878(&v126, &v124);
    v115 = v19;
    v55 = v19;
    v56 = sub_248382A80();
    v57 = sub_248383DC0();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v122 = v59;
      *v58 = 136446466;
      *(v58 + 4) = sub_24814A378(*&v55[OBJC_IVAR____TtC9DashBoard20DBLeafIconDataSource_identifier], *&v55[OBJC_IVAR____TtC9DashBoard20DBLeafIconDataSource_identifier + 8], &v122);
      *(v58 + 12) = 2082;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE941B0, &unk_24839C9C0);
      v60 = sub_2483841E0();
      v62 = v61;
      sub_2482397D4(&v124);
      v63 = sub_24814A378(v60, v62, &v122);

      *(v58 + 14) = v63;
      _os_log_impl(&dword_248146000, v56, v57, "Badge string for identifier: %{public}s is not a valid number: %{public}s", v58, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1CD5F0](v59, -1, -1);
      MEMORY[0x24C1CD5F0](v58, -1, -1);
    }

    else
    {

      sub_2482397D4(&v124);
    }

    v28(v54, v1);
    goto LABEL_43;
  }

  v34 = v122;
  v36 = v123;
  v43 = HIBYTE(v123) & 0xF;
  v44 = v122 & 0xFFFFFFFFFFFFLL;
  if ((v123 & 0x2000000000000000) != 0)
  {
    v45 = HIBYTE(v123) & 0xF;
  }

  else
  {
    v45 = v122 & 0xFFFFFFFFFFFFLL;
  }

  if (v45)
  {
    if ((v123 & 0x1000000000000000) == 0)
    {
      if ((v123 & 0x2000000000000000) != 0)
      {
        *&v124 = v122;
        *(&v124 + 1) = v123 & 0xFFFFFFFFFFFFFFLL;
        if (v122 == 43)
        {
          if (!v43)
          {
LABEL_104:
            __break(1u);
            return;
          }

          if (--v43)
          {
            v90 = 0;
            v91 = &v124 + 1;
            while (1)
            {
              v92 = *v91 - 48;
              if (v92 > 9)
              {
                break;
              }

              v93 = (v90 * 10) >> 64;
              v94 = 10 * v90;
              if (v93 != v94 >> 63)
              {
                break;
              }

              v53 = __OFADD__(v94, v92);
              v90 = v94 + v92;
              if (v53)
              {
                break;
              }

              ++v91;
              if (!--v43)
              {
                goto LABEL_93;
              }
            }
          }
        }

        else if (v122 == 45)
        {
          if (!v43)
          {
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
            goto LABEL_104;
          }

          if (--v43)
          {
            v79 = 0;
            v80 = &v124 + 1;
            while (1)
            {
              v81 = *v80 - 48;
              if (v81 > 9)
              {
                break;
              }

              v82 = (v79 * 10) >> 64;
              v83 = 10 * v79;
              if (v82 != v83 >> 63)
              {
                break;
              }

              v53 = __OFSUB__(v83, v81);
              v79 = v83 - v81;
              if (v53)
              {
                break;
              }

              ++v80;
              if (!--v43)
              {
                goto LABEL_93;
              }
            }
          }
        }

        else if (v43)
        {
          v99 = 0;
          v100 = &v124;
          while (1)
          {
            v101 = *v100 - 48;
            if (v101 > 9)
            {
              break;
            }

            v102 = (v99 * 10) >> 64;
            v103 = 10 * v99;
            if (v102 != v103 >> 63)
            {
              break;
            }

            v53 = __OFADD__(v103, v101);
            v99 = v103 + v101;
            if (v53)
            {
              break;
            }

            ++v100;
            if (!--v43)
            {
              goto LABEL_93;
            }
          }
        }
      }

      else
      {
        if ((v122 & 0x1000000000000000) != 0)
        {
          v43 = (v123 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v113 = v122;
          v43 = sub_248384490();
          v34 = v113;
        }

        v46 = *v43;
        if (v46 == 43)
        {
          v84 = v44 - 1;
          if (v44 >= 1)
          {
            if (v44 != 1)
            {
              if (!v43)
              {
                goto LABEL_93;
              }

              v85 = 0;
              v86 = (v43 + 1);
              while (1)
              {
                v87 = *v86 - 48;
                if (v87 > 9)
                {
                  break;
                }

                v88 = (v85 * 10) >> 64;
                v89 = 10 * v85;
                if (v88 != v89 >> 63)
                {
                  break;
                }

                v53 = __OFADD__(v89, v87);
                v85 = v89 + v87;
                if (v53)
                {
                  break;
                }

                ++v86;
                if (!--v84)
                {
LABEL_84:
                  LOBYTE(v43) = 0;
                  goto LABEL_93;
                }
              }
            }

            goto LABEL_92;
          }

          goto LABEL_103;
        }

        if (v46 == 45)
        {
          v47 = v44 - 1;
          if (v44 >= 1)
          {
            if (v44 != 1)
            {
              if (!v43)
              {
                goto LABEL_93;
              }

              v48 = 0;
              v49 = (v43 + 1);
              while (1)
              {
                v50 = *v49 - 48;
                if (v50 > 9)
                {
                  break;
                }

                v51 = (v48 * 10) >> 64;
                v52 = 10 * v48;
                if (v51 != v52 >> 63)
                {
                  break;
                }

                v53 = __OFSUB__(v52, v50);
                v48 = v52 - v50;
                if (v53)
                {
                  break;
                }

                ++v49;
                if (!--v47)
                {
                  goto LABEL_84;
                }
              }
            }

            goto LABEL_92;
          }

          __break(1u);
          goto LABEL_102;
        }

        if (v44)
        {
          if (!v43)
          {
            goto LABEL_93;
          }

          v95 = 0;
          while (1)
          {
            v96 = *v43 - 48;
            if (v96 > 9)
            {
              break;
            }

            v97 = (v95 * 10) >> 64;
            v98 = 10 * v95;
            if (v97 != v98 >> 63)
            {
              break;
            }

            v53 = __OFADD__(v98, v96);
            v95 = v98 + v96;
            if (v53)
            {
              break;
            }

            ++v43;
            if (!--v44)
            {
              goto LABEL_84;
            }
          }
        }
      }

LABEL_92:
      LOBYTE(v43) = 1;
LABEL_93:
      LOBYTE(v122) = v43;
      if ((v43 & 1) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_94;
    }

    v110 = v122;

    sub_24823A8E8(v110, v36, 10);
    v112 = v111;

    v34 = v110;
    if ((v112 & 1) == 0)
    {
      goto LABEL_44;
    }
  }

LABEL_94:
  v116 = v34;
  v118(v8, v119, v1);
  v115 = v19;
  v104 = v19;

  v105 = sub_248382A80();
  v106 = sub_248383DC0();

  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    *&v124 = v108;
    *v107 = 136446466;
    *(v107 + 4) = sub_24814A378(*&v104[OBJC_IVAR____TtC9DashBoard20DBLeafIconDataSource_identifier], *&v104[OBJC_IVAR____TtC9DashBoard20DBLeafIconDataSource_identifier + 8], &v124);
    *(v107 + 12) = 2082;
    v109 = sub_24814A378(v116, v36, &v124);

    *(v107 + 14) = v109;
    _os_log_impl(&dword_248146000, v105, v106, "Badge string for identifier: %{public}s is not a valid number: %{public}s", v107, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1CD5F0](v108, -1, -1);
    MEMORY[0x24C1CD5F0](v107, -1, -1);
  }

  else
  {
  }

  v117(v8, v1);
LABEL_43:
  v34 = 0;
  v36 = 0;
  v30 = v115;
LABEL_44:
  v64 = &v30[OBJC_IVAR____TtC9DashBoard20DBLeafIconDataSource_cachedBadgeValue];
  *v64 = v34;
  v64[1] = v36;

  v118(v121, v119, v1);
  v65 = v30;
  v66 = sub_248382A80();
  v67 = sub_248383DC0();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v122 = v69;
    *v68 = 136446466;
    *(v68 + 4) = sub_24814A378(*&v65[OBJC_IVAR____TtC9DashBoard20DBLeafIconDataSource_identifier], *&v65[OBJC_IVAR____TtC9DashBoard20DBLeafIconDataSource_identifier + 8], &v122);
    *(v68 + 12) = 2082;
    v124 = *v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8FD10, &qword_24839D490);
    v70 = sub_2483841D0();
    v72 = sub_24814A378(v70, v71, &v122);

    *(v68 + 14) = v72;
    _os_log_impl(&dword_248146000, v66, v67, "New badge value for %{public}s: %{public}s", v68, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1CD5F0](v69, -1, -1);
    MEMORY[0x24C1CD5F0](v68, -1, -1);
  }

  v117(v121, v1);
  sub_2482397D4(&v126);
}

uint64_t sub_2482397D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE941B0, &unk_24839C9C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id DBLeafIconDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DBLeafIconDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBLeafIconDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

UIImage_optional __swiftcall DBLeafIconDataSource.icon(_:unmaskedImageWith:)(SBLeafIcon *_, SBIconImageInfo unmaskedImageWith)
{
  continuousCornerRadius = unmaskedImageWith.continuousCornerRadius;
  scale = unmaskedImageWith.scale;
  height = unmaskedImageWith.size.height;
  width = unmaskedImageWith.size.width;
  v7 = *&v2[OBJC_IVAR____TtC9DashBoard20DBLeafIconDataSource_application];
  if (!v7)
  {
    v13 = *&v2[OBJC_IVAR____TtC9DashBoard20DBLeafIconDataSource_identifier];
    v14 = *&v2[OBJC_IVAR____TtC9DashBoard20DBLeafIconDataSource_identifier + 8];
    if (v13 == sub_248383960() && v14 == v15)
    {
    }

    else
    {
      v17 = sub_248384680();

      if ((v17 & 1) == 0)
      {
        if (v13 == sub_248383960() && v14 == v18)
        {
        }

        else
        {
          v20 = sub_248384680();

          if ((v20 & 1) == 0)
          {
            v10 = [v2 icon:_ imageWithInfo:0 traitCollection:0 options:{width, height, scale, continuousCornerRadius}];
            goto LABEL_19;
          }
        }

        v24 = [objc_opt_self() traitCollectionWithUserInterfaceIdiom_];
        v10 = sub_248239DB8(v24, 0, MEMORY[0x277D664F8], "Unable to fetch OEM icon image", width, height, scale, continuousCornerRadius);
LABEL_18:

        goto LABEL_19;
      }
    }

    v21 = *MEMORY[0x277CF8FC0];
    v22 = objc_opt_self();
    v23 = v21;
    v24 = [v22 lightAppearance];
    v10 = SBHGetGraphicIconImageWithImageAppearance();

    goto LABEL_18;
  }

  v8 = v7;
  v9 = [v8 bundleIdentifier];
  if (!v9)
  {
    sub_248383960();
    v9 = sub_248383930();
  }

  v10 = SBHGetApplicationIconImage();

LABEL_19:
  v25 = v10;
  result.value.super.isa = v25;
  result.is_nil = v11;
  return result;
}

id sub_248239DB8(void *a1, uint64_t a2, uint64_t (*a3)(void *, void *, uint64_t, double, double, double, double), const char *a4, double a5, double a6, double a7, double a8)
{
  v16 = sub_248382A90();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v8 + OBJC_IVAR____TtC9DashBoard20DBLeafIconDataSource_sessionConfiguration);
  if (v20)
  {
    v21 = [v20 resolvedOEMIconWithIconImageInfo_];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 iconImage];
      if (v23)
      {
        v24 = v23;
        v25 = sub_24833C0B8(a5, a6, a7);
        sub_24814FB28(0, &qword_27EE8FD88, 0x277D75C80);
        v26 = sub_24833C570(a1, [v22 isPrerendered]);
        v27 = SBHIconServicesOptionsForImageOptions();
        v28 = a3(v25, v26, v27, a5, a6, a7, a8);

        return v28;
      }
    }
  }

  v30 = sub_24827C480();
  (*(v17 + 16))(v19, v30, v16);
  v31 = sub_248382A80();
  v32 = sub_248383DA0();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_248146000, v31, v32, a4, v33, 2u);
    MEMORY[0x24C1CD5F0](v33, -1, -1);
  }

  (*(v17 + 8))(v19, v16);
  return 0;
}

id sub_24823A068(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t (*a10)(void *, uint64_t, double, double, double, double))
{
  v18 = a7;
  v19 = a8;
  v20 = a1;
  v21 = a10(a8, a9, a2, a3, a4, a5);

  return v21;
}

Swift::String_optional __swiftcall DBLeafIconDataSource.formattedAccessoryString(for:)(SBLeafIcon *a1)
{
  if ([v1 badgeNumberOrStringForIcon_])
  {
    sub_248384230();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v2 = swift_dynamicCast();
    v3 = v2 == 0;
    if (v2)
    {
      v4 = v7;
    }

    else
    {
      v4 = 0;
    }

    if (v3)
    {
      v5 = 0;
    }

    else
    {
      v5 = v8;
    }
  }

  else
  {
    sub_2482397D4(v11);
    v4 = 0;
    v5 = 0;
  }

  result.value._object = v5;
  result.value._countAndFlagsBits = v4;
  return result;
}

double DBLeafIconDataSource.badgeNumberOrString(for:)@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9DashBoard20DBLeafIconDataSource_application);
  if (v3)
  {
    v4 = [v3 bundleIdentifier];
    v5 = sub_248383960();
    v7 = v6;

    if (v5 == 0xD000000000000013 && 0x80000002483AA2E0 == v7)
    {

      goto LABEL_12;
    }

    v9 = sub_248384680();

    if (v9)
    {
      goto LABEL_12;
    }
  }

  v10 = *(v1 + OBJC_IVAR____TtC9DashBoard20DBLeafIconDataSource_cachedBadgeValue + 8);
  if (!v10)
  {
LABEL_12:
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  v11 = *(v1 + OBJC_IVAR____TtC9DashBoard20DBLeafIconDataSource_cachedBadgeValue);
  *(a1 + 24) = MEMORY[0x277D837D0];
  *a1 = v11;
  *(a1 + 8) = v10;

  return result;
}

UIImage_optional __swiftcall CRSApplicationIcon.iconImage()()
{
  v1 = [v0 iconImageData];
  if (v1)
  {
    v3 = v1;
    v4 = sub_2483811B0();
    v6 = v5;

    [v0 iconImageScale];
    v8 = v7;
    v9 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v10 = sub_2483811A0();
    v11 = [v9 initWithData:v10 scale:v8];

    sub_24823BD70(v4, v6);
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  result.value.super.isa = v12;
  result.is_nil = v2;
  return result;
}

id sub_24823A790(void *a1)
{
  v1 = a1;
  v2 = [v1 iconImageData];
  if (v2)
  {
    v3 = v2;
    v4 = sub_2483811B0();
    v6 = v5;

    [v1 iconImageScale];
    v8 = v7;
    v9 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v10 = sub_2483811A0();
    v11 = [v9 initWithData:v10 scale:v8];

    sub_24823BD70(v4, v6);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t sub_24823A878(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE941B0, &unk_24839C9C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_24823A8E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  v66 = a2;

  v4 = sub_248383A80();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_24823AE74(v4, v5);
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = sub_248384490();
      v8 = v64;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v19 = v8 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (v7)
          {
            v23 = 0;
            v24 = v7 + 1;
            while (1)
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v20)
              {
                if (v25 < 0x41 || v25 >= v21)
                {
                  if (v25 < 0x61 || v25 >= v22)
                  {
                    goto LABEL_125;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v23 * a3;
              if ((v23 * a3) >> 64 == (v23 * a3) >> 63)
              {
                v23 = v27 + (v25 + v26);
                if (!__OFADD__(v27, (v25 + v26)))
                {
                  ++v24;
                  if (--v19)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (v7)
        {
          v31 = 0;
          while (1)
          {
            v32 = *v7;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_125;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 == (v31 * a3) >> 63)
            {
              v31 = v34 + (v32 + v33);
              if (!__OFADD__(v34, (v32 + v33)))
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v18 = v14 * a3;
            if ((v14 * a3) >> 64 == (v14 * a3) >> 63)
            {
              v14 = v18 - (v16 + v17);
              if (!__OFSUB__(v18, (v16 + v17)))
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v37 = HIBYTE(v5) & 0xF;
  v65 = v6;
  v66 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v56 = 0;
        v57 = a3 + 48;
        v58 = a3 + 55;
        v59 = a3 + 87;
        if (a3 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_125;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v56 * a3;
          if ((v56 * a3) >> 64 == (v56 * a3) >> 63)
          {
            v56 = v63 + (v61 + v62);
            if (!__OFADD__(v63, (v61 + v62)))
            {
              v60 = (v60 + 1);
              if (--v37)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v65 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_125;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 == (v39 * a3) >> 63)
          {
            v39 = v46 - (v44 + v45);
            if (!__OFSUB__(v46, (v44 + v45)))
            {
              ++v43;
              if (--v38)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v48 = 0;
      v49 = a3 + 48;
      v50 = a3 + 55;
      v51 = a3 + 87;
      if (a3 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v65 + 1;
      while (1)
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_125;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v48 * a3;
        if ((v48 * a3) >> 64 == (v48 * a3) >> 63)
        {
          v48 = v55 + (v53 + v54);
          if (!__OFADD__(v55, (v53 + v54)))
          {
            ++v52;
            if (--v47)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

uint64_t sub_24823AE74(uint64_t a1, unint64_t a2)
{
  v2 = sub_248383A90();
  v6 = sub_24823AEF4(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_24823AEF4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_248384200();
    if (!v9 || (v10 = v9, v11 = sub_24822B738(v9, 0), v12 = sub_24823B04C(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_2483839D0();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_2483839D0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_248384490();
LABEL_4:

  return sub_2483839D0();
}

unint64_t sub_24823B04C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_24823B26C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_248383A30();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_248384490();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_24823B26C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_248383A10();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
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

unint64_t sub_24823B26C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_248383A40();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x24C1CB000](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

id _s9DashBoard20DBLeafIconDataSourceC4icon_9imageWithSo7UIImageCSgSo06SBLeafD0C_So15SBIconImageInfoVtF_0(double a1, double a2, double a3, double a4)
{
  v9 = *(v4 + OBJC_IVAR____TtC9DashBoard20DBLeafIconDataSource_application);
  if (!v9)
  {
    v13 = *(v4 + OBJC_IVAR____TtC9DashBoard20DBLeafIconDataSource_identifier);
    v14 = *(v4 + OBJC_IVAR____TtC9DashBoard20DBLeafIconDataSource_identifier + 8);
    if (v13 == sub_248383960() && v14 == v15)
    {
    }

    else
    {
      v17 = sub_248384680();

      if ((v17 & 1) == 0)
      {
        v18 = [objc_opt_self() traitCollectionWithUserInterfaceIdiom_];
        v12 = sub_248239DB8(v18, 0, MEMORY[0x277D664F8], "Unable to fetch OEM icon image", a1, a2, a3, a4);
LABEL_13:

        return v12;
      }
    }

    v19 = *MEMORY[0x277CF8FC0];
    v20 = objc_opt_self();
    v21 = v19;
    v18 = [v20 lightAppearance];
    v12 = SBHGetGraphicIconImageWithImageAppearance();

    goto LABEL_13;
  }

  v10 = v9;
  v11 = [v10 bundleIdentifier];
  if (!v11)
  {
    sub_248383960();
    v11 = sub_248383930();
  }

  v12 = SBHGetApplicationIconImage();

  return v12;
}

id sub_24823B4E8(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v13 = *(v6 + OBJC_IVAR____TtC9DashBoard20DBLeafIconDataSource_application);
  if (!v13)
  {
    v17 = *(v6 + OBJC_IVAR____TtC9DashBoard20DBLeafIconDataSource_identifier);
    v18 = *(v6 + OBJC_IVAR____TtC9DashBoard20DBLeafIconDataSource_identifier + 8);
    if (v17 == sub_248383960() && v18 == v19)
    {
    }

    else
    {
      v21 = sub_248384680();

      if ((v21 & 1) == 0)
      {
        if (v17 == sub_248383960() && v18 == v22)
        {
        }

        else
        {
          v24 = sub_248384680();

          if ((v24 & 1) == 0)
          {
            if (a1)
            {
              v25 = a1;
            }

            else
            {
              v25 = [objc_opt_self() traitCollectionWithUserInterfaceIdiom_];
            }

            v31 = objc_opt_self();
            v32 = a1;
            sub_248384440();

            MEMORY[0x24C1CAFD0](v17, v18);
            MEMORY[0x24C1CAFD0](1735290926, 0xE400000000000000);
            v33 = sub_248383930();

            v16 = [v31 crsui:v33 imageNamed:v25 compatibleWithTraitCollection:?];

            return v16;
          }
        }

        return sub_248239DB8(a1, a2, MEMORY[0x277D664F8], "Unable to fetch OEM icon image", a3, a4, a5, a6);
      }
    }

    v26 = *MEMORY[0x277CF8FC0];
    v27 = objc_opt_self();
    v28 = v26;
    v29 = [v27 sbh:a1 iconImageAppearanceFromTraitCollection:?];
    SBHIconServicesOptionsForImageOptions();
    v16 = SBHGetGraphicIconImageWithImageAppearance();

    return v16;
  }

  v14 = v13;
  SBHIconServicesOptionsForImageOptions();
  v15 = [v14 bundleIdentifier];
  if (!v15)
  {
    sub_248383960();
    v15 = sub_248383930();
  }

  v16 = SBHGetApplicationIconImageWithTraitCollection();

  return v16;
}

id sub_24823B844(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v13 = *(v6 + OBJC_IVAR____TtC9DashBoard20DBLeafIconDataSource_identifier);
  v14 = *(v6 + OBJC_IVAR____TtC9DashBoard20DBLeafIconDataSource_identifier + 8);
  if (v13 == sub_248383960() && v14 == v15)
  {

    goto LABEL_13;
  }

  v17 = sub_248384680();

  if (v17)
  {
LABEL_13:
    v23 = *MEMORY[0x277CF8FC0];
    v24 = objc_opt_self();
    v25 = v23;
    v26 = [v24 sbh:a1 iconImageAppearanceFromTraitCollection:?];
    SBHIconServicesOptionsForImageOptions();
    v22 = SBHGetGraphicIconLayerWithImageAppearance();

    return v22;
  }

  if (v13 == sub_248383960() && v14 == v18)
  {

    return sub_248239DB8(a1, a2, MEMORY[0x277D66500], "Unable to fetch OEM icon layer", a3, a4, a5, a6);
  }

  v20 = sub_248384680();

  if (v20)
  {
    return sub_248239DB8(a1, a2, MEMORY[0x277D66500], "Unable to fetch OEM icon layer", a3, a4, a5, a6);
  }

  SBHIconServicesOptionsForImageOptions();
  v21 = sub_248383930();
  v22 = SBHGetApplicationIconLayerWithTraitCollection();

  return v22;
}

uint64_t _s9DashBoard20DBLeafIconDataSourceC4icon_22displayNameForLocationSSSgSo06SBLeafD0C_So06SBIconK0atF_0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9DashBoard20DBLeafIconDataSource_identifier);
  v2 = *(v0 + OBJC_IVAR____TtC9DashBoard20DBLeafIconDataSource_identifier + 8);
  if (v1 == sub_248383960() && v2 == v3)
  {

    goto LABEL_10;
  }

  v5 = sub_248384680();

  if (v5)
  {
LABEL_10:
    sub_248384440();

    MEMORY[0x24C1CAFD0](v1, v2);
    sub_24814FB28(0, &qword_27EE8FD80, off_278EFF1E8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = [objc_opt_self() bundleForClass_];
    v10 = sub_2483810A0();

    return v10;
  }

  v6 = *(v0 + OBJC_IVAR____TtC9DashBoard20DBLeafIconDataSource_application);
  if (!v6)
  {
    if (v1 == sub_248383960() && v2 == v14)
    {
    }

    else
    {
      v16 = sub_248384680();

      if ((v16 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v17 = *(v0 + OBJC_IVAR____TtC9DashBoard20DBLeafIconDataSource_sessionConfiguration);
    if (v17)
    {
      v18 = [v17 manufacturerIconLabel];
      if (v18)
      {
        v19 = v18;
        v10 = sub_248383960();

        return v10;
      }
    }

    return 0;
  }

  v7 = v6;
  v8 = [v7 displayName];
  if (!v8)
  {

    return 0;
  }

  v9 = v8;
  v10 = sub_248383960();

  return v10;
}

uint64_t sub_24823BD70(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_24823BE08(uint64_t a1, uint64_t a2, char a3)
{
  v7.super_class = DBIconView;
  objc_msgSendSuper2(&v7, sel_prepareToCrossfadeImageWithView_options_, a1, a2);
  if (a3)
  {
    v5 = [v3 _iconImageView];
    if (v5)
    {
      v6 = v5;
      type metadata accessor for DBIconImageView();
      if (swift_dynamicCastClass())
      {
        DBIconImageView.setupMaskForCrossfade()();
      }
    }
  }
}

id DBDashboardMainWindow.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBDashboardMainWindow();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24823BFF4(void *a1)
{
  v2 = [a1 iconIdentifier];
  v3 = sub_248383960();

  [a1 imageGeneration];
  v4 = [a1 imageAppearance];

  return v3;
}

uint64_t sub_24823C090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a1 != a5 || a2 != a6) && (sub_248384680() & 1) == 0 || a3 != a7)
  {
    return 0;
  }

  sub_24823C118();
  return sub_248384030() & 1;
}

unint64_t sub_24823C118()
{
  result = qword_27EE92190;
  if (!qword_27EE92190)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE92190);
  }

  return result;
}

uint64_t sub_24823C164(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_248384680() & 1) == 0 || v2 != v3)
  {
    return 0;
  }

  sub_24823C118();
  return sub_248384030() & 1;
}

double sub_24823C1EC@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = -1;
  return result;
}

uint64_t sub_24823C204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  *(v9 + 80) = v8;
  *(v9 + 64) = a7;
  *(v9 + 72) = a8;
  *(v9 + 48) = a5;
  *(v9 + 56) = a6;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24823C234, v8, 0);
}

uint64_t sub_24823C234()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = swift_allocObject();
  *(v0 + 88) = v6;
  *(v6 + 16) = v1;
  *(v6 + 24) = v5;
  *(v6 + 32) = v4;
  *(v6 + 40) = v3;
  *(v6 + 48) = v2;
  v7 = *(v0 + 48);
  *(v6 + 72) = *(v0 + 64);
  *(v6 + 56) = v7;
  v8 = *(*v1 + 136);

  v9 = v2;
  v16 = (v8 + *v8);
  v10 = swift_task_alloc();
  *(v0 + 96) = v10;
  *v10 = v0;
  v10[1] = sub_24823C3D8;
  v11 = *(v0 + 32);
  v12 = *(v0 + 40);
  v14 = *(v0 + 16);
  v13 = *(v0 + 24);

  return v16(v14, v13, v11, v12, &unk_24839CA40, v6);
}

uint64_t sub_24823C3D8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v6 = *(v4 + 80);

    return MEMORY[0x2822009F8](sub_24823C530, v6, 0);
  }

  else
  {

    v7 = *(v5 + 8);

    return v7(a1);
  }
}

uint64_t sub_24823C530()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24823C594(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, uint64_t a8, uint64_t a9)
{
  v23 = (*(*a1 + 152) + **(*a1 + 152));
  v17 = swift_task_alloc();
  *(v9 + 16) = v17;
  *v17 = v9;
  v17[1] = sub_24823C704;
  v18.n128_f64[0] = a4;
  v19.n128_f64[0] = a5;
  v20.n128_f64[0] = a6;
  v21.n128_f64[0] = a7;

  return v23(a2, a3, a9, v18, v19, v20, v21);
}

uint64_t sub_24823C704(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_24823C800()
{
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = *(v0 + 6);
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[10];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_24823C704;

  return sub_24823C594(v2, v3, v4, v6, v7, v8, v9, v11, v5);
}

uint64_t sub_24823C8E0(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  *(v7 + 56) = a2;
  *(v7 + 64) = v6;
  *(v7 + 40) = a5;
  *(v7 + 48) = a6;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  *(v7 + 16) = a1;
  return MEMORY[0x2822009F8](sub_24823C90C, v6, 0);
}

uint64_t sub_24823C90C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 16);
  v18 = *(v0 + 40);
  v20 = *(v0 + 24);
  v4 = [v3 iconImageIdentityWithTraitCollection:v1 masked:1];
  *(v0 + 72) = v4;
  v5 = v4;
  v6 = [v5 iconIdentifier];
  v7 = sub_248383960();
  v9 = v8;

  *(v0 + 80) = v9;
  v10 = [v5 imageGeneration];
  v11 = [v5 imageAppearance];
  *(v0 + 88) = v11;

  v12 = swift_allocObject();
  *(v0 + 96) = v12;
  *(v12 + 16) = v2;
  *(v12 + 24) = v3;
  *(v12 + 32) = v20;
  *(v12 + 48) = v18;
  *(v12 + 64) = v1;
  v13 = *(*v2 + 136);

  v14 = v3;
  v15 = v1;
  v19 = (v13 + *v13);
  v16 = swift_task_alloc();
  *(v0 + 104) = v16;
  *v16 = v0;
  v16[1] = sub_24823CB4C;

  return v19(v7, v9, v10, v11, &unk_24839CA58, v12);
}

uint64_t sub_24823CB4C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = *(v4 + 64);
    v6 = sub_24823CD00;
  }

  else
  {
    v7 = *(v4 + 64);

    *(v4 + 120) = a1;
    v6 = sub_24823CC8C;
    v5 = v7;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24823CC8C()
{
  v1 = v0[11];
  v2 = v0[9];

  v3 = v0[1];
  v4 = v0[15];

  return v3(v4);
}

uint64_t sub_24823CD00()
{
  v1 = v0[11];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_24823CD80(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v20 = (*(*a1 + 144) + **(*a1 + 144));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_24823EDF0;
  v15.n128_f64[0] = a4;
  v16.n128_f64[0] = a5;
  v17.n128_f64[0] = a6;
  v18.n128_f64[0] = a7;

  return v20(a2, a3, v15, v16, v17, v18);
}

uint64_t sub_24823CEE0()
{
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = *(v0 + 8);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_24823EDF0;

  return sub_24823CD80(v2, v3, v8, v4, v5, v6, v7);
}

uint64_t sub_24823CFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[9] = a6;
  v7[10] = v6;
  v7[7] = a4;
  v7[8] = a5;
  v7[5] = a2;
  v7[6] = a3;
  v7[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90480, &qword_24839D5D0);
  v7[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24823D058, v6, 0);
}

uint64_t sub_24823D058()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 112);
  *(v0 + 96) = v2;
  v3 = *(v1 + 120);
  *(v0 + 104) = v3;
  v4 = *(v1 + 128);
  *(v0 + 112) = v4;
  v6 = *(v1 + 136);
  v5 = *(v1 + 144);
  *(v0 + 120) = v5;
  v7 = *(v1 + 152);
  *(v0 + 176) = v7;
  if (v7 == 255)
  {
    v9 = *(v0 + 40);
    goto LABEL_31;
  }

  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  if ((v7 & 1) == 0)
  {
    v13 = *(v0 + 48);
    v14 = v3 == v8 && v4 == v9;
    v42 = *(v0 + 40);
    if (v14)
    {
      v15 = v6;
      if (v6 == v13)
      {
LABEL_24:
        sub_24823C118();
        sub_24823E1AC(v2, v3, v4, v15, v5, v7);

        v19 = v5;
        if (sub_248384030())
        {
          v20 = swift_task_alloc();
          *(v0 + 128) = v20;
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90D90, qword_24839CA80);
          *v20 = v0;
          v20[1] = sub_24823D53C;
          v22 = MEMORY[0x277D84950];
          v23 = v0 + 24;
LABEL_32:

          return MEMORY[0x282200430](v23, v2, &type metadata for DBIconLayerClient.LayerState.IconLayer, v21, v22);
        }

        goto LABEL_27;
      }
    }

    else if ((sub_248384680() & 1) != 0 && v6 == v13)
    {
      v15 = *(v0 + 48);
      goto LABEL_24;
    }

    sub_24823E1AC(v2, v3, v4, v6, v5, v7);

    v24 = v5;
LABEL_27:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90D90, qword_24839CA80);
    sub_248383C00();
    sub_24823E128(v2, v3, v4, v6, v5, v7);

    v9 = v42;
    goto LABEL_31;
  }

  v10 = *(v0 + 48);
  if (v3 == v8 && v4 == v9)
  {
    if (v6 == v10)
    {
      goto LABEL_19;
    }

    v9 = v4;
LABEL_31:
    *(v0 + 144) = v9;
    v25 = *(v0 + 88);
    v27 = *(v0 + 64);
    v26 = *(v0 + 72);
    v28 = *(v0 + 56);
    v41 = *(v0 + 48);
    v40 = *(v0 + 32);
    v29 = v9;
    v30 = sub_248383BE0();
    (*(*(v30 - 8) + 56))(v25, 1, 1, v30);
    v31 = swift_allocObject();
    v31[2] = 0;
    v31[3] = 0;
    v31[4] = v27;
    v31[5] = v26;

    v2 = sub_24823DEC4(0, 0, v25, &unk_24839CA78, v31);
    *(v0 + 152) = v2;
    v32 = *(v1 + 112);
    v33 = *(v1 + 120);
    v34 = *(v1 + 128);
    v35 = *(v1 + 136);
    v36 = *(v1 + 144);
    *(v1 + 112) = v2;
    *(v1 + 120) = v40;
    *(v1 + 128) = v29;
    *(v1 + 136) = v41;
    *(v1 + 144) = v28;
    LOBYTE(v29) = *(v1 + 152);
    *(v1 + 152) = 0;

    v37 = v28;
    sub_24823E128(v32, v33, v34, v35, v36, v29);
    v38 = swift_task_alloc();
    *(v0 + 160) = v38;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90D90, qword_24839CA80);
    *v38 = v0;
    v38[1] = sub_24823D724;
    v22 = MEMORY[0x277D84950];
    v23 = v0 + 16;
    goto LABEL_32;
  }

  v12 = *(v0 + 40);
  if ((sub_248384680() & 1) == 0)
  {
LABEL_30:
    v9 = v12;
    goto LABEL_31;
  }

  v9 = v12;
  if (v6 != v10)
  {
    goto LABEL_31;
  }

LABEL_19:
  v12 = v9;
  sub_24823C118();
  sub_24823E1AC(v2, v3, v4, v6, v5, v7);
  v39 = v2;
  v16 = sub_248384030();
  sub_24823E128(v2, v3, v4, v6, v5, v7);
  if ((v16 & 1) == 0)
  {

    goto LABEL_30;
  }

  v17 = *(v0 + 8);

  return v17(v2);
}

uint64_t sub_24823D53C()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = sub_24823D944;
  }

  else
  {
    v4 = sub_24823D668;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24823D668()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 48);
  v6 = *(v0 + 176);

  sub_24823E128(v4, v3, v1, v5, v2, v6);
  v7 = *(v0 + 24);

  v8 = *(v0 + 8);

  return v8(v7);
}

uint64_t sub_24823D724()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = sub_24823D9F8;
  }

  else
  {
    v4 = sub_24823D850;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24823D850()
{
  v1 = v0[18];
  v2 = v0[10];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];

  v6 = v0[2];
  v14 = *(v2 + 120);
  v15 = *(v2 + 112);
  v7 = *(v2 + 136);
  v13 = *(v2 + 128);
  v8 = *(v2 + 144);
  *(v2 + 112) = v6;
  *(v2 + 120) = v5;
  *(v2 + 128) = v1;
  *(v2 + 136) = v4;
  *(v2 + 144) = v3;
  LOBYTE(v1) = *(v2 + 152);
  *(v2 + 152) = 1;
  v9 = v6;

  v10 = v3;
  sub_24823E128(v15, v14, v13, v7, v8, v1);

  v11 = v0[1];

  return v11(v6);
}

uint64_t sub_24823D944()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 48);
  v6 = *(v0 + 176);

  sub_24823E128(v4, v3, v1, v5, v2, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_24823D9F8()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  v4 = *(v1 + 128);
  v5 = *(v1 + 136);
  v6 = *(v1 + 144);
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0;
  v7 = *(v1 + 152);
  *(v1 + 152) = -1;
  sub_24823E128(v2, v3, v4, v5, v6, v7);
  swift_willThrow();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_24823DAA4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_24823DB90;

  return v7();
}

uint64_t sub_24823DB90(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_24823DC90, 0, 0);
}

uint64_t sub_24823DC90()
{
  sub_248383C20();
  **(v0 + 16) = *(v0 + 32);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24823DD24(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24823DDD0;

  return sub_24823DAA4(a1, v5, v6, v4);
}

uint64_t sub_24823DDD0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24823DEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90480, &qword_24839D5D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_24823ECAC(a3, v22 - v9);
  v11 = sub_248383BE0();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_24823ED1C(v10);
  }

  else
  {
    sub_248383BD0();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_248383B90();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2483839C0() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_24823ED1C(a3);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24823ED1C(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void sub_24823E128(void *result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  if (a6 != -1)
  {
    sub_24823E140(result, a2, a3, a4, a5, a6 & 1);
  }
}

void sub_24823E140(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  if (a6)
  {

    v7 = a1;
  }

  else
  {

    v7 = a5;
  }
}

id sub_24823E1AC(id result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  if (a6 != -1)
  {
    return sub_24823E1C4(result, a2, a3, a4, a5, a6 & 1);
  }

  return result;
}

id sub_24823E1C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  if (a6)
  {
    v6 = a1;
  }

  else
  {
  }

  return a5;
}

uint64_t sub_24823E21C(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  *(v6 + 64) = a2;
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 24) = a1;
  return MEMORY[0x2822009F8](sub_24823E248, 0, 0);
}

uint64_t sub_24823E248()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 sbh_iconImageAppearance];
    v4 = [v3 isOpaque];

    if (v4)
    {
      v6 = *(v0 + 48);
      v5 = *(v0 + 56);
      v8 = *(v0 + 32);
      v7 = *(v0 + 40);
      v9 = *(v0 + 24);
      v10 = v2;
      v11 = [v9 imageLoadContext];
      sub_2483838A0();

      v12 = sub_248383880();

      v13 = [v9 makeIconImageWithInfo:v10 traitCollection:v12 context:17 options:{v8, v7, v6, v5}];

      v14 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
      v15 = objc_opt_self();
      [v15 begin];
      [v15 activateBackground_];
      if (v14)
      {
        if (v13 && (v16 = [v13 CGImage]) != 0)
        {
          *(v0 + 16) = v16;
          type metadata accessor for CGImage(0);
          v17 = sub_248384670();
        }

        else
        {
          v17 = 0;
        }

        [v14 setContents_];
        swift_unknownObjectRelease();
      }

      [v15 commit];

      goto LABEL_21;
    }
  }

  v19 = *(v0 + 48);
  v18 = *(v0 + 56);
  v21 = *(v0 + 32);
  v20 = *(v0 + 40);
  v22 = *(v0 + 24);
  v23 = [v22 imageLoadContext];
  sub_2483838A0();

  v24 = sub_248383880();

  v14 = [v22 makeIconLayerWithInfo:v1 traitCollection:v24 context:0 options:{v21, v20, v19, v18}];

  if (v14)
  {
    goto LABEL_22;
  }

  v25 = [*(v0 + 24) uniqueIdentifier];
  if (!v25)
  {
    sub_248383960();
    v25 = sub_248383930();
  }

  v13 = SBHGetApplicationIconImageWithTraitCollection();

  v14 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v26 = objc_opt_self();
  [v26 begin];
  [v26 activateBackground_];
  if (v14)
  {
    if (v13 && (v27 = [v13 CGImage]) != 0)
    {
      *(v0 + 16) = v27;
      type metadata accessor for CGImage(0);
      v28 = sub_248384670();
    }

    else
    {
      v28 = 0;
    }

    [v14 setContents_];
    swift_unknownObjectRelease();
  }

  [v26 commit];
LABEL_21:

LABEL_22:
  v29 = *(v0 + 8);

  return v29(v14);
}

uint64_t sub_24823E68C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  *(v7 + 64) = a3;
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24823E6B8, 0, 0);
}

uint64_t sub_24823E6B8()
{
  v1 = *(v0 + 8);
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v7 = *(v0 + 2);
  v6 = *(v0 + 3);
  if (sub_248383960() == v7 && v8 == v6)
  {

    v11 = sub_24823E970;
  }

  else
  {
    v10 = sub_248384680();

    if (v10)
    {
      v11 = sub_24823E970;
    }

    else
    {
      v11 = sub_24823E988;
    }
  }

  if (sub_248383960() == v7 && v12 == v6)
  {
  }

  else
  {
    v14 = sub_248384680();

    if ((v14 & 1) == 0)
    {

      goto LABEL_17;
    }
  }

  v7 = sub_248383960();
  v6 = v15;
LABEL_17:
  v16 = v11(v7, v6, v1, 0, v5, v4, v3, v2);

  v17 = *(v0 + 1);

  return v17(v16);
}

uint64_t sub_24823E86C()
{
  sub_24823E128(*(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_24823E8A0()
{
  sub_24823E128(*(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24823E8E4()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 144) = 0;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 152) = -1;
  return v0;
}

uint64_t sub_24823E930()
{
  swift_defaultActor_initialize();
  *(v0 + 144) = 0;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 152) = -1;
  return v0;
}

id sub_24823E9A0(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void *, uint64_t, uint64_t, double, double, double, double))
{
  v16 = sub_248383930();
  v17 = a9(v16, a7, a8, a2, a3, a4, a5);

  return v17;
}

uint64_t sub_24823EA40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24823EA88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24823EB1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_24823EB64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_24823EBDC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24823EC38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_24823ECAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90480, &qword_24839D5D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24823ED1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90480, &qword_24839D5D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_24823EDA4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_24823EE04()
{
  result = sub_248383930();
  qword_27EE94FD8 = result;
  return result;
}

uint64_t sub_24823EE3C()
{
  result = sub_248383930();
  qword_27EE94FE8 = result;
  return result;
}

uint64_t sub_24823EE74()
{
  result = sub_248383930();
  qword_27EE94FF8 = result;
  return result;
}

uint64_t sub_24823EEAC()
{
  result = sub_248383930();
  qword_27EE95008 = result;
  return result;
}

uint64_t sub_24823EEE4()
{
  v1 = OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController____lazy_storage___dataSourceManager;
  if (*(v0 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController____lazy_storage___dataSourceManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController____lazy_storage___dataSourceManager);
  }

  else
  {
    sub_248381B60();
    swift_allocObject();

    v2 = sub_248381B70();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t variable initialization expression of DBInstrumentClusterLayoutViewController.appearancePublisher()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FE10, &qword_24839CCC0);
  swift_allocObject();
  return sub_248382E00();
}

uint64_t variable initialization expression of DBInstrumentClusterLayoutViewController.nextLayout@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2483824B0();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t variable initialization expression of DBInstrumentClusterLayoutViewController.closeButtonFocusEffectCoordinator()
{
  type metadata accessor for CloseButtonFocusEffectCoordinator(0);
  v0 = swift_allocObject();
  sub_248382E50();
  return v0;
}

void DBInstrumentClusterLayoutViewController.init(themeController:environment:displayID:workspaceIdentifier:error:)(char *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v7 = v6;
  v195 = a6;
  v196 = a5;
  v194 = a4;
  v199 = a2;
  v200 = a1;
  v9 = sub_2483824B0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v197 = &v164 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_248382A90();
  v179 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v172 = &v164 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v178 = &v164 - v14;
  MEMORY[0x28223BE20](v15);
  v168 = &v164 - v16;
  MEMORY[0x28223BE20](v17);
  v170 = &v164 - v18;
  v177 = sub_2483832F0();
  v176 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v175 = &v164 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FE18, &qword_24839CCC8);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v164 - v21;
  v23 = sub_2483825A0();
  v201 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v174 = &v164 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v164 - v26;
  v189 = OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController____lazy_storage___dataSourceManager;
  *&v6[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController____lazy_storage___dataSourceManager] = 0;
  v191 = OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_stagedThemeData;
  *&v6[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_stagedThemeData] = 0;
  v28 = &v6[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_frameRateLimit];
  *v28 = 0;
  v169 = v28;
  v28[8] = 1;
  v187 = OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_requestContentSourceZone1;
  *&v6[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_requestContentSourceZone1] = 0;
  v188 = OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_requestContentSourceZone2;
  *&v6[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_requestContentSourceZone2] = 0;
  v190 = OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_cableStateSource;
  *&v6[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_cableStateSource] = 0;
  v29 = &v6[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_appearanceCompletion];
  *v29 = 0;
  v29[1] = 0;
  v192 = v29;
  v30 = OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_appearancePublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FE10, &qword_24839CCC0);
  swift_allocObject();
  v31 = sub_248382E00();
  v193 = v30;
  *&v6[v30] = v31;
  v186 = OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_requestContentDebounceTime;
  sub_248384180();
  v182 = OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_layoutControl;
  *&v6[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_layoutControl] = 0;
  v183 = OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_layoutViewController;
  *&v6[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_layoutViewController] = 0;
  v185 = OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_cancellables;
  *&v6[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_cancellables] = MEMORY[0x277D84FA0];
  v6[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_allowTransitions] = 0;
  v167 = v10;
  v32 = v10;
  v33 = v200;
  v34 = *(v32 + 56);
  v184 = OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_nextLayout;
  v198 = v9;
  v35 = v9;
  v36 = v194;
  v34(&v6[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_nextLayout], 1, 1, v35);
  v37 = &v6[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_focusToken];
  *v37 = 0;
  v37[8] = 1;
  v38 = OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_closeButtonFocusEffectCoordinator;
  type metadata accessor for CloseButtonFocusEffectCoordinator(0);
  v39 = swift_allocObject();
  LOBYTE(v204) = 0;
  sub_248382E50();
  v181 = v38;
  *&v7[v38] = v39;
  v40 = *&v33[OBJC_IVAR____TtC9DashBoard17DBThemeController_themeAssetDocument];
  v171 = a3;
  sub_2482408C0(v40, a3, v36, v195, v22);

  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FE28, &qword_24839CCD0);
  if ((*(*(v41 - 8) + 48))(v22, 1, v41) == 1)
  {

    swift_unknownObjectRelease();

    sub_24822D578(v22, &qword_27EE8FE18, &qword_24839CCC8);
LABEL_10:
    v63 = v192;
    v64 = v186;

    sub_248167864(*v63, v63[1]);

    v65 = sub_2483841A0();
    (*(*(v65 - 8) + 8))(&v7[v64], v65);

    sub_24822D578(&v7[v184], &qword_27EE8FE30, &unk_2483A14F0);

    type metadata accessor for DBInstrumentClusterLayoutViewController(0);
    swift_deallocPartialClassInstance();
    return;
  }

  v42 = *(v41 + 48);
  v43 = *(v201 + 32);
  v173 = v23;
  v43(v27, v22, v23);
  sub_24814F6F4(&v22[v42], &v204);
  v44 = v199;
  v45 = [v199 environmentConfiguration];
  v46 = [v45 uisyncChannel];

  v47 = v196;
  if (!v46)
  {
LABEL_7:

    v56 = sub_24827C568();
    v57 = v179;
    v58 = v178;
    v59 = v180;
    (*(v179 + 16))(v178, v56, v180);
    v60 = sub_248382A80();
    v61 = sub_248383DA0();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_248146000, v60, v61, "Couldn't find required services or valid display configuration in environment", v62, 2u);
      MEMORY[0x24C1CD5F0](v62, -1, -1);
    }

    swift_unknownObjectRelease();
    (*(v57 + 8))(v58, v59);
    __swift_destroy_boxed_opaque_existential_0(&v204);
    (*(v201 + 8))(v27, v173);
    goto LABEL_10;
  }

  v166 = v43;
  v48 = [v44 environmentConfiguration];
  v49 = [v48 layerMetadataService];

  if (!v49)
  {

    goto LABEL_7;
  }

  v195 = v46;
  sub_248381550();
  swift_allocObject();
  v50 = sub_248381540();
  v164 = OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_assetLibraryManager;
  *&v7[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_assetLibraryManager] = v50;
  v51 = [v44 environmentConfiguration];
  v52 = v175;
  DBEnvironmentConfiguration.toSwiftUIEnvironment()();

  v53 = v174;
  v54 = v44;
  v55 = v173;
  v178 = v27;
  sub_248381800();
  v165 = v49;
  (*(v176 + 8))(v52, v177);
  v166(&v7[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_display], v53, v55);
  v66 = &v7[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_displayID];
  v67 = v171;
  *v66 = v171;
  v66[1] = v36;
  sub_24825D530(&v204, &v7[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_theme]);
  v68 = v200;
  *&v7[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_themeController] = v200;
  swift_unknownObjectUnownedInit();
  type metadata accessor for DBInstrumentClusterSignpostCoordinator();

  v192 = v68;
  v69 = sub_248299268();
  *&v7[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_signpostCoordinator] = v69;
  type metadata accessor for DBInstrumentDataSources();

  swift_unknownObjectRetain();

  *&v7[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_dataSources] = DBInstrumentDataSources.__allocating_init(displayID:environment:signpostCoordinator:)(v67, v36, v54, v69);
  type metadata accessor for DBUISyncSession();
  v70 = v36;
  v71 = v195;
  v72 = [v54 environmentConfiguration];
  v73 = [v72 vehicleID];

  v74 = sub_248383960();
  v76 = v75;

  v191 = v71;
  v77 = v71;
  v78 = v70;
  v79 = DBUISyncSession.__allocating_init(channel:vehicleID:displayID:)(v77, v74, v76, v67, v70);
  v80 = OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_uisyncSession;
  *&v7[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_uisyncSession] = v79;
  v81 = sub_24827C568();
  v82 = v179;
  v83 = *(v179 + 16);
  v84 = v170;
  v189 = v81;
  v190 = v179 + 16;
  v188 = v83;
  (v83)(v170);

  v85 = v7;
  v86 = sub_248382A80();
  v87 = sub_248383D90();

  v193 = v85;

  if (os_log_type_enabled(v86, v87))
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v203 = v91;
    *v89 = 138543618;
    v92 = *&v7[v80];
    *(v89 + 4) = v92;
    *v90 = v92;
    *(v89 + 12) = 2082;
    v93 = v92;
    v94 = sub_24814A378(v67, v78, &v203);
    v95 = v80;
    v96 = v94;

    *(v89 + 14) = v96;
    v80 = v95;
    _os_log_impl(&dword_248146000, v86, v87, "Set up UISync session: %{public}@ on display: %{public}s", v89, 0x16u);
    sub_24822D578(v90, &qword_27EE8FE40, &unk_24839C5A0);
    MEMORY[0x24C1CD5F0](v90, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v91);
    MEMORY[0x24C1CD5F0](v91, -1, -1);
    MEMORY[0x24C1CD5F0](v89, -1, -1);

    v97 = *(v82 + 8);
    v97(v170, v180);
  }

  else
  {

    v97 = *(v82 + 8);
    v97(v84, v180);
  }

  v98 = v201;
  v99 = sub_248382590();
  v100 = *(v99 + 16);
  if (v100)
  {
    v187 = v97;
    v194 = v80;
    v200 = *(v167 + 16);
    v101 = (*(v167 + 80) + 32) & ~*(v167 + 80);
    v186 = v99;
    v102 = v99 + v101;
    v195 = *(v167 + 72);
    v103 = (v167 + 8);
    v104 = MEMORY[0x277D84F90];
    while (1)
    {
      v105 = v197;
      v106 = v198;
      (v200)(v197, v102, v198);
      v107 = sub_248382460();
      (*v103)(v105, v106);
      v108 = *(v107 + 16);
      v109 = v104[2];
      v110 = v109 + v108;
      if (__OFADD__(v109, v108))
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        return;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v110 <= v104[3] >> 1)
      {
        if (*(v107 + 16))
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (v109 <= v110)
        {
          v112 = v109 + v108;
        }

        else
        {
          v112 = v109;
        }

        v104 = sub_24825A70C(isUniquelyReferenced_nonNull_native, v112, 1, v104, &unk_27EE904C8, &unk_24839D668, MEMORY[0x277CF8DC0]);
        if (*(v107 + 16))
        {
LABEL_27:
          v113 = (v104[3] >> 1) - v104[2];
          sub_2483822E0();
          if (v113 < v108)
          {
            goto LABEL_42;
          }

          swift_arrayInitWithCopy();

          v98 = v201;
          if (v108)
          {
            v114 = v104[2];
            v115 = __OFADD__(v114, v108);
            v116 = v114 + v108;
            if (v115)
            {
              goto LABEL_43;
            }

            v104[2] = v116;
          }

          goto LABEL_17;
        }
      }

      v98 = v201;
      if (v108)
      {
        goto LABEL_41;
      }

LABEL_17:
      v102 += v195;
      if (!--v100)
      {

        v117 = v199;
        v80 = v194;
        v97 = v187;
        goto LABEL_33;
      }
    }
  }

  v117 = v199;
LABEL_33:
  sub_2483816F0();
  sub_248381710();
  sub_248382070();
  swift_allocObject();
  v118 = sub_248382040();
  v119 = OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_clusterTransitionCoordinator;
  *&v193[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_clusterTransitionCoordinator] = v118;
  v120 = [v117 environmentConfiguration];
  [v120 isConnectedWirelessly];

  v121 = APSCarPlayScreenLatencyMs();
  if ((v121 & 0x80000000) != 0)
  {
    goto LABEL_44;
  }

  v122 = v121;
  v123 = v168;
  v188(v168, v189, v180);
  v124 = sub_248382A80();
  v125 = sub_248383DC0();
  if (os_log_type_enabled(v124, v125))
  {
    v126 = swift_slowAlloc();
    *v126 = 134349056;
    *(v126 + 4) = v122;
    _os_log_impl(&dword_248146000, v124, v125, "Using latency value: %{public}llu", v126, 0xCu);
    v127 = v126;
    v117 = v199;
    MEMORY[0x24C1CD5F0](v127, -1, -1);
  }

  v97(v123, v180);
  v201 = type metadata accessor for DBInstrumentClusterLayoutCoordinator(0);
  v128 = v193;
  v129 = *&v193[v119];

  v130 = [v117 screenInfo];
  v131 = v122;
  v132 = [v130 identifier];

  v133 = sub_248383960();
  v135 = v134;

  v136 = *&v7[v80];
  v137 = [v199 environmentConfiguration];
  [v137 screenScale];
  v139 = v138;

  v140 = [v199 environmentConfiguration];
  v141 = [v140 displayConfiguration];

  [v141 pointScale];
  v143 = v142;

  v144 = v129;
  v145 = v199;
  v146 = DBInstrumentClusterLayoutCoordinator.__allocating_init(transitionCoordinator:screenID:uisyncSession:latency:scaleFactor:)(v144, v133, v135, v136, v131, v139 / v143);
  *&v128[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_layoutCoordinator] = v146;
  [v165 addObserver_];
  type metadata accessor for DBInstrumentClusterSceneCoordinator(0);
  swift_unknownObjectRetain();
  v147 = v196;
  *&v128[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_sceneCoordinator] = sub_2482CB814(v145, v147);
  v148 = [v145 environmentConfiguration];
  v149 = [v148 thermalMonitor];

  *&v128[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_thermalMonitor] = v149;
  v150 = [v149 suggestedFrameRateLimit];
  v151 = v150;
  if (v150)
  {
    [v150 doubleValue];
    v153 = v152;
  }

  else
  {
    v153 = 0;
  }

  v154 = v169;
  *v169 = v153;
  *(v154 + 8) = v151 == 0;
  v155 = type metadata accessor for DBInstrumentClusterLayoutViewController(0);
  v202.receiver = v193;
  v202.super_class = v155;
  v156 = objc_msgSendSuper2(&v202, sel_initWithNibName_bundle_, 0, 0);
  v157 = *&v156[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_uisyncSession];
  v158 = *((*MEMORY[0x277D85000] & *v157) + 0x138);
  v159 = v156;
  v160 = v157;
  v158(v156);

  v161 = v199;
  [v199 setClusterThemeDelegate_];
  v162 = [v161 environmentConfiguration];
  [v162 addObserver_];

  v163 = *&v159[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_thermalMonitor];
  [v163 addObserver_];

  sub_248241B14();
  sub_2482424BC();
  sub_248246FE0();
  sub_24824601C();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(&v204);
  (*(v98 + 8))(v178, v173);
}

uint64_t sub_2482408C0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, char *a5@<X8>)
{
  v77 = a4;
  v93 = a2;
  v88 = a5;
  v75 = sub_248381170();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v73 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_248382A90();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FED8, &qword_24839D9B0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v96 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v95 = &v73 - v13;
  v14 = sub_2483825A0();
  v94 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v76 = &v73 - v18;
  v19 = sub_248381690();
  v86 = *(v19 - 8);
  v87 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_248381840();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v23 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = a1;
  DBThemeAssetDocument.document.getter(v23);
  sub_248381830();
  v82 = v23;
  sub_248381820();
  v83 = v21;
  result = sub_248381680();
  v90 = *(result + 16);
  if (v90)
  {
    v25 = 0;
    v91 = v94 + 16;
    v92 = result;
    v26 = (v10 + 8);
    v89 = (v94 + 8);
    while (v25 < *(result + 16))
    {
      (*(v94 + 16))(v16, result + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v25, v14);
      sub_248382540();
      v98 = v93;
      v99 = a3;

      MEMORY[0x24C1C8E70](&v98, v14, MEMORY[0x277D837D0]);
      sub_24822D648(&qword_27EE904D8, &qword_27EE8FED8, &qword_24839D9B0, MEMORY[0x277CF8B20]);
      sub_248383AE0();
      sub_248383AE0();
      if (v98 == v97[0] && v99 == v97[1])
      {
        v42 = *v26;
        (*v26)(v96, v9);
        v42(v95, v9);

LABEL_15:

        (*(v86 + 8))(v83, v87);
        (*(v84 + 8))(v82, v85);
        v43 = *(v94 + 32);
        v44 = v76;
        v43(v76, v16, v14);
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FE28, &qword_24839CCD0);
        v46 = *(v45 + 48);
        v47 = v88;
        v43(v88, v44, v14);
        sub_24814F6F4(v100, &v47[v46]);
        return (*(*(v45 - 8) + 56))(v47, 0, 1, v45);
      }

      v27 = sub_248384680();
      v28 = v16;
      v29 = v14;
      v30 = *v26;
      (*v26)(v96, v9);
      v30(v95, v9);
      v14 = v29;
      v16 = v28;

      if (v27)
      {
        goto LABEL_15;
      }

      ++v25;
      (*v89)(v28, v14);
      result = v92;
      if (v90 == v25)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    v31 = v78;
    v32 = [v78 documentInfo];
    if (v32)
    {
      v33 = v32;
      v34 = sub_2483838A0();
    }

    else
    {
      v34 = 0;
    }

    v35 = v81;
    v36 = v80;
    v37 = v79;
    v38 = v77;
    if (v77)
    {

      v39 = sub_248383930();
      if (v34)
      {
        v40 = sub_248383880();

        v41 = 1;
      }

      else
      {
        v40 = 0;
        v41 = 2;
      }

      v48 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:v39 code:v41 userInfo:v40];

      v49 = v48;
      *v38 = v48;
    }

    v50 = sub_24827C568();
    (*(v36 + 16))(v37, v50, v35);

    v51 = v31;
    v52 = sub_248382A80();
    v53 = sub_248383DA0();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v97[0] = v55;
      *v54 = 136446978;
      v56 = v93;
      *(v54 + 4) = sub_24814A378(v93, a3, v97);
      v96 = a3;
      *(v54 + 12) = 2082;
      v57 = [v51 documentURL];
      v58 = v73;
      sub_248381120();

      sub_24825D5EC(&qword_27EE904E0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v59 = v75;
      v60 = sub_248384650();
      v62 = v61;
      (*(v74 + 8))(v58, v59);
      v63 = sub_24814A378(v60, v62, v97);

      *(v54 + 14) = v63;
      *(v54 + 22) = 2082;
      v98 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE904E8, &qword_24839D678);
      sub_24822D648(&qword_27EE904F0, &unk_27EE8FEB0, &unk_24839CD00, MEMORY[0x277D83538]);
      v64 = sub_2483841D0();
      v66 = v65;

      v67 = sub_24814A378(v64, v66, v97);

      *(v54 + 24) = v67;
      *(v54 + 32) = 2082;
      v98 = v56;
      v99 = v96;
      sub_24825EAC8();
      v68 = sub_248384720();
      v70 = sub_24814A378(v68, v69, v97);

      *(v54 + 34) = v70;
      _os_log_impl(&dword_248146000, v52, v53, "Unable to load layout for display %{public}s from %{public}s, (info = %{public}s): %{public}s", v54, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x24C1CD5F0](v55, -1, -1);
      MEMORY[0x24C1CD5F0](v54, -1, -1);

      (*(v80 + 8))(v79, v81);
    }

    else
    {

      (*(v36 + 8))(v37, v35);
    }

    __swift_destroy_boxed_opaque_existential_0(v100);
    (*(v86 + 8))(v83, v87);
    (*(v84 + 8))(v82, v85);
    v71 = v88;
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FE28, &qword_24839CCD0);
    return (*(*(v72 - 8) + 56))(v71, 1, 1, v72);
  }

  return result;
}

uint64_t DBInstrumentClusterLayoutViewController.init(coder:)(void *a1)
{
  v2 = v1;
  *(v1 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController____lazy_storage___dataSourceManager) = 0;
  *(v1 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_stagedThemeData) = 0;
  v3 = v1 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_frameRateLimit;
  *v3 = 0;
  *(v3 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_requestContentSourceZone1) = 0;
  *(v1 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_requestContentSourceZone2) = 0;
  *(v1 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_cableStateSource) = 0;
  v4 = (v1 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_appearanceCompletion);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_appearancePublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FE10, &qword_24839CCC0);
  swift_allocObject();
  *(v1 + v5) = sub_248382E00();
  v6 = OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_requestContentDebounceTime;
  sub_248384180();
  v7 = OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_layoutControl;
  *(v1 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_layoutControl) = 0;
  v8 = OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_layoutViewController;
  *(v1 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_layoutViewController) = 0;
  *(v1 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_cancellables) = MEMORY[0x277D84FA0];
  *(v1 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_allowTransitions) = 0;
  v9 = OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_nextLayout;
  v10 = sub_2483824B0();
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = v1 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_focusToken;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_closeButtonFocusEffectCoordinator;
  type metadata accessor for CloseButtonFocusEffectCoordinator(0);
  v13 = swift_allocObject();
  sub_248382E50();

  *(v2 + v12) = v13;

  sub_248167864(*v4, v4[1]);

  v14 = sub_2483841A0();
  (*(*(v14 - 8) + 8))(v2 + v6, v14);

  sub_24822D578(v2 + v9, &qword_27EE8FE30, &unk_2483A14F0);

  type metadata accessor for DBInstrumentClusterLayoutViewController(0);
  swift_deallocPartialClassInstance();
  return 0;
}

id DBInstrumentClusterLayoutViewController.__deallocating_deinit()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v1, v0);

  v3.receiver = v0;
  v3.super_class = type metadata accessor for DBInstrumentClusterLayoutViewController(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_248241B14()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90340, qword_2483A2190);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94260, &unk_24839D650);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_248381FA0();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_248382000();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_248381FD0();

  (*((*MEMORY[0x277D85000] & **(v0 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_layoutCoordinator)) + 0x108))(v9);
  sub_24822D648(&qword_27EE90360, &qword_27EE90340, qword_2483A2190, MEMORY[0x277CBCEC8]);
  sub_248382FC0();
  (*(v2 + 8))(v4, v1);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_24822D648(&unk_27EE904B0, &qword_27EE94260, &unk_24839D650, MEMORY[0x277CBCC18]);
  sub_248383000();

  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  sub_248382DB0();
  swift_endAccess();
}

void sub_248241EDC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE904C0, &qword_24839D660);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_24824D52C();
    if (v10)
    {
      (*((*MEMORY[0x277D85000] & **&v8[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_sceneCoordinator]) + 0xC8))(&v14, v9);

      if (v15)
      {
        sub_24814F6F4(&v14, v16);
        sub_24833AE40(a2, v6);
        v11 = v17;
        v12 = v18;
        __swift_project_boxed_opaque_existential_0(v16, v17);
        (*(v12 + 16))(v6, v11, v12);
        sub_24822D578(v6, &qword_27EE904C0, &qword_24839D660);
        __swift_destroy_boxed_opaque_existential_0(v16);
      }

      else
      {
        sub_24822D578(&v14, &unk_27EE90B10, &qword_24839D218);
      }
    }
  }
}

char *sub_248242080(unsigned __int8 *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE942D0, qword_2483A2320);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v26 - v4;
  v6 = sub_248381EC0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FE30, &unk_2483A14F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90B20, &unk_24839D4A0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v26 - v14;
  v16 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;
    if (v16)
    {
      sub_248381EF0();
      v19 = sub_2483824B0();
      v20 = *(v19 - 8);
      if ((*(v20 + 48))(v12, 1, v19) == 1)
      {
        sub_24822D578(v12, &qword_27EE8FE30, &unk_2483A14F0);
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80, &unk_24839D9C0);
        (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
        sub_24822D578(v15, &qword_27EE90B20, &unk_24839D4A0);
      }

      else
      {
        sub_248382450();
        (*(v20 + 8))(v12, v19);
        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80, &unk_24839D9C0);
        (*(*(v22 - 8) + 56))(v15, 0, 1, v22);
        sub_24822D578(v15, &qword_27EE90B20, &unk_24839D4A0);
        v23 = *&v18[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_sceneCoordinator];
        v24 = *((*MEMORY[0x277D85000] & *v23) + 0xD0);
        v25 = v23;
        v24();
      }
    }

    sub_248381ED0();
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {

      return sub_24822D578(v5, &unk_27EE942D0, qword_2483A2320);
    }

    else
    {
      (*(v7 + 32))(v9, v5, v6);
      sub_2482493A4(v9);

      return (*(v7 + 8))(v9, v6);
    }
  }

  return result;
}

uint64_t sub_2482424BC()
{
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE902C8, &qword_24839D500);
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v143 = &v104 - v1;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE902D0, &qword_24839D508);
  v147 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v146 = &v104 - v2;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE902D8, &qword_24839D510);
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v148 = &v104 - v3;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE902E0, &qword_24839D518);
  v153 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v152 = &v104 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94210, &qword_24839D520);
  MEMORY[0x28223BE20](v5 - 8);
  v159 = &v104 - v6;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE902F0, &qword_24839D528);
  v161 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v155 = &v104 - v7;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE902F8, &qword_24839D530);
  v163 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v140 = &v104 - v8;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90300, &qword_24839D538);
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v138 = &v104 - v9;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90308, &qword_24839D540);
  v162 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v139 = &v104 - v10;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90310, &qword_24839D548);
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v135 = &v104 - v11;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90318, &qword_24839D550);
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v120 = &v104 - v12;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90320, &qword_24839D558);
  v130 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v125 = &v104 - v13;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90328, &qword_24839D560);
  v126 = *(v128 - 1);
  MEMORY[0x28223BE20](v128);
  v123 = &v104 - v14;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90330, &qword_24839D568);
  v127 = *(v129 - 1);
  MEMORY[0x28223BE20](v129);
  v124 = &v104 - v15;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90338, &unk_24839D570);
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v132 = &v104 - v16;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90340, qword_2483A2190);
  MEMORY[0x28223BE20](v119);
  v114 = &v104 - v17;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90238, &qword_24839D4C0);
  MEMORY[0x28223BE20](v111);
  v110 = &v104 - v18;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90348, &qword_24839D580);
  v115 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v112 = &v104 - v19;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90350, &qword_24839D588);
  v116 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v113 = &v104 - v20;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90358, &qword_24839D590);
  v160 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v165 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v166 = &v104 - v23;
  v24 = sub_248382250();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v104 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v0 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_dataSources);
  v30 = *MEMORY[0x277CF8D90];
  v168 = *(v25 + 104);
  v168(v28, v30, v24, v26);
  v31 = *(*v29 + 408);
  v32 = v31(v28);
  v33 = *(v25 + 8);
  v33(v28, v24);
  v34 = OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_requestContentSourceZone1;
  v35 = v167;
  *(v167 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_requestContentSourceZone1) = v32;
  v36 = v35;

  (v168)(v28, *MEMORY[0x277CF8D98], v24);
  v37 = v36;
  v38 = v31(v28);
  v33(v28, v24);
  v39 = OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_requestContentSourceZone2;
  *(v37 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_requestContentSourceZone2) = v38;

  v41 = (*(*v29 + 416))(v40);
  v42 = OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_cableStateSource;
  *(v37 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_cableStateSource) = v41;

  if (*(v37 + v34))
  {
    v44 = *(v37 + v39);
    if (v44)
    {
      v45 = *(v37 + v42);
      if (v45)
      {
        v109 = *(v37 + v34);

        sub_248381F00();
        sub_248381F90();
        v46 = MEMORY[0x277CBCEC8];
        sub_24822D648(&unk_27EE90250, &qword_27EE90238, &qword_24839D4C0, MEMORY[0x277CBCEC8]);
        sub_24822D648(&qword_27EE90360, &qword_27EE90340, qword_2483A2190, v46);
        v47 = v112;
        sub_248382D00();
        v48 = MEMORY[0x277CBCAF0];
        sub_24822D648(&qword_27EE90368, &qword_27EE90348, &qword_24839D580, MEMORY[0x277CBCAF0]);
        v49 = v113;
        v50 = v117;
        sub_248382F60();
        (*(v115 + 8))(v47, v50);
        v117 = MEMORY[0x277CBCC08];
        sub_24822D648(&qword_27EE90370, &qword_27EE90350, &qword_24839D588, MEMORY[0x277CBCC08]);
        v51 = v118;
        v52 = sub_248382F10();
        v115 = v44;
        v53 = v52;
        (*(v116 + 8))(v49, v51);
        v170[0] = v53;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90378, &qword_24839D598);
        v54 = MEMORY[0x277CBCD90];
        sub_24822D648(&unk_27EE90380, &qword_27EE90378, &qword_24839D598, MEMORY[0x277CBCD90]);
        v55 = v166;
        sub_248382FF0();

        v108 = v45;
        v170[0] = v45;
        v119 = *(v160 + 16);
        v168 = (v160 + 16);
        v56 = v164;
        v119(v165, v55, v164);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92EE0, &qword_24839D5A0);
        sub_24822D648(&qword_27EE90390, &unk_27EE92EE0, &qword_24839D5A0, v54);
        v57 = sub_24822D648(&qword_27EE90398, &qword_27EE90358, &qword_24839D590, MEMORY[0x277CBCBC0]);
        v58 = v120;
        v118 = v57;
        sub_248382D00();
        v114 = v48;
        sub_24822D648(&qword_27EE903A0, &qword_27EE90318, &qword_24839D550, v48);
        v59 = v122;
        v60 = sub_248382F10();
        (*(v121 + 8))(v58, v59);
        v170[0] = v60;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE903A8, &qword_24839D5A8);
        sub_24822D648(&qword_27EE903B0, &qword_27EE903A8, &qword_24839D5A8, v54);
        v61 = v125;
        sub_248382F70();

        type metadata accessor for CAFCableState(0);
        v122 = MEMORY[0x277CBCC90];
        sub_24822D648(&qword_27EE903B8, &qword_27EE90320, &qword_24839D558, MEMORY[0x277CBCC90]);
        v62 = v123;
        v63 = v131;
        sub_248382F60();
        (*(v130 + 8))(v61, v63);
        v64 = v124;
        v65 = v128;
        sub_248382D30();
        (*(v126 + 8))(v62, v65);
        sub_24822D648(&qword_27EE903C0, &qword_27EE90330, &qword_24839D568, v117);
        v66 = v132;
        v67 = v129;
        sub_248382FD0();
        (*(v127 + 8))(v64, v67);
        swift_allocObject();
        swift_unknownObjectWeakInit();
        v131 = MEMORY[0x277CBCBE0];
        sub_24822D648(&qword_27EE903C8, &qword_27EE90338, &unk_24839D570, MEMORY[0x277CBCBE0]);
        v68 = v134;
        sub_248383000();

        (*(v133 + 8))(v66, v68);
        v134 = OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_cancellables;
        swift_beginAccess();
        sub_248382DB0();
        swift_endAccess();

        v170[0] = sub_248236C4C();
        v119(v165, v166, v56);
        v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE903D0, &qword_24839D5B0);
        v116 = v54;
        v132 = sub_24822D648(&qword_27EE8FBD0, &unk_27EE903D0, &qword_24839D5B0, v54);
        v69 = v155;
        sub_248382D00();
        v130 = sub_24822D648(&qword_27EE903E0, &qword_27EE902F0, &qword_24839D528, v48);
        v70 = v156;
        v71 = sub_248382F10();
        v112 = v71;
        v72 = *(v161 + 8);
        v161 += 8;
        v129 = v72;
        (v72)(v69, v70);
        v170[0] = v71;
        v124 = OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_requestContentDebounceTime;
        v128 = objc_opt_self();
        v73 = [v128 mainRunLoop];
        v169 = v73;
        v126 = sub_248384170();
        v74 = *(v126 - 8);
        v125 = *(v74 + 56);
        v127 = v74 + 56;
        v75 = v159;
        (v125)(v159, 1, 1, v126);
        v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE903E8, &unk_24839D5B8);
        v121 = sub_24814FB28(0, &qword_27EE903F0, 0x277CBEB88);
        v120 = sub_24822D648(&qword_27EE903F8, &qword_27EE903E8, &unk_24839D5B8, v54);
        v113 = sub_24822D338();
        v76 = v140;
        sub_248382FB0();
        sub_24822D578(v75, &qword_27EE94210, &qword_24839D520);

        v112 = sub_24822D648(&qword_27EE90408, &qword_27EE902F8, &qword_24839D530, MEMORY[0x277CBCCF8]);
        v77 = v138;
        v78 = v158;
        sub_248382F70();
        v79 = *(v163 + 8);
        v163 += 8;
        v111 = v79;
        v79(v76, v78);
        v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90410, &qword_24839C800);
        v107 = sub_24822D648(&qword_27EE90418, &qword_27EE90300, &qword_24839D538, v122);
        v80 = v139;
        v81 = v142;
        sub_248382F60();
        v105 = *(v141 + 1);
        v105(v77, v81);
        v106 = sub_24822D648(&unk_27EE90420, &qword_27EE90308, &qword_24839D540, v117);
        sub_2482379D8();
        v82 = v135;
        v83 = v157;
        sub_248382FD0();
        v84 = *(v162 + 8);
        v162 += 8;
        v141 = v84;
        v84(v80, v83);
        swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_24822D648(&qword_27EE90438, &qword_27EE90310, &qword_24839D548, v131);
        v85 = v137;
        sub_248383000();

        (*(v136 + 8))(v82, v85);
        swift_beginAccess();
        sub_248382DB0();
        swift_endAccess();

        v170[0] = sub_248236C4C();
        v119(v165, v166, v164);
        v86 = v155;
        sub_248382D00();
        v87 = v156;
        v88 = sub_248382F10();
        (v129)(v86, v87);
        v170[0] = v88;
        v89 = [v128 mainRunLoop];
        v169 = v89;
        v90 = v159;
        (v125)(v159, 1, 1, v126);
        sub_248382FB0();
        sub_24822D578(v90, &qword_27EE94210, &qword_24839D520);

        v91 = v158;
        sub_248382F70();
        v111(v76, v91);
        sub_248382F60();
        v105(v77, v81);
        swift_allocObject();
        swift_unknownObjectWeakInit();
        v92 = v157;
        sub_248383000();

        v141(v80, v92);
        swift_beginAccess();
        sub_248382DB0();
        swift_endAccess();

        v170[0] = *(v37 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_appearancePublisher);
        v93 = v166;
        v94 = v164;
        v119(v165, v166, v164);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FE10, &qword_24839CCC0);
        sub_24822D648(&qword_27EE90440, &qword_27EE8FE10, &qword_24839CCC0, MEMORY[0x277CBCE20]);
        v95 = v143;
        sub_248382D00();
        sub_24822D648(&qword_27EE90448, &qword_27EE902C8, &qword_24839D500, v114);
        v96 = v145;
        v97 = sub_248382F10();
        (*(v144 + 8))(v95, v96);
        v170[0] = v97;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90450, &qword_24839D5C8);
        sub_24822D648(&qword_27EE90458, &qword_27EE90450, &qword_24839D5C8, v116);
        v98 = v146;
        sub_248382F70();

        type metadata accessor for UIUserInterfaceStyle(0);
        sub_24822D648(&qword_27EE90460, &qword_27EE902D0, &qword_24839D508, v122);
        v99 = v148;
        v100 = v149;
        sub_248382F60();
        (*(v147 + 8))(v98, v100);
        sub_24822D648(&qword_27EE90468, &qword_27EE902D8, &qword_24839D510, v117);
        sub_24825D5EC(&qword_27EE90470, type metadata accessor for UIUserInterfaceStyle, &unk_24839D0E0);
        v101 = v152;
        v102 = v151;
        sub_248382FD0();
        (*(v150 + 8))(v99, v102);
        swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_24822D648(&qword_27EE90478, &unk_27EE902E0, &qword_24839D518, v131);
        v103 = v154;
        sub_248383000();

        (*(v153 + 8))(v101, v103);
        swift_beginAccess();
        sub_248382DB0();
        swift_endAccess();

        sub_248382D20();
        __swift_project_boxed_opaque_existential_0(v170, v170[3]);
        swift_beginAccess();
        sub_248382D80();
        swift_endAccess();

        (*(v160 + 8))(v93, v94);
        return __swift_destroy_boxed_opaque_existential_0(v170);
      }
    }
  }

  return result;
}

uint64_t sub_24824443C(uint64_t a1, int a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FE30, &unk_2483A14F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  v10 = sub_248382A90();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24827C568();
  (*(v11 + 16))(v13, v14, v10);
  sub_248232C78(a1, v9, &qword_27EE8FE30, &unk_2483A14F0);
  v15 = sub_248382A80();
  v16 = sub_248383D80();
  if (os_log_type_enabled(v15, v16))
  {
    v31 = v16;
    v32 = v10;
    v33 = a1;
    v17 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v35 = v30;
    *v17 = 136446466;
    v34 = a2;
    if (a2)
    {
      v18 = 1702195828;
    }

    else
    {
      v18 = 0x65736C6166;
    }

    if (a2)
    {
      v19 = 0xE400000000000000;
    }

    else
    {
      v19 = 0xE500000000000000;
    }

    v20 = sub_24814A378(v18, v19, &v35);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2082;
    sub_248232C78(v9, v6, &qword_27EE8FE30, &unk_2483A14F0);
    v21 = sub_2483824B0();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v6, 1, v21) == 1)
    {
      sub_24822D578(v6, &qword_27EE8FE30, &unk_2483A14F0);
      v23 = 0xE300000000000000;
      v24 = 7104878;
    }

    else
    {
      v24 = sub_248382410();
      v23 = v25;
      (*(v22 + 8))(v6, v21);
    }

    sub_24822D578(v9, &qword_27EE8FE30, &unk_2483A14F0);
    v26 = sub_24814A378(v24, v23, &v35);

    *(v17 + 14) = v26;
    _os_log_impl(&dword_248146000, v15, v31, "Valid Layout check: transitioning: %{public}s, activeLayout: %{public}s", v17, 0x16u);
    v27 = v30;
    swift_arrayDestroy();
    MEMORY[0x24C1CD5F0](v27, -1, -1);
    MEMORY[0x24C1CD5F0](v17, -1, -1);

    (*(v11 + 8))(v13, v32);
    a2 = v34;
    a1 = v33;
  }

  else
  {

    sub_24822D578(v9, &qword_27EE8FE30, &unk_2483A14F0);
    (*(v11 + 8))(v13, v10);
  }

  v28 = sub_2483824B0();
  return ((*(*(v28 - 8) + 48))(a1, 1, v28) != 1) & (a2 ^ 1u);
}