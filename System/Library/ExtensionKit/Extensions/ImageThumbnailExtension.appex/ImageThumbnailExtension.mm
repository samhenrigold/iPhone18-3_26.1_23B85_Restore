uint64_t sub_100001490()
{
  v0 = sub_100004240(&qword_10000C048, &qword_100006F00);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1000068EC();
  sub_100005FD4(v3, qword_10000C850);
  v4 = sub_100005BBC(v3, qword_10000C850);
  sub_1000068FC();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000015C0()
{
  v0 = sub_10000692C();
  sub_100005FD4(v0, qword_10000C868);
  sub_100005BBC(v0, qword_10000C868);
  return sub_10000691C();
}

id sub_100001640()
{
  result = [objc_allocWithZone(QLMemoryLimitedQueue) initWithMaximumMemoryConsumption:41943040 maximumConcurrentTasks:2];
  qword_10000C880 = result;
  return result;
}

id sub_10000167C()
{
  result = [objc_allocWithZone(QLMemoryLimitedQueue) initWithMaximumMemoryConsumption:20971520 maximumConcurrentTasks:4];
  qword_10000C888 = result;
  return result;
}

uint64_t sub_1000016B8()
{
  v0 = sub_1000068EC();
  __chkstk_darwin(v0 - 8);
  v1 = sub_10000681C();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v15 - v6;
  sub_1000068DC();
  sub_10000680C();
  sub_10000688C();
  sub_10000680C();
  sub_100004240(&qword_10000C040, &qword_100006EF8);
  v8 = *(v2 + 72);
  v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100006E40;
  v11 = v10 + v9;
  v12 = *(v2 + 16);
  v12(v11, v7, v1);
  v12(v11 + v8, v5, v1);
  sub_10000683C();

  v13 = *(v2 + 8);
  v13(v5, v1);
  return (v13)(v7, v1);
}

uint64_t sub_1000018FC(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_1000067DC();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_1000068EC();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  sub_1000065CC();
  v2[12] = swift_task_alloc();
  v5 = sub_1000065DC();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v6 = sub_10000668C();
  v2[16] = v6;
  v2[17] = *(v6 - 8);
  v2[18] = swift_task_alloc();
  v7 = swift_task_alloc();
  v2[19] = v7;
  v8 = swift_task_alloc();
  v2[20] = v8;
  *v8 = v2;
  v8[1] = sub_100001B48;

  return ThumbnailRequest.fileURL.getter(v7);
}

uint64_t sub_100001B48()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_10000223C;
  }

  else
  {
    v2 = sub_100001C5C;
  }

  return _swift_task_switch(v2, 0, 0);
}

id sub_100001C5C()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  v4 = objc_allocWithZone(PFVideoComplement);
  sub_10000667C(v5);
  v7 = v6;
  v8 = *(v3 + 8);
  v0[22] = v8;
  v0[23] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v2);
  v9 = [v4 initWithBundleAtURL:v7];
  v0[24] = v9;

  if (v9)
  {
    v29 = v8;
    result = [v9 imagePath];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v11 = result;
    v13 = v0[10];
    v12 = v0[11];
    v14 = v0[9];
    sub_10000695C();

    sub_10000666C();

    sub_10000687C();
    v15 = sub_10000563C(v12);
    (*(v13 + 8))(v12, v14);
    sub_10000667C(v16);
    v18 = v17;
    v19 = CGImageSourceCreateWithURL(v17, v15);
    v0[25] = v19;

    if (v19)
    {
      sub_1000067FC();
      v20 = swift_task_alloc();
      v0[26] = v20;
      *v20 = v0;
      v20[1] = sub_100001FF8;
      v21 = v0[8];
      v22 = v0[4];

      return sub_1000023B0(v22, v19, v21);
    }

    v26 = v0[18];
    v27 = v0[16];
    type metadata accessor for QLThumbnailError(0);
    v0[3] = 0;
    sub_1000053E4(&_swiftEmptyArrayStorage);
    sub_100005D18(&qword_10000C058, type metadata accessor for QLThumbnailError, &unk_1000071F0);
    sub_10000664C();
    swift_willThrow();

    v29(v26, v27);
  }

  else
  {
    v24 = v0[14];
    v23 = v0[15];
    v25 = v0[13];
    sub_1000065BC();
    sub_1000053E4(&_swiftEmptyArrayStorage);
    sub_100005D18(&qword_10000C0B0, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    sub_10000664C();
    sub_1000065AC();
    (*(v24 + 8))(v23, v25);
    swift_willThrow();
  }

  v28 = v0[1];

  return v28();
}

uint64_t sub_100001FF8()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  (*(v2[7] + 8))(v2[8], v2[6]);
  if (v0)
  {
    v3 = sub_1000022E4;
  }

  else
  {
    v3 = sub_100002160;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100002160()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);
  v3 = *(v0 + 144);
  v4 = *(v0 + 128);

  v2(v3, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10000223C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000022E4()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);
  v3 = *(v0 + 144);
  v4 = *(v0 + 128);

  v2(v3, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000023B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1000023D4, 0, 0);
}

uint64_t sub_1000023D4()
{
  sub_1000067CC();
  sub_10000678C();
  v1 = QLThumbnailingImageIOExpectedMemoryUsageForImageSourceThumbnail();
  if (qword_10000C138 != -1)
  {
    swift_once();
  }

  v2 = sub_10000692C();
  sub_100005BBC(v2, qword_10000C868);
  v3 = sub_10000690C();
  v4 = sub_10000699C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v1;
    _os_log_impl(&_mh_execute_header, v3, v4, "Enqueuing thumbnail generation, needing %{bytes}ld", v5, 0xCu);
  }

  v11 = *(v0 + 24);

  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  v6[1] = vextq_s8(v11, v11, 8uLL);
  v6[2].i64[0] = v1;
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  v8 = sub_10000674C();
  *v7 = v0;
  v7[1] = sub_1000025D0;
  v9 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v9, 0, 0, 0xD000000000000020, 0x8000000100007400, sub_100005D60, v6, v8);
}

uint64_t sub_1000025D0()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10000270C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10000270C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100002770(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_1000067DC();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_100004240(&qword_10000C048, &qword_100006F00);
  v2[9] = swift_task_alloc();
  sub_100004240(&qword_10000C050, &qword_100006F08);
  v2[10] = swift_task_alloc();
  v4 = sub_10000668C();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v5 = sub_1000068EC();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_100002970, 0, 0);
}

uint64_t sub_100002970()
{
  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[15];
  sub_10000675C();
  v0[19] = sub_10000563C(v1);
  v4 = *(v3 + 8);
  v0[20] = v4;
  v0[21] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);
  if (sub_10000676C())
  {
    v5 = swift_task_alloc();
    v0[22] = v5;
    *v5 = v0;
    v5[1] = sub_100002AD0;
    v6 = v0[13];

    return ThumbnailRequest.fileURL.getter(v6);
  }

  else
  {
    v7 = swift_task_alloc();
    v0[24] = v7;
    *v7 = v0;
    v7[1] = sub_100003040;

    return ThumbnailRequest.data.getter();
  }
}

uint64_t sub_100002AD0()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1000036E4;
  }

  else
  {
    v2 = sub_100002BE4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100002BE4()
{
  v1 = v0[23];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[11];
  (*(v2 + 16))(v3, v0[13], v4);
  (*(v2 + 56))(v3, 0, 1, v4);
  v5 = objc_allocWithZone(NSData);
  v6 = sub_100004288(v3, 0, 4);
  if (v1)
  {
    v7 = v0[19];
    (*(v0[12] + 8))(v0[13], v0[11]);

LABEL_3:

    v8 = v0[1];
LABEL_4:

    return v8();
  }

  v10 = v6;
  sub_10000675C();
  v11 = v10;
  v12 = sub_1000066AC();
  v14 = v13;

  if (qword_10000C130 != -1)
  {
    swift_once();
  }

  sub_100005BBC(v0[14], qword_10000C850);
  v15 = sub_1000068CC();
  v16 = v0[20];
  v17 = v0[17];
  v18 = v0[14];
  if (v15)
  {
    v19 = sub_10000393C(&off_1000088B0, v12, v14);
    sub_100005BF4(v12, v14);
    v16(v17, v18);
    if (v19)
    {
      v21 = v0[19];
      v22 = v0[14];
      v23 = v0[15];
      v25 = v0[12];
      v24 = v0[13];
      v26 = v0[11];
      v27 = v0[9];
      sub_10000686C();
      (*(v23 + 56))(v27, 0, 1, v22);
      sub_10000673C();

      sub_100005C5C(v27);
      (*(v25 + 8))(v24, v26);

      v8 = v0[1];
      goto LABEL_4;
    }
  }

  else
  {
    sub_100005BF4(v12, v14);
    v16(v17, v18);
  }

  v28 = v0[19];
  v30 = v0[12];
  v29 = v0[13];
  v31 = v0[11];
  sub_10000667C(v20);
  v33 = v32;
  v34 = CGImageSourceCreateWithURL(v32, v28);

  (*(v30 + 8))(v29, v31);
  v0[28] = v34;
  if (!v34)
  {
    v39 = v0[19];
    type metadata accessor for QLThumbnailError(0);
    v0[3] = 0;
    sub_1000053E4(&_swiftEmptyArrayStorage);
    sub_100005D18(&qword_10000C058, type metadata accessor for QLThumbnailError, &unk_1000071F0);
    sub_10000664C();
    swift_willThrow();

    goto LABEL_3;
  }

  v35 = v34;
  sub_1000067FC();
  v36 = swift_task_alloc();
  v0[29] = v36;
  *v36 = v0;
  v36[1] = sub_1000034B4;
  v37 = v0[8];
  v38 = v0[4];

  return sub_1000023B0(v38, v35, v37);
}

uint64_t sub_100003040(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[25] = a1;
  v4[26] = a2;
  v4[27] = v2;

  if (v2)
  {
    v5 = sub_1000037A8;
  }

  else
  {
    v5 = sub_100003158;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100003158()
{
  sub_10000675C();
  if (qword_10000C130 != -1)
  {
    swift_once();
  }

  sub_100005BBC(v0[14], qword_10000C850);
  if (sub_1000068CC())
  {
    v1 = v0[20];
    v2 = v0[16];
    v3 = v0[14];
    v4 = sub_10000393C(&off_1000088D8, v0[25], v0[26]);
    v1(v2, v3);
    if (v4)
    {
      v5 = v0[25];
      v6 = v0[26];
      v7 = v0[20];
      v8 = v0[18];
      v9 = v0[19];
      v10 = v0[14];
      sub_10000686C();
      sub_10000671C();
      sub_100005BF4(v5, v6);

      v7(v8, v10);

      v11 = v0[1];
LABEL_12:

      return v11();
    }
  }

  else
  {
    (v0[20])(v0[16], v0[14]);
  }

  v13 = v0[25];
  v12 = v0[26];
  v14 = v0[19];
  isa = sub_10000669C().super.isa;
  v16 = CGImageSourceCreateWithData(isa, v14);

  sub_100005BF4(v13, v12);
  v0[28] = v16;
  if (!v16)
  {
    v22 = v0[19];
    type metadata accessor for QLThumbnailError(0);
    v0[3] = 0;
    sub_1000053E4(&_swiftEmptyArrayStorage);
    sub_100005D18(&qword_10000C058, type metadata accessor for QLThumbnailError, &unk_1000071F0);
    sub_10000664C();
    swift_willThrow();

    v11 = v0[1];
    goto LABEL_12;
  }

  v17 = v16;
  sub_1000067FC();
  v18 = swift_task_alloc();
  v0[29] = v18;
  *v18 = v0;
  v18[1] = sub_1000034B4;
  v19 = v0[8];
  v20 = v0[4];

  return sub_1000023B0(v20, v17, v19);
}

uint64_t sub_1000034B4()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  (*(v2[7] + 8))(v2[8], v2[6]);
  if (v0)
  {
    v3 = sub_10000386C;
  }

  else
  {
    v3 = sub_10000361C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000361C()
{
  v1 = v0[28];
  v2 = v0[19];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000036E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000037A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000386C()
{
  v1 = v0[28];
  v2 = v0[19];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10000393C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1000066BC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100005CC4(a2, a3);
  sub_1000066CC();
  sub_100005D18(&qword_10000C060, &type metadata accessor for Data.Iterator, &protocol conformance descriptor for Data.Iterator);
  v10 = 0;
  while (1)
  {
    result = sub_1000069BC();
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

void sub_100003B38(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v26 = a2;
  v27 = a4;
  v25 = a3;
  v6 = sub_100004240(&qword_10000C068, &qword_100006F18);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - v8;
  v10 = sub_1000067DC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a2, v10);
  (*(v7 + 16))(v9, a1, v6);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = (v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (*(v7 + 80) + v15 + 8) & ~*(v7 + 80);
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v14, v13, v10);
  v18 = v25;
  *(v17 + v15) = v25;
  (*(v7 + 32))(v17 + v16, v9, v6);
  v19 = objc_allocWithZone(QLMemoryLimitedQueueTask);
  aBlock[4] = sub_100005ED4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004400;
  aBlock[3] = &unk_100008948;
  v20 = _Block_copy(aBlock);
  v21 = v18;
  v22 = [v19 initWithBlock:v20 expectedMemoryConsumption:v27];
  _Block_release(v20);

  if (sub_1000067AC())
  {
    if (qword_10000C148 != -1)
    {
      swift_once();
    }

    v23 = &qword_10000C888;
  }

  else
  {
    if (qword_10000C140 != -1)
    {
      swift_once();
    }

    v23 = &qword_10000C880;
  }

  [*v23 addTask:v22];
}

uint64_t sub_100003E88(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000674C();
  __chkstk_darwin(v2 - 8);
  sub_1000067CC();
  sub_10000678C();
  sub_10000679C();
  sub_1000067AC();
  sub_1000067BC();
  v3 = QLThumbnailingImageIOCreateThumbnailOfMinimumSizeWithImageSourceAndContentType();
  if (v3)
  {
    v4 = v3;
    sub_1000067CC();
    sub_10000672C();

    sub_100004240(&qword_10000C068, &qword_100006F18);
    return sub_10000698C();
  }

  else
  {
    type metadata accessor for QLThumbnailError(0);
    sub_1000053E4(&_swiftEmptyArrayStorage);
    sub_100005D18(&qword_10000C058, type metadata accessor for QLThumbnailError, &unk_1000071F0);
    sub_10000664C();
    sub_100004240(&qword_10000C068, &qword_100006F18);
    return sub_10000697C();
  }
}

uint64_t sub_100004088(uint64_t a1)
{
  v2 = sub_1000041EC();

  return ThumbnailExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100004134();
  sub_10000670C();
  return 0;
}

unint64_t sub_100004134()
{
  result = qword_10000C030;
  if (!qword_10000C030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C030);
  }

  return result;
}

unint64_t sub_1000041EC()
{
  result = qword_10000C038;
  if (!qword_10000C038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C038);
  }

  return result;
}

uint64_t sub_100004240(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id sub_100004288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10000668C();
  v9 = *(v8 - 8);
  v11 = 0;
  if ((*(v9 + 48))(a1, 1, v8) != 1)
  {
    sub_10000667C(v10);
    v11 = v12;
    (*(v9 + 8))(a1, v8);
  }

  v17 = 0;
  v13 = [v4 initWithContentsOfURL:v11 options:a2 maxLength:a3 error:&v17];

  if (v13)
  {
    v14 = v17;
  }

  else
  {
    v15 = v17;
    sub_10000665C();

    swift_willThrow();
  }

  return v13;
}

uint64_t sub_100004400(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100004444(uint64_t a1)
{
  v2 = sub_100005D18(&qword_10000C0E8, type metadata accessor for QLThumbnailError, &unk_100007100);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000044B0(uint64_t a1)
{
  v2 = sub_100005D18(&qword_10000C0E8, type metadata accessor for QLThumbnailError, &unk_100007100);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100004520(uint64_t a1)
{
  v2 = sub_100005D18(&qword_10000C058, type metadata accessor for QLThumbnailError, &unk_1000071F0);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

Swift::Int sub_100004640(uint64_t a1, uint64_t a2)
{
  sub_100006A5C();
  swift_getWitnessTable();
  sub_1000066EC();
  return sub_100006A6C();
}

uint64_t sub_1000046B8(uint64_t a1)
{
  v2 = sub_100005D18(&qword_10000C058, type metadata accessor for QLThumbnailError, &unk_1000071F0);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100004724(uint64_t a1)
{
  v2 = sub_100005D18(&qword_10000C058, type metadata accessor for QLThumbnailError, &unk_1000071F0);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100004790(void *a1, uint64_t a2)
{
  v4 = sub_100005D18(&qword_10000C058, type metadata accessor for QLThumbnailError, &unk_1000071F0);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100004844(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005D18(&qword_10000C058, type metadata accessor for QLThumbnailError, &unk_1000071F0);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1000048C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100006A5C();
  sub_10000694C();
  return sub_100006A6C();
}

void *sub_100004920@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10000493C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1000066DC();
}

uint64_t sub_1000049A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005D18(&qword_10000C058, type metadata accessor for QLThumbnailError, &unk_1000071F0);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

unint64_t sub_100004A40(uint64_t a1, uint64_t a2)
{
  sub_100006A5C();
  sub_10000696C();
  v4 = sub_100006A6C();

  return sub_100004AB8(a1, a2, v4);
}

unint64_t sub_100004AB8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1000069FC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100004B70(uint64_t a1)
{
  sub_100006A5C();
  type metadata accessor for CFString(0);
  sub_100005D18(&qword_10000C0A8, type metadata accessor for CFString, &unk_100007180);
  sub_1000066EC();
  v2 = sub_100006A6C();

  return sub_100005158(a1, v2);
}

uint64_t sub_100004C24(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_100004CD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100004240(&qword_10000C0A0, &qword_100006F48);
  result = sub_1000069DC();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        sub_100006038(v21, v31);
      }

      else
      {
        sub_100006100(v21, v31);
        v22 = v20;
      }

      sub_100006A5C();
      type metadata accessor for CFString(0);
      sub_100005D18(&qword_10000C0A8, type metadata accessor for CFString, &unk_100007180);
      sub_1000066EC();
      result = sub_100006A6C();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_100006038(v31, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

      v3 = v2;
      goto LABEL_34;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

_OWORD *sub_100004FB0(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100004B70(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_100005264();
      v8 = v16;
      goto LABEL_8;
    }

    sub_100004CD0(v13, a3 & 1);
    v8 = sub_100004B70(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for CFString(0);
      result = sub_100006A1C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    sub_1000060B4(v19);

    return sub_100006038(a1, v19);
  }

  else
  {
    sub_1000050F0(v8, a2, a1, v18);

    return a2;
  }
}

_OWORD *sub_1000050F0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_100006038(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_100005158(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_100005D18(&qword_10000C0A8, type metadata accessor for CFString, &unk_100007180);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1000066DC();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

id sub_100005264()
{
  v1 = v0;
  sub_100004240(&qword_10000C0A0, &qword_100006F48);
  v2 = *v0;
  v3 = sub_1000069CC();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_100006100(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_100006038(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

unint64_t sub_1000053E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004240(&qword_10000C070, &qword_100006F20);
    v3 = sub_1000069EC();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000615C(v4, &v13, &qword_10000C078, &qword_100006F28);
      v5 = v13;
      v6 = v14;
      result = sub_100004A40(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100006038(&v15, (v3[7] + 32 * result));
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

unint64_t sub_100005514(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004240(&qword_10000C0A0, &qword_100006F48);
    v3 = sub_1000069EC();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000615C(v4, &v11, &qword_10000C088, &qword_100006F38);
      v5 = v11;
      result = sub_100004B70(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100006038(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

Class sub_10000563C(uint64_t a1)
{
  v1 = sub_1000068EC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004240(&qword_10000C080, &qword_100006F30);
  inited = swift_initStackObject();
  v6 = kCGImageSourceIgnoreJPEGAuxImages;
  *(inited + 32) = kCGImageSourceIgnoreJPEGAuxImages;
  *(inited + 16) = xmmword_100006E40;
  *(inited + 40) = 1;
  v7 = kCGImageSourceSkipMetadata;
  *(inited + 64) = &type metadata for Bool;
  *(inited + 72) = v7;
  *(inited + 104) = &type metadata for Bool;
  *(inited + 80) = 1;
  v8 = v6;
  v9 = v7;
  v10 = sub_100005514(inited);
  swift_setDeallocating();
  sub_100004240(&qword_10000C088, &qword_100006F38);
  swift_arrayDestroy();
  sub_1000068BC();
  LOBYTE(inited) = sub_10000685C();
  v11 = *(v2 + 8);
  v11(v4, v1);
  if ((inited & 1) == 0)
  {
    *&v40 = sub_10000684C();
    *(&v40 + 1) = v21;
    __chkstk_darwin(v40);
    *(&v37 - 2) = &v40;
    v22 = sub_100004C24(sub_100006048, (&v37 - 4), &off_100008820);

    if (v22)
    {
      v23 = kCGImageSourceDecodeFormatAllowlist;
      v41 = sub_100004240(&qword_10000C098, &qword_100006F40);
      *&v40 = &off_100008820;
      sub_100006038(&v40, v39);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v10;
      sub_100004FB0(v39, v23, isUniquelyReferenced_nonNull_native);
      v25 = v38;
      v26 = kCGImageSourceTypeIdentifierHint;
      v41 = &type metadata for String;
      *&v40 = 0xD000000000000015;
      *(&v40 + 1) = 0x8000000100007380;
      sub_100006038(&v40, v39);
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v38 = v25;
    }

    else
    {
      sub_1000068AC();
      v27 = sub_10000685C();
      v11(v4, v1);
      if (v27)
      {
        v28 = kCGImageSourceDecodeFormatAllowlist;
        v41 = sub_100004240(&qword_10000C098, &qword_100006F40);
        *&v40 = &off_100008870;
        sub_100006038(&v40, v39);
        v29 = swift_isUniquelyReferenced_nonNull_native();
        v38 = v10;
        sub_100004FB0(v39, v28, v29);
        v14 = v38;
        v15 = kCGImageSourceTypeIdentifierHint;
        sub_1000068AC();
        goto LABEL_3;
      }

      v30 = kCGImageSourceFailForDataNotMatchingHint;
      v41 = &type metadata for Bool;
      LOBYTE(v40) = 1;
      sub_100006038(&v40, v39);
      v31 = swift_isUniquelyReferenced_nonNull_native();
      v38 = v10;
      sub_100004FB0(v39, v30, v31);
      v32 = v38;
      v26 = kCGImageSourceTypeIdentifierHint;
      v33 = sub_10000684C();
      v41 = &type metadata for String;
      *&v40 = v33;
      *(&v40 + 1) = v34;
      sub_100006038(&v40, v39);
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v38 = v32;
    }

    v20 = v26;
    goto LABEL_10;
  }

  v12 = kCGImageSourceDecodeFormatAllowlist;
  v41 = sub_100004240(&qword_10000C098, &qword_100006F40);
  *&v40 = &off_100008750;
  sub_100006038(&v40, v39);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  v38 = v10;
  sub_100004FB0(v39, v12, v13);
  v14 = v38;
  v15 = kCGImageSourceTypeIdentifierHint;
  sub_10000689C();
LABEL_3:
  v16 = sub_10000684C();
  v18 = v17;
  v11(v4, v1);
  v41 = &type metadata for String;
  *&v40 = v16;
  *(&v40 + 1) = v18;
  sub_100006038(&v40, v39);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v38 = v14;
  v20 = v15;
LABEL_10:
  sub_100004FB0(v39, v20, v19);
  type metadata accessor for CFString(0);
  sub_100005D18(&qword_10000C090, type metadata accessor for CFString, &unk_1000071AC);
  isa = sub_10000693C().super.isa;

  return isa;
}

uint64_t sub_100005BBC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100005BF4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100005C5C(uint64_t a1)
{
  v2 = sub_100004240(&qword_10000C048, &qword_100006F00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100005CC4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100005D18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100005D6C()
{
  v1 = sub_1000067DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_100004240(&qword_10000C068, &qword_100006F18);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100005ED4()
{
  v1 = *(sub_1000067DC() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100004240(&qword_10000C068, &qword_100006F18);
  v4 = *(v0 + v3);

  return sub_100003E88(v0 + v2, v4);
}

uint64_t sub_100005FBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *sub_100005FD4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

_OWORD *sub_100006038(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100006048(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1000069FC() & 1;
  }
}

uint64_t sub_1000060B4(void *a1)
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

uint64_t sub_100006100(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000615C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004240(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_10000642C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_1000064C4()
{
  result = qword_10000C110;
  if (!qword_10000C110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C110);
  }

  return result;
}