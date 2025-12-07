uint64_t sub_261A7F368(uint64_t result)
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

  result = sub_261A6639C(result, v11, 1, v3);
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

  memcpy((v3 + 4 * v7 + 32), (v6 + 32), 4 * v2);

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

char *sub_261A7F454(char *result)
{
  v2 = *(result + 2);
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

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_261A66820(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[8 * v7 + 32], v6 + 32, 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_261A7F540(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_261A660EC(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB088, &unk_261A87D30);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_261A7F648(char *result)
{
  v2 = *(result + 2);
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

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_261A67388(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_261A7F740(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_261A67244(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB0B8, &unk_261A8C900);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_261A7F848(void *result)
{
  v3 = result[2];
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_261A66A68(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = v9 - v11;
  result = sub_261A7BC64(&v42, &v4[16 * v11 + 32], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v15 = result;
  if (result)
  {
    v16 = *(v4 + 2);
    v17 = __OFADD__(v16, result);
    v18 = result + v16;
    if (v17)
    {
      __break(1u);
LABEL_19:
      v21 = (v14 + 64) >> 6;
      if (v21 <= v2 + 1)
      {
        v22 = v2 + 1;
      }

      else
      {
        v22 = (v14 + 64) >> 6;
      }

      v23 = v22 - 1;
      do
      {
        v24 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v24 >= v21)
        {
          v45 = v23;
          v46 = 0;
          goto LABEL_13;
        }

        v25 = *(v13 + 8 * v24);
        ++v2;
      }

      while (!v25);
      v39 = v14;
      v19 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v2 = v24;
      goto LABEL_27;
    }

    *(v4 + 2) = v18;
  }

  result = v42;
  if (v15 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v12 = *(v4 + 2);
  v13 = v43;
  v14 = v44;
  v2 = v45;
  v41 = v43;
  if (!v46)
  {
    goto LABEL_19;
  }

  v19 = (v46 - 1) & v46;
  v20 = __clz(__rbit64(v46)) | (v45 << 6);
  v39 = v44;
  v21 = (v44 + 64) >> 6;
LABEL_27:
  v40 = result;
  v26 = (result[6] + 16 * v20);
  v28 = *v26;
  v27 = v26[1];

  v29 = v41;
LABEL_29:
  while (1)
  {
    v30 = *(v4 + 3);
    v31 = v30 >> 1;
    if ((v30 >> 1) < v12 + 1)
    {
      break;
    }

    if (v12 < v31)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v12;
  }

  v37 = sub_261A66A68((v30 > 1), v12 + 1, 1, v4);
  v29 = v41;
  v4 = v37;
  v31 = *(v37 + 3) >> 1;
  if (v12 >= v31)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v32 = &v4[16 * v12 + 32];
    *v32 = v28;
    *(v32 + 1) = v27;
    ++v12;
    if (!v19)
    {
      break;
    }

    result = v40;
LABEL_38:
    v35 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v36 = (result[6] + ((v2 << 10) | (16 * v35)));
    v28 = *v36;
    v27 = v36[1];

    v29 = v41;
    if (v12 == v31)
    {
      v12 = v31;
      *(v4 + 2) = v31;
      goto LABEL_29;
    }
  }

  v33 = v2;
  result = v40;
  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v34 >= v21)
    {
      break;
    }

    v19 = *(v29 + 8 * v34);
    ++v33;
    if (v19)
    {
      v2 = v34;
      goto LABEL_38;
    }
  }

  if (v21 <= v2 + 1)
  {
    v38 = v2 + 1;
  }

  else
  {
    v38 = v21;
  }

  v44 = v39;
  v45 = v38 - 1;
  v46 = 0;
  *(v4 + 2) = v12;
LABEL_13:
  result = sub_261A70290(result);
  *v1 = v4;
  return result;
}

uint64_t sub_261A7FB04(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
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

  v3 = sub_261A676B8(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_261A85394();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_261A7FC30(char *result)
{
  v2 = *(result + 2);
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

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_261A67890(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_261A7FD2C(uint64_t a1)
{
  sub_261A85554();
}

unint64_t sub_261A7FDFC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_261A82228(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_261A7FE2C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7235949;
  v5 = 0xE400000000000000;
  v6 = 1818846563;
  v7 = 0x646E756F72;
  if (v2 != 4)
  {
    v7 = 0x636E757274;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = 0xE500000000000000;
  }

  v8 = 0xE300000000000000;
  v9 = 7889261;
  if (v2 != 1)
  {
    v9 = 0x726F6F6C66;
    v8 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_261A7FEE4(uint64_t *a1, uint64_t a2, int64_t a3, unint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 <= 1u)
  {
    if (!a6)
    {
      v10 = *a1;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
LABEL_4:
        v12 = *(v10 + 16);
        v13 = *(v10 + 24);
        v14 = v12 + 1;
        if (v12 >= v13 >> 1)
        {
          v35 = v10;
          v36 = *(v10 + 16);
          result = sub_261A66820((v13 > 1), v12 + 1, 1, v35);
          v12 = v36;
          v10 = result;
        }

        *(v10 + 16) = v14;
        *(v10 + 8 * v12 + 32) = a3;
        goto LABEL_73;
      }

LABEL_79:
      result = sub_261A66820(0, *(v10 + 16) + 1, 1, v10);
      v10 = result;
      goto LABEL_4;
    }

    sub_261A7739C();
    swift_allocError();
    *v17 = a3;
    *(v17 + 8) = a4;
    *(v17 + 16) = 0;

    return swift_willThrow();
  }

  if (a6 == 2)
  {
    v10 = *(a2 + 16);
    if (v10 <= a5)
    {
      sub_261A7739C();
      swift_allocError();
      *v25 = v10;
      *(v25 + 8) = a5;
      *(v25 + 16) = 1;
      return swift_willThrow();
    }

    if ((a5 & 0x8000000000000000) == 0)
    {
      v6 = *(a2 + 8 * a5 + 32);
      v10 = *a1;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
LABEL_11:
        v16 = *(v10 + 16);
        v15 = *(v10 + 24);
        if (v16 >= v15 >> 1)
        {
          result = sub_261A66820((v15 > 1), v16 + 1, 1, v10);
          v10 = result;
        }

        *(v10 + 16) = v16 + 1;
        *(v10 + 8 * v16 + 32) = v6;
        goto LABEL_73;
      }

LABEL_84:
      result = sub_261A66820(0, *(v10 + 16) + 1, 1, v10);
      v10 = result;
      goto LABEL_11;
    }

LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v10 = *a1;
  if (*(*a1 + 16))
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v18 = *(v10 + 16);
      if (v18)
      {
        goto LABEL_18;
      }

LABEL_82:
      __break(1u);
      goto LABEL_83;
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_261A67BA8(v10);
  v10 = result;
  v18 = *(result + 16);
  if (!v18)
  {
    goto LABEL_82;
  }

LABEL_18:
  v19 = v18 - 1;
  v20 = v10 + 32;
  v21 = *(v10 + 32 + 8 * v19);
  *(v10 + 16) = v19;
  *a1 = v10;
  if (a3 <= 5u)
  {
    if (a3 > 2u)
    {
      if (a3 != 3)
      {
        if (a3 != 4)
        {
          if (a4 == 1)
          {
            a4 = *(v10 + 16);
            v32 = *(v10 + 24);
            a3 = a4 + 1;
            if (a4 >= v32 >> 1)
            {
              v41 = v21;
              result = sub_261A66820((v32 > 1), a4 + 1, 1, v10);
              v21 = v41;
              v10 = result;
            }

            v21 = trunc(v21);
            goto LABEL_72;
          }

          goto LABEL_93;
        }

        if (a4 == 1)
        {
          a4 = *(v10 + 16);
          v27 = *(v10 + 24);
          a3 = a4 + 1;
          if (a4 >= v27 >> 1)
          {
            v39 = v21;
            result = sub_261A66820((v27 > 1), a4 + 1, 1, v10);
            v21 = v39;
            v10 = result;
          }

          v21 = round(v21);
          goto LABEL_72;
        }

        goto LABEL_90;
      }

      if (a4 == 1)
      {
        a4 = *(v10 + 16);
        v20 = *(v10 + 24);
        a3 = a4 + 1;
        if (a4 < v20 >> 1)
        {
LABEL_56:
          v21 = ceil(v21);
LABEL_72:
          *(v10 + 16) = a3;
          *(v10 + 8 * a4 + 32) = v21;
          goto LABEL_73;
        }

LABEL_95:
        v38 = v21;
        result = sub_261A66820((v20 > 1), a3, 1, v10);
        v21 = v38;
        v10 = result;
        goto LABEL_56;
      }

      goto LABEL_87;
    }

    if (a3)
    {
      if (a3 != 1)
      {
        if (a4 == 1)
        {
          a4 = *(v10 + 16);
          v31 = *(v10 + 24);
          a3 = a4 + 1;
          if (a4 >= v31 >> 1)
          {
            v40 = v21;
            result = sub_261A66820((v31 > 1), a4 + 1, 1, v10);
            v21 = v40;
            v10 = result;
          }

          v21 = floor(v21);
          goto LABEL_72;
        }

        goto LABEL_92;
      }

      v20 = a4 - 1;
      if (a4 >= 1)
      {
        v22 = *(v10 + 16);
        if (a4 != 1)
        {
          while (v20)
          {
            if (!v22)
            {
              goto LABEL_78;
            }

            v23 = *(v10 + 24 + 8 * v22);
            a4 = v22 - 1;
            *(v10 + 16) = v22 - 1;
            if (v21 <= v23)
            {
              v21 = v23;
            }

            --v22;
            if (!--v20)
            {
              goto LABEL_70;
            }
          }

LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
          goto LABEL_79;
        }

LABEL_69:
        a4 = v22;
LABEL_70:
        v34 = *(v10 + 24);
        a3 = a4 + 1;
        if (a4 >= v34 >> 1)
        {
          v37 = v21;
          result = sub_261A66820((v34 > 1), a4 + 1, 1, v10);
          v21 = v37;
          v10 = result;
        }

        goto LABEL_72;
      }

      goto LABEL_89;
    }

    v20 = a4 - 1;
    if (a4 >= 1)
    {
      v22 = *(v10 + 16);
      if (a4 != 1)
      {
        while (v20)
        {
          if (!v22)
          {
            goto LABEL_77;
          }

          v29 = *(v10 + 24 + 8 * v22);
          a4 = v22 - 1;
          *(v10 + 16) = v22 - 1;
          if (v29 < v21)
          {
            v21 = v29;
          }

          --v22;
          if (!--v20)
          {
            goto LABEL_70;
          }
        }

        __break(1u);
        goto LABEL_76;
      }

      goto LABEL_69;
    }

LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  if (a3 > 8u)
  {
    if (a3 == 9)
    {
      v30 = *(v10 + 16);
      if (!v30)
      {
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      *(v20 + 8 * v30 - 8) = *(v20 + 8 * v30 - 8) - v21;
    }

    else if (a3 == 10)
    {
      v28 = *(v10 + 16);
      if (!v28)
      {
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
        goto LABEL_94;
      }

      *(v20 + 8 * v28 - 8) = v21 * *(v20 + 8 * v28 - 8);
    }

    else
    {
      v33 = *(v10 + 16);
      if (!v33)
      {
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

      *(v20 + 8 * v33 - 8) = *(v20 + 8 * v33 - 8) / v21;
    }
  }

  else
  {
    if (a3 - 6 < 2)
    {
      return result;
    }

    v26 = *(v10 + 16);
    if (!v26)
    {
      __break(1u);
      goto LABEL_86;
    }

    *(v20 + 8 * v26 - 8) = v21 + *(v20 + 8 * v26 - 8);
  }

LABEL_73:
  *a1 = v10;
  return result;
}

uint64_t sub_261A803F0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 1u)
  {
    if (!a5)
    {
      v18 = 0;
      sub_261A85704();
      return v18;
    }

    v18 = 2238582;
    v7 = a2;
    v8 = a3;
    goto LABEL_10;
  }

  if (a5 == 2)
  {
    if (!result)
    {
      v18 = 2238582;
      MEMORY[0x2667168A0](a2, a3);
      MEMORY[0x2667168A0](2108450, 0xE300000000000000);
      v17 = sub_261A85B94();
      MEMORY[0x2667168A0](v17);

      v9 = 41;
      v10 = 0xE100000000000000;
      goto LABEL_11;
    }

    v18 = 0;
    if ((a4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(result + 16) > a4)
    {
      sub_261A85704();
      MEMORY[0x2667168A0](8744, 0xE200000000000000);
      v7 = a2;
      v8 = a3;
LABEL_10:
      MEMORY[0x2667168A0](v7, v8);
      v9 = 10530;
      v10 = 0xE200000000000000;
LABEL_11:
      MEMORY[0x2667168A0](v9, v10);
      return v18;
    }

    __break(1u);
  }

  else
  {
    if (a2 <= 5u)
    {
      v11 = 7235949;
      v12 = 1818846563;
      v13 = 0x646E756F72;
      if (a2 != 4)
      {
        v13 = 0x636E757274;
      }

      if (a2 != 3)
      {
        v12 = v13;
      }

      v14 = 7889261;
      if (a2 != 1)
      {
        v14 = 0x726F6F6C66;
      }

      if (a2)
      {
        v11 = v14;
      }

      if (a2 <= 2u)
      {
        v15 = v11;
      }

      else
      {
        v15 = v12;
      }

      v18 = v15;

      MEMORY[0x2667168A0](40, 0xE100000000000000);

      return v18;
    }

    if (a2 > 8u)
    {
      if (a2 == 11)
      {
        return 47;
      }

      else if (a2 == 10)
      {
        return 42;
      }

      else
      {
        return 45;
      }
    }

    else
    {
      v16 = 43;
      if (a2 == 7)
      {
        v16 = 10285;
      }

      if (a2 == 6)
      {
        return 40;
      }

      else
      {
        return v16;
      }
    }
  }

  return result;
}

unint64_t sub_261A806B0(uint64_t a1, unint64_t a2, unint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 3u)
  {
    if (a4 > 1u)
    {
      if (a4 != 2)
      {
        v25 = a3;
        v26 = a2;
        sub_261A858C4();

        v32 = 14897;
        v27 = sub_261A85B94();
        MEMORY[0x2667168A0](v27);

        v28 = 0xD000000000000021;
        v29 = 0x8000000261A8EF90;
        goto LABEL_35;
      }

      sub_261A858C4();

      v32 = 14897;
      v19 = sub_261A85B94();
      MEMORY[0x2667168A0](v19);

      v17 = "sion is invalid: ";
      v20 = 0xD00000000000001ALL;
    }

    else
    {
      if (a4)
      {
        sub_261A858C4();

        v32 = 14897;
        v24 = sub_261A85B94();
        MEMORY[0x2667168A0](v24);

        v17 = ": operator missing operand";
        v18 = 9;
      }

      else
      {
        sub_261A858C4();

        v32 = 14897;
        v16 = sub_261A85B94();
        MEMORY[0x2667168A0](v16);

        v17 = ": unbalanced left parenthesis";
        v18 = 10;
      }

      v20 = v18 | 0xD000000000000014;
    }

    v22 = v17 | 0x8000000000000000;
    goto LABEL_36;
  }

  if (a4 <= 5u)
  {
    if (a4 == 4)
    {
      sub_261A858C4();

      v32 = 14897;
      v21 = sub_261A85B94();
      MEMORY[0x2667168A0](v21);

      v20 = 0x206172747865203ALL;
      v22 = 0xEF646E617265706FLL;
LABEL_36:
      MEMORY[0x2667168A0](v20, v22);
      return v32;
    }

    v25 = a3;
    v26 = a2;
    sub_261A858C4();

    v32 = 14897;
    v31 = sub_261A85B94();
    MEMORY[0x2667168A0](v31);

    v29 = 0x8000000261A8EF70;
    v28 = 0xD000000000000014;
LABEL_35:
    MEMORY[0x2667168A0](v28, v29);
    v20 = v26;
    v22 = v25;
    goto LABEL_36;
  }

  if (a4 == 6)
  {
    sub_261A858C4();

    v32 = 14897;
    v23 = sub_261A85B94();
    MEMORY[0x2667168A0](v23);

    v20 = 0x207961727473203ALL;
    v22 = 0xED0000616D6D6F63;
    goto LABEL_36;
  }

  if (a4 != 7)
  {
    return 0xD00000000000003FLL;
  }

  v32 = 0;
  v4 = a2;
  sub_261A858C4();
  MEMORY[0x2667168A0](14897, 0xE200000000000000);
  v5 = sub_261A85B94();
  MEMORY[0x2667168A0](v5);

  MEMORY[0x2667168A0](0x6974636E7566203ALL, 0xEB00000000206E6FLL);
  v6 = 0xE300000000000000;
  v7 = 7235949;
  v8 = 0xE400000000000000;
  v9 = 1818846563;
  v10 = 0x646E756F72;
  if (v4 != 4)
  {
    v10 = 0x636E757274;
  }

  if (v4 != 3)
  {
    v9 = v10;
    v8 = 0xE500000000000000;
  }

  v11 = 0xE300000000000000;
  v12 = 7889261;
  if (v4 != 1)
  {
    v12 = 0x726F6F6C66;
    v11 = 0xE500000000000000;
  }

  if (v4)
  {
    v7 = v12;
    v6 = v11;
  }

  if (v4 <= 2u)
  {
    v13 = v7;
  }

  else
  {
    v13 = v9;
  }

  if (v4 <= 2u)
  {
    v14 = v6;
  }

  else
  {
    v14 = v8;
  }

  MEMORY[0x2667168A0](v13, v14);

  MEMORY[0x2667168A0](0xD000000000000026, 0x8000000261A8EF40);
  v15 = sub_261A85B94();
  MEMORY[0x2667168A0](v15);

  return v32;
}

uint64_t sub_261A80C98(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_261A85214();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_261A851C4();
}

uint64_t sub_261A80CF8()
{
  v0 = sub_261A85214();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v19 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v19 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v19 - v12;
  __swift_allocate_value_buffer(v11, qword_27FED7D10);
  v19[1] = __swift_project_value_buffer(v0, qword_27FED7D10);
  sub_261A851D4();
  if (qword_27FECAD78 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v0, qword_27FED7CE0);
  v15 = *(v1 + 16);
  v15(v4, v14, v0);
  sub_261A851E4();
  v16 = *(v1 + 8);
  v16(v4, v0);
  v16(v7, v0);
  if (qword_27FECAD80 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v0, qword_27FED7CF8);
  v15(v7, v17, v0);
  sub_261A851E4();
  v16(v7, v0);
  v16(v10, v0);
  sub_261A851C4();
  sub_261A851E4();
  v16(v10, v0);
  return (v16)(v13, v0);
}

unint64_t sub_261A80FB0(unint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_261A858C4();

    v7 = 0xD000000000000013;
    v4 = sub_261A85B94();
    MEMORY[0x2667168A0](v4);

    MEMORY[0x2667168A0](0xD000000000000015, 0x8000000261A8EF00);
    v5 = sub_261A85B94();
    MEMORY[0x2667168A0](v5);
  }

  else
  {
    sub_261A858C4();

    v7 = a1;
    MEMORY[0x2667168A0](0xD000000000000012, 0x8000000261A8EF20);
  }

  return v7;
}

uint64_t sub_261A81104@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A85CA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  v5 = sub_261A85BB4();
  v7 = v6;
  v8 = sub_261A698B4(MEMORY[0x277D84F90]);
  v9 = sub_261A82274(v5, v7, v8);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  __swift_destroy_boxed_opaque_existential_1(v17);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  a2[1] = v11;
  a2[2] = v13;
  a2[3] = v15;
  return result;
}

uint64_t sub_261A81218(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A85CC4();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_261A85BC4();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

unint64_t sub_261A812B8(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_261A812E0(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_261A81300(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_261A85C44();
  sub_261A85554();
  v8 = sub_261A85C84();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_261A85BA4() & 1) != 0)
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

    sub_261A816B0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_261A81450(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBDC8, &qword_261A8C8F0);
  result = sub_261A85884();
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
      sub_261A85C44();
      sub_261A85554();
      result = sub_261A85C84();
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

uint64_t sub_261A816B0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_261A81450(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_261A81830();
      goto LABEL_16;
    }

    sub_261A8198C(v8 + 1);
  }

  v10 = *v4;
  sub_261A85C44();
  sub_261A85554();
  result = sub_261A85C84();
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

      result = sub_261A85BA4();
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
  result = sub_261A85BD4();
  __break(1u);
  return result;
}

void *sub_261A81830()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBDC8, &qword_261A8C8F0);
  v2 = *v0;
  v3 = sub_261A85874();
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

uint64_t sub_261A8198C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBDC8, &qword_261A8C8F0);
  result = sub_261A85884();
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
      sub_261A85C44();

      sub_261A85554();
      result = sub_261A85C84();
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

BOOL sub_261A81BC4(uint64_t a1, uint64_t a2, uint64_t a3)
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

  sub_261A858B4();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

uint64_t sub_261A81CBC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4 <= 3u)
  {
    if (a4 <= 1u)
    {
      if (a4)
      {
        if (a8 != 1)
        {
          return 0;
        }
      }

      else if (a8)
      {
        return 0;
      }

      return a1 == a5;
    }

    if (a4 == 2)
    {
      if (a8 != 2)
      {
        return 0;
      }

      return a1 == a5;
    }

    if (a8 != 3 || a1 != a5)
    {
      return 0;
    }

    if (a2 == a6 && a3 == a7)
    {
      return 1;
    }
  }

  else
  {
    if (a4 > 5u)
    {
      if (a4 != 6)
      {
        if (a4 == 7)
        {
          if (a8 == 7 && a1 == a5)
          {
            v8 = 7235949;
            if (a2 > 2u)
            {
              if (a2 == 3)
              {
                v12 = 0xE400000000000000;
                v11 = 1818846563;
              }

              else
              {
                v12 = 0xE500000000000000;
                if (a2 == 4)
                {
                  v11 = 0x646E756F72;
                }

                else
                {
                  v11 = 0x636E757274;
                }
              }
            }

            else
            {
              v9 = 0xE300000000000000;
              v10 = 7889261;
              if (a2 != 1)
              {
                v10 = 0x726F6F6C66;
                v9 = 0xE500000000000000;
              }

              if (a2)
              {
                v11 = v10;
              }

              else
              {
                v11 = 7235949;
              }

              if (a2)
              {
                v12 = v9;
              }

              else
              {
                v12 = 0xE300000000000000;
              }
            }

            if (a6 > 2u)
            {
              if (a6 == 3)
              {
                v17 = 0xE400000000000000;
                v8 = 1818846563;
              }

              else
              {
                v8 = 0x646E756F72;
                if (a6 != 4)
                {
                  v8 = 0x636E757274;
                }

                v17 = 0xE500000000000000;
              }
            }

            else
            {
              v15 = 0xE300000000000000;
              v16 = 7889261;
              if (a6 != 1)
              {
                v16 = 0x726F6F6C66;
                v15 = 0xE500000000000000;
              }

              if (a6)
              {
                v8 = v16;
                v17 = v15;
              }

              else
              {
                v17 = 0xE300000000000000;
              }
            }

            if (v11 == v8 && v12 == v17)
            {

              return a3 == a7;
            }

            v20 = sub_261A85BA4();

            if (v20)
            {
              return a3 == a7;
            }
          }

          return 0;
        }

        return a8 == 8 && !(a6 | a5 | a7);
      }

      if (a8 != 6)
      {
        return 0;
      }

      return a1 == a5;
    }

    if (a4 == 4)
    {
      if (a8 != 4)
      {
        return 0;
      }

      return a1 == a5;
    }

    if (a8 != 5 || a1 != a5)
    {
      return 0;
    }

    if (a2 == a6 && a3 == a7)
    {
      return 1;
    }
  }

  return sub_261A85BA4();
}

BOOL sub_261A81FB8(unsigned __int8 a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  if (a1 > 8u)
  {
    switch(a1)
    {
      case 9u:
        return a3 == 9;
      case 0xAu:
        return a3 == 10;
      case 0xBu:
        return a3 == 11;
    }
  }

  else
  {
    switch(a1)
    {
      case 6u:
        return a3 == 6;
      case 7u:
        return a3 == 7;
      case 8u:
        return a3 == 8;
    }
  }

  v5 = a3;
  if (a3 - 6 < 6)
  {
    return 0;
  }

  v6 = 7235949;
  v7 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v11 = 0xE400000000000000;
      v10 = 1818846563;
    }

    else
    {
      v11 = 0xE500000000000000;
      if (a1 == 4)
      {
        v10 = 0x646E756F72;
      }

      else
      {
        v10 = 0x636E757274;
      }
    }
  }

  else
  {
    v8 = 0xE300000000000000;
    v9 = 7889261;
    if (a1 != 1)
    {
      v9 = 0x726F6F6C66;
      v8 = 0xE500000000000000;
    }

    if (a1)
    {
      v10 = v9;
    }

    else
    {
      v10 = 7235949;
    }

    if (v7)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0xE300000000000000;
    }
  }

  v12 = 0xE300000000000000;
  v13 = 0xE400000000000000;
  v14 = 1818846563;
  v15 = 0x646E756F72;
  if (a3 != 4)
  {
    v15 = 0x636E757274;
  }

  if (a3 != 3)
  {
    v14 = v15;
    v13 = 0xE500000000000000;
  }

  v16 = 0xE300000000000000;
  v17 = 7889261;
  if (a3 != 1)
  {
    v17 = 0x726F6F6C66;
    v16 = 0xE500000000000000;
  }

  if (a3)
  {
    v6 = v17;
    v12 = v16;
  }

  if (a3 <= 2u)
  {
    v18 = v6;
  }

  else
  {
    v18 = v14;
  }

  if (v5 <= 2)
  {
    v19 = v12;
  }

  else
  {
    v19 = v13;
  }

  if (v10 == v18 && v11 == v19)
  {
  }

  else
  {
    v22 = sub_261A85BA4();

    result = 0;
    if ((v22 & 1) == 0)
    {
      return result;
    }
  }

  return a2 == a4;
}

unint64_t sub_261A82228(uint64_t a1, uint64_t a2)
{
  v2 = sub_261A859E4();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_261A82274(uint64_t a1, char *a2, uint64_t a3)
{
  v205 = a3;
  v5 = sub_261A85214();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v199 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v199 - v10;
  v218 = MEMORY[0x277D84F90];
  v12 = objc_allocWithZone(MEMORY[0x277CCAC80]);
  v199[1] = a1;
  v204 = a2;
  v13 = sub_261A85494();
  v14 = [v12 initWithString_];

  [v14 setCharactersToBeSkipped_];
  sub_261A851D4();
  sub_261A85804();
  v16 = v15;
  v17 = *(v6 + 8);
  v212 = v11;
  v213 = v6 + 8;
  *&v215 = v5;
  v211 = v17;
  v17(v11, v5);
  v199[0] = v9;
  if (v16)
  {
    v18 = sub_261A85564();

    v19 = v18 + 1;
    if (!__OFADD__(v18, 1))
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v19 = 1;
LABEL_6:
  v214 = 0;
  v20 = MEMORY[0x277D84F90];
  LODWORD(v207) = 2;
  v217[2] = MEMORY[0x277D84FA0];
  v208 = xmmword_261A8D380;
  v200 = xmmword_261A8D370;
  v21 = 1;
  v206 = v14;
  while (1)
  {
    if ([v14 isAtEnd])
    {

      v170 = *(v20 + 2);
      v171 = v214 - v170;
      if (!__OFSUB__(v214, v170))
      {
        if (v171 >= 1)
        {
          if (v171 != 1)
          {

            sub_261A84268();
            swift_allocError();
            *(v177 + 8) = 0;
            *(v177 + 16) = 0;
            *v177 = 0;
            v178 = 8;
            goto LABEL_288;
          }

          v172 = (v20 + 32);
          v173 = v170 + 1;
          while (--v173)
          {
            v174 = v172 + 24;
            v175 = *v172;
            v172 += 24;
            if (v175 == 6)
            {
              v12 = *(v174 - 1);

              goto LABEL_281;
            }
          }

          if (v170)
          {
            *&v216[0] = MEMORY[0x277D84F90];
            result = sub_261A3F360(0, v170, 0);
            v180 = *(v20 + 2);
            v181 = v216[0];
            v182 = v180 - 1;
            v183 = 24 * v180 + 8;
            do
            {
              if (v182 == -1)
              {
                goto LABEL_326;
              }

              if (v182 >= *(v20 + 2))
              {
                goto LABEL_327;
              }

              v184 = *&v20[v183];
              v216[0] = v181;
              v186 = *(*&v181 + 16);
              v185 = *(*&v181 + 24);
              if (v186 >= v185 >> 1)
              {
                v215 = v184;
                result = sub_261A3F360((v185 > 1), v186 + 1, 1);
                v184 = v215;
                v181 = v216[0];
              }

              *(*&v181 + 16) = v186 + 1;
              v187 = *&v181 + 32 * v186;
              *(v187 + 32) = v184;
              *(v187 + 48) = 0;
              *(v187 + 56) = 3;
              --v182;
              v183 -= 24;
              --v170;
            }

            while (v170);

            v14 = v206;
          }

          else
          {

            v181 = MEMORY[0x277D84F90];
          }

          swift_beginAccess();
          sub_261A7FC30(*&v181);
          swift_endAccess();

          v12 = v218;
          swift_beginAccess();
          return v12;
        }

        if (*(v20 + 2))
        {
          v12 = *(v20 + 4);
          v19 = *(v20 + 6);

          if ((v12 & 0xFE) == 6)
          {
            sub_261A84268();
            swift_allocError();
            *(v177 + 16) = 0;
            *v177 = v19;
            goto LABEL_283;
          }
        }

        else
        {
LABEL_285:
        }

        sub_261A84268();
        swift_allocError();
        *(v177 + 16) = 0;
        *v177 = v19;
        goto LABEL_287;
      }

      goto LABEL_331;
    }

    sub_261A857F4();
    if (v22)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_261A6799C(0, *(v20 + 2) + 1, 1, v20);
        v20 = result;
      }

      v40 = *(v20 + 2);
      v39 = *(v20 + 3);
      if (v40 >= v39 >> 1)
      {
        result = sub_261A6799C((v39 > 1), v40 + 1, 1, v20);
        v20 = result;
      }

      *(v20 + 2) = v40 + 1;
      v41 = &v20[24 * v40];
      *(v41 + 2) = v200;
      *(v41 + 6) = v19;
      v34 = __OFADD__(v19++, 1);
      if (!v34)
      {
        goto LABEL_227;
      }

      goto LABEL_332;
    }

    sub_261A857F4();
    if (v23)
    {
      break;
    }

    sub_261A857F4();
    if (v24)
    {

      if (!*(v20 + 2))
      {
LABEL_269:

        sub_261A84268();
        swift_allocError();
        *(v179 + 8) = 0;
        *(v179 + 16) = 0;
        *v179 = v19;
        *(v179 + 24) = 0;
        goto LABEL_289;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_261A67C20(v20);
        v20 = result;
      }

      v51 = v20 + 16;
      v50 = *(v20 + 2);
      if (v50)
      {
        v52 = v50 - 1;
        v53 = (v20 + 32);
        v54 = &v20[24 * v52 + 32];
        v55 = v20;
        v12 = *v54;
        v56 = *(v54 + 8);
        v21 = *(v54 + 16);
        v210 = v55;
        *(v55 + 2) = v52;
        v57 = v12;
        if (v12 - 8 >= 4)
        {
          v63 = 0;
          if (v12 == 6)
          {
            LODWORD(v209) = 1;
            result = v205;
            v20 = v210;
            v62 = v214;
            goto LABEL_208;
          }

          LODWORD(v209) = 1;
          v49 = v214;
          if (v12 == 7)
          {
            goto LABEL_124;
          }

          v96 = v56 + 1;
          if (__OFADD__(v56, 1))
          {
            goto LABEL_341;
          }

          goto LABEL_196;
        }

        swift_beginAccess();
        v58 = v218;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v58 = sub_261A67890(0, *(v58 + 2) + 1, 1, v58);
        }

        v60 = *(v58 + 2);
        v59 = *(v58 + 3);
        if (v60 >= v59 >> 1)
        {
          v58 = sub_261A67890((v59 > 1), v60 + 1, 1, v58);
        }

        *(v58 + 2) = v60 + 1;
        v61 = &v58[32 * v60];
        *(v61 + 4) = v12;
        *(v61 + 5) = v56;
        *(v61 + 6) = 0;
        v61[56] = 3;
        v218 = v58;
        swift_endAccess();
        v62 = v214 - 1;
        if (!__OFSUB__(v214, 1))
        {
          v63 = v21;
          while (1)
          {
            v64 = v210;
            if (!*(v210 + 16))
            {
              v14 = v206;
              goto LABEL_269;
            }

            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_261A67C20(v64);
              v64 = result;
            }

            v51 = (v64 + 16);
            v65 = *(v64 + 16);
            if (!v65)
            {
              goto LABEL_318;
            }

            v66 = v65 - 1;
            v53 = (v64 + 32);
            v67 = v64 + 32 + 24 * v66;
            v68 = v64;
            v12 = *v67;
            v69 = *(v67 + 8);
            v21 = *(v67 + 16);
            v210 = v68;
            *(v68 + 16) = v66;
            v57 = v12;
            if (v12 - 8 >= 4)
            {
              break;
            }

            swift_beginAccess();
            v70 = v218;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v70 = sub_261A67890(0, *(v70 + 2) + 1, 1, v70);
            }

            v72 = *(v70 + 2);
            v71 = *(v70 + 3);
            if (v72 >= v71 >> 1)
            {
              v70 = sub_261A67890((v71 > 1), v72 + 1, 1, v70);
            }

            *(v70 + 2) = v72 + 1;
            v73 = &v70[32 * v72];
            *(v73 + 4) = v12;
            *(v73 + 5) = v69;
            *(v73 + 6) = 0;
            v73[56] = 3;
            v218 = v70;
            swift_endAccess();
            v63 = v21;
            v34 = __OFSUB__(v62--, 1);
            if (v34)
            {
              goto LABEL_319;
            }
          }

          if (v12 == 6)
          {
            LODWORD(v209) = 0;
            result = v205;
            v20 = v210;
            goto LABEL_208;
          }

          v49 = v62;
          if (v12 == 7)
          {
            LODWORD(v209) = 0;
LABEL_124:
            v62 = v49;
            swift_beginAccess();
            v100 = v218;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v100 = sub_261A67890(0, *(v100 + 2) + 1, 1, v100);
            }

            v20 = v210;
            v102 = *(v100 + 2);
            v101 = *(v100 + 3);
            v103 = v101 >> 1;
            v104 = v102 + 1;
            if (v101 >> 1 <= v102)
            {
              v100 = sub_261A67890((v101 > 1), v102 + 1, 1, v100);
              v101 = *(v100 + 3);
              v103 = v101 >> 1;
            }

            *(v100 + 2) = v104;
            v105 = &v100[32 * v102];
            *(v105 + 5) = 0;
            *(v105 + 6) = 0;
            v106 = v102 + 2;
            *(v105 + 4) = 0xBFF0000000000000;
            v105[56] = 0;
            if (v103 < v106)
            {
              v100 = sub_261A67890((v101 > 1), v106, 1, v100);
            }

            *(v100 + 2) = v106;
            v107 = &v100[32 * v104];
            *(v107 + 5) = 0;
            *(v107 + 6) = 0;
            *(v107 + 4) = 10;
            v107[56] = 3;
            v218 = v100;
            swift_endAccess();
LABEL_207:
            result = v205;
LABEL_208:
            if (v62 >= 1)
            {
              v34 = __OFADD__(v19++, 1);
              if (!v34)
              {
                v214 = v62;
                v21 = 0;
                LODWORD(v207) = 0;
                v14 = v206;
                goto LABEL_228;
              }

              goto LABEL_335;
            }

            if (*v51)
            {
              v196 = *v53;
              v12 = *(v20 + 6);

              v14 = v206;
              if ((v196 & 0xFE) == 6)
              {
                goto LABEL_282;
              }
            }

            else
            {

              if (v209)
              {
                v12 = v19;
              }

              else
              {
                v12 = v63;
              }

              v14 = v206;
            }

            sub_261A84268();
            swift_allocError();
            *(v177 + 16) = 0;
            *v177 = v12;
LABEL_287:
            *(v177 + 8) = 0;
            v178 = 2;
            goto LABEL_288;
          }

          LODWORD(v209) = 0;
          v96 = v69 + 1;
          if (__OFADD__(v69, 1))
          {
            goto LABEL_341;
          }

LABEL_196:
          if (v57 <= 1)
          {
            if (!v49)
            {

              v12 &= 1u;
              sub_261A84268();
              swift_allocError();
              *v198 = v21;
              *(v198 + 8) = v12;
              *(v198 + 16) = 0;
              goto LABEL_323;
            }

LABEL_201:
            v214 = v49;
            swift_beginAccess();
            v138 = v218;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v138 = sub_261A67890(0, *(v138 + 2) + 1, 1, v138);
            }

            v140 = *(v138 + 2);
            v139 = *(v138 + 3);
            if (v140 >= v139 >> 1)
            {
              v138 = sub_261A67890((v139 > 1), v140 + 1, 1, v138);
            }

            *(v138 + 2) = v140 + 1;
            v141 = &v138[32 * v140];
            *(v141 + 4) = v12;
            *(v141 + 5) = v96;
            *(v141 + 6) = 0;
            v141[56] = 3;
            v218 = v138;
            result = swift_endAccess();
            v142 = v96 - 1;
            if (__OFSUB__(v96, 1))
            {
              goto LABEL_342;
            }

            v62 = v214 - v142;
            v20 = v210;
            if (!__OFSUB__(v214, v142))
            {
              goto LABEL_207;
            }

LABEL_343:
            __break(1u);
LABEL_344:
            __break(1u);
            goto LABEL_345;
          }

          if (v49 >= 1)
          {
            if (v96 == 1)
            {
              goto LABEL_201;
            }

            v12 = v12;
            sub_261A84268();
            swift_allocError();
            *v198 = v21;
            *(v198 + 8) = v12;
            *(v198 + 16) = v96;
LABEL_323:
            v176 = 7;
LABEL_264:
            *(v198 + 24) = v176;
            v14 = v206;
            goto LABEL_289;
          }

LABEL_321:
          v197 = v49;

          v12 = v12;
          sub_261A84268();
          swift_allocError();
          *v198 = v21;
          *(v198 + 8) = v12;
          *(v198 + 16) = v197;
          goto LABEL_323;
        }
      }

      else
      {
LABEL_318:
        __break(1u);
      }

LABEL_319:
      __break(1u);
LABEL_320:
      __break(1u);
      goto LABEL_321;
    }

    if (qword_27FECAD78 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v215, qword_27FED7CE0);
    v25 = sub_261A85804();
    if (!v26)
    {
      goto LABEL_216;
    }

    v27 = v25;
    v28 = v26;
    if (v25 == 43 && v26 == 0xE100000000000000 || (sub_261A85BA4() & 1) != 0)
    {
      LODWORD(v209) = 0;
      v29 = 8;
    }

    else
    {
      if ((v27 != 45 || v28 != 0xE100000000000000) && (sub_261A85BA4() & 1) == 0)
      {
        if (v27 == 42 && v28 == 0xE100000000000000 || (sub_261A85BA4() & 1) != 0)
        {
          v118 = 10;
        }

        else
        {
          if ((v27 != 47 || v28 != 0xE100000000000000) && (sub_261A85BA4() & 1) == 0)
          {

LABEL_216:
            if (qword_27FECAD88 != -1)
            {
              swift_once();
            }

            __swift_project_value_buffer(v215, qword_27FED7D10);
            v143 = sub_261A85814();
            if (!v144)
            {

              v188 = v212;
              sub_261A85204();
              v189 = v199[0];
              sub_261A851F4();
              v190 = v215;
              v191 = v211;
              v211(v188, v215);
              v192 = sub_261A85804();
              v194 = v193;
              v191(v189, v190);

              if (v194)
              {
                v12 = v192;
              }

              else
              {
                v12 = 0;
              }

              if (v194)
              {
                v195 = v194;
              }

              else
              {
                v195 = 0xE000000000000000;
              }

              sub_261A84268();
              swift_allocError();
              *v177 = v19;
              *(v177 + 8) = v12;
              *(v177 + 16) = v195;
              v178 = 3;
              goto LABEL_288;
            }

            v145 = v143;
            v146 = v144;
            sub_261A857F4();
            if (v147)
            {

              v148 = sub_261A859E4();

              if (v148 >= 6)
              {

                sub_261A84268();
                swift_allocError();
                *v177 = v19;
                *(v177 + 8) = v145;
                *(v177 + 16) = v146;
                v178 = 5;
                goto LABEL_288;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v20 = sub_261A6799C(0, *(v20 + 2) + 1, 1, v20);
              }

              v150 = *(v20 + 2);
              v149 = *(v20 + 3);
              if (v150 >= v149 >> 1)
              {
                v20 = sub_261A6799C((v149 > 1), v150 + 1, 1, v20);
              }

              *(v20 + 2) = v150 + 1;
              v151 = &v20[24 * v150];
              *(v151 + 4) = v148;
              *(v151 + 5) = 0;
              *(v151 + 6) = v19;
              v152 = sub_261A85564();

              v153 = v152 + 1;
              if (!__OFADD__(v152, 1))
              {
                v34 = __OFADD__(v19, v153);
                v19 += v153;
                if (!v34)
                {
LABEL_227:
                  v21 = 1;
                  LODWORD(v207) = 1;
                  goto LABEL_228;
                }

LABEL_337:
                __break(1u);
LABEL_338:
                __break(1u);
LABEL_339:
                __break(1u);
LABEL_340:
                __break(1u);
LABEL_341:
                __break(1u);
LABEL_342:
                __break(1u);
                goto LABEL_343;
              }

LABEL_336:
              __break(1u);
              goto LABEL_337;
            }

            if (v207)
            {
              v216[0] = 0.0;
              v157 = v202;
              result = sub_261A81BC4(v145, v146, v216);
              v202 = v157;
              if (result)
              {
                v34 = __OFADD__(v214++, 1);
                if (!v34)
                {
                  v158 = v216[0];
                  swift_beginAccess();
                  v159 = v218;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v159 = sub_261A67890(0, *(v159 + 2) + 1, 1, v159);
                  }

                  v161 = *(v159 + 2);
                  v160 = *(v159 + 3);
                  if (v161 >= v160 >> 1)
                  {
                    v159 = sub_261A67890((v160 > 1), v161 + 1, 1, v159);
                  }

                  *(v159 + 2) = v161 + 1;
                  v162 = &v159[32 * v161];
                  *(v162 + 4) = v158;
                  *(v162 + 5) = 0;
                  *(v162 + 6) = 0;
                  v162[56] = 0;
                  goto LABEL_250;
                }

LABEL_345:
                __break(1u);
LABEL_346:
                __break(1u);
LABEL_347:
                __break(1u);
LABEL_348:
                __break(1u);
                return result;
              }

              if (*(v205 + 16) && (result = sub_261A5BD84(v145, v146), (v163 & 1) != 0))
              {
                v34 = __OFADD__(v214++, 1);
                if (v34)
                {
                  goto LABEL_348;
                }

                v164 = *(*(v205 + 56) + 32 * result);
                swift_beginAccess();

                sub_261A7F15C(v165);
                swift_endAccess();
                swift_beginAccess();
                sub_261A7FC30(v164);
              }

              else
              {
                v34 = __OFADD__(v214++, 1);
                if (v34)
                {
                  goto LABEL_346;
                }

                swift_beginAccess();

                sub_261A81300(v217, v145, v146);
                swift_endAccess();

                swift_beginAccess();
                v159 = v218;

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v159 = sub_261A67890(0, *(v159 + 2) + 1, 1, v159);
                }

                v167 = *(v159 + 2);
                v166 = *(v159 + 3);
                if (v167 >= v166 >> 1)
                {
                  v159 = sub_261A67890((v166 > 1), v167 + 1, 1, v159);
                }

                *(v159 + 2) = v167 + 1;
                v168 = &v159[32 * v167];
                *(v168 + 4) = v145;
                *(v168 + 5) = v146;
                *(v168 + 6) = 0;
                v168[56] = 1;
LABEL_250:
                v218 = v159;
              }

              swift_endAccess();
              v169 = sub_261A85564();

              v34 = __OFADD__(v19, v169);
              v19 += v169;
              if (!v34)
              {
                v21 = 0;
                LODWORD(v207) = 0;
                goto LABEL_228;
              }

              goto LABEL_339;
            }

LABEL_309:

            sub_261A84268();
            swift_allocError();
            *(v177 + 8) = 0;
            *(v177 + 16) = 0;
            *v177 = v19;
            v178 = 4;
            goto LABEL_288;
          }

          v118 = 11;
        }

        v210 = v118;
        if (v207 == 1)
        {
LABEL_284:

          goto LABEL_285;
        }

LABEL_162:
        v203 = v27;
LABEL_163:
        v201 = 0;
        v32 = 0;
        goto LABEL_164;
      }

      LODWORD(v209) = 1;
      v29 = 9;
    }

    v210 = v29;
    v12 = v212;
    sub_261A851D4();
    sub_261A85804();
    v31 = v30;
    v211(v12, v215);
    if (!v31)
    {
      if ((v21 & 1) == 0)
      {
        if (v207 == 1)
        {
          goto LABEL_284;
        }

        goto LABEL_162;
      }

      goto LABEL_28;
    }

    v32 = sub_261A85564();

    if ((v21 & (v32 == 0)) != 0)
    {
LABEL_28:
      if ([v14 isAtEnd])
      {
        v203 = v27;
LABEL_89:
        if (v207 == 1)
        {
          goto LABEL_284;
        }

        goto LABEL_163;
      }

      v33 = sub_261A85564();
      v34 = __OFADD__(v19, v33);
      v19 += v33;
      if (v34)
      {
        __break(1u);
LABEL_308:
        __break(1u);
        goto LABEL_309;
      }

      sub_261A857F4();
      if (v35)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_261A6799C(0, *(v20 + 2) + 1, 1, v20);
        }

        v12 = *(v20 + 2);
        v36 = *(v20 + 3);
        if (v12 >= v36 >> 1)
        {
          v20 = sub_261A6799C((v36 > 1), v12 + 1, 1, v20);
        }

        *(v20 + 2) = v12 + 1;
        v37 = &v20[24 * v12];
        *(v37 + 2) = v208;
        *(v37 + 6) = v19;
        v21 = 1;
        v34 = __OFADD__(v19++, 1);
        if (v34)
        {
          goto LABEL_308;
        }
      }

      else
      {
        v203 = v27;
        if (qword_27FECAD88 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v215, qword_27FED7D10);
        v74 = sub_261A85814();
        if (!v75)
        {
          goto LABEL_89;
        }

        v76 = v74;
        v77 = v75;

        v216[0] = 0.0;
        v78 = v202;
        result = sub_261A81BC4(v76, v77, v216);
        v202 = v78;
        if (result)
        {
          if (v209)
          {
            v79 = -v216[0];
          }

          else
          {
            v79 = v216[0];
          }

          v34 = __OFADD__(v214++, 1);
          if (v34)
          {
            goto LABEL_340;
          }

          swift_beginAccess();
          v80 = v218;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v80 = sub_261A67890(0, *(v80 + 2) + 1, 1, v80);
          }

          v12 = *(v80 + 2);
          v81 = *(v80 + 3);
          if (v12 >= v81 >> 1)
          {
            v80 = sub_261A67890((v81 > 1), v12 + 1, 1, v80);
          }

          *(v80 + 2) = v12 + 1;
          v82 = &v80[32 * v12];
          *(v82 + 4) = v79;
          *(v82 + 5) = 0;
          *(v82 + 6) = 0;
          v82[56] = 0;
        }

        else
        {
          if (*(v205 + 16))
          {
            result = sub_261A5BD84(v76, v77);
            if (v97)
            {
              v34 = __OFADD__(v214++, 1);
              if (v34)
              {
                goto LABEL_347;
              }

              v98 = *(*(v205 + 56) + 32 * result);
              swift_beginAccess();

              sub_261A7F15C(v99);
              swift_endAccess();
              swift_beginAccess();
              sub_261A7FC30(v98);
              goto LABEL_145;
            }
          }

          v34 = __OFADD__(v214++, 1);
          if (v34)
          {
            goto LABEL_344;
          }

          swift_beginAccess();

          sub_261A81300(v217, v76, v77);
          swift_endAccess();

          swift_beginAccess();
          v80 = v218;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v80 = sub_261A67890(0, *(v80 + 2) + 1, 1, v80);
          }

          v12 = *(v80 + 2);
          v108 = *(v80 + 3);
          if (v12 >= v108 >> 1)
          {
            v80 = sub_261A67890((v108 > 1), v12 + 1, 1, v80);
          }

          *(v80 + 2) = v12 + 1;
          v109 = &v80[32 * v12];
          *(v109 + 4) = v76;
          *(v109 + 5) = v77;
          *(v109 + 6) = 0;
          v109[56] = 1;
          v218 = v80;
          swift_endAccess();
          if (!v209)
          {
            goto LABEL_146;
          }

          swift_beginAccess();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v80 = sub_261A67890(0, v12 + 2, 1, v80);
          }

          v12 = *(v80 + 2);
          v110 = *(v80 + 3);
          v111 = v110 >> 1;
          v112 = (v12 + 1);
          if (v110 >> 1 <= v12)
          {
            v80 = sub_261A67890((v110 > 1), v12 + 1, 1, v80);
            v110 = *(v80 + 3);
            v111 = v110 >> 1;
          }

          *(v80 + 2) = v112;
          v113 = &v80[32 * v12];
          *(v113 + 5) = 0;
          *(v113 + 6) = 0;
          *(v113 + 4) = 0xBFF0000000000000;
          v113[56] = 0;
          if (v111 < v12 + 2)
          {
            v80 = sub_261A67890((v110 > 1), v12 + 2, 1, v80);
          }

          *(v80 + 2) = v12 + 2;
          v114 = &v80[32 * v112];
          *(v114 + 5) = 0;
          *(v114 + 6) = 0;
          *(v114 + 4) = 10;
          v114[56] = 3;
        }

        v218 = v80;
LABEL_145:
        swift_endAccess();
LABEL_146:
        v115 = sub_261A85564();

        LODWORD(v207) = 0;
        v21 = 1;
        v34 = __OFADD__(v19, v115);
        v19 += v115;
        if (v34)
        {
          goto LABEL_338;
        }
      }
    }

    else
    {
      v203 = v27;
      if (!v32)
      {
        goto LABEL_89;
      }

      if (v207 == 1)
      {
        goto LABEL_284;
      }

      v201 = 1;
LABEL_164:
      v120 = v20 + 16;
      v119 = *(v20 + 2);
      if (v119)
      {
        v121 = (v210 - 8);
        v21 = v121;
        while (1)
        {
          v122 = &v20[24 * v119];
          if ((*(v122 + 8) - 8) > 3u)
          {
            v123 = 0;
            if (v121 > 3)
            {
              goto LABEL_171;
            }
          }

          else
          {
            v123 = qword_261A8D880[(*(v122 + 8) - 8)];
            if (v121 > 3)
            {
              goto LABEL_171;
            }
          }

          if (v123 < qword_261A8D880[v121])
          {
            goto LABEL_185;
          }

LABEL_171:
          v209 = *(v122 + 8);
          v12 = v19;
          v207 = *(v122 + 3);
          swift_beginAccess();
          v124 = v218;
          v125 = v20;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v124 = sub_261A67890(0, *(v124 + 2) + 1, 1, v124);
          }

          v127 = *(v124 + 2);
          v126 = *(v124 + 3);
          v128 = v209;
          if (v127 >= v126 >> 1)
          {
            v131 = sub_261A67890((v126 > 1), v127 + 1, 1, v124);
            v128 = v209;
            v124 = v131;
          }

          *(v124 + 2) = v127 + 1;
          v129 = &v124[32 * v127];
          *(v129 + 2) = v128;
          *(v129 + 6) = 0;
          v129[56] = 3;
          v218 = v124;
          swift_endAccess();
          if (*v120)
          {
            v20 = v125;
            v121 = v21;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v20 = sub_261A67C20(v125);
            }

            v19 = v12;
            v130 = *(v20 + 2);
            v49 = v214;
            if (!v130)
            {
              goto LABEL_320;
            }

            *(v20 + 2) = v130 - 1;
            v34 = __OFSUB__(v49--, 1);
            if (v34)
            {
LABEL_317:
              __break(1u);
              goto LABEL_318;
            }
          }

          else
          {
            v20 = v125;
            v19 = v12;
            v121 = v21;
            v49 = v214 - 1;
            if (__OFSUB__(v214, 1))
            {
              goto LABEL_317;
            }
          }

          if (v49 < 0)
          {

            sub_261A84268();
            swift_allocError();
            *(v198 + 8) = 0;
            *(v198 + 16) = 0;
            *v198 = v207;
            v176 = 2;
            goto LABEL_264;
          }

          v214 = v49;
          v120 = v20 + 16;
          v119 = *(v20 + 2);
          if (!v119)
          {
LABEL_185:
            v132 = v119 + 1;
            goto LABEL_187;
          }
        }
      }

      v132 = 1;
LABEL_187:
      v14 = v206;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_261A6799C(0, v132, 1, v20);
      }

      v134 = *(v20 + 2);
      v133 = *(v20 + 3);
      if (v134 >= v133 >> 1)
      {
        v20 = sub_261A6799C((v133 > 1), v134 + 1, 1, v20);
      }

      *(v20 + 2) = v134 + 1;
      v135 = &v20[24 * v134];
      *(v135 + 4) = v210;
      *(v135 + 5) = 0;
      *(v135 + 6) = v19;
      v136 = sub_261A85564();

      v137 = v136 + v32;
      if (__OFADD__(v136, v32))
      {
        goto LABEL_329;
      }

      v34 = __OFADD__(v19, v137);
      v19 += v137;
      if (v34)
      {
        goto LABEL_330;
      }

      LODWORD(v207) = 1;
      v21 = v201;
LABEL_228:
      v12 = v212;
      sub_261A851D4();
      sub_261A85804();
      v155 = v154;
      v211(v12, v215);
      if (v155)
      {
        v156 = sub_261A85564();

        v21 = 1;
        v34 = __OFADD__(v19, v156);
        v19 += v156;
        if (v34)
        {
          goto LABEL_328;
        }
      }
    }
  }

  if (!*(v20 + 2))
  {
LABEL_270:

    sub_261A84268();
    swift_allocError();
    *(v177 + 8) = 0;
    *(v177 + 16) = 0;
    *v177 = v19;
    v178 = 6;
    goto LABEL_288;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v42 = *(v20 + 2);
    if (v42)
    {
      goto LABEL_48;
    }

LABEL_324:
    __break(1u);
LABEL_325:
    __break(1u);
LABEL_326:
    __break(1u);
LABEL_327:
    __break(1u);
LABEL_328:
    __break(1u);
LABEL_329:
    __break(1u);
LABEL_330:
    __break(1u);
LABEL_331:
    __break(1u);
LABEL_332:
    __break(1u);
LABEL_333:
    __break(1u);
LABEL_334:
    __break(1u);
LABEL_335:
    __break(1u);
    goto LABEL_336;
  }

  result = sub_261A67C20(v20);
  v20 = result;
  v42 = *(result + 16);
  if (!v42)
  {
    goto LABEL_324;
  }

LABEL_48:
  v43 = v42 - 1;
  v44 = &v20[24 * v42];
  v45 = *(v44 + 1);
  v46 = *(v44 + 2);
  v12 = *(v44 + 3);
  *(v20 + 2) = v42 - 1;
  if (v45 - 12 < 0xFFFFFFFA)
  {
    v47 = v19;
    v34 = __OFADD__(v46, 1);
    v48 = v46 + 1;
    if (v34)
    {
      goto LABEL_333;
    }

    goto LABEL_150;
  }

  if ((v45 & 0xE) == 6)
  {
    goto LABEL_280;
  }

  swift_beginAccess();
  v83 = v218;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = v206;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v83 = sub_261A67890(0, *(v83 + 2) + 1, 1, v83);
  }

  v86 = *(v83 + 2);
  v85 = *(v83 + 3);
  if (v86 >= v85 >> 1)
  {
    v83 = sub_261A67890((v85 > 1), v86 + 1, 1, v83);
  }

  *(v83 + 2) = v86 + 1;
  v87 = &v83[32 * v86];
  *(v87 + 4) = v45;
  *(v87 + 5) = v46;
  *(v87 + 6) = 0;
  v87[56] = 3;
  v218 = v83;
  result = swift_endAccess();
  while (1)
  {
    if (__OFSUB__(v214, 1))
    {
      goto LABEL_325;
    }

    if (!*(v20 + 2))
    {
      goto LABEL_270;
    }

    --v214;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v42 = *(v20 + 2);
      if (!v42)
      {
        goto LABEL_324;
      }
    }

    else
    {
      result = sub_261A67C20(v20);
      v20 = result;
      v42 = *(result + 16);
      if (!v42)
      {
        goto LABEL_324;
      }
    }

    v43 = v42 - 1;
    v88 = &v20[24 * v42];
    v45 = *(v88 + 1);
    v89 = *(v88 + 2);
    v90 = *(v88 + 3);
    *(v20 + 2) = v42 - 1;
    if (v45 - 6 >= 6)
    {
      v47 = v12;
      v12 = v90;
      v34 = __OFADD__(v89, 1);
      v48 = v89 + 1;
      if (v34)
      {
        goto LABEL_333;
      }

LABEL_150:
      v116 = *(v20 + 3);
      if (v42 > v116 >> 1)
      {
        result = sub_261A6799C((v116 > 1), v42, 1, v20);
        v20 = result;
      }

      *(v20 + 2) = v42;
      v117 = &v20[24 * v43];
      *(v117 + 4) = v45;
      *(v117 + 5) = v48;
      *(v117 + 6) = v12;
      if (v214 <= 0)
      {

        v14 = v206;
        if (*(v20 + 2))
        {
          v12 = *(v20 + 4);
          v47 = *(v20 + 6);

          if ((v12 & 0xFE) == 6)
          {
            sub_261A84268();
            swift_allocError();
            *(v177 + 16) = 0;
            *v177 = v47;
            goto LABEL_283;
          }
        }

        else
        {
        }

        sub_261A84268();
        swift_allocError();
        *(v177 + 16) = 0;
        *v177 = v47;
        goto LABEL_287;
      }

      v34 = __OFADD__(v19++, 1);
      v14 = v206;
      if (!v34)
      {
        goto LABEL_227;
      }

      goto LABEL_334;
    }

    if ((v45 & 0xE) == 6)
    {
      break;
    }

    swift_beginAccess();
    v91 = v218;
    v92 = swift_isUniquelyReferenced_nonNull_native();
    v14 = v206;
    if ((v92 & 1) == 0)
    {
      v91 = sub_261A67890(0, *(v91 + 2) + 1, 1, v91);
    }

    v94 = *(v91 + 2);
    v93 = *(v91 + 3);
    if (v94 >= v93 >> 1)
    {
      v91 = sub_261A67890((v93 > 1), v94 + 1, 1, v91);
    }

    *(v91 + 2) = v94 + 1;
    v95 = &v91[32 * v94];
    *(v95 + 4) = v45;
    *(v95 + 5) = v89;
    *(v95 + 6) = 0;
    v95[56] = 3;
    v218 = v91;
    result = swift_endAccess();
    v12 = v90;
  }

  v12 = v90;
LABEL_280:
  v14 = v206;

LABEL_281:

LABEL_282:
  sub_261A84268();
  swift_allocError();
  *(v177 + 16) = 0;
  *v177 = v12;
LABEL_283:
  *(v177 + 8) = 0;
  v178 = 1;
LABEL_288:
  *(v177 + 24) = v178;
LABEL_289:
  swift_willThrow();

  return v12;
}

unint64_t sub_261A84268()
{
  result = qword_27FECBEC8;
  if (!qword_27FECBEC8)
  {
    result = swift_getWitnessTable(byte_261A8D794, &type metadata for Expression.ParseError, v0, v1);
    atomic_store(result, &qword_27FECBEC8);
  }

  return result;
}

_BYTE *sub_261A842BC@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
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

uint64_t sub_261A8433C(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x277D84F90];
  v12 = MEMORY[0x277D84F90];
  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = (a2 + 56);
    while (1)
    {
      v3 = *(v10 - 3);
      v4 = *(v10 - 2);
      v5 = *(v10 - 1);
      v6 = *v10;
      sub_261A77318(v3, v4, v5, *v10);
      sub_261A7FEE4(&v12, a1, v3, v4, v5, v6);
      if (v2)
      {
        goto LABEL_9;
      }

      v10 += 32;
      sub_261A773F0(v3, v4, v5, v6);
      if (!--v9)
      {
        result = v12;
        break;
      }
    }
  }

  v11 = *(result + 16);
  if (!v11)
  {
    __break(1u);
    return result;
  }

  if (v11 != 1)
  {
    __break(1u);
LABEL_9:
    sub_261A773F0(v3, v4, v5, v6);
  }

  return result;
}

uint64_t sub_261A84448(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_261A81300(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_261A844B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v28 = MEMORY[0x277D84F90];
    sub_261A3EFB0(0, v1, 0);
    v3 = (a1 + 56);
    do
    {
      v4 = *(v3 - 3);
      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      if (*v3 > 1u)
      {
        if (*v3 == 2)
        {
          v26 = 2238582;
          v27 = 0xE300000000000000;

          MEMORY[0x2667168A0](v4, v5);
          MEMORY[0x2667168A0](2108450, 0xE300000000000000);
          v7 = sub_261A85B94();
          MEMORY[0x2667168A0](v7);

          MEMORY[0x2667168A0](41, 0xE100000000000000);
          v8 = v4;
          v9 = v5;
          v10 = v6;
          v11 = 2;
LABEL_9:
          sub_261A773F0(v8, v9, v10, v11);
          goto LABEL_10;
        }

        v17 = *(v3 - 3);
        if (v17 > 5)
        {
          if (*(v3 - 3) > 8u)
          {
            v12 = 0xE100000000000000;
            if (v17 == 9)
            {
              v13 = 45;
            }

            else if (v17 == 10)
            {
              v13 = 42;
            }

            else
            {
              v13 = 47;
            }
          }

          else if (v17 == 6)
          {
            v12 = 0xE100000000000000;
            v13 = 40;
          }

          else if (v17 == 7)
          {
            v12 = 0xE200000000000000;
            v13 = 10285;
          }

          else
          {
            v12 = 0xE100000000000000;
            v13 = 43;
          }

          goto LABEL_11;
        }

        v18 = 0x646E756F72;
        if (v17 != 4)
        {
          v18 = 0x636E757274;
        }

        v19 = 0xE500000000000000;
        v20 = 0xE500000000000000;
        if (v17 == 3)
        {
          v18 = 1818846563;
          v20 = 0xE400000000000000;
        }

        v21 = 7889261;
        if (v17 == 1)
        {
          v19 = 0xE300000000000000;
        }

        else
        {
          v21 = 0x726F6F6C66;
        }

        if (!*(v3 - 3))
        {
          v21 = 7235949;
          v19 = 0xE300000000000000;
        }

        if (*(v3 - 3) <= 2u)
        {
          v22 = v21;
        }

        else
        {
          v22 = v18;
        }

        if (*(v3 - 3) <= 2u)
        {
          v23 = v19;
        }

        else
        {
          v23 = v20;
        }

        v26 = v22;
        v27 = v23;

        MEMORY[0x2667168A0](40, 0xE100000000000000);
      }

      else
      {
        if (*v3)
        {
          v26 = 2238582;
          v27 = 0xE300000000000000;

          MEMORY[0x2667168A0](v4, v5);
          MEMORY[0x2667168A0](10530, 0xE200000000000000);
          v8 = v4;
          v9 = v5;
          v10 = v6;
          v11 = 1;
          goto LABEL_9;
        }

        v26 = 0;
        v27 = 0xE000000000000000;
        sub_261A85704();
      }

LABEL_10:
      v13 = v26;
      v12 = v27;
LABEL_11:
      v15 = *(v28 + 16);
      v14 = *(v28 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_261A3EFB0((v14 > 1), v15 + 1, 1);
      }

      v3 += 32;
      *(v28 + 16) = v15 + 1;
      v16 = v28 + 16 * v15;
      *(v16 + 32) = v13;
      *(v16 + 40) = v12;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAF58, &qword_261A87428);
  sub_261A84808();
  v24 = sub_261A85474();

  return v24;
}

unint64_t sub_261A84808()
{
  result = qword_27FECAF60;
  if (!qword_27FECAF60)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FECAF58, &qword_261A87428);
    result = swift_getWitnessTable(MEMORY[0x277D83958], v3, v0, v1);
    atomic_store(result, &qword_27FECAF60);
  }

  return result;
}

uint64_t sub_261A84878(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_261A848C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t getEnumTagSinglePayload for Operator(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF5 && a1[16])
  {
    return (*a1 + 245);
  }

  v3 = *a1;
  if (v3 >= 6)
  {
    v4 = v3 - 5;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 7)
  {
    return v4 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Operator(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF4)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 245;
    if (a3 >= 0xF5)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF5)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 11;
    }
  }

  return result;
}

uint64_t sub_261A849AC(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 6)
  {
    return v1 - 5;
  }

  else
  {
    return 0;
  }
}

void *sub_261A849C0(void *result, unsigned int a2)
{
  if (a2 > 0xFA)
  {
    *result = a2 - 251;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = a2 + 5;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7Recount10ExpressionV10ParseErrorO(uint64_t a1)
{
  if ((*(a1 + 24) & 8) != 0)
  {
    return (*a1 + 8);
  }

  else
  {
    return *(a1 + 24) & 0xF;
  }
}

uint64_t sub_261A84A10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 25))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 24);
  if (v3 <= 8)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_261A84A58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_261A84AA0(uint64_t result, unsigned int a2)
{
  v2 = a2 - 8;
  if (a2 >= 8)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 8;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_261A84AD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_261A84B20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

unint64_t sub_261A84B9C()
{
  result = qword_27FECBED0;
  if (!qword_27FECBED0)
  {
    result = swift_getWitnessTable(byte_261A8D7E0, &type metadata for Function, v0, v1);
    atomic_store(result, &qword_27FECBED0);
  }

  return result;
}

uint64_t CountingMode.Trigger.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t CountingMode.trigger(counter:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*(v1 + 200) + 16) > result)
  {
  }

  __break(1u);
  return result;
}

uint64_t static CountingMode.Threshold.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v4 || (v5 = sub_261A85BA4(), result = 0, (v5 & 1) != 0))
  {
    if (a1[13] == a2[13] && a1[14] == a2[14])
    {
      return 1;
    }

    else
    {

      return sub_261A85BA4();
    }
  }

  return result;
}

uint64_t CountingMode.Threshold.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CountingMode.Threshold.synopsis.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t CountingMode.Threshold.documentation.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t CountingMode.Threshold.nextCountingModeID.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t CountingMode.Threshold.nextCountingModeName.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t CountingMode.Threshold.hash(into:)(uint64_t a1)
{
  sub_261A85554();

  return sub_261A85554();
}

void *CountingMode.Threshold.deinit()
{

  return v0;
}

uint64_t CountingMode.Threshold.__deallocating_deinit()
{
  CountingMode.Threshold.deinit();

  return MEMORY[0x2821FE8D8](v0, 128, 7);
}

uint64_t CountingMode.Threshold.hashValue.getter()
{
  sub_261A85C44();
  sub_261A85554();
  sub_261A85554();
  return sub_261A85C84();
}

uint64_t sub_261A84F54()
{
  sub_261A85C44();
  sub_261A85554();
  sub_261A85554();
  return sub_261A85C84();
}

uint64_t sub_261A84FA8(uint64_t a1)
{
  sub_261A85554();

  return sub_261A85554();
}

uint64_t sub_261A84FEC(uint64_t a1)
{
  sub_261A85C44();
  sub_261A85554();
  sub_261A85554();
  return sub_261A85C84();
}

unint64_t sub_261A85040()
{
  result = qword_27FECBED8;
  if (!qword_27FECBED8)
  {
    v3 = type metadata accessor for CountingMode.Threshold();
    result = swift_getWitnessTable(protocol conformance descriptor for CountingMode.Threshold, v3, v0, v1);
    atomic_store(result, &qword_27FECBED8);
  }

  return result;
}

uint64_t sub_261A850B8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == v3[3];
  if (v4 || (v5 = sub_261A85BA4(), result = 0, (v5 & 1) != 0))
  {
    if (*(v2 + 104) == v3[13] && *(v2 + 112) == v3[14])
    {
      return 1;
    }

    else
    {

      return sub_261A85BA4();
    }
  }

  return result;
}