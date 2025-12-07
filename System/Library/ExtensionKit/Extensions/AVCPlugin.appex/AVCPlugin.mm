uint64_t sub_100001658()
{
  v1[2] = v0;
  sub_100007F18(&qword_10001C298, &qword_1000135F0);
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for AVCDataMetadata(0);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_100001750, 0, 0);
}

uint64_t sub_100001750()
{
  v1 = v0[2];
  if (*(v1 + 56))
  {
    v2 = v0[4];
    v3 = v0[5];
    v4 = v0[3];
    sub_10000D0F4(v4);
    if ((*(v3 + 48))(v4, 1, v2) != 1)
    {
      sub_100008504(v0[3], v0[6], type metadata accessor for AVCDataMetadata);
      sub_100008034();
      swift_allocError();
      *v7 = 0;
      v8 = [objc_opt_self() defaultManager];
      v9 = sub_100012D18();
      v10 = [v8 fileExistsAtPath:v9];

      v11 = v0[6];
      if (v10)
      {
      }

      else
      {
        swift_willThrow();
      }

      sub_10000856C(v11, type metadata accessor for AVCDataMetadata);
      goto LABEL_10;
    }

    sub_1000084A4(v0[3], &qword_10001C298, &qword_1000135F0);
    sub_100008034();
    swift_allocError();
    *v5 = 2;
  }

  else
  {
    sub_100008034();
    swift_allocError();
    *v6 = 16;
    if (sub_10000DFFC(*(v1 + 64), *(v1 + 72)))
    {

      goto LABEL_10;
    }
  }

  swift_willThrow();
LABEL_10:

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000019B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  sub_100007F18(&qword_10001C298, &qword_1000135F0);
  v4[14] = swift_task_alloc();
  v5 = type metadata accessor for AVCDataMetadata(0);
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  sub_100007F18(&qword_10001C268, &qword_1000135D0);
  v4[18] = swift_task_alloc();
  v6 = sub_100012848();
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v4[21] = swift_task_alloc();
  v7 = sub_1000128A8();
  v4[22] = v7;
  v4[23] = *(v7 - 8);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  sub_100007F18(&qword_10001C328, &unk_100013668);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v8 = type metadata accessor for AVCModelMetadata(0);
  v4[29] = v8;
  v4[30] = *(v8 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();

  return _swift_task_switch(sub_100001C64, 0, 0);
}

uint64_t sub_100001C64()
{
  v1 = v0[13];
  sub_1000083D0(v0[11], (v0 + 2));
  swift_beginAccess();
  sub_100008434((v0 + 2), v1 + 16);
  swift_endAccess();
  if (*(v1 + 56))
  {
    if (qword_10001C150 != -1)
    {
      swift_once();
    }

    v2 = v0[30];
    v88 = v0[29];
    v4 = v0[26];
    v3 = v0[27];
    v6 = v0[22];
    v5 = v0[23];
    v7 = v0[18];
    v86 = *(v0[20] + 104);
    v86(v0[21], enum case for URL.DirectoryHint.notDirectory(_:), v0[19]);
    v84 = *(v5 + 56);
    v84(v7, 1, 1, v6);

    sub_100012888();
    sub_10000D77C(v3);
    v8 = *(v5 + 8);
    v8(v4, v6);
    if ((*(v2 + 48))(v3, 1, v88) == 1)
    {
      v9 = v0[11];
      sub_1000084A4(v0[27], &qword_10001C328, &unk_100013668);
      sub_100008324(v9, v9[3]);
      v10 = sub_100012B78();
      v12 = v11;
      v0[51] = v11;
      sub_100008034();
      v0[52] = swift_allocError();
      *v13 = 17;
      v14 = swift_task_alloc();
      v0[53] = v14;
      *v14 = v0;
      v15 = sub_1000039A4;
LABEL_6:
      v14[1] = v15;
      v16 = 0x6E69617274;
LABEL_13:
      v34 = v10;
      v35 = v12;
      v36 = 0xE500000000000000;
LABEL_25:

      return static PFLTelemetry.sendPFLPluginLocation(location:plugin:taskId:useCase:error:forwardToMLHost:)(0x5465766C6F736572, 0xEB000000006B7361, 0xD00000000000002ALL, 0x8000000100014340, v34, v35, v16, v36);
    }

    v27 = v0[15];
    v28 = v0[16];
    v29 = v0[14];
    sub_100008504(v0[27], v0[31], type metadata accessor for AVCModelMetadata);
    sub_10000D0F4(v29);
    if ((*(v28 + 48))(v29, 1, v27) == 1)
    {
      v30 = v0[11];
      sub_1000084A4(v0[14], &qword_10001C298, &qword_1000135F0);
      sub_100008324(v30, v30[3]);
      v10 = sub_100012B78();
      v12 = v31;
      v0[48] = v31;
      sub_100008034();
      v0[49] = swift_allocError();
      *v32 = 2;
      v33 = swift_task_alloc();
      v0[50] = v33;
      *v33 = v0;
      v33[1] = sub_10000371C;
      v16 = 0x6E69617274;
      goto LABEL_13;
    }

    v47 = v0[31];
    v48 = v0[29];
    v49 = v0[11];
    sub_100008504(v0[14], v0[17], type metadata accessor for AVCDataMetadata);
    v50 = (v47 + *(v48 + 28));
    v51 = *v50;
    v52 = v50[1];
    sub_100008324(v49, v49[3]);
    if (v51 == sub_100012B78() && v52 == v53)
    {
    }

    else
    {
      v64 = sub_100012F48();

      if ((v64 & 1) == 0)
      {
        sub_100008324(v0[11], v49[3]);
        v10 = sub_100012B78();
        v12 = v72;
        v0[39] = v72;
        sub_100008034();
        v0[40] = swift_allocError();
        *v73 = 7;
        v14 = swift_task_alloc();
        v0[41] = v14;
        *v14 = v0;
        v15 = sub_100002F10;
        goto LABEL_6;
      }
    }

    v65 = (v0[17] + *(v0[15] + 24));
    v66 = *v65;
    v67 = v65[1];
    sub_100008324(v0[11], v49[3]);
    if (v66 == sub_100012B78() && v67 == v68)
    {
    }

    else
    {
      v69 = sub_100012F48();

      if ((v69 & 1) == 0)
      {
        sub_100008324(v0[11], v49[3]);
        v10 = sub_100012B78();
        v12 = v81;
        v0[42] = v81;
        sub_100008034();
        v0[43] = swift_allocError();
        *v82 = 19;
        v14 = swift_task_alloc();
        v0[44] = v14;
        *v14 = v0;
        v15 = sub_1000031CC;
        goto LABEL_6;
      }
    }

    if (qword_10001C148 != -1)
    {
      swift_once();
    }

    v70 = v0[21];
    v71 = v0[19];
    v84(v0[18], 1, 1, v0[22]);
    v86(v70, enum case for URL.DirectoryHint.inferFromPath(_:), v71);

    sub_100012888();
    sub_100012BF8();
    v74 = sub_100012BB8();
    v75 = v0[31];
    v76 = v0[17];
    v77 = v0[10];
    v8(v0[24], v0[22]);
    sub_10000856C(v76, type metadata accessor for AVCDataMetadata);
    sub_10000856C(v75, type metadata accessor for AVCModelMetadata);
    *v77 = v74;
    v78 = enum case for TaskResolution.cached(_:);
    v79 = sub_100012AB8();
    (*(*(v79 - 8) + 104))(v77, v78, v79);
  }

  else
  {
    if (qword_10001C150 != -1)
    {
      swift_once();
    }

    v17 = v0[30];
    v89 = v0[29];
    v18 = v0[28];
    v19 = v0[26];
    v20 = v0[22];
    v21 = v0[23];
    v22 = v0[18];
    v87 = *(v0[20] + 104);
    v87(v0[21], enum case for URL.DirectoryHint.notDirectory(_:), v0[19]);
    v85 = *(v21 + 56);
    v85(v22, 1, 1, v20);

    sub_100012888();
    sub_10000D77C(v18);
    v23 = *(v21 + 8);
    v23(v19, v20);
    if ((*(v17 + 48))(v18, 1, v89) == 1)
    {
      v24 = v0[10];
      sub_1000084A4(v0[28], &qword_10001C328, &unk_100013668);
      v25 = enum case for TaskResolution.download(_:);
      v26 = sub_100012AB8();
      (*(*(v26 - 8) + 104))(v24, v25, v26);
    }

    else
    {
      v37 = v0[32];
      v38 = v0[29];
      v39 = v0[11];
      sub_100008504(v0[28], v37, type metadata accessor for AVCModelMetadata);
      v40 = (v37 + *(v38 + 28));
      v41 = *v40;
      v42 = v40[1];
      sub_100008324(v39, v39[3]);
      if (v41 == sub_100012B78() && v42 == v43)
      {
      }

      else
      {
        v44 = sub_100012F48();

        if ((v44 & 1) == 0)
        {
          sub_100008324(v0[11], v39[3]);
          v59 = sub_100012B78();
          v61 = v60;
          v0[36] = v60;
          sub_100008034();
          v0[37] = swift_allocError();
          *v62 = 7;
          v63 = swift_task_alloc();
          v0[38] = v63;
          *v63 = v0;
          v63[1] = sub_100002DDC;
          v16 = 0x64616F6C6E776F64;
          v34 = v59;
          v35 = v61;
          v36 = 0xE800000000000000;
          goto LABEL_25;
        }
      }

      if (qword_10001C148 != -1)
      {
        swift_once();
      }

      v45 = v0[21];
      v46 = v0[19];
      v85(v0[18], 1, 1, v0[22]);
      v87(v45, enum case for URL.DirectoryHint.inferFromPath(_:), v46);

      sub_100012888();
      sub_100012BF8();
      v54 = sub_100012BB8();
      v55 = v0[32];
      v56 = v0[10];
      v23(v0[25], v0[22]);
      sub_10000856C(v55, type metadata accessor for AVCModelMetadata);
      *v56 = v54;
      v57 = enum case for TaskResolution.cached(_:);
      v58 = sub_100012AB8();
      (*(*(v58 - 8) + 104))(v56, v57, v58);
    }
  }

  v80 = v0[1];

  return v80();
}

uint64_t sub_100002B40()
{

  return _swift_task_switch(sub_100002C74, 0, 0);
}

uint64_t sub_100002C74()
{
  sub_10000E4CC();
  v1 = v0[10];
  sub_10000856C(v0[32], type metadata accessor for AVCModelMetadata);
  v2 = enum case for TaskResolution.download(_:);
  v3 = sub_100012AB8();
  (*(*(v3 - 8) + 104))(v1, v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100002DDC()
{

  return _swift_task_switch(sub_1000085D0, 0, 0);
}

uint64_t sub_100002F10()
{

  return _swift_task_switch(sub_100003044, 0, 0);
}

uint64_t sub_100003044()
{
  sub_10000E4CC();
  v1 = v0[31];
  v2 = v0[10];
  sub_10000856C(v0[17], type metadata accessor for AVCDataMetadata);
  sub_10000856C(v1, type metadata accessor for AVCModelMetadata);
  v3 = enum case for TaskResolution.skip(_:);
  v4 = sub_100012AB8();
  (*(*(v4 - 8) + 104))(v2, v3, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000031CC()
{

  return _swift_task_switch(sub_100003300, 0, 0);
}

uint64_t sub_100003300()
{
  v1 = v0[31];
  v2 = v0[10];
  sub_10000856C(v0[17], type metadata accessor for AVCDataMetadata);
  sub_10000856C(v1, type metadata accessor for AVCModelMetadata);
  v3 = enum case for TaskResolution.skip(_:);
  v4 = sub_100012AB8();
  (*(*(v4 - 8) + 104))(v2, v3, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100003474()
{

  return _swift_task_switch(sub_1000035A8, 0, 0);
}

uint64_t sub_1000035A8()
{
  v1 = v0[31];
  v2 = v0[10];
  sub_10000856C(v0[17], type metadata accessor for AVCDataMetadata);
  sub_10000856C(v1, type metadata accessor for AVCModelMetadata);
  v3 = enum case for TaskResolution.download(_:);
  v4 = sub_100012AB8();
  (*(*(v4 - 8) + 104))(v2, v3, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10000371C()
{

  return _swift_task_switch(sub_100003850, 0, 0);
}

uint64_t sub_100003850()
{
  v1 = v0[10];
  sub_10000856C(v0[31], type metadata accessor for AVCModelMetadata);
  v2 = enum case for TaskResolution.skip(_:);
  v3 = sub_100012AB8();
  (*(*(v3 - 8) + 104))(v1, v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000039A4()
{

  return _swift_task_switch(sub_100003AD8, 0, 0);
}

uint64_t sub_100003AD8()
{
  v1 = *(v0 + 80);
  v2 = enum case for TaskResolution.skip(_:);
  v3 = sub_100012AB8();
  (*(*(v3 - 8) + 104))(v1, v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100003C10()
{
  v1[14] = v0;
  v2 = sub_100012C48();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return _swift_task_switch(sub_100003CDC, 0, 0);
}

uint64_t sub_100003CDC()
{
  v11 = v0;
  v1 = v0[14];
  swift_beginAccess();
  sub_100008260(v1 + 16, (v0 + 2), &qword_10001C270, &qword_1000135D8);
  v2 = v0[5];
  sub_1000084A4((v0 + 2), &qword_10001C270, &qword_1000135D8);
  if (!v2)
  {
    sub_10000E4CC();
    sub_100012A18();
    v4 = sub_100012C38();
    v5 = sub_100012DC8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Downloaded model (if exists) removed successfully.", v6, 2u);
    }

    v7 = v0[18];
    v8 = v0[15];
    v9 = v0[16];

    (*(v9 + 8))(v7, v8);
  }

  v3 = v0[1];

  return v3();
}

unint64_t sub_100003FB0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100007F18(&qword_10001C288, &qword_1000135E0);
    v2 = sub_100012E88();
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
        sub_100008370(*(a1 + 48) + 40 * v12, v27);
        sub_1000082C8(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_100008370(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_1000082C8(v25 + 8, v20);
        sub_1000084A4(v24, &qword_10001C2F8, &qword_100013638);
        v21 = v18;
        sub_100008024(v20, v22);
        v13 = v21;
        sub_100008024(v22, v23);
        sub_100008024(v23, &v21);
        result = sub_100004F8C(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          sub_100008214(v10);
          result = sub_100008024(&v21, v10);
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
          result = sub_100008024(&v21, (v2[7] + 32 * result));
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

      sub_1000084A4(v24, &qword_10001C2F8, &qword_100013638);

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

void *sub_10000428C(void *result)
{
  v1 = result[2];
  if (v1 >> 61)
  {
    __break(1u);
  }

  else
  {
    v2 = 4 * v1;
    if (4 * v1)
    {
      if (v2 <= 14)
      {
        return sub_100006804(result + 32, result + v2 + 32);
      }

      else
      {
        sub_100012828();
        swift_allocObject();
        sub_100012818();
        if (v2 >= 0x7FFFFFFF)
        {
          sub_1000128C8();
          result = swift_allocObject();
          result[2] = 0;
          result[3] = v2;
        }

        else
        {
          return (v1 << 34);
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100004354()
{
  sub_1000084A4(v0 + 16, &qword_10001C270, &qword_1000135D8);

  return _swift_deallocClassInstance(v0, 80, 7);
}

uint64_t sub_1000043F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000044A4;

  return sub_1000019B4(a1, a2, a3);
}

uint64_t sub_1000044A4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100004598()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000044A4;

  return sub_100001658();
}

uint64_t sub_100004628()
{
  v1 = sub_100012A58();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_100004688()
{
  v1 = sub_100012A68();
  v2 = *(v0 + 8);
  v3 = v1;

  return v2(v3);
}

uint64_t sub_1000046E8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100004798;

  return sub_100007AF0(a1);
}

uint64_t sub_100004798(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1000048A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000085CC;

  return sub_100003C10();
}

uint64_t sub_100004934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000085CC;

  return PFLTaskRunner.handleNoAvailableTasks(taskPreferences:)(a1, a2, a3);
}

unint64_t sub_1000049E4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100004AB0(v11, 0, 0, 1, a1, a2);
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
    sub_1000082C8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100008214(v11);
  return v7;
}

unint64_t sub_100004AB0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100004BBC(a5, a6);
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
    result = sub_100012E48();
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

char *sub_100004BBC(uint64_t a1, unint64_t a2)
{
  v3 = sub_100004C08(a1, a2);
  sub_100004D38(&off_100018BA8);
  return v3;
}

char *sub_100004C08(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100004E24(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100012E48();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100012D78();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100004E24(v10, 0);
        result = sub_100012E18();
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

uint64_t sub_100004D38(uint64_t result)
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

  result = sub_100004E98(result, v11, 1, v3);
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

void *sub_100004E24(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100007F18(&qword_10001C320, &qword_100013660);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100004E98(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007F18(&qword_10001C320, &qword_100013660);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

unint64_t sub_100004F8C(uint64_t a1, uint64_t a2)
{
  sub_100012FB8();
  sub_100012D58();
  v4 = sub_100012FD8();

  return sub_100005004(a1, a2, v4);
}

unint64_t sub_100005004(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100012F48())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1000050BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_1000082C8((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_100005108(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100007F18(&qword_10001C288, &qword_1000135E0);
  v33 = v4;
  result = sub_100012E78();
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
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_100008024(v24, v34);
      }

      else
      {
        sub_1000082C8(v24, v34);
      }

      sub_100012FB8();
      sub_100012D58();
      result = sub_100012FD8();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_100008024(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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
      goto LABEL_34;
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

LABEL_34:
  *v3 = v7;
  return result;
}

_OWORD *sub_1000053C0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100004F8C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10000557C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100005108(v16, a4 & 1);
    v11 = sub_100004F8C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_100012F58();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_100008214(v22);

    return sub_100008024(a1, v22);
  }

  else
  {
    sub_100005510(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_100005510(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100008024(a4, (a5[7] + 32 * a1));
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

void *sub_10000557C()
{
  v1 = v0;
  sub_100007F18(&qword_10001C288, &qword_1000135E0);
  v2 = *v0;
  v3 = sub_100012E68();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1000082C8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100008024(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

char *sub_100005720(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000057A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100005740(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000058A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100005760(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000059A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100005780(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100005AAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000057A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007F18(&qword_10001C300, &qword_100013640);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_1000058A4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007F18(&qword_10001C308, &qword_100013648);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1000059A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007F18(&qword_10001C318, &qword_100013658);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_100005AAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007F18(&qword_10001C310, &qword_100013650);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_100005BB0@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1000082C8(*(v3 + 56) + 32 * v13, v21);
    *&v22 = v16;
    *(&v22 + 1) = v15;
    sub_100008024(v21, &v23);

    v18 = *(&v22 + 1);
    v19 = v22;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v20 = v1[5];
      *&v21[0] = v19;
      *(&v21[0] + 1) = v18;
      v21[1] = v23;
      v21[2] = v24;
      v20(v21);
      return sub_1000084A4(v21, &qword_10001C2F0, &qword_100013630);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_100005D10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007F18(&qword_10001C288, &qword_1000135E0);
    v3 = sub_100012E88();
    v4 = a1 + 32;

    while (1)
    {
      sub_100008260(v4, &v13, &qword_10001C290, &qword_1000135E8);
      v5 = v13;
      v6 = v14;
      result = sub_100004F8C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100008024(&v15, (v3[7] + 32 * result));
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

uint64_t sub_100005E40(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = sub_100012C48();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  v4 = sub_100012848();
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();
  sub_100007F18(&qword_10001C268, &qword_1000135D0);
  v2[27] = swift_task_alloc();
  v5 = sub_1000128A8();
  v2[28] = v5;
  v2[29] = *(v5 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_100005FFC, 0, 0);
}

uint64_t sub_100005FFC()
{
  v1 = *(v0 + 160);
  swift_beginAccess();
  sub_100008260(v1 + 16, v0 + 56, &qword_10001C270, &qword_1000135D8);
  if (*(v0 + 80))
  {
    v2 = *(v0 + 232);
    sub_100007FB8((v0 + 56), v0 + 16);
    result = sub_100012B98();
    v4 = result;
    v5 = 0;
    v28 = (v2 + 8);
    v29 = *(result + 16);
    while (v29 != v5)
    {
      if (v5 >= *(v4 + 16))
      {
        __break(1u);
        return result;
      }

      (*(v2 + 16))(*(v0 + 248), v4 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v5, *(v0 + 224));
      *(v0 + 120) = sub_100012868(1);
      *(v0 + 128) = v6;
      if (qword_10001C148 != -1)
      {
        swift_once();
      }

      v7 = *(v0 + 248);
      v8 = *(v0 + 224);
      v9 = *algn_10001DE58;
      *(v0 + 136) = qword_10001DE50;
      *(v0 + 144) = v9;
      sub_100007FD0();
      v10 = sub_100012DE8();

      v11 = *v28;
      result = (*v28)(v7, v8);
      ++v5;
      if ((v10 & 1) == 0)
      {
        v27 = *(v0 + 240);
        v18 = *(v0 + 232);
        v19 = *(v0 + 208);
        v20 = *(v0 + 216);
        v21 = *(v0 + 200);
        v25 = *(v0 + 224);
        v26 = *(v0 + 192);
        v30 = *(v0 + 152);

        (*(v18 + 56))(v20, 1, 1, v25);
        (*(v21 + 104))(v19, enum case for URL.DirectoryHint.inferFromPath(_:), v26);

        sub_100012888();
        sub_10000E840((v0 + 16), v30, v27);
        v11(*(v0 + 240), *(v0 + 224));
        goto LABEL_16;
      }
    }

    sub_100012A18();
    v14 = sub_100012C38();
    v15 = sub_100012DC8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Skip saving task because it is already cached.", v16, 2u);
    }

    v17 = *(v0 + 176);

    (*(v17 + 8))(*(v0 + 184), *(v0 + 168));
LABEL_16:
    sub_100005D10(&_swiftEmptyArrayStorage);
    sub_100012A48();
    swift_allocObject();
    v23 = sub_100012A38();
    sub_100008214((v0 + 16));

    v24 = *(v0 + 8);

    return v24(v23);
  }

  else
  {
    sub_1000084A4(v0 + 56, &qword_10001C270, &qword_1000135D8);
    v12 = sub_100012C08();
    sub_100007F60();
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, enum case for PFLError.unexpected(_:), v12);
    swift_willThrow();

    v22 = *(v0 + 8);

    return v22();
  }
}

unint64_t sub_1000064F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_100005BB0(&v43);
  v12 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    goto LABEL_25;
  }

  v13 = v43;
  sub_100008024(v44, v42);
  v14 = *a5;
  result = sub_100004F8C(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_100005108(v20, a4 & 1);
    result = sub_100004F8C(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_100012F58();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_10000557C();
    result = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    sub_100008214(v25);
    sub_100008024(v42, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v27 = (v23[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  result = sub_100008024(v42, (v23[7] + 32 * result));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_100005BB0(&v43);
    v12 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v43;
        sub_100008024(v44, v42);
        v32 = *a5;
        result = sub_100004F8C(v13, v12);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v19 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          sub_100005108(v36, 1);
          result = sub_100004F8C(v13, v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;

          v31 = (v38[7] + 32 * v30);
          sub_100008214(v31);
          sub_100008024(v42, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = (v38[6] + 16 * result);
          *v39 = v13;
          v39[1] = v12;
          result = sub_100008024(v42, (v38[7] + 32 * result));
          v40 = v38[2];
          v19 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v38[2] = v41;
        }

        sub_100005BB0(&v43);
        v12 = *(&v43 + 1);
      }

      while (*(&v43 + 1));
    }

LABEL_25:
    sub_100008368(v45);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100006804(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1000068BC(uint64_t a1, uint64_t a2)
{
  v2[113] = a2;
  v2[112] = a1;
  v3 = sub_100012C48();
  v2[114] = v3;
  v2[115] = *(v3 - 8);
  v2[116] = swift_task_alloc();
  v2[117] = swift_task_alloc();
  sub_100012D48();
  v2[118] = swift_task_alloc();
  sub_100007F18(&qword_10001C298, &qword_1000135F0);
  v2[119] = swift_task_alloc();
  v4 = type metadata accessor for AVCDataMetadata(0);
  v2[120] = v4;
  v2[121] = *(v4 - 8);
  v2[122] = swift_task_alloc();

  return _swift_task_switch(sub_100006A4C, 0, 0);
}

unint64_t sub_100006A4C()
{
  v96 = v0;
  sub_1000121D4();
  sub_100012998();
  sub_100012988();
  v1 = sub_100012BA8();
  if (!v2)
  {
    sub_100012A18();
    v17 = sub_100012C38();
    v18 = sub_100012DC8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to get model", v19, 2u);
    }

    v20 = *(v0 + 928);
    v21 = *(v0 + 920);
    v22 = *(v0 + 912);

    (*(v21 + 8))(v20, v22);
    sub_100008034();
    swift_allocError();
    v16 = 1;
    goto LABEL_9;
  }

  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 968);
  v6 = *(v0 + 960);
  v7 = *(v0 + 952);
  sub_10000D0F4(v7);
  if ((*(v5 + 48))(v7, 1, v6) == 1)
  {
    v8 = *(v0 + 952);

    sub_1000084A4(v8, &qword_10001C298, &qword_1000135F0);
    sub_100012A18();
    v9 = sub_100012C38();
    v10 = sub_100012DC8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to get metadata for training data", v11, 2u);
    }

    v12 = *(v0 + 936);
    v13 = *(v0 + 920);
    v14 = *(v0 + 912);

    (*(v13 + 8))(v12, v14);
    sub_100008034();
    swift_allocError();
    v16 = 2;
LABEL_9:
    *v15 = v16;
    swift_willThrow();
LABEL_22:

    v42 = *(v0 + 8);

    return v42();
  }

  v23 = *(v0 + 976);
  v24 = *(v0 + 960);
  sub_100008504(*(v0 + 952), v23, type metadata accessor for AVCDataMetadata);
  sub_100008034();
  swift_allocError();
  *v25 = 0;
  v26 = [objc_opt_self() defaultManager];
  v27 = (v23 + *(v24 + 20));
  v29 = *v27;
  v28 = v27[1];
  v30 = sub_100012D18();
  v31 = [v26 fileExistsAtPath:v30];

  v32 = *(v0 + 976);
  if (!v31)
  {
    swift_willThrow();

LABEL_21:
    sub_10000856C(v32, type metadata accessor for AVCDataMetadata);
    goto LABEL_22;
  }

  v33 = *(v0 + 960);

  v34 = (v32 + *(v33 + 24));
  v35 = *v34;
  v36 = v34[1];
  if (v35 == sub_100012BE8() && v36 == v37)
  {
  }

  else
  {
    v38 = sub_100012F48();

    if ((v38 & 1) == 0)
    {
      v32 = *(v0 + 976);

      swift_allocError();
      v41 = 19;
      goto LABEL_20;
    }
  }

  sub_100012BA8();
  if (!v39)
  {
    v32 = *(v0 + 976);

    swift_allocError();
    v41 = 8;
LABEL_20:
    *v40 = v41;
    swift_willThrow();
    goto LABEL_21;
  }

  sub_100012D38();
  v44 = sub_100012D08();
  v46 = v45;

  *(v0 + 824) = v44;
  *(v0 + 832) = v46;
  *(v0 + 840) = 10;
  *(v0 + 848) = 0xE100000000000000;
  *(v0 + 856) = 28252;
  *(v0 + 864) = 0xE200000000000000;
  sub_100008088();
  v91 = sub_1000080DC();
  v92 = &protocol witness table for Character;
  sub_100012DB8();

  v94 = sub_100005D10(&_swiftEmptyArrayStorage);
  sub_100012B58();
  swift_allocObject();
  sub_100012B48();
  sub_100012B28();
  sub_100012C98();
  sub_100012C88();
  v47 = *(v0 + 904);

  sub_100012B38();
  v49 = v48;
  sub_100012B28();
  sub_100007F18(&qword_10001C2B8, &qword_1000135F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000134B0;
  *(inited + 32) = 25188;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = v29;
  *(inited + 56) = v28;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x6C65646F6DLL;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 96) = v3;
  *(inited + 104) = v4;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0x736D61726170;
  *(inited + 136) = 0xE600000000000000;
  *(inited + 168) = &type metadata for AVCHyperParams;
  v51 = swift_allocObject();
  *(inited + 144) = v51;
  *(v51 + 16) = *v47;
  v53 = *(v47 + 32);
  v52 = *(v47 + 48);
  v54 = *(v47 + 16);
  *(v51 + 80) = *(v47 + 64);
  *(v51 + 48) = v53;
  *(v51 + 64) = v52;
  *(v51 + 32) = v54;

  sub_100008178(v47, v0 + 368);
  sub_100005D10(inited);
  swift_setDeallocating();
  sub_100007F18(&qword_10001C290, &qword_1000135E8);
  swift_arrayDestroy();
  sub_100012C78();
  v55 = (v0 + 872);

  sub_100012B38();
  v57 = v56;
  sub_100012B28();
  *(v0 + 608) = sub_100007F18(&qword_10001C2C0, &qword_100013600);
  v58 = swift_allocObject();
  *(v0 + 584) = v58;
  sub_100008260(v0 + 520, v58 + 16, &qword_10001C2C0, &qword_100013600);
  sub_100012C58();
  sub_100008214((v0 + 584));
  sub_100007F18(&qword_10001C2C8, &qword_100013608);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_28;
  }

  if (*(*v55 + 16) < 2uLL)
  {

LABEL_28:

    v32 = *(v0 + 976);
    swift_allocError();
    *v59 = 3;
    swift_willThrow();
LABEL_61:

    sub_1000084A4(v0 + 520, &qword_10001C2C0, &qword_100013600);
    goto LABEL_21;
  }

  v93 = *v55;
  sub_1000082C8(*v55 + 32, v0 + 616);
  sub_100007F18(&qword_10001C2D0, &qword_100013610);
  result = swift_dynamicCast();
  if (result)
  {
    v60 = *(v0 + 880);
    goto LABEL_46;
  }

  v61 = (v0 + 888);
  sub_1000082C8(v93 + 32, v0 + 648);
  sub_100007F18(&qword_10001C2D8, &qword_100013618);
  if (!swift_dynamicCast())
  {
    v32 = *(v0 + 976);

    swift_allocError();
    v72 = 9;
LABEL_60:
    *v71 = v72;
    swift_willThrow();
    goto LABEL_61;
  }

  v62 = *v61;
  if (*v61 >> 62)
  {
    v63 = sub_100012E58();
    if (v63)
    {
      goto LABEL_34;
    }

LABEL_45:

    v60 = &_swiftEmptyArrayStorage;
    goto LABEL_46;
  }

  v63 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v63)
  {
    goto LABEL_45;
  }

LABEL_34:
  v95[0] = &_swiftEmptyArrayStorage;
  result = sub_100005720(0, v63 & ~(v63 >> 63), 0);
  if (v63 < 0)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v64 = 0;
  v60 = v95[0];
  do
  {
    if ((v62 & 0xC000000000000001) != 0)
    {
      v65 = sub_100012E38();
    }

    else
    {
      v65 = *(v62 + 8 * v64 + 32);
    }

    v66 = v65;
    [v65 floatValue];
    v68 = v67;

    v95[0] = v60;
    v70 = v60[2];
    v69 = v60[3];
    if (v70 >= v69 >> 1)
    {
      sub_100005720((v69 > 1), v70 + 1, 1);
      v60 = v95[0];
    }

    ++v64;
    v60[2] = v70 + 1;
    *(v60 + v70 + 8) = v68;
  }

  while (v63 != v64);

LABEL_46:
  if (*(v93 + 16) < 2uLL)
  {
    __break(1u);
    goto LABEL_70;
  }

  sub_1000082C8(v93 + 64, v0 + 680);
  sub_100007F18(&qword_10001C2E0, &qword_100013620);
  if (!swift_dynamicCast())
  {

    *(v0 + 472) = 0;
    *(v0 + 440) = 0u;
    *(v0 + 456) = 0u;
    sub_1000084A4(v0 + 440, &qword_10001C2E8, &qword_100013628);
LABEL_59:

    v32 = *(v0 + 976);
    swift_allocError();
    v72 = 10;
    goto LABEL_60;
  }

  sub_100008324((v0 + 440), *(v0 + 464));
  v73 = sub_100012CA8();
  sub_100008214((v0 + 440));
  v74 = sub_100003FB0(v73);

  if (!v74)
  {

    goto LABEL_59;
  }

  v75 = *(v0 + 904);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v95[0] = v94;
  sub_1000064F4(v74, sub_1000050BC, 0, isUniquelyReferenced_nonNull_native, v95);

  v77 = v95[0];
  if ((*(v75 + 2) & 1) == 0)
  {
    goto LABEL_52;
  }

  result = v60[2];
  if (result >> 31)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  cblas_snrm2_NEWLAPACK();
  *(v0 + 768) = &type metadata for Float;
  *(v0 + 744) = v78;
  sub_100008024((v0 + 744), (v0 + 776));
  v79 = swift_isUniquelyReferenced_nonNull_native();
  v95[0] = v77;
  result = sub_1000053C0((v0 + 776), 0x6D726F4E324CLL, 0xE600000000000000, v79);
  v77 = v95[0];
LABEL_52:
  if ((*(*(v0 + 904) + 1) & 1) == 0)
  {

    goto LABEL_63;
  }

  if (*(v93 + 16) < 3uLL)
  {
LABEL_72:
    __break(1u);
    return result;
  }

  sub_1000082C8(v93 + 96, v0 + 712);

  if (!swift_dynamicCast())
  {

    *(v0 + 512) = 0;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    sub_1000084A4(v0 + 480, &qword_10001C2E8, &qword_100013628);
LABEL_68:

    v32 = *(v0 + 976);
    swift_allocError();
    v72 = 11;
    goto LABEL_60;
  }

  sub_100008324((v0 + 480), *(v0 + 504));
  v80 = sub_100012CA8();
  sub_100008214((v0 + 480));
  v81 = sub_100003FB0(v80);

  if (!v81)
  {

    goto LABEL_68;
  }

  v82 = swift_isUniquelyReferenced_nonNull_native();
  v95[0] = v77;
  sub_1000064F4(v81, sub_1000050BC, 0, v82, v95);

  v77 = v95[0];
LABEL_63:
  v83 = *(v0 + 976);
  sub_100012B38();
  v85 = v84;
  v86 = swift_initStackObject();
  *(v86 + 16) = xmmword_1000134B0;
  *(v86 + 32) = 0xD000000000000010;
  *(v86 + 40) = 0x80000001000142E0;
  *(v86 + 48) = v49;
  *(v86 + 72) = &type metadata for Double;
  *(v86 + 80) = 0xD000000000000011;
  *(v86 + 88) = 0x8000000100014300;
  *(v86 + 96) = v57;
  *(v86 + 120) = &type metadata for Double;
  *(v86 + 128) = 0xD000000000000010;
  *(v86 + 136) = 0x8000000100014320;
  *(v86 + 168) = &type metadata for Double;
  *(v86 + 144) = v85;
  v87 = sub_100005D10(v86);
  swift_setDeallocating();
  swift_arrayDestroy();
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v95[0] = v77;
  sub_1000064F4(v87, sub_1000050BC, 0, v88, v95);

  sub_10000428C(v60);

  sub_100012A48();
  swift_allocObject();
  v89 = sub_100012A38();

  sub_1000084A4(v0 + 520, &qword_10001C2C0, &qword_100013600);
  sub_10000856C(v83, type metadata accessor for AVCDataMetadata);

  v90 = *(v0 + 8);

  return v90(v89);
}

uint64_t sub_100007AF0(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return _swift_task_switch(sub_100007B10, 0, 0);
}

uint64_t sub_100007B10()
{

  sub_10000B800((v0 + 2));
  if (*(v0[12] + 56))
  {
    v1 = swift_task_alloc();
    v0[14] = v1;
    *v1 = v0;
    v1[1] = sub_100007DB4;
    v2 = v0[11];

    return sub_1000068BC(v2, (v0 + 2));
  }

  else
  {
    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_100007CA4;
    v5 = v0[11];

    return sub_100005E40(v5);
  }
}

uint64_t sub_100007CA4(uint64_t a1)
{
  v4 = *v2;
  v8 = *v2;

  v5 = sub_100007EC4(v4 + 16);
  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_100007DB4(uint64_t a1)
{
  v4 = *v2;
  v8 = *v2;

  v5 = sub_100007EC4(v4 + 16);
  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_100007F18(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100007F60()
{
  result = qword_10001C278;
  if (!qword_10001C278)
  {
    sub_100012C08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C278);
  }

  return result;
}

uint64_t sub_100007FB8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_100007FD0()
{
  result = qword_10001C280;
  if (!qword_10001C280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C280);
  }

  return result;
}

_OWORD *sub_100008024(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_100008034()
{
  result = qword_10001C2A0;
  if (!qword_10001C2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C2A0);
  }

  return result;
}

unint64_t sub_100008088()
{
  result = qword_10001C2A8;
  if (!qword_10001C2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C2A8);
  }

  return result;
}

unint64_t sub_1000080DC()
{
  result = qword_10001C2B0;
  if (!qword_10001C2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C2B0);
  }

  return result;
}

uint64_t sub_100008130()
{

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1000081D4()
{
  if (*(v0 + 40))
  {
    sub_100008214((v0 + 16));
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100008214(void *a1)
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

uint64_t sub_100008260(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100007F18(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000082C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_100008324(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000083D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100008434(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007F18(&qword_10001C270, &qword_1000135D8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000084A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100007F18(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100008504(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000856C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1000085D4()
{
  sub_100012E28(55);
  v0._object = 0x8000000100014390;
  v0._countAndFlagsBits = 0xD000000000000035;
  sub_100012D68(v0);
  v1._countAndFlagsBits = 0x6F6D5F6C665F6372;
  v1._object = 0xEB000000006C6564;
  sub_100012D68(v1);
  qword_10001DE50 = 0;
  *algn_10001DE58 = 0xE000000000000000;
}

void sub_100008668()
{
  if (qword_10001C148 != -1)
  {
    swift_once();
  }

  v0 = qword_10001DE50;
  v1 = *algn_10001DE58;

  v2._countAndFlagsBits = 47;
  v2._object = 0xE100000000000000;
  sub_100012D68(v2);
  v3._countAndFlagsBits = 0x6C65646F6D5F6C66;
  v3._object = 0xED00006E6F736A2ELL;
  sub_100012D68(v3);
  qword_10001DE60 = v0;
  *algn_10001DE68 = v1;
}

void sub_100008718()
{
  sub_100012E28(27);
  if (qword_10001C148 != -1)
  {
    swift_once();
  }

  v1 = qword_10001DE50;
  v0 = *algn_10001DE58;

  v2._object = 0x8000000100014370;
  v2._countAndFlagsBits = 0xD000000000000019;
  sub_100012D68(v2);
  qword_10001DE70 = v1;
  *algn_10001DE78 = v0;
}

uint64_t sub_1000087F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100012938();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000088C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100012938();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000089A0(uint64_t a1)
{
  result = sub_100012938();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100008A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100012938();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100008B04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100012938();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100008BE0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100008C18(uint64_t a1)
{
  result = sub_100012938();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100008CAC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6974617269707865;
    }

    else
    {
      v5 = 0x64616F6C6E776F64;
    }

    if (v2)
    {
      v6 = 0xEF656D69745F6E6FLL;
    }

    else
    {
      v6 = 0xED0000656D69745FLL;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 1752457584;
    if (a1 != 3)
    {
      v4 = 0xD000000000000010;
      v3 = 0x8000000100014200;
    }

    if (a1 == 2)
    {
      v5 = 0x695F657069636572;
    }

    else
    {
      v5 = v4;
    }

    if (v2 == 2)
    {
      v6 = 0xE900000000000064;
    }

    else
    {
      v6 = v3;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x6974617269707865;
    }

    else
    {
      v11 = 0x64616F6C6E776F64;
    }

    if (a2)
    {
      v10 = 0xEF656D69745F6E6FLL;
    }

    else
    {
      v10 = 0xED0000656D69745FLL;
    }

    if (v5 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v7 = 1752457584;
    v8 = 0x8000000100014200;
    if (a2 == 3)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xD000000000000010;
    }

    if (a2 == 2)
    {
      v9 = 0x695F657069636572;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xE900000000000064;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v6 != v10)
  {
LABEL_37:
    v12 = sub_100012F48();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

Swift::Int sub_100008E50()
{
  sub_100012FB8();
  sub_100012D58();

  return sub_100012FD8();
}

uint64_t sub_100008F4C(uint64_t a1)
{
  sub_100012D58();
}

Swift::Int sub_100009034(uint64_t a1)
{
  sub_100012FB8();
  sub_100012D58();

  return sub_100012FD8();
}

unint64_t sub_10000912C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000ACF4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10000915C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000656D69745FLL;
  v4 = 0x64616F6C6E776F64;
  v5 = 0xE900000000000064;
  v6 = 0x695F657069636572;
  v7 = 0xE400000000000000;
  v8 = 1752457584;
  if (v2 != 3)
  {
    v8 = 0xD000000000000010;
    v7 = 0x8000000100014200;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6974617269707865;
    v3 = 0xEF656D69745F6E6FLL;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_100009214()
{
  v1 = *v0;
  v2 = 0x64616F6C6E776F64;
  v3 = 0x695F657069636572;
  v4 = 1752457584;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6974617269707865;
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

unint64_t sub_1000092C8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10000ACF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100009308(uint64_t a1)
{
  v2 = sub_10000A608();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100009344(uint64_t a1)
{
  v2 = sub_10000A608();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100009380(void *a1)
{
  v3 = sub_100007F18(&qword_10001C468, &qword_100013798);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_100008324(a1, a1[3]);
  sub_10000A608();
  sub_100012FF8();
  v13 = 0;
  sub_100012938();
  sub_10000A6B0(&qword_10001C478, &protocol conformance descriptor for Date);
  sub_100012F18();
  if (!v1)
  {
    type metadata accessor for AVCModelMetadata(0);
    v12 = 1;
    sub_100012F18();
    v11 = 2;
    sub_100012F08();
    v10 = 3;
    sub_100012F08();
    v9 = 4;
    sub_100012F28();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000095C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_100012938();
  v30 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v33 = &v28 - v7;
  v8 = sub_100007F18(&qword_10001C498, &qword_1000137A8);
  v31 = *(v8 - 8);
  v32 = v8;
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for AVCModelMetadata(0);
  __chkstk_darwin(v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008324(a1, a1[3]);
  sub_10000A608();
  v34 = v10;
  v14 = v35;
  sub_100012FE8();
  if (v14)
  {
    return sub_100008214(a1);
  }

  v35 = v13;
  v40 = 0;
  sub_10000A6B0(&qword_10001C490, &protocol conformance descriptor for Date);
  sub_100012EE8();
  v15 = v33;
  v33 = *(v30 + 32);
  (v33)(v35, v15, v3);
  v39 = 1;
  sub_100012EE8();
  v16 = v11;
  v17 = *(v11 + 20);
  v18 = v35;
  (v33)(&v35[v17], v6, v3);
  v38 = 2;
  v19 = sub_100012EA8();
  v20 = (v18 + v16[7]);
  *v20 = v19;
  v20[1] = v21;
  v37 = 3;
  v22 = sub_100012EA8();
  v23 = v31;
  v24 = (v18 + v16[6]);
  *v24 = v22;
  v24[1] = v25;
  v36 = 4;
  v26 = sub_100012EF8();
  (*(v23 + 8))(v34, v32);
  *(v18 + v16[8]) = v26;
  sub_10000A6F4(v18, v29, type metadata accessor for AVCModelMetadata);
  sub_100008214(a1);
  return sub_10000856C(v18, type metadata accessor for AVCModelMetadata);
}

uint64_t sub_100009AF8(void *a1)
{
  v3 = sub_100007F18(&qword_10001C4A0, &qword_1000137B0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100008324(a1, a1[3]);
  sub_10000A65C();
  sub_100012FF8();
  v8[15] = 0;
  sub_100012938();
  sub_10000A6B0(&qword_10001C478, &protocol conformance descriptor for Date);
  sub_100012F18();
  if (!v1)
  {
    type metadata accessor for AVCDataMetadata(0);
    v8[14] = 1;
    sub_100012F08();
    v8[13] = 2;
    sub_100012F08();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100009CD4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_100012938();
  v29 = *(v4 - 8);
  __chkstk_darwin(v4);
  v30 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100007F18(&qword_10001C480, &qword_1000137A0);
  v28 = *(v31 - 8);
  __chkstk_darwin(v31);
  v7 = &v24 - v6;
  v8 = type metadata accessor for AVCDataMetadata(0);
  __chkstk_darwin(v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008324(a1, a1[3]);
  sub_10000A65C();
  sub_100012FE8();
  if (v2)
  {
    return sub_100008214(a1);
  }

  v12 = v28;
  v11 = v29;
  v25 = v8;
  v26 = v10;
  v34 = 0;
  sub_10000A6B0(&qword_10001C490, &protocol conformance descriptor for Date);
  v14 = v30;
  v13 = v31;
  sub_100012EE8();
  (*(v11 + 32))(v26, v14, v4);
  v33 = 1;
  v15 = sub_100012EA8();
  v16 = &v26[*(v25 + 20)];
  *v16 = v15;
  v16[1] = v17;
  v32 = 2;
  v18 = sub_100012EA8();
  v20 = v19;
  (*(v12 + 8))(v7, v13);
  v21 = v26;
  v22 = &v26[*(v25 + 24)];
  *v22 = v18;
  v22[1] = v20;
  sub_10000A6F4(v21, v27, type metadata accessor for AVCDataMetadata);
  sub_100008214(a1);
  return sub_10000856C(v21, type metadata accessor for AVCDataMetadata);
}

uint64_t sub_10000A08C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1752457584;
  if (v2 != 1)
  {
    v4 = 0x695F657069636572;
    v3 = 0xE900000000000064;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x69746172656E6567;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEF656D69745F6E6FLL;
  }

  v7 = 0xE400000000000000;
  v8 = 1752457584;
  if (*a2 != 1)
  {
    v8 = 0x695F657069636572;
    v7 = 0xE900000000000064;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x69746172656E6567;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEF656D69745F6E6FLL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100012F48();
  }

  return v11 & 1;
}

Swift::Int sub_10000A190()
{
  sub_100012FB8();
  sub_100012D58();

  return sub_100012FD8();
}

uint64_t sub_10000A23C(uint64_t a1)
{
  sub_100012D58();
}

Swift::Int sub_10000A2D4(uint64_t a1)
{
  sub_100012FB8();
  sub_100012D58();

  return sub_100012FD8();
}

unint64_t sub_10000A37C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000AD40(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10000A3AC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF656D69745F6E6FLL;
  v4 = 0xE400000000000000;
  v5 = 1752457584;
  if (v2 != 1)
  {
    v5 = 0x695F657069636572;
    v4 = 0xE900000000000064;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x69746172656E6567;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10000A414()
{
  v1 = 1752457584;
  if (*v0 != 1)
  {
    v1 = 0x695F657069636572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x69746172656E6567;
  }
}

unint64_t sub_10000A478@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10000AD40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10000A4AC(uint64_t a1)
{
  v2 = sub_10000A65C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000A4E8(uint64_t a1)
{
  v2 = sub_10000A65C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000A554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_100012918() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_100012F48() & 1) == 0)
  {
    return 0;
  }

  v11 = *(a3 + 24);
  v12 = *(a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  if (v12 == *v14 && v13 == v14[1])
  {
    return 1;
  }

  return sub_100012F48();
}

unint64_t sub_10000A608()
{
  result = qword_10001C470;
  if (!qword_10001C470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C470);
  }

  return result;
}

unint64_t sub_10000A65C()
{
  result = qword_10001C488;
  if (!qword_10001C488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C488);
  }

  return result;
}

uint64_t sub_10000A6B0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100012938();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000A6F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

BOOL sub_10000A75C(uint64_t a1, uint64_t a2)
{
  if (sub_100012918() & 1) != 0 && (v4 = type metadata accessor for AVCModelMetadata(0), (sub_100012918()) && ((v5 = v4[6], v6 = *(a1 + v5), v7 = *(a1 + v5 + 8), v8 = (a2 + v5), v6 == *v8) ? (v9 = v7 == v8[1]) : (v9 = 0), (v9 || (sub_100012F48()) && ((v10 = v4[7], v11 = *(a1 + v10), v12 = *(a1 + v10 + 8), v13 = (a2 + v10), v11 == *v13) ? (v14 = v12 == v13[1]) : (v14 = 0), v14 || (sub_100012F48())))
  {
    return *(a1 + v4[8]) == *(a2 + v4[8]);
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for AVCDataMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AVCDataMetadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AVCModelMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AVCModelMetadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10000AAE8()
{
  result = qword_10001C4A8;
  if (!qword_10001C4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C4A8);
  }

  return result;
}

unint64_t sub_10000AB40()
{
  result = qword_10001C4B0;
  if (!qword_10001C4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C4B0);
  }

  return result;
}

unint64_t sub_10000AB98()
{
  result = qword_10001C4B8;
  if (!qword_10001C4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C4B8);
  }

  return result;
}

unint64_t sub_10000ABF0()
{
  result = qword_10001C4C0;
  if (!qword_10001C4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C4C0);
  }

  return result;
}

unint64_t sub_10000AC48()
{
  result = qword_10001C4C8;
  if (!qword_10001C4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C4C8);
  }

  return result;
}

unint64_t sub_10000ACA0()
{
  result = qword_10001C4D0;
  if (!qword_10001C4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C4D0);
  }

  return result;
}

unint64_t sub_10000ACF4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100018C80;
  v6._object = a2;
  v4 = sub_100012E98(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10000AD40(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100018D18;
  v6._object = a2;
  v4 = sub_100012E98(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

__n128 initializeBufferWithCopyOfBuffer for AVCCustomTaskParameters(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AVCCustomTaskParameters(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AVCCustomTaskParameters(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10000AE40(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E69617274;
  }

  else
  {
    v3 = 0x64616F6C6E776F64;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x6E69617274;
  }

  else
  {
    v5 = 0x64616F6C6E776F64;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
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
    v8 = sub_100012F48();
  }

  return v8 & 1;
}

Swift::Int sub_10000AEE4()
{
  sub_100012FB8();
  sub_100012D58();

  return sub_100012FD8();
}

uint64_t sub_10000AF64(uint64_t a1)
{
  sub_100012D58();
}

Swift::Int sub_10000AFD0(uint64_t a1)
{
  sub_100012FB8();
  sub_100012D58();

  return sub_100012FD8();
}

uint64_t sub_10000B04C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100018D80;
  v8._object = v3;
  v5 = sub_100012E98(v4, v8);

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

void sub_10000B0AC(uint64_t *a1@<X8>)
{
  v2 = 0x64616F6C6E776F64;
  if (*v1)
  {
    v2 = 0x6E69617274;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10000B148()
{
  if (*v0)
  {
    return 0x746E756F436E696DLL;
  }

  else
  {
    return 0x7379614474736170;
  }
}

uint64_t sub_10000B17C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7379614474736170 && a2 == 0xE800000000000000;
  if (v6 || (sub_100012F48() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E756F436E696DLL && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100012F48();

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

uint64_t sub_10000B258(uint64_t a1)
{
  v2 = sub_10000CBD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000B294(uint64_t a1)
{
  v2 = sub_10000CBD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000B2D0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10000BC90(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

Swift::Int sub_10000B318()
{
  v1 = *v0;
  sub_100012FB8();
  sub_100012FC8(v1);
  return sub_100012FD8();
}

Swift::Int sub_10000B390(uint64_t a1)
{
  v2 = *v1;
  sub_100012FB8();
  sub_100012FC8(v2);
  return sub_100012FD8();
}

uint64_t sub_10000B3D4()
{
  if (*v0)
  {
    return 0x5446657669746361;
  }

  else
  {
    return 0x657079546B736174;
  }
}

uint64_t sub_10000B408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x657079546B736174 && a2 == 0xE800000000000000;
  if (v6 || (sub_100012F48() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x5446657669746361 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100012F48();

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

uint64_t sub_10000B4F0(uint64_t a1)
{
  v2 = sub_10000C014();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000B52C(uint64_t a1)
{
  v2 = sub_10000C014();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000B568@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10000BE38(a2);
  if (!v2)
  {
    *a1 = result & 1;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

unint64_t sub_10000B59C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x657079546B736174;
    v6 = 0x4C7463656C6C6F63;
    if (a1 != 2)
    {
      v6 = 0x676E696E7261656CLL;
    }

    if (a1)
    {
      v5 = 0x6F6665426C617665;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6D614E6C65646F6DLL;
    v2 = 0xD00000000000001FLL;
    if (a1 == 7)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000012;
    if (a1 != 4)
    {
      v3 = 0x7A69536863746162;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_10000B700@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10000C3D4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10000B734(uint64_t a1)
{
  v2 = sub_10000CB28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000B770(uint64_t a1)
{
  v2 = sub_10000CB28();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_10000B7AC@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10000C6DC(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_10000B800@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_100012C48();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_opt_self();
  sub_100012BD8();
  isa = sub_100012CF8().super.isa;

  *&v27[0] = 0;
  v10 = [v8 dataWithJSONObject:isa options:0 error:v27];

  v11 = *&v27[0];
  if (v10)
  {
    v26 = v4;
    v12 = sub_1000128D8();
    v14 = v13;

    sub_100012788();
    swift_allocObject();
    sub_100012778();
    sub_10000BBE8();
    sub_100012768();
    if (!v2)
    {
      sub_10000BC3C(v12, v14);

      v23 = v27[3];
      *(a2 + 32) = v27[2];
      *(a2 + 48) = v23;
      *(a2 + 64) = v28;
      v24 = v27[1];
      *a2 = v27[0];
      *(a2 + 16) = v24;
      return result;
    }

    sub_10000BC3C(v12, v14);

    v4 = v26;
  }

  else
  {
    v15 = v11;
    sub_100012838();

    swift_willThrow();
  }

  sub_100012A18();
  swift_errorRetain();
  v16 = sub_100012C38();
  v17 = sub_100012DD8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 4) = v20;
    *v19 = v20;
    _os_log_impl(&_mh_execute_header, v16, v17, "Couldn't form AVCHyperParams: %@", v18, 0xCu);
    sub_10000BB80(v19);
  }

  (*(v5 + 8))(v7, v4);
  sub_100008034();
  swift_allocError();
  *v21 = 4;
  swift_willThrow();
}

uint64_t sub_10000BB80(uint64_t a1)
{
  v2 = sub_100007F18(&qword_10001C4D8, &qword_100013AB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000BBE8()
{
  result = qword_10001C4E0;
  if (!qword_10001C4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C4E0);
  }

  return result;
}

uint64_t sub_10000BC3C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10000BC90(void *a1)
{
  v2 = sub_100007F18(&qword_10001C540, &qword_100013D80);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8[-v4];
  sub_100008324(a1, a1[3]);
  sub_10000CBD0();
  sub_100012FE8();
  v8[15] = 0;
  v6 = sub_100012ED8();
  v8[14] = 1;
  sub_100012ED8();
  (*(v3 + 8))(v5, v2);
  sub_100008214(a1);
  return v6;
}

uint64_t sub_10000BE38(void *a1)
{
  v2 = sub_100007F18(&qword_10001C4E8, &qword_100013AB8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8[-v4];
  sub_100008324(a1, a1[3]);
  sub_10000C014();
  sub_100012FE8();
  v9 = 0;
  sub_10000C068();
  sub_100012EE8();
  v6 = v8[8];
  v9 = 1;
  sub_10000C0BC();
  sub_100012EE8();
  (*(v3 + 8))(v5, v2);
  sub_100008214(a1);
  return v6;
}

unint64_t sub_10000C014()
{
  result = qword_10001C4F0;
  if (!qword_10001C4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C4F0);
  }

  return result;
}

unint64_t sub_10000C068()
{
  result = qword_10001C4F8;
  if (!qword_10001C4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C4F8);
  }

  return result;
}

unint64_t sub_10000C0BC()
{
  result = qword_10001C500;
  if (!qword_10001C500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C500);
  }

  return result;
}

__n128 sub_10000C120(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10000C144(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000C18C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for AVCActiveFaceTimeParameter(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for AVCActiveFaceTimeParameter(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AVCActiveFaceTimeParameter(uint64_t result, int a2, int a3)
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

unint64_t sub_10000C278()
{
  result = qword_10001C508;
  if (!qword_10001C508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C508);
  }

  return result;
}

unint64_t sub_10000C2D0()
{
  result = qword_10001C510;
  if (!qword_10001C510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C510);
  }

  return result;
}

unint64_t sub_10000C328()
{
  result = qword_10001C518;
  if (!qword_10001C518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C518);
  }

  return result;
}

unint64_t sub_10000C380()
{
  result = qword_10001C520;
  if (!qword_10001C520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C520);
  }

  return result;
}

uint64_t sub_10000C3D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657079546B736174 && a2 == 0xE800000000000000;
  if (v4 || (sub_100012F48() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6665426C617665 && a2 == 0xEF6E696172546572 || (sub_100012F48() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4C7463656C6C6F63 && a2 == 0xED00006D726F4E32 || (sub_100012F48() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E696E7261656CLL && a2 == 0xEC00000065746152 || (sub_100012F48() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000100014230 == a2 || (sub_100012F48() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7A69536863746162 && a2 == 0xE900000000000065 || (sub_100012F48() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6D614E6C65646F6DLL && a2 == 0xE900000000000065 || (sub_100012F48() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100014270 == a2 || (sub_100012F48() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000100014250 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_100012F48();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_10000C6DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100007F18(&qword_10001C528, &qword_100013D78);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  sub_100008324(a1, a1[3]);
  sub_10000CB28();
  sub_100012FE8();
  if (v2)
  {
    return sub_100008214(a1);
  }

  LOBYTE(v37) = 0;
  sub_10000C068();
  sub_100012EE8();
  v9 = v42[0];
  v42[0] = 1;
  v10 = sub_100012EB8();
  v42[0] = 2;
  v36 = sub_100012EB8();
  v42[0] = 3;
  sub_100012EC8();
  v12 = v11;
  v42[0] = 4;
  v35 = sub_100012ED8();
  v42[0] = 5;
  v34 = sub_100012ED8();
  v42[0] = 6;
  v13 = sub_100012EA8();
  v33 = v14;
  v32 = v13;
  v42[0] = 7;
  v28 = sub_100012EA8();
  v31 = v15;
  v52[0] = 8;
  v30 = sub_100012EA8();
  v29 = v16;
  v17 = v10 & 1;
  HIDWORD(v27) = v10 & 1;
  v36 &= 1u;
  v18 = v36;
  (*(v6 + 8))(v8, v5);
  LOBYTE(v37) = v9;
  BYTE1(v37) = v17;
  BYTE2(v37) = v18;
  DWORD1(v37) = v12;
  v19 = v35;
  v20 = v34;
  *(&v37 + 1) = v35;
  *&v38 = v34;
  v21 = v32;
  *(&v38 + 1) = v32;
  *&v39 = v33;
  v22 = v28;
  v23 = v31;
  *(&v39 + 1) = v28;
  *&v40 = v31;
  *(&v40 + 1) = v30;
  v41 = v29;
  sub_100008178(&v37, v42);
  sub_100008214(a1);
  v42[0] = v9;
  v42[1] = BYTE4(v27);
  v42[2] = v36;
  v43 = v12;
  v44 = v19;
  v45 = v20;
  v46 = v21;
  v47 = v33;
  v48 = v22;
  v49 = v23;
  v50 = v30;
  v51 = v29;
  result = sub_100007EC4(v42);
  v25 = v40;
  *(a2 + 32) = v39;
  *(a2 + 48) = v25;
  *(a2 + 64) = v41;
  v26 = v38;
  *a2 = v37;
  *(a2 + 16) = v26;
  return result;
}

unint64_t sub_10000CB28()
{
  result = qword_10001C530;
  if (!qword_10001C530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C530);
  }

  return result;
}

unint64_t sub_10000CB7C()
{
  result = qword_10001C538;
  if (!qword_10001C538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C538);
  }

  return result;
}

unint64_t sub_10000CBD0()
{
  result = qword_10001C548;
  if (!qword_10001C548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C548);
  }

  return result;
}

uint64_t sub_10000CC24(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_10000CCB4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AVCHyperParams.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AVCHyperParams.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000CEC8()
{
  result = qword_10001C550;
  if (!qword_10001C550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C550);
  }

  return result;
}

unint64_t sub_10000CF20()
{
  result = qword_10001C558;
  if (!qword_10001C558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C558);
  }

  return result;
}

unint64_t sub_10000CF78()
{
  result = qword_10001C560;
  if (!qword_10001C560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C560);
  }

  return result;
}

unint64_t sub_10000CFD0()
{
  result = qword_10001C568;
  if (!qword_10001C568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C568);
  }

  return result;
}

unint64_t sub_10000D028()
{
  result = qword_10001C570;
  if (!qword_10001C570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C570);
  }

  return result;
}

unint64_t sub_10000D080()
{
  result = qword_10001C578;
  if (!qword_10001C578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C578);
  }

  return result;
}

uint64_t sub_10000D0F4@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = sub_100007F18(&qword_10001C298, &qword_1000135F0);
  __chkstk_darwin(v1 - 8);
  v31 = &v31 - v2;
  v32 = sub_100012748();
  v3 = *(v32 - 8);
  __chkstk_darwin(v32);
  v5 = (&v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_100007F18(&qword_10001C268, &qword_1000135D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v31 - v7;
  v9 = sub_100012848();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000128A8();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v12, enum case for URL.DirectoryHint.notDirectory(_:), v9);
  (*(v14 + 56))(v8, 1, 1, v13);
  sub_100012888();
  v17 = [objc_opt_self() defaultManager];
  sub_100012878();
  v18 = sub_100012D18();

  LODWORD(v8) = [v17 fileExistsAtPath:v18];

  if (v8)
  {
    v19 = v33;
    sub_100012788();
    swift_allocObject();
    sub_100012778();
    if (qword_10001C160 != -1)
    {
      swift_once();
    }

    v20 = qword_10001DE80;
    *v5 = qword_10001DE80;
    (*(v3 + 104))(v5, enum case for JSONDecoder.DateDecodingStrategy.formatted(_:), v32);
    v21 = v20;
    sub_100012758();
    v23 = sub_1000128B8();
    v25 = v24;
    v26 = type metadata accessor for AVCDataMetadata(0);
    sub_10000ED94(&qword_10001C588, type metadata accessor for AVCDataMetadata, &unk_100013744);
    v27 = v31;
    sub_100012768();
    (*(v14 + 8))(v16, v13);
    sub_10000BC3C(v23, v25);

    v28 = v27;
    v29 = *(*(v26 - 8) + 56);
    v29(v28, 0, 1, v26);
    sub_100008504(v28, v19, type metadata accessor for AVCDataMetadata);
    return (v29)(v19, 0, 1, v26);
  }

  else
  {
    (*(v14 + 8))(v16, v13);
    v22 = type metadata accessor for AVCDataMetadata(0);
    return (*(*(v22 - 8) + 56))(v33, 1, 1, v22);
  }
}

void sub_10000D704()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  v1 = sub_100012D18();
  [v0 setDateFormat:v1];

  qword_10001DE80 = v0;
}

uint64_t sub_10000D77C@<X0>(uint64_t a2@<X8>)
{
  v45 = a2;
  v2 = sub_100012938();
  v43 = *(v2 - 8);
  v44 = v2;
  v3 = __chkstk_darwin(v2);
  v42 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v40 = &v39 - v6;
  __chkstk_darwin(v5);
  v41 = &v39 - v7;
  v8 = sub_100012748();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_100007F18(&qword_10001C328, &unk_100013668);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v39 - v17;
  __chkstk_darwin(v16);
  v20 = &v39 - v19;
  v21 = [objc_opt_self() defaultManager];
  sub_100012878();
  v22 = sub_100012D18();

  v23 = [v21 fileExistsAtPath:v22];

  if (v23)
  {
    sub_100012788();
    swift_allocObject();
    sub_100012778();
    if (qword_10001C160 != -1)
    {
      swift_once();
    }

    v24 = qword_10001DE80;
    *v11 = qword_10001DE80;
    (*(v9 + 104))(v11, enum case for JSONDecoder.DateDecodingStrategy.formatted(_:), v8);
    v25 = v24;
    sub_100012758();
    v26 = sub_1000128B8();
    v28 = v27;
    v29 = type metadata accessor for AVCModelMetadata(0);
    sub_10000ED94(&qword_10001C590, type metadata accessor for AVCModelMetadata, &unk_10001371C);
    sub_100012768();
    sub_10000BC3C(v26, v28);

    v38 = *(*(v29 - 8) + 56);
    v38(v18, 0, 1, v29);
    sub_100008504(v18, v20, type metadata accessor for AVCModelMetadata);
    v38(v20, 0, 1, v29);
  }

  else
  {
    v29 = type metadata accessor for AVCModelMetadata(0);
    (*(*(v29 - 8) + 56))(v20, 1, 1, v29);
  }

  sub_10000ECB4(v20, v15);
  type metadata accessor for AVCModelMetadata(0);
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v15, 1, v29) == 1)
  {
    sub_1000084A4(v15, &qword_10001C328, &unk_100013668);
  }

  else
  {
    v32 = v43;
    v31 = v44;
    v33 = v40;
    (*(v43 + 16))(v40, &v15[*(v29 + 20)], v44);
    sub_10000EC58(v15);
    v34 = v41;
    (*(v32 + 32))(v41, v33, v31);
    v35 = v42;
    sub_100012928();
    LOBYTE(v33) = sub_100012908();
    v36 = *(v32 + 8);
    v36(v35, v31);
    v36(v34, v31);
    if (v33)
    {
      sub_1000084A4(v20, &qword_10001C328, &unk_100013668);
      return (*(v30 + 56))(v45, 1, 1, v29);
    }
  }

  return sub_10000ED24(v20, v45);
}

uint64_t sub_10000DDBC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000127C8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1000127A8();
  __chkstk_darwin(v7 - 8);
  sub_100012808();
  swift_allocObject();
  sub_1000127F8();
  sub_100012798();
  sub_1000127B8();
  if (qword_10001C160 != -1)
  {
    swift_once();
  }

  v8 = qword_10001DE80;
  *v6 = qword_10001DE80;
  (*(v4 + 104))(v6, enum case for JSONEncoder.DateEncodingStrategy.formatted(_:), v3);
  v9 = v8;
  sub_1000127D8();
  type metadata accessor for AVCModelMetadata(0);
  sub_10000ED94(&qword_10001C580, type metadata accessor for AVCModelMetadata, &unk_10001376C);
  v10 = sub_1000127E8();
  if (!v2)
  {
    v13 = v10;
    v14 = v11;
    sub_1000128E8();
    sub_10000BC3C(v13, v14);
  }
}

uint64_t sub_10000DFFC(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v3 = sub_100012968();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007F18(&qword_10001C598, &qword_100013FB0);
  __chkstk_darwin(v7 - 8);
  v9 = &v31 - v8;
  v10 = sub_100012938();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v33 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v31 - v14;
  v34 = sub_100012978();
  v16 = *(v34 - 8);
  __chkstk_darwin(v34);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = [objc_allocWithZone(CHManager) init];
  sub_100012958();
  sub_100012928();
  result = (*(v4 + 104))(v6, enum case for Calendar.Component.day(_:), v3);
  if (__OFSUB__(0, a1))
  {
    __break(1u);
  }

  else
  {
    sub_100012948();
    (*(v4 + 8))(v6, v3);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {

      (*(v11 + 8))(v15, v10);
      (*(v16 + 8))(v18, v34);
      sub_1000084A4(v9, &qword_10001C598, &qword_100013FB0);
      return 0;
    }

    else
    {
      (*(v11 + 32))();
      sub_100007F18(&qword_10001C5A0, &qword_100013FB8);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_100013FA0;
      v21 = objc_opt_self();
      isa = sub_1000128F8().super.isa;
      v23 = sub_1000128F8().super.isa;
      v24 = [v21 predicateForCallsBetweenStartDate:isa endDate:v23];

      *(v20 + 32) = v24;
      *(v20 + 40) = [v21 predicateForCallsWithServiceProvider:kCHServiceProviderFaceTime];
      sub_10000EDDC();
      v25 = sub_100012D98().super.isa;

      v26 = [objc_opt_self() andPredicateWithSubpredicates:v25];

      v27 = v26;
      v28 = v32;
      v29 = [v32 callCountWithPredicate:v27];

      v30 = *(v11 + 8);
      v30(v33, v10);
      v30(v15, v10);
      (*(v16 + 8))(v18, v34);
      return v29 >= v31;
    }
  }

  return result;
}

void sub_10000E4CC()
{
  v0 = sub_100007F18(&qword_10001C268, &qword_1000135D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v21 - v1;
  v22 = sub_100012848();
  v3 = *(v22 - 8);
  __chkstk_darwin(v22);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1000128A8();
  v24 = *(v25 - 8);
  __chkstk_darwin(v25);
  v23 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v8 = [v7 defaultManager];
  if (qword_10001C148 != -1)
  {
    swift_once();
  }

  v9 = sub_100012D18();
  v10 = [v8 fileExistsAtPath:v9];

  if (v10)
  {
    (*(v3 + 104))(v5, enum case for URL.DirectoryHint.isDirectory(_:), v22);
    v11 = v24;
    (*(v24 + 56))(v2, 1, 1, v25);

    v12 = v23;
    sub_100012888();
    v13 = [v7 defaultManager];
    sub_100012858(v14);
    v16 = v15;
    v26 = 0;
    v17 = [v13 removeItemAtURL:v15 error:&v26];

    if (v17)
    {
      v18 = *(v11 + 8);
      v19 = v26;
      v18(v12, v25);
    }

    else
    {
      v20 = v26;
      sub_100012838();

      swift_willThrow();
      (*(v11 + 8))(v12, v25);
    }
  }
}

uint64_t sub_10000E840(void *a1, uint64_t a2, uint64_t a3)
{
  v40 = a3;
  v36 = sub_100012848();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v33 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1000128A8();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AVCModelMetadata(0);
  __chkstk_darwin(v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100012928();
  sub_100008324(a1, a1[3]);
  sub_100012B68();
  if (qword_10001C158 != -1)
  {
    swift_once();
  }

  v10 = *algn_10001DE78;
  v39 = qword_10001DE70;

  v41 = a2;
  v11 = sub_100012BE8();
  v13 = v12;
  sub_100008324(a1, a1[3]);
  v14 = sub_100012B88();
  v15 = &v9[v7[6]];
  *v15 = v39;
  v15[1] = v10;
  v16 = &v9[v7[7]];
  *v16 = v11;
  v16[1] = v13;
  *&v9[v7[8]] = v14;
  v17 = [objc_opt_self() defaultManager];
  sub_100012858(v18);
  v20 = v19;
  v42[0] = 0;
  v21 = [v17 removeItemAtURL:v19 error:v42];

  v22 = v9;
  if (v21)
  {
    v23 = v42[0];
    v24 = v38;
  }

  else
  {
    v25 = v42[0];
    sub_100012838();

    swift_willThrow();

    v24 = 0;
  }

  sub_100012BC8();
  if (!v24)
  {
    strcpy(v42, "fl_model.json");
    HIWORD(v42[1]) = -4864;
    v27 = v33;
    v26 = v34;
    v28 = v36;
    (*(v34 + 104))(v33, enum case for URL.DirectoryHint.inferFromPath(_:), v36);
    sub_100007FD0();
    v29 = v32;
    sub_100012898();
    (*(v26 + 8))(v27, v28);
    sub_10000DDBC(v29, v22);
    (*(v35 + 8))(v29, v37);
  }

  return sub_10000EC58(v22);
}

uint64_t sub_10000EC58(uint64_t a1)
{
  v2 = type metadata accessor for AVCModelMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000ECB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007F18(&qword_10001C328, &unk_100013668);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000ED24(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007F18(&qword_10001C328, &unk_100013668);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000ED94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10000EDDC()
{
  result = qword_10001C5A8;
  if (!qword_10001C5A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001C5A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AVCError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AVCError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::Int sub_10000EF78()
{
  v1 = *v0;
  sub_100012FB8();
  sub_100012FC8(v1 + 9801);
  return sub_100012FD8();
}

Swift::Int sub_10000EFF8(uint64_t a1)
{
  v2 = *v1;
  sub_100012FB8();
  sub_100012FC8(v2 + 9801);
  return sub_100012FD8();
}

uint64_t sub_10000F040@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000F1E4(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10000F084()
{
  result = qword_10001C5B0;
  if (!qword_10001C5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C5B0);
  }

  return result;
}

uint64_t sub_10000F0DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F13C();
  v5 = sub_10000F190();

  return Error<>._code.getter(a1, a2, v4, v5);
}

unint64_t sub_10000F13C()
{
  result = qword_10001C5B8;
  if (!qword_10001C5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C5B8);
  }

  return result;
}

unint64_t sub_10000F190()
{
  result = qword_10001C5C0;
  if (!qword_10001C5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C5C0);
  }

  return result;
}

uint64_t sub_10000F1E4(uint64_t a1)
{
  if ((a1 - 9801) >= 0x14)
  {
    return 20;
  }

  else
  {
    return a1 - 9801;
  }
}

uint64_t sub_10000F1FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000100F8;

  return MLHostExtension.shouldRun(context:)(a1, a2, a3);
}

uint64_t sub_10000F2AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000F354;

  return sub_10000F6EC(a1);
}

uint64_t sub_10000F354(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_10000F450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1000044A4;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_10000F534(uint64_t a1)
{
  v2 = sub_10000F698();

  return MLHostExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000F5DC();
  sub_1000129A8();
  return 0;
}

unint64_t sub_10000F5DC()
{
  result = qword_10001C5C8;
  if (!qword_10001C5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C5C8);
  }

  return result;
}

unint64_t sub_10000F698()
{
  result = qword_10001C5D0;
  if (!qword_10001C5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C5D0);
  }

  return result;
}

uint64_t sub_10000F6EC(uint64_t a1)
{
  v1[11] = a1;
  v2 = sub_100012AE8();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v3 = sub_100012B18();
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  v4 = sub_100012AA8();
  v1[18] = v4;
  v1[19] = *(v4 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();

  return _swift_task_switch(sub_10000F870, 0, 0);
}

uint64_t sub_10000F870()
{
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (!v2)
  {
    v6 = objc_allocWithZone(sub_1000129C8());
    v7 = sub_1000129B8();
LABEL_6:

    v16 = *(v0 + 8);

    return v16(v7);
  }

  v3 = *(v0 + 168);
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);
  sub_100012D28();

  (*(v5 + 104))(v3, enum case for PFLTaskSource.CKProd(_:), v4);
  sub_100012A08();
  sub_100012AF8();

  sub_100007F18(&qword_10001C5D8, &qword_100014170);
  sub_10000FF2C();
  sub_100012B08();
  v8 = *(v0 + 56);
  if (v8 == 2)
  {

    v9 = *(v0 + 168);
    v10 = *(v0 + 144);
    v11 = *(v0 + 152);
    v13 = *(v0 + 128);
    v12 = *(v0 + 136);
    v14 = *(v0 + 120);
    v15 = objc_allocWithZone(sub_1000129C8());
    v7 = sub_1000129B8();
    (*(v13 + 8))(v12, v14);
    (*(v11 + 8))(v9, v10);
    goto LABEL_6;
  }

  v29 = *(v0 + 72);
  v30 = *(v0 + 64);
  v18 = *(v0 + 160);
  v19 = *(v0 + 152);
  v26 = *(v0 + 144);
  v27 = *(v0 + 168);
  v28 = v8 & 1;
  sub_100007F18(&qword_10001C5F0, &qword_100014178);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1000140B0;
  sub_100012AD8();
  sub_100012AC8();
  *(v0 + 80) = v20;
  sub_1000100B0(&qword_10001C5F8, &type metadata accessor for PFLPluginConsent, &protocol conformance descriptor for PFLPluginConsent);
  sub_100007F18(&qword_10001C600, qword_100014180);
  sub_10001004C();
  sub_100012DF8();
  (*(v19 + 16))(v18, v27, v26);
  sub_100012C28();
  swift_allocObject();
  *(v0 + 176) = sub_100012C18();
  v21 = type metadata accessor for AVCPluginRunner();
  v22 = swift_allocObject();
  *(v0 + 184) = v22;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 0u;
  *(v22 + 48) = 0;
  *(v22 + 56) = v28;
  *(v22 + 64) = v30;
  *(v22 + 72) = v29;
  *(v0 + 40) = v21;
  v23 = sub_1000100B0(&qword_10001C610, type metadata accessor for AVCPluginRunner, &unk_100013540);
  *(v0 + 16) = v22;
  *(v0 + 48) = v23;
  v31 = (&async function pointer to dispatch thunk of PFLPlugin.run(context:runner:) + async function pointer to dispatch thunk of PFLPlugin.run(context:runner:));

  v24 = swift_task_alloc();
  *(v0 + 192) = v24;
  *v24 = v0;
  v24[1] = sub_10000FD34;
  v25 = *(v0 + 88);

  return v31(v25, v0 + 16);
}

uint64_t sub_10000FD34(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 200) = a1;

  sub_100008214((v2 + 16));

  return _swift_task_switch(sub_10000FE3C, 0, 0);
}

uint64_t sub_10000FE3C()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  v7 = v0[25];

  v8 = v0[1];

  return v8(v7);
}

unint64_t sub_10000FF2C()
{
  result = qword_10001C5E0;
  if (!qword_10001C5E0)
  {
    sub_10000FFB0(&qword_10001C5D8, &qword_100014170);
    sub_10000FFF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C5E0);
  }

  return result;
}

uint64_t sub_10000FFB0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10000FFF8()
{
  result = qword_10001C5E8;
  if (!qword_10001C5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C5E8);
  }

  return result;
}

unint64_t sub_10001004C()
{
  result = qword_10001C608;
  if (!qword_10001C608)
  {
    sub_10000FFB0(&qword_10001C600, qword_100014180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C608);
  }

  return result;
}

uint64_t sub_1000100B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000100FC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = result == 0xD000000000000012 && 0x8000000100014230 == a2;
  if (v6 || (v7 = result, result = sub_100012F48(), (result & 1) != 0))
  {
    v8 = *(v3 + 8);
LABEL_7:
    *(a3 + 24) = &type metadata for Int;
    *a3 = v8;
    return result;
  }

  result = 0x6F6665426C617665;
  if (v7 == 0x6F6665426C617665 && a2 == 0xEF6E696172546572 || (result = sub_100012F48(), (result & 1) != 0))
  {
    v9 = *(v3 + 1);
LABEL_12:
    *(a3 + 24) = &type metadata for Bool;
    *a3 = v9;
    return result;
  }

  if (v7 == 0x6D614E6C65646F6DLL && a2 == 0xE900000000000065 || (sub_100012F48() & 1) != 0)
  {
    v11 = *(v3 + 24);
    v10 = *(v3 + 32);
  }

  else
  {
    result = 0x7A69536863746162;
    if (v7 == 0x7A69536863746162 && a2 == 0xE900000000000065 || (result = sub_100012F48(), (result & 1) != 0))
    {
      v8 = *(v3 + 16);
      goto LABEL_7;
    }

    if (v7 == 0xD00000000000001FLL && 0x8000000100014250 == a2 || (sub_100012F48() & 1) != 0)
    {
      v11 = *(v3 + 56);
      v10 = *(v3 + 64);
    }

    else
    {
      result = 0x676E696E7261656CLL;
      if (v7 == 0x676E696E7261656CLL && a2 == 0xEC00000065746152 || (result = sub_100012F48(), (result & 1) != 0))
      {
        v12 = *(v3 + 4);
        *(a3 + 24) = &type metadata for Float;
        *a3 = v12;
        return result;
      }

      result = 0x4C7463656C6C6F63;
      if (v7 == 0x4C7463656C6C6F63 && a2 == 0xED00006D726F4E32 || (result = sub_100012F48(), (result & 1) != 0))
      {
        v9 = *(v3 + 2);
        goto LABEL_12;
      }

      if (v7 != 0xD000000000000010 || 0x8000000100014270 != a2)
      {
        result = sub_100012F48();
        if ((result & 1) == 0)
        {
          *a3 = 0u;
          *(a3 + 16) = 0u;
          return result;
        }
      }

      v11 = *(v3 + 40);
      v10 = *(v3 + 48);
    }
  }

  *(a3 + 24) = &type metadata for String;
  *a3 = v11;
  *(a3 + 8) = v10;
}

uint64_t sub_1000103D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_100012FB8();
  sub_100012D58();
  v6 = sub_100012FD8();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_100012F48() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1000104D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000125E0(&off_100018DD0);
  swift_arrayDestroy();
  LOBYTE(a2) = sub_1000103D8(a1, a2, v4);

  return a2 & 1;
}

char *sub_100010548(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = &_swiftEmptyArrayStorage;
  if (!v2 || a2 < 0)
  {
    return v3;
  }

  v24 = &_swiftEmptyArrayStorage;
  sub_100005760(0, v2, 0);
  v6 = 0;
  v7 = &_swiftEmptyArrayStorage;
  v8 = a1 + 32;
  do
  {
    v9 = *(v8 + 8 * v6);
    if (*(v9 + 16) <= a2)
    {

LABEL_11:
      sub_100008034();
      v3 = swift_allocError();
      *v13 = 12;
      swift_willThrow();

      return v3;
    }

    sub_100008260(v9 + 32 * a2 + 32, v23, &qword_10001C2C0, &qword_100013600);

    sub_100007F18(&qword_10001C2C0, &qword_100013600);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_11;
    }

    v24 = v7;
    v11 = v7[2];
    v10 = v7[3];
    if (v11 >= v10 >> 1)
    {
      sub_100005760((v10 > 1), v11 + 1, 1);
      v7 = v24;
    }

    v12 = &v7[2 * v11];
    v12[4] = v6;
    v7[2] = v11 + 1;
    v12[5] = v22;
    ++v6;
  }

  while (v2 != v6);
  v23[0] = v7;

  sub_100011710(v23);
  if (!v21)
  {

    v14 = v23[0];
    v15 = *(v23[0] + 2);
    if (v15)
    {
      v23[0] = &_swiftEmptyArrayStorage;
      sub_100005740(0, v15, 0);
      v3 = v23[0];
      v16 = *(v23[0] + 2);
      v17 = 32;
      do
      {
        v18 = *&v14[v17];
        v23[0] = v3;
        v19 = *(v3 + 3);
        if (v16 >= v19 >> 1)
        {
          sub_100005740((v19 > 1), v16 + 1, 1);
          v3 = v23[0];
        }

        *(v3 + 2) = v16 + 1;
        *&v3[8 * v16 + 32] = v18;
        v17 += 16;
        ++v16;
        --v15;
      }

      while (v15);
    }

    else
    {

      return &_swiftEmptyArrayStorage;
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_1000107E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  v6 = *(a1 + 16);
  if (!v6)
  {
    return &_swiftEmptyArrayStorage;
  }

  v8 = (a1 + 32);
  v9 = *(*(a1 + 32) + 16);
  result = &_swiftEmptyArrayStorage;
  if (v9 > a5)
  {
    v66 = &_swiftEmptyArrayStorage;
    v11 = &v66;
    v12 = sub_100005780(0, v6, 0);
    if ((a5 & 0x8000000000000000) == 0)
    {
      v5 = v66;
      while (1)
      {
        v11 = *v8;
        v13 = (*v8)[2];
        if (v13 <= a5)
        {
          break;
        }

        sub_100008260(&v11[4 * a5 + 4], v65, &qword_10001C2C0, &qword_100013600);

        sub_100007F18(&qword_10001C2C0, &qword_100013600);
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_100008034();
          swift_allocError();
          *v17 = 13;
          swift_willThrow();
        }

        v64 = 0;
        v14 = v63;

        v66 = v5;
        v16 = *(v5 + 2);
        v15 = *(v5 + 3);
        if (v16 >= v15 >> 1)
        {
          v12 = sub_100005780((v15 > 1), v16 + 1, 1);
          v5 = v66;
        }

        *(v5 + 2) = v16 + 1;
        *&v5[8 * v16 + 32] = v14;
        ++v8;
        if (!--v6)
        {
          v18 = *(a3 + 16);
          v19 = &_swiftEmptyArrayStorage;
          if (v18)
          {
            v66 = &_swiftEmptyArrayStorage;
            sub_100005740(0, v18, 0);
            v19 = v66;
            v20 = a3 + 32;
            while (1)
            {
              sub_1000082C8(v20, v65);
              sub_1000082C8(v65, &v63);
              sub_100012594();
              if (!swift_dynamicCast())
              {
                break;
              }

              v21 = [v62 integerValue];

              sub_100008214(v65);
              v66 = v19;
              v23 = v19[2];
              v22 = v19[3];
              if (v23 >= v22 >> 1)
              {
                sub_100005740((v22 > 1), v23 + 1, 1);
                v19 = v66;
              }

              v19[2] = v23 + 1;
              v19[v23 + 4] = v21;
              v20 += 32;
              if (!--v18)
              {
                goto LABEL_19;
              }
            }

            sub_100008034();
            swift_allocError();
            *v29 = 13;
            swift_willThrow();
            sub_100008214(v65);
          }

          else
          {
LABEL_19:
            v6 = *(a4 + 16);
            if (v6)
            {
              v66 = &_swiftEmptyArrayStorage;
              sub_100005740(0, v6, 0);
              v24 = v66;
              v25 = a4 + 32;
              while (1)
              {
                sub_1000082C8(v25, v65);
                sub_1000082C8(v65, &v63);
                sub_100012594();
                if (!swift_dynamicCast())
                {
                  break;
                }

                v26 = [v62 integerValue];

                sub_100008214(v65);
                v66 = v24;
                v27 = v24[2];
                v28 = v24[3];
                if (v27 >= v28 >> 1)
                {
                  sub_100005740((v28 > 1), v27 + 1, 1);
                  v24 = v66;
                }

                v24[2] = v27 + 1;
                v24[v27 + 4] = v26;
                v25 += 32;
                if (!--v6)
                {
                  goto LABEL_30;
                }
              }

              sub_100008034();
              swift_allocError();
              *v30 = 13;
              swift_willThrow();
              sub_100008214(v65);
            }

            v24 = &_swiftEmptyArrayStorage;
LABEL_30:
            v31 = *(v5 + 2);
            if (v31 == *(a2 + 16) && (v32 = v19[2], v31 >= v32) && (v58 = v24[2], v32 >= v58))
            {
              v60 = v19[2];
              v55 = v24;
              if (v31)
              {
                v65[0] = &_swiftEmptyArrayStorage;
                v11 = v65;
                v12 = sub_100005780(0, v31, 0);
                v34 = (a2 + 32);
                v35 = v65[0];
                do
                {
                  v36 = *v34++;
                  v13 = v36;
                  if ((v36 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_75;
                  }

                  if (v13 >= *(v5 + 2))
                  {
                    goto LABEL_76;
                  }

                  v37 = *&v5[8 * v13 + 32];
                  v65[0] = v35;
                  v39 = v35[2];
                  v38 = v35[3];
                  v6 = v39 + 1;
                  if (v39 >= v38 >> 1)
                  {
                    v11 = v65;
                    v12 = sub_100005780((v38 > 1), v39 + 1, 1);
                    v35 = v65[0];
                  }

                  v35[2] = v6;
                  v35[v39 + 4] = v37;
                  --v31;
                }

                while (v31);
              }

              else
              {

                v35 = &_swiftEmptyArrayStorage;
              }

              if (v60)
              {
                v65[0] = &_swiftEmptyArrayStorage;
                v11 = v65;
                v12 = sub_100005780(0, v60, 0);
                v40 = v60;
                v6 = 0;
                v41 = v65[0];
                do
                {
                  v13 = v19[2];
                  if (v6 >= v13)
                  {
                    goto LABEL_77;
                  }

                  v13 = v19[v6 + 4];
                  if ((v13 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_78;
                  }

                  if (v13 >= v35[2])
                  {
                    goto LABEL_79;
                  }

                  v42 = v35[v13 + 4];
                  v65[0] = v41;
                  v44 = v41[2];
                  v43 = v41[3];
                  v5 = (v44 + 1);
                  if (v44 >= v43 >> 1)
                  {
                    v11 = v65;
                    v12 = sub_100005780((v43 > 1), v44 + 1, 1);
                    v40 = v60;
                    v41 = v65[0];
                  }

                  ++v6;
                  v41[2] = v5;
                  v41[v44 + 4] = v42;
                }

                while (v40 != v6);
              }

              else
              {

                v41 = &_swiftEmptyArrayStorage;
              }

              if (v58)
              {
                v65[0] = &_swiftEmptyArrayStorage;
                v12 = sub_100005780(0, v58, 0);
                v6 = 0;
                v5 = v65[0];
                v11 = v55;
                do
                {
                  v13 = v11[2];
                  if (v6 >= v13)
                  {
                    goto LABEL_80;
                  }

                  v13 = v11[v6 + 4];
                  if ((v13 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_81;
                  }

                  if (v13 >= v41[2])
                  {
                    goto LABEL_82;
                  }

                  v45 = v41[v13 + 4];
                  v65[0] = v5;
                  v47 = *(v5 + 2);
                  v46 = *(v5 + 3);
                  if (v47 >= v46 >> 1)
                  {
                    v12 = sub_100005780((v46 > 1), v47 + 1, 1);
                    v11 = v55;
                    v5 = v65[0];
                  }

                  ++v6;
                  *(v5 + 2) = v47 + 1;
                  *&v5[8 * v47 + 32] = v45;
                }

                while (v58 != v6);
              }

              else
              {

                v5 = &_swiftEmptyArrayStorage;
              }

              v12 = sub_10001160C(0, 1, 1, &_swiftEmptyArrayStorage);
              v6 = *(v12 + 16);
              v13 = *(v12 + 24);
              v11 = (v6 + 1);
              if (v6 >= v13 >> 1)
              {
                goto LABEL_85;
              }

              while (1)
              {
                *(v12 + 16) = v11;
                *(v12 + 8 * v6 + 32) = 0;
                v13 = *(v5 + 2);
                v48 = v13 - 1;
                if (v13 == 1)
                {
                  break;
                }

                if (v13)
                {
                  v49 = 0;
                  v6 += 5;
                  v50 = (v5 + 40);
                  while (1)
                  {
                    v13 = *(v5 + 2);
                    if (v49 >= v13)
                    {
                      break;
                    }

                    v51 = *(v50 - 1);
                    v52 = *v50;
                    v53 = *(v12 + 24);
                    v11 = (v6 - 3);
                    if (v6 - 4 >= v53 >> 1)
                    {
                      v61 = *(v50 - 1);
                      v12 = sub_10001160C((v53 > 1), v6 - 3, 1, v12);
                      v51 = v61;
                    }

                    *(v12 + 16) = v11;
                    *(v12 + 8 * v6++) = v52 - v51;
                    ++v49;
                    ++v50;
                    if (v48 == v49)
                    {
                      goto LABEL_72;
                    }
                  }

LABEL_83:
                  __break(1u);
                }

                __break(1u);
LABEL_85:
                v12 = sub_10001160C((v13 > 1), v11, 1, v12);
              }

LABEL_72:
              v54 = v12;

              return v54;
            }

            else
            {

              sub_100008034();
              swift_allocError();
              *v33 = 13;
              return swift_willThrow();
            }
          }
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  return result;
}

char *sub_100011044@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_10;
  }

  v5 = sub_100004F8C(0x7961727261, 0xE500000000000000);
  if ((v6 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_1000082C8(*(a1 + 56) + 32 * v5, v13);
  sub_100007F18(&qword_10001C618, &qword_1000141B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v7 = v14;
  if (!*(a1 + 16) || (v8 = sub_100004F8C(0x6E6D756C6F63, 0xE600000000000000), (v9 & 1) == 0) || (sub_1000082C8(*(a1 + 56) + 32 * v8, v13), (swift_dynamicCast() & 1) == 0))
  {

LABEL_10:
    sub_100008034();
    swift_allocError();
    *v12 = 12;
    return swift_willThrow();
  }

  v10 = sub_100010548(v7, v14);

  if (!v2)
  {
    result = sub_100007F18(&qword_10001C620, &qword_1000141C0);
    a2[3] = result;
    *a2 = v10;
  }

  return result;
}

uint64_t sub_1000111C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_24;
  }

  v5 = sub_100004F8C(0x7961727261, 0xE500000000000000);
  if ((v6 & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_1000082C8(*(a1 + 56) + 32 * v5, v20);
  sub_100007F18(&qword_10001C618, &qword_1000141B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  if (!*(a1 + 16) || (v7 = sub_100004F8C(0x6E49646574726F73, 0xED00007365636964), (v8 & 1) == 0) || (sub_1000082C8(*(a1 + 56) + 32 * v7, v20), sub_100007F18(&qword_10001C620, &qword_1000141C0), (swift_dynamicCast() & 1) == 0))
  {
LABEL_23:

LABEL_24:
    sub_100008034();
    swift_allocError();
    *v17 = 13;
    return swift_willThrow();
  }

  if (!*(a1 + 16) || (v9 = sub_100004F8C(0x317265746C6966, 0xE700000000000000), (v10 & 1) == 0) || (sub_1000082C8(*(a1 + 56) + 32 * v9, v20), sub_100007F18(&qword_10001C2C8, &qword_100013608), (swift_dynamicCast() & 1) == 0))
  {
LABEL_22:

    goto LABEL_23;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_21;
  }

  v11 = sub_100004F8C(0x327265746C6966, 0xE700000000000000);
  if ((v12 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_1000082C8(*(a1 + 56) + 32 * v11, v20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  if (!*(a1 + 16) || (v13 = sub_100004F8C(0x6E6D756C6F63, 0xE600000000000000), (v14 & 1) == 0))
  {

    goto LABEL_22;
  }

  sub_1000082C8(*(a1 + 56) + 32 * v13, v20);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_21:

    goto LABEL_22;
  }

  v15 = sub_1000107E4(v19, v19, v19, v19, v19);
  if (v2)
  {
  }

  else
  {
    v18 = v15;

    result = sub_100007F18(&qword_10001C628, &qword_1000141C8);
    a2[3] = result;
    *a2 = v18;
  }

  return result;
}

char *sub_100011508(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007F18(&qword_10001C640, &qword_1000141D8);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_10001160C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007F18(&qword_10001C310, &qword_100013650);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

Swift::Int sub_100011710(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1000121C0(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_10001177C(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_10001177C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_100012F38(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_100007F18(&qword_10001C638, &qword_1000141D0);
        v5 = sub_100012DA8();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_100011918(v7, v8, a1, v4);
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
    return sub_100011884(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100011884(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
LABEL_5:
    v7 = (v4 + 16 * a3);
    v8 = *v7;
    v9 = v7[1];
    v10 = v6;
    v11 = v5;
    while (1)
    {
      v12 = *(v11 + 8);
      v13 = *&v8 < *v11;
      if (v9 != v12)
      {
        v13 = v9 < v12;
      }

      if (!v13)
      {
LABEL_4:
        ++a3;
        v5 += 16;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      *(v11 + 16) = *v11;
      *v11 = v8;
      *(v11 + 8) = v9;
      v11 -= 16;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100011918(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v95 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = &_swiftEmptyArrayStorage;
LABEL_94:
    v5 = *v95;
    if (!*v95)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_1000121AC(v10);
      v10 = result;
    }

    v90 = *(v10 + 2);
    if (v90 >= 2)
    {
      while (*a3)
      {
        v91 = *&v10[16 * v90];
        v92 = *&v10[16 * v90 + 24];
        sub_100011EE4((*a3 + 16 * v91), (*a3 + 16 * *&v10[16 * v90 + 16]), (*a3 + 16 * v92), v5);
        if (v4)
        {
        }

        if (v92 < v91)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1000121AC(v10);
        }

        if (v90 - 2 >= *(v10 + 2))
        {
          goto LABEL_120;
        }

        v93 = &v10[16 * v90];
        *v93 = v91;
        *(v93 + 1) = v92;
        result = sub_100012120(v90 - 1);
        v90 = *(v10 + 2);
        if (v90 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v8 = a4;
  v9 = 0;
  v10 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v9++;
    if (v9 < v7)
    {
      v12 = *a3 + 16 * v9;
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = 16 * v11;
      v16 = *a3 + 16 * v11;
      v17 = *(v16 + 8);
      v18 = v13 < *v16;
      if (v14 != v17)
      {
        v18 = v14 < v17;
      }

      v19 = v11 + 2;
      v20 = (v16 + 40);
      while (v7 != v19)
      {
        v21 = *(v20 - 1);
        v22 = *v20;
        v20 += 2;
        v23 = v22;
        v24 = v21 >= v13;
        v25 = v22 >= v14;
        if (v22 == v14)
        {
          v25 = v24;
        }

        ++v19;
        v14 = v23;
        v13 = v21;
        if (v18 == v25)
        {
          v9 = v19 - 1;
          if (!v18)
          {
            goto LABEL_24;
          }

          goto LABEL_15;
        }
      }

      v9 = v7;
      if (!v18)
      {
        goto LABEL_24;
      }

LABEL_15:
      if (v9 < v11)
      {
        goto LABEL_123;
      }

      if (v11 < v9)
      {
        v26 = 0;
        v27 = 16 * v9;
        v28 = v11;
        do
        {
          if (v28 != v9 + v26 - 1)
          {
            v33 = *a3;
            if (!*a3)
            {
              goto LABEL_129;
            }

            v29 = (v33 + v15);
            v30 = v33 + v27;
            v31 = *v29;
            v32 = v29[1];
            *v29 = *(v30 - 16);
            *(v30 - 16) = v31;
            *(v30 - 8) = v32;
          }

          ++v28;
          --v26;
          v27 -= 16;
          v15 += 16;
        }

        while (v28 < v9 + v26);
        v7 = a3[1];
      }
    }

LABEL_24:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_122;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_124;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_43:
    if (v9 < v11)
    {
      goto LABEL_121;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100011508(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v5 = *(v10 + 2);
    v45 = *(v10 + 3);
    v46 = v5 + 1;
    if (v5 >= v45 >> 1)
    {
      result = sub_100011508((v45 > 1), v5 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v46;
    v47 = &v10[16 * v5];
    *(v47 + 4) = v11;
    *(v47 + 5) = v9;
    v48 = *v95;
    if (!*v95)
    {
      goto LABEL_131;
    }

    if (v5)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v10 + 4);
          v51 = *(v10 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_63:
          if (v53)
          {
            goto LABEL_110;
          }

          v66 = &v10[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_113;
          }

          v72 = &v10[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_117;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_84;
          }

          goto LABEL_77;
        }

        v76 = &v10[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_77:
        if (v71)
        {
          goto LABEL_112;
        }

        v79 = &v10[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_115;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_84:
        v87 = v49 - 1;
        if (v49 - 1 >= v46)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v88 = *&v10[16 * v87 + 32];
        v5 = *&v10[16 * v49 + 40];
        sub_100011EE4((*a3 + 16 * v88), (*a3 + 16 * *&v10[16 * v49 + 32]), (*a3 + 16 * v5), v48);
        if (v4)
        {
        }

        if (v5 < v88)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1000121AC(v10);
        }

        if (v87 >= *(v10 + 2))
        {
          goto LABEL_107;
        }

        v89 = &v10[16 * v87];
        *(v89 + 4) = v88;
        *(v89 + 5) = v5;
        result = sub_100012120(v49);
        v46 = *(v10 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v10[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_108;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_109;
      }

      v61 = &v10[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_111;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_114;
      }

      if (v65 >= v57)
      {
        v83 = &v10[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_118;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_84;
      }

      goto LABEL_63;
    }

LABEL_3:
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_94;
    }
  }

  v34 = *a3;
  v35 = *a3 + 16 * v9 - 16;
  v36 = v11 - v9;
LABEL_34:
  v37 = (v34 + 16 * v9);
  v38 = *v37;
  v39 = v37[1];
  v40 = v36;
  v41 = v35;
  while (1)
  {
    v42 = *(v41 + 8);
    v43 = *&v38 < *v41;
    if (v39 != v42)
    {
      v43 = v39 < v42;
    }

    if (!v43)
    {
LABEL_33:
      ++v9;
      v35 += 16;
      --v36;
      if (v9 != v7)
      {
        goto LABEL_34;
      }

      v9 = v7;
      goto LABEL_43;
    }

    if (!v34)
    {
      break;
    }

    *(v41 + 16) = *v41;
    *v41 = v38;
    *(v41 + 8) = v39;
    v41 -= 16;
    if (__CFADD__(v40++, 1))
    {
      goto LABEL_33;
    }
  }

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
  return result;
}

uint64_t sub_100011EE4(double *__dst, double *__src, char *a3, double *a4)
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
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = v6[1];
      v18 = v4[1];
      v19 = *v6 < *v4;
      if (v17 != v18)
      {
        v19 = v17 < v18;
      }

      if (v19)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_26:
    v20 = v6 - 2;
    v5 -= 16;
    v21 = v14;
    do
    {
      v22 = *(v21 - 16);
      v21 -= 16;
      v23 = (v5 + 16);
      v24 = *(v21 + 8);
      v25 = *(v6 - 1);
      v26 = v22 < *(v6 - 2);
      if (v24 != v25)
      {
        v26 = v24 < v25;
      }

      if (v26)
      {
        if (v23 != v6)
        {
          *v5 = *v20;
        }

        if (v14 <= v4 || (v6 -= 2, v20 <= v7))
        {
          v6 = v20;
          goto LABEL_39;
        }

        goto LABEL_26;
      }

      if (v23 != v14)
      {
        *v5 = *v21;
      }

      v5 -= 16;
      v14 = v21;
    }

    while (v21 > v4);
    v14 = v21;
  }

LABEL_39:
  v27 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v27 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v27 >> 4));
  }

  return 1;
}

uint64_t sub_100012120(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000121AC(v3);
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

uint64_t sub_1000121D4()
{
  v1 = sub_100012CE8();
  __chkstk_darwin(v1 - 8);
  sub_100012C98();
  sub_100007F18(&qword_10001C2B8, &qword_1000135F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000134B0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000100014450;
  *(inited + 48) = 5;
  *(inited + 72) = &type metadata for AVCError;
  *(inited + 80) = 0x614E734973736F6CLL;
  *(inited + 88) = 0xE90000000000004ELL;
  *(inited + 96) = 14;
  *(inited + 120) = &type metadata for AVCError;
  *(inited + 128) = 0xD000000000000013;
  *(inited + 136) = 0x8000000100014470;
  *(inited + 168) = &type metadata for AVCError;
  *(inited + 144) = 15;
  sub_100005D10(inited);
  swift_setDeallocating();
  sub_100007F18(&qword_10001C290, &qword_1000135E8);
  swift_arrayDestroy();
  sub_100012CD8();
  sub_100012CC8();
  swift_allocObject();
  sub_100012CB8();
  sub_100012C68();

  if (!v0)
  {
    sub_100012CD8();
    sub_100005D10(&_swiftEmptyArrayStorage);
    swift_allocObject();
    sub_100012CB8();
    sub_100012C68();

    sub_100012CD8();
    sub_100005D10(&_swiftEmptyArrayStorage);
    swift_allocObject();
    sub_100012CB8();
    sub_100012C68();
  }

  return result;
}

unint64_t sub_100012594()
{
  result = qword_10001C630;
  if (!qword_10001C630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001C630);
  }

  return result;
}

void *sub_1000125E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007F18(&qword_10001C648, &unk_1000141E0);
    v3 = sub_100012E08();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_100012FB8();

      sub_100012D58();
      v10 = sub_100012FD8();
      v11 = ~(-1 << *(v3 + 32));
      for (i = v10 & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        v15 = *v14 == v9 && v14[1] == v8;
        if (v15 || (sub_100012F48() & 1) != 0)
        {

          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
    return sub_100012748();
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }
}