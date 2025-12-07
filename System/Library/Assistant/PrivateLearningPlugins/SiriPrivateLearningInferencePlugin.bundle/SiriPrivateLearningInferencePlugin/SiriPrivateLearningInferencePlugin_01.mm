uint64_t sub_192B4(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return _swift_task_switch(sub_192D8, 0, 0);
}

uint64_t sub_192D8()
{
  v1 = v0[8];
  v2 = *(v0[9] + 224);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;

  v4 = sub_E99C(sub_2113C, v3, v2);
  v0[10] = v4;

  v8 = v4[2];
  v0[11] = v8;
  v9 = v0[7];
  if (v8)
  {
    v0[12] = 0;
    v0[13] = v9;
    v10 = v0[10];
    if (*(v10 + 16))
    {
      sub_54EC(v10 + 32, (v0 + 2));
      v11 = v0[5];
      v12 = v0[6];
      sub_5550(v0 + 2, v11);
      v13 = swift_task_alloc();
      v0[14] = v13;
      *v13 = v0;
      v13[1] = sub_1946C;
      v5 = v9;
      v6 = v11;
      v7 = v12;
    }

    else
    {
      __break(1u);
    }

    return dispatch thunk of EventStreamProcessing.process(_:)(v5, v6, v7);
  }

  else
  {

    v14 = v0[1];

    return v14(v9);
  }
}

uint64_t sub_1946C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    sub_5448((v4 + 16));

    v5 = sub_19718;
  }

  else
  {
    *(v4 + 128) = a1;
    sub_5448((v4 + 16));

    v5 = sub_195D8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_195D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[12] + 1;
  v5 = v3[16];
  if (v4 == v3[11])
  {

    v6 = v3[1];

    return v6(v5);
  }

  else
  {
    v3[12] = v4;
    v3[13] = v5;
    v8 = v3[10];
    if (v4 >= *(v8 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_54EC(v8 + 40 * v4 + 32, (v3 + 2));
      v9 = v3[5];
      v10 = v3[6];
      sub_5550(v3 + 2, v9);
      v11 = swift_task_alloc();
      v3[14] = v11;
      *v11 = v3;
      v11[1] = sub_1946C;
      a1 = v5;
      a2 = v9;
      a3 = v10;
    }

    return dispatch thunk of EventStreamProcessing.process(_:)(a1, a2, a3);
  }
}

uint64_t sub_19730(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  sub_1B98(&qword_3D620, &unk_30F70);
  v2[20] = swift_task_alloc();
  v3 = sub_2F148();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  sub_1B98(&qword_3D630, &qword_30F80);
  v2[25] = swift_task_alloc();
  v4 = sub_1B98(&qword_3D648, &qword_30F90);
  v2[26] = v4;
  v2[27] = *(v4 - 8);
  v2[28] = swift_task_alloc();
  v5 = sub_2EBD8();
  v2[29] = v5;
  v2[30] = *(v5 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v6 = sub_1B98(&qword_3D650, &qword_30F98);
  v2[34] = v6;
  v2[35] = *(v6 - 8);
  v2[36] = swift_task_alloc();
  v7 = sub_2F1F8();
  v2[37] = v7;
  v2[38] = *(v7 - 8);
  v2[39] = swift_task_alloc();

  return _swift_task_switch(sub_19A0C, 0, 0);
}

uint64_t sub_19A0C()
{
  v1 = *(*(v0 + 152) + 224);
  if (v1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30238())
  {
    v3 = 0;
    v4 = _swiftEmptyArrayStorage;
    v42 = i;
    while ((v1 & 0xC000000000000001) != 0)
    {
      v5 = sub_301C8();
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_24;
      }

LABEL_9:
      v7 = (*(*v5 + 152))();

      v8 = *(v7 + 16);
      v9 = v4[2];
      v10 = v9 + v8;
      if (__OFADD__(v9, v8))
      {
        goto LABEL_26;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v10 <= v4[3] >> 1)
      {
        if (*(v7 + 16))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v9 <= v10)
        {
          v12 = v9 + v8;
        }

        else
        {
          v12 = v9;
        }

        v4 = sub_2976C(isUniquelyReferenced_nonNull_native, v12, 1, v4);
        if (*(v7 + 16))
        {
LABEL_18:
          if ((v4[3] >> 1) - v4[2] < v8)
          {
            goto LABEL_28;
          }

          swift_arrayInitWithCopy();

          if (v8)
          {
            v13 = v4[2];
            v14 = __OFADD__(v13, v8);
            v15 = v13 + v8;
            if (v14)
            {
              goto LABEL_29;
            }

            v4[2] = v15;
          }

          goto LABEL_5;
        }
      }

      if (v8)
      {
        goto LABEL_27;
      }

LABEL_5:
      ++v3;
      if (v6 == v42)
      {
        goto LABEL_32;
      }
    }

    if (v3 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_25;
    }

    v5 = *(v1 + 8 * v3 + 32);

    v6 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_24:
    __break(1u);
LABEL_25:
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
    ;
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_32:
  v16 = *(v0 + 304);
  v17 = sub_20FA0(v4);

  v18 = v17 + 56;
  v19 = -1;
  v20 = -1 << *(v17 + 32);
  if (-v20 < 64)
  {
    v19 = ~(-1 << -v20);
  }

  v21 = v19 & *(v17 + 56);
  v22 = (63 - v20) >> 6;
  v43 = v17;

  v27 = 0;
  v28 = _swiftEmptyArrayStorage;
  *(v0 + 320) = _swiftEmptyArrayStorage;
  if (v21)
  {
    goto LABEL_41;
  }

  while (1)
  {
LABEL_37:
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      goto LABEL_58;
    }

    if (v29 >= v22)
    {
      break;
    }

    v21 = *(v18 + 8 * v29);
    ++v27;
    if (v21)
    {
      v44 = v28;
      v27 = v29;
      while (1)
      {
        v30 = *(v0 + 312);
        v31 = *(v0 + 296);
        v32 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
        (*(v16 + 16))(v30, *(v43 + 48) + *(v16 + 72) * (v32 | (v27 << 6)), v31);
        sub_2F1A8();
        v23 = (*(v16 + 8))(v30, v31);
        if (*(v0 + 80))
        {
          sub_1978((v0 + 56), v0 + 16);
          v28 = v44;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_29748(0, v44[2] + 1, 1, v44);
          }

          v34 = v28[2];
          v33 = v28[3];
          if (v34 >= v33 >> 1)
          {
            v28 = sub_29748((v33 > 1), v34 + 1, 1, v28);
          }

          v28[2] = v34 + 1;
          v23 = sub_1978((v0 + 16), &v28[5 * v34 + 4]);
          *(v0 + 320) = v28;
          if (!v21)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v28 = v44;
          *(v0 + 320) = v44;
          if (!v21)
          {
            goto LABEL_37;
          }
        }

LABEL_41:
        v44 = v28;
      }
    }
  }

  v35 = v28[2];
  *(v0 + 328) = v35;
  if (v35)
  {
    *(v0 + 344) = 0;
    *(v0 + 336) = _swiftEmptyArrayStorage;
    v36 = *(v0 + 320);
    if (*(v36 + 16))
    {
      sub_54EC(v36 + 32, v0 + 96);
      v37 = *(v0 + 120);
      v38 = *(v0 + 128);
      sub_5550((v0 + 96), v37);
      sub_2EB78();
      v39 = swift_task_alloc();
      *(v0 + 352) = v39;
      *v39 = v0;
      v39[1] = sub_19F9C;
      v23 = *(v0 + 288);
      v24 = *(v0 + 264);
      v25 = v37;
      v26 = v38;

      return dispatch thunk of EventStreamDefinition.events(since:)(v23, v24, v25, v26);
    }

LABEL_58:
    __break(1u);
    return dispatch thunk of EventStreamDefinition.events(since:)(v23, v24, v25, v26);
  }

  v40 = *(v0 + 8);

  return v40(_swiftEmptyArrayStorage);
}

uint64_t sub_19F9C()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = v2[33];
    v4 = v2[29];
    v5 = v2[30];

    sub_5448(v2 + 12);
    (*(v5 + 8))(v3, v4);

    v6 = sub_1AA68;
  }

  else
  {
    v7 = v2[33];
    v8 = v2[29];
    v9 = v2[30];
    sub_5448(v2 + 12);
    v10 = *(v9 + 8);
    v2[46] = v10;
    v2[47] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v7, v8);
    v6 = sub_1A130;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1A130()
{
  sub_2F218();
  v0[48] = v0[42];
  v1 = sub_21430(&qword_3D658, &qword_3D648, &qword_30F90, &protocol conformance descriptor for AsyncEventStream<A>.AsyncIterator);
  v2 = swift_task_alloc();
  v0[49] = v2;
  *v2 = v0;
  v2[1] = sub_1A21C;
  v3 = v0[25];
  v4 = v0[26];

  return dispatch thunk of AsyncIteratorProtocol.next()(v3, v4, v1);
}

uint64_t sub_1A21C()
{
  *(*v1 + 400) = v0;

  if (v0)
  {

    v2 = sub_1A8A0;
  }

  else
  {
    v2 = sub_1A338;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1A338()
{
  v2 = v0[25];
  v3 = v0[21];
  v4 = v0[22];
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    goto LABEL_8;
  }

  v5 = v0[29];
  v6 = v0[30];
  v7 = v0[20];
  v1 = *(v4 + 32);
  v1(v0[24], v2, v3);
  sub_2F108();
  v8 = *(v6 + 48);
  if (v8(v7, 1, v5) == 1)
  {
    v9 = v0[29];
    v10 = v0[20];
    sub_2EB98();
    if (v8(v10, 1, v9) != 1)
    {
      sub_5B38(v0[20], &qword_3D620, &unk_30F70);
    }
  }

  else
  {
    (*(v0[30] + 32))(v0[32], v0[20], v0[29]);
  }

  v11 = v0[46];
  v12 = v0[31];
  v13 = v0[29];
  sub_2EB58();
  sub_23F00(&qword_3D660, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v14 = sub_2FF68();
  v11(v12, v13);
  v15 = v0[21];
  v16 = v0[22];
  if (v14)
  {
    v17 = v0[24];
    (v0[46])(v0[32], v0[29]);
    (*(v16 + 8))(v17, v15);
LABEL_8:
    v18 = v0[41];
    v20 = v0[35];
    v19 = v0[36];
    v21 = v0[34];
    v22 = v0[43] + 1;
    (*(v0[27] + 8))(v0[28], v0[26]);
    (*(v20 + 8))(v19, v21);
    v23 = v0[48];
    if (v22 == v18)
    {

      v24 = v0[1];

      return v24(v23);
    }

    v26 = v0[43] + 1;
    v0[42] = v23;
    v0[43] = v26;
    v27 = v0[40];
    if (v26 < *(v27 + 16))
    {
      sub_54EC(v27 + 40 * v26 + 32, (v0 + 12));
      v28 = v0[15];
      v29 = v0[16];
      sub_5550(v0 + 12, v28);
      sub_2EB78();
      v30 = swift_task_alloc();
      v0[44] = v30;
      *v30 = v0;
      v30[1] = sub_19F9C;
      v31 = v0[36];
      v32 = v0[33];

      return dispatch thunk of EventStreamDefinition.events(since:)(v31, v32, v28, v29);
    }

    __break(1u);
    goto LABEL_23;
  }

  (*(v16 + 16))(v0[23], v0[24], v0[21]);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = v0[48];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_23:
    v23 = sub_296FC(0, *(v23 + 2) + 1, 1, v23);
  }

  v35 = *(v23 + 2);
  v34 = *(v23 + 3);
  if (v35 >= v34 >> 1)
  {
    v23 = sub_296FC((v34 > 1), v35 + 1, 1, v23);
  }

  v37 = v0[23];
  v36 = v0[24];
  v38 = v0[21];
  v39 = v0[22];
  (v0[46])(v0[32], v0[29]);
  (*(v39 + 8))(v36, v38);
  *(v23 + 2) = v35 + 1;
  v1(&v23[((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v35], v37, v38);
  v0[48] = v23;
  v40 = sub_21430(&qword_3D658, &qword_3D648, &qword_30F90, &protocol conformance descriptor for AsyncEventStream<A>.AsyncIterator);
  v41 = swift_task_alloc();
  v0[49] = v41;
  *v41 = v0;
  v41[1] = sub_1A21C;
  v42 = v0[25];
  v43 = v0[26];

  return dispatch thunk of AsyncIteratorProtocol.next()(v42, v43, v40);
}

uint64_t sub_1A8A0()
{
  *(v0 + 136) = *(v0 + 400);
  sub_1B98(&qword_3CDE8, &qword_30FA0);
  swift_willThrowTypedImpl();

  return _swift_task_switch(sub_1A940, 0, 0);
}

uint64_t sub_1A940()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[34];
  (*(v0[27] + 8))(v0[28], v0[26]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1AA68()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_1AB58(uint64_t a1)
{
  v3 = sub_1B98(&qword_3D620, &unk_30F70);
  __chkstk_darwin(v3 - 8);
  v44 = &v34 - v4;
  v5 = sub_2EC08();
  __chkstk_darwin(v5 - 8);
  v43 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_2F198();
  v7 = *(v42 - 8);
  __chkstk_darwin(v42);
  v45 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B95C();
  v10 = *(a1 + 16);
  if (!v10)
  {

    return _swiftEmptyArrayStorage;
  }

  v51 = _swiftEmptyArrayStorage;
  sub_2BC44(0, v10, 0);
  v11 = 0;
  v12 = 0;
  v13 = a1 + 32;
  v14 = v51;
  v40 = v9[2];
  v41 = v13;
  v34 = v9;
  v35 = v9 + 4;
  v36 = v7 + 32;
  v37 = v10;
  v15 = *(v1 + 224);
  v38 = v7;
  v39 = v15;
  while (1)
  {
    v49 = v14;
    v16 = *(v41 + 16 * v11 + 8);

    v17 = sub_EBF4(v39);
    v47 = v16;
    v48 = v12;
    v46 = sub_1AFB8(v16, v17);

    v18 = v40;
    if (v40)
    {
      break;
    }

LABEL_20:
    sub_2EF48();
    sub_2EF38();
    v31 = v45;
    sub_2F178();

    v14 = v49;
    v51 = v49;
    v33 = v49[2];
    v32 = v49[3];
    if (v33 >= v32 >> 1)
    {
      sub_2BC44((v32 > 1), v33 + 1, 1);
      v31 = v45;
      v14 = v51;
    }

    ++v11;
    v14[2] = v33 + 1;
    (*(v38 + 32))(v14 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v33, v31, v42);
    v12 = v48;
    if (v11 == v37)
    {

      return v14;
    }
  }

  v19 = v35;
  v20 = _swiftEmptyArrayStorage;
  while (1)
  {
    sub_54EC(v19, v50);
    v22 = objc_autoreleasePoolPush();
    sub_5550(v50, v50[3]);
    v23 = sub_2EE18();
    objc_autoreleasePoolPop(v22);
    result = sub_5448(v50);
    v24 = *(v23 + 16);
    v25 = v20[2];
    v26 = v25 + v24;
    if (__OFADD__(v25, v24))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v26 <= v20[3] >> 1)
    {
      if (*(v23 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v25 <= v26)
      {
        v27 = v25 + v24;
      }

      else
      {
        v27 = v25;
      }

      result = sub_29724(result, v27, 1, v20);
      v20 = result;
      if (*(v23 + 16))
      {
LABEL_16:
        if ((v20[3] >> 1) - v20[2] < v24)
        {
          goto LABEL_28;
        }

        sub_1B98(&qword_3D628, &qword_316D0);
        swift_arrayInitWithCopy();

        if (v24)
        {
          v28 = v20[2];
          v29 = __OFADD__(v28, v24);
          v30 = v28 + v24;
          if (v29)
          {
            goto LABEL_29;
          }

          v20[2] = v30;
        }

        goto LABEL_6;
      }
    }

    if (v24)
    {
      goto LABEL_27;
    }

LABEL_6:
    v19 += 40;
    if (!--v18)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

char *sub_1AFB8(uint64_t *a1, unint64_t a2)
{
  v4 = sub_1B98(&qword_3D630, &qword_30F80);
  v5 = __chkstk_darwin(v4 - 8);
  v60 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v69 = &v44 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v44 - v10;
  v12 = __chkstk_darwin(v9);
  v74 = &v44 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v44 - v15;
  __chkstk_darwin(v14);
  v18 = &v44 - v17;
  v19 = sub_2F148();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v49 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  __chkstk_darwin(v23);
  v48 = &v44 - v25;
  v55 = a1[2];
  if (!v55)
  {
    return _swiftEmptyArrayStorage;
  }

  v46 = v18;
  v65 = v24;
  v26 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
    goto LABEL_39;
  }

  v62 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
LABEL_4:
  v27 = 0;
  v29 = v20[2];
  v28 = v20 + 2;
  v56 = v29;
  v45 = (*(v28 + 64) + 32) & ~*(v28 + 64);
  v51 = a1 + v45;
  v52 = v28[7];
  v67 = a2;
  v68 = a2 & 0xC000000000000001;
  v72 = (v28 + 4);
  v73 = (v28 + 5);
  v64 = (v28 + 2);
  v59 = v55 - 1;
  v57 = v28;
  v61 = (v28 - 1);
  v50 = _swiftEmptyArrayStorage;
  v20 = &qword_3D630;
  a1 = &qword_30F80;
  v70 = v11;
  v30 = v62;
  v31 = v69;
  v66 = v19;
  v47 = v16;
  do
  {
    v58 = v27 + 1;
    v32 = __OFADD__(v27, 1);
    v54 = v32;
    v63 = v27;
    v56(v16, &v51[v52 * v27], v19);
    v71 = *v73;
    v71(v16, 0, 1, v19);
    sub_5AD0(v16, v74, &qword_3D630, &qword_30F80);
    if (v30)
    {
      v16 = 0;
      v53 = &v51[v58 * v52];
      do
      {
        if (v68)
        {
          a2 = sub_301C8();
          v35 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_35;
          }
        }

        else
        {
          if (v16 >= *(v26 + 16))
          {
            goto LABEL_36;
          }

          a2 = *(v67 + 8 * v16 + 32);

          v35 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            v62 = sub_30238();
            goto LABEL_4;
          }
        }

        v20 = &qword_3D630;
        sub_5AD0(v74, v31, &qword_3D630, &qword_30F80);
        if ((*v72)(v31, 1, v19) == 1)
        {
          sub_5B38(v31, &qword_3D630, &qword_30F80);
          v33 = v11;
          v71(v11, 1, 1, v19);
        }

        else
        {
          v11 = v65;
          (*v64)(v65, v31, v19);
          if (v63 == v59)
          {
            v36 = v60;
            v71(v60, 1, 1, v19);
          }

          else
          {
            if (v54)
            {
              goto LABEL_37;
            }

            if (v58 >= v55)
            {
              goto LABEL_38;
            }

            v36 = v60;
            v56(v60, v53, v19);
            v71(v36, 0, 1, v19);
            v11 = v65;
          }

          sub_2F638();
          v37 = v36;
          v33 = v70;
          v20 = &qword_3D630;
          sub_5B38(v37, &qword_3D630, &qword_30F80);
          (*v61)(v11, v19);
          v30 = v62;
        }

        v34 = v74;
        sub_5B38(v74, &qword_3D630, &qword_30F80);

        v11 = v33;
        sub_C610(v33, v34, &qword_3D630, &qword_30F80);
        ++v16;
        v31 = v69;
        v19 = v66;
      }

      while (v35 != v30);
    }

    v16 = v47;
    v20 = &qword_3D630;
    sub_5B38(v47, &qword_3D630, &qword_30F80);
    a2 = v46;
    sub_C610(v74, v46, &qword_3D630, &qword_30F80);
    if ((*v72)(a2, 1, v19) == 1)
    {
      sub_5B38(a2, &qword_3D630, &qword_30F80);
    }

    else
    {
      v38 = *v64;
      v39 = v48;
      (*v64)(v48, a2, v19);
      v56(v49, v39, v19);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = sub_296FC(0, *(v50 + 2) + 1, 1, v50);
      }

      v41 = *(v50 + 2);
      v40 = *(v50 + 3);
      a2 = v41 + 1;
      if (v41 >= v40 >> 1)
      {
        v50 = sub_296FC((v40 > 1), v41 + 1, 1, v50);
      }

      (*v61)(v48, v19);
      v42 = v50;
      *(v50 + 2) = a2;
      v38(&v42[v45 + v41 * v52], v49, v19);
      v11 = v70;
      v20 = &qword_3D630;
      v30 = v62;
    }

    v27 = v58;
  }

  while (v58 != v55);
  return v50;
}

void *sub_1B764()
{
  v1 = *(v0 + 224);
  if (v1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30238())
  {
    v3 = 0;
    v4 = _swiftEmptyArrayStorage;
    while ((v1 & 0xC000000000000001) != 0)
    {
      v5 = sub_301C8();
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_24;
      }

LABEL_9:
      v7 = (*(*v5 + 160))();

      v8 = *(v7 + 16);
      v9 = v4[2];
      v10 = v9 + v8;
      if (__OFADD__(v9, v8))
      {
        goto LABEL_26;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v10 <= v4[3] >> 1)
      {
        if (*(v7 + 16))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v9 <= v10)
        {
          v12 = v9 + v8;
        }

        else
        {
          v12 = v9;
        }

        v4 = sub_29580(isUniquelyReferenced_nonNull_native, v12, 1, v4);
        if (*(v7 + 16))
        {
LABEL_18:
          if ((v4[3] >> 1) - v4[2] < v8)
          {
            goto LABEL_28;
          }

          sub_1B98(&qword_3D618, &qword_316B0);
          swift_arrayInitWithCopy();

          if (v8)
          {
            v13 = v4[2];
            v14 = __OFADD__(v13, v8);
            v15 = v13 + v8;
            if (v14)
            {
              goto LABEL_29;
            }

            v4[2] = v15;
          }

          goto LABEL_5;
        }
      }

      if (v8)
      {
        goto LABEL_27;
      }

LABEL_5:
      ++v3;
      if (v6 == i)
      {
        return v4;
      }
    }

    if (v3 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_25;
    }

    v5 = *(v1 + 8 * v3 + 32);

    v6 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_24:
    __break(1u);
LABEL_25:
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
    ;
  }

  return _swiftEmptyArrayStorage;
}

void *sub_1B95C()
{
  v1 = *(v0 + 224);
  if (v1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30238())
  {
    v3 = 0;
    v4 = _swiftEmptyArrayStorage;
    while ((v1 & 0xC000000000000001) != 0)
    {
      v5 = sub_301C8();
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_24;
      }

LABEL_9:
      v7 = (*(*v5 + 112))();

      v8 = *(v7 + 16);
      v9 = v4[2];
      v10 = v9 + v8;
      if (__OFADD__(v9, v8))
      {
        goto LABEL_26;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v10 <= v4[3] >> 1)
      {
        if (*(v7 + 16))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v9 <= v10)
        {
          v12 = v9 + v8;
        }

        else
        {
          v12 = v9;
        }

        v4 = sub_29538(isUniquelyReferenced_nonNull_native, v12, 1, v4);
        if (*(v7 + 16))
        {
LABEL_18:
          if ((v4[3] >> 1) - v4[2] < v8)
          {
            goto LABEL_28;
          }

          sub_1B98(&qword_3D610, &unk_30F60);
          swift_arrayInitWithCopy();

          if (v8)
          {
            v13 = v4[2];
            v14 = __OFADD__(v13, v8);
            v15 = v13 + v8;
            if (v14)
            {
              goto LABEL_29;
            }

            v4[2] = v15;
          }

          goto LABEL_5;
        }
      }

      if (v8)
      {
        goto LABEL_27;
      }

LABEL_5:
      ++v3;
      if (v6 == i)
      {
        return v4;
      }
    }

    if (v3 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_25;
    }

    v5 = *(v1 + 8 * v3 + 32);

    v6 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_24:
    __break(1u);
LABEL_25:
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
    ;
  }

  return _swiftEmptyArrayStorage;
}

void *sub_1BB54()
{
  v1 = *(v0 + 224);
  if (v1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30238())
  {
    v3 = 0;
    v4 = _swiftEmptyArrayStorage;
    while ((v1 & 0xC000000000000001) != 0)
    {
      v5 = sub_301C8();
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_24;
      }

LABEL_9:
      v7 = (*(*v5 + 128))();

      v8 = *(v7 + 16);
      v9 = v4[2];
      v10 = v9 + v8;
      if (__OFADD__(v9, v8))
      {
        goto LABEL_26;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v10 <= v4[3] >> 1)
      {
        if (*(v7 + 16))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v9 <= v10)
        {
          v12 = v9 + v8;
        }

        else
        {
          v12 = v9;
        }

        v4 = sub_2955C(isUniquelyReferenced_nonNull_native, v12, 1, v4);
        if (*(v7 + 16))
        {
LABEL_18:
          if ((v4[3] >> 1) - v4[2] < v8)
          {
            goto LABEL_28;
          }

          sub_1B98(&qword_3D608, &qword_316C0);
          swift_arrayInitWithCopy();

          if (v8)
          {
            v13 = v4[2];
            v14 = __OFADD__(v13, v8);
            v15 = v13 + v8;
            if (v14)
            {
              goto LABEL_29;
            }

            v4[2] = v15;
          }

          goto LABEL_5;
        }
      }

      if (v8)
      {
        goto LABEL_27;
      }

LABEL_5:
      ++v3;
      if (v6 == i)
      {
        return v4;
      }
    }

    if (v3 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_25;
    }

    v5 = *(v1 + 8 * v3 + 32);

    v6 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_24:
    __break(1u);
LABEL_25:
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
    ;
  }

  return _swiftEmptyArrayStorage;
}

void *sub_1BD4C()
{
  v1 = *(v0 + 224);
  if (v1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30238())
  {
    v3 = 0;
    v4 = _swiftEmptyArrayStorage;
    while ((v1 & 0xC000000000000001) != 0)
    {
      v5 = sub_301C8();
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_24;
      }

LABEL_9:
      v7 = (*(*v5 + 168))();

      v8 = *(v7 + 16);
      v9 = v4[2];
      v10 = v9 + v8;
      if (__OFADD__(v9, v8))
      {
        goto LABEL_26;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v10 <= v4[3] >> 1)
      {
        if (*(v7 + 16))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v9 <= v10)
        {
          v12 = v9 + v8;
        }

        else
        {
          v12 = v9;
        }

        v4 = sub_295A4(isUniquelyReferenced_nonNull_native, v12, 1, v4);
        if (*(v7 + 16))
        {
LABEL_18:
          if ((v4[3] >> 1) - v4[2] < v8)
          {
            goto LABEL_28;
          }

          sub_1B98(&qword_3D600, &unk_30F50);
          swift_arrayInitWithCopy();

          if (v8)
          {
            v13 = v4[2];
            v14 = __OFADD__(v13, v8);
            v15 = v13 + v8;
            if (v14)
            {
              goto LABEL_29;
            }

            v4[2] = v15;
          }

          goto LABEL_5;
        }
      }

      if (v8)
      {
        goto LABEL_27;
      }

LABEL_5:
      ++v3;
      if (v6 == i)
      {
        return v4;
      }
    }

    if (v3 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_25;
    }

    v5 = *(v1 + 8 * v3 + 32);

    v6 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_24:
    __break(1u);
LABEL_25:
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
    ;
  }

  return _swiftEmptyArrayStorage;
}

void *sub_1BF44(uint64_t a1)
{
  v21 = a1;
  v2 = *(v1 + 224);
  if (v2 >> 62)
  {
    goto LABEL_30;
  }

  v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  if (v3)
  {
    do
    {
      v4 = 0;
      v22 = v2 & 0xC000000000000001;
      v5 = _swiftEmptyArrayStorage;
      while (v22)
      {
        v6 = sub_301C8();
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_24;
        }

LABEL_9:
        v8 = (*(*v6 + 120))();

        v9 = *(v8 + 16);
        v10 = *(v5 + 2);
        v11 = v10 + v9;
        if (__OFADD__(v10, v9))
        {
          goto LABEL_26;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v11 <= *(v5 + 3) >> 1)
        {
          if (*(v8 + 16))
          {
            goto LABEL_18;
          }
        }

        else
        {
          if (v10 <= v11)
          {
            v13 = v10 + v9;
          }

          else
          {
            v13 = v10;
          }

          v5 = sub_29378(isUniquelyReferenced_nonNull_native, v13, 1, v5);
          if (*(v8 + 16))
          {
LABEL_18:
            v14 = *(v5 + 2);
            if ((*(v5 + 3) >> 1) - v14 < v9)
            {
              goto LABEL_28;
            }

            memcpy(&v5[16 * v14 + 32], (v8 + 32), 16 * v9);

            if (v9)
            {
              v15 = *(v5 + 2);
              v16 = __OFADD__(v15, v9);
              v17 = v15 + v9;
              if (v16)
              {
                goto LABEL_29;
              }

              *(v5 + 2) = v17;
            }

            goto LABEL_5;
          }
        }

        if (v9)
        {
          goto LABEL_27;
        }

LABEL_5:
        ++v4;
        if (v7 == v3)
        {
          goto LABEL_32;
        }
      }

      if (v4 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_25;
      }

      v6 = *(v2 + 8 * v4 + 32);

      v7 = v4 + 1;
      if (!__OFADD__(v4, 1))
      {
        goto LABEL_9;
      }

LABEL_24:
      __break(1u);
LABEL_25:
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
      a1 = sub_30238();
      v3 = a1;
    }

    while (a1);
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_32:
  __chkstk_darwin(a1);
  v20[2] = v21;
  v18 = sub_E3C0(sub_1C37C, v20, v5);

  return v18;
}

uint64_t sub_1C17C@<X0>(void *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_5550(a2, a2[3]);
  sub_2EE58();
  sub_1B98(&qword_3CF70, &unk_315C0);
  v4 = sub_30218();

  *a3 = v4;
  return result;
}

uint64_t sub_1C220()
{
  sub_5448(v0 + 2);
  sub_5448(v0 + 7);
  sub_5448(v0 + 13);
  sub_5448(v0 + 18);
  sub_5448(v0 + 23);

  return swift_deallocClassInstance();
}

uint64_t sub_1C2B4()
{
  v0 = sub_2FF48();
  sub_55B0(v0, qword_3D460);
  v1 = sub_4FD8(v0, qword_3D460);
  if (qword_3CC08 != -1)
  {
    swift_once();
  }

  v2 = sub_4FD8(v0, qword_3E470);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_1C398(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1C3B8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1C3E8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2EC08();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_23F00(&qword_3CFB0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v33 = a2;
  v11 = sub_2FF58();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_23F00(&qword_3CFB8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = sub_2FF78();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1D410(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1C6C8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_30318();
  sub_2FFB8();
  v8 = sub_30338();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_302A8() & 1) != 0)
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

    sub_1D6D8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1C818(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2F1F8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_23F00(&qword_3D668, &type metadata accessor for EventStreamType, &protocol conformance descriptor for EventStreamType);
  v33 = a2;
  v11 = sub_2FF58();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_23F00(&qword_3D670, &type metadata accessor for EventStreamType, &protocol conformance descriptor for EventStreamType);
      v21 = sub_2FF78();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1D858(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1CAF8(uint64_t a1)
{
  v2 = v1;
  v36 = sub_2EC08();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1B98(&qword_3D788, &unk_310C0);
  result = sub_30198();
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
      sub_23F00(&qword_3CFB0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = sub_2FF58();
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

uint64_t sub_1CE54(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1B98(&qword_3D698, &qword_30FC8);
  result = sub_30198();
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
      sub_30318();
      sub_2FFB8();
      result = sub_30338();
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

uint64_t sub_1D0B4(uint64_t a1)
{
  v2 = v1;
  v36 = sub_2F1F8();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1B98(&qword_3D678, &qword_30FA8);
  result = sub_30198();
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
      sub_23F00(&qword_3D668, &type metadata accessor for EventStreamType, &protocol conformance descriptor for EventStreamType);
      result = sub_2FF58();
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

uint64_t sub_1D410(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_2EC08();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1CAF8(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1DC7C(&type metadata accessor for UUID, &qword_3D788, &unk_310C0);
      goto LABEL_12;
    }

    sub_1DEB4(v10 + 1);
  }

  v12 = *v3;
  sub_23F00(&qword_3CFB0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v13 = sub_2FF58();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_23F00(&qword_3CFB8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = sub_2FF78();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_302B8();
  __break(1u);
  return result;
}

void sub_1D6D8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1CE54(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1DB20();
      goto LABEL_16;
    }

    sub_1E1D0(v8 + 1);
  }

  v10 = *v4;
  sub_30318();
  sub_2FFB8();
  v11 = sub_30338();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_302A8() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_302B8();
  __break(1u);
}

uint64_t sub_1D858(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_2F1F8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D0B4(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1DC7C(&type metadata accessor for EventStreamType, &qword_3D678, &qword_30FA8);
      goto LABEL_12;
    }

    sub_1E408(v10 + 1);
  }

  v12 = *v3;
  sub_23F00(&qword_3D668, &type metadata accessor for EventStreamType, &protocol conformance descriptor for EventStreamType);
  v13 = sub_2FF58();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_23F00(&qword_3D670, &type metadata accessor for EventStreamType, &protocol conformance descriptor for EventStreamType);
      v21 = sub_2FF78();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_302B8();
  __break(1u);
  return result;
}

void sub_1DB20()
{
  v1 = v0;
  sub_1B98(&qword_3D698, &qword_30FC8);
  v2 = *v0;
  v3 = sub_30188();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
}

void *sub_1DC7C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  sub_1B98(a2, a3);
  v11 = *v3;
  v12 = sub_30188();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    result = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 56 + 8 * v15)
    {
      result = memmove(result, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    for (i = v8 + 16; v20; result = (*(v8 + 32))(*(v13 + 48) + v25, v10, v7))
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }

  return result;
}

uint64_t sub_1DEB4(uint64_t a1)
{
  v2 = v1;
  v33 = sub_2EC08();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1B98(&qword_3D788, &unk_310C0);
  v7 = sub_30198();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_23F00(&qword_3CFB0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = sub_2FF58();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1E1D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1B98(&qword_3D698, &qword_30FC8);
  result = sub_30198();
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
      sub_30318();

      sub_2FFB8();
      result = sub_30338();
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

uint64_t sub_1E408(uint64_t a1)
{
  v2 = v1;
  v33 = sub_2F1F8();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1B98(&qword_3D678, &qword_30FA8);
  v7 = sub_30198();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_23F00(&qword_3D668, &type metadata accessor for EventStreamType, &protocol conformance descriptor for EventStreamType);
      result = sub_2FF58();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

Swift::Int sub_1E724(uint64_t *a1)
{
  v2 = *(sub_2F148() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20F78(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1E7CC(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_1E7CC(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_30288(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_2F148();
        v6 = sub_30038();
        v6[2] = v5;
      }

      v7 = *(sub_2F148() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1EE30(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1E8F8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1E8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1B98(&qword_3D620, &unk_30F70);
  v9 = __chkstk_darwin(v8 - 8);
  v68 = &v47[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v65 = &v47[-v11];
  v12 = sub_2EBD8();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v64 = &v47[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v67 = &v47[-v16];
  v17 = sub_2F148();
  v18 = __chkstk_darwin(v17);
  v57 = &v47[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __chkstk_darwin(v18);
  v69 = &v47[-v21];
  result = __chkstk_darwin(v20);
  v66 = &v47[-v24];
  v49 = a2;
  if (a3 != a2)
  {
    v25 = *a4;
    v27 = *(v23 + 16);
    v26 = v23 + 16;
    v28 = *(v26 + 56);
    v29 = (v13 + 48);
    v61 = (v13 + 32);
    v62 = v27;
    v59 = (v13 + 48);
    v60 = (v13 + 8);
    v58 = (v26 - 8);
    v63 = v26;
    v30 = v25 + v28 * (a3 - 1);
    v54 = -v28;
    v55 = (v26 + 16);
    v31 = a1 - a3;
    v56 = v25;
    v48 = v28;
    v32 = v25 + v28 * a3;
LABEL_5:
    v52 = v30;
    v53 = a3;
    v50 = v32;
    v51 = v31;
    v33 = v31;
    while (1)
    {
      v34 = v62;
      v62(v66, v32, v17);
      v34(v69, v30, v17);
      v35 = v65;
      sub_2F108();
      v36 = *v29;
      if ((*v29)(v35, 1, v12) == 1)
      {
        sub_2EB98();
        if (v36(v35, 1, v12) != 1)
        {
          sub_5B38(v65, &qword_3D620, &unk_30F70);
        }
      }

      else
      {
        (*v61)(v67, v35, v12);
      }

      sub_2F108();
      v37 = v68;
      if (v36(v68, 1, v12) == 1)
      {
        v38 = v64;
        sub_2EB98();
        if (v36(v37, 1, v12) != 1)
        {
          sub_5B38(v37, &qword_3D620, &unk_30F70);
        }
      }

      else
      {
        v38 = v64;
        (*v61)(v64, v37, v12);
      }

      v39 = v67;
      v40 = sub_2EBB8();
      v41 = v38;
      v42 = *v60;
      (*v60)(v41, v12);
      v42(v39, v12);
      v43 = *v58;
      (*v58)(v69, v17);
      result = v43(v66, v17);
      v29 = v59;
      if ((v40 & 1) == 0)
      {
LABEL_4:
        a3 = v53 + 1;
        v30 = v52 + v48;
        v31 = v51 - 1;
        v32 = v50 + v48;
        if (v53 + 1 == v49)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v56)
      {
        break;
      }

      v44 = *v55;
      v45 = v57;
      (*v55)(v57, v32, v17);
      swift_arrayInitWithTakeFrontToBack();
      result = v44(v30, v45, v17);
      v30 += v54;
      v32 += v54;
      if (__CFADD__(v33++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1EE30(char **a1, uint64_t a2, char **a3, char *a4)
{
  v5 = v4;
  v168 = a1;
  v8 = sub_1B98(&qword_3D620, &unk_30F70);
  v9 = __chkstk_darwin(v8 - 8);
  v199 = &v163 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v163 - v12;
  v14 = __chkstk_darwin(v11);
  v182 = &v163 - v15;
  __chkstk_darwin(v14);
  v17 = &v163 - v16;
  v201 = sub_2EBD8();
  v18 = *(v201 - 8);
  v19 = __chkstk_darwin(v201);
  v21 = &v163 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v198 = &v163 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v163 - v25;
  __chkstk_darwin(v24);
  v181 = &v163 - v27;
  v196 = sub_2F148();
  v179 = *(v196 - 8);
  v28 = __chkstk_darwin(v196);
  v172 = &v163 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v187 = &v163 - v31;
  v32 = __chkstk_darwin(v30);
  v200 = &v163 - v33;
  v34 = __chkstk_darwin(v32);
  v197 = &v163 - v35;
  v36 = __chkstk_darwin(v34);
  v184 = &v163 - v37;
  v38 = __chkstk_darwin(v36);
  v180 = &v163 - v39;
  v40 = __chkstk_darwin(v38);
  v163 = &v163 - v41;
  result = __chkstk_darwin(v40);
  v166 = &v163 - v43;
  v44 = a3;
  v45 = a3[1];
  if (v45 < 1)
  {
    v47 = _swiftEmptyArrayStorage;
    v49 = a3;
LABEL_115:
    a4 = *v168;
    if (!*v168)
    {
      goto LABEL_155;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_149;
    }

    goto LABEL_117;
  }

  v176 = v26;
  v46 = 0;
  v193 = v179 + 16;
  v194 = (v179 + 8);
  v192 = (v18 + 48);
  v191 = (v18 + 32);
  v190 = (v18 + 8);
  v189 = (v179 + 32);
  v47 = _swiftEmptyArrayStorage;
  v167 = a4;
  v195 = v13;
  v178 = v17;
  v48 = v196;
  v49 = v44;
  v169 = v44;
LABEL_4:
  v50 = v46;
  v170 = v47;
  if (v46 + 1 >= v45)
  {
    v76 = (v46 + 1);
  }

  else
  {
    v183 = v45;
    v51 = *v49;
    v52 = *(v179 + 72);
    v53 = v46;
    v54 = &(*v49)[v52 * (v46 + 1)];
    v55 = *(v179 + 16);
    v55(v166, v54, v48);
    v188 = v51;
    v56 = &v51[v52 * v53];
    v57 = v163;
    v185 = v55;
    v55(v163, v56, v48);
    v58 = v166;
    LODWORD(v186) = sub_18790(v166, v57);
    if (v5)
    {
      v162 = *v194;
      (*v194)(v57, v48);
      (v162)(v58, v48);
    }

    v165 = 0;
    v59 = *v194;
    (*v194)(v57, v48);
    v177 = v59;
    result = (v59)(v58, v48);
    v164 = v53;
    v60 = (v53 + 2);
    v61 = &v188[v52 * (v53 + 2)];
    v62 = v192;
    v63 = v52;
    v188 = v52;
    do
    {
      if (v183 == v60)
      {
        v47 = v170;
        v76 = v183;
        goto LABEL_20;
      }

      v71 = v185;
      (v185)(v180, v61, v48);
      v71(v184, v54, v48);
      v72 = v201;
      v73 = v178;
      sub_2F108();
      v74 = *v62;
      if ((*v62)(v73, 1, v72) == 1)
      {
        sub_2EB98();
        if (v74(v73, 1, v72) != 1)
        {
          sub_5B38(v178, &qword_3D620, &unk_30F70);
        }
      }

      else
      {
        (*v191)(v181, v73, v72);
      }

      sub_2F108();
      v75 = v182;
      if (v74(v182, 1, v201) == 1)
      {
        v64 = v176;
        sub_2EB98();
        if (v74(v75, 1, v201) != 1)
        {
          sub_5B38(v75, &qword_3D620, &unk_30F70);
        }
      }

      else
      {
        v64 = v176;
        (*v191)(v176, v75, v201);
      }

      v65 = v181;
      v66 = sub_2EBB8();
      v67 = *v190;
      v68 = v64;
      v69 = v201;
      (*v190)(v68, v201);
      v67(v65, v69);
      v48 = v196;
      v70 = v177;
      (v177)(v184, v196);
      result = v70(v180, v48);
      ++v60;
      v63 = v188;
      v61 = &v188[v61];
      v54 += v188;
      v62 = v192;
    }

    while (((v186 ^ v66) & 1) == 0);
    v76 = v60 - 1;
    v47 = v170;
LABEL_20:
    v5 = v165;
    a4 = v167;
    v49 = v169;
    v50 = v164;
    if (v186)
    {
      if (v76 < v164)
      {
        goto LABEL_148;
      }

      if (v164 < v76)
      {
        v77 = v63 * (v76 - 1);
        v78 = v76 * v63;
        v183 = v76;
        v79 = v76;
        v80 = v164;
        v81 = v164 * v63;
        while (2)
        {
          if (v80 == --v79)
          {
            goto LABEL_27;
          }

          v84 = *v49;
          if (!v84)
          {
            goto LABEL_152;
          }

          v85 = *v189;
          (*v189)(v172, &v84[v81], v196);
          if (v81 >= v77 && &v84[v81] < &v84[v78])
          {
            v83 = v196;
            if (v81 != v77)
            {
              v82 = v196;
              swift_arrayInitWithTakeBackToFront();
LABEL_25:
              v83 = v82;
            }

            result = (v85)(&v84[v77], v172, v83);
            v49 = v169;
            v47 = v170;
            v63 = v188;
LABEL_27:
            ++v80;
            v77 -= v63;
            v78 -= v63;
            v81 += v63;
            if (v80 >= v79)
            {
              v5 = v165;
              a4 = v167;
              v48 = v196;
              v50 = v164;
              v76 = v183;
              goto LABEL_35;
            }

            continue;
          }

          break;
        }

        v82 = v196;
        swift_arrayInitWithTakeFrontToBack();
        goto LABEL_25;
      }
    }
  }

LABEL_35:
  v86 = v49[1];
  if (v76 >= v86)
  {
    goto LABEL_44;
  }

  if (__OFSUB__(v76, v50))
  {
    goto LABEL_145;
  }

  if (&v76[-v50] >= a4)
  {
LABEL_44:
    a4 = v76;
    if (v76 < v50)
    {
      goto LABEL_144;
    }

    goto LABEL_45;
  }

  if (__OFADD__(v50, a4))
  {
    goto LABEL_146;
  }

  if (&a4[v50] >= v86)
  {
    a4 = v49[1];
  }

  else
  {
    a4 += v50;
  }

  if (a4 < v50)
  {
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    result = sub_20A2C(v47);
    v47 = result;
LABEL_117:
    v202 = v47;
    v157 = *(v47 + 16);
    if (v157 >= 2)
    {
      while (*v49)
      {
        v158 = *(v47 + 16 * v157);
        v159 = v47;
        v160 = *(v47 + 16 * (v157 - 1) + 32);
        v47 = *(v47 + 16 * (v157 - 1) + 40);
        sub_1FEC4(&(*v49)[*(v179 + 72) * v158], &(*v49)[*(v179 + 72) * v160], &(*v49)[*(v179 + 72) * v47], a4);
        if (v5)
        {
        }

        if (v47 < v158)
        {
          goto LABEL_142;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v159 = sub_20A2C(v159);
        }

        if (v157 - 2 >= *(v159 + 2))
        {
          goto LABEL_143;
        }

        v161 = &v159[16 * v157];
        *v161 = v158;
        *(v161 + 1) = v47;
        v202 = v159;
        result = sub_209A0(v157 - 1);
        v47 = v202;
        v157 = *(v202 + 16);
        if (v157 <= 1)
        {
        }
      }

      goto LABEL_153;
    }
  }

  if (v76 == a4)
  {
    goto LABEL_44;
  }

  v165 = v5;
  v133 = *v49;
  v134 = *(v179 + 72);
  v188 = *(v179 + 16);
  v135 = &v133[v134 * (v76 - 1)];
  v185 = -v134;
  v164 = v50;
  v136 = v50 - v76;
  v186 = v133;
  v171 = v134;
  v137 = &v133[v76 * v134];
  v173 = a4;
LABEL_98:
  v183 = v76;
  v174 = v137;
  v175 = v136;
  v138 = v136;
  v177 = v135;
  while (1)
  {
    v139 = v48;
    v140 = v21;
    v141 = v188;
    (v188)(v197, v137, v139);
    v141(v200, v135, v139);
    v142 = v201;
    v143 = v195;
    sub_2F108();
    v144 = *v192;
    if ((*v192)(v143, 1, v142) == 1)
    {
      sub_2EB98();
      if (v144(v143, 1, v142) != 1)
      {
        sub_5B38(v195, &qword_3D620, &unk_30F70);
      }
    }

    else
    {
      (*v191)(v198, v143, v142);
    }

    sub_2F108();
    v145 = v199;
    v146 = v140;
    if (v144(v199, 1, v201) == 1)
    {
      sub_2EB98();
      if (v144(v145, 1, v201) != 1)
      {
        sub_5B38(v145, &qword_3D620, &unk_30F70);
      }
    }

    else
    {
      (*v191)(v140, v145, v201);
    }

    v147 = v198;
    v148 = sub_2EBB8();
    v149 = *v190;
    v150 = v146;
    v151 = v146;
    v152 = v201;
    (*v190)(v151, v201);
    v149(v147, v152);
    v153 = *v194;
    v48 = v196;
    (*v194)(v200, v196);
    result = (v153)(v197, v48);
    if ((v148 & 1) == 0)
    {
      v21 = v150;
LABEL_97:
      v76 = v183 + 1;
      v135 = &v177[v171];
      v136 = v175 - 1;
      v137 = &v174[v171];
      a4 = v173;
      if (v183 + 1 != v173)
      {
        goto LABEL_98;
      }

      v5 = v165;
      v49 = v169;
      v47 = v170;
      v50 = v164;
      if (v173 < v164)
      {
        goto LABEL_144;
      }

LABEL_45:
      result = swift_isUniquelyReferenced_nonNull_native();
      v173 = a4;
      if ((result & 1) == 0)
      {
        result = sub_20B28(0, *(v47 + 16) + 1, 1, v47);
        v47 = result;
      }

      a4 = *(v47 + 16);
      v87 = *(v47 + 24);
      v88 = (a4 + 1);
      if (a4 >= v87 >> 1)
      {
        result = sub_20B28((v87 > 1), (a4 + 1), 1, v47);
        v47 = result;
      }

      *(v47 + 16) = v88;
      v89 = v47 + 16 * a4;
      v90 = v173;
      *(v89 + 32) = v50;
      *(v89 + 40) = v90;
      if (!*v168)
      {
        goto LABEL_154;
      }

      if (a4)
      {
        v91 = *v168;
        while (1)
        {
          v92 = v88 - 1;
          if (v88 >= 4)
          {
            break;
          }

          if (v88 == 3)
          {
            v93 = *(v47 + 32);
            v94 = *(v47 + 40);
            v103 = __OFSUB__(v94, v93);
            v95 = v94 - v93;
            v96 = v103;
LABEL_65:
            if (v96)
            {
              goto LABEL_133;
            }

            v109 = (v47 + 16 * v88);
            v111 = *v109;
            v110 = v109[1];
            v112 = __OFSUB__(v110, v111);
            v113 = v110 - v111;
            v114 = v112;
            if (v112)
            {
              goto LABEL_136;
            }

            v115 = (v47 + 32 + 16 * v92);
            v117 = *v115;
            v116 = v115[1];
            v103 = __OFSUB__(v116, v117);
            v118 = v116 - v117;
            if (v103)
            {
              goto LABEL_139;
            }

            if (__OFADD__(v113, v118))
            {
              goto LABEL_140;
            }

            if (v113 + v118 >= v95)
            {
              if (v95 < v118)
              {
                v92 = v88 - 2;
              }

              goto LABEL_86;
            }

            goto LABEL_79;
          }

          v119 = (v47 + 16 * v88);
          v121 = *v119;
          v120 = v119[1];
          v103 = __OFSUB__(v120, v121);
          v113 = v120 - v121;
          v114 = v103;
LABEL_79:
          if (v114)
          {
            goto LABEL_135;
          }

          v122 = v47 + 16 * v92;
          v124 = *(v122 + 32);
          v123 = *(v122 + 40);
          v103 = __OFSUB__(v123, v124);
          v125 = v123 - v124;
          if (v103)
          {
            goto LABEL_138;
          }

          if (v125 < v113)
          {
            goto LABEL_3;
          }

LABEL_86:
          a4 = (v92 - 1);
          if (v92 - 1 >= v88)
          {
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
            goto LABEL_147;
          }

          if (!*v49)
          {
            goto LABEL_151;
          }

          v130 = *(v47 + 32 + 16 * a4);
          v131 = *(v47 + 32 + 16 * v92 + 8);
          sub_1FEC4(&(*v49)[*(v179 + 72) * v130], &(*v49)[*(v179 + 72) * *(v47 + 32 + 16 * v92)], &(*v49)[*(v179 + 72) * v131], v91);
          if (v5)
          {
          }

          if (v131 < v130)
          {
            goto LABEL_129;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v47 = sub_20A2C(v47);
          }

          if (a4 >= *(v47 + 16))
          {
            goto LABEL_130;
          }

          v132 = v47 + 16 * a4;
          *(v132 + 32) = v130;
          *(v132 + 40) = v131;
          v202 = v47;
          result = sub_209A0(v92);
          v47 = v202;
          v88 = *(v202 + 16);
          v48 = v196;
          if (v88 <= 1)
          {
            goto LABEL_3;
          }
        }

        v97 = v47 + 32 + 16 * v88;
        v98 = *(v97 - 64);
        v99 = *(v97 - 56);
        v103 = __OFSUB__(v99, v98);
        v100 = v99 - v98;
        if (v103)
        {
          goto LABEL_131;
        }

        v102 = *(v97 - 48);
        v101 = *(v97 - 40);
        v103 = __OFSUB__(v101, v102);
        v95 = v101 - v102;
        v96 = v103;
        if (v103)
        {
          goto LABEL_132;
        }

        v104 = (v47 + 16 * v88);
        v106 = *v104;
        v105 = v104[1];
        v103 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v103)
        {
          goto LABEL_134;
        }

        v103 = __OFADD__(v95, v107);
        v108 = v95 + v107;
        if (v103)
        {
          goto LABEL_137;
        }

        if (v108 >= v100)
        {
          v126 = (v47 + 32 + 16 * v92);
          v128 = *v126;
          v127 = v126[1];
          v103 = __OFSUB__(v127, v128);
          v129 = v127 - v128;
          if (v103)
          {
            goto LABEL_141;
          }

          if (v95 < v129)
          {
            v92 = v88 - 2;
          }

          goto LABEL_86;
        }

        goto LABEL_65;
      }

LABEL_3:
      v45 = v49[1];
      v46 = v173;
      a4 = v167;
      if (v173 >= v45)
      {
        goto LABEL_115;
      }

      goto LABEL_4;
    }

    if (!v186)
    {
      break;
    }

    v154 = *v189;
    v155 = v187;
    (*v189)(v187, v137, v48);
    swift_arrayInitWithTakeFrontToBack();
    v154(v135, v155, v48);
    v135 += v185;
    v137 += v185;
    v156 = __CFADD__(v138++, 1);
    v21 = v150;
    if (v156)
    {
      goto LABEL_97;
    }
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
  return result;
}

uint64_t sub_1FEC4(unint64_t a1, char *a2, char *a3, char *a4)
{
  v93 = a4;
  v95 = a3;
  v6 = sub_1B98(&qword_3D620, &unk_30F70);
  v7 = __chkstk_darwin(v6 - 8);
  v86 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v74 - v10;
  v12 = __chkstk_darwin(v9);
  v92 = &v74 - v13;
  __chkstk_darwin(v12);
  v87 = &v74 - v14;
  v15 = sub_2EBD8();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v82 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v85 = (&v74 - v20);
  v21 = __chkstk_darwin(v19);
  v83 = &v74 - v22;
  __chkstk_darwin(v21);
  v91 = &v74 - v23;
  v24 = sub_2F148();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v89 = &v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v84 = (&v74 - v29);
  v30 = __chkstk_darwin(v28);
  v94 = &v74 - v31;
  result = __chkstk_darwin(v30);
  v90 = &v74 - v33;
  v88 = *(v34 + 72);
  if (!v88)
  {
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (&a2[-a1] == 0x8000000000000000 && v88 == -1)
  {
    goto LABEL_79;
  }

  v35 = v95 - a2;
  if (v95 - a2 != 0x8000000000000000 || v88 != -1)
  {
    v36 = &a2[-a1] / v88;
    v98 = a1;
    v37 = v93;
    v97 = v93;
    if (v36 < v35 / v88)
    {
      v38 = v36 * v88;
      if (v93 < a1 || a1 + v38 <= v93)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v93 == a1)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v37 = v93;
LABEL_17:
      v89 = (v37 + v38);
      v96 = v37 + v38;
      if (v38 >= 1 && a2 < v95)
      {
        v41 = *(v25 + 16);
        v42 = (v16 + 48);
        v84 = (v16 + 32);
        v85 = v41;
        v86 = (v25 + 16);
        v81 = (v25 + 8);
        v82 = (v16 + 8);
        do
        {
          v43 = a2;
          v44 = v37;
          v45 = v85;
          v85(v90, a2, v24);
          v93 = v44;
          v45(v94, v44, v24);
          v46 = v87;
          sub_2F108();
          v47 = *v42;
          if ((*v42)(v46, 1, v15) == 1)
          {
            sub_2EB98();
            if (v47(v46, 1, v15) != 1)
            {
              sub_5B38(v87, &qword_3D620, &unk_30F70);
            }
          }

          else
          {
            (*v84)(v91, v46, v15);
          }

          sub_2F108();
          v48 = v92;
          if (v47(v92, 1, v15) == 1)
          {
            v49 = v83;
            sub_2EB98();
            if (v47(v48, 1, v15) != 1)
            {
              sub_5B38(v48, &qword_3D620, &unk_30F70);
            }
          }

          else
          {
            v49 = v83;
            (*v84)(v83, v48, v15);
          }

          v50 = v91;
          v51 = sub_2EBB8();
          v52 = v49;
          v53 = *v82;
          (*v82)(v52, v15);
          v53(v50, v15);
          v54 = *v81;
          (*v81)(v94, v24);
          v54(v90, v24);
          if (v51)
          {
            v55 = v88;
            a2 = &v43[v88];
            if (a1 < v43 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v43)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v37 = v93;
          }

          else
          {
            v55 = v88;
            v56 = &v93[v88];
            a2 = v43;
            if (a1 < v93 || a1 >= v56)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v93)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v97 = v56;
            v37 = v56;
          }

          a1 += v55;
          v98 = a1;
        }

        while (v37 < v89 && a2 < v95);
      }

LABEL_77:
      sub_20A40(&v98, &v97, &v96, &type metadata accessor for CoreDuetEvent);
      return 1;
    }

    v39 = v35 / v88 * v88;
    if (v93 < a2 || &a2[v39] <= v93)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v93 == a2)
      {
LABEL_48:
        v91 = a2;
        v57 = v37 + v39;
        if (v39 >= 1)
        {
          v90 = v11;
          v58 = -v88;
          v80 = (v16 + 48);
          v81 = (v25 + 16);
          v78 = (v16 + 8);
          v79 = (v16 + 32);
          v77 = (v25 + 8);
          v59 = v57;
          v83 = v24;
          v87 = a1;
          v94 = -v88;
          do
          {
            v75 = v57;
            v60 = v91;
            v91 += v58;
            v88 = v60;
            while (1)
            {
              v61 = v95;
              if (v60 <= a1)
              {
                v98 = v60;
                v96 = v75;
                goto LABEL_77;
              }

              v76 = v57;
              v62 = (v59 + v58);
              v63 = *v81;
              (*v81)(v84, v62, v24);
              (v63)(v89, v91, v24);
              v64 = v90;
              sub_2F108();
              v65 = *v80;
              if ((*v80)(v64, 1, v15) == 1)
              {
                sub_2EB98();
                if (v65(v64, 1, v15) != 1)
                {
                  sub_5B38(v90, &qword_3D620, &unk_30F70);
                }
              }

              else
              {
                (*v79)(v85, v64, v15);
              }

              sub_2F108();
              v66 = v86;
              v67 = v65(v86, 1, v15);
              v68 = v82;
              v92 = v62;
              if (v67 == 1)
              {
                sub_2EB98();
                if (v65(v66, 1, v15) != 1)
                {
                  sub_5B38(v66, &qword_3D620, &unk_30F70);
                }
              }

              else
              {
                (*v79)(v82, v66, v15);
              }

              v95 = &v61[v94];
              v69 = v85;
              v70 = sub_2EBB8();
              v71 = *v78;
              (*v78)(v68, v15);
              v71(v69, v15);
              v72 = *v77;
              v24 = v83;
              (*v77)(v89, v83);
              v72(v84, v24);
              if (v70)
              {
                break;
              }

              v73 = v92;
              v57 = v92;
              v60 = v88;
              if (v61 < v59 || v95 >= v59)
              {
                swift_arrayInitWithTakeFrontToBack();
                v58 = v94;
              }

              else
              {
                v58 = v94;
                if (v61 != v59)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v59 = v57;
              a1 = v87;
              if (v73 <= v93)
              {
                v91 = v60;
                goto LABEL_76;
              }
            }

            if (v61 < v88 || v95 >= v88)
            {
              swift_arrayInitWithTakeFrontToBack();
              v57 = v76;
              v58 = v94;
            }

            else
            {
              v57 = v76;
              v58 = v94;
              if (v61 != v88)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            a1 = v87;
          }

          while (v59 > v93);
        }

LABEL_76:
        v98 = v91;
        v96 = v57;
        goto LABEL_77;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v37 = v93;
    goto LABEL_48;
  }

LABEL_80:
  __break(1u);
  return result;
}

uint64_t sub_209A0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_20A2C(v3);
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

uint64_t sub_20A40(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_20B28(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B98(&qword_3D6A8, &unk_31750);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

uint64_t sub_20C2C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2EC08();
  v26 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_2A2F4(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_2B810();
      goto LABEL_9;
    }

    sub_2AD3C(v16, a3 & 1);
    v19 = sub_2A2F4(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      v13 = v19;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_302C8();
    __break(1u);
    return result;
  }

LABEL_9:
  v21 = *v4;
  if (v17)
  {
    v22 = *(v26 + 40);
    v23 = v21[7] + *(v26 + 72) * v13;

    return v22(v23, a1, v8);
  }

  else
  {
    (*(v26 + 16))(v10, a2, v8);
    return sub_2B244(v13, v10, a1, v21);
  }
}

uint64_t (*sub_20E10(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_301C8();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_20E90;
  }

  __break(1u);
  return result;
}

uint64_t sub_20E98(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_20EE0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_C678(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1978(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_20FA0(uint64_t a1)
{
  v2 = sub_2F1F8();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_23F00(&qword_3D668, &type metadata accessor for EventStreamType, &protocol conformance descriptor for EventStreamType);
  result = sub_300A8();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_1C818(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_2113C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))(*(v2 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_211A0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_5550(a1, a1[3]);
  result = sub_2EEE8();
  *a2 = result;
  return result;
}

uint64_t sub_21204()
{

  sub_5448((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_21244()
{
  sub_5448((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_2127C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_5BA0;

  return sub_165A4(a1, a2, a3, v3);
}

uint64_t sub_21330()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_21368(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_5834;

  return sub_166A0(a1, a2, v6);
}

uint64_t sub_21430(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_20E98(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_21478(uint64_t a1)
{
  v2 = sub_2EC08();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_2F3B8();
  v6 = *(v54 - 8);
  v7 = __chkstk_darwin(v54);
  v51 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v53 = &v39 - v9;
  v10 = &_swiftEmptyDictionarySingleton;
  v55 = &_swiftEmptyDictionarySingleton;
  v11 = *(a1 + 16);
  if (!v11)
  {
    return v10;
  }

  v13 = *(v6 + 16);
  v12 = v6 + 16;
  v14 = *(v12 + 64);
  v15 = *(v12 + 56);
  v49 = (v14 + 32) & ~v14;
  v50 = v13;
  v16 = a1 + v49;
  v52 = (v12 + 16);
  v42 = v3 + 32;
  v43 = v14;
  v41 = (v3 + 8);
  v40 = xmmword_30830;
  v45 = v3;
  v46 = v2;
  v17 = v2;
  v47 = v5;
  v48 = v15;
  v44 = v12;
  v13(v53, a1 + v49, v54);
  while (1)
  {
    sub_2F398();
    v20 = sub_2A2F4(v5);
    v21 = v10[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      break;
    }

    v24 = v19;
    if (v10[3] < v23)
    {
      sub_2A948(v23, 1);
      v10 = v55;
      v25 = sub_2A2F4(v5);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_20;
      }

      v20 = v25;
    }

    if (v24)
    {
      (*v41)(v5, v17);
      v27 = v10[7];
      v28 = *v52;
      (*v52)(v51, v53, v54);
      v29 = *(v27 + 8 * v20);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v27 + 8 * v20) = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = sub_297B8(0, *(v29 + 2) + 1, 1, v29);
        *(v27 + 8 * v20) = v29;
      }

      v32 = *(v29 + 2);
      v31 = *(v29 + 3);
      if (v32 >= v31 >> 1)
      {
        v29 = sub_297B8((v31 > 1), v32 + 1, 1, v29);
        *(v27 + 8 * v20) = v29;
      }

      *(v29 + 2) = v32 + 1;
      v5 = v47;
      v18 = v48;
      v28(&v29[v49 + v32 * v48], v51, v54);
      v17 = v46;
    }

    else
    {
      sub_1B98(&qword_3D760, &qword_31090);
      v33 = v49;
      v34 = swift_allocObject();
      *(v34 + 16) = v40;
      (*v52)((v34 + v33), v53, v54);
      v10[(v20 >> 6) + 8] |= 1 << v20;
      (*(v45 + 32))(v10[6] + *(v45 + 72) * v20, v5, v17);
      *(v10[7] + 8 * v20) = v34;
      v35 = v10[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_19;
      }

      v10[2] = v37;
      v18 = v48;
    }

    v16 += v18;
    if (!--v11)
    {
      return v10;
    }

    v50(v53, v16, v54);
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_302C8();
  __break(1u);
  return result;
}

unint64_t sub_21888(void (*a1)(char *, char *, uint64_t), char a2, void *a3)
{
  v54 = a3;
  LOBYTE(v4) = a2;
  v53 = sub_2EC08();
  v50 = *(v53 - 8);
  __chkstk_darwin(v53);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B98(&qword_3D6C8, &qword_31770);
  result = __chkstk_darwin(v8);
  v12 = &v45 - v11;
  v13 = *(a1 + 2);
  if (v13)
  {
    v14 = *(result + 48);
    v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v52 = *(v10 + 72);
    sub_5AD0(a1 + v15, &v45 - v11, &qword_3D6C8, &qword_31770);
    v16 = (v50 + 32);
    v48 = *(v50 + 32);
    v48(v7, v12, v53);
    v51 = v14;
    v47 = *&v12[v14];
    v17 = *v54;
    result = sub_2A2F4(v7);
    v19 = v17[2];
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      goto LABEL_22;
    }

    LOBYTE(v3) = v18;
    v23 = v17[3];
    v46 = v15;
    if (v23 < v22)
    {
      sub_2A584(v22, v4 & 1);
      result = sub_2A2F4(v7);
      if ((v3 & 1) == (v24 & 1))
      {
        goto LABEL_7;
      }

LABEL_5:
      result = sub_302C8();
      __break(1u);
    }

    if ((v4 & 1) == 0)
    {
      goto LABEL_24;
    }

    while (1)
    {
LABEL_7:
      v25 = a1;
      v26 = *v54;
      v49 = (v16 - 3);
      if (v3)
      {
        v27 = *(v26[7] + 8 * result);
        v28 = result;
        result = (*(v16 - 3))(v7, v53);
        *(v26[7] + 8 * v28) = v27;
        if (!--v13)
        {
          return result;
        }
      }

      else
      {
        v26[(result >> 6) + 8] |= 1 << result;
        v29 = result;
        result = (v48)(v26[6] + *(v50 + 72) * result, v7, v53);
        *(v26[7] + 8 * v29) = v47;
        v30 = v26[2];
        v21 = __OFADD__(v30, 1);
        v31 = v30 + 1;
        if (v21)
        {
          goto LABEL_23;
        }

        v26[2] = v31;
        if (!--v13)
        {
          return result;
        }
      }

      v4 = v25 + v52 + v46;
      while (1)
      {
        sub_5AD0(v4, v12, &qword_3D6C8, &qword_31770);
        a1 = *v16;
        (*v16)(v7, v12, v53);
        v34 = *&v12[v51];
        v35 = *v54;
        result = sub_2A2F4(v7);
        v37 = v35[2];
        v38 = (v36 & 1) == 0;
        v21 = __OFADD__(v37, v38);
        v39 = v37 + v38;
        if (v21)
        {
          break;
        }

        LOBYTE(v3) = v36;
        if (v35[3] < v39)
        {
          sub_2A584(v39, 1);
          result = sub_2A2F4(v7);
          if ((v3 & 1) != (v40 & 1))
          {
            goto LABEL_5;
          }
        }

        v41 = *v54;
        if (v3)
        {
          v32 = *(v41[7] + 8 * result);
          v33 = result;
          result = (*v49)(v7, v53);
          *(v41[7] + 8 * v33) = v32;
        }

        else
        {
          v41[(result >> 6) + 8] |= 1 << result;
          v3 = result;
          result = (a1)(v41[6] + *(v50 + 72) * result, v7, v53);
          *(v41[7] + 8 * v3) = v34;
          v42 = v41[2];
          v21 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v21)
          {
            goto LABEL_23;
          }

          v41[2] = v43;
        }

        v4 += v52;
        if (!--v13)
        {
          return result;
        }
      }

LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      v44 = result;
      sub_2B5A0();
      result = v44;
    }
  }

  return result;
}

uint64_t sub_21CF4(unint64_t a1, unint64_t a2, char *a3, unint64_t a4, uint64_t a5)
{
  v91 = a4;
  v94 = sub_2EC08();
  v9 = *(v94 - 8);
  v10 = __chkstk_darwin(v94);
  v82 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v86 = &v77 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v77 - v15;
  __chkstk_darwin(v14);
  v84 = &v77 - v17;
  v18 = sub_2F3B8();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v88 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v85 = (&v77 - v23);
  v24 = __chkstk_darwin(v22);
  v92 = &v77 - v25;
  result = __chkstk_darwin(v24);
  v90 = &v77 - v27;
  v87 = *(v28 + 72);
  if (!v87)
  {
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v89 = v16;
  v29 = a2;
  if (a2 - a1 == 0x8000000000000000 && v87 == -1)
  {
    goto LABEL_84;
  }

  v30 = &a3[-a2];
  if (&a3[-a2] != 0x8000000000000000 || v87 != -1)
  {
    v31 = (a2 - a1) / v87;
    v97 = a1;
    v32 = v91;
    v96 = v91;
    if (v31 < v30 / v87)
    {
      v33 = v31 * v87;
      if (v91 < a1 || a1 + v33 <= v91)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v91 == a1)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v32 = v91;
LABEL_17:
      v88 = (v32 + v33);
      v95 = v32 + v33;
      if (v33 >= 1 && a2 < a3)
      {
        v36 = a2;
        v85 = *(v19 + 16);
        v86 = (v19 + 16);
        v37 = (v9 + 8);
        v82 = (v19 + 8);
        v83 = a3;
        v93 = a5;
        while (1)
        {
          v38 = v36;
          v39 = v32;
          v40 = v85;
          v85(v90, v36, v18);
          v91 = v39;
          v40(v92, v39, v18);
          v41 = v84;
          sub_2F398();
          if (*(a5 + 16))
          {
            v42 = sub_2A2F4(v41);
            v43 = *v37;
            if (v44)
            {
              v45 = *(*(a5 + 56) + 8 * v42);
              goto LABEL_27;
            }
          }

          else
          {
            v43 = *v37;
          }

          v45 = 0x8000000000000000;
LABEL_27:
          v43(v41, v94);
          v46 = v89;
          sub_2F398();
          v47 = v93;
          if (*(v93 + 16) && (v48 = sub_2A2F4(v46), (v49 & 1) != 0))
          {
            v50 = *(*(v47 + 56) + 8 * v48);
          }

          else
          {
            v50 = 0x8000000000000000;
          }

          v51 = v87;
          v43(v89, v94);
          v52 = *v82;
          (*v82)(v92, v18);
          v52(v90, v18);
          if (v45 >= v50)
          {
            v55 = v91 + v51;
            a5 = v93;
            v36 = v38;
            if (a1 < v91 || a1 >= v55)
            {
              swift_arrayInitWithTakeFrontToBack();
              v54 = v83;
            }

            else
            {
              v54 = v83;
              if (a1 != v91)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v96 = v55;
            v32 = v55;
          }

          else
          {
            v53 = v38;
            v36 = v38 + v51;
            a5 = v93;
            if (a1 < v38 || a1 >= v36)
            {
              swift_arrayInitWithTakeFrontToBack();
              v32 = v91;
              v54 = v83;
            }

            else
            {
              v54 = v83;
              if (a1 != v53)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v32 = v91;
            }
          }

          a1 += v51;
          v97 = a1;
          if (v32 >= v88 || v36 >= v54)
          {
            goto LABEL_82;
          }
        }
      }

      goto LABEL_82;
    }

    v34 = v30 / v87 * v87;
    if (v91 < v29 || v29 + v34 <= v91)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v91 == v29)
      {
LABEL_50:
        v56 = v32 + v34;
        if (v34 < 1)
        {
          v60 = v29;
        }

        else
        {
          v57 = -v87;
          v80 = a1;
          v81 = (v19 + 16);
          v79 = (v19 + 8);
          v58 = (v9 + 8);
          v59 = (v32 + v34);
          v60 = v29;
          v92 = -v87;
          v93 = a5;
          do
          {
            v78 = v56;
            v61 = v60;
            v62 = v60 + v57;
            v87 = v62;
            v84 = v61;
            while (1)
            {
              if (v61 <= a1)
              {
                v97 = v61;
                v95 = v78;
                goto LABEL_82;
              }

              v63 = a3;
              v83 = v56;
              v64 = *v81;
              v89 = &v59[v57];
              v90 = v59;
              v64(v85);
              (v64)(v88, v62, v18);
              v65 = v86;
              sub_2F398();
              if (*(a5 + 16))
              {
                v66 = sub_2A2F4(v65);
                v67 = *v58;
                v68 = v82;
                v70 = (v69 & 1) != 0 ? *(*(a5 + 56) + 8 * v66) : 0x8000000000000000;
                v67(v86, v94);
              }

              else
              {
                v67 = *v58;
                v70 = 0x8000000000000000;
                v68 = v82;
                (*v58)(v86, v94);
              }

              sub_2F398();
              v71 = v93;
              a1 = v80;
              if (*(v93 + 16) && (v72 = sub_2A2F4(v68), (v73 & 1) != 0))
              {
                v74 = *(*(v71 + 56) + 8 * v72);
              }

              else
              {
                v74 = 0x8000000000000000;
              }

              v67(v68, v94);
              a3 = &v63[v92];
              v75 = *v79;
              (*v79)(v88, v18);
              v75(v85, v18);
              if (v70 < v74)
              {
                break;
              }

              v76 = v89;
              v56 = v89;
              v62 = v87;
              a5 = v93;
              if (v63 < v90 || a3 >= v90)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v63 != v90)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v59 = v56;
              v57 = v92;
              v61 = v84;
              if (v76 <= v91)
              {
                v60 = v84;
                goto LABEL_81;
              }
            }

            v60 = v87;
            a5 = v93;
            if (v63 < v84 || a3 >= v84)
            {
              swift_arrayInitWithTakeFrontToBack();
              v56 = v83;
            }

            else
            {
              v56 = v83;
              if (v63 != v84)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v59 = v90;
            v57 = v92;
          }

          while (v90 > v91);
        }

LABEL_81:
        v97 = v60;
        v95 = v56;
LABEL_82:
        sub_20A40(&v97, &v96, &v95, &type metadata accessor for SessionGroundTruths);
        return 1;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v32 = v91;
    goto LABEL_50;
  }

LABEL_85:
  __break(1u);
  return result;
}

uint64_t sub_22554(char **a1, unint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v27 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_16:
    v27 = sub_20A2C(v27);
  }

  v22 = v6;
  *v6 = v27;
  v8 = v27 + 16;
  v9 = *(v27 + 2);
  if (v9 < 2)
  {
LABEL_10:

    *v22 = v27;
    return 1;
  }

  else
  {
    v23 = (v27 + 16);
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = &v27[16 * v9];
      v6 = *v11;
      v12 = &v8[16 * v9];
      v13 = *v12;
      v14 = *(v12 + 1);
      v15 = *(*(sub_2F3B8() - 8) + 72);
      v16 = v10 + v15 * v6;
      v17 = v10 + v15 * v13;
      v18 = (v10 + v15 * v14);

      sub_21CF4(v16, v17, v18, a2, a4);

      if (v5)
      {
        *v22 = v27;

        return 1;
      }

      if (v14 < v6)
      {
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v8 = v27 + 16;
      v19 = *v23;
      if (v9 - 2 >= *v23)
      {
        goto LABEL_14;
      }

      *v11 = v6;
      *(v11 + 1) = v14;
      v20 = v19 - v9;
      if (v19 < v9)
      {
        goto LABEL_15;
      }

      v9 = v19 - 1;
      memmove(v12, v12 + 16, 16 * v20);
      *v23 = v9;
      if (v9 <= 1)
      {
        goto LABEL_10;
      }
    }

    *v22 = v27;
    __break(1u);
  }

  return result;
}

uint64_t sub_22714(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v172 = a4;
  v170 = a1;
  v200 = sub_2EC08();
  v7 = *(v200 - 8);
  v8 = __chkstk_darwin(v200);
  v10 = &v168 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v199 = &v168 - v12;
  v13 = __chkstk_darwin(v11);
  v183 = &v168 - v14;
  __chkstk_darwin(v13);
  v16 = &v168 - v15;
  v201 = sub_2F3B8();
  v17 = *(v201 - 8);
  v18 = __chkstk_darwin(v201);
  v174 = &v168 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v190 = &v168 - v21;
  v22 = __chkstk_darwin(v20);
  v192 = &v168 - v23;
  v24 = __chkstk_darwin(v22);
  v198 = &v168 - v25;
  v26 = __chkstk_darwin(v24);
  v186 = &v168 - v27;
  v28 = __chkstk_darwin(v26);
  v182 = &v168 - v29;
  v30 = __chkstk_darwin(v28);
  v168 = &v168 - v31;
  __chkstk_darwin(v30);
  v169 = &v168 - v32;
  v203 = _swiftEmptyArrayStorage;
  v180 = a3;
  v33 = a3[1];
  v202 = a5;
  if (v33 >= 1)
  {
    v194 = v17 + 16;
    v195 = (v17 + 8);
    v197 = (v7 + 8);
    v193 = (v17 + 32);
    swift_bridgeObjectRetain_n();
    v34 = 0;
    v187 = _swiftEmptyArrayStorage;
    v196 = v10;
    v35 = v199;
    v181 = v16;
    v179 = v17;
    v36 = v10;
    v37 = v16;
    while (1)
    {
      if (v34 + 1 >= v33)
      {
        v66 = v34 + 1;
        v67 = v172;
        v68 = v201;
      }

      else
      {
        v184 = v33;
        v38 = *v180;
        v39 = *(v17 + 72);
        v40 = *v180 + v39 * (v34 + 1);
        v41 = *(v17 + 16);
        v171 = v34;
        v42 = v169;
        v43 = v201;
        v41(v169, v40, v201);
        v177 = v38;
        v191 = v39;
        v44 = v38 + v39 * v171;
        v45 = v168;
        v188 = v41;
        v41(v168, v44, v43);
        v46 = v185;
        LODWORD(v189) = sub_1699C(v42, v45, v202);
        v185 = v46;
        if (v46)
        {
          v167 = *v195;
          (*v195)(v45, v43);
          v167(v169, v43);
          goto LABEL_122;
        }

        v47 = *v195;
        (*v195)(v45, v43);
        v178 = v47;
        (v47)(v169, v43);
        v48 = v171 + 2;
        v49 = v191;
        v50 = v177 + v191 * (v171 + 2);
        do
        {
          if (v184 == v48)
          {
            v66 = v184;
            goto LABEL_25;
          }

          v54 = v201;
          v55 = v188;
          (v188)(v182, v50, v201);
          v55(v186, v40, v54);
          sub_2F398();
          v56 = v202;
          if (*(v202 + 16))
          {
            v57 = sub_2A2F4(v37);
            v58 = *v197;
            if (v59)
            {
              v60 = *(*(v56 + 56) + 8 * v57);
            }

            else
            {
              v60 = 0x8000000000000000;
            }

            v61 = v183;
            v58(v37, v200);
          }

          else
          {
            v58 = *v197;
            v60 = 0x8000000000000000;
            v61 = v183;
            (*v197)(v37, v200);
          }

          v62 = v61;
          sub_2F398();
          v63 = v202;
          if (*(v202 + 16))
          {
            v64 = sub_2A2F4(v62);
            if (v65)
            {
              v51 = *(*(v63 + 56) + 8 * v64);
            }

            else
            {
              v51 = 0x8000000000000000;
            }

            v35 = v199;
          }

          else
          {
            v51 = 0x8000000000000000;
          }

          v58(v183, v200);
          v52 = v201;
          v53 = v178;
          (v178)(v186, v201);
          v53(v182, v52);
          ++v48;
          v49 = v191;
          v50 += v191;
          v40 += v191;
          v37 = v181;
        }

        while (((v189 ^ (v60 >= v51)) & 1) != 0);
        v66 = v48 - 1;
LABEL_25:
        v67 = v172;
        v36 = v196;
        v17 = v179;
        v34 = v171;
        if ((v189 & 1) == 0)
        {
          goto LABEL_38;
        }

        if (v66 < v171)
        {
          goto LABEL_143;
        }

        if (v171 < v66)
        {
          v69 = v49 * (v66 - 1);
          v70 = v66 * v49;
          v184 = v66;
          v71 = v171;
          v72 = v171 * v49;
          v68 = v201;
          do
          {
            if (v71 != --v66)
            {
              v73 = *v180;
              if (!*v180)
              {
                goto LABEL_146;
              }

              v74 = *v193;
              (*v193)(v174, v73 + v72, v201);
              if (v72 < v69 || v73 + v72 >= v73 + v70)
              {
                v68 = v201;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v68 = v201;
                if (v72 != v69)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v74((v73 + v69), v174, v68);
              v67 = v172;
              v49 = v191;
            }

            ++v71;
            v69 -= v49;
            v70 -= v49;
            v72 += v49;
          }

          while (v71 < v66);
          v36 = v196;
          v35 = v199;
          v37 = v181;
          v17 = v179;
          v34 = v171;
          v66 = v184;
        }

        else
        {
LABEL_38:
          v68 = v201;
        }
      }

      v75 = v180[1];
      if (v66 >= v75)
      {
        goto LABEL_69;
      }

      if (__OFSUB__(v66, v34))
      {
        goto LABEL_140;
      }

      if (v66 - v34 >= v67)
      {
        goto LABEL_69;
      }

      if (__OFADD__(v34, v67))
      {
        goto LABEL_141;
      }

      if (v34 + v67 < v75)
      {
        v75 = v34 + v67;
      }

      if (v75 < v34)
      {
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_145:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_146:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_147:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_148:
        result = swift_bridgeObjectRelease_n();
        __break(1u);
        return result;
      }

      v175 = v75;
      if (v66 == v75)
      {
        goto LABEL_69;
      }

      v76 = *v180;
      v77 = *(v17 + 72);
      v191 = *(v17 + 16);
      v78 = (v76 + v77 * (v66 - 1));
      v188 = -v77;
      v171 = v34;
      v79 = v34 - v66;
      v189 = v76;
      v173 = v77;
      v80 = v76 + v66 * v77;
      v81 = v192;
      while (2)
      {
        v184 = v66;
        v176 = v80;
        v82 = v80;
        v177 = v79;
        v178 = v78;
        while (1)
        {
          v83 = v35;
          v84 = v191;
          (v191)(v198, v82, v68);
          v84(v81, v78, v68);
          sub_2F398();
          v85 = v202;
          if (*(v202 + 16))
          {
            v86 = sub_2A2F4(v83);
            v87 = *v197;
            if (v88)
            {
              v89 = *(*(v85 + 56) + 8 * v86);
              goto LABEL_57;
            }
          }

          else
          {
            v87 = *v197;
          }

          v89 = 0x8000000000000000;
LABEL_57:
          v87(v199, v200);
          v90 = v196;
          sub_2F398();
          v91 = v202;
          if (*(v202 + 16))
          {
            v92 = sub_2A2F4(v90);
            v94 = (v93 & 1) != 0 ? *(*(v91 + 56) + 8 * v92) : 0x8000000000000000;
            v95 = v196;
          }

          else
          {
            v94 = 0x8000000000000000;
            v95 = v90;
          }

          v87(v95, v200);
          v96 = *v195;
          v97 = v81;
          v98 = v201;
          (*v195)(v97, v201);
          v96(v198, v98);
          if (v89 >= v94)
          {
            break;
          }

          if (!v189)
          {
            goto LABEL_144;
          }

          v99 = *v193;
          v100 = v190;
          v68 = v201;
          (*v193)(v190, v82, v201);
          swift_arrayInitWithTakeFrontToBack();
          v99(v78, v100, v68);
          v78 += v188;
          v82 += v188;
          v101 = __CFADD__(v79++, 1);
          v35 = v199;
          v81 = v192;
          if (v101)
          {
            goto LABEL_50;
          }
        }

        v35 = v199;
        v68 = v201;
        v81 = v192;
LABEL_50:
        v66 = v184 + 1;
        v78 = &v178[v173];
        v79 = v177 - 1;
        v80 = v176 + v173;
        if (v184 + 1 != v175)
        {
          continue;
        }

        break;
      }

      v37 = v181;
      v17 = v179;
      v34 = v171;
      v36 = v196;
      v66 = v175;
LABEL_69:
      if (v66 < v34)
      {
        goto LABEL_139;
      }

      v102 = v37;
      v103 = v36;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v175 = v66;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v187 = sub_20B28(0, *(v187 + 2) + 1, 1, v187);
      }

      v106 = *(v187 + 2);
      v105 = *(v187 + 3);
      v107 = v106 + 1;
      if (v106 >= v105 >> 1)
      {
        v187 = sub_20B28((v105 > 1), v106 + 1, 1, v187);
      }

      v36 = v103;
      v37 = v102;
      v108 = v187;
      *(v187 + 2) = v107;
      v109 = v108 + 32;
      v110 = &v108[16 * v106 + 32];
      v111 = v175;
      *v110 = v34;
      *(v110 + 1) = v111;
      v203 = v108;
      v191 = *v170;
      if (!v191)
      {
        goto LABEL_147;
      }

      if (v106)
      {
        while (1)
        {
          v112 = v107 - 1;
          if (v107 >= 4)
          {
            break;
          }

          if (v107 == 3)
          {
            v113 = *(v187 + 4);
            v114 = *(v187 + 5);
            v123 = __OFSUB__(v114, v113);
            v115 = v114 - v113;
            v116 = v123;
LABEL_89:
            if (v116)
            {
              goto LABEL_130;
            }

            v129 = &v187[16 * v107];
            v131 = *v129;
            v130 = *(v129 + 1);
            v132 = __OFSUB__(v130, v131);
            v133 = v130 - v131;
            v134 = v132;
            if (v132)
            {
              goto LABEL_133;
            }

            v135 = &v109[16 * v112];
            v137 = *v135;
            v136 = *(v135 + 1);
            v123 = __OFSUB__(v136, v137);
            v138 = v136 - v137;
            if (v123)
            {
              goto LABEL_136;
            }

            if (__OFADD__(v133, v138))
            {
              goto LABEL_137;
            }

            if (v133 + v138 >= v115)
            {
              if (v115 < v138)
              {
                v112 = v107 - 2;
              }

              goto LABEL_110;
            }

            goto LABEL_103;
          }

          v139 = &v187[16 * v107];
          v141 = *v139;
          v140 = *(v139 + 1);
          v123 = __OFSUB__(v140, v141);
          v133 = v140 - v141;
          v134 = v123;
LABEL_103:
          if (v134)
          {
            goto LABEL_132;
          }

          v142 = &v109[16 * v112];
          v144 = *v142;
          v143 = *(v142 + 1);
          v123 = __OFSUB__(v143, v144);
          v145 = v143 - v144;
          if (v123)
          {
            goto LABEL_135;
          }

          if (v145 < v133)
          {
            goto LABEL_3;
          }

LABEL_110:
          if (v112 - 1 >= v107)
          {
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
            goto LABEL_142;
          }

          v150 = *v180;
          if (!*v180)
          {
            goto LABEL_145;
          }

          v151 = &v109[16 * v112 - 16];
          v152 = *v151;
          v153 = v109;
          v154 = &v109[16 * v112];
          v155 = *(v154 + 1);
          v156 = *(v17 + 72);
          v157 = v150 + v156 * *v151;
          v158 = v150 + v156 * *v154;
          v159 = (v150 + v156 * v155);
          v160 = v202;

          v161 = v157;
          v162 = v185;
          sub_21CF4(v161, v158, v159, v191, v160);

          v185 = v162;
          if (v162)
          {
            v203 = v187;
            goto LABEL_122;
          }

          if (v155 < v152)
          {
            goto LABEL_125;
          }

          v163 = *(v187 + 2);
          if (v112 > v163)
          {
            goto LABEL_126;
          }

          *v151 = v152;
          *(v151 + 1) = v155;
          if (v112 >= v163)
          {
            goto LABEL_127;
          }

          v107 = v163 - 1;
          memmove(v154, v154 + 16, 16 * (v163 - 1 - v112));
          *(v187 + 2) = v163 - 1;
          v36 = v196;
          v37 = v181;
          v17 = v179;
          v109 = v153;
          if (v163 <= 2)
          {
LABEL_3:
            v203 = v187;
            goto LABEL_4;
          }
        }

        v117 = &v109[16 * v107];
        v118 = *(v117 - 8);
        v119 = *(v117 - 7);
        v123 = __OFSUB__(v119, v118);
        v120 = v119 - v118;
        if (v123)
        {
          goto LABEL_128;
        }

        v122 = *(v117 - 6);
        v121 = *(v117 - 5);
        v123 = __OFSUB__(v121, v122);
        v115 = v121 - v122;
        v116 = v123;
        if (v123)
        {
          goto LABEL_129;
        }

        v124 = &v187[16 * v107];
        v126 = *v124;
        v125 = *(v124 + 1);
        v123 = __OFSUB__(v125, v126);
        v127 = v125 - v126;
        if (v123)
        {
          goto LABEL_131;
        }

        v123 = __OFADD__(v115, v127);
        v128 = v115 + v127;
        if (v123)
        {
          goto LABEL_134;
        }

        if (v128 >= v120)
        {
          v146 = &v109[16 * v112];
          v148 = *v146;
          v147 = *(v146 + 1);
          v123 = __OFSUB__(v147, v148);
          v149 = v147 - v148;
          if (v123)
          {
            goto LABEL_138;
          }

          if (v115 < v149)
          {
            v112 = v107 - 2;
          }

          goto LABEL_110;
        }

        goto LABEL_89;
      }

LABEL_4:
      v33 = v180[1];
      v34 = v175;
      v35 = v199;
      if (v175 >= v33)
      {
        goto LABEL_120;
      }
    }
  }

  swift_bridgeObjectRetain_n();
LABEL_120:
  v164 = *v170;
  if (!*v170)
  {
    goto LABEL_148;
  }

  v165 = v202;

  sub_22554(&v203, v164, v180, v165);

LABEL_122:
  swift_bridgeObjectRelease_n();
}

uint64_t sub_23554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v67 = a5;
  v66 = sub_2EC08();
  v9 = *(v66 - 8);
  v10 = __chkstk_darwin(v66);
  v65 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v47 - v12;
  v14 = sub_2F3B8();
  v15 = __chkstk_darwin(v14);
  v57 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v68 = &v47 - v18;
  result = __chkstk_darwin(v17);
  v22 = &v47 - v20;
  v49 = a2;
  if (a3 != a2)
  {
    v23 = *a4;
    v25 = *(v21 + 16);
    v24 = v21 + 16;
    v26 = *(v24 + 56);
    v64 = (v9 + 8);
    v59 = (v24 - 8);
    v60 = v25;
    v61 = &v47 - v20;
    v62 = v24;
    v55 = (v24 + 16);
    v56 = v23;
    v27 = v23 + v26 * (a3 - 1);
    v54 = -v26;
    v28 = a1 - a3;
    v48 = v26;
    v29 = v23 + v26 * a3;
    v58 = v14;
LABEL_5:
    v52 = v27;
    v53 = a3;
    v50 = v29;
    v51 = v28;
    v30 = v27;
    while (1)
    {
      v31 = v60;
      v60(v22, v29, v14);
      v31(v68, v30, v14);
      sub_2F398();
      v32 = v67;
      if (!*(v67 + 16))
      {
        break;
      }

      v33 = sub_2A2F4(v13);
      v34 = *v64;
      if ((v35 & 1) == 0)
      {
        goto LABEL_10;
      }

      v36 = *(*(v32 + 56) + 8 * v33);
LABEL_11:
      v63 = v36;
      v37 = v13;
      v34(v13, v66);
      v38 = v65;
      sub_2F398();
      v39 = v67;
      if (*(v67 + 16) && (v40 = sub_2A2F4(v38), (v41 & 1) != 0))
      {
        v42 = *(*(v39 + 56) + 8 * v40);
      }

      else
      {
        v42 = 0x8000000000000000;
      }

      v34(v65, v66);
      v14 = v58;
      v43 = *v59;
      (*v59)(v68, v58);
      v22 = v61;
      result = v43(v61, v14);
      v13 = v37;
      if (v63 >= v42)
      {
LABEL_4:
        a3 = v53 + 1;
        v27 = v52 + v48;
        v28 = v51 - 1;
        v29 = v50 + v48;
        if (v53 + 1 == v49)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v56)
      {
        __break(1u);
        return result;
      }

      v44 = *v55;
      v45 = v57;
      (*v55)(v57, v29, v14);
      swift_arrayInitWithTakeFrontToBack();
      result = (v44)(v30, v45, v14);
      v30 += v54;
      v29 += v54;
      if (__CFADD__(v28++, 1))
      {
        goto LABEL_4;
      }
    }

    v34 = *v64;
LABEL_10:
    v36 = 0x8000000000000000;
    goto LABEL_11;
  }

  return result;
}

Swift::Int sub_23934(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_30288(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_2F3B8();
        v8 = sub_30038();
        v8[2] = v7;
      }

      v9 = *(sub_2F3B8() - 8);
      v10[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v10[1] = v7;

      sub_22714(v10, v11, a1, v6, a2);

      v8[2] = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_23554(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_23AB8(uint64_t *a1, uint64_t a2)
{
  v4 = *(sub_2F3B8() - 8);
  v5 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_20F8C(v5);
  }

  v6 = v5[2];
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;

  sub_23934(v8, a2);

  *a1 = v5;
  return swift_bridgeObjectRelease_n();
}

void sub_23BA0()
{
  if (qword_3CC30 != -1)
  {
    swift_once();
  }

  v0 = sub_2FF48();
  sub_4FD8(v0, qword_3D460);
  oslog = sub_2FF28();
  v1 = sub_300C8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    if (qword_3CC28 != -1)
    {
      swift_once();
    }

    *(v2 + 4) = sub_29C64(qword_3D450, *algn_3D458, &v5);
    _os_log_impl(&dword_0, oslog, v1, "%s run() finished", v2, 0xCu);
    sub_5448(v3);
  }
}

uint64_t sub_23D64(uint64_t a1)
{
  v2 = sub_2EC08();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_23F00(&qword_3CFB0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  result = sub_300A8();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_1C3E8(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_23F00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_23F4C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23F60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_23FA8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void sub_24000()
{
  sub_1B98(&qword_3D7C8, &qword_31168);
  v0._countAndFlagsBits = sub_2FF98();
  sub_2FFC8(v0);

  v1._countAndFlagsBits = 93;
  v1._object = 0xE100000000000000;
  sub_2FFC8(v1);
  qword_3D790 = 91;
  *algn_3D798 = 0xE100000000000000;
}

uint64_t sub_24090(__objc2_class_ro *a1)
{
  v112 = a1;
  v104 = sub_2EC08();
  v89 = *(v104 - 8);
  __chkstk_darwin(v104);
  v103 = v86 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1B98(&qword_3D7B8, &qword_31158);
  v3 = __chkstk_darwin(v2 - 8);
  v98 = v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  *&v109 = v86 - v5;
  v92 = sub_2F578();
  v95 = *(v92 - 8);
  v6 = __chkstk_darwin(v92);
  v99 = v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v93 = v86 - v9;
  v10 = __chkstk_darwin(v8);
  v90 = v86 - v11;
  v12 = __chkstk_darwin(v10);
  v97 = v86 - v13;
  v14 = __chkstk_darwin(v12);
  v91 = v86 - v15;
  __chkstk_darwin(v14);
  v114 = v86 - v16;
  sub_2F988();
  v17 = sub_2F978();
  v115 = sub_1B98(&qword_3D7C0, &qword_31160);
  v18 = sub_2F3C8();
  v19 = *(v18 - 8);
  v113 = *(v19 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v111 = xmmword_30830;
  *(v21 + 16) = xmmword_30830;
  v22 = *(v19 + 104);
  v22(v21 + v20, enum case for ContactSuggestionTag.domainPhoneCall(_:), v18);
  sub_2C780(v21);
  swift_setDeallocating();
  v108 = *(v19 + 8);
  v108(v21 + v20, v18);
  swift_deallocClassInstance();
  v110 = sub_2F968();

  v23 = swift_allocObject();
  *(v23 + 16) = v111;
  v22(v23 + v20, enum case for ContactSuggestionTag.domainMessages(_:), v18);
  sub_2C780(v23);
  swift_setDeallocating();
  v108(v23 + v20, v18);
  v24 = v94;
  swift_deallocClassInstance();
  v88 = v17;
  v25 = sub_2F968();

  v116 = v110;
  sub_27CD8(v25);
  v26 = v116;
  sub_5550(v24, *(v24 + 3));
  sub_2F0E8();
  sub_5550(&v116, v117);
  v27 = sub_2F7C8();
  sub_5448(&v116);
  if (qword_3CC40 != -1)
  {
LABEL_46:
    swift_once();
  }

  v28 = sub_2FF48();
  v102 = sub_4FD8(v28, qword_3D7A0);
  v29 = sub_2FF28();
  LOBYTE(v30) = sub_300D8();
  v31 = os_log_type_enabled(v29, v30);
  v32 = &SiriPrivateLearningInferencePlugin;
  v110 = v27;
  if (!v31)
  {

    v34 = v92;
    v35 = v93;
    goto LABEL_6;
  }

  v33 = swift_slowAlloc();
  v34 = swift_slowAlloc();
  v116 = v34;
  *v33 = 136315138;
  v35 = v93;
  if (qword_3CC38 != -1)
  {
    goto LABEL_51;
  }

  while (1)
  {
    *(v33 + 4) = sub_29C64(qword_3D790, *algn_3D798, &v116);
    _os_log_impl(&dword_0, v29, v30, "%s Generated Suggestions:", v33, 0xCu);
    sub_5448(v34);

    v34 = v92;
    v27 = v110;
LABEL_6:
    sub_EF84(8224, 0xE200000000000000, v26);

    v36 = sub_2FF28();
    v37 = sub_300D8();
    v38 = &loc_30000;
    if (os_log_type_enabled(v36, v37))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v116 = v40;
      *v39 = 136315394;
      if (v32[43].base_meths != -1)
      {
        swift_once();
      }

      *(v39 + 4) = sub_29C64(qword_3D790, *algn_3D798, &v116);
      *(v39 + 12) = 2048;
      v27 = v110;
      *(v39 + 14) = v110[2];

      _os_log_impl(&dword_0, v36, v37, "%s Combining with %ld existing PLUS suggestions from disk:", v39, 0x16u);
      sub_5448(v40);

      v34 = v92;
    }

    else
    {
    }

    sub_EF84(8224, 0xE200000000000000, v27);
    sub_5550(v24, *(v24 + 3));
    sub_2F0D8();
    sub_2F508();
    swift_allocObject();
    v101 = sub_2F4F8();
    v41 = *(v26 + 16);
    v87 = v41;
    if (v41)
    {
      v116 = _swiftEmptyArrayStorage;
      sub_2BB1C(0, v41, 0);
      v100 = 0;
      v115 = v116;
      *&v111 = *(v95 + 16);
      v42 = (*(v95 + 80) + 32) & ~*(v95 + 80);
      v43 = v41;
      v86[1] = v26;
      v107 = v42;
      v44 = v26 + v42;
      v45 = (v95 + 48);
      v105 = *(v95 + 72);
      v112 = (v95 + 16);
      v113 = (v95 + 32);
      v96 = (v89 + 8);
      v46 = v91;
      v106 = (v95 + 48);
      v108 = (v95 + 8);
      while (1)
      {
        v47 = (v111)(v46, v44, v34);
        __chkstk_darwin(v47);
        v86[-2] = v46;
        v48 = v109;
        v49 = v110;
        sub_25640(sub_259EC, v110, v109);
        v50 = *v45;
        if ((*v45)(v48, 1, v34) == 1)
        {
          v51 = sub_25A0C(v48);
          __chkstk_darwin(v51);
          v86[-2] = v46;
          v52 = v98;
          sub_25640(sub_25A74, v49, v98);
          if (v50(v52, 1, v34) == 1)
          {
            sub_25A0C(v52);
            v53 = v103;
            sub_2EBF8();
            sub_2F4D8();
            (*v96)(v53, v104);
            (v111)(v114, v46, v34);
            (*v108)(v46, v34);
          }

          else
          {
            v24 = v90;
            (*v113)(v90, v52, v34);
            sub_2F518();
            v27 = v103;
            sub_2EBF8();
            sub_2F4D8();
            (*v96)(v27, v104);
            v26 = v108;
            v56 = *v108;
            (*v108)(v24, v34);
            if (__OFADD__(v100, 1))
            {
              __break(1u);
              goto LABEL_46;
            }

            ++v100;
            v46 = v91;
            v56(v91, v34);
          }
        }

        else
        {
          v54 = v97;
          (*v113)(v97, v48, v34);
          sub_2F518();
          v55 = *v108;
          (*v108)(v54, v34);
          v55(v46, v34);
        }

        v57 = v115;
        v116 = v115;
        v59 = v115[2];
        v58 = v115[3];
        if (v59 >= v58 >> 1)
        {
          sub_2BB1C((v58 > 1), v59 + 1, 1);
          v57 = v116;
        }

        v57[2] = v59 + 1;
        v115 = v57;
        v60 = v105;
        (*v113)(v57 + v107 + v59 * v105, v114, v34);
        v44 += v60;
        --v43;
        v45 = v106;
        if (!v43)
        {

          v24 = v94;
          v35 = v93;
          v32 = &SiriPrivateLearningInferencePlugin;
          v38 = &loc_30000;
          goto LABEL_24;
        }
      }
    }

    v100 = 0;
    v115 = _swiftEmptyArrayStorage;
LABEL_24:
    v61 = sub_2FF28();
    v62 = sub_300D8();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v116 = v64;
      *v63 = 136315138;
      if (v32[43].base_meths != -1)
      {
        swift_once();
      }

      v32 = v38;
      *(v63 + 4) = sub_29C64(qword_3D790, *algn_3D798, &v116);
      _os_log_impl(&dword_0, v61, v62, "%s Writing combined suggestions to disk:", v63, 0xCu);
      sub_5448(v64);
    }

    else
    {
      v32 = v38;
    }

    v26 = v95;
    v65 = v115;
    sub_EF84(8224, 0xE200000000000000, v115);
    sub_5550(v24, *(v24 + 3));
    sub_2F0E8();
    v29 = v117;
    v33 = v118;
    LOBYTE(v30) = sub_5550(&v116, v117);
    sub_2F798();
    sub_5448(&v116);
    v67 = v65[2];
    if (v67)
    {
      v68 = *(v26 + 16);
      v26 += 16;
      v29 = (v115 + ((*(v26 + 64) + 32) & ~*(v26 + 64)));
      v69 = *(v26 + 56);
      v113 = (v26 - 8);
      v114 = v69;
      v110 = (v89 + 8);
      *&v66 = v32[29].name;
      v109 = v66;
      v32 = v68;
      v95 = v26;
      v112 = v68;
      (v68)(v35, v29, v34);
      while (1)
      {
        sub_5550(v24, *(v24 + 3));
        sub_2F0E8();
        v33 = v117;
        sub_5550(&v116, v117);
        LOBYTE(v30) = sub_2F7B8();
        sub_5448(&v116);
        if (v30)
        {
          (*v113)(v35, v34);
        }

        else
        {
          v70 = v35;
          v71 = v24;
          v72 = v99;
          (v32)(v99, v70, v34);
          v73 = v70;
          v74 = sub_2FF28();
          v33 = sub_300D8();
          if (os_log_type_enabled(v74, v33))
          {
            v75 = swift_slowAlloc();
            *&v111 = swift_slowAlloc();
            v116 = v111;
            *v75 = v109;
            if (qword_3CC38 != -1)
            {
              swift_once();
            }

            *(v75 + 4) = sub_29C64(qword_3D790, *algn_3D798, &v116);
            *(v75 + 12) = 2080;
            v76 = v103;
            sub_2F558();
            sub_25A94(&qword_3D758, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v77 = v104;
            v78 = sub_30298();
            v80 = v79;
            (*v110)(v76, v77);
            v81 = v72;
            v82 = *v113;
            v34 = v92;
            (*v113)(v81, v92);
            v30 = sub_29C64(v78, v80, &v116);

            *(v75 + 14) = v30;
            _os_log_impl(&dword_0, v74, v33, "%s Unable to save PICS with id = %s to storage", v75, 0x16u);
            LOBYTE(v30) = v111;
            swift_arrayDestroy();

            v35 = v93;
            v82(v93, v34);
            v24 = v94;
            v26 = v95;
            v32 = v112;
          }

          else
          {

            v33 = v113;
            v30 = *v113;
            (*v113)(v72, v34);
            (v30)(v73, v34);
            v83 = v73;
            v32 = v112;
            v24 = v71;
            v35 = v83;
          }
        }

        v29 = &v114[v29];
        if (!--v67)
        {
          break;
        }

        (v32)(v35, v29, v34);
      }
    }

    v84 = v87 - v100;
    if (__OFSUB__(v87, v100))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    if (v84 > 0xFFFFFFFFLL)
    {
      goto LABEL_48;
    }

    if ((v84 | v100) < 0)
    {
      goto LABEL_49;
    }

    if (v100 <= 0xFFFFFFFFLL)
    {
      return 0;
    }

LABEL_50:
    __break(1u);
LABEL_51:
    swift_once();
  }
}

uint64_t sub_25210(uint64_t a1, uint64_t a2)
{
  if ((sub_2F528() & 1) == 0)
  {
    return 0;
  }

  v2 = sub_2F568();
  v3 = sub_2F568();
  v4 = sub_25290(v2, v3);

  return v4 & 1;
}

uint64_t sub_25290(uint64_t a1, uint64_t a2)
{
  v4 = sub_2F3C8();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v44 = &v33 - v10;
  result = __chkstk_darwin(v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_25A94(&qword_3D7D0, &type metadata accessor for ContactSuggestionTag, &protocol conformance descriptor for ContactSuggestionTag);
      v26 = sub_2FF58();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_25A94(&qword_3D7D8, &type metadata accessor for ContactSuggestionTag, &protocol conformance descriptor for ContactSuggestionTag);
        v31 = sub_2FF78();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25640@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v23 = a1;
  v6 = sub_2F578();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  if (v10)
  {
    v20 = v7;
    v21 = a3;
    v12 = *(v7 + 16);
    v11 = v7 + 16;
    v22 = v12;
    v13 = (v11 - 8);
    v14 = a2 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    while (1)
    {
      v22(v9, v14, v6);
      v16 = v23(v9);
      if (v3)
      {
        return (*v13)(v9, v6);
      }

      if (v16)
      {
        break;
      }

      (*v13)(v9, v6);
      v14 += v15;
      if (!--v10)
      {
        v17 = 1;
        v7 = v20;
        a3 = v21;
        return (*(v7 + 56))(a3, v17, 1, v6);
      }
    }

    v7 = v20;
    a3 = v21;
    (*(v20 + 32))(v21, v9, v6);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  return (*(v7 + 56))(a3, v17, 1, v6);
}

uint64_t sub_25814(uint64_t a1, uint64_t a2)
{
  if ((sub_2F538() & 1) == 0)
  {
    return 0;
  }

  sub_2F568();
  sub_2F568();
  sub_2F3C8();
  sub_25A94(&qword_3D7D0, &type metadata accessor for ContactSuggestionTag, &protocol conformance descriptor for ContactSuggestionTag);
  v2 = sub_2FE68();

  return v2 & 1;
}

uint64_t sub_25924()
{
  v0 = sub_2FF48();
  sub_55B0(v0, qword_3D7A0);
  v1 = sub_4FD8(v0, qword_3D7A0);
  if (qword_3CC08 != -1)
  {
    swift_once();
  }

  v2 = sub_4FD8(v0, qword_3E470);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_25A0C(uint64_t a1)
{
  v2 = sub_1B98(&qword_3D7B8, &qword_31158);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25A94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25AE8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_25AFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1FF && *(a1 + 9))
  {
    return (*a1 + 511);
  }

  v3 = ((*(a1 + 8) >> 7) | (2 * ((*a1 >> 60) & 0xF | (16 * ((*(a1 + 8) >> 3) & 0xF))))) ^ 0x1FF;
  if (v3 >= 0x1FE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_25B5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1FE)
  {
    *(result + 8) = 0;
    *result = a2 - 511;
    if (a3 >= 0x1FF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1FF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1);
      *result = v3 << 60;
      *(result + 8) = ((v3 - (a2 << 8)) >> 1) & 0xF8;
    }
  }

  return result;
}

uint64_t sub_25BC8(uint64_t result, char a2)
{
  v2 = *(result + 8) & 7 | (a2 << 7);
  *result &= 0xFFFFFFFFFFFFFFFuLL;
  *(result + 8) = v2;
  return result;
}

Swift::Int sub_25BF8()
{
  v1 = *v0;
  sub_30318();
  sub_30328(v1);
  return sub_30338();
}

Swift::Int sub_25C6C(uint64_t a1)
{
  v2 = *v1;
  sub_30318();
  sub_30328(v2);
  return sub_30338();
}

uint64_t sub_25CB0@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25ED8(*a1);
  *a2 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for InferencePluginErrorReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InferencePluginErrorReason(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25E84()
{
  result = qword_3D7E0;
  if (!qword_3D7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3D7E0);
  }

  return result;
}

uint64_t sub_25ED8(uint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  else
  {
    return result;
  }
}

uint64_t *sub_25EE8(void *a1)
{
  sub_54EC(a1, v1 + 32);
  v3 = sub_2F098();
  v5 = v4;
  sub_5448(a1);
  *(v1 + 16) = v3;
  *(v1 + 24) = v5;
  return v1;
}

double sub_25F70@<D0>(char a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a1)
  {
    if (qword_3CC48 != -1)
    {
      swift_once();
    }

    v9 = sub_2FF48();
    sub_4FD8(v9, qword_3D7E8);

    v10 = sub_2FF28();
    v11 = sub_300D8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v12 = 136315394;
      *(v12 + 4) = sub_29C64(*(a4 + 16), *(a4 + 24), &v18);
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_29C64(a2, a3, &v18);
      _os_log_impl(&dword_0, v10, v11, "%s %s enabled", v12, 0x16u);
      swift_arrayDestroy();
    }

    sub_2FD88();
    swift_allocObject();
    v18 = sub_2FD78();
    sub_263C0();
    sub_2F838();
  }

  else
  {
    if (qword_3CC48 != -1)
    {
      swift_once();
    }

    v14 = sub_2FF48();
    sub_4FD8(v14, qword_3D7E8);

    v15 = sub_2FF28();
    v16 = sub_300D8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 136315394;
      *(v17 + 4) = sub_29C64(*(a4 + 16), *(a4 + 24), &v18);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_29C64(a2, a3, &v18);
      _os_log_impl(&dword_0, v15, v16, "%s %s disabled", v17, 0x16u);
      swift_arrayDestroy();
    }

    *(a5 + 32) = 0;
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  return result;
}

uint64_t sub_26294(void *a1)
{
  v2 = swift_allocObject();
  sub_25EE8(a1);
  return v2;
}

uint64_t sub_262F8()
{
  v0 = sub_2FF48();
  sub_55B0(v0, qword_3D7E8);
  v1 = sub_4FD8(v0, qword_3D7E8);
  if (qword_3CC08 != -1)
  {
    swift_once();
  }

  v2 = sub_4FD8(v0, qword_3E470);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_263C0()
{
  result = qword_3D900;
  if (!qword_3D900)
  {
    sub_2FD88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3D900);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for PluginRunSummary(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for PluginRunSummary(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PluginRunSummary(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_2647C(uint64_t a1, uint64_t a2)
{
  v2 = sub_2F258();
  v4 = v3;
  sub_2F238();
  sub_272FC(&qword_3DA70, &type metadata accessor for MediaGroundTruth, &protocol conformance descriptor for MediaGroundTruth);
  if (v2 == sub_2F268() && v4 == v5)
  {
    goto LABEL_9;
  }

  v7 = sub_302A8();

  if ((v7 & 1) == 0)
  {
    v9 = sub_2F258();
    v11 = v10;
    sub_2F6C8();
    sub_272FC(&qword_3D258, &type metadata accessor for MediaFeedbackGroundTruth, &protocol conformance descriptor for MediaFeedbackGroundTruth);
    if (v9 != sub_2F268() || v11 != v12)
    {
      v8 = sub_302A8();
      goto LABEL_10;
    }

LABEL_9:
    v8 = 1;
LABEL_10:

    return v8 & 1;
  }

  v8 = 1;
  return v8 & 1;
}

uint64_t sub_26604(void *a1)
{
  v2 = swift_allocObject();
  sub_26644(a1);
  return v2;
}

void *sub_26644(void *a1)
{
  v2 = v1;
  sub_5550(a1, a1[3]);
  sub_2F0D8();
  sub_2FDC8();
  swift_allocObject();
  *(v1 + 72) = sub_2FDB8();
  sub_54EC(a1, v8);
  sub_54EC(v8, v1 + 32);
  v4 = sub_2F098();
  v6 = v5;
  sub_5448(v8);
  *(v2 + 16) = v4;
  *(v2 + 24) = v6;
  sub_5448(a1);
  return v2;
}

uint64_t sub_26730()
{
  sub_5550((v0 + 32), *(v0 + 56));
  sub_2F0A8();
  sub_5550(v5, v5[3]);
  v1 = sub_2F038();
  v4[3] = sub_2ECB8();
  v4[4] = &protocol witness table for AnyFeature;
  v4[0] = v1;
  v2 = sub_2ED48();
  sub_5448(v4);
  sub_5448(v5);
  return v2 & 1;
}

uint64_t sub_267DC()
{
  sub_1B98(&qword_3D0F8, &unk_30C20);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_30830;
  v1 = sub_2F478();
  swift_allocObject();
  v2 = sub_2F468();
  *(v0 + 56) = v1;
  *(v0 + 64) = sub_272FC(&qword_3DA68, &type metadata accessor for MediaFeatureExtractor, &protocol conformance descriptor for MediaFeatureExtractor);
  *(v0 + 32) = v2;
  return v0;
}

void *sub_26898()
{
  v1 = v0;
  v2 = sub_2EE28();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_5550(v0 + 4, v0[7]);
  sub_2F0A8();
  sub_5550(&v40, *(&v41 + 1));
  v6 = sub_2F028();
  v38 = sub_2ECB8();
  v39 = &protocol witness table for AnyFeature;
  v30 = v38;
  *&v37 = v6;
  v31 = sub_2ED48();
  sub_5448(&v37);
  sub_5448(&v40);
  if (qword_3CC50 != -1)
  {
    swift_once();
  }

  v7 = sub_2FF48();
  sub_4FD8(v7, qword_3D908);
  v8 = sub_2FF28();
  v9 = sub_300D8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v40 = v11;
    *v10 = 136315138;
    if (v31)
    {
      v12 = 0x44454C42414E45;
    }

    else
    {
      v12 = 0x44454C4241534944;
    }

    v13 = v2;
    v14 = v3;
    if (v31)
    {
      v15 = 0xE700000000000000;
    }

    else
    {
      v15 = 0xE800000000000000;
    }

    v16 = sub_29C64(v12, v15, &v40);
    v3 = v14;
    v2 = v13;

    *(v10 + 4) = v16;
    _os_log_impl(&dword_0, v8, v9, "Media In App Followup is %s", v10, 0xCu);
    sub_5448(v11);
  }

  sub_5550(v1 + 4, v1[7]);
  sub_2F0A8();
  sub_5550(&v40, *(&v41 + 1));
  sub_2F088();
  sub_2ED38();
  (*(v3 + 8))(v5, v2);
  sub_5448(&v40);
  sub_5550(v1 + 4, v1[7]);
  sub_2F0A8();
  sub_5550(&v40, *(&v41 + 1));
  v17 = sub_2F058();
  v18 = v30;
  v38 = v30;
  v39 = &protocol witness table for AnyFeature;
  *&v37 = v17;
  sub_2ED48();
  sub_5448(&v37);
  sub_5448(&v40);
  sub_5550(v1 + 4, v1[7]);
  sub_2F0A8();
  sub_5550(&v40, *(&v41 + 1));
  v19 = sub_2F078();
  v38 = v18;
  v39 = &protocol witness table for AnyFeature;
  *&v37 = v19;
  sub_2ED48();
  sub_5448(&v37);
  sub_5448(&v40);
  sub_2FCE8();
  swift_allocObject();
  *&v40 = sub_2FCD8();
  sub_272FC(&qword_3DA58, &type metadata accessor for MediaEntityPartialRepetitionDefinition, &protocol conformance descriptor for MediaEntityPartialRepetitionDefinition);
  sub_2F838();

  v20 = v1[9];
  v21 = type metadata accessor for MusicEntityGroundTruthGenerator();
  v22 = swift_allocObject();

  v23 = sub_48EC(_swiftEmptyArrayStorage);
  *(v22 + 32) = v31 & 1;
  *(v22 + 16) = v20;
  *(v22 + 24) = v23;
  v36[3] = v21;
  v36[4] = sub_272FC(&qword_3DA60, type metadata accessor for MusicEntityGroundTruthGenerator, &unk_30D38);
  v36[0] = v22;
  sub_27224(&v35, &v40);
  v33 = v41;
  v32 = v40;
  v34 = v42;
  if (*(&v41 + 1))
  {
    sub_5BA4(&v32, &v37);
    v24 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_29580(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v26 = v24[2];
    v25 = v24[3];
    if (v26 >= v25 >> 1)
    {
      v24 = sub_29580((v25 > 1), v26 + 1, 1, v24);
    }

    v24[2] = v26 + 1;
    sub_5BA4(&v37, &v24[5 * v26 + 4]);
  }

  else
  {
    sub_27294(&v32);
    v24 = _swiftEmptyArrayStorage;
  }

  sub_27224(v36, &v40);
  v33 = v41;
  v32 = v40;
  v34 = v42;
  if (*(&v41 + 1))
  {
    sub_5BA4(&v32, &v37);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_29580(0, v24[2] + 1, 1, v24);
    }

    v28 = v24[2];
    v27 = v24[3];
    if (v28 >= v27 >> 1)
    {
      v24 = sub_29580((v27 > 1), v28 + 1, 1, v24);
    }

    v24[2] = v28 + 1;
    sub_5BA4(&v37, &v24[5 * v28 + 4]);
  }

  else
  {
    sub_27294(&v32);
  }

  sub_1B98(&qword_3D3E8, &qword_30E48);
  swift_arrayDestroy();
  return v24;
}

uint64_t sub_26F8C()
{
  sub_1B98(&qword_3DA50, qword_31450);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_30830;
  sub_54EC(v0 + 32, v5);
  v2 = sub_2F688();
  swift_allocObject();
  v3 = sub_2F698();
  *(v1 + 56) = v2;
  *(v1 + 64) = &protocol witness table for MediaEvaluationFramework;
  *(v1 + 32) = v3;
  return v1;
}

uint64_t sub_2702C()
{
  sub_1B98(&qword_3DA48, &unk_31730);
  v0 = sub_2F1F8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_30820;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for EventStreamType.nowPlayingStream(_:), v0);
  v6(v5 + v2, enum case for EventStreamType.playMediaIntentStreamWithAttachedNowPlayingEvents(_:), v0);
  return v4;
}

uint64_t sub_2715C()
{
  v0 = sub_2FF48();
  sub_55B0(v0, qword_3D908);
  v1 = sub_4FD8(v0, qword_3D908);
  if (qword_3CC08 != -1)
  {
    swift_once();
  }

  v2 = sub_4FD8(v0, qword_3E470);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_27224(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B98(&qword_3D3E8, &qword_30E48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27294(uint64_t a1)
{
  v2 = sub_1B98(&qword_3D3E8, &qword_30E48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_272FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_27344()
{
  sub_5448(v0 + 2);
  sub_5448(v0 + 7);
  sub_5448(v0 + 12);
  sub_5448(v0 + 17);
  sub_5448(v0 + 22);
  v1 = OBJC_IVAR____TtC34SiriPrivateLearningInferencePlugin41SiriPrivateLearningInferencePluginContext_uflCoreAnalyticsLogLevel;
  v2 = sub_2EC58();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SiriPrivateLearningInferencePluginContext(uint64_t a1)
{
  result = qword_3DAA0;
  if (!qword_3DAA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2745C(uint64_t a1)
{
  result = sub_2EC58();
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

uint64_t sub_275B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC34SiriPrivateLearningInferencePlugin41SiriPrivateLearningInferencePluginContext_uflCoreAnalyticsLogLevel;
  v5 = sub_2EC58();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void *sub_27670(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v19 = a3;
  v4 = a2(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - v6;
  v8 = *(a1 + 16);
  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v23 = _swiftEmptyArrayStorage;
    sub_2BBA0(0, v8, 0);
    v9 = v23;
    v12 = *(v5 + 16);
    v10 = v5 + 16;
    v11 = v12;
    v13 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v18 = *(v10 + 56);
    do
    {
      v11(v7, v13, v4);
      v23 = v9;
      v15 = v9[2];
      v14 = v9[3];
      if (v15 >= v14 >> 1)
      {
        sub_2BBA0((v14 > 1), v15 + 1, 1);
      }

      v21 = v4;
      v22 = v19;
      v16 = sub_C678(&v20);
      v11(v16, v7, v4);
      v9 = v23;
      v23[2] = v15 + 1;
      sub_1978(&v20, &v9[5 * v15 + 4]);
      (*(v10 - 8))(v7, v4);
      v13 += v18;
      --v8;
    }

    while (v8);
  }

  return v9;
}

void *sub_278C8(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v22 = a4;
  v23 = a5;
  v21 = a3;
  v6 = a2(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  v10 = *(a1 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (v10)
  {
    v27 = _swiftEmptyArrayStorage;
    sub_2BB60(0, v10, 0);
    v11 = v27;
    v14 = *(v7 + 16);
    v13 = v7 + 16;
    v12 = v14;
    v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v20 = *(v13 + 56);
    do
    {
      v12(v9, v15, v6);
      v27 = v11;
      v17 = v11[2];
      v16 = v11[3];
      if (v17 >= v16 >> 1)
      {
        sub_2BB60((v16 > 1), v17 + 1, 1);
      }

      v25 = v6;
      v26 = sub_2CDD0(v21, 255, v22, v23);
      v18 = sub_C678(&v24);
      v12(v18, v9, v6);
      v11 = v27;
      v27[2] = v17 + 1;
      sub_1978(&v24, &v11[5 * v17 + 4]);
      (*(v13 - 8))(v9, v6);
      v15 += v20;
      --v10;
    }

    while (v10);
  }

  return v11;
}

uint64_t sub_27AA4(uint64_t result)
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

  result = sub_295EC(result, v11, 1, v3, &qword_3D780, &qword_310B8, &qword_3DD08, &qword_317B0);
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

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

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

void *sub_27BB0(void *result)
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

  result = sub_29804(result, v10, 1, v3, &qword_3DC98, &qword_316B8, &qword_3CF70, &unk_315C0);
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

  sub_1B98(&qword_3CF70, &unk_315C0);
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

uint64_t sub_27D50(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v20 = v8 + v6;
  }

  else
  {
    v20 = v8;
  }

  v7 = sub_29974(isUniquelyReferenced_nonNull_native, v20, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v16 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  if (v16 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v17 = v7[2];
  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (!v18)
  {
    v7[2] = v19;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_27EAC(uint64_t a1)
{
  type metadata accessor for MessagesContactGroundTruthGenerator();
  sub_1B98(&qword_3DD18, &unk_317C0);
  v1._countAndFlagsBits = sub_2FF98();
  sub_2FFC8(v1);

  v2._countAndFlagsBits = 93;
  v2._object = 0xE100000000000000;
  sub_2FFC8(v2);
  qword_3DB50 = 91;
  *algn_3DB58 = 0xE100000000000000;
}

Swift::Void __swiftcall MessagesContactGroundTruthGenerator.reviewSession(session:)(Swift::OpaquePointer session)
{
  v3 = sub_1B98(&qword_3CF40, &unk_315B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v68 - v4;
  v6 = sub_2EC08();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = (&v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v12 = &v68 - v11;
  sub_30018();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_5B38(v5, &qword_3CF40, &unk_315B0);
    return;
  }

  v71 = v12;
  v72 = v1;
  v70 = v7;
  (*(v7 + 32))(v12, v5, v6);
  v13 = &v78;
  v14 = sub_2F2E8();
  swift_allocObject();
  v15 = sub_2F2D8();
  v79[3] = v14;
  v79[4] = &protocol witness table for MessagesClassifier;
  v79[0] = v15;
  v16 = sub_2F608();
  swift_allocObject();
  v17 = sub_2F5F8();
  v80[3] = v16;
  v80[4] = &protocol witness table for EntityPromptClassifier;
  v80[0] = v17;
  sub_2F828();
  sub_1B98(&qword_3CF48, &unk_30AD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_30830;
  *(inited + 32) = sub_2EFA8();
  *(inited + 40) = v19;
  isUniquelyReferenced_nonNull_native = sub_2C32C(inited);
  swift_setDeallocating();
  sub_7480(inited + 32);
  v21 = sub_2F3E8();
  swift_allocObject();
  v22 = sub_2F3D8();
  v76 = v21;
  v77 = &protocol witness table for EntityNodeComparator;
  v75[0] = v22;
  v75[0] = sub_2F818();
  sub_2F808();

  sub_54EC(v79, v75);
  sub_5550(v75, v76);
  v23 = sub_2F298();
  sub_5448(v75);
  v24 = *(v23 + 16);
  v25 = sub_29804(0, v24, 1, _swiftEmptyArrayStorage, &qword_3DD20, &unk_317D0, &qword_3CF50, &unk_30D70);
  v26 = v25;
  if (*(v23 + 16))
  {
    if ((v25[3] >> 1) - v25[2] < v24)
    {
      goto LABEL_59;
    }

    sub_1B98(&qword_3CF50, &unk_30D70);
    swift_arrayInitWithCopy();

    if (v24)
    {
      v27 = v26[2];
      v28 = __OFADD__(v27, v24);
      v29 = v24 + v27;
      if (v28)
      {
        __break(1u);
        goto LABEL_64;
      }

      v26[2] = v29;
    }
  }

  else
  {

    if (v24)
    {
      __break(1u);
      goto LABEL_17;
    }
  }

  sub_54EC(v80, v75);
  sub_5550(v75, v76);
  v23 = sub_2F298();
  sub_5448(v75);
  v24 = *(v23 + 16);
  v30 = v26[2];
  v31 = v24 + v30;
  if (__OFADD__(v30, v24))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v31 <= v26[3] >> 1)
  {
    if (v24)
    {
      goto LABEL_12;
    }

LABEL_22:

    if (v24)
    {
      __break(1u);
      goto LABEL_31;
    }

    goto LABEL_23;
  }

LABEL_18:
  if (v30 <= v31)
  {
    v34 = v31;
  }

  else
  {
    v34 = v30;
  }

  v26 = sub_29804((&dword_0 + 1), v34, 1, v26, &qword_3DD20, &unk_317D0, &qword_3CF50, &unk_30D70);
  v30 = v26[2];
  if (!*(v23 + 16))
  {
    goto LABEL_22;
  }

LABEL_12:
  if (((v26[3] >> 1) - v30) < v24)
  {
    goto LABEL_60;
  }

  sub_1B98(&qword_3CF50, &unk_30D70);
  swift_arrayInitWithCopy();

  if (v24)
  {
    v32 = v26[2];
    v28 = __OFADD__(v32, v24);
    v33 = v24 + v32;
    if (!v28)
    {
      v26[2] = v33;
      goto LABEL_23;
    }

LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

LABEL_23:
  sub_54EC(&v81, v75);
  sub_5550(v75, v76);
  v23 = sub_2F298();
  sub_5448(v75);
  v24 = *(v23 + 16);
  v35 = v26[2];
  v36 = v24 + v35;
  if (__OFADD__(v35, v24))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v36 <= v26[3] >> 1)
  {
    if (v24)
    {
      goto LABEL_26;
    }

    goto LABEL_36;
  }

LABEL_32:
  if (v35 <= v36)
  {
    v39 = v36;
  }

  else
  {
    v39 = v35;
  }

  v26 = sub_29804((&dword_0 + 1), v39, 1, v26, &qword_3DD20, &unk_317D0, &qword_3CF50, &unk_30D70);
  v35 = v26[2];
  if (*(v23 + 16))
  {
LABEL_26:
    if (((v26[3] >> 1) - v35) < v24)
    {
      goto LABEL_61;
    }

    sub_1B98(&qword_3CF50, &unk_30D70);
    swift_arrayInitWithCopy();

    if (v24)
    {
      v37 = v26[2];
      v28 = __OFADD__(v37, v24);
      v38 = v24 + v37;
      if (!v28)
      {
        v26[2] = v38;
        goto LABEL_37;
      }

LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

LABEL_37:
    v68 = v10;
    sub_1B98(&qword_3CF58, &unk_30AE0);
    swift_arrayDestroy();
    if (qword_3CC60 == -1)
    {
      goto LABEL_38;
    }

    goto LABEL_57;
  }

LABEL_36:

  if (!v24)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_57:
  swift_once();
LABEL_38:
  v40 = sub_2FF48();
  v41 = sub_4FD8(v40, qword_3DB60);

  v24 = sub_2FF28();
  LOBYTE(v10) = sub_300D8();

  v42 = os_log_type_enabled(v24, v10);
  v69 = v41;
  if (!v42)
  {

    goto LABEL_42;
  }

  v13 = v6;
  isUniquelyReferenced_nonNull_native = swift_slowAlloc();
  v75[0] = swift_slowAlloc();
  *isUniquelyReferenced_nonNull_native = 136315394;
  if (qword_3CC58 != -1)
  {
    goto LABEL_62;
  }

  while (1)
  {
    *(isUniquelyReferenced_nonNull_native + 4) = sub_29C64(qword_3DB50, *algn_3DB58, v75);
    *(isUniquelyReferenced_nonNull_native + 12) = 2080;
    sub_1B98(&qword_3CF50, &unk_30D70);
    v43 = sub_2FFF8();
    v45 = sub_29C64(v43, v44, v75);

    *(isUniquelyReferenced_nonNull_native + 14) = v45;
    _os_log_impl(&dword_0, v24, v10, "[%s] Classification Results: %s", isUniquelyReferenced_nonNull_native, 0x16u);
    swift_arrayDestroy();

    v6 = v13;
LABEL_42:
    v13 = v72;
    sub_2FD28();
    swift_allocObject();
    v75[0] = sub_2FD18();
    sub_2CDD0(&qword_3DB78, 255, &type metadata accessor for MessagesInAppFollowupGroundTruthGenerator, &protocol conformance descriptor for MessagesInAppFollowupGroundTruthGenerator);
    v46 = sub_2EF98();

    v47 = sub_278C8(v46, &type metadata accessor for MessagesGroundTruth, &qword_3D420, &type metadata accessor for MessagesGroundTruth, &protocol conformance descriptor for MessagesGroundTruth);

    sub_2F878();
    swift_allocObject();
    v74 = sub_2F868();
    sub_2CDD0(&qword_3DB80, 255, &type metadata accessor for SuccessfulMessageDefinition, &protocol conformance descriptor for SuccessfulMessageDefinition);
    sub_2F6F8();

    sub_5550(v75, v76);
    sub_2EF98();
    swift_getAssociatedTypeWitness();
    sub_1B98(&qword_3CF70, &unk_315C0);
    v48 = sub_30218();

    v73 = v47;
    sub_27BB0(v48);
    sub_5448(v75);
    sub_54EC((v13 + 2), v75);
    sub_2FDF8();
    swift_allocObject();
    sub_2FDD8();
    v49 = sub_2FDE8();

    v50 = sub_278C8(v49, &type metadata accessor for ContactSuggestionOutcomeGroundTruth, &qword_3D428, &type metadata accessor for ContactSuggestionOutcomeGroundTruth, &protocol conformance descriptor for ContactSuggestionOutcomeGroundTruth);

    sub_27BB0(v50);
    v10 = v73;

    v51 = sub_2FF28();
    v52 = sub_300D8();

    if (os_log_type_enabled(v51, v52))
    {
      v69 = v6;
      v53 = swift_slowAlloc();
      v75[0] = swift_slowAlloc();
      *v53 = 136315394;
      if (qword_3CC58 != -1)
      {
        swift_once();
      }

      *(v53 + 4) = sub_29C64(qword_3DB50, *algn_3DB58, v75);
      *(v53 + 12) = 2080;
      v54 = sub_2FFF8();
      v56 = sub_29C64(v54, v55, v75);

      *(v53 + 14) = v56;
      _os_log_impl(&dword_0, v51, v52, "[%s] Generated Messages Ground Truth: %s", v53, 0x16u);
      swift_arrayDestroy();

      v6 = v69;
      v13 = v72;
    }

    else
    {
    }

    rawValue = session._rawValue;
    session._rawValue = v71;
    sub_2C494(rawValue, v71, v26);

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74 = v13[8];
    v24 = v74;
    v13[8] = 0x8000000000000000;
    v59 = sub_2A2F4(session._rawValue);
    isa = v24[2].isa;
    v61 = (v58 & 1) == 0;
    v62 = isa + v61;
    if (!__OFADD__(isa, v61))
    {
      break;
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    swift_once();
  }

  v63 = v58;
  if (v24[3].isa >= v62)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2B320();
      v24 = v74;
    }

    goto LABEL_53;
  }

  sub_2A95C(v62, isUniquelyReferenced_nonNull_native, &qword_3CE18, &qword_309C8);
  v24 = v74;
  v64 = sub_2A2F4(session._rawValue);
  if ((v63 & 1) != (v65 & 1))
  {
LABEL_66:
    sub_302C8();
    __break(1u);
    return;
  }

  v59 = v64;
LABEL_53:
  v66 = v70;
  v72[8] = v24;
  if ((v63 & 1) == 0)
  {
    v67 = v68;
    (*(v66 + 16))(v68, session._rawValue, v6);
    sub_2B18C(v59, v67, _swiftEmptyArrayStorage, v24);
  }

  sub_27BB0(v10);
  swift_endAccess();
  (*(v66 + 8))(session._rawValue, v6);
}

void *MessagesContactGroundTruthGenerator.reviewedSessionGroundTruth()()
{
  v51 = sub_1B98(&qword_3CF38, &unk_30AC0);
  v1 = __chkstk_darwin(v51);
  v50 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v49 = &v38 - v4;
  v5 = __chkstk_darwin(v3);
  v48 = &v38 - v6;
  __chkstk_darwin(v5);
  v47 = &v38 - v7;
  v46 = sub_2F3B8();
  v8 = *(v46 - 8);
  __chkstk_darwin(v46);
  v52 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = *(v0 + 64);
  v11 = *(v10 + 16);
  result = _swiftEmptyArrayStorage;
  if (v11)
  {
    v55 = _swiftEmptyArrayStorage;

    sub_2BBE0(0, v11, 0);
    v54 = v55;
    v13 = v10 + 64;
    result = sub_30148();
    v14 = result;
    v15 = 0;
    v16 = *(v10 + 36);
    v44 = v8 + 32;
    v45 = v8;
    v39 = v10 + 72;
    v40 = v11;
    v41 = v16;
    v42 = v10 + 64;
    v43 = v10;
    while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(v10 + 32))
    {
      v18 = v14 >> 6;
      if ((*(v13 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_23;
      }

      if (v16 != *(v10 + 36))
      {
        goto LABEL_24;
      }

      v53 = v15;
      v19 = *(v10 + 48);
      v20 = sub_2EC08();
      v21 = *(v20 - 8);
      v22 = v47;
      (*(v21 + 16))(v47, v19 + *(v21 + 72) * v14, v20);
      v23 = *(*(v10 + 56) + 8 * v14);
      v24 = v48;
      (*(v21 + 32))(v48, v22, v20);
      *(v24 + *(v51 + 48)) = v23;
      sub_7404(v24, v49);

      v25 = v50;
      sub_7404(v24, v50);
      v26 = v52;
      sub_2F3A8();
      sub_5B38(v24, &qword_3CF38, &unk_30AC0);
      (*(v21 + 8))(v25, v20);
      v27 = v54;
      v55 = v54;
      v29 = v54[2];
      v28 = v54[3];
      if (v29 >= v28 >> 1)
      {
        sub_2BBE0((v28 > 1), v29 + 1, 1);
        v26 = v52;
        v27 = v55;
      }

      v27[2] = v29 + 1;
      v30 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      v54 = v27;
      result = (*(v45 + 32))(v27 + v30 + *(v45 + 72) * v29, v26, v46);
      v10 = v43;
      v17 = 1 << *(v43 + 32);
      if (v14 >= v17)
      {
        goto LABEL_25;
      }

      v13 = v42;
      v31 = *(v42 + 8 * v18);
      if ((v31 & (1 << v14)) == 0)
      {
        goto LABEL_26;
      }

      LODWORD(v16) = v41;
      if (v41 != *(v43 + 36))
      {
        goto LABEL_27;
      }

      v32 = v31 & (-2 << (v14 & 0x3F));
      if (v32)
      {
        v17 = __clz(__rbit64(v32)) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v33 = v18 << 6;
        v34 = v18 + 1;
        v35 = (v39 + 8 * v18);
        while (v34 < (v17 + 63) >> 6)
        {
          v37 = *v35++;
          v36 = v37;
          v33 += 64;
          ++v34;
          if (v37)
          {
            result = sub_7474(v14, v41, 0);
            v17 = __clz(__rbit64(v36)) + v33;
            goto LABEL_4;
          }
        }

        result = sub_7474(v14, v41, 0);
      }

LABEL_4:
      v15 = v53 + 1;
      v14 = v17;
      if (v53 + 1 == v40)
      {

        return v54;
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
  }

  return result;
}

void *MessagesContactGroundTruthGenerator.deinit()
{
  sub_5448((v0 + 16));

  return v0;
}

uint64_t MessagesContactGroundTruthGenerator.__deallocating_deinit()
{
  sub_5448((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_2927C()
{
  v0 = sub_2FF48();
  sub_55B0(v0, qword_3DB60);
  v1 = sub_4FD8(v0, qword_3DB60);
  if (qword_3CC08 != -1)
  {
    swift_once();
  }

  v2 = sub_4FD8(v0, qword_3E470);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_29344(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

char *sub_29378(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B98(&qword_3D408, &qword_30E60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_295EC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
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

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_29B74(a5, a6, a7, a8);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * (v16 >> 3);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  v17 = v14 + 32;
  v18 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v17 >= &v18[8 * v12])
    {
      memmove(v17, v18, 8 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v17, v18, 8 * v12);
  }

  return v14;
}

void *sub_29804(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

  if (v15)
  {
    sub_1B98(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B98(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_29974(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1B98(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
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

uint64_t sub_29B74(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1B98(a1, a2);
  if (swift_isClassType() && v6)
  {
    v7 = &qword_3CFD8;
    v8 = &qword_30E50;
  }

  else
  {
    v7 = a3;
    v8 = a4;
  }

  return sub_1B98(v7, v8);
}

uint64_t sub_29C08(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_29C64(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_29C64(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_29D30(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
    sub_2C724(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_5448(v11);
  return v7;
}

unint64_t sub_29D30(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_29E3C(a5, a6);
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
    result = sub_301E8();
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

void *sub_29E3C(uint64_t a1, unint64_t a2)
{
  v3 = sub_29E88(a1, a2);
  sub_29FB8(&off_39798);
  return v3;
}

void *sub_29E88(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_2A0A4(v5, 0);
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

  result = sub_301E8();
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
        v10 = sub_2FFD8();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_2A0A4(v10, 0);
        result = sub_301B8();
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

uint64_t sub_29FB8(uint64_t result)
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

  result = sub_2A118(result, v11, 1, v3);
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

void *sub_2A0A4(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1B98(&qword_3DD10, &qword_317B8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2A118(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B98(&qword_3DD10, &qword_317B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

_BYTE **sub_2A20C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_2A21C(uint64_t a1)
{
  sub_2F438();
  sub_2CDD0(&qword_3DC80, 255, &type metadata accessor for DonationCandidateType, &protocol conformance descriptor for DonationCandidateType);
  v2 = sub_2FF58();
  return sub_2A3CC(a1, v2, &type metadata accessor for DonationCandidateType, &qword_3DC88, &type metadata accessor for DonationCandidateType, &protocol conformance descriptor for DonationCandidateType);
}

unint64_t sub_2A2F4(uint64_t a1)
{
  sub_2EC08();
  sub_2CDD0(&qword_3CFB0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2 = sub_2FF58();
  return sub_2A3CC(a1, v2, &type metadata accessor for UUID, &qword_3CFB8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

unint64_t sub_2A3CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_2CDD0(v23, 255, v24, v25);
      v19 = sub_2FF78();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

uint64_t sub_2A584(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_2EC08();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1B98(&qword_3D748, &qword_31080);
  v40 = v4;
  result = sub_30258();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
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
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_2CDD0(&qword_3CFB0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = sub_2FF58();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
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

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}