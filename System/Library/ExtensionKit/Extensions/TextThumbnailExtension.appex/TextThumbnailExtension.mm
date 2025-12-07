uint64_t sub_100001EC8()
{
  v0 = sub_100004798();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1000046E8();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v15 - v6;
  sub_100004728();
  sub_1000046D8();
  sub_100004768();
  sub_1000046D8();
  sub_1000036D4(&qword_10000C290, &qword_100004FE8);
  v8 = *(v2 + 72);
  v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100004F40;
  v11 = v10 + v9;
  v12 = *(v2 + 16);
  v12(v11, v7, v1);
  v12(v11 + v8, v5, v1);
  sub_100004708();

  v13 = *(v2 + 8);
  v13(v5, v1);
  return (v13)(v7, v1);
}

uint64_t sub_10000210C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1000046A8();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = sub_100004798();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[11] = v5;
  *v5 = v2;
  v5[1] = sub_100002268;

  return ThumbnailRequest.data.getter();
}

uint64_t sub_100002268(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[12] = a1;
  v4[13] = a2;
  v4[14] = v2;

  if (v2)
  {

    v5 = v4[1];

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_1000023C8, 0, 0);
  }
}

uint64_t sub_1000023C8()
{
  v1 = *(v0 + 112);
  v2 = sub_10000399C(*(v0 + 96), *(v0 + 104));
  if (v1)
  {
    sub_1000042D8(*(v0 + 96), *(v0 + 104));
  }

  else
  {
    v5 = *(v0 + 80);
    v6 = *(v0 + 56);
    v26 = *(v0 + 72);
    v27 = *(v0 + 64);
    v8 = *(v0 + 40);
    v7 = *(v0 + 48);
    v9 = *(v0 + 32);
    v28 = v9;
    v29 = v2;
    v10 = v2;
    v11 = v3;
    v25 = v3;
    sub_1000042D8(*(v0 + 96), *(v0 + 104));
    sub_100004398(v10, v11);
    v12 = v5;
    sub_100004738();
    sub_1000046C8();
    sub_100004698();
    v14 = v13;
    v16 = v15;
    v17 = *(v8 + 8);
    v17(v6, v9);
    sub_1000046C8();
    LODWORD(v5) = sub_100004688();
    v17(v7, v9);
    v18 = v5 != 0;
    v19 = objc_allocWithZone(QLTextThumbnailRenderer);
    isa = sub_1000045E8().super.isa;
    v21 = sub_100004748().super.isa;
    v22 = [v19 initWithData:isa contentType:v21 stringEncoding:4 maxSize:v18 iconMode:{v14, v16}];

    sub_1000042D8(v29, v25);
    (*(v26 + 8))(v12, v27);
    sub_1000046C8();
    [v22 contextSize];
    *(swift_allocObject() + 16) = v22;
    v23 = v22;
    sub_100004648();

    sub_100004638();

    sub_1000042D8(v29, v25);
    v17(v6, v28);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000026B8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1000046A8();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = sub_100004798();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  sub_1000036D4(&qword_10000C298, &qword_100004FF0);
  v2[11] = swift_task_alloc();
  v5 = sub_1000045D8();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_100002874, 0, 0);
}

uint64_t sub_100002874()
{
  if (sub_100004668())
  {
    v1 = swift_task_alloc();
    v0[15] = v1;
    *v1 = v0;
    v1[1] = sub_100002988;
    v2 = v0[14];

    return ThumbnailRequest.fileURL.getter(v2);
  }

  else
  {
    v3 = swift_task_alloc();
    v0[17] = v3;
    *v3 = v0;
    v3[1] = sub_100002DB8;

    return ThumbnailRequest.data.getter();
  }
}

uint64_t sub_100002988()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_100003224;
  }

  else
  {
    v2 = sub_100002A9C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100002A9C()
{
  v1 = v0[13];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v29 = v7;
  v8 = v0[6];
  v31 = v0[5];
  v27 = v0[4];
  (*(v1 + 16))(v3);
  (*(v1 + 56))(v3, 0, 1, v2);
  sub_100004658();
  sub_100003E30(v3);
  v28 = *(v5 + 8);
  v28(v4, v7);
  sub_100004270(v3);
  sub_100004658();
  sub_1000046C8();
  sub_100004698();
  v10 = v9;
  v12 = v11;
  v13 = *(v31 + 8);
  v13(v6, v27);
  v30 = v13;
  sub_1000046C8();
  LODWORD(v2) = sub_100004688();
  v13(v8, v27);
  v14 = v2 != 0;
  v15 = objc_allocWithZone(QLTextThumbnailRenderer);
  sub_1000045C8(v16);
  v18 = v17;
  isa = sub_100004748().super.isa;
  v20 = [v15 initWithURL:v18 contentType:isa stringEncoding:0 maxSize:v14 iconMode:{v10, v12}];

  v28(v4, v29);
  v21 = v0[7];
  v22 = v0[4];
  (*(v1 + 8))(v0[14], v0[12]);
  v23 = v20;
  sub_1000046C8();
  [v23 contextSize];
  *(swift_allocObject() + 16) = v23;
  v24 = v23;
  sub_100004648();

  sub_100004638();

  v30(v21, v22);

  v25 = v0[1];

  return v25();
}

uint64_t sub_100002DB8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {

    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 144) = a2;
    *(v6 + 152) = a1;

    return _swift_task_switch(sub_100002F3C, 0, 0);
  }
}

uint64_t sub_100002F3C()
{
  v26 = v0[18];
  v27 = v0[19];
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];
  v25 = v0[4];
  (*(v0[13] + 56))(v1, 1, 1, v0[12]);
  sub_100004658();
  sub_100003E30(v1);
  v28 = *(v3 + 8);
  v28(v2, v4);
  sub_100004270(v1);
  sub_100004658();
  sub_1000046C8();
  sub_100004698();
  v9 = v8;
  v11 = v10;
  v12 = *(v7 + 8);
  v12(v5, v25);
  sub_1000046C8();
  v13 = sub_100004688();
  v12(v6, v25);
  v14 = v13 != 0;
  v15 = objc_allocWithZone(QLTextThumbnailRenderer);
  isa = sub_1000045E8().super.isa;
  v17 = sub_100004748().super.isa;
  v18 = [v15 initWithData:isa contentType:v17 stringEncoding:0 maxSize:v14 iconMode:{v9, v11}];

  sub_1000042D8(v27, v26);
  v19 = v0[7];
  v20 = v0[4];
  v28(v0[10], v0[8]);
  v21 = v18;
  sub_1000046C8();
  [v21 contextSize];
  *(swift_allocObject() + 16) = v21;
  v22 = v21;
  sub_100004648();

  sub_100004638();

  v12(v19, v20);

  v23 = v0[1];

  return v23();
}

uint64_t sub_100003224()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000032C0()
{
  v0 = sub_100003D08(&off_100008500);
  sub_1000036D4(&qword_10000C2A0, &qword_100004FF8);
  result = swift_arrayDestroy();
  qword_10000C3E0 = v0;
  return result;
}

uint64_t sub_10000331C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_100004608();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100004398(a2, a3);
  sub_100004618();
  sub_1000044F4(&qword_10000C2C8, &type metadata accessor for Data.Iterator, &protocol conformance descriptor for Data.Iterator);
  v10 = 0;
  while (1)
  {
    result = sub_1000047E8();
    if (v15[15])
    {
      result = (*(v7 + 8))(v9, v6);
      v14 = *(a1 + 16);
      if (v14 != v10)
      {
        if (v10 < v14)
        {
          return 0;
        }

        goto LABEL_13;
      }

      return 1;
    }

    v12 = *(a1 + 16);
    if (v10 == v12)
    {
      (*(v7 + 8))(v9, v6);
      return 1;
    }

    if (v10 >= v12)
    {
      break;
    }

    v13 = *(a1 + 32 + v10++);
    if (v15[14] != v13)
    {
      (*(v7 + 8))(v9, v6);
      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10000351C(uint64_t a1)
{
  v2 = sub_100003680();

  return ThumbnailExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000035C8();
  sub_100004628();
  return 0;
}

unint64_t sub_1000035C8()
{
  result = qword_10000C280;
  if (!qword_10000C280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C280);
  }

  return result;
}

unint64_t sub_100003680()
{
  result = qword_10000C288;
  if (!qword_10000C288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C288);
  }

  return result;
}

uint64_t sub_1000036D4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10000371C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100004828())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1000037D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_100004838();
  sub_1000047B8();
  v5 = sub_100004848();

  return a3(a1, a2, v5);
}

unint64_t sub_100003858(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000036D4(&qword_10000C2B8, &qword_100005008);
    v3 = sub_100004808();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000447C(v4, &v13, &qword_10000C2C0, &qword_100005010);
      v5 = v13;
      v6 = v14;
      result = sub_1000037D4(v13, v14, sub_10000371C);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000044E4(&v15, (v3[7] + 32 * result));
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

char *sub_10000399C(char *a1, unint64_t a2)
{
  v4 = sub_100004578();
  __chkstk_darwin(v4 - 8);
  v5 = sub_100004588();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_10000331C(&off_1000084D8, a1, a2) & 1) == 0)
  {
    sub_100004398(a1, a2);
    return a1;
  }

  v9 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v9)
    {
      goto LABEL_10;
    }

    LODWORD(v10) = HIDWORD(a1) - a1;
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      v10 = v10;
      goto LABEL_9;
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  if (v9 != 2)
  {
    goto LABEL_10;
  }

  v12 = *(a1 + 2);
  v11 = *(a1 + 3);
  v13 = __OFSUB__(v11, v12);
  v10 = v11 - v12;
  if (v13)
  {
    goto LABEL_20;
  }

LABEL_9:
  if (v10 >= 5242880)
  {
    sub_100004568();
    sub_100003858(&_swiftEmptyArrayStorage);
    sub_1000044F4(&qword_10000C2B0, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    sub_100004598();
    a1 = v8;
    sub_100004558();
    (*(v6 + 8))(v8, v5);
    goto LABEL_16;
  }

LABEL_10:
  v14 = objc_opt_self();
  isa = sub_1000045E8().super.isa;
  v22 = 0;
  v16 = [v14 propertyListWithData:isa options:0 format:0 error:&v22];

  v17 = v22;
  if (!v16)
  {
    a1 = v17;
    sub_1000045A8();

LABEL_16:
    swift_willThrow();
    return a1;
  }

  sub_1000047F8();
  swift_unknownObjectRelease();
  sub_1000043EC(v23, v23[3]);
  v18 = sub_100004818();
  v22 = 0;
  v19 = [v14 dataWithPropertyList:v18 format:100 options:0 error:&v22];
  swift_unknownObjectRelease();
  v20 = v22;
  if (v19)
  {
    a1 = sub_1000045F8();
  }

  else
  {
    a1 = v20;
    sub_1000045A8();

    swift_willThrow();
  }

  sub_100004430(v23);
  return a1;
}

unint64_t sub_100003D08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000036D4(&qword_10000C2A8, &qword_100005000);
    v3 = sub_100004808();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1000037D4(v5, v6, sub_10000371C);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_100003E30(uint64_t a1)
{
  v2 = sub_100004798();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000036D4(&qword_10000C298, &qword_100004FF0);
  __chkstk_darwin(v6 - 8);
  v8 = &v32 - v7;
  sub_10000447C(a1, &v32 - v7, &qword_10000C298, &qword_100004FF0);
  v9 = sub_1000045D8();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100004270(v8);
LABEL_7:
    v11 = sub_100004758();
    v13 = v15;
    goto LABEL_8;
  }

  v11 = sub_1000045B8();
  v13 = v12;
  (*(v10 + 8))(v8, v9);
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {

    goto LABEL_7;
  }

LABEL_8:
  sub_100004718();
  v16 = sub_100004788();
  v17 = *(v3 + 8);
  v17(v5, v2);
  if (v16 & 1) == 0 || (sub_100004778(), v18 = sub_100004788(), v17(v5, v2), (v18))
  {
    if (qword_10000C2D0 != -1)
    {
      swift_once();
    }

    v19 = sub_1000047A8();
    v21 = v20;

    swift_beginAccess();
    v22 = qword_10000C3E0;
    if (*(qword_10000C3E0 + 16))
    {
      v23 = sub_1000037D4(v19, v21, sub_10000371C);
      v25 = v24;

      if (v25)
      {
        v26 = *(*(v22 + 56) + 16 * v23);

LABEL_17:
        swift_endAccess();
        return v26;
      }
    }

    else
    {
    }

    v26 = 0;
    goto LABEL_17;
  }

  if (!v13)
  {
    return 0;
  }

  if (sub_1000047C8() > 4)
  {

    return 0;
  }

  v33 = 46;
  v34 = 0xE100000000000000;
  v35._countAndFlagsBits = v11;
  v35._object = v13;
  sub_1000047D8(v35);

  v26 = v33;
  v28 = v34;
  if (qword_10000C2D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v29 = qword_10000C3E0;
  if (*(qword_10000C3E0 + 16))
  {
    v30 = sub_1000037D4(v26, v28, sub_10000371C);
    if (v31)
    {
      v26 = *(*(v29 + 56) + 16 * v30);
    }
  }

  swift_endAccess();

  return v26;
}

uint64_t sub_100004270(uint64_t a1)
{
  v2 = sub_1000036D4(&qword_10000C298, &qword_100004FF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000042D8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10000432C()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100004398(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

void *sub_1000043EC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100004430(void *a1)
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

uint64_t sub_10000447C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000036D4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_1000044E4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000044F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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