uint64_t sub_100001148()
{
  v40 = *(v0 + 320);
  sub_100001A94(&qword_100008370, &qword_100002A68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000029D0;
  strcpy((inited + 32), "json-payload");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  sub_100001A94(&qword_100008378, &qword_100002A70);
  v2 = swift_initStackObject();
  sub_100002640(v2, v3, v4, v5, v6, v7, v8, v9, v10, v38, v40, v11);
  *(v12 + 32) = v13;
  *(v12 + 40) = 0xE800000000000000;
  v14 = v13;
  sub_100001A94(&qword_100008380, &qword_100002A78);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_1000029E0;
  sub_100002678();
  *(v16 + 32) = v18;
  *(v16 + 40) = v17;
  sub_100001A94(&qword_100008388, &qword_100002A80);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_1000029D0;
  *(v19 + 32) = v14;
  *(v19 + 40) = 0xE800000000000000;
  *(v19 + 48) = sub_1000026C0();
  sub_100001A94(&qword_100008390, &qword_100002A88);
  sub_1000026C0();
  sub_100002678();
  *(v15 + 48) = v20;
  *(v15 + 56) = v21;
  *(v15 + 64) = v22;
  v23 = swift_initStackObject();
  sub_100002640(v23, v24, v25, v26, v27, v28, v29, v30, v31, v39, v41, v32);
  *(v33 + 32) = v34;
  *(v33 + 40) = 0xE800000000000000;
  v23[3].n128_u64[0] = sub_1000026C0();
  *(v15 + 72) = sub_1000026C0();
  sub_100001A94(&qword_100008398, &qword_100002A90);
  v2[3].n128_u64[0] = sub_1000026C0();
  sub_100001A94(&qword_1000083A0, &qword_100002A98);
  *(inited + 48) = sub_1000026C0();
  sub_100001A94(&qword_1000083A8, &qword_100002AA0);
  v35 = sub_1000026C0();
  v42[3] = sub_100001A94(&unk_1000083B0, qword_100002AA8);
  *v42 = v35;
  sub_10000266C();

  return v36();
}

uint64_t sub_1000014AC(uint64_t a1, void *aBlock)
{
  *(v2 + 80) = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  sub_100002710();
  swift_unknownObjectRelease();
  v3 = swift_task_alloc();
  *(v2 + 88) = v3;
  *v3 = v2;
  v3[1] = sub_100001568;

  return sub_100001128(v2 + 16);
}

uint64_t sub_100001568()
{
  sub_100002698();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_100002610();
  *v5 = v4;
  v6 = *v1;
  *v5 = *v1;

  sub_100002574(v4 + 6);
  v7 = v3[10];
  if (v2)
  {
    v8 = sub_1000026B0();

    (v7)[2](v7, 0, v8);

    _Block_release(v7);
  }

  else
  {
    sub_1000025C0(v4 + 2, v4[5]);
    v9 = sub_100002720();
    v7[2](v7, v9, 0);
    _Block_release(v7);
    swift_unknownObjectRelease();
    sub_100002574(v4 + 2);
  }

  v10 = v6[1];

  return v10();
}

uint64_t sub_100001704(uint64_t a1, uint64_t a2)
{
  sub_100001A94(&qword_100008368, &qword_100002A20);
  __chkstk_darwin();
  v5 = &v10 - v4;
  v6 = sub_100002700();
  sub_100001ADC(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;
  v7[5] = a2;
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = &unk_100002A30;
  v8[5] = v7;
  sub_100001E9C(0, 0, v5, &unk_100002A40, v8);
}

id sub_100001814()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosEngagementExtension();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10000186C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosEngagementExtension();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000018C4()
{
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100001904()
{
  sub_100002698();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000019B4;

  return sub_1000014AC(v2, v3);
}

uint64_t sub_1000019B4()
{
  sub_1000026A4();
  sub_10000268C();
  v1 = *v0;
  sub_100002610();
  *v2 = v1;

  sub_10000266C();

  return v3();
}

uint64_t sub_100001A94(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100001B04(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10000260C;

  return v6();
}

uint64_t sub_100001BEC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000260C;

  return sub_100001B04(v2, v3, v4);
}

uint64_t sub_100001CAC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1000019B4;

  return v7();
}

uint64_t sub_100001D98()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100001DD8(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = sub_10000265C(v6);
  *v7 = v8;
  v7[1] = sub_10000260C;

  return sub_100001CAC(a1, v3, v4, v5);
}

uint64_t sub_100001E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100001A94(&qword_100008368, &qword_100002A20);
  __chkstk_darwin();
  v10 = v21 - v9;
  sub_100002138(a3, v21 - v9);
  v11 = sub_100002700();
  if (sub_1000021A8(v10, 1, v11) == 1)
  {
    sub_1000021D0(v10);
  }

  else
  {
    sub_1000026F0();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v12 = sub_1000026E0();
    v14 = v13;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v15 = sub_1000026D0() + 32;
      v16 = swift_allocObject();
      *(v16 + 16) = a4;
      *(v16 + 24) = a5;

      if (v14 | v12)
      {
        v22[0] = 0;
        v22[1] = 0;
        v17 = v22;
        v22[2] = v12;
        v22[3] = v14;
      }

      else
      {
        v17 = 0;
      }

      v21[1] = 7;
      v21[2] = v17;
      v21[3] = v15;
      v19 = swift_task_create();

      sub_1000021D0(a3);

      return v19;
    }
  }

  else
  {
    v12 = 0;
    v14 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000021D0(a3);
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  if (v14 | v12)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v12;
    v22[7] = v14;
  }

  return swift_task_create();
}

uint64_t sub_100002138(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001A94(&qword_100008368, &qword_100002A20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000021D0(uint64_t a1)
{
  v2 = sub_100001A94(&qword_100008368, &qword_100002A20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100002238(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100002330;

  return v6(a1);
}

uint64_t sub_100002330()
{
  sub_1000026A4();
  sub_10000268C();
  v1 = *v0;
  sub_100002610();
  *v2 = v1;

  sub_10000266C();

  return v3();
}

uint64_t sub_100002414()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000244C()
{
  sub_100002698();
  v0 = swift_task_alloc();
  v1 = sub_10000265C(v0);
  *v1 = v2;
  v3 = sub_100002620(v1);

  return v4(v3);
}

uint64_t sub_1000024E0()
{
  sub_100002698();
  v0 = swift_task_alloc();
  v1 = sub_10000265C(v0);
  *v1 = v2;
  v3 = sub_100002620(v1);

  return v4(v3);
}

uint64_t sub_100002574(void *a1)
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

void *sub_1000025C0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

__n128 sub_100002640(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a11, uint64_t a9, uint64_t a10, __n128 a12)
{
  result = a12;
  a1[1] = a12;
  return result;
}