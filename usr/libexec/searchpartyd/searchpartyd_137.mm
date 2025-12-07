uint64_t sub_100F343A4()
{
  v34 = v0;
  if (v0[26] >> 60 == 15)
  {
    sub_100006654(v0[21], v0[22]);
    sub_100F3A2F8(v0[13], v0[11], type metadata accessor for BeaconIdentifier);
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    v3 = os_log_type_enabled(v1, v2);
    v30 = v0[13];
    v4 = v0[11];
    if (v3)
    {
      v28 = v0[8];
      v29 = v0[9];
      v5 = v0[6];
      v26 = v0[5];
      v27 = v0[7];
      v6 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v6 = 136315651;
      *(v6 + 4) = sub_1000136BC(0xD000000000000032, 0x8000000101374660, &v31);
      *(v6 + 12) = 2160;
      *(v6 + 14) = 1752392040;
      *(v6 + 22) = 2081;
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v7;
      v8._countAndFlagsBits = 47;
      v8._object = 0xE100000000000000;
      String.append(_:)(v8);
      v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v9);

      v10 = v32;
      v11 = v33;
      sub_100F3A500(v4, type metadata accessor for BeaconIdentifier);
      v12 = sub_1000136BC(v10, v11, &v31);

      *(v6 + 24) = v12;
      _os_log_impl(&_mh_execute_header, v1, v2, "%s Missing info to compute connection keys for %{private,mask.hash}s!", v6, 0x20u);
      swift_arrayDestroy();

      sub_10000B3A8(v26, &unk_1016C8FC0, &unk_10139D7D0);
      v13 = *(v27 + 8);
      v13(v28, v5);
      v13(v29, v5);
    }

    else
    {
      v20 = v0[8];
      v19 = v0[9];
      v22 = v0[6];
      v21 = v0[7];
      v23 = v0[5];

      sub_100F3A500(v4, type metadata accessor for BeaconIdentifier);
      sub_10000B3A8(v23, &unk_1016C8FC0, &unk_10139D7D0);
      v24 = *(v21 + 8);
      v24(v20, v22);
      v24(v19, v22);
    }

    sub_100F3A500(v30, type metadata accessor for BeaconIdentifier);

    v25 = v0[1];

    return v25(_swiftEmptyArrayStorage);
  }

  else
  {
    v14 = swift_task_alloc();
    v0[28] = v14;
    *v14 = v0;
    v14[1] = sub_100F3492C;
    v15 = v0[19];
    v17 = v0[8];
    v16 = v0[9];

    return sub_1006868C4(v17, v16, v15);
  }
}

uint64_t sub_100F347EC()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[13];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[5];

  sub_100006654(v1, v2);
  sub_10000B3A8(v8, &unk_1016C8FC0, &unk_10139D7D0);
  v9 = *(v7 + 8);
  v9(v5, v6);
  v9(v4, v6);
  sub_100F3A500(v3, type metadata accessor for BeaconIdentifier);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100F3492C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[29] = a1;
  v4[30] = a2;
  v4[31] = v2;

  if (v2)
  {
    v5 = sub_100F34FD8;
  }

  else
  {
    v5 = sub_100F34A44;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100F34A44()
{
  v56 = v0;
  v1 = v0[30];
  if (v1 >> 60 == 15)
  {
    sub_100006654(v0[25], v0[26]);
    sub_100006654(v0[21], v0[22]);
    sub_100F3A2F8(v0[13], v0[11], type metadata accessor for BeaconIdentifier);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    v4 = os_log_type_enabled(v2, v3);
    v51 = v0[13];
    v5 = v0[11];
    if (v4)
    {
      v47 = v0[8];
      v49 = v0[9];
      v45 = v0[7];
      v6 = v0[6];
      v43 = v0[5];
      v7 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v7 = 136315651;
      *(v7 + 4) = sub_1000136BC(0xD000000000000032, 0x8000000101374660, &v53);
      *(v7 + 12) = 2160;
      *(v7 + 14) = 1752392040;
      *(v7 + 22) = 2081;
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v8;
      v9._countAndFlagsBits = 47;
      v9._object = 0xE100000000000000;
      String.append(_:)(v9);
      v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v10);

      v11 = v54;
      v12 = v55;
      sub_100F3A500(v5, type metadata accessor for BeaconIdentifier);
      v13 = sub_1000136BC(v11, v12, &v53);

      *(v7 + 24) = v13;
      _os_log_impl(&_mh_execute_header, v2, v3, "%s Missing info to compute connection keys for %{private,mask.hash}s!", v7, 0x20u);
      swift_arrayDestroy();

      sub_10000B3A8(v43, &unk_1016C8FC0, &unk_10139D7D0);
      v14 = *(v45 + 8);
      v14(v47, v6);
      v14(v49, v6);
    }

    else
    {
      v25 = v0[8];
      v24 = v0[9];
      v27 = v0[6];
      v26 = v0[7];
      v28 = v0[5];

      sub_100F3A500(v5, type metadata accessor for BeaconIdentifier);
      sub_10000B3A8(v28, &unk_1016C8FC0, &unk_10139D7D0);
      v29 = *(v26 + 8);
      v29(v25, v27);
      v29(v24, v27);
    }

    sub_100F3A500(v51, type metadata accessor for BeaconIdentifier);
    v16 = _swiftEmptyArrayStorage;
  }

  else
  {
    v15 = v0[29];
    sub_10002E98C(v0[21], v0[22]);
    sub_10002E98C(v15, v1);
    v16 = sub_100A5CBA0(0, 1, 1, _swiftEmptyArrayStorage);
    v18 = *(v16 + 2);
    v17 = *(v16 + 3);
    v19 = v18 + 1;
    if (v18 >= v17 >> 1)
    {
      v16 = sub_100A5CBA0((v17 > 1), v18 + 1, 1, v16);
    }

    v20 = v0[19];
    v21 = &v16[48 * v18];
    v22 = *(v0 + 21);
    v23 = *(v0 + 29);
    *(v16 + 2) = v19;
    v21[32] = 0;
    *(v21 + 5) = v20;
    *(v21 + 3) = v22;
    *(v21 + 4) = v23;
    if (v20)
    {
      v50 = v0[19] / 0x60uLL + 1;
    }

    else
    {
      v50 = 0;
    }

    v30 = *(v16 + 3);
    v52 = v18 + 1;
    v48 = v18 + 2;
    if (v19 >= v30 >> 1)
    {
      v16 = sub_100A5CBA0((v30 > 1), v18 + 2, 1, v16);
    }

    v32 = v0[21];
    v31 = v0[22];
    v33 = v0[13];
    v35 = v0[8];
    v34 = v0[9];
    v37 = v0[6];
    v36 = v0[7];
    v38 = v0[5];
    v46 = *(v0 + 29);
    v44 = *(v0 + 25);

    sub_100006654(v32, v31);
    sub_10000B3A8(v38, &unk_1016C8FC0, &unk_10139D7D0);
    v39 = *(v36 + 8);
    v39(v35, v37);
    v39(v34, v37);
    sub_100F3A500(v33, type metadata accessor for BeaconIdentifier);
    *(v16 + 2) = v48;
    v40 = &v16[48 * v52];
    v40[32] = 1;
    *(v40 + 5) = v50;
    *(v40 + 3) = v44;
    *(v40 + 4) = v46;
  }

  v41 = v0[1];

  return v41(v16);
}

uint64_t sub_100F34FD8()
{
  v1 = v0[25];
  v2 = v0[26];
  v4 = v0[21];
  v3 = v0[22];
  v13 = v0[13];
  v6 = v0[8];
  v5 = v0[9];
  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[5];

  sub_100006654(v1, v2);
  sub_100006654(v4, v3);
  sub_10000B3A8(v9, &unk_1016C8FC0, &unk_10139D7D0);
  v10 = *(v7 + 8);
  v10(v6, v8);
  v10(v5, v8);
  sub_100F3A500(v13, type metadata accessor for BeaconIdentifier);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100F35134(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for UUID();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  sub_1000BC4D4(&qword_101699DB0, &unk_101393100);
  v1[7] = swift_task_alloc();
  v3 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  sub_1000BC4D4(&unk_10169BB50, &unk_101395760);
  v1[11] = swift_task_alloc();
  v4 = type metadata accessor for ObservedAdvertisement(0);
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = type metadata accessor for BeaconIdentifier(0);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();

  return _swift_task_switch(sub_100F35394, 0, 0);
}

uint64_t sub_100F35394()
{
  sub_100F3A2F8(v0[2], v0[21], type metadata accessor for BeaconIdentifier);
  v1 = swift_task_alloc();
  v0[22] = v1;
  *v1 = v0;
  v1[1] = sub_100F35444;

  return daemon.getter();
}

uint64_t sub_100F35444(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 184) = a1;

  v3 = swift_task_alloc();
  *(v2 + 192) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_100F3A180(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100F3A180(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_100F35620;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100F35620(uint64_t a1)
{
  v3 = *v2;
  v3[25] = a1;
  v3[26] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100F35C74, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[27] = v4;
    *v4 = v3;
    v4[1] = sub_100F357C8;

    return sub_1013175B8();
  }
}

uint64_t sub_100F357C8(uint64_t a1)
{
  *(*v1 + 224) = a1;

  return _swift_task_switch(sub_100F358C8, 0, 0);
}

uint64_t sub_100F358C8()
{
  if (v0[28])
  {
    v1 = swift_task_alloc();
    v0[29] = v1;
    *v1 = v0;
    v1[1] = sub_100F35B60;
    v2 = v0[21];
    v3 = v0[11];

    return sub_1010CD810(v3, v2);
  }

  else
  {
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177B810);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Missing ItemSharingKeyStore!", v8, 2u);
    }

    sub_100F32E3C();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();

    sub_100F3A500(v0[21], type metadata accessor for BeaconIdentifier);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_100F35B60()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_100F36C20;
  }

  else
  {
    v2 = sub_100F35D94;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100F35C74()
{
  sub_100F3A500(*(v0 + 168), type metadata accessor for BeaconIdentifier);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100F35D94()
{
  v107 = v0;
  v1 = *(v0 + 88);
  if ((*(*(v0 + 104) + 48))(v1, 1, *(v0 + 96)) == 1)
  {
    sub_10000B3A8(v1, &unk_10169BB50, &unk_101395760);
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 160);
    v3 = *(v0 + 168);
    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177B810);
    sub_100F3A2F8(v3, v2, type metadata accessor for BeaconIdentifier);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 160);
    if (v7)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v104 = v10;
      *v9 = 141558275;
      *(v9 + 4) = 1752392040;
      *(v9 + 12) = 2081;
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v105 = dispatch thunk of CustomStringConvertible.description.getter();
      v106 = v11;
      v12._countAndFlagsBits = 47;
      v12._object = 0xE100000000000000;
      String.append(_:)(v12);
      v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v13);

      sub_100F3A500(v8, type metadata accessor for BeaconIdentifier);
      v14 = sub_1000136BC(v105, v106, &v104);

      *(v9 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v5, v6, "No observed advertisement for beacon %{private,mask.hash}s.", v9, 0x16u);
      sub_100007BAC(v10);
    }

    else
    {

      sub_100F3A500(v8, type metadata accessor for BeaconIdentifier);
    }

    v28 = swift_task_alloc();
    *(v0 + 624) = v28;
    *v28 = v0;
    v29 = sub_100F39C30;
    goto LABEL_12;
  }

  sub_100F3A498(v1, *(v0 + 120), type metadata accessor for ObservedAdvertisement);
  if (qword_101694B98 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 112);
  v15 = *(v0 + 120);
  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177B810);
  sub_100F3A2F8(v15, v16, type metadata accessor for ObservedAdvertisement);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 112);
  if (v20)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v105 = v23;
    *v22 = 141558275;
    *(v22 + 4) = 1752392040;
    *(v22 + 12) = 2081;
    v24 = sub_100018680();
    v26 = v25;
    sub_100F3A500(v21, type metadata accessor for ObservedAdvertisement);
    v27 = sub_1000136BC(v24, v26, &v105);

    *(v22 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "Found observed advertisement %{private,mask.hash}s.", v22, 0x16u);
    sub_100007BAC(v23);
  }

  else
  {

    sub_100F3A500(v21, type metadata accessor for ObservedAdvertisement);
  }

  v32 = *(v0 + 64);
  v33 = *(v0 + 72);
  v34 = *(v0 + 56);
  sub_1000D2A70(*(v0 + 120) + *(*(v0 + 96) + 52), v34, &qword_101699DB0, &unk_101393100);
  v35 = (*(v33 + 48))(v34, 1, v32);
  v36 = *(v0 + 168);
  if (v35 == 1)
  {
    v37 = *(v0 + 152);
    sub_10000B3A8(*(v0 + 56), &qword_101699DB0, &unk_101393100);
    sub_100F3A2F8(v36, v37, type metadata accessor for BeaconIdentifier);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 168);
    v42 = *(v0 + 152);
    if (v40)
    {
      v103 = *(v0 + 120);
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v104 = v44;
      *v43 = 141558275;
      *(v43 + 4) = 1752392040;
      *(v43 + 12) = 2081;
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v101 = v41;
      v105 = dispatch thunk of CustomStringConvertible.description.getter();
      v106 = v45;
      v46._countAndFlagsBits = 47;
      v46._object = 0xE100000000000000;
      String.append(_:)(v46);
      v47._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v47);

      v48 = v105;
      v49 = v106;
      sub_100F3A500(v42, type metadata accessor for BeaconIdentifier);
      v50 = sub_1000136BC(v48, v49, &v104);

      *(v43 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v38, v39, "Missing beaconIndexInformation for %{private,mask.hash}s!", v43, 0x16u);
      sub_100007BAC(v44);

      sub_100F3A500(v103, type metadata accessor for ObservedAdvertisement);
      v51 = v101;
    }

    else
    {
      v75 = *(v0 + 120);

      sub_100F3A500(v42, type metadata accessor for BeaconIdentifier);
      sub_100F3A500(v75, type metadata accessor for ObservedAdvertisement);
      v51 = v41;
    }

    sub_100F3A500(v51, type metadata accessor for BeaconIdentifier);

    v76 = *(v0 + 8);

    return v76(_swiftEmptyArrayStorage);
  }

  else
  {
    v53 = *(v0 + 120);
    v52 = *(v0 + 128);
    v54 = *(v0 + 80);
    v55 = *(v0 + 64);
    v57 = *(v0 + 40);
    v56 = *(v0 + 48);
    v58 = *(v0 + 24);
    v59 = *(v0 + 32);
    sub_100F3A498(*(v0 + 56), v54, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    v60 = *(v54 + *(v55 + 20));
    v61 = *(v59 + 16);
    v61(v56, v36, v58);
    v61(v57, v36 + *(v52 + 20), v58);
    v62 = *(v53 + 34);
    *(v0 + 648) = v62;
    if (*(v53 + 35))
    {
      if (v60)
      {
        sub_100F3A2F8(*(v0 + 168), *(v0 + 136), type metadata accessor for BeaconIdentifier);
        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.fault.getter();
        v65 = os_log_type_enabled(v63, v64);
        v66 = *(v0 + 136);
        if (v65)
        {
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v104 = v68;
          *v67 = 141558275;
          *(v67 + 4) = 1752392040;
          *(v67 + 12) = 2081;
          sub_100F3A180(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v105 = dispatch thunk of CustomStringConvertible.description.getter();
          v106 = v69;
          v70._countAndFlagsBits = 47;
          v70._object = 0xE100000000000000;
          String.append(_:)(v70);
          v71._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v71);

          v72 = v105;
          v73 = v106;
          sub_100F3A500(v66, type metadata accessor for BeaconIdentifier);
          v74 = sub_1000136BC(v72, v73, &v104);

          *(v67 + 14) = v74;
          _os_log_impl(&_mh_execute_header, v63, v64, "%{private,mask.hash}s Should be impossible to be in secondary sequence without a hint!", v67, 0x16u);
          sub_100007BAC(v68);
        }

        else
        {

          sub_100F3A500(v66, type metadata accessor for BeaconIdentifier);
        }

        v28 = swift_task_alloc();
        *(v0 + 600) = v28;
        *v28 = v0;
        v29 = sub_100F397B4;
LABEL_12:
        v28[1] = v29;
        v30 = *(v0 + 16);

        return sub_100F32F98(v30);
      }

      v95 = *(*(v0 + 80) + *(*(v0 + 64) + 24));
      *(v0 + 496) = v95;
      v96 = swift_task_alloc();
      *(v0 + 504) = v96;
      *v96 = v0;
      v96[1] = sub_100F3867C;
      v97 = *(v0 + 40);
      v98 = *(v0 + 48);

      return sub_100F10DF4(v98, v97, v95);
    }

    else
    {
      v102 = v60;
      v77 = *(v0 + 168);
      v78 = *(v0 + 144);
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v79 = swift_allocObject();
      *(v79 + 16) = xmmword_101385D80;
      *(v79 + 56) = &type metadata for UInt8;
      *(v79 + 64) = &protocol witness table for UInt8;
      *(v79 + 32) = v62;
      v80 = String.init(format:_:)();
      v82 = v81;
      sub_100F3A2F8(v77, v78, type metadata accessor for BeaconIdentifier);
      v83 = Logger.logObject.getter();
      v84 = static os_log_type_t.info.getter();
      v85 = os_log_type_enabled(v83, v84);
      v86 = *(v0 + 144);
      if (v85)
      {
        v87 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        *v87 = 136446723;
        v88 = sub_1000136BC(v80, v82, &v104);

        *(v87 + 4) = v88;
        *(v87 + 12) = 2160;
        *(v87 + 14) = 1752392040;
        *(v87 + 22) = 2081;
        sub_100F3A180(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v105 = dispatch thunk of CustomStringConvertible.description.getter();
        v106 = v89;
        v90._countAndFlagsBits = 47;
        v90._object = 0xE100000000000000;
        String.append(_:)(v90);
        v91._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v91);

        v92 = v105;
        v93 = v106;
        sub_100F3A500(v86, type metadata accessor for BeaconIdentifier);
        v94 = sub_1000136BC(v92, v93, &v104);

        *(v87 + 24) = v94;
        _os_log_impl(&_mh_execute_header, v83, v84, "Hint %{public}s is available for %{private,mask.hash}s", v87, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        sub_100F3A500(v86, type metadata accessor for BeaconIdentifier);
      }

      *(v0 + 248) = *(*(v0 + 80) + *(*(v0 + 64) + 24));
      v99 = *(v0 + 224);
      if (v102)
      {
        v100 = sub_100F379D0;
      }

      else
      {
        v100 = sub_100F36D54;
      }

      return _swift_task_switch(v100, v99, 0);
    }
  }
}

uint64_t sub_100F36C20()
{

  sub_100F3A500(*(v0 + 168), type metadata accessor for BeaconIdentifier);

  v1 = *(v0 + 8);

  return v1();
}

void sub_100F36D54()
{
  v1 = v0[31];
  v0[32] = v1 + 96;
  if (v1 >= 0xFFFFFFFFFFFFFFA0)
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    v0[34] = v1;
    v0[35] = _swiftEmptyDictionarySingleton;
    v0[33] = _swiftEmptyDictionarySingleton;
    v0[36] = 96;
    v2 = swift_task_alloc();
    v0[37] = v2;
    *v2 = v0;
    v2[1] = sub_100F36E3C;
    v3 = v0[5];
    v4 = v0[6];

    sub_100F10DF4(v4, v3, v1);
  }
}

uint64_t sub_100F36E3C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[38] = a1;
  v4[39] = a2;
  v4[40] = v2;

  if (v2)
  {

    v5 = v4[28];
    v6 = sub_100F3714C;
  }

  else
  {
    v5 = v4[28];
    v6 = sub_100F36F60;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100F36F60(uint64_t (*a1)(), uint64_t a2)
{
  v3 = *(v2 + 312);
  if (v3 >> 60 != 15)
  {
    v4 = *(v2 + 648);
    if (v4 == Data._Representation.subscript.getter())
    {
      v5 = swift_task_alloc();
      *(v2 + 328) = v5;
      *v5 = v2;
      v5[1] = sub_100F37170;
      v6 = *(v2 + 272);
      v7 = *(v2 + 40);
      v8 = *(v2 + 48);

      return sub_1006868C4(v8, v7, v6);
    }

    a1 = sub_100006654(*(v2 + 304), *(v2 + 312));
  }

  v10 = *(v2 + 264);
  v11 = *(v2 + 280);
  v12 = *(v2 + 288);
  *(v2 + 360) = v11;
  if (!v12)
  {
    a1 = sub_100F374E0;
    a2 = 0;
    v3 = 0;

    return _swift_task_switch(a1, a2, v3);
  }

  v13 = *(v2 + 272);
  v14 = v13 + 1;
  if (v13 == -1)
  {
    __break(1u);
    goto LABEL_20;
  }

  *(v2 + 272) = v14;
  *(v2 + 280) = v11;
  *(v2 + 264) = v10;
  v15 = *(v2 + 256);
  v16 = v15 - v14;
  if (v15 >= v14)
  {
    if ((v15 - v14) >= 0)
    {
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  if ((v14 - v15) < 0)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return _swift_task_switch(a1, a2, v3);
  }

  v16 = v15 - v14;
LABEL_16:
  *(v2 + 288) = v16;
  v17 = swift_task_alloc();
  *(v2 + 296) = v17;
  *v17 = v2;
  v17[1] = sub_100F36E3C;
  v18 = *(v2 + 40);
  v19 = *(v2 + 48);

  return sub_100F10DF4(v19, v18, v14);
}

uint64_t sub_100F37170(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[42] = a1;
  v4[43] = a2;
  v4[44] = v2;

  if (v2)
  {

    v5 = v4[28];
    v6 = sub_100F37470;
  }

  else
  {
    v5 = v4[28];
    v6 = sub_100F37294;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100F37294()
{
  v1 = v0[43];
  if (v1 >> 60 == 15)
  {
    v2 = sub_100006654(v0[38], v0[39]);
    v5 = v0[35];
    v6 = v0[33];
  }

  else
  {
    v7 = v0[42];
    v9 = v0[38];
    v8 = v0[39];
    v10 = v0[33];
    v11 = v0[34];
    sub_100017D5C(v7, v0[43]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100FFF448(v7, v1, v11, isUniquelyReferenced_nonNull_native);
    sub_100006654(v9, v8);
    v2 = sub_100006654(v7, v1);
    v6 = v10;
    v5 = v10;
  }

  v0[45] = v5;
  if (!v0[36])
  {
    v2 = sub_100F374E0;
    v3 = 0;
    v4 = 0;

    return _swift_task_switch(v2, v3, v4);
  }

  v13 = v0[34];
  v14 = v13 + 1;
  if (v13 == -1)
  {
    __break(1u);
    goto LABEL_17;
  }

  v0[34] = v14;
  v0[35] = v5;
  v0[33] = v6;
  v15 = v0[32];
  v16 = v15 - v14;
  if (v15 >= v14)
  {
    if ((v15 - v14) >= 0)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if ((v14 - v15) < 0)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return _swift_task_switch(v2, v3, v4);
  }

  v16 = v15 - v14;
LABEL_13:
  v0[36] = v16;
  v17 = swift_task_alloc();
  v0[37] = v17;
  *v17 = v0;
  v17[1] = sub_100F36E3C;
  v18 = v0[5];
  v19 = v0[6];

  return sub_100F10DF4(v19, v18, v14);
}

uint64_t sub_100F37470()
{
  sub_100006654(v0[38], v0[39]);
  v0[46] = v0[44];

  return _swift_task_switch(sub_100F37828, 0, 0);
}

uint64_t sub_100F374E0()
{
  v36 = v0;
  v33 = v0[45];
  v1 = v0[15];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  if ((v2 & 0x2000000000000000) != 0)
  {
    v34 = v2 & 0xDFFFFFFFFFFFFFFFLL;
    result = sub_100017D5C(*(v1 + 16), v2 & 0xDFFFFFFFFFFFFFFFLL);
    v5 = v3;
  }

  else
  {
    sub_100017D5C(*(v1 + 16), *(v1 + 24));
    result = sub_10002EA98(6, v3, v2, v35);
    v5 = v35[0];
    v34 = v35[1];
  }

  v6 = 0;
  v7 = -1;
  v8 = -1 << *(v33 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v33 + 64);
  v10 = (63 - v8) >> 6;
  v11 = _swiftEmptyArrayStorage;
  v31 = v5;
  if (v9)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return result;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v33 + 64 + 8 * v12);
    ++v6;
    if (v9)
    {
      v6 = v12;
      do
      {
LABEL_11:
        v13 = __clz(__rbit64(v9)) | (v6 << 6);
        v14 = *(*(v33 + 48) + 8 * v13);
        v15 = (*(v33 + 56) + 16 * v13);
        v16 = *v15;
        v17 = v15[1];
        sub_100017D5C(*v15, v17);
        sub_100017D5C(v5, v34);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100A5CBA0(0, *(v11 + 2) + 1, 1, v11);
          v11 = result;
        }

        v19 = *(v11 + 2);
        v18 = *(v11 + 3);
        v20 = v11;
        if (v19 >= v18 >> 1)
        {
          result = sub_100A5CBA0((v18 > 1), v19 + 1, 1, v11);
          v20 = result;
        }

        *(v20 + 16) = v19 + 1;
        v11 = v20;
        v21 = v20 + 48 * v19;
        *(v21 + 32) = 0;
        v9 &= v9 - 1;
        v5 = v31;
        *(v21 + 40) = v14;
        *(v21 + 48) = v31;
        *(v21 + 56) = v34;
        *(v21 + 64) = v16;
        *(v21 + 72) = v17;
      }

      while (v9);
    }
  }

  v22 = v0[21];
  v23 = v0[15];
  v24 = v0[10];
  v25 = v0[5];
  v26 = v0[6];
  v32 = v11;
  v28 = v0[3];
  v27 = v0[4];

  sub_100016590(v5, v34);
  v29 = *(v27 + 8);
  v29(v25, v28);
  v29(v26, v28);
  sub_100F3A500(v24, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v23, type metadata accessor for ObservedAdvertisement);
  sub_100F3A500(v22, type metadata accessor for BeaconIdentifier);

  v30 = v0[1];

  return v30(v32);
}

uint64_t sub_100F37828()
{
  v1 = v0[15];
  v2 = v0[10];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v6 = v0[4];

  v7 = *(v6 + 8);
  v7(v4, v5);
  v7(v3, v5);
  sub_100F3A500(v2, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v1, type metadata accessor for ObservedAdvertisement);
  sub_100F3A500(v0[21], type metadata accessor for BeaconIdentifier);

  v8 = v0[1];

  return v8();
}

void sub_100F379D0()
{
  v1 = v0[31];
  if (!v1)
  {
    goto LABEL_8;
  }

  if (!is_mul_ok(v1, 0x60uLL))
  {
LABEL_14:
    __break(1u);
    return;
  }

  v2 = 96 * v1;
  v1 = 96 * v1 - 1;
  v3 = v2 - 96;
  if (v3 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (v1 < v4)
  {
    __break(1u);
LABEL_8:
    v4 = 0;
  }

  v0[49] = v4;
  v0[50] = _swiftEmptyDictionarySingleton;
  v0[47] = v1;
  v0[48] = _swiftEmptyDictionarySingleton;
  v5 = v1 - v4;
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v0[51] = v5;
  v6 = swift_task_alloc();
  v0[52] = v6;
  *v6 = v0;
  v6[1] = sub_100F37AE8;
  v7 = v0[5];
  v8 = v0[6];

  sub_100F10DF4(v8, v7, v4);
}

uint64_t sub_100F37AE8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[53] = a1;
  v4[54] = a2;
  v4[55] = v2;

  if (v2)
  {

    v5 = v4[28];
    v6 = sub_100F37DF8;
  }

  else
  {
    v5 = v4[28];
    v6 = sub_100F37C0C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100F37C0C(uint64_t (*a1)(), uint64_t a2)
{
  v3 = *(v2 + 432);
  if (v3 >> 60 != 15)
  {
    v4 = *(v2 + 648);
    if (v4 == Data._Representation.subscript.getter())
    {
      v5 = swift_task_alloc();
      *(v2 + 448) = v5;
      *v5 = v2;
      v5[1] = sub_100F37E1C;
      v6 = *(v2 + 392);
      v7 = *(v2 + 40);
      v8 = *(v2 + 48);

      return sub_1006868C4(v8, v7, v6);
    }

    a1 = sub_100006654(*(v2 + 424), *(v2 + 432));
  }

  v10 = *(v2 + 384);
  v11 = *(v2 + 400);
  v12 = *(v2 + 408);
  *(v2 + 480) = v11;
  if (!v12)
  {
    a1 = sub_100F3818C;
    a2 = 0;
    v3 = 0;

    return _swift_task_switch(a1, a2, v3);
  }

  v13 = *(v2 + 392);
  v14 = v13 + 1;
  if (v13 == -1)
  {
    __break(1u);
    goto LABEL_20;
  }

  *(v2 + 392) = v14;
  *(v2 + 400) = v11;
  *(v2 + 384) = v10;
  v15 = *(v2 + 376);
  v16 = v15 - v14;
  if (v15 >= v14)
  {
    if ((v15 - v14) >= 0)
    {
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  if ((v14 - v15) < 0)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return _swift_task_switch(a1, a2, v3);
  }

  v16 = v15 - v14;
LABEL_16:
  *(v2 + 408) = v16;
  v17 = swift_task_alloc();
  *(v2 + 416) = v17;
  *v17 = v2;
  v17[1] = sub_100F37AE8;
  v18 = *(v2 + 40);
  v19 = *(v2 + 48);

  return sub_100F10DF4(v19, v18, v14);
}

uint64_t sub_100F37E1C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[57] = a1;
  v4[58] = a2;
  v4[59] = v2;

  if (v2)
  {

    v5 = v4[28];
    v6 = sub_100F3811C;
  }

  else
  {
    v5 = v4[28];
    v6 = sub_100F37F40;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100F37F40()
{
  v1 = v0[58];
  if (v1 >> 60 == 15)
  {
    v2 = sub_100006654(v0[53], v0[54]);
    v5 = v0[50];
    v6 = v0[48];
  }

  else
  {
    v7 = v0[57];
    v9 = v0[53];
    v8 = v0[54];
    v10 = v0[48];
    v11 = v0[49];
    sub_100017D5C(v7, v0[58]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100FFF448(v7, v1, v11, isUniquelyReferenced_nonNull_native);
    sub_100006654(v9, v8);
    v2 = sub_100006654(v7, v1);
    v6 = v10;
    v5 = v10;
  }

  v0[60] = v5;
  if (!v0[51])
  {
    v2 = sub_100F3818C;
    v3 = 0;
    v4 = 0;

    return _swift_task_switch(v2, v3, v4);
  }

  v13 = v0[49];
  v14 = v13 + 1;
  if (v13 == -1)
  {
    __break(1u);
    goto LABEL_17;
  }

  v0[49] = v14;
  v0[50] = v5;
  v0[48] = v6;
  v15 = v0[47];
  v16 = v15 - v14;
  if (v15 >= v14)
  {
    if ((v15 - v14) >= 0)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if ((v14 - v15) < 0)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return _swift_task_switch(v2, v3, v4);
  }

  v16 = v15 - v14;
LABEL_13:
  v0[51] = v16;
  v17 = swift_task_alloc();
  v0[52] = v17;
  *v17 = v0;
  v17[1] = sub_100F37AE8;
  v18 = v0[5];
  v19 = v0[6];

  return sub_100F10DF4(v19, v18, v14);
}

uint64_t sub_100F3811C()
{
  sub_100006654(v0[53], v0[54]);
  v0[61] = v0[59];

  return _swift_task_switch(sub_100F384D4, 0, 0);
}

uint64_t sub_100F3818C()
{
  v36 = v0;
  v33 = v0[60];
  v1 = v0[15];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  if ((v2 & 0x2000000000000000) != 0)
  {
    v34 = v2 & 0xDFFFFFFFFFFFFFFFLL;
    result = sub_100017D5C(*(v1 + 16), v2 & 0xDFFFFFFFFFFFFFFFLL);
    v5 = v3;
  }

  else
  {
    sub_100017D5C(*(v1 + 16), *(v1 + 24));
    result = sub_10002EA98(6, v3, v2, v35);
    v5 = v35[0];
    v34 = v35[1];
  }

  v6 = 0;
  v7 = -1;
  v8 = -1 << *(v33 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v33 + 64);
  v10 = (63 - v8) >> 6;
  v11 = _swiftEmptyArrayStorage;
  v31 = v5;
  if (v9)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return result;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v33 + 64 + 8 * v12);
    ++v6;
    if (v9)
    {
      v6 = v12;
      do
      {
LABEL_11:
        v13 = __clz(__rbit64(v9)) | (v6 << 6);
        v14 = *(*(v33 + 48) + 8 * v13);
        v15 = (*(v33 + 56) + 16 * v13);
        v16 = *v15;
        v17 = v15[1];
        sub_100017D5C(*v15, v17);
        sub_100017D5C(v5, v34);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100A5CBA0(0, *(v11 + 2) + 1, 1, v11);
          v11 = result;
        }

        v19 = *(v11 + 2);
        v18 = *(v11 + 3);
        v20 = v11;
        if (v19 >= v18 >> 1)
        {
          result = sub_100A5CBA0((v18 > 1), v19 + 1, 1, v11);
          v20 = result;
        }

        *(v20 + 16) = v19 + 1;
        v11 = v20;
        v21 = v20 + 48 * v19;
        *(v21 + 32) = 0;
        v9 &= v9 - 1;
        v5 = v31;
        *(v21 + 40) = v14;
        *(v21 + 48) = v31;
        *(v21 + 56) = v34;
        *(v21 + 64) = v16;
        *(v21 + 72) = v17;
      }

      while (v9);
    }
  }

  v22 = v0[21];
  v23 = v0[15];
  v24 = v0[10];
  v25 = v0[5];
  v26 = v0[6];
  v32 = v11;
  v28 = v0[3];
  v27 = v0[4];

  sub_100016590(v5, v34);
  v29 = *(v27 + 8);
  v29(v25, v28);
  v29(v26, v28);
  sub_100F3A500(v24, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v23, type metadata accessor for ObservedAdvertisement);
  sub_100F3A500(v22, type metadata accessor for BeaconIdentifier);

  v30 = v0[1];

  return v30(v32);
}

uint64_t sub_100F384D4()
{
  v1 = v0[15];
  v2 = v0[10];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v6 = v0[4];

  v7 = *(v6 + 8);
  v7(v4, v5);
  v7(v3, v5);
  sub_100F3A500(v2, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v1, type metadata accessor for ObservedAdvertisement);
  sub_100F3A500(v0[21], type metadata accessor for BeaconIdentifier);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100F3867C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[64] = a1;
  v4[65] = a2;
  v4[66] = v2;

  if (v2)
  {
    v5 = sub_100F38A04;
  }

  else
  {
    v5 = sub_100F38798;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100F38798()
{
  if (v0[65] >> 60 == 15)
  {
    v1 = v0[21];
    v2 = v0[15];
    v3 = v0[10];
    v5 = v0[5];
    v4 = v0[6];
    v6 = v0[3];
    v7 = v0[4];

    v8 = *(v7 + 8);
    v8(v5, v6);
    v8(v4, v6);
    sub_100F3A500(v3, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    sub_100F3A500(v2, type metadata accessor for ObservedAdvertisement);
    sub_100F3A500(v1, type metadata accessor for BeaconIdentifier);

    v9 = v0[1];

    return v9(_swiftEmptyArrayStorage);
  }

  else
  {
    v11 = v0[62];
    if (v11)
    {
      v12 = v11 / 0x60 + 1;
    }

    else
    {
      v12 = 0;
    }

    v13 = swift_task_alloc();
    v0[67] = v13;
    *v13 = v0;
    v13[1] = sub_100F38BAC;
    v14 = v0[5];
    v15 = v0[6];

    return sub_100F114D0(v15, v14, v12);
  }
}

uint64_t sub_100F38A04()
{
  v1 = v0[15];
  v2 = v0[10];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v6 = v0[4];

  v7 = *(v6 + 8);
  v7(v4, v5);
  v7(v3, v5);
  sub_100F3A500(v2, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v1, type metadata accessor for ObservedAdvertisement);
  sub_100F3A500(v0[21], type metadata accessor for BeaconIdentifier);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100F38BAC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[68] = a1;
  v4[69] = a2;
  v4[70] = v2;

  if (v2)
  {
    v5 = sub_100F38F1C;
  }

  else
  {
    v5 = sub_100F38CC8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100F38CC8()
{
  if (v0[69] >> 60 == 15)
  {
    v1 = v0[65];
    v2 = v0[64];
    v16 = v0[21];
    v3 = v0[15];
    v4 = v0[10];
    v6 = v0[5];
    v5 = v0[6];
    v8 = v0[3];
    v7 = v0[4];

    sub_100006654(v2, v1);
    v9 = *(v7 + 8);
    v9(v6, v8);
    v9(v5, v8);
    sub_100F3A500(v4, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    sub_100F3A500(v3, type metadata accessor for ObservedAdvertisement);
    sub_100F3A500(v16, type metadata accessor for BeaconIdentifier);

    v10 = v0[1];

    return v10(_swiftEmptyArrayStorage);
  }

  else
  {
    v12 = swift_task_alloc();
    v0[71] = v12;
    *v12 = v0;
    v12[1] = sub_100F390D8;
    v13 = v0[62];
    v14 = v0[5];
    v15 = v0[6];

    return sub_1006868C4(v15, v14, v13);
  }
}

uint64_t sub_100F38F1C()
{
  v1 = v0[65];
  v2 = v0[64];
  v3 = v0[15];
  v4 = v0[10];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
  v8 = v0[4];

  sub_100006654(v2, v1);
  v9 = *(v8 + 8);
  v9(v6, v7);
  v9(v5, v7);
  sub_100F3A500(v4, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v3, type metadata accessor for ObservedAdvertisement);
  sub_100F3A500(v0[21], type metadata accessor for BeaconIdentifier);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100F390D8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[72] = a1;
  v4[73] = a2;
  v4[74] = v2;

  if (v2)
  {
    v5 = sub_100F395E0;
  }

  else
  {
    v5 = sub_100F391F4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100F391F4()
{
  v1 = v0[73];
  if (v1 >> 60 == 15)
  {
    v2 = v0[69];
    v3 = v0[68];
    v4 = v0[65];
    v5 = v0[64];
    v39 = v0[15];
    v41 = v0[21];
    v37 = v0[10];
    v6 = v0[5];
    v7 = v0[6];
    v8 = v0[3];
    v9 = v0[4];

    sub_100006654(v3, v2);
    sub_100006654(v5, v4);
    v10 = *(v9 + 8);
    v10(v6, v8);
    v10(v7, v8);
    sub_100F3A500(v37, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    sub_100F3A500(v39, type metadata accessor for ObservedAdvertisement);
    sub_100F3A500(v41, type metadata accessor for BeaconIdentifier);
    v42 = _swiftEmptyArrayStorage;
  }

  else
  {
    v11 = v0[72];
    sub_10002E98C(v0[64], v0[65]);
    sub_10002E98C(v11, v1);
    v12 = sub_100A5CBA0(0, 1, 1, _swiftEmptyArrayStorage);
    v14 = *(v12 + 2);
    v13 = *(v12 + 3);
    v15 = v14 + 1;
    if (v14 >= v13 >> 1)
    {
      v12 = sub_100A5CBA0((v13 > 1), v14 + 1, 1, v12);
    }

    v16 = v0[62];
    v17 = &v12[48 * v14];
    v18 = *(v0 + 32);
    v19 = *(v0 + 36);
    *(v12 + 2) = v15;
    v17[32] = 0;
    *(v17 + 5) = v16;
    *(v17 + 3) = v18;
    *(v17 + 4) = v19;
    if (v16)
    {
      v38 = v0[62] / 0x60uLL + 1;
    }

    else
    {
      v38 = 0;
    }

    v20 = *(v12 + 3);
    v40 = v14 + 1;
    v36 = v14 + 2;
    if (v15 >= v20 >> 1)
    {
      v42 = sub_100A5CBA0((v20 > 1), v14 + 2, 1, v12);
    }

    else
    {
      v42 = v12;
    }

    v21 = v0[65];
    v22 = v0[64];
    v34 = v0[21];
    v23 = v0[15];
    v24 = v0[10];
    v25 = v0[5];
    v26 = v0[6];
    v27 = v0[3];
    v28 = v0[4];
    v35 = *(v0 + 36);
    v33 = *(v0 + 34);

    sub_100006654(v22, v21);
    v29 = *(v28 + 8);
    v29(v25, v27);
    v29(v26, v27);
    sub_100F3A500(v24, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    sub_100F3A500(v23, type metadata accessor for ObservedAdvertisement);
    sub_100F3A500(v34, type metadata accessor for BeaconIdentifier);
    *(v42 + 2) = v36;
    v30 = &v42[48 * v40];
    v30[32] = 1;
    *(v30 + 5) = v38;
    *(v30 + 3) = v33;
    *(v30 + 4) = v35;
  }

  v31 = v0[1];

  return v31(v42);
}

uint64_t sub_100F395E0()
{
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[65];
  v4 = v0[64];
  v12 = v0[10];
  v13 = v0[15];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
  v8 = v0[4];

  sub_100006654(v2, v1);
  sub_100006654(v4, v3);
  v9 = *(v8 + 8);
  v9(v6, v7);
  v9(v5, v7);
  sub_100F3A500(v12, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v13, type metadata accessor for ObservedAdvertisement);
  sub_100F3A500(v0[21], type metadata accessor for BeaconIdentifier);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100F397B4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 608) = v1;

  if (v1)
  {
    v5 = sub_100F39A88;
  }

  else
  {
    *(v4 + 616) = a1;
    v5 = sub_100F398DC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100F398DC()
{
  v1 = v0[21];
  v2 = v0[15];
  v3 = v0[10];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[3];
  v7 = v0[4];

  v8 = *(v7 + 8);
  v8(v5, v6);
  v8(v4, v6);
  sub_100F3A500(v3, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v2, type metadata accessor for ObservedAdvertisement);
  sub_100F3A500(v1, type metadata accessor for BeaconIdentifier);
  v11 = v0[77];

  v9 = v0[1];

  return v9(v11);
}

uint64_t sub_100F39A88()
{
  v1 = v0[15];
  v2 = v0[10];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v6 = v0[4];

  v7 = *(v6 + 8);
  v7(v4, v5);
  v7(v3, v5);
  sub_100F3A500(v2, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v1, type metadata accessor for ObservedAdvertisement);
  sub_100F3A500(v0[21], type metadata accessor for BeaconIdentifier);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100F39C30(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 632) = v1;

  if (v1)
  {
    v5 = sub_100F39E90;
  }

  else
  {
    *(v4 + 640) = a1;
    v5 = sub_100F39D58;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100F39D58()
{
  v1 = v0[21];

  sub_100F3A500(v1, type metadata accessor for BeaconIdentifier);
  v4 = v0[80];

  v2 = v0[1];

  return v2(v4);
}

uint64_t sub_100F39E90()
{

  sub_100F3A500(*(v0 + 168), type metadata accessor for BeaconIdentifier);

  v1 = *(v0 + 8);

  return v1();
}

void *sub_100F3A090@<X0>(void *a1@<X8>)
{
  result = sub_100025044();
  *a1 = result;
  return result;
}

uint64_t sub_100F3A0BC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100014650;

  return sub_100F13B7C(a1, a2, v6, v7, v8);
}

uint64_t sub_100F3A180(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_100F3A1C8@<X0>(char **a1@<X8>)
{
  result = sub_100030068();
  *a1 = result;
  return result;
}

uint64_t sub_100F3A1F4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100014744;

  return sub_100F14F3C(a1, a2, v6, v7, v8);
}

uint64_t sub_100F3A2F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100F3A498(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100F3A500(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100F3A560(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016C0F30, &qword_1013F3B18);
  v3 = *(v2 - 8);
  result = __chkstk_darwin(v2);
  v6 = &v8 - v5;
  v7 = *(a1 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_instructionEventCoalescer);
  if (v7)
  {
    v9 = *(v7 + 64);

    sub_1000BC4D4(&qword_1016B1220, &unk_1013F3B20);
    sub_1000041A4(&qword_1016B1228, &qword_1016B1220, &unk_1013F3B20, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher.filter(_:)();

    sub_1000041A4(&qword_1016C0F38, &qword_1016C0F30, &qword_1013F3B18, &protocol conformance descriptor for Publishers.Filter<A>);

    Publisher<>.sink(receiveValue:)();

    (*(v3 + 8))(v6, v2);

    v9 = sub_100A96AF8();

    sub_1000BC4D4(&qword_1016A4980, &qword_1013B1338);
    sub_1000041A4(&qword_1016A4988, &qword_1016A4980, &qword_1013B1338, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher<>.sink(receiveValue:)();

    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100F3A968(uint64_t a1)
{
  v1 = *sub_1000035D0((a1 + 32), *(a1 + 56));

  return _swift_continuation_resume(v1);
}

uint64_t sub_100F3A99C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C328);
  v1 = sub_1000076D4(v0, qword_10177C328);
  if (qword_101694B78 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177B7E0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100F3AA64(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  sub_1000BC4D4(&unk_1016C1200, &qword_1013B6240);
  v3[6] = swift_task_alloc();

  return _swift_task_switch(sub_100F3AB04, 0, 0);
}

uint64_t sub_100F3AB04()
{
  v1 = v0[5];
  v2 = v0[6];
  swift_defaultActor_initialize();
  *(v1 + 144) = _swiftEmptyDictionarySingleton;
  *(v1 + 152) = 0;
  type metadata accessor for CentralManager();
  sub_1000BC4D4(&unk_1016C2250, &unk_1013F6360);
  v3 = type metadata accessor for CentralManager.Options();
  v4 = *(v3 - 8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_101385D80;
  static CentralManager.Options.allowDuplicates.getter();
  v0[2] = v5;
  sub_100F47F3C(&unk_1016C1210, 255, &type metadata accessor for CentralManager.Options, &protocol conformance descriptor for CentralManager.Options);
  sub_1000BC4D4(&unk_1016C2260, &unk_101395BB0);
  sub_1000041A4(&qword_1016C1220, &unk_1016C2260, &unk_101395BB0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 56))(v2, 0, 1, v3);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_100F3AD48;
  v7 = v0[6];

  return CentralManager.__allocating_init(options:)(v7);
}

uint64_t sub_100F3AD48(uint64_t a1)
{
  *(*v1 + 64) = a1;

  return _swift_task_switch(sub_100F3AE48, 0, 0);
}

uint64_t sub_100F3AE48()
{
  v1 = v0[5];
  v2 = v0[3];
  *(v1 + 128) = v0[8];
  *(v1 + 136) = v2;

  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_100F3AEF0;

  return daemon.getter();
}

uint64_t sub_100F3AEF0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 80) = a1;

  v3 = swift_task_alloc();
  *(v2 + 88) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconKeyService();
  v6 = sub_100F47F3C(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100F47F3C(&unk_1016B1090, 255, type metadata accessor for BeaconKeyService, &unk_1013CC4A0);
  *v3 = v9;
  v3[1] = sub_100F3B0D4;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100F3B0D4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = sub_100F3B2B8;
  }

  else
  {
    *(v4 + 104) = a1;
    v5 = sub_100F3B220;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100F3B220()
{
  v2 = v0[4];
  v1 = v0[5];
  *(v1 + 112) = v0[13];
  *(v1 + 120) = v2;
  return _swift_task_switch(sub_100F3B244, v1, 0);
}

uint64_t sub_100F3B244()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 40);

  return v1(v2);
}

uint64_t sub_100F3B2B8()
{

  type metadata accessor for BeaconScanner();
  swift_defaultActor_destroy();

  swift_deallocPartialClassInstance();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100F3B388(char a1)
{
  *(v2 + 24) = v1;
  *(v2 + 232) = a1;
  *(v2 + 32) = *v1;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  *(v2 + 40) = swift_task_alloc();
  v3 = sub_1000BC4D4(&unk_1016C1140, &qword_10138BF70);
  *(v2 + 48) = v3;
  v4 = *(v3 - 8);
  *(v2 + 56) = v4;
  *(v2 + 64) = *(v4 + 64);
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 80) = swift_task_alloc();
  v5 = type metadata accessor for ScanMode();
  *(v2 + 88) = v5;
  *(v2 + 96) = *(v5 - 8);
  *(v2 + 104) = swift_task_alloc();
  v6 = sub_1000BC4D4(&unk_1016C2160, &qword_10138BF78);
  *(v2 + 112) = v6;
  *(v2 + 120) = *(v6 - 8);
  *(v2 + 128) = swift_task_alloc();
  *(v2 + 136) = swift_task_alloc();
  v7 = type metadata accessor for CentralManager.State();
  *(v2 + 144) = v7;
  *(v2 + 152) = *(v7 - 8);
  *(v2 + 160) = swift_task_alloc();

  return _swift_task_switch(sub_100F3B5F8, v1, 0);
}

uint64_t sub_100F3B5F8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = swift_allocObject();
  v0[21] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = sub_100F3B6E4;

  return XPCSession.proxy(errorHandler:)(v0 + 2, sub_100F47F14, v3);
}

uint64_t sub_100F3B6E4()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_100F3B810, v1, 0);
}

uint64_t sub_100F3B810()
{
  v1 = v0[2];
  v0[23] = v1;
  if (v1)
  {
    v3 = v0[19];
    v2 = v0[20];
    v4 = v0[18];
    v0[24] = *(v0[3] + 128);
    (*(v3 + 104))(v2, enum case for CentralManager.State.poweredOn(_:), v4);
    v5 = swift_task_alloc();
    v0[25] = v5;
    v6 = type metadata accessor for CentralManager();
    v7 = sub_100F47F3C(&unk_1016C1160, 255, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
    *v5 = v0;
    v5[1] = sub_100F3BA84;
    v8 = v0[20];

    return CentralManagerProtocol.await(state:)(v8, v6, v7);
  }

  else
  {
    type metadata accessor for BeaconScanner.Error(0);
    sub_100F47F3C(&unk_1016C1150, 255, type metadata accessor for BeaconScanner.Error, &unk_1013F3CA0);
    swift_allocError();
    v10 = v9;
    v11 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
    (*(*(v11 - 8) + 56))(v10, 1, 2, v11);
    swift_willThrow();

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_100F3BA84()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = v2[20];
  v4 = v2[19];
  v5 = v2[18];
  v6 = v2[3];
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = sub_100F3C1F4;
  }

  else
  {
    v7 = sub_100F3BC00;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100F3BC00()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = enum case for ScanUseCase.beaconScan(_:);
  v5 = type metadata accessor for ScanUseCase();
  (*(*(v5 - 8) + 104))(v1, v4, v5);
  (*(v2 + 104))(v1, enum case for ScanMode.useCase(_:), v3);
  v10 = &async function pointer to dispatch thunk of CentralManager.scanForPeripherals(scanMode:garbageCollectInterval:) + async function pointer to dispatch thunk of CentralManager.scanForPeripherals(scanMode:garbageCollectInterval:);
  v6 = swift_task_alloc();
  v0[27] = v6;
  *v6 = v0;
  v6[1] = sub_100F3BD40;
  v7 = v0[17];
  v8 = v0[13];

  return (v10)(v7, v8, 0xD02AB486CEDC0000, 0);
}

uint64_t sub_100F3BD40()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = v2[13];
  v4 = v2[12];
  v5 = v2[11];
  v6 = v2[3];
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = sub_100F3C2B8;
  }

  else
  {
    v7 = sub_100F3BEBC;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100F3BEBC()
{
  v25 = *(v0 + 184);
  v26 = *(v0 + 136);
  v23 = *(v0 + 120);
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v18 = v1;
  v3 = *(v0 + 56);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v20 = *(v0 + 64);
  v6 = *(v0 + 24);
  v24 = *(v0 + 32);
  v22 = *(v0 + 232);
  v21 = *(v0 + 112);
  (*(v23 + 16))(*(v0 + 128));
  type metadata accessor for Peripheral();
  sub_1000041A4(&qword_1016973E0, &unk_1016C2160, &qword_10138BF78, &protocol conformance descriptor for AsyncThrowingStream<A, B>);
  v19 = v2;
  AsyncCompactMapSequence.init(_:transform:)();
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = v4;
  (*(v3 + 16))(v1, v2, v4);
  v10 = sub_100F47F3C(&unk_1016C1170, v9, type metadata accessor for BeaconScanner, &unk_1013F3BF0);
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = (v11 + v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  *(v13 + 24) = v10;
  (*(v3 + 32))(v13 + v11, v18, v8);
  v14 = v13 + ((v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v14 = v6;
  *(v14 + 8) = v22;
  *(v13 + v12) = v25;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = v24;
  swift_retain_n();
  v15 = sub_100A838D4(0, 0, v5, &unk_1013F3C28, v13);
  (*(v3 + 8))(v19, v8);
  (*(v23 + 8))(v26, v21);
  *(v6 + 152) = v15;

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_100F3C1F4()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100F3C2B8()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100F3C37C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  if (qword_101695000 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177C328);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    v11 = _convertErrorToNSError(_:)();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "XPC error: %{public}@!", v9, 0xCu);
    sub_10000B3A8(v10, &qword_10169BB30, &unk_10138B3C0);
  }

  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a2;

  sub_10025EDD4(0, 0, v5, &unk_1013F3C88, v13);
}

uint64_t sub_100F3C5D0()
{
  sub_100F3FD90();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100F3C630(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  *(v2 + 32) = *(a2 + 8);
  return _swift_task_switch(sub_100F3C65C, 0, 0);
}

uint64_t sub_100F3C65C()
{
  if (*(v0 + 32))
  {
    v1 = 0;
  }

  else
  {
  }

  **(v0 + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100F3C6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 24) = a5;
  *(v7 + 32) = a7;
  *(v7 + 352) = a6;
  *(v7 + 16) = a4;
  v9 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  *(v7 + 40) = v9;
  *(v7 + 48) = *(v9 - 8);
  *(v7 + 56) = swift_task_alloc();
  *(v7 + 64) = type metadata accessor for DetailedDiscoveredObject(0);
  *(v7 + 72) = swift_task_alloc();
  sub_1000BC4D4(&unk_1016C1180, &qword_1013F3C30);
  *(v7 + 80) = swift_task_alloc();
  v10 = sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0);
  *(v7 + 88) = v10;
  *(v7 + 96) = *(v10 - 8);
  *(v7 + 104) = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  *(v7 + 112) = swift_task_alloc();
  *(v7 + 120) = swift_task_alloc();
  sub_1000BC4D4(&qword_10169CBD8, &unk_1013996D0);
  *(v7 + 128) = swift_task_alloc();
  sub_1000BC4D4(&unk_1016C1190, &qword_101392FF8);
  *(v7 + 136) = swift_task_alloc();
  v11 = type metadata accessor for DiscoveredObject(0);
  *(v7 + 144) = v11;
  *(v7 + 152) = *(v11 - 8);
  *(v7 + 160) = swift_task_alloc();
  *(v7 + 168) = sub_1000BC4D4(&unk_1016C2160, &qword_10138BF78);
  *(v7 + 176) = swift_task_alloc();
  sub_1000BC4D4(&qword_1016973D0, &qword_10138BF60);
  *(v7 + 184) = swift_task_alloc();
  v12 = sub_1000BC4D4(&unk_1016C11A0, &qword_10138BF68);
  *(v7 + 192) = v12;
  *(v7 + 200) = *(v12 - 8);
  *(v7 + 208) = swift_task_alloc();

  return _swift_task_switch(sub_100F3CA68, a5, 0);
}

uint64_t sub_100F3CA68()
{
  sub_1000BC4D4(&unk_1016C1140, &qword_10138BF70);
  AsyncCompactMapSequence.base.getter();
  sub_1000041A4(&qword_1016973E0, &unk_1016C2160, &qword_10138BF78, &protocol conformance descriptor for AsyncThrowingStream<A, B>);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncCompactMapSequence.transform.getter();
  v0[27] = type metadata accessor for Peripheral();
  AsyncCompactMapSequence.Iterator.init(_:transform:)();
  v2 = sub_100F47F3C(&unk_1016C1170, v1, type metadata accessor for BeaconScanner, &unk_1013F3BF0);
  v0[28] = v2;
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[29] = v4;
  *v4 = v0;
  v4[1] = sub_100F3CC2C;

  return sub_1011EBA70(v3, v2);
}

uint64_t sub_100F3CC2C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 240) = a1;
  *(v4 + 248) = v1;

  v5 = *(v3 + 24);
  if (v1)
  {
    v6 = sub_100F3E30C;
  }

  else
  {
    v6 = sub_100F3CD60;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100F3CD60(uint64_t a1)
{
  if (!v1[30])
  {
LABEL_11:
    (*(v1[25] + 8))(v1[26], v1[24]);
    if (qword_101695000 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_10177C328);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Done scanning", v11, 2u);
    }

    v12 = v1[4];

    v13 = swift_allocObject();
    v1[41] = v13;
    *(v13 + 16) = v12;
    swift_unknownObjectRetain();
    v14 = swift_task_alloc();
    v1[42] = v14;
    *v14 = v1;
    v14[1] = sub_100F3E0E8;

    return withTimeout<A>(_:block:)(v14, 1000000000000000000, 0, &unk_1013F3C40, v13, &type metadata for () + 1);
  }

  if (static Task<>.isCancelled.getter())
  {
    if (qword_101695000 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_10177C328);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Task cancelled!", v5, 2u);
    }

    else
    {
    }

    goto LABEL_11;
  }

  sub_100F47F3C(&unk_1016C11B0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[32] = v7;
  v1[33] = v6;

  return _swift_task_switch(sub_100F3D09C, v7, v6);
}

uint64_t sub_100F3D09C()
{
  v1 = *(v0 + 24);
  *(v0 + 272) = dispatch thunk of Peripheral.advertisementData.getter();

  return _swift_task_switch(sub_100F3D10C, v1, 0);
}

uint64_t sub_100F3D10C()
{
  v22 = v0;
  v1 = v0[34];
  if (v1)
  {
    sub_100695B6C(v1);
    v0[35] = v2;
    v3 = v0[32];
    v4 = v0[33];

    return _swift_task_switch(sub_100F3D3DC, v3, v4);
  }

  else
  {
    if (qword_101695000 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177C328);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[6];
      v9 = v0[7];
      v10 = v0[5];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 136446210;
      v21 = v12;
      Peripheral.id.getter();
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      (*(v8 + 8))(v9, v10);
      v16 = sub_1000136BC(v13, v15, &v21);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v6, v7, "Missing advertisementData for %{public}s!", v11, 0xCu);
      sub_100007BAC(v12);
    }

    else
    {
    }

    v17 = v0[28];
    v18 = v0[3];
    v19 = swift_task_alloc();
    v0[29] = v19;
    *v19 = v0;
    v19[1] = sub_100F3CC2C;

    return sub_1011EBA70(v18, v17);
  }
}

uint64_t sub_100F3D3DC()
{
  v1 = *(v0 + 24);
  *(v0 + 288) = dispatch thunk of Peripheral.rssi.getter();
  *(v0 + 353) = v2;

  return _swift_task_switch(sub_100F3D450, v1, 0);
}

uint64_t sub_100F3D450()
{
  v34 = v0;
  if (*(v0 + 353))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(v0 + 288);
  }

  if (v1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v1 > 0x7FFFFFFF)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = *(v0 + 136);
  sub_1002DEDAC(*(v0 + 280), v1, v4);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_10000B3A8(*(v0 + 136), &unk_1016C1190, &qword_101392FF8);
    if (qword_101695000 == -1)
    {
LABEL_8:
      v5 = type metadata accessor for Logger();
      sub_1000076D4(v5, qword_10177C328);

      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = *(v0 + 48);
        v9 = *(v0 + 56);
        v10 = *(v0 + 40);
        v11 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *v11 = 136446466;
        v33 = v32;
        Peripheral.id.getter();
        sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
        v12 = dispatch thunk of CustomStringConvertible.description.getter();
        v14 = v13;
        (*(v8 + 8))(v9, v10);
        v15 = sub_1000136BC(v12, v14, &v33);

        *(v11 + 4) = v15;
        *(v11 + 12) = 2080;
        sub_1000BC4D4(&qword_1016A0B00, &unk_1013A48B0);
        v16 = Dictionary.description.getter();
        v18 = v17;

        v19 = sub_1000136BC(v16, v18, &v33);

        *(v11 + 14) = v19;
        _os_log_impl(&_mh_execute_header, v6, v7, "Could not parse advertisementData for %{public}s: %s", v11, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v29 = *(v0 + 224);
      v30 = *(v0 + 24);
      v31 = swift_task_alloc();
      *(v0 + 232) = v31;
      *v31 = v0;
      v31[1] = sub_100F3CC2C;

      return sub_1011EBA70(v30, v29);
    }

LABEL_19:
    swift_once();
    goto LABEL_8;
  }

  v20 = *(v0 + 160);
  v21 = *(v0 + 136);
  v22 = *(v0 + 144);

  sub_100F48190(v21, v20, type metadata accessor for DiscoveredObject);
  v23 = (v20 + *(v22 + 36));
  v25 = *v23;
  v24 = v23[1];
  v26 = swift_task_alloc();
  *(v0 + 296) = v26;
  *v26 = v0;
  v26[1] = sub_100F3D8AC;
  v27 = *(v0 + 128);

  return sub_100F404F0(v27, v25, v24);
}

uint64_t sub_100F3D8AC()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_100F3E550;
  }

  else
  {
    v4 = sub_100F3D9D8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100F3D9D8()
{
  if (*(v0 + 352) == 1)
  {
    v1 = *(v0 + 128);
    v2 = type metadata accessor for BeaconDetails(0);
    if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
    {
      v3 = (*(*(v0 + 160) + *(*(v0 + 144) + 44)) >> 4) & 3;
      if (v3 == 2 || v3 == 3)
      {
        v4 = *(v0 + 240);
        v5 = *(v0 + 96);
        v6 = *(v0 + 104);
        v8 = *(v0 + 80);
        v7 = *(v0 + 88);
        type metadata accessor for Service();
        Identifier.init(stringLiteral:)();
        (*(v5 + 56))(v8, 0, 1, v7);
        (*(v5 + 32))(v6, v8, v7);
        v9 = swift_task_alloc();
        *(v0 + 312) = v9;
        *v9 = v0;
        v9[1] = sub_100F3DDB0;
        v11 = *(v0 + 104);
        v10 = *(v0 + 112);

        return sub_100F3ECA8(v10, v4, v11);
      }

      v13 = *(v0 + 80);
      (*(*(v0 + 96) + 56))(v13, 1, 1, *(v0 + 88));
      sub_10000B3A8(v13, &unk_1016C1180, &qword_1013F3C30);
    }
  }

  v14 = *(v0 + 120);
  v15 = type metadata accessor for AccessoryMetadata(0);
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = *(v0 + 160);
  v18 = *(v0 + 120);
  v17 = *(v0 + 128);
  v20 = *(v0 + 64);
  v19 = *(v0 + 72);
  v21 = *(v0 + 32);
  sub_100F481F8(v16, v19, type metadata accessor for DiscoveredObject);
  sub_1000D2A70(v18, v19 + *(v20 + 24), &qword_1016A62A0, &unk_101396E10);
  sub_1000D2A70(v17, v19 + *(v20 + 20), &qword_10169CBD8, &unk_1013996D0);
  v22 = sub_100F48260(v19);
  [v21 discoveredObject:v22];

  sub_100F486D8(v19, type metadata accessor for DetailedDiscoveredObject);
  sub_10000B3A8(v18, &qword_1016A62A0, &unk_101396E10);
  sub_100F486D8(v16, type metadata accessor for DiscoveredObject);
  sub_10000B3A8(v17, &qword_10169CBD8, &unk_1013996D0);
  v23 = *(v0 + 224);
  v24 = *(v0 + 24);
  v25 = swift_task_alloc();
  *(v0 + 232) = v25;
  *v25 = v0;
  v25[1] = sub_100F3CC2C;

  return sub_1011EBA70(v24, v23);
}

uint64_t sub_100F3DDB0()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_100F3E7C4;
  }

  else
  {
    v4 = sub_100F3DEDC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100F3DEDC()
{
  v2 = v0[14];
  v1 = v0[15];
  (*(v0[12] + 8))(v0[13], v0[11]);
  sub_1000D2AD8(v2, v1, &qword_1016A62A0, &unk_101396E10);
  v3 = v0[20];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[4];
  sub_100F481F8(v3, v6, type metadata accessor for DiscoveredObject);
  sub_1000D2A70(v5, v6 + *(v7 + 24), &qword_1016A62A0, &unk_101396E10);
  sub_1000D2A70(v4, v6 + *(v7 + 20), &qword_10169CBD8, &unk_1013996D0);
  v9 = sub_100F48260(v6);
  [v8 discoveredObject:v9];

  sub_100F486D8(v6, type metadata accessor for DetailedDiscoveredObject);
  sub_10000B3A8(v5, &qword_1016A62A0, &unk_101396E10);
  sub_100F486D8(v3, type metadata accessor for DiscoveredObject);
  sub_10000B3A8(v4, &qword_10169CBD8, &unk_1013996D0);
  v10 = v0[28];
  v11 = v0[3];
  v12 = swift_task_alloc();
  v0[29] = v12;
  *v12 = v0;
  v12[1] = sub_100F3CC2C;

  return sub_1011EBA70(v11, v10);
}

uint64_t sub_100F3E0E8()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_100F3EA74;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_100F3E210;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100F3E210()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100F3E30C()
{
  (*(v0[25] + 8))(v0[26], v0[24]);
  if (qword_101695000 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C328);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    v6 = _convertErrorToNSError(_:)();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error during scan: %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_100F3E550()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = v0[20];

  (*(v2 + 8))(v1, v3);
  sub_100F486D8(v4, type metadata accessor for DiscoveredObject);
  if (qword_101695000 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177C328);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = _convertErrorToNSError(_:)();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error during scan: %{public}@", v8, 0xCu);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100F3E7C4()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = v0[20];
  v5 = v0[16];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[11];

  (*(v7 + 8))(v6, v8);
  (*(v2 + 8))(v1, v3);
  sub_100F486D8(v4, type metadata accessor for DiscoveredObject);
  sub_10000B3A8(v5, &qword_10169CBD8, &unk_1013996D0);
  if (qword_101695000 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_10177C328);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138543362;
    v14 = _convertErrorToNSError(_:)();
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&_mh_execute_header, v10, v11, "Error during scan: %{public}@", v12, 0xCu);
    sub_10000B3A8(v13, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_100F3EA74()
{

  if (qword_101695000 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C328);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    v6 = _convertErrorToNSError(_:)();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error during scan: %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100F3ECA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = *v3;
  v4[10] = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v6 = type metadata accessor for BeaconScanner.AISLookupState(0);
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  type metadata accessor for Peripheral();
  sub_100F47F3C(&unk_1016C11B0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100F3EEB8, v8, v7);
}

uint64_t sub_100F3EEB8()
{
  v1 = *(v0 + 64);
  *(v0 + 224) = Peripheral.isConnectable.getter() & 1;

  return _swift_task_switch(sub_100F3EF2C, v1, 0);
}

uint64_t sub_100F3EF2C(uint64_t a1)
{
  if (*(v1 + 224) != 1)
  {
    if (qword_101695000 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_10177C328);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Skipping metadata read since not connectable", v17, 2u);
    }

    v18 = *(v1 + 40);

    v19 = type metadata accessor for AccessoryMetadata(0);
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
    goto LABEL_11;
  }

  v2 = *(v1 + 64);
  Peripheral.id.getter();
  swift_beginAccess();
  v3 = *(v2 + 144);
  if (!*(v3 + 16))
  {
    goto LABEL_15;
  }

  v4 = *(v1 + 128);

  v5 = sub_100772CAC(v4);
  if ((v6 & 1) == 0)
  {

LABEL_15:
    v22 = *(v1 + 64);
    v23 = *(v1 + 72);
    v38 = *(v1 + 48);
    (*(*(v1 + 120) + 8))(*(v1 + 128), *(v1 + 112));
    v25 = sub_100F47F3C(&unk_1016C1170, v24, type metadata accessor for BeaconScanner, &unk_1013F3BF0);
    v26 = swift_task_alloc();
    *(v1 + 200) = v26;
    *(v26 + 16) = v22;
    *(v26 + 24) = v38;
    *(v26 + 40) = v23;
    v27 = swift_task_alloc();
    *(v1 + 208) = v27;
    *v27 = v1;
    v27[1] = sub_100F3F870;
    v28 = *(v1 + 80);
    v29 = *(v1 + 40);
    v30 = sub_100F48738;
    goto LABEL_16;
  }

  v8 = *(v1 + 152);
  v7 = *(v1 + 160);
  v10 = *(v1 + 120);
  v9 = *(v1 + 128);
  v11 = *(v1 + 112);
  sub_100F481F8(*(v3 + 56) + *(*(v1 + 144) + 72) * v5, v7, type metadata accessor for BeaconScanner.AISLookupState);
  (*(v10 + 8))(v9, v11);

  sub_100F481F8(v7, v8, type metadata accessor for BeaconScanner.AISLookupState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *(v1 + 152);
    v13 = *(v1 + 40);
    sub_100F486D8(*(v1 + 160), type metadata accessor for BeaconScanner.AISLookupState);
    sub_1000D2AD8(v12, v13, &qword_1016A62A0, &unk_101396E10);
LABEL_11:

    v20 = *(v1 + 8);

    return v20();
  }

  sub_100F486D8(*(v1 + 152), type metadata accessor for BeaconScanner.AISLookupState);
  if (qword_101695000 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  *(v1 + 168) = sub_1000076D4(v31, qword_10177C328);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "Already pending -- waiting for continuation", v34, 2u);
  }

  v22 = *(v1 + 64);
  v35 = *(v1 + 48);

  v25 = sub_100F47F3C(&unk_1016C1170, v36, type metadata accessor for BeaconScanner, &unk_1013F3BF0);
  v26 = swift_task_alloc();
  *(v1 + 176) = v26;
  *(v26 + 16) = v22;
  *(v26 + 24) = v35;
  v37 = swift_task_alloc();
  *(v1 + 184) = v37;
  *v37 = v1;
  v37[1] = sub_100F3F4D0;
  v29 = *(v1 + 104);
  v28 = *(v1 + 80);
  v30 = sub_100F48744;
LABEL_16:

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v29, v22, v25, 0xD000000000000028, 0x8000000101374740, v30, v26, v28);
}

uint64_t sub_100F3F4D0()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = sub_100F3FA04;
  }

  else
  {
    v4 = sub_100F3F618;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100F3F618()
{
  v18 = v0;
  sub_1000D2A70(v0[13], v0[12], &qword_1016A62A0, &unk_101396E10);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[20];
  v5 = v0[12];
  if (v3)
  {
    v6 = v0[11];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136315138;
    v16 = v4;
    v17 = v8;
    sub_1000D2A70(v5, v6, &qword_1016A62A0, &unk_101396E10);
    v9 = String.init<A>(describing:)();
    v11 = v10;
    sub_10000B3A8(v5, &qword_1016A62A0, &unk_101396E10);
    v12 = sub_1000136BC(v9, v11, &v17);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Continuation for pending resumed -- %s", v7, 0xCu);
    sub_100007BAC(v8);

    v13 = v16;
  }

  else
  {

    sub_10000B3A8(v5, &qword_1016A62A0, &unk_101396E10);
    v13 = v4;
  }

  sub_100F486D8(v13, type metadata accessor for BeaconScanner.AISLookupState);
  sub_1000D2AD8(v0[13], v0[5], &qword_1016A62A0, &unk_101396E10);

  v14 = v0[1];

  return v14();
}

uint64_t sub_100F3F870()
{
  v2 = *v1;
  v2[27] = v0;

  if (v0)
  {
    v3 = v2[8];

    return _swift_task_switch(sub_100F3FAC8, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_100F3FA04()
{
  sub_100F486D8(*(v0 + 160), type metadata accessor for BeaconScanner.AISLookupState);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100F3FAC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100F3FB98()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_100F3FCB0;
  v2 = swift_continuation_init();
  v0[17] = sub_1000BC4D4(&qword_1016A2390, &qword_1013AAC28);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100F3A968;
  v0[13] = &unk_10165C228;
  v0[14] = v2;
  [v1 discoveryFinished:0 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100F3FCB0()
{

  return _swift_task_switch(Database.await(state:), 0, 0);
}

uint64_t sub_100F3FD90()
{
  v1 = v0;
  if (qword_101695000 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C328);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Invalidating scanTask because client session was invalidated", v5, 2u);
  }

  if (*(v1 + 152))
  {

    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    Task.cancel()();
  }

  *(v1 + 152) = 0;
}

id sub_100F3FED8(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_10169CBD8, &unk_1013996D0);
  __chkstk_darwin(v2 - 8);
  v4 = v18 - v3;
  v5 = type metadata accessor for BeaconDetails(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DetailedDiscoveredObject(0);
  sub_1000D2A70(a1 + *(v9 + 20), v4, &qword_10169CBD8, &unk_1013996D0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100F486D8(a1, type metadata accessor for DetailedDiscoveredObject);
    sub_10000B3A8(v4, &qword_10169CBD8, &unk_1013996D0);
    return 0;
  }

  else
  {
    sub_100F48190(v4, v8, type metadata accessor for BeaconDetails);
    v11 = &v8[*(type metadata accessor for BeaconKeyManager.IndexInformation(0) + 20)];
    v12 = *(v11 + 3);
    v13 = *(v11 + 4);
    sub_1000035D0(v11, v12);
    LOBYTE(v12) = sub_10002BD40(v12, v13);
    v14 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v15.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    sub_1000035D0(v11, *(v11 + 3));
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v12)
    {
      v16 = 2;
    }

    else
    {
      v16 = 1;
    }

    v17 = [v14 initWithBeaconIdentifier:v15.super.isa sequence:v16 index:v18[1]];

    sub_100F486D8(a1, type metadata accessor for DetailedDiscoveredObject);
    sub_100F486D8(v8, type metadata accessor for BeaconDetails);
    return v17;
  }
}

id sub_100F40164(uint64_t a1)
{
  v3 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  __chkstk_darwin(v3 - 8);
  v5 = &v31 - v4;
  v6 = type metadata accessor for AccessoryMetadata(0);
  v7 = *(v6 - 1);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DetailedDiscoveredObject(0);
  sub_1000D2A70(a1 + *(v10 + 24), v5, &qword_1016A62A0, &unk_101396E10);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100F486D8(a1, type metadata accessor for DetailedDiscoveredObject);
    sub_10000B3A8(v5, &qword_1016A62A0, &unk_101396E10);
    return 0;
  }

  else
  {
    sub_100F48190(v5, v9, type metadata accessor for AccessoryMetadata);
    v12.super.isa = Data._bridgeToObjectiveC()().super.isa;
    v31 = v1;
    isa = v12.super.isa;

    v13 = String._bridgeToObjectiveC()();

    v14 = String._bridgeToObjectiveC()();

    sub_10098E010();
    v15 = String._bridgeToObjectiveC()();

    if ((v9[v6[10] + 4] & 1) == 0)
    {
      sub_10098E010();
    }

    v16 = String._bridgeToObjectiveC()();

    v17 = v6[13];
    v18 = &v9[v6[12]];
    if (v18[8])
    {
      v19 = 0;
    }

    else
    {
      v19 = *v18;
    }

    v20 = &v9[v17];
    v21 = *&v9[v17];
    if (v20[4])
    {
      v22 = 0;
    }

    else
    {
      v22 = v21;
    }

    v23 = v6[15];
    if (v9[v6[14]] == 4)
    {
      v24 = 0;
    }

    else
    {
      v24 = v9[v6[14]];
    }

    if (v9[v23] == 5)
    {
      v25 = 0;
    }

    else
    {
      v25 = v9[v23];
    }

    v26 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    BYTE5(v30) = v25;
    BYTE4(v30) = v24;
    LODWORD(v30) = v22;
    v27 = isa;
    v28 = v13;
    v29 = [v26 initWithProductData:isa manufacturerName:v13 modelName:v14 firmwareVersion:v15 protocolVersion:v16 accessoryCategory:v19 accessoryCapabilities:v30 batteryType:? batteryState:?];

    sub_100F486D8(a1, type metadata accessor for DetailedDiscoveredObject);
    sub_100F486D8(v9, type metadata accessor for AccessoryMetadata);
    return v29;
  }
}

uint64_t sub_100F404F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[7] = sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v5 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();

  return _swift_task_switch(sub_100F40638, 0, 0);
}

uint64_t sub_100F40638()
{
  v1 = *(*(v0 + 48) + 112);
  *(v0 + 144) = v1;
  return _swift_task_switch(sub_100F4065C, v1, 0);
}

uint64_t sub_100F4065C(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 144) + 136);
  *(v3 + 152) = v4;
  if (v4)
  {
    a1 = sub_100F40688;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(a1, v4, a3);
}

uint64_t sub_100F40688()
{
  v1 = v0[19];
  v3 = v0[4];
  v2 = v0[5];
  v4 = sub_1000BC4D4(&qword_10169C980, &qword_1013C4A70);
  v5 = sub_100F47F3C(&unk_1016C1130, 255, type metadata accessor for BeaconKeyServiceBuilder, &unk_1013BFC14);
  v6 = swift_task_alloc();
  v0[20] = v6;
  v6[2] = v1;
  v6[3] = v3;
  v6[4] = v2;
  v7 = swift_task_alloc();
  v0[21] = v7;
  *v7 = v0;
  v7[1] = sub_100F407D8;
  v8 = v0[19];
  v9 = v0[7];

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 2, v9, v4, v8, v5, &unk_1013C4A78, v6, v9);
}

uint64_t sub_100F407D8()
{
  v1 = *v0;

  v2 = *(v1 + 152);

  return _swift_task_switch(sub_100F4090C, v2, 0);
}

uint64_t sub_100F40930()
{
  v1 = v0[22];
  if (*(v1 + 16))
  {
    v2 = v0[16];
    v3 = v0[17];
    v4 = v0[3];
    v5 = *(v0[13] + 80);
    sub_100F481F8(v1 + ((v5 + 32) & ~v5), v2, type metadata accessor for BeaconKeyManager.IndexInformation);

    sub_100F48190(v2, v3, type metadata accessor for BeaconKeyManager.IndexInformation);
    sub_100F48190(v3, v4, type metadata accessor for BeaconKeyManager.IndexInformation);
    v6 = v0[3];
    v7 = type metadata accessor for BeaconDetails(0);
    (*(*(v7 - 8) + 56))(v6, 0, 1, v7);

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[5];

    v11 = v0[5];
    v12 = v0[6];
    v13 = v0[4];
    if ((v10 & 0x2000000000000000) != 0)
    {
      v14 = swift_allocObject();
      v0[23] = v14;
      v14[2] = v12;
      v14[3] = v13;
      v14[4] = v11 & 0xDFFFFFFFFFFFFFFFLL;

      sub_100029784(v13, v11);
      v19 = swift_task_alloc();
      v0[24] = v19;
      *v19 = v0;
      v19[1] = sub_100F40C4C;
      v16 = v0[9];
      v17 = v0[7];
      v18 = sub_100F416C8;
    }

    else
    {
      v14 = swift_allocObject();
      v0[25] = v14;
      v14[2] = v12;
      v14[3] = v13;
      v14[4] = v11;

      sub_100029784(v13, v11);
      v15 = swift_task_alloc();
      v0[26] = v15;
      *v15 = v0;
      v15[1] = sub_100F40F1C;
      v16 = v0[11];
      v17 = v0[7];
      v18 = sub_100F416D4;
    }

    return unsafeBlocking<A>(_:)(v16, v18, v14, v17);
  }
}

uint64_t sub_100F40C4C()
{

  return _swift_task_switch(sub_100F40D64, 0, 0);
}

uint64_t sub_100F40D64()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[8];
  sub_1000D2AD8(v0[9], v3, &unk_1016C1120, &qword_1013C49D0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v0[8], &unk_1016C1120, &qword_1013C49D0);
    v4 = 1;
  }

  else
  {
    v5 = v0[14];
    v6 = v0[3];
    sub_100F48190(v0[8], v5, type metadata accessor for BeaconKeyManager.IndexInformation);
    sub_100F48190(v5, v6, type metadata accessor for BeaconKeyManager.IndexInformation);
    v4 = 0;
  }

  v7 = v0[3];
  v8 = type metadata accessor for BeaconDetails(0);
  (*(*(v8 - 8) + 56))(v7, v4, 1, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100F40F1C()
{

  return _swift_task_switch(sub_100F41034, 0, 0);
}

uint64_t sub_100F41034()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[10];
  sub_1000D2AD8(v0[11], v3, &unk_1016C1120, &qword_1013C49D0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v0[10], &unk_1016C1120, &qword_1013C49D0);
    v4 = 1;
  }

  else
  {
    v5 = v0[15];
    v6 = v0[3];
    sub_100F48190(v0[10], v5, type metadata accessor for BeaconKeyManager.IndexInformation);
    sub_100F48190(v5, v6, type metadata accessor for BeaconKeyManager.IndexInformation);
    v4 = 0;
  }

  v7 = v0[3];
  v8 = type metadata accessor for BeaconDetails(0);
  (*(*(v8 - 8) + 56))(v7, v4, 1, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100F411EC@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = sub_1012DD334(a1, a2, v8);
  v11 = v10[2];
  if (v11)
  {
    v12 = v11 - 1;
    v13 = v10;
    v14 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
    v15 = *(v14 - 8);
    sub_100F481F8(v13 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v12, a3, type metadata accessor for BeaconKeyManager.IndexInformation);

    sub_10000B3A8(v8, &qword_1016980D0, &unk_10138F3B0);
    return (*(v15 + 56))(a3, 0, 1, v14);
  }

  else
  {

    sub_10000B3A8(v8, &qword_1016980D0, &unk_10138F3B0);
    v17 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
    return (*(*(v17 - 8) + 56))(a3, 1, 1, v17);
  }
}

uint64_t sub_100F413FC@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = sub_1012DCA30(a1, a2);
  if (v4[2])
  {
    v5 = v4;
    v6 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
    v13 = *(v6 - 8);
    sub_100F481F8(v5 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), a3, type metadata accessor for BeaconKeyManager.IndexInformation);

    v7 = *(v13 + 56);
    v8 = a3;
    v9 = 0;
    v10 = v6;
  }

  else
  {

    v11 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
    v7 = *(*(v11 - 8) + 56);
    v10 = v11;
    v8 = a3;
    v9 = 1;
  }

  return v7(v8, v9, 1, v10);
}

uint64_t sub_100F4151C()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

void sub_100F415C0(uint64_t a1)
{
  sub_100F41664(319);
  if (v1 <= 0x3F)
  {
    sub_100F48B20(319, &unk_1016C10F0, type metadata accessor for AccessoryMetadata, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100F41664(uint64_t a1)
{
  if (!qword_1016C10E0)
  {
    sub_1000BC580(&qword_1016B3CC0, &qword_1013D4A40);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_1016C10E0);
    }
  }
}

uint64_t sub_100F416E0(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  Peripheral.id.getter();
  sub_100F417CC(a1, v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100F417CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v55 = a1;
  v56 = sub_1000BC4D4(&qword_1016B3CC0, &qword_1013D4A40);
  v50 = *(v56 - 8);
  __chkstk_darwin(v56);
  v49 = &v47 - v5;
  v6 = type metadata accessor for BeaconScanner.AISLookupState(0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v48 = (&v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __chkstk_darwin(v8);
  v12 = &v47 - v11;
  __chkstk_darwin(v10);
  v53 = &v47 - v13;
  v14 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v54 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v47 - v15;
  v17 = sub_1000BC4D4(&qword_101699890, &qword_101392010);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v47 - v21;
  swift_beginAccess();
  v23 = *(v2 + 144);
  v24 = *(v23 + 16);
  v51 = v14;
  v52 = v7;
  if (v24)
  {

    v25 = sub_100772CAC(a2);
    if (v26)
    {
      sub_100F481F8(*(v23 + 56) + *(v7 + 72) * v25, v22, type metadata accessor for BeaconScanner.AISLookupState);

      v27 = *(v7 + 56);
      v27(v22, 0, 1, v6);
      sub_10000B3A8(v22, &qword_101699890, &qword_101392010);
      goto LABEL_6;
    }

    v14 = v51;
  }

  v27 = *(v7 + 56);
  v27(v22, 1, 1, v6);
  sub_10000B3A8(v22, &qword_101699890, &qword_101392010);
  (*(v54 + 16))(v16, a2, v14);
  *v20 = _swiftEmptyArrayStorage;
  swift_storeEnumTagMultiPayload();
  v27(v20, 0, 1, v6);
  swift_beginAccess();
  sub_1001E1824(v20, v16);
  swift_endAccess();
LABEL_6:
  v28 = *(v3 + 144);
  if (!*(v28 + 16))
  {
LABEL_11:
    if (qword_101695000 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_1000076D4(v34, qword_10177C328);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Expected to be in .pending state!", v37, 2u);
    }

    type metadata accessor for BeaconScanner.Error(0);
    sub_100F47F3C(&unk_1016C1150, 255, type metadata accessor for BeaconScanner.Error, &unk_1013F3CA0);
    v38 = swift_allocError();
    v40 = v39;
    v41 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
    (*(*(v41 - 8) + 56))(v40, 1, 2, v41);
    v57 = v38;
    return CheckedContinuation.resume(throwing:)();
  }

  v29 = sub_100772CAC(a2);
  if ((v30 & 1) == 0)
  {

    goto LABEL_11;
  }

  v31 = a2;
  sub_100F481F8(*(v28 + 56) + *(v52 + 72) * v29, v12, type metadata accessor for BeaconScanner.AISLookupState);

  v32 = v53;
  sub_100F48190(v12, v53, type metadata accessor for BeaconScanner.AISLookupState);
  v33 = v48;
  sub_100F481F8(v32, v48, type metadata accessor for BeaconScanner.AISLookupState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100F486D8(v32, type metadata accessor for BeaconScanner.AISLookupState);
    sub_100F486D8(v33, type metadata accessor for BeaconScanner.AISLookupState);
    goto LABEL_11;
  }

  v43 = *v33;
  v44 = v56;
  (*(v50 + 16))(v49, v55, v56);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v43 = sub_100A5ED8C(0, v43[2] + 1, 1, v43);
  }

  v46 = v43[2];
  v45 = v43[3];
  if (v46 >= v45 >> 1)
  {
    v43 = sub_100A5ED8C((v45 > 1), v46 + 1, 1, v43);
  }

  v43[2] = v46 + 1;
  (*(v50 + 32))(v43 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v46, v49, v44);
  (*(v54 + 16))(v16, v31, v51);
  *v20 = v43;
  swift_storeEnumTagMultiPayload();
  v27(v20, 0, 1, v6);
  swift_beginAccess();
  sub_1001E1824(v20, v16);
  swift_endAccess();
  return sub_100F486D8(v53, type metadata accessor for BeaconScanner.AISLookupState);
}

uint64_t sub_100F41F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a4;
  v28 = a5;
  v25 = a3;
  v26 = a1;
  v6 = sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v25 - v9;
  v11 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v11 - 8);
  v13 = &v25 - v12;
  v14 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v25 - v16;
  Peripheral.id.getter();
  sub_100F417CC(v26, v17);
  (*(v15 + 8))(v17, v14);
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
  (*(v7 + 16))(v10, v27, v6);
  v20 = sub_100F47F3C(&unk_1016C1170, v19, type metadata accessor for BeaconScanner, &unk_1013F3BF0);
  v21 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = a2;
  *(v22 + 3) = v20;
  v23 = v25;
  *(v22 + 4) = a2;
  *(v22 + 5) = v23;
  (*(v7 + 32))(&v22[v21], v10, v6);
  *&v22[(v8 + v21 + 7) & 0xFFFFFFFFFFFFFFF8] = v28;
  swift_retain_n();

  sub_10025EDD4(0, 0, v13, &unk_1013F3C58, v22);
}

uint64_t sub_100F42288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[15] = a6;
  v7[16] = a7;
  v7[13] = a4;
  v7[14] = a5;
  v9 = type metadata accessor for TimeoutError();
  v7[17] = v9;
  v7[18] = *(v9 - 8);
  v7[19] = swift_task_alloc();
  v10 = sub_1000BC4D4(&qword_1016B3CC0, &qword_1013D4A40);
  v7[20] = v10;
  v7[21] = *(v10 - 8);
  v7[22] = swift_task_alloc();
  sub_1000BC4D4(&qword_101699890, &qword_101392010);
  v7[23] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v7[24] = swift_task_alloc();
  v11 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v7[25] = v11;
  v7[26] = *(v11 - 8);
  v7[27] = swift_task_alloc();
  v7[28] = swift_task_alloc();
  v12 = type metadata accessor for BeaconScanner.AISLookupState(0);
  v7[29] = v12;
  v7[30] = *(v12 - 8);
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();
  v13 = sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0);
  v7[33] = v13;
  v14 = *(v13 - 8);
  v7[34] = v14;
  v7[35] = *(v14 + 64);
  v7[36] = swift_task_alloc();
  v7[37] = sub_1000BC4D4(&unk_1016C11C0, &qword_1013F3C60);
  v7[38] = swift_task_alloc();
  v7[39] = swift_task_alloc();
  v7[40] = swift_task_alloc();
  v7[41] = swift_task_alloc();

  return _swift_task_switch(sub_100F425D4, a4, 0);
}

uint64_t sub_100F425D4()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[33];
  v4 = v0[34];
  v5 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  (*(v4 + 16))(v1, v0[15], v3);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = (v2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  v0[42] = v10;
  *(v10 + 16) = v7;
  *(v10 + 24) = v6;
  (*(v4 + 32))(v10 + v8, v1, v3);
  *(v10 + v9) = v5;

  v11 = swift_task_alloc();
  v0[43] = v11;
  *v11 = v0;
  v11[1] = sub_100F42750;
  v12 = v0[40];
  v13 = v0[37];

  return withTimeout<A>(_:block:)(v12, 0xA055690D9DB80000, 1, &unk_1013F3C70, v10, v13);
}

uint64_t sub_100F42750()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = sub_100F43084;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_100F42878;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100F42878()
{
  v62 = v0;
  sub_1000D2AD8(v0[40], v0[41], &unk_1016C11C0, &qword_1013F3C60);
  v1 = v0[13];
  Peripheral.id.getter();
  swift_beginAccess();
  v2 = *(v1 + 144);
  if (!*(v2 + 16))
  {
    goto LABEL_6;
  }

  v3 = v0[28];

  v4 = sub_100772CAC(v3);
  if ((v5 & 1) == 0)
  {

LABEL_6:
    (*(v0[26] + 8))(v0[28], v0[25]);
    goto LABEL_7;
  }

  v7 = v0[31];
  v6 = v0[32];
  v8 = v0[28];
  v9 = v0[25];
  v10 = v0[26];
  sub_100F481F8(*(v2 + 56) + *(v0[30] + 72) * v4, v6, type metadata accessor for BeaconScanner.AISLookupState);
  v11 = v9;
  v12 = *(v10 + 8);
  v12(v8, v11);

  sub_100F481F8(v6, v7, type metadata accessor for BeaconScanner.AISLookupState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = v0[31];
    sub_100F486D8(v0[32], type metadata accessor for BeaconScanner.AISLookupState);
    sub_100F486D8(v13, type metadata accessor for BeaconScanner.AISLookupState);
LABEL_7:
    if (qword_101695000 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_10177C328);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Expected to be in pending state", v17, 2u);
    }

    goto LABEL_12;
  }

  v20 = *v0[31];
  sub_1000D2A70(v0[41], v0[39], &unk_1016C11C0, &qword_1013F3C60);
  v60 = v20;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_101695000 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000076D4(v21, qword_10177C328);

    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = v0[27];
      v25 = v0[25];
      v59 = v23;
      v26 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v61 = v58;
      *v26 = 136315394;
      Peripheral.id.getter();
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      v12(v24, v25);
      v30 = sub_1000136BC(v27, v29, &v61);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2112;
      swift_errorRetain();
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 14) = v31;
      *v57 = v31;
      _os_log_impl(&_mh_execute_header, v22, v59, "Failure reading metadata for %s: %@", v26, 0x16u);
      sub_10000B3A8(v57, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v58);
    }

    v32 = v0[29];
    v33 = v0[30];
    v34 = v0[27];
    v35 = v0[23];
    Peripheral.id.getter();
    v36 = type metadata accessor for AccessoryMetadata(0);
    (*(*(v36 - 8) + 56))(v35, 1, 1, v36);
    swift_storeEnumTagMultiPayload();
    (*(v33 + 56))(v35, 0, 1, v32);
    swift_beginAccess();
    sub_1001E1824(v35, v34);
    swift_endAccess();
  }

  else
  {
    v37 = v0[29];
    v38 = v0[30];
    v39 = v0[27];
    v41 = v0[23];
    v40 = v0[24];
    sub_1000D2AD8(v0[39], v40, &qword_1016A62A0, &unk_101396E10);
    Peripheral.id.getter();
    sub_1000D2A70(v40, v41, &qword_1016A62A0, &unk_101396E10);
    swift_storeEnumTagMultiPayload();
    (*(v38 + 56))(v41, 0, 1, v37);
    swift_beginAccess();
    sub_1001E1824(v41, v39);
    swift_endAccess();
    sub_10000B3A8(v40, &qword_1016A62A0, &unk_101396E10);
  }

  v42 = *(v60 + 16);
  if (v42)
  {
    v43 = v0[21];
    v45 = *(v43 + 16);
    v43 += 16;
    v44 = v45;
    v46 = v60 + ((*(v43 + 64) + 32) & ~*(v43 + 64));
    v47 = (v43 - 8);
    v48 = *(v43 + 56);
    do
    {
      v51 = v0[41];
      v52 = v0[38];
      v44(v0[22], v46, v0[20]);
      sub_1000D2A70(v51, v52, &unk_1016C11C0, &qword_1013F3C60);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v54 = v0[38];
      if (EnumCaseMultiPayload == 1)
      {
        v49 = v0[22];
        v50 = v0[20];
        v0[12] = *v54;
        CheckedContinuation.resume(throwing:)();
        (*v47)(v49, v50);
      }

      else
      {
        v55 = v0[22];
        v56 = v0[20];
        sub_1000D2AD8(v54, v0[24], &qword_1016A62A0, &unk_101396E10);
        CheckedContinuation.resume(returning:)();
        (*v47)(v55, v56);
      }

      v46 += v48;
      --v42;
    }

    while (v42);
  }

  sub_100F486D8(v0[32], type metadata accessor for BeaconScanner.AISLookupState);
LABEL_12:
  sub_10000B3A8(v0[41], &unk_1016C11C0, &qword_1013F3C60);

  v18 = v0[1];

  return v18();
}

uint64_t sub_100F43084()
{
  v99 = v0;
  v1 = v0[44];

  v0[11] = v1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v2 = &qword_101695000;
  if (swift_dynamicCast())
  {

    if (qword_101695000 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177C328);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = v0[26];
      v6 = v0[27];
      v8 = v0[25];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v98 = v10;
      *v9 = 136446210;
      Peripheral.id.getter();
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      v13 = v12;
      (*(v7 + 8))(v6, v8);
      v14 = sub_1000136BC(v11, v13, &v98);
      v2 = &qword_101695000;

      *(v9 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v4, v5, "Timeout reading metadata for %{public}s!", v9, 0xCu);
      sub_100007BAC(v10);
    }

    v15 = v0[41];
    v17 = v0[18];
    v16 = v0[19];
    v18 = v0[17];
    v19 = type metadata accessor for AccessoryMetadata(0);
    (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
    swift_storeEnumTagMultiPayload();
    (*(v17 + 8))(v16, v18);
  }

  else
  {

    if (qword_101695000 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_10177C328);

    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v24 = v0[26];
      v23 = v0[27];
      v25 = v0[25];
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v98 = v96;
      *v26 = 136446466;
      Peripheral.id.getter();
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      (*(v24 + 8))(v23, v25);
      v2 = &qword_101695000;
      v31 = sub_1000136BC(v28, v30, &v98);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2114;
      v32 = _convertErrorToNSError(_:)();
      *(v26 + 14) = v32;
      *v27 = v32;
      _os_log_impl(&_mh_execute_header, v21, v22, "Error reading metadata for %{public}s: %{public}@", v26, 0x16u);
      sub_10000B3A8(v27, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v96);
    }

    else
    {
    }

    v33 = v0[41];
    v34 = type metadata accessor for AccessoryMetadata(0);
    (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
    swift_storeEnumTagMultiPayload();
  }

  v35 = v0[13];
  Peripheral.id.getter();
  swift_beginAccess();
  v36 = *(v35 + 144);
  if (!*(v36 + 16))
  {
    goto LABEL_18;
  }

  v37 = v0[28];

  v38 = sub_100772CAC(v37);
  if ((v39 & 1) == 0)
  {

LABEL_18:
    (*(v0[26] + 8))(v0[28], v0[25]);
    goto LABEL_19;
  }

  v41 = v0[31];
  v40 = v0[32];
  v42 = v0[28];
  v43 = v0[25];
  v44 = v0[26];
  sub_100F481F8(*(v36 + 56) + *(v0[30] + 72) * v38, v40, type metadata accessor for BeaconScanner.AISLookupState);
  v45 = v43;
  v46 = *(v44 + 8);
  v46(v42, v45);

  sub_100F481F8(v40, v41, type metadata accessor for BeaconScanner.AISLookupState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v54 = *v0[31];
    sub_1000D2A70(v0[41], v0[39], &unk_1016C11C0, &qword_1013F3C60);
    v97 = v54;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (qword_101695000 != -1)
      {
        swift_once();
      }

      v55 = type metadata accessor for Logger();
      sub_1000076D4(v55, qword_10177C328);

      swift_errorRetain();
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = v0[27];
        v59 = v0[25];
        v95 = v57;
        v60 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v98 = v94;
        *v60 = 136315394;
        Peripheral.id.getter();
        sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
        v61 = dispatch thunk of CustomStringConvertible.description.getter();
        v63 = v62;
        v46(v58, v59);
        v64 = sub_1000136BC(v61, v63, &v98);

        *(v60 + 4) = v64;
        *(v60 + 12) = 2112;
        swift_errorRetain();
        v65 = _swift_stdlib_bridgeErrorToNSError();
        *(v60 + 14) = v65;
        *v93 = v65;
        _os_log_impl(&_mh_execute_header, v56, v95, "Failure reading metadata for %s: %@", v60, 0x16u);
        sub_10000B3A8(v93, &qword_10169BB30, &unk_10138B3C0);

        sub_100007BAC(v94);
      }

      v66 = v0[29];
      v67 = v0[30];
      v68 = v0[27];
      v69 = v0[23];
      Peripheral.id.getter();
      v70 = type metadata accessor for AccessoryMetadata(0);
      (*(*(v70 - 8) + 56))(v69, 1, 1, v70);
      swift_storeEnumTagMultiPayload();
      (*(v67 + 56))(v69, 0, 1, v66);
      swift_beginAccess();
      sub_1001E1824(v69, v68);
      swift_endAccess();

      v71 = v97;
      v72 = *(v97 + 16);
      if (!v72)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v88 = v0[29];
      v87 = v0[30];
      v89 = v0[27];
      v91 = v0[23];
      v90 = v0[24];
      sub_1000D2AD8(v0[39], v90, &qword_1016A62A0, &unk_101396E10);
      Peripheral.id.getter();
      sub_1000D2A70(v90, v91, &qword_1016A62A0, &unk_101396E10);
      swift_storeEnumTagMultiPayload();
      v92 = v88;
      v71 = v97;
      (*(v87 + 56))(v91, 0, 1, v92);
      swift_beginAccess();
      sub_1001E1824(v91, v89);
      swift_endAccess();
      sub_10000B3A8(v90, &qword_1016A62A0, &unk_101396E10);
      v72 = *(v97 + 16);
      if (!v72)
      {
LABEL_40:

        sub_100F486D8(v0[32], type metadata accessor for BeaconScanner.AISLookupState);
        goto LABEL_24;
      }
    }

    v73 = v0[21];
    v75 = *(v73 + 16);
    v73 += 16;
    v74 = v75;
    v76 = v71 + ((*(v73 + 64) + 32) & ~*(v73 + 64));
    v77 = (v73 - 8);
    v78 = *(v73 + 56);
    do
    {
      v81 = v0[41];
      v82 = v0[38];
      v74(v0[22], v76, v0[20]);
      sub_1000D2A70(v81, v82, &unk_1016C11C0, &qword_1013F3C60);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v84 = v0[38];
      if (EnumCaseMultiPayload == 1)
      {
        v79 = v0[22];
        v80 = v0[20];
        v0[12] = *v84;
        CheckedContinuation.resume(throwing:)();
        (*v77)(v79, v80);
      }

      else
      {
        v85 = v0[22];
        v86 = v0[20];
        sub_1000D2AD8(v84, v0[24], &qword_1016A62A0, &unk_101396E10);
        CheckedContinuation.resume(returning:)();
        (*v77)(v85, v86);
      }

      v76 += v78;
      --v72;
    }

    while (v72);
    goto LABEL_40;
  }

  v47 = v0[31];
  sub_100F486D8(v0[32], type metadata accessor for BeaconScanner.AISLookupState);
  sub_100F486D8(v47, type metadata accessor for BeaconScanner.AISLookupState);
  v2 = &qword_101695000;
LABEL_19:
  if (*v2 != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  sub_1000076D4(v48, qword_10177C328);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v49, v50, "Expected to be in pending state", v51, 2u);
  }

LABEL_24:
  sub_10000B3A8(v0[41], &unk_1016C11C0, &qword_1013F3C60);

  v52 = v0[1];

  return v52();
}

uint64_t sub_100F43DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a3;
  v7 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v4[4] = v7;
  v4[5] = *(v7 - 8);
  v4[6] = swift_task_alloc();
  v8 = type metadata accessor for AccessoryMetadata(0);
  v4[7] = v8;
  v4[8] = *(v8 - 8);
  v4[9] = swift_task_alloc();
  v9 = swift_task_alloc();
  v4[10] = v9;
  v10 = swift_task_alloc();
  v4[11] = v10;
  *v10 = v4;
  v10[1] = sub_100F43F40;

  return sub_100F44414(v9, a3, a4);
}

uint64_t sub_100F43F40()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_100F4439C;
  }

  else
  {
    v2 = sub_100F44054;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100F44054()
{
  v26 = v0;
  if (qword_101695000 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[10];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177C328);
  sub_100F481F8(v2, v1, type metadata accessor for AccessoryMetadata);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = v0[5];
    v9 = v0[6];
    v10 = v0[4];
    v11 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v11 = 136315394;
    Peripheral.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v8 + 8))(v9, v10);
    v15 = sub_1000136BC(v12, v14, &v25);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    v16 = sub_100230E34();
    v18 = v17;
    sub_100F486D8(v7, type metadata accessor for AccessoryMetadata);
    v19 = sub_1000136BC(v16, v18, &v25);

    *(v11 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v4, v5, "Read metadata for %s: %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100F486D8(v7, type metadata accessor for AccessoryMetadata);
  }

  v20 = v0[7];
  v21 = v0[8];
  v22 = v0[2];
  sub_100F48190(v0[10], v22, type metadata accessor for AccessoryMetadata);
  (*(v21 + 56))(v22, 0, 1, v20);
  sub_1000BC4D4(&unk_1016C11C0, &qword_1013F3C60);
  swift_storeEnumTagMultiPayload();

  v23 = v0[1];

  return v23();
}

uint64_t sub_100F4439C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100F44414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v5 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  v6 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v4[21] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v4[22] = v7;
  v4[23] = *(v7 - 8);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v8 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v4[27] = v8;
  v4[28] = *(v8 - 8);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v9 = type metadata accessor for ContinuousClock.Instant();
  v4[33] = v9;
  v4[34] = *(v9 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v10 = type metadata accessor for ContinuousClock();
  v4[39] = v10;
  v4[40] = *(v10 - 8);
  v4[41] = swift_task_alloc();

  return _swift_task_switch(sub_100F44728, v3, 0);
}

uint64_t sub_100F44728(uint64_t a1)
{
  ContinuousClock.init()();
  static Task<>.checkCancellation()();
  ContinuousClock.now.getter();
  v4 = (&async function pointer to dispatch thunk of Peripheral.connect() + async function pointer to dispatch thunk of Peripheral.connect());
  v2 = swift_task_alloc();
  *(v1 + 336) = v2;
  *v2 = v1;
  v2[1] = sub_100F44848;

  return v4();
}

uint64_t sub_100F44848()
{
  v2 = *v1;
  v2[43] = v0;

  if (v0)
  {
    v3 = v2[15];

    return _swift_task_switch(sub_100F47108, v3, 0);
  }

  else
  {
    v7 = (&async function pointer to dispatch thunk of Peripheral.subscript.getter + async function pointer to dispatch thunk of Peripheral.subscript.getter);
    v4 = swift_task_alloc();
    v2[44] = v4;
    *v4 = v2;
    v4[1] = sub_100F449D4;
    v5 = v2[14];

    return v7(v5);
  }
}

uint64_t sub_100F449D4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 360) = a1;
  *(v4 + 368) = v1;

  v5 = *(v3 + 120);
  if (v1)
  {
    v6 = sub_100F471CC;
  }

  else
  {
    v6 = sub_100F44B08;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100F44B08(uint64_t a1)
{
  v2 = v1[46];
  static Task<>.checkCancellation()();
  if (v2)
  {
    (*(v1[34] + 8))(v1[38], v1[33]);

    v1[84] = v2;
    v12 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
    v3 = swift_task_alloc();
    v1[85] = v3;
    *v3 = v1;
    v3[1] = sub_100F46E98;

    return v12();
  }

  else
  {
    v5 = v1[28];
    sub_101123C58(0, 11, 0);
    type metadata accessor for Characteristic();
    for (i = 0; i != 11; ++i)
    {
      Identifier.init(stringLiteral:)();
      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      if (v8 >= v7 >> 1)
      {
        sub_101123C58((v7 > 1), v8 + 1, 1);
      }

      v1[47] = _swiftEmptyArrayStorage;
      v9 = v1[32];
      v10 = v1[27];
      _swiftEmptyArrayStorage[2] = v8 + 1;
      (*(v5 + 32))(_swiftEmptyArrayStorage + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v8, v9, v10);
    }

    v13 = (&async function pointer to dispatch thunk of Service.discover(characteristicIdentifiers:) + async function pointer to dispatch thunk of Service.discover(characteristicIdentifiers:));
    v11 = swift_task_alloc();
    v1[48] = v11;
    *v11 = v1;
    v11[1] = sub_100F44E6C;

    return v13(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100F44E6C()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  v3 = *(v2 + 120);
  if (v0)
  {

    v4 = sub_100F47290;
  }

  else
  {

    v4 = sub_100F44FD4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100F44FD4(uint64_t a1)
{
  v2 = v1[49];
  static Task<>.checkCancellation()();
  if (v2)
  {
    (*(v1[34] + 8))(v1[38], v1[33]);

    v1[84] = v2;
    v7 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
    v3 = swift_task_alloc();
    v1[85] = v3;
    *v3 = v1;
    v3[1] = sub_100F46E98;

    return v7();
  }

  else
  {
    v1[50] = type metadata accessor for Characteristic();
    Identifier.init(stringLiteral:)();
    v8 = (&async function pointer to dispatch thunk of Service.subscript.getter + async function pointer to dispatch thunk of Service.subscript.getter);
    v5 = swift_task_alloc();
    v1[51] = v5;
    *v5 = v1;
    v5[1] = sub_100F45168;
    v6 = v1[31];

    return v8(v6);
  }
}

uint64_t sub_100F45168(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[52] = a1;
  v3[53] = v1;

  v5 = v3[31];
  v6 = v3[28];
  v7 = v3[27];
  if (v1)
  {
    v8 = v3[15];
    (*(v6 + 8))(v5, v7);

    return _swift_task_switch(sub_100F4736C, v8, 0);
  }

  else
  {
    v9 = *(v6 + 8);
    v3[54] = v9;
    v3[55] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v5, v7);
    v13 = (&async function pointer to dispatch thunk of Characteristic.read() + async function pointer to dispatch thunk of Characteristic.read());
    v10 = swift_task_alloc();
    v3[56] = v10;
    *v10 = v4;
    v10[1] = sub_100F45374;
    v11 = v3[26];

    return v13(v11);
  }
}

uint64_t sub_100F45374()
{
  v2 = *v1;
  v2[57] = v0;

  if (v0)
  {
    v3 = v2[15];

    return _swift_task_switch(sub_100F47448, v3, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    v2[58] = v4;
    v5 = sub_1000041A4(&qword_1016C11D0, &qword_1016973C8, &qword_1013B6210, &protocol conformance descriptor for AsyncThrowingStream<A, B>);
    v2[59] = v5;
    *v4 = v2;
    v4[1] = sub_100F45548;
    v6 = v2[22];

    return AsyncSequence.first()(v2 + 2, v6, v5);
  }
}

uint64_t sub_100F45548()
{
  v2 = *v1;
  v2[60] = v0;

  v3 = v2[26];
  v4 = v2[23];
  v5 = v2[22];
  v6 = v2[15];
  v9 = *(v4 + 8);
  v7 = v4 + 8;
  v8 = v9;
  if (v0)
  {
    v8(v3, v5);
    v10 = sub_100F47524;
  }

  else
  {
    v2[61] = v8;
    v2[62] = v7 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v3, v5);
    v10 = sub_100F456DC;
  }

  return _swift_task_switch(v10, v6, 0);
}

uint64_t sub_100F456DC()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[63] = v1;
  v0[64] = v2;
  if (v2 >> 60 == 15)
  {
    goto LABEL_4;
  }

  sub_100017D5C(v1, v2);
  v3 = sub_100314594(v1, v2);
  v0[65] = v3;
  v0[66] = v4;
  if (v4 >> 60 == 15)
  {
    sub_100006654(v1, v2);
LABEL_4:
    v5 = v0[38];
    v6 = v0[33];
    v7 = v0[34];
    v8 = v0[27];
    v9 = v0[28];
    type metadata accessor for BeaconScanner.Error(0);
    sub_100F47F3C(&unk_1016C1150, 255, type metadata accessor for BeaconScanner.Error, &unk_1013F3CA0);
    v10 = swift_allocError();
    v12 = v11;
    Identifier.init(stringLiteral:)();
    (*(v9 + 56))(v12, 0, 2, v8);
    swift_willThrow();

    (*(v7 + 8))(v5, v6);
LABEL_5:
    v0[84] = v10;
    v20 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
    v13 = swift_task_alloc();
    v0[85] = v13;
    *v13 = v0;
    v13[1] = sub_100F46E98;

    return v20();
  }

  v15 = v4;
  v16 = v3;
  v17 = v0[60];
  static Task<>.checkCancellation()();
  if (v17)
  {
    v10 = v17;
    (*(v0[34] + 8))(v0[38], v0[33]);
    sub_100006654(v16, v15);
    sub_100006654(v1, v2);

    goto LABEL_5;
  }

  Identifier.init(stringLiteral:)();
  v21 = (&async function pointer to dispatch thunk of Service.subscript.getter + async function pointer to dispatch thunk of Service.subscript.getter);
  v18 = swift_task_alloc();
  v0[67] = v18;
  *v18 = v0;
  v18[1] = sub_100F459D0;
  v19 = v0[30];

  return v21(v19);
}

uint64_t sub_100F459D0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[68] = a1;
  v3[69] = v1;

  v5 = v3[54];
  v6 = v3[30];
  v7 = v3[27];
  if (v1)
  {
    v8 = v3[15];
    v5(v6, v7);

    return _swift_task_switch(sub_100F47600, v8, 0);
  }

  else
  {
    v5(v6, v7);
    v12 = (&async function pointer to dispatch thunk of Characteristic.read() + async function pointer to dispatch thunk of Characteristic.read());
    v9 = swift_task_alloc();
    v3[70] = v9;
    *v9 = v4;
    v9[1] = sub_100F45BD0;
    v10 = v3[25];

    return v12(v10);
  }
}

uint64_t sub_100F45BD0()
{
  v2 = *v1;
  v2[71] = v0;

  if (v0)
  {
    v3 = v2[15];

    return _swift_task_switch(sub_100F47710, v3, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    v2[72] = v4;
    *v4 = v2;
    v4[1] = sub_100F45D64;
    v5 = v2[59];
    v6 = v2[22];

    return AsyncSequence.first()(v2 + 4, v6, v5);
  }
}

uint64_t sub_100F45D64()
{
  v2 = *v1;
  *(*v1 + 584) = v0;

  v3 = v2[61];
  v4 = v2[25];
  v5 = v2[22];
  v6 = v2[15];
  v3(v4, v5);
  if (v0)
  {
    v7 = sub_100F47820;
  }

  else
  {
    v7 = sub_100F45EE8;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100F45EE8()
{
  v1 = v0[4];
  v2 = v0[5];
  v0[74] = v1;
  v0[75] = v2;
  if (v2 >> 60 == 15)
  {
    goto LABEL_6;
  }

  v0[6] = v1;
  v0[7] = v2;
  sub_1000E0A3C();
  v0[10] = DataProtocol.nullTerminatedUTF8String.getter();
  v0[11] = v3;
  v0[76] = v3;
  if (!v3)
  {
    sub_100006654(v1, v2);
LABEL_6:
    v10 = v0[66];
    v11 = v0[65];
    v21 = v0[63];
    v22 = v0[64];
    v12 = v0[34];
    v23 = v0[33];
    v24 = v0[38];
    v13 = v0[27];
    v14 = v0[28];
    type metadata accessor for BeaconScanner.Error(0);
    sub_100F47F3C(&unk_1016C1150, 255, type metadata accessor for BeaconScanner.Error, &unk_1013F3CA0);
    v5 = swift_allocError();
    v16 = v15;
    Identifier.init(stringLiteral:)();
    (*(v14 + 56))(v16, 0, 2, v13);
    swift_willThrow();

    sub_100006654(v11, v10);
    sub_100006654(v21, v22);
    (*(v12 + 8))(v24, v23);
    goto LABEL_7;
  }

  v4 = v0[73];
  static Task<>.checkCancellation()();
  if (v4)
  {
    v5 = v4;
    v6 = v0[66];
    v7 = v0[65];
    v9 = v0[63];
    v8 = v0[64];
    (*(v0[34] + 8))(v0[38], v0[33]);

    sub_100006654(v1, v2);
    sub_100006654(v7, v6);
    sub_100006654(v9, v8);

LABEL_7:
    v0[84] = v5;
    v25 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
    v17 = swift_task_alloc();
    v0[85] = v17;
    *v17 = v0;
    v17[1] = sub_100F46E98;

    return v25();
  }

  Identifier.init(stringLiteral:)();
  v26 = (&async function pointer to dispatch thunk of Service.subscript.getter + async function pointer to dispatch thunk of Service.subscript.getter);
  v19 = swift_task_alloc();
  v0[77] = v19;
  *v19 = v0;
  v19[1] = sub_100F4621C;
  v20 = v0[29];

  return v26(v20);
}

uint64_t sub_100F4621C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v3 + 624) = a1;
  *(v3 + 632) = v1;

  if (v1)
  {
    v5 = *(v3 + 120);
    (*(v3 + 432))(*(v3 + 232), *(v3 + 216));

    return _swift_task_switch(sub_100F47930, v5, 0);
  }

  else
  {
    (*(v3 + 432))(*(v3 + 232), *(v3 + 216));
    v9 = (&async function pointer to dispatch thunk of Characteristic.read() + async function pointer to dispatch thunk of Characteristic.read());
    v6 = swift_task_alloc();
    *(v3 + 640) = v6;
    *v6 = v4;
    v6[1] = sub_100F463F0;
    v7 = *(v3 + 192);

    return v9(v7);
  }
}

uint64_t sub_100F463F0()
{
  v2 = *v1;
  v2[81] = v0;

  if (v0)
  {
    v3 = v2[15];

    return _swift_task_switch(sub_100F47A54, v3, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    v2[82] = v4;
    *v4 = v2;
    v4[1] = sub_100F46590;
    v5 = v2[59];
    v6 = v2[22];

    return AsyncSequence.first()(v2 + 8, v6, v5);
  }
}

uint64_t sub_100F46590()
{
  v2 = *v1;
  *(*v1 + 664) = v0;

  if (v0)
  {
    v3 = v2[61];
    v4 = v2[24];
    v5 = v2[22];
    v6 = v2[15];
    v3(v4, v5);

    v7 = sub_100F47B78;
    v8 = v6;
  }

  else
  {
    v9 = v2[15];
    (v2[61])(v2[24], v2[22]);
    v7 = sub_100F466E0;
    v8 = v9;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100F466E0()
{
  v84 = v0;
  v1 = v0[8];
  v2 = v0[9];
  if (v2 >> 60 == 15)
  {

LABEL_9:
    v26 = v0[75];
    v27 = v0[74];
    v70 = v0[65];
    v72 = v0[66];
    v75 = v0[63];
    v77 = v0[64];
    v28 = v0[34];
    v79 = v0[33];
    v81 = v0[38];
    v29 = v0[27];
    v30 = v0[28];
    type metadata accessor for BeaconScanner.Error(0);
    sub_100F47F3C(&unk_1016C1150, 255, type metadata accessor for BeaconScanner.Error, &unk_1013F3CA0);
    v31 = swift_allocError();
    v33 = v32;
    Identifier.init(stringLiteral:)();
    (*(v30 + 56))(v33, 0, 2, v29);
    swift_willThrow();
    sub_100006654(v27, v26);

    sub_100006654(v70, v72);
    sub_100006654(v75, v77);
    (*(v28 + 8))(v81, v79);
    v0[84] = v31;
    v82 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
    v34 = swift_task_alloc();
    v0[85] = v34;
    *v34 = v0;
    v34[1] = sub_100F46E98;

    return v82();
  }

  sub_100017D5C(v0[8], v0[9]);
  v3 = sub_10098E844(v1, v2);
  sub_100006654(v1, v2);
  if ((v3 & 0x100000000) != 0)
  {

    sub_100006654(v1, v2);
    goto LABEL_9;
  }

  v78 = v1;
  v80 = v3;
  ContinuousClock.now.getter();
  if (qword_101695000 != -1)
  {
    swift_once();
  }

  v4 = v0[37];
  v5 = v0[38];
  v7 = v0[35];
  v6 = v0[36];
  v8 = v0[33];
  v9 = v0[34];
  v10 = type metadata accessor for Logger();
  sub_1000076D4(v10, qword_10177C328);
  v11 = *(v9 + 16);
  v11(v6, v5, v8);
  v11(v7, v4, v8);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v12, v13);
  v16 = v0[35];
  v15 = v0[36];
  v18 = v0[33];
  v17 = v0[34];
  if (v14)
  {
    v76 = v13;
    v20 = v0[20];
    v19 = v0[21];
    v73 = v0[19];
    v69 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v83[0] = v71;
    *v69 = 136446210;
    static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
    sub_100F47F3C(&qword_1016C11E0, 255, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    v68 = static Duration.description<A>(_:_:units:)();
    v21 = v15;
    v23 = v22;
    (*(v20 + 8))(v19, v73);
    v24 = *(v17 + 8);
    v24(v16, v18);
    v74 = v24;
    v24(v21, v18);
    v25 = sub_1000136BC(v68, v23, v83);

    *(v69 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v12, v76, "Metadata read time: %{public}s", v69, 0xCu);
    sub_100007BAC(v71);
  }

  else
  {

    v36 = *(v17 + 8);
    v36(v16, v18);
    v74 = v36;
    v36(v15, v18);
  }

  v66 = v0[10];
  v67 = v0[76];
  v56 = v0[74];
  v57 = v0[75];
  v64 = v0[65];
  v65 = v0[66];
  v59 = v0[63];
  v60 = v0[64];
  v37 = v0[40];
  v62 = v0[39];
  v63 = v0[41];
  v61 = v0[38];
  v38 = v0[37];
  v58 = v0[33];
  v39 = v0[17];
  v40 = v0[18];
  v41 = v0[16];
  v42 = v0[12];
  Peripheral.id.getter();
  Identifier.id.getter();
  (*(v39 + 8))(v40, v41);
  v43 = type metadata accessor for AccessoryMetadata(0);
  v44 = v43[9];
  v45 = type metadata accessor for AirTagVersionNumber();
  (*(*(v45 - 8) + 56))(v42 + v44, 1, 1, v45);
  sub_100006654(v56, v57);

  sub_100006654(v78, v2);
  sub_100006654(v59, v60);
  v74(v38, v58);
  v74(v61, v58);
  (*(v37 + 8))(v63, v62);
  v46 = (v42 + v43[5]);
  *v46 = v64;
  v46[1] = v65;
  v47 = (v42 + v43[6]);
  *v47 = v66;
  v47[1] = v67;
  v48 = (v42 + v43[7]);
  *v48 = 0;
  v48[1] = 0;
  *(v42 + v43[8]) = v80;
  v49 = v42 + v43[10];
  *v49 = 0;
  *(v49 + 4) = 1;
  v50 = v42 + v43[11];
  *v50 = 0;
  *(v50 + 8) = 0;
  *(v50 + 16) = 1;
  v51 = v42 + v43[12];
  *v51 = 0;
  *(v51 + 8) = 1;
  v52 = v42 + v43[13];
  *v52 = 0;
  *(v52 + 4) = 1;
  *(v42 + v43[14]) = 4;
  *(v42 + v43[15]) = 5;
  v53 = (v42 + v43[16]);
  *v53 = 0;
  v53[1] = 0xE000000000000000;
  v54 = v42 + v43[17];
  *v54 = 0;
  *(v54 + 4) = 1;

  v55 = v0[1];

  return v55();
}

uint64_t sub_100F46E98()
{
  v2 = *v1;
  *(*v1 + 688) = v0;

  v3 = *(v2 + 120);
  if (v0)
  {
    v4 = sub_100F47C9C;
  }

  else
  {
    v4 = sub_100F46FC4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100F46FC4(uint64_t a1)
{
  v2 = v1[40];
  v3 = v1[41];
  v4 = v1[39];
  swift_willThrow();
  (*(v2 + 8))(v3, v4);

  v5 = v1[1];

  return v5();
}

uint64_t sub_100F47108()
{
  (*(v0[34] + 8))(v0[38], v0[33]);
  v0[84] = v0[43];
  v3 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
  v1 = swift_task_alloc();
  v0[85] = v1;
  *v1 = v0;
  v1[1] = sub_100F46E98;

  return v3();
}

uint64_t sub_100F471CC()
{
  (*(v0[34] + 8))(v0[38], v0[33]);
  v0[84] = v0[46];
  v3 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
  v1 = swift_task_alloc();
  v0[85] = v1;
  *v1 = v0;
  v1[1] = sub_100F46E98;

  return v3();
}

uint64_t sub_100F47290()
{
  v1 = v0[38];
  v2 = v0[33];
  v3 = v0[34];

  (*(v3 + 8))(v1, v2);
  v0[84] = v0[49];
  v6 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
  v4 = swift_task_alloc();
  v0[85] = v4;
  *v4 = v0;
  v4[1] = sub_100F46E98;

  return v6();
}

uint64_t sub_100F4736C()
{
  v1 = v0[38];
  v2 = v0[33];
  v3 = v0[34];

  (*(v3 + 8))(v1, v2);
  v0[84] = v0[53];
  v6 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
  v4 = swift_task_alloc();
  v0[85] = v4;
  *v4 = v0;
  v4[1] = sub_100F46E98;

  return v6();
}

uint64_t sub_100F47448()
{
  v1 = v0[38];
  v2 = v0[33];
  v3 = v0[34];

  (*(v3 + 8))(v1, v2);
  v0[84] = v0[57];
  v6 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
  v4 = swift_task_alloc();
  v0[85] = v4;
  *v4 = v0;
  v4[1] = sub_100F46E98;

  return v6();
}

uint64_t sub_100F47524()
{
  v1 = v0[38];
  v2 = v0[33];
  v3 = v0[34];

  (*(v3 + 8))(v1, v2);
  v0[84] = v0[60];
  v6 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
  v4 = swift_task_alloc();
  v0[85] = v4;
  *v4 = v0;
  v4[1] = sub_100F46E98;

  return v6();
}

uint64_t sub_100F47600()
{
  v1 = v0[66];
  v2 = v0[65];
  v4 = v0[63];
  v3 = v0[64];
  v5 = v0[38];
  v6 = v0[33];
  v7 = v0[34];

  sub_100006654(v2, v1);
  sub_100006654(v4, v3);
  (*(v7 + 8))(v5, v6);
  v0[84] = v0[69];
  v10 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
  v8 = swift_task_alloc();
  v0[85] = v8;
  *v8 = v0;
  v8[1] = sub_100F46E98;

  return v10();
}

uint64_t sub_100F47710()
{
  v1 = v0[66];
  v2 = v0[65];
  v4 = v0[63];
  v3 = v0[64];
  v5 = v0[38];
  v6 = v0[33];
  v7 = v0[34];

  sub_100006654(v2, v1);
  sub_100006654(v4, v3);
  (*(v7 + 8))(v5, v6);
  v0[84] = v0[71];
  v10 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
  v8 = swift_task_alloc();
  v0[85] = v8;
  *v8 = v0;
  v8[1] = sub_100F46E98;

  return v10();
}

uint64_t sub_100F47820()
{
  v1 = v0[66];
  v2 = v0[65];
  v4 = v0[63];
  v3 = v0[64];
  v5 = v0[38];
  v6 = v0[33];
  v7 = v0[34];

  sub_100006654(v2, v1);
  sub_100006654(v4, v3);
  (*(v7 + 8))(v5, v6);
  v0[84] = v0[73];
  v10 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
  v8 = swift_task_alloc();
  v0[85] = v8;
  *v8 = v0;
  v8[1] = sub_100F46E98;

  return v10();
}

uint64_t sub_100F47930()
{
  v1 = v0[66];
  v2 = v0[65];
  v4 = v0[63];
  v3 = v0[64];
  v5 = v0[38];
  v6 = v0[33];
  v7 = v0[34];
  sub_100006654(v0[74], v0[75]);

  sub_100006654(v2, v1);
  sub_100006654(v4, v3);
  (*(v7 + 8))(v5, v6);
  v0[84] = v0[79];
  v10 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
  v8 = swift_task_alloc();
  v0[85] = v8;
  *v8 = v0;
  v8[1] = sub_100F46E98;

  return v10();
}

uint64_t sub_100F47A54()
{
  v1 = v0[66];
  v2 = v0[65];
  v4 = v0[63];
  v3 = v0[64];
  v5 = v0[38];
  v6 = v0[33];
  v7 = v0[34];
  sub_100006654(v0[74], v0[75]);

  sub_100006654(v2, v1);
  sub_100006654(v4, v3);
  (*(v7 + 8))(v5, v6);
  v0[84] = v0[81];
  v10 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
  v8 = swift_task_alloc();
  v0[85] = v8;
  *v8 = v0;
  v8[1] = sub_100F46E98;

  return v10();
}

uint64_t sub_100F47B78()
{
  v1 = v0[66];
  v2 = v0[65];
  v4 = v0[63];
  v3 = v0[64];
  v5 = v0[38];
  v6 = v0[33];
  v7 = v0[34];
  sub_100006654(v0[74], v0[75]);

  sub_100006654(v2, v1);
  sub_100006654(v4, v3);
  (*(v7 + 8))(v5, v6);
  v0[84] = v0[83];
  v10 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
  v8 = swift_task_alloc();
  v0[85] = v8;
  *v8 = v0;
  v8[1] = sub_100F46E98;

  return v10();
}

uint64_t sub_100F47C9C()
{
  if (qword_101695000 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C328);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    v6 = _convertErrorToNSError(_:)();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "cancelConnection error in _readAccessoryMetadata() catch block: %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = v0[40];
  v8 = v0[41];
  v9 = v0[39];
  swift_willThrow();
  (*(v7 + 8))(v8, v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100F47F3C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100F47F84(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000BC4D4(&unk_1016C1140, &qword_10138BF70) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = v1 + ((v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v1 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100014744;

  return sub_100F3C6D4(a1, v8, v9, v1 + v6, v11, v12, v13);
}

uint64_t sub_100F480F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100F3FB78(a1, v4);
}

uint64_t sub_100F48190(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100F481F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_100F48260(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DetailedDiscoveredObject(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DiscoveredObject(0);
  __chkstk_darwin(v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100F481F8(a1, v11, type metadata accessor for DiscoveredObject);
  sub_100008BB8(0, &qword_1016C11E8, SPIndexInformation_ptr);
  sub_100F481F8(a1, v8, type metadata accessor for DetailedDiscoveredObject);
  v54 = sub_100F3FED8(v8);
  if (v11[1] != 1)
  {
    if (*v11 == 1)
    {
      v13 = (a1 + v9[9]);
      v14 = *v13;
      v15 = v13[1];
      v50 = *v13;
      if ((v15 & 0x2000000000000000) != 0)
      {
        v15 &= ~0x2000000000000000uLL;
      }

      v53 = v15;
      sub_100017D5C(v14, v15);
      LODWORD(v52) = 1;
    }

    else
    {
      LODWORD(v52) = *v11;
      v50 = 0;
      v53 = 0xC000000000000000;
    }

    v12 = 2;
    goto LABEL_10;
  }

  if (*v11)
  {
    LODWORD(v52) = 0;
    v50 = 0;
    v53 = 0xC000000000000000;
    v12 = 1;
LABEL_10:
    v51 = v12;
    goto LABEL_11;
  }

  v36 = (a1 + v9[9]);
  v37 = *v36;
  v38 = v36[1];
  v50 = *v36;
  if ((v38 & 0x2000000000000000) != 0)
  {
    v38 &= ~0x2000000000000000uLL;
  }

  v53 = v38;
  sub_100017D5C(v37, v38);
  LODWORD(v52) = 0;
  v51 = 0;
LABEL_11:
  v49 = v11[2];
  v16 = *(v11 + 2);
  v44 = *(v11 + 1);
  v17 = v9[7];
  v55 = v3;
  (*(v3 + 16))(v5, &v11[v17], v2);
  v18 = MACAddress.data.getter();
  v20 = v19;
  v21 = v9[12];
  v48 = v11[v9[11]];
  v46 = v11[v21];
  if (v11[v9[13] + 1])
  {
    isa = 0;
  }

  else
  {
    isa = UInt8._bridgeToObjectiveC()().super.super.isa;
  }

  v56 = v2;
  v45 = *&v11[v9[15]];
  sub_100008BB8(0, &unk_1016C11F0, SPAccessoryInformation_ptr);
  sub_100F481F8(a1, v8, type metadata accessor for DetailedDiscoveredObject);
  v22 = sub_100F40164(v8);
  v23 = 0;
  if (v16 >> 60 != 15)
  {
    v23 = Data._bridgeToObjectiveC()().super.isa;
  }

  v41 = v23;
  v24 = objc_allocWithZone(SPScannedObject);
  v25 = Date._bridgeToObjectiveC()().super.isa;
  v43 = v20;
  v26.super.isa = Data._bridgeToObjectiveC()().super.isa;
  v44 = v5;
  v27 = v26.super.isa;
  v28 = v50;
  v42 = v18;
  v29 = v53;
  v30 = Data._bridgeToObjectiveC()().super.isa;
  v31 = v54;
  v32 = isa;
  BYTE1(v39) = v46;
  LOBYTE(v39) = v48;
  v33 = v24;
  v34 = v41;
  v52 = [v33 initWithAdvertisementType:v51 poshNetwork:v52 nearOwner:v49 vendorPayload:v41 scanDate:v25 address:v27 advertisement:v30 status:v39 ek:isa hint:v45 rssi:v54 indexInformation:v22 acccessoryInformation:?];

  sub_100016590(v28, v29);
  sub_100016590(v42, v43);
  (*(v55 + 8))(v44, v56);
  sub_100F486D8(v11, type metadata accessor for DiscoveredObject);
  return v52;
}

uint64_t sub_100F486D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100F4874C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100014650;

  return sub_100F42288(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_100F48890(uint64_t a1)
{
  v4 = *(sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014650;

  return sub_100F43DB4(a1, v6, v7, v1 + v5);
}

uint64_t sub_100F489BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100F3C5B0(a1, v4, v5, v6);
}

uint64_t sub_100F48A98(uint64_t a1)
{
  sub_100F48B20(319, &unk_1016C12A8, &type metadata accessor for Characteristic, &type metadata accessor for Identifier);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_100F48B20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_100F48B84(char a1)
{
  result = 0x4E6E6F6973736573;
  switch(a1)
  {
    case 1:
      result = 0x737574617473;
      break;
    case 2:
      result = 0x69634572656E776FLL;
      break;
    case 3:
      result = 0x69684372656E776FLL;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x636E6F4E68747561;
      break;
    case 6:
      result = 0x754E6C6169726573;
      break;
    case 7:
      result = 0x6169726553746C61;
      break;
    case 8:
      result = 0x7461747365747461;
      break;
    case 9:
      result = 0x726F737365636361;
      break;
    case 10:
      result = 0x7374726563;
      break;
    case 11:
      result = 7500643;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0x7372655663657073;
      break;
    case 14:
      result = 0x657261776D726966;
      break;
    case 15:
      result = 0x49746375646F7270;
      break;
    case 16:
      result = 0x6449726F646E6576;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100F48D84(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C12D8, &qword_1013F42C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000035D0(a1, a1[3]);
  sub_100F4B118();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v22 = *v3;
  v13 = *v3;
  v12 = 0;
  sub_1001022C4(&v22, v11);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v13, *(&v13 + 1));
  if (!v2)
  {
    LOBYTE(v13) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = *(v3 + 72);
    v13 = *(v3 + 72);
    v12 = 5;
    sub_1001022C4(&v21, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v20 = *(v3 + 88);
    v13 = *(v3 + 88);
    v12 = 6;
    sub_1001022C4(&v20, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v19 = *(v3 + 104);
    v13 = *(v3 + 104);
    v12 = 7;
    sub_1001022C4(&v19, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v18 = *(v3 + 120);
    v13 = *(v3 + 120);
    v12 = 8;
    sub_1001022C4(&v18, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v17 = *(v3 + 136);
    v13 = *(v3 + 136);
    v12 = 9;
    sub_1001022C4(&v17, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v16 = *(v3 + 152);
    v13 = *(v3 + 152);
    v12 = 10;
    sub_1001022C4(&v16, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v15 = *(v3 + 168);
    v13 = *(v3 + 168);
    v12 = 11;
    sub_1001022C4(&v15, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v13 = *(v3 + 184);
    v14 = v13;
    v12 = 12;
    sub_1000D2A70(&v14, v11, &qword_1016A40E0, &unk_101396F30);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v13, *(&v13 + 1));
    LOBYTE(v13) = 13;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 15;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 16;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100F49358@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100F4B284(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100F49380(uint64_t a1)
{
  v2 = sub_100F4B118();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F493BC(uint64_t a1)
{
  v2 = sub_100F4B118();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100F4944C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a1[3];
  v47 = v64;
  v4 = a1[11];
  v62 = a1[12];
  v63 = v4;
  v51 = v4;
  sub_1001022C4(&v64, &v61);
  sub_1001022C4(&v63, &v61);
  sub_1000E0A3C();
  v5 = DataProtocol.intValue.getter();
  v6 = *a1;
  v61 = a1[1];
  v62 = v6;
  v49 = v61;
  v50 = v6;
  v60 = a1[2];
  v48 = v60;
  v7 = a1[4];
  v58 = a1[5];
  v59 = v7;
  v8 = a1[4];
  v45 = v58;
  v46 = v8;
  v9 = a1[9];
  v56 = a1[8];
  v57 = v9;
  v10 = a1[9];
  v11 = a1[10];
  v43 = v56;
  v44 = v10;
  v12 = a1[6];
  v55 = a1[7];
  v41 = v55;
  v42 = v12;
  v53 = v11;
  v54 = v12;
  v40 = v11;
  v13 = *(a1 + 29);
  v52 = a1[13];
  if (v13 >> 60 == 15)
  {
    sub_1000D2A70(&v62, v39, &qword_1016A0AC0, &unk_1013926A0);
    sub_1000D2A70(&v61, v39, &qword_1016A0AC0, &unk_1013926A0);
    sub_1000D2A70(&v60, v39, &qword_1016A0AC0, &unk_1013926A0);
    sub_1001022C4(&v59, v39);
    sub_1001022C4(&v58, v39);
    sub_1001022C4(&v57, v39);
    sub_1001022C4(&v56, v39);
    sub_1001022C4(&v55, v39);
    sub_1001022C4(&v54, v39);
    sub_1000D2A70(&v53, v39, &qword_1016A40E0, &unk_101396F30);
    result = sub_1000D2A70(&v52, v39, &qword_1016A0AC0, &unk_1013926A0);
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
LABEL_15:
    v33 = v50;
    *a2 = v51;
    *(a2 + 16) = v5;
    *(a2 + 24) = v33;
    v34 = v48;
    *(a2 + 40) = v49;
    *(a2 + 56) = v34;
    v35 = v46;
    *(a2 + 72) = v47;
    *(a2 + 88) = v35;
    v36 = v44;
    *(a2 + 104) = v45;
    *(a2 + 120) = v36;
    v37 = v42;
    *(a2 + 136) = v43;
    *(a2 + 152) = v37;
    v38 = v40;
    *(a2 + 168) = v41;
    *(a2 + 184) = v38;
    *(a2 + 200) = 0x302E302E32;
    *(a2 + 208) = 0xE500000000000000;
    *(a2 + 216) = a1[13];
    *(a2 + 232) = v15;
    *(a2 + 240) = v16;
    *(a2 + 248) = v17;
    *(a2 + 256) = v18;
    return result;
  }

  v19 = *(a1 + 28);
  sub_1000D2A70(&v62, v39, &qword_1016A0AC0, &unk_1013926A0);
  sub_1000D2A70(&v61, v39, &qword_1016A0AC0, &unk_1013926A0);
  sub_1000D2A70(&v60, v39, &qword_1016A0AC0, &unk_1013926A0);
  sub_1001022C4(&v59, v39);
  sub_1001022C4(&v58, v39);
  sub_1001022C4(&v57, v39);
  sub_1001022C4(&v56, v39);
  sub_1001022C4(&v55, v39);
  sub_1001022C4(&v54, v39);
  sub_1000D2A70(&v53, v39, &qword_1016A40E0, &unk_101396F30);
  sub_1000D2A70(&v52, v39, &qword_1016A0AC0, &unk_1013926A0);
  v20 = sub_100313B54(v19, v13);
  v22 = v21;
  v15 = Data.hexString.getter();
  v16 = v23;
  result = sub_100016590(v20, v22);
  v24 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v24 != 2)
    {
LABEL_14:
      v29 = Data.subdata(in:)();
      v31 = v30;
      v17 = Data.hexString.getter();
      v18 = v32;
      result = sub_100016590(v29, v31);
      goto LABEL_15;
    }

    v26 = *(v19 + 16);
    v25 = *(v19 + 24);
    v27 = __OFSUB__(v25, v26);
    v28 = v25 - v26;
    if (!v27)
    {
LABEL_12:
      if (v28 < -1)
      {
        __break(1u);
      }

      goto LABEL_14;
    }

    __break(1u);
  }

  else if (!v24)
  {
    goto LABEL_14;
  }

  LODWORD(v28) = HIDWORD(v19) - v19;
  if (!__OFSUB__(HIDWORD(v19), v19))
  {
    v28 = v28;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_100F49810(uint64_t a1, uint64_t a2)
{
  v2[306] = a2;
  v2[305] = a1;
  v3 = type metadata accessor for HashAlgorithm();
  v2[307] = v3;
  v2[308] = *(v3 - 8);
  v2[309] = swift_task_alloc();
  v4 = type metadata accessor for Locale();
  v2[310] = v4;
  v2[311] = *(v4 - 8);
  v2[312] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v2[313] = v5;
  v2[314] = *(v5 - 8);
  v2[315] = swift_task_alloc();

  return _swift_task_switch(sub_100F4998C, 0, 0);
}

void sub_100F4998C()
{
  v1 = sub_100907E70(_swiftEmptyArrayStorage);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
  v3 = [objc_opt_self() currentDevice];
  if (!v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  v5 = [v3 serverFriendlyDescription];

  if (!v5)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v6 = v0[315];
  v7 = v0[314];
  v8 = v0[313];
  v9 = v0[312];
  v46 = v0[311];
  v47 = v0[310];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v10, v12, 0xD000000000000011, 0x800000010134EA40, v13);
  v14 = v1;
  Date.init()();
  v15 = Date.epoch.getter();
  (*(v7 + 8))(v6, v8);
  v0[303] = v15;
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  v18 = v17;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v16, v18, 0xD000000000000015, 0x800000010134EA60, v19);
  v0[304] = 1;
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  v22 = v21;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v20, v22, 0xD000000000000013, 0x800000010134EA80, v23);
  v24 = v14;
  v25 = sub_100EB2DF0();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v25, v27, 0x6567412D72657355, 0xEA0000000000746ELL, v28);
  static Locale.current.getter();
  v29 = Locale.acceptLanguageCode.getter();
  v31 = v30;
  (*(v46 + 8))(v9, v47);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v29, v31, 0x4C2D747065636341, 0xEF65676175676E61, v32);
  v33 = v24;
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v34 = qword_10177C218;
  v35 = [objc_opt_self() sharedInstance];
  v36 = [v35 isInternalBuild];

  if (v36)
  {
    v37 = String._bridgeToObjectiveC()();
    v38 = [v34 BOOLForKey:v37];

    if (v38)
    {
      v39 = swift_isUniquelyReferenced_nonNull_native();
      sub_100FFACA0(0x7465722C6C616572, 0xEF302D726F727245, 0xD000000000000012, 0x800000010134F950, v39);
    }
  }

  v0[316] = v33;
  v40 = v0[305];
  sub_100500C18(v40, (v0 + 266));
  sub_100F4944C(v40, (v0 + 2));
  sub_100F4AFE8(v40);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  memcpy(v0 + 35, v0 + 2, 0x108uLL);
  sub_100F4B03C();
  v41 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v0[317] = 0;
  v0[318] = v41;
  v0[319] = v42;
  v43 = v41;
  v44 = v42;

  sub_100017D5C(v43, v44);
  v45 = swift_task_alloc();
  v0[320] = v45;
  *v45 = v0;
  v45[1] = sub_100F4A0B0;

  sub_100EA374C();
}

uint64_t sub_100F4A0B0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 2568) = a1;
  *(v3 + 2576) = a2;

  return _swift_task_switch(sub_100F4A1B4, 0, 0);
}

uint64_t sub_100F4A1B4()
{
  v1 = *(v0 + 2576);
  v2 = *(v0 + 2568);
  v3 = *(v0 + 2472);
  v4 = *(v0 + 2464);
  v5 = *(v0 + 2456);
  *(v0 + 2408) = v2;
  *(v0 + 2416) = v1;
  *(v0 + 2392) = &type metadata for Data;
  *(v0 + 2400) = &protocol witness table for Data;
  *(v0 + 2368) = *(v0 + 2544);
  v6 = sub_1000035D0((v0 + 2368), &type metadata for Data);
  v7 = *v6;
  v8 = v6[1];
  sub_100017D5C(v2, v1);
  sub_100017DB0(v7, v8, v0 + 2408);
  sub_100016590(v2, v1);
  sub_100007BAC((v0 + 2368));
  *(v0 + 2584) = *(v0 + 2408);
  *(v0 + 2592) = *(v0 + 2416);
  (*(v4 + 104))(v3, enum case for HashAlgorithm.sha256(_:), v5);
  v9 = Data.hash(algorithm:)();
  v11 = v10;
  *(v0 + 2600) = v9;
  *(v0 + 2608) = v10;
  (*(v4 + 8))(v3, v5);
  v12 = swift_task_alloc();
  *(v0 + 2616) = v12;
  *v12 = v0;
  v12[1] = sub_100F4A36C;
  v13 = *(v0 + 2448);

  return sub_100EA87F4(v9, v11, v13);
}

uint64_t sub_100F4A36C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 2624) = v1;

  if (v1)
  {
    v5 = sub_100F4A9CC;
  }

  else
  {
    v6 = v4[326];
    v7 = v4[325];
    v4[329] = a1;
    sub_100016590(v7, v6);
    v5 = sub_100F4A4A0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100F4A4A0()
{
  v48 = v0;
  v1 = v0[329];
  v2 = v0[324];
  v3 = v0[323];
  v4 = v0[316];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47[0] = v4;
  sub_10028709C(v1, sub_100EB00A4, 0, isUniquelyReferenced_nonNull_native, v47);

  sub_100016590(v3, v2);
  v6 = v47[0];
  if (qword_101694E98 == -1)
  {
    goto LABEL_2;
  }

LABEL_23:
  swift_once();
LABEL_2:
  v44 = v0;
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177C0A8);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Pairing lock header:", v10, 2u);
  }

  v11 = v6 + 64;
  v12 = -1;
  v13 = -1 << *(v6 + 32);
  if (-v13 < 64)
  {
    v12 = ~(-1 << -v13);
  }

  v14 = v12 & *(v6 + 64);
  v0 = ((63 - v13) >> 6);

  v15 = 0;
  v45 = v6;
  if (v14)
  {
    while (2)
    {
      v16 = v15;
LABEL_13:
      v17 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v18 = (v16 << 10) | (16 * v17);
      v19 = (*(v6 + 48) + v18);
      v20 = *v19;
      v21 = v19[1];
      v22 = (*(v6 + 56) + v18);
      v23 = v22[1];
      v46 = *v22;

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v47[0] = swift_slowAlloc();
        *v26 = 136315394;
        v27 = sub_1000136BC(v20, v21, v47);

        *(v26 + 4) = v27;
        *(v26 + 12) = 2080;
        v28 = sub_1000136BC(v46, v23, v47);

        *(v26 + 14) = v28;
        _os_log_impl(&_mh_execute_header, v24, v25, "%s: %s", v26, 0x16u);
        swift_arrayDestroy();

        v6 = v45;

        v15 = v16;
        if (v14)
        {
          continue;
        }
      }

      else
      {

        v15 = v16;
        if (v14)
        {
          continue;
        }
      }

      break;
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v16 >= v0)
    {
      break;
    }

    v14 = *(v11 + 8 * v16);
    ++v15;
    if (v14)
    {
      goto LABEL_13;
    }
  }

  sub_100F4B090((v44 + 2), (v44 + 167));
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  sub_100F4B0C8((v44 + 2));
  v31 = os_log_type_enabled(v29, v30);
  v32 = v44[305];
  if (v31)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v47[0] = v34;
    *v33 = 136315138;
    memcpy(v44 + 200, v44 + 2, 0x108uLL);
    sub_100F4B090((v44 + 2), (v44 + 233));
    v35 = String.init<A>(describing:)();
    v37 = sub_1000136BC(v35, v36, v47);

    *(v33 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v29, v30, "Pairing ack body %s", v33, 0xCu);
    sub_100007BAC(v34);

    sub_100F4B0C8((v44 + 2));

    sub_100F4AFE8(v32);
  }

  else
  {

    sub_100F4AFE8(v32);

    sub_100F4B0C8((v44 + 2));
  }

  v38 = v44[319];
  v39 = v44[318];

  sub_100017D5C(v39, v38);

  sub_100016590(v39, v38);
  v40 = v44[319];
  v41 = v44[318];

  v42 = v44[1];

  return v42(v6, v41, v40);
}

uint64_t sub_100F4A9CC()
{
  v50 = v0;
  v1 = v0[324];
  v2 = v0[323];
  sub_100016590(v0[325], v0[326]);
  sub_100016590(v2, v1);
  if (qword_1016950E0 == -1)
  {
    goto LABEL_2;
  }

LABEL_28:
  swift_once();
LABEL_2:
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177C448);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to generate attestation header: %{public}@.", v6, 0xCu);
    sub_100288C6C(v7);
  }

  else
  {
  }

  v9 = v0[316];
  if (qword_101694E98 != -1)
  {
    swift_once();
  }

  v46 = v0;
  sub_1000076D4(v3, qword_10177C0A8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Pairing lock header:", v12, 2u);
  }

  v13 = v9 + 64;
  v14 = -1;
  v15 = -1 << *(v9 + 32);
  if (-v15 < 64)
  {
    v14 = ~(-1 << -v15);
  }

  v16 = v14 & *(v9 + 64);
  v0 = ((63 - v15) >> 6);

  v17 = 0;
  v47 = v9;
  if (v16)
  {
    while (2)
    {
      v18 = v17;
LABEL_18:
      v19 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v20 = (v18 << 10) | (16 * v19);
      v21 = (*(v9 + 48) + v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v9 + 56) + v20);
      v25 = v24[1];
      v48 = *v24;

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *v28 = 136315394;
        v29 = sub_1000136BC(v22, v23, &v49);

        *(v28 + 4) = v29;
        *(v28 + 12) = 2080;
        v30 = sub_1000136BC(v48, v25, &v49);

        *(v28 + 14) = v30;
        _os_log_impl(&_mh_execute_header, v26, v27, "%s: %s", v28, 0x16u);
        swift_arrayDestroy();

        v9 = v47;

        v17 = v18;
        if (v16)
        {
          continue;
        }
      }

      else
      {

        v17 = v18;
        if (v16)
        {
          continue;
        }
      }

      break;
    }
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v18 >= v0)
    {
      break;
    }

    v16 = *(v13 + 8 * v18);
    ++v17;
    if (v16)
    {
      goto LABEL_18;
    }
  }

  sub_100F4B090((v46 + 2), (v46 + 167));
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  sub_100F4B0C8((v46 + 2));
  v33 = os_log_type_enabled(v31, v32);
  v34 = v46[305];
  if (v33)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v49 = v36;
    *v35 = 136315138;
    memcpy(v46 + 200, v46 + 2, 0x108uLL);
    sub_100F4B090((v46 + 2), (v46 + 233));
    v37 = String.init<A>(describing:)();
    v39 = sub_1000136BC(v37, v38, &v49);

    *(v35 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v31, v32, "Pairing ack body %s", v35, 0xCu);
    sub_100007BAC(v36);

    sub_100F4B0C8((v46 + 2));

    sub_100F4AFE8(v34);
  }

  else
  {

    sub_100F4AFE8(v34);

    sub_100F4B0C8((v46 + 2));
  }

  v40 = v46[319];
  v41 = v46[318];

  sub_100017D5C(v41, v40);

  sub_100016590(v41, v40);
  v42 = v46[319];
  v43 = v46[318];

  v44 = v46[1];

  return v44(v9, v43, v42);
}

unint64_t sub_100F4B03C()
{
  result = qword_1016C12D0;
  if (!qword_1016C12D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C12D0);
  }

  return result;
}

unint64_t sub_100F4B118()
{
  result = qword_1016C12E0;
  if (!qword_1016C12E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C12E0);
  }

  return result;
}

unint64_t sub_100F4B180()
{
  result = qword_1016C12E8;
  if (!qword_1016C12E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C12E8);
  }

  return result;
}

unint64_t sub_100F4B1D8()
{
  result = qword_1016C12F0;
  if (!qword_1016C12F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C12F0);
  }

  return result;
}

unint64_t sub_100F4B230()
{
  result = qword_1016C12F8;
  if (!qword_1016C12F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C12F8);
  }

  return result;
}

uint64_t sub_100F4B284(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E6E6F6973736573 && a2 == 0xEC00000065636E6FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69634572656E776FLL && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69684372656E776FLL && a2 == 0xEB00000000644970 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010134F970 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x636E6F4E68747561 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6169726553746C61 && a2 == 0xEF7265626D754E6CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7461747365747461 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xED00006E67695379 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7374726563 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 7500643 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000101347DB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x7372655663657073 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x657261776D726966 && a2 == 0xEF6E6F6973726556 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6449726F646E6576 && a2 == 0xE800000000000000)
  {

    return 16;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 16;
    }

    else
    {
      return 17;
    }
  }
}

uint64_t sub_100F4B804(uint64_t a1)
{
  v1 = (*(a1 + 24) >> 60) & 3 | (4 * (*(a1 + 32) & 1));
  if (v1 <= 5)
  {
    return v1;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_100F4B828(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FA && *(a1 + 33))
  {
    return (*a1 + 1018);
  }

  v3 = ((*(a1 + 24) >> 60) & 3 | (4 * *(a1 + 32))) ^ 0x3FF;
  if (v3 >= 0x3F9)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100F4B87C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3F9)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 1018;
    *(result + 8) = 0;
    if (a3 >= 0x3FA)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FA)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = (-a2 & 3) << 60;
      *(result + 32) = -a2 >> 2;
    }
  }

  return result;
}

uint64_t sub_100F4B8D4(uint64_t result, unsigned int a2)
{
  if (a2 < 6)
  {
    *(result + 24) = *(result + 24) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 3) << 60);
    *(result + 32) = a2 > 3;
  }

  else
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0x2000000000000000;
    *(result + 32) = 1;
  }

  return result;
}

ValueMetadata *sub_100F4B920(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    if (a1 > 2u)
    {
      if (a1 != 3)
      {
        v1 = &type metadata for AccessoryStartAggressiveAdvertisingPayload;
        sub_10031016C();
        return v1;
      }
    }

    else if (a1 >= 2u)
    {
      v1 = &type metadata for AccessoryCommandResponsePayload;
      sub_1003101C0();
      return v1;
    }

LABEL_10:
    v1 = &type metadata for AccessoryGenericPayload;
    sub_10030FF74();
    return v1;
  }

  if (a1 < 0xAu)
  {
    goto LABEL_10;
  }

  if (a1 > 0xBu)
  {
    if (a1 == 12)
    {
      v1 = &type metadata for AccessoryCapabilityResponsePayload;
      sub_10059BC58();
    }

    else
    {
      v1 = &type metadata for AccessoryFirmwareVersionResponsePayload;
      sub_1003100C4();
    }
  }

  else if (a1 == 10)
  {
    v1 = &type metadata for AccessoryProductDataResponsePayload;
    sub_10059BDFC();
  }

  else
  {
    v1 = &type metadata for AccessoryModelNameResponsePayload;
    sub_10059BD54();
  }

  return v1;
}

unint64_t sub_100F4B9F0(char a1)
{
  result = 0x6F5374726174732ELL;
  switch(a1)
  {
    case 1:
      result = 0x756F53706F74732ELL;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6F43646E756F732ELL;
      break;
    case 4:
      v3 = 11;
      goto LABEL_12;
    case 5:
      v3 = 10;
LABEL_12:
      result = v3 | 0xD000000000000010;
      break;
    case 6:
      result = 0x746375646F72702ELL;
      break;
    case 7:
      result = 0x614E6C65646F6D2ELL;
      break;
    case 8:
      result = 0x6C6962617061632ELL;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100F4BBC0()
{
  v1 = v0[3];
  if (v0[4])
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | (v1 >> 60) & 3;
  if (v3 <= 2)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        return 4;
      }

      else
      {
        return 10;
      }
    }

    else
    {
      return 2;
    }
  }

  else if (v3 > 4)
  {
    if (v3 == 5)
    {
      return 13;
    }

    else
    {
      v5 = *v0;
      if (v0[2] | v0[1] | *v0)
      {
        v6 = 0;
      }

      else
      {
        v6 = v1 == 0x2000000000000000;
      }

      if (v6)
      {
        return 0;
      }

      else if (v1 == 0x2000000000000000 && v5 == 1 && *(v0 + 1) == 0)
      {
        return 1;
      }

      else if (v1 == 0x2000000000000000 && v5 == 2 && *(v0 + 1) == 0)
      {
        return 3;
      }

      else if (v1 == 0x2000000000000000 && v5 == 3 && *(v0 + 1) == 0)
      {
        return 5;
      }

      else if (v1 == 0x2000000000000000 && v5 == 4 && *(v0 + 1) == 0)
      {
        return 6;
      }

      else if (v1 == 0x2000000000000000 && v5 == 5 && *(v0 + 1) == 0)
      {
        return 7;
      }

      else if (*(v0 + 1) == 0 && v5 == 6 && v1 == 0x2000000000000000)
      {
        return 8;
      }

      else
      {
        return 9;
      }
    }
  }

  else if (v3 == 3)
  {
    return 11;
  }

  else
  {
    return 12;
  }
}

void sub_100F4BD00(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  if (*(v1 + 32))
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 | (v5 >> 60) & 3;
  if (v8 > 2)
  {
    if (v8 > 4)
    {
      if (v8 == 5)
      {
        *(a1 + 24) = &type metadata for AccessoryFirmwareVersionResponsePayload;
        *(a1 + 32) = sub_1003100C4();
        *a1 = v4;
        *(a1 + 2) = BYTE2(v4);
        *(a1 + 3) = BYTE3(v4);
      }

      else
      {
        *(a1 + 24) = &type metadata for AccessoryGenericPayload;
        *(a1 + 32) = sub_10030FF74();
      }

      return;
    }

    if (v8 == 3)
    {
      *(a1 + 24) = &type metadata for AccessoryModelNameResponsePayload;
      *(a1 + 32) = sub_10059BD54();
      *a1 = v4;
      *(a1 + 8) = v3;

      return;
    }

    *(a1 + 24) = &type metadata for AccessoryCapabilityResponsePayload;
    v9 = sub_10059BC58();
LABEL_21:
    *(a1 + 32) = v9;
    *a1 = v4;
    return;
  }

  if (v8)
  {
    if (v8 == 1)
    {
      *(a1 + 24) = &type metadata for AccessoryStartAggressiveAdvertisingPayload;
      v9 = sub_10031016C();
      goto LABEL_21;
    }

    *(a1 + 24) = &type metadata for AccessoryProductDataResponsePayload;
    *(a1 + 32) = sub_10059BDFC();
    *a1 = v4;
    *(a1 + 8) = v3;
    v11 = v4;
    v12 = v3;
  }

  else
  {
    *(a1 + 24) = &type metadata for AccessoryCommandResponsePayload;
    *(a1 + 32) = sub_1003101C0();
    v10 = swift_allocObject();
    *a1 = v10;
    v10[2] = v4;
    v10[3] = v3;
    v10[4] = v6;
    v10[5] = v5 & 0xCFFFFFFFFFFFFFFFLL;
    sub_100017D5C(v4, v3);
    v11 = v6;
    v12 = v5;
  }

  sub_100017D5C(v11, v12);
}

uint64_t sub_100F4BF48(void *a1)
{
  v3 = type metadata accessor for Endianness();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v7 = sub_100F4BBC0();
  LOWORD(v16) = word_1013F471A[v7];
  static Endianness.current.getter();
  sub_1002053B0();
  FixedWidthInteger.convert(to:)();
  (*(v4 + 8))(v6, v3);
  LOWORD(v16) = v20;
  sub_10015049C(v24, v25);
  dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  if (!v1)
  {
    switch(v7)
    {
      case 2u:
        sub_100F4BD00(&v20);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_18;
        }

        v10 = v16;
        v11 = v17;
        v12 = v18;
        v13 = v19;
        v20 = v16;
        v21 = v17;
        v22 = v18;
        v23 = v19;
        sub_10015049C(v24, v25);
        sub_10030FDD0();
        dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
        sub_100016590(v10, v11);
        sub_100016590(v12, v13);
        return sub_100007BAC(v24);
      case 4u:
        sub_100F4BD00(&v20);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_18;
        }

        LODWORD(v20) = v16;
        sub_10015049C(v24, v25);
        sub_10030FCD4();
        goto LABEL_13;
      case 0xAu:
        sub_100F4BD00(&v20);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_18;
        }

        v8 = v16;
        v9 = v17;
        v20 = v16;
        v21 = v17;
        sub_10015049C(v24, v25);
        sub_10059C0F0();
        dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
        sub_100016590(v8, v9);
        return sub_100007BAC(v24);
      case 0xBu:
        sub_100F4BD00(&v20);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_18;
        }

        v20 = v16;
        v21 = v17;
        sub_10015049C(v24, v25);
        sub_10059C09C();
        dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();

        return sub_100007BAC(v24);
      case 0xCu:
        sub_100F4BD00(&v20);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_18;
        }

        LODWORD(v20) = v16;
        sub_10015049C(v24, v25);
        sub_10059C048();
        goto LABEL_13;
      case 0xDu:
        sub_100F4BD00(&v20);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_18;
        }

        LODWORD(v20) = v16;
        sub_10015049C(v24, v25);
        sub_10030FC2C();
        goto LABEL_13;
      default:
        sub_100F4BD00(&v20);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_10015049C(v24, v25);
          sub_10030FB84();
LABEL_13:
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
        }

        else
        {
LABEL_18:
          sub_100F4CD68();
          swift_allocError();
          *v14 = 0;
          swift_willThrow();
        }

        break;
    }
  }

  return sub_100007BAC(v24);
}

double sub_100F4C4D4@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100F4CAEC(a2, v6);
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

uint64_t sub_100F4C534(__int16 a1)
{
  if ((a1 - 768) > 0x1Bu)
  {
    return 14;
  }

  else
  {
    return byte_1013F4736[(a1 - 768)];
  }
}

ValueMetadata *sub_100F4C560@<X0>(unsigned __int8 a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100F4B920(a1);
  sub_1000035D0(a2, a2[3]);
  result = swift_getDynamicType();
  if (v6 == result)
  {
    switch(a1)
    {
      case 2u:
        sub_10001F280(a2, v16);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_31;
        }

        v8 = v13;
        v9 = v14;
        result = sub_100007BAC(a2);
        v10 = v15;
        v11 = 0;
        goto LABEL_24;
      case 3u:
        sub_10001F280(a2, v16);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_31;
        }

        result = sub_100007BAC(a2);
        v9 = 0;
        v10 = xmmword_1013B5EA0;
        v11 = 1;
        v8 = 2;
        goto LABEL_24;
      case 4u:
        sub_10001F280(a2, v16);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_31;
        }

        v8 = v13;
        result = sub_100007BAC(a2);
        v9 = 0;
        v11 = 0;
        v10 = xmmword_1013F43E0;
        goto LABEL_24;
      case 5u:
        sub_10001F280(a2, v16);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_31;
        }

        result = sub_100007BAC(a2);
        v9 = 0;
        v10 = xmmword_1013B5EA0;
        v11 = 1;
        v8 = 3;
        goto LABEL_24;
      case 6u:
        sub_10001F280(a2, v16);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_31;
        }

        result = sub_100007BAC(a2);
        v9 = 0;
        v10 = xmmword_1013B5EA0;
        v11 = 1;
        v8 = 4;
        goto LABEL_24;
      case 7u:
        sub_10001F280(a2, v16);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_31;
        }

        result = sub_100007BAC(a2);
        v9 = 0;
        v10 = xmmword_1013B5EA0;
        v11 = 1;
        v8 = 5;
        goto LABEL_24;
      case 8u:
        sub_10001F280(a2, v16);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_31;
        }

        result = sub_100007BAC(a2);
        v9 = 0;
        v10 = xmmword_1013B5EA0;
        v11 = 1;
        v8 = 6;
        goto LABEL_24;
      case 9u:
        sub_10001F280(a2, v16);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_31;
        }

        result = sub_100007BAC(a2);
        v9 = 0;
        v10 = xmmword_1013B5EA0;
        v11 = 1;
        v8 = 7;
        goto LABEL_24;
      case 0xAu:
        sub_10001F280(a2, v16);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_31;
        }

        v8 = v13;
        v9 = v14;
        result = sub_100007BAC(a2);
        v11 = 0;
        v10 = xmmword_1013B5EA0;
        goto LABEL_24;
      case 0xBu:
        sub_10001F280(a2, v16);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_31;
        }

        v8 = v13;
        v9 = v14;
        result = sub_100007BAC(a2);
        v11 = 0;
        v10 = xmmword_10138BC00;
        goto LABEL_24;
      case 0xCu:
        sub_10001F280(a2, v16);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_31;
        }

        v8 = v13;
        result = sub_100007BAC(a2);
        v9 = 0;
        v10 = 0uLL;
        goto LABEL_23;
      case 0xDu:
        sub_10001F280(a2, v16);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_31;
        }

        v8 = v13;
        result = sub_100007BAC(a2);
        v9 = 0;
        v10 = xmmword_1013F43E0;
        goto LABEL_23;
      default:
        sub_10001F280(a2, v16);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          result = sub_100007BAC(a2);
          v8 = 0;
          v9 = 0;
          v10 = xmmword_1013B5EA0;
LABEL_23:
          v11 = 1;
LABEL_24:
          *a3 = v8;
          *(a3 + 8) = v9;
          *(a3 + 16) = v10;
          *(a3 + 32) = v11;
        }

        else
        {
LABEL_31:
          sub_100F4CD68();
          swift_allocError();
          *v12 = 0;
          swift_willThrow();
          result = sub_100007BAC(a2);
        }

        break;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100F4CAEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for Endianness();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v20, v20[3]);
  sub_1002053B0();
  dispatch thunk of BinaryDecodingContaining.decode<A>(_:)();
  if (!v2)
  {
    v8 = v17;
    v23 = v18[0];
    static Endianness.current.getter();
    FixedWidthInteger.convert(to:)();
    (*(v5 + 8))(v7, v4);
    v9 = sub_100F4C534(v19[0]);
    if (v9 != 14)
    {
      v11 = v9;
      v12 = sub_100F4B920(v9);
      v14 = v13;
      sub_10001F280(a1, v18);
      v19[3] = v12;
      v19[4] = v14;
      sub_1000280DC(v19);
      dispatch thunk of BinaryDecodable.init(from:)();
      sub_10001F280(v19, v18);
      sub_100F4C560(v11, v18, v21);
      sub_100007BAC(v19);
      sub_100007BAC(v20);
      result = sub_100007BAC(a1);
      v16 = v21[1];
      *v8 = v21[0];
      *(v8 + 16) = v16;
      *(v8 + 32) = v22;
      return result;
    }

    sub_100F4CD68();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
  }

  sub_100007BAC(v20);
  return sub_100007BAC(a1);
}

unint64_t sub_100F4CD68()
{
  result = qword_1016C1300;
  if (!qword_1016C1300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1300);
  }

  return result;
}

unint64_t sub_100F4CDD0()
{
  result = qword_1016C1308;
  if (!qword_1016C1308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1308);
  }

  return result;
}

uint64_t sub_100F4CE24()
{
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_1000076D4(v0, qword_10177C418);
}

uint64_t sub_100F4CE88()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v12 - v5;
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  v12[1] = 0x7365547265646E75;
  v12[2] = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (v13)
  {
    v7 = NSTemporaryDirectory();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    URL.init(fileURLWithPath:isDirectory:)();
  }

  else
  {
    v9 = [objc_opt_self() defaultManager];
    v10 = [v9 URLsForDirectory:5 inDomains:1];

    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v11 + 16))
    {
      (*(v1 + 16))(v4, v11 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

      (*(v1 + 32))(v6, v4, v0);
      URL.appendingPathComponent(_:isDirectory:)();
      return (*(v1 + 8))(v6, v0);
    }

    else
    {

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

uint64_t *sub_100F4D180()
{
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  return &qword_10177C3D0;
}

uint64_t sub_100F4D1F8()
{
  sub_10039722C();
  result = OS_os_log.init(subsystem:category:)();
  qword_10177C360 = result;
  return result;
}

uint64_t sub_100F4D284()
{
  sub_10039722C();
  result = OS_os_log.init(subsystem:category:)();
  qword_10177C370 = result;
  return result;
}

uint64_t sub_100F4D2F0()
{
  sub_10039722C();
  result = OS_os_log.init(subsystem:category:)();
  qword_10177C378 = result;
  return result;
}

uint64_t sub_100F4D3A4()
{
  sub_10039722C();
  result = OS_os_log.init(subsystem:category:)();
  qword_10177C390 = result;
  return result;
}

uint64_t sub_100F4D454()
{
  sub_10039722C();
  result = OS_os_log.init(subsystem:category:)();
  qword_10177C3A8 = result;
  return result;
}

uint64_t sub_100F4D4DC()
{
  sub_10039722C();
  result = OS_os_log.init(subsystem:category:)();
  qword_10177C3B8 = result;
  return result;
}

uint64_t sub_100F4D570()
{
  sub_10039722C();
  result = OS_os_log.init(subsystem:category:)();
  qword_10177C3C8 = result;
  return result;
}

uint64_t sub_100F4D6A4()
{
  sub_10039722C();
  result = OS_os_log.init(subsystem:category:)();
  qword_10177C3F8 = result;
  return result;
}

uint64_t sub_100F4D75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_10039722C();
  result = OS_os_log.init(subsystem:category:)();
  *a4 = result;
  return result;
}

uint64_t sub_100F4D7C4()
{
  sub_10039722C();
  result = OS_os_log.init(subsystem:category:)();
  qword_10177C410 = result;
  return result;
}

uint64_t sub_100F4D87C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C448);
  sub_1000076D4(v0, qword_10177C448);
  return Logger.init(subsystem:category:)();
}

id sub_100F4D918(uint64_t a1)
{
  v1 = sub_100907E70(_swiftEmptyArrayStorage);
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v2 = sub_101073B80(v11);

  if (v2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100FFACA0(1702195828, 0xE400000000000000, 0xD000000000000018, 0x8000000101357BD0, isUniquelyReferenced_nonNull_native);
  }

  result = [objc_opt_self() currentDevice];
  if (result)
  {
    v5 = result;
    v6 = [result serverFriendlyDescription];

    if (v6)
    {
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      v10 = swift_isUniquelyReferenced_nonNull_native();
      sub_100FFACA0(v7, v9, 0xD000000000000011, 0x800000010134EA40, v10);
    }

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100F4DAB4(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016C1328, &qword_1013F4958);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000035D0(a1, a1[3]);
  sub_100F4E2C4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_100F4DC58()
{
  v0 = sub_100907E70(&off_10160D218);
  sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
  swift_arrayDestroy();
  v1 = sub_100F4D918(sub_100011134);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = v0;
  sub_10028709C(v1, sub_100EB00A4, 0, isUniquelyReferenced_nonNull_native, &v4);

  return v4;
}

uint64_t sub_100F4DD1C(uint64_t a1)
{
  v2 = sub_100132EF0();

  return RequestContentRepresentable.description.getter(a1, v2);
}

uint64_t sub_100F4DD58()
{
  v1 = 0x6D617473656D6974;
  if (*v0 != 1)
  {
    v1 = 1684628597;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656372756F73;
  }
}

uint64_t sub_100F4DDAC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100F4E318(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100F4DDD4(uint64_t a1)
{
  v2 = sub_100F4E2C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F4DE10(uint64_t a1)
{
  v2 = sub_100F4E2C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100F4DE4C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100F4E434(a2, v6);
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

uint64_t sub_100F4DED0()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() currentDevice];
  if (v5 && (v6 = v5, v7 = [v5 uniqueDeviceIdentifier], v6, v7))
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v0;
    v9 = v8;
    v11 = v10;

    v12 = [objc_allocWithZone(NSProcessInfo) init];
    v13 = [v12 processName];

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    static Date.trustedNow.getter(v4);
    v17 = Date.epoch.getter();
    (*(v2 + 8))(v4, v1);
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    v23[1] = v14;
    v23[2] = v16;
    v23[3] = v17;
    v23[4] = v9;
    v23[5] = v11;
    sub_100F4E1A0();
    v18 = v24;
    v19 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    if (v18)
    {

      v20 = 0;
    }

    else
    {
      v20 = v19;
    }
  }

  else
  {
    v20 = type metadata accessor for GenericError();
    sub_100A1C368();
    swift_allocError();
    strcpy(v21, "Missing UDID!");
    *(v21 + 7) = -4864;
    (*(*(v20 - 8) + 104))(v21, enum case for GenericError.error(_:), v20);
    swift_willThrow();
  }

  return v20;
}

unint64_t sub_100F4E1A0()
{
  result = qword_1016C1310;
  if (!qword_1016C1310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1310);
  }

  return result;
}

unint64_t sub_100F4E218()
{
  result = qword_1016C1318;
  if (!qword_1016C1318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1318);
  }

  return result;
}

unint64_t sub_100F4E270()
{
  result = qword_1016C1320;
  if (!qword_1016C1320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1320);
  }

  return result;
}

unint64_t sub_100F4E2C4()
{
  result = qword_1016C1330;
  if (!qword_1016C1330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1330);
  }

  return result;
}

uint64_t sub_100F4E318(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1684628597 && a2 == 0xE400000000000000)
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

uint64_t sub_100F4E434@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016C1338, &unk_1013F4960);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100F4E2C4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v22 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v12 = v9;
  v21 = 1;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v20 = 2;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = sub_100007BAC(a1);
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v19;
  a2[3] = v13;
  a2[4] = v16;
  return result;
}

unint64_t sub_100F4E65C()
{
  result = qword_1016C1340;
  if (!qword_1016C1340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1340);
  }

  return result;
}

unint64_t sub_100F4E6B4()
{
  result = qword_1016C1348;
  if (!qword_1016C1348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1348);
  }

  return result;
}

unint64_t sub_100F4E70C()
{
  result = qword_1016C1350;
  if (!qword_1016C1350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1350);
  }

  return result;
}

uint64_t type metadata accessor for AirPodsLEPairingLockCheckResponse(uint64_t a1)
{
  result = qword_1016C13B0;
  if (!qword_1016C13B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100F4E7D4(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1002359B8(319, &qword_1016BD350, &type metadata for String);
    if (v2 <= 0x3F)
    {
      sub_1002359B8(319, &qword_10169A330, &type metadata for Data);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100F4E8B8(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x654C636341616162;
    v6 = 0x6E49636341616162;
    if (a1 != 8)
    {
      v6 = 0xD000000000000013;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6449616E6D66;
    if (a1 != 5)
    {
      v7 = 0x704164656B73616DLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 1684628325;
    v2 = 0x754E6C6169726573;
    v3 = 0x5364656573;
    if (a1 != 3)
    {
      v3 = 0x6953726576726573;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x644970696863;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100F4EA10@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = type metadata accessor for UUID();
  v32 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016C1410, &qword_1013F4AF0);
  v30 = *(v7 - 8);
  v31 = v7;
  __chkstk_darwin(v7);
  v9 = v25 - v8;
  v10 = type metadata accessor for AirPodsLEPairingLockCheckResponse(0);
  v11 = __chkstk_darwin(v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13[*(v11 + 56)] = 0;
  v14 = a1[3];
  v34 = a1;
  sub_1000035D0(a1, v14);
  sub_100F4F448();
  v33 = v9;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(v34);
  }

  v26 = v10;
  v27 = v6;
  v15 = v30;
  v16 = v32;
  v28 = v13;
  v36 = 0;
  v17 = sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18 = v28;
  *v28 = v35;
  v36 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v18 + 1) = v35;
  v36 = 2;
  v25[2] = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v18 + 2) = v35;
  v36 = 3;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v18 + 3) = v35;
  v36 = 4;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v25[1] = v17;
  *(v18 + 4) = v35;
  LOBYTE(v35) = 5;
  sub_100395BEC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v16 + 32))(&v18[v26[9]], v27, v4);
  LOBYTE(v35) = 6;
  v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v20 = &v18[v26[10]];
  *v20 = v19;
  v20[1] = v21;
  v36 = 7;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v28[v26[11]] = v35;
  v36 = 8;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v28[v26[12]] = v35;
  v36 = 9;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v15 + 8))(v33, v31);
  v23 = v28;
  v22 = v29;
  *&v28[v26[13]] = v35;
  sub_1009A1D14(v23, v22);
  sub_100007BAC(v34);
  return sub_1009A1CB8(v23);
}

uint64_t sub_100F4F178(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_100F4E8B8(*a1);
  v5 = v4;
  if (v3 == sub_100F4E8B8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100F4F200()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100F4E8B8(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100F4F264(uint64_t a1)
{
  sub_100F4E8B8(*v1);
  String.hash(into:)();
}

Swift::Int sub_100F4F2B8(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_100F4E8B8(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100F4F318@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100F4F5B4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100F4F348@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100F4E8B8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100F4F390@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100F4F5B4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100F4F3B8(uint64_t a1)
{
  v2 = sub_100F4F448();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F4F3F4(uint64_t a1)
{
  v2 = sub_100F4F448();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100F4F448()
{
  result = qword_1016C1418;
  if (!qword_1016C1418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1418);
  }

  return result;
}

unint64_t sub_100F4F4B0()
{
  result = qword_1016C1420;
  if (!qword_1016C1420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1420);
  }

  return result;
}

unint64_t sub_100F4F508()
{
  result = qword_1016C1428;
  if (!qword_1016C1428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1428);
  }

  return result;
}

unint64_t sub_100F4F560()
{
  result = qword_1016C1430;
  if (!qword_1016C1430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1430);
  }

  return result;
}

unint64_t sub_100F4F5B4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10160CAA8, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100F4F600(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for HashAlgorithm();
  v139 = *(v4 - 8);
  v140 = v4;
  __chkstk_darwin(v4);
  v6 = &v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.Encoding();
  v143 = *(v7 - 8);
  v144 = v7;
  __chkstk_darwin(v7);
  v142 = &v134 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  v10 = sub_1000076D4(v9, qword_10177C418);
  sub_10002E98C(a1, a2);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  sub_100006654(a1, a2);
  v13 = os_log_type_enabled(v11, v12);
  v145 = v10;
  v138 = v6;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v147 = v15;
    *v14 = 136315138;
    if (a2 >> 60 == 15)
    {
      v16 = 0;
      v17 = 0xE000000000000000;
    }

    else
    {
      v16 = Data.hexString.getter();
      v17 = v18;
    }

    v19 = sub_1000136BC(v16, v17, &v147);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "E1 encryption key from server: %s", v14, 0xCu);
    sub_100007BAC(v15);
  }

  else
  {
  }

  v20 = [objc_opt_self() defaultStore];
  if (!v20)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v21 = v20;
  v22 = a1;
  v23 = a2;
  if (a2 >> 60 == 15)
  {
    if (qword_1016950E8 != -1)
    {
      swift_once();
    }

    v23 = qword_1016C1440;
    if (qword_1016C1440 >> 60 == 15)
    {
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Invalid server public key.", v26, 2u);
      }

      goto LABEL_41;
    }

    v22 = qword_1016C1438;
    sub_100017D5C(qword_1016C1438, qword_1016C1440);
  }

  sub_10002E98C(a1, a2);
  v27 = [v21 aa_primaryAppleAccount];
  if (!v27)
  {
    goto LABEL_25;
  }

  v28 = v27;
  v29 = [v27 aa_personID];
  if (!v29)
  {

LABEL_25:
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "Failed to obtain DSID from account. Using device serial number instead to support account signed out.", v56, 2u);
    }

    v57 = v142;
    v59 = *(v141 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber);
    v58 = *(v141 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber + 8);
    static String.Encoding.utf8.getter();
    v60 = String.data(using:allowLossyConversion:)();
    v62 = v61;
    (*(v143 + 8))(v57, v144);
    if (v62 >> 60 == 15)
    {

      v24 = Logger.logObject.getter();
      v63 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v24, v63))
      {
        sub_100016590(v22, v23);

LABEL_41:

        return 0;
      }

      v64 = swift_slowAlloc();
      v51 = v21;
      v65 = swift_slowAlloc();
      v147 = v65;
      *v64 = 141558275;
      *(v64 + 4) = 1752392040;
      *(v64 + 12) = 2081;
      v66 = sub_1000136BC(v59, v58, &v147);

      *(v64 + 14) = v66;
      _os_log_impl(&_mh_execute_header, v24, v63, "Invalid serial number %{private,mask.hash}s", v64, 0x16u);
      sub_100007BAC(v65);

      sub_100016590(v22, v23);

LABEL_30:
      return 0;
    }

    v68 = v138;
    v67 = v139;
    v69 = v140;
    (*(v139 + 104))(v138, enum case for HashAlgorithm.sha256(_:), v140);
    v143 = Data.hash(algorithm:)();
    v144 = v70;
    v71 = v60;
    v72 = v62;
    goto LABEL_33;
  }

  v30 = v29;
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = v31;
    v37 = v21;
    v38 = swift_slowAlloc();
    v39 = v23;
    v40 = v22;
    v41 = swift_slowAlloc();
    v147 = v41;
    *v38 = 136315138;
    *(v38 + 4) = sub_1000136BC(v36, v33, &v147);
    _os_log_impl(&_mh_execute_header, v34, v35, "DSID: %s", v38, 0xCu);
    sub_100007BAC(v41);
    v22 = v40;
    v23 = v39;

    v21 = v37;
    v31 = v36;
  }

  v42 = v142;
  static String.Encoding.utf8.getter();
  v43 = String.data(using:allowLossyConversion:)();
  v45 = v44;
  (*(v143 + 8))(v42, v144);
  if (v45 >> 60 == 15)
  {

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v46, v47))
    {

      sub_100016590(v22, v23);

      return 0;
    }

    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v50 = v31;
    v51 = v21;
    v52 = v49;
    v147 = v49;
    *v48 = 141558275;
    *(v48 + 4) = 1752392040;
    *(v48 + 12) = 2081;
    v53 = sub_1000136BC(v50, v33, &v147);

    *(v48 + 14) = v53;
    _os_log_impl(&_mh_execute_header, v46, v47, "Invalid DSID %{private,mask.hash}s", v48, 0x16u);
    sub_100007BAC(v52);

    sub_100016590(v22, v23);
    goto LABEL_30;
  }

  v68 = v138;
  v67 = v139;
  v69 = v140;
  (*(v139 + 104))(v138, enum case for HashAlgorithm.sha256(_:), v140);
  v143 = Data.hash(algorithm:)();
  v144 = v73;

  v71 = v43;
  v72 = v45;
LABEL_33:
  sub_100006654(v71, v72);
  (*(v67 + 8))(v68, v69);
  sub_100017D5C(v22, v23);
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.debug.getter();
  sub_100016590(v22, v23);
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v147 = v77;
    *v76 = 136315138;
    v78 = Data.hexString.getter();
    v137 = v21;
    v80 = sub_1000136BC(v78, v79, &v147);
    v21 = v137;

    *(v76 + 4) = v80;
    _os_log_impl(&_mh_execute_header, v74, v75, "generateAirPodsE1Blob publicKeyData: %s", v76, 0xCu);
    sub_100007BAC(v77);
  }

  sub_100017D5C(v22, v23);
  v81 = sub_10049C290(v22, v23);
  v83 = v82;
  sub_100017D5C(v81, v82);
  v84 = Logger.logObject.getter();
  v85 = static os_log_type_t.debug.getter();
  sub_100016590(v81, v83);
  v86 = os_log_type_enabled(v84, v85);
  v136 = v22;
  v137 = v21;
  v142 = v83;
  v140 = v81;
  if (v86)
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v147 = v88;
    *v87 = 136315138;
    sub_100017D5C(v81, v83);
    v89 = Data.hexString.getter();
    v90 = v83;
    v91 = v89;
    v93 = v92;
    sub_100016590(v81, v90);
    v94 = sub_1000136BC(v91, v93, &v147);

    *(v87 + 4) = v94;
    _os_log_impl(&_mh_execute_header, v84, v85, "generateAirPodsE1Blob publicKey: %s", v87, 0xCu);
    sub_100007BAC(v88);
  }

  v96 = v143;
  v95 = v144;
  sub_100017D5C(v143, v144);
  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.debug.getter();
  sub_100016590(v96, v95);
  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v147 = v100;
    *v99 = 136315138;
    v101 = Data.hexString.getter();
    v103 = sub_1000136BC(v101, v102, &v147);

    *(v99 + 4) = v103;
    _os_log_impl(&_mh_execute_header, v97, v98, "generateAirPodsE1Blob dataToEncrypt: %s", v99, 0xCu);
    sub_100007BAC(v100);
  }

  v104 = v137;
  v105 = objc_autoreleasePoolPush();
  sub_100A79398(&v146, &v147);
  objc_autoreleasePoolPop(v105);
  v107 = v147;
  v106 = v148;
  sub_100017D5C(v147, v148);
  v108 = Logger.logObject.getter();
  v109 = static os_log_type_t.debug.getter();
  v139 = v106;
  sub_100016590(v107, v106);
  if (os_log_type_enabled(v108, v109))
  {
    v110 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v147 = v111;
    *v110 = 136315138;
    v112 = Data.hexString.getter();
    v114 = sub_1000136BC(v112, v113, &v147);
    v115 = v142;

    *(v110 + 4) = v114;
    _os_log_impl(&_mh_execute_header, v108, v109, "generateAirPodsE1Blob encryptedData: %s", v110, 0xCu);
    sub_100007BAC(v111);
    v104 = v137;
  }

  else
  {

    v115 = v142;
  }

  v116 = v139;
  sub_100017D5C(v107, v139);
  sub_100495F0C(v107, v116, &v147);
  v135 = v107;
  v118 = v147;
  v119 = v148;
  sub_100017D5C(v147, v148);
  v120 = Logger.logObject.getter();
  v121 = static os_log_type_t.debug.getter();
  v145 = v118;
  v138 = v119;
  sub_100016590(v118, v119);
  if (os_log_type_enabled(v120, v121))
  {
    v123 = swift_slowAlloc();
    v124 = swift_slowAlloc();
    *v123 = 136315138;
    v146 = v124;
    v147 = v145;
    v148 = v138;
    sub_100413338();
    v125 = RawRepresentable<>.hexString.getter();
    v127 = v104;
    v128 = sub_1000136BC(v125, v126, &v146);

    *(v123 + 4) = v128;
    _os_log_impl(&_mh_execute_header, v120, v121, "generateAirPodsE1Blob e1Blob: %s", v123, 0xCu);
    sub_100007BAC(v124);

    sub_100016590(v143, v144);
    sub_100016590(v136, v23);
  }

  else
  {
    sub_100016590(v143, v144);
    sub_100016590(v136, v23);
  }

  sub_100016590(v140, v115);
  sub_100016590(v135, v139);

  v129 = v141;
  v130 = *(v141 + 40);
  v131 = *(v141 + 48);
  v132 = v145;
  v133 = v138;
  *(v141 + 40) = v145;
  *(v129 + 48) = v133;
  sub_100017D5C(v132, v133);
  sub_100006654(v130, v131);
  return v132;
}

double sub_100F506B0@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4 + 8);
  if (v3 >> 60 == 15 || (v4 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_scrtAttestation + 8), v4 >> 60 == 15) || (v5 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryCerts + 8), v5 >> 60 == 15) || (v6 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_csr + 8), v6 >> 60 == 15) || (v7 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_authNonce + 8), v7 >> 60 == 15) || (v8 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_alternateSerialNumber + 8), v8 >> 60 == 15) || (v9 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber + 8), v9 >> 60 == 15) || (v10 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_status + 8), v10 >> 60 == 15))
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000076D4(v11, qword_10177C448);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Missing info to generate AirPodsPairingAckData!", v14, 2u);
    }

    sub_100F54BFC(&v45);
  }

  else
  {
    v23 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_scrtAttestation);
    v24 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryCerts);
    v25 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_csr);
    v26 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_authNonce);
    v27 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_alternateSerialNumber);
    v28 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
    v30 = *(v1 + 16);
    v29 = *(v1 + 24);
    v31 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_ecid);
    v32 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_chipId);
    v33 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber);
    *&v34 = v26;
    *(&v34 + 1) = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_authNonce + 8);
    *&v35 = v28;
    *(&v35 + 1) = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber + 8);
    *&v36 = v27;
    *(&v36 + 1) = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_alternateSerialNumber + 8);
    *&v37 = v24;
    *(&v37 + 1) = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryCerts + 8);
    *&v38 = v25;
    *(&v38 + 1) = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_csr + 8);
    *&v39 = v30;
    *(&v39 + 1) = v29;
    *&v40 = v23;
    *(&v40 + 1) = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_scrtAttestation + 8);
    v41 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4);
    v42 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_status);
    v43 = *(v1 + 88);
    v44 = *(v1 + 104);
    SharingCircleWildAdvertisementKey.init(key:)();
    sub_10002E98C(v41, v3);
    sub_10002E98C(v23, v4);
    sub_10002E98C(v24, v5);
    sub_10002E98C(v25, v6);
    sub_10002E98C(v26, v7);
    sub_10002E98C(v27, v8);
    sub_10002E98C(v28, v9);
    sub_10002E98C(v42, v10);

    sub_100017D5C(v30, v29);

    sub_10002E98C(v44, *(&v44 + 1));
    v55 = v41;
    v56 = v42;
    v57 = v43;
    v58 = v44;
    v51 = v37;
    v52 = v38;
    v53 = v39;
    v54 = v40;
    v47 = v33;
    v48 = v34;
    v49 = v35;
    v50 = v36;
    v45 = v31;
    v46 = v32;
  }

  v15 = v56;
  a1[10] = v55;
  a1[11] = v15;
  v16 = v58;
  a1[12] = v57;
  a1[13] = v16;
  v17 = v52;
  a1[6] = v51;
  a1[7] = v17;
  v18 = v54;
  a1[8] = v53;
  a1[9] = v18;
  v19 = v48;
  a1[2] = v47;
  a1[3] = v19;
  v20 = v50;
  a1[4] = v49;
  a1[5] = v20;
  result = *&v45;
  v22 = v46;
  *a1 = v45;
  a1[1] = v22;
  return result;
}

void *sub_100F50A90@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v110 = a3;
  v111 = a4;
  v109 = a2;
  v10 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v6[6];
  if (v14 >> 60 == 15)
  {
    goto LABEL_13;
  }

  v15 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaSignatureS2 + 8);
  if (v15 >> 60 == 15)
  {
    goto LABEL_13;
  }

  if (*(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId + 1))
  {
    goto LABEL_13;
  }

  v16 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryCerts + 8);
  if (v16 >> 60 == 15)
  {
    goto LABEL_13;
  }

  v17 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_csr + 8);
  if (v17 >> 60 == 15)
  {
    goto LABEL_13;
  }

  v18 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber + 8);
  if (v18 >> 60 == 15)
  {
    goto LABEL_13;
  }

  v19 = (v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_seedK1);
  v20 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_seedK1 + 8);
  if (v20 >> 60 == 15)
  {
    goto LABEL_13;
  }

  v21 = (v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_scrtAttestation);
  v22 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_scrtAttestation + 8);
  if (v22 >> 60 == 15)
  {
    goto LABEL_13;
  }

  v23 = (v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_authNonce);
  v24 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_authNonce + 8);
  if (v24 >> 60 == 15)
  {
    goto LABEL_13;
  }

  v25 = (v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_alternateSerialNumber);
  v26 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_alternateSerialNumber + 8);
  if (v26 >> 60 == 15)
  {
    goto LABEL_13;
  }

  v92 = v6;
  v105 = v6[5];
  v106 = v17;
  v99 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaSignatureS2);
  LODWORD(v89) = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId);
  v27 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryCerts);
  v101 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_csr);
  v102 = v27;
  v28 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
  v29 = *v19;
  v97 = *v21;
  v98 = v29;
  v30 = *v23;
  v94 = *v25;
  v95 = v30;
  *&v114[0] = v28;
  *(&v114[0] + 1) = v18;
  v107 = v16;
  v108 = v18;
  v103 = v22;
  v104 = v20;
  v100 = v24;
  v96 = v26;
  sub_10002E98C(v28, v18);
  v93 = v28;
  sub_10002E98C(v28, v108);
  sub_10002E98C(v105, v14);
  sub_10002E98C(v99, v15);
  sub_10002E98C(v102, v107);
  sub_10002E98C(v101, v106);
  sub_10002E98C(v98, v104);
  sub_10002E98C(v97, v103);
  sub_10002E98C(v95, v100);
  sub_10002E98C(v94, v96);
  sub_1000E0A3C();
  if ((DataProtocol.isNull.getter() & 1) == 0)
  {
    v38 = v93;
    v39 = Data.trimmed.getter();
    v87 = v40;
    v88 = v39;
    sub_100006654(v38, v108);
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    v42 = sub_1000076D4(v41, qword_10177C448);
    sub_10002E98C(v110, v111);
    *&v86 = v42;
    v91 = Logger.logObject.getter();
    LODWORD(v42) = static os_log_type_t.default.getter();
    sub_100006654(v110, v111);
    LODWORD(v90) = v42;
    v43 = v42;
    v44 = v91;
    if (os_log_type_enabled(v91, v43))
    {
      v45 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *&v114[0] = v84;
      v85 = v45;
      *v45 = 136446210;
      if (v111 >> 60 == 15)
      {
        v46 = 0;
        v47 = 0xE000000000000000;
      }

      else
      {
        v46 = Data.hexString.getter();
        v47 = v48;
      }

      *&v83 = sub_1000136BC(v46, v47, v114);

      v49 = v85;
      *(v85 + 1) = v83;
      _os_log_impl(&_mh_execute_header, v91, v90, "Pairing token: %{public}s", v49, 0xCu);
      sub_100007BAC(v84);
    }

    else
    {
    }

    v90 = sub_100F524A0(a5);

    v91 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();

    LODWORD(v86) = v50;
    if (os_log_type_enabled(v91, v50))
    {
      v51 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *&v114[0] = v84;
      v85 = v51;
      *v51 = 141558275;
      *(v51 + 4) = 1752392040;
      *(v51 + 12) = 2081;
      type metadata accessor for MultipartAccessoryPairingInfo(0);
      sub_100101BAC();
      v52 = Dictionary.description.getter();
      *&v83 = sub_1000136BC(v52, v53, v114);

      v54 = v85;
      *(v85 + 14) = v83;
      _os_log_impl(&_mh_execute_header, v91, v86, "otherSerialNumbersAndPartIds: %{private,mask.hash}s", v54, 0x16u);
      sub_100007BAC(v84);
    }

    v55 = v92;
    *&v86 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbersAndPartIds;
    *(v92 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbersAndPartIds) = v90;

    if (!*(a5 + 16))
    {
      LODWORD(v90) = 0;
LABEL_37:
      v91 = *(v55 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_ecid + 8);
      v62 = *(v55 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_chipId + 8);
      v85 = *(v55 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_numBeacons);
      v63 = *(v55 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbers);
      v64 = *(v55 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber + 8);
      v84 = *(v55 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber);
      v81 = v64;
      v82 = v63;
      v65 = *(v55 + v86);
      *&v56 = *(v55 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_chipId);
      v86 = v56;
      *&v56 = *(v55 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_ecid);
      v83 = v56;
      LOBYTE(v114[0]) = v89;
      v89 = sub_1000198E8();

      v66 = v55;
      v67 = FixedWidthInteger.data.getter();
      v69 = v68;
      sub_100016590(v88, v87);
      v113[2] = v99;
      v113[3] = v15;
      LOBYTE(v113[6]) = v90;
      *&v70 = v83;
      *(&v70 + 1) = v91;
      *&v71 = v86;
      *(&v71 + 1) = v62;
      v113[11] = v84;
      v113[12] = v81;
      v113[13] = v95;
      v113[14] = v100;
      v113[15] = v93;
      v113[16] = v108;
      v113[17] = v94;
      v113[18] = v96;
      v113[19] = v85;
      v113[21] = v82;
      v113[22] = v65;
      v113[24] = v98;
      v113[25] = v104;
      v113[26] = v102;
      v113[27] = v107;
      v113[28] = v101;
      v113[29] = v106;
      v113[30] = v97;
      v113[31] = v103;
      v113[32] = v67;
      v72 = v66[2];
      v108 = v66[3];
      v113[33] = v69;
      v113[36] = v105;
      v73 = v66[11];
      v74 = v66[12];
      v113[37] = v14;
      v113[23] = 0;
      v113[35] = v108;
      v113[38] = v73;
      v75 = v66[13];
      v76 = v66[14];
      v112 = 0;
      v77 = a1;
      v113[0] = a1;
      v79 = v109;
      v78 = v110;
      v113[1] = v109;
      v80 = v111;
      v113[4] = v110;
      v113[5] = v111;
      *&v113[9] = v71;
      *&v113[7] = v70;
      LOBYTE(v113[20]) = 0;
      v113[34] = v72;
      v113[39] = v74;
      v113[40] = v75;
      v113[41] = v76;
      SharingCircleWildAdvertisementKey.init(key:)();
      sub_10002E98C(v78, v80);
      sub_100017D5C(v72, v108);

      sub_10002E98C(v75, v76);
      sub_100017D5C(v77, v79);
      memcpy(v114, v113, sizeof(v114));
      return memcpy(a6, v114, 0x150uLL);
    }

    v57 = sub_100771E30(v88, v87);
    if (v58)
    {
      sub_100F54CEC(*(a5 + 56) + *(v11 + 72) * v57, v13, type metadata accessor for OwnedBeaconGroup.PairingState);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v59 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
        v60 = *(v59 + 48);
        sub_100006654(*&v13[*(v59 + 64)], *&v13[*(v59 + 64) + 8]);
        sub_10000B3A8(&v13[v60], &qword_1016A40D0, &unk_10138BE70);
        v61 = type metadata accessor for UUID();
        (*(*(v61 - 8) + 8))(v13, v61);
        LODWORD(v90) = 1;
LABEL_36:
        v55 = v92;
        goto LABEL_37;
      }

      sub_100F54D54(v13, type metadata accessor for OwnedBeaconGroup.PairingState);
    }

    LODWORD(v90) = 0;
    goto LABEL_36;
  }

  v31 = v93;
  v32 = v108;
  sub_100006654(v93, v108);
  sub_100006654(v94, v96);
  sub_100006654(v95, v100);
  sub_100006654(v97, v103);
  sub_100006654(v98, v104);
  sub_100006654(v31, v32);
  sub_100006654(v101, v106);
  sub_100006654(v102, v107);
  sub_100006654(v99, v15);
  sub_100006654(v105, v14);
LABEL_13:
  if (qword_1016950E0 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_1000076D4(v33, qword_10177C448);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "Missing info to generate AirPodsLEPairingCheckData!", v36, 2u);
  }

  sub_100F54C28(v114);
  return memcpy(a6, v114, 0x150uLL);
}