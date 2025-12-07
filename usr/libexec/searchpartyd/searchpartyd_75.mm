uint64_t sub_10085DF9C()
{

  v1 = swift_task_alloc();
  *(v0 + 560) = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  *v1 = v0;
  v1[1] = sub_10085E07C;
  v3 = *(v0 + 424);

  return unsafeBlocking<A>(context:_:)(v0 + 152, 0xD000000000000010, 0x800000010134A8C0, sub_1000D27E4, v3, v2);
}

uint64_t sub_10085E07C()
{
  v1 = *(*v0 + 424);

  return _swift_task_switch(sub_10085E194, v1, 0);
}

uint64_t sub_10085E194()
{
  v1 = v0[21];
  v0[71] = v0[19];
  return _swift_task_switch(sub_10085E1B8, v1, 0);
}

uint64_t sub_10085E1B8()
{
  v0[72] = *(v0[71] + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);

  v2 = v0[5];
  v1 = v0[6];
  sub_1000035D0(v0 + 2, v2);
  (*(*(*(v1 + 8) + 8) + 32))(v2);
  v3 = getuid();
  sub_1000294F0(v3);
  v4 = swift_task_alloc();
  v0[73] = v4;
  *v4 = v0;
  v4[1] = sub_10085E2D4;
  v6 = v0[35];
  v5 = v0[36];

  return sub_100686048(v6, v5, 1);
}

uint64_t sub_10085E2D4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[74] = v2;

  v5 = v4[68];
  v6 = v4[36];
  v7 = v4[35];
  v8 = v4[32];
  v9 = v4[21];
  if (v2)
  {

    v5(v7, v8);
    v5(v6, v8);
    v10 = sub_10085FB10;
  }

  else
  {

    v4[75] = a2;
    v4[76] = a1;
    v5(v7, v8);
    v5(v6, v8);
    v10 = sub_10085E4EC;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_10085E4EC()
{
  v1 = v0[75];
  if (v1 >> 60 == 15)
  {
    v0[77] = v0[74];
    v2 = v0[5];
    v3 = v0[6];
    sub_1000035D0(v0 + 2, v2);
    (*(*(*(v3 + 8) + 8) + 32))(v2);
    v4 = swift_task_alloc();
    v0[78] = v4;
    *v4 = v0;
    v4[1] = sub_10085E67C;
    v5 = v0[38];
    v6 = v0[30];

    return sub_100CFC71C(v6, v5);
  }

  else
  {
    v8 = v0[76];
    v9 = v0[74];
    v0[81] = v1;
    v0[80] = v8;
    v0[79] = v9;
    v10 = v0[53];
    v11 = v0[5];
    v12 = v0[6];
    sub_1000035D0(v0 + 2, v11);
    (*(*(*(v12 + 8) + 8) + 32))(v11);

    return _swift_task_switch(sub_10085EF30, v10, 0);
  }
}

uint64_t sub_10085E67C()
{
  v1 = *(*v0 + 544);
  v2 = *(*v0 + 304);
  v3 = *(*v0 + 256);
  v4 = *(*v0 + 168);

  v1(v2, v3);

  return _swift_task_switch(sub_10085E7F8, v4, 0);
}

uint64_t sub_10085E7F8()
{
  v55 = v0;
  v1 = v0[30];
  v2 = type metadata accessor for TimeBasedKey(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &qword_10169BA30, &unk_101395620);
    v3 = &qword_101695000;
    if (qword_1016954F0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177CE28);
    sub_10001F280((v0 + 2), (v0 + 7));
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v52 = v0[68];
      v53 = v0[43];
      v7 = v0[38];
      v8 = v0[32];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v54 = v10;
      *v9 = 141558275;
      *(v9 + 4) = 1752392040;
      *(v9 + 12) = 2081;
      v12 = v0[10];
      v11 = v0[11];
      sub_1000035D0(v0 + 7, v12);
      (*(*(*(v11 + 8) + 8) + 32))(v12);
      sub_100045918(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      v52(v7, v8);
      sub_100007BAC(v0 + 7);
      v16 = sub_1000136BC(v13, v15, &v54);

      *(v9 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v5, v6, "No secondary advertisement found for %{private,mask.hash}s to publish anonymously.", v9, 0x16u);
      sub_100007BAC(v10);

      v3 = &qword_101695000;

      sub_1008647F4(v53, type metadata accessor for BeaconEstimatedLocation);
    }

    else
    {
      v32 = v0[43];

      sub_1008647F4(v32, type metadata accessor for BeaconEstimatedLocation);
      sub_100007BAC(v0 + 7);
    }

    v33 = v0[77];
    v34 = v0[60];
    v35 = v0[57];
    v36 = v0[59] + 1;
    sub_100007BAC(v0 + 2);
    if (v36 == v35)
    {
      if (v3[158] != -1)
      {
        swift_once();
      }

      sub_1000076D4(v4, qword_10177CE28);
      swift_bridgeObjectRetain_n();

      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      v39 = os_log_type_enabled(v37, v38);
      v40 = v0[56];
      if (v39)
      {
        v41 = swift_slowAlloc();
        *v41 = 134218240;
        v42 = *(v40 + 16);

        *(v41 + 4) = v42;

        *(v41 + 12) = 2048;
        *(v41 + 14) = *(v34 + 16);
        swift_bridgeObjectRelease_n();
        _os_log_impl(&_mh_execute_header, v37, v38, "Unpublished anonymous payloads for %ld shared beacons found %ld to publish.", v41, 0x16u);
      }

      else
      {
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
      }

      v50 = v0[1];

      return v50(v34);
    }

    v43 = v0[59];
    v0[59] = v43 + 1;
    v0[60] = v34;
    v0[58] = v33;
    v28 = v0[53];
    v44 = v0[31];
    v45 = v0[20];
    sub_10001F280(v0[56] + 40 * v43 + 72, (v0 + 2));
    v46 = v0[5];
    v47 = v0[6];
    sub_1000035D0(v0 + 2, v46);
    (*(*(*(v47 + 8) + 8) + 32))(v46);
    v48 = type metadata accessor for Date();
    v49 = *(v48 - 8);
    (*(v49 + 16))(v44, v45, v48);
    (*(v49 + 56))(v44, 0, 1, v48);
    v31 = sub_10085D7D8;
  }

  else
  {
    v17 = (v1 + *(v2 + 24));
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v21 = v17[3];
    v22 = v17[4];
    v23 = v17[5];
    sub_10002E98C(*v17, v19);
    sub_100017D5C(v20, v21);
    sub_10002E98C(v22, v23);
    sub_1008647F4(v1, type metadata accessor for TimeBasedKey);
    v24 = PublicKey.advertisement.getter(v20, v21);
    v26 = v25;
    sub_100006654(v18, v19);
    sub_100016590(v20, v21);
    sub_100006654(v22, v23);
    v27 = v0[77];
    v0[81] = v26;
    v0[80] = v24;
    v0[79] = v27;
    v28 = v0[53];
    v29 = v0[5];
    v30 = v0[6];
    sub_1000035D0(v0 + 2, v29);
    (*(*(*(v30 + 8) + 8) + 32))(v29);
    v31 = sub_10085EF30;
  }

  return _swift_task_switch(v31, v28, 0);
}

uint64_t sub_10085EF30()
{
  v1 = *(v0 + 512);
  v2 = *(v0 + 424);
  v3 = *(v0 + 296);
  v4 = *(v0 + 256);
  v5 = (*(v0 + 672) + 24) & ~*(v0 + 672);
  (*(v0 + 488))(v3, *(v0 + 304), v4);
  v6 = swift_allocObject();
  *(v0 + 656) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 664) = v7;
  *v7 = v0;
  v7[1] = sub_10085F080;
  v9 = *(v0 + 192);
  v8 = *(v0 + 200);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100862C0C, v6, v9);
}

uint64_t sub_10085F080()
{
  v1 = *(*v0 + 544);
  v2 = *(*v0 + 304);
  v3 = *(*v0 + 256);
  v4 = *(*v0 + 168);

  v1(v2, v3);

  return _swift_task_switch(sub_10085F218, v4, 0);
}

uint64_t sub_10085F218()
{
  v57 = v0;
  v1 = v0[25];
  if ((*(v0[27] + 48))(v1, 1, v0[26]) == 1)
  {
    sub_10000B3A8(v1, &qword_10169DBD8, &qword_1013BF910);
    if (qword_1016954F0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_10177CE28);
    sub_10001F280((v0 + 2), (v0 + 12));
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[80];
    if (v5)
    {
      v53 = v0[68];
      v54 = v0[81];
      v55 = v0[43];
      v7 = v0[38];
      v8 = v0[32];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v56 = v10;
      *v9 = 141558275;
      *(v9 + 4) = 1752392040;
      *(v9 + 12) = 2081;
      v12 = v0[15];
      v11 = v0[16];
      sub_1000035D0(v0 + 12, v12);
      (*(*(*(v11 + 8) + 8) + 32))(v12);
      sub_100045918(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      v53(v7, v8);
      sub_100007BAC(v0 + 12);
      v16 = sub_1000136BC(v13, v15, &v56);

      *(v9 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v3, v4, "No current advertisement status found for %{private,mask.hash}s to publish anonymously.", v9, 0x16u);
      sub_100007BAC(v10);

      sub_100016590(v6, v54);
      sub_1008647F4(v55, type metadata accessor for BeaconEstimatedLocation);
    }

    else
    {
      v32 = v0[43];
      sub_100016590(v0[80], v0[81]);

      sub_1008647F4(v32, type metadata accessor for BeaconEstimatedLocation);
      sub_100007BAC(v0 + 12);
    }

    v25 = v0[60];
  }

  else
  {
    v17 = v0[81];
    v18 = v0[80];
    v20 = v0[42];
    v19 = v0[43];
    v22 = v0[28];
    v21 = v0[29];
    v23 = v0[23];
    sub_100863808(v1, v21, type metadata accessor for BeaconStatus);
    sub_10086478C(v21, v22, type metadata accessor for BeaconStatus);
    sub_10086478C(v19, v20, type metadata accessor for BeaconEstimatedLocation);
    sub_100017D5C(v18, v17);
    sub_100860090(v18, v17, v22, v20, v23);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v0[60];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = sub_100A5C3FC(0, v25[2] + 1, 1, v0[60]);
    }

    v27 = v25[2];
    v26 = v25[3];
    if (v27 >= v26 >> 1)
    {
      v25 = sub_100A5C3FC((v26 > 1), v27 + 1, 1, v25);
    }

    v28 = v0[43];
    v29 = v0[29];
    v31 = v0[22];
    v30 = v0[23];
    sub_100016590(v0[80], v0[81]);
    sub_1008647F4(v29, type metadata accessor for BeaconStatus);
    sub_1008647F4(v28, type metadata accessor for BeaconEstimatedLocation);
    v25[2] = v27 + 1;
    sub_100863808(v30, v25 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v27, type metadata accessor for ObservedAdvertisement);
  }

  v33 = v0[79];
  v34 = v0[57];
  v35 = v0[59] + 1;
  sub_100007BAC(v0 + 2);
  if (v35 == v34)
  {
    if (qword_1016954F0 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1000076D4(v36, qword_10177CE28);
    swift_bridgeObjectRetain_n();

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v0[56];
    if (v39)
    {
      v41 = swift_slowAlloc();
      *v41 = 134218240;
      v42 = *(v40 + 16);

      *(v41 + 4) = v42;

      *(v41 + 12) = 2048;
      *(v41 + 14) = v25[2];
      swift_bridgeObjectRelease_n();
      _os_log_impl(&_mh_execute_header, v37, v38, "Unpublished anonymous payloads for %ld shared beacons found %ld to publish.", v41, 0x16u);
    }

    else
    {
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    v51 = v0[1];

    return v51(v25);
  }

  else
  {
    v43 = v0[59];
    v0[59] = v43 + 1;
    v0[60] = v25;
    v0[58] = v33;
    v44 = v0[53];
    v45 = v0[31];
    v46 = v0[20];
    sub_10001F280(v0[56] + 40 * v43 + 72, (v0 + 2));
    v47 = v0[5];
    v48 = v0[6];
    sub_1000035D0(v0 + 2, v47);
    (*(*(*(v48 + 8) + 8) + 32))(v47);
    v49 = type metadata accessor for Date();
    v50 = *(v49 - 8);
    (*(v50 + 16))(v45, v46, v49);
    (*(v50 + 56))(v45, 0, 1, v49);

    return _swift_task_switch(sub_10085D7D8, v44, 0);
  }
}

uint64_t sub_10085F9E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10085FB10()
{
  v0[77] = 0;
  v1 = v0[5];
  v2 = v0[6];
  sub_1000035D0(v0 + 2, v1);
  (*(*(*(v2 + 8) + 8) + 32))(v1);
  v3 = swift_task_alloc();
  v0[78] = v3;
  *v3 = v0;
  v3[1] = sub_10085E67C;
  v4 = v0[38];
  v5 = v0[30];

  return sub_100CFC71C(v5, v4);
}

uint64_t sub_10085FBFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for UUID();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = *(v6 + 64);
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_10085FCC8, v3, 0);
}

uint64_t sub_10085FCC8()
{
  v1 = *(*(v0 + 48) + 128);
  *(v0 + 88) = v1;
  return _swift_task_switch(sub_10085FCEC, v1, 0);
}

uint64_t sub_10085FCEC()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[7];
  (*(v3 + 16))(v1, v0[4], v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[12] = v6;
  *(v6 + 16) = v2;
  (*(v3 + 32))(v6 + v5, v1, v4);

  v7 = swift_task_alloc();
  v0[13] = v7;
  v8 = sub_1000BC4D4(&qword_101696970, &qword_10138C490);
  *v7 = v0;
  v7[1] = sub_10085FE64;

  return unsafeBlocking<A>(context:_:)(v0 + 2, 0xD000000000000010, 0x800000010134A8C0, sub_1008649CC, v6, v8);
}

uint64_t sub_10085FE64()
{
  v1 = *(*v0 + 88);

  return _swift_task_switch(sub_10085FF90, v1, 0);
}

uint64_t sub_10085FF90()
{
  v1 = v0[6];
  v0[14] = v0[2];
  return _swift_task_switch(sub_10085FFB4, v1, 0);
}

uint64_t sub_10085FFB4()
{
  v1 = v0[14];
  v2 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  *(v4 + 16) = &off_10160A2D0;
  *(v4 + 24) = v2;
  v5 = sub_10013D74C(sub_1008649AC, v4, v1);

  sub_1012BAB18(v5, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100860090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a1;
  v30 = a2;
  v8 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a3 + *(type metadata accessor for BeaconStatus(0) + 20));
  sub_1008647F4(a3, type metadata accessor for BeaconStatus);
  v16 = type metadata accessor for BeaconEstimatedLocation(0);
  sub_1000D3410(a4 + v16[12], v10);
  v17 = *(v12 + 48);
  if (v17(v10, 1, v11) == 1)
  {
    (*(v12 + 16))(v14, a4 + v16[10], v11);
    if (v17(v10, 1, v11) != 1)
    {
      sub_10000B3A8(v10, &unk_101696900, &unk_10138B1E0);
    }
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
  }

  v18 = type metadata accessor for ObservedAdvertisement(0);
  v19 = (a5 + v18[12]);
  v20 = *(a4 + v16[7]);
  v21 = *(a4 + v16[8]);
  v22 = v16[10];
  v23 = *(a4 + v16[9]);
  v24 = type metadata accessor for ObservedAdvertisement.Location(0);
  (*(v12 + 16))(&v19[*(v24 + 28)], a4 + v22, v11);
  sub_1008647F4(a4, type metadata accessor for BeaconEstimatedLocation);
  *v19 = v20;
  *(v19 + 1) = v21;
  *(v19 + 2) = v23;
  (*(*(v24 - 8) + 56))(v19, 0, 1, v24);
  v25 = v18[13];
  v26 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
  (*(*(v26 - 8) + 56))(a5 + v25, 1, 1, v26);
  *a5 = 0;
  *(a5 + 8) = 1;
  v27 = v30;
  *(a5 + 16) = v29;
  *(a5 + 24) = v27;
  *(a5 + 32) = v15 & 0xF0;
  *(a5 + 33) = 0;
  *(a5 + 35) = 1;
  *(a5 + 36) = -1;
  result = (*(v12 + 32))(a5 + v18[11], v14, v11);
  *(a5 + v18[14]) = 0;
  return result;
}

uint64_t sub_1008603F4()
{

  v1 = swift_task_alloc();
  *(v0 + 304) = v1;
  v2 = sub_1000BC4D4(&unk_1016AA410, &unk_101395200);
  *v1 = v0;
  v1[1] = sub_1008604E0;
  v3 = *(v0 + 232);

  return unsafeBlocking<A>(context:_:)(v0 + 112, 0xD000000000000010, 0x800000010134A8C0, sub_100259A64, v3, v2);
}

uint64_t sub_1008604E0()
{
  v1 = *(*v0 + 232);

  return _swift_task_switch(sub_1008605F8, v1, 0);
}

uint64_t sub_1008605F8()
{
  v1 = v0[15];
  v0[39] = v0[14];
  return _swift_task_switch(sub_100860618, v1, 0);
}

uint64_t sub_100860618(uint64_t a1, uint64_t a2)
{
  v3 = v2[39];
  v4 = v2[23];
  v5 = v2[15];
  v6 = sub_100045918(&qword_1016AB860, a2, type metadata accessor for DeviceBeaconPayloadPublisher, &unk_1013BF8D8);
  v7 = swift_task_alloc();
  v2[40] = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v3;
  v8 = swift_task_alloc();
  v2[41] = v8;
  *v8 = v2;
  v8[1] = sub_100860754;

  return withCheckedContinuation<A>(isolation:function:_:)(v8, v5, v6, 0xD000000000000018, 0x80000001013617E0, sub_100862B50, v7, &type metadata for () + 1);
}

uint64_t sub_100860754()
{
  v1 = *(*v0 + 120);

  return _swift_task_switch(sub_1008608A4, v1, 0);
}

uint64_t sub_1008608A4()
{
  v1 = *(v0 + 184);

  sub_1008647F4(v1, type metadata accessor for LocationFetcher);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100860958()
{

  v0[42] = v0[37];
  v1 = v0[15];

  return _swift_task_switch(sub_1008609D4, v1, 0);
}

uint64_t sub_1008609D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100860A74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100860B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a2;
  v5 = type metadata accessor for LocationFetcher(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = sub_1000BC4D4(&qword_1016972D8, &qword_1013AAC60);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - v10;
  (*(v9 + 16))(&v17 - v10, a1, v8);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  (*(v9 + 32))(v13 + v12, v11, v8);
  type metadata accessor for Transaction();
  sub_10086478C(v18, &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LocationFetcher);
  v14 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v15 = swift_allocObject();
  v15[2] = sub_100862B58;
  v15[3] = v13;
  v15[4] = a3;
  sub_100863808(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for LocationFetcher);

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100860D90()
{
  if (qword_1016954F0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000076D4(v0, qword_10177CE28);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Done fetching own device locations from disk before publishing own devices.", v3, 2u);
  }

  sub_1000BC4D4(&qword_1016972D8, &qword_1013AAC60);
  return CheckedContinuation.resume(returning:)();
}

void *sub_100860E8C()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100860EE4()
{
  sub_100860E8C();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100860F34(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for DeviceBeaconPayloadPublisher();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_100860FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for DeviceBeaconPayloadPublisher();
  *v8 = v4;
  v8[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v9, a4);
}

uint64_t sub_1008610A0(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for DeviceBeaconPayloadPublisher();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_100861148(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for DeviceBeaconPayloadPublisher();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.startup()(v5, a2);
}

uint64_t sub_1008611F0(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for DeviceBeaconPayloadPublisher();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.run()(v5, a2);
}

uint64_t sub_100861298()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000D2118;

  return sub_1008592CC();
}

uint64_t sub_100861328(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  *(v3 + 24) = swift_task_alloc();
  v4 = *v2;

  return _swift_task_switch(sub_1008613C4, v4, 0);
}

uint64_t sub_1008613C4()
{
  v1 = v0[3];
  sub_1000D3410(v0[2], v1);
  sub_1008629C0(v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10086143C()
{
  type metadata accessor for DeviceBeaconPayloadPublisher();
  sub_100045918(&qword_101698D50, v0, type metadata accessor for DeviceBeaconPayloadPublisher, &unk_1013BF878);
  return ActorServiceProtocol.description.getter();
}

double sub_100861534@<D0>(void (**a1)(char *, uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = sub_1000BC4D4(&qword_101698CC0, &unk_101390890);
  sub_100863870(a2, a3, v9, v10, a1 + *(v11 + 48), *(a1 + *(v11 + 64)), v15);
  if (!v4)
  {
    v13 = v17;
    v14 = v15[1];
    *a4 = v15[0];
    *(a4 + 16) = v14;
    result = *&v16;
    *(a4 + 32) = v16;
    *(a4 + 48) = v13;
  }

  return result;
}

uint64_t sub_1008615E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v5 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v27 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v27 - v15;
  v17 = type metadata accessor for BeaconEstimatedLocation(0);
  if (sub_10062CFC0(*(a1 + *(v17 + 44)), a2))
  {
    sub_1000D3410(v28, v10);
    v28 = v12;
    v18 = *(v12 + 48);
    if (v18(v10, 1, v11) == 1)
    {
      v19 = v10;
    }

    else
    {
      v21 = v10;
      v22 = *(v28 + 32);
      v22(v16, v21, v11);
      sub_1000D3410(a1 + *(v17 + 48), v8);
      if (v18(v8, 1, v11) != 1)
      {
        v23 = v27;
        v22(v27, v8, v11);
        sub_100045918(&qword_1016C9070, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v24 = dispatch thunk of static Comparable.< infix(_:_:)();
        v25 = *(v28 + 8);
        v25(v23, v11);
        v25(v16, v11);
        v20 = v24 ^ 1;
        return v20 & 1;
      }

      (*(v28 + 8))(v16, v11);
      v19 = v8;
    }

    sub_10000B3A8(v19, &unk_101696900, &unk_10138B1E0);
    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_1008618F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[9] = *(type metadata accessor for MemberSharingCircle(0) - 8);
  v5[10] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016AB8A0, &unk_1013BF990);
  v5[11] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v5[12] = v7;
  v8 = *(v7 - 8);
  v5[13] = v8;
  v5[14] = *(v8 + 64);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_100861A60, a5, 0);
}

uint64_t sub_100861A60()
{
  v1 = *(v0[7] + 16);
  v0[17] = v1;
  if (!v1)
  {
LABEL_8:

    v8 = v0[1];

    return v8();
  }

  v2 = 0;
  while (1)
  {
    v0[18] = v2;
    v3 = *(v0[7] + 8 * v2 + 32);
    v0[19] = v3;
    v0[4] = v3;
    swift_errorRetain();
    swift_errorRetain();
    v0[20] = sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v4 = type metadata accessor for DeviceBeaconPayloadPublisher.PublishError(0);
    v5 = swift_dynamicCast();
    v6 = v0[11];
    if (v5)
    {
      break;
    }

    (*(*(v4 - 8) + 56))(v6, 1, 1, v4);
    sub_10000B3A8(v6, &qword_1016AB8A0, &unk_1013BF990);
LABEL_4:
    v2 = v0[18] + 1;
    if (v2 == v0[17])
    {
      goto LABEL_8;
    }
  }

  (*(*(v4 - 8) + 56))(v0[11], 0, 1, v4);
  if (swift_getEnumCaseMultiPayload())
  {
    v7 = v0[11];

    sub_1008647F4(v7, type metadata accessor for DeviceBeaconPayloadPublisher.PublishError);
    goto LABEL_4;
  }

  v10 = v0[16];
  v11 = v0[12];
  v12 = v0[13];
  v13 = v0[11];
  v14 = v0[8];
  v0[21] = *(v13 + *(sub_1000BC4D4(&qword_1016AB8A8, &unk_1013BF9A0) + 48));
  v15 = *(v12 + 32);
  v0[22] = v15;
  v0[23] = (v12 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v15(v10, v13, v11);
  swift_errorRetain();
  v16 = *(v14 + 128);
  v0[24] = v16;

  return _swift_task_switch(sub_100861D14, v16, 0);
}

uint64_t sub_100861D14()
{
  v1 = v0[24];
  v2 = v0[22];
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[12];
  (*(v4 + 16))(v3, v0[16], v5);
  v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = swift_allocObject();
  v0[25] = v7;
  *(v7 + 16) = v1;
  v2(v7 + v6, v3, v5);

  v8 = swift_task_alloc();
  v0[26] = v8;
  v9 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v8 = v0;
  v8[1] = sub_100861E80;

  return unsafeBlocking<A>(context:_:)(v0 + 5, 0xD000000000000010, 0x800000010134A8C0, sub_1008646EC, v7, v9);
}

uint64_t sub_100861E80()
{
  v1 = *(*v0 + 192);

  return _swift_task_switch(sub_100861FAC, v1, 0);
}

uint64_t sub_100861FAC()
{
  v1 = v0[8];
  v0[27] = v0[5];
  return _swift_task_switch(sub_100861FD0, v1, 0);
}

uint64_t sub_100861FD0()
{
  v1 = *(v0 + 216);
  v2 = *(v1 + 16);
  *(v0 + 224) = v2;
  if (!v2)
  {
LABEL_12:
    v8 = *(v0 + 128);
    v9 = *(v0 + 96);
    v10 = *(v0 + 104);

    (*(v10 + 8))(v8, v9);
    v11 = *(v0 + 144) + 1;
    if (v11 == *(v0 + 136))
    {
LABEL_13:

      v12 = *(v0 + 8);

      return v12();
    }

    while (1)
    {
      *(v0 + 144) = v11;
      v14 = *(*(v0 + 56) + 8 * v11 + 32);
      *(v0 + 152) = v14;
      *(v0 + 32) = v14;
      swift_errorRetain();
      swift_errorRetain();
      *(v0 + 160) = sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v15 = type metadata accessor for DeviceBeaconPayloadPublisher.PublishError(0);
      v16 = swift_dynamicCast();
      v17 = *(v0 + 88);
      if (v16)
      {
        (*(*(v15 - 8) + 56))(*(v0 + 88), 0, 1, v15);
        if (!swift_getEnumCaseMultiPayload())
        {
          v21 = *(v0 + 128);
          v22 = *(v0 + 96);
          v23 = *(v0 + 104);
          v24 = *(v0 + 88);
          v25 = *(v0 + 64);
          *(v0 + 168) = *(v24 + *(sub_1000BC4D4(&qword_1016AB8A8, &unk_1013BF9A0) + 48));
          v26 = *(v23 + 32);
          *(v0 + 176) = v26;
          *(v0 + 184) = (v23 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
          v26(v21, v24, v22);
          swift_errorRetain();
          v27 = *(v25 + 128);
          *(v0 + 192) = v27;

          return _swift_task_switch(sub_100861D14, v27, 0);
        }

        v18 = *(v0 + 88);

        sub_1008647F4(v18, type metadata accessor for DeviceBeaconPayloadPublisher.PublishError);
      }

      else
      {

        (*(*(v15 - 8) + 56))(v17, 1, 1, v15);
        sub_10000B3A8(v17, &qword_1016AB8A0, &unk_1013BF990);
      }

      v11 = *(v0 + 144) + 1;
      if (v11 == *(v0 + 136))
      {
        goto LABEL_13;
      }
    }
  }

  *(v0 + 28) = *(*(v0 + 72) + 80);
  *(v0 + 232) = 0;
  if (!*(v1 + 16))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v3 = 0;
  while (1)
  {
    v4 = *(v0 + 168);
    sub_10086478C(v1 + ((*(v0 + 28) + 32) & ~*(v0 + 28)) + *(*(v0 + 72) + 72) * v3, *(v0 + 80), type metadata accessor for MemberSharingCircle);
    *(v0 + 48) = v4;
    swift_errorRetain();
    if (swift_dynamicCast())
    {
      if (*(v0 + 24) == 1 && *(v0 + 16) > 5uLL)
      {
        break;
      }
    }

    v6 = *(v0 + 224);
    v7 = *(v0 + 232) + 1;
    sub_1008647F4(*(v0 + 80), type metadata accessor for MemberSharingCircle);
    if (v7 == v6)
    {
      goto LABEL_12;
    }

    v3 = *(v0 + 232) + 1;
    *(v0 + 232) = v3;
    v1 = *(v0 + 216);
    if (v3 >= *(v1 + 16))
    {
      goto LABEL_11;
    }
  }

  v19 = swift_task_alloc();
  *(v0 + 240) = v19;
  *v19 = v0;
  v19[1] = sub_10086243C;
  v20 = *(v0 + 80);

  return sub_10107F924(v20);
}

uint64_t sub_10086243C()
{
  v1 = *(*v0 + 64);

  return _swift_task_switch(sub_10086254C, v1, 0);
}

uint64_t sub_10086254C()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232) + 1;
  v3 = sub_1008647F4(*(v0 + 80), type metadata accessor for MemberSharingCircle);
  if (v2 != v1)
  {
    do
    {
      v14 = *(v0 + 232) + 1;
      *(v0 + 232) = v14;
      v15 = *(v0 + 216);
      if (v14 >= *(v15 + 16))
      {
        __break(1u);
        return _swift_task_switch(v3, v4, v5);
      }

      v16 = *(v0 + 168);
      sub_10086478C(v15 + ((*(v0 + 28) + 32) & ~*(v0 + 28)) + *(*(v0 + 72) + 72) * v14, *(v0 + 80), type metadata accessor for MemberSharingCircle);
      *(v0 + 48) = v16;
      swift_errorRetain();
      if (swift_dynamicCast() && *(v0 + 24) == 1 && *(v0 + 16) > 5uLL)
      {
        v17 = swift_task_alloc();
        *(v0 + 240) = v17;
        *v17 = v0;
        v17[1] = sub_10086243C;
        v18 = *(v0 + 80);

        return sub_10107F924(v18);
      }

      v12 = *(v0 + 224);
      v13 = *(v0 + 232) + 1;
      v3 = sub_1008647F4(*(v0 + 80), type metadata accessor for MemberSharingCircle);
    }

    while (v13 != v12);
  }

  v6 = *(v0 + 128);
  v7 = *(v0 + 96);
  v8 = *(v0 + 104);

  (*(v8 + 8))(v6, v7);
  v9 = *(v0 + 144) + 1;
  if (v9 == *(v0 + 136))
  {
LABEL_3:

    v10 = *(v0 + 8);

    return v10();
  }

  while (1)
  {
    *(v0 + 144) = v9;
    v19 = *(*(v0 + 56) + 8 * v9 + 32);
    *(v0 + 152) = v19;
    *(v0 + 32) = v19;
    swift_errorRetain();
    swift_errorRetain();
    *(v0 + 160) = sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v20 = type metadata accessor for DeviceBeaconPayloadPublisher.PublishError(0);
    v21 = swift_dynamicCast();
    v22 = *(v0 + 88);
    if (v21)
    {
      break;
    }

    (*(*(v20 - 8) + 56))(v22, 1, 1, v20);
    sub_10000B3A8(v22, &qword_1016AB8A0, &unk_1013BF990);
LABEL_17:
    v9 = *(v0 + 144) + 1;
    if (v9 == *(v0 + 136))
    {
      goto LABEL_3;
    }
  }

  (*(*(v20 - 8) + 56))(*(v0 + 88), 0, 1, v20);
  if (swift_getEnumCaseMultiPayload())
  {
    v23 = *(v0 + 88);

    sub_1008647F4(v23, type metadata accessor for DeviceBeaconPayloadPublisher.PublishError);
    goto LABEL_17;
  }

  v24 = *(v0 + 128);
  v25 = *(v0 + 96);
  v26 = *(v0 + 104);
  v27 = *(v0 + 88);
  v28 = *(v0 + 64);
  *(v0 + 168) = *(v27 + *(sub_1000BC4D4(&qword_1016AB8A8, &unk_1013BF9A0) + 48));
  v29 = *(v26 + 32);
  *(v0 + 176) = v29;
  *(v0 + 184) = (v26 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v29(v24, v27, v25);
  swift_errorRetain();
  v4 = *(v28 + 128);
  *(v0 + 192) = v4;
  v3 = sub_100861D14;
  v5 = 0;

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1008629C0(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = [objc_opt_self() standardUserDefaults];
  sub_1000D3410(a1, v4);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  isa = 0;
  if ((*(v7 + 48))(v4, 1, v6) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v7 + 8))(v4, v6);
  }

  v9 = String._bridgeToObjectiveC()();
  [v5 setObject:isa forKey:v9];

  swift_unknownObjectRelease();
  return sub_10000B3A8(a1, &unk_101696900, &unk_10138B1E0);
}

uint64_t sub_100862B58()
{
  sub_1000BC4D4(&qword_1016972D8, &qword_1013AAC60);

  return sub_100860D90();
}

uint64_t sub_100862C0C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100E71E90(v4, a1);
}

void sub_100862C80(uint64_t *a1@<X8>)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80));
  sub_1012DFD84(v5, *(v5 + *(v4 + 64)));
  if (!v2)
  {
    *a1 = v6;
    a1[1] = v7;
    a1[2] = v8;
    a1[3] = v9;
  }
}

uint64_t sub_100862D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void (*a4)(char *, unint64_t)@<X3>, uint64_t **a5@<X8>)
{
  v86 = a3;
  v87 = a4;
  v79 = a1;
  v80 = a5;
  v6 = type metadata accessor for UUID();
  v82 = *(v6 - 8);
  v83 = v6;
  __chkstk_darwin(v6);
  v81 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OwnSubmitLocationInfo(0);
  v9 = *(v8 - 8);
  v76 = v8;
  v77 = v9;
  __chkstk_darwin(v8);
  v78 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v11 - 8);
  v84 = &v73 - v12;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v75 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v73 - v17;
  v19 = type metadata accessor for BeaconPayloadv1(0);
  v20 = __chkstk_darwin(v19);
  v22 = (&v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v88 = (&v73 - v23);
  v24 = type metadata accessor for BeaconEstimatedLocation(0);
  v25 = *(a2 + v24[9]);
  v26 = sub_10030B660(v25);
  v27 = *(v14 + 16);
  v28 = (a2 + v24[10]);
  v89 = v13;
  v74 = v27;
  v27(v18, v28, v13);
  v29 = *(a2 + v24[7]);
  v30 = *(a2 + v24[8]);
  Date.timeIntervalSinceReferenceDate.getter();
  if (v31 < 0.0 || v31 > 4294967300.0)
  {
    v33 = static os_log_type_t.error.getter();
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v34 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v33, &_mh_execute_header, v34, "BeaconPayloadv1: Invalid timestamp", 34, 2, _swiftEmptyArrayStorage);
    v35 = 1;
LABEL_24:

    sub_100863768();
    swift_allocError();
    *v64 = v35;
    swift_willThrow();
    return (*(v14 + 8))(v18, v89);
  }

  if (fabs(v29) > 90.0 || fabs(v30) > 180.0)
  {
    v63 = static os_log_type_t.error.getter();
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v34 = static OS_os_log.default.getter();
    v35 = 2;
    os_log(_:dso:log:_:_:)(v63, &_mh_execute_header, v34, "BeaconPayloadv1: Invalid coordinates", 36, 2, _swiftEmptyArrayStorage);
    goto LABEL_24;
  }

  v36 = v86;
  v37 = v87;
  *v22 = v86;
  v22[1] = v37;
  sub_100017D5C(v36, v37);
  Date.timeIntervalSinceReferenceDate.getter();
  if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v38 <= -1.0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v38 >= 4294967300.0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  Date.init(timeIntervalSinceReferenceDate:)();
  v39 = v18;
  v40 = v89;
  v87 = *(v14 + 8);
  v87(v39, v89);
  *(v22 + v19[6]) = v26;
  v41 = v29 * 10000000.0;
  if (COERCE__INT64(fabs(v29 * 10000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v41 <= -2147483650.0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v41 >= 2147483650.0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  *(v22 + v19[7]) = v41 / 10000000.0;
  v42 = v30 * 10000000.0;
  if (COERCE__INT64(fabs(v30 * 10000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v42 <= -2147483650.0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v42 >= 2147483650.0)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
LABEL_21:
    v51 = type metadata accessor for Logger();
    sub_1000076D4(v51, qword_10177CE28);
    v53 = v81;
    v52 = v82;
    v54 = v83;
    (*(v82 + 16))(v81, v79, v83);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v92 = v58;
      *v57 = 141558275;
      *(v57 + 4) = 1752392040;
      *(v57 + 12) = 2081;
      sub_100045918(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v60;
      (*(v52 + 8))(v53, v54);
      v62 = sub_1000136BC(v59, v61, &v92);
      v19 = v88;

      *(v57 + 14) = v62;
      _os_log_impl(&_mh_execute_header, v55, v56, "location does not contain a scanDate %{private,mask.hash}s", v57, 0x16u);
      sub_100007BAC(v58);
    }

    else
    {

      (*(v52 + 8))(v53, v54);
    }

    type metadata accessor for DeviceBeaconPayloadPublisher.PublishError(0);
    sub_100045918(&qword_1016AB878, 255, type metadata accessor for DeviceBeaconPayloadPublisher.PublishError, "i7$");
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_100016590(v85, v86);
    sub_100016590(v73, v89);
    return sub_1008647F4(v19, type metadata accessor for BeaconPayloadv1);
  }

  *(v22 + v19[8]) = v42 / 10000000.0;
  *(v22 + v19[9]) = v25;
  *(v22 + v19[10]) = 0;
  v19 = v88;
  sub_100863808(v22, v88, type metadata accessor for BeaconPayloadv1);
  v43 = v85;
  v44 = BeaconPayloadv1.encode()();
  if (!v43)
  {
    v73 = v46;
    v48 = v47;
    v85 = v44;
    v86 = v45;
    v49 = a2 + v24[12];
    v50 = v84;
    sub_1000D3410(v49, v84);
    if ((*(v14 + 48))(v50, 1, v40) != 1)
    {
      v66 = v75;
      (*(v14 + 32))(v75, v50, v40);
      v67 = v78;
      v74(&v78[*(v76 + 20)], v66, v40);
      *v67 = v73;
      v67[1] = v48;
      sub_1000BC4D4(&qword_1016AB880, &unk_1013E3620);
      v68 = v40;
      v69 = (*(v77 + 80) + 32) & ~*(v77 + 80);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_101385D80;
      sub_100863808(v67, v70 + v69, type metadata accessor for OwnSubmitLocationInfo);
      v87(v66, v68);
      result = sub_1008647F4(v19, type metadata accessor for BeaconPayloadv1);
      v71 = v86;
      v72 = v80;
      *v80 = v85;
      v72[1] = v71;
      *(v72 + 16) = 1;
      *(v72 + 17) = v92;
      *(v72 + 5) = *(&v92 + 3);
      v72[3] = 0;
      v72[4] = 0;
      *(v72 + 20) = 6;
      *(v72 + 42) = v90;
      *(v72 + 23) = v91;
      v72[6] = v70;
      return result;
    }

    v89 = v48;
    sub_10000B3A8(v50, &unk_101696900, &unk_10138B1E0);
    if (qword_1016954F0 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_38;
  }

  return sub_1008647F4(v19, type metadata accessor for BeaconPayloadv1);
}

unint64_t sub_100863768()
{
  result = qword_1016AB870;
  if (!qword_1016AB870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AB870);
  }

  return result;
}

uint64_t type metadata accessor for DeviceBeaconPayloadPublisher.PublishError(uint64_t a1)
{
  result = qword_1016AB920;
  if (!qword_1016AB920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100863808(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100863870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t *a7@<X8>)
{
  v92 = a6;
  v89 = a5;
  v90 = a1;
  v100 = a3;
  v101 = a4;
  v93 = a7;
  v8 = type metadata accessor for UUID();
  v94 = *(v8 - 8);
  v95 = v8;
  __chkstk_darwin(v8);
  v91 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OwnSubmitLocationInfo(0);
  v11 = *(v10 - 8);
  v86 = v10;
  v87 = v11;
  __chkstk_darwin(v10);
  v88 = (&v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v13 - 8);
  v96 = &v82 - v14;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v97 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v82 - v19;
  v21 = type metadata accessor for BeaconPayloadv1(0);
  v22 = __chkstk_darwin(v21);
  v24 = (&v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v99 = &v82 - v25;
  v26 = type metadata accessor for BeaconEstimatedLocation(0);
  v27 = *(a2 + v26[9]);
  v28 = sub_10030B660(v27);
  v29 = *(v16 + 16);
  v30 = (a2 + v26[10]);
  v102 = v15;
  v85 = v29;
  v29(v20, v30, v15);
  v31 = *(a2 + v26[7]);
  v32 = *(a2 + v26[8]);
  Date.timeIntervalSinceReferenceDate.getter();
  if (v33 < 0.0 || v33 > 4294967300.0)
  {
    v35 = static os_log_type_t.error.getter();
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v36 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v35, &_mh_execute_header, v36, "BeaconPayloadv1: Invalid timestamp", 34, 2, _swiftEmptyArrayStorage);
    v37 = 1;
LABEL_24:

    sub_100863768();
    swift_allocError();
    *v67 = v37;
    swift_willThrow();
    return (*(v16 + 8))(v20, v102);
  }

  if (fabs(v31) > 90.0 || fabs(v32) > 180.0)
  {
    v66 = static os_log_type_t.error.getter();
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v36 = static OS_os_log.default.getter();
    v37 = 2;
    os_log(_:dso:log:_:_:)(v66, &_mh_execute_header, v36, "BeaconPayloadv1: Invalid coordinates", 36, 2, _swiftEmptyArrayStorage);
    goto LABEL_24;
  }

  v38 = v100;
  v39 = v101;
  *v24 = v100;
  v24[1] = v39;
  sub_100017D5C(v38, v39);
  Date.timeIntervalSinceReferenceDate.getter();
  if ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v40 <= -1.0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v40 >= 4294967300.0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  Date.init(timeIntervalSinceReferenceDate:)();
  v100 = *(v16 + 8);
  v100(v20, v102);
  *(v24 + v21[6]) = v28;
  v41 = v31 * 10000000.0;
  if (COERCE__INT64(fabs(v31 * 10000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v41 <= -2147483650.0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v41 >= 2147483650.0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  *(v24 + v21[7]) = v41 / 10000000.0;
  v42 = v32 * 10000000.0;
  if (COERCE__INT64(fabs(v32 * 10000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v42 <= -2147483650.0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v42 >= 2147483650.0)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
LABEL_21:
    v52 = type metadata accessor for Logger();
    sub_1000076D4(v52, qword_10177CE28);
    v54 = v94;
    v53 = v95;
    v55 = v91;
    (*(v94 + 16))(v91, v90, v95);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v83 = v28;
      v59 = v58;
      v60 = swift_slowAlloc();
      v105 = v60;
      *v59 = 141558275;
      *(v59 + 4) = 1752392040;
      *(v59 + 12) = 2081;
      sub_100045918(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = v55;
      v64 = v63;
      (*(v54 + 8))(v62, v53);
      v65 = sub_1000136BC(v61, v64, &v105);

      *(v59 + 14) = v65;
      _os_log_impl(&_mh_execute_header, v56, v57, "location does not contain a scanDate %{private,mask.hash}s", v59, 0x16u);
      sub_100007BAC(v60);

      v28 = v83;
    }

    else
    {

      (*(v54 + 8))(v55, v53);
    }

    type metadata accessor for DeviceBeaconPayloadPublisher.PublishError(0);
    sub_100045918(&qword_1016AB878, 255, type metadata accessor for DeviceBeaconPayloadPublisher.PublishError, "i7$");
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_100016590(v102, v101);
    sub_100016590(v28, v98);
    return sub_1008647F4(v20, type metadata accessor for BeaconPayloadv1);
  }

  v84 = v16 + 8;
  *(v24 + v21[8]) = v42 / 10000000.0;
  *(v24 + v21[9]) = v27;
  *(v24 + v21[10]) = 0;
  v20 = v99;
  sub_100863808(v24, v99, type metadata accessor for BeaconPayloadv1);
  v43 = v98;
  v44 = BeaconPayloadv1.encode()();
  v101 = v47;
  if (!v43)
  {
    v28 = v45;
    v98 = v46;
    v48 = v44;
    v49 = a2 + v26[12];
    v50 = v96;
    sub_1000D3410(v49, v96);
    v51 = v102;
    if ((*(v16 + 48))(v50, 1, v102) != 1)
    {
      v69 = v97;
      (*(v16 + 32))(v97, v50, v51);
      v70 = v88;
      v85(v88 + *(v86 + 20), v69, v51);
      *v70 = v28;
      v71 = v28;
      v83 = v28;
      v72 = v98;
      v70[1] = v98;
      sub_100017D5C(v71, v72);
      v73 = v48;
      v74 = v101;
      sub_100017D5C(v48, v101);
      v75 = UUID.uuidString.getter();
      v95 = v76;
      v96 = v75;
      v77 = v74;
      sub_1000BC4D4(&qword_1016AB880, &unk_1013E3620);
      v78 = (*(v87 + 80) + 32) & ~*(v87 + 80);
      v79 = swift_allocObject();
      *(v79 + 16) = xmmword_101385D80;
      sub_100863808(v70, v79 + v78, type metadata accessor for OwnSubmitLocationInfo);
      sub_100016590(v73, v77);
      sub_100016590(v83, v72);
      v100(v97, v51);
      result = sub_1008647F4(v20, type metadata accessor for BeaconPayloadv1);
      v80 = v93;
      *v93 = v73;
      v80[1] = v77;
      *(v80 + 16) = 2;
      *(v80 + 17) = v105;
      *(v80 + 5) = *(&v105 + 3);
      v81 = v95;
      v80[3] = v96;
      v80[4] = v81;
      *(v80 + 40) = v92;
      *(v80 + 41) = 1;
      *(v80 + 42) = v103;
      *(v80 + 23) = v104;
      v80[6] = v79;
      return result;
    }

    v102 = v48;
    sub_10000B3A8(v50, &unk_101696900, &unk_10138B1E0);
    if (qword_1016954F0 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_38;
  }

  return sub_1008647F4(v20, type metadata accessor for BeaconPayloadv1);
}

unint64_t sub_100864318()
{
  result = qword_1016AB888;
  if (!qword_1016AB888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AB888);
  }

  return result;
}

uint64_t sub_10086436C()
{
  v2 = *(type metadata accessor for Date() - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = *(v0 + 56);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_10085621C(v0 + 16, v4, v0 + v3);
}

uint64_t sub_10086444C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100856668(a1, v4);
}

uint64_t sub_100864504(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_100857980(a1, v4, v5, v7, v6);
}

uint64_t sub_1008645C4(void (*a1)(void), void (*a2)(void))
{
  swift_unknownObjectRelease();
  a1(*(v2 + 32));
  a2(*(v2 + 40));

  return _swift_deallocObject(v2, 48);
}

uint64_t sub_10086462C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_1008618F8(a1, v4, v5, v7, v6);
}

uint64_t sub_100864704(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_10086478C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1008647F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100864854(uint64_t a1)
{
  sub_1008648C8(319);
  if (v1 <= 0x3F)
  {
    sub_100864948(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1008648C8(uint64_t a1)
{
  if (!qword_1016AB930)
  {
    type metadata accessor for UUID();
    sub_1000BC580(&qword_101696960, &unk_10138B220);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1016AB930);
    }
  }
}

void sub_100864948(uint64_t a1)
{
  if (!qword_1016AB938)
  {
    sub_1000BC580(&qword_101696960, &unk_10138B220);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_1016AB938);
    }
  }
}

uint64_t sub_1008649D0()
{
  swift_unknownObjectRelease();
  sub_1000BB27C(*(v0 + 32), *(v0 + 40));

  v1 = OBJC_IVAR____TtC12searchpartyd40SelfLocatingBeaconPayloadCacheSubscriber_lastPublishedDate;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SelfLocatingBeaconPayloadCacheSubscriber(uint64_t a1)
{
  result = qword_1016AB9A0;
  if (!qword_1016AB9A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100864AE8(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100864B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 256) = a1;
  *(v4 + 264) = v3;
  if (a2)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  return _swift_task_switch(sub_100864C2C, v5, v7);
}

uint64_t sub_100864C2C()
{
  v73 = v0;
  if (static Task<>.isCancelled.getter())
  {
    v7 = 0;
    v6 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v8 = 0xF000000000000000;
  }

  else
  {
    v1 = *(v0 + 264);
    v3 = *(v1 + 16);
    v2 = *(v1 + 32);
    v4 = *(v1 + 48);
    *(v0 + 80) = *(v1 + 64);
    *(v0 + 48) = v2;
    *(v0 + 64) = v4;
    *(v0 + 32) = v3;
    *(v0 + 16) = *v1;
    v69 = *v1;
    v70 = *(v1 + 8);
    v65 = *(v1 + 24);
    v67 = *(v1 + 16);
    v5 = *(v1 + 56);
    v7 = *(v0 + 64);
    v6 = *(v0 + 72);
    v8 = *(v0 + 80);
    v9 = *(v1 + 64);
    sub_100429C24(v0 + 16, v0 + 88);
    sub_100017D5C(v6, v8);
    sub_100017D5C(v5, v9);
    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    *(v0 + 88) = 0x7365547265646E75;
    *(v0 + 96) = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    v10 = sub_100A7563C(v5, v9, 1);
    v12 = v11;
    v63 = v9;
    v64 = v5;
    v13 = v10;
    v14 = String.utf8Data.getter();
    v16 = v15;
    v17 = sub_100A79CBC(v13, v12, v14, v15, 72);
    v62 = v13;
    sub_100495DF4(v17, v18, &v71);
    sub_100016590(v14, v16);
    v28 = v72;
    v61 = v71;
    if (v70 >> 60 == 15)
    {
      sub_100017D5C(v71, v72);
      v29 = sub_100A7A194(v67, v65, 0, 0);
      v66 = v12;
      v31 = v28;
      v32 = sub_100A7A73C(v29, 0, v61, v28);
      CCECCryptorRelease();
      sub_100016590(v61, v31);
      v35 = sub_100A7829C(v32, 0, 0);
      v68 = v31;
      v37 = v36;
      sub_100017D5C(v35, v36);
      v38 = v37;
      v39 = sub_10049C0AC(v35, v37);
      v42 = v41;
      v43 = v39;
      CCECCryptorRelease();
      sub_100016590(v35, v38);
      v45 = v69;
      v44 = v70;
    }

    else
    {
      sub_10002E98C(v69, v70);
      v68 = v28;
      sub_100017D5C(v61, v28);
      v30 = sub_100A7A194(v69, v70, 0, 1);
      v66 = v12;
      v33 = sub_100A7A73C(v30, 1uLL, v61, v28);
      CCECCryptorRelease();
      sub_100016590(v61, v28);
      v34 = sub_100A7829C(v33, 1, 0);
      v59 = v40;
      v60 = v34;
      v55 = sub_100A7829C(v33, 0, 0);
      v56 = v46;
      sub_100017D5C(v60, v59);
      v53 = sub_10049BD68(v60, v59);
      v54 = v47;
      sub_100017D5C(v55, v56);
      v52 = sub_10049C0AC(v55, v56);
      v58 = v50;
      CCECCryptorRelease();
      sub_100016590(v55, v56);
      sub_100016590(v60, v59);
      sub_100006654(v69, v70);
      v43 = v52;
      v45 = v53;
      v42 = v58;
      v44 = v54;
    }

    v57 = v42;
    *(v0 + 160) = v45;
    *(v0 + 168) = v44;
    *(v0 + 176) = v43;
    *(v0 + 184) = v42;
    *(v0 + 192) = v62;
    *(v0 + 200) = v66;
    sub_10099B218(v0 + 160, (v1 + 48), (v1 + 56), v0 + 208);
    v51 = v43;
    v19 = *(v0 + 208);
    v20 = *(v0 + 216);
    v48 = v44;
    v49 = v45;
    v21 = *(v0 + 224);
    v22 = *(v0 + 232);
    v23 = *(v0 + 240);
    v24 = *(v0 + 248);
    sub_100006654(v49, v48);
    sub_100016590(v51, v57);
    sub_100016590(v62, v66);
    sub_100016590(v61, v68);
    sub_100429C80(v0 + 16);
    sub_100016590(v64, v63);
  }

  v25 = *(v0 + 256);
  *v25 = v7;
  v25[1] = v6;
  v25[2] = v8;
  v25[3] = v19;
  v25[4] = v20;
  v25[5] = v21;
  v25[6] = v22;
  v25[7] = v23;
  v25[8] = v24;
  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1008653D0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (!*(*v1 + 16))
  {
    v13 = type metadata accessor for BeaconKeyServiceBuilder.WorkItem(0);
    v9 = *(*(v13 - 8) + 56);
    v12 = v13;
    v10 = a1;
    v11 = 1;
    goto LABEL_6;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1006073C4(v3);
    v3 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_10:
    __break(1u);
    return result;
  }

  v5 = v3[2];
  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_4:
  v6 = v5 - 1;
  v7 = type metadata accessor for BeaconKeyServiceBuilder.WorkItem(0);
  v14 = *(v7 - 8);
  v8 = v3 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v6;
  v3[2] = v6;
  *v1 = v3;
  sub_10087EE70(v8, a1, type metadata accessor for BeaconKeyServiceBuilder.WorkItem);
  v9 = *(v14 + 56);
  v10 = a1;
  v11 = 0;
  v12 = v7;
LABEL_6:

  return v9(v10, v11, 1, v12);
}

Swift::Int sub_10086558C(uint64_t *a1)
{
  v2 = *(type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100B321C4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_10087B4D0(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_100865634(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100B321D8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_10087B5FC(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1008656AC()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  v20 = 0x7365547265646E75;
  v21 = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (v22 == 1)
  {
    v8 = NSTemporaryDirectory();
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v20 = v9;
    v21 = v11;
    v12._countAndFlagsBits = 0x2F7370614D79654BLL;
    v12._object = 0xE800000000000000;
    String.append(_:)(v12);
    UUID.init()();
    v13 = UUID.uuidString.getter();
    v15 = v14;
    (*(v5 + 8))(v7, v4);
    v16._countAndFlagsBits = v13;
    v16._object = v15;
    String.append(_:)(v16);

    URL.init(fileURLWithPath:)();
  }

  else
  {
    if (qword_101694C10 != -1)
    {
      swift_once();
    }

    v18 = sub_1000076D4(v0, qword_10177BA58);
    (*(v1 + 16))(v3, v18, v0);
    URL.appendingPathComponent(_:isDirectory:)();
    return (*(v1 + 8))(v3, v0);
  }
}

uint64_t sub_1008659A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_defaultActor_initialize();
  *(v2 + 112) = 0x7972616D697250;
  *(v2 + 120) = 0xE700000000000000;
  *(v2 + 128) = 0x7261646E6F636553;
  *(v2 + 136) = 0xE900000000000079;
  *(v2 + 152) = _swiftEmptyDictionarySingleton;
  *(v2 + 160) = _swiftEmptyDictionarySingleton;
  *(v2 + 168) = 4000;
  *(v2 + 176) = 0u;
  v6 = v2 + 176;
  *(v2 + 192) = 0u;
  *(v2 + 208) = 0;
  sub_1008656AC();
  *(v2 + 144) = a1;
  v7 = qword_101694FA8;

  if (v7 != -1)
  {
    swift_once();
  }

  *&v10[0] = 0x7365547265646E75;
  *(&v10[0] + 1) = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();

  if (v9 == 1)
  {
    swift_beginAccess();
    sub_100884624(a2, v6);
  }

  else
  {
    sub_10000B3A8(a2, &qword_1016ABF48, &qword_1013BFE28);
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    swift_beginAccess();
    sub_100884624(v10, v6);
  }

  swift_endAccess();
  return v3;
}

uint64_t sub_100865B90()
{
  v1 = *(v0 + 120);
  swift_beginAccess();
  sub_1000D2A70(v1 + 176, v0 + 56, &qword_1016ABF48, &qword_1013BFE28);
  if (*(v0 + 80))
  {
    v2 = *(v0 + 120);
    sub_10000A748((v0 + 56), v0 + 16);
    v3 = *(v0 + 40);
    v4 = *(v0 + 48);
    sub_1000035D0((v0 + 16), v3);
    (*(v4 + 8))(v2 + OBJC_IVAR____TtC12searchpartyd23BeaconKeyServiceBuilder_keyMapDirectory, v3, v4);
    sub_100007BAC((v0 + 16));
  }

  else
  {
    sub_10000B3A8(v0 + 56, &qword_1016ABF48, &qword_1013BFE28);
  }

  sub_100866870();
  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  *v5 = v0;
  v5[1] = sub_100865E18;

  return sub_100865F0C();
}

uint64_t sub_100865E18()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100865F0C()
{
  v1[8] = v0;
  v2 = type metadata accessor for BeaconKeyServiceBuilder.FileKey(0);
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  type metadata accessor for BeaconIdentifier(0);
  v1[12] = swift_task_alloc();
  v3 = type metadata accessor for KeyGenerationBeaconInfo(0);
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();

  return _swift_task_switch(sub_100866054, v0, 0);
}

uint64_t sub_100866054()
{
  v1 = v0;
  v2 = sub_1009BFDBC(*(v0[8] + 144));
  v51 = *(v2 + 16);
  if (!v51)
  {
LABEL_49:

    if (qword_101694A00 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    v44 = v1;
    sub_1000076D4(v43, qword_1016ABAA8);

    v4 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    v46 = os_log_type_enabled(v4, v45);
    v47 = v44[8];
    if (v46)
    {
      v48 = swift_slowAlloc();
      *v48 = 134217984;
      v11 = v44;
      swift_beginAccess();
      *(v48 + 4) = *(*(v47 + 160) + 16);

      _os_log_impl(&_mh_execute_header, v4, v45, "opened all keymaps, keymaps.count = %ld", v48, 0xCu);
    }

    else
    {
      v11 = v44;
    }

    goto LABEL_54;
  }

  v9 = 0;
  v53 = v0[13];
  v54 = v0[14];
  v10 = v0[9];
  v56 = v0[10];
  v11 = v0[8];
  v52 = v2 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
  v50 = v2;
  while (1)
  {
    if (v9 >= *(v2 + 16))
    {
LABEL_62:
      __break(1u);
      swift_once();
      v3 = type metadata accessor for Logger();
      sub_1000076D4(v3, qword_1016ABAA8);
      swift_errorRetain();
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v4, v5))
      {

LABEL_55:

        v49 = v11[1];

        return v49();
      }

      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = _convertErrorToNSError(_:)();
      *(v6 + 4) = v8;
      *v7 = v8;
      _os_log_impl(&_mh_execute_header, v4, v5, "Error in openAllKeyMaps(): %@", v6, 0xCu);
      sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);

LABEL_54:

      goto LABEL_55;
    }

    v13 = v1[15];
    v14 = v1[12];
    sub_1000295D4(v52 + *(v54 + 72) * v9, v13, type metadata accessor for KeyGenerationBeaconInfo);
    sub_1000295D4(v13, v14, type metadata accessor for BeaconIdentifier);
    v15 = v13 + *(v53 + 24);
    v16 = *(v15 + 8) >> 60 != 15 && *(v15 + 40) >> 60 != 15;
    v55 = v9;
    if (!sub_100874B00(v1[12], 0))
    {
      if (!v16)
      {
        goto LABEL_21;
      }

LABEL_17:
      if (sub_100874B00(v1[12], 1))
      {

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      goto LABEL_21;
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    if (v16)
    {
      goto LABEL_17;
    }

LABEL_21:
    sub_10001F1B0(v1[12], type metadata accessor for BeaconIdentifier);
    if (_swiftEmptyArrayStorage >> 62)
    {
      break;
    }

    v17 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_23;
    }

LABEL_6:
    v9 = v55 + 1;
    v12 = v1[15];

    sub_10001F1B0(v12, type metadata accessor for KeyGenerationBeaconInfo);
    v2 = v50;
    if (v55 + 1 == v51)
    {
      goto LABEL_49;
    }
  }

  v17 = _CocoaArrayWrapper.endIndex.getter();
  if (!v17)
  {
    goto LABEL_6;
  }

LABEL_23:
  v18 = 0;
  v19 = _swiftEmptyArrayStorage & 0xC000000000000001;
  while (2)
  {
    if (v19)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (v18 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_61;
      }

      v20 = _swiftEmptyArrayStorage[v18 + 4];

      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }
    }

    v58 = v21;
    v22 = v1[11];
    sub_1000295D4(v1[15], v22, type metadata accessor for BeaconIdentifier);
    *(v22 + *(v10 + 20)) = *(v20 + OBJC_IVAR____TtC12searchpartyd17BeaconKeyIndexMap_sequence);
    swift_beginAccess();
    v59 = v20;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v11[20];
    v11[20] = 0x8000000000000000;
    v25 = sub_100772890(v22);
    v27 = v24[2];
    v28 = (v26 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      goto LABEL_59;
    }

    v31 = v26;
    if (v24[3] >= v30)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v37 = v1[11];
        if ((v26 & 1) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      v41 = v25;
      sub_10100B17C();
      v25 = v41;
      v37 = v1[11];
      if (v31)
      {
        goto LABEL_24;
      }

LABEL_39:
      v24[(v25 >> 6) + 8] |= 1 << v25;
      v38 = v25;
      sub_1000295D4(v37, v24[6] + *(v56 + 72) * v25, type metadata accessor for BeaconKeyServiceBuilder.FileKey);
      *(v24[7] + 8 * v38) = v59;
      sub_10001F1B0(v37, type metadata accessor for BeaconKeyServiceBuilder.FileKey);
      v39 = v24[2];
      v29 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v29)
      {
        goto LABEL_60;
      }

      v24[2] = v40;
LABEL_25:
      v11[20] = v24;

      swift_endAccess();

      ++v18;
      if (v58 == v17)
      {
        goto LABEL_6;
      }

      continue;
    }

    break;
  }

  v57 = v18;
  v32 = v19;
  v33 = v17;
  v34 = v1;
  v35 = v1[11];
  sub_100FF207C(v30, isUniquelyReferenced_nonNull_native);
  v25 = sub_100772890(v35);
  if ((v31 & 1) == (v36 & 1))
  {
    v1 = v34;
    v17 = v33;
    v19 = v32;
    v18 = v57;
    v37 = v1[11];
    if ((v31 & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_24:
    *(v24[7] + 8 * v25) = v59;

    sub_10001F1B0(v37, type metadata accessor for BeaconKeyServiceBuilder.FileKey);
    goto LABEL_25;
  }

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

void sub_100866870()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v48 - v6;
  v8 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v8 - 8);
  v10 = v48 - v9;
  v51 = type metadata accessor for DirectorySequence();
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = [objc_opt_self() defaultManager];
  sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
  v13 = OBJC_IVAR____TtC12searchpartyd23BeaconKeyServiceBuilder_keyMapDirectory;
  static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
  swift_beginAccess();
  sub_1000D2A70(v0 + 176, &v64, &qword_1016ABF48, &qword_1013BFE28);
  v59 = v10;
  v52 = v13;
  if (v65)
  {
    sub_10000A748(&v64, v66);
    v14 = v67;
    v15 = v68;
    sub_1000035D0(v66, v67);
    v16 = *(v15 + 8);
    v17 = v15;
    v10 = v59;
    v16(v0 + v52, v14, v17);
    sub_100007BAC(v66);
  }

  else
  {
    sub_10000B3A8(&v64, &qword_1016ABF48, &qword_1013BFE28);
  }

  v49 = v0;
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();
  DirectorySequence.next()();
  v62 = *(v2 + 48);
  v63 = v2 + 48;
  if (v62(v10, 1, v1) != 1)
  {
    v23 = *(v2 + 32);
    v22 = v2 + 32;
    v61 = v23;
    v24 = (v22 - 24);
    v56 = (v22 - 16);
    *&v18 = 136315138;
    v53 = v18;
    v57 = (v22 - 24);
    v55 = v22;
    v54 = v7;
    v58 = v12;
    v23(v7, v10, v1);
    while (1)
    {
      URL.lastPathComponent.getter();
      v27._countAndFlagsBits = 46;
      v27._object = 0xE100000000000000;
      v28 = String.hasPrefix(_:)(v27);

      if (v28)
      {
        if (qword_101694A00 != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for Logger();
        sub_1000076D4(v29, qword_1016ABAA8);
        (*v56)(v5, v7, v1);
        v30 = v5;
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v66[0] = v34;
          *v33 = v53;
          sub_10087E3E8(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v35 = dispatch thunk of CustomStringConvertible.description.getter();
          v37 = v36;
          v26 = *v24;
          v26(v30, v1);
          v38 = sub_1000136BC(v35, v37, v66);
          v7 = v54;

          *(v33 + 4) = v38;
          _os_log_impl(&_mh_execute_header, v31, v32, "cleanup removing %s", v33, 0xCu);
          sub_100007BAC(v34);
        }

        else
        {

          v26 = *v24;
          v26(v30, v1);
        }

        v5 = v30;
        URL._bridgeToObjectiveC()(v39);
        v41 = v40;
        v66[0] = 0;
        v42 = [v60 removeItemAtURL:v40 error:v66];

        v43 = v66[0];
        v12 = v58;
        v10 = v59;
        if ((v42 & 1) == 0)
        {
          v47 = v43;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          v26(v7, v1);
          (*(v50 + 8))(v12, v51);
          return;
        }

        v25 = v57;
      }

      else
      {
        v25 = v24;
        v26 = *v24;
      }

      v26(v7, v1);
      DirectorySequence.next()();
      v24 = v25;
      if (v62(v10, 1, v1) == 1)
      {
        break;
      }

      v61(v7, v10, v1);
    }
  }

  (*(v50 + 8))(v12, v51);
  v19 = v49;
  v20 = v52;
  v21 = v48[1];
  NSFileManager.removeEmptyDirectoriesRecursively(baseURL:)();
  if (v21)
  {
  }

  else
  {
    sub_1000D2A70(v19 + 176, &v64, &qword_1016ABF48, &qword_1013BFE28);
    if (v65)
    {
      sub_10000A748(&v64, v66);
      v44 = v20;
      v45 = v67;
      v46 = v68;
      sub_1000035D0(v66, v67);
      (*(v46 + 16))(v19 + v44, v45, v46);

      sub_100007BAC(v66);
    }

    else
    {

      sub_10000B3A8(&v64, &qword_1016ABF48, &qword_1013BFE28);
    }
  }
}

uint64_t sub_10086700C()
{

  sub_10000B3A8(v0 + 176, &qword_1016ABF48, &qword_1013BFE28);
  v1 = OBJC_IVAR____TtC12searchpartyd23BeaconKeyServiceBuilder_keyMapDirectory;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1008670EC(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1008671C8()
{
  v1[3] = v0;
  v1[4] = *v0;
  v2 = type metadata accessor for UUID();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[8] = v3;
  v4 = *(v3 - 8);
  v1[9] = v4;
  v1[10] = *(v4 + 64);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = *(type metadata accessor for KeyGenerationBeaconInfo(0) - 8);
  v1[14] = swift_task_alloc();
  v5 = *(type metadata accessor for BeaconIdentifier(0) - 8);
  v1[15] = v5;
  v1[16] = *(v5 + 64);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();

  return _swift_task_switch(sub_1008673FC, 0, 0);
}

uint64_t sub_1008673FC()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v1 = qword_10177B348;
  *(v0 + 168) = qword_10177B348;

  v2 = swift_task_alloc();
  *(v0 + 176) = v2;
  *v2 = v0;
  v2[1] = sub_1008674FC;

  return unsafeBlocking<A>(_:)(v0 + 16, sub_1000D2BE0, v1, &type metadata for Configuration);
}

uint64_t sub_1008674FC()
{

  return _swift_task_switch(sub_100867614, 0, 0);
}

uint64_t sub_100867614()
{
  v1 = *(v0 + 16);
  v2 = sub_10107477C(v1);
  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  *(v0 + 184) = 96 * v2;
  if (!is_mul_ok(v2, 0x60uLL))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v2 = sub_101074798(v1);
  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *(v0 + 192) = 96 * v2;
  if (!is_mul_ok(v2, 0x60uLL))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v2 = sub_1010747EC(v1);
  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  *(v0 + 200) = 96 * v2;
  if (!is_mul_ok(v2, 0x60uLL))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v10 = sub_1010747B4(v1);

  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  *(v0 + 208) = 96 * v10;
  if (!is_mul_ok(v10, 0x60uLL))
  {
LABEL_44:
    __break(1u);
    return withTaskGroup<A, B>(of:returning:isolation:body:)(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  *(v0 + 216) = mach_continuous_time();
  *(v0 + 224) = sub_1008687F4();
  v11 = sub_1009BF810(*(*(v0 + 24) + 144));
  *(v0 + 232) = v11;
  v12 = v11;

  v14 = sub_10111E888(v13);
  v15 = *(v12 + 16);
  if (v15)
  {
    v16 = *(v0 + 120);
    v17 = *(v0 + 104);
    sub_101124760(0, v15, 0);
    v18 = v12 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v19 = *(v17 + 72);
    do
    {
      v20 = *(v0 + 160);
      v21 = *(v0 + 112);
      sub_1000295D4(v18, v21, type metadata accessor for KeyGenerationBeaconInfo);
      sub_1000295D4(v21, v20, type metadata accessor for BeaconIdentifier);
      sub_10001F1B0(v21, type metadata accessor for KeyGenerationBeaconInfo);
      v23 = _swiftEmptyArrayStorage[2];
      v22 = _swiftEmptyArrayStorage[3];
      if (v23 >= v22 >> 1)
      {
        sub_101124760((v22 > 1), v23 + 1, 1);
      }

      v24 = *(v0 + 160);
      _swiftEmptyArrayStorage[2] = v23 + 1;
      sub_10087EE70(v24, _swiftEmptyArrayStorage + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v23, type metadata accessor for BeaconIdentifier);
      v18 += v19;
      --v15;
    }

    while (v15);
  }

  v25 = sub_10112B154(_swiftEmptyArrayStorage);

  if (*(v25 + 16) <= v14[2] >> 3)
  {
    sub_10087DCC8(v25);

    v26 = v14;
  }

  else
  {
    v26 = sub_10061642C(v25, v14);
  }

  v27 = 0;
  *(v0 + 240) = v26;
  v28 = *(v26 + 32);
  *(v0 + 312) = v28;
  v29 = 1 << v28;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  else
  {
    v30 = -1;
  }

  v31 = v30 & v26[7];
  while (v31)
  {
    v32 = *(v0 + 240);
LABEL_28:
    *(v0 + 248) = v31;
    *(v0 + 256) = v27;
    v34 = *(v0 + 224);
    v36 = *(v0 + 144);
    v35 = *(v0 + 152);
    sub_1000295D4(*(v32 + 48) + *(*(v0 + 120) + 72) * (__clz(__rbit64(v31)) | (v27 << 6)), v35, type metadata accessor for BeaconIdentifier);
    sub_10087EE70(v35, v36, type metadata accessor for BeaconIdentifier);
    if (*(v34 + 16))
    {
      v37 = sub_100038994(*(v0 + 144));
      if (v38)
      {
        v40 = *(v0 + 136);
        v39 = *(v0 + 144);
        v58 = *(v0 + 128);
        v59 = v39;
        v57 = *(v0 + 120);
        v41 = *(v0 + 88);
        v42 = *(v0 + 96);
        v43 = *(v0 + 72);
        v44 = *(v0 + 80);
        v45 = *(v0 + 64);
        v60 = *(v0 + 32);
        v61 = *(v0 + 56);
        v62 = *(v0 + 24);
        v46 = *(v43 + 16);
        v46(v42, *(*(v0 + 224) + 56) + *(v43 + 72) * v37, v45);
        v46(v41, v42, v45);
        sub_1000295D4(v39, v40, type metadata accessor for BeaconIdentifier);
        v47 = (*(v43 + 80) + 16) & ~*(v43 + 80);
        v48 = (v44 + *(v57 + 80) + v47) & ~*(v57 + 80);
        v49 = swift_allocObject();
        *(v0 + 264) = v49;
        (*(v43 + 32))(v49 + v47, v41, v45);
        sub_10087EE70(v40, v49 + v48, type metadata accessor for BeaconIdentifier);
        *(v49 + ((v58 + v48 + 7) & 0xFFFFFFFFFFFFFFF8)) = v60;
        UUID.init()();
        v50 = swift_task_alloc();
        *(v0 + 272) = v50;
        v50[2] = v61;
        v50[3] = &unk_1013BFC50;
        v50[4] = v49;
        v50[5] = v62;
        v50[6] = v59;
        v51 = swift_task_alloc();
        *(v0 + 280) = v51;
        *v51 = v0;
        v51[1] = sub_100867DB0;

        return withCheckedContinuation<A>(isolation:function:_:)(v51, 0, 0, 0xD000000000000027, 0x8000000101361B00, sub_10087E2F4, v50, &type metadata for () + 1);
      }
    }

    v31 &= v31 - 1;
    v2 = sub_10001F1B0(*(v0 + 144), type metadata accessor for BeaconIdentifier);
  }

  while (1)
  {
    v33 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      goto LABEL_37;
    }

    v32 = *(v0 + 240);
    if (v33 >= (((1 << *(v0 + 312)) + 63) >> 6))
    {
      break;
    }

    v31 = *(v32 + 8 * v33 + 56);
    ++v27;
    if (v31)
    {
      v27 = v33;
      goto LABEL_28;
    }
  }

  v52 = *(v0 + 232);
  v54 = *(v0 + 24);
  v53 = *(v0 + 32);
  v63 = *(v0 + 184);
  v64 = *(v0 + 200);

  v55 = swift_task_alloc();
  *(v0 + 288) = v55;
  *(v55 + 16) = v52;
  *(v55 + 24) = v54;
  *(v55 + 32) = v63;
  *(v55 + 48) = v64;
  *(v55 + 64) = v53;
  v2 = swift_task_alloc();
  *(v0 + 296) = v2;
  *v2 = v0;
  *(v2 + 8) = sub_100868374;
  v3 = &type metadata for () + 1;
  v7 = &unk_1013BFC60;
  v4 = &type metadata for () + 1;
  v5 = 0;
  v6 = 0;
  v8 = v55;
  v9 = &type metadata for () + 1;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100867DB0()
{

  return _swift_task_switch(sub_100867EC8, 0, 0);
}

uint64_t sub_100867EC8()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 96);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v7 = *(v0 + 40);

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);
  v8 = sub_10001F1B0(v1, type metadata accessor for BeaconIdentifier);
  v16 = *(v0 + 256);
  v17 = (*(v0 + 248) - 1) & *(v0 + 248);
  while (v17)
  {
    v18 = *(v0 + 240);
LABEL_9:
    *(v0 + 248) = v17;
    *(v0 + 256) = v16;
    v20 = *(v0 + 224);
    v22 = *(v0 + 144);
    v21 = *(v0 + 152);
    sub_1000295D4(*(v18 + 48) + *(*(v0 + 120) + 72) * (__clz(__rbit64(v17)) | (v16 << 6)), v21, type metadata accessor for BeaconIdentifier);
    sub_10087EE70(v21, v22, type metadata accessor for BeaconIdentifier);
    if (*(v20 + 16))
    {
      v23 = sub_100038994(*(v0 + 144));
      if (v24)
      {
        v26 = *(v0 + 136);
        v25 = *(v0 + 144);
        v44 = *(v0 + 120);
        v45 = *(v0 + 128);
        v27 = *(v0 + 88);
        v28 = *(v0 + 96);
        v29 = *(v0 + 72);
        v30 = *(v0 + 80);
        v31 = *(v0 + 64);
        v46 = *(v0 + 56);
        v51 = *(v0 + 32);
        v48 = *(v0 + 24);
        v32 = *(v29 + 16);
        v32(v28, *(*(v0 + 224) + 56) + *(v29 + 72) * v23, v31);
        v32(v27, v28, v31);
        v33 = v25;
        sub_1000295D4(v25, v26, type metadata accessor for BeaconIdentifier);
        v34 = (*(v29 + 80) + 16) & ~*(v29 + 80);
        v35 = (v30 + *(v44 + 80) + v34) & ~*(v44 + 80);
        v36 = swift_allocObject();
        *(v0 + 264) = v36;
        (*(v29 + 32))(v36 + v34, v27, v31);
        sub_10087EE70(v26, v36 + v35, type metadata accessor for BeaconIdentifier);
        *(v36 + ((v45 + v35 + 7) & 0xFFFFFFFFFFFFFFF8)) = v51;
        UUID.init()();
        v37 = swift_task_alloc();
        *(v0 + 272) = v37;
        v37[2] = v46;
        v37[3] = &unk_1013BFC50;
        v37[4] = v36;
        v37[5] = v48;
        v37[6] = v33;
        v38 = swift_task_alloc();
        *(v0 + 280) = v38;
        *v38 = v0;
        v38[1] = sub_100867DB0;

        return withCheckedContinuation<A>(isolation:function:_:)(v38, 0, 0, 0xD000000000000027, 0x8000000101361B00, sub_10087E2F4, v37, &type metadata for () + 1);
      }
    }

    v17 &= v17 - 1;
    v8 = sub_10001F1B0(*(v0 + 144), type metadata accessor for BeaconIdentifier);
  }

  while (1)
  {
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      return withTaskGroup<A, B>(of:returning:isolation:body:)(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    v18 = *(v0 + 240);
    if (v19 >= (((1 << *(v0 + 312)) + 63) >> 6))
    {
      break;
    }

    v17 = *(v18 + 8 * v19 + 56);
    ++v16;
    if (v17)
    {
      v16 = v19;
      goto LABEL_9;
    }
  }

  v39 = *(v0 + 232);
  v41 = *(v0 + 24);
  v40 = *(v0 + 32);
  v47 = *(v0 + 184);
  v49 = *(v0 + 200);

  v42 = swift_task_alloc();
  *(v0 + 288) = v42;
  *(v42 + 16) = v39;
  *(v42 + 24) = v41;
  *(v42 + 32) = v47;
  *(v42 + 48) = v49;
  *(v42 + 64) = v40;
  v8 = swift_task_alloc();
  *(v0 + 296) = v8;
  *v8 = v0;
  v8[1] = sub_100868374;
  v9 = &type metadata for () + 1;
  v13 = &unk_1013BFC60;
  v10 = &type metadata for () + 1;
  v11 = 0;
  v12 = 0;
  v14 = v42;
  v15 = &type metadata for () + 1;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_100868374()
{

  return _swift_task_switch(sub_1008684A8, 0, 0);
}

uint64_t sub_1008684A8()
{
  v1 = swift_task_alloc();
  *(v0 + 304) = v1;
  *v1 = v0;
  v1[1] = sub_100868538;

  return sub_100865F0C();
}

uint64_t sub_100868538()
{

  return _swift_task_switch(sub_100868634, 0, 0);
}

uint64_t sub_100868634()
{
  v2 = *(v1 + 216);
  v3 = mach_continuous_time();
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (v4)
  {
    v0 = convertToNanoseconds(_:)(v5);
    if (qword_101694A00 == -1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_4:
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_1016ABAA8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = v0 / 1000000.0;
    _os_log_impl(&_mh_execute_header, v7, v8, "validateKeys duration: %f ms", v9, 0xCu);
  }

  v10 = *(v1 + 8);

  return v10();
}

void *sub_1008687F4()
{
  v110 = type metadata accessor for BeaconIdentifier(0);
  v107 = *(v110 - 8);
  v0 = __chkstk_darwin(v110);
  v114 = &v103 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v0);
  v113 = &v103 - v2;
  v3 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v4 = __chkstk_darwin(v3 - 8);
  v129 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v103 - v6;
  v142 = type metadata accessor for UUID();
  v139 = *(v142 - 8);
  v8 = __chkstk_darwin(v142);
  v112 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v117 = &v103 - v10;
  v11 = type metadata accessor for URL();
  v118 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v128 = &v103 - v16;
  v17 = __chkstk_darwin(v15);
  v111 = &v103 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v103 - v20;
  __chkstk_darwin(v19);
  v23 = &v103 - v22;
  v24 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v25 = __chkstk_darwin(v24 - 8);
  v124 = &v103 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v103 - v27;
  v119 = type metadata accessor for DirectorySequence();
  v29 = *(v119 - 8);
  v30 = __chkstk_darwin(v119);
  v125 = &v103 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = &v103 - v32;
  v120 = [objc_opt_self() defaultManager];
  NSFileManager.flatSequence(at:includingPropertiesForKeys:)();
  v131 = v33;
  DirectorySequence.next()();
  v34 = v118;
  v35 = *(v118 + 48);
  v130 = v28;
  v116 = v11;
  v140 = v35;
  v141 = v118 + 48;
  if (v35(v28, 1, v11) == 1)
  {
    v37 = _swiftEmptyDictionarySingleton;
    v38 = v29;
LABEL_38:
    (*(v38 + 8))(v131, v119);

    return v37;
  }

  v40 = *(v34 + 32);
  v39 = v34 + 32;
  v137 = (v139 + 48);
  v138 = v40;
  v135 = (v39 - 16);
  v136 = (v39 - 24);
  v109 = (v139 + 32);
  v105 = (v139 + 16);
  v108 = (v139 + 8);
  v139 = v39;
  v103 = v39 + 8;
  v106 = (v29 + 8);
  v37 = _swiftEmptyDictionarySingleton;
  *&v36 = 136315138;
  v126 = v36;
  v115 = _swiftEmptyDictionarySingleton;
  v123 = v7;
  v133 = v14;
  v41 = v116;
  v38 = v29;
  v134 = v29;
  v42 = v130;
  v132 = v21;
  v127 = v23;
  while (1)
  {
    v121 = v37;
    while (1)
    {
      v138(v23, v42, v41);
      URL.lastPathComponent.getter();
      UUID.init(uuidString:)();

      v45 = *v137;
      if ((*v137)(v7, 1, v142) != 1)
      {
        break;
      }

      sub_10000B3A8(v7, &qword_1016980D0, &unk_10138F3B0);
      if (qword_101694A00 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_1000076D4(v46, qword_1016ABAA8);
      (*v135)(v14, v23, v41);
      v47 = Logger.logObject.getter();
      v48 = v23;
      v49 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v47, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v143 = v51;
        *v50 = v126;
        sub_10087E3E8(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v52 = dispatch thunk of CustomStringConvertible.description.getter();
        v54 = v53;
        v55 = *v136;
        (*v136)(v133, v41);
        v56 = sub_1000136BC(v52, v54, &v143);
        v14 = v133;

        *(v50 + 4) = v56;
        _os_log_impl(&_mh_execute_header, v47, v49, "Skipping unexpected folder: %s", v50, 0xCu);
        sub_100007BAC(v51);
        v7 = v123;

        v23 = v127;
        v55(v127, v41);
      }

      else
      {

        v43 = *v136;
        (*v136)(v14, v41);
        v43(v48, v41);
        v23 = v48;
      }

      v42 = v130;
      DirectorySequence.next()();
      v44 = v140(v42, 1, v41);
      v21 = v132;
      v38 = v134;
      if (v44 == 1)
      {
        v37 = v121;
        goto LABEL_38;
      }
    }

    v122 = v45;
    v104 = *v109;
    v104(v117, v7, v142);
    NSFileManager.flatSequence(at:includingPropertiesForKeys:)();
    v57 = v124;
    DirectorySequence.next()();
    if (v140(v57, 1, v41) != 1)
    {
      break;
    }

LABEL_13:
    v58 = v115;
LABEL_14:
    (*v106)(v125, v119);
    (*v108)(v117, v142);
    (*v136)(v23, v41);
    v42 = v130;
    DirectorySequence.next()();
    v59 = v140(v42, 1, v41);
    v115 = v58;
    v7 = v123;
    v37 = v121;
    if (v59 == 1)
    {
      goto LABEL_38;
    }
  }

  v58 = v121;
  while (1)
  {
    v121 = v58;
    v60 = v128;
    while (1)
    {
      v138(v21, v57, v41);
      URL.lastPathComponent.getter();
      v63 = v129;
      UUID.init(uuidString:)();

      if (v122(v63, 1, v142) != 1)
      {
        break;
      }

      sub_10000B3A8(v129, &qword_1016980D0, &unk_10138F3B0);
      if (qword_101694A00 != -1)
      {
        swift_once();
      }

      v64 = type metadata accessor for Logger();
      sub_1000076D4(v64, qword_1016ABAA8);
      (*v135)(v60, v21, v41);
      v65 = v21;
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v143 = v69;
        *v68 = v126;
        sub_10087E3E8(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v70 = dispatch thunk of CustomStringConvertible.description.getter();
        v72 = v71;
        v73 = *v136;
        (*v136)(v128, v41);
        v74 = sub_1000136BC(v70, v72, &v143);
        v14 = v133;

        *(v68 + 4) = v74;
        _os_log_impl(&_mh_execute_header, v66, v67, "Skipping unexpected folder: %s", v68, 0xCu);
        sub_100007BAC(v69);
        v60 = v128;

        v21 = v132;
        v73(v132, v41);
        v23 = v127;
      }

      else
      {

        v61 = *v136;
        (*v136)(v60, v41);
        v61(v65, v41);
        v21 = v65;
      }

      v57 = v124;
      DirectorySequence.next()();
      v62 = v140(v57, 1, v41);
      v38 = v134;
      if (v62 == 1)
      {
        goto LABEL_13;
      }
    }

    v75 = v112;
    v76 = v142;
    v104(v112, v129, v142);
    v77 = *v105;
    v78 = v113;
    (*v105)(v113, v117, v76);
    v77(v78 + *(v110 + 20), v75, v76);
    v79 = v114;
    sub_1000295D4(v78, v114, type metadata accessor for BeaconIdentifier);
    (*v135)(v111, v21, v116);
    v80 = v115;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v143 = v80;
    v82 = sub_100038994(v79);
    v84 = *(v80 + 16);
    v85 = (v83 & 1) == 0;
    v86 = __OFADD__(v84, v85);
    v87 = v84 + v85;
    if (v86)
    {
      break;
    }

    v88 = v83;
    if (*(v80 + 24) < v87)
    {
      sub_100FF24CC(v87, isUniquelyReferenced_nonNull_native);
      v82 = sub_100038994(v114);
      if ((v88 & 1) != (v89 & 1))
      {
        goto LABEL_41;
      }

LABEL_30:
      v58 = v143;
      if (v88)
      {
        goto LABEL_31;
      }

      goto LABEL_33;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_30;
    }

    v93 = v82;
    sub_10100B1B8();
    v82 = v93;
    v58 = v143;
    if (v88)
    {
LABEL_31:
      v90 = v118;
      v91 = v116;
      (*(v118 + 40))(v58[7] + *(v118 + 72) * v82, v111, v116);
      sub_10001F1B0(v114, type metadata accessor for BeaconIdentifier);
      sub_10001F1B0(v113, type metadata accessor for BeaconIdentifier);
      (*v108)(v112, v142);
      v92 = *(v90 + 8);
      v41 = v91;
      v92(v21, v91);
      goto LABEL_35;
    }

LABEL_33:
    v58[(v82 >> 6) + 8] |= 1 << v82;
    v94 = v82;
    v95 = v114;
    sub_1000295D4(v114, v58[6] + *(v107 + 72) * v82, type metadata accessor for BeaconIdentifier);
    v96 = v118;
    v97 = v116;
    v138((v58[7] + *(v118 + 72) * v94), v111, v116);
    v98 = v95;
    v41 = v97;
    sub_10001F1B0(v98, type metadata accessor for BeaconIdentifier);
    sub_10001F1B0(v113, type metadata accessor for BeaconIdentifier);
    (*v108)(v112, v142);
    (*(v96 + 8))(v21, v97);
    v99 = v58[2];
    v86 = __OFADD__(v99, 1);
    v100 = v99 + 1;
    if (v86)
    {
      goto LABEL_40;
    }

    v58[2] = v100;
    v14 = v133;
LABEL_35:
    DirectorySequence.next()();
    v57 = v124;
    v101 = v140(v124, 1, v41);
    v115 = v58;
    v121 = v58;
    if (v101 == 1)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100869810(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for URL();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = type metadata accessor for BeaconIdentifier(0);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_10086990C, 0, 0);
}

uint64_t sub_10086990C()
{
  v40 = v0;
  v1 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 fileExistsAtPath:v2];

  if (v3)
  {
    if (qword_101694A00 != -1)
    {
      swift_once();
    }

    v5 = v0[8];
    v4 = v0[9];
    v6 = v0[5];
    v7 = v0[6];
    v9 = v0[3];
    v8 = v0[4];
    v10 = v0[2];
    v11 = type metadata accessor for Logger();
    sub_1000076D4(v11, qword_1016ABAA8);
    sub_1000295D4(v9, v4, type metadata accessor for BeaconIdentifier);
    sub_1000295D4(v9, v5, type metadata accessor for BeaconIdentifier);
    (*(v6 + 16))(v7, v10, v8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    v14 = os_log_type_enabled(v12, v13);
    v16 = v0[8];
    v15 = v0[9];
    if (v14)
    {
      v37 = v0[6];
      v38 = v0[5];
      v35 = v0[4];
      v17 = swift_slowAlloc();
      v39[0] = swift_slowAlloc();
      *v17 = 141559043;
      *(v17 + 4) = 1752392040;
      *(v17 + 12) = 2081;
      type metadata accessor for UUID();
      v36 = v13;
      sub_10087E3E8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      sub_10001F1B0(v15, type metadata accessor for BeaconIdentifier);
      v21 = sub_1000136BC(v18, v20, v39);

      *(v17 + 14) = v21;
      *(v17 + 22) = 2160;
      *(v17 + 24) = 1752392040;
      *(v17 + 32) = 2081;
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      sub_10001F1B0(v16, type metadata accessor for BeaconIdentifier);
      v25 = sub_1000136BC(v22, v24, v39);

      *(v17 + 34) = v25;
      *(v17 + 42) = 2080;
      sub_10087E3E8(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      (*(v38 + 8))(v37, v35);
      v29 = sub_1000136BC(v26, v28, v39);

      *(v17 + 44) = v29;
      _os_log_impl(&_mh_execute_header, v12, v36, "Purging KeyMaps for %{private,mask.hash}s/%{private,mask.hash}s: %s", v17, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v31 = v0[5];
      v30 = v0[6];
      v32 = v0[4];

      (*(v31 + 8))(v30, v32);
      sub_10001F1B0(v16, type metadata accessor for BeaconIdentifier);
      sub_10001F1B0(v15, type metadata accessor for BeaconIdentifier);
    }

    sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
    static NSFileManager.removeDirectory(url:)();
  }

  v33 = v0[1];

  return v33();
}

uint64_t sub_100869EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a8;
  v8[16] = v12;
  v8[13] = a6;
  v8[14] = a7;
  v8[11] = a4;
  v8[12] = a5;
  v8[9] = a2;
  v8[10] = a3;
  v9 = *(type metadata accessor for KeyGenerationBeaconInfo(0) - 8);
  v8[17] = v9;
  v8[18] = *(v9 + 64);
  v8[19] = swift_task_alloc();
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();

  return _swift_task_switch(sub_100869FBC, 0, 0);
}

uint64_t sub_100869FBC()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 136);
    v33 = **(v0 + 72);
    v4 = *(v3 + 80);
    v5 = v1 + ((v4 + 32) & ~v4);
    v32 = *(v3 + 72);
    v31 = (v4 + 40) & ~v4;
    v30 = (*(v0 + 144) + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
    v28 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
    v27 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
    v6 = type metadata accessor for TaskPriority();
    v7 = *(v6 - 8);
    v26 = *(v7 + 56);
    v25 = (v7 + 48);
    v24 = (v7 + 8);
    do
    {
      v39 = v2;
      v10 = *(v0 + 160);
      v11 = *(v0 + 168);
      v12 = *(v0 + 152);
      v36 = *(v0 + 120);
      v37 = *(v0 + 128);
      v35 = *(v0 + 112);
      v34 = *(v0 + 104);
      v14 = *(v0 + 88);
      v13 = *(v0 + 96);
      v26(v11, 1, 1, v6);
      v38 = v5;
      sub_1000295D4(v5, v12, type metadata accessor for KeyGenerationBeaconInfo);
      v15 = swift_allocObject();
      v15[2] = 0;
      v16 = v15 + 2;
      v15[3] = 0;
      v15[4] = v14;
      sub_10087EE70(v12, v15 + v31, type metadata accessor for KeyGenerationBeaconInfo);
      *(v15 + v30) = v13;
      *(v15 + v29) = v34;
      *(v15 + v28) = v35;
      *(v15 + v27) = v36;
      *(v15 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8)) = v37;
      sub_1000D2A70(v11, v10, &qword_101698C00, &qword_10138B570);
      LODWORD(v11) = (*v25)(v10, 1, v6);

      v17 = *(v0 + 160);
      if (v11 == 1)
      {
        sub_10000B3A8(*(v0 + 160), &qword_101698C00, &qword_10138B570);
        if (*v16)
        {
          goto LABEL_9;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*v24)(v17, v6);
        if (*v16)
        {
LABEL_9:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v18 = dispatch thunk of Actor.unownedExecutor.getter();
          v19 = v20;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v18 = 0;
      v19 = 0;
LABEL_10:
      v21 = swift_allocObject();
      *(v21 + 16) = &unk_1013BFC90;
      *(v21 + 24) = v15;

      if (v19 | v18)
      {
        v8 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v18;
        *(v0 + 40) = v19;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v0 + 168);
      *(v0 + 48) = 1;
      *(v0 + 56) = v8;
      *(v0 + 64) = v33;
      swift_task_create();

      sub_10000B3A8(v9, &qword_101698C00, &qword_10138B570);
      v5 = v38 + v32;
      v2 = v39 - 1;
    }

    while (v39 != 1);
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_10086A3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v13;
  v8[8] = v14;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = type metadata accessor for UUID();
  v8[9] = v9;
  v8[10] = *(v9 - 8);
  v8[11] = swift_task_alloc();
  v10 = *(type metadata accessor for KeyGenerationBeaconInfo(0) - 8);
  v8[12] = v10;
  v8[13] = *(v10 + 64);
  v8[14] = swift_task_alloc();

  return _swift_task_switch(sub_10086A4E4, 0, 0);
}

uint64_t sub_10086A4E4()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v18 = v0[8];
  v19 = v0[11];
  v16 = v0[6];
  v17 = v0[7];
  v14 = v0[4];
  v15 = v0[5];
  v20 = v0[3];
  v4 = v0[2];
  sub_1000295D4(v20, v1, type metadata accessor for KeyGenerationBeaconInfo);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = (v2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  v0[15] = v10;
  *(v10 + 16) = v4;
  sub_10087EE70(v1, v10 + v5, type metadata accessor for KeyGenerationBeaconInfo);
  *(v10 + v6) = v14;
  *(v10 + v7) = v15;
  *(v10 + v8) = v16;
  *(v10 + v9) = v17;
  *(v10 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;

  UUID.init()();
  v11 = swift_task_alloc();
  v0[16] = v11;
  v11[2] = v19;
  v11[3] = &unk_1013BFCA8;
  v11[4] = v10;
  v11[5] = v4;
  v11[6] = v20;
  v12 = swift_task_alloc();
  v0[17] = v12;
  *v12 = v0;
  v12[1] = sub_10086A6F8;

  return withCheckedContinuation<A>(isolation:function:_:)(v12, 0, 0, 0xD000000000000027, 0x8000000101361B00, sub_1008849E4, v11, &type metadata for () + 1);
}

uint64_t sub_10086A6F8()
{

  return _swift_task_switch(sub_10086A810, 0, 0);
}

uint64_t sub_10086A810()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10086A8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  v8 = *(type metadata accessor for KeyGenerationBeaconInfo(0) - 8);
  v6[11] = v8;
  v6[12] = *(v8 + 64);
  v6[13] = swift_task_alloc();
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v6[14] = swift_task_alloc();
  v9 = swift_task_alloc();
  v6[15] = v9;
  *v9 = v6;
  v9[1] = sub_10086A9E4;

  return sub_10086B5C8(a2);
}

uint64_t sub_10086A9E4()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_10086B420;
  }

  else
  {
    v2 = sub_10086AAF8;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_10086AAF8()
{
  if (v0[8])
  {
    v2 = v0[7] == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v3 = swift_task_alloc();
    v0[17] = v3;
    *v3 = v0;
    v3[1] = sub_10086ABA8;
    v5 = v0[6];
    v4 = v0[7];

    sub_100882478(v5, 1, v4);
  }
}

uint64_t sub_10086ABA8(char a1)
{
  v3 = *v2;
  *(v3 + 25) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v4 = sub_10086B278;
  }

  else
  {
    v4 = sub_10086ACC0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10086ACC0()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[5];
  v8 = v0[6];
  static TaskPriority.background.getter();
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v1, 0, 1, v9);
  sub_1000295D4(v8, v2, type metadata accessor for KeyGenerationBeaconInfo);
  v10 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v11 = (v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v7;
  sub_10087EE70(v2, v12 + v10, type metadata accessor for KeyGenerationBeaconInfo);
  *(v12 + v11) = v6;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v5;

  v13 = sub_100A83B9C(0, 0, v1, &unk_1013BFCC8, v12);
  v0[19] = v13;
  v14 = swift_task_alloc();
  v0[20] = v14;
  v15 = sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v0[21] = v15;
  *v14 = v0;
  v14[1] = sub_10086AEC0;

  return Task.result.getter(v0 + 2, v13, &type metadata for Bool, v15, &protocol self-conformance witness table for Error);
}

uint64_t sub_10086AEC0()
{

  return _swift_task_switch(sub_10086AFD8, 0, 0);
}

uint64_t sub_10086AFD8()
{
  v1 = *(v0 + 16);
  if ((*(v0 + 24) & 1) == 0)
  {
    if (qword_101694A00 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_1016ABAA8);
    v3 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v9))
    {
      v10 = *(v0 + 25);
      v11 = swift_slowAlloc();
      *v11 = 67109376;
      *(v11 + 4) = v10;
      *(v11 + 8) = 1024;
      *(v11 + 10) = v1 & 1;
      _os_log_impl(&_mh_execute_header, v3, v9, "lowPriorityModified: %{BOOL}d highPriorityModified: %{BOOL}d", v11, 0xEu);
    }

    goto LABEL_10;
  }

  *(v0 + 32) = v1;
  swift_willThrowTypedImpl();
  if (qword_101694A00 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_1016ABAA8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = _convertErrorToNSError(_:)();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error during perform: %@", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);

LABEL_10:

    goto LABEL_12;
  }

LABEL_12:

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10086B278()
{
  if (qword_101694A00 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016ABAA8);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Error during perform: %@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10086B420()
{
  if (qword_101694A00 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016ABAA8);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Error during perform: %@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10086B5C8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for KeyGenerationBeaconInfo(0);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_10086B72C, 0, 0);
}

uint64_t sub_10086B72C(uint64_t a1)
{
  v29 = v1;
  v2 = v1[13];
  v3 = v1[9];
  v4 = v1[10];
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  type metadata accessor for BeaconIdentifier(0);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  v5 = *(v4 + 8);
  v1[15] = v5;
  v1[16] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v3);
  URL.appendingPathComponent(_:)();
  if (qword_101694A00 != -1)
  {
    swift_once();
  }

  v7 = v1[5];
  v6 = v1[6];
  v8 = v1[2];
  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_1016ABAA8);
  sub_1000295D4(v8, v6, type metadata accessor for KeyGenerationBeaconInfo);
  sub_1000295D4(v8, v7, type metadata accessor for KeyGenerationBeaconInfo);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v14 = v1[5];
  v13 = v1[6];
  if (v12)
  {
    v27 = v11;
    v15 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v15 = 141558787;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    type metadata accessor for UUID();
    sub_10087E3E8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    sub_10001F1B0(v13, type metadata accessor for KeyGenerationBeaconInfo);
    v19 = sub_1000136BC(v16, v18, &v28);

    *(v15 + 14) = v19;
    *(v15 + 22) = 2160;
    *(v15 + 24) = 1752392040;
    *(v15 + 32) = 2081;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    sub_10001F1B0(v14, type metadata accessor for KeyGenerationBeaconInfo);
    v23 = sub_1000136BC(v20, v22, &v28);

    *(v15 + 34) = v23;
    _os_log_impl(&_mh_execute_header, v10, v27, "Verify file integrity for %{private,mask.hash}s/%{private,mask.hash}s", v15, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    sub_10001F1B0(v14, type metadata accessor for KeyGenerationBeaconInfo);
    sub_10001F1B0(v13, type metadata accessor for KeyGenerationBeaconInfo);
  }

  v1[17] = sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
  static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
  v24 = swift_task_alloc();
  v1[18] = v24;
  *v24 = v1;
  v24[1] = sub_10086BB58;
  v25 = v1[12];

  return sub_10087F1BC(v25);
}

uint64_t sub_10086BB58()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_10086BEF4;
  }

  else
  {
    v2 = sub_10086BC6C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10086BC6C()
{
  v1 = v0[2] + *(v0[4] + 24);
  if (*(v1 + 8) >> 60 == 15 || *(v1 + 40) >> 60 == 15)
  {
    v2 = 1;
  }

  else
  {
    URL.appendingPathComponent(_:)();
    v2 = 0;
  }

  v3 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  (*(v4 + 56))(v5, v2, 1, v3);
  sub_1000D2A70(v5, v6, &unk_101696AC0, &qword_101390A60);
  if ((*(v4 + 48))(v6, 1, v3) == 1)
  {
    v7 = v0[15];
    v8 = v0[14];
    v9 = v0[12];
    v10 = v0[9];
    v11 = v0[7];
    sub_10000B3A8(v0[8], &unk_101696AC0, &qword_101390A60);
    v7(v9, v10);
    v7(v8, v10);
    sub_10000B3A8(v11, &unk_101696AC0, &qword_101390A60);

    v12 = v0[1];

    return v12();
  }

  else
  {
    (*(v0[10] + 32))(v0[11], v0[7], v0[9]);
    static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
    v14 = swift_task_alloc();
    v0[20] = v14;
    *v14 = v0;
    v14[1] = sub_10086BFEC;
    v15 = v0[11];

    return sub_10087F1BC(v15);
  }
}

uint64_t sub_10086BEF4()
{
  v1 = v0[15];
  v2 = v0[14];
  v3 = v0[9];
  v1(v0[12], v3);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10086BFEC()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_10086C208;
  }

  else
  {
    v2 = sub_10086C100;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10086C100()
{
  v1 = v0[15];
  v2 = v0[14];
  v3 = v0[12];
  v5 = v0[8];
  v4 = v0[9];
  v1(v0[11], v4);
  sub_10000B3A8(v5, &unk_101696AC0, &qword_101390A60);
  v1(v3, v4);
  v1(v2, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10086C208()
{
  v1 = *(v0 + 64);
  (*(v0 + 120))(*(v0 + 88), *(v0 + 72));
  sub_10000B3A8(v1, &unk_101696AC0, &qword_101390A60);
  v2 = *(v0 + 120);
  v3 = *(v0 + 112);
  v4 = *(v0 + 72);
  v2(*(v0 + 96), v4);
  v2(v3, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10086C328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return _swift_task_switch(sub_10086C350, 0, 0);
}

void sub_10086C350()
{
  if (v0[6])
  {
    v2 = v0[5] == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_10086C400;
    v5 = v0[4];
    v4 = v0[5];

    sub_100882478(v5, 1, v4);
  }
}

uint64_t sub_10086C400(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 64) = a1 & 1;

    return _swift_task_switch(sub_10086C550, 0, 0);
  }
}

uint64_t sub_10086C574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[22] = a1;
  v6[23] = a4;
  v7 = type metadata accessor for UUID();
  v6[26] = v7;
  v6[27] = *(v7 - 8);
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();

  return _swift_task_switch(sub_10086C644, 0, 0);
}

uint64_t sub_10086C644()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 184);
  if ((v1 & 0x2000000000000000) != 0)
  {
    v14 = sub_1000356D8(v2, v1 & 0xDFFFFFFFFFFFFFFFLL);
    if ((v14 & 0x100000000) == 0)
    {
      v15 = v14;
      v17 = *(v0 + 216);
      v16 = *(v0 + 224);
      v19 = *(v0 + 200);
      v18 = *(v0 + 208);
      v20 = OBJC_IVAR____TtC12searchpartyd17BeaconKeyIndexMap_beaconIdentifier;
      v21 = type metadata accessor for BeaconIdentifier(0);
      (*(v17 + 16))(v16, v19 + *(v21 + 20) + v20, v18);
      v22 = v15;
      if (*(v19 + OBJC_IVAR____TtC12searchpartyd17BeaconKeyIndexMap_sequence))
      {
        v23 = &type metadata for SecondaryIndex;
        v24 = sub_10022A4D4();
      }

      else
      {
        v23 = &type metadata for PrimaryIndex;
        v24 = sub_10002A2B8();
      }

      v35 = *(v0 + 216);
      v34 = *(v0 + 224);
      v36 = *(v0 + 208);
      v30 = *(v0 + 176);
      *(v0 + 80) = v23;
      *(v0 + 88) = v24;
      *(v0 + 56) = v22;
      sub_10000A748((v0 + 56), v0 + 16);
      (*(v35 + 32))(v30, v34, v36);
      v31 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
      v32 = *(v31 + 20);
      v33 = (v0 + 16);
      goto LABEL_13;
    }

LABEL_8:
    v25 = *(v0 + 176);
    v26 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
    (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
    goto LABEL_14;
  }

  v3 = sub_101198A2C(v2, v1);
  if ((v3 & 0x100000000) != 0)
  {
    goto LABEL_8;
  }

  v4 = v3;
  v5 = *(v0 + 232);
  v6 = *(v0 + 208);
  v7 = *(v0 + 216);
  v8 = *(v0 + 200);
  v9 = OBJC_IVAR____TtC12searchpartyd17BeaconKeyIndexMap_beaconIdentifier;
  v10 = type metadata accessor for BeaconIdentifier(0);
  (*(v7 + 16))(v5, v8 + *(v10 + 20) + v9, v6);
  v11 = v4;
  if (*(v8 + OBJC_IVAR____TtC12searchpartyd17BeaconKeyIndexMap_sequence))
  {
    v12 = &type metadata for SecondaryIndex;
    v13 = sub_10022A4D4();
  }

  else
  {
    v12 = &type metadata for PrimaryIndex;
    v13 = sub_10002A2B8();
  }

  v27 = *(v0 + 232);
  v28 = *(v0 + 208);
  v29 = *(v0 + 216);
  v30 = *(v0 + 176);
  *(v0 + 160) = v12;
  *(v0 + 168) = v13;
  *(v0 + 136) = v11;
  sub_10000A748((v0 + 136), v0 + 96);
  (*(v29 + 32))(v30, v27, v28);
  v31 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v32 = *(v31 + 20);
  v33 = (v0 + 96);
LABEL_13:
  sub_10000A748(v33, v30 + v32);
  (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
LABEL_14:

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_10086C8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a2;
  v36 = a6;
  v41 = a4;
  v42 = a5;
  v40 = a3;
  v37 = a1;
  v6 = type metadata accessor for BeaconIdentifier(0);
  v38 = *(v6 - 8);
  v39 = *(v38 + 64);
  __chkstk_darwin(v6 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v8;
  v9 = sub_1000BC4D4(&qword_1016972D8, &qword_1013AAC60);
  v31 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v31 - v12;
  v32 = &v31 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v18 - 8);
  v20 = &v31 - v19;
  v34 = &v31 - v19;
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  (*(v15 + 16))(v17, v35, v14);
  (*(v10 + 16))(v13, v37, v9);
  sub_1000295D4(v36, v8, type metadata accessor for BeaconIdentifier);
  v22 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v23 = (v16 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (*(v10 + 80) + v23 + 16) & ~*(v10 + 80);
  v25 = (v11 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (*(v38 + 80) + v25 + 8) & ~*(v38 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  (*(v15 + 32))(v27 + v22, v17, v14);
  v28 = (v27 + v23);
  v29 = v41;
  *v28 = v40;
  v28[1] = v29;
  (*(v10 + 32))(v27 + v24, v32, v31);
  *(v27 + v25) = v42;
  sub_10087EE70(v33, v27 + v26, type metadata accessor for BeaconIdentifier);

  sub_10025EDD4(0, 0, v34, &unk_1013BFD58, v27);
}

uint64_t sub_10086CCC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v13;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v9 = sub_1000BC4D4(&qword_1016972D8, &qword_1013AAC60);
  v8[8] = v9;
  v10 = *(v9 - 8);
  v8[9] = v10;
  v8[10] = *(v10 + 64);
  v8[11] = swift_task_alloc();
  v8[12] = type metadata accessor for BeaconKeyServiceBuilder.WorkItem(0);
  v8[13] = swift_task_alloc();

  return _swift_task_switch(sub_10086CDD8, 0, 0);
}

uint64_t sub_10086CDD8()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];
  v19 = v0[3];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 16))(v1, v8, v9);
  (*(v5 + 16))(v3, v7, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v3, v4);
  v12 = swift_allocObject();
  *(v12 + 16) = v19;
  *(v12 + 24) = v6;
  v13 = (v1 + *(v2 + 20));
  *v13 = &unk_1013BFD78;
  v13[1] = v12;
  v14 = (v1 + *(v2 + 24));
  *v14 = &unk_1013BFD68;
  v14[1] = v11;

  v15 = swift_task_alloc();
  v0[14] = v15;
  *v15 = v0;
  v15[1] = sub_10086CFA4;
  v16 = v0[13];
  v17 = v0[7];

  return sub_10086D1C4(v17, v16);
}

uint64_t sub_10086CFA4()
{

  return _swift_task_switch(sub_10086D0A0, 0, 0);
}

uint64_t sub_10086D0A0()
{
  sub_10001F1B0(*(v0 + 104), type metadata accessor for BeaconKeyServiceBuilder.WorkItem);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10086D14C()
{
  sub_1000BC4D4(&qword_1016972D8, &qword_1013AAC60);
  CheckedContinuation.resume(returning:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10086D1C4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  type metadata accessor for BeaconIdentifier(0);
  v3[5] = swift_task_alloc();

  return _swift_task_switch(sub_10086D258, v2, 0);
}

uint64_t sub_10086D258()
{
  v1 = *(v0[4] + 152);
  v2 = *(v1 + 16);

  if (v2 && (v3 = sub_100038994(v0[2]), (v4 & 1) != 0))
  {
    v5 = *(*(v1 + 56) + 8 * v3);
  }

  else
  {
    v6 = v0[5];
    sub_1000295D4(v0[2], v6, type metadata accessor for BeaconIdentifier);
    type metadata accessor for BeaconKeyServiceBuilder.QueueWorker(0);
    v5 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v5 + OBJC_IVAR____TtCC12searchpartyd23BeaconKeyServiceBuilderP33_8A37076506AEEBCEAD161117E4752B2811QueueWorker_queue) = _swiftEmptyArrayStorage;
    sub_10087EE70(v6, v5 + OBJC_IVAR____TtCC12searchpartyd23BeaconKeyServiceBuilderP33_8A37076506AEEBCEAD161117E4752B2811QueueWorker_identifier, type metadata accessor for BeaconIdentifier);
  }

  v0[6] = v5;

  return _swift_task_switch(sub_10086D380, v5, 0);
}

uint64_t sub_10086D380()
{
  v1 = *(v0 + 32);
  sub_10086D524(*(v0 + 24));

  return _swift_task_switch(sub_10086D3EC, v1, 0);
}

uint64_t sub_10086D3EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10086D460(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_100044B3C(v3, a2);
  v4 = sub_1000076D4(v3, a2);
  if (qword_101694A10 != -1)
  {
    swift_once();
  }

  v5 = sub_1000076D4(v3, qword_10177B520);
  v6 = *(*(v3 - 8) + 16);

  return v6(v4, v5, v3);
}

uint64_t sub_10086D524(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v4 - 8);
  v6 = &v16[-v5];
  v7 = sub_1000BC4D4(&qword_1016ABF38, &qword_1013BFE10);
  __chkstk_darwin(v7 - 8);
  v9 = &v16[-v8];
  v10 = OBJC_IVAR____TtCC12searchpartyd23BeaconKeyServiceBuilderP33_8A37076506AEEBCEAD161117E4752B2811QueueWorker_queue;
  swift_beginAccess();
  v11 = *(*(v2 + v10) + 16);
  swift_beginAccess();
  sub_1000295D4(a1, v9, type metadata accessor for BeaconKeyServiceBuilder.WorkItem);
  sub_100A05428(0, 0, v9);
  result = swift_endAccess();
  if (!v11)
  {
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
    v14 = sub_10087E3E8(&qword_1016ABF40, type metadata accessor for BeaconKeyServiceBuilder.QueueWorker, &unk_1013BFBEC);
    v15 = swift_allocObject();
    v15[2] = v2;
    v15[3] = v14;
    v15[4] = v2;
    swift_retain_n();
    sub_100A838D4(0, 0, v6, &unk_1013BFE20, v15);
  }

  return result;
}

uint64_t sub_10086D740()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_10086D7D0();
}

uint64_t sub_10086D7D0()
{
  v1[8] = v0;
  sub_1000BC4D4(&qword_1016ABF30, &qword_1013BFE08);
  v1[9] = swift_task_alloc();
  v2 = type metadata accessor for BeaconKeyServiceBuilder.WorkItem(0);
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_10086D8C8, v0, 0);
}

uint64_t sub_10086D8C8()
{
  v23 = v0;
  v1 = v0[8];
  v2 = OBJC_IVAR____TtCC12searchpartyd23BeaconKeyServiceBuilderP33_8A37076506AEEBCEAD161117E4752B2811QueueWorker_queue;
  v0[13] = OBJC_IVAR____TtCC12searchpartyd23BeaconKeyServiceBuilderP33_8A37076506AEEBCEAD161117E4752B2811QueueWorker_queue;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v0[12];
    v6 = v0[10];
    sub_1000295D4(v3 + ((*(v0[11] + 80) + 32) & ~*(v0[11] + 80)) + *(v0[11] + 72) * (v4 - 1), v5, type metadata accessor for BeaconKeyServiceBuilder.WorkItem);
    v19 = (*(v5 + *(v6 + 20)) + **(v5 + *(v6 + 20)));
    v7 = swift_task_alloc();
    v0[14] = v7;
    *v7 = v0;
    v7[1] = sub_10086DC64;

    return v19();
  }

  else
  {
    if (qword_101694A08 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_1016ABAC0);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136315138;
      type metadata accessor for UUID();
      sub_10087E3E8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v14;
      v15._countAndFlagsBits = 47;
      v15._object = 0xE100000000000000;
      String.append(_:)(v15);
      type metadata accessor for BeaconIdentifier(0);
      v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v16);

      v17 = sub_1000136BC(v21, v22, &v20);

      *(v12 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v10, v11, "process queue for %s -- no more WorkItems", v12, 0xCu);
      sub_100007BAC(v13);
    }

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_10086DC64()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = sub_10086E2AC;
  }

  else
  {
    v4 = sub_10086DD90;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10086DD90()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  swift_beginAccess();
  sub_1008653D0(v2);
  sub_10000B3A8(v2, &qword_1016ABF30, &qword_1013BFE08);
  swift_endAccess();
  v6 = (*(v1 + *(v3 + 24)) + **(v1 + *(v3 + 24)));
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_10086DEDC;

  return v6();
}

uint64_t sub_10086DEDC()
{
  v1 = *(*v0 + 64);

  return _swift_task_switch(sub_10086DFEC, v1, 0);
}

uint64_t sub_10086DFEC()
{
  if (*(*(v0[8] + v0[13]) + 16))
  {
    v1 = swift_task_alloc();
    v0[17] = v1;
    *v1 = v0;
    v1[1] = sub_10086E0F4;

    return sub_10086D7D0();
  }

  else
  {
    sub_10001F1B0(v0[12], type metadata accessor for BeaconKeyServiceBuilder.WorkItem);

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_10086E0F4()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = sub_10086E344;
  }

  else
  {
    v4 = sub_10086E220;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10086E220()
{
  sub_10001F1B0(*(v0 + 96), type metadata accessor for BeaconKeyServiceBuilder.WorkItem);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10086E2AC()
{
  sub_10001F1B0(*(v0 + 96), type metadata accessor for BeaconKeyServiceBuilder.WorkItem);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10086E344()
{
  sub_10001F1B0(*(v0 + 96), type metadata accessor for BeaconKeyServiceBuilder.WorkItem);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10086E3DC()
{
  sub_10001F1B0(v0 + OBJC_IVAR____TtCC12searchpartyd23BeaconKeyServiceBuilderP33_8A37076506AEEBCEAD161117E4752B2811QueueWorker_identifier, type metadata accessor for BeaconIdentifier);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10086E468(uint64_t a1)
{
  result = type metadata accessor for BeaconIdentifier(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10086E558(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = sub_10086E5DC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10086E5DC()
{
  result = qword_1016ABDA0;
  if (!qword_1016ABDA0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1016ABDA0);
  }

  return result;
}

uint64_t sub_10086E674(uint64_t a1)
{
  result = type metadata accessor for BeaconIdentifier(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10086E6E8(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10003633C;

  return v4();
}

uint64_t sub_10086E7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v11 = swift_task_alloc();
  *(v6 + 24) = v11;
  *v11 = v6;
  v11[1] = sub_1003A1238;

  return sub_10086E8A0(a3, a4, 0, a5, a6, 1);
}

uint64_t sub_10086E8A0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 728) = v6;
  *(v7 + 720) = a6;
  *(v7 + 712) = a5;
  *(v7 + 704) = a4;
  *(v7 + 1357) = a3;
  *(v7 + 696) = a2;
  *(v7 + 688) = a1;
  v8 = type metadata accessor for BeaconKeyServiceBuilder.FileSwapInfo(0);
  *(v7 + 736) = v8;
  *(v7 + 744) = *(v8 - 8);
  *(v7 + 752) = swift_task_alloc();
  *(v7 + 760) = type metadata accessor for KeyGenerationBeaconInfo(0);
  *(v7 + 768) = swift_task_alloc();
  sub_1000BC4D4(&qword_1016ABE88, &unk_1013BFCF0);
  *(v7 + 776) = swift_task_alloc();
  v9 = type metadata accessor for DirectorySequence();
  *(v7 + 784) = v9;
  *(v7 + 792) = *(v9 - 8);
  *(v7 + 800) = swift_task_alloc();
  sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  *(v7 + 808) = swift_task_alloc();
  *(v7 + 816) = swift_task_alloc();
  *(v7 + 824) = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  *(v7 + 832) = v10;
  *(v7 + 840) = *(v10 - 8);
  *(v7 + 848) = swift_task_alloc();
  v11 = type metadata accessor for URL();
  *(v7 + 856) = v11;
  *(v7 + 864) = *(v11 - 8);
  *(v7 + 872) = swift_task_alloc();
  *(v7 + 880) = swift_task_alloc();
  *(v7 + 888) = swift_task_alloc();

  return _swift_task_switch(sub_10086EB5C, 0, 0);
}

uint64_t sub_10086EB5C()
{
  v137 = v0;
  v1 = (v0[87] + *(v0[95] + 24));
  v2 = *v1;
  v0[112] = *v1;
  v3 = v1[1];
  v0[113] = v3;
  v4 = v1[2];
  v0[114] = v4;
  v5 = v1[3];
  v0[115] = v5;
  v6 = v1[4];
  v0[116] = v6;
  v7 = v1[5];
  v0[117] = v7;
  if (v3 >> 60 != 15)
  {
    v9 = v0[106];
    v10 = v0[105];
    v133 = v0;
    v11 = v0[104];
    v126 = v0[103];
    v12 = v0;
    v13 = v5;
    v14 = v12[100];
    v128 = v133[99];
    v131 = v133[98];
    log = v11;
    v15 = objc_allocWithZone(NSProcessInfo);
    sub_100017D5C(v2, v3);
    v130 = v13;
    sub_100017D5C(v4, v13);
    v121 = v6;
    v122 = v7;
    sub_10002E98C(v6, v7);
    v16 = [v15 init];
    v17 = v3;
    v18 = [v16 processIdentifier];

    _StringGuts.grow(_:)(22);

    v135 = 46;
    v136 = 0xE100000000000000;
    UUID.init()();
    v120 = v2;
    v19 = UUID.uuidString.getter();
    v20 = v4;
    v22 = v21;
    (*(v10 + 8))(v9, log);
    v23._countAndFlagsBits = v19;
    v23._object = v22;
    String.append(_:)(v23);

    v24._object = 0x8000000101361B30;
    v24._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v24);
    *(v133 + 338) = v18;
    v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v25);

    URL.appendingPathComponent(_:)();

    v26 = [objc_opt_self() defaultManager];
    NSFileManager.flatSequence(at:includingPropertiesForKeys:)();
    DirectorySequence.next()();

    (*(v128 + 8))(v14, v131);
    v27 = sub_100880D44(v126);
    v132 = v20;
    v129 = v17;
    v33 = v133[108];
    v34 = v133[107];
    v35 = v133[102];
    if (v29)
    {
      v36 = 0;
    }

    else
    {
      v36 = v27;
    }

    if (v29)
    {
      v37 = 0;
    }

    else
    {
      v37 = v28;
    }

    sub_1000D2A70(v133[103], v133[102], &unk_101696AC0, &qword_101390A60);
    if ((*(v33 + 48))(v35, 1, v34) == 1)
    {
      sub_10000B3A8(v133[102], &unk_101696AC0, &qword_101390A60);
      v38 = 1;
    }

    else
    {
      v39 = v133[110];
      v40 = v133[107];
      v41 = v133[97];
      v42 = v133[92];
      v43 = *(v133[108] + 32);
      v43(v39, v133[102], v40);
      v43(v41, v39, v40);
      v38 = 0;
      v44 = (v41 + *(v42 + 20));
      *v44 = v36;
      v44[1] = v37;
    }

    v45 = v13;
    v46 = v133[89];
    v47 = v133[88];
    v48 = *(v133 + 1357);
    (*(v133[93] + 56))(v133[97], v38, 1, v133[92]);
    v49 = sub_100880F5C(v36, v37, v47, v46);
    v52 = v49;
    v53 = v50;
    if (v48)
    {
      v54 = v122;
      if (v122 >> 60 == 15)
      {
        __break(1u);
        return _swift_task_switch(v49, v54, v51);
      }

      v55 = v133[89];
      v56 = v133[88];
      sub_10002E98C(v121, v122);
      v57 = sub_100881154(v56, v55, v52, v53);
      v59 = v58;
      v52 = v121;
      v53 = v122;
      goto LABEL_31;
    }

    v60 = v50 - v49;
    if (v50 >= v49)
    {
      v61 = v20;
      if ((v50 - v49) >= 0)
      {
LABEL_23:
        v62 = v60 + 1;
        if (__OFADD__(v60, 1))
        {
          goto LABEL_50;
        }

        sub_100017D5C(v61, v13);
        if (v62 <= 1344)
        {
          goto LABEL_29;
        }

        if (qword_101694A00 == -1)
        {
LABEL_26:
          v63 = v133[96];
          v64 = v133[87];
          v65 = type metadata accessor for Logger();
          sub_1000076D4(v65, qword_1016ABAA8);
          sub_1000295D4(v64, v63, type metadata accessor for KeyGenerationBeaconInfo);
          v66 = Logger.logObject.getter();
          v67 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v66, v67))
          {
            v68 = v133[96];
            v125 = v133[89];
            v124 = v133[88];
            v69 = swift_slowAlloc();
            v134 = swift_slowAlloc();
            *v69 = 136447235;
            v133[82] = v52;
            v133[83] = v53;
            v133[75] = 0;
            v133[76] = 0xE000000000000000;
            _print_unlocked<A, B>(_:_:)();
            v127 = v67;
            v70._countAndFlagsBits = 3026478;
            v70._object = 0xE300000000000000;
            String.append(_:)(v70);
            _print_unlocked<A, B>(_:_:)();
            v71 = sub_1000136BC(v133[75], v133[76], &v134);

            *(v69 + 4) = v71;
            *(v69 + 12) = 2160;
            *(v69 + 14) = 1752392040;
            *(v69 + 22) = 2081;
            sub_10087E3E8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v135 = dispatch thunk of CustomStringConvertible.description.getter();
            v136 = v72;
            v73._countAndFlagsBits = 47;
            v73._object = 0xE100000000000000;
            String.append(_:)(v73);
            type metadata accessor for BeaconIdentifier(0);
            v74._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v74);

            v76 = v135;
            v75 = v136;
            sub_10001F1B0(v68, type metadata accessor for KeyGenerationBeaconInfo);
            v77 = sub_1000136BC(v76, v75, &v134);

            *(v69 + 24) = v77;
            *(v69 + 32) = 2082;
            v133[84] = v124;
            v133[85] = v125;
            v133[77] = 0;
            v133[78] = 0xE000000000000000;
            _print_unlocked<A, B>(_:_:)();
            v78._countAndFlagsBits = 3026478;
            v78._object = 0xE300000000000000;
            String.append(_:)(v78);
            _print_unlocked<A, B>(_:_:)();
            v79 = sub_1000136BC(v133[77], v133[78], &v134);

            *(v69 + 34) = v79;
            *(v69 + 42) = 2082;
            *(v69 + 44) = sub_1000136BC(0x7972616D6972702ELL, 0xE800000000000000, &v134);
            _os_log_impl(&_mh_execute_header, v66, v127, "Large hole %{public}s would be created for %{private,mask.hash}s: %{public}s - %{public}s", v69, 0x34u);
            swift_arrayDestroy();

            v45 = v13;

            v36 = 0;
            v37 = 0;
            v59 = v133[89];
            v57 = v133[88];
            v52 = v20;
LABEL_30:
            v53 = v45;
LABEL_31:
            v133[119] = v53;
            v133[118] = v52;
            v81 = sub_1008815E8(v36, v37, v57, v59);
            v133[120] = v81;
            v82 = *(v81 + 2);
            v133[121] = v82;
            if (!v82)
            {

              if (qword_101694A00 == -1)
              {
LABEL_35:
                v93 = type metadata accessor for Logger();
                sub_1000076D4(v93, qword_1016ABAA8);
                v94 = Logger.logObject.getter();
                v95 = static os_log_type_t.info.getter();
                v96 = os_log_type_enabled(v94, v95);
                v97 = v133[111];
                v98 = v133[108];
                v99 = v133[107];
                v100 = v133[103];
                v101 = v133[97];
                if (v96)
                {
                  v102 = swift_slowAlloc();
                  *v102 = 0;
                  _os_log_impl(&_mh_execute_header, v94, v95, "No work to be done", v102, 2u);
                  v45 = v130;
                }

                sub_100883574(v120, v129, v132, v45, v121, v122);
                sub_100016590(v52, v53);
                sub_10000B3A8(v101, &qword_1016ABE88, &unk_1013BFCF0);
                sub_10000B3A8(v100, &unk_101696AC0, &qword_101390A60);
                (*(v98 + 8))(v97, v99);

                v30 = v133[1];
                v31 = v133[121] != 0;
                goto LABEL_4;
              }

LABEL_51:
              swift_once();
              goto LABEL_35;
            }

            v83 = v133[108];
            v133[122] = 0;
            if (*(v81 + 2))
            {
              v84 = v133[111];
              v85 = v133[109];
              v86 = v133[107];
              v87 = v133[103];
              v88 = v133[101];
              v89 = v133[90];
              v91 = *(v81 + 4);
              v90 = *(v81 + 5);
              v92 = *(v83 + 16);
              v133[123] = v92;
              v133[124] = (v83 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
              v92(v85, v84, v86);
              sub_1000D2A70(v87, v88, &unk_101696AC0, &qword_101390A60);
              v133[125] = sub_100873960(v85, v91, v90, v88, v89);
              if (v91 < 2)
              {
                v106 = 0;
                v107 = 0;
                v108 = 0;
                v109 = 0xF000000000000000;
              }

              else
              {
                v103 = sub_1009C475C(v133[87], v91, *(v133[91] + 144));
                v107 = v103;
                v108 = v104;
                v109 = v105;
                if (v105 >> 60 == 15)
                {
                  v106 = 0;
                }

                else
                {
                  v106 = v103;
                }
              }

              v133[129] = v109;
              v133[128] = v108;
              v133[127] = v107;
              v133[126] = v106;
              v110 = v133[113];
              v111 = v133[112];
              sub_100017D5C(v111, v110);
              sub_100017D5C(v111, v110);
              sub_10002EA98(57, v111, v110, v133 + 67);
              sub_100496F68(v133[67], v133[68], v133 + 71);
              v112 = v133[72];
              if (v112 >> 60 == 15)
              {
                return _assertionFailure(_:_:file:line:flags:)();
              }

              v113 = v133[119];
              v114 = v133[118];
              v115 = v133[113];
              v116 = v133[112];
              v117 = v133[71];
              sub_100017D5C(v114, v113);
              sub_100429BEC(v107, v108, v109);
              sub_10099B5CC(v116, v115, v117, v112, v114, v113, v107, v108, (v133 + 20), v109, v91);
              v133[130] = 0;
              v118 = *(v133 + 11);
              *(v133 + 131) = *(v133 + 10);
              *(v133 + 133) = v118;
              v119 = *(v133 + 13);
              *(v133 + 135) = *(v133 + 12);
              *(v133 + 137) = v119;
              v133[139] = v133[28];
              sub_100429BEC(v107, v108, v109);
              sub_100429C24((v133 + 20), (v133 + 29));
              v49 = sub_10086FC18;
              v54 = 0;
              v51 = 0;

              return _swift_task_switch(v49, v54, v51);
            }

            __break(1u);
LABEL_50:
            __break(1u);
            goto LABEL_51;
          }

          v80 = v133[96];

          sub_10001F1B0(v80, type metadata accessor for KeyGenerationBeaconInfo);
          v36 = 0;
          v37 = 0;
LABEL_29:
          v59 = v133[89];
          v57 = v133[88];
          v52 = v61;
          goto LABEL_30;
        }

LABEL_54:
        swift_once();
        goto LABEL_26;
      }
    }

    else
    {
      v61 = v20;
      if (&v49[-v50] >= 0)
      {
        v60 = v50 - v49;
        goto LABEL_23;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_54;
  }

  sub_100883394();
  swift_allocError();
  *v8 = 1;
  swift_willThrow();

  v30 = v0[1];
  v31 = 0;
LABEL_4:

  return v30(v31);
}

uint64_t sub_10086FC18()
{
  if (static Task<>.isCancelled.getter())
  {
    v1 = *(v0 + 1096);
    v2 = *(v0 + 1040);
    v3 = *(v0 + 1008);
    *(v0 + 1328) = *(v0 + 1024);
    *(v0 + 1312) = v3;
    *(v0 + 1296) = *(v0 + 1104);
    *(v0 + 1288) = v1;
    *(v0 + 1280) = v2;
    v4 = sub_1008723A4;
  }

  else
  {
    v5 = *(v0 + 1112);
    v6 = *(v0 + 1104);
    v7 = *(v0 + 1096);
    v8 = *(v0 + 1040);
    v9 = *(v0 + 1032);
    v10 = *(v0 + 1024);
    v11 = *(v0 + 1016);
    v12 = *(v0 + 1008);
    *(v0 + 1168) = v7;
    *(v0 + 1160) = v6;
    *(v0 + 1152) = v5;
    *(v0 + 1144) = v12;
    *(v0 + 1136) = v11;
    *(v0 + 1128) = v10;
    *(v0 + 1120) = v9;
    v13 = *(v0 + 1064);
    *(v0 + 304) = *(v0 + 1048);
    *(v0 + 320) = v13;
    *(v0 + 336) = *(v0 + 1080);
    *(v0 + 352) = v7;
    *(v0 + 360) = v6;
    *(v0 + 368) = v5;
    sub_100429C24(v0 + 304, v0 + 16);
    sub_100017D5C(v6, v5);
    sub_100017D5C(v6, v5);
    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    *(v0 + 520) = 0x7365547265646E75;
    *(v0 + 528) = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    v14 = sub_100A7563C(v6, v5, 1);
    *(v0 + 1176) = v14;
    *(v0 + 1184) = v15;
    if (v8)
    {
      sub_100016590(v6, v5);
      sub_100016590(v6, v5);
      sub_100429C80(v0 + 304);
      *(v0 + 1272) = v5;
      *(v0 + 1264) = v6;
      *(v0 + 1256) = v7;
      v23 = static os_log_type_t.error.getter();
      if (qword_101694BE0 != -1)
      {
        swift_once();
      }

      v24 = qword_10177BA00;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_101385D80;
      v26 = _convertErrorToNSError(_:)();
      *(v25 + 56) = sub_100008BB8(0, &qword_10169E020, NSError_ptr);
      *(v25 + 64) = sub_100009D18(&qword_1016BC310, &qword_10169E020, NSError_ptr, &protocol conformance descriptor for NSObject);
      *(v25 + 32) = v26;
      os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v24, "Error in TokenAsyncSequence: %@", 31, 2, v25);

      v4 = sub_100871668;
    }

    else
    {
      v16 = v14;
      v17 = v15;
      v18 = String.utf8Data.getter();
      v20 = v19;
      v21 = sub_100A79CBC(v16, v17, v18, v19, 72);
      sub_100495DF4(v21, v22, (v0 + 552));
      v30 = *(v0 + 1056);
      sub_100016590(v18, v20);
      v76 = *(v0 + 552);
      v31 = *(v0 + 560);
      if (v30 >> 60 == 15)
      {
        v32 = *(v0 + 1072);
        v33 = *(v0 + 1064);
        sub_100017D5C(v76, *(v0 + 560));
        v34 = sub_100A7A194(v33, v32, 0, 0);
        v38 = v31;
        v41 = sub_100A7A73C(v34, 0, v76, v31);
        CCECCryptorRelease();
        sub_100016590(v76, v38);
        v42 = sub_100A7829C(v41, 0, 0);
        v44 = v43;
        sub_100017D5C(v42, v43);
        v72 = sub_10049C0AC(v42, v44);
        v73 = v50;
        CCECCryptorRelease();
        v27 = sub_100016590(v42, v44);
        v51 = *(v0 + 1056);
        v52 = *(v0 + 1048);
      }

      else
      {
        v35 = *(v0 + 1056);
        v36 = *(v0 + 1048);
        sub_10002E98C(v36, v35);
        sub_100017D5C(v76, v31);
        v37 = sub_100A7A194(v36, v35, 0, 1);
        v39 = sub_100A7A73C(v37, 1uLL, v76, v31);
        v40 = v31;
        v45 = v39;
        v46 = v40;
        CCECCryptorRelease();
        sub_100016590(v76, v46);
        v75 = v45;
        v47 = sub_100A7829C(v45, 1, 0);
        v49 = v48;
        v74 = v47;
        v66 = sub_100A7829C(v75, 0, 0);
        v67 = v58;
        sub_100017D5C(v74, v49);
        v65 = v49;
        v69 = sub_10049BD68(v74, v49);
        v71 = v59;
        sub_100017D5C(v66, v67);
        v72 = sub_10049C0AC(v66, v67);
        v73 = v60;
        v61 = *(v0 + 1056);
        v64 = *(v0 + 1048);
        CCECCryptorRelease();
        sub_100016590(v66, v67);
        sub_100016590(v74, v65);
        v27 = sub_100006654(v64, v61);
        v38 = v46;
        v52 = v69;
        v51 = v71;
      }

      v68 = v52;
      v70 = v51;
      *(v0 + 1200) = v51;
      *(v0 + 1192) = v52;
      *(v0 + 1208) = v73;
      *(v0 + 1216) = v72;
      *(v0 + 1224) = v7 + 1;
      if (v7 == -1)
      {
        __break(1u);
        return _swift_task_switch(v27, v28, v29);
      }

      sub_100017D5C(v16, v17);
      sub_100016590(v6, v5);
      v53 = String.utf8Data.getter();
      v55 = v54;
      v56 = sub_100A79CBC(v16, v17, v53, v54, 32);
      sub_1004A4714(v56, v57, (v0 + 504));
      *(v0 + 1232) = 0;
      sub_100016590(v53, v55);
      v62 = *(v0 + 512);
      *(v0 + 1240) = *(v0 + 504);
      *(v0 + 1248) = v62;
      sub_100017D5C(v72, v73);
      sub_10002E98C(v68, v70);
      sub_100006654(v68, v70);
      sub_100016590(v72, v73);
      sub_100016590(v16, v17);
      sub_100016590(v76, v38);
      sub_100429C80(v0 + 304);
      sub_100016590(v6, v5);
      v4 = sub_100870494;
    }
  }

  v27 = v4;
  v28 = 0;
  v29 = 0;

  return _swift_task_switch(v27, v28, v29);
}

void sub_100870494()
{
  if (*(v0 + 1168) <= *(v0 + 712))
  {
    v28 = *(v0 + 1232);
    v29 = *(v0 + 1216);
    v30 = *(v0 + 1208);
    v31 = *(v0 + 1160);
    v32 = *(v0 + 1152);
    sub_100429C08(*(v0 + 1136), *(v0 + 1128), *(v0 + 1120));
    sub_100017D5C(v31, v32);
    v33 = sub_100A7A194(v29, v30, 0, 0);
    if (v28)
    {
      v34 = static os_log_type_t.error.getter();
      if (qword_101694BE0 != -1)
      {
        swift_once();
      }

      v35 = qword_10177BA00;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_101385D80;
      *(v0 + 632) = v28;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v37 = String.init<A>(describing:)();
      v39 = v38;
      *(v36 + 56) = &type metadata for String;
      *(v36 + 64) = sub_100008C00();
      *(v36 + 32) = v37;
      *(v36 + 40) = v39;
      os_log(_:dso:log:_:_:)(v34, &_mh_execute_header, v35, "Error deriving advertisementKey: %@", 35, 2, v36);

      sub_1001BAF88();
      v40 = swift_allocError();
      *v41 = 0;
      swift_willThrow();

      goto LABEL_8;
    }

    v15 = sub_100A7829C(v33, 0, 2);
    v53 = v52;
    v17 = CCECCryptorRelease();
    v54 = v53 >> 62;
    if ((v53 >> 62) > 1)
    {
      if (v54 != 2)
      {
        v74 = 0;
        goto LABEL_52;
      }

      v62 = *(v15 + 16);
      v61 = *(v15 + 24);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      if (v63)
      {
        __break(1u);
        goto LABEL_25;
      }
    }

    else if (v54)
    {
      LODWORD(v55) = HIDWORD(v15) - v15;
      if (__OFSUB__(HIDWORD(v15), v15))
      {
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v55 = v55;
    }

    else
    {
      v55 = BYTE6(v53);
    }

    if (v55 == 28)
    {
      v72 = *(v0 + 1000);
      v73 = objc_autoreleasePoolPush();
      sub_1008764E8(v72, v15, v53, v0 + 648, sub_1006073B0, sub_100DF0094);
      *(v0 + 1344) = 0;
      v103 = *(v0 + 1248);
      v104 = *(v0 + 1240);
      v105 = *(v0 + 1216);
      v106 = *(v0 + 1208);
      v153 = *(v0 + 1192);
      v157 = *(v0 + 1200);
      v107 = *(v0 + 1160);
      v108 = *(v0 + 1152);
      objc_autoreleasePoolPop(v73);
      sub_100016590(v107, v108);
      sub_100006654(v104, v103);
      sub_100016590(v105, v106);
      sub_100006654(v153, v157);
      sub_100016590(v15, v53);
      v109 = sub_1008730E0;
      goto LABEL_45;
    }

    if (v54 == 2)
    {
      v111 = *(v15 + 16);
      v110 = *(v15 + 24);
      v74 = v110 - v111;
      if (!__OFSUB__(v110, v111))
      {
        goto LABEL_52;
      }

      __break(1u);
    }

    else if (v54 == 1)
    {
      if (__OFSUB__(HIDWORD(v15), v15))
      {
LABEL_64:
        __break(1u);
_swift_task_switch:
        _swift_task_switch(v17, v18, v19);
        return;
      }

      v74 = HIDWORD(v15) - v15;
      goto LABEL_52;
    }

    v74 = BYTE6(v53);
LABEL_52:
    sub_100018350();
    v40 = swift_allocError();
    *v112 = 28;
    *(v112 + 8) = v74;
    *(v112 + 16) = 0;
    swift_willThrow();
    sub_100016590(v15, v53);
LABEL_8:
    _StringGuts.grow(_:)(35);
    *(v0 + 584) = 0;
    *(v0 + 592) = 0xE000000000000000;
    v42._countAndFlagsBits = 0xD000000000000021;
    v42._object = 0x800000010134CB30;
    String.append(_:)(v42);
    *(v0 + 640) = v40;
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    _print_unlocked<A, B>(_:_:)();
    goto LABEL_9;
  }

  v3 = (v0 + 1048);
  v4 = *(v0 + 1064);
  *(v0 + 88) = *(v0 + 1048);
  v5 = *(v0 + 1248);
  v6 = *(v0 + 1240);
  v7 = *(v0 + 1224);
  v8 = *(v0 + 1216);
  v9 = *(v0 + 1208);
  v155 = *(v0 + 1200);
  v10 = *(v0 + 1192);
  v11 = *(v0 + 1160);
  v12 = *(v0 + 1152);
  v13 = *(v0 + 1080);
  *(v0 + 104) = v4;
  *(v0 + 120) = v13;
  *(v0 + 136) = v7;
  *(v0 + 144) = *(v0 + 1176);
  sub_100429C80(v0 + 88);
  sub_100016590(v11, v12);
  sub_100006654(v6, v5);
  sub_100016590(v8, v9);
  sub_100006654(v10, v155);
  v14 = *(v0 + 1232);
  v15 = *(v0 + 1144);
  v16 = *(v0 + 1136);
  v2 = *(v0 + 1128);
  v1 = *(v0 + 1120);
  v17 = sub_100876778();
  v154 = v14;
  if (!v14)
  {
    v146 = v16;
    v43 = *(v0 + 1000);
    v44 = *(v43 + qword_1016AC3B0);
    v45 = *(v43 + qword_1016AC3B8);
    if (v45 < v44)
    {
      __break(1u);
      goto LABEL_61;
    }

    v46 = *(v0 + 776);
    v47 = *(v0 + 752);
    v48 = *(v0 + 736);
    (*(v0 + 984))(v47, *(v0 + 888), *(v0 + 856));
    v49 = (v47 + *(v48 + 20));
    *v49 = v44;
    v49[1] = v45;
    v17 = sub_100881B1C(v46, v47);
    if (v1 >> 60 == 15)
    {
      v56 = *(v0 + 1032);
      v57 = *(v0 + 1024);
      v58 = *(v0 + 1016);
      sub_10001F1B0(*(v0 + 752), type metadata accessor for BeaconKeyServiceBuilder.FileSwapInfo);
      sub_100429C80(v0 + 160);

      v59 = v58;
      v60 = v57;
      goto LABEL_39;
    }

LABEL_25:
    if (v146 >= v15)
    {
      if (v146 - v15 >= 0xFA1)
      {
        v64 = *(v0 + 1357);
        v65 = *(v0 + 696);
        v66 = *(*(v0 + 728) + 144);
        sub_1000BC4D4(&qword_10169FCB8, &unk_1013BFD00);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_101385D80;
        *(inited + 32) = v146;
        v68 = inited + 32;
        *(inited + 40) = v2;
        *(inited + 48) = v1;
        sub_100429BEC(v146, v2, v1);
        sub_100017D5C(v2, v1);
        sub_1009BF638(v65, v64 & 1, inited, v66);
        v69 = *(v0 + 1032);
        v151 = *(v0 + 1024);
        v144 = *(v0 + 1016);
        if (v154)
        {
          v131 = *(v0 + 936);
          v128 = *(v0 + 920);
          v129 = *(v0 + 928);
          v126 = *(v0 + 904);
          v127 = *(v0 + 912);
          v70 = *(v0 + 896);
          v71 = *(v0 + 864);
          v140 = *(v0 + 856);
          v142 = *(v0 + 888);
          v136 = *(v0 + 776);
          v138 = *(v0 + 824);
          v134 = *(v0 + 752);
          sub_100016590(*(v0 + 944), *(v0 + 952));
          sub_100429C80(v0 + 160);
          sub_100429C08(v146, v2, v1);
          sub_100429C08(v146, v2, v1);

          sub_100429C08(v144, v151, v69);
          sub_100883574(v70, v126, v127, v128, v129, v131);

          swift_setDeallocating();
          sub_100429CD4(v68);
          sub_10001F1B0(v134, type metadata accessor for BeaconKeyServiceBuilder.FileSwapInfo);
          sub_10000B3A8(v136, &qword_1016ABE88, &unk_1013BFCF0);
          sub_10000B3A8(v138, &unk_101696AC0, &qword_101390A60);
          (*(v71 + 8))(v142, v140);
          goto LABEL_12;
        }

        v113 = *(v0 + 752);
        sub_100429C80(v0 + 160);
        sub_100429C08(v146, v2, v1);
        swift_setDeallocating();
        sub_100429CD4(v68);
        sub_100429C08(v146, v2, v1);

        sub_100429C08(v144, v151, v69);
        v17 = sub_10001F1B0(v113, type metadata accessor for BeaconKeyServiceBuilder.FileSwapInfo);
LABEL_40:
        v78 = *(v0 + 976) + 1;
        if (v78 == *(v0 + 968))
        {
          v145 = *(v0 + 952);
          v79 = *(v0 + 944);
          v80 = *(v0 + 936);
          v81 = *(v0 + 928);
          v82 = *(v0 + 920);
          v83 = *(v0 + 912);
          v84 = *(v0 + 904);
          v85 = *(v0 + 896);
          v86 = *(v0 + 864);
          v152 = *(v0 + 856);
          v156 = *(v0 + 888);
          v148 = *(v0 + 824);
          v87 = *(v0 + 776);

          sub_100883574(v85, v84, v83, v82, v81, v80);
          sub_100016590(v79, v145);
          sub_10000B3A8(v87, &qword_1016ABE88, &unk_1013BFCF0);
          sub_10000B3A8(v148, &unk_101696AC0, &qword_101390A60);
          (*(v86 + 8))(v156, v152);

          v50 = *(v0 + 8);
          v51 = *(v0 + 968) != 0;
          goto LABEL_13;
        }

        *(v0 + 976) = v78;
        v88 = *(v0 + 960);
        if (v78 < *(v88 + 16))
        {
          v89 = *(v0 + 888);
          v90 = *(v0 + 872);
          v91 = *(v0 + 864);
          v92 = *(v0 + 856);
          v93 = *(v0 + 824);
          v94 = *(v0 + 808);
          v95 = *(v0 + 720);
          v96 = v88 + 16 * v78;
          v98 = *(v96 + 32);
          v97 = *(v96 + 40);
          v99 = *(v91 + 16);
          *(v0 + 984) = v99;
          *(v0 + 992) = (v91 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v99(v90, v89, v92);
          sub_1000D2A70(v93, v94, &unk_101696AC0, &qword_101390A60);
          *(v0 + 1000) = sub_100873960(v90, v98, v97, v94, v95);
          if (v98 < 2)
          {
            v114 = 0;
            v115 = 0;
            v116 = 0;
            v117 = 0xF000000000000000;
          }

          else
          {
            v100 = sub_1009C475C(*(v0 + 696), v98, *(*(v0 + 728) + 144));
            v115 = v100;
            v116 = v101;
            v117 = v102;
            if (v102 >> 60 == 15)
            {
              v114 = 0;
            }

            else
            {
              v114 = v100;
            }
          }

          *(v0 + 1032) = v117;
          *(v0 + 1024) = v116;
          *(v0 + 1016) = v115;
          *(v0 + 1008) = v114;
          v118 = *(v0 + 904);
          v119 = *(v0 + 896);
          sub_100017D5C(v119, v118);
          sub_100017D5C(v119, v118);
          sub_10002EA98(57, v119, v118, (v0 + 536));
          sub_100496F68(*(v0 + 536), *(v0 + 544), (v0 + 568));
          v120 = *(v0 + 576);
          if (v120 >> 60 != 15)
          {
            v121 = *(v0 + 952);
            v122 = *(v0 + 944);
            v158 = *(v0 + 904);
            v123 = *(v0 + 896);
            v149 = *(v0 + 568);
            sub_100017D5C(v122, v121);
            sub_100429BEC(v115, v116, v117);
            sub_10099B5CC(v123, v158, v149, v120, v122, v121, v115, v116, v0 + 160, v117, v98);
            *(v0 + 1040) = 0;
            v124 = *(v0 + 176);
            *v3 = *(v0 + 160);
            v3[1] = v124;
            v125 = *(v0 + 208);
            v3[2] = *(v0 + 192);
            v3[3] = v125;
            *(v0 + 1112) = *(v0 + 224);
            sub_100429BEC(v115, v116, v117);
            sub_100429C24(v0 + 160, v0 + 232);
            v109 = sub_10086FC18;
LABEL_45:
            v17 = v109;
            v18 = 0;
            v19 = 0;

            goto _swift_task_switch;
          }

LABEL_9:
          _assertionFailure(_:_:file:line:flags:)();
          return;
        }

        goto LABEL_62;
      }

      v56 = *(v0 + 1032);
      v75 = *(v0 + 1024);
      v76 = *(v0 + 1016);
      v77 = *(v0 + 752);
      sub_100017D5C(v2, v1);
      sub_10001F1B0(v77, type metadata accessor for BeaconKeyServiceBuilder.FileSwapInfo);
      sub_100429C80(v0 + 160);

      sub_100429C08(v146, v2, v1);
      sub_100429C08(v146, v2, v1);
      v59 = v76;
      v60 = v75;
LABEL_39:
      v17 = sub_100429C08(v59, v60, v56);
      goto LABEL_40;
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v132 = *(v0 + 1016);
  v137 = *(v0 + 952);
  v139 = *(v0 + 1032);
  v133 = *(v0 + 944);
  v135 = *(v0 + 1024);
  v20 = *(v0 + 936);
  v21 = *(v0 + 928);
  v22 = *(v0 + 920);
  v23 = *(v0 + 912);
  v150 = v2;
  v24 = *(v0 + 904);
  v25 = *(v0 + 896);
  v26 = v16;
  v27 = *(v0 + 864);
  v143 = *(v0 + 856);
  v147 = *(v0 + 888);
  v141 = *(v0 + 824);
  v130 = *(v0 + 776);

  sub_100883574(v25, v24, v23, v22, v21, v20);
  sub_100429C08(v26, v150, v1);
  sub_100429C80(v0 + 160);
  sub_100429C08(v132, v135, v139);
  sub_100016590(v133, v137);
  sub_10000B3A8(v130, &qword_1016ABE88, &unk_1013BFCF0);
  sub_10000B3A8(v141, &unk_101696AC0, &qword_101390A60);
  (*(v27 + 8))(v147, v143);
LABEL_12:

  v50 = *(v0 + 8);
  v51 = 0;
LABEL_13:

  v50(v51);
}

uint64_t sub_100871668()
{
  v1 = *(v0 + 1256);
  v2 = *(v0 + 1144);
  v3 = *(v0 + 1136);
  v4 = *(v0 + 1128);
  v5 = *(v0 + 1120);
  v6 = *(v0 + 1088);
  *(v0 + 376) = *(v0 + 1048);
  v7 = *(v0 + 1072);
  *(v0 + 384) = *(v0 + 1056);
  *(v0 + 400) = v7;
  *(v0 + 416) = v6;
  *(v0 + 424) = v1;
  *(v0 + 432) = *(v0 + 1264);
  sub_100429C80(v0 + 376);
  v8 = sub_100876778();
  v73 = v3;
  v11 = *(v0 + 1000);
  v12 = *(v11 + qword_1016AC3B0);
  v13 = *(v11 + qword_1016AC3B8);
  if (v13 < v12)
  {
    __break(1u);
    goto LABEL_28;
  }

  v14 = *(v0 + 776);
  v15 = *(v0 + 752);
  v16 = *(v0 + 736);
  (*(v0 + 984))(v15, *(v0 + 888), *(v0 + 856));
  v17 = (v15 + *(v16 + 20));
  *v17 = v12;
  v17[1] = v13;
  v8 = sub_100881B1C(v14, v15);
  if (v5 >> 60 == 15)
  {
    v19 = *(v0 + 1032);
    v20 = *(v0 + 1024);
    v21 = *(v0 + 1016);
    sub_10001F1B0(*(v0 + 752), type metadata accessor for BeaconKeyServiceBuilder.FileSwapInfo);
    sub_100429C80(v0 + 160);

    goto LABEL_12;
  }

  if (v73 < v2)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v73 - v2 >= 0xFA1)
  {
    v22 = *(v0 + 1357);
    v23 = *(v0 + 696);
    v24 = *(*(v0 + 728) + 144);
    sub_1000BC4D4(&qword_10169FCB8, &unk_1013BFD00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101385D80;
    *(inited + 32) = v73;
    *(inited + 40) = v4;
    *(inited + 48) = v5;
    sub_100429BEC(v73, v4, v5);
    sub_100017D5C(v4, v5);
    sub_1009BF638(v23, v22 & 1, inited, v24);
    v26 = *(v0 + 1032);
    v27 = *(v0 + 1024);
    v71 = *(v0 + 1016);
    v56 = *(v0 + 752);
    sub_100429C80(v0 + 160);
    sub_100429C08(v73, v4, v5);
    swift_setDeallocating();
    sub_100429CD4(inited + 32);
    sub_100429C08(v73, v4, v5);

    sub_100429C08(v71, v27, v26);
    v8 = sub_10001F1B0(v56, type metadata accessor for BeaconKeyServiceBuilder.FileSwapInfo);
    goto LABEL_13;
  }

  v19 = *(v0 + 1032);
  v20 = *(v0 + 1024);
  v21 = *(v0 + 1016);
  v28 = *(v0 + 752);
  sub_100017D5C(v4, v5);
  sub_10001F1B0(v28, type metadata accessor for BeaconKeyServiceBuilder.FileSwapInfo);
  sub_100429C80(v0 + 160);

  sub_100429C08(v73, v4, v5);
  sub_100429C08(v73, v4, v5);
LABEL_12:
  v8 = sub_100429C08(v21, v20, v19);
LABEL_13:
  v29 = *(v0 + 976) + 1;
  if (v29 != *(v0 + 968))
  {
    *(v0 + 976) = v29;
    v41 = *(v0 + 960);
    if (v29 < *(v41 + 16))
    {
      v42 = *(v0 + 888);
      v43 = *(v0 + 872);
      v44 = *(v0 + 864);
      v45 = *(v0 + 856);
      v46 = *(v0 + 824);
      v47 = *(v0 + 808);
      v48 = *(v0 + 720);
      v49 = v41 + 16 * v29;
      v51 = *(v49 + 32);
      v50 = *(v49 + 40);
      v52 = *(v44 + 16);
      *(v0 + 984) = v52;
      *(v0 + 992) = (v44 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v52(v43, v42, v45);
      sub_1000D2A70(v46, v47, &unk_101696AC0, &qword_101390A60);
      *(v0 + 1000) = sub_100873960(v43, v51, v50, v47, v48);
      if (v51 < 2)
      {
        v57 = 0;
        v58 = 0;
        v59 = 0;
        v60 = 0xF000000000000000;
      }

      else
      {
        v53 = sub_1009C475C(*(v0 + 696), v51, *(*(v0 + 728) + 144));
        v58 = v53;
        v59 = v54;
        v60 = v55;
        if (v55 >> 60 == 15)
        {
          v57 = 0;
        }

        else
        {
          v57 = v53;
        }
      }

      *(v0 + 1032) = v60;
      *(v0 + 1024) = v59;
      *(v0 + 1016) = v58;
      *(v0 + 1008) = v57;
      v61 = *(v0 + 904);
      v62 = *(v0 + 896);
      sub_100017D5C(v62, v61);
      sub_100017D5C(v62, v61);
      sub_10002EA98(57, v62, v61, (v0 + 536));
      sub_100496F68(*(v0 + 536), *(v0 + 544), (v0 + 568));
      v63 = *(v0 + 576);
      if (v63 >> 60 == 15)
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      v64 = *(v0 + 952);
      v65 = *(v0 + 944);
      v76 = *(v0 + 904);
      v66 = *(v0 + 896);
      v67 = *(v0 + 568);
      sub_100017D5C(v65, v64);
      sub_100429BEC(v58, v59, v60);
      sub_10099B5CC(v66, v76, v67, v63, v65, v64, v58, v59, v0 + 160, v60, v51);
      *(v0 + 1040) = 0;
      v68 = *(v0 + 176);
      *(v0 + 1048) = *(v0 + 160);
      *(v0 + 1064) = v68;
      v69 = *(v0 + 208);
      *(v0 + 1080) = *(v0 + 192);
      *(v0 + 1096) = v69;
      *(v0 + 1112) = *(v0 + 224);
      sub_100429BEC(v58, v59, v60);
      sub_100429C24(v0 + 160, v0 + 232);
      v8 = sub_10086FC18;
      v9 = 0;
      v10 = 0;

      return _swift_task_switch(v8, v9, v10);
    }

LABEL_29:
    __break(1u);
    return _swift_task_switch(v8, v9, v10);
  }

  v70 = *(v0 + 952);
  v30 = *(v0 + 944);
  v31 = *(v0 + 936);
  v32 = *(v0 + 928);
  v33 = *(v0 + 920);
  v34 = *(v0 + 912);
  v35 = *(v0 + 904);
  v36 = *(v0 + 896);
  v37 = *(v0 + 864);
  v74 = *(v0 + 856);
  v75 = *(v0 + 888);
  v72 = *(v0 + 824);
  v38 = *(v0 + 776);

  sub_100883574(v36, v35, v34, v33, v32, v31);
  sub_100016590(v30, v70);
  sub_10000B3A8(v38, &qword_1016ABE88, &unk_1013BFCF0);
  sub_10000B3A8(v72, &unk_101696AC0, &qword_101390A60);
  (*(v37 + 8))(v75, v74);

  v39 = *(v0 + 8);
  v40 = *(v0 + 968) != 0;

  return v39(v40);
}

uint64_t sub_1008723A4()
{
  v1 = *(v0 + 1336);
  v2 = *(v0 + 1328);
  v3 = *(v0 + 1320);
  v4 = *(v0 + 1312);
  v5 = *(v0 + 1288);
  v6 = *(v0 + 1280);
  v7 = *(v0 + 1088);
  *(v0 + 376) = *(v0 + 1048);
  v8 = *(v0 + 1072);
  *(v0 + 384) = *(v0 + 1056);
  *(v0 + 400) = v8;
  *(v0 + 416) = v7;
  *(v0 + 424) = v5;
  *(v0 + 432) = *(v0 + 1296);
  sub_100429C80(v0 + 376);
  v9 = sub_100876778();
  v91 = v3;
  if (!v6)
  {
    v19 = *(v0 + 1000);
    v20 = *(v19 + qword_1016AC3B0);
    v21 = *(v19 + qword_1016AC3B8);
    if (v21 < v20)
    {
      __break(1u);
    }

    else
    {
      v22 = *(v0 + 776);
      v23 = *(v0 + 752);
      v24 = *(v0 + 736);
      (*(v0 + 984))(v23, *(v0 + 888), *(v0 + 856));
      v25 = (v23 + *(v24 + 20));
      *v25 = v20;
      v25[1] = v21;
      v9 = sub_100881B1C(v22, v23);
      if (v1 >> 60 == 15)
      {
        v29 = *(v0 + 1032);
        v30 = *(v0 + 1024);
        v31 = *(v0 + 1016);
        sub_10001F1B0(*(v0 + 752), type metadata accessor for BeaconKeyServiceBuilder.FileSwapInfo);
        sub_100429C80(v0 + 160);

        goto LABEL_14;
      }

      if (v91 >= v4)
      {
        if (v91 - v4 >= 0xFA1)
        {
          v32 = *(v0 + 1357);
          v33 = *(v0 + 696);
          v34 = *(*(v0 + 728) + 144);
          sub_1000BC4D4(&qword_10169FCB8, &unk_1013BFD00);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_101385D80;
          *(inited + 32) = v91;
          *(inited + 40) = v2;
          *(inited + 48) = v1;
          sub_100429BEC(v91, v2, v1);
          sub_100017D5C(v2, v1);
          sub_1009BF638(v33, v32 & 1, inited, v34);
          v36 = *(v0 + 1032);
          v37 = *(v0 + 1024);
          v89 = *(v0 + 1016);
          v64 = *(v0 + 752);
          sub_100429C80(v0 + 160);
          sub_100429C08(v91, v2, v1);
          swift_setDeallocating();
          sub_100429CD4(inited + 32);
          sub_100429C08(v91, v2, v1);

          sub_100429C08(v89, v37, v36);
          v9 = sub_10001F1B0(v64, type metadata accessor for BeaconKeyServiceBuilder.FileSwapInfo);
          goto LABEL_15;
        }

        v29 = *(v0 + 1032);
        v30 = *(v0 + 1024);
        v31 = *(v0 + 1016);
        v38 = *(v0 + 752);
        sub_100017D5C(v2, v1);
        sub_10001F1B0(v38, type metadata accessor for BeaconKeyServiceBuilder.FileSwapInfo);
        sub_100429C80(v0 + 160);

        sub_100429C08(v91, v2, v1);
        sub_100429C08(v91, v2, v1);
LABEL_14:
        v9 = sub_100429C08(v31, v30, v29);
LABEL_15:
        v39 = *(v0 + 976) + 1;
        if (v39 == *(v0 + 968))
        {
          v87 = *(v0 + 952);
          v40 = *(v0 + 944);
          v41 = *(v0 + 936);
          v42 = *(v0 + 928);
          v43 = *(v0 + 920);
          v44 = *(v0 + 912);
          v45 = *(v0 + 904);
          v46 = *(v0 + 896);
          v47 = *(v0 + 864);
          v92 = *(v0 + 856);
          v93 = *(v0 + 888);
          v90 = *(v0 + 824);
          v48 = *(v0 + 776);

          sub_100883574(v46, v45, v44, v43, v42, v41);
          sub_100016590(v40, v87);
          sub_10000B3A8(v48, &qword_1016ABE88, &unk_1013BFCF0);
          sub_10000B3A8(v90, &unk_101696AC0, &qword_101390A60);
          (*(v47 + 8))(v93, v92);

          v26 = *(v0 + 8);
          v27 = *(v0 + 968) != 0;
          goto LABEL_5;
        }

        *(v0 + 976) = v39;
        v49 = *(v0 + 960);
        if (v39 < *(v49 + 16))
        {
          v50 = *(v0 + 888);
          v51 = *(v0 + 872);
          v52 = *(v0 + 864);
          v53 = *(v0 + 856);
          v54 = *(v0 + 824);
          v55 = *(v0 + 808);
          v56 = *(v0 + 720);
          v57 = v49 + 16 * v39;
          v59 = *(v57 + 32);
          v58 = *(v57 + 40);
          v60 = *(v52 + 16);
          *(v0 + 984) = v60;
          *(v0 + 992) = (v52 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v60(v51, v50, v53);
          sub_1000D2A70(v54, v55, &unk_101696AC0, &qword_101390A60);
          *(v0 + 1000) = sub_100873960(v51, v59, v58, v55, v56);
          if (v59 < 2)
          {
            v65 = 0;
            v66 = 0;
            v67 = 0;
            v68 = 0xF000000000000000;
          }

          else
          {
            v61 = sub_1009C475C(*(v0 + 696), v59, *(*(v0 + 728) + 144));
            v66 = v61;
            v67 = v62;
            v68 = v63;
            if (v63 >> 60 == 15)
            {
              v65 = 0;
            }

            else
            {
              v65 = v61;
            }
          }

          *(v0 + 1032) = v68;
          *(v0 + 1024) = v67;
          *(v0 + 1016) = v66;
          *(v0 + 1008) = v65;
          v69 = *(v0 + 904);
          v70 = *(v0 + 896);
          sub_100017D5C(v70, v69);
          sub_100017D5C(v70, v69);
          sub_10002EA98(57, v70, v69, (v0 + 536));
          sub_100496F68(*(v0 + 536), *(v0 + 544), (v0 + 568));
          v71 = *(v0 + 576);
          if (v71 >> 60 == 15)
          {
            return _assertionFailure(_:_:file:line:flags:)();
          }

          v72 = *(v0 + 952);
          v73 = *(v0 + 944);
          v94 = *(v0 + 904);
          v74 = *(v0 + 896);
          v75 = *(v0 + 568);
          sub_100017D5C(v73, v72);
          sub_100429BEC(v66, v67, v68);
          sub_10099B5CC(v74, v94, v75, v71, v73, v72, v66, v67, v0 + 160, v68, v59);
          *(v0 + 1040) = 0;
          v76 = *(v0 + 176);
          *(v0 + 1048) = *(v0 + 160);
          *(v0 + 1064) = v76;
          v77 = *(v0 + 208);
          *(v0 + 1080) = *(v0 + 192);
          *(v0 + 1096) = v77;
          *(v0 + 1112) = *(v0 + 224);
          sub_100429BEC(v66, v67, v68);
          sub_100429C24(v0 + 160, v0 + 232);
          v9 = sub_10086FC18;
          v10 = 0;
          v11 = 0;

          return _swift_task_switch(v9, v10, v11);
        }

LABEL_31:
        __break(1u);
        return _swift_task_switch(v9, v10, v11);
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  v79 = *(v0 + 1016);
  v82 = *(v0 + 952);
  v83 = *(v0 + 1032);
  v80 = *(v0 + 944);
  v81 = *(v0 + 1024);
  v12 = *(v0 + 936);
  v13 = *(v0 + 928);
  v14 = *(v0 + 920);
  v15 = *(v0 + 912);
  v88 = v1;
  v16 = *(v0 + 904);
  v17 = *(v0 + 896);
  v18 = *(v0 + 864);
  v85 = *(v0 + 856);
  v86 = *(v0 + 888);
  v84 = *(v0 + 824);
  v78 = *(v0 + 776);

  sub_100883574(v17, v16, v15, v14, v13, v12);
  sub_100429C08(v91, v2, v88);
  sub_100429C80(v0 + 160);
  sub_100429C08(v79, v81, v83);
  sub_100016590(v80, v82);
  sub_10000B3A8(v78, &qword_1016ABE88, &unk_1013BFCF0);
  sub_10000B3A8(v84, &unk_101696AC0, &qword_101390A60);
  (*(v18 + 8))(v86, v85);

  v26 = *(v0 + 8);
  v27 = 0;
LABEL_5:

  return v26(v27);
}

uint64_t sub_1008730E0()
{
  if (static Task<>.isCancelled.getter())
  {
    v1 = *(v0 + 1344);
    v2 = *(v0 + 1224);
    v3 = *(v0 + 1168);
    v4 = *(v0 + 1160);
    *(v0 + 1336) = *(v0 + 1152);
    *(v0 + 1328) = v4;
    *(v0 + 1320) = v3;
    *(v0 + 1312) = v3;
    *(v0 + 1296) = *(v0 + 1176);
    *(v0 + 1288) = v2;
    *(v0 + 1280) = v1;
    v5 = sub_1008723A4;
  }

  else
  {
    v6 = *(v0 + 1344);
    v7 = *(v0 + 1224);
    v8 = *(v0 + 1184);
    v9 = *(v0 + 1176);
    v10 = *(v0 + 1168);
    *(v0 + 1168) = v7;
    *(v0 + 1144) = v10;
    *(v0 + 1136) = v10;
    v11 = *(v0 + 1152);
    *(v0 + 1160) = v9;
    *(v0 + 1152) = v8;
    *(v0 + 1120) = v11;
    v12 = *(v0 + 1064);
    *(v0 + 304) = *(v0 + 1048);
    *(v0 + 320) = v12;
    *(v0 + 336) = *(v0 + 1080);
    *(v0 + 352) = v7;
    *(v0 + 360) = v9;
    *(v0 + 368) = v8;
    sub_100429C24(v0 + 304, v0 + 16);
    sub_100017D5C(v9, v8);
    sub_100017D5C(v9, v8);
    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    *(v0 + 520) = 0x7365547265646E75;
    *(v0 + 528) = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    v13 = sub_100A7563C(v9, v8, 1);
    *(v0 + 1176) = v13;
    *(v0 + 1184) = v14;
    if (v6)
    {
      sub_100016590(v9, v8);
      sub_100016590(v9, v8);
      sub_100429C80(v0 + 304);
      *(v0 + 1272) = v8;
      *(v0 + 1264) = v9;
      *(v0 + 1256) = v7;
      v22 = static os_log_type_t.error.getter();
      if (qword_101694BE0 != -1)
      {
        swift_once();
      }

      v23 = qword_10177BA00;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_101385D80;
      v25 = _convertErrorToNSError(_:)();
      *(v24 + 56) = sub_100008BB8(0, &qword_10169E020, NSError_ptr);
      *(v24 + 64) = sub_100009D18(&qword_1016BC310, &qword_10169E020, NSError_ptr, &protocol conformance descriptor for NSObject);
      *(v24 + 32) = v25;
      os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v23, "Error in TokenAsyncSequence: %@", 31, 2, v24);

      v5 = sub_100871668;
    }

    else
    {
      v15 = v13;
      v16 = v14;
      v17 = String.utf8Data.getter();
      v19 = v18;
      v20 = sub_100A79CBC(v15, v16, v17, v18, 72);
      sub_100495DF4(v20, v21, (v0 + 552));
      v29 = *(v0 + 1056);
      sub_100016590(v17, v19);
      v75 = *(v0 + 552);
      v30 = *(v0 + 560);
      if (v29 >> 60 == 15)
      {
        v31 = *(v0 + 1072);
        v32 = *(v0 + 1064);
        sub_100017D5C(v75, *(v0 + 560));
        v33 = sub_100A7A194(v32, v31, 0, 0);
        v37 = v30;
        v40 = sub_100A7A73C(v33, 0, v75, v30);
        CCECCryptorRelease();
        sub_100016590(v75, v37);
        v41 = sub_100A7829C(v40, 0, 0);
        v43 = v42;
        sub_100017D5C(v41, v42);
        v71 = sub_10049C0AC(v41, v43);
        v72 = v49;
        CCECCryptorRelease();
        v26 = sub_100016590(v41, v43);
        v50 = *(v0 + 1056);
        v51 = *(v0 + 1048);
      }

      else
      {
        v34 = *(v0 + 1056);
        v35 = *(v0 + 1048);
        sub_10002E98C(v35, v34);
        sub_100017D5C(v75, v30);
        v36 = sub_100A7A194(v35, v34, 0, 1);
        v38 = sub_100A7A73C(v36, 1uLL, v75, v30);
        v39 = v30;
        v44 = v38;
        v45 = v39;
        CCECCryptorRelease();
        sub_100016590(v75, v45);
        v74 = v44;
        v46 = sub_100A7829C(v44, 1, 0);
        v48 = v47;
        v73 = v46;
        v65 = sub_100A7829C(v74, 0, 0);
        v66 = v57;
        sub_100017D5C(v73, v48);
        v64 = v48;
        v68 = sub_10049BD68(v73, v48);
        v70 = v58;
        sub_100017D5C(v65, v66);
        v71 = sub_10049C0AC(v65, v66);
        v72 = v59;
        v60 = *(v0 + 1056);
        v63 = *(v0 + 1048);
        CCECCryptorRelease();
        sub_100016590(v65, v66);
        sub_100016590(v73, v64);
        v26 = sub_100006654(v63, v60);
        v37 = v45;
        v51 = v68;
        v50 = v70;
      }

      v67 = v51;
      v69 = v50;
      *(v0 + 1200) = v50;
      *(v0 + 1192) = v51;
      *(v0 + 1208) = v72;
      *(v0 + 1216) = v71;
      *(v0 + 1224) = v7 + 1;
      if (v7 == -1)
      {
        __break(1u);
        return _swift_task_switch(v26, v27, v28);
      }

      sub_100017D5C(v15, v16);
      sub_100016590(v9, v8);
      v52 = String.utf8Data.getter();
      v54 = v53;
      v55 = sub_100A79CBC(v15, v16, v52, v53, 32);
      sub_1004A4714(v55, v56, (v0 + 504));
      *(v0 + 1232) = 0;
      sub_100016590(v52, v54);
      v61 = *(v0 + 512);
      *(v0 + 1240) = *(v0 + 504);
      *(v0 + 1248) = v61;
      sub_100017D5C(v71, v72);
      sub_10002E98C(v67, v69);
      sub_100006654(v67, v69);
      sub_100016590(v71, v72);
      sub_100016590(v15, v16);
      sub_100016590(v75, v37);
      sub_100429C80(v0 + 304);
      sub_100016590(v9, v8);
      v5 = sub_100870494;
    }
  }

  v26 = v5;
  v27 = 0;
  v28 = 0;

  return _swift_task_switch(v26, v27, v28);
}

uint64_t *sub_100873960(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v44 = a1;
  v10 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v11 = __chkstk_darwin(v10 - 8);
  v42 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v38 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v41 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v38 - v19;
  if (!a2)
  {
    v24 = &unk_1013BFC70;
    sub_1000BC4D4(&qword_1016ABE70, &unk_1013BFC70);
    sub_1000041A4(&qword_1016ABE78, &qword_1016ABE70, &unk_1013BFC70, &unk_1013C1158);
    swift_allocError();
    *v25 = 2;
    *(v25 + 4) = 2;
    swift_willThrow();
    sub_10000B3A8(a4, &unk_101696AC0, &qword_101390A60);
    (*(v16 + 8))(v44, v15);
    return v24;
  }

  v38 = a5;
  v43 = a4;
  v21 = *(v16 + 16);
  result = v21(&v38 - v19, v44, v15);
  v23 = a3 - a2;
  if (a3 >= a2)
  {
    if ((a3 - a2) < 0)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }
  }

  else
  {
    if ((a2 - a3) < 0)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v23 = a3 - a2;
  }

  v40 = v5;
  v26 = v23 + 1;
  if (__OFADD__(v23, 1))
  {
    __break(1u);
    goto LABEL_19;
  }

  sub_1000D2A70(v43, v14, &unk_101696AC0, &qword_101390A60);
  sub_1000BC4D4(&qword_1016ABE98, &qword_1013BFD18);
  v24 = swift_allocObject();
  *(v24 + qword_1016AC3C8) = 0;
  result = v21(v24 + qword_1016AC3A0, v20, v15);
  if (HIDWORD(a2))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v39 = v20;
  *(v24 + qword_1016AC3B0) = a2;
  *(v24 + qword_1016AC3B8) = a2;
  *(v24 + qword_1016AC3C0) = a2;
  *(v24 + qword_1016AC3A8) = v26;
  sub_1000BC4D4(&qword_1016BBE40, &qword_1013BFD20);
  sub_1000041A4(&qword_1016ABEA0, &qword_1016BBE40, &qword_1013BFD20, &unk_1013C1040);
  v27 = Set.init(minimumCapacity:)();
  sub_1000BC4D4(&qword_1016ABEA8, &qword_1013BFD28);
  v28 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v28 + 16) = 256;
  *(v28 + 32) = v27;
  for (i = 40; i != 2080; i += 8)
  {
    *(v28 + i) = v27;
  }

  *(v24 + qword_1016AC3D0) = v28;
  v30 = v42;
  sub_1000D2A70(v14, v42, &unk_101696AC0, &qword_101390A60);
  v31 = (*(v16 + 48))(v30, 1, v15);
  v33 = v40;
  v32 = v41;
  v34 = v43;
  if (v31 == 1)
  {
    sub_10000B3A8(v43, &unk_101696AC0, &qword_101390A60);
    v35 = *(v16 + 8);
    v35(v44, v15);
    sub_10000B3A8(v14, &unk_101696AC0, &qword_101390A60);
    v35(v39, v15);
    sub_10000B3A8(v30, &unk_101696AC0, &qword_101390A60);
    return v24;
  }

  result = (*(v16 + 32))(v41, v30, v15);
  if (!HIDWORD(v38))
  {
    sub_100879B74(v32, v38);
    if (v33)
    {

      v24 = &qword_101390A60;
      sub_10000B3A8(v34, &unk_101696AC0, &qword_101390A60);
      v36 = *(v16 + 8);
      v36(v44, v15);
      v36(v32, v15);
      sub_10000B3A8(v14, &unk_101696AC0, &qword_101390A60);
      v36(v39, v15);
    }

    else
    {
      sub_10000B3A8(v34, &unk_101696AC0, &qword_101390A60);
      v37 = *(v16 + 8);
      v37(v44, v15);
      v37(v32, v15);
      sub_10000B3A8(v14, &unk_101696AC0, &qword_101390A60);
      v37(v39, v15);
    }

    return v24;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t *sub_100873F40(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v44 = a1;
  v10 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v11 = __chkstk_darwin(v10 - 8);
  v42 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v38 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v41 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v38 - v19;
  if (!a2)
  {
    v24 = &qword_1013BFD88;
    sub_1000BC4D4(&qword_1016ABEB8, &qword_1013BFD88);
    sub_1000041A4(&qword_1016ABEC0, &qword_1016ABEB8, &qword_1013BFD88, &unk_1013C1158);
    swift_allocError();
    *v25 = 2;
    *(v25 + 4) = 2;
    swift_willThrow();
    sub_10000B3A8(a4, &unk_101696AC0, &qword_101390A60);
    (*(v16 + 8))(v44, v15);
    return v24;
  }

  v38 = a5;
  v43 = a4;
  v21 = *(v16 + 16);
  result = v21(&v38 - v19, v44, v15);
  v23 = a3 - a2;
  if (a3 >= a2)
  {
    if ((a3 - a2) < 0)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }
  }

  else
  {
    if ((a2 - a3) < 0)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v23 = a3 - a2;
  }

  v40 = v5;
  v26 = v23 + 1;
  if (__OFADD__(v23, 1))
  {
    __break(1u);
    goto LABEL_19;
  }

  sub_1000D2A70(v43, v14, &unk_101696AC0, &qword_101390A60);
  sub_1000BC4D4(&qword_1016ABEC8, &qword_1013BFD90);
  v24 = swift_allocObject();
  *(v24 + qword_1016AC3C8) = 0;
  result = v21(v24 + qword_1016AC3A0, v20, v15);
  if (HIDWORD(a2))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v39 = v20;
  *(v24 + qword_1016AC3B0) = a2;
  *(v24 + qword_1016AC3B8) = a2;
  *(v24 + qword_1016AC3C0) = a2;
  *(v24 + qword_1016AC3A8) = v26;
  sub_1000BC4D4(&qword_1016ABED0, &qword_1013BFD98);
  sub_1000041A4(&qword_1016ABED8, &qword_1016ABED0, &qword_1013BFD98, &unk_1013C1040);
  v27 = Set.init(minimumCapacity:)();
  sub_1000BC4D4(&qword_1016ABEE0, &qword_1013BFDA0);
  v28 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v28 + 16) = 256;
  *(v28 + 32) = v27;
  for (i = 40; i != 2080; i += 8)
  {
    *(v28 + i) = v27;
  }

  *(v24 + qword_1016AC3D0) = v28;
  v30 = v42;
  sub_1000D2A70(v14, v42, &unk_101696AC0, &qword_101390A60);
  v31 = (*(v16 + 48))(v30, 1, v15);
  v33 = v40;
  v32 = v41;
  v34 = v43;
  if (v31 == 1)
  {
    sub_10000B3A8(v43, &unk_101696AC0, &qword_101390A60);
    v35 = *(v16 + 8);
    v35(v44, v15);
    sub_10000B3A8(v14, &unk_101696AC0, &qword_101390A60);
    v35(v39, v15);
    sub_10000B3A8(v30, &unk_101696AC0, &qword_101390A60);
    return v24;
  }

  result = (*(v16 + 32))(v41, v30, v15);
  if (!HIDWORD(v38))
  {
    sub_100879FD8(v32, v38);
    if (v33)
    {

      v24 = &qword_101390A60;
      sub_10000B3A8(v34, &unk_101696AC0, &qword_101390A60);
      v36 = *(v16 + 8);
      v36(v44, v15);
      v36(v32, v15);
      sub_10000B3A8(v14, &unk_101696AC0, &qword_101390A60);
      v36(v39, v15);
    }

    else
    {
      sub_10000B3A8(v34, &unk_101696AC0, &qword_101390A60);
      v37 = *(v16 + 8);
      v37(v44, v15);
      v37(v32, v15);
      sub_10000B3A8(v14, &unk_101696AC0, &qword_101390A60);
      v37(v39, v15);
    }

    return v24;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t *sub_100874520(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v44 = a1;
  v10 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v11 = __chkstk_darwin(v10 - 8);
  v42 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v38 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v41 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v38 - v19;
  if (!a2)
  {
    v24 = &qword_1013BFDA8;
    sub_1000BC4D4(&qword_1016ABEE8, &qword_1013BFDA8);
    sub_1000041A4(&qword_1016ABEF0, &qword_1016ABEE8, &qword_1013BFDA8, &unk_1013C1158);
    swift_allocError();
    *v25 = 2;
    *(v25 + 4) = 2;
    swift_willThrow();
    sub_10000B3A8(a4, &unk_101696AC0, &qword_101390A60);
    (*(v16 + 8))(v44, v15);
    return v24;
  }

  v38 = a5;
  v43 = a4;
  v21 = *(v16 + 16);
  result = v21(&v38 - v19, v44, v15);
  v23 = a3 - a2;
  if (a3 >= a2)
  {
    if ((a3 - a2) < 0)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }
  }

  else
  {
    if ((a2 - a3) < 0)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v23 = a3 - a2;
  }

  v40 = v5;
  v26 = v23 + 1;
  if (__OFADD__(v23, 1))
  {
    __break(1u);
    goto LABEL_19;
  }

  sub_1000D2A70(v43, v14, &unk_101696AC0, &qword_101390A60);
  sub_1000BC4D4(&qword_1016ABEF8, &qword_1013BFDB0);
  v24 = swift_allocObject();
  *(v24 + qword_1016AC3C8) = 0;
  result = v21(v24 + qword_1016AC3A0, v20, v15);
  if (HIDWORD(a2))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v39 = v20;
  *(v24 + qword_1016AC3B0) = a2;
  *(v24 + qword_1016AC3B8) = a2;
  *(v24 + qword_1016AC3C0) = a2;
  *(v24 + qword_1016AC3A8) = v26;
  sub_1000BC4D4(&qword_1016ABF00, &qword_1013BFDB8);
  sub_1000041A4(&qword_1016ABF08, &qword_1016ABF00, &qword_1013BFDB8, &unk_1013C1040);
  v27 = Set.init(minimumCapacity:)();
  sub_1000BC4D4(&qword_1016ABF10, &qword_1013BFDC0);
  v28 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v28 + 16) = 256;
  *(v28 + 32) = v27;
  for (i = 40; i != 2080; i += 8)
  {
    *(v28 + i) = v27;
  }

  *(v24 + qword_1016AC3D0) = v28;
  v30 = v42;
  sub_1000D2A70(v14, v42, &unk_101696AC0, &qword_101390A60);
  v31 = (*(v16 + 48))(v30, 1, v15);
  v33 = v40;
  v32 = v41;
  v34 = v43;
  if (v31 == 1)
  {
    sub_10000B3A8(v43, &unk_101696AC0, &qword_101390A60);
    v35 = *(v16 + 8);
    v35(v44, v15);
    sub_10000B3A8(v14, &unk_101696AC0, &qword_101390A60);
    v35(v39, v15);
    sub_10000B3A8(v30, &unk_101696AC0, &qword_101390A60);
    return v24;
  }

  result = (*(v16 + 32))(v41, v30, v15);
  if (!HIDWORD(v38))
  {
    sub_10087A454(v32, v38);
    if (v33)
    {

      v24 = &qword_101390A60;
      sub_10000B3A8(v34, &unk_101696AC0, &qword_101390A60);
      v36 = *(v16 + 8);
      v36(v44, v15);
      v36(v32, v15);
      sub_10000B3A8(v14, &unk_101696AC0, &qword_101390A60);
      v36(v39, v15);
    }

    else
    {
      sub_10000B3A8(v34, &unk_101696AC0, &qword_101390A60);
      v37 = *(v16 + 8);
      v37(v44, v15);
      v37(v32, v15);
      sub_10000B3A8(v14, &unk_101696AC0, &qword_101390A60);
      v37(v39, v15);
    }

    return v24;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_100874B00(uint64_t a1, int a2)
{
  v4 = type metadata accessor for BeaconIdentifier(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v37[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v5);
  v10 = &v37[-v9];
  __chkstk_darwin(v8);
  v12 = &v37[-v11];
  v13 = a2 & 1;
  v14 = sub_100875000(a1, a2 & 1);
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  if (qword_101694A00 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000076D4(v16, qword_1016ABAA8);
  sub_1000295D4(a1, v12, type metadata accessor for BeaconIdentifier);
  sub_1000295D4(a1, v10, type metadata accessor for BeaconIdentifier);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v39 = v4;
    v20 = v19;
    v42 = swift_slowAlloc();
    v45 = v42;
    *v20 = 141559043;
    *(v20 + 4) = 1752392040;
    *(v20 + 12) = 2081;
    type metadata accessor for UUID();
    v41 = v17;
    sub_10087E3E8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v44 = a2 & 1;
    v40 = v18;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = a2;
    v22 = v7;
    v24 = v23;
    v43 = v15;
    sub_10001F1B0(v12, type metadata accessor for BeaconIdentifier);
    v25 = sub_1000136BC(v21, v24, &v45);
    v7 = v22;

    *(v20 + 14) = v25;
    *(v20 + 22) = 2160;
    *(v20 + 24) = 1752392040;
    *(v20 + 32) = 2081;
    v13 = v44;
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v15 = v43;
    sub_10001F1B0(v10, type metadata accessor for BeaconIdentifier);
    v29 = sub_1000136BC(v26, v28, &v45);

    *(v20 + 34) = v29;
    *(v20 + 42) = 2082;
    if (v38)
    {
      v30 = 0x61646E6F6365732ELL;
    }

    else
    {
      v30 = 0x7972616D6972702ELL;
    }

    if (v38)
    {
      v31 = 0xEA00000000007972;
    }

    else
    {
      v31 = 0xE800000000000000;
    }

    v32 = sub_1000136BC(v30, v31, &v45);

    *(v20 + 44) = v32;
    v33 = v41;
    _os_log_impl(&_mh_execute_header, v41, v40, "opened keymap: %{private,mask.hash}s/%{private,mask.hash}s/%{public}s)", v20, 0x34u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10001F1B0(v10, type metadata accessor for BeaconIdentifier);
    sub_10001F1B0(v12, type metadata accessor for BeaconIdentifier);
  }

  sub_1000295D4(a1, v7, type metadata accessor for BeaconIdentifier);
  type metadata accessor for BeaconKeyIndexMap(0);
  v34 = swift_allocObject();
  [v15 fileDescriptor];
  handle_from_file_descriptor = sp_key_index_map_create_handle_from_file_descriptor();

  if (!handle_from_file_descriptor)
  {
    sub_10001F1B0(v7, type metadata accessor for BeaconIdentifier);
    swift_deallocPartialClassInstance();
    return 0;
  }

  sub_10087EE70(v7, v34 + OBJC_IVAR____TtC12searchpartyd17BeaconKeyIndexMap_beaconIdentifier, type metadata accessor for BeaconIdentifier);
  *(v34 + OBJC_IVAR____TtC12searchpartyd17BeaconKeyIndexMap_sequence) = v13;
  *(v34 + OBJC_IVAR____TtC12searchpartyd17BeaconKeyIndexMap_mapHandle) = handle_from_file_descriptor;
  return v34;
}

id sub_100875000(uint64_t a1, int a2)
{
  v50 = type metadata accessor for BeaconIdentifier(0);
  v4 = __chkstk_darwin(v50);
  v6 = &v47[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v4);
  v9 = &v47[-v8];
  __chkstk_darwin(v7);
  v10 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v10 - 8);
  v12 = &v47[-v11];
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v47[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100875AD0(v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10000B3A8(v12, &unk_101696AC0, &qword_101390A60);
    if (qword_101694A00 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_1016ABAA8);
    sub_1000295D4(a1, v6, type metadata accessor for BeaconIdentifier);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v20 = 141558531;
      *(v20 + 4) = 1752392040;
      *(v20 + 12) = 2081;
      type metadata accessor for UUID();
      sub_10087E3E8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v21;
      v22._countAndFlagsBits = 47;
      v22._object = 0xE100000000000000;
      String.append(_:)(v22);
      v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v23);

      v24 = v51;
      v25 = v52;
      sub_10001F1B0(v6, type metadata accessor for BeaconIdentifier);
      v26 = sub_1000136BC(v24, v25, &v53);

      *(v20 + 14) = v26;
      *(v20 + 22) = 2082;
      if (a2)
      {
        v27 = 0x61646E6F6365732ELL;
      }

      else
      {
        v27 = 0x7972616D6972702ELL;
      }

      if (a2)
      {
        v28 = 0xEA00000000007972;
      }

      else
      {
        v28 = 0xE800000000000000;
      }

      v29 = sub_1000136BC(v27, v28, &v53);

      *(v20 + 24) = v29;
      _os_log_impl(&_mh_execute_header, v18, v19, "no keymap URL for identifier %{private,mask.hash}s, sequence: %{public}s", v20, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10001F1B0(v6, type metadata accessor for BeaconIdentifier);
    }
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    v30 = objc_autoreleasePoolPush();
    sub_10087E430(v16);
    objc_autoreleasePoolPop(v30);
    URL.path.getter();
    v31 = String._bridgeToObjectiveC()();

    v32 = [objc_opt_self() fileHandleForReadingAtPath:v31];

    if (v32)
    {
      (*(v14 + 8))(v16, v13);
      return v32;
    }

    if (qword_101694A00 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_1000076D4(v34, qword_1016ABAA8);
    sub_1000295D4(a1, v9, type metadata accessor for BeaconIdentifier);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v53 = v48;
      *v37 = 141558531;
      *(v37 + 4) = 1752392040;
      *(v37 + 12) = 2081;
      type metadata accessor for UUID();
      v49 = a2;
      sub_10087E3E8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v38;
      v39._countAndFlagsBits = 47;
      v39._object = 0xE100000000000000;
      String.append(_:)(v39);
      v40._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v40);

      v41 = v51;
      v42 = v52;
      sub_10001F1B0(v9, type metadata accessor for BeaconIdentifier);
      v43 = sub_1000136BC(v41, v42, &v53);

      *(v37 + 14) = v43;
      *(v37 + 22) = 2082;
      if (v49)
      {
        v44 = 0x61646E6F6365732ELL;
      }

      else
      {
        v44 = 0x7972616D6972702ELL;
      }

      if (v49)
      {
        v45 = 0xEA00000000007972;
      }

      else
      {
        v45 = 0xE800000000000000;
      }

      v46 = sub_1000136BC(v44, v45, &v53);

      *(v37 + 24) = v46;
      _os_log_impl(&_mh_execute_header, v35, v36, "could not open keymap for reading identifier: %{private,mask.hash}s, sequence: %{public}s", v37, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10001F1B0(v9, type metadata accessor for BeaconIdentifier);
    }

    (*(v14 + 8))(v16, v13);
  }

  return 0;
}

uint64_t sub_100875AD0@<X0>(char *a3@<X8>)
{
  v30 = a3;
  v3 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v3 - 8);
  v5 = &v26 - v4;
  v6 = type metadata accessor for DirectorySequence();
  v28 = *(v6 - 8);
  v29 = v6;
  __chkstk_darwin(v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v26 - v14;
  sub_100875E7C(&v26 - v14);
  v16 = [objc_opt_self() defaultManager];
  v27 = v15;
  NSFileManager.flatSequence(at:includingPropertiesForKeys:)();

  v33 = v8;
  DirectorySequence.next()();
  v31 = v10;
  v17 = *(v10 + 48);
  if (v17(v5, 1, v9) == 1)
  {
LABEL_7:
    (*(v28 + 8))(v33, v29);
    v21 = v31;
    (*(v31 + 8))(v27, v9);
    v22 = 1;
    v23 = v30;
  }

  else
  {
    v32 = *(v31 + 32);
    v18 = (v31 + 8);
    while (1)
    {
      v32(v13, v5, v9);
      if (URL.pathExtension.getter() == 0x70616D79656BLL && v19 == 0xE600000000000000)
      {
        break;
      }

      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v20)
      {
        goto LABEL_9;
      }

      (*v18)(v13, v9);
      DirectorySequence.next()();
      if (v17(v5, 1, v9) == 1)
      {
        goto LABEL_7;
      }
    }

LABEL_9:
    (*(v28 + 8))(v33, v29);
    (*v18)(v27, v9);
    v24 = v30;
    v32(v30, v13, v9);
    v23 = v24;
    v22 = 0;
    v21 = v31;
  }

  return (*(v21 + 56))(v23, v22, 1, v9);
}

uint64_t sub_100875E7C@<X0>(uint64_t a2@<X8>)
{
  v11[1] = a2;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v11 - v7;
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();

  type metadata accessor for BeaconIdentifier(0);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();

  v9 = *(v3 + 8);
  v9(v6, v2);
  URL.appendingPathComponent(_:isDirectory:)();
  return (v9)(v8, v2);
}

Swift::Int sub_100876024(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10087E3E8(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for BeaconIdentifier(0);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10087613C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  sub_10087E3E8(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for BeaconIdentifier(0);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
}

Swift::Int sub_100876248(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10087E3E8(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for BeaconIdentifier(0);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1008763A8()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B520);
  sub_1000076D4(v0, qword_10177B520);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1008764E8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), unint64_t a6)
{
  v15 = *(a1 + qword_1016AC3A8);
  if (__OFSUB__(v15, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = a6;
  v10 = a3;
  v11 = a2;
  v9 = a1;
  v28 = a5;
  v29 = v8;
  v6 = qword_1016AC3C8;
  if (v15 - 1 >= *(a1 + qword_1016AC3C8))
  {
    goto LABEL_6;
  }

  v12 = static os_log_type_t.error.getter();
  if (qword_101694A20 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v16 = qword_10177B550;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    result = swift_allocObject();
    *(result + 16) = xmmword_10138BBE0;
    *(result + 56) = &type metadata for Int;
    *(result + 64) = &protocol witness table for Int;
    *(result + 32) = v15;
    v18 = *&v6[v9];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      break;
    }

    *(result + 96) = &type metadata for Int;
    *(result + 104) = &protocol witness table for Int;
    *(result + 72) = v20;
    os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v16, "Expected %ld keys but received %ld", v28, v29);

LABEL_6:
    v31 = v6;
    v6 = v7;
    v7 = Data._Representation.subscript.getter();
    v14 = qword_1016AC3C0;
    v12 = *(v9 + qword_1016AC3C0);
    v15 = qword_1016AC3D0;
    swift_beginAccess();
    v13 = *(v9 + v15);
    sub_100017D5C(v11, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v9 + v15) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_16:
      v13 = v28(v13);
      *(v9 + v15) = v13;
    }

    if (*(v13 + 16) <= v7)
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    sub_100017D5C(v11, v10);
    v7 = v13 + 8 * v7 + 32;
    (v6)(v30, v11, v10, v12);
    sub_100016590(v30[0], v30[1]);
    *(v9 + v15) = v13;
    swift_endAccess();
    result = sub_100016590(v11, v10);
    v22 = *(v9 + v14);
    if (v22 < *(v9 + qword_1016AC3B0))
    {
      *(v9 + qword_1016AC3B0) = v22;
    }

    v23 = v31;
    if (*(v9 + qword_1016AC3B8) < v22)
    {
      *(v9 + qword_1016AC3B8) = v22;
    }

    v24 = __CFADD__(v22, 1);
    v25 = v22 + 1;
    if (v24)
    {
      goto LABEL_18;
    }

    *(v9 + v14) = v25;
    v26 = *&v23[v9];
    v19 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v19)
    {
      *&v23[v9] = v27;
      return result;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    swift_once();
  }

  __break(1u);
  return result;
}

uint64_t *sub_100876778()
{
  v1 = v0;
  v114 = type metadata accessor for URLResourceValues();
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v115 = &v101 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for URL();
  v124 = *(v123 - 8);
  v3 = __chkstk_darwin(v123);
  v112 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v122 = &v101 - v6;
  __chkstk_darwin(v5);
  v8 = &v101 - v7;
  v9 = qword_1016AC3C8;
  v10 = *(v0 + qword_1016AC3A8);
  if (*(v0 + qword_1016AC3C8) < v10)
  {
    v11 = static os_log_type_t.error.getter();
    if (qword_101694A20 != -1)
    {
      swift_once();
    }

    v12 = qword_10177B550;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_10138BBE0;
    *(v13 + 56) = &type metadata for Int;
    *(v13 + 64) = &protocol witness table for Int;
    *(v13 + 32) = v10;
    v14 = *(v1 + v9);
    *(v13 + 96) = &type metadata for Int;
    *(v13 + 104) = &protocol witness table for Int;
    *(v13 + 72) = v14;
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Expected %ld keys but only received %ld", v101, v102);
  }

  v131 = 32;
  v15 = sub_100260884(&v131, &v132);
  v17 = v16;
  v130 = *(v1 + qword_1016AC3B0);
  v18 = sub_100260884(&v130, &v131);
  v20 = v19;
  v129 = *(v1 + qword_1016AC3B8);
  v21 = sub_100260884(&v129, &v130);
  v23 = v22;
  type metadata accessor for __DataStorage();
  swift_allocObject();
  v24 = __DataStorage.init(length:)();
  v138 = 0x102000000000;
  v139 = (v24 | 0x4000000000000000);
  Data._Representation.subscript.setter();
  Data._Representation.subscript.setter();
  Data._Representation.subscript.setter();
  Data._Representation.subscript.setter();
  v119 = v15;
  v120 = v17;
  v25 = v121;
  sub_10087DED0(v15, v17, &v138, 4);
  v118 = v18;
  v121 = v20;
  sub_10087DED0(v18, v20, &v138, 8);
  v116 = v21;
  v117 = v23;
  sub_10087DED0(v21, v23, &v138, 12);
  v26 = [objc_opt_self() defaultManager];
  sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
  v27 = qword_1016AC3A0;
  URL.deletingLastPathComponent()();
  static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
  v28 = v124;
  v29 = v124 + 8;
  v30 = v8;
  v31 = v123;
  v111 = *(v124 + 8);
  v111(v30, v123);
  URL.path.getter();
  v32 = String._bridgeToObjectiveC()();

  v33 = [v26 fileExistsAtPath:v32];

  if ((v33 & 1) == 0)
  {
    URL.path.getter();
    v34 = String._bridgeToObjectiveC()();

    [v26 createFileAtPath:v34 contents:0 attributes:0];
  }

  sub_100008BB8(0, &unk_1016B2A60, NSFileHandle_ptr);
  v36 = *(v28 + 16);
  v35 = v28 + 16;
  v37 = v122;
  v38 = v31;
  v39 = v36;
  v36(v122, v1 + v27, v38);
  v40 = sub_100878D64(v37, &selRef_fileHandleForUpdatingURL_error_);
  if (v25)
  {
    sub_100016590(v138, v139);

LABEL_9:
    sub_100016590(v116, v117);
    sub_100016590(v118, v121);
    v41 = v119;
    v42 = v120;
    return sub_100016590(v41, v42);
  }

  v43 = v35;
  v44 = v40;
  v124 = v43;
  v110 = v29;
  v132 = 0;
  v45 = [v40 truncateAtOffset:0 error:&v132];
  v46 = v132;
  if ((v45 & 1) == 0)
  {
    v52 = v132;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100016590(v116, v117);
    sub_100016590(v118, v121);
    sub_100016590(v119, v120);
LABEL_13:
    v41 = v138;
    v42 = v139;
    return sub_100016590(v41, v42);
  }

  v109 = v39;
  v48 = v138;
  v47 = v139;
  v49 = v44;
  v132 = v138;
  v133 = v139;
  v50 = v46;
  sub_100017D5C(v48, v47);
  v51 = sub_1000E0A3C();
  v122 = v49;
  NSFileHandle.write<A>(contentsOf:)();
  v108 = v51;
  sub_100016590(v132, v133);
  v54 = v122;
  NSFileHandle.seekToEnd()();
  if (v55)
  {
    sub_100016590(v48, v47);

    goto LABEL_9;
  }

  v107 = 0;
  sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = NSFileProtectionKey;
  *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v57 = NSFileProtectionKey;
  v58 = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v59 = sub_100908390(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
  v60 = v115;
  URLResourceValues.init()();
  sub_100695108(v59);

  type metadata accessor for FileAttributeKey(0);
  sub_10087E3E8(&qword_1016964F0, type metadata accessor for FileAttributeKey, &unk_10138AAB4);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  URL.path.getter();
  v62 = String._bridgeToObjectiveC()();

  v132 = 0;
  v63 = [v26 setAttributes:isa ofItemAtPath:v62 error:&v132];

  if ((v63 & 1) == 0)
  {
    v69 = v132;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100016590(v116, v117);
    sub_100016590(v118, v121);
    sub_100016590(v119, v120);
    (*(v113 + 8))(v60, v114);
    goto LABEL_13;
  }

  v106 = v26;
  v64 = v132;
  URLResourceValues.isExcludedFromBackup.setter();
  v65 = v112;
  v66 = v123;
  v109(v112, v1 + v27, v123);
  v67 = v107;
  URL.setResourceValues(_:)();
  v68 = v60;
  if (v67)
  {

    sub_100016590(v116, v117);
    sub_100016590(v118, v121);
    sub_100016590(v119, v120);
    v111(v65, v66);
    (*(v113 + 8))(v60, v114);
    goto LABEL_13;
  }

  v70 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v70 + 16) = 256;
  bzero((v70 + 32), 0x800uLL);
  v128 = v70;
  v71 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  v71[2] = 256;
  bzero(v71 + 4, 0x800uLL);
  v127 = v71;
  v72 = objc_autoreleasePoolPush();
  sub_100878EBC(v1, 0, &v127, &v128);
  for (i = 1; ; ++i)
  {
    objc_autoreleasePoolPop(v72);
    if (i == 256)
    {
      break;
    }

    v72 = objc_autoreleasePoolPush();
    sub_100878EBC(v1, i, &v127, &v128);
  }

  v132 = 0;
  v74 = v122;
  if ([v122 seekToOffset:32 error:&v132])
  {
    v75 = v127;
    v76 = v132;
    v77 = v128;
    v78 = objc_autoreleasePoolPush();
    v79 = v108;
    if (!v75[2])
    {
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
    }

    v80 = v78;
    v81 = 0;
    v82 = -255;
    v101 = v75;
    while (1)
    {
      v126 = v75[v81 + 4];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v77 = sub_10060739C(v77);
      }

      if ((v82 + 255) >= *(v77 + 16))
      {
        goto LABEL_54;
      }

      v83 = v79;
      v84 = sub_100260884(v81 * 8 + v77 + 32, v81 * 8 + v77 + 40);
      v86 = v85;
      v87 = sub_100260884(&v126, &v127);
      v104 = v84;
      v136 = v84;
      v137 = v86;
      v124 = v86;
      v134 = &type metadata for Data;
      v135 = &protocol witness table for Data;
      v105 = v87;
      v132 = v87;
      v133 = v88;
      v109 = v88;
      result = sub_1000035D0(&v132, &type metadata for Data);
      v89 = *result;
      v90 = result[1];
      v91 = v90 >> 62;
      v103 = v77;
      v102 = v80;
      v107 = 0;
      if ((v90 >> 62) > 1)
      {
        if (v91 != 2)
        {
          memset(v125, 0, 14);
          v92 = v104;
          sub_100017D5C(v104, v124);
          sub_100017D5C(v105, v109);
          goto LABEL_44;
        }

        v94 = *(v89 + 16);
        v93 = *(v89 + 24);
        v92 = v104;
        sub_100017D5C(v104, v124);
        sub_100017D5C(v105, v109);
        result = __DataStorage._bytes.getter();
        if (result)
        {
          result = __DataStorage._offset.getter();
          if (__OFSUB__(v94, result))
          {
            goto LABEL_57;
          }
        }

        if (__OFSUB__(v93, v94))
        {
          goto LABEL_56;
        }

        __DataStorage._length.getter();
        Data._Representation.append(contentsOf:)();
        v79 = v108;
      }

      else
      {
        if (!v91)
        {
          v125[0] = v89;
          LOWORD(v125[1]) = v90;
          BYTE2(v125[1]) = BYTE2(v90);
          BYTE3(v125[1]) = BYTE3(v90);
          BYTE4(v125[1]) = BYTE4(v90);
          BYTE5(v125[1]) = BYTE5(v90);
          v92 = v104;
          sub_100017D5C(v104, v124);
          sub_100017D5C(v105, v109);
LABEL_44:
          Data._Representation.append(contentsOf:)();
          v79 = v83;
          goto LABEL_45;
        }

        v95 = v89;
        v92 = v104;
        if (v89 >> 32 < v89)
        {
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          return result;
        }

        sub_100017D5C(v104, v124);
        sub_100017D5C(v105, v109);
        if (__DataStorage._bytes.getter())
        {
          result = __DataStorage._offset.getter();
          if (__OFSUB__(v95, result))
          {
            goto LABEL_58;
          }
        }

        v79 = v108;
        __DataStorage._length.getter();
        Data._Representation.append(contentsOf:)();
      }

LABEL_45:
      sub_100007BAC(&v132);
      v96 = v136;
      v97 = v137;
      v132 = v136;
      v133 = v137;
      v98 = v107;
      NSFileHandle.write<A>(contentsOf:)();
      if (v98)
      {
        v128 = v103;
        sub_100016590(v105, v109);
        sub_100016590(v92, v124);
        sub_100016590(v96, v97);
        objc_autoreleasePoolPop(v102);

        sub_100016590(v116, v117);
        sub_100016590(v118, v121);
        sub_100016590(v119, v120);
        v111(v112, v123);
        (*(v113 + 8))(v115, v114);
        sub_100016590(v138, v139);
LABEL_52:
      }

      sub_100016590(v105, v109);
      sub_100016590(v92, v124);
      sub_100016590(v96, v97);
      objc_autoreleasePoolPop(v102);
      if (!v82)
      {
        v128 = v103;

        sub_100016590(v116, v117);
        sub_100016590(v118, v121);
        sub_100016590(v119, v120);
        v111(v112, v123);
        (*(v113 + 8))(v115, v114);
        sub_100016590(v138, v139);
        goto LABEL_52;
      }

      v80 = objc_autoreleasePoolPush();
      v75 = v101;
      v99 = v82 + 256;
      ++v82;
      ++v81;
      v77 = v103;
      if (v99 >= v101[2])
      {
        goto LABEL_53;
      }
    }
  }

  v100 = v132;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  sub_100016590(v116, v117);
  sub_100016590(v118, v121);
  sub_100016590(v119, v120);
  v111(v65, v123);
  (*(v113 + 8))(v68, v114);
  sub_100016590(v138, v139);
}

uint64_t *sub_100877A44()
{
  v1 = v0;
  v114 = type metadata accessor for URLResourceValues();
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v115 = &v101 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for URL();
  v124 = *(v123 - 8);
  v3 = __chkstk_darwin(v123);
  v112 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v122 = &v101 - v6;
  __chkstk_darwin(v5);
  v8 = &v101 - v7;
  v9 = qword_1016AC3C8;
  v10 = *(v0 + qword_1016AC3A8);
  if (*(v0 + qword_1016AC3C8) < v10)
  {
    v11 = static os_log_type_t.error.getter();
    if (qword_101694A20 != -1)
    {
      swift_once();
    }

    v12 = qword_10177B550;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_10138BBE0;
    *(v13 + 56) = &type metadata for Int;
    *(v13 + 64) = &protocol witness table for Int;
    *(v13 + 32) = v10;
    v14 = *(v1 + v9);
    *(v13 + 96) = &type metadata for Int;
    *(v13 + 104) = &protocol witness table for Int;
    *(v13 + 72) = v14;
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Expected %ld keys but only received %ld", v101, v102);
  }

  v131 = 10;
  v15 = sub_100260884(&v131, &v132);
  v17 = v16;
  v130 = *(v1 + qword_1016AC3B0);
  v18 = sub_100260884(&v130, &v131);
  v20 = v19;
  v129 = *(v1 + qword_1016AC3B8);
  v21 = sub_100260884(&v129, &v130);
  v23 = v22;
  type metadata accessor for __DataStorage();
  swift_allocObject();
  v24 = __DataStorage.init(length:)();
  v138 = 0x102000000000;
  v139 = (v24 | 0x4000000000000000);
  Data._Representation.subscript.setter();
  Data._Representation.subscript.setter();
  Data._Representation.subscript.setter();
  Data._Representation.subscript.setter();
  v119 = v15;
  v120 = v17;
  v25 = v121;
  sub_10087DED0(v15, v17, &v138, 4);
  v118 = v18;
  v121 = v20;
  sub_10087DED0(v18, v20, &v138, 8);
  v116 = v21;
  v117 = v23;
  sub_10087DED0(v21, v23, &v138, 12);
  v26 = [objc_opt_self() defaultManager];
  sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
  v27 = qword_1016AC3A0;
  URL.deletingLastPathComponent()();
  static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
  v28 = v124;
  v29 = v124 + 8;
  v30 = v8;
  v31 = v123;
  v111 = *(v124 + 8);
  v111(v30, v123);
  URL.path.getter();
  v32 = String._bridgeToObjectiveC()();

  v33 = [v26 fileExistsAtPath:v32];

  if ((v33 & 1) == 0)
  {
    URL.path.getter();
    v34 = String._bridgeToObjectiveC()();

    [v26 createFileAtPath:v34 contents:0 attributes:0];
  }

  sub_100008BB8(0, &unk_1016B2A60, NSFileHandle_ptr);
  v36 = *(v28 + 16);
  v35 = v28 + 16;
  v37 = v122;
  v38 = v31;
  v39 = v36;
  v36(v122, v1 + v27, v38);
  v40 = sub_100878D64(v37, &selRef_fileHandleForUpdatingURL_error_);
  if (v25)
  {
    sub_100016590(v138, v139);

LABEL_9:
    sub_100016590(v116, v117);
    sub_100016590(v118, v121);
    v41 = v119;
    v42 = v120;
    return sub_100016590(v41, v42);
  }

  v43 = v35;
  v44 = v40;
  v124 = v43;
  v110 = v29;
  v132 = 0;
  v45 = [v40 truncateAtOffset:0 error:&v132];
  v46 = v132;
  if ((v45 & 1) == 0)
  {
    v52 = v132;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100016590(v116, v117);
    sub_100016590(v118, v121);
    sub_100016590(v119, v120);
LABEL_13:
    v41 = v138;
    v42 = v139;
    return sub_100016590(v41, v42);
  }

  v109 = v39;
  v48 = v138;
  v47 = v139;
  v49 = v44;
  v132 = v138;
  v133 = v139;
  v50 = v46;
  sub_100017D5C(v48, v47);
  v51 = sub_1000E0A3C();
  v122 = v49;
  NSFileHandle.write<A>(contentsOf:)();
  v108 = v51;
  sub_100016590(v132, v133);
  v54 = v122;
  NSFileHandle.seekToEnd()();
  if (v55)
  {
    sub_100016590(v48, v47);

    goto LABEL_9;
  }

  v107 = 0;
  sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = NSFileProtectionKey;
  *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v57 = NSFileProtectionKey;
  v58 = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v59 = sub_100908390(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
  v60 = v115;
  URLResourceValues.init()();
  sub_100695108(v59);

  type metadata accessor for FileAttributeKey(0);
  sub_10087E3E8(&qword_1016964F0, type metadata accessor for FileAttributeKey, &unk_10138AAB4);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  URL.path.getter();
  v62 = String._bridgeToObjectiveC()();

  v132 = 0;
  v63 = [v26 setAttributes:isa ofItemAtPath:v62 error:&v132];

  if ((v63 & 1) == 0)
  {
    v69 = v132;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100016590(v116, v117);
    sub_100016590(v118, v121);
    sub_100016590(v119, v120);
    (*(v113 + 8))(v60, v114);
    goto LABEL_13;
  }

  v106 = v26;
  v64 = v132;
  URLResourceValues.isExcludedFromBackup.setter();
  v65 = v112;
  v66 = v123;
  v109(v112, v1 + v27, v123);
  v67 = v107;
  URL.setResourceValues(_:)();
  v68 = v60;
  if (v67)
  {

    sub_100016590(v116, v117);
    sub_100016590(v118, v121);
    sub_100016590(v119, v120);
    v111(v65, v66);
    (*(v113 + 8))(v60, v114);
    goto LABEL_13;
  }

  v70 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v70 + 16) = 256;
  bzero((v70 + 32), 0x800uLL);
  v128 = v70;
  v71 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  v71[2] = 256;
  bzero(v71 + 4, 0x800uLL);
  v127 = v71;
  v72 = objc_autoreleasePoolPush();
  sub_100879518(v1, 0, &v127, &v128);
  for (i = 1; ; ++i)
  {
    objc_autoreleasePoolPop(v72);
    if (i == 256)
    {
      break;
    }

    v72 = objc_autoreleasePoolPush();
    sub_100879518(v1, i, &v127, &v128);
  }

  v132 = 0;
  v74 = v122;
  if ([v122 seekToOffset:32 error:&v132])
  {
    v75 = v127;
    v76 = v132;
    v77 = v128;
    v78 = objc_autoreleasePoolPush();
    v79 = v108;
    if (!v75[2])
    {
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
    }

    v80 = v78;
    v81 = 0;
    v82 = -255;
    v101 = v75;
    while (1)
    {
      v126 = v75[v81 + 4];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v77 = sub_10060739C(v77);
      }

      if ((v82 + 255) >= *(v77 + 16))
      {
        goto LABEL_54;
      }

      v83 = v79;
      v84 = sub_100260884(v81 * 8 + v77 + 32, v81 * 8 + v77 + 40);
      v86 = v85;
      v87 = sub_100260884(&v126, &v127);
      v104 = v84;
      v136 = v84;
      v137 = v86;
      v124 = v86;
      v134 = &type metadata for Data;
      v135 = &protocol witness table for Data;
      v105 = v87;
      v132 = v87;
      v133 = v88;
      v109 = v88;
      result = sub_1000035D0(&v132, &type metadata for Data);
      v89 = *result;
      v90 = result[1];
      v91 = v90 >> 62;
      v103 = v77;
      v102 = v80;
      v107 = 0;
      if ((v90 >> 62) > 1)
      {
        if (v91 != 2)
        {
          memset(v125, 0, 14);
          v92 = v104;
          sub_100017D5C(v104, v124);
          sub_100017D5C(v105, v109);
          goto LABEL_44;
        }

        v94 = *(v89 + 16);
        v93 = *(v89 + 24);
        v92 = v104;
        sub_100017D5C(v104, v124);
        sub_100017D5C(v105, v109);
        result = __DataStorage._bytes.getter();
        if (result)
        {
          result = __DataStorage._offset.getter();
          if (__OFSUB__(v94, result))
          {
            goto LABEL_57;
          }
        }

        if (__OFSUB__(v93, v94))
        {
          goto LABEL_56;
        }

        __DataStorage._length.getter();
        Data._Representation.append(contentsOf:)();
        v79 = v108;
      }

      else
      {
        if (!v91)
        {
          v125[0] = v89;
          LOWORD(v125[1]) = v90;
          BYTE2(v125[1]) = BYTE2(v90);
          BYTE3(v125[1]) = BYTE3(v90);
          BYTE4(v125[1]) = BYTE4(v90);
          BYTE5(v125[1]) = BYTE5(v90);
          v92 = v104;
          sub_100017D5C(v104, v124);
          sub_100017D5C(v105, v109);
LABEL_44:
          Data._Representation.append(contentsOf:)();
          v79 = v83;
          goto LABEL_45;
        }

        v95 = v89;
        v92 = v104;
        if (v89 >> 32 < v89)
        {
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          return result;
        }

        sub_100017D5C(v104, v124);
        sub_100017D5C(v105, v109);
        if (__DataStorage._bytes.getter())
        {
          result = __DataStorage._offset.getter();
          if (__OFSUB__(v95, result))
          {
            goto LABEL_58;
          }
        }

        v79 = v108;
        __DataStorage._length.getter();
        Data._Representation.append(contentsOf:)();
      }

LABEL_45:
      sub_100007BAC(&v132);
      v96 = v136;
      v97 = v137;
      v132 = v136;
      v133 = v137;
      v98 = v107;
      NSFileHandle.write<A>(contentsOf:)();
      if (v98)
      {
        v128 = v103;
        sub_100016590(v105, v109);
        sub_100016590(v92, v124);
        sub_100016590(v96, v97);
        objc_autoreleasePoolPop(v102);

        sub_100016590(v116, v117);
        sub_100016590(v118, v121);
        sub_100016590(v119, v120);
        v111(v112, v123);
        (*(v113 + 8))(v115, v114);
        sub_100016590(v138, v139);
LABEL_52:
      }

      sub_100016590(v105, v109);
      sub_100016590(v92, v124);
      sub_100016590(v96, v97);
      objc_autoreleasePoolPop(v102);
      if (!v82)
      {
        v128 = v103;

        sub_100016590(v116, v117);
        sub_100016590(v118, v121);
        sub_100016590(v119, v120);
        v111(v112, v123);
        (*(v113 + 8))(v115, v114);
        sub_100016590(v138, v139);
        goto LABEL_52;
      }

      v80 = objc_autoreleasePoolPush();
      v75 = v101;
      v99 = v82 + 256;
      ++v82;
      ++v81;
      v77 = v103;
      if (v99 >= v101[2])
      {
        goto LABEL_53;
      }
    }
  }

  v100 = v132;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  sub_100016590(v116, v117);
  sub_100016590(v118, v121);
  sub_100016590(v119, v120);
  v111(v65, v123);
  (*(v113 + 8))(v68, v114);
  sub_100016590(v138, v139);
}

id sub_100878D64(uint64_t a1, SEL *a2)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v5 = v4;
  v14 = 0;
  v6 = [swift_getObjCClassFromMetadata() *a2];

  v7 = v14;
  if (v6)
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

uint64_t sub_100878EBC(uint64_t *a1, unint64_t a2, uint64_t **a3, uint64_t **a4)
{
  v9 = qword_1016AC3D0;
  swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_50:
    __break(1u);
  }

  else
  {
    v10 = *(a1 + v9);
    if (*(v10 + 16) > a2)
    {
      v4 = *(*(v10 + 8 * a2 + 32) + 16);
      v5 = *a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v5;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_4;
      }

      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_52:
  v5 = sub_10060739C(v5);
  *a3 = v5;
LABEL_4:
  if (v5[2] <= a2)
  {
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v5[a2 + 4] = v4;
  if (!v4)
  {
    v9 = a4;
    a1 = *a4;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a4 = a1;
    if (result)
    {
LABEL_47:
      if (a1[2] > a2)
      {
        a1[a2 + 4] = 0;
        return result;
      }

      __break(1u);
LABEL_62:
      v5 = sub_10060739C(v5);
      *a4 = v5;
      goto LABEL_43;
    }

LABEL_60:
    result = sub_10060739C(a1);
    a1 = result;
    *a4 = result;
    goto LABEL_47;
  }

  v12 = *(a1 + v9);
  if (*(v12 + 16) <= a2)
  {
    goto LABEL_56;
  }

  v13 = *(a1 + qword_1016AC3A8);
  if ((v13 * 28) >> 64 != (28 * v13) >> 63)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v46 = a2;
  v14 = *(v12 + 8 * a2 + 32);
  v15 = 28 * v13 / 256;

  v57 = sub_100881A78(v15);
  v58 = v16;
  a2 = v14 + 56;
  v17 = 1 << *(v14 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v4 = v18 & *(v14 + 56);
  v19 = (v17 + 63) >> 6;
  v48 = v14;

  v9 = 0;
  while (v4)
  {
LABEL_18:
    v23 = *(v48 + 48) + 24 * (__clz(__rbit64(v4)) | (v9 << 6));
    v24 = *v23;
    v50 = *(v23 + 8);
    v51 = *(v23 + 16);
    v55 = &type metadata for UnsafeRawBufferPointer;
    v56 = &protocol witness table for UnsafeRawBufferPointer;
    v53 = &v51;
    p_dst = &__dst;
    v25 = sub_1000035D0(&v53, &type metadata for UnsafeRawBufferPointer);
    v26 = *v25;
    if (*v25 && (v27 = v25[1], v28 = v27 - v26, v27 != v26))
    {
      if (v28 <= 14)
      {
        *(&__dst + 6) = 0;
        *&__dst = 0;
        BYTE14(__dst) = v27 - v26;
        memcpy(&__dst, v26, v27 - v26);
        a1 = __dst;
        v29 = v45 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
        v5 = v50;
        sub_100017D5C(v24, v50);
        v45 = v29;
      }

      else
      {
        type metadata accessor for __DataStorage();
        swift_allocObject();
        sub_100017D5C(v24, v50);
        v37 = __DataStorage.init(bytes:length:)();
        v38 = v37;
        if (v28 >= 0x7FFFFFFF)
        {
          type metadata accessor for Data.RangeReference();
          a1 = swift_allocObject();
          a1[2] = 0;
          a1[3] = v28;
          v29 = v38 | 0x8000000000000000;
        }

        else
        {
          a1 = (v28 << 32);
          v29 = v37 | 0x4000000000000000;
        }

        v5 = v50;
      }
    }

    else
    {
      v5 = v50;
      sub_100017D5C(v24, v50);
      a1 = 0;
      v29 = 0xC000000000000000;
    }

    sub_100007BAC(&v53);
    v49 = v24;
    *&__dst = v24;
    *(&__dst + 1) = v5;
    v55 = &type metadata for Data;
    v56 = &protocol witness table for Data;
    v53 = a1;
    p_dst = v29;
    v30 = sub_1000035D0(&v53, &type metadata for Data);
    v31 = *v30;
    v32 = v30[1];
    v33 = v32 >> 62;
    if ((v32 >> 62) > 1)
    {
      if (v33 != 2)
      {
        a3 = v24;
        sub_100017D5C(v24, v5);
        Data._Representation.append(contentsOf:)();
        v20 = v5;
        goto LABEL_12;
      }

      a3 = *(v31 + 16);
      v34 = *(v31 + 24);
      sub_100017D5C(v49, v5);
      a1 = (v32 & 0x3FFFFFFFFFFFFFFFLL);
      v5 = __DataStorage._bytes.getter();
      if (v5)
      {
        a1 = (v32 & 0x3FFFFFFFFFFFFFFFLL);
        v35 = __DataStorage._offset.getter();
        if (__OFSUB__(a3, v35))
        {
          goto LABEL_58;
        }

        v5 = (v5 + a3 - v35);
      }

      v36 = __OFSUB__(v34, a3);
      a3 = (v34 - a3);
      if (v36)
      {
        goto LABEL_55;
      }
    }

    else
    {
      if (!v33)
      {
        a3 = v24;
        v20 = v50;
        sub_100017D5C(v49, v50);
        Data._Representation.append(contentsOf:)();
        goto LABEL_12;
      }

      v39 = v31;
      v40 = v31 >> 32;
      a3 = (v40 - v39);
      if (v40 < v39)
      {
        goto LABEL_54;
      }

      sub_100017D5C(v49, v50);
      v5 = __DataStorage._bytes.getter();
      if (v5)
      {
        a1 = (v32 & 0x3FFFFFFFFFFFFFFFLL);
        if (__OFSUB__(v39, __DataStorage._offset.getter()))
        {
          goto LABEL_59;
        }
      }
    }

    __DataStorage._length.getter();
    Data._Representation.append(contentsOf:)();
    a3 = v49;
    v20 = v50;
LABEL_12:
    v4 &= v4 - 1;
    sub_100007BAC(&v53);
    v21 = *(&__dst + 1);
    v5 = __dst;
    a1 = &v57;
    Data.append(_:)();
    sub_100016590(v5, v21);
    sub_100016590(a3, v20);
  }

  while (1)
  {
    v22 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_50;
    }

    if (v22 >= v19)
    {
      break;
    }

    v4 = *(a2 + 8 * v22);
    ++v9;
    if (v4)
    {
      v9 = v22;
      goto LABEL_18;
    }
  }

  a2 = v57;
  a3 = v58;
  v41 = NSFileHandle.offset()();
  if (v42)
  {
    return sub_100016590(a2, a3);
  }

  v9 = v41;
  v5 = *a4;
  v43 = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v5;
  if ((v43 & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_43:
  if (v5[2] <= v46)
  {
    __break(1u);
  }

  v5[v46 + 4] = v9;
  v53 = a2;
  p_dst = a3;
  sub_1000E0A3C();
  NSFileHandle.write<A>(contentsOf:)();
  return sub_100016590(a2, a3);
}

uint64_t sub_100879518(uint64_t *a1, unint64_t a2, uint64_t **a3, uint64_t **a4)
{
  v9 = qword_1016AC3D0;
  swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_50:
    __break(1u);
  }

  else
  {
    v10 = *(a1 + v9);
    if (*(v10 + 16) > a2)
    {
      v4 = *(*(v10 + 8 * a2 + 32) + 16);
      v5 = *a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v5;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_4;
      }

      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_52:
  v5 = sub_10060739C(v5);
  *a3 = v5;
LABEL_4:
  if (v5[2] <= a2)
  {
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v5[a2 + 4] = v4;
  if (!v4)
  {
    v9 = a4;
    a1 = *a4;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a4 = a1;
    if (result)
    {
LABEL_47:
      if (a1[2] > a2)
      {
        a1[a2 + 4] = 0;
        return result;
      }

      __break(1u);
LABEL_62:
      v5 = sub_10060739C(v5);
      *a4 = v5;
      goto LABEL_43;
    }

LABEL_60:
    result = sub_10060739C(a1);
    a1 = result;
    *a4 = result;
    goto LABEL_47;
  }

  v12 = *(a1 + v9);
  if (*(v12 + 16) <= a2)
  {
    goto LABEL_56;
  }

  v13 = *(a1 + qword_1016AC3A8);
  v14 = (v13 * 6) >> 64;
  v15 = 6 * v13;
  if (v14 != v15 >> 63)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v48 = a2;
  v16 = *(v12 + 8 * a2 + 32);
  v17 = v15 / 256;

  v59 = sub_100881A78(v17);
  v60 = v18;
  a2 = v16 + 56;
  v19 = 1 << *(v16 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v4 = v20 & *(v16 + 56);
  v21 = (v19 + 63) >> 6;
  v50 = v16;

  v9 = 0;
  while (v4)
  {
LABEL_18:
    v25 = *(v50 + 48) + 24 * (__clz(__rbit64(v4)) | (v9 << 6));
    v26 = *v25;
    v52 = *(v25 + 8);
    v53 = *(v25 + 16);
    v57 = &type metadata for UnsafeRawBufferPointer;
    v58 = &protocol witness table for UnsafeRawBufferPointer;
    v55 = &v53;
    p_dst = &__dst;
    v27 = sub_1000035D0(&v55, &type metadata for UnsafeRawBufferPointer);
    v28 = *v27;
    if (*v27 && (v29 = v27[1], v30 = v29 - v28, v29 != v28))
    {
      if (v30 <= 14)
      {
        *(&__dst + 6) = 0;
        *&__dst = 0;
        BYTE14(__dst) = v29 - v28;
        memcpy(&__dst, v28, v29 - v28);
        a1 = __dst;
        v31 = v47 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
        v5 = v52;
        sub_100017D5C(v26, v52);
        v47 = v31;
      }

      else
      {
        type metadata accessor for __DataStorage();
        swift_allocObject();
        sub_100017D5C(v26, v52);
        v39 = __DataStorage.init(bytes:length:)();
        v40 = v39;
        if (v30 >= 0x7FFFFFFF)
        {
          type metadata accessor for Data.RangeReference();
          a1 = swift_allocObject();
          a1[2] = 0;
          a1[3] = v30;
          v31 = v40 | 0x8000000000000000;
        }

        else
        {
          a1 = (v30 << 32);
          v31 = v39 | 0x4000000000000000;
        }

        v5 = v52;
      }
    }

    else
    {
      v5 = v52;
      sub_100017D5C(v26, v52);
      a1 = 0;
      v31 = 0xC000000000000000;
    }

    sub_100007BAC(&v55);
    v51 = v26;
    *&__dst = v26;
    *(&__dst + 1) = v5;
    v57 = &type metadata for Data;
    v58 = &protocol witness table for Data;
    v55 = a1;
    p_dst = v31;
    v32 = sub_1000035D0(&v55, &type metadata for Data);
    v33 = *v32;
    v34 = v32[1];
    v35 = v34 >> 62;
    if ((v34 >> 62) > 1)
    {
      if (v35 != 2)
      {
        a3 = v26;
        sub_100017D5C(v26, v5);
        Data._Representation.append(contentsOf:)();
        v22 = v5;
        goto LABEL_12;
      }

      a3 = *(v33 + 16);
      v36 = *(v33 + 24);
      sub_100017D5C(v51, v5);
      a1 = (v34 & 0x3FFFFFFFFFFFFFFFLL);
      v5 = __DataStorage._bytes.getter();
      if (v5)
      {
        a1 = (v34 & 0x3FFFFFFFFFFFFFFFLL);
        v37 = __DataStorage._offset.getter();
        if (__OFSUB__(a3, v37))
        {
          goto LABEL_58;
        }

        v5 = (v5 + a3 - v37);
      }

      v38 = __OFSUB__(v36, a3);
      a3 = (v36 - a3);
      if (v38)
      {
        goto LABEL_55;
      }
    }

    else
    {
      if (!v35)
      {
        a3 = v26;
        v22 = v52;
        sub_100017D5C(v51, v52);
        Data._Representation.append(contentsOf:)();
        goto LABEL_12;
      }

      v41 = v33;
      v42 = v33 >> 32;
      a3 = (v42 - v41);
      if (v42 < v41)
      {
        goto LABEL_54;
      }

      sub_100017D5C(v51, v52);
      v5 = __DataStorage._bytes.getter();
      if (v5)
      {
        a1 = (v34 & 0x3FFFFFFFFFFFFFFFLL);
        if (__OFSUB__(v41, __DataStorage._offset.getter()))
        {
          goto LABEL_59;
        }
      }
    }

    __DataStorage._length.getter();
    Data._Representation.append(contentsOf:)();
    a3 = v51;
    v22 = v52;
LABEL_12:
    v4 &= v4 - 1;
    sub_100007BAC(&v55);
    v23 = *(&__dst + 1);
    v5 = __dst;
    a1 = &v59;
    Data.append(_:)();
    sub_100016590(v5, v23);
    sub_100016590(a3, v22);
  }

  while (1)
  {
    v24 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_50;
    }

    if (v24 >= v21)
    {
      break;
    }

    v4 = *(a2 + 8 * v24);
    ++v9;
    if (v4)
    {
      v9 = v24;
      goto LABEL_18;
    }
  }

  a2 = v59;
  a3 = v60;
  v43 = NSFileHandle.offset()();
  if (v44)
  {
    return sub_100016590(a2, a3);
  }

  v9 = v43;
  v5 = *a4;
  v45 = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v5;
  if ((v45 & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_43:
  if (v5[2] <= v48)
  {
    __break(1u);
  }

  v5[v48 + 4] = v9;
  v55 = a2;
  p_dst = a3;
  sub_1000E0A3C();
  NSFileHandle.write<A>(contentsOf:)();
  return sub_100016590(a2, a3);
}

void sub_100879B74(uint64_t a1, unsigned int a2)
{
  v4 = v2;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_autoreleasePoolPush();
  sub_10087E430(a1);
  if (v3)
  {
    objc_autoreleasePoolPop(v11);
  }

  else
  {
    v42 = a2;
    v13 = v12;
    objc_autoreleasePoolPop(v11);
    sub_100008BB8(0, &unk_1016B2A60, NSFileHandle_ptr);
    (*(v8 + 16))(v10, a1, v7);
    v14 = sub_100878D64(v10, &selRef_fileHandleForReadingFromURL_error_);
    v15 = v14;
    v16 = v42;
    if (v13 <= v42)
    {
      v17 = v42;
    }

    else
    {
      v17 = v13;
    }

    v40 = qword_1016AC3B0;
    if (v17 < *(v4 + qword_1016AC3B0))
    {
      *(v4 + v40) = v17;
    }

    v39 = qword_1016AC3B8;
    if (*(v4 + qword_1016AC3B8) < HIDWORD(v13))
    {
      *(v4 + v39) = HIDWORD(v13);
    }

    v47[0] = 0;
    if ([v14 seekToOffset:4128 error:v47])
    {
      v44 = qword_1016AC3D0;
      v18 = v47[0];
      for (i = v15; ; v15 = i)
      {
        v19 = objc_autoreleasePoolPush();
        v20 = [v15 readDataOfLength:32];
        v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        v24 = v23 >> 62;
        if ((v23 >> 62) > 1)
        {
          if (v24 != 2)
          {
            break;
          }

          v27 = *(v21 + 16);
          v26 = *(v21 + 24);
          v28 = __OFSUB__(v26, v27);
          v25 = v26 - v27;
          if (v28)
          {
            goto LABEL_38;
          }
        }

        else if (v24)
        {
          LODWORD(v25) = HIDWORD(v21) - v21;
          if (__OFSUB__(HIDWORD(v21), v21))
          {
            goto LABEL_37;
          }

          v25 = v25;
        }

        else
        {
          v25 = BYTE6(v23);
        }

        if (v25 < 32)
        {
          break;
        }

        sub_100017D5C(v21, v23);
        sub_10087A8D0(v21, v23, &v48);
        v45 = v19;
        v29 = v50;
        v31 = v48;
        v30 = v49;
        if (v50 < v16)
        {
          sub_100016590(v48, v49);
          sub_100016590(v21, v23);
        }

        else
        {
          sub_100017D5C(v48, v49);
          v41 = Data._Representation.subscript.getter();
          sub_100016590(v31, v30);
          if (v29 < *(v4 + v40))
          {
            *(v4 + v40) = v29;
          }

          if (*(v4 + v39) < v29)
          {
            *(v4 + v39) = v29;
          }

          v32 = v44;
          swift_beginAccess();
          v33 = *(v4 + v32);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v4 + v32) = v33;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {

            v36 = sub_1006073B0(v35);
            *(v4 + v44) = v36;

            v33 = v36;
          }

          if (v33[2] <= v41)
          {
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
          }

          sub_100017D5C(v31, v30);
          sub_100DF0094(v46, v31, v30, v29);
          sub_100016590(v46[0], v46[1]);
          *(v4 + v44) = v33;
          swift_endAccess();
          sub_100016590(v21, v23);
          sub_100016590(v48, v49);
          v16 = v42;
        }

        objc_autoreleasePoolPop(v45);
      }

      sub_100016590(v21, v23);
      objc_autoreleasePoolPop(v19);
    }

    else
    {
      v37 = v47[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}