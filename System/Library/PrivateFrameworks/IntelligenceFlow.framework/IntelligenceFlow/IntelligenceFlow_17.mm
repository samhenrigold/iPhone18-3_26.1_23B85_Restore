uint64_t sub_1DD84EB88(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1DD710A9C(&qword_1ECD0FA80, &qword_1DD881480);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1DD84EC74(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DD710A9C(&qword_1ECD10318, &qword_1DD884D38);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_1DD84ED74()
{
  sub_1DD6DEB38();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v44 = sub_1DD710A9C(&qword_1ECD0FA80, &qword_1DD881480);
  sub_1DD6DDEAC();
  v41 = v8;
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DE21C();
  v43 = (v10 - v11);
  MEMORY[0x1EEE9AC00](v12);
  v42 = &v36 - v13;
  v14 = v1 + 64;
  v15 = -1 << *(v1 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(v1 + 64);
  if (!v5)
  {
    v19 = 0;
LABEL_22:
    *v7 = v1;
    v7[1] = v14;
    v7[2] = ~v15;
    v7[3] = v19;
    v7[4] = v17;
    sub_1DD6DFED0();
    return;
  }

  if (!v3)
  {
    v19 = 0;
    goto LABEL_22;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v37 = -1 << *(v1 + 32);
    v38 = v7;
    v18 = 0;
    v19 = 0;
    v20 = (63 - v15) >> 6;
    v39 = v1;
    v40 = v3;
    while (1)
    {
      if (v18 >= v3)
      {
        goto LABEL_25;
      }

      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_26;
      }

      if (!v17)
      {
        while (1)
        {
          v22 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v22 >= v20)
          {
            v17 = 0;
            v7 = v38;
            goto LABEL_20;
          }

          v17 = *(v14 + 8 * v22);
          ++v19;
          if (v17)
          {
            v45 = v5;
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v45 = v5;
      v22 = v19;
LABEL_16:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = v23 | (v22 << 6);
      v25 = *(v1 + 48);
      v26 = *(v1 + 56);
      v27 = (v25 + 16 * v24);
      v28 = *v27;
      v29 = v27[1];
      sub_1DD874FA0();
      sub_1DD6DE1C4();
      v31 = v26 + *(v30 + 72) * v24;
      v32 = v43;
      (*(v30 + 16))(v43 + *(v44 + 48), v31);
      *v32 = v28;
      v32[1] = v29;
      v33 = v32;
      v34 = v42;
      sub_1DD84F90C(v33, v42, &qword_1ECD0FA80, &qword_1DD881480);
      v35 = v45;
      sub_1DD84F90C(v34, v45, &qword_1ECD0FA80, &qword_1DD881480);
      v3 = v40;
      if (v21 == v40)
      {
        break;
      }

      v5 = v35 + *(v41 + 72);

      v18 = v21;
      v19 = v22;
      v1 = v39;
    }

    v19 = v22;
    v7 = v38;
    v1 = v39;
LABEL_20:
    v15 = v37;
    goto LABEL_22;
  }

LABEL_27:
  __break(1u);
}

void sub_1DD84F010(const void *a1, uint64_t a2)
{
  v42 = a1;
  v45 = sub_1DD874FA0();
  v3 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DD710A9C(&qword_1ECD151C8, &qword_1DD8A70A8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v43 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v36 - v8;
  v10 = a2 + 64;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 64);
  v14 = (v11 + 63) >> 6;
  v36[1] = v3 + 16;
  v15 = (v3 + 32);
  v38 = v3;
  v39 = a2;
  v41 = (v3 + 8);

  v16 = 0;
  v17 = 0;
  v37 = v9;
  v36[0] = v3 + 32;
  for (i = a2 + 64; ; v10 = i)
  {
    v46 = v16;
    if (!v13)
    {
      break;
    }

    v18 = v17;
LABEL_11:
    v20 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v21 = v20 | (v18 << 6);
    v22 = v38;
    v23 = (*(v39 + 48) + 16 * v21);
    v25 = *v23;
    v24 = v23[1];
    v27 = v44;
    v26 = v45;
    (*(v38 + 16))(v44, *(v39 + 56) + *(v38 + 72) * v21, v45);
    v28 = sub_1DD710A9C(&qword_1ECD0FA80, &qword_1DD881480);
    v29 = *(v28 + 48);
    v30 = v43;
    *v43 = v25;
    *(v30 + 1) = v24;
    v19 = v30;
    v31 = v27;
    v15 = v36[0];
    (*(v22 + 32))(&v30[v29], v31, v26);
    sub_1DD6E5E68(v19, 0, 1, v28);

    v9 = v37;
LABEL_12:
    sub_1DD84F90C(v19, v9, &qword_1ECD151C8, &qword_1DD8A70A8);
    v32 = sub_1DD710A9C(&qword_1ECD0FA80, &qword_1DD881480);
    if (sub_1DD6E5ED0(v9, 1, v32) == 1)
    {

      MEMORY[0x1E12B5570](v46);
      return;
    }

    v34 = v44;
    v33 = v45;
    (*v15)(v44, &v9[*(v32 + 48)], v45);
    memcpy(__dst, v42, sizeof(__dst));
    _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();

    sub_1DD84F8C4(&qword_1ECD163A0, MEMORY[0x1E69DAE88], MEMORY[0x1E69DAE98]);
    sub_1DD8750C0();
    (*v41)(v34, v33);
    v16 = sub_1DD875B60() ^ v46;
  }

  v19 = v43;
  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= v14)
    {
      v35 = sub_1DD710A9C(&qword_1ECD0FA80, &qword_1DD881480);
      sub_1DD6E5E68(v19, 1, 1, v35);
      v13 = 0;
      goto LABEL_12;
    }

    v13 = *(v10 + 8 * v18);
    ++v17;
    if (v13)
    {
      v17 = v18;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1DD84F408(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TypedValue.Object(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD84F46C(uint64_t a1)
{
  v2 = type metadata accessor for TypedValue.Object(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *sub_1DD84F520(_BYTE *result, int a2, int a3)
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

void sub_1DD84F5F4(uint64_t a1)
{
  sub_1DD875010();
  if (v1 <= 0x3F)
  {
    sub_1DD84F678(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DD84F678(uint64_t a1)
{
  if (!qword_1EE018D38)
  {
    sub_1DD874FA0();
    v1 = sub_1DD875090();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE018D38);
    }
  }
}

_BYTE *_s6ObjectV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD84F7C0()
{
  result = qword_1ECD16388;
  if (!qword_1ECD16388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16388);
  }

  return result;
}

unint64_t sub_1DD84F818()
{
  result = qword_1ECD16390;
  if (!qword_1ECD16390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16390);
  }

  return result;
}

unint64_t sub_1DD84F870()
{
  result = qword_1ECD16398;
  if (!qword_1ECD16398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16398);
  }

  return result;
}

uint64_t sub_1DD84F8C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DD84F90C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1DD710A9C(a3, a4);
  sub_1DD6DE1C4();
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1DD84F984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = sub_1DD710A9C(&qword_1ECD102D8, &unk_1DD884CF0);
  sub_1DD6DEA10(v9);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DE340();
  v11 = sub_1DD710A9C(&qword_1ECD0E350, &qword_1DD8AF8B0);
  sub_1DD6DDEAC();
  v13 = v12;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v22 - v15;
  if (sub_1DD6E5ED0(a1, 1, v11) == 1)
  {
    sub_1DD6FC560(a1, &qword_1ECD102D8, &unk_1DD884CF0);
    sub_1DD85381C(a2, a3, v4);

    v17 = sub_1DD6E6218();
    return sub_1DD6FC560(v17, v18, v19);
  }

  else
  {
    (*(v13 + 32))(v16, a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v5;
    sub_1DD854530(v16, a2, a3, isUniquelyReferenced_nonNull_native);

    *v5 = v23;
  }

  return result;
}

uint64_t sub_1DD84FB30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1DD710A9C(&qword_1ECD16400, &qword_1DD8AF028);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for ClientAction(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1DD6E5ED0(a1, 1, v14) == 1)
  {
    sub_1DD6FC560(a1, &qword_1ECD16400, &qword_1DD8AF028);
    sub_1DD85397C(a2, a3, v10);

    return sub_1DD6FC560(v10, &qword_1ECD16400, &qword_1DD8AF028);
  }

  else
  {
    sub_1DD6E5A0C(a1, v13, type metadata accessor for ClientAction);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v4;
    sub_1DD8547F0(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v4 = v18;
  }

  return result;
}

uint64_t sub_1DD84FCD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  sub_1DD76C5CC(0, v1, 0);
  v2 = v26;
  result = sub_1DD8563D0(a1);
  v6 = result;
  v8 = v7;
  v9 = 0;
  v23 = a1 + 64;
  v21 = v1;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v6 < 1 << *(a1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v23 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_23;
      }

      if (*(a1 + 36) != v8)
      {
        goto LABEL_24;
      }

      v22 = v5;
      memcpy(__dst, (*(a1 + 56) + 104 * v6), 0x51uLL);
      sub_1DD854B5C(__dst, v24);
      v26 = v2;
      v12 = *(v2 + 16);
      v11 = *(v2 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1DD76C5CC((v11 > 1), v12 + 1, 1);
        v2 = v26;
      }

      *(v2 + 16) = v12 + 1;
      result = memcpy((v2 + 88 * v12 + 32), __dst, 0x51uLL);
      v13 = 1 << *(a1 + 32);
      if (v6 >= v13)
      {
        goto LABEL_25;
      }

      v14 = *(v23 + 8 * v10);
      if ((v14 & (1 << v6)) == 0)
      {
        goto LABEL_26;
      }

      if (*(a1 + 36) != v8)
      {
        goto LABEL_27;
      }

      v15 = v14 & (-2 << (v6 & 0x3F));
      if (v15)
      {
        v13 = __clz(__rbit64(v15)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v16 = v10 << 6;
        v17 = v10 + 1;
        v18 = (a1 + 72 + 8 * v10);
        while (v17 < (v13 + 63) >> 6)
        {
          v20 = *v18++;
          v19 = v20;
          v16 += 64;
          ++v17;
          if (v20)
          {
            result = sub_1DD856410(v6, v8, v22 & 1);
            v13 = __clz(__rbit64(v19)) + v16;
            goto LABEL_18;
          }
        }

        result = sub_1DD856410(v6, v8, v22 & 1);
      }

LABEL_18:
      if (++v9 == v21)
      {
        return v2;
      }

      v5 = 0;
      v8 = *(a1 + 36);
      v6 = v13;
      if (v13 < 0)
      {
        break;
      }
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
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1DD84FF2C(uint64_t a1)
{
  v3 = type metadata accessor for ClientAction(0);
  v33 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v32 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ClientAction.Definition(0);
  v31 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    return v9;
  }

  v28[1] = v1;
  v37 = MEMORY[0x1E69E7CC0];
  sub_1DD76C60C(0, v8, 0);
  v9 = v37;
  result = sub_1DD8563D0(a1);
  v13 = result;
  v14 = 0;
  v36 = a1 + 64;
  v29 = a1 + 72;
  v30 = v8;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v13 < 1 << *(a1 + 32))
    {
      v15 = v13 >> 6;
      if ((*(v36 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_23;
      }

      if (*(a1 + 36) != v11)
      {
        goto LABEL_24;
      }

      v34 = v12;
      v35 = v11;
      v16 = v32;
      sub_1DD6E2040(*(a1 + 56) + *(v33 + 72) * v13, v32, type metadata accessor for ClientAction);
      sub_1DD6E2040(v16, v7, type metadata accessor for ClientAction.Definition);
      sub_1DD6E2098(v16, type metadata accessor for ClientAction);
      v37 = v9;
      v18 = *(v9 + 16);
      v17 = *(v9 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1DD76C60C(v17 > 1, v18 + 1, 1);
        v9 = v37;
      }

      *(v9 + 16) = v18 + 1;
      v19 = v7;
      result = sub_1DD6E5A0C(v7, v9 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v18, type metadata accessor for ClientAction.Definition);
      v20 = 1 << *(a1 + 32);
      if (v13 >= v20)
      {
        goto LABEL_25;
      }

      v21 = *(v36 + 8 * v15);
      if ((v21 & (1 << v13)) == 0)
      {
        goto LABEL_26;
      }

      if (*(a1 + 36) != v35)
      {
        goto LABEL_27;
      }

      v22 = v21 & (-2 << (v13 & 0x3F));
      if (v22)
      {
        v20 = __clz(__rbit64(v22)) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v15 << 6;
        v24 = v15 + 1;
        v25 = (v29 + 8 * v15);
        while (v24 < (v20 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_1DD856410(v13, v35, v34 & 1);
            v20 = __clz(__rbit64(v26)) + v23;
            goto LABEL_18;
          }
        }

        result = sub_1DD856410(v13, v35, v34 & 1);
      }

LABEL_18:
      if (++v14 == v30)
      {
        return v9;
      }

      v12 = 0;
      v11 = *(a1 + 36);
      v13 = v20;
      v7 = v19;
      if (v13 < 0)
      {
        break;
      }
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
LABEL_27:
  __break(1u);
  return result;
}

IntelligenceFlow::ClientEffect::Registry __swiftcall ClientEffect.Registry.init(clientEffects:)(Swift::OpaquePointer clientEffects)
{
  v3 = v1;
  v4 = MEMORY[0x1E69E7CC0];
  sub_1DD875080();

  v5 = *(clientEffects._rawValue + 2);
  if (v5)
  {
    v14 = v3;
    v18 = v4;
    sub_1DD76C5EC(0, v5, 0);
    v6 = v5 - 1;
    for (i = 32; ; i += 104)
    {
      memcpy(__dst, clientEffects._rawValue + i, sizeof(__dst));
      v9 = __dst[4];
      v8 = __dst[5];
      memcpy(__src, clientEffects._rawValue + i, sizeof(__src));
      sub_1DD854B24(__dst, v15);
      v18 = v4;
      v11 = *(v4 + 16);
      v10 = *(v4 + 24);

      if (v11 >= v10 >> 1)
      {
        sub_1DD76C5EC((v10 > 1), v11 + 1, 1);
        v4 = v18;
      }

      *(v4 + 16) = v11 + 1;
      v12 = (v4 + 120 * v11);
      v12[4] = v9;
      v12[5] = v8;
      memcpy(v12 + 6, __src, 0x68uLL);
      if (!v6)
      {
        break;
      }

      --v6;
    }

    v3 = v14;
  }

  else
  {
  }

  result.clientEffects._rawValue = sub_1DD850480(v4, &qword_1ECD16480, &unk_1DD8AF8E0, sub_1DD854C88);
  v3->clientEffects._rawValue = result.clientEffects._rawValue;
  return result;
}

uint64_t sub_1DD850480(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    sub_1DD710A9C(a2, a3);
    v5 = sub_1DD8757E0();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC8];
  }

  v8 = v5;

  a4(v6, 1, &v8);

  return v8;
}

uint64_t ClientEffect.Registry.register(definition:run:)(void *__src, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  memcpy(__dst, __src, 0x51uLL);
  v8 = __dst[4];
  v9 = __dst[5];
  memcpy(v13, __src, 0x51uLL);
  v14 = a2;
  v15 = a3;

  sub_1DD854B5C(__dst, v12);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12[0] = *v4;
  sub_1DD8546B0(v13, v8, v9, isUniquelyReferenced_nonNull_native);

  *v4 = v12[0];
  return result;
}

uint64_t ClientEffect.Registry.run(clientEffect:client:)()
{
  sub_1DD6DDF4C();
  v1[2] = v2;
  v1[3] = v3;
  v4 = sub_1DD874820();
  v1[4] = v4;
  v1[5] = *(v4 - 8);
  v1[6] = sub_1DD6DEB50();
  v5 = type metadata accessor for SessionClientMessage(0);
  v1[7] = v5;
  sub_1DD6DEA10(v5);
  v1[8] = sub_1DD6DEB50();
  v6 = type metadata accessor for MessagePayload(0);
  v1[9] = v6;
  sub_1DD6DEA10(v6);
  v1[10] = sub_1DD6F0A9C();
  v1[11] = swift_task_alloc();
  v7 = type metadata accessor for MessagePayload.ClientEffectResolved.Result(0);
  sub_1DD6DEA10(v7);
  v8 = sub_1DD6DEB50();
  v9 = *v0;
  v1[12] = v8;
  v1[13] = v9;
  v10 = sub_1DD856518();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DD850720()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 16);
  v3 = type metadata accessor for MessagePayload.ClientEffectInvocation(0);
  v4 = (v2 + *(v3 + 32));
  v6 = *v4;
  v5 = v4[1];
  if (*(v1 + 16) && (v7 = v3, v8 = sub_1DD6FB688(v6, v5), (v9 & 1) != 0))
  {
    v10 = *(v0 + 16);
    v11 = (*(*(v0 + 104) + 56) + 104 * v8);
    *(v0 + 112) = v11[1];
    *(v0 + 120) = v11[3];
    *(v0 + 128) = v11[5];
    *(v0 + 136) = v11[7];
    v12 = v11[8];
    *(v0 + 144) = v12;
    *(v0 + 152) = v11[9];
    v13 = v11[11];
    *(v0 + 160) = v11[12];
    *(v0 + 192) = *(v7 + 20);
    v14 = (v10 + *(v7 + 24));
    *(v0 + 168) = *v14;
    *(v0 + 176) = v14[1];

    sub_1DD854C0C(v12);

    v21 = (v13 + *v13);
    v15 = swift_task_alloc();
    *(v0 + 184) = v15;
    *v15 = v0;
    v15[1] = sub_1DD8509BC;
    v16 = *(v0 + 96);
    v17 = *(v0 + 16);

    return v21(v16, v17);
  }

  else
  {
    sub_1DD854BB8();
    swift_allocError();
    *v19 = v6;
    *(v19 + 8) = v5;
    *(v19 + 16) = 0;
    swift_willThrow();

    sub_1DD6DDF40();

    return v20();
  }
}

uint64_t sub_1DD8509BC()
{
  sub_1DD6DDF4C();
  sub_1DD6DF09C();
  v1 = *v0;
  sub_1DD6E04EC();
  *v2 = v1;

  v3 = sub_1DD856518();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DD850AA0()
{
  v23 = *(v0 + 168);
  v24 = *(v0 + 176);
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v20 = *(v0 + 192);
  v21 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 48);
  v5 = *(v0 + 32);
  v22 = *(v0 + 56);
  v6 = *(v0 + 16);
  v7 = *(*(v0 + 40) + 16);
  v7(v2, v6, v5);
  v8 = type metadata accessor for MessagePayload.ClientEffectResolved(0);
  sub_1DD6E2040(v1, v2 + *(v8 + 20), type metadata accessor for MessagePayload.ClientEffectResolved.Result);
  swift_storeEnumTagMultiPayload();
  v7(v4, v6 + v20, v5);
  sub_1DD6DE3A0();
  sub_1DD6E2040(v2, v21, v9);
  v7(v3, v4, v5);
  sub_1DD6E5A0C(v21, v3 + *(v22 + 24), type metadata accessor for MessagePayload);
  v10 = sub_1DD6E594C();
  v11(v10);
  v12 = (v3 + *(v22 + 20));
  *v12 = v23;
  v12[1] = v24;
  sub_1DD6FE380(v3);

  v13 = *(v0 + 144);
  v14 = *(v0 + 88);
  v15 = *(v0 + 64);

  sub_1DD854C20(v13);

  sub_1DD6DF4D8();
  sub_1DD6E2098(v15, v16);
  sub_1DD6E2238();
  sub_1DD6E2098(v14, v17);
  sub_1DD6E0E50();

  sub_1DD6DDF40();

  return v18();
}

void ClientAction.Definition.init(name:description:parameters:outputType:)()
{
  sub_1DD6DEB38();
  v1 = v0;
  v23 = v2;
  v24 = v3;
  v22 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_1DD874FC0();
  sub_1DD6DDEAC();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6DE4A8();
  v17 = v16 - v15;
  v18 = *(v13 + 16);
  v18(v16 - v15, v1, v11);
  v19 = type metadata accessor for ClientAction.Definition(0);
  v18(v10 + v19[7], v17, v11);
  v20 = *(v13 + 8);
  v20(v1, v11);
  v20(v17, v11);
  *v10 = v8;
  v10[1] = v6;
  v10[2] = v22;
  v10[3] = v23;
  v10[4] = v24;
  *(v10 + v19[11]) = 0;
  *(v10 + v19[8]) = 0;
  v21 = MEMORY[0x1E69E7CC0];
  *(v10 + v19[9]) = MEMORY[0x1E69E7CC0];
  *(v10 + v19[10]) = v21;
  sub_1DD6DFED0();
}

uint64_t ClientAction.Definition.init(name:description:parameters:outputType:isSiriXShim:isUndoable:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, char *a9@<X8>)
{
  v17 = type metadata accessor for ClientAction.Definition(0);
  v18 = v17[7];
  sub_1DD874FC0();
  sub_1DD6DF448();
  result = (*(v19 + 32))(&a9[v18], a6);
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  a9[v17[11]] = a7;
  a9[v17[8]] = a8;
  v21 = MEMORY[0x1E69E7CC0];
  *&a9[v17[9]] = MEMORY[0x1E69E7CC0];
  *&a9[v17[10]] = v21;
  return result;
}

void ClientAction.Definition.init(name:description:parameters:outputType:isUndoable:)()
{
  sub_1DD6DEB38();
  sub_1DD6E5E4C(v4, v5, v6, v7, v8, v9, v10);
  v12 = v11;
  v13 = sub_1DD874FC0();
  sub_1DD6DDEAC();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6DE4A8();
  v18 = sub_1DD6E65E0(v17);
  v0(v18);
  v19 = type metadata accessor for ClientAction.Definition(0);
  (v0)(v12 + v19[7], v3, v13);
  v20 = *(v15 + 8);
  v21 = sub_1DD6E594C();
  v20(v21);
  (v20)(v3, v13);
  *v12 = v2;
  v12[1] = v1;
  v12[2] = v23;
  v12[3] = v24;
  v12[4] = v25;
  *(v12 + v19[11]) = 0;
  *(v12 + v19[8]) = v26;
  v22 = MEMORY[0x1E69E7CC0];
  *(v12 + v19[9]) = MEMORY[0x1E69E7CC0];
  *(v12 + v19[10]) = v22;
  sub_1DD6DFED0();
}

uint64_t ClientAction.Definition.init(name:description:parameters:outputType:isUndoable:positiveExampleInvocations:negativeExampleInvocations:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  v14 = type metadata accessor for ClientAction.Definition(0);
  v15 = v14[7];
  sub_1DD874FC0();
  sub_1DD6DF448();
  result = (*(v16 + 32))(&a9[v15], a6);
  a9[v14[11]] = 0;
  a9[v14[8]] = a7;
  *&a9[v14[9]] = a8;
  *&a9[v14[10]] = a10;
  return result;
}

uint64_t ClientAction.Definition.init(name:description:parameters:outputType:isSiriXShim:isUndoable:positiveExampleInvocations:negativeExampleInvocations:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  v15 = type metadata accessor for ClientAction.Definition(0);
  v16 = v15[7];
  sub_1DD874FC0();
  sub_1DD6DF448();
  result = (*(v17 + 32))(&a9[v16], a6);
  a9[v15[11]] = a7;
  a9[v15[8]] = a8;
  *&a9[v15[9]] = a10;
  *&a9[v15[10]] = a11;
  return result;
}

void ClientAction.Definition.init(name:description:parameters:outputType:isSiriXShim:)()
{
  sub_1DD6DEB38();
  sub_1DD6E5E4C(v4, v5, v6, v7, v8, v9, v10);
  v12 = v11;
  v13 = sub_1DD874FC0();
  sub_1DD6DDEAC();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6DE4A8();
  v18 = sub_1DD6E65E0(v17);
  v0(v18);
  v19 = type metadata accessor for ClientAction.Definition(0);
  (v0)(v12 + v19[7], v3, v13);
  v20 = *(v15 + 8);
  v21 = sub_1DD6E594C();
  v20(v21);
  (v20)(v3, v13);
  *v12 = v2;
  v12[1] = v1;
  v12[2] = v23;
  v12[3] = v24;
  v12[4] = v25;
  *(v12 + v19[11]) = v26;
  *(v12 + v19[8]) = 0;
  v22 = MEMORY[0x1E69E7CC0];
  *(v12 + v19[9]) = MEMORY[0x1E69E7CC0];
  *(v12 + v19[10]) = v22;
  sub_1DD6DFED0();
}

uint64_t ClientAction.Definition.ParameterDefinition.init(name:description:valueType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  *(a6 + 3) = a4;
  sub_1DD6E38A4();
  sub_1DD6DF448();
  v10 = *(v9 + 32);

  return v10(&a6[v6], a5);
}

uint64_t static ClientAction.Definition.ParameterDefinition.== infix(_:_:)(uint64_t a1)
{
  sub_1DD6E1FC0(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1DD875A30() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v2 + 16) == *(v1 + 16) && *(v2 + 24) == *(v1 + 24);
  if (!v6 && (sub_1DD875A30() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ClientAction.Definition.ParameterDefinition(0);

  return sub_1DD874FB0();
}

uint64_t sub_1DD8514AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x70795465756C6176 && a2 == 0xE900000000000065)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD875A30();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1DD8515C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD8514AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD8515F0(uint64_t a1)
{
  v2 = sub_1DD6E11C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD85162C(uint64_t a1)
{
  v2 = sub_1DD6E11C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClientAction.Definition.ParameterDefinition.hash(into:)(uint64_t a1)
{
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  type metadata accessor for ClientAction.Definition.ParameterDefinition(0);
  sub_1DD874FC0();
  sub_1DD6E1518();
  sub_1DD6E1588(v1);
  return sub_1DD8750C0();
}

uint64_t ClientAction.Definition.ParameterDefinition.hashValue.getter()
{
  sub_1DD6DEDA4();
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  sub_1DD6E38A4();
  sub_1DD6E1518();
  sub_1DD6E1588(v0);
  sub_1DD8750C0();
  return sub_1DD875B60();
}

uint64_t sub_1DD851790(uint64_t a1)
{
  sub_1DD875B20();
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  sub_1DD874FC0();
  sub_1DD6E1588(&unk_1ECD163B8);
  sub_1DD8750C0();
  return sub_1DD875B60();
}

IntelligenceFlow::ClientAction::Definition::ExampleInvocationDefinition __swiftcall ClientAction.Definition.ExampleInvocationDefinition.init(phrases:expectedResult:)(Swift::OpaquePointer phrases, Swift::String_optional expectedResult)
{
  *v2 = phrases;
  *(v2 + 8) = expectedResult;
  result.expectedResult = expectedResult;
  result.phrases = phrases;
  return result;
}

uint64_t static ClientAction.Definition.ExampleInvocationDefinition.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1DD7152B8();
  if (v6)
  {
    if (v3)
    {
      if (v5)
      {
        v7 = v2 == v4 && v3 == v5;
        if (v7 || (sub_1DD875A30() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1DD851904(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73657361726870 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465746365707865 && a2 == 0xEE00746C75736552)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DD8519D4(char a1)
{
  if (a1)
  {
    return 0x6465746365707865;
  }

  else
  {
    return 0x73657361726870;
  }
}

uint64_t sub_1DD851A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD851904(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD851A48(uint64_t a1)
{
  v2 = sub_1DD854C34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD851A84(uint64_t a1)
{
  v2 = sub_1DD854C34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ClientAction.Definition.ExampleInvocationDefinition.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v3 = sub_1DD710A9C(&qword_1ECD163C8, &qword_1DD8AEFE8);
  sub_1DD6DDEAC();
  v5 = v4;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v11 - v7;
  v9 = *(v0 + 8);
  v11[1] = *(v0 + 16);
  v11[2] = v9;
  sub_1DD6DF224(v2, v2[3]);
  v10 = sub_1DD854C34();

  sub_1DD875BB0();
  v13 = 0;
  sub_1DD710A9C(&unk_1ECD16AD0, &qword_1DD8AEFF0);
  sub_1DD703A30(&qword_1EE015DC0);
  sub_1DD6DEA94();
  sub_1DD6DE334();
  sub_1DD8759D0();

  if (!v10)
  {
    v12 = 1;
    sub_1DD6DE334();
    sub_1DD875920();
  }

  (*(v5 + 8))(v8, v3);
  sub_1DD6E0C78();
}

uint64_t ClientAction.Definition.ExampleInvocationDefinition.hash(into:)(uint64_t a1)
{
  v2 = v1[2];
  sub_1DD85557C(a1, *v1);
  if (!v2)
  {
    return sub_1DD875B40();
  }

  sub_1DD875B40();

  return _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t ClientAction.Definition.ExampleInvocationDefinition.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[2];
  sub_1DD6DEDA4();
  sub_1DD85557C(v4, v1);
  sub_1DD875B40();
  if (v2)
  {
    _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  }

  return sub_1DD875B60();
}

void ClientAction.Definition.ExampleInvocationDefinition.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1DD6DED2C();
  v12 = v11;
  v14 = v13;
  sub_1DD710A9C(&qword_1ECD163D8, &qword_1DD8AEFF8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6DF224(v12, v12[3]);
  sub_1DD854C34();
  sub_1DD875B90();
  if (v10)
  {
    sub_1DD6E1EC8(v12);
  }

  else
  {
    sub_1DD710A9C(&unk_1ECD16AD0, &qword_1DD8AEFF0);
    sub_1DD703A30(&qword_1EE015DB8);
    sub_1DD8758D0();
    v16 = sub_1DD875820();
    v18 = v17;
    v19 = sub_1DD6DFF30();
    v20(v19);
    *v14 = a10;
    v14[1] = v16;
    v14[2] = v18;

    sub_1DD6E1EC8(v12);
  }

  sub_1DD6E0C78();
}

uint64_t sub_1DD851F70(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[2];
  sub_1DD875B20();
  sub_1DD85557C(v5, v2);
  sub_1DD875B40();
  if (v3)
  {
    _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  }

  return sub_1DD875B60();
}

uint64_t sub_1DD852108(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x795474757074756FLL && a2 == 0xEA00000000006570;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x62616F646E557369 && a2 == 0xEA0000000000656CLL;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001ALL && 0x80000001DD8B7A90 == a2;
            if (v10 || (sub_1DD875A30() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD00000000000001ALL && 0x80000001DD8B7AB0 == a2;
              if (v11 || (sub_1DD875A30() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x5358697269537369 && a2 == 0xEB000000006D6968)
              {

                return 7;
              }

              else
              {
                v13 = sub_1DD875A30();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1DD852398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD852108(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD8523C0(uint64_t a1)
{
  v2 = sub_1DD6DFE7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD8523FC(uint64_t a1)
{
  v2 = sub_1DD6DFE7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClientAction.Definition.hash(into:)(uint64_t a1)
{
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  sub_1DD855648(a1, *(v1 + 32));
  v3 = type metadata accessor for ClientAction.Definition(0);
  sub_1DD874FC0();
  sub_1DD6E1518();
  sub_1DD6E1588(v4);
  sub_1DD8750C0();
  sub_1DD875B40();
  sub_1DD855450(a1, *(v1 + *(v3 + 36)));
  sub_1DD855450(a1, *(v1 + *(v3 + 40)));
  return sub_1DD875B40();
}

uint64_t ClientAction.Definition.hashValue.getter()
{
  sub_1DD6DEDA4();
  ClientAction.Definition.hash(into:)(v1);
  return sub_1DD875B60();
}

uint64_t sub_1DD852560(uint64_t a1)
{
  sub_1DD875B20();
  ClientAction.Definition.hash(into:)(v2);
  return sub_1DD875B60();
}

uint64_t sub_1DD8525B4(uint64_t (*a1)(uint64_t))
{

  v3 = a1(v2);

  return v3;
}

IntelligenceFlow::ClientAction::Registry __swiftcall ClientAction.Registry.init(clientActions:)(Swift::OpaquePointer clientActions)
{
  sub_1DD6DEB38();
  v2 = v1;
  v4 = v3;
  v5 = sub_1DD710A9C(&qword_1ECD0FA50, &qword_1DD881450);
  sub_1DD6DDEAC();
  v7 = v6;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v26 - v9);
  v11 = type metadata accessor for ClientAction(0);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1DD875080();

  v13 = *(v2 + 16);
  if (v13)
  {
    v27 = v4;
    v28 = v12;
    sub_1DD76C664(0, v13, 0);
    v12 = v28;
    v14 = *(v11 - 8);
    v15 = *(v14 + 80);
    v26[1] = v2;
    v16 = v2 + ((v15 + 32) & ~v15);
    v17 = *(v14 + 72);
    do
    {
      v18 = (v10 + *(v5 + 48));
      v19 = sub_1DD6E594C();
      sub_1DD6E2040(v19, v20, v21);
      v22 = v18[1];
      *v10 = *v18;
      v10[1] = v22;
      v28 = v12;
      v23 = *(v12 + 16);
      v24 = *(v12 + 24);

      if (v23 >= v24 >> 1)
      {
        sub_1DD76C664((v24 > 1), v23 + 1, 1);
        v12 = v28;
      }

      *(v12 + 16) = v23 + 1;
      sub_1DD855860(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v23);
      v16 += v17;
      --v13;
    }

    while (v13);

    v4 = v27;
  }

  else
  {
  }

  *v4 = sub_1DD850480(v12, &qword_1ECD16470, &qword_1DD8AF8C8, sub_1DD854FD0);
  sub_1DD6DFED0();
  return result;
}

uint64_t ClientAction.Registry.register(definition:run:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1DD710A9C(&qword_1ECD16400, &qword_1DD8AF028);
  sub_1DD6DEA10(v7);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DE340();
  sub_1DD6E093C();
  sub_1DD6E2040(a1, v3, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = type metadata accessor for ClientAction(0);
  v12 = (v3 + *(v11 + 20));
  *v12 = &unk_1DD8AF038;
  v12[1] = v10;
  sub_1DD6E5E68(v3, 0, 1, v11);

  v13 = sub_1DD6E6218();
  return sub_1DD84FB30(v13, v14, v15);
}

{
  v7 = sub_1DD710A9C(&qword_1ECD16400, &qword_1DD8AF028);
  sub_1DD6DEA10(v7);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DE340();
  sub_1DD6E093C();
  sub_1DD6E2040(a1, v3, v9);
  v10 = type metadata accessor for ClientAction(0);
  v11 = (v3 + *(v10 + 20));
  *v11 = a2;
  v11[1] = a3;
  sub_1DD6E5E68(v3, 0, 1, v10);

  v12 = sub_1DD6E6218();
  return sub_1DD84FB30(v12, v13, v14);
}

uint64_t sub_1DD852944(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1DD852A48;

  return v8(a1, a2);
}

uint64_t sub_1DD852A48()
{
  sub_1DD6DDF4C();
  sub_1DD6DF09C();
  v1 = *v0;
  sub_1DD6E04EC();
  *v2 = v1;

  sub_1DD6DDF40();

  return v3();
}

uint64_t ClientAction.Registry.run(action:client:sessionId:clientRequestId:)()
{
  sub_1DD6DDF4C();
  v1[5] = v2;
  v1[6] = v3;
  v1[3] = v4;
  v1[4] = v5;
  v1[2] = v6;
  v7 = sub_1DD874820();
  v1[7] = v7;
  v1[8] = *(v7 - 8);
  v1[9] = sub_1DD6F0A9C();
  v1[10] = swift_task_alloc();
  v8 = sub_1DD710A9C(&qword_1ECD11798, &qword_1DD889718);
  sub_1DD6DEA10(v8);
  v1[11] = sub_1DD6DEB50();
  v9 = type metadata accessor for MessagePayload(0);
  v1[12] = v9;
  sub_1DD6DEA10(v9);
  v1[13] = sub_1DD6F0A9C();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v10 = type metadata accessor for ActionOutcome(0);
  sub_1DD6DEA10(v10);
  v1[16] = sub_1DD6F0A9C();
  v1[17] = swift_task_alloc();
  v11 = type metadata accessor for SessionClientMessage(0);
  v1[18] = v11;
  sub_1DD6DEA10(v11);
  v1[19] = sub_1DD6F0A9C();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v12 = sub_1DD710A9C(&qword_1ECD16400, &qword_1DD8AF028);
  sub_1DD6DEA10(v12);
  v1[22] = sub_1DD6DEB50();
  v13 = type metadata accessor for ClientAction(0);
  v1[23] = v13;
  sub_1DD6DEA10(v13);
  v14 = sub_1DD6DEB50();
  v15 = *v0;
  v1[24] = v14;
  v1[25] = v15;
  v16 = sub_1DD856518();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

void sub_1DD852DE4()
{
  v1 = v0[25];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[2];
  v5 = (v4 + *(type metadata accessor for MessagePayload.ClientAction(0) + 20));
  v7 = *v5;
  v6 = v5[1];
  sub_1DD71AAA8(*v5, v6, v1, v3);
  if (sub_1DD6E5ED0(v3, 1, v2) == 1)
  {
    sub_1DD6FC560(v0[22], &qword_1ECD16400, &qword_1DD8AF028);
    sub_1DD855998();
    swift_allocError();
    *v8 = v7;
    *(v8 + 8) = v6;
    *(v8 + 16) = 0;
    swift_willThrow();

    sub_1DD6DDF40();
    sub_1DD6E188C();

    __asm { BRAA            X1, X16 }
  }

  sub_1DD6E5A0C(v0[22], v0[24], type metadata accessor for ClientAction);
  v11 = swift_task_alloc();
  v0[26] = v11;
  *v11 = v0;
  v11[1] = sub_1DD85307C;
  sub_1DD6E188C();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_1DD85307C()
{
  sub_1DD6DDF4C();
  sub_1DD6DF09C();
  v2 = *v1;
  sub_1DD6E04EC();
  *v3 = v2;
  *(v4 + 216) = v0;

  if (v0)
  {
    v5 = sub_1DD853530;
  }

  else
  {
    v5 = sub_1DD853180;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DD853180()
{
  v28 = v0[18];
  v29 = v0[17];
  v2 = v0[15];
  v1 = v0[16];
  v22 = v0[14];
  v3 = v0[11];
  v24 = v0[10];
  v25 = v0[20];
  v4 = v0[7];
  v30 = v0[8];
  v31 = v0[21];
  v26 = v0[6];
  v27 = v0[5];
  v23 = v0[4];
  v5 = *(v30 + 16);
  v5(v2, v0[2], v4);
  v6 = sub_1DD6DDEFC();
  sub_1DD6E2040(v6, v7, v8);
  v9 = type metadata accessor for ResponseManifest(0);
  sub_1DD6E5E68(v3, 1, 1, v9);
  v10 = type metadata accessor for MessagePayload.ClientActionResult(0);
  v11 = *(v10 + 24);
  sub_1DD6E5E68(v2 + v11, 1, 1, v9);
  ActionOutcome.asStatementOutcome.getter((v2 + *(v10 + 20)));
  sub_1DD6E2098(v1, type metadata accessor for ActionOutcome);
  sub_1DD8559EC(v3, v2 + v11);
  swift_storeEnumTagMultiPayload();
  v5(v24, v23, v4);
  sub_1DD6E2040(v2, v22, type metadata accessor for MessagePayload);
  v5(v25, v24, v4);
  sub_1DD6E2040(v22, v25 + *(v28 + 24), type metadata accessor for MessagePayload);
  if (v26)
  {
    v12 = v27;
  }

  else
  {
    v12 = 0;
  }

  if (v26)
  {
    v13 = v26;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  sub_1DD6E2098(v22, type metadata accessor for MessagePayload);
  (*(v30 + 8))(v24, v4);
  sub_1DD6E2098(v29, type metadata accessor for ActionOutcome);
  v14 = (v25 + *(v28 + 20));
  *v14 = v12;
  v14[1] = v13;
  sub_1DD6DE0DC();
  sub_1DD6E5A0C(v25, v31, v15);
  sub_1DD6E2098(v2, type metadata accessor for MessagePayload);
  v16 = v0[27];
  sub_1DD6FE380(v0[21]);
  if (v16)
  {
    sub_1DD6DF4D8();
    sub_1DD6E2098(v17, v18);
    sub_1DD6E0640();
    sub_1DD8564F8();
  }

  else
  {
    sub_1DD6FBE98();

    sub_1DD6DF4D8();
    sub_1DD6E2098(v4, v20);
    sub_1DD6E0640();
  }

  sub_1DD6DDF40();

  return v19();
}

void sub_1DD853530()
{
  v1 = v0[27];
  v2 = v0[19];
  v3 = v0[13];
  v21 = v0[18];
  v5 = v0[8];
  v4 = v0[9];
  v7 = v0[6];
  v6 = v0[7];
  v22 = v0[5];
  v23 = v0[21];
  v8 = *(v5 + 16);
  v8(v4, v0[4], v6);
  sub_1DD710A9C(&qword_1ECD10C28, &qword_1DD889130);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DD8782E0;
  *(v9 + 32) = v1;
  *(v9 + 40) = 0;
  *v3 = v1;
  *(v3 + 8) = 0;
  *(v3 + 16) = v9;
  swift_storeEnumTagMultiPayload();
  v8(v2, v4, v6);
  sub_1DD6DE3A0();
  sub_1DD6E2040(v3, v2 + v10, v11);
  if (v7)
  {
    v12 = v22;
  }

  else
  {
    v12 = 0;
  }

  if (v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  v14 = v1;
  sub_1DD6E2238();
  sub_1DD6E2098(v3, v15);
  (*(v5 + 8))(v4, v6);
  v16 = (v2 + *(v21 + 20));
  *v16 = v12;
  v16[1] = v13;
  sub_1DD6DE0DC();
  sub_1DD6E5A0C(v2, v23, v17);
  sub_1DD6FE380(v0[21]);
  sub_1DD6FBE98();

  sub_1DD6DF4D8();
  sub_1DD6E2098(v7, v18);
  sub_1DD6E0640();

  sub_1DD6DDF40();
  sub_1DD6E188C();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1DD85381C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_1DD6FB688(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_1DD710A9C(&qword_1ECD16460, &qword_1DD8AF8B8);
    sub_1DD875770();

    v8 = *(v14 + 56);
    v9 = sub_1DD710A9C(&qword_1ECD0E350, &qword_1DD8AF8B0);
    (*(*(v9 - 8) + 32))(a3, v8 + *(*(v9 - 8) + 72) * v7, v9);
    sub_1DD875790();
    *v3 = v14;
    v10 = a3;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = sub_1DD710A9C(&qword_1ECD0E350, &qword_1DD8AF8B0);
    v10 = a3;
    v11 = 1;
  }

  return sub_1DD6E5E68(v10, v11, 1, v12);
}

uint64_t sub_1DD85397C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_1DD6FB688(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_1DD710A9C(&qword_1ECD16468, &qword_1DD8AF8C0);
    sub_1DD875770();

    v8 = *(v14 + 56);
    v9 = type metadata accessor for ClientAction(0);
    sub_1DD6E5A0C(v8 + *(*(v9 - 8) + 72) * v7, a3, type metadata accessor for ClientAction);
    sub_1DD875790();
    *v3 = v14;
    v10 = a3;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = type metadata accessor for ClientAction(0);
    v10 = a3;
    v11 = 1;
  }

  return sub_1DD6E5E68(v10, v11, 1, v12);
}

void sub_1DD853AC4()
{
  sub_1DD6DEB38();
  v1 = v0;
  v3 = v2;
  v46 = sub_1DD874FA0();
  sub_1DD6DDEAC();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DE4A8();
  v45 = v8 - v7;
  v9 = *v0;
  sub_1DD710A9C(&qword_1ECD16488, &unk_1DD8AF8F0);
  v43 = v3;
  v10 = sub_1DD8757D0();
  v11 = v10;
  if (!*(v9 + 16))
  {
LABEL_32:

LABEL_33:
    *v1 = v11;
    sub_1DD6DFED0();
    return;
  }

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
  v40 = (v5 + 16);
  v41 = v9;
  v42 = v5;
  v44 = (v5 + 32);
  v18 = v10 + 64;
  if (!v16)
  {
LABEL_7:
    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v12 >= v17)
      {
        break;
      }

      v21 = v13[v12];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v16 = (v21 - 1) & v21;
        goto LABEL_12;
      }
    }

    if ((v43 & 1) == 0)
    {

      v1 = v0;
      goto LABEL_33;
    }

    v39 = 1 << *(v9 + 32);
    v1 = v0;
    if (v39 >= 64)
    {
      sub_1DD722480(0, (v39 + 63) >> 6, v13);
    }

    else
    {
      *v13 = -1 << v39;
    }

    *(v9 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_12:
    v22 = v19 | (v12 << 6);
    v23 = *(v9 + 56);
    v24 = (*(v9 + 48) + 16 * v22);
    v26 = *v24;
    v25 = v24[1];
    v27 = *(v42 + 72);
    v28 = v23 + v27 * v22;
    if (v43)
    {
      (*v44)(v45, v28, v46);
    }

    else
    {
      (*v40)(v45, v28, v46);
    }

    sub_1DD875B20();
    _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
    v29 = sub_1DD875B60();
    v30 = -1 << *(v11 + 32);
    v31 = v29 & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
    {
      break;
    }

    v33 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v18 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    v38 = (*(v11 + 48) + 16 * v33);
    *v38 = v26;
    v38[1] = v25;
    (*v44)(*(v11 + 56) + v27 * v33, v45, v46);
    ++*(v11 + 16);
    v9 = v41;
    if (!v16)
    {
      goto LABEL_7;
    }
  }

  v34 = 0;
  v35 = (63 - v30) >> 6;
  while (++v32 != v35 || (v34 & 1) == 0)
  {
    v36 = v32 == v35;
    if (v32 == v35)
    {
      v32 = 0;
    }

    v34 |= v36;
    v37 = *(v18 + 8 * v32);
    if (v37 != -1)
    {
      v33 = __clz(__rbit64(~v37)) + (v32 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
}

uint64_t sub_1DD853E20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1DD710A9C(&qword_1ECD16480, &unk_1DD8AF8E0);
  v34 = v4;
  result = sub_1DD8757D0();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v7;
    return result;
  }

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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      sub_1DD722480(0, (v33 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    if (v34)
    {
      v22 = *(v5 + 56) + 104 * v18;
      v35 = *(v22 + 8);
      v36 = *(v22 + 24);
      v37 = *v22;
      v38 = *(v22 + 40);
      v39 = *(v22 + 16);
      v40 = *(v22 + 56);
      v41 = *(v22 + 32);
      v42 = *(v22 + 64);
      v43 = *(v22 + 48);
      v44 = *(v22 + 72);
      v46 = *(v22 + 80);
      v45 = *(v22 + 88);
    }

    else
    {
      memcpy(__dst, (*(v5 + 56) + 104 * v18), 0x68uLL);
      v45 = *&__dst[11];
      v46 = __dst[10];
      v43 = __dst[6];
      v44 = __dst[9];
      v41 = __dst[4];
      v42 = __dst[8];
      v39 = __dst[2];
      v40 = __dst[7];
      v37 = __dst[0];
      v38 = __dst[5];
      v35 = __dst[1];
      v36 = __dst[3];

      sub_1DD854B24(__dst, v47);
    }

    sub_1DD875B20();
    _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
    result = sub_1DD875B60();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    v32 = *(v7 + 56) + 104 * v26;
    *v32 = v37;
    *(v32 + 8) = v35;
    *(v32 + 16) = v39;
    *(v32 + 24) = v36;
    *(v32 + 32) = v41;
    *(v32 + 40) = v38;
    *(v32 + 48) = v43;
    *(v32 + 56) = v40;
    *(v32 + 64) = v42;
    *(v32 + 72) = v44;
    *(v32 + 80) = v46;
    *(v32 + 88) = v45;
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1DD8541BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for ClientAction(0);
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1DD710A9C(&qword_1ECD16470, &qword_1DD8AF8C8);
  v40 = v4;
  result = sub_1DD8757D0();
  v9 = result;
  if (!*(v7 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v9;
    return result;
  }

  v37 = v2;
  v38 = v7;
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
  v16 = result + 64;
  if (!v14)
  {
LABEL_7:
    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v19 = v11[v10];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v14 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_33;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      sub_1DD722480(0, (v36 + 63) >> 6, v11);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_12:
    v20 = v17 | (v10 << 6);
    v21 = *(v7 + 56);
    v22 = (*(v7 + 48) + 16 * v20);
    v23 = *v22;
    v24 = v22[1];
    v25 = *(v39 + 72);
    v26 = v21 + v25 * v20;
    if (v40)
    {
      sub_1DD6E5A0C(v26, v41, type metadata accessor for ClientAction);
    }

    else
    {
      sub_1DD6E2040(v26, v41, type metadata accessor for ClientAction);
    }

    sub_1DD875B20();
    _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
    result = sub_1DD875B60();
    v27 = -1 << *(v9 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
    {
      break;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v16 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = (*(v9 + 48) + 16 * v30);
    *v35 = v23;
    v35[1] = v24;
    result = sub_1DD6E5A0C(v41, *(v9 + 56) + v25 * v30, type metadata accessor for ClientAction);
    ++*(v9 + 16);
    v7 = v38;
    if (!v14)
    {
      goto LABEL_7;
    }
  }

  v31 = 0;
  v32 = (63 - v27) >> 6;
  while (++v29 != v32 || (v31 & 1) == 0)
  {
    v33 = v29 == v32;
    if (v29 == v32)
    {
      v29 = 0;
    }

    v31 |= v33;
    v34 = *(v16 + 8 * v29);
    if (v34 != -1)
    {
      v30 = __clz(__rbit64(~v34)) + (v29 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

void sub_1DD854530(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1DD6FB688(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  sub_1DD710A9C(&qword_1ECD16460, &qword_1DD8AF8B8);
  if ((sub_1DD875770() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1DD6FB688(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_1DD875A80();
    __break(1u);
    return;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = v16[7];
    v18 = sub_1DD710A9C(&qword_1ECD0E350, &qword_1DD8AF8B0);
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v12;

    v20(v22, a1, v21);
  }

  else
  {
    sub_1DD854948(v12, a2, a3, a1, v16);
  }
}

void sub_1DD8546B0(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1DD6FB688(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  sub_1DD710A9C(&qword_1ECD16478, &qword_1DD8AF8D8);
  if ((sub_1DD875770() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1DD6FB688(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_1DD875A80();
    __break(1u);
    return;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = v16[7] + 104 * v12;

    sub_1DD85641C(a1, v17);
  }

  else
  {
    sub_1DD854A04(v12, a2, a3, a1, v16);
  }
}

void sub_1DD8547F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1DD6FB688(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  sub_1DD710A9C(&qword_1ECD16468, &qword_1DD8AF8C0);
  if ((sub_1DD875770() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1DD6FB688(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_1DD875A80();
    __break(1u);
    return;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = v16[7];
    v18 = v17 + *(*(type metadata accessor for ClientAction(0) - 8) + 72) * v12;

    sub_1DD85636C(a1, v18);
  }

  else
  {
    sub_1DD854A78(v12, a2, a3, a1, v16);
  }
}

uint64_t sub_1DD854948(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1DD710A9C(&qword_1ECD0E350, &qword_1DD8AF8B0);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void *sub_1DD854A04(unint64_t a1, uint64_t a2, uint64_t a3, void *__src, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = memcpy((a5[7] + 104 * a1), __src, 0x68uLL);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1DD854A78(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for ClientAction(0);
  result = sub_1DD6E5A0C(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for ClientAction);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_1DD854BB8()
{
  result = qword_1ECD163A8;
  if (!qword_1ECD163A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD163A8);
  }

  return result;
}

unint64_t sub_1DD854C0C(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1DD718F34(result);
  }

  return result;
}

unint64_t sub_1DD854C20(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1DD718F6C(result);
  }

  return result;
}

unint64_t sub_1DD854C34()
{
  result = qword_1ECD163D0;
  if (!qword_1ECD163D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD163D0);
  }

  return result;
}

void sub_1DD854C88(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v24 = *(a1 + 16);
  for (i = 32; ; i += 120)
  {
    if (v24 == v5)
    {
LABEL_17:

      return;
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_1DD875A80();
      __break(1u);
      goto LABEL_23;
    }

    memcpy(__dst, (a1 + i), 0x78uLL);
    v7 = *&__dst[7];
    v29 = __dst[5];
    v30 = __dst[6];
    v27 = __dst[3];
    v28 = __dst[4];
    v25 = __dst[1];
    v26 = __dst[2];
    v8 = __dst[0];
    sub_1DD856454(__dst, &v32, &qword_1ECD0FA68, &qword_1DD881468);
    if (!*(&v8 + 1))
    {
      goto LABEL_17;
    }

    v32 = v8;
    __dst[0] = v25;
    __dst[1] = v26;
    __dst[2] = v27;
    __dst[3] = v28;
    __dst[4] = v29;
    __dst[5] = v30;
    *&__dst[6] = v7;
    v9 = *a3;
    v11 = sub_1DD6FB688(v8, *(&v8 + 1));
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_20;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1DD710A9C(&qword_1ECD16478, &qword_1DD8AF8D8);
      sub_1DD875780();
      if (v15)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    *(v18[6] + 16 * v11) = v8;
    memcpy((v18[7] + 104 * v11), __dst, 0x68uLL);
    v19 = v18[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    v18[2] = v21;
    ++v5;
    a2 = 1;
  }

  sub_1DD853E20(v14, a2 & 1);
  v16 = sub_1DD6FB688(v8, *(&v8 + 1));
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_22;
  }

  v11 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v22 = swift_allocError();
  swift_willThrow();
  v34 = v22;
  v23 = v22;
  sub_1DD710A9C(&qword_1ECD0FAB0, &qword_1DD8AF8D0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1DD8564AC(__dst);

    return;
  }

LABEL_23:
  sub_1DD8756B0();
  MEMORY[0x1E12B4C10](0xD00000000000001BLL, 0x80000001DD8B7B10);
  sub_1DD875760();
  MEMORY[0x1E12B4C10](39, 0xE100000000000000);
  sub_1DD8757A0();
  __break(1u);
}

void sub_1DD854FD0(uint64_t a1, char a2, void *a3)
{
  v44 = a3;
  v6 = type metadata accessor for ClientAction(0);
  v42 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DD710A9C(&qword_1ECD0FA50, &qword_1DD881450);
  MEMORY[0x1EEE9AC00](v9);
  v43 = (&v37 - v12);
  v41 = *(a1 + 16);
  if (!v41)
  {
LABEL_13:

    return;
  }

  v37 = v3;
  v38 = a1;
  v13 = 0;
  v14 = *(v10 + 48);
  v39 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v40 = v14;
  while (1)
  {
    if (v13 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1DD875A80();
      __break(1u);
      goto LABEL_22;
    }

    v15 = v11;
    v16 = v43;
    sub_1DD856454(v39 + *(v11 + 72) * v13, v43, &qword_1ECD0FA50, &qword_1DD881450);
    v18 = v16[1];
    v47 = *v16;
    v17 = v47;
    v48 = v18;
    v19 = v8;
    sub_1DD6E5A0C(v16 + v40, v8, type metadata accessor for ClientAction);
    v20 = *v44;
    v22 = sub_1DD6FB688(v17, v18);
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_19;
    }

    v26 = v21;
    if (v20[3] < v25)
    {
      break;
    }

    if (a2)
    {
      if (v21)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1DD710A9C(&qword_1ECD16468, &qword_1DD8AF8C0);
      sub_1DD875780();
      if (v26)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v29 = *v44;
    *(*v44 + 8 * (v22 >> 6) + 64) |= 1 << v22;
    v30 = (v29[6] + 16 * v22);
    *v30 = v17;
    v30[1] = v18;
    v31 = v29[7] + *(v42 + 72) * v22;
    v8 = v19;
    sub_1DD6E5A0C(v19, v31, type metadata accessor for ClientAction);
    v32 = v29[2];
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_20;
    }

    ++v13;
    v29[2] = v34;
    a2 = 1;
    a1 = v38;
    v11 = v15;
    if (v41 == v13)
    {
      goto LABEL_13;
    }
  }

  sub_1DD8541BC(v25, a2 & 1);
  v27 = sub_1DD6FB688(v17, v18);
  if ((v26 & 1) != (v28 & 1))
  {
    goto LABEL_21;
  }

  v22 = v27;
  if ((v26 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v35 = swift_allocError();
  swift_willThrow();
  v49 = v35;
  v36 = v35;
  sub_1DD710A9C(&qword_1ECD0FAB0, &qword_1DD8AF8D0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1DD6E2098(v19, type metadata accessor for ClientAction);

    return;
  }

LABEL_22:
  v45 = 0;
  v46 = 0xE000000000000000;
  sub_1DD8756B0();
  MEMORY[0x1E12B4C10](0xD00000000000001BLL, 0x80000001DD8B7B10);
  sub_1DD875760();
  MEMORY[0x1E12B4C10](39, 0xE100000000000000);
  sub_1DD8757A0();
  __break(1u);
}

uint64_t sub_1DD855450(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1E12B5570](v3);
  if (v3)
  {
    v5 = 0;
    v11 = a2 + 32;
    do
    {
      v6 = (v11 + 24 * v5);
      v7 = *v6;
      v8 = v6[2];
      MEMORY[0x1E12B5570](*(*v6 + 16));
      v9 = *(v7 + 16);
      if (v9)
      {

        v10 = v7 + 40;
        do
        {

          _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();

          v10 += 16;
          --v9;
        }

        while (v9);
        if (!v8)
        {
LABEL_9:
          sub_1DD875B40();
          goto LABEL_10;
        }
      }

      else
      {

        if (!v8)
        {
          goto LABEL_9;
        }
      }

      sub_1DD875B40();
      _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
LABEL_10:

      ++v5;
    }

    while (v5 != v3);
  }

  return result;
}

uint64_t sub_1DD85557C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1E12B5570](v3);
  if (v3)
  {
    v5 = a2 + 40;
    do
    {

      _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();

      v5 += 16;
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_1DD8555F4()
{
  result = qword_1EE015AF0;
  if (!qword_1EE015AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015AF0);
  }

  return result;
}

uint64_t sub_1DD855648(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ClientAction.Definition.ParameterDefinition(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x1E12B5570](v8, v5);
  if (v8)
  {
    v10 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    do
    {
      sub_1DD6E2040(v10, v7, type metadata accessor for ClientAction.Definition.ParameterDefinition);
      _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
      _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
      sub_1DD874FC0();
      sub_1DD6E1588(&unk_1ECD163B8);
      sub_1DD8750C0();
      result = sub_1DD6E2098(v7, type metadata accessor for ClientAction.Definition.ParameterDefinition);
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  return result;
}

unint64_t sub_1DD8557EC()
{
  result = qword_1EE015AE8;
  if (!qword_1EE015AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015AE8);
  }

  return result;
}

uint64_t sub_1DD855860(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD710A9C(&qword_1ECD0FA50, &qword_1DD881450);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD8558D0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DD6FA5C4;

  return sub_1DD852944(a1, a2, v6);
}

unint64_t sub_1DD855998()
{
  result = qword_1ECD16408;
  if (!qword_1ECD16408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16408);
  }

  return result;
}

uint64_t sub_1DD8559EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD710A9C(&qword_1ECD11798, &qword_1DD889718);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DD855AA8()
{
  result = qword_1ECD16418;
  if (!qword_1ECD16418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16418);
  }

  return result;
}

unint64_t sub_1DD855B44(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 61;
  }

  else
  {
    return (*a1 >> 3) + 4;
  }
}

uint64_t sub_1DD855B60(void *a1)
{
  v1 = ((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7));
  v2 = v1 ^ 0x7F;
  v3 = 128 - v1;
  if (v2 >= 0x7B)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1DD855BD8(uint64_t a1)
{
  result = type metadata accessor for ClientAction.Definition(319);
  if (v2 <= 0x3F)
  {
    result = sub_1DD732A14();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1DD855C84(uint64_t a1)
{
  sub_1DD855D40(319);
  if (v1 <= 0x3F)
  {
    sub_1DD874FC0();
    if (v2 <= 0x3F)
    {
      sub_1DD855D98();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DD855D40(uint64_t a1)
{
  if (!qword_1EE015DF8)
  {
    type metadata accessor for ClientAction.Definition.ParameterDefinition(255);
    v1 = sub_1DD875350();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE015DF8);
    }
  }
}

void sub_1DD855D98()
{
  if (!qword_1EE015E00)
  {
    v0 = sub_1DD875350();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE015E00);
    }
  }
}

uint64_t sub_1DD855E10(uint64_t a1)
{
  result = sub_1DD874FC0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DD855E8C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1DD855ECC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ClientAction.Definition.ExampleInvocationDefinition.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD856058()
{
  result = qword_1ECD16438;
  if (!qword_1ECD16438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16438);
  }

  return result;
}

unint64_t sub_1DD8560B0()
{
  result = qword_1ECD16440;
  if (!qword_1ECD16440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16440);
  }

  return result;
}

unint64_t sub_1DD856108()
{
  result = qword_1ECD16448;
  if (!qword_1ECD16448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16448);
  }

  return result;
}

unint64_t sub_1DD856160()
{
  result = qword_1EE018BA8;
  if (!qword_1EE018BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018BA8);
  }

  return result;
}

unint64_t sub_1DD8561B8()
{
  result = qword_1EE018BB0;
  if (!qword_1EE018BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018BB0);
  }

  return result;
}

unint64_t sub_1DD856210()
{
  result = qword_1ECD16450;
  if (!qword_1ECD16450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16450);
  }

  return result;
}

unint64_t sub_1DD856268()
{
  result = qword_1ECD16458;
  if (!qword_1ECD16458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16458);
  }

  return result;
}

unint64_t sub_1DD8562C0()
{
  result = qword_1EE018C58;
  if (!qword_1EE018C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018C58);
  }

  return result;
}

unint64_t sub_1DD856318()
{
  result = qword_1EE018C60;
  if (!qword_1EE018C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018C60);
  }

  return result;
}

uint64_t sub_1DD85636C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientAction(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD856410(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1DD856454(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1DD710A9C(a3, a4);
  sub_1DD6DF448();
  v5 = sub_1DD6DDEFC();
  v6(v5);
  return a2;
}

uint64_t IndexedElements.Iterator.inner.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  sub_1DD6E0954();
  sub_1DD6ED6C0(v4);
  sub_1DD6E53B0();
  sub_1DD8756F0();
  sub_1DD6DF448();
  return (*(v5 + 40))(v2, a1);
}

uint64_t sub_1DD856618@<X0>(void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = sub_1DD6E53B0();
  a2(v6);
  sub_1DD6DF448();
  return (*(v7 + 16))(a3, v3);
}

uint64_t sub_1DD856740(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 84);
  v8 = *(v5 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(*(AssociatedTypeWitness - 8) + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v8 + 80);
  if (!a2)
  {
    return 0;
  }

  v12 = AssociatedTypeWitness;
  v13 = *(*(AssociatedTypeWitness - 8) + 64) + v11;
  if (a2 <= v10)
  {
LABEL_25:
    if (v7 >= v9)
    {
      v21 = a1;
    }

    else
    {
      v21 = ((a1 + v13) & ~v11);
      v7 = *(v8 + 84);
      v12 = v5;
    }

    return sub_1DD6E5ED0(v21, v7, v12);
  }

  v14 = (v13 & ~v11) + *(*(v5 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v10 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v10)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = (v13 & ~v11) + *(*(v5 - 8) + 64);
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v10 + (v20 | v18) + 1;
}

void sub_1DD856968(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 84);
  v10 = *(v7 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(AssociatedTypeWitness - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(AssociatedTypeWitness - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v7 - 8) + 64);
  v16 = 8 * v15;
  if (a3 <= v12)
  {
    v17 = 0;
  }

  else if (v15 <= 3)
  {
    v20 = ((a3 - v12 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
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
        v17 = v21;
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

  if (v12 >= a2)
  {
    switch(v17)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 >= v11)
          {
            v23 = a1;
            v24 = a2;
          }

          else
          {
            v23 = (&a1[v14] & ~v13);
            v24 = a2;
            v9 = v11;
            AssociatedTypeWitness = v7;
          }

          sub_1DD6E5E68(v23, v24, v9, AssociatedTypeWitness);
        }

        break;
    }
  }

  else
  {
    v18 = ~v12 + a2;
    if (v15 < 4)
    {
      v19 = (v18 >> v16) + 1;
      if (v15)
      {
        v22 = v18 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *a1 = v22;
          a1[2] = BYTE2(v22);
        }

        else if (v15 == 2)
        {
          *a1 = v22;
        }

        else
        {
          *a1 = v18;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v18;
      v19 = 1;
    }

    switch(v17)
    {
      case 1:
        a1[v15] = v19;
        break;
      case 2:
        *&a1[v15] = v19;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v15] = v19;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DD856C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *))
{
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = sub_1DD6E0954();
  v8 = *(sub_1DD6ED6C0(v5) + 8);
  v9 = *(v5 + 8);
  v12[0] = v7;
  v12[1] = v6;
  v12[2] = v8;
  v12[3] = v9;
  result = a4(319, v12);
  if (v11 <= 0x3F)
  {
    v13 = 0;
    v12[0] = result;
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DD856CF4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  if (v11 <= 0xFE)
  {
    v11 = 254;
  }

  v12 = *(v9 + 80);
  v13 = *(*(v8 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v14 = v8;
  v15 = *(v6 + 64) + v12;
  if (a2 > v11)
  {
    v16 = v13 + (v15 & ~v12) + 1;
    v17 = 8 * v16;
    if (v16 > 3)
    {
      goto LABEL_9;
    }

    v19 = ((a2 - v11 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_26;
      }

      goto LABEL_16;
    }

    if (v19 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_26;
      }

      goto LABEL_16;
    }

    if (v19 >= 2)
    {
LABEL_9:
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_26;
      }

LABEL_16:
      v20 = (v18 - 1) << v17;
      if (v16 > 3)
      {
        v20 = 0;
      }

      if (v16)
      {
        if (v16 <= 3)
        {
          v21 = v16;
        }

        else
        {
          v21 = 4;
        }

        switch(v21)
        {
          case 2:
            v22 = *a1;
            break;
          case 3:
            v22 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v22 = *a1;
            break;
          default:
            v22 = *a1;
            break;
        }
      }

      else
      {
        v22 = 0;
      }

      v26 = v11 + (v22 | v20);
      return (v26 + 1);
    }
  }

LABEL_26:
  if (v7 != v11)
  {
    v23 = ((a1 + v15) & ~v12);
    if (v10 == v11)
    {
      goto LABEL_29;
    }

    v25 = *(v23 + v13);
    if (v25 < 2)
    {
      return 0;
    }

    v26 = (v25 + 2147483646) & 0x7FFFFFFF;
    return (v26 + 1);
  }

  v23 = a1;
  v10 = v7;
  v14 = AssociatedTypeWitness;
LABEL_29:

  return sub_1DD6E5ED0(v23, v10, v14);
}

void sub_1DD856FDC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  if (v12 <= 0xFE)
  {
    v12 = 254;
  }

  v13 = *(v10 + 80);
  v14 = *(v7 + 64) + v13;
  v15 = *(*(v9 - 8) + 64);
  v16 = v15 + (v14 & ~v13) + 1;
  v17 = 8 * v16;
  if (a3 <= v12)
  {
    v18 = 0;
  }

  else if (v16 <= 3)
  {
    v22 = ((a3 - v12 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v22))
    {
      v18 = 4;
    }

    else
    {
      if (v22 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v18 = v23;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v12 >= a2)
  {
    v21 = ~v13;
    switch(v18)
    {
      case 1:
        a1[v16] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        return;
      case 2:
        *&a1[v16] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        return;
      case 3:
LABEL_47:
        __break(1u);
        return;
      case 4:
        *&a1[v16] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (!a2)
        {
          return;
        }

LABEL_29:
        if (v8 == v12)
        {
          v25 = a1;
          v26 = a2;
          v11 = v8;
          v9 = AssociatedTypeWitness;
        }

        else
        {
          v25 = (&a1[v14] & v21);
          if (v11 != v12)
          {
            v25[v15] = a2 + 1;
            return;
          }

          v26 = a2;
        }

        sub_1DD6E5E68(v25, v26, v11, v9);
        break;
    }
  }

  else
  {
    v19 = ~v12 + a2;
    if (v16 < 4)
    {
      v20 = (v19 >> v17) + 1;
      if (v15 + (v14 & ~v13) != -1)
      {
        v24 = v19 & ~(-1 << v17);
        bzero(a1, v16);
        if (v16 == 3)
        {
          *a1 = v24;
          a1[2] = BYTE2(v24);
        }

        else if (v16 == 2)
        {
          *a1 = v24;
        }

        else
        {
          *a1 = v19;
        }
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v19;
      v20 = 1;
    }

    switch(v18)
    {
      case 1:
        a1[v16] = v20;
        break;
      case 2:
        *&a1[v16] = v20;
        break;
      case 3:
        goto LABEL_47;
      case 4:
        *&a1[v16] = v20;
        break;
      default:
        return;
    }
  }
}

uint64_t IntelligenceFlowError.localizedDescription.getter()
{
  v1 = *v0;
  swift_getErrorValue();
  v2 = v1;
  v3 = sub_1DD875AB0();
  sub_1DD71900C(v1);
  return v3;
}

uint64_t static IntelligenceFlowError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if ((*(a1 + 8) & 1) == 0)
  {
    v8 = v2;
    v5 = sub_1DD874670();
    sub_1DD71900C(v2);
    if ((v4 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = v3;
    goto LABEL_6;
  }

  v5 = v2;
  if (v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = v3;
  v7 = sub_1DD874670();
  sub_1DD71900C(v3);
LABEL_6:
  sub_1DD804C4C(0, &qword_1ECD0E2A8, 0x1E69E58C0);
  v9 = sub_1DD8755A0();

  return v9 & 1;
}

uint64_t IntelligenceFlowError.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

void *sub_1DD8574E0(void *a1)
{
  v3 = sub_1DD6DF224(a1, a1[3]);
  sub_1DD875B80();
  if (!v1)
  {
    sub_1DD6DF224(v8, v8[3]);
    sub_1DD717D38();
    sub_1DD875A40();
    sub_1DD804C4C(0, &qword_1ECD164A0, 0x1E696ACD0);
    sub_1DD804C4C(0, &qword_1ECD164A8, 0x1E696ABC0);
    v4 = sub_1DD875510();
    v3 = v4;
    if (v4)
    {
      sub_1DD6E6658(v6, v7);
      sub_1DD6E1EC8(v8);
      sub_1DD6E1EC8(a1);
      return v3;
    }

    sub_1DD857CC8();
    swift_allocError();
    swift_willThrow();
    sub_1DD6E6658(v6, v7);
    sub_1DD6E1EC8(v8);
  }

  sub_1DD6E1EC8(a1);
  return v3;
}

uint64_t sub_1DD857658(void *a1, uint64_t a2)
{
  v10[5] = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  v3 = [objc_opt_self() archivedDataWithRootObject:a2 requiringSecureCoding:1 error:v10];
  v4 = v10[0];
  if (v3)
  {
    v5 = sub_1DD874770();
    v7 = v6;

    sub_1DD6DF224(a1, a1[3]);
    sub_1DD875BA0();
    sub_1DD857B30(v10, v10[3]);
    sub_1DD712070();
    sub_1DD875A50();
    sub_1DD6E6658(v5, v7);
    return sub_1DD6E1EC8(v10);
  }

  else
  {
    v9 = v4;
    sub_1DD874680();

    return swift_willThrow();
  }
}

void *sub_1DD8577B0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1DD8574E0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id IntelligenceFlowError.error.getter()
{
  v1 = *v0;
  sub_1DD719000(*v0);
  return v1;
}

id IntelligenceFlowError.nsError.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    return v1;
  }

  else
  {
    v5 = *v0;
    v3 = v1;
    v4 = sub_1DD874670();
    sub_1DD71900C(v5);
    return v4;
  }
}

uint64_t IntelligenceFlowError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD875B80();
  if (!v2)
  {
    sub_1DD6DF224(v9, v9[3]);
    sub_1DD8579A0();
    sub_1DD875A40();
    v5 = v8;
    v6 = sub_1DD875570();

    if (v6)
    {

      v5 = v6;
    }

    sub_1DD6E1EC8(v9);
    *a2 = v5;
    *(a2 + 8) = v6 == 0;
  }

  return sub_1DD6E1EC8(a1);
}

unint64_t sub_1DD8579A0()
{
  result = qword_1ECD16490;
  if (!qword_1ECD16490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16490);
  }

  return result;
}

uint64_t IntelligenceFlowError.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD719000(v2);
  sub_1DD875BA0();
  if (v3)
  {
    sub_1DD857B30(v6, v7);
    sub_1DD857B80();
    sub_1DD875A50();
  }

  else
  {
    swift_getErrorValue();
    v5 = sub_1DD875AC0();
    sub_1DD857B30(v6, v7);
    sub_1DD857B80();
    sub_1DD875A50();
  }

  sub_1DD71900C(v2);
  return sub_1DD6E1EC8(v6);
}

uint64_t sub_1DD857B30(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_1DD857B80()
{
  result = qword_1ECD16498;
  if (!qword_1ECD16498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16498);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolboxClient.ToolboxClientError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
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

uint64_t storeEnumTagSinglePayload for ToolboxClient.ToolboxClientError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_1DD857CC8()
{
  result = qword_1ECD164B0;
  if (!qword_1ECD164B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD164B0);
  }

  return result;
}

uint64_t SaltedLoggingIDConvertible.toLoggingId(scope:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1DD874820();
  sub_1DD6DDEAC();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DF39C();
  v22 = *a1;
  (*(a3 + 8))(v23, &v22, a2, a3);
  v11 = v23[0];
  v12 = v23[1];
  v14 = v23[2];
  v13 = v23[3];
  v16 = v23[4];
  v15 = v23[5];
  v17 = qword_1EE015500;

  if (v17 != -1)
  {
    sub_1DD6E1530(&qword_1EE015500);
  }

  v18 = sub_1DD6E1224(v7, qword_1EE015508);
  (*(v9 + 16))(v3, v18, v7);
  *&v22 = 0;
  *(&v22 + 1) = 0xE000000000000000;
  if (v12)
  {
    v19 = v11;
  }

  else
  {
    v19 = 0;
  }

  if (v12)
  {
    v20 = v12;
  }

  else
  {
    v20 = 0xE000000000000000;
  }

  MEMORY[0x1E12B4C10](v19, v20);

  sub_1DD6ED6DC();
  MEMORY[0x1E12B4C10](v16, v15);
  sub_1DD6ED6DC();
  MEMORY[0x1E12B4C10](v14, v13);
  UUID.init(namespace:name:)(v3, v22, *(&v22 + 1));
}

uint64_t SaltedLoggingIDData.toLoggingID()()
{
  v2 = sub_1DD874820();
  sub_1DD6DDEAC();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DF39C();
  v6 = *v0;
  v7 = v0[1];
  v8 = v0[2];
  v9 = v0[3];
  v10 = v0[4];
  v11 = v0[5];
  v12 = qword_1EE015500;

  if (v12 != -1)
  {
    sub_1DD6E1530(&qword_1EE015500);
  }

  v13 = sub_1DD6E1224(v2, qword_1EE015508);
  (*(v4 + 16))(v1, v13, v2);
  if (v7)
  {
    v14 = v6;
  }

  else
  {
    v14 = 0;
  }

  if (!v7)
  {
    v7 = 0xE000000000000000;
  }

  MEMORY[0x1E12B4C10](v14, v7);

  sub_1DD6ED6DC();
  MEMORY[0x1E12B4C10](v10, v11);
  sub_1DD6ED6DC();
  MEMORY[0x1E12B4C10](v8, v9);
  return UUID.init(namespace:name:)(v1, 0, 0xE000000000000000);
}

uint64_t sub_1DD85803C()
{
  v0 = sub_1DD874820();
  sub_1DD732C90(v0, qword_1EE015508);
  sub_1DD6E1224(v0, qword_1EE015508);
  return _s16IntelligenceFlow15SessionClientIDVACycfC_0();
}

void __swiftcall SaltedLoggingIDData.init(_:scope:category:)(IntelligenceFlow::SaltedLoggingIDData *__return_ptr retstr, Swift::String _, IntelligenceFlow::SaltedLoggingIDScope scope, Swift::String category)
{
  retstr->logData = _;
  retstr->scope = *scope.scopeData.value._countAndFlagsBits;
  retstr->category._countAndFlagsBits = scope.scopeData.value._object;
  retstr->category._object = category._countAndFlagsBits;
}

double static SaltedLoggingIDScope.custom(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;

  return result;
}

IntelligenceFlow::SaltedLoggingIDCategory_optional __swiftcall SaltedLoggingIDCategory.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD8757F0();

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

uint64_t SaltedLoggingIDCategory.rawValue.getter()
{
  if (*v0)
  {
    return 0x6574656D61726170;
  }

  else
  {
    return 0x74616469646E6163;
  }
}

unint64_t sub_1DD858164()
{
  result = qword_1ECD164B8;
  if (!qword_1ECD164B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD164B8);
  }

  return result;
}

uint64_t sub_1DD8581DC@<X0>(uint64_t *a1@<X8>)
{
  result = SaltedLoggingIDCategory.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for SaltedLoggingIDCategory(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t _s16IntelligenceFlow15StructBuildablePAAE6create_23furtherInitializingWithxxn_yxzqd__YKXEtqd__YKs5ErrorRd__lFZ@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v11 = *(a3 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15(v12);
  v16 = *(a2 - 8);
  if (!v5)
  {
    return (*(v16 + 32))(a5, a1, a2);
  }

  (*(v16 + 8))(a1, a2);
  return (*(v11 + 32))(a4, v14, a3);
}

uint64_t _s16IntelligenceFlow20EmptyStructBuildablePAAEyxyxzqd__YKXEqd__YKcs5ErrorRd__lufC@<X0>(uint64_t (*a1)(uint64_t, char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v18 = a4;
  v10 = *(a3 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v15, v14, v11);
  result = a1(a5, v13);
  if (v5)
  {
    (*(*(a2 - 8) + 8))(a5, a2);
    return (*(v10 + 32))(v18, v13, a3);
  }

  return result;
}

uint64_t sub_1DD858614()
{
  sub_1DD6DEDA4();
  sub_1DD874820();
  sub_1DD722428();
  sub_1DD8750C0();
  return sub_1DD875B60();
}

uint64_t sub_1DD8586D0(char a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v4 = sub_1DD875B20();
  a2(v4);
  sub_1DD8750C0();
  return sub_1DD875B60();
}

uint64_t sub_1DD858760(uint64_t a1)
{
  sub_1DD6DEDA4();
  sub_1DD875B50();
  return sub_1DD875B60();
}

uint64_t sub_1DD8587A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DD6ED408();
  sub_1DD6DEDA4();
  sub_1DD8754B0();
  return sub_1DD875B60();
}

uint64_t sub_1DD858818(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t))
{
  sub_1DD6DEDA4();
  a2(v5, a1);
  return sub_1DD875B60();
}

uint64_t ToolDefinition.effect.getter@<X0>(_BYTE *a1@<X8>)
{
  sub_1DD874F00();
  v2 = sub_1DD875210();

  *a1 = v2 & 1;
  return result;
}

IntelligenceFlow::ToolEffect_optional __swiftcall ToolEffect.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD8757F0();

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

uint64_t ToolEffect.rawValue.getter()
{
  if (*v0)
  {
    return 0x7972657571;
  }

  else
  {
    return 0x6E6F69746361;
  }
}

uint64_t sub_1DD858988@<X0>(uint64_t *a1@<X8>)
{
  result = ToolEffect.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ToolDefinition.id.setter()
{
  sub_1DD6DE304();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolDefinition.bundleId.setter()
{
  sub_1DD6DE304();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t ToolDefinition.displayName.setter()
{
  sub_1DD6DE304();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t ToolDefinition.explanation.setter()
{
  sub_1DD6DE304();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

unint64_t ToolDefinition.returnType.getter()
{
  v1 = *(v0 + 64);
  sub_1DD854C0C(v1);
  return v1;
}

unint64_t ToolDefinition.returnType.setter(uint64_t a1)
{
  result = sub_1DD854C20(*(v1 + 64));
  *(v1 + 64) = a1;
  return result;
}

uint64_t ToolDefinition.parameters.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t ToolDefinition.init(id:bundleId:displayName:explanation:returnType:parameters:effect:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char *a12)
{
  v12 = *a12;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = v12;
  return result;
}

uint64_t static ToolDefinition.== infix(_:_:)(uint64_t a1)
{
  v1 = sub_1DD6E27E8(a1);
  v4 = *(v3 + 16);
  v6 = *(v3 + 24);
  v5 = *(v3 + 32);
  v7 = *(v3 + 40);
  v8 = *(v3 + 56);
  v27 = *(v3 + 64);
  v23 = *(v3 + 80);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = *(v2 + 32);
  v12 = *(v2 + 40);
  v13 = *(v2 + 56);
  v28 = *(v2 + 48);
  v29 = *(v3 + 48);
  v25 = *(v3 + 72);
  v26 = *(v2 + 64);
  v24 = *(v2 + 72);
  v14 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  v22 = *(v2 + 80);
  if (!v14 && (sub_1DD875A30() & 1) == 0)
  {
    return 0;
  }

  v15 = v4 == v9 && v6 == v10;
  if (!v15 && (sub_1DD875A30() & 1) == 0)
  {
    return 0;
  }

  v16 = v5 == v11 && v7 == v12;
  if (!v16 && (sub_1DD875A30() & 1) == 0)
  {
    return 0;
  }

  if (v8)
  {
    if (!v13)
    {
      return 0;
    }

    v17 = v29 == v28 && v8 == v13;
    if (!v17 && (sub_1DD875A30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v18 = v26 & 0xF000000000000007;
  if ((~v27 & 0xF000000000000007) != 0)
  {
    if (v18 == 0xF000000000000007)
    {
      return 0;
    }

    sub_1DD718F34(v26);
    v19 = static TypeDefinition.== infix(_:_:)(v27, v26);
    sub_1DD854C20(v26);
    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18 != 0xF000000000000007)
  {
    return 0;
  }

  sub_1DD71557C(v25, v24);
  if ((v20 & 1) == 0)
  {
    return 0;
  }

  return sub_1DD735ADC(v23, v22);
}

uint64_t sub_1DD858F28(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x74616E616C707865 && a2 == 0xEB000000006E6F69;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x79546E7275746572 && a2 == 0xEA00000000006570;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372;
            if (v10 || (sub_1DD875A30() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x746365666665 && a2 == 0xE600000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_1DD875A30();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1DD859160(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6449656C646E7562;
      break;
    case 2:
      result = 0x4E79616C70736964;
      break;
    case 3:
      result = 0x74616E616C707865;
      break;
    case 4:
      result = 0x79546E7275746572;
      break;
    case 5:
      result = 0x6574656D61726170;
      break;
    case 6:
      result = 0x746365666665;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD859240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD858F28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD859268(uint64_t a1)
{
  v2 = sub_1DD859E88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD8592A4(uint64_t a1)
{
  v2 = sub_1DD859E88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ToolDefinition.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  v39 = v21;
  v23 = v22;
  v24 = sub_1DD710A9C(&qword_1ECD164C0, &qword_1DD8AFE30);
  sub_1DD6DDEAC();
  v26 = v25;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = v34 - v28;
  sub_1DD6DE3B8();
  v30 = *(v20 + 48);
  v37 = *(v20 + 56);
  v38 = v30;
  v31 = *(v20 + 64);
  v35 = *(v20 + 72);
  v36 = v31;
  v34[3] = *(v20 + 80);
  sub_1DD6DEA7C(v23, v23[3]);
  sub_1DD859E88();
  sub_1DD875BB0();
  v32 = v39;
  sub_1DD875970();
  if (!v32)
  {
    sub_1DD6E38D4(1);
    sub_1DD6FAB58();
    sub_1DD875970();
    sub_1DD6E38D4(2);
    sub_1DD6FAB58();
    sub_1DD875970();
    sub_1DD6E38D4(3);
    sub_1DD6FAB58();
    sub_1DD875920();
    v40 = 4;
    sub_1DD859EDC();
    sub_1DD6F17C0();
    sub_1DD6FAB58();
    sub_1DD875960();
    v40 = 5;
    sub_1DD710A9C(&qword_1ECD164D8, &qword_1DD8AFE38);
    sub_1DD6DF4F0();
    sub_1DD85A02C(v33);
    sub_1DD6F17C0();
    sub_1DD6FAB58();
    sub_1DD8759D0();
    v40 = 6;
    sub_1DD859F84();
    sub_1DD6F17C0();
    sub_1DD6FAB58();
    sub_1DD8759D0();
  }

  (*(v26 + 8))(v29, v24);
  sub_1DD6E0C78();
}

void ToolDefinition.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_1DD6DED2C();
  v15 = v14;
  v17 = v16;
  sub_1DD710A9C(&qword_1ECD164F8, &qword_1DD8AFE40);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD6DEA7C(v15, v15[3]);
  sub_1DD859E88();
  sub_1DD875B90();
  if (v13)
  {
    sub_1DD6E1EC8(v15);

    sub_1DD854C20(0xF000000000000007);
  }

  else
  {
    sub_1DD6E6AF8();
    v19 = sub_1DD875870();
    v21 = v20;
    sub_1DD6E6AF8();
    v36 = sub_1DD875870();
    v38 = v22;
    sub_1DD6E6AF8();
    v35 = sub_1DD875870();
    v34 = v19;
    v37 = v23;
    LOBYTE(v40[0]) = 3;
    sub_1DD6E6AF8();
    v24 = sub_1DD875820();
    v26 = v25;
    v33 = v24;
    sub_1DD859FD8();
    sub_1DD6F453C();
    sub_1DD875860();
    v32 = v17;
    v27 = v40[0];
    sub_1DD710A9C(&qword_1ECD164D8, &qword_1DD8AFE38);
    LOBYTE(v39[0]) = 5;
    sub_1DD6E53C0();
    sub_1DD85A02C(v28);
    sub_1DD8758D0();
    v31 = v40[0];
    sub_1DD85A0E4();
    sub_1DD6F453C();
    sub_1DD8758D0();
    v29 = sub_1DD6E0BA4();
    v30(v29);
    v39[0] = v34;
    v39[1] = v21;
    v39[2] = v36;
    v39[3] = v38;
    v39[4] = v35;
    v39[5] = v37;
    v39[6] = v33;
    v39[7] = v26;
    v39[8] = v27;
    v39[9] = v31;
    LOBYTE(v39[10]) = a13;
    memcpy(v32, v39, 0x51uLL);
    sub_1DD854B5C(v39, v40);
    sub_1DD6E1EC8(v15);
    v40[0] = v34;
    v40[1] = v21;
    v40[2] = v36;
    v40[3] = v38;
    v40[4] = v35;
    v40[5] = v37;
    v40[6] = v33;
    v40[7] = v26;
    v40[8] = v27;
    v40[9] = v31;
    v41 = a13;
    sub_1DD85A138(v40);
  }

  sub_1DD6E0C78();
}

unint64_t ParameterDefinition.type.getter()
{
  v1 = *(v0 + 32);
  sub_1DD718F34(v1);
  return v1;
}

unint64_t ParameterDefinition.type.setter(uint64_t a1)
{
  result = sub_1DD718F6C(*(v1 + 32));
  *(v1 + 32) = a1;
  return result;
}

uint64_t ParameterDefinition.explanation.setter()
{
  sub_1DD6DE304();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

void ParameterDefinition.init(id:displayName:type:explanation:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  if (!a4)
  {

    a3 = a1;
    a4 = a2;
  }

  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
}

uint64_t static ParameterDefinition.== infix(_:_:)(uint64_t a1)
{
  v1 = sub_1DD6E27E8(a1);
  v4 = v3[2];
  v6 = v3[3];
  v5 = v3[4];
  v7 = v3[5];
  v8 = v3[6];
  v9 = v2[2];
  v10 = v2[3];
  v12 = v2[4];
  v11 = v2[5];
  v13 = v2[6];
  v14 = v1 == *v2 && v3[1] == v2[1];
  if (v14 || (sub_1DD875A30() & 1) != 0)
  {
    v15 = v4 == v9 && v6 == v10;
    if (v15 || (sub_1DD6ED130(), (sub_1DD875A30() & 1) != 0))
    {
      if (static TypeDefinition.== infix(_:_:)(v5, v12))
      {
        if (v8)
        {
          if (v13)
          {
            if (v7 == v11 && v8 == v13)
            {
              return 1;
            }

            sub_1DD6DDEFC();
            if (sub_1DD875A30())
            {
              return 1;
            }
          }
        }

        else if (!v13)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t static TypeDefinition.== infix(_:_:)(unint64_t a1, unint64_t a2)
{
  switch(a1 >> 61)
  {
    case 1uLL:
      if (a2 >> 61 != 1)
      {
        goto LABEL_23;
      }

      v11 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v20 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v21 = v11;
      v12 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v22 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v23 = v12;
      v10 = static ObjectDefinition.== infix(_:_:)(&v20);
      return v10 & 1;
    case 2uLL:
      if (a2 >> 61 != 2)
      {
        goto LABEL_23;
      }

      v2 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      goto LABEL_8;
    case 3uLL:
      if (a2 >> 61 != 3)
      {
        goto LABEL_23;
      }

      v8 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v9 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      *&v20 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      *(&v20 + 1) = v9;
      v21 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      *&v22 = v8;
      static EnumDefinition.== infix(_:_:)(&v20);
      return v10 & 1;
    case 4uLL:
      switch(__ROR8__(a1 ^ 0x8000000000000000, 3))
      {
        case 1:
          sub_1DD6E9B54();
          break;
        case 2:
          sub_1DD6E9B54();
          v3 = v14 + 8;
          break;
        case 3:
          sub_1DD6E9B54();
          v3 = v15 | 0x10;
          break;
        case 4:
          sub_1DD6E9B54();
          v3 = v13 + 24;
          break;
        case 5:
          sub_1DD6E9B54();
          v3 = v17 | 0x20;
          break;
        case 6:
          sub_1DD6E9B54();
          v3 = v18 + 40;
          break;
        case 7:
          sub_1DD6E9B54();
          v3 = v16 | 0x30;
          break;
        case 8:
          sub_1DD6E9B54();
          v3 = v19 + 56;
          break;
        default:
          v3 = 0x8000000000000000;
          break;
      }

      if (a2 != v3)
      {
        goto LABEL_23;
      }

      v10 = 1;
      return v10 & 1;
    default:
      if (a2 >> 61)
      {
LABEL_23:
        v10 = 0;
        return v10 & 1;
      }

      else
      {
        v2 = *(a2 + 16);
LABEL_8:
        sub_1DD718F34(v2);
        v4 = sub_1DD6DDEFC();
        v6 = static TypeDefinition.== infix(_:_:)(v4, v5);
        sub_1DD718F6C(v2);
        return v6 & 1;
      }
  }
}

unint64_t sub_1DD859E88()
{
  result = qword_1ECD164C8;
  if (!qword_1ECD164C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD164C8);
  }

  return result;
}

unint64_t sub_1DD859EDC()
{
  result = qword_1ECD164D0;
  if (!qword_1ECD164D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD164D0);
  }

  return result;
}

unint64_t sub_1DD859F30()
{
  result = qword_1ECD164E8;
  if (!qword_1ECD164E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD164E8);
  }

  return result;
}

unint64_t sub_1DD859F84()
{
  result = qword_1ECD164F0;
  if (!qword_1ECD164F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD164F0);
  }

  return result;
}

unint64_t sub_1DD859FD8()
{
  result = qword_1ECD16500;
  if (!qword_1ECD16500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16500);
  }

  return result;
}

uint64_t sub_1DD85A02C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1DD6ED408();
    sub_1DD717E88(&qword_1ECD164D8, &qword_1DD8AFE38);
    v1();
    result = sub_1DD6E9658();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DD85A090()
{
  result = qword_1ECD16510;
  if (!qword_1ECD16510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16510);
  }

  return result;
}

unint64_t sub_1DD85A0E4()
{
  result = qword_1ECD16518;
  if (!qword_1ECD16518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16518);
  }

  return result;
}

uint64_t sub_1DD85A168(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701869940 && a2 == 0xE400000000000000;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x74616E616C707865 && a2 == 0xEB000000006E6F69)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD875A30();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1DD85A2C0(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x4E79616C70736964;
      break;
    case 2:
      result = 1701869940;
      break;
    case 3:
      result = 0x74616E616C707865;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD85A348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD85A168(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD85A370(uint64_t a1)
{
  v2 = sub_1DD85B7B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD85A3AC(uint64_t a1)
{
  v2 = sub_1DD85B7B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ParameterDefinition.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD710A9C(&qword_1ECD16520, &qword_1DD8AFE48);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1DD6DEA6C();
  sub_1DD6DE3B8();
  sub_1DD6E71CC();
  v2 = sub_1DD85B7B0();
  sub_1DD6E6240(&type metadata for ParameterDefinition.CodingKeys, v3, v2);
  sub_1DD6DFF80();
  if (!v0)
  {
    sub_1DD6DEC54();
    sub_1DD6E0E40();
    sub_1DD875970();
    sub_1DD6E0FF8();
    sub_1DD859EDC();
    sub_1DD6DE334();
    sub_1DD8759D0();
    sub_1DD6E6174();
    sub_1DD6ED130();
    sub_1DD6E0E40();
    sub_1DD875920();
  }

  v4 = sub_1DD6EEDBC();
  v5(v4);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void ParameterDefinition.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_1DD6DED2C();
  sub_1DD6E6390();
  v23 = v22;
  v24 = sub_1DD710A9C(&qword_1ECD16530, &unk_1DD8AFE50);
  sub_1DD6DDEAC();
  v26 = v25;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1DD6F0A58();
  sub_1DD6DEA7C(v19, v19[3]);
  sub_1DD85B7B0();
  sub_1DD6E2000();
  sub_1DD875B90();
  if (v20)
  {
    sub_1DD6E1EC8(v19);
  }

  else
  {
    sub_1DD6FC4DC();
    v28 = sub_1DD875870();
    v38 = v29;
    sub_1DD6DEC54();
    sub_1DD6FC4DC();
    v30 = sub_1DD875870();
    v37 = v31;
    v36 = v30;
    sub_1DD6E0FF8();
    sub_1DD859FD8();
    sub_1DD8758D0();
    sub_1DD6E6174();
    sub_1DD6FC4DC();
    v32 = sub_1DD875820();
    v33 = v21;
    v35 = v34;
    (*(v26 + 8))(v33, v24);
    *v23 = v28;
    v23[1] = v38;
    v23[2] = v36;
    v23[3] = v37;
    v23[4] = v39;
    v23[5] = v32;
    v23[6] = v35;

    sub_1DD718F34(v39);

    sub_1DD6E1EC8(v19);

    sub_1DD718F6C(v39);
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

void TypeDefinition.nestedDefinitions.getter(unint64_t a1)
{
  switch(a1 >> 61)
  {
    case 1uLL:
      v4 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      sub_1DD710A9C(&qword_1ECD10310, &qword_1DD884D30);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1DD8782E0;
      *(v5 + 32) = a1;
      v6 = *(v4 + 16);
      if (!v6)
      {

        return;
      }

      sub_1DD718F34(a1);

      v7 = v4 + 80;
      break;
    case 2uLL:
      v3 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      goto LABEL_5;
    case 3uLL:
    case 4uLL:
      sub_1DD710A9C(&qword_1ECD10310, &qword_1DD884D30);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1DD8782E0;
      *(v2 + 32) = a1;
      sub_1DD718F34(a1);
      return;
    default:
      v3 = *(a1 + 16);
LABEL_5:
      sub_1DD718F34(v3);
      TypeDefinition.nestedDefinitions.getter(v3);
      sub_1DD718F6C(v3);
      return;
  }

  while (1)
  {
    v8 = *(v7 - 16);

    sub_1DD718F34(v8);

    TypeDefinition.nestedDefinitions.getter(v8);
    v10 = *(v9 + 16);
    v11 = *(v5 + 16);
    if (__OFADD__(v11, v10))
    {
      break;
    }

    v12 = v9;
    v13 = *(v5 + 24) >> 1;
    if (v13 < v11 + v10)
    {
      sub_1DD784C48();
      v5 = v17;
      v11 = *(v17 + 16);
      v13 = *(v17 + 24) >> 1;
      if (*(v12 + 16))
      {
LABEL_11:
        if (v13 - v11 < v10)
        {
          goto LABEL_23;
        }

        swift_arrayInitWithCopy();

        if (v10)
        {
          v14 = *(v5 + 16);
          v15 = __OFADD__(v14, v10);
          v16 = v14 + v10;
          if (v15)
          {
            goto LABEL_24;
          }

          *(v5 + 16) = v16;
        }

        goto LABEL_17;
      }
    }

    else if (v10)
    {
      goto LABEL_11;
    }

    if (v10)
    {
      goto LABEL_22;
    }

LABEL_17:
    v7 += 56;

    sub_1DD718F6C(v8);

    if (!--v6)
    {

      return;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

unint64_t TypeDefinition.encode(to:)(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 61)
  {
    case 1uLL:
      v12 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v20 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v21 = v12;
      v13 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v22 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v23 = v13;
      sub_1DD710A9C(&qword_1ECD16550, &qword_1DD8AFE70);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DD8782E0;
      *(inited + 32) = 0x7463656A626FLL;
      *(inited + 40) = 0xE600000000000000;
      v15 = v21;
      v17 = v22;
      v16 = v23;
      *(inited + 48) = v20;
      *(inited + 64) = v15;
      *(inited + 80) = v17;
      *(inited + 96) = v16;
      sub_1DD85D5E8(&v20, v19);
      sub_1DD875080();
      sub_1DD85D620();
      sub_1DD6E65D0();
      sub_1DD8750A0();

    case 2uLL:
      v2 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_1DD710A9C(&qword_1ECD16548, &qword_1DD8AFE68);
      v3 = swift_initStackObject();
      *(v3 + 16) = xmmword_1DD8782E0;
      v4 = 0x6C616E6F6974706FLL;
      v5 = 0xE800000000000000;
      goto LABEL_5;
    case 3uLL:
      v7 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v9 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v8 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
      v10 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      sub_1DD710A9C(&qword_1ECD16538, &qword_1DD8AFE60);
      v11 = swift_initStackObject();
      *(v11 + 16) = xmmword_1DD8782E0;
      *(v11 + 32) = 1836412517;
      *(v11 + 40) = 0xE400000000000000;
      *(v11 + 48) = v7;
      *(v11 + 56) = v6;
      *(v11 + 64) = v9;
      *(v11 + 72) = v8;
      *(v11 + 80) = v10;

      sub_1DD6E65D0();
      sub_1DD875080();
      sub_1DD85D594();
      sub_1DD8750A0();

    case 4uLL:
      return sub_1DD8751E0();
    default:
      v2 = *(a2 + 16);
      sub_1DD710A9C(&qword_1ECD16548, &qword_1DD8AFE68);
      v3 = swift_initStackObject();
      *(v3 + 16) = xmmword_1DD8782E0;
      v4 = 0x7961727261;
      v5 = 0xE500000000000000;
LABEL_5:
      *(v3 + 32) = v4;
      *(v3 + 40) = v5;
      *(v3 + 48) = v2;
      sub_1DD718F34(v2);
      sub_1DD718F34(v2);
      sub_1DD875080();
      sub_1DD859EDC();
      sub_1DD8750A0();

      return sub_1DD718F6C(v2);
  }
}

void TypeDefinition.init(from:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  sub_1DD710A9C(&qword_1ECD16560, &qword_1DD8AFE78);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v60 - v4;
  v6 = sub_1DD710A9C(&qword_1ECD16568, &qword_1DD8AFE80);
  sub_1DD6DDEAC();
  v8 = v7;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v60 - v10;
  sub_1DD6E71CC();
  sub_1DD85D674();
  sub_1DD875B90();
  if (v0)
  {

    sub_1DD6E5E68(v5, 1, 1, v6);
    sub_1DD85D6C8(v5);
    sub_1DD6E0F0C(v2, &v62);
    v13 = sub_1DD8751A0();
    v14 = v12;
    v15 = v13 == 7958113 && v12 == 0xE300000000000000;
    if (v15 || (sub_1DD6E0668(), (sub_1DD875A30() & 1) != 0) || (v13 == 1819242338 ? (v37 = v14 == 0xE400000000000000) : (v37 = 0), v37 || (sub_1DD6E0668(), (sub_1DD875A30() & 1) != 0) || (v13 == 7630441 ? (v49 = v14 == 0xE300000000000000) : (v49 = 0), v49 || (sub_1DD6E0668(), (sub_1DD875A30() & 1) != 0) || (v13 == 0x656C62756F64 ? (v50 = v14 == 0xE600000000000000) : (v50 = 0), v50 || (sub_1DD6E0668(), (sub_1DD875A30() & 1) != 0) || (v13 == 0x676E69727473 ? (v51 = v14 == 0xE600000000000000) : (v51 = 0), v51 || (sub_1DD6E0668(), (sub_1DD875A30() & 1) != 0) || (v13 == 7107189 ? (v52 = v14 == 0xE300000000000000) : (v52 = 0), v52 || (sub_1DD6E0668(), (sub_1DD875A30() & 1) != 0) || (v13 == 1702125924 ? (v53 = v14 == 0xE400000000000000) : (v53 = 0), v53 || (sub_1DD6E0668(), (sub_1DD875A30() & 1) != 0) || (v13 == 0x706D6F4365746164 ? (v54 = v14 == 0xEE0073746E656E6FLL) : (v54 = 0), v54 || (sub_1DD6E0668(), (sub_1DD875A30() & 1) != 0)))))))))
    {
    }

    else if (v13 == 0x72616D6563616C70 && v14 == 0xE90000000000006BLL)
    {
    }

    else
    {
      sub_1DD6E0668();
      v56 = sub_1DD875A30();

      if ((v56 & 1) == 0)
      {
        v57 = sub_1DD875740();
        swift_allocError();
        v59 = v58;
        sub_1DD6DEA7C(v2, v2[3]);
        sub_1DD6ED130();
        sub_1DD875B70();
        sub_1DD875730();
        (*(*(v57 - 8) + 104))(v59, *MEMORY[0x1E69E6B00], v57);
        swift_willThrow();
      }
    }
  }

  else
  {
    sub_1DD6E5E68(v5, 0, 1, v6);
    (*(v8 + 32))(v11, v5, v6);
    v16 = sub_1DD875900();
    if (*(v16 + 16))
    {
      v17 = *(v16 + 32);

      switch(v17)
      {
        case 2:
          v28 = sub_1DD85D784();
          sub_1DD6E6008(&type metadata for ObjectDefinition, v29, v30, v31, v28);
          v32 = sub_1DD6F3260();
          v33(v32);
          v34 = swift_allocObject();
          v35 = v63;
          v34[1] = v62;
          v34[2] = v35;
          v36 = v65;
          v34[3] = v64;
          v34[4] = v36;
          break;
        case 3:
          v38 = sub_1DD85D730();
          sub_1DD6E6008(&type metadata for EnumDefinition, v39, v40, v41, v38);
          v44 = sub_1DD6F3260();
          v45(v44);
          v60 = v63;
          v61 = v62;
          v46 = v64;
          v47 = swift_allocObject();
          v48 = v60;
          *(v47 + 16) = v61;
          *(v47 + 32) = v48;
          *(v47 + 48) = v46;
          break;
        default:
          v18 = sub_1DD859FD8();
          sub_1DD6E6008(&type metadata for TypeDefinition, v19, v20, v21, v18);
          v22 = sub_1DD6F3260();
          v23(v22);
          v24 = v62;
          *(swift_allocObject() + 16) = v24;
          break;
      }
    }

    else
    {

      v25 = sub_1DD875740();
      swift_allocError();
      *&v61 = v26;
      sub_1DD6DEA7C(v2, v2[3]);
      sub_1DD875B70();
      v27 = v61;
      sub_1DD875730();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6B00], v25);
      swift_willThrow();
      v42 = sub_1DD6F3260();
      v43(v42);
    }
  }

  sub_1DD6E1EC8(v2);
  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t static ObjectDefinition.== infix(_:_:)(uint64_t a1)
{
  v1 = sub_1DD6E27E8(a1);
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[5];
  v8 = v3[6];
  v9 = v3[7];
  v11 = v2[2];
  v10 = v2[3];
  v12 = v2[5];
  v13 = v1 == *v2 && v4 == v2[1];
  v14 = v2[6];
  v24 = v2[7];
  v25 = v9;
  if (!v13 && (sub_1DD875A30() & 1) == 0)
  {
    return 0;
  }

  if (v6)
  {
    if (!v10)
    {
      return 0;
    }

    v15 = v5 == v11 && v6 == v10;
    if (!v15 && (sub_1DD875A30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v16 = sub_1DD6ED130();
  sub_1DD71557C(v16, v17);
  if (v18)
  {
    if (v8)
    {
      if (!v14)
      {
        return 0;
      }

      if (v7 != v12 || v8 != v14)
      {
        sub_1DD6E65D0();
        if ((sub_1DD875A30() & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v14)
    {
      return 0;
    }

    if (v25)
    {
      if (v24)
      {

        v20 = sub_1DD6DDEFC();
        v22 = sub_1DD7157E8(v20, v21);

        if (v22)
        {
          return 1;
        }
      }
    }

    else if (!v24)
    {
      return 1;
    }
  }

  return 0;
}

void static EnumDefinition.== infix(_:_:)(uint64_t a1)
{
  v1 = sub_1DD6E27E8(a1);
  v4 = v3[2];
  v5 = v3[3];
  v7 = v2[2];
  v6 = v2[3];
  v8 = v1 == *v2 && v3[1] == v2[1];
  if (!v8 && (sub_1DD875A30() & 1) == 0)
  {
    return;
  }

  if (!v5)
  {
    if (v6)
    {
      return;
    }

    goto LABEL_13;
  }

  if (v6)
  {
    v9 = v4 == v7 && v5 == v6;
    if (v9 || (sub_1DD6E0668(), (sub_1DD875A30() & 1) != 0))
    {
LABEL_13:
      sub_1DD6DDEFC();

      sub_1DD7152B8();
    }
  }
}

unint64_t sub_1DD85B7B0()
{
  result = qword_1ECD16528;
  if (!qword_1ECD16528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16528);
  }

  return result;
}

void sub_1DD85B804(void *a1@<X8>)
{
  TypeDefinition.init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t ObjectDefinition.id.setter()
{
  sub_1DD6DE304();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ObjectDefinition.bundleId.setter()
{
  sub_1DD6DE304();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t ObjectDefinition.properties.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t ObjectDefinition.explanation.setter()
{
  sub_1DD6DE304();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t ObjectDefinition.queries.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

void __swiftcall ObjectDefinition.init(id:bundleId:properties:explanation:queries:)(IntelligenceFlow::ObjectDefinition *__return_ptr retstr, Swift::String id, Swift::String_optional bundleId, Swift::OpaquePointer properties, Swift::String_optional explanation, Swift::OpaquePointer queries)
{
  retstr->id = id;
  retstr->bundleId = bundleId;
  retstr->properties = properties;
  retstr->explanation = explanation;
  retstr->queries.value = queries;
}

uint64_t sub_1DD85BA68(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x74616E616C707865 && a2 == 0xEB000000006E6F69;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x73656972657571 && a2 == 0xE700000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1DD875A30();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1DD85BC0C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6449656C646E7562;
      break;
    case 2:
      result = 0x69747265706F7270;
      break;
    case 3:
      result = 0x74616E616C707865;
      break;
    case 4:
      result = 0x73656972657571;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD85BCB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD85BA68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD85BCD8(uint64_t a1)
{
  v2 = sub_1DD85D7D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD85BD14(uint64_t a1)
{
  v2 = sub_1DD85D7D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ObjectDefinition.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  v22 = sub_1DD710A9C(&qword_1ECD16588, &qword_1DD8AFE88);
  sub_1DD6DDEAC();
  v24 = v23;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1DD6DEA6C();
  sub_1DD6DE3B8();
  sub_1DD6E71CC();
  v26 = sub_1DD85D7D8();
  sub_1DD6E6240(&type metadata for ObjectDefinition.CodingKeys, v27, v26);
  sub_1DD875970();
  if (!v20)
  {
    sub_1DD6E38D4(1);
    sub_1DD6DE334();
    sub_1DD875920();
    sub_1DD710A9C(&qword_1ECD164D8, &qword_1DD8AFE38);
    sub_1DD6DF4F0();
    sub_1DD85A02C(v28);
    sub_1DD6DEE04();
    sub_1DD6DE334();
    sub_1DD8759D0();
    sub_1DD6E38D4(3);
    sub_1DD6DE334();
    sub_1DD875920();
    sub_1DD710A9C(&qword_1ECD16598, &qword_1DD8AFE90);
    sub_1DD85D82C(&qword_1ECD165A0);
    sub_1DD6DEE04();
    sub_1DD6DE334();
    sub_1DD875960();
  }

  (*(v24 + 8))(v21, v22);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void ObjectDefinition.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1DD6DED2C();
  sub_1DD6E6390();
  v13 = v12;
  sub_1DD710A9C(&qword_1ECD165B0, &qword_1DD8AFE98);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6F0A58();
  sub_1DD6DEA7C(v10, v10[3]);
  sub_1DD85D7D8();
  sub_1DD6E2000();
  sub_1DD875B90();
  if (v11)
  {
    sub_1DD6E1EC8(v10);
  }

  else
  {
    sub_1DD6DEB0C();
    v15 = sub_1DD875870();
    v17 = v16;
    LOBYTE(v31[0]) = 1;
    sub_1DD6DEB0C();
    *&v27 = sub_1DD875820();
    *(&v27 + 1) = v18;
    sub_1DD710A9C(&qword_1ECD164D8, &qword_1DD8AFE38);
    sub_1DD6E53C0();
    sub_1DD85A02C(v19);
    sub_1DD6DEE04();
    sub_1DD6DEB0C();
    sub_1DD8758D0();
    v26 = v31[0];
    LOBYTE(v31[0]) = 3;
    sub_1DD6DEB0C();
    v24 = sub_1DD875820();
    v25 = v20;
    sub_1DD710A9C(&qword_1ECD16598, &qword_1DD8AFE90);
    v37 = 4;
    sub_1DD85D82C(&qword_1ECD165B8);
    sub_1DD6DEE04();
    sub_1DD6DEB0C();
    sub_1DD875860();
    v21 = sub_1DD6DE694();
    v22(v21);
    *&v28[0] = v15;
    *(&v28[0] + 1) = v17;
    v28[1] = v27;
    *&v29 = v26;
    *(&v29 + 1) = v24;
    *&v30 = v25;
    *(&v30 + 1) = a10;
    *v13 = v28[0];
    v13[1] = v27;
    v23 = v30;
    v13[2] = v29;
    v13[3] = v23;
    sub_1DD85D5E8(v28, v31);
    sub_1DD6E1EC8(v10);
    v31[0] = v15;
    v31[1] = v17;
    v32 = v27;
    v33 = v26;
    v34 = v24;
    v35 = v25;
    v36 = a10;
    sub_1DD85D938(v31);
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t EnumDefinition.id.setter()
{
  sub_1DD6DE304();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t EnumDefinition.bundleId.setter()
{
  sub_1DD6DE304();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t EnumDefinition.cases.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

void __swiftcall EnumDefinition.init(id:bundleId:cases:)(IntelligenceFlow::EnumDefinition *__return_ptr retstr, Swift::String id, Swift::String_optional bundleId, Swift::OpaquePointer cases)
{
  retstr->id = id;
  retstr->bundleId = bundleId;
  retstr->cases = cases;
}

uint64_t sub_1DD85C478(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7365736163 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD875A30();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1DD85C57C(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 0x6449656C646E7562;
  }

  return 0x7365736163;
}

uint64_t sub_1DD85C5CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD85C478(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD85C5F4(uint64_t a1)
{
  v2 = sub_1DD85D968();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD85C630(uint64_t a1)
{
  v2 = sub_1DD85D968();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void EnumDefinition.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1DD6DED2C();
  v25 = v24;
  sub_1DD710A9C(&qword_1ECD165C8, &unk_1DD8AFEA0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1DD6DEA6C();
  sub_1DD6DEA7C(v25, v25[3]);
  sub_1DD85D968();
  sub_1DD875BB0();
  sub_1DD875970();
  if (!v23)
  {
    sub_1DD6DEC54();
    sub_1DD6E0E40();
    sub_1DD875920();
    sub_1DD6E0FF8();
    sub_1DD710A9C(&unk_1ECD16AD0, &qword_1DD8AEFF0);
    sub_1DD703A98(&qword_1EE015DC0);
    sub_1DD6DE334();
    sub_1DD8759D0();
  }

  v27 = sub_1DD6EEDBC();
  v28(v27);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void EnumDefinition.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_1DD6DED2C();
  sub_1DD6E6390();
  v22 = v21;
  sub_1DD710A9C(&qword_1ECD165D8, &qword_1DD8AFEB0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1DD6DEA7C(v19, v19[3]);
  sub_1DD85D968();
  sub_1DD875B90();
  if (v20)
  {
    sub_1DD6E1EC8(v19);
  }

  else
  {
    v24 = sub_1DD875870();
    v26 = v25;
    sub_1DD6DEC54();
    v30 = sub_1DD875820();
    v31 = v27;
    sub_1DD710A9C(&unk_1ECD16AD0, &qword_1DD8AEFF0);
    sub_1DD6E0FF8();
    sub_1DD703A98(&qword_1EE015DB8);
    sub_1DD8758D0();
    v28 = sub_1DD6E0E30();
    v29(v28);
    *v22 = v24;
    v22[1] = v26;
    v22[2] = v30;
    v22[3] = v31;
    v22[4] = v32;

    sub_1DD6E1EC8(v19);
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t QueryDefinition.id.setter()
{
  sub_1DD6DE304();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t QueryDefinition.entityId.setter()
{
  sub_1DD6DE304();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t QueryDefinition.bundleId.setter()
{
  sub_1DD6DE304();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t QueryDefinition.parameters.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

void __swiftcall QueryDefinition.init(id:entityId:bundleId:parameters:)(IntelligenceFlow::QueryDefinition *__return_ptr retstr, Swift::String id, Swift::String entityId, Swift::String bundleId, Swift::OpaquePointer parameters)
{
  retstr->id = id;
  retstr->entityId = entityId;
  retstr->bundleId = bundleId;
  retstr->parameters = parameters;
}

void static QueryDefinition.== infix(_:_:)(uint64_t a1)
{
  v1 = sub_1DD6E27E8(a1);
  v4 = v3[2];
  v6 = v3[3];
  v5 = v3[4];
  v7 = v3[5];
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v11 = v2[5];
  v12 = v1 == *v2 && v3[1] == v2[1];
  if (v12 || (sub_1DD875A30() & 1) != 0)
  {
    v13 = v4 == v8 && v6 == v9;
    if (v13 || (sub_1DD6ED130(), (sub_1DD875A30() & 1) != 0))
    {
      v14 = v5 == v10 && v7 == v11;
      if (v14 || (sub_1DD6E65D0(), (sub_1DD875A30() & 1) != 0))
      {
        v15 = sub_1DD6DDEFC();

        sub_1DD71557C(v15, v16);
      }
    }
  }
}

uint64_t sub_1DD85CD58(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449797469746E65 && a2 == 0xE800000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD875A30();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1DD85CEB8(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      v3 = 0x797469746E65;
      goto LABEL_4;
    case 2:
      v3 = 0x656C646E7562;
LABEL_4:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6449000000000000;
      break;
    case 3:
      result = 0x6574656D61726170;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD85CF38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD85CD58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD85CF60(uint64_t a1)
{
  v2 = sub_1DD85D9BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD85CF9C(uint64_t a1)
{
  v2 = sub_1DD85D9BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void QueryDefinition.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD710A9C(&qword_1ECD165E0, &qword_1DD8AFEB8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1DD6DEA6C();
  sub_1DD6DE3B8();
  sub_1DD6E71CC();
  v2 = sub_1DD85D9BC();
  sub_1DD6E6240(&type metadata for QueryDefinition.CodingKeys, v3, v2);
  sub_1DD6DFF80();
  if (!v0)
  {
    sub_1DD6DEC54();
    sub_1DD6E0E40();
    sub_1DD875970();
    sub_1DD6E0FF8();
    sub_1DD6E0E40();
    sub_1DD875970();
    sub_1DD6E6174();
    sub_1DD710A9C(&qword_1ECD164D8, &qword_1DD8AFE38);
    sub_1DD6DF4F0();
    sub_1DD85A02C(v4);
    sub_1DD6DE334();
    sub_1DD8759D0();
  }

  v5 = sub_1DD6EEDBC();
  v6(v5);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void QueryDefinition.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_1DD6DED2C();
  sub_1DD6E6390();
  v22 = v21;
  sub_1DD710A9C(&qword_1ECD165F0, &qword_1DD8AFEC0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1DD6F0A58();
  sub_1DD6DEA7C(v19, v19[3]);
  sub_1DD85D9BC();
  sub_1DD6E2000();
  sub_1DD875B90();
  if (v20)
  {
    sub_1DD6E1EC8(v19);
  }

  else
  {
    sub_1DD6FC4DC();
    v24 = sub_1DD875870();
    v36 = v25;
    sub_1DD6DEC54();
    sub_1DD6FC4DC();
    v26 = sub_1DD875870();
    v35 = v27;
    v33 = v26;
    sub_1DD6E0FF8();
    v32 = sub_1DD875870();
    v34 = v28;
    sub_1DD710A9C(&qword_1ECD164D8, &qword_1DD8AFE38);
    sub_1DD6E6174();
    sub_1DD6E53C0();
    sub_1DD85A02C(v29);
    sub_1DD6DEB0C();
    sub_1DD8758D0();
    v30 = sub_1DD6ED6F4();
    v31(v30);
    *v22 = v24;
    v22[1] = v36;
    v22[2] = v33;
    v22[3] = v35;
    v22[4] = v32;
    v22[5] = v34;
    v22[6] = v37;

    sub_1DD6E1EC8(v19);
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

unint64_t sub_1DD85D490@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD70FB60(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1DD85D4C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD70FBAC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DD85D4F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD70FB60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD85D51C(uint64_t a1)
{
  v2 = sub_1DD85D674();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD85D558(uint64_t a1)
{
  v2 = sub_1DD85D674();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DD85D594()
{
  result = qword_1ECD16540;
  if (!qword_1ECD16540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16540);
  }

  return result;
}

unint64_t sub_1DD85D620()
{
  result = qword_1ECD16558;
  if (!qword_1ECD16558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16558);
  }

  return result;
}

unint64_t sub_1DD85D674()
{
  result = qword_1ECD16570;
  if (!qword_1ECD16570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16570);
  }

  return result;
}

uint64_t sub_1DD85D6C8(uint64_t a1)
{
  v2 = sub_1DD710A9C(&qword_1ECD16560, &qword_1DD8AFE78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DD85D730()
{
  result = qword_1ECD16578;
  if (!qword_1ECD16578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16578);
  }

  return result;
}

unint64_t sub_1DD85D784()
{
  result = qword_1ECD16580;
  if (!qword_1ECD16580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16580);
  }

  return result;
}

unint64_t sub_1DD85D7D8()
{
  result = qword_1ECD16590;
  if (!qword_1ECD16590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16590);
  }

  return result;
}

uint64_t sub_1DD85D82C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1DD6ED408();
    sub_1DD717E88(&qword_1ECD16598, &qword_1DD8AFE90);
    v1();
    result = sub_1DD6E9658();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DD85D890()
{
  result = qword_1ECD165A8;
  if (!qword_1ECD165A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD165A8);
  }

  return result;
}

unint64_t sub_1DD85D8E4()
{
  result = qword_1ECD165C0;
  if (!qword_1ECD165C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD165C0);
  }

  return result;
}

unint64_t sub_1DD85D968()
{
  result = qword_1ECD165D0;
  if (!qword_1ECD165D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD165D0);
  }

  return result;
}

unint64_t sub_1DD85D9BC()
{
  result = qword_1ECD165E8;
  if (!qword_1ECD165E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD165E8);
  }

  return result;
}

unint64_t sub_1DD85DA14()
{
  result = qword_1ECD165F8;
  if (!qword_1ECD165F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD165F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ToolEffect(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DD85DB48(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_1DD85DB88(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1DD85DBEC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7C && *(a1 + 8))
    {
      v2 = *a1 + 123;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7B)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1DD85DC40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_1DD85DCA0(unint64_t *result, uint64_t a2)
{
  if (a2 < 4)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    v2 = (8 * (a2 - 4)) | 0x8000000000000000;
  }

  *result = v2;
  return result;
}

uint64_t sub_1DD85DCE0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1DD85DD20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EnumDefinition.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ObjectDefinition.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DD85DF58(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ToolDefinition.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD85E114()
{
  result = qword_1ECD16600;
  if (!qword_1ECD16600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16600);
  }

  return result;
}

unint64_t sub_1DD85E16C()
{
  result = qword_1ECD16608;
  if (!qword_1ECD16608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16608);
  }

  return result;
}

unint64_t sub_1DD85E1C4()
{
  result = qword_1ECD16610;
  if (!qword_1ECD16610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16610);
  }

  return result;
}

unint64_t sub_1DD85E21C()
{
  result = qword_1ECD16618;
  if (!qword_1ECD16618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16618);
  }

  return result;
}

unint64_t sub_1DD85E274()
{
  result = qword_1ECD16620;
  if (!qword_1ECD16620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16620);
  }

  return result;
}

unint64_t sub_1DD85E2CC()
{
  result = qword_1ECD16628;
  if (!qword_1ECD16628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16628);
  }

  return result;
}

unint64_t sub_1DD85E324()
{
  result = qword_1ECD16630;
  if (!qword_1ECD16630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16630);
  }

  return result;
}

unint64_t sub_1DD85E37C()
{
  result = qword_1ECD16638;
  if (!qword_1ECD16638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16638);
  }

  return result;
}

unint64_t sub_1DD85E3D4()
{
  result = qword_1ECD16640;
  if (!qword_1ECD16640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16640);
  }

  return result;
}

unint64_t sub_1DD85E42C()
{
  result = qword_1ECD16648;
  if (!qword_1ECD16648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16648);
  }

  return result;
}

unint64_t sub_1DD85E484()
{
  result = qword_1ECD16650;
  if (!qword_1ECD16650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16650);
  }

  return result;
}

unint64_t sub_1DD85E4DC()
{
  result = qword_1ECD16658;
  if (!qword_1ECD16658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16658);
  }

  return result;
}

unint64_t sub_1DD85E534()
{
  result = qword_1ECD16660;
  if (!qword_1ECD16660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16660);
  }

  return result;
}

unint64_t sub_1DD85E58C()
{
  result = qword_1ECD16668;
  if (!qword_1ECD16668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16668);
  }

  return result;
}

unint64_t sub_1DD85E5E4()
{
  result = qword_1ECD16670;
  if (!qword_1ECD16670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16670);
  }

  return result;
}

unint64_t sub_1DD85E63C()
{
  result = qword_1ECD16678;
  if (!qword_1ECD16678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16678);
  }

  return result;
}

unint64_t sub_1DD85E694()
{
  result = qword_1ECD16680;
  if (!qword_1ECD16680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16680);
  }

  return result;
}

unint64_t sub_1DD85E6EC()
{
  result = qword_1ECD16688;
  if (!qword_1ECD16688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16688);
  }

  return result;
}

unint64_t sub_1DD85E740()
{
  result = qword_1ECD16690;
  if (!qword_1ECD16690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16690);
  }

  return result;
}

uint64_t UUID.init(namespace:name:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD874820();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = sub_1DD8747A0();
  UUID.init(namespace:name:)(v8, v9, v10);
  v11 = *(v5 + 8);
  v11(a2, v4);
  return (v11)(a1, v4);
}

id static InternalXPCService.interface.getter()
{
  if (qword_1ECD0DFB0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECD16698;

  return v1;
}

double static InternalXPCService.selectorClasses.getter()
{
  if (qword_1ECD0DFB8 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_1DD85EA30()
{
  v0 = sub_1DD874ED0();
  sub_1DD732C90(v0, qword_1ECD166A8);
  sub_1DD6E1224(v0, qword_1ECD166A8);
  return sub_1DD874C00();
}

uint64_t static InternalXPCService.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECD0DFC0 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD874ED0();
  v3 = sub_1DD6E1224(v2, qword_1ECD166A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t InternalClient.__allocating_init()()
{
  v0 = swift_allocObject();
  InternalClient.init()(v0, v1);
  return v0;
}

uint64_t InternalClient.init()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0;
  sub_1DD85ED58(&qword_1ECD166C0, a2, type metadata accessor for InternalClient, &protocol conformance descriptor for InternalClient);
  sub_1DD710A9C(&qword_1ECD166C8, &unk_1DD8B0DF0);
  swift_allocObject();

  *(v2 + 16) = sub_1DD874D10();

  return v2;
}

uint64_t InternalClient.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1DD85ECB4(uint64_t a1, uint64_t a2)
{
  result = sub_1DD85ED58(&qword_1ECD166C0, a2, type metadata accessor for InternalClient, &protocol conformance descriptor for InternalClient);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DD85ED58(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1DD85EDA0(uint64_t a1)
{
  v2 = type metadata accessor for InternalClient();

  return MEMORY[0x1EEE2EE60](a1, v2);
}

_BYTE *storeEnumTagSinglePayload for InternalXPCService(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DD85EF28()
{
  v2 = *v1;
  sub_1DD6E07F0();
  *v3 = v2;
  v4 = *v1;
  sub_1DD6E07F0();
  *v5 = v4;
  *(v2 + 152) = v0;

  if (v0)
  {
    v6 = sub_1DD85F14C;
  }

  else
  {

    v6 = sub_1DD85F044;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DD85F044()
{
  sub_1DD6E6030();
  sub_1DD874B90();
  v4 = sub_1DD6E4A38(&qword_1EE013AB0, 255, MEMORY[0x1E69A9128], MEMORY[0x1E69A9138]);
  sub_1DD6E2270(v4);
  v6 = v2[14];
  v5 = v2[15];
  sub_1DD6E6658(v2[12], v2[13]);
  sub_1DD6E6658(v6, v5);
  sub_1DD6E6658(v0, v3);
  if (v1)
  {
    sub_1DD6DF508();

    return v7();
  }

  else
  {
    v9 = sub_1DD6E0E78();

    return v10(v9);
  }
}

uint64_t sub_1DD85F14C()
{
  v2 = v0[14];
  v1 = v0[15];
  sub_1DD6E6658(v0[12], v0[13]);
  sub_1DD6E6658(v2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DD85F1DC(uint64_t a1, void *a2)
{
  v3[8] = a1;
  v3[9] = v2;
  v4 = a2[1];
  v3[10] = *a2;
  v3[11] = v4;
  return sub_1DD6E13F8();
}

uint64_t sub_1DD85F1F8()
{
  v2 = sub_1DD6DE3CC();
  sub_1DD6E53D8();
  v5 = sub_1DD6E4A38(v3, 255, v4, MEMORY[0x1E69A9120]);
  *(v0 + 48) = sub_1DD6E0BB4(v5);
  *(v0 + 56) = v6;
  if (v2)
  {
    sub_1DD6DF508();
    sub_1DD6DE6A4();

    __asm { BRAA            X1, X16 }
  }

  sub_1DD6E6B0C();
  v1[14] = sub_1DD8745F0();
  v1[15] = v7;
  v10 = *(v1[9] + 16);
  v1[16] = v10;
  if (v10)
  {
    v11 = sub_1DD6E2828();
    sub_1DD6F3270(v11);

    v12 = swift_task_alloc();
    v1[18] = v12;
    *v12 = v1;
    v12[1] = sub_1DD85F370;
    sub_1DD6FC4EC();
    sub_1DD6DE6A4();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE2EE30]();
}

uint64_t sub_1DD85F370()
{
  v2 = *v1;
  sub_1DD6E07F0();
  *v3 = v2;
  v4 = *v1;
  sub_1DD6E07F0();
  *v5 = v4;
  *(v2 + 152) = v0;

  if (v0)
  {
    v6 = sub_1DD85FDC8;
  }

  else
  {

    v6 = sub_1DD85F48C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DD85F48C()
{
  sub_1DD6E6030();
  sub_1DD874BA0();
  sub_1DD6E0678();
  v6 = sub_1DD6E4A38(v4, 255, v5, MEMORY[0x1E69A9180]);
  sub_1DD6E2270(v6);
  v8 = v2[14];
  v7 = v2[15];
  sub_1DD6E6658(v2[12], v2[13]);
  sub_1DD6E6658(v8, v7);
  sub_1DD6E6658(v0, v3);
  if (v1)
  {
    sub_1DD6DF508();

    return v9();
  }

  else
  {
    v11 = sub_1DD6E0E78();

    return v12(v11);
  }
}

uint64_t sub_1DD85F584(uint64_t a1, void *a2)
{
  v3[6] = a1;
  v3[7] = v2;
  v4 = a2[1];
  v3[8] = *a2;
  v3[9] = v4;
  return sub_1DD6E13F8();
}

uint64_t sub_1DD85F5A0()
{
  v0[4] = v0[6];
  v1 = sub_1DD874BA0();
  sub_1DD6E0678();
  v4 = sub_1DD6E4A38(v2, 255, v3, MEMORY[0x1E69A9178]);
  v5 = sub_1DD6E0BB4(v4);
  v0[10] = v5;
  v0[11] = v6;
  if (v1)
  {
    sub_1DD6DF508();
    sub_1DD6DE6A4();

    __asm { BRAA            X1, X16 }
  }

  v7 = v5;
  v8 = v6;
  v9 = v0[9];
  v0[2] = v0[8];
  v0[3] = v9;
  sub_1DD6EF294();
  v10 = sub_1DD8745F0();
  v0[12] = v10;
  v0[13] = v11;
  v14 = *(v0[7] + 16);
  v0[14] = v14;
  if (v14)
  {
    v15 = v10;
    v16 = v11;
    v17 = swift_task_alloc();
    v0[15] = v17;
    v17[2] = v7;
    v17[3] = v8;
    v17[4] = v15;
    v17[5] = v16;

    v18 = swift_task_alloc();
    v0[16] = v18;
    sub_1DD6E0EC8();
    *v18 = v0;
    v18[1] = sub_1DD85F768;
    sub_1DD6DE6A4();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE2EE30]();
}

uint64_t sub_1DD85F768()
{
  v2 = *v1;
  sub_1DD6E07F0();
  *v3 = v2;
  v4 = *v1;
  sub_1DD6E07F0();
  *v5 = v4;
  *(v2 + 136) = v0;

  if (v0)
  {
    v6 = sub_1DD85F90C;
  }

  else
  {

    v6 = sub_1DD85F898;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DD85F898()
{
  v1 = v0[12];
  v2 = v0[13];
  sub_1DD6E6658(v0[10], v0[11]);
  sub_1DD6E6658(v1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_1DD85F90C()
{
  v2 = v0[12];
  v1 = v0[13];
  sub_1DD6E6658(v0[10], v0[11]);
  sub_1DD6E6658(v2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DD85F9C4()
{
  v0 = sub_1DD874ED0();
  sub_1DD732C90(v0, qword_1EE019090);
  sub_1DD6E1224(v0, qword_1EE019090);
  return sub_1DD874BD0();
}

uint64_t sub_1DD85FA10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;

  sub_1DD85FAC8(a4, a5, a6, a7, sub_1DD6E6440, v14, a1);
}

void sub_1DD85FAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = sub_1DD874750();
  v11 = sub_1DD874750();
  v13[4] = a5;
  v13[5] = a6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1DD6E1B38;
  v13[3] = &unk_1F58E5F58;
  v12 = _Block_copy(v13);

  [a7 cacheRemoteDeviceStateWithRemoteStateData:v10 crossAPIAssociationKeyData:v11 with:v12];
  _Block_release(v12);
}

uint64_t sub_1DD85FBBC(uint64_t a1, uint64_t a2)
{
  result = sub_1DD6E4A38(qword_1EE017168, a2, type metadata accessor for QueryDecorationClient, &protocol conformance descriptor for QueryDecorationClient);
  *(a1 + 8) = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for QueryDecorationXPCService(_BYTE *result, int a2, int a3)
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

uint64_t EventsSubscription.Iterator.next()()
{
  sub_1DD6E1F54();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  sub_1DD710A9C(&qword_1ECD0E490, &qword_1DD878808);
  *v3 = v0;
  v3[1] = sub_1DD6FA5C4;

  return MEMORY[0x1EEE6DB98](v2);
}

uint64_t sub_1DD85FE94()
{
  sub_1DD6DDF4C();
  v2 = v1;
  v0[3] = v3;
  v0[4] = v4;
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1DD85FF30;

  return SessionDebuggerEventsSubscription.Iterator.next()(v2);
}

uint64_t sub_1DD85FF30()
{
  sub_1DD6E1F54();
  sub_1DD6DF09C();
  v3 = v2;
  sub_1DD6DE408();
  *v4 = v3;
  v5 = *v1;
  sub_1DD6E04EC();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    if (*(v3 + 24))
    {
      swift_getObjectType();
      v7 = sub_1DD875360();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    return MEMORY[0x1EEE6DFA0](sub_1DD8656BC, v7, v9);
  }

  else
  {
    sub_1DD6DDF40();

    return v10();
  }
}

uint64_t sub_1DD860084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v5 = swift_task_alloc();
  v3[5] = v5;
  sub_1DD710A9C(&qword_1ECD0E490, &qword_1DD878808);
  *v5 = v3;
  v5[1] = sub_1DD860144;

  return MEMORY[0x1EEE6DB98](a1);
}

uint64_t sub_1DD860144()
{
  sub_1DD6E1F54();
  sub_1DD6DF09C();
  v3 = v2;
  sub_1DD6DE408();
  *v4 = v3;
  v5 = *v1;
  sub_1DD6E04EC();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    if (*(v3 + 24))
    {
      swift_getObjectType();
      v7 = sub_1DD875360();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    return MEMORY[0x1EEE6DFA0](sub_1DD860298, v7, v9);
  }

  else
  {
    sub_1DD6DDF40();

    return v10();
  }
}

uint64_t sub_1DD860298()
{
  sub_1DD6DDF4C();
  *(v0 + 16) = *(v0 + 48);
  sub_1DD710A9C(&qword_1ECD0FAB0, &qword_1DD8AF8D0);
  swift_willThrowTypedImpl();
  sub_1DD6DDF40();

  return v1();
}

uint64_t sub_1DD860354()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DD71FCC8;

  return EventsSubscription.Iterator.next()();
}

uint64_t sub_1DD8603EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1DD8604B8;

  return sub_1DD860084(a1, a2, a3);
}

uint64_t sub_1DD8604B8()
{
  sub_1DD6E1F54();
  sub_1DD6DF09C();
  v3 = v2;
  sub_1DD6DE408();
  *v4 = v3;
  v5 = *v1;
  sub_1DD6E04EC();
  *v6 = v5;

  if (v0)
  {
    **(v3 + 16) = v0;
  }

  v7 = *(v5 + 8);

  return v7();
}

uint64_t EventsSubscription.__allocating_init(continuation:stream:)()
{
  v0 = sub_1DD6EEDF4();
  v1 = sub_1DD6ED118();
  EventsSubscription.init(continuation:stream:)(v1, v2);
  return v0;
}

uint64_t EventsSubscription.init(continuation:stream:)(uint64_t a1, uint64_t a2)
{
  sub_1DD710A9C(&qword_1ECD166F0, &unk_1DD8B1090);
  sub_1DD6DE1C4();
  (*(v5 + 8))(a1);
  *(v2 + 16) = 0;
  v6 = OBJC_IVAR____TtC16IntelligenceFlow18EventsSubscription_stream;
  sub_1DD710A9C(&qword_1ECD0E4A0, qword_1DD878818);
  sub_1DD6DE1C4();
  (*(v7 + 32))(v2 + v6, a2);
  return v2;
}

uint64_t sub_1DD860730()
{
  sub_1DD8606C8();
}

uint64_t sub_1DD860774()
{
  v2 = sub_1DD6EEDF4();
  *(v2 + 16) = 0;
  v3 = *v0;
  sub_1DD710A9C(&qword_1ECD0E4A0, qword_1DD878818);
  sub_1DD6DE1C4();
  (*(v4 + 32))(v2 + v3, v1);
  return v2;
}

uint64_t sub_1DD8607F8(uint64_t a1, uint64_t *a2)
{
  *(v2 + 16) = 0;
  v4 = *a2;
  sub_1DD710A9C(&qword_1ECD0E4A0, qword_1DD878818);
  sub_1DD6DE1C4();
  (*(v5 + 32))(v2 + v4, a1);
  return v2;
}

uint64_t sub_1DD8608C8(uint64_t *a1)
{

  v3 = *a1;
  sub_1DD710A9C(&qword_1ECD0E4A0, qword_1DD878818);
  sub_1DD6DE1C4();
  (*(v4 + 8))(v1 + v3);
  return v1;
}

uint64_t sub_1DD860940(uint64_t *a1)
{

  v3 = *a1;
  sub_1DD710A9C(&qword_1ECD0E4A0, qword_1DD878818);
  sub_1DD6DE1C4();
  (*(v4 + 8))(v1 + v3);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v5, v6);
}

uint64_t sub_1DD8609E8()
{
  sub_1DD86086C();
}

uint64_t SessionClient.__allocating_init(clientIdentifier:)()
{

  type metadata accessor for SessionClient.ReverseServer();
  sub_1DD6E2848();
  v1 = swift_allocObject();
  sub_1DD6DE128();

  v3 = SessionClient.__allocating_init(localObject:)(v2);
  if (v0)
  {
  }

  else
  {
    *(v3 + 56) = v1;
    swift_unknownObjectRelease();
  }

  return v3;
}

uint64_t SessionClient.__allocating_init(localObject:)(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7CC0];
  v4 = 0;
  return (*(v1 + 168))(a1, &v3);
}

uint64_t SessionClient.__allocating_init()()
{
  v1 = MEMORY[0x1E69E7CC0];
  v2 = 0;
  return SessionClient.__allocating_init(configuration:)(&v1);
}

uint64_t SessionClient.__allocating_init<A>(clientIdentifier:connection:)()
{
  sub_1DD6E6600();
  sub_1DD6DF290();
  MEMORY[0x1EEE9AC00](v0);
  sub_1DD6E2220();
  v1 = sub_1DD6DEC78();
  v4(v1, v2, v3);
  SessionClient.__allocating_init<A>(clientIdentifier:connection:configuration:)();
  v6 = v5;
  v7 = sub_1DD6DFFAC();
  v8(v7);
  return v6;
}

void SessionClient.__allocating_init<A>(clientIdentifier:connection:configuration:)()
{
  sub_1DD6DEB38();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_1DD6DF290();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6E2220();

  v14 = *v8;
  v15 = *(v8 + 8);
  type metadata accessor for SessionClient.ReverseServer();
  sub_1DD6E2848();
  v16 = swift_allocObject();
  sub_1DD6DE128();
  (*(v12 + 16))(v1, v10, v6);
  v22 = v14;
  v23 = v15;
  v17 = *(v2 + 176);

  v19 = v17(v18, v1, &v22, v6, v4);
  v20 = sub_1DD6ED118();
  v21(v20);
  *(v19 + 56) = v16;
  swift_unknownObjectRelease();
  sub_1DD6DFED0();
}

uint64_t SessionClient.__allocating_init<A>(localObject:connection:)()
{
  sub_1DD6FABA4();
  sub_1DD6DF290();
  MEMORY[0x1EEE9AC00](v0);
  sub_1DD6E2220();
  v1 = sub_1DD6DEC78();
  v2(v1);
  v3 = sub_1DD6DEE10();
  v5 = v4(v3);
  v6 = sub_1DD6DFFAC();
  v7(v6);
  return v5;
}

uint64_t SessionClient.__allocating_init<A>(localObject:connection:configuration:)()
{
  sub_1DD6E6600();
  sub_1DD6E6B30();
  swift_allocObject();
  v1 = sub_1DD6EE30C();
  SessionClient.init<A>(localObject:connection:configuration:)(v1, v2, v3, v4, v5);
  return v0;
}

uint64_t SessionClient.init<A>(localObject:connection:configuration:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = *a3;
  v12 = *(a3 + 8);
  sub_1DD874610();
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  v13 = v5 + 16;
  *(v5 + 48) = 0;
  sub_1DD6DE2C8();
  swift_allocObject();
  *(v5 + 64) = sub_1DD874600();
  sub_1DD8745E0();
  sub_1DD6DE2C8();
  swift_allocObject();
  *(v5 + 72) = sub_1DD8745D0();
  *(v5 + 56) = a1;
  *(&v19 + 1) = a4;
  v20 = a5;
  v14 = sub_1DD79A52C(&v18);
  (*(*(a4 - 8) + 32))(v14, a2, a4);
  swift_beginAccess();
  v15 = *(&v19 + 1);
  if (!*(v13 + 24))
  {
    if (*(&v19 + 1))
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = v19;
    *v13 = v18;
    *(v13 + 16) = v16;
    *(v13 + 32) = v20;
    goto LABEL_6;
  }

  sub_1DD6E1EC8(v13);
  if (!v15)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1DD6DF5E4(&v18, v13);
LABEL_6:
  swift_endAccess();
  *(v6 + 80) = v11;
  *(v6 + 88) = v12;
  return v6;
}

uint64_t sub_1DD860FDC()
{
  sub_1DD6ED2E8();
  result = swift_beginAccess();
  if (*(v1 + 40))
  {
    result = sub_1DD6E0F0C(v1 + 16, &v4);
  }

  else
  {
    v3 = *(v1 + 32);
    v4 = *(v1 + 16);
    v5 = v3;
    v6 = *(v1 + 48);
  }

  if (*(&v5 + 1))
  {
    sub_1DD6DEA7C(&v4, *(&v5 + 1));
    sub_1DD874820();
    sub_1DD874D80();
    return sub_1DD6E1EC8(&v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1DD8610B4(void *a1, uint64_t a2, uint64_t a3)
{
  v5[4] = a2;
  v5[5] = a3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1DD6FC2C0;
  v5[3] = &unk_1F58E67D0;
  v4 = _Block_copy(v5);

  [a1 fetchSessionClientIdWithReply_];
  _Block_release(v4);
}

void sub_1DD8611C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  v22 = *(v20 + 56);
  if (object_getClass(v22) != _TtCC16IntelligenceFlow13SessionClient13ReverseServer || v22 == 0)
  {
    goto LABEL_14;
  }

  swift_unknownObjectRetain();
  v27 = sub_1DD8613A8();
  v28 = v24;
  sub_1DD861470();
  sub_1DD6ED2E8();
  swift_beginAccess();
  if (*(v20 + 40))
  {
    sub_1DD6E0F0C(v20 + 16, &v29);
  }

  else
  {
    v25 = *(v20 + 32);
    v29 = *(v20 + 16);
    v30 = v25;
    v31 = *(v20 + 48);
  }

  if (!*(&v30 + 1))
  {
    __break(1u);
LABEL_14:
    sub_1DD6E6260();
    __break(1u);
    return;
  }

  v26 = sub_1DD6DEA7C(&v29, *(&v30 + 1));
  MEMORY[0x1EEE9AC00](v26);
  sub_1DD6E0EC8();
  sub_1DD874D80();
  if (v21)
  {
    sub_1DD6E1EC8(&v29);
    sub_1DD861470();
    swift_willThrow();
    sub_1DD863360(v27, v28);
    swift_unknownObjectRelease();
  }

  else
  {

    sub_1DD863360(v27, v28);
    swift_unknownObjectRelease();
    sub_1DD6E1EC8(&v29);
  }

  sub_1DD6E0C78();
}

uint64_t (*sub_1DD8613A8())()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 48));
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  if (v2)
  {
    sub_1DD6E2848();
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1DD86563C;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  sub_1DD864654(v2, v3);
  os_unfair_lock_unlock((v1 + 48));
  if (!v2)
  {
    return 0;
  }

  sub_1DD6E2848();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  return sub_1DD865614;
}

void sub_1DD861470()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 12);
  sub_1DD8655F8(&v1[4]);
  os_unfair_lock_unlock(v1 + 12);
}

void sub_1DD8614C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  v10 = [v9 initWithBool_];
  v12[4] = sub_1DD865698;
  v12[5] = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1DD6E1B38;
  v12[3] = &unk_1F58E6690;
  v11 = _Block_copy(v12);

  [a1 updateTransactionHookAttachmentStatus:v10 with:v11];
  _Block_release(v11);
}

void sub_1DD8615EC()
{
  sub_1DD6ED2E8();
  swift_beginAccess();
  if (*(v0 + 40))
  {
    sub_1DD6E0F0C(v0 + 16, &v4);
  }

  else
  {
    sub_1DD6E6D08();
  }

  if (v5)
  {
    v2 = sub_1DD6DEA7C(&v4, v5);
    MEMORY[0x1EEE9AC00](v2);
    sub_1DD6E0EC8();
    sub_1DD7032C4();
    if (!v1)
    {
    }

    sub_1DD6E1EC8(&v4);
    sub_1DD6E1868();
  }

  else
  {
    __break(1u);
  }
}

void sub_1DD8616E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;

  v9 = sub_1DD8747C0();
  v10 = sub_1DD8752C0();
  v12[4] = sub_1DD865698;
  v12[5] = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1DD6E1B38;
  v12[3] = &unk_1F58E6640;
  v11 = _Block_copy(v12);

  [a1 postTransactionWithSessionId:v9 eventProtos:v10 with:v11];
  _Block_release(v11);
}

void sub_1DD861808()
{
  sub_1DD6DED2C();
  v3 = v0;
  v31 = v4;
  v5 = sub_1DD710A9C(&qword_1ECD16708, &qword_1DD8B10A8);
  sub_1DD6DEA10(v5);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1DD6E0CB8();
  v8 = type metadata accessor for SessionConfiguration(v7);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DE4A8();
  v12 = v11 - v10;
  v13 = sub_1DD6DFF24();
  sub_1DD6E7A88(v13, v14, &qword_1ECD16708, &qword_1DD8B10A8);
  if (sub_1DD6E5ED0(v2, 1, v8) == 1)
  {
    *v12 = 5;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    *(v12 + 24) = 2;
    v15 = v8[8];
    v16 = type metadata accessor for LocaleSettings(0);
    sub_1DD6E5E68(v12 + v15, 1, 1, v16);
    *(v12 + v8[9]) = 2;
    *(v12 + v8[10]) = 512;
    *(v12 + v8[11]) = 0;
    v17 = v12 + v8[12];
    *v17 = 0;
    *(v17 + 8) = 0;
    *(v17 + 16) = 0;
    *(v12 + v8[13]) = 4;
    *(v12 + v8[14]) = 2;
    v18 = (v12 + v8[15]);
    *v18 = 0;
    v18[1] = 0;
    if (sub_1DD6E5ED0(v2, 1, v8) != 1)
    {
      sub_1DD6FC560(v2, &qword_1ECD16708, &qword_1DD8B10A8);
    }
  }

  else
  {
    sub_1DD6E7B9C(v2, v12);
  }

  sub_1DD6FC500();
  sub_1DD6DEC94(v19, 255, v20, &protocol conformance descriptor for SessionConfiguration);
  v21 = sub_1DD8745F0();
  if (v1)
  {
    sub_1DD6DF518();
    sub_1DD6EEEFC(v12, v23);
LABEL_12:
    sub_1DD6E0C78();
    return;
  }

  v24 = v21;
  v25 = v22;
  empty = xpc_dictionary_create_empty();
  sub_1DD6EF494();
  sub_1DD6ED2E8();
  swift_beginAccess();
  if (*(v3 + 40))
  {
    sub_1DD6E0F0C(v3 + 16, &v32);
  }

  else
  {
    v27 = *(v3 + 32);
    v32 = *(v3 + 16);
    v33 = v27;
    v34 = *(v3 + 48);
  }

  if (*(&v33 + 1))
  {
    v28 = sub_1DD6DEA7C(&v32, *(&v33 + 1));
    v30[1] = v30;
    MEMORY[0x1EEE9AC00](v28);
    v30[-4] = v31;
    v30[-3] = v24;
    v30[-2] = v25;
    v30[-1] = empty;
    sub_1DD874820();
    sub_1DD874D80();
    sub_1DD6DF518();
    sub_1DD6EEEFC(v12, v29);
    sub_1DD6E6658(v24, v25);
    swift_unknownObjectRelease();
    sub_1DD6E1EC8(&v32);
    goto LABEL_12;
  }

  __break(1u);
}

void sub_1DD861B1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_1DD8752C0();
  v12 = sub_1DD874750();
  v14[4] = a2;
  v14[5] = a3;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1DD6FC2C0;
  v14[3] = &unk_1F58E65F0;
  v13 = _Block_copy(v14);

  [a1 createSessionFromProtoEventsWithEventProtos:v11 configData:v12 xpcData:a7 with:v13];
  _Block_release(v13);
}

void sub_1DD861C2C(uint64_t a1)
{
  sub_1DD6ED2E8();
  swift_beginAccess();
  if (*(v1 + 40))
  {
    sub_1DD6E0F0C(v1 + 16, &v5);
  }

  else
  {
    sub_1DD6E6D08();
  }

  if (v6)
  {
    v3 = sub_1DD6DEA7C(&v5, v6);
    MEMORY[0x1EEE9AC00](v3);
    sub_1DD6E0EC8();
    sub_1DD874D80();
    if (v2)
    {
      sub_1DD6E1EC8(&v5);
    }

    else
    {
      v4 = v7;
      sub_1DD6E1EC8(&v5);
      [v4 unsignedIntValue];
    }

    sub_1DD6E1868();
  }

  else
  {
    __break(1u);
  }
}

void sub_1DD861D58(uint64_t a1)
{
  sub_1DD6FE380(a1);
  if (!v1)
  {
  }
}

void sub_1DD861DB8()
{
  sub_1DD6F4550();
  sub_1DD6E63DC();
  sub_1DD86525C();
  os_unfair_lock_unlock(v0 + 12);
}

uint64_t sub_1DD861E0C(uint64_t a1)
{
  v3 = v1;
  sub_1DD6E0F0C(a1, v7);
  v4 = sub_1DD861D88();
  if (v2)
  {
    sub_1DD6E1EC8(v7);
  }

  else
  {
    v5 = v4;
    type metadata accessor for SessionDebuggerEventsSubscription();
    swift_allocObject();
    v2 = sub_1DD71F1E8(v3, v7, v5);
  }

  return v2;
}

uint64_t sub_1DD861ED8(uint64_t (*a1)(uint64_t))
{
  v3 = v1;
  v4 = *(v1 + 56);
  if (object_getClass(v4) != _TtCC16IntelligenceFlow13SessionClient13ReverseServer || v4 == 0)
  {
    result = sub_1DD6E6260();
    __break(1u);
  }

  else
  {
    swift_unknownObjectRetain();
    v6 = a1(v3);
    swift_unknownObjectRelease();
    return v6;
  }

  return result;
}

void sub_1DD861F98()
{
  sub_1DD6F4550();
  sub_1DD6E63DC();
  sub_1DD864918();
  os_unfair_lock_unlock(v0 + 12);
}

uint64_t sub_1DD861FF8(uint64_t a1)
{
  v2 = type metadata accessor for SessionClient();

  return MEMORY[0x1EEE2EE60](a1, v2);
}

uint64_t IntelligenceFlowClient.__allocating_init(localObject:configuration:)()
{
  sub_1DD6FABA4();
  sub_1DD6E6B30();
  swift_allocObject();
  v1 = sub_1DD6DEB18();
  IntelligenceFlowClient.init(localObject:configuration:)(v1, v2);
  return v0;
}

uint64_t IntelligenceFlowClient.init(localObject:configuration:)(uint64_t a1, uint64_t *a2)
{
  v3 = *(a2 + 8);
  v5 = *a2;
  v6 = v3;
  SessionClient.init(localObject:configuration:)(a1, &v5);
  return v2;
}

uint64_t IntelligenceFlowClient.__allocating_init<A>(localObject:connection:configuration:)()
{
  sub_1DD6E6600();
  sub_1DD6E6B30();
  swift_allocObject();
  sub_1DD6EE30C();
  IntelligenceFlowClient.init<A>(localObject:connection:configuration:)();
  return v0;
}

void IntelligenceFlowClient.init<A>(localObject:connection:configuration:)()
{
  sub_1DD6DEB38();
  sub_1DD6FABA4();
  sub_1DD6DF290();
  MEMORY[0x1EEE9AC00](v0);
  sub_1DD6E2220();
  v1 = sub_1DD6DEC78();
  v2(v1);
  v3 = sub_1DD6DEE10();
  SessionClient.init<A>(localObject:connection:configuration:)(v3, v4, v5, v6, v7);
  v8 = sub_1DD6DFFAC();
  v9(v8);
  sub_1DD6DFED0();
}

void sub_1DD8621EC()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 12);
  sub_1DD864634(&v1[4]);
  os_unfair_lock_unlock(v1 + 12);
}

void sub_1DD862244(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void *))
{
  v19 = a4;
  v8 = sub_1DD874ED0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(a1 + 24);
    v20 = a2;
    sub_1DD864654(v12, v13);

    v12(a3, &v20);
    if (v4)
    {

      sub_1DD863360(v12, v13);
      v14 = v4;
      v19(0, v4);
    }

    else
    {
      v19(v20, 0);
      sub_1DD863360(v12, v13);
    }
  }

  else
  {
    sub_1DD874C00();
    v15 = sub_1DD874EC0();
    v16 = sub_1DD8754E0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1DD6DC000, v15, v16, "Unexpected execution of transaction hook from Server. This should not happen and may have performance impact. Responding with no changes to the transaction.", v17, 2u);
      MEMORY[0x1E12B5DE0](v17, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    v19(a2, 0);
  }
}

void sub_1DD8625E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = sub_1DD8752C0();
    if (a2)
    {
LABEL_3:
      v6 = sub_1DD874670();
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_1DD862680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  sub_1DD864654(a2, a3);
  result = sub_1DD863360(v6, v7);
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  return result;
}

uint64_t sub_1DD8626E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD862704, 0, 0);
}

void sub_1DD862704()
{
  sub_1DD6E48E0();
  *(sub_1DD6ED414() + 16) = v0;
  os_unfair_lock_lock(v1 + 12);
  sub_1DD865598(&v1[4]);
  os_unfair_lock_unlock(v1 + 12);

  sub_1DD6DDF40();
  sub_1DD702AA0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1DD8627AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1DD710A9C(&qword_1ECD16770, &qword_1DD8B16C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v24 - v10;
  sub_1DD6E7A88(a3, v24 - v10, &qword_1ECD16770, &qword_1DD8B16C0);
  v12 = sub_1DD875380();
  v13 = sub_1DD6E5ED0(v11, 1, v12);

  if (v13 == 1)
  {
    sub_1DD6FC560(v11, &qword_1ECD16770, &qword_1DD8B16C0);
  }

  else
  {
    sub_1DD875370();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1DD875360();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1DD875190() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_1DD6FC560(a3, &qword_1ECD16770, &qword_1DD8B16C0);

      return v22;
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

  sub_1DD6FC560(a3, &qword_1ECD16770, &qword_1DD8B16C0);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

void sub_1DD862A90()
{
  sub_1DD6DED2C();
  v73 = v2;
  v74 = v1;
  v70 = v3;
  v71 = v4;
  v66 = v6;
  v67 = v5;
  v78 = v7;
  v79 = v0;
  v9 = v8;
  v72 = sub_1DD710A9C(&qword_1ECD10300, &qword_1DD884D20);
  sub_1DD6DDEAC();
  v76 = v10;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6FF92C(v12, v59);
  v13 = sub_1DD710A9C(&qword_1ECD16768, &qword_1DD8B16B8);
  sub_1DD6DDEAC();
  v15 = v14;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v59 - v17;
  sub_1DD710A9C(&qword_1ECD166F0, &unk_1DD8B1090);
  sub_1DD6DDEAC();
  v68 = v19;
  v69 = v20;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v21);
  v80 = &v59 - v22;
  v81 = sub_1DD710A9C(&qword_1ECD0E4A0, qword_1DD878818);
  sub_1DD6DDEAC();
  v64 = v23;
  MEMORY[0x1EEE9AC00](v24);
  sub_1DD6DE21C();
  v65 = v25 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v82 = &v59 - v28;
  sub_1DD874820();
  sub_1DD6DDEAC();
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v59 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v59 - v37;
  v77 = v9;
  if (v9[1])
  {
    sub_1DD864664();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v39 = v36;
    _s16IntelligenceFlow15SessionClientIDVACycfC_0();
    type metadata accessor for SessionServerMessage(0);
    (*(v15 + 104))(v18, *MEMORY[0x1E69E8790], v13);
    sub_1DD875390();
    (*(v15 + 8))(v18, v13);
    v40 = *(v30 + 16);
    v61 = v38;
    v62 = v40;
    (v40)(v34, v38, v39);
    v41 = *(v30 + 80);
    v63 = v30;
    v42 = (v41 + 24) & ~v41;
    v43 = swift_allocObject();
    *(v43 + 16) = v67;
    v44 = *(v30 + 32);
    v60 = v39;
    v44(v43 + v42, v34, v39);

    v45 = v68;
    v46 = v80;
    sub_1DD8753A0();
    v48 = v64;
    v47 = v65;
    v49 = v81;
    (*(v64 + 16))(v65, v82, v81);
    v71(0);
    sub_1DD6DE2C8();
    v50 = swift_allocObject();
    v71 = v50;
    v51 = v73;
    *(v50 + 16) = v74;
    (*(v48 + 32))(v50 + *v51, v47, v49);
    v52 = *(v72 + 48);
    v53 = v75;
    v54 = sub_1DD6DFF24();
    v62(v54);
    v55 = v69;
    (*(v69 + 16))(v53 + v52, v46, v45);

    v56 = v77;
    sub_1DD8647E0(sub_1DD784D30);
    v57 = *(*v56 + 16);
    sub_1DD86486C(v57, sub_1DD784D30);
    (*(v55 + 8))(v46, v45);
    (*(v48 + 8))(v82, v81);
    (*(v63 + 8))(v61, v60);
    v58 = *v56;
    *(v58 + 16) = v57 + 1;
    sub_1DD86498C(v53, v58 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v57);
    *v56 = v58;
    *v78 = v71;
  }

  sub_1DD6E0C78();
}

void sub_1DD863020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DEB38();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_1DD874820();
  sub_1DD6DDEAC();
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v33 = sub_1DD710A9C(&qword_1ECD16770, &qword_1DD8B16C0);
  sub_1DD6DEA10(v33);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1DD6E0CB8();
  v35 = sub_1DD875380();
  sub_1DD6E5E68(v20, 1, 1, v35);
  v36 = sub_1DD6DDEDC();
  v37(v36);
  v38 = (*(v29 + 80) + 40) & ~*(v29 + 80);
  v39 = swift_allocObject();
  *(v39 + 2) = 0;
  *(v39 + 3) = 0;
  *(v39 + 4) = v26;
  (*(v29 + 32))(&v39[v38], &a9 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v27);

  sub_1DD8627AC(0, 0, v20, v24, v39);

  sub_1DD6DFED0();
}

uint64_t sub_1DD8631A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD8631C8, 0, 0);
}

void sub_1DD8631C8()
{
  sub_1DD6E48E0();
  *(sub_1DD6ED414() + 16) = v0;
  os_unfair_lock_lock(v1 + 12);
  sub_1DD864B74(&v1[4]);
  os_unfair_lock_unlock(v1 + 12);

  sub_1DD6DDF40();
  sub_1DD702AA0();

  __asm { BRAA            X1, X16 }
}

void sub_1DD863270(uint64_t a1, uint64_t a2, uint64_t (*a3)(unint64_t))
{
  v6[2] = a2;
  v4 = sub_1DD864D84(a3, v6);
  v5 = *(*a1 + 16);
  if (v5 < v4)
  {
    __break(1u);
  }

  else
  {
    sub_1DD864C34(v4, v5);
  }
}

uint64_t sub_1DD863360(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t SessionClientError.hashValue.getter()
{
  sub_1DD875B20();
  MEMORY[0x1E12B5570](0);
  return sub_1DD875B60();
}

Swift::String __swiftcall String.escapedForIntelligenceFlowPrescribedPlanStringLiteral()()
{
  sub_1DD719D30();
  sub_1DD6ED2E8();
  sub_1DD700D88(v0, v1, v2, v3);
  sub_1DD6ED2E8();
  v8 = sub_1DD700D88(v4, v5, v6, v7);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

uint64_t sub_1DD86356C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1DD874ED0();
  sub_1DD732C90(v3, a2);
  sub_1DD6E1224(v3, a2);
  return sub_1DD874C00();
}

uint64_t sub_1DD863600()
{
  sub_1DD6DDF4C();
  sub_1DD6E6658(*(v0 + 40), *(v0 + 48));

  sub_1DD6DDF40();

  return v1();
}

uint64_t sub_1DD863670(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return sub_1DD6E13F8();
}

uint64_t sub_1DD863688(uint64_t a1)
{
  v2 = *(*(v1 + 40) + 24);
  *(v1 + 48) = v2;
  if (v2)
  {
    sub_1DD6E1F54();
    v3 = swift_task_alloc();
    *(v1 + 56) = v3;
    *(v3 + 16) = *(v1 + 24);

    v4 = swift_task_alloc();
    *(v1 + 64) = v4;
    sub_1DD710A9C(&qword_1ECD15680, &qword_1DD8A7300);
    *v4 = v1;
    v4[1] = sub_1DD86378C;
    a1 = v1 + 16;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE2EEA0](a1);
}

uint64_t sub_1DD86378C()
{
  sub_1DD6DDF4C();
  sub_1DD6DF09C();
  v3 = v2;
  sub_1DD6DE408();
  *v4 = v3;
  v5 = *v1;
  sub_1DD6E04EC();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    v7 = sub_1DD8638B4;
  }

  else
  {

    v7 = sub_1DD863898;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DD8638B4()
{
  sub_1DD6DDF4C();

  sub_1DD6DDF40();

  return v0();
}

void sub_1DD863918(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;

  v9 = sub_1DD8747C0();
  v10 = sub_1DD8752C0();
  v12[4] = sub_1DD6E6448;
  v12[5] = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1DD863A40;
  v12[3] = &unk_1F58E6398;
  v11 = _Block_copy(v12);

  [a1 runTransactionHookWithSessionId:v9 transaction:v10 with:v11];
  _Block_release(v11);
}

uint64_t sub_1DD863A40(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1DD8752D0();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_1DD863AD8(uint64_t a1)
{
  v2 = type metadata accessor for SessionReverseClient();

  return MEMORY[0x1EEE2EE60](a1, v2);
}

uint64_t sub_1DD863C00(uint64_t a1, uint64_t a2)
{
  result = sub_1DD6DEC94(qword_1EE0159F0, a2, type metadata accessor for SessionClient, &protocol conformance descriptor for SessionClient);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DD863C5C()
{
  result = qword_1ECD16730;
  if (!qword_1ECD16730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16730);
  }

  return result;
}

unint64_t sub_1DD863CB4()
{
  result = qword_1EE015258;
  if (!qword_1EE015258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015258);
  }

  return result;
}

void sub_1DD863DCC(uint64_t a1)
{
  sub_1DD863E54(319, &qword_1ECD16758, MEMORY[0x1E69E87B8]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1DD863E54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = type metadata accessor for SessionServerMessage(255);
    v7 = sub_1DD717E88(&qword_1ECD0FAB0, &qword_1DD8AF8D0);
    v8 = a3(a1, v6, v7, MEMORY[0x1E69E7288]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1DD863F00(uint64_t a1)
{
  sub_1DD863E54(319, &qword_1EE0139B8, MEMORY[0x1E69E87C8]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of SessionReverseClient.runTransactionHook(sessionId:transaction:)()
{
  sub_1DD6E48E0();
  sub_1DD6DE6BC();
  v5 = (*(v1 + 136) + **(v1 + 136));
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1DD864484;
  v3 = sub_1DD6ED118();

  return v5(v3);
}

uint64_t sub_1DD864484()
{
  sub_1DD6DDF4C();
  v2 = v1;
  sub_1DD6DF09C();
  v3 = *v0;
  sub_1DD6E04EC();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

_BYTE *sub_1DD864570(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DD864654(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1DD864664()
{
  result = qword_1EE0155B8;
  if (!qword_1EE0155B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0155B8);
  }

  return result;
}

uint64_t sub_1DD8646B8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DD852A48;

  return v6(a1);
}

uint64_t sub_1DD8647E0(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_1DD86486C(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1DD8648B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionServerMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD86498C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD710A9C(&qword_1ECD10300, &qword_1DD884D20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD8649FC()
{
  sub_1DD6E48E0();
  v2 = sub_1DD874820();
  sub_1DD6DEA10(v2);
  sub_1DD6E5958();
  v3 = swift_task_alloc();
  v4 = sub_1DD865700(v3);
  *v4 = v5;
  v4[1] = sub_1DD71FCC8;
  v6 = sub_1DD6E8930();

  return sub_1DD8631A4(v6, v7, v0, v1, v8);
}

uint64_t sub_1DD864AD0()
{
  sub_1DD6E1F54();
  v0 = swift_task_alloc();
  v1 = sub_1DD865700(v0);
  *v1 = v2;
  v1[1] = sub_1DD71FCC8;
  v3 = sub_1DD6E8930();

  return v4(v3);
}

uint64_t sub_1DD864BBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

void sub_1DD864C34(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1DD864BBC(v4 - v6, 1, sub_1DD784D30);
  v8 = *v2;
  v9 = *(sub_1DD710A9C(&qword_1ECD10300, &qword_1DD884D20) - 8);
  v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  v12 = v10 + v11 * result;
  swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return;
  }

  v13 = *(v8 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_16;
  }

  sub_1DD785254(v10 + v11 * a2, v13 - a2, v12);
  v14 = *(v8 + 16);
  v15 = __OFADD__(v14, v7);
  v16 = v14 - v6;
  if (!v15)
  {
    *(v8 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_1DD864D84(uint64_t (*a1)(unint64_t), uint64_t a2)
{
  v4 = v2;
  v7 = sub_1DD710A9C(&qword_1ECD10300, &qword_1DD884D20);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  v17 = *v2;
  result = sub_1DD8650EC(a1, a2, v17);
  if (!v3)
  {
    v37 = a2;
    if (v19)
    {
      return *(v17 + 16);
    }

    else
    {
      v36 = a1;
      v34 = v4;
      v20 = result + 1;
      if (__OFADD__(result, 1))
      {
LABEL_27:
        __break(1u);
      }

      else
      {
        v21 = v17;
        v35 = v8;
        while (1)
        {
          v22 = *(v21 + 16);
          if (v20 == v22)
          {
            break;
          }

          if (v20 >= v22)
          {
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

          v40 = result;
          v41 = v21;
          v23 = v10;
          v38 = (*(v8 + 80) + 32) & ~*(v8 + 80);
          v24 = v21 + v38;
          v25 = *(v8 + 72);
          v42 = v20;
          v39 = v25 * v20;
          sub_1DD6E7A88(v21 + v38 + v25 * v20, v16, &qword_1ECD10300, &qword_1DD884D20);
          v26 = v36(v16);
          sub_1DD6FC560(v16, &qword_1ECD10300, &qword_1DD884D20);
          if (v26)
          {
            v8 = v35;
            v10 = v23;
            result = v40;
            v21 = v41;
            v27 = v42;
          }

          else
          {
            result = v40;
            v27 = v42;
            if (v42 == v40)
            {
              v8 = v35;
              v10 = v23;
              v21 = v41;
            }

            else
            {
              if ((v40 & 0x8000000000000000) != 0)
              {
                goto LABEL_23;
              }

              v28 = *(v41 + 16);
              if (v40 >= v28)
              {
                goto LABEL_24;
              }

              v29 = v25 * v40;
              result = sub_1DD6E7A88(v24 + v29, v13, &qword_1ECD10300, &qword_1DD884D20);
              if (v42 >= v28)
              {
                goto LABEL_25;
              }

              v30 = v24 + v39;
              v10 = v23;
              sub_1DD6E7A88(v30, v23, &qword_1ECD10300, &qword_1DD884D20);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1DD85E8E4(v41);
                v41 = v33;
              }

              v31 = v41;
              v32 = v41 + v38;
              result = sub_1DD8651EC(v10, v41 + v38 + v29);
              if (v42 >= *(v31 + 16))
              {
                goto LABEL_26;
              }

              sub_1DD8651EC(v13, v32 + v39);
              v27 = v42;
              v8 = v35;
              *v34 = v31;
              result = v40;
              v21 = v31;
            }

            ++result;
          }

          v20 = v27 + 1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1DD8650EC(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  while (1)
  {
    if (v7 == v6)
    {
      return 0;
    }

    v8 = *(sub_1DD710A9C(&qword_1ECD10300, &qword_1DD884D20) - 8);
    result = a1(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v6;
  }

  return v6;
}

uint64_t sub_1DD8651EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD710A9C(&qword_1ECD10300, &qword_1DD884D20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD8652B0()
{
  v1 = sub_1DD874820();
  sub_1DD6DDEAC();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1DD865404()
{
  v1 = sub_1DD874820();
  sub_1DD6DDEAC();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1DD8654C4()
{
  sub_1DD6E48E0();
  v2 = sub_1DD874820();
  sub_1DD6DEA10(v2);
  sub_1DD6E5958();
  v3 = swift_task_alloc();
  v4 = sub_1DD865700(v3);
  *v4 = v5;
  v4[1] = sub_1DD6FA5C4;
  v6 = sub_1DD6E8930();

  return sub_1DD8626E0(v6, v7, v0, v1, v8);
}

uint64_t sub_1DD865710()
{
  v0 = sub_1DD874B40();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69A90B0], v0, v2);
  sub_1DD874B30();
  return (*(v1 + 8))(v4, v0);
}

uint64_t SnippetStreamingClient.__allocating_init(streamingId:)(uint64_t a1)
{
  v2 = swift_allocObject();
  SnippetStreamingClient.init(streamingId:)(a1);
  return v2;
}

void *SnippetStreamingClient.init(streamingId:)(uint64_t a1)
{
  v1[2] = 0;
  type metadata accessor for SnippetStreamingClient.ReverseServer();
  v1[3] = swift_allocObject();
  sub_1DD874610();
  swift_allocObject();
  v1[4] = sub_1DD874600();
  sub_1DD869474(&qword_1ECD167D0, v4, type metadata accessor for SnippetStreamingClient, &protocol conformance descriptor for SnippetStreamingClient);
  sub_1DD710A9C(&qword_1ECD167D8, &qword_1DD8B1710);
  swift_allocObject();

  v5 = sub_1DD874DA0();
  if (v2)
  {

    sub_1DD865C94(a1);
    return v1;
  }

  v1[2] = v5;

  type metadata accessor for SnippetStreamingContextID(0);
  sub_1DD869474(&qword_1ECD167E0, 255, type metadata accessor for SnippetStreamingContextID, &protocol conformance descriptor for SnippetStreamingContextID);

  v7 = sub_1DD8745F0();
  v9 = v8;

  if (v1[2])
  {
    MEMORY[0x1EEE9AC00](result);
    sub_1DD6E0EC8();

    sub_1DD874DB0();
    sub_1DD6E6658(v7, v9);

    sub_1DD865C94(a1);

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD865C94(uint64_t a1)
{
  v2 = type metadata accessor for SnippetStreamingContextID(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SnippetStreamingClient.post(update:)(_OWORD *a1)
{
  *(v2 + 56) = v1;
  v3 = a1[1];
  *(v2 + 64) = *a1;
  *(v2 + 80) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1DD865D6C, 0, 0);
}

uint64_t sub_1DD865D6C()
{
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = *(v0 + 80);
  sub_1DD866104();
  v1 = sub_1DD8745F0();
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  v3 = *(*(v0 + 56) + 16);
  *(v0 + 112) = v3;
  if (v3)
  {
    v4 = v1;
    v5 = v2;
    v6 = swift_task_alloc();
    *(v0 + 120) = v6;
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;

    v7 = swift_task_alloc();
    *(v0 + 128) = v7;
    sub_1DD6E0EC8();
    *v7 = v0;
    v7[1] = sub_1DD865EF0;
    v1 = v0 + 48;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE2EEA0](v1);
}

uint64_t sub_1DD865EF0()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_1DD86608C;
  }

  else
  {

    v3 = sub_1DD866028;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DD866028()
{
  sub_1DD6E6658(v0[12], v0[13]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1DD86608C()
{
  sub_1DD6E6658(v0[12], v0[13]);

  v1 = v0[1];

  return v1();
}

unint64_t sub_1DD866104()
{
  result = qword_1ECD167E8;
  if (!qword_1ECD167E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD167E8);
  }

  return result;
}

void sub_1DD866158(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, SEL *a9)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;

  v15 = sub_1DD874750();
  v17[4] = a7;
  v17[5] = v14;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1DD6E1B38;
  v17[3] = a8;
  v16 = _Block_copy(v17);

  [a1 *a9];
  _Block_release(v16);
}

void *SnippetStreamingClient.deinit()
{

  return v0;
}

uint64_t SnippetStreamingClient.__deallocating_deinit()
{
  SnippetStreamingClient.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1DD8663F0(uint64_t a1)
{
  v2 = sub_1DD86649C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD86642C(uint64_t a1)
{
  v2 = sub_1DD86649C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DD86649C()
{
  result = qword_1ECD167F8;
  if (!qword_1ECD167F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD167F8);
  }

  return result;
}

uint64_t SnippetStreamingClient.StatusUpdate.Content.SuccessfulCompletion.data.getter()
{
  v0 = sub_1DD6DDEFC();
  sub_1DD710E74(v0, v1);
  return sub_1DD6DDEFC();
}

uint64_t SnippetStreamingClient.StatusUpdate.Content.SuccessfulCompletion.data.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1DD6E6658(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t SnippetStreamingClient.StatusUpdate.Content.SuccessfulCompletion.init(data:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1DD8665F4(uint64_t a1, uint64_t a2)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD86666C(uint64_t a1)
{
  v2 = sub_1DD866850();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD8666A8(uint64_t a1)
{
  v2 = sub_1DD866850();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1DD866718()
{
  sub_1DD6DED2C();
  v14 = v2;
  v4 = v3;
  v7 = sub_1DD710A9C(v5, v6);
  sub_1DD6DDEAC();
  v9 = v8;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DE340();
  v11 = *v0;
  v12 = v0[1];
  sub_1DD6DEA7C(v4, v4[3]);
  v13 = sub_1DD710E74(v11, v12);
  v14(v13);
  sub_1DD875BB0();
  sub_1DD712070();
  sub_1DD8759D0();
  sub_1DD6E6658(v11, v12);
  (*(v9 + 8))(v1, v7);
  sub_1DD6E0C78();
}

unint64_t sub_1DD866850()
{
  result = qword_1ECD16810;
  if (!qword_1ECD16810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16810);
  }

  return result;
}

void sub_1DD8668D8()
{
  sub_1DD6DED2C();
  v2 = v1;
  v4 = v3;
  v16 = v5;
  v8 = sub_1DD710A9C(v6, v7);
  sub_1DD6DDEAC();
  v18 = v9;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15 - v11;
  v13 = sub_1DD6DEA7C(v4, v4[3]);
  v2(v13);
  sub_1DD875B90();
  if (!v0)
  {
    v14 = v16;
    sub_1DD717D38();
    sub_1DD8758D0();
    (*(v18 + 8))(v12, v8);
    *v14 = v17;
  }

  sub_1DD6E1EC8(v4);
  sub_1DD6E0C78();
}

uint64_t SnippetStreamingClient.StatusUpdate.Content.FailedCompletion.data.getter()
{
  v0 = sub_1DD6DDEFC();
  sub_1DD710E74(v0, v1);
  return sub_1DD6DDEFC();
}

uint64_t SnippetStreamingClient.StatusUpdate.Content.FailedCompletion.data.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1DD6E6658(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t SnippetStreamingClient.StatusUpdate.Content.FailedCompletion.reason.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t SnippetStreamingClient.StatusUpdate.Content.FailedCompletion.init(data:reason:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t static SnippetStreamingClient.StatusUpdate.Content.FailedCompletion.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if ((MEMORY[0x1E12B41A0](*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  sub_1DD6DE6C8();

  return sub_1DD875A30();
}

uint64_t sub_1DD866BF4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DD866CB8(char a1)
{
  if (a1)
  {
    return 0x6E6F73616572;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_1DD866CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD866BF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD866D14(uint64_t a1)
{
  v2 = sub_1DD866F08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD866D50(uint64_t a1)
{
  v2 = sub_1DD866F08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SnippetStreamingClient.StatusUpdate.Content.FailedCompletion.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1DD6DED2C();
  v26 = v25;
  v27 = sub_1DD710A9C(&qword_1ECD16820, &qword_1DD8B1740);
  sub_1DD6DDEAC();
  v36 = v28;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v29);
  v31 = v35 - v30;
  v32 = *v23;
  v33 = v23[1];
  v34 = v23[2];
  v35[1] = v23[3];
  v35[2] = v34;
  sub_1DD6DEA7C(v26, v26[3]);
  sub_1DD710E74(v32, v33);
  sub_1DD866F08();
  sub_1DD875BB0();
  v37 = v32;
  v38 = v33;
  sub_1DD712070();
  sub_1DD8759D0();
  sub_1DD6E6658(v37, v38);
  if (!v24)
  {
    LOBYTE(v37) = 1;
    sub_1DD875970();
  }

  (*(v36 + 8))(v31, v27);
  sub_1DD6E0C78();
}

unint64_t sub_1DD866F08()
{
  result = qword_1ECD16828;
  if (!qword_1ECD16828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16828);
  }

  return result;
}

void SnippetStreamingClient.StatusUpdate.Content.FailedCompletion.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1DD6DED2C();
  v25 = v24;
  v27 = v26;
  sub_1DD710A9C(&qword_1ECD16830, &qword_1DD8B1748);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1DD6DDFE4();
  sub_1DD6DEA7C(v25, v25[3]);
  sub_1DD866F08();
  sub_1DD875B90();
  if (v23)
  {
    sub_1DD6E1EC8(v25);
  }

  else
  {
    sub_1DD717D38();
    sub_1DD8758D0();
    v29 = sub_1DD875870();
    v31 = v30;
    v32 = sub_1DD6DFF30();
    v33(v32);
    *v27 = v34;
    v27[1] = v35;
    v27[2] = v29;
    v27[3] = v31;
    sub_1DD710E74(v34, v35);

    sub_1DD6E1EC8(v25);
    sub_1DD6E6658(v34, v35);
  }

  sub_1DD6E0C78();
}

uint64_t sub_1DD867184(uint64_t a1)
{
  v2 = sub_1DD8672F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD8671C0(uint64_t a1)
{
  v2 = sub_1DD8672F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SnippetStreamingClient.StatusUpdate.Content.DisconnectedCompletion.encode(to:)(void *a1)
{
  v3 = sub_1DD710A9C(&qword_1ECD16838, &qword_1DD8B1750);
  sub_1DD6DDEAC();
  v5 = v4;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DE340();
  sub_1DD6DEA7C(a1, a1[3]);
  sub_1DD8672F4();
  sub_1DD875BB0();
  return (*(v5 + 8))(v1, v3);
}

unint64_t sub_1DD8672F4()
{
  result = qword_1ECD16840;
  if (!qword_1ECD16840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16840);
  }

  return result;
}

uint64_t static SnippetStreamingClient.StatusUpdate.Content.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v7 = *a2;
  v6 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  switch((v2 >> 60) & 3)
  {
    case 1uLL:
      if ((v6 & 0x3000000000000000) != 0x1000000000000000)
      {
        goto LABEL_21;
      }

      v43 = sub_1DD6DF530();
      sub_1DD86766C(v43, v44);
      v45 = sub_1DD6E53F0();
      goto LABEL_16;
    case 2uLL:
      if ((v6 & 0x3000000000000000) == 0x2000000000000000)
      {
        v12 = sub_1DD6E53F0();
        sub_1DD8675E4(v12, v13);
        v14 = sub_1DD6DF530();
        sub_1DD8675E4(v14, v15);
        v16 = sub_1DD6DF530();
        sub_1DD8675E4(v16, v17);
        v18 = sub_1DD6E53F0();
        sub_1DD8675E4(v18, v19);
        v20 = sub_1DD86A4A0();
        goto LABEL_25;
      }

      v11 = v2 & 0xCFFFFFFFFFFFFFFFLL;
      v10 = *a1;
      goto LABEL_19;
    case 3uLL:
      if ((~v6 & 0x3000000000000000) != 0)
      {
        sub_1DD710E74(*a1, v2 & 0xCFFFFFFFFFFFFFFFLL);

        goto LABEL_21;
      }

      v24 = sub_1DD6E53F0();
      sub_1DD8675E4(v24, v25);
      v26 = sub_1DD6DF530();
      sub_1DD8675E4(v26, v27);
      v28 = sub_1DD6DF530();
      sub_1DD8675E4(v28, v29);
      v30 = sub_1DD6E53F0();
      sub_1DD8675E4(v30, v31);
      v32 = sub_1DD86A4A0();
      if ((MEMORY[0x1E12B41A0](v32) & 1) == 0)
      {
        v71 = sub_1DD6DF530();
        sub_1DD86766C(v71, v72);
        v73 = sub_1DD6E53F0();
        sub_1DD86766C(v73, v74);
        v75 = sub_1DD6E53F0();
        sub_1DD86766C(v75, v76);
        v52 = sub_1DD6DF530();
        goto LABEL_22;
      }

      if (v5 == v9 && v4 == v8)
      {
        v77 = sub_1DD6DF530();
        sub_1DD86766C(v77, v78);
        sub_1DD6E8940();
        sub_1DD6E8940();
        v45 = sub_1DD6DF530();
LABEL_16:
        sub_1DD86766C(v45, v46);
      }

      else
      {
        v34 = sub_1DD875A30();
        v35 = sub_1DD6DF530();
        sub_1DD86766C(v35, v36);
        v37 = sub_1DD6E53F0();
        sub_1DD86766C(v37, v38);
        v39 = sub_1DD6E53F0();
        sub_1DD86766C(v39, v40);
        v41 = sub_1DD6DF530();
        sub_1DD86766C(v41, v42);
        if ((v34 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      result = 1;
      break;
    default:
      if ((v6 & 0x3000000000000000) != 0)
      {
        v10 = *a1;
        v11 = v2;
LABEL_19:
        sub_1DD710E74(v10, v11);
LABEL_21:
        v48 = sub_1DD6E53F0();
        sub_1DD8675E4(v48, v49);
        v50 = sub_1DD6DF530();
        sub_1DD86766C(v50, v51);
        v52 = sub_1DD6E53F0();
LABEL_22:
        sub_1DD86766C(v52, v53);
LABEL_23:
        result = 0;
      }

      else
      {
        v54 = sub_1DD6E53F0();
        sub_1DD8675E4(v54, v55);
        v56 = sub_1DD6DF530();
        sub_1DD8675E4(v56, v57);
        v58 = sub_1DD6DF530();
        sub_1DD8675E4(v58, v59);
        v60 = sub_1DD6E53F0();
        sub_1DD8675E4(v60, v61);
        v20 = v3;
        v21 = v2;
        v22 = v7;
        v23 = v6;
LABEL_25:
        v62 = MEMORY[0x1E12B41A0](v20, v21, v22, v23);
        v63 = sub_1DD6DF530();
        sub_1DD86766C(v63, v64);
        v65 = sub_1DD6E53F0();
        sub_1DD86766C(v65, v66);
        v67 = sub_1DD6E53F0();
        sub_1DD86766C(v67, v68);
        v69 = sub_1DD6DF530();
        sub_1DD86766C(v69, v70);
        result = v62 & 1;
      }

      break;
  }

  return result;
}

double sub_1DD8675E4(uint64_t a1, unint64_t a2)
{
  switch((a2 >> 60) & 3)
  {
    case 1uLL:
      return result;
    case 2uLL:
      a2 &= 0xCFFFFFFFFFFFFFFFLL;

      goto LABEL_4;
    case 3uLL:
      sub_1DD710E74(a1, a2 & 0xCFFFFFFFFFFFFFFFLL);

      break;
    default:

LABEL_4:
      sub_1DD710E74(a1, a2);
      break;
  }

  return result;
}

uint64_t sub_1DD86766C(uint64_t result, unint64_t a2)
{
  switch((a2 >> 60) & 3)
  {
    case 1uLL:
      return result;
    case 2uLL:
      a2 &= 0xCFFFFFFFFFFFFFFFLL;

      goto LABEL_4;
    case 3uLL:
      sub_1DD6E6658(result, a2 & 0xCFFFFFFFFFFFFFFFLL);

      break;
    default:

LABEL_4:
      result = sub_1DD6E6658(result, a2);
      break;
  }

  return result;
}

uint64_t sub_1DD8676F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616974726170 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656E6E6F63736964 && a2 == 0xED00006E6F697463;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x80000001DD8B7FE0 == a2;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000010 && 0x80000001DD8B8000 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD875A30();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1DD867864(char a1)
{
  result = 0x6C616974726170;
  switch(a1)
  {
    case 1:
      result = 0x656E6E6F63736964;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD867908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD8676F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD867930(uint64_t a1)
{
  v2 = sub_1DD86800C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD86796C(uint64_t a1)
{
  v2 = sub_1DD86800C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD8679A8(uint64_t a1)
{
  v2 = sub_1DD8681B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD8679E4(uint64_t a1)
{
  v2 = sub_1DD8681B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD867A20(uint64_t a1)
{
  v2 = sub_1DD868060();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD867A5C(uint64_t a1)
{
  v2 = sub_1DD868060();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD867A98(uint64_t a1)
{
  v2 = sub_1DD868258();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD867AD4(uint64_t a1)
{
  v2 = sub_1DD868258();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD867B10(uint64_t a1)
{
  v2 = sub_1DD868108();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD867B4C(uint64_t a1)
{
  v2 = sub_1DD868108();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SnippetStreamingClient.StatusUpdate.Content.encode(to:)()
{
  sub_1DD6DED2C();
  v4 = v3;
  sub_1DD710A9C(&qword_1ECD16848, &qword_1DD8B1758);
  sub_1DD6DDEAC();
  v40 = v6;
  v41 = v5;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6E0C6C();
  v39 = v8;
  sub_1DD710A9C(&qword_1ECD16850, &qword_1DD8B1760);
  sub_1DD6DDEAC();
  v37 = v10;
  v38 = v9;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6E0C6C();
  v36 = v12;
  sub_1DD710A9C(&qword_1ECD16858, &qword_1DD8B1768);
  sub_1DD6DDEAC();
  v34 = v14;
  v35 = v13;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  v18 = sub_1DD710A9C(&qword_1ECD16860, &qword_1DD8B1770);
  sub_1DD6DDEAC();
  v33 = v19;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1DD6DDFE4();
  sub_1DD710A9C(&qword_1ECD16868, &qword_1DD8B1778);
  sub_1DD6DDEAC();
  v43 = v22;
  v44 = v21;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1DD6DE340();
  v24 = v0[1];
  v42 = *v0;
  v25 = v0[2];
  v31 = v0[3];
  v32 = v25;
  v26 = v4[3];
  sub_1DD6DEA7C(v4, v26);
  sub_1DD86800C();
  sub_1DD875BB0();
  switch((v24 >> 60) & 3)
  {
    case 1uLL:
      LOBYTE(v45) = 1;
      sub_1DD8681B0();
      sub_1DD6E6048(&type metadata for SnippetStreamingClient.StatusUpdate.Content.DisconnectionCodingKeys, &v45);
      sub_1DD868204();
      v30 = v35;
      sub_1DD8759D0();
      (*(v34 + 8))(v17, v30);
      break;
    case 2uLL:
      LOBYTE(v45) = 2;
      sub_1DD868108();
      v27 = v36;
      sub_1DD6E6048(&type metadata for SnippetStreamingClient.StatusUpdate.Content.SuccessfulCompletionCodingKeys, &v45);
      v45 = v42;
      v46 = v24 & 0xCFFFFFFFFFFFFFFFLL;
      sub_1DD86815C();
      v28 = v38;
      sub_1DD8759D0();
      v29 = v37;
      goto LABEL_5;
    case 3uLL:
      LOBYTE(v45) = 3;
      sub_1DD868060();
      v27 = v39;
      sub_1DD6E6048(&type metadata for SnippetStreamingClient.StatusUpdate.Content.FailedCompletionCodingKeys, &v45);
      v45 = v42;
      v46 = v24 & 0xCFFFFFFFFFFFFFFFLL;
      v47 = v32;
      v48 = v31;
      sub_1DD8680B4();
      v28 = v41;
      sub_1DD8759D0();
      v29 = v40;
LABEL_5:
      (*(v29 + 8))(v27, v28);
      break;
    default:
      LOBYTE(v45) = 0;
      sub_1DD868258();
      sub_1DD6E6048(&type metadata for SnippetStreamingClient.StatusUpdate.Content.PartialCodingKeys, &v45);
      v45 = v42;
      v46 = v24;
      sub_1DD8682AC();
      sub_1DD8759D0();
      (*(v33 + 8))(v2, v18);
      break;
  }

  (*(v43 + 8))(v1, v26);
  sub_1DD6E0C78();
}

unint64_t sub_1DD86800C()
{
  result = qword_1ECD16870;
  if (!qword_1ECD16870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16870);
  }

  return result;
}

unint64_t sub_1DD868060()
{
  result = qword_1ECD16878;
  if (!qword_1ECD16878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16878);
  }

  return result;
}

unint64_t sub_1DD8680B4()
{
  result = qword_1ECD16880;
  if (!qword_1ECD16880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16880);
  }

  return result;
}

unint64_t sub_1DD868108()
{
  result = qword_1ECD16888;
  if (!qword_1ECD16888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16888);
  }

  return result;
}

unint64_t sub_1DD86815C()
{
  result = qword_1ECD16890;
  if (!qword_1ECD16890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16890);
  }

  return result;
}

unint64_t sub_1DD8681B0()
{
  result = qword_1ECD16898;
  if (!qword_1ECD16898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16898);
  }

  return result;
}

unint64_t sub_1DD868204()
{
  result = qword_1ECD168A0;
  if (!qword_1ECD168A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD168A0);
  }

  return result;
}

unint64_t sub_1DD868258()
{
  result = qword_1ECD168A8;
  if (!qword_1ECD168A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD168A8);
  }

  return result;
}

unint64_t sub_1DD8682AC()
{
  result = qword_1ECD168B0;
  if (!qword_1ECD168B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD168B0);
  }

  return result;
}

void SnippetStreamingClient.StatusUpdate.Content.init(from:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v77 = v3;
  v74 = sub_1DD710A9C(&qword_1ECD168B8, &qword_1DD8B1780);
  sub_1DD6DDEAC();
  v78 = v4;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6E0C6C();
  v80 = v6;
  sub_1DD710A9C(&qword_1ECD168C0, &qword_1DD8B1788);
  sub_1DD6DDEAC();
  v75 = v8;
  v76 = v7;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6E0C6C();
  v79 = v10;
  sub_1DD710A9C(&qword_1ECD168C8, &qword_1DD8B1790);
  sub_1DD6DDEAC();
  v72 = v12;
  v73 = v11;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v65 - v14;
  v16 = sub_1DD710A9C(&qword_1ECD168D0, &qword_1DD8B1798);
  sub_1DD6DDEAC();
  v71 = v17;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v65 - v19;
  v21 = sub_1DD710A9C(&qword_1ECD168D8, &unk_1DD8B17A0);
  sub_1DD6DDEAC();
  v23 = v22;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v65 - v25;
  v27 = v2[3];
  v81 = v2;
  sub_1DD6DEA7C(v2, v27);
  sub_1DD86800C();
  sub_1DD875B90();
  if (v0)
  {
    goto LABEL_9;
  }

  v67 = v16;
  v68 = v20;
  v69 = v15;
  v28 = v80;
  v86 = v23;
  v29 = v26;
  sub_1DD875900();
  sub_1DD6ED750();
  if (v31 == v32 >> 1)
  {
LABEL_8:
    v41 = sub_1DD875740();
    swift_allocError();
    v43 = v42;
    sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0);
    *v43 = &type metadata for SnippetStreamingClient.StatusUpdate.Content;
    sub_1DD875810();
    sub_1DD875730();
    (*(*(v41 - 8) + 104))(v43, *MEMORY[0x1E69E6AF8], v41);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v23 + 8))(v29, v21);
LABEL_9:
    v44 = v81;
LABEL_10:
    sub_1DD6E1EC8(v44);
    sub_1DD6E0C78();
    return;
  }

  v70 = v26;
  v66 = 0;
  if (v31 < (v32 >> 1))
  {
    v33 = *(v30 + v31);
    sub_1DD6ED830();
    v35 = v34;
    v37 = v36;
    swift_unknownObjectRelease();
    v38 = v78;
    if (v35 == v37 >> 1)
    {
      v39 = v66;
      v40 = v77;
      switch(v33)
      {
        case 1:
          LOBYTE(v82) = 1;
          sub_1DD8681B0();
          v46 = v70;
          sub_1DD875800();
          if (v39)
          {
            (*(v86 + 8))(v46, v21);
            swift_unknownObjectRelease();
            goto LABEL_9;
          }

          sub_1DD86922C();
          sub_1DD6F3128();
          sub_1DD8758D0();
          sub_1DD6E71F0();
          swift_unknownObjectRelease();
          v61 = sub_1DD6E6AD4();
          v62(v61);
          v63 = sub_1DD6E0690();
          v64(v63);
          v59 = 0;
          v57 = 0;
          v58 = 0;
          v60 = 0x1000000000000000;
          break;
        case 2:
          LOBYTE(v82) = 2;
          sub_1DD868108();
          sub_1DD6FC518(&type metadata for SnippetStreamingClient.StatusUpdate.Content.SuccessfulCompletionCodingKeys, &v82);
          sub_1DD8691D8();
          sub_1DD6F3128();
          sub_1DD8758D0();
          sub_1DD6E71F0();
          swift_unknownObjectRelease();
          v47 = sub_1DD6E6AD4();
          v48(v47);
          v49 = sub_1DD6E0690();
          v50(v49);
          v57 = 0;
          v58 = 0;
          v59 = v82;
          v60 = v83 | 0x2000000000000000;
          break;
        case 3:
          LOBYTE(v82) = 3;
          sub_1DD868060();
          sub_1DD6FC518(&type metadata for SnippetStreamingClient.StatusUpdate.Content.FailedCompletionCodingKeys, &v82);
          sub_1DD869184();
          v45 = v74;
          sub_1DD6F3128();
          sub_1DD8758D0();
          sub_1DD6E71F0();
          swift_unknownObjectRelease();
          (*(v38 + 8))(v28, v45);
          v51 = sub_1DD6E0690();
          v52(v51);
          v59 = v82;
          v57 = v84;
          v58 = v85;
          v60 = v83 | 0x3000000000000000;
          break;
        default:
          LOBYTE(v82) = 0;
          sub_1DD868258();
          sub_1DD6FC518(&type metadata for SnippetStreamingClient.StatusUpdate.Content.PartialCodingKeys, &v82);
          sub_1DD869280();
          sub_1DD6F3128();
          sub_1DD8758D0();
          sub_1DD6E71F0();
          swift_unknownObjectRelease();
          v53 = sub_1DD6E6AD4();
          v54(v53);
          v55 = sub_1DD6E0690();
          v56(v55);
          v57 = 0;
          v58 = 0;
          v59 = v82;
          v60 = v83;
          break;
      }

      v44 = v81;
      *v40 = v59;
      v40[1] = v60;
      v40[2] = v57;
      v40[3] = v58;
      goto LABEL_10;
    }

    v23 = v86;
    v29 = v70;
    goto LABEL_8;
  }

  __break(1u);
}

double SnippetStreamingClient.StatusUpdate.content.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1DD8675E4(v2, v3);
}

__n128 SnippetStreamingClient.StatusUpdate.content.setter(uint64_t a1)
{
  sub_1DD86766C(*v1, *(v1 + 8));
  result = *a1;
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v4;
  return result;
}

__n128 SnippetStreamingClient.StatusUpdate.init(content:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t static SnippetStreamingClient.StatusUpdate.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v20[0] = *a1;
  v20[1] = v2;
  v20[2] = v3;
  v20[3] = v4;
  v19[0] = v5;
  v19[1] = v6;
  v19[2] = v7;
  v19[3] = v8;
  v9 = sub_1DD6DE6C8();
  sub_1DD8675E4(v9, v10);
  v11 = sub_1DD6E6614();
  sub_1DD8675E4(v11, v12);
  v13 = static SnippetStreamingClient.StatusUpdate.Content.== infix(_:_:)(v20, v19);
  v14 = sub_1DD6E6614();
  sub_1DD86766C(v14, v15);
  v16 = sub_1DD6DE6C8();
  sub_1DD86766C(v16, v17);
  return v13 & 1;
}

uint64_t sub_1DD868BA0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD868C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD868BA0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD868C60(uint64_t a1)
{
  v2 = sub_1DD8692D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD868C9C(uint64_t a1)
{
  v2 = sub_1DD8692D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SnippetStreamingClient.StatusUpdate.encode(to:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v8 = sub_1DD710A9C(&qword_1ECD16900, &qword_1DD8B17B0);
  sub_1DD6DDEAC();
  v9 = v4;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DE340();
  v6 = *v0;
  v7 = v0[1];
  sub_1DD6DEA7C(v3, v3[3]);
  sub_1DD8675E4(v6, v7);
  sub_1DD8692D4();
  sub_1DD875BB0();
  sub_1DD869328();
  sub_1DD8759D0();
  sub_1DD86766C(v6, v7);
  (*(v9 + 8))(v1, v8);
  sub_1DD6E0C78();
}

void SnippetStreamingClient.StatusUpdate.init(from:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v5 = v4;
  v6 = sub_1DD710A9C(&qword_1ECD16918, &unk_1DD8B17B8);
  sub_1DD6DDEAC();
  v8 = v7;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DDFE4();
  sub_1DD6DEA7C(v3, v3[3]);
  sub_1DD8692D4();
  sub_1DD875B90();
  if (!v0)
  {
    sub_1DD86937C();
    sub_1DD8758D0();
    (*(v8 + 8))(v1, v6);
    *v5 = v10;
    v5[1] = v11;
  }

  sub_1DD6E1EC8(v3);
  sub_1DD6E0C78();
}

uint64_t sub_1DD869034@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = SnippetStreamingClient.ReverseServerClient.__allocating_init(existingConnection:localObject:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t SnippetStreamingClientError.hashValue.getter()
{
  v1 = *v0;
  sub_1DD875B20();
  MEMORY[0x1E12B5570](v1);
  return sub_1DD875B60();
}

uint64_t sub_1DD869100(uint64_t a1)
{
  v2 = sub_1DD86A408();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1DD86913C(uint64_t a1)
{
  v2 = sub_1DD86A408();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

unint64_t sub_1DD869184()
{
  result = qword_1ECD168E0;
  if (!qword_1ECD168E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD168E0);
  }

  return result;
}

unint64_t sub_1DD8691D8()
{
  result = qword_1ECD168E8;
  if (!qword_1ECD168E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD168E8);
  }

  return result;
}

unint64_t sub_1DD86922C()
{
  result = qword_1ECD168F0;
  if (!qword_1ECD168F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD168F0);
  }

  return result;
}

unint64_t sub_1DD869280()
{
  result = qword_1ECD168F8;
  if (!qword_1ECD168F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD168F8);
  }

  return result;
}

unint64_t sub_1DD8692D4()
{
  result = qword_1ECD16908;
  if (!qword_1ECD16908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16908);
  }

  return result;
}

unint64_t sub_1DD869328()
{
  result = qword_1ECD16910;
  if (!qword_1ECD16910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16910);
  }

  return result;
}

unint64_t sub_1DD86937C()
{
  result = qword_1ECD16920;
  if (!qword_1ECD16920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16920);
  }

  return result;
}

uint64_t sub_1DD8693D0(uint64_t a1, uint64_t a2)
{
  result = sub_1DD869474(&qword_1ECD167D0, a2, type metadata accessor for SnippetStreamingClient, &protocol conformance descriptor for SnippetStreamingClient);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DD869474(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_1DD8694C0()
{
  result = qword_1EE015190;
  if (!qword_1EE015190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015190);
  }

  return result;
}

unint64_t sub_1DD869518()
{
  result = qword_1ECD16928;
  if (!qword_1ECD16928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16928);
  }

  return result;
}

unint64_t sub_1DD869570()
{
  result = qword_1ECD16930;
  if (!qword_1ECD16930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16930);
  }

  return result;
}

uint64_t sub_1DD869660(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 16))
    {
      return sub_1DD6DEAA4(*a1 + 12);
    }

    v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
    if (v3 >= 0xC)
    {
      return sub_1DD6DEAA4(-1);
    }
  }

  else
  {
    v3 = -1;
  }

  return sub_1DD6DEAA4(v3);
}

_BYTE *sub_1DD86974C(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SnippetStreamingClient.StatusUpdate.Content.FailedCompletion.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DD869964(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DD869A14()
{
  result = qword_1ECD16938;
  if (!qword_1ECD16938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16938);
  }

  return result;
}

unint64_t sub_1DD869A6C()
{
  result = qword_1ECD16940;
  if (!qword_1ECD16940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16940);
  }

  return result;
}

unint64_t sub_1DD869AC4()
{
  result = qword_1ECD16948;
  if (!qword_1ECD16948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16948);
  }

  return result;
}

unint64_t sub_1DD869B1C()
{
  result = qword_1ECD16950;
  if (!qword_1ECD16950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16950);
  }

  return result;
}

unint64_t sub_1DD869B74()
{
  result = qword_1ECD16958;
  if (!qword_1ECD16958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16958);
  }

  return result;
}

unint64_t sub_1DD869BCC()
{
  result = qword_1ECD16960;
  if (!qword_1ECD16960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16960);
  }

  return result;
}

unint64_t sub_1DD869C24()
{
  result = qword_1ECD16968;
  if (!qword_1ECD16968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16968);
  }

  return result;
}

unint64_t sub_1DD869C7C()
{
  result = qword_1ECD16970;
  if (!qword_1ECD16970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16970);
  }

  return result;
}

unint64_t sub_1DD869CD4()
{
  result = qword_1ECD16978;
  if (!qword_1ECD16978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16978);
  }

  return result;
}

unint64_t sub_1DD869D2C()
{
  result = qword_1ECD16980;
  if (!qword_1ECD16980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16980);
  }

  return result;
}

unint64_t sub_1DD869D84()
{
  result = qword_1ECD16988;
  if (!qword_1ECD16988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16988);
  }

  return result;
}

unint64_t sub_1DD869DDC()
{
  result = qword_1ECD16990;
  if (!qword_1ECD16990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16990);
  }

  return result;
}

unint64_t sub_1DD869E34()
{
  result = qword_1ECD16998;
  if (!qword_1ECD16998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16998);
  }

  return result;
}

unint64_t sub_1DD869E8C()
{
  result = qword_1ECD169A0;
  if (!qword_1ECD169A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD169A0);
  }

  return result;
}

unint64_t sub_1DD869EE4()
{
  result = qword_1ECD169A8;
  if (!qword_1ECD169A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD169A8);
  }

  return result;
}

unint64_t sub_1DD869F3C()
{
  result = qword_1ECD169B0;
  if (!qword_1ECD169B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD169B0);
  }

  return result;
}

unint64_t sub_1DD869F94()
{
  result = qword_1ECD169B8;
  if (!qword_1ECD169B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD169B8);
  }

  return result;
}

unint64_t sub_1DD869FEC()
{
  result = qword_1ECD169C0;
  if (!qword_1ECD169C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD169C0);
  }

  return result;
}

unint64_t sub_1DD86A044()
{
  result = qword_1ECD169C8;
  if (!qword_1ECD169C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD169C8);
  }

  return result;
}

unint64_t sub_1DD86A09C()
{
  result = qword_1ECD169D0;
  if (!qword_1ECD169D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD169D0);
  }

  return result;
}

unint64_t sub_1DD86A0F4()
{
  result = qword_1ECD169D8;
  if (!qword_1ECD169D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD169D8);
  }

  return result;
}

unint64_t sub_1DD86A14C()
{
  result = qword_1ECD169E0;
  if (!qword_1ECD169E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD169E0);
  }

  return result;
}

unint64_t sub_1DD86A1A4()
{
  result = qword_1ECD169E8;
  if (!qword_1ECD169E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD169E8);
  }

  return result;
}

unint64_t sub_1DD86A1FC()
{
  result = qword_1ECD169F0;
  if (!qword_1ECD169F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD169F0);
  }

  return result;
}

unint64_t sub_1DD86A254()
{
  result = qword_1ECD169F8;
  if (!qword_1ECD169F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD169F8);
  }

  return result;
}

unint64_t sub_1DD86A2AC()
{
  result = qword_1ECD16A00;
  if (!qword_1ECD16A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16A00);
  }

  return result;
}

unint64_t sub_1DD86A304()
{
  result = qword_1ECD16A08;
  if (!qword_1ECD16A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16A08);
  }

  return result;
}

unint64_t sub_1DD86A35C()
{
  result = qword_1ECD16A10;
  if (!qword_1ECD16A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16A10);
  }

  return result;
}

unint64_t sub_1DD86A3B4()
{
  result = qword_1ECD16A18;
  if (!qword_1ECD16A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16A18);
  }

  return result;
}

unint64_t sub_1DD86A408()
{
  result = qword_1ECD16A20;
  if (!qword_1ECD16A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16A20);
  }

  return result;
}

id static ToolboxXPCService.interface.getter()
{
  if (qword_1ECD0DFF8 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECD16A30;

  return v1;
}

uint64_t sub_1DD86A540()
{
  sub_1DD710A9C(&qword_1ECD16C18, &qword_1DD8B3330);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DD87AAA0;
  *(v0 + 32) = sel_queryWithPlannerType_query_k_bundleIDs_clientIdentifier_availableClientActions_with_;
  *(v0 + 40) = 0;
  sub_1DD710A9C(&qword_1ECD16C20, &qword_1DD8B3338);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1DD8782F0;
  v2 = type metadata accessor for ToolboxSearchResult();
  v3 = sub_1DD710A9C(&qword_1ECD16C28, &qword_1DD8B3340);
  *(v1 + 56) = v3;
  v4 = v3;
  *(v1 + 32) = v2;
  v28 = sub_1DD804C4C(0, &qword_1ECD16C30, 0x1E695DEC8);
  v5 = sub_1DD710A9C(&qword_1ECD16C38, &qword_1DD8B3348);
  *(v1 + 88) = v5;
  v6 = v5;
  v27 = v5;
  *(v1 + 64) = v28;
  sub_1DD804C4C(0, &unk_1ECD16C40, 0x1E695DFD8);
  v7 = MEMORY[0x1E12B4F80](v1);
  sub_1DD804C4C(0, &qword_1ECD0E2A8, 0x1E69E58C0);
  sub_1DD87120C();
  v8 = sub_1DD875410();

  sub_1DD86A828(v8);
  v10 = v9;

  *(v0 + 48) = v10;
  *(v0 + 56) = sel_queryWithPlannerType_query_k_clientIdentifier_availableClientActions_with_;
  *(v0 + 64) = 0;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DD8782F0;
  *(v11 + 32) = v2;
  *(v11 + 88) = v6;
  *(v11 + 56) = v4;
  *(v11 + 64) = v28;
  v12 = MEMORY[0x1E12B4F80]();
  v13 = sub_1DD875410();

  sub_1DD86A828(v13);
  v15 = v14;

  *(v0 + 72) = v15;
  *(v0 + 80) = sel_queryWithPlannerType_query_bundleIDs_with_;
  *(v0 + 88) = 0;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1DD8782F0;
  *(v16 + 32) = v2;
  *(v16 + 88) = v27;
  *(v16 + 56) = v4;
  *(v16 + 64) = v28;
  v17 = MEMORY[0x1E12B4F80]();
  v18 = sub_1DD875410();

  sub_1DD86A828(v18);
  v20 = v19;

  *(v0 + 96) = v20;
  *(v0 + 104) = sel_queryWithPlannerType_query_toolIDs_with_;
  *(v0 + 112) = 0;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1DD8782F0;
  *(v21 + 32) = v2;
  *(v21 + 88) = v27;
  *(v21 + 56) = v4;
  *(v21 + 64) = v28;
  v22 = MEMORY[0x1E12B4F80]();
  v23 = sub_1DD875410();

  sub_1DD86A828(v23);
  v25 = v24;

  *(v0 + 120) = v25;
  qword_1ECD16A38 = v0;
  return result;
}

void sub_1DD86A828(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_1DD875630())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = MEMORY[0x1E69E7CD0];
    if (v2)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1DD710A9C(&qword_1ECD16C58, &unk_1DD8B3350);
  v3 = sub_1DD875680();
  if (v2)
  {
LABEL_4:

    sub_1DD875620();
    sub_1DD804C4C(0, &qword_1ECD0E2A8, 0x1E69E58C0);
    sub_1DD87120C();
    sub_1DD875470();
    v1 = v30;
    v4 = v31;
    v5 = v32;
    v6 = v33;
    v7 = v34;
    goto LABEL_11;
  }

LABEL_7:
  v8 = -1 << *(v1 + 32);
  v4 = v1 + 56;
  v5 = ~v8;
  v9 = -v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v7 = v10 & *(v1 + 56);

  v6 = 0;
LABEL_11:
  v11 = v3 + 56;
  if (v1 < 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  if (v7)
  {
    v12 = v6;
LABEL_21:
    v15 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v16 = *(*(v1 + 48) + ((v12 << 9) | (8 * v15)));
    while (1)
    {
      sub_1DD804C4C(0, &qword_1ECD0E2A8, 0x1E69E58C0);
      swift_dynamicCast();
      v17 = sub_1DD875650();
      v18 = -1 << *(v3 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        break;
      }

      v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_31:
      *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v26 = *(v3 + 48) + 40 * v21;
      *(v26 + 32) = v29;
      *v26 = v27;
      *(v26 + 16) = v28;
      ++*(v3 + 16);
      if ((v1 & 0x8000000000000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_14:
      v13 = sub_1DD875640();
      if (!v13)
      {
        goto LABEL_33;
      }

      *&v27 = v13;
      sub_1DD804C4C(0, &qword_1ECD0E2A8, 0x1E69E58C0);
      swift_dynamicCast();
    }

    v22 = 0;
    v23 = (63 - v18) >> 6;
    while (++v20 != v23 || (v22 & 1) == 0)
    {
      v24 = v20 == v23;
      if (v20 == v23)
      {
        v20 = 0;
      }

      v22 |= v24;
      v25 = *(v11 + 8 * v20);
      if (v25 != -1)
      {
        v21 = __clz(__rbit64(~v25)) + (v20 << 6);
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = v6;
    while (1)
    {
      v12 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v12 >= ((v5 + 64) >> 6))
      {
LABEL_33:
        sub_1DD82414C(v1);

        return;
      }

      v7 = *(v4 + 8 * v12);
      ++v14;
      if (v7)
      {
        v6 = v12;
        goto LABEL_21;
      }
    }
  }

  __break(1u);
}

double static ToolboxXPCService.selectorClasses.getter()
{
  if (qword_1ECD0E000 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_1DD86ABFC()
{
  v0 = sub_1DD874ED0();
  sub_1DD732C90(v0, qword_1ECD16A40);
  sub_1DD6E1224(v0, qword_1ECD16A40);
  return sub_1DD874C00();
}

uint64_t static ToolboxXPCService.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECD0E008 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD874ED0();
  v3 = sub_1DD6E1224(v2, qword_1ECD16A40);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void Readiness.init(toolKitTools:assistantSchemas:totalEmbeddings:isToolboxIndexingFinished:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_1DD6E1CBC();
  a16 = v22;
  a17 = v23;
  sub_1DD6DFFBC();
  ObjectType = swift_getObjectType();
  *&v18[OBJC_IVAR____TtC16IntelligenceFlow9Readiness_toolKitTools] = v21;
  *&v18[OBJC_IVAR____TtC16IntelligenceFlow9Readiness_assistantSchemas] = v20;
  *&v18[OBJC_IVAR____TtC16IntelligenceFlow9Readiness_totalEmbeddings] = v19;
  v18[OBJC_IVAR____TtC16IntelligenceFlow9Readiness_isToolboxIndexingFinished] = v17;
  a9.receiver = v18;
  a9.super_class = ObjectType;
  objc_msgSendSuper2(&a9, sel_init);
  sub_1DD6E63F0();
}

uint64_t static Readiness.supportsSecureCoding.setter(uint64_t a1)
{
  v1 = a1;
  result = sub_1DD6E098C(a1);
  byte_1ECD16A58 = v1;
  return result;
}

uint64_t sub_1DD86AF00@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1ECD16A58;
  return result;
}

uint64_t sub_1DD86AF4C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1ECD16A58 = v1;
  return result;
}

Swift::Void __swiftcall Readiness.encode(with:)(NSCoder with)
{
  sub_1DD6E1CBC();
  v3 = v2;
  v4 = sub_1DD875110();
  sub_1DD6E0E8C(v4, sel_encodeObject_forKey_);

  v5 = sub_1DD875110();
  sub_1DD6E0E8C(v5, sel_encodeObject_forKey_);

  v6 = sub_1DD6E6D1C();
  sub_1DD6E0E8C(v6, sel_encodeInteger_forKey_);

  v7 = *(v1 + OBJC_IVAR____TtC16IntelligenceFlow9Readiness_isToolboxIndexingFinished);
  sub_1DD875110();
  sub_1DD6DEC88();
  [v3 encodeBool:v7 forKey:?];
  sub_1DD6E63F0();
}

void Readiness.init(coder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_1DD6E1CBC();
  a16 = v18;
  a17 = v19;
  sub_1DD6E2854();
  ObjectType = swift_getObjectType();
  type metadata accessor for ToolBoxIndexedSource();
  v21 = sub_1DD875550();
  if (v21)
  {
    *&v17[OBJC_IVAR____TtC16IntelligenceFlow9Readiness_toolKitTools] = v21;
    sub_1DD6E4A28();
    sub_1DD6E596C();
    v22 = sub_1DD875550();
    if (v22)
    {
      *&v17[OBJC_IVAR____TtC16IntelligenceFlow9Readiness_assistantSchemas] = v22;
      v23 = sub_1DD6E6D1C();
      v24 = [v17 decodeIntegerForKey_];

      *&v17[OBJC_IVAR____TtC16IntelligenceFlow9Readiness_totalEmbeddings] = v24;
      v25 = sub_1DD875110();
      LOBYTE(v24) = [v17 decodeBoolForKey_];

      v17[OBJC_IVAR____TtC16IntelligenceFlow9Readiness_isToolboxIndexingFinished] = v24;
      a9.receiver = v17;
      a9.super_class = ObjectType;
      objc_msgSendSuper2(&a9, sel_init);

      sub_1DD6E63F0();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id ToolBoxIndexedSource.__allocating_init(upToDateWithSource:eligibleTools:)(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v5 = objc_allocWithZone(v2);
  return ToolBoxIndexedSource.init(upToDateWithSource:eligibleTools:)(v4, a2);
}

id ToolBoxIndexedSource.init(upToDateWithSource:eligibleTools:)(char a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v2[OBJC_IVAR____TtC16IntelligenceFlow20ToolBoxIndexedSource_upToDateWithSource] = a1;
  *&v2[OBJC_IVAR____TtC16IntelligenceFlow20ToolBoxIndexedSource_eligibleTools] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t static ToolBoxIndexedSource.supportsSecureCoding.setter(uint64_t a1)
{
  v1 = a1;
  result = sub_1DD6E098C(a1);
  byte_1ECD16A59 = v1;
  return result;
}

uint64_t sub_1DD86B518@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1ECD16A59;
  return result;
}

uint64_t sub_1DD86B564(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1ECD16A59 = v1;
  return result;
}

Swift::Void __swiftcall ToolBoxIndexedSource.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC16IntelligenceFlow20ToolBoxIndexedSource_upToDateWithSource);
  v4 = sub_1DD6DE0F4();
  [(objc_class *)with.super.isa encodeBool:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC16IntelligenceFlow20ToolBoxIndexedSource_eligibleTools);
  sub_1DD6E71FC();
  sub_1DD6DEC88();
  [(objc_class *)with.super.isa encodeInteger:v5 forKey:?];
}

void ToolBoxIndexedSource.init(coder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_1DD6E1CBC();
  a16 = v19;
  a17 = v20;
  sub_1DD8712F8();
  ObjectType = swift_getObjectType();
  v22 = sub_1DD6DE0F4();
  v23 = [v17 decodeBoolForKey_];

  v18[OBJC_IVAR____TtC16IntelligenceFlow20ToolBoxIndexedSource_upToDateWithSource] = v23;
  v24 = sub_1DD6E71FC();
  v25 = [v17 decodeIntegerForKey_];

  *&v18[OBJC_IVAR____TtC16IntelligenceFlow20ToolBoxIndexedSource_eligibleTools] = v25;
  a9.receiver = v18;
  a9.super_class = ObjectType;
  objc_msgSendSuper2(&a9, sel_init);

  sub_1DD6E63F0();
}

id ToolboxIndexedMetadata.init(id:name:toolDescription:positiveUtterances:negativeUtterances:)()
{
  sub_1DD6FC538();
  ObjectType = swift_getObjectType();
  v10 = &v1[OBJC_IVAR____TtC16IntelligenceFlow22ToolboxIndexedMetadata_id];
  *v10 = v8;
  *(v10 + 1) = v7;
  v11 = &v1[OBJC_IVAR____TtC16IntelligenceFlow22ToolboxIndexedMetadata_name];
  *v11 = v6;
  *(v11 + 1) = v5;
  v12 = &v1[OBJC_IVAR____TtC16IntelligenceFlow22ToolboxIndexedMetadata_toolDescription];
  *v12 = v4;
  *(v12 + 1) = v3;
  *&v1[OBJC_IVAR____TtC16IntelligenceFlow22ToolboxIndexedMetadata_positiveUtterances] = v2;
  *&v1[OBJC_IVAR____TtC16IntelligenceFlow22ToolboxIndexedMetadata_negativeUtterances] = v0;
  v14.receiver = v1;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t static ToolboxIndexedMetadata.supportsSecureCoding.setter(uint64_t a1)
{
  v1 = a1;
  result = sub_1DD6E098C(a1);
  byte_1ECD16A5A = v1;
  return result;
}

uint64_t sub_1DD86BAA0@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1ECD16A5A;
  return result;
}

uint64_t sub_1DD86BAEC(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1ECD16A5A = v1;
  return result;
}

Swift::Void __swiftcall ToolboxIndexedMetadata.encode(with:)(NSCoder with)
{
  sub_1DD6E1CBC();
  v2 = sub_1DD875110();
  v3 = sub_1DD875110();
  sub_1DD6E0E8C(v3, sel_encodeObject_forKey_);

  v4 = sub_1DD875110();
  v5 = sub_1DD875110();
  sub_1DD6E0E8C(v5, sel_encodeObject_forKey_);

  v6 = [v1 description];
  if (!v6)
  {
    sub_1DD875140();
    v6 = sub_1DD875110();
  }

  v7 = sub_1DD875110();
  sub_1DD6E0E8C(v7, sel_encodeObject_forKey_);

  v8 = sub_1DD8752C0();
  v9 = sub_1DD6DE0F4();
  v10 = sub_1DD6DEB2C();
  [v10 v11];

  v12 = sub_1DD8752C0();
  sub_1DD6DE0F4();
  sub_1DD6DEC88();
  v13 = sub_1DD6DEB2C();
  [v13 v14];

  sub_1DD6E63F0();
}

unint64_t ToolboxIndexedMetadata.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(sub_1DD8712F8());
  sub_1DD6E2854();
  return ToolboxIndexedMetadata.init(coder:)();
}

unint64_t ToolboxIndexedMetadata.init(coder:)()
{
  sub_1DD6E2854();
  ObjectType = swift_getObjectType();
  sub_1DD804C4C(0, &qword_1ECD16AB8, 0x1E696AEC0);
  result = sub_1DD875550();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  v4 = sub_1DD875140();
  v6 = v5;

  v7 = &v0[OBJC_IVAR____TtC16IntelligenceFlow22ToolboxIndexedMetadata_id];
  *v7 = v4;
  v7[1] = v6;
  result = sub_1DD875550();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = result;
  v9 = sub_1DD875140();
  v11 = v10;

  v12 = &v0[OBJC_IVAR____TtC16IntelligenceFlow22ToolboxIndexedMetadata_name];
  *v12 = v9;
  v12[1] = v11;
  result = sub_1DD875550();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v13 = result;
  v14 = sub_1DD875140();
  v16 = v15;

  v17 = &v0[OBJC_IVAR____TtC16IntelligenceFlow22ToolboxIndexedMetadata_toolDescription];
  *v17 = v14;
  v17[1] = v16;
  sub_1DD6E4A28();
  sub_1DD6E596C();
  result = sub_1DD875560();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v18 = sub_1DD86BF4C(result);

  *&v0[OBJC_IVAR____TtC16IntelligenceFlow22ToolboxIndexedMetadata_positiveUtterances] = v18;
  sub_1DD6E4A28();
  sub_1DD6E596C();
  result = sub_1DD875560();
  if (result)
  {
    v19 = sub_1DD86BF4C(result);

    *&v0[OBJC_IVAR____TtC16IntelligenceFlow22ToolboxIndexedMetadata_negativeUtterances] = v19;
    v21.receiver = v0;
    v21.super_class = ObjectType;
    v20 = objc_msgSendSuper2(&v21, sel_init);

    return v20;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1DD86BF4C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1DD875630();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = sub_1DD76C4A4(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E12B5160](0, a1);
    }

    else
    {
      v4 = *(a1 + 32);
    }

    result = sub_1DD875120();
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD86C0EC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x637365446C6F6F74 && a2 == 0xEF6E6F6974706972;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x80000001DD8B8110 == a2;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000012 && 0x80000001DD8B8130 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1DD875A30();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1DD86C29C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x637365446C6F6F74;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD86C338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD86C0EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD86C360(uint64_t a1)
{
  v2 = sub_1DD86C648();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD86C39C(uint64_t a1)
{
  v2 = sub_1DD86C648();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ToolboxIndexedMetadata.encode(to:)(void *a1)
{
  v3 = sub_1DD710A9C(&qword_1ECD16AC0, &unk_1DD8B2DD0);
  sub_1DD6DDEAC();
  v5 = v4;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  sub_1DD6DF224(a1, a1[3]);
  v9 = sub_1DD86C648();
  sub_1DD6E1808(&type metadata for ToolboxIndexedMetadata.CodingKeys, v10, v9);
  v13 = 0;
  sub_1DD6F329C();
  sub_1DD875970();
  if (!v1)
  {
    v13 = 1;
    sub_1DD6F329C();
    sub_1DD875970();
    v13 = 2;
    sub_1DD6F329C();
    sub_1DD875920();
    sub_1DD6EEE18(OBJC_IVAR____TtC16IntelligenceFlow22ToolboxIndexedMetadata_positiveUtterances);
    HIBYTE(v12) = 3;
    sub_1DD710A9C(&unk_1ECD16AD0, &qword_1DD8AEFF0);
    sub_1DD703B00(&qword_1EE015DC0, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1DD6ED724();
    sub_1DD6EEE18(OBJC_IVAR____TtC16IntelligenceFlow22ToolboxIndexedMetadata_negativeUtterances);
    HIBYTE(v12) = 4;
    sub_1DD6ED724();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1DD86C648()
{
  result = qword_1ECD16AC8;
  if (!qword_1ECD16AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16AC8);
  }

  return result;
}

void ToolboxIndexedMetadata.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  v23 = v22;
  ObjectType = swift_getObjectType();
  sub_1DD710A9C(&unk_1ECD16AE0, &qword_1DD8B2DE0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1DD6DF224(v23, v23[3]);
  v25 = sub_1DD86C648();
  sub_1DD6E1030(&type metadata for ToolboxIndexedMetadata.CodingKeys, v26, v25);
  if (v21)
  {
    sub_1DD6E1EC8(v23);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1DD6EE298();
    v27 = sub_1DD875870();
    v28 = &v20[OBJC_IVAR____TtC16IntelligenceFlow22ToolboxIndexedMetadata_id];
    *v28 = v27;
    v28[1] = v29;
    sub_1DD6EE298();
    v30 = sub_1DD875870();
    v31 = &v20[OBJC_IVAR____TtC16IntelligenceFlow22ToolboxIndexedMetadata_name];
    *v31 = v30;
    v31[1] = v32;
    LOBYTE(a10) = 2;
    v33 = sub_1DD875820();
    v34 = &v20[OBJC_IVAR____TtC16IntelligenceFlow22ToolboxIndexedMetadata_toolDescription];
    *v34 = v33;
    v34[1] = v35;
    sub_1DD710A9C(&unk_1ECD16AD0, &qword_1DD8AEFF0);
    v40 = 3;
    sub_1DD703B00(&qword_1EE015DB8, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1DD6EE298();
    sub_1DD8758D0();
    *&v20[OBJC_IVAR____TtC16IntelligenceFlow22ToolboxIndexedMetadata_positiveUtterances] = a10;
    v40 = 4;
    sub_1DD6EE298();
    sub_1DD8758D0();
    *&v20[OBJC_IVAR____TtC16IntelligenceFlow22ToolboxIndexedMetadata_negativeUtterances] = a10;
    v39.receiver = v20;
    v39.super_class = ObjectType;
    objc_msgSendSuper2(&v39, sel_init);
    v36 = sub_1DD6E0BEC();
    v37(v36);
    sub_1DD6E1EC8(v23);
  }

  sub_1DD6E0C78();
}

uint64_t sub_1DD86CA50@<X0>(uint64_t *a1@<X8>)
{
  result = ToolboxIndexedMetadata.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

id ToolboxIndexedTools.init(tools:assistantSchemas:)(uint64_t a1, uint64_t a2)
{
  sub_1DD6E5E30();
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC16IntelligenceFlow19ToolboxIndexedTools_tools] = v3;
  *&v2[OBJC_IVAR____TtC16IntelligenceFlow19ToolboxIndexedTools_assistantSchemas] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t static ToolboxIndexedTools.supportsSecureCoding.setter(uint64_t a1)
{
  v1 = a1;
  result = sub_1DD6E098C(a1);
  byte_1ECD16A5B = v1;
  return result;
}

uint64_t sub_1DD86CC48@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1ECD16A5B;
  return result;
}

uint64_t sub_1DD86CC94(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1ECD16A5B = v1;
  return result;
}

Swift::Void __swiftcall ToolboxIndexedTools.encode(with:)(NSCoder with)
{
  sub_1DD6E1CBC();
  type metadata accessor for ToolboxIndexedMetadata();
  v1 = sub_1DD8752C0();
  v2 = sub_1DD875110();
  v3 = sub_1DD6DEB2C();
  [v3 v4];

  v5 = sub_1DD8752C0();
  sub_1DD875110();
  sub_1DD6DEC88();
  v6 = sub_1DD6DEB2C();
  [v6 v7];

  sub_1DD6E63F0();
}

id ToolboxIndexedTools.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(sub_1DD8712F8());
  sub_1DD6E2854();
  return ToolboxIndexedTools.init(coder:)();
}

id ToolboxIndexedTools.init(coder:)()
{
  sub_1DD6E2854();
  ObjectType = swift_getObjectType();
  type metadata accessor for ToolboxIndexedMetadata();
  result = sub_1DD875560();
  if (result)
  {
    *&v0[OBJC_IVAR____TtC16IntelligenceFlow19ToolboxIndexedTools_tools] = result;
    sub_1DD6E4A28();
    sub_1DD6E596C();
    result = sub_1DD875560();
    if (result)
    {
      *&v0[OBJC_IVAR____TtC16IntelligenceFlow19ToolboxIndexedTools_assistantSchemas] = result;
      v4.receiver = v0;
      v4.super_class = ObjectType;
      v3 = objc_msgSendSuper2(&v4, sel_init);

      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id ToolboxIndexedTools.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1DD86CFC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736C6F6F74 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DD8B8050 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DD86D094(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x736C6F6F74;
  }
}

uint64_t sub_1DD86D0D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD86CFC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD86D0FC(uint64_t a1)
{
  v2 = sub_1DD86D350();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD86D138(uint64_t a1)
{
  v2 = sub_1DD86D350();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ToolboxIndexedTools.encode(to:)(void *a1)
{
  v3 = sub_1DD710A9C(&qword_1ECD16B00, &qword_1DD8B2DE8);
  sub_1DD6DDEAC();
  v5 = v4;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  sub_1DD6DF224(a1, a1[3]);
  v9 = sub_1DD86D350();
  sub_1DD6E1808(&type metadata for ToolboxIndexedTools.CodingKeys, v10, v9);
  sub_1DD6EEE18(OBJC_IVAR____TtC16IntelligenceFlow19ToolboxIndexedTools_tools);
  HIBYTE(v12) = 0;
  sub_1DD710A9C(&qword_1ECD16B10, &qword_1DD8B2DF0);
  sub_1DD86D60C();
  sub_1DD6ED724();
  if (!v1)
  {
    sub_1DD6EEE18(OBJC_IVAR____TtC16IntelligenceFlow19ToolboxIndexedTools_assistantSchemas);
    HIBYTE(v12) = 1;
    sub_1DD6ED724();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1DD86D350()
{
  result = qword_1ECD16B08;
  if (!qword_1ECD16B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16B08);
  }

  return result;
}

void ToolboxIndexedTools.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1DD6DED2C();
  sub_1DD6F17D0();
  ObjectType = swift_getObjectType();
  sub_1DD710A9C(&qword_1ECD16B28, &qword_1DD8B2DF8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6DF224(v12, v12[3]);
  v14 = sub_1DD86D350();
  sub_1DD6E1030(&type metadata for ToolboxIndexedTools.CodingKeys, v15, v14);
  if (v11)
  {
    sub_1DD6E1EC8(v12);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1DD710A9C(&qword_1ECD16B10, &qword_1DD8B2DF0);
    sub_1DD86D60C();
    sub_1DD6E6628();
    *&v10[OBJC_IVAR____TtC16IntelligenceFlow19ToolboxIndexedTools_tools] = a10;
    v20 = 1;
    sub_1DD6E6628();
    *&v10[OBJC_IVAR____TtC16IntelligenceFlow19ToolboxIndexedTools_assistantSchemas] = a10;
    v19.receiver = v10;
    v19.super_class = ObjectType;
    objc_msgSendSuper2(&v19, sel_init);
    v16 = sub_1DD6E6384();
    v17(v16);
    sub_1DD6E1EC8(v12);
  }

  sub_1DD6E0C78();
}

void sub_1DD86D60C()
{
  sub_1DD6E1CBC();
  v3 = v2;
  if (!*v2)
  {
    v4 = v1;
    v5 = v0;
    sub_1DD717E88(&qword_1ECD16B10, &qword_1DD8B2DF0);
    sub_1DD86D6A0(v5, v6, type metadata accessor for ToolboxIndexedMetadata, v4);
    atomic_store(swift_getWitnessTable(), v3);
  }

  sub_1DD6E63F0();
}

uint64_t sub_1DD86D6A0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_1DD86D6E8(uint64_t *a1@<X8>)
{
  ToolboxIndexedTools.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

id ToolboxSearchResult.init(similarity:toolEmbeddingSnippet:)()
{
  sub_1DD6ED200();
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC16IntelligenceFlow19ToolboxSearchResult_similarity] = v3;
  v5 = &v1[OBJC_IVAR____TtC16IntelligenceFlow19ToolboxSearchResult_toolEmbeddingSnippet];
  *v5 = v2;
  *(v5 + 1) = v0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t static ToolboxSearchResult.supportsSecureCoding.setter(uint64_t a1)
{
  v1 = a1;
  result = sub_1DD6E098C(a1);
  byte_1ECD16A5C = v1;
  return result;
}

uint64_t sub_1DD86D910@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1ECD16A5C;
  return result;
}

uint64_t sub_1DD86D95C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1ECD16A5C = v1;
  return result;
}

Swift::Void __swiftcall ToolboxSearchResult.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC16IntelligenceFlow19ToolboxSearchResult_similarity);
  v4 = sub_1DD871304();
  LODWORD(v5) = v3;
  [(objc_class *)with.super.isa encodeFloat:v4 forKey:v5];

  v6 = sub_1DD875110();
  sub_1DD875110();
  sub_1DD6DEC88();
  [(objc_class *)with.super.isa encodeObject:v6 forKey:?];
}

id ToolboxSearchResult.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(sub_1DD8712F8());
  sub_1DD6E2854();
  return ToolboxSearchResult.init(coder:)();
}

id ToolboxSearchResult.init(coder:)()
{
  sub_1DD6E2854();
  swift_getObjectType();
  sub_1DD804C4C(0, &qword_1ECD16AB8, 0x1E696AEC0);
  v1 = sub_1DD875550();
  if (v1)
  {
    v2 = v1;
    v4 = 0;
    sub_1DD875130();
  }

  swift_deallocPartialClassInstance();
  return 0;
}

id _s16IntelligenceFlow19ToolboxIndexedToolsCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ToolboxClient.__allocating_init()()
{
  v0 = swift_allocObject();
  ToolboxClient.init()(v0, v1);
  return v0;
}

uint64_t ToolboxClient.init()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0;
  sub_1DD86D6A0(&qword_1ECD16B50, a2, type metadata accessor for ToolboxClient, &protocol conformance descriptor for ToolboxClient);
  sub_1DD710A9C(&qword_1ECD16B58, &qword_1DD8B2E00);
  swift_allocObject();

  *(v2 + 16) = sub_1DD874D10();

  return v2;
}

uint64_t sub_1DD86DDE4()
{
  v0 = sub_1DD874B60();
  sub_1DD86D6A0(&qword_1ECD16B60, 255, MEMORY[0x1E69A90C0], MEMORY[0x1E69A90C8]);
  swift_allocError();
  (*(*(v0 - 8) + 104))(v1, *MEMORY[0x1E69A90B8], v0);
  return swift_willThrow();
}

void sub_1DD86DEA4()
{
  if (*(v0 + 16))
  {
    sub_1DD6E06A4();
    MEMORY[0x1EEE9AC00](v1);
    sub_1DD6F0AB4();
    type metadata accessor for Readiness();
    sub_1DD6E5E30();

    sub_1DD6E5404();
    sub_1DD874CF0();
    sub_1DD6FBEB4();
    sub_1DD6DE418();
  }

  else
  {
    __break(1u);
  }
}

void sub_1DD86DFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_1DD875110();
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1DD8712F0;
  v10[3] = &unk_1F58E78C8;
  v9 = _Block_copy(v10);

  [a5 readinessWithPlannerType:v8 with:v9];
  _Block_release(v9);
}

void sub_1DD86E07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  v22 = v20;
  v24 = v23;
  v25 = sub_1DD874ED0();
  sub_1DD6DDEAC();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  v57 = &v56 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v56 - v32;
  if (*(v20 + 16))
  {
    v34 = *v24;
    MEMORY[0x1EEE9AC00](v31);
    *(&v56 - 16) = v34;
    sub_1DD804C4C(0, &qword_1EE018CD8, 0x1E696AD98);
    sub_1DD6E5E30();

    sub_1DD874CF0();

    if (!v21)
    {
      v56 = a10;
      v35 = (v27 + 8);
      v36 = -300;
      do
      {
        if (!v36)
        {
          break;
        }

        sub_1DD874C00();
        v37 = sub_1DD874EC0();
        v38 = sub_1DD8754C0();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v58 = v36;
          v40 = v33;
          v41 = v35;
          v42 = v34;
          v43 = v22;
          v44 = v25;
          v45 = v39;
          *v39 = 0;
          _os_log_impl(&dword_1DD6DC000, v37, v38, "Waiting for toolbox to be ready: the read-write database is still in the process of being copied over to the read-only database", v39, 2u);
          v46 = v45;
          v25 = v44;
          v22 = v43;
          v34 = v42;
          v35 = v41;
          v33 = v40;
          v36 = v58;
          MEMORY[0x1E12B5DE0](v46, -1, -1);
        }

        (*v35)(v33, v25);
        sleep(0xAu);
        v59 = v34;
        sub_1DD86DEA4();
        v48 = v47[OBJC_IVAR____TtC16IntelligenceFlow9Readiness_isToolboxIndexingFinished];

        v36 += 10;
      }

      while ((v48 & 1) == 0);
      if (!v36)
      {
        v49 = v57;
        sub_1DD874C00();
        v50 = sub_1DD874EC0();
        v51 = sub_1DD8754C0();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = v25;
          v53 = swift_slowAlloc();
          *v53 = 0;
          _os_log_impl(&dword_1DD6DC000, v50, v51, "Time limit of 300 seconds reached while waiting for the read-write database to be copied over to the read-only database", v53, 2u);
          v54 = v53;
          v25 = v52;
          MEMORY[0x1E12B5DE0](v54, -1, -1);
        }

        (*v35)(v49, v25);
      }

      v55 = v56;
      [v56 integerValue];
    }

    sub_1DD6E0C78();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DD86E3D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v14 = 0xE800000000000000;
  v15 = 0x647261646E617473;
  v16 = v13;
  switch(a4)
  {
    case 1:
      v14 = 0xE500000000000000;
      v15 = 0x796D6D7564;
      break;
    case 2:
      v14 = 0xE700000000000000;
      v15 = 0x676E6974736574;
      break;
    case 3:
      v14 = 0xE300000000000000;
      v15 = 7169123;
      break;
    case 4:
      v14 = 0xEE0072656E6E616CLL;
      v15 = 0x506369746E656761;
      break;
    default:
      break;
  }

  a7(v15, v14, a6, v16, a1);
}

void sub_1DD86E554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_1DD875110();
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1DD6E1B38;
  v10[3] = &unk_1F58E7878;
  v9 = _Block_copy(v10);

  [a5 populateWithPlannerType:v8 with:v9];
  _Block_release(v9);
}

void sub_1DD86E628()
{
  sub_1DD6DED2C();
  v23 = v2;
  v26 = sub_1DD8746B0();
  sub_1DD6DDEAC();
  v22 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DD874740();
  sub_1DD6DDEAC();
  v21 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - v14;
  if (*(v0 + 16))
  {
    MEMORY[0x1EEE9AC00](v13);
    *(&v20 - 16) = v16;

    sub_1DD874CF0();

    if (!v1)
    {
      sub_1DD874BC0();
      v24 = sub_1DD874710();
      v25 = v17;
      v18 = v22;
      (*(v22 + 104))(v6, *MEMORY[0x1E6968F70], v26);
      sub_1DD719D30();
      sub_1DD874730();
      (*(v18 + 8))(v6, v26);

      v19 = *(v21 + 8);
      v19(v11, v7);
      v19(v15, v7);
    }

    sub_1DD6E0C78();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DD86E8A4(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = 0xE800000000000000;
  v6 = 0x647261646E617473;
  switch(a4)
  {
    case 1:
      v5 = 0xE500000000000000;
      v6 = 0x796D6D7564;
      break;
    case 2:
      v5 = 0xE700000000000000;
      v6 = 0x676E6974736574;
      break;
    case 3:
      v5 = 0xE300000000000000;
      v6 = 7169123;
      break;
    case 4:
      v5 = 0xEE0072656E6E616CLL;
      v6 = 0x506369746E656761;
      break;
    default:
      break;
  }

  sub_1DD86E980(v6, v5, a2, a3, a1);
}

void sub_1DD86E980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_1DD875110();
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1DD86EA54;
  v10[3] = &unk_1F58E7828;
  v9 = _Block_copy(v10);

  [a5 baseRelativeURLWithPlannerType:v8 with:v9];
  _Block_release(v9);
}

uint64_t sub_1DD86EA54(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1DD710A9C(&qword_1ECD16C10, &qword_1DD878230);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_1DD874700();
    v10 = sub_1DD874740();
    v11 = 0;
  }

  else
  {
    v10 = sub_1DD874740();
    v11 = 1;
  }

  sub_1DD6E5E68(v8, v11, 1, v10);

  v12 = a3;
  v9(v8, a3);

  return sub_1DD8711A4(v8);
}

void sub_1DD86EB54()
{
  if (*(v0 + 16))
  {
    sub_1DD6E06A4();
    MEMORY[0x1EEE9AC00](v1);
    sub_1DD6ED510();
    *(v3 - 8) = v2;

    sub_1DD710A9C(&qword_1ECD16B68, &qword_1DD8B2E08);
    sub_1DD6E5404();
    sub_1DD874CF0();
    sub_1DD6FBEB4();
    sub_1DD6DE418();
  }

  else
  {
    __break(1u);
  }
}

void sub_1DD86EBFC(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11)
{
  v13 = a10;
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  v15 = v14;

  v16 = sub_1DD875110();

  v17 = sub_1DD875110();
  v18 = sub_1DD875400();
  if (a10)
  {
    v13 = sub_1DD875110();
  }

  v19 = sub_1DD875400();
  aBlock[4] = sub_1DD8712F4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DD86EE58;
  aBlock[3] = &unk_1F58E7800;
  v20 = _Block_copy(aBlock);

  [a1 queryWithPlannerType:v16 query:v17 k:a7 bundleIDs:v18 clientIdentifier:v13 availableClientActions:v19 with:v20];
  _Block_release(v20);
}

uint64_t sub_1DD86EE58(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    type metadata accessor for ToolboxSearchResult();
    v4 = sub_1DD8752D0();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_1DD86EEE8()
{
  if (*(v0 + 16))
  {
    sub_1DD6E06A4();
    MEMORY[0x1EEE9AC00](v1);
    sub_1DD6ED510();

    sub_1DD710A9C(&qword_1ECD16B68, &qword_1DD8B2E08);
    sub_1DD6E5404();
    sub_1DD874CF0();
    sub_1DD6FBEB4();
    sub_1DD6DE418();
  }

  else
  {
    __break(1u);
  }
}

void sub_1DD86EF8C(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v13 = v12;

  v14 = sub_1DD875110();

  v15 = sub_1DD875110();
  if (a9)
  {
    v16 = sub_1DD875110();
  }

  else
  {
    v16 = 0;
  }

  v17 = sub_1DD875400();
  aBlock[4] = sub_1DD8712F4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DD86EE58;
  aBlock[3] = &unk_1F58E77B0;
  v18 = _Block_copy(aBlock);

  [a1 queryWithPlannerType:v14 query:v15 k:a7 clientIdentifier:v16 availableClientActions:v17 with:v18];
  _Block_release(v18);
}

void sub_1DD86F1C4()
{
  if (*(v0 + 16))
  {
    sub_1DD6E06A4();
    MEMORY[0x1EEE9AC00](v1);
    sub_1DD6E2014();
    sub_1DD710A9C(&qword_1ECD16B68, &qword_1DD8B2E08);
    sub_1DD6E5404();
    sub_1DD874CF0();
    sub_1DD6FBEB4();
    sub_1DD6DE418();
  }

  else
  {
    __break(1u);
  }
}

void sub_1DD86F260()
{
  if (*(v0 + 16))
  {
    sub_1DD6E06A4();
    MEMORY[0x1EEE9AC00](v1);
    sub_1DD6E2014();
    sub_1DD710A9C(&qword_1ECD16B68, &qword_1DD8B2E08);
    sub_1DD6E5404();
    sub_1DD874CF0();
    sub_1DD6FBEB4();
    sub_1DD6DE418();
  }

  else
  {
    __break(1u);
  }
}

void sub_1DD86F2FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, SEL *a11)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v14 = v13;

  sub_1DD6E6384();
  v15 = sub_1DD875110();

  v16 = sub_1DD875110();
  v17 = sub_1DD8752C0();
  aBlock[4] = a9;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DD86EE58;
  aBlock[3] = a10;
  v18 = _Block_copy(aBlock);

  [a1 *a11];
  _Block_release(v18);
}

void sub_1DD86F4EC(uint64_t a1)
{
  if (*(v1 + 16))
  {
    MEMORY[0x1EEE9AC00](a1);

    sub_1DD710A9C(&qword_1ECD16B70, &qword_1DD8B2E10);
    sub_1DD6E5404();
    sub_1DD874CF0();
    sub_1DD6FBEB4();
    if (v2)
    {
LABEL_5:
      sub_1DD6DE418();
      return;
    }

    if (*(v3 + 16))
    {

      goto LABEL_5;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1DD86F5C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v13 = 0xE800000000000000;
  v14 = 0x647261646E617473;
  v15 = v12;
  switch(a6)
  {
    case 1:
      v13 = 0xE500000000000000;
      v14 = 0x796D6D7564;
      break;
    case 2:
      v13 = 0xE700000000000000;
      v14 = 0x676E6974736574;
      break;
    case 3:
      v13 = 0xE300000000000000;
      v14 = 7169123;
      break;
    case 4:
      v13 = 0xEE0072656E6E616CLL;
      v14 = 0x506369746E656761;
      break;
    default:
      break;
  }

  sub_1DD86F710(a4, a5, v14, v13, sub_1DD8712F4, v15, a1);
}

void sub_1DD86F710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = sub_1DD875110();
  v11 = sub_1DD875110();
  v13[4] = a5;
  v13[5] = a6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1DD86F804;
  v13[3] = &unk_1F58E76C0;
  v12 = _Block_copy(v13);

  [a7 sandboxWithInjectionId:v10 plannerType:v11 with:v12];
  _Block_release(v12);
}

uint64_t sub_1DD86F804(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1DD8752D0();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

void sub_1DD86F89C()
{
  if (*(v1 + 16))
  {
    sub_1DD6E06A4();
    MEMORY[0x1EEE9AC00](v2);
    sub_1DD6E8960();
    sub_1DD804C4C(0, &qword_1EE018CD8, 0x1E696AD98);
    sub_1DD6E5E30();

    sub_1DD6E5404();
    sub_1DD874CF0();
    sub_1DD6FBEB4();
    if (!v0)
    {
      [v3 integerValue];
    }

    sub_1DD6DE418();
  }

  else
  {
    __break(1u);
  }
}

void sub_1DD86F960(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v13 = v12;

  v14 = sub_1DD875110();

  v15 = sub_1DD875110();
  if (a8)
  {
    a8 = sub_1DD875110();
  }

  v17[4] = sub_1DD6E6440;
  v17[5] = v13;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1DD6E1B38;
  v17[3] = &unk_1F58E7670;
  v16 = _Block_copy(v17);

  [a1 countWithPlannerType:v14 toolType:v15 clientIdentifier:a8 with:v16];
  _Block_release(v16);
}

void sub_1DD86FB6C()
{
  if (*(v0 + 16))
  {
    sub_1DD6E06A4();
    MEMORY[0x1EEE9AC00](v1);
    sub_1DD6E8960();

    sub_1DD710A9C(&qword_1ECD16B78, &unk_1DD8B2E18);
    sub_1DD6E5404();
    sub_1DD874CF0();
    sub_1DD6FBEB4();
    sub_1DD6DE418();
  }

  else
  {
    __break(1u);
  }
}

void sub_1DD86FC10(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v13 = v12;

  v14 = sub_1DD875110();

  v15 = sub_1DD875110();
  if (a8)
  {
    a8 = sub_1DD875110();
  }

  v17[4] = sub_1DD8712F4;
  v17[5] = v13;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1DD86FE1C;
  v17[3] = &unk_1F58E7620;
  v16 = _Block_copy(v17);

  [a1 listToolsWithPlannerType:v14 toolType:v15 clientIdentifier:a8 with:v16];
  _Block_release(v16);
}

uint64_t sub_1DD86FE1C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1DD875410();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

void sub_1DD86FEBC(uint64_t a1)
{
  if (*(v1 + 16))
  {
    MEMORY[0x1EEE9AC00](a1);
    v5 = v2;
    v6 = v3;
    v7 = v4;

    sub_1DD874CF0();
    sub_1DD6FBEB4();
    sub_1DD6DE418();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DD86FF68(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v13 = 0xE800000000000000;
  v14 = 0x647261646E617473;
  v15 = v12;
  switch(a4)
  {
    case 1:
      v13 = 0xE500000000000000;
      v14 = 0x796D6D7564;
      break;
    case 2:
      v13 = 0xE700000000000000;
      v14 = 0x676E6974736574;
      break;
    case 3:
      v13 = 0xE300000000000000;
      v14 = 7169123;
      break;
    case 4:
      v13 = 0xEE0072656E6E616CLL;
      v14 = 0x506369746E656761;
      break;
    default:
      break;
  }

  sub_1DD8700B8(v14, v13, a5, a6, sub_1DD701010, v15, a1);
}

void sub_1DD8700B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = sub_1DD875110();
  v11 = sub_1DD875110();
  v13[4] = a5;
  v13[5] = a6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1DD8701AC;
  v13[3] = &unk_1F58E75D0;
  v12 = _Block_copy(v13);

  [a7 toolMappingWithPlannerType:v10 customKey:v11 with:v12];
  _Block_release(v12);
}

uint64_t sub_1DD8701AC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1DD875140();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

void sub_1DD870244()
{
  if (*(v0 + 16))
  {
    sub_1DD6E06A4();
    MEMORY[0x1EEE9AC00](v1);
    sub_1DD6F0AB4();
    *(v3 - 15) = v2 & 1;
    type metadata accessor for ToolboxIndexedTools();
    sub_1DD6E5E30();

    sub_1DD6E5404();
    sub_1DD874CF0();
    sub_1DD6FBEB4();
    sub_1DD6DE418();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DD8702E0(void *a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = 0xE800000000000000;
  v12 = 0x647261646E617473;
  v13 = v10;
  switch(a4)
  {
    case 1:
      v11 = 0xE500000000000000;
      v12 = 0x796D6D7564;
      break;
    case 2:
      v11 = 0xE700000000000000;
      v12 = 0x676E6974736574;
      break;
    case 3:
      v11 = 0xE300000000000000;
      v12 = 7169123;
      break;
    case 4:
      v11 = 0xEE0072656E6E616CLL;
      v12 = 0x506369746E656761;
      break;
    default:
      break;
  }

  sub_1DD870428(v12, v11, a5 & 1, sub_1DD6E6448, v13, a1);
}

void sub_1DD870428(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = sub_1DD875110();
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1DD8712F0;
  v12[3] = &unk_1F58E7580;
  v11 = _Block_copy(v12);

  [a6 metadataWithPlannerType:v10 enableAllowList:a3 & 1 with:v11];
  _Block_release(v11);
}

void sub_1DD870504()
{
  sub_1DD6E1CBC();
  v2 = v1;
  v4 = v3;
  v6 = *(v5 + 32);

  v4;
  v7 = v2;
  v8 = sub_1DD6F17D0();
  v6(v8, v2);

  sub_1DD6E63F0();
}

uint64_t ToolboxClient.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1DD8705DC(uint64_t a1)
{
  v2 = type metadata accessor for ToolboxClient();

  return MEMORY[0x1EEE2EE60](a1, v2);
}

uint64_t sub_1DD870808(uint64_t a1, uint64_t a2)
{
  result = sub_1DD86D6A0(&qword_1ECD16B50, a2, type metadata accessor for ToolboxClient, &protocol conformance descriptor for ToolboxClient);
  *(a1 + 8) = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ToolboxXPCService(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for ToolboxIndexedTools.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ToolboxIndexedMetadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD870F98()
{
  result = qword_1ECD16BE0;
  if (!qword_1ECD16BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16BE0);
  }

  return result;
}

unint64_t sub_1DD870FF0()
{
  result = qword_1ECD16BE8;
  if (!qword_1ECD16BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16BE8);
  }

  return result;
}

unint64_t sub_1DD871048()
{
  result = qword_1ECD16BF0;
  if (!qword_1ECD16BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16BF0);
  }

  return result;
}

unint64_t sub_1DD8710A0()
{
  result = qword_1ECD16BF8;
  if (!qword_1ECD16BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16BF8);
  }

  return result;
}

unint64_t sub_1DD8710F8()
{
  result = qword_1ECD16C00;
  if (!qword_1ECD16C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16C00);
  }

  return result;
}

unint64_t sub_1DD871150()
{
  result = qword_1ECD16C08;
  if (!qword_1ECD16C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16C08);
  }

  return result;
}

uint64_t sub_1DD8711A4(uint64_t a1)
{
  v2 = sub_1DD710A9C(&qword_1ECD16C10, &qword_1DD878230);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DD87120C()
{
  result = qword_1ECD16C50;
  if (!qword_1ECD16C50)
  {
    sub_1DD804C4C(255, &qword_1ECD0E2A8, 0x1E69E58C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16C50);
  }

  return result;
}

uint64_t sub_1DD871304()
{

  return sub_1DD875110();
}

uint64_t sub_1DD87132C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v5[0] = a1;
  v5[1] = a2;
  return a4(v5, a3);
}

uint64_t TranscriptEntityQueryingClient.__allocating_init()()
{
  v0 = swift_allocObject();
  TranscriptEntityQueryingClient.init()();
  return v0;
}

uint64_t TranscriptEntityQueryingClient.init()()
{
  v2 = sub_1DD874610();
  *(v0 + 16) = 0u;
  v3 = (v0 + 16);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  sub_1DD6DE3F0(v2);
  *(v0 + 64) = sub_1DD874600();
  v4 = sub_1DD8745E0();
  sub_1DD6DE3F0(v4);
  *(v0 + 72) = sub_1DD8745D0();
  type metadata accessor for TranscriptEntityQueryingClient.ReverseServer();
  *(v0 + 56) = swift_allocObject();
  sub_1DD871A8C(qword_1EE015020, v5, type metadata accessor for TranscriptEntityQueryingClient, &protocol conformance descriptor for TranscriptEntityQueryingClient);
  v6 = sub_1DD710A9C(&qword_1ECD16CD8, &qword_1DD8B3360);
  sub_1DD6DE3F0(v6);
  swift_retain_n();

  v7 = sub_1DD874DA0();
  if (v1)
  {
  }

  else
  {
    v8 = v7;
    v11 = v6;
    v12 = sub_1DD871630();

    *&v10 = v8;
    swift_beginAccess();
    if (*(v0 + 40))
    {
      sub_1DD6E1EC8(v3);
    }

    sub_1DD6DF5E4(&v10, v3);
    swift_endAccess();
  }

  return v0;
}

unint64_t sub_1DD871630()
{
  result = qword_1EE013A78;
  if (!qword_1EE013A78)
  {
    sub_1DD717E88(&qword_1ECD16CD8, &qword_1DD8B3360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE013A78);
  }

  return result;
}

void sub_1DD871694(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v33 = a3;
  v6 = sub_1DD874820();
  sub_1DD6DDEAC();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DE4A8();
  v12 = (v11 - v10);
  type metadata accessor for TranscriptEntityEnumerationParameters(0);
  sub_1DD871A8C(qword_1EE014CB8, 255, type metadata accessor for TranscriptEntityEnumerationParameters, &protocol conformance descriptor for TranscriptEntityEnumerationParameters);

  v13 = sub_1DD8745F0();
  v15 = v14;

  if (!v4)
  {
    v26 = a2;
    v27 = v12;
    v25 = v8;
    swift_beginAccess();
    if (*(v3 + 40))
    {
      sub_1DD6E0F0C(v3 + 16, v31);
    }

    else
    {
      sub_1DD6DE114();
    }

    v28 = v6;
    if (v32)
    {
      v16 = sub_1DD6E49C0(v31);
      MEMORY[0x1EEE9AC00](v16);
      *(&v22 - 2) = v13;
      *(&v22 - 1) = v15;
      v17 = v27;
      sub_1DD874D80();
      v23 = v15;
      v24 = v13;
      sub_1DD6E1EC8(v31);
      v18 = v26;
      while (1)
      {
        if (*(v3 + 40))
        {
          sub_1DD6E0F0C(v3 + 16, v31);
        }

        else
        {
          sub_1DD6DE114();
        }

        if (!v32)
        {
          break;
        }

        v19 = sub_1DD6E49C0(v31);
        MEMORY[0x1EEE9AC00](v19);
        *(&v22 - 2) = v17;
        sub_1DD874D80();
        v21 = v29;
        v20 = v30;
        sub_1DD6E1EC8(v31);
        sub_1DD710A9C(&qword_1ECD16CE0, &qword_1DD8B3368);
        sub_1DD871F7C();

        sub_1DD8745C0();

        if (!*(v31[0] + 16))
        {

          sub_1DD6E6658(v21, v20);
          sub_1DD871BB8(v3, v17);
          sub_1DD6E6658(v24, v23);
          (*(v25 + 8))(v17, v28);
          return;
        }

        v18(v31[0]);

        sub_1DD6E6658(v21, v20);
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_1DD871A8C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_1DD871AD4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1DD874750();
  v10[4] = a2;
  v10[5] = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1DD6FC2C0;
  v10[3] = &unk_1F58E7C60;
  v9 = _Block_copy(v10);

  [a1 getTranscriptEntitiesWithParameters:v8 reply:v9];
  _Block_release(v9);
}

uint64_t sub_1DD871BB8(uint64_t a1, void *a2)
{
  v4 = sub_1DD874ED0();
  MEMORY[0x1EEE9AC00](v4);
  result = swift_beginAccess();
  if (*(a1 + 40))
  {
    result = sub_1DD6E0F0C(a1 + 16, &v9);
  }

  else
  {
    v6 = *(a1 + 32);
    v9 = *(a1 + 16);
    v10 = v6;
    v11 = *(a1 + 48);
  }

  if (*(&v10 + 1))
  {
    v7 = sub_1DD6DF224(&v9, *(&v10 + 1));
    MEMORY[0x1EEE9AC00](v7);
    v8[-2] = a2;
    sub_1DD6E0EC8();
    sub_1DD874D80();

    return sub_1DD6E1EC8(&v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1DD871E74(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  v7 = sub_1DD8747C0();
  v9[4] = sub_1DD701010;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1DD700F5C;
  v9[3] = &unk_1F58E7C38;
  v8 = _Block_copy(v9);

  [a1 getTranscriptEntitiesBatchWithId:v7 reply:v8];
  _Block_release(v8);
}

unint64_t sub_1DD871F7C()
{
  result = qword_1EE0139E8;
  if (!qword_1EE0139E8)
  {
    sub_1DD717E88(&qword_1ECD16CE0, &qword_1DD8B3368);
    sub_1DD871A8C(&qword_1EE015348, 255, type metadata accessor for TranscriptEntityItem, &protocol conformance descriptor for TranscriptEntityItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0139E8);
  }

  return result;
}

void *TranscriptEntityQueryingClient.deinit()
{
  if (*(v0 + 40))
  {
    sub_1DD6E1EC8((v0 + 16));
  }

  return v0;
}

uint64_t TranscriptEntityQueryingClient.__deallocating_deinit()
{
  TranscriptEntityQueryingClient.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

uint64_t sub_1DD8720C8(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptEntityQueryingClient();

  return MEMORY[0x1EEE2EE60](a1, v2);
}

uint64_t TranscriptEntityEnumerationParameters.startDate.getter()
{
  v2 = sub_1DD6E0A5C();
  v3 = v1 + *(type metadata accessor for TranscriptEntityEnumerationParameters(v2) + 20);

  return sub_1DD87218C(v3, v0);
}

uint64_t sub_1DD87218C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD710A9C(&qword_1ECD16CE8, &qword_1DD8B3370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TranscriptEntityEnumerationParameters.init()()
{
  v1 = sub_1DD6E0A5C();
  v2 = *(type metadata accessor for TranscriptEntityEnumerationParameters(v1) + 20);
  v3 = sub_1DD874790();
  result = sub_1DD6E5E68(&v0[v2], 1, 1, v3);
  *v0 = 1;
  return result;
}

uint64_t TranscriptEntityEnumerationParameters.init(startDate:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 1;
  v3 = &a2[*(type metadata accessor for TranscriptEntityEnumerationParameters(0) + 20)];

  return sub_1DD8722A0(a1, v3);
}

uint64_t sub_1DD8722A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD710A9C(&qword_1ECD16CE8, &qword_1DD8B3370);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL static TranscriptEntityEnumerationParameters.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1DD874790();
  sub_1DD6DDEAC();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DE4A8();
  v10 = v9 - v8;
  sub_1DD710A9C(&qword_1ECD16CE8, &qword_1DD8B3370);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  v14 = sub_1DD710A9C(&qword_1ECD16CF0, &qword_1DD8B3378);
  sub_1DD6DE1C4();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - v16;
  if (*a1 != *a2)
  {
    return 0;
  }

  v18 = *(type metadata accessor for TranscriptEntityEnumerationParameters(0) + 20);
  v19 = *(v14 + 48);
  sub_1DD87218C(&a1[v18], v17);
  sub_1DD87218C(&a2[v18], &v17[v19]);
  sub_1DD6E26E4(v17);
  if (v20)
  {
    sub_1DD6E26E4(&v17[v19]);
    if (v20)
    {
      sub_1DD6FC560(v17, &qword_1ECD16CE8, &qword_1DD8B3370);
      return 1;
    }

    goto LABEL_10;
  }

  sub_1DD87218C(v17, v13);
  sub_1DD6E26E4(&v17[v19]);
  if (v20)
  {
    (*(v6 + 8))(v13, v4);
LABEL_10:
    sub_1DD6FC560(v17, &qword_1ECD16CF0, &qword_1DD8B3378);
    return 0;
  }

  (*(v6 + 32))(v10, &v17[v19], v4);
  sub_1DD6E1550();
  sub_1DD871A8C(v22, 255, v23, MEMORY[0x1E6969550]);
  v24 = sub_1DD8750F0();
  v25 = *(v6 + 8);
  v25(v10, v4);
  v25(v13, v4);
  sub_1DD6FC560(v17, &qword_1ECD16CE8, &qword_1DD8B3370);
  return (v24 & 1) != 0;
}

uint64_t sub_1DD8725B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E6172656C6F74 && a2 == 0xEC00000065646F4DLL;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DD872688(char a1)
{
  if (a1)
  {
    return 0x7461447472617473;
  }

  else
  {
    return 0x746E6172656C6F74;
  }
}

uint64_t sub_1DD8726D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD8725B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD8726FC(uint64_t a1)
{
  v2 = sub_1DD8728E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD872738(uint64_t a1)
{
  v2 = sub_1DD8728E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TranscriptEntityEnumerationParameters.encode(to:)(void *a1)
{
  v4 = sub_1DD710A9C(&qword_1ECD16D00, &qword_1DD8B3380);
  sub_1DD6DDEAC();
  v6 = v5;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DE340();
  sub_1DD6E49C0(a1);
  v8 = sub_1DD8728E0();
  sub_1DD6E0EA8(&type metadata for TranscriptEntityEnumerationParameters.CodingKeys, v9, v8);
  sub_1DD875980();
  if (!v1)
  {
    type metadata accessor for TranscriptEntityEnumerationParameters(0);
    sub_1DD6DEC54();
    sub_1DD874790();
    sub_1DD6E1550();
    sub_1DD871A8C(v10, 255, v11, MEMORY[0x1E6969538]);
    sub_1DD6E730C();
    sub_1DD875960();
  }

  return (*(v6 + 8))(v2, v4);
}

unint64_t sub_1DD8728E0()
{
  result = qword_1EE015F20[0];
  if (!qword_1EE015F20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE015F20);
  }

  return result;
}

uint64_t TranscriptEntityEnumerationParameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  sub_1DD710A9C(&qword_1ECD16CE8, &qword_1DD8B3370);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - v5;
  sub_1DD710A9C(&qword_1ECD16D08, &qword_1DD8B3388);
  sub_1DD6DDEAC();
  v24 = v8;
  v25 = v7;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = type metadata accessor for TranscriptEntityEnumerationParameters(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6DE4A8();
  v16 = (v15 - v14);
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD8728E0();
  sub_1DD875B90();
  if (v2)
  {
    return sub_1DD6E1EC8(a1);
  }

  v17 = v24;
  v18 = v25;
  v26 = 0;
  *v16 = sub_1DD875880() & 1;
  sub_1DD874790();
  sub_1DD6DEC54();
  sub_1DD6E1550();
  sub_1DD871A8C(v19, 255, v20, MEMORY[0x1E6969558]);
  sub_1DD875860();
  (*(v17 + 8))(v11, v18);
  sub_1DD8722A0(v6, &v16[*(v12 + 20)]);
  sub_1DD87381C(v16, v23, type metadata accessor for TranscriptEntityEnumerationParameters);
  sub_1DD6E1EC8(a1);
  return sub_1DD87387C(v16, type metadata accessor for TranscriptEntityEnumerationParameters);
}

uint64_t TranscriptEntityItem.eventId.getter()
{
  sub_1DD6E0A5C();
  sub_1DD874820();
  sub_1DD6DE1C4();
  v4 = *(v3 + 16);

  return v4(v0, v1, v2);
}

uint64_t TranscriptEntityItem.eventTimestamp.getter()
{
  v2 = sub_1DD6E0A5C();
  v3 = *(type metadata accessor for TranscriptEntityItem(v2) + 20);
  sub_1DD874790();
  sub_1DD6DE1C4();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t TranscriptEntityItem.entity.getter()
{
  v2 = sub_1DD6E0A5C();
  v3 = *(type metadata accessor for TranscriptEntityItem(v2) + 24);
  sub_1DD874FA0();
  sub_1DD6DE1C4();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t TranscriptEntityItem.init(eventId:eventTimestamp:entity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1DD874820();
  sub_1DD6DE1C4();
  (*(v8 + 32))(a4, a1);
  v9 = type metadata accessor for TranscriptEntityItem(0);
  v10 = *(v9 + 20);
  sub_1DD874790();
  sub_1DD6DE1C4();
  (*(v11 + 32))(a4 + v10, a2);
  v12 = *(v9 + 24);
  sub_1DD874FA0();
  sub_1DD6DE1C4();
  v14 = *(v13 + 32);

  return v14(a4 + v12, a3);
}

uint64_t static TranscriptEntityItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s16IntelligenceFlow15SessionClientIDV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for TranscriptEntityItem(0);
  if ((sub_1DD874780() & 1) == 0)
  {
    return 0;
  }

  return _s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0();
}

uint64_t sub_1DD872EC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449746E657665 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D6954746E657665 && a2 == 0xEE00706D61747365;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x797469746E65 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD875A30();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1DD872FD4(char a1)
{
  if (!a1)
  {
    return 0x6449746E657665;
  }

  if (a1 == 1)
  {
    return 0x6D6954746E657665;
  }

  return 0x797469746E65;
}

uint64_t sub_1DD87303C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD872EC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD873064(uint64_t a1)
{
  v2 = sub_1DD8732D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD8730A0(uint64_t a1)
{
  v2 = sub_1DD8732D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TranscriptEntityItem.encode(to:)(void *a1)
{
  v4 = sub_1DD710A9C(&qword_1ECD16D10, &qword_1DD8B3390);
  sub_1DD6DDEAC();
  v6 = v5;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DE340();
  sub_1DD6E49C0(a1);
  v8 = sub_1DD8732D8();
  sub_1DD6E0EA8(&type metadata for TranscriptEntityItem.CodingKeys, v9, v8);
  sub_1DD874820();
  sub_1DD6E09AC();
  sub_1DD871A8C(v10, 255, v11, MEMORY[0x1E69695B0]);
  sub_1DD6E730C();
  sub_1DD8759D0();
  if (!v1)
  {
    type metadata accessor for TranscriptEntityItem(0);
    sub_1DD6DEC54();
    sub_1DD874790();
    sub_1DD6E1550();
    sub_1DD871A8C(v12, 255, v13, MEMORY[0x1E6969538]);
    sub_1DD6E730C();
    sub_1DD8759D0();
    sub_1DD874FA0();
    sub_1DD6E0BFC();
    sub_1DD871A8C(v14, 255, v15, MEMORY[0x1E69DAE90]);
    sub_1DD6E730C();
    sub_1DD8759D0();
  }

  return (*(v6 + 8))(v2, v4);
}

unint64_t sub_1DD8732D8()
{
  result = qword_1ECD16D18;
  if (!qword_1ECD16D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16D18);
  }

  return result;
}

uint64_t TranscriptEntityItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = sub_1DD874FA0();
  sub_1DD6DDEAC();
  v32 = v4;
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DE4A8();
  v35 = v7 - v6;
  v39 = sub_1DD874790();
  sub_1DD6DDEAC();
  v36 = v8;
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DE4A8();
  v12 = v11 - v10;
  v13 = sub_1DD874820();
  sub_1DD6DDEAC();
  v37 = v14;
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6DE4A8();
  v40 = v17 - v16;
  v41 = sub_1DD710A9C(&qword_1ECD16D20, &qword_1DD8B3398);
  sub_1DD6DDEAC();
  v38 = v18;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1DD6DE340();
  v20 = type metadata accessor for TranscriptEntityItem(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v21);
  sub_1DD6DE4A8();
  v24 = v23 - v22;
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD8732D8();
  sub_1DD875B90();
  if (v42)
  {
    return sub_1DD6E1EC8(a1);
  }

  sub_1DD6E09AC();
  sub_1DD871A8C(v25, 255, v26, MEMORY[0x1E69695D0]);
  sub_1DD8758D0();
  (*(v37 + 32))(v24, v40, v13);
  sub_1DD6DEC54();
  sub_1DD6E1550();
  sub_1DD871A8C(v27, 255, v28, MEMORY[0x1E6969558]);
  sub_1DD8758D0();
  (*(v36 + 32))(v24 + *(v20 + 20), v12, v39);
  sub_1DD6E0BFC();
  sub_1DD871A8C(v29, 255, v30, MEMORY[0x1E69DAEA8]);
  sub_1DD8758D0();
  (*(v38 + 8))(v2, v41);
  (*(v32 + 32))(v24 + *(v20 + 24), v35, v34);
  sub_1DD87381C(v24, a2, type metadata accessor for TranscriptEntityItem);
  sub_1DD6E1EC8(a1);
  return sub_1DD87387C(v24, type metadata accessor for TranscriptEntityItem);
}

uint64_t sub_1DD87381C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1DD6DE1C4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD87387C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1DD6DE1C4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t TranscriptEntityQueryingReverseClient.__allocating_init(existingConnection:localObject:)(uint64_t a1, uint64_t a2)
{
  sub_1DD6E6088();
  v3 = swift_allocObject();
  TranscriptEntityQueryingReverseClient.init(existingConnection:localObject:)(a1);
  return v3;
}

uint64_t TranscriptEntityQueryingReverseClient.init(existingConnection:localObject:)(uint64_t a1)
{
  v3 = sub_1DD874610();
  sub_1DD6DE3F0(v3);
  *(v1 + 16) = sub_1DD874600();
  *(v1 + 24) = 0;
  sub_1DD871A8C(&qword_1EE014CB0, v4, type metadata accessor for TranscriptEntityQueryingReverseClient, &protocol conformance descriptor for TranscriptEntityQueryingReverseClient);
  v5 = sub_1DD710A9C(&qword_1ECD16D28, &unk_1DD8B33A0);
  sub_1DD6DE3F0(v5);

  v6 = sub_1DD874D90();
  if (!v2)
  {
    *(v1 + 24) = v6;
  }

  return v1;
}

uint64_t TranscriptEntityQueryingReverseClient.deinit()
{

  return v0;
}

uint64_t TranscriptEntityQueryingReverseClient.__deallocating_deinit()
{
  TranscriptEntityQueryingReverseClient.deinit();
  v0 = sub_1DD6E6088();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1DD873B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = TranscriptEntityQueryingReverseClient.__allocating_init(existingConnection:localObject:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1DD873BC8(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptEntityQueryingReverseClient();

  return MEMORY[0x1EEE2EE60](a1, v2);
}

uint64_t TranscriptEntityQueryingServiceError.hashValue.getter()
{
  v1 = *v0;
  sub_1DD875B20();
  MEMORY[0x1E12B5570](v1);
  return sub_1DD875B60();
}

unint64_t sub_1DD873CB8()
{
  result = qword_1EE014A20;
  if (!qword_1EE014A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE014A20);
  }

  return result;
}

unint64_t sub_1DD873D10()
{
  result = qword_1ECD16D30;
  if (!qword_1ECD16D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16D30);
  }

  return result;
}

void sub_1DD873E14(uint64_t a1)
{
  sub_1DD873E90(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1DD873E90(uint64_t a1)
{
  if (!qword_1EE018CC0)
  {
    sub_1DD874790();
    v1 = sub_1DD8755C0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE018CC0);
    }
  }
}

uint64_t sub_1DD873F10(uint64_t a1)
{
  result = sub_1DD874820();
  if (v2 <= 0x3F)
  {
    result = sub_1DD874790();
    if (v3 <= 0x3F)
    {
      result = sub_1DD874FA0();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

_BYTE *sub_1DD873FAC(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for TranscriptEntityItem.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DD874184(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD874264()
{
  result = qword_1ECD16D38;
  if (!qword_1ECD16D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16D38);
  }

  return result;
}

unint64_t sub_1DD8742BC()
{
  result = qword_1ECD16D40;
  if (!qword_1ECD16D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16D40);
  }

  return result;
}

unint64_t sub_1DD874314()
{
  result = qword_1ECD16D48;
  if (!qword_1ECD16D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16D48);
  }

  return result;
}

unint64_t sub_1DD87436C()
{
  result = qword_1ECD16D50;
  if (!qword_1ECD16D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD16D50);
  }

  return result;
}

unint64_t sub_1DD8743C4()
{
  result = qword_1EE015F10;
  if (!qword_1EE015F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015F10);
  }

  return result;
}

unint64_t sub_1DD87441C()
{
  result = qword_1EE015F18;
  if (!qword_1EE015F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015F18);
  }

  return result;
}

void sub_1DD874470(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  v7 = sub_1DD8747C0();
  v9[4] = sub_1DD6E6448;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1DD6E1B38;
  v9[3] = &unk_1F58E7BE8;
  v8 = _Block_copy(v9);

  [a1 stopTranscriptEntitiesEnumerationWithId:v7 reply:v8];
  _Block_release(v8);
}