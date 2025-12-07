id sub_69B78(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_38F8(a1, a2);
  v4 = *v2;
  v5 = sub_758C8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_69CB8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_38F8(&qword_8FE80, qword_7AC08);
  result = sub_758D8();
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
      sub_75AE8();

      sub_755E8();
      result = sub_75B08();
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

uint64_t sub_69EF0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_38F8(a2, a3);
  result = sub_758D8();
  v7 = result;
  if (*(v5 + 16))
  {
    v27 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v7 + 40);
      v19 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = sub_75808(v18);
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v19;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v27;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v4 = v7;
  }

  return result;
}

uint64_t sub_6A0FC(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *(&dword_18 + (v4 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_759D8();
LABEL_9:
  result = sub_75938();
  *v2 = result;
  return result;
}

void *sub_6A19C(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, char *))
{
  result = sub_74858();
  v8 = result;
  if (result)
  {
    result = sub_74878();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v8 = (v8 + a1 - result);
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = sub_74868();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v8 + v12;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  result = a3(&v15, v8, v14);
  if (!v3)
  {
    return v15;
  }

  return result;
}

void (*sub_6A24C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_75928();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_6A2CC;
  }

  __break(1u);
  return result;
}

uint64_t sub_6A2D4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_759D8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_759D8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_7718(&qword_8FF60, &qword_8FF58, &qword_7ADA0, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_38F8(&qword_8FF58, &qword_7ADA0);
            v9 = sub_6A24C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_7688(0, &qword_8EDE8, HDSQLiteComparisonPredicate_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_6A488(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_756E8();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_68B78(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_6A520(const void *a1, sqlite3_stmt *a2, int *a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a3;
  sub_38F8(a5, a6);
  result = sub_75098();
  v11 = v10 >> 62;
  if ((v10 >> 62) <= 1)
  {
    if (!v11)
    {
      BYTE6(v12) = BYTE6(v10);
      sub_FB28(result, v10);
      LODWORD(v12) = BYTE6(v12);
      goto LABEL_13;
    }

LABEL_9:
    v16 = HIDWORD(result);
    v17 = result;
    result = sub_FB28(result, v10);
    v15 = __OFSUB__(v16, v17);
    LODWORD(v12) = v16 - v17;
    if (!v15)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_12:
    sub_FB28(result, v10);
    LODWORD(v12) = 0;
    goto LABEL_13;
  }

  if (v11 != 2)
  {
    goto LABEL_12;
  }

  v14 = *(result + 16);
  v13 = *(result + 24);
  result = sub_FB28(result, v10);
  v15 = __OFSUB__(v13, v14);
  v12 = v13 - v14;
  if (!v15)
  {
    if (v12 < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v12 <= 0x7FFFFFFF)
    {
LABEL_13:
      if (qword_8E9E0 == -1)
      {
        return sqlite3_bind_blob(a2, v8, a1, v12, qword_90000);
      }

LABEL_16:
      swift_once();
      return sqlite3_bind_blob(a2, v8, a1, v12, qword_90000);
    }

    __break(1u);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

unint64_t sub_6A63C()
{
  result = qword_8FE70;
  if (!qword_8FE70)
  {
    sub_76D0(&qword_8F000, &qword_7A5D0);
    sub_6A7F0(&qword_8F7F8, &protocol conformance descriptor for CacheIndex);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8FE70);
  }

  return result;
}

uint64_t sub_6A6DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_38F8(&qword_8F000, &qword_7A5D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_6A7F0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_74CA8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_6A944@<X0>(const void *a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, _DWORD *a4@<X8>)
{
  result = sub_6A520(a1, *(v4 + 16), *(v4 + 24), *(v4 + 32), a2, a3);
  if (!v5)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_6A980()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_6A9CC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_6AA44()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_6AB08()
{
  v1 = (sub_38F8(&qword_8F000, &qword_7A5D0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_74CA8();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v7(v5 + v1[11], v6);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_6AC28(sqlite3_stmt *a1)
{
  v3 = *(sub_38F8(&qword_8F000, &qword_7A5D0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_5658(a1, v1 + v4, v5);
}

uint64_t sub_6ADA8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v122 = a3;
  v119 = sub_754B8();
  v4 = *(v119 - 1);
  __chkstk_darwin(v119);
  v6 = v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_38F8(&qword_8F288, &qword_7A128);
  v8 = __chkstk_darwin(v7);
  v109 = v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v106 = v96 - v10;
  v117 = sub_74CA8();
  v107 = *(v117 - 8);
  v11 = __chkstk_darwin(v117);
  v116 = v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v115 = v96 - v13;
  v102 = sub_38F8(&qword_8F000, &qword_7A5D0);
  __chkstk_darwin(v102);
  v104 = v96 - v14;
  v108 = sub_75268();
  v105 = *(v108 - 8);
  v15 = __chkstk_darwin(v108);
  v103 = v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = v96 - v17;
  v19 = sub_38F8(&qword_8FC60, &qword_7A9D8);
  v20 = __chkstk_darwin(v19 - 8);
  v114 = v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v120 = v96 - v22;
  v23 = sub_38F8(&qword_8FBC0, &unk_7A968);
  v24 = __chkstk_darwin(v23 - 8);
  v26 = v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v125 = v96 - v27;
  v28 = sub_38F8(&qword_8F290, &qword_7A130);
  v29 = __chkstk_darwin(v28 - 8);
  v113 = v96 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v124 = v96 - v31;
  v32 = sub_752E8();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v35 = v96 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_38F8(&qword_8F298, &qword_7A138);
  v37 = __chkstk_darwin(v36 - 8);
  v112 = v96 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v123 = v96 - v39;
  sub_5B1CC(1);
  v111 = HDSQLiteColumnAsInt64();
  sub_5B1CC(2);
  v110 = HDSQLiteColumnAsInt64();
  sub_5B1CC(11);
  v101 = HDSQLiteColumnAsInt64();
  sub_5B1CC(10);
  v40 = HDSQLiteColumnAsData();
  if (!v40)
  {

LABEL_15:
    v60 = v122;
    sub_75378();
    v61 = sub_754A8();
    v62 = sub_75718();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_0, v61, v62, "Failed to initialize WorkoutPropertyRecordEntity from row: no propertyData", v63, 2u);
    }

    (*(v4 + 8))(v6, v119);
    v64 = 1;
    goto LABEL_34;
  }

  v100 = v26;
  v121 = a2;
  v118 = v18;
  v41 = v40;
  v42 = sub_748C8();
  v44 = v43;

  sub_5B1CC(9);
  v45 = HDSQLiteColumnAsString();
  if (!v45)
  {

    sub_FB28(v42, v44);
    goto LABEL_15;
  }

  v46 = v45;
  v96[2] = v42;
  v96[3] = v44;
  v97 = v7;
  v96[1] = sub_755A8();
  v96[0] = v47;

  v48 = *(v33 + 104);
  (v48)(v35, enum case for WorkoutPropertyDimensionsField.monthOfYear(_:), v32);
  v49 = v121;
  v50 = sub_56778(v35, v121);
  v51 = *(v33 + 8);
  v51(v35, v32);
  if (v50 && (sub_5B1CC(3), (v52 = HDSQLiteColumnAsString()) != 0))
  {
    v53 = v52;
    sub_755A8();

    v49 = v121;
    sub_74CF8();
  }

  else
  {
    v54 = sub_74D08();
    (*(*(v54 - 8) + 56))(v123, 1, 1, v54);
  }

  (v48)(v35, enum case for WorkoutPropertyDimensionsField.dayOfWeek(_:), v32);
  v55 = sub_56778(v35, v49);
  v51(v35, v32);
  if (v55 && (sub_5B1CC(4), (v56 = HDSQLiteColumnAsString()) != 0))
  {
    v57 = v56;
    sub_755A8();

    v49 = v121;
    sub_753C8();
  }

  else
  {
    v58 = sub_753D8();
    (*(*(v58 - 8) + 56))(v124, 1, 1, v58);
  }

  (v48)(v35, enum case for WorkoutPropertyDimensionsField.hourOfDay(_:), v32);
  v59 = sub_56778(v35, v49);
  v51(v35, v32);
  if (v59)
  {
    sub_5B1CC(5);
    HDSQLiteColumnAsInt64();
    sub_753E8();
  }

  else
  {
    v65 = sub_753F8();
    (*(*(v65 - 8) + 56))(v125, 1, 1, v65);
  }

  (v48)(v35, enum case for WorkoutPropertyDimensionsField.activityType(_:), v32);
  v66 = sub_56778(v35, v49);
  v51(v35, v32);
  if (!v66)
  {
    goto LABEL_22;
  }

  sub_5B1CC(6);
  v67 = HDSQLiteColumnAsInt64();
  if (v67 < 0)
  {
    __break(1u);
LABEL_22:
    v67 = 0;
  }

  v99 = v67;
  v119 = v48;
  (v48)(v35, enum case for WorkoutPropertyDimensionsField.locationType(_:), v32);
  v68 = sub_56778(v35, v49);
  v51(v35, v32);
  if (v68 && (sub_5B1CC(7), (v69 = HDSQLiteColumnAsString()) != 0))
  {
    v70 = v69;
    sub_755A8();

    v71 = v120;
    sub_74F08();
  }

  else
  {
    v72 = sub_74F18();
    v71 = v120;
    (*(*(v72 - 8) + 56))(v120, 1, 1, v72);
  }

  v98 = !v66;
  (v119)(v35, enum case for WorkoutPropertyDimensionsField.sourceIdentifier(_:), v32);
  v73 = sub_56778(v35, v121);

  v51(v35, v32);
  if (v73)
  {
    sub_5B1CC(8);
    v74 = HDSQLiteColumnAsString();
    v75 = v117;
    v76 = v125;
    v77 = v123;
    v78 = v71;
    if (v74)
    {
      v79 = v74;
      sub_755A8();
    }

    v80 = v124;
  }

  else
  {
    v78 = v71;
    v75 = v117;
    v80 = v124;
    v76 = v125;
    v77 = v123;
  }

  sub_FCE0(v77, v112, &qword_8F298, &qword_7A138);
  sub_FCE0(v80, v113, &qword_8F290, &qword_7A130);
  sub_FCE0(v76, v100, &qword_8FBC0, &unk_7A968);
  sub_FCE0(v78, v114, &qword_8FC60, &qword_7A9D8);
  sub_751F8();
  v81 = v115;
  sub_74CB8();
  v82 = v116;
  sub_74CB8();
  sub_6C294(&qword_8F2A0, &type metadata accessor for CacheIndex, &protocol conformance descriptor for CacheIndex);
  result = sub_75568();
  if (result)
  {
    v85 = v106;
    v84 = v107;
    v86 = *(v107 + 32);
    v86(v106, v81, v75);
    v87 = v97;
    v86((v85 + *(v97 + 48)), v82, v75);
    v88 = v109;
    sub_FCE0(v85, v109, &qword_8F288, &qword_7A128);
    v89 = *(v87 + 48);
    v90 = v104;
    v86(v104, v88, v75);
    v91 = *(v84 + 8);
    v91(v88 + v89, v75);
    sub_14C60(v85, v88);
    v86(&v90[*(v102 + 36)], (v88 + *(v87 + 48)), v75);
    v91(v88, v75);
    v92 = v105;
    v93 = v118;
    v94 = v108;
    (*(v105 + 16))(v103, v118, v108);
    sub_75048();
    sub_6C294(&qword_8F8C0, &type metadata accessor for WorkoutPropertyRecord, &protocol conformance descriptor for WorkoutPropertyRecord);
    v60 = v122;
    sub_75078();
    (*(v92 + 8))(v93, v94);
    sub_3D48(v120, &qword_8FC60, &qword_7A9D8);
    sub_3D48(v125, &qword_8FBC0, &unk_7A968);
    sub_3D48(v124, &qword_8F290, &qword_7A130);
    sub_3D48(v123, &qword_8F298, &qword_7A138);
    v64 = 0;
LABEL_34:
    v95 = sub_38F8(&qword_8EFE0, &qword_79F30);
    return (*(*(v95 - 8) + 56))(v60, v64, 1, v95);
  }

  __break(1u);
  return result;
}

uint64_t sub_6BCAC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a3;
  v4 = sub_754B8();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75268();
  __chkstk_darwin(v6 - 8);
  v35 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_74CA8();
  v33 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v34 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v39 = &v33 - v11;
  v12 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v13 = __chkstk_darwin(v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v33 - v16;
  v18 = sub_38F8(&qword_8F0B8, &unk_79F60);
  __chkstk_darwin(v18 - 8);
  v20 = &v33 - v19;
  v21 = sub_38F8(&qword_8EFE0, &qword_79F30);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v33 - v23;
  sub_6ADA8(a2, v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_3D48(v20, &qword_8F0B8, &unk_79F60);
    v28 = 1;
    v29 = v40;
  }

  else
  {
    (*(v22 + 32))(v24, v20, v21);
    v25 = sub_75098();
    v27 = v26;
    sub_75298();
    sub_FB28(v25, v27);
    sub_75088();
    v32 = *(v33 + 16);
    v32(v39, v17, v8);
    sub_3D48(v17, &qword_8F000, &qword_7A5D0);
    sub_75088();
    v32(v34, &v15[*(v12 + 36)], v8);
    sub_3D48(v15, &qword_8F000, &qword_7A5D0);
    sub_75058();
    sub_5978(v42, v41);
    v29 = v40;
    sub_75038();
    sub_3940(v42);
    (*(v22 + 8))(v24, v21);
    v28 = 0;
  }

  v30 = sub_75048();
  return (*(*(v30 - 8) + 56))(v29, v28, 1, v30);
}

uint64_t sub_6C294(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_6C2DC(sqlite3_stmt *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return v3;
  }

  v6 = a3 + 32;
  v7 = a2 ^ 0x7FFFFFFF;
  while (*(v6 + 24))
  {
    sub_5978(v6, v10);
    if (!*(&v11 + 1))
    {
      goto LABEL_8;
    }

LABEL_5:
    sub_6C95C(v10, v13);
    sub_43198(v13, v13[3]);
    sub_75658();
    sqlite3_bind_int64(a1, v3, v10[0]);
    result = sub_3940(v13);
    if (!v7)
    {
      goto LABEL_11;
    }

LABEL_9:
    v3 = (v3 + 1);
    --v7;
    v6 += 40;
    if (!--v4)
    {
      return v3;
    }
  }

  v9 = *(v6 + 16);
  *v10 = *v6;
  v11 = v9;
  v12 = *(v6 + 32);
  if (*(&v9 + 1))
  {
    goto LABEL_5;
  }

LABEL_8:
  result = sqlite3_bind_null(a1, v3);
  if (v7)
  {
    goto LABEL_9;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_6C3E0(sqlite3_stmt *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return v3;
  }

  v6 = a2 ^ 0x7FFFFFFF;
  v7 = (a3 + 40);
  while (!*v7)
  {
    result = sqlite3_bind_null(a1, v3);
    if (!v6)
    {
      goto LABEL_11;
    }

LABEL_9:
    v7 += 2;
    v3 = (v3 + 1);
    --v6;
    if (!--v4)
    {
      return v3;
    }
  }

  v8 = qword_8E9E0;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_90000;
  v10 = sub_755C8();

  sqlite3_bind_text(a1, v3, (v10 + 32), -1, v9);

  if (v6)
  {
    goto LABEL_9;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_6C4F0(sqlite3_stmt *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return v3;
  }

  v6 = a3 + 32;
  v7 = a2 ^ 0x7FFFFFFF;
  while (*(v6 + 24))
  {
    sub_5978(v6, &v12);
    if (*(&v13 + 1))
    {
      goto LABEL_5;
    }

LABEL_10:
    result = sqlite3_bind_null(a1, v3);
    if (!v7)
    {
      goto LABEL_13;
    }

LABEL_11:
    v3 = (v3 + 1);
    --v7;
    v6 += 40;
    if (!--v4)
    {
      return v3;
    }
  }

  v11 = *(v6 + 16);
  v12 = *v6;
  v13 = v11;
  v14 = *(v6 + 32);
  if (!*(&v11 + 1))
  {
    goto LABEL_10;
  }

LABEL_5:
  sub_6C95C(&v12, v15);
  sub_43198(v15, v15[3]);
  sub_75658();
  if (qword_8E9E0 != -1)
  {
    swift_once();
  }

  v8 = qword_90000;
  v9 = sub_755C8();

  sqlite3_bind_text(a1, v3, (v9 + 32), -1, v8);

  result = sub_3940(v15);
  if (v7)
  {
    goto LABEL_11;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_6C668(sqlite3_stmt *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return v3;
  }

  v6 = (a3 + 32);
  for (i = a2 ^ 0x7FFFFFFF; ; --i)
  {
    v9 = *v6++;
    v8 = v9;
    result = v9 == 2 ? sqlite3_bind_null(a1, v3) : sqlite3_bind_int64(a1, v3, v8 & 1);
    if (!i)
    {
      break;
    }

    v3 = (v3 + 1);
    if (!--v4)
    {
      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_6C6F4(sqlite3_stmt *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return v3;
  }

  v6 = (a3 + 32);
  for (i = a2 ^ 0x7FFFFFFF; ; --i)
  {
    v9 = *v6++;
    v8 = v9;
    if (v9 && *(v8 + 16))
    {

      sub_38F8(&qword_8F280, &unk_7ABA0);
      sub_1D80C();
      sub_75538();

      if (qword_8E9E0 != -1)
      {
        swift_once();
      }

      v10 = qword_90000;
      v11 = sub_755C8();

      sqlite3_bind_text(a1, v3, (v11 + 32), -1, v10);
    }

    else
    {
      result = sqlite3_bind_null(a1, v3);
    }

    if (!i)
    {
      break;
    }

    v3 = (v3 + 1);
    if (!--v4)
    {
      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_6C850(sqlite3_stmt *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return v3;
  }

  v6 = a3 + 32;
  v7 = a2 ^ 0x7FFFFFFF;
  while (*(v6 + 24))
  {
    sub_5978(v6, v10);
    if (*(&v11 + 1))
    {
      goto LABEL_5;
    }

LABEL_9:
    result = sqlite3_bind_null(a1, v3);
    if (!v7)
    {
      goto LABEL_12;
    }

LABEL_10:
    v3 = (v3 + 1);
    --v7;
    v6 += 40;
    if (!--v4)
    {
      return v3;
    }
  }

  v9 = *(v6 + 16);
  *v10 = *v6;
  v11 = v9;
  v12 = *(v6 + 32);
  if (!*(&v9 + 1))
  {
    goto LABEL_9;
  }

LABEL_5:
  sub_6C95C(v10, v13);
  sub_43198(v13, v13[3]);
  result = sub_75658();
  if (v10[0] < 0)
  {
    goto LABEL_13;
  }

  sqlite3_bind_int64(a1, v3, v10[0]);
  result = sub_3940(v13);
  if (v7)
  {
    goto LABEL_10;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_6C95C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_6C974(uint64_t a1)
{
  result = sub_6DF6C(&unk_8F7A0, type metadata accessor for RingsPropertyRecordEntity, &unk_7A460);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_6C9CC()
{
  v0 = sub_74DD8();
  sub_19BBC(v0, qword_90060);
  v1 = sub_19C20(v0, qword_90060);
  v2 = enum case for RingsPropertyKind.totalCount(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_6CA54(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v41 = a4;
  v7 = sub_74CA8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = sub_754B8();
  v42 = *(v10 - 8);
  v43 = v10;
  v11 = __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v39 - v14;
  v16 = [a1 protectedDatabase];
  if (v16)
  {
    v17 = v16;
    v39 = a2;
    v40 = v13;
    aBlock = 0;
    v45 = 0xE000000000000000;
    sub_75908(119);
    v51._object = 0x8000000000079880;
    v51._countAndFlagsBits = 0xD000000000000075;
    sub_75608(v51);
    v50 = sub_74C98();
    v52._countAndFlagsBits = sub_75A38();
    sub_75608(v52);

    v18 = sub_75598();

    v48 = nullsub_1;
    v49 = 0;
    aBlock = _NSConcreteStackBlock;
    v45 = 1107296256;
    v46 = sub_644E0;
    v47 = &unk_89470;
    v19 = _Block_copy(&aBlock);

    (*(v8 + 16))(&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v7);
    v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v21 = swift_allocObject();
    (*(v8 + 32))(v21 + v20, &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    *(v21 + ((v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v41;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_6DE84;
    *(v22 + 24) = v21;
    v48 = sub_1B6F8;
    v49 = v22;
    aBlock = _NSConcreteStackBlock;
    v45 = 1107296256;
    v46 = sub_4F494;
    v47 = &unk_894E8;
    v23 = _Block_copy(&aBlock);

    aBlock = 0;
    v24 = [v17 executeSQL:v18 error:&aBlock bindingHandler:v19 enumerationHandler:v23];
    _Block_release(v23);
    _Block_release(v19);

    if (v24)
    {
      v25 = aBlock;

      return 1;
    }

    v31 = aBlock;
    sub_74898();

    swift_willThrow();
    v32 = v40;
    sub_75378();
    swift_errorRetain();
    v33 = sub_754A8();
    v34 = sub_75718();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      swift_errorRetain();
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 4) = v37;
      *v36 = v37;
      _os_log_impl(&dword_0, v33, v34, "Failed to list all cache indexes %@", v35, 0xCu);
      sub_3D48(v36, &unk_8EB30, &unk_7A270);

      v32 = v40;
    }

    (*(v42 + 8))(v32, v43);
    v38 = v39;
    if (v39)
    {
      *v38 = sub_74888();
    }
  }

  else
  {
    sub_75378();
    v27 = sub_754A8();
    v28 = sub_75718();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_0, v27, v28, "Failed to list cache indexes: no protected database", v29, 2u);
    }

    (*(v42 + 8))(v15, v43);
    if (a2)
    {
      sub_19A60();
      swift_allocError();
      *v30 = 0;
      *a2 = sub_74888();
    }
  }

  return 0;
}

uint64_t sub_6D074(uint64_t a1, char *a2, char *a3, void (*a4)(char *, char *, uint64_t))
{
  v60 = a4;
  v62 = a3;
  v64 = a2;
  v61 = sub_38F8(&qword_8F288, &qword_7A128);
  v4 = __chkstk_darwin(v61);
  v63 = (&v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v7 = &v54 - v6;
  v8 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v9 = __chkstk_darwin(v8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v54 - v13;
  __chkstk_darwin(v12);
  v16 = &v54 - v15;
  v17 = sub_74CA8();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v54 - v22;
  HDSQLiteColumnAsInt64();
  sub_74CB8();
  v65 = v23;
  sub_74C58();
  v64 = v7;
  v55 = 0;
  v56 = v11;
  v59 = v14;
  v57 = v8;
  v24 = *(v8 + 36);
  sub_6DF6C(&qword_8F2A0, &type metadata accessor for CacheIndex, &protocol conformance descriptor for CacheIndex);
  v25 = v62;
  v26 = sub_75558();
  v58 = v18;
  v28 = v18 + 16;
  v27 = *(v18 + 16);
  if (v26)
  {
    v29 = v21;
    v30 = v25;
  }

  else
  {
    v30 = &v16[v24];
    v29 = v21;
  }

  v27(v29, v30, v17);
  v31 = v61;
  v32 = v64;
  v33 = sub_75568();
  v34 = v63;
  if ((v33 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v64 = v16;
  v27(v32, v16, v17);
  v35 = v58;
  v36 = *(v58 + 32);
  v36(v32 + *(v31 + 48), v21, v17);
  sub_FCE0(v32, v34, &qword_8F288, &qword_7A128);
  v37 = *(v31 + 48);
  v28 = v59;
  v36(v59, v34, v17);
  v38 = *(v35 + 8);
  LOBYTE(v21) = v38;
  v38(v34 + v37, v17);
  sub_1B748(v32, v34, &qword_8F288, &qword_7A128);
  v36(v28 + *(v57 + 36), (v34 + *(v31 + 48)), v17);
  v63 = v38;
  v38(v34, v17);
  v27 = v60;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v66 = *v27;
  v40 = v66;
  *v27 = 0x8000000000000000;
  v31 = sub_42788(v28);
  v42 = v40[2];
  v43 = (v41 & 1) == 0;
  v44 = v42 + v43;
  if (__OFADD__(v42, v43))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  LOBYTE(v21) = v41;
  if (v40[3] >= v44)
  {
    v32 = v64;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    sub_42AC4(v44, isUniquelyReferenced_nonNull_native);
    v40 = v66;
    v45 = sub_42788(v28);
    v32 = v64;
    if ((v21 & 1) != (v46 & 1))
    {
      result = sub_75A98();
      __break(1u);
      return result;
    }

    v31 = v45;
  }

  while (1)
  {
    v47 = v56;
    *v27 = v40;

    v48 = *v27;
    if ((v21 & 1) == 0)
    {
      sub_FCE0(v28, v47, &qword_8F000, &qword_7A5D0);
      sub_6D61C(v31, v47, 0, v48);
    }

    v49 = v48[7];
    v50 = *(v49 + 8 * v31);
    v51 = __OFADD__(v50, 1);
    v52 = v50 + 1;
    if (!v51)
    {
      break;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    sub_42874();
    v40 = v66;
  }

  *(v49 + 8 * v31) = v52;
  sub_3D48(v28, &qword_8F000, &qword_7A5D0);
  sub_3D48(v32, &qword_8F000, &qword_7A5D0);
  v63(v65, v17);
  return v55 == 0;
}

uint64_t sub_6D61C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_38F8(&qword_8F000, &qword_7A5D0);
  result = sub_1B748(a2, v8 + *(*(v9 - 8) + 72) * a1, &qword_8F000, &qword_7A5D0);
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

void *sub_6D6E0(uint64_t a1, void *a2, uint64_t a3)
{
  v60 = sub_38F8(&qword_8F3D8, &qword_7A208);
  v7 = __chkstk_darwin(v60);
  v59 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v58 = v52 - v10;
  __chkstk_darwin(v9);
  v57 = v52 - v11;
  v12 = type metadata accessor for DatabaseChecksum(0);
  v55 = *(v12 - 8);
  v56 = v12;
  __chkstk_darwin(v12);
  v61 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_74CA8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v66 = &_swiftEmptyDictionarySingleton;
  v17 = [a2 database];
  (*(v15 + 16))(v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v14);
  v18 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v19 = swift_allocObject();
  (*(v15 + 32))(v19 + v18, v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  *(v19 + ((v16 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = &v66;
  v20 = swift_allocObject();
  v20[2] = sub_6DDC0;
  v20[3] = v19;
  aBlock[4] = sub_FC94;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2BB8;
  aBlock[3] = &unk_89448;
  v21 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v22 = [v17 performTransactionWithContext:a3 error:aBlock block:v21 inaccessibilityHandler:0];
  _Block_release(v21);

  v23 = aBlock[0];
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    goto LABEL_30;
  }

  if (!v22)
  {
    sub_74898();

    swift_willThrow();

    return v23;
  }

  v24 = v66;
  v25 = v66[2];
  v23 = _swiftEmptyArrayStorage;
  if (!v25)
  {
    goto LABEL_23;
  }

  v52[1] = v19;
  v52[2] = v3;
  aBlock[0] = _swiftEmptyArrayStorage;

  sub_67DFC(0, v25, 0);
  v23 = aBlock[0];
  v64 = v24 + 8;
  v26 = sub_75868();
  v27 = 0;
  v53 = v24 + 9;
  v54 = v25;
  do
  {
    if (v26 < 0 || v26 >= 1 << *(v24 + 32))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }

    v29 = v26 >> 6;
    if ((v64[v26 >> 6] & (1 << v26)) == 0)
    {
      goto LABEL_26;
    }

    v30 = *(v24 + 9);
    v62 = v27;
    v63 = v30;
    v31 = v24[6];
    v32 = sub_38F8(&qword_8F000, &qword_7A5D0);
    v33 = v57;
    sub_FCE0(v31 + *(*(v32 - 8) + 72) * v26, v57, &qword_8F000, &qword_7A5D0);
    v34 = *(v24[7] + 8 * v26);
    v35 = v33;
    v36 = v58;
    sub_1B748(v35, v58, &qword_8F000, &qword_7A5D0);
    *(v36 + *(v60 + 48)) = v34;
    v37 = v36;
    v38 = v59;
    sub_1B748(v37, v59, &qword_8F3D8, &qword_7A208);
    v39 = v38;
    v40 = v61;
    sub_1B748(v39, v61, &qword_8F000, &qword_7A5D0);
    v41 = v40;
    *(v40 + *(v56 + 20)) = v34;
    aBlock[0] = v23;
    v43 = v23[2];
    v42 = v23[3];
    if (v43 >= v42 >> 1)
    {
      sub_67DFC((v42 > 1), v43 + 1, 1);
      v41 = v61;
      v23 = aBlock[0];
    }

    v23[2] = v43 + 1;
    sub_1B534(v41, v23 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v43);
    v28 = 1 << *(v24 + 32);
    if (v26 >= v28)
    {
      goto LABEL_27;
    }

    v44 = v64[v29];
    if ((v44 & (1 << v26)) == 0)
    {
      goto LABEL_28;
    }

    if (v63 != *(v24 + 9))
    {
      goto LABEL_29;
    }

    v45 = v44 & (-2 << (v26 & 0x3F));
    if (v45)
    {
      v28 = __clz(__rbit64(v45)) | v26 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v46 = v29 << 6;
      v47 = v29 + 1;
      v48 = &v53[v29];
      while (v47 < (v28 + 63) >> 6)
      {
        v50 = *v48++;
        v49 = v50;
        v46 += 64;
        ++v47;
        if (v50)
        {
          sub_1B598(v26, v63, 0);
          v28 = __clz(__rbit64(v49)) + v46;
          goto LABEL_6;
        }
      }

      sub_1B598(v26, v63, 0);
    }

LABEL_6:
    v27 = v62 + 1;
    v26 = v28;
  }

  while (v62 + 1 != v54);

LABEL_23:

  return v23;
}

uint64_t sub_6DDD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_6DDF0()
{
  v1 = sub_74CA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_6DE9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v6 = *(sub_74CA8() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a3(a1, a2, v3 + v7, v8);
}

uint64_t sub_6DF6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_6DFD0(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___FitnessPlusEntityWrapper_serializedEntity];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, "init");
}

uint64_t sub_6E030(uint64_t a1)
{
  v1 = a1;
  v2 = sub_6F270();
  v3 = sub_6E0D4(v1);
  v5 = v4;
  v6 = v2[2];
  if (v6)
  {
    v7 = v3;
    v8 = 0;
    v9 = v2 + 5;
    while (1)
    {
      v10 = *(v9 - 1) == v7 && *v9 == v5;
      if (v10 || (sub_75A68() & 1) != 0)
      {
        break;
      }

      ++v8;
      v9 += 2;
      if (v6 == v8)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v8 = -1;
  }

  return v8;
}

uint64_t sub_6E0D4(char a1)
{
  result = 0x4449574F52;
  switch(a1)
  {
    case 1:
      result = 0x6361437472617473;
      break;
    case 2:
      result = 0x6568636143646E65;
      break;
    case 3:
      result = 0x59664F68746E6F6DLL;
      break;
    case 4:
      result = 0x656557664F796164;
      break;
    case 5:
      result = 0x6144664F72756F68;
      break;
    case 6:
      v3 = 0x696C61646F6DLL;
      goto LABEL_15;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      v3 = 0x7265706F7270;
LABEL_15:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7974000000000000;
      break;
    case 9:
      result = 0x79747265706F7270;
      break;
    case 10:
      result = 0x6E6F6973726576;
      break;
    case 11:
      result = 0x4164657461657263;
      break;
    case 12:
      result = 0x766F7250636E7973;
      break;
    case 13:
      result = 0x6E656449636E7973;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_6E2D0(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_6E0D4(*a1);
  v5 = v4;
  if (v3 == sub_6E0D4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_75A68();
  }

  return v8 & 1;
}

Swift::Int sub_6E358()
{
  v1 = *v0;
  sub_75AE8();
  sub_6E0D4(v1);
  sub_755E8();

  return sub_75B08();
}

uint64_t sub_6E3BC(uint64_t a1)
{
  sub_6E0D4(*v1);
  sub_755E8();
}

Swift::Int sub_6E410(uint64_t a1)
{
  v2 = *v1;
  sub_75AE8();
  sub_6E0D4(v2);
  sub_755E8();

  return sub_75B08();
}

unint64_t sub_6E470@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_6F930(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_6E4A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_6E0D4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static FitnessPlusPropertyRecordEntity.indices(with:)()
{
  sub_38F8(&qword_8F180, &qword_79D40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_79FD0;
  v1 = objc_allocWithZone(HDSQLiteEntityIndex);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = sub_75598();
  isa = sub_75678().super.isa;
  v5 = [v1 initWithEntity:ObjCClassFromMetadata name:v3 columns:isa];

  *(v0 + 32) = v5;
  return v0;
}

void sub_6E99C()
{
  sub_38F8(&qword_8F180, &qword_79D40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_7ADE0;
  v1 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v2 = sub_75598();
  v3 = sub_75598();
  v4 = [v1 initWithName:v2 columnType:v3 keyPathType:3];

  *(v0 + 32) = v4;
  v5 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v6 = sub_75598();
  v7 = sub_75598();
  v8 = [v5 initWithName:v6 columnType:v7 keyPathType:3];

  *(v0 + 40) = v8;
  v9 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v10 = sub_75598();
  v11 = sub_75598();
  v12 = [v9 initWithName:v10 columnType:v11 keyPathType:3];

  *(v0 + 48) = v12;
  v13 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v14 = sub_75598();
  v15 = sub_75598();
  v16 = [v13 initWithName:v14 columnType:v15 keyPathType:4];

  *(v0 + 56) = v16;
  v17 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v18 = sub_75598();
  v19 = sub_75598();
  v20 = [v17 initWithName:v18 columnType:v19 keyPathType:4];

  *(v0 + 64) = v20;
  v21 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v22 = sub_75598();
  v23 = sub_75598();
  v24 = [v21 initWithName:v22 columnType:v23 keyPathType:4];

  *(v0 + 72) = v24;
  v25 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v26 = sub_75598();
  v27 = sub_75598();
  v28 = [v25 initWithName:v26 columnType:v27 keyPathType:4];

  *(v0 + 80) = v28;
  v29 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v30 = sub_75598();
  v31 = sub_75598();
  v32 = [v29 initWithName:v30 columnType:v31 keyPathType:4];

  *(v0 + 88) = v32;
  v33 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v34 = sub_75598();
  v35 = sub_75598();
  v36 = [v33 initWithName:v34 columnType:v35 keyPathType:4];

  *(v0 + 96) = v36;
  v37 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v38 = sub_75598();
  v39 = sub_75598();
  v40 = [v37 initWithName:v38 columnType:v39 keyPathType:4];

  *(v0 + 104) = v40;
  v41 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v42 = sub_75598();
  v43 = sub_75598();
  v44 = [v41 initWithName:v42 columnType:v43 keyPathType:3];

  *(v0 + 112) = v44;
  v45 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v46 = sub_75598();
  v47 = sub_75598();
  v48 = [v45 initWithName:v46 columnType:v47 keyPathType:1];

  *(v0 + 120) = v48;
  v49 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v50 = sub_75598();
  v51 = sub_75598();
  v52 = [v49 initWithName:v50 columnType:v51 keyPathType:3];

  *(v0 + 128) = v52;
  v53 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v54 = sub_75598();
  v55 = sub_75598();
  v56 = [v53 initWithName:v54 columnType:v55 keyPathType:3];

  *(v0 + 136) = v56;
  qword_90078 = v0;
}

id FitnessPlusPropertyRecordEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for FitnessPlusPropertyRecordEntity();
  return objc_msgSendSuper2(&v4, "initWithPersistentID:", a1);
}

id FitnessPlusPropertyRecordEntity.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FitnessPlusPropertyRecordEntity();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_6F234(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void *sub_6F270()
{
  sub_67C58(0, 13, 0);
  v0 = 0;
  result = _swiftEmptyArrayStorage;
  do
  {
    v2 = 0xE500000000000000;
    v3 = 0x4449574F52;
    switch(*(&off_85808 + v0 + 32))
    {
      case 1:
        v3 = 0x6361437472617473;
        v2 = 0xEF7865646E496568;
        break;
      case 2:
        v3 = 0x6568636143646E65;
        v2 = 0xED00007865646E49;
        break;
      case 3:
        v3 = 0x59664F68746E6F6DLL;
        v2 = 0xEB00000000726165;
        break;
      case 4:
        v3 = 0x656557664F796164;
        v2 = 0xE90000000000006BLL;
        break;
      case 5:
        v2 = 0xE900000000000079;
        v3 = 0x6144664F72756F68;
        break;
      case 6:
        v3 = 0x7974696C61646F6DLL;
        goto LABEL_16;
      case 7:
        v3 = 0xD000000000000012;
        v2 = 0x8000000000077410;
        break;
      case 8:
        v3 = 0x79747265706F7270;
LABEL_16:
        v2 = 0xEC000000646E694BLL;
        break;
      case 9:
        v3 = 0x79747265706F7270;
        v2 = 0xEC00000061746144;
        break;
      case 0xA:
        v2 = 0xE700000000000000;
        v3 = 0x6E6F6973726576;
        break;
      case 0xB:
        v2 = 0xE900000000000074;
        v3 = 0x4164657461657263;
        break;
      case 0xC:
        v3 = 0x766F7250636E7973;
        v2 = 0xEE0065636E616E65;
        break;
      case 0xD:
        v3 = 0x6E656449636E7973;
        v2 = 0xEC00000079746974;
        break;
      default:
        break;
    }

    v7 = result;
    v5 = result[2];
    v4 = result[3];
    if (v5 >= v4 >> 1)
    {
      sub_67C58((v4 > 1), v5 + 1, 1);
      result = v7;
    }

    ++v0;
    result[2] = v5 + 1;
    v6 = &result[2 * v5];
    v6[4] = v3;
    v6[5] = v2;
  }

  while (v0 != 13);
  return result;
}

char *_s25FitnessIntelligencePlugin0A24PlusPropertyRecordEntityC14createTableSQL4withSSSgSo11_HKBehaviorC_tFZ_0()
{
  sub_75908(34);

  v22._countAndFlagsBits = 0xD000000000000034;
  v22._object = 0x8000000000079910;
  sub_75608(v22);
  v23._countAndFlagsBits = 10272;
  v23._object = 0xE200000000000000;
  sub_75608(v23);
  if (qword_8EA18 != -1)
  {
    swift_once();
  }

  v0 = qword_90078;
  if (qword_90078 >> 62)
  {
    v1 = sub_759D8();
  }

  else
  {
    v1 = *(&dword_10 + (qword_90078 & 0xFFFFFFFFFFFFFF8));
  }

  if (!v1)
  {
    goto LABEL_14;
  }

  result = sub_67C58(0, v1 & ~(v1 >> 63), 0);
  if ((v1 & 0x8000000000000000) == 0)
  {
    v3 = 0;
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v4 = sub_75928();
      }

      else
      {
        v4 = *(v0 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = [v4 name];
      v7 = sub_755A8();
      v9 = v8;

      v20 = v7;
      v21 = v9;
      v24._countAndFlagsBits = 32;
      v24._object = 0xE100000000000000;
      sub_75608(v24);
      v10 = [v5 columnType];
      v11 = sub_755A8();
      v13 = v12;

      v25._countAndFlagsBits = v11;
      v25._object = v13;
      sub_75608(v25);

      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (v15 >= v14 >> 1)
      {
        sub_67C58((v14 > 1), v15 + 1, 1);
      }

      ++v3;
      _swiftEmptyArrayStorage[2] = v15 + 1;
      v16 = &_swiftEmptyArrayStorage[2 * v15];
      v16[4] = v20;
      v16[5] = v21;
    }

    while (v1 != v3);
LABEL_14:
    sub_38F8(&qword_8F280, &unk_7ABA0);
    sub_7718(&qword_8FBA0, &qword_8F280, &unk_7ABA0, &protocol conformance descriptor for [A]);
    v17 = sub_75538();
    v19 = v18;

    v26._countAndFlagsBits = v17;
    v26._object = v19;
    sub_75608(v26);

    v27._countAndFlagsBits = 41;
    v27._object = 0xE100000000000000;
    sub_75608(v27);
    return 0xD00000000000001BLL;
  }

  __break(1u);
  return result;
}

unint64_t sub_6F930(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_85EC8;
  v6._object = a2;
  v4 = sub_75A18(v3, v6);

  if (v4 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v4;
  }
}

uint64_t *sub_6F97C(uint64_t *a1)
{
  if (qword_8EA18 != -1)
  {
    v1 = a1;
    swift_once();
    a1 = v1;
  }

  v2 = qword_90078;
  v3 = qword_90078 >> 62;
  if (qword_90078 >> 62)
  {
    if (qword_90078 < 0)
    {
      v1 = qword_90078;
    }

    else
    {
      v1 = (qword_90078 & 0xFFFFFFFFFFFFFF8);
    }

    *a1 = sub_759D8();
    v4 = sub_759D8();
  }

  else
  {
    v4 = *(&dword_10 + (qword_90078 & 0xFFFFFFFFFFFFFF8));
    *a1 = v4;
  }

  if ((v4 - 0x1000000000000000) >> 61 != 7)
  {
    __break(1u);
    goto LABEL_15;
  }

  v1 = swift_slowAlloc();
  if (v3)
  {
    sub_759D8();
    v5 = sub_759D8();

    if (!v5)
    {
      goto LABEL_9;
    }

LABEL_15:
    sub_3AD4(v2);

    goto LABEL_9;
  }

LABEL_9:
  sub_7688(0, &qword_8FB90, HDSQLiteEntityColumnDefinitionObject_ptr);
  swift_arrayInitWithCopy();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t getEnumTagSinglePayload for FitnessPlusPropertyRecordEntity.Keys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FitnessPlusPropertyRecordEntity.Keys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_6FCD4()
{
  result = qword_8FFE0;
  if (!qword_8FFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8FFE0);
  }

  return result;
}

unint64_t sub_6FD28(uint64_t a1)
{
  *(a1 + 8) = sub_6FD58();
  result = sub_6FDAC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_6FD58()
{
  result = qword_8FFE8;
  if (!qword_8FFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8FFE8);
  }

  return result;
}

unint64_t sub_6FDAC()
{
  result = qword_8FFF0;
  if (!qword_8FFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8FFF0);
  }

  return result;
}

unint64_t sub_6FE00(uint64_t a1)
{
  result = sub_5A144();
  *(a1 + 8) = result;
  return result;
}

void *sub_6FE28(uint64_t a1, void *a2)
{
  v37 = a2;
  v3 = sub_749B8();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v34 = v6;
  v35 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = _swiftEmptyArrayStorage;
  v40 = v5;
  v7 = sub_5914(aBlock);
  v33 = *(v4 + 16);
  v33(v7, a1, v3);
  v8 = sub_75598();
  v9 = v40;
  if (v40)
  {
    v10 = sub_43198(aBlock, v40);
    ObjCClassFromMetadata = &v31;
    v11 = a1;
    v12 = *(v9 - 1);
    __chkstk_darwin(v10);
    v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v14);
    v15 = sub_75A58();
    (*(v12 + 8))(v14, v9);
    a1 = v11;
    sub_3940(aBlock);
  }

  else
  {
    v15 = 0;
  }

  v16 = [objc_opt_self() predicateWithProperty:v8 equalToValue:v15];

  swift_unknownObjectRelease();
  v17 = v36;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = v37;
  v19 = [v37 database];
  v20 = v35;
  v33(v35, a1, v3);
  v21 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = v17;
  *(v22 + 3) = v16;
  *(v22 + 4) = v18;
  *(v22 + 5) = &v38;
  (*(v4 + 32))(&v22[v21], v20, v3);
  v23 = swift_allocObject();
  *(v23 + 16) = sub_744BC;
  *(v23 + 24) = v22;
  v41 = sub_1008C;
  v42 = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2BB8;
  v40 = &unk_89848;
  v24 = _Block_copy(aBlock);
  v25 = v16;
  v26 = v18;

  aBlock[0] = 0;
  v27 = [ObjCClassFromMetadata performReadTransactionWithHealthDatabase:v19 error:aBlock block:v24];
  _Block_release(v24);

  v28 = aBlock[0];
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
  }

  if (v27)
  {

    v29 = v38;
  }

  else
  {
    sub_74898();

    swift_willThrow();
    v29 = v38;
  }

  return v29;
}

id sub_702A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v26 = a1;
  v5 = v4;
  v9 = sub_38F8(&qword_8F3C0, &qword_7A1E0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v13 = &v25 - v12;
  v30 = _swiftEmptyArrayStorage;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = [a4 database];
  sub_183FC(a3, v13);
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = v26;
  *(v17 + 24) = a2;
  sub_185B4(v13, v17 + v14);
  *(v17 + v15) = v5;
  *(v17 + v16) = a4;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = &v30;
  v18 = swift_allocObject();
  v18[2] = sub_746C4;
  v18[3] = v17;
  aBlock[4] = sub_1008C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2BB8;
  aBlock[3] = &unk_89938;
  v19 = _Block_copy(aBlock);

  v20 = a4;

  aBlock[0] = 0;
  v21 = v27;
  v22 = [ObjCClassFromMetadata performReadTransactionWithHealthDatabase:v27 error:aBlock block:v19];
  _Block_release(v19);

  v23 = aBlock[0];
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    __break(1u);
  }

  if (v22)
  {
    v22 = v30;
  }

  else
  {
    sub_74898();

    swift_willThrow();
  }

  return v22;
}

uint64_t sub_705B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = [a3 database];
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = v4;
  v8[4] = a2;
  v8[5] = a3;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_7213C;
  *(v9 + 24) = v8;
  v27 = sub_FC94;
  v28 = v9;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_2BB8;
  v26 = &unk_89668;
  v10 = _Block_copy(&aBlock);

  v11 = a3;

  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = v11;
  v12[4] = a2;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_7361C;
  *(v13 + 24) = v12;
  v27 = sub_11AC4;
  v28 = v13;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_65494;
  v26 = &unk_896E0;
  v14 = _Block_copy(&aBlock);

  v15 = v11;

  aBlock = 0;
  v16 = [ObjCClassFromMetadata performWriteTransactionWithHealthDatabase:v21 error:&aBlock block:v10 inaccessibilityHandler:v14];
  _Block_release(v14);
  _Block_release(v10);

  v17 = aBlock;
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v16)
  {

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  sub_74898();

  swift_willThrow();

  v20 = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

id sub_7092C(uint64_t a1, void *a2, void **a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v77 = a7;
  v78 = a8;
  v76 = a6;
  v79 = a5;
  v74 = a2;
  v10 = sub_754B8();
  v73 = *(v10 - 8);
  __chkstk_darwin(v10);
  v75 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_38F8(&qword_8F3C0, &qword_7A1E0);
  __chkstk_darwin(v12 - 8);
  v14 = &v70 - v13;
  v15 = sub_74848();
  v80 = *(v15 - 8);
  v81 = v15;
  __chkstk_darwin(v15);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = _swiftEmptyArrayStorage;
  v86 = &type metadata for String;
  aBlock = a3;
  v84 = a4;
  v72 = a4;

  v18 = sub_75598();
  v19 = sub_43198(&aBlock, &type metadata for String);
  v20 = *(&type metadata for String - 1);
  __chkstk_darwin(v19);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v22);
  v23 = sub_75A58();
  (*(v20 + 8))(v22, &type metadata for String);
  sub_3940(&aBlock);
  v24 = objc_opt_self();
  v25 = [v24 predicateWithProperty:v18 equalToValue:v23];

  swift_unknownObjectRelease();
  if (!v25)
  {
LABEL_26:
    __break(1u);
  }

  sub_75668();
  if (*(&dword_10 + (v82 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v82 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_756A8();
  }

  sub_756D8();
  sub_183FC(v79, v14);
  v27 = v80;
  v26 = v81;
  v28 = (*(v80 + 48))(v14, 1, v81);
  v71 = a3;
  if (v28 == 1)
  {
    sub_3D48(v14, &qword_8F3C0, &qword_7A1E0);
    goto LABEL_15;
  }

  v79 = v10;
  (*(v27 + 32))(v17, v14, v26);
  sub_38F8(&qword_8F180, &qword_79D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_7AF40;
  v30 = sub_74968();
  v86 = v30;
  sub_5914(&aBlock);
  sub_74838();
  v31 = sub_75598();
  v32 = v86;
  if (v86)
  {
    v33 = sub_43198(&aBlock, v86);
    v34 = *(v32 - 1);
    __chkstk_darwin(v33);
    v36 = &v70 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v34 + 16))(v36);
    v37 = sub_75A58();
    (*(v34 + 8))(v36, v32);
    sub_3940(&aBlock);
  }

  else
  {
    v37 = 0;
  }

  v38 = [v24 predicateWithProperty:v31 greaterThanOrEqualToValue:v37];

  result = swift_unknownObjectRelease();
  if (!v38)
  {
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  *(inited + 32) = v38;
  v86 = v30;
  sub_5914(&aBlock);
  sub_74828();
  v40 = sub_75598();
  v41 = v86;
  v10 = v79;
  if (v86)
  {
    v42 = sub_43198(&aBlock, v86);
    v43 = *(v41 - 1);
    __chkstk_darwin(v42);
    v45 = &v70 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v43 + 16))(v45);
    v46 = sub_75A58();
    (*(v43 + 8))(v45, v41);
    sub_3940(&aBlock);
  }

  else
  {
    v46 = 0;
  }

  v47 = [v24 predicateWithProperty:v40 lessThanOrEqualToValue:v46];

  result = swift_unknownObjectRelease();
  if (!v47)
  {
    goto LABEL_28;
  }

  *(inited + 40) = v47;
  sub_67090(inited);
  (*(v80 + 8))(v17, v81);
LABEL_15:
  sub_5174(v82);

  isa = sub_75678().super.isa;

  v49 = [objc_opt_self() predicateMatchingAllPredicates:isa];

  v50 = sub_1D420();
  sub_462C(v50);

  v51 = sub_75678().super.isa;

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v53 = v49;
  v54 = [v77 database];
  v55 = swift_allocObject();
  *(v55 + 16) = v78;
  v56 = swift_allocObject();
  *(v56 + 16) = sub_74798;
  *(v56 + 24) = v55;
  v87 = sub_747D4;
  v88 = v56;
  aBlock = _NSConcreteStackBlock;
  v84 = 1107296256;
  v85 = sub_71428;
  v86 = &unk_899B0;
  v57 = _Block_copy(&aBlock);

  aBlock = 0;
  v58 = [ObjCClassFromMetadata enumerateProperties:v51 withPredicate:v53 healthDatabase:v54 error:&aBlock enumerationHandler:v57];
  _Block_release(v57);

  v59 = aBlock;
  LOBYTE(v57) = swift_isEscapingClosureAtFileLocation();

  if (v57)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v58)
  {
  }

  else
  {
    sub_74898();

    swift_willThrow();
    v60 = v75;
    sub_75378();
    v61 = v72;

    swift_errorRetain();
    v62 = sub_754A8();
    v63 = sub_75718();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v79 = v10;
      v67 = v66;
      aBlock = v66;
      *v64 = 136315394;
      *(v64 + 4) = sub_31B4(v71, v61, &aBlock);
      *(v64 + 12) = 2112;
      swift_errorRetain();
      v68 = _swift_stdlib_bridgeErrorToNSError();
      *(v64 + 14) = v68;
      *v65 = v68;
      _os_log_impl(&dword_0, v62, v63, "Failed to query inference containers for adapter %s: %@", v64, 0x16u);
      sub_3D48(v65, &unk_8EB30, &unk_7A270);

      sub_3940(v67);

      (*(v73 + 8))(v75, v79);
    }

    else
    {

      (*(v73 + 8))(v60, v10);
    }

    v69 = v74;
    if (v74)
    {
      *v69 = sub_74888();
    }
  }

  return v58;
}

uint64_t sub_71428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  v9 = sub_75688();
  LOBYTE(a5) = v8(a2, v9, a4, a5);

  return a5 & 1;
}

unint64_t sub_714A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v42 = a7;
  v46 = a2;
  v10 = sub_749B8();
  v43 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_754B8();
  v44 = *(v13 - 8);
  v45 = v13;
  __chkstk_darwin(v13);
  v47 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D420();
  sub_462C(v15);

  isa = sub_75678().super.isa;

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [a5 database];
  v19 = swift_allocObject();
  *(v19 + 16) = a6;
  v20 = swift_allocObject();
  v20[2] = sub_74814;
  v20[3] = v19;
  aBlock[4] = sub_74554;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_71428;
  aBlock[3] = &unk_898C0;
  v21 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v22 = [ObjCClassFromMetadata enumerateProperties:isa withPredicate:a4 healthDatabase:v18 error:aBlock enumerationHandler:v21];
  _Block_release(v21);

  v23 = aBlock[0];
  LOBYTE(a4) = swift_isEscapingClosureAtFileLocation();

  if (a4)
  {
    __break(1u);
  }

  if ((v22 & 1) == 0)
  {
    sub_74898();

    swift_willThrow();
    v24 = v47;
    sub_75378();
    v25 = v43;
    (*(v43 + 16))(v12, v42, v10);
    swift_errorRetain();
    v26 = sub_754A8();
    v27 = sub_75718();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      LODWORD(v42) = v22;
      v29 = v10;
      v30 = v28;
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      aBlock[0] = v41;
      *v30 = 136315394;
      sub_743A8(&qword_8FFF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v31 = sub_75A38();
      v33 = v32;
      v34 = v29;
      v22 = v42;
      (*(v25 + 8))(v12, v34);
      v35 = sub_31B4(v31, v33, aBlock);

      *(v30 + 4) = v35;
      *(v30 + 12) = 2112;
      swift_errorRetain();
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 14) = v36;
      v37 = v40;
      *v40 = v36;
      _os_log_impl(&dword_0, v26, v27, "Failed to query inference containers for uuid %s: %@", v30, 0x16u);
      sub_3D48(v37, &unk_8EB30, &unk_7A270);

      sub_3940(v41);

      (*(v44 + 8))(v47, v45);
    }

    else
    {

      (*(v25 + 8))(v12, v10);
      (*(v44 + 8))(v24, v45);
    }

    v38 = v46;
    if (v46)
    {
      *v38 = sub_74888();
    }
  }

  return v22;
}

BOOL sub_71A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char **a5)
{
  v6 = sub_38F8(&unk_8FA00, &qword_7A740);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_74D78();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v23 - v14;
  sub_11AD8(v8);
  v16 = (*(v10 + 48))(v8, 1, v9);
  if (v16 == 1)
  {
    sub_3D48(v8, &unk_8FA00, &qword_7A740);
  }

  else
  {
    v24 = *(v10 + 32);
    v24(v15, v8, v9);
    (*(v10 + 16))(v13, v15, v9);
    v17 = *a5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a5 = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_67844(0, *(v17 + 2) + 1, 1, v17);
      *a5 = v17;
    }

    v20 = *(v17 + 2);
    v19 = *(v17 + 3);
    if (v20 >= v19 >> 1)
    {
      *a5 = sub_67844((v19 > 1), v20 + 1, 1, v17);
    }

    (*(v10 + 8))(v15, v9);
    v21 = *a5;
    *(v21 + 2) = v20 + 1;
    v24(&v21[((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v20], v13, v9);
  }

  return v16 != 1;
}

uint64_t sub_71C9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v32 = a5;
  v33 = a6;
  v27[4] = a2;
  v31 = a1;
  v7 = sub_754B8();
  v27[2] = *(v7 - 8);
  v27[3] = v7;
  v8 = __chkstk_darwin(v7);
  v27[1] = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v27 - v10;
  v12 = sub_74D78();
  __chkstk_darwin(v12);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a3 + 16);
  if (v16)
  {
    v27[0] = v11;
    v18 = *(v13 + 16);
    v17 = v13 + 16;
    v19 = a3 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v29 = (v17 - 8);
    v30 = v18;
    v28 = *(v17 + 56);
    v20 = v33;
    do
    {
      v21 = v17;
      v30(v15, v19, v12);
      v22 = [v20 syncIdentityManager];
      v23 = [v22 currentSyncIdentity];

      v24 = [v23 entity];
      v25 = [v24 persistentID];

      sub_72160(v15, v32, v25, v20, v31);
      (*v29)(v15, v12);
      v19 += v28;
      --v16;
      v17 = v21;
    }

    while (v16);
  }

  sub_72B08(v33);
  return 1;
}

uint64_t sub_720FC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_72148(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_72160(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v88 = a4;
  v91 = a1;
  v8 = sub_749B8();
  v83 = *(v8 - 1);
  __chkstk_darwin(v8);
  v82 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_74D78();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  __chkstk_darwin(v13);
  v90 = &v70 - v14;
  v15 = sub_754B8();
  v84 = *(v15 - 8);
  v85 = v15;
  __chkstk_darwin(v15);
  isa = (&v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = [a5 protectedDatabase];
  if (v17)
  {
    v18 = v17;
    v77 = v12;
    v78 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v79 = v11;
    v80 = a2;
    v81 = a3;
    v76 = v8;
    v93 = v8;
    sub_5914(aBlock);
    sub_74D48();
    v19 = sub_75598();
    v20 = v93;
    if (v93)
    {
      v21 = sub_43198(aBlock, v93);
      v22 = *(v20 - 1);
      __chkstk_darwin(v21);
      v24 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v22 + 16))(v24);
      v25 = sub_75A58();
      (*(v22 + 8))(v24, v20);
      sub_3940(aBlock);
    }

    else
    {
      v25 = 0;
    }

    v27 = v90;
    v28 = [objc_opt_self() predicateWithProperty:v19 equalToValue:v25];

    swift_unknownObjectRelease();
    if (v28)
    {
      sub_743A8(&qword_8F178, &type metadata accessor for InferenceRecord, &protocol conformance descriptor for InferenceRecord);
      v29 = v89;
      v30 = sub_74F98();
      if (v29)
      {
      }

      else
      {
        v33 = v30;
        v90 = v31;
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v35 = v28;
        v36 = [v88 database];
        aBlock[0] = 0;
        v89 = ObjCClassFromMetadata;
        v37 = [ObjCClassFromMetadata deleteEntitiesWithPredicate:v35 healthDatabase:v36 error:aBlock];

        if (v37)
        {
          v88 = v33;
          v38 = aBlock[0];
          v39 = isa;
          sub_75378();
          v40 = v79;
          v87 = *(v79 + 16);
          v87(v27, v91, v10);
          v41 = sub_754A8();
          v73 = sub_75708();
          v42 = os_log_type_enabled(v41, v73);
          v75 = v18;
          v74 = v35;
          if (v42)
          {
            v43 = swift_slowAlloc();
            v70 = v43;
            v72 = swift_slowAlloc();
            aBlock[0] = v72;
            *v43 = 136315138;
            v44 = v27;
            v45 = v82;
            v71 = v41;
            sub_74D48();
            sub_743A8(&qword_8FFF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v46 = v76;
            v47 = sub_75A38();
            v49 = v48;
            (*(v83 + 8))(v45, v46);
            (*(v40 + 8))(v44, v10);
            v50 = sub_31B4(v47, v49, aBlock);

            v51 = v70;
            *(v70 + 1) = v50;
            v52 = v71;
            _os_log_impl(&dword_0, v71, v73, "Inserting record container: %s", v51, 0xCu);
            sub_3940(v72);

            (*(v84 + 8))(isa, v85);
          }

          else
          {

            (*(v40 + 8))(v27, v10);
            (*(v84 + 8))(v39, v85);
          }

          sub_1D420();
          isa = sub_75678().super.isa;

          v55 = v78;
          v87(v78, v91, v10);
          v56 = (*(v40 + 80) + 16) & ~*(v40 + 80);
          v57 = (v77 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
          v58 = (v57 + 23) & 0xFFFFFFFFFFFFFFF8;
          v59 = swift_allocObject();
          (*(v40 + 32))(v59 + v56, v55, v10);
          v60 = (v59 + v57);
          v61 = v88;
          v62 = v90;
          *v60 = v88;
          v60[1] = v62;
          v63 = v81;
          *(v59 + v58) = v80;
          *(v59 + ((v58 + 15) & 0xFFFFFFFFFFFFFFF8)) = v63;
          v64 = swift_allocObject();
          *(v64 + 16) = sub_742F0;
          *(v64 + 24) = v59;
          v94 = sub_2FE7C;
          v95 = v64;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_644E0;
          v93 = &unk_897D0;
          v65 = _Block_copy(aBlock);

          sub_398C(v61, v62);

          aBlock[0] = 0;
          v66 = isa;
          v67 = [v89 insertOrReplaceEntity:1 database:v75 properties:isa error:aBlock bindingHandler:v65];
          _Block_release(v65);

          v68 = aBlock[0];
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if (isEscapingClosureAtFileLocation)
          {
            __break(1u);
          }

          if (v67)
          {
          }

          else
          {
            sub_74898();

            swift_willThrow();
          }

          sub_FB28(v61, v62);
        }

        else
        {
          v53 = v35;
          v54 = aBlock[0];
          sub_74898();

          swift_willThrow();
          sub_FB28(v33, v90);
        }
      }
    }

    else
    {
      sub_19A60();
      swift_allocError();
      *v32 = 1;
      swift_willThrow();
    }
  }

  else
  {
    sub_19A60();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();
  }
}

void sub_72B08(void *a1)
{
  v4 = sub_74968();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v8 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v35 - v9;
  sub_44DAC(&v35 - v9);
  if (!v2)
  {
    v37 = 0;
    v38 = a1;
    v43 = v4;
    v11 = sub_5914(aBlock);
    v40 = v5;
    v41 = v4;
    v12 = *(v5 + 16);
    v12(v11, v10, v4);
    ObjCClassFromMetadata = sub_75598();
    v13 = v43;
    if (v43)
    {
      v14 = sub_43198(aBlock, v43);
      v35 = &v35;
      v36 = v12;
      v15 = *(v13 - 1);
      __chkstk_darwin(v14);
      v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 16))(v17);
      v18 = sub_75A58();
      (*(v15 + 8))(v17, v13);
      v12 = v36;
      sub_3940(aBlock);
    }

    else
    {
      v18 = 0;
    }

    v19 = objc_opt_self();
    v20 = ObjCClassFromMetadata;
    v21 = [v19 predicateWithProperty:ObjCClassFromMetadata lessThanOrEqualToValue:v18];

    swift_unknownObjectRelease();
    if (v21)
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v38 = [v38 database];
      v36 = v21;
      v22 = v41;
      v12(v8, v10, v41);
      v23 = v40;
      v24 = (*(v40 + 80) + 16) & ~*(v40 + 80);
      v25 = (v6 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
      v26 = swift_allocObject();
      (*(v23 + 32))(v26 + v24, v8, v22);
      *(v26 + v25) = v1;
      v27 = v36;
      *(v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8)) = v36;
      v28 = swift_allocObject();
      *(v28 + 16) = sub_74178;
      *(v28 + 24) = v26;
      v44 = sub_1008C;
      v45 = v28;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2BB8;
      v43 = &unk_89758;
      v29 = _Block_copy(aBlock);
      v30 = v27;

      aBlock[0] = 0;
      v31 = v38;
      v32 = [ObjCClassFromMetadata performWriteTransactionWithHealthDatabase:v38 error:aBlock block:v29];
      _Block_release(v29);

      v33 = aBlock[0];
      LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

      if (v29)
      {
        __break(1u);
      }

      if (v32)
      {
        (*(v40 + 8))(v10, v41);
      }

      else
      {
        sub_74898();

        swift_willThrow();
        (*(v40 + 8))(v10, v41);
      }
    }

    else
    {
      sub_19A60();
      swift_allocError();
      *v34 = 1;
      swift_willThrow();
      (*(v40 + 8))(v10, v41);
    }
  }
}

id sub_73028(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v55 = a4;
  v56 = a5;
  v7 = sub_74D78();
  v54 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v49 - v11;
  v13 = sub_754B8();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v52 = v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = v49 - v17;
  sub_75378();

  v19 = sub_754A8();
  v20 = sub_75708();
  v21 = os_log_type_enabled(v19, v20);
  v53 = a2;
  if (v21)
  {
    v22 = v14;
    v23 = swift_slowAlloc();
    *v23 = 134217984;
    *(v23 + 4) = *(a3 + 16);

    _os_log_impl(&dword_0, v19, v20, "Journaling %ld records for insert", v23, 0xCu);
    v14 = v22;
    a2 = v53;
  }

  else
  {
  }

  v25 = *(v14 + 8);
  v24 = v14 + 8;
  v51 = v25;
  v25(v18, v13);
  v26 = [v55 database];
  v27 = v26;
  v28 = *(a3 + 16);
  if (v28)
  {
    v49[0] = v26;
    v49[1] = v24;
    v50 = v13;
    v58 = _swiftEmptyArrayStorage;
    sub_75978();
    v30 = v54 + 16;
    v29 = *(v54 + 16);
    v31 = a3 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
    v54 = *(v54 + 72);
    v55 = v29;
    v32 = (v30 - 8);
    do
    {
      v33 = v55;
      (v55)(v12, v31, v7);
      v33(v10, v12, v7);
      v34 = type metadata accessor for InferenceRecordContainerJournalEntry(0);
      v35 = objc_allocWithZone(v34);
      v33(&v35[OBJC_IVAR____TtC25FitnessIntelligencePlugin36InferenceRecordContainerJournalEntry_record], v10, v7);
      *&v35[OBJC_IVAR____TtC25FitnessIntelligencePlugin36InferenceRecordContainerJournalEntry_provenance] = v56;
      v57.receiver = v35;
      v57.super_class = v34;
      objc_msgSendSuper2(&v57, "init");
      v36 = *v32;
      (*v32)(v10, v7);
      v36(v12, v7);
      sub_75958();
      sub_75988();
      sub_75998();
      sub_75968();
      v31 += v54;
      --v28;
    }

    while (v28);
    a2 = v53;
    v13 = v50;
    v27 = v49[0];
  }

  sub_4E2F8();
  isa = sub_75678().super.isa;

  v58 = 0;
  v38 = [v27 addJournalEntries:isa error:&v58];

  if (v38)
  {
    v39 = v58;
  }

  else
  {
    v40 = v13;
    v41 = v58;
    sub_74898();

    swift_willThrow();
    v42 = v52;
    sub_75378();
    swift_errorRetain();
    v43 = sub_754A8();
    v44 = sub_75718();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138412290;
      swift_errorRetain();
      v47 = _swift_stdlib_bridgeErrorToNSError();
      *(v45 + 4) = v47;
      *v46 = v47;
      _os_log_impl(&dword_0, v43, v44, "Failed to journal records for insert: %@", v45, 0xCu);
      sub_3D48(v46, &unk_8EB30, &unk_7A270);

      v42 = v52;
    }

    v51(v42, v40);
    if (a2)
    {
      *a2 = sub_74888();
    }
  }

  return v38;
}

uint64_t sub_735DC()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_73628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a5;
  v37 = a6;
  v34 = a3;
  v35 = a4;
  v29[1] = a1;
  v6 = sub_753A8();
  v32 = *(v6 - 8);
  v33 = v6;
  __chkstk_darwin(v6);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_74DB8();
  v30 = *(v9 - 8);
  v31 = v9;
  __chkstk_darwin(v9);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[0] = sub_74968();
  v12 = *(v29[0] - 8);
  __chkstk_darwin(v29[0]);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_749B8();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_75598();
  sub_74D48();
  isa = sub_74988().super.isa;
  (*(v16 + 8))(v18, v15);
  HDSQLiteBindUUIDToProperty();

  v21 = sub_75598();
  sub_74D68();
  v22 = sub_74918().super.isa;
  (*(v12 + 8))(v14, v29[0]);
  HDSQLiteBindDateToProperty();

  v23 = sub_75598();
  sub_74D58();
  sub_74DA8();
  (*(v30 + 8))(v11, v31);
  sub_75398();
  (*(v32 + 8))(v8, v33);
  v24 = sub_75598();

  HDSQLiteBindStringToProperty();

  v25 = sub_75598();
  v26 = sub_748A8().super.isa;
  HDSQLiteBindDataToProperty();

  v27 = sub_75598();
  HDSQLiteBindInt64ToProperty();

  v28 = sub_75598();
  HDSQLiteBindInt64ToProperty();
}

uint64_t sub_73A70(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_74968();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v60 = &v55[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v14 = &v55[-v13];
  v15 = sub_754B8();
  v61 = *(v15 - 8);
  v62 = v15;
  v16 = __chkstk_darwin(v15);
  v18 = &v55[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v20 = &v55[-v19];
  v21 = [a1 protectedDatabase];
  v63 = a2;
  if (v21)
  {
    v22 = v21;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v64 = 0;
    if ([ObjCClassFromMetadata deleteEntitiesInDatabase:v22 predicate:a5 error:&v64])
    {
      v24 = v64;

      return 1;
    }

    v35 = v64;
    sub_74898();

    swift_willThrow();
    v36 = v18;
    sub_75378();
    v37 = v10;
    v38 = *(v10 + 16);
    v39 = v60;
    v40 = a3;
    v41 = v9;
    v38(v60, v40, v9);
    swift_errorRetain();
    v42 = sub_754A8();
    v43 = sub_75718();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = v37;
      v45 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v64 = v59;
      *v45 = 136315394;
      sub_743A8(&qword_8F9F8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v56 = v43;
      v46 = sub_75A38();
      v58 = v36;
      v48 = v47;
      (*(v44 + 8))(v39, v41);
      v49 = sub_31B4(v46, v48, &v64);
      v50 = v63;

      *(v45 + 4) = v49;
      *(v45 + 12) = 2112;
      swift_errorRetain();
      v51 = _swift_stdlib_bridgeErrorToNSError();
      *(v45 + 14) = v51;
      v52 = v57;
      *v57 = v51;
      _os_log_impl(&dword_0, v42, v56, "Failed to delete containers after date %s: %@", v45, 0x16u);
      sub_3D48(v52, &unk_8EB30, &unk_7A270);

      sub_3940(v59);

      (*(v61 + 8))(v58, v62);
      if (!v50)
      {
        goto LABEL_14;
      }
    }

    else
    {

      (*(v37 + 8))(v39, v9);
      (*(v61 + 8))(v36, v62);
      v50 = v63;
      if (!v63)
      {
LABEL_14:

        goto LABEL_15;
      }
    }

    *v50 = sub_74888();
    goto LABEL_14;
  }

  sub_75378();
  (*(v10 + 16))(v14, a3, v9);
  v26 = sub_754A8();
  v27 = sub_75718();
  v28 = v10;
  if (os_log_type_enabled(v26, v27))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v64 = v30;
    *v29 = 136315138;
    sub_743A8(&qword_8F9F8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v31 = sub_75A38();
    v33 = v32;
    (*(v28 + 8))(v14, v9);
    v34 = sub_31B4(v31, v33, &v64);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_0, v26, v27, "Failed to clean up containers before date: %s: no protected database", v29, 0xCu);
    sub_3940(v30);
  }

  else
  {

    (*(v10 + 8))(v14, v9);
  }

  (*(v61 + 8))(v20, v62);
  v53 = v63;
  if (!v63)
  {
    return 0;
  }

  sub_19A60();
  swift_allocError();
  *v54 = 0;
  *v53 = sub_74888();
LABEL_15:

  return 0;
}

uint64_t sub_740D4()
{
  v1 = sub_74968();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_74178(void *a1, void *a2)
{
  v5 = *(sub_74968() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_73A70(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_74240()
{
  v1 = sub_74D78();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  sub_FB28(*(v0 + v5), *(v0 + v5 + 8));

  return _swift_deallocObject(v0, ((((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

void sub_742F0(uint64_t a1)
{
  v3 = *(sub_74D78() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v1 + v6);
  v11 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_73628(a1, v1 + v4, v8, v9, v10, v11);
}

uint64_t sub_743A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_743F0()
{
  v1 = sub_749B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

unint64_t sub_744BC(uint64_t a1, void *a2)
{
  v5 = *(sub_749B8() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_714A4(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_74580()
{
  v1 = *(sub_38F8(&qword_8F3C0, &qword_7A1E0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_74848();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v8 + 8, v2 | 7);
}

id sub_746C4(uint64_t a1, void *a2)
{
  v5 = *(sub_38F8(&qword_8F3C0, &qword_7A1E0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = *(v2 + v7);
  v12 = *(v2 + v8);
  v13 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_7092C(a1, a2, v9, v10, v2 + v6, v11, v12, v13);
}