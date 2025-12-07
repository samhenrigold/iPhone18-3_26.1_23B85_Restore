unint64_t sub_20C43A260(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_20C43A32C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_20C427900(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_20C43A32C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_20C43A438(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_20C460780();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_20C43A438(uint64_t a1, unint64_t a2)
{
  v3 = sub_20C43A484(a1, a2);
  sub_20C43A5B4(&unk_2823644C8);
  return v3;
}

void *sub_20C43A484(uint64_t a1, unint64_t a2)
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

  v6 = sub_20C43A6A0(v5, 0);
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

  result = sub_20C460780();
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
        v10 = sub_20C460510();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_20C43A6A0(v10, 0);
        result = sub_20C460730();
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

uint64_t sub_20C43A5B4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_20C43A714(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_20C43A6A0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB7B8, &qword_20C464A38);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_20C43A714(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB7B8, &qword_20C464A38);
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

void sub_20C43A808(uint64_t (*a1)(__int128 *, char *), uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v11[1] = *MEMORY[0x277D85DE8];
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v10 = swift_slowAlloc();
      sub_20C43AF68(v10, v7, a3, v5);
      MEMORY[0x20F2FB570](v10, -1, -1);
      return;
    }
  }

  MEMORY[0x28223BE20](a1);
  v9 = v11 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v9, v8);
  sub_20C43AC18(v9, v7, a3, v5);
  if (v3)
  {
    swift_willThrow();
  }
}

uint64_t sub_20C43A9C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20C43AA2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20C43AA94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20C43AAF4(uint64_t a1)
{
  v4 = *(type metadata accessor for ImageAsset(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + ((v6 + 87) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_20C414268;

  return sub_20C436334(a1, v1 + v5, v1 + v6, v8, v9);
}

void sub_20C43AC18(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *, char *))
{
  v5 = v4;
  v39 = a4;
  v33 = a2;
  v34 = a1;
  v7 = &qword_27C7BAF10;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
  v38 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v35 = 0;
  v11 = 0;
  v51 = a3;
  v12 = *(a3 + 64);
  v36 = a3 + 64;
  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v37 = (v13 + 63) >> 6;
  if ((v14 & v12) != 0)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_10:
      v19 = v16 | (v11 << 6);
      v20 = v51[7];
      v21 = (v51[6] + 80 * v19);
      v50[0] = *v21;
      v22 = v21[4];
      v24 = v21[1];
      v23 = v21[2];
      v50[3] = v21[3];
      v50[4] = v22;
      v50[1] = v24;
      v50[2] = v23;
      v25 = v21[3];
      v47 = v21[2];
      v48 = v25;
      v49 = v21[4];
      v26 = v21[1];
      v45 = *v21;
      v46 = v26;
      sub_20C409B04(v20 + *(v38 + 72) * v19, v10, v7, &qword_20C4640D0);
      sub_20C40C520(v50, &v40);
      v27 = v39(&v45, v10);
      if (v5)
      {
        sub_20C40B440(v10, &qword_27C7BAF10, &qword_20C4640D0);
        v42 = v47;
        v43 = v48;
        v44 = v49;
        v41 = v46;
        v40 = v45;
        sub_20C40C57C(&v40);
        return;
      }

      v28 = v7;
      v29 = v27;
      v30 = v28;
      sub_20C40B440(v10, v28, &qword_20C4640D0);
      v42 = v47;
      v43 = v48;
      v44 = v49;
      v41 = v46;
      v40 = v45;
      sub_20C40C57C(&v40);
      if (v29)
      {
        *(v34 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        if (__OFADD__(v35++, 1))
        {
          break;
        }
      }

      v7 = v30;
      v5 = 0;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_17:
    sub_20C43AFF8(v34, v33, v35, v51);
  }

  else
  {
LABEL_5:
    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v37)
      {
        goto LABEL_17;
      }

      v18 = *(v36 + 8 * v11);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v15 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void *sub_20C43AF68(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *, char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_20C43AC18(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void *sub_20C43AFF8(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
  v35 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v34 = &v32 - v9;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB8B0, &qword_20C464C10);
  result = sub_20C4607D0();
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
  v32 = a4;
  v33 = result + 8;
  v14 = v34;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v36 = (v12 - 1) & v12;
LABEL_16:
    v18 = v15 | (v13 << 6);
    v19 = a4[7];
    v20 = (a4[6] + 80 * v18);
    v43 = *v20;
    v21 = v20[4];
    v23 = v20[1];
    v22 = v20[2];
    v46 = v20[3];
    v47 = v21;
    v44 = v23;
    v45 = v22;
    v24 = *(v35 + 72);
    sub_20C409B04(v19 + v24 * v18, v14, &qword_27C7BAF10, &qword_20C4640D0);
    v40 = v45;
    v41 = v46;
    v42 = v47;
    *&v38[72] = v43;
    v39 = v44;
    sub_20C460930();
    sub_20C40C520(&v43, &v37);
    ImageAssetCacheKey.hash(into:)(v38);
    sub_20C460970();
    v25 = v33;
    v26 = sub_20C460710();
    *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v27 = (v11[6] + 80 * v26);
    *v27 = v43;
    v28 = v44;
    v29 = v45;
    v30 = v47;
    v27[3] = v46;
    v27[4] = v30;
    v27[1] = v28;
    v27[2] = v29;
    result = sub_20C409BD0(v14, v11[7] + v26 * v24, &qword_27C7BAF10, &qword_20C4640D0);
    ++v11[2];
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_21;
    }

    a4 = v32;
    v12 = v36;
    if (!a3)
    {
      return v11;
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
      return v11;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v36 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void (*sub_20C43B2D0(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x58uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *(*(type metadata accessor for ImageAsset(0) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[8] = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_20C43A9C4(a2, v9, type metadata accessor for ImageAsset);
  v6[9] = sub_20C43B710(v6);
  v6[10] = sub_20C43B45C(v6 + 4, v9, isUniquelyReferenced_nonNull_native);
  return sub_20C43B3CC;
}

void sub_20C43B3CC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 64);
  (*(*a1 + 80))();
  sub_20C43AA94(v3, type metadata accessor for ImageAsset);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_20C43B45C(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x38uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = a2;
  *(v9 + 16) = v4;
  v11 = *(type metadata accessor for ImageAsset(0) - 8);
  *(v10 + 24) = v11;
  if (v8)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  *(v10 + 32) = v12;
  v13 = *v4;
  v14 = sub_20C457F00(a2);
  *(v10 + 48) = v15 & 1;
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_19;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      sub_20C45A474();
      v14 = v22;
      goto LABEL_14;
    }

    sub_20C4587FC(v19, a3 & 1);
    v14 = sub_20C457F00(a2);
    if ((v20 & 1) == (v23 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_20C4608E0();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 40) = v14;
  if (v20)
  {
    v24 = *(*(*v4 + 56) + 8 * v14);
  }

  else
  {
    v24 = 0;
  }

  *v10 = v24;
  return sub_20C43B608;
}

void sub_20C43B608(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = *v1[2];
    v4 = v1[5];
    if ((*a1)[6])
    {
      *(v3[7] + 8 * v4) = v2;
    }

    else
    {
      v7 = v1[4];
      sub_20C43A9C4(v1[1], v7, type metadata accessor for ImageAsset);
      sub_20C45A10C(v4, v7, v2, v3);
    }
  }

  else if ((*a1)[6])
  {
    v5 = v1[5];
    v6 = *v1[2];
    sub_20C43AA94(*(v6 + 48) + *(v1[3] + 72) * v5, type metadata accessor for ImageAsset);
    sub_20C45968C(v5, v6);
  }

  v8 = v1[4];

  free(v8);

  free(v1);
}

uint64_t (*sub_20C43B710(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_20C43B738;
}

uint64_t sub_20C43B744(uint64_t a1)
{
  v4 = *(type metadata accessor for ImageAsset(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + ((v6 + 87) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_20C414268;

  return sub_20C436334(a1, v1 + v5, v1 + v6, v8, v9);
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for ImageAsset(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = sub_20C45FD00();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = *(v1 + 28);
  v9 = sub_20C45FC30();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v5 + v8, 1, v9))
  {
    (*(v10 + 8))(v5 + v8, v9);
  }

  return MEMORY[0x2821FE8E8](v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_20C43BA44(uint64_t a1)
{
  v4 = *(type metadata accessor for ImageAsset(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + ((v6 + 87) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_20C413D30;

  return sub_20C435F4C(a1, v1 + v5, v1 + v6, v8, v9);
}

uint64_t sub_20C43BB68(uint64_t a1)
{
  v4 = *(type metadata accessor for ImageAsset(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(type metadata accessor for DynamicImageAssetFeature(0) - 8);
  v8 = (v6 + *(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_20C414268;

  return sub_20C433C88(a1, v1 + v5, v1 + v8, v1 + v9, v10, v11);
}

uint64_t sub_20C43BD3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_20C43BE40(uint64_t a1)
{
  sub_20C406420();
  if (v1 <= 0x3F)
  {
    sub_20C41DBC4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_20C43BEFC(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v3 = type metadata accessor for ImageAsset(0);
  MEMORY[0x28223BE20](v3 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_20C45FCC0();
  v5 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DynamicImageAssetFeature.TaskIdentifier(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB7A8, &unk_20C464A10);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v30 - v15;
  v18 = &v30 + *(v17 + 56) - v15;
  sub_20C43A9C4(a1, &v30 - v15, type metadata accessor for DynamicImageAssetFeature.TaskIdentifier);
  sub_20C43A9C4(v33, v18, type metadata accessor for DynamicImageAssetFeature.TaskIdentifier);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_20C43A9C4(v16, v13, type metadata accessor for DynamicImageAssetFeature.TaskIdentifier);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v27 = v32;
      (*(v5 + 32))(v7, v18, v32);
      v26 = sub_20C45FCA0();
      v28 = *(v5 + 8);
      v28(v7, v27);
      v28(v13, v27);
      goto LABEL_11;
    }

    (*(v5 + 8))(v13, v32);
    goto LABEL_8;
  }

  sub_20C43A9C4(v16, v10, type metadata accessor for DynamicImageAssetFeature.TaskIdentifier);
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0B0, &unk_20C462120) + 48);
  v20 = *&v10[v19 + 64];
  v44 = *&v10[v19 + 48];
  v45 = v20;
  v21 = *&v10[v19 + 32];
  v42 = *&v10[v19 + 16];
  v43 = v21;
  v41 = *&v10[v19];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_20C40C57C(&v41);
    sub_20C43AA94(v10, type metadata accessor for ImageAsset);
LABEL_8:
    sub_20C40B440(v16, &qword_27C7BB7A8, &unk_20C464A10);
    goto LABEL_9;
  }

  v22 = *&v18[v19 + 48];
  v38 = *&v18[v19 + 32];
  v39 = v22;
  v40 = *&v18[v19 + 64];
  v23 = *&v18[v19 + 16];
  v36 = *&v18[v19];
  v37 = v23;
  v24 = v31;
  sub_20C43AA2C(v18, v31, type metadata accessor for ImageAsset);
  v25 = static ImageAsset.== infix(_:_:)(v10, v24);
  sub_20C43AA94(v10, type metadata accessor for ImageAsset);
  if (v25)
  {
    v35[2] = v43;
    v35[3] = v44;
    v35[4] = v45;
    v35[0] = v41;
    v35[1] = v42;
    v34[2] = v38;
    v34[3] = v39;
    v34[4] = v40;
    v34[0] = v36;
    v34[1] = v37;
    v26 = _s12FitnessAsset05ImageB8CacheKeyV2eeoiySbAC_ACtFZ_0(v35, v34);
    sub_20C43AA94(v24, type metadata accessor for ImageAsset);
    sub_20C40C57C(&v36);
    sub_20C40C57C(&v41);
LABEL_11:
    sub_20C43AA94(v16, type metadata accessor for DynamicImageAssetFeature.TaskIdentifier);
    return v26 & 1;
  }

  sub_20C43AA94(v24, type metadata accessor for ImageAsset);
  sub_20C40C57C(&v41);
  sub_20C40C57C(&v36);
  sub_20C43AA94(v16, type metadata accessor for DynamicImageAssetFeature.TaskIdentifier);
LABEL_9:
  v26 = 0;
  return v26 & 1;
}

unint64_t sub_20C43C430()
{
  result = qword_27C7BB7E8;
  if (!qword_27C7BB7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB7E8);
  }

  return result;
}

unint64_t sub_20C43C484()
{
  result = qword_27C7BB800;
  if (!qword_27C7BB800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB800);
  }

  return result;
}

uint64_t objectdestroy_29Tm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t objectdestroy_32Tm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t objectdestroy_35Tm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t objectdestroy_38Tm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_20C43C69C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  v11 = a3[3];
  v24[2] = a3[2];
  v24[3] = v11;
  v24[4] = a3[4];
  v12 = a3[1];
  v24[0] = *a3;
  v24[1] = v12;
  v13 = *(type metadata accessor for DynamicImageAssetState(0) + 20);
  v14 = *(v4 + v13);
  if (*(v14 + 16) && (v15 = sub_20C457F00(a2), (v16 & 1) != 0))
  {
    v17 = *(*(v14 + 56) + 8 * v15);
  }

  else
  {
    v17 = sub_20C43C99C(MEMORY[0x277D84F90]);
  }

  sub_20C409B04(a1, v10, &qword_27C7BAF10, &qword_20C4640D0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = v17;
  sub_20C459D30(v10, v24, isUniquelyReferenced_nonNull_native);
  v19 = v23;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v4 + v13);
  result = sub_20C459E94(v19, a2, v20);
  *(v4 + v13) = v23;
  return result;
}

uint64_t sub_20C43C7F4@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[3];
  v24[2] = a2[2];
  v24[3] = v6;
  v24[4] = a2[4];
  v7 = a2[1];
  v24[0] = *a2;
  v24[1] = v7;
  v8 = *(v3 + *(type metadata accessor for DynamicImageAssetState(0) + 20));
  if (*(v8 + 16))
  {
    v9 = sub_20C457F00(a1);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);
      if (*(v11 + 16))
      {

        v12 = sub_20C457E7C(v24);
        if (v13)
        {
          v14 = v12;
          v15 = *(v11 + 56);
          v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
          v23 = *(v16 - 8);
          sub_20C409B04(v15 + *(v23 + 72) * v14, a3, &qword_27C7BAF10, &qword_20C4640D0);

          v17 = *(v23 + 56);
          v18 = a3;
          v19 = 0;
          v20 = v16;
          goto LABEL_8;
        }
      }
    }
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
  v17 = *(*(v21 - 8) + 56);
  v20 = v21;
  v18 = a3;
  v19 = 1;
LABEL_8:

  return v17(v18, v19, 1, v20);
}

void *sub_20C43C99C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB8B8, &qword_20C464C18);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v26 - v4);
  v6 = *(a1 + 16);
  if (!v6)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB8B0, &qword_20C464C10);
  v7 = sub_20C4607D0();
  v8 = *(v2 + 48);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = *(v3 + 72);

  sub_20C409B04(a1 + v9, v5, &qword_27C7BB8B8, &qword_20C464C18);
  v11 = v5[3];
  v28 = v5[2];
  v29 = v11;
  v30 = v5[4];
  v12 = v5[1];
  v26 = *v5;
  v27 = v12;
  v13 = sub_20C457E7C(&v26);
  if (v14)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v7;
  }

  v15 = v13;
  v16 = a1 + v10 + v9;
  while (1)
  {
    *(v7 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
    memmove((v7[6] + 80 * v15), v5, 0x50uLL);
    v17 = v7[7];
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
    result = sub_20C43CBEC(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15);
    v20 = v7[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      break;
    }

    v7[2] = v22;
    if (!--v6)
    {
      goto LABEL_8;
    }

    sub_20C409B04(v16, v5, &qword_27C7BB8B8, &qword_20C464C18);
    v23 = v5[3];
    v28 = v5[2];
    v29 = v23;
    v30 = v5[4];
    v24 = v5[1];
    v26 = *v5;
    v27 = v24;
    v15 = sub_20C457E7C(&v26);
    v16 += v10;
    if (v25)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20C43CBEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_20C43CC74()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_20C43CCB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000013 && 0x800000020C4678C0 == a2;
  if (v5 || (sub_20C4608D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000020C4678E0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C4608D0();

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

uint64_t sub_20C43CD94(uint64_t a1)
{
  v2 = sub_20C43D1AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C43CDD0(uint64_t a1)
{
  v2 = sub_20C43D1AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C43CE0C(uint64_t a1)
{
  v2 = sub_20C43D254();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C43CE48(uint64_t a1)
{
  v2 = sub_20C43D254();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C43CE84(uint64_t a1)
{
  v2 = sub_20C43D200();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C43CEC0(uint64_t a1)
{
  v2 = sub_20C43D200();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ImageAssetLoadError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB8C0, &qword_20C464C20);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB8C8, &qword_20C464C28);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB8D0, &qword_20C464C30);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C43D1AC();
  sub_20C4609C0();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_20C43D200();
    v14 = v18;
    sub_20C460870();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_20C43D254();
    sub_20C460870();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_20C43D1AC()
{
  result = qword_27C7BB8D8;
  if (!qword_27C7BB8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB8D8);
  }

  return result;
}

unint64_t sub_20C43D200()
{
  result = qword_27C7BB8E0;
  if (!qword_27C7BB8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB8E0);
  }

  return result;
}

unint64_t sub_20C43D254()
{
  result = qword_27C7BB8E8;
  if (!qword_27C7BB8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB8E8);
  }

  return result;
}

uint64_t ImageAssetLoadError.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB8F0, &qword_20C464C38);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB8F8, &qword_20C464C40);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB900, &unk_20C464C48);
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C43D1AC();
  v12 = v31;
  sub_20C4609B0();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_20C460850();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_20C417824();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_20C460770();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BACB8, &qword_20C461670);
      *v22 = &type metadata for ImageAssetLoadError;
      sub_20C460800();
      sub_20C460760();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_20C43D200();
        sub_20C4607F0();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_20C43D254();
        sub_20C4607F0();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t ImageAssetLoadError.hashValue.getter()
{
  v1 = *v0;
  sub_20C460930();
  MEMORY[0x20F2FAEA0](v1);
  return sub_20C460970();
}

unint64_t sub_20C43D83C()
{
  result = qword_27C7BB908;
  if (!qword_27C7BB908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB908);
  }

  return result;
}

unint64_t sub_20C43D894()
{
  result = qword_27C7BB910;
  if (!qword_27C7BB910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB910);
  }

  return result;
}

unint64_t sub_20C43D8EC()
{
  result = qword_27C7BB918;
  if (!qword_27C7BB918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB918);
  }

  return result;
}

unint64_t sub_20C43D944()
{
  result = qword_27C7BB920;
  if (!qword_27C7BB920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB920);
  }

  return result;
}

unint64_t sub_20C43D99C()
{
  result = qword_27C7BB928;
  if (!qword_27C7BB928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB928);
  }

  return result;
}

unint64_t sub_20C43D9F4()
{
  result = qword_27C7BB930;
  if (!qword_27C7BB930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB930);
  }

  return result;
}

unint64_t sub_20C43DA4C()
{
  result = qword_27C7BB938;
  if (!qword_27C7BB938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB938);
  }

  return result;
}

uint64_t DynamicPredicateDescriptor.makePredicateExpression<A>(using:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v36 = a3;
  v37 = a4;
  v34 = a5;
  v35 = a1;
  v6 = sub_20C45FF60();
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C45FF90();
  v30 = *(v9 - 8);
  v31 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C45FFD0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20C45FE80();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v20 == 2)
    {
      v23 = swift_projectBox();
      v25 = v30;
      v24 = v31;
      (*(v30 + 16))(v11, v23, v31);
      DynamicPredicateEqualityDescriptor.makePredicateExpression<A>(using:)(v35, v36, v37, v34);
      return (*(v25 + 8))(v11, v24);
    }

    else
    {
      v27 = swift_projectBox();
      v29 = v32;
      v28 = v33;
      (*(v32 + 16))(v8, v27, v33);
      DynamicPredicateLogicalDescriptor.makePredicateExpression<A>(using:)(v35, v36, v37, v34);
      return (*(v29 + 8))(v8, v28);
    }
  }

  else if (v20)
  {
    v26 = swift_projectBox();
    (*(v13 + 16))(v15, v26, v12);
    DynamicPredicateComparisonDescriptor.makePredicateExpression<A>(using:)(v35, v36, v34);
    return (*(v13 + 8))(v15, v12);
  }

  else
  {
    v21 = swift_projectBox();
    (*(v17 + 16))(v19, v21, v16);
    DynamicPredicateBooleanValue.makePredicateExpression<A>(using:)(v34);
    return (*(v17 + 8))(v19, v16);
  }
}

FitnessAsset::FileType_optional __swiftcall FileType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20C4607E0();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t FileType.rawValue.getter()
{
  if (*v0)
  {
    return 6778986;
  }

  else
  {
    return 6778480;
  }
}

uint64_t sub_20C43DEF0(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 6778986;
  }

  else
  {
    v2 = 6778480;
  }

  if (*a2)
  {
    v3 = 6778986;
  }

  else
  {
    v3 = 6778480;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_20C4608D0();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_20C43DF64@<X0>(char *a2@<X8>)
{
  v3 = sub_20C4607E0();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_20C43DFC4(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 6778986;
  }

  else
  {
    v2 = 6778480;
  }

  *a1 = v2;
  a1[1] = 0xE300000000000000;
}

unint64_t sub_20C43E09C()
{
  result = qword_27C7BB940;
  if (!qword_27C7BB940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB940);
  }

  return result;
}

uint64_t sub_20C43E0F0()
{
  sub_20C460930();
  sub_20C4604F0();

  return sub_20C460970();
}

uint64_t sub_20C43E154(uint64_t a1)
{
  sub_20C4604F0();
}

uint64_t sub_20C43E19C(uint64_t a1)
{
  sub_20C460930();
  sub_20C4604F0();

  return sub_20C460970();
}

unint64_t sub_20C43E20C()
{
  result = qword_28110B578;
  if (!qword_28110B578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B578);
  }

  return result;
}

uint64_t static ArtworkPredicate.makeLogicalOperation(lhs:rhs:logicalOperator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_20C42A130(a1, a4);
  result = sub_20C42A130(a2, a4 + 40);
  *(a4 + 80) = a3 & 1;
  return result;
}

uint64_t static ArtworkPredicate.makeComparison<A, B>(lhs:rhs:comparisonOperator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>)
{
  v26 = a8;
  v15 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *v22;
  (*(v24 + 16))(v21, v19);
  (*(v15 + 16))(v17, a2, a5);
  v27 = v23;
  return sub_20C43FFD8(v21, v17, &v27, a4, a5, a6, a7, v26, x8_0);
}

uint64_t static ArtworkPredicate.makeEquality<A, B>(lhs:rhs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v19);
  (*(v15 + 16))(v17, a2, a4);
  return sub_20C4420CC(v21, v17, a3, a4, a5, a6, a7, a8);
}

uint64_t static ArtworkPredicate.makeKeyPath<A, B>(root:keyPath:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v9 = *a2;
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  ArtworkPredicateKeyPath.init(root:keyPath:)(v12, a2, a3, *(v9 + *MEMORY[0x277D84DE8] + 8), a4, a5);
}

uint64_t ImageAssetCacheKey.cropCode.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ImageAssetCacheKey.fileType.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ImageAssetCacheKey.template.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ImageAssetCacheKey.init(aspectRatio:cropCode:decoratorCacheKeys:fileType:template:widthBucket:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11)
{
  *a9 = a10;
  *(a9 + 8) = result;
  *(a9 + 16) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  *(a9 + 72) = a11;
  return result;
}

uint64_t sub_20C43E7D4()
{
  v1 = *v0;
  v2 = 0x6152746365707361;
  v3 = 0x65707954656C6966;
  v4 = 0x6574616C706D6574;
  if (v1 != 4)
  {
    v4 = 0x6375426874646977;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x65646F43706F7263;
  if (v1 != 1)
  {
    v5 = 0xD000000000000012;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_20C43E8A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20C43F990(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20C43E8D8(uint64_t a1)
{
  v2 = sub_20C43F4AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C43E914(uint64_t a1)
{
  v2 = sub_20C43F4AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ImageAssetCacheKey.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB948, &qword_20C465150);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v19 - v5;
  v7 = *v1;
  v8 = v1[1];
  v24 = v1[2];
  v25 = v8;
  v9 = v1[3];
  v22 = v1[4];
  v23 = v9;
  v10 = v1[5];
  v12 = v1[7];
  v11 = v1[8];
  v19[0] = v1[6];
  v19[1] = v12;
  v20 = v11;
  v21 = v10;
  v13 = v1[9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C43F4AC();
  sub_20C4609C0();
  v27 = v7;
  v29 = 0;
  sub_20C43F500();
  v14 = v3;
  v15 = v26;
  sub_20C4608B0();
  if (v15)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v17 = v23;
  v26 = v13;
  v18 = v20;
  LOBYTE(v27) = 1;
  sub_20C460890();
  v27 = v17;
  v29 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB950, &qword_20C465158);
  sub_20C43F614(&qword_28110B3F0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_20C4608B0();
  LOBYTE(v27) = 3;
  sub_20C460890();
  LOBYTE(v27) = 4;
  sub_20C460890();
  v27 = v18;
  v28 = v26;
  v29 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB958, &qword_20C465160);
  sub_20C43F554(&qword_28110B3F8, MEMORY[0x277D83B90], MEMORY[0x277D83640]);
  sub_20C4608B0();
  return (*(v4 + 8))(v6, v14);
}

uint64_t ImageAssetCacheKey.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB960, &qword_20C465168);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C43F4AC();
  sub_20C4609B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v28) = 0;
  sub_20C43F5C0();
  sub_20C460840();
  v9 = v33[0];
  LOBYTE(v33[0]) = 1;
  v10 = sub_20C460820();
  v27 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB950, &qword_20C465158);
  LOBYTE(v28) = 2;
  sub_20C43F614(&qword_27C7BB970, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_20C460840();
  v26 = v33[0];
  LOBYTE(v33[0]) = 3;
  *&v25 = sub_20C460820();
  *(&v25 + 1) = v12;
  LOBYTE(v33[0]) = 4;
  v24 = sub_20C460820();
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB958, &qword_20C465160);
  v39 = 5;
  sub_20C43F554(&qword_27C7BB978, MEMORY[0x277D83BB8], MEMORY[0x277D83668]);
  sub_20C460840();
  (*(v6 + 8))(v8, v5);
  v22 = *(&v40 + 1);
  v23 = v40;
  *&v28 = v9;
  *(&v28 + 1) = v10;
  v15 = v27;
  v16 = v26;
  *&v29 = v27;
  *(&v29 + 1) = v26;
  v17 = v25;
  v30 = v25;
  *&v31 = v24;
  *(&v31 + 1) = v14;
  v32 = v40;
  v18 = v31;
  a2[2] = v25;
  a2[3] = v18;
  v19 = v29;
  *a2 = v28;
  a2[1] = v19;
  a2[4] = v32;
  sub_20C40C520(&v28, v33);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v33[0] = v9;
  v33[1] = v10;
  v33[2] = v15;
  v33[3] = v16;
  v34 = v17;
  v35 = v24;
  v36 = v14;
  v37 = v23;
  v38 = v22;
  return sub_20C40C57C(v33);
}

uint64_t ImageAssetCacheKey.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 24);
  v4 = *(v1 + 64);
  v8 = *(v1 + 72);
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x20F2FAEC0](*&v2);
  sub_20C4604F0();
  MEMORY[0x20F2FAEA0](*(v3 + 16));
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = v3 + 40;
    do
    {

      sub_20C4604F0();

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  sub_20C4604F0();
  sub_20C4604F0();
  MEMORY[0x20F2FAEA0](v4);
  return MEMORY[0x20F2FAEA0](v8);
}

uint64_t ImageAssetCacheKey.hashValue.getter()
{
  sub_20C460930();
  ImageAssetCacheKey.hash(into:)(v1);
  return sub_20C460970();
}

uint64_t sub_20C43F2F0()
{
  sub_20C460930();
  ImageAssetCacheKey.hash(into:)(v1);
  return sub_20C460970();
}

uint64_t sub_20C43F334(uint64_t a1)
{
  sub_20C460930();
  ImageAssetCacheKey.hash(into:)(v2);
  return sub_20C460970();
}

BOOL _s12FitnessAsset05ImageB8CacheKeyV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v16 = *(a1 + 72);
  v17 = *(a1 + 64);
  v8 = *(a2 + 24);
  v7 = *(a2 + 32);
  v10 = *(a2 + 40);
  v9 = *(a2 + 48);
  v11 = *(a2 + 56);
  v14 = *(a2 + 72);
  v15 = *(a2 + 64);
  if ((*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16)) && (sub_20C4608D0() & 1) == 0 || (sub_20C453A94(v2, v8) & 1) == 0 || (v3 != v7 || v4 != v10) && (sub_20C4608D0() & 1) == 0 || (v5 != v9 || v6 != v11) && (sub_20C4608D0() & 1) == 0)
  {
    return 0;
  }

  return v17 == v15 && v16 == v14;
}

unint64_t sub_20C43F4AC()
{
  result = qword_28110B890;
  if (!qword_28110B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B890);
  }

  return result;
}

unint64_t sub_20C43F500()
{
  result = qword_28110BE88;
  if (!qword_28110BE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110BE88);
  }

  return result;
}

uint64_t sub_20C43F554(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BB958, &qword_20C465160);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20C43F5C0()
{
  result = qword_27C7BB968;
  if (!qword_27C7BB968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB968);
  }

  return result;
}

uint64_t sub_20C43F614(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BB950, &qword_20C465158);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_20C43F69C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20C43F6E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImageAssetCacheKey.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ImageAssetCacheKey.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20C43F88C()
{
  result = qword_27C7BB980;
  if (!qword_27C7BB980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB980);
  }

  return result;
}

unint64_t sub_20C43F8E4()
{
  result = qword_28110B880;
  if (!qword_28110B880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B880);
  }

  return result;
}

unint64_t sub_20C43F93C()
{
  result = qword_28110B888;
  if (!qword_28110B888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B888);
  }

  return result;
}

uint64_t sub_20C43F990(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6152746365707361 && a2 == 0xEB000000006F6974;
  if (v4 || (sub_20C4608D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65646F43706F7263 && a2 == 0xE800000000000000 || (sub_20C4608D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000020C467900 == a2 || (sub_20C4608D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65707954656C6966 && a2 == 0xE800000000000000 || (sub_20C4608D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574616C706D6574 && a2 == 0xE800000000000000 || (sub_20C4608D0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6375426874646977 && a2 == 0xEB0000000074656BLL)
  {

    return 5;
  }

  else
  {
    v6 = sub_20C4608D0();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

FitnessAsset::LogicalOperator_optional __swiftcall LogicalOperator.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_20C4607E0();

  if (v1 == 1)
  {
    v2.value = FitnessAsset_LogicalOperator_or;
  }

  else
  {
    v2.value = FitnessAsset_LogicalOperator_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t LogicalOperator.rawValue.getter(char a1)
{
  if (a1)
  {
    return 29295;
  }

  else
  {
    return 6581857;
  }
}

uint64_t sub_20C43FC14(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 29295;
  }

  else
  {
    v3 = 6581857;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE200000000000000;
  }

  if (*a2)
  {
    v5 = 29295;
  }

  else
  {
    v5 = 6581857;
  }

  if (*a2)
  {
    v6 = 0xE200000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_20C4608D0();
  }

  return v8 & 1;
}

uint64_t sub_20C43FCA8@<X0>(char *a2@<X8>)
{
  v3 = sub_20C4607E0();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_20C43FD08(uint64_t *a1@<X8>)
{
  v2 = 6581857;
  if (*v1)
  {
    v2 = 29295;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE200000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_20C43FDE8()
{
  result = qword_27C7BB988;
  if (!qword_27C7BB988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB988);
  }

  return result;
}

uint64_t sub_20C43FE3C()
{
  sub_20C460930();
  sub_20C4604F0();

  return sub_20C460970();
}

uint64_t sub_20C43FEAC(uint64_t a1)
{
  sub_20C4604F0();
}

uint64_t sub_20C43FF08(uint64_t a1)
{
  sub_20C460930();
  sub_20C4604F0();

  return sub_20C460970();
}

unint64_t sub_20C43FF84()
{
  result = qword_27C7BB990[0];
  if (!qword_27C7BB990[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C7BB990);
  }

  return result;
}

uint64_t sub_20C43FFD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v16 = *a3;
  (*(*(a4 - 8) + 32))(a9, a1, a4);
  v19[0] = a4;
  v19[1] = a5;
  v19[2] = a6;
  v19[3] = a7;
  v19[4] = a8;
  v17 = type metadata accessor for ArtworkPredicateComparison(0, v19);
  result = (*(*(a5 - 8) + 32))(a9 + *(v17 + 60), a2, a5);
  *(a9 + *(v17 + 64)) = v16;
  return result;
}

Swift::Bool __swiftcall ArtworkPredicateComparison.evaluate()()
{
  v2 = v0;
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v18 - v11;
  (*(v3 + 16))(v4, v3, v10);
  (*(*(v2 + 40) + 16))(*(v2 + 24));
  v13 = *(v1 + *(v2 + 64));
  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = sub_20C460480();
    }

    else
    {
      v14 = sub_20C4604A0();
    }
  }

  else if (*(v1 + *(v2 + 64)))
  {
    v14 = sub_20C460490();
  }

  else
  {
    v14 = sub_20C460470();
  }

  v15 = v14;
  v16 = *(v6 + 8);
  v16(v8, AssociatedTypeWitness);
  v16(v12, AssociatedTypeWitness);
  return v15 & 1;
}

BOOL sub_20C440308@<W0>(_BYTE *a1@<X8>)
{
  result = ArtworkPredicateComparison.evaluate()();
  *a1 = result;
  return result;
}

uint64_t sub_20C44033C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_20C4403D0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= v5)
  {
    v11 = *(v4 + 84);
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (v11 <= 0xFC)
  {
    v11 = 252;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
    goto LABEL_30;
  }

  v14 = v10 + (v12 & ~v9) + 1;
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v18 < 2)
    {
LABEL_30:
      if (v5 == v11)
      {
        return (*(v4 + 48))();
      }

      v22 = (a1 + v12) & ~v9;
      if (v8 == v11)
      {
        return (*(v7 + 48))(v22, v8, v6);
      }

      v23 = *(v22 + v10);
      if (v23 >= 4)
      {
        return v23 - 3;
      }

      else
      {
        return 0;
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_30;
  }

LABEL_17:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v10 + (v12 & ~v9) == -1)
  {
    v21 = 0;
  }

  else
  {
    if (v14 <= 3)
    {
      v20 = v10 + (v12 & ~v9) + 1;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  return v11 + (v21 | v19) + 1;
}

char *sub_20C4405D4(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0xFC)
  {
    v12 = 252;
  }

  v13 = v9 + v10;
  v14 = v11 + ((v9 + v10) & ~v10) + 1;
  v15 = a3 >= v12;
  v16 = a3 - v12;
  if (v16 != 0 && v15)
  {
    if (v14 <= 3)
    {
      v21 = ((v16 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
      if (HIWORD(v21))
      {
        v17 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v17 = v22;
        }

        else
        {
          v17 = 0;
        }
      }
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  if (v12 < a2)
  {
    v18 = ~v12 + a2;
    if (v14 < 4)
    {
      v20 = (v18 >> (8 * v14)) + 1;
      if (v14)
      {
        v23 = v18 & ~(-1 << (8 * v14));
        v24 = result;
        bzero(result, v14);
        result = v24;
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *v24 = v23;
            if (v17 > 1)
            {
LABEL_50:
              if (v17 == 2)
              {
                *&result[v14] = v20;
              }

              else
              {
                *&result[v14] = v20;
              }

              return result;
            }
          }

          else
          {
            *v24 = v18;
            if (v17 > 1)
            {
              goto LABEL_50;
            }
          }

          goto LABEL_47;
        }

        *v24 = v23;
        v24[2] = BYTE2(v23);
      }

      if (v17 > 1)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v19 = result;
      bzero(result, v14);
      result = v19;
      *v19 = v18;
      v20 = 1;
      if (v17 > 1)
      {
        goto LABEL_50;
      }
    }

LABEL_47:
    if (v17)
    {
      result[v14] = v20;
    }

    return result;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&result[v14] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v14] = 0;
  }

  else if (v17)
  {
    result[v14] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v6 == v12)
  {
    v25 = *(v5 + 56);

    return v25();
  }

  else
  {
    result = (&result[v13] & ~v10);
    if (v8 == v12)
    {
      v26 = *(v7 + 56);

      return v26(result);
    }

    else
    {
      result[v11] = a2 + 3;
    }
  }

  return result;
}

uint64_t ArtworkPredicateKeyPath.init(root:keyPath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v10 = type metadata accessor for ArtworkPredicateKeyPath(0, a3, a4, a5);
  result = (*(*(a3 - 8) + 32))(&a6[*(v10 + 44)], a1, a3);
  *a6 = a2;
  return result;
}

uint64_t ArtworkPredicateKeyPath.evaluate()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = &v9 - v6;
  (*(v1 + 16))(v2, v1, v5);
  swift_getAtKeyPath();
  return (*(v4 + 8))(v7, AssociatedTypeWitness);
}

uint64_t sub_20C440ADC(void *a1)
{
  swift_getAssociatedTypeWitness();
  result = sub_20C4609D0();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_20C440B90(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
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

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
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

void sub_20C440D14(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
LABEL_47:
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
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
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
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

uint64_t ArtworkPredicateError.hashValue.getter()
{
  v1 = *v0;
  sub_20C460930();
  MEMORY[0x20F2FAEA0](v1);
  return sub_20C460970();
}

unint64_t sub_20C440FF0()
{
  result = qword_27C7BBA98;
  if (!qword_27C7BBA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBA98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ArtworkPredicateError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ArtworkPredicateError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_20C441194(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656E6F6870;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 30324;
    }

    else
    {
      v4 = 0x6863746177;
    }

    if (v3 == 2)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x74656C626174;
    }

    else
    {
      v4 = 0x656E6F6870;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE200000000000000;
  v8 = 30324;
  if (a2 != 2)
  {
    v8 = 0x6863746177;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x74656C626174;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_20C4608D0();
  }

  return v11 & 1;
}

uint64_t sub_20C4412AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 == 2)
  {
    v3 = 0xE800000000000000;
  }

  else
  {
    v3 = 0xEF6C61757145724FLL;
  }

  v4 = 0xD000000000000012;
  v5 = 0x800000020C4674F0;
  if (!a1)
  {
    v4 = 0x5472657461657267;
    v5 = 0xEB000000006E6168;
  }

  if (a1 <= 1u)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6E6168547373656CLL;
  }

  if (v2 <= 1)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v9 = 0xE800000000000000;
    }

    else
    {
      v9 = 0xEF6C61757145724FLL;
    }

    if (v6 != 0x6E6168547373656CLL)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (a2)
    {
      v8 = 0xD000000000000012;
    }

    else
    {
      v8 = 0x5472657461657267;
    }

    if (a2)
    {
      v9 = 0x800000020C4674F0;
    }

    else
    {
      v9 = 0xEB000000006E6168;
    }

    if (v6 != v8)
    {
      goto LABEL_27;
    }
  }

  if (v7 != v9)
  {
LABEL_27:
    v10 = sub_20C4608D0();
    goto LABEL_28;
  }

  v10 = 1;
LABEL_28:

  return v10 & 1;
}

FitnessAsset::ComparisonOperator_optional __swiftcall ComparisonOperator.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20C4607E0();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ComparisonOperator.rawValue.getter()
{
  v1 = 0x5472657461657267;
  if (*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x6E6168547373656CLL;
  }
}

void sub_20C441518(uint64_t *a1@<X8>)
{
  v2 = 0xEB000000006E6168;
  v3 = 0x5472657461657267;
  v4 = 0xE800000000000000;
  if (*v1 != 2)
  {
    v4 = 0xEF6C61757145724FLL;
  }

  if (*v1)
  {
    v3 = 0xD000000000000012;
    v2 = 0x800000020C4674F0;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E6168547373656CLL;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v5;
  a1[1] = v2;
}

unint64_t sub_20C441664()
{
  result = qword_27C7BBAA0;
  if (!qword_27C7BBAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBAA0);
  }

  return result;
}

uint64_t sub_20C4416B8()
{
  sub_20C460930();
  sub_20C4604F0();

  return sub_20C460970();
}

uint64_t sub_20C441794(uint64_t a1)
{
  sub_20C4604F0();
}

uint64_t sub_20C44185C(uint64_t a1)
{
  sub_20C460930();
  sub_20C4604F0();

  return sub_20C460970();
}

unint64_t sub_20C441944()
{
  result = qword_27C7BBAA8[0];
  if (!qword_27C7BBAA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C7BBAA8);
  }

  return result;
}

uint64_t sub_20C441A14(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_20C441A84(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_20C441BC4(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

Swift::Bool __swiftcall ArtworkPredicateLogicalOperation.evaluate()()
{
  v1 = v0;
  v2 = *(v0 + 80);
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  if (v2)
  {
    (*(v4 + 16))(&v10 + 3, v3, v4);
    if (v10 & 0x1000000)
    {
      return 1;
    }

    else
    {
      v8 = v1[8];
      v9 = v1[9];
      __swift_project_boxed_opaque_existential_1(v1 + 5, v8);
      (*(v9 + 16))(&v10 + 2, v8, v9);
      return BYTE2(v10);
    }
  }

  else
  {
    (*(v4 + 16))(&v10 + 1, v3, v4);
    if (BYTE1(v10) == 1)
    {
      v6 = v1[8];
      v7 = v1[9];
      __swift_project_boxed_opaque_existential_1(v1 + 5, v6);
      (*(v7 + 16))(&v10, v6, v7);
      return v10;
    }

    else
    {
      return 0;
    }
  }
}

BOOL sub_20C441FCC@<W0>(_BYTE *a1@<X8>)
{
  result = ArtworkPredicateLogicalOperation.evaluate()();
  *a1 = result;
  return result;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_20C44201C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_20C442064(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20C4420CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a3 - 8) + 32))(a8, a1);
  v17[0] = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v17[4] = a7;
  v15 = type metadata accessor for ArtworkPredicateEquality(0, v17);
  return (*(*(a4 - 8) + 32))(a8 + *(v15 + 60), a2, a4);
}

Swift::Bool __swiftcall ArtworkPredicateEquality.evaluate()()
{
  v1 = v0;
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  (*(v2 + 16))(v3, v2, v9);
  (*(*(v1 + 40) + 16))(*(v1 + 24));
  v12 = sub_20C4604B0();
  v13 = *(v5 + 8);
  v13(v7, AssociatedTypeWitness);
  v13(v11, AssociatedTypeWitness);
  return v12 & 1;
}

BOOL sub_20C442398@<W0>(_BYTE *a1@<X8>)
{
  result = ArtworkPredicateEquality.evaluate()();
  *a1 = result;
  return result;
}

uint64_t sub_20C4423CC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_20C442458(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_20C442634(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

void __swiftcall ArtworkPredicateInput.init(dynamicTypeSize:gridSizeClass:horizontalSizeClass:platform:verticalSizeClass:)(FitnessAsset::ArtworkPredicateInput *__return_ptr retstr, Swift::Int dynamicTypeSize, Swift::Int gridSizeClass, Swift::String horizontalSizeClass, FitnessAsset::AssetPlatform platform, Swift::String verticalSizeClass)
{
  retstr->dynamicTypeSize = dynamicTypeSize;
  retstr->gridSizeClass = gridSizeClass;
  retstr->horizontalSizeClass = horizontalSizeClass;
  retstr->platform = platform;
  retstr->verticalSizeClass = verticalSizeClass;
}

uint64_t ArtworkPredicateInput.horizontalSizeClass.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ArtworkPredicateInput.verticalSizeClass.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

unint64_t sub_20C442994()
{
  v1 = *v0;
  v2 = 0x5463696D616E7964;
  v3 = 0xD000000000000013;
  v4 = 0x6D726F6674616C70;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x657A695364697267;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_20C442A54@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20C443A40(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20C442A88(uint64_t a1)
{
  v2 = sub_20C442DCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C442AC4(uint64_t a1)
{
  v2 = sub_20C442DCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C442B10()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_20C442B48()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t ArtworkPredicateInput.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBBB0, &qword_20C465970);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  v7 = *(v1 + 8);
  v8 = *(v1 + 24);
  v15 = *(v1 + 16);
  v16 = v7;
  v14 = v8;
  v13 = *(v1 + 32);
  v12 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C442DCC();
  sub_20C4609C0();
  v23 = 0;
  v9 = v17;
  sub_20C4608A0();
  if (!v9)
  {
    v10 = v13;
    v22 = 1;
    sub_20C4608A0();
    v21 = 2;
    sub_20C460890();
    v20 = v10;
    v19 = 3;
    sub_20C442E20();
    sub_20C4608B0();
    v18 = 4;
    sub_20C460890();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_20C442DCC()
{
  result = qword_27C7BBBB8;
  if (!qword_27C7BBBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBBB8);
  }

  return result;
}

unint64_t sub_20C442E20()
{
  result = qword_27C7BBBC0;
  if (!qword_27C7BBBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBBC0);
  }

  return result;
}

uint64_t ArtworkPredicateInput.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBBC8, &qword_20C465978);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C442DCC();
  sub_20C4609B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = 0;
  v9 = sub_20C460830();
  v28 = 1;
  v23 = sub_20C460830();
  v27 = 2;
  v10 = sub_20C460820();
  v12 = v11;
  v22 = v10;
  v25 = 3;
  sub_20C443118();
  sub_20C460840();
  v21 = v26;
  v24 = 4;
  v13 = sub_20C460820();
  v16 = v15;
  v17 = *(v6 + 8);
  v20 = v13;
  v17(v8, v5);
  v18 = v22;
  v19 = v23;
  *a2 = v9;
  *(a2 + 8) = v19;
  *(a2 + 16) = v18;
  *(a2 + 24) = v12;
  *(a2 + 32) = v21;
  *(a2 + 40) = v20;
  *(a2 + 48) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_20C443118()
{
  result = qword_27C7BBBD0;
  if (!qword_27C7BBBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBBD0);
  }

  return result;
}

uint64_t ArtworkPredicateInput.hash(into:)(uint64_t a1)
{
  v2 = v1[1];
  MEMORY[0x20F2FAEA0](*v1);
  MEMORY[0x20F2FAEA0](v2);
  sub_20C4604F0();
  sub_20C4604F0();

  return sub_20C4604F0();
}

uint64_t ArtworkPredicateInput.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_20C460930();
  MEMORY[0x20F2FAEA0](v1);
  MEMORY[0x20F2FAEA0](v2);
  sub_20C4604F0();
  sub_20C4604F0();

  sub_20C4604F0();
  return sub_20C460970();
}

uint64_t sub_20C4433A4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_20C460930();
  MEMORY[0x20F2FAEA0](v2);
  MEMORY[0x20F2FAEA0](v3);
  sub_20C4604F0();
  sub_20C4604F0();

  sub_20C4604F0();
  return sub_20C460970();
}

uint64_t _s12FitnessAsset21ArtworkPredicateInputV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a2 + 32);
    v8 = *(a2 + 40);
    v9 = *(a2 + 48);
    if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) || (sub_20C4608D0()) && (sub_20C441194(v4, v7))
    {
      if (v5 == v8 && v6 == v9)
      {
        return 1;
      }

      else
      {

        return sub_20C4608D0();
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_20C44359C(void *a1)
{
  a1[1] = sub_20C4435D4();
  a1[2] = sub_20C443628();
  result = sub_20C44367C();
  a1[3] = result;
  return result;
}

unint64_t sub_20C4435D4()
{
  result = qword_27C7BBBD8;
  if (!qword_27C7BBBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBBD8);
  }

  return result;
}

unint64_t sub_20C443628()
{
  result = qword_27C7BBBE0;
  if (!qword_27C7BBBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBBE0);
  }

  return result;
}

unint64_t sub_20C44367C()
{
  result = qword_27C7BBBE8;
  if (!qword_27C7BBBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBBE8);
  }

  return result;
}

unint64_t sub_20C4436D4()
{
  result = qword_27C7BBBF0;
  if (!qword_27C7BBBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBBF0);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_20C443744(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_20C44378C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ArtworkPredicateInput.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ArtworkPredicateInput.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20C44393C()
{
  result = qword_27C7BBBF8;
  if (!qword_27C7BBBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBBF8);
  }

  return result;
}

unint64_t sub_20C443994()
{
  result = qword_27C7BBC00;
  if (!qword_27C7BBC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBC00);
  }

  return result;
}

unint64_t sub_20C4439EC()
{
  result = qword_27C7BBC08;
  if (!qword_27C7BBC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBC08);
  }

  return result;
}

uint64_t sub_20C443A40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5463696D616E7964 && a2 == 0xEF657A6953657079;
  if (v4 || (sub_20C4608D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657A695364697267 && a2 == 0xED00007373616C43 || (sub_20C4608D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000020C467920 == a2 || (sub_20C4608D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000 || (sub_20C4608D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000020C467940 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_20C4608D0();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_20C443C14()
{
  v1 = 0x676E696863746566;
  if (*v0 != 1)
  {
    v1 = 0x64656863746566;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701602409;
  }
}

uint64_t sub_20C443C68@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20C445DA4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20C443C90(uint64_t a1)
{
  v2 = sub_20C445694();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C443CCC(uint64_t a1)
{
  v2 = sub_20C445694();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C443D08()
{
  if (*v0)
  {
    return 0x637465467473616CLL;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_20C443D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_20C4608D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x637465467473616CLL && a2 == 0xEB00000000646568)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C4608D0();

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

uint64_t sub_20C443E18(uint64_t a1)
{
  v2 = sub_20C4456E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C443E54(uint64_t a1)
{
  v2 = sub_20C4456E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C443E90(uint64_t a1)
{
  v2 = sub_20C44573C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C443ECC(uint64_t a1)
{
  v2 = sub_20C44573C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C443F08(uint64_t a1)
{
  v2 = sub_20C445790();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C443F44(uint64_t a1)
{
  v2 = sub_20C445790();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MonogramLoadState.encode(to:)(void *a1)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBC10, &unk_20C465BD0);
  v33 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v36 = &v31 - v2;
  v37 = sub_20C45FC90();
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v40 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB268, &qword_20C462D40);
  MEMORY[0x28223BE20](v34);
  v39 = &v31 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBC18, &qword_20C465BE0);
  v31 = *(v5 - 8);
  v32 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBC20, &qword_20C465BE8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - v10;
  State = type metadata accessor for MonogramLoadState(0);
  MEMORY[0x28223BE20](State - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBC28, &unk_20C465BF0);
  v42 = *(v15 - 8);
  v43 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v31 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C445694();
  sub_20C4609C0();
  sub_20C420818(v41, v14);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB490, &qword_20C463AD8);
  v19 = (*(*(v18 - 8) + 48))(v14, 2, v18);
  if (v19)
  {
    if (v19 == 1)
    {
      v45 = 0;
      sub_20C445790();
      v20 = v43;
      sub_20C460870();
      (*(v9 + 8))(v11, v8);
    }

    else
    {
      v46 = 1;
      sub_20C44573C();
      v20 = v43;
      sub_20C460870();
      (*(v31 + 8))(v7, v32);
    }

    return (*(v42 + 8))(v17, v20);
  }

  else
  {
    v21 = v33;
    v22 = *(v18 + 48);
    sub_20C41F6F8(v14, v39);
    v23 = v35;
    v24 = &v14[v22];
    v25 = v37;
    (*(v35 + 32))(v40, v24, v37);
    v49 = 2;
    sub_20C4456E8();
    v26 = v36;
    v27 = v43;
    sub_20C460870();
    v48 = 0;
    sub_20C445838(&qword_27C7BB298, MEMORY[0x277D0A928]);
    v28 = v38;
    v29 = v44;
    sub_20C4608B0();
    if (!v29)
    {
      v47 = 1;
      sub_20C445EBC(&qword_27C7BACB0, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
      sub_20C4608B0();
    }

    (*(v21 + 8))(v26, v28);
    (*(v23 + 8))(v40, v25);
    sub_20C40B440(v39, &qword_27C7BB268, &qword_20C462D40);
    return (*(v42 + 8))(v17, v27);
  }
}

uint64_t MonogramLoadState.hash(into:)(uint64_t a1)
{
  v2 = sub_20C45FC90();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB268, &qword_20C462D40);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  State = type metadata accessor for MonogramLoadState(0);
  MEMORY[0x28223BE20](State - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C420818(v1, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB490, &qword_20C463AD8);
  v13 = (*(*(v12 - 8) + 48))(v11, 2, v12);
  if (v13)
  {
    return MEMORY[0x20F2FAEA0](v13 != 1);
  }

  v14 = *(v12 + 48);
  sub_20C41F6F8(v11, v8);
  (*(v3 + 32))(v5, &v11[v14], v2);
  MEMORY[0x20F2FAEA0](2);
  sub_20C445EBC(&qword_27C7BBC50, type metadata accessor for Monogram, &protocol conformance descriptor for Monogram);
  sub_20C4457E4();
  sub_20C460990();
  sub_20C445EBC(qword_27C7BACD0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_20C460460();
  (*(v3 + 8))(v5, v2);
  return sub_20C40B440(v8, &qword_27C7BB268, &qword_20C462D40);
}

uint64_t MonogramLoadState.hashValue.getter()
{
  sub_20C460930();
  MonogramLoadState.hash(into:)(v1);
  return sub_20C460970();
}

uint64_t MonogramLoadState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBC60, &qword_20C465C00);
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x28223BE20](v3);
  v47 = &v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBC68, &qword_20C465C08);
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x28223BE20](v5);
  v50 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBC70, &qword_20C465C10);
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBC78, &unk_20C465C18);
  v52 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - v11;
  State = type metadata accessor for MonogramLoadState(0);
  MEMORY[0x28223BE20](State);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - v17;
  v19 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_20C445694();
  v20 = v53;
  sub_20C4609B0();
  if (!v20)
  {
    v53 = State;
    v22 = v48;
    v21 = v49;
    v41 = v15;
    v42 = v18;
    v23 = v50;
    v24 = v51;
    v25 = sub_20C460850();
    v26 = (2 * *(v25 + 16)) | 1;
    v55 = v25;
    v56 = v25 + 32;
    v57 = 0;
    v58 = v26;
    v27 = sub_20C41ED38();
    if (v27 == 3 || v57 != v58 >> 1)
    {
      v31 = sub_20C460770();
      swift_allocError();
      v33 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BACB8, &qword_20C461670);
      *v33 = v53;
      sub_20C460800();
      sub_20C460760();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84160], v31);
      swift_willThrow();
      (*(v52 + 8))(v12, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v27)
      {
        v28 = v52;
        if (v27 == 1)
        {
          v59 = 1;
          sub_20C44573C();
          sub_20C4607F0();
          (*(v43 + 8))(v23, v44);
          (*(v28 + 8))(v12, v10);
          swift_unknownObjectRelease();
          v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB490, &qword_20C463AD8);
          v30 = v42;
          (*(*(v29 - 8) + 56))(v42, 2, 2, v29);
        }

        else
        {
          v59 = 2;
          sub_20C4456E8();
          sub_20C4607F0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB268, &qword_20C462D40);
          v59 = 0;
          sub_20C445838(&qword_27C7BB2E8, MEMORY[0x277D0A930]);
          v36 = v41;
          v37 = v47;
          sub_20C460840();
          v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB490, &qword_20C463AD8);
          sub_20C45FC90();
          v53 = 0;
          v59 = 1;
          sub_20C445EBC(&qword_27C7BACC8, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
          v39 = v46;
          v40 = v53;
          sub_20C460840();
          if (v40)
          {
            (*(v45 + 8))(v37, v39);
            (*(v28 + 8))(v12, v10);
            swift_unknownObjectRelease();
            sub_20C40B440(v36, &qword_27C7BB268, &qword_20C462D40);
            return __swift_destroy_boxed_opaque_existential_1(v54);
          }

          (*(v45 + 8))(v37, v39);
          (*(v28 + 8))(v12, v10);
          swift_unknownObjectRelease();
          (*(*(v50 - 1) + 56))(v36, 0, 2);
          v30 = v42;
          sub_20C445920(v36, v42);
        }
      }

      else
      {
        v59 = 0;
        sub_20C445790();
        sub_20C4607F0();
        v35 = v52;
        (*(v22 + 8))(v9, v21);
        (*(v35 + 8))(v12, v10);
        swift_unknownObjectRelease();
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB490, &qword_20C463AD8);
        v30 = v42;
        (*(*(v38 - 8) + 56))(v42, 1, 2, v38);
      }

      sub_20C445920(v30, v24);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v54);
}

uint64_t sub_20C44516C()
{
  sub_20C460930();
  MonogramLoadState.hash(into:)(v1);
  return sub_20C460970();
}

uint64_t sub_20C4451B0(uint64_t a1)
{
  sub_20C460930();
  MonogramLoadState.hash(into:)(v2);
  return sub_20C460970();
}

uint64_t _s12FitnessAsset13MonogramStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C45FC90();
  v39 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB268, &qword_20C462D40);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  State = type metadata accessor for MonogramLoadState(0);
  MEMORY[0x28223BE20](State - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBCD8, &qword_20C4660B8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v36 - v17;
  v20 = &v36 + *(v19 + 56) - v17;
  sub_20C420818(a1, &v36 - v17);
  sub_20C420818(a2, v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB490, &qword_20C463AD8);
  v22 = *(*(v21 - 8) + 48);
  v23 = v22(v18, 2, v21);
  if (!v23)
  {
    v37 = v6;
    v38 = v9;
    v24 = v39;
    sub_20C420818(v18, v15);
    v25 = *(v21 + 48);
    if (!v22(v20, 2, v21))
    {
      sub_20C41F6F8(v20, v12);
      v28 = v24;
      v29 = *(v24 + 32);
      v30 = v38;
      v29(v38, &v15[v25], v4);
      v31 = &v20[v25];
      v32 = v37;
      v29(v37, v31, v4);
      type metadata accessor for Monogram(0);
      sub_20C445EBC(&qword_27C7BBCE0, type metadata accessor for Monogram, &protocol conformance descriptor for Monogram);
      sub_20C422004();
      sub_20C4139F0();
      v33 = sub_20C4609A0();
      sub_20C40B440(v15, &qword_27C7BB268, &qword_20C462D40);
      if (v33)
      {
        v26 = sub_20C45FC70();
        v34 = *(v28 + 8);
        v34(v32, v4);
        v34(v30, v4);
        sub_20C40B440(v12, &qword_27C7BB268, &qword_20C462D40);
        sub_20C445F04(v18);
        return v26 & 1;
      }

      v35 = *(v28 + 8);
      v35(v32, v4);
      v35(v30, v4);
      sub_20C40B440(v12, &qword_27C7BB268, &qword_20C462D40);
      sub_20C445F04(v18);
      goto LABEL_10;
    }

    (*(v24 + 8))(&v15[v25], v4);
    sub_20C40B440(v15, &qword_27C7BB268, &qword_20C462D40);
    goto LABEL_9;
  }

  if (v23 != 1)
  {
    if (v22(v20, 2, v21) == 2)
    {
      goto LABEL_8;
    }

LABEL_9:
    sub_20C40B440(v18, &qword_27C7BBCD8, &qword_20C4660B8);
LABEL_10:
    v26 = 0;
    return v26 & 1;
  }

  if (v22(v20, 2, v21) != 1)
  {
    goto LABEL_9;
  }

LABEL_8:
  sub_20C445F04(v18);
  v26 = 1;
  return v26 & 1;
}

unint64_t sub_20C445694()
{
  result = qword_27C7BBC30;
  if (!qword_27C7BBC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBC30);
  }

  return result;
}

unint64_t sub_20C4456E8()
{
  result = qword_27C7BBC38;
  if (!qword_27C7BBC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBC38);
  }

  return result;
}

unint64_t sub_20C44573C()
{
  result = qword_27C7BBC40;
  if (!qword_27C7BBC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBC40);
  }

  return result;
}

unint64_t sub_20C445790()
{
  result = qword_27C7BBC48;
  if (!qword_27C7BBC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBC48);
  }

  return result;
}

unint64_t sub_20C4457E4()
{
  result = qword_27C7BBC58;
  if (!qword_27C7BBC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBC58);
  }

  return result;
}

uint64_t sub_20C445838(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BB268, &qword_20C462D40);
    sub_20C445EBC(&qword_27C7BB2A0, type metadata accessor for Monogram, &protocol conformance descriptor for Monogram);
    sub_20C445EBC(&qword_27C7BB2A8, type metadata accessor for Monogram, &protocol conformance descriptor for Monogram);
    sub_20C41F800();
    sub_20C41F854();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20C445920(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for MonogramLoadState(0);
  (*(*(State - 8) + 32))(a2, a1, State);
  return a2;
}

unint64_t sub_20C445A38()
{
  result = qword_27C7BBC88;
  if (!qword_27C7BBC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBC88);
  }

  return result;
}

unint64_t sub_20C445A90()
{
  result = qword_27C7BBC90;
  if (!qword_27C7BBC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBC90);
  }

  return result;
}

unint64_t sub_20C445AE8()
{
  result = qword_27C7BBC98;
  if (!qword_27C7BBC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBC98);
  }

  return result;
}

unint64_t sub_20C445B40()
{
  result = qword_27C7BBCA0;
  if (!qword_27C7BBCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBCA0);
  }

  return result;
}

unint64_t sub_20C445B98()
{
  result = qword_27C7BBCA8;
  if (!qword_27C7BBCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBCA8);
  }

  return result;
}

unint64_t sub_20C445BF0()
{
  result = qword_27C7BBCB0;
  if (!qword_27C7BBCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBCB0);
  }

  return result;
}

unint64_t sub_20C445C48()
{
  result = qword_27C7BBCB8;
  if (!qword_27C7BBCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBCB8);
  }

  return result;
}

unint64_t sub_20C445CA0()
{
  result = qword_27C7BBCC0;
  if (!qword_27C7BBCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBCC0);
  }

  return result;
}

unint64_t sub_20C445CF8()
{
  result = qword_27C7BBCC8;
  if (!qword_27C7BBCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBCC8);
  }

  return result;
}

unint64_t sub_20C445D50()
{
  result = qword_27C7BBCD0;
  if (!qword_27C7BBCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBCD0);
  }

  return result;
}

uint64_t sub_20C445DA4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701602409 && a2 == 0xE400000000000000;
  if (v3 || (sub_20C4608D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696863746566 && a2 == 0xE800000000000000 || (sub_20C4608D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656863746566 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_20C4608D0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_20C445EBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20C445F04(uint64_t a1)
{
  State = type metadata accessor for MonogramLoadState(0);
  (*(*(State - 8) + 8))(a1, State);
  return a1;
}

uint64_t sub_20C445F60(uint64_t a1)
{
  v2 = sub_20C447648();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C445F9C(uint64_t a1)
{
  v2 = sub_20C447648();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_20C445FD8()
{
  v1 = *v0;
  if (v1 > 2)
  {
    v4 = 0x6570704177656976;
    if (v1 != 4)
    {
      v4 = 0x657A695377656976;
    }

    if (v1 == 3)
    {
      return 0xD000000000000010;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v2 = 0xD000000000000014;
    if (v1 == 1)
    {
      v2 = 0xD00000000000001BLL;
    }

    if (*v0)
    {
      return v2;
    }

    else
    {
      return 0xD00000000000001ALL;
    }
  }
}

uint64_t sub_20C4460BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20C44A80C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20C4460E4(uint64_t a1)
{
  v2 = sub_20C4473EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C446120(uint64_t a1)
{
  v2 = sub_20C4473EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C44615C(uint64_t a1)
{
  v2 = sub_20C4475F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C446198(uint64_t a1)
{
  v2 = sub_20C4475F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C4461D4()
{
  if (*v0)
  {
    return 0x79654B6568636163;
  }

  else
  {
    return 0x726F727265;
  }
}

uint64_t sub_20C44620C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F727265 && a2 == 0xE500000000000000;
  if (v6 || (sub_20C4608D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x79654B6568636163 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C4608D0();

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

uint64_t sub_20C4462E4(uint64_t a1)
{
  v2 = sub_20C4475A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C446320(uint64_t a1)
{
  v2 = sub_20C4475A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C44635C(uint64_t a1)
{
  v2 = sub_20C44754C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C446398(uint64_t a1)
{
  v2 = sub_20C44754C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C4463D4(uint64_t a1)
{
  v2 = sub_20C4474F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C446410(uint64_t a1)
{
  v2 = sub_20C4474F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C44644C(uint64_t a1)
{
  v2 = sub_20C4474A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C446488(uint64_t a1)
{
  v2 = sub_20C4474A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ImageAssetAction.encode(to:)(void *a1)
{
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBCE8, &qword_20C4660C0);
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = &v61 - v2;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBCF0, &qword_20C4660C8);
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v65 = &v61 - v3;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBCF8, &qword_20C4660D0);
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v74 = &v61 - v4;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBD00, &qword_20C4660D8);
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v64 = &v61 - v5;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBD08, &qword_20C4660E0);
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v75 = &v61 - v6;
  v81 = type metadata accessor for ImageAsset(0);
  MEMORY[0x28223BE20](v81);
  v66 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v76 = &v61 - v9;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBD10, &qword_20C4660E8);
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v11 = &v61 - v10;
  v12 = type metadata accessor for ImageAssetAction(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBD18, &qword_20C4660F0);
  v83 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v61 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C4473EC();
  sub_20C4609C0();
  sub_20C447440(v95, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v43 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0B0, &unk_20C462120) + 48)];
      v44 = *(v43 + 4);
      v45 = *(v43 + 2);
      v93 = *(v43 + 3);
      v94 = v44;
      v46 = *v43;
      v91 = *(v43 + 1);
      v92 = v45;
      v90 = v46;
      v47 = v14;
      v48 = v66;
      sub_20C448B40(v47, v66, type metadata accessor for ImageAsset);
      LOBYTE(v85) = 3;
      sub_20C44754C();
      v49 = v74;
      sub_20C460870();
      LOBYTE(v85) = 0;
      sub_20C449E9C(&qword_28110BC98, type metadata accessor for ImageAsset, &protocol conformance descriptor for ImageAsset);
      v50 = v78;
      v51 = v82;
      sub_20C4608B0();
      if (v51)
      {
        sub_20C40C57C(&v90);
        (*(v77 + 8))(v49, v50);
        sub_20C44AA8C(v48, type metadata accessor for ImageAsset);
        return (*(v83 + 8))(v17, v15);
      }

      v87 = v92;
      v88 = v93;
      v89 = v94;
      v86 = v91;
      v85 = v90;
      v84 = 1;
      sub_20C40B974();
      sub_20C4608B0();
      (*(v77 + 8))(v49, v50);
      sub_20C44AA8C(v48, type metadata accessor for ImageAsset);
      (*(v83 + 8))(v17, v15);
      return sub_20C40C57C(&v90);
    }

    v19 = v15;
    v33 = *v14;
    v34 = *(v14 + 1);
    if (EnumCaseMultiPayload == 4)
    {
      LOBYTE(v90) = 4;
      sub_20C4474F8();
      v11 = v65;
      sub_20C460870();
      *&v90 = v33;
      *(&v90 + 1) = v34;
      type metadata accessor for CGSize();
      sub_20C449E9C(&qword_28110B3E0, type metadata accessor for CGSize, MEMORY[0x277CBF288]);
      v35 = v70;
      sub_20C4608B0();
      v36 = &v92 + 8;
    }

    else
    {
      LOBYTE(v90) = 5;
      sub_20C4474A4();
      v11 = v71;
      sub_20C460870();
      *&v90 = v33;
      *(&v90 + 1) = v34;
      type metadata accessor for CGSize();
      sub_20C449E9C(&qword_28110B3E0, type metadata accessor for CGSize, MEMORY[0x277CBF288]);
      v35 = v73;
      sub_20C4608B0();
      v36 = &v94 + 8;
    }

    goto LABEL_19;
  }

  if (!EnumCaseMultiPayload)
  {
    v37 = *(v14 + 2);
    v38 = *(v14 + 4);
    v93 = *(v14 + 3);
    v94 = v38;
    v39 = *v14;
    v91 = *(v14 + 1);
    v92 = v37;
    v90 = v39;
    v40 = *(v14 + 10);
    v41 = *(v14 + 11);
    LOBYTE(v85) = 0;
    sub_20C447648();
    v19 = v15;
    sub_20C460870();
    v87 = v92;
    v88 = v93;
    v89 = v94;
    v86 = v91;
    v85 = v90;
    v84 = 0;
    sub_20C40B974();
    v35 = v63;
    v42 = v82;
    sub_20C4608B0();
    if (v42)
    {
      (*(v62 + 8))(v11, v35);
      (*(v83 + 8))(v17, v15);
      return sub_20C40C57C(&v90);
    }

    sub_20C40C57C(&v90);
    *&v85 = v40;
    *(&v85 + 1) = v41;
    v84 = 1;
    type metadata accessor for CGSize();
    sub_20C449E9C(&qword_28110B3E0, type metadata accessor for CGSize, MEMORY[0x277CBF288]);
    sub_20C4608B0();
    v36 = &v89 + 8;
LABEL_19:
    (*(*(v36 - 32) + 8))(v11, v35);
    v59 = *(v83 + 8);
    v60 = v17;
    return v59(v60, v19);
  }

  v19 = v15;
  if (EnumCaseMultiPayload == 1)
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0E0, &qword_20C462130);
    v21 = &v14[*(v20 + 48)];
    v22 = *(v21 + 4);
    v23 = *(v21 + 2);
    v93 = *(v21 + 3);
    v94 = v22;
    v24 = *v21;
    v91 = *(v21 + 1);
    v92 = v23;
    v90 = v24;
    v25 = &v14[*(v20 + 64)];
    v26 = *v25;
    v27 = *(v25 + 1);
    v28 = v14;
    v29 = v76;
    sub_20C448B40(v28, v76, type metadata accessor for ImageAsset);
    LOBYTE(v85) = 1;
    sub_20C4475F4();
    v30 = v75;
    sub_20C460870();
    LOBYTE(v85) = 0;
    sub_20C449E9C(&qword_28110BC98, type metadata accessor for ImageAsset, &protocol conformance descriptor for ImageAsset);
    v31 = v80;
    v32 = v82;
    sub_20C4608B0();
    if (v32)
    {
      sub_20C40C57C(&v90);
    }

    else
    {
      v87 = v92;
      v88 = v93;
      v89 = v94;
      v86 = v91;
      v85 = v90;
      v84 = 1;
      sub_20C40B974();
      sub_20C4608B0();
      sub_20C40C57C(&v90);
      *&v85 = v26;
      *(&v85 + 1) = v27;
      v84 = 2;
      type metadata accessor for CGSize();
      sub_20C449E9C(&qword_28110B3E0, type metadata accessor for CGSize, MEMORY[0x277CBF288]);
      sub_20C4608B0();
    }

    (*(v79 + 8))(v30, v31);
    sub_20C44AA8C(v29, type metadata accessor for ImageAsset);
    goto LABEL_16;
  }

  v53 = *v14;
  v54 = *(v14 + 40);
  v91 = *(v14 + 24);
  v92 = v54;
  v55 = *(v14 + 72);
  v93 = *(v14 + 56);
  v94 = v55;
  v90 = *(v14 + 8);
  LOBYTE(v85) = 2;
  sub_20C4475A0();
  v56 = v64;
  sub_20C460870();
  LOBYTE(v85) = v53;
  v84 = 0;
  sub_20C419B7C();
  v57 = v69;
  v58 = v82;
  sub_20C4608B0();
  if (v58)
  {
    sub_20C40C57C(&v90);
    (*(v67 + 8))(v56, v57);
LABEL_16:
    v59 = *(v83 + 8);
    v60 = v17;
    return v59(v60, v19);
  }

  v87 = v92;
  v88 = v93;
  v89 = v94;
  v86 = v91;
  v85 = v90;
  v84 = 1;
  sub_20C40B974();
  sub_20C4608B0();
  (*(v67 + 8))(v56, v57);
  (*(v83 + 8))(v17, v15);
  return sub_20C40C57C(&v90);
}

uint64_t type metadata accessor for ImageAssetAction(uint64_t a1)
{
  result = qword_28110BA88;
  if (!qword_28110BA88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_20C4473EC()
{
  result = qword_28110BAE0;
  if (!qword_28110BAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110BAE0);
  }

  return result;
}

uint64_t sub_20C447440(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageAssetAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20C4474A4()
{
  result = qword_27C7BBD20;
  if (!qword_27C7BBD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBD20);
  }

  return result;
}

unint64_t sub_20C4474F8()
{
  result = qword_28110BAC8;
  if (!qword_28110BAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110BAC8);
  }

  return result;
}

unint64_t sub_20C44754C()
{
  result = qword_28110BB20;
  if (!qword_28110BB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110BB20);
  }

  return result;
}

unint64_t sub_20C4475A0()
{
  result = qword_27C7BBD28;
  if (!qword_27C7BBD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBD28);
  }

  return result;
}

unint64_t sub_20C4475F4()
{
  result = qword_28110BAF8;
  if (!qword_28110BAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110BAF8);
  }

  return result;
}

unint64_t sub_20C447648()
{
  result = qword_28110BB38[0];
  if (!qword_28110BB38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28110BB38);
  }

  return result;
}

uint64_t ImageAssetAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v128 = a2;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBD30, &qword_20C4660F8);
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v127 = &v101 - v3;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBD38, &qword_20C466100);
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v126 = &v101 - v4;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBD40, &qword_20C466108);
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v122 = &v101 - v5;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBD48, &qword_20C466110);
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v125 = &v101 - v6;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBD50, &qword_20C466118);
  v118 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v121 = &v101 - v7;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBD58, &qword_20C466120);
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v124 = &v101 - v8;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBD60, &unk_20C466128);
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v10 = &v101 - v9;
  v123 = type metadata accessor for ImageAssetAction(0);
  MEMORY[0x28223BE20](v123);
  v108 = (&v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v107 = (&v101 - v13);
  MEMORY[0x28223BE20](v14);
  v16 = &v101 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v101 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v101 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v101 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v101 - v27;
  v29 = a1[3];
  v131 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_20C4473EC();
  v30 = v145;
  sub_20C4609B0();
  v145 = v30;
  if (!v30)
  {
    v101 = v25;
    v102 = v19;
    v103 = v16;
    v31 = v124;
    v32 = v125;
    v104 = v22;
    v33 = v126;
    v34 = v127;
    v105 = v28;
    v35 = v128;
    v106 = v10;
    v36 = sub_20C460850();
    v37 = (2 * *(v36 + 16)) | 1;
    v141 = v36;
    v142 = v36 + 32;
    v143 = 0;
    v144 = v37;
    v38 = sub_20C41788C();
    if (v38 == 6 || v143 != v144 >> 1)
    {
      v46 = sub_20C460770();
      v47 = swift_allocError();
      v49 = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BACB8, &qword_20C461670);
      *v49 = v123;
      v50 = v130;
      v51 = v106;
      sub_20C460800();
      sub_20C460760();
      (*(*(v46 - 8) + 104))(v49, *MEMORY[0x277D84160], v46);
      v145 = v47;
      swift_willThrow();
      (*(v129 + 8))(v51, v50);
    }

    else
    {
      if (v38 <= 2u)
      {
        if (v38)
        {
          v39 = v130;
          v40 = v106;
          if (v38 == 1)
          {
            v134[0] = 1;
            sub_20C4475F4();
            v41 = v121;
            v42 = v145;
            sub_20C4607F0();
            v145 = v42;
            if (v42)
            {
LABEL_24:
              (*(v129 + 8))(v40, v39);
              goto LABEL_11;
            }

            type metadata accessor for ImageAsset(0);
            v134[0] = 0;
            sub_20C449E9C(&qword_27C7BAF30, type metadata accessor for ImageAsset, &protocol conformance descriptor for ImageAsset);
            v43 = v104;
            v44 = v115;
            v45 = v145;
            sub_20C460840();
            v145 = v45;
            if (v45)
            {
              (*(v118 + 8))(v41, v44);
              goto LABEL_24;
            }

            v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0E0, &qword_20C462130);
            v134[0] = 1;
            sub_20C40BDE4();
            v85 = v41;
            v86 = v145;
            sub_20C460840();
            v87 = v118;
            if (v86)
            {
              (*(v118 + 8))(v85, v44);
              (*(v129 + 8))(v106, v39);
              swift_unknownObjectRelease();
              sub_20C44AA8C(v43, type metadata accessor for ImageAsset);
              v145 = v86;
              return __swift_destroy_boxed_opaque_existential_1(v131);
            }

            v145 = *(v84 + 64);
            type metadata accessor for CGSize();
            LOBYTE(v136) = 2;
            sub_20C449E9C(&qword_27C7BAC78, type metadata accessor for CGSize, MEMORY[0x277CBF2A0]);
            sub_20C460840();
            v145 = 0;
            (*(v87 + 8))(v85, v44);
            (*(v129 + 8))(v106, v39);
            swift_unknownObjectRelease();
            swift_storeEnumTagMultiPayload();
            v97 = v43;
LABEL_52:
            v100 = v105;
            sub_20C448B40(v97, v105, type metadata accessor for ImageAssetAction);
            sub_20C448B40(v100, v35, type metadata accessor for ImageAssetAction);
            return __swift_destroy_boxed_opaque_existential_1(v131);
          }

          v134[0] = 2;
          sub_20C4475A0();
          v62 = v145;
          sub_20C4607F0();
          v145 = v62;
          if (v62)
          {
            goto LABEL_24;
          }

          v134[0] = 0;
          sub_20C41B93C();
          v63 = v112;
          v64 = v145;
          sub_20C460840();
          v145 = v64;
          if (v64)
          {
            (*(v111 + 8))(v32, v63);
            goto LABEL_24;
          }

          v88 = v133;
          v135 = 1;
          sub_20C40BDE4();
          v89 = v145;
          sub_20C460840();
          v90 = (v111 + 8);
          v91 = (v129 + 8);
          v145 = v89;
          if (v89)
          {
            (*v90)(v32, v63);
            (*v91)(v106, v39);
            goto LABEL_11;
          }

          (*v90)(v32, v63);
          (*v91)(v106, v39);
          swift_unknownObjectRelease();
          *&v134[39] = v138;
          *&v134[23] = v137;
          *&v134[55] = v139;
          *&v134[71] = v140;
          *&v134[7] = v136;
          v98 = *&v134[48];
          v92 = v102;
          *(v102 + 33) = *&v134[32];
          *(v92 + 49) = v98;
          *(v92 + 65) = *&v134[64];
          v99 = *&v134[16];
          *(v92 + 1) = *v134;
          *v92 = v88;
          *(v92 + 10) = *&v134[79];
          *(v92 + 17) = v99;
LABEL_51:
          swift_storeEnumTagMultiPayload();
          v97 = v92;
          goto LABEL_52;
        }

        v134[0] = 0;
        sub_20C447648();
        v57 = v130;
        v58 = v106;
        v59 = v145;
        sub_20C4607F0();
        v145 = v59;
        if (v59)
        {
          goto LABEL_18;
        }

        v135 = 0;
        sub_20C40BDE4();
        v70 = v110;
        v71 = v145;
        sub_20C460840();
        v61 = v129;
        v145 = v71;
        if (v71)
        {
          (*(v109 + 8))(v31, v70);
        }

        else
        {
          v137 = *&v134[16];
          v138 = *&v134[32];
          v139 = *&v134[48];
          v140 = *&v134[64];
          v136 = *v134;
          type metadata accessor for CGSize();
          v132 = 1;
          sub_20C449E9C(&qword_27C7BAC78, type metadata accessor for CGSize, MEMORY[0x277CBF2A0]);
          v80 = v145;
          sub_20C460840();
          v145 = v80;
          v81 = v109;
          if (!v80)
          {
            (*(v109 + 8))(v31, v70);
            (*(v61 + 8))(v106, v57);
            swift_unknownObjectRelease();
            v93 = v137;
            v94 = v139;
            v95 = v140;
            v92 = v101;
            *(v101 + 2) = v138;
            v92[3] = v94;
            *v92 = v136;
            v92[1] = v93;
            v96 = v133;
            v92[4] = v95;
            v92[5] = v96;
            goto LABEL_51;
          }

          sub_20C40C57C(&v136);
          (*(v81 + 8))(v31, v70);
        }

        goto LABEL_31;
      }

      if (v38 == 3)
      {
        v134[0] = 3;
        sub_20C44754C();
        v57 = v130;
        v58 = v106;
        v60 = v145;
        sub_20C4607F0();
        v61 = v129;
        v145 = v60;
        if (v60)
        {
LABEL_18:
          (*(v129 + 8))(v58, v57);
          goto LABEL_11;
        }

        type metadata accessor for ImageAsset(0);
        v134[0] = 0;
        sub_20C449E9C(&qword_27C7BAF30, type metadata accessor for ImageAsset, &protocol conformance descriptor for ImageAsset);
        v72 = v103;
        v73 = v117;
        v74 = v122;
        v75 = v145;
        sub_20C460840();
        v145 = v75;
        if (!v75)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0B0, &unk_20C462120);
          v134[0] = 1;
          sub_20C40BDE4();
          v82 = v122;
          v83 = v145;
          sub_20C460840();
          v145 = v83;
          if (v83)
          {
            (*(v116 + 8))(v82, v73);
            (*(v61 + 8))(v106, v57);
            swift_unknownObjectRelease();
            sub_20C44AA8C(v72, type metadata accessor for ImageAsset);
            return __swift_destroy_boxed_opaque_existential_1(v131);
          }

          (*(v116 + 8))(v82, v73);
          (*(v61 + 8))(v106, v57);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v97 = v72;
          goto LABEL_52;
        }

        (*(v116 + 8))(v74, v73);
LABEL_31:
        (*(v61 + 8))(v106, v57);
        goto LABEL_11;
      }

      v53 = v129;
      if (v38 != 4)
      {
        v134[0] = 5;
        sub_20C4474A4();
        v65 = v130;
        v66 = v106;
        v67 = v145;
        sub_20C4607F0();
        v145 = v67;
        if (v67)
        {
          v68 = *(v53 + 8);
          v69 = v66;
        }

        else
        {
          type metadata accessor for CGSize();
          sub_20C449E9C(&qword_27C7BAC78, type metadata accessor for CGSize, MEMORY[0x277CBF2A0]);
          v78 = v120;
          v79 = v145;
          sub_20C460840();
          v145 = v79;
          if (!v79)
          {
            (*(v119 + 8))(v34, v78);
            (*(v53 + 8))(v106, v65);
            swift_unknownObjectRelease();
            v92 = v108;
            *v108 = *v134;
            goto LABEL_51;
          }

          (*(v119 + 8))(v34, v78);
          v68 = *(v53 + 8);
          v69 = v106;
        }

        v68(v69, v65);
        goto LABEL_11;
      }

      v134[0] = 4;
      sub_20C4474F8();
      v54 = v130;
      v55 = v106;
      v56 = v145;
      sub_20C4607F0();
      v145 = v56;
      if (!v56)
      {
        type metadata accessor for CGSize();
        sub_20C449E9C(&qword_27C7BAC78, type metadata accessor for CGSize, MEMORY[0x277CBF2A0]);
        v76 = v114;
        v77 = v145;
        sub_20C460840();
        v145 = v77;
        if (v77)
        {
          (*(v113 + 8))(v33, v76);
          (*(v53 + 8))(v55, v130);
          goto LABEL_11;
        }

        (*(v113 + 8))(v33, v76);
        (*(v53 + 8))(v55, v130);
        swift_unknownObjectRelease();
        v92 = v107;
        *v107 = *v134;
        goto LABEL_51;
      }

      (*(v53 + 8))(v55, v54);
    }

LABEL_11:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v131);
}

uint64_t sub_20C448B40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t ImageAssetAction.hash(into:)(uint64_t a1)
{
  v68 = a1;
  v67 = sub_20C45FC30();
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v64 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC18, &unk_20C464A00);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v62 = &v61 - v7;
  v8 = sub_20C45FD00();
  v65 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v63 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC10, &qword_20C462070);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v61 - v14;
  v16 = type metadata accessor for ImageAsset(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v61 - v20;
  v22 = type metadata accessor for ImageAssetAction(0);
  MEMORY[0x28223BE20](v22);
  v24 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C447440(v1, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v46 = *v24;
        v47 = *(v24 + 24);
        v48 = *(v24 + 56);
        v76 = *(v24 + 40);
        v77 = v48;
        v78 = *(v24 + 72);
        v74 = *(v24 + 8);
        v75 = v47;
        v49 = v68;
        MEMORY[0x20F2FAEA0](2);
        MEMORY[0x20F2FAEA0](v46);
        v71 = v76;
        v72 = v77;
        v73 = v78;
        v70 = v75;
        v69 = v74;
        ImageAssetCacheKey.hash(into:)(v49);
        return sub_20C40C57C(&v74);
      }

      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0E0, &qword_20C462130);
      v27 = &v24[*(v26 + 48)];
      v28 = *(v27 + 4);
      v77 = *(v27 + 3);
      v78 = v28;
      v29 = *(v27 + 2);
      v75 = *(v27 + 1);
      v76 = v29;
      v74 = *v27;
      v30 = &v24[*(v26 + 64)];
      v31 = *v30;
      v32 = v30[1];
      sub_20C448B40(v24, v21, type metadata accessor for ImageAsset);
      v33 = v68;
      MEMORY[0x20F2FAEA0](1);
      sub_20C409B04(v21, v15, &qword_27C7BAC10, &qword_20C462070);
      v34 = v65;
      if ((*(v65 + 48))(v15, 1, v8) == 1)
      {
        sub_20C460950();
      }

      else
      {
        v56 = v63;
        (*(v34 + 32))(v63, v15, v8);
        sub_20C460950();
        sub_20C449E9C(&qword_28110B4D8, MEMORY[0x277D09D68], MEMORY[0x277D09D78]);
        sub_20C460460();
        (*(v34 + 8))(v56, v8);
      }

      sub_20C4604F0();
      sub_20C4604F0();

      v57 = v62;
      sub_20C409B04(&v21[*(v16 + 28)], v62, &qword_27C7BAC18, &unk_20C464A00);
      v58 = v66;
      v59 = v67;
      if ((*(v66 + 48))(v57, 1, v67) == 1)
      {
        sub_20C460950();
      }

      else
      {
        v60 = v64;
        (*(v58 + 32))(v64, v57, v59);
        sub_20C460950();
        sub_20C449E9C(&qword_28110BEB0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
        sub_20C460460();
        (*(v58 + 8))(v60, v59);
      }

      v71 = v76;
      v72 = v77;
      v73 = v78;
      v70 = v75;
      v69 = v74;
      ImageAssetCacheKey.hash(into:)(v33);
      sub_20C40C57C(&v74);
      sub_20C40C1A4(v31, v32);
      v55 = v21;
      return sub_20C44AA8C(v55, type metadata accessor for ImageAsset);
    }

    v38 = *(v24 + 3);
    v76 = *(v24 + 2);
    v77 = v38;
    v78 = *(v24 + 4);
    v39 = *(v24 + 1);
    v74 = *v24;
    v75 = v39;
    v35 = *(v24 + 10);
    v36 = *(v24 + 11);
    v40 = v68;
    MEMORY[0x20F2FAEA0](0);
    v71 = v76;
    v72 = v77;
    v73 = v78;
    v70 = v75;
    v69 = v74;
    ImageAssetCacheKey.hash(into:)(v40);
    sub_20C40C57C(&v74);
    return sub_20C40C1A4(v35, v36);
  }

  if (EnumCaseMultiPayload != 3)
  {
    v35 = *v24;
    v36 = *(v24 + 1);
    if (EnumCaseMultiPayload == 4)
    {
      v37 = 4;
    }

    else
    {
      v37 = 5;
    }

    MEMORY[0x20F2FAEA0](v37);
    return sub_20C40C1A4(v35, v36);
  }

  v41 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0B0, &unk_20C462120) + 48)];
  v42 = *(v41 + 4);
  v77 = *(v41 + 3);
  v78 = v42;
  v43 = *(v41 + 2);
  v75 = *(v41 + 1);
  v76 = v43;
  v74 = *v41;
  sub_20C448B40(v24, v18, type metadata accessor for ImageAsset);
  v44 = v68;
  MEMORY[0x20F2FAEA0](3);
  sub_20C409B04(v18, v12, &qword_27C7BAC10, &qword_20C462070);
  v45 = v65;
  if ((*(v65 + 48))(v12, 1, v8) == 1)
  {
    sub_20C460950();
  }

  else
  {
    v51 = v63;
    (*(v45 + 32))(v63, v12, v8);
    sub_20C460950();
    sub_20C449E9C(&qword_28110B4D8, MEMORY[0x277D09D68], MEMORY[0x277D09D78]);
    sub_20C460460();
    (*(v45 + 8))(v51, v8);
  }

  sub_20C4604F0();
  sub_20C4604F0();

  sub_20C409B04(&v18[*(v16 + 28)], v5, &qword_27C7BAC18, &unk_20C464A00);
  v52 = v66;
  v53 = v67;
  if ((*(v66 + 48))(v5, 1, v67) == 1)
  {
    sub_20C460950();
  }

  else
  {
    v54 = v64;
    (*(v52 + 32))(v64, v5, v53);
    sub_20C460950();
    sub_20C449E9C(&qword_28110BEB0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    sub_20C460460();
    (*(v52 + 8))(v54, v53);
  }

  v71 = v76;
  v72 = v77;
  v73 = v78;
  v70 = v75;
  v69 = v74;
  ImageAssetCacheKey.hash(into:)(v44);
  sub_20C40C57C(&v74);
  v55 = v18;
  return sub_20C44AA8C(v55, type metadata accessor for ImageAsset);
}

uint64_t ImageAssetAction.hashValue.getter()
{
  sub_20C460930();
  ImageAssetAction.hash(into:)(v1);
  return sub_20C460970();
}

uint64_t sub_20C449664()
{
  sub_20C460930();
  ImageAssetAction.hash(into:)(v1);
  return sub_20C460970();
}

uint64_t sub_20C4496A8(uint64_t a1)
{
  sub_20C460930();
  ImageAssetAction.hash(into:)(v2);
  return sub_20C460970();
}

BOOL _s12FitnessAsset05ImageB6ActionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v80 = a2;
  v3 = type metadata accessor for ImageAsset(0);
  MEMORY[0x28223BE20](v3 - 8);
  v77 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v78 = &v77 - v6;
  v7 = type metadata accessor for ImageAssetAction(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = (&v77 - v11);
  MEMORY[0x28223BE20](v13);
  v79 = &v77 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v77 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v77 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v77 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDA8, &qword_20C466A58);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v77 - v25;
  v28 = &v77 + *(v27 + 56) - v25;
  sub_20C447440(a1, &v77 - v25);
  sub_20C447440(v80, v28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v56 = v79;
      sub_20C447440(v26, v79);
      v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0B0, &unk_20C462120) + 48);
      v58 = *(v56 + v57 + 64);
      v99 = *(v56 + v57 + 48);
      v100 = v58;
      v59 = *(v56 + v57 + 32);
      v97 = *(v56 + v57 + 16);
      v98 = v59;
      v96 = *(v56 + v57);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        sub_20C40C57C(&v96);
        v71 = v56;
LABEL_33:
        sub_20C44AA8C(v71, type metadata accessor for ImageAsset);
        goto LABEL_34;
      }

      v60 = *&v28[v57 + 48];
      v93 = *&v28[v57 + 32];
      v94 = v60;
      v95 = *&v28[v57 + 64];
      v61 = *&v28[v57 + 16];
      v91 = *&v28[v57];
      v92 = v61;
      v41 = v77;
      sub_20C448B40(v28, v77, type metadata accessor for ImageAsset);
      v62 = static ImageAsset.== infix(_:_:)(v56, v41);
      sub_20C44AA8C(v56, type metadata accessor for ImageAsset);
      if ((v62 & 1) == 0)
      {
LABEL_29:
        sub_20C44AA8C(v41, type metadata accessor for ImageAsset);
        sub_20C40C57C(&v96);
        v70 = &v91;
        goto LABEL_30;
      }

      v88 = v98;
      v89 = v99;
      v90 = v100;
      v86 = v96;
      v87 = v97;
      v83 = v93;
      v84 = v94;
      v85 = v95;
      v81 = v91;
      v82 = v92;
      v63 = _s12FitnessAsset05ImageB8CacheKeyV2eeoiySbAC_ACtFZ_0(&v86, &v81);
      sub_20C44AA8C(v41, type metadata accessor for ImageAsset);
LABEL_37:
      sub_20C40C57C(&v91);
      sub_20C40C57C(&v96);
LABEL_38:
      sub_20C44AA8C(v26, type metadata accessor for ImageAssetAction);
      return v63;
    }

    if (EnumCaseMultiPayload == 4)
    {
      sub_20C447440(v26, v12);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
LABEL_34:
        sub_20C44AA24(v26);
        return 0;
      }

      v45 = *v12;
      v44 = v12[1];
    }

    else
    {
      sub_20C447440(v26, v9);
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_34;
      }

      v45 = *v9;
      v44 = v9[1];
    }

    v54 = v45 == *v28;
    v55 = v44 == *(v28 + 1);
LABEL_25:
    v63 = v55 && v54;
    goto LABEL_38;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_20C447440(v26, v23);
    v46 = *(v23 + 3);
    v98 = *(v23 + 2);
    v99 = v46;
    v100 = *(v23 + 4);
    v47 = *(v23 + 1);
    v96 = *v23;
    v97 = v47;
    v36 = *(v23 + 10);
    v35 = *(v23 + 11);
    if (!swift_getEnumCaseMultiPayload())
    {
      v48 = *(v28 + 1);
      v49 = *(v28 + 3);
      v93 = *(v28 + 2);
      v94 = v49;
      v50 = *(v28 + 3);
      v95 = *(v28 + 4);
      v51 = *(v28 + 1);
      v91 = *v28;
      v92 = v51;
      v52 = *(v23 + 3);
      v88 = *(v23 + 2);
      v89 = v52;
      v90 = *(v23 + 4);
      v53 = *(v23 + 1);
      v86 = *v23;
      v87 = v53;
      v83 = v93;
      v84 = v50;
      v85 = *(v28 + 4);
      v40 = *(v28 + 10);
      v39 = *(v28 + 11);
      v81 = v91;
      v82 = v48;
      v43 = _s12FitnessAsset05ImageB8CacheKeyV2eeoiySbAC_ACtFZ_0(&v86, &v81);
LABEL_13:
      sub_20C40C57C(&v91);
      sub_20C40C57C(&v96);
      if (v43)
      {
        v54 = v36 == v40;
        v55 = v35 == v39;
        goto LABEL_25;
      }

      goto LABEL_31;
    }

LABEL_21:
    sub_20C40C57C(&v96);
    goto LABEL_34;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_20C447440(v26, v20);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0E0, &qword_20C462130);
    v31 = *(v30 + 48);
    v32 = *&v20[v31 + 64];
    v99 = *&v20[v31 + 48];
    v100 = v32;
    v33 = *&v20[v31 + 32];
    v97 = *&v20[v31 + 16];
    v98 = v33;
    v96 = *&v20[v31];
    v34 = *(v30 + 64);
    v36 = *&v20[v34];
    v35 = *&v20[v34 + 8];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v37 = *&v28[v31 + 48];
      v93 = *&v28[v31 + 32];
      v94 = v37;
      v95 = *&v28[v31 + 64];
      v38 = *&v28[v31 + 16];
      v91 = *&v28[v31];
      v92 = v38;
      v40 = *&v28[v34];
      v39 = *&v28[v34 + 8];
      v41 = v78;
      sub_20C448B40(v28, v78, type metadata accessor for ImageAsset);
      v42 = static ImageAsset.== infix(_:_:)(v20, v41);
      sub_20C44AA8C(v20, type metadata accessor for ImageAsset);
      if (v42)
      {
        v88 = v98;
        v89 = v99;
        v90 = v100;
        v86 = v96;
        v87 = v97;
        v83 = v93;
        v84 = v94;
        v85 = v95;
        v81 = v91;
        v82 = v92;
        v43 = _s12FitnessAsset05ImageB8CacheKeyV2eeoiySbAC_ACtFZ_0(&v86, &v81);
        sub_20C44AA8C(v41, type metadata accessor for ImageAsset);
        goto LABEL_13;
      }

      goto LABEL_29;
    }

    sub_20C40C57C(&v96);
    v71 = v20;
    goto LABEL_33;
  }

  sub_20C447440(v26, v17);
  v64 = *v17;
  v65 = *(v17 + 24);
  v66 = *(v17 + 56);
  v98 = *(v17 + 40);
  v99 = v66;
  v100 = *(v17 + 72);
  v96 = *(v17 + 8);
  v97 = v65;
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    goto LABEL_21;
  }

  v67 = *v28;
  v68 = *(v28 + 24);
  v69 = *(v28 + 56);
  v93 = *(v28 + 40);
  v94 = v69;
  v95 = *(v28 + 72);
  v91 = *(v28 + 8);
  v92 = v68;
  if (v64 == v67)
  {
    v72 = *(v17 + 24);
    v73 = *(v17 + 56);
    v88 = *(v17 + 40);
    v89 = v73;
    v90 = *(v17 + 72);
    v86 = *(v17 + 8);
    v87 = v72;
    v74 = *(v28 + 24);
    v75 = *(v28 + 56);
    v83 = *(v28 + 40);
    v84 = v75;
    v85 = *(v28 + 72);
    v81 = *(v28 + 8);
    v82 = v74;
    v63 = _s12FitnessAsset05ImageB8CacheKeyV2eeoiySbAC_ACtFZ_0(&v86, &v81);
    goto LABEL_37;
  }

  sub_20C40C57C(&v91);
  v70 = &v96;
LABEL_30:
  sub_20C40C57C(v70);
LABEL_31:
  sub_20C44AA8C(v26, type metadata accessor for ImageAssetAction);
  return 0;
}

uint64_t sub_20C449E9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_20C449EE4(uint64_t a1)
{
  sub_20C449F94(319);
  if (v1 <= 0x3F)
  {
    sub_20C41DA60(319);
    if (v2 <= 0x3F)
    {
      sub_20C44A000();
      if (v3 <= 0x3F)
      {
        sub_20C41DBC4(319);
        if (v4 <= 0x3F)
        {
          sub_20C41DC30();
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_20C449F94(uint64_t a1)
{
  if (!qword_28110B898[0])
  {
    type metadata accessor for CGSize();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_28110B898);
    }
  }
}

void sub_20C44A000()
{
  if (!qword_28110B860)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28110B860);
    }
  }
}

unint64_t sub_20C44A0D8()
{
  result = qword_27C7BBD70;
  if (!qword_27C7BBD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBD70);
  }

  return result;
}

unint64_t sub_20C44A130()
{
  result = qword_27C7BBD78;
  if (!qword_27C7BBD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBD78);
  }

  return result;
}

unint64_t sub_20C44A188()
{
  result = qword_27C7BBD80;
  if (!qword_27C7BBD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBD80);
  }

  return result;
}

unint64_t sub_20C44A1E0()
{
  result = qword_27C7BBD88;
  if (!qword_27C7BBD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBD88);
  }

  return result;
}

unint64_t sub_20C44A238()
{
  result = qword_27C7BBD90;
  if (!qword_27C7BBD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBD90);
  }

  return result;
}

unint64_t sub_20C44A290()
{
  result = qword_27C7BBD98;
  if (!qword_27C7BBD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBD98);
  }

  return result;
}

unint64_t sub_20C44A2E8()
{
  result = qword_27C7BBDA0;
  if (!qword_27C7BBDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBDA0);
  }

  return result;
}

unint64_t sub_20C44A340()
{
  result = qword_28110BB28;
  if (!qword_28110BB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110BB28);
  }

  return result;
}

unint64_t sub_20C44A398()
{
  result = qword_28110BB30;
  if (!qword_28110BB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110BB30);
  }

  return result;
}

unint64_t sub_20C44A3F0()
{
  result = qword_28110BAE8;
  if (!qword_28110BAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110BAE8);
  }

  return result;
}

unint64_t sub_20C44A448()
{
  result = qword_28110BAF0;
  if (!qword_28110BAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110BAF0);
  }

  return result;
}

unint64_t sub_20C44A4A0()
{
  result = qword_28110BB00;
  if (!qword_28110BB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110BB00);
  }

  return result;
}

unint64_t sub_20C44A4F8()
{
  result = qword_28110BB08;
  if (!qword_28110BB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110BB08);
  }

  return result;
}

unint64_t sub_20C44A550()
{
  result = qword_28110BB10;
  if (!qword_28110BB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110BB10);
  }

  return result;
}

unint64_t sub_20C44A5A8()
{
  result = qword_28110BB18;
  if (!qword_28110BB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110BB18);
  }

  return result;
}

unint64_t sub_20C44A600()
{
  result = qword_28110BAB8;
  if (!qword_28110BAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110BAB8);
  }

  return result;
}

unint64_t sub_20C44A658()
{
  result = qword_28110BAC0;
  if (!qword_28110BAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110BAC0);
  }

  return result;
}

unint64_t sub_20C44A6B0()
{
  result = qword_28110BAA8;
  if (!qword_28110BAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110BAA8);
  }

  return result;
}

unint64_t sub_20C44A708()
{
  result = qword_28110BAB0;
  if (!qword_28110BAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110BAB0);
  }

  return result;
}

unint64_t sub_20C44A760()
{
  result = qword_28110BAD0;
  if (!qword_28110BAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110BAD0);
  }

  return result;
}

unint64_t sub_20C44A7B8()
{
  result = qword_28110BAD8;
  if (!qword_28110BAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110BAD8);
  }

  return result;
}

uint64_t sub_20C44A80C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001ALL && 0x800000020C467650 == a2 || (sub_20C4608D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000020C467670 == a2 || (sub_20C4608D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000020C467690 == a2 || (sub_20C4608D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000020C4676D0 == a2 || (sub_20C4608D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6570704177656976 && a2 == 0xEC00000064657261 || (sub_20C4608D0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x657A695377656976 && a2 == 0xEF6465676E616843)
  {

    return 5;
  }

  else
  {
    v5 = sub_20C4608D0();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_20C44AA24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDA8, &qword_20C466A58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C44AA8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t DynamicImageAssetView.init(store:placeholderImage:platform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  *a5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDB0, &qword_20C466A90);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for DynamicImageAssetView(0);
  v11 = v10[5];
  *(a5 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDB8, &qword_20C466AC8);
  swift_storeEnumTagMultiPayload();
  v12 = v10[6];
  *(a5 + v12) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  v14 = a5 + v10[7];
  *v14 = sub_20C4142D4;
  *(v14 + 1) = result;
  v14[16] = 0;
  *(a5 + v10[8]) = a3;
  *(a5 + v10[9]) = a4;
  return result;
}

void sub_20C44AC34(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB600, &unk_20C464880);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC10, &qword_20C462070);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_20C4603C0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + *(type metadata accessor for DynamicImageAssetView(0) + 32));
  if (!v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDD8, &qword_20C466B90);
    sub_20C417418(&qword_28110B420, &qword_27C7BBDD8, &qword_20C466B90, MEMORY[0x277D04410]);
    sub_20C460020();
    swift_getKeyPath();
    sub_20C460430();

    v16 = type metadata accessor for ImageAsset(0);
    if ((*(*(v16 - 8) + 48))(v5, 1, v16) == 1)
    {
      v17 = &qword_27C7BB600;
      v18 = &unk_20C464880;
      v19 = v5;
    }

    else
    {
      sub_20C409B04(v5, v8, &qword_27C7BAC10, &qword_20C462070);
      sub_20C4511D8(v5, type metadata accessor for ImageAsset);
      v20 = sub_20C45FD00();
      v21 = *(v20 - 8);
      if ((*(v21 + 48))(v8, 1, v20) != 1)
      {
        sub_20C45FCF0();
        (*(v21 + 8))(v8, v20);
        goto LABEL_9;
      }

      v17 = &qword_27C7BAC10;
      v18 = &qword_20C462070;
      v19 = v8;
    }

    sub_20C40B440(v19, v17, v18);
    v22 = [objc_opt_self() tertiarySystemFillColor];
LABEL_9:
    v24 = sub_20C460390();
    v25 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFE0, &unk_20C466C00);
    sub_20C41703C();
    sub_20C460220();
    goto LABEL_10;
  }

  v14 = v13;
  sub_20C4603A0();
  (*(v10 + 104))(v12, *MEMORY[0x277CE0FE0], v9);
  v15 = sub_20C4603D0();

  (*(v10 + 8))(v12, v9);
  v24 = v15;
  v25 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFE0, &unk_20C466C00);
  sub_20C41703C();
  sub_20C460220();

LABEL_10:
  v23 = v27;
  *a1 = v26;
  *(a1 + 8) = v23;
}

uint64_t DynamicImageAssetView.body.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for DynamicImageAssetView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_20C4516E4(v1, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DynamicImageAssetView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_20C451170(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for DynamicImageAssetView);
  *a1 = sub_20C4500D0;
  a1[1] = v7;
  return result;
}

uint64_t sub_20C44B1DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v84 = a3;
  v5 = sub_20C460090();
  v6 = *(v5 - 8);
  v82 = v5;
  v83 = v6;
  MEMORY[0x28223BE20](v5);
  v77 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DynamicImageAssetView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v69 = v8 - 8;
  MEMORY[0x28223BE20](v8 - 8);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDD0, &qword_20C466B88);
  MEMORY[0x28223BE20](v88);
  v12 = &v65 - v11;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDF0, &qword_20C466BA0);
  MEMORY[0x28223BE20](v70);
  v14 = (&v65 - v13);
  v67 = &v65 - v13;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDF8, &qword_20C466BA8);
  v73 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v68 = &v65 - v15;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBE00, &qword_20C466BB0);
  v75 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v89 = &v65 - v16;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBE08, &qword_20C466BB8);
  v79 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v90 = &v65 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBE10, &qword_20C466BC0);
  v19 = *(v18 - 8);
  v80 = v18;
  v81 = v19;
  MEMORY[0x28223BE20](v18);
  v76 = &v65 - v20;
  sub_20C460040();
  sub_20C4606A0();
  v22 = v21;
  v24 = v23;
  v91 = a2;
  sub_20C44BB88(a2, a1, v14, v21, v23);
  sub_20C450424(v12);
  v85 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C4516E4(a2, v85, type metadata accessor for DynamicImageAssetView);
  v25 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v26 = *(v9 + 80);
  v71 = v25 + v10;
  v27 = v25;
  v86 = v25;
  v87 = v26;
  v28 = (v25 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  sub_20C451170(&v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v27, type metadata accessor for DynamicImageAssetView);
  v30 = (v29 + v28);
  *v30 = v22;
  v30[1] = v24;
  v31 = sub_20C4507FC(&qword_27C7BBE18, &qword_27C7BBDF0, &qword_20C466BA0, sub_20C4506A0);
  v32 = sub_20C450878();
  v33 = v70;
  v34 = v88;
  v35 = v67;
  sub_20C460370();

  sub_20C40B440(v12, &qword_27C7BBDD0, &qword_20C466B88);
  sub_20C408538(v35);
  v36 = v91;
  sub_20C450424(v12);
  v37 = v85;
  sub_20C4516E4(v36, v85, type metadata accessor for DynamicImageAssetView);
  v38 = swift_allocObject();
  v39 = v86;
  sub_20C451170(v37, v38 + v86, type metadata accessor for DynamicImageAssetView);
  v40 = (v38 + v28);
  *v40 = v22;
  v40[1] = v24;
  v94 = v33;
  v95 = v34;
  v96 = v31;
  v97 = v32;
  v66 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = v72;
  v43 = v68;
  sub_20C460370();

  sub_20C40B440(v12, &qword_27C7BBDD0, &qword_20C466B88);
  v44 = v42;
  (*(v73 + 8))(v43, v42);
  v45 = v77;
  v46 = v91;
  sub_20C450198(v77);
  v47 = v85;
  sub_20C4516E4(v46, v85, type metadata accessor for DynamicImageAssetView);
  v48 = swift_allocObject();
  sub_20C451170(v47, v48 + v39, type metadata accessor for DynamicImageAssetView);
  v49 = (v48 + v28);
  *v49 = v22;
  v49[1] = v24;
  v94 = v44;
  v95 = v88;
  v96 = OpaqueTypeConformance2;
  v97 = v66;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = sub_20C451014(&qword_27C7BBE40, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  v52 = v89;
  v53 = v74;
  v54 = v82;
  sub_20C460370();

  (*(v83 + 8))(v45, v54);
  (*(v75 + 8))(v52, v53);
  v92 = v22;
  v93 = v24;
  sub_20C4516E4(v91, v47, type metadata accessor for DynamicImageAssetView);
  v55 = swift_allocObject();
  sub_20C451170(v47, v55 + v86, type metadata accessor for DynamicImageAssetView);
  type metadata accessor for CGSize();
  v57 = v56;
  v94 = v53;
  v95 = v54;
  v96 = v50;
  v97 = v51;
  v58 = swift_getOpaqueTypeConformance2();
  v59 = sub_20C451014(&qword_28110B3D8, type metadata accessor for CGSize, MEMORY[0x277CBF298]);
  v60 = v76;
  v61 = v78;
  v62 = v90;
  sub_20C460370();

  (*(v79 + 8))(v62, v61);
  sub_20C460380();
  v94 = v61;
  v95 = v57;
  v96 = v58;
  v97 = v59;
  swift_getOpaqueTypeConformance2();
  v63 = v80;
  sub_20C460320();

  return (*(v81 + 8))(v60, v63);
}

void *sub_20C44BB88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v86 = a2;
  v95 = a3;
  v82 = type metadata accessor for ImageAsset(0);
  v80 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v83 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB600, &unk_20C464880);
  MEMORY[0x28223BE20](v9 - 8);
  v81 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v79 = &v72 - v12;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
  v72 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v96 = &v72 - v13;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBE50, &qword_20C466C70);
  v85 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v84 = &v72 - v14;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBE58, &qword_20C466C78);
  MEMORY[0x28223BE20](v93);
  v92 = (&v72 - v15);
  v16 = sub_20C460050();
  v90 = *(v16 - 8);
  v91 = v16;
  v17 = *(v90 + 64);
  MEMORY[0x28223BE20](v16);
  v89 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DynamicImageAssetView(0);
  v87 = *(v18 - 8);
  v19 = *(v87 + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v88 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v20 + 36);
  v97 = a1;
  v22 = (a1 + v21);
  v24 = *v22;
  v23 = v22[1];
  v25 = *(v22 + 16);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDD8, &qword_20C466B90);
  sub_20C417418(&qword_28110B420, &qword_27C7BBDD8, &qword_20C466B90, MEMORY[0x277D04410]);
  v78 = v24;
  v75 = v26;
  v76 = v23;
  v77 = v25;
  sub_20C460020();
  swift_getKeyPath();
  sub_20C460420();

  v113[2] = v106[1];
  v113[3] = v106[2];
  v113[4] = v106[3];
  v113[0] = v105;
  v113[1] = v106[0];
  if (!*&v106[0])
  {
    v38 = v97;
    sub_20C44AC34(&v107);
    v96 = v107;
    LODWORD(v85) = BYTE8(v107);
    v39 = v88;
    sub_20C4516E4(v38, v88, type metadata accessor for DynamicImageAssetView);
    v41 = v89;
    v40 = v90;
    v42 = v91;
    (*(v90 + 16))(v89, v86, v91);
    v43 = (*(v87 + 80) + 32) & ~*(v87 + 80);
    v44 = (v19 + *(v40 + 80) + v43) & ~*(v40 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = a4;
    *(v45 + 24) = a5;
    sub_20C451170(v39, v45 + v43, type metadata accessor for DynamicImageAssetView);
    (*(v40 + 32))(v45 + v44, v41, v42);
    v46 = v92;
    *v92 = v96;
    *(v46 + 8) = v85;
    v46[2] = sub_20C45174C;
    v46[3] = v45;
    v46[4] = 0;
    v46[5] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFD0, &unk_20C466BF0);
    v47 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BAFB0, &unk_20C466BD0);
    v48 = sub_20C4507FC(&qword_28110B440, &qword_27C7BAFB0, &unk_20C466BD0, sub_20C416E3C);
    v49 = sub_20C417418(qword_28110B7C8, &qword_27C7BAF10, &qword_20C4640D0, &protocol conformance descriptor for AssetLoadState<A, B>);
    *&v107 = v47;
    *(&v107 + 1) = v98;
    v108 = v48;
    *&v109 = v49;
    swift_getOpaqueTypeConformance2();
    sub_20C416F80();
    return sub_20C460220();
  }

  v73 = v19;
  v74 = v17;
  v107 = v105;
  v109 = *(v106 + 8);
  v110 = *(&v106[1] + 8);
  v111 = *(&v106[2] + 8);
  v108 = *&v106[0];
  v112 = *(&v106[3] + 1);
  v27 = v86;
  sub_20C44C7CC(v97, &v107, v86, v103, a4, a5);
  v100 = v103[0];
  v101 = v103[1];
  *v102 = *v104;
  *&v102[15] = *&v104[15];
  sub_20C460020();
  swift_getKeyPath();
  v28 = v79;
  sub_20C460430();

  sub_20C460020();
  swift_getKeyPath();
  sub_20C460430();

  v29 = v99;
  v30 = v81;
  sub_20C409B04(v28, v81, &qword_27C7BB600, &unk_20C464880);
  v31 = (*(v80 + 48))(v30, 1, v82);
  v32 = v97;
  v33 = v28;
  if (v31 != 1)
  {
    v51 = v83;
    sub_20C451170(v30, v83, type metadata accessor for ImageAsset);
    v52 = v96;
    v35 = v90;
    v37 = v74;
    if (*(v29 + 16))
    {
      v53 = sub_20C457F00(v51);
      if (v54)
      {
        v55 = *(*(v29 + 56) + 8 * v53);
        if (*(v55 + 16))
        {

          v56 = sub_20C457E7C(&v107);
          if (v57)
          {
            sub_20C409B04(*(v55 + 56) + *(v72 + 72) * v56, v52, &qword_27C7BAF10, &qword_20C4640D0);

            sub_20C40B440(v113, &qword_27C7BAC68, &unk_20C464890);
            sub_20C4511D8(v83, type metadata accessor for ImageAsset);
            sub_20C40B440(v33, &qword_27C7BB600, &unk_20C464880);

LABEL_11:
            v36 = v89;
            v34 = v91;
            goto LABEL_12;
          }
        }
      }
    }

    sub_20C40B440(v113, &qword_27C7BAC68, &unk_20C464890);
    sub_20C4511D8(v83, type metadata accessor for ImageAsset);
    sub_20C40B440(v33, &qword_27C7BB600, &unk_20C464880);
    swift_storeEnumTagMultiPayload();
    goto LABEL_11;
  }

  sub_20C40B440(v113, &qword_27C7BAC68, &unk_20C464890);
  sub_20C40B440(v28, &qword_27C7BB600, &unk_20C464880);
  sub_20C40B440(v30, &qword_27C7BB600, &unk_20C464880);
  swift_storeEnumTagMultiPayload();
  v35 = v90;
  v34 = v91;
  v36 = v89;
  v37 = v74;
LABEL_12:
  v58 = v88;
  sub_20C4516E4(v32, v88, type metadata accessor for DynamicImageAssetView);
  (*(v35 + 16))(v36, v27, v34);
  v59 = (*(v87 + 80) + 16) & ~*(v87 + 80);
  v60 = v36;
  v61 = (v73 + *(v35 + 80) + v59) & ~*(v35 + 80);
  v62 = swift_allocObject();
  sub_20C451170(v58, v62 + v59, type metadata accessor for DynamicImageAssetView);
  (*(v35 + 32))(v62 + v61, v60, v34);
  v63 = (v62 + ((v37 + v61 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v63 = a4;
  v63[1] = a5;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFB0, &unk_20C466BD0);
  v65 = sub_20C4507FC(&qword_28110B440, &qword_27C7BAFB0, &unk_20C466BD0, sub_20C416E3C);
  v66 = sub_20C417418(qword_28110B7C8, &qword_27C7BAF10, &qword_20C4640D0, &protocol conformance descriptor for AssetLoadState<A, B>);
  v67 = v84;
  v68 = v96;
  v69 = v98;
  sub_20C460370();

  sub_20C40B440(v68, &qword_27C7BAF10, &qword_20C4640D0);
  sub_20C40B440(v103, &qword_27C7BAFC0, &unk_20C466BE0);
  v70 = v85;
  v71 = v94;
  (*(v85 + 16))(v92, v67, v94);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFD0, &unk_20C466BF0);
  *&v100 = v64;
  *(&v100 + 1) = v69;
  *&v101 = v65;
  *(&v101 + 1) = v66;
  swift_getOpaqueTypeConformance2();
  sub_20C416F80();
  sub_20C460220();
  return (*(v70 + 8))(v67, v71);
}

double sub_20C44C7CC@<D0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v106 = a3;
  v117 = a2;
  v118 = a4;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF60, &unk_20C462050);
  MEMORY[0x28223BE20](v105);
  v111 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v112 = &v95 - v11;
  v12 = sub_20C4603C0();
  v98 = *(v12 - 8);
  v99 = v12;
  MEMORY[0x28223BE20](v12);
  v97 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C460050();
  v103 = *(v14 - 8);
  v104 = v14;
  MEMORY[0x28223BE20](v14);
  v101 = v15;
  v102 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DynamicImageAssetView(0);
  v107 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v108 = v17;
  v109 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ImageAsset(0);
  v115 = *(v18 - 8);
  v116 = v18;
  MEMORY[0x28223BE20](v18);
  v110 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB600, &unk_20C464880);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v95 - v24;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
  v96 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v120 = &v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v119 = &v95 - v28;
  v100 = v16;
  v113 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDD8, &qword_20C466B90);
  sub_20C417418(&qword_28110B420, &qword_27C7BBDD8, &qword_20C466B90, MEMORY[0x277D04410]);
  sub_20C460020();
  swift_getKeyPath();
  sub_20C460430();

  v29 = v25;
  sub_20C460020();
  swift_getKeyPath();
  sub_20C460430();

  v30 = v139[0];
  sub_20C409B04(v25, v22, &qword_27C7BB600, &unk_20C464880);
  if ((*(v115 + 48))(v22, 1, v116) == 1)
  {

    sub_20C40B440(v25, &qword_27C7BB600, &unk_20C464880);
    sub_20C40B440(v22, &qword_27C7BB600, &unk_20C464880);
    v31 = v119;
    swift_storeEnumTagMultiPayload();
    v32 = v117;
    goto LABEL_12;
  }

  v33 = v110;
  sub_20C451170(v22, v110, type metadata accessor for ImageAsset);
  v31 = v119;
  if (*(v30 + 16))
  {
    v34 = sub_20C457F00(v33);
    v32 = v117;
    if (v35)
    {
      v36 = *(*(v30 + 56) + 8 * v34);
      if (*(v36 + 16))
      {

        v37 = sub_20C457E7C(v32);
        if (v38)
        {
          sub_20C409B04(*(v36 + 56) + *(v96 + 72) * v37, v31, &qword_27C7BAF10, &qword_20C4640D0);

          sub_20C4511D8(v33, type metadata accessor for ImageAsset);
          sub_20C40B440(v29, &qword_27C7BB600, &unk_20C464880);

          goto LABEL_12;
        }
      }
    }
  }

  else
  {
    v32 = v117;
  }

  sub_20C4511D8(v33, type metadata accessor for ImageAsset);
  sub_20C40B440(v29, &qword_27C7BB600, &unk_20C464880);
  swift_storeEnumTagMultiPayload();
LABEL_12:
  sub_20C409B04(v31, v120, &qword_27C7BAF10, &qword_20C4640D0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v40 = *(v113 + *(v100 + 32));
      if (v40)
      {
        v41 = v40;
        sub_20C4603A0();
        v43 = v97;
        v42 = v98;
        v44 = v99;
        (*(v98 + 104))(v97, *MEMORY[0x277CE0FE0], v99);
        v45 = sub_20C4603D0();

        (*(v42 + 8))(v43, v44);
        *&v121[0] = v45;
        WORD4(v121[0]) = 0;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFD8, &unk_20C461FB0);
        sub_20C41700C();
        sub_20C460220();
      }

      else
      {
        sub_20C44AC34(&v125);
        *&v121[0] = v125;
        BYTE8(v121[0]) = BYTE8(v125);
        BYTE9(v121[0]) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFD8, &unk_20C461FB0);
        sub_20C41700C();
        sub_20C460220();
      }

      v68 = v125;
      v69 = BYTE8(v125);
      v70 = BYTE9(v125);
      v71 = 256;
      if (!BYTE9(v125))
      {
        v71 = 0;
      }

      v117 = v125;
      *&v121[0] = v125;
      *(&v121[0] + 1) = v71 | BYTE8(v125);
      v121[1] = 0u;
      v122 = 0u;
      LOBYTE(v123) = 1;
      LODWORD(v116) = BYTE8(v125);
      LODWORD(v115) = BYTE9(v125);
      sub_20C417508(v125, BYTE8(v125), SBYTE9(v125));
      sub_20C417508(v68, v69, v70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFD0, &unk_20C466BF0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFF0, &unk_20C466C10);
      sub_20C416F80();
      sub_20C417148(&qword_28110B470, &qword_27C7BAFF0, &unk_20C466C10, sub_20C41700C);
      sub_20C460220();
      v72 = *(&v125 + 1);
      v73 = v126;
      v74 = v127[0];
      v75 = v127[1];
      LOBYTE(v137[0]) = v127[1];
      LOBYTE(v133) = 0;
      v121[0] = v125;
      v114 = v125;
      v121[1] = v126;
      v122 = v127[0];
      LOBYTE(v123) = v127[1];
      v124 = 0;
      sub_20C417540(v125, *(&v125 + 1), v126, *(&v126 + 1), *&v127[0], *(&v127[0] + 1), v127[1], j__swift_retain, sub_20C41751C, sub_20C417508);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFC8, &unk_20C461FA0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFF8, &unk_20C461FD0);
      sub_20C416EC8();
      sub_20C4171CC();
      sub_20C460220();
      v76 = v117;
      v77 = v116;
      v78 = v115;
      sub_20C41752C(v117, v116, v115);
      sub_20C417540(v114, v72, v73, *(&v73 + 1), v74, *(&v74 + 1), v75, j__swift_release, sub_20C4175F8, sub_20C41752C);
      sub_20C41752C(v76, v77, v78);
      sub_20C40B440(v119, &qword_27C7BAF10, &qword_20C4640D0);
      v128 = v125;
      v129 = v126;
      *v130 = v127[0];
      *&v130[15] = *(v127 + 15);
      v79 = sub_20C45FCC0();
      (*(*(v79 - 8) + 8))(v120, v79);
    }

    else
    {
      v47 = v113;
      sub_20C44AC34(&v125);
      v48 = v125;
      v120 = BYTE8(v125);
      v49 = v109;
      sub_20C4516E4(v47, v109, type metadata accessor for DynamicImageAssetView);
      v50 = v102;
      v51 = v103;
      v52 = v104;
      (*(v103 + 16))(v102, v106, v104);
      v53 = (*(v107 + 80) + 32) & ~*(v107 + 80);
      v54 = (v108 + *(v51 + 80) + v53) & ~*(v51 + 80);
      v55 = swift_allocObject();
      *(v55 + 16) = a5;
      *(v55 + 24) = a6;
      sub_20C451170(v49, v55 + v53, type metadata accessor for DynamicImageAssetView);
      (*(v51 + 32))(v55 + v54, v50, v52);
      *&v121[0] = v48;
      *(&v121[0] + 1) = v120;
      *&v121[1] = sub_20C45161C;
      *(&v121[1] + 1) = v55;
      v122 = 0uLL;
      LOBYTE(v123) = 0;
      j__swift_retain(v48);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFD0, &unk_20C466BF0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFF0, &unk_20C466C10);
      sub_20C416F80();
      sub_20C417148(&qword_28110B470, &qword_27C7BAFF0, &unk_20C466C10, sub_20C41700C);
      sub_20C460220();
      LOBYTE(v137[0]) = v127[1];
      LOBYTE(v133) = 0;
      v121[0] = v125;
      v121[1] = v126;
      v122 = v127[0];
      LOBYTE(v123) = v127[1];
      v124 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFC8, &unk_20C461FA0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFF8, &unk_20C461FD0);
      sub_20C416EC8();
      sub_20C4171CC();
      sub_20C460220();
      j__swift_release(v48);

      sub_20C40B440(v119, &qword_27C7BAF10, &qword_20C4640D0);
      v128 = v125;
      v129 = v126;
      *v130 = v127[0];
      *&v130[15] = *(v127 + 15);
    }
  }

  else
  {
    v46 = v112;
    sub_20C409BD0(v120, v112, &qword_27C7BAF60, &unk_20C462050);
    sub_20C409B04(v46, v111, &qword_27C7BAF60, &unk_20C462050);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20C44AC34(&v125);
      v132 = BYTE8(v125);
      v131 = 1;
      *&v121[0] = v125;
      BYTE8(v121[0]) = BYTE8(v125);
      HIBYTE(v123) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB000, &unk_20C466C20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFD8, &unk_20C461FB0);
      sub_20C417258();
      sub_20C41700C();
      sub_20C460220();
      sub_20C409B04(&v125, v121, &qword_27C7BB028, &qword_20C466CE0);
    }

    else
    {
      if (qword_27C7BAC08 != -1)
      {
        swift_once();
      }

      v56 = qword_27C7C40A8;
      v57 = v32[3];
      v127[0] = v32[2];
      v127[1] = v57;
      v127[2] = v32[4];
      v58 = v32[1];
      v125 = *v32;
      v126 = v58;
      v59 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB030, &qword_20C464A30));
      sub_20C40C520(v32, v121);
      v60 = sub_20C45FE40();
      v61 = [v56 objectForKey_];

      if (v61)
      {
        v62 = sub_20C460130();
        v63 = v61;
        sub_20C4603A0();
        v65 = v97;
        v64 = v98;
        v66 = v99;
        (*(v98 + 104))(v97, *MEMORY[0x277CE0FE0], v99);
        v67 = sub_20C4603D0();

        (*(v64 + 8))(v65, v66);
        *&v121[0] = v62;
        *(v121 + 8) = xmmword_20C461E70;
        v122 = 0uLL;
        *(&v121[1] + 1) = v67;
        LOBYTE(v123) = 0;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB008, &unk_20C461FE0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFD0, &unk_20C466BF0);
        sub_20C417418(&qword_28110B438, &qword_27C7BB008, &unk_20C461FE0, MEMORY[0x277CE1198]);
        sub_20C416F80();
        sub_20C460220();
      }

      else
      {
        v80 = v113;
        sub_20C44AC34(&v125);
        v117 = v125;
        v81 = BYTE8(v125);
        v82 = v109;
        sub_20C4516E4(v80, v109, type metadata accessor for DynamicImageAssetView);
        v83 = (*(v107 + 80) + 16) & ~*(v107 + 80);
        v84 = (v108 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
        v85 = swift_allocObject();
        sub_20C451170(v82, v85 + v83, type metadata accessor for DynamicImageAssetView);
        v86 = (v85 + v84);
        v87 = v32[3];
        v86[2] = v32[2];
        v86[3] = v87;
        v86[4] = v32[4];
        v88 = v32[1];
        *v86 = *v32;
        v86[1] = v88;
        v89 = (v85 + ((v84 + 87) & 0xFFFFFFFFFFFFFFF8));
        *v89 = a5;
        v89[1] = a6;
        *&v121[0] = v117;
        *(&v121[0] + 1) = v81;
        *&v121[1] = sub_20C451238;
        *(&v121[1] + 1) = v85;
        v122 = 0uLL;
        LOBYTE(v123) = 1;
        sub_20C40C520(v32, &v125);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB008, &unk_20C461FE0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFD0, &unk_20C466BF0);
        sub_20C417418(&qword_28110B438, &qword_27C7BB008, &unk_20C461FE0, MEMORY[0x277CE1198]);
        sub_20C416F80();
        sub_20C460220();
      }

      v132 = v127[1];
      v131 = 0;
      v121[0] = v125;
      v121[1] = v126;
      v122 = v127[0];
      v123 = LOBYTE(v127[1]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB000, &unk_20C466C20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFD8, &unk_20C461FB0);
      sub_20C417258();
      sub_20C41700C();
      sub_20C460220();
      sub_20C409B04(&v125, v121, &qword_27C7BB028, &qword_20C466CE0);
      sub_20C40B440(v111, &qword_27C7BAF60, &unk_20C462050);
    }

    v133 = v125;
    v134 = v126;
    v135 = v127[0];
    v136 = v127[1];
    v137[0] = v125;
    v137[1] = v126;
    v137[2] = v127[0];
    v138 = v127[1];
    v90 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF78, &unk_20C462060) + 48);
    v121[0] = v133;
    v121[1] = v134;
    v122 = v135;
    v123 = v136;
    v132 = 1;
    v124 = 1;
    sub_20C409B04(&v133, &v125, &qword_27C7BB028, &qword_20C466CE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFC8, &unk_20C461FA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFF8, &unk_20C461FD0);
    sub_20C416EC8();
    sub_20C4171CC();
    sub_20C460220();
    sub_20C40B440(v137, &qword_27C7BB028, &qword_20C466CE0);
    sub_20C40B440(&v133, &qword_27C7BAFF8, &unk_20C461FD0);
    sub_20C40B440(v112, &qword_27C7BAF60, &unk_20C462050);
    sub_20C40B440(v31, &qword_27C7BAF10, &qword_20C4640D0);
    v128 = v125;
    v129 = v126;
    *v130 = v127[0];
    *&v130[15] = *(v127 + 15);
    v91 = sub_20C45FC90();
    (*(*(v91 - 8) + 8))(v120 + v90, v91);
  }

  v92 = v129;
  v93 = v118;
  *v118 = v128;
  v93[1] = v92;
  result = *v130;
  v93[2] = *v130;
  *(v93 + 47) = *&v130[15];
  return result;
}

uint64_t sub_20C44DBF0(uint64_t a1, _OWORD *a2, double a3, double a4)
{
  v26 = a2;
  v24 = type metadata accessor for DynamicImageAssetAction(0);
  MEMORY[0x28223BE20](v24);
  v25 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB600, &unk_20C464880);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - v8;
  v10 = type metadata accessor for ImageAsset(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v23 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DynamicImageAssetView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDD8, &qword_20C466B90);
  sub_20C417418(&qword_28110B420, &qword_27C7BBDD8, &qword_20C466B90, MEMORY[0x277D04410]);
  sub_20C460020();
  swift_getKeyPath();
  sub_20C460430();

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_20C40B440(v9, &qword_27C7BB600, &unk_20C464880);
  }

  v14 = v9;
  v15 = v23;
  sub_20C451170(v14, v23, type metadata accessor for ImageAsset);
  sub_20C460020();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0E0, &qword_20C462130);
  v17 = v25;
  v18 = (v25 + *(v16 + 48));
  v19 = (v25 + *(v16 + 64));
  sub_20C4516E4(v15, v25, type metadata accessor for ImageAsset);
  v20 = v26;
  v21 = v26[3];
  v18[2] = v26[2];
  v18[3] = v21;
  v18[4] = v20[4];
  v22 = v20[1];
  *v18 = *v20;
  v18[1] = v22;
  *v19 = a3;
  v19[1] = a4;
  swift_storeEnumTagMultiPayload();
  sub_20C40C520(v20, v27);
  sub_20C460440();

  sub_20C4511D8(v17, type metadata accessor for DynamicImageAssetAction);
  return sub_20C4511D8(v15, type metadata accessor for ImageAsset);
}

uint64_t sub_20C44DF50(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDD0, &qword_20C466B88);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v28 - v12;
  v14 = sub_20C460090();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for DynamicImageAssetAction(0);
  MEMORY[0x28223BE20](v29);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
  MEMORY[0x28223BE20](v19);
  v21 = &v28 - v20;
  sub_20C409B04(a4, &v28 - v20, &qword_27C7BAF10, &qword_20C4640D0);
  LODWORD(a4) = swift_getEnumCaseMultiPayload();
  result = sub_20C40B440(v21, &qword_27C7BAF10, &qword_20C4640D0);
  if (a4 == 2)
  {
    v23 = type metadata accessor for DynamicImageAssetView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDD8, &qword_20C466B90);
    v28 = a6;
    sub_20C417418(&qword_28110B420, &qword_27C7BBDD8, &qword_20C466B90, MEMORY[0x277D04410]);
    sub_20C460020();
    v24 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB090, &unk_20C466C60) + 48)];
    sub_20C450198(v16);
    v25 = sub_20C45FD30();
    sub_20C450424(v13);
    v26 = type metadata accessor for DynamicArtworkLayoutEnvironment(0);
    sub_20C45FE00();
    v27 = *(a5 + *(v23 + 36));
    sub_20C450424(v13);
    sub_20C45FE00();
    sub_20C460040();
    *v18 = v25;
    v18[1] = sub_20C45FCE0();
    v18[*(v26 + 28)] = v27;
    *v24 = a1;
    v24[1] = a2;
    swift_storeEnumTagMultiPayload();
    sub_20C460440();

    return sub_20C4511D8(v18, type metadata accessor for DynamicImageAssetAction);
  }

  return result;
}

uint64_t sub_20C44E290(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDD0, &qword_20C466B88);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v23 - v9;
  v11 = sub_20C460090();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DynamicImageAssetAction(0);
  MEMORY[0x28223BE20](v14);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_20C4606B0();
  if (result)
  {
    v18 = type metadata accessor for DynamicImageAssetView(0);
    v23[0] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDD8, &qword_20C466B90);
    v23[1] = v14;
    sub_20C417418(&qword_28110B420, &qword_27C7BBDD8, &qword_20C466B90, MEMORY[0x277D04410]);
    sub_20C460020();
    v19 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB090, &unk_20C466C60) + 48)];
    sub_20C450198(v13);
    v20 = sub_20C45FD30();
    sub_20C450424(v10);
    v21 = type metadata accessor for DynamicArtworkLayoutEnvironment(0);
    sub_20C45FE00();
    v22 = *(a1 + *(v18 + 36));
    sub_20C450424(v10);
    sub_20C45FE00();
    sub_20C460040();
    *v16 = v20;
    v16[1] = sub_20C45FCE0();
    v16[*(v21 + 28)] = v22;
    *v19 = a3;
    v19[1] = a4;
    swift_storeEnumTagMultiPayload();
    sub_20C460440();

    return sub_20C4511D8(v16, type metadata accessor for DynamicImageAssetAction);
  }

  return result;
}

uint64_t sub_20C44E54C(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v74 = type metadata accessor for DynamicImageAssetAction(0);
  MEMORY[0x28223BE20](v74);
  v75 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_20C45FDF0();
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v73 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v77 = &v59 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDD0, &qword_20C466B88);
  MEMORY[0x28223BE20](v12 - 8);
  v60 = &v59 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBE48, &unk_20C466C30);
  MEMORY[0x28223BE20](v14 - 8);
  v71 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v62 = &v59 - v17;
  MEMORY[0x28223BE20](v18);
  v61 = &v59 - v19;
  MEMORY[0x28223BE20](v20);
  v76 = &v59 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB5F8, &unk_20C4640A0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v59 - v23;
  v25 = type metadata accessor for DynamicArtworkLayoutEnvironment(0);
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v72 = &v59 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v59 = &v59 - v29;
  v30 = *(type metadata accessor for DynamicImageAssetView(0) + 28);
  v63 = a5;
  v31 = (a5 + v30);
  v33 = *v31;
  v32 = v31[1];
  v34 = *(v31 + 16);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDD8, &qword_20C466B90);
  v36 = sub_20C417418(&qword_28110B420, &qword_27C7BBDD8, &qword_20C466B90, MEMORY[0x277D04410]);
  v69 = v32;
  v70 = v33;
  v68 = v34;
  v37 = v25;
  v67 = v35;
  v65 = v36;
  sub_20C460020();
  swift_getKeyPath();
  sub_20C460430();

  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    return sub_20C40B440(v24, &qword_27C7BB5F8, &unk_20C4640A0);
  }

  v39 = v59;
  sub_20C451170(v24, v59, type metadata accessor for DynamicArtworkLayoutEnvironment);
  sub_20C450424(v60);
  v40 = v76;
  sub_20C45FE00();
  v41 = v64;
  v42 = *(v64 + 56);
  v43 = v66;
  v42(v40, 0, 1, v66);
  v44 = v61;
  v42(v61, 1, 1, v43);
  LODWORD(v63) = *v39;
  v45 = v62;
  sub_20C409B04(v40, v62, &qword_27C7BBE48, &unk_20C466C30);
  v46 = *(v41 + 48);
  if (v46(v45, 1, v43) == 1)
  {
    (*(v41 + 16))(v77, &v39[v37[6]], v43);
    v47 = v46(v45, 1, v43);
    v48 = v73;
    if (v47 != 1)
    {
      sub_20C40B440(v45, &qword_27C7BBE48, &unk_20C466C30);
    }
  }

  else
  {
    (*(v41 + 32))(v77, v45, v43);
    v48 = v73;
  }

  v49 = v39;
  LODWORD(v73) = v39[v37[7]];
  v50 = v44;
  v51 = v71;
  sub_20C409B04(v44, v71, &qword_27C7BBE48, &unk_20C466C30);
  if (v46(v51, 1, v43) == 1)
  {
    v52 = v49;
    (*(v41 + 16))(v48, &v49[v37[8]], v43);
    if (v46(v51, 1, v43) != 1)
    {
      sub_20C40B440(v51, &qword_27C7BBE48, &unk_20C466C30);
    }
  }

  else
  {
    v52 = v49;
    (*(v41 + 32))(v48, v51, v43);
  }

  sub_20C45FCD0();
  v53 = v72;
  *v72 = v63;
  v54 = sub_20C45FCE0();
  sub_20C40B440(v50, &qword_27C7BBE48, &unk_20C466C30);
  sub_20C40B440(v76, &qword_27C7BBE48, &unk_20C466C30);
  *(v53 + 1) = v54;
  v55 = *(v41 + 32);
  v55(v53 + v37[6], v77, v43);
  *(v53 + v37[7]) = v73;
  v55(v53 + v37[8], v48, v43);
  sub_20C460020();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB090, &unk_20C466C60);
  v57 = v75;
  v58 = (v75 + *(v56 + 48));
  sub_20C4516E4(v53, v75, type metadata accessor for DynamicArtworkLayoutEnvironment);
  *v58 = a1;
  v58[1] = a2;
  swift_storeEnumTagMultiPayload();
  sub_20C460440();

  sub_20C4511D8(v57, type metadata accessor for DynamicImageAssetAction);
  sub_20C4511D8(v53, type metadata accessor for DynamicArtworkLayoutEnvironment);
  return sub_20C4511D8(v52, type metadata accessor for DynamicArtworkLayoutEnvironment);
}

uint64_t sub_20C44ED38(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v73 = type metadata accessor for DynamicImageAssetAction(0);
  MEMORY[0x28223BE20](v73);
  v74 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_20C45FDF0();
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v72 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v71 = &v59 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDD0, &qword_20C466B88);
  MEMORY[0x28223BE20](v12 - 8);
  v60 = &v59 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBE48, &unk_20C466C30);
  MEMORY[0x28223BE20](v14 - 8);
  v69 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v75 = &v59 - v17;
  MEMORY[0x28223BE20](v18);
  v77 = &v59 - v19;
  MEMORY[0x28223BE20](v20);
  v76 = &v59 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB5F8, &unk_20C4640A0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v59 - v23;
  v25 = type metadata accessor for DynamicArtworkLayoutEnvironment(0);
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v70 = &v59 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v59 - v29;
  v59 = type metadata accessor for DynamicImageAssetView(0);
  v31 = *(v59 + 28);
  v61 = a5;
  v32 = (a5 + v31);
  v33 = *v32;
  v34 = v32[1];
  v35 = *(v32 + 16);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDD8, &qword_20C466B90);
  v37 = sub_20C417418(&qword_28110B420, &qword_27C7BBDD8, &qword_20C466B90, MEMORY[0x277D04410]);
  v67 = v34;
  v68 = v33;
  v66 = v35;
  v38 = v25;
  v65 = v36;
  v63 = v37;
  sub_20C460020();
  swift_getKeyPath();
  sub_20C460430();

  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    return sub_20C40B440(v24, &qword_27C7BB5F8, &unk_20C4640A0);
  }

  sub_20C451170(v24, v30, type metadata accessor for DynamicArtworkLayoutEnvironment);
  v40 = v62;
  v41 = *(v62 + 56);
  v42 = v76;
  v43 = v64;
  v41(v76, 1, 1, v64);
  sub_20C450424(v60);
  v44 = v77;
  sub_20C45FE00();
  v41(v44, 0, 1, v43);
  LODWORD(v61) = *v30;
  v45 = v75;
  sub_20C409B04(v42, v75, &qword_27C7BBE48, &unk_20C466C30);
  v46 = *(v40 + 48);
  v47 = v40;
  if (v46(v45, 1, v43) == 1)
  {
    v48 = v71;
    (*(v40 + 16))(v71, &v30[v38[6]], v43);
    v49 = v46(v45, 1, v43);
    v50 = v72;
    if (v49 != 1)
    {
      sub_20C40B440(v75, &qword_27C7BBE48, &unk_20C466C30);
    }
  }

  else
  {
    v48 = v71;
    (*(v40 + 32))(v71, v45, v43);
    v50 = v72;
  }

  LODWORD(v75) = v30[v38[7]];
  v51 = v69;
  sub_20C409B04(v77, v69, &qword_27C7BBE48, &unk_20C466C30);
  if (v46(v51, 1, v43) == 1)
  {
    (*(v40 + 16))(v50, &v30[v38[8]], v43);
    if (v46(v51, 1, v43) != 1)
    {
      sub_20C40B440(v51, &qword_27C7BBE48, &unk_20C466C30);
    }
  }

  else
  {
    (*(v40 + 32))(v50, v51, v43);
  }

  v52 = v30;
  sub_20C45FCD0();
  v53 = v70;
  *v70 = v61;
  v54 = sub_20C45FCE0();
  sub_20C40B440(v77, &qword_27C7BBE48, &unk_20C466C30);
  sub_20C40B440(v76, &qword_27C7BBE48, &unk_20C466C30);
  *(v53 + 1) = v54;
  v55 = *(v47 + 32);
  v55(v53 + v38[6], v48, v43);
  *(v53 + v38[7]) = v75;
  v55(v53 + v38[8], v50, v43);
  sub_20C460020();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB090, &unk_20C466C60);
  v57 = v74;
  v58 = (v74 + *(v56 + 48));
  sub_20C4516E4(v53, v74, type metadata accessor for DynamicArtworkLayoutEnvironment);
  *v58 = a1;
  v58[1] = a2;
  swift_storeEnumTagMultiPayload();
  sub_20C460440();

  sub_20C4511D8(v57, type metadata accessor for DynamicImageAssetAction);
  sub_20C4511D8(v53, type metadata accessor for DynamicArtworkLayoutEnvironment);
  return sub_20C4511D8(v52, type metadata accessor for DynamicArtworkLayoutEnvironment);
}

uint64_t sub_20C44F520(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v74 = type metadata accessor for DynamicImageAssetAction(0);
  MEMORY[0x28223BE20](v74);
  v75 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_20C45FDF0();
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v73 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v76 = &v59 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBE48, &unk_20C466C30);
  MEMORY[0x28223BE20](v12 - 8);
  v72 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v63 = &v59 - v15;
  MEMORY[0x28223BE20](v16);
  v77 = &v59 - v17;
  MEMORY[0x28223BE20](v18);
  v61 = &v59 - v19;
  v20 = sub_20C460090();
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB5F8, &unk_20C4640A0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v59 - v24;
  v26 = type metadata accessor for DynamicArtworkLayoutEnvironment(0);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v70 = &v59 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v60 = &v59 - v30;
  v31 = *(type metadata accessor for DynamicImageAssetView(0) + 28);
  v62 = a5;
  v32 = (a5 + v31);
  v34 = *v32;
  v33 = v32[1];
  v35 = *(v32 + 16);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDD8, &qword_20C466B90);
  v37 = sub_20C417418(&qword_28110B420, &qword_27C7BBDD8, &qword_20C466B90, MEMORY[0x277D04410]);
  v71 = v34;
  v69 = v33;
  v68 = v35;
  v67 = v36;
  v38 = v26;
  v65 = v37;
  sub_20C460020();
  swift_getKeyPath();
  sub_20C460430();

  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    return sub_20C40B440(v25, &qword_27C7BB5F8, &unk_20C4640A0);
  }

  v40 = v60;
  sub_20C451170(v25, v60, type metadata accessor for DynamicArtworkLayoutEnvironment);
  sub_20C450198(v22);
  LODWORD(v62) = sub_20C45FD30();
  v41 = v64;
  v42 = *(v64 + 56);
  v43 = v61;
  v44 = v66;
  v42(v61, 1, 1, v66);
  v42(v77, 1, 1, v44);
  v45 = v63;
  sub_20C409B04(v43, v63, &qword_27C7BBE48, &unk_20C466C30);
  v46 = *(v41 + 48);
  if (v46(v45, 1, v44) == 1)
  {
    (*(v41 + 16))(v76, v40 + v38[6], v44);
    v47 = v46(v45, 1, v44);
    v48 = v72;
    if (v47 != 1)
    {
      sub_20C40B440(v45, &qword_27C7BBE48, &unk_20C466C30);
    }
  }

  else
  {
    (*(v41 + 32))(v76, v45, v44);
    v48 = v72;
  }

  LODWORD(v72) = *(v40 + v38[7]);
  sub_20C409B04(v77, v48, &qword_27C7BBE48, &unk_20C466C30);
  if (v46(v48, 1, v44) == 1)
  {
    v49 = v48;
    v50 = v73;
    (*(v41 + 16))(v73, v40 + v38[8], v44);
    v51 = v46(v49, 1, v44);
    v52 = v50;
    if (v51 != 1)
    {
      sub_20C40B440(v49, &qword_27C7BBE48, &unk_20C466C30);
    }
  }

  else
  {
    v52 = v73;
    (*(v41 + 32))(v73, v48, v44);
  }

  sub_20C45FCD0();
  v53 = v70;
  *v70 = v62;
  v54 = sub_20C45FCE0();
  sub_20C40B440(v77, &qword_27C7BBE48, &unk_20C466C30);
  sub_20C40B440(v43, &qword_27C7BBE48, &unk_20C466C30);
  *(v53 + 1) = v54;
  v55 = *(v41 + 32);
  v55(v53 + v38[6], v76, v44);
  *(v53 + v38[7]) = v72;
  v55(v53 + v38[8], v52, v44);
  sub_20C460020();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB090, &unk_20C466C60);
  v57 = v75;
  v58 = (v75 + *(v56 + 48));
  sub_20C4516E4(v53, v75, type metadata accessor for DynamicArtworkLayoutEnvironment);
  *v58 = a1;
  v58[1] = a2;
  swift_storeEnumTagMultiPayload();
  sub_20C460440();

  sub_20C4511D8(v57, type metadata accessor for DynamicImageAssetAction);
  sub_20C4511D8(v53, type metadata accessor for DynamicArtworkLayoutEnvironment);
  return sub_20C4511D8(v40, type metadata accessor for DynamicArtworkLayoutEnvironment);
}

uint64_t sub_20C44FCE8(uint64_t a1, double *a2, uint64_t a3)
{
  v4 = type metadata accessor for DynamicImageAssetAction(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *a2;
  v8 = *(a2 + 1);
  result = sub_20C4606B0();
  if (result)
  {
    type metadata accessor for DynamicImageAssetView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDD8, &qword_20C466B90);
    sub_20C417418(&qword_28110B420, &qword_27C7BBDD8, &qword_20C466B90, MEMORY[0x277D04410]);
    sub_20C460020();
    *v6 = v7;
    v6[1] = v8;
    swift_storeEnumTagMultiPayload();
    sub_20C460440();

    return sub_20C4511D8(v6, type metadata accessor for DynamicImageAssetAction);
  }

  return result;
}

uint64_t sub_20C44FE50@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_20C4516E4(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DynamicImageAssetView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_20C451170(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for DynamicImageAssetView);
  *a2 = sub_20C451750;
  a2[1] = v7;
  return result;
}

uint64_t sub_20C44FF58(uint64_t a1)
{
  v2 = sub_20C460090();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_20C4600C0();
}

uint64_t sub_20C450020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDD0, &qword_20C466B88);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v11 - v8;
  sub_20C409B04(a1, &v11 - v8, &qword_27C7BBDD0, &qword_20C466B88);
  return a5(v9);
}

uint64_t sub_20C450118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for DynamicImageAssetView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_20C44B1DC(a1, v6, a2);
}

uint64_t sub_20C450198@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_20C460120();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDB0, &qword_20C466A90);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  sub_20C409B04(v2, &v17 - v9, &qword_27C7BBDB0, &qword_20C466A90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_20C460090();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_20C460670();
    v14 = sub_20C4602E0();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_20C43A260(0x5463696D616E7944, 0xEF657A6953657079, &v18);
      _os_log_impl(&dword_20C404000, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x20F2FB570](v16, -1, -1);
      MEMORY[0x20F2FB570](v15, -1, -1);
    }

    sub_20C460110();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_20C450424@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_20C460120();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDB8, &qword_20C466AC8);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  sub_20C409B04(v2, &v16 - v9, &qword_27C7BBDB8, &qword_20C466AC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_20C409BD0(v10, a1, &qword_27C7BBDD0, &qword_20C466B88);
  }

  v12 = sub_20C460670();
  v13 = sub_20C4602E0();
  if (os_log_type_enabled(v13, v12))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v17 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_20C43A260(0xD000000000000020, 0x800000020C4679A0, &v17);
    _os_log_impl(&dword_20C404000, v13, v12, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x20F2FB570](v15, -1, -1);
    MEMORY[0x20F2FB570](v14, -1, -1);
  }

  sub_20C460110();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_20C4506A0()
{
  result = qword_27C7BBE20;
  if (!qword_27C7BBE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BBE28, &qword_20C466BC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BAFB0, &unk_20C466BD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BAF10, &qword_20C4640D0);
    sub_20C4507FC(&qword_28110B440, &qword_27C7BAFB0, &unk_20C466BD0, sub_20C416E3C);
    sub_20C417418(qword_28110B7C8, &qword_27C7BAF10, &qword_20C4640D0, &protocol conformance descriptor for AssetLoadState<A, B>);
    swift_getOpaqueTypeConformance2();
    sub_20C416F80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBE20);
  }

  return result;
}

uint64_t sub_20C4507FC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_20C450878()
{
  result = qword_27C7BBE30;
  if (!qword_27C7BBE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BBDD0, &qword_20C466B88);
    sub_20C451014(&qword_27C7BBE38, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBE30);
  }

  return result;
}

uint64_t objectdestroy_19Tm()
{
  v1 = type metadata accessor for DynamicImageAssetView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDB0, &qword_20C466A90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_20C460090();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDB8, &qword_20C466AC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_20C460240();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  else
  {
  }

  v10 = v1[6];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_20C460240();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v5 + v10, 1, v11))
    {
      (*(v12 + 8))(v5 + v10, v11);
    }
  }

  else
  {
  }

  sub_20C414B30(*(v5 + v1[7]), *(v5 + v1[7] + 8));

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}