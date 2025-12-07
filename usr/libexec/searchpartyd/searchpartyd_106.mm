uint64_t sub_100BA6B70()
{
  v1 = *(*v0 + 176);

  return _swift_task_switch(sub_100BA6C9C, v1, 0);
}

uint64_t sub_100BA6CB8()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 144);
  sub_100BA92A8(*(v0 + 136), type metadata accessor for WildModeAssociationRecord);
  sub_100BA92A8(v2, type metadata accessor for WildModeAssociationRecord);
  v3 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
    goto LABEL_25;
  }

  v4 = *(v0 + 216) + 1;
  if (v4 == *(v0 + 184))
  {
LABEL_3:
    if (qword_101694D10 == -1)
    {
LABEL_4:
      v5 = type metadata accessor for Logger();
      sub_1000076D4(v5, qword_10177BC88);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 134349056;
        *(v8 + 4) = v3;
        _os_log_impl(&_mh_execute_header, v6, v7, "Removed %{public}ld unstaged records.", v8, 0xCu);
      }

      v9 = *(v0 + 8);

      return v9();
    }

LABEL_25:
    swift_once();
    goto LABEL_4;
  }

  while (1)
  {
    *(v0 + 208) = v3;
    *(v0 + 216) = v4;
    *(v0 + 200) = v3;
    v12 = *(v0 + 144);
    v13 = *(v0 + 96);
    sub_100BA9240(*(v0 + 48) + ((*(v0 + 264) + 32) & ~*(v0 + 264)) + *(v0 + 192) * v4, v12, type metadata accessor for WildModeAssociationRecord);
    v14 = *(v12 + *(v13 + 64));
    if (v14 > 3)
    {
      if (*(v12 + *(v13 + 64)) > 6u)
      {
        if (v14 != 7)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      if (v14 != 5 && v14 != 6)
      {
        break;
      }
    }

LABEL_10:
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {
      goto LABEL_21;
    }

LABEL_11:
    sub_100BA92A8(*(v0 + 144), type metadata accessor for WildModeAssociationRecord);
    v4 = *(v0 + 216) + 1;
    if (v4 == *(v0 + 184))
    {
      goto LABEL_3;
    }
  }

LABEL_21:
  v15 = *(v0 + 176);

  return _swift_task_switch(sub_100BA5C48, v15, 0);
}

uint64_t sub_100BA706C()
{
  if (qword_101694D10 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177BC88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Cleanup unstaged records failure: Missing BeaconStoreActor!", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

void sub_100BA71B0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v91 = a2;
  v3 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v3 - 8);
  v105 = &v87 - v4;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v94 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016B7220, &qword_1013DBED8);
  __chkstk_darwin(v8 - 8);
  v108 = (&v87 - v9);
  v107 = type metadata accessor for UTInfoPublishRequestBody.State(0);
  v10 = *(v107 - 8);
  v11 = __chkstk_darwin(v107);
  v89 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v87 = &v87 - v13;
  v90 = type metadata accessor for HashAlgorithm();
  v14 = *(v90 - 8);
  __chkstk_darwin(v90);
  v16 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1000BC4D4(&unk_1016BC3A0, &unk_1013DBEE0);
  __chkstk_darwin(v102);
  v114 = &v87 - v17;
  v110 = type metadata accessor for WildModeAssociationRecord(0);
  v18 = *(a1 + v110[17]);
  v19 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v18 + 64);
  v23 = (v20 + 63) >> 6;
  v113 = v6 + 16;
  v100 = v6 + 48;
  v93 = (v6 + 32);
  v103 = v6;
  v95 = (v6 + 8);
  v99 = (v10 + 56);
  v88 = v10;
  v98 = (v10 + 48);
  v109 = v18;

  v24 = 0;
  v92 = _swiftEmptyArrayStorage;
  v96 = a1;
  v97 = v19;
  v106 = v14;
  v104 = v16;
  v101 = v23;
LABEL_4:
  v25 = v24;
  if (!v22)
  {
    goto LABEL_6;
  }

  do
  {
    v24 = v25;
LABEL_9:
    v26 = __clz(__rbit64(v22)) | (v24 << 6);
    v27 = *(*(v109 + 48) + v26);
    v28 = v103;
    v29 = *(v109 + 56) + *(v103 + 72) * v26;
    v30 = *(v102 + 48);
    v31 = v114;
    v112 = *(v103 + 16);
    v112(v114 + v30, v29, v5);
    *v31 = v27;
    v32 = a1;
    v33 = a1 + v110[19];
    v34 = v5;
    v35 = v105;
    sub_1000D3410(v33, v105);
    if ((*(v28 + 48))(v35, 1, v34) == 1)
    {
      v111 = v30;
      sub_10000B3A8(v35, &unk_101696900, &unk_10138B1E0);
      if (v27 > 3)
      {
        v36 = v107;
        v37 = v114;
        if (v27 > 5)
        {
          if (v27 == 6)
          {
            v38 = 0xE700000000000000;
            v39 = 0x6465726F6E6769;
          }

          else
          {
            v38 = 0xEA00000000006465;
            v39 = 0x7265766F63736964;
          }
        }

        else if (v27 == 4)
        {
          v38 = 0xE800000000000000;
          v39 = 0x6465676174736E75;
        }

        else
        {
          v38 = 0xE800000000000000;
          v39 = 0x7761726468746977;
        }
      }

      else
      {
        v36 = v107;
        v37 = v114;
        if (v27 > 1)
        {
          if (v27 == 2)
          {
            v38 = 0xE600000000000000;
            v39 = 0x796669746F6ELL;
          }

          else
          {
            v38 = 0xE600000000000000;
            v39 = 0x657461647075;
          }
        }

        else if (v27)
        {
          v38 = 0xE600000000000000;
          v39 = 0x646567617473;
        }

        else
        {
          v38 = 0xE700000000000000;
          v39 = 0x6E776F6E6B6E75;
        }
      }

      v45 = v108;
      v112(v108 + *(v36 + 20), v37 + v111, v34);
      v43 = 0;
      *v45 = v39;
      v45[1] = v38;
      v5 = v34;
      v44 = v45;
      a1 = v96;
    }

    else
    {
      v40 = v94;
      (*v93)(v94, v35, v34);
      v5 = v34;
      if (static Date.< infix(_:_:)())
      {
        a1 = v32;
        v111 = v30;
        if (v27 > 3)
        {
          v36 = v107;
          if (v27 > 5)
          {
            if (v27 == 6)
            {
              v41 = 0xE700000000000000;
              v42 = 0x6465726F6E6769;
            }

            else
            {
              v41 = 0xEA00000000006465;
              v42 = 0x7265766F63736964;
            }
          }

          else
          {
            v41 = 0xE800000000000000;
            if (v27 == 4)
            {
              v42 = 0x6465676174736E75;
            }

            else
            {
              v42 = 0x7761726468746977;
            }
          }
        }

        else
        {
          v36 = v107;
          if (v27 > 1)
          {
            v41 = 0xE600000000000000;
            if (v27 == 2)
            {
              v42 = 0x796669746F6ELL;
            }

            else
            {
              v42 = 0x657461647075;
            }
          }

          else if (v27)
          {
            v41 = 0xE600000000000000;
            v42 = 0x646567617473;
          }

          else
          {
            v41 = 0xE700000000000000;
            v42 = 0x6E776F6E6B6E75;
          }
        }

        (*v95)(v40, v5);
        v46 = v108;
        v37 = v114;
        v112(v108 + *(v36 + 20), v114 + v111, v5);
        v43 = 0;
        *v46 = v42;
        v46[1] = v41;
        v44 = v46;
      }

      else
      {
        (*v95)(v40, v34);
        v43 = 1;
        a1 = v32;
        v36 = v107;
        v44 = v108;
        v37 = v114;
      }
    }

    v22 &= v22 - 1;
    (*v99)(v44, v43, 1, v36);
    sub_10000B3A8(v37, &unk_1016BC3A0, &unk_1013DBEE0);
    v47 = (*v98)(v44, 1, v36);
    v14 = v106;
    v16 = v104;
    if (v47 != 1)
    {
      v48 = v44;
      v49 = v87;
      sub_100BA95D8(v48, v87, type metadata accessor for UTInfoPublishRequestBody.State);
      sub_100BA95D8(v49, v89, type metadata accessor for UTInfoPublishRequestBody.State);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v97;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v92 = sub_100A5EAE4(0, v92[2] + 1, 1, v92);
      }

      v52 = v92[2];
      v51 = v92[3];
      if (v52 >= v51 >> 1)
      {
        v92 = sub_100A5EAE4((v51 > 1), v52 + 1, 1, v92);
      }

      v53 = v92;
      v92[2] = v52 + 1;
      sub_100BA95D8(v89, v53 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v52, type metadata accessor for UTInfoPublishRequestBody.State);
      v23 = v101;
      goto LABEL_4;
    }

    sub_10000B3A8(v44, &qword_1016B7220, &qword_1013DBED8);
    v25 = v24;
    v23 = v101;
    v19 = v97;
  }

  while (v22);
  while (1)
  {
LABEL_6:
    v24 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      return;
    }

    if (v24 >= v23)
    {
      break;
    }

    v22 = *(v19 + 8 * v24);
    ++v25;
    if (v22)
    {
      goto LABEL_9;
    }
  }

  v54 = v110;
  v114 = *(a1 + v110[13]);
  v55 = (a1 + v110[22]);
  v113 = *v55;
  LODWORD(v109) = v55[1];
  v56 = a1;
  v57 = MACAddress.data.getter();
  v59 = v58;
  v60 = enum case for HashAlgorithm.sha256(_:);
  v61 = v16;
  v62 = v16;
  v63 = v90;
  v108 = *(v14 + 104);
  (v108)(v61, enum case for HashAlgorithm.sha256(_:), v90);
  v64 = Data.hash(algorithm:)();
  v111 = v65;
  v112 = v64;
  v66 = v59;
  v67 = v63;
  sub_100016590(v57, v66);
  v68 = *(v14 + 8);
  v68(v62, v67);
  v69 = v54[20];
  v70 = *(v56 + v54[21]);
  v117 = v109;
  v71 = (v56 + v69);
  v72 = *(v56 + v69 + 8);
  if (((v72 >> 60) | 4) == 0xF)
  {
    v73 = 0;
    v74 = 0;
  }

  else
  {
    v75 = v67;
    v76 = *v71;
    (v108)(v62, v60, v75);
    sub_100017D5C(v76, v72);
    v77 = Data.hash(algorithm:)();
    v79 = v78;
    sub_100308D64(v76, v72);
    v68(v62, v75);
    v115 = v77;
    v116 = v79;
    sub_10025DB08();
    v73 = RawRepresentable<>.base64EncodedString(options:)();
    v74 = v80;
    sub_100016590(v115, v116);
  }

  v81 = (v114 << 24) | (v113 << 32);
  v82 = UUID.uuidString.getter();
  v83 = v81 | (v117 << 40);
  v84 = v91;
  *v91 = v73;
  v84[1] = v74;
  v84[2] = v92;
  v84[3] = v82;
  v84[4] = v85;
  v84[5] = v83 | 0x40202;
  v86 = v111;
  v84[6] = v112;
  v84[7] = v86;
  *(v84 + 64) = v70;
}

uint64_t sub_100BA7CC0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Date();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();
  v6 = *(type metadata accessor for WildModeAssociationRecord(0) - 8);
  v3[9] = v6;
  v3[10] = *(v6 + 64);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[13] = v7;
  *v7 = v3;
  v7[1] = sub_100BA7E28;

  return daemon.getter();
}

uint64_t sub_100BA7E28(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 112) = a1;

  v3 = swift_task_alloc();
  *(v2 + 120) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100BA9404(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100BA9404(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_100BA800C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100BA800C(uint64_t a1)
{
  v3 = *v2;
  v3[16] = a1;
  v3[17] = v1;

  if (v1)
  {
    v4 = v3[4];
    v5 = sub_100BA87C4;
  }

  else
  {
    v6 = v3[4];

    v5 = sub_100BA8134;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100BA8134()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v0 + 144) = v2;
  v3 = *(v0 + 128);
  if (v2)
  {
    v5 = *(v0 + 64);
    v4 = *(v0 + 72);
    v6 = *(v4 + 80);
    *(v0 + 192) = v6;
    *(v0 + 152) = *(v4 + 72);
    *(v0 + 160) = 0;
    v7 = *(v0 + 48);
    v8 = *(v0 + 40);
    v9 = *(v0 + 24);
    sub_100BA9240(v1 + ((v6 + 32) & ~v6), *(v0 + 96), type metadata accessor for WildModeAssociationRecord);
    (*(v7 + 16))(v5, v9, v8);
    v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v11 = swift_allocObject();
    *(v0 + 168) = v11;
    (*(v7 + 32))(v11 + v10, v5, v8);

    return _swift_task_switch(sub_100BA82C8, v3, 0);
  }

  else
  {

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_100BA82C8()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 128);
  v3 = *(v0 + 88);
  v4 = (*(v0 + 192) + 24) & ~*(v0 + 192);
  v5 = (*(v0 + 80) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100BA9240(*(v0 + 96), v3, type metadata accessor for WildModeAssociationRecord);
  v6 = swift_allocObject();
  *(v0 + 176) = v6;
  *(v6 + 16) = v2;
  sub_100BA95D8(v3, v6 + v4, type metadata accessor for WildModeAssociationRecord);
  v7 = (v6 + v5);
  *v7 = sub_100BA94C0;
  v7[1] = v1;
  v8 = (v6 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v8 = SharingCircleWildAdvertisementKey.init(key:);
  v8[1] = 0;

  v9 = swift_task_alloc();
  *(v0 + 184) = v9;
  *v9 = v0;
  v9[1] = sub_100BA847C;

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_100BA9530, v6, &type metadata for () + 1);
}

uint64_t sub_100BA847C()
{
  v1 = *(*v0 + 128);

  return _swift_task_switch(sub_100BA85A8, v1, 0);
}

uint64_t sub_100BA85A8()
{
  v1 = *(v0 + 32);

  return _swift_task_switch(sub_100BA8614, v1, 0);
}

uint64_t sub_100BA8614()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 160) + 1;
  sub_100BA92A8(*(v0 + 96), type metadata accessor for WildModeAssociationRecord);
  if (v2 == v1)
  {

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 152);
    v6 = *(v0 + 160) + 1;
    *(v0 + 160) = v6;
    v7 = *(v0 + 128);
    v8 = *(v0 + 64);
    v9 = *(v0 + 40);
    v10 = *(v0 + 48);
    v11 = *(v0 + 24);
    sub_100BA9240(*(v0 + 16) + ((*(v0 + 192) + 32) & ~*(v0 + 192)) + v5 * v6, *(v0 + 96), type metadata accessor for WildModeAssociationRecord);
    (*(v10 + 16))(v8, v11, v9);
    v12 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v13 = swift_allocObject();
    *(v0 + 168) = v13;
    (*(v10 + 32))(v13 + v12, v8, v9);

    return _swift_task_switch(sub_100BA82C8, v7, 0);
  }
}

uint64_t sub_100BA87C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BA8850(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v19 - v9;
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v12, a2, v13);
  v15 = *(v14 + 56);
  v15(v12, 0, 1, v13);
  sub_1000D3410(v12, v7);
  v16 = *(v14 + 48);
  if (v16(v7, 1, v13) == 1)
  {
    static Date.trustedNow.getter(v10);
    sub_10000B3A8(v12, &unk_101696900, &unk_10138B1E0);
    if (v16(v7, 1, v13) != 1)
    {
      sub_10000B3A8(v7, &unk_101696900, &unk_10138B1E0);
    }
  }

  else
  {
    sub_10000B3A8(v12, &unk_101696900, &unk_10138B1E0);
    (*(v14 + 32))(v10, v7, v13);
  }

  v15(v10, 0, 1, v13);
  v17 = type metadata accessor for WildModeAssociationRecord(0);
  return sub_1008CCF08(v10, a1 + *(v17 + 76));
}

uint64_t sub_100BA8AA8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_100BA52E8();
}

uint64_t sub_100BA8B74()
{
  v1 = *(v0[6] + 144);
  v0[7] = v1;
  v2 = swift_allocObject();
  v0[8] = v2;
  *(v2 + 16) = v1;
  swift_retain_n();
  v3 = swift_task_alloc();
  v0[9] = v3;
  v4 = sub_1000BC4D4(&unk_1016969C0, &qword_101395690);
  *v3 = v0;
  v3[1] = sub_100BA8C80;

  return unsafeBlocking<A>(_:)(v0 + 12, sub_100BA91A0, v2, v4);
}

uint64_t sub_100BA8C80()
{
  v1 = *(*v0 + 48);

  return _swift_task_switch(sub_100BA8DAC, v1, 0);
}

uint64_t sub_100BA8DAC()
{
  v4 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_100BA8E78;
  v2 = *(v0 + 48);

  return v4(&unk_1013DBEB0, v2);
}

uint64_t sub_100BA8E78()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_100BA8FBC;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_1004BCEC0;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100BA8FBC()
{
  v12 = v0;

  if (qword_101694D10 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177BC88);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_1000136BC(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Records Publish error: %{public}s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100BA91A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_100BA1FD0();
}

uint64_t sub_100BA9240(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100BA92A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100BA9308()
{
  result = qword_1016B7208;
  if (!qword_1016B7208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B7208);
  }

  return result;
}

unint64_t sub_100BA935C()
{
  result = qword_1016B7210;
  if (!qword_1016B7210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B7210);
  }

  return result;
}

unint64_t sub_100BA93B0()
{
  result = qword_1016B7218;
  if (!qword_1016B7218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B7218);
  }

  return result;
}

uint64_t sub_100BA9404(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void *sub_100BA944C()
{
  type metadata accessor for WildModeAssociationRecord(0);

  return sub_100E72414();
}

uint64_t sub_100BA94C0(uint64_t a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100BA8850(a1, v4);
}

uint64_t sub_100BA9530()
{
  v1 = *(type metadata accessor for WildModeAssociationRecord(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1010E1CB0(v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_100BA95D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100BA9654()
{
  result = qword_1016B7228;
  if (!qword_1016B7228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B7228);
  }

  return result;
}

uint64_t Device.identifier.getter()
{
  v0 = sub_1000BC4D4(&unk_1016B7C30, &qword_1013DBFD0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  Device.id.getter();
  Identifier.id.getter();
  return (*(v1 + 8))(v3, v0);
}

uint64_t Device.transport.getter@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for MACAddress();
  a1[4] = sub_100BAB760(&qword_10169EED0, 255, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
  sub_1000280DC(a1);
  return Device.btAddress.getter();
}

uint64_t Device.battery.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000BC4D4(&qword_1016B7230, &qword_1013DBFD8);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v15 - v6;
  Device.batteryLevel.getter();
  v8 = type metadata accessor for ObjectBatteryState();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    v10 = &enum case for BatteryLevel.unknown(_:);
  }

  else
  {
    sub_100BA9A00(v7, v5);
    v11 = (*(v9 + 88))(v5, v8);
    if (v11 == enum case for ObjectBatteryState.low(_:))
    {
      v10 = &enum case for BatteryLevel.low(_:);
    }

    else if (v11 == enum case for ObjectBatteryState.critical(_:))
    {
      v10 = &enum case for BatteryLevel.critical(_:);
    }

    else
    {
      (*(v9 + 8))(v5, v8);
      v10 = &enum case for BatteryLevel.normal(_:);
    }
  }

  v12 = *v10;
  v13 = type metadata accessor for BatteryLevel();
  (*(*(v13 - 8) + 104))(a1, v12, v13);
  return sub_100BA9A70(v7);
}

uint64_t sub_100BA9A00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016B7230, &qword_1013DBFD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100BA9A70(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016B7230, &qword_1013DBFD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100BA9AE4(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 144);
  if (v3)
  {
    v4 = v3;
    v5 = [v4 name];
    if (v5)
    {
      v6 = v5;
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = [v4 roleId];
    v11 = [v4 roleEmoji];
    if (v11)
    {
      v12 = v11;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
    }

    else
    {

      v13 = 0;
      v15 = 0;
    }

    v16 = type metadata accessor for PairingConfig(0);
    *(a1 + 24) = v16;
    *(a1 + 32) = sub_100BAB760(&qword_1016B7408, 255, type metadata accessor for PairingConfig, &unk_1013DDF28);
    v17 = sub_1000280DC(a1);
    v18 = *(v16 + 28);
    v19 = type metadata accessor for AccessoryProductInfo(0);
    (*(*(v19 - 8) + 56))(v17 + v18, 1, 1, v19);
    *v17 = v7;
    v17[1] = v9;
    v17[2] = v10;
    v17[3] = v13;
    v17[4] = v15;
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }
}

uint64_t sub_100BA9C90(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for BatteryLevel();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v5 = type metadata accessor for DetectedAccessory();
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_100BA9E14, v1, 0);
}

uint64_t sub_100BA9E14(uint64_t a1)
{
  v3 = *(v1 + 136);
  v2 = *(v1 + 144);
  v4 = *(v1 + 128);
  type metadata accessor for AirTagPairingInfoStore();
  sub_100BAB760(&qword_1016B2BC8, v5, type metadata accessor for AirTagPairingInfoStore, &unk_1013DC0C8);
  PairingInfoStore.accessory.getter();
  v6 = (*(v3 + 88))(v2, v4);
  v7 = *(v1 + 136);
  v8 = *(v1 + 144);
  v9 = *(v1 + 128);
  if (v6 != enum case for DetectedAccessory.single(_:))
  {
    (*(v7 + 8))(*(v1 + 144), v9);
    v14 = type metadata accessor for PairingCoordinatorError();
    sub_100BAB760(&qword_1016B31E0, 255, &type metadata accessor for PairingCoordinatorError, &protocol conformance descriptor for PairingCoordinatorError);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, enum case for PairingCoordinatorError.notAllowedForMultiDetection(_:), v14);
    swift_willThrow();
    goto LABEL_6;
  }

  v10 = *(v1 + 64);
  (*(v7 + 96))(*(v1 + 144), v9);
  sub_10000A748(v8, v1 + 16);
  sub_1000035D0((v1 + 16), *(v1 + 40));
  dispatch thunk of Accessory.identifier.getter();
  if (*(v10 + 120) > 1u)
  {
    if (*(v10 + 120) == 2)
    {
      v18 = 2;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    if (!*(v10 + 120))
    {
      v12 = *(v1 + 112);
      v11 = *(v1 + 120);
      v13 = *(v1 + 104);
      sub_100BAB70C();
      swift_allocError();
      swift_willThrow();
      (*(v12 + 8))(v11, v13);
      sub_100007BAC((v1 + 16));
LABEL_6:

      v16 = *(v1 + 8);

      return v16();
    }

    v18 = 1;
  }

  *(v1 + 152) = v18;
  sub_1000035D0((v1 + 16), *(v1 + 40));
  *(v1 + 232) = dispatch thunk of Accessory.colorCode.getter();
  if (MKBGetDeviceLockState() == 2 || (v19 = MKBGetDeviceLockState(), v20 = 0, v19 == 1))
  {
    v20 = 1;
  }

  *(v1 + 160) = v20;
  v22 = *(v1 + 88);
  v21 = *(v1 + 96);
  v23 = *(v1 + 72);
  v24 = *(v1 + 80);
  sub_1000035D0((v1 + 16), *(v1 + 40));
  *(v1 + 168) = dispatch thunk of Accessory.engravingData.getter();
  *(v1 + 176) = v25;
  sub_1000035D0((v1 + 16), *(v1 + 40));
  dispatch thunk of Accessory.battery.getter();
  v26 = *(v24 + 104);
  v26(v22, enum case for BatteryLevel.unknown(_:), v23);
  v27 = static BatteryLevel.== infix(_:_:)();
  v28 = *(v24 + 8);
  v28(v22, v23);
  v28(v21, v23);
  if (v27)
  {
    v29 = 2;
  }

  else
  {
    v31 = *(v1 + 88);
    v30 = *(v1 + 96);
    v32 = *(v1 + 72);
    sub_1000035D0((v1 + 16), *(v1 + 40));
    dispatch thunk of Accessory.battery.getter();
    v26(v31, enum case for BatteryLevel.critical(_:), v32);
    v33 = static BatteryLevel.== infix(_:_:)();
    v28(v31, v32);
    v28(v30, v32);
    v29 = v33 & 1;
  }

  *(v1 + 236) = v29;
  v34 = swift_task_alloc();
  *(v1 + 184) = v34;
  *v34 = v1;
  v34[1] = sub_100BAA2DC;

  return daemon.getter();
}

uint64_t sub_100BAA2DC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 192) = a1;

  v3 = swift_task_alloc();
  *(v2 + 200) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100BAB760(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100BAB760(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_100BAA4C0;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100BAA4C0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 208) = v1;

  if (v1)
  {
    v6 = v4[21];
    v5 = v4[22];
    v7 = v4[8];

    sub_100006654(v6, v5);
    v8 = sub_100BAA974;
    v9 = v7;
  }

  else
  {

    v4[27] = a1;
    v8 = sub_100BAA628;
    v9 = a1;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_100BAA628()
{
  v1 = swift_task_alloc();
  *(v0 + 224) = v1;
  *v1 = v0;
  v1[1] = sub_100BAA6BC;

  return sub_100A9A4DC();
}

uint64_t sub_100BAA6BC(char a1)
{
  v2 = *(*v1 + 64);
  *(*v1 + 237) = a1;

  return _swift_task_switch(sub_100BAA7D4, v2, 0);
}

uint64_t sub_100BAA7D4()
{
  v16 = *(v0 + 237);
  v15 = *(v0 + 236);
  v1 = *(v0 + 168);
  v14 = *(v0 + 176);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = *(v0 + 232);
  v5 = *(v0 + 112);
  v6 = *(v0 + 120);
  v7 = *(v0 + 104);
  v8 = *(v0 + 56);

  v9 = type metadata accessor for ProximityPairingInfo(0);
  v8[3] = v9;
  v8[4] = sub_100BAB760(&qword_1016A6DF0, 255, type metadata accessor for ProximityPairingInfo, &unk_1013E0CF0);
  v10 = sub_1000280DC(v8);
  (*(v5 + 32))(v10, v6, v7);
  *(v10 + v9[5]) = v3;
  *(v10 + v9[6]) = v4;
  *(v10 + v9[7]) = v2;
  v11 = (v10 + v9[8]);
  *v11 = v1;
  v11[1] = v14;
  *(v10 + v9[9]) = v15;
  *(v10 + v9[10]) = v16;
  *(v10 + v9[11]) = 0;
  sub_100007BAC((v0 + 16));

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100BAA974()
{
  (*(v0[14] + 8))(v0[15], v0[13]);
  sub_100007BAC(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100BAAA20@<X0>(void *a1@<X8>)
{
  v3 = static Data.random(bytes:)();
  v5 = v4;
  v6 = type metadata accessor for AccessoryPairingInfo(0);
  swift_allocObject();
  sub_100017D5C(v3, v5);
  v7 = sub_10024C9E8(v3, v5);
  if (v7)
  {
    *(v7 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productID) = *(v1 + 121);
    a1[3] = v6;
    v8 = v7;
    a1[4] = sub_100BAB760(&qword_1016ACE88, 255, type metadata accessor for AccessoryPairingInfo, &unk_1013DC628);
    result = sub_100016590(v3, v5);
    *a1 = v8;
  }

  else
  {
    sub_100BAB6B8();
    swift_allocError();
    *v10 = 3;
    swift_willThrow();
    return sub_100016590(v3, v5);
  }

  return result;
}

uint64_t sub_100BAAB58(uint64_t a1, char a2, char a3)
{
  swift_defaultActor_initialize();
  *(v3 + 128) = 0;
  *(v3 + 136) = 257;
  *(v3 + 144) = 0;
  *(v3 + 152) = _swiftEmptyArrayStorage;
  *(v3 + 160) = 0;
  *(v3 + 112) = a1;
  *(v3 + 120) = a2;
  *(v3 + 121) = a3;
  return v3;
}

uint64_t sub_100BAABBC()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100BAAC80@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 128);
}

uint64_t sub_100BAACC8(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 128) = v2;
}

void sub_100BAADA4(char *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 136) = v2;
}

void sub_100BAAE78(char *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 137) = v2;
}

id sub_100BAAF14@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 144);
  *a1 = v3;

  return v3;
}

void sub_100BAAF68(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 144);
  *(v1 + 144) = v2;
}

uint64_t sub_100BAB00C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AirTagPairingInfoStore();

  return PairingInfoStore.accessory.getter();
}

double sub_100BAB054()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_100BAB08C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
}

uint64_t sub_100BAB124()
{
  v0 = type metadata accessor for AirTagPairingInfoStore();
  v2 = sub_100BAB760(&qword_1016B73F0, v1, type metadata accessor for AirTagPairingInfoStore, &unk_1013DC190);

  return TypedPairingInfoStore.productIDValue.getter(v0, v2);
}

uint64_t sub_100BAB1C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = type metadata accessor for AirTagPairingInfoStore();
  v5 = sub_100BAB760(&qword_1016B73F0, v4, type metadata accessor for AirTagPairingInfoStore, &unk_1013DC190);

  return a3(v3, v5);
}

uint64_t sub_100BAB270()
{
  v0 = type metadata accessor for AirTagPairingInfoStore();
  v2 = sub_100BAB760(&qword_1016B73F0, v1, type metadata accessor for AirTagPairingInfoStore, &unk_1013DC190);

  return TypedPairingInfoStore.pairingPolicyInformationValue.getter(v0, v2);
}

uint64_t sub_100BAB2F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014650;

  return sub_100BA9C90(a1);
}

double sub_100BAB3A0()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_100BAB3D8(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 160) = a1;
}

uint64_t sub_100BAB4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = type metadata accessor for AirTagPairingInfoStore();
  v12 = sub_100BAB760(&qword_1016B73F0, v11, type metadata accessor for AirTagPairingInfoStore, &unk_1013DC190);
  return a6(a1, v10, a2, v12, a3);
}

unint64_t sub_100BAB6B8()
{
  result = qword_1016B73F8;
  if (!qword_1016B73F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B73F8);
  }

  return result;
}

unint64_t sub_100BAB70C()
{
  result = qword_1016B7400;
  if (!qword_1016B7400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B7400);
  }

  return result;
}

uint64_t sub_100BAB760(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_100BAB7CC()
{
  result = qword_1016B7410;
  if (!qword_1016B7410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B7410);
  }

  return result;
}

uint64_t sub_100BAB820(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for MACAddress();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for CentralManager.State();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_100BAB93C, v1, 0);
}

uint64_t sub_100BAB93C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v0[10] = *(v0[3] + 112);
  (*(v2 + 104))(v1, enum case for CentralManager.State.poweredOn(_:), v3);
  v4 = swift_task_alloc();
  v0[11] = v4;
  v5 = type metadata accessor for CentralManager();
  v6 = sub_100BAFD80(&unk_1016C1160, 255, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  *v4 = v0;
  v4[1] = sub_100BABA58;
  v7 = v0[9];

  return CentralManagerProtocol.await(state:)(v7, v5, v6);
}

uint64_t sub_100BABA58()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  *(*v1 + 96) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 24);
  if (v0)
  {
    v7 = sub_100BAC0C0;
  }

  else
  {
    v7 = sub_100BABBE0;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100BABBE0()
{
  v23 = v0;
  if (qword_101694D20 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016B7418);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136446210;
    sub_100BAFD80(&qword_1016A4210, 255, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v22);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Retrieving peripheral matching macAddress: %{public}s", v12, 0xCu);
    sub_100007BAC(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v21 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:) + async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:));
  v18 = swift_task_alloc();
  v0[13] = v18;
  *v18 = v0;
  v18[1] = sub_100BABE6C;
  v19 = v0[2];

  return v21(v19);
}

uint64_t sub_100BABE6C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 112) = a1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v3 + 24);

    return _swift_task_switch(sub_100BABFC8, v7, 0);
  }
}

uint64_t sub_100BABFC8()
{
  v1 = *(v0 + 112);
  if (v1)
  {

    v2 = *(v0 + 8);

    return v2(v1);
  }

  else
  {
    sub_100BAFCC8();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_100BAC0C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BAC130(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for UUID();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697250, &unk_10138BDB0);
  v2[10] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697258, &unk_1013DC4C0);
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for Peripheral.ConnectionOptions();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697260, &unk_10138BDC0);
  v2[15] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697270, &qword_10138BDD0);
  v2[16] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[17] = v5;
  v2[18] = *(v5 - 8);
  v2[19] = swift_task_alloc();
  v6 = type metadata accessor for CentralManager.State();
  v2[20] = v6;
  v2[21] = *(v6 - 8);
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_100BAC3F0, v1, 0);
}

uint64_t sub_100BAC3F0()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v0[23] = *(v0[6] + 112);
  (*(v2 + 104))(v1, enum case for CentralManager.State.poweredOn(_:), v3);
  v4 = swift_task_alloc();
  v0[24] = v4;
  v5 = type metadata accessor for CentralManager();
  v6 = sub_100BAFD80(&unk_1016C1160, 255, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  *v4 = v0;
  v4[1] = sub_100BAC50C;
  v7 = v0[22];

  return CentralManagerProtocol.await(state:)(v7, v5, v6);
}

uint64_t sub_100BAC50C()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = v2[22];
  v4 = v2[21];
  v5 = v2[20];
  v6 = v2[6];
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = sub_100BADF7C;
  }

  else
  {
    v7 = sub_100BAC688;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100BAC688()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v4 = swift_allocObject();
  v0[26] = v4;
  *(v4 + 16) = xmmword_101385D80;
  Peripheral.id.getter();
  Identifier.id.getter();
  v5 = *(v2 + 8);
  v0[27] = v5;
  v0[28] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v8 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:));
  v6 = swift_task_alloc();
  v0[29] = v6;
  *v6 = v0;
  v6[1] = sub_100BAC7D4;

  return v8(v4);
}

uint64_t sub_100BAC7D4(uint64_t a1)
{
  v3 = *v2;
  v3[30] = a1;
  v3[31] = v1;

  if (v1)
  {
    v4 = v3[6];
    v5 = sub_100BAE044;
  }

  else
  {
    v6 = v3[6];

    v5 = sub_100BAC8FC;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100BAC8FC()
{
  v37 = v0;
  v1 = v0[30];
  if (v1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v1 & 0xC000000000000001) != 0)
    {
      v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_6;
    }

    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

LABEL_6:
      v0[32] = v2;
      v3 = v0[16];
      v33 = v0[15];
      v4 = v0[11];
      v5 = v0[10];

      v6 = enum case for ConnectUseCase.findMyPair(_:);
      v7 = type metadata accessor for ConnectUseCase();
      v8 = *(v7 - 8);
      (*(v8 + 104))(v3, v6, v7);
      (*(v8 + 56))(v3, 0, 1, v7);
      sub_1000BC4D4(&qword_101697280, &unk_1013B61F0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_101385D80;
      static Peripheral.ConnectionOptions.hideFromBTSettings.getter();
      v0[2] = v9;
      sub_100BAFD80(&qword_101697288, 255, &type metadata accessor for Peripheral.ConnectionOptions, &protocol conformance descriptor for Peripheral.ConnectionOptions);
      sub_1000BC4D4(&qword_101697290, &qword_10138BDF0);
      sub_100BAFD1C();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v10 = type metadata accessor for PeripheralPairingInfo();
      (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
      v11 = type metadata accessor for LongTermKey();
      (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
      Peripheral.Options.init(connectionOptions:pairingInfo:temporaryLTK:)();
      v12 = type metadata accessor for Peripheral.Options();
      (*(*(v12 - 8) + 56))(v33, 0, 1, v12);
      v34 = (&async function pointer to dispatch thunk of Peripheral.connect(useCase:options:) + async function pointer to dispatch thunk of Peripheral.connect(useCase:options:));
      v13 = swift_task_alloc();
      v0[33] = v13;
      *v13 = v0;
      v13[1] = sub_100BACF00;
      v14 = v0[15];
      v15 = v0[16];

      return v34(v15, v14);
    }

    __break(1u);
    goto LABEL_18;
  }

  if (qword_101694D20 != -1)
  {
LABEL_18:
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_1016B7418);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v32 = v0[27];
    v20 = v0[19];
    v21 = v0[17];
    v23 = v0[8];
    v22 = v0[9];
    v35 = v0[7];
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v36 = v25;
    *v24 = 136446210;
    Peripheral.id.getter();
    Identifier.id.getter();
    v32(v20, v21);
    sub_100BAFD80(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    (*(v23 + 8))(v22, v35);
    v29 = sub_1000136BC(v26, v28, &v36);

    *(v24 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v18, v19, "Missing peripheral for %{public}s", v24, 0xCu);
    sub_100007BAC(v25);
  }

  sub_100BAFCC8();
  swift_allocError();
  *v30 = 1;
  swift_willThrow();

  v31 = v0[1];

  return v31();
}

uint64_t sub_100BACF00()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  v3 = v2[16];
  v4 = v2[15];
  v5 = v2[6];
  sub_10000B3A8(v4, &qword_101697260, &unk_10138BDC0);
  sub_10000B3A8(v3, &qword_101697270, &qword_10138BDD0);
  if (v0)
  {
    v6 = sub_100BAE114;
  }

  else
  {
    v6 = sub_100BAD084;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100BAD084()
{
  v15 = v0;
  if (qword_101694D20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[35] = sub_1000076D4(v1, qword_1016B7418);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[32];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v0[4] = v4;
    type metadata accessor for Peripheral();
    sub_100BAFD80(&qword_1016972D0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = sub_1000136BC(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Connected to peripheral: %s", v5, 0xCu);
    sub_100007BAC(v6);
  }

  sub_1000BC4D4(&qword_1016973D8, &qword_10138BF80);
  sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0);
  v10 = swift_allocObject();
  v0[36] = v10;
  *(v10 + 16) = xmmword_101385D80;
  type metadata accessor for Service();
  Identifier.init(stringLiteral:)();
  v13 = (&async function pointer to dispatch thunk of Peripheral.discover(serviceIdentifiers:) + async function pointer to dispatch thunk of Peripheral.discover(serviceIdentifiers:));
  v11 = swift_task_alloc();
  v0[37] = v11;
  *v11 = v0;
  v11[1] = sub_100BAD37C;

  return v13(v10);
}

uint64_t sub_100BAD37C(uint64_t a1)
{
  v3 = *v2;
  v3[38] = a1;
  v3[39] = v1;

  if (v1)
  {
    v4 = v3[6];
    v5 = sub_100BAE1E4;
  }

  else
  {
    v6 = v3[6];

    v5 = sub_100BAD4A4;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100BAD4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[38];
  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
LABEL_3:
      if ((v4 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return dispatch thunk of ServiceProtocol.discover(characteristicIdentifiers:)(v5, a2, a3);
        }

        v6 = *(v3[38] + 32);
      }

      v3[40] = v6;

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "Discovered FindMy services", v9, 2u);
      }

      v10 = sub_100BAFD80(&qword_1016972A8, 255, &type metadata accessor for Service, &protocol conformance descriptor for Service);
      v3[41] = v10;
      ObjectType = swift_getObjectType();
      v3[42] = ObjectType;

      v12 = swift_task_alloc();
      v3[43] = v12;
      *v12 = v3;
      v12[1] = sub_100BAD784;
      v5 = 0;
      a2 = ObjectType;
      a3 = v10;

      return dispatch thunk of ServiceProtocol.discover(characteristicIdentifiers:)(v5, a2, a3);
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  sub_100BAFCC8();
  swift_allocError();
  *v13 = 2;
  swift_willThrow();

  v14 = v3[1];

  return v14();
}

uint64_t sub_100BAD784(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 352) = v1;

  if (v1)
  {
    v5 = *(v4 + 48);

    v6 = sub_100BADB5C;
    v7 = v5;
  }

  else
  {
    *(v4 + 360) = a1;
    v6 = sub_100BAD8C4;
    v7 = 0;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100BAD8C4()
{
  v1 = v0[6];
  swift_getAssociatedTypeWitness();
  v0[46] = sub_1000BC4D4(&qword_1016B7500, &qword_1013DC4D8);
  v0[47] = _arrayForceCast<A, B>(_:)();

  return _swift_task_switch(sub_100BAD994, v1, 0);
}

uint64_t sub_100BAD994()
{
  v13 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v12 = v4;
    *v3 = 136315138;
    v5 = Array.description.getter();
    v7 = v6;

    v8 = sub_1000136BC(v5, v7, &v12);

    *(v3 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Discovered Pairing characteristic %s.", v3, 0xCu);
    sub_100007BAC(v4);
  }

  else
  {
  }

  v11 = (&async function pointer to dispatch thunk of Peripheral.pair() + async function pointer to dispatch thunk of Peripheral.pair());
  v9 = swift_task_alloc();
  *(v0 + 384) = v9;
  *v9 = v0;
  v9[1] = sub_100BADC38;

  return v11();
}

uint64_t sub_100BADB5C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BADC38()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_100BAE2C0;
  }

  else
  {
    v4 = sub_100BADD64;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100BADD64()
{
  v14 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[32];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    v0[3] = v3;
    type metadata accessor for Peripheral();
    sub_100BAFD80(&qword_1016972D0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = sub_1000136BC(v6, v7, &v13);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Paired peripheral: %s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  else
  {
  }

  v9 = v0[1];
  v10 = v0[40];
  v11 = v0[41];

  return v9(v10, v11);
}

uint64_t sub_100BADF7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BAE044()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BAE114()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BAE1E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BAE2C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BAE39C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  sub_1000BC4D4(&qword_10169E750, &unk_1013DC4B0);
  v2[7] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = type metadata accessor for CentralManager.State();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_100BAE558, v1, 0);
}

uint64_t sub_100BAE558()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v0[14] = *(v0[3] + 112);
  (*(v2 + 104))(v1, enum case for CentralManager.State.poweredOn(_:), v3);
  v4 = swift_task_alloc();
  v0[15] = v4;
  v5 = type metadata accessor for CentralManager();
  v6 = sub_100BAFD80(&unk_1016C1160, 255, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  *v4 = v0;
  v4[1] = sub_100BAE674;
  v7 = v0[13];

  return CentralManagerProtocol.await(state:)(v7, v5, v6);
}

uint64_t sub_100BAE674()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  *(*v1 + 128) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 24);
  if (v0)
  {
    v7 = sub_100BAF1FC;
  }

  else
  {
    v7 = sub_100BAE7FC;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100BAE7FC()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v4 = swift_allocObject();
  v0[17] = v4;
  *(v4 + 16) = xmmword_101385D80;
  Peripheral.id.getter();
  Identifier.id.getter();
  v5 = *(v2 + 8);
  v0[18] = v5;
  v0[19] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v8 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:));
  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_100BAE948;

  return v8(v4);
}

uint64_t sub_100BAE948(uint64_t a1)
{
  v3 = *v2;
  v3[21] = a1;
  v3[22] = v1;

  if (v1)
  {
    v4 = v3[3];
    v5 = sub_100BAF288;
  }

  else
  {
    v6 = v3[3];

    v5 = sub_100BAEA70;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100BAEA70()
{
  v27 = v0;
  v1 = v0[21];
  if (v1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v1 & 0xC000000000000001) != 0)
    {
      v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_6;
    }

    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v2 = *(v0[21] + 32);

LABEL_6:
      v0[23] = v2;
      v3 = v0[7];

      v4 = type metadata accessor for Peripheral.DisconnectionOptions();
      (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
      v24 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection(options:) + async function pointer to dispatch thunk of Peripheral.cancelConnection(options:));
      v5 = swift_task_alloc();
      v0[24] = v5;
      *v5 = v0;
      v5[1] = sub_100BAEE64;
      v6 = v0[7];

      return v24(v6);
    }

    __break(1u);
    goto LABEL_18;
  }

  if (qword_101694D20 != -1)
  {
LABEL_18:
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_1016B7418);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v23 = v0[18];
    v11 = v0[10];
    v12 = v0[8];
    v14 = v0[5];
    v13 = v0[6];
    v25 = v0[4];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26 = v16;
    *v15 = 136446210;
    Peripheral.id.getter();
    Identifier.id.getter();
    v23(v11, v12);
    sub_100BAFD80(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v14 + 8))(v13, v25);
    v20 = sub_1000136BC(v17, v19, &v26);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "Missing peripheral for %{public}s", v15, 0xCu);
    sub_100007BAC(v16);
  }

  sub_100BAFCC8();
  swift_allocError();
  *v21 = 1;
  swift_willThrow();

  v22 = v0[1];

  return v22();
}

uint64_t sub_100BAEE64()
{
  v2 = *v1;
  v3 = *v1;
  v2[25] = v0;

  v4 = v2[7];
  if (v0)
  {
    v5 = v2[3];
    sub_10000B3A8(v4, &qword_10169E750, &unk_1013DC4B0);

    return _swift_task_switch(sub_100BAF31C, v5, 0);
  }

  else
  {
    sub_10000B3A8(v4, &qword_10169E750, &unk_1013DC4B0);
    v8 = (&async function pointer to dispatch thunk of Peripheral.unpair() + async function pointer to dispatch thunk of Peripheral.unpair());
    v6 = swift_task_alloc();
    v2[26] = v6;
    *v6 = v3;
    v6[1] = sub_100BAF038;

    return v8();
  }
}

uint64_t sub_100BAF038()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_100BAF3B0;
  }

  else
  {
    v4 = sub_100BAF164;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100BAF164()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BAF1FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BAF288()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BAF31C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BAF3B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BAF548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for AirTagPeripheralProvider();
  *v8 = v4;
  v8[1] = sub_100014650;

  return PairingPeripheralProvider.getPeripheral(for:)(a1, a2, v9, a4);
}

uint64_t sub_100BAF60C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100BAF6A4;

  return sub_100BAB820(a2);
}

uint64_t sub_100BAF6A4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_100BAF7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for AirTagPeripheralProvider();
  *v10 = v5;
  v10[1] = sub_100014744;

  return PairingPeripheralProvider.pair<A>(_:)(a1, a2, v11, a3, a5);
}

uint64_t sub_100BAF880(uint64_t a1, uint64_t *a2)
{
  *(v2 + 16) = a1;
  v3 = *a2;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100BAF918;

  return sub_100BAC130(v3);
}

uint64_t sub_100BAF918(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (!v2)
  {
    v8 = *(v6 + 16);
    *v8 = a1;
    v8[1] = a2;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_100BAFA34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = type metadata accessor for AirTagPeripheralProvider();
  *v6 = v3;
  v6[1] = sub_100014744;

  return PairingPeripheralProvider.unpair(_:)(a1, v7, a3);
}

uint64_t sub_100BAFAE8(uint64_t *a1)
{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_100BAE39C(v2);
}

uint64_t sub_100BAFB7C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BCA0);
  sub_1000076D4(v0, qword_10177BCA0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100BAFC00()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016B7418);
  v1 = sub_1000076D4(v0, qword_1016B7418);
  if (qword_101694D18 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177BCA0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_100BAFCC8()
{
  result = qword_1016B74F8;
  if (!qword_1016B74F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B74F8);
  }

  return result;
}

unint64_t sub_100BAFD1C()
{
  result = qword_101697298;
  if (!qword_101697298)
  {
    sub_1000BC580(&qword_101697290, &qword_10138BDF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697298);
  }

  return result;
}

uint64_t sub_100BAFD80(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_100BAFDDC()
{
  result = qword_1016B7508;
  if (!qword_1016B7508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B7508);
  }

  return result;
}

uint64_t sub_100BAFE30(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_100BAFEC4;

  return daemon.getter();
}

uint64_t sub_100BAFEC4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 40) = a1;

  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100BB0AEC(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100BB0AEC(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_100BB00A8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100BB00A8(uint64_t a1)
{
  v3 = *v2;
  v3[7] = a1;
  v3[8] = v1;

  if (v1)
  {
    v4 = v3[3];
    v5 = sub_100BB0618;
  }

  else
  {
    v6 = v3[3];

    v5 = sub_100BB01D0;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100BB01D0()
{
  sub_1000BC4D4(&qword_1016ACE90, &qword_1013DD370);
  v1 = swift_allocObject();
  v0[9] = v1;
  *(v1 + 16) = xmmword_101385D80;
  type metadata accessor for ProximityPairingValidator();
  v0[10] = swift_allocObject();
  swift_defaultActor_initialize();
  v0[11] = type metadata accessor for ProximityPeripheralProvider();
  v0[12] = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for CentralManager();
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_100BB02D8;

  return static CentralManager.pairingCentralManager.getter();
}

uint64_t sub_100BB02D8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = sub_100BB0510;
  }

  else
  {
    *(v4 + 120) = a1;
    v5 = sub_100BB0400;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100BB0400()
{
  v1 = v0[3];
  *(v0[12] + 112) = v0[15];
  return _swift_task_switch(sub_100BB0428, v1, 0);
}

uint64_t sub_100BB0428()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];

  v6 = sub_100BB07C8(v5, v2, v1, v4);
  v7 = sub_100BB0AEC(&qword_1016B75C0, 255, type metadata accessor for ProximityPairingExecutor, &unk_1013E1218);
  *(v3 + 32) = v6;
  *(v3 + 40) = v7;

  v8 = v0[1];
  v9 = v0[9];

  return v8(v9);
}

uint64_t sub_100BB0510()
{
  v1 = *(v0 + 24);
  swift_defaultActor_destroy();
  swift_deallocPartialClassInstance();

  return _swift_task_switch(sub_100BB059C, v1, 0);
}

uint64_t sub_100BB059C()
{
  v1 = *(v0 + 72);

  *(v1 + 16) = 0;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100BB0618()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BB0734(uint64_t *a1)
{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000D2118;

  return sub_100BAFE30(v2);
}

uint64_t sub_100BB07C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100BB0AEC(&qword_1016B75C8, 255, type metadata accessor for ProximityPairingValidator, &unk_1013DDDC0);
  v9 = sub_100BB0AEC(&qword_1016B2BE0, 255, type metadata accessor for ProximityPeripheralProvider, &unk_1013E25E8);
  v10 = sub_100BB0AEC(&qword_1016ACEA8, 255, type metadata accessor for BeaconStoreActor, &unk_1013DDEA0);
  type metadata accessor for ProximityPairingExecutor(0);
  v11 = swift_allocObject();
  swift_defaultActor_initialize();
  UUID.init()();
  v12 = OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_state;
  v13 = enum case for PairingExecutorState.idle(_:);
  v14 = type metadata accessor for PairingExecutorState();
  (*(*(v14 - 8) + 104))(v11 + v12, v13, v14);
  *(v11 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_stateHistory) = _swiftEmptyArrayStorage;
  v15 = OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_streamProvider;
  sub_1000BC4D4(&qword_1016ACEB0, &unk_1013DC650);
  swift_allocObject();
  *(v11 + v15) = AsyncStreamProvider.init()();
  v16 = OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_pairingCheckData;
  sub_100BB0B34(__src);
  memcpy((v11 + v16), __src, 0x160uLL);
  *(v11 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_crypto) = 0;
  v17 = (v11 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_service);
  *v17 = 0;
  v17[1] = 0;
  v18 = v11 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_peripheral;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0;
  v19 = v11 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconCreationInfo;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0u;
  *(v19 + 48) = 0u;
  *(v19 + 64) = 0u;
  *(v19 + 80) = 0;
  v20 = v11 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_pairingConfiguration;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0;
  v21 = OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconRecordIdentifier;
  v22 = type metadata accessor for UUID();
  (*(*(v22 - 8) + 56))(v11 + v21, 1, 1, v22);
  BinaryEncoder.init()();
  BinaryDecoder.init()();
  *(v11 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_pairingInfo) = a1;
  v23 = (v11 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_validator);
  *v23 = a2;
  v23[1] = v8;
  v24 = (v11 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_peripheralProvider);
  *v24 = a3;
  v24[1] = v9;
  v25 = (v11 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconStore);
  *v25 = a4;
  v25[1] = v10;
  return v11;
}

uint64_t sub_100BB0AEC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double sub_100BB0B34(_OWORD *a1)
{
  result = 0.0;
  a1[20] = 0u;
  a1[21] = 0u;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double sub_100BB0B68@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100BB0BCC(a2, v11);
  if (!v2)
  {
    v5 = v19;
    a1[8] = v18;
    a1[9] = v5;
    v6 = v21;
    a1[10] = v20;
    a1[11] = v6;
    v7 = v15;
    a1[4] = v14;
    a1[5] = v7;
    v8 = v17;
    a1[6] = v16;
    a1[7] = v8;
    v9 = v11[1];
    *a1 = v11[0];
    a1[1] = v9;
    result = *&v12;
    v10 = v13;
    a1[2] = v12;
    a1[3] = v10;
  }

  return result;
}

uint64_t sub_100BB0BCC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v102, v103);
  v5 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    sub_100007BAC(v102);
    return sub_100007BAC(a1);
  }

  v99 = v5;
  v104 = v6;
  sub_10015049C(v102, v103);
  v97 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v98 = v7;
  sub_10015049C(v102, v103);
  v8 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v10 = v9;
  sub_10015049C(v102, v103);
  v93 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v94 = v11;
  v95 = v8;
  v96 = v10;
  sub_100017D5C(v8, v10);
  sub_1000E0A3C();
  v12 = DataProtocol.intValue.getter();
  sub_10002EA98(v12, v8, v10, &v100);
  v13 = v100;
  v14 = v101;
  sub_10015049C(v102, v103);
  v89 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v90 = v15;
  v91 = v14;
  v92 = v13;
  sub_10015049C(v102, v103);
  v87 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v18 = v17;
  sub_10015049C(v102, v103);
  v19 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v86 = v20;
  v83 = v18;
  v84 = v19;
  sub_100017D5C(v87, v18);
  v21 = DataProtocol.intValue.getter();
  sub_10002EA98(v21, v87, v18, &v100);
  v22 = v101;
  v85 = v100;
  sub_10015049C(v102, v103);
  v23 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v25 = v24;
  v81 = v22;
  v82 = v23;
  sub_10015049C(v102, v103);
  v79 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v80 = v26;
  sub_100017D5C(v82, v25);
  v27 = DataProtocol.intValue.getter();
  sub_10002EA98(v27, v82, v25, &v100);
  v28 = v101;
  v88 = v100;
  sub_10015049C(v102, v103);
  v77 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v78 = v29;
  sub_10015049C(v102, v103);
  v30 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v32 = v31;
  sub_100016590(v82, v25);
  sub_100016590(v87, v83);
  result = sub_100016590(v95, v96);
  v33 = v104 >> 62;
  if ((v104 >> 62) <= 1)
  {
    if (!v33)
    {
      v34 = BYTE6(v104);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (v33 != 2)
  {
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  v35 = *(v99 + 16);
  v36 = *(v99 + 24);
  v37 = __OFSUB__(v36, v35);
  v34 = v36 - v35;
  if (v37)
  {
    __break(1u);
LABEL_11:
    LODWORD(v34) = HIDWORD(v99) - v99;
    if (__OFSUB__(HIDWORD(v99), v99))
    {
LABEL_113:
      __break(1u);
      goto LABEL_114;
    }

    v34 = v34;
  }

LABEL_13:
  if (v34 != 114)
  {
    goto LABEL_124;
  }

  v38 = v98 >> 62;
  if ((v98 >> 62) <= 1)
  {
    if (!v38)
    {
      v39 = BYTE6(v98);
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (v38 != 2)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  v40 = *(v97 + 16);
  v41 = *(v97 + 24);
  v37 = __OFSUB__(v41, v40);
  v39 = v41 - v40;
  if (v37)
  {
    __break(1u);
LABEL_21:
    LODWORD(v39) = HIDWORD(v97) - v97;
    if (__OFSUB__(HIDWORD(v97), v97))
    {
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }

    v39 = v39;
  }

LABEL_23:
  if (v39 != 32)
  {
    goto LABEL_125;
  }

  v42 = v91 >> 62;
  if ((v91 >> 62) <= 1)
  {
    if (!v42)
    {
      v43 = BYTE6(v91);
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (v42 != 2)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  v45 = *(v92 + 16);
  v44 = *(v92 + 24);
  v37 = __OFSUB__(v44, v45);
  v43 = v44 - v45;
  if (v37)
  {
    __break(1u);
LABEL_31:
    LODWORD(v43) = HIDWORD(v92) - v92;
    if (__OFSUB__(HIDWORD(v92), v92))
    {
LABEL_115:
      __break(1u);
      goto LABEL_116;
    }

    v43 = v43;
  }

LABEL_33:
  if (v43 != 100)
  {
    goto LABEL_126;
  }

  v46 = v94 >> 62;
  if ((v94 >> 62) <= 1)
  {
    if (!v46)
    {
      v47 = BYTE6(v94);
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  if (v46 != 2)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  v48 = *(v93 + 16);
  v49 = *(v93 + 24);
  v37 = __OFSUB__(v49, v48);
  v47 = v49 - v48;
  if (v37)
  {
    __break(1u);
LABEL_41:
    LODWORD(v47) = HIDWORD(v93) - v93;
    if (__OFSUB__(HIDWORD(v93), v93))
    {
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    v47 = v47;
  }

LABEL_43:
  if (v47 != 1)
  {
    goto LABEL_127;
  }

  v50 = v90 >> 62;
  if ((v90 >> 62) <= 1)
  {
    if (!v50)
    {
      v51 = BYTE6(v90);
      goto LABEL_53;
    }

    goto LABEL_51;
  }

  if (v50 != 2)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  v53 = *(v89 + 16);
  v52 = *(v89 + 24);
  v37 = __OFSUB__(v52, v53);
  v51 = v52 - v53;
  if (v37)
  {
    __break(1u);
LABEL_51:
    LODWORD(v51) = HIDWORD(v89) - v89;
    if (__OFSUB__(HIDWORD(v89), v89))
    {
LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    v51 = v51;
  }

LABEL_53:
  if (v51 != 60)
  {
    goto LABEL_128;
  }

  if ((v81 >> 62) <= 1)
  {
    if (v81 >> 62 == 1)
    {
      LODWORD(v54) = HIDWORD(v85) - v85;
      if (!__OFSUB__(HIDWORD(v85), v85))
      {
        v54 = v54;
        goto LABEL_60;
      }

      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
      goto LABEL_112;
    }

LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  if (v81 >> 62 != 2)
  {
    goto LABEL_122;
  }

  v56 = *(v85 + 16);
  v55 = *(v85 + 24);
  v37 = __OFSUB__(v55, v56);
  v54 = v55 - v56;
  if (v37)
  {
    goto LABEL_110;
  }

LABEL_60:
  if (v54 != 720)
  {
    goto LABEL_122;
  }

  v57 = v86 >> 62;
  if ((v86 >> 62) <= 1)
  {
    if (!v57)
    {
      v58 = BYTE6(v86);
      goto LABEL_70;
    }

    goto LABEL_68;
  }

  if (v57 != 2)
  {
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v60 = *(v84 + 16);
  v59 = *(v84 + 24);
  v37 = __OFSUB__(v59, v60);
  v58 = v59 - v60;
  if (v37)
  {
    __break(1u);
LABEL_68:
    LODWORD(v58) = HIDWORD(v84) - v84;
    if (__OFSUB__(HIDWORD(v84), v84))
    {
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

    v58 = v58;
  }

LABEL_70:
  if (v58 != 2)
  {
    goto LABEL_129;
  }

  if ((v28 >> 62) <= 1)
  {
    if (v28 >> 62 == 1)
    {
      LODWORD(v61) = HIDWORD(v88) - v88;
      if (!__OFSUB__(HIDWORD(v88), v88))
      {
        v61 = v61;
        goto LABEL_77;
      }

      goto LABEL_111;
    }

LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  if (v28 >> 62 != 2)
  {
    goto LABEL_123;
  }

  v63 = *(v88 + 16);
  v62 = *(v88 + 24);
  v37 = __OFSUB__(v62, v63);
  v61 = v62 - v63;
  if (v37)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

LABEL_77:
  if (v61 != 554)
  {
    goto LABEL_123;
  }

  v64 = v80 >> 62;
  if ((v80 >> 62) <= 1)
  {
    if (!v64)
    {
      v65 = BYTE6(v80);
      goto LABEL_87;
    }

LABEL_85:
    LODWORD(v65) = HIDWORD(v79) - v79;
    if (!__OFSUB__(HIDWORD(v79), v79))
    {
      v65 = v65;
      goto LABEL_87;
    }

LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  if (v64 != 2)
  {
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v67 = *(v79 + 16);
  v66 = *(v79 + 24);
  v37 = __OFSUB__(v66, v67);
  v65 = v66 - v67;
  if (v37)
  {
    __break(1u);
    goto LABEL_85;
  }

LABEL_87:
  if (v65 != 2)
  {
    goto LABEL_130;
  }

  v68 = v78 >> 62;
  if ((v78 >> 62) <= 1)
  {
    if (!v68)
    {
      v69 = BYTE6(v78);
      goto LABEL_97;
    }

LABEL_95:
    LODWORD(v69) = HIDWORD(v77) - v77;
    if (!__OFSUB__(HIDWORD(v77), v77))
    {
      v69 = v69;
      goto LABEL_97;
    }

LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  if (v68 != 2)
  {
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v71 = *(v77 + 16);
  v70 = *(v77 + 24);
  v37 = __OFSUB__(v70, v71);
  v69 = v70 - v71;
  if (v37)
  {
    __break(1u);
    goto LABEL_95;
  }

LABEL_97:
  if (v69 != 8)
  {
    goto LABEL_131;
  }

  v72 = v32 >> 62;
  if ((v32 >> 62) <= 1)
  {
    if (!v72)
    {
      v73 = BYTE6(v32);
      goto LABEL_107;
    }

LABEL_105:
    LODWORD(v73) = HIDWORD(v30) - v30;
    if (!__OFSUB__(HIDWORD(v30), v30))
    {
      v73 = v73;
      goto LABEL_107;
    }

    goto LABEL_121;
  }

  if (v72 != 2)
  {
    goto LABEL_132;
  }

  v75 = *(v30 + 16);
  v74 = *(v30 + 24);
  v37 = __OFSUB__(v74, v75);
  v73 = v74 - v75;
  if (v37)
  {
    __break(1u);
    goto LABEL_105;
  }

LABEL_107:
  if (v73 == 24)
  {
    sub_100007BAC(v102);
    result = sub_100007BAC(a1);
    v76 = v104;
    *a2 = v99;
    *(a2 + 8) = v76;
    *(a2 + 16) = v97;
    *(a2 + 24) = v98;
    *(a2 + 32) = v89;
    *(a2 + 40) = v90;
    *(a2 + 48) = v92;
    *(a2 + 56) = v91;
    *(a2 + 64) = v93;
    *(a2 + 72) = v94;
    *(a2 + 80) = v85;
    *(a2 + 88) = v81;
    *(a2 + 96) = v84;
    *(a2 + 104) = v86;
    *(a2 + 112) = v88;
    *(a2 + 120) = v28;
    *(a2 + 128) = v79;
    *(a2 + 136) = v80;
    *(a2 + 144) = v77;
    *(a2 + 152) = v78;
    *(a2 + 160) = v30;
    *(a2 + 168) = v32;
    *(a2 + 176) = xmmword_10138BBF0;
    return result;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100BB1530@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, unint64_t a17)
{
  v128 = result;
  v141 = a5;
  v142 = a6;
  v21 = a6 >> 62;
  if ((a6 >> 62) > 1)
  {
    v22 = 0;
    if (v21 != 2)
    {
      goto LABEL_10;
    }

    v24 = *(a5 + 16);
    v23 = *(a5 + 24);
    v25 = __OFSUB__(v23, v24);
    v22 = v23 - v24;
    if (!v25)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v21)
  {
    v22 = BYTE6(a6);
    goto LABEL_10;
  }

  LODWORD(v22) = HIDWORD(a5) - a5;
  if (__OFSUB__(HIDWORD(a5), a5))
  {
LABEL_182:
    __break(1u);
    goto LABEL_183;
  }

  v22 = v22;
LABEL_10:
  v26 = 60 - v22;
  if (__OFSUB__(60, v22))
  {
    __break(1u);
    goto LABEL_167;
  }

  sub_100017D5C(a5, a6);
  v139 = sub_100845C88(v26);
  v140 = v28;
  sub_100776394(&v139, 0);
  v29 = v139;
  v30 = v140;
  Data.append(_:)();
  result = sub_100016590(v29, v30);
  v139 = a7;
  v140 = a8;
  v31 = a8 >> 62;
  if ((a8 >> 62) <= 1)
  {
    if (!v31)
    {
      v32 = BYTE6(a8);
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (v31 != 2)
  {
    v32 = 0;
    goto LABEL_21;
  }

  v34 = *(a7 + 16);
  v33 = *(a7 + 24);
  v25 = __OFSUB__(v33, v34);
  v32 = v33 - v34;
  if (v25)
  {
    __break(1u);
LABEL_18:
    LODWORD(v32) = HIDWORD(a7) - a7;
    if (__OFSUB__(HIDWORD(a7), a7))
    {
LABEL_183:
      __break(1u);
      goto LABEL_184;
    }

    v32 = v32;
  }

LABEL_21:
  v35 = 100 - v32;
  if (__OFSUB__(100, v32))
  {
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

  v122 = a4;
  sub_100017D5C(a7, a8);
  v137 = sub_100845C88(v35);
  v138 = v36;
  sub_100776394(&v137, 0);
  v38 = v137;
  v37 = v138;
  Data.append(_:)();
  result = sub_100016590(v38, v37);
  v137 = a10;
  v138 = a11;
  v39 = a11 >> 62;
  if ((a11 >> 62) <= 1)
  {
    if (!v39)
    {
      v40 = BYTE6(a11);
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  if (v39 != 2)
  {
    v40 = 0;
    goto LABEL_32;
  }

  v42 = *(a10 + 16);
  v41 = *(a10 + 24);
  v25 = __OFSUB__(v41, v42);
  v40 = v41 - v42;
  if (v25)
  {
    __break(1u);
LABEL_29:
    LODWORD(v40) = HIDWORD(a10) - a10;
    if (__OFSUB__(HIDWORD(a10), a10))
    {
LABEL_184:
      __break(1u);
      goto LABEL_185;
    }

    v40 = v40;
  }

LABEL_32:
  v43 = 720 - v40;
  if (__OFSUB__(720, v40))
  {
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

  sub_100017D5C(a10, a11);
  v135 = sub_100845C88(v43);
  v136 = v44;
  sub_100776394(&v135, 0);
  v45 = v135;
  v46 = v136;
  Data.append(_:)();
  result = sub_100016590(v45, v46);
  v47 = v142;
  v48 = v140;
  v133 = v141;
  v134 = v139;
  if (v31 <= 1)
  {
    if (!v31)
    {
      v49 = BYTE6(a8);
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  if (v31 != 2)
  {
    v49 = 0;
    goto LABEL_43;
  }

  v51 = *(a7 + 16);
  v50 = *(a7 + 24);
  v25 = __OFSUB__(v50, v51);
  v49 = v50 - v51;
  if (v25)
  {
    __break(1u);
LABEL_40:
    LODWORD(v49) = HIDWORD(a7) - a7;
    if (__OFSUB__(HIDWORD(a7), a7))
    {
LABEL_185:
      __break(1u);
      goto LABEL_186;
    }

    v49 = v49;
  }

LABEL_43:
  v135 = v49;
  v121 = v47;
  sub_100017D5C(v133, v47);
  v129 = v48;
  sub_100017D5C(v134, v48);
  sub_1000C3258();
  v52 = FixedWidthInteger.data.getter();
  v54 = v53;
  v127 = Data.trimmed.getter();
  v132 = v55;
  sub_100016590(v52, v54);
  result = v137;
  v56 = v138;
  if (v39 > 1)
  {
    if (v39 != 2 || !__OFSUB__(*(a10 + 24), *(a10 + 16)))
    {
      goto LABEL_51;
    }

    __break(1u);
  }

  else if (!v39)
  {
    goto LABEL_51;
  }

  if (__OFSUB__(HIDWORD(a10), a10))
  {
LABEL_186:
    __break(1u);
    goto LABEL_187;
  }

LABEL_51:
  v120 = result;
  v57 = v56;
  sub_100017D5C(result, v56);
  v58 = FixedWidthInteger.data.getter();
  v60 = v59;
  v126 = Data.trimmed.getter();
  v131 = v61;
  result = sub_100016590(v58, v60);
  v62 = a13 >> 62;
  if ((a13 >> 62) > 1)
  {
    if (v62 != 2 || !__OFSUB__(*(a12 + 24), *(a12 + 16)))
    {
      goto LABEL_59;
    }

    __break(1u);
  }

  else if (!v62)
  {
    goto LABEL_59;
  }

  if (__OFSUB__(HIDWORD(a12), a12))
  {
LABEL_187:
    __break(1u);
    goto LABEL_188;
  }

LABEL_59:
  v63 = FixedWidthInteger.data.getter();
  v65 = v64;
  v125 = Data.trimmed.getter();
  v130 = v66;
  sub_100016590(a10, a11);
  sub_100016590(a7, a8);
  sub_100016590(a5, a6);
  result = sub_100016590(v63, v65);
  v67 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    v68 = a3;
    if (!v67)
    {
      v69 = BYTE6(a2);
LABEL_68:
      v70 = v122;
      v71 = v129;
      goto LABEL_69;
    }

LABEL_66:
    LODWORD(v69) = HIDWORD(v128) - v128;
    if (__OFSUB__(HIDWORD(v128), v128))
    {
LABEL_173:
      __break(1u);
      goto LABEL_174;
    }

    v69 = v69;
    goto LABEL_68;
  }

  v70 = v122;
  v68 = a3;
  v71 = v129;
  if (v67 != 2)
  {
LABEL_190:
    __break(1u);
    goto LABEL_191;
  }

  v73 = *(v128 + 16);
  v72 = *(v128 + 24);
  v25 = __OFSUB__(v72, v73);
  v69 = v72 - v73;
  if (v25)
  {
    __break(1u);
    goto LABEL_66;
  }

LABEL_69:
  if (v69 != 114)
  {
    goto LABEL_190;
  }

  v74 = v70 >> 62;
  if ((v70 >> 62) <= 1)
  {
    if (!v74)
    {
      v75 = BYTE6(v70);
      goto LABEL_79;
    }

    goto LABEL_77;
  }

  if (v74 != 2)
  {
LABEL_191:
    __break(1u);
    goto LABEL_192;
  }

  v77 = *(v68 + 16);
  v76 = *(v68 + 24);
  v25 = __OFSUB__(v76, v77);
  v75 = v76 - v77;
  if (v25)
  {
    __break(1u);
LABEL_77:
    LODWORD(v75) = HIDWORD(v68) - v68;
    if (__OFSUB__(HIDWORD(v68), v68))
    {
LABEL_174:
      __break(1u);
      goto LABEL_175;
    }

    v75 = v75;
  }

LABEL_79:
  if (v75 != 32)
  {
    goto LABEL_191;
  }

  v78 = v71 >> 62;
  if ((v71 >> 62) <= 1)
  {
    if (!v78)
    {
      v79 = BYTE6(v71);
LABEL_89:
      v81 = v120;
      v80 = v121;
      goto LABEL_90;
    }

LABEL_87:
    LODWORD(v79) = HIDWORD(v134) - v134;
    if (__OFSUB__(HIDWORD(v134), v134))
    {
LABEL_175:
      __break(1u);
      goto LABEL_176;
    }

    v79 = v79;
    goto LABEL_89;
  }

  v81 = v120;
  v80 = v121;
  if (v78 != 2)
  {
LABEL_192:
    __break(1u);
    goto LABEL_193;
  }

  v83 = *(v134 + 16);
  v82 = *(v134 + 24);
  v25 = __OFSUB__(v82, v83);
  v79 = v82 - v83;
  if (v25)
  {
    __break(1u);
    goto LABEL_87;
  }

LABEL_90:
  if (v79 != 100)
  {
    goto LABEL_192;
  }

  v84 = v132 >> 62;
  if ((v132 >> 62) <= 1)
  {
    if (!v84)
    {
      v85 = BYTE6(v132);
      goto LABEL_100;
    }

    goto LABEL_98;
  }

  if (v84 != 2)
  {
LABEL_193:
    __break(1u);
    goto LABEL_194;
  }

  v87 = *(v127 + 16);
  v86 = *(v127 + 24);
  v25 = __OFSUB__(v86, v87);
  v85 = v86 - v87;
  if (v25)
  {
    __break(1u);
LABEL_98:
    LODWORD(v85) = HIDWORD(v127) - v127;
    if (__OFSUB__(HIDWORD(v127), v127))
    {
LABEL_176:
      __break(1u);
      goto LABEL_177;
    }

    v85 = v85;
  }

LABEL_100:
  if (v85 != 1)
  {
    goto LABEL_193;
  }

  v88 = v80 >> 62;
  if ((v80 >> 62) <= 1)
  {
    if (!v88)
    {
      v89 = BYTE6(v80);
      goto LABEL_110;
    }

    goto LABEL_108;
  }

  if (v88 != 2)
  {
LABEL_194:
    __break(1u);
    goto LABEL_195;
  }

  v91 = *(v133 + 16);
  v90 = *(v133 + 24);
  v25 = __OFSUB__(v90, v91);
  v89 = v90 - v91;
  if (v25)
  {
    __break(1u);
LABEL_108:
    LODWORD(v89) = HIDWORD(v133) - v133;
    if (__OFSUB__(HIDWORD(v133), v133))
    {
LABEL_177:
      __break(1u);
      goto LABEL_178;
    }

    v89 = v89;
  }

LABEL_110:
  if (v89 != 60)
  {
    goto LABEL_194;
  }

  if ((v57 >> 62) <= 1)
  {
    if (v57 >> 62 == 1)
    {
      LODWORD(v92) = HIDWORD(v81) - v81;
      if (!__OFSUB__(HIDWORD(v81), v81))
      {
        v92 = v92;
        goto LABEL_117;
      }

      goto LABEL_169;
    }

LABEL_188:
    __break(1u);
    goto LABEL_189;
  }

  if (v57 >> 62 != 2)
  {
    goto LABEL_188;
  }

  v94 = *(v81 + 16);
  v93 = *(v81 + 24);
  v25 = __OFSUB__(v93, v94);
  v92 = v93 - v94;
  if (v25)
  {
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

LABEL_117:
  if (v92 != 720)
  {
    goto LABEL_188;
  }

  v95 = v131 >> 62;
  if ((v131 >> 62) <= 1)
  {
    if (!v95)
    {
      v96 = BYTE6(v131);
      goto LABEL_127;
    }

    goto LABEL_125;
  }

  if (v95 != 2)
  {
LABEL_195:
    __break(1u);
    goto LABEL_196;
  }

  v98 = *(v126 + 16);
  v97 = *(v126 + 24);
  v25 = __OFSUB__(v97, v98);
  v96 = v97 - v98;
  if (v25)
  {
    __break(1u);
LABEL_125:
    LODWORD(v96) = HIDWORD(v126) - v126;
    if (__OFSUB__(HIDWORD(v126), v126))
    {
LABEL_178:
      __break(1u);
      goto LABEL_179;
    }

    v96 = v96;
  }

LABEL_127:
  if (v96 != 2)
  {
    goto LABEL_195;
  }

  if (v62 <= 1)
  {
    if (v62 == 1)
    {
      LODWORD(v99) = HIDWORD(a12) - a12;
      if (!__OFSUB__(HIDWORD(a12), a12))
      {
        v99 = v99;
        goto LABEL_134;
      }

      goto LABEL_171;
    }

LABEL_189:
    __break(1u);
    goto LABEL_190;
  }

  if (v62 != 2)
  {
    goto LABEL_189;
  }

  v101 = *(a12 + 16);
  v100 = *(a12 + 24);
  v25 = __OFSUB__(v100, v101);
  v99 = v100 - v101;
  if (v25)
  {
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

LABEL_134:
  if (v99 != 554)
  {
    goto LABEL_189;
  }

  v102 = v130 >> 62;
  if ((v130 >> 62) <= 1)
  {
    if (!v102)
    {
      v103 = BYTE6(v130);
      goto LABEL_144;
    }

LABEL_142:
    LODWORD(v103) = HIDWORD(v125) - v125;
    if (!__OFSUB__(HIDWORD(v125), v125))
    {
      v103 = v103;
      goto LABEL_144;
    }

LABEL_179:
    __break(1u);
    goto LABEL_180;
  }

  if (v102 != 2)
  {
LABEL_196:
    __break(1u);
    goto LABEL_197;
  }

  v105 = *(v125 + 16);
  v104 = *(v125 + 24);
  v25 = __OFSUB__(v104, v105);
  v103 = v104 - v105;
  if (v25)
  {
    __break(1u);
    goto LABEL_142;
  }

LABEL_144:
  if (v103 != 2)
  {
    goto LABEL_196;
  }

  v106 = a15 >> 62;
  if ((a15 >> 62) <= 1)
  {
    if (!v106)
    {
      v107 = BYTE6(a15);
      goto LABEL_154;
    }

LABEL_152:
    LODWORD(v107) = HIDWORD(a14) - a14;
    if (!__OFSUB__(HIDWORD(a14), a14))
    {
      v107 = v107;
      goto LABEL_154;
    }

LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
    goto LABEL_182;
  }

  if (v106 != 2)
  {
LABEL_197:
    __break(1u);
    goto LABEL_198;
  }

  v109 = *(a14 + 16);
  v108 = *(a14 + 24);
  v25 = __OFSUB__(v108, v109);
  v107 = v108 - v109;
  if (v25)
  {
    __break(1u);
    goto LABEL_152;
  }

LABEL_154:
  if (v107 != 8)
  {
    goto LABEL_197;
  }

  v110 = a17 >> 62;
  if ((a17 >> 62) <= 1)
  {
    if (!v110)
    {
      v111 = BYTE6(a17);
      goto LABEL_164;
    }

LABEL_162:
    LODWORD(v111) = HIDWORD(a16) - a16;
    if (!__OFSUB__(HIDWORD(a16), a16))
    {
      v111 = v111;
      goto LABEL_164;
    }

    goto LABEL_181;
  }

  if (v110 != 2)
  {
    goto LABEL_198;
  }

  v113 = *(a16 + 16);
  v112 = *(a16 + 24);
  v25 = __OFSUB__(v112, v113);
  v111 = v112 - v113;
  if (v25)
  {
    __break(1u);
    goto LABEL_162;
  }

LABEL_164:
  if (v111 == 24)
  {
    v114 = v57;
    v115 = v57;
    v116 = v68;
    sub_100016590(v81, v114);
    sub_100016590(v134, v129);
    result = sub_100016590(v133, v80);
    *a9 = v128;
    *(a9 + 8) = a2;
    *(a9 + 16) = v116;
    *(a9 + 24) = v70;
    *&v117 = v133;
    *(&v117 + 1) = v80;
    *&v118 = v134;
    *(&v118 + 1) = v129;
    *(a9 + 32) = v117;
    *(a9 + 48) = v118;
    *(a9 + 64) = v127;
    *(a9 + 72) = v132;
    *(a9 + 80) = v81;
    *(a9 + 88) = v115;
    *(a9 + 96) = v126;
    *(a9 + 104) = v131;
    *(a9 + 112) = a12;
    *(a9 + 120) = a13;
    *(a9 + 128) = v125;
    *(a9 + 136) = v130;
    *(a9 + 144) = a14;
    *(a9 + 152) = a15;
    *(a9 + 160) = a16;
    *(a9 + 168) = a17;
    *(a9 + 176) = xmmword_10138BBF0;
    return result;
  }

LABEL_198:
  __break(1u);
  return result;
}

unint64_t sub_100BB1E28(uint64_t a1)
{
  *(a1 + 8) = sub_100BB1E58();
  result = sub_100BB1EAC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100BB1E58()
{
  result = qword_1016B75D0;
  if (!qword_1016B75D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B75D0);
  }

  return result;
}

unint64_t sub_100BB1EAC()
{
  result = qword_1016B75D8;
  if (!qword_1016B75D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B75D8);
  }

  return result;
}

uint64_t sub_100BB1F00()
{
  type metadata accessor for PairingService();
  sub_100BB235C(&unk_1016B1120, &protocol conformance descriptor for PairingService);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_100BB1FE4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for PairingService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_100BB2090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for PairingService();
  *v8 = v4;
  v8[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v9, a4);
}

uint64_t sub_100BB2158(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for PairingService();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_100BB2204(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for PairingService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.startup()(v5, a2);
}

uint64_t sub_100BB22B0(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for PairingService();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.run()(v5, a2);
}

uint64_t sub_100BB235C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PairingService();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double ProximitySendPairingStatusCommandPayload.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100BB24D4(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

uint64_t sub_100BB24D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v23, v24);
  v5 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    sub_100007BAC(v23);
    return sub_100007BAC(a1);
  }

  else
  {
    v7 = v5;
    v8 = v6;
    sub_10015049C(v23, v24);
    v9 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    v25 = v10;
    sub_10015049C(v23, v24);
    v20 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    v21 = v11;
    sub_10015049C(v23, v24);
    v12 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    v19 = v13;
    sub_1000E0A3C();
    v14 = DataProtocol.intValue.getter();
    sub_10002EA98(v14, v20, v21, v22);
    v15 = v22[0];
    v16 = v22[1];
    sub_100007BAC(v23);
    result = sub_100007BAC(a1);
    *a2 = v7;
    a2[1] = v8;
    v18 = v25;
    a2[2] = v9;
    a2[3] = v18;
    a2[4] = v15;
    a2[5] = v16;
    a2[6] = v12;
    a2[7] = v19;
  }

  return result;
}

unint64_t sub_100BB26AC(uint64_t a1)
{
  *(a1 + 8) = sub_100BB26DC();
  result = sub_100BB2730();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100BB26DC()
{
  result = qword_1016B75F8;
  if (!qword_1016B75F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B75F8);
  }

  return result;
}

unint64_t sub_100BB2730()
{
  result = qword_1016B7600;
  if (!qword_1016B7600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B7600);
  }

  return result;
}

uint64_t sub_100BB2794(uint64_t a1, uint64_t a2)
{
  *(v3 + 136) = v2;
  v6 = swift_task_alloc();
  *(v3 + 144) = v6;
  *v6 = v3;
  v6[1] = sub_100BB2844;

  return sub_100BB2C54(v3 + 16, a1, a2);
}

uint64_t sub_100BB2844()
{
  v2 = *(*v1 + 136);
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_100BB2C3C;
  }

  else
  {
    v3 = sub_100BB296C;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_100BB296C()
{
  sub_10001F280(v0 + 16, v0 + 56);
  *(v0 + 160) = type metadata accessor for OneShotLocationWrapper();
  swift_allocObject();
  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  *v1 = v0;
  v1[1] = sub_100BB2A38;

  return sub_100F876D8(*&kCLLocationAccuracyHundredMeters, 0);
}

uint64_t sub_100BB2A38(uint64_t a1)
{
  v2 = *(*v1 + 136);
  *(*v1 + 176) = a1;

  return _swift_task_switch(sub_100BB2B50, v2, 0);
}

uint64_t sub_100BB2B50()
{
  v1 = v0[22];
  v0[15] = v0[20];
  v0[16] = &off_10165CCE0;
  v0[12] = v1;
  type metadata accessor for UniversalPairingCoordinator();
  swift_allocObject();
  v2 = sub_100C015C4(v0 + 7, (v0 + 12));
  sub_100007BAC(v0 + 2);
  v3 = sub_100BB8E0C(&qword_1016B7768, 255, type metadata accessor for UniversalPairingCoordinator, &unk_1013DE108);
  v4 = v0[1];

  return v4(v2, v3);
}

uint64_t sub_100BB2C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[117] = v3;
  v4[116] = a3;
  v4[115] = a2;
  v4[114] = a1;
  v5 = type metadata accessor for MACAddress();
  v4[118] = v5;
  v4[119] = *(v5 - 8);
  v4[120] = swift_task_alloc();
  v4[121] = swift_task_alloc();
  v4[122] = swift_task_alloc();
  v4[123] = sub_1000BC4D4(&qword_1016B76F0, &unk_1013DD160);
  v4[124] = swift_task_alloc();
  v4[125] = swift_task_alloc();
  v4[126] = swift_task_alloc();
  v4[127] = swift_task_alloc();
  v4[128] = swift_task_alloc();
  v4[129] = swift_task_alloc();
  v6 = type metadata accessor for PairingConfiguration();
  v4[130] = v6;
  v4[131] = *(v6 - 8);
  v4[132] = swift_task_alloc();

  return _swift_task_switch(sub_100BB2E0C, v3, 0);
}

uint64_t sub_100BB2E0C()
{
  v88 = v0;
  v1 = *(v0 + 1056);
  v2 = *(v0 + 1048);
  v3 = *(v0 + 1040);
  (*(v2 + 16))(v1, *(v0 + 920), v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 != enum case for PairingConfiguration.single(_:))
  {
    v14 = *(v0 + 1056);
    v15 = *(v0 + 1048);
    v16 = *(v0 + 1040);
    if (v4 != enum case for PairingConfiguration.multiple(_:))
    {
      sub_100BB8AF4();
      swift_allocError();
      *v28 = 4;
      swift_willThrow();
      (*(v15 + 8))(v14, v16);
LABEL_33:

      v68 = *(v0 + 8);

      return v68();
    }

    (*(v15 + 96))(*(v0 + 1056), *(v0 + 1040));
    v17 = *v14;
    *(v0 + 1384) = *v14;
    v86 = sub_100A4F80C;
    v18 = swift_task_alloc();
    *(v0 + 1392) = v18;
    *v18 = v0;
    v18[1] = sub_100BB59A0;
    v19 = v0 + 16;
    v20 = v17;
    goto LABEL_7;
  }

  v5 = *(v0 + 1056);
  v6 = *(v0 + 1024);
  v7 = *(v0 + 928);
  (*(*(v0 + 1048) + 96))(v5, *(v0 + 1040));
  sub_10000A748(v5, v0 + 472);
  sub_1000D2A70(v7, v6, &qword_1016B76F0, &unk_1013DD160);
  v8 = type metadata accessor for PairingContext();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(v6, 1, v8);
  v12 = *(v0 + 1032);
  v13 = *(v0 + 1024);
  if (v11 == 1)
  {
    sub_100BB78A8(v0 + 472, *(v0 + 1032));
    if (v10(v13, 1, v8) != 1)
    {
      sub_10000B3A8(*(v0 + 1024), &qword_1016B76F0, &unk_1013DD160);
    }
  }

  else
  {
    (*(v9 + 32))(*(v0 + 1032), *(v0 + 1024), v8);
    (*(v9 + 56))(v12, 0, 1, v8);
  }

  v22 = *(v0 + 1016);
  sub_1000D2A70(*(v0 + 1032), v22, &qword_1016B76F0, &unk_1013DD160);
  if (v10(v22, 1, v8) == 1)
  {
    v23 = *(v0 + 1032);
    v24 = *(v0 + 1016);
    sub_100BB8AF4();
    swift_allocError();
    *v25 = 4;
LABEL_13:
    swift_willThrow();
    sub_10000B3A8(v23, &qword_1016B76F0, &unk_1013DD160);
    v26 = (v0 + 472);
LABEL_14:
    sub_100007BAC(v26);
    v27 = v24;
LABEL_32:
    sub_10000B3A8(v27, &qword_1016B76F0, &unk_1013DD160);
    goto LABEL_33;
  }

  v29 = *(v0 + 1008);
  sub_1000D2A70(*(v0 + 1016), v29, &qword_1016B76F0, &unk_1013DD160);
  v30 = (*(v9 + 88))(v29, v8);
  if (v30 != enum case for PairingContext.bluetooth(_:))
  {
    if (v30 == enum case for PairingContext.bluetoothStandalone(_:))
    {
      v36 = *(v0 + 1008);
      v37 = *(v0 + 976);
      v38 = *(v0 + 952);
      v39 = *(v0 + 944);
      (*(v9 + 96))(v36, v8);
      v40 = *(sub_1000BC4D4(&qword_1016B7758, &unk_1013DD1A0) + 48);
      sub_10000A748(v36, v0 + 792);
      (*(v38 + 32))(v37, v36 + v40, v39);
      sub_10001F280(v0 + 792, v0 + 832);
      sub_1000BC4D4(&qword_1016B7720, &qword_1013DD188);
      if (!swift_dynamicCast() || (v41 = *(v0 + 1410), *(v0 + 1411) = v41, v41 == 3))
      {
        v42 = *(v0 + 1032);
        v24 = *(v0 + 1016);
        v43 = *(v0 + 976);
        v44 = *(v0 + 952);
        v45 = *(v0 + 944);
        sub_100BB8AF4();
        swift_allocError();
        *v46 = 1;
        swift_willThrow();
        (*(v44 + 8))(v43, v45);
        sub_100007BAC((v0 + 792));
        sub_10000B3A8(v42, &qword_1016B76F0, &unk_1013DD160);
        sub_100007BAC((v0 + 472));
        v26 = (v0 + 832);
        goto LABEL_14;
      }

      v84 = sub_100BB3A88;
    }

    else
    {
      v47 = *(v0 + 1008);
      if (v30 != enum case for PairingContext.bluetoothMultiPart(_:))
      {
        (*(v9 + 8))(*(v0 + 1008), v8);
        if (qword_101694D30 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1000);
        v70 = *(v0 + 928);
        v71 = type metadata accessor for Logger();
        sub_1000076D4(v71, qword_1016B7608);
        sub_1000D2A70(v70, v69, &qword_1016B76F0, &unk_1013DD160);
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.error.getter();
        v74 = os_log_type_enabled(v72, v73);
        v75 = *(v0 + 1000);
        if (v74)
        {
          v76 = *(v0 + 992);
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v87 = v78;
          *v77 = 136315138;
          sub_1000D2A70(v75, v76, &qword_1016B76F0, &unk_1013DD160);
          v79 = String.init<A>(describing:)();
          v81 = v80;
          sub_10000B3A8(v75, &qword_1016B76F0, &unk_1013DD160);
          v82 = sub_1000136BC(v79, v81, &v87);

          *(v77 + 4) = v82;
          _os_log_impl(&_mh_execute_header, v72, v73, "Unknown context %s!", v77, 0xCu);
          sub_100007BAC(v78);
        }

        else
        {

          sub_10000B3A8(v75, &qword_1016B76F0, &unk_1013DD160);
        }

        v23 = *(v0 + 1032);
        v24 = *(v0 + 1016);
        sub_100BB8AF4();
        swift_allocError();
        *v85 = 0;
        goto LABEL_13;
      }

      v48 = *(v0 + 960);
      v49 = *(v0 + 952);
      v50 = *(v0 + 944);
      (*(v9 + 96))(*(v0 + 1008), v8);
      v51 = sub_1000BC4D4(&qword_1016B7728, &unk_1013DD190);
      v52 = v51[12];
      v53 = (v47 + v51[16]);
      v54 = *v53;
      *(v0 + 1192) = *v53;
      v55 = v53[1];
      *(v0 + 1200) = v55;
      *(v0 + 1412) = *(v47 + v51[20]);
      sub_10000A748(v47, v0 + 632);
      v56 = *(v49 + 32);
      *(v0 + 1208) = v56;
      *(v0 + 1216) = (v49 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v56(v48, v47 + v52, v50);
      sub_10001F280(v0 + 632, v0 + 672);
      sub_1000BC4D4(&qword_1016B7720, &qword_1013DD188);
      if (!swift_dynamicCast() || (v57 = *(v0 + 1409), *(v0 + 1413) = v57, v57 == 3))
      {
        v58 = *(v0 + 1032);
        v59 = *(v0 + 1016);
        v60 = *(v0 + 960);
        v61 = *(v0 + 952);
        v62 = *(v0 + 944);
        sub_100BB8AF4();
        swift_allocError();
        *v63 = 1;
        swift_willThrow();
        sub_100006654(v54, v55);
        (*(v61 + 8))(v60, v62);
        sub_100007BAC((v0 + 632));
        sub_10000B3A8(v58, &qword_1016B76F0, &unk_1013DD160);
        sub_100007BAC((v0 + 472));
        sub_100007BAC((v0 + 672));
        v27 = v59;
        goto LABEL_32;
      }

      v84 = sub_100BB444C;
    }

    return _swift_task_switch(v84, 0, 0);
  }

  v31 = *(v0 + 1008);
  (*(v9 + 96))(v31, v8);
  v32 = *v31;
  v33 = v31[1];
  *(v0 + 544) = *(v31 + 4);
  *(v0 + 512) = v32;
  *(v0 + 528) = v33;
  sub_1000D2A70(v0 + 512, v0 + 552, &qword_1016B7718, &qword_1013DD180);
  if (!*(v0 + 576))
  {
    v64 = *(v0 + 1032);
    v65 = *(v0 + 1016);
    sub_100BB8AF4();
    swift_allocError();
    v67 = 4;
LABEL_31:
    *v66 = v67;
    swift_willThrow();
    sub_10000B3A8(v0 + 512, &qword_1016B7718, &qword_1013DD180);
    sub_10000B3A8(v64, &qword_1016B76F0, &unk_1013DD160);
    sub_100007BAC((v0 + 472));
    sub_10000B3A8(v0 + 552, &qword_1016B7718, &qword_1013DD180);
    v27 = v65;
    goto LABEL_32;
  }

  sub_1000D2A70(v0 + 552, v0 + 592, &qword_1016B7718, &qword_1013DD180);
  sub_1000BC4D4(&qword_1016B7720, &qword_1013DD188);
  if (!swift_dynamicCast())
  {
    v64 = *(v0 + 1032);
    v65 = *(v0 + 1016);
    sub_100007BAC((v0 + 592));
    sub_100BB8AF4();
    swift_allocError();
    v67 = 2;
    goto LABEL_31;
  }

  v34 = *(v0 + 1408);
  if (v34 == 3)
  {
    v86 = sub_100A500D4;
    v35 = swift_task_alloc();
    *(v0 + 1352) = v35;
    *v35 = v0;
    v35[1] = sub_100BB5044;
    v19 = v0 + 320;
    v20 = v0 + 472;
LABEL_7:

    return v86(v19, v20);
  }

  v83 = swift_task_alloc();
  *(v0 + 1368) = v83;
  *v83 = v0;
  v83[1] = sub_100BB54EC;

  return sub_100A50BF4(v0 + 168, v0 + 472, v34);
}

uint64_t sub_100BB3A88()
{
  v1 = *(v0 + 976);
  v2 = *(v0 + 968);
  v3 = *(v0 + 952);
  v4 = *(v0 + 944);
  v5 = *(v0 + 1411);
  sub_10001F280(v0 + 472, v0 + 872);
  (*(v3 + 16))(v2, v1, v4);
  v6 = sub_100BB8B48((v0 + 872), v5, v5, v2);
  *(v0 + 1064) = v6;
  LOBYTE(v4) = *(v6 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_standalonePairing);
  type metadata accessor for AirPodsLEPairingValidator();
  v7 = swift_allocObject();
  *(v0 + 1072) = v7;
  swift_defaultActor_initialize();
  type metadata accessor for DeviceIdentityUtility(0);
  v8 = swift_allocObject();
  swift_defaultActor_initialize();
  v9 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 56))(v8 + v9, 1, 1, v10);
  *(v8 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v8 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v8 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 9;
  *(v7 + 112) = v8;
  *(v7 + 120) = v4;
  *(v0 + 1080) = type metadata accessor for AirPodsLEPeripheralProvider();
  *(v0 + 1088) = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for CentralManager();
  v11 = swift_task_alloc();
  *(v0 + 1096) = v11;
  *v11 = v0;
  v11[1] = sub_100BB3C74;

  return static CentralManager.pairingCentralManager.getter();
}

uint64_t sub_100BB3C74(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1104) = v1;

  if (v1)
  {
    v5 = sub_100BB41EC;
  }

  else
  {
    *(v4 + 1112) = a1;
    v5 = sub_100BB3D9C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100BB3D9C()
{
  v1 = v0[117];
  *(v0[136] + 112) = v0[139];
  type metadata accessor for AirPodsLEMetadataProvider();
  v0[140] = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for BackgroundPairingResultListener();
  v0[141] = swift_allocObject();
  swift_defaultActor_initialize();
  v0[142] = sub_100BB8E0C(&qword_1016B7738, 255, type metadata accessor for BackgroundPairingResultListener, &unk_1013B5240);
  type metadata accessor for AirPodsLEExecutorsFactory();
  v0[143] = swift_allocObject();
  swift_defaultActor_initialize();
  v0[144] = sub_100BB8E0C(&qword_1016B7740, 255, type metadata accessor for AirPodsLEPairingValidator, &unk_10138FE08);
  v0[145] = sub_100BB8E0C(&qword_1016ACEA0, 255, type metadata accessor for AirPodsLEPeripheralProvider, &unk_10140D338);
  v0[146] = sub_100BB8E0C(&qword_1016B7748, 255, type metadata accessor for AirPodsLEMetadataProvider, &unk_10140D700);
  v0[147] = sub_100BB8E0C(&qword_1016B31B0, 255, type metadata accessor for AirPodsLEPairingInfoStore, &unk_1013D4128);
  v0[148] = sub_100BB8E0C(&qword_1016B7750, 255, type metadata accessor for AirPodsLEExecutorsFactory, &unk_1013C24D0);

  return _swift_task_switch(sub_100BB3FC8, v1, 0);
}

uint64_t sub_100BB3FC8()
{
  v1 = *(v0 + 1032);
  (*(*(v0 + 952) + 8))(*(v0 + 976), *(v0 + 944));
  sub_100007BAC((v0 + 792));
  sub_10000B3A8(v1, &qword_1016B76F0, &unk_1013DD160);
  sub_100007BAC((v0 + 472));
  sub_100007BAC((v0 + 832));
  v16 = *(v0 + 1184);
  v15 = *(v0 + 1176);
  v12 = *(v0 + 1168);
  v2 = *(v0 + 1160);
  v3 = *(v0 + 1152);
  v14 = *(v0 + 1144);
  v13 = *(v0 + 1128);
  v4 = *(v0 + 1120);
  v5 = *(v0 + 1088);
  v6 = *(v0 + 1072);
  v7 = *(v0 + 1064);
  sub_10000B3A8(*(v0 + 1016), &qword_1016B76F0, &unk_1013DD160);
  v8 = *(v0 + 912);
  v8[3] = &type metadata for UniversalCoordinatorDependencies;
  v8[4] = sub_100BB89F0();
  v9 = swift_allocObject();
  *v8 = v9;
  *(v9 + 16) = v6;
  *(v9 + 24) = v3;
  *(v9 + 32) = v5;
  *(v9 + 40) = v2;
  *(v9 + 48) = v4;
  *(v9 + 56) = v12;
  *(v9 + 64) = 0u;
  *(v9 + 80) = 0u;
  *(v9 + 96) = 0u;
  *(v9 + 112) = v13;
  *(v9 + 128) = v7;
  *(v9 + 136) = v15;
  *(v9 + 144) = v14;
  *(v9 + 152) = v16;
  *(v9 + 160) = _swiftEmptyArrayStorage;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100BB41EC()
{
  swift_defaultActor_destroy();
  swift_deallocPartialClassInstance();

  return _swift_task_switch(sub_100BB4270, 0, 0);
}

uint64_t sub_100BB4270()
{
  v1 = *(v0 + 936);

  return _swift_task_switch(sub_100BB42E8, v1, 0);
}

uint64_t sub_100BB42E8()
{
  v1 = v0[129];
  v2 = v0[127];
  (*(v0[119] + 8))(v0[122], v0[118]);
  sub_100007BAC(v0 + 99);
  sub_10000B3A8(v1, &qword_1016B76F0, &unk_1013DD160);
  sub_100007BAC(v0 + 59);
  sub_100007BAC(v0 + 104);
  sub_10000B3A8(v2, &qword_1016B76F0, &unk_1013DD160);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100BB444C()
{
  v1 = *(v0 + 1413);
  v2 = *(v0 + 1208);
  v24 = *(v0 + 1412);
  v3 = *(v0 + 1200);
  v4 = *(v0 + 1192);
  v5 = *(v0 + 968);
  v6 = *(v0 + 960);
  v7 = *(v0 + 952);
  v8 = *(v0 + 944);
  sub_10001F280(v0 + 472, v0 + 712);
  (*(v7 + 16))(v5, v6, v8);
  *(v0 + 776) = &type metadata for SPDAccessoryType;
  *(v0 + 784) = sub_100BB8DB8();
  *(v0 + 752) = v1;
  type metadata accessor for AirPodsLEPairingInfoStore(0);
  v9 = swift_allocObject();
  *(v0 + 1224) = v9;
  swift_defaultActor_initialize();
  *(v9 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessoryPeripheral) = 0;
  v10 = OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessoryMetadata;
  v11 = type metadata accessor for AccessoryMetadata(0);
  (*(*(v11 - 8) + 56))(v9 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessoryProductInfo;
  v13 = type metadata accessor for AccessoryProductInfo(0);
  (*(*(v13 - 8) + 56))(v9 + v12, 1, 1, v13);
  *(v9 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessoryUserConfiguration) = 0;
  v14 = v9 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessoryPairingConfiguration;
  *(v14 + 32) = 0;
  *v14 = 0u;
  *(v14 + 16) = 0u;
  *(v9 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_beaconCreationInfo) = _swiftEmptyArrayStorage;
  *(v9 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessoryDetails) = 0;
  v15 = v9 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_pairingUIInfo;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0;
  sub_1000BC4D4(&qword_1016B2BA8, &unk_1013EACE0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  sub_10000A748((v0 + 712), v16 + 32);
  *(v9 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessories) = v16;
  sub_10000A748((v0 + 752), v9 + 112);
  *(v9 + 152) = v1;
  v2(v9 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_classicMacAddress, v5, v8);
  v17 = (v9 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_pairingToken);
  *v17 = v4;
  v17[1] = v3;
  *(v9 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_standalonePairing) = 0;
  *(v9 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_forceRepair) = v24;
  type metadata accessor for AirPodsLEPairingValidator();
  v18 = swift_allocObject();
  *(v0 + 1232) = v18;
  sub_10002E98C(v4, v3);
  swift_defaultActor_initialize();
  type metadata accessor for DeviceIdentityUtility(0);
  v19 = swift_allocObject();
  swift_defaultActor_initialize();
  v20 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v21 = type metadata accessor for Date();
  (*(*(v21 - 8) + 56))(v19 + v20, 1, 1, v21);
  *(v19 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v19 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v19 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 9;
  *(v18 + 112) = v19;
  *(v18 + 120) = 0;
  *(v0 + 1240) = type metadata accessor for AirPodsLEPeripheralProvider();
  *(v0 + 1248) = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for CentralManager();
  v22 = swift_task_alloc();
  *(v0 + 1256) = v22;
  *v22 = v0;
  v22[1] = sub_100BB4844;

  return static CentralManager.pairingCentralManager.getter();
}

uint64_t sub_100BB4844(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1264) = v1;

  if (v1)
  {
    v5 = sub_100BB4DD0;
  }

  else
  {
    *(v4 + 1272) = a1;
    v5 = sub_100BB496C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100BB496C()
{
  v1 = v0[117];
  *(v0[156] + 112) = v0[159];
  type metadata accessor for AirPodsLEMetadataProvider();
  v0[160] = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for BackgroundPairingResultListener();
  v0[161] = swift_allocObject();
  swift_defaultActor_initialize();
  v0[162] = sub_100BB8E0C(&qword_1016B7738, 255, type metadata accessor for BackgroundPairingResultListener, &unk_1013B5240);
  type metadata accessor for AirPodsLEExecutorsFactory();
  v0[163] = swift_allocObject();
  swift_defaultActor_initialize();
  v0[164] = sub_100BB8E0C(&qword_1016B7740, 255, type metadata accessor for AirPodsLEPairingValidator, &unk_10138FE08);
  v0[165] = sub_100BB8E0C(&qword_1016ACEA0, 255, type metadata accessor for AirPodsLEPeripheralProvider, &unk_10140D338);
  v0[166] = sub_100BB8E0C(&qword_1016B7748, 255, type metadata accessor for AirPodsLEMetadataProvider, &unk_10140D700);
  v0[167] = sub_100BB8E0C(&qword_1016B31B0, 255, type metadata accessor for AirPodsLEPairingInfoStore, &unk_1013D4128);
  v0[168] = sub_100BB8E0C(&qword_1016B7750, 255, type metadata accessor for AirPodsLEExecutorsFactory, &unk_1013C24D0);

  return _swift_task_switch(sub_100BB4B98, v1, 0);
}

uint64_t sub_100BB4B98()
{
  v1 = *(v0 + 1032);
  v2 = *(v0 + 960);
  v3 = *(v0 + 952);
  v4 = *(v0 + 944);
  sub_100006654(*(v0 + 1192), *(v0 + 1200));
  (*(v3 + 8))(v2, v4);
  sub_100007BAC((v0 + 632));
  sub_10000B3A8(v1, &qword_1016B76F0, &unk_1013DD160);
  sub_100007BAC((v0 + 472));
  sub_100007BAC((v0 + 672));
  v19 = *(v0 + 1344);
  v18 = *(v0 + 1336);
  v15 = *(v0 + 1328);
  v5 = *(v0 + 1320);
  v6 = *(v0 + 1312);
  v17 = *(v0 + 1304);
  v16 = *(v0 + 1288);
  v7 = *(v0 + 1280);
  v8 = *(v0 + 1248);
  v9 = *(v0 + 1232);
  v10 = *(v0 + 1224);
  sub_10000B3A8(*(v0 + 1016), &qword_1016B76F0, &unk_1013DD160);
  v11 = *(v0 + 912);
  v11[3] = &type metadata for UniversalCoordinatorDependencies;
  v11[4] = sub_100BB89F0();
  v12 = swift_allocObject();
  *v11 = v12;
  *(v12 + 16) = v9;
  *(v12 + 24) = v6;
  *(v12 + 32) = v8;
  *(v12 + 40) = v5;
  *(v12 + 48) = v7;
  *(v12 + 56) = v15;
  *(v12 + 64) = 0u;
  *(v12 + 80) = 0u;
  *(v12 + 96) = 0u;
  *(v12 + 112) = v16;
  *(v12 + 128) = v10;
  *(v12 + 136) = v18;
  *(v12 + 144) = v17;
  *(v12 + 152) = v19;
  *(v12 + 160) = _swiftEmptyArrayStorage;

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100BB4DD0()
{
  swift_defaultActor_destroy();
  swift_deallocPartialClassInstance();

  return _swift_task_switch(sub_100BB4E54, 0, 0);
}

uint64_t sub_100BB4E54()
{
  v1 = *(v0 + 936);

  return _swift_task_switch(sub_100BB4ECC, v1, 0);
}

uint64_t sub_100BB4ECC()
{
  v1 = v0[129];
  v2 = v0[127];
  v3 = v0[120];
  v4 = v0[119];
  v5 = v0[118];
  sub_100006654(v0[149], v0[150]);
  (*(v4 + 8))(v3, v5);
  sub_100007BAC(v0 + 79);
  sub_10000B3A8(v1, &qword_1016B76F0, &unk_1013DD160);
  sub_100007BAC(v0 + 59);
  sub_100007BAC(v0 + 84);
  sub_10000B3A8(v2, &qword_1016B76F0, &unk_1013DD160);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100BB5044()
{
  v2 = *v1;
  *(*v1 + 1360) = v0;

  v3 = *(v2 + 936);
  if (v0)
  {
    v4 = sub_100BB537C;
  }

  else
  {
    v4 = sub_100BB5170;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100BB5170()
{
  v1 = *(v0 + 1032);
  sub_10000B3A8(v0 + 512, &qword_1016B7718, &qword_1013DD180);
  sub_10000B3A8(v1, &qword_1016B76F0, &unk_1013DD160);
  v15 = *(v0 + 464);
  v13 = *(v0 + 384);
  v14 = *(v0 + 400);
  v7 = *(v0 + 336);
  v8 = *(v0 + 320);
  v6 = *(v0 + 352);
  v11 = *(v0 + 432);
  v12 = *(v0 + 416);
  v9 = *(v0 + 368);
  v10 = *(v0 + 448);
  sub_100007BAC((v0 + 472));
  sub_100007BAC((v0 + 592));
  sub_10000B3A8(v0 + 552, &qword_1016B7718, &qword_1013DD180);
  sub_10000B3A8(*(v0 + 1016), &qword_1016B76F0, &unk_1013DD160);
  v2 = *(v0 + 912);
  v2[3] = &type metadata for UniversalCoordinatorDependencies;
  v2[4] = sub_100BB89F0();
  v3 = swift_allocObject();
  *v2 = v3;
  *(v3 + 16) = v8;
  *(v3 + 32) = v7;
  *(v3 + 48) = v6;
  *(v3 + 64) = v9;
  *(v3 + 80) = v13;
  *(v3 + 96) = v14;
  *(v3 + 112) = v12;
  *(v3 + 128) = v11;
  *(v3 + 144) = v10;
  *(v3 + 160) = v15;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100BB537C()
{
  v1 = v0[129];
  v2 = v0[127];
  sub_10000B3A8((v0 + 64), &qword_1016B7718, &qword_1013DD180);
  sub_10000B3A8(v1, &qword_1016B76F0, &unk_1013DD160);
  sub_100007BAC(v0 + 59);
  sub_100007BAC(v0 + 74);
  sub_10000B3A8((v0 + 69), &qword_1016B7718, &qword_1013DD180);
  sub_10000B3A8(v2, &qword_1016B76F0, &unk_1013DD160);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100BB54EC()
{
  v2 = *v1;
  *(*v1 + 1376) = v0;

  v3 = *(v2 + 936);
  if (v0)
  {
    v4 = sub_100BB5830;
  }

  else
  {
    v4 = sub_100BB5618;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100BB5618()
{
  v1 = *(v0 + 1032);
  sub_10000B3A8(v0 + 512, &qword_1016B7718, &qword_1013DD180);
  sub_10000B3A8(v1, &qword_1016B76F0, &unk_1013DD160);
  v15 = *(v0 + 312);
  v14 = *(v0 + 216);
  v12 = *(v0 + 248);
  v13 = *(v0 + 232);
  v7 = *(v0 + 184);
  v8 = *(v0 + 168);
  v6 = *(v0 + 200);
  v10 = *(v0 + 280);
  v11 = *(v0 + 264);
  v9 = *(v0 + 296);
  sub_100007BAC((v0 + 472));
  sub_100007BAC((v0 + 592));
  sub_10000B3A8(v0 + 552, &qword_1016B7718, &qword_1013DD180);
  sub_10000B3A8(*(v0 + 1016), &qword_1016B76F0, &unk_1013DD160);
  v2 = *(v0 + 912);
  v2[3] = &type metadata for UniversalCoordinatorDependencies;
  v2[4] = sub_100BB89F0();
  v3 = swift_allocObject();
  *v2 = v3;
  *(v3 + 16) = v8;
  *(v3 + 32) = v7;
  *(v3 + 48) = v6;
  *(v3 + 64) = v14;
  *(v3 + 80) = v13;
  *(v3 + 96) = v12;
  *(v3 + 112) = v11;
  *(v3 + 128) = v10;
  *(v3 + 144) = v9;
  *(v3 + 160) = v15;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100BB5830()
{
  v1 = v0[129];
  v2 = v0[127];
  sub_10000B3A8((v0 + 64), &qword_1016B7718, &qword_1013DD180);
  sub_10000B3A8(v1, &qword_1016B76F0, &unk_1013DD160);
  sub_100007BAC(v0 + 59);
  sub_100007BAC(v0 + 74);
  sub_10000B3A8((v0 + 69), &qword_1016B7718, &qword_1013DD180);
  sub_10000B3A8(v2, &qword_1016B76F0, &unk_1013DD160);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100BB59A0()
{
  v2 = *v1;
  *(*v1 + 1400) = v0;

  if (v0)
  {
    v3 = *(v2 + 936);
    v4 = sub_100BB5C24;
  }

  else
  {
    v5 = *(v2 + 936);

    v4 = sub_100BB5AC8;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100BB5AC8(uint64_t a1)
{
  v2 = *(v1 + 160);
  v3 = *(v1 + 912);
  v4 = sub_100BB89F0();
  v5 = swift_allocObject();
  v6 = *(v1 + 80);
  v7 = *(v1 + 96);
  v8 = *(v1 + 16);
  v9 = *(v1 + 32);
  v11 = *(v1 + 48);
  v10 = *(v1 + 64);
  v12 = *(v1 + 112);
  v13 = *(v1 + 128);
  v14 = *(v1 + 144);
  v3[3] = &type metadata for UniversalCoordinatorDependencies;
  v3[4] = v4;
  *v3 = v5;
  *(v5 + 16) = v8;
  *(v5 + 32) = v9;
  *(v5 + 48) = v11;
  *(v5 + 64) = v10;
  *(v5 + 80) = v6;
  *(v5 + 96) = v7;
  *(v5 + 112) = v12;
  *(v5 + 128) = v13;
  *(v5 + 144) = v14;
  *(v5 + 160) = v2;

  v15 = *(v1 + 8);

  return v15();
}

uint64_t sub_100BB5C24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BB5D24(uint64_t a1, uint64_t a2)
{
  v3[82] = v2;
  v3[81] = a2;
  v3[80] = a1;
  sub_1000BC4D4(&qword_1016B76F0, &unk_1013DD160);
  v3[83] = swift_task_alloc();
  v4 = type metadata accessor for PairingConfiguration();
  v3[84] = v4;
  v3[85] = *(v4 - 8);
  v3[86] = swift_task_alloc();
  sub_1000BC4D4(&qword_101699860, &qword_1013A34D0);
  v3[87] = swift_task_alloc();
  v5 = type metadata accessor for Device();
  v3[88] = v5;
  v3[89] = *(v5 - 8);
  v3[90] = swift_task_alloc();
  v6 = type metadata accessor for DetectedAccessory();
  v3[91] = v6;
  v3[92] = *(v6 - 8);
  v3[93] = swift_task_alloc();
  v3[94] = swift_getObjectType();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[95] = v8;
  v3[96] = v7;

  return _swift_task_switch(sub_100BB5F48, v8, v7);
}

uint64_t sub_100BB5F48()
{
  v1 = *(v0 + 656);
  dispatch thunk of PairingCoordinator.dependencies.getter();

  return _swift_task_switch(sub_100BB5FC0, v1, 0);
}

uint64_t sub_100BB5FC0()
{
  sub_1000035D0(v0 + 40, v0[43]);
  v0[97] = dispatch thunk of CoordinatorDependencies.pairingInfoStore.getter();
  v0[98] = v1;
  v0[99] = swift_getObjectType();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100BB6070, v3, v2);
}

uint64_t sub_100BB6070()
{
  v1 = *(v0 + 656);
  dispatch thunk of PairingInfoStore.accessory.getter();
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_100BB60F0, v1, 0);
}

uint64_t sub_100BB60F0()
{
  v1 = (*(v0[92] + 88))(v0[93], v0[91]);
  if (v1 == enum case for DetectedAccessory.single(_:))
  {
    v2 = v0[93];
    v3 = v0[89];
    (*(v0[92] + 96))(v2, v0[91]);
    sub_10000A748(v2, (v0 + 45));
    sub_10001F280((v0 + 45), (v0 + 50));
    sub_1000BC4D4(&qword_1016B7700, &qword_1013DD170);
    v4 = swift_dynamicCast();
    v5 = *(v3 + 56);
    if (v4)
    {
      v6 = v0[90];
      v7 = v0[89];
      v8 = v0[88];
      v9 = v0[87];
      v10 = v0[86];
      v11 = v0[85];
      v12 = v0[84];
      v13 = v0[83];
      v5(v9, 0, 1, v8);
      (*(v7 + 32))(v6, v9, v8);
      v10[3] = v8;
      v10[4] = sub_100BB8E0C(&qword_10169EF58, 255, &type metadata accessor for Device, &protocol conformance descriptor for Device);
      v14 = sub_1000280DC(v10);
      (*(v7 + 16))(v14, v6, v8);
      (*(v11 + 104))(v10, enum case for PairingConfiguration.single(_:), v12);
      v15 = type metadata accessor for PairingContext();
      (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
      v16 = swift_task_alloc();
      v0[100] = v16;
      *v16 = v0;
      v16[1] = sub_100BB666C;
      v17 = v0[86];
      v18 = v0[83];

      return sub_100BB2C54((v0 + 55), v17, v18);
    }

    v22 = v0[87];
    v5(v22, 1, 1, v0[88]);
    sub_10000B3A8(v22, &qword_101699860, &qword_1013A34D0);
    v23 = type metadata accessor for PairingServiceProxyError();
    sub_100BB8E0C(&qword_1016B76F8, 255, &type metadata accessor for PairingServiceProxyError, &protocol conformance descriptor for PairingServiceProxyError);
    swift_allocError();
    (*(*(v23 - 8) + 104))(v24, enum case for PairingServiceProxyError.invalidAccessory(_:), v23);
    swift_willThrow();
    sub_100007BAC(v0 + 45);
  }

  else if (v1 == enum case for DetectedAccessory.uncertain(_:))
  {
    v20 = type metadata accessor for PairingServiceProxyError();
    sub_100BB8E0C(&qword_1016B76F8, 255, &type metadata accessor for PairingServiceProxyError, &protocol conformance descriptor for PairingServiceProxyError);
    swift_allocError();
    (*(*(v20 - 8) + 104))(v21, enum case for PairingServiceProxyError.unsupported(_:), v20);
    swift_willThrow();
  }

  else
  {
    v25 = enum case for DetectedAccessory.none(_:);
    v26 = v1;
    v27 = type metadata accessor for PairingServiceProxyError();
    sub_100BB8E0C(&qword_1016B76F8, 255, &type metadata accessor for PairingServiceProxyError, &protocol conformance descriptor for PairingServiceProxyError);
    swift_allocError();
    (*(*(v27 - 8) + 104))(v28, enum case for PairingServiceProxyError.invalidAccessory(_:), v27);
    swift_willThrow();
    if (v26 != v25)
    {
      (*(v0[92] + 8))(v0[93], v0[91]);
    }
  }

  sub_100007BAC(v0 + 40);

  v29 = v0[1];

  return v29();
}

uint64_t sub_100BB666C()
{
  v2 = *v1;
  *(*v1 + 808) = v0;

  if (v0)
  {
    v3 = v2[82];
    sub_10000B3A8(v2[83], &qword_1016B76F0, &unk_1013DD160);
    v4 = sub_100BB6F60;
    v5 = v3;
  }

  else
  {
    v6 = v2[86];
    v7 = v2[85];
    v8 = v2[84];
    v9 = v2[83];
    v10 = v2[82];
    sub_10000B3A8(v9, &qword_1016B76F0, &unk_1013DD160);
    (*(v7 + 8))(v6, v8);
    v4 = sub_100BB67EC;
    v5 = v10;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_100BB67EC()
{
  sub_1000035D0(v0 + 55, v0[58]);
  v0[102] = dispatch thunk of CoordinatorDependencies.validator.getter();
  v0[103] = v1;
  sub_1000035D0(v0 + 55, v0[58]);
  v0[104] = dispatch thunk of CoordinatorDependencies.peripheralProvider.getter();
  v0[105] = v2;
  sub_1000035D0(v0 + 55, v0[58]);
  v0[106] = dispatch thunk of CoordinatorDependencies.metadataProvider.getter();
  v0[107] = v3;
  sub_1000035D0(v0 + 55, v0[58]);
  v0[108] = dispatch thunk of CoordinatorDependencies.scanner.getter();
  v0[109] = v4;
  v5 = v0[96];
  v6 = v0[95];

  return _swift_task_switch(sub_100BB68F4, v6, v5);
}

uint64_t sub_100BB68F4()
{
  v1 = *(v0 + 656);
  dispatch thunk of PairingCoordinator.dependencies.getter();

  return _swift_task_switch(sub_100BB696C, v1, 0);
}

uint64_t sub_100BB696C()
{
  sub_1000035D0(v0 + 60, v0[63]);
  v0[110] = dispatch thunk of CoordinatorDependencies.pairingUIManager.getter();
  v0[111] = v1;
  v2 = v0[96];
  v3 = v0[95];

  return _swift_task_switch(sub_100BB69FC, v3, v2);
}

uint64_t sub_100BB69FC()
{
  v1 = *(v0 + 656);
  dispatch thunk of PairingCoordinator.dependencies.getter();

  return _swift_task_switch(sub_100BB6A74, v1, 0);
}

uint64_t sub_100BB6A74()
{
  sub_1000035D0(v0 + 65, v0[68]);
  v0[112] = dispatch thunk of CoordinatorDependencies.userSessionListener.getter();
  v0[113] = v1;
  v2 = v0[96];
  v3 = v0[95];

  return _swift_task_switch(sub_100BB6B08, v3, v2);
}

uint64_t sub_100BB6B08()
{
  v1 = *(v0 + 656);
  dispatch thunk of PairingCoordinator.dependencies.getter();

  return _swift_task_switch(sub_100BB6B80, v1, 0);
}

uint64_t sub_100BB6B80()
{
  v37 = *(v0 + 888);
  v38 = *(v0 + 896);
  v36 = *(v0 + 880);
  v34 = *(v0 + 904);
  v35 = *(v0 + 872);
  v32 = *(v0 + 856);
  v33 = *(v0 + 864);
  v1 = *(v0 + 848);
  v28 = *(v0 + 840);
  v2 = *(v0 + 832);
  v30 = *(v0 + 824);
  v27 = *(v0 + 816);
  sub_1000035D0((v0 + 560), *(v0 + 584));
  v31 = dispatch thunk of CoordinatorDependencies.pairingResultListener.getter();
  v29 = v3;
  sub_1000035D0((v0 + 440), *(v0 + 464));
  v4 = dispatch thunk of CoordinatorDependencies.pairingInfoStore.getter();
  v26 = v5;
  sub_1000035D0((v0 + 440), *(v0 + 464));
  v6 = dispatch thunk of CoordinatorDependencies.pairingExecutorFactory.getter();
  v8 = v7;
  ObjectType = swift_getObjectType();
  v10 = v2;
  v11 = swift_getObjectType();
  v12 = v1;
  v13 = swift_getObjectType();
  v14 = swift_getObjectType();
  v15 = swift_getObjectType();
  v25.n128_u64[0] = v29;
  v25.n128_u64[1] = v4;
  *(&v24 + 1) = v31;
  *&v24 = v34;
  sub_100A4F7CC(v27, v10, v12, v33, v35, v36, v37, v38, v0 + 16, v24, v25, v6, _swiftEmptyArrayStorage, ObjectType, v14, v13, v11, v15, v30, v26, v32, v28, v8);
  sub_100007BAC((v0 + 560));
  sub_100007BAC((v0 + 520));
  sub_100007BAC((v0 + 480));
  *(v0 + 624) = &type metadata for UniversalCoordinatorDependencies;
  *(v0 + 632) = sub_100BB89F0();
  v16 = swift_allocObject();
  *(v0 + 600) = v16;
  v17 = *(v0 + 128);
  *(v16 + 112) = *(v0 + 112);
  *(v16 + 128) = v17;
  *(v16 + 144) = *(v0 + 144);
  *(v16 + 160) = *(v0 + 160);
  v18 = *(v0 + 64);
  *(v16 + 48) = *(v0 + 48);
  *(v16 + 64) = v18;
  v19 = *(v0 + 96);
  *(v16 + 80) = *(v0 + 80);
  *(v16 + 96) = v19;
  v20 = *(v0 + 32);
  *(v16 + 16) = *(v0 + 16);
  *(v16 + 32) = v20;
  sub_100BB8A44(v0 + 16, v0 + 168);
  v21 = *(v0 + 768);
  v22 = *(v0 + 760);

  return _swift_task_switch(sub_100BB6DF0, v22, v21);
}

uint64_t sub_100BB6DF0()
{
  v1 = *(v0 + 656);
  dispatch thunk of PairingCoordinator.updateDependencies(_:)();
  sub_100007BAC((v0 + 600));

  return _swift_task_switch(sub_100BB6E70, v1, 0);
}

uint64_t sub_100BB6E70()
{
  v1 = v0[90];
  v2 = v0[89];
  v3 = v0[88];
  sub_100BB8AA0((v0 + 2));
  (*(v2 + 8))(v1, v3);
  sub_100007BAC(v0 + 45);
  sub_100007BAC(v0 + 55);
  sub_100007BAC(v0 + 40);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100BB6F60()
{
  v1 = v0[86];
  v2 = v0[85];
  v3 = v0[84];
  (*(v0[89] + 8))(v0[90], v0[88]);
  sub_100007BAC(v0 + 45);
  (*(v2 + 8))(v1, v3);
  sub_100007BAC(v0 + 40);

  v4 = v0[1];

  return v4();
}

uint64_t getEnumTagSinglePayload for SPDAccessoryType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 3;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 3;
  v9 = v7 - 3;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SPDAccessoryType(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100BB71D0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_100BB71E4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t sub_100BB7204(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for PairingServiceProxyImplementation();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_100BB72AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for PairingServiceProxyImplementation();
  *v8 = v4;
  v8[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v9, a4);
}

uint64_t sub_100BB7370(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for PairingServiceProxyImplementation();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_100BB7418(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for PairingServiceProxyImplementation();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.startup()(v5, a2);
}

uint64_t sub_100BB74C0(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for PairingServiceProxyImplementation();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.run()(v5, a2);
}

uint64_t sub_100BB7568(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100159154;

  return sub_100BB2794(a1, a2);
}

uint64_t sub_100BB760C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014650;

  return sub_100BB5D24(a1, a2);
}

uint64_t sub_100BB76B0()
{
  type metadata accessor for PairingServiceProxyImplementation();
  sub_100BB8E0C(&qword_1016B76E8, v0, type metadata accessor for PairingServiceProxyImplementation, &unk_1013DD0D8);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_100BB7760()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BCB8);
  sub_1000076D4(v0, qword_10177BCB8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100BB77E0()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016B7608);
  v1 = sub_1000076D4(v0, qword_1016B7608);
  if (qword_101694D28 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177BCB8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100BB78A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v149 = a2;
  v3 = type metadata accessor for BluetoothManufacturerAdvertisementData.SubType();
  v137 = *(v3 - 8);
  v138 = v3;
  v4 = __chkstk_darwin(v3);
  v136 = &v127[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v135 = &v127[-v6];
  v7 = sub_1000BC4D4(&unk_1016B7C30, &qword_1013DBFD0);
  v144 = *(v7 - 8);
  v145 = v7;
  __chkstk_darwin(v7);
  v143 = &v127[-v8];
  v9 = type metadata accessor for UUID();
  v147 = *(v9 - 8);
  v148 = v9;
  __chkstk_darwin(v9);
  v146 = &v127[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Endianness();
  __chkstk_darwin(v11 - 8);
  v12 = sub_1000BC4D4(&qword_1016B7760, &qword_1013DD1B0);
  __chkstk_darwin(v12 - 8);
  v14 = &v127[-v13];
  v15 = type metadata accessor for BluetoothManufacturerAdvertisementData();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v140 = &v127[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v20 = &v127[-v19];
  v21 = sub_1000BC4D4(&qword_101699860, &qword_1013A34D0);
  __chkstk_darwin(v21 - 8);
  v23 = &v127[-v22];
  v24 = type metadata accessor for Device();
  v25 = __chkstk_darwin(v24);
  v27 = &v127[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = __chkstk_darwin(v25);
  v142 = &v127[-v29];
  v30 = __chkstk_darwin(v28);
  v139 = &v127[-v31];
  __chkstk_darwin(v30);
  v33 = &v127[-v32];
  v34 = a1;
  v36 = v35;
  sub_10001F280(v34, v151);
  sub_1000BC4D4(&qword_1016B7700, &qword_1013DD170);
  v37 = swift_dynamicCast();
  v38 = *(v36 + 56);
  if (!v37)
  {
    v38(v23, 1, 1, v24);
    sub_10000B3A8(v23, &qword_101699860, &qword_1013A34D0);
    v55 = type metadata accessor for PairingContext();
    return (*(*(v55 - 8) + 56))(v149, 1, 1, v55);
  }

  v38(v23, 0, 1, v24);
  v39 = *(v36 + 32);
  v141 = v24;
  v39(v33, v23, v24);
  Device.manufacturerData.getter();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_10000B3A8(v14, &qword_1016B7760, &qword_1013DD1B0);
    if (qword_101694D30 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_1000076D4(v40, qword_1016B7608);
    v41 = v141;
    (*(v36 + 16))(v27, v33, v141);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v42, v43))
    {

      v67 = *(v36 + 8);
      v67(v27, v41);
      v67(v33, v41);
LABEL_18:
      v88 = v149;
      v89 = type metadata accessor for PairingContext();
      return (*(*(v89 - 8) + 56))(v88, 1, 1, v89);
    }

    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v134 = v33;
    v142 = v45;
    v151[0] = v45;
    *v44 = 141558275;
    *(v44 + 4) = 1752392040;
    *(v44 + 12) = 2081;
    v46 = v143;
    Device.id.getter();
    v48 = v145;
    v47 = v146;
    Identifier.id.getter();
    (*(v144 + 8))(v46, v48);
    sub_100BB8E0C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v49 = v148;
    v50 = dispatch thunk of CustomStringConvertible.description.getter();
    v52 = v51;
    (*(v147 + 8))(v47, v49);
    v53 = *(v36 + 8);
    v53(v27, v41);
    v54 = sub_1000136BC(v50, v52, v151);

    *(v44 + 14) = v54;
    _os_log_impl(&_mh_execute_header, v42, v43, "No manufacturer data for device %{private,mask.hash}s!", v44, 0x16u);
    sub_100007BAC(v142);

LABEL_16:
    v53(v134, v41);
    goto LABEL_18;
  }

  v57 = v15;
  v134 = v33;
  v133 = v16;
  v58 = v20;
  (*(v16 + 32))(v20, v14, v15);
  v59 = BluetoothManufacturerAdvertisementData.rawPayload.getter();
  v61 = v60;
  v62 = Data.subdata(in:)();
  v64 = v63;
  sub_100016590(v59, v61);
  sub_100017D5C(v62, v64);
  static Endianness.current.getter();
  sub_1002053B0();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (BYTE2(v151[0]) == 1)
  {
    v65 = v141;
    v66 = v142;
LABEL_12:
    v142 = v62;
    if (qword_101694D30 != -1)
    {
      swift_once();
    }

    v69 = type metadata accessor for Logger();
    sub_1000076D4(v69, qword_1016B7608);
    v70 = v134;
    (*(v36 + 16))(v66, v134, v65);
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v71, v72))
    {

      sub_100016590(v142, v64);
      v87 = *(v36 + 8);
      v87(v66, v65);
      (*(v133 + 8))(v58, v57);
      v87(v70, v65);
      goto LABEL_18;
    }

    v73 = swift_slowAlloc();
    v132 = v57;
    v74 = v73;
    v75 = swift_slowAlloc();
    v140 = v58;
    v76 = v75;
    v151[0] = v75;
    *v74 = 141558275;
    *(v74 + 4) = 1752392040;
    *(v74 + 12) = 2081;
    v77 = v66;
    v78 = v143;
    Device.id.getter();
    v131 = v64;
    v79 = v145;
    v80 = v146;
    Identifier.id.getter();
    (*(v144 + 8))(v78, v79);
    sub_100BB8E0C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v81 = v148;
    v82 = dispatch thunk of CustomStringConvertible.description.getter();
    v84 = v83;
    (*(v147 + 8))(v80, v81);
    v53 = *(v36 + 8);
    v85 = v77;
    v41 = v141;
    v53(v85, v141);
    v86 = sub_1000136BC(v82, v84, v151);

    *(v74 + 14) = v86;
    _os_log_impl(&_mh_execute_header, v71, v72, "No product id for device %{private,mask.hash}s!", v74, 0x16u);
    sub_100007BAC(v76);

    sub_100016590(v142, v131);
    (*(v133 + 8))(v140, v132);
    goto LABEL_16;
  }

  v68 = sub_100B8A580(LOWORD(v151[0]));
  v65 = v141;
  v66 = v142;
  if (v68 == 3)
  {
    goto LABEL_12;
  }

  v130 = v68;
  v131 = v64;
  if (qword_101694D30 != -1)
  {
    swift_once();
  }

  v90 = type metadata accessor for Logger();
  sub_1000076D4(v90, qword_1016B7608);
  v91 = v139;
  (*(v36 + 16))(v139, v134, v65);
  v92 = v133;
  v93 = v140;
  (*(v133 + 16))(v140, v58, v57);
  v94 = Logger.logObject.getter();
  v95 = static os_log_type_t.default.getter();
  v96 = os_log_type_enabled(v94, v95);
  v132 = v57;
  if (v96)
  {
    v97 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    v151[0] = v129;
    *v97 = 141558787;
    *(v97 + 4) = 1752392040;
    *(v97 + 12) = 2081;
    v142 = v62;
    v98 = v143;
    v128 = v95;
    Device.id.getter();
    v99 = v145;
    v100 = v146;
    Identifier.id.getter();
    (*(v144 + 8))(v98, v99);
    sub_100BB8E0C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v101 = v148;
    v102 = dispatch thunk of CustomStringConvertible.description.getter();
    v103 = v57;
    v105 = v104;
    (*(v147 + 8))(v100, v101);
    v148 = *(v36 + 8);
    v148(v139, v141);
    v106 = sub_1000136BC(v102, v105, v151);

    *(v97 + 14) = v106;
    *(v97 + 22) = 2082;
    v107 = v140;
    BluetoothManufacturerAdvertisementData.subType.getter();
    v108 = v138;
    v109 = String.init<A>(describing:)();
    v111 = v110;
    v112 = *(v92 + 8);
    v113 = v103;
    v65 = v141;
    v112(v107, v113);
    v114 = sub_1000136BC(v109, v111, v151);

    *(v97 + 24) = v114;
    *(v97 + 32) = 2082;
    v62 = v142;
    v150 = v130;
    v115 = String.init<A>(describing:)();
    v117 = sub_1000136BC(v115, v116, v151);

    *(v97 + 34) = v117;
    _os_log_impl(&_mh_execute_header, v94, v128, "Device %{private,mask.hash}s: subType = %{public}s, productID = %{public}s.", v97, 0x2Au);
    swift_arrayDestroy();

    v118 = v149;
  }

  else
  {

    v112 = *(v92 + 8);
    v112(v93, v57);
    v148 = *(v36 + 8);
    v148(v91, v65);
    v118 = v149;
    v108 = v138;
  }

  v119 = v136;
  BluetoothManufacturerAdvertisementData.subType.getter();
  v120 = v137;
  v121 = (*(v137 + 88))(v119, v108);
  if (v121 == enum case for BluetoothManufacturerAdvertisementData.SubType.objectSetup(_:) || v121 == enum case for BluetoothManufacturerAdvertisementData.SubType.objectSetupV2(_:))
  {
    *(v118 + 24) = &type metadata for SPDAccessoryType;
    *(v118 + 32) = sub_100BB8DB8();
    sub_100016590(v62, v131);
    v123 = v130;
    if (v130)
    {
      if (v130 != 1)
      {
        v123 = 2;
      }
    }

    else
    {
      v123 = 3;
    }

    *v118 = v123;
    v112(v58, v132);
    v148(v134, v65);
    v124 = enum case for PairingContext.bluetooth(_:);
    v125 = type metadata accessor for PairingContext();
    v126 = *(v125 - 8);
    (*(v126 + 104))(v118, v124, v125);
    return (*(v126 + 56))(v118, 0, 1, v125);
  }

  else
  {
    sub_100016590(v62, v131);
    v112(v58, v132);
    v148(v134, v65);
    (*(v120 + 8))(v119, v108);
    v122 = type metadata accessor for PairingContext();
    return (*(*(v122 - 8) + 56))(v118, 1, 1, v122);
  }
}

unint64_t sub_100BB89F0()
{
  result = qword_1016B7708;
  if (!qword_1016B7708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B7708);
  }

  return result;
}

unint64_t sub_100BB8AF4()
{
  result = qword_1016B7710;
  if (!qword_1016B7710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B7710);
  }

  return result;
}

uint64_t sub_100BB8B48(__int128 *a1, char a2, char a3, uint64_t a4)
{
  v20 = &type metadata for SPDAccessoryType;
  v21 = sub_100BB8DB8();
  LOBYTE(v19) = a2;
  type metadata accessor for AirPodsLEPairingInfoStore(0);
  v8 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v8 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessoryPeripheral) = 0;
  v9 = OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessoryMetadata;
  v10 = type metadata accessor for AccessoryMetadata(0);
  (*(*(v10 - 8) + 56))(v8 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessoryProductInfo;
  v12 = type metadata accessor for AccessoryProductInfo(0);
  (*(*(v12 - 8) + 56))(v8 + v11, 1, 1, v12);
  *(v8 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessoryUserConfiguration) = 0;
  v13 = v8 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessoryPairingConfiguration;
  *(v13 + 32) = 0;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v8 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_beaconCreationInfo) = _swiftEmptyArrayStorage;
  *(v8 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessoryDetails) = 0;
  v14 = v8 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_pairingUIInfo;
  *v14 = 0u;
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0;
  sub_1000BC4D4(&qword_1016B2BA8, &unk_1013EACE0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_101385D80;
  sub_10000A748(a1, v15 + 32);
  *(v8 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessories) = v15;
  sub_10000A748(&v19, v8 + 112);
  *(v8 + 152) = a3;
  v16 = OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_classicMacAddress;
  v17 = type metadata accessor for MACAddress();
  (*(*(v17 - 8) + 32))(v8 + v16, a4, v17);
  *(v8 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_pairingToken) = xmmword_10138BBF0;
  *(v8 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_standalonePairing) = 1;
  *(v8 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_forceRepair) = 0;
  return v8;
}

unint64_t sub_100BB8DB8()
{
  result = qword_1016B7730;
  if (!qword_1016B7730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B7730);
  }

  return result;
}

uint64_t sub_100BB8E0C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_100BB8E78()
{
  result = qword_1016B7770;
  if (!qword_1016B7770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B7770);
  }

  return result;
}

unint64_t sub_100BB8ED0()
{
  result = qword_1016B7778;
  if (!qword_1016B7778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B7778);
  }

  return result;
}

uint64_t sub_100BB8F28(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_100BB8FBC;

  return daemon.getter();
}

uint64_t sub_100BB8FBC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 40) = a1;

  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100BB9A94(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100BB9A94(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_100BB91A0;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100BB91A0(uint64_t a1)
{
  v3 = *v2;
  v3[7] = a1;
  v3[8] = v1;

  if (v1)
  {
    v4 = v3[3];
    v5 = sub_100BB0618;
  }

  else
  {
    v6 = v3[3];

    v5 = sub_100BB92C8;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100BB92C8()
{
  sub_1000BC4D4(&qword_1016ACE90, &qword_1013DD370);
  v1 = swift_allocObject();
  v0[9] = v1;
  *(v1 + 16) = xmmword_101385D80;
  type metadata accessor for AirTagPairingValidator();
  v0[10] = swift_allocObject();
  swift_defaultActor_initialize();
  v0[11] = type metadata accessor for AirTagPeripheralProvider();
  v0[12] = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for CentralManager();
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_100BB93D0;

  return static CentralManager.pairingCentralManager.getter();
}

uint64_t sub_100BB93D0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = sub_100BB0510;
  }

  else
  {
    *(v4 + 120) = a1;
    v5 = sub_100BB94F8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100BB94F8()
{
  v1 = v0[3];
  *(v0[12] + 112) = v0[15];
  return _swift_task_switch(sub_100BB9520, v1, 0);
}

uint64_t sub_100BB9520()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];

  v6 = sub_100BB9754(v5, v2, v1, v4);
  v7 = sub_100BB9A94(&qword_1016B7838, 255, type metadata accessor for AirTagPairingExecutor, &unk_1013E0180);
  *(v3 + 32) = v6;
  *(v3 + 40) = v7;

  v8 = v0[1];
  v9 = v0[9];

  return v8(v9);
}

uint64_t sub_100BB96C0(uint64_t *a1)
{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000D2118;

  return sub_100BB8F28(v2);
}

uint64_t sub_100BB9754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100BB9A94(&unk_1016B7840, 255, type metadata accessor for AirTagPairingValidator, &unk_1013E0F30);
  v9 = sub_100BB9A94(&qword_1016B2BB8, 255, type metadata accessor for AirTagPeripheralProvider, &unk_1013DC408);
  v10 = sub_100BB9A94(&qword_1016ACEA8, 255, type metadata accessor for BeaconStoreActor, &unk_1013DDEA0);
  type metadata accessor for AirTagPairingExecutor(0);
  v11 = swift_allocObject();
  swift_defaultActor_initialize();
  UUID.init()();
  v12 = OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_state;
  v13 = enum case for PairingExecutorState.idle(_:);
  v14 = type metadata accessor for PairingExecutorState();
  (*(*(v14 - 8) + 104))(v11 + v12, v13, v14);
  *(v11 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_stateHistory) = _swiftEmptyArrayStorage;
  v15 = OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_streamProvider;
  sub_1000BC4D4(&qword_1016ACEB0, &unk_1013DC650);
  swift_allocObject();
  *(v11 + v15) = AsyncStreamProvider.init()();
  v16 = (v11 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingCheckData);
  sub_100408020(v33);
  v17 = v33[7];
  v16[6] = v33[6];
  v16[7] = v17;
  v18 = v33[5];
  v16[4] = v33[4];
  v16[5] = v18;
  v19 = v33[11];
  v16[10] = v33[10];
  v16[11] = v19;
  v20 = v33[9];
  v16[8] = v33[8];
  v16[9] = v20;
  v21 = v33[1];
  *v16 = v33[0];
  v16[1] = v21;
  v22 = v33[3];
  v16[2] = v33[2];
  v16[3] = v22;
  *(v11 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_crypto) = 0;
  v23 = (v11 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_service);
  *v23 = 0;
  v23[1] = 0;
  v24 = v11 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_peripheral;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0;
  v25 = v11 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconCreationInfo;
  *(v25 + 80) = 0;
  *(v25 + 48) = 0u;
  *(v25 + 64) = 0u;
  *(v25 + 16) = 0u;
  *(v25 + 32) = 0u;
  *v25 = 0u;
  v26 = v11 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingConfiguration;
  *v26 = 0u;
  *(v26 + 16) = 0u;
  *(v26 + 32) = 0;
  v27 = OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconRecordIdentifier;
  v28 = type metadata accessor for UUID();
  (*(*(v28 - 8) + 56))(v11 + v27, 1, 1, v28);
  *(v11 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingInfo) = a1;
  v29 = (v11 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_validator);
  *v29 = a2;
  v29[1] = v8;
  v30 = (v11 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_peripheralProvider);
  *v30 = a3;
  v30[1] = v9;
  v31 = (v11 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconStore);
  *v31 = a4;
  v31[1] = v10;
  return v11;
}

uint64_t sub_100BB9A94(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100BB9ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1000D2A70(a3, v22 - v9, &qword_101698C00, &qword_10138B570);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10000B3A8(v10, &qword_101698C00, &qword_10138B570);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100BB9D48()
{
  v1 = *v0;
  v2 = type metadata accessor for DiscoveryState.Mode(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2 - 8);
  v6 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  v9 = sub_1000BC4D4(&unk_1016B7BF0, &qword_1013B4AF0);
  (*(*(v9 - 8) + 56))(v8, 3, 4, v9);
  v10 = swift_allocObject();
  swift_weakInit();
  sub_100BF39E0(v8, v6, type metadata accessor for DiscoveryState.Mode);
  v11 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  sub_100BF3978(v6, v12 + v11, type metadata accessor for DiscoveryState.Mode);
  *(v12 + ((v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  sub_1000163C4(v8, type metadata accessor for DiscoveryState.Mode);
}

Swift::Int sub_100BB9F80(uint64_t *a1)
{
  v2 = *(type metadata accessor for Device() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100B3223C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100BEF790(v6);
  *a1 = v3;
  return result;
}

uint64_t type metadata accessor for DiscoverySession(uint64_t a1)
{
  result = qword_1016B78A0;
  if (!qword_1016B78A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100BBA074()
{
  result = static Duration.seconds(_:)();
  *&xmmword_1016B7850 = result;
  *(&xmmword_1016B7850 + 1) = v1;
  return result;
}

void sub_100BBA0A0()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v3 = __chkstk_darwin(v2 - 8);
  v71 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v76 = &v70 - v5;
  v75 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v75);
  v74 = &v70 - v6;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Device();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v88 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v70 - v16;
  __chkstk_darwin(v15);
  v19 = &v70 - v18;
  swift_beginAccess();
  v20 = *(*(v1 + 224) + 16);
  v86 = *(v1 + 224);

  v87 = v20;
  if (v20)
  {
    v79 = v17;
    v22 = 0;
    v82 = 0;
    v92 = v12 + 16;
    v73 = (v8 + 48);
    v70 = (v8 + 32);
    v81 = enum case for Feature.FindMy.trustedNowUsesReferenceClock(_:);
    v84 = (v8 + 8);
    v78 = (v12 + 8);
    v83 = (v12 + 32);
    v89 = _swiftEmptyArrayStorage;
    *&v21 = 134218242;
    v72 = v21;
    v77 = v1;
    v80 = v7;
    v90 = v10;
    v23 = v86;
    v94 = v11;
    v85 = v12;
    while (1)
    {
      if (v22 >= *(v23 + 16))
      {
        __break(1u);
        return;
      }

      v25 = *(v12 + 72);
      v91 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v93 = v22;
      v26 = *(v12 + 16);
      v26(v19, v23 + v91 + v25 * v22, v11);
      if (qword_101694FA8 != -1)
      {
        swift_once();
      }

      v99 = 7.45683732e247;
      v100 = -5.98008217e197;
      SynchronousCache.cachedValue<A>(key:computeBlock:)();
      if (v103 == 1)
      {
        v27 = [objc_opt_self() sharedInstance];
        v28 = [v27 isInternalBuild];

        if (v28)
        {
          if (qword_101694418 != -1)
          {
            swift_once();
          }

          v29 = sub_1000076D4(v75, qword_101696A00);
          swift_beginAccess();
          v30 = v29;
          v31 = v74;
          sub_1000D2A70(v30, v74, &unk_101696900, &unk_10138B1E0);
          if ((*v73)(v31, 1, v7) != 1)
          {
            (*v70)(v10, v31, v7);
            goto LABEL_24;
          }

          sub_10000B3A8(v31, &unk_101696900, &unk_10138B1E0);
        }
      }

      My = type metadata accessor for Feature.FindMy();
      v101 = My;
      v102 = sub_100BCA23C(&qword_1016AF950, 255, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
      v33 = sub_1000280DC(&v99);
      (*(*(My - 8) + 104))(v33, v81, My);
      LOBYTE(My) = isFeatureEnabled(_:)();
      sub_100007BAC(&v99);
      if (My)
      {
        sub_100F0FDBC();
        Current = CFAbsoluteTimeGetCurrent();
        if (qword_101694FD8 != -1)
        {
          swift_once();
        }

        sub_1000BC4D4(&unk_1016B7CA0, &unk_101395220);
        v35 = v82;
        OSAllocatedUnfairLock.callAsFunction<A>(_:)();
        if (Current - v99 - v100 <= 86400.0)
        {
          v82 = v35;
          v11 = v94;
          v23 = v86;
        }

        else
        {
          OSAllocatedUnfairLock.callAsFunction<A>(_:)();
          v82 = v35;
          v36 = type metadata accessor for TaskPriority();
          v37 = *(v36 - 8);
          v38 = v76;
          (*(v37 + 56))(v76, 1, 1, v36);
          v39 = swift_allocObject();
          *(v39 + 16) = 0;
          *(v39 + 24) = 0;
          v40 = v71;
          sub_1000D2A70(v38, v71, &qword_101698C00, &qword_10138B570);
          LODWORD(v38) = (*(v37 + 48))(v40, 1, v36);

          if (v38 == 1)
          {
            sub_10000B3A8(v40, &qword_101698C00, &qword_10138B570);
          }

          else
          {
            TaskPriority.rawValue.getter();
            (*(v37 + 8))(v40, v36);
          }

          v23 = v86;
          v41 = *(v39 + 16);
          swift_unknownObjectRetain();

          if (v41)
          {
            swift_getObjectType();
            v42 = dispatch thunk of Actor.unownedExecutor.getter();
            v44 = v43;
            swift_unknownObjectRelease();
          }

          else
          {
            v42 = 0;
            v44 = 0;
          }

          v1 = v77;
          sub_10000B3A8(v76, &qword_101698C00, &qword_10138B570);
          v45 = swift_allocObject();
          *(v45 + 16) = &unk_1013DDC18;
          *(v45 + 24) = v39;
          if (v44 | v42)
          {
            v95 = 0;
            v96 = 0;
            v97 = v42;
            v98 = v44;
          }

          v10 = v90;
          v11 = v94;
          swift_task_create();

          v7 = v80;
        }

        Date.init(timeIntervalSinceReferenceDate:)();
        goto LABEL_33;
      }

      Date.init()();
LABEL_24:
      v11 = v94;
LABEL_33:
      Date.timeIntervalSinceReferenceDate.getter();
      v47 = v46;
      (*v84)(v10, v7);
      Device.bleAdvertisementTimestamp.getter();
      v49 = v47 - v48;
      if (v49 >= *(v1 + 376))
      {
        v56 = v19;
        if (qword_101694D50 != -1)
        {
          swift_once();
        }

        v57 = type metadata accessor for Logger();
        sub_1000076D4(v57, qword_1016B7860);
        v58 = v79;
        v26(v79, v56, v11);
        v59 = Logger.logObject.getter();
        v60 = static os_log_type_t.debug.getter();
        v61 = os_log_type_enabled(v59, v60);
        v62 = v78;
        if (v61)
        {
          v63 = swift_slowAlloc();
          v64 = COERCE_DOUBLE(swift_slowAlloc());
          v99 = v64;
          *v63 = v72;
          *(v63 + 4) = v49;
          *(v63 + 12) = 2082;
          sub_100BCA23C(&unk_1016B7C90, 255, &type metadata accessor for Device, &protocol conformance descriptor for Device);
          v65 = dispatch thunk of CustomStringConvertible.description.getter();
          v66 = v62;
          v68 = v67;
          v24 = *v66;
          (*v66)(v58, v94);
          v69 = sub_1000136BC(v65, v68, &v99);

          *(v63 + 14) = v69;
          _os_log_impl(&_mh_execute_header, v59, v60, "Buffered device is too old! Age:%f seconds. Ignoring %{public}s.", v63, 0x16u);
          sub_100007BAC(*&v64);
          v1 = v77;

          v11 = v94;
        }

        else
        {

          v24 = *v62;
          (*v62)(v58, v11);
        }

        v12 = v85;
        v19 = v56;
        v24(v56, v11);
        v7 = v80;
        v10 = v90;
        v23 = v86;
      }

      else
      {
        v50 = *v83;
        (*v83)(v88, v19, v11);
        v51 = v89;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v53 = v51;
        v104 = v51;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_101125680(0, v51[2] + 1, 1);
          v53 = v104;
        }

        v12 = v85;
        v55 = v53[2];
        v54 = v53[3];
        if (v55 >= v54 >> 1)
        {
          sub_101125680((v54 > 1), v55 + 1, 1);
          v53 = v104;
        }

        v53[2] = v55 + 1;
        v89 = v53;
        v11 = v94;
        v50(v53 + v91 + v55 * v25, v88, v94);
        v10 = v90;
      }

      v22 = v93 + 1;
      if (v87 == v93 + 1)
      {
        goto LABEL_44;
      }
    }
  }

  v89 = _swiftEmptyArrayStorage;
LABEL_44:
}

uint64_t sub_100BBAD88()
{
  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_100BCA23C(&qword_1016AF950, 255, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v2 = sub_1000280DC(v0 + 2);
  (*(*(My - 8) + 104))(v2, enum case for Feature.FindMy.emotionalKiwi(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v0 + 2);
  if (My)
  {

    swift_asyncLet_begin();

    swift_asyncLet_begin();

    swift_asyncLet_begin();

    swift_asyncLet_begin();

    swift_asyncLet_begin();

    swift_asyncLet_begin();

    return _swift_asyncLet_get_throwing(v0 + 82, v3, sub_100BBB010, v0 + 482);
  }

  else
  {
    sub_1000BB27C(0, 0);
    sub_1000BB27C(0, 0);
    sub_1000BB27C(0, 0);
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_100BBB010(uint64_t a1, uint64_t a2)
{
  *(v3 + 3904) = v2;
  if (v2)
  {
    return _swift_asyncLet_finish(v3 + 16, a2, sub_100BBB330, v3 + 3856);
  }

  else
  {
    return _swift_asyncLet_get_throwing(v3 + 1296, a2, sub_100BBB050, v3 + 3856);
  }
}

uint64_t sub_100BBB050(uint64_t a1, uint64_t a2)
{
  *(v3 + 3912) = v2;
  if (v2)
  {
    return _swift_asyncLet_finish(v3 + 16, a2, sub_100BBB4CC, v3 + 3856);
  }

  else
  {
    return _swift_asyncLet_get_throwing(v3 + 2576, a2, sub_100BBB090, v3 + 3856);
  }
}

uint64_t sub_100BBB090(uint64_t a1, uint64_t a2)
{
  *(v3 + 3920) = v2;
  if (v2)
  {
    return _swift_asyncLet_finish(v3 + 16, a2, sub_100BBB668, v3 + 3856);
  }

  else
  {
    return _swift_asyncLet_get(v3 + 3216);
  }
}

uint64_t sub_100BBB108(uint64_t a1, uint64_t a2)
{
  *(v3 + 3928) = v2;
  if (v2)
  {
    v4 = sub_100BBB804;
  }

  else
  {
    v4 = sub_100BBB13C;
  }

  return _swift_asyncLet_finish(v3 + 16, a2, v4, v3 + 3856);
}

uint64_t sub_100BBB270()
{

  v1 = *(v0 + 3896);
  sub_1000BB27C(&unk_1013DDA78, v1);
  sub_1000BB27C(&unk_1013DDA88, v1);
  sub_1000BB27C(&unk_1013DDA98, v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100BBB464()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BBB600()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BBB79C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BBB938()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BBB9A0(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = sub_1000BC4D4(&qword_1016B7E08, &qword_1013DDB90);
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v2[5] = swift_task_alloc();

  return _swift_task_switch(sub_100BBBA6C, 0, 0);
}

uint64_t sub_100BBBA6C()
{
  sub_1000035D0((v0[2] + 240), *(v0[2] + 264));
  type metadata accessor for BubbleManager();
  sub_100C2C9EC();
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_100274D78;
  v2 = v0[5];

  return sub_100BBBB5C(v2);
}

uint64_t sub_100BBBB5C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for CancellationError();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_1000BC4D4(&unk_1016B7C30, &qword_1013DBFD0);
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v6 = type metadata accessor for Device();
  v2[15] = v6;
  v7 = *(v6 - 8);
  v2[16] = v7;
  v2[17] = *(v7 + 64);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = type metadata accessor for BubbleManagerDiscovery(0);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016B7E10, &qword_1013DDBA0);
  v2[23] = swift_task_alloc();
  v8 = sub_1000BC4D4(&qword_1016B7E18, &qword_1013DDBA8);
  v2[24] = v8;
  v2[25] = *(v8 - 8);
  v2[26] = swift_task_alloc();

  return _swift_task_switch(sub_100BBBE38, v1, 0);
}

uint64_t sub_100BBBE38()
{
  v1 = v0[4];
  v0[27] = type metadata accessor for WorkItemQueue();
  v0[28] = *(v1 + 160);
  if (static WorkItemQueue.called(on:)())
  {
    sub_100BEF73C();
    swift_allocError();
    *v2 = 1;
    swift_willThrow();

    v3 = v0[1];

    return v3();
  }

  else
  {
    if (qword_101694D50 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    v0[29] = sub_1000076D4(v5, qword_1016B7860);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "DiscoveryService: Start listening to bubble manager updates.", v8, 2u);
    }

    v9 = swift_task_alloc();
    v0[30] = v9;
    *v9 = v0;
    v9[1] = sub_100BBC0A8;

    return sub_100BDC778();
  }
}

uint64_t sub_100BBC0A8()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_100BBD320;
  }

  else
  {
    v4 = sub_100BBC1D4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100BBC1D4()
{
  *(v0[4] + 208) = 0;

  sub_1000BC4D4(&qword_1016B7E08, &qword_1013DDB90);
  AsyncStream.makeAsyncIterator()();
  v2 = sub_100BCA23C(&qword_1016B7BE0, v1, type metadata accessor for DiscoveryService, &unk_1013DD690);
  v3 = v0[31];
  v0[32] = v2;
  v0[33] = v3;
  v4 = v0[4];
  v5 = swift_task_alloc();
  v0[34] = v5;
  *v5 = v0;
  v5[1] = sub_100BBC2F4;
  v6 = v0[23];
  v7 = v0[24];

  return AsyncStream.Iterator.next(isolation:)(v6, v4, v2, v7);
}

uint64_t sub_100BBC2F4()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_100BBC404, v1, 0);
}

uint64_t sub_100BBC404()
{
  v74 = v0;
  v1 = v0[23];
  v2 = sub_1000BC4D4(&unk_1016B7E20, &qword_1013DDBB8);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[25] + 8))(v0[26], v0[24]);
LABEL_18:
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "DiscoveryService: Finished listening to bubble manager updates.", v49, 2u);
    }

    v50 = v0[1];

    return v50();
  }

  v3 = v0[33];
  v4 = v0[22];

  sub_100BF3978(v1 + *(v2 + 48), v4, type metadata accessor for BubbleManagerDiscovery);
  static Task<>.checkCancellation()();
  if (v3)
  {
    v5 = v3;
    v7 = v0[25];
    v6 = v0[26];
    v8 = v0[24];
    sub_1000163C4(v0[22], type metadata accessor for BubbleManagerDiscovery);
    (*(v7 + 8))(v6, v8);
    goto LABEL_5;
  }

  sub_100BF39E0(v0[22], v0[21], type metadata accessor for BubbleManagerDiscovery);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = v0[13];
    v15 = v0[14];
    v17 = v0[11];
    v18 = v0[12];
    (*(v18 + 32))(v15, v0[21], v17);
    (*(v18 + 16))(v16, v15, v17);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[22];
    v24 = v0[13];
    v23 = v0[14];
    v25 = v0[11];
    v26 = v0[12];
    if (v21)
    {
      v71 = v0[22];
      v28 = v0[9];
      v27 = v0[10];
      v67 = v0[8];
      v29 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v73 = v69;
      *v29 = 141558275;
      *(v29 + 4) = 1752392040;
      *(v29 + 12) = 2081;
      v68 = v20;
      Identifier.id.getter();
      sub_100BCA23C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v70 = v23;
      v32 = v31;
      (*(v28 + 8))(v27, v67);
      v33 = *(v26 + 8);
      v33(v24, v25);
      v34 = sub_1000136BC(v30, v32, &v73);

      *(v29 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v19, v68, "Lost device %{private,mask.hash}s", v29, 0x16u);
      sub_100007BAC(v69);

      v33(v70, v25);
      v35 = v71;
    }

    else
    {

      v52 = *(v26 + 8);
      v52(v24, v25);
      v52(v23, v25);
      v35 = v22;
    }

    sub_1000163C4(v35, type metadata accessor for BubbleManagerDiscovery);
    v0[33] = 0;
    v53 = v0[32];
    v54 = v0[4];
    v55 = swift_task_alloc();
    v0[34] = v55;
    *v55 = v0;
    v55[1] = sub_100BBC2F4;
    v56 = v0[23];
    v57 = v0[24];

    return AsyncStream.Iterator.next(isolation:)(v56, v54, v53, v57);
  }

  else
  {
    v41 = *(v0[16] + 32);
    v41(v0[19], v0[21], v0[15]);
    if (static WorkItemQueue.called(on:)())
    {
      sub_100BEF73C();
      v5 = swift_allocError();
      *v42 = 1;
      swift_willThrow();
      v44 = v0[25];
      v43 = v0[26];
      v45 = v0[24];
      v46 = v0[22];
      (*(v0[16] + 8))(v0[19], v0[15]);
      sub_1000163C4(v46, type metadata accessor for BubbleManagerDiscovery);
      (*(v44 + 8))(v43, v45);
LABEL_5:
      v0[2] = v5;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      if (swift_dynamicCast())
      {

        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, v9, v10, "DiscoveryService: cancelled bubble manager updates listener.", v11, 2u);
        }

        v12 = v0[6];
        v13 = v0[7];
        v14 = v0[5];

        (*(v12 + 8))(v13, v14);
      }

      else
      {

        swift_errorRetain();
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          *v38 = 138543362;
          swift_errorRetain();
          v40 = _swift_stdlib_bridgeErrorToNSError();
          *(v38 + 4) = v40;
          *v39 = v40;
          _os_log_impl(&_mh_execute_header, v36, v37, "Failure in bubble manager updates stream: %{public}@", v38, 0xCu);
          sub_10000B3A8(v39, &qword_10169BB30, &unk_10138B3C0);

          goto LABEL_18;
        }
      }

      goto LABEL_18;
    }

    v58 = v0[18];
    v59 = v0[19];
    v60 = v0[16];
    v61 = v0[15];
    v62 = swift_allocObject();
    swift_weakInit();
    (*(v60 + 16))(v58, v59, v61);
    v63 = (*(v60 + 80) + 24) & ~*(v60 + 80);
    v64 = swift_allocObject();
    v0[35] = v64;
    *(v64 + 16) = v62;
    v41(v64 + v63, v58, v61);
    v72 = &async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:);
    v65 = swift_task_alloc();
    v0[36] = v65;
    v66 = sub_1000BC4D4(&unk_1016969C0, &qword_101395690);
    *v65 = v0;
    v65[1] = sub_100BBCD68;

    return (v72)(v0 + 38, &unk_1013DDBC8, v64, v66);
  }
}

uint64_t sub_100BBCD68()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_100BBCF84;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_100BBCE90;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100BBCE90()
{
  v1 = v0[22];
  (*(v0[16] + 8))(v0[19], v0[15]);
  sub_1000163C4(v1, type metadata accessor for BubbleManagerDiscovery);
  v0[33] = v0[37];
  v2 = v0[32];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v0[34] = v4;
  *v4 = v0;
  v4[1] = sub_100BBC2F4;
  v5 = v0[23];
  v6 = v0[24];

  return AsyncStream.Iterator.next(isolation:)(v5, v3, v2, v6);
}

uint64_t sub_100BBCF84()
{

  v1 = v0[37];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[24];
  v5 = v0[22];
  (*(v0[16] + 8))(v0[19], v0[15]);
  sub_1000163C4(v5, type metadata accessor for BubbleManagerDiscovery);
  (*(v3 + 8))(v2, v4);
  v0[2] = v1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (swift_dynamicCast())
  {

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "DiscoveryService: cancelled bubble manager updates listener.", v8, 2u);
    }

    v10 = v0[6];
    v9 = v0[7];
    v11 = v0[5];

    (*(v10 + 8))(v9, v11);
  }

  else
  {

    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138543362;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failure in bubble manager updates stream: %{public}@", v14, 0xCu);
      sub_10000B3A8(v15, &qword_10169BB30, &unk_10138B3C0);

      goto LABEL_9;
    }
  }

LABEL_9:
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "DiscoveryService: Finished listening to bubble manager updates.", v19, 2u);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_100BBD320()
{
  v0[2] = v0[31];
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (swift_dynamicCast())
  {

    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "DiscoveryService: cancelled bubble manager updates listener.", v3, 2u);
    }

    v5 = v0[6];
    v4 = v0[7];
    v6 = v0[5];

    (*(v5 + 8))(v4, v6);
  }

  else
  {

    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138543362;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failure in bubble manager updates stream: %{public}@", v9, 0xCu);
      sub_10000B3A8(v10, &qword_10169BB30, &unk_10138B3C0);

      goto LABEL_9;
    }
  }

LABEL_9:
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "DiscoveryService: Finished listening to bubble manager updates.", v14, 2u);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_100BBD65C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100BBD6EC();
}

uint64_t sub_100BBD6EC()
{
  v1[7] = v0;
  v2 = sub_1000BC4D4(&unk_1016B7C30, &qword_1013DBFD0);
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v3 = type metadata accessor for Device();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v4 = type metadata accessor for DeviceChange();
  v1[16] = v4;
  v1[17] = *(v4 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A06D8, &unk_1013A37C0);
  v1[20] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_1016B7C40, &unk_1013DD720);
  v1[21] = v5;
  v1[22] = *(v5 - 8);
  v1[23] = swift_task_alloc();
  v6 = sub_1000BC4D4(&unk_1016B7C80, &unk_1013A37D0);
  v1[24] = v6;
  v1[25] = *(v6 - 8);
  v1[26] = swift_task_alloc();
  v7 = type metadata accessor for RSSIValue();
  v1[27] = v7;
  v1[28] = *(v7 - 8);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();

  return _swift_task_switch(sub_100BBDA04, v0, 0);
}

uint64_t sub_100BBDA04()
{
  type metadata accessor for WorkItemQueue();
  if (static WorkItemQueue.called(on:)())
  {
    sub_100BEF73C();
    swift_allocError();
    *v1 = 1;
    swift_willThrow();

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    *(v0 + 248) = qword_10177B348;

    return _swift_task_switch(sub_100BBDBC0, 0, 0);
  }
}

uint64_t sub_100BBDBC0()
{

  v1 = swift_task_alloc();
  *(v0 + 256) = v1;
  *v1 = v0;
  v1[1] = sub_100BBDC84;
  v2 = *(v0 + 248);

  return unsafeBlocking<A>(_:)(v0 + 40, sub_1000DFF78, v2, &type metadata for Configuration);
}

uint64_t sub_100BBDC84()
{

  return _swift_task_switch(sub_100BBDD9C, 0, 0);
}

uint64_t sub_100BBDD9C()
{
  v1 = v0[7];
  v0[33] = v0[5];
  return _swift_task_switch(sub_100BBDDC0, v1, 0);
}

uint64_t sub_100BBDDC0()
{
  v30 = v0;
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[28];
  v4 = sub_101074FFC(v0[33]);

  *v1 = v4;
  (*(v3 + 104))(v1, enum case for RSSIValue.rssi(_:), v2);
  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v5 = v0[29];
  v6 = v0[30];
  v7 = v0[27];
  v8 = v0[28];
  v9 = type metadata accessor for Logger();
  v0[34] = sub_1000076D4(v9, qword_1016B7860);
  (*(v8 + 16))(v5, v6, v7);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[28];
  v13 = v0[29];
  v15 = v0[27];
  if (v12)
  {
    v16 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v16 = 136315138;
    sub_100BCA23C(&unk_1016B8D70, 255, &type metadata accessor for RSSIValue, &protocol conformance descriptor for RSSIValue);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v20 = *(v14 + 8);
    v20(v13, v15);
    v21 = sub_1000136BC(v17, v19, &v29);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v10, v11, "Start buffered scanner with %s", v16, 0xCu);
    sub_100007BAC(v28);
  }

  else
  {

    v20 = *(v14 + 8);
    v20(v13, v15);
  }

  v0[35] = v20;
  v22 = *(v0[7] + 288);
  ObjectType = swift_getObjectType();
  v24 = swift_task_alloc();
  v0[36] = v24;
  *v24 = v0;
  v24[1] = sub_100BBE0A4;
  v25 = v0[30];
  v26 = v0[23];

  return dispatch thunk of CBDiscoveryProtocol.registerProximityPairingBuffer(rssiThreshold:)(v26, v25, ObjectType, v22);
}

uint64_t sub_100BBE0A4()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_100BBEC20;
  }

  else
  {
    v4 = sub_100BBE1D0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100BBE1D0()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  AsyncThrowingStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v5 = sub_100BCA23C(&qword_1016B7BE0, v4, type metadata accessor for DiscoveryService, &unk_1013DD690);
  v0[38] = v5;
  v6 = v0[7];
  v7 = swift_task_alloc();
  v0[39] = v7;
  *v7 = v0;
  v7[1] = sub_100BBE2F0;
  v8 = v0[24];
  v9 = v0[20];

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v9, v6, v5, v8, v0 + 6);
}

uint64_t sub_100BBE2F0()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_100BBED30;
  }

  else
  {
    v4 = sub_100BBE408;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100BBE408()
{
  v63 = v0;
  v1 = v0[20];
  if ((*(v0[17] + 48))(v1, 1, v0[16]) == 1)
  {
    v2 = v0[35];
    v3 = v0[30];
    v4 = v0[27];
    (*(v0[25] + 8))(v0[26], v0[24]);
    v2(v3, v4);

    v5 = v0[1];
LABEL_5:

    return v5();
  }

  v6 = v0[40];
  sub_100BF3978(v1, v0[19], &type metadata accessor for DeviceChange);
  static Task<>.checkCancellation()();
  if (v6)
  {
    v7 = v0[35];
    v8 = v0[30];
    v9 = v0[27];
    v11 = v0[25];
    v10 = v0[26];
    v12 = v0[24];
    sub_1000163C4(v0[19], &type metadata accessor for DeviceChange);
    (*(v11 + 8))(v10, v12);
    v7(v8, v9);

    v5 = v0[1];
    goto LABEL_5;
  }

  sub_100BF39E0(v0[19], v0[18], &type metadata accessor for DeviceChange);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v15 = v0[18];
  if (!EnumCaseMultiPayload)
  {
    v35 = *v15;

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v62[0] = v39;
      *v38 = 134218242;
      *(v38 + 4) = *(v35 + 16);

      *(v38 + 12) = 2080;
      v40 = Array.description.getter();
      v42 = sub_1000136BC(v40, v41, v62);

      *(v38 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v36, v37, "Buffered devices[%ld]: %s", v38, 0x16u);
      sub_100007BAC(v39);
    }

    else
    {
    }

    v54 = v0[19];
    swift_beginAccess();
    sub_10039B54C(v35);
    swift_endAccess();
    v52 = v54;
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v44 = v0[10];
    v43 = v0[11];
    v45 = v0[8];
    v46 = v0[9];
    (*(v46 + 32))(v43, v15, v45);
    (*(v46 + 16))(v44, v43, v45);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    v47 = os_log_type_enabled(v20, v21);
    v23 = v0[19];
    v24 = v0[10];
    v25 = v0[11];
    v27 = v0[8];
    v26 = v0[9];
    if (v47)
    {
      v61 = v0[19];
      v28 = swift_slowAlloc();
      v60 = v25;
      v62[0] = swift_slowAlloc();
      *v28 = 136315394;
      *(v28 + 4) = sub_1000136BC(0xD000000000000016, 0x800000010136F130, v62);
      *(v28 + 12) = 2082;
      sub_1000041A4(&unk_1016C21E0, &unk_1016B7C30, &qword_1013DBFD0, &protocol conformance descriptor for Identifier<A>);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      v32 = *(v26 + 8);
      v32(v24, v27);
      v51 = sub_1000136BC(v48, v50, v62);

      *(v28 + 14) = v51;
      v34 = "%s Unexpected lost device here %{public}s";
      goto LABEL_16;
    }

LABEL_17:

    v53 = *(v26 + 8);
    v53(v24, v27);
    v53(v25, v27);
    v52 = v23;
    goto LABEL_20;
  }

  v17 = v0[14];
  v16 = v0[15];
  v18 = v0[12];
  v19 = v0[13];
  (*(v19 + 32))(v16, v15, v18);
  (*(v19 + 16))(v17, v16, v18);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  v22 = os_log_type_enabled(v20, v21);
  v23 = v0[19];
  v24 = v0[14];
  v25 = v0[15];
  v27 = v0[12];
  v26 = v0[13];
  if (!v22)
  {
    goto LABEL_17;
  }

  v61 = v0[19];
  v28 = swift_slowAlloc();
  v60 = v25;
  v62[0] = swift_slowAlloc();
  *v28 = 136315394;
  *(v28 + 4) = sub_1000136BC(0xD000000000000016, 0x800000010136F130, v62);
  *(v28 + 12) = 2082;
  sub_100BCA23C(&unk_1016B7C90, 255, &type metadata accessor for Device, &protocol conformance descriptor for Device);
  v29 = dispatch thunk of CustomStringConvertible.description.getter();
  v31 = v30;
  v32 = *(v26 + 8);
  v32(v24, v27);
  v33 = sub_1000136BC(v29, v31, v62);

  *(v28 + 14) = v33;
  v34 = "%s Unexpected discovered device %{public}s";
LABEL_16:
  _os_log_impl(&_mh_execute_header, v20, v21, v34, v28, 0x16u);
  swift_arrayDestroy();

  v32(v60, v27);
  v52 = v61;
LABEL_20:
  sub_1000163C4(v52, &type metadata accessor for DeviceChange);
  v55 = v0[38];
  v56 = v0[7];
  v57 = swift_task_alloc();
  v0[39] = v57;
  *v57 = v0;
  v57[1] = sub_100BBE2F0;
  v58 = v0[24];
  v59 = v0[20];

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v59, v56, v55, v58, v0 + 6);
}

uint64_t sub_100BBEC20()
{
  (*(v0 + 280))(*(v0 + 240), *(v0 + 216));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BBED30()
{
  v1 = v0[35];
  v2 = v0[30];
  v3 = v0[27];
  (*(v0[25] + 8))(v0[26], v0[24]);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100BBEE60()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100BBEEF0();
}

uint64_t sub_100BBEEF0()
{
  v1[9] = v0;
  v2 = sub_1000BC4D4(&qword_1016B7DF0, &qword_1013DDB50);
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v3 = sub_1000BC4D4(&qword_1016B7DF8, &qword_1013DDB58);
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();

  return _swift_task_switch(sub_100BBF024, v0, 0);
}

uint64_t sub_100BBF024()
{
  type metadata accessor for WorkItemQueue();
  if (static WorkItemQueue.called(on:)())
  {
    sub_100BEF73C();
    swift_allocError();
    *v1 = 1;
    swift_willThrow();

    v2 = v0[1];

    return v2();
  }

  else
  {
    if (qword_101694D50 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    v0[16] = sub_1000076D4(v4, qword_1016B7860);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Start listening for screen state changes.", v7, 2u);
    }

    v8 = v0[9];

    v0[17] = *(v8 + 296);
    swift_getObjectType();
    v9 = sub_100BCA23C(&qword_1016B7E00, 255, type metadata accessor for SystemMonitorService, &unk_1013AABD8);
    v0[18] = v9;
    v0[19] = *(v9 + 144);
    v0[20] = (v9 + 144) & 0xFFFFFFFFFFFFLL | 0x62B9000000000000;
    v11 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100BBF264, v11, v10);
  }
}

uint64_t sub_100BBF264()
{
  v1 = v0[19];
  v2 = v0[18];
  v3 = v0[9];
  v4 = type metadata accessor for SystemMonitorService();
  v1(v4, v2);

  return _swift_task_switch(sub_100BBF2F8, v3, 0);
}

uint64_t sub_100BBF2F8()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v5 = sub_100BCA23C(&qword_1016B7BE0, v4, type metadata accessor for DiscoveryService, &unk_1013DD690);
  v0[21] = v5;
  v0[22] = 0;
  v6 = v0[9];
  v7 = swift_task_alloc();
  v0[23] = v7;
  *v7 = v0;
  v7[1] = sub_100015994;
  v8 = v0[13];

  return AsyncStream.Iterator.next(isolation:)(v0 + 6, v6, v5, v8);
}

uint64_t sub_100BBF414()
{
  v1 = *v0;
  v2 = *v0;

  v1[22] = v1[24];
  v3 = v1[21];
  v4 = v1[9];
  v5 = swift_task_alloc();
  v1[23] = v5;
  *v5 = v2;
  v5[1] = sub_100015994;
  v6 = v1[13];

  return AsyncStream.Iterator.next(isolation:)(v1 + 6, v4, v3, v6);
}

uint64_t sub_100BBF5C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100BBF654();
}

uint64_t sub_100BBF654()
{
  v1[5] = v0;
  v1[6] = *v0;
  v2 = *(type metadata accessor for DiscoveryState.Mode(0) - 8);
  v1[7] = v2;
  v1[8] = *(v2 + 64);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v3 = type metadata accessor for DiscoveryState(0);
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v4 = sub_1000BC4D4(&unk_1016B7C30, &qword_1013DBFD0);
  v1[15] = v4;
  v5 = *(v4 - 8);
  v1[16] = v5;
  v1[17] = *(v5 + 64);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v1[21] = v6;
  v1[22] = *(v6 - 8);
  v1[23] = swift_task_alloc();
  v7 = type metadata accessor for Device();
  v1[24] = v7;
  v1[25] = *(v7 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = type metadata accessor for DeviceChange();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016B7DC8, &qword_1013DDB18);
  v1[31] = swift_task_alloc();
  v8 = sub_1000BC4D4(&qword_1016B7DD0, &qword_1013DDB20);
  v1[32] = v8;
  v1[33] = *(v8 - 8);
  v1[34] = swift_task_alloc();
  v9 = sub_1000BC4D4(&qword_1016B7DD8, &qword_1013DDB28);
  v1[35] = v9;
  v1[36] = *(v9 - 8);
  v1[37] = swift_task_alloc();

  return _swift_task_switch(sub_100BBFA44, v0, 0);
}

uint64_t sub_100BBFA44()
{
  v13 = v0;
  v1 = v0[5];
  type metadata accessor for WorkItemQueue();
  v0[38] = *(v1 + 160);
  if (static WorkItemQueue.called(on:)())
  {
    sub_100BEF73C();
    swift_allocError();
    *v2 = 1;
    swift_willThrow();

    v3 = v0[1];

    return v3();
  }

  else
  {
    if (qword_101694D50 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    v0[39] = sub_1000076D4(v5, qword_1016B7860);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v12 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_1000136BC(0xD00000000000001ELL, 0x800000010136F110, &v12);
      _os_log_impl(&_mh_execute_header, v6, v7, "%s: subscribed to xpc event.", v8, 0xCu);
      sub_100007BAC(v9);
    }

    swift_getObjectType();
    v11 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100BBFD38, v11, v10);
  }
}

uint64_t sub_100BBFD38()
{
  v1 = *(v0 + 40);
  type metadata accessor for CBDiscovery();
  static CBDiscovery.subscribeToXPCDiscoveryEvents(for:)();

  return _swift_task_switch(sub_100BBFDD8, v1, 0);
}

uint64_t sub_100BBFDD8(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "DiscoveryService: start listening to BT XPC events.", v4, 2u);
  }

  AsyncStream.makeAsyncIterator()();
  v6 = sub_100BCA23C(&qword_1016B7BE0, v5, type metadata accessor for DiscoveryService, &unk_1013DD690);
  v1[40] = v6;
  v1[41] = 0;
  v7 = v1[5];
  v8 = swift_task_alloc();
  v1[42] = v8;
  *v8 = v1;
  v8[1] = sub_100BBFF48;
  v9 = v1[31];
  v10 = v1[32];

  return AsyncStream.Iterator.next(isolation:)(v9, v7, v6, v10);
}

uint64_t sub_100BBFF48()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_100BC0058, v1, 0);
}

uint64_t sub_100BC0058()
{
  v101 = v0;
  v1 = v0[31];
  v2 = sub_1000BC4D4(&unk_1016B7DE0, &qword_1013DDB30);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[33] + 8))(v0[34], v0[32]);
LABEL_13:
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "DiscoveryService: finished listening to BT XPC events.", v43, 2u);
    }

    v44 = v0[36];
    v45 = v0[37];
    v46 = v0[35];

    (*(v44 + 8))(v45, v46);

    v47 = v0[1];

    return v47();
  }

  v3 = v0[41];
  v4 = v0[30];

  sub_100BF3978(v1 + *(v2 + 48), v4, &type metadata accessor for DeviceChange);
  static Task<>.checkCancellation()();
  v0[43] = v3;
  if (v3)
  {
    v6 = v0[33];
    v5 = v0[34];
    v7 = v0[32];
    sub_1000163C4(v0[30], &type metadata accessor for DeviceChange);
    (*(v6 + 8))(v5, v7);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138543362;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "Error in listening to BT XPC events: %{public}@", v10, 0xCu);
      sub_10000B3A8(v11, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {
    }

    goto LABEL_13;
  }

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "DiscoveryService: BT XPC event received.", v15, 2u);
  }

  v17 = v0[29];
  v16 = v0[30];

  sub_100BF39E0(v16, v17, &type metadata accessor for DeviceChange);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v19 = v0[29];
  if (!EnumCaseMultiPayload)
  {

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();

    v51 = os_log_type_enabled(v49, v50);
    v52 = v0[30];
    if (v51)
    {
      v53 = swift_slowAlloc();
      v100[0] = swift_slowAlloc();
      *v53 = 136315394;
      *(v53 + 4) = sub_1000136BC(0xD00000000000001ELL, 0x800000010136F110, v100);
      *(v53 + 12) = 2080;
      v54 = Array.description.getter();
      v56 = v55;

      v57 = sub_1000136BC(v54, v56, v100);

      *(v53 + 14) = v57;
      _os_log_impl(&_mh_execute_header, v49, v50, "%s Unexpected buffered devices %s!", v53, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v74 = v52;
    goto LABEL_32;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v21 = v0[26];
    v20 = v0[27];
    v22 = v0[24];
    v23 = v0[25];
    (*(v23 + 32))(v20, v19, v22);
    (*(v23 + 16))(v21, v20, v22);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    v26 = os_log_type_enabled(v24, v25);
    v28 = v0[25];
    v27 = v0[26];
    v29 = v0[24];
    if (v26)
    {
      v30 = v0[22];
      v31 = v0[23];
      v32 = v0[20];
      v90 = v0[21];
      v98 = v25;
      v34 = v0[15];
      v33 = v0[16];
      v93 = v0[24];
      v35 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v100[0] = v97;
      *v35 = 141558275;
      *(v35 + 4) = 1752392040;
      *(v35 + 12) = 2081;
      loga = v24;
      Device.id.getter();
      Identifier.id.getter();
      (*(v33 + 8))(v32, v34);
      sub_100BCA23C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      (*(v30 + 8))(v31, v90);
      v39 = *(v28 + 8);
      v39(v27, v93);
      v40 = sub_1000136BC(v36, v38, v100);

      *(v35 + 14) = v40;
      _os_log_impl(&_mh_execute_header, loga, v98, "BT XPC event discovered: %{private,mask.hash}s.", v35, 0x16u);
      sub_100007BAC(v97);
    }

    else
    {

      v39 = *(v28 + 8);
      v39(v27, v29);
    }

    v0[44] = v39;
    v73 = *(v0[5] + 152);
    v0[45] = v73;

    return _swift_task_switch(sub_100BC0C5C, v73, 0);
  }

  v59 = v0[18];
  v58 = v0[19];
  v60 = v0[15];
  v61 = v0[16];
  log = *(v61 + 32);
  (log)(v58, v19, v60);
  v94 = *(v61 + 16);
  v94(v59, v58, v60);
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.debug.getter();
  v64 = os_log_type_enabled(v62, v63);
  v65 = v0[18];
  v67 = v0[15];
  v66 = v0[16];
  if (v64)
  {
    v68 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v100[0] = v91;
    *v68 = 141558275;
    *(v68 + 4) = 1752392040;
    *(v68 + 12) = 2081;
    sub_1000041A4(&unk_1016C21E0, &unk_1016B7C30, &qword_1013DBFD0, &protocol conformance descriptor for Identifier<A>);
    v69 = dispatch thunk of CustomStringConvertible.description.getter();
    v71 = v70;
    v99 = *(v66 + 8);
    v99(v65, v67);
    v72 = sub_1000136BC(v69, v71, v100);

    *(v68 + 14) = v72;
    _os_log_impl(&_mh_execute_header, v62, v63, "BT XPC event lost: %{private,mask.hash}s.", v68, 0x16u);
    sub_100007BAC(v91);
  }

  else
  {

    v99 = *(v66 + 8);
    v99(v65, v67);
  }

  sub_1000035D0((v0[5] + 240), *(v0[5] + 264));
  type metadata accessor for BubbleManager();
  if ((sub_100C2C978() & 1) == 0)
  {
    v84 = v0[30];
    v99(v0[19], v0[15]);
    v74 = v84;
LABEL_32:
    sub_1000163C4(v74, &type metadata accessor for DeviceChange);
    goto LABEL_33;
  }

  v92 = v0[30];
  v75 = v0[19];
  v76 = v0[20];
  v77 = v0[16];
  v78 = v0[17];
  v79 = v0[15];
  v80 = v0[6];
  v81 = swift_allocObject();
  swift_weakInit();
  v94(v76, v75, v79);
  v82 = (*(v77 + 80) + 24) & ~*(v77 + 80);
  v83 = swift_allocObject();
  *(v83 + 16) = v81;
  (log)(v83 + v82, v76, v79);
  *(v83 + ((v78 + v82 + 7) & 0xFFFFFFFFFFFFFFF8)) = v80;

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v99(v75, v79);
  sub_1000163C4(v92, &type metadata accessor for DeviceChange);

LABEL_33:
  v0[41] = v0[43];
  v85 = v0[40];
  v86 = v0[5];
  v87 = swift_task_alloc();
  v0[42] = v87;
  *v87 = v0;
  v87[1] = sub_100BBFF48;
  v88 = v0[31];
  v89 = v0[32];

  return AsyncStream.Iterator.next(isolation:)(v88, v86, v85, v89);
}

uint64_t sub_100BC0C5C()
{
  v1 = v0[45];
  swift_beginAccess();
  v2 = *(v1 + 136);
  v3 = *(v2 + 16);

  if (v3)
  {
    v7 = 0;
    while (v7 < *(v2 + 16))
    {
      v9 = v0[13];
      v8 = v0[14];
      sub_100BF39E0(v2 + ((*(v0[12] + 80) + 32) & ~*(v0[12] + 80)) + *(v0[12] + 72) * v7, v8, type metadata accessor for DiscoveryState);
      sub_100BF3978(v8, v9, type metadata accessor for DiscoveryState);
      if (!swift_getEnumCaseMultiPayload())
      {
        v10 = v0[5];
        v12 = v0[13];

        sub_1000163C4(v12, type metadata accessor for DiscoveryState);
        v11 = sub_100BC0DEC;
        goto LABEL_8;
      }

      ++v7;
      v4 = sub_1000163C4(v0[13], type metadata accessor for DiscoveryState);
      if (v3 == v7)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    v10 = v0[5];

    v11 = sub_100BC0EE4;
LABEL_8:
    v4 = v11;
    v5 = v10;
    v6 = 0;
  }

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100BC0DEC()
{
  v1 = *(v0 + 240);
  (*(v0 + 352))(*(v0 + 216), *(v0 + 192));
  sub_1000163C4(v1, &type metadata accessor for DeviceChange);
  *(v0 + 328) = *(v0 + 344);
  v2 = *(v0 + 320);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v0 + 336) = v4;
  *v4 = v0;
  v4[1] = sub_100BBFF48;
  v5 = *(v0 + 248);
  v6 = *(v0 + 256);

  return AsyncStream.Iterator.next(isolation:)(v5, v3, v2, v6);
}

uint64_t sub_100BC0EE4(uint64_t a1)
{
  v22 = v1[44];
  v23 = v1[30];
  v20 = v1[27];
  v21 = v1[24];
  v2 = v1[20];
  v4 = v1[15];
  v3 = v1[16];
  v6 = v1[9];
  v5 = v1[10];
  v8 = v1[7];
  v7 = v1[8];
  v19 = v1[6];
  Device.id.getter();
  Identifier.id.getter();
  (*(v3 + 8))(v2, v4);
  v9 = sub_1000BC4D4(&unk_1016B7BF0, &qword_1013B4AF0);
  (*(*(v9 - 8) + 56))(v5, 0, 4, v9);
  v10 = swift_allocObject();
  swift_weakInit();
  sub_100BF39E0(v5, v6, type metadata accessor for DiscoveryState.Mode);
  v11 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  sub_100BF3978(v6, v12 + v11, type metadata accessor for DiscoveryState.Mode);
  *(v12 + ((v7 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v19;

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  sub_1000163C4(v5, type metadata accessor for DiscoveryState.Mode);
  v22(v20, v21);
  sub_1000163C4(v23, &type metadata accessor for DeviceChange);

  v1[41] = v1[43];
  v13 = v1[40];
  v14 = v1[5];
  v15 = swift_task_alloc();
  v1[42] = v15;
  *v15 = v1;
  v15[1] = sub_100BBFF48;
  v16 = v1[31];
  v17 = v1[32];

  return AsyncStream.Iterator.next(isolation:)(v16, v14, v13, v17);
}

uint64_t sub_100BC1190(uint64_t a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = *a2;
  return _swift_task_switch(sub_100BC11D4, a2, 0);
}

uint64_t sub_100BC11D4()
{
  v1 = *(v0 + 24);
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100BC12C0(uint64_t a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = *a2;
  return _swift_task_switch(sub_100BC1304, a2, 0);
}

uint64_t sub_100BC1304()
{
  v1 = *(v0 + 24);
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v4 = *(v0 + 8);

  return v4();
}

void *sub_100BC13F0()
{

  sub_100007BAC((v0 + 240));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100BC14B8()
{
  sub_100BC13F0();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100BC1508(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100BC1528(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 56) = v3;
  return result;
}

uint64_t sub_100BC1570(uint64_t a1, uint64_t a2)
{
  result = sub_100BCA23C(&qword_1016B7BE0, a2, type metadata accessor for DiscoveryService, &unk_1013DD690);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100BC15C8(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for DiscoveryService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_100BC1670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for DiscoveryService();
  *v8 = v4;
  v8[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v9, a4);
}

uint64_t sub_100BC1734(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for DiscoveryService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_100BC17DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100BBAD68();
}

uint64_t sub_100BC1868()
{
  type metadata accessor for DiscoveryService();
  sub_100BCA23C(&unk_1016B7D70, v0, type metadata accessor for DiscoveryService, &unk_1013DD630);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_100BC18D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_100BC18F0, 0, 0);
}

uint64_t sub_100BC18F0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = v0[6];
    v3 = *(Strong + 128);
    v0[8] = v3;
    v4 = swift_allocObject();
    v0[9] = v4;
    swift_weakInit();
    v5 = swift_allocObject();
    v0[10] = v5;
    *(v5 + 16) = v4;
    *(v5 + 24) = v2;

    return _swift_task_switch(sub_100BC1A24, v3, 0);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100BC1A24()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(v2 + 112);
  v4 = *(v2 + 120);
  *(v2 + 112) = &unk_1013DDB08;
  *(v2 + 120) = v1;

  sub_1000BB27C(v3, v4);

  return _swift_task_switch(sub_100BF4444, 0, 0);
}

uint64_t sub_100BC1AE0(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = type metadata accessor for UserSessionState();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100BC1BAC, 0, 0);
}

uint64_t sub_100BC1BAC()
{
  v25 = v0;
  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[5];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016B7860);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[10];
  if (v9)
  {
    v11 = v0[8];
    v12 = v0[9];
    v13 = v0[7];
    v14 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v14 = 136446210;
    v6(v12, v10, v13);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    (*(v11 + 8))(v10, v13);
    v18 = sub_1000136BC(v15, v17, &v24);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "New user session state = %{public}s", v14, 0xCu);
    sub_100007BAC(v23);
  }

  else
  {
    v19 = v0[7];
    v20 = v0[8];

    (*(v20 + 8))(v10, v19);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    AsyncStreamProvider.yield(value:transaction:)();
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_100BC1E54()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = *(Strong + 216);
    v3 = swift_task_alloc();
    v0[9] = v3;
    v4 = sub_1000BC4D4(&unk_10169A0A0, &unk_1013B3B60);
    v0[10] = v4;
    *v3 = v0;
    v3[1] = sub_100BC1FA8;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 5, 0, 0, 0x736553636E797361, 0xED0000736E6F6973, sub_100BF21C4, v2, v4);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100BC1FA8()
{

  return _swift_task_switch(sub_100BC20A4, 0, 0);
}

uint64_t sub_100BC20A4()
{
  v1 = v0[5];
  v0[11] = v1;
  v0[6] = v1;
  v2 = swift_task_alloc();
  v0[12] = v2;
  v3 = sub_1000041A4(&qword_1016B7D60, &unk_10169A0A0, &unk_1013B3B60, &protocol conformance descriptor for Set<A>);
  *v2 = v0;
  v2[1] = sub_100BC2198;
  v4 = v0[10];

  return Sequence.asyncForEach(_:)(&unk_1013DD908, 0, v4, v3);
}

uint64_t sub_100BC2198()
{

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(sub_1003A24D8, 0, 0);
  }
}

uint64_t sub_100BC22D4()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100BC2388;

  return XPCSession.proxy(errorHandler:)(v0 + 16, SharingCircleWildAdvertisementKey.init(key:), 0);
}

uint64_t sub_100BC2388()
{

  return _swift_task_switch(sub_100BC2484, 0, 0);
}

uint64_t sub_100BC2484()
{
  if (*(v0 + 16))
  {
    [*(v0 + 16) accessoryDetectedForPairing];
    swift_unknownObjectRelease();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BC2500(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v5;
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_1016B7860);
  v25 = *(v3 + 16);
  v25(v8, a1, v2);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v24 = v6;
    v13 = v12;
    v23 = swift_slowAlloc();
    v27 = v23;
    *v13 = 136315651;
    *(v13 + 4) = sub_1000136BC(0xD000000000000021, 0x800000010136F000, &v27);
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    sub_100BCA23C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = a1;
    v17 = v16;
    (*(v3 + 8))(v8, v2);
    v18 = sub_1000136BC(v14, v17, &v27);
    a1 = v15;

    *(v13 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s. newIdentifier = %{private,mask.hash}s", v13, 0x20u);
    swift_arrayDestroy();

    v6 = v24;
  }

  else
  {

    (*(v3 + 8))(v8, v2);
  }

  v19 = swift_allocObject();
  swift_weakInit();
  v25(v6, a1, v2);
  v20 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  (*(v3 + 32))(v21 + v20, v6, v2);

  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_100BC28D8(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return _swift_task_switch(sub_100BC28F8, 0, 0);
}

uint64_t sub_100BC28F8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = *(Strong + 216);
    v3 = swift_task_alloc();
    v0[10] = v3;
    v4 = sub_1000BC4D4(&unk_10169A0A0, &unk_1013B3B60);
    v0[11] = v4;
    *v3 = v0;
    v3[1] = sub_100BC2A4C;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 5, 0, 0, 0x736553636E797361, 0xED0000736E6F6973, sub_100BF443C, v2, v4);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100BC2A4C()
{

  return _swift_task_switch(sub_100BC2B48, 0, 0);
}

uint64_t sub_100BC2B48()
{
  v1 = v0[8];
  v2 = v0[5];
  v0[12] = v2;
  v0[6] = v2;
  v3 = swift_task_alloc();
  v0[13] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[14] = v4;
  v5 = sub_1000041A4(&qword_1016B7D60, &unk_10169A0A0, &unk_1013B3B60, &protocol conformance descriptor for Set<A>);
  *v4 = v0;
  v4[1] = sub_100BC2C5C;
  v6 = v0[11];

  return Sequence.asyncForEach(_:)(&unk_1013DD940, v3, v6, v5);
}

uint64_t sub_100BC2C5C()
{

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(sub_1003C36A0, 0, 0);
  }
}

uint64_t sub_100BC2DA0(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_100BC2E58;

  return XPCSession.proxy(errorHandler:)(v2 + 16, SharingCircleWildAdvertisementKey.init(key:), 0);
}

uint64_t sub_100BC2E58()
{

  return _swift_task_switch(sub_100BC2F54, 0, 0);
}

uint64_t sub_100BC2F54()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    swift_unknownObjectRetain();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v1 notifyPairingAccessoryChanged:isa];
    swift_unknownObjectRelease_n();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100BC2FF0(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return _swift_task_switch(sub_100BC3010, v1, 0);
}

uint64_t sub_100BC3010()
{
  v1 = *(*(v0 + 48) + 128);
  *(v0 + 56) = v1;
  return _swift_task_switch(sub_100BC3034, v1, 0);
}

uint64_t sub_100BC3034()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = OBJC_IVAR____TtC12searchpartyd23UserSessionStateManager_state;
  swift_beginAccess();
  v4 = type metadata accessor for UserSessionState();
  (*(*(v4 - 8) + 16))(v2, v1 + v3, v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_100BC3100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = type metadata accessor for DiscoveryService();
  *v6 = v3;
  v6[1] = sub_100014744;

  return UserSessionListener.stream()(a1, v7, a3);
}

uint64_t sub_100BC31B8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v29 = *(v6 - 8);
  v7 = *(v29 + 64);
  v8 = __chkstk_darwin(v6);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_1016B7860);
  sub_1000D2A70(a1, v10, &qword_1016980D0, &unk_10138F3B0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = a1;
    *&v30 = v27;
    *v14 = 136315394;
    *(v14 + 4) = sub_1000136BC(0xD000000000000032, 0x800000010136F030, &v30);
    *(v14 + 12) = 2082;
    sub_1000D2A70(v10, &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_1016980D0, &unk_10138F3B0);
    v15 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = String.init<A>(describing:)();
    v17 = v7;
    v18 = a2;
    v20 = v19;
    sub_10000B3A8(v10, &qword_1016980D0, &unk_10138F3B0);
    v21 = sub_1000136BC(v16, v20, &v30);
    a2 = v18;
    v7 = v17;

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s for %{public}s.", v14, 0x16u);
    swift_arrayDestroy();
    a1 = v28;
  }

  else
  {

    sub_10000B3A8(v10, &qword_1016980D0, &unk_10138F3B0);
    v15 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  }

  v22 = swift_allocObject();
  swift_weakInit();
  sub_1000D2A70(a2, &v30, &qword_1016A6A40, &qword_1013DD950);
  sub_1000D2A70(a1, v15, &qword_1016980D0, &unk_10138F3B0);
  v23 = (*(v29 + 80) + 65) & ~*(v29 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  v25 = v31[0];
  *(v24 + 24) = v30;
  *(v24 + 40) = v25;
  *(v24 + 49) = *(v31 + 9);
  sub_1000D2AD8(v15, v24 + v23, &qword_1016980D0, &unk_10138F3B0);
  *(v24 + ((v7 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = v5;

  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_100BC35CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[38] = a2;
  v3[39] = a3;
  v3[37] = a1;
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v3[40] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v3[41] = v4;
  v3[42] = *(v4 - 8);
  v3[43] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016B7D80, &unk_1013B52B0);
  v3[44] = swift_task_alloc();
  v5 = type metadata accessor for PairingSuccessResult();
  v3[45] = v5;
  v3[46] = *(v5 - 8);
  v3[47] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016B7D88, &qword_1013EAD30);
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();

  return _swift_task_switch(sub_100BC37A0, 0, 0);
}

uint64_t sub_100BC37A0()
{
  v62 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 400) = Strong;
  if (Strong)
  {
    v2 = Strong;
    sub_1000D2A70(*(v0 + 304), v0 + 16, &qword_1016A6A40, &qword_1013DD950);
    if (*(v0 + 56) == 1)
    {
      v59 = v2;
      v3 = *(v0 + 16);
      *(v0 + 408) = v3;
      *(v0 + 232) = v3;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v4 = type metadata accessor for PairingCoordinatorError();
      v5 = swift_dynamicCast();
      v6 = *(v4 - 8);
      v7 = *(v6 + 56);
      v8 = *(v0 + 392);
      if (v5)
      {
        v7(*(v0 + 392), 0, 1, v4);
        v9 = (*(v6 + 88))(v8, v4);
        v10 = enum case for PairingCoordinatorError.pairedToAnotherAccount(_:);
        (*(v6 + 8))(v8, v4);
        if (v9 == v10)
        {
          type metadata accessor for SPPairingSessionError(0);
          *(v0 + 288) = 18;
          sub_100032898(_swiftEmptyArrayStorage);
          sub_100BCA23C(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
          _BridgedStoredNSError.init(_:userInfo:)();
          v3 = *(v0 + 280);
          v11 = v59;
LABEL_20:
          *(v0 + 416) = v3;
          v34 = *(v11 + 216);
          v35 = swift_task_alloc();
          *(v0 + 424) = v35;
          v36 = sub_1000BC4D4(&unk_10169A0A0, &unk_1013B3B60);
          *(v0 + 432) = v36;
          *v35 = v0;
          v35[1] = sub_100BC4274;
          v37 = v0 + 248;
LABEL_41:

          return withCheckedContinuation<A>(isolation:function:_:)(v37, 0, 0, 0x736553636E797361, 0xED0000736E6F6973, sub_100BF443C, v34, v36);
        }
      }

      else
      {
        v7(*(v0 + 392), 1, 1, v4);
        sub_10000B3A8(v8, &qword_1016B7D88, &qword_1013EAD30);
      }

      *(v0 + 240) = v3;
      swift_errorRetain();
      v23 = swift_dynamicCast();
      v24 = *(v0 + 384);
      if (v23)
      {
        v7(*(v0 + 384), 0, 1, v4);
        v25 = (*(v6 + 88))(v24, v4);
        v26 = enum case for PairingCoordinatorError.timeout(_:);
        (*(v6 + 8))(v24, v4);
        v27 = v25 == v26;
        v11 = v59;
        if (v27)
        {
          type metadata accessor for SPPairingSessionError(0);
          *(v0 + 272) = 13;
          sub_100032898(_swiftEmptyArrayStorage);
          sub_100BCA23C(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
          _BridgedStoredNSError.init(_:userInfo:)();
          v3 = *(v0 + 264);
          goto LABEL_20;
        }
      }

      else
      {
        v7(*(v0 + 384), 1, 1, v4);
        sub_10000B3A8(v24, &qword_1016B7D88, &qword_1013EAD30);
        v11 = v59;
      }

      swift_errorRetain();
      swift_errorRetain();
      goto LABEL_20;
    }

    v12 = *(v0 + 368);
    sub_10000A748((v0 + 16), v0 + 64);
    sub_10001F280(v0 + 64, v0 + 104);
    sub_1000BC4D4(&unk_1016B7D90, &qword_1013B52C0);
    v13 = swift_dynamicCast();
    v14 = *(v12 + 56);
    if (v13)
    {
      v60 = v2;
      v15 = *(v0 + 368);
      v16 = *(v0 + 376);
      v18 = *(v0 + 352);
      v17 = *(v0 + 360);
      v19 = *(v0 + 328);
      v20 = *(v0 + 336);
      v22 = *(v0 + 312);
      v21 = *(v0 + 320);
      v14(v18, 0, 1, v17);
      (*(v15 + 32))(v16, v18, v17);
      sub_1000D2A70(v22, v21, &qword_1016980D0, &unk_10138F3B0);
      if ((*(v20 + 48))(v21, 1, v19) == 1)
      {
        sub_10000B3A8(*(v0 + 320), &qword_1016980D0, &unk_10138F3B0);
      }

      else
      {
        v38 = *(v0 + 336);
        v39 = *(v0 + 344);
        v40 = *(v0 + 328);
        (*(v38 + 32))(v39, *(v0 + 320), v40);
        sub_100BC4D9C(v39);
        (*(v38 + 8))(v39, v40);
      }

      PairingSuccessResult.location.getter();
      if (*(v0 + 168))
      {
        sub_1000BC4D4(&qword_1016B7DA0, &qword_1013DD970);
        sub_100008BB8(0, &qword_1016A3160, CLLocation_ptr);
        if (swift_dynamicCast())
        {
          v41 = *(v0 + 224);
        }

        else
        {
          v41 = 0;
        }
      }

      else
      {
        sub_10000B3A8(v0 + 144, &qword_1016A6A30, &unk_1013B52A0);
        v41 = 0;
      }

      *(v0 + 464) = v41;
      *(v0 + 472) = PairingSuccessResult.beaconIds.getter();
      if (qword_101694D50 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_1000076D4(v44, qword_1016B7860);
      v45 = v41;

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *v48 = 136315650;
        *(v48 + 4) = sub_1000136BC(0xD000000000000032, 0x800000010136F030, &v61);
        *(v48 + 12) = 2080;
        v49 = Array.description.getter();
        v51 = sub_1000136BC(v49, v50, &v61);

        *(v48 + 14) = v51;
        *(v48 + 22) = 2080;
        if (v41)
        {
          v52 = [v45 debugDescription];
          v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v55 = v54;
        }

        else
        {
          v55 = 0xE300000000000000;
          v53 = 7104878;
        }

        v56 = v60;
        v57 = sub_1000136BC(v53, v55, &v61);

        *(v48 + 24) = v57;
        _os_log_impl(&_mh_execute_header, v46, v47, "%s beaconIds:%s location:%s", v48, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        v56 = v60;
      }

      v34 = *(v56 + 216);
      v58 = swift_task_alloc();
      *(v0 + 480) = v58;
      v36 = sub_1000BC4D4(&unk_10169A0A0, &unk_1013B3B60);
      *(v0 + 488) = v36;
      *v58 = v0;
      v58[1] = sub_100BC4698;
      v37 = v0 + 208;
      goto LABEL_41;
    }

    v28 = *(v0 + 352);
    v14(v28, 1, 1, *(v0 + 360));
    sub_10000B3A8(v28, &qword_1016B7D80, &unk_1013B52B0);
    if (qword_101694D50 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000076D4(v29, qword_1016B7860);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v61 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_1000136BC(0xD000000000000032, 0x800000010136F030, &v61);
      _os_log_impl(&_mh_execute_header, v30, v31, "%s Unexpected result!", v32, 0xCu);
      sub_100007BAC(v33);
    }

    else
    {
    }

    sub_100007BAC((v0 + 64));
  }

  v42 = *(v0 + 8);

  return v42();
}