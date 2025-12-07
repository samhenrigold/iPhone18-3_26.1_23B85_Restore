void sub_100001170(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_100011D24();
  v7 = [v6 error];
  if (v7)
  {

    if (qword_10001C920 != -1)
    {
      swift_once();
    }

    v8 = sub_100011B84();
    sub_1000019F0(v8, qword_10001EA60);

    v9 = v6;
    v10 = sub_100011B64();
    v11 = sub_100011D54();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = v14;
      *v12 = 136315394;
      *(v12 + 4) = sub_100003904(a1, a2, &v20);
      *(v12 + 12) = 2112;
      v15 = [v9 error];
      if (v15)
      {
        v15 = _swift_stdlib_bridgeErrorToNSError();
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      *(v12 + 14) = v15;
      *v13 = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "Error executing %s in Biome: %@", v12, 0x16u);
      sub_100001B7C(v13, &qword_10001CA70, &unk_1000126A0);

      sub_100001BEC(v14);
    }

    v18 = *(v3 + 16);
    *(v3 + 16) = 0;

    sub_100001A28();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();
  }

  else
  {
    v17 = *(v3 + 16);
    *(v3 + 16) = v6;
  }
}

NSObject *sub_1000013C8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = [v1 error];
    if (v2)
    {
      v3 = v2;
      if (qword_10001C920 != -1)
      {
        swift_once();
      }

      v4 = sub_100011B84();
      sub_1000019F0(v4, qword_10001EA60);
      v5 = v3;
      v6 = sub_100011B64();
      v7 = sub_100011D54();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *v8 = 138412290;
        v10 = v5;
        v11 = _swift_stdlib_bridgeErrorToNSError();
        *(v8 + 4) = v11;
        *v9 = v11;
        _os_log_impl(&_mh_execute_header, v6, v7, "Error in fetching row: %@", v8, 0xCu);
        sub_100001B7C(v9, &qword_10001CA70, &unk_1000126A0);
      }

      sub_100001A28();
      swift_allocError();
      *v12 = 0;
      swift_willThrow();

      return v5;
    }

    v13 = *(v0 + 16);
    if (v13)
    {
      v14 = [v13 row];
      if (v14)
      {
        v15 = v14;
        v16 = sub_100011BC4();

        v5 = sub_1000016B0(v16);

        if (v5)
        {
          return v5;
        }
      }
    }
  }

  if (qword_10001C920 != -1)
  {
    swift_once();
  }

  v17 = sub_100011B84();
  sub_1000019F0(v17, qword_10001EA60);
  v5 = sub_100011B64();
  v18 = sub_100011D44();
  if (os_log_type_enabled(v5, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v5, v18, "Row cannot be converted into SiriPrivateLearningPFLBiomeSQLRow", v19, 2u);
  }

  sub_100001A28();
  swift_allocError();
  *v20 = 1;
  swift_willThrow();
  return v5;
}

unint64_t sub_1000016B0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100001A7C(&qword_10001CA78, &qword_100012870);
    v2 = sub_100011E34();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_100001AC4(*(a1 + 48) + 40 * v12, v27);
        sub_100001B20(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_100001AC4(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_100001B20(v25 + 8, v20);
        sub_100001B7C(v24, &qword_10001CA80, &qword_1000126B0);
        v21 = v18;
        sub_100001BDC(v20, v22);
        v13 = v21;
        sub_100001BDC(v22, v23);
        sub_100001BDC(v23, &v21);
        result = sub_100003EAC(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          sub_100001BEC(v10);
          result = sub_100001BDC(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_100001BDC(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_100001B7C(v24, &qword_10001CA80, &qword_1000126B0);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_10000198C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000019F0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100001A28()
{
  result = qword_10001CA68;
  if (!qword_10001CA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CA68);
  }

  return result;
}

uint64_t sub_100001A7C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100001B20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100001B7C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001A7C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *sub_100001BDC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100001BEC(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

char *sub_100001C38(uint64_t a1)
{
  if (*(a1 + 16) && (v3 = v1, v5 = sub_100003EAC(v3[7], v3[8]), (v6 & 1) != 0) && (sub_100001B20(*(a1 + 56) + 32 * v5, v38), swift_dynamicCast()))
  {
    result = sub_1000020EC(a1);
    if (!v2)
    {
      v9 = result;
      v10 = v8;
      swift_beginAccess();
      v11 = v3[2];
      if (*(v11 + 16) && (v12 = sub_100003F24(v37), (v13 & 1) != 0))
      {
        v14 = *(*(v11 + 56) + 8 * v12);

        sub_100003330(v9);

        v28 = *(v14 + 24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v14 + 24) = v28;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v28 = sub_1000035F4(0, *(v28 + 2) + 1, 1, v28);
          *(v14 + 24) = v28;
        }

        v30 = v10;
        v32 = *(v28 + 2);
        v31 = *(v28 + 3);
        if (v32 >= v31 >> 1)
        {
          v34 = sub_1000035F4((v31 > 1), v32 + 1, 1, v28);
          v30 = v10;
          v28 = v34;
        }

        *(v28 + 2) = v32 + 1;
        *&v28[4 * v32 + 32] = v30;
        *(v14 + 24) = v28;
        swift_beginAccess();

        v33 = swift_isUniquelyReferenced_nonNull_native();
        v36 = v3[2];
        v3[2] = 0x8000000000000000;
        sub_1000045A0(v14, v37, v33);
        v3[2] = v36;
        swift_endAccess();
      }

      else
      {
        if (qword_10001C920 != -1)
        {
          swift_once();
        }

        v20 = sub_100011B84();
        sub_1000019F0(v20, qword_10001EA60);
        v21 = sub_100011B64();
        v22 = sub_100011D44();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 134217984;
          *(v23 + 4) = v37;
          _os_log_impl(&_mh_execute_header, v21, v22, "Initializing training data for aggregating value %ld", v23, 0xCu);
        }

        sub_100001A7C(&qword_10001CD00, &qword_1000128B0);
        v24 = swift_allocObject();
        sub_100001A7C(&qword_10001CD08, &qword_1000128B8);
        v25 = swift_allocObject();
        v25[3] = 1;
        v25[4] = *(v9 + 16);
        v25[2] = v9;
        *(v24 + 16) = v25;
        sub_100001A7C(&qword_10001CCB8, &qword_100012878);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_1000126D0;
        *(v26 + 32) = v10;
        *(v24 + 24) = v26;
        swift_beginAccess();
        v27 = swift_isUniquelyReferenced_nonNull_native();
        v35 = v3[2];
        v3[2] = 0x8000000000000000;
        sub_1000045A0(v24, v37, v27);
        v3[2] = v35;
        return swift_endAccess();
      }
    }
  }

  else
  {
    if (qword_10001C920 != -1)
    {
      swift_once();
    }

    v15 = sub_100011B84();
    sub_1000019F0(v15, qword_10001EA60);
    v16 = sub_100011B64();
    v17 = sub_100011D54();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "aggregatingValue not found.", v18, 2u);
    }

    sub_100005588();
    swift_allocError();
    *v19 = 2;
    return swift_willThrow();
  }

  return result;
}

char *sub_1000020EC(uint64_t a1)
{
  v4 = a1;
  v5 = v1[9];
  v41 = *(v5 + 16);
  if (v41)
  {
    v6 = 0;
    v7 = v1[10];
    v8 = v1[11];
    v9 = (v5 + 40);
    v42 = _swiftEmptyArrayStorage;
    v10 = *(v5 + 16);
    while (1)
    {
      if (v6 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_40;
      }

      v3 = *(v9 - 1);
      v2 = *v9;
      v11 = v3 == v7 && v2 == v8;
      if (!v11 && (sub_100011F34() & 1) == 0)
      {
        v12 = *(v4 + 16);

        if (!v12 || (v13 = sub_100003EAC(v3, v2), (v14 & 1) == 0))
        {

          if (qword_10001C920 != -1)
          {
            swift_once();
          }

          v27 = sub_100011B84();
          sub_1000019F0(v27, qword_10001EA60);

          v24 = sub_100011B64();
          v25 = sub_100011D54();

          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            v44[0] = swift_slowAlloc();
            *v26 = 136315394;
            v28 = sub_100003904(v3, v2, v44);

            *(v26 + 4) = v28;
            goto LABEL_30;
          }

          goto LABEL_31;
        }

        sub_100001B20(*(a1 + 56) + 32 * v13, v44);
        v15 = sub_100005A1C(v44);
        v16 = v42;
        if ((v15 & 0x100000000) != 0)
        {

          if (qword_10001C920 != -1)
          {
            swift_once();
          }

          v33 = sub_100011B84();
          sub_1000019F0(v33, qword_10001EA60);

          v34 = sub_100011B64();
          v35 = sub_100011D54();

          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            v45 = v37;
            *v36 = 136315138;
            v38 = sub_100003904(v3, v2, &v45);

            *(v36 + 4) = v38;
            _os_log_impl(&_mh_execute_header, v34, v35, "Unable to convert value for %s to float", v36, 0xCu);
            sub_100001BEC(v37);
          }

          else
          {
          }

          sub_100005588();
          swift_allocError();
          *v39 = 4;
          swift_willThrow();
          return sub_100001BEC(v44);
        }

        v17 = v15;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1000035F4(0, *(v42 + 2) + 1, 1, v42);
        }

        v3 = *(v16 + 2);
        v18 = *(v16 + 3);
        v2 = v3 + 1;
        if (v3 >= v18 >> 1)
        {
          v16 = sub_1000035F4((v18 > 1), v3 + 1, 1, v16);
        }

        sub_100001BEC(v44);
        *(v16 + 2) = v2;
        v42 = v16;
        *&v16[4 * v3 + 32] = v17;
        v4 = a1;
        v10 = v41;
      }

      ++v6;
      v9 += 2;
      if (v10 == v6)
      {
        goto LABEL_19;
      }
    }
  }

  v42 = _swiftEmptyArrayStorage;
LABEL_19:
  v2 = *(v40 + 80);
  v3 = *(v40 + 88);
  if (*(v4 + 16))
  {
    v19 = sub_100003EAC(*(v40 + 80), *(v40 + 88));
    if (v20)
    {
      sub_100001B20(*(v4 + 56) + 32 * v19, v44);
      v21 = sub_100005A1C(v44);
      sub_100001BEC(v44);
      if ((v21 & 0x100000000) == 0)
      {
        return v42;
      }
    }
  }

  if (qword_10001C920 != -1)
  {
LABEL_40:
    swift_once();
  }

  v23 = sub_100011B84();
  sub_1000019F0(v23, qword_10001EA60);

  v24 = sub_100011B64();
  v25 = sub_100011D54();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v44[0] = swift_slowAlloc();
    *v26 = 136315394;
    *(v26 + 4) = sub_100003904(v2, v3, v44);
LABEL_30:
    *(v26 + 12) = 2080;
    v29 = sub_100011BD4();
    v31 = sub_100003904(v29, v30, v44);

    *(v26 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v24, v25, "Couldn't find %s value in %s", v26, 0x16u);
    swift_arrayDestroy();
  }

LABEL_31:

  sub_100005588();
  swift_allocError();
  *v32 = 4;
  return swift_willThrow();
}

_DWORD *sub_1000026F8()
{
  v2 = v1;
  v3 = *(v0[9] + 16);
  v4 = _swiftEmptyArrayStorage;
  swift_beginAccess();
  v62 = v0;
  v5 = v0[2];
  v6 = *(v5 + 16);
  if (v6)
  {
    v65 = v1;
    v7 = v3;
    v4 = sub_100003880(v6, 0);
    v8 = sub_100005428(v66, v4 + 4, v6, v5);
    v9 = v66[0];
    v3 = v66[4];

    sub_100005580(v9);
    if (v8 != v6)
    {
LABEL_33:
      __break(1u);
LABEL_34:
      swift_once();
      goto LABEL_27;
    }

    v3 = v7;
    v2 = v65;
  }

  v66[0] = v4;

  sub_100004B0C(v66);
  if (!v2)
  {

    v10 = v66[0];
    v61 = *(v66[0] + 2);
    if (!v61)
    {
LABEL_18:

      v44 = objc_allocWithZone(MLArrayBatchProvider);
      sub_100001A7C(&qword_10001CCB0, &qword_100012868);
      isa = sub_100011C74().super.isa;

      v3 = [v44 initWithFeatureProviderArray:isa];

      return v3;
    }

    v11 = 0;
    v12 = 40;
    v60 = v66[0];
    v59 = v3;
    while (1)
    {
      if (v11 >= v10[2])
      {
        __break(1u);
        goto LABEL_33;
      }

      v13 = *(v10 + v12);
      v14 = *(v13 + 16);
      v15 = *(v14 + 32);
      if (v15 != v3)
      {

        if (qword_10001C920 != -1)
        {
          swift_once();
        }

        v46 = sub_100011B84();
        sub_1000019F0(v46, qword_10001EA60);
        v47 = sub_100011B64();
        v48 = sub_100011D54();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v50 = v3;
          v3 = v49;
          *v49 = 134218240;
          *(v49 + 4) = v15;
          *(v49 + 12) = 2048;
          *(v49 + 14) = v50;
          _os_log_impl(&_mh_execute_header, v47, v48, "Mismatch in number of columns in trainingData %ld and number of features in arg %ld", v49, 0x16u);
        }

        sub_100005588();
        swift_allocError();
        *v51 = 5;
        swift_willThrow();
        goto LABEL_30;
      }

      v64 = v11;
      v16 = *(v14 + 16);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v14 + 16) = v16;
      v63 = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v16 = sub_100005400(v16);
      }

      *(v14 + 16) = v16;

      v18 = *(v13 + 24);
      v19 = swift_isUniquelyReferenced_nonNull_native();
      *(v13 + 24) = v18;
      if ((v19 & 1) == 0)
      {
        v18 = sub_100005400(v18);
      }

      *(v13 + 24) = v18;
      sub_100001A7C(&qword_10001CC88, &unk_100012840);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1000126E0;
      *(v20 + 32) = sub_100011D14();
      *(v20 + 40) = sub_100011D14();
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1000126E0;
      *(v21 + 32) = sub_100011D14();
      *(v21 + 40) = sub_100011D14();
      v22 = objc_allocWithZone(MLMultiArray);
      sub_100005644(0, &qword_10001CC90, NSNumber_ptr);
      v23 = sub_100011C74().super.isa;

      v24 = sub_100011C74().super.isa;

      v66[0] = 0;
      v25 = [v22 initWithDataPointer:v16 + 32 shape:v23 dataType:65568 strides:v24 deallocator:0 error:v66];

      v26 = v66[0];
      if (!v25)
      {
        v3 = v66[0];

        sub_100011AB4();

        swift_willThrow();

        goto LABEL_26;
      }

      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1000126F0;
      v28 = v26;
      *(v27 + 32) = sub_100011D14();
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1000126F0;
      *(v29 + 32) = sub_100011D64(1);
      v30 = objc_allocWithZone(MLMultiArray);
      v31 = sub_100011C74().super.isa;

      v32 = sub_100011C74().super.isa;

      v66[0] = 0;
      v33 = [v30 initWithDataPointer:v18 + 32 shape:v31 dataType:65568 strides:v32 deallocator:0 error:v66];

      v34 = v66[0];
      if (!v33)
      {
        break;
      }

      sub_100001A7C(&qword_10001CC98, qword_100012850);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100012700;
      v36 = v62[4];
      *(inited + 32) = v62[3];
      *(inited + 40) = v36;
      v37 = sub_100005644(0, &qword_10001CCA0, MLMultiArray_ptr);
      *(inited + 72) = v37;
      *(inited + 48) = v25;
      v38 = v62[6];
      *(inited + 80) = v62[5];
      *(inited + 88) = v38;
      *(inited + 120) = v37;
      *(inited + 96) = v33;
      v39 = v34;

      v40 = v25;

      v41 = v33;
      v42 = sub_100005794(inited);
      swift_setDeallocating();
      sub_100001A7C(&qword_10001CCA8, qword_1000135E0);
      swift_arrayDestroy();
      v43 = objc_allocWithZone(MLDictionaryFeatureProvider);
      sub_10000350C(v42);
      sub_100011C64();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100011C94();
      }

      v11 = v64 + 1;
      sub_100011CB4();

      v12 = v63 + 16;
      v10 = v60;
      v3 = v59;
      if (v61 == v64 + 1)
      {
        goto LABEL_18;
      }
    }

    v3 = v66[0];

    sub_100011AB4();

    swift_willThrow();

LABEL_26:
    if (qword_10001C920 != -1)
    {
      goto LABEL_34;
    }

LABEL_27:
    v52 = sub_100011B84();
    sub_1000019F0(v52, qword_10001EA60);
    swift_errorRetain();
    v53 = sub_100011B64();
    v54 = sub_100011D54();

    if (os_log_type_enabled(v53, v54))
    {
      v3 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v3 = 138412290;
      swift_errorRetain();
      v56 = _swift_stdlib_bridgeErrorToNSError();
      *(v3 + 1) = v56;
      *v55 = v56;
      _os_log_impl(&_mh_execute_header, v53, v54, "Error forming MLBatchProvider: %@", v3, 0xCu);
      sub_1000055DC(v55);
    }

    sub_100005588();
    swift_allocError();
    *v57 = 6;
    swift_willThrow();

LABEL_30:

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_100003018()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000030F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for InputMatrix(0, *(v4 + 80), *(v4 + 88), a4);
  v7 = *(a1 + 16);
  v8 = *(a2 + 16);

  v9 = sub_1000031CC(v7, v8);

  if (!v9)
  {
    return 0;
  }

  v10 = sub_100011CC4();

  return v10 & 1;
}

BOOL sub_1000031CC(void *a1, void *a2)
{

  v4 = sub_100011CC4();

  return (v4 & 1) != 0 && a1[3] == a2[3] && a1[4] == a2[4];
}

uint64_t sub_100003270()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100003330(uint64_t a1)
{
  if (*(a1 + 16) == *(v1 + 32))
  {

    result = sub_1000033C4(v2);
    v4 = *(v1 + 24);
    v5 = __OFADD__(v4, 1);
    v6 = v4 + 1;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      *(v1 + 24) = v6;
    }
  }

  else
  {
    sub_100005588();
    swift_allocError();
    *v7 = 3;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1000033C4(uint64_t result)
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

  result = sub_1000035F4(result, v11, 1, v3);
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

uint64_t sub_1000034B0()
{

  return swift_deallocClassInstance();
}

id sub_10000350C(uint64_t a1)
{
  isa = sub_100011BB4().super.isa;

  v7 = 0;
  v3 = [v1 initWithDictionary:isa error:&v7];

  if (v3)
  {
    v4 = v7;
  }

  else
  {
    v5 = v7;
    sub_100011AB4();

    swift_willThrow();
  }

  return v3;
}

char *sub_1000035F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001A7C(&qword_10001CCB8, &qword_100012878);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1000036F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001A7C(&qword_10001CCC8, &qword_100012888);
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

void *sub_1000037FC(uint64_t a1, uint64_t a2)
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

  sub_100001A7C(&qword_10001CCB8, &qword_100012878);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

void *sub_100003880(uint64_t a1, uint64_t a2)
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

  sub_100001A7C(&qword_10001CCD0, &qword_100012890);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

unint64_t sub_100003904(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000039D0(v11, 0, 0, 1, a1, a2);
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
    sub_100001B20(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100001BEC(v11);
  return v7;
}

unint64_t sub_1000039D0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100003ADC(a5, a6);
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
    result = sub_100011E04();
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

void *sub_100003ADC(uint64_t a1, unint64_t a2)
{
  v3 = sub_100003B28(a1, a2);
  sub_100003C58(&off_100018858);
  return v3;
}

void *sub_100003B28(uint64_t a1, unint64_t a2)
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

  v6 = sub_100003D44(v5, 0);
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

  result = sub_100011E04();
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
        v10 = sub_100011C34();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100003D44(v10, 0);
        result = sub_100011DF4();
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

uint64_t sub_100003C58(uint64_t result)
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

  result = sub_100003DB8(result, v11, 1, v3);
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

void *sub_100003D44(uint64_t a1, uint64_t a2)
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

  sub_100001A7C(&qword_10001CCF8, &qword_1000128A8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100003DB8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001A7C(&qword_10001CCF8, &qword_1000128A8);
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

unint64_t sub_100003EAC(uint64_t a1, uint64_t a2)
{
  sub_100011FB4();
  sub_100011C24();
  v4 = sub_100011FD4();

  return sub_100003F68(a1, a2, v4);
}

unint64_t sub_100003F24(uint64_t a1)
{
  v2 = sub_100011FA4();

  return sub_100004020(a1, v2);
}

unint64_t sub_100003F68(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100011F34())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100004020(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_10000408C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100001A7C(&qword_10001CD10, &qword_1000128C0);
  result = sub_100011E24();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = sub_100011FA4();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000042FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100001A7C(&qword_10001CD18, qword_1000128C8);
  v33 = v4;
  result = sub_100011E24();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v24 = *(*(v5 + 56) + 4 * v20);
      if ((v33 & 1) == 0)
      {
      }

      sub_100011FB4();
      sub_100011C24();
      result = sub_100011FD4();
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
      *(*(v7 + 56) + 4 * v15) = v24;
      ++*(v7 + 16);
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

unint64_t sub_1000045A0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_100003F24(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_10000408C(v14, a3 & 1);
      result = sub_100003F24(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_100011F54();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_100004848();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

unint64_t sub_1000046EC(uint64_t a1, uint64_t a2, char a3, float a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_100003EAC(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_1000042FC(v16, a3 & 1);
      result = sub_100003EAC(a1, a2);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_100011F54();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1000049A4();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 4 * result) = a4;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
  *(v21[7] + 4 * result) = a4;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

void *sub_100004848()
{
  v1 = v0;
  sub_100001A7C(&qword_10001CD10, &qword_1000128C0);
  v2 = *v0;
  v3 = sub_100011E14();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_1000049A4()
{
  v1 = v0;
  sub_100001A7C(&qword_10001CD18, qword_1000128C8);
  v2 = *v0;
  v3 = sub_100011E14();
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
        v20 = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v20;
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

Swift::Int sub_100004B0C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100005414(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = sub_100011F14(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 4;
      do
      {
        v11 = v2[2 * v9 + 4];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = v13[3];
          *(v13 + 1) = *v13;
          *v13 = v11;
          v13[1] = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 2;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_100001A7C(&qword_10001CCC0, &qword_100012880);
      v7 = sub_100011CA4();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_100004C60(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_100004C60(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v90 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v90;
    if (!*v90)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1000053EC(v8);
      v8 = result;
    }

    v82 = v8 + 2;
    v83 = v8[2];
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = &v8[2 * v83];
        v85 = *v84;
        v86 = &v82[2 * v83];
        v87 = v86[1];
        sub_1000051E8((*a3 + 16 * *v84), (*a3 + 16 * *v86), (*a3 + 16 * v87), v5);
        if (v4)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_114;
        }

        if (v83 - 2 >= *v82)
        {
          goto LABEL_115;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = *v82 - v83;
        if (*v82 < v83)
        {
          goto LABEL_116;
        }

        v83 = *v82 - 1;
        result = memmove(v86, v86 + 2, 16 * v88);
        *v82 = v83;
        if (v83 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v89 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v15 = *v12;
      v14 = v12 + 4;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 2;
        v19 = (v10 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 0;
        v21 = 16 * v7;
        v22 = v9;
        do
        {
          if (v22 != v7 + v20 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v27 + v11);
            v24 = v27 + v21;
            v25 = *v23;
            v26 = v23[1];
            *v23 = *(v24 - 16);
            *(v24 - 16) = v25;
            *(v24 - 8) = v26;
          }

          ++v22;
          --v20;
          v21 -= 16;
          v11 += 16;
        }

        while (v22 < v7 + v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000036F8(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v36 = v8[3];
    v37 = v5 + 1;
    if (v5 >= v36 >> 1)
    {
      result = sub_1000036F8((v36 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v37;
    v38 = v8 + 4;
    v39 = &v8[2 * v5 + 4];
    *v39 = v9;
    v39[1] = v7;
    v91 = *v90;
    if (!*v90)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v40 = v8[4];
          v41 = v8[5];
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_57:
          if (v43)
          {
            goto LABEL_104;
          }

          v56 = &v8[2 * v37];
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_106;
          }

          v62 = &v38[2 * v5];
          v64 = *v62;
          v63 = v62[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_111;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v5 = v37 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v37 < 2)
        {
          goto LABEL_112;
        }

        v66 = &v8[2 * v37];
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_72:
        if (v61)
        {
          goto LABEL_108;
        }

        v69 = &v38[2 * v5];
        v71 = *v69;
        v70 = v69[1];
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_110;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v37)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v77 = &v38[2 * v5 - 2];
        v78 = *v77;
        v79 = &v38[2 * v5];
        v80 = v79[1];
        sub_1000051E8((*a3 + 16 * *v77), (*a3 + 16 * *v79), (*a3 + 16 * v80), v91);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = v8[2];
        if (v5 >= v81)
        {
          goto LABEL_101;
        }

        v37 = v81 - 1;
        result = memmove(&v38[2 * v5], v79 + 2, 16 * (v81 - 1 - v5));
        v8[2] = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = &v38[2 * v37];
      v45 = *(v44 - 8);
      v46 = *(v44 - 7);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_102;
      }

      v49 = *(v44 - 6);
      v48 = *(v44 - 5);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_103;
      }

      v51 = &v8[2 * v37];
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_105;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_107;
      }

      if (v55 >= v47)
      {
        v73 = &v38[2 * v5];
        v75 = *v73;
        v74 = v73[1];
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_113;
        }

        if (v42 < v76)
        {
          v5 = v37 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v89;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 16 * v7 - 16;
  v30 = v9 - v7;
LABEL_30:
  v31 = *(v28 + 16 * v7);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v7;
      v29 += 16;
      --v30;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 24);
    *(v33 + 16) = *v33;
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 16;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1000051E8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = v5 + 16;
      v20 = *(v18 - 2);
      v18 -= 16;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

void *sub_100005428(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
      v18 = *(*(a4 + 56) + v17);
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + v17);
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

unint64_t sub_100005588()
{
  result = qword_10001CC80;
  if (!qword_10001CC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CC80);
  }

  return result;
}

uint64_t sub_1000055DC(uint64_t a1)
{
  v2 = sub_100001A7C(&qword_10001CA70, &unk_1000126A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100005644(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void *sub_10000568C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100001A7C(&qword_10001CD10, &qword_1000128C0);
  v3 = sub_100011E34();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_100003F24(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 7);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_100003F24(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100005794(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001A7C(&qword_10001CA78, &qword_100012870);
    v3 = sub_100011E34();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000058A4(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_100003EAC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100001BDC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000058A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001A7C(&qword_10001CCA8, qword_1000135E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100005918(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001A7C(&qword_10001CD18, qword_1000128C8);
    v3 = sub_100011E34();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100003EAC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100005A1C(uint64_t a1)
{
  sub_100001B20(a1, v22);
  sub_100001A7C(&qword_10001CCD8, &qword_100012898);
  if (swift_dynamicCast())
  {
    sub_100005DA0(v21, v19);
    v1 = v20;
    v2 = sub_100005DB8(v19, v20);
    v3 = *(v1 - 8);
    __chkstk_darwin(v2, v2);
    v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v3 + 16))(v5);
    if (sub_100011D94() < 65)
    {
      v11 = sub_100011DA4();
      v12 = sub_100011D84();
      (*(v3 + 8))(v5, v1);
      if (v11)
      {
        v6 = v12;
      }

      else
      {
        v6 = v12;
      }
    }

    else
    {
      sub_100005DFC();
      sub_100005E50();
      sub_100011BA4();
      (*(v3 + 8))(v5, v1);
      v6 = v18;
    }

    v10 = v6;
    goto LABEL_12;
  }

  sub_100001A7C(&qword_10001CCE0, &qword_1000128A0);
  if (swift_dynamicCast())
  {
    sub_100005DA0(v21, v19);
    v7 = sub_100005DB8(v19, v20);
    __chkstk_darwin(v7, v7);
    (*(v9 + 16))(&v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    sub_100005DFC();
    sub_100011B94();
    v10 = v18;
LABEL_12:
    sub_100001BEC(v19);
    v15 = 0;
    goto LABEL_13;
  }

  sub_100005644(0, &qword_10001CC90, NSNumber_ptr);
  if (swift_dynamicCast())
  {
    sub_100011CD4();
    v14 = v13;

    v15 = 0;
    v10 = v14;
  }

  else
  {
    v10 = 0.0;
    v15 = 1;
  }

LABEL_13:
  sub_100001BEC(v22);
  LOBYTE(v21[0]) = v15;
  return LODWORD(v10) | (v15 << 32);
}

uint64_t sub_100005DA0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_100005DB8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100005DFC()
{
  result = qword_10001CCE8;
  if (!qword_10001CCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CCE8);
  }

  return result;
}

unint64_t sub_100005E50()
{
  result = qword_10001CCF0;
  if (!qword_10001CCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CCF0);
  }

  return result;
}

MusicAppSelectionPFLPlugin::BiomeSQLClientError_optional __swiftcall BiomeSQLClientError.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 10002)
  {
    v1.value = MusicAppSelectionPFLPlugin_BiomeSQLClientError_rowConversionFailed;
  }

  else
  {
    v1.value = MusicAppSelectionPFLPlugin_BiomeSQLClientError_unknownDefault;
  }

  if (rawValue == 10001)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

Swift::Int sub_100005F08()
{
  v1 = *v0;
  sub_100011FB4();
  if (v1)
  {
    v2 = 10002;
  }

  else
  {
    v2 = 10001;
  }

  sub_100011FC4(v2);
  return sub_100011FD4();
}

void sub_100005F58()
{
  if (*v0)
  {
    v1 = 10002;
  }

  else
  {
    v1 = 10001;
  }

  sub_100011FC4(v1);
}

Swift::Int sub_100005F90(uint64_t a1)
{
  v2 = *v1;
  sub_100011FB4();
  if (v2)
  {
    v3 = 10002;
  }

  else
  {
    v3 = 10001;
  }

  sub_100011FC4(v3);
  return sub_100011FD4();
}

void *sub_100005FDC@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 10002)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 10001)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_100006004(uint64_t *a1@<X8>)
{
  v2 = 10001;
  if (*v1)
  {
    v2 = 10002;
  }

  *a1 = v2;
}

Swift::Int sub_100006050()
{
  v1 = *v0;
  sub_100011FB4();
  sub_100011FC4(v1 + 10101);
  return sub_100011FD4();
}

Swift::Int sub_1000060D0(uint64_t a1)
{
  v2 = *v1;
  sub_100011FB4();
  sub_100011FC4(v2 + 10101);
  return sub_100011FD4();
}

uint64_t sub_100006118@<X0>(Swift::Int *a1@<X0>, MusicAppSelectionPFLPlugin::BiomeSQLRowAggregatorError_optional *a2@<X8>)
{
  result = _s26MusicAppSelectionPFLPlugin26BiomeSQLRowAggregatorErrorO8rawValueACSgSi_tcfC_0(*a1);
  a2->value = result;
  return result;
}

Swift::Int sub_100006194()
{
  v1 = *v0;
  sub_100011FB4();
  sub_100011FC4(v1 + 10201);
  return sub_100011FD4();
}

Swift::Int sub_100006214(uint64_t a1)
{
  v2 = *v1;
  sub_100011FB4();
  sub_100011FC4(v2 + 10201);
  return sub_100011FD4();
}

uint64_t sub_10000625C@<X0>(Swift::Int *a1@<X0>, MusicAppSelectionPFLPlugin::ModelTrainerError_optional *a2@<X8>)
{
  result = _s26MusicAppSelectionPFLPlugin17ModelTrainerErrorO8rawValueACSgSi_tcfC_0(*a1);
  a2->value = result;
  return result;
}

Swift::Int sub_1000062CC()
{
  v1 = *v0;
  sub_100011FB4();
  if (v1)
  {
    v2 = 10302;
  }

  else
  {
    v2 = 10301;
  }

  sub_100011FC4(v2);
  return sub_100011FD4();
}

void sub_10000631C()
{
  if (*v0)
  {
    v1 = 10302;
  }

  else
  {
    v1 = 10301;
  }

  sub_100011FC4(v1);
}

Swift::Int sub_100006354(uint64_t a1)
{
  v2 = *v1;
  sub_100011FB4();
  if (v2)
  {
    v3 = 10302;
  }

  else
  {
    v3 = 10301;
  }

  sub_100011FC4(v3);
  return sub_100011FD4();
}

void *sub_1000063A0@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 10302)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 10301)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_1000063C8(uint64_t *a1@<X8>)
{
  v2 = 10301;
  if (*v1)
  {
    v2 = 10302;
  }

  *a1 = v2;
}

Swift::Int sub_1000063F8()
{
  v1 = *v0;
  sub_100011FB4();
  sub_100011FC4(v1 + 10401);
  return sub_100011FD4();
}

Swift::Int sub_100006478(uint64_t a1)
{
  v2 = *v1;
  sub_100011FB4();
  sub_100011FC4(v2 + 10401);
  return sub_100011FD4();
}

uint64_t sub_1000064C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100006EDC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100006518(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v6 = sub_1000069D4();

  return Error<>._code.getter(a1, a2, v5, v6);
}

uint64_t _s26MusicAppSelectionPFLPlugin26BiomeSQLRowAggregatorErrorO8rawValueACSgSi_tcfC_0(uint64_t a1)
{
  if ((a1 - 10101) >= 8)
  {
    return 8;
  }

  else
  {
    return a1 - 10101;
  }
}

uint64_t _s26MusicAppSelectionPFLPlugin17ModelTrainerErrorO8rawValueACSgSi_tcfC_0(uint64_t a1)
{
  if ((a1 - 10201) >= 5)
  {
    return 5;
  }

  else
  {
    return a1 - 10201;
  }
}

unint64_t sub_1000065A8()
{
  result = qword_10001CD20;
  if (!qword_10001CD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CD20);
  }

  return result;
}

unint64_t sub_100006600()
{
  result = qword_10001CD28;
  if (!qword_10001CD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CD28);
  }

  return result;
}

unint64_t sub_100006658()
{
  result = qword_10001CD30;
  if (!qword_10001CD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CD30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BiomeSQLRowAggregatorError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BiomeSQLRowAggregatorError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ModelTrainerError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ModelTrainerError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100006980()
{
  result = qword_10001CD38;
  if (!qword_10001CD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CD38);
  }

  return result;
}

unint64_t sub_1000069D4()
{
  result = qword_10001CD40;
  if (!qword_10001CD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CD40);
  }

  return result;
}

unint64_t sub_100006A28()
{
  result = qword_10001CD48;
  if (!qword_10001CD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CD48);
  }

  return result;
}

unint64_t sub_100006A7C()
{
  result = qword_10001CD50;
  if (!qword_10001CD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CD50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ModelEvaluationMetricType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ModelEvaluationMetricType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MusicAppSelectionPFLPluginRunnerError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MusicAppSelectionPFLPluginRunnerError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100006D88()
{
  result = qword_10001CD58;
  if (!qword_10001CD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CD58);
  }

  return result;
}

unint64_t sub_100006DE0()
{
  result = qword_10001CD60;
  if (!qword_10001CD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CD60);
  }

  return result;
}

unint64_t sub_100006E34()
{
  result = qword_10001CD68;
  if (!qword_10001CD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CD68);
  }

  return result;
}

unint64_t sub_100006E88()
{
  result = qword_10001CD70;
  if (!qword_10001CD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CD70);
  }

  return result;
}

uint64_t sub_100006EDC(uint64_t a1)
{
  if ((a1 - 10401) >= 6)
  {
    return 6;
  }

  else
  {
    return a1 - 10401;
  }
}

uint64_t sub_100006F1C()
{
  v0 = sub_100011B84();
  sub_100006F98(v0, qword_10001EA60);
  sub_1000019F0(v0, qword_10001EA60);
  return sub_100011B74();
}

uint64_t *sub_100006F98(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100006FFC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x8000000100013650;
      v3 = 0xD000000000000014;
    }

    else
    {
      v3 = 0x6E4563697274654DLL;
      v4 = 0xEE00676E69646F63;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x74654D6C65646F4DLL;
    }

    else
    {
      v3 = 0xD000000000000012;
    }

    if (v2)
    {
      v4 = 0xEF656D614E636972;
    }

    else
    {
      v4 = 0x8000000100013620;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v6 = 0x8000000100013650;
      if (v3 != 0xD000000000000014)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v6 = 0xEE00676E69646F63;
      if (v3 != 0x6E4563697274654DLL)
      {
LABEL_26:
        v7 = sub_100011F34();
        goto LABEL_27;
      }
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x74654D6C65646F4DLL;
    }

    else
    {
      v5 = 0xD000000000000012;
    }

    if (a2)
    {
      v6 = 0xEF656D614E636972;
    }

    else
    {
      v6 = 0x8000000100013620;
    }

    if (v3 != v5)
    {
      goto LABEL_26;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_26;
  }

  v7 = 1;
LABEL_27:

  return v7 & 1;
}

uint64_t sub_100007180(uint64_t a1, void *a2, double a3)
{
  v7 = sub_100011B34();
  v8 = *(v7 - 8);
  v10 = __chkstk_darwin(v7, v9);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v10, v13);
  v16 = &v74 - v15;
  v18 = __chkstk_darwin(v14, v17);
  v77 = &v74 - v19;
  __chkstk_darwin(v18, v20);
  v22 = &v74 - v21;
  sub_10000BFA4();
  v81 = v8;
  v82 = a1;
  v23 = *(v8 + 16);
  v83 = v7;
  v24 = v7;
  v25 = v23;
  v23(v22, a1, v24);
  v79 = a2;
  v78 = sub_10000B190(v22, a2);
  if (v3)
  {
    if (qword_10001C920 != -1)
    {
      swift_once();
    }

    v26 = sub_100011B84();
    sub_1000019F0(v26, qword_10001EA60);
    v27 = v77;
    v28 = v83;
    v25(v77, v82, v83);
    swift_errorRetain();
    v29 = sub_100011B64();
    v30 = sub_100011D54();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v84 = v78;
      *v31 = 136315394;
      sub_10000BFF0();
      v33 = sub_100011F24();
      v35 = v34;
      v36 = *(v81 + 8);
      v36(v27, v83);
      v37 = sub_100003904(v33, v35, &v84);

      *(v31 + 4) = v37;
      *(v31 + 12) = 2112;
      swift_errorRetain();
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 14) = v38;
      *v32 = v38;
      _os_log_impl(&_mh_execute_header, v29, v30, "Model init failed for %s with error: %@", v31, 0x16u);
      sub_1000055DC(v32);
      v28 = v83;

      sub_100001BEC(v78);
    }

    else
    {

      v36 = *(v81 + 8);
      v36(v27, v28);
    }

    v46 = v80;
    sub_10000BEFC();
    swift_allocError();
    *v47 = 0;
    swift_willThrow();

LABEL_18:
    v36(v82, v28);
    type metadata accessor for ModelTrainer();
    swift_deallocPartialClassInstance();
    return v46;
  }

  if (!v78 || (v39 = v12, (v40 = [v78 program]) == 0))
  {
    v28 = v83;
    if (qword_10001C920 != -1)
    {
      swift_once();
    }

    v48 = sub_100011B84();
    sub_1000019F0(v48, qword_10001EA60);
    v49 = v16;
    v25(v16, v82, v28);
    v50 = sub_100011B64();
    v51 = sub_100011D54();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v84 = v53;
      *v52 = 136315138;
      sub_10000BFF0();
      v54 = sub_100011F24();
      v56 = v55;
      v36 = *(v81 + 8);
      v36(v49, v83);
      v57 = sub_100003904(v54, v56, &v84);

      *(v52 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v50, v51, "No ML program found for %s", v52, 0xCu);
      sub_100001BEC(v53);

      v28 = v83;
    }

    else
    {

      v36 = *(v81 + 8);
      v36(v49, v28);
    }

    v46 = v80;
    sub_10000BEFC();
    swift_allocError();
    *v58 = 1;
    swift_willThrow();

    goto LABEL_18;
  }

  v41 = v40;
  v42 = objc_allocWithZone(MLProgramTrainer);
  v84 = 0;
  swift_unknownObjectRetain();
  v43 = [v42 initWithProgram:v41 learningRate:&v84 error:a3];
  v28 = v83;
  if (!v43)
  {
    v60 = v84;
    v61 = sub_100011AB4();

    swift_willThrow();
    swift_unknownObjectRelease();
    if (qword_10001C920 != -1)
    {
      swift_once();
    }

    v62 = sub_100011B84();
    sub_1000019F0(v62, qword_10001EA60);
    v25(v39, v82, v28);
    swift_errorRetain();
    v63 = sub_100011B64();
    v64 = sub_100011D54();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v77 = v61;
      v66 = v65;
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v84 = v76;
      *v66 = 136315394;
      sub_10000BFF0();
      v67 = sub_100011F24();
      v69 = v68;
      v36 = *(v81 + 8);
      v36(v39, v83);
      v70 = sub_100003904(v67, v69, &v84);

      *(v66 + 4) = v70;
      *(v66 + 12) = 2112;
      swift_errorRetain();
      v71 = _swift_stdlib_bridgeErrorToNSError();
      *(v66 + 14) = v71;
      v72 = v75;
      *v75 = v71;
      _os_log_impl(&_mh_execute_header, v63, v64, "ML program trainer init failed for %s: %@", v66, 0x16u);
      sub_1000055DC(v72);
      v28 = v83;

      sub_100001BEC(v76);
    }

    else
    {

      v36 = *(v81 + 8);
      v36(v39, v28);
    }

    v46 = v80;
    sub_10000BEFC();
    swift_allocError();
    *v73 = 1;
    swift_willThrow();

    swift_unknownObjectRelease();
    goto LABEL_18;
  }

  v44 = v43;
  v45 = v84;
  swift_unknownObjectRelease();
  (*(v81 + 8))(v82, v28);

  swift_unknownObjectRelease();
  v46 = v80;
  *(v80 + 16) = v44;
  return v46;
}

void sub_100007AB4(int a1, void *a2, uint64_t a3)
{
  v5 = v3;
  v8 = sub_100007E1C(a3);
  v9 = v4;
  sub_10000B2F0(v8);

  if (qword_10001C920 != -1)
  {
    swift_once();
  }

  v10 = sub_100011B84();
  sub_1000019F0(v10, qword_10001EA60);
  swift_unknownObjectRetain();
  v11 = sub_100011B64();
  v12 = sub_100011D34();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134218240;
    *(v13 + 4) = [a2 count];
    swift_unknownObjectRelease();
    *(v13 + 12) = 1024;
    *(v13 + 14) = a1;
    _os_log_impl(&_mh_execute_header, v11, v12, "Training %ld for %u epochs.", v13, 0x12u);
    v9 = v4;
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v14 = *(v5 + 16);
  isa = sub_100011CE4().super.isa;
  v27 = 0;
  v16 = [v14 evaluateUsingTestData:a2 evaluationMetricNames:isa error:&v27];

  if (!v16)
  {
    v24 = v27;

    sub_100011AB4();

    swift_willThrow();
    return;
  }

  v17 = v27;
  v18 = [a2 count];
  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_19:
    __break(1u);
  }

  if (HIDWORD(v18))
  {
    goto LABEL_19;
  }

  v26 = v9;
  if (a1)
  {
    while (1)
    {
      v27 = 0;
      v19 = [v14 trainUsingTrainingData:a2 error:{&v27, v26}];
      v20 = v27;
      if (!v19)
      {
        break;
      }

      if (!--a1)
      {
        goto LABEL_12;
      }
    }

    v25 = v20;
  }

  else
  {
LABEL_12:
    v21 = sub_100011CE4().super.isa;

    v27 = 0;
    v22 = [v14 evaluateUsingTestData:a2 evaluationMetricNames:v21 error:&v27];

    if (v22)
    {
      v23 = v27;

      return;
    }

    v25 = v27;
  }

  sub_100011AB4();

  swift_willThrow();
}

void *sub_100007E1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000AE20(0, v1, 0);
  v3 = a1 + 56;
  result = sub_100011DC4();
  v5 = result;
  v6 = 0;
  v21 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v8 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v22 = *(a1 + 36);
    v9 = *(a1 + 48) + 40 * v5;
    v10 = *(v9 + 24);
    v23 = *(v9 + 16);
    v11 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];

    if (v11 >= v12 >> 1)
    {
      result = sub_10000AE20((v12 > 1), v11 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v11 + 1;
    v13 = &_swiftEmptyArrayStorage[2 * v11];
    v13[4] = v23;
    v13[5] = v10;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v3 = a1 + 56;
    v14 = *(a1 + 56 + 8 * v8);
    if ((v14 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v22 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v15 = v14 & (-2 << (v5 & 0x3F));
    if (v15)
    {
      v7 = __clz(__rbit64(v15)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = v8 << 6;
      v17 = v8 + 1;
      v18 = (a1 + 64 + 8 * v8);
      while (v17 < (v7 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_10000B388(v5, v22, 0);
          v7 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = sub_10000B388(v5, v22, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v21)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_100008048()
{

  return swift_deallocClassInstance();
}

Swift::Int sub_1000080B0()
{
  sub_100011FB4();
  sub_100011C24();

  return sub_100011FD4();
}

uint64_t sub_100008198(uint64_t a1)
{
  sub_100011C24();
}

Swift::Int sub_10000826C(uint64_t a1)
{
  sub_100011FB4();
  sub_100011C24();

  return sub_100011FD4();
}

unint64_t sub_100008350@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000B43C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100008380(unint64_t *a1@<X8>)
{
  v2 = 0xEF656D614E636972;
  v3 = 0x74654D6C65646F4DLL;
  v4 = 0x8000000100013650;
  v5 = 0xD000000000000014;
  if (*v1 != 2)
  {
    v5 = 0x6E4563697274654DLL;
    v4 = 0xEE00676E69646F63;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000012;
    v2 = 0x8000000100013620;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_100008424()
{
  v1 = 0x74654D6C65646F4DLL;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0x6E4563697274654DLL;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1000084C4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10000B43C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100008504(uint64_t a1)
{
  v2 = sub_10000C150();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100008540(uint64_t a1)
{
  v2 = sub_10000C150();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000857C(void *a1)
{
  v3 = v1;
  v5 = sub_100001A7C(&qword_10001CE88, &qword_100012F60);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v11[-v8];
  sub_100005DB8(a1, a1[3]);
  sub_10000C150();
  sub_100011FF4();
  v11[15] = 0;
  sub_100011EC4();
  if (!v2)
  {
    v11[14] = 1;
    sub_100011EC4();
    v11[13] = *(v3 + 32);
    v11[12] = 2;
    sub_10000C24C();
    sub_100011EF4();
    v11[11] = 3;
    sub_10000C2A0();
    sub_100011EF4();
  }

  return (*(v6 + 8))(v9, v5);
}

Swift::Int sub_1000087FC()
{
  sub_100011FB4();
  sub_100011C24();
  sub_100011C24();
  sub_100011C24();

  sub_100011C24();
  return sub_100011FD4();
}

uint64_t sub_1000088D0(uint64_t a1)
{
  sub_100011C24();
  sub_100011C24();
  sub_100011C24();

  return sub_100011C24();
}

Swift::Int sub_100008984(uint64_t a1)
{
  sub_100011FB4();
  sub_100011C24();
  sub_100011C24();
  sub_100011C24();

  sub_100011C24();
  return sub_100011FD4();
}

double sub_100008A54@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10000B488(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_100008AB4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x64656E69617254;
  }

  else
  {
    v3 = 0x656E696C65736142;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x64656E69617254;
  }

  else
  {
    v5 = 0x656E696C65736142;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100011F34();
  }

  return v8 & 1;
}

Swift::Int sub_100008B5C()
{
  sub_100011FB4();
  sub_100011C24();

  return sub_100011FD4();
}

uint64_t sub_100008BE0(uint64_t a1)
{
  sub_100011C24();
}

Swift::Int sub_100008C50(uint64_t a1)
{
  sub_100011FB4();
  sub_100011C24();

  return sub_100011FD4();
}

uint64_t sub_100008CD0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100018900;
  v8._object = v3;
  v5 = sub_100011E44(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_100008D30(uint64_t *a1@<X8>)
{
  v2 = 0x656E696C65736142;
  if (*v1)
  {
    v2 = 0x64656E69617254;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_100008E28()
{
  sub_100011FB4();
  sub_100011C24();
  return sub_100011FD4();
}

Swift::Int sub_100008E8C(uint64_t a1)
{
  sub_100011FB4();
  sub_100011C24();
  return sub_100011FD4();
}

uint64_t sub_100008ED8@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100018950;
  v7._object = v3;
  v5 = sub_100011E44(v4, v7);

  *a2 = v5 != 0;
  return result;
}

void *sub_100008FF4(unint64_t a1, void *a2, void *a3, unsigned int a4)
{
  v9 = sub_100005918(_swiftEmptyArrayStorage);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v80 = v9;
  sub_1000046EC(0x756F436863746142, 0xEA0000000000746ELL, isUniquelyReferenced_nonNull_native, a4);
  v11 = v9;
  v12 = [a2 evaluationMetrics];
  if (!v12)
  {
LABEL_6:
    if (qword_10001C920 != -1)
    {
      goto LABEL_64;
    }

    goto LABEL_7;
  }

  v13 = v12;
  v14 = [a3 evaluationMetrics];
  if (!v14)
  {
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  v15 = v14;
  v16 = sub_10000BA20(v13);
  if (v4)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_11:

    return v11;
  }

  v21 = v16;
  v75 = sub_10000BA20(v15);
  v23 = a1 + 56;
  v24 = 1 << *(a1 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(a1 + 56);
  v27 = (v24 + 63) >> 6;

  v28 = 0;
  v72 = v27;
  v73 = a1 + 56;
  v74 = a1;
  v77 = v21;
  while (v26)
  {
    v29 = v28;
LABEL_24:
    v30 = *(a1 + 48) + 40 * (__clz(__rbit64(v26)) | (v29 << 6));
    v31 = *(v30 + 8);
    v79 = *v30;
    v32 = *(v30 + 16);
    v33 = *(v30 + 24);
    v34 = *(v30 + 32);
    v35 = *(v21 + 16);
    swift_bridgeObjectRetain_n();
    v78 = v31;

    if (!v35)
    {

      goto LABEL_54;
    }

    v36 = sub_100003EAC(v32, v33);
    v38 = v37;

    if ((v38 & 1) == 0)
    {

LABEL_54:

LABEL_56:

LABEL_58:
      if (qword_10001C920 == -1)
      {
LABEL_59:
        v66 = sub_100011B84();
        sub_1000019F0(v66, qword_10001EA60);

        v67 = sub_100011B64();
        v68 = sub_100011D54();

        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          v80 = v70;
          *v69 = 136315138;

          v11 = sub_100003904(v32, v33, &v80);

          *(v69 + 4) = v11;
          _os_log_impl(&_mh_execute_header, v67, v68, "Baseline/Trained metric value not found for %s", v69, 0xCu);
          sub_100001BEC(v70);
        }

        else
        {
        }

        sub_10000BEFC();
        swift_allocError();
        *v71 = 4;
        swift_willThrow();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_11;
      }

LABEL_69:
      swift_once();
      goto LABEL_59;
    }

    if (!*(v75 + 16))
    {

      goto LABEL_56;
    }

    v39 = *(*(v77 + 56) + 4 * v36);

    v40 = sub_100003EAC(v32, v33);
    v41 = v33;
    v33 = v42;
    v43 = v41;

    if ((v33 & 1) == 0)
    {

      v33 = v43;
      goto LABEL_58;
    }

    v26 &= v26 - 1;
    v44 = *(*(v75 + 56) + 4 * v40);
    v76 = swift_isUniquelyReferenced_nonNull_native();
    if (v34)
    {
      v80 = v11;
      v32 = v78;
      v45 = sub_100003EAC(v79, v78);
      v47 = v11[2];
      v48 = (v46 & 1) == 0;
      v49 = __OFADD__(v47, v48);
      v50 = v47 + v48;
      if (v49)
      {
        goto LABEL_66;
      }

      v51 = v46;
      if (v11[3] >= v50)
      {
        v21 = v77;
        if (v76)
        {
          v11 = v80;
          if (v46)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v65 = v45;
          sub_1000049A4();
          v45 = v65;
          v21 = v77;
          v32 = v78;
          v11 = v80;
          if (v51)
          {
            goto LABEL_43;
          }
        }
      }

      else
      {
        sub_1000042FC(v50, v76);
        v45 = sub_100003EAC(v79, v78);
        if ((v51 & 1) != (v52 & 1))
        {
          goto LABEL_70;
        }

        v21 = v77;
        v11 = v80;
        if (v51)
        {
LABEL_43:
          *(v11[7] + 4 * v45) = v44;

          goto LABEL_17;
        }
      }

      v11[(v45 >> 6) + 8] |= 1 << v45;
      v53 = (v11[6] + 16 * v45);
      *v53 = v79;
      v53[1] = v32;
      *(v11[7] + 4 * v45) = v44;

      v54 = v11[2];
      v49 = __OFADD__(v54, 1);
      v55 = v54 + 1;
      if (v49)
      {
        goto LABEL_67;
      }

      goto LABEL_47;
    }

    v80 = v11;
    v32 = sub_100003EAC(v79, v78);
    v57 = v11[2];
    v58 = (v56 & 1) == 0;
    v59 = v57 + v58;
    if (__OFADD__(v57, v58))
    {
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v60 = v56;
    if (v11[3] >= v59)
    {
      v21 = v77;
      if (v76)
      {
        goto LABEL_45;
      }

      sub_1000049A4();
    }

    else
    {
      sub_1000042FC(v59, v76);
      v61 = sub_100003EAC(v79, v78);
      if ((v60 & 1) != (v62 & 1))
      {
LABEL_70:
        result = sub_100011F54();
        __break(1u);
        return result;
      }

      v32 = v61;
    }

    v21 = v77;
LABEL_45:
    v11 = v80;
    if (v60)
    {
      *(v80[7] + 4 * v32) = v39;

LABEL_17:

      goto LABEL_18;
    }

    v80[(v32 >> 6) + 8] |= 1 << v32;
    v63 = (v11[6] + 16 * v32);
    *v63 = v79;
    v63[1] = v78;
    *(v11[7] + 4 * v32) = v39;

    v64 = v11[2];
    v49 = __OFADD__(v64, 1);
    v55 = v64 + 1;
    if (v49)
    {
      goto LABEL_68;
    }

LABEL_47:
    v11[2] = v55;
LABEL_18:
    v28 = v29;
    v23 = v73;
    a1 = v74;
    v27 = v72;
  }

  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v29 >= v27)
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v11;
    }

    v26 = *(v23 + 8 * v29);
    ++v28;
    if (v26)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_64:
  swift_once();
LABEL_7:
  v17 = sub_100011B84();
  sub_1000019F0(v17, qword_10001EA60);
  v18 = sub_100011B64();
  v19 = sub_100011D44();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Evaluation metrics are nil.", v20, 2u);
  }

  return v11;
}

uint64_t sub_1000097A8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_100011FB4();
  sub_100011C24();
  v8 = sub_100011FD4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_100011F34() & 1) != 0)
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

    sub_10000A18C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1000098F8(uint64_t a1, uint64_t *a2)
{
  v3 = 0x656E696C65736142;
  v4 = *v2;
  v6 = *a2;
  v5 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v9 = *(a2 + 32);
  sub_100011FB4();
  sub_100011C24();
  v39 = v8;
  sub_100011C24();
  if (v9)
  {
    v3 = 0x64656E69617254;
    v10 = 0xE700000000000000;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  sub_100011C24();

  sub_100011C24();
  v11 = sub_100011FD4();
  v37 = v4 + 56;
  v38 = v4;
  v12 = -1 << *(v4 + 32);
  v13 = v11 & ~v12;
  if (((*(v4 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_29:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = *v33;

    sub_10000A30C(a2, v13, isUniquelyReferenced_nonNull_native);
    *v33 = v40;
    v26 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v26;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }

  v36 = v3;
  v14 = ~v12;
  while (1)
  {
    v15 = *(v38 + 48) + 40 * v13;
    v16 = *(v15 + 16);
    v17 = *(v15 + 24);
    v18 = *(v15 + 32);
    v19 = *v15 == v6 && *(v15 + 8) == v5;
    if (!v19 && (sub_100011F34() & 1) == 0)
    {
      goto LABEL_6;
    }

    v20 = v16 == v39 && v17 == v7;
    if (!v20 && (sub_100011F34() & 1) == 0)
    {
      goto LABEL_6;
    }

    v21 = v18 ? 0x64656E69617254 : 0x656E696C65736142;
    v22 = v18 ? 0xE700000000000000 : 0xE800000000000000;
    if (v21 == v36 && v22 == v10)
    {
      break;
    }

    v24 = sub_100011F34();

    if (v24)
    {
      goto LABEL_31;
    }

LABEL_6:
    v13 = (v13 + 1) & v14;
    if (((*(v37 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_29;
    }
  }

LABEL_31:

  v28 = *(v38 + 48) + 40 * v13;
  v29 = *(v28 + 32);
  v30 = *(v28 + 16);
  v31 = *(v28 + 24);
  v32 = *(v28 + 8);
  *a1 = *v28;
  *(a1 + 8) = v32;
  *(a1 + 16) = v30;
  *(a1 + 24) = v31;
  *(a1 + 32) = v29;

  return 0;
}

uint64_t sub_100009C20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001A7C(&qword_10001CE28, &qword_100012E38);
  result = sub_100011DE4();
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
      sub_100011FB4();
      sub_100011C24();
      result = sub_100011FD4();
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

uint64_t sub_100009E80(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001A7C(&qword_10001CE48, &qword_100012E50);
  result = sub_100011DE4();
  v5 = result;
  if (*(v3 + 16))
  {
    v32 = v1;
    v33 = v3;
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
      v34 = (v10 - 1) & v10;
LABEL_15:
      v18 = *(v3 + 48) + 40 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      v23 = *(v18 + 32);
      sub_100011FB4();
      sub_100011C24();
      sub_100011C24();
      sub_100011C24();

      sub_100011C24();
      result = sub_100011FD4();
      v24 = -1 << *(v5 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 40 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      *(v14 + 24) = v22;
      *(v14 + 32) = v23;
      ++*(v5 + 16);
      v3 = v33;
      v10 = v34;
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
        v34 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v7, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_10000A18C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_100009C20(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10000A628();
      goto LABEL_16;
    }

    sub_10000A8FC(v8 + 1);
  }

  v10 = *v4;
  sub_100011FB4();
  sub_100011C24();
  result = sub_100011FD4();
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

      result = sub_100011F34();
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
  result = sub_100011F44();
  __break(1u);
  return result;
}

uint64_t sub_10000A30C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v37 = result;
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100009E80(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_10000A784();
        goto LABEL_39;
      }

      sub_10000AB34(v6 + 1);
    }

    v8 = *v3;
    v9 = *v5;
    v10 = *(v5 + 8);
    v11 = *(v5 + 16);
    v12 = *(v5 + 24);
    v13 = *(v5 + 32);
    sub_100011FB4();
    sub_100011C24();
    v40 = v12;
    sub_100011C24();
    v14 = v13 == 0;
    if (v13)
    {
      v15 = 0x64656E69617254;
    }

    else
    {
      v15 = 0x656E696C65736142;
    }

    if (v14)
    {
      v16 = 0xE800000000000000;
    }

    else
    {
      v16 = 0xE700000000000000;
    }

    sub_100011C24();

    sub_100011C24();
    result = sub_100011FD4();
    v17 = v8 + 56;
    v39 = v8;
    v18 = -1 << *(v8 + 32);
    a2 = result & ~v18;
    if ((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v38 = v15;
      v19 = ~v18;
      do
      {
        v20 = *(v39 + 48) + 40 * a2;
        v21 = *(v20 + 16);
        v22 = *(v20 + 24);
        v23 = *(v20 + 32);
        v24 = *v20 == v9 && *(v20 + 8) == v10;
        if (v24 || (result = sub_100011F34(), (result & 1) != 0))
        {
          v25 = v21 == v11 && v22 == v40;
          if (v25 || (result = sub_100011F34(), (result & 1) != 0))
          {
            if (v23)
            {
              v26 = 0x64656E69617254;
            }

            else
            {
              v26 = 0x656E696C65736142;
            }

            if (v23)
            {
              v27 = 0xE700000000000000;
            }

            else
            {
              v27 = 0xE800000000000000;
            }

            if (v26 == v38 && v27 == v16)
            {
              goto LABEL_42;
            }

            v29 = sub_100011F34();

            if (v29)
            {
              goto LABEL_43;
            }
          }
        }

        a2 = (a2 + 1) & v19;
      }

      while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_39:
  v30 = *v36;
  *(*v36 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v31 = *(v30 + 48) + 40 * a2;
  v32 = *(v37 + 16);
  *v31 = *v37;
  *(v31 + 16) = v32;
  *(v31 + 32) = *(v37 + 32);
  v33 = *(v30 + 16);
  v34 = __OFADD__(v33, 1);
  v35 = v33 + 1;
  if (v34)
  {
    __break(1u);
LABEL_42:

LABEL_43:

    result = sub_100011F44();
    __break(1u);
  }

  else
  {
    *(v30 + 16) = v35;
  }

  return result;
}

void *sub_10000A628()
{
  v1 = v0;
  sub_100001A7C(&qword_10001CE28, &qword_100012E38);
  v2 = *v0;
  v3 = sub_100011DD4();
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

void *sub_10000A784()
{
  v1 = v0;
  sub_100001A7C(&qword_10001CE48, &qword_100012E50);
  v2 = *v0;
  v3 = sub_100011DD4();
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
        v17 = 40 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        LOBYTE(v18) = *(v18 + 32);
        v23 = *(v4 + 48) + v17;
        *v23 = v20;
        *(v23 + 8) = v19;
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
        *(v23 + 32) = v18;
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

uint64_t sub_10000A8FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001A7C(&qword_10001CE28, &qword_100012E38);
  result = sub_100011DE4();
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
      sub_100011FB4();

      sub_100011C24();
      result = sub_100011FD4();
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

uint64_t sub_10000AB34(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001A7C(&qword_10001CE48, &qword_100012E50);
  result = sub_100011DE4();
  v5 = result;
  if (*(v3 + 16))
  {
    v31 = v1;
    v32 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
      v33 = (v10 - 1) & v10;
LABEL_15:
      v18 = *(v3 + 48) + 40 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      v23 = *(v18 + 32);
      sub_100011FB4();

      sub_100011C24();
      sub_100011C24();
      sub_100011C24();

      sub_100011C24();
      result = sub_100011FD4();
      v24 = -1 << *(v5 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 40 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      v10 = v33;
      *(v14 + 16) = v21;
      *(v14 + 24) = v22;
      *(v14 + 32) = v23;
      ++*(v5 + 16);
      v3 = v32;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v31;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v33 = (v17 - 1) & v17;
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

char *sub_10000AE20(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000AF74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10000AE40(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100001A7C(&qword_10001CCD0, &qword_100012890);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100001A7C(&qword_10001CCC0, &qword_100012880);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10000AF74(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001A7C(&qword_10001CE30, &unk_100012E40);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10000B080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  if (a1 == a6 && a2 == a7 || (sub_100011F34()) && (a3 == a8 && a4 == a9 || (sub_100011F34()))
  {
    if (a5)
    {
      v14 = 0x64656E69617254;
    }

    else
    {
      v14 = 0x656E696C65736142;
    }

    if (a5)
    {
      v15 = 0xE700000000000000;
    }

    else
    {
      v15 = 0xE800000000000000;
    }

    if (a10)
    {
      v16 = 0x64656E69617254;
    }

    else
    {
      v16 = 0x656E696C65736142;
    }

    if (a10)
    {
      v17 = 0xE700000000000000;
    }

    else
    {
      v17 = 0xE800000000000000;
    }

    if (v14 == v16 && v15 == v17)
    {
      v18 = 1;
    }

    else
    {
      v18 = sub_100011F34();
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

id sub_10000B190(uint64_t a1, uint64_t a2)
{
  sub_100011AE4(__stack_chk_guard);
  v5 = v4;
  v14 = 0;
  v6 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v4 configuration:a2 error:&v14];

  v7 = v14;
  if (v6)
  {
    v8 = sub_100011B34();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    sub_100011AB4();

    swift_willThrow();
    v12 = sub_100011B34();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

uint64_t sub_10000B2F0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_100011D04();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1000097A8(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10000B388(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_10000B394(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10000BF50();
  result = sub_100011D04();
  v11 = result;
  if (v2)
  {
    v4 = (a1 + 64);
    do
    {
      v6 = *(v4 - 4);
      v5 = *(v4 - 3);
      v7 = *(v4 - 2);
      v8 = *(v4 - 1);
      v9 = *v4;
      v4 += 40;
      v12[0] = v6;
      v12[1] = v5;
      v12[2] = v7;
      v12[3] = v8;
      v13 = v9;

      sub_1000098F8(v10, v12);

      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

unint64_t sub_10000B43C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100018880;
  v6._object = a2;
  v4 = sub_100011E44(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10000B488@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100001A7C(&qword_10001CE68, &qword_100012F58);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v16 - v8;
  sub_100005DB8(a1, a1[3]);
  sub_10000C150();
  sub_100011FE4();
  if (v2)
  {
    return sub_100001BEC(a1);
  }

  v24 = 0;
  v10 = sub_100011E64();
  v12 = v11;
  v19 = v10;
  v23 = 1;
  v17 = sub_100011E64();
  v18 = v13;
  v21 = 2;
  sub_10000C1A4();
  sub_100011E94();
  HIDWORD(v16) = v22;
  v20 = 3;
  sub_10000C1F8();
  sub_100011E94();
  (*(v6 + 8))(v9, v5);
  result = sub_100001BEC(a1);
  *a2 = v19;
  *(a2 + 8) = v12;
  v15 = v18;
  *(a2 + 16) = v17;
  *(a2 + 24) = v15;
  *(a2 + 32) = BYTE4(v16);
  return result;
}

void sub_10000B728(void *a1)
{
  v2 = [a1 type];
  if (v2 == 1)
  {
    [a1 int64Value];
    return;
  }

  if (v2 == 5)
  {
    v3 = [a1 multiArrayValue];
    if (v3)
    {
      v4 = v3;
      if ([v3 count] == 1)
      {
        v5 = [v4 objectAtIndexedSubscript:0];
        [v5 floatValue];

        return;
      }
    }

    if (qword_10001C920 != -1)
    {
      swift_once();
    }

    v14 = sub_100011B84();
    sub_1000019F0(v14, qword_10001EA60);
    v15 = a1;
    v8 = sub_100011B64();
    v9 = sub_100011D54();

    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_19;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v15;
    *v11 = v15;
    v16 = v15;
    v13 = "Feature value not scalar: %@";
  }

  else
  {
    if (v2 == 2)
    {
      [a1 doubleValue];
      return;
    }

    if (qword_10001C920 != -1)
    {
      swift_once();
    }

    v6 = sub_100011B84();
    sub_1000019F0(v6, qword_10001EA60);
    v7 = a1;
    v8 = sub_100011B64();
    v9 = sub_100011D54();

    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_19;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    v13 = "Invalid feature value %@";
  }

  _os_log_impl(&_mh_execute_header, v8, v9, v13, v10, 0xCu);
  sub_1000055DC(v11);

LABEL_19:

  sub_10000BEFC();
  swift_allocError();
  *v17 = 3;
  swift_willThrow();
}

uint64_t sub_10000BA20(void *a1)
{
  v3 = v1;
  isUniquelyReferenced_nonNull_native = sub_100005918(_swiftEmptyArrayStorage);
  v50 = a1;
  v6 = [a1 count];
  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    swift_once();
LABEL_31:
    v40 = sub_100011B84();
    sub_1000019F0(v40, qword_10001EA60);

    v41 = sub_100011B64();
    v42 = sub_100011D54();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = isUniquelyReferenced_nonNull_native;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v56 = v45;
      *v44 = 136315138;
      v46 = sub_100003904(v55, v2, &v56);

      *(v44 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v41, v42, "Couldn't find feature value for %s", v44, 0xCu);
      sub_100001BEC(v45);

      isUniquelyReferenced_nonNull_native = v43;
    }

    else
    {
    }

    sub_10000BEFC();
    swift_allocError();
    *v47 = 2;
    swift_willThrow();

    swift_unknownObjectRelease();
LABEL_36:

    return isUniquelyReferenced_nonNull_native;
  }

  if (v6)
  {
    v7 = 0;
    v49 = v6;
LABEL_5:
    v51 = v7 + 1;
    v54 = [v50 featuresAtIndex:v49];
    v8 = [v54 featureNames];
    v9 = sub_100011CF4();

    v10 = 0;
    v11 = v9 + 56;
    v12 = 1 << *(v9 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v9 + 56);
    v15 = (v12 + 63) >> 6;
    v52 = v15;
    v53 = v9;
    while (1)
    {
      if (!v14)
      {
        while (1)
        {
          v16 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
            goto LABEL_39;
          }

          if (v16 >= v15)
          {
            break;
          }

          v14 = *(v11 + 8 * v16);
          ++v10;
          if (v14)
          {
            goto LABEL_16;
          }
        }

        swift_unknownObjectRelease();
        v7 = v51;
        if (v51 == v49)
        {
          return isUniquelyReferenced_nonNull_native;
        }

        goto LABEL_5;
      }

      v16 = v10;
LABEL_16:
      v17 = (*(v53 + 48) + ((v16 << 10) | (16 * __clz(__rbit64(v14)))));
      v18 = *v17;
      v2 = v17[1];

      v55 = v18;
      v19 = sub_100011BE4();
      v20 = [v54 featureValueForName:v19];

      if (!v20)
      {
        break;
      }

      v21 = 0.0;
      if (*(isUniquelyReferenced_nonNull_native + 16))
      {
        v22 = sub_100003EAC(v18, v2);
        if (v23)
        {
          v21 = *(*(isUniquelyReferenced_nonNull_native + 56) + 4 * v22);
        }
      }

      sub_10000B728(v20);
      if (v3)
      {

        swift_unknownObjectRelease();

        goto LABEL_36;
      }

      v25 = v24;
      v26 = isUniquelyReferenced_nonNull_native;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = v26;
      v28 = sub_100003EAC(v18, v2);
      v29 = *(v26 + 16);
      v30 = (v27 & 1) == 0;
      v31 = v29 + v30;
      if (__OFADD__(v29, v30))
      {
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v32 = v27;
      if (*(v26 + 24) >= v31)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000049A4();
        }
      }

      else
      {
        sub_1000042FC(v31, isUniquelyReferenced_nonNull_native);
        v33 = sub_100003EAC(v18, v2);
        if ((v32 & 1) != (v34 & 1))
        {
          result = sub_100011F54();
          __break(1u);
          return result;
        }

        v28 = v33;
      }

      v14 &= v14 - 1;
      v35 = v21 + v25;
      if (v32)
      {

        isUniquelyReferenced_nonNull_native = v56;
        *(v56[7] + 4 * v28) = v35;
      }

      else
      {
        isUniquelyReferenced_nonNull_native = v56;
        v56[(v28 >> 6) + 8] |= 1 << v28;
        v36 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v28);
        *v36 = v18;
        v36[1] = v2;
        *(*(isUniquelyReferenced_nonNull_native + 56) + 4 * v28) = v35;

        v37 = *(isUniquelyReferenced_nonNull_native + 16);
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          goto LABEL_40;
        }

        *(isUniquelyReferenced_nonNull_native + 16) = v39;
      }

      v10 = v16;
      v3 = 0;
      v15 = v52;
    }

    if (qword_10001C920 != -1)
    {
      goto LABEL_42;
    }

    goto LABEL_31;
  }

  return isUniquelyReferenced_nonNull_native;
}

unint64_t sub_10000BEFC()
{
  result = qword_10001CE38;
  if (!qword_10001CE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CE38);
  }

  return result;
}

unint64_t sub_10000BF50()
{
  result = qword_10001CE40;
  if (!qword_10001CE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CE40);
  }

  return result;
}

unint64_t sub_10000BFA4()
{
  result = qword_10001CE50;
  if (!qword_10001CE50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001CE50);
  }

  return result;
}

unint64_t sub_10000BFF0()
{
  result = qword_10001CE58;
  if (!qword_10001CE58)
  {
    sub_100011B34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CE58);
  }

  return result;
}

__n128 sub_10000C048(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000C05C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_10000C0A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10000C0FC()
{
  result = qword_10001CE60;
  if (!qword_10001CE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CE60);
  }

  return result;
}

unint64_t sub_10000C150()
{
  result = qword_10001CE70;
  if (!qword_10001CE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CE70);
  }

  return result;
}

unint64_t sub_10000C1A4()
{
  result = qword_10001CE78;
  if (!qword_10001CE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CE78);
  }

  return result;
}

unint64_t sub_10000C1F8()
{
  result = qword_10001CE80;
  if (!qword_10001CE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CE80);
  }

  return result;
}

unint64_t sub_10000C24C()
{
  result = qword_10001CE90;
  if (!qword_10001CE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CE90);
  }

  return result;
}

unint64_t sub_10000C2A0()
{
  result = qword_10001CE98;
  if (!qword_10001CE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CE98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ModelEvaluationMetricSpecs.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ModelEvaluationMetricSpecs.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for MetricEncoding(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MetricEncoding(_WORD *result, int a2, int a3)
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

unint64_t sub_10000C540()
{
  result = qword_10001CEA0;
  if (!qword_10001CEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CEA0);
  }

  return result;
}

unint64_t sub_10000C598()
{
  result = qword_10001CEA8;
  if (!qword_10001CEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CEA8);
  }

  return result;
}

unint64_t sub_10000C5F0()
{
  result = qword_10001CEB0;
  if (!qword_10001CEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CEB0);
  }

  return result;
}

unint64_t sub_10000C648()
{
  result = qword_10001CEB8;
  if (!qword_10001CEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CEB8);
  }

  return result;
}

unint64_t sub_10000C6A0()
{
  result = qword_10001CEC0;
  if (!qword_10001CEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CEC0);
  }

  return result;
}

unint64_t sub_10000C6F4()
{
  result = qword_10001CEC8;
  if (!qword_10001CEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CEC8);
  }

  return result;
}

unint64_t sub_10000C748()
{
  result = qword_10001CED0;
  if (!qword_10001CED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CED0);
  }

  return result;
}

id MusicAppSelectionPFLPlugin.perform(_:)(void *a1)
{
  v2 = v1;
  type metadata accessor for MusicAppSelectionPFLPluginRunner();
  swift_allocObject();
  sub_10000E94C(a1);
  if (!v1)
  {
    v2 = sub_10000F310();
  }

  return v2;
}

id MusicAppSelectionPFLPlugin.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MusicAppSelectionPFLPlugin.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MusicAppSelectionPFLPlugin();
  return objc_msgSendSuper2(&v2, "init");
}

id MusicAppSelectionPFLPlugin.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MusicAppSelectionPFLPlugin();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void _s26MusicAppSelectionPFLPluginAAC4stopyyF_0()
{
  if (qword_10001C920 != -1)
  {
    swift_once();
  }

  v0 = sub_100011B84();
  sub_1000019F0(v0, qword_10001EA60);
  oslog = sub_100011B64();
  v1 = sub_100011D44();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "MusicAppSelectionPFLPlugin requested to stop.", v2, 2u);
  }
}

__n128 sub_10000CAF0(uint64_t a1, __int128 *a2)
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
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_10000CB24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_10000CB6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
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
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10000CBE8(char a1)
{
  result = 0x676E696E7261654CLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x706E496C65646F4DLL;
      break;
    case 3:
      result = 0x62614C6C65646F4DLL;
      break;
    case 4:
      result = 0x4E65727574616546;
      break;
    case 5:
      result = 0x4365727574616546;
      break;
    case 6:
      result = 0x6546746567726154;
      break;
    case 7:
    case 12:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x6D614E6C65646F4DLL;
      break;
    case 11:
      result = 0xD00000000000001ALL;
      break;
    case 13:
    case 14:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10000CE00(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10000CBE8(*a1);
  v5 = v4;
  if (v3 == sub_10000CBE8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100011F34();
  }

  return v8 & 1;
}

Swift::Int sub_10000CE88()
{
  v1 = *v0;
  sub_100011FB4();
  sub_10000CBE8(v1);
  sub_100011C24();

  return sub_100011FD4();
}

uint64_t sub_10000CEEC(uint64_t a1)
{
  sub_10000CBE8(*v1);
  sub_100011C24();
}

Swift::Int sub_10000CF40(uint64_t a1)
{
  v2 = *v1;
  sub_100011FB4();
  sub_10000CBE8(v2);
  sub_100011C24();

  return sub_100011FD4();
}

unint64_t sub_10000CFA0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000DAE4(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_10000CFD0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10000CBE8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10000D018@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10000DAE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10000D04C(uint64_t a1)
{
  v2 = sub_10000E368();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000D088(uint64_t a1)
{
  v2 = sub_10000E368();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000D0C4(void *a1)
{
  v3 = v1;
  v5 = sub_100001A7C(&qword_10001D008, &unk_1000133E8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v11 - v8;
  sub_100005DB8(a1, a1[3]);
  sub_10000E368();
  sub_100011FF4();
  LOBYTE(v12) = 0;
  sub_100011ED4();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_100011F04();
    LOBYTE(v12) = 2;
    sub_100011EC4();
    LOBYTE(v12) = 3;
    sub_100011EC4();
    v12 = *(v3 + 40);
    HIBYTE(v11) = 4;
    sub_100001A7C(&qword_10001CFE0, &qword_1000133D8);
    sub_10000E4C0(&qword_10001D010, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_100011EF4();
    LOBYTE(v12) = 5;
    sub_100011F04();
    LOBYTE(v12) = 6;
    sub_100011EC4();
    LOBYTE(v12) = 7;
    sub_100011EC4();
    LOBYTE(v12) = 8;
    sub_100011EE4();
    LOBYTE(v12) = 9;
    sub_100011EE4();
    LOBYTE(v12) = 10;
    sub_100011EC4();
    v12 = *(v3 + 120);
    HIBYTE(v11) = 11;
    sub_100001A7C(&qword_10001CFF0, &qword_1000133E0);
    sub_10000E52C(&qword_10001D018, sub_10000E5A4, &protocol conformance descriptor for <A> [A]);
    sub_100011EF4();
    LOBYTE(v12) = 12;
    sub_100011EC4();
    LOBYTE(v12) = 13;
    sub_100011EB4();
    LOBYTE(v12) = 14;
    sub_100011EB4();
  }

  return (*(v6 + 8))(v9, v5);
}

__n128 sub_10000D4C0@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10000DB30(a2, v9);
  if (!v2)
  {
    v5 = v9[9];
    *(a1 + 128) = v9[8];
    *(a1 + 144) = v5;
    *(a1 + 160) = v9[10];
    v6 = v9[5];
    *(a1 + 64) = v9[4];
    *(a1 + 80) = v6;
    v7 = v9[7];
    *(a1 + 96) = v9[6];
    *(a1 + 112) = v7;
    v8 = v9[1];
    *a1 = v9[0];
    *(a1 + 16) = v8;
    result = v9[3];
    *(a1 + 32) = v9[2];
    *(a1 + 48) = result;
  }

  return result;
}

void sub_10000D53C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = objc_opt_self();
  v6 = [a1 parameters];
  v7 = [v6 dictionaryRepresentation];

  sub_100011BC4();
  isa = sub_100011BB4().super.isa;

  *&v51 = 0;
  v9 = [v5 dataWithJSONObject:isa options:0 error:&v51];

  v10 = v51;
  if (!v9)
  {
    v14 = v10;
    sub_100011AB4();

    swift_willThrow();
    goto LABEL_5;
  }

  v11 = sub_100011B54();
  v13 = v12;

  sub_100011A04();
  swift_allocObject();
  sub_1000119F4();
  sub_10000E64C();
  sub_1000119E4();
  if (v2)
  {
    sub_10000E6A0(v11, v13);

LABEL_5:
    if (qword_10001C920 != -1)
    {
      swift_once();
    }

    v15 = sub_100011B84();
    sub_1000019F0(v15, qword_10001EA60);
    swift_errorRetain();
    v16 = sub_100011B64();
    v17 = sub_100011D54();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      swift_errorRetain();
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v20;
      *v19 = v20;
      _os_log_impl(&_mh_execute_header, v16, v17, "Couldn't form MusicAppSelectionPFLPluginArgs: %@", v18, 0xCu);
      sub_1000055DC(v19);
    }

    sub_10000E5F8();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();

    return;
  }

  sub_10000E6A0(v11, v13);

  v50 = v51;
  v22 = v56;
  v48 = v57;
  v49 = v58;
  v47 = v63;
  v46 = v62;
  v23 = *(v55 + 16);
  v44 = v67;
  v45 = v64;
  if (v23 == v56)
  {
    v42 = v70;
    v43 = v71;
    v40 = v68;
    v41 = v69;
    v37 = v65;
    v38 = v66;
    v24 = v52;
    v25 = v54;
    v26 = v55;
    v27 = a1;
    v36 = v61;
    v28 = v59;
    v29 = v53;
    v30 = v60;

    *a2 = v50;
    *(a2 + 16) = v24;
    *(a2 + 24) = v29;
    *(a2 + 32) = v25;
    *(a2 + 40) = v26;
    *(a2 + 48) = v22;
    *(a2 + 52) = v48;
    *(a2 + 60) = v49;
    *(a2 + 64) = v28;
    *(a2 + 72) = v30;
    *(a2 + 80) = v36;
    *(a2 + 88) = v46;
    *(a2 + 104) = v47;
    *(a2 + 112) = v45;
    *(a2 + 120) = v37;
    *(a2 + 128) = v38;
    *(a2 + 136) = v44;
    *(a2 + 144) = v40;
    *(a2 + 152) = v41;
    *(a2 + 160) = v42;
    *(a2 + 168) = v43;
  }

  else
  {
    v39 = v56;
    if (qword_10001C920 != -1)
    {
      swift_once();
    }

    v31 = sub_100011B84();
    sub_1000019F0(v31, qword_10001EA60);
    v32 = sub_100011B64();
    v33 = sub_100011D54();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 134218240;
      *(v34 + 4) = v23;
      *(v34 + 12) = 1024;
      *(v34 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v32, v33, "Size of featureNames (%ld is not equal to featureCount (%u", v34, 0x12u);
    }

    sub_10000E5F8();
    swift_allocError();
    *v35 = 1;
    swift_willThrow();
  }
}

unint64_t sub_10000DAE4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100018988;
  v6._object = a2;
  v4 = sub_100011E44(v3, v6);

  if (v4 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10000DB30@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100001A7C(&qword_10001CFD0, &qword_1000133D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v37 - v8;
  v10 = a1[3];
  v57 = a1;
  sub_100005DB8(a1, v10);
  sub_10000E368();
  sub_100011FE4();
  if (v2)
  {
    return sub_100001BEC(v57);
  }

  LOBYTE(v69[0]) = 0;
  sub_100011E74();
  v12 = v11;
  LOBYTE(v69[0]) = 1;
  v13 = sub_100011EA4();
  LOBYTE(v69[0]) = 2;
  v15 = sub_100011E64();
  v55 = v16;
  LOBYTE(v69[0]) = 3;
  v17 = sub_100011E64();
  v54 = v18;
  v48 = v17;
  sub_100001A7C(&qword_10001CFE0, &qword_1000133D8);
  LOBYTE(v58) = 4;
  sub_10000E4C0(&qword_10001CFE8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  sub_100011E94();
  v53 = v69[0];
  LOBYTE(v69[0]) = 5;
  v47 = sub_100011EA4();
  LOBYTE(v69[0]) = 6;
  v46 = sub_100011E64();
  v52 = v19;
  LOBYTE(v69[0]) = 7;
  v45 = sub_100011E64();
  v51 = v20;
  LOBYTE(v69[0]) = 8;
  v44 = sub_100011E84();
  v56 = 0;
  LOBYTE(v69[0]) = 9;
  v43 = sub_100011E84();
  v56 = 0;
  LOBYTE(v69[0]) = 10;
  v41 = sub_100011E64();
  v42 = v21;
  v56 = 0;
  sub_100001A7C(&qword_10001CFF0, &qword_1000133E0);
  LOBYTE(v58) = 11;
  sub_10000E52C(&qword_10001CFF8, sub_10000E404, &protocol conformance descriptor for <A> [A]);
  v22 = v56;
  sub_100011E94();
  v56 = v22;
  if (v22)
  {
    (*(v6 + 8))(v9, v5);
    sub_100001BEC(v57);
  }

  else
  {
    v50 = v69[0];
    LOBYTE(v69[0]) = 12;
    v40 = sub_100011E64();
    v49 = v23;
    v56 = 0;
    LOBYTE(v69[0]) = 13;
    *&v39 = sub_100011E54();
    *(&v39 + 1) = v24;
    v56 = 0;
    v85[0] = 14;
    v25 = sub_100011E54();
    v37 = v26;
    v38 = v25;
    v56 = 0;
    (*(v6 + 8))(v9, v5);
    *&v58 = __PAIR64__(v13, v12);
    v28 = v54;
    v27 = v55;
    *(&v58 + 1) = v15;
    *&v59 = v55;
    *(&v59 + 1) = v48;
    *&v60 = v54;
    v29 = v52;
    *(&v60 + 1) = v53;
    LODWORD(v61) = v47;
    *(&v61 + 1) = v46;
    *&v62 = v52;
    v30 = v51;
    *(&v62 + 1) = v45;
    *&v63 = v51;
    *(&v63 + 1) = v44;
    *&v64 = v43;
    v31 = v42;
    *(&v64 + 1) = v41;
    *&v65 = v42;
    *(&v65 + 1) = v50;
    *&v66 = v40;
    *(&v66 + 1) = v49;
    v67 = v39;
    *&v68 = v38;
    *(&v68 + 1) = v37;
    sub_10000E458(&v58, v69);
    sub_100001BEC(v57);
    v69[0] = __PAIR64__(v13, v12);
    v69[1] = v15;
    v69[2] = v27;
    v69[3] = v48;
    v69[4] = v28;
    v69[5] = v53;
    v70 = v47;
    v71 = v46;
    v72 = v29;
    v73 = v45;
    v74 = v30;
    v75 = v44;
    v76 = v43;
    v77 = v41;
    v78 = v31;
    v79 = v50;
    v80 = v40;
    v81 = v49;
    v82 = v39;
    v83 = v38;
    v84 = v37;
    result = sub_10000E490(v69);
    v32 = v67;
    a2[8] = v66;
    a2[9] = v32;
    a2[10] = v68;
    v33 = v63;
    a2[4] = v62;
    a2[5] = v33;
    v34 = v65;
    a2[6] = v64;
    a2[7] = v34;
    v35 = v59;
    *a2 = v58;
    a2[1] = v35;
    v36 = v61;
    a2[2] = v60;
    a2[3] = v36;
  }

  return result;
}

unint64_t sub_10000E368()
{
  result = qword_10001CFD8;
  if (!qword_10001CFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CFD8);
  }

  return result;
}

uint64_t sub_10000E3BC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10000E404()
{
  result = qword_10001D000;
  if (!qword_10001D000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D000);
  }

  return result;
}

uint64_t sub_10000E4C0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000E3BC(&qword_10001CFE0, &qword_1000133D8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000E52C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000E3BC(&qword_10001CFF0, &qword_1000133E0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000E5A4()
{
  result = qword_10001D020;
  if (!qword_10001D020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D020);
  }

  return result;
}

unint64_t sub_10000E5F8()
{
  result = qword_10001D028;
  if (!qword_10001D028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D028);
  }

  return result;
}

unint64_t sub_10000E64C()
{
  result = qword_10001D030;
  if (!qword_10001D030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D030);
  }

  return result;
}

uint64_t sub_10000E6A0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t getEnumTagSinglePayload for MusicAppSelectionPFLPluginArgs.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MusicAppSelectionPFLPluginArgs.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000E848()
{
  result = qword_10001D038;
  if (!qword_10001D038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D038);
  }

  return result;
}

unint64_t sub_10000E8A0()
{
  result = qword_10001D040;
  if (!qword_10001D040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D040);
  }

  return result;
}

unint64_t sub_10000E8F8()
{
  result = qword_10001D048;
  if (!qword_10001D048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D048);
  }

  return result;
}

uint64_t sub_10000E94C(void *a1)
{
  v3 = v1;
  v5 = sub_100001A7C(&qword_10001D120, &unk_1000135A8);
  __chkstk_darwin(v5 - 8, v6);
  v73 = &v62 - v7;
  v8 = sub_100011B34();
  v9 = *(v8 - 8);
  v11 = __chkstk_darwin(v8, v10);
  v70 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v13);
  v71 = &v62 - v14;
  if (qword_10001C920 != -1)
  {
    swift_once();
  }

  v15 = sub_100011B84();
  v72 = sub_1000019F0(v15, qword_10001EA60);
  v16 = sub_100011B64();
  v17 = sub_100011D34();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Initialising MusicAppSelectionPFLPluginRunner.", v18, 2u);
  }

  v19 = a1;
  sub_10000D53C(v19, v75);
  if (v2)
  {

LABEL_14:
    type metadata accessor for MusicAppSelectionPFLPluginRunner();
    swift_deallocPartialClassInstance();
    return v3;
  }

  v62 = 0;
  v68 = (v3 + 16);
  v20 = v75[9];
  *(v3 + 144) = v75[8];
  *(v3 + 160) = v20;
  *(v3 + 176) = v75[10];
  v21 = v75[5];
  *(v3 + 80) = v75[4];
  *(v3 + 96) = v21;
  v22 = v75[7];
  *(v3 + 112) = v75[6];
  *(v3 + 128) = v22;
  v23 = v75[1];
  *(v3 + 16) = v75[0];
  *(v3 + 32) = v23;
  v24 = v75[3];
  *(v3 + 48) = v75[2];
  *(v3 + 64) = v24;
  type metadata accessor for BiomeSQLClient();
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = [objc_allocWithZone(BMSQLDatabase) init];
  *(v3 + 192) = v25;
  v66 = v9;
  v67 = v8;
  v27 = *(v3 + 24);
  v26 = *(v3 + 32);
  v28 = *(v3 + 40);
  v29 = *(v3 + 48);
  v30 = *(v3 + 96);
  v64 = *(v3 + 88);
  v65 = v28;
  v31 = *(v3 + 56);
  v63 = *(v3 + 72);
  v69 = v19;
  v32 = *(v3 + 80);
  type metadata accessor for BiomeSQLRowAggregator();
  v33 = swift_allocObject();
  v33[2] = sub_10000568C(_swiftEmptyArrayStorage);
  v33[3] = v27;
  v34 = v67;
  v35 = v64;
  v36 = v65;
  v33[4] = v26;
  v33[5] = v36;
  v33[6] = v29;
  v33[7] = v35;
  v33[8] = v30;
  v33[9] = v31;
  v33[10] = v63;
  v33[11] = v32;
  *(v3 + 200) = v33;

  v37 = v66;

  v38 = v69;

  v39 = v73;
  sub_10000EFC8(v38, v73);

  if ((*(v37 + 48))(v39, 1, v34) == 1)
  {
    v40 = v68;
    sub_100001B7C(v39, &qword_10001D120, &unk_1000135A8);
    v41 = sub_100011B64();
    v42 = sub_100011D54();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "Model attachment not found", v43, 2u);
    }

    sub_10001183C();
    swift_allocError();
    *v44 = 0;
    swift_willThrow();

    goto LABEL_13;
  }

  v45 = v71;
  (*(v37 + 32))(v71, v39, v34);
  v46 = [objc_allocWithZone(MLModelConfiguration) init];
  [v46 setComputeUnits:0];
  v47 = v70;
  sub_100011AF4();
  v48 = *v68;
  type metadata accessor for ModelTrainer();
  swift_allocObject();
  v49 = v46;
  v50 = v62;
  v51 = sub_100007180(v47, v49, v48);
  if (v50)
  {

    (*(v37 + 8))(v45, v34);
    v40 = v68;
LABEL_13:
    v52 = *(v40 + 9);
    v74[8] = *(v40 + 8);
    v74[9] = v52;
    v74[10] = *(v40 + 10);
    v53 = *(v40 + 5);
    v74[4] = *(v40 + 4);
    v74[5] = v53;
    v54 = *(v40 + 7);
    v74[6] = *(v40 + 6);
    v74[7] = v54;
    v55 = *(v40 + 1);
    v74[0] = *v40;
    v74[1] = v55;
    v56 = *(v40 + 3);
    v74[2] = *(v40 + 2);
    v74[3] = v56;
    sub_10000E490(v74);

    goto LABEL_14;
  }

  *(v3 + 208) = v51;
  v58 = sub_100011B64();
  v59 = sub_100011D34();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&_mh_execute_header, v58, v59, "Finished initialising MusicAppSelectionPFLPluginRunner.", v60, 2u);
    v45 = v71;

    v61 = v69;
  }

  else
  {
    v61 = v58;
    v58 = v49;
    v49 = v69;
  }

  (*(v37 + 8))(v45, v34);
  return v3;
}

uint64_t sub_10000EFC8@<X0>(void *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = sub_100011B34();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a3 attachments];
  v12 = sub_100011BE4();
  v13 = [v11 attachmentURLsForBasename:v12];

  v14 = sub_100011C84();
  v15 = *(v14 + 16);
  if (v15 >= 2)
  {
    if (qword_10001C920 != -1)
    {
      swift_once();
    }

    v16 = sub_100011B84();
    sub_1000019F0(v16, qword_10001EA60);

    v17 = sub_100011B64();
    v18 = sub_100011D54();

    if (os_log_type_enabled(v17, v18))
    {
      v27 = a4;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v19 = 136315138;
      if (*(v14 + 16))
      {
        (*(v7 + 16))(v10, v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);
        v21 = sub_100011AD4();
        v23 = v22;
        (*(v7 + 8))(v10, v6);
      }

      else
      {
        v23 = 0xE700000000000000;
        v21 = 0x6E776F6E6B6E75;
      }

      v24 = sub_100003904(v21, v23, &v28);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "Multiple 'model.mil' attachments found. Using the first: %s", v19, 0xCu);
      sub_100001BEC(v20);

      a4 = v27;
    }

    else
    {
    }

    v15 = *(v14 + 16);
  }

  if (v15)
  {
    (*(v7 + 16))(a4, v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  return (*(v7 + 56))(a4, v25, 1, v6);
}

id sub_10000F310()
{
  v2 = v0;
  if (qword_10001C920 != -1)
  {
    swift_once();
  }

  v3 = sub_100011B84();
  sub_1000019F0(v3, qword_10001EA60);
  v4 = sub_100011B64();
  v5 = sub_100011D34();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Executing SQL query.", v6, 2u);
  }

  v7 = *(v2 + 24);
  sub_100001170(*(v2 + 18), *(v2 + 19));
  if (!v1)
  {
    v9 = sub_100011B64();
    v10 = sub_100011D34();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Aggregating SQL rows.", v11, 2u);
    }

    for (i = *(v7 + 16); i; i = *(v7 + 16))
    {
      if (![i next])
      {
        break;
      }

      v13 = sub_1000013C8();
      sub_100001C38(v13);
    }

    v14 = *(v2 + 25);
    swift_beginAccess();
    v15 = *(*(v14 + 16) + 16);
    v16 = sub_100011B64();
    if (v15)
    {
      v17 = sub_100011D34();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "Producing MLBatchProvider for training.", v18, 2u);
      }

      v68 = sub_1000026F8();

      v19 = sub_100011B64();
      v20 = sub_100011D34();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v69 = v22;
        *v21 = 136315650;
        *(v21 + 4) = sub_100003904(*(v2 + 15), *(v2 + 16), &v69);
        *(v21 + 12) = 2048;
        *(v21 + 14) = v15;
        *(v21 + 22) = 1024;
        *(v21 + 24) = *(v2 + 5);

        _os_log_impl(&_mh_execute_header, v19, v20, "Training model %s with %ld datapoints for %u epochs.", v21, 0x1Cu);
        sub_100001BEC(v22);
      }

      else
      {
      }

      v25 = *(v2 + 26);
      v26 = *(v2 + 5);

      v28 = sub_10000B394(v27);

      sub_100007AB4(v26, v68, v28);
      v30 = v29;
      v32 = v31;
      v66 = v33;
      v65 = v34;

      v35 = v30;
      v36 = v32;
      v37 = sub_100008FF4(v35, v32, v66, v65);

      v38 = 0;
      v39 = *(v14 + 16);
      v40 = 1 << *(v39 + 32);
      v41 = -1;
      if (v40 < 64)
      {
        v41 = ~(-1 << v40);
      }

      v42 = v41 & *(v39 + 64);
      v43 = (v40 + 63) >> 6;
      v44 = 0.0;
      if (v42)
      {
        while (1)
        {
          v45 = v38;
LABEL_29:
          v46 = __clz(__rbit64(v42));
          v42 &= v42 - 1;
          v44 = v44 + *(*(*(*(v39 + 56) + ((v45 << 9) | (8 * v46))) + 16) + 24);
          if (!v42)
          {
            goto LABEL_25;
          }
        }
      }

      while (1)
      {
LABEL_25:
        v45 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          __break(1u);
          return result;
        }

        if (v45 >= v43)
        {
          break;
        }

        v42 = *(v39 + 64 + 8 * v45);
        ++v38;
        if (v42)
        {
          v38 = v45;
          goto LABEL_29;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v69 = v37;
      sub_1000046EC(0x43656C706D617845, 0xEC000000746E756FLL, isUniquelyReferenced_nonNull_native, v44);
      v48 = v69;
      v49 = [*(v25 + 16) copyCurrentTrainingDelta];
      v50 = [v49 flattenedModelUpdate];

      if (v50)
      {
        v51 = sub_100011B54();
        v53 = v52;
      }

      else
      {
        v51 = 0;
        v53 = 0xF000000000000000;
      }

      v54 = *(v2 + 23);
      if (v54)
      {
        v55 = *(v2 + 22);

        v56 = sub_100011B64();
        v57 = sub_100011D34();

        if (os_log_type_enabled(v56, v57))
        {
          v67 = v51;
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v69 = v59;
          *v58 = 136315138;
          *(v58 + 4) = sub_100003904(v55, v54, &v69);
          _os_log_impl(&_mh_execute_header, v56, v57, "Writing deltas and metrics to %s", v58, 0xCu);
          sub_100001BEC(v59);

          v51 = v67;
        }

        sub_10000FE98(v55, v54, v48, v51, v53);
      }

      v60 = sub_100011B64();
      v61 = sub_100011D34();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 134217984;
        *(v62 + 4) = *(v48 + 16);
        _os_log_impl(&_mh_execute_header, v60, v61, "Finishing plugin by returning %ld metrics and weight delta.", v62, 0xCu);
      }

      sub_10000FB9C(v48);

      v63.super.isa = sub_100011BB4().super.isa;

      if (v53 >> 60 == 15)
      {
        isa = 0;
      }

      else
      {
        isa = sub_100011B44().super.isa;
        sub_10000FE84(v51, v53);
      }

      v2 = [objc_allocWithZone(MLRTaskResult) initWithJSONResult:v63.super.isa unprivatizedVector:isa];
      swift_unknownObjectRelease();
    }

    else
    {
      v23 = sub_100011D54();
      if (os_log_type_enabled(v16, v23))
      {
        v2 = swift_slowAlloc();
        *v2 = 0;
        _os_log_impl(&_mh_execute_header, v16, v23, "No Biome datapoints found, returning empty MLRTaskResult", v2, 2u);
      }

      sub_10001183C();
      swift_allocError();
      *v24 = 5;
      swift_willThrow();
    }
  }

  return v2;
}

unint64_t sub_10000FB9C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100001A7C(&qword_10001CA78, &qword_100012870);
    v2 = sub_100011E34();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_100001BDC(&v22, v24);
        sub_100001BDC(v24, v25);
        sub_100001BDC(v25, &v23);
        result = sub_100003EAC(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          sub_100001BEC(v11);
          result = sub_100001BDC(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_100001BDC(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_10000FDE4()
{
  v1 = v0[10];
  v7[8] = v0[9];
  v7[9] = v1;
  v7[10] = v0[11];
  v2 = v0[6];
  v7[4] = v0[5];
  v7[5] = v2;
  v3 = v0[8];
  v7[6] = v0[7];
  v7[7] = v3;
  v4 = v0[2];
  v7[0] = v0[1];
  v7[1] = v4;
  v5 = v0[4];
  v7[2] = v0[3];
  v7[3] = v5;
  sub_10000E490(v7);

  return swift_deallocClassInstance();
}

uint64_t sub_10000FE84(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000E6A0(result, a2);
  }

  return result;
}

uint64_t sub_10000FE98(void *a1, char *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v227 = a4;
  v217 = a3;
  v224 = a2;
  v223 = a1;
  v215 = sub_100011C14();
  v214 = *(v215 - 8);
  v7 = __chkstk_darwin(v215, v6);
  v218 = v205 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v9);
  v216 = v205 - v10;
  v222 = sub_100011A34();
  *&v220 = *(v222 - 1);
  __chkstk_darwin(v222, v11);
  v221 = v205 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100011AC4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13, v15);
  v17 = v205 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100001A7C(&qword_10001D120, &unk_1000135A8);
  __chkstk_darwin(v18 - 8, v19);
  v21 = v205 - v20;
  v22 = sub_100011B34();
  v23 = *(v22 - 8);
  v25 = __chkstk_darwin(v22, v24);
  v27 = __chkstk_darwin(v25, v26);
  v29 = v205 - v28;
  v31 = __chkstk_darwin(v27, v30);
  v33 = __chkstk_darwin(v31, v32);
  __chkstk_darwin(v33, v34);
  v37 = __chkstk_darwin(v205 - v35, v36);
  v39 = v205 - v38;
  v41 = __chkstk_darwin(v37, v40);
  v46 = v205 - v45;
  if (a5 >> 60 == 15)
  {
    if (qword_10001C920 != -1)
    {
      swift_once();
    }

    v47 = sub_100011B84();
    sub_1000019F0(v47, qword_10001EA60);
    v48 = sub_100011B64();
    v49 = sub_100011D54();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "Weight deltas is nil", v50, 2u);
    }

    sub_10001183C();
    swift_allocError();
    *v51 = 1;
    return swift_willThrow();
  }

  v209 = v41;
  v207 = v29;
  v206 = v44;
  v210 = v43;
  v208 = v42;
  v53 = objc_opt_self();
  v54 = a5;
  v55 = v53;
  v219 = v54;
  sub_100011890(v227, v54);
  v56 = [v55 defaultManager];
  v226 = v23;
  (*(v23 + 56))(v21, 1, 1, v22);
  (*(v14 + 104))(v17, enum case for URL.DirectoryHint.inferFromPath(_:), v13);

  sub_100011B24();
  sub_100011AF4();
  sub_100011B14();
  v57 = sub_100011BE4();

  v58 = [v56 fileExistsAtPath:v57];

  v59 = v22;
  v225 = v22;
  v212 = v39;
  v211 = v56;
  if ((v58 & 1) == 0)
  {
    if (qword_10001C920 != -1)
    {
      swift_once();
    }

    v60 = sub_100011B84();
    v61 = sub_1000019F0(v60, qword_10001EA60);
    v62 = v226;
    isa = v226[2].isa;
    v64 = v209;
    v205[1] = v226 + 2;
    v205[0] = isa;
    (isa)(v209, v39, v59);
    v223 = v61;
    v65 = sub_100011B64();
    v66 = sub_100011D44();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v228[0] = v68;
      *v67 = 136315138;
      v69 = sub_100011B14();
      v70 = v46;
      v72 = v71;
      v73 = v62[1].isa;
      v73(v64, v225);
      v74 = sub_100003904(v69, v72, v228);
      v46 = v70;

      *(v67 + 4) = v74;
      _os_log_impl(&_mh_execute_header, v65, v66, "Creating directories at %s", v67, 0xCu);
      sub_100001BEC(v68);
      v56 = v211;
      v39 = v212;

      v59 = v225;
    }

    else
    {

      v73 = v62[1].isa;
      v73(v64, v59);
    }

    sub_100011AE4(v75);
    v77 = v76;
    v228[0] = 0;
    v78 = [v56 createDirectoryAtURL:v76 withIntermediateDirectories:1 attributes:0 error:v228];

    if (!v78)
    {
      v222 = v73;
      v224 = v46;
      v109 = v228[0];
      sub_100011AB4();

      swift_willThrow();
      v110 = v207;
      (v205[0])(v207, v39, v59);
      swift_errorRetain();
      v111 = sub_100011B64();
      v112 = sub_100011D54();

      if (os_log_type_enabled(v111, v112))
      {
        v113 = v59;
        v114 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        v223 = swift_slowAlloc();
        v228[0] = v223;
        *v114 = 136315394;
        v116 = sub_100011B14();
        v118 = v117;
        v226 = v111;
        v119 = v110;
        v120 = v222;
        v222(v119, v113);
        v121 = sub_100003904(v116, v118, v228);

        *(v114 + 4) = v121;
        *(v114 + 12) = 2112;
        swift_errorRetain();
        v122 = _swift_stdlib_bridgeErrorToNSError();
        *(v114 + 14) = v122;
        *v115 = v122;
        v123 = v112;
        v124 = v120;
        v125 = v226;
        _os_log_impl(&_mh_execute_header, v226, v123, "Couldn't create directory at %s: %@", v114, 0x16u);
        sub_100001B7C(v115, &qword_10001CA70, &unk_1000126A0);
        v56 = v211;
        v126 = v212;

        sub_100001BEC(v223);

        v127 = v219;
      }

      else
      {
        v126 = v39;

        v124 = v222;
        v222(v110, v59);
        v127 = v219;
        v113 = v59;
      }

      v130 = v227;
      sub_10001183C();
      swift_allocError();
      *v131 = 2;
      swift_willThrow();

      sub_10000FE84(v130, v127);

      v124(v126, v113);
      return (v124)(v224, v113);
    }

    v79 = v228[0];
  }

  sub_100011B14();
  v80 = sub_100011BE4();

  v81 = [v56 fileExistsAtPath:v80];

  if (v81)
  {
    v82 = v59;
    sub_100011B14();
    v83 = sub_100011BE4();

    v228[0] = 0;
    v84 = [v56 removeItemAtPath:v83 error:v228];

    v85 = v226;
    if (!v84)
    {
      v128 = v228[0];
      sub_100011AB4();

      swift_willThrow();
      sub_10000FE84(v227, v219);
      v129 = v85[1].isa;
      v129(v39, v82);
      return (v129)(v46, v82);
    }

    v86 = qword_10001C920;
    v87 = v228[0];
    if (v86 != -1)
    {
      swift_once();
    }

    v88 = sub_100011B84();
    sub_1000019F0(v88, qword_10001EA60);
    v89 = v206;
    v59 = v82;
    (v85[2].isa)(v206, v46, v82);
    v90 = sub_100011B64();
    v91 = sub_100011D44();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = v46;
      v94 = swift_slowAlloc();
      v228[0] = v94;
      *v92 = 136315138;
      v95 = sub_100011B14();
      v97 = v96;
      (v85[1].isa)(v89, v225);
      v98 = sub_100003904(v95, v97, v228);
      v99 = v225;

      *(v92 + 4) = v98;
      _os_log_impl(&_mh_execute_header, v90, v91, "Attempted removing existing file %s", v92, 0xCu);
      sub_100001BEC(v94);
      v46 = v93;

      v59 = v99;
    }

    else
    {

      (v85[1].isa)(v89, v59);
    }

    v102 = v85;
    v107 = v219;
  }

  else
  {
    sub_100011B04(1);
    v100 = sub_100011BE4();

    v101 = [v56 createFileAtPath:v100 contents:0 attributes:0];

    v102 = v226;
    if (qword_10001C920 != -1)
    {
      swift_once();
    }

    v103 = sub_100011B84();
    sub_1000019F0(v103, qword_10001EA60);
    v104 = sub_100011B64();
    v105 = sub_100011D44();
    v106 = os_log_type_enabled(v104, v105);
    v107 = v219;
    if (v106)
    {
      v108 = swift_slowAlloc();
      *v108 = 67109120;
      *(v108 + 4) = v101;
      _os_log_impl(&_mh_execute_header, v104, v105, "Attempted creating file with success: %{BOOL}d", v108, 8u);
    }
  }

  sub_100011A64();
  swift_allocObject();
  v132 = sub_100011A54();
  sub_100001A7C(&qword_10001D128, &qword_1000135B8);
  v133 = swift_allocObject();
  v220 = xmmword_100012700;
  v133[1] = xmmword_100012700;
  sub_100011A24();
  sub_100011A14();
  v228[0] = v133;
  sub_100011948(&qword_10001D130, &type metadata accessor for JSONEncoder.OutputFormatting, &protocol conformance descriptor for JSONEncoder.OutputFormatting);
  sub_100001A7C(&qword_10001D138, &unk_1000135C0);
  sub_1000118E4();
  sub_100011DB4();
  v223 = v132;
  sub_100011A44();
  v134 = v107 >> 62;
  if ((v107 >> 62) > 1)
  {
    if (v134 != 2)
    {
LABEL_54:
      v221 = _swiftEmptyArrayStorage;
      goto LABEL_55;
    }

    v137 = v59;
    v138 = *(v227 + 16);
    v59 = *(v227 + 24);
    v136 = sub_100011A74();
    if (v136)
    {
      v139 = sub_100011A94();
      if (__OFSUB__(v138, v139))
      {
        goto LABEL_75;
      }

      v136 = (v136 + v138 - v139);
    }

    v140 = __OFSUB__(v59, v138);
    v141 = v59 - v138;
    if (!v140)
    {
      goto LABEL_48;
    }

    __break(1u);
LABEL_44:
    v137 = v59;
    v142 = v227;
    v141 = (v227 >> 32) - v227;
    if (v227 >> 32 >= v227)
    {
      v143 = sub_100011A74();
      if (!v143)
      {
        sub_100011A84();
        v221 = _swiftEmptyArrayStorage;
        v59 = v137;
        goto LABEL_55;
      }

      v144 = v143;
      v145 = sub_100011A94();
      if (!__OFSUB__(v142, v145))
      {
        v136 = (v142 - v145 + v144);
LABEL_48:
        v146 = sub_100011A84();
        v59 = v137;
        if (!v136)
        {
          goto LABEL_54;
        }

        v147 = v146 >= v141 ? v141 : v146;
        v135 = v147 / 4;
        if (!(v147 / 4))
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      }

LABEL_76:
      __break(1u);
    }

    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (v134)
  {
    goto LABEL_44;
  }

  v135 = (v107 >> 50) & 0x3F;
  v136 = v228;
  if (!v135)
  {
    goto LABEL_54;
  }

LABEL_53:
  v221 = sub_1000037FC(v135, 0);
  memcpy(v221 + 32, v136, 4 * v135);
LABEL_55:
  if (qword_10001C920 != -1)
  {
    swift_once();
  }

  v148 = sub_100011B84();
  v149 = sub_1000019F0(v148, qword_10001EA60);
  v150 = v102[2].isa;
  v151 = v210;
  v224 = v46;
  v209 = v150;
  v150(v210, v46, v59);
  v207 = v149;
  v152 = v59;
  v153 = sub_100011B64();
  v154 = sub_100011D44();
  if (os_log_type_enabled(v153, v154))
  {
    v155 = v102;
    v156 = swift_slowAlloc();
    v157 = swift_slowAlloc();
    v228[0] = v157;
    *v156 = 136315138;
    sub_100011948(&qword_10001CE58, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v158 = sub_100011F24();
    v160 = v159;
    v222 = v155[1].isa;
    v222(v151, v225);
    v161 = sub_100003904(v158, v160, v228);

    *(v156 + 4) = v161;
    _os_log_impl(&_mh_execute_header, v153, v154, "Writing deltas and metrics to %s", v156, 0xCu);
    sub_100001BEC(v157);
    v162 = v225;
  }

  else
  {

    v162 = v152;
    v222 = v102[1].isa;
    v222(v151, v152);
  }

  v163 = v218;
  sub_100001A7C(&qword_10001CC98, qword_100012850);
  inited = swift_initStackObject();
  *(inited + 16) = v220;
  *(inited + 32) = 0x7363697274656DLL;
  *(inited + 40) = 0xE700000000000000;
  v165 = sub_100001A7C(&qword_10001D148, &qword_1000135D0);
  *(inited + 48) = v217;
  *(inited + 72) = v165;
  *(inited + 80) = 0x73746867696577;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 120) = sub_100001A7C(&qword_10001D150, &qword_1000135D8);
  *(inited + 96) = v221;

  sub_100005794(inited);
  swift_setDeallocating();
  sub_100001A7C(&qword_10001CCA8, qword_1000135E0);
  swift_arrayDestroy();
  v166 = objc_opt_self();
  v167 = sub_100011BB4().super.isa;
  v228[0] = 0;
  v168 = [v166 dataWithJSONObject:v167 options:3 error:v228];

  v169 = v228[0];
  if (v168)
  {
    v170 = sub_100011B54();
    v172 = v171;

    sub_100011C04();
    v173 = sub_100011BF4();
    if (v174)
    {
      v228[0] = v173;
      v228[1] = v174;
      sub_100011C04();
      sub_100011990();
      v175 = v224;
      v176 = v213;
      sub_100011D74();
      if (!v176)
      {
        sub_10000E6A0(v170, v172);

        sub_10000FE84(v227, v219);

        (*(v214 + 8))(v163, v215);
        v204 = v222;
        v222(v212, v162);
        v204(v175, v162);
      }

      (*(v214 + 8))(v163, v215);
      sub_10000E6A0(v170, v172);
    }

    else
    {
      v178 = sub_100011B64();
      v179 = sub_100011D54();
      if (os_log_type_enabled(v178, v179))
      {
        v180 = swift_slowAlloc();
        *v180 = 0;
        _os_log_impl(&_mh_execute_header, v178, v179, "Couldn't convert JSON data to String with UTF-8", v180, 2u);
      }

      sub_10001183C();
      swift_allocError();
      *v181 = 3;
      swift_willThrow();
      sub_10000E6A0(v170, v172);
    }
  }

  else
  {
    v177 = v169;
    sub_100011AB4();

    swift_willThrow();
  }

  v182 = v208;
  v183 = v225;
  v209(v208, v224, v225);

  swift_errorRetain();
  v184 = sub_100011B64();
  v185 = sub_100011D54();

  if (os_log_type_enabled(v184, v185))
  {
    v186 = swift_slowAlloc();
    *&v220 = swift_slowAlloc();
    v221 = swift_slowAlloc();
    v228[0] = v221;
    *v186 = 136315650;
    v187 = sub_100011BD4();
    v189 = v188;

    v190 = sub_100003904(v187, v189, v228);

    *(v186 + 4) = v190;
    *(v186 + 12) = 2080;
    sub_100011948(&qword_10001CE58, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v191 = sub_100011F24();
    v193 = v192;
    v194 = v182;
    v195 = v222;
    v222(v194, v183);
    v196 = sub_100003904(v191, v193, v228);

    *(v186 + 14) = v196;
    *(v186 + 22) = 2112;
    swift_errorRetain();
    v197 = _swift_stdlib_bridgeErrorToNSError();
    *(v186 + 24) = v197;
    v198 = v220;
    *v220 = v197;
    _os_log_impl(&_mh_execute_header, v184, v185, "Couldn't write %s to file %s: %@", v186, 0x20u);
    sub_100001B7C(v198, &qword_10001CA70, &unk_1000126A0);
    v199 = v219;

    swift_arrayDestroy();

    v200 = v212;
    v201 = v211;
  }

  else
  {

    v202 = v182;
    v195 = v222;
    v222(v202, v183);
    v200 = v212;
    v201 = v211;
    v199 = v219;
  }

  sub_10001183C();
  swift_allocError();
  *v203 = 4;
  swift_willThrow();

  sub_10000FE84(v227, v199);

  v195(v200, v183);
  return (v195)(v224, v183);
}

unint64_t sub_10001183C()
{
  result = qword_10001D118;
  if (!qword_10001D118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D118);
  }

  return result;
}

uint64_t sub_100011890(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_1000118E4()
{
  result = qword_10001D140;
  if (!qword_10001D140)
  {
    sub_10000E3BC(&qword_10001D138, &unk_1000135C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D140);
  }

  return result;
}

uint64_t sub_100011948(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100011990()
{
  result = qword_10001D158;
  if (!qword_10001D158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D158);
  }

  return result;
}