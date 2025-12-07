uint64_t sub_1004303C4()
{
  v2 = *v1;
  v2[13] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100430514, 0, 0);
  }

  else
  {
    v3 = v2[2];

    v4 = v2[1];

    return v4(v3);
  }
}

uint64_t sub_100430514()
{
  v0[3] = v0[13];
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  if (swift_dynamicCast())
  {
    v2 = v0[8];
    v1 = v0[9];
    v3 = v0[6];
    v4 = v0[7];

    (*(v4 + 32))(v2, v1, v3);
    if (qword_1005A8520 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000A6F0(v5, qword_1005E0BF0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = Duration.milliseconds.getter();
      _os_log_impl(&_mh_execute_header, v6, v7, "Nearby Interaction call timed out after %lld milliseconds", v8, 0xCu);
    }

    v10 = v0[7];
    v9 = v0[8];
    v11 = v0[6];

    sub_1000069AC(&qword_1005B3B80, &type metadata accessor for TimeoutError, &protocol conformance descriptor for TimeoutError);
    swift_allocError();
    (*(v10 + 16))(v12, v9, v11);
    swift_willThrow();
    (*(v10 + 8))(v9, v11);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_100430774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for TimeoutError();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_100430844, 0, 0);
}

uint64_t sub_100430844()
{
  if (qword_1005A8508 != -1)
  {
    swift_once();
  }

  v2 = qword_1005B3070;
  v1 = *algn_1005B3078;
  v0[10] = qword_1005B3070;
  v0[11] = v1;
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_100430934;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];

  return withTimeout<A>(_:block:)(v6, v2, v1, v4, v5, &type metadata for () + 1);
}

uint64_t sub_100430934()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100430A7C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100430A7C()
{
  v0[2] = v0[13];
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  if (swift_dynamicCast())
  {
    v2 = v0[8];
    v1 = v0[9];
    v3 = v0[6];
    v4 = v0[7];

    (*(v4 + 32))(v2, v1, v3);
    if (qword_1005A8520 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000A6F0(v5, qword_1005E0BF0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = Duration.milliseconds.getter();
      _os_log_impl(&_mh_execute_header, v6, v7, "Nearby Interaction call timed out after %lld milliseconds", v8, 0xCu);
    }

    v10 = v0[7];
    v9 = v0[8];
    v11 = v0[6];

    sub_1000069AC(&qword_1005B3B80, &type metadata accessor for TimeoutError, &protocol conformance descriptor for TimeoutError);
    swift_allocError();
    (*(v10 + 16))(v12, v9, v11);
    swift_willThrow();
    (*(v10 + 8))(v9, v11);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_100430CDC()
{
  v1[3] = v0;
  v1[4] = *v0;
  v2 = type metadata accessor for Destination();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v3 = type metadata accessor for Handle();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = type metadata accessor for RedStripeNotification(0);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  sub_10004B564(&qword_1005A9188, &unk_1004D80D0);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v4 = type metadata accessor for Friend();
  v1[22] = v4;
  v1[23] = *(v4 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = type metadata accessor for DiscoveryToken.Bucket(0);
  v1[29] = swift_task_alloc();
  sub_10004B564(&qword_1005B0F30, &qword_1004D3308);
  v1[30] = swift_task_alloc();
  v5 = type metadata accessor for DiscoveryToken(0);
  v1[31] = v5;
  v1[32] = *(v5 - 8);
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v1[35] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v1[36] = v6;
  v1[37] = *(v6 - 8);
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  sub_10004B564(&qword_1005AEB98, &unk_1004D07C0);
  v1[40] = swift_task_alloc();
  v7 = type metadata accessor for SharedSecretKey();
  v1[41] = v7;
  v1[42] = *(v7 - 8);
  v1[43] = swift_task_alloc();
  v8 = type metadata accessor for FriendSharedSecretsRecord(0);
  v1[44] = v8;
  v1[45] = *(v8 - 8);
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v9 = swift_task_alloc();
  v1[50] = v9;
  *v9 = v1;
  v9[1] = sub_10043121C;

  return daemon.getter();
}

uint64_t sub_10043121C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[51] = a1;

  v3 = swift_task_alloc();
  v2[52] = v3;
  v4 = type metadata accessor for Daemon();
  v2[53] = v4;
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_1000069AC(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[54] = v6;
  v7 = sub_1000069AC(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_1004313FC;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1004313FC(uint64_t a1)
{
  v3 = *v2;
  v3[55] = a1;
  v3[56] = v1;

  if (v1)
  {
    v4 = v3[3];

    return _swift_task_switch(sub_1004352E8, v4, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[57] = v5;
    *v5 = v3;
    v5[1] = sub_1004315A0;

    return sub_1004301F4(&unk_1004D8CC0, 0);
  }
}

uint64_t sub_1004315A0(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 464) = a1;

  v4 = *(v3 + 24);
  if (v1)
  {

    v5 = sub_100435614;
  }

  else
  {
    v5 = sub_1004316E0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1004316E0()
{
  v22 = v0;
  v1 = v0[58];
  if (v1 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    v2 = v0[58];
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = v0[58];
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_3:
      v3 = sub_10023F968(v2);
      v0[59] = v3;

      v4 = swift_task_alloc();
      v0[60] = v4;
      *v4 = v0;
      v4[1] = sub_100431BBC;

      return sub_1004393F8(v3);
    }
  }

  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000A6F0(v7, qword_1005E0C30);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "No activelyInteractingDiscoveryTokens!", v10, 2u);
  }

  sub_1003DA6A0();
  v11 = swift_allocError();
  *v12 = 2;
  swift_willThrow();

  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v7, qword_1005E0C30);
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21 = v16;
    *v15 = 136446210;
    v0[2] = v11;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v17 = String.init<A>(describing:)();
    v19 = sub_10000D01C(v17, v18, &v21);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, "handleRangingStartedNotification error: %{public}s", v15, 0xCu);
    sub_100004984(v16);
  }

  else
  {
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_100431BBC(char a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 796) = a1;

  return _swift_task_switch(sub_100431CD4, v2, 0);
}

uint64_t sub_100431CD4()
{
  if (*(v0 + 796))
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 440);

    return _swift_task_switch(sub_100431F00, v3, 0);
  }
}

uint64_t sub_100431F00()
{
  *(v0 + 488) = sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  *(v0 + 496) = v1;
  v2 = *(v1 - 8);
  *(v0 + 504) = *(v2 + 72);
  v3 = *(v2 + 80);
  *(v0 + 792) = v3;
  v4 = (v3 + 32) & ~v3;
  v5 = swift_allocObject();
  *(v0 + 512) = v5;
  *(v5 + 16) = xmmword_1004C1900;
  v6 = enum case for HandleType.follower(_:);
  v7 = *(v2 + 104);
  *(v0 + 520) = v7;
  *(v0 + 528) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v7(v5 + v4, v6, v1);
  v8 = swift_task_alloc();
  *(v0 + 536) = v8;
  *v8 = v0;
  v8[1] = sub_100432088;

  return sub_10001C61C(v5, 1);
}

uint64_t sub_100432088(uint64_t a1)
{
  v2 = *(*v1 + 440);
  *(*v1 + 544) = a1;

  return _swift_task_switch(sub_1004321BC, v2, 0);
}

uint64_t sub_1004321BC()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 496);
  v3 = (*(v0 + 792) + 32) & ~*(v0 + 792);
  v4 = swift_allocObject();
  *(v0 + 552) = v4;
  *(v4 + 16) = xmmword_1004C1900;
  v1(v4 + v3, enum case for HandleType.following(_:), v2);
  v5 = swift_task_alloc();
  *(v0 + 560) = v5;
  *v5 = v0;
  v5[1] = sub_1004322B8;

  return sub_10001C61C(v4, 1);
}

uint64_t sub_1004322B8(uint64_t a1)
{
  v2 = *v1;
  v5 = *v1;
  *(v2 + 568) = a1;

  v3 = swift_task_alloc();
  *(v2 + 576) = v3;
  *v3 = v5;
  v3[1] = sub_100432408;

  return daemon.getter();
}

uint64_t sub_100432408(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 584) = a1;

  v5 = swift_task_alloc();
  *(v3 + 592) = v5;
  v6 = type metadata accessor for CloudStorageService();
  v7 = sub_1000069AC(&qword_1005AD568, type metadata accessor for CloudStorageService, &unk_1004D03B0);
  *v5 = v4;
  v5[1] = sub_1004325BC;
  v8 = *(v2 + 432);
  v9 = *(v2 + 424);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1004325BC(uint64_t a1)
{
  v3 = *v2;
  v3[75] = a1;
  v3[76] = v1;

  if (v1)
  {
    v4 = v3[3];
    v5 = sub_100435A20;
  }

  else
  {

    v5 = sub_1004326E4;
    v4 = 0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1004326E4()
{
  v1 = swift_task_alloc();
  *(v0 + 616) = v1;
  *v1 = v0;
  v1[1] = sub_100432778;

  return sub_1001C412C();
}

uint64_t sub_100432778(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 624) = v1;

  if (v1)
  {
    v5 = sub_1004339C8;
  }

  else
  {
    *(v4 + 632) = a1;
    v5 = sub_1004328A0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1004328A0(__n128 a1)
{
  v2 = *(v1 + 24);
  *(v1 + 640) = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

  return _swift_task_switch(sub_100432918, v2, 0);
}

uint64_t sub_100432918()
{
  v139 = v0;
  v1 = v0[80];
  v136 = *(v1 + 16);
  if (!v136)
  {
LABEL_26:

    goto LABEL_27;
  }

  v2 = 0;
  v3 = v0[44];
  v134 = v0[45];
  v133 = v1 + ((*(v134 + 80) + 32) & ~*(v134 + 80));
  v4 = v0[42];
  v132 = (v4 + 48);
  v5 = v0[37];
  v128 = (v5 + 48);
  v129 = (v4 + 32);
  v6 = (v5 + 32);
  v127 = v5 + 8;
  v7 = v0[32];
  v119 = v0[31];
  v124 = (v7 + 56);
  v125 = v6;
  v126 = (v4 + 8);
  v8 = &unk_1004D07C0;
  v122 = v0[28];
  v123 = (v7 + 48);
  v9 = &qword_1005A8000;
  v130 = v3;
  v131 = v0[80];
  while (1)
  {
    if (v2 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_46;
    }

    v10 = v0[49];
    v12 = v0[40];
    v11 = v0[41];
    sub_10044AC80(v133 + *(v134 + 72) * v2, v10, type metadata accessor for FriendSharedSecretsRecord);
    sub_100005F04(v10 + *(v3 + 32), v12, &qword_1005AEB98, &unk_1004D07C0);
    if ((*v132)(v12, 1, v11) == 1)
    {
      v13 = v0[40];
      v14 = &qword_1005AEB98;
      v15 = &unk_1004D07C0;
LABEL_10:
      sub_100002CE0(v13, v14, v15);
      if (v9[166] != -1)
      {
        swift_once();
      }

      v22 = v0[49];
      v23 = v0[46];
      v24 = type metadata accessor for Logger();
      sub_10000A6F0(v24, qword_1005E0C30);
      sub_10044AC80(v22, v23, type metadata accessor for FriendSharedSecretsRecord);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      v27 = os_log_type_enabled(v25, v26);
      v28 = v0[46];
      if (v27)
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v138[0] = v30;
        *v29 = 136446210;
        type metadata accessor for UUID();
        sub_1000069AC(&qword_1005A92C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v31 = dispatch thunk of CustomStringConvertible.description.getter();
        v33 = v32;
        sub_10044ACE8(v28, type metadata accessor for FriendSharedSecretsRecord);
        v34 = sub_10000D01C(v31, v33, v138);
        v3 = v130;

        *(v29 + 4) = v34;
        _os_log_impl(&_mh_execute_header, v25, v26, "No incomingSharedSecret for %{public}s", v29, 0xCu);
        sub_100004984(v30);
        v1 = v131;
      }

      else
      {

        sub_10044ACE8(v28, type metadata accessor for FriendSharedSecretsRecord);
      }

      goto LABEL_4;
    }

    v16 = v0[49];
    v18 = v0[35];
    v17 = v0[36];
    (*v129)(v0[43], v0[40], v0[41]);
    sub_100005F04(v16 + *(v3 + 36), v18, &unk_1005AE5B0, &qword_1004C32F0);
    v19 = (*v128)(v18, 1, v17);
    v20 = v0[43];
    if (v19 == 1)
    {
      v21 = v0[35];
      (*v126)(v0[43], v0[41]);
      v13 = v21;
      v14 = &unk_1005AE5B0;
      v15 = &qword_1004C32F0;
      goto LABEL_10;
    }

    v35 = v0[38];
    v36 = v0[39];
    v37 = v0[36];
    v38 = v0[29];
    (*v125)(v36, v0[35], v37);
    static Date.trustedNow.getter(v35);
    v39 = sub_10042FCD0();
    sub_10042ED60(v36, v35, v39, v38);
    v40 = sub_10042F8D8(v20, *(v38 + *(v122 + 20)), 0);
    v8 = *v127;
    v0[81] = *v127;
    v0[82] = v127 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v35, v37);
    v42 = v0[30];
    v41 = v0[31];
    v43 = v0[29];
    if (v40)
    {
      sub_10044AD48(v43, v42 + *(v119 + 20), type metadata accessor for DiscoveryToken.Bucket);
      *v42 = v40;
      (*v124)(v42, 0, 1, v41);
    }

    else
    {
      sub_10044ACE8(v43, type metadata accessor for DiscoveryToken.Bucket);
      (*v124)(v42, 1, 1, v41);
    }

    v44 = v0[30];
    v3 = v130;
    v1 = v131;
    if ((*v123)(v44, 1, v0[31]) == 1)
    {
      sub_100002CE0(v44, &qword_1005B0F30, &qword_1004D3308);
      if (v9[166] != -1)
      {
        swift_once();
      }

      v45 = v0[49];
      v46 = v0[47];
      v47 = type metadata accessor for Logger();
      sub_10000A6F0(v47, qword_1005E0C30);
      sub_10044AC80(v45, v46, type metadata accessor for FriendSharedSecretsRecord);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.error.getter();
      v50 = os_log_type_enabled(v48, v49);
      v51 = v0[47];
      v52 = v0[43];
      v120 = v0[39];
      v121 = v0[41];
      v53 = v0[36];
      if (v50)
      {
        v116 = v0[43];
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v138[0] = v55;
        *v54 = 136446210;
        type metadata accessor for UUID();
        sub_1000069AC(&qword_1005A92C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v56 = dispatch thunk of CustomStringConvertible.description.getter();
        v117 = v8;
        v58 = v57;
        sub_10044ACE8(v51, type metadata accessor for FriendSharedSecretsRecord);
        v59 = v56;
        v3 = v130;
        v60 = sub_10000D01C(v59, v58, v138);

        *(v54 + 4) = v60;
        _os_log_impl(&_mh_execute_header, v48, v49, "Unable to retrieve discovery token for for %{public}s", v54, 0xCu);
        sub_100004984(v55);
        v1 = v131;

        v117(v120, v53);
        (*v126)(v116, v121);
      }

      else
      {

        sub_10044ACE8(v51, type metadata accessor for FriendSharedSecretsRecord);
        v8(v120, v53);
        (*v126)(v52, v121);
      }

      v9 = &qword_1005A8000;
      goto LABEL_4;
    }

    v61 = v0[59];
    v62 = v0[34];
    sub_10044AD48(v44, v62, type metadata accessor for DiscoveryToken);
    if (sub_10021B89C(*v62, v61))
    {
      break;
    }

    v63 = v0[43];
    v64 = v0[41];
    v65 = v0[34];
    v8(v0[39], v0[36]);
    (*v126)(v63, v64);
    sub_10044ACE8(v65, type metadata accessor for DiscoveryToken);
LABEL_4:
    v8 = &unk_1004D07C0;
    ++v2;
    sub_10044ACE8(v0[49], type metadata accessor for FriendSharedSecretsRecord);
    if (v136 == v2)
    {
      goto LABEL_26;
    }
  }

  if (v9[166] == -1)
  {
    goto LABEL_31;
  }

LABEL_46:
  swift_once();
LABEL_31:
  v69 = v0[48];
  v68 = v0[49];
  v71 = v0[33];
  v70 = v0[34];
  v137 = type metadata accessor for Logger();
  v0[83] = sub_10000A6F0(v137, qword_1005E0C30);
  sub_10044AC80(v70, v71, type metadata accessor for DiscoveryToken);
  sub_10044AC80(v68, v69, type metadata accessor for FriendSharedSecretsRecord);
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.default.getter();
  v74 = os_log_type_enabled(v72, v73);
  v75 = v0[48];
  v76 = v0[33];
  v118 = v8;
  if (v74)
  {
    v77 = swift_slowAlloc();
    v138[0] = swift_slowAlloc();
    *v77 = 136446466;
    v78 = sub_10042EABC();
    v80 = v79;
    sub_10044ACE8(v76, type metadata accessor for DiscoveryToken);
    v81 = sub_10000D01C(v78, v80, v138);

    *(v77 + 4) = v81;
    *(v77 + 12) = 2082;
    type metadata accessor for UUID();
    sub_1000069AC(&qword_1005A92C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v82 = dispatch thunk of CustomStringConvertible.description.getter();
    v84 = v83;
    sub_10044ACE8(v75, type metadata accessor for FriendSharedSecretsRecord);
    v85 = sub_10000D01C(v82, v84, v138);

    *(v77 + 14) = v85;
    _os_log_impl(&_mh_execute_header, v72, v73, "Found matching token %{public}s from record %{public}s", v77, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10044ACE8(v75, type metadata accessor for FriendSharedSecretsRecord);
    sub_10044ACE8(v76, type metadata accessor for DiscoveryToken);
  }

  v86 = v0[68];
  v87 = v0[49];
  v88 = v0[22];
  v89 = v0[23];
  v90 = v0[21];
  *(swift_task_alloc() + 16) = v87;
  sub_10044FE2C(sub_10044AC40, v86, v90);

  v91 = *(v89 + 48);
  v0[84] = v91;
  v0[85] = (v89 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v91(v90, 1, v88) == 1)
  {
    v92 = v0[21];

    sub_100002CE0(v92, &qword_1005A9188, &unk_1004D80D0);
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&_mh_execute_header, v93, v94, "No matching friend for active token!", v95, 2u);
    }

    v135 = v0[49];
    v96 = v0[43];
    v97 = v0[41];
    v98 = v0[39];
    v99 = v0[36];
    v100 = v0[34];

    sub_1003DA6A0();
    v101 = swift_allocError();
    *v102 = 2;
    swift_willThrow();

    v118(v98, v99);
    (*v126)(v96, v97);
    sub_10044ACE8(v100, type metadata accessor for DiscoveryToken);
    sub_10044ACE8(v135, type metadata accessor for FriendSharedSecretsRecord);
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    sub_10000A6F0(v137, qword_1005E0C30);
    swift_errorRetain();
    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v138[0] = v106;
      *v105 = 136446210;
      v0[2] = v101;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v107 = String.init<A>(describing:)();
      v109 = sub_10000D01C(v107, v108, v138);

      *(v105 + 4) = v109;
      _os_log_impl(&_mh_execute_header, v103, v104, "handleRangingStartedNotification error: %{public}s", v105, 0xCu);
      sub_100004984(v106);
    }

    else
    {
    }

LABEL_27:

    v66 = v0[1];

    return v66();
  }

  else
  {
    v110 = v0[27];
    v111 = v0[22];
    v112 = v0[23];
    v113 = v0[21];
    v114 = *(v112 + 32);
    v0[86] = v114;
    v0[87] = (v112 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v114(v110, v113, v111);
    v115 = swift_task_alloc();
    v0[88] = v115;
    *v115 = v0;
    v115[1] = sub_100433D8C;

    return daemon.getter();
  }
}

uint64_t sub_1004339C8()
{
  v1 = *(v0 + 24);

  return _swift_task_switch(sub_100433A54, v1, 0);
}

uint64_t sub_100433A54()
{
  v13 = v0;

  v1 = v0[78];
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0C30);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "handleRangingStartedNotification error: %{public}s", v5, 0xCu);
    sub_100004984(v6);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_100433D8C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 712) = a1;

  v5 = swift_task_alloc();
  *(v3 + 720) = v5;
  v6 = type metadata accessor for UserNotificationService();
  v7 = sub_1000069AC(&qword_1005AD530, type metadata accessor for UserNotificationService, &unk_1004D9448);
  *v5 = v4;
  v5[1] = sub_100433F40;
  v8 = *(v2 + 432);
  v9 = *(v2 + 424);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_100433F40(uint64_t a1)
{
  v3 = *v2;
  v3[91] = a1;
  v3[92] = v1;

  if (v1)
  {
    v4 = v3[3];

    v5 = sub_100435D7C;
    v6 = v4;
  }

  else
  {
    v7 = v3[3];

    v5 = sub_1004340A4;
    v6 = v7;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1004340A4()
{
  v1 = *(v0 + 672);
  v2 = *(v0 + 568);
  v3 = *(v0 + 216);
  v4 = *(v0 + 176);
  v5 = *(v0 + 184);
  v6 = *(v0 + 160);
  *(swift_task_alloc() + 16) = v3;
  sub_10044FE2C(sub_10044AC60, v2, v6);

  v7 = v1(v6, 1, v4);
  v8 = (v5 + 16);
  if (v7 == 1)
  {
    v9 = *(v0 + 216);
    v10 = *(v0 + 192);
    v11 = *(v0 + 176);
    sub_100002CE0(*(v0 + 160), &qword_1005A9188, &unk_1004D80D0);
    (*v8)(v10, v9, v11);
    v12 = sub_10043481C;
  }

  else
  {
    v13 = *(v0 + 200);
    v14 = *(v0 + 208);
    v15 = *(v0 + 176);
    (*(v0 + 688))(v14, *(v0 + 160), v15);
    (*v8)(v13, v14, v15);
    v12 = sub_10043422C;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_10043422C()
{
  v1 = v0[19];
  v2 = v0[13];
  *v1 = 2;
  v3 = *(v2 + 20);
  v4 = enum case for LocalUserNotificationCategory.peopleFindingSessionStarted(_:);
  v5 = type metadata accessor for LocalUserNotificationCategory();
  (*(*(v5 - 8) + 104))(&v1[v3], v4, v5);
  UUID.init()();
  Friend.handle.getter();
  LOBYTE(v4) = Handle.isPhoneNumber.getter();
  Handle.identifier.getter();
  if (v4)
  {
    Destination.init(phoneNumber:)();
  }

  else
  {
    Destination.init(email:)();
  }

  (*(v0[10] + 8))(v0[12], v0[9]);
  v6 = swift_task_alloc();
  v0[93] = v6;
  *v6 = v0;
  v6[1] = sub_100434380;

  return sub_1004559B4(1);
}

uint64_t sub_100434380(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 40);
  *(v3 + 752) = a1;
  *(v3 + 760) = a2;

  (*(v5 + 8))(v4, v6);

  return _swift_task_switch(sub_1004344E4, 0, 0);
}

uint64_t sub_1004344E4()
{
  v1 = v0[95];
  v2 = v0[86];
  v3 = v0[25];
  v4 = v0[22];
  v5 = v0[19];
  v6 = v0[13];
  v7 = v0[3];
  v8 = (v5 + *(v6 + 28));
  *v8 = v0[94];
  v8[1] = v1;
  v2(v5 + *(v6 + 32), v3, v4);

  return _swift_task_switch(sub_100434580, v7, 0);
}

uint64_t sub_100434580()
{
  v22 = v0;
  (*(v0[23] + 8))(v0[26], v0[22]);
  v1 = v0[19];
  v2 = v0[17];
  sub_10044AC80(v1, v0[18], type metadata accessor for RedStripeNotification);
  sub_10044AC80(v1, v2, type metadata accessor for RedStripeNotification);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[17];
  v7 = v0[18];
  if (v5)
  {
    v20 = v0[16];
    v8 = v0[13];
    v9 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v9 = 141558531;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    v10 = (v7 + *(v8 + 28));
    v12 = *v10;
    v11 = v10[1];

    sub_10044ACE8(v7, type metadata accessor for RedStripeNotification);
    v13 = sub_10000D01C(v12, v11, &v21);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2080;
    sub_10044AC80(v6, v20, type metadata accessor for RedStripeNotification);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    sub_10044ACE8(v6, type metadata accessor for RedStripeNotification);
    v17 = sub_10000D01C(v14, v16, &v21);

    *(v9 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{private,mask.hash}s is trying to find you. %s", v9, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10044ACE8(v6, type metadata accessor for RedStripeNotification);
    sub_10044ACE8(v7, type metadata accessor for RedStripeNotification);
  }

  v18 = v0[91];

  return _swift_task_switch(sub_100434DF8, v18, 0);
}

uint64_t sub_10043481C()
{
  v1 = v0[19];
  v2 = v0[13];
  *v1 = 2;
  v3 = *(v2 + 20);
  v4 = enum case for LocalUserNotificationCategory.peopleFindingSessionStarted(_:);
  v5 = type metadata accessor for LocalUserNotificationCategory();
  (*(*(v5 - 8) + 104))(&v1[v3], v4, v5);
  UUID.init()();
  Friend.handle.getter();
  LOBYTE(v4) = Handle.isPhoneNumber.getter();
  Handle.identifier.getter();
  if (v4)
  {
    Destination.init(phoneNumber:)();
  }

  else
  {
    Destination.init(email:)();
  }

  (*(v0[10] + 8))(v0[11], v0[9]);
  v6 = swift_task_alloc();
  v0[96] = v6;
  *v6 = v0;
  v6[1] = sub_100434974;

  return sub_1004559B4(1);
}

uint64_t sub_100434974(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 40);
  *(v3 + 776) = a1;
  *(v3 + 784) = a2;

  (*(v5 + 8))(v4, v6);

  return _swift_task_switch(sub_100434AD8, 0, 0);
}

uint64_t sub_100434AD8()
{
  v1 = v0[98];
  v2 = v0[86];
  v3 = v0[24];
  v4 = v0[22];
  v5 = v0[19];
  v6 = v0[13];
  v7 = v0[3];
  v8 = (v5 + *(v6 + 28));
  *v8 = v0[97];
  v8[1] = v1;
  v2(v5 + *(v6 + 32), v3, v4);

  return _swift_task_switch(sub_100434B74, v7, 0);
}

uint64_t sub_100434B74()
{
  v22 = v0;
  v1 = v0[19];
  v2 = v0[17];
  sub_10044AC80(v1, v0[18], type metadata accessor for RedStripeNotification);
  sub_10044AC80(v1, v2, type metadata accessor for RedStripeNotification);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[17];
  v7 = v0[18];
  if (v5)
  {
    v20 = v0[16];
    v8 = v0[13];
    v9 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v9 = 141558531;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    v10 = (v7 + *(v8 + 28));
    v12 = *v10;
    v11 = v10[1];

    sub_10044ACE8(v7, type metadata accessor for RedStripeNotification);
    v13 = sub_10000D01C(v12, v11, &v21);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2080;
    sub_10044AC80(v6, v20, type metadata accessor for RedStripeNotification);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    sub_10044ACE8(v6, type metadata accessor for RedStripeNotification);
    v17 = sub_10000D01C(v14, v16, &v21);

    *(v9 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{private,mask.hash}s is trying to find you. %s", v9, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10044ACE8(v6, type metadata accessor for RedStripeNotification);
    sub_10044ACE8(v7, type metadata accessor for RedStripeNotification);
  }

  v18 = v0[91];

  return _swift_task_switch(sub_100434DF8, v18, 0);
}

uint64_t sub_100434DF8()
{
  sub_10044AC80(v0[19], v0[15], type metadata accessor for RedStripeNotification);
  if (qword_1005A8598 != -1)
  {
    swift_once();
  }

  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[3];
  sub_10044AC80(v1, v2, type metadata accessor for RedStripeNotification);
  v4 = objc_allocWithZone(UNUserNotificationCenter);
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 initWithBundleIdentifier:v5];

  v7 = sub_100292D94(v2);
  UUID.uuidString.getter();
  v8 = v7;
  v9 = String._bridgeToObjectiveC()();

  v10 = [objc_opt_self() requestWithIdentifier:v9 content:v8 trigger:0 destinations:7];

  [v6 addNotificationRequest:v10 withCompletionHandler:0];
  sub_10044ACE8(v2, type metadata accessor for RedStripeNotification);
  sub_10044ACE8(v1, type metadata accessor for RedStripeNotification);

  return _swift_task_switch(sub_100435030, v3, 0);
}

uint64_t sub_100435030()
{
  v1 = v0[81];
  v14 = v0[49];
  v2 = v0[42];
  v10 = v0[43];
  v3 = v0[41];
  v4 = v0[39];
  v5 = v0[36];
  v13 = v0[27];
  v6 = v0[23];
  v11 = v0[34];
  v12 = v0[22];
  v7 = v0[19];

  sub_10044ACE8(v7, type metadata accessor for RedStripeNotification);
  v1(v4, v5);
  (*(v2 + 8))(v10, v3);
  sub_10044ACE8(v11, type metadata accessor for DiscoveryToken);
  (*(v6 + 8))(v13, v12);
  sub_10044ACE8(v14, type metadata accessor for FriendSharedSecretsRecord);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1004352E8()
{
  v13 = v0;

  v1 = v0[56];
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0C30);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "handleRangingStartedNotification error: %{public}s", v5, 0xCu);
    sub_100004984(v6);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_100435614()
{
  v17 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0C30);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No activelyInteractingDiscoveryTokens!", v4, 2u);
  }

  sub_1003DA6A0();
  v5 = swift_allocError();
  *v6 = 2;
  swift_willThrow();

  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v1, qword_1005E0C30);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    *(v0 + 16) = v5;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v11 = String.init<A>(describing:)();
    v13 = sub_10000D01C(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "handleRangingStartedNotification error: %{public}s", v9, 0xCu);
    sub_100004984(v10);
  }

  else
  {
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100435A20()
{
  v13 = v0;

  v1 = v0[76];
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0C30);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "handleRangingStartedNotification error: %{public}s", v5, 0xCu);
    sub_100004984(v6);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_100435D7C()
{
  v24 = v0;
  v1 = v0[81];
  v3 = v0[42];
  v2 = v0[43];
  v4 = v0[41];
  v5 = v0[39];
  v6 = v0[36];
  v21 = v0[27];
  v22 = v0[49];
  v7 = v0[23];
  v19 = v0[34];
  v20 = v0[22];

  v1(v5, v6);
  (*(v3 + 8))(v2, v4);
  sub_10044ACE8(v19, type metadata accessor for DiscoveryToken);
  (*(v7 + 8))(v21, v20);
  sub_10044ACE8(v22, type metadata accessor for FriendSharedSecretsRecord);
  v8 = v0[92];
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000A6F0(v9, qword_1005E0C30);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136446210;
    v0[2] = v8;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v14 = String.init<A>(describing:)();
    v16 = sub_10000D01C(v14, v15, &v23);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "handleRangingStartedNotification error: %{public}s", v12, 0xCu);
    sub_100004984(v13);
  }

  else
  {
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_100436154()
{
  v1[3] = v0;
  sub_10004B564(&qword_1005AA718, &qword_1004C4370);
  v1[4] = swift_task_alloc();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_100436220;

  return daemon.getter();
}

uint64_t sub_100436220(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[6] = a1;

  v3 = swift_task_alloc();
  v2[7] = v3;
  v4 = type metadata accessor for Daemon();
  v2[8] = v4;
  v5 = type metadata accessor for AppDeletionService();
  v6 = sub_1000069AC(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[9] = v6;
  v7 = sub_1000069AC(&qword_1005AD540, type metadata accessor for AppDeletionService, &unk_1004DD0A8);
  *v3 = v9;
  v3[1] = sub_100436400;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100436400(uint64_t a1)
{
  v4 = *v2;
  v4[10] = a1;
  v4[11] = v1;

  if (v1)
  {
    v5 = v4[3];
    v6 = sub_1004374E4;
  }

  else
  {

    v6 = sub_100436538;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100436538()
{
  v1 = *(v0 + 24);
  *(v0 + 152) = *(*(v0 + 80) + 137);
  return _swift_task_switch(sub_100436560, v1, 0);
}

uint64_t sub_100436560()
{
  v10 = v0;
  if (*(v0 + 152) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 96) = v1;
    *v1 = v0;
    v1[1] = sub_100436770;

    return daemon.getter();
  }

  else
  {
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A6F0(v2, qword_1005E0C30);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v9 = v6;
      *v5 = 136446210;
      *(v5 + 4) = sub_10000D01C(0x656C6261646E6966, 0xEE00737574617453, &v9);
      _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s? Find My app is NOT installed.", v5, 0xCu);
      sub_100004984(v6);
    }

    v7 = *(v0 + 8);

    return v7(2);
  }
}

uint64_t sub_100436770(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 104) = a1;

  v5 = swift_task_alloc();
  *(v3 + 112) = v5;
  v6 = type metadata accessor for DataManager(0);
  v7 = sub_1000069AC(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v5 = v4;
  v5[1] = sub_100436924;
  v8 = *(v2 + 72);
  v9 = *(v2 + 64);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_100436924(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[15] = a1;
  v3[16] = v1;

  if (v1)
  {
    v5 = v3[3];

    return _swift_task_switch(sub_100437708, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[17] = v6;
    *v6 = v4;
    v6[1] = sub_100436AB0;
    v7 = v3[4];

    return sub_1001DB14C(v7);
  }
}

uint64_t sub_100436AB0()
{
  v1 = *(*v0 + 120);

  return _swift_task_switch(sub_100436BC0, v1, 0);
}

uint64_t sub_100436BC0()
{
  v1 = *(v0 + 32);
  v2 = type metadata accessor for Device();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = *(v0 + 24);
  if (v4 == 1)
  {
    sub_100002CE0(v1, &qword_1005AA718, &qword_1004C4370);
    v6 = sub_100436F18;
  }

  else
  {
    *(v0 + 153) = Device.isThisDevice.getter() & 1;
    (*(v3 + 8))(v1, v2);
    v6 = sub_100436CF0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100436CF0()
{
  v10 = v0;
  if (*(v0 + 153) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 144) = v1;
    *v1 = v0;
    v1[1] = sub_1004370C0;

    return sub_1001DBB70();
  }

  else
  {
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A6F0(v3, qword_1005E0C30);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_10000D01C(0x656C6261646E6966, 0xEE00737574617453, &v9);
      _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s? not a me device", v6, 0xCu);
      sub_100004984(v7);
    }

    v8 = *(v0 + 8);

    return v8(1);
  }
}

uint64_t sub_100436F18()
{
  v9 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0C30);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0x656C6261646E6966, 0xEE00737574617453, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s? not a me device", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = *(v0 + 8);

  return v6(1);
}

uint64_t sub_1004370C0(char a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 154) = a1;

  return _swift_task_switch(sub_1004371D8, v2, 0);
}

uint64_t sub_1004371D8()
{
  v15 = v0;
  if (*(v0 + 154) == 1)
  {

    if ([objc_opt_self() locationServicesEnabled])
    {
      v1 = 0;
    }

    else
    {
      if (qword_1005A8530 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_10000A6F0(v7, qword_1005E0C30);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v14 = v11;
        *v10 = 136446210;
        *(v10 + 4) = sub_10000D01C(0x656C6261646E6966, 0xEE00737574617453, &v14);
        _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s? location services disabled", v10, 0xCu);
        sub_100004984(v11);
      }

      v1 = 4;
    }
  }

  else
  {
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A6F0(v2, qword_1005E0C30);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v14 = v6;
      *v5 = 136446210;
      *(v5 + 4) = sub_10000D01C(0x656C6261646E6966, 0xEE00737574617453, &v14);
      _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s? share my location disabled", v5, 0xCu);
      sub_100004984(v6);
    }

    v1 = 3;
  }

  v12 = *(v0 + 8);

  return v12(v1);
}

uint64_t sub_1004374E4()
{
  v12 = v0;
  v1 = v0[11];

  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0C30);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0x656C6261646E6966, 0xEE00737574617453, &v11);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v11);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s error %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v9 = v0[1];

  return v9(5);
}

uint64_t sub_100437708()
{
  v12 = v0;

  v1 = v0[16];

  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0C30);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0x656C6261646E6966, 0xEE00737574617453, &v11);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v11);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s error %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v9 = v0[1];

  return v9(5);
}

uint64_t sub_100437934(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_100011AEC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_1002414A8();
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_100437A14(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = *v1;
  return _swift_task_switch(sub_100437A5C, v1, 0);
}

uint64_t sub_100437A5C()
{
  v34 = v0;
  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_1000069AC(&qword_1005A9EE8, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v2 = sub_10000331C(v0 + 2);
  (*(*(My - 8) + 104))(v2, enum case for Feature.FindMy.redStripe(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100004984(v0 + 2);
  if (My)
  {
    if (sub_1003F399C())
    {
      if (qword_1005A8530 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_10000A6F0(v3, qword_1005E0C30);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v33 = v7;
        *v6 = 136446210;
        *(v6 + 4) = sub_10000D01C(0xD000000000000023, 0x80000001004EA560, &v33);
        _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s", v6, 0xCu);
        sub_100004984(v7);
      }

      else
      {
      }

      v26 = v0[8];
      v27 = v0[9];
      v28 = sub_1000069AC(&qword_1005B3700, type metadata accessor for NITokenService, &unk_1004D83C8);
      v29 = swift_task_alloc();
      v0[10] = v29;
      *(v29 + 16) = v26;
      *(v29 + 24) = v27;
      v30 = swift_task_alloc();
      v0[11] = v30;
      v31 = sub_10004B564(&qword_1005B1C88, &qword_1004D5E68);
      *v30 = v0;
      v30[1] = sub_1004380C8;
      v32 = v0[7];

      return withCheckedContinuation<A>(isolation:function:_:)(v32, v26, v28, 0xD000000000000023, 0x80000001004EA560, sub_10044A1FC, v29, v31);
    }

    else
    {
      if (qword_1005A8530 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_10000A6F0(v17, qword_1005E0C30);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v33 = v21;
        *v20 = 136446210;
        *(v20 + 4) = sub_10000D01C(0xD000000000000023, 0x80000001004EA560, &v33);
        _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s isFindingCapable == false.", v20, 0xCu);
        sub_100004984(v21);
      }

      sub_1003DA6A0();
      v22 = swift_allocError();
      v0[12] = v22;
      *v23 = 20;
      v24 = sub_100209E2C(_swiftEmptyArrayStorage);
      v0[13] = v24;
      v25 = swift_task_alloc();
      v0[14] = v25;
      *v25 = v0;
      v25[1] = sub_1004381D8;

      return sub_100402934(0xD00000000000003BLL, 0x80000001004EA590, v22, v24);
    }
  }

  else
  {
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000A6F0(v8, qword_1005E0C30);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v33 = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_10000D01C(0xD000000000000023, 0x80000001004EA560, &v33);
      _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s Feature.FindMy.redStripe FF disabled.", v11, 0xCu);
      sub_100004984(v12);
    }

    v13 = v0[7];
    v14 = type metadata accessor for OwnerSharedSecretsRecord(0);
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_1004380C8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1004381D8()
{
  v1 = *(*v0 + 64);

  return _swift_task_switch(sub_100438328, v1, 0);
}

uint64_t sub_100438328()
{
  v1 = *(v0 + 56);
  v2 = type metadata accessor for OwnerSharedSecretsRecord(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1004383C4()
{
  v1[4] = v0;
  v2 = type metadata accessor for Date();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_100438484, v0, 0);
}

uint64_t sub_100438484()
{
  v9 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[8] = sub_10000A6F0(v1, qword_1005E0C30);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000019, 0x80000001004EA700, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v0[2] = _swiftEmptyArrayStorage;
  static ReferenceClock.now.getter();
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_100438650;

  return sub_100403F98();
}

uint64_t sub_100438650(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 40);
  *(v4 + 80) = a1;
  *(v4 + 88) = v1;

  (*(v6 + 8))(v5, v7);
  v8 = *(v3 + 32);
  if (v1)
  {
    v9 = sub_100438D68;
  }

  else
  {
    v9 = sub_1004387E0;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1004387E0()
{
  v1 = v0[10];
  if (v1)
  {
    v2 = v1;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[10];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138543362;
      *(v6 + 4) = v2;
      *v7 = v5;
      v8 = v2;
      _os_log_impl(&_mh_execute_header, v3, v4, "Setting owner token: %{public}@", v6, 0xCu);
      sub_100002CE0(v7, &qword_1005A9670, &unk_1004C2480);
    }

    v9 = v2;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v10 = v0[2];
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v11 = swift_allocObject();
  v0[12] = v11;
  *(v11 + 16) = v10;
  v12 = swift_task_alloc();
  v0[13] = v12;
  *v12 = v0;
  v12[1] = sub_100438A0C;

  return (sub_100430774)();
}

uint64_t sub_100438A0C()
{
  v2 = *v1;

  v3 = *(v2 + 32);
  if (v0)
  {

    v4 = sub_10044ADE0;
  }

  else
  {

    v4 = sub_100438B68;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100438B68()
{
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_100438BF8;

  return sub_10044D898();
}

uint64_t sub_100438BF8()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_100438D08, v1, 0);
}

uint64_t sub_100438D08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100438D68()
{
  v12 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[11];
    v4 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v4 = 136446466;
    *(v4 + 4) = sub_10000D01C(0xD000000000000019, 0x80000001004EA700, &v11);
    *(v4 + 12) = 2082;
    v0[3] = v3;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v5 = String.init<A>(describing:)();
    v7 = sub_10000D01C(v5, v6, &v11);

    *(v4 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s error %{public}s", v4, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v8 = swift_allocObject();
  v0[12] = v8;
  *(v8 + 16) = _swiftEmptyArrayStorage;
  v9 = swift_task_alloc();
  v0[13] = v9;
  *v9 = v0;
  v9[1] = sub_100438A0C;

  return sub_100430774(sub_100430774, &unk_1004D8CB0, v8);
}

void sub_100438FC0()
{
  v1 = *v0;
  v2 = type metadata accessor for UUID();
  __chkstk_darwin(v2 - 8);
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005E0C30);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16[0] = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004EA660, v16);
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s", v6, 0xCu);
    sub_100004984(v7);
  }

  My = type metadata accessor for Feature.FindMy();
  v16[3] = My;
  v16[4] = sub_1000069AC(&qword_1005A9EE8, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v9 = sub_10000331C(v16);
  (*(*(My - 8) + 104))(v9, enum case for Feature.FindMy.redStripe(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100004984(v16);
  if (My)
  {
    if (sub_1003F399C())
    {
      type metadata accessor for WorkItemQueue.WorkItem();
      v10 = swift_allocObject();
      *(v10 + 16) = v0;
      *(v10 + 24) = v1;

      UUID.init()();
      WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
      dispatch thunk of WorkItemQueue.enqueue(_:)();

      return;
    }

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16[0] = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004EA660, v16);
      v15 = "%{public}s isFindingCapable == false.";
      goto LABEL_12;
    }
  }

  else
  {
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16[0] = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004EA660, v16);
      v15 = "%{public}s Feature.FindMy.redStripe FF disabled.";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v11, v12, v15, v13, 0xCu);
      sub_100004984(v14);
    }
  }
}

uint64_t sub_1004393F8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for Date();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1004394B8, v1, 0);
}

uint64_t sub_1004394B8()
{
  v9 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 64) = sub_10000A6F0(v1, qword_1005E0C30);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000025, 0x80000001004EA720, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  static ReferenceClock.now.getter();
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_100439678;

  return sub_100403F98();
}

uint64_t sub_100439678(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 40);
  *(v4 + 80) = a1;
  *(v4 + 88) = v1;

  (*(v6 + 8))(v5, v7);
  v8 = *(v3 + 32);
  if (v1)
  {
    v9 = sub_1004399E4;
  }

  else
  {
    v9 = sub_100439808;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100439808(uint64_t a1)
{
  v14 = v1;
  v2 = *(v1 + 80);
  if (!v2)
  {
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_10000D01C(0xD000000000000025, 0x80000001004EA720, &v13);
      _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s missing owner token!", v9, 0xCu);
      sub_100004984(v10);
    }

    goto LABEL_10;
  }

  if ((sub_10021B89C(*(v1 + 80), *(v1 + 24)) & 1) == 0)
  {

LABEL_10:
    v6 = 0;
    goto LABEL_11;
  }

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Owner ranging is active.", v5, 2u);
  }

  v6 = 1;
LABEL_11:

  v11 = *(v1 + 8);

  return v11(v6);
}

uint64_t sub_1004399E4()
{
  v11 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[11];
    v4 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v4 = 136446466;
    *(v4 + 4) = sub_10000D01C(0xD000000000000025, 0x80000001004EA720, &v10);
    *(v4 + 12) = 2082;
    v0[2] = v3;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v5 = String.init<A>(describing:)();
    v7 = sub_10000D01C(v5, v6, &v10);

    *(v4 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s error %{public}s", v4, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v8 = v0[1];

  return v8(0);
}

uint64_t sub_100439BE0()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100439D08;
  v2 = swift_continuation_init();
  v0[17] = sub_10004B564(&qword_1005B3B68, &qword_1004D8C70);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100437934;
  v0[13] = &unk_10059C428;
  v0[14] = v2;
  [v1 getAsyncActivelyInteractingDiscoveryTokens:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100439D08()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_10044ADEC;
  }

  else
  {
    v2 = sub_10044ADF0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100439E18(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v37 = type metadata accessor for UUID();
  v2 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10004B564(&qword_1005B0B70, &qword_1004D6B30);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v36 - v6;
  v8 = sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  v9 = __chkstk_darwin(v8 - 8);
  v39 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v36 - v12;
  __chkstk_darwin(v11);
  v15 = &v36 - v14;
  v16 = type metadata accessor for Handle();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  Friend.handle.getter();
  Handle.peerID.getter();
  v20 = v15;
  (*(v17 + 8))(v19, v16);
  v21 = v37;
  (*(v2 + 16))(v13, v38, v37);
  (*(v2 + 56))(v13, 0, 1, v21);
  v22 = *(v5 + 56);
  sub_100005F04(v20, v7, &qword_1005A96E0, &qword_1004C2A80);
  sub_100005F04(v13, &v7[v22], &qword_1005A96E0, &qword_1004C2A80);
  v23 = v2;
  v24 = v2;
  v25 = v7;
  v26 = v21;
  v27 = *(v24 + 48);
  if (v27(v25, 1, v21) != 1)
  {
    v38 = v20;
    sub_100005F04(v25, v39, &qword_1005A96E0, &qword_1004C2A80);
    if (v27(v25 + v22, 1, v21) != 1)
    {
      v29 = v25;
      v30 = v23;
      v31 = v29 + v22;
      v32 = v36;
      (*(v23 + 32))(v36, v31, v26);
      sub_1000069AC(&qword_1005A9FC8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v33 = v39;
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      v34 = *(v30 + 8);
      v34(v32, v26);
      sub_100002CE0(v13, &qword_1005A96E0, &qword_1004C2A80);
      sub_100002CE0(v38, &qword_1005A96E0, &qword_1004C2A80);
      v34(v33, v26);
      sub_100002CE0(v29, &qword_1005A96E0, &qword_1004C2A80);
      return v28 & 1;
    }

    sub_100002CE0(v13, &qword_1005A96E0, &qword_1004C2A80);
    sub_100002CE0(v38, &qword_1005A96E0, &qword_1004C2A80);
    (*(v23 + 8))(v39, v21);
    goto LABEL_6;
  }

  sub_100002CE0(v13, &qword_1005A96E0, &qword_1004C2A80);
  sub_100002CE0(v20, &qword_1005A96E0, &qword_1004C2A80);
  if (v27(v25 + v22, 1, v21) != 1)
  {
LABEL_6:
    sub_100002CE0(v25, &qword_1005B0B70, &qword_1004D6B30);
    v28 = 0;
    return v28 & 1;
  }

  sub_100002CE0(v25, &qword_1005A96E0, &qword_1004C2A80);
  v28 = 1;
  return v28 & 1;
}

uint64_t sub_10043A334()
{
  v0 = type metadata accessor for Handle();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v17 - v5;
  Friend.handle.getter();
  v7 = Handle.identifier.getter();
  v9 = v8;
  v10 = *(v1 + 8);
  v10(v6, v0);
  Friend.handle.getter();
  v11 = Handle.identifier.getter();
  v13 = v12;
  v10(v4, v0);
  if (v7 == v11 && v9 == v13)
  {
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v15 & 1;
}

uint64_t sub_10043A4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10004B564(&qword_1005B3B60, &qword_1004D8B88);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  type metadata accessor for WorkItemQueue.WorkItem();
  (*(v7 + 16))(v10, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  *(v12 + ((v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_10043A6AC(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = type metadata accessor for Date();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  sub_10004B564(&qword_1005AEB98, &unk_1004D07C0);
  v2[13] = swift_task_alloc();
  v5 = type metadata accessor for SharedSecretKey();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  sub_10004B564(&qword_1005B1C88, &qword_1004D5E68);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v6 = type metadata accessor for OwnerSharedSecretsRecord(0);
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v7 = swift_task_alloc();
  v2[27] = v7;
  *v7 = v2;
  v7[1] = sub_10043A968;

  return daemon.getter();
}

uint64_t sub_10043A968(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[28] = a1;

  v3 = swift_task_alloc();
  v2[29] = v3;
  v4 = type metadata accessor for Daemon();
  v2[30] = v4;
  v5 = type metadata accessor for LocalStorageService();
  v6 = sub_1000069AC(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[31] = v6;
  v7 = sub_1000069AC(&qword_1005AAB88, type metadata accessor for LocalStorageService, &unk_1004D5A30);
  *v3 = v9;
  v3[1] = sub_10043AB48;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10043AB48(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[32] = a1;
  v3[33] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10043C4EC, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[34] = v5;
    *v5 = v4;
    v5[1] = sub_10043ACD4;
    v6 = v3[18];

    return sub_100309F04(v6);
  }
}

uint64_t sub_10043ACD4()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_10043C5D0;
  }

  else
  {
    v2 = sub_10043ADE8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10043ADE8()
{
  v59 = v0;
  v1 = v0[18];
  if ((*(v0[20] + 48))(v1, 1, v0[19]) == 1)
  {
    v2 = v0[14];
    v3 = v0[15];
    v4 = v0[13];
    sub_100002CE0(v1, &qword_1005B1C88, &qword_1004D5E68);
    static SharedSecretKey.length.getter();
    static Data.random(bytes:)();
    sub_1000069AC(&qword_1005AEC08, &type metadata accessor for SharedSecretKey, &protocol conformance descriptor for SharedSecretKey);
    KeyRepresenting.init(rawValue:)();
    if ((*(v3 + 48))(v4, 1, v2) == 1)
    {
      sub_100002CE0(v0[13], &qword_1005AEB98, &unk_1004D07C0);
      if (qword_1005A8530 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_10000A6F0(v5, qword_1005E0C30);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v58 = v9;
        *v8 = 136446210;
        *(v8 + 4) = sub_10000D01C(0xD000000000000023, 0x80000001004EA560, &v58);
        _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s Unable to generate SharedSecretKey!", v8, 0xCu);
        sub_100004984(v9);
      }

      v10 = v0[1];

      return v10();
    }

    else
    {
      v26 = v0[22];
      v27 = v0[19];
      v28 = v0[15];
      v29 = v0[11];
      v30 = v0[12];
      v55 = v0[10];
      v56 = v0[16];
      v53 = v0[9];
      v54 = v0[14];
      v31 = v0[8];
      v57 = v0[7];
      (*(v28 + 32))();
      sub_1004B93E4();
      v32 = String.utf8Data.getter();
      v34 = v33;

      v0[2] = v32;
      v0[3] = v34;
      sub_1000CA210();
      DataProtocol.stableUUID.getter();
      sub_1000049D0(v32, v34);
      static Date.trustedNow.getter(v53);
      (*(v29 + 16))(v26, v30, v55);
      (*(v28 + 16))(v26 + v27[6], v56, v54);
      (*(v31 + 16))(v26 + v27[7], v53, v57);
      *(v26 + v27[5]) = 1;
      if (qword_1005A8530 != -1)
      {
        swift_once();
      }

      v35 = v0[21];
      v36 = v0[22];
      v37 = type metadata accessor for Logger();
      sub_10000A6F0(v37, qword_1005E0C30);
      sub_10044AC80(v36, v35, type metadata accessor for OwnerSharedSecretsRecord);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = v0[23];
        v41 = v0[21];
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v58 = v43;
        *v42 = 136315138;
        sub_10044AC80(v41, v40, type metadata accessor for OwnerSharedSecretsRecord);
        v44 = String.init<A>(describing:)();
        v46 = v45;
        sub_10044ACE8(v41, type metadata accessor for OwnerSharedSecretsRecord);
        v47 = sub_10000D01C(v44, v46, &v58);

        *(v42 + 4) = v47;
        _os_log_impl(&_mh_execute_header, v38, v39, "Creating new OwnerSharedSecretsRecord: %s", v42, 0xCu);
        sub_100004984(v43);
      }

      else
      {
        v50 = v0[21];

        sub_10044ACE8(v50, type metadata accessor for OwnerSharedSecretsRecord);
      }

      v51 = swift_task_alloc();
      v0[36] = v51;
      *v51 = v0;
      v51[1] = sub_10043B6A8;
      v52 = v0[22];

      return sub_10030A8A4(v52);
    }
  }

  else
  {
    sub_10044AD48(v1, v0[25], type metadata accessor for OwnerSharedSecretsRecord);
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v12 = v0[24];
    v13 = v0[25];
    v14 = type metadata accessor for Logger();
    sub_10000A6F0(v14, qword_1005E0C30);
    sub_10044AC80(v13, v12, type metadata accessor for OwnerSharedSecretsRecord);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[24];
    if (v17)
    {
      v19 = v0[23];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v58 = v21;
      *v20 = 136315138;
      sub_10044AC80(v18, v19, type metadata accessor for OwnerSharedSecretsRecord);
      v22 = String.init<A>(describing:)();
      v24 = v23;
      sub_10044ACE8(v18, type metadata accessor for OwnerSharedSecretsRecord);
      v25 = sub_10000D01C(v22, v24, &v58);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v15, v16, "Found existing owner record: %s", v20, 0xCu);
      sub_100004984(v21);
    }

    else
    {

      sub_10044ACE8(v18, type metadata accessor for OwnerSharedSecretsRecord);
    }

    sub_10044AD48(v0[25], v0[26], type metadata accessor for OwnerSharedSecretsRecord);
    v48 = sub_100209E2C(_swiftEmptyArrayStorage);
    v0[44] = v48;
    v49 = swift_task_alloc();
    v0[45] = v49;
    *v49 = v0;
    v49[1] = sub_10043BE40;

    return sub_100402934(0xD00000000000003BLL, 0x80000001004EA590, 0, v48);
  }
}

uint64_t sub_10043B6A8()
{
  v2 = *v1;
  v2[37] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10043C6B4, 0, 0);
  }

  else
  {
    sub_10044AC80(v2[22], v2[26], type metadata accessor for OwnerSharedSecretsRecord);
    v3 = swift_task_alloc();
    v2[38] = v3;
    *v3 = v2;
    v3[1] = sub_10043B834;

    return daemon.getter();
  }
}

uint64_t sub_10043B834(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 312) = a1;

  v5 = swift_task_alloc();
  *(v3 + 320) = v5;
  v6 = type metadata accessor for NITokenService_LocalMessaging();
  v7 = sub_1000069AC(&qword_1005AD550, type metadata accessor for NITokenService_LocalMessaging, &unk_1004D87A0);
  *v5 = v4;
  v5[1] = sub_10043B9E8;
  v8 = *(v2 + 248);
  v9 = *(v2 + 240);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_10043B9E8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 328) = v1;

  if (v1)
  {
    v5 = sub_10043C830;
    v6 = 0;
  }

  else
  {
    *(v4 + 336) = a1;
    v5 = sub_10043BB40;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_10043BB40()
{
  sub_10040231C();
  v1 = swift_task_alloc();
  *(v0 + 344) = v1;
  *v1 = v0;
  v1[1] = sub_10043BBD8;

  return sub_1003F54F4(0);
}

uint64_t sub_10043BBD8()
{

  return _swift_task_switch(sub_10043BCD4, 0, 0);
}

uint64_t sub_10043BCD4()
{
  v1 = v0[22];
  v2 = v0[15];
  v13 = v0[16];
  v3 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v7 = v0[9];
  v6 = v0[10];
  v9 = v0[7];
  v8 = v0[8];

  sub_10044ACE8(v1, type metadata accessor for OwnerSharedSecretsRecord);
  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v13, v3);
  v10 = sub_100209E2C(_swiftEmptyArrayStorage);
  v0[44] = v10;
  v11 = swift_task_alloc();
  v0[45] = v11;
  *v11 = v0;
  v11[1] = sub_10043BE40;

  return sub_100402934(0xD00000000000003BLL, 0x80000001004EA590, 0, v10);
}

uint64_t sub_10043BE40()
{

  return _swift_task_switch(sub_10043BF58, 0, 0);
}

uint64_t sub_10043BF58()
{
  v1 = v0[26];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[17];
  sub_10044AC80(v1, v4, type metadata accessor for OwnerSharedSecretsRecord);
  (*(v3 + 56))(v4, 0, 1, v2);
  sub_10004B564(&qword_1005B3B60, &qword_1004D8B88);
  CheckedContinuation.resume(returning:)();

  sub_10044ACE8(v1, type metadata accessor for OwnerSharedSecretsRecord);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10043C0E8()
{

  return _swift_task_switch(sub_10043C21C, 0, 0);
}

uint64_t sub_10043C21C()
{
  v12 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0C30);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[46];
    v5 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD000000000000023, 0x80000001004EA560, &v11);
    *(v5 + 12) = 2082;
    v0[4] = v4;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v11);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s error %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  (*(v0[20] + 56))(v0[17], 1, 1, v0[19]);
  sub_10004B564(&qword_1005B3B60, &qword_1004D8B88);
  CheckedContinuation.resume(returning:)();

  v9 = v0[1];

  return v9();
}

uint64_t sub_10043C4EC()
{

  v1 = v0[33];
  v0[46] = v1;
  swift_errorRetain();
  v2 = sub_100209E2C(_swiftEmptyArrayStorage);
  v0[47] = v2;
  v3 = swift_task_alloc();
  v0[48] = v3;
  *v3 = v0;
  v3[1] = sub_10043C0E8;

  return sub_100402934(0xD00000000000003BLL, 0x80000001004EA590, v1, v2);
}

uint64_t sub_10043C5D0()
{

  v1 = v0[35];
  v0[46] = v1;
  swift_errorRetain();
  v2 = sub_100209E2C(_swiftEmptyArrayStorage);
  v0[47] = v2;
  v3 = swift_task_alloc();
  v0[48] = v3;
  *v3 = v0;
  v3[1] = sub_10043C0E8;

  return sub_100402934(0xD00000000000003BLL, 0x80000001004EA590, v1, v2);
}

uint64_t sub_10043C6B4()
{
  v1 = v0[22];
  v2 = v0[15];
  v14 = v0[16];
  v3 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v7 = v0[9];
  v6 = v0[10];
  v9 = v0[7];
  v8 = v0[8];

  sub_10044ACE8(v1, type metadata accessor for OwnerSharedSecretsRecord);
  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v14, v3);
  v10 = v0[37];
  v0[46] = v10;
  swift_errorRetain();
  v11 = sub_100209E2C(_swiftEmptyArrayStorage);
  v0[47] = v11;
  v12 = swift_task_alloc();
  v0[48] = v12;
  *v12 = v0;
  v12[1] = sub_10043C0E8;

  return sub_100402934(0xD00000000000003BLL, 0x80000001004EA590, v10, v11);
}

uint64_t sub_10043C830()
{
  v1 = v0[22];
  v2 = v0[15];
  v14 = v0[16];
  v15 = v0[26];
  v13 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v8 = v0[7];
  v7 = v0[8];

  sub_10044ACE8(v1, type metadata accessor for OwnerSharedSecretsRecord);
  (*(v7 + 8))(v6, v8);
  (*(v3 + 8))(v4, v5);
  (*(v2 + 8))(v14, v13);
  sub_10044ACE8(v15, type metadata accessor for OwnerSharedSecretsRecord);
  v9 = v0[41];
  v0[46] = v9;
  swift_errorRetain();
  v10 = sub_100209E2C(_swiftEmptyArrayStorage);
  v0[47] = v10;
  v11 = swift_task_alloc();
  v0[48] = v11;
  *v11 = v0;
  v11[1] = sub_10043C0E8;

  return sub_100402934(0xD00000000000003BLL, 0x80000001004EA590, v9, v10);
}

uint64_t sub_10043C9C0(uint64_t a1, uint64_t a2)
{
  v2[22] = a1;
  v2[23] = a2;
  v3 = type metadata accessor for DiscoveryToken(0);
  v2[24] = v3;
  v2[25] = *(v3 - 8);
  v2[26] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v2[27] = v4;
  v2[28] = *(v4 - 8);
  v2[29] = swift_task_alloc();

  return _swift_task_switch(sub_10043CADC, 0, 0);
}

uint64_t sub_10043CADC(uint64_t a1)
{
  *(v1 + 160) = _swiftEmptyArrayStorage;
  static ReferenceClock.now.getter();
  v2 = swift_task_alloc();
  *(v1 + 240) = v2;
  *v2 = v1;
  v2[1] = sub_10043CB88;

  return sub_100403F98();
}

uint64_t sub_10043CB88(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 232);
  v5 = *(*v2 + 224);
  v6 = *(*v2 + 216);
  *(v3 + 248) = a1;
  *(v3 + 256) = v1;

  (*(v5 + 8))(v4, v6);
  if (v1)
  {
    v7 = sub_10043ECF8;
  }

  else
  {
    v7 = sub_10043CCFC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10043CCFC()
{
  v1 = v0[31];
  if (v1)
  {
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A6F0(v2, qword_1005E0C30);
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[31];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138543362;
      *(v7 + 4) = v3;
      *v8 = v6;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, v5, "Setting owner token: %{public}@", v7, 0xCu);
      sub_100002CE0(v8, &qword_1005A9670, &unk_1004C2480);
    }

    v10 = v3;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v0[20] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[20] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v11 = v0[20];
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v0[33] = v11;
  v12 = swift_task_alloc();
  v0[34] = v12;
  *v12 = v0;
  v12[1] = sub_10043CF24;

  return sub_100436154();
}

uint64_t sub_10043CF24(char a1)
{
  *(*v1 + 458) = a1;

  return _swift_task_switch(sub_10043D024, 0, 0);
}

uint64_t sub_10043D024()
{
  v15 = v0;
  if (*(v0 + 458) > 2u || *(v0 + 458))
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v1 & 1) == 0)
    {
      if (qword_1005A8530 != -1)
      {
        swift_once();
      }

      v2 = type metadata accessor for Logger();
      *(v0 + 376) = sub_10000A6F0(v2, qword_1005E0C30);

      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = *(v0 + 264);
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v14 = v7;
        *v6 = 136446466;
        *(v6 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004EA660, &v14);
        *(v6 + 12) = 1024;
        if (v5 >> 62)
        {
          v8 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v6 + 14) = v8 != 0;
        _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s should not include friend tokens. Start beaconing owner token? %{BOOL}d", v6, 0x12u);
        sub_100004984(v7);
      }

      v9 = *(v0 + 264);
      v10 = swift_allocObject();
      *(v0 + 384) = v10;
      *(v10 + 16) = v9;
      v11 = swift_task_alloc();
      *(v0 + 392) = v11;
      *v11 = v0;
      v11[1] = sub_10043E1BC;

      return sub_100430774(sub_100430774, &unk_1004D8C30, v10);
    }
  }

  else
  {
  }

  v13 = swift_task_alloc();
  *(v0 + 280) = v13;
  *v13 = v0;
  v13[1] = sub_10043D3AC;

  return sub_10043F744();
}

uint64_t sub_10043D3AC(uint64_t a1)
{
  *(*v1 + 288) = a1;

  return _swift_task_switch(sub_10043D4AC, 0, 0);
}

uint64_t sub_10043D4AC()
{
  v23 = v0;
  v1 = v0[36];
  v2 = *(v1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = v0[25];
    v22 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    do
    {
      v7 = v0[26];
      sub_10044AC80(v5, v7, type metadata accessor for DiscoveryToken);
      v8 = *v7;
      sub_10044ACE8(v7, type metadata accessor for DiscoveryToken);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v5 += v6;
      --v2;
    }

    while (v2);
    v3 = v22;
  }

  sub_100249664(v3);
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  v0[37] = sub_10000A6F0(v9, qword_1005E0C30);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 134218242;
    *(v12 + 4) = *(v1 + 16);

    *(v12 + 12) = 2082;
    v14 = Array.description.getter();
    v16 = v15;

    v17 = sub_10000D01C(v14, v16, &v22);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "Setting friends tokens[%ld]: %{public}s", v12, 0x16u);
    sub_100004984(v13);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v18 = v0[20];
  v0[38] = v18;
  v19 = swift_allocObject();
  v0[39] = v19;
  *(v19 + 16) = v18;

  v20 = swift_task_alloc();
  v0[40] = v20;
  *v20 = v0;
  v20[1] = sub_10043D7EC;

  return sub_100430774(sub_100430774, &unk_1004D8C60, v19);
}

uint64_t sub_10043D7EC()
{
  *(*v1 + 328) = v0;

  if (v0)
  {

    v2 = sub_10043EF18;
  }

  else
  {
    v2 = sub_10043D92C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10043D92C()
{
  v1 = swift_task_alloc();
  *(v0 + 336) = v1;
  *v1 = v0;
  v1[1] = sub_10043D9E4;

  return sub_1004301F4(&unk_1004D8C68, 0);
}

uint64_t sub_10043D9E4(uint64_t a1)
{
  *(*v2 + 344) = a1;

  if (v1)
  {

    v3 = sub_10043DB00;
  }

  else
  {
    v3 = sub_10043DC28;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10043DB00()
{
  v1 = *(v0 + 304);
  if (v1 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();

    if (!v8)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v2)
    {
      goto LABEL_6;
    }
  }

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "interactableDiscoveryTokens is unexpectedly empty!", v5, 2u);
  }

LABEL_6:

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10043DC28()
{
  v13 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v12 = v4;
    *v3 = 136446210;
    sub_1002414A8();
    v5 = Array.description.getter();
    v7 = v6;

    v8 = sub_10000D01C(v5, v7, &v12);

    *(v3 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Interactable discovery tokens: %{public}s", v3, 0xCu);
    sub_100004984(v4);
  }

  else
  {
  }

  if (qword_1005A8548 != -1)
  {
    swift_once();
  }

  v9 = sub_10004B564(&qword_1005AFFF0, &qword_1004D1520);
  sub_10000A6F0(v9, qword_1005B34C8);
  *(v0 + 457) = 1;
  swift_beginAccess();
  ManagedDefault.wrappedValue.setter();
  swift_endAccess();
  v10 = swift_task_alloc();
  *(v0 + 352) = v10;
  *v10 = v0;
  v10[1] = sub_10043DE6C;

  return sub_10044D898();
}

uint64_t sub_10043DE6C()
{

  return _swift_task_switch(sub_10043DF68, 0, 0);
}

uint64_t sub_10043DF68()
{
  v1 = sub_100209E2C(_swiftEmptyArrayStorage);
  *(v0 + 360) = v1;
  v2 = swift_task_alloc();
  *(v0 + 368) = v2;
  *v2 = v0;
  v2[1] = sub_10043E034;

  return sub_100402934(0xD00000000000003ELL, 0x80000001004EA6C0, 0, v1);
}

uint64_t sub_10043E034()
{

  return _swift_task_switch(sub_10043E14C, 0, 0);
}

uint64_t sub_10043E14C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10043E1BC()
{

  if (v0)
  {

    v1 = sub_10044ADC4;
  }

  else
  {

    v1 = sub_10043E304;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10043E304()
{
  v1 = swift_task_alloc();
  *(v0 + 400) = v1;
  *v1 = v0;
  v1[1] = sub_10043E3BC;

  return sub_1004301F4(&unk_1004D8C40, 0);
}

uint64_t sub_10043E3BC(uint64_t a1)
{
  *(*v2 + 408) = a1;

  if (v1)
  {

    v3 = sub_10043E4D8;
  }

  else
  {
    v3 = sub_10043E600;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10043E4D8()
{
  v1 = *(v0 + 264);
  if (v1 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();

    if (!v8)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v2)
    {
      goto LABEL_6;
    }
  }

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "interactableDiscoveryTokens is unexpectedly empty!", v5, 2u);
  }

LABEL_6:

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10043E600()
{
  v14 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v13 = v4;
    *v3 = 136446210;
    sub_1002414A8();
    v5 = Array.description.getter();
    v7 = v6;

    v8 = sub_10000D01C(v5, v7, &v13);

    *(v3 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Interactable discovery tokens: %{public}s", v3, 0xCu);
    sub_100004984(v4);
  }

  else
  {
  }

  if (qword_1005A8548 != -1)
  {
    swift_once();
  }

  v9 = sub_10004B564(&qword_1005AFFF0, &qword_1004D1520);
  sub_10000A6F0(v9, qword_1005B34C8);
  *(v0 + 456) = 1;
  swift_beginAccess();
  ManagedDefault.wrappedValue.setter();
  swift_endAccess();
  v10 = sub_100209E2C(_swiftEmptyArrayStorage);
  *(v0 + 416) = v10;
  v11 = swift_task_alloc();
  *(v0 + 424) = v11;
  *v11 = v0;
  v11[1] = sub_10043E87C;

  return sub_100402934(0xD00000000000003ELL, 0x80000001004EA680, 0, v10);
}

uint64_t sub_10043E87C()
{

  return _swift_task_switch(sub_10043E994, 0, 0);
}

uint64_t sub_10043E994()
{
  v1 = *(v0 + 458);
  sub_1003DA6A0();
  v2 = swift_allocError();
  *(v0 + 432) = v2;
  *v3 = 20;
  sub_10004B564(&qword_1005B2DD0, &unk_1004D7C00);
  inited = swift_initStackObject();
  v5 = inited;
  *(inited + 16) = xmmword_1004C1900;
  *(inited + 32) = 0x656C6261646E6966;
  v6 = inited + 32;
  *(inited + 40) = 0xEE00737574617453;
  if (v1 <= 2)
  {
    if (v1 == 1)
    {
      v7 = "notFindableFindMyAppUninstalled";
      v8 = 0xD000000000000010;
    }

    else
    {
      v7 = "MyLocationDisabled";
      v8 = 0xD00000000000001FLL;
    }
  }

  else if (v1 == 3)
  {
    v7 = "ionServicesDisabled";
    v8 = 0xD000000000000022;
  }

  else if (v1 == 4)
  {
    v7 = "notFindableUnknown";
    v8 = 0xD000000000000023;
  }

  else
  {
    v7 = "and(_:content:credential:)";
    v8 = 0xD000000000000012;
  }

  v9 = v7 | 0x8000000000000000;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = sub_1000246F4();
  *(v5 + 48) = v8;
  *(v5 + 56) = v9;
  *(v5 + 88) = 1;
  v10 = sub_100209E2C(v5);
  *(v0 + 440) = v10;
  swift_setDeallocating();
  sub_100002CE0(v6, &qword_1005B0160, &qword_1004D16F0);
  v11 = swift_task_alloc();
  *(v0 + 448) = v11;
  *v11 = v0;
  v11[1] = sub_10043EBC4;

  return sub_100402934(0xD00000000000003ELL, 0x80000001004EA6C0, v2, v10);
}

uint64_t sub_10043EBC4()
{

  return _swift_task_switch(sub_10044ADE4, 0, 0);
}

uint64_t sub_10043ECF8()
{
  v12 = v0;
  v1 = v0[32];
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0C30);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004EA660, &v11);
    *(v5 + 12) = 2082;
    v0[21] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v11);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s error %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_10043EF18()
{
  v12 = v0;
  v1 = v0[41];
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0C30);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004EA660, &v11);
    *(v5 + 12) = 2082;
    v0[21] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v11);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s error %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_10043F158()
{
  v1 = objc_opt_self();
  sub_1002414A8();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[19] = isa;
  v0[2] = v0;
  v0[3] = sub_10043F2A4;
  v3 = swift_continuation_init();
  v0[17] = sub_10004B564(&qword_1005B3B70, &qword_1004D8C78);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10043F3B4;
  v0[13] = &unk_10059C3B0;
  v0[14] = v3;
  [v1 setAsyncLocalDeviceInteractableDiscoveryTokens:isa completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10043F2A4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_10044ADE8;
  }

  else
  {
    v2 = sub_10044ADF4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10043F3B4(uint64_t a1, void *a2)
{
  v3 = sub_100011AEC((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_10043F480()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10043F5A8;
  v2 = swift_continuation_init();
  v0[17] = sub_10004B564(&qword_1005B3B68, &qword_1004D8C70);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100437934;
  v0[13] = &unk_10059C388;
  v0[14] = v2;
  [v1 getAsyncInteractableDiscoveryTokens:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10043F5A8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_10043F6D8;
  }

  else
  {
    v2 = sub_10043F6B8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10043F6D8(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_10043F744()
{
  v1[4] = v0;
  v1[5] = *v0;
  v2 = swift_task_alloc();
  v1[6] = v2;
  *v2 = v1;
  v2[1] = sub_10043F800;

  return daemon.getter();
}

uint64_t sub_10043F800(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[7] = a1;

  v3 = swift_task_alloc();
  v2[8] = v3;
  v4 = type metadata accessor for Daemon();
  v2[9] = v4;
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_1000069AC(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[10] = v6;
  v7 = sub_1000069AC(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_10043F9E0;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10043F9E0(uint64_t a1)
{
  v3 = *v2;
  v3[11] = a1;
  v3[12] = v1;

  if (v1)
  {
    v4 = v3[4];

    return _swift_task_switch(sub_100440628, v4, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[13] = v5;
    *v5 = v3;
    v5[1] = sub_10043FB54;

    return daemon.getter();
  }
}

uint64_t sub_10043FB54(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 112) = a1;

  v5 = swift_task_alloc();
  *(v3 + 120) = v5;
  v6 = type metadata accessor for CloudStorageService();
  v7 = sub_1000069AC(&qword_1005AD568, type metadata accessor for CloudStorageService, &unk_1004D03B0);
  *v5 = v4;
  v5[1] = sub_10043FD08;
  v8 = *(v2 + 80);
  v9 = *(v2 + 72);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_10043FD08(uint64_t a1)
{
  v3 = *v2;
  v3[16] = a1;
  v3[17] = v1;

  if (v1)
  {
    v4 = v3[4];
    v5 = sub_100440838;
  }

  else
  {
    v6 = v3[4];

    v5 = sub_10043FE30;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10043FE30()
{
  v1 = v0[16];
  v2 = v0[5];
  v3 = swift_allocObject();
  v0[18] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_10043FF30;

  return withTimeout<A>(_:block:)(v4, 0x8155A43676E00000, 6, &unk_1004D8C88, v3, &type metadata for () + 1);
}

uint64_t sub_10043FF30()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_100440A50;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_100440058;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100440074()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v0 + 168) = v4;
  *(v4 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v4 + v3, enum case for HandleType.follower(_:), v1);
  v5 = swift_task_alloc();
  *(v0 + 176) = v5;
  *v5 = v0;
  v5[1] = sub_1004401D8;

  return sub_10001C61C(v4, 1);
}

uint64_t sub_1004401D8(uint64_t a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 184) = a1;

  return _swift_task_switch(sub_10044030C, v2, 0);
}

uint64_t sub_10044030C()
{
  v1 = v0[16];
  v3 = v0[4];
  v2 = v0[5];
  v0[3] = v0[23];
  v4 = swift_task_alloc();
  v0[24] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[25] = v5;
  v6 = sub_10004B564(&qword_1005B0578, &qword_1004D5CA0);
  v7 = type metadata accessor for DiscoveryToken(0);
  v8 = sub_10001DF0C(&qword_1005B3B78, &qword_1005B0578, &qword_1004D5CA0, &protocol conformance descriptor for [A]);
  *v5 = v0;
  v5[1] = sub_10044045C;

  return Sequence.asyncCompactMap<A>(_:)(&unk_1004D8C98, v4, v6, v7, v8);
}

uint64_t sub_10044045C(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
  }

  else
  {
    v6 = *(v4 + 32);

    *(v4 + 208) = a1;

    return _swift_task_switch(sub_1004405B8, v6, 0);
  }
}

uint64_t sub_1004405B8()
{

  v1 = *(v0 + 208);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100440628()
{
  v12 = v0;
  v1 = v0[12];

  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0C30);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0x6F54646E65697266, 0xEE002928736E656BLL, &v11);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v11);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s error %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[1];

  return v9(_swiftEmptyArrayStorage);
}

uint64_t sub_100440838()
{
  v12 = v0;

  v1 = v0[17];

  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0C30);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0x6F54646E65697266, 0xEE002928736E656BLL, &v11);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v11);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s error %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[1];

  return v9(_swiftEmptyArrayStorage);
}

uint64_t sub_100440A50()
{
  v12 = v0;

  v1 = v0[20];

  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0C30);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0x6F54646E65697266, 0xEE002928736E656BLL, &v11);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v11);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s error %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[1];

  return v9(_swiftEmptyArrayStorage);
}

uint64_t sub_100440C94()
{
  v1 = objc_opt_self();
  sub_1002414A8();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[19] = isa;
  v0[2] = v0;
  v0[3] = sub_10043F2A4;
  v3 = swift_continuation_init();
  v0[17] = sub_10004B564(&qword_1005B3B70, &qword_1004D8C78);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10043F3B4;
  v0[13] = &unk_10059C338;
  v0[14] = v3;
  [v1 setAsyncLocalDeviceInteractableDiscoveryTokens:isa completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100440E00()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100439D08;
  v2 = swift_continuation_init();
  v0[17] = sub_10004B564(&qword_1005B3B68, &qword_1004D8C70);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100437934;
  v0[13] = &unk_10059C310;
  v0[14] = v2;
  [v1 getAsyncInteractableDiscoveryTokens:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

void sub_100440F28(double a1)
{
  v2 = v1;
  v44 = *v1;
  v4 = type metadata accessor for UUID();
  __chkstk_darwin(v4 - 8);
  v43[1] = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004B564(&qword_1005B02D8, &qword_1004D1868);
  v46 = *(v6 - 8);
  v47 = v6;
  __chkstk_darwin(v6);
  v45 = v43 - v7;
  v8 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  __chkstk_darwin(v8 - 8);
  v10 = v43 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v48 = v43 - v16;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000A6F0(v17, qword_1005E0C30);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v43[0] = v15;
    v22 = v21;
    v49[0] = v21;
    *v20 = 136446466;
    *(v20 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004EA5D0, v49);
    *(v20 + 12) = 2048;
    *(v20 + 14) = a1;
    _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s threshold: %f", v20, 0x16u);
    sub_100004984(v22);
    v2 = v1;
    v15 = v43[0];
  }

  My = type metadata accessor for Feature.FindMy();
  v49[3] = My;
  v49[4] = sub_1000069AC(&qword_1005A9EE8, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v24 = sub_10000331C(v49);
  (*(*(My - 8) + 104))(v24, enum case for Feature.FindMy.redStripe(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100004984(v49);
  if ((My & 1) == 0)
  {
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v49[0] = v33;
      *v32 = 136446210;
      *(v32 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004EA5D0, v49);
      v34 = "%{public}s Feature.FindMy.redStripe FF disabled.";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v30, v31, v34, v32, 0xCu);
      sub_100004984(v33);

LABEL_17:
    }

LABEL_18:

    return;
  }

  if ((sub_1003F399C() & 1) == 0)
  {
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v49[0] = v33;
      *v32 = 136446210;
      *(v32 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004EA5D0, v49);
      v34 = "%{public}s isFindingCapable == false.";
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  static Date.trustedNow.getter(v48);
  if (qword_1005A8550 != -1)
  {
    swift_once();
  }

  v25 = v47;
  v26 = sub_10000A6F0(v47, qword_1005B34E0);
  swift_beginAccess();
  v27 = v45;
  v28 = v46;
  (*(v46 + 16))(v45, v26, v25);
  ManagedDefault.wrappedValue.getter();
  (*(v28 + 8))(v27, v25);
  v29 = *(v12 + 48);
  if (v29(v10, 1, v11) == 1)
  {
    static Date.distantPast.getter();
    if (v29(v10, 1, v11) != 1)
    {
      sub_100002CE0(v10, &unk_1005AE5B0, &qword_1004C32F0);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
  }

  v35 = v48;
  Date.timeIntervalSince(_:)();
  v37 = v36;
  v38 = *(v12 + 8);
  v38(v15, v11);
  v38(v35, v11);
  if (v37 <= a1)
  {
    v30 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v30, v41))
    {
      goto LABEL_18;
    }

    v42 = swift_slowAlloc();
    *v42 = 134349312;
    *(v42 + 4) = v37;
    *(v42 + 12) = 2050;
    *(v42 + 14) = a1;
    _os_log_impl(&_mh_execute_header, v30, v41, "Time since last token request attempt: %{public}f. Threshold: %{public}f. Not sending.", v42, 0x16u);
    goto LABEL_17;
  }

  type metadata accessor for WorkItemQueue.WorkItem();
  v39 = swift_allocObject();
  v40 = v44;
  *(v39 + 16) = v2;
  *(v39 + 24) = v40;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_100441720()
{
  v1 = objc_opt_self();
  sub_1002414A8();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[19] = isa;
  v0[2] = v0;
  v0[3] = sub_10044186C;
  v3 = swift_continuation_init();
  v0[17] = sub_10004B564(&qword_1005B3B70, &qword_1004D8C78);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10043F3B4;
  v0[13] = &unk_10059C400;
  v0[14] = v3;
  [v1 setAsyncLocalDeviceInteractableDiscoveryTokens:isa completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10044186C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_1004419E0;
  }

  else
  {
    v2 = sub_10044197C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10044197C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004419E0(uint64_t a1)
{
  v2 = *(v1 + 152);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_100441A50(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = type metadata accessor for CloudKitStorage.State();
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v2[5] = swift_task_alloc();

  return _swift_task_switch(sub_100441B10, 0, 0);
}

uint64_t sub_100441B10()
{
  v9 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[6] = sub_10000A6F0(v1, qword_1005E0C30);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0x6F54646E65697266, 0xEE002928736E656BLL, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "Waiting for CloudKit to be available %{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = v0[2];
  (*(v0[4] + 104))(v0[5], enum case for CloudKitStorage.State.available(_:), v0[3]);

  return _swift_task_switch(sub_100441CBC, v6, 0);
}

uint64_t sub_100441CBC()
{
  v4 = (&async function pointer to dispatch thunk of CloudKitStorage.await(state:) + async function pointer to dispatch thunk of CloudKitStorage.await(state:));
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_100441D6C;
  v2 = *(v0 + 40);

  return v4(v2);
}

uint64_t sub_100441D6C()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = v2[2];
    v4 = sub_1002CABE8;
  }

  else
  {
    (*(v2[4] + 8))(v2[5], v2[3]);
    v4 = sub_100441EA0;
    v3 = 0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100441EA0(uint64_t a1)
{
  v9 = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0x6F54646E65697266, 0xEE002928736E656BLL, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "CloudKit is available. %{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_100441FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for Friend();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = sub_10004B564(&qword_1005B0F30, &qword_1004D3308);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v4[16] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  sub_10004B564(&qword_1005AEB98, &unk_1004D07C0);
  v4[21] = swift_task_alloc();
  v7 = type metadata accessor for SharedSecretKey();
  v4[22] = v7;
  v4[23] = *(v7 - 8);
  v4[24] = swift_task_alloc();
  sub_10004B564(&unk_1005AECE8, &qword_1004D07A0);
  v4[25] = swift_task_alloc();
  v8 = type metadata accessor for FriendSharedSecretsRecord(0);
  v4[26] = v8;
  v4[27] = *(v8 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  v4[30] = swift_task_alloc();
  v9 = type metadata accessor for Handle();
  v4[31] = v9;
  v4[32] = *(v9 - 8);
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v4[35] = v10;
  v4[36] = *(v10 - 8);
  v4[37] = swift_task_alloc();

  return _swift_task_switch(sub_1004423E4, 0, 0);
}

uint64_t sub_1004423E4(uint64_t a1)
{
  v34 = v1;
  v2 = v1[35];
  v3 = v1[36];
  v4 = v1[34];
  v5 = v1[31];
  v6 = v1[32];
  v7 = v1[30];
  Friend.handle.getter();
  Handle.peerID.getter();
  v8 = *(v6 + 8);
  v1[38] = v8;
  v1[39] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v5);
  if ((*(v3 + 48))(v7, 1, v2) == 1)
  {
    sub_100002CE0(v1[30], &qword_1005A96E0, &qword_1004C2A80);
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v9 = v1[10];
    v10 = v1[7];
    v11 = v1[8];
    v12 = v1[4];
    v13 = type metadata accessor for Logger();
    sub_10000A6F0(v13, qword_1005E0C30);
    (*(v11 + 16))(v9, v12, v10);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v1[10];
    v18 = v1[7];
    v19 = v1[8];
    if (v16)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v33 = v21;
      *v20 = 141558275;
      *(v20 + 4) = 1752392040;
      *(v20 + 12) = 2081;
      sub_1000069AC(&qword_1005AA720, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      (*(v19 + 8))(v17, v18);
      v25 = sub_10000D01C(v22, v24, &v33);

      *(v20 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v14, v15, "Missing friendSharedSecretsRecord for %{private,mask.hash}s", v20, 0x16u);
      sub_100004984(v21);
    }

    else
    {

      (*(v19 + 8))(v17, v18);
    }

    v30 = v1[3];
    v31 = type metadata accessor for DiscoveryToken(0);
    (*(*(v31 - 8) + 56))(v30, 1, 1, v31);

    v32 = v1[1];

    return v32();
  }

  else
  {
    (*(v1[36] + 32))(v1[37], v1[30], v1[35]);
    v26 = swift_task_alloc();
    v1[40] = v26;
    *v26 = v1;
    v26[1] = sub_100442868;
    v27 = v1[37];
    v28 = v1[25];

    return sub_1001C4430(v28, v27);
  }
}

uint64_t sub_100442868()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_100443794;
  }

  else
  {
    v2 = sub_10044297C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10044297C()
{
  v138 = v0;
  v1 = v0[26];
  v2 = v0[25];
  if ((*(v0[27] + 48))(v2, 1, v1) == 1)
  {
    (*(v0[36] + 8))(v0[37], v0[35]);
    sub_100002CE0(v2, &unk_1005AECE8, &qword_1004D07A0);
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v3 = v0[10];
    v4 = v0[7];
    v5 = v0[8];
    v6 = v0[4];
    v7 = type metadata accessor for Logger();
    sub_10000A6F0(v7, qword_1005E0C30);
    (*(v5 + 16))(v3, v6, v4);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[10];
    v12 = v0[7];
    v13 = v0[8];
    if (v10)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v137[0] = v15;
      *v14 = 141558275;
      *(v14 + 4) = 1752392040;
      *(v14 + 12) = 2081;
      sub_1000069AC(&qword_1005AA720, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v13 + 8))(v11, v12);
      v19 = sub_10000D01C(v16, v18, v137);

      *(v14 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v8, v9, "Missing friendSharedSecretsRecord for %{private,mask.hash}s", v14, 0x16u);
      sub_100004984(v15);
    }

    else
    {

      (*(v13 + 8))(v11, v12);
    }

LABEL_16:
    v50 = v0[3];
    v51 = type metadata accessor for DiscoveryToken(0);
    (*(*(v51 - 8) + 56))(v50, 1, 1, v51);
    goto LABEL_17;
  }

  v20 = v0[29];
  v21 = v0[22];
  v22 = v0[23];
  v23 = v0[21];
  sub_10044AD48(v2, v20, type metadata accessor for FriendSharedSecretsRecord);
  sub_100005F04(v20 + *(v1 + 32), v23, &qword_1005AEB98, &unk_1004D07C0);
  if ((*(v22 + 48))(v23, 1, v21) == 1)
  {
    v24 = v0[21];
    v25 = &qword_1005AEB98;
    v26 = &unk_1004D07C0;
LABEL_11:
    sub_100002CE0(v24, v25, v26);
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v33 = v0[28];
    v34 = v0[29];
    v35 = type metadata accessor for Logger();
    sub_10000A6F0(v35, qword_1005E0C30);
    sub_10044AC80(v34, v33, type metadata accessor for FriendSharedSecretsRecord);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    v38 = os_log_type_enabled(v36, v37);
    v39 = v0[36];
    v40 = v0[37];
    v41 = v0[35];
    v42 = v0[28];
    v43 = v0[29];
    if (v38)
    {
      v135 = v0[29];
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v137[0] = v45;
      *v44 = 136446210;
      sub_1000069AC(&qword_1005A92C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v134 = v41;
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      sub_10044ACE8(v42, type metadata accessor for FriendSharedSecretsRecord);
      v49 = sub_10000D01C(v46, v48, v137);

      *(v44 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v36, v37, "No incomingSharedSecret for %{public}s", v44, 0xCu);
      sub_100004984(v45);

      sub_10044ACE8(v135, type metadata accessor for FriendSharedSecretsRecord);
      (*(v39 + 8))(v40, v134);
    }

    else
    {

      sub_10044ACE8(v42, type metadata accessor for FriendSharedSecretsRecord);
      sub_10044ACE8(v43, type metadata accessor for FriendSharedSecretsRecord);
      (*(v39 + 8))(v40, v41);
    }

    goto LABEL_16;
  }

  v27 = v0[29];
  v28 = v0[26];
  v29 = v0[17];
  v30 = v0[18];
  v31 = v0[16];
  (*(v0[23] + 32))(v0[24], v0[21], v0[22]);
  sub_100005F04(v27 + *(v28 + 36), v31, &unk_1005AE5B0, &qword_1004C32F0);
  if ((*(v30 + 48))(v31, 1, v29) == 1)
  {
    v32 = v0[16];
    (*(v0[23] + 8))(v0[24], v0[22]);
    v25 = &unk_1005AE5B0;
    v26 = &qword_1004C32F0;
    v24 = v32;
    goto LABEL_11;
  }

  v54 = v0[41];
  v55 = v0[24];
  v57 = v0[19];
  v56 = v0[20];
  v58 = v0[15];
  (*(v0[18] + 32))(v56, v0[16], v0[17]);
  static Date.trustedNow.getter(v57);
  sub_10042E958(v55, v56, v57, v58);
  if (v54)
  {
    v59 = v0[29];
    v61 = v0[23];
    v60 = v0[24];
    v62 = v0[22];
    v63 = v0[20];
    v64 = v0[17];
    v65 = *(v0[18] + 8);
    v65(v0[19], v64);
    v65(v63, v64);
    (*(v61 + 8))(v60, v62);
    sub_10044ACE8(v59, type metadata accessor for FriendSharedSecretsRecord);
    (*(v0[36] + 8))(v0[37], v0[35]);
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v67 = v0[8];
    v66 = v0[9];
    v68 = v0[7];
    v69 = v0[4];
    v70 = type metadata accessor for Logger();
    sub_10000A6F0(v70, qword_1005E0C30);
    (*(v67 + 16))(v66, v69, v68);
    swift_errorRetain();
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();

    v73 = os_log_type_enabled(v71, v72);
    v75 = v0[8];
    v74 = v0[9];
    v76 = v0[7];
    if (v73)
    {
      v77 = swift_slowAlloc();
      v137[0] = swift_slowAlloc();
      *v77 = 141558531;
      *(v77 + 4) = 1752392040;
      *(v77 + 12) = 2081;
      sub_1000069AC(&qword_1005AA720, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
      v78 = dispatch thunk of CustomStringConvertible.description.getter();
      v80 = v79;
      (*(v75 + 8))(v74, v76);
      v81 = sub_10000D01C(v78, v80, v137);

      *(v77 + 14) = v81;
      *(v77 + 22) = 2082;
      v0[2] = v54;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v82 = String.init<A>(describing:)();
      v84 = sub_10000D01C(v82, v83, v137);

      *(v77 + 24) = v84;
      _os_log_impl(&_mh_execute_header, v71, v72, "Unable to generate discovery token for %{private,mask.hash}s. Error: %{public}s.", v77, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v75 + 8))(v74, v76);
    }

    goto LABEL_16;
  }

  v133 = *(v0[18] + 8);
  v133(v0[19], v0[17]);
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v85 = v0[14];
  v86 = v0[15];
  v87 = v0[11];
  v88 = v0[7];
  v89 = v0[8];
  v90 = v0[4];
  v91 = type metadata accessor for Logger();
  sub_10000A6F0(v91, qword_1005E0C30);
  sub_100005F04(v86, v85, &qword_1005B0F30, &qword_1004D3308);
  (*(v89 + 16))(v87, v90, v88);
  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.default.getter();
  v136 = v92;
  if (os_log_type_enabled(v92, v93))
  {
    v119 = v0[38];
    v120 = v0[36];
    v129 = v0[35];
    v131 = v0[37];
    v94 = v0[33];
    v125 = v0[24];
    v127 = v0[29];
    v123 = v0[23];
    v124 = v0[22];
    v121 = v0[17];
    v122 = v0[20];
    v96 = v0[13];
    v95 = v0[14];
    v116 = v0[11];
    v97 = v0[8];
    v117 = v0[7];
    v118 = v0[31];
    v98 = swift_slowAlloc();
    v137[0] = swift_slowAlloc();
    *v98 = 141558787;
    *(v98 + 4) = 1752392040;
    *(v98 + 12) = 2081;
    sub_100005F04(v95, v96, &qword_1005B0F30, &qword_1004D3308);
    v99 = String.init<A>(describing:)();
    v101 = v100;
    sub_100002CE0(v95, &qword_1005B0F30, &qword_1004D3308);
    v102 = sub_10000D01C(v99, v101, v137);

    *(v98 + 14) = v102;
    *(v98 + 22) = 2160;
    *(v98 + 24) = 1752392040;
    *(v98 + 32) = 2081;
    Friend.handle.getter();
    v103 = Handle.identifier.getter();
    v105 = v104;
    v119(v94, v118);
    (*(v97 + 8))(v116, v117);
    v106 = sub_10000D01C(v103, v105, v137);

    *(v98 + 34) = v106;
    _os_log_impl(&_mh_execute_header, v136, v93, "Local discovery token: %{private,mask.hash}s for follower: %{private,mask.hash}s.", v98, 0x2Au);
    swift_arrayDestroy();

    v133(v122, v121);
    (*(v123 + 8))(v125, v124);
    sub_10044ACE8(v127, type metadata accessor for FriendSharedSecretsRecord);
    (*(v120 + 8))(v131, v129);
  }

  else
  {
    v107 = v0[36];
    v130 = v0[35];
    v132 = v0[37];
    v108 = v0[23];
    v126 = v0[24];
    v128 = v0[29];
    v109 = v0[22];
    v110 = v0[20];
    v111 = v0[17];
    v112 = v0[14];
    v113 = v0[11];
    v114 = v0[7];
    v115 = v0[8];

    (*(v115 + 8))(v113, v114);
    sub_100002CE0(v112, &qword_1005B0F30, &qword_1004D3308);
    v133(v110, v111);
    (*(v108 + 8))(v126, v109);
    sub_10044ACE8(v128, type metadata accessor for FriendSharedSecretsRecord);
    (*(v107 + 8))(v132, v130);
  }

  sub_1002CE81C(v0[15], v0[3]);
LABEL_17:

  v52 = v0[1];

  return v52();
}

uint64_t sub_100443794()
{
  v26 = v0;
  v1 = v0[41];
  (*(v0[36] + 8))(v0[37], v0[35]);
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  v5 = v0[4];
  v6 = type metadata accessor for Logger();
  sub_10000A6F0(v6, qword_1005E0C30);
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[8];
  v10 = v0[9];
  v12 = v0[7];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v13 = 141558531;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1000069AC(&qword_1005AA720, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = sub_10000D01C(v14, v16, &v25);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v18 = String.init<A>(describing:)();
    v20 = sub_10000D01C(v18, v19, &v25);

    *(v13 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "Unable to generate discovery token for %{private,mask.hash}s. Error: %{public}s.", v13, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v21 = v0[3];
  v22 = type metadata accessor for DiscoveryToken(0);
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);

  v23 = v0[1];

  return v23();
}

uint64_t sub_100443B88(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v3 = swift_task_alloc();
  v2[9] = v3;
  *v3 = v2;
  v3[1] = sub_100443C60;

  return daemon.getter();
}

uint64_t sub_100443C60(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[10] = a1;

  v3 = swift_task_alloc();
  v2[11] = v3;
  v4 = type metadata accessor for Daemon();
  v2[12] = v4;
  v5 = type metadata accessor for CloudStorageService();
  v6 = sub_1000069AC(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[13] = v6;
  v7 = sub_1000069AC(&qword_1005AD568, type metadata accessor for CloudStorageService, &unk_1004D03B0);
  *v3 = v9;
  v3[1] = sub_100443E40;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100443E40(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v4 = sub_100444EC8;
  }

  else
  {

    v4 = sub_100443F5C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100443F5C()
{
  v1 = v0[14];
  v2 = v0[6];
  v3 = swift_allocObject();
  v0[16] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_10044405C;

  return withTimeout<A>(_:block:)(v4, 0x8155A43676E00000, 6, &unk_1004D8BC8, v3, &type metadata for () + 1);
}

uint64_t sub_10044405C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_100444FAC;
  }

  else
  {

    v2 = sub_100444178;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100444178()
{
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_100444208;

  return daemon.getter();
}

uint64_t sub_100444208(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 160) = a1;

  v5 = swift_task_alloc();
  *(v3 + 168) = v5;
  v6 = type metadata accessor for DataManager(0);
  v7 = sub_1000069AC(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v5 = v4;
  v5[1] = sub_1004443BC;
  v8 = *(v2 + 104);
  v9 = *(v2 + 96);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1004443BC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v4 = sub_10044509C;
  }

  else
  {

    v4 = sub_1004444D8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1004444D8()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 112);
  v3 = swift_task_alloc();
  *(v0 + 192) = v3;
  v4 = *(v0 + 40);
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v3 + 32) = v4;
  v5 = swift_task_alloc();
  *(v0 + 200) = v5;
  *v5 = v0;
  v5[1] = sub_1004445D0;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_1004445D0()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_10044518C;
  }

  else
  {

    v2 = sub_1004446EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004446EC()
{
  v15 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0C30);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004EA5D0, &v14);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s completed!", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = v0[8];
  static Date.trustedNow.getter(v6);
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  if (qword_1005A8550 != -1)
  {
    swift_once();
  }

  v9 = v0[7];
  v8 = v0[8];
  v10 = sub_10004B564(&qword_1005B02D8, &qword_1004D1868);
  sub_10000A6F0(v10, qword_1005B34E0);
  sub_100005F04(v8, v9, &unk_1005AE5B0, &qword_1004C32F0);
  swift_beginAccess();
  ManagedDefault.wrappedValue.setter();
  swift_endAccess();
  sub_100002CE0(v8, &unk_1005AE5B0, &qword_1004C32F0);
  v11 = sub_100209E2C(_swiftEmptyArrayStorage);
  v0[27] = v11;
  v12 = swift_task_alloc();
  v0[28] = v12;
  *v12 = v0;
  v12[1] = sub_1004449E4;

  return sub_100402934(0xD00000000000003ALL, 0x80000001004EA600, 0, v11);
}

uint64_t sub_1004449E4()
{

  return _swift_task_switch(sub_100444AFC, 0, 0);
}

uint64_t sub_100444AFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100444B7C()
{

  return _swift_task_switch(sub_100444CB0, 0, 0);
}

uint64_t sub_100444CB0()
{
  v11 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0C30);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004EA5D0, &v10);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s error %{public}@", v4, 0x16u);
    sub_100002CE0(v5, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v6);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100444EC8()
{

  v1 = v0[15];
  v0[29] = v1;
  swift_errorRetain();
  v2 = sub_100209E2C(_swiftEmptyArrayStorage);
  v0[30] = v2;
  v3 = swift_task_alloc();
  v0[31] = v3;
  *v3 = v0;
  v3[1] = sub_100444B7C;

  return sub_100402934(0xD00000000000003ALL, 0x80000001004EA600, v1, v2);
}

uint64_t sub_100444FAC()
{

  v1 = v0[18];
  v0[29] = v1;
  swift_errorRetain();
  v2 = sub_100209E2C(_swiftEmptyArrayStorage);
  v0[30] = v2;
  v3 = swift_task_alloc();
  v0[31] = v3;
  *v3 = v0;
  v3[1] = sub_100444B7C;

  return sub_100402934(0xD00000000000003ALL, 0x80000001004EA600, v1, v2);
}

uint64_t sub_10044509C()
{

  v1 = v0[23];
  v0[29] = v1;
  swift_errorRetain();
  v2 = sub_100209E2C(_swiftEmptyArrayStorage);
  v0[30] = v2;
  v3 = swift_task_alloc();
  v0[31] = v3;
  *v3 = v0;
  v3[1] = sub_100444B7C;

  return sub_100402934(0xD00000000000003ALL, 0x80000001004EA600, v1, v2);
}

uint64_t sub_10044518C()
{

  v1 = v0[26];
  v0[29] = v1;
  swift_errorRetain();
  v2 = sub_100209E2C(_swiftEmptyArrayStorage);
  v0[30] = v2;
  v3 = swift_task_alloc();
  v0[31] = v3;
  *v3 = v0;
  v3[1] = sub_100444B7C;

  return sub_100402934(0xD00000000000003ALL, 0x80000001004EA600, v1, v2);
}

uint64_t sub_100445288(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = type metadata accessor for CloudKitStorage.State();
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v2[5] = swift_task_alloc();

  return _swift_task_switch(sub_100445348, 0, 0);
}

uint64_t sub_100445348()
{
  v9 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[6] = sub_10000A6F0(v1, qword_1005E0C30);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004EA5D0, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "Waiting for CloudKit to be available %{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = v0[2];
  (*(v0[4] + 104))(v0[5], enum case for CloudKitStorage.State.available(_:), v0[3]);

  return _swift_task_switch(sub_1004454EC, v6, 0);
}

uint64_t sub_1004454EC()
{
  v4 = (&async function pointer to dispatch thunk of CloudKitStorage.await(state:) + async function pointer to dispatch thunk of CloudKitStorage.await(state:));
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_10044559C;
  v2 = *(v0 + 40);

  return v4(v2);
}

uint64_t sub_10044559C()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = v2[2];
    v4 = sub_1002C78BC;
  }

  else
  {
    (*(v2[4] + 8))(v2[5], v2[3]);
    v4 = sub_1004456D0;
    v3 = 0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1004456D0(uint64_t a1)
{
  v9 = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004EA5D0, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "CloudKit is available. %{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_10044580C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[17] = a3;
  v6[18] = a4;
  v6[16] = a2;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v6[25] = swift_task_alloc();
  sub_10004B564(&qword_1005AEB98, &unk_1004D07C0);
  v6[26] = swift_task_alloc();
  sub_10004B564(&unk_1005AECE8, &qword_1004D07A0);
  v6[27] = swift_task_alloc();
  v8 = type metadata accessor for FriendSharedSecretsRecord(0);
  v6[28] = v8;
  v6[29] = *(v8 - 8);
  v6[30] = swift_task_alloc();
  sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  v6[31] = swift_task_alloc();
  v9 = type metadata accessor for Handle();
  v6[32] = v9;
  v6[33] = *(v9 - 8);
  v6[34] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v6[35] = v10;
  v6[36] = *(v10 - 8);
  v6[37] = swift_task_alloc();
  v11 = type metadata accessor for Friend();
  v6[38] = v11;
  v12 = *(v11 - 8);
  v6[39] = v12;
  v6[40] = *(v12 + 64);
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();

  return _swift_task_switch(sub_100445B6C, a3, 0);
}

uint64_t sub_100445B6C()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v0 + 376) = v4;
  *(v4 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v4 + v3, enum case for HandleType.following(_:), v1);
  v5 = swift_task_alloc();
  *(v0 + 384) = v5;
  *v5 = v0;
  v5[1] = sub_100445CD0;

  return sub_10001C61C(v4, 1);
}

uint64_t sub_100445CD0(uint64_t a1)
{
  *(*v1 + 392) = a1;

  return _swift_task_switch(sub_100445DF0, 0, 0);
}

uint64_t sub_100445DF0()
{
  v57 = v0;
  result = *(v0 + 392);
  v2 = *(result + 16);
  *(v0 + 400) = v2;
  if (v2)
  {
    v3 = 0;
    *(v0 + 464) = *(*(v0 + 312) + 80);
    while (1)
    {
      *(v0 + 408) = v3;
      v4 = *(v0 + 392);
      if (v3 >= *(v4 + 16))
      {
        __break(1u);
        return result;
      }

      v5 = *(v0 + 368);
      v6 = *(v0 + 304);
      v7 = *(v0 + 312);
      v9 = *(v7 + 16);
      v7 += 16;
      v8 = v9;
      v10 = v4 + ((*(v0 + 464) + 32) & ~*(v0 + 464)) + *(v7 + 56) * v3;
      *(v0 + 416) = v9;
      *(v0 + 424) = v7 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v9(v5, v10, v6);
      if (qword_1005A8530 != -1)
      {
        swift_once();
      }

      v11 = *(v0 + 360);
      v12 = *(v0 + 368);
      v13 = *(v0 + 304);
      v14 = type metadata accessor for Logger();
      *(v0 + 432) = sub_10000A6F0(v14, qword_1005E0C30);
      v8(v11, v12, v13);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      v17 = os_log_type_enabled(v15, v16);
      v18 = *(v0 + 360);
      v20 = *(v0 + 304);
      v19 = *(v0 + 312);
      v55 = v8;
      if (v17)
      {
        v21 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v56 = v53;
        *v21 = 141558275;
        *(v21 + 4) = 1752392040;
        *(v21 + 12) = 2081;
        sub_1000069AC(&qword_1005AA720, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
        v22 = dispatch thunk of CustomStringConvertible.description.getter();
        v24 = v23;
        v25 = v20;
        v26 = *(v19 + 8);
        v26(v18, v25);
        v27 = sub_10000D01C(v22, v24, &v56);

        *(v21 + 14) = v27;
        _os_log_impl(&_mh_execute_header, v15, v16, "Checking if we need to request token for %{private,mask.hash}s", v21, 0x16u);
        sub_100004984(v53);
      }

      else
      {

        v28 = v20;
        v26 = *(v19 + 8);
        v26(v18, v28);
      }

      *(v0 + 440) = v26;
      v29 = *(v0 + 280);
      v30 = *(v0 + 288);
      v32 = *(v0 + 264);
      v31 = *(v0 + 272);
      v34 = *(v0 + 248);
      v33 = *(v0 + 256);
      Friend.handle.getter();
      Handle.peerID.getter();
      (*(v32 + 8))(v31, v33);
      if ((*(v30 + 48))(v34, 1, v29) != 1)
      {
        break;
      }

      v35 = *(v0 + 368);
      v36 = *(v0 + 328);
      v37 = *(v0 + 304);
      sub_100002CE0(*(v0 + 248), &qword_1005A96E0, &qword_1004C2A80);
      v55(v36, v35, v37);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      v40 = os_log_type_enabled(v38, v39);
      v41 = *(v0 + 368);
      v42 = *(v0 + 328);
      v43 = *(v0 + 304);
      if (v40)
      {
        v44 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *v44 = 136446723;
        *(v44 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004EA5D0, &v56);
        *(v44 + 12) = 2160;
        *(v44 + 14) = 1752392040;
        *(v44 + 22) = 2081;
        sub_1000069AC(&qword_1005AA720, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
        v54 = v41;
        v45 = dispatch thunk of CustomStringConvertible.description.getter();
        v47 = v46;
        v26(v42, v43);
        v48 = sub_10000D01C(v45, v47, &v56);

        *(v44 + 24) = v48;
        _os_log_impl(&_mh_execute_header, v38, v39, "%{public}s No peerID for following %{private,mask.hash}s", v44, 0x20u);
        swift_arrayDestroy();

        result = (v26)(v54, v43);
      }

      else
      {

        v26(v42, v43);
        result = (v26)(v41, v43);
      }

      v3 = *(v0 + 408) + 1;
      if (v3 == *(v0 + 400))
      {
        goto LABEL_17;
      }
    }

    (*(*(v0 + 288) + 32))(*(v0 + 296), *(v0 + 248), *(v0 + 280));
    v49 = swift_task_alloc();
    *(v0 + 448) = v49;
    *v49 = v0;
    v49[1] = sub_1004464CC;
    v50 = *(v0 + 296);
    v51 = *(v0 + 216);

    return sub_1001C4430(v51, v50);
  }

  else
  {
LABEL_17:

    v52 = *(v0 + 8);

    return v52();
  }
}

uint64_t sub_1004464CC()
{
  *(*v1 + 456) = v0;

  if (v0)
  {
    v2 = sub_1004477F0;
  }

  else
  {
    v2 = sub_1004465E0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004465E0()
{
  v154 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 216);
  if ((*(*(v0 + 232) + 48))(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 416);
    v4 = *(v0 + 368);
    v5 = *(v0 + 336);
    v6 = *(v0 + 304);
    sub_100002CE0(v2, &unk_1005AECE8, &qword_1004D07A0);
    v3(v5, v4, v6);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 440);
    v11 = *(v0 + 336);
    v12 = *(v0 + 304);
    if (v9)
    {
      v13 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      *v13 = 136446723;
      *(v13 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004EA5D0, &v153);
      *(v13 + 12) = 2160;
      *(v13 + 14) = 1752392040;
      *(v13 + 22) = 2081;
      sub_1000069AC(&qword_1005AA720, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      v10(v11, v12);
      v17 = sub_10000D01C(v14, v16, &v153);

      *(v13 + 24) = v17;
      _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s Missing friendSharedSecretsRecord for %{private,mask.hash}s. Requesting token...", v13, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v10(v11, v12);
    }

    v134 = *(v0 + 368);
    v136 = *(v0 + 416);
    v34 = *(v0 + 344);
    v35 = *(v0 + 312);
    v36 = *(v0 + 304);
    v37 = *(v0 + 176);
    v132 = v37;
    v144 = *(v0 + 160);
    v149 = *(v0 + 168);
    v138 = *(v0 + 152);
    v140 = (*(v0 + 464) + 40) & ~*(v0 + 464);
    v38 = (*(v0 + 320) + v140 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = type metadata accessor for TaskPriority();
    v40 = *(v39 - 8);
    (*(v40 + 56))(v37, 1, 1, v39);
    v136(v34, v134, v36);
    v41 = swift_allocObject();
    v41[2] = 0;
    v42 = v41 + 2;
    v41[3] = 0;
    v41[4] = v138;
    (*(v35 + 32))(v41 + v140, v34, v36);
    *(v41 + v38) = v144;
    sub_100005F04(v132, v149, &qword_1005A9690, &qword_1004C2A00);
    LODWORD(v38) = (*(v40 + 48))(v149, 1, v39);

    v43 = *(v0 + 168);
    if (v38 == 1)
    {
      sub_100002CE0(*(v0 + 168), &qword_1005A9690, &qword_1004C2A00);
      if (*v42)
      {
LABEL_12:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v44 = dispatch thunk of Actor.unownedExecutor.getter();
        v46 = v45;
        swift_unknownObjectRelease();
LABEL_15:
        v47 = **(v0 + 128);

        if (v46 | v44)
        {
          v48 = v0 + 16;
          *(v0 + 16) = 0;
          *(v0 + 24) = 0;
          *(v0 + 32) = v44;
          *(v0 + 40) = v46;
        }

        else
        {
          v48 = 0;
        }

        v146 = *(v0 + 368);
        v151 = *(v0 + 440);
        v58 = *(v0 + 304);
        v60 = *(v0 + 288);
        v59 = *(v0 + 296);
        v61 = *(v0 + 280);
        v62 = *(v0 + 176);
        *(v0 + 80) = 1;
        *(v0 + 88) = v48;
        *(v0 + 96) = v47;
        swift_task_create();

        sub_100002CE0(v62, &qword_1005A9690, &qword_1004C2A00);
        (*(v60 + 8))(v59, v61);
        result = v151(v146, v58);
        goto LABEL_31;
      }
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v40 + 8))(v43, v39);
      if (*v42)
      {
        goto LABEL_12;
      }
    }

    v44 = 0;
    v46 = 0;
    goto LABEL_15;
  }

  v18 = *(v0 + 240);
  v19 = *(v0 + 208);
  sub_10044AD48(v2, v18, type metadata accessor for FriendSharedSecretsRecord);
  sub_100005F04(v18 + *(v1 + 24), v19, &qword_1005AEB98, &unk_1004D07C0);
  v20 = type metadata accessor for SharedSecretKey();
  LODWORD(v18) = (*(*(v20 - 8) + 48))(v19, 1, v20);
  sub_100002CE0(v19, &qword_1005AEB98, &unk_1004D07C0);
  if (v18 != 1)
  {
    v21 = *(v0 + 200);
    sub_100005F04(*(v0 + 240) + *(*(v0 + 224) + 28), v21, &unk_1005AE5B0, &qword_1004C32F0);
    v22 = type metadata accessor for Date();
    if ((*(*(v22 - 8) + 48))(v21, 1, v22) != 1)
    {
      v75 = *(v0 + 440);
      v76 = *(v0 + 368);
      v77 = *(v0 + 304);
      v79 = *(v0 + 288);
      v78 = *(v0 + 296);
      v80 = *(v0 + 280);
      v81 = *(v0 + 200);
      sub_10044ACE8(*(v0 + 240), type metadata accessor for FriendSharedSecretsRecord);
      (*(v79 + 8))(v78, v80);
      v75(v76, v77);
      result = sub_100002CE0(v81, &unk_1005AE5B0, &qword_1004C32F0);
      goto LABEL_31;
    }

    sub_100002CE0(*(v0 + 200), &unk_1005AE5B0, &qword_1004C32F0);
  }

  (*(v0 + 416))(*(v0 + 352), *(v0 + 368), *(v0 + 304));
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v26 = *(v0 + 440);
  v27 = *(v0 + 352);
  v28 = *(v0 + 304);
  if (v25)
  {
    v29 = swift_slowAlloc();
    v153 = swift_slowAlloc();
    *v29 = 136446723;
    *(v29 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004EA5D0, &v153);
    *(v29 + 12) = 2160;
    *(v29 + 14) = 1752392040;
    *(v29 + 22) = 2081;
    sub_1000069AC(&qword_1005AA720, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    v26(v27, v28);
    v33 = sub_10000D01C(v30, v32, &v153);

    *(v29 + 24) = v33;
    _os_log_impl(&_mh_execute_header, v23, v24, "%{public}s Missing outgoingSharedSecret for %{private,mask.hash}s. Requesting token...", v29, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v26(v27, v28);
  }

  v135 = *(v0 + 368);
  v137 = *(v0 + 416);
  v49 = *(v0 + 344);
  v50 = *(v0 + 312);
  v51 = *(v0 + 304);
  v52 = *(v0 + 192);
  v133 = v52;
  v145 = *(v0 + 160);
  v150 = *(v0 + 184);
  v139 = *(v0 + 152);
  v141 = (*(v0 + 464) + 40) & ~*(v0 + 464);
  v53 = (*(v0 + 320) + v141 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = type metadata accessor for TaskPriority();
  v55 = *(v54 - 8);
  (*(v55 + 56))(v52, 1, 1, v54);
  v137(v49, v135, v51);
  v56 = swift_allocObject();
  *(v56 + 2) = 0;
  *(v56 + 3) = 0;
  *(v56 + 4) = v139;
  (*(v50 + 32))(&v56[v141], v49, v51);
  *&v56[v53] = v145;
  sub_100005F04(v133, v150, &qword_1005A9690, &qword_1004C2A00);
  LODWORD(v53) = (*(v55 + 48))(v150, 1, v54);

  v57 = *(v0 + 184);
  if (v53 == 1)
  {
    sub_100002CE0(*(v0 + 184), &qword_1005A9690, &qword_1004C2A00);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v55 + 8))(v57, v54);
  }

  if (*(v56 + 2))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v64 = dispatch thunk of Actor.unownedExecutor.getter();
    v66 = v65;
    swift_unknownObjectRelease();
  }

  else
  {
    v64 = 0;
    v66 = 0;
  }

  v67 = **(v0 + 128);

  if (v66 | v64)
  {
    v68 = v0 + 48;
    *(v0 + 48) = 0;
    *(v0 + 56) = 0;
    *(v0 + 64) = v64;
    *(v0 + 72) = v66;
  }

  else
  {
    v68 = 0;
  }

  v142 = *(v0 + 368);
  v147 = *(v0 + 440);
  v69 = *(v0 + 304);
  v70 = *(v0 + 288);
  v71 = *(v0 + 296);
  v72 = *(v0 + 280);
  v73 = *(v0 + 240);
  v74 = *(v0 + 192);
  *(v0 + 104) = 1;
  *(v0 + 112) = v68;
  *(v0 + 120) = v67;
  swift_task_create();

  sub_100002CE0(v74, &qword_1005A9690, &qword_1004C2A00);
  sub_10044ACE8(v73, type metadata accessor for FriendSharedSecretsRecord);
  (*(v70 + 8))(v71, v72);
  result = v147(v142, v69);
LABEL_31:
  v82 = *(v0 + 408) + 1;
  if (v82 == *(v0 + 400))
  {
LABEL_32:

    v83 = *(v0 + 8);

    return v83();
  }

  else
  {
    while (1)
    {
      *(v0 + 408) = v82;
      v89 = *(v0 + 392);
      if (v82 >= *(v89 + 16))
      {
        __break(1u);
        return result;
      }

      v90 = *(v0 + 368);
      v91 = *(v0 + 304);
      v92 = *(v0 + 312);
      v94 = *(v92 + 16);
      v92 += 16;
      v93 = v94;
      v95 = v89 + ((*(v0 + 464) + 32) & ~*(v0 + 464)) + *(v92 + 56) * v82;
      *(v0 + 416) = v94;
      *(v0 + 424) = v92 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v94(v90, v95, v91);
      if (qword_1005A8530 != -1)
      {
        swift_once();
      }

      v96 = *(v0 + 360);
      v97 = *(v0 + 368);
      v98 = *(v0 + 304);
      v99 = type metadata accessor for Logger();
      *(v0 + 432) = sub_10000A6F0(v99, qword_1005E0C30);
      v93(v96, v97, v98);
      v100 = Logger.logObject.getter();
      v101 = static os_log_type_t.default.getter();
      v102 = os_log_type_enabled(v100, v101);
      v103 = *(v0 + 360);
      v105 = *(v0 + 304);
      v104 = *(v0 + 312);
      v152 = v93;
      if (v102)
      {
        v106 = swift_slowAlloc();
        v143 = swift_slowAlloc();
        v153 = v143;
        *v106 = 141558275;
        *(v106 + 4) = 1752392040;
        *(v106 + 12) = 2081;
        sub_1000069AC(&qword_1005AA720, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
        v107 = dispatch thunk of CustomStringConvertible.description.getter();
        v109 = v108;
        v110 = v105;
        v111 = *(v104 + 8);
        v111(v103, v110);
        v112 = sub_10000D01C(v107, v109, &v153);

        *(v106 + 14) = v112;
        _os_log_impl(&_mh_execute_header, v100, v101, "Checking if we need to request token for %{private,mask.hash}s", v106, 0x16u);
        sub_100004984(v143);
      }

      else
      {

        v113 = v105;
        v111 = *(v104 + 8);
        v111(v103, v113);
      }

      *(v0 + 440) = v111;
      v114 = *(v0 + 280);
      v115 = *(v0 + 288);
      v117 = *(v0 + 264);
      v116 = *(v0 + 272);
      v119 = *(v0 + 248);
      v118 = *(v0 + 256);
      Friend.handle.getter();
      Handle.peerID.getter();
      (*(v117 + 8))(v116, v118);
      if ((*(v115 + 48))(v119, 1, v114) != 1)
      {
        break;
      }

      v120 = *(v0 + 368);
      v121 = *(v0 + 328);
      v122 = *(v0 + 304);
      sub_100002CE0(*(v0 + 248), &qword_1005A96E0, &qword_1004C2A80);
      v152(v121, v120, v122);
      v123 = Logger.logObject.getter();
      v124 = static os_log_type_t.error.getter();
      v125 = os_log_type_enabled(v123, v124);
      v126 = *(v0 + 368);
      v127 = *(v0 + 328);
      v128 = *(v0 + 304);
      if (v125)
      {
        v84 = swift_slowAlloc();
        v153 = swift_slowAlloc();
        *v84 = 136446723;
        *(v84 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004EA5D0, &v153);
        *(v84 + 12) = 2160;
        *(v84 + 14) = 1752392040;
        *(v84 + 22) = 2081;
        sub_1000069AC(&qword_1005AA720, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
        v148 = v126;
        v85 = dispatch thunk of CustomStringConvertible.description.getter();
        v87 = v86;
        v111(v127, v128);
        v88 = sub_10000D01C(v85, v87, &v153);

        *(v84 + 24) = v88;
        _os_log_impl(&_mh_execute_header, v123, v124, "%{public}s No peerID for following %{private,mask.hash}s", v84, 0x20u);
        swift_arrayDestroy();

        result = (v111)(v148, v128);
      }

      else
      {

        v111(v127, v128);
        result = (v111)(v126, v128);
      }

      v82 = *(v0 + 408) + 1;
      if (v82 == *(v0 + 400))
      {
        goto LABEL_32;
      }
    }

    (*(*(v0 + 288) + 32))(*(v0 + 296), *(v0 + 248), *(v0 + 280));
    v129 = swift_task_alloc();
    *(v0 + 448) = v129;
    *v129 = v0;
    v129[1] = sub_1004464CC;
    v130 = *(v0 + 296);
    v131 = *(v0 + 216);

    return sub_1001C4430(v131, v130);
  }
}

uint64_t sub_1004477F0()
{
  v1 = v0[55];
  v2 = v0[46];
  v3 = v0[38];
  v4 = v0[36];
  v5 = v0[37];
  v6 = v0[35];

  (*(v4 + 8))(v5, v6);
  v1(v2, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100447978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a5;
  v7 = type metadata accessor for Handle();
  v5[3] = v7;
  v5[4] = *(v7 - 8);
  v5[5] = swift_task_alloc();
  v8 = type metadata accessor for Friend();
  v5[6] = v8;
  v5[7] = *(v8 - 8);
  v5[8] = swift_task_alloc();
  v9 = swift_task_alloc();
  v5[9] = v9;
  *v9 = v5;
  v9[1] = sub_100447ACC;

  return sub_100447C18(a5);
}

uint64_t sub_100447ACC()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10044ADDC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100447C18(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for UUID();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for MessagingOptions();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_10004B564(&qword_1005A92B0, &qword_1004D8050);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_10004B564(&qword_1005A9110, &qword_1004C25F8);
  v2[16] = swift_task_alloc();
  v6 = type metadata accessor for Account();
  v2[17] = v6;
  v2[18] = *(v6 - 8);
  v2[19] = swift_task_alloc();
  v7 = type metadata accessor for MessagingCapability();
  v2[20] = v7;
  v2[21] = *(v7 - 8);
  v2[22] = swift_task_alloc();
  v8 = type metadata accessor for Destination();
  v2[23] = v8;
  v2[24] = *(v8 - 8);
  v2[25] = swift_task_alloc();
  v9 = type metadata accessor for Handle();
  v2[26] = v9;
  v2[27] = *(v9 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();

  return _swift_task_switch(sub_100447FAC, v1, 0);
}

uint64_t sub_100447FAC(uint64_t a1)
{
  v23 = v1;
  Friend.handle.getter();
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v2 = v1[31];
  v3 = v1[32];
  v4 = v1[26];
  v5 = v1[27];
  v6 = type metadata accessor for Logger();
  v1[33] = sub_10000A6F0(v6, qword_1005E0C30);
  v7 = *(v5 + 16);
  v1[34] = v7;
  v1[35] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v3, v4);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v1[31];
  v13 = v1[26];
  v12 = v1[27];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v14 = 136446723;
    *(v14 + 4) = sub_10000D01C(0xD000000000000013, 0x80000001004EA640, &v22);
    *(v14 + 12) = 2160;
    *(v14 + 14) = 1752392040;
    *(v14 + 22) = 2081;
    v15 = Handle.identifier.getter();
    v17 = v16;
    v18 = *(v12 + 8);
    v18(v11, v13);
    v19 = sub_10000D01C(v15, v17, &v22);

    *(v14 + 24) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s from: %{private,mask.hash}s", v14, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v18 = *(v12 + 8);
    v18(v11, v13);
  }

  v1[36] = v18;
  v20 = swift_task_alloc();
  v1[37] = v20;
  *v20 = v1;
  v20[1] = sub_100448248;

  return daemon.getter();
}

uint64_t sub_100448248(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[38] = a1;

  v3 = swift_task_alloc();
  v2[39] = v3;
  v4 = type metadata accessor for Daemon();
  v2[40] = v4;
  v5 = sub_10004B564(&qword_1005A90E0, &qword_1004C2490);
  v6 = sub_1000069AC(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[41] = v6;
  v7 = sub_10001DF0C(&qword_1005A90E8, &qword_1005A90E0, &qword_1004C2490, &unk_1004D4FC0);
  *v3 = v9;
  v3[1] = sub_10044843C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10044843C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 336) = a1;
  *(v4 + 344) = v1;

  v5 = *(v3 + 40);

  if (v1)
  {
    v6 = sub_10041D368;
  }

  else
  {
    v6 = sub_10044858C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10044858C(__n128 a1)
{
  v2 = Handle.isPhoneNumber.getter();
  Handle.identifier.getter();
  if (v2)
  {
    Destination.init(phoneNumber:)();
  }

  else
  {
    Destination.init(email:)();
  }

  v3 = *(v1 + 336);
  v5 = *(v1 + 168);
  v4 = *(v1 + 176);
  *(v1 + 464) = enum case for MessagingCapability.supportsPeopleFindingV1(_:);
  v6 = *(v5 + 104);
  *(v1 + 352) = v6;
  *(v1 + 360) = (v5 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v6(v4);

  return _swift_task_switch(sub_100448648, v3, 0);
}

uint64_t sub_100448648()
{
  v5 = (&async function pointer to dispatch thunk of QueryController.destinationHasCapability(destination:capability:) + async function pointer to dispatch thunk of QueryController.destinationHasCapability(destination:capability:));
  v1 = swift_task_alloc();
  v0[46] = v1;
  *v1 = v0;
  v1[1] = sub_1004486FC;
  v2 = v0[25];
  v3 = v0[22];

  return v5(v2, v3);
}

uint64_t sub_1004486FC(char a1)
{
  v4 = *v2;
  *(*v2 + 376) = v1;

  if (v1)
  {
    v5 = *(v4 + 336);
    v6 = sub_10041BF4C;
  }

  else
  {
    v8 = *(v4 + 192);
    v7 = *(v4 + 200);
    v9 = *(v4 + 176);
    v10 = *(v4 + 184);
    v11 = *(v4 + 160);
    v12 = *(v4 + 168);
    v13 = *(v4 + 40);
    *(v4 + 469) = a1 & 1;
    v14 = *(v12 + 8);
    *(v4 + 384) = v14;
    *(v4 + 392) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v14(v9, v11);
    (*(v8 + 8))(v7, v10);
    v6 = sub_100448878;
    v5 = v13;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100448878()
{
  v20 = v0;
  if (*(v0 + 469) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 400) = v1;
    *v1 = v0;
    v1[1] = sub_100448BE0;

    return daemon.getter();
  }

  else
  {
    (*(v0 + 272))(*(v0 + 224), *(v0 + 256), *(v0 + 208));
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 288);
    v6 = *(v0 + 224);
    v7 = *(v0 + 208);
    if (v4)
    {
      v8 = swift_slowAlloc();
      v19[0] = swift_slowAlloc();
      *v8 = 136446723;
      *(v8 + 4) = sub_10000D01C(0xD000000000000013, 0x80000001004EA640, v19);
      *(v8 + 12) = 2160;
      *(v8 + 14) = 1752392040;
      *(v8 + 22) = 2081;
      v9 = Handle.identifier.getter();
      v11 = v10;
      v5(v6, v7);
      v12 = sub_10000D01C(v9, v11, v19);

      *(v8 + 24) = v12;
      _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s %{private,mask.hash}s missing required capability", v8, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v5(v6, v7);
    }

    v13 = *(v0 + 288);
    v14 = *(v0 + 256);
    v15 = *(v0 + 208);
    sub_1003DA6A0();
    swift_allocError();
    *v16 = 3;
    swift_willThrow();

    v13(v14, v15);

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_100448BE0(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 408) = a1;

  v5 = swift_task_alloc();
  *(v3 + 416) = v5;
  v6 = type metadata accessor for AccountService(0);
  v7 = sub_1000069AC(&qword_1005A9118, type metadata accessor for AccountService, &unk_1004DCC10);
  *v5 = v4;
  v5[1] = sub_100448D94;
  v8 = *(v2 + 328);
  v9 = *(v2 + 320);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_100448D94(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[53] = a1;
  v3[54] = v1;

  if (v1)
  {
    v5 = v3[5];

    return _swift_task_switch(sub_10041D494, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[55] = v6;
    *v6 = v4;
    v6[1] = sub_100448F40;
    v7 = v3[16];

    return sub_10000EB24(v7);
  }
}

uint64_t sub_100448F40()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_100449050, v1, 0);
}

uint64_t sub_100449050()
{
  v52 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100002CE0(v3, &qword_1005A9110, &qword_1004C25F8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v51[0] = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_10000D01C(0xD000000000000013, 0x80000001004EA640, v51);
      _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s Missing primary account to send FindingTokenReuqest with my dsid!", v6, 0xCu);
      sub_100004984(v7);
    }

    v8 = *(v0 + 288);
    v9 = *(v0 + 256);
    v10 = *(v0 + 208);
    sub_1003DA6A0();
    swift_allocError();
    *v11 = 16;
    swift_willThrow();

    v12 = v9;
    v13 = v10;
    goto LABEL_10;
  }

  v14 = *(v0 + 272);
  v15 = *(v0 + 256);
  v16 = *(v0 + 240);
  v17 = *(v0 + 208);
  (*(v2 + 32))(*(v0 + 152), v3, v1);
  v18 = Account.dsidBase64EncodedString()();
  countAndFlagsBits = v18._countAndFlagsBits;
  v20 = v15;
  object = v18._object;
  v14(v16, v20, v17);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  v24 = os_log_type_enabled(v22, v23);
  v25 = *(v0 + 288);
  v26 = *(v0 + 240);
  v27 = *(v0 + 208);
  if (v24)
  {
    v49 = v23;
    v28 = swift_slowAlloc();
    v51[0] = swift_slowAlloc();
    *v28 = 141558787;
    *(v28 + 4) = 1752392040;
    *(v28 + 12) = 2081;
    v29 = Handle.identifier.getter();
    v31 = v30;
    v25(v26, v27);
    v32 = sub_10000D01C(v29, v31, v51);
    countAndFlagsBits = v18._countAndFlagsBits;
    object = v18._object;

    *(v28 + 14) = v32;
    *(v28 + 22) = 2160;
    *(v28 + 24) = 1752392040;
    *(v28 + 32) = 2081;
    *(v28 + 34) = sub_10000D01C(v18._countAndFlagsBits, v18._object, v51);
    _os_log_impl(&_mh_execute_header, v22, v49, "Requesting shared secret from %{private,mask.hash}s.\nserverId: %{private,mask.hash}s over IDS.", v28, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v25(v26, v27);
  }

  v33 = *(v0 + 432);
  *(v0 + 468) = 3;
  *(v0 + 16) = countAndFlagsBits;
  *(v0 + 24) = object;
  sub_10006DFA4();
  sub_10042E284();
  sub_10042E2D8();
  Message.init<A>(type:version:payload:)();
  if (v33)
  {
    v8 = *(v0 + 288);
    v34 = *(v0 + 256);
    v35 = *(v0 + 208);
    v37 = *(v0 + 144);
    v36 = *(v0 + 152);
    v38 = *(v0 + 136);

    (*(v37 + 8))(v36, v38);
    v12 = v34;
    v13 = v35;
LABEL_10:
    v8(v12, v13);

    v39 = *(v0 + 8);

    return v39();
  }

  sub_10004B564(&qword_1005A9270, &qword_1004C5810);
  *(swift_allocObject() + 16) = xmmword_1004C1900;
  v41 = Handle.isPhoneNumber.getter();
  Handle.identifier.getter();
  if (v41)
  {
    Destination.init(phoneNumber:)();
  }

  else
  {
    Destination.init(email:)();
  }

  v42 = *(v0 + 384);
  v43 = *(v0 + 352);
  v44 = *(v0 + 464);
  v45 = *(v0 + 160);
  v46 = *(v0 + 168);
  v50 = *(v0 + 336);
  (*(*(v0 + 56) + 56))(*(v0 + 72), 1, 1, *(v0 + 48));
  sub_10004B564(&qword_1005AB930, &qword_1004C5818);
  v47 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1004C1900;
  v43(v48 + v47, v44, v45);
  sub_10025EC18(v48);
  swift_setDeallocating();
  v42(v48 + v47, v45);
  swift_deallocClassInstance();
  sub_100293190(_swiftEmptyArrayStorage);
  MessagingOptions.init(destinations:expectsPeerResponse:responseIdentifier:timeToLive:fireAndForget:requiredCapabilities:lackingCapabilities:queueOneIdentifier:)();

  return _swift_task_switch(sub_100449728, v50, 0);
}

uint64_t sub_100449728()
{
  v1 = swift_task_alloc();
  v0[56] = v1;
  *v1 = v0;
  v1[1] = sub_1004497D0;
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[8];

  return InternetMessaging.send(message:messageOptions:)(v4, v2, v3);
}

uint64_t sub_1004497D0()
{
  v2 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v3 = v2[5];
    v4 = sub_10041D1B8;
  }

  else
  {
    v5 = v2[5];
    (*(v2[7] + 8))(v2[8], v2[6]);
    v4 = sub_100449904;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100449904()
{
  v29 = v0;
  (*(v0 + 272))(*(v0 + 232), *(v0 + 256), *(v0 + 208));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 288);
  v5 = *(v0 + 256);
  v6 = *(v0 + 232);
  v7 = *(v0 + 208);
  v26 = *(v0 + 152);
  v27 = *(v0 + 144);
  v8 = *(v0 + 112);
  v24 = *(v0 + 120);
  v25 = *(v0 + 136);
  v22 = *(v0 + 96);
  v23 = *(v0 + 104);
  v9 = *(v0 + 88);
  v21 = *(v0 + 80);
  if (v3)
  {
    v20 = *(v0 + 256);
    v10 = swift_slowAlloc();
    v19 = v2;
    v11 = swift_slowAlloc();
    v28 = v11;
    *v10 = 141558275;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v12 = Handle.identifier.getter();
    log = v1;
    v14 = v13;
    v4(v6, v7);
    v15 = sub_10000D01C(v12, v14, &v28);

    *(v10 + 14) = v15;
    _os_log_impl(&_mh_execute_header, log, v19, "Successfully requested finding token from %{private,mask.hash}s", v10, 0x16u);
    sub_100004984(v11);

    (*(v9 + 8))(v22, v21);
    (*(v8 + 8))(v24, v23);
    (*(v27 + 8))(v26, v25);
    v4(v20, v7);
  }

  else
  {

    v4(v6, v7);
    (*(v9 + 8))(v22, v21);
    (*(v8 + 8))(v24, v23);
    (*(v27 + 8))(v26, v25);
    v4(v5, v7);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_100449C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a5;
  v7 = type metadata accessor for Handle();
  v5[3] = v7;
  v5[4] = *(v7 - 8);
  v5[5] = swift_task_alloc();
  v8 = type metadata accessor for Friend();
  v5[6] = v8;
  v5[7] = *(v8 - 8);
  v5[8] = swift_task_alloc();
  v9 = swift_task_alloc();
  v5[9] = v9;
  *v9 = v5;
  v9[1] = sub_100449DC4;

  return sub_100447C18(a5);
}

uint64_t sub_100449DC4()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100449F10, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100449F10()
{
  v27 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005E0C30);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[7];
  v10 = v0[8];
  v11 = v0[6];
  if (v8)
  {
    v12 = v0[4];
    v13 = v0[5];
    v22 = v0[3];
    v14 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v14 = 141558531;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    v23 = v7;
    Friend.handle.getter();
    v15 = Handle.identifier.getter();
    v17 = v16;
    (*(v12 + 8))(v13, v22);
    (*(v9 + 8))(v10, v11);
    v18 = sub_10000D01C(v15, v17, &v26);

    *(v14 + 14) = v18;
    *(v14 + 22) = 2114;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v19;
    *v24 = v19;
    _os_log_impl(&_mh_execute_header, v6, v23, "Failed to request token from %{private,mask.hash}s error - %{public}@", v14, 0x20u);
    sub_100002CE0(v24, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v25);
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_10044A204()
{
  v2 = *(sub_10004B564(&qword_1005B3B60, &qword_1004D8B88) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_10043A6AC(v0 + v3, v4);
}

uint64_t sub_10044A314()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000368C;

  return sub_100443B88(v2, v3);
}

uint64_t sub_10044A3AC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_100445288(a1, v4);
}

uint64_t sub_10044A458(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_10000368C;

  return sub_10044580C(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_10044A520(uint64_t a1)
{
  v4 = *(type metadata accessor for Friend() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000368C;

  return sub_100447978(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10044A650()
{
  v1 = type metadata accessor for Friend();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10044A728(uint64_t a1)
{
  v4 = *(type metadata accessor for Friend() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000368C;

  return sub_100449C70(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10044A858()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000368C;

  return sub_10043C9C0(v2, v3);
}

uint64_t sub_10044A8F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_10043F138(a1, v4);
}

uint64_t sub_10044A990(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_100440C74(a1, v4);
}

uint64_t sub_10044AA30(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_100441A50(a1, v4);
}

uint64_t sub_10044AADC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100003690;

  return sub_100441FE4(a1, a2, v6, v7);
}

uint64_t sub_10044ABA0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_100441700(a1, v4);
}

uint64_t sub_10044AC80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10044ACE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10044AD48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10044ADF8()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10044AE8C;

  return daemon.getter();
}

uint64_t sub_10044AE8C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 32) = a1;

  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_1000096C8(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000096C8(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_10044B068;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10044B068(uint64_t a1)
{
  v3 = *v2;
  v3[6] = a1;
  v3[7] = v1;

  if (v1)
  {
    v4 = v3[2];

    return _swift_task_switch(sub_10044B92C, v4, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[8] = v5;
    *v5 = v3;
    v5[1] = sub_10044B1DC;

    return sub_100405674();
  }
}

uint64_t sub_10044B1DC(char a1)
{
  v4 = *v2;
  *(v4 + 72) = v1;

  v5 = *(v4 + 16);
  if (v1)
  {
    v6 = sub_10044BB28;
  }

  else
  {
    *(v4 + 104) = a1 & 1;
    v6 = sub_10044B31C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10044B31C()
{
  v10 = v0;
  if (*(v0 + 104) == 1)
  {
    v1 = *(v0 + 48);

    return _swift_task_switch(sub_10044B4EC, v1, 0);
  }

  else
  {
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A6F0(v2, qword_1005E0C30);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v9 = v6;
      *v5 = 136446210;
      *(v5 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004E6DB0, &v9);
      _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s not eligible to generate tokens.", v5, 0xCu);
      sub_100004984(v6);
    }

    v7 = *(v0 + 8);

    return v7(0);
  }
}

uint64_t sub_10044B4EC()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v0 + 80) = v4;
  *(v4 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v4 + v3, enum case for HandleType.follower(_:), v1);
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_10044B650;

  return sub_10001C61C(v4, 1);
}

uint64_t sub_10044B650(uint64_t a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 96) = a1;

  return _swift_task_switch(sub_10044B784, v2, 0);
}

uint64_t sub_10044B784()
{
  v10 = v0;
  v1 = *(*(v0 + 96) + 16);

  if (!v1)
  {
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A6F0(v2, qword_1005E0C30);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v9 = v6;
      *v5 = 136446210;
      *(v5 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004E6DB0, &v9);
      _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s no followers.", v5, 0xCu);
      sub_100004984(v6);
    }
  }

  v7 = *(v0 + 8);

  return v7(v1 != 0);
}

uint64_t sub_10044B92C()
{
  v11 = v0;

  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0C30);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004E6DB0, &v10);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s error %{public}@", v4, 0x16u);
    sub_100139370(v5);

    sub_100004984(v6);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8(0);
}

uint64_t sub_10044BB28()
{
  v11 = v0;

  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0C30);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004E6DB0, &v10);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s error %{public}@", v4, 0x16u);
    sub_100139370(v5);

    sub_100004984(v6);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8(0);
}

uint64_t sub_10044BD24(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100003690;

  return sub_10044BDD0(a1);
}

uint64_t sub_10044BDD0(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for XPCActivity.Criteria.Options();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for XPCActivity.Priority();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_10044BEEC, v1, 0);
}

uint64_t sub_10044BEEC()
{
  v9 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 88) = sub_10000A6F0(v1, qword_1005E0C30);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000018, 0x80000001004EA770, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *v6 = v0;
  v6[1] = sub_10044C09C;

  return sub_10044ADF8();
}

uint64_t sub_10044C09C(char a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 104) = a1;

  return _swift_task_switch(sub_10044C1B4, v2, 0);
}

uint64_t sub_10044C1B4(uint64_t a1)
{
  v14 = v1;
  if (*(v1 + 104) == 1)
  {
    v2 = *(v1 + 24);
    (*(*(v1 + 72) + 104))(*(v1 + 80), enum case for XPCActivity.Priority.utility(_:), *(v1 + 64));
    sub_10044C858();
    sub_10044C858();
    sub_10004B564(&qword_1005B0658, &qword_1004D1FD8);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1004C2310;
    static XPCActivity.Criteria.Options.requiresClassC.getter();
    static XPCActivity.Criteria.Options.requiresNetwork.getter();
    *(v1 + 16) = v3;
    sub_1000096C8(&qword_1005B0660, &type metadata accessor for XPCActivity.Criteria.Options, &protocol conformance descriptor for XPCActivity.Criteria.Options);
    sub_10004B564(&qword_1005B0668, &qword_1004D1FE0);
    sub_1002450C0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    XPCActivity.Criteria.init(priority:repeating:delay:gracePeriod:interval:options:)();
    v4 = type metadata accessor for XPCActivity.Criteria();
    (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  }

  else
  {
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_10000D01C(0xD000000000000018, 0x80000001004EA770, &v13);
      _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s not eligible.", v7, 0xCu);
      sub_100004984(v8);
    }

    v9 = *(v1 + 24);
    v10 = type metadata accessor for XPCActivity.Criteria();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  }

  v11 = *(v1 + 8);

  return v11();
}

uint64_t sub_10044C4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v5 = type metadata accessor for XPCActivity.State();
  v3[5] = v5;
  v3[6] = *(v5 - 8);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_10044C584, a3, 0);
}

uint64_t sub_10044C584()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for XPCActivity.State.run(_:))
  {
    sub_100440F28(86400.0);
    type metadata accessor for XPCActivity();
    sub_1000096C8(&qword_1005B0330, &type metadata accessor for XPCActivity, &protocol conformance descriptor for XPCActivity);
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v8 = sub_10044C780;
LABEL_5:

    return _swift_task_switch(v8, v5, v7);
  }

  if (v4 == enum case for XPCActivity.State.defer(_:))
  {
    type metadata accessor for XPCActivity();
    sub_1000096C8(&qword_1005B0330, &type metadata accessor for XPCActivity, &protocol conformance descriptor for XPCActivity);
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v9;
    v8 = sub_10044C7EC;
    goto LABEL_5;
  }

  (*(v0[6] + 8))(v0[7], v0[5]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10044C780()
{
  v1 = *(v0 + 32);
  dispatch thunk of XPCActivity.done()();

  return _swift_task_switch(sub_100438D08, v1, 0);
}

uint64_t sub_10044C7EC()
{
  v1 = *(v0 + 32);
  dispatch thunk of XPCActivity.defer()();

  return _swift_task_switch(sub_10044C96C, v1, 0);
}

uint64_t sub_10044C858()
{
  sub_1004BA244(0xD00000000000001CLL);
  if (v1)
  {
    return 43200;
  }

  v2 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005E0C30);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = v2;
    _os_log_impl(&_mh_execute_header, v4, v5, "Using XPCActivity interval from defaults: %ld seconds", v6, 0xCu);
  }

  return v2;
}

void sub_10044C970(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = __chkstk_darwin(v4);
  v43 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v38 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v38 - v11;
  __chkstk_darwin(v10);
  v45 = &v38 - v14;
  v15 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 64);
  if (v18)
  {
    v38 = a2;
    v19 = 0;
    v20 = __clz(__rbit64(v18));
    v21 = (v18 - 1) & v18;
    v22 = (v16 + 63) >> 6;
LABEL_9:
    v25 = v13[9];
    v26 = *(a1 + 56) + v25 * v20;
    v27 = v13[2];
    v39 = v13;
    v40 = v27;
    v41 = v13 + 2;
    v42 = v25;
    v27(v12, v26, v4);
    v29 = v39 + 4;
    v28 = v39[4];
    v28(v45, v12, v4);
    v44 = a1;

    if (v21)
    {
      goto LABEL_12;
    }

LABEL_13:
    while (1)
    {
      v30 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v30 >= v22)
      {

        v36 = v38;
        v28(v38, v45, v4);
        (v39[7])(v36, 0, 1, v4);
        return;
      }

      v21 = *(v15 + 8 * v30);
      ++v19;
      if (v21)
      {
        while (1)
        {
          v31 = __clz(__rbit64(v21));
          v21 &= v21 - 1;
          v32 = v43;
          v40(v43, *(v44 + 56) + (v31 | (v30 << 6)) * v42, v4);
          v28(v9, v32, v4);
          sub_10044F72C(&qword_1005B0BF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          v33 = v45;
          v34 = dispatch thunk of static Comparable.< infix(_:_:)();
          v35 = *(v29 - 3);
          if (v34)
          {
            v35(v33, v4);
            v28(v33, v9, v4);
            v19 = v30;
            if (!v21)
            {
              goto LABEL_13;
            }
          }

          else
          {
            v35(v9, v4);
            v19 = v30;
            if (!v21)
            {
              goto LABEL_13;
            }
          }

LABEL_12:
          v30 = v19;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v23 = 0;
    v22 = (v16 + 63) >> 6;
    while (v22 - 1 != v18)
    {
      v19 = v18 + 1;
      v24 = *(a1 + 72 + 8 * v18);
      v23 -= 64;
      ++v18;
      if (v24)
      {
        v38 = a2;
        v21 = (v24 - 1) & v24;
        v20 = __clz(__rbit64(v24)) - v23;
        goto LABEL_9;
      }
    }

    v37 = v13[7];

    v37(a2, 1, 1, v4);
  }
}

uint64_t sub_10044CD54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = __chkstk_darwin(*(v4 - 8));
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v8 + 16);
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v25 = v8;
    v23 = a2;
    v24 = v12;
    v12(&v22 - v9, v13, v4);
    result = v25;
    if (v11 == 1)
    {
LABEL_3:
      v15 = v23;
      (*(result + 32))(v23, v10, v4);
      return (*(v25 + 56))(v15, 0, 1, v4);
    }

    else
    {
      v17 = (v25 + 32);
      v18 = 1;
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v24(v7, v13 + *(result + 72) * v18, v4);
        sub_10044F72C(&qword_1005B0BF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v20 = dispatch thunk of static Comparable.< infix(_:_:)();
        v21 = *(v25 + 8);
        if (v20)
        {
          v21(v10, v4);
          (*v17)(v10, v7, v4);
        }

        else
        {
          v21(v7, v4);
        }

        ++v18;
        result = v25;
        if (v19 == v11)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v16 = *(v8 + 56);

    return v16(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_10044D004()
{
  v1[87] = v0;
  v1[93] = *v0;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v1[94] = swift_task_alloc();

  return _swift_task_switch(sub_10044D0C8, v0, 0);
}

uint64_t sub_10044D0C8()
{
  v14 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[95] = sub_10000A6F0(v1, qword_1005E0C30);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000017, 0x80000001004E6E20, &v13);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  if (sub_1003F399C())
  {
    v6 = swift_task_alloc();
    v0[96] = v6;
    *v6 = v0;
    v6[1] = sub_10044D384;

    return daemon.getter();
  }

  else
  {
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_10000D01C(0xD000000000000017, 0x80000001004E6E20, &v13);
      _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s isFindingCapable == false.", v9, 0xCu);
      sub_100004984(v10);
    }

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_10044D384(uint64_t a1)
{
  *(*v1 + 776) = a1;

  type metadata accessor for Daemon();
  sub_10044F72C(&qword_1005AB4E0, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10044D4DC, v3, v2);
}

uint64_t sub_10044D4DC()
{
  v1 = *(v0 + 696);
  *(v0 + 784) = Daemon.xpcAlarmEventHandler.getter();

  return _swift_task_switch(sub_10044D554, v1, 0);
}

uint64_t sub_10044D554(uint64_t a1)
{
  v2 = v1[98];
  v3 = Logger.logObject.getter();
  if (v2)
  {
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Registering listener for XPC Alarms", v5, 2u);
    }

    v6 = v1[94];
    v7 = v1[93];
    v8 = v1[87];

    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = sub_10044F72C(&qword_1005B3700, type metadata accessor for NITokenService, &unk_1004D83C8);
    v11 = swift_allocObject();
    v11[2] = v8;
    v11[3] = v10;
    v11[4] = v2;
    v11[5] = v8;
    v11[6] = v7;
    swift_retain_n();

    sub_1001D7F30(0, 0, v6, &unk_1004D8D08, v11);

    swift_asyncLet_begin();

    return _swift_asyncLet_get(v1 + 2);
  }

  else
  {
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v3, v12, "Daemon not registered XPC Alarm event handler", v13, 2u);
    }

    v14 = v1[1];

    return v14();
  }
}

uint64_t sub_10044D830()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10044D898()
{
  v1[3] = v0;
  v1[4] = type metadata accessor for XPCAlarm.Criteria.Options();
  v1[5] = swift_task_alloc();
  type metadata accessor for XPCAlarm.Criteria();
  v1[6] = swift_task_alloc();
  v2 = type metadata accessor for XPCAlarm();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v3 = type metadata accessor for DiscoveryToken(0);
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v1[13] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v1[14] = v4;
  v1[15] = *(v4 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();

  return _swift_task_switch(sub_10044DAD4, v0, 0);
}

uint64_t sub_10044DAD4()
{
  v9 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 168) = sub_10000A6F0(v1, qword_1005E0C30);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000010, 0x80000001004E6D90, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  static XPCAlarm.unregister(identifier:)();
  v6 = swift_task_alloc();
  *(v0 + 176) = v6;
  *v6 = v0;
  v6[1] = sub_10044DCA4;

  return sub_10044ADF8();
}

uint64_t sub_10044DCA4(char a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 224) = a1;

  return _swift_task_switch(sub_10044DDBC, v2, 0);
}

uint64_t sub_10044DDBC(uint64_t a1)
{
  v10 = v1;
  if (*(v1 + 224) == 1)
  {
    v2 = swift_task_alloc();
    *(v1 + 184) = v2;
    *v2 = v1;
    v2[1] = sub_10044DFE4;

    return sub_10043F744();
  }

  else
  {
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_10000D01C(0xD000000000000010, 0x80000001004E6D90, &v9);
      _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s not eligible.", v6, 0xCu);
      sub_100004984(v7);
    }

    v8 = *(v1 + 8);

    return v8();
  }
}

uint64_t sub_10044DFE4(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 192) = a1;

  return _swift_task_switch(sub_10044E0FC, v2, 0);
}

uint64_t sub_10044E0FC()
{
  v61 = v0;
  v1 = v0[24];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[15];
    v4 = v0[11];
    v60 = _swiftEmptyArrayStorage;
    sub_100239804(0, v2, 0);
    v5 = _swiftEmptyArrayStorage;
    v6 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v7 = *(v4 + 72);
    do
    {
      v8 = v0[12];
      sub_10044F66C(v6, v8);
      type metadata accessor for DiscoveryToken.Bucket(0);
      DateInterval.end.getter();
      sub_10044F6D0(v8);
      v60 = v5;
      v10 = v5[2];
      v9 = v5[3];
      if (v10 >= v9 >> 1)
      {
        sub_100239804((v9 > 1), v10 + 1, 1);
        v5 = v60;
      }

      v11 = v0[18];
      v12 = v0[14];
      v5[2] = v10 + 1;
      v13 = *(v3 + 32);
      v13(v5 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v11, v12);
      v6 += v7;
      --v2;
    }

    while (v2);
    v14 = v0[14];
    v15 = v0[15];
    v16 = v0[13];

    sub_10044CD54(v5, v16);

    if ((*(v15 + 48))(v16, 1, v14) == 1)
    {
      sub_1000CF9E4(v0[13]);

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 134217984;
        *(v19 + 4) = sub_10044C858();

        _os_log_impl(&_mh_execute_header, v17, v18, "Default end date to: now + %lld seconds", v19, 0xCu);
      }

      else
      {
      }

      v50 = v0[15];
      v49 = v0[16];
      v51 = v0[14];
      static Date.trustedNow.getter(v49);
      sub_10044C858();
      Date.addingTimeInterval(_:)();
      v45 = v50 + 8;
      v44 = *(v50 + 8);
      v44(v49, v51);
      v30 = *(v50 + 16);
    }

    else
    {
      v26 = v0[19];
      v27 = v0[17];
      v28 = v0[14];
      v29 = v0[15];
      v13(v26, v0[13], v28);
      v30 = *(v29 + 16);
      v30(v27, v26, v28);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();
      v33 = os_log_type_enabled(v31, v32);
      v34 = v0[17];
      v35 = v0[14];
      v36 = v0[15];
      if (v33)
      {
        v59 = v32;
        v37 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *v37 = 136446466;
        *(v37 + 4) = sub_10000D01C(0xD000000000000010, 0x80000001004E6D90, &v60);
        *(v37 + 12) = 2082;
        sub_10044F72C(&qword_1005A9800, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        log = v31;
        v38 = dispatch thunk of CustomStringConvertible.description.getter();
        v39 = v35;
        v40 = v30;
        v41 = v38;
        v43 = v42;
        v46 = *(v36 + 8);
        v45 = v36 + 8;
        v44 = v46;
        v46(v34, v39);
        v47 = v41;
        v30 = v40;
        v48 = sub_10000D01C(v47, v43, &v60);

        *(v37 + 14) = v48;
        _os_log_impl(&_mh_execute_header, log, v59, "%{public}s Nearest token end date %{public}s", v37, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v52 = *(v36 + 8);
        v45 = v36 + 8;
        v44 = v52;
        v52(v34, v35);
      }

      v53 = v0[19];
      v54 = v0[14];
      Date.addingTimeInterval(_:)();
      v44(v53, v54);
    }

    v0[25] = v45;
    v0[26] = v44;
    v30(v0[16], v0[20], v0[14]);
    v0[2] = _swiftEmptyArrayStorage;
    sub_10044F72C(&qword_1005B0BD8, &type metadata accessor for XPCAlarm.Criteria.Options, &protocol conformance descriptor for XPCAlarm.Criteria.Options);
    sub_10004B564(&qword_1005B0BE0, &qword_1004D28B8);
    sub_1002D395C();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    XPCAlarm.Criteria.init(date:options:)();
    v55 = swift_task_alloc();
    v0[27] = v55;
    *v55 = v0;
    v55[1] = sub_10044E868;
    v56 = v0[9];
    v57 = v0[6];

    return XPCAlarm.init(identifier:criteria:)(v56, 0xD000000000000036, 0x80000001004DE550, v57);
  }

  else
  {

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v60 = v23;
      *v22 = 136446210;
      *(v22 + 4) = sub_10000D01C(0xD000000000000010, 0x80000001004E6D90, &v60);
      _os_log_impl(&_mh_execute_header, v20, v21, "%{public}s no friend token to rotate.", v22, 0xCu);
      sub_100004984(v23);
    }

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_10044E868()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 24);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_10044E9D4, v4, 0);
}

uint64_t sub_10044E9D4()
{
  (*(v0 + 208))(*(v0 + 160), *(v0 + 112));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10044EAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a5;
  v6 = sub_10004B564(&qword_1005AB4E8, &qword_1004C5458);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v7 = swift_task_alloc();
  v5[7] = v7;
  v8 = sub_10004B564(&unk_1005AB4F0, &unk_1004C5460);
  v5[8] = v8;
  v5[9] = *(v8 - 8);
  v5[10] = swift_task_alloc();
  v11 = (&async function pointer to dispatch thunk of XPCAlarmEventHandler.asyncStream(name:) + async function pointer to dispatch thunk of XPCAlarmEventHandler.asyncStream(name:));
  v9 = swift_task_alloc();
  v5[11] = v9;
  *v9 = v5;
  v9[1] = sub_10044EC6C;

  return v11(v7, 0xD000000000000036, 0x80000001004DE550);
}

uint64_t sub_10044EC6C()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_10044ED7C, v1, 0);
}

uint64_t sub_10044ED7C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = sub_10044F72C(&qword_1005B3700, type metadata accessor for NITokenService, &unk_1004D83C8);
  v0[12] = v4;
  v5 = v0[4];
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_10044EE98;
  v7 = v0[8];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, v5, v4, v7);
}

uint64_t sub_10044EE98()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_10044EFA8, v1, 0);
}

uint64_t sub_10044EFA8()
{
  v13 = v0;
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[2];
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A6F0(v3, qword_1005E0C30);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136446210;
      v8 = sub_10000D01C(v2, v1, &v12);

      *(v6 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v4, v5, "XPC Alarm key rotation triggered: %{public}s", v6, 0xCu);
      sub_100004984(v7);
    }

    else
    {
    }

    v11 = swift_task_alloc();
    v0[14] = v11;
    *v11 = v0;
    v11[1] = sub_10044F1EC;

    return sub_10044F384();
  }

  else
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_10044F1EC()
{
  v1 = *v0;
  v2 = *v0;

  v3 = v1[12];
  v4 = v1[4];
  v5 = swift_task_alloc();
  v1[13] = v5;
  *v5 = v2;
  v5[1] = sub_10044EE98;
  v6 = v1[8];

  return AsyncStream.Iterator.next(isolation:)(v1 + 2, v4, v3, v6);
}

uint64_t sub_10044F384()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return _swift_task_switch(sub_10044F3CC, v0, 0);
}

uint64_t sub_10044F3CC()
{
  v10 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0C30);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000017, 0x80000001004EA7D0, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  sub_100438FC0();
  v6 = sub_100209E2C(_swiftEmptyArrayStorage);
  *(v0 + 32) = v6;
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  *v7 = v0;
  v7[1] = sub_1002F6704;

  return sub_100402934(0xD000000000000039, 0x80000001004EA790, 0, v6);
}

uint64_t sub_10044F5BC()
{
  v3 = (&async function pointer to dispatch thunk of XPCAlarmEventHandler.addEventsToProcess(with:) + async function pointer to dispatch thunk of XPCAlarmEventHandler.addEventsToProcess(with:));
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003788;

  return v3(&off_10058BEB0);
}

uint64_t sub_10044F66C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoveryToken(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10044F6D0(uint64_t a1)
{
  v2 = type metadata accessor for DiscoveryToken(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10044F72C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10044F774(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100003690;

  return sub_10044EAC8(a1, v4, v5, v6, v7);
}

uint64_t sub_10044F83C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003690;

  return sub_10044F5BC();
}

uint64_t sub_10044F8D8(char a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = _swiftEmptyArrayStorage;
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_1001FC900(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1001FC900((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x65776F6C6C6F662ELL;
  *(v5 + 5) = 0xE900000000000072;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1001FC900(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_1001FC900((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x69776F6C6C6F662ELL;
    *(v8 + 5) = 0xEA0000000000676ELL;
  }

LABEL_12:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1001FC900(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_1001FC900((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 0x466572757475662ELL;
    *(v11 + 5) = 0xEF7265776F6C6C6FLL;
  }

  if ((a1 & 8) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1001FC900(0, *(v2 + 2) + 1, 1, v2);
    }

    v13 = *(v2 + 2);
    v12 = *(v2 + 3);
    if (v13 >= v12 >> 1)
    {
      v2 = sub_1001FC900((v12 > 1), v13 + 1, 1, v2);
    }

    *(v2 + 2) = v13 + 1;
    v14 = &v2[16 * v13];
    *(v14 + 4) = 0x466572757475662ELL;
    *(v14 + 5) = 0xEF7265776F6C6C6FLL;
  }

  sub_10004B564(&qword_1005A9630, &qword_1004C5680);
  sub_10013E894();
  v15 = BidirectionalCollection<>.joined(separator:)();
  v17 = v16;

  v18._countAndFlagsBits = v15;
  v18._object = v17;
  String.append(_:)(v18);

  v19._countAndFlagsBits = 93;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  return 91;
}

uint64_t sub_10044FB90@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LocalUserNotificationCategory();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_10044FBF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t type metadata accessor for FenceConfirmationNotification(uint64_t a1)
{
  result = qword_1005B3BE0;
  if (!qword_1005B3BE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10044FCEC(uint64_t a1)
{
  type metadata accessor for LocalUserNotificationCategory();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      sub_1000F8F5C();
      if (v3 <= 0x3F)
      {
        sub_10044FDB8(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10044FDB8(uint64_t a1)
{
  if (!qword_1005B3BF0)
  {
    sub_10004B610(&qword_1005A9268, &unk_1004D38E0);
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_1005B3BF0);
    }
  }
}

uint64_t sub_10044FE2C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v23 = a1;
  v6 = type metadata accessor for Friend();
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

uint64_t sub_100450000@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_100018254(v12, v10, type metadata accessor for SecureLocationsCachedSharedKey);
      v14 = a1(v10);
      if (v3)
      {
        return sub_100006E68(v10, type metadata accessor for SecureLocationsCachedSharedKey);
      }

      if (v14)
      {
        break;
      }

      sub_100006E68(v10, type metadata accessor for SecureLocationsCachedSharedKey);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_100455738(v10, v18, type metadata accessor for SecureLocationsCachedSharedKey);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

void sub_1004501F8(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v31 = a4;
  v32 = a2;
  v34 = a1;
  v35 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
  v30 = *(v35 - 8);
  v7 = __chkstk_darwin(v35);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v33 = &v29 - v10;
  v11 = a3 + 64;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a3 + 64);
  v15 = (v12 + 63) >> 6;
  v36 = a3;

  v16 = 0;
  if (v14)
  {
    while (1)
    {
      v37 = v5;
      v17 = v9;
      v18 = v16;
LABEL_9:
      v19 = __clz(__rbit64(v14)) | (v18 << 6);
      v20 = v36;
      v21 = *(v36 + 48);
      v22 = type metadata accessor for Friend();
      v23 = v33;
      (*(*(v22 - 8) + 16))(v33, v21 + *(*(v22 - 8) + 72) * v19, v22);
      v24 = *(v20 + 56);
      v25 = type metadata accessor for FriendshipAction();
      (*(*(v25 - 8) + 16))(v23 + *(v35 + 48), v24 + *(*(v25 - 8) + 72) * v19, v25);
      v9 = v17;
      sub_100455660(v23, v17);
      v26 = v37;
      v27 = v34(v17);
      v5 = v26;
      if (v26)
      {
        sub_100002CE0(v17, &qword_1005AFFE0, &qword_1004D6060);

        return;
      }

      if (v27)
      {
        break;
      }

      v14 &= v14 - 1;
      sub_100002CE0(v17, &qword_1005AFFE0, &qword_1004D6060);
      v16 = v18;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v28 = v31;
    sub_100455660(v9, v31);
    (*(v30 + 56))(v28, 0, 1, v35);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v15)
      {

        (*(v30 + 56))(v31, 1, 1, v35);
        return;
      }

      v14 = *(v11 + 8 * v18);
      ++v16;
      if (v14)
      {
        v37 = v5;
        v17 = v9;
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1004504F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[45] = a6;
  v7[46] = a7;
  v7[43] = a4;
  v7[44] = a5;
  v7[41] = a2;
  v7[42] = a3;
  v7[40] = a1;
  v8 = type metadata accessor for Fence.ID();
  v7[47] = v8;
  v7[48] = *(v8 - 8);
  v7[49] = swift_task_alloc();
  v9 = type metadata accessor for Fence.TriggerPosition();
  v7[50] = v9;
  v7[51] = *(v9 - 8);
  v7[52] = swift_task_alloc();
  v10 = type metadata accessor for Date();
  v7[53] = v10;
  v7[54] = *(v10 - 8);
  v7[55] = swift_task_alloc();
  v11 = type metadata accessor for Fence.MonitorRegion();
  v7[56] = v11;
  v7[57] = *(v11 - 8);
  v7[58] = swift_task_alloc();
  v7[59] = swift_task_alloc();
  v12 = type metadata accessor for Handle();
  v7[60] = v12;
  v7[61] = *(v12 - 8);
  v7[62] = swift_task_alloc();
  v7[63] = swift_task_alloc();
  v13 = type metadata accessor for Friend();
  v7[64] = v13;
  v7[65] = *(v13 - 8);
  v7[66] = swift_task_alloc();
  v7[67] = swift_task_alloc();
  sub_10004B564(&qword_1005A9188, &unk_1004D80D0);
  v7[68] = swift_task_alloc();
  v7[69] = swift_task_alloc();
  v14 = type metadata accessor for PersonHandle();
  v7[70] = v14;
  v7[71] = *(v14 - 8);
  v7[72] = swift_task_alloc();

  return _swift_task_switch(sub_100450878, 0, 0);
}

uint64_t sub_100450878()
{
  v1 = v0[40];
  v2 = type metadata accessor for FenceNotification(0);
  v0[73] = v2;
  *(v1 + *(v2 + 20)) = 2;
  v3 = (v1 + *(v2 + 32));
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = swift_task_alloc();
  v0[74] = v4;
  *v4 = v0;
  v4[1] = sub_100450960;

  return daemon.getter();
}

uint64_t sub_100450960(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 600) = a1;

  v3 = swift_task_alloc();
  *(v2 + 608) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_100009710(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009710(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_100450B68;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100450B68(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 616) = a1;
  *(v3 + 624) = v1;

  if (v1)
  {

    v4 = sub_100451F78;
  }

  else
  {
    v4 = sub_100450CEC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100450CEC(uint64_t a1)
{
  v2 = Fence.others.getter();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v1[71];
    sub_10002B3C0(0, v3, 0);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = v2 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v20 = *(v4 + 56);
    v21 = v5;
    v7 = (v4 - 8);
    do
    {
      v8 = v1[72];
      v9 = v1[70];
      v21(v8, v6, v9);
      v10 = PersonHandle.id.getter();
      v12 = v11;
      (*v7)(v8, v9);
      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        sub_10002B3C0((v13 > 1), v14 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v14 + 1;
      v15 = &_swiftEmptyArrayStorage[2 * v14];
      v15[4] = v10;
      v15[5] = v12;
      v6 += v20;
      --v3;
    }

    while (v3);

    if (_swiftEmptyArrayStorage[2])
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (_swiftEmptyArrayStorage[2])
    {
LABEL_7:
      v16 = _swiftEmptyArrayStorage[4];

      goto LABEL_10;
    }
  }

  v16 = 0;
  v17 = 0xE000000000000000;
LABEL_10:
  v1[80] = v17;
  v1[79] = v16;

  v18 = swift_task_alloc();
  v1[81] = v18;
  *v18 = v1;
  v18[1] = sub_100450F14;

  return sub_100008CC0();
}

uint64_t sub_100450F14(uint64_t a1)
{
  *(*v1 + 656) = a1;

  return _swift_task_switch(sub_100451040, 0, 0);
}

uint64_t sub_100451040()
{
  v1 = v0[82];
  v142 = *(v1 + 16);
  if (v142)
  {
    v2 = 0;
    v3 = v0[65];
    v145 = (v0[61] + 8);
    while (1)
    {
      if (v2 >= *(v1 + 16))
      {
        __break(1u);
      }

      v4 = v0[80];
      v5 = v0[79];
      v6 = v0[63];
      v7 = v0[60];
      (*(v3 + 16))(v0[67], v0[82] + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v2, v0[64]);
      Friend.handle.getter();
      v8 = Handle.identifier.getter();
      v10 = v9;
      (*v145)(v6, v7);
      if (v8 == v5 && v10 == v4)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v12)
      {
        goto LABEL_12;
      }

      ++v2;
      (*(v3 + 8))(v0[67], v0[64]);
      if (v142 == v2)
      {
        goto LABEL_10;
      }
    }

LABEL_12:

    (*(v0[65] + 32))(v0[69], v0[67], v0[64]);
    v13 = 0;
  }

  else
  {
LABEL_10:

    v13 = 1;
  }

  v14 = v0[69];
  v15 = v0[68];
  v16 = v0[65];
  v17 = v0[64];
  (*(v16 + 56))(v14, v13, 1, v17);
  sub_100455594(v14, v15);
  v18 = (*(v16 + 48))(v15, 1, v17);
  v19 = v0[69];
  v147 = v0;
  if (v18 == 1)
  {
    sub_100002CE0(v19, &qword_1005A9188, &unk_1004D80D0);
    v140 = 0;
    v20 = 0xE000000000000000;
  }

  else
  {
    v21 = v0[66];
    v22 = v0[65];
    v23 = v0[64];
    v24 = v0[62];
    v25 = v0[61];
    v26 = v0[60];
    (*(v22 + 32))(v21, v0[68], v23);
    Friend.handle.getter();
    v27 = Handle.serverIdentifier.getter();
    v29 = v28;
    (*(v25 + 8))(v24, v26);
    (*(v22 + 8))(v21, v23);
    sub_100002CE0(v19, &qword_1005A9188, &unk_1004D80D0);
    if (v29)
    {
      v30 = v27;
    }

    else
    {
      v30 = 0;
    }

    v140 = v30;
    v20 = 0xE000000000000000;
    if (v29)
    {
      v20 = v29;
    }
  }

  v146 = v20;
  v32 = v0[58];
  v31 = v0[59];
  v34 = v0[56];
  v33 = v0[57];
  v36 = v0[54];
  v35 = v0[55];
  v37 = v0[53];
  Fence.region.getter();
  Fence.MonitorRegion.center.getter();
  v39 = v38;
  v41 = v40;
  v42 = *(v33 + 8);
  v42(v31, v34);
  Fence.region.getter();
  Fence.MonitorRegion.radius.getter();
  v44 = v43;
  v42(v32, v34);
  static Date.now.getter();
  v45 = objc_allocWithZone(CLLocation);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v47 = [v45 initWithCoordinate:isa altitude:v39 horizontalAccuracy:v41 verticalAccuracy:0.0 timestamp:{v44, 0.0}];

  (*(v36 + 8))(v35, v37);
  v48 = objc_opt_self();
  v147[38] = 0;
  v49 = [v48 archivedDataWithRootObject:v47 requiringSecureCoding:1 error:v147 + 38];
  v50 = v147[38];
  if (v49)
  {
    v51 = v147[52];
    v53 = v147[50];
    v52 = v147[51];
    v54 = v147[44];
    v141 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v143 = v55;

    v56 = *(v52 + 16);
    v56(v51, v54, v53);
    v57 = (*(v52 + 88))(v51, v53);
    if (v57 == enum case for Fence.TriggerPosition.inside(_:) || v57 == enum case for Fence.TriggerPosition.outside(_:))
    {
      v58 = v147;
      v69 = v147[52];
      (*(v147[51] + 96))(v69, v147[50]);
      v70 = *v69;
      v147[39] = 0;
      v71 = v70;
      v72 = [v48 archivedDataWithRootObject:v71 requiringSecureCoding:1 error:v147 + 39];
      v73 = v147[39];
      if (v72)
      {
        v139 = v47;
        v133 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v136 = v71;
        v127 = v74;

        goto LABEL_28;
      }

      v112 = v73;
      v113 = v147[51];
      v114 = v147[44];
      v132 = v147[50];
      v135 = v147[43];
      v64 = v147;
      v115 = v147[42];
      v138 = v147[41];

      _convertNSErrorToError(_:)();

      swift_willThrow();

      sub_1000049D0(v141, v143);
      (*(v113 + 8))(v114, v132);
      v116 = type metadata accessor for Fence.TriggerID();
      (*(*(v116 - 8) + 8))(v135, v116);
      v117 = type metadata accessor for Fence();
      (*(*(v117 - 8) + 8))(v115, v117);
      v118 = type metadata accessor for LocalUserNotificationCategory();
      (*(*(v118 - 8) + 8))(v138, v118);
    }

    else
    {
      v139 = v47;
      if (v57 == enum case for Fence.TriggerPosition.undetermined(_:))
      {
        v58 = v147;
        (*(v147[51] + 8))(v147[52], v147[50]);
        v133 = 0;
        v136 = 0;
        v127 = 0xF000000000000000;
LABEL_28:
        v125 = v58[79];
        v126 = v58[80];
        v75 = v58[73];
        v76 = v58[48];
        v77 = v58[49];
        v78 = v58[47];
        v123 = v58[45];
        v124 = v58[46];
        v80 = v58[40];
        v79 = v58[41];
        Fence.id.getter();
        v81 = Fence.ID.uuidString.getter();
        v82 = v58;
        v84 = v83;
        (*(v76 + 8))(v77, v78);
        v85 = type metadata accessor for LocalUserNotificationCategory();
        v128 = *(v85 - 8);
        v130 = v85;
        (*(v128 + 16))(v80, v79);
        v86 = (v80 + *(v75 + 28));
        *v86 = v81;
        v86[1] = v84;

        Fence.TriggerID.uuid.getter();
        v87 = (v80 + *(v75 + 36));
        *v87 = v123;
        v87[1] = v124;
        sub_10004B564(&qword_1005B1120, &qword_1004D3D60);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1004C0BB0;
        *(inited + 32) = 0x6E6F697461636F6CLL;
        *(inited + 40) = 0xEF64497472656C41;
        *(inited + 48) = v81;
        *(inited + 56) = v84;
        *(inited + 72) = &type metadata for String;
        strcpy((inited + 80), "friendHandle");
        *(inited + 93) = 0;
        *(inited + 94) = -5120;
        *(inited + 96) = v125;
        *(inited + 104) = v126;
        *(inited + 120) = &type metadata for String;
        strcpy((inited + 128), "friendServerId");
        *(inited + 143) = -18;
        *(inited + 144) = v140;
        *(inited + 152) = v146;
        *(inited + 168) = &type metadata for String;
        strcpy((inited + 176), "fenceLocation");
        *(inited + 216) = &type metadata for Data;
        *(inited + 190) = -4864;
        *(inited + 192) = v141;
        *(inited + 200) = v143;
        sub_100005F6C(v141, v143);
        v89 = sub_100207CD4(inited);
        swift_setDeallocating();
        sub_10004B564(&qword_1005A9E58, &qword_1004C33C0);
        swift_arrayDestroy();
        if (v127 >> 60 == 15)
        {
          v90 = v133;
        }

        else
        {
          v82[33] = &type metadata for Data;
          v90 = v133;
          v82[30] = v133;
          v82[31] = v127;
          sub_10004B064(v82 + 15, v82 + 17);
          sub_100005F6C(v133, v127);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          sub_1004528F8(v82 + 17, 0xD000000000000014, 0x80000001004EA7F0, isUniquelyReferenced_nonNull_native);
        }

        v122 = v82[73];
        v92 = v82[51];
        v93 = v82[50];
        v94 = v82[44];
        v95 = v147[43];
        v96 = v147[42];
        v120 = v147[41];
        v121 = v147[40];
        sub_10028EE90(v89);
        v98 = v97;

        sub_10001A794(v90, v127);
        sub_1000049D0(v141, v143);

        (*(v92 + 8))(v94, v93);
        v99 = type metadata accessor for Fence.TriggerID();
        (*(*(v99 - 8) + 8))(v95, v99);
        v100 = type metadata accessor for Fence();
        (*(*(v100 - 8) + 8))(v96, v100);
        (*(v128 + 8))(v120, v130);
        *(v121 + *(v122 + 40)) = v98;

        v101 = v147[1];
        goto LABEL_35;
      }

      v64 = v147;
      v102 = v147[51];
      v103 = v147[50];
      v104 = v147[44];
      v129 = v147[43];
      v131 = v147[42];
      v134 = v147[41];
      v137 = v147[52];

      v105 = type metadata accessor for Session.FenceError();
      sub_100009710(&qword_1005B0BB8, &type metadata accessor for Session.FenceError, &protocol conformance descriptor for Session.FenceError);
      swift_allocError();
      v107 = v106;
      v56(v106, v104, v103);
      (*(*(v105 - 8) + 104))(v107, enum case for Session.FenceError.unrecognizedTriggerPosition(_:), v105);
      swift_willThrow();

      sub_1000049D0(v141, v143);

      v108 = *(v102 + 8);
      v108(v104, v103);
      v109 = type metadata accessor for Fence.TriggerID();
      (*(*(v109 - 8) + 8))(v129, v109);
      v110 = type metadata accessor for Fence();
      (*(*(v110 - 8) + 8))(v131, v110);
      v111 = type metadata accessor for LocalUserNotificationCategory();
      (*(*(v111 - 8) + 8))(v134, v111);
      v108(v137, v103);
    }
  }

  else
  {
    v59 = v50;
    v60 = v147[50];
    v61 = v147[51];
    v63 = v147[43];
    v62 = v147[44];
    v64 = v147;
    v65 = v147[42];
    v144 = v147[41];

    _convertNSErrorToError(_:)();

    swift_willThrow();

    (*(v61 + 8))(v62, v60);
    v66 = type metadata accessor for Fence.TriggerID();
    (*(*(v66 - 8) + 8))(v63, v66);
    v67 = type metadata accessor for Fence();
    (*(*(v67 - 8) + 8))(v65, v67);
    v68 = type metadata accessor for LocalUserNotificationCategory();
    (*(*(v68 - 8) + 8))(v144, v68);
  }

  v101 = v64[1];
LABEL_35:

  return v101();
}

uint64_t sub_100451F78()
{
  v1 = v0[43];
  v3 = v0[41];
  v2 = v0[42];
  (*(v0[51] + 8))(v0[44], v0[50]);
  v4 = type metadata accessor for Fence.TriggerID();
  (*(*(v4 - 8) + 8))(v1, v4);
  v5 = type metadata accessor for Fence();
  (*(*(v5 - 8) + 8))(v2, v5);
  v6 = type metadata accessor for LocalUserNotificationCategory();
  (*(*(v6 - 8) + 8))(v3, v6);

  v7 = v0[1];

  return v7();
}

uint64_t type metadata accessor for FenceNotification(uint64_t a1)
{
  result = qword_1005B3C90;
  if (!qword_1005B3C90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004521C0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000110D8(a2, a3);
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
      sub_100202528();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10022BE4C(v16, a4 & 1);
    v11 = sub_1000110D8(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 48 * v11;

    sub_100053580(a1, v22);
  }

  else
  {
    sub_1002337D4(v11, a2, a3, a1, v21);
  }
}

void sub_100452308(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000110D8(a2, a3);
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
      sub_1002026D8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10022C11C(v16, a4 & 1);
    v11 = sub_1000110D8(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 48 * v11;

    sub_100455810(a1, v22);
  }

  else
  {
    sub_100233830(v11, a2, a3, a1, v21);
  }
}

void sub_100452450(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000110D8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_100202888();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10022C3EC(v16, a4 & 1);
    v11 = sub_1000110D8(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
_objc_release_x1:
      _objc_release_x1();
      return;
    }
  }

LABEL_8:
  if (v17)
  {
    *(*(*v5 + 56) + 8 * v11) = a1;

    goto _objc_release_x1;
  }

  sub_100241518();
}