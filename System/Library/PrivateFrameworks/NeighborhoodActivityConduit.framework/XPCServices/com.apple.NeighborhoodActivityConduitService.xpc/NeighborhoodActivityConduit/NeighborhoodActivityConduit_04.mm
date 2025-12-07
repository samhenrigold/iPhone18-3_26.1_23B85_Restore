char *sub_100063EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000E0AB8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = objc_opt_self();
  isa = sub_1000E22A8().super.isa;
  *v42 = 0;
  v11 = [v9 dataWithPropertyList:isa format:200 options:0 error:v42];

  v12 = *v42;
  if (!v11)
  {
    v18 = v12;
    sub_1000E0BE8();

    swift_willThrow();
    return v11;
  }

  v13 = sub_1000E0C88();
  v15 = v14;

  v41 = v15;
  v16 = v15 >> 62;
  if (v16 > 1)
  {
    if (v16 != 2)
    {
      v17 = 0;
      goto LABEL_13;
    }

    v20 = *(v13 + 16);
    v19 = *(v13 + 24);
    v21 = __OFSUB__(v19, v20);
    v17 = v19 - v20;
    if (!v21)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_10:
    LODWORD(v17) = HIDWORD(v13) - v13;
    if (__OFSUB__(HIDWORD(v13), v13))
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v17 = v17;
    goto LABEL_13;
  }

  if (v16)
  {
    goto LABEL_10;
  }

  v17 = BYTE6(v41);
LABEL_13:
  if (__OFADD__(v17, 200))
  {
    __break(1u);
    goto LABEL_37;
  }

  v22 = malloc(v17 + 200);
  if (v22)
  {
    v11 = v22;
    *v42 = 1;
    memset(&v42[4], 0, 196);
    sub_1000A6B90(a1, a2, &v42[136], &v43);
    if (v16 > 1)
    {
      if (v16 != 2)
      {
LABEL_31:
        *(v11 + 24) = *&v42[192];
        *&v42[4] = 0;
        v33 = *&v42[176];
        v11[10] = *&v42[160];
        v11[11] = v33;
        goto LABEL_32;
      }

      v25 = *(v13 + 16);
      v24 = *(v13 + 24);
      v21 = __OFSUB__(v24, v25);
      v26 = v24 - v25;
      if (!v21)
      {
        goto LABEL_25;
      }

      __break(1u);
    }

    else if (!v16)
    {
      *&v42[4] = BYTE6(v41);
      v23 = *&v42[176];
      v11[10] = *&v42[160];
      v11[11] = v23;
      *(v11 + 24) = *&v42[192];
LABEL_32:
      v34 = *&v42[112];
      v11[6] = *&v42[96];
      v11[7] = v34;
      v35 = *&v42[144];
      v11[8] = *&v42[128];
      v11[9] = v35;
      v36 = *&v42[48];
      v11[2] = *&v42[32];
      v11[3] = v36;
      v37 = *&v42[80];
      v11[4] = *&v42[64];
      v11[5] = v37;
      v38 = *&v42[16];
      *v11 = *v42;
      v11[1] = v38;
LABEL_34:
      v39 = v41;
      sub_1000E0CA8();
      sub_100006660(v13, v39);
      return v11;
    }

    LODWORD(v26) = HIDWORD(v13) - v13;
    if (__OFSUB__(HIDWORD(v13), v13))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v26 = v26;
LABEL_25:
    if ((v26 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v26))
      {
        *&v42[4] = v26;
        v27 = *&v42[176];
        v11[10] = *&v42[160];
        v11[11] = v27;
        *(v11 + 24) = *&v42[192];
        v28 = *&v42[112];
        v11[6] = *&v42[96];
        v11[7] = v28;
        v29 = *&v42[144];
        v11[8] = *&v42[128];
        v11[9] = v29;
        v30 = *&v42[48];
        v11[2] = *&v42[32];
        v11[3] = v30;
        v31 = *&v42[80];
        v11[4] = *&v42[64];
        v11[5] = v31;
        v32 = *&v42[16];
        *v11 = *v42;
        v11[1] = v32;
        if (v16 == 2)
        {
          if (!__OFSUB__(*(v13 + 24), *(v13 + 16)))
          {
            goto LABEL_34;
          }

          __break(1u);
          goto LABEL_31;
        }

        if (!__OFSUB__(HIDWORD(v13), v13))
        {
          goto LABEL_34;
        }

LABEL_41:
        __break(1u);
      }

      goto LABEL_38;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  *v42 = 12;
  sub_10000C400(_swiftEmptyArrayStorage);
  sub_1000A75DC(&unk_10011F9D8, 255, &type metadata accessor for POSIXError, &protocol conformance descriptor for POSIXError);
  sub_1000E0BC8();
  v11 = v8;
  sub_1000E0AA8();
  (*(v6 + 8))(v8, v5);
  swift_willThrow();
  sub_100006660(v13, v41);
  return v11;
}

uint64_t sub_1000643C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v4 = v3(a2);

  return v4;
}

uint64_t sub_100064418()
{
  sub_10000ADE4(&unk_100120850, &qword_1000F2488);
  sub_100002C64(&qword_10011F9A0, &unk_100120850, &qword_1000F2488, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  sub_1000E2028();
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  sub_10000ADE4(&qword_10011F9A8, &qword_1000F2490);
  sub_100002C64(&qword_10011F9B0, &qword_10011F9A8, &qword_1000F2490, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_1000E20D8();

  swift_beginAccess();
  sub_1000E1F78();
  swift_endAccess();
}

uint64_t sub_1000645A8(void **a1, void *a2)
{
  v4 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = *a1;
  v8 = sub_1000E2538();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = qword_10011DC30;
  v10 = v7;
  v12 = a2;
  if (v9 != -1)
  {
    swift_once();
  }

  v13 = qword_1001230F0;
  v14 = sub_1000A75DC(&qword_100120020, v11, type metadata accessor for ConduitActor, &unk_1000F2250);
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = v14;
  v15[4] = v7;
  v15[5] = v12;

  sub_100022960(0, 0, v6, &unk_1000F24A0, v15);
}

uint64_t sub_100064740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v6 = qword_1001230F0;

  return _swift_task_switch(sub_1000647D8, v6, 0);
}

uint64_t sub_1000647D8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;

    sub_10000EEB4(v2);
  }

  else
  {

    sub_10000F0B0();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100064884()
{
  sub_10000ADE4(&unk_100120840, &qword_1000F2430);
  sub_100002C64(&qword_10011F970, &unk_100120840, &qword_1000F2430, &protocol conformance descriptor for PassthroughSubject<A, B>);
  sub_1000E2028();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10000ADE4(&qword_10011F978, &qword_1000F2438);
  sub_100002C64(&unk_10011F980, &qword_10011F978, &qword_1000F2438, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_1000E20D8();

  swift_beginAccess();
  sub_1000E1F78();
  swift_endAccess();

  sub_1000E2028();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000E20D8();

  swift_beginAccess();
  sub_1000E1F78();
  swift_endAccess();
}

uint64_t sub_100064AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v6 = qword_1001230F0;

  return _swift_task_switch(sub_100064B7C, v6, 0);
}

uint64_t sub_100064B7C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1000A9980(*(v0 + 56));
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100064C18(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  v10 = *a1;
  v11 = sub_1000E2538();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  v12 = qword_10011DC30;

  v14 = v10;
  if (v12 != -1)
  {
    swift_once();
  }

  v15 = qword_1001230F0;
  v16 = sub_1000A75DC(&qword_100120020, v13, type metadata accessor for ConduitActor, &unk_1000F2250);
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = v16;
  v17[4] = a2;
  v17[5] = v14;

  sub_100022F54(0, 0, v9, a4, v17);
}

uint64_t sub_100064DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v6 = qword_1001230F0;
  v5[8] = qword_1001230F0;

  return _swift_task_switch(sub_100064E50, v6, 0);
}

uint64_t sub_100064E50()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 80) = v2;
    *v2 = v0;
    v2[1] = sub_100064F4C;
    v3 = *(v0 + 56);

    return sub_10006509C(v3);
  }

  else
  {
    **(v0 + 40) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_100064F4C()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);

  return _swift_task_switch(sub_100065074, v2, 0);
}

uint64_t sub_10006509C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  sub_10000ADE4(&unk_10011F878, &unk_1000F2290);
  v2[7] = swift_task_alloc();
  v3 = sub_10000ADE4(&qword_10011EBB0, &qword_1000F04F0);
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v4 = sub_1000E0D68();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230F0;

  return _swift_task_switch(sub_100065248, v5, 0);
}

uint64_t sub_100065248()
{
  v68 = v0;
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_1000E1F08();
  sub_1000049D0(v2, qword_100123128);
  v3 = v1;
  v4 = sub_1000E1EE8();
  v5 = sub_1000E2698();

  v6 = &CSDVoucherManagerImpl__prots_0;
  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 112);
    v8 = *(v0 + 120);
    v9 = *(v0 + 104);
    v10 = *(v0 + 40);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v67 = v12;
    *v11 = 136315138;
    v13 = [v10 UUID];
    sub_1000E0D38();

    sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = sub_1000E2C18();
    v16 = v15;
    (*(v7 + 8))(v8, v9);
    v6 = &CSDVoucherManagerImpl__prots_0;
    v17 = sub_100029C70(v14, v16, &v67);

    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "Conversation %s was left.", v11, 0xCu);
    sub_10000E9DC(v12);
  }

  v19 = *(v0 + 112);
  v18 = *(v0 + 120);
  v20 = *(v0 + 104);
  v21 = *(v0 + 64);
  v22 = *(v0 + 72);
  v23 = *(v0 + 48);
  v24 = *(v0 + 56);
  v25 = *(v0 + 40);
  v26 = v23;
  sub_1000A7624(0, v26, v25, v26);

  v27 = [v25 v6[436].count];
  sub_1000E0D38();

  swift_beginAccess();
  sub_1000B93B0(v18, v24);
  swift_endAccess();
  v28 = *(v19 + 8);
  v28(v18, v20);
  if ((*(v22 + 48))(v24, 1, v21) == 1)
  {
    v29 = *(v0 + 56);
    v30 = &unk_10011F878;
    v31 = &unk_1000F2290;
  }

  else
  {
    v33 = *(v0 + 88);
    v32 = *(v0 + 96);
    v34 = *(v0 + 40);
    sub_1000AD400(*(v0 + 56), v32, &qword_10011EBB0, &qword_1000F04F0);
    sub_10000CB64(v32, v33, &qword_10011EBB0, &qword_1000F04F0);
    v35 = v34;
    v36 = sub_1000E1EE8();
    v37 = sub_1000E2698();

    if (os_log_type_enabled(v36, v37))
    {
      v66 = v37;
      v38 = *(v0 + 120);
      v39 = *(v0 + 104);
      v40 = *(v0 + 80);
      v64 = *(v0 + 88);
      v65 = *(v0 + 64);
      v41 = *(v0 + 40);
      v42 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *v42 = 136315394;
      v43 = [v41 UUID];
      sub_1000E0D38();

      sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v44 = sub_1000E2C18();
      v46 = v45;
      v28(v38, v39);
      v47 = sub_100029C70(v44, v46, &v67);

      *(v42 + 4) = v47;
      *(v42 + 12) = 2080;
      sub_10000CB64(v64, v40, &qword_10011EBB0, &qword_1000F04F0);
      v48 = *(v40 + *(v65 + 48));
      v49 = sub_1000E0CE8();
      (*(*(v49 - 8) + 8))(v40, v49);
      v50 = TUConversationAVMode.description.getter(v48);
      v52 = v51;
      sub_1000033C8(v64, &qword_10011EBB0, &qword_1000F04F0);
      v53 = sub_100029C70(v50, v52, &v67);

      *(v42 + 14) = v53;
      _os_log_impl(&_mh_execute_header, v36, v66, "Reporting call ended for %s because it was started on TV (avMode=%s).", v42, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v54 = *(v0 + 88);

      sub_1000033C8(v54, &qword_10011EBB0, &qword_1000F04F0);
    }

    v55 = *(v0 + 96);
    v56 = *(v0 + 80);
    v57 = *(v0 + 64);
    v58 = *(v0 + 40);
    v59 = *(*(v0 + 48) + OBJC_IVAR___CSDNeighborhoodActivityConduit_callHistoryManager);
    sub_10000CB64(v55, v56, &qword_10011EBB0, &qword_1000F04F0);
    isa = sub_1000E0CC8().super.isa;
    v61 = sub_1000E0CE8();
    (*(*(v61 - 8) + 8))(v56, v61);
    [v59 reportRecentCallForConversation:v58 withStartDate:isa avMode:*(v55 + *(v57 + 48))];

    v29 = v55;
    v30 = &qword_10011EBB0;
    v31 = &qword_1000F04F0;
  }

  sub_1000033C8(v29, v30, v31);

  v62 = *(v0 + 8);

  return v62();
}

uint64_t sub_1000658F8()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_10000ADE4(&unk_100120230, &qword_1000F2470);
  sub_100002C64(&unk_10011F990, &unk_100120230, &qword_1000F2470, &protocol conformance descriptor for PassthroughSubject<A, B>);
  sub_1000E20D8();

  swift_beginAccess();
  sub_1000E1F78();
  swift_endAccess();
}

uint64_t sub_100065A28(__int128 *a1, uint64_t a2)
{
  v4 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v4 - 8);
  v6 = &v17[-v5];
  v7 = a1[1];
  v18 = *a1;
  v19 = v7;
  v8 = a1[3];
  v20 = a1[2];
  v21 = v8;
  v9 = sub_1000E2538();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);

  sub_1000A9C1C(&v18, v17);
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v11 = qword_1001230F0;
  v12 = sub_1000A75DC(&qword_100120020, v10, type metadata accessor for ConduitActor, &unk_1000F2250);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v12;
  *(v13 + 32) = a2;
  v14 = v19;
  *(v13 + 40) = v18;
  *(v13 + 56) = v14;
  v15 = v21;
  *(v13 + 72) = v20;
  *(v13 + 88) = v15;

  sub_100022F54(0, 0, v6, &unk_1000F2480, v13);
}

uint64_t sub_100065BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[13] = a1;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v6 = qword_1001230F0;

  return _swift_task_switch(sub_100065C8C, v6, 0);
}

uint64_t sub_100065C8C()
{
  v14 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 120);
    v3 = sub_1000E1F08();
    sub_1000049D0(v3, qword_100123128);
    sub_1000A9C1C(v2, v0 + 16);
    v4 = sub_1000E1EE8();
    v5 = sub_1000E2698();
    sub_1000A9D38(v2);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v13 = v7;
      *v6 = 136315138;
      v8 = sub_1000B9764();
      v10 = sub_100029C70(v8, v9, &v13);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Continuity session ended: %s", v6, 0xCu);
      sub_10000E9DC(v7);
    }

    sub_100065E6C(**(v0 + 120), *(*(v0 + 120) + 8));
  }

  **(v0 + 104) = Strong == 0;
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100065E6C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v55 = a1;
  v5 = sub_1000E13E8();
  v53 = *(v5 - 8);
  v54 = v5;
  __chkstk_darwin(v5);
  v52 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HandoffInfo(0);
  v8 = __chkstk_darwin(v7 - 8);
  v51 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v49 - v10;
  v12 = sub_10000ADE4(&qword_10011F888, &qword_1000F22B0);
  v13 = __chkstk_darwin(v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v49 - v16;
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v18 = sub_1000E1F08();
  v19 = sub_1000049D0(v18, qword_100123128);

  v20 = v3;
  v21 = sub_1000E1EE8();
  v22 = sub_1000E2698();

  v23 = &unk_100123000;
  if (os_log_type_enabled(v21, v22))
  {
    v24 = swift_slowAlloc();
    v50 = v11;
    v25 = v24;
    v26 = swift_slowAlloc();
    v49 = v19;
    v57[0] = v26;
    *v25 = 136315394;
    *(v25 + 4) = sub_100029C70(v55, a2, v57);
    *(v25 + 12) = 2080;
    v27 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
    swift_beginAccess();
    sub_10000CB64(v20 + v27, v17, &qword_10011F888, &qword_1000F22B0);
    v28 = sub_1000E2358();
    v30 = sub_100029C70(v28, v29, v57);

    *(v25 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v21, v22, "Reset handoff for %s - handoffState: %s", v25, 0x16u);
    swift_arrayDestroy();
    v23 = &unk_100123000;

    v11 = v50;
  }

  v31 = v23[32];
  swift_beginAccess();
  sub_10000CB64(v20 + v31, v15, &qword_10011F888, &qword_1000F22B0);
  v32 = type metadata accessor for HandoffState(0);
  if ((*(*(v32 - 8) + 48))(v15, 1, v32) == 1)
  {
    return sub_1000033C8(v15, &qword_10011F888, &qword_1000F22B0);
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000A877C(v15, v11, type metadata accessor for HandoffInfo);
    if (*(v11 + 1) == v55 && *(v11 + 2) == a2 || (sub_1000E2C68() & 1) != 0)
    {
      v34 = v51;
      sub_1000A87E4(v11, v51, type metadata accessor for HandoffInfo);
      v35 = sub_1000E1EE8();
      v36 = sub_1000E2698();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = v11;
        v39 = swift_slowAlloc();
        v56 = v39;
        *v37 = 136315138;
        v40 = sub_1000DDC88();
        v42 = v41;
        sub_1000AD5EC(v34, type metadata accessor for HandoffInfo);
        v43 = sub_100029C70(v40, v42, &v56);

        *(v37 + 4) = v43;
        _os_log_impl(&_mh_execute_header, v35, v36, "Ending handoff because device is no longer reachable %s.", v37, 0xCu);
        sub_10000E9DC(v39);
        v11 = v38;
      }

      else
      {

        sub_1000AD5EC(v34, type metadata accessor for HandoffInfo);
      }

      v47 = v52;
      v46 = v53;
      v48 = v54;
      (*(v53 + 104))(v52, enum case for NCProtoDisconnectRequest.DisconnectReason.endingHandoff(_:), v54);
      sub_10006B2FC(v47);

      (*(v46 + 8))(v47, v48);
    }

    v44 = type metadata accessor for HandoffInfo;
    v45 = v11;
  }

  else
  {
    v44 = type metadata accessor for HandoffState;
    v45 = v15;
  }

  return sub_1000AD5EC(v45, v44);
}

void sub_100066480(void *a1, void *a2)
{
  v4 = objc_allocWithZone(IDSService);
  v5 = sub_1000E2328();
  v6 = [v4 initWithService:v5];

  if (v6)
  {
    swift_getObjectType();
    v7 = [objc_allocWithZone(TUVouchingEnablementImpl) init];
    v8 = objc_allocWithZone(type metadata accessor for VoucherManagerImpl(0));
    v9 = v6;
    v10 = sub_1000AE60C(v9);
    v11 = [objc_allocWithZone(TUFeatureFlags) init];
    v12 = [objc_allocWithZone(RPRemoteDisplayDiscovery) init];
    if (qword_10011DC10 != -1)
    {
      swift_once();
    }

    sub_1000A5718(a1, v9, v7, v10, v11, a2, v12, qword_1001230D8);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __break(1u);
  }
}

void sub_10006668C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = sub_1000E2538();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    v13 = qword_10011DC30;
    v14 = v11;

    if (v13 != -1)
    {
      swift_once();
    }

    v16 = qword_1001230F0;
    v17 = sub_1000A75DC(&qword_100120020, v15, type metadata accessor for ConduitActor, &unk_1000F2250);
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *(v18 + 24) = v17;
    *(v18 + 32) = v14;
    *(v18 + 40) = a1;
    *(v18 + 48) = a2;
    *(v18 + 56) = a3;

    sub_100022960(0, 0, v9, &unk_1000F25C0, v18);
  }
}

uint64_t sub_100066868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a5;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_100002E7C;

  return sub_10006694C(v10, a6, a7);
}

uint64_t sub_10006694C(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = v3;
  *(v4 + 32) = a2;
  *(v4 + 96) = a1;
  sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  *(v4 + 56) = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230F0;
  *(v4 + 64) = qword_1001230F0;

  return _swift_task_switch(sub_100066A28, v5, 0);
}

uint64_t sub_100066A28()
{
  v39 = v0;
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_1000E1F08();
  sub_1000049D0(v2, qword_100123128);

  v3 = sub_1000E1EE8();
  v4 = sub_1000E2698();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 96);
    v6 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = "agerError.lockdownModeEnabled";
    if (!v5)
    {
      v7 = "emoteDisplayDiscoveryState";
    }

    if (v5 == 1)
    {
      v8 = 0xD000000000000027;
    }

    else
    {
      v8 = 0xD00000000000002ALL;
    }

    if (v5 == 1)
    {
      v9 = "iscoveryState.outOfSession";
    }

    else
    {
      v9 = v7;
    }

    v10 = *(v0 + 40);
    v11 = sub_100029C70(v8, v9 | 0x8000000000000000, &v38);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2080;
    if (v10)
    {
      *(v0 + 16) = *(v0 + 32);
      *(v0 + 24) = v1;

      v12 = sub_1000E2368();
      v14 = v13;
    }

    else
    {
      v14 = 0xE300000000000000;
      v12 = 7104878;
    }

    v15 = sub_100029C70(v12, v14, &v38);

    *(v6 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Discovery session state changed to %s with %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v16 = *(v0 + 56);
  v17 = *(v0 + 64);
  v19 = *(v0 + 40);
  v18 = *(v0 + 48);
  v20 = *(v0 + 32);
  v21 = *(v0 + 96);
  v22 = sub_1000E2538();
  (*(*(v22 - 8) + 56))(v16, 1, 1, v22);
  v24 = sub_1000A75DC(&qword_100120020, v23, type metadata accessor for ConduitActor, &unk_1000F2250);
  v25 = swift_allocObject();
  *(v25 + 16) = v17;
  *(v25 + 24) = v24;
  *(v25 + 32) = v21;
  *(v25 + 40) = v20;
  *(v25 + 48) = v19;
  *(v25 + 56) = v18;

  v26 = v18;

  sub_100022960(0, 0, v16, &unk_1000F25D8, v25);

  v27 = OBJC_IVAR___CSDNeighborhoodActivityConduit_discoverySessionBleDiscoveryAssertion;
  *(v0 + 72) = OBJC_IVAR___CSDNeighborhoodActivityConduit_discoverySessionBleDiscoveryAssertion;
  v28 = *&v26[v27];
  if (v21 == 1)
  {
    if (!v28)
    {
      v29 = sub_1000E1EE8();
      v30 = sub_1000E2698();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "Taking BLE assertion due to discovery session!", v31, 2u);
      }

      v32 = swift_task_alloc();
      *(v0 + 80) = v32;
      *v32 = v0;
      v32[1] = sub_100066F14;

      return sub_10003FF60();
    }
  }

  else if (v28)
  {
    v34 = sub_1000E1EE8();
    v35 = sub_1000E2698();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Releasing discovery session BLE assertion...", v36, 2u);
    }

    *(*(v0 + 48) + *(v0 + 72)) = 0;
  }

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_100066F14(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;

  v6 = *(v4 + 64);
  if (v1)
  {

    v7 = sub_1000670D0;
  }

  else
  {
    *(v5 + 88) = a1;
    v7 = sub_100067058;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100067058()
{
  *(v0[6] + v0[9]) = v0[11];

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000670D0()
{
  *(v0[6] + v0[9]) = 0;

  v1 = v0[1];

  return v1();
}

uint64_t sub_100067144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = sub_1000E2338();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4(a2, v5, v7);
}

void sub_1000671D0(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v1 = sub_1000E1F08();
    sub_1000049D0(v1, qword_100123128);
    swift_errorRetain();
    oslog = sub_1000E1EE8();
    v2 = sub_1000E2678();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      *v3 = 138412290;
      swift_errorRetain();
      v5 = _swift_stdlib_bridgeErrorToNSError();
      *(v3 + 4) = v5;
      *v4 = v5;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Failed to activate remote display discovery: %@", v3, 0xCu);
      sub_1000033C8(v4, &unk_10011EAC0, &unk_1000F0E60);
    }

    else
    {
    }
  }
}

void sub_100067380(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1000673EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v4[3] = qword_1001230F0;
  v5 = swift_task_alloc();
  v4[4] = v5;
  *v5 = v4;
  v5[1] = sub_1000674BC;

  return sub_100067784();
}

uint64_t sub_1000674BC()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_1000675FC;

  return sub_100068618();
}

uint64_t sub_1000675FC()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_10006770C, v1, 0);
}

uint64_t sub_10006770C()
{
  *(v0 + 48) = 1;
  sub_1000E1FE8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100067784()
{
  v1[13] = v0;
  v2 = sub_1000E16E8();
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v3 = qword_1001230F0;
  v1[17] = qword_1001230F0;

  return _swift_task_switch(sub_10006787C, v3, 0);
}

uint64_t sub_10006787C()
{
  v0[18] = *(v0[13] + OBJC_IVAR___CSDNeighborhoodActivityConduit_deviceManager);
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v1 = qword_1001230E0;
  v0[19] = qword_1001230E0;

  return _swift_task_switch(sub_100067928, v1, 0);
}

uint64_t sub_100067928()
{
  *(*(v0 + 144) + 24) = &off_100114820;
  swift_unknownObjectWeakAssign();
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *v1 = v0;
  v1[1] = sub_1000679D4;

  return sub_100040C34();
}

uint64_t sub_1000679D4()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 136);
  if (v0)
  {
    v4 = sub_10006846C;
  }

  else
  {
    v4 = sub_100067B00;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100067B00()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[13];
  v0[11] = *(v2 + 32);
  *(swift_allocObject() + 16) = v3;

  v4 = v3;
  sub_10000ADE4(&qword_10011F5D8, &unk_1000F1B70);
  sub_100002C64(&qword_10011FA50, &qword_10011F5D8, &unk_1000F1B70, &protocol conformance descriptor for PassthroughSubject<A, B>);
  sub_1000E20D8();

  swift_beginAccess();
  sub_1000E1F78();
  swift_endAccess();

  v0[12] = *(v2 + 40);
  *(swift_allocObject() + 16) = v4;
  v5 = v4;

  sub_1000E20D8();

  swift_beginAccess();
  sub_1000E1F78();
  swift_endAccess();

  return _swift_task_switch(sub_100067D10, v1, 0);
}

uint64_t sub_100067D10()
{
  v10 = v0;
  v1 = v0[18];
  swift_beginAccess();
  v2 = *(v1 + 48);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_10002BA7C();
    v5 = sub_10002A9B0(&v9, v4 + 4, v3, v2);
    v6 = v9;

    sub_10000A840(v6);
    if (v5 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_5:
  v0[22] = v4;
  v7 = v0[17];

  return _swift_task_switch(sub_100067E20, v7, 0);
}

uint64_t sub_100067E20()
{
  v1 = v0[22];
  if (v1 < 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_1000E2B68();
    v0[23] = result;
    if (result)
    {
LABEL_4:
      if (result < 1)
      {
        __break(1u);
      }

      else
      {
        v3 = v0[22];
        v0[24] = 0;
        if ((v3 & 0xC000000000000001) != 0)
        {
          v4 = sub_1000E2A98();
        }

        else
        {
          v4 = *(v3 + 32);
        }

        v0[25] = v4;
        v5 = swift_task_alloc();
        v0[26] = v5;
        *v5 = v0;
        v5[1] = sub_100067F54;

        return sub_1000693F0(v4);
      }

      return result;
    }
  }

  else
  {
    result = *(v1 + 16);
    v0[23] = result;
    if (result)
    {
      goto LABEL_4;
    }
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_100067F54()
{
  v1 = *(*v0 + 136);

  return _swift_task_switch(sub_100068064, v1, 0);
}

uint64_t sub_100068064()
{
  v1 = v0[25];
  sub_1000E16D8();
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = swift_task_alloc();
  v0[27] = v4;
  *v4 = v0;
  v4[1] = sub_100068120;
  v5 = v0[16];

  return sub_10002878C(11, v5, v3, v2, 0);
}

uint64_t sub_100068120()
{
  v2 = *v1;

  v3 = *(v2 + 152);
  if (v0)
  {

    v4 = sub_1000683F4;
  }

  else
  {
    v4 = sub_100068258;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100068258()
{
  v1 = v0[17];
  (*(v0[15] + 8))(v0[16], v0[14]);

  return _swift_task_switch(sub_1000682D0, v1, 0);
}

uint64_t sub_1000682D0()
{
  v1 = v0[24];
  v2 = v0[23];

  if (v1 + 1 == v2)
  {

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[24] + 1;
    v0[24] = v5;
    v6 = v0[22];
    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = sub_1000E2A98();
    }

    else
    {
      v7 = *(v6 + 8 * v5 + 32);
    }

    v0[25] = v7;
    v8 = swift_task_alloc();
    v0[26] = v8;
    *v8 = v0;
    v8[1] = sub_100067F54;

    return sub_1000693F0(v7);
  }
}

uint64_t sub_1000683F4()
{
  v1 = v0[17];
  (*(v0[15] + 8))(v0[16], v0[14]);

  return _swift_task_switch(sub_1000AE28C, v1, 0);
}

uint64_t sub_10006846C()
{
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v1 = sub_1000E1F08();
  sub_1000049D0(v1, qword_100123128);
  swift_errorRetain();
  v2 = sub_1000E1EE8();
  v3 = sub_1000E2678();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to activate device manager: %@", v4, 0xCu);
    sub_1000033C8(v5, &unk_10011EAC0, &unk_1000F0E60);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100068618()
{
  v1[24] = v0;
  sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v1[25] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v2 = qword_1001230F0;
  v1[26] = qword_1001230F0;

  return _swift_task_switch(sub_1000686EC, v2, 0);
}

uint64_t sub_1000686EC()
{
  if ([*(v0[24] + OBJC_IVAR___CSDNeighborhoodActivityConduit_featureFlags) lagunaEnabled])
  {
    v0[27] = *(v0[24] + OBJC_IVAR___CSDNeighborhoodActivityConduit_suggestionController);
    if (qword_10011DC08 != -1)
    {
      swift_once();
    }

    v1 = qword_1001230D0;

    return _swift_task_switch(sub_1000687EC, v1, 0);
  }

  else
  {

    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_1000687EC()
{
  v1 = *(v0 + 208);
  *(*(v0 + 216) + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_delegate + 8) = &off_100114898;
  swift_unknownObjectWeakAssign();

  return _swift_task_switch(sub_100068870, v1, 0);
}

uint64_t sub_100068870()
{
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v1 = sub_1000E1F08();
  sub_1000049D0(v1, qword_100123128);
  v2 = sub_1000E1EE8();
  v3 = sub_1000E2698();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Waiting for first unlock to activate suggestion controller", v4, 2u);
  }

  v5 = v0[24];

  v6 = *(v5 + OBJC_IVAR___CSDNeighborhoodActivityConduit_systemMonitor);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[22] = sub_1000A9FF4;
  v0[23] = v7;
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_1000026A0;
  v0[21] = &unk_100114DC8;
  v8 = _Block_copy(v0 + 18);

  [v6 setFirstUnlockHandler:v8];
  _Block_release(v8);
  v0[2] = v0;
  v0[3] = sub_100068AF4;
  v9 = swift_continuation_init();
  v0[17] = sub_10000ADE4(&qword_10011FA38, &qword_1000F2538);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10009D8F0;
  v0[13] = &unk_100114DF0;
  v0[14] = v9;
  [v6 activateWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100068AF4()
{
  v1 = *(*v0 + 208);

  return _swift_task_switch(sub_100068BE8, v1, 0);
}

uint64_t sub_100068BE8()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = sub_1000E2538();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v6 = sub_1000A75DC(&qword_100120020, v5, type metadata accessor for ConduitActor, &unk_1000F2250);
  v7 = swift_allocObject();
  v7[2] = v1;
  v7[3] = v6;
  v7[4] = v3;
  v8 = v3;

  sub_100022960(0, 0, v2, &unk_1000F2548, v7);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100068D30()
{
  v1 = v0;
  v2 = sub_10000ADE4(&qword_10011F9F0, &qword_1000F24D8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - v4;
  v6 = OBJC_IVAR___CSDNeighborhoodActivityConduit_availableConversationUpdateCancellable;
  if (*(v0 + OBJC_IVAR___CSDNeighborhoodActivityConduit_availableConversationUpdateCancellable))
  {

    sub_1000E1F88();
  }

  v13 = *(*(v0 + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationPublishers) + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService22ConversationPublishers_joinedConversationSubject);
  sub_10000ADE4(&unk_100120850, &qword_1000F2488);
  sub_100002C64(&qword_10011F9A0, &unk_100120850, &qword_1000F2488, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v7 = sub_1000E2028();
  v14 = 0;
  v15 = v7;
  v13 = 0;
  sub_10000ADE4(&qword_10011F9A8, &qword_1000F2490);
  sub_10000ADE4(&qword_10011F9F8, &qword_1000F24E0);
  sub_100002C64(&qword_10011F9B0, &qword_10011F9A8, &qword_1000F2490, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_1000E2058();

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1000A9E70;
  *(v9 + 24) = v8;
  sub_100002C64(&qword_10011FA00, &qword_10011F9F0, &qword_1000F24D8, &protocol conformance descriptor for Publishers.Scan<A, B>);
  v10 = sub_1000E20D8();

  (*(v3 + 8))(v5, v2);
  *(v1 + v6) = v10;
}

id sub_100069010()
{
  ObjectType = swift_getObjectType();
  os_state_remove_handler();
  [*&v0[OBJC_IVAR___CSDNeighborhoodActivityConduit_systemMonitor] invalidate];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100069328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100002D64;

  return sub_1000693F0(a5);
}

uint64_t sub_1000693F0(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v3 = qword_1001230F0;
  v2[13] = qword_1001230F0;

  return _swift_task_switch(sub_10006948C, v3, 0);
}

uint64_t sub_10006948C()
{
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v1 = qword_1001230E0;
  *(v0 + 112) = qword_1001230E0;

  return _swift_task_switch(sub_100069524, v1, 0);
}

uint64_t sub_100069524()
{
  v1 = v0[13];
  v0[15] = sub_100013B80();
  v0[16] = v2;

  return _swift_task_switch(sub_100069594, v1, 0);
}

uint64_t sub_100069594()
{
  v13 = v0;
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v1 = sub_1000E1F08();
  sub_1000049D0(v1, qword_100123128);

  v2 = sub_1000E1EE8();
  v3 = sub_1000E2698();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[16];
  if (v4)
  {
    v6 = v0[15];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    v9 = sub_100029C70(v6, v5, &v12);

    *(v7 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "ConduitDevice appeared: %s", v7, 0xCu);
    sub_10000E9DC(v8);
  }

  else
  {
  }

  v10 = v0[14];

  return _swift_task_switch(sub_100069740, v10, 0);
}

uint64_t sub_100069740()
{
  v1 = *(v0 + 104);
  *(v0 + 136) = sub_100012CD8();

  return _swift_task_switch(sub_1000697B0, v1, 0);
}

uint64_t sub_1000697B0()
{
  v11 = v0;
  v1 = v0[17];
  swift_beginAccess();
  sub_1000D2BCC(&v10, v1);
  swift_endAccess();

  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = v0[17];
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = v2;
    sub_10001629C(sub_1000AA154, v3);

    swift_unknownObjectRelease();
  }

  v5 = v0[17];
  sub_10000ADE4(&qword_10011EB20, &qword_1000F2570);
  inited = swift_initStackObject();
  v0[18] = inited;
  *(inited + 16) = xmmword_1000F0F40;
  *(inited + 32) = v5;
  v7 = v5;
  v8 = swift_task_alloc();
  v0[19] = v8;
  *v8 = v0;
  v8[1] = sub_10006993C;

  return sub_10006DBA0(inited);
}

uint64_t sub_10006993C()
{
  v1 = *(*v0 + 104);

  swift_setDeallocating();
  swift_arrayDestroy();

  return _swift_task_switch(sub_100069A80, v1, 0);
}

uint64_t sub_100069A80()
{
  sub_1000E1FF8();
  v1 = v0[10];
  v0[20] = v1;
  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_100069B48;
  v3 = v0[11];

  return sub_10006E0E0(v3, 0, v1);
}

uint64_t sub_100069B48()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 104);

  return _swift_task_switch(sub_100069C70, v2, 0);
}

uint64_t sub_100069C70()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100069CD0(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  v10 = *a1;
  v11 = sub_1000E2538();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  v12 = qword_10011DC30;
  v13 = a2;

  if (v12 != -1)
  {
    swift_once();
  }

  v15 = qword_1001230F0;
  v16 = sub_1000A75DC(&qword_100120020, v14, type metadata accessor for ConduitActor, &unk_1000F2250);
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = v16;
  v17[4] = v13;
  v17[5] = v10;

  sub_100022960(0, 0, v9, a4, v17);
}

uint64_t sub_100069E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100002D64;

  return sub_100069F30(a5);
}

uint64_t sub_100069F30(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v3 = qword_1001230F0;
  v2[7] = qword_1001230F0;

  return _swift_task_switch(sub_100069FCC, v3, 0);
}

uint64_t sub_100069FCC()
{
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v1 = qword_1001230E0;
  *(v0 + 64) = qword_1001230E0;

  return _swift_task_switch(sub_10006A064, v1, 0);
}

uint64_t sub_10006A064()
{
  v1 = v0[7];
  v0[9] = sub_100013B80();
  v0[10] = v2;

  return _swift_task_switch(sub_10006A0D4, v1, 0);
}

uint64_t sub_10006A0D4()
{
  v13 = v0;
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v1 = sub_1000E1F08();
  sub_1000049D0(v1, qword_100123128);

  v2 = sub_1000E1EE8();
  v3 = sub_1000E2698();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[10];
  if (v4)
  {
    v6 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    v9 = sub_100029C70(v6, v5, &v12);

    *(v7 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "ConduitDevice disappeared: %s", v7, 0xCu);
    sub_10000E9DC(v8);
  }

  else
  {
  }

  v10 = v0[8];

  return _swift_task_switch(sub_10006A280, v10, 0);
}

uint64_t sub_10006A280()
{
  v1 = *(v0 + 56);
  *(v0 + 88) = sub_100012CD8();

  return _swift_task_switch(sub_10006A2F0, v1, 0);
}

uint64_t sub_10006A2F0()
{
  v1 = v0[11];
  swift_beginAccess();
  v2 = sub_1000A42A0(v1, &qword_10011EAB0, TUNearbyDeviceHandle_ptr, sub_1000D408C, sub_1000D30D0);
  swift_endAccess();

  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = v0[11];
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    v5 = v3;
    sub_10001629C(sub_1000AA21C, v4);

    swift_unknownObjectRelease();
  }

  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_10006A46C;
  v7 = v0[5];

  return sub_10006E894(v7);
}

uint64_t sub_10006A46C()
{
  v1 = *(*v0 + 56);

  return _swift_task_switch(sub_10006A57C, v1, 0);
}

uint64_t sub_10006A57C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006A5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  v7 = sub_1000E0D68();
  v6[9] = v7;
  v8 = *(v7 - 8);
  v6[10] = v8;
  v6[11] = *(v8 + 64);
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v9 = *(sub_10000ADE4(&unk_10011FA80, &qword_1000F2660) - 8);
  v6[14] = v9;
  v6[15] = *(v9 + 64);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v10 = qword_1001230F0;
  v6[18] = qword_1001230F0;

  return _swift_task_switch(sub_10006A764, v10, 0);
}

uint64_t sub_10006A764()
{
  *(v0 + 152) = *(*(v0 + 48) + OBJC_IVAR___CSDNeighborhoodActivityConduit_deviceManager);
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v1 = qword_1001230E0;

  return _swift_task_switch(sub_10006A80C, v1, 0);
}

uint64_t sub_10006A80C()
{
  v1 = *(v0 + 144);
  sub_100044D58(*(v0 + 56));
  *(v0 + 160) = v2;

  return _swift_task_switch(sub_10006A87C, v1, 0);
}

uint64_t sub_10006A87C()
{
  if (v0[20])
  {
    v43 = v0[20];
    v1 = v0[17];
    v2 = sub_1000E0FE8();
    (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
    v0[21] = sub_1000D605C(2);
    v3 = swift_allocObject();
    v0[22] = v3;
    v42 = v3;
    *(v3 + 16) = 0;
    if (qword_10011DCA8 != -1)
    {
      swift_once();
    }

    v4 = v0[16];
    v5 = v0[17];
    v6 = v0[14];
    v7 = v0[15];
    v8 = v0[13];
    v37 = v8;
    v38 = v4;
    v10 = v0[10];
    v9 = v0[11];
    v12 = v0[8];
    v11 = v0[9];
    v39 = v0[6];
    v13 = sub_1000E2DA8();
    v40 = v14;
    v41 = v13;
    v15 = *(v10 + 16);
    v0[23] = v15;
    v0[24] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v15(v8, v12, v11);
    sub_10000CB64(v5, v4, &unk_10011FA80, &qword_1000F2660);
    v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
    v19 = (*(v6 + 80) + v18 + 9) & ~*(v6 + 80);
    v20 = (v19 + v7) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    v0[25] = v21;
    (*(v10 + 32))(v21 + v16, v37, v11);
    *(v21 + v17) = v43;
    v22 = v21 + v18;
    *v22 = v39;
    *(v22 + 8) = 0;
    sub_1000AD400(v38, v21 + v19, &unk_10011FA80, &qword_1000F2660);
    *(v21 + v19 + v7) = 0;
    *(v21 + v20 + 8) = 2;
    *(v21 + ((v20 + 23) & 0xFFFFFFFFFFFFFFF8)) = v42;

    v23 = v39;

    v24 = swift_task_alloc();
    v0[26] = v24;
    *v24 = v0;
    v24[1] = sub_10006ACF8;
    v25 = v0[5];

    return sub_10005D2F4(v25, v41, v40, &unk_1000F2A08, v21);
  }

  else
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v27 = v0[7];
    v28 = sub_1000E1F08();
    sub_1000049D0(v28, qword_100123128);
    v29 = v27;
    v30 = sub_1000E1EE8();
    v31 = sub_1000E2698();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = v0[7];
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      *(v33 + 4) = v32;
      *v34 = v32;
      v35 = v32;
      _os_log_impl(&_mh_execute_header, v30, v31, "[Handoff][Push] Conduit device not found for %@.", v33, 0xCu);
      sub_1000033C8(v34, &unk_10011EAC0, &unk_1000F0E60);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();

    v36 = v0[1];

    return v36();
  }
}

uint64_t sub_10006ACF8()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = sub_10006AEF4;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_10006AE20;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10006AE20()
{
  v1 = v0[21];
  v2 = v0[17];

  sub_1000D6278(2, v1);

  sub_1000033C8(v2, &unk_10011FA80, &qword_1000F2660);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10006AEF4()
{
  v35 = v0;

  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = v0[12];
  v4 = v0[8];
  v3 = v0[9];
  v5 = sub_1000E1F08();
  sub_1000049D0(v5, qword_100123128);
  v1(v2, v4, v3);

  swift_errorRetain();
  v6 = sub_1000E1EE8();
  v7 = sub_1000E2698();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[20];
    v9 = v0[12];
    v11 = v0[9];
    v10 = v0[10];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v34[0] = swift_slowAlloc();
    *v12 = 136315650;
    *(v12 + 4) = sub_100029C70(*(v8 + 16), *(v8 + 24), v34);
    *(v12 + 12) = 2080;
    sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = sub_1000E2C18();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_100029C70(v14, v16, v34);

    *(v12 + 14) = v17;
    *(v12 + 22) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v18;
    *v13 = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "[Handoff][Push] Failed to add %s to %s due to %@.", v12, 0x20u);
    sub_1000033C8(v13, &unk_10011EAC0, &unk_1000F0E60);

    swift_arrayDestroy();
  }

  else
  {
    v19 = v0[12];
    v20 = v0[9];
    v21 = v0[10];

    (*(v21 + 8))(v19, v20);
  }

  v22 = v0[22];
  swift_beginAccess();
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = v0[6];
    v25 = OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager;
    v26 = *(v24 + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager);
    v27 = v23;
    isa = sub_1000E0D18().super.isa;
    v29 = [v26 activeConversationWithUUID:isa];

    if (v29)
    {
      [*(v24 + v25) kickMember:v27 conversation:v29];

      v27 = v29;
    }
  }

  v30 = v0[21];
  v31 = v0[17];
  swift_willThrow();

  sub_1000D6278(2, v30);

  sub_1000033C8(v31, &unk_10011FA80, &qword_1000F2660);

  v32 = v0[1];

  return v32();
}

uint64_t sub_10006B2FC(uint64_t a1)
{
  v2 = v1;
  v67 = a1;
  v3 = sub_1000E13E8();
  v65 = *(v3 - 8);
  v66 = v3;
  __chkstk_darwin(v3);
  v63 = v4;
  v64 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v5 - 8);
  v7 = &v57 - v6;
  v8 = sub_10000ADE4(&qword_10011F888, &qword_1000F22B0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v57 - v12;
  v14 = type metadata accessor for HandoffInfo(0);
  v15 = *(v14 - 8);
  v61 = v14;
  v62 = v15;
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v68 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v57 - v19;
  __chkstk_darwin(v18);
  v69 = &v57 - v21;
  v22 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  swift_beginAccess();
  sub_10000CB64(v2 + v22, v13, &qword_10011F888, &qword_1000F22B0);
  v23 = type metadata accessor for HandoffState(0);
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v13, 1, v23) == 1)
  {
    sub_1000033C8(v13, &qword_10011F888, &qword_1000F22B0);
LABEL_9:
    v34 = sub_1000E2538();
    (*(*(v34 - 8) + 56))(v7, 1, 1, v34);
    if (qword_10011DC30 != -1)
    {
      swift_once();
    }

    v36 = qword_1001230F0;
    v37 = sub_1000A75DC(&qword_100120020, v35, type metadata accessor for ConduitActor, &unk_1000F2250);
    v38 = swift_allocObject();
    *(v38 + 16) = v36;
    *(v38 + 24) = v37;

    return sub_100022960(0, 0, v7, &unk_1000F23F0, v38);
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1000AD5EC(v13, type metadata accessor for HandoffState);
    goto LABEL_9;
  }

  v60 = v7;
  v25 = v69;
  sub_1000A877C(v13, v69, type metadata accessor for HandoffInfo);
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v26 = sub_1000E1F08();
  sub_1000049D0(v26, qword_100123128);
  sub_1000A87E4(v25, v20, type metadata accessor for HandoffInfo);
  v27 = sub_1000E1EE8();
  v28 = sub_1000E2698();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v58 = v29;
    v59 = swift_slowAlloc();
    v70[0] = v59;
    *v29 = 136315138;
    v57 = sub_1000DDC88();
    v31 = v30;
    sub_1000AD5EC(v20, type metadata accessor for HandoffInfo);
    v32 = sub_100029C70(v57, v31, v70);

    v33 = v58;
    *(v58 + 1) = v32;
    _os_log_impl(&_mh_execute_header, v27, v28, "Handoff ending for %s.", v33, 0xCu);
    sub_10000E9DC(v59);
  }

  else
  {

    sub_1000AD5EC(v20, type metadata accessor for HandoffInfo);
  }

  (*(v24 + 56))(v11, 1, 1, v23);
  swift_beginAccess();
  sub_1000A884C(v11, v2 + v22);
  swift_endAccess();
  sub_100061F64();
  sub_1000033C8(v11, &qword_10011F888, &qword_1000F22B0);
  v40 = sub_1000E2538();
  (*(*(v40 - 8) + 56))(v60, 1, 1, v40);
  v41 = v69;
  sub_1000A87E4(v69, v68, type metadata accessor for HandoffInfo);
  v42 = v64;
  v43 = v65;
  v44 = v66;
  (*(v65 + 16))(v64, v67, v66);
  v45 = qword_10011DC30;
  v47 = v2;
  if (v45 != -1)
  {
    swift_once();
  }

  v48 = qword_1001230F0;
  v49 = sub_1000A75DC(&qword_100120020, v46, type metadata accessor for ConduitActor, &unk_1000F2250);
  v50 = (*(v62 + 80) + 40) & ~*(v62 + 80);
  v51 = (v16 + *(v43 + 80) + v50) & ~*(v43 + 80);
  v52 = swift_allocObject();
  *(v52 + 2) = v48;
  *(v52 + 3) = v49;
  *(v52 + 4) = v47;
  sub_1000A877C(v68, &v52[v50], type metadata accessor for HandoffInfo);
  (*(v43 + 32))(&v52[v51], v42, v44);

  v53 = sub_100022960(0, 0, v60, &unk_1000F2400, v52);
  if (*v41 == 1)
  {
    (*(v43 + 104))(v42, enum case for NCProtoDisconnectRequest.DisconnectReason.pullingBackToPhone(_:), v44);
    sub_1000A75DC(&unk_10011F960, 255, &type metadata accessor for NCProtoDisconnectRequest.DisconnectReason, &protocol conformance descriptor for NCProtoDisconnectRequest.DisconnectReason);
    v54 = sub_1000E2318();
    (*(v43 + 8))(v42, v44);
    if ((v54 & 1) == 0)
    {
      v55 = *&v47[OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager];
      isa = sub_1000E0D18().super.isa;
      [v55 leaveConversationWithUUID:isa];
    }
  }

  sub_100011E2C();
  sub_1000AD5EC(v41, type metadata accessor for HandoffInfo);
  return v53;
}

uint64_t sub_10006BBF4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 104) = a3;
  *(v4 + 16) = a1;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230F0;
  *(v4 + 40) = qword_1001230F0;

  return _swift_task_switch(sub_10006BC98, v5, 0);
}

uint64_t sub_10006BC98()
{
  v0[6] = *(v0[4] + OBJC_IVAR___CSDNeighborhoodActivityConduit_suggestionController);
  if (qword_10011DC08 != -1)
  {
    swift_once();
  }

  v1 = qword_1001230D0;
  v0[7] = qword_1001230D0;

  return _swift_task_switch(sub_10006BD44, v1, 0);
}

uint64_t sub_10006BD44()
{
  v1 = v0[6] + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionState;
  v2 = *v1;
  v0[8] = *v1;
  v3 = *(v1 + 8);
  if (v2)
  {
    v4 = v2;
  }

  v5 = v0[5];
  sub_10001C3F0(v2, v3);
  sub_10001C430(v2, v3);

  return _swift_task_switch(sub_10006BDF8, v5, 0);
}

uint64_t sub_10006BDF8()
{
  v1 = v0[7];
  v2 = v0[3];
  v0[9] = *(v2 + 16);
  v0[10] = *(v2 + 24);
  return _swift_task_switch(sub_10006BE28, v1, 0);
}

uint64_t sub_10006BE28()
{
  v1 = *(v0 + 40);
  sub_100030E7C(*(v0 + 104), *(v0 + 72), *(v0 + 80));

  return _swift_task_switch(sub_10006BE98, v1, 0);
}

uint64_t sub_10006BE98()
{
  v1 = v0[8];
  if (v1 && ![v1 type])
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_10006BF60;
  v4 = v0[3];
  v5 = v0[2];

  return sub_10006C18C(v5, v4, v2, 2, 2);
}

uint64_t sub_10006BF60()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_10006C128;
  }

  else
  {
    v4 = sub_10006C08C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10006C08C()
{
  v1 = *(v0 + 64);
  if (*(v0 + 104))
  {
    if (!v1)
    {
      goto LABEL_6;
    }

    v2 = [*(v0 + 64) type] == 0;
  }

  else
  {
    v2 = 2;
  }

  sub_10001D85C(v2);

LABEL_6:
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10006C128()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006C18C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *(v6 + 329) = a5;
  *(v6 + 328) = a4;
  *(v6 + 128) = a3;
  *(v6 + 136) = v5;
  *(v6 + 112) = a1;
  *(v6 + 120) = a2;
  *(v6 + 144) = type metadata accessor for HandoffInfo(0);
  *(v6 + 152) = swift_task_alloc();
  *(v6 + 160) = swift_task_alloc();
  v7 = sub_1000E0D68();
  *(v6 + 168) = v7;
  v8 = *(v7 - 8);
  *(v6 + 176) = v8;
  *(v6 + 184) = *(v8 + 64);
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_task_alloc();
  sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  *(v6 + 208) = swift_task_alloc();
  sub_10000ADE4(&qword_10011F888, &qword_1000F22B0);
  *(v6 + 216) = swift_task_alloc();
  *(v6 + 224) = swift_task_alloc();
  v9 = type metadata accessor for HandoffState(0);
  *(v6 + 232) = v9;
  *(v6 + 240) = *(v9 - 8);
  *(v6 + 248) = swift_task_alloc();
  *(v6 + 256) = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v10 = qword_1001230F0;
  *(v6 + 264) = qword_1001230F0;

  return _swift_task_switch(sub_10006C3C4, v10, 0);
}

uint64_t sub_10006C3C4()
{
  v75 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  v4 = *(v0 + 136);
  v5 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  *(v0 + 272) = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  swift_beginAccess();
  sub_10000CB64(v4 + v5, v3, &qword_10011F888, &qword_1000F22B0);
  v6 = (*(v2 + 48))(v3, 1, v1);
  v7 = *(v0 + 224);
  if (v6 == 1)
  {
    v72 = v5;
    v73 = v4;
    v8 = *(v0 + 264);
    v10 = *(v0 + 200);
    v9 = *(v0 + 208);
    v12 = *(v0 + 176);
    v11 = *(v0 + 184);
    v13 = *(v0 + 168);
    v69 = *(v0 + 328);
    v65 = *(v0 + 136);
    v66 = v9;
    v14 = *(v0 + 112);
    v67 = *(v0 + 120);
    v68 = *(v0 + 128);
    sub_1000033C8(v7, &qword_10011F888, &qword_1000F22B0);
    v15 = sub_1000E2538();
    (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
    v71 = *(v12 + 16);
    v71(v10, v14, v13);
    v17 = sub_1000A75DC(&qword_100120020, v16, type metadata accessor for ConduitActor, &unk_1000F2250);
    v18 = (*(v12 + 80) + 40) & ~*(v12 + 80);
    v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = swift_allocObject();
    *(v20 + 2) = v8;
    *(v20 + 3) = v17;
    *(v20 + 4) = v65;
    (*(v12 + 32))(&v20[v18], v10, v13);
    v21 = &v20[v19];
    *v21 = v67;
    *(v21 + 4) = v69;
    *&v20[(v19 + 17) & 0xFFFFFFFFFFFFFFF8] = v68;
    v22 = v65;

    v23 = sub_100022678(0, 0, v66, &unk_1000F2A38, v20);
    *(v0 + 280) = v23;
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v24 = *(v0 + 192);
    v25 = *(v0 + 168);
    v26 = *(v0 + 112);
    v27 = sub_1000E1F08();
    *(v0 + 288) = sub_1000049D0(v27, qword_100123128);
    v71(v24, v26, v25);

    v28 = sub_1000E1EE8();
    v29 = sub_1000E2698();

    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 192);
    v33 = *(v0 + 168);
    v32 = *(v0 + 176);
    if (v30)
    {
      v70 = *(v0 + 120);
      v34 = swift_slowAlloc();
      v74[0] = swift_slowAlloc();
      *v34 = 136315394;
      sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v35 = v23;
      v36 = sub_1000E2C18();
      v38 = v37;
      (*(v32 + 8))(v31, v33);
      v39 = v36;
      v23 = v35;
      v40 = sub_100029C70(v39, v38, v74);

      *(v34 + 4) = v40;
      *(v34 + 12) = 2080;
      *(v34 + 14) = sub_100029C70(*(v70 + 16), *(v70 + 24), v74);
      _os_log_impl(&_mh_execute_header, v28, v29, "[HandoffConversation] Starting handoff of conversation %s to %s.", v34, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v32 + 8))(v31, v33);
    }

    v55 = *(v0 + 232);
    v54 = *(v0 + 240);
    v56 = *(v0 + 216);
    *v56 = v23;
    swift_storeEnumTagMultiPayload();
    v57 = *(v54 + 56);
    *(v0 + 296) = v57;
    *(v0 + 304) = (v54 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v57(v56, 0, 1, v55);
    swift_beginAccess();

    sub_1000A884C(v56, v73 + v72);
    swift_endAccess();
    sub_100061F64();
    sub_1000033C8(v56, &qword_10011F888, &qword_1000F22B0);
    v58 = swift_task_alloc();
    *(v0 + 312) = v58;
    v59 = sub_10000ADE4(&unk_10011F8C0, &qword_1000F0C40);
    *v58 = v0;
    v58[1] = sub_10006CBDC;
    v60 = *(v0 + 160);
    v61 = *(v0 + 144);

    return Task.value.getter(v60, v23, v61, v59, &protocol self-conformance witness table for Error);
  }

  else
  {
    sub_1000A877C(v7, *(v0 + 256), type metadata accessor for HandoffState);
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v41 = *(v0 + 248);
    v42 = *(v0 + 256);
    v43 = sub_1000E1F08();
    sub_1000049D0(v43, qword_100123128);
    sub_1000A87E4(v42, v41, type metadata accessor for HandoffState);
    v44 = sub_1000E1EE8();
    v45 = sub_1000E2678();
    v46 = os_log_type_enabled(v44, v45);
    v47 = *(v0 + 248);
    if (v46)
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v74[0] = v49;
      *v48 = 136315138;
      v50 = sub_1000DDE18();
      v52 = v51;
      sub_1000AD5EC(v47, type metadata accessor for HandoffState);
      v53 = sub_100029C70(v50, v52, v74);

      *(v48 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v44, v45, "[HandoffConversation] Rejecting request because we already have a session active with a different device %s", v48, 0xCu);
      sub_10000E9DC(v49);
    }

    else
    {

      sub_1000AD5EC(v47, type metadata accessor for HandoffState);
    }

    v62 = *(v0 + 256);
    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    sub_1000AD5EC(v62, type metadata accessor for HandoffState);

    v63 = *(v0 + 8);

    return v63();
  }
}

uint64_t sub_10006CBDC()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 264);
  if (v0)
  {
    v4 = sub_10006CFD4;
  }

  else
  {
    v4 = sub_10006CD08;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10006CD08()
{
  v20 = v0;
  sub_1000A87E4(v0[20], v0[19], type metadata accessor for HandoffInfo);
  v1 = sub_1000E1EE8();
  v2 = sub_1000E2698();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[19];
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    v7 = sub_1000DDC88();
    v9 = v8;
    sub_1000AD5EC(v4, type metadata accessor for HandoffInfo);
    v10 = sub_100029C70(v7, v9, &v19);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "[HandoffConversation] Successfully handed off conversation %s.", v5, 0xCu);
    sub_10000E9DC(v6);
  }

  else
  {

    sub_1000AD5EC(v4, type metadata accessor for HandoffInfo);
  }

  v11 = v0[37];
  v12 = v0[34];
  v13 = v0[29];
  v14 = v0[27];
  v15 = v0[20];
  v16 = v0[17];
  sub_1000A87E4(v15, v14, type metadata accessor for HandoffInfo);
  swift_storeEnumTagMultiPayload();
  v11(v14, 0, 1, v13);
  swift_beginAccess();
  sub_1000A884C(v14, v16 + v12);
  swift_endAccess();
  sub_100061F64();

  sub_1000033C8(v14, &qword_10011F888, &qword_1000F22B0);
  sub_1000AD5EC(v15, type metadata accessor for HandoffInfo);

  v17 = v0[1];

  return v17();
}

uint64_t sub_10006CFD4()
{
  swift_errorRetain();
  v1 = sub_1000E1EE8();
  v2 = sub_1000E2678();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "[HandoffConversation] Failed to hand off due to %@.", v3, 0xCu);
    sub_1000033C8(v4, &unk_10011EAC0, &unk_1000F0E60);
  }

  v6 = v0[37];
  v7 = v0[34];
  v8 = v0[29];
  v9 = v0[27];
  v10 = v0[17];

  v6(v9, 1, 1, v8);
  swift_beginAccess();
  sub_1000A884C(v9, v10 + v7);
  swift_endAccess();
  sub_100061F64();
  sub_1000033C8(v9, &qword_10011F888, &qword_1000F22B0);
  swift_willThrow();

  v11 = v0[1];

  return v11();
}

uint64_t sub_10006D204(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 280) = a6;
  *(v7 + 288) = a7;
  *(v7 + 272) = a5;
  *(v7 + 312) = a4;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v8 = qword_1001230F0;
  *(v7 + 296) = qword_1001230F0;

  return _swift_task_switch(sub_10006D2A8, v8, 0);
}

uint64_t sub_10006D2A8()
{
  if (*(v0 + 312) == 1)
  {
    if (*(v0 + 280))
    {
      v1 = *(*(v0 + 288) + OBJC_IVAR___CSDNeighborhoodActivityConduit_continuitySessionServer);
      *(v0 + 304) = v1;

      return _swift_task_switch(sub_10006D440, v1, 0);
    }

    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v2 = sub_1000E1F08();
    sub_1000049D0(v2, qword_100123128);
    v3 = sub_1000E1EE8();
    v4 = sub_1000E2698();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Continuity camera connected. End any ongoing calls on iOS device.", v5, 2u);
    }

    sub_10006D8A0(0x100000000);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10006D440()
{
  v1 = *(v0 + 304);
  v2 = *(v1 + 136);
  v3 = *(v1 + 168);
  v4 = *(v1 + 120);
  *(v0 + 48) = *(v1 + 152);
  *(v0 + 64) = v3;
  *(v0 + 16) = v4;
  *(v0 + 32) = v2;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  if (v6)
  {
    v8 = *(v0 + 272);
    v7 = *(v0 + 280);
    *(v0 + 80) = v5;
    *(v0 + 88) = v6;
    v9 = *(v1 + 168);
    v10 = *(v1 + 152);
    *(v0 + 96) = *(v1 + 136);
    *(v0 + 112) = v10;
    *(v0 + 128) = v9;
    sub_10000CB64(v0 + 16, v0 + 144, &unk_10011FA58, &unk_1000F25E0);

    sub_1000033C8(v0 + 80, &unk_10011FA58, &unk_1000F25E0);
    if (v5 == v8 && v7 == v6)
    {

LABEL_7:
      v14 = *(v0 + 296);
      v15 = *(v1 + 136);
      v16 = *(v1 + 168);
      v17 = *(v1 + 120);
      *(v0 + 176) = *(v1 + 152);
      *(v0 + 192) = v16;
      *(v0 + 144) = v17;
      *(v0 + 160) = v15;
      sub_10000CB64(v0 + 144, v0 + 208, &unk_10011FA58, &unk_1000F25E0);
      v18 = sub_10006D614;
      v19 = v14;
      goto LABEL_9;
    }

    v13 = sub_1000E2C68();

    if (v13)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *(v0 + 80) = v5;
    *(v0 + 88) = 0;
    v11 = *(v1 + 136);
    v12 = *(v1 + 168);
    *(v0 + 112) = *(v1 + 152);
    *(v0 + 128) = v12;
    *(v0 + 96) = v11;
    sub_10000CB64(v0 + 16, v0 + 144, &unk_10011FA58, &unk_1000F25E0);
    sub_1000033C8(v0 + 80, &unk_10011FA58, &unk_1000F25E0);
  }

  v19 = *(v0 + 296);
  v18 = sub_10006D76C;
LABEL_9:

  return _swift_task_switch(v18, v19, 0);
}

uint64_t sub_10006D614()
{
  if (*(v0 + 152))
  {
    sub_1000033C8(v0 + 144, &unk_10011FA58, &unk_1000F25E0);
  }

  else
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v1 = sub_1000E1F08();
    sub_1000049D0(v1, qword_100123128);
    v2 = sub_1000E1EE8();
    v3 = sub_1000E2698();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Continuity camera connected. End any ongoing calls on iOS device.", v4, 2u);
    }

    sub_10006D8A0(0x100000000);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10006D76C()
{
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v1 = sub_1000E1F08();
  sub_1000049D0(v1, qword_100123128);
  v2 = sub_1000E1EE8();
  v3 = sub_1000E2698();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Continuity camera connected. End any ongoing calls on iOS device.", v4, 2u);
  }

  sub_10006D8A0(0x100000000);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10006D8A0(uint64_t a1)
{
  v3 = sub_1000E2118();
  v16 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000E2148();
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [*&v1[OBJC_IVAR___CSDNeighborhoodActivityConduit_callCenter] queue];
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  *(v10 + 28) = BYTE4(a1) & 1;
  aBlock[4] = sub_1000AA554;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000026A0;
  aBlock[3] = &unk_100114FF8;
  v11 = _Block_copy(aBlock);
  v12 = v1;
  sub_1000E2138();
  v17 = _swiftEmptyArrayStorage;
  sub_1000A75DC(&qword_10011EA20, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
  sub_100002C64(&qword_10011EA30, &unk_10011ED10, &unk_1000F0A60, &protocol conformance descriptor for [A]);
  sub_1000E28C8();
  sub_1000E2738();
  _Block_release(v11);

  (*(v16 + 8))(v5, v3);
  (*(v6 + 8))(v8, v15);
}

uint64_t sub_10006DBA0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v3 = qword_1001230F0;

  return _swift_task_switch(sub_10006DC38, v3, 0);
}

uint64_t sub_10006DC38()
{
  if ([*(v0[3] + OBJC_IVAR___CSDNeighborhoodActivityConduit_featureFlags) lagunaEnabled])
  {
    v1 = v0[2];
    v2 = v1 & 0xFFFFFFFFFFFFFF8;
    if (v1 >> 62)
    {
LABEL_33:
      v3 = sub_1000E2B68();
      v4 = v0[2];
    }

    else
    {
      v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v4 = v0[2];
    }

    v5 = _swiftEmptyArrayStorage;
    v0[4] = _swiftEmptyArrayStorage;
    if (v3)
    {
      v6 = 0;
      v7 = v1 & 0xC000000000000001;
      v8 = v4 + 32;
      v28 = v0;
      v30 = v4 + 32;
      while (1)
      {
        v29 = v5;
        v9 = v6;
        while (1)
        {
          if (v7)
          {
            v10 = sub_1000E2A98();
          }

          else
          {
            if (v9 >= *(v2 + 16))
            {
              goto LABEL_32;
            }

            v10 = *&v8[8 * v9];
          }

          v11 = v10;
          v6 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

          v1 = [v10 capabilities];
          v12 = [v1 isLagunaCapable];

          if (v12)
          {
            break;
          }

LABEL_8:

          ++v9;
          if (v6 == v3)
          {
            v0 = v28;
            v5 = v29;
            goto LABEL_28;
          }
        }

        v13 = [v11 knownIdentifiersByHandleType];
        v0 = NSNumber_ptr;
        sub_10000CAAC(0, &qword_10011DF80, NSNumber_ptr);
        sub_10000EA70(&qword_10011FA40, &qword_10011DF80, NSNumber_ptr, &protocol conformance descriptor for NSObject);
        v1 = sub_1000E22B8();

        v14 = [objc_allocWithZone(NSNumber) initWithInteger:2];
        v15 = v14;
        if (!*(v1 + 16))
        {
          break;
        }

        v16 = sub_10000B424(v14);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v18 = (*(v1 + 56) + 16 * v16);
        v19 = *v18;
        v20 = v18[1];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v29 = sub_1000D2030(0, *(v29 + 2) + 1, 1, v29);
        }

        v23 = *(v29 + 2);
        v22 = *(v29 + 3);
        v1 = v23 + 1;
        if (v23 >= v22 >> 1)
        {
          v29 = sub_1000D2030((v22 > 1), v23 + 1, 1, v29);
        }

        v8 = v30;
        *(v29 + 2) = v1;
        v24 = &v29[16 * v23];
        *(v24 + 4) = v19;
        *(v24 + 5) = v20;
        v5 = v29;
        v0 = v28;
        v28[4] = v29;
        if (v6 == v3)
        {
          goto LABEL_28;
        }
      }

      v8 = v30;
      goto LABEL_8;
    }

LABEL_28:
    v27 = swift_task_alloc();
    v0[5] = v27;
    *v27 = v0;
    v27[1] = sub_10006DFD0;

    return sub_100030378(v5);
  }

  else
  {
    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_10006DFD0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10006E0E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1000E0D68();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v6 = qword_1001230F0;
  v4[9] = qword_1001230F0;

  return _swift_task_switch(sub_10006E1DC, v6, 0);
}

uint64_t sub_10006E1DC()
{
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v0 = qword_1001230E0;

  return _swift_task_switch(sub_10006E270, v0, 0);
}

uint64_t sub_10006E270()
{
  v1 = *(v0 + 72);
  *(v0 + 80) = sub_100012CD8();

  return _swift_task_switch(sub_10006E2E0, v1, 0);
}

uint64_t sub_10006E2E0()
{
  v1 = *(v0 + 24);
  v2 = sub_10006EE20(*(v0 + 80), v1);
  v3 = *(v0 + 80);
  v4 = *(v0 + 32);
  if ((v2 & 1) == 0 || !v1)
  {
    if (sub_10006EE20(*(v0 + 80), *(v0 + 32)))
    {
      v7 = *(v0 + 32);
      if (v7)
      {
        if (([*(v0 + 32) isContinuitySession] & 1) == 0)
        {
LABEL_11:
          *(v0 + 88) = v7;
          v9 = *(v0 + 16);
          v10 = *(v9 + 16);
          v11 = *(v9 + 24);
          v12 = v7;
          v13 = swift_task_alloc();
          *(v0 + 96) = v13;
          *v13 = v0;
          v13[1] = sub_10006E53C;

          return sub_10006F004(v10, v11, v12);
        }
      }
    }

    goto LABEL_15;
  }

  v5 = *(v0 + 24);
  v6 = [v5 isContinuitySession];
  if ((sub_10006EE20(v3, v4) & 1) == 0 || (v7 = *(v0 + 32)) == 0)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_15:

    v15 = *(v0 + 8);

    return v15();
  }

  v8 = [*(v0 + 32) isContinuitySession];
  if (v6)
  {
    if (v8)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (!v8)
  {
    goto LABEL_15;
  }

LABEL_19:
  v16 = *(v0 + 16);
  v17 = *(v16 + 16);
  v18 = *(v16 + 24);
  v19 = [v5 UUID];
  sub_1000E0D38();

  v20 = swift_task_alloc();
  *(v0 + 104) = v20;
  *v20 = v0;
  v20[1] = sub_10006E6B8;
  v21 = *(v0 + 64);

  return sub_10006FE08(v17, v18, v21);
}

uint64_t sub_10006E53C()
{
  v1 = *(*v0 + 72);

  return _swift_task_switch(sub_10006E64C, v1, 0);
}

uint64_t sub_10006E64C()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10006E6B8()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_10006E824, v1, 0);
}

uint64_t sub_10006E824()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10006E894(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v2[4] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v3 = qword_1001230F0;
  v2[5] = qword_1001230F0;

  return _swift_task_switch(sub_10006E968, v3, 0);
}

uint64_t sub_10006E968()
{
  v19 = v0;
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v1 = sub_1000E1F08();
  sub_1000049D0(v1, qword_100123128);

  v2 = sub_1000E1EE8();
  v3 = sub_1000E2698();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100029C70(*(v4 + 16), *(v4 + 24), &v18);
    _os_log_impl(&_mh_execute_header, v2, v3, "Reset session state for %s", v5, 0xCu);
    sub_10000E9DC(v6);
  }

  v7 = v0[4];
  v8 = v0[5];
  v10 = v0[2];
  v9 = v0[3];
  sub_100065E6C(*(v10 + 16), *(v10 + 24));
  v11 = sub_1000E2538();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  v13 = sub_1000A75DC(&qword_100120020, v12, type metadata accessor for ConduitActor, &unk_1000F2250);
  v14 = swift_allocObject();
  v14[2] = v8;
  v14[3] = v13;
  v14[4] = v9;
  v14[5] = v10;

  v15 = v9;

  sub_100022960(0, 0, v7, &unk_1000F25A0, v14);

  v16 = v0[1];

  return v16();
}

uint64_t sub_10006EBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v6 = qword_1001230F0;

  return _swift_task_switch(sub_10006EC70, v6, 0);
}

uint64_t sub_10006EC70()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR___CSDNeighborhoodActivityConduit_continuitySessionServer);
  *(v0 + 32) = v1;
  return _swift_task_switch(sub_10006EC9C, v1, 0);
}

uint64_t sub_10006EC9C()
{
  v10 = v0;
  if (qword_10011DC40 != -1)
  {
    swift_once();
  }

  v1 = sub_1000E1F08();
  sub_1000049D0(v1, qword_100120060);

  v2 = sub_1000E1EE8();
  v3 = sub_1000E2698();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 24);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100029C70(*(v4 + 16), *(v4 + 24), &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "Reseting state for session with %s.", v5, 0xCu);
    sub_10000E9DC(v6);
  }

  sub_1000BE71C(*(*(v0 + 24) + 16), *(*(v0 + 24) + 24));
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10006EE20(void *a1, void *a2)
{
  if (a2)
  {
    v4 = qword_10011DC58;
    v5 = a2;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = objc_allocWithZone(NSUserDefaults);
    v7 = sub_1000E2328();
    v8 = [v6 initWithSuiteName:v7];

    if (!v8 || (v9 = sub_1000E2328(), v10 = [v8 BOOLForKey:v9], v9, v8, !v10) || objc_msgSend(a1, "deviceModel") != 3)
    {
      v11 = [v5 avMode];
      if (v11 == 2)
      {
        v13 = 1;
        goto LABEL_16;
      }

      if (v11 == 1)
      {
        if ([*(v2 + OBJC_IVAR___CSDNeighborhoodActivityConduit_featureFlags) lagunaAudioCallsEnabled])
        {
          v14 = [a1 capabilities];
          v13 = [v14 isAudioCallCapable];

          goto LABEL_16;
        }
      }

      else if (!v11)
      {
        v12 = [a1 capabilities];
        v13 = [v12 isAVLessCapable];

        v5 = v12;
LABEL_16:

        return v13;
      }
    }

    v13 = 0;
    goto LABEL_16;
  }

  return 0;
}

uint64_t sub_10006F004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a3;
  v4[19] = v3;
  v4[16] = a1;
  v4[17] = a2;
  v5 = sub_1000E1798();
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();
  v6 = sub_1000E0D68();
  v4[23] = v6;
  v4[24] = *(v6 - 8);
  v4[25] = swift_task_alloc();
  sub_10000ADE4(&qword_10011FA08, &unk_1000F2508);
  v4[26] = swift_task_alloc();
  v7 = sub_1000E1B18();
  v4[27] = v7;
  v4[28] = *(v7 - 8);
  v4[29] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v8 = qword_1001230F0;
  v4[30] = qword_1001230F0;

  return _swift_task_switch(sub_10006F1F0, v8, 0);
}

uint64_t sub_10006F1F0()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);
  v7 = [*(v0 + 144) UUID];
  sub_1000E0D38();

  sub_10006F82C(v3);
  (*(v6 + 8))(v4, v5);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000033C8(*(v0 + 208), &qword_10011FA08, &unk_1000F2508);
LABEL_7:

    v15 = *(v0 + 8);

    return v15();
  }

  (*(*(v0 + 224) + 32))(*(v0 + 232), *(v0 + 208), *(v0 + 216));
  sub_100005524((v0 + 72));
  v8 = *(v0 + 80);
  if (!v8)
  {
    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
    goto LABEL_7;
  }

  v9 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 72);
  *(v0 + 24) = v8;
  v10 = *(v0 + 104);
  *(v0 + 32) = *(v0 + 88);
  *(v0 + 48) = v10;
  *(v0 + 64) = *(v0 + 120);
  v11 = [v9 isContinuitySession];
  v12 = *(v0 + 232);
  if (v11)
  {
    v13 = *(v0 + 216);
    v14 = *(v0 + 224);
    sub_1000033C8(v0 + 72, &qword_10011ECC0, &unk_1000F1120);
    (*(v14 + 8))(v12, v13);
    goto LABEL_7;
  }

  v17 = *(v0 + 136);
  v18 = *(v0 + 144);
  v19 = swift_task_alloc();
  v19[2] = v18;
  v19[3] = v0 + 16;
  v19[4] = v12;
  sub_1000A75DC(&unk_10011FA10, 255, &type metadata accessor for NCProtoStartedSessionEvent, &protocol conformance descriptor for NCProtoStartedSessionEvent);
  sub_1000E0E38();

  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  *(v0 + 248) = qword_1001230E0;
  v20 = swift_task_alloc();
  *(v0 + 256) = v20;
  *v20 = v0;
  v20[1] = sub_10006F53C;
  v21 = *(v0 + 176);
  v22 = *(v0 + 128);

  return sub_10002793C(2, v21, v22, v17, 0);
}

uint64_t sub_10006F53C()
{
  v2 = *v1;

  v3 = *(v2 + 248);
  if (v0)
  {

    v4 = sub_10006F7B0;
  }

  else
  {
    v4 = sub_10006F674;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10006F674()
{
  v1 = v0[30];
  (*(v0[21] + 8))(v0[22], v0[20]);

  return _swift_task_switch(sub_10006F6F0, v1, 0);
}

uint64_t sub_10006F6F0()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  sub_1000033C8((v0 + 9), &qword_10011ECC0, &unk_1000F1120);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10006F7B0()
{
  v1 = v0[30];
  (*(v0[21] + 8))(v0[22], v0[20]);

  return _swift_task_switch(sub_1000AE218, v1, 0);
}

uint64_t sub_10006F82C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager);
  isa = sub_1000E0D18().super.isa;
  v5 = [v3 activeConversationWithUUID:isa];

  if (v5)
  {
    v6 = [v5 localMember];
    if (v6)
    {
      v7 = v6;
      v8 = [v5 avcSessionIdentifier];
      if (v8)
      {
        v9 = v8;
        sub_1000E2338();

        v10 = sub_1000E1B18();
        __chkstk_darwin(v10);
        sub_1000A75DC(&qword_10011FA20, 255, &type metadata accessor for NCProtoMemberAssociationPrimaryInfo, &protocol conformance descriptor for NCProtoMemberAssociationPrimaryInfo);
        sub_1000E0E38();

        return (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
      }
    }

    else
    {
      v7 = v5;
    }
  }

  v12 = sub_1000E1B18();
  v13 = *(*(v12 - 8) + 56);

  return v13(a1, 1, 1, v12);
}

uint64_t sub_10006FA7C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v27 = a4;
  v24 = a2;
  v5 = sub_1000E15C8();
  v28 = *(v5 - 8);
  v29 = v5;
  __chkstk_darwin(v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1000E1B18();
  v8 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000E0D68();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a2 UUID];
  sub_1000E0D38();

  sub_1000E0D08();
  (*(v12 + 8))(v14, v11);
  sub_1000E1738();
  sub_100005F20();
  sub_1000E1748();
  (*(v8 + 16))(v10, v27, v25);
  sub_1000E1778();
  v16 = [v24 resolvedAudioVideoMode];
  v17 = &enum case for NCProtoConversationAVMode.audio(_:);
  v18 = &enum case for NCProtoConversationAVMode.none(_:);
  if (v16)
  {
    v18 = &enum case for NCProtoConversationAVMode.video(_:);
  }

  if (v16 != 1)
  {
    v17 = v18;
  }

  (*(v28 + 104))(v7, *v17, v29);
  sub_1000E1788();
  sub_1000E1768();
  if (qword_10011DC58 != -1)
  {
    swift_once();
  }

  v19 = objc_allocWithZone(NSUserDefaults);
  v20 = sub_1000E2328();
  v21 = [v19 initWithSuiteName:v20];

  if (v21)
  {
    v22 = sub_1000E2328();
    [v21 BOOLForKey:v22];
  }

  return sub_1000E1758();
}

uint64_t sub_10006FE08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1000E1448();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v6 = qword_1001230F0;
  v4[9] = qword_1001230F0;

  return _swift_task_switch(sub_10006FF04, v6, 0);
}

uint64_t sub_10006FF04()
{
  v1 = v0[3];
  v2 = v0[4];
  *(swift_task_alloc() + 16) = v2;
  sub_1000A75DC(&qword_10011EDC0, 255, &type metadata accessor for NCProtoEndedSessionEvent, &protocol conformance descriptor for NCProtoEndedSessionEvent);
  sub_1000E0E38();

  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v0[10] = qword_1001230E0;
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_100070094;
  v4 = v0[8];
  v5 = v0[2];

  return sub_100027CD0(3, v4, v5, v1, 0);
}

uint64_t sub_100070094()
{
  v2 = *v1;

  v3 = *(v2 + 80);
  if (v0)
  {

    v4 = sub_100070244;
  }

  else
  {
    v4 = sub_1000701CC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000701CC()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100070244()
{
  v1 = v0[9];
  (*(v0[7] + 8))(v0[8], v0[6]);

  return _swift_task_switch(sub_1000702BC, v1, 0);
}

uint64_t sub_1000702BC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10007031C(void *a1, void *a2, uint64_t a3)
{
  v5 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_1000E2538();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    v11 = qword_10011DC30;
    v12 = v9;
    v13 = a1;
    v14 = a2;
    if (v11 != -1)
    {
      swift_once();
    }

    v16 = qword_1001230F0;
    v17 = sub_1000A75DC(&qword_100120020, v15, type metadata accessor for ConduitActor, &unk_1000F2250);
    v18 = swift_allocObject();
    v18[2] = v16;
    v18[3] = v17;
    v18[4] = v12;
    v18[5] = a1;
    v18[6] = a2;

    sub_100022960(0, 0, v7, &unk_1000F24F0, v18);
  }
}

uint64_t sub_1000704F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = sub_1000E0D68();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v8 = qword_1001230F0;
  v6[11] = qword_1001230F0;

  return _swift_task_switch(sub_1000705EC, v8, 0);
}

uint64_t sub_1000705EC()
{
  v0[12] = *(v0[5] + OBJC_IVAR___CSDNeighborhoodActivityConduit_deviceManager);
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v1 = qword_1001230E0;
  v0[13] = qword_1001230E0;

  return _swift_task_switch(sub_100070698, v1, 0);
}

uint64_t sub_100070698()
{
  v10 = v0;
  v1 = v0[12];
  swift_beginAccess();
  v2 = *(v1 + 48);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_10002BA7C();
    v5 = sub_10002A9B0(&v9, v4 + 4, v3, v2);
    v6 = v9;

    sub_10000A840(v6);
    if (v5 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_5:
  v0[14] = v4;
  v7 = v0[11];

  return _swift_task_switch(sub_1000707A8, v7, 0);
}

uint64_t sub_1000707A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[14];
  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
    v5 = sub_1000E2B68();
    v3[15] = v5;
    if (v5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v5 = *(v4 + 16);
    v3[15] = v5;
    if (v5)
    {
LABEL_4:
      if (v5 < 1)
      {
        __break(1u);
      }

      else
      {
        v6 = v3[14];
        v3[16] = 0;
        if ((v6 & 0xC000000000000001) != 0)
        {
          v7 = sub_1000E2A98();
        }

        else
        {
        }

        v3[17] = v7;
        a2 = v3[13];
        v5 = sub_1000708A4;
        a3 = 0;
      }

      return _swift_task_switch(v5, a2, a3);
    }
  }

  v8 = v3[1];

  return v8();
}

uint64_t sub_1000708A4()
{
  v1 = *(v0 + 88);
  *(v0 + 144) = sub_100012CD8();

  return _swift_task_switch(sub_100070914, v1, 0);
}

uint64_t sub_100070914()
{
  v1 = *(v0 + 48);
  v2 = sub_10006EE20(*(v0 + 144), v1);
  v3 = *(v0 + 144);
  v4 = *(v0 + 56);
  if ((v2 & 1) == 0 || !v1)
  {
    if (sub_10006EE20(*(v0 + 144), *(v0 + 56)) & 1) == 0 || (v8 = *(v0 + 56)) == 0 || ([v8 isContinuitySession])
    {
LABEL_15:

      v15 = *(v0 + 128);
      v16 = *(v0 + 120);

      if (v15 + 1 == v16)
      {

        v17 = *(v0 + 8);

        return v17();
      }

      else
      {
        ++*(v0 + 128);
        if ((*(v0 + 112) & 0xC000000000000001) != 0)
        {
          v18 = sub_1000E2A98();
        }

        else
        {
        }

        *(v0 + 136) = v18;
        v19 = *(v0 + 104);

        return _swift_task_switch(sub_1000708A4, v19, 0);
      }
    }

    goto LABEL_11;
  }

  v5 = [*(v0 + 48) isContinuitySession];
  if ((sub_10006EE20(v3, v4) & 1) != 0 && (v6 = *(v0 + 56)) != 0)
  {
    v7 = [v6 isContinuitySession];
    if (v5)
    {
      if (v7)
      {
        goto LABEL_15;
      }

LABEL_11:
      v9 = *(v0 + 136);
      v11 = *(v9 + 16);
      v10 = *(v9 + 24);
      v12 = *(v0 + 56);
      v13 = swift_task_alloc();
      *(v0 + 160) = v13;
      *v13 = v0;
      v13[1] = sub_100070E70;

      return sub_10006F004(v11, v10, v12);
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (v5)
  {
    goto LABEL_15;
  }

  v20 = *(v0 + 136);
  v21 = *(v20 + 16);
  v22 = *(v20 + 24);
  v23 = [*(v0 + 48) UUID];
  sub_1000E0D38();

  v24 = swift_task_alloc();
  *(v0 + 152) = v24;
  *v24 = v0;
  v24[1] = sub_100070BFC;
  v25 = *(v0 + 80);

  return sub_10006FE08(v21, v22, v25);
}

uint64_t sub_100070BFC()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_100070D68, v1, 0);
}

uint64_t sub_100070D68()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 48);

  if (v1 + 1 == v2)
  {

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    ++*(v0 + 128);
    if ((*(v0 + 112) & 0xC000000000000001) != 0)
    {
      v6 = sub_1000E2A98();
    }

    else
    {
    }

    *(v0 + 136) = v6;
    v7 = *(v0 + 104);

    return _swift_task_switch(sub_1000708A4, v7, 0);
  }
}

uint64_t sub_100070E70()
{
  v1 = *(*v0 + 88);

  return _swift_task_switch(sub_100070F80, v1, 0);
}

uint64_t sub_100070F80()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 128);
  v3 = *(v0 + 120);

  if (v2 + 1 == v3)
  {

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    ++*(v0 + 128);
    if ((*(v0 + 112) & 0xC000000000000001) != 0)
    {
      v6 = sub_1000E2A98();
    }

    else
    {
    }

    *(v0 + 136) = v6;
    v7 = *(v0 + 104);

    return _swift_task_switch(sub_1000708A4, v7, 0);
  }
}

uint64_t sub_10007107C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1000E0D68();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230F0;

  return _swift_task_switch(sub_100071174, v5, 0);
}

uint64_t sub_1000711A4()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[3];
  sub_1000E0D58();
  v4 = swift_task_alloc();
  v0[9] = v4;
  v4[2] = v2;
  v4[3] = v1;
  v4[4] = v3;
  v5 = swift_task_alloc();
  v0[10] = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v6 = swift_task_alloc();
  v0[11] = v6;
  v7 = sub_1000E1398();
  *v6 = v0;
  v6[1] = sub_1000712C4;
  v8 = v0[2];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v8, &unk_1000F2950, v4, sub_1000AE220, v5, 0, 0, v7);
}

uint64_t sub_1000712C4()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_100071468;
  }

  else
  {

    v2 = sub_1000713E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000713E8()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100071468()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100071504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  v5 = sub_1000E1948();
  v4[18] = v5;
  v6 = *(v5 - 8);
  v4[19] = v6;
  v4[20] = *(v6 + 64);
  v4[21] = swift_task_alloc();
  sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v4[22] = swift_task_alloc();
  v7 = sub_1000E13E8();
  v4[23] = v7;
  v4[24] = *(v7 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = type metadata accessor for HandoffInfo(0);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  sub_10000ADE4(&qword_10011F888, &qword_1000F22B0);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v8 = type metadata accessor for HandoffState(0);
  v4[32] = v8;
  v4[33] = *(v8 - 8);
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v9 = qword_1001230F0;
  v4[38] = qword_1001230F0;

  return _swift_task_switch(sub_1000717A8, v9, 0);
}

uint64_t sub_1000717A8()
{
  v81 = v0;
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[31];
  v4 = v0[17];
  v5 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  v0[39] = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  swift_beginAccess();
  sub_10000CB64(v4 + v5, v3, &qword_10011F888, &qword_1000F22B0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000033C8(v0[31], &qword_10011F888, &qword_1000F22B0);
    v6 = v0[38];
    v8 = v0[21];
    v7 = v0[22];
    v79 = v7;
    v9 = v0[19];
    v11 = v0[17];
    v10 = v0[18];
    v13 = v0[15];
    v12 = v0[16];
    v14 = sub_1000E2538();
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
    (*(v9 + 16))(v8, v13, v10);
    v16 = sub_1000A75DC(&qword_100120020, v15, type metadata accessor for ConduitActor, &unk_1000F2250);
    v17 = (*(v9 + 80) + 48) & ~*(v9 + 80);
    v18 = swift_allocObject();
    *(v18 + 2) = v6;
    *(v18 + 3) = v16;
    *(v18 + 4) = v11;
    *(v18 + 5) = v12;
    (*(v9 + 32))(&v18[v17], v8, v10);
    v19 = v11;

    v20 = sub_100022678(0, 0, v79, &unk_1000F28D8, v18);
    v0[42] = v20;
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v21 = sub_1000E1F08();
    v0[43] = sub_1000049D0(v21, qword_100123128);

    v22 = sub_1000E1EE8();
    v23 = sub_1000E2698();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = v0[16];
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v80[0] = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_100029C70(*(v24 + 16), *(v24 + 24), v80);
      _os_log_impl(&_mh_execute_header, v22, v23, "[StartConversation] Initiated task to start conversation with %s", v25, 0xCu);
      sub_10000E9DC(v26);
    }

    v27 = v0[39];
    v28 = v0[32];
    v29 = v0[33];
    v30 = v0[30];
    v31 = v0[17];
    *v30 = v20;
    swift_storeEnumTagMultiPayload();
    v32 = *(v29 + 56);
    v0[44] = v32;
    v0[45] = (v29 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v32(v30, 0, 1, v28);
    swift_beginAccess();

    sub_1000A884C(v30, v31 + v27);
    swift_endAccess();
    sub_100061F64();
    sub_1000033C8(v30, &qword_10011F888, &qword_1000F22B0);
    v33 = swift_task_alloc();
    v0[46] = v33;
    v34 = sub_10000ADE4(&unk_10011F8C0, &qword_1000F0C40);
    *v33 = v0;
    v33[1] = sub_1000726E0;
    v35 = v0[28];
    v36 = v0[26];

    return Task.value.getter(v35, v20, v36, v34, &protocol self-conformance witness table for Error);
  }

  v37 = v0[36];
  v38 = v0[37];
  sub_1000A877C(v0[31], v38, type metadata accessor for HandoffState);
  sub_1000A87E4(v38, v37, type metadata accessor for HandoffState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v40 = v0[36];
  if (EnumCaseMultiPayload == 1)
  {
    v41 = v0[29];
    v42 = v0[16];
    sub_1000A877C(v40, v41, type metadata accessor for HandoffInfo);
    v43 = *(v41 + 8) == *(v42 + 16) && *(v41 + 16) == *(v42 + 24);
    if (v43 || (sub_1000E2C68() & 1) != 0)
    {
      if (qword_10011DC60 != -1)
      {
        swift_once();
      }

      v44 = v0[37];
      v45 = v0[34];
      v46 = sub_1000E1F08();
      sub_1000049D0(v46, qword_100123128);
      sub_1000A87E4(v44, v45, type metadata accessor for HandoffState);
      v47 = sub_1000E1EE8();
      v48 = sub_1000E2678();
      v49 = os_log_type_enabled(v47, v48);
      v50 = v0[34];
      if (v49)
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v80[0] = v52;
        *v51 = 136315138;
        v53 = sub_1000DDE18();
        v55 = v54;
        sub_1000AD5EC(v50, type metadata accessor for HandoffState);
        v56 = sub_100029C70(v53, v55, v80);

        *(v51 + 4) = v56;
        _os_log_impl(&_mh_execute_header, v47, v48, "[StartConversation] Received start call request from device to which we currently think we're handed off. Ending existing handoff: %s", v51, 0xCu);
        sub_10000E9DC(v52);
      }

      else
      {

        sub_1000AD5EC(v50, type metadata accessor for HandoffState);
      }

      v74 = v0[24];
      v73 = v0[25];
      v75 = v0[23];
      (*(v74 + 104))(v73, enum case for NCProtoDisconnectRequest.DisconnectReason.endingHandoff(_:), v75);
      v76 = sub_10006B2FC(v73);
      v0[40] = v76;
      (*(v74 + 8))(v73, v75);
      v77 = swift_task_alloc();
      v0[41] = v77;
      *v77 = v0;
      v77[1] = sub_1000721AC;

      return Task<>.value.getter(v77, v76, &type metadata for () + 8);
    }

    v40 = v0[29];
    v57 = type metadata accessor for HandoffInfo;
  }

  else
  {
    v57 = type metadata accessor for HandoffState;
  }

  sub_1000AD5EC(v40, v57);
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v58 = v0[37];
  v59 = v0[35];
  v60 = sub_1000E1F08();
  sub_1000049D0(v60, qword_100123128);
  sub_1000A87E4(v58, v59, type metadata accessor for HandoffState);
  v61 = sub_1000E1EE8();
  v62 = sub_1000E2678();
  v63 = os_log_type_enabled(v61, v62);
  v64 = v0[35];
  if (v63)
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v80[0] = v66;
    *v65 = 136315138;
    v67 = sub_1000DDE18();
    v69 = v68;
    sub_1000AD5EC(v64, type metadata accessor for HandoffState);
    v70 = sub_100029C70(v67, v69, v80);

    *(v65 + 4) = v70;
    _os_log_impl(&_mh_execute_header, v61, v62, "[StartConversation] Rejecting start conversation request because we're already in a session: %s", v65, 0xCu);
    sub_10000E9DC(v66);
  }

  else
  {

    sub_1000AD5EC(v64, type metadata accessor for HandoffState);
  }

  v71 = v0[37];
  TUMakeNeighborhoodConduitError();
  swift_willThrow();
  sub_1000AD5EC(v71, type metadata accessor for HandoffState);

  v72 = v0[1];

  return v72();
}

uint64_t sub_1000721AC()
{
  v1 = *(*v0 + 304);

  return _swift_task_switch(sub_1000722D8, v1, 0);
}

uint64_t sub_1000722D8()
{
  v36 = v0;
  v1 = v0[29];
  sub_1000AD5EC(v0[37], type metadata accessor for HandoffState);
  sub_1000AD5EC(v1, type metadata accessor for HandoffInfo);
  v2 = v0[38];
  v4 = v0[21];
  v3 = v0[22];
  v34 = v3;
  v5 = v0[19];
  v7 = v0[17];
  v6 = v0[18];
  v9 = v0[15];
  v8 = v0[16];
  v10 = sub_1000E2538();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  (*(v5 + 16))(v4, v9, v6);
  v12 = sub_1000A75DC(&qword_100120020, v11, type metadata accessor for ConduitActor, &unk_1000F2250);
  v13 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = v2;
  *(v14 + 3) = v12;
  *(v14 + 4) = v7;
  *(v14 + 5) = v8;
  (*(v5 + 32))(&v14[v13], v4, v6);
  v15 = v7;

  v16 = sub_100022678(0, 0, v34, &unk_1000F28D8, v14);
  v0[42] = v16;
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v17 = sub_1000E1F08();
  v0[43] = sub_1000049D0(v17, qword_100123128);

  v18 = sub_1000E1EE8();
  v19 = sub_1000E2698();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = v0[16];
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v35 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_100029C70(*(v20 + 16), *(v20 + 24), &v35);
    _os_log_impl(&_mh_execute_header, v18, v19, "[StartConversation] Initiated task to start conversation with %s", v21, 0xCu);
    sub_10000E9DC(v22);
  }

  v23 = v0[39];
  v24 = v0[32];
  v25 = v0[33];
  v26 = v0[30];
  v27 = v0[17];
  *v26 = v16;
  swift_storeEnumTagMultiPayload();
  v28 = *(v25 + 56);
  v0[44] = v28;
  v0[45] = (v25 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v28(v26, 0, 1, v24);
  swift_beginAccess();

  sub_1000A884C(v26, v27 + v23);
  swift_endAccess();
  sub_100061F64();
  sub_1000033C8(v26, &qword_10011F888, &qword_1000F22B0);
  v29 = swift_task_alloc();
  v0[46] = v29;
  v30 = sub_10000ADE4(&unk_10011F8C0, &qword_1000F0C40);
  *v29 = v0;
  v29[1] = sub_1000726E0;
  v31 = v0[28];
  v32 = v0[26];

  return Task.value.getter(v31, v16, v32, v30, &protocol self-conformance witness table for Error);
}

uint64_t sub_1000726E0()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  v3 = *(v2 + 304);
  if (v0)
  {
    v4 = sub_100072B10;
  }

  else
  {
    v4 = sub_10007280C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10007280C()
{
  v20 = v0;
  sub_1000A87E4(v0[28], v0[27], type metadata accessor for HandoffInfo);
  v1 = sub_1000E1EE8();
  v2 = sub_1000E2698();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[27];
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    v7 = sub_1000DDC88();
    v9 = v8;
    sub_1000AD5EC(v4, type metadata accessor for HandoffInfo);
    v10 = sub_100029C70(v7, v9, &v19);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "[StartConversation] Successfully started conversation %s", v5, 0xCu);
    sub_10000E9DC(v6);
  }

  else
  {

    sub_1000AD5EC(v4, type metadata accessor for HandoffInfo);
  }

  v11 = v0[44];
  v12 = v0[39];
  v13 = v0[32];
  v14 = v0[30];
  v15 = v0[28];
  v16 = v0[17];
  sub_1000A87E4(v15, v14, type metadata accessor for HandoffInfo);
  swift_storeEnumTagMultiPayload();
  v11(v14, 0, 1, v13);
  swift_beginAccess();
  sub_1000A884C(v14, v16 + v12);
  swift_endAccess();
  sub_100061F64();
  sub_1000033C8(v14, &qword_10011F888, &qword_1000F22B0);
  sub_1000E19B8();

  sub_1000AD5EC(v15, type metadata accessor for HandoffInfo);

  v17 = v0[1];

  return v17();
}

uint64_t sub_100072B10()
{
  v14 = v0;

  swift_errorRetain();
  v1 = sub_1000E1EE8();
  v2 = sub_1000E2678();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 128);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v4 = 136315394;
    *(v4 + 4) = sub_100029C70(*(v3 + 16), *(v3 + 24), &v13);
    *(v4 + 12) = 2112;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "[StartConversation] Failed to start conversation with %s due to %@", v4, 0x16u);
    sub_1000033C8(v5, &unk_10011EAC0, &unk_1000F0E60);

    sub_10000E9DC(v6);
  }

  v8 = *(v0 + 312);
  v9 = *(v0 + 240);
  v10 = *(v0 + 136);
  (*(v0 + 352))(v9, 1, 1, *(v0 + 256));
  swift_beginAccess();
  sub_1000A884C(v9, v10 + v8);
  swift_endAccess();
  sub_100061F64();
  sub_1000033C8(v9, &qword_10011F888, &qword_1000F22B0);
  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100072DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  v7 = sub_1000E15C8();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v8 = qword_1001230F0;

  return _swift_task_switch(sub_100072EC4, v8, 0);
}

uint64_t sub_100072EC4()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  sub_1000E1938();
  (*(v4 + 32))(v2, v1, v3);
  v5 = (*(v4 + 88))(v2, v3);
  if (v5 == enum case for NCProtoConversationAVMode.none(_:))
  {
    v6 = 0;
  }

  else if (v5 == enum case for NCProtoConversationAVMode.audio(_:))
  {
    v6 = 1;
  }

  else
  {
    (*(v0[7] + 8))(v0[8], v0[6]);
    v6 = 2;
  }

  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_100073010;
  v8 = v0[4];
  v9 = v0[2];

  return sub_100073144(v9, v8, v6);
}

uint64_t sub_100073010()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100073144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230F0;
  v4[6] = qword_1001230F0;

  return _swift_task_switch(sub_1000731E4, v5, 0);
}

uint64_t sub_1000731E4()
{
  v0[7] = sub_1000D605C(0);
  if (_swiftEmptyArrayStorage >> 62 && sub_1000E2B68())
  {
    sub_1000E03A0(_swiftEmptyArrayStorage);
  }

  v1 = objc_allocWithZone(TUJoinConversationRequest);
  sub_10000CAAC(0, &qword_10011F890, TUConversationMember_ptr);
  sub_10000EA70(&qword_10011F898, &qword_10011F890, TUConversationMember_ptr, &protocol conformance descriptor for NSObject);
  isa = sub_1000E25D8().super.isa;

  v3 = [v1 initWithRemoteMembers:isa];
  v0[8] = v3;

  [v3 setAvMode:0];
  [v3 setPresentationMode:2];
  [v3 setWantsStagingArea:0];
  [v3 setShouldSuppressInCallUI:1];
  [v3 setPrefersAddingRemoteMembersAfterHandoff:1];
  if (qword_10011DCA8 != -1)
  {
    swift_once();
  }

  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];
  v7 = sub_1000E2DA8();
  v9 = v8;
  v10 = swift_allocObject();
  v0[9] = v10;
  v10[2] = v5;
  v10[3] = v3;
  v10[4] = v4;
  v10[5] = v6;
  v11 = v5;
  v12 = v3;

  v13 = swift_task_alloc();
  v0[10] = v13;
  *v13 = v0;
  v13[1] = sub_10007348C;
  v14 = v0[2];

  return sub_10005D2F4(v14, v7, v9, &unk_1000F28F0, v10);
}

uint64_t sub_10007348C()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = sub_10007362C;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_1000735B4;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000735B4()
{
  v1 = *(v0 + 56);

  sub_1000D6278(0, v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10007362C()
{
  v1 = v0[8];
  v2 = v0[7];

  sub_1000D6278(0, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000736AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = type metadata accessor for HandoffState(0);
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  sub_10000ADE4(&qword_10011F888, &qword_1000F22B0);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v6 = qword_1001230F0;
  v4[16] = qword_1001230F0;

  return _swift_task_switch(sub_100073804, v6, 0);
}

uint64_t sub_100073804()
{
  v38 = v0;
  v1 = v0[15];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];
  v5 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  swift_beginAccess();
  sub_10000CB64(v4 + v5, v1, &qword_10011F888, &qword_1000F22B0);
  v6 = *(v3 + 48);
  LODWORD(v2) = v6(v1, 1, v2);
  sub_1000033C8(v1, &qword_10011F888, &qword_1000F22B0);
  if (v2 == 1)
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v7 = sub_1000E1F08();
    v0[17] = sub_1000049D0(v7, qword_100123128);
    v8 = sub_1000E1EE8();
    v9 = sub_1000E2698();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "[Handoff][PullToTV] Initiating Laguna pull conversation request", v10, 2u);
    }

    v11 = v0[7];

    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    v14 = sub_100073FF8();
    v15 = swift_task_alloc();
    v0[18] = v15;
    *v15 = v0;
    v15[1] = sub_100073CF0;

    return sub_10002F464(v12, v13, 0, v14);
  }

  else
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v17 = v0[8];
    v18 = sub_1000E1F08();
    sub_1000049D0(v18, qword_100123128);
    v19 = v17;
    v20 = sub_1000E1EE8();
    v21 = sub_1000E2698();

    if (os_log_type_enabled(v20, v21))
    {
      v36 = v21;
      v22 = v0[13];
      v23 = v0[14];
      v34 = v0[9];
      v24 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v37 = v35;
      *v24 = 136315138;
      sub_10000CB64(v4 + v5, v23, &qword_10011F888, &qword_1000F22B0);
      sub_10000CB64(v23, v22, &qword_10011F888, &qword_1000F22B0);
      v25 = v6(v22, 1, v34);
      v26 = v0[13];
      if (v25 == 1)
      {
        sub_1000033C8(v26, &qword_10011F888, &qword_1000F22B0);
        v27 = 0xE300000000000000;
        v28 = 7104878;
      }

      else
      {
        v29 = v0[11];
        v30 = v0[12];
        sub_1000A877C(v26, v30, type metadata accessor for HandoffState);
        sub_1000A87E4(v30, v29, type metadata accessor for HandoffState);
        v28 = sub_1000E2368();
        v27 = v31;
        sub_1000AD5EC(v30, type metadata accessor for HandoffState);
      }

      sub_1000033C8(v0[14], &qword_10011F888, &qword_1000F22B0);
      v32 = sub_100029C70(v28, v27, &v37);

      *(v24 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v20, v36, "[Handoff][PullToTV] Rejecting pull because we're already in a session: %s", v24, 0xCu);
      sub_10000E9DC(v35);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();

    v33 = v0[1];

    return v33();
  }
}

uint64_t sub_100073CF0(uint64_t a1)
{
  v3 = *v2;
  v3[19] = a1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {
    v6 = v3[16];

    return _swift_task_switch(sub_100073E6C, v6, 0);
  }
}

uint64_t sub_100073E6C()
{
  v1 = *(v0 + 152);
  v2 = sub_1000E1EE8();
  v3 = sub_1000E2698();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 152);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v4;
    *v6 = v4;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "[Handoff][PullToTV] Finishing Laguna pull conversation request with result: %@", v5, 0xCu);
    sub_1000033C8(v6, &unk_10011EAC0, &unk_1000F0E60);
  }

  v8 = *(v0 + 152);

  sub_1000E1C58();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100073FF8()
{
  v0 = sub_10000ADE4(&qword_10011FC30, &qword_1000F28C0);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v12 - v4;
  if (sub_1000E1B88())
  {
    sub_1000E1B78();
    v6 = sub_1000E1B68();
    v7 = *(v6 - 8);
    (*(v7 + 56))(v5, 0, 1, v6);
    sub_10000CB64(v5, v3, &qword_10011FC30, &qword_1000F28C0);
    v8 = (*(v7 + 88))(v3, v6);
    v9 = 0;
    if (v8 != enum case for NCProtoPullLagunaSessionToTVRequest.Reason.userInitiated(_:))
    {
      if (v8 != enum case for NCProtoPullLagunaSessionToTVRequest.Reason.systemWake(_:))
      {
        (*(v7 + 8))(v3, v6);
        TUMakeNeighborhoodConduitError();
        swift_willThrow();
        sub_1000033C8(v5, &qword_10011FC30, &qword_1000F28C0);
        return v9;
      }

      v9 = 2;
    }
  }

  else
  {
    v10 = sub_1000E1B68();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    v9 = 0;
  }

  sub_1000033C8(v5, &qword_10011FC30, &qword_1000F28C0);
  return v9;
}

uint64_t sub_100074228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v3[4] = qword_1001230F0;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_10007430C;

  return sub_100074698(a2, a3);
}

uint64_t sub_10007430C()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_10007449C;
  }

  else
  {
    v4 = sub_100074438;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100074438()
{
  sub_1000E1DF8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10007449C()
{
  v12 = v0;
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v1 = sub_1000E1F08();
  sub_1000049D0(v1, qword_100123128);

  swift_errorRetain();
  v2 = sub_1000E1EE8();
  v3 = sub_1000E2698();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 24);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v5 = 136315394;
    *(v5 + 4) = sub_100029C70(*(v4 + 16), *(v4 + 24), &v11);
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to add conversation participant request for %s due to %@.", v5, 0x16u);
    sub_1000033C8(v6, &unk_10011EAC0, &unk_1000F0E60);

    sub_10000E9DC(v7);
  }

  swift_willThrow();
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100074698(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v3[25] = swift_task_alloc();
  sub_10000ADE4(&qword_10011F888, &qword_1000F22B0);
  v3[26] = swift_task_alloc();
  v4 = type metadata accessor for HandoffInfo(0);
  v3[27] = v4;
  v5 = *(v4 - 8);
  v3[28] = v5;
  v3[29] = *(v5 + 64);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v6 = sub_1000E1DC8();
  v3[34] = v6;
  v3[35] = *(v6 - 8);
  v3[36] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v7 = qword_1001230F0;
  v3[37] = qword_1001230F0;

  return _swift_task_switch(sub_10007488C, v7, 0);
}

uint64_t sub_10007488C()
{
  v21 = v0;
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[34];
  v4 = v0[22];
  v5 = sub_1000E1F08();
  v0[38] = sub_1000049D0(v5, qword_100123128);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_1000E1EE8();
  v7 = sub_1000E2698();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[35];
  v9 = v0[36];
  v11 = v0[34];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = v19;
    *v12 = 136315138;
    sub_1000E1DB8();
    v13 = sub_1000E2478();
    v15 = v14;

    (*(v10 + 8))(v9, v11);
    v16 = sub_100029C70(v13, v15, &v20);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "[AddParticipants] Received request to add participants %s.", v12, 0xCu);
    sub_10000E9DC(v19);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v17 = *(v0[24] + OBJC_IVAR___CSDNeighborhoodActivityConduit_continuitySessionServer);
  v0[39] = v17;

  return _swift_task_switch(sub_100074AB8, v17, 0);
}

uint64_t sub_100074AB8()
{
  v1 = *(v0 + 296);
  sub_1000BA9C4(*(v0 + 184), (v0 + 80));

  return _swift_task_switch(sub_100074B2C, v1, 0);
}

uint64_t sub_100074B2C()
{
  v89 = v0;
  v1 = *(v0 + 88);
  if (!v1)
  {
    goto LABEL_19;
  }

  v2 = *(v0 + 208);
  v3 = *(v0 + 192);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 24) = v1;
  v4 = *(v0 + 112);
  *(v0 + 32) = *(v0 + 96);
  *(v0 + 48) = v4;
  *(v0 + 64) = *(v0 + 128);
  v5 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  swift_beginAccess();
  sub_10000CB64(v3 + v5, v2, &qword_10011F888, &qword_1000F22B0);
  v6 = type metadata accessor for HandoffState(0);
  v7 = (*(*(v6 - 8) + 48))(v2, 1, v6);
  v8 = *(v0 + 208);
  if (v7 == 1)
  {
    sub_1000033C8(v0 + 80, &unk_10011FA58, &unk_1000F25E0);
    sub_1000033C8(v8, &qword_10011F888, &qword_1000F22B0);
LABEL_19:

    v27 = sub_1000E1EE8();
    v28 = sub_1000E2698();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = *(v0 + 184);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v88[0] = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_100029C70(*(v29 + 16), *(v29 + 24), v88);
      _os_log_impl(&_mh_execute_header, v27, v28, "[AddParticipants] Rejecting request to add conversation participants from device with which we do not have a laguna session %s.", v30, 0xCu);
      sub_10000E9DC(v31);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    goto LABEL_22;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1000033C8(v0 + 80, &unk_10011FA58, &unk_1000F25E0);
    v26 = type metadata accessor for HandoffState;
LABEL_18:
    sub_1000AD5EC(v8, v26);
    goto LABEL_19;
  }

  v9 = *(v0 + 264);
  sub_1000A877C(v8, v9, type metadata accessor for HandoffInfo);
  v8 = *(v0 + 264);
  if (*v9 != 1 || ((v10 = *(v0 + 184), v11 = *(v8 + 8), v12 = *(v8 + 16), v11 != *(v10 + 16)) || v12 != *(v10 + 24)) && (v13 = sub_1000E2C68(), v8 = *(v0 + 264), (v13 & 1) == 0))
  {
LABEL_17:
    sub_1000033C8(v0 + 80, &unk_10011FA58, &unk_1000F25E0);
    v26 = type metadata accessor for HandoffInfo;
    goto LABEL_18;
  }

  v14 = *(v0 + 192);
  v15 = OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager;
  *(v0 + 320) = OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager;
  v16 = *(v14 + v15);
  isa = sub_1000E0D18().super.isa;
  v18 = [v16 activeConversationWithUUID:isa];
  *(v0 + 328) = v18;

  if (!v18)
  {
    v8 = *(v0 + 264);
    goto LABEL_17;
  }

  v19 = sub_1000E1DB8();
  v20 = *(v19 + 16);
  if (v20)
  {
    v84 = v12;
    result = sub_1000E2AE8();
    v22 = 0;
    v23 = (v19 + 40);
    while (v22 < *(v19 + 16))
    {
      v24 = *(v0 + 184);
      v25 = *v23;
      v88[0] = *(v23 - 1);
      v88[1] = v25;

      sub_10008EEA0(v88, v0 + 16, v24, (v0 + 168), &v87);
      ++v22;

      sub_1000E2AC8();
      sub_1000E2AF8();
      sub_1000E2B08();
      result = sub_1000E2AD8();
      v23 += 2;
      if (v20 == v22)
      {

        v12 = v84;
        goto LABEL_27;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    v33 = sub_1000D4F64(_swiftEmptyArrayStorage);
    *(v0 + 336) = v33;

    sub_100020430(v33);
    if (v34)
    {
      v35 = *(v0 + 296);
      v36 = *(v0 + 264);
      v85 = v36;
      v37 = *(v0 + 240);
      v38 = *(v0 + 224);
      v40 = *(v0 + 192);
      v39 = *(v0 + 200);

      v41 = sub_1000E2538();
      (*(*(v41 - 8) + 56))(v39, 1, 1, v41);
      sub_1000A87E4(v36, v37, type metadata accessor for HandoffInfo);
      v43 = sub_1000A75DC(&qword_100120020, v42, type metadata accessor for ConduitActor, &unk_1000F2250);
      v44 = (*(v38 + 80) + 40) & ~*(v38 + 80);
      v45 = swift_allocObject();
      v45[2] = v35;
      v45[3] = v43;
      v45[4] = v40;
      sub_1000A877C(v37, v45 + v44, type metadata accessor for HandoffInfo);
      v46 = v40;

      sub_1000223DC(0, 0, v39, &unk_1000F28A8, v45);

      TUMakeNeighborhoodConduitError();
      swift_willThrow();
      sub_1000033C8(v0 + 80, &unk_10011FA58, &unk_1000F25E0);

      sub_1000AD5EC(v85, type metadata accessor for HandoffInfo);
LABEL_22:

      v32 = *(v0 + 8);
LABEL_23:

      return v32();
    }

    sub_1000CFEF8(v47);
    v49 = v48;

    v50 = sub_1000D4CDC(v49);

    v51 = sub_1000206F8(v50, 1, 0, 0);
    *(v0 + 344) = v51;

    v52 = *(v0 + 264);
    if (!v51)
    {
      sub_1000A87E4(v52, *(v0 + 248), type metadata accessor for HandoffInfo);
      v64 = sub_1000E1EE8();
      v65 = sub_1000E2698();
      v66 = os_log_type_enabled(v64, v65);
      v67 = *(v0 + 248);
      if (v66)
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v88[0] = v69;
        *v68 = 136315138;
        v70 = sub_1000DDC88();
        v72 = v71;
        sub_1000AD5EC(v67, type metadata accessor for HandoffInfo);
        v73 = sub_100029C70(v70, v72, v88);

        *(v68 + 4) = v73;
        _os_log_impl(&_mh_execute_header, v64, v65, "[AddParticipants] Not pushing contacts for %s.", v68, 0xCu);
        sub_10000E9DC(v69);
      }

      else
      {

        sub_1000AD5EC(v67, type metadata accessor for HandoffInfo);
      }

      v77 = *(v0 + 328);
      v78 = *(v0 + 320);
      v79 = *(v0 + 264);
      v80 = *(v0 + 192);
      v81 = sub_10005A700(*(v0 + 336));

      v82 = *(v80 + v78);
      sub_1000D4B50(v81);

      sub_10000CAAC(0, &qword_10011F890, TUConversationMember_ptr);
      sub_10000EA70(&qword_10011F898, &qword_10011F890, TUConversationMember_ptr, &protocol conformance descriptor for NSObject);
      v83 = sub_1000E25D8().super.isa;

      [v82 addRemoteMembers:v83 toConversation:v77];
      sub_1000033C8(v0 + 80, &unk_10011FA58, &unk_1000F25E0);

      sub_1000AD5EC(v79, type metadata accessor for HandoffInfo);

      v32 = *(v0 + 8);
      goto LABEL_23;
    }

    sub_1000A87E4(v52, *(v0 + 256), type metadata accessor for HandoffInfo);

    v53 = sub_1000E1EE8();
    v54 = sub_1000E2698();
    v55 = os_log_type_enabled(v53, v54);
    v56 = *(v0 + 256);
    if (v55)
    {
      v57 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v88[0] = v86;
      *v57 = 134218242;
      *(v57 + 4) = *(v51 + 16);

      *(v57 + 12) = 2080;
      v58 = v12;
      v59 = sub_1000DDC88();
      v61 = v60;
      sub_1000AD5EC(v56, type metadata accessor for HandoffInfo);
      v62 = v59;
      v12 = v58;
      v63 = sub_100029C70(v62, v61, v88);

      *(v57 + 14) = v63;
      _os_log_impl(&_mh_execute_header, v53, v54, "[AddParticipants] Pushing %ld initial contacts for %s.", v57, 0x16u);
      sub_10000E9DC(v86);
    }

    else
    {

      sub_1000AD5EC(v56, type metadata accessor for HandoffInfo);
    }

    v74 = *(v0 + 264);
    v75 = *(*(v0 + 216) + 28);
    v76 = swift_task_alloc();
    *(v0 + 352) = v76;
    *v76 = v0;
    v76[1] = sub_1000756C8;

    return sub_10007F3DC(v51, v74 + v75, v11, v12);
  }

  return result;
}

uint64_t sub_1000756C8()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 296);
  if (v0)
  {

    v4 = sub_1000759F4;
  }

  else
  {

    v4 = sub_100075824;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100075824()
{
  v1 = v0[41];
  v2 = v0[40];
  v3 = v0[33];
  v4 = v0[24];
  v5 = sub_10005A700(v0[42]);

  v6 = *(v4 + v2);
  sub_1000D4B50(v5);

  sub_10000CAAC(0, &qword_10011F890, TUConversationMember_ptr);
  sub_10000EA70(&qword_10011F898, &qword_10011F890, TUConversationMember_ptr, &protocol conformance descriptor for NSObject);
  isa = sub_1000E25D8().super.isa;

  [v6 addRemoteMembers:isa toConversation:v1];
  sub_1000033C8((v0 + 10), &unk_10011FA58, &unk_1000F25E0);

  sub_1000AD5EC(v3, type metadata accessor for HandoffInfo);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000759F4()
{
  v1 = v0[41];
  v2 = v0[40];
  v3 = v0[33];
  v4 = v0[24];
  v5 = sub_10005A700(v0[42]);

  v6 = *(v4 + v2);
  sub_1000D4B50(v5);

  sub_10000CAAC(0, &qword_10011F890, TUConversationMember_ptr);
  sub_10000EA70(&qword_10011F898, &qword_10011F890, TUConversationMember_ptr, &protocol conformance descriptor for NSObject);
  isa = sub_1000E25D8().super.isa;

  [v6 addRemoteMembers:isa toConversation:v1];
  sub_1000033C8((v0 + 10), &unk_10011FA58, &unk_1000F25E0);

  sub_1000AD5EC(v3, type metadata accessor for HandoffInfo);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100075BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  sub_10000ADE4(&qword_10011F888, &qword_1000F22B0);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v5 = sub_1000E1C48();
  v4[17] = v5;
  v6 = *(v5 - 8);
  v4[18] = v6;
  v4[19] = *(v6 + 64);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v4[23] = swift_task_alloc();
  sub_10000ADE4(&unk_10011F0C0, &qword_1000F1670);
  v4[24] = swift_task_alloc();
  v7 = sub_1000E0D68();
  v4[25] = v7;
  v8 = *(v7 - 8);
  v4[26] = v8;
  v4[27] = *(v8 + 64);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v9 = qword_1001230F0;
  v4[30] = qword_1001230F0;

  return _swift_task_switch(sub_100075E04, v9, 0);
}

uint64_t sub_100075E04()
{
  v79 = v0;
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  sub_1000E1BF8();
  sub_1000E0CF8();

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000033C8(v0[24], &unk_10011F0C0, &qword_1000F1670);
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v4 = v0[20];
    v5 = v0[17];
    v6 = v0[18];
    v7 = v0[12];
    v8 = sub_1000E1F08();
    sub_1000049D0(v8, qword_100123128);
    (*(v6 + 16))(v4, v7, v5);
    v9 = sub_1000E1EE8();
    v10 = sub_1000E2678();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[20];
    v13 = v0[17];
    v14 = v0[18];
    if (v11)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v78[0] = v16;
      *v15 = 136315138;
      v17 = sub_1000E1BF8();
      v19 = v18;
      (*(v14 + 8))(v12, v13);
      v20 = sub_100029C70(v17, v19, v78);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v9, v10, "[JoinActiveConversation] Received malformed UUID: %s", v15, 0xCu);
      sub_10000E9DC(v16);
    }

    else
    {

      (*(v14 + 8))(v12, v13);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();

    v22 = v0[1];

    return v22();
  }

  else
  {
    v21 = *(v0[26] + 32);
    v21(v0[29], v0[24], v0[25]);
    sub_100076BB0();
    v76 = v0[29];
    v24 = v0[28];
    v69 = v0[27];
    v26 = v0[25];
    v25 = v0[26];
    v28 = v0[22];
    v27 = v0[23];
    v72 = v0[30];
    v73 = v27;
    v68 = v26;
    v29 = v0[18];
    v30 = v0[17];
    v67 = v30;
    v70 = v0[14];
    v71 = v0[13];
    v74 = v0[12];
    v31 = sub_1000E2538();
    (*(*(v31 - 8) + 56))(v27, 1, 1, v31);
    (*(v25 + 16))(v24, v76, v26);
    v77 = *(v29 + 16);
    v77(v28, v74, v30);
    v33 = sub_1000A75DC(&qword_100120020, v32, type metadata accessor for ConduitActor, &unk_1000F2250);
    v34 = (*(v25 + 80) + 48) & ~*(v25 + 80);
    v35 = (v69 + *(v29 + 80) + v34) & ~*(v29 + 80);
    v36 = swift_allocObject();
    *(v36 + 2) = v72;
    *(v36 + 3) = v33;
    *(v36 + 4) = v70;
    *(v36 + 5) = v71;
    v21(&v36[v34], v24, v68);
    (*(v29 + 32))(&v36[v35], v28, v67);
    v37 = v70;

    v38 = sub_100022678(0, 0, v73, &unk_1000F2658, v36);
    v39 = v38;
    v0[31] = v38;
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v40 = v0[21];
    v41 = v0[17];
    v42 = v0[12];
    v43 = sub_1000E1F08();
    v0[32] = sub_1000049D0(v43, qword_100123128);
    v77(v40, v42, v41);

    v44 = sub_1000E1EE8();
    v45 = sub_1000E2698();

    v46 = os_log_type_enabled(v44, v45);
    v47 = v0[21];
    v49 = v0[17];
    v48 = v0[18];
    if (v46)
    {
      v75 = v0[13];
      v50 = swift_slowAlloc();
      v78[0] = swift_slowAlloc();
      *v50 = 136315394;
      v51 = v39;
      v52 = sub_1000E1BF8();
      v54 = v53;
      (*(v48 + 8))(v47, v49);
      v55 = v52;
      v39 = v51;
      v56 = sub_100029C70(v55, v54, v78);

      *(v50 + 4) = v56;
      *(v50 + 12) = 2080;
      *(v50 + 14) = sub_100029C70(*(v75 + 16), *(v75 + 24), v78);
      _os_log_impl(&_mh_execute_header, v44, v45, "[JoinActiveConversation] requested to join conversation %s from %s", v50, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v48 + 8))(v47, v49);
    }

    v57 = v0[16];
    v58 = v0[14];
    *v57 = v39;
    v59 = type metadata accessor for HandoffState(0);
    v0[33] = v59;
    swift_storeEnumTagMultiPayload();
    v60 = *(v59 - 8);
    v61 = *(v60 + 56);
    v0[34] = v61;
    v0[35] = (v60 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v61(v57, 0, 1, v59);
    v62 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
    v0[36] = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
    swift_beginAccess();

    sub_1000A884C(v57, v58 + v62);
    swift_endAccess();
    sub_100061F64();
    sub_1000033C8(v57, &qword_10011F888, &qword_1000F22B0);
    v63 = swift_task_alloc();
    v0[37] = v63;
    v64 = type metadata accessor for HandoffInfo(0);
    v65 = sub_10000ADE4(&unk_10011F8C0, &qword_1000F0C40);
    *v63 = v0;
    v63[1] = sub_100076630;
    v66 = v0[15];

    return Task.value.getter(v66, v39, v64, v65, &protocol self-conformance witness table for Error);
  }
}

uint64_t sub_100076630()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  v3 = *(v2 + 240);
  if (v0)
  {
    v4 = sub_10007695C;
  }

  else
  {
    v4 = sub_10007675C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10007675C()
{
  v1 = v0[36];
  v2 = v0[33];
  v3 = v0[34];
  v4 = v0[14];
  v5 = v0[15];
  swift_storeEnumTagMultiPayload();
  v3(v5, 0, 1, v2);
  swift_beginAccess();
  sub_1000A884C(v5, v4 + v1);
  swift_endAccess();
  sub_100061F64();
  sub_1000033C8(v5, &qword_10011F888, &qword_1000F22B0);
  v6 = sub_1000E1EE8();
  v7 = sub_1000E2698();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "[JoinActiveConversation] Handoff succeeded, returning successfully", v8, 2u);
  }

  v9 = v0[29];
  v10 = v0[25];
  v11 = v0[26];

  sub_1000E1CA8();

  (*(v11 + 8))(v9, v10);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10007695C()
{
  swift_errorRetain();
  v1 = sub_1000E1EE8();
  v2 = sub_1000E2678();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "[JoinActiveConversation] Join active conversation failed due to %@", v3, 0xCu);
    sub_1000033C8(v4, &unk_10011EAC0, &unk_1000F0E60);
  }

  v6 = v0[36];
  v7 = v0[33];
  v8 = v0[34];
  v15 = v0[29];
  v9 = v0[26];
  v14 = v0[25];
  v10 = v0[16];
  v11 = v0[14];

  v8(v10, 1, 1, v7);
  swift_beginAccess();
  sub_1000A884C(v10, v11 + v6);
  swift_endAccess();
  sub_100061F64();
  sub_1000033C8(v10, &qword_10011F888, &qword_1000F22B0);
  swift_willThrow();

  (*(v9 + 8))(v15, v14);

  v12 = v0[1];

  return v12();
}

uint64_t sub_100076BB0()
{
  v1 = type metadata accessor for HandoffState(0);
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v56 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v57 = &v56 - v5;
  v6 = sub_1000E13E8();
  v61 = *(v6 - 8);
  v62 = v6;
  __chkstk_darwin(v6);
  v60 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HandoffInfo(0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v63 = &v56 - v12;
  v13 = sub_10000ADE4(&qword_10011F888, &qword_1000F22B0);
  v14 = __chkstk_darwin(v13 - 8);
  v58 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v59 = &v56 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v56 - v19;
  __chkstk_darwin(v18);
  v22 = &v56 - v21;
  v23 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  swift_beginAccess();
  sub_10000CB64(&v0[v23], v22, &qword_10011F888, &qword_1000F22B0);
  v24 = *(v2 + 48);
  if (v24(v22, 1, v1) == 1)
  {
    return sub_1000033C8(v22, &qword_10011F888, &qword_1000F22B0);
  }

  sub_10000CB64(v22, v20, &qword_10011F888, &qword_1000F22B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = v63;
    sub_1000A877C(v20, v63, type metadata accessor for HandoffInfo);
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v26 = sub_1000E1F08();
    sub_1000049D0(v26, qword_100123128);
    sub_1000A87E4(v25, v11, type metadata accessor for HandoffInfo);
    v27 = sub_1000E1EE8();
    v28 = sub_1000E2698();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = v22;
      v31 = swift_slowAlloc();
      v65 = v31;
      *v29 = 136315138;
      v32 = sub_1000DDC88();
      v34 = v33;
      sub_1000AD5EC(v11, type metadata accessor for HandoffInfo);
      v35 = sub_100029C70(v32, v34, &v65);
      v25 = v63;

      *(v29 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v27, v28, "Ending existing conversation as we join another: %s", v29, 0xCu);
      sub_10000E9DC(v31);
      v22 = v30;
    }

    else
    {

      sub_1000AD5EC(v11, type metadata accessor for HandoffInfo);
    }

    v48 = v60;
    v47 = v61;
    v49 = v62;
    (v61[13])(v60, enum case for NCProtoDisconnectRequest.DisconnectReason.endingHandoff(_:), v62);
    sub_10006B2FC(v48);

    (v47[1])(v48, v49);
    sub_1000AD5EC(v25, type metadata accessor for HandoffInfo);
    return sub_1000033C8(v22, &qword_10011F888, &qword_1000F22B0);
  }

  v64 = v22;
  sub_1000AD5EC(v20, type metadata accessor for HandoffState);
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v36 = sub_1000E1F08();
  sub_1000049D0(v36, qword_100123128);
  v63 = v0;
  v37 = v0;
  v38 = sub_1000E1EE8();
  v39 = sub_1000E2678();

  if (os_log_type_enabled(v38, v39))
  {
    LODWORD(v62) = v39;
    v40 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v65 = v61;
    *v40 = 136315138;
    v41 = &v63[v23];
    v42 = v59;
    sub_10000CB64(v41, v59, &qword_10011F888, &qword_1000F22B0);
    v43 = v42;
    v44 = v58;
    sub_10000CB64(v43, v58, &qword_10011F888, &qword_1000F22B0);
    if (v24(v44, 1, v1) == 1)
    {
      sub_1000033C8(v44, &qword_10011F888, &qword_1000F22B0);
      v45 = 0xE300000000000000;
      v46 = 7104878;
    }

    else
    {
      v51 = v44;
      v52 = v57;
      sub_1000A877C(v51, v57, type metadata accessor for HandoffState);
      sub_1000A87E4(v52, v56, type metadata accessor for HandoffState);
      v46 = sub_1000E2368();
      v45 = v53;
      sub_1000AD5EC(v52, type metadata accessor for HandoffState);
    }

    v54 = v62;
    sub_1000033C8(v59, &qword_10011F888, &qword_1000F22B0);
    v55 = sub_100029C70(v46, v45, &v65);

    *(v40 + 4) = v55;
    _os_log_impl(&_mh_execute_header, v38, v54, "Rejecting request because we're already joining a conversation: %s", v40, 0xCu);
    sub_10000E9DC(v61);
  }

  TUMakeNeighborhoodConduitError();
  swift_willThrow();
  return sub_1000033C8(v64, &qword_10011F888, &qword_1000F22B0);
}

uint64_t sub_100077390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  v7[20] = a1;
  v8 = *(sub_10000ADE4(&unk_10011FA80, &qword_1000F2660) - 8);
  v7[25] = v8;
  v7[26] = *(v8 + 64);
  v7[27] = swift_task_alloc();
  v7[28] = swift_task_alloc();
  v9 = sub_1000E15C8();
  v7[29] = v9;
  v7[30] = *(v9 - 8);
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();
  v10 = sub_1000E0D68();
  v7[33] = v10;
  v11 = *(v10 - 8);
  v7[34] = v11;
  v7[35] = *(v11 + 64);
  v7[36] = swift_task_alloc();
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();
  v12 = sub_1000E1C48();
  v7[39] = v12;
  v7[40] = *(v12 - 8);
  v7[41] = swift_task_alloc();
  v7[42] = swift_task_alloc();
  v7[43] = swift_task_alloc();
  v13 = sub_1000E2118();
  v7[44] = v13;
  v7[45] = *(v13 - 8);
  v7[46] = swift_task_alloc();
  v14 = sub_1000E2148();
  v7[47] = v14;
  v7[48] = *(v14 - 8);
  v7[49] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v15 = qword_1001230F0;
  v7[50] = qword_1001230F0;

  return _swift_task_switch(sub_1000776BC, v15, 0);
}

uint64_t sub_1000776BC()
{
  if ([*(*(v0 + 168) + OBJC_IVAR___CSDNeighborhoodActivityConduit_featureFlags) lagunaIncomingCallsEnabled])
  {
    if (qword_10011DC18 != -1)
    {
      swift_once();
    }

    v1 = qword_1001230E0;

    return _swift_task_switch(sub_100077874, v1, 0);
  }

  else
  {
    TUMakeNeighborhoodConduitError();
    swift_willThrow();

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_100077874()
{
  v1 = [objc_allocWithZone(TUFeatureFlags) init];
  v2 = [v1 lagunaAudioCallsEnabled];

  if (v2)
  {
    v3 = sub_100012CD8();
    v4 = [v3 capabilities];

    v5 = [v4 isAudioCallCapable];
  }

  else
  {
    v5 = 0;
  }

  *(v0 + 548) = v5;
  v6 = *(v0 + 400);

  return _swift_task_switch(sub_100077954, v6, 0);
}

uint64_t sub_100077954()
{
  v1 = *(*(v0 + 168) + OBJC_IVAR___CSDNeighborhoodActivityConduit_continuitySessionServer);
  *(v0 + 408) = v1;
  return _swift_task_switch(sub_100077980, v1, 0);
}

uint64_t sub_100077980()
{
  v1 = *(v0 + 400);
  sub_1000BA9C4(*(v0 + 176), (v0 + 16));

  return _swift_task_switch(sub_1000779F0, v1, 0);
}

uint64_t sub_1000779F0()
{
  v104 = v0;
  if (!v0[3])
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v30 = sub_1000E1F08();
    sub_1000049D0(v30, qword_100123128);

    v31 = sub_1000E1EE8();
    v32 = sub_1000E2678();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = v0[22];
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v103[0] = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_100029C70(*(v33 + 16), *(v33 + 24), v103);
      _os_log_impl(&_mh_execute_header, v31, v32, "[JoinActiveConversation] Continuity session doesn't exist for %s", v34, 0xCu);
      sub_10000E9DC(v35);
    }

    v36 = TUMakeNeighborhoodConduitError();
    goto LABEL_23;
  }

  v1 = v0[23];
  v2 = v0[21];
  sub_1000033C8((v0 + 2), &unk_10011FA58, &unk_1000F25E0);
  v3 = OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager;
  v0[52] = OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager;
  v4 = [*(v2 + v3) activeConversations];
  sub_10000CAAC(0, qword_10011F0D0, TUConversation_ptr);
  sub_10000EA70(&qword_10011FA90, qword_10011F0D0, TUConversation_ptr, &protocol conformance descriptor for NSObject);
  v5 = sub_1000E25E8();

  v6 = swift_task_alloc();
  *(v6 + 16) = v1;
  sub_1000DEED4(sub_1000AAC40, v6, v5);
  v8 = v7;
  v0[53] = v7;

  if (!v8)
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v38 = v0[40];
    v37 = v0[41];
    v39 = v0[39];
    v40 = v0[24];
    v41 = sub_1000E1F08();
    sub_1000049D0(v41, qword_100123128);
    (*(v38 + 16))(v37, v40, v39);
    v42 = sub_1000E1EE8();
    v43 = sub_1000E2678();
    v44 = os_log_type_enabled(v42, v43);
    v46 = v0[40];
    v45 = v0[41];
    v47 = v0[39];
    if (v44)
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v103[0] = v49;
      *v48 = 136315138;
      v50 = sub_1000E1BF8();
      v52 = v51;
      (*(v46 + 8))(v45, v47);
      v53 = sub_100029C70(v50, v52, v103);

      *(v48 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v42, v43, "[JoinActiveConversation] Unable to find conversation for %s", v48, 0xCu);
      sub_10000E9DC(v49);
    }

    else
    {

      (*(v46 + 8))(v45, v47);
    }

    v36 = TUMakeNeighborhoodConduitError();
LABEL_23:
    v36;
    swift_willThrow();
LABEL_26:

    v82 = v0[1];

    return v82();
  }

  v9 = [v8 remoteMembers];
  sub_10000CAAC(0, &qword_10011F890, TUConversationMember_ptr);
  sub_10000EA70(&qword_10011F898, &qword_10011F890, TUConversationMember_ptr, &protocol conformance descriptor for NSObject);
  v10 = sub_1000E25E8();

  v11 = sub_10001DBD4(v10);

  v12 = sub_1000D4F64(v11);

  sub_100020430(v12);
  LOBYTE(v11) = v13;

  if (v11)
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v14 = v0[42];
    v15 = v0[39];
    v16 = v0[40];
    v17 = v0[24];
    v18 = sub_1000E1F08();
    sub_1000049D0(v18, qword_100123128);
    (*(v16 + 16))(v14, v17, v15);
    v19 = sub_1000E1EE8();
    v20 = sub_1000E2678();
    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[42];
    v23 = v0[39];
    v24 = v0[40];
    if (v21)
    {
      v25 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v103[0] = v101;
      *v25 = 136315138;
      v26 = sub_1000E1BF8();
      v28 = v27;
      (*(v24 + 8))(v22, v23);
      v29 = sub_100029C70(v26, v28, v103);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v19, v20, "[JoinActiveConversation] Unable to join conversation with blocked handles %s", v25, 0xCu);
      sub_10000E9DC(v101);
    }

    else
    {

      (*(v24 + 8))(v22, v23);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();

    goto LABEL_26;
  }

  v54 = v0[49];
  v55 = v0[46];
  v100 = v0[48];
  v102 = v0[47];
  v56 = v0[44];
  v99 = v0[45];
  v57 = v0[21];
  v58 = [objc_allocWithZone(TUJoinConversationRequest) initWithConversation:v8 originatingUIType:44];
  v0[54] = v58;
  [v58 setAvMode:0];
  [v58 setPresentationMode:2];
  [v58 setWantsStagingArea:0];
  [v58 setShouldSuppressInCallUI:1];
  v59 = [*&v57[OBJC_IVAR___CSDNeighborhoodActivityConduit_callCenter] queue];
  v60 = swift_allocObject();
  *(v60 + 16) = v57;
  *(v60 + 24) = v58;
  v0[14] = sub_1000AE200;
  v0[15] = v60;
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000026A0;
  v0[13] = &unk_100115110;
  v61 = _Block_copy(v0 + 10);
  v62 = v57;
  v63 = v58;
  sub_1000E2138();
  v0[19] = _swiftEmptyArrayStorage;
  sub_1000A75DC(&qword_10011EA20, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
  v64 = v0;
  sub_100002C64(&qword_10011EA30, &unk_10011ED10, &unk_1000F0A60, &protocol conformance descriptor for [A]);
  sub_1000E28C8();
  sub_1000E2738();
  _Block_release(v61);

  (*(v99 + 8))(v55, v56);
  (*(v100 + 8))(v54, v102);

  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v65 = v0[43];
  v66 = v0[39];
  v67 = v0[40];
  v68 = v64[24];
  v69 = sub_1000E1F08();
  v64[55] = sub_1000049D0(v69, qword_100123128);
  (*(v67 + 16))(v65, v68, v66);
  v70 = sub_1000E1EE8();
  v71 = sub_1000E2698();
  v72 = os_log_type_enabled(v70, v71);
  v73 = v64[43];
  v75 = v64[39];
  v74 = v64[40];
  if (v72)
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v103[0] = v77;
    *v76 = 136315138;
    v78 = sub_1000E1BF8();
    v80 = v79;
    (*(v74 + 8))(v73, v75);
    v81 = sub_100029C70(v78, v80, v103);

    *(v76 + 4) = v81;
    _os_log_impl(&_mh_execute_header, v70, v71, "[JoinActiveConversation] Attempting to join conversation %s.", v76, 0xCu);
    sub_10000E9DC(v77);
  }

  else
  {

    (*(v74 + 8))(v73, v75);
  }

  if (qword_10011DCA8 != -1)
  {
    swift_once();
  }

  v84 = v64[38];
  v85 = v64[34];
  v86 = v64[33];
  v87 = v64[23];
  v88 = v64[21];
  v89 = sub_1000E2DA8();
  v91 = v90;
  v92 = *(v85 + 16);
  v64[56] = v92;
  v64[57] = (v85 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v92(v84, v87, v86);
  v93 = *(v85 + 80);
  *(v64 + 136) = v93;
  v94 = (v93 + 24) & ~v93;
  v95 = swift_allocObject();
  v64[58] = v95;
  *(v95 + 16) = v88;
  v96 = *(v85 + 32);
  v64[59] = v96;
  v64[60] = (v85 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v96(v95 + v94, v84, v86);
  v97 = v88;
  v98 = swift_task_alloc();
  v64[61] = v98;
  *v98 = v64;
  v98[1] = sub_100078680;

  return sub_10005CD04(sub_10005CD04, v89, v91, &unk_1000F2670, v95);
}

uint64_t sub_100078680()
{
  v2 = *v1;
  *(*v1 + 496) = v0;

  v3 = *(v2 + 400);
  if (v0)
  {
    v4 = sub_1000793DC;
  }

  else
  {
    v4 = sub_1000787C8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000787C8(uint64_t a1)
{
  v2 = sub_1000E1EE8();
  v3 = sub_1000E2698();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[JoinActiveConversation] Conversation joined, attempting to handoff...", v4, 2u);
  }

  v5 = *(v1 + 548);

  if (v5 != 1 || (sub_1000E1C38() & 1) != 0 && (sub_1000E1C18() & 1) != 0)
  {
    (*(*(v1 + 240) + 104))(*(v1 + 248), enum case for NCProtoConversationAVMode.video(_:), *(v1 + 232));
  }

  else
  {
    v6 = *(v1 + 240);
    v7 = [*(v1 + 424) resolvedAudioVideoMode];
    if (v7)
    {
      if (v7 == 1)
      {
        v8 = &enum case for NCProtoConversationAVMode.audio(_:);
      }

      else
      {
        v8 = &enum case for NCProtoConversationAVMode.video(_:);
      }
    }

    else
    {
      v8 = &enum case for NCProtoConversationAVMode.none(_:);
    }

    (*(v6 + 104))(*(v1 + 248), *v8, *(v1 + 232));
  }

  v43 = *(v1 + 472);
  v9 = *(v1 + 544);
  v37 = *(v1 + 448);
  v10 = *(v1 + 424);
  v11 = *(v1 + 296);
  v44 = *(v1 + 304);
  v12 = *(v1 + 256);
  v36 = *(v1 + 264);
  v13 = *(v1 + 224);
  v14 = *(v1 + 216);
  v32 = v14;
  v39 = *(v1 + 280);
  v40 = *(v1 + 208);
  v15 = *(v1 + 192);
  v38 = *(v1 + 200);
  v41 = *(v1 + 176);
  v42 = *(v1 + 168);
  (*(*(v1 + 240) + 32))(v12, *(v1 + 248), *(v1 + 232));
  v16 = [v10 UUID];
  sub_1000E0D38();

  v17 = sub_1000E0FE8();
  v18 = swift_task_alloc();
  *(v18 + 16) = v15;
  *(v18 + 24) = v12;
  sub_1000A75DC(&qword_10011FA98, 255, &type metadata accessor for NCProtoCallState, &protocol conformance descriptor for NCProtoCallState);
  sub_1000E0E38();

  (*(*(v17 - 8) + 56))(v13, 0, 1, v17);
  *(v1 + 504) = sub_1000D605C(2);
  v33 = swift_allocObject();
  *(v1 + 512) = v33;
  *(v33 + 16) = 0;
  v19 = sub_1000E2DA8();
  v34 = v20;
  v35 = v19;
  v37(v44, v11, v36);
  sub_10000CB64(v13, v14, &unk_10011FA80, &qword_1000F2660);
  v21 = (v9 + 16) & ~v9;
  v22 = (v21 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + *(v38 + 80) + 9) & ~*(v38 + 80);
  v25 = (v24 + v40) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v1 + 520) = v26;
  v43(v26 + v21, v44, v36);
  *(v26 + v22) = v41;
  v27 = v26 + v23;
  *v27 = v42;
  *(v27 + 8) = 1;
  sub_1000AD400(v32, v26 + v24, &unk_10011FA80, &qword_1000F2660);
  *(v26 + v24 + v40) = 1;
  *(v26 + v25 + 8) = 3;
  *(v26 + ((v25 + 23) & 0xFFFFFFFFFFFFFFF8)) = v33;
  v28 = v42;

  v29 = swift_task_alloc();
  *(v1 + 528) = v29;
  *v29 = v1;
  v29[1] = sub_100078C6C;
  v30 = *(v1 + 160);

  return sub_10005D2F4(v30, v35, v34, &unk_1000F2688, v26);
}

uint64_t sub_100078C6C()
{
  v2 = *v1;
  *(*v1 + 536) = v0;

  if (v0)
  {
    v3 = *(v2 + 400);
    v4 = sub_100078F20;
  }

  else
  {
    v5 = *(v2 + 400);

    v4 = sub_100078D94;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100078D94()
{
  v1 = v0[63];
  v2 = v0[53];
  v12 = v0[54];
  v3 = v0[37];
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[32];
  v8 = v0[29];
  v7 = v0[30];
  v9 = v0[28];

  sub_1000D6278(2, v1);

  sub_1000033C8(v9, &unk_10011FA80, &qword_1000F2660);
  (*(v4 + 8))(v3, v5);

  (*(v7 + 8))(v6, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100078F20()
{
  v42 = v0;
  v1 = v0[56];
  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[33];

  v1(v3, v2, v4);

  swift_errorRetain();
  v5 = sub_1000E1EE8();
  v6 = sub_1000E2698();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[36];
    v9 = v0[33];
    v8 = v0[34];
    v10 = v0[22];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v41[0] = swift_slowAlloc();
    *v11 = 136315650;
    *(v11 + 4) = sub_100029C70(*(v10 + 16), *(v10 + 24), v41);
    *(v11 + 12) = 2080;
    sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = sub_1000E2C18();
    v15 = v14;
    v40 = *(v8 + 8);
    v40(v7, v9);
    v16 = sub_100029C70(v13, v15, v41);

    *(v11 + 14) = v16;
    *(v11 + 22) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v17;
    *v12 = v17;
    _os_log_impl(&_mh_execute_header, v5, v6, "[Handoff][Push] Failed to add %s to %s due to %@.", v11, 0x20u);
    sub_1000033C8(v12, &unk_10011EAC0, &unk_1000F0E60);

    swift_arrayDestroy();
  }

  else
  {
    v18 = v0[36];
    v19 = v0[33];
    v20 = v0[34];

    v40 = *(v20 + 8);
    v40(v18, v19);
  }

  v21 = v0[64];
  swift_beginAccess();
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = *(v0[21] + v0[52]);
    v24 = v22;
    isa = sub_1000E0D18().super.isa;
    v26 = [v23 activeConversationWithUUID:isa];

    if (v26)
    {
      [*(v0[21] + v0[52]) kickMember:v24 conversation:v26];

      v24 = v26;
    }
  }

  v27 = v0[63];
  v28 = v0[37];
  v29 = v0[33];
  v39 = v0[32];
  v31 = v0[29];
  v30 = v0[30];
  v32 = v0[28];
  swift_willThrow();

  sub_1000D6278(2, v27);

  sub_1000033C8(v32, &unk_10011FA80, &qword_1000F2660);
  v40(v28, v29);
  (*(v30 + 8))(v39, v31);
  v34 = v0[53];
  v33 = v0[54];
  v35 = *(v0[21] + v0[52]);
  v36 = sub_1000E0D18().super.isa;
  [v35 leaveConversationWithUUID:v36];

  swift_willThrow();

  v37 = v0[1];

  return v37();
}

uint64_t sub_1000793DC()
{
  v2 = v0[53];
  v1 = v0[54];
  v3 = *(v0[21] + v0[52]);
  isa = sub_1000E0D18().super.isa;
  [v3 leaveConversationWithUUID:isa];

  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_10007952C(id *a1, uint64_t a2)
{
  v3 = sub_1000E0D68();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 UUID];
  sub_1000E0D38();

  v8 = sub_1000E0D28();
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

uint64_t sub_100079638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v4 = sub_1000E0D68();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v3[8] = *(v5 + 64);
  v3[9] = swift_task_alloc();
  v6 = sub_10000ADE4(&qword_10011FBE0, &qword_1000F2850);
  v3[10] = v6;
  v3[11] = *(v6 - 8);
  v3[12] = swift_task_alloc();
  v7 = sub_10000ADE4(&qword_10011FBE8, &qword_1000F2858);
  v3[13] = v7;
  v3[14] = *(v7 - 8);
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_1000797D0, 0, 0);
}

uint64_t sub_1000797D0()
{
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v1 = qword_1001230F0;
  *(v0 + 128) = qword_1001230F0;

  return _swift_task_switch(sub_100079868, v1, 0);
}

uint64_t sub_100079868()
{
  v0[2] = *(*(v0[4] + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationPublishers) + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService22ConversationPublishers_joinedConversationSubject);
  sub_10000ADE4(&unk_100120850, &qword_1000F2488);
  sub_100002C64(&qword_10011F9A0, &unk_100120850, &qword_1000F2488, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v0[17] = sub_1000E2028();

  return _swift_task_switch(sub_10007994C, 0, 0);
}

uint64_t sub_10007994C()
{
  v13 = v0[14];
  v14 = v0[16];
  v1 = v0[12];
  v12 = v0[13];
  v10 = v0[15];
  v11 = v0[11];
  v9 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v7 = v0[5];
  v8 = v0[9];
  v0[3] = v0[17];
  sub_10000ADE4(&qword_10011F9A8, &qword_1000F2490);
  sub_10000CAAC(0, qword_10011F0D0, TUConversation_ptr);
  sub_100002C64(&qword_10011F9B0, &qword_10011F9A8, &qword_1000F2490, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_1000E2038();

  (*(v2 + 16))(v8, v7, v3);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  (*(v2 + 32))(v5 + v4, v8, v3);
  sub_100002C64(&qword_10011FBF0, &qword_10011FBE0, &qword_1000F2850, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  sub_1000E2078();

  (*(v11 + 8))(v1, v9);
  sub_100002C64(&qword_10011FBF8, &qword_10011FBE8, &qword_1000F2858, &protocol conformance descriptor for Publishers.Filter<A>);
  v0[18] = sub_1000E2028();
  (*(v13 + 8))(v10, v12);

  return _swift_task_switch(sub_100079BE8, v14, 0);
}

uint64_t sub_100079BE8()
{
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_100079CA0;
  v2 = *(v0 + 144);

  return sub_10009F290(v2);
}

uint64_t sub_100079CA0(void *a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  v5 = *(v4 + 128);
  if (v1)
  {
    v6 = sub_100079E68;
  }

  else
  {

    v6 = sub_100079DD8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100079DD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100079E68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100079EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000E15C8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1000E1C28())
  {
    sub_1000E1C08();
  }

  sub_1000E0F38();
  (*(v5 + 104))(v7, enum case for NCProtoConversationAVMode.video(_:), v4);
  sub_1000A75DC(&qword_10011FBD0, 255, &type metadata accessor for NCProtoConversationAVMode, &protocol conformance descriptor for NCProtoConversationAVMode);
  sub_1000E2438();
  sub_1000E2438();
  (*(v5 + 8))(v7, v4);
  if (v9[3] == v9[1] && (sub_1000E1C38() & 1) != 0)
  {
    sub_1000E1C18();
  }

  sub_1000E0F58();
  (*(v5 + 16))(v7, a3, v4);
  return sub_1000E0FC8();
}

uint64_t sub_10007A0FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  v5 = sub_1000E1AA8();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v6 = qword_1001230F0;
  v4[18] = qword_1001230F0;

  return _swift_task_switch(sub_10007A204, v6, 0);
}

uint64_t sub_10007A204()
{
  v23 = v0;
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[11];
  v5 = sub_1000E1F08();
  v0[19] = sub_1000049D0(v5, qword_100123128);
  v6 = *(v3 + 16);
  v0[20] = v6;
  v0[21] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);

  v7 = sub_1000E1EE8();
  v8 = sub_1000E2698();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[17];
  v12 = v0[14];
  v11 = v0[15];
  if (v9)
  {
    v21 = v0[12];
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v13 = 136315394;
    v14 = sub_1000E1A98();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = sub_100029C70(v14, v16, &v22);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_100029C70(*(v21 + 16), *(v21 + 24), &v22);
    _os_log_impl(&_mh_execute_header, v7, v8, "[DeclineCall] Received decline continuity call request for %s from %s.", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  v0[22] = v17;
  v19 = *(v0[13] + OBJC_IVAR___CSDNeighborhoodActivityConduit_continuitySessionServer);
  v0[23] = v19;

  return _swift_task_switch(sub_10007A46C, v19, 0);
}

uint64_t sub_10007A46C()
{
  v1 = *(v0 + 144);
  sub_1000BA9C4(*(v0 + 96), (v0 + 16));

  return _swift_task_switch(sub_10007A4E0, v1, 0);
}

uint64_t sub_10007A4E0()
{
  v16 = v0;
  if (v0[3])
  {
    v1 = v0[18];
    v2 = v0[13];
    v3 = v0[11];
    sub_1000033C8((v0 + 2), &unk_10011FA58, &unk_1000F25E0);
    v5 = sub_1000A75DC(&qword_100120020, v4, type metadata accessor for ConduitActor, &unk_1000F2250);
    v6 = swift_task_alloc();
    v0[24] = v6;
    *(v6 + 16) = v2;
    *(v6 + 24) = v3;
    v7 = swift_task_alloc();
    v0[25] = v7;
    *v7 = v0;
    v7[1] = sub_10007A77C;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v7, v1, v5, 0xD000000000000029, 0x80000001000EBB50, sub_1000AAA98, v6, &type metadata for () + 8);
  }

  else
  {

    v8 = sub_1000E1EE8();
    v9 = sub_1000E2678();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = v0[12];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_100029C70(*(v10 + 16), *(v10 + 24), &v15);
      _os_log_impl(&_mh_execute_header, v8, v9, "[DeclineCall] Rejecting request because no session exists for %s.", v11, 0xCu);
      sub_10000E9DC(v12);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_10007A77C()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = sub_10007AA6C;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_10007A8A4;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10007A8A4()
{
  v17 = v0;
  (*(v0 + 160))(*(v0 + 128), *(v0 + 88), *(v0 + 112));
  v1 = sub_1000E1EE8();
  v2 = sub_1000E2698();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 176);
  v5 = *(v0 + 128);
  v6 = *(v0 + 112);
  if (v3)
  {
    v15 = v2;
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    v9 = sub_1000E1A98();
    v11 = v10;
    v4(v5, v6);
    v12 = sub_100029C70(v9, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v1, v15, "[DeclineCall] Successfully declined call (%s).", v7, 0xCu);
    sub_10000E9DC(v8);
  }

  else
  {

    v4(v5, v6);
  }

  sub_1000E1BC8();

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10007AA6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10007AAE0(uint64_t a1, char *a2, uint64_t a3)
{
  v25 = a3;
  v26 = a1;
  v30 = sub_1000E2118();
  v33 = *(v30 - 8);
  __chkstk_darwin(v30);
  v29 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000E2148();
  v31 = *(v5 - 8);
  v32 = v5;
  __chkstk_darwin(v5);
  v28 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000ADE4(&unk_10011FA70, &qword_1000F0868);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - v9;
  v11 = sub_1000E1AA8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = [*&a2[OBJC_IVAR___CSDNeighborhoodActivityConduit_callCenter] queue];
  (*(v12 + 16))(v14, v25, v11);
  (*(v8 + 16))(v10, v26, v7);
  v15 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v16 = (v13 + *(v8 + 80) + v15) & ~*(v8 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  (*(v12 + 32))(v17 + v15, v14, v11);
  (*(v8 + 32))(v17 + v16, v10, v7);
  aBlock[4] = sub_1000AAAA0;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000026A0;
  aBlock[3] = &unk_100115098;
  v18 = _Block_copy(aBlock);
  v19 = a2;
  v20 = v28;
  sub_1000E2138();
  v34 = _swiftEmptyArrayStorage;
  sub_1000A75DC(&qword_10011EA20, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
  sub_100002C64(&qword_10011EA30, &unk_10011ED10, &unk_1000F0A60, &protocol conformance descriptor for [A]);
  v22 = v29;
  v21 = v30;
  sub_1000E28C8();
  v23 = v27;
  sub_1000E2738();
  _Block_release(v18);

  (*(v33 + 8))(v22, v21);
  (*(v31 + 8))(v20, v32);
}

void sub_10007AF7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000E1AA8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + OBJC_IVAR___CSDNeighborhoodActivityConduit_callCenter);
  sub_1000E1A98();
  v9 = sub_1000E2328();

  v20 = [v8 callWithCallUUID:v9];

  if (v20)
  {
    [v8 disconnectCall:v20 withReason:2];
    sub_10000ADE4(&unk_10011FA70, &qword_1000F0868);
    sub_1000E24D8();
    v10 = v20;
  }

  else
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v11 = sub_1000E1F08();
    sub_1000049D0(v11, qword_100123128);
    (*(v5 + 16))(v7, a2, v4);
    v12 = sub_1000E1EE8();
    v13 = sub_1000E2678();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136315138;
      v16 = sub_1000E1A98();
      v18 = v17;
      (*(v5 + 8))(v7, v4);
      v19 = sub_100029C70(v16, v18, &v21);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v12, v13, "[DeclineCall] Rejecting decline continuity call request because we can't find the requested call: %s.", v14, 0xCu);
      sub_10000E9DC(v15);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    v21 = TUMakeNeighborhoodConduitError();
    sub_10000ADE4(&unk_10011FA70, &qword_1000F0868);
    sub_1000E24C8();
  }
}

uint64_t sub_10007B2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_1000E1338();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = *(v6 + 64);
  v4[10] = swift_task_alloc();
  sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v4[11] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v7 = qword_1001230F0;
  v4[12] = qword_1001230F0;

  return _swift_task_switch(sub_10007B3EC, v7, 0);
}

uint64_t sub_10007B3EC()
{
  v1 = v0[11];
  v2 = v0[10];
  v17 = v2;
  v18 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v19 = v0[6];
  v20 = v0[12];
  v21 = v0[5];
  v5 = v0[4];
  sub_10000ADE4(&qword_10011FC40, &qword_1000F2928);
  swift_allocObject();
  v6 = sub_1000E1FD8();
  v0[13] = v6;
  v7 = sub_1000E2538();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  (*(v3 + 16))(v2, v5, v4);
  v9 = sub_1000A75DC(&qword_100120020, v8, type metadata accessor for ConduitActor, &unk_1000F2250);
  v10 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = v20;
  *(v11 + 3) = v9;
  *(v11 + 4) = v19;
  *(v11 + 5) = v6;
  (*(v3 + 32))(&v11[v10], v17, v4);
  *&v11[(v18 + v10 + 7) & 0xFFFFFFFFFFFFFFF8] = v21;
  v12 = v19;

  sub_100022960(0, 0, v1, &unk_1000F2938, v11);

  v0[2] = v6;
  sub_100002C64(&qword_10011FC48, &qword_10011FC40, &qword_1000F2928, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v13 = sub_1000E2028();
  v0[14] = v13;
  v14 = swift_task_alloc();
  v0[15] = v14;
  *v14 = v0;
  v14[1] = sub_10007B6A8;
  v15 = v0[3];

  return sub_10007107C(v15, v13);
}

uint64_t sub_10007B6A8()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);
    v4 = sub_10007B848;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_10007B7D0;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10007B7D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10007B848()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10007B8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[17] = a6;
  v7[18] = a7;
  v7[15] = a4;
  v7[16] = a5;
  v8 = type metadata accessor for HandoffState(0);
  v7[19] = v8;
  v7[20] = *(v8 - 8);
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v7[23] = type metadata accessor for HandoffInfo(0);
  v7[24] = swift_task_alloc();
  v9 = sub_1000E1338();
  v7[25] = v9;
  v10 = *(v9 - 8);
  v7[26] = v10;
  v7[27] = *(v10 + 64);
  v7[28] = swift_task_alloc();
  v7[29] = swift_task_alloc();
  v7[30] = swift_task_alloc();
  v7[31] = swift_task_alloc();
  sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v7[32] = swift_task_alloc();
  sub_10000ADE4(&qword_10011F888, &qword_1000F22B0);
  v7[33] = swift_task_alloc();
  v7[34] = swift_task_alloc();
  v7[35] = swift_task_alloc();
  v7[36] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v11 = qword_1001230F0;
  v7[37] = qword_1001230F0;

  return _swift_task_switch(sub_10007BB24, v11, 0);
}

uint64_t sub_10007BB24()
{
  v81 = v0;
  v1 = v0[36];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[15];
  v5 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  v0[38] = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  swift_beginAccess();
  sub_10000CB64(v4 + v5, v1, &qword_10011F888, &qword_1000F22B0);
  v6 = *(v3 + 48);
  LODWORD(v2) = v6(v1, 1, v2);
  sub_1000033C8(v1, &qword_10011F888, &qword_1000F22B0);
  if (v2 == 1)
  {
    buf = v5;
    v78 = v4;
    v7 = v0[37];
    v9 = v0[31];
    v8 = v0[32];
    v11 = v0[26];
    v10 = v0[27];
    v12 = v0[25];
    v13 = v0[17];
    v71 = v0[18];
    v70 = v0[16];
    v68 = v9;
    v69 = v0[15];
    v14 = sub_1000E2538();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
    v15 = *(v11 + 16);
    v0[39] = v15;
    v0[40] = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v74 = v15;
    v15(v9, v13, v12);
    v17 = sub_1000A75DC(&qword_100120020, v16, type metadata accessor for ConduitActor, &unk_1000F2250);
    v18 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = swift_allocObject();
    *(v20 + 2) = v7;
    *(v20 + 3) = v17;
    *(v20 + 4) = v69;
    (*(v11 + 32))(&v20[v18], v68, v12);
    *&v20[v19] = v71;
    *&v20[(v19 + 15) & 0xFFFFFFFFFFFFFFF8] = v70;
    v21 = v69;

    v22 = sub_100022678(0, 0, v8, &unk_1000F2988, v20);
    v0[41] = v22;
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v23 = v0[30];
    v24 = v0[25];
    v25 = v0[17];
    v26 = sub_1000E1F08();
    v0[42] = sub_1000049D0(v26, qword_100123128);
    v74(v23, v25, v24);
    v27 = sub_1000E1EE8();
    v28 = sub_1000E2698();
    v29 = os_log_type_enabled(v27, v28);
    v30 = v0[30];
    v31 = v0[25];
    v32 = v0[26];
    if (v29)
    {
      v33 = swift_slowAlloc();
      v75 = v22;
      v34 = swift_slowAlloc();
      v80 = v34;
      *v33 = 136315138;
      v72 = sub_1000E12E8();
      v36 = v35;
      v37 = *(v32 + 8);
      v37(v30, v31);
      v38 = sub_100029C70(v72, v36, &v80);

      *(v33 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v27, v28, "[Handoff][PullExpanse] Initiating task for pulling %s.", v33, 0xCu);
      sub_10000E9DC(v34);
      v22 = v75;
    }

    else
    {

      v37 = *(v32 + 8);
      v37(v30, v31);
    }

    v0[43] = v37;
    v53 = v0[35];
    v55 = v0[19];
    v54 = v0[20];
    *v53 = v22;
    swift_storeEnumTagMultiPayload();
    v56 = *(v54 + 56);
    v0[44] = v56;
    v0[45] = (v54 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v56(v53, 0, 1, v55);
    swift_beginAccess();

    sub_1000A884C(v53, &buf[v78]);
    swift_endAccess();
    sub_100061F64();
    sub_1000033C8(v53, &qword_10011F888, &qword_1000F22B0);
    v57 = swift_task_alloc();
    v0[46] = v57;
    v58 = sub_10000ADE4(&unk_10011F8C0, &qword_1000F0C40);
    *v57 = v0;
    v57[1] = sub_10007C368;
    v60 = v0[23];
    v59 = v0[24];

    return Task.value.getter(v59, v22, v60, v58, &protocol self-conformance witness table for Error);
  }

  else
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v39 = v0[15];
    v40 = sub_1000E1F08();
    sub_1000049D0(v40, qword_100123128);
    v41 = v39;
    v42 = sub_1000E1EE8();
    v43 = sub_1000E2698();

    if (os_log_type_enabled(v42, v43))
    {
      v79 = v43;
      v44 = v4;
      v45 = v5;
      v47 = v0[33];
      v46 = v0[34];
      v73 = v0[19];
      v48 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v80 = v76;
      *v48 = 136315138;
      sub_10000CB64(v44 + v45, v46, &qword_10011F888, &qword_1000F22B0);
      sub_10000CB64(v46, v47, &qword_10011F888, &qword_1000F22B0);
      v49 = v6(v47, 1, v73);
      v50 = v0[33];
      if (v49 == 1)
      {
        sub_1000033C8(v50, &qword_10011F888, &qword_1000F22B0);
        v51 = 0xE300000000000000;
        v52 = 7104878;
      }

      else
      {
        v61 = v0[21];
        v62 = v0[22];
        sub_1000A877C(v50, v62, type metadata accessor for HandoffState);
        sub_1000A87E4(v62, v61, type metadata accessor for HandoffState);
        v52 = sub_1000E2368();
        v51 = v63;
        sub_1000AD5EC(v62, type metadata accessor for HandoffState);
      }

      sub_1000033C8(v0[34], &qword_10011F888, &qword_1000F22B0);
      v64 = sub_100029C70(v52, v51, &v80);

      *(v48 + 4) = v64;
      _os_log_impl(&_mh_execute_header, v42, v79, "[Handoff][PullExpanse] Rejecting pull because we're already in a session: %s)", v48, 0xCu);
      sub_10000E9DC(v76);
    }

    v65 = TUMakeNeighborhoodConduitError();
    v0[14] = v65;
    sub_1000E1FB8();

    v66 = v0[1];

    return v66();
  }
}

uint64_t sub_10007C368()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  v3 = *(v2 + 296);
  if (v0)
  {
    v4 = sub_10007C7C0;
  }

  else
  {
    v4 = sub_10007C494;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10007C494()
{
  v29 = v0;
  v1 = v0[44];
  v25 = v0[39];
  v2 = v0[38];
  v3 = v0[35];
  v4 = v0[29];
  v5 = v0[25];
  v6 = v0[19];
  v7 = v0[17];
  v8 = v0[15];
  sub_1000A87E4(v0[24], v3, type metadata accessor for HandoffInfo);
  swift_storeEnumTagMultiPayload();
  v1(v3, 0, 1, v6);
  swift_beginAccess();
  sub_1000A884C(v3, v8 + v2);
  swift_endAccess();
  sub_100061F64();
  sub_1000033C8(v3, &qword_10011F888, &qword_1000F22B0);
  v25(v4, v7, v5);
  v9 = sub_1000E1EE8();
  v10 = sub_1000E2698();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[43];
  v13 = v0[29];
  v14 = v0[25];
  v15 = v0[24];
  if (v11)
  {
    v16 = swift_slowAlloc();
    v26 = v12;
    v17 = swift_slowAlloc();
    v28 = v17;
    *v16 = 136315138;
    v18 = sub_1000E12E8();
    v27 = v15;
    v20 = v19;
    v26(v13, v14);
    v21 = sub_100029C70(v18, v20, &v28);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v9, v10, "[Handoff][PullExpanse] Successfully pulled %s.", v16, 0xCu);
    sub_10000E9DC(v17);

    v22 = v27;
  }

  else
  {

    v12(v13, v14);
    v22 = v15;
  }

  sub_1000AD5EC(v22, type metadata accessor for HandoffInfo);

  v23 = v0[1];

  return v23();
}

uint64_t sub_10007C7C0()
{
  v27 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 224);
  v3 = *(v0 + 200);
  v4 = *(v0 + 136);

  v1(v2, v4, v3);
  swift_errorRetain();
  v5 = sub_1000E1EE8();
  v6 = sub_1000E2678();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 224);
    v24 = *(v0 + 200);
    v25 = *(v0 + 344);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v8 = 136315394;
    v11 = sub_1000E12E8();
    v13 = v12;
    v25(v7, v24);
    v14 = sub_100029C70(v11, v13, &v26);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v15;
    *v9 = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "[Handoff][PullExpanse] Failed to pull %s due to %@.", v8, 0x16u);
    sub_1000033C8(v9, &unk_10011EAC0, &unk_1000F0E60);

    sub_10000E9DC(v10);
  }

  else
  {
    v16 = *(v0 + 344);
    v17 = *(v0 + 224);
    v18 = *(v0 + 200);

    v16(v17, v18);
  }

  v19 = *(v0 + 304);
  v20 = *(v0 + 280);
  v21 = *(v0 + 120);
  (*(v0 + 352))(v20, 1, 1, *(v0 + 152));
  swift_beginAccess();
  sub_1000A884C(v20, v21 + v19);
  swift_endAccess();
  sub_100061F64();

  sub_1000033C8(v20, &qword_10011F888, &qword_1000F22B0);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_10007CAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = v7;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v13 = swift_task_alloc();
  *(v11 + 16) = v13;
  *v13 = v11;
  v13[1] = sub_100002D64;

  return sub_10007CBE4(a1, a5, a6, a7);
}

uint64_t sub_10007CBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  sub_10000ADE4(&unk_10011F0C0, &qword_1000F1670);
  v5[11] = swift_task_alloc();
  v6 = sub_1000E0D68();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v7 = sub_1000E1338();
  v5[15] = v7;
  v8 = *(v7 - 8);
  v5[16] = v8;
  v5[17] = *(v8 + 64);
  v5[18] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v9 = qword_1001230F0;
  v5[19] = qword_1001230F0;

  return _swift_task_switch(sub_10007CD80, v9, 0);
}

uint64_t sub_10007CD80()
{
  v1 = swift_allocObject();
  v0[20] = v1;
  *(v1 + 16) = 0;
  if (qword_10011DCA8 != -1)
  {
    swift_once();
  }

  v2 = v0[17];
  v3 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v19 = v3;
  v20 = v0[10];
  v21 = v0[9];
  v6 = v0[7];
  v18 = v0[8];
  v7 = sub_1000E2DA8();
  v22 = v8;
  v23 = v7;
  (*(v4 + 16))(v3, v6, v5);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = (v2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  v0[21] = v13;
  (*(v4 + 32))(v13 + v9, v19, v5);
  *(v13 + v10) = v20;
  *(v13 + v11) = v18;
  *(v13 + v12) = v1;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = v21;
  v14 = v20;

  v15 = swift_task_alloc();
  v0[22] = v15;
  *v15 = v0;
  v15[1] = sub_10007CFA4;
  v16 = v0[6];

  return sub_10005D2F4(v16, v23, v22, &unk_1000F29A0, v13);
}

uint64_t sub_10007CFA4()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);
    v4 = sub_10007D15C;
  }

  else
  {
    v5 = *(v2 + 152);

    v4 = sub_10007D0CC;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10007D0CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10007D15C()
{

  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v1 = sub_1000E1F08();
  sub_1000049D0(v1, qword_100123128);
  swift_errorRetain();
  v2 = sub_1000E1EE8();
  v3 = sub_1000E2698();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "[Handoff][PullExpanse] Pull failed with error %@.", v4, 0xCu);
    sub_1000033C8(v5, &unk_10011EAC0, &unk_1000F0E60);
  }

  v7 = v0[20];

  swift_beginAccess();
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v0[12];
    v10 = v0[13];
    v11 = v0[11];
    v12 = v8;
    sub_1000E12E8();
    sub_1000E0CF8();

    if ((*(v10 + 48))(v11, 1, v9) == 1)
    {
      v13 = v0[11];

      sub_1000033C8(v13, &unk_10011F0C0, &qword_1000F1670);
    }

    else
    {
      v14 = v0[10];
      (*(v0[13] + 32))(v0[14], v0[11], v0[12]);
      v15 = OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager;
      v16 = *(v14 + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager);
      isa = sub_1000E0D18().super.isa;
      v18 = [v16 activeConversationWithUUID:isa];

      v20 = v0[13];
      v19 = v0[14];
      v21 = v0[12];
      if (v18)
      {
        v22 = *(v14 + v15);
        [v22 kickMember:v12 conversation:v18];

        (*(v20 + 8))(v19, v21);
      }

      else
      {
        (*(v20 + 8))(v0[14], v0[12]);
      }
    }
  }

  v0[5] = v0[23];
  swift_errorRetain();
  sub_1000E1FB8();

  swift_willThrow();

  v23 = v0[1];

  return v23();
}

uint64_t sub_10007D4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v6 = qword_1001230F0;
  v5[5] = qword_1001230F0;

  return _swift_task_switch(sub_10007D55C, v6, 0);
}

uint64_t sub_10007D55C()
{
  sub_1000E1FF8();
  v1 = v0[2];
  v0[6] = v1;
  if (v1)
  {
    if (qword_10011DC18 != -1)
    {
      swift_once();
    }

    v2 = qword_1001230E0;

    return _swift_task_switch(sub_10007D650, v2, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_10007D650()
{
  v1 = *(v0 + 40);
  *(v0 + 56) = sub_100012CD8();

  return _swift_task_switch(sub_10007D6BC, v1, 0);
}

uint64_t sub_10007D6BC()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v2;
  LOBYTE(v2) = sub_10006EE20(v1, v2);

  v4 = v0[6];
  if (v2)
  {
    v5 = v0[4];
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
    v8 = swift_task_alloc();
    v0[8] = v8;
    *v8 = v0;
    v8[1] = sub_10007D7D0;

    return sub_10006F004(v6, v7, v4);
  }

  else
  {

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_10007D7D0()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_10007D8E0, v1, 0);
}

uint64_t sub_10007D8E0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10007D940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230F0;

  return _swift_task_switch(sub_10007D9D8, v5, 0);
}

uint64_t sub_10007D9D8()
{
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v1 = sub_1000E1F08();
  sub_1000049D0(v1, qword_100123128);
  v2 = sub_1000E1EE8();
  v3 = sub_1000E2698();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Cancelling suggestion due to cancel add member event.", v4, 2u);
  }

  v5 = *(v0 + 16);

  *(v0 + 24) = *(v5 + OBJC_IVAR___CSDNeighborhoodActivityConduit_suggestionController);
  if (qword_10011DC08 != -1)
  {
    swift_once();
  }

  v6 = qword_1001230D0;

  return _swift_task_switch(sub_10007DB3C, v6, 0);
}

uint64_t sub_10007DB3C()
{
  sub_100031750(4);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10007DBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230F0;

  return _swift_task_switch(sub_10007DC38, v5, 0);
}

uint64_t sub_10007DC38()
{
  v1 = *(v0 + 16);
  sub_1000A7CE4(0, v1, v1);

  v2 = *(v0 + 8);

  return v2();
}

void sub_10007DCB0(uint64_t a1, char *a2)
{
  v52 = a2;
  v3 = type metadata accessor for HandoffState(0);
  v50 = *(v3 - 8);
  v51 = v3;
  v4 = __chkstk_darwin(v3);
  v46 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v47 = &v46 - v6;
  v7 = sub_10000ADE4(&qword_10011F888, &qword_1000F22B0);
  v8 = __chkstk_darwin(v7 - 8);
  v48 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v49 = &v46 - v11;
  __chkstk_darwin(v10);
  v13 = &v46 - v12;
  v14 = sub_10000ADE4(&qword_10011F8B8, &qword_1000F22D8);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v46 - v18;
  v20 = type metadata accessor for HandoffInfo(0);
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v46 - v25;
  sub_10000CB64(a1, v19, &qword_10011F8B8, &qword_1000F22D8);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    v27 = v52;
    sub_1000033C8(v19, &qword_10011F8B8, &qword_1000F22D8);
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v28 = sub_1000E1F08();
    sub_1000049D0(v28, qword_100123128);
    v29 = v27;
    v30 = sub_1000E1EE8();
    v31 = sub_1000E2698();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v53 = v33;
      *v32 = 136315138;
      v34 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
      swift_beginAccess();
      v35 = &v29[v34];
      v36 = v49;
      sub_10000CB64(v35, v49, &qword_10011F888, &qword_1000F22B0);
      v37 = v48;
      sub_10000CB64(v36, v48, &qword_10011F888, &qword_1000F22B0);
      if ((*(v50 + 48))(v37, 1, v51) == 1)
      {
        sub_1000033C8(v37, &qword_10011F888, &qword_1000F22B0);
        v38 = 0xE300000000000000;
        v39 = 7104878;
      }

      else
      {
        v43 = v47;
        sub_1000A877C(v37, v47, type metadata accessor for HandoffState);
        sub_1000A87E4(v43, v46, type metadata accessor for HandoffState);
        v39 = sub_1000E2368();
        v38 = v44;
        sub_1000AD5EC(v43, type metadata accessor for HandoffState);
      }

      sub_1000033C8(v36, &qword_10011F888, &qword_1000F22B0);
      v45 = sub_100029C70(v39, v38, &v53);

      *(v32 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v30, v31, "Skipping contact push because we're not handed off: %s)", v32, 0xCu);
      sub_10000E9DC(v33);
    }
  }

  else
  {
    sub_1000A877C(v19, v26, type metadata accessor for HandoffInfo);
    v40 = v52;
    sub_10007E37C(v26, v17);
    (*(v21 + 56))(v17, 0, 1, v20);
    sub_1000A877C(v17, v24, type metadata accessor for HandoffInfo);
    sub_1000A87E4(v24, v13, type metadata accessor for HandoffInfo);
    v41 = v51;
    swift_storeEnumTagMultiPayload();
    (*(v50 + 56))(v13, 0, 1, v41);
    v42 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
    swift_beginAccess();
    sub_1000A884C(v13, &v40[v42]);
    swift_endAccess();
    sub_100061F64();
    sub_1000033C8(v13, &qword_10011F888, &qword_1000F22B0);
    sub_1000AD5EC(v24, type metadata accessor for HandoffInfo);
    sub_1000AD5EC(v26, type metadata accessor for HandoffInfo);
  }
}

void sub_10007E37C(char *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v4 = sub_10000ADE4(&qword_10011F8B8, &qword_1000F22D8);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v76 - v8;
  v10 = type metadata accessor for HandoffInfo(0);
  v79 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = v76 - v15;
  v76[1] = v17;
  __chkstk_darwin(v14);
  v78 = v76 - v18;
  v19 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v19 - 8);
  v81 = v76 - v20;
  v77 = v2;
  v21 = *&v2[OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager];
  isa = sub_1000E0D18().super.isa;
  v23 = [v21 activeConversationWithUUID:isa];

  if (v23)
  {
    v24 = sub_10007ED90();
    v25 = sub_10007EF08(*&a1[*(v10 + 40)], v24);
    v26 = v25;
    v27 = v10;
    v28 = v23;
    if ((v25 & 0xC000000000000001) != 0)
    {
      v29 = sub_1000E2968();
      v30 = v82;
      if (v29)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v30 = v82;
      if (*(v25 + 16))
      {
LABEL_4:
        v31 = v30;
        sub_1000CFEF8(v26);
        v33 = sub_1000D4CDC(v32);

        v34 = sub_1000206F8(v33, 1, 0, 0);

        if (v34)
        {
          v76[0] = v27;
          if (qword_10011DC60 != -1)
          {
            swift_once();
          }

          v35 = sub_1000E1F08();
          sub_1000049D0(v35, qword_100123128);

          v36 = sub_1000E1EE8();
          v37 = sub_1000E2698();
          v38 = os_log_type_enabled(v36, v37);
          v39 = v78;
          v82 = v31;
          if (v38)
          {
            v40 = swift_slowAlloc();
            *v40 = 134217984;
            *(v40 + 4) = *(v34 + 16);

            _os_log_impl(&_mh_execute_header, v36, v37, "Pushing %ld new contacts.", v40, 0xCu);
          }

          else
          {
          }

          v63 = sub_1000E2538();
          (*(*(v63 - 8) + 56))(v81, 1, 1, v63);
          sub_1000A87E4(a1, v39, type metadata accessor for HandoffInfo);
          v64 = qword_10011DC30;
          v65 = v77;
          v67 = v28;
          v77 = a1;
          v68 = v39;
          if (v64 != -1)
          {
            swift_once();
          }

          v69 = qword_1001230F0;
          v70 = sub_1000A75DC(&qword_100120020, v66, type metadata accessor for ConduitActor, &unk_1000F2250);
          v71 = (*(v79 + 80) + 56) & ~*(v79 + 80);
          v72 = swift_allocObject();
          v72[2] = v69;
          v72[3] = v70;
          v72[4] = v65;
          v72[5] = v34;
          v72[6] = v67;
          sub_1000A877C(v68, v72 + v71, type metadata accessor for HandoffInfo);

          sub_1000223DC(0, 0, v81, &unk_1000F2390, v72);

          sub_1000A87E4(v77, v80, type metadata accessor for HandoffInfo);
          sub_10001E388(v26);
        }

        else
        {

          if (qword_10011DC60 != -1)
          {
            swift_once();
          }

          v58 = sub_1000E1F08();
          sub_1000049D0(v58, qword_100123128);
          v59 = sub_1000E1EE8();
          v60 = sub_1000E2698();
          if (os_log_type_enabled(v59, v60))
          {
            v61 = swift_slowAlloc();
            *v61 = 0;
            _os_log_impl(&_mh_execute_header, v59, v60, "Skipping contact push because we don't have contact data for the new handles.", v61, 2u);
          }

          sub_1000A88BC();
          swift_allocError();
          *v62 = 1;
          swift_willThrow();
        }

        return;
      }
    }

    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v54 = sub_1000E1F08();
    sub_1000049D0(v54, qword_100123128);
    v55 = sub_1000E1EE8();
    v56 = sub_1000E2698();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&_mh_execute_header, v55, v56, "Skipping contact push because there are no new handles in the conversation.", v57, 2u);
    }

    sub_1000A87E4(a1, v80, type metadata accessor for HandoffInfo);
  }

  else
  {
    v81 = v16;
    v82 = v9;
    v76[0] = v10;
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v41 = sub_1000E1F08();
    sub_1000049D0(v41, qword_100123128);
    v42 = v81;
    sub_1000A87E4(a1, v81, type metadata accessor for HandoffInfo);
    v43 = sub_1000E1EE8();
    v44 = sub_1000E2698();
    v45 = os_log_type_enabled(v43, v44);
    v46 = v82;
    if (v45)
    {
      v47 = v13;
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v83 = v49;
      *v48 = 136315138;
      sub_1000A87E4(v42, v46, type metadata accessor for HandoffInfo);
      v50 = v79;
      v51 = v76[0];
      (*(v79 + 56))(v46, 0, 1, v76[0]);
      sub_10000CB64(v46, v7, &qword_10011F8B8, &qword_1000F22D8);
      if ((*(v50 + 48))(v7, 1, v51) == 1)
      {
        sub_1000033C8(v7, &qword_10011F8B8, &qword_1000F22D8);
        v52 = 0xE300000000000000;
        v53 = 7104878;
      }

      else
      {
        sub_1000A877C(v7, v47, type metadata accessor for HandoffInfo);
        sub_1000A87E4(v47, v78, type metadata accessor for HandoffInfo);
        v53 = sub_1000E2368();
        v52 = v73;
        sub_1000AD5EC(v47, type metadata accessor for HandoffInfo);
      }

      sub_1000033C8(v82, &qword_10011F8B8, &qword_1000F22D8);
      sub_1000AD5EC(v81, type metadata accessor for HandoffInfo);
      v74 = sub_100029C70(v53, v52, &v83);

      *(v48 + 4) = v74;
      _os_log_impl(&_mh_execute_header, v43, v44, "Skipping contact push, no matching conversation for handoff info: %s)", v48, 0xCu);
      sub_10000E9DC(v49);
    }

    else
    {

      sub_1000AD5EC(v42, type metadata accessor for HandoffInfo);
    }

    sub_1000A88BC();
    swift_allocError();
    *v75 = 0;
    swift_willThrow();
  }
}

uint64_t sub_10007ED90()
{
  v1 = [v0 remoteMembers];
  sub_10000CAAC(0, &qword_10011F890, TUConversationMember_ptr);
  sub_10000EA70(&qword_10011F898, &qword_10011F890, TUConversationMember_ptr, &protocol conformance descriptor for NSObject);
  v2 = sub_1000E25E8();

  v3 = sub_10001DBD4(v2);

  v4 = [v0 localMember];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 handle];
    sub_1000E2448();
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1000E2488();
    }

    sub_1000E24A8();
  }

  v7 = sub_1000D4F64(v3);

  return v7;
}

void *sub_10007EF08(uint64_t a1, Swift::Int a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_1000E2968();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_1000A4758(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= sub_1000E2968() / 8)
  {
    goto LABEL_13;
  }

  v6 = sub_1000E2968();
  v2 = sub_1000D30AC(v5, v6);
LABEL_10:

  return sub_1000A49DC(a1, v2);
}

uint64_t sub_10007EFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_1000E0D68();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v9 = qword_1001230F0;
  v7[9] = qword_1001230F0;

  return _swift_task_switch(sub_10007F0F8, v9, 0);
}

uint64_t sub_10007F0F8()
{
  v1 = *(v0 + 40);
  v2 = [*(v0 + 32) groupUUID];
  sub_1000E0D38();

  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_10007F1D0;
  v6 = *(v0 + 64);
  v7 = *(v0 + 24);

  return sub_10007F3DC(v7, v6, v4, v3);
}

uint64_t sub_10007F1D0()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *v1;
  v5[11] = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v6 = v5[9];

    return _swift_task_switch(sub_10007F378, v6, 0);
  }

  else
  {

    v7 = v5[1];

    return v7();
  }
}

uint64_t sub_10007F378()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10007F3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_1000E1558();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v7 = qword_1001230F0;
  v5[10] = qword_1001230F0;

  return _swift_task_switch(sub_10007F4DC, v7, 0);
}

uint64_t sub_10007F4DC()
{
  v1 = v0[2].i64[1];
  *(swift_task_alloc() + 16) = vextq_s8(v0[1], v0[1], 8uLL);
  sub_1000A75DC(&qword_10011ED98, 255, &type metadata accessor for NCProtoContactUpdateEvent, &protocol conformance descriptor for NCProtoContactUpdateEvent);
  sub_1000E0E38();

  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v0[5].i64[1] = qword_1001230E0;
  v2 = swift_task_alloc();
  v0[6].i64[0] = v2;
  *v2 = v0;
  v2[1] = sub_10007F66C;
  v3 = v0[4].i64[1];
  v4 = v0[2].i64[0];

  return sub_1000265E0(1, v3, v4, v1, 0);
}

uint64_t sub_10007F66C()
{
  v2 = *(*v1 + 88);
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_10007F814;
  }

  else
  {
    v3 = sub_10007F794;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_10007F794()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10007F814()
{
  v1 = v0[10];
  (*(v0[8] + 8))(v0[9], v0[7]);

  return _swift_task_switch(sub_10007F88C, v1, 0);
}

uint64_t sub_10007F88C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10007F8F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[0] = a3;
  v3 = sub_1000E21E8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000E2248();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E2238();
  v13[1] = sub_1000E0D48();
  v13[2] = v11;
  sub_1000E2218();
  sub_1000E2228();
  sub_1000E21D8();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  sub_1000E1538();
  sub_1000A3F70(v13[0]);
  return sub_1000E1548();
}

uint64_t sub_10007FB1C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1000E0D68();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v4 = qword_1001230F0;
  v2[8] = qword_1001230F0;

  return _swift_task_switch(sub_10007FC14, v4, 0);
}

uint64_t sub_10007FC14()
{
  sub_1000E1FF8();
  v1 = v0[2];
  v0[9] = v1;
  if (v1)
  {
    v2 = [v1 UUID];
    sub_1000E0D38();

    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_10007FE1C;
    v4 = v0[7];
    v5 = v0[3];

    return sub_10005B2F8(v5, v4);
  }

  else
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v7 = sub_1000E1F08();
    sub_1000049D0(v7, qword_100123128);
    v8 = sub_1000E1EE8();
    v9 = sub_1000E2698();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "[Handoff][Push] Unable to push because no conversation available", v10, 2u);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_10007FE1C()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = v2[8];
  (*(v2[6] + 8))(v2[7], v2[5]);
  if (v0)
  {
    v4 = sub_1000AE204;
  }

  else
  {
    v4 = sub_1000AE280;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10007FF98(uint64_t a1, char a2)
{
  *(v3 + 96) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  v4 = sub_1000E0D68();
  *(v3 + 40) = v4;
  *(v3 + 48) = *(v4 - 8);
  *(v3 + 56) = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230F0;
  *(v3 + 64) = qword_1001230F0;

  return _swift_task_switch(sub_100080094, v5, 0);
}

uint64_t sub_100080094()
{
  sub_1000E1FF8();
  v1 = *(v0 + 16);
  *(v0 + 72) = v1;
  if (v1)
  {
    v2 = [v1 UUID];
    sub_1000E0D38();

    v3 = swift_task_alloc();
    *(v0 + 80) = v3;
    *v3 = v0;
    v3[1] = sub_1000802A0;
    v4 = *(v0 + 56);
    v5 = *(v0 + 24);
    v6 = *(v0 + 96);

    return sub_10005D678(v4, v5, v6);
  }

  else
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v8 = sub_1000E1F08();
    sub_1000049D0(v8, qword_100123128);
    v9 = sub_1000E1EE8();
    v10 = sub_1000E2698();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "[HandoffConversation] Unable to push because no conversation available", v11, 2u);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1000802A0()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = v2[8];
  (*(v2[6] + 8))(v2[7], v2[5]);
  if (v0)
  {
    v4 = sub_10008048C;
  }

  else
  {
    v4 = sub_10008041C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10008041C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008048C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000804F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  *(v8 + 88) = a6;
  *(v8 + 96) = v16;
  *(v8 + 568) = a8;
  *(v8 + 567) = a7;
  *(v8 + 72) = a4;
  *(v8 + 80) = a5;
  *(v8 + 64) = a1;
  sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  *(v8 + 104) = swift_task_alloc();
  v9 = *(sub_10000ADE4(&unk_10011FA80, &qword_1000F2660) - 8);
  *(v8 + 112) = v9;
  *(v8 + 120) = *(v9 + 64);
  *(v8 + 128) = swift_task_alloc();
  *(v8 + 136) = swift_task_alloc();
  v10 = sub_1000E0FE8();
  *(v8 + 144) = v10;
  *(v8 + 152) = *(v10 - 8);
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 184) = swift_task_alloc();
  v11 = sub_1000E0D68();
  *(v8 + 192) = v11;
  v12 = *(v11 - 8);
  *(v8 + 200) = v12;
  *(v8 + 208) = *(v12 + 64);
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v13 = qword_1001230F0;
  *(v8 + 264) = qword_1001230F0;

  return _swift_task_switch(sub_10008077C, v13, 0);
}

uint64_t sub_10008077C()
{
  v46 = v0;
  v1 = v0[9];
  v2 = OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager;
  v0[34] = OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager;
  v3 = *(v1 + v2);
  isa = sub_1000E0D18().super.isa;
  v5 = [v3 activeConversationWithUUID:isa];
  v0[35] = v5;

  if (v5)
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v6 = v0[31];
    v7 = v0[24];
    v8 = v0[25];
    v9 = v0[10];
    v10 = sub_1000E1F08();
    v0[36] = sub_1000049D0(v10, qword_100123128);
    v11 = *(v8 + 16);
    v0[37] = v11;
    v0[38] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v11(v6, v9, v7);
    v12 = sub_1000E1EE8();
    v13 = sub_1000E2698();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[31];
    v16 = v0[24];
    v17 = v0[25];
    if (v14)
    {
      v18 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45[0] = v44;
      *v18 = 136315138;
      sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v19 = sub_1000E2C18();
      v21 = v20;
      v22 = *(v17 + 8);
      v22(v15, v16);
      v23 = sub_100029C70(v19, v21, v45);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v12, v13, "[HandoffConversation] Looking up call state for conversation with uuid: %s", v18, 0xCu);
      sub_10000E9DC(v44);
    }

    else
    {

      v22 = *(v17 + 8);
      v22(v15, v16);
    }

    v0[39] = v22;
    if (qword_10011DC18 != -1)
    {
      swift_once();
    }

    v41 = qword_1001230E0;

    return _swift_task_switch(sub_100080CF8, v41, 0);
  }

  else
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v24 = v0[32];
    v25 = v0[24];
    v26 = v0[25];
    v27 = v0[10];
    v28 = sub_1000E1F08();
    sub_1000049D0(v28, qword_100123128);
    (*(v26 + 16))(v24, v27, v25);
    v29 = sub_1000E1EE8();
    v30 = sub_1000E2678();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v0[32];
    v33 = v0[24];
    v34 = v0[25];
    if (v31)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v45[0] = v36;
      *v35 = 136315138;
      sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v37 = sub_1000E2C18();
      v39 = v38;
      (*(v34 + 8))(v32, v33);
      v40 = sub_100029C70(v37, v39, v45);

      *(v35 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v29, v30, "[HandoffConversation] Rejecting request because cannot find conversation with uuid: %s", v35, 0xCu);
      sub_10000E9DC(v36);
    }

    else
    {

      (*(v34 + 8))(v32, v33);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();

    v42 = v0[1];

    return v42();
  }
}

uint64_t sub_100080CF8()
{
  v1 = *(v0 + 264);
  *(v0 + 320) = sub_100012CD8();

  return _swift_task_switch(sub_100080D68, v1, 0);
}

uint64_t sub_100080D68()
{
  v1 = v0[40];
  v2 = [v1 capabilities];
  v0[41] = v2;

  v3 = swift_task_alloc();
  v0[42] = v3;
  *v3 = v0;
  v3[1] = sub_100080E30;
  v4 = v0[35];
  v5 = v0[23];

  return sub_100084150(v5, v4, v2);
}

uint64_t sub_100080E30()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = *(v2 + 264);
    v4 = sub_100082D40;
  }

  else
  {
    v5 = *(v2 + 264);

    v4 = sub_100080F58;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100080F58()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);
  v5 = *(v0 + 567);
  v6 = [*(v0 + 280) presentationContext];
  *(v0 + 352) = [v6 mode];

  v7 = *(v4 + 16);
  *(v0 + 360) = v7;
  *(v0 + 368) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v2, v3);
  if (v5 != 2)
  {
    sub_1000E0F38();
  }

  if (*(v0 + 568) != 2)
  {
    sub_1000E0F58();
  }

  *(v0 + 564) = 0;
  *(v0 + 566) = 0;
  v8 = sub_1000E1EE8();
  v9 = sub_1000E2698();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "[HandoffConversation] Preparing tuconversation handoff.", v10, 2u);
  }

  v11 = swift_task_alloc();
  *(v0 + 376) = v11;
  *v11 = v0;
  v11[1] = sub_100081110;
  v12 = *(v0 + 80);

  return sub_10008470C(v12, 2, 0);
}

uint64_t sub_100081110()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  v3 = *(v2 + 264);
  if (v0)
  {
    v4 = sub_1000837B0;
  }

  else
  {
    v4 = sub_10008123C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10008123C(uint64_t a1)
{
  *(v1 + 564) = 1;
  v2 = sub_1000E1EE8();
  v3 = sub_1000E2698();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[HandoffConversation] Allowlisting device for remote display discovery and requesting connection.", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v1 + 392) = v5;
  *v5 = v1;
  v5[1] = sub_100081364;
  v6 = *(v1 + 184);
  v7 = *(v1 + 88);

  return sub_1000BAB70(v7, v6);
}

uint64_t sub_100081364()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  v3 = *(v2 + 264);
  if (v0)
  {
    v4 = sub_100083C80;
  }

  else
  {
    v4 = sub_100081490;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100081490(uint64_t a1)
{
  *(v1 + 565) = 1;
  v2 = sub_1000E1EE8();
  v3 = sub_1000E2698();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[HandoffConversation] Muting uplink and video before handing off.", v4, 2u);
  }

  v5 = *(v1 + 280);
  v6 = *(v1 + 264);
  v7 = *(v1 + 240);
  v8 = *(v1 + 168);
  v9 = *(v1 + 72);

  sub_1000A75DC(&qword_10011FA98, 255, &type metadata accessor for NCProtoCallState, &protocol conformance descriptor for NCProtoCallState);
  sub_1000E0E38();
  v10 = [v5 groupUUID];
  sub_1000E0D38();

  v12 = sub_1000A75DC(&qword_100120020, v11, type metadata accessor for ConduitActor, &unk_1000F2250);
  *(v1 + 408) = v12;
  v13 = swift_task_alloc();
  *(v1 + 416) = v13;
  v13[2] = v9;
  v13[3] = v7;
  v13[4] = v8;
  v14 = swift_task_alloc();
  *(v1 + 424) = v14;
  *v14 = v1;
  v14[1] = sub_1000816F8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v14, v6, v12, 0xD00000000000001DLL, 0x80000001000EBCE0, sub_1000AE228, v13, &type metadata for () + 8);
}

uint64_t sub_1000816F8()
{
  v2 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v3 = *(v2 + 264);
    v4 = sub_100081C80;
  }

  else
  {
    v5 = *(v2 + 264);

    v4 = sub_100081820;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100081820()
{
  v60 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 312);
  v3 = *(v0 + 240);
  v4 = *(v0 + 192);
  v5 = *(v0 + 184);
  v7 = *(v0 + 160);
  v6 = *(v0 + 168);
  v8 = *(v0 + 144);
  v9 = *(v0 + 152);
  *(v0 + 440) = (*(v0 + 200) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v2(v3, v4);
  v10 = *(v9 + 8);
  *(v0 + 448) = v10;
  *(v0 + 456) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v6, v8);
  *(v0 + 566) = 1;
  v1(v7, v5, v8);
  v11 = sub_1000E1EE8();
  v12 = sub_1000E2698();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 160);
  v15 = *(v0 + 144);
  if (v13)
  {
    v16 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v59 = v57;
    *v16 = 136315138;
    v17 = NCProtoCallState.description.getter();
    v19 = v18;
    v10(v14, v15);
    v20 = sub_100029C70(v17, v19, &v59);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "[HandoffConversation] Laguna connection established, pushing conversation with call state %s.", v16, 0xCu);
    sub_10000E9DC(v57);
  }

  else
  {

    v10(v14, v15);
  }

  v21 = *(v0 + 144);
  v22 = *(v0 + 152);
  v23 = *(v0 + 136);
  (*(v0 + 360))(v23, *(v0 + 176), v21);
  (*(v22 + 56))(v23, 0, 1, v21);
  *(v0 + 464) = sub_1000D605C(2);
  v24 = swift_allocObject();
  *(v0 + 472) = v24;
  v58 = v24;
  *(v24 + 16) = 0;
  if (qword_10011DCA8 != -1)
  {
    swift_once();
  }

  v25 = *(v0 + 296);
  v26 = *(v0 + 232);
  v27 = *(v0 + 200);
  v28 = *(v0 + 192);
  v50 = v28;
  v51 = v26;
  v29 = *(v0 + 128);
  v30 = *(v0 + 136);
  v31 = *(v0 + 112);
  v48 = *(v0 + 208);
  v49 = *(v0 + 120);
  v52 = *(v0 + 88);
  v32 = *(v0 + 80);
  v53 = *(v0 + 72);
  v54 = *(v0 + 96);
  v33 = sub_1000E2DA8();
  v55 = v34;
  v56 = v33;
  v25(v26, v32, v28);
  sub_10000CB64(v30, v29, &unk_10011FA80, &qword_1000F2660);
  v35 = *(v27 + 80);
  *(v0 + 560) = v35;
  v36 = (v35 + 16) & ~v35;
  v37 = (v48 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
  v39 = (*(v31 + 80) + v38 + 9) & ~*(v31 + 80);
  v40 = (v39 + v49) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  *(v0 + 480) = v41;
  v42 = *(v27 + 32);
  *(v0 + 488) = v42;
  *(v0 + 496) = (v27 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v42(v41 + v36, v51, v50);
  *(v41 + v37) = v52;
  v43 = v41 + v38;
  *v43 = v53;
  *(v43 + 8) = 1;
  sub_1000AD400(v29, v41 + v39, &unk_10011FA80, &qword_1000F2660);
  *(v41 + v39 + v49) = 0;
  *(v41 + v40 + 8) = v54;
  *(v41 + ((v40 + 23) & 0xFFFFFFFFFFFFFFF8)) = v58;

  v44 = v53;

  v45 = swift_task_alloc();
  *(v0 + 504) = v45;
  *v45 = v0;
  v45[1] = sub_1000821A0;
  v46 = *(v0 + 64);

  return sub_10005D2F4(v46, v56, v55, &unk_1000F2A50, v41);
}

uint64_t sub_100081C80()
{
  v42 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 240);
  v3 = *(v0 + 192);
  v4 = *(v0 + 168);
  v5 = *(v0 + 144);
  v6 = *(v0 + 152);

  v1(v2, v3);
  (*(v6 + 8))(v4, v5);
  *(v0 + 520) = *(v0 + 432);
  v7 = sub_1000E1EE8();
  v8 = sub_1000E2678();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v41 = v10;
    *v9 = 136315138;
    swift_beginAccess();
    v11 = *(v0 + 564);
    v12 = *(v0 + 565);
    v13 = *(v0 + 566);
    if (*(v0 + 566))
    {
      v14 = 0x10000;
    }

    else
    {
      v14 = 0;
    }

    if (*(v0 + 565))
    {
      v15 = 256;
    }

    else
    {
      v15 = 0;
    }

    v16 = sub_10009EE2C(v15 | v11 | v14);
    v18 = sub_100029C70(v16, v17, &v41);

    *(v9 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "[HandoffConversation] Rolling back for %s.", v9, 0xCu);
    sub_10000E9DC(v10);

    if (v13)
    {
      *(v0 + 570) = v11;
      *(v0 + 569) = v12;
      v19 = *(v0 + 264);
      v20 = *(v0 + 216);
      v21 = *(v0 + 184);
      v22 = *(v0 + 72);
      v23 = [*(v0 + 280) groupUUID];
      sub_1000E0D38();

      v25 = sub_1000A75DC(&qword_100120020, v24, type metadata accessor for ConduitActor, &unk_1000F2250);
      v26 = swift_task_alloc();
      *(v0 + 528) = v26;
      v26[2] = v22;
      v26[3] = v20;
      v26[4] = v21;
      v27 = swift_task_alloc();
      *(v0 + 536) = v27;
      *v27 = v0;
      v27[1] = sub_100082E58;

      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v27, v19, v25, 0xD00000000000001DLL, 0x80000001000EBCE0, sub_1000ACDA4, v26, &type metadata for () + 8);
    }

    if (!v12)
    {
      if (v11)
      {
        v30 = swift_task_alloc();
        *(v0 + 552) = v30;
        *v30 = v0;
        v30[1] = sub_10008352C;
        v31 = *(v0 + 352);
        v32 = *(v0 + 80);

        return sub_10008470C(v32, v31, 0);
      }

      else
      {
        v33 = *(v0 + 280);
        v34 = *(v0 + 176);
        v35 = *(v0 + 184);
        v36 = *(v0 + 144);
        v37 = *(v0 + 152);
        swift_willThrow();

        v38 = *(v37 + 8);
        v38(v34, v36);
        v38(v35, v36);

        v39 = *(v0 + 8);

        return v39();
      }
    }
  }

  else
  {

    LOBYTE(v11) = *(v0 + 384) == 0;
  }

  *(v0 + 571) = v11;
  v28 = swift_task_alloc();
  *(v0 + 544) = v28;
  *v28 = v0;
  v28[1] = sub_100083240;
  v29 = *(v0 + 88);

  return sub_1000BC98C(v29);
}

uint64_t sub_1000821A0()
{
  v2 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v3 = *(v2 + 264);
    v4 = sub_100082554;
  }

  else
  {
    v5 = *(v2 + 264);

    v4 = sub_1000822C8;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000822C8()
{
  v17 = *(v0 + 488);
  v1 = *(v0 + 560);
  v2 = *(v0 + 464);
  v22 = *(v0 + 448);
  v16 = *(v0 + 408);
  v15 = *(v0 + 296);
  v21 = *(v0 + 280);
  v3 = *(v0 + 264);
  v4 = *(v0 + 232);
  v5 = *(v0 + 192);
  v19 = *(v0 + 176);
  v20 = *(v0 + 184);
  v6 = *(v0 + 136);
  v18 = *(v0 + 144);
  v7 = *(v0 + 104);
  v9 = *(v0 + 72);
  v8 = *(v0 + 80);

  sub_1000D6278(2, v2);

  sub_1000033C8(v6, &unk_10011FA80, &qword_1000F2660);
  v10 = sub_1000E2538();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v15(v4, v8, v5);
  v11 = swift_allocObject();
  *(v11 + 2) = v3;
  *(v11 + 3) = v16;
  *(v11 + 4) = v9;
  v17(&v11[(v1 + 40) & ~v1], v4, v5);
  v12 = v9;

  sub_100022960(0, 0, v7, &unk_1000F2A60, v11);

  v22(v19, v18);
  v22(v20, v18);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100082554()
{
  v64 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 224);
  v3 = *(v0 + 192);
  v4 = *(v0 + 80);

  v1(v2, v4, v3);

  swift_errorRetain();
  v5 = sub_1000E1EE8();
  v6 = sub_1000E2698();

  if (os_log_type_enabled(v5, v6))
  {
    v62 = *(v0 + 312);
    v7 = *(v0 + 224);
    v8 = *(v0 + 192);
    v9 = *(v0 + 88);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v63[0] = swift_slowAlloc();
    *v10 = 136315650;
    *(v10 + 4) = sub_100029C70(*(v9 + 16), *(v9 + 24), v63);
    *(v10 + 12) = 2080;
    sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v12 = sub_1000E2C18();
    v14 = v13;
    v62(v7, v8);
    v15 = sub_100029C70(v12, v14, v63);

    *(v10 + 14) = v15;
    *(v10 + 22) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v16;
    *v11 = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "[Handoff][Push] Failed to add %s to %s due to %@.", v10, 0x20u);
    sub_1000033C8(v11, &unk_10011EAC0, &unk_1000F0E60);

    swift_arrayDestroy();
  }

  else
  {
    v17 = *(v0 + 312);
    v18 = *(v0 + 224);
    v19 = *(v0 + 192);

    v17(v18, v19);
  }

  v20 = *(v0 + 472);
  swift_beginAccess();
  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = *(*(v0 + 72) + *(v0 + 272));
    v23 = v21;
    isa = sub_1000E0D18().super.isa;
    v25 = [v22 activeConversationWithUUID:isa];

    if (v25)
    {
      [*(*(v0 + 72) + *(v0 + 272)) kickMember:v23 conversation:v25];

      v23 = v25;
    }
  }

  v26 = *(v0 + 464);
  v27 = *(v0 + 136);
  swift_willThrow();

  sub_1000D6278(2, v26);

  sub_1000033C8(v27, &unk_10011FA80, &qword_1000F2660);
  *(v0 + 520) = *(v0 + 512);
  v28 = sub_1000E1EE8();
  v29 = sub_1000E2678();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v63[0] = v31;
    *v30 = 136315138;
    swift_beginAccess();
    v32 = *(v0 + 564);
    v33 = *(v0 + 565);
    v34 = *(v0 + 566);
    if (*(v0 + 566))
    {
      v35 = 0x10000;
    }

    else
    {
      v35 = 0;
    }

    if (*(v0 + 565))
    {
      v36 = 256;
    }

    else
    {
      v36 = 0;
    }

    v37 = sub_10009EE2C(v36 | v32 | v35);
    v39 = sub_100029C70(v37, v38, v63);

    *(v30 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v28, v29, "[HandoffConversation] Rolling back for %s.", v30, 0xCu);
    sub_10000E9DC(v31);

    if (!v34)
    {
      if (v33)
      {
        *(v0 + 571) = v32;
        v40 = swift_task_alloc();
        *(v0 + 544) = v40;
        *v40 = v0;
        v40[1] = sub_100083240;
        v41 = *(v0 + 88);

        return sub_1000BC98C(v41);
      }

      else if (v32)
      {
        v52 = swift_task_alloc();
        *(v0 + 552) = v52;
        *v52 = v0;
        v52[1] = sub_10008352C;
        v53 = *(v0 + 352);
        v54 = *(v0 + 80);

        return sub_10008470C(v54, v53, 0);
      }

      else
      {
        v55 = *(v0 + 280);
        v56 = *(v0 + 176);
        v57 = *(v0 + 184);
        v58 = *(v0 + 144);
        v59 = *(v0 + 152);
        swift_willThrow();

        v60 = *(v59 + 8);
        v60(v56, v58);
        v60(v57, v58);

        v61 = *(v0 + 8);

        return v61();
      }
    }
  }

  else
  {

    LOBYTE(v32) = *(v0 + 384) == 0;
    LOBYTE(v33) = 1;
  }

  *(v0 + 570) = v32;
  *(v0 + 569) = v33;
  v43 = *(v0 + 264);
  v44 = *(v0 + 216);
  v45 = *(v0 + 184);
  v46 = *(v0 + 72);
  v47 = [*(v0 + 280) groupUUID];
  sub_1000E0D38();

  v49 = sub_1000A75DC(&qword_100120020, v48, type metadata accessor for ConduitActor, &unk_1000F2250);
  v50 = swift_task_alloc();
  *(v0 + 528) = v50;
  v50[2] = v46;
  v50[3] = v44;
  v50[4] = v45;
  v51 = swift_task_alloc();
  *(v0 + 536) = v51;
  *v51 = v0;
  v51[1] = sub_100082E58;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v51, v43, v49, 0xD00000000000001DLL, 0x80000001000EBCE0, sub_1000ACDA4, v50, &type metadata for () + 8);
}