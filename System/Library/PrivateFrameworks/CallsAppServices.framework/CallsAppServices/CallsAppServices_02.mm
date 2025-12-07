char *sub_1D334B854(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760DE0, &qword_1D33E1B68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D334B974(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_1D334BB5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1D33B926C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D3399734();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_1D33DDDB4();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for RecentsItem(0);
    v20 = *(v13 - 8);
    sub_1D33302BC(v12 + *(v20 + 72) * v7, a2);
    sub_1D334BE3C(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for RecentsItem(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

double sub_1D334BCE4@<D0>(_OWORD *a1@<X8>, uint64_t a2@<X0>)
{
  v3 = v2;
  v5 = sub_1D33B95A0(a2);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D339A324();
      v9 = v11;
    }

    sub_1D334CCA0(*(v9 + 48) + 40 * v7);
    sub_1D334CCF4((*(v9 + 56) + 32 * v7), a1);
    sub_1D334C180(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

unint64_t sub_1D334BD88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1D33378A8(a1, a2);
  v6 = v5;
  if (v5)
  {
    v7 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v12 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D339A614();
      v9 = v12;
    }

    v10 = *(*(v9 + 56) + 4 * v7);
    sub_1D334C324(v7, v9);
    *v3 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10 | (((v6 & 1) == 0) << 32);
}

unint64_t sub_1D334BE3C(int64_t a1, uint64_t a2)
{
  v4 = sub_1D33DDDB4();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = sub_1D33DED84();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_1D331FE94(&qword_1EDEBFD38, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v22 = sub_1D33DE724();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(type metadata accessor for RecentsItem(0) - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D334C180(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D33DED84() + 1) & ~v5;
    do
    {
      sub_1D334CD04(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_1D33DEE94();
      result = sub_1D334CCA0(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D334C324(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D33DED84() + 1) & ~v5;
    do
    {
      sub_1D33DF284();

      sub_1D33DE824();
      v9 = sub_1D33DF2C4();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 4 * v3);
        v16 = (v14 + 4 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D334C4D4(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1D334C5C8;

  return v5(v2 + 32);
}

uint64_t sub_1D334C5C8()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1D334C6DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D334D4B4;

  return sub_1D333FC68(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D334C7C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentsItem(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_91Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D334C878(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D334D4B4;

  return sub_1D333F1AC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D334C940(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1D334C9A4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D334D4B4;

  return sub_1D3349710(a1, v7, v8, v9, v1 + v6, v10);
}

unint64_t sub_1D334CB00()
{
  result = qword_1EC760FE0;
  if (!qword_1EC760FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC760FE0);
  }

  return result;
}

uint64_t sub_1D334CB54(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_1D334CB9C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D334D4B4;

  return sub_1D3393AF8(a1, v4);
}

unint64_t sub_1D334CC54()
{
  result = qword_1EDEBEEB0;
  if (!qword_1EDEBEEB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDEBEEB0);
  }

  return result;
}

_OWORD *sub_1D334CCF4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1D334CD60(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D334D4B4;

  return sub_1D334C4D4(a1, v4);
}

uint64_t sub_1D334CE18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D334D4B4;

  return sub_1D3340DDC(a1, v4, v5, v7, v6);
}

uint64_t sub_1D334CED8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D334CF9C;

  return sub_1D333D344(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t sub_1D334CF9C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D334D0C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D334D4B4;

  return sub_1D3343024(a1, v4, v5, v6);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D334D1B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D334CF9C;

  return sub_1D33415A0(a1, v4, v5, v6);
}

void sub_1D334D298(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EE0, &qword_1D33E4CE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_1D33DDDB4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D33DEE14())
  {
    v11 = 0;
    v22 = a1 & 0xC000000000000001;
    v20 = OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_callProviderManager;
    v21 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v22)
      {
        v12 = MEMORY[0x1D38B75D0](v11, a1);
      }

      else
      {
        if (v11 >= *(v21 + 16))
        {
          goto LABEL_12;
        }

        v12 = *(a1 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      sub_1D33DE0B4();
      v15 = *(v24 + v20);
      v16 = v13;
      v17 = v15;
      RecentsItem.init(message:callProviderManager:)(v16, v15, v6);
      v18 = type metadata accessor for RecentsItem(0);
      (*(*(v18 - 8) + 56))(v6, 0, 1, v18);
      sub_1D33461E0(v6, v9);

      ++v11;
      if (v14 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_1D334D5DC()
{
  swift_getKeyPath();
  v3 = v0;
  sub_1D334EAE0();
  sub_1D33DDED4();

  os_unfair_lock_lock((v0 + 72));
  v1 = *(v0 + 80);

  os_unfair_lock_unlock(v3 + 18);
  return v1;
}

uint64_t sub_1D334D668()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D33DE574();

  return v1;
}

uint64_t sub_1D334D6DC()
{
  v1 = type metadata accessor for RecentsItem(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 16))(ObjectType, v5);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v38 = MEMORY[0x1E69E7CC0];
    v9 = *(v7 + 16);
    if (v9)
    {
      v10 = *(v2 + 80);
      v37 = v7;
      v11 = v7 + ((v10 + 32) & ~v10);
      v12 = *(v2 + 72);
      v13 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        sub_1D332A828(v11, v4);
        v14 = *v4;
        v15 = v4[32];
        if (v15 == 4)
        {
          break;
        }

        v18 = *(v4 + 1);
        v19 = *(v4 + 2);
        v20 = *(v4 + 3);
        sub_1D332B0D0(*v4, v18, v19, v20, v4[32]);
        sub_1D332B2E8(v4);
        if (v15 == 6)
        {

          goto LABEL_10;
        }

        sub_1D332B1DC(v14, v18, v19, v20, v15);
LABEL_5:
        v11 += v12;
        if (!--v9)
        {

          v8 = MEMORY[0x1E69E7CC0];
          goto LABEL_16;
        }
      }

      v16 = v14;
      v17 = sub_1D332B2E8(v4);
LABEL_10:
      MEMORY[0x1D38B6F20](v17);
      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D33DE8D4();
      }

      sub_1D33DE8F4();
      v13 = v38;
      goto LABEL_5;
    }

    v13 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

LABEL_16:
  v38 = v8;
  if (v13 >> 62)
  {
    goto LABEL_40;
  }

  v21 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v21)
  {
LABEL_18:
    v22 = 0;
    v37 = v13 & 0xC000000000000001;
    while (1)
    {
      if (v37)
      {
        v23 = MEMORY[0x1D38B75D0](v22, v13);
      }

      else
      {
        if (v22 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v23 = *(v13 + 8 * v22 + 32);
      }

      v24 = v23;
      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        v21 = sub_1D33DEE14();
        if (!v21)
        {
          goto LABEL_41;
        }

        goto LABEL_18;
      }

      v26 = [v23 serviceProvider];
      if (!v26)
      {
        break;
      }

      v27 = v26;
      v28 = sub_1D33DE7B4();
      v30 = v29;

      v31 = sub_1D33DE7B4();
      if (!v30)
      {
        goto LABEL_20;
      }

      if (v28 == v31 && v30 == v32)
      {

LABEL_36:
        sub_1D33DEF84();
        sub_1D33DEFB4();
        sub_1D33DEFC4();
        sub_1D33DEF94();
        goto LABEL_22;
      }

      v34 = sub_1D33DF1B4();

      if (v34)
      {
        goto LABEL_36;
      }

LABEL_21:

LABEL_22:
      ++v22;
      if (v25 == v21)
      {
        goto LABEL_41;
      }
    }

    sub_1D33DE7B4();
LABEL_20:

    goto LABEL_21;
  }

LABEL_41:

  if ((v38 & 0x8000000000000000) != 0 || (v38 & 0x4000000000000000) != 0)
  {
    v35 = sub_1D33DEE14();
  }

  else
  {
    v35 = *(v38 + 16);
  }

  return v35;
}

uint64_t sub_1D334DA9C(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC16CallsAppServices20RecentsControllerBox__needsNewLoad) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC16CallsAppServices20RecentsControllerBox__needsNewLoad) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D334EAE0();
    sub_1D33DDEC4();
  }

  return result;
}

uint64_t sub_1D334DB84(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D334DBDC(result);
  }

  return result;
}

void sub_1D334DBDC(uint64_t a1)
{
  v2 = v1;
  sub_1D33DE4F4();
  if (v20 == 1)
  {
    if (qword_1EDEBFD70 != -1)
    {
      swift_once();
    }

    v3 = sub_1D33DE464();
    __swift_project_value_buffer(v3, qword_1EDEC1480);
    v4 = sub_1D33DE444();
    v5 = sub_1D33DEAF4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1D331A000, v4, v5, "Delaying: RecentsControllerBox", v6, 2u);
      MEMORY[0x1D38B81C0](v6, -1, -1);
    }

    if (*(v2 + OBJC_IVAR____TtC16CallsAppServices20RecentsControllerBox__needsNewLoad) == 1)
    {
      *(v2 + OBJC_IVAR____TtC16CallsAppServices20RecentsControllerBox__needsNewLoad) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1D334EAE0();
      sub_1D33DDEC4();
    }
  }

  else
  {
    v7 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    v9 = (*(v7 + 16))(ObjectType, v7);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
    }

    if (qword_1EDEBFD70 != -1)
    {
      swift_once();
    }

    v11 = sub_1D33DE464();
    __swift_project_value_buffer(v11, qword_1EDEC1480);

    v12 = sub_1D33DE444();
    v13 = sub_1D33DEAF4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134349056;
      *(v14 + 4) = *(v10 + 16);

      _os_log_impl(&dword_1D331A000, v12, v13, "Updating: RecentsControllerBox items.count: %{public}ld", v14, 0xCu);
      MEMORY[0x1D38B81C0](v14, -1, -1);
    }

    else
    {
    }

    sub_1D33DE4E4();
    v16 = __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = *v16;

    sub_1D33D52A0(v19, v18, v17, v10);

    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_1D334DF2C()
{
  swift_getKeyPath();
  sub_1D334EAE0();
  sub_1D33DDED4();

  return *(v0 + OBJC_IVAR____TtC16CallsAppServices20RecentsControllerBox__needsNewLoad);
}

uint64_t sub_1D334DFA4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D334EAE0();
  sub_1D33DDED4();

  *a2 = *(v3 + OBJC_IVAR____TtC16CallsAppServices20RecentsControllerBox__needsNewLoad);
  return result;
}

uint64_t sub_1D334E024(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D334EAE0();
    sub_1D33DDEC4();

    sub_1D33DE4E4();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1D33DE584();
    if (qword_1EDEBFD70 != -1)
    {
      swift_once();
    }

    v5 = sub_1D33DE464();
    __swift_project_value_buffer(v5, qword_1EDEC1480);
    v6 = sub_1D33DE444();
    v7 = sub_1D33DEAF4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1D331A000, v6, v7, "Updated: RecentsControllerBox", v8, 2u);
      MEMORY[0x1D38B81C0](v8, -1, -1);
    }

    swift_getKeyPath();
    sub_1D33DDED4();

    v9 = OBJC_IVAR____TtC16CallsAppServices20RecentsControllerBox__needsNewLoad;
    if (*(v3 + OBJC_IVAR____TtC16CallsAppServices20RecentsControllerBox__needsNewLoad) == 1)
    {
      v10 = sub_1D33DE444();
      v11 = sub_1D33DEAF4();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_1D331A000, v10, v11, "Request Delayed: RecentsControllerBox", v12, 2u);
        MEMORY[0x1D38B81C0](v12, -1, -1);
      }

      if (*(v3 + v9))
      {
        v14 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v14);
        sub_1D33DDEC4();
      }

      else
      {
        *(v3 + v9) = 0;
      }

      sub_1D334DBDC(v13);
    }
  }

  return result;
}

void sub_1D334E384(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 72));
  *(a1 + 80) = a2;

  os_unfair_lock_unlock((a1 + 72));
}

char *sub_1D334E3E0()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  sub_1D334F2E4(v0 + 80);

  v1 = OBJC_IVAR____TtC16CallsAppServices20RecentsControllerBox__hasFinishedFirstLoad;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761830, &qword_1D33E32B0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC16CallsAppServices20RecentsControllerBox___observationRegistrar;
  v4 = sub_1D33DDF14();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1D334E4CC()
{
  sub_1D334E3E0();

  return swift_deallocClassInstance();
}

uint64_t sub_1D334E538(uint64_t *a1, unsigned int a2)
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

uint64_t sub_1D334E594(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D334E5F4(uint64_t a1)
{
  sub_1D33DE4E4();
  v3 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  (*(v3 + 72))(a1, ObjectType, v3);

  sub_1D332BD24(v5);

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760DA8, &qword_1D33E1AD0);
  sub_1D334EAE0();
  sub_1D33DDEC4();

  return sub_1D33DE4E4();
}

void sub_1D334E724(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  os_unfair_lock_lock((a1 + 72));
  v6 = *(a1 + 80);
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = sub_1D334EEC4((a1 + 80), a2);

  v8 = *(*(a1 + 80) + 16);
  if (v8 >= v7)
  {
    sub_1D334F224(v7, v8);
LABEL_4:
    *a3 = v6 == 0;
    os_unfair_lock_unlock((a1 + 72));
    return;
  }

  __break(1u);
}

uint64_t sub_1D334E7D8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for RecentsItem(0);
  v6 = *(v5 - 8);
  result = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    v13 = *(v11 + 104);
    v14 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v15 = *(v6 + 72);
    do
    {
      sub_1D332A828(v14, v9);
      v13(a1, v9, ObjectType, v11);
      result = sub_1D332B2E8(v9);
      v14 += v15;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_1D334E908()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760FD0, &qword_1D33E2240);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v7 - v3;
  v7[1] = *(*v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7619E0, &unk_1D33E1AA0);
  sub_1D334CB54(&unk_1EC760EB0, &unk_1EC7619E0, &unk_1D33E1AA0, MEMORY[0x1E695BFB0]);
  sub_1D334CB00();
  sub_1D33DE624();
  sub_1D334CB54(&unk_1EC760EC0, &unk_1EC760FD0, &qword_1D33E2240, MEMORY[0x1E695BD38]);
  v5 = sub_1D33DE5A4();
  (*(v2 + 8))(v4, v1);
  return v5;
}

unint64_t sub_1D334EAE0()
{
  result = qword_1EDEBFAD0;
  if (!qword_1EDEBFAD0)
  {
    type metadata accessor for RecentsControllerBox(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEBFAD0);
  }

  return result;
}

uint64_t sub_1D334EB38@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D33DE574();

  *a2 = v4;
  return result;
}

uint64_t sub_1D334EBB8(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D33DE584();
}

uint64_t sub_1D334EC54(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1D33DEE14();
  }

  return sub_1D33DEF54();
}

uint64_t sub_1D334ECE8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for RecentsItem(0) - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = v9 == 0;
  v24 = v9;
  if (!v9)
  {
    return 0;
  }

  v11 = 0;
  v12 = a2 + 56;
  v13 = *(v6 + 80);
  v22 = v2;
  v23 = a1 + ((v13 + 32) & ~v13);
  v14 = *(v6 + 72);
  while (1)
  {
    v26 = v10;
    if (*(a2 + 16))
    {
      v15 = v23 + v14 * v11;
      sub_1D33DF284();
      RecentsItem.hash(into:)(v25);
      v16 = sub_1D33DF2C4();
      v17 = -1 << *(a2 + 32);
      v18 = v16 & ~v17;
      if ((*(v12 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
      {
        break;
      }
    }

LABEL_3:
    v10 = ++v11 == v24;
    if (v11 == v24)
    {
      return 0;
    }
  }

  v19 = ~v17;
  while (1)
  {
    sub_1D332A828(*(a2 + 48) + v18 * v14, v8);
    v20 = _s16CallsAppServices11RecentsItemV2eeoiySbAC_ACtFZ_0(v8, v15);
    sub_1D332B2E8(v8);
    if (v20)
    {
      return v11;
    }

    v18 = (v18 + 1) & v19;
    if (((*(v12 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      goto LABEL_3;
    }
  }
}

uint64_t sub_1D334EEC4(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for RecentsItem(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v41 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v41 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v41 - v17;
  v19 = *a1;
  result = sub_1D334ECE8(*a1, a2);
  if (v2)
  {
    return v3;
  }

  if (v21)
  {
    return *(v19 + 16);
  }

  v3 = result;
  v43 = v10;
  v44 = v13;
  v42 = a1;
  v22 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v41 = 0;
    v23 = a2 + 56;
    v45 = v7;
    while (1)
    {
      v24 = *(v19 + 16);
      if (v22 == v24)
      {
        return v3;
      }

      if (v22 >= v24)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        break;
      }

      v25 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v51 = v19;
      v46 = v25;
      v26 = v19 + v25;
      v27 = *(v7 + 72);
      v48 = v27 * v22;
      v49 = v3;
      v47 = v26;
      sub_1D332A828(v26 + v27 * v22, v18);
      if (*(a2 + 16) && (sub_1D33DF284(), RecentsItem.hash(into:)(v50), v28 = sub_1D33DF2C4(), v29 = -1 << *(a2 + 32), v30 = v28 & ~v29, ((*(v23 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) != 0))
      {
        v31 = ~v29;
        while (1)
        {
          sub_1D332A828(*(a2 + 48) + v30 * v27, v16);
          v32 = _s16CallsAppServices11RecentsItemV2eeoiySbAC_ACtFZ_0(v16, v18);
          sub_1D332B2E8(v16);
          if (v32)
          {
            break;
          }

          v30 = (v30 + 1) & v31;
          if (((*(v23 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        result = sub_1D332B2E8(v18);
        v3 = v49;
        v19 = v51;
      }

      else
      {
LABEL_16:
        result = sub_1D332B2E8(v18);
        v33 = v49;
        if (v49 == v22)
        {
          v19 = v51;
          v3 = v49 + 1;
          if (__OFADD__(v49, 1))
          {
            goto LABEL_33;
          }
        }

        else
        {
          if ((v49 & 0x8000000000000000) != 0)
          {
            goto LABEL_34;
          }

          v34 = v51[2];
          if (v49 >= v34)
          {
            goto LABEL_35;
          }

          v35 = v27 * v49;
          v36 = v47;
          result = sub_1D332A828(v47 + v35, v44);
          if (v22 >= v34)
          {
            goto LABEL_36;
          }

          sub_1D332A828(v36 + v48, v43);
          v37 = v51;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v37 = sub_1D334EC2C(v37);
          }

          v38 = v37;
          v39 = v37 + v46;
          result = sub_1D334C7C4(v43, &v39[v35]);
          if (v22 >= v38[2])
          {
            goto LABEL_37;
          }

          result = sub_1D334C7C4(v44, &v39[v48]);
          *v42 = v38;
          v19 = v38;
          v40 = __OFADD__(v33, 1);
          v3 = v33 + 1;
          if (v40)
          {
            goto LABEL_33;
          }
        }
      }

      v40 = __OFADD__(v22++, 1);
      v7 = v45;
      if (v40)
      {
        goto LABEL_32;
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D334F224(unint64_t result, int64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1D33226AC(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1D3359FDC(v6, a2, 0);
  *v2 = v4;
  return result;
}

void sub_1D334F360(uint64_t a1)
{
  v1 = a1;
  v38 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1D33DEE14();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v44 = MEMORY[0x1E69E7CC0];
    sub_1D334B44C(0, v2 & ~(v2 >> 63), 0);
    v4 = v44;
    if (v38)
    {
      v5 = sub_1D33DEDB4();
    }

    else
    {
      v5 = sub_1D33DED74();
      v6 = *(v1 + 36);
    }

    v41 = v5;
    v42 = v6;
    v43 = v38 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v7 = 0;
      v34 = v1 + 56;
      v33 = v1 + 64;
      v36 = v3 >> 62;
      v37 = v1;
      v35 = v2;
      while (v7 < v2)
      {
        if (__OFADD__(v7++, 1))
        {
          goto LABEL_42;
        }

        v10 = v41;
        v11 = v43;
        v39 = v42;
        sub_1D33D3798(v41, v42, v43, v1);
        v13 = v12;
        if (v36 && sub_1D33DEE14())
        {
          v14 = v13;
          sub_1D33A69F4(MEMORY[0x1E69E7CC0]);
          v16 = v15;
        }

        else
        {
          v17 = v13;
          v16 = MEMORY[0x1E69E7CD0];
        }

        if (qword_1EDEC0138 != -1)
        {
          swift_once();
        }

        v18 = qword_1EDEC0110;

        v44 = v4;
        v20 = *(v4 + 16);
        v19 = *(v4 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1D334B44C((v19 > 1), v20 + 1, 1);
          v4 = v44;
        }

        *(v4 + 16) = v20 + 1;
        v21 = (v4 + 24 * v20);
        v21[4] = v18;
        v21[5] = v13;
        v21[6] = v16;
        if (v38)
        {
          v1 = v37;
          if (!v11)
          {
            goto LABEL_47;
          }

          v22 = v4;
          if (sub_1D33DEDD4())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v35;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760EF8, &unk_1D33E2280);
          v8 = sub_1D33DEA84();
          sub_1D33DEE84();
          v8(v40, 0);
        }

        else
        {
          v1 = v37;
          if (v11)
          {
            goto LABEL_48;
          }

          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_43;
          }

          v22 = v4;
          v23 = 1 << *(v37 + 32);
          if (v10 >= v23)
          {
            goto LABEL_43;
          }

          v24 = v10 >> 6;
          v25 = *(v34 + 8 * (v10 >> 6));
          if (((v25 >> v10) & 1) == 0)
          {
            goto LABEL_44;
          }

          if (*(v37 + 36) != v39)
          {
            goto LABEL_45;
          }

          v26 = v25 & (-2 << (v10 & 0x3F));
          if (v26)
          {
            v23 = __clz(__rbit64(v26)) | v10 & 0x7FFFFFFFFFFFFFC0;
            v2 = v35;
          }

          else
          {
            v27 = v24 << 6;
            v28 = v24 + 1;
            v29 = (v33 + 8 * v24);
            v2 = v35;
            while (v28 < (v23 + 63) >> 6)
            {
              v31 = *v29++;
              v30 = v31;
              v27 += 64;
              ++v28;
              if (v31)
              {
                sub_1D335665C(v10, v39, 0);
                v23 = __clz(__rbit64(v30)) + v27;
                goto LABEL_39;
              }
            }

            sub_1D335665C(v10, v39, 0);
          }

LABEL_39:
          v32 = *(v37 + 36);
          v41 = v23;
          v42 = v32;
          v43 = 0;
        }

        v4 = v22;
        if (v7 == v2)
        {
          sub_1D335665C(v41, v42, v43);
          return;
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
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
  }
}

void sub_1D334F728(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D33DEE14())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1D38B75D0](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void *sub_1D334F850@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1D334F87C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1D334F92C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1D33559C0(a1);

  *a2 = v3;
  return result;
}

void sub_1D334F96C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - v3;
  if (*(v0 + 56) == 4)
  {
    v5 = sub_1D33DE9B4();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    sub_1D33DE974();

    v6 = sub_1D33DE964();
    v7 = swift_allocObject();
    v8 = MEMORY[0x1E69E85E0];
    v7[2] = v6;
    v7[3] = v8;
    v7[4] = v1;
    sub_1D333DD88(0, 0, v4, &unk_1D33E2260, v7);
  }

  else
  {
    if (qword_1EDEBFD70 != -1)
    {
      swift_once();
    }

    v9 = sub_1D33DE464();
    __swift_project_value_buffer(v9, qword_1EDEC1480);

    v18 = sub_1D33DE444();
    v10 = sub_1D33DEAF4();

    if (os_log_type_enabled(v18, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 136315138;
      v19 = *(v1 + 56);
      v20 = v12;
      v13 = sub_1D33DE804();
      v15 = sub_1D3328B48(v13, v14, &v20);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1D331A000, v18, v10, "Not invoking updateCallItems: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1D38B81C0](v12, -1, -1);
      MEMORY[0x1D38B81C0](v11, -1, -1);
    }

    else
    {
      v16 = v18;
    }
  }
}

uint64_t sub_1D334FC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  sub_1D33DE974();
  *(v4 + 32) = sub_1D33DE964();
  v6 = sub_1D33DE914();

  return MEMORY[0x1EEE6DFA0](sub_1D334FC9C, v6, v5);
}

uint64_t sub_1D334FC9C()
{

  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = v0 + 2;
    v2 = v0[3];
    v3 = v2[9];
    v4 = v2[7];
    if ((v4 & 4) != 0)
    {
      v2[7] = v4 & 0xFFFFFFFFFFFFFFFBLL;
      v2 = v0[3];
    }

    sub_1D334F96C();
    *v1 = v2[8];

    sub_1D3355B84(v0 + 2, v3);
    v6 = v5;

    v7 = swift_task_alloc();
    *(v7 + 16) = v2;
    *(v7 + 24) = v1;
    sub_1D33560B0(v6, sub_1D335606C, v7);
    swift_unknownObjectRelease();
  }

  v8 = v0[1];

  return v8();
}

void sub_1D334FDC0(uint64_t a1)
{

  v4 = sub_1D3374000(v3, a1);

  if (v4)
  {
  }

  else
  {
    *(v1 + 64) = a1;

    v5 = *(v1 + 56);
    if ((v5 & 4) == 0)
    {
      *(v1 + 56) = v5 | 4;
    }

    sub_1D334F96C();
  }
}

void sub_1D334FE5C(uint64_t a1)
{
  v2 = *(v1 + 72);
  *(v1 + 72) = a1;

  v4 = sub_1D3374140(v3, v2);

  if ((v4 & 1) == 0)
  {
    v5 = *(v1 + 56);
    if ((v5 & 4) == 0)
    {
      *(v1 + 56) = v5 | 4;
    }

    sub_1D334F96C();
  }
}

void sub_1D334FEE0(id *a1, uint64_t *a2, uint64_t a3)
{
  v75 = a3;
  v77 = sub_1D33DDE84();
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v74 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v78 = &v72 - v7;
  v8 = sub_1D33DDD34();
  v80 = *(v8 - 8);
  v81 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v72 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v79 = &v72 - v11;
  v12 = sub_1D33DDC44();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = [*a1 url];
  sub_1D33DDC24();

  v18 = sub_1D33DDC04();
  v19 = [objc_opt_self() conversationLinkForURL_];

  v21 = *(v13 + 8);
  v20 = v13 + 8;
  v21(v15, v12);
  v91 = v19;
  if (!v19)
  {
    return;
  }

  v73 = a2;
  v22 = *(*a2 + 16);

  v82 = v22;
  if (!v22)
  {
LABEL_11:

    v34 = [v16 documentDate];
    if (v34)
    {
      v35 = v72;
      v36 = v34;
      sub_1D33DDCF4();

      v37 = v80;
      v38 = *(v80 + 32);
      v39 = v78;
      v40 = v35;
      v41 = v81;
      v38(v78, v40, v81);
      (*(v37 + 56))(v39, 0, 1, v41);
      v42 = v79;
      v38(v79, v39, v41);
    }

    else
    {
      v44 = v80;
      v43 = v81;
      v45 = v78;
      (*(v80 + 56))(v78, 1, 1, v81);
      v46 = [v16 receivedAt];
      v42 = v79;
      sub_1D33DDCF4();

      if ((*(v44 + 48))(v45, 1, v43) != 1)
      {
        sub_1D331E880(v45, &qword_1EC760E10, &unk_1D33E1A90);
      }
    }

    v47 = sub_1D33DDCB4();
    v48 = v74;
    sub_1D33DDE64();
    v49 = sub_1D33DDDE4();
    (*(v76 + 8))(v48, v77);
    if ((v49 & 1) == 0 && (v47 & 1) == 0)
    {
      (*(v80 + 8))(v42, v81);

      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D33E1DE0;
    *(inited + 32) = v16;
    v51 = v16;
    sub_1D33A69F4(inited);
    v15 = v52;
    swift_setDeallocating();
    swift_arrayDestroy();
    v53 = qword_1EDEC0138;
    v24 = v91;
    if (v53 != -1)
    {
      goto LABEL_34;
    }

    goto LABEL_19;
  }

  v24 = 0;
  v25 = 48;
  v83 = v23;
  v84 = v16;
  while (1)
  {
    if (v24 >= *(v23 + 16))
    {
      __break(1u);
      goto LABEL_31;
    }

    *&v85 = v25;
    v26 = *(v23 + v25 - 8);

    a2 = v26;

    v27 = [a2 pseudonym];
    v28 = sub_1D33DE7B4();
    v30 = v29;

    v19 = [v91 pseudonym];
    v31 = sub_1D33DE7B4();
    v15 = v32;

    if (v28 == v31 && v30 == v15)
    {
      break;
    }

    v20 = sub_1D33DF1B4();

    if (v20)
    {
      goto LABEL_25;
    }

    ++v24;
    v16 = v84;
    v25 = v85 + 24;
    v23 = v83;
    if (v82 == v24)
    {
      goto LABEL_11;
    }
  }

LABEL_25:

  v62 = v84;
  a2 = v85;
  v19 = v24;
  v20 = v73;
  if (v24 >= *(*v73 + 16))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v63 = (*v73 + v85);
  v64 = *(v63 - 1);
  v65 = *v63;
  v86 = *(v63 - 2);
  v87 = v64;
  v88 = v65;

  v66 = v64;

  sub_1D339AE00(v62, &v89);
  v67 = v87;

  v85 = v89;
  v24 = v90;
  v15 = *v20;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v20 = v15;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_27;
  }

LABEL_32:
  *v20 = sub_1D334EC40(v15);
LABEL_27:

  if (v19 < *(*v20 + 16))
  {
    v69 = (a2 + *v20);
    v70 = *(v69 - 1);
    *(v69 - 1) = v85;
    *v69 = v24;

    return;
  }

  __break(1u);
LABEL_34:
  swift_once();
LABEL_19:
  v54 = qword_1EDEC0110;
  v55 = v73;
  v56 = *v73;

  v57 = swift_isUniquelyReferenced_nonNull_native();
  *v55 = v56;
  if ((v57 & 1) == 0)
  {
    v56 = sub_1D3359B68(0, *(v56 + 2) + 1, 1, v56);
    *v73 = v56;
  }

  v59 = *(v56 + 2);
  v58 = *(v56 + 3);
  if (v59 >= v58 >> 1)
  {
    v71 = sub_1D3359B68((v58 > 1), v59 + 1, 1, v56);
    *v73 = v71;
  }

  (*(v80 + 8))(v79, v81);
  v60 = *v73;
  *(v60 + 16) = v59 + 1;
  v61 = (v60 + 24 * v59);
  v61[4] = v54;
  v61[5] = v24;
  v61[6] = v15;
}

uint64_t sub_1D3350718()
{
  sub_1D3323A28(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1D3350770()
{

  return swift_deallocClassInstance();
}

void sub_1D33507A8()
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D33DDB74();
  v4 = v3;

  qword_1EC760E00 = v2;
  *algn_1EC760E08 = v4;
}

uint64_t static RecentsLinkController.deleteLink.getter()
{
  if (qword_1EC760928 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC760E00;

  return v0;
}

uint64_t static RecentsLinkController.shouldTargetUpcomingSectionDate.getter@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = sub_1D33DDD34();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D33DDE74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D33DDE84();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v17 - v14;
  sub_1D33DDE64();
  (*(v6 + 104))(v8, *MEMORY[0x1E6969A48], v5);
  sub_1D33DDD24();
  sub_1D33DDE54();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
  result = (*(v2 + 48))(v15, 1, v1);
  if (result != 1)
  {
    return (*(v2 + 32))(v18, v15, v1);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D3350BBC()
{
  swift_getKeyPath();
  sub_1D33566BC(&unk_1EDEBF810, type metadata accessor for RecentsLinkController, &protocol conformance descriptor for RecentsLinkController);
  sub_1D33DDED4();

  return swift_unknownObjectWeakLoadStrong();
}

id sub_1D3350C84()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 56);
  }

  else
  {
    type metadata accessor for RecentLinkCallItems();
    v3 = swift_allocObject();
    *(v3 + 16) = MEMORY[0x1E69E7CC0];
    v4 = [objc_allocWithZone(MEMORY[0x1E69D8C28]) initWithObject_];

    v5 = *(v0 + 56);
    *(v0 + 56) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

id sub_1D3350D20()
{
  v1 = sub_1D33DEB84();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D33DEB24();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1D33DE6A4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = *(v0 + 64);
  if (v7)
  {
    v8 = *(v0 + 64);
  }

  else
  {
    v22 = v0;
    type metadata accessor for RecentsLinkControllerModel();
    v9 = swift_allocObject();
    v9[2] = 4;
    v10 = sub_1D331DA18(0, &qword_1EDEBEEC8, 0x1E69E9610);
    v20 = "v16@?0@NSError8";
    v21 = v10;
    sub_1D33DE674();
    v11 = MEMORY[0x1E69E7CC0];
    v23 = MEMORY[0x1E69E7CC0];
    v18 = sub_1D33566BC(&qword_1EDEBEEE0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760F10, &qword_1D33E2E40);
    v19 = v1;
    sub_1D334CB54(&qword_1EDEBEF20, &unk_1EC760F10, &qword_1D33E2E40, MEMORY[0x1E69E6328]);
    sub_1D33DED64();
    (*(v2 + 104))(v4, *MEMORY[0x1E69E8090], v19);
    v9[3] = sub_1D33DEBD4();
    v9[5] = 0;
    swift_unknownObjectWeakInit();
    if (v11 >> 62 && sub_1D33DEE14())
    {
      sub_1D33A72D0(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v12 = MEMORY[0x1E69E7CD0];
    }

    v9[7] = 0;
    v9[8] = v11;
    v9[9] = v11;
    v9[5] = &off_1F4EE5208;
    v9[6] = v12;
    v13 = v22;
    swift_unknownObjectWeakAssign();
    v14 = [objc_allocWithZone(MEMORY[0x1E69D8C28]) initWithObject_];

    v15 = *(v13 + 64);
    *(v13 + 64) = v14;
    v8 = v14;

    v7 = 0;
  }

  v16 = v7;
  return v8;
}

id sub_1D3351078()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    v1 = [objc_opt_self() serviceForURLs];
    *(v0 + 72) = v1;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v1;
}

uint64_t RecentsLinkController.__allocating_init(conversationManager:)(uint64_t a1)
{
  v2 = swift_allocObject();
  RecentsLinkController.init(conversationManager:)(a1);
  return v2;
}

uint64_t RecentsLinkController.init(conversationManager:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7619E0, &unk_1D33E1AA0);
  swift_allocObject();
  *(v1 + 16) = sub_1D33DE504();
  *(v1 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 48) = 0;
  *(v1 + 52) = 1;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 72) = 0;
  *(v1 + 80) = v3;
  sub_1D33DDF04();
  *(v1 + 24) = a1;
  *(v1 + 48) = 0;
  *(v1 + 52) = 1;
  return v1;
}

uint64_t sub_1D33511E4(uint64_t a1)
{

  v4 = sub_1D332A6B4(v3, a1);

  if (v4)
  {
    *(v1 + 80) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D33566BC(&unk_1EDEBF810, type metadata accessor for RecentsLinkController, &protocol conformance descriptor for RecentsLinkController);
    sub_1D33DDEC4();
  }
}

uint64_t RecentsLinkController.deinit()
{
  if ((*(v0 + 52) & 1) == 0)
  {
    notify_cancel(*(v0 + 48));
    *(v0 + 48) = 0;
    *(v0 + 52) = 1;
  }

  sub_1D3323A28(v0 + 32);
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC16CallsAppServices21RecentsLinkController___observationRegistrar;
  v2 = sub_1D33DDF14();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t RecentsLinkController.__deallocating_deinit()
{
  RecentsLinkController.deinit();

  return swift_deallocClassInstance();
}

void sub_1D3351444(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(v1 + 52) == 1)
  {
    v2 = v1;
    sub_1D3352F40(a1);
    sub_1D33537C8();
    out_token = 0;
    v3 = *MEMORY[0x1E6999328];
    sub_1D331DA18(0, &qword_1EDEBEEC8, 0x1E69E9610);
    v4 = sub_1D33DEB94();
    v5 = swift_allocObject();
    swift_weakInit();
    v7[4] = sub_1D3353F2C;
    v7[5] = v5;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1D3351608;
    v7[3] = &block_descriptor;
    v6 = _Block_copy(v7);

    LODWORD(v3) = notify_register_dispatch(v3, &out_token, v4, v6);
    _Block_release(v6);

    if (!v3)
    {
      if (out_token)
      {
        *(v2 + 48) = out_token;
        *(v2 + 52) = 0;
      }
    }
  }
}

uint64_t sub_1D33515B0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D33537C8();
  }

  return result;
}

uint64_t sub_1D3351608(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1D335165C()
{
  if ((*(v0 + 52) & 1) == 0)
  {
    result = notify_cancel(*(v0 + 48));
    *(v0 + 48) = 0;
    *(v0 + 52) = 1;
  }

  return result;
}

uint64_t sub_1D335168C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D33566BC(&unk_1EDEBF810, type metadata accessor for RecentsLinkController, &protocol conformance descriptor for RecentsLinkController);
  sub_1D33DDED4();

  *a2 = *(v3 + 80);
}

uint64_t sub_1D3351764()
{
  swift_getKeyPath();
  sub_1D33566BC(&unk_1EDEBF810, type metadata accessor for RecentsLinkController, &protocol conformance descriptor for RecentsLinkController);
  sub_1D33DDED4();
}

uint64_t sub_1D3351808()
{
  v7 = MEMORY[0x1E69E7CC0];
  v0 = sub_1D3350C84();
  v1 = swift_allocObject();
  *(v1 + 16) = &v7;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1D3356678;
  *(v2 + 24) = v1;
  aBlock[4] = sub_1D3356794;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D3356790;
  aBlock[3] = &block_descriptor_184;
  v3 = _Block_copy(aBlock);

  [v0 performWhileLocked_];

  _Block_release(v3);
  LOBYTE(v0) = swift_isEscapingClosureAtFileLocation();

  if (v0)
  {
    __break(1u);
  }

  else
  {
    v5 = v7;

    return v5;
  }

  return result;
}

id sub_1D3351978()
{
  v13 = MEMORY[0x1E69E7CC0];
  v0 = sub_1D3350D20();
  v1 = swift_allocObject();
  *(v1 + 16) = &v13;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1D3353F80;
  *(v2 + 24) = v1;
  aBlock[4] = sub_1D3356794;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D3356790;
  aBlock[3] = &block_descriptor_9;
  v3 = _Block_copy(aBlock);

  [v0 performWhileLocked_];

  _Block_release(v3);
  LOBYTE(v0) = swift_isEscapingClosureAtFileLocation();

  if ((v0 & 1) == 0)
  {
    v5 = v13;
    v6 = *(v13 + 16);

    v7 = -v6;
    v8 = -1;
    v9 = 40;
    while (1)
    {
      v10 = v7 + v8;
      if (v7 + v8 == -1)
      {
LABEL_6:

        return (v10 != -1);
      }

      if (++v8 >= *(v5 + 16))
      {
        break;
      }

      v11 = v9 + 24;
      result = [*(v5 + v9) isLocallyCreated];
      v9 = v11;
      if (result)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D3351B60(uint64_t a1)
{
  v1 = *(a1 + 56);
  if ((v1 & 1) == 0)
  {
    *(a1 + 56) = v1 | 1;
    sub_1D334F96C();
  }
}

void sub_1D3351B98(uint64_t a1)
{
  v1 = *(a1 + 56);
  if ((v1 & 2) == 0)
  {
    *(a1 + 56) = v1 | 2;
    sub_1D334F96C();
  }
}

uint64_t sub_1D3351BF8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1D3351C4C()
{
  v0 = sub_1D3351808();
  sub_1D3351C88(v0);
}

uint64_t sub_1D3351C88(uint64_t a1)
{
  v2 = type metadata accessor for RecentsItem(0) - 8;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v3);
  v9 = &v33 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v12 = *(v7 + 72);
    sub_1D332A828(v11 + v12 * (v10 - 1), &v33 - v8);
    v13 = &qword_1EDEBF000;
    do
    {
      sub_1D332A828(v11, v5);
      v24 = RecentsItem.dataSourceId.getter();
      v26 = v25;
      if (v24 == RecentsItem.dataSourceId.getter() && v26 == v27)
      {
        v28 = 1;
      }

      else
      {
        v28 = sub_1D33DF1B4();
      }

      if (v13[430] != -1)
      {
        swift_once();
      }

      v29 = sub_1D33DE464();
      __swift_project_value_buffer(v29, qword_1EDEC1480);
      v30 = sub_1D33DE444();
      v31 = sub_1D33DEAF4();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1D331A000, v30, v31, "Deleting link", v32, 2u);
        MEMORY[0x1D38B81C0](v32, -1, -1);
      }

      if (v5[32] == 7)
      {
        v14 = *(v5 + 2);
        v15 = v13;
        v16 = v28;
        v17 = v9;
        v18 = v12;
        v19 = *v5;
        v20 = *(v5 + 1);
        v34 = *(v5 + 3);
        v35[0] = v19;
        v35[1] = v20;
        v35[2] = v14;

        v21 = v20;

        sub_1D3351FDC(v35, v16 & 1);
        sub_1D332B2E8(v5);
        v22 = v19;
        v12 = v18;
        v9 = v17;
        v23 = v20;
        v13 = v15;
        sub_1D332B1DC(v22, v23, v14, v34, 7u);
      }

      else
      {
        sub_1D332B2E8(v5);
      }

      v11 += v12;
      --v10;
    }

    while (v10);
    return sub_1D332B2E8(v9);
  }

  return result;
}

void sub_1D3351F50(uint64_t a1, char a2)
{
  if (*(a1 + 32) == 7)
  {
    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = *(a1 + 8);
    v8[0] = *a1;
    v6 = v8[0];
    v8[1] = v5;
    v8[2] = v4;

    v7 = v5;

    sub_1D3351FDC(v8, a2 & 1);
    sub_1D332B1DC(v6, v5, v4, v3, 7u);
  }
}

uint64_t sub_1D3351FDC(uint64_t *a1, char a2)
{
  v3 = v2;
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = sub_1D3350D20();
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v6;
  *(v9 + 32) = v7;
  *(v9 + 40) = v3;
  *(v9 + 48) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1D3356668;
  *(v10 + 24) = v9;
  v26 = sub_1D3356794;
  v27 = v10;
  v22 = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1D3356790;
  v25 = &block_descriptor_166;
  v11 = _Block_copy(&v22);

  v12 = v6;

  [v8 performWhileLocked_];

  _Block_release(v11);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    LOBYTE(v11) = a2 & 1;
    if (qword_1EDEBFD70 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v13 = sub_1D33DE464();
  __swift_project_value_buffer(v13, qword_1EDEC1480);
  v14 = sub_1D33DE444();
  v15 = sub_1D33DEAF4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 67109120;
    *(v16 + 4) = a2 & 1;
    _os_log_impl(&dword_1D331A000, v14, v15, "Deleting link, should refresh %{BOOL}d", v16, 8u);
    MEMORY[0x1D38B81C0](v16, -1, -1);
  }

  v17 = *(v3 + 24);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v11;
  *(v19 + 24) = v18;
  v26 = sub_1D3356744;
  v27 = v19;
  v22 = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1D33529D4;
  v25 = &block_descriptor_174;
  v20 = _Block_copy(&v22);

  [v17 invalidateLink:v12 completionHandler:v20];
  _Block_release(v20);
}

void *sub_1D3352314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v42 = a6;
  v41 = a5;
  v40 = sub_1D33DDC44();
  v10 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v39 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1;
  v12 = *(a1 + 64);

  v13 = sub_1D3358198(a2, a3, a4, v12);
  LOBYTE(a2) = v14;

  if ((a2 & 1) == 0)
  {
    v45 = *(v43 + 64);

    sub_1D3357D40(v13, &v46);
    v15 = v47;

    sub_1D334FDC0(v45);
  }

  if ((a4 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D33DEDC4();
    sub_1D331DA18(0, &qword_1EC761170, 0x1E69992A8);
    sub_1D33565AC(&unk_1EC760F00, &qword_1EC761170, 0x1E69992A8);
    result = sub_1D33DEA94();
    a4 = v46;
    v17 = v47;
    v18 = v48;
    v19 = v49;
    v20 = v50;
  }

  else
  {
    v21 = -1 << *(a4 + 32);
    v17 = (a4 + 56);
    v18 = ~v21;
    v22 = -v21;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v20 = v23 & *(a4 + 56);

    v19 = 0;
  }

  v38[1] = v18;
  v24 = (v18 + 64) >> 6;
  v25 = (v10 + 8);
  while (a4 < 0)
  {
    v33 = sub_1D33DEE54();
    if (!v33)
    {
      return sub_1D331FEEC(a4);
    }

    v44 = v33;
    sub_1D331DA18(0, &qword_1EC761170, 0x1E69992A8);
    swift_dynamicCast();
    v32 = v45;
    v30 = v19;
    v31 = v20;
    if (!v45)
    {
      return sub_1D331FEEC(a4);
    }

LABEL_20:
    v34 = *(v43 + 72);

    v35 = sub_1D3358278(v32, v34);
    v37 = v36;

    if ((v37 & 1) == 0)
    {
      v45 = *(v43 + 72);

      sub_1D334FE5C(v45);
    }

    v26 = [v32 url];
    v27 = v39;
    sub_1D33DDC24();

    sub_1D3354884(v27, v42 & 1);
    result = (*v25)(v27, v40);
    v19 = v30;
    v20 = v31;
  }

  v28 = v19;
  v29 = v20;
  v30 = v19;
  if (v20)
  {
LABEL_16:
    v31 = (v29 - 1) & v29;
    v32 = *(*(a4 + 48) + ((v30 << 9) | (8 * __clz(__rbit64(v29)))));
    if (!v32)
    {
      return sub_1D331FEEC(a4);
    }

    goto LABEL_20;
  }

  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v24)
    {
      return sub_1D331FEEC(a4);
    }

    v29 = v17[v30];
    ++v28;
    if (v29)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void sub_1D33526CC(uint64_t a1, char a2)
{
  v5 = *(v2 + 24);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = v6;
  v9[4] = sub_1D335513C;
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1D33529D4;
  v9[3] = &block_descriptor_16;
  v8 = _Block_copy(v9);

  [v5 invalidateLink:a1 completionHandler:v8];
  _Block_release(v8);
}

void sub_1D33527DC(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  if (!a2)
  {
LABEL_6:
    if ((a3 & 1) == 0)
    {
      return;
    }

    goto LABEL_9;
  }

  swift_getErrorValue();
  v6 = a2;
  v7 = sub_1D33DF224();
  v9 = v8;
  if (qword_1EDEBFD70 != -1)
  {
    swift_once();
  }

  v10 = sub_1D33DE464();
  __swift_project_value_buffer(v10, qword_1EDEC1480);

  v11 = sub_1D33DE444();
  v12 = sub_1D33DEAD4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17[0] = v14;
    *v13 = 136315138;
    v15 = sub_1D3328B48(v7, v9, v17);

    *(v13 + 4) = v15;
    _os_log_impl(&dword_1D331A000, v11, v12, "delete conversation link failed with an error %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1D38B81C0](v14, -1, -1);
    MEMORY[0x1D38B81C0](v13, -1, -1);

    goto LABEL_6;
  }

  if ((a3 & 1) == 0)
  {
    return;
  }

LABEL_9:
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1D3352F40(Strong);
  }
}

void sub_1D33529D4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_1D3352A4C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1D3352AB8(uint64_t a1)
{
  v2 = sub_1D3350D20();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1D3355148;
  *(v4 + 24) = v3;
  v7[4] = sub_1D3356794;
  v7[5] = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1D3356790;
  v7[3] = &block_descriptor_26;
  v5 = _Block_copy(v7);

  [v2 performWhileLocked_];

  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

void sub_1D3352C1C(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 56);
  if ((v2 & 1) == 0)
  {
    v4 = a1;
    *(a1 + 56) = v2 | 1;
    sub_1D334F96C();
    if (a2 >> 62)
    {
      v5 = sub_1D33DEE14();
    }

    else
    {
      v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = MEMORY[0x1E69E7CC0];
    if (v5)
    {
      v30 = MEMORY[0x1E69E7CC0];
      sub_1D334B44C(0, v5 & ~(v5 >> 63), 0);
      if (v5 < 0)
      {
        __break(1u);
        return;
      }

      v7 = 0;
      v8 = v30;
      v28 = v4;
      v29 = v6 >> 62;
      do
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1D38B75D0](v7, a2);
        }

        else
        {
          v9 = *(a2 + 8 * v7 + 32);
        }

        v10 = v9;
        if (v29 && (v11 = MEMORY[0x1E69E7CC0], sub_1D33DEE14()))
        {
          sub_1D33A69F4(v11);
          v13 = v12;
        }

        else
        {
          v13 = MEMORY[0x1E69E7CD0];
        }

        v14 = v5;
        if (qword_1EDEC0138 != -1)
        {
          swift_once();
        }

        v15 = qword_1EDEC0110;
        v30 = v8;
        v17 = *(v8 + 16);
        v16 = *(v8 + 24);

        if (v17 >= v16 >> 1)
        {
          sub_1D334B44C((v16 > 1), v17 + 1, 1);
          v8 = v30;
        }

        ++v7;
        *(v8 + 16) = v17 + 1;
        v18 = (v8 + 24 * v17);
        v18[4] = v15;
        v18[5] = v10;
        v18[6] = v13;
        v5 = v14;
      }

      while (v14 != v7);
      v4 = v28;
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    if (qword_1EDEBFD70 != -1)
    {
      swift_once();
    }

    v19 = sub_1D33DE464();
    __swift_project_value_buffer(v19, qword_1EDEC1480);

    v20 = sub_1D33DE444();
    v21 = sub_1D33DEAF4();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 136315138;
      v30 = v23;
      v24 = sub_1D33DE804();
      v26 = sub_1D3328B48(v24, v25, &v30);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_1D331A000, v20, v21, "Updated links - count: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x1D38B81C0](v23, -1, -1);
      MEMORY[0x1D38B81C0](v22, -1, -1);
    }

    sub_1D334FDC0(v8);
    v27 = *(v4 + 56);
    if (v27)
    {
      *(v4 + 56) = v27 & 0xFFFFFFFFFFFFFFFELL;
    }

    sub_1D334F96C();
  }
}

void sub_1D3352F40(uint64_t a1)
{
  v2 = v1;
  sub_1D33DE4F4();
  if (v8 != 1)
  {
    sub_1D33DE4E4();
    v3 = sub_1D3350D20();
    v12 = sub_1D3351B60;
    v13 = 0;
    v8 = MEMORY[0x1E69E9820];
    v9 = 1107296256;
    v10 = sub_1D3356790;
    v11 = &block_descriptor_29;
    v4 = _Block_copy(&v8);

    [v3 performWhileLocked_];

    _Block_release(v4);
    if (swift_isEscapingClosureAtFileLocation())
    {
      __break(1u);
    }

    else
    {
      v5 = *(v2 + 24);
      v6 = swift_allocObject();
      swift_weakInit();
      v12 = sub_1D3355150;
      v13 = v6;
      v8 = MEMORY[0x1E69E9820];
      v9 = 1107296256;
      v10 = sub_1D33536F8;
      v11 = &block_descriptor_33;
      v7 = _Block_copy(&v8);

      [v5 getActiveLinksWithCreatedOnly:0 completionHandler:v7];
      _Block_release(v7);
    }
  }
}

uint64_t sub_1D335310C(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v5 = sub_1D3350D20();

    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 24) = a1;
    v7 = swift_allocObject();
    v8 = sub_1D3356654;
    *(v7 + 16) = sub_1D3356654;
    *(v7 + 24) = v6;
    aBlock[4] = sub_1D3356794;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D3356790;
    aBlock[3] = &block_descriptor_156;
    v9 = _Block_copy(aBlock);
    v10 = a2;

    [v5 performWhileLocked_];

    _Block_release(v9);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v8 = 0;
  v6 = 0;
LABEL_5:
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D3354704();
  }

  return sub_1D331EEDC(v8, v6);
}

void sub_1D3353300(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (qword_1EDEBFD70 != -1)
    {
      swift_once();
    }

    v5 = sub_1D33DE464();
    __swift_project_value_buffer(v5, qword_1EDEC1480);
    v6 = a2;
    v7 = sub_1D33DE444();
    v8 = sub_1D33DEAD4();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v34 = v10;
      *v9 = 136315138;
      v11 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760EF0, &unk_1D33E1A30);
      v12 = sub_1D33DE804();
      v14 = sub_1D3328B48(v12, v13, &v34);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_1D331A000, v7, v8, "Failed to get links: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1D38B81C0](v10, -1, -1);
      v15 = v9;
LABEL_6:
      MEMORY[0x1D38B81C0](v15, -1, -1);
      goto LABEL_7;
    }

    goto LABEL_7;
  }

  if (*(a1 + 48))
  {
    if (!a3)
    {
      goto LABEL_15;
    }

    sub_1D3355648(v18, a3);
    v20 = v19;

    if ((v20 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (a3)
  {
LABEL_15:
    *(a1 + 48) = a3;

    if (a3)
    {
      sub_1D334F360(a3);
      v22 = v21;
    }

    else
    {
      v22 = MEMORY[0x1E69E7CC0];
    }

    if (qword_1EDEBFD70 != -1)
    {
      swift_once();
    }

    v26 = sub_1D33DE464();
    __swift_project_value_buffer(v26, qword_1EDEC1480);

    v27 = sub_1D33DE444();
    v28 = sub_1D33DEAF4();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 136315138;
      v34 = v30;
      v31 = sub_1D33DE804();
      v33 = sub_1D3328B48(v31, v32, &v34);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_1D331A000, v27, v28, "updatedLinks - count: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x1D38B81C0](v30, -1, -1);
      MEMORY[0x1D38B81C0](v29, -1, -1);
    }

    sub_1D334FDC0(v22);
    v16 = *(a1 + 56);
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (qword_1EDEBFD70 != -1)
  {
    swift_once();
  }

  v23 = sub_1D33DE464();
  __swift_project_value_buffer(v23, qword_1EDEC1480);
  v7 = sub_1D33DE444();
  v24 = sub_1D33DEAF4();
  if (os_log_type_enabled(v7, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1D331A000, v7, v24, "model links unchanged - skipping update", v25, 2u);
    v15 = v25;
    goto LABEL_6;
  }

LABEL_7:

  v16 = *(a1 + 56);
  if (v16)
  {
LABEL_8:
    *(a1 + 56) = v16 & 0xFFFFFFFFFFFFFFFELL;
  }

LABEL_9:
  sub_1D334F96C();
}

uint64_t sub_1D33536F8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1D331DA18(0, &qword_1EDEBEEC0, 0x1E69D8B70);
    sub_1D33565AC(&qword_1EDEBEEB8, &qword_1EDEBEEC0, 0x1E69D8B70);
    v4 = sub_1D33DEA54();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_1D33537C8()
{
  v1 = v0;
  v2 = sub_1D33DDE74();
  v54 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D33DDE84();
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v47 - v9;
  v55 = sub_1D33DDD34();
  v11 = *(v55 - 8);
  v12 = MEMORY[0x1EEE9AC00](v55);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v47 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v47 - v18;
  v51 = objc_opt_self();
  v19 = [v51 baseURLStrings];
  v20 = sub_1D33DE8B4();

  v21 = *(v20 + 16);

  if (!v21)
  {
    sub_1D331DA18(0, &qword_1EC760E18, 0x1E69E9BF8);
    v56 = sub_1D33DECD4();
    sub_1D33DEAF4();
    sub_1D33DE384();
    v46 = v56;

    return;
  }

  v50 = v2;
  LOBYTE(aBlock) = 1;
  sub_1D33DE4E4();
  v22 = sub_1D3350D20();
  v61 = sub_1D3351B98;
  v62 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = sub_1D3356790;
  v60 = &block_descriptor_36;
  v23 = _Block_copy(&aBlock);

  [v22 performWhileLocked_];

  _Block_release(v23);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
    goto LABEL_13;
  }

  v48 = sub_1D3351078();
  sub_1D33DDD24();
  if (qword_1EDEBFD70 != -1)
  {
LABEL_13:
    swift_once();
  }

  v49 = v1;
  v24 = sub_1D33DE464();
  __swift_project_value_buffer(v24, qword_1EDEC1480);
  v25 = sub_1D33DE444();
  v26 = sub_1D33DEAF4();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1D331A000, v25, v26, "Refreshing suggestionsURLs", v27, 2u);
    MEMORY[0x1D38B81C0](v27, -1, -1);
  }

  sub_1D33DDE64();
  v28 = v54;
  v29 = v50;
  (*(v54 + 104))(v4, *MEMORY[0x1E6969A48], v50);
  sub_1D33DDD24();
  sub_1D33DDE54();
  v30 = v14;
  v31 = v55;
  v32 = v10;
  v33 = *(v11 + 8);
  v33(v30, v55);
  v34 = v4;
  v35 = v31;
  (*(v28 + 8))(v34, v29);
  (*(v52 + 8))(v7, v53);
  if ((*(v11 + 48))(v32, 1, v31) != 1)
  {
    (*(v11 + 32))(v17, v32, v31);
    v36 = sub_1D33DDC94();
    v33(v17, v31);
    v37 = v56;
    v38 = sub_1D33DDC94();
    v39 = [v51 baseURLStrings];
    v40 = sub_1D33DE8B4();

    if (*(v40 + 16))
    {

      v41 = sub_1D33DE784();

      v42 = swift_allocObject();
      swift_weakInit();
      v43 = swift_allocObject();
      v44 = v48;
      *(v43 + 16) = v42;
      *(v43 + 24) = v44;
      v61 = sub_1D3355158;
      v62 = v43;
      aBlock = MEMORY[0x1E69E9820];
      v58 = 1107296256;
      v59 = sub_1D3354660;
      v60 = &block_descriptor_43;
      v45 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      [v44 urlsFoundBetweenStartDate:v36 endDate:v38 excludingBundleIdentifiers:0 containingSubstring:v41 flagFilter:4 limit:10 withCompletion:v45];
      _Block_release(v45);
      swift_unknownObjectRelease();

      v33(v37, v35);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t type metadata accessor for RecentsLinkController(uint64_t a1)
{
  result = qword_1EDEBF7F0;
  if (!qword_1EDEBF7F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D3353F80(uint64_t a1)
{
  **(v1 + 16) = *(a1 + 64);
}

uint64_t sub_1D3353FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (a1)
    {
      v6 = a1;
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1D3350D20();
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = a4;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1D3355AC8;
    *(v9 + 24) = v8;
    aBlock[4] = sub_1D3356794;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D3356790;
    aBlock[3] = &block_descriptor_120;
    v10 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v7 performWhileLocked_];

    _Block_release(v10);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      return result;
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1D3354704();
    }
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    sub_1D3354704();
  }
}

void sub_1D33541E0(uint64_t a1, unint64_t a2, void *a3)
{
  v34 = a3;
  v33 = sub_1D33DDC44();
  v5 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;

  v9 = sub_1D3374140(v8, a2);

  if (v9)
  {
    goto LABEL_15;
  }

  sub_1D334FE5C(v10);
  if (qword_1EDEBFD70 != -1)
  {
    swift_once();
  }

  v11 = sub_1D33DE464();
  __swift_project_value_buffer(v11, qword_1EDEC1480);

  v12 = sub_1D33DE444();
  v13 = sub_1D33DEAF4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v35 = a2;
    aBlock[0] = v15;
    *v14 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760ED0, &unk_1D33E2248);
    v16 = sub_1D33DE804();
    v18 = sub_1D3328B48(v16, v17, aBlock);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_1D331A000, v12, v13, "Updated suggestionsURLs %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x1D38B81C0](v15, -1, -1);
    MEMORY[0x1D38B81C0](v14, -1, -1);
  }

  if (a2 >> 62)
  {
    v19 = sub_1D33DEE14();
    if (!v19)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v19 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
      goto LABEL_15;
    }
  }

  if (v19 < 1)
  {
    __break(1u);
    return;
  }

  v20 = 0;
  v21 = (v5 + 8);
  do
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x1D38B75D0](v20, a2);
    }

    else
    {
      v22 = *(a2 + 8 * v20 + 32);
    }

    v23 = v22;
    ++v20;
    v24 = [v22 url];
    sub_1D33DDC24();

    sub_1D33DDBF4();
    (*v21)(v7, v33);
    v25 = sub_1D33DE784();

    aBlock[4] = nullsub_1;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D3352A4C;
    aBlock[3] = &block_descriptor_123;
    v26 = _Block_copy(aBlock);
    [v34 registerURLFeedback:2 absoluteURL:v25 withCompletion:v26];
    _Block_release(v26);
  }

  while (v19 != v20);
LABEL_15:
  v27 = *(v32 + 56);
  if ((v27 & 2) != 0)
  {
    *(v32 + 56) = v27 & 0xFFFFFFFFFFFFFFFDLL;
  }

  sub_1D334F96C();
  if (qword_1EDEBFD70 != -1)
  {
    swift_once();
  }

  v28 = sub_1D33DE464();
  __swift_project_value_buffer(v28, qword_1EDEC1480);
  v29 = sub_1D33DE444();
  v30 = sub_1D33DEAF4();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_1D331A000, v29, v30, "Refreshed suggestionsURLs", v31, 2u);
    MEMORY[0x1D38B81C0](v31, -1, -1);
  }
}

uint64_t sub_1D3354660(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1D331DA18(0, &qword_1EC761170, 0x1E69992A8);
    v4 = sub_1D33DE8B4();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_1D3354704()
{
  v6 = 0;
  v0 = sub_1D3350D20();
  v1 = swift_allocObject();
  *(v1 + 16) = &v6;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1D3355A74;
  *(v2 + 24) = v1;
  aBlock[4] = sub_1D3356794;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D3356790;
  aBlock[3] = &block_descriptor_106;
  v3 = _Block_copy(aBlock);

  [v0 performWhileLocked_];

  _Block_release(v3);
  LOBYTE(v0) = swift_isEscapingClosureAtFileLocation();

  if (v0)
  {
    __break(1u);
  }

  else
  {
    if (v6 == 1)
    {
      LOBYTE(aBlock[0]) = 2;
      sub_1D33DE4E4();
    }
  }

  return result;
}

void sub_1D3354884(uint64_t a1, int a2)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EA0, &qword_1D33E2210);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v36 - v7;
  v9 = sub_1D33DDC44();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v40 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v36 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v36 - v16;
  if (qword_1EDEBFD70 != -1)
  {
    swift_once();
  }

  v18 = sub_1D33DE464();
  __swift_project_value_buffer(v18, qword_1EDEC1480);
  v19 = *(v10 + 16);
  v41 = a1;
  v19(v17, a1, v9);
  v20 = sub_1D33DE444();
  v21 = sub_1D33DEAF4();
  if (os_log_type_enabled(v20, v21))
  {
    v39 = v21;
    v22 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    aBlock[0] = v37;
    v38 = v22;
    *v22 = 136315138;
    v19(v8, v17, v9);
    (*(v10 + 56))(v8, 0, 1, v9);
    sub_1D3355A04(v8, v6);
    if ((*(v10 + 48))(v6, 1, v9) == 1)
    {
      sub_1D331E880(v6, &unk_1EC760EA0, &qword_1D33E2210);
      sub_1D331E880(v8, &unk_1EC760EA0, &qword_1D33E2210);
      (*(v10 + 8))(v17, v9);
      v23 = 0xE300000000000000;
      v24 = 7104878;
    }

    else
    {
      (*(v10 + 32))(v15, v6, v9);
      v19(v40, v15, v9);
      v25 = sub_1D33DE804();
      v23 = v26;
      v27 = *(v10 + 8);
      v27(v15, v9);
      sub_1D331E880(v8, &unk_1EC760EA0, &qword_1D33E2210);
      v27(v17, v9);
      v24 = v25;
    }

    v28 = sub_1D3328B48(v24, v23, aBlock);

    v29 = v38;
    *(v38 + 1) = v28;
    _os_log_impl(&dword_1D331A000, v20, v39, "Rejecting suggestedURL %s", v29, 0xCu);
    v30 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x1D38B81C0](v30, -1, -1);
    MEMORY[0x1D38B81C0](v29, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v17, v9);
  }

  v31 = sub_1D3351078();
  sub_1D33DDBF4();
  v32 = sub_1D33DE784();

  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v42 & 1;
  *(v34 + 24) = v33;
  aBlock[4] = sub_1D33559F8;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D3352A4C;
  aBlock[3] = &block_descriptor_96;
  v35 = _Block_copy(aBlock);

  [v31 registerURLFeedback:0 absoluteURL:v32 withCompletion:v35];
  _Block_release(v35);
  swift_unknownObjectRelease();
}

void sub_1D3354DCC(uint64_t a1, char a2, uint64_t a3)
{
  if (qword_1EDEBFD70 != -1)
  {
    swift_once();
  }

  v4 = sub_1D33DE464();
  __swift_project_value_buffer(v4, qword_1EDEC1480);
  v5 = sub_1D33DE444();
  v6 = sub_1D33DEAF4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12[0] = v8;
    *v7 = 136315138;
    v9 = sub_1D33DE804();
    v11 = sub_1D3328B48(v9, v10, v12);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1D331A000, v5, v6, "Rejected suggestedURL refreshing: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1D38B81C0](v8, -1, -1);
    MEMORY[0x1D38B81C0](v7, -1, -1);
  }

  if (a2)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1D33537C8();
    }
  }
}

uint64_t sub_1D3354F88()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760FD0, &qword_1D33E2240);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v7 - v3;
  v7[1] = *(*v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7619E0, &unk_1D33E1AA0);
  sub_1D334CB54(&unk_1EC760EB0, &unk_1EC7619E0, &unk_1D33E1AA0, MEMORY[0x1E695BFB0]);
  sub_1D334CB00();
  sub_1D33DE624();
  sub_1D334CB54(&unk_1EC760EC0, &unk_1EC760FD0, &qword_1D33E2240, MEMORY[0x1E695BD38]);
  v5 = sub_1D33DE5A4();
  (*(v2 + 8))(v4, v1);
  return v5;
}

uint64_t sub_1D33551D8(uint64_t a1)
{
  result = sub_1D33DDF14();
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

unint64_t sub_1D33554EC()
{
  result = qword_1EC760E80;
  if (!qword_1EC760E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC760E80);
  }

  return result;
}

unint64_t sub_1D3355544()
{
  result = qword_1EC760E88;
  if (!qword_1EC760E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC760E88);
  }

  return result;
}

unint64_t sub_1D335559C()
{
  result = qword_1EC760E90;
  if (!qword_1EC760E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC760E90);
  }

  return result;
}

unint64_t sub_1D33555F4()
{
  result = qword_1EC760E98;
  if (!qword_1EC760E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC760E98);
  }

  return result;
}

void sub_1D3355648(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = a2 & 0xFFFFFFFFFFFFFF8;
      }

LABEL_43:
      MEMORY[0x1EEE6A200](v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_1D33558C0(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    v5 = sub_1D331DA18(0, &qword_1EDEBEEC0, 0x1E69D8B70);
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v27 = v14;
    v16 = a1;
    if (!v12)
    {
LABEL_27:
      v18 = v13;
      while (1)
      {
        v13 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v19 = *(v9 + 8 * v13);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v28 = (v19 - 1) & v19;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    while (1)
    {
      v17 = __clz(__rbit64(v12));
      v28 = (v12 - 1) & v12;
LABEL_32:
      v20 = *(*(v16 + 48) + 8 * (v17 | (v13 << 6)));
      v21 = sub_1D33DEC64();
      v22 = -1 << *(a2 + 32);
      v23 = v21 & ~v22;
      if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        break;
      }

      v24 = ~v22;
      while (1)
      {
        v25 = *(*(a2 + 48) + 8 * v23);
        v26 = sub_1D33DEC74();

        if (v26)
        {
          break;
        }

        v23 = (v23 + 1) & v24;
        if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = v27;
      v12 = v28;
      v16 = a1;
      if (!v28)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

void sub_1D33558C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_1D33DEE14())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = sub_1D33DEE64();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D33559C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1D3355A04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EA0, &qword_1D33E2210);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D3355A8C()
{
  *(*(v0 + 16) + 80) = *(v0 + 24);
}

uint64_t sub_1D3355AD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D334CF9C;

  return sub_1D334FC04(a1, v4, v5, v6);
}

void sub_1D3355B84(uint64_t *a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EE0, &qword_1D33E4CE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v38 - v5;
  v48 = type metadata accessor for RecentsItem(0);
  v44 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D33DDD34();
  v41 = *(v8 - 8);
  v42 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(*a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  v45 = v6;
  if (v11)
  {
    v39 = a2;
    v40 = a1;
    v49[0] = MEMORY[0x1E69E7CC0];
    sub_1D334B44C(0, v11, 0);
    v13 = v49[0];
    v38 = v10;
    v14 = v10 + 48;
    v46 = v12 >> 62;
    do
    {
      v15 = *(v14 - 8);
      if (v46 && sub_1D33DEE14())
      {

        v16 = v15;

        v17 = v16;
        sub_1D33A69F4(v12);
        v19 = v18;
      }

      else
      {

        v20 = v15;

        v21 = v20;
        v19 = MEMORY[0x1E69E7CD0];
      }

      if (qword_1EDEC0138 != -1)
      {
        swift_once();
      }

      v22 = qword_1EDEC0110;

      v49[0] = v13;
      v24 = *(v13 + 16);
      v23 = *(v13 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1D334B44C((v23 > 1), v24 + 1, 1);
        v13 = v49[0];
      }

      *(v13 + 16) = v24 + 1;
      v25 = (v13 + 24 * v24);
      v25[4] = v22;
      v25[5] = v15;
      v25[6] = v19;
      v14 += 24;
      --v11;
    }

    while (v11);

    v6 = v45;
    a2 = v39;
    a1 = v40;
  }

  else
  {

    v13 = MEMORY[0x1E69E7CC0];
  }

  *a1 = v13;
  v26 = v43;
  v27 = sub_1D33DDD24();
  MEMORY[0x1EEE9AC00](v27);
  *(&v38 - 2) = a1;
  *(&v38 - 1) = v26;
  sub_1D334F728(sub_1D3356590, (&v38 - 4), a2);
  v49[3] = v12;
  v28 = *a1;
  v29 = *(*a1 + 16);
  if (v29)
  {
    v30 = 0;
    v31 = (v44 + 48);
    v32 = (v28 + 48);
    v12 = MEMORY[0x1E69E7CC0];
    while (v30 < *(v28 + 16))
    {
      v33 = *(v32 - 1);
      v34 = *v32;
      v49[0] = *(v32 - 2);
      v49[1] = v33;
      v49[2] = v34;

      v35 = v33;

      RecentsItem.init(link:)(v49, v6);
      if ((*v31)(v6, 1, v48) == 1)
      {
        sub_1D331E880(v6, &unk_1EC760EE0, &qword_1D33E4CE0);
      }

      else
      {
        sub_1D33302BC(v6, v47);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_1D33226AC(0, *(v12 + 16) + 1, 1, v12);
        }

        v37 = *(v12 + 16);
        v36 = *(v12 + 24);
        if (v37 >= v36 >> 1)
        {
          v12 = sub_1D33226AC((v36 > 1), v37 + 1, 1, v12);
        }

        *(v12 + 16) = v37 + 1;
        sub_1D33302BC(v47, v12 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v37);
        v6 = v45;
      }

      ++v30;
      v32 += 3;
      if (v29 == v30)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_25:
    sub_1D3333DE0(v12);
    (*(v41 + 8))(v43, v42);
  }
}

uint64_t sub_1D335606C()
{
  *(*(v0 + 16) + 64) = **(v0 + 24);
}

uint64_t sub_1D33560B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D3350C84();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1D33564FC;
  *(v8 + 24) = v7;
  v31 = sub_1D3356540;
  v32 = v8;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1D3356790;
  v30 = &block_descriptor_136;
  v9 = _Block_copy(&aBlock);

  [v6 performWhileLocked_];

  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    v10 = sub_1D3350D20();
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = a3;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1D3356568;
    *(v12 + 24) = v11;
    v31 = sub_1D3356794;
    v32 = v12;
    aBlock = MEMORY[0x1E69E9820];
    v28 = 1107296256;
    v29 = sub_1D3356790;
    v30 = &block_descriptor_146;
    v13 = _Block_copy(&aBlock);

    [v10 performWhileLocked_];

    _Block_release(v13);
    LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

    if ((v10 & 1) == 0)
    {
      if (qword_1EDEBFD70 == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_11:
  swift_once();
LABEL_4:
  v14 = sub_1D33DE464();
  __swift_project_value_buffer(v14, qword_1EDEC1480);

  v15 = sub_1D33DE444();
  v16 = sub_1D33DEAF4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 136315138;
    aBlock = v18;
    v19 = sub_1D33DE804();
    v21 = sub_1D3328B48(v19, v20, &aBlock);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_1D331A000, v15, v16, "Informing delegate of updated callItems - count %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x1D38B81C0](v18, -1, -1);
    MEMORY[0x1D38B81C0](v17, -1, -1);
  }

  v22 = sub_1D33DE444();
  v23 = sub_1D33DEAF4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1D331A000, v22, v23, "Updating: Recents Links", v24, 2u);
    MEMORY[0x1D38B81C0](v24, -1, -1);
  }

  sub_1D33511E4(v25);
}

uint64_t sub_1D33564FC(uint64_t a1)
{
  *(a1 + 16) = *(v1 + 16);
}

uint64_t sub_1D33565AC(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D331DA18(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_39Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return MEMORY[0x1EEE6BDD0](v2, 32, 7);
}

uint64_t sub_1D335665C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_1D3356678(uint64_t a1)
{
  **(v1 + 16) = *(a1 + 16);
}

uint64_t sub_1D33566BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D33567C0(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1D3357A88(&unk_1EDEBF560, type metadata accessor for ConversationDataSource, &protocol conformance descriptor for ConversationDataSource);
  sub_1D33DDED4();
}

uint64_t sub_1D3356864@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1D3357A88(&unk_1EDEBF560, type metadata accessor for ConversationDataSource, &protocol conformance descriptor for ConversationDataSource);
  sub_1D33DDED4();

  *a4 = *(v6 + *a3);
}

uint64_t sub_1D335691C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1D3357A88(&unk_1EDEBF560, type metadata accessor for ConversationDataSource, &protocol conformance descriptor for ConversationDataSource);
  sub_1D33DDEC4();
}

uint64_t sub_1D33569E8()
{
  swift_getKeyPath();
  sub_1D3357A88(&unk_1EDEBF560, type metadata accessor for ConversationDataSource, &protocol conformance descriptor for ConversationDataSource);
  sub_1D33DDED4();

  v1 = v0 + OBJC_IVAR____TtC16CallsAppServices22ConversationDataSource_state;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC16CallsAppServices22ConversationDataSource_state));
  v2 = *(v1 + 8);

  os_unfair_lock_unlock(v1);
  return v2;
}

void sub_1D3356AB0(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D3357A88(&unk_1EDEBF560, type metadata accessor for ConversationDataSource, &protocol conformance descriptor for ConversationDataSource);
  sub_1D33DDED4();

  v4 = v3 + OBJC_IVAR____TtC16CallsAppServices22ConversationDataSource_state;
  os_unfair_lock_lock((v3 + OBJC_IVAR____TtC16CallsAppServices22ConversationDataSource_state));
  v5 = *(v4 + 8);

  os_unfair_lock_unlock(v4);
  *a2 = v5;
}

void sub_1D3356BB0(uint64_t *a1, uint64_t a2)
{
  v3 = sub_1D33DE3F4();
  v30 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1D33DE3B4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *a1;
  if (qword_1EDEBFD70 != -1)
  {
    swift_once();
  }

  v11 = sub_1D33DE464();
  __swift_project_value_buffer(v11, qword_1EDEC1480);
  v12 = sub_1D33DE444();
  v13 = sub_1D33DEAF4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1D331A000, v12, v13, "Updating: Conversations", v14, 2u);
    MEMORY[0x1D38B81C0](v14, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v29 = v7;
    v31 = OBJC_IVAR____TtC16CallsAppServices22ConversationDataSource_loadingStateSubject;
    LOBYTE(v32) = 1;
    sub_1D33DE4E4();
    swift_getKeyPath();
    v32 = v16;
    sub_1D3357A88(&unk_1EDEBF560, type metadata accessor for ConversationDataSource, &protocol conformance descriptor for ConversationDataSource);
    sub_1D33DDED4();

    if (*&v16[OBJC_IVAR____TtC16CallsAppServices22ConversationDataSource__signState])
    {
      v28 = v10;
      v17 = qword_1EDEBF088;

      if (v17 != -1)
      {
        swift_once();
      }

      v18 = sub_1D33DE3E4();
      __swift_project_value_buffer(v18, qword_1EDEC1458);
      v19 = sub_1D33DE3D4();
      sub_1D33DE404();
      v27 = sub_1D33DEBF4();
      if (sub_1D33DECC4())
      {

        sub_1D33DE434();

        v20 = v30;
        if ((*(v30 + 88))(v5, v3) == *MEMORY[0x1E69E93E8])
        {
          v21 = "[Error] Interval already ended";
        }

        else
        {
          (*(v20 + 8))(v5, v3);
          v21 = "";
        }

        v22 = swift_slowAlloc();
        *v22 = 0;
        v23 = sub_1D33DE394();
        _os_signpost_emit_with_name_impl(&dword_1D331A000, v19, v27, v23, "ConversationDataSource loading", v21, v22, 2u);
        MEMORY[0x1D38B81C0](v22, -1, -1);
      }

      (*(v29 + 8))(v9, v6);
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *&v26[-16] = v16;
      *&v26[-8] = 0;
      v32 = v16;
      sub_1D33DDEC4();

      v10 = v28;
    }

    v25 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v25);
    *&v26[-16] = v16;
    *&v26[-8] = v10;
    v32 = v16;
    sub_1D33DDEC4();

    LOBYTE(v32) = 2;
    sub_1D33DE4E4();
  }
}

void sub_1D3357108(uint64_t a1, uint64_t a2)
{
  v3 = a1 + OBJC_IVAR____TtC16CallsAppServices22ConversationDataSource_state;
  os_unfair_lock_lock((a1 + OBJC_IVAR____TtC16CallsAppServices22ConversationDataSource_state));
  *(v3 + 8) = a2;

  os_unfair_lock_unlock(v3);
}

id sub_1D335716C()
{
  v1 = sub_1D33DE3B4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v16 - v6;
  if (qword_1EDEBF088 != -1)
  {
    swift_once();
  }

  v8 = sub_1D33DE3E4();
  __swift_project_value_buffer(v8, qword_1EDEC1458);
  sub_1D33DE3A4();
  v9 = sub_1D33DE3D4();
  v10 = sub_1D33DEC04();
  if (sub_1D33DECC4())
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = sub_1D33DE394();
    _os_signpost_emit_with_name_impl(&dword_1D331A000, v9, v10, v12, "ConversationDataSource loading", "", v11, 2u);
    MEMORY[0x1D38B81C0](v11, -1, -1);
  }

  (*(v2 + 16))(v5, v7, v1);
  sub_1D33DE424();
  swift_allocObject();
  v13 = sub_1D33DE414();
  (*(v2 + 8))(v7, v1);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v16[-2] = v0;
  v16[-1] = v13;
  v16[1] = v0;
  sub_1D3357A88(&unk_1EDEBF560, type metadata accessor for ConversationDataSource, &protocol conformance descriptor for ConversationDataSource);
  sub_1D33DDEC4();

  return [*(v0 + OBJC_IVAR____TtC16CallsAppServices22ConversationDataSource_conversationManager) refreshActiveConversations];
}

id ConversationDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ConversationDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D33575F8(void *a1)
{
  v1 = [a1 activeConversations];
  sub_1D331DA18(0, &unk_1EDEBEF00, 0x1E69D8B20);
  sub_1D3357A1C(&qword_1EDEBEEF8, &unk_1EDEBEF00, 0x1E69D8B20, MEMORY[0x1E69E81B8]);
  v2 = sub_1D33DEA54();

  sub_1D3321CC0(v2);

  sub_1D33DE4C4();
}

void sub_1D33576DC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = [v4 activeConversations];
  sub_1D331DA18(0, &unk_1EDEBEF00, 0x1E69D8B20);
  sub_1D3357A1C(&qword_1EDEBEEF8, &unk_1EDEBEF00, 0x1E69D8B20, MEMORY[0x1E69E81B8]);
  v7 = sub_1D33DEA54();

  sub_1D3321CC0(v7);

  sub_1D33DE4C4();
}

uint64_t sub_1D33577E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760FD0, &qword_1D33E2240);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v7 - v3;
  v7[1] = *(*v0 + OBJC_IVAR____TtC16CallsAppServices22ConversationDataSource_loadingStateSubject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7619E0, &unk_1D33E1AA0);
  sub_1D334CB54(&unk_1EC760EB0, &unk_1EC7619E0, &unk_1D33E1AA0, MEMORY[0x1E695BFB0]);
  sub_1D334CB00();
  sub_1D33DE624();
  sub_1D334CB54(&unk_1EC760EC0, &unk_1EC760FD0, &qword_1D33E2240, MEMORY[0x1E695BD38]);
  v5 = sub_1D33DE5A4();
  (*(v2 + 8))(v4, v1);
  return v5;
}

uint64_t sub_1D3357980@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D3357A1C(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D331DA18(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D3357A88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D3357BB0(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

uint64_t sub_1D3357C20@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D334EC2C(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for RecentsItem(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_1D33302BC(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1D3357D40@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D334EC40(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 24 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 16);
    *a2 = v10;
    *(a2 + 16) = v11;
    result = memmove(v9, (v9 + 24), 24 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

unint64_t sub_1D3357DDC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1D334EC54(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_1D3357E6C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D334ECB8(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 56 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 40);
    v12 = *(v9 + 48);
    *a2 = v10;
    *(a2 + 8) = *(v9 + 8);
    *(a2 + 24) = *(v9 + 24);
    *(a2 + 40) = v11;
    *(a2 + 48) = v12;
    result = memmove(v9, (v9 + 56), 56 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1D3357F20(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x1D38B75D0](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_1D33DEE14();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_1D3358048(uint64_t (*a1)(void **), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = *v6++;
      v13 = v8;
      v9 = v8;
      v10 = a1(&v13);

      if (v3)
      {
        break;
      }

      v11 = v7-- == 0;
    }

    while (((v10 | v11) & 1) == 0);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

uint64_t sub_1D33580EC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1D3358198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (!v4)
  {
    return 0;
  }

  sub_1D331DA18(0, &qword_1EDEBEE70, 0x1E69E58C0);
  v6 = 0;
  for (i = a4 + 48; ; i += 24)
  {
    v8 = *(i - 8);

    v9 = v8;

    v10 = sub_1D33DEC74();

    if (v10)
    {
      break;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

unint64_t sub_1D3358278(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_1D33DEE14();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1D38B75D0](v5, a2);
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

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_1D331DA18(0, &qword_1EC761170, 0x1E69992A8);
    v8 = sub_1D33DEC74();

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

uint64_t sub_1D3358388(uint64_t a1, uint64_t a2)
{
  v17 = *(a2 + 16);
  if (v17)
  {
    sub_1D331DA18(0, &qword_1EDEBEE70, 0x1E69E58C0);
    v4 = 0;
    for (i = (a2 + 80); ; i += 56)
    {
      v7 = *(i - 6);
      v6 = *(i - 5);
      v8 = *(i - 4);
      v9 = *(i - 3);
      v10 = *(i - 2);
      v11 = *(i - 1);
      v18 = *i;

      v12 = v11;

      v13 = v8;
      if ((sub_1D33DEC74() & 1) == 0 || (v7 != *a1 || v6 != *(a1 + 8)) && (sub_1D33DF1B4() & 1) == 0)
      {
        break;
      }

      v14 = *(a1 + 32);
      if (v10)
      {
        if (!v14)
        {
          break;
        }

        if (v9 == *(a1 + 24) && v10 == v14)
        {
        }

        else
        {
          v15 = sub_1D33DF1B4();

          if ((v15 & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {

        if (v14)
        {
          goto LABEL_4;
        }
      }

      if (v18 == (*(a1 + 48) & 1))
      {
        return v4;
      }

LABEL_4:
      if (v17 == ++v4)
      {
        return 0;
      }
    }

    goto LABEL_4;
  }

  return 0;
}

uint64_t sub_1D3358560@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761000, &qword_1D33E2420);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  (*(v5 + 16))(v9 - v6, *a1 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource__favorites, v4);
  sub_1D33DDF54();
  result = (*(v5 + 8))(v7, v4);
  *a2 = v9[1];
  return result;
}

uint64_t sub_1D3358674(uint64_t *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761000, &qword_1D33E2420);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  v8 = *a1;
  (*(v5 + 16))(v10 - v6, *a2 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource__favorites, v4);
  v10[1] = v8;

  sub_1D33DDF64();
  return (*(v5 + 8))(v7, v4);
}

uint64_t FavoritesDataSource.__allocating_init(controller:)(void *a1)
{
  swift_allocObject();
  v2 = sub_1D331C8A4(a1);

  return v2;
}

id FavoritesDataSource.add(entry:)(uint64_t a1)
{
  v3 = [*(v1 + 16) favoritesEntries];
  sub_1D331DA18(0, &qword_1EDEBEEF0, 0x1E695CE98);
  v4 = sub_1D33DE8B4();

  v7 = a1;
  v6[2] = &v7;
  LOBYTE(v3) = sub_1D3357F20(sub_1D335A124, v6, v4);

  if ((v3 & 1) == 0)
  {
    return [*(v1 + 16) addEntry_];
  }

  return result;
}

Swift::Void __swiftcall FavoritesDataSource.moveFavorite(at:to:)(Swift::Int at, Swift::Int to)
{
  v3 = v2;
  v33 = at;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761000, &qword_1D33E2420);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24[-v7];
  v9 = OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource__favorites;
  v10 = *(v6 + 16);
  v10(&v24[-v7], v2 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource__favorites, v5);
  sub_1D33DDF54();
  v11 = *(v6 + 8);
  v11(v8, v5);

  v10(v8, v2 + v9, v5);
  sub_1D33DDF54();
  v11(v8, v5);
  v12 = *(v37[0] + 16);

  v31 = v10;
  v32 = v12;
  if (v12 - 1 >= (to & ~(to >> 63)))
  {
    v13 = to & ~(to >> 63);
  }

  else
  {
    v13 = v12 - 1;
  }

  v30 = v9;
  v28 = v6 + 16;
  v10(v8, v3 + v9, v5);
  v14 = v33;
  sub_1D33DDF54();
  v29 = v11;
  v11(v8, v5);
  v36 = v37[0];
  sub_1D3357E6C(v14, v34);
  v15 = v36;
  v16 = *(v36 + 2);
  if (v16 < v13)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (!v32)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v17 = v13;
  v32 = v3;
  v18 = v34[1];
  v27 = v34[0];
  v19 = v34[2];
  v26 = v34[3];
  v20 = v34[4];
  v21 = v34[5];
  v25 = v35;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v16 >= *(v15 + 3) >> 1)
  {
    v15 = sub_1D331E6F4(isUniquelyReferenced_nonNull_native, v16 + 1, 1, v15);
    v36 = v15;
  }

  v37[0] = v27;
  v37[1] = v18;
  v37[2] = v19;
  v37[3] = v26;
  v37[4] = v20;
  v37[5] = v21;
  v38 = v25;
  sub_1D335A18C(v17, v17, 1, v37);

  v23 = v32;
  v31(v8, v32 + v30, v5);
  v34[0] = v15;
  sub_1D33DDF64();
  v29(v8, v5);
  [*(v23 + 16) moveEntryAtIndex:v33 toIndex:v17];
}

Swift::Void __swiftcall FavoritesDataSource.removeFavorite(at:)(Swift::Int at)
{
  v3 = sub_1D33DDEA4();
  v4 = *(v3 - 8);
  v19 = v3;
  v20 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761000, &qword_1D33E2420);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  (*(v8 + 16))(&v18 - v9, v1 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource__favorites, v7);
  v11 = sub_1D33DDF44();
  sub_1D3357E6C(at, v22);
  v12 = v22[2];

  v11(v21, 0);
  (*(v8 + 8))(v10, v7);
  v13 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761008, &qword_1D33E2428);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D33E2410;
  *(v14 + 32) = at;
  v22[0] = v14;
  sub_1D3333FA4(&qword_1EC761010, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761018, &qword_1D33E2430);
  sub_1D334CB54(&unk_1EC761020, &qword_1EC761018, &qword_1D33E2430, MEMORY[0x1E69E6328]);
  v16 = v19;
  sub_1D33DED64();
  v17 = sub_1D33DDE94();
  (*(v20 + 8))(v6, v16);
  [v15 removeEntriesAtIndexes_];
}

void FavoritesDataSource.removeFavorite(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761000, &qword_1D33E2420);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - v6;
  v8 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v8;
  v12[2] = *(a1 + 32);
  v13 = *(a1 + 48);
  (*(v5 + 16))(v11 - v6, v2 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource__favorites, v4);
  sub_1D33DDF54();
  (*(v5 + 8))(v7, v4);
  v9 = sub_1D3358388(v12, v11[1]);
  LOBYTE(v7) = v10;

  if ((v7 & 1) == 0)
  {
    FavoritesDataSource.removeFavorite(at:)(v9);
  }
}

uint64_t FavoritesDataSource.transportName(for:)(uint64_t a1)
{
  v2 = [*(v1 + 16) transportNameForFavoritesEntry_];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1D33DE7B4();

  return v4;
}

uint64_t sub_1D3359094()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 152);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1D33DE914();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1D33594B8;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1D33DE914();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1D335922C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v4, v6);
}

uint64_t sub_1D335922C()
{

  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1D3359290, v1, v2);
}

uint64_t sub_1D3359290()
{
  v1 = v0[8];
  v2 = sub_1D33DDAE4();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[13] + 8))(v0[14], v0[12]);

LABEL_9:

    v9 = v0[1];

    return v9();
  }

  if ((sub_1D33DE9F4() & 1) != 0 || !swift_weakLoadStrong())
  {
    v8 = v0[8];
    (*(v0[13] + 8))(v0[14], v0[12]);

    sub_1D331E880(v8, &qword_1EC761158, &qword_1D33E2558);
    goto LABEL_9;
  }

  v3 = v0[8];
  sub_1D331CA38();

  sub_1D331E880(v3, &qword_1EC761158, &qword_1D33E2558);
  v0[19] = sub_1D33DE964();
  v4 = sub_1D334CB54(&unk_1EDEBEFA8, &qword_1EC761168, &qword_1D33E2568, MEMORY[0x1E695BF38]);
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_1D3359094;
  v6 = v0[12];
  v7 = v0[8];

  return MEMORY[0x1EEE6D8C8](v7, v6, v4);
}

uint64_t sub_1D33594B8()
{
  *(v0 + 40) = *(v0 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760EF0, &unk_1D33E1A30);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

uint64_t FavoritesDataSource.deinit()
{
  if (*(v0 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource_favoriteUpdateTask))
  {

    sub_1D33DE9D4();
  }

  v1 = OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource__favorites;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761000, &qword_1D33E2420);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t FavoritesDataSource.__deallocating_deinit()
{
  if (*(v0 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource_favoriteUpdateTask))
  {

    sub_1D33DE9D4();
  }

  v1 = OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource__favorites;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761000, &qword_1D33E2420);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1D3359768()
{
  v2 = *v0;
  v1 = v0[1];
  sub_1D33DF284();
  MEMORY[0x1D38B7920](v2);
  sub_1D33DF2A4();
  if (v1)
  {
    sub_1D33DE7B4();
    sub_1D33DE824();
  }

  return sub_1D33DF2C4();
}

uint64_t sub_1D33597FC(uint64_t a1)
{
  v2 = v1[1];
  MEMORY[0x1D38B7920](*v1);
  if (!v2)
  {
    return sub_1D33DF2A4();
  }

  sub_1D33DF2A4();
  sub_1D33DE7B4();
  sub_1D33DE824();
}

uint64_t sub_1D335987C(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  sub_1D33DF284();
  MEMORY[0x1D38B7920](v3);
  sub_1D33DF2A4();
  if (v2)
  {
    sub_1D33DE7B4();
    sub_1D33DE824();
  }

  return sub_1D33DF2C4();
}

char *sub_1D3359920(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761070, &qword_1D33E24F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D3359A14(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761068, &qword_1D33E24E8);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1D3359B68(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760DE0, &qword_1D33E1B68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D3359C88(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610C0, &qword_1D33E2520);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D3359DD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761040, &qword_1D33E1B40);
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
    v10 = MEMORY[0x1E69E7CC0];
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

BOOL sub_1D3359F08(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1 != a3)
  {
    return 0;
  }

  if (!a2)
  {
    return !a4;
  }

  if (!a4)
  {
    return 0;
  }

  v5 = sub_1D33DE7B4();
  v7 = v6;
  if (v5 != sub_1D33DE7B4() || v7 != v8)
  {
    v10 = sub_1D33DF1B4();

    return (v10 & 1) != 0;
  }

  return 1;
}

unint64_t sub_1D3359FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for RecentsItem(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1D335A18C(unint64_t result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v5 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v8 = a2;
  v9 = *v4;
  v10 = v9 + 32 + 56 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, v8);
  v14 = v13 - v8;
  if (v11)
  {
    goto LABEL_19;
  }

  result = v10 + 56 * a3;
  a2 = (v9 + 32 + 56 * v8);
  v15 = 56 * v14;
  v16 = &a2[56 * v14];
  if (result != a2 || result >= v16)
  {
    result = memmove(result, a2, v15);
  }

  v18 = *(v9 + 16);
  v11 = __OFADD__(v18, v12);
  v19 = v18 + v12;
  if (v11)
  {
    goto LABEL_20;
  }

  *(v9 + 16) = v19;
LABEL_13:
  if (a3 <= 0)
  {
    return result;
  }

  v20 = *a4;
  v21 = *(a4 + 16);
  v22 = *(a4 + 32);
  *(v10 + 48) = *(a4 + 48);
  *(v10 + 16) = v21;
  *(v10 + 32) = v22;
  *v10 = v20;
  a2 = v23;
  result = a4;
  if (a3 != 1)
  {
LABEL_21:
    result = sub_1D335A2D0(result, a2);
    __break(1u);
    return result;
  }

  return sub_1D335A2D0(a4, v23);
}

uint64_t sub_1D335A2D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610D0, &qword_1D33E2528);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D335A340(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1D335A39C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_1D335A3EC()
{
  type metadata accessor for TUCallCenter_Async();
  v0 = swift_allocObject();
  if (qword_1EC760938 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC7620F8;
  v2 = objc_allocWithZone(MEMORY[0x1E69D8A58]);
  v3 = v1;
  v4 = [v2 initWithQueue_];

  *(v0 + 16) = v4;
  qword_1EC7620F0 = v0;
}

uint64_t static CallServiceProvider.tuSimpleCallService()@<X0>(void *a1@<X8>)
{
  if (qword_1EC760930 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EC7620F0;
}

uint64_t getEnumTagSinglePayload for CallServiceProvider(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CallServiceProvider(_WORD *result, int a2, int a3)
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

void *sub_1D335A5F8(uint64_t a1)
{
  v1 = a1;
  v25 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D33DEDC4();
    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
    result = sub_1D33DEA94();
    v1 = v20;
    v3 = v21;
    v4 = v22;
    v5 = v23;
    v6 = v24;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = MEMORY[0x1E69E7CC0];
  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_25:
      sub_1D331FEEC(v1);
      return v10;
    }

    while (1)
    {
      v16 = [v15 type];
      if (v16 > 3)
      {
        v17 = 2;
      }

      else
      {
        v17 = qword_1D33E2708[v16];
      }

      v18 = [v15 value];
      if (!v18)
      {
        sub_1D33DE7B4();
        v18 = sub_1D33DE784();
      }

      [objc_allocWithZone(MEMORY[0x1E69D8C00]) initWithType:v17 value:v18];

      MEMORY[0x1D38B6F20]();
      if (*(v25 + 16) >= *(v25 + 24) >> 1)
      {
        sub_1D33DE8D4();
      }

      result = sub_1D33DE8F4();
      v10 = v25;
      v5 = v13;
      v6 = v14;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1D33DEE54())
      {
        sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
        swift_dynamicCast();
        v15 = v19;
        v13 = v5;
        v14 = v6;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_25;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v4 + 64) >> 6))
    {
      goto LABEL_25;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_1D335A8E0(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D33DEDC4();
    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D33DEA94();
    v1 = v24;
    v2 = v25;
    v3 = v26;
    v4 = v27;
    v5 = v28;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v23 = MEMORY[0x1E69E7CC0];
  while (v1 < 0)
  {
    if (!sub_1D33DEE54() || (sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578), swift_dynamicCast(), (v11 = v29) == 0))
    {
LABEL_29:
      sub_1D331FEEC(v1);
      return;
    }

LABEL_17:
    v12 = [v11 type];
    if (v12 > 3)
    {
      v13 = 2;
    }

    else
    {
      v13 = qword_1D33E2708[v12];
    }

    v14 = [v11 value];
    if (!v14)
    {
      sub_1D33DE7B4();
      v14 = sub_1D33DE784();
    }

    v15 = [objc_allocWithZone(MEMORY[0x1E69D8C00]) initWithType:v13 value:v14];

    v16 = TUCopyIDSFromIDForHandle();
    if (v16)
    {
      v17 = sub_1D33DE7B4();
      v19 = v18;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1D3359DD4(0, *(v23 + 2) + 1, 1, v23);
      }

      v21 = *(v23 + 2);
      v20 = *(v23 + 3);
      if (v21 >= v20 >> 1)
      {
        v23 = sub_1D3359DD4((v20 > 1), v21 + 1, 1, v23);
      }

      *(v23 + 2) = v21 + 1;
      v22 = &v23[16 * v21];
      *(v22 + 4) = v17;
      *(v22 + 5) = v19;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_29;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_29;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_1D335AC18(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D33DEDC4();
    sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
    sub_1D33565AC(&unk_1EDEC0040, &unk_1EDEC0120, 0x1E69D8C00);
    sub_1D33DEA94();
    v1 = v18;
    v2 = v19;
    v3 = v20;
    v4 = v21;
    v5 = v22;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_8:
  v9 = v4;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_1D33DEE54() || (sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00), swift_dynamicCast(), v13 = v23, v4 = v9, v5 = v10, !v23))
      {
LABEL_24:
        sub_1D331FEEC(v1);
        return;
      }

      goto LABEL_18;
    }

    v11 = v9;
    v12 = v10;
    v4 = v9;
    if (!v10)
    {
      break;
    }

LABEL_14:
    v5 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_24;
    }

LABEL_18:
    v14 = _s16CallsAppServices17ReportSpamManagerC10getContact9forHandleSaySo9CNContactCGSgSo8TUHandleC_tFZ_0(v13);

    v9 = v4;
    v10 = v5;
    if (v14)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1D3359DB0(0, v17[2] + 1, 1, v17);
      }

      v16 = v17[2];
      v15 = v17[3];
      if (v16 >= v15 >> 1)
      {
        v17 = sub_1D3359DB0((v15 > 1), v16 + 1, 1, v17);
      }

      v17[2] = v16 + 1;
      v17[v16 + 4] = v14;
      goto LABEL_8;
    }
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_1D335AEA4(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D33DEDC4();
    sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
    sub_1D33565AC(&unk_1EDEC0040, &unk_1EDEC0120, 0x1E69D8C00);
    sub_1D33DEA94();
    v1 = v21;
    v2 = v22;
    v3 = v23;
    v4 = v24;
    v5 = v25;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v9 = MEMORY[0x1E69E7CC0];
  while (v1 < 0)
  {
    if (!sub_1D33DEE54() || (sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00), swift_dynamicCast(), (v12 = v26) == 0))
    {
LABEL_24:
      sub_1D331FEEC(v1);
      return;
    }

LABEL_17:
    v13 = TUCopyIDSFromIDForHandle();
    if (v13)
    {
      v14 = v13;
      v20 = sub_1D33DE7B4();
      v16 = v15;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1D3359DD4(0, *(v9 + 2) + 1, 1, v9);
      }

      v18 = *(v9 + 2);
      v17 = *(v9 + 3);
      if (v18 >= v17 >> 1)
      {
        v9 = sub_1D3359DD4((v17 > 1), v18 + 1, 1, v9);
      }

      *(v9 + 2) = v18 + 1;
      v19 = &v9[16 * v18];
      *(v19 + 4) = v20;
      *(v19 + 5) = v16;
    }

    else
    {
    }
  }

  v10 = v4;
  v11 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v11 - 1) & v11;
    v12 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v11 = *(v2 + 8 * v4);
    ++v10;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

id sub_1D335B160()
{
  if (*(v0 + 32) - 4 > 2)
  {
    return 0;
  }

  v1 = *v0;
  v2 = [v1 initiator];

  if (!v2)
  {
LABEL_15:
    v12 = v1;
    v13 = [v12 initiator];

    if (v13)
    {
      v14 = sub_1D336A260();

      v6 = [v14 value];
      v11 = sub_1D33DE7B4();
      goto LABEL_17;
    }

    return 0;
  }

  v3 = sub_1D336A260();

  if ([v3 type] != 2)
  {
    goto LABEL_10;
  }

  result = [v3 value];
  if (!result)
  {
    __break(1u);
    goto LABEL_20;
  }

  v5 = result;
  v6 = PNCopyBestGuessCountryCodeForNumber();

  if (!v6)
  {
LABEL_10:
    v6 = v3;
LABEL_14:

    goto LABEL_15;
  }

  result = [v3 value];
  if (result)
  {
    v7 = result;
    v8 = CFPhoneNumberCreate();

    if (v8)
    {
      String = CFPhoneNumberCreateString();
      if (String)
      {
        v10 = String;
        v11 = sub_1D33DE7B4();

LABEL_17:
        return v11;
      }
    }

    else
    {
      v8 = v3;
    }

    goto LABEL_14;
  }

LABEL_20:
  __break(1u);
  return result;
}

id SpamModelable.formattedInitiatorHandle.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 64);
  v5 = v4();
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = v5;
  if ([v5 type] != 2)
  {
    goto LABEL_9;
  }

  result = [v6 value];
  if (!result)
  {
    __break(1u);
    goto LABEL_20;
  }

  v8 = result;
  v9 = PNCopyBestGuessCountryCodeForNumber();

  if (!v9)
  {
LABEL_9:
    v9 = v6;
LABEL_13:

LABEL_14:
    v15 = (v4)(a1, a2);
    if (!v15)
    {
      return 0;
    }

    v16 = v15;
    v9 = [v15 value];

    v14 = sub_1D33DE7B4();
LABEL_16:

    return v14;
  }

  result = [v6 value];
  if (result)
  {
    v10 = result;
    v11 = CFPhoneNumberCreate();

    if (v11)
    {
      String = CFPhoneNumberCreateString();
      if (String)
      {
        v13 = String;
        v14 = sub_1D33DE7B4();

        goto LABEL_16;
      }
    }

    else
    {
      v11 = v6;
    }

    goto LABEL_13;
  }

LABEL_20:
  __break(1u);
  return result;
}

void sub_1D335B4B8()
{
  if (*(v0 + 32) - 4 <= 2)
  {
    v1 = *v0;
    v2 = [v1 initiator];

    if (v2)
    {
      v3 = sub_1D336A260();

      TUHandle.block()();
    }
  }
}

Swift::Void __swiftcall SpamModelable.blockInitiator()()
{
  v1 = (*(v0 + 64))();
  if (v1)
  {
    v2 = v1;
    TUHandle.block()();
  }
}

void sub_1D335B5C4(char a1)
{
  v2 = RecentsItem.unknownHandles.getter();
  v4 = v2;
  v5 = *(v2 + 16);
  if (!v5)
  {
LABEL_24:

    return;
  }

  v6 = 0;
  v7 = v2 + 32;
  v8 = &off_1E843B000;
  *&v3 = 136315138;
  v30 = v3;
  v32 = a1;
  v31 = v2;
  while (v6 < *(v4 + 16))
  {
    v9 = *(v7 + 8 * v6);
    if (!v9)
    {
      goto LABEL_5;
    }

    v10 = v9;
    v11 = [v10 v8[446]];
    if (v11 == 1)
    {
      goto LABEL_4;
    }

    if (v11 == 2)
    {
      v15 = [v10 value];
      if (!v15)
      {
        sub_1D33DE7B4();
        v15 = sub_1D33DE784();
      }

      v16 = TUHomeCountryCode();
      v17 = [objc_allocWithZone(MEMORY[0x1E69D8C98]) initWithDigits:v15 countryCode:v16];

      if (!v17)
      {
        goto LABEL_4;
      }

      v18 = [objc_opt_self() sharedPrivacyManager];
      if (!v18)
      {
        goto LABEL_27;
      }

      v19 = v18;
      [v18 setBlockIncomingCommunication:a1 & 1 forPhoneNumber:v17];
    }

    else
    {
      if (v11 != 3)
      {
        if (qword_1EC760968 != -1)
        {
          swift_once();
        }

        v20 = sub_1D33DE464();
        __swift_project_value_buffer(v20, qword_1EC761DC8);
        v21 = v10;
        v10 = sub_1D33DE444();
        v22 = sub_1D33DEAD4();

        if (os_log_type_enabled(v10, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v34 = v24;
          *v23 = v30;
          sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
          v33 = v21;
          v25 = sub_1D33DE804();
          v27 = v8;
          v28 = sub_1D3328B48(v25, v26, &v34);
          v4 = v31;

          *(v23 + 4) = v28;
          v8 = v27;
          _os_log_impl(&dword_1D331A000, v10, v22, "Unknown handle type: %s", v23, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v24);
          v29 = v24;
          a1 = v32;
          MEMORY[0x1D38B81C0](v29, -1, -1);
          MEMORY[0x1D38B81C0](v23, -1, -1);
        }

        else
        {
        }

LABEL_4:

        goto LABEL_5;
      }

      v12 = [objc_opt_self() sharedPrivacyManager];
      if (!v12)
      {
        goto LABEL_26;
      }

      v13 = v12;
      v14 = [v10 value];
      if (!v14)
      {
        sub_1D33DE7B4();
        v14 = sub_1D33DE784();
      }

      [v13 setBlockIncomingCommunication:a1 & 1 forEmailAddress:{v14, v30}];
    }

LABEL_5:
    if (v5 == ++v6)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_1D335B960(uint64_t a1, uint64_t a2, char a3)
{
  v4 = (*(a2 + 72))(a1);
  v6 = v4;
  v7 = *(v4 + 16);
  if (!v7)
  {
LABEL_24:

    return;
  }

  v8 = 0;
  v9 = v4 + 32;
  v10 = &off_1E843B000;
  *&v5 = 136315138;
  v32 = v5;
  v34 = a3;
  v33 = v4;
  while (v8 < *(v6 + 16))
  {
    v11 = *(v9 + 8 * v8);
    if (!v11)
    {
      goto LABEL_5;
    }

    v12 = v11;
    v13 = [v12 v10[446]];
    if (v13 == 1)
    {
      goto LABEL_4;
    }

    if (v13 == 2)
    {
      v17 = [v12 value];
      if (!v17)
      {
        sub_1D33DE7B4();
        v17 = sub_1D33DE784();
      }

      v18 = TUHomeCountryCode();
      v19 = [objc_allocWithZone(MEMORY[0x1E69D8C98]) initWithDigits:v17 countryCode:v18];

      if (!v19)
      {
        goto LABEL_4;
      }

      v20 = [objc_opt_self() sharedPrivacyManager];
      if (!v20)
      {
        goto LABEL_27;
      }

      v21 = v20;
      [v20 setBlockIncomingCommunication:a3 & 1 forPhoneNumber:v19];
    }

    else
    {
      if (v13 != 3)
      {
        if (qword_1EC760968 != -1)
        {
          swift_once();
        }

        v22 = sub_1D33DE464();
        __swift_project_value_buffer(v22, qword_1EC761DC8);
        v23 = v12;
        v12 = sub_1D33DE444();
        v24 = sub_1D33DEAD4();

        if (os_log_type_enabled(v12, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v36 = v26;
          *v25 = v32;
          sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
          v35 = v23;
          v27 = sub_1D33DE804();
          v29 = v10;
          v30 = sub_1D3328B48(v27, v28, &v36);
          v6 = v33;

          *(v25 + 4) = v30;
          v10 = v29;
          _os_log_impl(&dword_1D331A000, v12, v24, "Unknown handle type: %s", v25, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v26);
          v31 = v26;
          a3 = v34;
          MEMORY[0x1D38B81C0](v31, -1, -1);
          MEMORY[0x1D38B81C0](v25, -1, -1);
        }

        else
        {
        }

LABEL_4:

        goto LABEL_5;
      }

      v14 = [objc_opt_self() sharedPrivacyManager];
      if (!v14)
      {
        goto LABEL_26;
      }

      v15 = v14;
      v16 = [v12 value];
      if (!v16)
      {
        sub_1D33DE7B4();
        v16 = sub_1D33DE784();
      }

      [v15 setBlockIncomingCommunication:a3 & 1 forEmailAddress:{v16, v32}];
    }

LABEL_5:
    if (v7 == ++v8)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_1D335BD14(char a1)
{
  v3 = [v1 type];
  if (v3 == 1)
  {
    return;
  }

  if (v3 != 2)
  {
    if (v3 != 3)
    {
      if (qword_1EC760968 != -1)
      {
        swift_once();
      }

      v11 = sub_1D33DE464();
      __swift_project_value_buffer(v11, qword_1EC761DC8);
      v12 = v1;
      oslog = sub_1D33DE444();
      v13 = sub_1D33DEAD4();

      if (os_log_type_enabled(oslog, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v22 = v15;
        *v14 = 136315138;
        sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
        v16 = v12;
        v17 = sub_1D33DE804();
        v19 = sub_1D3328B48(v17, v18, &v22);

        *(v14 + 4) = v19;
        _os_log_impl(&dword_1D331A000, oslog, v13, "Unknown handle type: %s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v15);
        MEMORY[0x1D38B81C0](v15, -1, -1);
        MEMORY[0x1D38B81C0](v14, -1, -1);

        return;
      }

      goto LABEL_18;
    }

    v4 = [objc_opt_self() sharedPrivacyManager];
    if (v4)
    {
      v5 = v4;
      v6 = [v1 value];
      if (!v6)
      {
        sub_1D33DE7B4();
        osloga = sub_1D33DE784();

        v6 = osloga;
      }

      oslog = v6;
      [v5 setBlockIncomingCommunication:a1 & 1 forEmailAddress:?];

      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_22;
  }

  v7 = [v1 value];
  if (!v7)
  {
    sub_1D33DE7B4();
    v7 = sub_1D33DE784();
  }

  v8 = TUHomeCountryCode();
  v9 = [objc_allocWithZone(MEMORY[0x1E69D8C98]) initWithDigits:v7 countryCode:v8];

  if (v9)
  {
    v10 = [objc_opt_self() sharedPrivacyManager];
    if (v10)
    {
      oslog = v10;
      [v10 setBlockIncomingCommunication:a1 & 1 forPhoneNumber:v9];

LABEL_18:

      return;
    }

LABEL_22:
    __break(1u);
  }
}

unint64_t static SpamModelable.faceTimeSpamCallType(isFaceTime:isOneToOne:)(char a1, char a2)
{
  v2 = 0x656D697465636166;
  if (a2)
  {
    v2 = 0xD000000000000013;
  }

  if (a1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

id CHRecentCall.initiatorHandle.getter()
{
  v1 = [v0 initiator];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D336A260();

  return v3;
}

uint64_t CHRecentCall.isOneToOneUnknownFaceTimeCall.getter()
{
  v1 = [v0 remoteParticipantHandles];
  if (v1 && ((v2 = v1, sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578), sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578), v3 = sub_1D33DEA54(), v2, (v3 & 0xC000000000000001) == 0) ? (v4 = *(v3 + 16)) : (v4 = sub_1D33DEE14()), , v4 == 1))
  {
    v5 = CHRecentCall.unknownHandles.getter();
    v6 = [v0 initiator];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1D336A260();
    }

    else
    {
      v8 = 0;
    }

    v12 = v8;
    MEMORY[0x1EEE9AC00](v6);
    v11[2] = &v12;
    v9 = sub_1D3358048(sub_1D3367688, v11, v5);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void *CHRecentCall.unknownHandles.getter()
{
  v138 = *MEMORY[0x1E69E9840];
  v111 = sub_1D33DDBC4();
  v1 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v3 = v104 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [v0 remoteParticipantHandles];
  if (!v4)
  {
    if (qword_1EC760968 != -1)
    {
      goto LABEL_103;
    }

    goto LABEL_70;
  }

  v5 = v4;
  v116 = v3;
  v6 = sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
  sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
  v119 = v6;
  v7 = sub_1D33DEA54();

  if ((v7 & 0xC000000000000001) == 0)
  {
    v82 = *(v7 + 32);
    v120 = ((1 << v82) + 63) >> 6;
    if ((v82 & 0x3Fu) > 0xD)
    {

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v103 = swift_slowAlloc();
        v101 = sub_1D3366E84(v103, v120, v7, sub_1D335D930, 0);

        MEMORY[0x1D38B81C0](v103, -1, -1);
        goto LABEL_97;
      }
    }

    v119 = v104;
    MEMORY[0x1EEE9AC00](v8);
    v121 = v104 - ((v83 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v121, v83);
    v122 = 0;
    v84 = 0;
    v85 = 1 << *(v7 + 32);
    v86 = -1;
    if (v85 < 64)
    {
      v86 = ~(-1 << v85);
    }

    v87 = v86 & *(v7 + 56);
    v88 = (v85 + 63) >> 6;
    v89 = &off_1E843B000;
    do
    {
      while (1)
      {
        if (v87)
        {
          v90 = __clz(__rbit64(v87));
          v87 &= v87 - 1;
        }

        else
        {
          v91 = v84;
          do
          {
            v84 = v91 + 1;
            if (__OFADD__(v91, 1))
            {
              goto LABEL_102;
            }

            if (v84 >= v88)
            {
              goto LABEL_94;
            }

            v92 = *(v7 + 56 + 8 * v84);
            ++v91;
          }

          while (!v92);
          v90 = __clz(__rbit64(v92));
          v87 = (v92 - 1) & v92;
        }

        v93 = v90 | (v84 << 6);
        v94 = *(*(v7 + 48) + 8 * v93);
        v95 = [v94 type];
        v123 = v93;
        if (v95 > 3)
        {
          v96 = 2;
        }

        else
        {
          v96 = qword_1D33E2708[v95];
        }

        v97 = [v94 v89[445]];
        if (!v97)
        {
          sub_1D33DE7B4();
          v97 = sub_1D33DE784();
          v89 = &off_1E843B000;
        }

        v98 = [objc_allocWithZone(MEMORY[0x1E69D8C00]) initWithType:v96 value:v97];

        v99 = _s16CallsAppServices17ReportSpamManagerC10getContact9forHandleSaySo9CNContactCGSgSo8TUHandleC_tFZ_0(v98);
        if (!v99)
        {
          break;
        }
      }

      *&v121[(v123 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v123;
    }

    while (!__OFADD__(v122++, 1));
    __break(1u);
LABEL_94:
    v101 = sub_1D3366F50(v121, v120, v122, v7, &qword_1EC7611D0, &qword_1D33E2700);
LABEL_97:
    v81 = sub_1D335A5F8(v101);

    return v81;
  }

  v9 = MEMORY[0x1E69E7CD0];
  v126 = MEMORY[0x1E69E7CD0];
  v118 = sub_1D33DEDC4();
  v10 = sub_1D33DEE54();
  if (!v10)
  {
    v115 = v9;
    v104[0] = 0;
LABEL_96:

    v101 = v115;
    goto LABEL_97;
  }

  v104[0] = 0;
  v115 = MEMORY[0x1E69E7CD0];
  v105 = (v1 + 8);
  v117 = xmmword_1D33E1DE0;
  v11 = MEMORY[0x1E69E7CC0];
LABEL_7:
  v127 = v10;
  swift_dynamicCast();
  v12 = v125[0];
  v13 = [v125[0] type];
  if (v13 > 3)
  {
    v14 = 2;
  }

  else
  {
    v14 = qword_1D33E2708[v13];
  }

  v15 = [v12 value];
  if (!v15)
  {
    sub_1D33DE7B4();
    v15 = sub_1D33DE784();
  }

  v16 = [objc_allocWithZone(MEMORY[0x1E69D8C00]) initWithType:v14 value:v15];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
  inited = swift_initStackObject();
  *(inited + 16) = v117;
  *(inited + 32) = v16;
  v121 = v16;
  v18 = sub_1D336793C(inited, &unk_1EDEC0120, 0x1E69D8C00, &unk_1EDEC0040, sub_1D3363C74);
  swift_setDeallocating();
  swift_arrayDestroy();
  if (qword_1EDEC0138 != -1)
  {
    swift_once();
  }

  v120 = qword_1EDEC0110;
  v123 = v18;
  if ((v18 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D33DEDC4();
    sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
    sub_1D33565AC(&unk_1EDEC0040, &unk_1EDEC0120, 0x1E69D8C00);
    sub_1D33DEA94();
    v18 = v133;
    v19 = v134;
    v20 = v135;
    v21 = v136;
    v22 = v137;
  }

  else
  {
    v23 = -1 << *(v18 + 32);
    v19 = v18 + 56;
    v20 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v22 = v25 & *(v18 + 56);

    v21 = 0;
  }

  v122 = v20;
  v26 = (v20 + 64) >> 6;
  v27 = v11;
  while (v18 < 0)
  {
    v31 = sub_1D33DEE54();
    if (!v31 || (v124 = v31, sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00), swift_dynamicCast(), (v30 = v127) == 0))
    {
LABEL_44:
      sub_1D331FEEC(v18);

      v56 = 0;
      v11 = MEMORY[0x1E69E7CC0];
      v127 = MEMORY[0x1E69E7CC0];
      v57 = *(v27 + 2);
      v58 = MEMORY[0x1E69E7CC0];
LABEL_45:
      v59 = 56 * v56 + 32;
      while (v57 != v56)
      {
        if (v56 >= *(v27 + 2))
        {
          __break(1u);
          goto LABEL_100;
        }

        ++v56;
        v60 = *&v27[v59];
        v59 += 56;
        if (v60)
        {
          v61 = v60;
          MEMORY[0x1D38B6F20]();
          if (*((v127 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v127 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D33DE8D4();
          }

          sub_1D33DE8F4();
          v58 = v127;
          goto LABEL_45;
        }
      }

      if (v58 >> 62)
      {
        v62 = sub_1D33DEE14();
      }

      else
      {
        v62 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v63 = v125[0];
      if (v62)
      {
      }

      else
      {
        v64 = *(v115 + 16);
        if (*(v115 + 24) <= v64)
        {
          sub_1D3364FB8(v64 + 1, &qword_1EC7611D0, &qword_1D33E2700);
        }

        v65 = v126;
        v66 = sub_1D33DEC64();
        v67 = v65 + 56;
        v68 = -1 << *(v65 + 32);
        v69 = v66 & ~v68;
        v70 = v69 >> 6;
        if (((-1 << v69) & ~*(v65 + 56 + 8 * (v69 >> 6))) == 0)
        {
          v72 = 0;
          v73 = (63 - v68) >> 6;
          while (++v70 != v73 || (v72 & 1) == 0)
          {
            v74 = v70 == v73;
            if (v70 == v73)
            {
              v70 = 0;
            }

            v72 |= v74;
            v75 = *(v67 + 8 * v70);
            if (v75 != -1)
            {
              v71 = __clz(__rbit64(~v75)) + (v70 << 6);
              goto LABEL_67;
            }
          }

          goto LABEL_101;
        }

        v71 = __clz(__rbit64((-1 << v69) & ~*(v65 + 56 + 8 * (v69 >> 6)))) | v69 & 0x7FFFFFFFFFFFFFC0;
LABEL_67:
        *(v67 + ((v71 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v71;
        *(*(v65 + 48) + 8 * v71) = v63;
        v76 = *(v65 + 16) + 1;
        v115 = v65;
        *(v65 + 16) = v76;
      }

      v10 = sub_1D33DEE54();
      if (!v10)
      {
        goto LABEL_96;
      }

      goto LABEL_7;
    }

LABEL_30:
    v32 = [v30 value];
    if (!v32)
    {
      sub_1D33DE7B4();
      v32 = sub_1D33DE784();
    }

    v33 = [v32 destinationIdIsTemporary];

    if (v33)
    {
    }

    else
    {
      sub_1D332786C(v30, 0, 0, &v127);
      v34 = v127;
      v109 = v128;
      v35 = v129;
      v108 = v130;
      v36 = v131;
      v107 = v132;
      v112 = v127;
      v114 = v35;

      v113 = v36;

      v106 = MEMORY[0x1D38B7A70](v37);
      sub_1D33DDBB4();
      v110 = v34;
      if (v34)
      {
        v38 = v112;
        v39 = [v112 givenName];
        v104[1] = sub_1D33DE7B4();

        sub_1D33DDB84();
        v40 = [v38 familyName];
        sub_1D33DE7B4();
      }

      else
      {
        sub_1D33DDB84();
      }

      sub_1D33DDB94();
      if (qword_1EDEC0130 != -1)
      {
        swift_once();
      }

      v41 = qword_1EDEC1498;
      v42 = sub_1D33DDBA4();
      v43 = v41;
      v44 = [v41 stringFromPersonNameComponents_];

      v45 = sub_1D33DE7B4();
      v47 = v46;

      (*v105)(v116, v111);
      objc_autoreleasePoolPop(v106);
      v127 = v45;
      v128 = v47;
      sub_1D3328AF4();
      v48 = sub_1D33DED14();
      v50 = v49;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1D3359C88(0, *(v27 + 2) + 1, 1, v27);
      }

      v52 = *(v27 + 2);
      v51 = *(v27 + 3);
      if (v52 >= v51 >> 1)
      {
        v27 = sub_1D3359C88((v51 > 1), v52 + 1, 1, v27);
      }

      *(v27 + 2) = v52 + 1;
      v53 = &v27[56 * v52];
      v54 = v109;
      *(v53 + 4) = v110;
      *(v53 + 5) = v54;
      v55 = v108;
      *(v53 + 6) = v114;
      *(v53 + 7) = v55;
      *(v53 + 8) = v113;
      *(v53 + 9) = v48;
      *(v53 + 10) = v50;
    }
  }

  v28 = v21;
  v29 = v22;
  if (v22)
  {
LABEL_26:
    v22 = (v29 - 1) & v29;
    v30 = *(*(v18 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v29)))));
    if (!v30)
    {
      goto LABEL_44;
    }

    goto LABEL_30;
  }

  while (1)
  {
    v21 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v21 >= v26)
    {
      goto LABEL_44;
    }

    v29 = *(v19 + 8 * v21);
    ++v28;
    if (v29)
    {
      goto LABEL_26;
    }
  }

LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  swift_once();
LABEL_70:
  v77 = sub_1D33DE464();
  __swift_project_value_buffer(v77, qword_1EC761DC8);
  v78 = sub_1D33DE444();
  v79 = sub_1D33DEAF4();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    *v80 = 0;
    _os_log_impl(&dword_1D331A000, v78, v79, "remoteParticipantHandles = nil", v80, 2u);
    MEMORY[0x1D38B81C0](v80, -1, -1);
  }

  return MEMORY[0x1E69E7CC0];
}

id CHRecentCall.isGroupFaceTime.getter()
{
  result = [v0 remoteParticipantHandles];
  if (result)
  {
    v2 = result;
    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
    v3 = sub_1D33DEA54();

    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = sub_1D33DEE14();
    }

    else
    {
      v4 = *(v3 + 16);
    }

    return (v4 > 1);
  }

  return result;
}

uint64_t CHRecentCall.isGroupFaceTimeWithUnknownInitiator.getter()
{
  v1 = [v0 remoteParticipantHandles];
  if (v1 && ((v2 = v1, sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578), sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578), v3 = sub_1D33DEA54(), v2, (v3 & 0xC000000000000001) == 0) ? (v4 = *(v3 + 16)) : (v4 = sub_1D33DEE14()), , v4 >= 2))
  {
    v5 = CHRecentCall.unknownHandles.getter();
    v6 = [v0 initiator];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1D336A260();
    }

    else
    {
      v8 = 0;
    }

    v12 = v8;
    MEMORY[0x1EEE9AC00](v6);
    v11[2] = &v12;
    v9 = sub_1D3358048(sub_1D3367DAC, v11, v5);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

id CHRecentCall.isGroupFaceTimeWithSomeUnknownContacts.getter()
{
  if (qword_1EC760968 != -1)
  {
    swift_once();
  }

  v1 = sub_1D33DE464();
  __swift_project_value_buffer(v1, qword_1EC761DC8);
  v2 = v0;
  v3 = sub_1D33DE444();
  v4 = sub_1D33DEAF4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    v7 = [v2 remoteParticipantHandles];
    if (v7)
    {
      v8 = v7;
      sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
      sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
      sub_1D33DEA54();

      v9 = sub_1D33DEA64();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0xE000000000000000;
    }

    v12 = sub_1D3328B48(v9, v11, &v19);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_1D331A000, v3, v4, "isGroupFaceTimeWithSomeUnknownContacts :%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1D38B81C0](v6, -1, -1);
    MEMORY[0x1D38B81C0](v5, -1, -1);
  }

  result = [v2 remoteParticipantHandles];
  if (result)
  {
    v14 = result;
    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
    v15 = sub_1D33DEA54();

    if ((v15 & 0xC000000000000001) != 0)
    {
      if (sub_1D33DEE14() >= 2)
      {
LABEL_11:
        sub_1D3339334(v15);
        v17 = *(v16 + 16);

        if ((v15 & 0xC000000000000001) != 0)
        {
          v18 = sub_1D33DEE14();
        }

        else
        {
          v18 = *(v15 + 16);
        }

        return (v17 < v18);
      }
    }

    else if (*(v15 + 16) >= 2)
    {
      goto LABEL_11;
    }

    return 0;
  }

  return result;
}

id CHRecentCall.isGroupFaceTimeWithAllUnknownContacts.getter()
{
  if (qword_1EC760968 != -1)
  {
    swift_once();
  }

  v1 = sub_1D33DE464();
  __swift_project_value_buffer(v1, qword_1EC761DC8);
  v2 = v0;
  v3 = sub_1D33DE444();
  v4 = sub_1D33DEAF4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136315138;
    v7 = [v2 remoteParticipantHandles];
    if (v7)
    {
      v8 = v7;
      sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
      sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
      sub_1D33DEA54();

      v9 = sub_1D33DEA64();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0xE000000000000000;
    }

    v12 = sub_1D3328B48(v9, v11, &v20);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_1D331A000, v3, v4, "isGroupFaceTimeWithAllUnknownContacts: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1D38B81C0](v6, -1, -1);
    MEMORY[0x1D38B81C0](v5, -1, -1);
  }

  result = [v2 remoteParticipantHandles];
  if (result)
  {
    v14 = result;
    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
    v15 = sub_1D33DEA54();

    sub_1D3339334(v15);
    v17 = *(v16 + 16);

    if ((v15 & 0xC000000000000001) != 0)
    {
      v18 = sub_1D33DEE14();
    }

    else
    {
      v18 = *(v15 + 16);
    }

    return (v18 > 1 && v17 == 0);
  }

  return result;
}

BOOL sub_1D335D930()
{
  v0 = sub_1D336A260();
  v1 = _s16CallsAppServices17ReportSpamManagerC10getContact9forHandleSaySo9CNContactCGSgSo8TUHandleC_tFZ_0(v0);

  if (v1)
  {
  }

  return v1 == 0;
}

uint64_t sub_1D335D988()
{
  v1 = [v0 remoteParticipantHandles];
  if (v1)
  {
    v2 = v1;
    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
    v3 = sub_1D33DEA54();

    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = sub_1D33DEE14();
    }

    else
    {
      v4 = *(v3 + 16);
    }

    v5 = v4 == 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v0 serviceProvider];
  if (!v6)
  {
    sub_1D33DE7B4();
    goto LABEL_17;
  }

  v7 = v6;
  v8 = sub_1D33DE7B4();
  v10 = v9;

  v11 = sub_1D33DE7B4();
  if (!v10)
  {
LABEL_17:

    return 0;
  }

  if (v8 == v11 && v10 == v12)
  {

    if (v5)
    {
      return 0xD000000000000013;
    }
  }

  else
  {
    v14 = sub_1D33DF1B4();

    if (v5)
    {
      if (v14)
      {
        return 0xD000000000000013;
      }

      return 0;
    }

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  return 0x656D697465636166;
}

id sub_1D335DB68()
{
  v1 = v0;
  v2 = [v0 initiator];
  if (!v2)
  {
    v3 = [v1 remoteParticipantHandles];
    if (!v3)
    {
      return v3;
    }

    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
    v5 = sub_1D33DEA54();

    v2 = sub_1D335DC94(v5, sub_1D33D3558);

    if (!v2)
    {
      return 0;
    }
  }

  v3 = sub_1D336A260();

  return v3;
}

uint64_t sub_1D335DC94(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, BOOL, uint64_t))
{
  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_1D33DEDB4();
    v7 = v6;
    v8 = sub_1D33DEE74();
    v10 = v9;
    v11 = MEMORY[0x1D38B7470](v5, v7, v8, v9);
    sub_1D335665C(v8, v10, 1);
    if (v11)
    {
LABEL_3:
      sub_1D335665C(v5, v7, v4 != 0);
      return 0;
    }
  }

  else
  {
    v5 = sub_1D33DED74();
    v7 = *(a1 + 36);
    if (v5 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  v13 = a2(v5, v7, v4 != 0, a1);
  sub_1D335665C(v5, v7, v4 != 0);
  return v13;
}

uint64_t sub_1D335DDB8(uint64_t a1)
{
  v2 = sub_1D33DED74();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_1D33D559C(v2, *(a1 + 36), 0, a1);

  return v4;
}

uint64_t sub_1D335DE34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D33DED74();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_1D33D37C0(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = type metadata accessor for Participant(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t CHRecentCall.spamModel(with:spamContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v41 = sub_1D33DDD34();
  v11 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  (*(a4 + 8))(v48, a1, a2, ObjectType, a4);
  v44 = v48[1];
  v45 = v48[0];
  v42 = v50;
  v43 = v49;
  v15 = *(a4 + 16);
  v46 = a1;
  v47 = a2;
  v40 = v15(a1, a2, ObjectType, a4);
  v16 = [v5 remoteParticipantHandles];
  if (v16)
  {
    v17 = v16;
    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
    v18 = sub_1D33DEA54();

    sub_1D335A8E0(v18);
    v39 = v19;
  }

  else
  {
    v39 = MEMORY[0x1E69E7CC0];
  }

  v20 = sub_1D335D988();
  v38 = v21;
  [v6 duration];
  v23 = v22;
  v24 = sub_1D335DB68();
  v25 = [v6 uniqueId];
  v26 = sub_1D33DE7B4();
  v28 = v27;

  [v6 duration];
  sub_1D33DDCC4();
  sub_1D33DDCD4();
  v30 = v29;
  (*(v11 + 8))(v13, v41);
  v31 = sub_1D33C8614([v6 callStatus]);
  v32 = v38;
  *a5 = v39;
  *(a5 + 8) = v20;
  *(a5 + 16) = v32;
  *(a5 + 24) = v23;
  *(a5 + 32) = 0;
  v33 = v47;
  *(a5 + 40) = v46;
  *(a5 + 48) = v33;
  *(a5 + 56) = v24;
  *(a5 + 64) = v26;
  *(a5 + 72) = v28;
  *(a5 + 80) = v30;
  *(a5 + 88) = 0;
  *(a5 + 96) = 0xD000000000000010;
  *(a5 + 104) = 0x80000001D33E6240;
  *(a5 + 112) = v31;
  *(a5 + 120) = v34;
  *(a5 + 128) = 0;
  *(a5 + 136) = 0;
  v35 = v44;
  *(a5 + 144) = v45;
  *(a5 + 160) = v35;
  v36 = v42;
  *(a5 + 176) = v43;
  *(a5 + 184) = v36;
  *(a5 + 192) = v40;
}

Swift::Bool __swiftcall TUHandle.isBlocked()()
{
  v1 = [v0 type];
  if (v1 != 1)
  {
    if (v1 == 2)
    {
      v6 = [v0 value];
      if (!v6)
      {
        sub_1D33DE7B4();
        v6 = sub_1D33DE784();
      }

      v7 = TUHomeCountryCode();
      v8 = [objc_allocWithZone(MEMORY[0x1E69D8C98]) initWithDigits:v6 countryCode:v7];

      if (!v8)
      {
        if (qword_1EC760968 != -1)
        {
          swift_once();
        }

        v23 = sub_1D33DE464();
        __swift_project_value_buffer(v23, qword_1EC761DC8);
        v24 = v0;
        v5 = sub_1D33DE444();
        v25 = sub_1D33DEAD4();

        if (os_log_type_enabled(v5, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v34 = v27;
          *v26 = 136315138;
          v28 = [v24 value];
          v29 = sub_1D33DE7B4();
          v31 = v30;

          v32 = sub_1D3328B48(v29, v31, &v34);

          *(v26 + 4) = v32;
          _os_log_impl(&dword_1D331A000, v5, v25, "invalid formattedPhoneNumber, value: %s", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v27);
          MEMORY[0x1D38B81C0](v27, -1, -1);
          MEMORY[0x1D38B81C0](v26, -1, -1);
        }

        LOBYTE(v5) = 0;
        goto LABEL_24;
      }

      v2 = [objc_opt_self() sharedPrivacyManager];
      if (v2)
      {
        v9 = v2;
        LODWORD(v5) = [v2 isIncomingCommunicationBlockedForPhoneNumber_];

LABEL_19:
        if (qword_1EC760968 != -1)
        {
          swift_once();
        }

        v19 = sub_1D33DE464();
        __swift_project_value_buffer(v19, qword_1EC761DC8);
        v20 = sub_1D33DE444();
        v21 = sub_1D33DEAD4();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 67109120;
          *(v22 + 4) = v5;
          _os_log_impl(&dword_1D331A000, v20, v21, "handle isBlocked: %{BOOL}d", v22, 8u);
          MEMORY[0x1D38B81C0](v22, -1, -1);
        }

        goto LABEL_24;
      }
    }

    else
    {
      if (v1 != 3)
      {
        if (qword_1EC760968 != -1)
        {
          swift_once();
        }

        v10 = sub_1D33DE464();
        __swift_project_value_buffer(v10, qword_1EC761DC8);
        v11 = v0;
        v5 = sub_1D33DE444();
        v12 = sub_1D33DEAD4();

        if (os_log_type_enabled(v5, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v34 = v14;
          *v13 = 136315138;
          sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
          v15 = v11;
          v16 = sub_1D33DE804();
          v18 = sub_1D3328B48(v16, v17, &v34);

          *(v13 + 4) = v18;
          _os_log_impl(&dword_1D331A000, v5, v12, "Unknown handle type: %s", v13, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v14);
          MEMORY[0x1D38B81C0](v14, -1, -1);
          MEMORY[0x1D38B81C0](v13, -1, -1);
        }

        LODWORD(v5) = 0;
        goto LABEL_19;
      }

      v2 = [objc_opt_self() sharedPrivacyManager];
      if (v2)
      {
        v3 = v2;
        v4 = [v0 value];
        if (!v4)
        {
          sub_1D33DE7B4();
          v4 = sub_1D33DE784();
        }

        LODWORD(v5) = [v3 isIncomingCommunicationBlockedForEmailAddress_];

        goto LABEL_19;
      }

      __break(1u);
    }

    __break(1u);
    return v2;
  }

  LOBYTE(v5) = 0;
LABEL_24:
  LOBYTE(v2) = v5;
  return v2;
}

id sub_1D335E840()
{
  v1 = [*v0 initiator];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D336A260();

  return v3;
}

void TUCall.unknownHandles.getter()
{
  v1 = v0;
  v78 = sub_1D33DDBC4();
  v2 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v83 = v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [v1 remoteParticipantHandles];
  v5 = sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
  v6 = sub_1D33565AC(&unk_1EDEC0040, &unk_1EDEC0120, 0x1E69D8C00);
  v7 = sub_1D33DEA54();

  v8 = MEMORY[0x1E69E7CC0];
  v103 = MEMORY[0x1E69E7CC0];
  if ((v7 & 0xC000000000000001) != 0)
  {
    sub_1D33DEDC4();
    sub_1D33DEA94();
    v7 = v104;
    v9 = v105;
    v10 = v106;
    v11 = v107;
    v12 = v108;
  }

  else
  {
    v11 = 0;
    v13 = -1 << *(v7 + 32);
    v9 = v7 + 56;
    v10 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = v15 & *(v7 + 56);
  }

  v79 = v10;
  v16 = (v10 + 64) >> 6;
  v77 = (v2 + 8);
  v89 = xmmword_1D33E1DE0;
  v94 = v5;
  v88 = v6;
  v87 = v7;
  v86 = v9;
  v85 = v16;
  while (2)
  {
    if (v7 < 0)
    {
      v21 = sub_1D33DEE54();
      if (!v21)
      {
        goto LABEL_65;
      }

      v96 = v21;
      swift_dynamicCast();
      v20 = v97;
      i = v11;
      v93 = v12;
      if (!v97)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v17 = v11;
      v18 = v12;
      for (i = v11; !v18; ++v17)
      {
        i = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_68;
        }

        if (i >= v16)
        {
LABEL_65:
          sub_1D331FEEC(v7);
          sub_1D335F428(v103, &unk_1EDEC0120, 0x1E69D8C00, &qword_1EC7611C8, &qword_1D33E26F8);

          return;
        }

        v18 = *(v9 + 8 * i);
      }

      v93 = (v18 - 1) & v18;
      v20 = *(*(v7 + 48) + ((i << 9) | (8 * __clz(__rbit64(v18)))));
      if (!v20)
      {
        goto LABEL_65;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
    inited = swift_initStackObject();
    *(inited + 16) = v89;
    *(inited + 32) = v20;
    v90 = v20;
    v23 = sub_1D336793C(inited, &unk_1EDEC0120, 0x1E69D8C00, &unk_1EDEC0040, sub_1D3363C74);
    swift_setDeallocating();
    swift_arrayDestroy();
    if (qword_1EDEC0138 != -1)
    {
      swift_once();
    }

    v84 = qword_1EDEC0110;
    v92 = v23;
    if ((v23 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_1D33DEDC4();
      sub_1D33DEA94();
      v25 = v109;
      v24 = v110;
      v26 = v111;
      v27 = v112;
      v28 = v113;
    }

    else
    {
      v29 = -1 << *(v23 + 32);
      v24 = (v23 + 56);
      v26 = ~v29;
      v30 = -v29;
      if (v30 < 64)
      {
        v31 = ~(-1 << v30);
      }

      else
      {
        v31 = -1;
      }

      v28 = v31 & *(v23 + 56);

      v27 = 0;
      v25 = v23;
    }

    v91 = v26;
    v32 = (v26 + 64) >> 6;
    v33 = v8;
    v95 = v25;
    while (1)
    {
      v34 = v27;
      v35 = v28;
      if ((v25 & 0x8000000000000000) == 0)
      {
        break;
      }

      while (1)
      {
        v39 = sub_1D33DEE54();
        if (!v39)
        {
          goto LABEL_52;
        }

        v96 = v39;
        swift_dynamicCast();
        v38 = v97;
        v27 = v34;
        v28 = v35;
        if (!v97)
        {
          goto LABEL_52;
        }

LABEL_37:
        v40 = [v38 value];
        if (!v40)
        {
          sub_1D33DE7B4();
          v40 = sub_1D33DE784();
        }

        v41 = [v40 destinationIdIsTemporary];

        if (!v41)
        {
          break;
        }

        v34 = v27;
        v35 = v28;
        v25 = v95;
        if ((v95 & 0x8000000000000000) == 0)
        {
          goto LABEL_29;
        }
      }

      sub_1D332786C(v38, 0, 0, &v97);
      v42 = v97;
      v75 = v98;
      v43 = v99;
      v74 = v100;
      v44 = v101;
      v73 = v102;
      v80 = v97;
      v82 = v43;

      v81 = v44;

      v72 = MEMORY[0x1D38B7A70](v45);
      sub_1D33DDBB4();
      v76 = v42;
      if (v42)
      {
        v46 = v80;
        v47 = [v80 givenName];
        v71[2] = sub_1D33DE7B4();
        v71[1] = v48;

        sub_1D33DDB84();
        v49 = [v46 familyName];
        sub_1D33DE7B4();
      }

      else
      {
        sub_1D33DDB84();
      }

      sub_1D33DDB94();
      if (qword_1EDEC0130 != -1)
      {
        swift_once();
      }

      v50 = qword_1EDEC1498;
      v51 = sub_1D33DDBA4();
      v52 = v50;
      v53 = [v50 stringFromPersonNameComponents_];

      v54 = sub_1D33DE7B4();
      v56 = v55;

      (*v77)(v83, v78);
      objc_autoreleasePoolPop(v72);
      v97 = v54;
      v98 = v56;
      sub_1D3328AF4();
      v57 = sub_1D33DED14();
      v72 = v58;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1D3359C88(0, *(v33 + 2) + 1, 1, v33);
      }

      v25 = v95;
      v60 = *(v33 + 2);
      v59 = *(v33 + 3);
      if (v60 >= v59 >> 1)
      {
        v33 = sub_1D3359C88((v59 > 1), v60 + 1, 1, v33);
      }

      *(v33 + 2) = v60 + 1;
      v61 = &v33[56 * v60];
      v62 = v75;
      *(v61 + 4) = v76;
      *(v61 + 5) = v62;
      v63 = v74;
      *(v61 + 6) = v82;
      *(v61 + 7) = v63;
      *(v61 + 8) = v81;
      *(v61 + 9) = v57;
      *(v61 + 10) = v72;
    }

LABEL_29:
    v36 = v34;
    v37 = v35;
    v27 = v34;
    if (v35)
    {
LABEL_33:
      v28 = (v37 - 1) & v37;
      v38 = *(*(v25 + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v37)))));
      if (v38)
      {
        goto LABEL_37;
      }

LABEL_52:
      sub_1D331FEEC(v95);

      v64 = 0;
      v8 = MEMORY[0x1E69E7CC0];
      v97 = MEMORY[0x1E69E7CC0];
      v65 = *(v33 + 2);
      v66 = MEMORY[0x1E69E7CC0];
LABEL_53:
      v67 = 56 * v64 + 32;
      while (v65 != v64)
      {
        if (v64 >= *(v33 + 2))
        {
          __break(1u);
          goto LABEL_67;
        }

        ++v64;
        v68 = *&v33[v67];
        v67 += 56;
        if (v68)
        {
          v69 = v68;
          MEMORY[0x1D38B6F20]();
          if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D33DE8D4();
          }

          sub_1D33DE8F4();
          v66 = v97;
          goto LABEL_53;
        }
      }

      if (v66 >> 62)
      {
        v70 = sub_1D33DEE14();
      }

      else
      {
        v70 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v7 = v87;
      v9 = v86;

      if (v70)
      {
      }

      else
      {
        sub_1D33DEF84();
        sub_1D33DEFB4();
        sub_1D33DEFC4();
        sub_1D33DEF94();
      }

      v11 = i;
      v12 = v93;
      v16 = v85;
      continue;
    }

    break;
  }

  while (1)
  {
    v27 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v27 >= v32)
    {
      goto LABEL_52;
    }

    v37 = v24[v27];
    ++v36;
    if (v37)
    {
      goto LABEL_33;
    }
  }

LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
}

uint64_t sub_1D335F428(unint64_t a1, unint64_t *a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  if (a1 >> 62)
  {
    v10 = sub_1D33DEE14();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v17 = MEMORY[0x1E69E7CC0];
    result = sub_1D33DEFA4();
    if (v10 < 0)
    {
      __break(1u);
    }

    else
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = 0;
        do
        {
          v13 = v12 + 1;
          MEMORY[0x1D38B75D0]();
          sub_1D331DA18(0, a2, a3);
          __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
          swift_dynamicCast();
          sub_1D33DEF84();
          sub_1D33DEFB4();
          sub_1D33DEFC4();
          sub_1D33DEF94();
          v12 = v13;
        }

        while (v10 != v13);
      }

      else
      {
        v14 = (a1 + 32);
        sub_1D331DA18(0, a2, a3);
        do
        {
          v15 = *v14++;
          v16 = v15;
          __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
          swift_dynamicCast();
          sub_1D33DEF84();
          sub_1D33DEFB4();
          sub_1D33DEFC4();
          sub_1D33DEF94();
          --v10;
        }

        while (v10);
      }

      return v17;
    }
  }

  return result;
}

uint64_t TUCall.isOneToOneUnknownFaceTimeCall.getter()
{
  v1 = [v0 remoteParticipantHandles];
  sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
  sub_1D33565AC(&unk_1EDEC0040, &unk_1EDEC0120, 0x1E69D8C00);
  v2 = sub_1D33DEA54();

  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = sub_1D33DEE14();
  }

  else
  {
    v3 = *(v2 + 16);
  }

  if (v3 == 1)
  {
    TUCall.unknownHandles.getter();
    v5 = v4;
    v6 = [v0 initiator];
    v10 = v6;
    MEMORY[0x1EEE9AC00](v6);
    v9[2] = &v10;
    v7 = sub_1D3358048(sub_1D3367DAC, v9, v5);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t TUCall.isGroupFaceTimeWithUnknownInitiator.getter()
{
  v1 = [v0 remoteParticipantHandles];
  sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
  sub_1D33565AC(&unk_1EDEC0040, &unk_1EDEC0120, 0x1E69D8C00);
  v2 = sub_1D33DEA54();

  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = sub_1D33DEE14();
  }

  else
  {
    v3 = *(v2 + 16);
  }

  if (v3 < 2)
  {
    v7 = 0;
  }

  else
  {
    TUCall.unknownHandles.getter();
    v5 = v4;
    v6 = [v0 initiator];
    v10 = v6;
    MEMORY[0x1EEE9AC00](v6);
    v9[2] = &v10;
    v7 = sub_1D3358048(sub_1D3367DAC, v9, v5);
  }

  return v7 & 1;
}

BOOL TUCall.isGroupFaceTimeWithSomeUnknownContacts.getter()
{
  v1 = [v0 remoteParticipantHandles];
  sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
  sub_1D33565AC(&unk_1EDEC0040, &unk_1EDEC0120, 0x1E69D8C00);
  v2 = sub_1D33DEA54();

  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = sub_1D33DEE14();
  }

  else
  {
    v3 = *(v2 + 16);
  }

  if (v3 < 2)
  {
    return 0;
  }

  v4 = [v0 remoteParticipantHandles];
  v5 = sub_1D33DEA54();

  sub_1D335AC18(v5);
  v7 = v6;

  v8 = *(v7 + 16);

  if (!v8)
  {
    return 0;
  }

  v9 = [v0 remoteParticipantHandles];
  v10 = sub_1D33DEA54();

  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = sub_1D33DEE14();
  }

  else
  {
    v11 = *(v10 + 16);
  }

  return v8 < v11;
}

BOOL TUCall.isGroupFaceTimeWithAllUnknownContacts.getter()
{
  v1 = [v0 remoteParticipantHandles];
  sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
  sub_1D33565AC(&unk_1EDEC0040, &unk_1EDEC0120, 0x1E69D8C00);
  v2 = sub_1D33DEA54();

  sub_1D335AC18(v2);
  v4 = v3;

  v5 = *(v4 + 16);

  v6 = [v0 remoteParticipantHandles];
  v7 = sub_1D33DEA54();

  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = sub_1D33DEE14();
  }

  else
  {
    v8 = *(v7 + 16);
  }

  return v8 > 1 && v5 == 0;
}