uint64_t sub_100013EC4(uint64_t a1)
{
  *(*v1 + 280) = a1;

  return _swift_task_switch(sub_100013FC4, 0, 0);
}

uint64_t sub_100013FC4(uint64_t a1)
{
  v76 = v1;
  v2 = v1[35];
  if (!v2)
  {
    sub_100019C50();
    swift_allocError();
    v19 = 9;
LABEL_54:
    *v18 = v19;
    swift_willThrow();

    v73 = v1[1];

    return v73();
  }

  v3 = qword_100028248;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = v1[32];
  v5 = v1[33];
  v6 = v1[18];
  v74 = sub_10001D2B4();
  sub_1000047E8(v74, qword_10002A138);
  sub_100019D54(v6, v5);
  sub_100019D54(v6, v4);

  v7 = sub_10001D294();
  v8 = sub_10001D714();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v1[32];
  v11 = v1[33];
  if (v9)
  {
    v4 = swift_slowAlloc();
    v75[0] = swift_slowAlloc();
    *v4 = 134218498;
    v12 = *(v2 + 16);

    *(v4 + 4) = v12;

    *(v4 + 12) = 2080;
    v14 = *(v11 + 72);
    v13 = *(v11 + 80);

    sub_100019B20(v11);
    v15 = sub_100004CF4(v14, v13, v75);

    *(v4 + 14) = v15;
    *(v4 + 22) = 2080;
    v16 = v1[32];
    if (*(v10 + 96))
    {
      v17 = *(v16 + 88);
      v10 = *(v10 + 96);
    }

    else
    {
      v10 = 0xE300000000000000;
      v17 = 7104878;
    }

    sub_100019B20(v16);
    v20 = sub_100004CF4(v17, v10, v75);

    *(v4 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "Number of embeddings generated: %ld. Model Name: %s, model version: %s.", v4, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    swift_bridgeObjectRelease_n();

    sub_100019B20(v10);
    sub_100019B20(v11);
  }

  v21 = v1[35];
  v22 = v1[18];
  if (*(v2 + 16) < *(v22 + 48))
  {
    if (qword_100028248 != -1)
    {
      swift_once();
      v22 = v1[18];
    }

    v23 = v1[29];
    sub_1000047E8(v74, qword_10002A138);
    sub_100019D54(v22, v23);
    v24 = sub_10001D294();
    v25 = sub_10001D734();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = v26;
      *v26 = 134218240;
      if (v21)
      {
        v28 = *(v21 + 16);
      }

      else
      {
        v28 = 0;
      }

      v70 = v1[29];
      *(v26 + 4) = v28;
      *(v26 + 12) = 2048;
      v71 = v1;
      v72 = *(v70 + 48);
      sub_100019B20(v70);
      *(v27 + 14) = v72;
      v1 = v71;
      _os_log_impl(&_mh_execute_header, v24, v25, "Number of data %ld less than the threshold %lu", v27, 0x16u);
    }

    else
    {
      sub_100019B20(v1[29]);
    }

    sub_100019C50();
    swift_allocError();
    v19 = 2;
    goto LABEL_54;
  }

  v29 = qword_100028248;

  if (v29 != -1)
  {
    swift_once();
  }

  sub_1000047E8(v74, qword_10002A138);

  v30 = sub_10001D294();
  v31 = sub_10001D724();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v75[0] = v33;
    *v32 = 134218242;
    *(v32 + 4) = *(v2 + 16);

    *(v32 + 12) = 2080;
    v34 = sub_10001D684();
    v10 = v35;
    v4 = v21;
    v36 = sub_100004CF4(v34, v35, v75);

    *(v32 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v30, v31, "Embeddings data (count: %ld: %s.", v32, 0x16u);
    sub_100005490(v33);
  }

  else
  {
  }

  v37 = *(v1[18] + 56);
  if (v37 < 0)
  {
    __break(1u);
    goto LABEL_58;
  }

  v30 = sub_10000C588(v37, v2);
  if (v40)
  {
    v10 = v1;
    v31 = v40;
    v4 = v39;
    v1 = v38;
    sub_10001D8F4();
    swift_unknownObjectRetain_n();
    v43 = swift_dynamicCastClass();
    if (!v43)
    {
      swift_unknownObjectRelease();
      v43 = _swiftEmptyArrayStorage;
    }

    v44 = v43[2];

    if (__OFSUB__(v31 >> 1, v4))
    {
      goto LABEL_59;
    }

    if (v44 != (v31 >> 1) - v4)
    {
      goto LABEL_60;
    }

    v42 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v1 = v10;
    if (v42)
    {
      goto LABEL_33;
    }

    v42 = _swiftEmptyArrayStorage;
    goto LABEL_32;
  }

  while (1)
  {
    sub_10000D4C8(v30, v38, v39, v40);
    v42 = v41;
LABEL_32:
    swift_unknownObjectRelease();
LABEL_33:
    v10 = v1;
    v1 = v1[18];
    v75[0] = v42;
    v30 = v75;
    sub_10000E4F4();
    v45 = v1[8];
    if ((v45 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    swift_unknownObjectRelease();
    v40 = v31;
    v39 = v4;
    v38 = v1;
    v1 = v10;
  }

  v49 = sub_10000C610(v45, v75[0]);
  if ((v48 & 1) == 0)
  {
    goto LABEL_35;
  }

  v53 = v48;
  v54 = v47;
  v55 = v46;
  sub_10001D8F4();
  swift_unknownObjectRetain_n();
  v56 = swift_dynamicCastClass();
  if (!v56)
  {
    swift_unknownObjectRelease();
    v56 = _swiftEmptyArrayStorage;
  }

  v57 = v56[2];

  if (__OFSUB__(v53 >> 1, v54))
  {
    __break(1u);
    goto LABEL_62;
  }

  if (v57 != (v53 >> 1) - v54)
  {
LABEL_62:
    swift_unknownObjectRelease();
    v48 = v53;
    v47 = v54;
    v46 = v55;
LABEL_35:
    sub_10000D4C8(v49, v46, v47, v48);
    v51 = v50;
    v52 = v10;
LABEL_42:
    swift_unknownObjectRelease();
    goto LABEL_43;
  }

  v51 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v52 = v10;
  if (!v51)
  {
    v51 = _swiftEmptyArrayStorage;
    goto LABEL_42;
  }

LABEL_43:

  v58 = sub_10001D294();
  v59 = sub_10001D714();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 134217984;
    *(v60 + 4) = v51[2];

    _os_log_impl(&_mh_execute_header, v58, v59, "Number of sampled embeddings: %ld.", v60, 0xCu);
  }

  else
  {
  }

  v61 = sub_10001D294();
  v62 = sub_10001D724();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v75[0] = v64;
    *v63 = 136315138;
    v65 = sub_10001D684();
    v67 = sub_100004CF4(v65, v66, v75);

    *(v63 + 4) = v67;
    _os_log_impl(&_mh_execute_header, v61, v62, "Sampled Embeddings data: %s\n", v63, 0xCu);
    sub_100005490(v64);
  }

  v68 = *(v52 + 8);

  return v68(v51);
}

uint64_t sub_1000149A0(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_10001D364();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_100014A6C, 0, 0);
}

uint64_t sub_100014A6C()
{
  v1 = v0;
  v2 = v0[2];
  v3 = _swiftEmptyArrayStorage;
  v4 = sub_100010B1C(_swiftEmptyArrayStorage);
  if (!v2)
  {
LABEL_35:
    sub_10000C6A4(v4);

    sub_10001D024();
    swift_allocObject();
    v54 = sub_10001D004();

    v55 = v1[1];

    return v55(v54);
  }

  v5 = v0[2];
  sub_10000210C(&qword_100028298, &qword_10001EA10);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10001DFC0;
  v7 = *(v5 + 16);
  *(v6 + 32) = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10000E208(v6, 0x617461645F6D756ELL, 0xEE0073746E696F70, isUniquelyReferenced_nonNull_native);
  v9 = v4;
  result = swift_allocObject();
  v11 = result;
  *(result + 16) = xmmword_10001DFC0;
  v62 = v0;
  if (!v7)
  {
    v21 = _swiftEmptyArrayStorage[2];
    if (v21)
    {
      goto LABEL_12;
    }

    v26 = 0.0;
LABEL_16:
    *(v11 + 32) = v26;
    v27 = swift_isUniquelyReferenced_nonNull_native();
    sub_10000E208(v11, 0x736761745F6D756ELL, 0xE800000000000000, v27);
    v28 = v9;
    v29 = swift_allocObject();
    v30 = v29;
    *(v29 + 16) = xmmword_10001DFC0;
    v1 = v0;
    if (v7)
    {
      v59 = v29;
      v61 = v9;
      v31 = v0[4];
      sub_10000D70C(0, v7, 0);
      v3 = _swiftEmptyArrayStorage;
      v34 = *(v31 + 16);
      v33 = v31 + 16;
      v32 = v34;
      v35 = v5 + ((*(v33 + 64) + 32) & ~*(v33 + 64));
      v36 = *(v33 + 56);
      do
      {
        v37 = v3;
        v38 = v62[5];
        v39 = v62[3];
        v32(v38, v35, v39);
        v40 = sub_10001D344();
        (*(v33 - 8))(v38, v39);
        if (v40)
        {

          v41 = 1.0;
        }

        else
        {
          v41 = 0.0;
        }

        v3 = v37;
        v63 = v37;
        v42 = v37[2];
        v43 = v3[3];
        v44 = v42 + 1;
        if (v42 >= v43 >> 1)
        {
          sub_10000D70C((v43 > 1), v42 + 1, 1);
          v3 = v63;
        }

        v3[2] = v44;
        *&v3[v42 + 4] = v41;
        v35 += v36;
        --v7;
      }

      while (v7);
      v28 = v61;
      v1 = v62;
      v30 = v59;
    }

    else
    {
      v44 = _swiftEmptyArrayStorage[2];
      if (!v44)
      {

        v52 = 0.0;
        goto LABEL_34;
      }
    }

    if (v44 > 3)
    {
      v45 = v44 & 0xFFFFFFFFFFFFFFFCLL;
      v47 = (v3 + 6);
      v46 = 0.0;
      v48 = v44 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v46 = v46 + *(v47 - 2) + *(v47 - 1) + *v47 + v47[1];
        v47 += 4;
        v48 -= 4;
      }

      while (v48);
      if (v44 == v45)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v45 = 0;
      v46 = 0.0;
    }

    v49 = v44 - v45;
    v50 = &v3[v45 + 4];
    do
    {
      v51 = *v50++;
      v46 = v46 + v51;
      --v49;
    }

    while (v49);
LABEL_33:

    v52 = v46;
LABEL_34:
    *(v30 + 32) = v52;
    v53 = swift_isUniquelyReferenced_nonNull_native();
    sub_10000E208(v30, 0xD000000000000013, 0x800000010001F290, v53);
    v4 = v28;
    goto LABEL_35;
  }

  v56 = result;
  v12 = v0[4];
  sub_10000D72C(0, v7, 0);
  v13 = *(v12 + 16);
  v12 += 16;
  v57 = v5;
  v14 = v5 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
  v58 = *(v12 + 56);
  v60 = v13;
  v15 = (v12 - 8);
  v16 = v7;
  do
  {
    v60(v0[6], v14, v0[3]);
    v17 = sub_10001D344();
    if (v17)
    {
      v18 = *(v17 + 16);
    }

    else
    {
      v18 = 0;
    }

    result = (*v15)(v0[6], v0[3]);
    v20 = _swiftEmptyArrayStorage[2];
    v19 = _swiftEmptyArrayStorage[3];
    v21 = v20 + 1;
    if (v20 >= v19 >> 1)
    {
      result = sub_10000D72C((v19 > 1), v20 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v21;
    _swiftEmptyArrayStorage[v20 + 4] = v18;
    v14 += v58;
    --v16;
  }

  while (v16);
  v3 = _swiftEmptyArrayStorage;
  v5 = v57;
  v9 = v4;
  v11 = v56;
LABEL_12:
  v22 = 0;
  v23 = 4;
  while (1)
  {
    v24 = _swiftEmptyArrayStorage[v23];
    v25 = __OFADD__(v22, v24);
    v22 += v24;
    if (v25)
    {
      break;
    }

    ++v23;
    if (!--v21)
    {

      v26 = v22;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100014FA8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_10001D6F4();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_10000E7AC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_100015040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_100015068, 0, 0);
}

uint64_t sub_100015068()
{
  if (qword_100028248 != -1)
  {
    swift_once();
  }

  v1 = sub_10001D2B4();
  v0[7] = sub_1000047E8(v1, qword_10002A138);
  v2 = sub_10001D294();
  v3 = sub_10001D714();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Getting, shuffling and sampling embeddings.", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1000151D4;
  v6 = v0[5];
  v7 = v0[6];
  v9 = v0[2];
  v8 = v0[3];

  return sub_100012C28(v9, v8, v6, v7);
}

uint64_t sub_1000151D4(uint64_t a1)
{
  v3 = *v2;
  v3[9] = a1;
  v3[10] = v1;

  if (v1)
  {
    v4 = v3[1];

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_100015308, 0, 0);
  }
}

void sub_100015308()
{
  v58 = v0;
  v1 = sub_10001D1B4();
  if (!v2)
  {

    v27 = sub_10001D294();
    v28 = sub_10001D734();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Model attachment not found.", v29, 2u);
    }

    v30 = sub_10001D294();
    v31 = sub_10001D724();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v57 = v33;
      *v32 = 136315138;
      sub_10001D1A4();
      sub_10001CED4();
      v34 = sub_10001D684();
      v36 = v35;

      v37 = sub_100004CF4(v34, v36, &v57);

      *(v32 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v30, v31, "Task attachments = %s.", v32, 0xCu);
      sub_100005490(v33);
    }

    sub_100019C50();
    swift_allocError();
    *v38 = 4;
    swift_willThrow();
    goto LABEL_24;
  }

  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 24);
  v6 = *(v5 + 32);

  v8 = sub_100014FA8(v7);

  v56 = v8;
  v9 = *(v5 + 16);
  v10 = *(v5 + 24);

  sub_10000E7AC(&v57, v9, v10);

  LODWORD(v5) = *(v5 + 128);
  v11 = sub_10001D294();
  v12 = sub_10001D714();
  v13 = os_log_type_enabled(v11, v12);
  if (v5 == 1)
  {
    if (v13)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Using Espresso MIL Trainer for Private Evolution.", v14, 2u);
    }

    v15 = *(v0 + 24);

    v16 = *(v15 + 40);
    if ((v16 & 0x8000000000000000) == 0)
    {
      v17 = *(v0 + 80);
      v18 = sub_100011A48(*(v0 + 72), v16, v3, v4, **(v0 + 24), *(*(v0 + 24) + 8), v56);

      if (!v17)
      {
        v19 = sub_10001D294();
        v20 = sub_10001D714();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&_mh_execute_header, v19, v20, "Extracting outputs for Private Evolution.", v21, 2u);
        }

        sub_10001243C(v18, v9, v10, v6);
        v23 = v22;

        v24 = sub_10001D294();
        v25 = sub_10001D714();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 134217984;
          *(v26 + 4) = *(v23 + 16);

          _os_log_impl(&_mh_execute_header, v24, v25, "Finishing plugin by returning %ld metrics and histogram.", v26, 0xCu);
        }

        else
        {
        }

        sub_10000C6A4(v23);

        sub_10001D024();
        swift_allocObject();
        v53 = sub_10001D004();
LABEL_33:
        v55 = *(v0 + 8);

        v55(v53);
        return;
      }

      goto LABEL_24;
    }

    __break(1u);
LABEL_37:
    __break(1u);
    return;
  }

  if (v13)
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Using CoreML Trainer for Private Evolution.", v39, 2u);
  }

  v40 = *(v0 + 24);

  v41 = *(v40 + 40);
  if (v41 < 0)
  {
    goto LABEL_37;
  }

  v42 = *(v0 + 80);
  v43 = sub_10000FE1C(*(v0 + 72), v41, v3, v4, **(v0 + 24), *(*(v0 + 24) + 8), v56);

  if (!v42)
  {

    v44 = sub_10001D294();
    v45 = sub_10001D714();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Extracting outputs for Private Evolution.", v46, 2u);
    }

    sub_100010DD4(v43, v9, v10, v6);
    v49 = v48;

    v50 = sub_10001D294();
    v51 = sub_10001D714();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 134217984;
      *(v52 + 4) = *(v49 + 16);

      _os_log_impl(&_mh_execute_header, v50, v51, "Finishing plugin by returning %ld metrics and histogram.", v52, 0xCu);
    }

    else
    {
    }

    sub_10000C6A4(v49);

    sub_10001D024();
    swift_allocObject();
    v54 = sub_10001D004();

    v53 = v54;
    goto LABEL_33;
  }

LABEL_24:
  v47 = *(v0 + 8);

  v47();
}

uint64_t sub_100015A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[38] = a4;
  v5[39] = a5;
  v5[36] = a2;
  v5[37] = a3;
  v5[35] = a1;
  v6 = sub_10001D364();
  v5[40] = v6;
  v5[41] = *(v6 - 8);
  v5[42] = swift_task_alloc();
  sub_10000210C(&qword_1000286D0, &qword_10001EA40);
  v5[43] = swift_task_alloc();
  v7 = sub_10001D4D4();
  v5[44] = v7;
  v5[45] = *(v7 - 8);
  v5[46] = swift_task_alloc();

  return _swift_task_switch(sub_100015BC8, 0, 0);
}

uint64_t sub_100015BC8()
{
  v83 = v0;
  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[43];
  v4 = v0[36];
  v5 = type metadata accessor for PrivateEvolutionPluginArgs(0);
  sub_100019CA4(v4 + *(v5 + 84), v3, &qword_1000286D0, &qword_10001EA40);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000064C0(v0[43], &qword_1000286D0, &qword_10001EA40);
    if (qword_100028248 != -1)
    {
      swift_once();
    }

    v6 = sub_10001D2B4();
    sub_1000047E8(v6, qword_10002A138);
    v7 = sub_10001D294();
    v8 = sub_10001D734();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Cannot find metadataEncodingParameters in recipe.", v9, 2u);
    }

    sub_100019C50();
    swift_allocError();
    *v10 = 12;
    swift_willThrow();
LABEL_19:

    v26 = v0[1];

    return v26();
  }

  v11 = v0[35];
  (*(v0[45] + 32))(v0[46], v0[43], v0[44]);
  if (!v11)
  {
    if (qword_100028248 != -1)
    {
      swift_once();
    }

    v18 = sub_10001D2B4();
    sub_1000047E8(v18, qword_10002A138);
    v19 = sub_10001D294();
    v20 = sub_10001D734();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "No text data extracted for metadata encoding.", v21, 2u);
    }

    v23 = v0[45];
    v22 = v0[46];
    v24 = v0[44];

    sub_100019C50();
    swift_allocError();
    *v25 = 8;
    swift_willThrow();
    (*(v23 + 8))(v22, v24);
    goto LABEL_19;
  }

  v12 = v0[35];
  sub_10000210C(&qword_1000286E0, &qword_10001EA48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10001DFC0;
  strcpy((inited + 32), "num_datapoints");
  *(inited + 47) = -18;
  sub_10000210C(&qword_100028298, &qword_10001EA10);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10001DFC0;
  v15 = v12[2];
  *(v14 + 32) = v15;
  *(inited + 48) = v14;
  v0[47] = sub_100010B1C(inited);
  swift_setDeallocating();
  sub_1000064C0(inited + 32, &qword_1000286E8, &qword_10001EA50);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_10000E798(v12);
  }

  v16 = 0;
  v0[48] = v12;
  while (v15 != v16)
  {
    if (v16 >= v12[2])
    {
      __break(1u);
      goto LABEL_45;
    }

    v17 = v16 + 1;
    sub_10001D334();
    v16 = v17;
  }

  v0[49] = sub_10001D4C4();
  v0[50] = v28;
  if (v28)
  {
    v29 = swift_task_alloc();
    v0[51] = v29;
    *v29 = v0;
    v29[1] = sub_100016790;
    v30 = v0[38];
    v31 = v0[39];
    v32 = v0[36];
    v33 = v0[37];
    v34 = v0[35];

    return sub_100015040(v34, v32, v33, v30, v31);
  }

  sub_10001D4A4();
  v35 = v0[48];
  v36 = *(v35 + 16);
  if (v36)
  {
    v37 = v0[41];
    v82[0] = _swiftEmptyArrayStorage;
    sub_10000D74C(0, v36, 0);
    v38 = _swiftEmptyArrayStorage;
    v39 = *(v37 + 16);
    v37 += 16;
    v40 = v35 + ((*(v37 + 64) + 32) & ~*(v37 + 64));
    v80 = *(v37 + 56);
    v81 = v39;
    v41 = (v37 - 8);
    do
    {
      v42 = v0[42];
      v43 = v0[40];
      v81(v42, v40, v43);
      v44 = sub_10001D324();
      (*v41)(v42, v43);
      v82[0] = v38;
      v46 = v38[2];
      v45 = v38[3];
      if (v46 >= v45 >> 1)
      {
        sub_10000D74C((v45 > 1), v46 + 1, 1);
        v38 = v82[0];
      }

      v38[2] = v46 + 1;
      v38[v46 + 4] = v44;
      v40 += v80;
      --v36;
    }

    while (v36);
  }

  else
  {

    v38 = _swiftEmptyArrayStorage;
  }

  if (qword_100028248 != -1)
  {
    swift_once();
  }

  v47 = sub_10001D2B4();
  sub_1000047E8(v47, qword_10002A138);

  v48 = sub_10001D294();
  v49 = sub_10001D724();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v82[0] = v51;
    *v50 = 136315138;
    sub_10000210C(&qword_100028708, &qword_10001EA70);
    v52 = sub_10001D684();
    v54 = sub_100004CF4(v52, v53, v82);

    *(v50 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v48, v49, "Encoding metadata with %s", v50, 0xCu);
    sub_100005490(v51);
  }

  sub_10001D4B4();
  sub_10000210C(&qword_1000286F0, &qword_10001EA58);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_10001DFC0;
  *(v55 + 56) = sub_10000210C(&qword_1000286F8, &qword_10001EA60);
  *(v55 + 32) = v38;
  sub_10001D2D4();

  if (!v0[28])
  {
LABEL_45:

    sub_1000064C0((v0 + 25), &qword_100028700, &qword_10001EA68);
LABEL_47:
    v73 = sub_10001D294();
    v74 = sub_10001D734();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&_mh_execute_header, v73, v74, "Running metadata encoding Morpheus program failed.", v75, 2u);
    }

    v76 = v0[45];
    v77 = v0[46];
    v78 = v0[44];

    sub_100019C50();
    swift_allocError();
    *v79 = 13;
    swift_willThrow();

    (*(v76 + 8))(v77, v78);
    goto LABEL_19;
  }

  sub_10000210C(&qword_100028350, qword_10001E278);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_47;
  }

  v56 = v0[33];

  v57 = sub_10001D294();
  v58 = sub_10001D724();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v82[0] = v60;
    *v59 = 136315138;
    v61 = sub_10001D684();
    v63 = sub_100004CF4(v61, v62, v82);

    *(v59 + 4) = v63;
    _os_log_impl(&_mh_execute_header, v57, v58, "Encoded metadata: %s", v59, 0xCu);
    sub_100005490(v60);
  }

  v65 = v0[46];
  v64 = v0[47];
  v67 = v0[44];
  v66 = v0[45];
  v68 = sub_10000C904(v56);
  v70 = v69;

  sub_10000C6A4(v64);

  sub_10001D024();
  swift_allocObject();
  sub_1000068E4(v68, v70);
  v71 = sub_10001D004();

  sub_100006520(v68, v70);
  (*(v66 + 8))(v65, v67);

  v72 = v0[1];

  return v72(v71);
}

uint64_t sub_100016790(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 416) = a1;
  *(v3 + 424) = v1;

  if (v1)
  {

    v4 = sub_100017404;
  }

  else
  {
    v4 = sub_1000168C8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000168C8()
{
  v80 = v0;
  v2 = sub_10001D014();
  if (!*(v2 + 16))
  {
    goto LABEL_14;
  }

  v3 = sub_10000DE30(*(v0 + 392), *(v0 + 400));
  if ((v4 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_1000054DC(*(v2 + 56) + 32 * v3, v0 + 232);

  sub_10000210C(&qword_100028350, qword_10001E278);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_15;
  }

  v5 = *(v0 + 272);
  v6 = *(v5 + 16);
  if (v6 != *(*(v0 + 384) + 16))
  {
LABEL_14:

LABEL_15:

    if (qword_100028248 != -1)
    {
      swift_once();
    }

    v22 = sub_10001D2B4();
    sub_1000047E8(v22, qword_10002A138);
    v23 = sub_10001D294();
    v24 = sub_10001D734();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to get nearest neighbor distance from PE.", v25, 2u);
    }

    v27 = *(v0 + 360);
    v26 = *(v0 + 368);
    v28 = *(v0 + 352);

    sub_100019C50();
    swift_allocError();
    *v29 = 14;
    swift_willThrow();

    (*(v27 + 8))(v26, v28);
    goto LABEL_20;
  }

  if (v6)
  {
    v7 = 0;
    v8 = *(v0 + 424);
    v9 = &qword_100028710;
    v77 = *(v0 + 272);
    while (1)
    {
      v10 = *(v0 + 400);
      *(v0 + 48) = *(v0 + 392);
      *(v0 + 56) = v10;
      *(v0 + 88) = &type metadata for Float;
      if (v7 >= *(v5 + 16))
      {
        break;
      }

      *(v0 + 64) = *(v5 + 4 * v7 + 32);
      sub_10000210C(&qword_1000286C8, &unk_10001EA30);
      v11 = sub_10001D7F4();
      v12 = v9;
      sub_100019CA4(v0 + 48, v0 + 152, v9, &qword_10001EA78);
      v1 = *(v0 + 152);
      v13 = *(v0 + 160);

      v14 = sub_10000DE30(v1, v13);
      if (v15)
      {
        goto LABEL_54;
      }

      v11[(v14 >> 6) + 8] |= 1 << v14;
      v16 = (v11[6] + 16 * v14);
      *v16 = v1;
      v16[1] = v13;
      sub_100019C40((v0 + 168), (v11[7] + 32 * v14));
      v17 = v11[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_55;
      }

      v20 = *(v0 + 384);
      v11[2] = v19;

      v9 = v12;
      sub_1000064C0(v0 + 48, v12, &qword_10001EA78);
      if (v7 >= *(v20 + 16))
      {
        goto LABEL_56;
      }

      v21._rawValue = v11;
      sub_10001D314(v21, 0);
      if (v8)
      {
        (*(*(v0 + 360) + 8))(*(v0 + 368), *(v0 + 352));

        goto LABEL_40;
      }

      ++v7;

      v1 = 0;
      v5 = v77;
      if (v6 == v7)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    swift_once();
    goto LABEL_37;
  }

  v1 = *(v0 + 424);
LABEL_26:

  sub_10001D4A4();
  v32 = *(v0 + 384);
  if (v1)
  {
    (*(*(v0 + 360) + 8))(*(v0 + 368), *(v0 + 352));

LABEL_40:

    goto LABEL_20;
  }

  v33 = *(v32 + 16);
  if (v33)
  {
    v34 = *(v0 + 328);
    v79[0] = _swiftEmptyArrayStorage;
    sub_10000D74C(0, v33, 0);
    v1 = _swiftEmptyArrayStorage;
    v35 = *(v34 + 16);
    v34 += 16;
    v36 = v32 + ((*(v34 + 64) + 32) & ~*(v34 + 64));
    v76 = *(v34 + 56);
    v78 = v35;
    v37 = (v34 - 8);
    do
    {
      v38 = *(v0 + 336);
      v39 = *(v0 + 320);
      v78(v38, v36, v39);
      v40 = sub_10001D324();
      (*v37)(v38, v39);
      v79[0] = v1;
      v42 = v1[2];
      v41 = v1[3];
      if (v42 >= v41 >> 1)
      {
        sub_10000D74C((v41 > 1), v42 + 1, 1);
        v1 = v79[0];
      }

      v1[2] = v42 + 1;
      v1[v42 + 4] = v40;
      v36 += v76;
      --v33;
    }

    while (v33);
  }

  else
  {

    v1 = _swiftEmptyArrayStorage;
  }

  if (qword_100028248 != -1)
  {
    goto LABEL_57;
  }

LABEL_37:
  v43 = sub_10001D2B4();
  sub_1000047E8(v43, qword_10002A138);

  v44 = sub_10001D294();
  v45 = sub_10001D724();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v79[0] = v47;
    *v46 = 136315138;
    sub_10000210C(&qword_100028708, &qword_10001EA70);
    v48 = sub_10001D684();
    v50 = sub_100004CF4(v48, v49, v79);

    *(v46 + 4) = v50;
    _os_log_impl(&_mh_execute_header, v44, v45, "Encoding metadata with %s", v46, 0xCu);
    sub_100005490(v47);
  }

  sub_10001D4B4();
  sub_10000210C(&qword_1000286F0, &qword_10001EA58);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_10001DFC0;
  *(v51 + 56) = sub_10000210C(&qword_1000286F8, &qword_10001EA60);
  *(v51 + 32) = v1;
  sub_10001D2D4();

  if (!*(v0 + 224))
  {

    sub_1000064C0(v0 + 200, &qword_100028700, &qword_10001EA68);
LABEL_50:
    v69 = sub_10001D294();
    v70 = sub_10001D734();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&_mh_execute_header, v69, v70, "Running metadata encoding Morpheus program failed.", v71, 2u);
    }

    v72 = *(v0 + 360);
    v73 = *(v0 + 368);
    v74 = *(v0 + 352);

    sub_100019C50();
    swift_allocError();
    *v75 = 13;
    swift_willThrow();

    (*(v72 + 8))(v73, v74);
LABEL_20:

    v30 = *(v0 + 8);

    return v30();
  }

  sub_10000210C(&qword_100028350, qword_10001E278);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_50;
  }

  v52 = *(v0 + 264);

  v53 = sub_10001D294();
  v54 = sub_10001D724();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v79[0] = v56;
    *v55 = 136315138;
    v57 = sub_10001D684();
    v59 = sub_100004CF4(v57, v58, v79);

    *(v55 + 4) = v59;
    _os_log_impl(&_mh_execute_header, v53, v54, "Encoded metadata: %s", v55, 0xCu);
    sub_100005490(v56);
  }

  v61 = *(v0 + 368);
  v60 = *(v0 + 376);
  v63 = *(v0 + 352);
  v62 = *(v0 + 360);
  v64 = sub_10000C904(v52);
  v66 = v65;

  sub_10000C6A4(v60);

  sub_10001D024();
  swift_allocObject();
  sub_1000068E4(v64, v66);
  v67 = sub_10001D004();

  sub_100006520(v64, v66);
  (*(v62 + 8))(v61, v63);

  v68 = *(v0 + 8);

  return v68(v67);
}

uint64_t sub_100017404()
{
  (*(v0[45] + 8))(v0[46], v0[44]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10001749C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a3;
  v4[19] = v3;
  v4[16] = a1;
  v4[17] = a2;
  v5 = sub_10001CF54();
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();
  v6 = sub_10001D3B4();
  v4[23] = v6;
  v4[24] = *(v6 - 8);
  v4[25] = swift_task_alloc();
  v7 = sub_10001D464();
  v4[26] = v7;
  v4[27] = *(v7 - 8);
  v4[28] = swift_task_alloc();
  v8 = sub_10001D454();
  v4[29] = v8;
  v4[30] = *(v8 - 8);
  v4[31] = swift_task_alloc();
  sub_10000210C(&qword_100028688, &qword_10001E9D8);
  v4[32] = swift_task_alloc();
  v9 = sub_10001D424();
  v4[33] = v9;
  v4[34] = *(v9 - 8);
  v4[35] = swift_task_alloc();
  sub_10000210C(&qword_100028690, &qword_10001E9E0);
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  sub_10000210C(&qword_100028698, &qword_10001E9E8);
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  sub_10000210C(&qword_1000286A0, &qword_10001E9F0);
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = type metadata accessor for PrivateEvolutionPluginArgs(0);
  v4[45] = swift_task_alloc();

  return _swift_task_switch(sub_10001781C, 0, 0);
}

uint64_t sub_10001781C()
{
  v1 = *(v0 + 360);

  sub_10001A190(v1);
  v5 = *(v0 + 352);
  v4 = *(v0 + 360);
  v6 = *(v0 + 328);
  v7 = *(v0 + 296);
  v8 = *(v0 + 240);
  v59 = *(v0 + 232);
  v9 = *(v0 + 160);
  v10 = *(v0 + 168);
  *(v0 + 368) = sub_10000C9CC(v4);
  *(v0 + 376) = v11;
  sub_10001D394();
  v12 = v9;
  v13 = *(v10 + 56);
  v13(v6, 1, 1, v12);
  v14 = *(v4 + *(v5 + 76));
  v15 = *(v5 + 68);
  *(v0 + 512) = v15;
  sub_100019CA4(v4 + v15, v7, &qword_100028690, &qword_10001E9E0);
  v16 = *(v8 + 48);
  *(v0 + 384) = v16;
  *(v0 + 392) = (v8 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v17 = v16(v7, 1, v59);
  v18 = *(v0 + 296);
  if (v17 == 1)
  {
    sub_1000064C0(*(v0 + 296), &qword_100028690, &qword_10001E9E0);
    if (v14)
    {
      goto LABEL_11;
    }

LABEL_10:
    v22 = *(v0 + 320);
    v23 = *(v0 + 160);
LABEL_13:
    v13(v22, 1, 1, v23);
    goto LABEL_15;
  }

  v19 = *(v0 + 232);
  v20 = *(v0 + 240);
  v21 = sub_10001D434();
  (*(v20 + 8))(v18, v19);
  if ((v21 & 1) == 0 && (v14 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_11:
  v24 = *(v0 + 336);
  v25 = *(v0 + 184);
  v26 = *(v0 + 192);
  sub_100019CA4(*(v0 + 344), v24, &qword_1000286A0, &qword_10001E9F0);
  v27 = (*(v26 + 48))(v24, 1, v25);
  v28 = *(v0 + 336);
  v29 = *(v0 + 320);
  if (v27 == 1)
  {
    v30 = *(v0 + 160);
    sub_1000064C0(*(v0 + 336), &qword_1000286A0, &qword_10001E9F0);
    v22 = v29;
    v23 = v30;
    goto LABEL_13;
  }

  v31 = *(v0 + 184);
  v32 = *(v0 + 192);
  sub_10001D374();
  (*(v32 + 8))(v28, v31);
LABEL_15:
  v33 = *(v0 + 264);
  v34 = *(v0 + 272);
  v35 = *(v0 + 256);
  sub_100019CA4(*(v0 + 360) + *(*(v0 + 352) + 64), v35, &qword_100028688, &qword_10001E9D8);
  if ((*(v34 + 48))(v35, 1, v33) == 1)
  {
    sub_1000064C0(*(v0 + 256), &qword_100028688, &qword_10001E9D8);
    *(v0 + 424) = 0;
    v36 = *(v0 + 384);
    v37 = *(v0 + 288);
    v38 = *(v0 + 232);
    sub_100019CA4(*(v0 + 360) + *(v0 + 512), v37, &qword_100028690, &qword_10001E9E0);
    if (v36(v37, 1, v38) == 1)
    {
      sub_1000064C0(*(v0 + 288), &qword_100028690, &qword_10001E9E0);
      *(v0 + 456) = 0;
      v39 = *(*(v0 + 360) + *(*(v0 + 352) + 72));
      if (v39 > 1)
      {
        if (v39 == 2)
        {
          v60 = sub_100015A6C;
          v53 = swift_task_alloc();
          *(v0 + 496) = v53;
          *v53 = v0;
          v54 = sub_1000192F8;
LABEL_29:
          v53[1] = v54;
          v55 = *(v0 + 360);
          v56 = *(v0 + 136);
          v57 = *(v0 + 144);
          v58 = *(v0 + 128);

          return v60(0, v55, v58, v56, v57);
        }
      }

      else if (*(*(v0 + 360) + *(*(v0 + 352) + 72)))
      {
        v40 = swift_task_alloc();
        *(v0 + 464) = v40;
        *v40 = v0;
        v40[1] = sub_100018938;

        return sub_1000149A0(0);
      }

      v60 = sub_100015040;
      v53 = swift_task_alloc();
      *(v0 + 480) = v53;
      *v53 = v0;
      v54 = sub_100018E18;
      goto LABEL_29;
    }

    (*(*(v0 + 240) + 32))(*(v0 + 248), *(v0 + 288), *(v0 + 232));
    v45 = *(v0 + 360);
    v46 = *(v0 + 344);
    v48 = *(v0 + 320);
    v47 = *(v0 + 328);
    v49 = *(v0 + 240);
    v50 = *(v0 + 248);
    v51 = *(v0 + 232);

    sub_100019B7C();
    swift_allocError();
    *v52 = 4;
    swift_willThrow();
    (*(v49 + 8))(v50, v51);
    sub_1000064C0(v48, &qword_100028698, &qword_10001E9E8);
    sub_1000064C0(v47, &qword_100028698, &qword_10001E9E8);
    sub_1000064C0(v46, &qword_1000286A0, &qword_10001E9F0);
    sub_100019B20(v45);

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    (*(*(v0 + 272) + 32))(*(v0 + 280), *(v0 + 256), *(v0 + 264));
    v41 = swift_task_alloc();
    *(v0 + 400) = v41;
    *v41 = v0;
    v41[1] = sub_100017F00;
    v42 = *(v0 + 312);
    v43 = *(v0 + 320);
    v44 = *(v0 + 280);

    return sub_10000B76C(v42, v44, v43);
  }
}

uint64_t sub_100017F00(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 408) = v1;

  if (v1)
  {

    v5 = sub_1000197D8;
  }

  else
  {
    *(v4 + 416) = a1;
    v5 = sub_100018030;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100018030()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 328);
  v3 = *(v0 + 312);
  (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
  sub_1000064C0(v2, &qword_100028698, &qword_10001E9E8);
  sub_100019BD0(v3, v2);
  v4 = *(v0 + 408);
  *(v0 + 424) = v1;
  v5 = *(v0 + 384);
  v6 = *(v0 + 288);
  v7 = *(v0 + 232);
  sub_100019CA4(*(v0 + 360) + *(v0 + 512), v6, &qword_100028690, &qword_10001E9E0);
  if (v5(v6, 1, v7) == 1)
  {
    sub_1000064C0(*(v0 + 288), &qword_100028690, &qword_10001E9E0);
    *(v0 + 456) = v1;
    v8 = *(*(v0 + 360) + *(*(v0 + 352) + 72));
    if (v8 > 1)
    {
      if (v8 == 2)
      {
        v41 = sub_100015A6C;
        v21 = swift_task_alloc();
        *(v0 + 496) = v21;
        *v21 = v0;
        v22 = sub_1000192F8;
LABEL_13:
        v21[1] = v22;
        v23 = *(v0 + 360);
        v24 = *(v0 + 136);
        v25 = *(v0 + 144);
        v26 = *(v0 + 128);

        return v41(v1, v23, v26, v24, v25);
      }
    }

    else if (*(*(v0 + 360) + *(*(v0 + 352) + 72)))
    {
      v9 = swift_task_alloc();
      *(v0 + 464) = v9;
      *v9 = v0;
      v9[1] = sub_100018938;

      return sub_1000149A0(v1);
    }

    v41 = sub_100015040;
    v21 = swift_task_alloc();
    *(v0 + 480) = v21;
    *v21 = v0;
    v22 = sub_100018E18;
    goto LABEL_13;
  }

  (*(*(v0 + 240) + 32))(*(v0 + 248), *(v0 + 288), *(v0 + 232));
  if (!v1)
  {
    v27 = *(v0 + 360);
    v28 = *(v0 + 344);
    v30 = *(v0 + 320);
    v29 = *(v0 + 328);
    v31 = *(v0 + 240);
    v32 = *(v0 + 248);
    v33 = *(v0 + 232);

    sub_100019B7C();
    swift_allocError();
    *v34 = 4;
    swift_willThrow();
    (*(v31 + 8))(v32, v33);
    sub_1000064C0(v30, &qword_100028698, &qword_10001E9E8);
    sub_1000064C0(v29, &qword_100028698, &qword_10001E9E8);
    sub_1000064C0(v28, &qword_1000286A0, &qword_10001E9F0);
    v20 = v27;
    goto LABEL_17;
  }

  v11 = *(v0 + 224);
  v12 = *(*(v0 + 152) + OBJC_IVAR____TtC22PrivateEvolutionPlugin28PrivateEvolutionPluginRunner_chatPromptResponderFactory);
  sub_10001D444();
  v12(v11);
  if (v4)
  {
    v39 = *(v0 + 344);
    v40 = *(v0 + 360);
    v13 = *(v0 + 320);
    v38 = *(v0 + 328);
    v14 = *(v0 + 240);
    v15 = *(v0 + 248);
    v16 = *(v0 + 224);
    v17 = *(v0 + 232);
    v18 = *(v0 + 208);
    v19 = *(v0 + 216);

    (*(v19 + 8))(v16, v18);
    (*(v14 + 8))(v15, v17);
    sub_1000064C0(v13, &qword_100028698, &qword_10001E9E8);
    sub_1000064C0(v38, &qword_100028698, &qword_10001E9E8);
    sub_1000064C0(v39, &qword_1000286A0, &qword_10001E9F0);
    v20 = v40;
LABEL_17:
    sub_100019B20(v20);

    v35 = *(v0 + 8);

    return v35();
  }

  (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
  v36 = swift_task_alloc();
  *(v0 + 432) = v36;
  *v36 = v0;
  v36[1] = sub_100018604;
  v37 = *(v0 + 248);

  return getTags(for:taggingArgs:chatPromptResponder:)(v1, v37, v0 + 16);
}

uint64_t sub_100018604(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 440) = v1;

  if (v1)
  {

    v5 = sub_100019974;
  }

  else
  {
    *(v4 + 448) = a1;
    v5 = sub_10001875C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10001875C()
{
  v1 = v0[56];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  sub_100005490(v0 + 2);
  (*(v3 + 8))(v2, v4);
  v0[57] = v1;
  v5 = *(v0[45] + *(v0[44] + 72));
  if (v5 <= 1)
  {
    if (*(v0[45] + *(v0[44] + 72)))
    {
      v6 = swift_task_alloc();
      v0[58] = v6;
      *v6 = v0;
      v6[1] = sub_100018938;

      return sub_1000149A0(v1);
    }

    goto LABEL_8;
  }

  if (v5 != 2)
  {
LABEL_8:
    v14 = sub_100015040;
    v8 = swift_task_alloc();
    v0[60] = v8;
    *v8 = v0;
    v9 = sub_100018E18;
    goto LABEL_9;
  }

  v14 = sub_100015A6C;
  v8 = swift_task_alloc();
  v0[62] = v8;
  *v8 = v0;
  v9 = sub_1000192F8;
LABEL_9:
  v8[1] = v9;
  v10 = v0[45];
  v11 = v0[17];
  v12 = v0[18];
  v13 = v0[16];

  return v14(v1, v10, v13, v11, v12);
}

uint64_t sub_100018938(uint64_t a1)
{
  v3 = *v2;
  v3[7] = v2;
  v3[8] = a1;
  v3[9] = v1;
  v3[59] = v1;

  if (v1)
  {

    v4 = sub_100018C98;
  }

  else
  {
    v4 = sub_100018A88;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100018A88()
{
  v1 = v0[8];
  v10 = v0[43];
  v11 = v0[45];
  v2 = v0[41];
  v9 = v0[40];
  v3 = v0[38];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];

  sub_10001CF44();
  sub_100019CA4(v2, v3, &qword_100028698, &qword_10001E9E8);
  sub_10001D384();
  sub_10001D3A4();

  (*(v5 + 8))(v4, v6);
  sub_1000064C0(v9, &qword_100028698, &qword_10001E9E8);
  sub_1000064C0(v2, &qword_100028698, &qword_10001E9E8);
  sub_1000064C0(v10, &qword_1000286A0, &qword_10001E9F0);
  sub_100019B20(v11);

  v7 = v0[1];

  return v7(v1);
}

uint64_t sub_100018C98()
{
  v1 = v0[45];
  v2 = v0[43];
  v3 = v0[41];
  sub_1000064C0(v0[40], &qword_100028698, &qword_10001E9E8);
  sub_1000064C0(v3, &qword_100028698, &qword_10001E9E8);
  sub_1000064C0(v2, &qword_1000286A0, &qword_10001E9F0);
  sub_100019B20(v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100018E18(uint64_t a1)
{
  v3 = *v2;
  v3[10] = v2;
  v3[11] = a1;
  v3[12] = v1;
  v3[61] = v1;

  if (v1)
  {

    v4 = sub_100019178;
  }

  else
  {
    v4 = sub_100018F68;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100018F68()
{
  v1 = v0[11];
  v10 = v0[43];
  v11 = v0[45];
  v2 = v0[41];
  v9 = v0[40];
  v3 = v0[38];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];

  sub_10001CF44();
  sub_100019CA4(v2, v3, &qword_100028698, &qword_10001E9E8);
  sub_10001D384();
  sub_10001D3A4();

  (*(v5 + 8))(v4, v6);
  sub_1000064C0(v9, &qword_100028698, &qword_10001E9E8);
  sub_1000064C0(v2, &qword_100028698, &qword_10001E9E8);
  sub_1000064C0(v10, &qword_1000286A0, &qword_10001E9F0);
  sub_100019B20(v11);

  v7 = v0[1];

  return v7(v1);
}

uint64_t sub_100019178()
{
  v1 = v0[45];
  v2 = v0[43];
  v3 = v0[41];
  sub_1000064C0(v0[40], &qword_100028698, &qword_10001E9E8);
  sub_1000064C0(v3, &qword_100028698, &qword_10001E9E8);
  sub_1000064C0(v2, &qword_1000286A0, &qword_10001E9F0);
  sub_100019B20(v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000192F8(uint64_t a1)
{
  v3 = *v2;
  v3[13] = v2;
  v3[14] = a1;
  v3[15] = v1;
  v3[63] = v1;

  if (v1)
  {

    v4 = sub_100019658;
  }

  else
  {
    v4 = sub_100019448;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100019448()
{
  v1 = v0[14];
  v10 = v0[43];
  v11 = v0[45];
  v2 = v0[41];
  v9 = v0[40];
  v3 = v0[38];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];

  sub_10001CF44();
  sub_100019CA4(v2, v3, &qword_100028698, &qword_10001E9E8);
  sub_10001D384();
  sub_10001D3A4();

  (*(v5 + 8))(v4, v6);
  sub_1000064C0(v9, &qword_100028698, &qword_10001E9E8);
  sub_1000064C0(v2, &qword_100028698, &qword_10001E9E8);
  sub_1000064C0(v10, &qword_1000286A0, &qword_10001E9F0);
  sub_100019B20(v11);

  v7 = v0[1];

  return v7(v1);
}

uint64_t sub_100019658()
{
  v1 = v0[45];
  v2 = v0[43];
  v3 = v0[41];
  sub_1000064C0(v0[40], &qword_100028698, &qword_10001E9E8);
  sub_1000064C0(v3, &qword_100028698, &qword_10001E9E8);
  sub_1000064C0(v2, &qword_1000286A0, &qword_10001E9F0);
  sub_100019B20(v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000197D8()
{
  v1 = v0[45];
  v2 = v0[43];
  v4 = v0[40];
  v3 = v0[41];
  (*(v0[34] + 8))(v0[35], v0[33]);
  sub_1000064C0(v4, &qword_100028698, &qword_10001E9E8);
  sub_1000064C0(v3, &qword_100028698, &qword_10001E9E8);
  sub_1000064C0(v2, &qword_1000286A0, &qword_10001E9F0);
  sub_100019B20(v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100019974()
{
  v1 = v0[45];
  v2 = v0[43];
  v4 = v0[40];
  v3 = v0[41];
  v6 = v0[30];
  v5 = v0[31];
  v7 = v0[29];
  sub_100005490(v0 + 2);
  (*(v6 + 8))(v5, v7);
  sub_1000064C0(v4, &qword_100028698, &qword_10001E9E8);
  sub_1000064C0(v3, &qword_100028698, &qword_10001E9E8);
  sub_1000064C0(v2, &qword_1000286A0, &qword_10001E9F0);
  sub_100019B20(v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100019B20(uint64_t a1)
{
  v2 = type metadata accessor for PrivateEvolutionPluginArgs(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100019B7C()
{
  result = qword_1000286A8;
  if (!qword_1000286A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000286A8);
  }

  return result;
}

uint64_t sub_100019BD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000210C(&qword_100028698, &qword_10001E9E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_OWORD *sub_100019C40(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_100019C50()
{
  result = qword_1000286D8;
  if (!qword_1000286D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000286D8);
  }

  return result;
}

uint64_t sub_100019CA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000210C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100019D14()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100019D54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateEvolutionPluginArgs(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100019DB8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_10001D8E4() & 1;
  }
}

uint64_t sub_100019E10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for PrivateEvolutionPluginError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PrivateEvolutionPluginError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100019FAC()
{
  result = qword_100028788;
  if (!qword_100028788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028788);
  }

  return result;
}

unint64_t sub_10001A000()
{
  result = qword_100028790;
  if (!qword_100028790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028790);
  }

  return result;
}

unint64_t sub_10001A054()
{
  result = qword_100028798;
  if (!qword_100028798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028798);
  }

  return result;
}

uint64_t sub_10001A0AC()
{
  v0 = sub_10001D2B4();
  sub_10001A12C(v0, qword_10002A138);
  sub_1000047E8(v0, qword_10002A138);
  return sub_10001D2A4();
}

uint64_t *sub_10001A12C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10001A190@<X0>(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PrivateEvolutionPluginArgs(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = objc_opt_self();
  sub_10001D1C4();
  isa = sub_10001D514().super.isa;

  v26 = 0;
  v12 = [v10 dataWithJSONObject:isa options:0 error:&v26];

  v13 = v26;
  if (v12)
  {
    v14 = sub_10001CF14();
    v16 = v15;

    sub_10001CE54();
    swift_allocObject();
    sub_10001CE44();
    sub_10001CA20(&qword_1000287A0, type metadata accessor for PrivateEvolutionPluginArgs, &unk_10001EDE8);
    sub_10001CE34();
    if (!v2)
    {
      sub_100006520(v14, v16);

      sub_10001BFB0(v7, v9);
      sub_10001B0B0();
      sub_100019D54(v9, a2);

      return sub_100019B20(v9);
    }

    sub_100006520(v14, v16);
  }

  else
  {
    v17 = v13;
    sub_10001CE84();

    swift_willThrow();
  }

  if (qword_100028248 != -1)
  {
    swift_once();
  }

  v18 = sub_10001D2B4();
  sub_1000047E8(v18, qword_10002A138);
  swift_errorRetain();
  v19 = sub_10001D294();
  v20 = sub_10001D734();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    swift_errorRetain();
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 4) = v23;
    *v22 = v23;
    _os_log_impl(&_mh_execute_header, v19, v20, "Couldn't form PrivateEvolutionPluginArgs: %@", v21, 0xCu);
    sub_1000064C0(v22, &qword_100028340, &qword_10001E850);
  }

  sub_100019B7C();
  swift_allocError();
  *v24 = 0;
  swift_willThrow();
}

uint64_t type metadata accessor for PrivateEvolutionPluginArgs(uint64_t a1)
{
  result = qword_100028800;
  if (!qword_100028800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10001A658(char a1)
{
  result = 0x706E496C65646F4DLL;
  switch(a1)
  {
    case 1:
      result = 0x74754F6C65646F4DLL;
      break;
    case 2:
      result = 0x614E63697274654DLL;
      break;
    case 3:
      result = 0x6E69646465626D45;
      break;
    case 4:
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x754E656C706D6153;
      break;
    case 7:
    case 12:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0x6C65646F4D6C694DLL;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0x687469726F676C41;
      break;
    case 15:
      result = 0xD000000000000017;
      break;
    case 16:
      result = 0xD000000000000015;
      break;
    case 17:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int sub_10001A8D4()
{
  v1 = *v0;
  sub_10001D984();
  sub_10001D994(v1 + 10301);
  return sub_10001D9A4();
}

Swift::Int sub_10001A954(uint64_t a1)
{
  v2 = *v1;
  sub_10001D984();
  sub_10001D994(v2 + 10301);
  return sub_10001D9A4();
}

uint64_t sub_10001A99C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001CAD0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10001A9DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001C8A8();
  v5 = sub_10001A054();

  return Error<>._code.getter(a1, a2, v4, v5);
}

uint64_t sub_10001AA34(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1819047278;
  v5 = 0x800000010001EFC0;
  if (v2 != 1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x800000010001EFC0;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 25968;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  v8 = 1819047278;
  if (*a2 == 1)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xD000000000000011;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 25968;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_10001D8E4();
  }

  return v11 & 1;
}

Swift::Int sub_10001AB18()
{
  sub_10001D984();
  sub_10001D5A4();

  return sub_10001D9A4();
}

uint64_t sub_10001ABAC(uint64_t a1)
{
  sub_10001D5A4();
}

Swift::Int sub_10001AC2C(uint64_t a1)
{
  sub_10001D984();
  sub_10001D5A4();

  return sub_10001D9A4();
}

unint64_t sub_10001ACBC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001CAE8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10001ACEC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE400000000000000;
  v5 = 1819047278;
  if (v2 != 1)
  {
    v5 = 0xD000000000000011;
    v4 = 0x800000010001EFC0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25968;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10001ADEC(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10001A658(*a1);
  v5 = v4;
  if (v3 == sub_10001A658(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10001D8E4();
  }

  return v8 & 1;
}

Swift::Int sub_10001AE74()
{
  v1 = *v0;
  sub_10001D984();
  sub_10001A658(v1);
  sub_10001D5A4();

  return sub_10001D9A4();
}

uint64_t sub_10001AED8(uint64_t a1)
{
  sub_10001A658(*v1);
  sub_10001D5A4();
}

Swift::Int sub_10001AF2C(uint64_t a1)
{
  v2 = *v1;
  sub_10001D984();
  sub_10001A658(v2);
  sub_10001D5A4();

  return sub_10001D9A4();
}

unint64_t sub_10001AF8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001CDE0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_10001AFBC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10001A658(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10001B004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10001CDE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10001B038(uint64_t a1)
{
  v2 = sub_10001C8FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001B074(uint64_t a1)
{
  v2 = sub_10001C8FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001B0B0()
{
  v1 = type metadata accessor for PrivateEvolutionPluginArgs(0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v41 - v6;
  v8 = __chkstk_darwin(v5);
  v10 = &v41 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v41 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v41 - v15;
  result = __chkstk_darwin(v14);
  v19 = &v41 - v18;
  v20 = v0[6];
  if (!v20)
  {
    if (qword_100028248 != -1)
    {
      swift_once();
    }

    v29 = sub_10001D2B4();
    sub_1000047E8(v29, qword_10002A138);
    sub_100019D54(v0, v4);
    v23 = sub_10001D294();
    v30 = sub_10001D734();
    if (os_log_type_enabled(v23, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 134217984;
      v32 = *(v4 + 6);
      sub_100019B20(v4);
      *(v31 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v23, v30, "minimumNumEvents %lu is not > 0", v31, 0xCu);
    }

    else
    {
      sub_100019B20(v4);
    }

    v28 = 1;
    goto LABEL_23;
  }

  v21 = v0[7];
  if (v21 < v20)
  {
    if (qword_100028248 != -1)
    {
      swift_once();
    }

    v22 = sub_10001D2B4();
    sub_1000047E8(v22, qword_10002A138);
    sub_100019D54(v0, v10);
    sub_100019D54(v0, v7);
    v23 = sub_10001D294();
    v24 = sub_10001D734();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134218240;
      v26 = *(v10 + 6);
      sub_100019B20(v10);
      *(v25 + 4) = v26;
      *(v25 + 12) = 2048;
      v27 = *(v7 + 7);
      sub_100019B20(v7);
      *(v25 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v23, v24, "minimumNumEvents %lu is not <= maximumNumEvents %lu", v25, 0x16u);
    }

    else
    {
      sub_100019B20(v7);
      sub_100019B20(v10);
    }

    v28 = 2;
LABEL_23:

    sub_100019B7C();
    swift_allocError();
    *v40 = v28;
    return swift_willThrow();
  }

  v33 = v0[8];
  if (v33 < v20 || v21 < v33)
  {
    if (qword_100028248 != -1)
    {
      swift_once();
    }

    v34 = sub_10001D2B4();
    sub_1000047E8(v34, qword_10002A138);
    sub_100019D54(v0, v19);
    sub_100019D54(v0, v16);
    sub_100019D54(v0, v13);
    v23 = sub_10001D294();
    v35 = sub_10001D734();
    if (os_log_type_enabled(v23, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 134218496;
      v37 = *(v19 + 8);
      sub_100019B20(v19);
      *(v36 + 4) = v37;
      *(v36 + 12) = 2048;
      v38 = *(v16 + 6);
      sub_100019B20(v16);
      *(v36 + 14) = v38;
      *(v36 + 22) = 2048;
      v39 = *(v13 + 7);
      sub_100019B20(v13);
      *(v36 + 24) = v39;
      _os_log_impl(&_mh_execute_header, v23, v35, "sampleNumEvents %lu is not in [minimumNumEvents, maximumNumEvents] = [%lu, %lu]", v36, 0x20u);
    }

    else
    {
      sub_100019B20(v13);
      sub_100019B20(v16);
      sub_100019B20(v19);
    }

    v28 = 3;
    goto LABEL_23;
  }

  return result;
}

uint64_t sub_10001B570@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_10000210C(&qword_1000286D0, &qword_10001EA40);
  __chkstk_darwin(v3 - 8);
  v5 = &v50 - v4;
  v6 = sub_10000210C(&qword_100028690, &qword_10001E9E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v50 - v7;
  v9 = sub_10000210C(&qword_100028688, &qword_10001E9D8);
  __chkstk_darwin(v9 - 8);
  v11 = &v50 - v10;
  v58 = sub_10000210C(&qword_1000288D8, &qword_10001EE50);
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v13 = &v50 - v12;
  v14 = type metadata accessor for PrivateEvolutionPluginArgs(0);
  __chkstk_darwin(v14);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v60 = a1;
  sub_100004DD8(a1, v17);
  sub_10001C8FC();
  v57 = v13;
  v18 = v59;
  sub_10001D9B4();
  if (v18)
  {
    return sub_100005490(v60);
  }

  v52 = v5;
  v53 = v8;
  v19 = v56;
  v54 = v14;
  v59 = v16;
  LOBYTE(v62) = 0;
  v20 = sub_10001D844();
  v22 = v59;
  *v59 = v20;
  v22[1] = v23;
  LOBYTE(v62) = 1;
  v22[2] = sub_10001D844();
  v22[3] = v24;
  sub_10000210C(&qword_100028828, "2\r");
  v61 = 2;
  sub_10001C950();
  v50 = 0;
  sub_10001D874();
  v22[4] = v62;
  LOBYTE(v62) = 3;
  v22[5] = sub_10001D864();
  LOBYTE(v62) = 4;
  v22[6] = sub_10001D864();
  LOBYTE(v62) = 5;
  v22[7] = sub_10001D864();
  LOBYTE(v62) = 6;
  v22[8] = sub_10001D864();
  LOBYTE(v62) = 7;
  v22[9] = sub_10001D844();
  v22[10] = v27;
  LOBYTE(v62) = 8;
  v28 = sub_10001D814();
  v51 = 0;
  v22[11] = v28;
  v22[12] = v29;
  v61 = 9;
  v30 = v51;
  sub_10001D834();
  v51 = v30;
  if (v30)
  {
    (*(v19 + 8))(v57, v58);
    v31 = 0;
    v32 = 0;
    v33 = 0;
LABEL_21:
    v41 = v59;
    v25 = v50;
    sub_100005490(v60);

    if (!v25)
    {
    }

    if (v31)
    {

      if (v32)
      {
LABEL_8:

        v26 = v54;
        if ((v33 & 1) == 0)
        {
          return result;
        }

        return sub_1000064C0(&v41[v26[16]], &qword_100028688, &qword_10001E9D8);
      }
    }

    else if (v32)
    {
      goto LABEL_8;
    }

    v26 = v54;
    if (!v33)
    {
      return result;
    }

    return sub_1000064C0(&v41[v26[16]], &qword_100028688, &qword_10001E9D8);
  }

  *(v59 + 13) = v62;
  LOBYTE(v62) = 10;
  v34 = v51;
  v35 = sub_10001D844();
  v51 = v34;
  if (v34)
  {
    (*(v19 + 8))(v57, v58);
    v32 = 0;
    v33 = 0;
    v31 = 1;
    goto LABEL_21;
  }

  v37 = v59;
  *(v59 + 14) = v35;
  *(v37 + 15) = v36;
  LOBYTE(v62) = 11;
  v38 = v51;
  v39 = sub_10001D854();
  v51 = v38;
  if (v38 || (v59[128] = v39 & 1, sub_10001D424(), LOBYTE(v62) = 12, sub_10001CA20(&qword_1000284D0, &type metadata accessor for DataSourceConfig, &protocol conformance descriptor for DataSourceConfig), v40 = v51, sub_10001D834(), (v51 = v40) != 0))
  {
    (*(v19 + 8))(v57, v58);
    v33 = 0;
    v31 = 1;
    v32 = 1;
    goto LABEL_21;
  }

  sub_10001CA68(v11, &v59[v54[16]], &qword_100028688, &qword_10001E9D8);
  sub_10001D454();
  LOBYTE(v62) = 13;
  sub_10001CA20(&qword_1000288F0, &type metadata accessor for TaggingParameters, &protocol conformance descriptor for TaggingParameters);
  v42 = v51;
  sub_10001D834();
  v51 = v42;
  if (v42)
  {
    (*(v19 + 8))(v57, v58);
    v31 = 1;
    v32 = 1;
    v33 = 1;
    goto LABEL_21;
  }

  sub_10001CA68(v53, &v59[v54[17]], &qword_100028690, &qword_10001E9E0);
  v61 = 14;
  sub_10001C9CC();
  v43 = v51;
  sub_10001D834();
  if (v43)
  {
    (*(v19 + 8))(v57, v58);
    sub_100005490(v60);
    v45 = v59;

    v46 = v54;
    sub_1000064C0(&v45[v54[16]], &qword_100028688, &qword_10001E9D8);
    return sub_1000064C0(&v45[v46[17]], &qword_100028690, &qword_10001E9E0);
  }

  else
  {
    v59[v54[18]] = v62;
    LOBYTE(v62) = 15;
    v59[v54[19]] = sub_10001D824();
    LOBYTE(v62) = 16;
    v44 = sub_10001D814();
    v47 = &v59[v54[20]];
    *v47 = v44;
    v47[1] = v48;
    sub_10001D4D4();
    LOBYTE(v62) = 17;
    sub_10001CA20(&qword_100028900, &type metadata accessor for MetadataEncodingParameters, &protocol conformance descriptor for MetadataEncodingParameters);
    sub_10001D834();
    (*(v19 + 8))(v57, v58);
    v49 = v59;
    sub_10001CA68(v52, &v59[v54[21]], &qword_1000286D0, &qword_10001EA40);
    sub_100019D54(v49, v55);
    sub_100005490(v60);
    return sub_100019B20(v49);
  }
}

uint64_t sub_10001BFB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateEvolutionPluginArgs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for PrivateEvolutionPluginArgsError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PrivateEvolutionPluginArgsError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10001C178(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_10000210C(&qword_100028688, &qword_10001E9D8);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[16];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_10000210C(&qword_100028690, &qword_10001E9E0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[17];
    goto LABEL_9;
  }

  v14 = sub_10000210C(&qword_1000286D0, &qword_10001EA40);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[21];

  return v15(v16, a2, v14);
}

uint64_t sub_10001C31C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_10000210C(&qword_100028688, &qword_10001E9D8);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[16];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_10000210C(&qword_100028690, &qword_10001E9E0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[17];
    goto LABEL_7;
  }

  v14 = sub_10000210C(&qword_1000286D0, &qword_10001EA40);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[21];

  return v15(v16, a2, a2, v14);
}

void sub_10001C4AC(uint64_t a1)
{
  sub_10001C744(319, &qword_100028810, &type metadata for String, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_10001C744(319, &qword_100028818, &type metadata for String, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_10001C6E0(319);
      if (v3 <= 0x3F)
      {
        sub_10001C794(319, &qword_100028830, &type metadata accessor for DataSourceConfig);
        if (v4 <= 0x3F)
        {
          sub_10001C794(319, &qword_100028838, &type metadata accessor for TaggingParameters);
          if (v5 <= 0x3F)
          {
            sub_10001C744(319, &qword_100028840, &type metadata for AlgorithmType, &type metadata accessor for Optional);
            if (v6 <= 0x3F)
            {
              sub_10001C744(319, &qword_100028848, &type metadata for Bool, &type metadata accessor for Optional);
              if (v7 <= 0x3F)
              {
                sub_10001C794(319, &unk_100028850, &type metadata accessor for MetadataEncodingParameters);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_10001C6E0(uint64_t a1)
{
  if (!qword_100028820)
  {
    sub_100004EDC(&qword_100028828, "2\r");
    v1 = sub_10001D744();
    if (!v2)
    {
      atomic_store(v1, &qword_100028820);
    }
  }
}

void sub_10001C744(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10001C794(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10001D744();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_10001C7FC()
{
  result = qword_1000288C0;
  if (!qword_1000288C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000288C0);
  }

  return result;
}

unint64_t sub_10001C854()
{
  result = qword_1000288C8;
  if (!qword_1000288C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000288C8);
  }

  return result;
}

unint64_t sub_10001C8A8()
{
  result = qword_1000288D0;
  if (!qword_1000288D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000288D0);
  }

  return result;
}

unint64_t sub_10001C8FC()
{
  result = qword_1000288E0;
  if (!qword_1000288E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000288E0);
  }

  return result;
}

unint64_t sub_10001C950()
{
  result = qword_1000288E8;
  if (!qword_1000288E8)
  {
    sub_100004EDC(&qword_100028828, "2\r");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000288E8);
  }

  return result;
}

unint64_t sub_10001C9CC()
{
  result = qword_1000288F8;
  if (!qword_1000288F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000288F8);
  }

  return result;
}

uint64_t sub_10001CA20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001CA68(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000210C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10001CAD0(uint64_t a1)
{
  if ((a1 - 10301) >= 7)
  {
    return 7;
  }

  else
  {
    return a1 - 10301;
  }
}

unint64_t sub_10001CAE8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100024F98;
  v6._object = a2;
  v4 = sub_10001D804(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10001CB34()
{
  result = qword_100028908;
  if (!qword_100028908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028908);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrivateEvolutionPluginArgs.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PrivateEvolutionPluginArgs.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10001CCDC()
{
  result = qword_100028910;
  if (!qword_100028910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028910);
  }

  return result;
}

unint64_t sub_10001CD34()
{
  result = qword_100028918;
  if (!qword_100028918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028918);
  }

  return result;
}

unint64_t sub_10001CD8C()
{
  result = qword_100028920;
  if (!qword_100028920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028920);
  }

  return result;
}

unint64_t sub_10001CDE0(uint64_t a1, uint64_t a2)
{
  v2 = sub_10001D904();

  if (v2 >= 0x12)
  {
    return 18;
  }

  else
  {
    return v2;
  }
}