uint64_t sub_10001DB70()
{
  v1 = *(*v0 + 48);
  *(*v0 + 440) = v1;
  if (v1)
  {
    v2 = sub_10001DD14;
  }

  else
  {
    v2 = sub_10001DC80;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001DC80()
{
  v1 = *(v0 + 432);

  v2 = *(v0 + 448);

  v3 = *(v0 + 8);

  return v3(v2, 0);
}

uint64_t sub_10001DD14(uint64_t a1)
{
  v21 = v1;
  v2 = *(v1 + 432);
  swift_willThrow();

  sub_100027CCC();
  swift_errorRetain();
  v3 = sub_100027D4C();
  v4 = sub_1000284EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v1 + 432);
    v18 = *(v1 + 376);
    v19 = *(v1 + 392);
    v6 = *(v1 + 360);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = sub_10002866C();
    v11 = sub_100006B88(v9, v10, &v20);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error updaing family invite status %s", v7, 0xCu);
    sub_100007038(v8);

    v19(v18, v6);
  }

  else
  {
    v12 = *(v1 + 392);
    v13 = *(v1 + 376);
    v14 = *(v1 + 360);

    v12(v13, v14);
  }

  v15 = *(v1 + 440);

  v16 = *(v1 + 8);

  return v16(v15, 1);
}

uint64_t sub_10001DF1C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100001DFC(&qword_100034FC0, &qword_10002A408);
    v2 = sub_10002860C();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_100007FF4(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_100007FF4(v29, v30);
    result = sub_10002857C(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *&v7[8 * v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_100007FF4(v30, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_10001E1E4(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_100008754((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100001DFC(&qword_100034CF0, qword_10002A0D0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_10001E2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[35] = a3;
  v4[36] = a4;
  v4[33] = a1;
  v4[34] = a2;
  v5 = sub_100027D5C();
  v4[37] = v5;
  v4[38] = *(v5 - 8);
  v4[39] = swift_task_alloc();

  return _swift_task_switch(sub_10001E374, 0, 0);
}

uint64_t sub_10001E374()
{
  v1 = [objc_allocWithZone(FACircleContext) initWithEventType:FACircleEventTypeAcceptInvitationFromMessages];
  v0[40] = v1;
  v2 = objc_allocWithZone(NSURLComponents);
  sub_100027BBC(v3);
  v5 = v4;
  v6 = [v2 initWithURL:v4 resolvingAgainstBaseURL:1];

  if (v6)
  {
    v8 = v0[35];
    v7 = v0[36];
    v9 = [v6 fa_queryItemsDictionary];
    v10 = sub_10002837C();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10001F938(v8, v7, 0xD000000000000013, 0x800000010002A9B0, isUniquelyReferenced_nonNull_native);
    sub_100001DFC(&qword_100034810, &qword_100029740);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10002A220;
    *(inited + 32) = 0xD000000000000011;
    *(inited + 40) = 0x800000010002A9D0;
    *(inited + 72) = sub_100001DFC(&qword_100034EB8, &unk_10002A290);
    *(inited + 48) = v10;
    sub_1000079CC(inited);
    swift_setDeallocating();
    sub_100008800(inited + 32, &qword_100034818, &qword_100029748);
    isa = sub_10002836C().super.isa;

    [v1 setAdditionalParameters:isa];
  }

  v14 = v0[34];
  v15 = sub_1000283DC();
  [v1 setClientName:v15];

  v16 = [objc_allocWithZone(FACircleStateController) initWithPresenter:v14];
  v0[41] = v16;
  [v16 setPresentationType:3];
  v0[2] = v0;
  v0[7] = v0 + 31;
  v0[3] = sub_10001E6EC;
  v17 = swift_continuation_init();
  v0[27] = sub_100001DFC(&qword_100034EB0, &unk_10002A280);
  v0[20] = _NSConcreteStackBlock;
  v0[21] = 1107296256;
  v0[22] = sub_10001E9DC;
  v0[23] = &unk_100031880;
  v0[24] = v17;
  [v16 performWithContext:v1 completion:v0 + 20];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10001E6EC()
{

  return _swift_task_switch(sub_10001E7CC, 0, 0);
}

uint64_t sub_10001E7CC()
{
  v24 = v0;
  v1 = *(v0 + 248);
  v2 = [v1 error];
  if (v2)
  {
    v3 = v2;
    sub_100027CCC();
    v4 = v3;
    v5 = sub_100027D4C();
    v6 = sub_1000284EC();

    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 320);
    v10 = *(v0 + 304);
    v9 = *(v0 + 312);
    v11 = *(v0 + 296);
    if (v7)
    {
      v21 = *(v0 + 328);
      v22 = *(v0 + 320);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v23 = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = sub_10002866C();
      v20 = v11;
      v16 = sub_100006B88(v14, v15, &v23);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v5, v6, "Error loading stateController: %s", v12, 0xCu);
      sub_100007038(v13);

      (*(v10 + 8))(v9, v20);
    }

    else
    {

      (*(v10 + 8))(v9, v11);
    }
  }

  else
  {
    v17 = *(v0 + 320);
  }

  v18 = *(v0 + 8);

  return v18(v1);
}

uint64_t sub_10001E9DC(uint64_t a1, void *a2)
{
  v3 = sub_100008754((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

uint64_t sub_10001EA40(uint64_t a1)
{
  v1 = sub_100027D5C();
  v51 = *(v1 - 8);
  v52 = v1;
  __chkstk_darwin(v1);
  v53 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100027B3C();
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = __chkstk_darwin(v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v42 - v7;
  v9 = sub_100027C1C();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v42 - v15;
  __chkstk_darwin(v14);
  v18 = &v42 - v17;
  v19 = sub_100027C8C();
  v45 = *(v19 - 8);
  v46 = v19;
  __chkstk_darwin(v19);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100027C6C();
  sub_100027C4C();
  sub_100027C0C();
  sub_100027C4C();
  v22 = *(v10 + 8);
  v49 = v10 + 8;
  v50 = v9;
  v44 = v22;
  v22(v13, v9);
  sub_100001DFC(&qword_100034EC0, &qword_10002A2A0);
  v23 = sub_100027C7C();
  v24 = *(v23 - 8);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10002A220;
  (*(v24 + 104))(v26 + v25, enum case for Calendar.Component.day(_:), v23);
  sub_10001FCF8(v26);
  swift_setDeallocating();
  (*(v24 + 8))(v26 + v25, v23);
  swift_deallocClassInstance();
  v47 = v18;
  v48 = v16;
  sub_100027C5C();

  sub_100027CBC();
  v27 = v42;
  v28 = v43;
  (*(v42 + 16))(v6, v8);
  v29 = sub_100027D4C();
  v30 = sub_10002850C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 134217984;
    v32 = sub_100027B2C();
    if (v33)
    {
      v34 = 0;
    }

    else
    {
      v34 = v32;
    }

    v35 = *(v27 + 8);
    v35(v6, v28);
    *(v31 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v29, v30, "Invite date is %ld days old", v31, 0xCu);
  }

  else
  {
    v35 = *(v27 + 8);
    v35(v6, v28);
  }

  (*(v51 + 8))(v53, v52);
  v36 = sub_100027B2C();
  v38 = v37;
  v35(v8, v28);
  v39 = v50;
  v40 = v44;
  v44(v48, v50);
  v40(v47, v39);
  (*(v45 + 8))(v21, v46);
  return (v36 > 89) & ~v38;
}

uint64_t sub_10001EFE0(uint64_t a1)
{
  v6 = (*(**v1 + 80) + **(**v1 + 80));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000202EC;

  return v6(a1);
}

uint64_t sub_10001F104()
{
  v4 = (*(**v0 + 88) + **(**v0 + 88));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000202EC;

  return v4();
}

uint64_t sub_10001F218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 120) + **(**v4 + 120));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_10001F35C;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_10001F35C(uint64_t a1, char a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2 & 1);
}

uint64_t sub_10001F534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 128) + **(**v4 + 128));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1000063B4;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_10001F678(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100001DFC(&qword_100034FB8, &unk_10002A3F8);
  v37 = v4;
  result = sub_1000285FC();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_10002867C();
      sub_10002841C();
      result = sub_10002868C();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10001F938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100007814(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_10001F678(v18, a5 & 1);
      v13 = sub_100007814(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_10002865C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_10001FAC0();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

void *sub_10001FAC0()
{
  v1 = v0;
  sub_100001DFC(&qword_100034FB8, &unk_10002A3F8);
  v2 = *v0;
  v3 = sub_1000285EC();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

unint64_t sub_10001FC38(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100031770;
  v6._object = a2;
  v4 = sub_10002861C(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10001FC9C(uint64_t a1)
{
  v2 = type metadata accessor for InviteMessageDetails(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_10001FCF8(uint64_t a1)
{
  v2 = sub_100027C7C();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100001DFC(&qword_100034FA0, &unk_10002A3E8);
    v9 = sub_10002858C();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_100020298(&qword_100034FA8, &protocol conformance descriptor for Calendar.Component);
      v16 = sub_10002839C();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_100020298(&qword_100034FB0, &protocol conformance descriptor for Calendar.Component);
          v23 = sub_1000283AC();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_10001FFF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001DFC(&qword_100034FB8, &unk_10002A3F8);
    v3 = sub_10002860C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100007814(v5, v6);
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

uint64_t getEnumTagSinglePayload for FamilyInviteStatus(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FamilyInviteStatus(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100020298(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100027C7C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000202F4(char a1)
{
  result = 0x546567617373656DLL;
  switch(a1)
  {
    case 1:
      result = 0x536567617373656DLL;
      break;
    case 2:
    case 18:
    case 29:
    case 36:
      result = 0xD000000000000013;
      break;
    case 3:
    case 6:
    case 10:
    case 23:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x7255657469766E69;
      break;
    case 8:
    case 25:
    case 37:
      result = 0xD000000000000017;
      break;
    case 9:
    case 20:
    case 31:
      result = 0xD000000000000018;
      break;
    case 11:
    case 28:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x7265766965636572;
      break;
    case 13:
      result = 0x61487265646E6573;
      break;
    case 14:
      result = 0x54676E69646E6570;
      break;
    case 15:
      result = 0x53676E69646E6570;
      break;
    case 16:
      result = 0x49676E69646E6570;
      break;
    case 17:
      result = 0x6E49747065636361;
      break;
    case 19:
    case 26:
    case 30:
      result = 0xD000000000000015;
      break;
    case 21:
    case 32:
      result = 0xD000000000000016;
      break;
    case 22:
      v3 = 0x747065636361;
      goto LABEL_24;
    case 24:
      result = 0xD000000000000014;
      break;
    case 27:
      result = 0x4964657269707865;
      break;
    case 33:
      v3 = 0x6E696C636564;
LABEL_24:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
      break;
    case 34:
      result = 0xD000000000000011;
      break;
    case 35:
      result = 0xD000000000000011;
      break;
    case 38:
      result = 0xD00000000000001DLL;
      break;
    case 39:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10002073C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1000202F4(*a1);
  v5 = v4;
  if (v3 == sub_1000202F4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10002863C();
  }

  return v8 & 1;
}

Swift::Int sub_1000207C4()
{
  v1 = *v0;
  sub_10002867C();
  sub_1000202F4(v1);
  sub_10002841C();

  return sub_10002868C();
}

uint64_t sub_100020828(uint64_t a1)
{
  sub_1000202F4(*v1);
  sub_10002841C();
}

Swift::Int sub_10002087C(uint64_t a1)
{
  v2 = *v1;
  sub_10002867C();
  sub_1000202F4(v2);
  sub_10002841C();

  return sub_10002868C();
}

unint64_t sub_1000208DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100026F4C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_10002090C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000202F4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100020950()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_100020980(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1000209B8()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1000209E8(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_100020A40(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_100020A98()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_100020AC8(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_100020B20()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_100020B50(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t sub_100020BA8()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t sub_100020BD8(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t sub_100020C30()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t sub_100020C60(uint64_t a1, uint64_t a2)
{

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t sub_100020CB8()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t sub_100020CE8(uint64_t a1, uint64_t a2)
{

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t sub_100020D40()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t sub_100020D70(uint64_t a1, uint64_t a2)
{

  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return result;
}

uint64_t sub_100020DC8()
{
  v1 = *(v0 + 144);

  return v1;
}

uint64_t sub_100020DF8(uint64_t a1, uint64_t a2)
{

  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return result;
}

uint64_t sub_100020E50()
{
  v1 = *(v0 + 160);

  return v1;
}

uint64_t sub_100020E80(uint64_t a1, uint64_t a2)
{

  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return result;
}

uint64_t sub_100020ED8()
{
  v1 = *(v0 + 176);

  return v1;
}

uint64_t sub_100020F08(uint64_t a1, uint64_t a2)
{

  *(v2 + 176) = a1;
  *(v2 + 184) = a2;
  return result;
}

uint64_t sub_100020F60()
{
  v1 = *(v0 + 192);

  return v1;
}

uint64_t sub_100020F90(uint64_t a1, uint64_t a2)
{

  *(v2 + 192) = a1;
  *(v2 + 200) = a2;
  return result;
}

uint64_t sub_100020FE8()
{
  v1 = *(v0 + 208);

  return v1;
}

uint64_t sub_100021018(uint64_t a1, uint64_t a2)
{

  *(v2 + 208) = a1;
  *(v2 + 216) = a2;
  return result;
}

uint64_t sub_100021084(uint64_t a1)
{

  *(v1 + 224) = a1;
  return result;
}

uint64_t sub_100021168()
{
  v1 = *(v0 + 240);

  return v1;
}

uint64_t sub_100021198(uint64_t a1, uint64_t a2)
{

  *(v2 + 240) = a1;
  *(v2 + 248) = a2;
  return result;
}

uint64_t sub_1000211F0()
{
  v1 = *(v0 + 256);

  return v1;
}

uint64_t sub_100021220(uint64_t a1, uint64_t a2)
{

  *(v2 + 256) = a1;
  *(v2 + 264) = a2;
  return result;
}

uint64_t sub_100021458@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_1000215C8(char a1)
{
  result = type metadata accessor for InviteMessageDetails(0);
  *(v1 + *(result + 108)) = a1;
  return result;
}

uint64_t sub_100021640@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0xE000000000000000;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0xE000000000000000;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0xE000000000000000;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0xE000000000000000;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0xE000000000000000;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0xE000000000000000;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0xE000000000000000;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0xE000000000000000;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0xE000000000000000;
  *(a1 + 224) = &_swiftEmptyArrayStorage;
  *(a1 + 232) = 4;
  *(a1 + 234) = 1;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0xE000000000000000;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0xE000000000000000;
  v2 = type metadata accessor for InviteMessageDetails(0);
  v3 = v2[24];
  v4 = sub_100027BEC();
  v5 = *(*(v4 - 8) + 56);
  v5(a1 + v3, 1, 1, v4);
  v5(a1 + v2[25], 1, 1, v4);
  v6 = v2[26];
  v7 = sub_100027C1C();
  result = (*(*(v7 - 8) + 56))(a1 + v6, 1, 1, v7);
  *(a1 + v2[27]) = 0;
  return result;
}

uint64_t sub_100021790(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 776) = a7;
  *(v7 + 768) = a6;
  *(v7 + 760) = a5;
  *(v7 + 752) = a4;
  *(v7 + 1437) = a3;
  *(v7 + 744) = a2;
  *(v7 + 736) = a1;
  sub_100001DFC(&qword_1000347A0, &unk_100029620);
  *(v7 + 784) = swift_task_alloc();
  *(v7 + 792) = swift_task_alloc();
  v8 = sub_100027C1C();
  *(v7 + 800) = v8;
  *(v7 + 808) = *(v8 - 8);
  *(v7 + 816) = swift_task_alloc();
  sub_100001DFC(&qword_1000348A8, &unk_10002A420);
  *(v7 + 824) = swift_task_alloc();
  v9 = type metadata accessor for InviteMessageDetails(0);
  *(v7 + 832) = v9;
  *(v7 + 840) = *(v9 - 8);
  *(v7 + 848) = swift_task_alloc();
  v10 = sub_100027D5C();
  *(v7 + 856) = v10;
  *(v7 + 864) = *(v10 - 8);
  *(v7 + 872) = swift_task_alloc();
  *(v7 + 880) = swift_task_alloc();
  *(v7 + 888) = swift_task_alloc();
  *(v7 + 896) = swift_task_alloc();
  *(v7 + 904) = swift_task_alloc();
  *(v7 + 912) = swift_task_alloc();
  *(v7 + 920) = swift_task_alloc();
  *(v7 + 928) = swift_task_alloc();
  *(v7 + 936) = swift_task_alloc();
  *(v7 + 944) = swift_task_alloc();
  v11 = sub_100027AEC();
  *(v7 + 952) = v11;
  *(v7 + 960) = *(v11 - 8);
  *(v7 + 968) = swift_task_alloc();

  return _swift_task_switch(sub_100021A64, 0, 0);
}

void *sub_100021A64()
{
  v161 = v0;
  v1 = sub_100027AFC();
  v152 = v0;
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = *(v0 + 960);
      v4 = *(v3 + 16);
      v3 += 16;
      v5 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
      v153 = *(v3 + 56);
      v154 = v4;
      v158 = v3;
      v6 = (v3 - 8);
      v7 = &_swiftEmptyDictionarySingleton;
      v4(*(v0 + 968), v5, *(v0 + 952));
      while (1)
      {
        v9 = sub_100027ACC();
        v11 = sub_100026F4C(v9, v10);
        v12 = v11 == 40 ? 39 : v11;
        v13 = sub_100027ADC();
        if (v14)
        {
          break;
        }

        v27 = sub_100026800(v12);
        if (v28)
        {
          v29 = v27;
          v160[0] = v7;
          if (!swift_isUniquelyReferenced_nonNull_native())
          {
            sub_100026DE4();
            v7 = v160[0];
          }

          sub_100026C3C(v29, v7);
        }

LABEL_6:
        (*v6)(*(v0 + 968), *(v0 + 952));
        v5 += v153;
        if (!--v2)
        {

          goto LABEL_30;
        }

        v154(*(v0 + 968), v5, *(v0 + 952));
      }

      v15 = v13;
      v16 = v14;
      v17 = v7;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v160[0] = v17;
      v19 = sub_100026800(v12);
      v21 = *(v17 + 16);
      v22 = (v20 & 1) == 0;
      v23 = __OFADD__(v21, v22);
      v24 = v21 + v22;
      if (v23)
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v25 = v20;
      if (*(v17 + 24) < v24)
      {
        sub_100026980(v24, isUniquelyReferenced_nonNull_native);
        v7 = v160[0];
        v19 = sub_100026800(v12);
        if ((v25 & 1) != (v26 & 1))
        {

          return sub_10002865C();
        }

        if ((v25 & 1) == 0)
        {
          goto LABEL_23;
        }

LABEL_4:
        v8 = (v7[7] + 16 * v19);
        *v8 = v15;
        v8[1] = v16;

LABEL_5:
        v0 = v152;
        goto LABEL_6;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v7 = v17;
        if (v20)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v33 = v19;
        sub_100026DE4();
        v19 = v33;
        v7 = v160[0];
        if (v25)
        {
          goto LABEL_4;
        }
      }

LABEL_23:
      v7[(v19 >> 6) + 8] |= 1 << v19;
      *(v7[6] + v19) = v12;
      v30 = (v7[7] + 16 * v19);
      *v30 = v15;
      v30[1] = v16;
      v31 = v7[2];
      v23 = __OFADD__(v31, 1);
      v32 = v31 + 1;
      if (v23)
      {
        goto LABEL_37;
      }

      v7[2] = v32;
      goto LABEL_5;
    }

    v7 = &_swiftEmptyDictionarySingleton;
  }

  else
  {
    v7 = sub_100026FEC(&_swiftEmptyArrayStorage);
  }

LABEL_30:
  v158 = v7;
  *(v0 + 976) = v7;
  sub_100027CCC();
  v34 = sub_100027D4C();
  v35 = sub_10002850C();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "Building message..", v36, 2u);
  }

  v37 = *(v0 + 944);
  v38 = *(v0 + 864);
  v39 = *(v0 + 856);
  v15 = *(v0 + 848);
  v40 = *(v0 + 832);
  v41 = *(v0 + 808);
  v155 = *(v0 + 800);

  (*(v38 + 8))(v37, v39);
  *v15 = 0;
  *(v15 + 8) = 0xE000000000000000;
  *(v15 + 16) = 0;
  *(v15 + 24) = 0xE000000000000000;
  *(v15 + 32) = 0;
  *(v15 + 40) = 0xE000000000000000;
  *(v15 + 48) = 0;
  *(v15 + 56) = 0xE000000000000000;
  *(v15 + 64) = 0;
  *(v15 + 72) = 0xE000000000000000;
  *(v15 + 80) = 0;
  *(v15 + 88) = 0xE000000000000000;
  *(v15 + 96) = 0;
  *(v15 + 104) = 0xE000000000000000;
  *(v15 + 112) = 0;
  *(v15 + 120) = 0xE000000000000000;
  *(v15 + 128) = 0;
  *(v15 + 136) = 0xE000000000000000;
  *(v15 + 144) = 0;
  *(v15 + 152) = 0xE000000000000000;
  *(v15 + 160) = 0;
  *(v15 + 168) = 0xE000000000000000;
  *(v15 + 176) = 0;
  *(v15 + 184) = 0xE000000000000000;
  *(v15 + 192) = 0;
  *(v15 + 200) = 0xE000000000000000;
  *(v15 + 208) = 0;
  *(v15 + 216) = 0xE000000000000000;
  *(v15 + 224) = &_swiftEmptyArrayStorage;
  *(v15 + 232) = 4;
  *(v15 + 234) = 1;
  *(v15 + 240) = 0;
  *(v15 + 248) = 0xE000000000000000;
  *(v15 + 256) = 0;
  *(v15 + 264) = 0xE000000000000000;
  v42 = v40[24];
  v43 = sub_100027BEC();
  v44 = *(*(v43 - 8) + 56);
  v153 = v42;
  v44(v15 + v42, 1, 1, v43);
  v45 = v40[25];
  v44(&v45[v15], 1, 1, v43);
  v46 = v40[26];
  v47 = *(v41 + 56);
  v47(v15 + v46, 1, 1, v155);
  *(v15 + v40[27]) = 0;
  *(v0 + 1435) = 0;
  sub_1000270E4();
  sub_10002838C();
  v154 = v45;
  v150 = v47;
  v151 = v46;
  v149 = v40;
  v48 = *(v0 + 712);
  **(v0 + 848) = *(v0 + 704);
  *(v15 + 8) = v48;
  *(v0 + 1409) = 1;
  sub_10002838C();
  v49 = *(v0 + 672);
  v50 = *(v0 + 680);
  *(v0 + 984) = v50;
  *(v15 + 16) = v49;
  *(v15 + 24) = v50;
  *(v0 + 1432) = 4;
  sub_10002838C();
  v51 = *(v0 + 232);
  *(v15 + 32) = *(v0 + 224);
  *(v15 + 40) = v51;
  *(v0 + 1431) = 7;
  sub_10002838C();
  v52 = *(v0 + 264);
  *(v15 + 96) = *(v0 + 256);
  *(v15 + 104) = v52;
  *(v0 + 1430) = 8;
  sub_10002838C();
  v53 = *(v0 + 296);
  *(v15 + 176) = *(v0 + 288);
  *(v15 + 184) = v53;
  *(v0 + 1429) = 10;
  sub_10002838C();
  v54 = *(v0 + 328);
  *(v15 + 192) = *(v0 + 320);
  *(v15 + 200) = v54;
  *(v0 + 1427) = 3;
  sub_10002838C();
LABEL_38:
  v56 = *(v0 + 360);
  *(v15 + 48) = *(v0 + 352);
  *(v15 + 56) = v56;
  *(v0 + 1425) = 17;
  sub_10002838C();
  v58 = *(v0 + 824);
  sub_100027BDC();

  sub_100002064(v58, v15 + v153, &qword_1000348A8, &unk_10002A420);
  *(v0 + 1423) = 28;
  sub_10002838C();
  v59 = *(v0 + 824);
  sub_100027BDC();

  sub_100002064(v59, v154 + v15, &qword_1000348A8, &unk_10002A420);
  *(v0 + 1421) = 13;
  sub_10002838C();
  v60 = *(v0 + 808);
  v61 = *(v0 + 800);
  v62 = *(v0 + 792);
  v63 = *(v0 + 776);
  v64 = *(v0 + 448);
  v65 = *(v0 + 456);
  *(v0 + 992) = v64;
  *(v0 + 1000) = v65;
  *(v15 + 256) = v64;
  *(v15 + 264) = v65;
  sub_100008798(v63, v62, &qword_1000347A0, &unk_100029620);
  v66 = (*(v60 + 48))(v62, 1, v61);
  v148 = v15;
  if (v66 == 1)
  {
    sub_100027138(*(v0 + 792));
    if (v158[2])
    {
      sub_100026800(34);
      if (v67)
      {
        v68 = objc_allocWithZone(NSDateFormatter);

        v69 = [v68 init];
        v70 = sub_1000283DC();
        [v69 setDateFormat:v70];

        v71 = sub_1000283DC();

        v72 = [v69 dateFromString:v71];

        if (v72)
        {
          sub_100027BFC();

          v73 = 0;
        }

        else
        {
          v73 = 1;
        }

        v87 = *(v152 + 784);
        v150(v87, v73, 1, *(v152 + 800));
        sub_100002064(v87, v15 + v151, &qword_1000347A0, &unk_100029620);
        sub_100027CBC();
        v88 = sub_100027D4C();
        v89 = sub_1000284DC();
        v90 = os_log_type_enabled(v88, v89);
        v91 = *(v152 + 928);
        v92 = *(v152 + 864);
        v93 = *(v152 + 856);
        if (v90)
        {
          v94 = swift_slowAlloc();
          *v94 = 0;
          _os_log_impl(&_mh_execute_header, v88, v89, "got date from message url", v94, 2u);
        }

        (*(v92 + 8))(v91, v93);
      }
    }
  }

  else
  {
    v74 = *(v0 + 816);
    v75 = *(v0 + 808);
    v76 = *(v0 + 800);
    (*(v75 + 32))(v74, *(v0 + 792), v76);
    sub_100027138(v15 + v151);
    (*(v75 + 16))(v15 + v151, v74, v76);
    v150(v15 + v151, 0, 1, v76);
    sub_100027CBC();
    v77 = sub_100027D4C();
    v78 = sub_1000284DC();
    v79 = os_log_type_enabled(v77, v78);
    v80 = *(v0 + 936);
    v81 = *(v0 + 864);
    v82 = *(v0 + 856);
    v83 = *(v0 + 816);
    v84 = *(v0 + 808);
    v85 = *(v0 + 800);
    if (v79)
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&_mh_execute_header, v77, v78, "got date from msmessage", v86, 2u);
    }

    (*(v81 + 8))(v80, v82);
    (*(v84 + 8))(v83, v85);
  }

  *(v152 + 1419) = 11;
  sub_10002838C();
  v95 = *(v152 + 480);
  v96 = *(v152 + 488);
  *(v152 + 1417) = 14;
  sub_10002838C();
  *(v152 + 1008) = *(v152 + 512);
  *(v152 + 1016) = *(v152 + 520);
  *(v152 + 1415) = 15;
  sub_10002838C();
  *(v152 + 1024) = *(v152 + 544);
  *(v152 + 1032) = *(v152 + 552);
  *(v152 + 1413) = 16;
  sub_10002838C();
  *(v152 + 1040) = *(v152 + 576);
  *(v152 + 1048) = *(v152 + 584);
  *(v152 + 1411) = 18;
  sub_10002838C();
  *(v152 + 1056) = *(v152 + 608);
  *(v152 + 1064) = *(v152 + 616);
  *(v152 + 1436) = 19;
  sub_10002838C();
  *(v152 + 1072) = *(v152 + 640);
  *(v152 + 1080) = *(v152 + 648);
  *(v152 + 1434) = 20;
  sub_10002838C();
  v97 = *(v152 + 200);
  *(v152 + 1088) = *(v152 + 192);
  *(v152 + 1096) = v97;
  *(v152 + 1408) = 21;
  sub_10002838C();
  v98 = *(v152 + 216);
  *(v152 + 1104) = *(v152 + 208);
  *(v152 + 1112) = v98;
  *(v152 + 1433) = 22;
  sub_10002838C();
  *(v152 + 1120) = *(v152 + 688);
  *(v152 + 1128) = *(v152 + 696);
  *(v152 + 1410) = 23;
  sub_10002838C();
  *(v152 + 1136) = *(v152 + 656);
  *(v152 + 1144) = *(v152 + 664);
  *(v152 + 1412) = 24;
  sub_10002838C();
  *(v152 + 1152) = *(v152 + 624);
  *(v152 + 1160) = *(v152 + 632);
  *(v152 + 1414) = 25;
  sub_10002838C();
  *(v152 + 1168) = *(v152 + 592);
  *(v152 + 1176) = *(v152 + 600);
  *(v152 + 1416) = 26;
  sub_10002838C();
  *(v152 + 1184) = *(v152 + 560);
  *(v152 + 1192) = *(v152 + 568);
  *(v152 + 1418) = 27;
  sub_10002838C();
  *(v152 + 1200) = *(v152 + 528);
  *(v152 + 1208) = *(v152 + 536);
  *(v152 + 1420) = 29;
  sub_10002838C();
  v99 = *(v152 + 504);
  *(v152 + 1216) = *(v152 + 496);
  *(v152 + 1224) = v99;
  *(v152 + 1422) = 30;
  sub_10002838C();
  v100 = *(v152 + 472);
  *(v152 + 1232) = *(v152 + 464);
  *(v152 + 1240) = v100;
  *(v152 + 1424) = 31;
  sub_10002838C();
  v101 = *(v152 + 440);
  *(v152 + 1248) = *(v152 + 432);
  *(v152 + 1256) = v101;
  *(v152 + 1426) = 32;
  sub_10002838C();
  v102 = *(v152 + 408);
  *(v152 + 1264) = *(v152 + 400);
  *(v152 + 1272) = v102;
  *(v152 + 1428) = 33;
  sub_10002838C();
  v103 = *(v152 + 376);
  *(v152 + 1280) = *(v152 + 368);
  *(v152 + 1288) = v103;
  if (v158[2] && (v104 = sub_100026800(12), (v105 & 1) != 0))
  {
    v106 = (v158[7] + 16 * v104);
    v107 = v106[1];
    v142 = *v106;
    v148[30] = *v106;
    v148[31] = v107;
  }

  else
  {
    v107 = *(v152 + 760);
    if (v107)
    {
      v148[30] = *(v152 + 752);
      v148[31] = v107;

      v142 = *(v152 + 752);
    }

    else
    {
      v142 = 0;
      v107 = 0xE000000000000000;
    }
  }

  sub_100027CCC();
  v108 = sub_100027D4C();
  v143 = sub_10002850C();
  v156 = v108;
  v109 = os_log_type_enabled(v108, v143);
  v110 = *(v152 + 864);
  v144 = *(v152 + 856);
  v146 = *(v152 + 920);
  if (v109)
  {
    v111 = swift_slowAlloc();
    v140 = swift_slowAlloc();
    v160[0] = v140;
    *v111 = 136315138;

    v112 = sub_100006B88(v142, v107, v160);

    *(v111 + 4) = v112;
    _os_log_impl(&_mh_execute_header, v156, v143, "recipient handle is %s", v111, 0xCu);
    sub_100007038(v140);
  }

  else
  {
  }

  v141 = *(v110 + 8);
  v141(v146, v144);
  *(v152 + 1296) = v141;
  *(v152 + 336) = v95;
  *(v152 + 344) = v96;
  *(v152 + 304) = 44;
  *(v152 + 312) = 0xE100000000000000;
  sub_100017000();
  v113 = sub_10002854C();

  v114 = *(v113 + 16);
  if (v114)
  {
    v115 = (v113 + 40);
    v157 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v116 = *v115;
      *(v152 + 272) = *(v115 - 1);
      *(v152 + 280) = v116;
      *(v152 + 240) = 58;
      *(v152 + 248) = 0xE100000000000000;
      result = sub_10002854C();
      v117 = result[2];
      if (!v117)
      {
        break;
      }

      if (v117 == 1)
      {
        goto LABEL_82;
      }

      v118 = result[5];
      v119 = result[7];
      v145 = result[6];
      v147 = result[4];

      v120 = v119;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v157 = sub_1000266F4(0, *(v157 + 2) + 1, 1, v157);
      }

      v122 = *(v157 + 2);
      v121 = *(v157 + 3);
      if (v122 >= v121 >> 1)
      {
        v157 = sub_1000266F4((v121 > 1), v122 + 1, 1, v157);
      }

      *(v157 + 2) = v122 + 1;
      v123 = &v157[32 * v122];
      *(v123 + 4) = v147;
      *(v123 + 5) = v118;
      *(v123 + 6) = v145;
      *(v123 + 7) = v120;
      v115 += 2;
      if (!--v114)
      {
        goto LABEL_74;
      }
    }

    __break(1u);
LABEL_82:
    __break(1u);
  }

  else
  {
    v157 = &_swiftEmptyArrayStorage;
LABEL_74:
    *(v152 + 1304) = v157;
    v124 = *(v152 + 848);
    v125 = *(v152 + 1437);

    swift_beginAccess();
    v148[28] = v157;
    *(v124 + v149[27]) = v125;

    if (v125 == 1)
    {

      sub_100027CCC();
      v126 = sub_100027D4C();
      v127 = sub_10002850C();
      if (os_log_type_enabled(v126, v127))
      {
        v128 = swift_slowAlloc();
        *v128 = 0;
        _os_log_impl(&_mh_execute_header, v126, v127, "Message is in compose screen, return message with minimal details", v128, 2u);
      }

      v129 = *(v152 + 912);
      v130 = *(v152 + 856);
      v131 = *(v152 + 848);
      v132 = *(v152 + 840);
      v133 = *(v152 + 832);
      v134 = *(v152 + 736);

      v141(v129, v130);
      sub_100002A28(v131, v134);
      (*(v132 + 56))(v134, 0, 1, v133);
      sub_10001FC9C(v131);

      v57 = *(v152 + 8);

      return v57();
    }

    else
    {
      v135 = *(v152 + 768);
      v136 = v135[3];
      *(v152 + 1312) = v136;
      v137 = v135[4];
      *(v152 + 1320) = v137;
      *(v152 + 1328) = sub_100008754(v135, v136);
      v138 = *(v137 + 8);
      *(v152 + 1336) = v138;
      *(v152 + 1344) = (v137 + 8) & 0xFFFFFFFFFFFFLL | 0xB81F000000000000;
      v159 = (v138 + *v138);
      v139 = swift_task_alloc();
      *(v152 + 1352) = v139;
      *v139 = v152;
      v139[1] = sub_100023994;

      return v159(1, v136, v137);
    }
  }

  return result;
}

uint64_t sub_100023994(uint64_t a1)
{
  *(*v1 + 1360) = a1;

  return _swift_task_switch(sub_100023A94, 0, 0);
}

uint64_t sub_100023A94()
{
  v111 = v0;
  v1 = *(v0 + 1360);
  v2 = *(v0 + 848);
  v3 = *(v0 + 768);
  v4 = v3[3];
  v5 = v3[4];
  sub_100008754(v3, v4);
  v6 = *(v5 + 40);
  v7 = v1;
  v8 = v6(v2, v1, v4, v5);

  if (sub_10001A7B0(4u, 4u))
  {
    sub_100027CCC();
    v9 = sub_100027D4C();
    v10 = sub_10002850C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Invite status is unknown, fetch family again from server", v11, 2u);
    }

    v12 = *(v0 + 1336);
    v13 = *(v0 + 1296);
    v14 = *(v0 + 904);
    v15 = *(v0 + 856);

    v13(v14, v15);
    v106 = (v12 + *v12);
    v16 = swift_task_alloc();
    *(v0 + 1368) = v16;
    *v16 = v0;
    v16[1] = sub_100024894;
    v17 = *(v0 + 1320);
    v18 = *(v0 + 1312);

    return v106(2, v18, v17);
  }

  else
  {
    *(v0 + 1384) = *(v0 + 1360);
    *(v0 + 1438) = v8;
    *(*(v0 + 848) + 232) = v8;
    sub_100027CCC();
    v20 = sub_100027D4C();
    v21 = sub_10002850C();
    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 1296);
    v24 = *(v0 + 896);
    v25 = *(v0 + 856);
    if (v22)
    {
      v107 = *(v0 + 1296);
      v26 = swift_slowAlloc();
      v103 = v24;
      v27 = swift_slowAlloc();
      v110 = v27;
      *v26 = 136315138;
      v28 = sub_10001A708(v8);
      v30 = sub_100006B88(v28, v29, &v110);

      *(v26 + 4) = v30;

      _os_log_impl(&_mh_execute_header, v20, v21, "invite status %s", v26, 0xCu);
      sub_100007038(v27);

      v107(v103, v25);
    }

    else
    {

      v23(v24, v25);
    }

    v31 = [objc_opt_self() defaultStore];
    *(v0 + 1392) = v31;
    if (v31)
    {
      v32 = v31;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 728;
      *(v0 + 24) = sub_100025610;
      v33 = swift_continuation_init();
      *(v0 + 136) = sub_100001DFC(&qword_100034FD0, &qword_10002A438);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1000265F0;
      *(v0 + 104) = &unk_100031D80;
      *(v0 + 112) = v33;
      [v32 aa_primaryAppleAccountWithCompletion:v0 + 80];

      return _swift_continuation_await(v0 + 16);
    }

    else
    {
      v34 = *(v0 + 1384);
      v35 = *(v0 + 768);
      v36 = v35[3];
      v37 = v35[4];
      sub_100008754(v35, v36);
      v38 = *(v37 + 32);
      v39 = v34;
      LOBYTE(v34) = v38(v34, v36, v37);

      if ((v34 & 1) == 0)
      {
      }

      v40 = *(v0 + 1000);
      v41 = *(v0 + 992);
      v108 = *(v0 + 1384);
      v42 = *(v0 + 848);
      v43 = *(v0 + 768);
      *(v42 + 233) = 0;
      v45 = v43[3];
      v44 = v43[4];
      sub_100008754(v43, v45);
      v46 = *(v44 + 48);
      v47 = v39;

      LOBYTE(v41) = v46(v108, v41, v40, v45, v44);

      v109 = v47;

      *(v42 + 234) = v41 & 1;
      sub_100027CCC();
      v48 = sub_100027D4C();
      v49 = sub_10002850C();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = *(v0 + 1384);
        v51 = swift_slowAlloc();
        *v51 = 134217984;
        if (v50)
        {
          v52 = [v109 ageCategory];
        }

        else
        {
          v52 = 9;
        }

        *(v51 + 4) = v52;
        _os_log_impl(&_mh_execute_header, v48, v49, "Age category: %ld", v51, 0xCu);
      }

      v53 = *(v0 + 1384);
      v54 = *(v0 + 1296);
      v55 = *(v0 + 888);
      v56 = *(v0 + 856);

      v54(v55, v56);
      if (v53)
      {
        if ([v109 ageCategory] == 1)
        {
          if (*(*(v0 + 976) + 16))
          {
            v57 = sub_100026800(2);
            if (v58)
            {
              v59 = *(v0 + 848);
              v60 = (*(*(v0 + 976) + 56) + 16 * v57);
              v62 = *v60;
              v61 = v60[1];

              *(v59 + 16) = v62;
              *(v59 + 24) = v61;
            }
          }
        }
      }

      v63 = *(v0 + 1438);
      if (v63 <= 1)
      {
        if (*(v0 + 1438))
        {
          v79 = *(v0 + 1392);
          v102 = *(v0 + 1280);
          v105 = *(v0 + 1288);
          v97 = *(v0 + 1264);
          v100 = *(v0 + 1248);
          v93 = *(v0 + 1232);
          v80 = *(v0 + 848);

          *(v80 + 112) = v93;
          *(v80 + 128) = v97;
          *(v80 + 160) = v102;
          *(v80 + 168) = v105;
          *(v80 + 144) = v100;
        }

        else
        {
          v66 = *(v0 + 1392);
          v101 = *(v0 + 1128);
          v95 = *(v0 + 1120);
          v90 = *(v0 + 1104);
          v92 = *(v0 + 1088);
          v86 = *(v0 + 1072);
          v67 = *(v0 + 848);

          *(v67 + 112) = v86;
          *(v67 + 128) = v90;
          *(v67 + 160) = v95;
          *(v67 + 168) = v101;
          *(v67 + 144) = v92;
        }
      }

      else if (v63 == 2)
      {
        v99 = *(v0 + 1048);
        v96 = *(v0 + 1040);
        v68 = *(v0 + 1032);
        v69 = *(v0 + 1024);
        v89 = *(v0 + 1016);
        v87 = *(v0 + 1008);
        v70 = *(v0 + 848);

        v70[14] = v87;
        v70[15] = v89;
        v70[16] = v69;
        v70[17] = v68;
        v70[20] = v96;
        v70[21] = v99;
        v70[18] = v69;
        v70[19] = v68;
      }

      else if (v63 == 3)
      {
        v64 = *(v0 + 1392);
        v104 = *(v0 + 1208);
        v98 = *(v0 + 1200);
        v91 = *(v0 + 1184);
        v94 = *(v0 + 1168);
        v88 = *(v0 + 1152);
        v65 = *(v0 + 848);

        *(v65 + 112) = v88;
        *(v65 + 128) = v91;
        *(v65 + 160) = v98;
        *(v65 + 168) = v104;
        *(v65 + 144) = v94;
      }

      else
      {

        sub_100027CCC();
        v71 = sub_100027D4C();
        v72 = sub_1000284EC();
        v73 = os_log_type_enabled(v71, v72);
        v74 = *(v0 + 1392);
        v75 = *(v0 + 1296);
        v76 = *(v0 + 880);
        v77 = *(v0 + 856);
        if (v73)
        {
          v78 = swift_slowAlloc();
          *v78 = 0;
          _os_log_impl(&_mh_execute_header, v71, v72, "Invite status unknown", v78, 2u);
        }

        else
        {
        }

        v75(v76, v77);
      }

      v81 = *(v0 + 848);
      v82 = *(v0 + 840);
      v83 = *(v0 + 832);
      v84 = *(v0 + 736);
      sub_100002A28(v81, v84);
      (*(v82 + 56))(v84, 0, 1, v83);

      sub_10001FC9C(v81);

      v85 = *(v0 + 8);

      return v85();
    }
  }
}

uint64_t sub_100024894(uint64_t a1)
{
  *(*v1 + 1376) = a1;

  return _swift_task_switch(sub_100024994, 0, 0);
}

uint64_t sub_100024994()
{
  v100 = v0;
  v1 = *(v0 + 1376);
  v2 = *(v0 + 1360);
  v3 = *(v0 + 848);
  v4 = *(v0 + 768);
  v5 = v1;

  v6 = v4[3];
  v7 = v4[4];
  sub_100008754(v4, v6);
  v8 = (*(v7 + 40))(v3, v1, v6, v7);

  *(v0 + 1384) = *(v0 + 1376);
  *(v0 + 1438) = v8;
  *(*(v0 + 848) + 232) = v8;
  sub_100027CCC();
  v9 = sub_100027D4C();
  v10 = sub_10002850C();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1296);
  v13 = *(v0 + 896);
  v14 = *(v0 + 856);
  if (v11)
  {
    v96 = *(v0 + 1296);
    v15 = swift_slowAlloc();
    v93 = v13;
    v16 = swift_slowAlloc();
    v99 = v16;
    *v15 = 136315138;
    v17 = sub_10001A708(v8);
    v19 = sub_100006B88(v17, v18, &v99);

    *(v15 + 4) = v19;

    _os_log_impl(&_mh_execute_header, v9, v10, "invite status %s", v15, 0xCu);
    sub_100007038(v16);

    v96(v93, v14);
  }

  else
  {

    v12(v13, v14);
  }

  v20 = [objc_opt_self() defaultStore];
  *(v0 + 1392) = v20;
  if (v20)
  {
    v21 = v20;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 728;
    *(v0 + 24) = sub_100025610;
    v22 = swift_continuation_init();
    *(v0 + 136) = sub_100001DFC(&qword_100034FD0, &qword_10002A438);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1000265F0;
    *(v0 + 104) = &unk_100031D80;
    *(v0 + 112) = v22;
    [v21 aa_primaryAppleAccountWithCompletion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v23 = *(v0 + 1384);
    v24 = *(v0 + 768);
    v25 = v24[3];
    v26 = v24[4];
    sub_100008754(v24, v25);
    v27 = *(v26 + 32);
    v28 = v23;
    LOBYTE(v23) = v27(v23, v25, v26);

    if ((v23 & 1) == 0)
    {
    }

    v29 = *(v0 + 1000);
    v30 = *(v0 + 992);
    v97 = *(v0 + 1384);
    v31 = *(v0 + 848);
    v32 = *(v0 + 768);
    *(v31 + 233) = 0;
    v34 = v32[3];
    v33 = v32[4];
    sub_100008754(v32, v34);
    v35 = *(v33 + 48);
    v36 = v28;

    LOBYTE(v30) = v35(v97, v30, v29, v34, v33);

    v98 = v36;

    *(v31 + 234) = v30 & 1;
    sub_100027CCC();
    v37 = sub_100027D4C();
    v38 = sub_10002850C();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = *(v0 + 1384);
      v40 = swift_slowAlloc();
      *v40 = 134217984;
      if (v39)
      {
        v41 = [v98 ageCategory];
      }

      else
      {
        v41 = 9;
      }

      *(v40 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v37, v38, "Age category: %ld", v40, 0xCu);
    }

    v42 = *(v0 + 1384);
    v43 = *(v0 + 1296);
    v44 = *(v0 + 888);
    v45 = *(v0 + 856);

    v43(v44, v45);
    if (v42)
    {
      if ([v98 ageCategory] == 1)
      {
        if (*(*(v0 + 976) + 16))
        {
          v46 = sub_100026800(2);
          if (v47)
          {
            v48 = *(v0 + 848);
            v49 = (*(*(v0 + 976) + 56) + 16 * v46);
            v51 = *v49;
            v50 = v49[1];

            *(v48 + 16) = v51;
            *(v48 + 24) = v50;
          }
        }
      }
    }

    v52 = *(v0 + 1438);
    if (v52 <= 1)
    {
      if (*(v0 + 1438))
      {
        v68 = *(v0 + 1392);
        v92 = *(v0 + 1280);
        v95 = *(v0 + 1288);
        v87 = *(v0 + 1264);
        v90 = *(v0 + 1248);
        v83 = *(v0 + 1232);
        v69 = *(v0 + 848);

        *(v69 + 112) = v83;
        *(v69 + 128) = v87;
        *(v69 + 160) = v92;
        *(v69 + 168) = v95;
        *(v69 + 144) = v90;
      }

      else
      {
        v55 = *(v0 + 1392);
        v91 = *(v0 + 1128);
        v85 = *(v0 + 1120);
        v80 = *(v0 + 1104);
        v82 = *(v0 + 1088);
        v76 = *(v0 + 1072);
        v56 = *(v0 + 848);

        *(v56 + 112) = v76;
        *(v56 + 128) = v80;
        *(v56 + 160) = v85;
        *(v56 + 168) = v91;
        *(v56 + 144) = v82;
      }
    }

    else if (v52 == 2)
    {
      v89 = *(v0 + 1048);
      v86 = *(v0 + 1040);
      v57 = *(v0 + 1032);
      v58 = *(v0 + 1024);
      v79 = *(v0 + 1016);
      v77 = *(v0 + 1008);
      v59 = *(v0 + 848);

      v59[14] = v77;
      v59[15] = v79;
      v59[16] = v58;
      v59[17] = v57;
      v59[20] = v86;
      v59[21] = v89;
      v59[18] = v58;
      v59[19] = v57;
    }

    else if (v52 == 3)
    {
      v53 = *(v0 + 1392);
      v94 = *(v0 + 1208);
      v88 = *(v0 + 1200);
      v81 = *(v0 + 1184);
      v84 = *(v0 + 1168);
      v78 = *(v0 + 1152);
      v54 = *(v0 + 848);

      *(v54 + 112) = v78;
      *(v54 + 128) = v81;
      *(v54 + 160) = v88;
      *(v54 + 168) = v94;
      *(v54 + 144) = v84;
    }

    else
    {

      sub_100027CCC();
      v60 = sub_100027D4C();
      v61 = sub_1000284EC();
      v62 = os_log_type_enabled(v60, v61);
      v63 = *(v0 + 1392);
      v64 = *(v0 + 1296);
      v65 = *(v0 + 880);
      v66 = *(v0 + 856);
      if (v62)
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&_mh_execute_header, v60, v61, "Invite status unknown", v67, 2u);
      }

      else
      {
      }

      v64(v65, v66);
    }

    v70 = *(v0 + 848);
    v71 = *(v0 + 840);
    v72 = *(v0 + 832);
    v73 = *(v0 + 736);
    sub_100002A28(v70, v73);
    (*(v71 + 56))(v73, 0, 1, v72);

    sub_10001FC9C(v70);

    v74 = *(v0 + 8);

    return v74();
  }
}

uint64_t sub_100025610()
{
  v1 = *(*v0 + 48);
  *(*v0 + 1400) = v1;
  if (v1)
  {

    v2 = sub_100026308;
  }

  else
  {
    v2 = sub_100025834;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100025834()
{
  v1 = *(v0 + 728);
  if (v1 && (v2 = [*(v0 + 728) aa_primaryEmail], v1, v2))
  {
    v3 = sub_1000283EC();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = *(v0 + 1384);
  v7 = *(v0 + 768);
  v8 = v7[3];
  v9 = v7[4];
  sub_100008754(v7, v8);
  v10 = *(v9 + 32);
  v11 = v6;
  v12 = v9;
  v13 = v11;
  LOBYTE(v6) = v10(v6, v8, v12);

  if ((v6 & 1) == 0)
  {

    goto LABEL_11;
  }

  if (!v5)
  {
LABEL_11:
    v14 = 0;
    goto LABEL_12;
  }

  if (*(v0 + 992) == v3 && v5 == *(v0 + 1000))
  {

    v14 = 1;
  }

  else
  {
    v14 = sub_10002863C();
  }

LABEL_12:
  v15 = *(v0 + 1000);
  v16 = *(v0 + 992);
  v91 = *(v0 + 1384);
  v17 = *(v0 + 848);
  v18 = *(v0 + 768);
  v84 = v14;
  *(v17 + 233) = v14 & 1;
  v20 = v18[3];
  v19 = v18[4];
  sub_100008754(v18, v20);
  v21 = *(v19 + 48);
  v22 = v13;

  LOBYTE(v16) = v21(v91, v16, v15, v20, v19);

  v92 = v22;

  *(v17 + 234) = v16 & 1;
  sub_100027CCC();
  v23 = sub_100027D4C();
  v24 = sub_10002850C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = *(v0 + 1384);
    v26 = swift_slowAlloc();
    *v26 = 134217984;
    if (v25)
    {
      v27 = [v22 ageCategory];
    }

    else
    {
      v27 = 9;
    }

    *(v26 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v23, v24, "Age category: %ld", v26, 0xCu);
  }

  v28 = *(v0 + 1384);
  v29 = *(v0 + 1296);
  v30 = *(v0 + 888);
  v31 = *(v0 + 856);

  v29(v30, v31);
  if (v28)
  {
    if ([v22 ageCategory] == 1)
    {
      if (*(*(v0 + 976) + 16))
      {
        v32 = sub_100026800(2);
        if (v33)
        {
          v34 = *(v0 + 848);
          v35 = (*(*(v0 + 976) + 56) + 16 * v32);
          v36 = *v35;
          v37 = v35[1];

          *(v34 + 16) = v36;
          *(v34 + 24) = v37;
        }
      }
    }
  }

  v38 = *(v0 + 1438);
  if (v38 <= 1)
  {
    if (*(v0 + 1438))
    {
      v90 = *(v0 + 1288);
      v76 = *(v0 + 1280);
      v80 = *(v0 + 1248);
      v83 = *(v0 + 1264);
      v58 = *(v0 + 1240);
      v59 = (v0 + 1232);
      v60 = *(v0 + 848);
      v61 = v84;
      if (v84)
      {
        v59 = (v0 + 1216);
      }

      v87 = *v59;
      if (v61)
      {
        v58 = *(v0 + 1224);
      }

      v70 = v58;

      *(v60 + 112) = v87;
      *(v60 + 120) = v70;
      *(v60 + 160) = v76;
      *(v60 + 168) = v90;
      *(v60 + 128) = v83;
      *(v60 + 144) = v80;
    }

    else
    {
      v89 = *(v0 + 1128);
      v73 = *(v0 + 1120);
      v75 = *(v0 + 1088);
      v78 = *(v0 + 1104);
      v43 = *(v0 + 1080);
      v44 = (v0 + 1072);
      v45 = *(v0 + 848);
      v46 = v84;
      if (v84)
      {
        v44 = (v0 + 1056);
      }

      v86 = *v44;
      if (v46)
      {
        v43 = *(v0 + 1064);
      }

      v69 = v43;

      *(v45 + 112) = v86;
      *(v45 + 120) = v69;
      *(v45 + 160) = v73;
      *(v45 + 168) = v89;
      *(v45 + 128) = v78;
      *(v45 + 144) = v75;
    }
  }

  else if (v38 == 2)
  {
    v82 = *(v0 + 1048);
    v79 = *(v0 + 1040);
    v47 = *(v0 + 1032);
    v48 = *(v0 + 1024);
    v71 = *(v0 + 1008);
    v72 = *(v0 + 1016);
    v49 = *(v0 + 848);

    v49[14] = v71;
    v49[15] = v72;
    v49[16] = v48;
    v49[17] = v47;
    v49[20] = v79;
    v49[21] = v82;
    v49[18] = v48;
    v49[19] = v47;
  }

  else if (v38 == 3)
  {
    v88 = *(v0 + 1208);
    v74 = *(v0 + 1200);
    v77 = *(v0 + 1168);
    v81 = *(v0 + 1184);
    v39 = *(v0 + 1160);
    v40 = (v0 + 1152);
    v41 = *(v0 + 848);
    v42 = v84;
    if (v84)
    {
      v40 = (v0 + 1136);
    }

    v85 = *v40;
    if (v42)
    {
      v39 = *(v0 + 1144);
    }

    v68 = v39;

    *(v41 + 112) = v85;
    *(v41 + 120) = v68;
    *(v41 + 160) = v74;
    *(v41 + 168) = v88;
    *(v41 + 128) = v81;
    *(v41 + 144) = v77;
  }

  else
  {

    sub_100027CCC();
    v50 = sub_100027D4C();
    v51 = sub_1000284EC();
    v52 = os_log_type_enabled(v50, v51);
    v53 = *(v0 + 1392);
    v54 = *(v0 + 1296);
    v55 = *(v0 + 880);
    v56 = *(v0 + 856);
    if (v52)
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "Invite status unknown", v57, 2u);
    }

    else
    {
    }

    v54(v55, v56);
  }

  v62 = *(v0 + 848);
  v63 = *(v0 + 840);
  v64 = *(v0 + 832);
  v65 = *(v0 + 736);
  sub_100002A28(v62, v65);
  (*(v63 + 56))(v65, 0, 1, v64);

  sub_10001FC9C(v62);

  v66 = *(v0 + 8);

  return v66();
}

uint64_t sub_100026308(uint64_t a1)
{
  v21 = v1;
  v2 = v1[174];
  v3 = v1[173];
  v4 = v1[106];
  swift_willThrow();

  sub_10001FC9C(v4);
  sub_100027CCC();
  swift_errorRetain();
  v5 = sub_100027D4C();
  v6 = sub_1000284EC();

  if (os_log_type_enabled(v5, v6))
  {
    v19 = v1[109];
    v7 = v1[108];
    v8 = v1[107];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = sub_10002866C();
    v13 = sub_100006B88(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s", v9, 0xCu);
    sub_100007038(v10);

    (*(v7 + 8))(v19, v8);
  }

  else
  {
    v14 = v1[109];
    v15 = v1[108];
    v16 = v1[107];

    (*(v15 + 8))(v14, v16);
  }

  (*(v1[105] + 56))(v1[92], 1, 1, v1[104]);

  v17 = v1[1];

  return v17();
}

uint64_t sub_1000265F0(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_100008754((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100001DFC(&qword_100034CF0, qword_10002A0D0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return swift_continuation_throwingResume();
  }
}

char *sub_1000266F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001DFC(&qword_100034C20, &qword_100029FA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_100026800(uint64_t a1)
{
  v1 = a1;
  sub_10002867C();
  sub_1000202F4(v1);
  sub_10002841C();

  v2 = sub_10002868C();

  return sub_100026888(v1, v2);
}

unint64_t sub_100026888(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = sub_1000202F4(a1);
    v8 = v7;
    while (sub_1000202F4(*(*(v2 + 48) + v4)) != v6 || v9 != v8)
    {
      v11 = sub_10002863C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_100026980(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100001DFC(&qword_1000350D0, "H#");
  v32 = v4;
  result = sub_1000285FC();
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
      v21 = *(*(v5 + 48) + v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = v22[1];
      v33 = *v22;
      if ((v32 & 1) == 0)
      {
      }

      sub_10002867C();
      sub_1000202F4(v21);
      sub_10002841C();

      result = sub_10002868C();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v33;
      v16[1] = v23;
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

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_100026C3C(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_10002856C() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + v6);
      sub_10002867C();
      sub_1000202F4(v9);
      sub_10002841C();

      result = sub_10002868C();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_100026DE4()
{
  v1 = v0;
  sub_100001DFC(&qword_1000350D0, "H#");
  v2 = *v0;
  v3 = sub_1000285EC();
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

unint64_t sub_100026F4C(uint64_t a1, uint64_t a2)
{
  v2 = sub_10002864C();

  if (v2 >= 0x28)
  {
    return 40;
  }

  else
  {
    return v2;
  }
}

uint64_t type metadata accessor for InviteMessageDetails(uint64_t a1)
{
  result = qword_100035B70;
  if (!qword_100035B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100026FEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001DFC(&qword_1000350D0, "H#");
    v3 = sub_10002860C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_100026800(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
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

unint64_t sub_1000270E4()
{
  result = qword_100034FC8;
  if (!qword_100034FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034FC8);
  }

  return result;
}

uint64_t sub_100027138(uint64_t a1)
{
  v2 = sub_100001DFC(&qword_1000347A0, &unk_100029620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000271BC()
{
  result = qword_100034FD8;
  if (!qword_100034FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034FD8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InviteQueryItem(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD9)
  {
    goto LABEL_17;
  }

  if (a2 + 39 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 39) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 39;
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

      return (*a1 | (v4 << 8)) - 39;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 39;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x28;
  v8 = v6 - 40;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InviteQueryItem(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 39 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 39) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD9)
  {
    v4 = 0;
  }

  if (a2 > 0xD8)
  {
    v5 = ((a2 - 217) >> 8) + 1;
    *result = a2 + 39;
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
    *result = a2 + 39;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100027374(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = sub_100001DFC(&qword_1000348A8, &unk_10002A420);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 96);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100001DFC(&qword_1000347A0, &unk_100029620);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 104);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000274C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_100001DFC(&qword_1000348A8, &unk_10002A420);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 96);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100001DFC(&qword_1000347A0, &unk_100029620);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 104);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_100027600(uint64_t a1)
{
  sub_10002772C();
  if (v1 <= 0x3F)
  {
    sub_10002777C(319, &qword_100035040, &type metadata accessor for URL);
    if (v2 <= 0x3F)
    {
      sub_10002777C(319, &unk_100035048, &type metadata accessor for Date);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10002772C()
{
  if (!qword_100035038)
  {
    v0 = sub_10002847C();
    if (!v1)
    {
      atomic_store(v0, &qword_100035038);
    }
  }
}

void sub_10002777C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10002853C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_1000277E4()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_100035B88 = result;
  return result;
}

uint64_t sub_100027838()
{
  v0 = sub_100027D2C();
  sub_100027A48(v0, qword_100035BB8);
  sub_100027944(v0, qword_100035BB8);
  if (qword_100035B80 != -1)
  {
    swift_once();
  }

  v1 = qword_100035B88;
  return sub_100027D1C();
}

uint64_t sub_1000278E0()
{
  if (qword_100035B90 != -1)
  {
    swift_once();
  }

  v0 = sub_100027D2C();

  return sub_100027944(v0, qword_100035BB8);
}

uint64_t sub_100027944(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10002797C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100035B90 != -1)
  {
    swift_once();
  }

  v2 = sub_100027D2C();
  v3 = sub_100027944(v2, qword_100035BB8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *sub_100027A48(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}