uint64_t sub_1009863FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100986464@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100E73F30(v1 + v4, v6, v7, a1);
}

void *sub_100986548@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 64);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = sub_1000035D0((v1 + 24), v5);
  result = sub_1006F8B58(v7, v4, v3, v5, v6);
  *a1 = result;
  return result;
}

void *sub_1009865D8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80)));

  return sub_100E73E24(v4, a1);
}

uint64_t sub_100986664@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100E73FF0(v4, a1);
}

uint64_t sub_1009866D8@<X0>(_BYTE *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[6];
  v5 = v1[7];
  v6 = sub_1000035D0(v1 + 3, v4);
  result = sub_100A05A00(v6, v3, v4, v5);
  *a1 = result & 1;
  return result;
}

uint64_t sub_100986734(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_100967CC8(a1, a2, v2);
}

uint64_t sub_100986810()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_10096829C(v2, v3);
}

uint64_t sub_1009868A8()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 48);
  v6 = sub_1000035D0((v0 + 24), v5);

  return sub_1006FD1C4(v6, v2, v4, 0, 0, v1, v5, v3);
}

uint64_t sub_10098691C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_1009684E0(a1, v5, v4);
}

uint64_t sub_1009869C8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10073ACF0;

  return sub_10094CBB4(v2, v3);
}

unint64_t sub_100986A60()
{
  result = qword_1016AF970;
  if (!qword_1016AF970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AF970);
  }

  return result;
}

uint64_t sub_100986ACC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_100961028(v2, v3);
}

uint64_t sub_100986B64(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100961130(a1, v5, v4);
}

uint64_t sub_100986C10()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1001BBA4C;

  return sub_10094CBB4(v2, v3);
}

uint64_t sub_100986CA8(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v1 + 2);
  v7 = *(v1 + 3);
  v8 = v1[4];
  v9 = *(v1 + 5);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100014744;

  return sub_10095FAC0(v8, a1, v6, v7, v9, v1 + v5);
}

uint64_t sub_100986DB0(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_10095E594(a1, a2, v2);
}

uint64_t sub_100986E74()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001BA6C8;

  return sub_10095CD74(v2, v3, v4);
}

uint64_t sub_100986F1C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_10095CF28(v2, v3, v4);
}

uint64_t sub_100986FC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_10095D044(a1, v4, v5, v6);
}

uint64_t sub_100987080(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000BC4D4(&qword_1016AF990, &qword_1013CAEB0) - 8);
  v6 = (*(v5 + 80) + 112) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100014744;

  return sub_10095A854(a1, v8, v9, v10, (v1 + 5), v1 + v6, v11, v12);
}

uint64_t sub_100987214(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100987234, v1, 0);
}

uint64_t sub_100987234()
{
  v19 = v0;
  v1 = v0[2];
  v0[4] = v1[7];
  v0[5] = v1[6];
  v2 = v1[8];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = SPRepairDeviceContextTypeRepair;
    v2 = 0;
  }

  v0[6] = v3;
  v4 = qword_101694AD8;
  v5 = v2;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v0[7] = sub_1000076D4(v6, qword_10177B740);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = Array.description.getter();
    v12 = sub_1000136BC(v10, v11, &v18);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v13 = Array.description.getter();
    v15 = sub_1000136BC(v13, v14, &v18);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "Fetching filtered devices for %s, %s.", v9, 0x16u);
    swift_arrayDestroy();
  }

  v16 = swift_task_alloc();
  v0[8] = v16;
  *v16 = v0;
  v16[1] = sub_1009874A0;

  return daemon.getter();
}

uint64_t sub_1009874A0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 72) = a1;

  v3 = swift_task_alloc();
  *(v2 + 80) = v3;
  v4 = type metadata accessor for Daemon();
  MyServiceDeviceStoreService = type metadata accessor for FindMyServiceDeviceStoreService(0);
  v6 = sub_100985CA0(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100985CA0(&unk_1016B1140, type metadata accessor for FindMyServiceDeviceStoreService, &unk_1013C3520);
  *v3 = v9;
  v3[1] = sub_10098767C;

  return ActorServiceDaemon.getService<A>()(v4, MyServiceDeviceStoreService, v6, v7);
}

uint64_t sub_10098767C(uint64_t a1)
{
  v3 = *v2;
  v3[11] = a1;
  v3[12] = v1;

  if (v1)
  {
    v4 = v3[3];
    v5 = sub_100987A94;
  }

  else
  {
    v6 = v3[3];

    v5 = sub_1009877A4;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1009877A4()
{
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  v0[13] = v2;
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_100987860;
  v5 = v0[4];
  v6 = v0[5];

  return sub_1008C6A3C(v6, v5, v1, v3);
}

uint64_t sub_100987860(uint64_t a1)
{
  v4 = *v2;
  v4[15] = v1;

  v5 = v4[3];
  if (v1)
  {
    v6 = sub_100987C04;
  }

  else
  {
    v4[16] = a1;
    v6 = sub_1009879B8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1009879B8()
{
  v1 = v0[16];
  v2 = v0[6];
  v3 = v0[3];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v5 = v0[1];

  return v5();
}

uint64_t sub_100987A94()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 48);
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to fetch filtered devices: %{public}@.", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100987C04()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 48);
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to fetch filtered devices: %{public}@.", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100987D74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100959B58(a1, v4, v5, v6);
}

uint64_t sub_100987E28()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_10097EB48(v2, v3);
}

uint64_t sub_100987ECC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100987EE4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_100987F68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_10095607C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100988030()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_100988080(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_100953080(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100988150()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_100950AF8(v2, v3);
}

uint64_t sub_1009881E8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100950C08(a1, v5, v4);
}

uint64_t sub_100988294(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_10098831C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100960A0C(v2, v3, v4);
}

uint64_t sub_1009883E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014650;

  return sub_10096005C(v2, v3, v4);
}

uint64_t sub_100988488(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1009884E8(void (*a1)(void), void (*a2)(void), void (*a3)(void))
{
  a1(v3[2]);
  a2(v3[3]);
  a3(v3[4]);

  return _swift_deallocObject(v3, 40);
}

void sub_100988558(uint64_t a1, char a2, void *a3)
{
  v64 = a3;
  v5 = type metadata accessor for UUID();
  v57 = *(v5 - 8);
  __chkstk_darwin(v5);
  v63 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016ADE80, &unk_1013C55E0);
  v8 = __chkstk_darwin(v7);
  v62 = &v53 - v10;
  v11 = *(a1 + 16);
  if (!v11)
  {
    return;
  }

  v12 = v62;
  v13 = (v62 + *(v8 + 48));
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v59 = *(v9 + 72);
  v54 = v14;
  sub_1000D2A70(a1 + v14, v62, &qword_1016ADE80, &unk_1013C55E0);
  v15 = *(v57 + 32);
  v16 = v63;
  v60 = (v57 + 32);
  v61 = v5;
  v15(v63, v12, v5);
  v58 = v13;
  v17 = *v13;
  v18 = v13[1];
  v19 = *v64;
  v21 = sub_1000210EC(v16);
  v22 = v19[2];
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    goto LABEL_24;
  }

  LOBYTE(v16) = v20;
  v25 = v19[3];
  v55 = v17;
  if (v25 >= v24)
  {
    v17 = v60;
    if ((a2 & 1) == 0)
    {
      goto LABEL_26;
    }

    v28 = v18;
    while (1)
    {
LABEL_8:
      v18 = (v17 - 3);
      v29 = *v64;
      if (v16)
      {
        v16 = v61;
        (*v18)(v63, v61);
        v30 = v29[7] + 16 * v21;
        v31 = *v30;
        *v30 = v55;
        *(v30 + 8) = v28;

        v32 = v11 - 1;
        if (v11 == 1)
        {
          return;
        }
      }

      else
      {
        v29[(v21 >> 6) + 8] |= 1 << v21;
        v16 = v61;
        v15(v29[6] + *(v57 + 72) * v21, v63, v61);
        v33 = (v29[7] + 16 * v21);
        *v33 = v55;
        v33[1] = v28;
        v34 = v29[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_25;
        }

        v29[2] = v36;
        v32 = v11 - 1;
        if (v11 == 1)
        {
          return;
        }
      }

      v11 = a1 + v59 + v54;
      v56 = (v17 - 3);
      while (1)
      {
        v39 = v62;
        sub_1000D2A70(v11, v62, &qword_1016ADE80, &unk_1013C55E0);
        v18 = *v17;
        v40 = v63;
        (*v17)(v63, v39, v16);
        a1 = *v58;
        v15 = v58[1];
        v41 = *v64;
        v21 = sub_1000210EC(v40);
        v43 = v41[2];
        v44 = (v42 & 1) == 0;
        v45 = v43 + v44;
        if (__OFADD__(v43, v44))
        {
          break;
        }

        v46 = v42;
        if (v41[3] < v45)
        {
          sub_100FF30CC(v45, 1);
          v47 = sub_1000210EC(v63);
          if ((v46 & 1) != (v48 & 1))
          {
            goto LABEL_27;
          }

          v21 = v47;
        }

        v49 = *v64;
        if (v46)
        {
          v16 = v61;
          (*v56)(v63, v61);
          v37 = v49[7] + 16 * v21;
          v38 = *v37;
          *v37 = a1;
          *(v37 + 8) = v15;

          v17 = v60;
        }

        else
        {
          v49[(v21 >> 6) + 8] |= 1 << v21;
          v17 = v60;
          v16 = v61;
          (v18)(v49[6] + *(v57 + 72) * v21, v63, v61);
          v50 = (v49[7] + 16 * v21);
          *v50 = a1;
          v50[1] = v15;
          v51 = v49[2];
          v35 = __OFADD__(v51, 1);
          v52 = v51 + 1;
          if (v35)
          {
            goto LABEL_25;
          }

          v49[2] = v52;
        }

        v11 += v59;
        if (!--v32)
        {
          return;
        }
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v28 = v18;
      sub_10100B804();
    }
  }

  sub_100FF30CC(v24, a2 & 1);
  v26 = sub_1000210EC(v63);
  if ((v16 & 1) == (v27 & 1))
  {
    v21 = v26;
    v28 = v18;
    v17 = v60;
    goto LABEL_8;
  }

LABEL_27:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100988A00()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_10094B958(v0);
}

uint64_t sub_100988A90(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016AF960, &qword_1013CAE00);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100988B08()
{
  result = qword_1016AFA38;
  if (!qword_1016AFA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFA38);
  }

  return result;
}

uint64_t sub_100988B5C()
{
  v2 = *(type metadata accessor for ContinuousClock() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for ContinuousClock.Instant() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100014744;

  return sub_10094C438(v7, v8, v0 + v3, v0 + v6);
}

void sub_100988C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  if (a5)
  {
  }
}

uint64_t sub_100988D24(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return _swift_deallocObject(v2, 32);
}

uint64_t sub_100988D94(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_10094AE54(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100988E8C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_10094ABD0(v0);
}

uint64_t sub_100988F40()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PeerCommunicationIdentifier(0);
  __chkstk_darwin(v6);
  v8 = (v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10098BF5C(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        (*(v3 + 32))(v5, v8, v2);
        v40 = 0x6F7244726565702ELL;
        v41 = 0xEA00000000002870;
        sub_10098CDEC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v24);

        v25._countAndFlagsBits = 41;
        v25._object = 0xE100000000000000;
        String.append(_:)(v25);
        v26 = v40;
        (*(v3 + 8))(v5, v2);
        return v26;
      }

      v10._countAndFlagsBits = *v8;
      v11 = v8[1];
      v40 = 0x4449656C7070612ELL;
      v41 = 0xE900000000000028;
      v10._object = v11;
      String.append(_:)(v10);

      return v40;
    }

    if (EnumCaseMultiPayload != 2)
    {
      v35 = v8[1];
      v36 = v8[2];
      v40 = 0;
      v41 = 0xE000000000000000;
      _StringGuts.grow(_:)(25);

      v40 = 0xD000000000000016;
      v41 = 0x8000000101366910;
      v37._countAndFlagsBits = v35;
      v37._object = v36;
      String.append(_:)(v37);
      goto LABEL_16;
    }

    v19 = *v8;
    v18 = v8[1];
    v20 = v8[2];
    v40 = 0;
    v41 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);

    v40 = 0xD000000000000015;
    v41 = 0x8000000101366930;
    v39[1] = v19;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v12._countAndFlagsBits = v8[1];
      v13 = v8[2];
      v14 = v8[3];
      v15 = v8[4];
      v40 = 0x287364692ELL;
      v41 = 0xE500000000000000;
      v12._object = v13;
      String.append(_:)(v12);

      v16._countAndFlagsBits = 8236;
      v16._object = 0xE200000000000000;
      String.append(_:)(v16);
      v17._countAndFlagsBits = v14;
      v17._object = v15;
      String.append(_:)(v17);
LABEL_16:

      v38._countAndFlagsBits = 41;
      v38._object = 0xE100000000000000;
      String.append(_:)(v38);
      return v40;
    }

    v27 = *v8;
    v28 = v8[1];
    v30 = v8[3];
    v29 = v8[4];
    v18 = v8[5];
    v20 = v8[6];
    v40 = 0;
    v41 = 0xE000000000000000;
    _StringGuts.grow(_:)(22);

    v40 = 0x49796C696D61662ELL;
    v41 = 0xEB00000000285344;
    v31._countAndFlagsBits = v27;
    v31._object = v28;
    String.append(_:)(v31);

    v32._countAndFlagsBits = 8236;
    v32._object = 0xE200000000000000;
    String.append(_:)(v32);
    v21 = v30;
    v22 = v29;
LABEL_14:
    String.append(_:)(*&v21);

    v33._countAndFlagsBits = 8236;
    v33._object = 0xE200000000000000;
    String.append(_:)(v33);
    v34._countAndFlagsBits = v18;
    v34._object = v20;
    String.append(_:)(v34);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 6)
  {
    return 0x656E6F6E2ELL;
  }

  else
  {
    return 1650816814;
  }
}

uint64_t sub_10098936C(void *a1)
{
  v2 = sub_1000BC4D4(&qword_1016AFBC8, &qword_1013CB3D8);
  v81 = *(v2 - 8);
  v82 = v2;
  __chkstk_darwin(v2);
  v80 = &v64 - v3;
  v4 = sub_1000BC4D4(&qword_1016AFBD0, &qword_1013CB3E0);
  v87 = *(v4 - 8);
  v88 = v4;
  __chkstk_darwin(v4);
  v86 = &v64 - v5;
  v6 = sub_1000BC4D4(&qword_1016AFBD8, &qword_1013CB3E8);
  v84 = *(v6 - 8);
  v85 = v6;
  __chkstk_darwin(v6);
  v83 = &v64 - v7;
  v8 = sub_1000BC4D4(&qword_1016AFBE0, &qword_1013CB3F0);
  v78 = *(v8 - 8);
  v79 = v8;
  __chkstk_darwin(v8);
  v75 = &v64 - v9;
  v10 = sub_1000BC4D4(&qword_1016AFBE8, &qword_1013CB3F8);
  v76 = *(v10 - 8);
  v77 = v10;
  __chkstk_darwin(v10);
  v74 = &v64 - v11;
  v73 = sub_1000BC4D4(&qword_1016AFBF0, &qword_1013CB400);
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v69 = &v64 - v12;
  v71 = type metadata accessor for UUID();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v68 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1000BC4D4(&qword_1016AFBF8, &qword_1013CB408);
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v15 = &v64 - v14;
  v16 = sub_1000BC4D4(&qword_1016AFC00, &qword_1013CB410);
  v65 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v64 - v17;
  v19 = type metadata accessor for PeerCommunicationIdentifier(0);
  __chkstk_darwin(v19);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1000BC4D4(&qword_1016AFC08, &qword_1013CB418);
  v90 = *(v93 - 8);
  __chkstk_darwin(v93);
  v23 = &v64 - v22;
  sub_1000035D0(a1, a1[3]);
  sub_10098CAA4();
  v92 = v23;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10098BF5C(v89, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      v42 = v93;
      if (EnumCaseMultiPayload == 6)
      {
        v94[0] = 0;
        sub_10098CD44();
        v43 = v92;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v65 + 8))(v18, v16);
      }

      else
      {
        v94[0] = 7;
        sub_10098CAF8();
        v61 = v80;
        v43 = v92;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v81 + 8))(v61, v82);
      }

      return (*(v90 + 8))(v43, v42);
    }

    if (EnumCaseMultiPayload != 4)
    {
      LODWORD(v89) = v21[16];
      v49 = *(v21 + 3);
      v50 = *(v21 + 4);
      v84 = *(v21 + 5);
      v85 = v49;
      v94[0] = 6;
      sub_10098CB4C();
      v51 = v86;
      v52 = v92;
      v53 = v93;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v94[0] = 0;
      v54 = v88;
      v55 = v91;
      KeyedEncodingContainer.encode(_:forKey:)();

      if (v55)
      {

        (*(v87 + 8))(v51, v54);
        return (*(v90 + 8))(v52, v53);
      }

      else
      {
        v94[0] = v89;
        v95 = v85;
        v96 = v50;
        v97 = 1;
        sub_100157F84();
        KeyedEncodingContainer.encode<A>(_:forKey:)();

        v94[0] = 2;
        KeyedEncodingContainer.encode(_:forKey:)();
        v62 = v92;
        v63 = v93;

        (*(v87 + 8))(v51, v54);
        return (*(v90 + 8))(v62, v63);
      }
    }

    v28 = *v21;
    v30 = *(v21 + 1);
    v29 = *(v21 + 2);
    v94[0] = 5;
    sub_10098CBA0();
    v31 = v83;
    v33 = v92;
    v32 = v93;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v94[0] = v28;
    v95 = v30;
    v96 = v29;
    v97 = 0;
    sub_100157F84();
    v34 = v85;
    v35 = v91;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v35)
    {

      v94[0] = 1;
      KeyedEncodingContainer.encode(_:forKey:)();

      (*(v84 + 8))(v31, v34);
      return (*(v90 + 8))(v33, v32);
    }

    (*(v84 + 8))(v31, v34);
    (*(v90 + 8))(v33, v32);
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v26 = v92;
    v25 = v93;
    if (EnumCaseMultiPayload)
    {
      v44 = v70;
      v45 = v68;
      v46 = v71;
      (*(v70 + 32))(v68, v21, v71);
      v94[0] = 2;
      sub_10098CC9C();
      v47 = v69;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_10098CDEC(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v48 = v73;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v72 + 8))(v47, v48);
      (*(v44 + 8))(v45, v46);
    }

    else
    {
      v94[0] = 1;
      sub_10098CCF0();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v27 = v67;
      KeyedEncodingContainer.encode(_:forKey:)();

      (*(v66 + 8))(v15, v27);
    }

    return (*(v90 + 8))(v26, v25);
  }

  v37 = v92;
  v36 = v93;
  if (EnumCaseMultiPayload != 2)
  {
    v56 = *v21;
    v58 = *(v21 + 1);
    v57 = *(v21 + 2);
    v94[0] = 4;
    sub_10098CBF4();
    v59 = v75;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v94[0] = v56;
    v95 = v58;
    v96 = v57;
    sub_100157F84();
    v60 = v79;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v78 + 8))(v59, v60);
    (*(v90 + 8))(v37, v36);
  }

  v94[0] = 3;
  sub_10098CC48();
  v38 = v74;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v94[0] = 0;
  v39 = v77;
  v40 = v91;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v40)
  {
    v94[0] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v76 + 8))(v38, v39);
  return (*(v90 + 8))(v37, v36);
}

void sub_10098A0BC(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PeerCommunicationIdentifier(0);
  __chkstk_darwin(v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10098BF5C(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        (*(v3 + 32))(v5, v8, v2);
        Hasher._combine(_:)(2uLL);
        sub_10098CDEC(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        (*(v3 + 8))(v5, v2);
      }

      else
      {
        Hasher._combine(_:)(1uLL);
        String.hash(into:)();
      }

      return;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v11 = *v8;
      v12 = 3;
    }

    else
    {
      v11 = *v8;
      v12 = 4;
    }

    Hasher._combine(_:)(v12);
    Hasher._combine(_:)(v11);
LABEL_17:
    String.hash(into:)();

    return;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v10 = *v8;
      Hasher._combine(_:)(5uLL);
      Hasher._combine(_:)(v10);
    }

    else
    {
      v14 = v8[16];
      Hasher._combine(_:)(6uLL);
      String.hash(into:)();

      Hasher._combine(_:)(v14);
    }

    String.hash(into:)();

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v13 = 0;
  }

  else
  {
    v13 = 7;
  }

  Hasher._combine(_:)(v13);
}

uint64_t sub_10098A3B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v125 = a2;
  v117 = sub_1000BC4D4(&qword_1016AFB38, &qword_1013CB388);
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v124 = &v98 - v3;
  v118 = sub_1000BC4D4(&qword_1016AFB40, &qword_1013CB390);
  v120 = *(v118 - 8);
  __chkstk_darwin(v118);
  v132 = &v98 - v4;
  v119 = sub_1000BC4D4(&qword_1016AFB48, &qword_1013CB398);
  v115 = *(v119 - 8);
  __chkstk_darwin(v119);
  v131 = &v98 - v5;
  v114 = sub_1000BC4D4(&qword_1016AFB50, &qword_1013CB3A0);
  v112 = *(v114 - 8);
  __chkstk_darwin(v114);
  v123 = &v98 - v6;
  v113 = sub_1000BC4D4(&qword_1016AFB58, &qword_1013CB3A8);
  v111 = *(v113 - 8);
  __chkstk_darwin(v113);
  v130 = &v98 - v7;
  v110 = sub_1000BC4D4(&qword_1016AFB60, &qword_1013CB3B0);
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v129 = &v98 - v8;
  v108 = sub_1000BC4D4(&qword_1016AFB68, &qword_1013CB3B8);
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v122 = &v98 - v9;
  v106 = sub_1000BC4D4(&qword_1016AFB70, &qword_1013CB3C0);
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v121 = &v98 - v10;
  v128 = sub_1000BC4D4(&qword_1016AFB78, &unk_1013CB3C8);
  v133 = *(v128 - 8);
  __chkstk_darwin(v128);
  v12 = &v98 - v11;
  v126 = type metadata accessor for PeerCommunicationIdentifier(0);
  v13 = __chkstk_darwin(v126);
  v103 = (&v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __chkstk_darwin(v13);
  v104 = (&v98 - v16);
  v17 = __chkstk_darwin(v15);
  v19 = &v98 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = (&v98 - v21);
  v23 = __chkstk_darwin(v20);
  v25 = &v98 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = (&v98 - v27);
  __chkstk_darwin(v26);
  v30 = &v98 - v29;
  v31 = a1[3];
  v135 = a1;
  sub_1000035D0(a1, v31);
  sub_10098CAA4();
  v127 = v12;
  v32 = v134;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v32)
  {
    v99 = v28;
    v101 = v25;
    v100 = v19;
    v98 = v22;
    v33 = v129;
    v34 = v130;
    v134 = 0;
    v35 = v131;
    v36 = v132;
    v102 = v30;
    v37 = v127;
    v38 = v128;
    v39 = KeyedDecodingContainer.allKeys.getter();
    v40 = (2 * *(v39 + 16)) | 1;
    v139 = v39;
    v140 = v39 + 32;
    v141 = 0;
    v142 = v40;
    v41 = sub_1002E27E0();
    if (v41 == 8 || v141 != v142 >> 1)
    {
      v46 = type metadata accessor for DecodingError();
      swift_allocError();
      v48 = v47;
      sub_1000BC4D4(&qword_10169C868, &qword_101398420);
      *v48 = v126;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v46 - 8) + 104))(v48, enum case for DecodingError.typeMismatch(_:), v46);
      swift_willThrow();
      (*(v133 + 8))(v37, v38);
LABEL_10:
      swift_unknownObjectRelease();
      return sub_100007BAC(v135);
    }

    if (v41 <= 3u)
    {
      v42 = v134;
      if (v41 <= 1u)
      {
        v43 = v133;
        if (!v41)
        {
          LOBYTE(v136) = 0;
          sub_10098CD44();
          v44 = v121;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v42)
          {
            (*(v105 + 8))(v44, v106);
            (*(v43 + 8))(v37, v38);
            swift_unknownObjectRelease();
            v45 = v102;
            swift_storeEnumTagMultiPayload();
LABEL_36:
            v51 = v125;
            goto LABEL_37;
          }

          goto LABEL_24;
        }

        LOBYTE(v136) = 1;
        sub_10098CCF0();
        v63 = v122;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (v42)
        {
LABEL_24:
          (*(v43 + 8))(v37, v38);
          goto LABEL_10;
        }

        v64 = v108;
        v77 = KeyedDecodingContainer.decode(_:forKey:)();
        v79 = v78;
        (*(v107 + 8))(v63, v64);
        (*(v43 + 8))(v37, v38);
        swift_unknownObjectRelease();
        v80 = v99;
        *v99 = v77;
        v80[1] = v79;
        goto LABEL_34;
      }

      v55 = v133;
      if (v41 == 2)
      {
        LOBYTE(v136) = 2;
        sub_10098CC9C();
        v56 = v33;
        v57 = v38;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v51 = v125;
        if (!v42)
        {
          type metadata accessor for UUID();
          sub_10098CDEC(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v58 = v101;
          v59 = v110;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v109 + 8))(v56, v59);
          (*(v55 + 8))(v37, v57);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v73 = v58;
          goto LABEL_32;
        }

LABEL_33:
        (*(v55 + 8))(v37, v57);
        goto LABEL_10;
      }

      LOBYTE(v136) = 3;
      sub_10098CC48();
      v57 = v38;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v42)
      {
        goto LABEL_33;
      }

      LOBYTE(v136) = 0;
      v67 = v113;
      v84 = KeyedDecodingContainer.decode(_:forKey:)();
      LOBYTE(v136) = 1;
      v90 = KeyedDecodingContainer.decode(_:forKey:)();
      v92 = v91;
      (*(v111 + 8))(v34, v67);
      (*(v55 + 8))(v37, v57);
      swift_unknownObjectRelease();
      v93 = v98;
      *v98 = v84;
      v93[1] = v90;
      v93[2] = v92;
      swift_storeEnumTagMultiPayload();
      v97 = v93;
LABEL_35:
      v45 = v102;
      sub_100312F64(v97, v102);
      goto LABEL_36;
    }

    v50 = v38;
    if (v41 > 5u)
    {
      v51 = v125;
      if (v41 == 6)
      {
        LOBYTE(v136) = 6;
        sub_10098CB4C();
        v60 = v134;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v60)
        {
          LOBYTE(v136) = 0;
          v61 = v118;
          v62 = KeyedDecodingContainer.decode(_:forKey:)();
          v75 = v74;
          v76 = v62;
          v143 = 1;
          sub_100157E1C();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          LODWORD(v130) = v136;
          v131 = v137;
          v85 = v138;
          v143 = 2;
          v134 = KeyedDecodingContainer.decode(_:forKey:)();
          v95 = v94;
          (*(v120 + 8))(v36, v61);
          (*(v133 + 8))(v37, v38);
          swift_unknownObjectRelease();
          v96 = v103;
          *v103 = v76;
          v96[1] = v75;
          *(v96 + 16) = v130;
          v96[3] = v131;
          v96[4] = v85;
          v96[5] = v134;
          v96[6] = v95;
          swift_storeEnumTagMultiPayload();
          v97 = v96;
          goto LABEL_35;
        }
      }

      else
      {
        LOBYTE(v136) = 7;
        sub_10098CAF8();
        v68 = v124;
        v69 = v134;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v69)
        {
          (*(v116 + 8))(v68, v117);
          (*(v133 + 8))(v37, v50);
          swift_unknownObjectRelease();
          v45 = v102;
          swift_storeEnumTagMultiPayload();
LABEL_37:
          sub_100312F64(v45, v51);
          return sub_100007BAC(v135);
        }
      }
    }

    else
    {
      v51 = v125;
      if (v41 == 4)
      {
        LOBYTE(v136) = 4;
        sub_10098CBF4();
        v52 = v123;
        v53 = v134;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v53)
        {
          sub_100157E1C();
          v54 = v114;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v112 + 8))(v52, v54);
          (*(v133 + 8))(v37, v50);
          swift_unknownObjectRelease();
          v70 = v137;
          v71 = v138;
          v72 = v100;
          *v100 = v136;
          *(v72 + 1) = v70;
          *(v72 + 2) = v71;
          swift_storeEnumTagMultiPayload();
          v73 = v72;
LABEL_32:
          v45 = v102;
          sub_100312F64(v73, v102);
          goto LABEL_37;
        }
      }

      else
      {
        LOBYTE(v136) = 5;
        sub_10098CBA0();
        v65 = v134;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v65)
        {
          v143 = 0;
          sub_100157E1C();
          v66 = v119;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          LODWORD(v132) = v136;
          v81 = v138;
          v134 = v137;
          v143 = 1;
          v82 = KeyedDecodingContainer.decode(_:forKey:)();
          v83 = (v133 + 8);
          v86 = v82;
          v87 = v35;
          v89 = v88;
          (*(v115 + 8))(v87, v66);
          (*v83)(v37, v38);
          swift_unknownObjectRelease();
          v80 = v104;
          *v104 = v132;
          v80[1] = v134;
          v80[2] = v81;
          v80[3] = v86;
          v80[4] = v89;
LABEL_34:
          swift_storeEnumTagMultiPayload();
          v97 = v80;
          goto LABEL_35;
        }
      }
    }

    (*(v133 + 8))(v37, v50);
    goto LABEL_10;
  }

  return sub_100007BAC(v135);
}

uint64_t sub_10098B62C(uint64_t a1)
{
  v2 = sub_10098CCF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10098B668(uint64_t a1)
{
  v2 = sub_10098CCF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10098B6A4()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0x4449796C696D6166;
  if (v1 != 6)
  {
    v3 = 6448503;
  }

  if (v1 == 4)
  {
    v4 = 0xD000000000000014;
  }

  else
  {
    v4 = 7562345;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x706F724472656570;
  if (v1 != 2)
  {
    v5 = 0xD000000000000013;
  }

  if (*v0)
  {
    v2 = 0x4449656C707061;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10098B794@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10098D75C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10098B7BC(uint64_t a1)
{
  v2 = sub_10098CAA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10098B7F8(uint64_t a1)
{
  v2 = sub_10098CAA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10098B834()
{
  if (*v0)
  {
    return 0x696669746E656469;
  }

  else
  {
    return 0x6E69616D6F64;
  }
}

uint64_t sub_10098B870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_10098B950(uint64_t a1)
{
  v2 = sub_10098CC48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10098B98C(uint64_t a1)
{
  v2 = sub_10098CC48();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10098B9C8()
{
  v1 = 0x74616E6974736564;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x44495344746C61;
  }
}

uint64_t sub_10098BA30@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10098DA04(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10098BA58(uint64_t a1)
{
  v2 = sub_10098CB4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10098BA94(uint64_t a1)
{
  v2 = sub_10098CB4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10098BAD0()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x74616E6974736564;
  }
}

uint64_t sub_10098BB18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001013477D0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_10098BC00(uint64_t a1)
{
  v2 = sub_10098CBA0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10098BC3C(uint64_t a1)
{
  v2 = sub_10098CBA0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10098BC78(uint64_t a1)
{
  v2 = sub_10098CBF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10098BCB4(uint64_t a1)
{
  v2 = sub_10098CBF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10098BCF0(uint64_t a1)
{
  v2 = sub_10098CD44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10098BD2C(uint64_t a1)
{
  v2 = sub_10098CD44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10098BD68(uint64_t a1)
{
  v2 = sub_10098CC9C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10098BDA4(uint64_t a1)
{
  v2 = sub_10098CC9C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10098BDE0(uint64_t a1)
{
  v2 = sub_10098CAF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10098BE1C(uint64_t a1)
{
  v2 = sub_10098CAF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10098BE88()
{
  Hasher.init(_seed:)();
  sub_10098A0BC(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10098BECC(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10098A0BC(v2);
  return Hasher._finalize()();
}

uint64_t type metadata accessor for PeerCommunicationIdentifier(uint64_t a1)
{
  result = qword_1016AFAD8;
  if (!qword_1016AFAD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10098BF5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerCommunicationIdentifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10098BFC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v85 = *(v4 - 8);
  v86 = v4;
  __chkstk_darwin(v4);
  v84 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PeerCommunicationIdentifier(0);
  v7 = __chkstk_darwin(v6);
  v9 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = (&v83 - v11);
  v13 = __chkstk_darwin(v10);
  v15 = &v83 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = (&v83 - v17);
  v19 = __chkstk_darwin(v16);
  v21 = &v83 - v20;
  __chkstk_darwin(v19);
  v23 = (&v83 - v22);
  v24 = sub_1000BC4D4(&qword_1016AFA60, &unk_1013CB198);
  v25 = __chkstk_darwin(v24 - 8);
  v27 = (&v83 + *(v25 + 56) - v26);
  v28 = a1;
  v29 = &v83 - v26;
  sub_10098BF5C(v28, &v83 - v26);
  sub_10098BF5C(a2, v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          goto LABEL_84;
        }
      }

      else if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_84;
      }

      goto LABEL_56;
    }

    if (EnumCaseMultiPayload == 4)
    {
      sub_10098BF5C(v29, v12);
      v38 = v12[1];
      v37 = v12[2];
      v40 = v12[3];
      v39 = v12[4];
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v41 = v27[2];
        v42 = v27[4];
        if (*v12 != *v27)
        {

          goto LABEL_69;
        }

        v43 = v27[1];
        v44 = v27[3];
        if (v38 == v43 && v37 == v41)
        {
        }

        else
        {
          v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v46 & 1) == 0)
          {
            goto LABEL_69;
          }
        }

        if (v40 != v44 || v39 != v42)
        {
          v79 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v79 & 1) == 0)
          {
            goto LABEL_70;
          }

          goto LABEL_84;
        }

        goto LABEL_83;
      }

      goto LABEL_53;
    }

    v55 = v29;
    sub_10098BF5C(v29, v9);
    v56 = *v9;
    v57 = *(v9 + 1);
    v58 = v9[16];
    v60 = *(v9 + 3);
    v59 = *(v9 + 4);
    v61 = *(v9 + 6);
    v86 = *(v9 + 5);
    if (swift_getEnumCaseMultiPayload() != 5)
    {

      v29 = v55;
      goto LABEL_56;
    }

    v62 = *v27;
    v63 = v27[1];
    v64 = *(v27 + 16);
    v65 = v27[4];
    v84 = v27[3];
    v85 = v65;
    v66 = v27[5];
    v67 = v27[6];
    v83 = v66;
    if (v56 == v62 && v57 == v63)
    {
    }

    else
    {
      v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v69 & 1) == 0)
      {

        v70 = v55;
LABEL_71:
        sub_10098C7FC(v70);
        goto LABEL_72;
      }
    }

    v35 = v58 == v64;
    v75 = v55;
    if (!v35)
    {

LABEL_74:

LABEL_75:
      v70 = v75;
      goto LABEL_71;
    }

    if (v60 == v84 && v59 == v85)
    {
    }

    else
    {
      v77 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v77 & 1) == 0)
      {
        goto LABEL_74;
      }
    }

    if (v86 == v83 && v61 == v67)
    {

      v80 = v55;
      goto LABEL_85;
    }

    v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v82)
    {
      v80 = v75;
      goto LABEL_85;
    }

    goto LABEL_75;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_10098BF5C(v29, v18);
      v48 = v18[1];
      v47 = v18[2];
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        if (*v18 == *v27)
        {
          if (v48 != v27[1] || v47 != v27[2])
          {
            goto LABEL_48;
          }

          goto LABEL_83;
        }

        goto LABEL_69;
      }
    }

    else
    {
      sub_10098BF5C(v29, v15);
      v72 = *(v15 + 1);
      v71 = *(v15 + 2);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        if (*v15 == *v27)
        {
          if (v72 != v27[1] || v71 != v27[2])
          {
LABEL_48:
            v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v74 & 1) == 0)
            {
              goto LABEL_70;
            }

LABEL_84:
            v80 = v29;
LABEL_85:
            sub_10098C7FC(v80);
            v53 = 1;
            return v53 & 1;
          }

LABEL_83:

          goto LABEL_84;
        }

LABEL_69:

LABEL_70:
        v70 = v29;
        goto LABEL_71;
      }
    }

LABEL_53:

LABEL_56:
    sub_10098C794(v29);
LABEL_72:
    v53 = 0;
    return v53 & 1;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_10098BF5C(v29, v23);
    v32 = *v23;
    v31 = v23[1];
    if (!swift_getEnumCaseMultiPayload())
    {
      v33 = *v27;
      v34 = v27[1];
      v35 = v32 == v33 && v31 == v34;
      if (!v35)
      {
        v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v36)
        {
          goto LABEL_84;
        }

        goto LABEL_70;
      }

      goto LABEL_83;
    }

    goto LABEL_53;
  }

  sub_10098BF5C(v29, v21);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v85 + 8))(v21, v86);
    goto LABEL_56;
  }

  v51 = v84;
  v50 = v85;
  v52 = v86;
  (*(v85 + 32))(v84, v27, v86);
  v53 = static UUID.== infix(_:_:)();
  v54 = *(v50 + 8);
  v54(v51, v52);
  v54(v21, v52);
  sub_10098C7FC(v29);
  return v53 & 1;
}

uint64_t sub_10098C794(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016AFA60, &unk_1013CB198);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10098C7FC(uint64_t a1)
{
  v2 = type metadata accessor for PeerCommunicationIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10098C868(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_10098C940(319, &qword_1016AFAE8, &type metadata for Int, "domain identifier ");
    if (v2 <= 0x3F)
    {
      sub_10098C940(319, &qword_1016AFAF0, &type metadata for MessagingDestination, "destination correlationIdentifier ");
      if (v3 <= 0x3F)
      {
        sub_10098C99C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_10098C940(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_10098C99C()
{
  if (!qword_1016AFAF8)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1016AFAF8);
    }
  }
}

unint64_t sub_10098CA50()
{
  result = qword_1016AFB30;
  if (!qword_1016AFB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFB30);
  }

  return result;
}

unint64_t sub_10098CAA4()
{
  result = qword_1016AFB80;
  if (!qword_1016AFB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFB80);
  }

  return result;
}

unint64_t sub_10098CAF8()
{
  result = qword_1016AFB88;
  if (!qword_1016AFB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFB88);
  }

  return result;
}

unint64_t sub_10098CB4C()
{
  result = qword_1016AFB90;
  if (!qword_1016AFB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFB90);
  }

  return result;
}

unint64_t sub_10098CBA0()
{
  result = qword_1016AFB98;
  if (!qword_1016AFB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFB98);
  }

  return result;
}

unint64_t sub_10098CBF4()
{
  result = qword_1016AFBA0;
  if (!qword_1016AFBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFBA0);
  }

  return result;
}

unint64_t sub_10098CC48()
{
  result = qword_1016AFBA8;
  if (!qword_1016AFBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFBA8);
  }

  return result;
}

unint64_t sub_10098CC9C()
{
  result = qword_1016AFBB0;
  if (!qword_1016AFBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFBB0);
  }

  return result;
}

unint64_t sub_10098CCF0()
{
  result = qword_1016AFBB8;
  if (!qword_1016AFBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFBB8);
  }

  return result;
}

unint64_t sub_10098CD44()
{
  result = qword_1016AFBC0;
  if (!qword_1016AFBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFBC0);
  }

  return result;
}

unint64_t sub_10098CD98()
{
  result = qword_1016AFC10;
  if (!qword_1016AFC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFC10);
  }

  return result;
}

uint64_t sub_10098CDEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10098CEC8()
{
  result = qword_1016AFC18;
  if (!qword_1016AFC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFC18);
  }

  return result;
}

unint64_t sub_10098CF20()
{
  result = qword_1016AFC20;
  if (!qword_1016AFC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFC20);
  }

  return result;
}

unint64_t sub_10098CF78()
{
  result = qword_1016AFC28;
  if (!qword_1016AFC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFC28);
  }

  return result;
}

unint64_t sub_10098CFD0()
{
  result = qword_1016AFC30;
  if (!qword_1016AFC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFC30);
  }

  return result;
}

unint64_t sub_10098D028()
{
  result = qword_1016AFC38;
  if (!qword_1016AFC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFC38);
  }

  return result;
}

unint64_t sub_10098D080()
{
  result = qword_1016AFC40;
  if (!qword_1016AFC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFC40);
  }

  return result;
}

unint64_t sub_10098D0D8()
{
  result = qword_1016AFC48;
  if (!qword_1016AFC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFC48);
  }

  return result;
}

unint64_t sub_10098D130()
{
  result = qword_1016AFC50;
  if (!qword_1016AFC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFC50);
  }

  return result;
}

unint64_t sub_10098D188()
{
  result = qword_1016AFC58;
  if (!qword_1016AFC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFC58);
  }

  return result;
}

unint64_t sub_10098D1E0()
{
  result = qword_1016AFC60;
  if (!qword_1016AFC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFC60);
  }

  return result;
}

unint64_t sub_10098D238()
{
  result = qword_1016AFC68;
  if (!qword_1016AFC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFC68);
  }

  return result;
}

unint64_t sub_10098D290()
{
  result = qword_1016AFC70;
  if (!qword_1016AFC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFC70);
  }

  return result;
}

unint64_t sub_10098D2E8()
{
  result = qword_1016AFC78;
  if (!qword_1016AFC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFC78);
  }

  return result;
}

unint64_t sub_10098D340()
{
  result = qword_1016AFC80;
  if (!qword_1016AFC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFC80);
  }

  return result;
}

unint64_t sub_10098D398()
{
  result = qword_1016AFC88;
  if (!qword_1016AFC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFC88);
  }

  return result;
}

unint64_t sub_10098D3F0()
{
  result = qword_1016AFC90;
  if (!qword_1016AFC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFC90);
  }

  return result;
}

unint64_t sub_10098D448()
{
  result = qword_1016AFC98;
  if (!qword_1016AFC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFC98);
  }

  return result;
}

unint64_t sub_10098D4A0()
{
  result = qword_1016AFCA0;
  if (!qword_1016AFCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFCA0);
  }

  return result;
}

unint64_t sub_10098D4F8()
{
  result = qword_1016AFCA8;
  if (!qword_1016AFCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFCA8);
  }

  return result;
}

unint64_t sub_10098D550()
{
  result = qword_1016AFCB0;
  if (!qword_1016AFCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFCB0);
  }

  return result;
}

unint64_t sub_10098D5A8()
{
  result = qword_1016AFCB8;
  if (!qword_1016AFCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFCB8);
  }

  return result;
}

unint64_t sub_10098D600()
{
  result = qword_1016AFCC0;
  if (!qword_1016AFCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFCC0);
  }

  return result;
}

unint64_t sub_10098D658()
{
  result = qword_1016AFCC8;
  if (!qword_1016AFCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFCC8);
  }

  return result;
}

unint64_t sub_10098D6B0()
{
  result = qword_1016AFCD0;
  if (!qword_1016AFCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFCD0);
  }

  return result;
}

unint64_t sub_10098D708()
{
  result = qword_1016AFCD8;
  if (!qword_1016AFCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFCD8);
  }

  return result;
}

uint64_t sub_10098D75C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656C707061 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x706F724472656570 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001013669D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001013669F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 7562345 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4449796C696D6166 && a2 == 0xE900000000000053 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 6448503 && a2 == 0xE300000000000000)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_10098DA04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44495344746C61 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001013477D0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_10098DB2C(uint64_t a1)
{
  *(a1 + 8) = sub_10098DB5C();
  result = sub_10098DBB0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10098DB5C()
{
  result = qword_1016AFCE0;
  if (!qword_1016AFCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFCE0);
  }

  return result;
}

unint64_t sub_10098DBB0()
{
  result = qword_1016AFCE8;
  if (!qword_1016AFCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFCE8);
  }

  return result;
}

__n128 sub_10098DC04@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10098DC50(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v6[4];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_10098DC50@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v45, v46);
  v5 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    sub_100007BAC(v45);
    return sub_100007BAC(a1);
  }

  v7 = v5;
  v8 = v6;
  sub_10015049C(v45, v46);
  v47 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v10 = v9;
  sub_10015049C(v45, v46);
  v42 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v43 = v11;
  sub_10015049C(v45, v46);
  v40 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v41 = v12;
  sub_10015049C(v45, v46);
  result = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v15 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    v16 = v47;
    if (!v15)
    {
      v17 = BYTE6(v8);
LABEL_13:
      v18 = v42;
      v19 = v43;
      goto LABEL_14;
    }

LABEL_11:
    if (__OFSUB__(HIDWORD(v7), v7))
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v17 = HIDWORD(v7) - v7;
    goto LABEL_13;
  }

  v16 = v47;
  v18 = v42;
  v19 = v43;
  if (v15 != 2)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v21 = *(v7 + 16);
  v20 = *(v7 + 24);
  v22 = __OFSUB__(v20, v21);
  v17 = v20 - v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_11;
  }

LABEL_14:
  if (v17 != 114)
  {
    goto LABEL_60;
  }

  if ((v10 >> 62) <= 1)
  {
    if (v10 >> 62 == 1)
    {
      LODWORD(v23) = HIDWORD(v16) - v16;
      if (!__OFSUB__(HIDWORD(v16), v16))
      {
        v23 = v23;
        goto LABEL_21;
      }

      __break(1u);
      goto LABEL_54;
    }

LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v10 >> 62 != 2)
  {
    goto LABEL_59;
  }

  v25 = *(v16 + 16);
  v24 = *(v16 + 24);
  v22 = __OFSUB__(v24, v25);
  v23 = v24 - v25;
  if (v22)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

LABEL_21:
  if (v23 != 1040)
  {
    goto LABEL_59;
  }

  v26 = v19 >> 62;
  if ((v19 >> 62) <= 1)
  {
    if (!v26)
    {
      v27 = BYTE6(v19);
      goto LABEL_31;
    }

LABEL_29:
    LODWORD(v27) = HIDWORD(v18) - v18;
    if (!__OFSUB__(HIDWORD(v18), v18))
    {
      v27 = v27;
      goto LABEL_31;
    }

LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v26 != 2)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v29 = *(v18 + 16);
  v28 = *(v18 + 24);
  v22 = __OFSUB__(v28, v29);
  v27 = v28 - v29;
  if (v22)
  {
    __break(1u);
    goto LABEL_29;
  }

LABEL_31:
  if (v27 != 32)
  {
    goto LABEL_61;
  }

  v30 = v14 >> 62;
  if ((v14 >> 62) <= 1)
  {
    if (!v30)
    {
      v31 = BYTE6(v14);
      goto LABEL_41;
    }

LABEL_39:
    LODWORD(v31) = HIDWORD(result) - result;
    if (!__OFSUB__(HIDWORD(result), result))
    {
      v31 = v31;
      goto LABEL_41;
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v30 != 2)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v33 = *(result + 16);
  v32 = *(result + 24);
  v22 = __OFSUB__(v32, v33);
  v31 = v32 - v33;
  if (v22)
  {
    __break(1u);
    goto LABEL_39;
  }

LABEL_41:
  if (v31 != 100)
  {
    goto LABEL_62;
  }

  v34 = v41 >> 62;
  if ((v41 >> 62) <= 1)
  {
    if (!v34)
    {
      v35 = BYTE6(v41);
      goto LABEL_51;
    }

LABEL_49:
    LODWORD(v35) = HIDWORD(v40) - v40;
    if (!__OFSUB__(HIDWORD(v40), v40))
    {
      v35 = v35;
      goto LABEL_51;
    }

    goto LABEL_58;
  }

  if (v34 != 2)
  {
    goto LABEL_63;
  }

  v37 = *(v40 + 16);
  v36 = *(v40 + 24);
  v22 = __OFSUB__(v36, v37);
  v35 = v36 - v37;
  if (v22)
  {
    __break(1u);
    goto LABEL_49;
  }

LABEL_51:
  if (v35 == 60)
  {
    v38 = v16;
    v39 = v18;
    v47 = result;
    v44 = v14;
    sub_100007BAC(v45);
    result = sub_100007BAC(a1);
    *a2 = v7;
    a2[1] = v8;
    a2[2] = v38;
    a2[3] = v10;
    a2[4] = v39;
    a2[5] = v19;
    a2[6] = v40;
    a2[7] = v41;
    a2[8] = v47;
    a2[9] = v44;
    return result;
  }

LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_10098E010()
{
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  return v5;
}

uint64_t sub_10098E14C(void *a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016AFD18, &qword_1013CC268);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9[-v6];
  sub_1000035D0(a1, a1[3]);
  sub_10098F0C8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v9[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v9[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10098E2EC()
{
  v1 = 0x726F6E696DLL;
  if (*v0 != 1)
  {
    v1 = 0x6E6F697369766572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F6A616DLL;
  }
}

uint64_t sub_10098E340@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10098EDE8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10098E368(uint64_t a1)
{
  v2 = sub_10098F0C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10098E3A4(uint64_t a1)
{
  v2 = sub_10098F0C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10098E3E0@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10098EEF8(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 2) = BYTE2(result);
    *(a1 + 3) = BYTE3(result);
  }

  return result;
}

uint64_t sub_10098E438(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 < v3)
  {
    return 1;
  }

  v5 = *(a1 + 2);
  v6 = *(a2 + 2);
  v8 = v6 >= v5 && *(a1 + 3) < *(a2 + 3);
  v9 = v5 < v6 || v8;
  if (v3 < v2)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

BOOL sub_10098E48C(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v3 < v2)
  {
    return 0;
  }

  if (v2 < v3)
  {
    return 1;
  }

  v5 = *(a1 + 2);
  v6 = *(a2 + 2);
  v8 = v5 < v6 || *(a2 + 3) >= *(a1 + 3);
  return v6 >= v5 && v8;
}

BOOL sub_10098E4E4(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 < v3)
  {
    return 0;
  }

  if (v3 < v2)
  {
    return 1;
  }

  v5 = *(a1 + 2);
  v6 = *(a2 + 2);
  v8 = v6 < v5 || *(a1 + 3) >= *(a2 + 3);
  return v5 >= v6 && v8;
}

uint64_t sub_10098E53C(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v3 < v2)
  {
    return 1;
  }

  v5 = *(a1 + 2);
  v6 = *(a2 + 2);
  v8 = v5 >= v6 && *(a2 + 3) < *(a1 + 3);
  v9 = v6 < v5 || v8;
  if (v2 < v3)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

Swift::Int sub_10098E598()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void sub_10098E608()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
}

Swift::Int sub_10098E654(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

uint64_t sub_10098E6F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10098E9DC(*a1, a1[1]);
  if ((result & 0x100000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = result;
    *(a2 + 2) = BYTE2(result);
    *(a2 + 3) = BYTE3(result);
  }

  return result;
}

unint64_t sub_10098E744()
{
  result = qword_1016AFCF0;
  if (!qword_1016AFCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFCF0);
  }

  return result;
}

unint64_t sub_10098E798()
{
  result = qword_1016AFCF8;
  if (!qword_1016AFCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFCF8);
  }

  return result;
}

unint64_t sub_10098E7F0()
{
  result = qword_1016AFD00;
  if (!qword_1016AFD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFD00);
  }

  return result;
}

unint64_t sub_10098E844(unint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_11;
    }

    v4 = *(result + 16);
    v3 = *(result + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 == 4)
      {
        goto LABEL_8;
      }

LABEL_11:
      v21 = 0;
      v20 = 1;
      return v21 | (v20 << 32);
    }

    __break(1u);
  }

  else
  {
    if (!v2)
    {
      if (BYTE6(a2) != 4)
      {
        goto LABEL_11;
      }

LABEL_8:
      v7 = Data.subdata(in:)();
      v9 = v8;
      v10 = Data.subdata(in:)();
      v12 = v11;
      v13 = Data.subdata(in:)();
      v15 = v14;
      v16 = Data._Representation.subscript.getter();
      v17 = Data._Representation.subscript.getter() | (v16 << 8);
      v18 = Data._Representation.subscript.getter();
      v19 = Data._Representation.subscript.getter();
      sub_100016590(v13, v15);
      sub_100016590(v10, v12);
      sub_100016590(v7, v9);
      v20 = 0;
      v21 = v17 & 0xFFFFFFFF0000FFFFLL | (v18 << 16) & 0xFFFFFFFF00FFFFFFLL | (v19 << 24);
      return v21 | (v20 << 32);
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 4)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10098E9DC(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v33 = a2;
  sub_1000DF96C();
  v2 = StringProtocol.components<A>(separatedBy:)();

  v4 = v2[2];
  if ((v4 & 0x7FFFFFFFFFFFFFFELL) != 2 || ((v5 = v2[4], v6 = v2[5], v7 = HIBYTE(v6) & 0xF, v8 = v5 & 0xFFFFFFFFFFFFLL, (v6 & 0x2000000000000000) != 0) ? (v9 = HIBYTE(v6) & 0xF) : (v9 = v5 & 0xFFFFFFFFFFFFLL), !v9))
  {
LABEL_73:

    goto LABEL_74;
  }

  if ((v6 & 0x1000000000000000) != 0)
  {

    v11 = sub_1010DD968(v5, v6, 10);

    if ((v11 & 0x10000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_73;
  }

  if ((v6 & 0x2000000000000000) != 0)
  {
    v32 = v2[4];
    v33 = v6 & 0xFFFFFFFFFFFFFFLL;
    if (v5 == 43)
    {
      if (v7)
      {
        if (--v7)
        {
          LOWORD(v11) = 0;
          v18 = &v32 + 1;
          while (1)
          {
            v19 = *v18 - 48;
            if (v19 > 9)
            {
              break;
            }

            if (((10 * v11) & 0xF0000) != 0)
            {
              break;
            }

            v11 = (10 * v11) + v19;
            if ((v11 & 0x10000) != 0)
            {
              break;
            }

            ++v18;
            if (!--v7)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }
    }

    else
    {
      if (v5 != 45)
      {
        if (v7)
        {
          LOWORD(v11) = 0;
          v21 = &v32;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            if (((10 * v11) & 0xF0000) != 0)
            {
              break;
            }

            v11 = (10 * v11) + v22;
            if ((v11 & 0x10000) != 0)
            {
              break;
            }

            v21 = (v21 + 1);
            if (!--v7)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }

      if (v7)
      {
        if (--v7)
        {
          LOWORD(v11) = 0;
          v14 = &v32 + 1;
          while (1)
          {
            v15 = *v14 - 48;
            if (v15 > 9)
            {
              break;
            }

            if (((10 * v11) & 0xF0000) != 0)
            {
              break;
            }

            v11 = (10 * v11) - v15;
            if ((v11 & 0xFFFF0000) != 0)
            {
              break;
            }

            ++v14;
            if (!--v7)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }

LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
    }

    __break(1u);
LABEL_82:
    __break(1u);
    return result;
  }

  if ((v5 & 0x1000000000000000) == 0)
  {
    goto LABEL_77;
  }

  for (result = (v6 & 0xFFFFFFFFFFFFFFFLL) + 32; ; result = _StringObject.sharedUTF8.getter())
  {
    v10 = *result;
    if (v10 == 43)
    {
      if (v8 < 1)
      {
        goto LABEL_80;
      }

      v7 = v8 - 1;
      if (v8 != 1)
      {
        LOWORD(v11) = 0;
        if (!result)
        {
          goto LABEL_54;
        }

        v16 = (result + 1);
        while (1)
        {
          v17 = *v16 - 48;
          if (v17 > 9)
          {
            break;
          }

          if (((10 * v11) & 0xF0000) != 0)
          {
            break;
          }

          v11 = (10 * v11) + v17;
          if ((v11 & 0x10000) != 0)
          {
            break;
          }

          ++v16;
          if (!--v7)
          {
            goto LABEL_63;
          }
        }
      }
    }

    else if (v10 == 45)
    {
      if (v8 < 1)
      {
        __break(1u);
        goto LABEL_79;
      }

      v7 = v8 - 1;
      if (v8 != 1)
      {
        LOWORD(v11) = 0;
        if (!result)
        {
          goto LABEL_54;
        }

        v12 = (result + 1);
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          if (((10 * v11) & 0xF0000) != 0)
          {
            break;
          }

          v11 = (10 * v11) - v13;
          if ((v11 & 0xFFFF0000) != 0)
          {
            break;
          }

          ++v12;
          if (!--v7)
          {
            goto LABEL_63;
          }
        }
      }
    }

    else if (v8)
    {
      LOWORD(v11) = 0;
      if (!result)
      {
LABEL_54:
        LOBYTE(v7) = 0;
        goto LABEL_63;
      }

      while (1)
      {
        v20 = *result - 48;
        if (v20 > 9)
        {
          break;
        }

        if (((10 * v11) & 0xF0000) != 0)
        {
          break;
        }

        v11 = (10 * v11) + v20;
        if ((v11 & 0x10000) != 0)
        {
          break;
        }

        ++result;
        if (!--v8)
        {
          goto LABEL_54;
        }
      }
    }

LABEL_62:
    LOWORD(v11) = 0;
    LOBYTE(v7) = 1;
LABEL_63:
    if (v7)
    {
      goto LABEL_73;
    }

LABEL_64:
    if (v2[2] >= 2uLL)
    {
      break;
    }

    __break(1u);
LABEL_77:
    ;
  }

  v23 = v2[6];
  v24 = v2[7];

  result = sub_1010DADF4(v23, v24);
  if ((result & 0x100) != 0)
  {
    goto LABEL_73;
  }

  v25 = result;
  if (v4 != 3)
  {

    v29 = 0;
    goto LABEL_71;
  }

  if (v2[2] < 3uLL)
  {
    goto LABEL_82;
  }

  v26 = v2[8];
  v27 = v2[9];

  v28 = sub_1010DADF4(v26, v27);
  if ((v28 & 0x100) == 0)
  {
    v29 = v28;
LABEL_71:
    v30 = 0;
    v31 = v11 | (v25 << 16) & 0xFFFFFFFF00FFFFFFLL | (v29 << 24);
    goto LABEL_75;
  }

LABEL_74:
  v31 = 0;
  v30 = 1;
LABEL_75:
  LOBYTE(v32) = v30;
  return v31 | (v30 << 32);
}

uint64_t sub_10098EDE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F6A616DLL && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F6E696DLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697369766572 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_10098EEF8(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016AFD08, &qword_1013CC260);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  sub_1000035D0(a1, a1[3]);
  sub_10098F0C8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100007BAC(a1);
  }

  v14 = 0;
  v7 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = 1;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = 2;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_100007BAC(a1);
  return (v8 << 16) | (v9 << 24) | v7;
}

unint64_t sub_10098F0C8()
{
  result = qword_1016AFD10;
  if (!qword_1016AFD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFD10);
  }

  return result;
}

unint64_t sub_10098F130()
{
  result = qword_1016AFD20;
  if (!qword_1016AFD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFD20);
  }

  return result;
}

unint64_t sub_10098F188()
{
  result = qword_1016AFD28;
  if (!qword_1016AFD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFD28);
  }

  return result;
}

unint64_t sub_10098F1E0()
{
  result = qword_1016AFD30;
  if (!qword_1016AFD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFD30);
  }

  return result;
}

uint64_t sub_10098F23C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10098F25C, v1, 0);
}

uint64_t sub_10098F25C(uint64_t a1)
{
  result = isUserAgent.getter();
  if ((result & 1) == 0)
  {
    v3 = *(*(v1 + 24) + 128);
    if (!v3)
    {
      __break(1u);
      return result;
    }

    sub_1009C0618(*(v1 + 16), v3);
  }

  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  sub_1000BC4D4(&qword_1016AFEB8, &qword_1013CC5A0);
  v6 = *(type metadata accessor for KeyGenerationBeaconInfo(0) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_101385D80;
  sub_100991F98(v4, v8 + v7);
  type metadata accessor for Transaction();
  v9 = swift_task_alloc();
  *(v9 + 16) = v5;
  *(v9 + 24) = v8;
  static Transaction.named<A>(_:with:)();

  v10 = *(v1 + 8);

  return v10();
}

uint64_t sub_10098F404(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_10098F428, v2, 0);
}

uint64_t sub_10098F428(uint64_t a1)
{
  result = isUserAgent.getter();
  if (result)
  {
    if (qword_101694AE0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_1016AFD38);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Unexpected isUserAgent is true on non-macOS platform!", v6, 2u);
    }

    sub_100991400();
    swift_allocError();
    *v7 = 3;
    swift_willThrow();
  }

  else
  {
    v8 = *(v1[4] + 128);
    if (!v8)
    {
      __break(1u);
      return result;
    }

    sub_1009C0A2C(v1[3], v8, v1[2]);
  }

  v9 = v1[1];

  return v9();
}

uint64_t sub_10098F5B8(uint64_t a1)
{
  if (isUserAgent.getter())
  {
    if (qword_101694AE0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_1016AFD38);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Unexpected isUserAgent is true on non-macOS platform!", v5, 2u);
    }

    v6 = _swiftEmptyArrayStorage;
  }

  else
  {
    result = *(*(v1 + 16) + 128);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v6 = sub_1009BFDBC(result);
  }

  v8 = *(v1 + 8);

  return v8(v6);
}

uint64_t sub_10098F738()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016AFD38);
  v1 = sub_1000076D4(v0, qword_1016AFD38);
  if (qword_101694AE8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177B758);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10098F800(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_defaultActor_initialize();
  *(v2 + 112) = 0xD000000000000010;
  *(v2 + 120) = 0x80000001013CC3C0;
  *(v2 + 184) = 0;
  *(v2 + 192) = _swiftEmptyArrayStorage;
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  *&v15 = 0x7365547265646E75;
  *(&v15 + 1) = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (LOBYTE(v12[0]) == 1)
  {
    sub_1009921E4(a1, v2 + 144);
    result = isUserAgent.getter();
    if ((result & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    sub_10000B3A8(a1, &qword_1016AFEB0, &qword_1013CC568);

    *(v2 + 128) = 0;
    *(v2 + 136) = 0;
    return v3;
  }

  *(v2 + 176) = 0;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  result = isUserAgent.getter();
  if (result)
  {
    goto LABEL_9;
  }

LABEL_5:
  *(v2 + 128) = a2;
  if (a2)
  {
    sub_1009921E4(a1, v12);
    v7 = v13;
    if (v13)
    {
      v8 = v14;
      v9 = sub_1000035D0(v12, v13);
      *(&v16 + 1) = v7;
      v17 = *(v8 + 8);
      v10 = sub_1000280DC(&v15);
      (*(*(v7 - 8) + 16))(v10, v9, v7);
      swift_retain_n();
      sub_100007BAC(v12);
    }

    else
    {
      swift_retain_n();
      sub_10000B3A8(v12, &qword_1016AFEB0, &qword_1013CC568);
      v15 = 0u;
      v16 = 0u;
      v17 = 0;
    }

    type metadata accessor for BeaconKeyServiceBuilder(0);
    swift_allocObject();
    v11 = sub_1008659A8(a2, &v15);

    sub_10000B3A8(a1, &qword_1016AFEB0, &qword_1013CC568);
    *(v3 + 136) = v11;
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_10098FA5C()
{
  v1 = *v0;
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v2);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = __chkstk_darwin(v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v14 = v21 - v13;
  if (v0[23])
  {

    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  }

  else
  {
    v23 = 0x8000000101366A70;
    v24 = v12;
    v25 = v11;
    static DispatchQoS.background.getter();
    v22 = swift_allocObject();
    *(v22 + 16) = v1;
    v16 = swift_allocObject();
    *(v16 + 16) = v0;
    *(v16 + 24) = v1;
    type metadata accessor for XPCActivity();
    v17 = swift_allocObject();
    sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v17 + 40) = v18;
    swift_unknownObjectWeakInit();
    *(v17 + 88) = 0;
    v19 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v21[0] = "party.BeaconKeyService";
    v21[1] = v19;
    *(v17 + 96) = 0;
    *(v17 + 104) = 0;
    (*(v24 + 16))(v10, v14, v25);
    (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v3);
    v26 = _swiftEmptyArrayStorage;
    sub_100991F50(&qword_10169BB60, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);

    sub_1000BC4D4(&unk_101695580, &qword_101385D90);
    sub_1000BC51C();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    *(v17 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *(v17 + 24) = 0xD000000000000026;
    v20 = v22;
    *(v17 + 32) = v23;
    *(v17 + 48) = sub_100991A08;
    *(v17 + 56) = v20;
    *(v17 + 64) = sub_100991A4C;
    *(v17 + 72) = v16;

    sub_100997398();

    (*(v24 + 8))(v14, v25);
    v0[23] = v17;
  }
}

uint64_t sub_10098FEE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&qword_1016AFEA0, &qword_1013CC558);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v23 - v8;
  v10 = sub_1000BC4D4(&qword_1016AFEA8, &qword_1013CC560);
  __chkstk_darwin(v10);
  v13 = v23 - v12;
  result = *(a2 + 192);
  v15 = *(result + 16);
  if (v15)
  {
    v17 = *(v11 + 16);
    v16 = v11 + 16;
    v25 = v6;
    v26 = v17;
    v18 = v7;
    v19 = result + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v20 = *(v16 + 56);
    v23[2] = v3;
    v24 = v20;
    v21 = (v16 - 8);
    v22 = (v18 + 8);
    v23[1] = result;

    do
    {
      v26(v13, v19, v10);
      v27 = a3;

      AsyncStream.Continuation.yield(_:)();
      (*v21)(v13, v10);
      (*v22)(v9, v25);
      v19 += v24;
      --v15;
    }

    while (v15);
  }

  return result;
}

uint64_t sub_100990100(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016AFEA8, &qword_1013CC560);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - v6;
  v8 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a1, v4);
  v12 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a2;
  (*(v5 + 32))(&v13[v12], v7, v4);

  sub_10025EDD4(0, 0, v10, &unk_1013CC590, v13);
}

uint64_t sub_1009902EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = sub_1000BC4D4(&qword_1016AFEA8, &qword_1013CC560);
  v5[4] = v7;
  v5[5] = *(v7 - 8);
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_1009903BC, a4, 0);
}

uint64_t sub_1009903BC()
{
  v1 = v0[2];
  (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
  v2 = *(v1 + 192);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 192) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100A5E618(0, v2[2] + 1, 1, v2);
    *(v1 + 192) = v2;
  }

  v5 = v2[2];
  v4 = v2[3];
  if (v5 >= v4 >> 1)
  {
    v2 = sub_100A5E618((v4 > 1), v5 + 1, 1, v2);
  }

  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[4];
  v2[2] = v5 + 1;
  (*(v6 + 32))(v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5, v7, v8);
  *(v1 + 192) = v2;

  v9 = v0[1];

  return v9();
}

uint64_t sub_10099050C()
{
  sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
  static NSFileManager.removeDirectory(url:)();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100990614;

  return sub_100865F0C();
}

uint64_t sub_100990614()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10099070C()
{

  sub_10000B3A8(v0 + 144, &qword_1016AFEB0, &qword_1013CC568);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10099077C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1009907C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100990810(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for BeaconKeyService();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_1009908B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for BeaconKeyService();
  *v8 = v4;
  v8[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v9, a4);
}

uint64_t sub_10099099C(uint64_t a1)
{
  result = isUserAgent.getter();
  if (result)
  {
    v3 = v1[1];

    return v3();
  }

  else if (*(v1[2] + 136))
  {
    v4 = swift_task_alloc();
    v1[3] = v4;
    *v4 = v1;
    v4[1] = sub_100990A74;

    return sub_100865B70();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100990A74()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_100990B84, v1, 0);
}

uint64_t sub_100990B84()
{
  sub_10098FA5C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100990BE8(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for BeaconKeyService();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.run()(v5, a2);
}

uint64_t sub_100990C90()
{
  type metadata accessor for BeaconKeyService();
  sub_100991F50(&unk_1016B1090, v0, type metadata accessor for BeaconKeyService, &unk_1013CC4A0);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_100990D88(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for KeyGenerationBeaconInfo(0);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100990E58, v2, 0);
}

uint64_t sub_100990E58(uint64_t a1)
{
  v2 = v1[3];
  v3 = *(v2 + 16);
  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v5 = v1[6];
    v35 = v1[5];
    sub_10003301C(0, v3, 0);
    v4 = _swiftEmptyArrayStorage;
    v34 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v6 = v2 + v34;
    v32 = v1;
    v33 = *(v5 + 72);
    do
    {
      v37 = v3;
      v38 = v4;
      v8 = v1[7];
      v7 = v1[8];
      v36 = v6;
      sub_100991F98(v6, v8);
      v9 = getuid();
      sub_1000294F0(v9);
      v10 = *(type metadata accessor for BeaconIdentifier(0) + 20);
      v11 = type metadata accessor for UUID();
      (*(*(v11 - 8) + 16))(v7 + v10, v8 + v10, v11);
      v12 = v35[5];
      v13 = type metadata accessor for Date();
      (*(*(v13 - 8) + 16))(v7 + v12, v8 + v12, v13);
      v14 = (v8 + v35[6]);
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
      v18 = v14[3];
      v20 = v14[4];
      v19 = v14[5];
      v21 = *(v8 + v35[7]);
      sub_100991FFC(*v14, v16, v17, v18, v20, v19);
      v22 = v8;
      v4 = v38;
      sub_100992068(v22);
      v23 = (v7 + v35[6]);
      *v23 = v15;
      v23[1] = v16;
      v23[2] = v17;
      v23[3] = v18;
      v23[4] = v20;
      v23[5] = v19;
      *(v7 + v35[7]) = v21;
      v25 = v38[2];
      v24 = v38[3];
      if (v25 >= v24 >> 1)
      {
        sub_10003301C((v24 > 1), v25 + 1, 1);
        v4 = v38;
      }

      v26 = v32[8];
      v4[2] = v25 + 1;
      sub_100033DFC(v26, v4 + v34 + v25 * v33);
      v6 = v36 + v33;
      v3 = v37 - 1;
      v1 = v32;
    }

    while (v37 != 1);
  }

  v27 = isUserAgent.getter();
  if (v27)
  {

    v1[10] = 0;
    v28 = v1[4];
    v27 = sub_100991318;
    v29 = 0;

    return _swift_task_switch(v27, v28, v29);
  }

  v29 = *(v1[4] + 128);
  if (!v29)
  {
    __break(1u);
    goto LABEL_16;
  }

  v27 = sub_1009C0458(v1[2], v4, v29);
  if (!*(v1[4] + 136))
  {
LABEL_16:
    __break(1u);
    return _swift_task_switch(v27, v28, v29);
  }

  v30 = swift_task_alloc();
  v1[9] = v30;
  *v30 = v1;
  v30[1] = sub_1009911C0;

  return sub_1008671C8();
}

uint64_t sub_1009911C0()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    *(v2 + 80) = 0;
    v6 = *(v2 + 32);

    return _swift_task_switch(sub_100991318, v6, 0);
  }
}

uint64_t sub_100991318()
{
  type metadata accessor for Transaction();
  *(swift_task_alloc() + 16) = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  static Transaction.named<A>(_:with:)();

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_100991400()
{
  result = qword_1016AFE98;
  if (!qword_1016AFE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFE98);
  }

  return result;
}

void sub_100991454(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  Transaction.capture()();
  if (a3 == 6)
  {
    *(a4 + 184) = 0;
  }

  else if (a3 == 2)
  {
    if (qword_101694AE0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_1016AFD38);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "reevaluateXPCActivity: XPC activity fired for BeaconKeyService", v11, 2u);
    }

    type metadata accessor for Transaction();
    v12 = swift_allocObject();
    *(v12 + 16) = a4;
    *(v12 + 24) = a5;

    static Transaction.asyncTask(name:block:)();

    sub_1009971E8();
  }
}

void sub_100991618()
{
  if (*(*(v0 + 16) + 136))
  {
    v1 = swift_task_alloc();
    *(v0 + 24) = v1;
    *v1 = v0;
    v1[1] = sub_1009916B4;

    sub_1008671C8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1009916B4()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1009917E8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1009917E8()
{
  if (qword_101694AE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016AFD38);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = _convertErrorToNSError(_:)();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "validateKeys error: %@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100991984()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B758);
  sub_1000076D4(v0, qword_10177B758);
  return Logger.init(subsystem:category:)();
}

double sub_100991A08@<D0>(uint64_t a1@<X8>, uint64_t *a2@<X0>)
{
  sub_100991AEC(a2, v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_100991A54()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014650;

  return sub_1009915F8(v2);
}

void sub_100991AEC(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[1];
  v30 = a1[2];
  v28 = *a1;
  v29 = a1[3];
  v5 = a1[4];
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v6 = sub_10107406C(v31);

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      if (qword_101694AE0 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_1000076D4(v13, qword_1016AFD38);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v14, v15))
      {
        v4 = 0;
        v18 = 0;
        v19 = 0;
        v5 = 0;
        v16 = 2;
        goto LABEL_25;
      }

      v16 = 2;
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "BeaconKeyService unregistering XPC Activity: service is disabled.", v17, 2u);
      v4 = 0;
      v18 = 0;
      v19 = 0;
      v5 = 0;
      goto LABEL_22;
    }
  }

  if (*a1 == 2)
  {
    OS_dispatch_queue.sync<A>(execute:)();
    v20 = sub_101074824(v31);
    v18 = 60 * v20;
    if ((v20 * 60) >> 64 == (60 * v20) >> 63)
    {
      v21 = sub_101074840(v31);

      v19 = 60 * v21;
      if ((v21 * 60) >> 64 == (60 * v21) >> 63)
      {
        if (qword_101694AE0 == -1)
        {
LABEL_17:
          v22 = type metadata accessor for Logger();
          sub_1000076D4(v22, qword_1016AFD38);
          v14 = Logger.logObject.getter();
          v23 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v14, v23))
          {
            v5 = 7232;
            v4 = 3600;
            v16 = 257;
            goto LABEL_25;
          }

          v24 = swift_slowAlloc();
          *v24 = 134218496;
          v4 = 3600;
          *(v24 + 4) = 3600;
          *(v24 + 12) = 2048;
          *(v24 + 14) = v18;
          *(v24 + 22) = 2048;
          *(v24 + 24) = v19;
          _os_log_impl(&_mh_execute_header, v14, v23, "BeaconKeyService XPC criteria: delay %lld, gracePeriod %lld, interval %lld", v24, 0x20u);
          v5 = 7232;
          v16 = 257;
          goto LABEL_22;
        }
      }

      else
      {
        __break(1u);
      }

      swift_once();
      goto LABEL_17;
    }

    __break(1u);
  }

  else if (qword_101694AE0 == -1)
  {
    goto LABEL_20;
  }

  swift_once();
LABEL_20:
  v25 = type metadata accessor for Logger();
  sub_1000076D4(v25, qword_1016AFD38);
  v14 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  v19 = v29;
  v18 = v30;
  v16 = v28;
  if (os_log_type_enabled(v14, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v14, v26, "BeaconKeyService retaining existing XPCActivity criteria", v27, 2u);
LABEL_22:
  }

LABEL_25:

  *a2 = v16;
  a2[1] = v4;
  a2[2] = v18;
  a2[3] = v19;
  a2[4] = v5;
}

uint64_t sub_100991F50(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100991F98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeyGenerationBeaconInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100991FFC(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a2 >> 60 != 15)
  {
    sub_100017D5C(result, a2);
    sub_100017D5C(a3, a4);

    return sub_1002DBC68(a5, a6);
  }

  return result;
}

uint64_t sub_100992068(uint64_t a1)
{
  v2 = type metadata accessor for KeyGenerationBeaconInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1009920E0(uint64_t a1)
{
  v4 = *(sub_1000BC4D4(&qword_1016AFEA8, &qword_1013CC560) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_1009902EC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1009921E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016AFEB0, &qword_1013CC568);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100992268()
{
  result = qword_1016AFEC0;
  if (!qword_1016AFEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFEC0);
  }

  return result;
}

uint64_t sub_1009922D4(unsigned __int8 a1)
{
  v1 = a1;
  if (a1 <= 3u)
  {
    v10 = 0xE800000000000000;
    v11 = 0x6E776F6E6B6E752ELL;
    v12 = 0xEF64657461726170;
    v13 = 0x6553686374616C2ELL;
    if (a1 != 2)
    {
      v13 = 0xD00000000000001CLL;
      v12 = 0x800000010134B930;
    }

    if (a1)
    {
      v11 = 0x6E774F7261656E2ELL;
      v10 = 0xEA00000000007265;
    }

    if (a1 <= 1u)
    {
      v8 = v11;
    }

    else
    {
      v8 = v13;
    }

    if (v1 <= 1)
    {
      v9 = v10;
    }

    else
    {
      v9 = v12;
    }
  }

  else
  {
    v2 = 0xEE00797261646E6FLL;
    v3 = 0x636553646C69772ELL;
    v4 = 0x736142746E69682ELL;
    v5 = 0xEA00000000006465;
    if (a1 != 7)
    {
      v4 = 0x67696C4179656B2ELL;
      v5 = 0xED0000746E656D6ELL;
    }

    if (a1 != 6)
    {
      v3 = v4;
      v2 = v5;
    }

    v6 = 0xD000000000000018;
    v7 = 0x800000010134B910;
    if (a1 != 4)
    {
      v6 = 0x697250646C69772ELL;
      v7 = 0xEC0000007972616DLL;
    }

    if (a1 <= 5u)
    {
      v8 = v6;
    }

    else
    {
      v8 = v3;
    }

    if (v1 <= 5)
    {
      v9 = v7;
    }

    else
    {
      v9 = v2;
    }
  }

  v14 = v9;
  String.append(_:)(*&v8);
}

uint64_t sub_100992468(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = __chkstk_darwin(a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = *(v3 + 16);
  v7(&v10 - v8, v1, a1);
  if (swift_dynamicCast())
  {
    return 1;
  }

  v7(v6, v1, a1);
  return swift_dynamicCast();
}

unint64_t sub_1009925A4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6E776F6E6B6E752ELL;
    v6 = 0x6553686374616C2ELL;
    if (a1 != 2)
    {
      v6 = 0xD00000000000001CLL;
    }

    if (a1)
    {
      v5 = 0x6E774F7261656E2ELL;
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
    v1 = 0x636553646C69772ELL;
    v2 = 0x736142746E69682ELL;
    if (a1 != 7)
    {
      v2 = 0x67696C4179656B2ELL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000018;
    if (a1 != 4)
    {
      v3 = 0x697250646C69772ELL;
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

uint64_t sub_100992704@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1009939B8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1009927F0()
{
  _StringGuts.grow(_:)(21);
  v1._countAndFlagsBits = 0x3C636E795379654BLL;
  v1._object = 0xE800000000000000;
  String.append(_:)(v1);
  type metadata accessor for UUID();
  sub_100993DE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 58;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v4 = type metadata accessor for KeySyncMetadata(0);
  sub_1009922D4(*(v0 + *(v4 + 20)));
  v5._countAndFlagsBits = 32;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  sub_1000BC4D4(&qword_1016A5938, &qword_1013B3440);
  _print_unlocked<A, B>(_:_:)();
  v6._countAndFlagsBits = 8250;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  type metadata accessor for Date();
  sub_100993DE4(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 62;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  return 0;
}

uint64_t sub_1009929C0(void *a1, uint64_t a2, unsigned __int16 a3)
{
  v4 = a3;
  v6 = sub_1000BC4D4(&qword_1016AFFE0, &qword_1013CCAC8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - v8;
  sub_1000035D0(a1, a1[3]);
  sub_1009945A4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v14 = v4 & 1;
    v13 = 1;
    sub_10028EAF0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100992B70()
{
  v1 = 0x65636E6575716573;
  if (*v0 != 1)
  {
    v1 = 0x646C69577369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65756C6156776172;
  }
}

uint64_t sub_100992BC8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10099429C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100992BF0(uint64_t a1)
{
  v2 = sub_1009945A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100992C2C(uint64_t a1)
{
  v2 = sub_1009945A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100992C68@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1009943B0(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
    *(a1 + 9) = HIBYTE(v5) & 1;
  }

  return result;
}

uint64_t sub_100992CA4(void *a1)
{
  if (*(v1 + 9))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1009929C0(a1, *v1, v2 | *(v1 + 8));
}

Swift::Int sub_100992CE4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100992DA4(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100992E50(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100992F0C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100993B88(*a1);
  *a2 = result;
  return result;
}

void sub_100992F3C(unint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701869940;
  v4 = 0x666E497865646E69;
  v5 = 0xE90000000000006FLL;
  if (*v1 != 2)
  {
    v4 = 0x6D617473656D6974;
    v5 = 0xE900000000000070;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x8000000101347590;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_100992FB8()
{
  v1 = 1701869940;
  v2 = 0x666E497865646E69;
  if (*v0 != 2)
  {
    v2 = 0x6D617473656D6974;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
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

unint64_t sub_100993030@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100993B88(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100993058(uint64_t a1)
{
  v2 = sub_1009939CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100993094(uint64_t a1)
{
  v2 = sub_1009939CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1009930D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for Date();
  v35 = *(v3 - 8);
  v36 = v3;
  __chkstk_darwin(v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v34 = *(v6 - 8);
  __chkstk_darwin(v6);
  v38 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1000BC4D4(&qword_1016AFEC8, &qword_1013CC6D0);
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v9 = &v31 - v8;
  v10 = type metadata accessor for KeySyncMetadata(0);
  __chkstk_darwin(v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_1009939CC();
  v13 = v46;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    return sub_100007BAC(a1);
  }

  v32 = v5;
  v46 = a1;
  v15 = v34;
  v14 = v35;
  v16 = v36;
  LOBYTE(v40) = 0;
  sub_100993DE4(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18 = *(v15 + 32);
  v19 = v38;
  v38 = v6;
  v18(v12, v19, v6);
  LOBYTE(v43) = 1;
  sub_100993A20();
  v20 = v39;
  v21 = v9;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12[*(v10 + 20)] = v40;
  LOBYTE(v40) = 3;
  sub_100993DE4(&qword_101697F40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v22 = v32;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v14 + 32))(&v12[*(v10 + 28)], v22, v16);
  LOBYTE(v40) = 2;
  sub_100993A74();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = v10;
  v24 = v20;
  v25 = v21;
  v26 = v43;
  if (v44)
  {
    v41 = &type metadata for SecondaryIndex;
    v42 = sub_10022A4D4();
    *&v40 = v26;
    v27 = v33;
    v28 = v46;
    v29 = v37;
  }

  else
  {
    v27 = v33;
    v28 = v46;
    v29 = v37;
    if (v45)
    {
      v41 = &type metadata for PrimaryWildIndex;
      v30 = sub_10022A528();
    }

    else
    {
      v41 = &type metadata for PrimaryIndex;
      v30 = sub_10002A2B8();
    }

    v42 = v30;
    *&v40 = v26;
  }

  (*(v29 + 8))(v25, v24);
  sub_100031694(&v40, &v12[*(v23 + 24)]);
  sub_100993AC8(v12, v27);
  sub_100007BAC(v28);
  return sub_100993B2C(v12);
}

uint64_t sub_10099367C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016AFEE8, &qword_1013CC6D8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_1009939CC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  type metadata accessor for UUID();
  sub_100993DE4(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for KeySyncMetadata(0);
    LOBYTE(v12) = *(v3 + *(v9 + 20));
    v14 = 1;
    sub_10077F7F8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10001F280(v3 + *(v9 + 24), &v12);
    v12 = sub_100993BD4(&v12);
    v13 = v10 & 0x101;
    v14 = 2;
    sub_100993D90();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 3;
    type metadata accessor for Date();
    sub_100993DE4(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t type metadata accessor for KeySyncMetadata(uint64_t a1)
{
  result = qword_1016AFF58;
  if (!qword_1016AFF58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1009939B8(uint64_t result)
{
  if (result >= 9u)
  {
    return 9;
  }

  else
  {
    return result;
  }
}

unint64_t sub_1009939CC()
{
  result = qword_1016AFED0;
  if (!qword_1016AFED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFED0);
  }

  return result;
}

unint64_t sub_100993A20()
{
  result = qword_1016AFED8;
  if (!qword_1016AFED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFED8);
  }

  return result;
}

unint64_t sub_100993A74()
{
  result = qword_1016AFEE0;
  if (!qword_1016AFEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFEE0);
  }

  return result;
}

uint64_t sub_100993AC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeySyncMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100993B2C(uint64_t a1)
{
  v2 = type metadata accessor for KeySyncMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100993B88(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10160A618, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100993BD4(void *a1)
{
  sub_10001F280(a1, v9);
  v2 = sub_1000BC4D4(&qword_1016A5938, &qword_1013B3440);
  if (swift_dynamicCast())
  {
    sub_1000035D0(a1, a1[3]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    v2 = v8;
    v3 = a1[3];
    v4 = a1[4];
    sub_1000035D0(a1, v3);
    sub_10002BD40(v3, v4);
    sub_100007BAC(v9);
  }

  else
  {
    if ((swift_dynamicCast() & 1) == 0 && !swift_dynamicCast())
    {
      sub_100993E2C();
      swift_allocError();
      swift_willThrow();
      sub_100007BAC(v9);
      sub_100007BAC(a1);
      return v2;
    }

    sub_100007BAC(v9);
    sub_1000035D0(a1, a1[3]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    v2 = v9[0];
    v5 = a1[3];
    v6 = a1[4];
    sub_1000035D0(a1, v5);
    sub_10002BD40(v5, v6);
  }

  sub_100007BAC(a1);
  return v2;
}

unint64_t sub_100993D90()
{
  result = qword_1016AFEF0;
  if (!qword_1016AFEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFEF0);
  }

  return result;
}

uint64_t sub_100993DE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100993E2C()
{
  result = qword_1016AFEF8;
  if (!qword_1016AFEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFEF8);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for KeySyncMetadata.IndexInfo(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for KeySyncMetadata.IndexInfo(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for KeySyncMetadata.IndexInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_100993F74(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = sub_10073AB64();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Date();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_10099402C()
{
  result = qword_1016AFF98;
  if (!qword_1016AFF98)
  {
    sub_1000BC580(&qword_1016A9158, &qword_1013BB0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFF98);
  }

  return result;
}

unint64_t sub_100994094()
{
  result = qword_1016AFFA0;
  if (!qword_1016AFFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFFA0);
  }

  return result;
}

unint64_t sub_1009940EC()
{
  result = qword_1016AFFA8;
  if (!qword_1016AFFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFFA8);
  }

  return result;
}

unint64_t sub_100994144()
{
  result = qword_1016AFFB0;
  if (!qword_1016AFFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFFB0);
  }

  return result;
}

unint64_t sub_10099419C()
{
  result = qword_1016AFFB8;
  if (!qword_1016AFFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFFB8);
  }

  return result;
}

unint64_t sub_1009941F4()
{
  result = qword_1016AFFC0;
  if (!qword_1016AFFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFFC0);
  }

  return result;
}

unint64_t sub_100994248()
{
  result = qword_1016AFFC8;
  if (!qword_1016AFFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFFC8);
  }

  return result;
}

uint64_t sub_10099429C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6156776172 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65636E6575716573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646C69577369 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1009943B0(void *a1)
{
  v2 = sub_1000BC4D4(&qword_1016AFFD0, &qword_1013CCAC0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  sub_1000035D0(a1, a1[3]);
  sub_1009945A4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v11 = 0;
  v6 = KeyedDecodingContainer.decode(_:forKey:)();
  v10 = 1;
  sub_10028EA9C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_100007BAC(a1);
  return v6;
}

unint64_t sub_1009945A4()
{
  result = qword_1016AFFD8;
  if (!qword_1016AFFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFFD8);
  }

  return result;
}

unint64_t sub_10099460C()
{
  result = qword_1016AFFE8;
  if (!qword_1016AFFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFFE8);
  }

  return result;
}

unint64_t sub_100994664()
{
  result = qword_1016AFFF0;
  if (!qword_1016AFFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFFF0);
  }

  return result;
}

unint64_t sub_1009946BC()
{
  result = qword_1016AFFF8;
  if (!qword_1016AFFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFFF8);
  }

  return result;
}

uint64_t sub_1009947A0(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100994824(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016B0150, &qword_1013CCCD0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_1009954D0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  type metadata accessor for UUID();
  sub_1000096E8(&qword_101698330, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for PeerTrustEnvelopeV1(0);
    LOBYTE(v14) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = (v3 + *(v9 + 24));
    v11 = v10[1];
    v14 = *v10;
    v15 = v11;
    v13[15] = 2;
    sub_100017D5C(v14, v11);
    sub_100313230();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v14, v15);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100994A24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for UUID();
  v25 = *(v4 - 8);
  __chkstk_darwin(v4);
  v26 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1000BC4D4(&qword_1016B0140, &qword_1013CCCC8);
  v24 = *(v27 - 8);
  __chkstk_darwin(v27);
  v7 = &v20 - v6;
  v8 = type metadata accessor for PeerTrustEnvelopeV1(0);
  __chkstk_darwin(v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_1009954D0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v12 = v24;
  v11 = v25;
  v21 = v8;
  v22 = v10;
  LOBYTE(v28) = 0;
  sub_1000096E8(&qword_101698300, &protocol conformance descriptor for UUID);
  v14 = v26;
  v13 = v27;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v11 + 32))(v22, v14, v4);
  LOBYTE(v28) = 1;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = &v22[*(v21 + 20)];
  *v16 = v15;
  v16[1] = v17;
  v29 = 2;
  sub_100313070();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v12 + 8))(v7, v13);
  v18 = v22;
  *&v22[*(v21 + 24)] = v28;
  sub_100995524(v18, v23);
  sub_100007BAC(a1);
  return sub_100995588(v18);
}

uint64_t sub_100994DD0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = type metadata accessor for UUID();
  v17 = *(v3 - 8);
  __chkstk_darwin(v3);
  v18 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&qword_1016B0128, &qword_1013CCCB8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  v9 = type metadata accessor for PeerTrustAckEnvelopeV1(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_100995418();
  v12 = v19;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v12)
  {
    v13 = v17;
    sub_1000096E8(&qword_101698300, &protocol conformance descriptor for UUID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    (*(v13 + 32))(v11, v18, v3);
    sub_10099546C(v11, v16);
  }

  return sub_100007BAC(a1);
}

unint64_t sub_10099503C()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x6553646572616873;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1009950A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100995814(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1009950D0(uint64_t a1)
{
  v2 = sub_1009954D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10099510C(uint64_t a1)
{
  v2 = sub_1009954D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100995194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100995224(uint64_t a1)
{
  v2 = sub_100995418();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100995260(uint64_t a1)
{
  v2 = sub_100995418();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1009952B4(void *a1)
{
  v2 = sub_1000BC4D4(&qword_1016B0138, &qword_1013CCCC0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_1000035D0(a1, a1[3]);
  sub_100995418();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for UUID();
  sub_1000096E8(&qword_101698330, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_100995418()
{
  result = qword_1016B0130;
  if (!qword_1016B0130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0130);
  }

  return result;
}

uint64_t sub_10099546C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerTrustAckEnvelopeV1(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1009954D0()
{
  result = qword_1016B0148;
  if (!qword_1016B0148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0148);
  }

  return result;
}

uint64_t sub_100995524(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerTrustEnvelopeV1(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100995588(uint64_t a1)
{
  v2 = type metadata accessor for PeerTrustEnvelopeV1(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100995608()
{
  result = qword_1016B0158;
  if (!qword_1016B0158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0158);
  }

  return result;
}

unint64_t sub_100995660()
{
  result = qword_1016B0160;
  if (!qword_1016B0160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0160);
  }

  return result;
}

unint64_t sub_1009956B8()
{
  result = qword_1016B0168;
  if (!qword_1016B0168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0168);
  }

  return result;
}

unint64_t sub_100995710()
{
  result = qword_1016B0170;
  if (!qword_1016B0170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0170);
  }

  return result;
}

unint64_t sub_100995768()
{
  result = qword_1016B0178;
  if (!qword_1016B0178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0178);
  }

  return result;
}

unint64_t sub_1009957C0()
{
  result = qword_1016B0180;
  if (!qword_1016B0180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0180);
  }

  return result;
}

uint64_t sub_100995814(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000101351030 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6553646572616873 && a2 == 0xEC00000074657263)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

__n128 sub_100995950@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100995A20(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v6[4];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

unint64_t sub_10099599C(uint64_t a1)
{
  *(a1 + 8) = sub_1009959CC();
  result = sub_100392A9C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1009959CC()
{
  result = qword_1016B0188;
  if (!qword_1016B0188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0188);
  }

  return result;
}

uint64_t sub_100995A20@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v63, v64);
  v5 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    sub_100007BAC(v63);
    return sub_100007BAC(a1);
  }

  v7 = v5;
  v8 = v6;
  sub_10015049C(v63, v64);
  v9 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v65 = v10;
  sub_10015049C(v63, v64);
  v57 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v58 = v11;
  sub_10015049C(v63, v64);
  v55 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v56 = v12;
  sub_10015049C(v63, v64);
  result = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v15 = result;
  v16 = v14;
  v17 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    v21 = v17 == 2;
    v18 = v65;
    v22 = v57;
    v23 = v58;
    if (!v21)
    {
      goto LABEL_74;
    }

    v24 = *(v7 + 16);
    v25 = *(v7 + 24);
    v26 = __OFSUB__(v25, v24);
    v20 = v25 - v24;
    if (v26)
    {
      goto LABEL_66;
    }

    v19 = v9;
  }

  else
  {
    v18 = v65;
    v19 = v9;
    if (v17)
    {
      if (__OFSUB__(HIDWORD(v7), v7))
      {
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v20 = HIDWORD(v7) - v7;
    }

    else
    {
      v20 = BYTE6(v8);
    }

    v22 = v57;
    v23 = v58;
  }

  if (v20 != 32)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v27 = v18 >> 62;
  if ((v18 >> 62) <= 1)
  {
    if (!v27)
    {
      v19 = BYTE6(v18);
LABEL_24:
      result = v55;
      v28 = v56;
      goto LABEL_25;
    }

LABEL_22:
    v26 = __OFSUB__(HIDWORD(v19), v19);
    LODWORD(v19) = HIDWORD(v19) - v19;
    if (v26)
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v19 = v19;
    goto LABEL_24;
  }

  result = v55;
  v28 = v56;
  if (v27 != 2)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v31 = v19 + 16;
  v29 = *(v19 + 16);
  v30 = *(v31 + 8);
  v26 = __OFSUB__(v30, v29);
  v19 = v30 - v29;
  if (v26)
  {
    __break(1u);
    goto LABEL_22;
  }

LABEL_25:
  if (v19 != 113)
  {
    goto LABEL_75;
  }

  v32 = v23 >> 62;
  if ((v23 >> 62) <= 1)
  {
    if (!v32)
    {
      v22 = BYTE6(v23);
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  if (v32 != 2)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v35 = v22 + 16;
  v33 = *(v22 + 16);
  v34 = *(v35 + 8);
  v26 = __OFSUB__(v34, v33);
  v22 = v34 - v33;
  if (v26)
  {
    __break(1u);
LABEL_33:
    v26 = __OFSUB__(HIDWORD(v22), v22);
    LODWORD(v22) = HIDWORD(v22) - v22;
    if (v26)
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v22 = v22;
  }

LABEL_35:
  if (v22 != 32)
  {
    goto LABEL_76;
  }

  v36 = v16 >> 62;
  if ((v16 >> 62) <= 1)
  {
    if (!v36)
    {
      v37 = BYTE6(v16);
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (v36 != 2)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v39 = *(v15 + 16);
  v38 = *(v15 + 24);
  v26 = __OFSUB__(v38, v39);
  v37 = v38 - v39;
  if (v26)
  {
    __break(1u);
LABEL_43:
    LODWORD(v37) = HIDWORD(v15) - v15;
    if (__OFSUB__(HIDWORD(v15), v15))
    {
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v37 = v37;
  }

LABEL_45:
  if (v37 != 1)
  {
    goto LABEL_77;
  }

  v40 = v28 >> 62;
  if ((v28 >> 62) <= 1)
  {
    if (!v40)
    {
      v41 = BYTE6(v28);
      goto LABEL_55;
    }

    goto LABEL_53;
  }

  if (v40 != 2)
  {
    goto LABEL_78;
  }

  v43 = *(result + 16);
  v42 = *(result + 24);
  v26 = __OFSUB__(v42, v43);
  v41 = v42 - v43;
  if (v26)
  {
    __break(1u);
LABEL_53:
    LODWORD(v41) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    v41 = v41;
  }

LABEL_55:
  if (v41 == 96)
  {
    v61 = result;
    v62 = v28;
    if (v40 == 2)
    {
      v46 = *(result + 16);
      v45 = *(result + 24);
      v44 = v45 - v46;
      if (__OFSUB__(v45, v46))
      {
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }
    }

    else
    {
      if (v40 != 1)
      {
        v44 = BYTE6(v28);
        goto LABEL_63;
      }

      if (__OFSUB__(HIDWORD(result), result))
      {
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      v44 = HIDWORD(result) - result;
    }

    sub_100017D5C(result, v28);
LABEL_63:
    v53 = v16;
    v54 = v15;
    result = 96 - v44;
    if (!__OFSUB__(96, v44))
    {
      v59 = sub_100845C88(result);
      v60 = v47;
      sub_100776394(&v59, 0);
      v48 = v59;
      v49 = v60;
      Data.append(_:)();
      sub_100016590(v55, v56);
      sub_100016590(v48, v49);
      v50 = v61;
      v51 = v62;
      sub_100007BAC(v63);
      result = sub_100007BAC(a1);
      *a2 = v7;
      a2[1] = v8;
      v52 = v65;
      a2[2] = v9;
      a2[3] = v52;
      a2[4] = v57;
      a2[5] = v58;
      a2[6] = v50;
      a2[7] = v51;
      a2[8] = v54;
      a2[9] = v53;
      return result;
    }

    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

LABEL_78:
  __break(1u);
  return result;
}

uint64_t sub_100995E7C(void *a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016B01B8, &qword_1013CD288);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_1000035D0(a1, a1[3]);
  sub_100996680();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  sub_1000BC4D4(&qword_1016B01A0, &qword_1013CD280);
  sub_100996728(&qword_1016B01C0, sub_1009967A0, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100996008(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_1000BC4D4(&qword_1016B01F8, &qword_1013CD430);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_1000035D0(a1, a1[3]);
  sub_100996B00();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1009961B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656369766564 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10099623C(uint64_t a1)
{
  v2 = sub_100996680();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100996278(uint64_t a1)
{
  v2 = sub_100996680();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1009962B4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1009964CC(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1009962FC()
{
  if (*v0)
  {
    return 1684628597;
  }

  else
  {
    return 0x444955556162;
  }
}

uint64_t sub_10099632C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x444955556162 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1684628597 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_100996404(uint64_t a1)
{
  v2 = sub_100996B00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100996440(uint64_t a1)
{
  v2 = sub_100996B00();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10099647C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10099691C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

void *sub_1009964CC(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016B0190, &qword_1013CD278);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_1000035D0(a1, a1[3]);
  sub_100996680();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_1000BC4D4(&qword_1016B01A0, &qword_1013CD280);
    sub_100996728(&qword_1016B01A8, sub_1009966D4, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_100007BAC(a1);
  }

  return v7;
}

unint64_t sub_100996680()
{
  result = qword_1016B0198;
  if (!qword_1016B0198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0198);
  }

  return result;
}

unint64_t sub_1009966D4()
{
  result = qword_1016B01B0;
  if (!qword_1016B01B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B01B0);
  }

  return result;
}

uint64_t sub_100996728(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016B01A0, &qword_1013CD280);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1009967A0()
{
  result = qword_1016B01C8;
  if (!qword_1016B01C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B01C8);
  }

  return result;
}

unint64_t sub_100996818()
{
  result = qword_1016B01D0;
  if (!qword_1016B01D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B01D0);
  }

  return result;
}

unint64_t sub_100996870()
{
  result = qword_1016B01D8;
  if (!qword_1016B01D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B01D8);
  }

  return result;
}

unint64_t sub_1009968C8()
{
  result = qword_1016B01E0;
  if (!qword_1016B01E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B01E0);
  }

  return result;
}

uint64_t sub_10099691C(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016B01E8, &qword_1013CD428);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100996B00();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v11 = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v10 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100007BAC(a1);
  return v7;
}

unint64_t sub_100996B00()
{
  result = qword_1016B01F0;
  if (!qword_1016B01F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B01F0);
  }

  return result;
}

unint64_t sub_100996B68()
{
  result = qword_1016B0200;
  if (!qword_1016B0200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0200);
  }

  return result;
}

unint64_t sub_100996BC0()
{
  result = qword_1016B0208;
  if (!qword_1016B0208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0208);
  }

  return result;
}

unint64_t sub_100996C18()
{
  result = qword_1016B0210;
  if (!qword_1016B0210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0210);
  }

  return result;
}

uint64_t sub_100996C7C()
{
  sub_10039722C();
  result = OS_os_log.init(subsystem:category:)();
  qword_10177B770 = result;
  return result;
}

uint64_t sub_100996CE4(uint64_t a1)
{
  type metadata accessor for XPCActivity();
  sub_10099A6AC();
  v2._countAndFlagsBits = CustomDebugStringConvertible.typeDescription.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 8250;
  v3._object = 0xE200000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = CustomDebugStringConvertible<>.addressDescription.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 23328;
  v5._object = 0xE200000000000000;
  String.append(_:)(v5);
  String.append(_:)(*(v1 + 24));
  v6._countAndFlagsBits = 15965;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  return 60;
}

uint64_t sub_100996DC4(void *a1)
{
  v2 = String.utf8CString.getter();
  xpc_activity_unregister((v2 + 32));

  v3 = a1[12];
  v4 = a1[13];
  a1[12] = 0;
  a1[13] = 0;
  sub_1000BB27C(v3, v4);
  swift_unknownObjectWeakAssign();
  v5 = static os_log_type_t.default.getter();
  if (qword_101694AF0 != -1)
  {
    swift_once();
  }

  v6 = qword_10177B770;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101385D80;
  type metadata accessor for XPCActivity();

  v8 = String.init<A>(describing:)();
  v10 = v9;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_100008C00();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "%{public}@: Unregistered criteria", 33, 2, v7);
}

void *sub_100996F14(_xpc_activity_s *a1)
{
  v2 = static os_log_type_t.default.getter();
  if (qword_101694AF0 != -1)
  {
    swift_once();
  }

  v3 = qword_10177B770;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_101385D80;
  type metadata accessor for XPCActivity();

  v5 = String.init<A>(describing:)();
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  v8 = sub_100008C00();
  *(v4 + 64) = v8;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v3, "%{public}@: updateCriteria called on XPCActivity", 48, 2, v4);

  sub_1000BC4D4(&unk_1016B03C8, &qword_1013CD788);
  OS_dispatch_queue.sync<A>(execute:)();
  if (a1)
  {
    sub_1009979F4(a1);
    return swift_unknownObjectRelease();
  }

  else
  {
    v10 = MEMORY[0x58];
    v11 = static os_log_type_t.default.getter();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_10138BBE0;

    v13 = String.init<A>(describing:)();
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = v8;
    *(v12 + 32) = v13;
    *(v12 + 40) = v14;
    v16 = MEMORY[0x18];
    v15 = MEMORY[0x20];
    *(v12 + 96) = &type metadata for String;
    *(v12 + 104) = v8;
    *(v12 + 72) = v16;
    *(v12 + 80) = v15;

    if (v10 == 1)
    {
      os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v3, "%{public}@: No current activity -- re-registering: %{public}@", 61, 2, v12);

      return sub_100997398();
    }

    else
    {
      os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v3, "%{public}@: No current activity -- hasn't checked in yet: %{public}@", 68, 2, v12);
    }
  }
}

BOOL sub_100997210(uint64_t a1, xpc_activity_state_t a2, const char *a3, uint64_t a4, ...)
{
  sub_1000BC4D4(&unk_1016B03C8, &qword_1013CD788);
  OS_dispatch_queue.sync<A>(execute:)();
  if (activity)
  {
    v7 = xpc_activity_set_state(activity, a2);
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = static os_log_type_t.error.getter();
    if (qword_101694AF0 != -1)
    {
      swift_once();
    }

    v9 = qword_10177B770;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_101385D80;
    type metadata accessor for XPCActivity();

    v11 = String.init<A>(describing:)();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_100008C00();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, a3, a4, 2, v10);

    return 0;
  }

  return v7;
}

void *sub_100997398()
{
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  aBlock = 0x7365547265646E75;
  v6 = 0xE900000000000074;
  result = SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if ((v11 & 1) == 0)
  {
    v2 = *(v0 + 16);
    v3 = swift_allocObject();
    *(v3 + 16) = sub_10099A628;
    *(v3 + 24) = v0;
    v9 = sub_10040B9F8;
    v10 = v3;
    aBlock = _NSConcreteStackBlock;
    v6 = 1107296256;
    v7 = sub_10013FE14;
    v8 = &unk_101640D88;
    v4 = _Block_copy(&aBlock);

    dispatch_sync(v2, v4);
    _Block_release(v4);
    LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

    if (v2)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100997558(void *a1)
{
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = a1[12];
  v4 = a1[13];
  a1[12] = sub_10099A630;
  a1[13] = v2;

  sub_1000BB27C(v3, v4);
  v8[4] = sub_10099A630;
  v8[5] = v2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100997768;
  v8[3] = &unk_101640DD8;
  v5 = _Block_copy(v8);

  v6 = String.utf8CString.getter();
  xpc_activity_register((v6 + 32), XPC_ACTIVITY_CHECK_IN, v5);

  _Block_release(v5);
}

uint64_t sub_100997694(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = type metadata accessor for Transaction();
    __chkstk_darwin(v3);
    static Transaction.named<A>(_:with:)();
  }

  return result;
}

uint64_t sub_100997768(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1009977C8(uint64_t a1, xpc_activity_t activity, uint64_t (**a3)(_xpc_activity_s *, uint64_t, unint64_t))
{
  state = xpc_activity_get_state(activity);
  v5 = sub_100999F28(state);
  v18 = static os_log_type_t.default.getter();
  if (qword_101694AF0 != -1)
  {
    swift_once();
  }

  v6 = qword_10177B770;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10138B360;
  type metadata accessor for XPCActivity();

  v8 = String.init<A>(describing:)();
  v10 = v9;
  *(v7 + 56) = &type metadata for String;
  v11 = sub_100008C00();
  *(v7 + 64) = v11;
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  swift_unknownObjectRetain();
  sub_1000BC4D4(&qword_1016B0418, &qword_1013CD7A0);
  v12 = String.init<A>(describing:)();
  *(v7 + 96) = &type metadata for String;
  *(v7 + 104) = v11;
  *(v7 + 72) = v12;
  *(v7 + 80) = v13;
  v14 = String.init<A>(describing:)();
  *(v7 + 136) = &type metadata for String;
  *(v7 + 144) = v11;
  *(v7 + 112) = v14;
  *(v7 + 120) = v15;
  os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v6, "%{public}@: activityHandler() for %{public}@ -- state: %{public}@", 65, 2, v7);

  if (!v5)
  {
    __chkstk_darwin(v16);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v5 = v5;
  }

  return a3[8](a3, a1, v5);
}

unint64_t sub_1009979F4(_xpc_activity_s *a1)
{
  v3 = v1;
  v4 = a1;
  if (!xpc_activity_copy_criteria(a1))
  {
    goto LABEL_4;
  }

  v5 = swift_unknownObjectRetain();
  sub_100999DA4(v5, &v54);
  if (v54 != 2)
  {
    v60 = v54;
    v61 = v55;
    v62 = v56;
    (*(v1 + 48))(&v57, &v54);
    if (v57 == 2)
    {
      v22 = *(v1 + 16);
      v4 = swift_allocObject();
      *(v4 + 2) = sub_10099AA50;
      *(v4 + 3) = v3;
      *(&v52 + 1) = sub_10040B9F8;
      v53 = v4;
      aBlock = _NSConcreteStackBlock;
      *&aBlock_8 = 1107296256;
      *(&aBlock_8 + 1) = sub_10013FE14;
      *&v52 = &unk_101640D38;
      v23 = _Block_copy(&aBlock);

      dispatch_sync(v22, v23);
      _Block_release(v23);
      LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();
      swift_unknownObjectRelease();

      if ((v22 & 1) == 0)
      {
        return 6;
      }

      __break(1u);
    }

    else
    {
      aBlock = v57;
      aBlock_8 = v58;
      v52 = v59;
      v24 = sub_100999924(&aBlock, &v60);
      v25 = static os_log_type_t.default.getter();
      if (!v24)
      {
        v49 = v25;
        if (qword_101694AF0 != -1)
        {
          swift_once();
        }

        v48 = qword_10177B770;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_10138BBE0;
        type metadata accessor for XPCActivity();

        v35 = String.init<A>(describing:)();
        v37 = v36;
        *(v34 + 56) = &type metadata for String;
        v38 = sub_100008C00();
        *(v34 + 64) = v38;
        *(v34 + 32) = v35;
        *(v34 + 40) = v37;
        v39 = String.init<A>(describing:)();
        *(v34 + 96) = &type metadata for String;
        *(v34 + 104) = v38;
        *(v34 + 72) = v39;
        *(v34 + 80) = v40;
        os_log(_:dso:log:_:_:)(v49, &_mh_execute_header, v48, "%{public}@: Existing criteria: %{public}@", 41, 2, v34);

        v41 = static os_log_type_t.default.getter();
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_10138BBE0;

        v43 = String.init<A>(describing:)();
        *(v42 + 56) = &type metadata for String;
        *(v42 + 64) = v38;
        *(v42 + 32) = v43;
        *(v42 + 40) = v44;
        v45 = String.init<A>(describing:)();
        *(v42 + 96) = &type metadata for String;
        *(v42 + 104) = v38;
        *(v42 + 72) = v45;
        *(v42 + 80) = v46;
        os_log(_:dso:log:_:_:)(v41, &_mh_execute_header, v48, "%{public}@: Registering updated criteria: %{public}@", 52, 2, v42);

        sub_10099814C();
        xpc_activity_set_criteria(v4, v47);
        swift_unknownObjectRelease();
        goto LABEL_10;
      }

      v2 = v25;
      if (qword_101694AF0 == -1)
      {
        goto LABEL_16;
      }
    }

    swift_once();
LABEL_16:
    v26 = qword_10177B770;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_10138BBE0;
    type metadata accessor for XPCActivity();

    v28 = String.init<A>(describing:)();
    v30 = v29;
    *(v27 + 56) = &type metadata for String;
    v31 = sub_100008C00();
    *(v27 + 64) = v31;
    *(v27 + 32) = v28;
    *(v27 + 40) = v30;
    v32 = String.init<A>(describing:)();
    *(v27 + 96) = &type metadata for String;
    *(v27 + 104) = v31;
    *(v27 + 72) = v32;
    *(v27 + 80) = v33;
    os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v26, "%{public}@: Keeping existing criteria for: %{public}@", 53, 2, v27);

LABEL_10:
    swift_unknownObjectRelease();
    state = xpc_activity_get_state(v4);
    return sub_100999F28(state);
  }

  swift_unknownObjectRelease();
LABEL_4:
  v6 = *(v1 + 48);
  v60 = 2;
  v61 = 0u;
  v62 = 0u;
  v6(&v57, &v60);
  v7 = v57;
  if (v57 != 2)
  {
LABEL_7:
    aBlock = v7;
    aBlock_8 = v58;
    v52 = v59;
    v10 = static os_log_type_t.default.getter();
    if (qword_101694AF0 != -1)
    {
      swift_once();
    }

    v11 = qword_10177B770;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_10138BBE0;
    type metadata accessor for XPCActivity();

    v13 = String.init<A>(describing:)();
    v15 = v14;
    *(v12 + 56) = &type metadata for String;
    v16 = sub_100008C00();
    *(v12 + 64) = v16;
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    v17 = String.init<A>(describing:)();
    *(v12 + 96) = &type metadata for String;
    *(v12 + 104) = v16;
    *(v12 + 72) = v17;
    *(v12 + 80) = v18;
    os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "%{public}@: Registering new criteria: %@", 40, 2, v12);

    sub_10099814C();
    xpc_activity_set_criteria(v4, v19);
    goto LABEL_10;
  }

  v8 = *(v1 + 16);
  v4 = swift_allocObject();
  *(v4 + 2) = sub_10058A7BC;
  *(v4 + 3) = v3;
  *(&v52 + 1) = sub_1000D2FB0;
  v53 = v4;
  aBlock = _NSConcreteStackBlock;
  *&aBlock_8 = 1107296256;
  *(&aBlock_8 + 1) = sub_10013FE14;
  *&v52 = &unk_101640CE8;
  v9 = _Block_copy(&aBlock);

  dispatch_sync(v8, v9);
  _Block_release(v9);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return 6;
}

void sub_10099814C()
{
  v1 = xpc_dictionary_create(0, 0, 0);
  v2 = v1;
  v3 = &XPC_ACTIVITY_PRIORITY_MAINTENANCE;
  if (!*v0)
  {
    v3 = &XPC_ACTIVITY_PRIORITY_UTILITY;
  }

  xpc_dictionary_set_string(v1, XPC_ACTIVITY_PRIORITY, *v3);
  v4 = *(v0 + 1);
  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REPEATING, *(v0 + 1));
  xpc_dictionary_set_int64(v2, XPC_ACTIVITY_DELAY, *(v0 + 8));
  xpc_dictionary_set_int64(v2, XPC_ACTIVITY_GRACE_PERIOD, *(v0 + 16));
  if (v4 == 1)
  {
    xpc_dictionary_set_int64(v2, XPC_ACTIVITY_INTERVAL, *(v0 + 24));
  }

  v5 = *(v0 + 32);
  if (v5)
  {
    if (!XPC_ACTIVITY_POWER_NAP)
    {
      __break(1u);
      goto LABEL_51;
    }

    xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_POWER_NAP, 1);
  }

  if ((v5 & 4) == 0)
  {
    goto LABEL_11;
  }

  if (!XPC_ACTIVITY_REQUIRE_SIGNIFICANT_USER_INACTIVITY)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REQUIRE_SIGNIFICANT_USER_INACTIVITY, 1);
LABEL_11:
  if ((v5 & 2) == 0)
  {
    goto LABEL_14;
  }

  if (!XPC_ACTIVITY_SHOULD_WAKE_DEVICE)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_SHOULD_WAKE_DEVICE, 1);
LABEL_14:
  if ((v5 & 8) == 0)
  {
    goto LABEL_17;
  }

  if (!XPC_ACTIVITY_USES_DUET_POWER_BUDGETING)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_USES_DUET_POWER_BUDGETING, 1);
LABEL_17:
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_20;
  }

  if (!XPC_ACTIVITY_REQUIRES_CLASS_A)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REQUIRES_CLASS_A, 1);
LABEL_20:
  if ((v5 & 0x20) == 0)
  {
    goto LABEL_23;
  }

  if (!XPC_ACTIVITY_REQUIRES_CLASS_B)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REQUIRES_CLASS_B, 1);
LABEL_23:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_26;
  }

  if (!XPC_ACTIVITY_REQUIRES_CLASS_C)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REQUIRES_CLASS_C, 1);
LABEL_26:
  if ((v5 & 0x80) == 0)
  {
    goto LABEL_29;
  }

  if (!XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
LABEL_29:
  if ((v5 & 0x100) == 0)
  {
    goto LABEL_32;
  }

  if (!XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, 1);
LABEL_32:
  if ((v5 & 0x2000) == 0)
  {
    goto LABEL_35;
  }

  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = String.utf8CString.getter();
  v8 = String.utf8CString.getter();
  xpc_dictionary_set_string(v6, (v7 + 32), (v8 + 32));

  if (!XPC_ACTIVITY_DUET_ACTIVITY_SCHEDULER_DATA)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  xpc_dictionary_set_value(v2, XPC_ACTIVITY_DUET_ACTIVITY_SCHEDULER_DATA, v6);
  swift_unknownObjectRelease();
LABEL_35:
  if ((v5 & 0x200) != 0)
  {
    xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  }

  if ((v5 & 0x400) != 0)
  {
    if (XPC_ACTIVITY_MEMORY_INTENSIVE)
    {
      xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_MEMORY_INTENSIVE, 1);
      goto LABEL_40;
    }

LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

LABEL_40:
  if ((v5 & 0x800) == 0)
  {
    goto LABEL_43;
  }

  if (!XPC_ACTIVITY_CPU_INTENSIVE)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_CPU_INTENSIVE, 1);
LABEL_43:
  if ((v5 & 0x1000) == 0)
  {
    goto LABEL_46;
  }

  if (!XPC_ACTIVITY_DISK_INTENSIVE)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_DISK_INTENSIVE, 1);
LABEL_46:
  if ((v5 & 0x4000) == 0)
  {
    return;
  }

  if (!XPC_ACTIVITY_COMMUNICATES_WITH_PAIRED_DEVICE)
  {
LABEL_63:
    __break(1u);
    return;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_COMMUNICATES_WITH_PAIRED_DEVICE, 1);
}

uint64_t sub_1009984C8()
{
  result = String.init(cString:)();
  qword_1016B0220 = result;
  *algn_1016B0228 = v1;
  return result;
}

uint64_t sub_1009984F8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x616E65746E69616DLL;
  }

  else
  {
    v3 = 0x7974696C697475;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xEB0000000065636ELL;
  }

  if (*a2)
  {
    v5 = 0x616E65746E69616DLL;
  }

  else
  {
    v5 = 0x7974696C697475;
  }

  if (*a2)
  {
    v6 = 0xEB0000000065636ELL;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1009985A8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100998634(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1009986AC(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100998734@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10160A3A0, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_100998794(uint64_t *a1@<X8>)
{
  v2 = 0x7974696C697475;
  if (*v1)
  {
    v2 = 0x616E65746E69616DLL;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEB0000000065636ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10099888C()
{
  if (*v0)
  {
    return 0x6E65746E69616D2ELL;
  }

  else
  {
    return 0x7974696C6974752ELL;
  }
}

uint64_t sub_100998980(__int16 a1)
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

  v2 = sub_100A5B2CC(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_100A5B2CC((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x614E7265776F702ELL;
  *(v5 + 5) = 0xE900000000000070;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_100A5B2CC((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x766544656B61772ELL;
    *(v8 + 5) = 0xEB00000000656369;
  }

LABEL_12:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_100A5B2CC((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 0xD00000000000001ALL;
    *(v11 + 5) = 0x8000000101366FC0;
  }

  if ((a1 & 8) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
    }

    v13 = *(v2 + 2);
    v12 = *(v2 + 3);
    if (v13 >= v12 >> 1)
    {
      v2 = sub_100A5B2CC((v12 > 1), v13 + 1, 1, v2);
    }

    *(v2 + 2) = v13 + 1;
    v14 = &v2[16 * v13];
    *(v14 + 4) = 0xD000000000000017;
    *(v14 + 5) = 0x8000000101366FA0;
  }

  if ((a1 & 0x10) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
    }

    v16 = *(v2 + 2);
    v15 = *(v2 + 3);
    if (v16 >= v15 >> 1)
    {
      v2 = sub_100A5B2CC((v15 > 1), v16 + 1, 1, v2);
    }

    *(v2 + 2) = v16 + 1;
    v17 = &v2[16 * v16];
    *(v17 + 4) = 0x657269757165722ELL;
    *(v17 + 5) = 0xEF417373616C4373;
    if ((a1 & 0x20) == 0)
    {
LABEL_26:
      if ((a1 & 0x40) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_46;
    }
  }

  else if ((a1 & 0x20) == 0)
  {
    goto LABEL_26;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
  }

  v19 = *(v2 + 2);
  v18 = *(v2 + 3);
  if (v19 >= v18 >> 1)
  {
    v2 = sub_100A5B2CC((v18 > 1), v19 + 1, 1, v2);
  }

  *(v2 + 2) = v19 + 1;
  v20 = &v2[16 * v19];
  *(v20 + 4) = 0x657269757165722ELL;
  *(v20 + 5) = 0xEF427373616C4373;
  if ((a1 & 0x40) == 0)
  {
LABEL_27:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_51;
  }

LABEL_46:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
  }

  v22 = *(v2 + 2);
  v21 = *(v2 + 3);
  if (v22 >= v21 >> 1)
  {
    v2 = sub_100A5B2CC((v21 > 1), v22 + 1, 1, v2);
  }

  *(v2 + 2) = v22 + 1;
  v23 = &v2[16 * v22];
  *(v23 + 4) = 0x657269757165722ELL;
  *(v23 + 5) = 0xEF437373616C4373;
  if ((a1 & 0x80) == 0)
  {
LABEL_28:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_56;
  }

LABEL_51:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
  }

  v25 = *(v2 + 2);
  v24 = *(v2 + 3);
  if (v25 >= v24 >> 1)
  {
    v2 = sub_100A5B2CC((v24 > 1), v25 + 1, 1, v2);
  }

  *(v2 + 2) = v25 + 1;
  v26 = &v2[16 * v25];
  *(v26 + 4) = 0xD000000000000010;
  *(v26 + 5) = 0x8000000101366F80;
  if ((a1 & 0x100) == 0)
  {
LABEL_29:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_61;
  }

LABEL_56:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
  }

  v28 = *(v2 + 2);
  v27 = *(v2 + 3);
  if (v28 >= v27 >> 1)
  {
    v2 = sub_100A5B2CC((v27 > 1), v28 + 1, 1, v2);
  }

  *(v2 + 2) = v28 + 1;
  v29 = &v2[16 * v28];
  *(v29 + 4) = 0xD00000000000001BLL;
  *(v29 + 5) = 0x8000000101366F60;
  if ((a1 & 0x200) == 0)
  {
LABEL_30:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_66;
  }

LABEL_61:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
  }

  v31 = *(v2 + 2);
  v30 = *(v2 + 3);
  if (v31 >= v30 >> 1)
  {
    v2 = sub_100A5B2CC((v30 > 1), v31 + 1, 1, v2);
  }

  *(v2 + 2) = v31 + 1;
  v32 = &v2[16 * v31];
  strcpy(v32 + 32, ".allowBattery");
  *(v32 + 23) = -4864;
  if ((a1 & 0x400) == 0)
  {
LABEL_31:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_71;
  }

LABEL_66:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
  }

  v34 = *(v2 + 2);
  v33 = *(v2 + 3);
  if (v34 >= v33 >> 1)
  {
    v2 = sub_100A5B2CC((v33 > 1), v34 + 1, 1, v2);
  }

  *(v2 + 2) = v34 + 1;
  v35 = &v2[16 * v34];
  *(v35 + 4) = 0xD000000000000010;
  *(v35 + 5) = 0x8000000101366F40;
  if ((a1 & 0x800) == 0)
  {
LABEL_32:
    if ((a1 & 0x1000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_76;
  }

LABEL_71:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
  }

  v37 = *(v2 + 2);
  v36 = *(v2 + 3);
  if (v37 >= v36 >> 1)
  {
    v2 = sub_100A5B2CC((v36 > 1), v37 + 1, 1, v2);
  }

  *(v2 + 2) = v37 + 1;
  v38 = &v2[16 * v37];
  strcpy(v38 + 32, ".cpuIntensive");
  *(v38 + 23) = -4864;
  if ((a1 & 0x1000) == 0)
  {
LABEL_33:
    if ((a1 & 0x2000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_81;
  }

LABEL_76:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
  }

  v40 = *(v2 + 2);
  v39 = *(v2 + 3);
  if (v40 >= v39 >> 1)
  {
    v2 = sub_100A5B2CC((v39 > 1), v40 + 1, 1, v2);
  }

  *(v2 + 2) = v40 + 1;
  v41 = &v2[16 * v40];
  strcpy(v41 + 32, ".diskIntensive");
  v41[47] = -18;
  if ((a1 & 0x2000) == 0)
  {
LABEL_34:
    if ((a1 & 0x4000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_86;
  }

LABEL_81:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
  }

  v43 = *(v2 + 2);
  v42 = *(v2 + 3);
  if (v43 >= v42 >> 1)
  {
    v2 = sub_100A5B2CC((v42 > 1), v43 + 1, 1, v2);
  }

  *(v2 + 2) = v43 + 1;
  v44 = &v2[16 * v43];
  *(v44 + 4) = 0xD000000000000019;
  *(v44 + 5) = 0x8000000101366F20;
  if ((a1 & 0x4000) != 0)
  {
LABEL_86:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
    }

    v46 = *(v2 + 2);
    v45 = *(v2 + 3);
    if (v46 >= v45 >> 1)
    {
      v2 = sub_100A5B2CC((v45 > 1), v46 + 1, 1, v2);
    }

    *(v2 + 2) = v46 + 1;
    v47 = &v2[16 * v46];
    *(v47 + 4) = 0xD000000000000012;
    *(v47 + 5) = 0x8000000101366F00;
  }

LABEL_91:
  sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
  sub_10012B138();
  v48 = BidirectionalCollection<>.joined(separator:)();
  v50 = v49;

  v51._countAndFlagsBits = v48;
  v51._object = v50;
  String.append(_:)(v51);

  v52._countAndFlagsBits = 93;
  v52._object = 0xE100000000000000;
  String.append(_:)(v52);
  return 91;
}

uint64_t sub_1009992C8(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016B0400, &qword_1013CD798);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_10099A484();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = *v3;
  v16 = 0;
  sub_10099A580();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = *(v3 + 4);
    v10[15] = 5;
    sub_10099A5D4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100999528()
{
  v1 = *v0;
  v2 = 0x797469726F697270;
  v3 = 0x7265506563617267;
  v4 = 0x6C61767265746E69;
  if (v1 != 4)
  {
    v4 = 0x736E6F6974706FLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E69746165706572;
  if (v1 != 1)
  {
    v5 = 0x79616C6564;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1009995EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100999FEC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100999614(uint64_t a1)
{
  v2 = sub_10099A484();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100999650(uint64_t a1)
{
  v2 = sub_10099A484();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10099968C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10099A1F0(a2, v6);
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

BOOL sub_1009996EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_100999924(v5, v7);
}

uint64_t sub_100999738()
{

  sub_100477574(v0 + 80);
  sub_1000BB27C(*(v0 + 96), *(v0 + 104));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for XPCActivity()
{
  return objc_opt_self();
}

{
  return type metadata accessor for XPCActivity();
}

uint64_t sub_1009997D4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[40])
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

uint64_t sub_100999818(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_100999878()
{
  result = qword_1016B03C0;
  if (!qword_1016B03C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B03C0);
  }

  return result;
}

uint64_t sub_1009998F0@<X0>(uint64_t *a1@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

BOOL sub_100999924(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == 0;
  if (*a1)
  {
    v5 = 0x616E65746E69616DLL;
  }

  else
  {
    v5 = 0x7974696C697475;
  }

  if (v4)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xEB0000000065636ELL;
  }

  if (*a2)
  {
    v7 = 0x616E65746E69616DLL;
  }

  else
  {
    v7 = 0x7974696C697475;
  }

  if (*a2)
  {
    v8 = 0xEB0000000065636ELL;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v5 == v7 && v6 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  if (((*(a1 + 1) ^ *(a2 + 1)) & 1) == 0 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return *(a1 + 32) == *(a2 + 32);
  }

  return 0;
}

unint64_t sub_100999A48()
{
  result = qword_1016B03D8;
  if (!qword_1016B03D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B03D8);
  }

  return result;
}

uint64_t sub_100999A9C(uint64_t result)
{
  if (!XPC_ACTIVITY_POWER_NAP)
  {
    __break(1u);
    goto LABEL_49;
  }

  v1 = result;
  result = xpc_dictionary_get_BOOL(result, XPC_ACTIVITY_POWER_NAP);
  if (!XPC_ACTIVITY_REQUIRE_SIGNIFICANT_USER_INACTIVITY)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v2 = result;
  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_REQUIRE_SIGNIFICANT_USER_INACTIVITY);
  if (!XPC_ACTIVITY_SHOULD_WAKE_DEVICE)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v3 = result;
  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_SHOULD_WAKE_DEVICE);
  if (!XPC_ACTIVITY_USES_DUET_POWER_BUDGETING)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v4 = result;
  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_USES_DUET_POWER_BUDGETING);
  if (!XPC_ACTIVITY_REQUIRES_CLASS_A)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v5 = result;
  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_REQUIRES_CLASS_A);
  if (!XPC_ACTIVITY_REQUIRES_CLASS_B)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v6 = result;
  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_REQUIRES_CLASS_B);
  if (!XPC_ACTIVITY_REQUIRES_CLASS_C)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v7 = result;
  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_REQUIRES_CLASS_C);
  if (!XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v8 = result;
  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY);
  if (!XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v9 = v2;
  if (v3)
  {
    v9 = v2 | 4;
  }

  if (v4)
  {
    v9 |= 2uLL;
  }

  if (v5)
  {
    v9 |= 8uLL;
  }

  if (v6)
  {
    v9 |= 0x10uLL;
  }

  if (v7)
  {
    v9 |= 0x20uLL;
  }

  if (v8)
  {
    v9 |= 0x40uLL;
  }

  if (result)
  {
    v10 = v9 | 0x80;
  }

  else
  {
    v10 = v9;
  }

  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY);
  if (result)
  {
    v11 = v10 | 0x100;
  }

  else
  {
    v11 = v10;
  }

  if (!XPC_ACTIVITY_DUET_ACTIVITY_SCHEDULER_DATA)
  {
    goto LABEL_57;
  }

  v12 = xpc_dictionary_get_dictionary(v1, XPC_ACTIVITY_DUET_ACTIVITY_SCHEDULER_DATA);
  if (v12)
  {
    v13 = v12;
    v14 = String.utf8CString.getter();
    string = xpc_dictionary_get_string(v13, (v14 + 32));

    swift_unknownObjectRelease();
    if (string)
    {
      v11 |= 0x2000uLL;
    }
  }

  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_ALLOW_BATTERY);
  if (!XPC_ACTIVITY_MEMORY_INTENSIVE)
  {
    goto LABEL_58;
  }

  v16 = result;
  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_MEMORY_INTENSIVE);
  if (!XPC_ACTIVITY_CPU_INTENSIVE)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v17 = result;
  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_CPU_INTENSIVE);
  if (!XPC_ACTIVITY_DISK_INTENSIVE)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v18 = result;
  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_DISK_INTENSIVE);
  if (!XPC_ACTIVITY_COMMUNICATES_WITH_PAIRED_DEVICE)
  {
LABEL_61:
    __break(1u);
    return result;
  }

  v19 = v11 | 0x200;
  if (!v16)
  {
    v19 = v11;
  }

  if (v17)
  {
    v19 |= 0x400uLL;
  }

  if (v18)
  {
    v19 |= 0x800uLL;
  }

  if (result)
  {
    v20 = v19 | 0x1000;
  }

  else
  {
    v20 = v19;
  }

  v21 = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_COMMUNICATES_WITH_PAIRED_DEVICE);
  swift_unknownObjectRelease();
  if (v21)
  {
    return v20 | 0x4000;
  }

  else
  {
    return v20;
  }
}

uint64_t sub_100999DA4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (xpc_dictionary_get_string(a1, XPC_ACTIVITY_PRIORITY))
  {
    v4 = String.init(cString:)();
    if (qword_101694AF8 != -1)
    {
      v16 = v4;
      v17 = v5;
      swift_once();
      v4 = v16;
      v5 = v17;
    }

    if (v4 == qword_1016B0220 && v5 == *algn_1016B0228)
    {

      v8 = 0;
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v8 = ~v7 & 1;
    }

    v14 = xpc_dictionary_get_BOOL(a1, XPC_ACTIVITY_REPEATING);
    int64 = xpc_dictionary_get_int64(a1, XPC_ACTIVITY_DELAY);
    v10 = xpc_dictionary_get_int64(a1, XPC_ACTIVITY_GRACE_PERIOD);
    v11 = xpc_dictionary_get_int64(a1, XPC_ACTIVITY_INTERVAL);
    result = sub_100999A9C(a1);
    v15 = 256;
    if (!v14)
    {
      v15 = 0;
    }

    v13 = v15 | v8;
  }

  else
  {
    swift_unknownObjectRelease();
    int64 = 0;
    v10 = 0;
    v11 = 0;
    result = 0;
    v13 = 2;
  }

  *a2 = v13;
  a2[1] = int64;
  a2[2] = v10;
  a2[3] = v11;
  a2[4] = result;
  return result;
}

unint64_t sub_100999F28(unint64_t result)
{
  if (result >= 6)
  {
    _StringGuts.grow(_:)(38);

    v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v1);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100999FEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x797469726F697270 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69746165706572 && a2 == 0xE900000000000067 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79616C6564 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7265506563617267 && a2 == 0xEB00000000646F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_10099A1F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016B03E0, &qword_1013CD790);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_10099A484();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v23 = 0;
  sub_10099A4D8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v24;
  v22 = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = 2;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v20 = 3;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v19 = 4;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v18 = 5;
  sub_10099A52C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v11 = v17;
  result = sub_100007BAC(a1);
  *a2 = v9;
  *(a2 + 1) = v10 & 1;
  v13 = v15;
  *(a2 + 8) = v16;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  *(a2 + 32) = v11;
  return result;
}

unint64_t sub_10099A484()
{
  result = qword_1016B03E8;
  if (!qword_1016B03E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B03E8);
  }

  return result;
}

unint64_t sub_10099A4D8()
{
  result = qword_1016B03F0;
  if (!qword_1016B03F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B03F0);
  }

  return result;
}

unint64_t sub_10099A52C()
{
  result = qword_1016B03F8;
  if (!qword_1016B03F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B03F8);
  }

  return result;
}

unint64_t sub_10099A580()
{
  result = qword_1016B0408;
  if (!qword_1016B0408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0408);
  }

  return result;
}

unint64_t sub_10099A5D4()
{
  result = qword_1016B0410;
  if (!qword_1016B0410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0410);
  }

  return result;
}

unint64_t sub_10099A654@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_unknownObjectWeakAssign();
  *(v4 + 88) = 1;
  result = sub_1009979F4(v3);
  *a1 = result;
  return result;
}

unint64_t sub_10099A6AC()
{
  result = qword_1016B0420;
  if (!qword_1016B0420)
  {
    type metadata accessor for XPCActivity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0420);
  }

  return result;
}

unint64_t sub_10099A734()
{
  result = qword_1016B0428;
  if (!qword_1016B0428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0428);
  }

  return result;
}

unint64_t sub_10099A78C()
{
  result = qword_1016B0430;
  if (!qword_1016B0430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0430);
  }

  return result;
}

unint64_t sub_10099A7E4()
{
  result = qword_1016B0438;
  if (!qword_1016B0438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0438);
  }

  return result;
}

unint64_t sub_10099A83C()
{
  result = qword_1016B0440;
  if (!qword_1016B0440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0440);
  }

  return result;
}

unint64_t sub_10099A894()
{
  result = qword_1016B0448;
  if (!qword_1016B0448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0448);
  }

  return result;
}

unint64_t sub_10099A8EC()
{
  result = qword_1016B0450;
  if (!qword_1016B0450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0450);
  }

  return result;
}

unint64_t sub_10099A944()
{
  result = qword_1016B0458;
  if (!qword_1016B0458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0458);
  }

  return result;
}

unint64_t sub_10099A99C()
{
  result = qword_1016B0460;
  if (!qword_1016B0460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0460);
  }

  return result;
}

unint64_t sub_10099A9F0()
{
  result = qword_1016B0468;
  if (!qword_1016B0468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0468);
  }

  return result;
}

uint64_t type metadata accessor for BookmarkMetaData(uint64_t a1)
{
  result = qword_1016B04D8;
  if (!qword_1016B04D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10099AAEC(uint64_t a1)
{
  sub_1008848D8();
  if (v1 <= 0x3F)
  {
    sub_10099AB78(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10099AB78(uint64_t a1)
{
  if (!qword_1016B04E8)
  {
    type metadata accessor for KeyDropInterface.KeyAlignment(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1016B04E8);
    }
  }
}

__n128 sub_10099ABD0@<Q0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v62 = 0u;
  if (static Task<>.isCancelled.getter())
  {
    v12 = 0;
    v11 = 0;
    v7 = 0xF000000000000000;
    v25 = 0uLL;
    v26 = 0uLL;
  }

  else
  {
    v5 = *(v2 + 16);
    v6 = *(v2 + 48);
    v69[2] = *(v2 + 32);
    v69[3] = v6;
    v70 = *(v2 + 64);
    v7 = v70;
    v69[0] = *v2;
    v69[1] = v5;
    v9 = *v2;
    v8 = *(v2 + 8);
    v56 = *(v2 + 24);
    v58 = *(v2 + 16);
    v10 = *(v2 + 56);
    v54 = (v2 + 56);
    v11 = *(&v6 + 1);
    v12 = v6;
    sub_100429C24(v69, &v63);
    sub_100017D5C(v11, v7);
    sub_100017D5C(v10, v7);
    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    v63 = 0x7365547265646E75;
    v64 = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    v52 = v9;
    v53 = v8;
    v13 = sub_100A7563C(v10, v7, 1);
    v15 = v14;
    v16 = String.utf8Data.getter();
    v18 = v17;
    v19 = sub_100A79CBC(v13, v15, v16, v17, 72);
    v50 = v13;
    v51 = v15;
    sub_100495DF4(v19, v20, &v63);
    sub_100016590(v16, v18);
    v21 = v63;
    v22 = v64;
    if (v53 >> 60 == 15)
    {
      sub_100017D5C(v63, v64);
      v23 = sub_100A7A194(v58, v56, 0, 0);
      v28 = sub_100A7A73C(v23, 0, v21, v22);
      CCECCryptorRelease();
      sub_100016590(v21, v22);
      v29 = sub_100A7829C(v28, 0, 0);
      v57 = v21;
      v31 = v30;
      sub_100017D5C(v29, v30);
      v59 = v31;
      v35 = sub_10049C0AC(v29, v31);
      v46 = v36;
      CCECCryptorRelease();
      sub_100016590(v29, v59);
      v37 = v52;
      v38 = v53;
    }

    else
    {
      sub_1002DBC68(v52, v53);
      sub_100017D5C(v21, v22);
      v24 = sub_100A7A194(v52, v53, 0, 1);
      v32 = sub_100A7A73C(v24, 1uLL, v21, v22);
      CCECCryptorRelease();
      sub_100016590(v21, v22);
      v33 = sub_100A7829C(v32, 1, 0);
      v60 = v34;
      v47 = sub_100A7829C(v32, 0, 0);
      v45 = v40;
      sub_100017D5C(v33, v60);
      v43 = sub_10049BD68(v33, v60);
      v44 = v41;
      sub_100017D5C(v47, v45);
      v49 = sub_10049C0AC(v47, v45);
      v46 = v42;
      v57 = v21;
      CCECCryptorRelease();
      sub_100016590(v47, v45);
      sub_100016590(v33, v60);
      sub_100006654(v52, v53);
      v35 = v49;
      v37 = v43;
      v38 = v44;
    }

    v48 = v35;
    v63 = v37;
    v64 = v38;
    v65 = v35;
    v66 = v46;
    v67 = v50;
    v68 = v51;
    v39 = v37;
    sub_10099B218(&v63, (v3 + 48), v54, v71);
    v61 = v71[1];
    v62 = v71[0];
    v55 = v71[2];
    sub_100006654(v39, v38);
    sub_100016590(v48, v46);
    sub_100016590(v50, v51);
    sub_100016590(v57, v22);
    sub_100429C80(v69);
    sub_100016590(v10, v7);
    v26 = v55;
    v25 = v61;
  }

  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v7;
  result = v62;
  *(a2 + 24) = v62;
  *(a2 + 40) = v25;
  *(a2 + 56) = v26;
  return result;
}

uint64_t sub_10099B218@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a2 == -1)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    ++*a2;
    v21 = *(result + 32);
    v7 = *a3;
    v8 = a3[1];
    *a3 = v21;
    sub_10012BFDC(&v21, &v20);
    sub_100016590(v7, v8);
    v9 = String.utf8Data.getter();
    v11 = v10;
    v12 = sub_100A79CBC(v21, *(&v21 + 1), v9, v10, 32);
    if (v4)
    {
      return sub_100016590(v9, v11);
    }

    else
    {
      sub_1004A4714(v12, v13, &v20);
      sub_100016590(v9, v11);
      v19 = v20;
      v14 = v6[2];
      v15 = v6[3];
      v17 = *v6;
      v16 = v6[1];
      sub_100017D5C(v14, v15);
      result = sub_1002DBC68(v17, v16);
      *&v18 = v14;
      *(&v18 + 1) = v15;
      *(a4 + 16) = v18;
      *a4 = v19;
      *(a4 + 32) = v17;
      *(a4 + 40) = v16;
    }
  }

  return result;
}

__n128 sub_10099B358@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10099B374(uint64_t a1)
{
  v9 = v1;
  sub_10099ABD0(v7);
  v3 = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = v3;
  *(a1 + 64) = v8;
  v4 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v4;
  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_10099B404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_10099B4D0;

  return (sub_100864B9C)(a1, a2, a3, v3 + 16);
}

uint64_t sub_10099B4D0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10099B5CC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10, unint64_t a11)
{
  v11 = a8;
  v51 = a2;
  if (!a11)
  {
    sub_10099BA60();
    swift_allocError();
    swift_willThrow();
    sub_100429C08(a7, v11, a10);
    sub_100016590(a5, a6);
    sub_100016590(a3, a4);
    return sub_100006654(a1, v51);
  }

  if (a10 >> 60 == 15)
  {
    v17 = a8;
    sub_100017D5C(a5, a6);
    v11 = a5;
    v18 = a6;
    v19 = a11;
  }

  else
  {
    v19 = a11 - a7;
    if (a11 >= a7)
    {
      sub_100017D5C(a8, a10);
      sub_100017D5C(v11, a10);
      if (qword_101695010 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_1000076D4(v27, qword_10177C348);
      sub_100017D5C(v11, a10);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 134218240;
        sub_100429C08(a7, v11, a10);
        *(v30 + 4) = a7;
        result = sub_100429C08(a7, v11, a10);
        *(v30 + 12) = 2048;
        if (a11 < v19)
        {
          __break(1u);
          return result;
        }

        *(v30 + 14) = a11 - v19;
        _os_log_impl(&_mh_execute_header, v28, v29, "KeyGenerationHint hint.index:%llu saved %llu ratchet iterations", v30, 0x16u);
      }

      else
      {
        sub_100429C08(a7, v11, a10);
        sub_100429C08(a7, v11, a10);
      }

      v17 = v11;
      v18 = a10;
    }

    else
    {
      sub_100017D5C(a8, a10);
      if (qword_101695010 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_1000076D4(v22, qword_10177C348);
      sub_100017D5C(v11, a10);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 134218240;
        v26 = a7;
        *(v25 + 4) = a7;
        sub_100429C08(a7, v11, a10);
        *(v25 + 12) = 2048;
        *(v25 + 14) = a11;
        _os_log_impl(&_mh_execute_header, v23, v24, "Ignoring KeyGenerationHint: hint.index (%llu) > initialRatchetsToSkip(%llu)", v25, 0x16u);
      }

      else
      {
        v26 = a7;
        sub_100429C08(a7, v11, a10);
      }

      v17 = v11;
      sub_100429C08(v26, v11, a10);
      v19 = a11 - 1;
      sub_100017D5C(a5, a6);
      v11 = a5;
      v18 = a6;
    }
  }

  v31 = sub_100A7563C(v11, v18, v19);
  if (v38)
  {
    sub_100429C08(a7, v17, a10);
    sub_100006654(a1, v51);
    sub_100016590(a3, a4);
    sub_100016590(a5, a6);
    return sub_100016590(v11, v18);
  }

  else
  {
    v33 = v31;
    v34 = v32;
    sub_100429C08(a7, v17, a10);
    sub_100016590(v11, v18);
    *&v45 = a1;
    *(&v45 + 1) = v51;
    *&v46 = a3;
    *(&v46 + 1) = a4;
    *&v47 = a5;
    *(&v47 + 1) = a6;
    *&v48 = a11;
    *(&v48 + 1) = v33;
    v49 = v34;
    v50[0] = a1;
    v50[1] = v51;
    v50[2] = a3;
    v50[3] = a4;
    v50[4] = a5;
    v50[5] = a6;
    v50[6] = a11;
    v50[7] = v33;
    v50[8] = v34;
    sub_100429C24(&v45, v44);
    result = sub_100429C80(v50);
    v35 = v48;
    *(a9 + 32) = v47;
    *(a9 + 48) = v35;
    *(a9 + 64) = v49;
    v36 = v46;
    *a9 = v45;
    *(a9 + 16) = v36;
  }

  return result;
}

unint64_t sub_10099BA60()
{
  result = qword_1016B0520;
  if (!qword_1016B0520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0520);
  }

  return result;
}