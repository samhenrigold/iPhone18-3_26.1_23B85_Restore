uint64_t sub_100035360()
{
  v1[10] = v0;
  v2 = sub_100001EEC(&qword_1000AEA58, qword_10008D310);
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_10003542C, v0, 0);
}

void *sub_10003542C()
{
  v25 = v0;
  v1 = *(*(v0 + 80) + 112);
  swift_beginAccess();
  v2 = *(v1 + 24);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v0 + 96);
    v5 = sub_10006F300(*(v2 + 16), 0);
    v6 = sub_100036C10(&v24, v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3, v2, &qword_1000AEA58, qword_10008D310);
    v7 = v24;

    result = sub_100023AA8(v7);
    if (v6 != v3)
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  *(v0 + 112) = v5;
  result = sub_100036550();
  *(v0 + 120) = result;
  v9 = result[2];
  *(v0 + 128) = v9;
  if (v9)
  {
    v10 = *(v0 + 96);
    v11 = v5[2];
    *(v0 + 136) = v11;
    *(v0 + 144) = 0;
    if (result[2])
    {
      *(v0 + 152) = result[4];
      v23 = result[5];
      if (v11)
      {
        v12 = *(v0 + 112);
        *(v0 + 72) = _swiftEmptyArrayStorage;
        swift_unknownObjectRetain();
        sub_10006F7AC(0, v11, 0);
        v13 = 0;
        v14 = *(v0 + 72);
        v15 = v12 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
        v16 = *(v10 + 72);
        do
        {
          sub_10000E4A4(v15, *(v0 + 104), &qword_1000AEA58, qword_10008D310);
          swift_dynamicCast();
          *(v0 + 72) = v14;
          v18 = v14[2];
          v17 = v14[3];
          if (v18 >= v17 >> 1)
          {
            sub_10006F7AC((v17 > 1), v18 + 1, 1);
            v14 = *(v0 + 72);
          }

          v19 = *(v0 + 136);
          ++v13;
          v14[2] = v18 + 1;
          sub_100036E80((v0 + 16), &v14[4 * v18 + 4]);
          v15 += v16;
        }

        while (v13 != v19);
      }

      else
      {
        swift_unknownObjectRetain();
        v14 = _swiftEmptyArrayStorage;
      }

      *(v0 + 160) = v14;
      ObjectType = swift_getObjectType();
      v22 = swift_task_alloc();
      *(v0 + 168) = v22;
      *v22 = v0;
      v22[1] = sub_100035750;

      return sub_100057AD8(v14, ObjectType, v23);
    }

LABEL_21:
    __break(1u);
    return result;
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100035750()
{
  v1 = *(*v0 + 80);

  return _swift_task_switch(sub_10003587C, v1, 0);
}

uint64_t sub_10003587C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  result = swift_unknownObjectRelease();
  if (v1 + 1 == v2)
  {

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v5 = *(v0 + 144) + 1;
    *(v0 + 144) = v5;
    v6 = *(v0 + 120);
    if (v5 >= *(v6 + 16))
    {
      __break(1u);
    }

    else
    {
      v7 = *(v0 + 136);
      v8 = v6 + 16 * v5;
      *(v0 + 152) = *(v8 + 32);
      v20 = *(v8 + 40);
      if (v7)
      {
        v9 = *(v0 + 112);
        v10 = *(v0 + 96);
        *(v0 + 72) = _swiftEmptyArrayStorage;
        swift_unknownObjectRetain();
        sub_10006F7AC(0, v7, 0);
        v11 = 0;
        v12 = *(v0 + 72);
        v13 = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
        v14 = *(v10 + 72);
        do
        {
          sub_10000E4A4(v13, *(v0 + 104), &qword_1000AEA58, qword_10008D310);
          swift_dynamicCast();
          *(v0 + 72) = v12;
          v16 = v12[2];
          v15 = v12[3];
          if (v16 >= v15 >> 1)
          {
            sub_10006F7AC((v15 > 1), v16 + 1, 1);
            v12 = *(v0 + 72);
          }

          v17 = *(v0 + 136);
          ++v11;
          v12[2] = v16 + 1;
          sub_100036E80((v0 + 16), &v12[4 * v16 + 4]);
          v13 += v14;
        }

        while (v11 != v17);
      }

      else
      {
        swift_unknownObjectRetain();
        v12 = _swiftEmptyArrayStorage;
      }

      *(v0 + 160) = v12;
      ObjectType = swift_getObjectType();
      v19 = swift_task_alloc();
      *(v0 + 168) = v19;
      *v19 = v0;
      v19[1] = sub_100035750;

      return sub_100057AD8(v12, ObjectType, v20);
    }
  }

  return result;
}

uint64_t sub_100035AF4(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_100001EEC(&qword_1000AEA58, qword_10008D310);
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v5 = sub_10008609C();
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_100035C44, v2, 0);
}

uint64_t sub_100035C70(unint64_t a1)
{
  v3 = *(v1 + 160) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(a1);
  }

  v4 = v3;
  v5 = swift_task_alloc();
  *(v1 + 168) = v5;
  *v5 = v1;
  v5[1] = sub_100035D58;
  a1 = v4;

  return static Task<>.sleep(nanoseconds:)(a1);
}

uint64_t sub_100035D58()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 80);

    return _swift_task_switch(sub_100035ED0, v6, 0);
  }
}

unint64_t sub_100035ED0()
{
  v1 = v0[9];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[17];
    v47 = v0[11];
    v48 = v0[12];
    v4 = *(v3 + 16);
    v3 += 16;
    v56 = v4;
    v5 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v6 = *(v3 + 56);
    v46 = enum case for BetaEnrollment.State.enrolled(_:);
    v7 = (v3 - 8);
    v49 = v6;
    v55 = (v3 - 8);
    while (1)
    {
      v8 = v0[10];
      v56(v0[19], v5, v0[16]);
      v9 = *(v8 + 112);
      swift_beginAccess();
      v10 = *(v9 + 24);
      if (!*(v10 + 16))
      {
        goto LABEL_4;
      }

      v11 = v0[19];

      v12 = sub_10006E66C(v11);
      if ((v13 & 1) == 0)
      {
        break;
      }

      v14 = v0[18];
      v15 = v0[15];
      v52 = v0[16];
      v53 = v0[19];
      v16 = v0[14];
      v54 = v0[13];
      v17 = v0[8];
      v50 = *(v48 + 72);
      v51 = v0[10];
      sub_10000E4A4(*(v10 + 56) + v50 * v12, v16, &qword_1000AEA58, qword_10008D310);

      sub_100036EF8(v16, v15, &qword_1000AEA58, qword_10008D310);
      v18 = *(v47 + 36);
      v19 = sub_10008672C();
      v20 = *(v19 - 8);
      (*(v20 + 8))(v15 + v18, v19);
      (*(v20 + 104))(v15 + v18, v46, v19);
      v21 = v15 + *(v47 + 48);
      *v21 = v17;
      *(v21 + 8) = 0;
      v22 = *(v51 + 112);
      v56(v14, v53, v52);
      swift_beginAccess();
      sub_10000E4A4(v15, v54, &qword_1000AEA58, qword_10008D310);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = *(v22 + 24);
      *(v22 + 24) = 0x8000000000000000;
      result = sub_10006E66C(v14);
      v27 = v24[2];
      v28 = (v26 & 1) == 0;
      v29 = __OFADD__(v27, v28);
      v30 = v27 + v28;
      if (v29)
      {
        __break(1u);
LABEL_26:
        __break(1u);
        return result;
      }

      v31 = v26;
      if (v24[3] >= v30)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v44 = result;
          sub_100073944();
          result = v44;
        }
      }

      else
      {
        v32 = v0[18];
        sub_100070D14(v30, isUniquelyReferenced_nonNull_native);
        result = sub_10006E66C(v32);
        if ((v31 & 1) != (v33 & 1))
        {

          return sub_100087A5C();
        }
      }

      v34 = v0[18];
      v35 = v0[16];
      v36 = v0[13];
      if (v31)
      {
        sub_100036B8C(v36, v24[7] + result * v50);
        v37 = *v55;
        (*v55)(v34, v35);
      }

      else
      {
        v24[(result >> 6) + 8] |= 1 << result;
        v38 = result;
        v56(v24[6] + result * v49, v34, v35);
        sub_100036EF8(v36, v24[7] + v38 * v50, &qword_1000AEA58, qword_10008D310);
        v37 = *v55;
        result = (*v55)(v34, v35);
        v39 = v24[2];
        v29 = __OFADD__(v39, 1);
        v40 = v39 + 1;
        if (v29)
        {
          goto LABEL_26;
        }

        v24[2] = v40;
      }

      v41 = v0[19];
      v43 = v0[15];
      v42 = v0[16];
      *(v22 + 24) = v24;

      swift_endAccess();

      v37(v41, v42);
      sub_10000649C(v43, &qword_1000AEA58, qword_10008D310);
      v6 = v49;
      v7 = v55;
LABEL_5:
      v5 += v6;
      if (!--v2)
      {
        goto LABEL_19;
      }
    }

LABEL_4:
    (*v7)(v0[19], v0[16]);
    goto LABEL_5;
  }

LABEL_19:
  v45 = swift_task_alloc();
  v0[22] = v45;
  *v45 = v0;
  v45[1] = sub_1000363BC;

  return sub_100035360();
}

uint64_t sub_1000363BC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100036550()
{
  v1 = *(v0 + 112);
  swift_beginAccess();
  v2 = *(v1 + 32);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (v5)
  {
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    sub_10000E4A4(*(v2 + 56) + ((v8 << 9) | (8 * v11)), v20, &qword_1000AEA60, &qword_10008C930);
    Strong = swift_unknownObjectWeakLoadStrong();
    result = sub_10000649C(v20, &qword_1000AEA60, &qword_10008C930);
    if (Strong)
    {
      swift_getObjectType();
      v13 = swift_conformsToProtocol2();
      if (v13)
      {
        v19 = v13;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_10006F100(0, v9[2] + 1, 1, v9);
          v9 = result;
        }

        v15 = v9[2];
        v14 = v9[3];
        v16 = v15 + 1;
        v17 = v19;
        if (v15 >= v14 >> 1)
        {
          result = sub_10006F100((v14 > 1), v15 + 1, 1, v9);
          v16 = v15 + 1;
          v17 = v19;
          v9 = result;
        }

        v9[2] = v16;
        v18 = &v9[2 * v15];
        v18[4] = Strong;
        v18[5] = v17;
      }

      else
      {
        result = swift_unknownObjectRelease();
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v9;
    }

    v5 = *(v2 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100036740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100036764, v3, 0);
}

uint64_t sub_100036764()
{
  sub_1000346B0(v0[2], v0[3], v0[4]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1000367E8()
{
  swift_beginAccess();

  v2 = sub_1000345C4(v1, sub_10006F300, &qword_1000AEA58, qword_10008D310);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_100036890()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000324C;

  return sub_100034848();
}

uint64_t sub_10003691C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100036940, v3, 0);
}

uint64_t sub_100036940()
{
  sub_100034954(v0[2], v0[3], v0[4]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1000369A4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000324C;

  return sub_100034AF4(a1, a2);
}

uint64_t sub_100036A48(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100002740;

  return sub_100035AF4(a1, a2);
}

uint64_t sub_100036AEC(uint64_t a1)
{
  result = sub_100036B44(&qword_1000AEA50, type metadata accessor for NetworkManagerMock, &unk_10008D290);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100036B44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100036B8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EEC(&qword_1000AEA58, qword_10008D310);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100036C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v42 = a5;
  v43 = a6;
  v10 = sub_100001EEC(a5, a6);
  v45 = *(v10 - 8);
  v11 = __chkstk_darwin(v10 - 8);
  v44 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v11);
  v41 = &v37 - v14;
  v15 = a4 + 64;
  v16 = -1 << *(a4 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v24 = 0;
    a3 = 0;
LABEL_26:
    *a1 = a4;
    *(a1 + 8) = v15;
    *(a1 + 16) = ~v16;
    *(a1 + 24) = v24;
    *(a1 + 32) = v18;
    return a3;
  }

  if (!a3)
  {
    v24 = 0;
    goto LABEL_26;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v39 = a1;
    v40 = a3;
    result = 0;
    v19 = 0;
    v38 = v16;
    v20 = (63 - v16) >> 6;
    a1 = 1;
    while (v18)
    {
      v46 = a2;
LABEL_15:
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v24 = v19;
      v25 = a4;
      v26 = *(a4 + 56);
      v27 = v44;
      v28 = *(v45 + 72);
      v29 = v42;
      v30 = v43;
      sub_10000E4A4(v26 + v28 * (v23 | (v19 << 6)), v44, v42, v43);
      v31 = v27;
      v32 = v41;
      sub_100036EF8(v31, v41, v29, v30);
      v33 = v32;
      v34 = v46;
      sub_100036EF8(v33, v46, v29, v30);
      if (a1 == v40)
      {
        a1 = v39;
        a3 = v40;
        a4 = v25;
        goto LABEL_24;
      }

      a2 = v34 + v28;
      result = a1;
      v35 = __OFADD__(a1++, 1);
      a4 = v25;
      v19 = v24;
      if (v35)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v21 = v19;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v22 >= v20)
      {
        break;
      }

      v18 = *(v15 + 8 * v22);
      ++v21;
      if (v18)
      {
        v46 = a2;
        v19 = v22;
        goto LABEL_15;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v36 = v19 + 1;
    }

    else
    {
      v36 = v20;
    }

    v24 = v36 - 1;
    a3 = result;
    a1 = v39;
LABEL_24:
    v16 = v38;
    goto LABEL_26;
  }

LABEL_29:
  __break(1u);
  return result;
}

_OWORD *sub_100036E80(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100036EF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001EEC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void *sub_100036F60(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_20:
    v10 = 0;
    v17 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v11 = v19 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_24:
    v12 = 0;
    goto LABEL_31;
  }

  sub_1000876EC();
  sub_100001EEC(&qword_1000AE5B8, &unk_10008DD20);
  sub_1000372CC();
  result = sub_10008753C();
  v4 = v24;
  v8 = v25;
  v9 = v26;
  v10 = v27;
  v11 = v28;
  if (!a2)
  {
    goto LABEL_24;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_31;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v21 = v9;
  v22 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (v4 < 0)
  {
    if (!sub_10008775C())
    {
      goto LABEL_29;
    }

    sub_100001EEC(&qword_1000AE5B8, &unk_10008DD20);
    swift_dynamicCast();
    result = v23;
    if (!v23)
    {
      goto LABEL_29;
    }

LABEL_16:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_29;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_20;
    }
  }

  v14 = v10;
  if (v11)
  {
LABEL_12:
    v11 &= v11 - 1;

    if (!result)
    {
      goto LABEL_29;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_12;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v20 = v10 + 1;
  }

  else
  {
    v20 = v13;
  }

  v10 = v20 - 1;
LABEL_29:
  v9 = v21;
  v7 = v22;
LABEL_31:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void *sub_100037174(void *result, void *a2, uint64_t a3, uint64_t a4)
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

unint64_t sub_1000372CC()
{
  result = qword_1000AE5C0;
  if (!qword_1000AE5C0)
  {
    sub_100003200(&qword_1000AE5B8, &unk_10008DD20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE5C0);
  }

  return result;
}

uint64_t sub_100037334(uint64_t a1)
{
  if (!a1)
  {
    return 7104878;
  }

  v6 = a1;
  swift_errorRetain();
  sub_100001EEC(&unk_1000AEDF0, &qword_10008A0E0);
  sub_100001EEC(&qword_1000ADC10, &qword_100088740);
  if (swift_dynamicCast())
  {
    sub_100001F9C(v4, v7);
    sub_100001FB4(v7, v7[3]);
    v2 = sub_1000879CC();

    sub_100001FF8(v7);
    return v2;
  }

  else
  {
    v5 = 0;
    memset(v4, 0, sizeof(v4));
    sub_10000649C(v4, &qword_1000AEE00, &qword_100088748);
    v7[0] = a1;
    return sub_10008716C();
  }
}

uint64_t sub_10003746C(uint64_t a1)
{
  sub_100001EEC(qword_1000AEA80, &qword_10008AB98);
  sub_100086E7C();
  return v2;
}

uint64_t sub_1000374F0(uint64_t a1)
{
  if (qword_1000ADB68 != -1)
  {
    swift_once();
  }

  sub_100086CBC();
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *(v2 + 96);
  swift_unknownObjectRetain();
  v4(v3, v2);
  swift_unknownObjectRelease();
  v6 = sub_100086CBC();
  __chkstk_darwin(v6);
  sub_100001EEC(&qword_1000AEBE8, &qword_10008AE98);
  sub_100006454(&qword_1000AEBF0, &qword_1000AEBE8, &qword_10008AE98, &protocol conformance descriptor for TupleView<A>);
  return sub_100086FDC();
}

uint64_t sub_100037728@<X0>(uint64_t a1@<X0>, void (*a2)(char *, char *, uint64_t)@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v75 = a4;
  v7 = sub_100001EEC(&qword_1000AE0A0, &qword_100088EB0);
  __chkstk_darwin(v7 - 8);
  v69 = v65 - v8;
  v76 = sub_100001EEC(&qword_1000AEBA8, &qword_10008AE50);
  v74 = *(v76 - 8);
  v9 = __chkstk_darwin(v76);
  v73 = v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v83 = v65 - v11;
  v72 = sub_100001EEC(&qword_1000AE7B8, &qword_10008A478);
  v71 = *(v72 - 8);
  v12 = __chkstk_darwin(v72);
  v77 = v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v82 = v65 - v14;
  v15 = sub_100001EEC(&qword_1000AEBF8, &qword_10008AEA0);
  v16 = __chkstk_darwin(v15 - 8);
  v81 = v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = v65 - v18;
  v20 = sub_100001EEC(&qword_1000AEC00, &qword_10008AEA8);
  v21 = __chkstk_darwin(v20 - 8);
  v80 = v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = v65 - v23;
  *v24 = sub_100086A9C();
  *(v24 + 1) = 0;
  v24[16] = 1;
  v25 = *(sub_100001EEC(&qword_1000AEC08, &qword_10008AEB0) + 44);
  v78 = v24;
  sub_100038188(a2, a3, &v24[v25]);
  *v19 = sub_100086A9C();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v26 = *(sub_100001EEC(&qword_1000AEC10, &qword_10008AEB8) + 44);
  v79 = v19;
  sub_100038560(a2, a3, &v19[v26]);
  if (qword_1000ADB78 != -1)
  {
    swift_once();
  }

  v27 = swift_allocObject();
  *(v27 + 16) = a2;
  *(v27 + 24) = a3;
  v28 = *(a1 + 144);
  *(v27 + 160) = *(a1 + 128);
  *(v27 + 176) = v28;
  *(v27 + 192) = *(a1 + 160);
  v29 = *(a1 + 80);
  *(v27 + 96) = *(a1 + 64);
  *(v27 + 112) = v29;
  v30 = *(a1 + 112);
  *(v27 + 128) = *(a1 + 96);
  *(v27 + 144) = v30;
  v31 = *(a1 + 16);
  *(v27 + 32) = *a1;
  *(v27 + 48) = v31;
  v32 = *(a1 + 48);
  *(v27 + 64) = *(a1 + 32);
  *(v27 + 80) = v32;

  v34 = type metadata accessor for CarrySettingsDetailView(0, a2, a3, v33);
  v35 = *(v34 - 8);
  v70 = a3;
  v36 = *(v35 + 16);
  v36(&v85, a1, v34);
  sub_100086EEC();
  if (qword_1000ADBC0 != -1)
  {
    swift_once();
  }

  v67 = qword_1000B3AF8;

  v37 = v69;
  sub_10008683C();
  v38 = sub_10008685C();
  (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
  v39 = swift_allocObject();
  *(v39 + 16) = a2;
  v68 = a2;
  *(v39 + 24) = v70;
  v40 = *(a1 + 144);
  *(v39 + 160) = *(a1 + 128);
  *(v39 + 176) = v40;
  *(v39 + 192) = *(a1 + 160);
  v41 = *(a1 + 80);
  *(v39 + 96) = *(a1 + 64);
  *(v39 + 112) = v41;
  v42 = *(a1 + 112);
  *(v39 + 128) = *(a1 + 96);
  *(v39 + 144) = v42;
  v43 = *(a1 + 16);
  *(v39 + 32) = *a1;
  *(v39 + 48) = v43;
  v44 = *(a1 + 48);
  *(v39 + 64) = *(a1 + 32);
  *(v39 + 80) = v44;
  v36(&v85, a1, v34);
  v45 = v77;
  sub_100086EDC();
  v69 = sub_100086AFC();
  LODWORD(v67) = v46;
  v84 = *(a1 + 32);
  sub_100001EEC(&qword_1000AE068, &qword_10008AD10);
  v47 = sub_100086EAC();
  v66 = v65;
  v65[3] = v86;
  v48 = __chkstk_darwin(v47);
  v49 = v45;
  __chkstk_darwin(v48);
  sub_100006454(&qword_1000AE7C8, &qword_1000AE7B8, &qword_10008A478, &protocol conformance descriptor for Button<A>);
  v50 = v72;
  sub_100086DBC();

  v51 = v71;
  v52 = *(v71 + 8);
  v69 = (v71 + 8);
  v70 = v52;
  v53 = v49;
  v52(v49, v50);
  v54 = v80;
  sub_10000E4A4(v78, v80, &qword_1000AEC00, &qword_10008AEA8);
  v55 = v81;
  sub_10000E4A4(v79, v81, &qword_1000AEBF8, &qword_10008AEA0);
  v71 = *(v51 + 16);
  (v71)(v49, v82, v50);
  v56 = v74;
  v68 = *(v74 + 16);
  v57 = v73;
  v58 = v76;
  v68(v73, v83, v76);
  v59 = v54;
  v60 = v75;
  sub_10000E4A4(v59, v75, &qword_1000AEC00, &qword_10008AEA8);
  v61 = sub_100001EEC(&qword_1000AEC18, &qword_10008AEC0);
  sub_10000E4A4(v55, v60 + v61[12], &qword_1000AEBF8, &qword_10008AEA0);
  (v71)(v60 + v61[16], v53, v50);
  v68((v60 + v61[20]), v57, v58);
  v62 = *(v56 + 8);
  v62(v83, v58);
  v63 = v70;
  v70(v82, v50);
  sub_10000649C(v79, &qword_1000AEBF8, &qword_10008AEA0);
  sub_10000649C(v78, &qword_1000AEC00, &qword_10008AEA8);
  v62(v57, v58);
  v63(v77, v50);
  sub_10000649C(v81, &qword_1000AEBF8, &qword_10008AEA0);
  return sub_10000649C(v80, &qword_1000AEC00, &qword_10008AEA8);
}

uint64_t sub_100038188@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = sub_100001EEC(&qword_1000AEC38, &qword_10008AF98);
  v7 = __chkstk_darwin(v36);
  v37 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v31 - v9;
  if (qword_1000ADAE0 != -1)
  {
    swift_once();
  }

  v11 = sub_100086CBC();
  v32 = v12;
  v33 = v11;
  v34 = v13;
  v35 = v14;
  sub_100086AFC();
  type metadata accessor for CarrySettingsDetailView(0, a2, a3, v15);
  v16 = sub_10008690C();
  __chkstk_darwin(v16);
  swift_getKeyPath();
  sub_10008691C();

  swift_unknownObjectRelease();
  sub_10008704C();
  KeyPath = swift_getKeyPath();
  v18 = &v10[*(sub_100001EEC(&qword_1000AEC40, &qword_10008AFD8) + 36)];
  *v18 = KeyPath;
  v18[8] = 2;
  v19 = sub_100086E2C();
  v20 = swift_getKeyPath();
  v21 = &v10[*(sub_100001EEC(&qword_1000AEC48, &qword_10008AFE0) + 36)];
  *v21 = v20;
  v21[1] = v19;
  v22 = swift_getKeyPath();
  v23 = swift_allocObject();
  *(v23 + 16) = 1;
  v24 = v37;
  v25 = &v10[*(v36 + 36)];
  *v25 = v22;
  v25[1] = sub_10003E750;
  v25[2] = v23;
  sub_10000E4A4(v10, v24, &qword_1000AEC38, &qword_10008AF98);
  v27 = v32;
  v26 = v33;
  *a4 = v33;
  *(a4 + 8) = v27;
  v28 = v34 & 1;
  *(a4 + 16) = v34 & 1;
  *(a4 + 24) = v35;
  *(a4 + 32) = 0;
  *(a4 + 40) = 1;
  v29 = sub_100001EEC(&qword_1000AEC50, &qword_10008AFE8);
  sub_10000E4A4(v24, a4 + *(v29 + 64), &qword_1000AEC38, &qword_10008AF98);
  sub_100006568(v26, v27, v28);

  sub_10000649C(v10, &qword_1000AEC38, &qword_10008AF98);
  sub_10000649C(v24, &qword_1000AEC38, &qword_10008AF98);
  sub_100006550(v26, v27, v28);
}

uint64_t sub_100038560@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = sub_100001EEC(&qword_1000AEC20, &qword_10008AEE8);
  v7 = __chkstk_darwin(v33);
  v34 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v28 - v9;
  if (qword_1000ADAF8 != -1)
  {
    swift_once();
  }

  v11 = sub_100086CBC();
  v29 = v12;
  v30 = v11;
  v31 = v13;
  v32 = v14;
  sub_100086AFC();
  type metadata accessor for CarrySettingsDetailView(0, a2, a3, v15);
  v16 = sub_10008690C();
  __chkstk_darwin(v16);
  swift_getKeyPath();
  sub_10008691C();

  swift_unknownObjectRelease();
  sub_10008687C();
  KeyPath = swift_getKeyPath();
  v18 = &v10[*(sub_100001EEC(&qword_1000AEC28, &qword_10008AF58) + 36)];
  *v18 = KeyPath;
  v18[8] = 2;
  v19 = sub_100086E2C();
  v20 = swift_getKeyPath();
  v21 = v34;
  v22 = &v10[*(v33 + 36)];
  *v22 = v20;
  v22[1] = v19;
  sub_10000E4A4(v10, v21, &qword_1000AEC20, &qword_10008AEE8);
  v24 = v29;
  v23 = v30;
  *a4 = v30;
  *(a4 + 8) = v24;
  v25 = v31 & 1;
  *(a4 + 16) = v31 & 1;
  *(a4 + 24) = v32;
  *(a4 + 32) = 0;
  *(a4 + 40) = 1;
  v26 = sub_100001EEC(&qword_1000AEC30, &qword_10008AF90);
  sub_10000E4A4(v21, a4 + *(v26 + 64), &qword_1000AEC20, &qword_10008AEE8);
  sub_100006568(v23, v24, v25);

  sub_10000649C(v10, &qword_1000AEC20, &qword_10008AEE8);
  sub_10000649C(v21, &qword_1000AEC20, &qword_10008AEE8);
  sub_100006550(v23, v24, v25);
}

uint64_t sub_1000388C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  sub_1000873FC();
  v6[10] = sub_1000873EC();
  v8 = sub_1000873DC();
  v6[11] = v8;
  v6[12] = v7;

  return _swift_task_switch(sub_10003895C, v8, v7);
}

uint64_t sub_10003895C()
{
  v1 = v0[9];
  v0[13] = *(v0[7] + 8);
  v2 = *(v1 + 232);
  swift_unknownObjectRetain();
  v7 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_100038A84;
  v5 = v0[8];
  v4 = v0[9];

  return v7(v5, v4);
}

uint64_t sub_100038A84()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_100038C00;
  }

  else
  {
    swift_unknownObjectRelease();
    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_100038BA0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100038BA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100038C00()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 56);

  swift_unknownObjectRelease();
  *(v0 + 16) = *(v2 + 32);
  *(v0 + 128) = 1;
  sub_100001EEC(&qword_1000AE068, &qword_10008AD10);
  sub_100086E9C();
  *(v0 + 32) = *(v2 + 16);
  *(v0 + 48) = v1;
  sub_100001EEC(&qword_1000AEBD0, &unk_10008AE60);
  sub_100086E9C();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100038CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1000873FC();
  v6[5] = sub_1000873EC();
  v8 = sub_1000873DC();
  v6[6] = v8;
  v6[7] = v7;

  return _swift_task_switch(sub_100038D84, v8, v7);
}

uint64_t sub_100038D84()
{
  v1 = v0[4];
  v0[8] = *(v0[2] + 8);
  v2 = *(v1 + 248);
  swift_unknownObjectRetain();
  v7 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_100038EAC;
  v5 = v0[3];
  v4 = v0[4];

  return v7(v5, v4);
}

uint64_t sub_100038EAC()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_10000B0A0, v3, v2);
}

uint64_t sub_100038FF0@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_100086AEC();
  __chkstk_darwin(v3 - 8);
  sub_100086ADC();
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_100086ACC(v9);
  sub_100001EEC(&qword_1000AEBD0, &unk_10008AE60);
  sub_100086E8C();
  v10._countAndFlagsBits = sub_100037334(v8);
  sub_100086ABC(v10);

  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  sub_100086ACC(v11);
  sub_100086B0C();
  result = sub_100086CBC();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_10003911C(uint64_t a1)
{
  if (qword_1000ADAE8 != -1)
  {
    swift_once();
  }

  v2 = sub_100086CBC();
  __chkstk_darwin(v2);
  sub_100001EEC(&qword_1000AEB38, &qword_10008AD18);
  sub_10003D85C();
  return sub_100086FCC();
}

uint64_t sub_100039288@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v114 = a4;
  v7 = sub_100001EEC(&qword_1000AEB58, &qword_10008AD28);
  __chkstk_darwin(v7);
  v111 = &v95 - v8;
  v113 = sub_100001EEC(&qword_1000AEB50, &qword_10008AD20);
  __chkstk_darwin(v113);
  v10 = &v95 - v9;
  v11 = sub_100001EEC(&qword_1000AEB60, &qword_10008AD30);
  v12 = __chkstk_darwin(v11 - 8);
  v109 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v110 = (&v95 - v14);
  v15 = *(a3 + 136);
  swift_unknownObjectRetain();
  v16 = a2;
  v17 = v15(a2, a3);
  v112 = v7;
  if (v17)
  {
    v19 = type metadata accessor for CarrySettingsDetailView(0, a2, a3, v18);
    v103 = (*(a3 + 192))(v16, a3);
    v20 = *(v19 + 16);
    v107 = *(*(v19 + 24) + 8);
    *&v108 = v20;
    v21 = sub_10008690C();
    __chkstk_darwin(v21);
    swift_getKeyPath();
    v106 = *(a3 + 8);
    sub_10008691C();

    swift_unknownObjectRelease();
    v101 = v162;
    v22 = v163;
    v23 = swift_allocObject();
    *(v23 + 16) = v16;
    *(v23 + 24) = a3;
    v24 = *(a1 + 9);
    *(v23 + 160) = *(a1 + 8);
    *(v23 + 176) = v24;
    *(v23 + 192) = a1[20];
    v25 = *(a1 + 5);
    *(v23 + 96) = *(a1 + 4);
    *(v23 + 112) = v25;
    v26 = *(a1 + 7);
    *(v23 + 128) = *(a1 + 6);
    *(v23 + 144) = v26;
    v27 = *(a1 + 1);
    *(v23 + 32) = *a1;
    *(v23 + 48) = v27;
    v28 = *(a1 + 3);
    *(v23 + 64) = *(a1 + 2);
    *(v23 + 80) = v28;
    LOBYTE(v122) = 0;
    LOBYTE(v145) = 0;
    v29 = v19;
    v104 = v19;
    v30 = *(v19 - 8);
    v31 = *(v30 + 16);
    v105 = v30 + 16;
    v31(v137, a1, v29);
    v102 = v31;
    sub_100086E7C();
    LOBYTE(v138) = 0;
    *(&v138 + 1) = v137[0];
    DWORD1(v138) = *(v137 + 3);
    *(&v138 + 1) = v103;
    LOBYTE(v139) = v137[0];
    *(&v139 + 1) = v162;
    DWORD1(v139) = *(&v162 + 3);
    *(&v139 + 1) = *(&v137[0] + 1);
    v140 = v101;
    v141 = v22;
    LOBYTE(v142) = v122;
    DWORD1(v142) = *(&v145 + 3);
    *(&v142 + 1) = v145;
    *(&v142 + 1) = sub_10003D9E4;
    *&v143 = v23;
    *(&v143 + 1) = sub_10003E734;
    v144 = 0;
    v103 = v10;
    v100 = *(a3 + 144);
    *&v101 = v100(v16, a3);
    v32 = sub_10008690C();
    __chkstk_darwin(v32);
    swift_getKeyPath();
    sub_10008691C();

    swift_unknownObjectRelease();
    v97 = v162;
    v98 = *(&v163 + 1);
    v99 = v163;
    v33 = swift_allocObject();
    v34 = v16;
    v96 = v16;
    *(v33 + 16) = v16;
    *(v33 + 24) = a3;
    v35 = *(a1 + 9);
    *(v33 + 160) = *(a1 + 8);
    *(v33 + 176) = v35;
    *(v33 + 192) = a1[20];
    v36 = *(a1 + 5);
    *(v33 + 96) = *(a1 + 4);
    *(v33 + 112) = v36;
    v37 = *(a1 + 7);
    *(v33 + 128) = *(a1 + 6);
    *(v33 + 144) = v37;
    v38 = *(a1 + 1);
    *(v33 + 32) = *a1;
    *(v33 + 48) = v38;
    v39 = *(a1 + 3);
    *(v33 + 64) = *(a1 + 2);
    *(v33 + 80) = v39;
    LOBYTE(v145) = 0;
    LOBYTE(v122) = 0;
    v31(v137, a1, v104);
    sub_100086E7C();
    v40 = v137[0];
    v41 = *(&v137[0] + 1);
    LOBYTE(v31) = v145;
    v42 = *(v100(v34, a3) + 16);

    v43 = v42 == 0;
    KeyPath = swift_getKeyPath();
    v45 = swift_allocObject();
    *(v45 + 16) = v43;
    LOBYTE(v145) = 0;
    *(&v145 + 1) = v101;
    LOBYTE(v146) = v40;
    v147 = v97;
    *(&v146 + 1) = v41;
    *&v148 = v99;
    *(&v148 + 1) = v98;
    LOBYTE(v149) = v31;
    *(&v149 + 1) = sub_10003DAB8;
    *&v150 = v33;
    *(&v150 + 1) = sub_10003E734;
    *&v151 = 0;
    *(&v151 + 1) = KeyPath;
    *&v152 = sub_10003DADC;
    *(&v152 + 1) = v45;
    v46 = v96;
    v47 = (*(a3 + 104))(v96, a3);
    swift_unknownObjectRelease();
    v48 = sub_10008690C();
    __chkstk_darwin(v48);
    swift_getKeyPath();
    sub_10008691C();

    swift_unknownObjectRelease();
    v108 = v162;
    v49 = v163;
    v50 = swift_allocObject();
    *(v50 + 16) = v46;
    *(v50 + 24) = a3;
    v51 = *(a1 + 9);
    *(v50 + 160) = *(a1 + 8);
    *(v50 + 176) = v51;
    *(v50 + 192) = a1[20];
    v52 = *(a1 + 5);
    *(v50 + 96) = *(a1 + 4);
    *(v50 + 112) = v52;
    v53 = *(a1 + 7);
    *(v50 + 128) = *(a1 + 6);
    *(v50 + 144) = v53;
    v54 = *(a1 + 1);
    *(v50 + 32) = *a1;
    *(v50 + 48) = v54;
    v55 = *(a1 + 3);
    *(v50 + 64) = *(a1 + 2);
    *(v50 + 80) = v55;
    LOBYTE(v174[0]) = 0;
    LOBYTE(v122) = 0;
    v102(v137, a1, v104);
    sub_100086E7C();
    LOBYTE(v153) = 0;
    *(&v153 + 1) = v137[0];
    DWORD1(v153) = *(v137 + 3);
    *(&v153 + 1) = v47;
    LOBYTE(v154) = v137[0];
    *(&v154 + 1) = v162;
    DWORD1(v154) = *(&v162 + 3);
    v155 = v108;
    *(&v154 + 1) = *(&v137[0] + 1);
    v156 = v49;
    LOBYTE(v157) = v174[0];
    DWORD1(v157) = *(&v122 + 3);
    *(&v157 + 1) = v122;
    *(&v157 + 1) = sub_10003DBA8;
    *&v158 = v50;
    *(&v158 + 1) = sub_10003E734;
    v159 = 0;
    v56 = sub_100086A9C();
    v57 = v110;
    *v110 = v56;
    *(v57 + 8) = 0;
    *(v57 + 16) = 1;
    v58 = sub_100001EEC(&qword_1000AEB68, &qword_10008AE10);
    sub_10003A488(a1, v46, a3, (v57 + *(v58 + 44)));
    v134 = v142;
    v135 = v143;
    v136 = v144;
    v130 = v138;
    v131 = v139;
    v132 = v140;
    v133 = v141;
    v126 = v149;
    v127 = v150;
    v128 = v151;
    v129 = v152;
    v122 = v145;
    v123 = v146;
    v124 = v147;
    v125 = v148;
    v119 = v157;
    v120 = v158;
    v121 = v159;
    v115 = v153;
    v116 = v154;
    v117 = v155;
    v118 = v156;
    v59 = v109;
    sub_10000E4A4(v57, v109, &qword_1000AEB60, &qword_10008AD30);
    v60 = v134;
    v61 = v135;
    v160[4] = v134;
    v160[5] = v135;
    v62 = v131;
    v160[0] = v130;
    v160[1] = v131;
    v64 = v132;
    v63 = v133;
    v160[3] = v133;
    v160[2] = v132;
    v65 = v103;
    *v103 = v130;
    *(v65 + 16) = v62;
    *(v65 + 32) = v64;
    *(v65 + 48) = v63;
    *(v65 + 64) = v60;
    *(v65 + 80) = v61;
    v66 = v122;
    v67 = v123;
    v162 = v122;
    v163 = v123;
    v68 = v128;
    v69 = v129;
    v169 = v129;
    v168 = v128;
    v70 = v127;
    v167 = v127;
    v166 = v126;
    v71 = v124;
    v72 = v125;
    v164 = v124;
    v165 = v125;
    *(v65 + 168) = v126;
    *(v65 + 184) = v70;
    *(v65 + 200) = v68;
    *(v65 + 216) = v69;
    *(v65 + 104) = v66;
    *(v65 + 120) = v67;
    *(v65 + 136) = v71;
    *(v65 + 152) = v72;
    v73 = v115;
    v74 = v116;
    v170[1] = v116;
    v170[0] = v115;
    v75 = v119;
    v76 = v120;
    v170[5] = v120;
    v170[4] = v119;
    v77 = v117;
    v78 = v118;
    v170[2] = v117;
    v170[3] = v118;
    v161 = v136;
    *(v65 + 96) = v136;
    v79 = v121;
    v171 = v121;
    *(v65 + 248) = v74;
    *(v65 + 232) = v73;
    *(v65 + 328) = v79;
    *(v65 + 296) = v75;
    *(v65 + 312) = v76;
    *(v65 + 264) = v77;
    *(v65 + 280) = v78;
    v80 = sub_100001EEC(&qword_1000AEB70, &qword_10008AE18);
    sub_10000E4A4(v59, v65 + *(v80 + 80), &qword_1000AEB60, &qword_10008AD30);
    sub_10000E4A4(&v138, v137, &qword_1000AEB78, &qword_10008AE20);
    sub_10000E4A4(&v145, v137, &qword_1000AEB80, &qword_10008AE28);
    sub_10000E4A4(&v153, v137, &qword_1000AEB78, &qword_10008AE20);
    sub_10000E4A4(v160, v137, &qword_1000AEB78, &qword_10008AE20);
    sub_10000E4A4(&v162, v137, &qword_1000AEB80, &qword_10008AE28);
    sub_10000E4A4(v170, v137, &qword_1000AEB78, &qword_10008AE20);
    sub_10000649C(v59, &qword_1000AEB60, &qword_10008AD30);
    v172[4] = v119;
    v172[5] = v120;
    v173 = v121;
    v172[0] = v115;
    v172[1] = v116;
    v172[3] = v118;
    v172[2] = v117;
    sub_10000649C(v172, &qword_1000AEB78, &qword_10008AE20);
    v137[4] = v126;
    v137[5] = v127;
    v137[6] = v128;
    v137[7] = v129;
    v137[0] = v122;
    v137[1] = v123;
    v137[2] = v124;
    v137[3] = v125;
    sub_10000649C(v137, &qword_1000AEB80, &qword_10008AE28);
    v174[4] = v134;
    v174[5] = v135;
    v175 = v136;
    v174[0] = v130;
    v174[1] = v131;
    v174[2] = v132;
    v174[3] = v133;
    sub_10000649C(v174, &qword_1000AEB78, &qword_10008AE20);
    sub_10000E4A4(v65, v111, &qword_1000AEB50, &qword_10008AD20);
    swift_storeEnumTagMultiPayload();
    sub_100006454(&qword_1000AEB48, &qword_1000AEB50, &qword_10008AD20, &protocol conformance descriptor for TupleView<A>);
    sub_100086B8C();
    sub_10000649C(&v153, &qword_1000AEB78, &qword_10008AE20);
    sub_10000649C(&v145, &qword_1000AEB80, &qword_10008AE28);
    sub_10000649C(&v138, &qword_1000AEB78, &qword_10008AE20);
    sub_10000649C(v65, &qword_1000AEB50, &qword_10008AD20);
    return sub_10000649C(v57, &qword_1000AEB60, &qword_10008AD30);
  }

  else
  {
    v82 = v111;
    swift_unknownObjectRelease();
    if (qword_1000ADB98 != -1)
    {
      swift_once();
    }

    v83 = sub_100086CBC();
    v85 = v84;
    v87 = v86;
    LODWORD(v137[0]) = sub_100086BAC();
    v88 = sub_100086C9C();
    v90 = v89;
    v92 = v91;
    v94 = v93;
    sub_100006550(v83, v85, v87 & 1);

    *v82 = v88;
    *(v82 + 8) = v90;
    *(v82 + 16) = v92 & 1;
    *(v82 + 24) = v94;
    swift_storeEnumTagMultiPayload();
    sub_100006454(&qword_1000AEB48, &qword_1000AEB50, &qword_10008AD20, &protocol conformance descriptor for TupleView<A>);
    return sub_100086B8C();
  }
}

__n128 sub_100039F98@<Q0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (qword_1000ADBC8 != -1)
  {
    swift_once();
  }

  v7 = unk_1000B3B20;
  v20 = qword_1000B3B18;
  v8 = byte_1000B3B28;
  v9 = qword_1000B3B30;
  v10 = *(a3 + 200);
  swift_unknownObjectRetain();

  v10(a2, a3);
  v12 = v11;
  swift_unknownObjectRelease();
  if (v12)
  {
    v13 = sub_100086B1C();
    v17 = v16 & 1;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v17 = 0;
    v15 = 0;
  }

  *&v22 = v20;
  *(&v22 + 1) = v7;
  v23.n128_u8[0] = v8;
  v23.n128_u64[1] = v9;
  *&v24 = v13;
  *(&v24 + 1) = v14;
  *&v25 = v17;
  v26 = 0uLL;
  *(&v25 + 1) = v15;
  v27[0] = v20;
  v27[1] = v7;
  v28 = v8;
  v29 = v9;
  v30 = v13;
  v31 = v14;
  v32 = v17;
  v34 = 0;
  v35 = 0;
  v33 = v15;
  sub_10003DE60(&v22, v21);
  sub_10003DEBC(v27);
  v18 = v25;
  *(a4 + 32) = v24;
  *(a4 + 48) = v18;
  *(a4 + 64) = v26;
  result = v23;
  *a4 = v22;
  *(a4 + 16) = result;
  return result;
}

__n128 sub_10003A11C@<Q0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (qword_1000ADBB0 != -1)
  {
    swift_once();
  }

  v7 = unk_1000B3AC0;
  v20 = qword_1000B3AB8;
  v8 = byte_1000B3AC8;
  v9 = qword_1000B3AD0;
  v10 = *(a3 + 152);
  swift_unknownObjectRetain();

  v10(a2, a3);
  v12 = v11;
  swift_unknownObjectRelease();
  if (v12)
  {
    v13 = sub_100086B1C();
    v17 = v16 & 1;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v17 = 0;
    v15 = 0;
  }

  *&v22 = v20;
  *(&v22 + 1) = v7;
  v23.n128_u8[0] = v8;
  v23.n128_u64[1] = v9;
  *&v24 = v13;
  *(&v24 + 1) = v14;
  *&v25 = v17;
  v26 = 0uLL;
  *(&v25 + 1) = v15;
  v27[0] = v20;
  v27[1] = v7;
  v28 = v8;
  v29 = v9;
  v30 = v13;
  v31 = v14;
  v32 = v17;
  v34 = 0;
  v35 = 0;
  v33 = v15;
  sub_10003DE60(&v22, v21);
  sub_10003DEBC(v27);
  v18 = v25;
  *(a4 + 32) = v24;
  *(a4 + 48) = v18;
  *(a4 + 64) = v26;
  result = v23;
  *a4 = v22;
  *(a4 + 16) = result;
  return result;
}

__n128 sub_10003A29C@<Q0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (qword_1000ADB80 != -1)
  {
    swift_once();
  }

  v7 = unk_1000B3A00;
  v20 = qword_1000B39F8;
  v8 = byte_1000B3A08;
  v9 = qword_1000B3A10;
  v10 = *(a3 + 112);
  swift_unknownObjectRetain();

  v10(a2, a3);
  v12 = v11;
  swift_unknownObjectRelease();
  if (v12)
  {
    v13 = sub_100086B1C();
    v17 = v16 & 1;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v17 = 0;
    v15 = 0;
  }

  *&v22 = v20;
  *(&v22 + 1) = v7;
  v23.n128_u8[0] = v8;
  v23.n128_u64[1] = v9;
  *&v24 = v13;
  *(&v24 + 1) = v14;
  *&v25 = v17;
  v26 = 0uLL;
  *(&v25 + 1) = v15;
  v27[0] = v20;
  v27[1] = v7;
  v28 = v8;
  v29 = v9;
  v30 = v13;
  v31 = v14;
  v32 = v17;
  v34 = 0;
  v35 = 0;
  v33 = v15;
  sub_10003DE60(&v22, v21);
  sub_10003DEBC(v27);
  v18 = v25;
  *(a4 + 32) = v24;
  *(a4 + 48) = v18;
  *(a4 + 64) = v26;
  result = v23;
  *a4 = v22;
  *(a4 + 16) = result;
  return result;
}

uint64_t sub_10003A41C@<X0>(uint64_t a2@<X8>)
{
  sub_1000064FC();

  result = sub_100086CCC();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_10003A488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v65 = a4;
  v57 = sub_100001EEC(&qword_1000AEB88, &qword_10008AE30);
  __chkstk_darwin(v57);
  v63 = v48 - v7;
  v60 = sub_100001EEC(&qword_1000AEB90, &qword_10008AE38);
  __chkstk_darwin(v60);
  v48[0] = v48 - v8;
  v61 = sub_100001EEC(&qword_1000AEB98, &qword_10008AE40);
  v55 = *(v61 - 8);
  __chkstk_darwin(v61);
  v54 = v48 - v9;
  v10 = sub_100001EEC(&qword_1000AEBA0, &qword_10008AE48);
  v11 = __chkstk_darwin(v10 - 8);
  v64 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v62 = v48 - v13;
  v53 = sub_100001EEC(&qword_1000AE7B8, &qword_10008A478);
  v52 = *(v53 - 8);
  __chkstk_darwin(v53);
  v15 = v48 - v14;
  v59 = sub_100001EEC(&qword_1000AEBA8, &qword_10008AE50);
  v58 = *(v59 - 8);
  v16 = __chkstk_darwin(v59);
  v56 = v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v66 = v48 - v18;
  if (qword_1000ADB70 != -1)
  {
    swift_once();
  }

  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  v20 = *(a1 + 144);
  *(v19 + 160) = *(a1 + 128);
  *(v19 + 176) = v20;
  *(v19 + 192) = *(a1 + 160);
  v21 = *(a1 + 80);
  *(v19 + 96) = *(a1 + 64);
  *(v19 + 112) = v21;
  v22 = *(a1 + 112);
  *(v19 + 128) = *(a1 + 96);
  *(v19 + 144) = v22;
  v23 = *(a1 + 16);
  *(v19 + 32) = *a1;
  *(v19 + 48) = v23;
  v24 = *(a1 + 48);
  *(v19 + 64) = *(a1 + 32);
  *(v19 + 80) = v24;

  v26 = type metadata accessor for CarrySettingsDetailView(0, a2, a3, v25);
  (*(*(v26 - 8) + 16))(&v68, a1, v26);
  sub_100086EEC();
  v50 = sub_100086AFC();
  v49 = v27;
  v67 = *(a1 + 96);
  v51 = sub_100001EEC(&qword_1000AE068, &qword_10008AD10);
  v28 = sub_100086EAC();
  v48[1] = v48;
  v29 = __chkstk_darwin(v28);
  __chkstk_darwin(v29);
  sub_100006454(&qword_1000AE7C8, &qword_1000AE7B8, &qword_10008A478, &protocol conformance descriptor for Button<A>);
  v30 = v53;
  sub_100086DBC();

  (*(v52 + 8))(v15, v30);
  v31 = v54;
  sub_10008688C();
  v68 = *(a1 + 128);
  sub_100086E8C();
  v32 = v55;
  v33 = *(v55 + 16);
  if (v67)
  {
    v34 = v61;
    v33(v63, v31, v61);
    swift_storeEnumTagMultiPayload();
    sub_10003DC38();
    sub_100006454(&qword_1000AEBB8, &qword_1000AEB98, &qword_10008AE40, &protocol conformance descriptor for ProgressView<A, B>);
    v35 = v62;
    sub_100086B8C();
  }

  else
  {
    v36 = v48[0];
    v34 = v61;
    v33(v48[0], v31, v61);
    sub_10000E4A4(v36, v63, &qword_1000AEB90, &qword_10008AE38);
    swift_storeEnumTagMultiPayload();
    sub_10003DC38();
    sub_100006454(&qword_1000AEBB8, &qword_1000AEB98, &qword_10008AE40, &protocol conformance descriptor for ProgressView<A, B>);
    v35 = v62;
    sub_100086B8C();
    sub_10000649C(v36, &qword_1000AEB90, &qword_10008AE38);
  }

  (*(v32 + 8))(v31, v34);
  v37 = v58;
  v38 = *(v58 + 16);
  v39 = v56;
  v40 = v66;
  v41 = v59;
  v38(v56, v66, v59);
  v42 = v64;
  sub_10000E4A4(v35, v64, &qword_1000AEBA0, &qword_10008AE48);
  v43 = v65;
  v38(v65, v39, v41);
  v44 = sub_100001EEC(&qword_1000AEBC8, &qword_10008AE58);
  v45 = &v43[*(v44 + 48)];
  *v45 = 0;
  v45[8] = 1;
  sub_10000E4A4(v42, &v43[*(v44 + 64)], &qword_1000AEBA0, &qword_10008AE48);
  sub_10000649C(v35, &qword_1000AEBA0, &qword_10008AE48);
  v46 = *(v37 + 8);
  v46(v40, v41);
  sub_10000649C(v42, &qword_1000AEBA0, &qword_10008AE48);
  return (v46)(v39, v41);
}

uint64_t sub_10003ADDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[17] = a4;
  sub_1000873FC();
  v6[20] = sub_1000873EC();
  v8 = sub_1000873DC();
  v6[21] = v8;
  v6[22] = v7;

  return _swift_task_switch(sub_10003AE78, v8, v7);
}

uint64_t sub_10003AE78()
{
  v8 = *(v0 + 152);
  v1 = *(v0 + 136);
  *(v0 + 16) = *(v1 + 128);
  *(v0 + 32) = *(v1 + 128);
  *(v0 + 216) = 1;
  *(v0 + 112) = *(v0 + 24);
  sub_10000E4A4(v0 + 112, v0 + 120, &qword_1000AEBD8, &qword_10008AE80);
  *(v0 + 184) = sub_100001EEC(&qword_1000AE068, &qword_10008AD10);
  sub_100086E9C();
  *(v0 + 192) = *(v1 + 8);
  v2 = *(v8 + 240);
  swift_unknownObjectRetain();
  v7 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v0 + 200) = v3;
  *v3 = v0;
  v3[1] = sub_10003B010;
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);

  return v7(v5, v4);
}

uint64_t sub_10003B010()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  swift_unknownObjectRelease();
  v3 = *(v2 + 176);
  v4 = *(v2 + 168);
  if (v0)
  {
    v5 = sub_10003B168;
  }

  else
  {
    v5 = sub_10003E6F4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10003B168()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 136);

  *(v0 + 48) = *(v0 + 16);
  *(v0 + 217) = 0;
  sub_100086E9C();
  sub_10000649C(v0 + 16, &qword_1000AE068, &qword_10008AD10);
  *(v0 + 64) = *(v2 + 96);
  *(v0 + 218) = 1;
  sub_100086E9C();
  *(v0 + 80) = *(v2 + 112);
  *(v0 + 128) = v1;
  sub_100001EEC(&qword_1000AEBD0, &unk_10008AE60);
  sub_100086E9C();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10003B264@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_100086AEC();
  __chkstk_darwin(v3 - 8);
  sub_100086ADC();
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_100086ACC(v9);
  sub_100001EEC(&qword_1000AEBD0, &unk_10008AE60);
  sub_100086E8C();
  v10._countAndFlagsBits = sub_100037334(v8);
  sub_100086ABC(v10);

  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  sub_100086ACC(v11);
  sub_100086B0C();
  result = sub_100086CBC();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_10003B390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v28 = sub_100001EEC(&qword_1000AE7B8, &qword_10008A478);
  v27 = *(v28 - 8);
  __chkstk_darwin(v28);
  v5 = &v23 - v4;
  if (qword_1000ADBB8 != -1)
  {
    swift_once();
  }

  v6 = swift_allocObject();
  v25 = *(a1 + 16);
  v24 = *(a1 + 24);
  v7 = v24;
  *(v6 + 16) = v25;
  *(v6 + 24) = v7;
  v8 = *(v2 + 144);
  *(v6 + 160) = *(v2 + 128);
  *(v6 + 176) = v8;
  *(v6 + 192) = *(v2 + 160);
  v9 = *(v2 + 80);
  *(v6 + 96) = *(v2 + 64);
  *(v6 + 112) = v9;
  v10 = *(v2 + 112);
  *(v6 + 128) = *(v2 + 96);
  *(v6 + 144) = v10;
  v11 = *(v2 + 16);
  *(v6 + 32) = *v2;
  *(v6 + 48) = v11;
  v12 = *(v2 + 48);
  *(v6 + 64) = *(v2 + 32);
  *(v6 + 80) = v12;

  v13 = *(*(a1 - 8) + 16);
  v13(&v30, v2, a1);
  sub_100086EEC();
  v29 = *(v2 + 144);
  sub_100001EEC(&qword_1000AE068, &qword_10008AD10);
  sub_100086EAC();
  v14 = swift_allocObject();
  v15 = v24;
  *(v14 + 16) = v25;
  *(v14 + 24) = v15;
  v16 = *(v2 + 144);
  *(v14 + 160) = *(v2 + 128);
  *(v14 + 176) = v16;
  *(v14 + 192) = *(v2 + 160);
  v17 = *(v2 + 80);
  *(v14 + 96) = *(v2 + 64);
  *(v14 + 112) = v17;
  v18 = *(v2 + 112);
  *(v14 + 128) = *(v2 + 96);
  *(v14 + 144) = v18;
  v19 = *(v2 + 16);
  *(v14 + 32) = *v2;
  *(v14 + 48) = v19;
  v20 = *(v2 + 48);
  *(v14 + 64) = *(v2 + 32);
  *(v14 + 80) = v20;
  v13(&v30, v2, a1);
  sub_100006454(&qword_1000AE7C8, &qword_1000AE7B8, &qword_10008A478, &protocol conformance descriptor for Button<A>);
  sub_10003D7FC();
  v21 = v28;
  sub_100086DDC();

  return (*(v27 + 8))(v5, v21);
}

void *sub_10003B704@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a3 + 176);
  swift_unknownObjectRetain();
  v8 = v7(a2, a3);
  swift_unknownObjectRelease();
  sub_100001EEC(&qword_1000AE068, &qword_10008AD10);
  result = sub_100086EAC();
  *a4 = v8;
  *(a4 + 8) = v10;
  *(a4 + 16) = v11;
  *(a4 + 24) = v12;
  return result;
}

uint64_t sub_10003B7C0(uint64_t a1)
{
  if (qword_1000ADBD0 != -1)
  {
    swift_once();
  }

  v2 = sub_100086CBC();
  __chkstk_darwin(v2);
  sub_100001EEC(&qword_1000AEB60, &qword_10008AD30);
  sub_100006454(&qword_1000AEBE0, &qword_1000AEB60, &qword_10008AD30, &protocol conformance descriptor for HStack<A>);
  return sub_100086FCC();
}

uint64_t sub_10003B958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = sub_100086A9C();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v8 = sub_100001EEC(&qword_1000AEB68, &qword_10008AE10);
  return sub_10003B9C8(a1, a2, a3, (a4 + *(v8 + 44)));
}

uint64_t sub_10003B9C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v65 = a4;
  v57 = sub_100001EEC(&qword_1000AEB88, &qword_10008AE30);
  __chkstk_darwin(v57);
  v63 = v48 - v7;
  v60 = sub_100001EEC(&qword_1000AEB90, &qword_10008AE38);
  __chkstk_darwin(v60);
  v48[0] = v48 - v8;
  v61 = sub_100001EEC(&qword_1000AEB98, &qword_10008AE40);
  v55 = *(v61 - 8);
  __chkstk_darwin(v61);
  v54 = v48 - v9;
  v10 = sub_100001EEC(&qword_1000AEBA0, &qword_10008AE48);
  v11 = __chkstk_darwin(v10 - 8);
  v64 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v62 = v48 - v13;
  v53 = sub_100001EEC(&qword_1000AE7B8, &qword_10008A478);
  v52 = *(v53 - 8);
  __chkstk_darwin(v53);
  v15 = v48 - v14;
  v59 = sub_100001EEC(&qword_1000AEBA8, &qword_10008AE50);
  v58 = *(v59 - 8);
  v16 = __chkstk_darwin(v59);
  v56 = v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v66 = v48 - v18;
  if (qword_1000ADB90 != -1)
  {
    swift_once();
  }

  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  v20 = *(a1 + 144);
  *(v19 + 160) = *(a1 + 128);
  *(v19 + 176) = v20;
  *(v19 + 192) = *(a1 + 160);
  v21 = *(a1 + 80);
  *(v19 + 96) = *(a1 + 64);
  *(v19 + 112) = v21;
  v22 = *(a1 + 112);
  *(v19 + 128) = *(a1 + 96);
  *(v19 + 144) = v22;
  v23 = *(a1 + 16);
  *(v19 + 32) = *a1;
  *(v19 + 48) = v23;
  v24 = *(a1 + 48);
  *(v19 + 64) = *(a1 + 32);
  *(v19 + 80) = v24;

  v26 = type metadata accessor for CarrySettingsDetailView(0, a2, a3, v25);
  (*(*(v26 - 8) + 16))(&v68, a1, v26);
  sub_100086EEC();
  v50 = sub_100086AFC();
  v49 = v27;
  v67 = *(a1 + 48);
  v51 = sub_100001EEC(&qword_1000AE068, &qword_10008AD10);
  v28 = sub_100086EAC();
  v48[1] = v48;
  v29 = __chkstk_darwin(v28);
  __chkstk_darwin(v29);
  sub_100006454(&qword_1000AE7C8, &qword_1000AE7B8, &qword_10008A478, &protocol conformance descriptor for Button<A>);
  v30 = v53;
  sub_100086DBC();

  (*(v52 + 8))(v15, v30);
  v31 = v54;
  sub_10008688C();
  v68 = *(a1 + 80);
  sub_100086E8C();
  v32 = v55;
  v33 = *(v55 + 16);
  if (v67)
  {
    v34 = v61;
    v33(v63, v31, v61);
    swift_storeEnumTagMultiPayload();
    sub_10003DC38();
    sub_100006454(&qword_1000AEBB8, &qword_1000AEB98, &qword_10008AE40, &protocol conformance descriptor for ProgressView<A, B>);
    v35 = v62;
    sub_100086B8C();
  }

  else
  {
    v36 = v48[0];
    v34 = v61;
    v33(v48[0], v31, v61);
    sub_10000E4A4(v36, v63, &qword_1000AEB90, &qword_10008AE38);
    swift_storeEnumTagMultiPayload();
    sub_10003DC38();
    sub_100006454(&qword_1000AEBB8, &qword_1000AEB98, &qword_10008AE40, &protocol conformance descriptor for ProgressView<A, B>);
    v35 = v62;
    sub_100086B8C();
    sub_10000649C(v36, &qword_1000AEB90, &qword_10008AE38);
  }

  (*(v32 + 8))(v31, v34);
  v37 = v58;
  v38 = *(v58 + 16);
  v39 = v56;
  v40 = v66;
  v41 = v59;
  v38(v56, v66, v59);
  v42 = v64;
  sub_10000E4A4(v35, v64, &qword_1000AEBA0, &qword_10008AE48);
  v43 = v65;
  v38(v65, v39, v41);
  v44 = sub_100001EEC(&qword_1000AEBC8, &qword_10008AE58);
  v45 = &v43[*(v44 + 48)];
  *v45 = 0;
  v45[8] = 1;
  sub_10000E4A4(v42, &v43[*(v44 + 64)], &qword_1000AEBA0, &qword_10008AE48);
  sub_10000649C(v35, &qword_1000AEBA0, &qword_10008AE48);
  v46 = *(v37 + 8);
  v46(v40, v41);
  sub_10000649C(v42, &qword_1000AEBA0, &qword_10008AE48);
  return (v46)(v39, v41);
}

uint64_t sub_10003C31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  __chkstk_darwin(v9 - 8);
  v11 = &v24[-v10 - 8];
  v12 = sub_10008742C();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_1000873FC();
  v14 = type metadata accessor for CarrySettingsDetailView(0, a2, a3, v13);
  (*(*(v14 - 8) + 16))(v24, a1, v14);
  v15 = sub_1000873EC();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = &protocol witness table for MainActor;
  *(v16 + 32) = a2;
  *(v16 + 40) = a3;
  v17 = *(a1 + 144);
  *(v16 + 176) = *(a1 + 128);
  *(v16 + 192) = v17;
  *(v16 + 208) = *(a1 + 160);
  v18 = *(a1 + 80);
  *(v16 + 112) = *(a1 + 64);
  *(v16 + 128) = v18;
  v19 = *(a1 + 112);
  *(v16 + 144) = *(a1 + 96);
  *(v16 + 160) = v19;
  v20 = *(a1 + 16);
  *(v16 + 48) = *a1;
  *(v16 + 64) = v20;
  v21 = *(a1 + 48);
  *(v16 + 80) = *(a1 + 32);
  *(v16 + 96) = v21;
  sub_100016C64(0, 0, v11, a5, v16);
}

uint64_t sub_10003C4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[17] = a4;
  sub_1000873FC();
  v6[20] = sub_1000873EC();
  v8 = sub_1000873DC();
  v6[21] = v8;
  v6[22] = v7;

  return _swift_task_switch(sub_10003C558, v8, v7);
}

uint64_t sub_10003C558()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  *(v0 + 16) = *(v2 + 80);
  *(v0 + 32) = *(v2 + 80);
  *(v0 + 216) = 1;
  *(v0 + 112) = *(v0 + 24);
  sub_10000E4A4(v0 + 112, v0 + 120, &qword_1000AEBD8, &qword_10008AE80);
  *(v0 + 184) = sub_100001EEC(&qword_1000AE068, &qword_10008AD10);
  sub_100086E9C();
  *(v0 + 192) = *(v2 + 8);
  v3 = *(v1 + 256);
  swift_unknownObjectRetain();
  v8 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 200) = v4;
  *v4 = v0;
  v4[1] = sub_10003C6F4;
  v6 = *(v0 + 144);
  v5 = *(v0 + 152);

  return v8(v6, v5);
}

uint64_t sub_10003C6F4()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  swift_unknownObjectRelease();
  v3 = *(v2 + 176);
  v4 = *(v2 + 168);
  if (v0)
  {
    v5 = sub_10003C8E4;
  }

  else
  {
    v5 = sub_10003C84C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10003C84C()
{

  *(v0 + 96) = *(v0 + 16);
  *(v0 + 219) = 0;
  sub_100086E9C();
  sub_10000649C(v0 + 16, &qword_1000AE068, &qword_10008AD10);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003C8E4()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 136);

  *(v0 + 48) = *(v0 + 16);
  *(v0 + 217) = 0;
  sub_100086E9C();
  sub_10000649C(v0 + 16, &qword_1000AE068, &qword_10008AD10);
  *(v0 + 64) = *(v2 + 48);
  *(v0 + 218) = 1;
  sub_100086E9C();
  *(v0 + 80) = *(v2 + 64);
  *(v0 + 128) = v1;
  sub_100001EEC(&qword_1000AEBD0, &unk_10008AE60);
  sub_100086E9C();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10003C9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21[1] = a5;
  v8 = sub_100001EEC(&qword_1000AE0A0, &qword_100088EB0);
  __chkstk_darwin(v8 - 8);
  v10 = v21 - v9;
  sub_100086AFC();
  sub_10008684C();
  v11 = sub_10008685C();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v13 = *(a1 + 144);
  *(v12 + 160) = *(a1 + 128);
  *(v12 + 176) = v13;
  *(v12 + 192) = *(a1 + 160);
  v14 = *(a1 + 80);
  *(v12 + 96) = *(a1 + 64);
  *(v12 + 112) = v14;
  v15 = *(a1 + 112);
  *(v12 + 128) = *(a1 + 96);
  *(v12 + 144) = v15;
  v16 = *(a1 + 16);
  *(v12 + 32) = *a1;
  *(v12 + 48) = v16;
  v17 = *(a1 + 48);
  *(v12 + 64) = *(a1 + 32);
  *(v12 + 80) = v17;
  v19 = type metadata accessor for CarrySettingsDetailView(0, a2, a3, v18);
  (*(*(v19 - 8) + 16))(v22, a1, v19);
  return sub_100086EDC();
}

uint64_t sub_10003CBA4@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_100086AEC();
  __chkstk_darwin(v3 - 8);
  sub_100086ADC();
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_100086ACC(v9);
  sub_100001EEC(&qword_1000AEBD0, &unk_10008AE60);
  sub_100086E8C();
  v10._countAndFlagsBits = sub_100037334(v8);
  sub_100086ABC(v10);

  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  sub_100086ACC(v11);
  sub_100086B0C();
  result = sub_100086CBC();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_10003CCDC@<X0>(void (*a1)(char *, char *, uint64_t)@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v50 = a1;
  v52 = a3;
  v57 = sub_100001EEC(&qword_1000AEB08, &qword_10008ACE0);
  v61 = *(v57 - 8);
  v4 = __chkstk_darwin(v57);
  v56 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v55 = &v41 - v6;
  v51 = sub_100001EEC(&qword_1000AEB10, &qword_10008ACE8);
  v60 = *(v51 - 8);
  v7 = __chkstk_darwin(v51);
  v59 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v41 - v9;
  v11 = sub_100001EEC(&qword_1000AEB18, &qword_10008ACF0);
  v53 = *(v11 - 8);
  v54 = v11;
  v12 = __chkstk_darwin(v11);
  v58 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v41 - v14;
  v16 = sub_100001EEC(&qword_1000AEB20, &qword_10008ACF8);
  v49 = *(v16 - 8);
  v17 = v49;
  v18 = __chkstk_darwin(v16);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v41 - v21;
  v24 = type metadata accessor for CarrySettingsDetailView(0, v50, a2, v23);
  v48 = v22;
  sub_1000374F0(v24);
  v46 = v15;
  sub_10003B7C0(v24);
  v45 = v10;
  sub_10003911C(v24);
  v25 = v55;
  sub_10003B390(v24, v55);
  v41 = *(v17 + 16);
  v47 = v20;
  v44 = v16;
  v41(v20, v22, v16);
  v50 = *(v53 + 16);
  v50(v58, v15, v54);
  v43 = *(v60 + 16);
  v26 = v51;
  v43(v59, v10, v51);
  v42 = *(v61 + 16);
  v27 = v57;
  v42(v56, v25, v57);
  v28 = v52;
  v41(v52, v20, v16);
  v29 = sub_100001EEC(&qword_1000AEB28, &unk_10008AD00);
  v30 = v54;
  v50(&v28[v29[12]], v58, v54);
  v31 = &v28[v29[16]];
  v32 = v28;
  v33 = v26;
  v43(v31, v59, v26);
  v34 = v56;
  v42(&v32[v29[20]], v56, v27);
  v35 = *(v61 + 8);
  v61 += 8;
  v35(v55, v27);
  v36 = *(v60 + 8);
  v60 += 8;
  v36(v45, v33);
  v37 = *(v53 + 8);
  v37(v46, v30);
  v38 = *(v49 + 8);
  v39 = v44;
  v38(v48, v44);
  v35(v34, v57);
  v36(v59, v33);
  v37(v58, v30);
  return (v38)(v47, v39);
}

uint64_t sub_10003D2D4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_10003D2E0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v9 = &v26 - v8;
  v10 = sub_10003746C(0);
  v44 = v11;
  v45 = v10;
  v46 = 0;
  sub_100086E7C();
  v42 = v47;
  v41 = v48;
  v46 = 0;
  sub_100086E7C();
  v40 = v47;
  v39 = v48;
  v12 = sub_10003746C(0);
  v37 = v13;
  v38 = v12;
  v46 = 0;
  sub_100086E7C();
  v36 = v47;
  v35 = v48;
  v46 = 0;
  sub_100086E7C();
  v34 = v47;
  v33 = v48;
  v14 = sub_10003746C(0);
  v31 = v15;
  v32 = v14;
  v46 = 0;
  sub_100086E7C();
  v30 = v47;
  v29 = v48;
  v46 = 0;
  sub_100086E7C();
  v28 = v47;
  v27 = v48;
  swift_unknownObjectRetain();
  v16 = sub_1000868FC();
  v18 = v17;
  sub_10008675C();
  v19 = swift_allocObject();
  v20 = v43;
  *(v19 + 16) = a2;
  *(v19 + 24) = v20;
  swift_getAssociatedConformanceWitness();
  v21 = sub_10008682C();

  result = (*(v7 + 8))(v9, AssociatedTypeWitness);
  *a4 = v16;
  *(a4 + 8) = v18;
  v23 = v44;
  *(a4 + 16) = v45;
  *(a4 + 24) = v23;
  *(a4 + 32) = v42;
  *(a4 + 40) = v41;
  *(a4 + 48) = v40;
  v24 = v38;
  *(a4 + 56) = v39;
  *(a4 + 64) = v24;
  *(a4 + 72) = v37;
  *(a4 + 80) = v36;
  *(a4 + 88) = v35;
  *(a4 + 96) = v34;
  v25 = v32;
  *(a4 + 104) = v33;
  *(a4 + 112) = v25;
  *(a4 + 120) = v31;
  *(a4 + 128) = v30;
  *(a4 + 136) = v29;
  *(a4 + 144) = v28;
  *(a4 + 152) = v27;
  *(a4 + 160) = v21;
  return result;
}

uint64_t sub_10003D614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_10003D650(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_10003D68C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_10003D6D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10003D7FC()
{
  result = qword_1000AEB30;
  if (!qword_1000AEB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEB30);
  }

  return result;
}

unint64_t sub_10003D85C()
{
  result = qword_1000AEB40;
  if (!qword_1000AEB40)
  {
    sub_100003200(&qword_1000AEB38, &qword_10008AD18);
    sub_100006454(&qword_1000AEB48, &qword_1000AEB50, &qword_10008AD20, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEB40);
  }

  return result;
}

uint64_t sub_10003D914@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 200))(*(a1 + a2 - 16));
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_10003D95C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v7 = *a1;
  v6 = a1[1];
  v8 = *(v5 + 208);

  return v8(v7, v6, v4, v5);
}

__n128 sub_10003D9D8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_10003D9F0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 152))(*(a1 + a2 - 16));
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_10003DA38(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v7 = *a1;
  v6 = a1[1];
  v8 = *(v5 + 160);

  return v8(v7, v6, v4, v5);
}

uint64_t sub_10003DAE4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 112))(*(a1 + a2 - 16));
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_10003DB2C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v7 = *a1;
  v6 = a1[1];
  v8 = *(v5 + 120);

  return v8(v7, v6, v4, v5);
}

unint64_t sub_10003DC38()
{
  result = qword_1000AEBB0;
  if (!qword_1000AEBB0)
  {
    sub_100003200(&qword_1000AEB90, &qword_10008AE38);
    sub_100006454(&qword_1000AEBB8, &qword_1000AEB98, &qword_10008AE40, &protocol conformance descriptor for ProgressView<A, B>);
    sub_10003DCF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEBB0);
  }

  return result;
}

unint64_t sub_10003DCF0()
{
  result = qword_1000AEBC0;
  if (!qword_1000AEBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEBC0);
  }

  return result;
}

uint64_t sub_10003DD9C(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000324C;

  return sub_10003ADDC(a1, v6, v7, (v1 + 6), v4, v5);
}

uint64_t sub_10003DFF4(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002740;

  return sub_10003C4BC(a1, v6, v7, (v1 + 6), v4, v5);
}

uint64_t sub_10003E184()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10003E278(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000324C;

  return sub_100038CE8(a1, v6, v7, (v1 + 6), v4, v5);
}

uint64_t sub_10003E33C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10003E3E4(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000324C;

  return sub_1000388C0(a1, v6, v7, (v1 + 6), v4, v5);
}

uint64_t sub_10003E4A8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 48))(*(a1 + a2 - 16));
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_10003E4F0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v7 = *a1;
  v6 = a1[1];
  v8 = *(v5 + 56);

  return v8(v7, v6, v4, v5);
}

uint64_t sub_10003E57C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 72))(*(a1 + a2 - 16));
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_10003E5C4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v7 = *a1;
  v6 = a1[1];
  v8 = *(v5 + 80);

  return v8(v7, v6, v4, v5);
}

unint64_t sub_10003E644()
{
  result = qword_1000AEC58;
  if (!qword_1000AEC58)
  {
    sub_100003200(&qword_1000AEC60, &qword_10008AFF0);
    sub_100006454(&qword_1000AEC68, &qword_1000AEC70, qword_10008AFF8, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEC58);
  }

  return result;
}

uint64_t sub_10003E768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10008609C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10003E828(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_10008609C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ProfileListViewModel(uint64_t a1)
{
  result = qword_1000AECD0;
  if (!qword_1000AECD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003E918(uint64_t a1)
{
  sub_10003E9B4();
  if (v1 <= 0x3F)
  {
    sub_10003EA18(319);
    if (v2 <= 0x3F)
    {
      sub_10008609C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_10003E9B4()
{
  result = qword_1000AECE0;
  if (!qword_1000AECE0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000AECE0);
  }

  return result;
}

void sub_10003EA18(uint64_t a1)
{
  if (!qword_1000AECE8)
  {
    type metadata accessor for ProfileViewModel(255);
    v1 = sub_10008739C();
    if (!v2)
    {
      atomic_store(v1, &qword_1000AECE8);
    }
  }
}

uint64_t sub_10003EAB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_10008609C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10003EB58(uint64_t a1)
{

  sub_100001EEC(&qword_1000AE618, &qword_10008A0B0);
  sub_10008609C();
  sub_100001EEC(&qword_1000AED38, &unk_10008B0F8);
  sub_100006454(&qword_1000AED40, &qword_1000AE618, &qword_10008A0B0, &protocol conformance descriptor for [A]);
  sub_100006454(&qword_1000AED30, &qword_1000AED38, &unk_10008B0F8, &unk_10008C3A0);
  sub_10003EED8(&qword_1000AED48, type metadata accessor for ProfileListViewModel, &unk_10008B038);
  return sub_100086FAC();
}

uint64_t sub_10003ECB4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[3];
  sub_100001FB4(a1, v6);
  v7 = *(v5 + 8);

  v7(v6, v5);
  v8 = a1[3];
  v9 = a1[4];
  sub_100001FB4(a1, v8);
  (*(v9 + 16))(v8, v9);
  sub_100001EEC(&qword_1000AED38, &unk_10008B0F8);
  sub_1000064FC();
  result = sub_100086E6C();
  *a2 = v4;
  return result;
}

uint64_t sub_10003EDAC()
{
  sub_100001EEC(&qword_1000AED20, &qword_10008B0F0);
  sub_10003EE28();
  return sub_100086C6C();
}

unint64_t sub_10003EE28()
{
  result = qword_1000AED28;
  if (!qword_1000AED28)
  {
    sub_100003200(&qword_1000AED20, &qword_10008B0F0);
    sub_100006454(&qword_1000AED30, &qword_1000AED38, &unk_10008B0F8, &unk_10008C3A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AED28);
  }

  return result;
}

uint64_t sub_10003EED8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10003EF64(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_100030948(v3, v3);
  v4 = *(v3 - 8);
  swift_allocObject();
  v5 = sub_1000872EC();
  (*(v4 + 16))(v6, a1, v3);
  sub_100013630(v5, v3);
  sub_10008739C();
  swift_getWitnessTable();
  return sub_1000874EC();
}

uint64_t sub_10003F08C(uint64_t a1)
{
  if (!a1)
  {
    return 7104878;
  }

  v6 = a1;
  swift_errorRetain();
  sub_100001EEC(&unk_1000AEDF0, &qword_10008A0E0);
  sub_100001EEC(&qword_1000ADC10, &qword_100088740);
  if (swift_dynamicCast())
  {
    sub_100001F9C(v4, v7);
    sub_100001FB4(v7, v7[3]);
    v2 = sub_1000879CC();
    sub_100001FF8(v7);
    return v2;
  }

  else
  {
    v5 = 0;
    memset(v4, 0, sizeof(v4));
    sub_10000649C(v4, &qword_1000AEE00, &qword_100088748);
    v7[0] = a1;
    swift_errorRetain();
    return sub_10008716C();
  }
}

uint64_t sub_10003F344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_10003F36C, a4, 0);
}

uint64_t sub_10003F36C()
{
  sub_10003F3D4(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 8);

  return v1();
}

void sub_10003F3D4(void *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v35[0] = 0;
  v35[1] = 0xE000000000000000;
  sub_1000877DC(56);
  v38 = 0;
  v39 = 0xE000000000000000;
  v40._countAndFlagsBits = 0x72656375646F7250;
  v40._object = 0xE900000000000020;
  sub_1000871BC(v40);
  v10 = [a1 description];
  v11 = sub_10008715C();
  v13 = v12;

  v41._countAndFlagsBits = v11;
  v41._object = v13;
  sub_1000871BC(v41);

  v42._object = 0x800000010008F330;
  v42._countAndFlagsBits = 0xD000000000000013;
  sub_1000871BC(v42);
  v14 = [a2 description];
  v15 = sub_10008715C();
  v17 = v16;

  v43._countAndFlagsBits = v15;
  v43._object = v17;
  sub_1000871BC(v43);

  v44._countAndFlagsBits = 0x7265626D656D202CLL;
  v44._object = 0xE900000000000020;
  sub_1000871BC(v44);
  v18 = [a3 description];
  v19 = sub_10008715C();
  v21 = v20;

  v45._countAndFlagsBits = v19;
  v45._object = v21;
  sub_1000871BC(v45);

  v46._countAndFlagsBits = 0x6E6F70736572202CLL;
  v46._object = 0xEB00000000206573;
  sub_1000871BC(v46);
  if (a4)
  {
    v36 = sub_100023B40(0, &qword_1000AEE08, COMessageSessionResponse_ptr);
    v37 = sub_10004107C(&unk_1000AEE10, &qword_1000AEE08, COMessageSessionResponse_ptr);
    v35[0] = a4;
    v22 = *sub_100001FB4(v35, v36);
    v23 = a4;
    v24 = [v22 description];
    v25 = sub_10008715C();
    v27 = v26;

    sub_100001FF8(v35);
  }

  else
  {
    v27 = 0xE300000000000000;
    v25 = 7104878;
  }

  v47._countAndFlagsBits = v25;
  v47._object = v27;
  sub_1000871BC(v47);

  sub_10001640C(v38, v39);

  v28 = [a3 member];
  swift_beginAccess();
  v29 = *(v5 + 376);
  if ((v29 & 0xC000000000000001) == 0)
  {
    v33 = a2;
    goto LABEL_11;
  }

  if (v29 < 0)
  {
    v30 = *(v5 + 376);
  }

  else
  {
    v30 = v29 & 0xFFFFFFFFFFFFFF8;
  }

  v31 = a2;
  v32 = sub_1000878FC();
  if (!__OFADD__(v32, 1))
  {
    *(v5 + 376) = sub_100070538(v30, v32 + 1);
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *(v5 + 376);
    sub_100073200(a2, v28, isUniquelyReferenced_nonNull_native);
    *(v5 + 376) = v38;

    swift_endAccess();
    sub_10005A31C(a4, a3);
    return;
  }

  __break(1u);
}

uint64_t sub_10003F9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[22] = a8;
  v8[23] = v12;
  v8[20] = a6;
  v8[21] = a7;
  v8[18] = a4;
  v8[19] = a5;
  sub_100001EEC(&qword_1000AEDC8, &qword_10008C910);
  v8[24] = swift_task_alloc();

  return _swift_task_switch(sub_10003FA6C, a4, 0);
}

uint64_t sub_10003FA6C()
{
  v1 = 7104878;
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[19];
  sub_1000877DC(66);
  v38._countAndFlagsBits = 0x72656375646F7250;
  v38._object = 0xE900000000000020;
  sub_1000871BC(v38);
  v5 = [v4 description];
  v6 = sub_10008715C();
  v8 = v7;

  v39._countAndFlagsBits = v6;
  v39._object = v8;
  sub_1000871BC(v39);

  v40._object = 0x800000010008F310;
  v40._countAndFlagsBits = 0xD000000000000012;
  sub_1000871BC(v40);
  v9 = [v2 description];
  v10 = sub_10008715C();
  v12 = v11;

  v41._countAndFlagsBits = v10;
  v41._object = v12;
  sub_1000871BC(v41);

  v42._countAndFlagsBits = 0x616974696E69202CLL;
  v42._object = 0xEC00000020726F74;
  sub_1000871BC(v42);
  if (v3)
  {
    v13 = v0[21];
    v14 = sub_100023B40(0, &qword_1000AEDD0, COClusterMemberRoleSnapshot_ptr);
    v0[5] = v14;
    v15 = sub_10004107C(&qword_1000AEDD8, &qword_1000AEDD0, COClusterMemberRoleSnapshot_ptr);
    v0[2] = v13;
    v0[6] = v15;
    v16 = *sub_100001FB4(v0 + 2, v14);
    v17 = v13;
    v18 = [v16 description];
    v19 = sub_10008715C();
    v21 = v20;

    sub_100001FF8(v0 + 2);
  }

  else
  {
    v21 = 0xE300000000000000;
    v19 = 7104878;
  }

  v22 = v0[22];
  v43._countAndFlagsBits = v19;
  v43._object = v21;
  sub_1000871BC(v43);

  v44._countAndFlagsBits = 0x656369746F6E202CLL;
  v44._object = 0xE900000000000020;
  sub_1000871BC(v44);
  if (v22)
  {
    v23 = v0[22];
    v24 = sub_100023B40(0, &qword_1000AEDE0, COMessageSessionNotice_ptr);
    v0[10] = v24;
    v0[11] = sub_10004107C(&qword_1000AEDE8, &qword_1000AEDE0, COMessageSessionNotice_ptr);
    v0[7] = v23;
    v25 = *sub_100001FB4(v0 + 7, v24);
    v26 = v23;
    v27 = [v25 description];
    v1 = sub_10008715C();
    v29 = v28;

    sub_100001FF8(v0 + 7);
  }

  else
  {
    v29 = 0xE300000000000000;
  }

  v31 = v0[23];
  v30 = v0[24];
  v32 = v0[20];
  v45._countAndFlagsBits = v1;
  v45._object = v29;
  sub_1000871BC(v45);

  v46._countAndFlagsBits = 0x20726F727265202CLL;
  v46._object = 0xE800000000000000;
  sub_1000871BC(v46);
  v47._countAndFlagsBits = sub_10003F08C(v31);
  sub_1000871BC(v47);

  sub_10001640C(0, 0xE000000000000000);

  v33 = [v32 member];
  v0[25] = v33;
  swift_beginAccess();
  v34 = sub_1000703EC(v33);
  swift_endAccess();

  swift_beginAccess();
  sub_100070268(v33, v30);
  sub_10000649C(v30, &qword_1000AEDC8, &qword_10008C910);
  swift_endAccess();
  v35 = swift_task_alloc();
  v0[26] = v35;
  *v35 = v0;
  v35[1] = sub_10003FEA4;

  return sub_10005A8E8();
}

uint64_t sub_10003FEA4()
{
  v1 = *(*v0 + 144);

  return _swift_task_switch(sub_10003FFB4, v1, 0);
}

uint64_t sub_10003FFB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100040168(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return _swift_task_switch(sub_100040188, v2, 0);
}

uint64_t sub_100040188()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_1000877DC(47);

  v3 = [v2 description];
  v4 = sub_10008715C();
  v6 = v5;

  v15._countAndFlagsBits = v4;
  v15._object = v6;
  sub_1000871BC(v15);

  v16._object = 0x800000010008F2E0;
  v16._countAndFlagsBits = 0xD000000000000022;
  sub_1000871BC(v16);
  v7 = [v1 description];
  v8 = sub_10008715C();
  v10 = v9;

  v17._countAndFlagsBits = v8;
  v17._object = v10;
  sub_1000871BC(v17);

  sub_10001640C(0x72656375646F7250, 0xE900000000000020);

  v11 = [objc_allocWithZone(sub_1000864DC()) init];
  v12 = v0[1];

  return v12(1, v11);
}

uint64_t sub_100040498(void *a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v7 = a1;
  v8 = a2;

  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_100040570;

  return sub_100040168(v7, v8);
}

uint64_t sub_100040570(char a1, void *a2)
{
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v10 = *v2;

  (v5)[2](v5, a1 & 1, a2);
  _Block_release(v5);

  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_100040700()
{
  _Block_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_100040750()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100002740;

  return sub_100040498(v2, v3, v5, v4);
}

uint64_t sub_100040810(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10000324C;

  return v6();
}

uint64_t sub_1000408FC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100002740;

  return v7();
}

uint64_t sub_1000409E4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100040A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_100040D10(a3, v23 - v10);
  v12 = sub_10008742C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000649C(v11, &qword_1000AEDC0, &qword_100088E40);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_10008741C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1000873DC();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_10008717C() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_10000649C(a3, &qword_1000AEDC0, &qword_100088E40);

    return v21;
  }

LABEL_8:
  sub_10000649C(a3, &qword_1000AEDC0, &qword_100088E40);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_100040D10(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100040D80()
{

  return swift_deallocObject();
}

uint64_t sub_100040DB8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000324C;

  return sub_10001F74C(a1, v4);
}

uint64_t sub_100040E70(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100002740;

  return sub_10001F74C(a1, v4);
}

uint64_t sub_100040F28()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100040F90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000324C;

  return sub_10003F9BC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10004107C(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100023B40(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000410CC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10004112C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000324C;

  return sub_10003F344(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100041208(void *a1, void *a2)
{
  sub_1000877DC(30);

  v4 = [a1 description];
  v5 = sub_10008715C();
  v7 = v6;

  v14._countAndFlagsBits = v5;
  v14._object = v7;
  sub_1000871BC(v14);

  v15._object = 0x800000010008F3E0;
  v15._countAndFlagsBits = 0xD000000000000012;
  sub_1000871BC(v15);
  v8 = [a2 description];
  v9 = sub_10008715C();
  v11 = v10;

  v16._countAndFlagsBits = v9;
  v16._object = v11;
  sub_1000871BC(v16);

  sub_10001640C(0x206C656E6E616843, 0xE800000000000000);
}

void sub_10004133C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_1000877DC(62);
  v16._countAndFlagsBits = 0x6E61684320232323;
  v16._object = 0xEC000000206C656ELL;
  sub_1000871BC(v16);
  v7 = [a1 description];
  v8 = sub_10008715C();
  v10 = v9;

  v17._countAndFlagsBits = v8;
  v17._object = v10;
  sub_1000871BC(v17);

  v18._countAndFlagsBits = 0xD000000000000024;
  v18._object = 0x800000010008F3B0;
  sub_1000871BC(v18);
  v19._countAndFlagsBits = a2;
  v19._object = a3;
  sub_1000871BC(v19);
  v20._countAndFlagsBits = 0x20726F727265202CLL;
  v20._object = 0xE800000000000000;
  sub_1000871BC(v20);
  sub_100001EEC(&unk_1000AEDF0, &qword_10008A0E0);
  sub_1000878DC();
  type metadata accessor for BetaEnrollmentNetworkingSession();
  sub_100001EEC(&qword_1000AE538, &qword_100089C98);
  sub_10008716C();
  v11 = objc_allocWithZone(CULogHandle);
  v12 = sub_10008714C();
  v13 = sub_10008714C();

  v14 = [v11 initWithSubsystem:v12 category:v13];

  v15 = sub_10008714C();

  [v14 ulog:60 message:v15];
}

uint64_t sub_100041568(void *a1, void *a2, uint64_t a3)
{
  sub_1000877DC(62);
  v14._countAndFlagsBits = 0x72656375646F7250;
  v14._object = 0xE900000000000020;
  sub_1000871BC(v14);
  v5 = [a1 description];
  v6 = sub_10008715C();
  v8 = v7;

  v15._countAndFlagsBits = v6;
  v15._object = v8;
  sub_1000871BC(v15);

  v16._object = 0x800000010008F380;
  v16._countAndFlagsBits = 0xD000000000000027;
  sub_1000871BC(v16);
  v9 = [a2 description];
  v10 = sub_10008715C();
  v12 = v11;

  v17._countAndFlagsBits = v10;
  v17._object = v12;
  sub_1000871BC(v17);

  v18._countAndFlagsBits = 0x20726F727265202CLL;
  v18._object = 0xE800000000000000;
  sub_1000871BC(v18);
  sub_100001EEC(&unk_1000AEDF0, &qword_10008A0E0);
  sub_1000878DC();
  sub_10001640C(0, 0xE000000000000000);
}

uint64_t sub_100041740(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_100041764, v2, 0);
}

uint64_t sub_100041764()
{
  v1 = v0[4];
  sub_1000877DC(32);

  sub_10008609C();
  sub_100042D8C(&qword_1000AE420, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v7._countAndFlagsBits = sub_1000879CC();
  sub_1000871BC(v7);

  v8._countAndFlagsBits = 0x6669746E65646920;
  v8._object = 0xED00002073726569;
  sub_1000871BC(v8);
  sub_100042D8C(&qword_1000AE428, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v9._countAndFlagsBits = sub_1000874CC();
  sub_1000871BC(v9);

  sub_100016588(0x20676E6974746553, 0xEF204449656D6F68);

  v0[5] = *(v1 + 112);

  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_100041958;
  v4 = v0[2];
  v3 = v0[3];

  return sub_10005D0DC(v4, v3);
}

uint64_t sub_100041958()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {
    v3 = v2[4];

    return _swift_task_switch(sub_100041A94, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_100041A94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100041AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_100041B1C, 0, 0);
}

uint64_t sub_100041B1C()
{
  v1 = v0[6];
  v2 = v0[3];
  sub_1000877DC(18);
  v5._object = 0x800000010008F460;
  v5._countAndFlagsBits = 0xD000000000000010;
  sub_1000871BC(v5);
  v0[2] = v2;
  sub_1000879EC();
  sub_100016588(0, 0xE000000000000000);

  return _swift_task_switch(sub_100041BF8, v1, 0);
}

uint64_t sub_100041BF8()
{
  v0[7] = *(v0[6] + 112);

  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_100041CA8;
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];

  return sub_10005B490(v4, v2, v3);
}

uint64_t sub_100041CA8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100041DD8()
{
  v1 = *(*(v0 + 40) + 112);
  *(v0 + 48) = v1;

  return _swift_task_switch(sub_100041E50, v1, 0);
}

uint64_t sub_100041E50()
{
  v12 = v0;
  v1 = *(v0 + 48);
  swift_beginAccess();
  v2 = *(v1 + 368);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_10006F2DC(*(v2 + 16), 0);
    v5 = *(sub_100001EEC(&qword_1000AEA70, &unk_10008D060) - 8);
    v6 = sub_100036BFC(&v10, v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v3, v2);
    v7 = v10;

    sub_100023AA8(v7);
    if (v6 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_5:
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_1000877DC(18);

  v10 = 0xD000000000000010;
  v11 = 0x800000010008F440;
  sub_100001EEC(&qword_1000AEA70, &unk_10008D060);
  v14._countAndFlagsBits = sub_1000872DC();
  sub_1000871BC(v14);

  sub_10001640C(v10, v11);

  v8 = *(v0 + 8);

  return v8(v4);
}

uint64_t sub_10004202C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_100042050, 0, 0);
}

uint64_t sub_100042050()
{
  v1 = v0[6];
  v2 = v0[3];
  sub_1000877DC(20);
  v5._object = 0x800000010008F420;
  v5._countAndFlagsBits = 0xD000000000000012;
  sub_1000871BC(v5);
  v0[2] = v2;
  sub_1000879EC();
  sub_100016588(0, 0xE000000000000000);

  return _swift_task_switch(sub_10004212C, v1, 0);
}

uint64_t sub_10004212C()
{
  v0[7] = *(v0[6] + 112);

  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_100042DD4;
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];

  return sub_10005BBD4(v4, v2, v3);
}

uint64_t sub_1000421DC(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return _swift_task_switch(sub_100042200, v2, 0);
}

uint64_t sub_100042200()
{
  v1 = v0[6];
  sub_1000877DC(40);
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v7._object = 0x800000010008F400;
  v7._countAndFlagsBits = 0xD000000000000018;
  sub_1000871BC(v7);
  sub_10008672C();
  sub_1000878DC();
  v8._countAndFlagsBits = 0x67726174206E6F20;
  v8._object = 0xEC00000020737465;
  sub_1000871BC(v8);
  sub_100002238();
  v9._countAndFlagsBits = sub_1000872DC();
  sub_1000871BC(v9);

  sub_100016588(v0[2], v0[3]);

  v0[7] = *(v1 + 112);

  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_100042384;
  v4 = v0[4];
  v3 = v0[5];

  return sub_10005BDB4(v4, v3);
}

uint64_t sub_100042384()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {
    v3 = v2[6];

    return _swift_task_switch(sub_1000424C0, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1000424C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100042524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100002740;

  return sub_100041AF8(a1, a2, a3);
}

uint64_t sub_1000425D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10004265C;

  return sub_100041DB8();
}

uint64_t sub_10004265C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_10004277C()
{
  v1 = v0[2];
  sub_100016588(0x6D726177657250, 0xE700000000000000);
  v0[3] = *(v1 + 112);

  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_100042838;

  return sub_10005B860();
}

uint64_t sub_100042838()
{
  v2 = *v1;
  v2[5] = v0;

  if (v0)
  {
    v3 = v2[2];

    return _swift_task_switch(sub_100042974, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_100042974()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000429D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000324C;

  return sub_10004202C(a1, a2, a3);
}

uint64_t sub_100042A84(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100002740;

  return sub_1000421DC(a1, a2);
}

uint64_t sub_100042B28(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_100042B4C, v2, 0);
}

uint64_t sub_100042B4C()
{
  v0[5] = *(v0[4] + 112);

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_100042BF8;
  v3 = v0[2];
  v2 = v0[3];

  return sub_10005D774(v3, v2);
}

uint64_t sub_100042BF8()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {
    v3 = v2[4];

    return _swift_task_switch(sub_100042DD8, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_100042D34(uint64_t a1)
{
  result = sub_100042D8C(&qword_1000ADCA8, type metadata accessor for NetworkManager, &unk_100088B90);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100042D8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_100042DE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_100042E04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100042E4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100042ED0(uint64_t a1)
{
  v1 = sub_100086E4C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v4, enum case for Image.ResizingMode.stretch(_:), v1);
  v5 = sub_100086E5C();
  (*(v2 + 8))(v4, v1);
  sub_10008701C();
  sub_10008699C();
  v21 = 1;
  *&v20[54] = v22[3];
  *&v20[70] = v22[4];
  *&v20[86] = v22[5];
  *&v20[102] = v22[6];
  *&v20[6] = v22[0];
  *&v20[22] = v22[1];
  *&v20[38] = v22[2];
  v6 = sub_100086E2C();
  KeyPath = swift_getKeyPath();
  v15 = *&v20[64];
  v16 = *&v20[80];
  *v17 = *&v20[96];
  v11 = *v20;
  v12 = *&v20[16];
  v13 = *&v20[32];
  v9[1] = v5;
  v9[2] = 0;
  v10 = 1;
  v14 = *&v20[48];
  *&v17[14] = *&v20[110];
  v18 = KeyPath;
  v19 = v6;
  sub_100001EEC(&qword_1000AEEF0, &qword_10008B348);
  sub_100043824();
  return sub_100086F5C();
}

uint64_t sub_1000430FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000437E4(a1, v33);
  if (v34)
  {
    if (v34 != 1)
    {
      sub_100001F9C(v33, &v30);
      v6 = *&v31[8];
      v7 = *&v31[16];
      sub_100001FB4(&v30, *&v31[8]);
      v5 = sub_100059858(v6, v7);
      sub_100001FF8(&v30);
      goto LABEL_7;
    }

    v4 = sub_100086E3C();
  }

  else
  {
    v4 = *&v33[0];
  }

  v5 = sub_100042ED0(v4);

LABEL_7:
  v8 = sub_100086B4C();
  v19[0] = 1;
  sub_10004335C(a1, &v30);
  v23 = *&v31[16];
  v24 = *&v31[32];
  v25 = *&v31[48];
  v26 = *&v31[64];
  v21 = v30;
  v22 = *v31;
  v27[2] = *&v31[16];
  v27[3] = *&v31[32];
  v27[4] = *&v31[48];
  v27[5] = *&v31[64];
  v27[0] = v30;
  v27[1] = *v31;
  sub_10000E4A4(&v21, &v28, &qword_1000AEEE0, &qword_10008B308);
  sub_10000649C(v27, &qword_1000AEEE0, &qword_10008B308);
  *&v20[39] = v23;
  *&v20[55] = v24;
  *&v20[71] = v25;
  *&v20[87] = v26;
  *&v20[7] = v21;
  *&v20[23] = v22;
  v28 = v8;
  v29[0] = 1;
  v9 = *&v20[16];
  v10 = *&v20[32];
  *&v29[33] = *&v20[32];
  *&v29[17] = *&v20[16];
  v11 = *v20;
  *&v29[1] = *v20;
  *&v29[96] = *(&v26 + 1);
  v12 = *&v20[64];
  *&v29[81] = *&v20[80];
  v13 = *&v20[48];
  *&v29[65] = *&v20[64];
  *&v29[49] = *&v20[48];
  v14 = *&v29[16];
  *(a2 + 56) = *&v29[32];
  *(a2 + 40) = v14;
  v15 = v28;
  *(a2 + 24) = *v29;
  *(a2 + 8) = v15;
  v16 = *&v29[64];
  *(a2 + 104) = *&v29[80];
  v17 = *&v29[48];
  *(a2 + 88) = v16;
  *(a2 + 72) = v17;
  *&v31[33] = v10;
  *a2 = v5;
  *(a2 + 120) = *&v29[96];
  v30 = v8;
  v31[0] = 1;
  *&v31[17] = v9;
  *&v31[1] = v11;
  *&v32[15] = *&v20[95];
  *v32 = *&v20[80];
  *&v31[65] = v12;
  *&v31[49] = v13;

  sub_10000E4A4(&v28, v19, &qword_1000AEEE8, &qword_10008B310);
  sub_10000649C(&v30, &qword_1000AEEE8, &qword_10008B310);
}

uint64_t sub_10004335C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000064FC();

  v3 = sub_100086CCC();
  v36 = v4;
  v37 = v3;
  v34 = v5;
  v38 = v6;
  KeyPath = swift_getKeyPath();
  if (a1[7])
  {

    v7 = sub_100086CCC();
    v9 = v8;
    v11 = v10;
    sub_100086BAC();
    sub_100086C9C();
    sub_100006550(v7, v9, v11 & 1);
  }

  v33 = sub_100086F5C();
  if (a1[11])
  {

    v12 = sub_100086CCC();
    v14 = v13;
    v16 = v15;
    sub_100086C1C();
    v17 = sub_100086CAC();
    v19 = v18;
    v21 = v20;

    sub_100006550(v12, v14, v16 & 1);

    sub_100086BAC();
    v22 = v17;
    v23 = v19;
    v24 = sub_100086C9C();
    v26 = v25;
    LOBYTE(v12) = v27;
    v29 = v28;
    sub_100006550(v22, v23, v21 & 1);

    v30 = v12 & 1;
    sub_100006568(v24, v26, v12 & 1);
  }

  else
  {
    v24 = 0;
    v26 = 0;
    v30 = 0;
    v29 = 0;
  }

  sub_100006568(v37, v36, v34 & 1);

  sub_1000439F4(v24, v26, v30, v29);
  sub_100043A38(v24, v26, v30, v29);
  *a2 = v37;
  *(a2 + 8) = v36;
  *(a2 + 16) = v34 & 1;
  *(a2 + 24) = v38;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = v33;
  *(a2 + 64) = v24;
  *(a2 + 72) = v26;
  *(a2 + 80) = v30;
  *(a2 + 88) = v29;
  sub_100043A38(v24, v26, v30, v29);

  sub_100006550(v37, v36, v34 & 1);
}

double sub_1000436B0@<D0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_100086A9C();
  v22 = 1;
  sub_1000430FC(v3, &v13);
  v27 = v17;
  v28 = v18;
  v29 = v19;
  v30 = v20;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v26 = v16;
  v31[0] = v13;
  v31[1] = v14;
  v31[2] = v15;
  v31[3] = v16;
  v31[4] = v17;
  v31[5] = v18;
  v31[6] = v19;
  v31[7] = v20;
  sub_10000E4A4(&v23, &v12, &qword_1000AEED8, &qword_10008B300);
  sub_10000649C(v31, &qword_1000AEED8, &qword_10008B300);
  *&v21[71] = v27;
  *&v21[87] = v28;
  *&v21[103] = v29;
  *&v21[119] = v30;
  *&v21[7] = v23;
  *&v21[23] = v24;
  *&v21[39] = v25;
  *&v21[55] = v26;
  v6 = *&v21[64];
  *(a2 + 97) = *&v21[80];
  v7 = *&v21[112];
  *(a2 + 113) = *&v21[96];
  *(a2 + 129) = v7;
  v8 = *v21;
  *(a2 + 33) = *&v21[16];
  result = *&v21[32];
  v10 = *&v21[48];
  *(a2 + 49) = *&v21[32];
  *(a2 + 65) = v10;
  *(a2 + 81) = v6;
  v11 = v22;
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = v11;
  *(a2 + 144) = *&v21[127];
  *(a2 + 17) = v8;
  return result;
}

unint64_t sub_100043824()
{
  result = qword_1000AEEF8;
  if (!qword_1000AEEF8)
  {
    sub_100003200(&qword_1000AEEF0, &qword_10008B348);
    sub_1000438DC();
    sub_100006454(&qword_1000AEF20, &qword_1000AEF28, &qword_10008B360, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEEF8);
  }

  return result;
}

unint64_t sub_1000438DC()
{
  result = qword_1000AEF00;
  if (!qword_1000AEF00)
  {
    sub_100003200(&qword_1000AEF08, &unk_10008B350);
    sub_100043968();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEF00);
  }

  return result;
}

unint64_t sub_100043968()
{
  result = qword_1000AEF10;
  if (!qword_1000AEF10)
  {
    sub_100003200(&qword_1000AEF18, &unk_10008BD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEF10);
  }

  return result;
}

uint64_t sub_1000439F4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100006568(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100043A38(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100006550(result, a2, a3 & 1);
  }

  return result;
}

__n128 sub_100043A7C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100043A90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100043ACC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_100043B18(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_100043B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10008756C();
  swift_getWitnessTable();
  sub_10008723C();
  return v5;
}

uint64_t sub_100043C3C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  result = (*(*(v2 + 24) + 8))(*(v2 + 16), *(v2 + 24));
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = result;
  }

  v8 = __OFADD__(v4, v7);
  v9 = v4 + v7;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    *a2 = v9;
  }

  return result;
}

void sub_100043CB4(uint64_t a1)
{
  sub_100044458(319);
  if (v1 <= 0x3F)
  {
    sub_10008672C();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        sub_1000444B0();
        if (v4 <= 0x3F)
        {
          sub_100044500(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_100043D8C(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1000864CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(sub_10008672C() - 8);
  v11 = v10;
  v12 = *(v10 + 84);
  if (v12 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = *(*(a3 + 16) - 8);
  v15 = *(v14 + 84);
  v16 = *(v10 + 80);
  v17 = *(v10 + 64);
  v18 = *(v14 + 80);
  if (v13 <= v15)
  {
    v13 = *(v14 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v13;
  }

  if (v8)
  {
    v20 = *(v7 + 64);
  }

  else
  {
    v20 = *(v7 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v21 = v20 + v16;
  v22 = v17 + 7;
  v23 = v18 + 128;
  if (v19 < a2)
  {
    v24 = ((*(v14 + 64) + ((v23 + ((v22 + (v21 & ~v16)) & 0xFFFFFFFFFFFFFFF8)) & ~v18) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
    v25 = v24 & 0xFFFFFFF8;
    if ((v24 & 0xFFFFFFF8) != 0)
    {
      v26 = 2;
    }

    else
    {
      v26 = a2 - v19 + 1;
    }

    if (v26 >= 0x10000)
    {
      v27 = 4;
    }

    else
    {
      v27 = 2;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    if (v26 >= 2)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    if (v28 > 1)
    {
      if (v28 == 2)
      {
        v29 = *(a1 + v24);
        if (v29)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v29 = *(a1 + v24);
        if (v29)
        {
          goto LABEL_31;
        }
      }
    }

    else if (v28)
    {
      v29 = *(a1 + v24);
      if (v29)
      {
LABEL_31:
        v30 = v29 - 1;
        if (v25)
        {
          v30 = 0;
          v31 = *a1;
        }

        else
        {
          v31 = 0;
        }

        return v19 + (v31 | v30) + 1;
      }
    }
  }

  if (v9 == v19)
  {
    if (v8 >= 2)
    {
      v35 = (*(v7 + 48))(a1, v8, v6);
      if (v35 >= 2)
      {
        return v35 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v33 = (a1 + v21) & ~v16;
  if (v12 == v19)
  {
    v34 = *(v11 + 48);

    return v34(v33);
  }

  else
  {
    v36 = (v22 + v33) & 0xFFFFFFFFFFFFFFF8;
    if ((v13 & 0x80000000) != 0)
    {
      v38 = *(v14 + 48);

      return v38((v23 + v36) & ~v18, v15);
    }

    else
    {
      v37 = *(v36 + 40);
      if (v37 >= 0xFFFFFFFF)
      {
        LODWORD(v37) = -1;
      }

      return (v37 + 1);
    }
  }
}

double sub_1000440BC(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1000864CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = 0;
  v13 = *(sub_10008672C() - 8);
  v15 = v13;
  v16 = *(v13 + 84);
  if (v16 <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = *(v13 + 84);
  }

  v18 = *(a4 + 16);
  v19 = *(v18 - 8);
  v20 = *(v19 + 84);
  v21 = *(v13 + 80);
  v22 = *(v13 + 64);
  v23 = *(v19 + 80);
  if (v17 <= v20)
  {
    v24 = *(v19 + 84);
  }

  else
  {
    v24 = v17;
  }

  if (v24 <= 0x7FFFFFFF)
  {
    v25 = 0x7FFFFFFF;
  }

  else
  {
    v25 = v24;
  }

  if (v10)
  {
    v26 = *(v9 + 64);
  }

  else
  {
    v26 = *(v9 + 64) + 1;
  }

  v27 = v26 + v21;
  v28 = ((*(v19 + 64) + ((v23 + 128 + ((v22 + 7 + (v27 & ~v21)) & 0xFFFFFFFFFFFFFFF8)) & ~v23) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v25 < a3)
  {
    if (((*(v19 + 64) + ((v23 + 128 + ((v22 + 7 + (v27 & ~v21)) & 0xFFFFFFF8)) & ~v23) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v29 = a3 - v25 + 1;
    }

    else
    {
      v29 = 2;
    }

    if (v29 >= 0x10000)
    {
      v30 = 4;
    }

    else
    {
      v30 = 2;
    }

    if (v29 < 0x100)
    {
      v30 = 1;
    }

    if (v29 >= 2)
    {
      v12 = v30;
    }

    else
    {
      v12 = 0;
    }
  }

  if (a2 > v25)
  {
    if (((*(v19 + 64) + ((v23 + 128 + ((v22 + 7 + (v27 & ~v21)) & 0xFFFFFFF8)) & ~v23) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v31 = a2 - v25;
    }

    else
    {
      v31 = 1;
    }

    if (((*(v19 + 64) + ((v23 + 128 + ((v22 + 7 + (v27 & ~v21)) & 0xFFFFFFF8)) & ~v23) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v32 = ~v25 + a2;
      bzero(a1, v28);
      *a1 = v32;
    }

    if (v12 > 1)
    {
      if (v12 == 2)
      {
        *(a1 + v28) = v31;
      }

      else
      {
        *(a1 + v28) = v31;
      }
    }

    else if (v12)
    {
      *(a1 + v28) = v31;
    }

    return result;
  }

  if (v12 <= 1)
  {
    if (v12)
    {
      *(a1 + v28) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_46;
    }

LABEL_45:
    if (!a2)
    {
      return result;
    }

    goto LABEL_46;
  }

  if (v12 == 2)
  {
    *(a1 + v28) = 0;
    goto LABEL_45;
  }

  *(a1 + v28) = 0;
  if (!a2)
  {
    return result;
  }

LABEL_46:
  if (v11 == v25)
  {
    v33 = *(v9 + 56);
    v34 = (a2 + 1);
    v35 = a1;
    v36 = v10;
    v18 = v8;
LABEL_48:

    v33(v35, v34, v36, v18);
    return result;
  }

  v37 = (a1 + v27) & ~v21;
  if (v16 != v25)
  {
    v39 = (v22 + 7 + v37) & 0xFFFFFFFFFFFFFFF8;
    if ((v24 & 0x80000000) == 0)
    {
      if ((a2 & 0x80000000) != 0)
      {
        *(v39 + 120) = 0;
        result = 0.0;
        *(v39 + 104) = 0u;
        *(v39 + 88) = 0u;
        *(v39 + 72) = 0u;
        *(v39 + 56) = 0u;
        *(v39 + 40) = 0u;
        *(v39 + 24) = 0u;
        *(v39 + 8) = 0u;
        *v39 = a2 & 0x7FFFFFFF;
      }

      else
      {
        *(v39 + 40) = (a2 - 1);
      }

      return result;
    }

    v33 = *(v19 + 56);
    v35 = ((v23 + 128 + v39) & ~v23);
    v34 = a2;
    v36 = v20;
    goto LABEL_48;
  }

  v38 = *(v15 + 56);

  v38(v37, a2);
  return result;
}

void sub_100044458(uint64_t a1)
{
  if (!qword_1000AEFC0)
  {
    sub_1000864CC();
    v1 = sub_10008767C();
    if (!v2)
    {
      atomic_store(v1, &qword_1000AEFC0);
    }
  }
}

void sub_1000444B0()
{
  if (!qword_1000AEFC8)
  {
    v0 = sub_10008767C();
    if (!v1)
    {
      atomic_store(v0, &qword_1000AEFC8);
    }
  }
}

void sub_100044500(uint64_t a1)
{
  if (!qword_1000AEFD0)
  {
    sub_100003200(&qword_1000ADE30, &qword_100088A48);
    v1 = sub_10008767C();
    if (!v2)
    {
      atomic_store(v1, &qword_1000AEFD0);
    }
  }
}

uint64_t sub_100044564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = _s11DeviceModelVMa(0, a2, a3, a4);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v30 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v36 = &v29 - v10;
  __chkstk_darwin(v9);
  v33 = &v29 - v11;
  v37 = sub_10008739C();
  v12 = sub_10008708C();
  v44 = v12;
  v43 = sub_10008709C();
  if (sub_10008738C())
  {
    v29 = v7;
    v13 = 0;
    v38 = (v6 + 16);
    v34 = (v6 + 8);
    v35 = (v6 + 32);
    v14 = v33;
    v31 = a1;
    v32 = v6;
    v15 = v36;
    while (1)
    {
      v18 = sub_10008734C();
      sub_1000872FC();
      if (v18)
      {
        v19 = *(v6 + 16);
        v19(v14, (a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v13), v5);
        v20 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        result = sub_10008780C();
        if (v29 != 8)
        {
          __break(1u);
          return result;
        }

        v39 = result;
        v19 = *v38;
        (*v38)(v14, &v39, v5);
        swift_unknownObjectRelease();
        v20 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_20:
          __break(1u);
          return v44;
        }
      }

      (*v35)(v15, v14, v5);
      v21 = &v15[*(v5 + 40)];
      v22 = v21[1];
      if (v22)
      {
        goto LABEL_11;
      }

      v22 = v21[9];
      if (v22)
      {
        break;
      }

      v26 = v19;
      v27 = v36;
      v26(v30, v36, v5);
      v15 = v27;
      sub_10008737C();
      (*v34)(v27, v5);
LABEL_5:
      ++v13;
      if (v20 == sub_10008738C())
      {
        return v44;
      }
    }

    v21 += 8;
LABEL_11:
    v23 = *v21;

    v39 = v23;
    v40 = v22;

    sub_1000870FC();

    if (v41)
    {
    }

    else
    {

      v41 = sub_10008709C();
      v39 = v23;
      v40 = v22;
      sub_1000870DC();
      sub_10008710C();
    }

    v41 = v23;
    v42 = v22;
    sub_1000870DC();
    v24 = sub_1000870EC();
    if (*v25)
    {
      v16 = v19;
      v17 = v36;
      v16(v30, v36, v5);
      sub_10008737C();
      v24(&v39, 0);
      a1 = v31;
      v6 = v32;
    }

    else
    {
      v24(&v39, 0);
      a1 = v31;
      v6 = v32;
      v17 = v36;
    }

    (*v34)(v17, v5);
    v14 = v33;
    v15 = v17;
    goto LABEL_5;
  }

  return v12;
}

unint64_t sub_1000449F8(int *a1)
{
  v3 = sub_100001EEC(&qword_1000AE9C0, &qword_10008A810);
  __chkstk_darwin(v3 - 8);
  v5 = &v68 - v4;
  v6 = sub_1000864CC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10006EC0C(0, 1, 1, _swiftEmptyArrayStorage);
  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_10006EC0C((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v13 = &v10[16 * v12];
  *(v13 + 4) = 0xD000000000000019;
  *(v13 + 5) = 0x800000010008F480;
  v14 = (v1 + a1[10]);
  v15 = v14[5];
  v76 = v14[4];
  v77 = v15;
  v16 = v14[7];
  v78 = v14[6];
  v79 = v16;
  v17 = v14[1];
  v72 = *v14;
  v73 = v17;
  v18 = v14[3];
  v74 = v14[2];
  v75 = v18;
  v19 = sub_100012C94();
  v22 = *(v10 + 2);
  v21 = *(v10 + 3);
  if (v22 >= v21 >> 1)
  {
    v68 = v19;
    v65 = v10;
    v66 = v20;
    v67 = sub_10006EC0C((v21 > 1), v22 + 1, 1, v65);
    v20 = v66;
    v10 = v67;
    v19 = v68;
  }

  *(v10 + 2) = v22 + 1;
  v23 = &v10[16 * v22];
  *(v23 + 4) = v19;
  *(v23 + 5) = v20;
  sub_1000450F8(v1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100045168(v5);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v70 = 0;
    v71 = 0xE000000000000000;
    sub_1000877DC(16);
    v80._countAndFlagsBits = 0x6962616C69617641;
    v80._object = 0xEE00203A7974696CLL;
    sub_1000871BC(v80);
    sub_1000878DC();
    v24 = v70;
    v25 = v71;
    v26 = v10;
    v27 = *(v10 + 2);
    v28 = v26;
    v29 = *(v26 + 3);
    if (v27 >= v29 >> 1)
    {
      v28 = sub_10006EC0C((v29 > 1), v27 + 1, 1, v28);
    }

    (*(v7 + 8))(v9, v6);
    *(v28 + 2) = v27 + 1;
    v30 = &v28[16 * v27];
    v10 = v28;
    *(v30 + 4) = v24;
    *(v30 + 5) = v25;
  }

  v70 = 0;
  v71 = 0xE000000000000000;
  v81._countAndFlagsBits = 0x203A6574617453;
  v81._object = 0xE700000000000000;
  sub_1000871BC(v81);
  sub_10008672C();
  sub_1000878DC();
  v31 = v70;
  v32 = v71;
  v34 = *(v10 + 2);
  v33 = *(v10 + 3);
  if (v34 >= v33 >> 1)
  {
    v10 = sub_10006EC0C((v33 > 1), v34 + 1, 1, v10);
  }

  *(v10 + 2) = v34 + 1;
  v35 = &v10[16 * v34];
  *(v35 + 4) = v31;
  *(v35 + 5) = v32;
  v36 = v1 + a1[12];
  if ((*(v36 + 8) & 1) == 0)
  {
    v37 = *v36;
    v70 = 0;
    v71 = 0xE000000000000000;
    sub_1000877DC(23);

    v70 = 0xD000000000000015;
    v71 = 0x800000010008F4C0;
    v69 = v37;
    v82._countAndFlagsBits = sub_1000879CC();
    sub_1000871BC(v82);

    v31 = v70;
    v38 = v71;
    v40 = *(v10 + 2);
    v39 = *(v10 + 3);
    if (v40 >= v39 >> 1)
    {
      v10 = sub_10006EC0C((v39 > 1), v40 + 1, 1, v10);
    }

    *(v10 + 2) = v40 + 1;
    v41 = &v10[16 * v40];
    *(v41 + 4) = v31;
    *(v41 + 5) = v38;
  }

  v42 = *(v1 + a1[13]);
  if (v42)
  {
    if (v42 >> 62)
    {
      if (!sub_10008793C())
      {
        goto LABEL_30;
      }

      v43 = sub_10008793C();
      if (!v43)
      {
        v47 = _swiftEmptyArrayStorage;
        goto LABEL_28;
      }

LABEL_19:
      v70 = _swiftEmptyArrayStorage;
      v44 = &v70;
      sub_10006F608(0, v43 & ~(v43 >> 63), 0);
      if (v43 < 0)
      {
        __break(1u);
        goto LABEL_35;
      }

      v68 = v10;
      v46 = 0;
      v47 = v70;
      do
      {
        if ((v42 & 0xC000000000000001) != 0)
        {
          v48 = sub_10008781C();
        }

        else
        {
          v48 = *(v42 + 8 * v46 + 32);
        }

        v49 = v48;
        v50 = [v48 description];
        v51 = sub_10008715C();
        v53 = v52;

        v70 = v47;
        v55 = v47[2];
        v54 = v47[3];
        if (v55 >= v54 >> 1)
        {
          sub_10006F608((v54 > 1), v55 + 1, 1);
          v47 = v70;
        }

        ++v46;
        v47[2] = v55 + 1;
        v56 = &v47[2 * v55];
        v56[4] = v51;
        v56[5] = v53;
      }

      while (v43 != v46);
      v10 = v68;
LABEL_28:
      v70 = v47;
      sub_100001EEC(&qword_1000AE2B0, &qword_10008D800);
      sub_100012FE8();
      v57 = sub_10008712C();
      v59 = v58;

      v70 = 0;
      v71 = 0xE000000000000000;
      sub_1000877DC(24);

      v70 = 0xD000000000000015;
      v71 = 0x800000010008F4A0;
      v83._countAndFlagsBits = v57;
      v83._object = v59;
      sub_1000871BC(v83);

      v84._countAndFlagsBits = 93;
      v84._object = 0xE100000000000000;
      sub_1000871BC(v84);
      v31 = v70;
      v42 = v71;
      v43 = *(v10 + 2);
      v45 = *(v10 + 3);
      v44 = (v43 + 1);
      if (v43 < v45 >> 1)
      {
LABEL_29:
        *(v10 + 2) = v44;
        v60 = &v10[16 * v43];
        *(v60 + 4) = v31;
        *(v60 + 5) = v42;
        goto LABEL_30;
      }

LABEL_35:
      v10 = sub_10006EC0C((v45 > 1), v44, 1, v10);
      goto LABEL_29;
    }

    v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v43)
    {
      goto LABEL_19;
    }
  }

LABEL_30:
  v70 = 60;
  v71 = 0xE100000000000000;
  v69 = v10;
  sub_100001EEC(&qword_1000AE2B0, &qword_10008D800);
  sub_100012FE8();
  v61 = sub_10008712C();
  v63 = v62;

  v85._countAndFlagsBits = v61;
  v85._object = v63;
  sub_1000871BC(v85);

  v86._countAndFlagsBits = 62;
  v86._object = 0xE100000000000000;
  sub_1000871BC(v86);
  return v70;
}

uint64_t sub_1000450F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EEC(&qword_1000AE9C0, &qword_10008A810);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100045168(uint64_t a1)
{
  v2 = sub_100001EEC(&qword_1000AE9C0, &qword_10008A810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*sub_1000451D0(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1000468C8(v6, a2, a3);
  return sub_100045258;
}

void sub_100045258(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t (*sub_1000452A4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = sub_10008609C();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  (*(v6 + 16))();
  v3[7] = sub_1000469D4(v3, v8);
  return sub_1000453BC;
}

void sub_1000453BC(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t sub_100045434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a2;
  v4[10] = v3;
  v4[8] = a1;
  v4[11] = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[12] = AssociatedTypeWitness;
  v4[13] = *(AssociatedTypeWitness - 8);
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_100045518, v3, 0);
}

uint64_t sub_100045518()
{
  v7 = v0;
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  *(v0 + 56) = *(v0 + 64);

  sub_1000877EC();
  swift_getAssociatedConformanceWitness();
  sub_10008799C();
  (*(v2 + 8))(v1, v3);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *(v0 + 48) = 0;
  swift_beginAccess();
  sub_10006C118(v0 + 40, v6);
  swift_endAccess();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100045674(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = sub_1000861CC();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  sub_100001EEC(&qword_1000AF048, &qword_10008B520);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v4 = sub_10008609C();
  v2[25] = v4;
  v2[26] = *(v4 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();

  return _swift_task_switch(sub_1000457E0, v1, 0);
}

uint64_t sub_1000457E0(uint64_t a1)
{
  v2 = v1[18];
  v3 = *(v2 + 16);
  if (!v3)
  {
LABEL_25:

    v61 = v1[1];

    return v61();
  }

  v4 = v1 + 2;
  v5 = v1 + 6;
  v6 = v1[26];
  v7 = v1[21];
  v8 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v9 = (v6 + 8);
  v71 = (v6 + 16);
  v66 = (v7 + 48);
  v67 = (v7 + 56);
  v64 = (v7 + 32);
  v62 = v7;
  v70 = *(v6 + 72);
  v65 = (v6 + 8);
  while (1)
  {
    v75 = v3;
    v12 = v1[27];
    v13 = v1[28];
    v14 = v1[25];
    sub_10008608C();
    v72 = sub_10008605C();
    v16 = v15;
    v17 = *v9;
    (*v9)(v13, v14);
    v73 = v8;
    (*v71)(v12, v8, v14);

    v74 = sub_100075AD8(v4);
    v18 = sub_1000452A4(v5);
    v20 = v19;
    v21 = sub_100001EEC(&qword_1000AEA78, &qword_10008D080);
    v22 = (*(*(v21 - 8) + 48))(v20, 1, v21);
    v23 = v1[25];
    if (!v22)
    {
      break;
    }

    v10 = v1[27];

    (v18)(v5, 0);
    v17(v10, v23);
    v11 = v73;
LABEL_4:
    (v74)(v4, 0);

    v8 = v11 + v70;
    v3 = v75 - 1;
    if (v75 == 1)
    {
      goto LABEL_25;
    }
  }

  v69 = v18;
  v24 = v1[28];
  v25 = v1[24];
  v26 = v1[20];

  sub_10008608C();
  sub_10008605C();
  v17(v24, v23);
  sub_1000861AC();
  v27 = *v67;
  (*v67)(v25, 0, 1, v26);
  v28 = sub_10008644C();
  v68 = sub_10008612C();
  v30 = v29;
  if ((*v66)(v25, 1, v26) == 1)
  {
    sub_10000649C(v1[24], &qword_1000AF048, &qword_10008B520);
    v31 = sub_10006E5B0(v72, v16);
    if (v32)
    {
      v33 = v31;
      v34 = v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = *v30;
      v76 = *v30;
      v5 = v1 + 6;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1000741D4();
        v36 = v76;
      }

      v37 = v1[23];
      v38 = v1[20];

      (*(v62 + 32))(v37, *(v36 + 56) + *(v62 + 72) * v33, v38);
      sub_100072A70(v33, v36);
      v39 = 0;
      *v30 = v36;
      v28 = v34;
    }

    else
    {
      v39 = 1;
      v5 = v1 + 6;
    }

    v51 = v1[23];
    v27(v51, v39, 1, v1[20]);

    sub_10000649C(v51, &qword_1000AF048, &qword_10008B520);
    v4 = v1 + 2;
    v9 = v65;
LABEL_24:
    v11 = v73;
    v59 = v1[27];
    v60 = v1[25];
    v68();
    v28();
    (v69)(v5, 0);
    v17(v59, v60);
    goto LABEL_4;
  }

  v63 = v28;
  v40 = *v64;
  (*v64)(v1[22], v1[24], v1[20]);
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v30;
  v77 = *v30;
  *v30 = 0x8000000000000000;
  v44 = sub_10006E5B0(v72, v16);
  v45 = *(v42 + 16);
  v46 = (v43 & 1) == 0;
  result = v45 + v46;
  if (__OFADD__(v45, v46))
  {
    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  v48 = v43;
  if (*(v42 + 24) >= result)
  {
    v9 = v65;
    if ((v41 & 1) == 0)
    {
      sub_1000741D4();
    }

    goto LABEL_19;
  }

  sub_100071A40(result, v41);
  v49 = sub_10006E5B0(v72, v16);
  v9 = v65;
  if ((v48 & 1) == (v50 & 1))
  {
    v44 = v49;
LABEL_19:
    v52 = v1[22];
    v53 = v1[20];
    if (v48)
    {

      v54 = v77;
      (*(v62 + 40))(v77[7] + *(v62 + 72) * v44, v52, v53);
    }

    else
    {
      v54 = v77;
      v77[(v44 >> 6) + 8] |= 1 << v44;
      v55 = (v77[6] + 16 * v44);
      *v55 = v72;
      v55[1] = v16;
      result = v40(v77[7] + *(v62 + 72) * v44, v52, v53);
      v56 = v77[2];
      v57 = __OFADD__(v56, 1);
      v58 = v56 + 1;
      if (v57)
      {
        goto LABEL_32;
      }

      v77[2] = v58;
    }

    *v30 = v54;

    v5 = v1 + 6;
    v4 = v1 + 2;
    v28 = v63;
    goto LABEL_24;
  }

  return sub_100087A5C();
}

uint64_t sub_100045E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a2;
  v4[15] = v3;
  v4[13] = a1;
  v4[16] = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[17] = AssociatedTypeWitness;
  v4[18] = *(AssociatedTypeWitness - 8);
  v4[19] = swift_task_alloc();

  return _swift_task_switch(sub_100045F64, v3, 0);
}

uint64_t sub_100045F64()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v0[12] = v0[13];

  sub_1000877EC();
  swift_getAssociatedConformanceWitness();
  sub_10008799C();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  sub_10006C438(v0 + 10, (v0 + 2));
  sub_100036E90((v0 + 2));
  sub_10000649C((v0 + 10), &qword_1000AEA68, &unk_10008CFB0);
  swift_endAccess();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000460BC()
{
  v1[5] = v0;
  v2 = sub_100001EEC(&qword_1000AF058, &qword_10008B580);
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_100001EEC(&qword_1000AF060, &qword_10008B588);
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000461F0, v0, 0);
}

uint64_t sub_1000461F0()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  swift_beginAccess();

  sub_100001EEC(&qword_1000AF068, &qword_10008B590);
  sub_1000867BC();
  swift_endAccess();
  sub_100001EEC(&qword_1000AF070, qword_10008B598);
  sub_100006454(&qword_1000AF078, &qword_1000AF058, &qword_10008B580, &protocol conformance descriptor for Published<A>.Publisher);
  sub_10008681C();
  (*(v6 + 8))(v3, v5);
  sub_100006454(&qword_1000AF080, &qword_1000AF060, &qword_10008B588, &protocol conformance descriptor for Publishers.Map<A, B>);
  v7 = sub_10008680C();

  (*(v2 + 8))(v1, v4);

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_1000463C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100002740;

  return sub_100045434(a1, a2, a3);
}

uint64_t sub_100046494()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000867DC();

  v1 = sub_10003459C(*(v0 + 16));
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100046558(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002740;

  return sub_100045674(a1);
}

uint64_t sub_1000465EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000324C;

  return sub_100045E80(a1, a2, a3);
}

uint64_t sub_1000466B4()
{
  sub_1000168F8(0xD00000000000002BLL, 0x800000010008F4E0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10004672C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10004674C, v1, 0);
}

uint64_t sub_10004674C()
{
  v1 = *(v0 + 16);

  sub_100075CE8(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000467CC@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();

  *a2 = v4;
  return result;
}

uint64_t sub_10004684C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000867EC();
}

void (*sub_1000468C8(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1000472FC(v7);
  v7[9] = sub_100046BA8(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_100046974;
}

void sub_100046974(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1000469D4(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = sub_10008609C();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[9] = v7;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v7 + 64));
  }

  v10 = v9;
  v5[10] = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v8 + 16))(v10, a2, v6);
  v5[11] = sub_100047324(v5);
  v5[12] = sub_100046DB4(v5 + 4, v10, isUniquelyReferenced_nonNull_native);
  return sub_100046B10;
}

void sub_100046B10(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_100046BA8(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_10006E5B0(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_100073E14();
      v13 = v21;
      goto LABEL_11;
    }

    sub_100071454(v18, a4 & 1);
    v13 = sub_10006E5B0(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_100087A5C();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_100046D00;
}

void sub_100046D00(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_100073500(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    v6 = v1[4];
    v7 = *v1[3];
    sub_100047440(*(v7 + 48) + 16 * v6);
    sub_1000726E0(v6, v7);
  }

  free(v1);
}

void (*sub_100046DB4(void *a1, uint64_t a2, char a3))(uint64_t a1, char a2)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x78uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a2;
  v7[1] = v3;
  v9 = sub_10008609C();
  v8[2] = v9;
  v10 = *(v9 - 8);
  v8[3] = v10;
  if (&_swift_coroFrameAlloc)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v10 + 64));
  }

  v8[4] = v11;
  v12 = sub_100001EEC(&qword_1000AEA78, &qword_10008D080);
  v8[5] = v12;
  v13 = *(v12 - 8);
  v14 = v13;
  v8[6] = v13;
  v15 = *(v13 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v8[7] = swift_coroFrameAlloc();
    v8[8] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v8[7] = malloc(*(v13 + 64));
    v8[8] = malloc(v15);
    v16 = malloc(v15);
  }

  v8[9] = v16;
  v17 = *(*(sub_100001EEC(&qword_1000AF050, &qword_10008B528) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v8[10] = swift_coroFrameAlloc();
    v8[11] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v8[10] = malloc(v17);
    v8[11] = malloc(v17);
    v18 = malloc(v17);
  }

  v19 = v18;
  v8[12] = v18;
  v20 = *v4;
  v22 = sub_10006E66C(a2);
  *(v8 + 112) = v21 & 1;
  v23 = *(v20 + 16);
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
    goto LABEL_26;
  }

  v26 = v21;
  v27 = *(v20 + 24);
  if (v27 < v25 || (a3 & 1) == 0)
  {
    if (v27 >= v25 && (a3 & 1) == 0)
    {
      sub_100073968();
      goto LABEL_21;
    }

    sub_100070D38(v25, a3 & 1);
    v28 = sub_10006E66C(a2);
    if ((v26 & 1) == (v29 & 1))
    {
      v22 = v28;
      goto LABEL_21;
    }

LABEL_26:
    result = sub_100087A5C();
    __break(1u);
    return result;
  }

LABEL_21:
  v8[13] = v22;
  if (v26)
  {
    sub_1000473C8(*(*v4 + 56) + *(v14 + 72) * v22, v19);
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  (*(v14 + 56))(v19, v30, 1, v12);
  return sub_1000470DC;
}

void sub_1000470DC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = (*(*a1 + 48) + 48);
  v5 = *(*a1 + 96);
  if (a2)
  {
    v6 = v2[10];
    sub_100047358(v5, v6);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 112);
    v9 = v2[10];
    if (v7 != 1)
    {
      v10 = v2[1];
      sub_1000473C8(v9, v2[8]);
      v11 = *v10;
      v12 = v2[13];
      v13 = v2[8];
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = v2[7];
        v15 = v2[4];
        (*(v2[3] + 16))(v15, *v2, v2[2]);
        sub_1000473C8(v13, v14);
        sub_100073408(v12, v15, v14, v11);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v16 = v2[11];
    sub_100047358(v5, v16);
    v17 = (*v4)(v16, 1, v3);
    v8 = *(v2 + 112);
    v9 = v2[11];
    if (v17 != 1)
    {
      v20 = v2[1];
      sub_1000473C8(v9, v2[9]);
      v11 = *v20;
      v12 = v2[13];
      v13 = v2[9];
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_1000473C8(v13, v11[7] + *(v2[6] + 72) * v12);
      goto LABEL_10;
    }
  }

  sub_10000649C(v9, &qword_1000AF050, &qword_10008B528);
  if (v8)
  {
    v18 = v2[13];
    v19 = *v2[1];
    (*(v2[3] + 8))(*(v19 + 48) + *(v2[3] + 72) * v18, v2[2]);
    sub_100072220(v18, v19);
  }

LABEL_10:
  v21 = v2[11];
  v22 = v2[12];
  v24 = v2[9];
  v23 = v2[10];
  v26 = v2[7];
  v25 = v2[8];
  v27 = v2[4];
  sub_10000649C(v22, &qword_1000AF050, &qword_10008B528);
  free(v22);
  free(v21);
  free(v23);
  free(v24);
  free(v25);
  free(v26);
  free(v27);

  free(v2);
}

uint64_t (*sub_1000472FC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_100047494;
}

uint64_t (*sub_100047324(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10004734C;
}

uint64_t sub_100047358(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EEC(&qword_1000AF050, &qword_10008B528);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000473C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EEC(&qword_1000AEA78, &qword_10008D080);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000474A8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000474CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
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

  v5 = v4 + 1;
  v6 = v4 - 2;
  if (v5 >= 4)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10004752C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void *sub_100047588(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t sub_1000475C4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1000475DC(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000475F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_100047640(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1000476C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100001EEC(&qword_1000AF098, &qword_10008B818);
  v58 = *(v4 - 8);
  __chkstk_darwin(v4);
  v55 = (&v47 - v5);
  v53 = sub_100001EEC(&qword_1000AF0A0, &qword_10008B820);
  v6 = __chkstk_darwin(v53);
  v54 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v47 - v8;
  v10 = sub_100001EEC(&qword_1000AF0A8, &qword_10008B828);
  v11 = __chkstk_darwin(v10 - 8);
  v57 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v47 - v13;

  v15 = sub_100086CBC();
  v18 = v15;
  v19 = v16;
  v56 = v20;
  v21 = v17;
  v22 = *(a1 + 3);
  v60[0] = *(a1 + 2);
  v60[1] = v22;
  if (*(&v60[0] + 1))
  {
    v51 = v15;
    v52 = v17;
    v49 = v4;
    v50 = v16;
    sub_10000E4A4(v60, v59, &qword_1000AF0B8, &qword_10008B838);

    v23 = sub_100086CBC();
    v25 = v24;
    v27 = v26;
    v59[0] = sub_100086BAC();
    v47 = sub_100086C9C();
    v29 = v28;
    v31 = v30;
    v48 = v32;
    v33 = v23;
    v19 = v50;
    sub_100006550(v33, v25, v27 & 1);

    KeyPath = swift_getKeyPath();
    v35 = &v9[*(v53 + 36)];
    v36 = *(sub_100001EEC(&qword_1000AF0C0, &qword_10008B870) + 28);
    v37 = enum case for Text.TruncationMode.middle(_:);
    v38 = sub_100086C8C();
    (*(*(v38 - 8) + 104))(v35 + v36, v37, v38);
    *v35 = swift_getKeyPath();
    *v9 = v47;
    *(v9 + 1) = v29;
    v39 = v31 & 1;
    v18 = v51;
    v21 = v52;
    v9[16] = v39;
    *(v9 + 3) = v48;
    *(v9 + 4) = KeyPath;
    *(v9 + 5) = 0x3FE8000000000000;
    v40 = v54;
    sub_10000E4A4(v9, v54, &qword_1000AF0A0, &qword_10008B820);
    v41 = v55;
    *v55 = 0;
    *(v41 + 8) = 1;
    v42 = sub_100001EEC(&qword_1000AF0C8, &qword_10008B8A8);
    sub_10000E4A4(v40, v41 + *(v42 + 48), &qword_1000AF0A0, &qword_10008B820);
    sub_10000649C(v9, &qword_1000AF0A0, &qword_10008B820);
    sub_10000649C(v40, &qword_1000AF0A0, &qword_10008B820);
    sub_100047EDC(v41, v14);
    (*(v58 + 56))(v14, 0, 1, v49);
  }

  else
  {
    (*(v58 + 56))(v14, 1, 1, v4);
  }

  v43 = v57;
  sub_10000E4A4(v14, v57, &qword_1000AF0A8, &qword_10008B828);
  *a2 = v18;
  *(a2 + 8) = v19;
  v44 = v56 & 1;
  *(a2 + 16) = v56 & 1;
  *(a2 + 24) = v21;
  *(a2 + 32) = 257;
  v45 = sub_100001EEC(&qword_1000AF0B0, &qword_10008B830);
  sub_10000E4A4(v43, a2 + *(v45 + 48), &qword_1000AF0A8, &qword_10008B828);
  sub_100006568(v18, v19, v44);

  sub_10000649C(v14, &qword_1000AF0A8, &qword_10008B828);
  sub_10000649C(v43, &qword_1000AF0A8, &qword_10008B828);
  sub_100006550(v18, v19, v44);
}

uint64_t sub_100047C20@<X0>(uint64_t a2@<X8>)
{
  v4 = v2[3];
  v10[2] = v2[2];
  v10[3] = v4;
  v10[4] = v2[4];
  v5 = v2[1];
  v10[0] = *v2;
  v10[1] = v5;
  *a2 = sub_100086A9C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v6 = sub_100001EEC(&qword_1000AF088, &qword_10008B7D8);
  sub_1000476C0(v10, a2 + *(v6 + 44));
  KeyPath = swift_getKeyPath();
  result = sub_100001EEC(&qword_1000AF090, &qword_10008B810);
  v9 = a2 + *(result + 36);
  *v9 = KeyPath;
  *(v9 + 8) = 1;
  *(v9 + 16) = 0;
  return result;
}

uint64_t sub_100047CD0@<X0>(uint64_t a1@<X8>)
{
  result = sub_100086A6C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100047D04@<X0>(uint64_t a1@<X8>)
{
  result = sub_100086A6C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100047E10(uint64_t a1)
{
  v2 = sub_100086C8C();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1000869BC();
}

uint64_t sub_100047EDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EEC(&qword_1000AF098, &qword_10008B818);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100047F50()
{
  result = qword_1000AF0D0;
  if (!qword_1000AF0D0)
  {
    sub_100003200(&qword_1000AF090, &qword_10008B810);
    sub_100006454(&qword_1000AF0D8, &qword_1000AF0E0, &qword_10008B8B0, &protocol conformance descriptor for HStack<A>);
    sub_100006454(&qword_1000AF0E8, qword_1000AF0F0, &qword_10008B8B8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF0D0);
  }

  return result;
}

uint64_t sub_10004803C(uint64_t a1)
{
  result = sub_10008647C();
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

uint64_t sub_1000480C4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_10008647C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
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
      v19 = (v13 & ~v11) + *(v9 + 64);
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_100048304(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_10008647C() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 + v13;
  v16 = ((v12 + v13) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
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

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
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
  if (v9 >= v11)
  {
    v24 = *(v8 + 56);

    v24(a1, a2);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(&a1[v15] & ~v13, a2, v11);
  }
}

uint64_t sub_1000485E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100001EEC(&qword_1000AE630, &qword_10008A0C8);
  v7 = __chkstk_darwin(v6 - 8);
  v56 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v57 = &v55 - v9;
  v69 = sub_10008614C();
  v10 = *(v69 - 8);
  __chkstk_darwin(v69);
  v68 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100001EEC(&qword_1000AE638, &qword_10008A0D0);
  v13 = __chkstk_darwin(v12 - 8);
  v70 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v67 = &v55 - v16;
  __chkstk_darwin(v15);
  v73 = &v55 - v17;
  v19 = _s11DeviceModelVMa_0(0, a2, a3, v18);
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v58 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = &v55 - v24;
  v55 = v26;
  __chkstk_darwin(v23);
  v28 = &v55 - v27;
  v66 = sub_10008739C();
  v29 = sub_10008708C();
  v79 = v29;
  v78 = sub_10008709C();
  if (!sub_10008738C())
  {
    return v29;
  }

  v30 = 0;
  v72 = (v20 + 16);
  v62 = (v10 + 8);
  v63 = (v20 + 32);
  v60 = (v20 + 8);
  v59 = a1;
  v64 = v25;
  v65 = v20;
  v61 = v28;
  while (1)
  {
    v31 = sub_10008734C();
    sub_1000872FC();
    if (v31)
    {
      v32 = *(v20 + 16);
      v32(v28, (a1 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v30), v19);
      v33 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_26;
      }

      goto LABEL_8;
    }

    result = sub_10008780C();
    if (v55 != 8)
    {
      break;
    }

    v74 = result;
    v32 = *v72;
    (*v72)(v28, &v74, v19);
    swift_unknownObjectRelease();
    v33 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
LABEL_26:
      __break(1u);
      return v79;
    }

LABEL_8:
    v71 = v32;
    (*v63)(v25, v28, v19);
    v34 = v68;
    sub_10008645C();
    v35 = v73;
    sub_10008611C();
    (*v62)(v34, v69);
    v36 = v67;
    sub_100049844(v35, v67);
    v37 = sub_10008639C();
    v38 = *(v37 - 8);
    v39 = *(v38 + 48);
    if (v39(v36, 1, v37) == 1)
    {
      sub_10000649C(v36, &qword_1000AE638, &qword_10008A0D0);
    }

    else
    {
      v40 = v57;
      sub_10008637C();
      (*(v38 + 8))(v36, v37);
      v41 = sub_10008617C();
      v42 = v40;
      v43 = *(v41 - 8);
      if ((*(v43 + 48))(v42, 1, v41) != 1)
      {
        v48 = sub_10008615C();
        v50 = v49;
        (*(v43 + 8))(v42, v41);
        goto LABEL_17;
      }

      sub_10000649C(v42, &qword_1000AE630, &qword_10008A0C8);
      a1 = v59;
    }

    v44 = v70;
    sub_100049844(v73, v70);
    if (v39(v44, 1, v37) != 1)
    {
      v45 = v56;
      sub_10008635C();
      (*(v38 + 8))(v70, v37);
      v46 = sub_10008617C();
      v47 = *(v46 - 8);
      if ((*(v47 + 48))(v45, 1, v46) == 1)
      {
        sub_10000649C(v45, &qword_1000AE630, &qword_10008A0C8);
        a1 = v59;
        v25 = v64;
        v20 = v65;
        goto LABEL_4;
      }

      v48 = sub_10008615C();
      v50 = v51;
      (*(v47 + 8))(v45, v46);
LABEL_17:
      v25 = v64;
      v74 = v48;
      v75 = v50;

      sub_1000870FC();

      if (v76)
      {
      }

      else
      {

        v76 = sub_10008709C();
        v74 = v48;
        v75 = v50;
        sub_1000870DC();
        sub_10008710C();
      }

      v76 = v48;
      v77 = v50;
      sub_1000870DC();
      v52 = sub_1000870EC();
      if (*v53)
      {
        v71(v58, v25, v19);
        sub_10008737C();
      }

      v52(&v74, 0);
      v20 = v65;
      v28 = v61;

      sub_10000649C(v73, &qword_1000AE638, &qword_10008A0D0);
      (*v60)(v25, v19);
      a1 = v59;
      goto LABEL_5;
    }

    sub_10000649C(v44, &qword_1000AE638, &qword_10008A0D0);
    v25 = v64;
    v20 = v65;
LABEL_4:
    v71(v58, v25, v19);
    sub_10008737C();
    sub_10000649C(v73, &qword_1000AE638, &qword_10008A0D0);
    (*v60)(v25, v19);
    v28 = v61;
LABEL_5:
    ++v30;
    if (v33 == sub_10008738C())
    {
      return v79;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100048EFC(uint64_t a1, uint64_t a2)
{
  v2 = sub_100087A0C();
  sub_100087AEC(v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_100048F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_10008643C() & 1) == 0)
  {
    return 0;
  }

  _s11DeviceModelVMa_0(0, a3, a4, v6);
  return sub_10008713C() & 1;
}

Swift::Int sub_100048FC4(uint64_t a1)
{
  sub_100087ADC();
  sub_100048EFC(v3, a1);
  return sub_100087AFC();
}

Swift::Int sub_100049014(uint64_t a1, uint64_t a2)
{
  sub_100087ADC();
  sub_100048EFC(v4, a2);
  return sub_100087AFC();
}

uint64_t sub_100049064@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10004900C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004908C()
{
  v0 = sub_10008614C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100001EEC(&qword_1000AE638, &qword_10008A0D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  sub_10008645C();
  sub_10008611C();
  (*(v1 + 8))(v3, v0);
  v7 = sub_10008639C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000649C(v6, &qword_1000AE638, &qword_10008A0D0);
    return 0x646F50656D6F48;
  }

  else
  {
    v10 = sub_10008633C();
    (*(v8 + 8))(v6, v7);
    return v10;
  }
}

unint64_t sub_100049268()
{
  v0 = sub_10008614C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100001EEC(&qword_1000AE638, &qword_10008A0D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  sub_10008645C();
  sub_10008611C();
  (*(v1 + 8))(v3, v0);
  v7 = sub_10008639C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000649C(v6, &qword_1000AE638, &qword_10008A0D0);
    return 0xD000000000000010;
  }

  v9 = sub_10008634C();
  v11 = v10;
  (*(v8 + 8))(v6, v7);
  v12 = sub_1000676B0(v9, v11);
  if (v12 > 0xFDu)
  {
    return 0xD000000000000010;
  }

  if ((v12 & 0x80u) == 0)
  {
    v14 = 17;
  }

  else
  {
    v14 = 18;
  }

  if ((v12 & 0x80u) == 0)
  {
    v15 = 15;
  }

  else
  {
    v15 = 16;
  }

  if (v12)
  {
    v16 = v15;
  }

  else
  {
    v16 = v14;
  }

  return sub_10000F8C4(&off_1000A62A8, v16);
}

uint64_t sub_100049490()
{
  v0 = sub_100001EEC(&qword_1000AE638, &qword_10008A0D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v16 - v1;
  v3 = sub_10008614C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10008639C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0x6563697665443CLL;
  v18 = 0xE700000000000000;
  sub_10008645C();
  sub_10008611C();
  (*(v4 + 8))(v6, v3);
  if ((*(v8 + 48))(v2, 1, v7) == 1)
  {
    sub_10000649C(v2, &qword_1000AE638, &qword_10008A0D0);
    v19._object = 0x800000010008F530;
    v19._countAndFlagsBits = 0xD000000000000017;
    sub_1000871BC(v19);
  }

  else
  {
    (*(v8 + 32))(v10, v2, v7);
    v16._countAndFlagsBits = 10016;
    v16._object = 0xE200000000000000;
    v20._countAndFlagsBits = sub_10008633C();
    sub_1000871BC(v20);

    v21._countAndFlagsBits = 39;
    v21._object = 0xE100000000000000;
    sub_1000871BC(v21);
    sub_1000871BC(v16);

    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    sub_1000877DC(26);

    v16._countAndFlagsBits = 0x3A6C65646F6D207CLL;
    v16._object = 0xE900000000000020;
    v22._countAndFlagsBits = sub_10008634C();
    sub_1000871BC(v22);

    v23._countAndFlagsBits = 0x7546646F7270207CLL;
    v23._object = 0xED0000203A646573;
    sub_1000871BC(v23);
    v11 = sub_10008638C();
    v12 = (v11 & 1) == 0;
    if (v11)
    {
      v13._countAndFlagsBits = 1702195828;
    }

    else
    {
      v13._countAndFlagsBits = 0x65736C6166;
    }

    if (v12)
    {
      v14 = 0xE500000000000000;
    }

    else
    {
      v14 = 0xE400000000000000;
    }

    v13._object = v14;
    sub_1000871BC(v13);

    sub_1000871BC(v16);

    (*(v8 + 8))(v10, v7);
  }

  v24._countAndFlagsBits = 62;
  v24._object = 0xE100000000000000;
  sub_1000871BC(v24);
  return v17;
}

uint64_t sub_100049844(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EEC(&qword_1000AE638, &qword_10008A0D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1000498B4(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v13 = a2;
  if (!a2)
  {
    v13 = v6;
  }

  v14 = a2;
  [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 addSubview:a1];
  v15 = [a1 topAnchor];
  v16 = [v13 topAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:a3];

  v18 = [v13 rightAnchor];
  v19 = [a1 rightAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:a6];

  v21 = [v13 bottomAnchor];
  v22 = [a1 bottomAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:a5];

  v24 = [a1 leftAnchor];
  v25 = [v13 leftAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:a4];

  v27 = objc_opt_self();
  sub_100001EEC(qword_1000AE698, &qword_10008A118);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10008B9C0;
  *(v28 + 32) = v17;
  *(v28 + 40) = v20;
  *(v28 + 48) = v23;
  *(v28 + 56) = v26;
  sub_100049C34();
  v29 = v17;
  v30 = v20;
  v31 = v23;
  v32 = v26;
  isa = sub_1000872BC().super.isa;

  [v27 activateConstraints:isa];

  return v29;
}

unint64_t sub_100049C34()
{
  result = qword_1000AF178;
  if (!qword_1000AF178)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000AF178);
  }

  return result;
}

uint64_t sub_100049CD0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();

  return v3;
}

uint64_t sub_100049D3C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();

  return v1;
}

uint64_t sub_100049DB4()
{
  sub_1000877DC(16);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();

  sub_1000871BC(v7);

  v8._countAndFlagsBits = 2629671;
  v8._object = 0xE300000000000000;
  sub_1000871BC(v8);
  v1 = *(v0 + OBJC_IVAR____TtC16HPSUIViewService16ProfileViewModel_profileID);
  v2 = *(v0 + OBJC_IVAR____TtC16HPSUIViewService16ProfileViewModel_profileID + 8);
  v9._countAndFlagsBits = v1;
  v9._object = v2;
  sub_1000871BC(v9);
  v10._countAndFlagsBits = 41;
  v10._object = 0xE100000000000000;
  sub_1000871BC(v10);
  sub_100016924(0x272065766F6D6552, 0xE800000000000000);

  v3 = v0 + OBJC_IVAR____TtC16HPSUIViewService16ProfileViewModel_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(v1, v2, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100049F1C()
{
  v1 = OBJC_IVAR____TtC16HPSUIViewService16ProfileViewModel__contents;
  v2 = sub_100001EEC(&qword_1000AE9A0, &qword_10008BC70);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC16HPSUIViewService16ProfileViewModel__organization, v2);
  v3(v0 + OBJC_IVAR____TtC16HPSUIViewService16ProfileViewModel__profileDescription, v2);

  v3(v0 + OBJC_IVAR____TtC16HPSUIViewService16ProfileViewModel__profileName, v2);
  v4 = OBJC_IVAR____TtC16HPSUIViewService16ProfileViewModel__signingDetails;
  v5 = sub_100001EEC(&qword_1000AF3A0, &qword_10008BC78);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_10004A650(v0 + OBJC_IVAR____TtC16HPSUIViewService16ProfileViewModel_delegate);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v6, v7);
}

uint64_t type metadata accessor for ProfileViewModel(uint64_t a1)
{
  result = qword_1000AF1D0;
  if (!qword_1000AF1D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004A0F0(uint64_t a1)
{
  sub_10004A1F0(319, &qword_1000AE8B8, &type metadata for String);
  if (v1 <= 0x3F)
  {
    sub_10004A1F0(319, &unk_1000AF1E0, &type metadata for ProfileViewModel.SigningDetals);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10004A1F0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1000867FC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10004A24C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ProfileViewModel(0);
  result = sub_10008676C();
  *a2 = result;
  return result;
}

uint64_t sub_10004A28C@<X0>(void *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR____TtC16HPSUIViewService16ProfileViewModel_profileID);
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
}

uint64_t sub_10004A2E4@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();

  *a4 = v6;
  a4[1] = v7;
  return result;
}

uint64_t sub_10004A39C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000867EC();
}

uint64_t sub_10004A444@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_10004A4D0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000867EC();
}

__n128 sub_10004A6A4@<Q0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v39 = a1;
  v3 = sub_100086E4C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100001EEC(&qword_1000AF3A8, &qword_10008BD10);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v38 - v9;
  sub_100086E3C();
  (*(v4 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v3);
  v11 = sub_100086E5C();

  (*(v4 + 8))(v6, v3);
  LOBYTE(v3) = sub_100086BEC();
  sub_10008686C();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  LOBYTE(v41) = 1;
  v40 = 0;
  v20 = sub_100086E1C();
  KeyPath = swift_getKeyPath();
  v22 = sub_100086E0C();
  v23 = sub_100086BEC();
  v24 = &v10[*(v8 + 44)];
  v25 = *(sub_10008698C() + 20);
  v26 = enum case for RoundedCornerStyle.continuous(_:);
  v27 = sub_100086B2C();
  (*(*(v27 - 8) + 104))(&v24[v25], v26, v27);
  __asm { FMOV            V0.2D, #12.0 }

  *v24 = _Q0;
  *&v24[*(sub_100001EEC(&qword_1000AF3B0, &qword_10008BD48) + 36)] = 256;
  *v10 = v11;
  *(v10 + 1) = 0;
  *(v10 + 8) = 1;
  v10[24] = v3;
  *(v10 + 4) = v13;
  *(v10 + 5) = v15;
  *(v10 + 6) = v17;
  *(v10 + 7) = v19;
  v10[64] = 0;
  *(v10 + 9) = KeyPath;
  *(v10 + 10) = v20;
  *(v10 + 11) = v22;
  v10[96] = v23;
  sub_10008701C();
  sub_10008699C();
  v33 = v39;
  sub_10004AA64(v10, v39);
  v34 = v33 + *(sub_100001EEC(&qword_1000AF3B8, &qword_10008BD50) + 36);
  v35 = v46;
  *(v34 + 64) = v45;
  *(v34 + 80) = v35;
  *(v34 + 96) = v47;
  v36 = v42;
  *v34 = v41;
  *(v34 + 16) = v36;
  result = v44;
  *(v34 + 32) = v43;
  *(v34 + 48) = result;
  return result;
}

uint64_t sub_10004AA64(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EEC(&qword_1000AF3A8, &qword_10008BD10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10004AAD8()
{
  result = qword_1000AF3C0;
  if (!qword_1000AF3C0)
  {
    sub_100003200(&qword_1000AF3B8, &qword_10008BD50);
    sub_10004AB64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF3C0);
  }

  return result;
}

unint64_t sub_10004AB64()
{
  result = qword_1000AF3C8;
  if (!qword_1000AF3C8)
  {
    sub_100003200(&qword_1000AF3A8, &qword_10008BD10);
    sub_10004AC1C();
    sub_100006454(&qword_1000AF410, &qword_1000AF3B0, &qword_10008BD48, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF3C8);
  }

  return result;
}

unint64_t sub_10004AC1C()
{
  result = qword_1000AF3D0;
  if (!qword_1000AF3D0)
  {
    sub_100003200(&qword_1000AF3D8, &qword_10008BD58);
    sub_10004ACD4();
    sub_100006454(&qword_1000AF400, &qword_1000AF408, qword_10008BD80, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF3D0);
  }

  return result;
}

unint64_t sub_10004ACD4()
{
  result = qword_1000AF3E0;
  if (!qword_1000AF3E0)
  {
    sub_100003200(&qword_1000AF3E8, &qword_10008BD60);
    sub_10004AD8C();
    sub_100006454(&qword_1000AEF20, &qword_1000AEF28, &qword_10008B360, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF3E0);
  }

  return result;
}

unint64_t sub_10004AD8C()
{
  result = qword_1000AF3F0;
  if (!qword_1000AF3F0)
  {
    sub_100003200(&qword_1000AF3F8, &qword_10008BD68);
    sub_100043968();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF3F0);
  }

  return result;
}

uint64_t sub_10004AE28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10008672C();
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v15 = v5;
    (*(v5 + 16))(v7, a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);

    v9 = 1;
    while (v8 != v9)
    {
      v10 = v9 + 1;
      sub_10004B090();
      v11 = sub_10008713C();
      v9 = v10;
      if ((v11 & 1) == 0)
      {
        (*(v15 + 8))(v7, v4);

        (*(v15 + 104))(a2, enum case for BetaEnrollment.State.multiple(_:), v4);
        return (*(v15 + 56))(a2, 0, 1, v4);
      }
    }

    (*(v15 + 32))(a2, v7, v4);
    return (*(v15 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v12 = *(v5 + 56);

    return v12(a2, 1, 1, v4);
  }
}

uint64_t sub_10004B048()
{
  result = sub_1000866FC();
  qword_1000B3BD8 = result;
  unk_1000B3BE0 = v1;
  return result;
}

uint64_t sub_10004B06C()
{
  result = sub_10008671C();
  qword_1000B3BE8 = result;
  unk_1000B3BF0 = v1;
  return result;
}

unint64_t sub_10004B090()
{
  result = qword_1000ADD50;
  if (!qword_1000ADD50)
  {
    sub_10008672C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADD50);
  }

  return result;
}

Swift::Int sub_10004B0E8()
{
  sub_100087ADC();
  sub_1000871AC();
  return sub_100087AFC();
}

Swift::Int sub_10004B15C(uint64_t a1)
{
  sub_100087ADC();
  sub_1000871AC();
  return sub_100087AFC();
}

uint64_t sub_10004B1B0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000A6710;
  v7._object = v3;
  v5 = sub_1000879AC(v4, v7);

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_10004B254()
{
  result = qword_1000AF418[0];
  if (!qword_1000AF418[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AF418);
  }

  return result;
}

uint64_t sub_10004B2A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10004B338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_100086B7C();
  __chkstk_darwin(v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_100086B8C();
}

uint64_t sub_10004B430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_100086B7C();
  __chkstk_darwin(v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_100086B8C();
}

uint64_t sub_10004B528(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_10008706C();
}

uint64_t sub_10004B708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v93 = a4;
  v92 = a3;
  v84 = a2;
  v107 = a1;
  v105 = a7;
  v9 = sub_100086A8C();
  v103 = *(v9 - 8);
  v104 = v9;
  __chkstk_darwin(v9);
  v102 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_10008742C();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = sub_10004E588();
  v15 = sub_10004E5DC();
  v16 = *(AssociatedConformanceWitness + 32);
  v116 = AssociatedTypeWitness;
  v117 = &type metadata for SelectableRowContents;
  v118 = &type metadata for RowContents;
  v119 = v16;
  v120 = v14;
  v121 = v15;
  type metadata accessor for DisclosureGroupPicker(255, &v116);
  sub_10008700C();
  swift_getTupleTypeMetadata2();
  sub_10008705C();
  swift_getWitnessTable();
  sub_100086C5C();
  swift_getWitnessTable();
  sub_100086F4C();
  v17 = sub_100086B9C();
  v95 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v72 - v18;
  v20 = sub_10000DAF0();
  WitnessTable = swift_getWitnessTable();
  v114 = v20;
  v115 = WitnessTable;
  v22 = swift_getWitnessTable();
  v116 = v17;
  v117 = v22;
  v73 = v17;
  v74 = v22;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v94 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v78 = &v72 - v23;
  v24 = sub_10008695C();
  v96 = *(v24 - 8);
  __chkstk_darwin(v24);
  v81 = &v72 - v25;
  v77 = v24;
  v26 = sub_10008695C();
  v97 = *(v26 - 8);
  __chkstk_darwin(v26);
  v88 = &v72 - v27;
  sub_1000868BC();
  v83 = v26;
  v28 = sub_10008695C();
  v98 = *(v28 - 8);
  __chkstk_darwin(v28);
  v91 = &v72 - v29;
  v116 = v17;
  v117 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v112 = OpaqueTypeConformance2;
  v113 = &protocol witness table for _AppearanceActionModifier;
  v76 = swift_getWitnessTable();
  v110 = v76;
  v111 = &protocol witness table for _AppearanceActionModifier;
  v30 = swift_getWitnessTable();
  v80 = v30;
  v31 = sub_10004E630();
  v108 = v30;
  v109 = v31;
  v86 = v28;
  v87 = swift_getWitnessTable();
  v116 = v28;
  v117 = v87;
  v90 = swift_getOpaqueTypeMetadata2();
  v85 = *(v90 - 8);
  v32 = __chkstk_darwin(v90);
  v79 = &v72 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v82 = &v72 - v34;
  v35 = v19;
  v36 = v19;
  v37 = v84;
  LOBYTE(v17) = v92;
  v38 = v93;
  v39 = a5;
  v40 = a5;
  v41 = a6;
  sub_10004C290(v107, v84, v92, v93, v40, a6, v36);
  v106 = a6;
  v42 = *(a6 + 48);
  swift_unknownObjectRetain();
  v72 = v39;
  v42(v39, v41);
  swift_unknownObjectRelease();
  v43 = v78;
  v44 = v73;
  sub_100086D6C();

  (*(v95 + 8))(v35, v44);
  v45 = swift_allocObject();
  *(v45 + 16) = v39;
  v46 = v106;
  v47 = v107;
  *(v45 + 24) = v106;
  *(v45 + 32) = v47;
  *(v45 + 40) = v37;
  *(v45 + 48) = v17;
  *(v45 + 56) = v38;
  v48 = v38;

  swift_unknownObjectRetain();
  v49 = v81;
  v50 = OpaqueTypeMetadata2;
  sub_100086DEC();

  (*(v94 + 8))(v43, v50);
  v51 = swift_allocObject();
  v52 = v72;
  *(v51 + 16) = v72;
  *(v51 + 24) = v46;
  *(v51 + 32) = v47;
  *(v51 + 40) = v37;
  *(v51 + 48) = v17;
  *(v51 + 56) = v48;
  v53 = v37;
  swift_unknownObjectRetain();

  v54 = v88;
  v55 = v77;
  sub_100086D2C();

  (*(v96 + 8))(v49, v55);
  v56 = swift_allocObject();
  v57 = v106;
  *(v56 + 16) = v52;
  *(v56 + 24) = v57;
  *(v56 + 32) = v47;
  *(v56 + 40) = v53;
  *(v56 + 48) = v17;
  *(v56 + 56) = v48;
  swift_unknownObjectRetain();

  v58 = v99;
  sub_10008740C();
  v59 = v91;
  v60 = v83;
  sub_100086DAC();

  (*(v100 + 8))(v58, v101);
  (*(v97 + 8))(v54, v60);
  v62 = v102;
  v61 = v103;
  v63 = v104;
  (*(v103 + 104))(v102, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v104);
  v64 = v79;
  v65 = v86;
  sub_100086D9C();
  (*(v61 + 8))(v62, v63);
  (*(v98 + 8))(v59, v65);
  v66 = v85;
  v67 = *(v85 + 16);
  v68 = v82;
  v69 = v90;
  v67(v82, v64, v90);
  v70 = *(v66 + 8);
  v70(v64, v69);
  v67(v105, v68, v69);
  return (v70)(v68, v69);
}

uint64_t sub_10004C290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v53 = a4;
  v52 = a3;
  v49 = a1;
  v56 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = sub_10004E588();
  v12 = sub_10004E5DC();
  v50 = *(AssociatedConformanceWitness + 32);
  *&v63 = AssociatedTypeWitness;
  *(&v63 + 1) = &type metadata for SelectableRowContents;
  *v64 = &type metadata for RowContents;
  *&v64[8] = v50;
  *&v64[24] = v11;
  *&v65 = v12;
  type metadata accessor for DisclosureGroupPicker(255, &v63);
  sub_10008700C();
  swift_getTupleTypeMetadata2();
  sub_10008705C();
  swift_getWitnessTable();
  sub_100086C5C();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_100086F4C();
  v48 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v16 = &WitnessTable - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v47 = &WitnessTable - v17;
  v55 = sub_100086B9C();
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v19 = &WitnessTable - v18;
  v20 = *(a6 + 32);
  swift_unknownObjectRetain();
  v21 = a5;
  v22 = v20(a5, a6);
  swift_unknownObjectRelease();
  LOBYTE(a5) = sub_10008752C();

  if (a5)
  {
    AssociatedTypeWitness = v13;
    LOBYTE(v63) = v52 & 1;
    *(&v63 + 1) = v53;
    sub_100001EEC(&qword_1000AE068, &qword_10008AD10);
    sub_100086E8C();
    if (v57 == 1)
    {
      if (qword_1000ADBA0 != -1)
      {
        swift_once();
      }

      v25 = qword_1000B3A78;
      v24 = unk_1000B3A80;
      v26 = byte_1000B3A88;
      v27 = qword_1000B3A90;
      v28 = qword_1000ADBA8;

      if (v28 != -1)
      {
        swift_once();
      }

      v16 = qword_1000B3A98;
      v29 = unk_1000B3AA0;
      v22 = byte_1000B3AA8;
      v30 = qword_1000B3AB0;
      v31 = 1;
    }

    else
    {
      if (qword_1000ADB40 != -1)
      {
        swift_once();
      }

      v31 = 0;
      v25 = qword_1000B38F8;
      v29 = unk_1000B3900;
      v26 = byte_1000B3908;
      v30 = qword_1000B3910;
      v24 = unk_1000B3900;
      v27 = qword_1000B3910;
    }

    *&v57 = v25;
    *(&v57 + 1) = v24;
    *&v58 = v26;
    *(&v58 + 1) = v27;
    *&v59 = 0;
    *(&v59 + 1) = v16;
    *&v60 = v29;
    *(&v60 + 1) = v22;
    v61 = v30;
    v62 = v31;
    v38 = sub_10000DAF0();
    v39 = AssociatedTypeWitness;
    v40 = swift_getWitnessTable();
    sub_10004B338(&v57, &type metadata for StatusInfoView, v39, v38, v40);
    v65 = v60;
    v66 = v61;
    v67 = v62;
    v63 = v57;
    *v64 = v58;
    *&v64[16] = v59;
    sub_10000E018(&v63);
  }

  else
  {
    __chkstk_darwin(v23);
    *(&WitnessTable - 6) = v21;
    *(&WitnessTable - 5) = a6;
    *(&WitnessTable - 4) = v49;
    *(&WitnessTable - 3) = a2;
    *(&WitnessTable - 16) = v52 & 1;
    *(&WitnessTable - 1) = v53;
    sub_100086B3C();
    sub_100086F3C();
    v32 = swift_getWitnessTable();
    v33 = v48;
    v34 = *(v48 + 16);
    v35 = v47;
    v34(v47, v16, v13);
    v36 = *(v33 + 8);
    v36(v16, v13);
    v34(v16, v35, v13);
    v37 = sub_10000DAF0();
    sub_10004B430(v16, &type metadata for StatusInfoView, v13, v37, v32);
    v36(v16, v13);
    v36(v35, v13);
  }

  v41 = sub_10000DAF0();
  v42 = swift_getWitnessTable();
  v68 = v41;
  v69 = v42;
  v43 = v55;
  swift_getWitnessTable();
  v44 = v54;
  (*(v54 + 16))(v56, v19, v43);
  return (*(v44 + 8))(v19, v43);
}

void sub_10004C9D0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  __chkstk_darwin(v12 - 8);
  v14 = aBlock - v13;
  v15 = sub_10008742C();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_1000873FC();

  swift_unknownObjectRetain();
  v16 = sub_1000873EC();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = &protocol witness table for MainActor;
  *(v17 + 32) = a5;
  *(v17 + 40) = a6;
  *(v17 + 48) = a1;
  *(v17 + 56) = a2;
  *(v17 + 64) = a3;
  *(v17 + 72) = a4;
  sub_100016C64(0, 0, v14, &unk_10008BFB0, v17);

  v18 = objc_opt_self();
  v19 = swift_allocObject();
  *(v19 + 16) = a5;
  *(v19 + 24) = a6;
  *(v19 + 32) = a1;
  *(v19 + 40) = a2;
  *(v19 + 48) = a3;
  *(v19 + 56) = a4;
  aBlock[4] = sub_10000DEF0;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100023E30;
  aBlock[3] = &unk_1000A8B98;
  v20 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  v21 = [v18 scheduledTimerWithTimeInterval:0 repeats:v20 block:5.0];
  _Block_release(v20);
}

uint64_t sub_10004CC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a8;
  v8[4] = v13;
  v8[2] = a5;
  sub_1000873FC();
  v8[5] = sub_1000873EC();
  v10 = sub_1000873DC();
  v8[6] = v10;
  v8[7] = v9;

  return _swift_task_switch(sub_10004CCBC, v10, v9);
}

uint64_t sub_10004CCBC()
{
  v1 = *(v0[4] + 88);
  swift_unknownObjectRetain();
  v6 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_10000A94C;
  v3 = v0[3];
  v4 = v0[4];

  return v6(1, v3, v4);
}

uint64_t sub_10004CDD4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  __chkstk_darwin(v12 - 8);
  v14 = &v19 - v13;
  v15 = sub_10008742C();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_1000873FC();

  swift_unknownObjectRetain();
  v16 = sub_1000873EC();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = &protocol witness table for MainActor;
  *(v17 + 32) = a5;
  *(v17 + 40) = a6;
  *(v17 + 48) = a1;
  *(v17 + 56) = a2;
  *(v17 + 64) = a3;
  *(v17 + 72) = a4;
  sub_100016C64(0, 0, v14, &unk_10008BFA0, v17);
}

uint64_t sub_10004CF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a8;
  v8[4] = v13;
  v8[2] = a5;
  sub_1000873FC();
  v8[5] = sub_1000873EC();
  v10 = sub_1000873DC();
  v8[6] = v10;
  v8[7] = v9;

  return _swift_task_switch(sub_10004CFD4, v10, v9);
}

uint64_t sub_10004CFD4()
{
  v1 = *(v0[4] + 88);
  swift_unknownObjectRetain();
  v6 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_10000A94C;
  v3 = v0[3];
  v4 = v0[4];

  return (v6)(0, v3, v4);
}

uint64_t sub_10004D0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a2;
  sub_1000873FC();
  v6[5] = sub_1000873EC();
  v8 = sub_1000873DC();
  v6[6] = v8;
  v6[7] = v7;

  return _swift_task_switch(sub_10004D188, v8, v7);
}

uint64_t sub_10004D188()
{
  v1 = *(v0[4] + 80);
  swift_unknownObjectRetain();
  v6 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_10000AF5C;
  v4 = v0[3];
  v3 = v0[4];

  return v6(v4, v3);
}

uint64_t sub_10004D2A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  v28 = a4;
  v29 = a7;
  v27 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = sub_10004E588();
  v14 = sub_10004E5DC();
  v15 = *(AssociatedConformanceWitness + 32);
  v36[0] = AssociatedTypeWitness;
  v36[1] = &type metadata for SelectableRowContents;
  v36[2] = &type metadata for RowContents;
  v37 = v15;
  v38 = v13;
  v39 = v14;
  type metadata accessor for DisclosureGroupPicker(255, v36);
  sub_10008700C();
  swift_getTupleTypeMetadata2();
  sub_10008705C();
  swift_getWitnessTable();
  v16 = sub_100086C5C();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v26[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v22 = &v26[-v21];
  v30 = a5;
  v31 = a6;
  v32 = a1;
  v33 = a2;
  v34 = v27;
  v35 = v28;
  sub_100086C4C();
  swift_getWitnessTable();
  v23 = *(v17 + 16);
  v23(v22, v20, v16);
  v24 = *(v17 + 8);
  v24(v20, v16);
  v23(v29, v22, v16);
  return (v24)(v22, v16);
}

uint64_t sub_10004D548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v30 = a2;
  v31 = a4;
  v9 = a3;
  v32 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = sub_10004E588();
  v15 = sub_10004E5DC();
  v16 = *(AssociatedConformanceWitness + 32);
  v37 = AssociatedTypeWitness;
  v38 = &type metadata for SelectableRowContents;
  v39 = &type metadata for RowContents;
  v40 = v16;
  v41 = v14;
  v42 = v15;
  type metadata accessor for DisclosureGroupPicker(255, &v37);
  v17 = sub_10008700C();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v30 - v22;
  sub_10004D844(a1, a2, v9, v31, a5, a6);
  WitnessTable = swift_getWitnessTable();
  v36[1] = &protocol witness table for EmptyView;
  v36[2] = WitnessTable;
  v36[3] = &protocol witness table for AnyView;
  v25 = swift_getWitnessTable();
  v26 = *(v18 + 16);
  v26(v23, v21, v17);
  v27 = *(v18 + 8);
  v27(v21, v17);
  sub_10004D998(a5, a6, &v37);
  v28 = v37;
  v26(v21, v23, v17);
  v36[0] = v28;
  v37 = v21;
  v38 = v36;

  v35[0] = v17;
  v35[1] = &type metadata for AnyView;
  v33 = v25;
  v34 = &protocol witness table for AnyView;
  sub_10004B528(&v37, 2uLL, v35);

  v27(v23, v17);

  return (v27)(v21, v17);
}

uint64_t sub_10004D844(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_10004DB64(a5, a6, &v16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = sub_10004E588();
  v9 = sub_10004E5DC();
  v10 = *(AssociatedConformanceWitness + 32);
  v12[0] = AssociatedTypeWitness;
  v12[1] = &type metadata for SelectableRowContents;
  v12[2] = &type metadata for RowContents;
  v13 = v10;
  v14 = v8;
  v15 = v9;
  type metadata accessor for DisclosureGroupPicker(0, v12);
  swift_getWitnessTable();
  return sub_100086FFC();
}

uint64_t sub_10004D998@<X0>(uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t *a4@<X8>)
{
  v7 = *(a3 + 40);
  swift_unknownObjectRetain();
  v8 = v7(a2, a3);
  swift_unknownObjectRelease();
  if (v8)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    swift_unknownObjectRetain();
    sub_10003D2E0(AssociatedTypeWitness, AssociatedConformanceWitness, v16);
    swift_unknownObjectRelease();
    v12 = type metadata accessor for CarrySettingsDetailView(0, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
    WitnessTable = swift_getWitnessTable();
    v14 = sub_100059858(v12, WitnessTable);
    swift_unknownObjectRelease();
    v18[8] = v16[8];
    v18[9] = v16[9];
    v19 = v17;
    v18[4] = v16[4];
    v18[5] = v16[5];
    v18[6] = v16[6];
    v18[7] = v16[7];
    v18[0] = v16[0];
    v18[1] = v16[1];
    v18[2] = v16[2];
    v18[3] = v16[3];
    result = (*(*(v12 - 8) + 8))(v18, v12);
  }

  else
  {
    result = sub_100086F5C();
    v14 = result;
  }

  *a4 = v14;
  return result;
}

uint64_t sub_10004DB64@<X0>(uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t *a4@<X8>)
{
  v7 = *(a3 + 56);
  swift_unknownObjectRetain();
  v8 = v7(a2, a3);
  swift_unknownObjectRelease();
  v21 = v8;
  v20[2] = a2;
  v20[3] = a3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = sub_10008756C();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_100013210(sub_10004EAE0, v20, v9, &type metadata for String, &type metadata for Never, WitnessTable, &protocol witness table for Never, v11);

  if (*(v12 + 16))
  {
    v21 = v12;
    sub_100001EEC(&qword_1000AE2B0, &qword_10008D800);
    sub_100012FE8();
    v13 = sub_10008712C();
    v15 = v14;

    v21 = v13;
    v22 = v15;
    sub_1000064FC();
    v21 = sub_100086CCC();
    v22 = v16;
    v23 = v17 & 1;
    v24 = v18;
  }

  else
  {
  }

  result = sub_100086F5C();
  *a4 = result;
  return result;
}

uint64_t sub_10004DD58@<X0>(uint64_t *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  v4 = *(swift_getAssociatedConformanceWitness() + 24);
  v5 = *(v4 + 8);
  v6 = swift_checkMetadataState();
  result = v5(v6, v4);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_10004DE1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v11 = *(a6 + 32);
  swift_unknownObjectRetain();
  v12 = v11(a5, a6);
  swift_unknownObjectRelease();
  *&v46 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = *(AssociatedConformanceWitness + 32);
  sub_10008756C();
  swift_getWitnessTable();
  v29 = sub_1000873BC();
  sub_10008690C();
  swift_getKeyPath();
  sub_10008691C();

  swift_unknownObjectRelease();
  v16 = *(&v40 + 1);
  v27 = v41;
  v28 = v40;
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;
  *(v17 + 48) = a3;
  *(v17 + 56) = a4;
  v18 = swift_allocObject();
  *(v18 + 16) = a5;
  *(v18 + 24) = a6;
  v19 = *(AssociatedConformanceWitness + 40);
  v20 = sub_10004E588();
  v21 = sub_10004E5DC();
  swift_unknownObjectRetain();

  sub_10005177C(v29, v28, v16, v27, 4u, sub_10004EAB4, v17, sub_10004EAD8, &v46, v18, AssociatedTypeWitness, &type metadata for SelectableRowContents, &type metadata for RowContents, v15, v19, v20, v21);
  v35 = v48;
  v36 = v49;
  v37 = v50;
  v38 = v51;
  v33 = v46;
  v34 = v47;
  *&v40 = AssociatedTypeWitness;
  *(&v40 + 1) = &type metadata for SelectableRowContents;
  *&v41 = &type metadata for RowContents;
  *(&v41 + 1) = v15;
  *&v42 = v19;
  *(&v42 + 1) = v20;
  *&v43 = v21;
  v22 = type metadata accessor for DisclosureGroupPicker(0, &v40);
  swift_getWitnessTable();
  v23 = *(v22 - 8);
  v24 = *(v23 + 16);
  v24(v39, &v33, v22);
  v42 = v35;
  v43 = v36;
  v44 = v37;
  v45 = v38;
  v40 = v33;
  v41 = v34;
  v25 = *(v23 + 8);
  v25(&v40, v22);
  v35 = v39[2];
  v36 = v39[3];
  v37 = v39[4];
  v38 = v39[5];
  v33 = v39[0];
  v34 = v39[1];
  v24(a7, &v33, v22);
  v48 = v35;
  v49 = v36;
  v50 = v37;
  v51 = v38;
  v46 = v33;
  v47 = v34;
  return (v25)(&v46, v22);
}

__n128 sub_10004E1A0@<Q0>(uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v7 = sub_100086AEC();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100086AFC();
  v10 = v9;
  v25 = v11;
  v13 = v12;
  v14 = *(a3 + 56);
  swift_unknownObjectRetain();
  v15 = v14(a2, a3);
  swift_unknownObjectRelease();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = sub_100043B94(v15, AssociatedTypeWitness, *(AssociatedConformanceWitness + 16), *(AssociatedConformanceWitness + 32));

  sub_100086ADC();
  v41._countAndFlagsBits = 0x44455443454C4553;
  v41._object = 0xE900000000000020;
  sub_100086ACC(v41);
  v32[0] = v18;
  sub_100086AAC();
  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  sub_100086ACC(v42);
  v19 = sub_100086B0C();
  *&v27 = v8;
  *(&v27 + 1) = v10;
  v28.n128_u8[0] = v25 & 1;
  v28.n128_u64[1] = v13;
  *&v29 = v19;
  *(&v29 + 1) = v20;
  *&v30 = v21 & 1;
  *(&v30 + 1) = v22;
  *&v31 = 0xD000000000000011;
  *(&v31 + 1) = 0x800000010008F640;
  v32[0] = v8;
  v32[1] = v10;
  v33 = v25 & 1;
  v34 = v13;
  v35 = v19;
  v36 = v20;
  v37 = v30;
  v38 = v22;
  v39 = 0xD000000000000011;
  v40 = 0x800000010008F640;
  sub_10003DE60(&v27, v26);
  sub_10003DEBC(v32);
  v23 = v30;
  *(a4 + 32) = v29;
  *(a4 + 48) = v23;
  *(a4 + 64) = v31;
  result = v28;
  *a4 = v27;
  *(a4 + 16) = result;
  return result;
}

uint64_t sub_10004E3F0@<X0>(uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 24);
  v6 = *(v5 + 8);
  v7 = swift_checkMetadataState();
  v8 = v6(v7, v5);
  v10 = v9;
  v11 = (*(AssociatedConformanceWitness + 184))(v7, AssociatedConformanceWitness);
  v13 = v12;
  result = (*(v5 + 16))(v7, v5);
  *a3 = result;
  *(a3 + 8) = v15;
  *(a3 + 40) = 1;
  *(a3 + 48) = v11;
  *(a3 + 56) = v13;
  *(a3 + 64) = v8;
  *(a3 + 72) = v10;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  return result;
}

unint64_t sub_10004E588()
{
  result = qword_1000AF4A0;
  if (!qword_1000AF4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF4A0);
  }

  return result;
}

unint64_t sub_10004E5DC()
{
  result = qword_1000AF4A8[0];
  if (!qword_1000AF4A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AF4A8);
  }

  return result;
}

unint64_t sub_10004E630()
{
  result = qword_1000AE060;
  if (!qword_1000AE060)
  {
    sub_1000868BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE060);
  }

  return result;
}

uint64_t sub_10004E6D8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100002740;

  return sub_10004D0EC(v4, v5, v6, v7, v2, v3);
}

uint64_t sub_10004E7A0(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 72);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000324C;

  return sub_10004CF30(a1, v5, v6, v7, v8, v9, v10, v4);
}

uint64_t sub_10004E890(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 72);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000324C;

  return sub_10004CC18(a1, v5, v6, v7, v8, v9, v10, v4);
}

uint64_t sub_10004E980(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004E9F8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 56))(*(a1 + a2 - 16));
  *a3 = result;
  return result;
}

uint64_t sub_10004EA40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = *(v5 + 64);

  return v6(v7, v4, v5);
}

__n128 sub_10004EAA8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_10004EB00(void *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = sub_10004E588();
  v4 = sub_10004E5DC();
  v5 = *(AssociatedConformanceWitness + 32);
  v11 = AssociatedTypeWitness;
  v12 = &type metadata for SelectableRowContents;
  v13 = &type metadata for RowContents;
  v14 = v5;
  v15 = v3;
  v16 = v4;
  type metadata accessor for DisclosureGroupPicker(255, &v11);
  sub_10008700C();
  swift_getTupleTypeMetadata2();
  sub_10008705C();
  swift_getWitnessTable();
  sub_100086C5C();
  swift_getWitnessTable();
  sub_100086F4C();
  v6 = sub_100086B9C();
  sub_10000DAF0();
  swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  v11 = v6;
  v12 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_10008695C();
  sub_10008695C();
  sub_1000868BC();
  v8 = sub_10008695C();
  v11 = v6;
  v12 = WitnessTable;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10004E630();
  v9 = swift_getWitnessTable();
  v11 = v8;
  v12 = v9;
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10004EDF0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1000868FC();
  sub_100086E7C();
  return v4;
}

uint64_t sub_10004EE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10004EEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_10008672C();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v22 - v13;
  v15 = *(a6 + 72);
  swift_unknownObjectRetain();
  v15(a5, a6);
  swift_unknownObjectRelease();
  (*(v9 + 104))(v12, enum case for BetaEnrollment.State.enrolled(_:), v8);
  sub_100005AA0(qword_1000ADD68, &type metadata accessor for BetaEnrollment.State, &protocol conformance descriptor for BetaEnrollment.State);
  sub_10008729C();
  sub_10008729C();
  v16 = *(v9 + 8);
  v16(v12, v8);
  v16(v14, v8);
  result = 0;
  if (v22[1] == v22[0])
  {
    v18 = [objc_opt_self() mainBundle];
    v21._countAndFlagsBits = 0xE000000000000000;
    v23._object = 0x800000010008F660;
    v23._countAndFlagsBits = 0xD000000000000015;
    v24.value._countAndFlagsBits = 0;
    v24.value._object = 0;
    v19.super.isa = v18;
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    v20 = sub_100085FFC(v23, v24, v19, v25, 0, v21);

    return v20;
  }

  return result;
}

uint64_t sub_10004F150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v23 = a4;
  v24 = a7;
  v22 = a3;
  v21 = a1;
  v10 = sub_10008672C();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v21 - v15;
  v17 = *(a6 + 72);
  swift_unknownObjectRetain();
  v17(a5, a6);
  (*(v11 + 104))(v14, enum case for BetaEnrollment.State.enrolled(_:), v10);
  sub_100005AA0(qword_1000ADD68, &type metadata accessor for BetaEnrollment.State, &protocol conformance descriptor for BetaEnrollment.State);
  sub_10008729C();
  sub_10008729C();
  v18 = *(v11 + 8);
  v18(v14, v10);
  v18(v16, v10);
  LOBYTE(v33) = v31 == v33;
  sub_100086E7C();
  v32 = a2;
  v25 = a5;
  v26 = a6;
  v27 = v21;
  v28 = a2;
  v29 = v22;
  v30 = v23;
  sub_100001EEC(&qword_1000ADD40, &qword_100088918);
  type metadata accessor for BetaProgramsEnrollmentSelectionView(0, a5, a6, v19);
  sub_100006454(&qword_1000ADD48, &qword_1000ADD40, &qword_100088918, &protocol conformance descriptor for VStack<A>);
  swift_getWitnessTable();
  return sub_1000868CC();
}

uint64_t sub_10004F474@<X0>(uint64_t a1@<X1>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v8 = *(a3 + 16);
  v9 = *(v8 + 8);
  swift_unknownObjectRetain();
  v23 = v9(a2, v8);
  v11 = v10;
  v12 = (*(a3 + 64))(a2, a3);
  v14 = v13;
  v16 = sub_10004EEF8(v12, a1, 0, v15, a2, a3);
  v18 = v17;
  v19 = (*(v8 + 16))(a2, v8);
  v21 = v20;
  result = swift_unknownObjectRelease();
  *a4 = v19;
  *(a4 + 8) = v21;
  *(a4 + 40) = 1;
  *(a4 + 48) = v12;
  *(a4 + 56) = v14;
  *(a4 + 64) = v23;
  *(a4 + 72) = v11;
  *(a4 + 80) = v16;
  *(a4 + 88) = v18;
  return result;
}

uint64_t sub_10004F594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v96 = a1;
  v97 = a4;
  v94 = a3;
  v88 = a2;
  v98 = a7;
  v103 = sub_100003200(&qword_1000ADD40, &qword_100088918);
  v104 = type metadata accessor for BetaProgramsEnrollmentSelectionView(255, a5, a6, v9);
  v105 = sub_100006454(&qword_1000ADD48, &qword_1000ADD40, &qword_100088918, &protocol conformance descriptor for VStack<A>);
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1000868DC();
  v86 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v85 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v84 = &v75 - v13;
  v87 = a5;
  swift_getAssociatedTypeWitness();
  v14 = sub_10008739C();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v103 = v14;
  v104 = AssociatedTypeWitness;
  v105 = &type metadata for AnyView;
  WitnessTable = v16;
  v107 = AssociatedConformanceWitness;
  v18 = sub_100086FBC();
  v19 = swift_getWitnessTable();
  v102 = &protocol witness table for AnyView;
  v20 = swift_getWitnessTable();
  v103 = v10;
  v104 = v18;
  v78 = v18;
  v95 = v19;
  v105 = v19;
  WitnessTable = v20;
  v75 = v20;
  v21 = sub_10008694C();
  v79 = *(v21 - 8);
  v22 = __chkstk_darwin(v21);
  v77 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v76 = &v75 - v24;
  v83 = sub_1000864CC();
  v82 = *(v83 - 8);
  v25 = __chkstk_darwin(v83);
  v81 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v80 = &v75 - v27;
  v28 = sub_10008672C();
  v29 = *(v28 - 8);
  v30 = __chkstk_darwin(v28);
  v32 = &v75 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v34 = &v75 - v33;
  v92 = v21;
  v93 = v10;
  v35 = sub_100086B9C();
  v90 = *(v35 - 8);
  v91 = v35;
  __chkstk_darwin(v35);
  v89 = &v75 - v36;
  v37 = a6;
  v38 = *(a6 + 72);
  v39 = swift_unknownObjectRetain();
  v40 = v87;
  v38();
  (*(v29 + 104))(v32, enum case for BetaEnrollment.State.multiple(_:), v28);
  sub_100005AA0(qword_1000ADD68, &type metadata accessor for BetaEnrollment.State, &protocol conformance descriptor for BetaEnrollment.State);
  sub_10008729C();
  sub_10008729C();
  v41 = *(v29 + 8);
  v41(v32, v28);
  v41(v34, v28);
  if (v103 != v101)
  {
    v45 = v39;
    swift_unknownObjectRelease();
    v52 = v37;
    v53 = v40;
    goto LABEL_5;
  }

  v42 = v37;
  v43 = *(v37 + 48);
  v44 = v80;
  v45 = v39;
  v46 = v40;
  v43(v40, v42);
  swift_unknownObjectRelease();
  v47 = v82;
  v48 = v81;
  v49 = v83;
  (*(v82 + 104))(v81, enum case for BetaEnrollment.Availability.unavailable(_:), v83);
  sub_100005AA0(&qword_1000ADD58, &type metadata accessor for BetaEnrollment.Availability, &protocol conformance descriptor for BetaEnrollment.Availability);
  v50 = sub_10008713C();
  v51 = *(v47 + 8);
  v51(v48, v49);
  v51(v44, v49);
  v52 = v42;
  v53 = v46;
  if (v50)
  {
LABEL_5:
    v67 = v85;
    sub_10004F150(v96, v45, v94 & 1, v97, v53, v52, v85);
    v68 = v84;
    v69 = v93;
    v61 = v95;
    sub_10004EDD8();
    v70 = *(v86 + 8);
    v70(v67, v69);
    sub_10004EDD8();
    v71 = v92;
    v72 = swift_getWitnessTable();
    v66 = v89;
    sub_10004B430(v67, v71, v69, v72, v61);
    v70(v67, v69);
    v70(v68, v69);
    goto LABEL_6;
  }

  v54 = swift_allocObject();
  *(v54 + 16) = v46;
  *(v54 + 24) = v42;
  *(v54 + 32) = v96;
  *(v54 + 40) = v45;
  *(v54 + 48) = v94 & 1;
  v55 = v97;
  *(v54 + 56) = v97;
  v56 = __chkstk_darwin(v55);
  *(&v75 - 6) = v46;
  *(&v75 - 5) = v42;
  *(&v75 - 4) = v57;
  *(&v75 - 3) = v45;
  *(&v75 - 16) = v58;
  *(&v75 - 1) = v56;

  swift_unknownObjectRetain();
  v59 = v77;
  v60 = v93;
  v61 = v95;
  sub_10008693C();
  v62 = v92;
  v63 = swift_getWitnessTable();
  v64 = v76;
  sub_10004EDD8();
  v65 = *(v79 + 8);
  v65(v59, v62);
  sub_10004EDD8();
  v66 = v89;
  sub_10004B338(v59, v62, v60, v63, v61);
  v65(v59, v62);
  v65(v64, v62);
LABEL_6:
  v99 = swift_getWitnessTable();
  v100 = v61;
  v73 = v91;
  swift_getWitnessTable();
  sub_10004EDD8();
  return (*(v90 + 8))(v66, v73);
}