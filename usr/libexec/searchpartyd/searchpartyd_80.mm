uint64_t sub_1008E1170(char a1)
{
  *(*v1 + 305) = a1;

  return _swift_task_switch(sub_1008E1270, 0, 0);
}

uint64_t sub_1008E1270()
{
  v129 = v0;
  if ((*(v0 + 305) & 1) == 0)
  {
    if (qword_101694A58 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 208);
    v22 = *(v0 + 216);
    v23 = *(v0 + 144);
    v24 = *(v0 + 64);
    v25 = type metadata accessor for Logger();
    sub_1000076D4(v25, qword_10177B5D8);
    sub_10002963C(v22, v21, type metadata accessor for BeaconKeyManager.IndexInformation);
    sub_10002963C(v24, v23, type metadata accessor for DiscoveredObject);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();
    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 240);
    v31 = *(v0 + 208);
    v30 = *(v0 + 216);
    v32 = *(v0 + 144);
    if (v28)
    {
      v121 = *(v0 + 120);
      v33 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      *v33 = 141558531;
      *(v33 + 4) = 1752392040;
      *(v33 + 12) = 2081;
      type metadata accessor for UUID();
      v126 = v29;
      sub_100019588(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v123 = v30;
      v36 = v35;
      sub_10001F210(v31, type metadata accessor for BeaconKeyManager.IndexInformation);
      v37 = sub_1000136BC(v34, v36, &v128);

      *(v33 + 14) = v37;
      *(v33 + 22) = 2082;
      v38 = sub_10001904C(*(v32 + *(v121 + 36)), *(v32 + *(v121 + 36) + 8));
      v40 = v39;
      sub_10001F210(v32, type metadata accessor for DiscoveredObject);
      v41 = sub_1000136BC(v38, v40, &v128);

      *(v33 + 24) = v41;
      _os_log_impl(&_mh_execute_header, v26, v27, "Leech Ignoring unsupported beacon %{private,mask.hash}s advertisement %{public}s!", v33, 0x20u);
      swift_arrayDestroy();

      sub_10001F210(v123, type metadata accessor for BeaconKeyManager.IndexInformation);
      sub_10000B3A8(v126, &unk_1016C1120, &qword_1013C49D0);
      goto LABEL_19;
    }

    sub_10001F210(v31, type metadata accessor for BeaconKeyManager.IndexInformation);
    sub_10001F210(v30, type metadata accessor for BeaconKeyManager.IndexInformation);
    sub_10000B3A8(v29, &unk_1016C1120, &qword_1013C49D0);
    v90 = v32;
LABEL_18:
    sub_10001F210(v90, type metadata accessor for DiscoveredObject);
    goto LABEL_19;
  }

  sub_10001F210(*(v0 + 216), type metadata accessor for BeaconKeyManager.IndexInformation);
  v1 = *(v0 + 256);
  v2 = *(v0 + 224);
  v3 = *(v0 + 152);
  sub_1000D2A70(*(v0 + 240), v2, &unk_1016C1120, &qword_1013C49D0);
  v4 = v1(v2, 1, v3);
  v5 = *(v0 + 224);
  if (v4 == 1)
  {
    sub_10000B3A8(v5, &unk_1016C1120, &qword_1013C49D0);
    if (qword_101694A58 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 136);
    v7 = *(v0 + 64);
    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_10177B5D8);
    sub_10002963C(v7, v6, type metadata accessor for DiscoveredObject);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 240);
    v13 = *(v0 + 136);
    if (v11)
    {
      v14 = *(v0 + 120);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v128 = v16;
      *v15 = 136446210;
      v17 = sub_10001904C(*(v13 + *(v14 + 36)), *(v13 + *(v14 + 36) + 8));
      v19 = v18;
      sub_10001F210(v13, type metadata accessor for DiscoveredObject);
      v20 = sub_1000136BC(v17, v19, &v128);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v9, v10, "Leech did not reconcile advertisement %{public}s)!", v15, 0xCu);
      sub_100007BAC(v16);

      sub_10000B3A8(v12, &unk_1016C1120, &qword_1013C49D0);
LABEL_19:

      v91 = *(v0 + 8);

      return v91();
    }

    sub_10000B3A8(v12, &unk_1016C1120, &qword_1013C49D0);
    v90 = v13;
    goto LABEL_18;
  }

  v43 = *(v0 + 192);
  v42 = *(v0 + 200);
  v44 = *(v0 + 184);
  v124 = v43;
  v127 = *(v0 + 152);
  v46 = *(v0 + 120);
  v45 = *(v0 + 128);
  v47 = *(v0 + 112);
  v48 = *(v0 + 64);
  v49 = *(v0 + 72);
  sub_100018118(v5, v42, type metadata accessor for BeaconKeyManager.IndexInformation);
  sub_10002963C(v48, v45, type metadata accessor for DiscoveredObject);
  sub_10002963C(v42, v43, type metadata accessor for BeaconKeyManager.IndexInformation);
  *v47 = 0;
  *(v47 + 8) = 513;
  v50 = (v45 + v46[9]);
  v51 = *v50;
  v52 = v50[1];
  *(v47 + 16) = *v50;
  *(v47 + 24) = v52;
  *(v47 + 32) = *(v45 + v46[11]);
  *(v47 + 33) = *(v45 + v46[12]);
  v53 = (v45 + v46[13]);
  v54 = *v53;
  LOBYTE(v53) = v53[1];
  *(v47 + 34) = v54;
  *(v47 + 35) = v53;
  *(v47 + 36) = *(v45 + v46[15]);
  v55 = v46[7];
  v56 = v49[11];
  v57 = type metadata accessor for Date();
  (*(*(v57 - 8) + 16))(v47 + v56, v45 + v55, v57);
  *(v47 + v49[14]) = 0;
  v58 = v49[12];
  v59 = type metadata accessor for ObservedAdvertisement.Location(0);
  (*(*(v59 - 8) + 56))(v47 + v58, 1, 1, v59);
  v60 = v47 + v49[13];
  sub_10002963C(v124, v44, type metadata accessor for BeaconKeyManager.IndexInformation);
  v122 = type metadata accessor for UUID();
  (*(*(v122 - 8) + 16))(v60, v44);
  v61 = (v44 + *(v127 + 20));
  v63 = v61[3];
  v62 = v61[4];
  sub_1000035D0(v61, v63);
  sub_100029784(v51, v52);
  LOBYTE(v51) = sub_10002BD40(v63, v62);
  v64 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
  *(v60 + *(v64 + 20)) = v51 & 1;
  sub_1000035D0(v61, v61[3]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  sub_10001F210(v124, type metadata accessor for BeaconKeyManager.IndexInformation);
  sub_10001F210(v45, type metadata accessor for DiscoveredObject);
  sub_10001F210(v44, type metadata accessor for BeaconKeyManager.IndexInformation);
  *(v60 + *(v64 + 24)) = *(v0 + 40);
  (*(*(v64 - 8) + 56))(v60, 0, 1, v64);
  if (qword_101694A58 != -1)
  {
    swift_once();
  }

  v65 = *(v0 + 200);
  v66 = *(v0 + 176);
  v125 = *(v0 + 168);
  v68 = *(v0 + 104);
  v67 = *(v0 + 112);
  v70 = *(v0 + 88);
  v69 = *(v0 + 96);
  v71 = *(v0 + 80);
  v72 = type metadata accessor for Logger();
  *(v0 + 280) = sub_1000076D4(v72, qword_10177B5D8);
  sub_10002963C(v67, v68, type metadata accessor for ObservedAdvertisement);
  sub_10002963C(v67, v69, type metadata accessor for ObservedAdvertisement);
  sub_10002963C(v67, v70, type metadata accessor for ObservedAdvertisement);
  sub_10002963C(v67, v71, type metadata accessor for ObservedAdvertisement);
  sub_10002963C(v65, v66, type metadata accessor for BeaconKeyManager.IndexInformation);
  sub_10002963C(v65, v125, type metadata accessor for BeaconKeyManager.IndexInformation);
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v73, v74))
  {
    v76 = *(v0 + 96);
    v75 = *(v0 + 104);
    v77 = *(v0 + 88);
    v78 = swift_slowAlloc();
    v128 = swift_slowAlloc();
    *v78 = 141559811;
    *(v78 + 4) = 1752392040;
    *(v78 + 12) = 2081;
    v79 = sub_10001904C(*(v75 + 16), *(v75 + 24));
    v81 = v80;
    sub_10001F210(v75, type metadata accessor for ObservedAdvertisement);
    v82 = sub_1000136BC(v79, v81, &v128);

    *(v78 + 14) = v82;
    *(v78 + 22) = 2082;
    v83 = sub_10001993C(*(v76 + 32) & 0xB);
    v84 = sub_100019E48(v83 & 0x10101FF);
    v86 = v85;
    sub_10001F210(v76, type metadata accessor for ObservedAdvertisement);
    v87 = sub_1000136BC(v84, v86, &v128);

    *(v78 + 24) = v87;
    *(v78 + 32) = 2082;
    if (*(v77 + 35))
    {
      v88 = 0xE400000000000000;
      v89 = 1701736302;
    }

    else
    {
      *(v0 + 304) = *(*(v0 + 88) + 34);
      sub_1000198E8();
      v99 = FixedWidthInteger.data.getter();
      v101 = v100;
      v89 = Data.hexString.getter();
      v88 = v102;
      sub_100016590(v99, v101);
    }

    v103 = *(v0 + 168);
    v104 = *(v0 + 176);
    v105 = *(v0 + 80);
    sub_10001F210(*(v0 + 88), type metadata accessor for ObservedAdvertisement);
    v106 = sub_1000136BC(v89, v88, &v128);

    *(v78 + 34) = v106;
    *(v78 + 42) = 2082;
    v107 = sub_100018DE0(*(v105 + 32));
    v109 = v108;
    sub_10001F210(v105, type metadata accessor for ObservedAdvertisement);
    v110 = sub_1000136BC(v107, v109, &v128);

    *(v78 + 44) = v110;
    *(v78 + 52) = 2080;
    sub_1000035D0((v104 + *(v127 + 20)), *(v104 + *(v127 + 20) + 24));
    v111 = dispatch thunk of CustomStringConvertible.description.getter();
    v113 = v112;
    sub_10001F210(v104, type metadata accessor for BeaconKeyManager.IndexInformation);
    v114 = sub_1000136BC(v111, v113, &v128);

    *(v78 + 54) = v114;
    *(v78 + 62) = 2160;
    *(v78 + 64) = 1752392040;
    *(v78 + 72) = 2081;
    sub_100019588(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v115 = dispatch thunk of CustomStringConvertible.description.getter();
    v117 = v116;
    sub_10001F210(v103, type metadata accessor for BeaconKeyManager.IndexInformation);
    v118 = sub_1000136BC(v115, v117, &v128);

    *(v78 + 74) = v118;
    _os_log_impl(&_mh_execute_header, v73, v74, "Leech Reconciled advertisement %{private,mask.hash}s, multiPart: %{public}s, hint: %{public}s, Type18: %{public}s,\nindex: %s, beacon: %{private,mask.hash}s.", v78, 0x52u);
    swift_arrayDestroy();
  }

  else
  {
    v93 = *(v0 + 168);
    v94 = *(v0 + 176);
    v96 = *(v0 + 96);
    v95 = *(v0 + 104);
    v98 = *(v0 + 80);
    v97 = *(v0 + 88);

    sub_10001F210(v93, type metadata accessor for BeaconKeyManager.IndexInformation);
    sub_10001F210(v98, type metadata accessor for ObservedAdvertisement);
    sub_10001F210(v97, type metadata accessor for ObservedAdvertisement);
    sub_10001F210(v96, type metadata accessor for ObservedAdvertisement);
    sub_10001F210(v95, type metadata accessor for ObservedAdvertisement);
    sub_10001F210(v94, type metadata accessor for BeaconKeyManager.IndexInformation);
  }

  v119 = swift_task_alloc();
  *(v0 + 288) = v119;
  *v119 = v0;
  v119[1] = sub_1008E2114;
  v120 = *(v0 + 112);

  return sub_10002DC2C(v120);
}

uint64_t sub_1008E2114()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_1008E23BC;
  }

  else
  {
    v2 = sub_1008E2228;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1008E2228()
{
  v1 = v0[30];
  v2 = v0[25];
  sub_10001F210(v0[14], type metadata accessor for ObservedAdvertisement);
  sub_10001F210(v2, type metadata accessor for BeaconKeyManager.IndexInformation);
  sub_10000B3A8(v1, &unk_1016C1120, &qword_1013C49D0);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1008E23BC()
{
  v18 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v16 = v0[30];
    v3 = v0[25];
    v4 = v0[14];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136446210;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_1000136BC(v7, v8, &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "Leech cannot save observedAdvertisement. error: %{public}s.", v5, 0xCu);
    sub_100007BAC(v6);

    sub_10001F210(v4, type metadata accessor for ObservedAdvertisement);
    sub_10001F210(v3, type metadata accessor for BeaconKeyManager.IndexInformation);
    v10 = v16;
  }

  else
  {
    v11 = v0[30];
    v12 = v0[25];
    v13 = v0[14];

    sub_10001F210(v13, type metadata accessor for ObservedAdvertisement);
    sub_10001F210(v12, type metadata accessor for BeaconKeyManager.IndexInformation);
    v10 = v11;
  }

  sub_10000B3A8(v10, &unk_1016C1120, &qword_1013C49D0);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1008E26C0()
{

  v1 = *(v0 + 48);

  return _swift_task_switch(sub_1008E2734, v1, 0);
}

uint64_t sub_1008E2734()
{
  v0[26] = v0[6];
  v0[27] = 0;
  v1 = swift_allocObject();
  v0[28] = v1;
  *(v1 + 16) = 0;
  v2 = swift_task_alloc();
  v0[29] = v2;
  v3 = sub_1000BC4D4(&qword_101699B80, &unk_101392660);
  *v2 = v0;
  v2[1] = sub_10001F754;

  return unsafeBlocking<A>(context:_:)(v0 + 2, 0xD000000000000012, 0x80000001013C4900, sub_10001F63C, v1, v3);
}

uint64_t sub_1008E2844()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v4 = *(v2 + 208);

    return _swift_task_switch(sub_10001F9F0, v4, 0);
  }
}

uint64_t sub_1008E298C()
{
  if (qword_101694A58 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B5D8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get key service.", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5(0);
}

uint64_t sub_1008E2AAC()
{
  v23 = v0;
  if (qword_101694A58 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177B5D8);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v12 = 141558531;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_100019588(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_1000136BC(v13, v15, &v22);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v17;
    *v20 = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to determine beacon info %{private,mask.hash}s. %@", v12, 0x20u);
    sub_10000B3A8(v20, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v21);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[1];

  return v18(0);
}

uint64_t sub_1008E2D9C()
{
  v23 = v0;
  if (qword_101694A58 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177B5D8);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v12 = 141558531;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_100019588(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_1000136BC(v13, v15, &v22);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v17;
    *v20 = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to determine beacon info %{private,mask.hash}s. %@", v12, 0x20u);
    sub_10000B3A8(v20, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v21);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[1];

  return v18(0);
}

uint64_t sub_1008E308C()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  (*(v0[8] + 8))(v0[12], v0[7]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1008E3178()
{
  v1 = v0[8];

  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  (*(v1 + 8))(v0[12], v0[7]);
  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1008E3278()
{
  v1 = v0[24];
  v2 = v0[11];
  v3 = v0[7];

  v1(v2, v3);
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];
  (v0[24])(v0[12], v0[7]);
  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1008E3398(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 272) = a1;

  v5 = swift_task_alloc();
  *(v3 + 280) = v5;
  v6 = type metadata accessor for BeaconStoreActor();
  v7 = sub_100019588(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v5 = v4;
  v5[1] = sub_1008E354C;
  v8 = *(v2 + 224);
  v9 = *(v2 + 216);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1008E354C(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 288) = a1;

  v4 = *(v3 + 40);
  if (v1)
  {

    v5 = sub_1008E47DC;
  }

  else
  {

    v5 = sub_1008E36B0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1008E36B0()
{
  v1 = v0[4];
  v0[37] = *(v1 + 16);
  v2 = *(v1 + 24);
  v0[38] = v2;
  if ((v2 & 0x2000000000000000) != 0)
  {
    sub_10001F210(v0[23], type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v3 = v0[36];

    return _swift_task_switch(sub_1008E3804, v3, 0);
  }
}

uint64_t sub_1008E3804()
{

  v1 = swift_task_alloc();
  v0[39] = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  v0[40] = v2;
  *v1 = v0;
  v1[1] = sub_1008E38E8;
  v3 = v0[36];

  return unsafeBlocking<A>(context:_:)(v0 + 2, 0xD000000000000010, 0x800000010134A8C0, sub_1000D27E4, v3, v2);
}

uint64_t sub_1008E38E8()
{
  v1 = *(*v0 + 288);

  return _swift_task_switch(sub_1008E3A00, v1, 0);
}

uint64_t sub_1008E3A00()
{
  v1 = v0[5];
  v0[41] = v0[2];
  return _swift_task_switch(sub_1008E3A24, v1, 0);
}

uint64_t sub_1008E3A24()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  *(v0 + 336) = *(*(v0 + 328) + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);

  v3 = *(v1 + *(v2 + 20));
  *(v0 + 432) = v3;
  v4 = getuid();
  sub_1000294F0(v4);
  v5 = swift_task_alloc();
  *(v0 + 344) = v5;
  *v5 = v0;
  v5[1] = sub_1008E3B20;
  v6 = *(v0 + 184);
  v7 = *(v0 + 120);

  return sub_100686048(v7, v6, v3);
}

uint64_t sub_1008E3B20(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[44] = a1;
  v5[45] = a2;
  v5[46] = v2;

  v6 = v4[15];
  v7 = v4[13];
  v8 = v4[12];
  v9 = v4[5];
  v12 = *(v7 + 8);
  v10 = v7 + 8;
  v11 = v12;
  if (v2)
  {
    v11(v6, v8);

    v13 = sub_1008E4D28;
  }

  else
  {
    v5[47] = v11;
    v5[48] = v10 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v6, v8);

    v13 = sub_1008E3CEC;
  }

  return _swift_task_switch(v13, v9, 0);
}

uint64_t sub_1008E3CEC()
{
  v1 = v0[45];
  if (v1 >> 60 == 15 || (v2 = v0[44], v4 = v0[37], v3 = v0[38], sub_10002E98C(v2, v0[45]), sub_100029784(v4, v3), v5 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v2, v1, v4, v3), sub_10001E524(v4, v3), sub_100006654(v2, v1), !v5))
  {
    v9 = v0[36];

    return _swift_task_switch(sub_1008E3E98, v9, 0);
  }

  else
  {
    v6 = v0[23];
    sub_100006654(v0[44], v0[45]);

    sub_10001F210(v6, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1008E3E98()
{

  v1 = swift_task_alloc();
  v0[49] = v1;
  *v1 = v0;
  v1[1] = sub_1008E3F70;
  v2 = v0[40];
  v3 = v0[36];

  return unsafeBlocking<A>(context:_:)(v0 + 3, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v3, v2);
}

uint64_t sub_1008E3F70()
{
  v1 = *(*v0 + 288);

  return _swift_task_switch(sub_1008E4088, v1, 0);
}

uint64_t sub_1008E4088()
{
  v1 = v0[5];
  v0[50] = v0[3];
  return _swift_task_switch(sub_1008E40AC, v1, 0);
}

uint64_t sub_1008E40AC()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = *(v0[50] + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);
  v0[51] = v3;

  v0[52] = *(v1 + *(v2 + 24));
  v4 = getuid();
  sub_1000294F0(v4);

  return _swift_task_switch(sub_1008E4168, v3, 0);
}

uint64_t sub_1008E4168()
{
  v1 = *(*(v0 + 408) + 112);
  if (!v1)
  {
    sub_10020223C();
    v11 = swift_allocError();
    *v16 = 2;
    *(v16 + 4) = 1;
    swift_willThrow();
LABEL_7:

    goto LABEL_8;
  }

  v2 = sub_1002072CC();
  if (!v2)
  {
    sub_10020223C();
    v11 = swift_allocError();
    *v17 = 2;
    *(v17 + 4) = 1;
    swift_willThrow();

    goto LABEL_7;
  }

  v3 = v2;
  v34 = *(v0 + 416);
  v36 = *(v0 + 368);
  v4 = *(v0 + 432);
  v32 = *(v0 + 304);
  v5 = *(v0 + 184);
  v6 = *(v0 + 112);
  v7 = *(v0 + 88);
  v8 = *(v0 + 64);
  v9 = *(v0 + 56);
  v28 = *(v0 + 296);
  v30 = *(v0 + 48);
  (*(*(v0 + 80) + 16))(v7, v1 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_keys, *(v0 + 72));
  v10 = swift_task_alloc();
  *(v10 + 16) = v7;
  *(v10 + 24) = v6;
  *(v10 + 32) = v5;
  *(v10 + 40) = v4;
  *(v10 + 48) = v34;
  *(v10 + 56) = v28;
  *(v10 + 64) = v32;
  *(v10 + 72) = v3;
  (*(v9 + 104))(v8, enum case for Connection.TransactionMode.deferred(_:), v30);
  Connection.transaction(_:block:)();
  v11 = v36;
  if (v36)
  {
    v12 = *(v0 + 80);
    v13 = *(v0 + 64);
    v35 = *(v0 + 72);
    v37 = *(v0 + 88);
    v15 = *(v0 + 48);
    v14 = *(v0 + 56);

    (*(v14 + 8))(v13, v15);

    (*(v12 + 8))(v37, v35);
LABEL_8:
    *(v0 + 424) = v11;
    v18 = *(v0 + 40);
    (*(v0 + 376))(*(v0 + 112), *(v0 + 96));
    v19 = sub_1008E46D4;
    v20 = v18;
    goto LABEL_9;
  }

  v33 = *(v0 + 376);
  v38 = *(v0 + 288);
  v29 = *(v0 + 96);
  v31 = *(v0 + 112);
  v27 = *(v0 + 88);
  v22 = *(v0 + 72);
  v21 = *(v0 + 80);
  v24 = *(v0 + 56);
  v23 = *(v0 + 64);
  v25 = *(v0 + 48);

  (*(v24 + 8))(v23, v25);

  (*(v21 + 8))(v27, v22);
  v33(v31, v29);
  v19 = sub_1008E4480;
  v20 = v38;
LABEL_9:

  return _swift_task_switch(v19, v20, 0);
}

uint64_t sub_1008E4480(uint64_t a1)
{
  v2 = *(v1 + 40);
  sub_100A8AF58();

  return _swift_task_switch(sub_1008E44F0, v2, 0);
}

uint64_t sub_1008E44F0()
{
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177AE40);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[44];
  v5 = v0[45];
  v7 = v0[23];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Posted beacons set changed darwin notification for imported beacon.", v8, 2u);

    sub_100006654(v6, v5);
  }

  else
  {
    sub_100006654(v0[44], v0[45]);
  }

  sub_10001F210(v7, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1008E46D4()
{
  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[23];

  sub_100006654(v1, v2);
  sub_10001F210(v3, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1008E47DC()
{
  if (qword_101694A58 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B5D8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 184);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No BeaconStoreActor available!", v6, 2u);
  }

  sub_10001F210(v5, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1008E4980()
{
  v18 = v0;
  if (qword_101694A58 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = v0[23];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177B5D8);
  sub_10002963C(v2, v1, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[22];
  v7 = v0[23];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 141558275;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    sub_100019588(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    sub_10001F210(v8, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    v14 = sub_1000136BC(v11, v13, &v17);

    *(v9 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Cannot add imported beacon adv to Keys DB %{private,mask.hash}s:\nmissing BeaconKeyService.", v9, 0x16u);
    sub_100007BAC(v10);
  }

  else
  {

    sub_10001F210(v8, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  }

  sub_10001F210(v7, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1008E4C3C()
{
  v1 = *(v0 + 184);

  sub_10001F210(v1, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1008E4D28()
{
  v1 = *(v0 + 184);

  sub_10001F210(v1, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1008E4E20()
{
  v1 = v0[24];
  v2 = v0[23];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[13];
  (*(v4 + 16))(v3, v0[17], v5);
  v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = swift_allocObject();
  v0[26] = v7;
  *(v7 + 16) = v2;
  v1(v7 + v6, v3, v5);

  v8 = swift_task_alloc();
  v0[27] = v8;
  v9 = sub_1000BC4D4(&qword_1016A78F0, &qword_1013DBEC0);
  *v8 = v0;
  v8[1] = sub_1008E4F8C;

  return unsafeBlocking<A>(context:_:)(v0 + 2, 0xD000000000000010, 0x800000010134A8C0, sub_10002F3E4, v7, v9);
}

uint64_t sub_1008E4F8C()
{
  v1 = *(*v0 + 184);

  return _swift_task_switch(sub_1008E50B8, v1, 0);
}

uint64_t sub_1008E50B8()
{
  v1 = v0[4];
  (*(v0[14] + 8))(v0[17], v0[13]);
  v0[28] = v0[2];

  return _swift_task_switch(sub_1008E513C, v1, 0);
}

uint64_t sub_1008E513C()
{
  v1 = *(v0 + 224);
  v2 = *(v1 + 16);
  *(v0 + 232) = v2;
  if (v2)
  {
    v3 = *(v0 + 80);
    v4 = *(v0 + 40);
    v5 = *(v0 + 24);
    v6 = v5[32];
    *(v0 + 280) = v6;
    v7 = *(type metadata accessor for ObservedAdvertisement(0) + 44);
    *(v0 + 272) = v7;
    *(v0 + 281) = v5[9];
    *(v0 + 282) = v5[34];
    *(v0 + 283) = v5[35];
    v8 = *(v3 + 80);
    *(v0 + 276) = v8;
    *(v0 + 240) = *(v3 + 72);
    *(v0 + 248) = 0;
    v9 = *(v0 + 184);
    v10 = *(v0 + 88);
    v11 = *(v0 + 72);
    sub_10002963C(v1 + ((v8 + 32) & ~v8), v10, type metadata accessor for WildModeAssociationRecord);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 16))(v11, v10, v12);
    sub_10001F210(v10, type metadata accessor for WildModeAssociationRecord);
    v13 = v4[6];
    v14 = type metadata accessor for Date();
    (*(*(v14 - 8) + 16))(v11 + v13, &v5[v7], v14);
    *(v11 + v4[5]) = v6;
    *(v11 + v4[7]) = xmmword_10139D930;
    *(v11 + v4[8]) = 1;
    *(v11 + v4[9]) = 0;

    return _swift_task_switch(sub_1008E539C, v9, 0);
  }

  else
  {

    sub_10001E524(*(v0 + 144), *(v0 + 152));

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1008E539C()
{
  v1 = *(v0 + 283);
  v2 = *(v0 + 281);
  v3 = *(v0 + 184);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  sub_10002963C(*(v0 + 72), v4, type metadata accessor for BeaconStatus);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = v7 + v5;
  v9 = swift_allocObject();
  *(v0 + 256) = v9;
  *(v9 + 16) = v3;
  sub_100018118(v4, v9 + v7, type metadata accessor for BeaconStatus);
  v10 = v9 + v8;
  *v10 = v2;
  *(v10 + 2) = v1;

  v11 = swift_task_alloc();
  *(v0 + 264) = v11;
  *v11 = v0;
  v11[1] = sub_1008E551C;

  return unsafeBlocking<A>(context:_:)(v11, 0xD000000000000010, 0x800000010134A8C0, sub_1008EB0F8, v9, &type metadata for () + 1);
}

uint64_t sub_1008E551C()
{
  v1 = *(*v0 + 184);

  return _swift_task_switch(sub_1008E5648, v1, 0);
}

uint64_t sub_1008E5648()
{
  v1 = *(v0 + 32);
  sub_10001F210(*(v0 + 72), type metadata accessor for BeaconStatus);

  return _swift_task_switch(sub_1008E56C8, v1, 0);
}

uint64_t sub_1008E56C8()
{
  v1 = *(v0 + 248) + 1;
  if (v1 == *(v0 + 232))
  {

    sub_10001E524(*(v0 + 144), *(v0 + 152));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    *(v0 + 248) = v1;
    v4 = *(v0 + 272);
    v5 = *(v0 + 280);
    v6 = *(v0 + 184);
    v7 = *(v0 + 88);
    v8 = *(v0 + 72);
    v9 = *(v0 + 40);
    v10 = *(v0 + 24);
    sub_10002963C(*(v0 + 224) + ((*(v0 + 276) + 32) & ~*(v0 + 276)) + *(v0 + 240) * v1, v7, type metadata accessor for WildModeAssociationRecord);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 16))(v8, v7, v11);
    sub_10001F210(v7, type metadata accessor for WildModeAssociationRecord);
    v12 = v9[6];
    v13 = type metadata accessor for Date();
    (*(*(v13 - 8) + 16))(v8 + v12, v10 + v4, v13);
    *(v8 + v9[5]) = v5;
    *(v8 + v9[7]) = xmmword_10139D930;
    *(v8 + v9[8]) = 1;
    *(v8 + v9[9]) = 0;

    return _swift_task_switch(sub_1008E539C, v6, 0);
  }
}

uint64_t sub_1008E5900()
{
  if (qword_101694A58 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B5D8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[18];
  v5 = v0[19];
  if (v4)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No BeaconStoreActor available!", v7, 2u);
  }

  sub_10001E524(v6, v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1008E5A64()
{
  v1 = *(*v0 + 160);

  return _swift_task_switch(sub_1008E5B90, v1, 0);
}

uint64_t sub_1008E5B90()
{
  v1 = *(v0 + 24);
  sub_10001F210(*(v0 + 64), type metadata accessor for BeaconStatus);

  return _swift_task_switch(sub_10002D404, v1, 0);
}

uint64_t sub_1008E5C10()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1008E5C9C()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1008E5D28()
{
  v17 = v0;
  if (qword_101694A58 != -1)
  {
    swift_once();
  }

  v1 = v0[31];
  v2 = v0[29];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177B5D8);
  sub_10002963C(v1, v2, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[29];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 141558275;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    sub_100019588(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    sub_10001F210(v6, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    v12 = sub_1000136BC(v9, v11, &v16);

    *(v7 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Not a managed periphereral: %{private,mask.hash}s", v7, 0x16u);
    sub_100007BAC(v8);
  }

  else
  {
    v13 = v0[29];

    sub_10001F210(v13, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  }

  v14 = swift_task_alloc();
  v0[36] = v14;
  *v14 = v0;
  v14[1] = sub_1008E615C;

  return daemon.getter();
}

uint64_t sub_1008E5FAC()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v6 = v2 + 12;
    v4 = v2[12];
    v5 = v6[1];

    sub_10000B3A8(v5, &unk_10169BB50, &unk_101395760);

    return _swift_task_switch(sub_100039464, v4, 0);
  }

  else
  {
    sub_10000B3A8(v2[13], &unk_10169BB50, &unk_101395760);
    v7 = swift_task_alloc();
    v2[36] = v7;
    *v7 = v3;
    v7[1] = sub_1008E615C;

    return daemon.getter();
  }
}

uint64_t sub_1008E615C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[37] = a1;

  v3 = swift_task_alloc();
  v2[38] = v3;
  v4 = type metadata accessor for Daemon();
  v2[39] = v4;
  v5 = type metadata accessor for LegacyServiceContainer();
  v6 = sub_100019588(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[40] = v6;
  v7 = sub_100019588(&unk_101698D70, type metadata accessor for LegacyServiceContainer, &unk_1014015E0);
  *v3 = v9;
  v3[1] = sub_1008E633C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1008E633C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[41] = a1;
  v4[42] = v1;

  if (v1)
  {

    v4[45] = 0;
    v6 = swift_task_alloc();
    v4[46] = v6;
    *v6 = v5;
    v6[1] = sub_1008E68A8;

    return daemon.getter();
  }

  else
  {

    return _swift_task_switch(sub_1008E64D4, a1, 0);
  }
}

uint64_t sub_1008E64D4()
{
  v1 = *(v0 + 336);
  sub_10001B108();
  *(v0 + 344) = v2;
  if (v1)
  {

    sub_100019588(&qword_1016969E0, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v4;
    v6 = sub_1008E6800;
  }

  else
  {
    sub_100019588(&qword_1016969E0, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v7;
    v6 = sub_1008E65FC;
  }

  return _swift_task_switch(v6, v3, v5);
}

uint64_t sub_1008E65FC()
{

  v1 = swift_task_alloc();
  *(v0 + 352) = v1;
  *v1 = v0;
  v1[1] = sub_1008E66B8;
  v2 = *(v0 + 248);

  return sub_1006FE608(v2);
}

uint64_t sub_1008E66B8()
{
  v1 = *v0;
  v2 = *v0;

  v1[45] = v1[43];
  v3 = swift_task_alloc();
  v1[46] = v3;
  *v3 = v2;
  v3[1] = sub_1008E68A8;

  return daemon.getter();
}

uint64_t sub_1008E6800()
{

  *(v0 + 360) = 0;
  v1 = swift_task_alloc();
  *(v0 + 368) = v1;
  *v1 = v0;
  v1[1] = sub_1008E68A8;

  return daemon.getter();
}

uint64_t sub_1008E68A8(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 376) = a1;

  v5 = swift_task_alloc();
  *(v3 + 384) = v5;
  v6 = type metadata accessor for BeaconSharingService(0);
  v7 = sub_100019588(&unk_101696950, type metadata accessor for BeaconSharingService, &unk_101390650);
  *v5 = v4;
  v5[1] = sub_1008E6A5C;
  v8 = *(v2 + 320);
  v9 = *(v2 + 312);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1008E6A5C(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;

  v6 = *(v4 + 96);
  if (v1)
  {

    v7 = sub_1008E6E14;
  }

  else
  {

    *(v5 + 392) = a1;
    v7 = sub_1008E6BC4;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1008E6BC4()
{
  v1 = *(v0 + 392);

  return _swift_task_switch(sub_1008E6C34, v1, 0);
}

uint64_t sub_1008E6C34()
{
  v1 = *(v0[49] + 200);
  v2 = swift_task_alloc();
  v0[50] = v2;
  *v2 = v0;
  v2[1] = sub_1008E6CE8;
  v3 = v0[31];

  return sub_100044130(v3, v1);
}

uint64_t sub_1008E6CE8()
{
  v1 = *(*v0 + 96);

  return _swift_task_switch(sub_100039C64, v1, 0);
}

uint64_t sub_1008E6E14()
{
  v1 = v0[31];
  v2 = v0[25];
  v3 = v0[22];

  sub_10001F210(v3, type metadata accessor for ObservedAdvertisement);
  sub_10001F210(v2, type metadata accessor for BeaconIdentifier);
  sub_10001F210(v1, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1008E6F88()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  v3 = *(v2 + 152);
  if (v0)
  {
    v4 = sub_1008E8518;
  }

  else
  {
    v4 = sub_1008E70B4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1008E70B4()
{
  sub_10001F210(*(v0 + 312), type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008E71A0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 352) = a1;

  v3 = swift_task_alloc();
  *(v2 + 360) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100019588(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100019588(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1008E737C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1008E737C(uint64_t a1)
{
  v3 = a1;
  v4 = *v2;
  *(*v2 + 368) = a1;

  if (v1)
  {
    v3 = *(v4 + 152);

    v5 = sub_1008E836C;
  }

  else
  {

    v5 = sub_1008E74D4;
  }

  return _swift_task_switch(v5, v3, 0);
}

uint64_t sub_1008E74D4()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 312);
  v3 = *(v0 + 224);
  v4 = *(v0 + 200);
  v5 = *(v0 + 208);
  v6 = *(v5 + 16);
  *(v0 + 376) = v6;
  *(v0 + 384) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v3, v2, v4);
  v7 = *(v5 + 80);
  *(v0 + 472) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 392) = v9;
  *(v9 + 16) = v1;
  v10 = *(v5 + 32);
  *(v0 + 400) = v10;
  *(v0 + 408) = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v3, v4);

  v11 = swift_task_alloc();
  *(v0 + 416) = v11;
  *v11 = v0;
  v11[1] = sub_1008E7654;
  v13 = *(v0 + 232);
  v12 = *(v0 + 240);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_1008EAC14, v9, v13);
}

uint64_t sub_1008E7654()
{
  v1 = *(*v0 + 152);

  return _swift_task_switch(sub_1008E7780, v1, 0);
}

uint64_t sub_1008E7780()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 240);
  if ((*(*(v0 + 256) + 48))(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 368);
    sub_10000B3A8(v2, &unk_1016A9A20, &qword_10138B280);

    return _swift_task_switch(sub_1008E7B90, v3, 0);
  }

  else
  {
    v4 = *(v0 + 320);
    v5 = *(v0 + 264);
    v6 = *(v0 + 144);
    sub_100018118(v2, v5, type metadata accessor for OwnedBeaconRecord);
    v7 = *(v4 + 44);
    *(v0 + 120) = v1;
    *(v0 + 128) = sub_100019588(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord, &unk_1013E7DBC);
    v8 = sub_1000280DC((v0 + 96));
    sub_10002963C(v5, v8, type metadata accessor for OwnedBeaconRecord);
    v9 = swift_task_alloc();
    *(v0 + 424) = v9;
    *v9 = v0;
    v9[1] = sub_1008E794C;
    v10 = *(v0 + 477);

    return sub_1010B950C(v0 + 16, v10, v6 + v7, v0 + 96);
  }
}

uint64_t sub_1008E794C()
{
  v2 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);
    v4 = sub_1008E88EC;
  }

  else
  {
    v5 = *(v2 + 152);
    sub_100007BAC((v2 + 96));
    v4 = sub_1008E7A74;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1008E7A74()
{
  v1 = v0[33];

  sub_10001F210(v1, type metadata accessor for OwnedBeaconRecord);
  sub_10001F210(v0[39], type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100007BAC(v0 + 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1008E7B90()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 368);
  v3 = *(v0 + 224);
  v4 = *(v0 + 200);
  v5 = (*(v0 + 472) + 24) & ~*(v0 + 472);
  (*(v0 + 376))(v3, *(v0 + 312), v4);
  v6 = swift_allocObject();
  *(v0 + 440) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 448) = v7;
  *v7 = v0;
  v7[1] = sub_1008E7CDC;
  v9 = *(v0 + 160);
  v8 = *(v0 + 168);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_1008EAC2C, v6, v9);
}

uint64_t sub_1008E7CDC()
{
  v1 = *(*v0 + 152);

  return _swift_task_switch(sub_1008E7E08, v1, 0);
}

uint64_t sub_1008E7E08()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 168);
  if ((*(*(v0 + 184) + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &unk_101698C30, &unk_101392630);
    if (qword_1016944F0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177A7D8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Not updating key sync metadata for unreconciled advertisement.", v6, 2u);
    }

    else
    {
    }

    sub_10001F210(*(v0 + 312), type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    sub_100007BAC((v0 + 16));

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v7 = *(v0 + 320);
    v8 = *(v0 + 192);
    v9 = *(v0 + 144);
    sub_100018118(v2, v8, type metadata accessor for SharedBeaconRecord);
    v10 = *(v7 + 44);
    *(v0 + 80) = v1;
    *(v0 + 88) = sub_100019588(&qword_101698D80, type metadata accessor for SharedBeaconRecord, &unk_10140BB3C);
    v11 = sub_1000280DC((v0 + 56));
    sub_10002963C(v8, v11, type metadata accessor for SharedBeaconRecord);
    v12 = swift_task_alloc();
    *(v0 + 456) = v12;
    *v12 = v0;
    v12[1] = sub_1008E8128;
    v13 = *(v0 + 477);

    return sub_1010B950C(v0 + 16, v13, v9 + v10, v0 + 56);
  }
}

uint64_t sub_1008E8128()
{
  v2 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);
    v4 = sub_1008E8CF8;
  }

  else
  {
    v5 = *(v2 + 152);
    sub_100007BAC((v2 + 56));
    v4 = sub_1008E8250;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1008E8250()
{
  v1 = v0[24];

  sub_10001F210(v1, type metadata accessor for SharedBeaconRecord);
  sub_10001F210(v0[39], type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100007BAC(v0 + 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1008E836C()
{
  if (qword_1016944F0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A7D8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unable to get BeaconStoreActor!", v4, 2u);
  }

  v5 = v0[39];

  sub_10001F210(v5, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100007BAC(v0 + 2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1008E8518()
{
  v22 = v0;
  *(v0 + 136) = *(v0 + 336);
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 476) == 1)
  {
    sub_10001F210(*(v0 + 312), type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  }

  else
  {

    if (qword_1016944F0 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 312);
    v2 = *(v0 + 296);
    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177A7D8);
    sub_10002963C(v1, v2, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 312);
    v8 = *(v0 + 296);
    if (v6)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21 = v11;
      *v9 = 138543875;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      *(v9 + 12) = 2160;
      *(v9 + 14) = 1752392040;
      *(v9 + 22) = 2081;
      sub_100019588(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v20 = v7;
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      sub_10001F210(v8, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      v16 = sub_1000136BC(v13, v15, &v21);

      *(v9 + 24) = v16;
      _os_log_impl(&_mh_execute_header, v4, v5, "Failed to update key sync metadata %{public}@ for %{private,mask.hash}s.", v9, 0x20u);
      sub_10000B3A8(v10, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v11);

      v17 = v20;
    }

    else
    {

      sub_10001F210(v8, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      v17 = v7;
    }

    sub_10001F210(v17, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1008E88EC()
{
  v23 = v0;
  v1 = *(v0 + 264);

  sub_10001F210(v1, type metadata accessor for OwnedBeaconRecord);
  sub_100007BAC((v0 + 16));
  sub_100007BAC((v0 + 96));
  *(v0 + 136) = *(v0 + 432);
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 476) == 1)
  {
    sub_10001F210(*(v0 + 312), type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  }

  else
  {

    if (qword_1016944F0 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 312);
    v3 = *(v0 + 296);
    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177A7D8);
    sub_10002963C(v2, v3, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 312);
    v9 = *(v0 + 296);
    if (v7)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v10 = 138543875;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      *(v10 + 12) = 2160;
      *(v10 + 14) = 1752392040;
      *(v10 + 22) = 2081;
      sub_100019588(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = v8;
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      sub_10001F210(v9, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      v17 = sub_1000136BC(v14, v16, &v22);

      *(v10 + 24) = v17;
      _os_log_impl(&_mh_execute_header, v5, v6, "Failed to update key sync metadata %{public}@ for %{private,mask.hash}s.", v10, 0x20u);
      sub_10000B3A8(v11, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v12);

      v18 = v21;
    }

    else
    {

      sub_10001F210(v9, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      v18 = v8;
    }

    sub_10001F210(v18, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1008E8CF8()
{
  v23 = v0;
  v1 = *(v0 + 192);

  sub_10001F210(v1, type metadata accessor for SharedBeaconRecord);
  sub_100007BAC((v0 + 16));
  sub_100007BAC((v0 + 56));
  *(v0 + 136) = *(v0 + 464);
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 476) == 1)
  {
    sub_10001F210(*(v0 + 312), type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  }

  else
  {

    if (qword_1016944F0 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 312);
    v3 = *(v0 + 296);
    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177A7D8);
    sub_10002963C(v2, v3, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 312);
    v9 = *(v0 + 296);
    if (v7)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v10 = 138543875;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      *(v10 + 12) = 2160;
      *(v10 + 14) = 1752392040;
      *(v10 + 22) = 2081;
      sub_100019588(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = v8;
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      sub_10001F210(v9, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      v17 = sub_1000136BC(v14, v16, &v22);

      *(v10 + 24) = v17;
      _os_log_impl(&_mh_execute_header, v5, v6, "Failed to update key sync metadata %{public}@ for %{private,mask.hash}s.", v10, 0x20u);
      sub_10000B3A8(v11, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v12);

      v18 = v21;
    }

    else
    {

      sub_10001F210(v9, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      v18 = v8;
    }

    sub_10001F210(v18, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1008E9104(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = type metadata accessor for UUID();
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v3[6] = swift_task_alloc();
  sub_1000BC4D4(&qword_101699DB0, &unk_101393100);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  sub_1000BC4D4(&unk_10169BB50, &unk_101395760);
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for ObservedAdvertisement(0);
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_1008E92B4, v2, 0);
}

uint64_t sub_1008E92B4()
{
  v63 = v0;
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  sub_1000D2A70(v0[2], v3, &unk_10169BB50, &unk_101395760);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v20 = v0[14];
    v21 = v0[3];
    sub_100018118(v0[9], v20, type metadata accessor for ObservedAdvertisement);
    v23 = *(v20 + 16);
    v22 = *(v20 + 24);
    v24 = *(v21 + 16);
    v25 = *(v21 + 24);
    if ((v22 & 0x2000000000000000) != 0)
    {
      if ((v25 & 0x2000000000000000) == 0)
      {
        goto LABEL_23;
      }

      sub_100029784(v23, v22);
      sub_100029784(v24, v25);
      v27 = v22 & 0xDFFFFFFFFFFFFFFFLL;
      v29 = v25 & 0xDFFFFFFFFFFFFFFFLL;
      v26 = v23;
      v28 = v24;
    }

    else
    {
      if ((v25 & 0x2000000000000000) != 0)
      {
        goto LABEL_23;
      }

      sub_100029784(v23, v22);
      sub_100029784(v24, v25);
      v26 = v23;
      v27 = v22;
      v28 = v24;
      v29 = v25;
    }

    v30 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v26, v27, v28, v29);
    sub_10001E524(v24, v25);
    sub_10001E524(v23, v22);
    if (v30)
    {
      v31 = v0[14];
      v32 = v0[3];
      v33 = *(v32 + 35);
      if (*(v31 + 35))
      {
        if (*(v32 + 35))
        {
LABEL_32:
          sub_10001F210(v31, type metadata accessor for ObservedAdvertisement);
          goto LABEL_33;
        }
      }

      else
      {
        if (*(v31 + 34) != *(v32 + 34))
        {
          v33 = 1;
        }

        if ((v33 & 1) == 0)
        {
          goto LABEL_32;
        }
      }
    }

LABEL_23:
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v39 = v0[13];
    v40 = v0[14];
    v41 = type metadata accessor for Logger();
    sub_1000076D4(v41, qword_10177B810);
    sub_10002963C(v40, v39, type metadata accessor for ObservedAdvertisement);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    v44 = os_log_type_enabled(v42, v43);
    v45 = v0[13];
    if (v44)
    {
      v46 = v0[10];
      v47 = v0[8];
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v62 = v49;
      *v48 = 141558275;
      *(v48 + 4) = 1752392040;
      *(v48 + 12) = 2081;
      sub_1000D2A70(v45 + *(v46 + 52), v47, &qword_101699DB0, &unk_101393100);
      v50 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
      v51 = (*(*(v50 - 8) + 48))(v47, 1, v50);
      v52 = v0[8];
      if (v51 == 1)
      {
        v53 = 0x6E776F6E6B6E55;
        sub_10000B3A8(v0[8], &qword_101699DB0, &unk_101393100);
        v54 = 0xE700000000000000;
      }

      else
      {
        v56 = v0[5];
        v55 = v0[6];
        v57 = v0[4];
        (*(v56 + 16))(v55, v0[8], v57);
        sub_10001F210(v52, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
        v53 = UUID.uuidString.getter();
        v54 = v58;
        (*(v56 + 8))(v55, v57);
      }

      sub_10001F210(v0[13], type metadata accessor for ObservedAdvertisement);
      v59 = sub_1000136BC(v53, v54, &v62);

      *(v48 + 14) = v59;
      _os_log_impl(&_mh_execute_header, v42, v43, "Change detected in reconciled advt for %{private,mask.hash}s. Posting SPManagedCBPeripheralChanged.", v48, 0x16u);
      sub_100007BAC(v49);
    }

    else
    {

      sub_10001F210(v45, type metadata accessor for ObservedAdvertisement);
    }

    static DarwinNotification.post(name:)();
    v31 = v0[14];
    goto LABEL_32;
  }

  sub_10000B3A8(v0[9], &unk_10169BB50, &unk_101395760);
  if (qword_101694B98 != -1)
  {
    swift_once();
  }

  v4 = v0[12];
  v5 = v0[3];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177B810);
  sub_10002963C(v5, v4, type metadata accessor for ObservedAdvertisement);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[12];
  if (v9)
  {
    v11 = v0[10];
    v12 = v0[7];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v62 = v14;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1000D2A70(v10 + *(v11 + 52), v12, &qword_101699DB0, &unk_101393100);
    v15 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
    v16 = (*(*(v15 - 8) + 48))(v12, 1, v15);
    v17 = v0[7];
    if (v16 == 1)
    {
      v18 = 0x6E776F6E6B6E55;
      sub_10000B3A8(v0[7], &qword_101699DB0, &unk_101393100);
      v19 = 0xE700000000000000;
    }

    else
    {
      v35 = v0[5];
      v34 = v0[6];
      v36 = v0[4];
      (*(v35 + 16))(v34, v0[7], v36);
      sub_10001F210(v17, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      v18 = UUID.uuidString.getter();
      v19 = v37;
      (*(v35 + 8))(v34, v36);
    }

    sub_10001F210(v0[12], type metadata accessor for ObservedAdvertisement);
    v38 = sub_1000136BC(v18, v19, &v62);

    *(v13 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v7, v8, "First time we get an advertisement for %{private,mask.hash}s", v13, 0x16u);
    sub_100007BAC(v14);
  }

  else
  {

    sub_10001F210(v10, type metadata accessor for ObservedAdvertisement);
  }

  static DarwinNotification.post(name:)();
LABEL_33:

  v60 = v0[1];

  return v60();
}

uint64_t sub_1008E9A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = type metadata accessor for KeySyncMetadata(0);
  v4[7] = swift_task_alloc();
  v5 = swift_task_alloc();
  v4[8] = v5;
  *v5 = v4;
  v5[1] = sub_1008E9AF0;

  return daemon.getter();
}

uint64_t sub_1008E9AF0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 72) = a1;

  v3 = swift_task_alloc();
  *(v2 + 80) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_100019588(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100019588(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_1008E9CCC;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1008E9CCC(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 88) = a1;

  v4 = *(v3 + 40);
  if (v1)
  {

    v5 = sub_1008EA144;
  }

  else
  {

    v5 = sub_1008E9E30;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1008E9E30()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 16))(v1, v3, v6);
  v7 = (v1 + v2[6]);
  v7[3] = &type metadata for PrimaryIndex;
  v7[4] = sub_10002A2B8();
  *v7 = v5;
  v8 = v2[7];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 16))(v1 + v8, v4, v9);
  *(v1 + v2[5]) = 1;
  v10 = swift_task_alloc();
  v0[12] = v10;
  *v10 = v0;
  v10[1] = sub_1008E9F8C;
  v11 = v0[7];

  return sub_1010CDAC4(v11);
}

uint64_t sub_1008E9F8C()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_1008EA264;
  }

  else
  {
    v4 = sub_1008EA0B8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1008EA0B8()
{
  v1 = *(v0 + 56);

  sub_10001F210(v1, type metadata accessor for KeySyncMetadata);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1008EA144()
{
  if (qword_1016944F0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A7D8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No ObservationStoreService available.", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1008EA264()
{
  v1 = *(v0 + 56);

  sub_10001F210(v1, type metadata accessor for KeySyncMetadata);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1008EA2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_1008EA390, 0, 0);
}

uint64_t sub_1008EA390()
{
  v1 = v0[4];
  v2 = v0[5];
  if ((v1 & 0x2000000000000000) != 0)
  {
    if (v2)
    {
      v13 = sub_1012DCA30(v0[3], v1 & 0xDFFFFFFFFFFFFFFFLL);
      if (v13[2])
      {
        v14 = v0[2];
        v15 = v13;
        v11 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
        v12 = *(v11 - 8);
        sub_10002963C(v15 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v14, type metadata accessor for BeaconKeyManager.IndexInformation);

        goto LABEL_8;
      }

      goto LABEL_10;
    }
  }

  else if (v2)
  {
    v3 = v0[6];
    v4 = v0[3];
    v5 = type metadata accessor for UUID();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    v6 = sub_1012DD334(v4, v1, v3);
    v7 = v6[2];
    v8 = v0[6];
    if (v7)
    {
      v9 = v0[2];
      v10 = v7 - 1;
      v11 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
      v12 = *(v11 - 8);
      sub_10002963C(v6 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v10, v9, type metadata accessor for BeaconKeyManager.IndexInformation);

      sub_10000B3A8(v8, &qword_1016980D0, &unk_10138F3B0);
LABEL_8:
      v16 = 0;
      goto LABEL_12;
    }

    sub_10000B3A8(v0[6], &qword_1016980D0, &unk_10138F3B0);
LABEL_10:
  }

  v11 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v12 = *(v11 - 8);
  v16 = 1;
LABEL_12:
  (*(v12 + 56))(v0[2], v16, 1, v11);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1008EA628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_1008EA648, a2, 0);
}

uint64_t sub_1008EA648(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 32) + 136);
  *(v3 + 56) = v4;
  if (v4)
  {
    a1 = sub_1008EA674;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(a1, v4, a3);
}

uint64_t sub_1008EA674()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  v5 = sub_1000BC4D4(&qword_10169C980, &qword_1013C4A70);
  v6 = sub_100019588(&unk_1016C1130, type metadata accessor for BeaconKeyServiceBuilder, &unk_1013BFC14);
  v7 = swift_task_alloc();
  v0[8] = v7;
  v7[2] = v1;
  v7[3] = v3;
  v7[4] = v2;
  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_1008EA7E0;
  v9 = v0[7];

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 2, v4, v5, v9, v6, &unk_1013C4A78, v7, v4);
}

uint64_t sub_1008EA7E0()
{
  v1 = *v0;

  v2 = *(v1 + 56);

  return _swift_task_switch(sub_1008EA914, v2, 0);
}

uint64_t sub_1008EA938()
{
  v1 = v0[10];
  if (*(v1 + 16))
  {
    v2 = v0[3];
    v3 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
    v4 = *(v3 - 8);
    sub_10002963C(v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2, type metadata accessor for BeaconKeyManager.IndexInformation);

    v5 = 0;
  }

  else
  {

    v3 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
    v4 = *(v3 - 8);
    v5 = 1;
  }

  (*(v4 + 56))(v0[3], v5, 1, v3);
  v6 = v0[1];

  return v6();
}

uint64_t sub_1008EAA80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_1008DF4E0(a1, v4, v5, v6);
}

uint64_t sub_1008EAB3C()
{
  v2 = *(type metadata accessor for DiscoveredObject(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_1008E012C(v4, v0 + v3);
}

uint64_t sub_1008EAC44(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_1008EACCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_1008EA628(a1, v4, v5, v6);
}

uint64_t sub_1008EAD80()
{
  v2 = v0[22];
  v1 = v0[23];
  sub_10001F210(v0[8], type metadata accessor for ObservedAdvertisement);
  sub_10000B3A8(v2, &unk_1016C1120, &qword_1013C49D0);
  sub_10000B3A8(v1, &qword_101699DB0, &unk_101393100);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1008EAEFC(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);

  (*(v3 + 8))(v1 + v4, v2);

  return _swift_deallocObject(v1, v4 + v5);
}

uint64_t sub_1008EAFC8()
{
  v1 = (type metadata accessor for BeaconStatus(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64) + v2;

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = v1[8];
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v4 + v6, v7);

  return _swift_deallocObject(v0, v3 + 3);
}

uint64_t sub_1008EB0FC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1008EB16C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1008EB2AC(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_1008EB4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  __chkstk_darwin(a1);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 24);
  v21[0] = *(v10 + 16);
  v12 = v21[0];
  v21[1] = v13;
  v21[2] = v11;
  v21[3] = v14;
  v15 = _s11MaterializeV5InnerVMa(0, v21);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v21 - v17;
  (*(v7 + 16))(v9, a1, a3);
  sub_1008EB6A4(v9, v12, a3, v11, a4, v18);
  swift_getWitnessTable();
  Publisher.subscribe<A>(_:)();
  return (*(v16 + 8))(v18, v15);
}

uint64_t sub_1008EB6A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a3 - 8) + 32))(a6, a1);
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  _s11MaterializeV5InnerVMa(0, v11);
  return CombineIdentifier.init()();
}

uint64_t sub_1008EB73C(uint64_t a1)
{
  v3 = type metadata accessor for Mirror.AncestorRepresentation();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016ADA00, &qword_1013C4C18);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v15 - v9;
  __chkstk_darwin(v8);
  (*(v12 + 16))(&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
  v13 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  (*(v4 + 104))(v6, enum case for Mirror.AncestorRepresentation.generated(_:), v3);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

void sub_1008EB950(void *a1@<X8>)
{
  a1[3] = &type metadata for String;
  *a1 = 0x6C6169726574614DLL;
  a1[1] = 0xEB00000000657A69;
}

uint64_t sub_1008EB990(uint64_t a1, void *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = type metadata accessor for Result();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  (*(*(AssociatedTypeWitness - 8) + 16))(&v10 - v6, a1, AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  v8 = dispatch thunk of Subscriber.receive(_:)();
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t sub_1008EBB30(uint64_t a1, void *a2)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = type metadata accessor for Result();
  v17 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v16 - v6;
  v8 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v5);
  v10 = &v16 - v9;
  v11 = type metadata accessor for Subscribers.Completion();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v16 - v13;
  (*(v12 + 16))(&v16 - v13, a1, v11);
  if ((*(v8 + 48))(v14, 1, AssociatedTypeWitness) == 1)
  {
    (*(v12 + 8))(v14, v11);
  }

  else
  {
    (*(v8 + 32))(v10, v14, AssociatedTypeWitness);
    (*(v8 + 16))(v7, v10, AssociatedTypeWitness);
    swift_storeEnumTagMultiPayload();
    dispatch thunk of Subscriber.receive(_:)();
    (*(v17 + 8))(v7, v4);
    (*(v8 + 8))(v10, AssociatedTypeWitness);
  }

  v18 = 1;
  return dispatch thunk of Subscriber.receive(completion:)();
}

uint64_t sub_1008EBEB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = type metadata accessor for CombineIdentifier();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1008EBF58(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CombineIdentifier();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1008EBFE0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = type metadata accessor for CombineIdentifier();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_1008EC244(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(type metadata accessor for CombineIdentifier() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = (v14 & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

unint64_t sub_1008EC570@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = [a1 overflowFlag];
  sub_1000C3258();
  v5 = FixedWidthInteger.data.getter();
  sub_10002EA98(1, v5, v6, &v36);
  v7 = v36;
  v8 = v37;
  v9 = sub_1010BEBB0(v36, v37);
  result = sub_100016590(v7, v8);
  if (!v2)
  {
    v11 = sub_1010BE640(6u, v9);
    if (sub_1010BE640(1u, v9))
    {
      v12 = 765;
    }

    else
    {
      v12 = 0;
    }

    if (sub_1010BE640(3u, v9))
    {
      v13 = 765;
    }

    else
    {
      v13 = 0;
    }

    if (sub_1010BE640(2u, v9))
    {
      v14 = 765;
    }

    else
    {
      v14 = 0;
    }

    v15 = sub_1010BE640(5u, v9);
    v34 = sub_1010BE640(0, v9);
    v33 = sub_1010BE640(4u, v9);
    v32 = sub_1010BE640(7u, v9);
    result = [a1 crashCount];
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!(result >> 16))
    {
      if (v11)
      {
        v16 = 255;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16 + result;
      if ((v17 & 0x10000) == 0)
      {
        result = [a1 multiTime];
        if ((result & 0x8000000000000000) == 0)
        {
          v31 = result;
          result = [a1 nearOwnerTime];
          if ((result & 0x8000000000000000) == 0)
          {
            v29 = result;
            v30 = v17;
            result = [a1 wildTime];
            if ((result & 0x8000000000000000) == 0)
            {
              v18 = result;
              result = [a1 soundCount];
              if ((result & 0x8000000000000000) == 0)
              {
                if (!HIDWORD(result))
                {
                  v28 = v18;
                  if (v15)
                  {
                    v19 = 510;
                  }

                  else
                  {
                    v19 = 0;
                  }

                  v20 = result + v19;
                  if (!__CFADD__(result, v19))
                  {
                    result = [a1 soundTime];
                    if ((result & 0x8000000000000000) == 0)
                    {
                      if (!HIDWORD(result))
                      {
                        if (v34)
                        {
                          v21 = 510;
                        }

                        else
                        {
                          v21 = 0;
                        }

                        v22 = result + v21;
                        if (!__CFADD__(result, v21))
                        {
                          result = [a1 rangingCount];
                          if ((result & 0x8000000000000000) == 0)
                          {
                            if (!HIDWORD(result))
                            {
                              v35 = v22;
                              if (v33)
                              {
                                v23 = 510;
                              }

                              else
                              {
                                v23 = 0;
                              }

                              v24 = result + v23;
                              if (!__CFADD__(result, v23))
                              {
                                result = [a1 rangingTime];
                                if ((result & 0x8000000000000000) == 0)
                                {
                                  if (!HIDWORD(result))
                                  {
                                    if (v32)
                                    {
                                      v25 = 510;
                                    }

                                    else
                                    {
                                      v25 = 0;
                                    }

                                    v26 = __CFADD__(result, v25);
                                    v27 = result + v25;
                                    if (!v26)
                                    {
                                      *a2 = xmmword_10138BBF0;
                                      *(a2 + 16) = v9;
                                      *(a2 + 18) = v30;
                                      *(a2 + 24) = v31 + v12;
                                      *(a2 + 32) = v29 + v13;
                                      *(a2 + 40) = v28 + v14;
                                      *(a2 + 48) = v20;
                                      *(a2 + 52) = v35;
                                      *(a2 + 56) = v24;
                                      *(a2 + 60) = v27;
                                      *(a2 + 64) = 2;
                                      return result;
                                    }

LABEL_63:
                                    __break(1u);
                                    return result;
                                  }

LABEL_62:
                                  __break(1u);
                                  goto LABEL_63;
                                }

LABEL_61:
                                __break(1u);
                                goto LABEL_62;
                              }

LABEL_60:
                              __break(1u);
                              goto LABEL_61;
                            }

LABEL_59:
                            __break(1u);
                            goto LABEL_60;
                          }

LABEL_58:
                          __break(1u);
                          goto LABEL_59;
                        }

LABEL_57:
                        __break(1u);
                        goto LABEL_58;
                      }

LABEL_56:
                      __break(1u);
                      goto LABEL_57;
                    }

LABEL_55:
                    __break(1u);
                    goto LABEL_56;
                  }

LABEL_54:
                  __break(1u);
                  goto LABEL_55;
                }

LABEL_53:
                __break(1u);
                goto LABEL_54;
              }

LABEL_52:
              __break(1u);
              goto LABEL_53;
            }

LABEL_51:
            __break(1u);
            goto LABEL_52;
          }

LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    __break(1u);
    goto LABEL_48;
  }

  return result;
}

uint64_t sub_1008EC8B4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1008EC964(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

unint64_t sub_1008EC8E0(uint64_t a1)
{
  *(a1 + 8) = sub_1008EC910();
  result = sub_10059C0F0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1008EC910()
{
  result = qword_1016ADA08;
  if (!qword_1016ADA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ADA08);
  }

  return result;
}

uint64_t sub_1008EC964(void *a1)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  v3 = v12[4];
  sub_10015049C(v12, v12[3]);
  v4 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (!v1)
  {
    v6 = v4;
    v7 = v5;
    sub_100017D5C(v4, v5);
    v8 = sub_100314594(v6, v7);
    if (v9 >> 60 != 15)
    {
      v3 = v8;
      sub_100016590(v6, v7);
      sub_100007BAC(v12);
      sub_100007BAC(a1);
      return v3;
    }

    v3 = type metadata accessor for BinaryEncodingError();
    sub_100205404();
    swift_allocError();
    (*(*(v3 - 8) + 104))(v10, enum case for BinaryEncodingError.encodingError(_:), v3);
    swift_willThrow();
    sub_100016590(v6, v7);
  }

  sub_100007BAC(v12);
  sub_100007BAC(a1);
  return v3;
}

uint64_t sub_1008ECAD0()
{
  v0 = IOServiceMatching("IOPMPowerSource");
  if (!v0)
  {
    sub_10039722C();
    v10 = static OS_os_log.default.getter();
    v11 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("PowerStateMonitor: Could not read power source. Battery state unknown.", 70, 2, &_mh_execute_header, v10, v11, _swiftEmptyArrayStorage);

    return 0;
  }

  v1 = v0;
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v1);
  if (!MatchingService)
  {
    sub_10039722C();
    v12 = static OS_os_log.default.getter();
    v13 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("PowerStateMonitor: Could not get matching service for power source. Battery state unknown.", 90, 2, &_mh_execute_header, v12, v13, _swiftEmptyArrayStorage);
LABEL_10:

LABEL_14:
    return 0;
  }

  v3 = MatchingService;
  v4 = String._bridgeToObjectiveC()();
  CFProperty = IORegistryEntryCreateCFProperty(v3, v4, kCFAllocatorDefault, 0);

  if (!CFProperty)
  {
    sub_10039722C();
    v12 = static OS_os_log.default.getter();
    v14 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("PowerStateMonitor: Could not create value for fully charged key. Battery state unknown.", 87, 2, &_mh_execute_header, v12, v14, _swiftEmptyArrayStorage);
    goto LABEL_10;
  }

  v6 = CFGetTypeID(CFProperty);
  if (v6 != CFBooleanGetTypeID())
  {
    sub_10039722C();
    v12 = static OS_os_log.default.getter();
    v15 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("PowerStateMonitor: unexpected type for kIOPMFullyChargedKey. Battery state unknown.", 83, 2, &_mh_execute_header, v12, v15, _swiftEmptyArrayStorage);
LABEL_12:

LABEL_13:
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  swift_unknownObjectRetain();
  swift_dynamicCast();
  if (v23)
  {
    sub_10039722C();
    v7 = static OS_os_log.default.getter();
    v8 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("PowerStateMonitor: Battery state charged.", 41, 2, &_mh_execute_header, v7, v8, _swiftEmptyArrayStorage);

    swift_unknownObjectRelease();
    return 3;
  }

  v16 = String._bridgeToObjectiveC()();
  v17 = IORegistryEntryCreateCFProperty(v3, v16, kCFAllocatorDefault, 0);

  if (!v17)
  {
    sub_10039722C();
    v12 = static OS_os_log.default.getter();
    v21 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("PowerStateMonitor: Could not create value for is charging key. Battery state unknown.", 85, 2, &_mh_execute_header, v12, v21, _swiftEmptyArrayStorage);
    goto LABEL_12;
  }

  v18 = CFGetTypeID(v17);
  if (v18 != CFBooleanGetTypeID())
  {
    sub_10039722C();
    v12 = static OS_os_log.default.getter();
    v22 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("PowerStateMonitor: unexpected type for kIOPMPSIsChargingKey. Battery state unknown.", 83, 2, &_mh_execute_header, v12, v22, _swiftEmptyArrayStorage);

    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  swift_unknownObjectRetain();
  swift_dynamicCast();
  sub_10039722C();
  v19 = static OS_os_log.default.getter();
  v20 = static os_log_type_t.default.getter();
  if (v23)
  {
    os_log(_:dso:log:type:_:)("PowerStateMonitor: Battery state charging.", 42, 2, &_mh_execute_header, v19, v20, _swiftEmptyArrayStorage);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    return 2;
  }

  else
  {
    os_log(_:dso:log:type:_:)("PowerStateMonitor: Battery state discharging.", 45, 2, &_mh_execute_header, v19, v20, _swiftEmptyArrayStorage);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    return 1;
  }
}

uint64_t sub_1008ECF28(uint64_t a1, int a2)
{
  v5 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v5 - 8);
  v7 = v73 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v78 = v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v77 = v73 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = v73 - v15;
  __chkstk_darwin(v14);
  v18 = v73 - v17;
  sub_10030DB78();
  sub_10030BB60(v19, v7);

  v20 = (*(v9 + 48))(v7, 1, v8);
  v80 = a1;
  v79 = a2;
  if (v20 == 1)
  {
    sub_10000B3A8(v7, &unk_101696900, &unk_10138B1E0);
  }

  else
  {
    v75 = *(v9 + 32);
    v76 = v2;
    v75(v18, v7, v8);
    Date.addingTimeInterval(_:)();
    v21 = static Date.< infix(_:_:)();
    v22 = *(v9 + 8);
    v22(v16, v8);
    if (v21)
    {
      v73[1] = type metadata accessor for Transaction();
      v74 = v22;
      v23 = *(v9 + 16);
      v23(v16, a1, v8);
      v23(v77, v18, v8);
      v24 = *(v9 + 80);
      v25 = (v24 + 25) & ~v24;
      v73[0] = (v10 + v24 + v25) & ~v24;
      v26 = swift_allocObject();
      *(v26 + 16) = v76;
      v27 = v79;
      *(v26 + 24) = v79;
      v28 = v26 + v25;
      v29 = v75;
      v75(v28, v16, v8);
      v29(v26 + v73[0], v77, v8);
      LOBYTE(a2) = v27;

      static Transaction.asyncTask(name:block:)();

      v74(v18, v8);
    }

    else
    {
      v22(v18, v8);
      LOBYTE(a2) = v79;
    }
  }

  v30 = 0x5779726574746162;
  v31 = 0xEB00000000694669;
  if (a2 != 2)
  {
    v30 = 0x4379726574746162;
    v31 = 0xEB000000006C6C65;
  }

  v32 = 0x6C65437265776F70;
  v33 = 0xE90000000000006CLL;
  if (!a2)
  {
    v32 = 0x4669577265776F70;
    v33 = 0xE900000000000069;
  }

  if (a2 <= 1u)
  {
    v34 = v32;
  }

  else
  {
    v34 = v30;
  }

  if (a2 <= 1u)
  {
    v35 = v33;
  }

  else
  {
    v35 = v31;
  }

  v36 = sub_10030E76C();
  if (*(v36 + 16))
  {
    v37 = sub_100771D58(v34, v35);
    v39 = v38;

    if (v39)
    {
      v40 = *(*(v36 + 56) + 8 * v37);
    }

    else
    {
      v40 = _swiftEmptyArrayStorage;
    }
  }

  else
  {

    v40 = _swiftEmptyArrayStorage;
  }

  v41 = v78;
  (*(v9 + 16))(v78, v80, v8);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v40 = sub_100A5B6F8(0, v40[2] + 1, 1, v40);
  }

  v43 = v40[2];
  v42 = v40[3];
  if (v43 >= v42 >> 1)
  {
    v40 = sub_100A5B6F8((v42 > 1), v43 + 1, 1, v40);
  }

  v40[2] = v43 + 1;
  v44 = *(v9 + 32);
  v45 = v40 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v43;
  v78 = v8;
  v44(v45, v41, v8);
  v46 = 0x5779726574746162;
  v47 = 0xEB00000000694669;
  if (a2 != 2)
  {
    v46 = 0x4379726574746162;
    v47 = 0xEB000000006C6C65;
  }

  v48 = 0x6C65437265776F70;
  v49 = 0xE90000000000006CLL;
  if (!a2)
  {
    v48 = 0x4669577265776F70;
    v49 = 0xE900000000000069;
  }

  if (a2 <= 1u)
  {
    v50 = v48;
  }

  else
  {
    v50 = v46;
  }

  if (a2 <= 1u)
  {
    v51 = v49;
  }

  else
  {
    v51 = v47;
  }

  v52 = sub_10030E76C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v81 = v52;
  sub_100FFBD6C(v40, v50, v51, isUniquelyReferenced_nonNull_native);

  v54 = objc_opt_self();
  v55 = [v54 standardUserDefaults];
  sub_1000BC4D4(&qword_1016ADB40, &unk_1013C4ED8);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v57 = String._bridgeToObjectiveC()();
  [v55 setObject:isa forKey:v57];

  sub_10030E76C();
  v58 = [v54 standardUserDefaults];
  v59 = Dictionary._bridgeToObjectiveC()().super.isa;

  v60 = String._bridgeToObjectiveC()();
  [v58 setObject:v59 forKey:v60];

  v61 = static os_log_type_t.default.getter();
  if (qword_101695070 != -1)
  {
    swift_once();
  }

  v62 = qword_10177C3B8;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v63 = swift_allocObject();
  v64 = v63;
  *(v63 + 16) = xmmword_10138B360;
  if (v79 > 1u)
  {
    if (v79 == 2)
    {
      v65 = 0x5779726574746162;
      v67 = 6899305;
    }

    else
    {
      v65 = 0x4379726574746162;
      v67 = 7105637;
    }

    v66 = v67 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
  }

  else
  {
    v65 = 0x4669577265776F70;
    v66 = 0xE900000000000069;
    if (v79)
    {
      v65 = 0x6C65437265776F70;
      v66 = 0xE90000000000006CLL;
    }
  }

  *(v63 + 56) = &type metadata for String;
  v68 = sub_100008C00();
  v64[8] = v68;
  v64[4] = v65;
  v64[5] = v66;
  sub_1008F6EA8(&qword_1016969A0, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v69 = dispatch thunk of CustomStringConvertible.description.getter();
  v64[12] = &type metadata for String;
  v64[13] = v68;
  v64[9] = v69;
  v64[10] = v70;
  v71 = v40[2];

  v64[17] = &type metadata for Int;
  v64[18] = &protocol witness table for Int;
  v64[14] = v71;
  os_log(_:dso:log:_:_:)(v61, &_mh_execute_header, v62, "finderPublished: powerMode, %@, current date, %@, count, %d", 59, 2, v64);
}

uint64_t sub_1008ED7E8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 64) = a2;
  *(v4 + 16) = a1;
  return _swift_task_switch(sub_1008ED810, 0, 0);
}

uint64_t sub_1008ED810()
{
  type metadata accessor for AnalyticsEvent(0);
  v1 = swift_allocObject();
  *(v0 + 40) = v1;
  swift_defaultActor_initialize();
  *(v1 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v2 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v3 = type metadata accessor for DispatchTime();
  v4 = *(*(v3 - 8) + 56);
  v4(&v1[v2], 1, 1, v3);
  v4(&v1[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v3);
  *(v1 + 15) = 0xD000000000000033;
  *(v1 + 16) = 0x8000000101364940;

  return _swift_task_switch(sub_1008ED970, v1, 0);
}

uint64_t sub_1008ED970()
{
  sub_101170CAC(*(v0 + 40), *(v0 + 16));

  type metadata accessor for AnalyticsPublisher();
  *(v0 + 48) = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1008EDA50;
  v2 = *(v0 + 40);

  return sub_101163F78(v2);
}

uint64_t sub_1008EDA50()
{

  return _swift_task_switch(sub_1008EDB68, 0, 0);
}

uint64_t sub_1008EDB68()
{
  sub_10030E76C();

  v1 = [objc_opt_self() standardUserDefaults];
  sub_1000BC4D4(&qword_1016ADB40, &unk_1013C4ED8);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v3 = String._bridgeToObjectiveC()();
  [v1 setObject:isa forKey:v3];

  v20 = static os_log_type_t.default.getter();
  if (qword_101695070 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 64);
  v19 = qword_10177C3B8;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v5 = swift_allocObject();
  v6 = v5;
  *(v5 + 16) = xmmword_101391790;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v7 = 0xEB00000000694669;
      v8 = 0x5779726574746162;
    }

    else
    {
      v7 = 0xEB000000006C6C65;
      v8 = 0x4379726574746162;
    }
  }

  else
  {
    v7 = 0xE900000000000069;
    if (v4)
    {
      v7 = 0xE90000000000006CLL;
      v8 = 0x6C65437265776F70;
    }

    else
    {
      v8 = 0x4669577265776F70;
    }
  }

  *(v5 + 56) = &type metadata for String;
  v9 = sub_100008C00();
  v6[8] = v9;
  v6[4] = v8;
  v6[5] = v7;
  type metadata accessor for Date();
  sub_1008F6EA8(&qword_1016969A0, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v10 = dispatch thunk of CustomStringConvertible.description.getter();
  v6[12] = &type metadata for String;
  v6[13] = v9;
  v6[9] = v10;
  v6[10] = v11;
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  v6[17] = &type metadata for String;
  v6[18] = v9;
  v6[14] = v12;
  v6[15] = v13;
  sub_10030E76C();
  v14 = Dictionary.description.getter();
  v16 = v15;

  v6[22] = &type metadata for String;
  v6[23] = v9;
  v6[19] = v14;
  v6[20] = v16;
  os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v19, "finderPublished: powerMode, %@, current date, %@, start date, %@, last publish date, %@ (clear buffer)", 102, 2, v6);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1008EDE88()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B5F0);
  v1 = sub_1000076D4(v0, qword_10177B5F0);
  if (qword_1016954D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177CDF0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1008EDF50(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  return _swift_task_switch(sub_1008EDF98, v1, 0);
}

uint64_t sub_1008EDF98()
{
  if (qword_101694A60 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B5F0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Received publish event trigger.", v4, 2u);
  }

  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[3];

  v9 = sub_1008F6EA8(&qword_1016ADB18, v8, type metadata accessor for FindMyNetworkPublisherService, &unk_1013C4E58);
  v10 = swift_task_alloc();
  v0[6] = v10;
  v10[2] = v5;
  v10[3] = v7;
  v10[4] = v6;
  v11 = swift_task_alloc();
  v0[7] = v11;
  v12 = sub_1000BC4D4(&qword_1016ADB30, &qword_1013C4EA0);
  *v11 = v0;
  v11[1] = sub_1008EE19C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, v5, v9, 0xD000000000000018, 0x80000001013648C0, sub_1008F6C38, v10, v12);
}

uint64_t sub_1008EE19C()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_1008EE2C4;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_10077EDE4;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1008EE2C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008EE328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v7 = sub_1000BC4D4(&qword_1016ADB38, &unk_1013C4EA8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v22 - v10;
  v12 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v12 - 8);
  v14 = &v22 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v8 + 16))(v11, a1, v7);
  v17 = sub_1008F6EA8(&qword_1016ADB18, v16, type metadata accessor for FindMyNetworkPublisherService, &unk_1013C4E58);
  v18 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v19 = (v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 2) = a2;
  *(v20 + 3) = v17;
  *(v20 + 4) = a2;
  *(v20 + 5) = a3;
  (*(v8 + 32))(&v20[v18], v11, v7);
  *&v20[v19] = v23;

  swift_retain_n();
  sub_10025EDD4(0, 0, v14, &unk_1013C4EC0, v20);
}

uint64_t sub_1008EE580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v9 = sub_1000BC4D4(&qword_1016ADB38, &unk_1013C4EA8);
  v7[9] = v9;
  v10 = *(v9 - 8);
  v7[10] = v10;
  v7[11] = *(v10 + 64);
  v7[12] = swift_task_alloc();

  return _swift_task_switch(sub_1008EE65C, a4, 0);
}

uint64_t sub_1008EE65C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v6 = v0[5];
  v5 = v0[6];
  v0[2] = 0x6873696C627550;
  v7 = v0[7];
  v13 = v0[8];
  v0[3] = 0xE700000000000000;
  (*(v4 + 16))(v1, v7, v3);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = (v2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  v0[13] = v10;
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;
  (*(v4 + 32))(v10 + v8, v1, v3);
  *(v10 + v9) = v13;
  v14 = &async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:) + async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:);

  v11 = swift_task_alloc();
  v0[14] = v11;
  *v11 = v0;
  v11[1] = sub_1008EE814;

  return (v14)(v0 + 2, &unk_1013C4ED0, v10, sub_1008F67D0, 0);
}

uint64_t sub_1008EE814()
{
  v2 = *v1;
  v2[15] = v0;

  if (v0)
  {
    v3 = v2[5];

    return _swift_task_switch(sub_1008EE978, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1008EE978()
{
  if (qword_101694A60 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B5F0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Throttled publish event threw error: %{public}@.", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  v7 = v0[15];

  v0[4] = v7;
  CheckedContinuation.resume(throwing:)();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1008EEB28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v3[7] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_1008EEC24, 0, 0);
}

uint64_t sub_1008EEC24()
{
  if (qword_101694A60 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[11] = sub_1000076D4(v1, qword_10177B5F0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Publish event is executing.", v4, 2u);
  }

  v6 = v0[9];
  v5 = v0[10];
  v8 = v0[7];
  v7 = v0[8];

  type metadata accessor for FindMyNetworkPublishDateProvider();
  v0[12] = swift_allocObject();
  swift_defaultActor_initialize();
  static Date.trustedNow.getter(v5);
  (*(v6 + 16))(v8, v5, v7);
  (*(v6 + 56))(v8, 0, 1, v7);
  sub_1008F68DC(v8);
  v9 = swift_task_alloc();
  v0[13] = v9;
  *v9 = v0;
  v9[1] = sub_1008EEDF0;

  return sub_1008F4148();
}

uint64_t sub_1008EEDF0()
{
  v2 = *v1;
  *(v2 + 112) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1008EF84C, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 120) = v3;
    *v3 = v2;
    v3[1] = sub_1008EEF5C;

    return sub_1008F2DA0();
  }
}

uint64_t sub_1008EEF5C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v4 = sub_1008EF8F4;
  }

  else
  {
    v4 = sub_1008EF070;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1008EF070()
{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 128);
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v4 + 16);

    _os_log_impl(&_mh_execute_header, v1, v2, "Publish found %ld observations to publish.", v5, 0xCu);
  }

  else
  {
  }

  v6 = swift_task_alloc();
  *(v0 + 144) = v6;
  *v6 = v0;
  v6[1] = sub_1008EF1B0;
  v7 = *(v0 + 128);

  return sub_1008EFF7C(v7);
}

uint64_t sub_1008EF1B0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {
    v4 = sub_1008EF99C;
  }

  else
  {
    v4 = sub_1008EF2C4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1008EF2C4()
{
  v1 = v0[5];
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[21] = v2;
    *v2 = v0;
    v2[1] = sub_1008EF550;
    v3 = v0[16];

    return sub_1008F4D8C(v1, v3, 0);
  }

  else
  {

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[16];
    if (v7)
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      v10 = *(v8 + 16);

      *(v9 + 4) = v10;

      _os_log_impl(&_mh_execute_header, v5, v6, "Published %ld observations to Find My network.", v9, 0xCu);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v11 = v0[19];
    v13 = v0[9];
    v12 = v0[10];
    v14 = v0[8];
    sub_1011298C8(&off_10160CE00);
    sub_1008ECAD0();
    v15 = sub_10112C0E0();

    v16 = sub_1000DD810();
    if (v16)
    {
      v17 = 2;
    }

    else
    {
      v17 = 3;
    }

    if (v15)
    {
      v18 = v17;
    }

    else
    {
      v18 = (v16 & 1) == 0;
    }

    sub_1008ECF28(v12, v18);
    v0[3] = v11;
    v19 = v11;
    sub_1000BC4D4(&qword_1016ADB38, &unk_1013C4EA8);
    CheckedContinuation.resume(returning:)();

    (*(v13 + 8))(v12, v14);

    v20 = v0[1];

    return v20(1);
  }
}

uint64_t sub_1008EF550()
{

  return _swift_task_switch(sub_1008EF64C, 0, 0);
}

uint64_t sub_1008EF64C()
{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[16];
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    v6 = *(v4 + 16);

    *(v5 + 4) = v6;

    _os_log_impl(&_mh_execute_header, v1, v2, "Published %ld observations to Find My network.", v5, 0xCu);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v7 = v0[19];
  v9 = v0[9];
  v8 = v0[10];
  v10 = v0[8];
  sub_1011298C8(&off_10160CE00);
  sub_1008ECAD0();
  v11 = sub_10112C0E0();

  v12 = sub_1000DD810();
  if (v12)
  {
    v13 = 2;
  }

  else
  {
    v13 = 3;
  }

  if (v11)
  {
    v14 = v13;
  }

  else
  {
    v14 = (v12 & 1) == 0;
  }

  sub_1008ECF28(v8, v14);
  v0[3] = v7;
  v15 = v7;
  sub_1000BC4D4(&qword_1016ADB38, &unk_1013C4EA8);
  CheckedContinuation.resume(returning:)();

  (*(v9 + 8))(v8, v10);

  v16 = v0[1];

  return v16(1);
}

uint64_t sub_1008EF84C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_1008EF8F4()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_1008EF99C()
{
  v1 = v0[5];
  v2 = v0[20];
  if (v1)
  {

    swift_errorRetain();
    v3 = swift_task_alloc();
    v0[22] = v3;
    *v3 = v0;
    v3[1] = sub_1008EFC48;
    v4 = v0[16];

    return sub_1008F4D8C(v1, v4, v2);
  }

  else
  {

    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[16];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 134218242;
      v11 = *(v8 + 16);

      *(v9 + 4) = v11;

      *(v9 + 12) = 2114;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v12;
      *v10 = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "Failed to publish %ld observations to Find My network. %{public}@.", v9, 0x16u);
      sub_10000B3A8(v10, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v14 = v0[9];
    v13 = v0[10];
    v15 = v0[8];
    v0[2] = v0[20];
    swift_errorRetain();
    sub_1000BC4D4(&qword_1016ADB38, &unk_1013C4EA8);
    CheckedContinuation.resume(throwing:)();

    (*(v14 + 8))(v13, v15);

    v16 = v0[1];

    return v16(1);
  }
}

uint64_t sub_1008EFC48()
{

  return _swift_task_switch(sub_1008EFD60, 0, 0);
}

uint64_t sub_1008EFD60()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[16];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 134218242;
    v6 = *(v3 + 16);

    *(v4 + 4) = v6;

    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to publish %ld observations to Find My network. %{public}@.", v4, 0x16u);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v9 = v0[9];
  v8 = v0[10];
  v10 = v0[8];
  v0[2] = v0[20];
  swift_errorRetain();
  sub_1000BC4D4(&qword_1016ADB38, &unk_1013C4EA8);
  CheckedContinuation.resume(throwing:)();

  (*(v9 + 8))(v8, v10);

  v11 = v0[1];

  return v11(1);
}

uint64_t sub_1008EFF7C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v2[9] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v2[17] = swift_task_alloc();
  v2[18] = type metadata accessor for SubmitEndpoint(0);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return _swift_task_switch(sub_1008F0150, v1, 0);
}

uint64_t sub_1008F0150()
{
  if (*(v0[7] + 16))
  {
    v1 = *(v0[8] + 128);

    v2 = swift_task_alloc();
    v0[21] = v2;
    *v2 = v0;
    v2[1] = sub_1008F0374;
    v3 = v0[7];

    return sub_101295A14(v3, v1);
  }

  else
  {
    if (qword_101694A60 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177B5F0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "No observations to publish.", v8, 2u);
    }

    v9 = v0[1];

    return v9(0);
  }
}

uint64_t sub_1008F0374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[22] = a1;
  v5[23] = a2;
  v5[24] = a3;

  if (v3)
  {

    v6 = v5[1];

    return v6();
  }

  else
  {
    v8 = v5[8];

    return _swift_task_switch(sub_1008F0518, v8, 0);
  }
}

uint64_t sub_1008F0518()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[17];
  v7 = v0[18];
  type metadata accessor for AnonymousCrowdSourceNetworkURLComponents();
  swift_allocObject();
  *v4 = sub_100280910();
  v8 = *(v7 + 20);
  v9 = enum case for FMNAccountType.none(_:);
  v10 = type metadata accessor for FMNAccountType();
  (*(*(v10 - 8) + 104))(v4 + v8, v9, v10);
  type metadata accessor for SearchPartyURLSessionFactory(0);
  swift_allocObject();
  v11 = type metadata accessor for FMNMockingPreferences();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  type metadata accessor for ServerInteractionController(0);
  v13 = swift_allocObject();
  sub_10001BB38(v4, v5, type metadata accessor for SubmitEndpoint);
  v0[25] = sub_100623214(v5, v12, v13);
  sub_1000344F4(v4, type metadata accessor for SubmitEndpoint);
  v0[5] = &type metadata for SubmitUploadv2;
  v0[6] = sub_1008F6B90();
  v0[2] = v3;
  v0[3] = v2;
  v0[4] = v1;

  sub_100017D5C(v2, v1);
  v14 = swift_task_alloc();
  v0[26] = v14;
  *v14 = v0;
  v14[1] = sub_1008F0750;
  v15 = v0[16];

  return sub_1004E682C(v15, (v0 + 2));
}

uint64_t sub_1008F0750()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = sub_1008F2214;
  }

  else
  {
    v5 = *(v2 + 64);
    sub_100007BAC((v2 + 16));
    v4 = sub_1008F0878;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1008F0878(uint64_t a1)
{
  if ((FMNServerInteractionController.FMNResponseFields.statusCode.getter() - 300) >= 0xFFFFFFFFFFFFFF9CLL)
  {
    v15 = swift_task_alloc();
    v1[28] = v15;
    *v15 = v1;
    v15[1] = sub_1008F0B74;

    return daemon.getter();
  }

  else
  {
    if (qword_101694A58 != -1)
    {
      swift_once();
    }

    v2 = v1[15];
    v3 = v1[16];
    v4 = v1[13];
    v5 = v1[14];
    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177B5D8);
    (*(v5 + 16))(v2, v3, v4);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v7, v8);
    v11 = v1[14];
    v10 = v1[15];
    v12 = v1[13];
    if (v9)
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      v14 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
      v24 = *(v11 + 8);
      v24(v10, v12);
      *(v13 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to publish payloads. Got %ld.", v13, 0xCu);
    }

    else
    {
      v24 = *(v11 + 8);
      v24(v1[15], v1[13]);
    }

    v16 = v7;
    v17 = v1[24];
    v18 = v1[23];
    v19 = v1[16];
    v20 = v1[13];

    sub_1008F6BE4();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();

    sub_100016590(v18, v17);
    v24(v19, v20);

    v22 = v1[1];

    return v22();
  }
}

uint64_t sub_1008F0B74(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[29] = a1;

  v3 = swift_task_alloc();
  v2[30] = v3;
  v4 = type metadata accessor for Daemon();
  v2[31] = v4;
  v5 = type metadata accessor for ObservationStoreService();
  v2[32] = v5;
  v6 = sub_1008F6EA8(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[33] = v6;
  v7 = sub_1008F6EA8(&qword_1016AA450, 255, type metadata accessor for ObservationStoreService, &unk_101404B80);
  v2[34] = v7;
  *v3 = v9;
  v3[1] = sub_1008F0D70;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1008F0D70(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[35] = a1;
  v3[36] = v1;

  if (v1)
  {
    v5 = v3[8];

    return _swift_task_switch(sub_1008F1074, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[37] = v6;
    *v6 = v4;
    v6[1] = sub_1008F0F00;
    v7 = v3[7];

    return sub_1010CDD28(v7);
  }
}

uint64_t sub_1008F0F00()
{
  v2 = *v1;
  v2[38] = v0;

  if (v0)
  {
    v3 = v2[8];

    return _swift_task_switch(sub_1008F22F8, v3, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    v2[39] = v4;
    *v4 = v2;
    v4[1] = sub_1008F1254;

    return daemon.getter();
  }
}

uint64_t sub_1008F1074()
{

  if (qword_101694A60 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B5F0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to delete observations: %{public}@.", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = swift_task_alloc();
  *(v0 + 312) = v7;
  *v7 = v0;
  v7[1] = sub_1008F1254;

  return daemon.getter();
}

uint64_t sub_1008F1254(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[40] = a1;

  v4 = swift_task_alloc();
  v2[41] = v4;
  *v4 = v3;
  v4[1] = sub_1008F13E0;
  v5 = v2[34];
  v6 = v2[33];
  v7 = v2[32];
  v8 = v2[31];

  return ActorServiceDaemon.getService<A>()(v8, v7, v6, v5);
}

uint64_t sub_1008F13E0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[42] = a1;
  v3[43] = v1;

  if (v1)
  {
    v5 = v3[8];

    return _swift_task_switch(sub_1008F1698, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[44] = v6;
    *v6 = v4;
    v6[1] = sub_1008F1570;
    v7 = v3[7];

    return sub_1010CDED8(v7);
  }
}

uint64_t sub_1008F1570()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = sub_1008F24D8;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_1008F1CF4;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1008F1698()
{

  if (qword_101694A60 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B5F0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to mark observations published: %{public}@.", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = FMNServerInteractionController.FMNResponseFields.responseHeaders.getter();
  v8 = sub_1008F2B34(v7);

  if (v8[2] && (sub_100771D58(0xD000000000000014, 0x800000010135BB50), (v9 & 1) != 0))
  {
    v10 = v0[10];
    v11 = v0[11];
    v12 = v0[9];

    UUID.init(uuidString:)();

    if ((*(v11 + 48))(v12, 1, v10) == 1)
    {
      sub_10000B3A8(v0[9], &qword_1016980D0, &unk_10138F3B0);
    }

    else
    {
      v25 = v0[22];
      (*(v0[11] + 32))(v0[12], v0[9], v0[10]);
      if (sub_1008F2B34(v25)[2] && (sub_100771D58(0x2D656C7070612D78, 0xED0000316E676973), (v26 & 1) != 0))
      {

        v27 = Data.init(base64Encoded:options:)();
        v29 = v28;

        if (v29 >> 60 == 15)
        {
          (*(v0[11] + 8))(v0[12], v0[10]);
        }

        else
        {
          isa = Data._bridgeToObjectiveC()().super.isa;
          v34 = SecCertificateCreateWithData(0, isa);

          if (v34)
          {
            v35 = SecCertificateCopySubjectPublicKeyInfoSHA256Digest();
            if (v35)
            {
              v47 = v0[24];
              v48 = v0[14];
              v49 = v0[13];
              v50 = v0[16];
              v43 = v0[12];
              v44 = v0[11];
              v45 = v0[23];
              v46 = v0[10];
              v36 = v35;
              v37 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v39 = v38;

              v40 = objc_allocWithZone(SPPublishResult);
              v41 = UUID._bridgeToObjectiveC()().super.isa;
              v42 = Data._bridgeToObjectiveC()().super.isa;
              v22 = [v40 initWithRequestUUID:v41 aaaPubKeyHash:v42];
              sub_100006654(v27, v29);

              sub_100016590(v37, v39);

              sub_100016590(v45, v47);
              (*(v44 + 8))(v43, v46);
              (*(v48 + 8))(v50, v49);
              goto LABEL_17;
            }

            (*(v0[11] + 8))(v0[12], v0[10]);
          }

          else
          {
            (*(v0[11] + 8))(v0[12], v0[10]);
          }

          sub_100006654(v27, v29);
        }
      }

      else
      {
        v31 = v0[11];
        v30 = v0[12];
        v32 = v0[10];

        (*(v31 + 8))(v30, v32);
      }
    }
  }

  else
  {
  }

  if (qword_101694A60 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v1, qword_10177B5F0);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[24];
  v17 = v0[23];
  v18 = v0[16];
  v20 = v0[13];
  v19 = v0[14];
  if (v15)
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Failed to parse X-Apple-Sign1 header", v21, 2u);

    sub_100016590(v17, v16);
  }

  else
  {

    sub_100016590(v17, v16);
  }

  (*(v19 + 8))(v18, v20);
  v22 = 0;
LABEL_17:

  v23 = v0[1];

  return v23(v22);
}

uint64_t sub_1008F1CF4(uint64_t a1)
{
  v2 = FMNServerInteractionController.FMNResponseFields.responseHeaders.getter();
  v3 = sub_1008F2B34(v2);

  if (v3[2] && (sub_100771D58(0xD000000000000014, 0x800000010135BB50), (v4 & 1) != 0))
  {
    v5 = v1[10];
    v6 = v1[11];
    v7 = v1[9];

    UUID.init(uuidString:)();

    if ((*(v6 + 48))(v7, 1, v5) == 1)
    {
      sub_10000B3A8(v1[9], &qword_1016980D0, &unk_10138F3B0);
    }

    else
    {
      v21 = v1[22];
      (*(v1[11] + 32))(v1[12], v1[9], v1[10]);
      if (sub_1008F2B34(v21)[2] && (sub_100771D58(0x2D656C7070612D78, 0xED0000316E676973), (v22 & 1) != 0))
      {

        v23 = Data.init(base64Encoded:options:)();
        v25 = v24;

        if (v25 >> 60 == 15)
        {
          (*(v1[11] + 8))(v1[12], v1[10]);
        }

        else
        {
          isa = Data._bridgeToObjectiveC()().super.isa;
          v30 = SecCertificateCreateWithData(0, isa);

          if (v30)
          {
            v31 = SecCertificateCopySubjectPublicKeyInfoSHA256Digest();
            if (v31)
            {
              v43 = v1[24];
              v44 = v1[14];
              v45 = v1[13];
              v46 = v1[16];
              v39 = v1[12];
              v40 = v1[11];
              v41 = v1[23];
              v42 = v1[10];
              v32 = v31;
              v33 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v35 = v34;

              v36 = objc_allocWithZone(SPPublishResult);
              v37 = UUID._bridgeToObjectiveC()().super.isa;
              v38 = Data._bridgeToObjectiveC()().super.isa;
              v18 = [v36 initWithRequestUUID:v37 aaaPubKeyHash:v38];
              sub_100006654(v23, v25);

              sub_100016590(v33, v35);

              sub_100016590(v41, v43);
              (*(v40 + 8))(v39, v42);
              (*(v44 + 8))(v46, v45);
              goto LABEL_12;
            }

            (*(v1[11] + 8))(v1[12], v1[10]);
          }

          else
          {
            (*(v1[11] + 8))(v1[12], v1[10]);
          }

          sub_100006654(v23, v25);
        }
      }

      else
      {
        v27 = v1[11];
        v26 = v1[12];
        v28 = v1[10];

        (*(v27 + 8))(v26, v28);
      }
    }
  }

  else
  {
  }

  if (qword_101694A60 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177B5F0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v1[24];
  v13 = v1[23];
  v14 = v1[16];
  v16 = v1[13];
  v15 = v1[14];
  if (v11)
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Failed to parse X-Apple-Sign1 header", v17, 2u);

    sub_100016590(v13, v12);
  }

  else
  {

    sub_100016590(v13, v12);
  }

  (*(v15 + 8))(v14, v16);
  v18 = 0;
LABEL_12:

  v19 = v1[1];

  return v19(v18);
}

uint64_t sub_1008F2214()
{
  v1 = v0[24];
  v2 = v0[23];

  sub_100016590(v2, v1);

  sub_100007BAC(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1008F22F8()
{

  if (qword_101694A60 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B5F0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to delete observations: %{public}@.", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = swift_task_alloc();
  *(v0 + 312) = v7;
  *v7 = v0;
  v7[1] = sub_1008F1254;

  return daemon.getter();
}

uint64_t sub_1008F24D8()
{

  if (qword_101694A60 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B5F0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to mark observations published: %{public}@.", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = FMNServerInteractionController.FMNResponseFields.responseHeaders.getter();
  v8 = sub_1008F2B34(v7);

  if (v8[2] && (sub_100771D58(0xD000000000000014, 0x800000010135BB50), (v9 & 1) != 0))
  {
    v10 = v0[10];
    v11 = v0[11];
    v12 = v0[9];

    UUID.init(uuidString:)();

    if ((*(v11 + 48))(v12, 1, v10) == 1)
    {
      sub_10000B3A8(v0[9], &qword_1016980D0, &unk_10138F3B0);
    }

    else
    {
      v25 = v0[22];
      (*(v0[11] + 32))(v0[12], v0[9], v0[10]);
      if (sub_1008F2B34(v25)[2] && (sub_100771D58(0x2D656C7070612D78, 0xED0000316E676973), (v26 & 1) != 0))
      {

        v27 = Data.init(base64Encoded:options:)();
        v29 = v28;

        if (v29 >> 60 == 15)
        {
          (*(v0[11] + 8))(v0[12], v0[10]);
        }

        else
        {
          isa = Data._bridgeToObjectiveC()().super.isa;
          v34 = SecCertificateCreateWithData(0, isa);

          if (v34)
          {
            v35 = SecCertificateCopySubjectPublicKeyInfoSHA256Digest();
            if (v35)
            {
              v47 = v0[24];
              v48 = v0[14];
              v49 = v0[13];
              v50 = v0[16];
              v43 = v0[12];
              v44 = v0[11];
              v45 = v0[23];
              v46 = v0[10];
              v36 = v35;
              v37 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v39 = v38;

              v40 = objc_allocWithZone(SPPublishResult);
              v41 = UUID._bridgeToObjectiveC()().super.isa;
              v42 = Data._bridgeToObjectiveC()().super.isa;
              v22 = [v40 initWithRequestUUID:v41 aaaPubKeyHash:v42];
              sub_100006654(v27, v29);

              sub_100016590(v37, v39);

              sub_100016590(v45, v47);
              (*(v44 + 8))(v43, v46);
              (*(v48 + 8))(v50, v49);
              goto LABEL_17;
            }

            (*(v0[11] + 8))(v0[12], v0[10]);
          }

          else
          {
            (*(v0[11] + 8))(v0[12], v0[10]);
          }

          sub_100006654(v27, v29);
        }
      }

      else
      {
        v31 = v0[11];
        v30 = v0[12];
        v32 = v0[10];

        (*(v31 + 8))(v30, v32);
      }
    }
  }

  else
  {
  }

  if (qword_101694A60 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v1, qword_10177B5F0);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[24];
  v17 = v0[23];
  v18 = v0[16];
  v20 = v0[13];
  v19 = v0[14];
  if (v15)
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Failed to parse X-Apple-Sign1 header", v21, 2u);

    sub_100016590(v17, v16);
  }

  else
  {

    sub_100016590(v17, v16);
  }

  (*(v19 + 8))(v18, v20);
  v22 = 0;
LABEL_17:

  v23 = v0[1];

  return v23(v22);
}

void *sub_1008F2B34(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v27 = v1;
  while (v4)
  {
    v9 = v6;
LABEL_11:
    v10 = (*(a1 + 56) + ((v9 << 10) | (16 * __clz(__rbit64(v4)))));
    v11 = v10[1];
    v29 = *v10;
    v12 = String.lowercased()();
    swift_bridgeObjectRetain_n();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = sub_100771D58(v12._countAndFlagsBits, v12._object);
    v16 = _swiftEmptyDictionarySingleton[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      goto LABEL_22;
    }

    v20 = v15;
    if (_swiftEmptyDictionarySingleton[3] >= v19)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = v14;
        sub_1010056F4();
        v14 = v25;
      }
    }

    else
    {
      sub_100FE6F1C(v19, isUniquelyReferenced_nonNull_native);
      v14 = sub_100771D58(v12._countAndFlagsBits, v12._object);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_24;
      }
    }

    v4 &= v4 - 1;
    if (v20)
    {
      v7 = v14;

      v8 = (_swiftEmptyDictionarySingleton[7] + 16 * v7);
      *v8 = v29;
      v8[1] = v11;
    }

    else
    {
      _swiftEmptyDictionarySingleton[(v14 >> 6) + 8] |= 1 << v14;
      *(_swiftEmptyDictionarySingleton[6] + 16 * v14) = v12;
      v22 = (_swiftEmptyDictionarySingleton[7] + 16 * v14);
      *v22 = v29;
      v22[1] = v11;

      v23 = _swiftEmptyDictionarySingleton[2];
      v18 = __OFADD__(v23, 1);
      v24 = v23 + 1;
      if (v18)
      {
        goto LABEL_23;
      }

      _swiftEmptyDictionarySingleton[2] = v24;
    }

    v6 = v9;
    v1 = v27;
  }

  while (1)
  {
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return _swiftEmptyDictionarySingleton;
    }

    v4 = *(v1 + 8 * v9);
    ++v6;
    if (v4)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1008F2DA0()
{
  v1[5] = v0;
  sub_1000BC4D4(&qword_1016AA430, &unk_101392650);
  v1[6] = swift_task_alloc();
  v2 = type metadata accessor for ObservedAdvertisement(0);
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_1008F2EA4, v0, 0);
}

uint64_t sub_1008F2EA4()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  *(v0 + 88) = qword_10177B348;

  return _swift_task_switch(sub_1008F2F40, 0, 0);
}

uint64_t sub_1008F2F40()
{

  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1008F3004;
  v2 = *(v0 + 88);

  return unsafeBlocking<A>(_:)(v0 + 32, sub_1000D2BE0, v2, &type metadata for Configuration);
}

uint64_t sub_1008F3004()
{

  return _swift_task_switch(sub_1008F311C, 0, 0);
}

uint64_t sub_1008F311C()
{
  v1 = v0[5];
  v0[13] = v0[4];
  return _swift_task_switch(sub_1008F313C, v1, 0);
}

uint64_t sub_1008F313C()
{
  v0[14] = sub_101073C2C(v0[13]);

  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_1008F31E4;

  return daemon.getter();
}

uint64_t sub_1008F31E4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[16] = a1;

  v3 = swift_task_alloc();
  v2[17] = v3;
  v4 = type metadata accessor for Daemon();
  v2[18] = v4;
  v5 = type metadata accessor for ObservationStoreService();
  v2[19] = v5;
  v6 = sub_1008F6EA8(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[20] = v6;
  v7 = sub_1008F6EA8(&qword_1016AA450, 255, type metadata accessor for ObservationStoreService, &unk_101404B80);
  v2[21] = v7;
  *v3 = v9;
  v3[1] = sub_1008F33E0;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1008F33E0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[22] = a1;
  v3[23] = v1;

  if (v1)
  {
    v5 = v3[5];

    return _swift_task_switch(sub_1008F3698, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[24] = v6;
    *v6 = v4;
    v6[1] = sub_1008F3570;
    v7 = v3[14];

    return sub_1010CED94(v7);
  }
}

uint64_t sub_1008F3570(uint64_t a1)
{
  v3 = *v2;
  v3[25] = a1;
  v3[26] = v1;

  if (v1)
  {
    v4 = v3[5];
    v5 = sub_1008F402C;
  }

  else
  {
    v6 = v3[5];

    v5 = sub_1008F3720;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1008F3698()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008F3720()
{
  v2 = *(v0 + 112);
  v3 = *(*(v0 + 200) + 16);
  v4 = __OFSUB__(v2, v3);
  v5 = v2 - v3;
  v6 = v4;
  *(v0 + 16) = v5;
  *(v0 + 24) = v6;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v7 = swift_task_alloc();
    *(v0 + 216) = v7;
    *v7 = v0;
    v7[1] = sub_1008F37D4;
  }

  return daemon.getter();
}

uint64_t sub_1008F37D4(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[28] = a1;

  v4 = swift_task_alloc();
  v2[29] = v4;
  *v4 = v3;
  v4[1] = sub_1008F3960;
  v5 = v2[21];
  v6 = v2[20];
  v7 = v2[19];
  v8 = v2[18];

  return ActorServiceDaemon.getService<A>()(v8, v7, v6, v5);
}

uint64_t sub_1008F3960(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 240) = a1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v3 + 16);

    v8 = swift_task_alloc();
    *(v3 + 248) = v8;
    *v8 = v4;
    v8[1] = sub_1008F3B20;

    return sub_1010CF0A8(v7 & ~(v7 >> 63), 0);
  }
}

uint64_t sub_1008F3B20(uint64_t a1)
{
  v3 = *v2;
  v3[32] = a1;
  v3[33] = v1;

  if (v1)
  {
    v4 = v3[5];
    v5 = sub_1008F40B4;
  }

  else
  {
    v6 = v3[5];

    v5 = sub_1008F3C48;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1008F3C48()
{
  v30 = v0[25];

  sub_100398430(v1);
  v2 = v30;
  v3 = *(v30 + 16);
  v29 = v0;
  if (v3)
  {
    v4 = 0;
    v27 = v0[8];
    v28 = v0[7];
    v26 = *(v30 + 16);
    while (v4 < *(v2 + 16))
    {
      v5 = v0[10];
      v6 = v0[6];
      v7 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      v8 = *(v27 + 72);
      sub_10001BB38(v2 + v7 + v8 * v4, v5, type metadata accessor for ObservedAdvertisement);
      sub_1000D2A70(v5 + *(v28 + 48), v6, &qword_1016AA430, &unk_101392650);
      v9 = type metadata accessor for ObservedAdvertisement.Location(0);
      LODWORD(v5) = (*(*(v9 - 8) + 48))(v6, 1, v9);
      v0 = v29;
      sub_10000B3A8(v6, &qword_1016AA430, &unk_101392650);
      v10 = v29[10];
      if (v5 == 1)
      {
        sub_1000344F4(v10, type metadata accessor for ObservedAdvertisement);
      }

      else
      {
        sub_1008F6B2C(v10, v29[9]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1011245F0(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v12 = _swiftEmptyArrayStorage[2];
        v11 = _swiftEmptyArrayStorage[3];
        if (v12 >= v11 >> 1)
        {
          sub_1011245F0((v11 > 1), v12 + 1, 1);
        }

        v13 = v29[9];
        _swiftEmptyArrayStorage[2] = v12 + 1;
        sub_1008F6B2C(v13, _swiftEmptyArrayStorage + v7 + v12 * v8);
        v3 = v26;
      }

      ++v4;
      v2 = v30;
      if (v3 == v4)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    if (qword_101694A60 == -1)
    {
      goto LABEL_13;
    }
  }

  swift_once();
LABEL_13:
  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177B5F0);
  swift_retain_n();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v18 = v0[32];
  v19 = v0[25];
  if (v17)
  {
    v20 = swift_slowAlloc();
    *v20 = 134218496;
    v21 = *(v18 + 16);

    *(v20 + 4) = v21;

    *(v20 + 12) = 2048;
    v22 = *(v19 + 16);

    *(v20 + 14) = v22;

    *(v20 + 22) = 2048;
    v23 = _swiftEmptyArrayStorage[2];

    *(v20 + 24) = v23;

    _os_log_impl(&_mh_execute_header, v15, v16, "Reconciled = %ld, Anonymous = %ld, with location: %ld.", v20, 0x20u);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v24 = v29[1];

  return v24(_swiftEmptyArrayStorage);
}

uint64_t sub_1008F402C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008F40B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008F4168()
{
  if (qword_101694A60 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 32) = sub_1000076D4(v1, qword_10177B5F0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Purge observations start.", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_1008F42B8;

  return daemon.getter();
}

uint64_t sub_1008F42B8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 48) = a1;

  v3 = swift_task_alloc();
  *(v2 + 56) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_1008F6EA8(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1008F6EA8(&qword_1016AA450, 255, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_1008F449C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1008F449C(uint64_t a1)
{
  v3 = *v2;
  v3[8] = a1;
  v3[9] = v1;

  if (v1)
  {
    v4 = v3[3];
    v5 = sub_1008F4BFC;
  }

  else
  {
    v6 = v3[3];

    v5 = sub_1008F45C4;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1008F45C4()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[9];
  OS_dispatch_queue.sync<A>(execute:)();
  v0[10] = v2;
  v0[11] = sub_1010749D4(v0[2]);

  return _swift_task_switch(sub_1008F46AC, v1, 0);
}

uint64_t sub_1008F46AC()
{
  v1 = v0[10];
  sub_1010D1AD8(v0[11]);
  v0[12] = v1;
  if (v1)
  {
    v2 = v0[3];

    return _swift_task_switch(sub_1008F4C60, v2, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = sub_1008F47A4;

    return sub_1010CE4F4();
  }
}

uint64_t sub_1008F47A4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 112) = a1;
  *(v4 + 120) = v1;

  v5 = *(v3 + 24);
  if (v1)
  {
    v6 = sub_1008F4CC4;
  }

  else
  {
    v6 = sub_1008F48D8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1008F48D8(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 112);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Deleted %lld redundant reconciled observations.", v5, 0xCu);
  }

  v6 = swift_task_alloc();
  *(v1 + 128) = v6;
  *v6 = v1;
  v6[1] = sub_1008F49F0;

  return sub_1010CCED0();
}

uint64_t sub_1008F49F0()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_1008F4D28;
  }

  else
  {
    v4 = sub_1008F4B1C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1008F4B1C(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Purge observations finished.", v4, 2u);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_1008F4BFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008F4C60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008F4CC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008F4D28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008F4D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for UUID();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = *(type metadata accessor for ObservedAdvertisement(0) - 8);
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_1008F4EA8, v3, 0);
}

uint64_t sub_1008F4EA8()
{

  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_1008F4F5C;
  v3 = v0[2];
  v2 = v0[3];

  return sub_10117B344(v3, v2);
}

uint64_t sub_1008F4F5C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
  }

  v2[12] = type metadata accessor for AnalyticsPublisher();
  v2[13] = swift_allocObject();
  swift_defaultActor_initialize();
  v4 = swift_task_alloc();
  v2[14] = v4;
  *v4 = v3;
  v4[1] = sub_1008F50E0;
  v5 = v2[2];

  return sub_101163F78(v5);
}

uint64_t sub_1008F50E0()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_1008F520C, v1, 0);
}

uint64_t sub_1008F520C()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  *(v0 + 120) = v2;
  if (v2)
  {
    v3 = *(v0 + 32);
    v4 = *(v0 + 16);
    v5 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_identifier;
    *(v0 + 128) = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_identifier;
    v7 = *(v0 + 64);
    v6 = *(v0 + 72);
    v8 = *(v6 + 80);
    *(v0 + 192) = v8;
    *(v0 + 136) = *(v6 + 72);
    *(v0 + 144) = 0;
    v9 = *(v0 + 80);
    v10 = *(v0 + 48);
    v11 = *(v0 + 56);
    sub_10001BB38(v1 + ((v8 + 32) & ~v8), v9, type metadata accessor for ObservedAdvertisement);
    (*(v11 + 16))(v7, v4 + v5, v10);
    type metadata accessor for AnalyticsEvent(0);
    v12 = swift_allocObject();
    *(v0 + 152) = v12;
    swift_defaultActor_initialize();
    *(v12 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
    UUID.init()();
    v13 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
    v14 = type metadata accessor for DispatchTime();
    v15 = *(*(v14 - 8) + 56);
    v15(&v12[v13], 1, 1, v14);
    v15(&v12[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v14);
    *(v12 + 15) = 0xD000000000000038;
    *(v12 + 16) = 0x8000000101364550;
    v16 = swift_task_alloc();
    *(v0 + 160) = v16;
    *(v16 + 16) = v9;
    *(v16 + 24) = v7;
    *(v16 + 32) = v3 == 0;
    *(v16 + 40) = v3;
    v17 = swift_task_alloc();
    *(v0 + 168) = v17;
    *v17 = v0;
    v17[1] = sub_1008F54B0;

    return sub_101162604(&unk_1013C4E88, v16);
  }

  else
  {

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_1008F54B0()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
  }

  v2[22] = swift_allocObject();
  swift_defaultActor_initialize();
  v4 = swift_task_alloc();
  v2[23] = v4;
  *v4 = v3;
  v4[1] = sub_1008F5614;
  v5 = v2[19];

  return sub_101163F78(v5);
}

uint64_t sub_1008F5614()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_1008F5740, v1, 0);
}

uint64_t sub_1008F5740()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  v3 = *(v0 + 80);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);

  (*(v5 + 8))(v4, v6);
  sub_1000344F4(v3, type metadata accessor for ObservedAdvertisement);
  if (v1 + 1 == v2)
  {

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 136);
    v10 = *(v0 + 144) + 1;
    *(v0 + 144) = v10;
    v11 = *(v0 + 128);
    v12 = *(v0 + 80);
    v14 = *(v0 + 56);
    v13 = *(v0 + 64);
    v15 = *(v0 + 48);
    v16 = *(v0 + 32);
    v17 = *(v0 + 16);
    sub_10001BB38(*(v0 + 24) + ((*(v0 + 192) + 32) & ~*(v0 + 192)) + v9 * v10, v12, type metadata accessor for ObservedAdvertisement);
    (*(v14 + 16))(v13, v17 + v11, v15);
    type metadata accessor for AnalyticsEvent(0);
    v18 = swift_allocObject();
    *(v0 + 152) = v18;
    swift_defaultActor_initialize();
    *(v18 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
    UUID.init()();
    v19 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
    v20 = type metadata accessor for DispatchTime();
    v21 = *(*(v20 - 8) + 56);
    v21(&v18[v19], 1, 1, v20);
    v21(&v18[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v20);
    *(v18 + 15) = 0xD000000000000038;
    *(v18 + 16) = 0x8000000101364550;
    v22 = swift_task_alloc();
    *(v0 + 160) = v22;
    *(v22 + 16) = v12;
    *(v22 + 24) = v13;
    *(v22 + 32) = v16 == 0;
    *(v22 + 40) = v16;
    v23 = swift_task_alloc();
    *(v0 + 168) = v23;
    *v23 = v0;
    v23[1] = sub_1008F54B0;

    return sub_101162604(&unk_1013C4E88, v22);
  }
}

uint64_t sub_1008F5A48()
{
  v1 = *(*(v0 + 176) + 16);
  v2 = sub_10117B278(v1);
  sub_1000BC4D4(&qword_101696C90, &qword_10138B5D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138BBE0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x800000010134AD70;
  *(inited + 72) = &type metadata for Int;
  v4 = sub_1000DFAD8();
  *(inited + 80) = v4;
  *(inited + 48) = v1;
  *(inited + 88) = 2;
  *(inited + 96) = 0xD000000000000015;
  *(inited + 104) = 0x80000001013648A0;
  *(inited + 136) = &type metadata for Int;
  *(inited + 144) = v4;
  *(inited + 112) = v2;
  *(inited + 152) = 2;
  v5 = sub_100907D24(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101696CA0, &qword_10138B5D8);
  swift_arrayDestroy();
  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_1008F5B98(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 640) = a4;
  *(v4 + 696) = a3;
  *(v4 + 632) = a2;
  *(v4 + 624) = a1;
  sub_1000BC4D4(&qword_1016AA430, &unk_101392650);
  *(v4 + 648) = swift_task_alloc();
  sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  *(v4 + 656) = swift_task_alloc();
  v5 = type metadata accessor for Date();
  *(v4 + 664) = v5;
  *(v4 + 672) = *(v5 - 8);
  *(v4 + 680) = swift_task_alloc();
  *(v4 + 688) = swift_task_alloc();

  return _swift_task_switch(sub_1008F5CE0, 0, 0);
}

uint64_t sub_1008F5CE0()
{
  v46 = v0;
  v1 = *(v0 + 648);
  v2 = *(v0 + 624);
  v3 = type metadata accessor for ObservedAdvertisement(0);
  sub_1000D2A70(v2 + *(v3 + 48), v1, &qword_1016AA430, &unk_101392650);
  v4 = type metadata accessor for ObservedAdvertisement.Location(0);
  v5 = (*(*(v4 - 8) + 48))(v1, 1, v4);
  v6 = *(v0 + 688);
  v7 = *(v0 + 672);
  v8 = *(v0 + 664);
  v9 = *(v0 + 656);
  v10 = *(v0 + 648);
  if (v5 == 1)
  {
    sub_10000B3A8(v10, &qword_1016AA430, &unk_101392650);
    (*(v7 + 56))(v9, 1, 1, v8);
    static Date.distantPast.getter();
    if ((*(v7 + 48))(v9, 1, v8) != 1)
    {
      sub_10000B3A8(*(v0 + 656), &unk_101696900, &unk_10138B1E0);
    }
  }

  else
  {
    v11 = v10 + *(v4 + 28);
    v12 = *(v0 + 648);
    (*(v7 + 16))(*(v0 + 656), v11, *(v0 + 664));
    sub_1000344F4(v12, type metadata accessor for ObservedAdvertisement.Location);
    (*(v7 + 56))(v9, 0, 1, v8);
    (*(v7 + 32))(v6, v9, v8);
  }

  v13 = *(v0 + 680);
  v14 = *(v0 + 672);
  v15 = *(v0 + 664);
  v39 = *(v0 + 640);
  v38 = *(v0 + 696);
  v16 = *(v0 + 624);
  Date.timeIntervalSince(_:)();
  v18 = v17;
  static Date.trustedNow.getter(v13);
  Date.timeIntervalSince(_:)();
  v20 = v19;
  v40 = *(v14 + 8);
  v40(v13, v15);
  sub_1000BC4D4(&qword_101696C90, &qword_10138B5D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1013B62D0;
  *(inited + 32) = 0x496E6F6973736573;
  *(inited + 40) = 0xE900000000000044;
  v22 = UUID.uuidString.getter();
  v24 = v23;
  *(inited + 72) = &type metadata for String;
  v25 = sub_1000DF96C();
  *(inited + 80) = v25;
  *(inited + 48) = v22;
  *(inited + 56) = v24;
  *(inited + 88) = 1;
  *(inited + 96) = 0xD000000000000016;
  *(inited + 104) = 0x8000000101364590;
  *(inited + 136) = &type metadata for Double;
  v26 = sub_1000DFA84();
  *(inited + 144) = v26;
  *(inited + 112) = v18;
  *(inited + 152) = 3;
  *(inited + 160) = 0xD000000000000015;
  *(inited + 168) = 0x80000001013645B0;
  *(inited + 200) = &type metadata for Double;
  *(inited + 208) = v26;
  *(inited + 176) = v20;
  *(inited + 216) = 3;
  *(inited + 224) = 0x7942737574617473;
  *(inited + 232) = 0xEA00000000006574;
  LOBYTE(v24) = *(v16 + 32);
  *(inited + 264) = &type metadata for UInt8;
  *(inited + 272) = sub_1002E2724();
  *(inited + 240) = v24;
  *(inited + 280) = 2;
  *(inited + 288) = 0xD000000000000015;
  *(inited + 296) = 0x80000001013559E0;
  *(inited + 328) = &type metadata for Int;
  v27 = sub_1000DFAD8();
  *(inited + 336) = v27;
  *(inited + 304) = 0;
  *(inited + 344) = 2;
  *(inited + 352) = 0x7265747461426E6FLL;
  *(inited + 360) = 0xE900000000000079;
  sub_1011298C8(&off_10160CE28);
  sub_1008ECAD0();
  v28 = sub_10112C0E0();

  *(inited + 368) = v28 & 1;
  *(inited + 408) = 0;
  *(inited + 416) = 0x696669576E6FLL;
  *(inited + 424) = 0xE600000000000000;
  *(inited + 432) = sub_1000DD810() & 1;
  *(inited + 472) = 0;
  *(inited + 480) = 0x6563637553646964;
  *(inited + 488) = 0xEA00000000006465;
  *(inited + 496) = v38;
  *(inited + 536) = 0;
  v29 = sub_100907D24(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101696CA0, &qword_10138B5D8);
  swift_arrayDestroy();
  v30 = *(v0 + 688);
  v31 = *(v0 + 664);
  if (v39)
  {
    swift_getErrorValue();
    swift_errorRetain();
    *&v41 = Error.domain.getter();
    *(&v41 + 1) = v32;
    v42 = &type metadata for String;
    v43 = v25;
    v44 = 1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v29;
    sub_100FFC070(&v41, 0x6D6F44726F727265, 0xEB000000006E6961, isUniquelyReferenced_nonNull_native);
    v34 = v45;
    swift_getErrorValue();
    *&v41 = Error.code.getter();
    v42 = &type metadata for Int;
    v43 = v27;
    v44 = 2;
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v45 = v34;
    sub_100FFC070(&v41, 0x646F43726F727265, 0xE900000000000065, v35);

    v40(v30, v31);
    v29 = v45;
  }

  else
  {
    v40(v30, v31);
  }

  v36 = *(v0 + 8);

  return v36(v29);
}

uint64_t sub_1008F6300()
{

  sub_100007BAC((v0 + 144));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1008F6374(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  MyNetworkPublisherService = type metadata accessor for FindMyNetworkPublisherService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(MyNetworkPublisherService, a2);
}

uint64_t sub_1008F641C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  MyNetworkPublisherService = type metadata accessor for FindMyNetworkPublisherService();
  *v8 = v4;
  v8[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, MyNetworkPublisherService, a4);
}

uint64_t sub_1008F64E0(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  MyNetworkPublisherService = type metadata accessor for FindMyNetworkPublisherService();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(MyNetworkPublisherService, a2);
}

uint64_t sub_1008F6588(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  MyNetworkPublisherService = type metadata accessor for FindMyNetworkPublisherService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.startup()(MyNetworkPublisherService, a2);
}

uint64_t sub_1008F6630(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  MyNetworkPublisherService = type metadata accessor for FindMyNetworkPublisherService();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.run()(MyNetworkPublisherService, a2);
}

uint64_t sub_1008F66D8()
{
  type metadata accessor for FindMyNetworkPublisherService();
  sub_1008F6EA8(&unk_10169BA60, v0, type metadata accessor for FindMyNetworkPublisherService, &unk_1013C4DF8);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_1008F67D0()
{
  if (qword_101694A60 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000076D4(v0, qword_10177B5F0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Publish in progress, throttled for delay.", v3, 2u);
  }

  sub_1008F6BE4();
  swift_allocError();
  *v4 = 1;
  return swift_willThrow();
}

uint64_t sub_1008F68DC(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = [objc_opt_self() standardUserDefaults];
  sub_1000D2A70(a1, v4, &unk_101696900, &unk_10138B1E0);
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

uint64_t sub_1008F6A7C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1001BBA4C;

  return sub_1008F5B98(v2, v3, v4, v5);
}

uint64_t sub_1008F6B2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ObservedAdvertisement(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1008F6B90()
{
  result = qword_1016ADB20;
  if (!qword_1016ADB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ADB20);
  }

  return result;
}

unint64_t sub_1008F6BE4()
{
  result = qword_1016ADB28;
  if (!qword_1016ADB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ADB28);
  }

  return result;
}

uint64_t sub_1008F6C44(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000BC4D4(&qword_1016ADB38, &unk_1013C4EA8) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100014744;

  return sub_1008EE580(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_1008F6D88()
{
  v2 = *(sub_1000BC4D4(&qword_1016ADB38, &unk_1013C4EA8) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1001BA6C8;

  return sub_1008EEB28(v4, v5, v0 + v3);
}

uint64_t sub_1008F6EA8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1008F6EF0()
{
  v2 = *(type metadata accessor for Date() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = (*(v2 + 64) + v3 + v4) & ~v3;
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100014650;

  return sub_1008ED7E8(v6, v7, v0 + v4, v0 + v5);
}

unint64_t sub_1008F7018()
{
  result = qword_1016ADB48;
  if (!qword_1016ADB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ADB48);
  }

  return result;
}

uint64_t sub_1008F706C()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v2, qword_10177B608);
  sub_1000076D4(v0, qword_10177B608);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v5 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v4, v5, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1008F71C8()
{
  v0 = type metadata accessor for UUID();
  sub_100044B3C(v0, qword_10177B620);
  sub_1000076D4(v0, qword_10177B620);
  return UUID.init(uuid:)();
}

uint64_t sub_1008F7250(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x546E6F6973736573;
  v4 = 0xEC0000006E656B6FLL;
  if (v2 != 1)
  {
    v3 = 0x6E6F697461657263;
    v4 = 0xEC00000065746144;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x696669746E656469;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEA00000000007265;
  }

  v7 = 0x546E6F6973736573;
  v8 = 0xEC0000006E656B6FLL;
  if (*a2 != 1)
  {
    v7 = 0x6E6F697461657263;
    v8 = 0xEC00000065746144;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x696669746E656469;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEA00000000007265;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1008F7374()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1008F742C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1008F74D0(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1008F7584@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1008F8220(*a1);
  *a2 = result;
  return result;
}

void sub_1008F75B4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007265;
  v4 = 0xEC0000006E656B6FLL;
  v5 = 0x546E6F6973736573;
  if (v2 != 1)
  {
    v5 = 0x6E6F697461657263;
    v4 = 0xEC00000065746144;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x696669746E656469;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1008F7628()
{
  v1 = 0x546E6F6973736573;
  if (*v0 != 1)
  {
    v1 = 0x6E6F697461657263;
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

unint64_t sub_1008F7698@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1008F8220(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1008F76C0(uint64_t a1)
{
  v2 = sub_1008F7FAC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008F76FC(uint64_t a1)
{
  v2 = sub_1008F7FAC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1008F7738(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016ADBF8, &qword_1013C5040);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000035D0(a1, a1[3]);
  sub_1008F7FAC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for UUID();
  sub_1008F8000(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for SessionTokenRecord(0);
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[13] = 2;
    type metadata accessor for Date();
    sub_1008F8000(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1008F796C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v25 = type metadata accessor for Date();
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for UUID();
  v27 = *(v30 - 8);
  __chkstk_darwin(v30);
  v28 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1000BC4D4(&qword_1016ADC08, &qword_1013C5048);
  v26 = *(v29 - 8);
  __chkstk_darwin(v29);
  v8 = &v21 - v7;
  v9 = type metadata accessor for SessionTokenRecord(0);
  __chkstk_darwin(v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_1008F7FAC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v22 = v11;
  v13 = v26;
  v12 = v27;
  v33 = 0;
  sub_1008F8000(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v12 + 32))(v22, v28, v30);
  v32 = 1;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v28 = v9;
  v15 = &v22[*(v9 + 20)];
  *v15 = v14;
  v15[1] = v16;
  v31 = 2;
  sub_1008F8000(&qword_101697F40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v17 = v5;
  v18 = v25;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 8))(v8, v29);
  v19 = v22;
  (*(v23 + 32))(&v22[*(v28 + 6)], v17, v18);
  sub_1008F8048(v19, v24);
  sub_100007BAC(a1);
  return sub_1008F80AC(v19);
}

uint64_t type metadata accessor for SessionTokenRecord(uint64_t a1)
{
  result = qword_1016ADBA8;
  if (!qword_1016ADBA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1008F7E9C(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1008F7F28(uint64_t a1)
{
  *(a1 + 8) = sub_1008F8000(&qword_1016ADBE8, type metadata accessor for SessionTokenRecord, &unk_1013C4FD0);
  result = sub_1008F8000(&qword_1016ADBF0, type metadata accessor for SessionTokenRecord, &unk_1013C4FF8);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1008F7FAC()
{
  result = qword_1016ADC00;
  if (!qword_1016ADC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ADC00);
  }

  return result;
}

uint64_t sub_1008F8000(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1008F8048(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionTokenRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008F80AC(uint64_t a1)
{
  v2 = type metadata accessor for SessionTokenRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1008F811C()
{
  result = qword_1016ADC10;
  if (!qword_1016ADC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ADC10);
  }

  return result;
}

unint64_t sub_1008F8174()
{
  result = qword_1016ADC18;
  if (!qword_1016ADC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ADC18);
  }

  return result;
}

unint64_t sub_1008F81CC()
{
  result = qword_1016ADC20;
  if (!qword_1016ADC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ADC20);
  }

  return result;
}

unint64_t sub_1008F8220(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10160AEF0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

double sub_1008F826C@<D0>(uint64_t a1@<X8>)
{
  if (qword_101694A78 != -1)
  {
    swift_once();
  }

  v2 = qword_10177B640;
  v3 = *algn_10177B648;
  *a1 = qword_10177B640;
  *(a1 + 8) = v3;
  *(a1 + 16) = 3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0x408C200000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0x406E000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = &off_1016072E0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0xD000000000000012;
  *(a1 + 88) = 0x8000000101351C20;
  *(a1 + 96) = 1;
  *(a1 + 104) = 0;
  *(a1 + 105) = 256;
  *(a1 + 112) = 60;
  *(a1 + 120) = 0;
  *(a1 + 128) = 15;
  *(a1 + 136) = 0;
  *(a1 + 144) = 1440;
  *(a1 + 152) = 0;
  *(a1 + 160) = 200;
  *(a1 + 168) = 0;
  *(a1 + 176) = 3;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0x4000000000000000;
  *(a1 + 200) = 0;
  *(a1 + 208) = 60;
  *(a1 + 216) = 0;
  *(a1 + 224) = 60;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0x40F5180000000000;
  *(a1 + 248) = 0;
  *(a1 + 256) = 5;
  *(a1 + 264) = 0;
  *(a1 + 272) = 604800;
  *(a1 + 280) = 0;
  *(a1 + 288) = 43200;
  *(a1 + 296) = 0;
  *(a1 + 304) = 24;
  *(a1 + 312) = 0;
  *(a1 + 313) = 1;
  sub_100017D5C(v2, v3);
  if (qword_101694A80 != -1)
  {
    swift_once();
  }

  *(a1 + 320) = qword_10177B650;
  *(a1 + 328) = 4;
  *(a1 + 336) = 0;
  *(a1 + 344) = 24;
  *(a1 + 352) = 0;
  *(a1 + 360) = 1440;
  *(a1 + 368) = 0;
  *(a1 + 376) = 1200;
  *(a1 + 384) = 0;
  *(a1 + 392) = 600;
  *(a1 + 400) = 0;
  *(a1 + 408) = 8640;
  *(a1 + 416) = 0;
  *(a1 + 424) = 8640;
  *(a1 + 432) = 0;
  *(a1 + 440) = 2880;
  *(a1 + 448) = 0;
  *(a1 + 456) = 10080;
  *(a1 + 464) = 0;
  *(a1 + 472) = 2880;
  *(a1 + 480) = 0;
  *(a1 + 481) = 1;
  *(a1 + 488) = 5;
  *(a1 + 496) = 0;
  *(a1 + 504) = 3;
  *(a1 + 512) = 0;
  *(a1 + 520) = 10;
  *(a1 + 528) = 0;
  *(a1 + 536) = 1200;
  *(a1 + 544) = 0;
  *(a1 + 552) = 10080;
  *(a1 + 560) = 0;
  *(a1 + 568) = 600;
  *(a1 + 576) = 0;
  *(a1 + 584) = 1440;
  *(a1 + 592) = 0;

  *(a1 + 600) = sub_10090C0AC();
  *(a1 + 608) = 0x403E000000000000;
  *(a1 + 616) = 0;
  *(a1 + 624) = 0x408C200000000000;
  *(a1 + 632) = 0;
  if (qword_101694A88 != -1)
  {
    swift_once();
  }

  v4 = qword_10177B658;
  *(a1 + 640) = qword_10177B658;
  v5 = qword_101694A90;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  *(a1 + 648) = qword_10177B660;
  *(a1 + 672) = 7;
  *(a1 + 680) = 0;
  *(a1 + 656) = 20;
  *(a1 + 664) = 0;
  *(a1 + 688) = 300;
  *(a1 + 696) = 0;
  *(a1 + 704) = 60;
  *(a1 + 712) = 0;
  *(a1 + 720) = 1440;
  *(a1 + 728) = 0;
  *(a1 + 729) = 1;
  v7 = qword_101694A98;

  if (v7 != -1)
  {
    swift_once();
  }

  v116[4] = xmmword_10177B6B0;
  v116[5] = unk_10177B6C0;
  v116[6] = xmmword_10177B6D0;
  v116[0] = xmmword_10177B670;
  v116[1] = unk_10177B680;
  v116[2] = xmmword_10177B690;
  v116[3] = *&qword_10177B6A0;
  v8 = type metadata accessor for DefaultConfigurationLayer(0);
  v9 = (a1 + v8[70]);
  v10 = unk_10177B6C0;
  v9[4] = xmmword_10177B6B0;
  v9[5] = v10;
  v9[6] = xmmword_10177B6D0;
  v11 = unk_10177B680;
  *v9 = xmmword_10177B670;
  v9[1] = v11;
  v12 = *&qword_10177B6A0;
  v9[2] = xmmword_10177B690;
  v9[3] = v12;
  v13 = v8[60];
  v14 = type metadata accessor for UUID();
  (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  v15 = v8[61];
  v16 = type metadata accessor for Date();
  v17 = *(*(v16 - 8) + 56);
  v17(a1 + v15, 1, 1, v16);
  v18 = a1 + v8[62];
  *v18 = 0;
  *(v18 + 8) = 1;
  v17(a1 + v8[63], 1, 1, v16);
  v19 = a1 + v8[64];
  *v19 = 48;
  *(v19 + 8) = 0;
  v20 = a1 + v8[65];
  *v20 = 48;
  *(v20 + 8) = 0;
  v21 = a1 + v8[66];
  *v21 = 0x4010000000000000;
  *(v21 + 8) = 0;
  v22 = a1 + v8[67];
  *v22 = 0x4004CCCCCCCCCCCDLL;
  *(v22 + 8) = 0;
  strcpy((a1 + v8[68]), "333333\a@");
  v23 = a1 + v8[69];
  *v23 = 0x3FF999999999999ALL;
  *(v23 + 8) = 0;
  *(a1 + v8[71]) = 1;
  *(a1 + v8[72]) = 1;
  *(a1 + v8[73]) = 0;
  v24 = a1 + v8[74];
  *v24 = 0x4092C00000000000;
  *(v24 + 8) = 0;
  v25 = a1 + v8[75];
  *v25 = 0x4082C00000000000;
  *(v25 + 8) = 0;
  v26 = a1 + v8[76];
  *v26 = 0x4092C00000000000;
  *(v26 + 8) = 0;
  v27 = a1 + v8[77];
  *v27 = 0x4082C00000000000;
  *(v27 + 8) = 0;
  v28 = a1 + v8[78];
  *v28 = 0x40B0E00000000000;
  *(v28 + 8) = 0;
  v29 = a1 + v8[79];
  *v29 = 0x4150266000000000;
  *(v29 + 8) = 0;
  v30 = a1 + v8[80];
  *v30 = 0x4122750000000000;
  *(v30 + 8) = 0;
  v31 = a1 + v8[81];
  *v31 = 0x40AC200000000000;
  *(v31 + 8) = 0;
  v32 = a1 + v8[82];
  *v32 = 60;
  *(v32 + 8) = 0;
  v33 = (a1 + v8[83]);
  *v33 = 0xD000000000000010;
  v33[1] = 0x80000001013649F0;
  v34 = a1 + v8[84];
  *v34 = 43200;
  *(v34 + 8) = 0;
  v35 = (a1 + v8[85]);
  *v35 = 0xD000000000000019;
  v35[1] = 0x8000000101364A10;
  v36 = a1 + v8[86];
  *v36 = 43200;
  *(v36 + 8) = 0;
  sub_1003914C0(v116, &v115);
  if (qword_101694AA0 != -1)
  {
    swift_once();
  }

  *(a1 + v8[87]) = qword_10177B6E0;
  v37 = (a1 + v8[88]);
  *v37 = 0xD000000000000018;
  v37[1] = 0x8000000101364A30;
  v38 = a1 + v8[89];
  *v38 = 0x404E000000000000;
  *(v38 + 8) = 0;
  *(a1 + v8[90]) = 1;
  *(a1 + v8[91]) = 1;
  *(a1 + v8[92]) = 1;
  *(a1 + v8[93]) = 1;
  v39 = a1 + v8[94];
  *v39 = 150;
  *(v39 + 8) = 0;
  v40 = a1 + v8[95];
  *v40 = 15;
  *(v40 + 8) = 0;
  v41 = a1 + v8[96];
  *v41 = 5;
  *(v41 + 8) = 0;
  v42 = a1 + v8[97];
  *v42 = 120;
  *(v42 + 8) = 0;
  v43 = a1 + v8[98];
  *v43 = 24;
  *(v43 + 8) = 0;
  v44 = a1 + v8[99];
  *v44 = 0x4049000000000000;
  *(v44 + 8) = 0;
  v45 = a1 + v8[100];
  *v45 = 0x4024000000000000;
  *(v45 + 8) = 0;
  v46 = a1 + v8[101];
  *v46 = 0x4044000000000000;
  *(v46 + 8) = 0;
  v47 = a1 + v8[102];
  *v47 = 32;
  *(v47 + 8) = 0;
  v48 = a1 + v8[103];
  *v48 = 12;
  *(v48 + 8) = 0;
  v49 = a1 + v8[104];
  *v49 = 32;
  *(v49 + 8) = 0;
  v50 = a1 + v8[105];
  *v50 = 0x4034000000000000;
  *(v50 + 8) = 0;
  v51 = a1 + v8[106];
  *v51 = 0x403E000000000000;
  *(v51 + 8) = 0;
  v52 = a1 + v8[107];
  *v52 = 7;
  *(v52 + 8) = 0;
  v53 = a1 + v8[108];
  *v53 = 30;
  *(v53 + 8) = 0;
  v54 = a1 + v8[109];
  *v54 = 60;
  *(v54 + 8) = 0;
  v55 = a1 + v8[110];
  *v55 = 30;
  *(v55 + 8) = 0;
  v56 = a1 + v8[111];
  *v56 = 14;
  *(v56 + 8) = 0;
  v57 = a1 + v8[112];
  *v57 = 4320;
  *(v57 + 8) = 0;
  v58 = a1 + v8[113];
  *v58 = 2160;
  *(v58 + 8) = 0;
  v59 = a1 + v8[114];
  *v59 = 2160;
  *(v59 + 8) = 0;
  v60 = a1 + v8[115];
  *v60 = 0x405E000000000000;
  *(v60 + 8) = 0;
  *(a1 + v8[116]) = 1;
  v61 = a1 + v8[117];
  *v61 = 0x4122750000000000;
  *(v61 + 8) = 0;
  v62 = a1 + v8[118];
  *v62 = 0x4000000000000000;
  *(v62 + 8) = 0;
  v63 = a1 + v8[119];
  *v63 = 50;
  *(v63 + 8) = 0;
  *(a1 + v8[120]) = 1;
  *(a1 + v8[121]) = 1;
  *(a1 + v8[122]) = 1;
  v64 = a1 + v8[123];
  *v64 = 86400;
  *(v64 + 8) = 0;
  v65 = a1 + v8[124];
  *v65 = 0x4014000000000000;
  *(v65 + 8) = 0;
  v66 = a1 + v8[125];
  *v66 = 0x408C200000000000;
  *(v66 + 8) = 0;
  v67 = a1 + v8[126];
  *v67 = 96;
  *(v67 + 8) = 0;
  v68 = a1 + v8[127];
  *v68 = 0;
  *(v68 + 8) = 0;
  v69 = a1 + v8[128];
  *v69 = 96;
  *(v69 + 8) = 0;
  v70 = a1 + v8[129];
  *v70 = 0;
  *(v70 + 8) = 0;
  v71 = a1 + v8[130];
  *v71 = 0x40F5180000000000;
  *(v71 + 8) = 0;
  *(a1 + v8[131]) = 1;
  v72 = a1 + v8[132];
  *v72 = 0x404E000000000000;
  *(v72 + 8) = 0;
  *(a1 + v8[133]) = &off_101607438;
  v73 = a1 + v8[134];
  *v73 = 0x4143C68000000000;
  *(v73 + 8) = 0;
  *(a1 + v8[135]) = 1;
  v74 = qword_101694AA8;

  if (v74 != -1)
  {
    swift_once();
  }

  *(a1 + v8[136]) = qword_10177B6E8;
  *(a1 + v8[137]) = 0;
  v75 = a1 + v8[138];
  *v75 = 0x3FB999999999999ALL;
  *(v75 + 8) = 0;
  v76 = a1 + v8[139];
  *v76 = 0x40F5180000000000;
  *(v76 + 8) = 0;
  *(a1 + v8[140]) = 1;
  *(a1 + v8[141]) = 0;
  v77 = a1 + v8[142];
  *v77 = 6;
  *(v77 + 8) = 0;
  v78 = a1 + v8[143];
  *v78 = 8;
  *(v78 + 8) = 0;
  v79 = a1 + v8[144];
  *v79 = 165;
  *(v79 + 8) = 0;
  v80 = a1 + v8[145];
  *v80 = 32;
  *(v80 + 8) = 0;
  v81 = a1 + v8[146];
  *v81 = 32;
  *(v81 + 8) = 0;
  v82 = a1 + v8[147];
  *v82 = 200;
  *(v82 + 8) = 0;
  v83 = a1 + v8[148];
  *v83 = 5;
  *(v83 + 8) = 0;
  v84 = a1 + v8[149];
  *v84 = 32;
  *(v84 + 8) = 0;
  v85 = a1 + v8[150];
  *v85 = 1160;
  *(v85 + 8) = 0;
  v86 = a1 + v8[151];
  *v86 = 7;
  *(v86 + 8) = 0;
  v87 = a1 + v8[152];
  *v87 = 3;
  *(v87 + 8) = 0;
  v88 = a1 + v8[153];
  *v88 = 3;
  *(v88 + 8) = 0;
  v89 = a1 + v8[154];
  *v89 = 30;
  *(v89 + 8) = 0;
  v90 = a1 + v8[155];
  *v90 = 300;
  *(v90 + 8) = 0;
  v91 = a1 + v8[156];
  *v91 = 2160;
  *(v91 + 8) = 0;
  v92 = a1 + v8[157];
  *v92 = 1200;
  *(v92 + 8) = 0;
  v93 = a1 + v8[158];
  *v93 = 0x404E000000000000;
  *(v93 + 8) = 0;
  v94 = a1 + v8[159];
  *v94 = 0x4132750000000000;
  *(v94 + 8) = 0;
  *(a1 + v8[160]) = 0;
  v95 = a1 + v8[161];
  *v95 = 0x408A400000000000;
  *(v95 + 8) = 0;
  v96 = a1 + v8[162];
  *v96 = 0x405E000000000000;
  *(v96 + 8) = 0;
  v97 = a1 + v8[163];
  *v97 = 0x4122750000000000;
  *(v97 + 8) = 0;
  v98 = (a1 + v8[164]);
  *v98 = 0xD00000000000001BLL;
  v98[1] = 0x8000000101364A50;
  v99 = a1 + v8[165];
  *v99 = 32;
  *(v99 + 8) = 0;
  *(a1 + v8[166]) = 0;
  v100 = a1 + v8[167];
  *v100 = 0x40AC200000000000;
  *(v100 + 8) = 0;
  *(a1 + v8[168]) = 0;
  v101 = a1 + v8[169];
  *v101 = 0x40AC200000000000;
  *(v101 + 8) = 0;
  v102 = a1 + v8[170];
  *v102 = 0x409C200000000000;
  *(v102 + 8) = 0;
  *(a1 + v8[171]) = 0;
  v103 = a1 + v8[172];
  *v103 = 2;
  *(v103 + 4) = 0;
  v104 = a1 + v8[173];
  *v104 = 10;
  *(v104 + 8) = 0;
  v105 = a1 + v8[174];
  *v105 = 0x404E000000000000;
  *(v105 + 8) = 0;
  v106 = a1 + v8[175];
  *v106 = 0x4034000000000000;
  *(v106 + 8) = 0;
  v107 = a1 + v8[176];
  *v107 = 0x4014000000000000;
  *(v107 + 8) = 0;
  v108 = a1 + v8[177];
  *v108 = 0x408C200000000000;
  *(v108 + 8) = 0;
  v109 = a1 + v8[178];
  *v109 = 0x408C200000000000;
  *(v109 + 8) = 0;
  v110 = a1 + v8[179];
  *v110 = 0x404E000000000000;
  *(v110 + 8) = 0;
  *(a1 + v8[180]) = 1;
  v111 = a1 + v8[181];
  *v111 = 0x40F5180000000000;
  *(v111 + 8) = 0;
  v112 = a1 + v8[182];
  *v112 = 0x4122750000000000;
  *(v112 + 8) = 0;
  *(a1 + v8[183]) = 176;
  v113 = a1 + v8[184];
  *v113 = 0x404E000000000000;
  *(v113 + 8) = 0;

  return result;
}

uint64_t sub_1008F9008@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = a1[3];
  v7 = a1[4];
  sub_1000035D0(a1, v6);
  *a3 = (*(v7 + 8))(v6, v7);
  *(a3 + 8) = v8;
  *(a3 + 25) = a2;
  v9 = a1[3];
  v10 = a1[4];
  sub_1000035D0(a1, v9);
  *(a3 + 16) = (*(v10 + 16))(v9, v10);
  *(a3 + 24) = v11 & 1;
  v12 = a1[3];
  v13 = a1[4];
  sub_1000035D0(a1, v12);
  *(a3 + 32) = (*(v13 + 24))(v12, v13);
  *(a3 + 40) = v14 & 1;
  v15 = a1[3];
  v16 = a1[4];
  sub_1000035D0(a1, v15);
  *(a3 + 48) = (*(v16 + 32))(v15, v16);
  *(a3 + 56) = v17 & 1;
  v18 = a1[3];
  v19 = a1[4];
  sub_1000035D0(a1, v18);
  *(a3 + 57) = (*(v19 + 40))(v18, v19);
  v20 = a1[3];
  v21 = a1[4];
  sub_1000035D0(a1, v20);
  *(a3 + 64) = (*(v21 + 48))(v20, v21);
  v22 = a1[3];
  v23 = a1[4];
  sub_1000035D0(a1, v22);
  *(a3 + 72) = (*(v23 + 56))(v22, v23);
  v24 = a1[3];
  v25 = a1[4];
  sub_1000035D0(a1, v24);
  *(a3 + 80) = (*(v25 + 64))(v24, v25);
  *(a3 + 88) = v26;
  v27 = a1[3];
  v28 = a1[4];
  sub_1000035D0(a1, v27);
  *(a3 + 96) = (*(v28 + 80))(v27, v28);
  *(a3 + 104) = v29 & 1;
  v30 = a1[3];
  v31 = a1[4];
  sub_1000035D0(a1, v30);
  *(a3 + 105) = (*(v31 + 72))(v30, v31);
  v32 = a1[3];
  v33 = a1[4];
  sub_1000035D0(a1, v32);
  *(a3 + 106) = (*(v33 + 88))(v32, v33);
  v34 = a1[3];
  v35 = a1[4];
  sub_1000035D0(a1, v34);
  *(a3 + 112) = (*(v35 + 96))(v34, v35);
  *(a3 + 120) = v36 & 1;
  v37 = a1[3];
  v38 = a1[4];
  sub_1000035D0(a1, v37);
  *(a3 + 128) = (*(v38 + 104))(v37, v38);
  *(a3 + 136) = v39 & 1;
  v40 = a1[3];
  v41 = a1[4];
  sub_1000035D0(a1, v40);
  *(a3 + 144) = (*(v41 + 112))(v40, v41);
  *(a3 + 152) = v42 & 1;
  v43 = a1[3];
  v44 = a1[4];
  sub_1000035D0(a1, v43);
  *(a3 + 160) = (*(v44 + 120))(v43, v44);
  *(a3 + 168) = v45 & 1;
  v46 = a1[3];
  v47 = a1[4];
  sub_1000035D0(a1, v46);
  *(a3 + 176) = (*(v47 + 128))(v46, v47);
  *(a3 + 184) = v48 & 1;
  v49 = a1[3];
  v50 = a1[4];
  sub_1000035D0(a1, v49);
  *(a3 + 192) = (*(v50 + 136))(v49, v50);
  *(a3 + 200) = v51 & 1;
  v52 = a1[3];
  v53 = a1[4];
  sub_1000035D0(a1, v52);
  *(a3 + 208) = (*(v53 + 144))(v52, v53);
  *(a3 + 216) = v54 & 1;
  v55 = a1[3];
  v56 = a1[4];
  sub_1000035D0(a1, v55);
  *(a3 + 224) = (*(v56 + 152))(v55, v56);
  *(a3 + 232) = v57 & 1;
  v58 = a1[3];
  v59 = a1[4];
  sub_1000035D0(a1, v58);
  *(a3 + 240) = (*(v59 + 160))(v58, v59);
  *(a3 + 248) = v60 & 1;
  v61 = a1[3];
  v62 = a1[4];
  sub_1000035D0(a1, v61);
  *(a3 + 256) = (*(v62 + 168))(v61, v62);
  *(a3 + 264) = v63 & 1;
  v64 = a1[3];
  v65 = a1[4];
  sub_1000035D0(a1, v64);
  *(a3 + 272) = (*(v65 + 176))(v64, v65);
  *(a3 + 280) = v66 & 1;
  v67 = a1[3];
  v68 = a1[4];
  sub_1000035D0(a1, v67);
  *(a3 + 288) = (*(v68 + 184))(v67, v68);
  *(a3 + 296) = v69 & 1;
  v70 = a1[3];
  v71 = a1[4];
  sub_1000035D0(a1, v70);
  *(a3 + 304) = (*(v71 + 192))(v70, v71);
  *(a3 + 312) = v72 & 1;
  v73 = a1[3];
  v74 = a1[4];
  sub_1000035D0(a1, v73);
  *(a3 + 313) = (*(v74 + 200))(v73, v74);
  v75 = a1[3];
  v76 = a1[4];
  sub_1000035D0(a1, v75);
  *(a3 + 320) = (*(v76 + 208))(v75, v76);
  v77 = a1[3];
  v78 = a1[4];
  sub_1000035D0(a1, v77);
  *(a3 + 328) = (*(v78 + 216))(v77, v78);
  *(a3 + 336) = v79 & 1;
  v80 = a1[3];
  v81 = a1[4];
  sub_1000035D0(a1, v80);
  *(a3 + 344) = (*(v81 + 224))(v80, v81);
  *(a3 + 352) = v82 & 1;
  v83 = a1[3];
  v84 = a1[4];
  sub_1000035D0(a1, v83);
  *(a3 + 360) = (*(v84 + 232))(v83, v84);
  *(a3 + 368) = v85 & 1;
  v86 = a1[3];
  v87 = a1[4];
  sub_1000035D0(a1, v86);
  *(a3 + 376) = (*(v87 + 240))(v86, v87);
  *(a3 + 384) = v88 & 1;
  v89 = a1[3];
  v90 = a1[4];
  sub_1000035D0(a1, v89);
  *(a3 + 392) = (*(v90 + 248))(v89, v90);
  *(a3 + 400) = v91 & 1;
  v92 = a1[3];
  v93 = a1[4];
  sub_1000035D0(a1, v92);
  *(a3 + 408) = (*(v93 + 256))(v92, v93);
  *(a3 + 416) = v94 & 1;
  v95 = a1[3];
  v96 = a1[4];
  sub_1000035D0(a1, v95);
  *(a3 + 424) = (*(v96 + 264))(v95, v96);
  *(a3 + 432) = v97 & 1;
  v98 = a1[3];
  v99 = a1[4];
  sub_1000035D0(a1, v98);
  *(a3 + 440) = (*(v99 + 264))(v98, v99);
  *(a3 + 448) = v100 & 1;
  v101 = a1[3];
  v102 = a1[4];
  sub_1000035D0(a1, v101);
  *(a3 + 456) = (*(v102 + 280))(v101, v102);
  *(a3 + 464) = v103 & 1;
  v104 = a1[3];
  v105 = a1[4];
  sub_1000035D0(a1, v104);
  *(a3 + 472) = (*(v105 + 288))(v104, v105);
  *(a3 + 480) = v106 & 1;
  v107 = a1[3];
  v108 = a1[4];
  sub_1000035D0(a1, v107);
  *(a3 + 481) = (*(v108 + 296))(v107, v108);
  v109 = a1[3];
  v110 = a1[4];
  sub_1000035D0(a1, v109);
  *(a3 + 488) = (*(v110 + 304))(v109, v110);
  *(a3 + 496) = v111 & 1;
  v112 = a1[3];
  v113 = a1[4];
  sub_1000035D0(a1, v112);
  *(a3 + 504) = (*(v113 + 312))(v112, v113);
  *(a3 + 512) = v114 & 1;
  v115 = a1[3];
  v116 = a1[4];
  sub_1000035D0(a1, v115);
  *(a3 + 520) = (*(v116 + 320))(v115, v116);
  *(a3 + 528) = v117 & 1;
  v118 = a1[3];
  v119 = a1[4];
  sub_1000035D0(a1, v118);
  *(a3 + 536) = (*(v119 + 328))(v118, v119);
  *(a3 + 544) = v120 & 1;
  v121 = a1[3];
  v122 = a1[4];
  sub_1000035D0(a1, v121);
  *(a3 + 552) = (*(v122 + 336))(v121, v122);
  *(a3 + 560) = v123 & 1;
  v124 = a1[3];
  v125 = a1[4];
  sub_1000035D0(a1, v124);
  *(a3 + 568) = (*(v125 + 344))(v124, v125);
  *(a3 + 576) = v126 & 1;
  v127 = a1[3];
  v128 = a1[4];
  sub_1000035D0(a1, v127);
  *(a3 + 584) = (*(v128 + 352))(v127, v128);
  *(a3 + 592) = v129 & 1;
  v130 = a1[3];
  v131 = a1[4];
  sub_1000035D0(a1, v130);
  *(a3 + 600) = (*(v131 + 360))(v130, v131);
  v132 = a1[3];
  v133 = a1[4];
  sub_1000035D0(a1, v132);
  *(a3 + 608) = (*(v133 + 368))(v132, v133);
  *(a3 + 616) = v134 & 1;
  v135 = a1[3];
  v136 = a1[4];
  sub_1000035D0(a1, v135);
  *(a3 + 624) = (*(v136 + 376))(v135, v136);
  *(a3 + 632) = v137 & 1;
  v138 = a1[3];
  v139 = a1[4];
  sub_1000035D0(a1, v138);
  *(a3 + 640) = (*(v139 + 384))(v138, v139);
  v140 = a1[3];
  v141 = a1[4];
  sub_1000035D0(a1, v140);
  *(a3 + 648) = (*(v141 + 392))(v140, v141);
  v142 = a1[3];
  v143 = a1[4];
  sub_1000035D0(a1, v142);
  *(a3 + 656) = (*(v143 + 400))(v142, v143);
  *(a3 + 664) = v144 & 1;
  v145 = a1[3];
  v146 = a1[4];
  sub_1000035D0(a1, v145);
  *(a3 + 672) = (*(v146 + 408))(v145, v146);
  *(a3 + 680) = v147 & 1;
  v148 = a1[3];
  v149 = a1[4];
  sub_1000035D0(a1, v148);
  *(a3 + 688) = (*(v149 + 416))(v148, v149);
  *(a3 + 696) = v150 & 1;
  v151 = a1[3];
  v152 = a1[4];
  sub_1000035D0(a1, v151);
  *(a3 + 704) = (*(v152 + 424))(v151, v152);
  *(a3 + 712) = v153 & 1;
  v154 = a1[3];
  v155 = a1[4];
  sub_1000035D0(a1, v154);
  *(a3 + 720) = (*(v155 + 432))(v154, v155);
  *(a3 + 728) = v156 & 1;
  v157 = a1[3];
  v158 = a1[4];
  sub_1000035D0(a1, v157);
  *(a3 + 729) = (*(v158 + 440))(v157, v158);
  v159 = a1[3];
  v160 = a1[4];
  sub_1000035D0(a1, v159);
  v161 = *(v160 + 448);
  v162 = type metadata accessor for DefaultConfigurationLayer(0);
  v161(v159, v160);
  v163 = a1[3];
  v164 = a1[4];
  sub_1000035D0(a1, v163);
  (*(v164 + 456))(v163, v164);
  v165 = a1[3];
  v166 = a1[4];
  sub_1000035D0(a1, v165);
  v167 = (*(v166 + 464))(v165, v166);
  v168 = a3 + v162[62];
  *v168 = v167;
  *(v168 + 8) = v169 & 1;
  v170 = a1[3];
  v171 = a1[4];
  sub_1000035D0(a1, v170);
  (*(v171 + 472))(v170, v171);
  v172 = a1[3];
  v173 = a1[4];
  sub_1000035D0(a1, v172);
  v174 = (*(v173 + 480))(v172, v173);
  v175 = a3 + v162[64];
  *v175 = v174;
  *(v175 + 8) = v176 & 1;
  v177 = a1[3];
  v178 = a1[4];
  sub_1000035D0(a1, v177);
  v179 = (*(v178 + 488))(v177, v178);
  v180 = a3 + v162[65];
  *v180 = v179;
  *(v180 + 8) = v181 & 1;
  v182 = a1[3];
  v183 = a1[4];
  sub_1000035D0(a1, v182);
  v184 = (*(v183 + 496))(v182, v183);
  v185 = a3 + v162[66];
  *v185 = v184;
  *(v185 + 8) = v186 & 1;
  v187 = a1[3];
  v188 = a1[4];
  sub_1000035D0(a1, v187);
  v189 = (*(v188 + 504))(v187, v188);
  v190 = a3 + v162[67];
  *v190 = v189;
  *(v190 + 8) = v191 & 1;
  v192 = a1[3];
  v193 = a1[4];
  sub_1000035D0(a1, v192);
  v194 = (*(v193 + 512))(v192, v193);
  v195 = a3 + v162[68];
  *v195 = v194;
  *(v195 + 8) = v196 & 1;
  v197 = a1[3];
  v198 = a1[4];
  sub_1000035D0(a1, v197);
  v199 = (*(v198 + 520))(v197, v198);
  v200 = a3 + v162[69];
  *v200 = v199;
  *(v200 + 8) = v201 & 1;
  v202 = a1[3];
  v203 = a1[4];
  sub_1000035D0(a1, v202);
  (*(v203 + 528))(v705, v202, v203);
  v204 = (a3 + v162[70]);
  v205 = v705[5];
  v204[4] = v705[4];
  v204[5] = v205;
  v204[6] = v705[6];
  v206 = v705[1];
  *v204 = v705[0];
  v204[1] = v206;
  v207 = v705[3];
  v204[2] = v705[2];
  v204[3] = v207;
  v208 = a1[3];
  v209 = a1[4];
  sub_1000035D0(a1, v208);
  *(a3 + v162[71]) = (*(v209 + 536))(v208, v209);
  v210 = a1[3];
  v211 = a1[4];
  sub_1000035D0(a1, v210);
  *(a3 + v162[72]) = (*(v211 + 544))(v210, v211);
  v212 = a1[3];
  v213 = a1[4];
  sub_1000035D0(a1, v212);
  *(a3 + v162[73]) = (*(v213 + 552))(v212, v213);
  v214 = a1[3];
  v215 = a1[4];
  sub_1000035D0(a1, v214);
  v216 = (*(v215 + 560))(v214, v215);
  v217 = a3 + v162[74];
  *v217 = v216;
  *(v217 + 8) = v218 & 1;
  v219 = a1[3];
  v220 = a1[4];
  sub_1000035D0(a1, v219);
  v221 = (*(v220 + 568))(v219, v220);
  v222 = a3 + v162[75];
  *v222 = v221;
  *(v222 + 8) = v223 & 1;
  v224 = a1[3];
  v225 = a1[4];
  sub_1000035D0(a1, v224);
  v226 = (*(v225 + 576))(v224, v225);
  v227 = a3 + v162[76];
  *v227 = v226;
  *(v227 + 8) = v228 & 1;
  v229 = a1[3];
  v230 = a1[4];
  sub_1000035D0(a1, v229);
  v231 = (*(v230 + 584))(v229, v230);
  v232 = a3 + v162[77];
  *v232 = v231;
  *(v232 + 8) = v233 & 1;
  v234 = a1[3];
  v235 = a1[4];
  sub_1000035D0(a1, v234);
  v236 = (*(v235 + 592))(v234, v235);
  v237 = a3 + v162[78];
  *v237 = v236;
  *(v237 + 8) = v238 & 1;
  v239 = a1[3];
  v240 = a1[4];
  sub_1000035D0(a1, v239);
  v241 = (*(v240 + 600))(v239, v240);
  v242 = a3 + v162[79];
  *v242 = v241;
  *(v242 + 8) = v243 & 1;
  v244 = a1[3];
  v245 = a1[4];
  sub_1000035D0(a1, v244);
  v246 = (*(v245 + 608))(v244, v245);
  v247 = a3 + v162[80];
  *v247 = v246;
  *(v247 + 8) = v248 & 1;
  v249 = a1[3];
  v250 = a1[4];
  sub_1000035D0(a1, v249);
  v251 = (*(v250 + 616))(v249, v250);
  v252 = a3 + v162[81];
  *v252 = v251;
  *(v252 + 8) = v253 & 1;
  v254 = a1[3];
  v255 = a1[4];
  sub_1000035D0(a1, v254);
  v256 = (*(v255 + 624))(v254, v255);
  v257 = a3 + v162[82];
  *v257 = v256;
  *(v257 + 8) = v258 & 1;
  v259 = a1[3];
  v260 = a1[4];
  sub_1000035D0(a1, v259);
  v261 = (*(v260 + 632))(v259, v260);
  v262 = (a3 + v162[83]);
  *v262 = v261;
  v262[1] = v263;
  v264 = a1[3];
  v265 = a1[4];
  sub_1000035D0(a1, v264);
  v266 = (*(v265 + 640))(v264, v265);
  v267 = a3 + v162[84];
  *v267 = v266;
  *(v267 + 8) = v268 & 1;
  v269 = a1[3];
  v270 = a1[4];
  sub_1000035D0(a1, v269);
  v271 = (*(v270 + 648))(v269, v270);
  v272 = (a3 + v162[85]);
  *v272 = v271;
  v272[1] = v273;
  v274 = a1[3];
  v275 = a1[4];
  sub_1000035D0(a1, v274);
  v276 = (*(v275 + 656))(v274, v275);
  v277 = a3 + v162[86];
  *v277 = v276;
  *(v277 + 8) = v278 & 1;
  v279 = a1[3];
  v280 = a1[4];
  sub_1000035D0(a1, v279);
  *(a3 + v162[87]) = (*(v280 + 664))(v279, v280);
  v281 = a1[3];
  v282 = a1[4];
  sub_1000035D0(a1, v281);
  v283 = (*(v282 + 672))(v281, v282);
  v284 = (a3 + v162[88]);
  *v284 = v283;
  v284[1] = v285;
  v286 = a1[3];
  v287 = a1[4];
  sub_1000035D0(a1, v286);
  v288 = (*(v287 + 680))(v286, v287);
  v289 = a3 + v162[89];
  *v289 = v288;
  *(v289 + 8) = v290 & 1;
  v291 = a1[3];
  v292 = a1[4];
  sub_1000035D0(a1, v291);
  v293 = (*(v292 + 720))(v291, v292);
  v294 = a3 + v162[94];
  *v294 = v293;
  *(v294 + 8) = v295 & 1;
  v296 = a1[3];
  v297 = a1[4];
  sub_1000035D0(a1, v296);
  v298 = (*(v297 + 728))(v296, v297);
  v299 = a3 + v162[95];
  *v299 = v298;
  *(v299 + 8) = v300 & 1;
  v301 = a1[3];
  v302 = a1[4];
  sub_1000035D0(a1, v301);
  v303 = (*(v302 + 736))(v301, v302);
  v304 = a3 + v162[96];
  *v304 = v303;
  *(v304 + 8) = v305 & 1;
  v306 = a1[3];
  v307 = a1[4];
  sub_1000035D0(a1, v306);
  v308 = (*(v307 + 744))(v306, v307);
  v309 = a3 + v162[97];
  *v309 = v308;
  *(v309 + 8) = v310 & 1;
  v311 = a1[3];
  v312 = a1[4];
  sub_1000035D0(a1, v311);
  v313 = (*(v312 + 752))(v311, v312);
  v314 = a3 + v162[98];
  *v314 = v313;
  *(v314 + 8) = v315 & 1;
  v316 = a1[3];
  v317 = a1[4];
  sub_1000035D0(a1, v316);
  v318 = (*(v317 + 760))(v316, v317);
  v319 = a3 + v162[99];
  *v319 = v318;
  *(v319 + 8) = v320 & 1;
  v321 = a1[3];
  v322 = a1[4];
  sub_1000035D0(a1, v321);
  v323 = (*(v322 + 768))(v321, v322);
  v324 = a3 + v162[100];
  *v324 = v323;
  *(v324 + 8) = v325 & 1;
  v326 = a1[3];
  v327 = a1[4];
  sub_1000035D0(a1, v326);
  v328 = (*(v327 + 776))(v326, v327);
  v329 = a3 + v162[101];
  *v329 = v328;
  *(v329 + 8) = v330 & 1;
  v331 = a1[3];
  v332 = a1[4];
  sub_1000035D0(a1, v331);
  v333 = (*(v332 + 784))(v331, v332);
  v334 = a3 + v162[102];
  *v334 = v333;
  *(v334 + 8) = v335 & 1;
  v336 = a1[3];
  v337 = a1[4];
  sub_1000035D0(a1, v336);
  v338 = (*(v337 + 792))(v336, v337);
  v339 = a3 + v162[103];
  *v339 = v338;
  *(v339 + 8) = v340 & 1;
  v341 = a1[3];
  v342 = a1[4];
  sub_1000035D0(a1, v341);
  v343 = (*(v342 + 800))(v341, v342);
  v344 = a3 + v162[104];
  *v344 = v343;
  *(v344 + 8) = v345 & 1;
  v346 = a1[3];
  v347 = a1[4];
  sub_1000035D0(a1, v346);
  *(a3 + v162[90]) = (*(v347 + 688))(v346, v347);
  v348 = a1[3];
  v349 = a1[4];
  sub_1000035D0(a1, v348);
  *(a3 + v162[91]) = (*(v349 + 696))(v348, v349);
  v350 = a1[3];
  v351 = a1[4];
  sub_1000035D0(a1, v350);
  *(a3 + v162[92]) = (*(v351 + 704))(v350, v351);
  v352 = a1[3];
  v353 = a1[4];
  sub_1000035D0(a1, v352);
  *(a3 + v162[93]) = (*(v353 + 712))(v352, v353);
  v354 = a1[3];
  v355 = a1[4];
  sub_1000035D0(a1, v354);
  v356 = (*(v355 + 808))(v354, v355);
  v357 = a3 + v162[105];
  *v357 = v356;
  *(v357 + 8) = v358 & 1;
  v359 = a1[3];
  v360 = a1[4];
  sub_1000035D0(a1, v359);
  v361 = (*(v360 + 816))(v359, v360);
  v362 = a3 + v162[106];
  *v362 = v361;
  *(v362 + 8) = v363 & 1;
  v364 = a1[3];
  v365 = a1[4];
  sub_1000035D0(a1, v364);
  v366 = (*(v365 + 824))(v364, v365);
  v367 = a3 + v162[107];
  *v367 = v366;
  *(v367 + 8) = v368 & 1;
  v369 = a1[3];
  v370 = a1[4];
  sub_1000035D0(a1, v369);
  v371 = (*(v370 + 832))(v369, v370);
  v372 = a3 + v162[108];
  *v372 = v371;
  *(v372 + 8) = v373 & 1;
  v374 = a1[3];
  v375 = a1[4];
  sub_1000035D0(a1, v374);
  v376 = (*(v375 + 840))(v374, v375);
  v377 = a3 + v162[109];
  *v377 = v376;
  *(v377 + 8) = v378 & 1;
  v379 = a1[3];
  v380 = a1[4];
  sub_1000035D0(a1, v379);
  v381 = (*(v380 + 848))(v379, v380);
  v382 = a3 + v162[110];
  *v382 = v381;
  *(v382 + 8) = v383 & 1;
  v384 = a1[3];
  v385 = a1[4];
  sub_1000035D0(a1, v384);
  v386 = (*(v385 + 856))(v384, v385);
  v387 = a3 + v162[111];
  *v387 = v386;
  *(v387 + 8) = v388 & 1;
  v389 = a1[3];
  v390 = a1[4];
  sub_1000035D0(a1, v389);
  v391 = (*(v390 + 864))(v389, v390);
  v392 = a3 + v162[112];
  *v392 = v391;
  *(v392 + 8) = v393 & 1;
  v394 = a1[3];
  v395 = a1[4];
  sub_1000035D0(a1, v394);
  v396 = (*(v395 + 872))(v394, v395);
  v397 = a3 + v162[113];
  *v397 = v396;
  *(v397 + 8) = v398 & 1;
  v399 = a1[3];
  v400 = a1[4];
  sub_1000035D0(a1, v399);
  v401 = (*(v400 + 880))(v399, v400);
  v402 = a3 + v162[114];
  *v402 = v401;
  *(v402 + 8) = v403 & 1;
  v404 = a1[3];
  v405 = a1[4];
  sub_1000035D0(a1, v404);
  v406 = (*(v405 + 888))(v404, v405);
  v407 = a3 + v162[115];
  *v407 = v406;
  *(v407 + 8) = v408 & 1;
  v409 = a1[3];
  v410 = a1[4];
  sub_1000035D0(a1, v409);
  *(a3 + v162[116]) = (*(v410 + 896))(v409, v410);
  v411 = a1[3];
  v412 = a1[4];
  sub_1000035D0(a1, v411);
  v413 = (*(v412 + 904))(v411, v412);
  v414 = a3 + v162[117];
  *v414 = v413;
  *(v414 + 8) = v415 & 1;
  v416 = a1[3];
  v417 = a1[4];
  sub_1000035D0(a1, v416);
  v418 = (*(v417 + 912))(v416, v417);
  v419 = a3 + v162[118];
  *v419 = v418;
  *(v419 + 8) = v420 & 1;
  v421 = a1[3];
  v422 = a1[4];
  sub_1000035D0(a1, v421);
  v423 = (*(v422 + 920))(v421, v422);
  v424 = a3 + v162[119];
  *v424 = v423;
  *(v424 + 8) = v425 & 1;
  v426 = a1[3];
  v427 = a1[4];
  sub_1000035D0(a1, v426);
  *(a3 + v162[120]) = (*(v427 + 928))(v426, v427);
  v428 = a1[3];
  v429 = a1[4];
  sub_1000035D0(a1, v428);
  *(a3 + v162[121]) = (*(v429 + 936))(v428, v429);
  v430 = a1[3];
  v431 = a1[4];
  sub_1000035D0(a1, v430);
  *(a3 + v162[122]) = (*(v431 + 944))(v430, v431);
  v432 = a1[3];
  v433 = a1[4];
  sub_1000035D0(a1, v432);
  v434 = (*(v433 + 952))(v432, v433);
  v435 = a3 + v162[123];
  *v435 = v434;
  *(v435 + 8) = v436 & 1;
  v437 = a1[3];
  v438 = a1[4];
  sub_1000035D0(a1, v437);
  v439 = (*(v438 + 960))(v437, v438);
  v440 = a3 + v162[124];
  *v440 = v439;
  *(v440 + 8) = v441 & 1;
  v442 = a1[3];
  v443 = a1[4];
  sub_1000035D0(a1, v442);
  v444 = (*(v443 + 968))(v442, v443);
  v445 = a3 + v162[125];
  *v445 = v444;
  *(v445 + 8) = v446 & 1;
  v447 = a1[3];
  v448 = a1[4];
  sub_1000035D0(a1, v447);
  v449 = (*(v448 + 976))(v447, v448);
  v450 = a3 + v162[126];
  *v450 = v449;
  *(v450 + 8) = v451 & 1;
  v452 = a1[3];
  v453 = a1[4];
  sub_1000035D0(a1, v452);
  v454 = (*(v453 + 984))(v452, v453);
  v455 = a3 + v162[127];
  *v455 = v454;
  *(v455 + 8) = v456 & 1;
  v457 = a1[3];
  v458 = a1[4];
  sub_1000035D0(a1, v457);
  v459 = (*(v458 + 992))(v457, v458);
  v460 = a3 + v162[128];
  *v460 = v459;
  *(v460 + 8) = v461 & 1;
  v462 = a1[3];
  v463 = a1[4];
  sub_1000035D0(a1, v462);
  v464 = (*(v463 + 1000))(v462, v463);
  v465 = a3 + v162[129];
  *v465 = v464;
  *(v465 + 8) = v466 & 1;
  v467 = a1[3];
  v468 = a1[4];
  sub_1000035D0(a1, v467);
  v469 = (*(v468 + 1008))(v467, v468);
  v470 = a3 + v162[130];
  *v470 = v469;
  *(v470 + 8) = v471 & 1;
  v472 = a1[3];
  v473 = a1[4];
  sub_1000035D0(a1, v472);
  *(a3 + v162[131]) = (*(v473 + 1016))(v472, v473);
  v474 = a1[3];
  v475 = a1[4];
  sub_1000035D0(a1, v474);
  v476 = (*(v475 + 1024))(v474, v475);
  v477 = a3 + v162[132];
  *v477 = v476;
  *(v477 + 8) = v478 & 1;
  v479 = a1[3];
  v480 = a1[4];
  sub_1000035D0(a1, v479);
  *(a3 + v162[133]) = (*(v480 + 1032))(v479, v480);
  v481 = a1[3];
  v482 = a1[4];
  sub_1000035D0(a1, v481);
  v483 = (*(v482 + 1040))(v481, v482);
  v484 = a3 + v162[134];
  *v484 = v483;
  *(v484 + 8) = v485 & 1;
  v486 = a1[3];
  v487 = a1[4];
  sub_1000035D0(a1, v486);
  *(a3 + v162[135]) = (*(v487 + 1048))(v486, v487);
  v488 = a1[3];
  v489 = a1[4];
  sub_1000035D0(a1, v488);
  *(a3 + v162[136]) = (*(v489 + 1056))(v488, v489);
  v490 = a1[3];
  v491 = a1[4];
  sub_1000035D0(a1, v490);
  *(a3 + v162[137]) = (*(v491 + 1064))(v490, v491);
  v492 = a1[3];
  v493 = a1[4];
  sub_1000035D0(a1, v492);
  v494 = (*(v493 + 1072))(v492, v493);
  v495 = a3 + v162[138];
  *v495 = v494;
  *(v495 + 8) = v496 & 1;
  v497 = a1[3];
  v498 = a1[4];
  sub_1000035D0(a1, v497);
  v499 = (*(v498 + 1080))(v497, v498);
  v500 = a3 + v162[139];
  *v500 = v499;
  *(v500 + 8) = v501 & 1;
  v502 = a1[3];
  v503 = a1[4];
  sub_1000035D0(a1, v502);
  *(a3 + v162[140]) = (*(v503 + 1088))(v502, v503);
  v504 = a1[3];
  v505 = a1[4];
  sub_1000035D0(a1, v504);
  *(a3 + v162[141]) = (*(v505 + 1096))(v504, v505);
  v506 = a1[3];
  v507 = a1[4];
  sub_1000035D0(a1, v506);
  v508 = (*(v507 + 1104))(v506, v507);
  v509 = a3 + v162[142];
  *v509 = v508;
  *(v509 + 8) = v510 & 1;
  v511 = a1[3];
  v512 = a1[4];
  sub_1000035D0(a1, v511);
  v513 = (*(v512 + 1112))(v511, v512);
  v514 = a3 + v162[143];
  *v514 = v513;
  *(v514 + 8) = v515 & 1;
  v516 = a1[3];
  v517 = a1[4];
  sub_1000035D0(a1, v516);
  v518 = (*(v517 + 1120))(v516, v517);
  v519 = a3 + v162[144];
  *v519 = v518;
  *(v519 + 8) = v520 & 1;
  v521 = a1[3];
  v522 = a1[4];
  sub_1000035D0(a1, v521);
  v523 = (*(v522 + 1128))(v521, v522);
  v524 = a3 + v162[145];
  *v524 = v523;
  *(v524 + 8) = v525 & 1;
  v526 = a1[3];
  v527 = a1[4];
  sub_1000035D0(a1, v526);
  v528 = (*(v527 + 1136))(v526, v527);
  v529 = a3 + v162[146];
  *v529 = v528;
  *(v529 + 8) = v530 & 1;
  v531 = a1[3];
  v532 = a1[4];
  sub_1000035D0(a1, v531);
  v533 = (*(v532 + 1144))(v531, v532);
  v534 = a3 + v162[147];
  *v534 = v533;
  *(v534 + 8) = v535 & 1;
  v536 = a1[3];
  v537 = a1[4];
  sub_1000035D0(a1, v536);
  v538 = (*(v537 + 1152))(v536, v537);
  v539 = a3 + v162[148];
  *v539 = v538;
  *(v539 + 8) = v540 & 1;
  v541 = a1[3];
  v542 = a1[4];
  sub_1000035D0(a1, v541);
  v543 = (*(v542 + 1160))(v541, v542);
  v544 = a3 + v162[149];
  *v544 = v543;
  *(v544 + 8) = v545 & 1;
  v546 = a1[3];
  v547 = a1[4];
  sub_1000035D0(a1, v546);
  v548 = (*(v547 + 1168))(v546, v547);
  v549 = a3 + v162[150];
  *v549 = v548;
  *(v549 + 8) = v550 & 1;
  v551 = a1[3];
  v552 = a1[4];
  sub_1000035D0(a1, v551);
  v553 = (*(v552 + 1176))(v551, v552);
  v554 = a3 + v162[151];
  *v554 = v553;
  *(v554 + 8) = v555 & 1;
  v556 = a1[3];
  v557 = a1[4];
  sub_1000035D0(a1, v556);
  v558 = (*(v557 + 1184))(v556, v557);
  v559 = a3 + v162[152];
  *v559 = v558;
  *(v559 + 8) = v560 & 1;
  v561 = a1[3];
  v562 = a1[4];
  sub_1000035D0(a1, v561);
  v563 = (*(v562 + 1192))(v561, v562);
  v564 = a3 + v162[153];
  *v564 = v563;
  *(v564 + 8) = v565 & 1;
  v566 = a1[3];
  v567 = a1[4];
  sub_1000035D0(a1, v566);
  v568 = (*(v567 + 1200))(v566, v567);
  v569 = a3 + v162[154];
  *v569 = v568;
  *(v569 + 8) = v570 & 1;
  v571 = a1[3];
  v572 = a1[4];
  sub_1000035D0(a1, v571);
  v573 = (*(v572 + 1208))(v571, v572);
  v574 = a3 + v162[155];
  *v574 = v573;
  *(v574 + 8) = v575 & 1;
  v576 = a1[3];
  v577 = a1[4];
  sub_1000035D0(a1, v576);
  v578 = (*(v577 + 1216))(v576, v577);
  v579 = a3 + v162[156];
  *v579 = v578;
  *(v579 + 8) = v580 & 1;
  v581 = a1[3];
  v582 = a1[4];
  sub_1000035D0(a1, v581);
  v583 = (*(v582 + 1224))(v581, v582);
  v584 = a3 + v162[157];
  *v584 = v583;
  *(v584 + 8) = v585 & 1;
  v586 = a1[3];
  v587 = a1[4];
  sub_1000035D0(a1, v586);
  v588 = (*(v587 + 1232))(v586, v587);
  v589 = a3 + v162[158];
  *v589 = v588;
  *(v589 + 8) = v590 & 1;
  v591 = a1[3];
  v592 = a1[4];
  sub_1000035D0(a1, v591);
  v593 = (*(v592 + 1240))(v591, v592);
  v594 = a3 + v162[159];
  *v594 = v593;
  *(v594 + 8) = v595 & 1;
  v596 = a1[3];
  v597 = a1[4];
  sub_1000035D0(a1, v596);
  *(a3 + v162[160]) = (*(v597 + 1248))(v596, v597);
  v598 = a1[3];
  v599 = a1[4];
  sub_1000035D0(a1, v598);
  v600 = (*(v599 + 1256))(v598, v599);
  v601 = a3 + v162[161];
  *v601 = v600;
  *(v601 + 8) = v602 & 1;
  v603 = a1[3];
  v604 = a1[4];
  sub_1000035D0(a1, v603);
  v605 = (*(v604 + 1264))(v603, v604);
  v606 = a3 + v162[162];
  *v606 = v605;
  *(v606 + 8) = v607 & 1;
  v608 = a1[3];
  v609 = a1[4];
  sub_1000035D0(a1, v608);
  v610 = (*(v609 + 1272))(v608, v609);
  v611 = a3 + v162[163];
  *v611 = v610;
  *(v611 + 8) = v612 & 1;
  v613 = a1[3];
  v614 = a1[4];
  sub_1000035D0(a1, v613);
  v615 = (*(v614 + 1280))(v613, v614);
  v616 = (a3 + v162[164]);
  *v616 = v615;
  v616[1] = v617;
  v618 = a1[3];
  v619 = a1[4];
  sub_1000035D0(a1, v618);
  v620 = (*(v619 + 1288))(v618, v619);
  v621 = a3 + v162[165];
  *v621 = v620;
  *(v621 + 8) = v622 & 1;
  v623 = a1[3];
  v624 = a1[4];
  sub_1000035D0(a1, v623);
  *(a3 + v162[166]) = (*(v624 + 1296))(v623, v624);
  v625 = a1[3];
  v626 = a1[4];
  sub_1000035D0(a1, v625);
  v627 = (*(v626 + 1304))(v625, v626);
  v628 = a3 + v162[167];
  *v628 = v627;
  *(v628 + 8) = v629 & 1;
  v630 = a1[3];
  v631 = a1[4];
  sub_1000035D0(a1, v630);
  *(a3 + v162[168]) = (*(v631 + 1312))(v630, v631);
  v632 = a1[3];
  v633 = a1[4];
  sub_1000035D0(a1, v632);
  v634 = (*(v633 + 1320))(v632, v633);
  v635 = a3 + v162[169];
  *v635 = v634;
  *(v635 + 8) = v636 & 1;
  v637 = a1[3];
  v638 = a1[4];
  sub_1000035D0(a1, v637);
  v639 = (*(v638 + 1328))(v637, v638);
  v640 = a3 + v162[170];
  *v640 = v639;
  *(v640 + 8) = v641 & 1;
  v642 = a1[3];
  v643 = a1[4];
  sub_1000035D0(a1, v642);
  *(a3 + v162[171]) = (*(v643 + 1336))(v642, v643);
  v644 = a1[3];
  v645 = a1[4];
  sub_1000035D0(a1, v644);
  v646 = (*(v645 + 1344))(v644, v645);
  v647 = a3 + v162[172];
  *v647 = v646;
  *(v647 + 4) = BYTE4(v646) & 1;
  v648 = a1[3];
  v649 = a1[4];
  sub_1000035D0(a1, v648);
  v650 = (*(v649 + 1352))(v648, v649);
  v651 = a3 + v162[173];
  *v651 = v650;
  *(v651 + 8) = v652 & 1;
  v653 = a1[3];
  v654 = a1[4];
  sub_1000035D0(a1, v653);
  v655 = (*(v654 + 1360))(v653, v654);
  v656 = a3 + v162[174];
  *v656 = v655;
  *(v656 + 8) = v657 & 1;
  v658 = a1[3];
  v659 = a1[4];
  sub_1000035D0(a1, v658);
  v660 = (*(v659 + 1368))(v658, v659);
  v661 = a3 + v162[175];
  *v661 = v660;
  *(v661 + 8) = v662 & 1;
  v663 = a1[3];
  v664 = a1[4];
  sub_1000035D0(a1, v663);
  v665 = (*(v664 + 1376))(v663, v664);
  v666 = a3 + v162[176];
  *v666 = v665;
  *(v666 + 8) = v667 & 1;
  v668 = a1[3];
  v669 = a1[4];
  sub_1000035D0(a1, v668);
  v670 = (*(v669 + 1384))(v668, v669);
  v671 = a3 + v162[177];
  *v671 = v670;
  *(v671 + 8) = v672 & 1;
  v673 = a1[3];
  v674 = a1[4];
  sub_1000035D0(a1, v673);
  v675 = (*(v674 + 1392))(v673, v674);
  v676 = a3 + v162[178];
  *v676 = v675;
  *(v676 + 8) = v677 & 1;
  v678 = a1[3];
  v679 = a1[4];
  sub_1000035D0(a1, v678);
  v680 = (*(v679 + 1400))(v678, v679);
  v681 = a3 + v162[179];
  *v681 = v680;
  *(v681 + 8) = v682 & 1;
  v683 = a1[3];
  v684 = a1[4];
  sub_1000035D0(a1, v683);
  *(a3 + v162[180]) = (*(v684 + 1408))(v683, v684);
  v685 = a1[3];
  v686 = a1[4];
  sub_1000035D0(a1, v685);
  v687 = (*(v686 + 1416))(v685, v686);
  v688 = a3 + v162[181];
  *v688 = v687;
  *(v688 + 8) = v689 & 1;
  v690 = a1[3];
  v691 = a1[4];
  sub_1000035D0(a1, v690);
  v692 = (*(v691 + 1424))(v690, v691);
  v693 = a3 + v162[182];
  *v693 = v692;
  *(v693 + 8) = v694 & 1;
  v695 = a1[3];
  v696 = a1[4];
  sub_1000035D0(a1, v695);
  v697 = (*(v696 + 1432))(v695, v696);
  v698 = (a3 + v162[183]);
  *v698 = v697;
  v698[1] = HIBYTE(v697) & 1;
  v699 = a1[3];
  v700 = a1[4];
  sub_1000035D0(a1, v699);
  v701 = (*(v700 + 1440))(v699, v700);
  v702 = a3 + v162[184];
  *v702 = v701;
  *(v702 + 8) = v703 & 1;

  return sub_100007BAC(a1);
}

unint64_t sub_1008FBCCC(char a1)
{
  result = 0x754E6C6169726573;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0x496873696C627570;
      break;
    case 4:
    case 51:
      result = 0xD000000000000012;
      break;
    case 6:
    case 27:
    case 67:
    case 77:
    case 79:
    case 99:
    case -125:
    case -76:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0x74537265646E6966;
      break;
    case 8:
      result = 0x74736F486E736361;
      break;
    case 9:
    case 54:
    case -80:
      result = 0xD000000000000011;
      break;
    case 10:
    case 26:
    case 69:
    case 84:
    case -113:
    case -95:
      result = 0xD000000000000014;
      break;
    case 12:
    case 24:
    case 28:
    case 106:
    case 116:
    case -120:
    case -89:
      result = 0xD00000000000001FLL;
      break;
    case 13:
    case 25:
    case 30:
    case 38:
    case 41:
    case 75:
    case 90:
    case 93:
    case -97:
      result = 0xD000000000000021;
      break;
    case 14:
    case 34:
      result = 0xD00000000000002ALL;
      break;
    case 15:
    case 81:
    case 88:
    case 100:
    case 117:
    case -105:
    case -83:
    case -77:
      result = 0xD000000000000018;
      break;
    case 16:
    case 61:
    case 64:
    case 65:
    case -99:
    case -92:
    case -90:
    case -85:
      result = 0xD00000000000001ELL;
      break;
    case 17:
    case 49:
    case 57:
    case 98:
    case -114:
      result = 0xD000000000000016;
      break;
    case 18:
    case 40:
    case 50:
    case 58:
    case 76:
    case 108:
    case -94:
      result = 0xD000000000000017;
      break;
    case 19:
    case 92:
    case -106:
      result = 0xD000000000000024;
      break;
    case 20:
      result = 0xD00000000000003ALL;
      break;
    case 21:
      result = 0xD000000000000043;
      break;
    case 22:
    case 32:
    case 44:
    case 46:
    case 53:
    case 62:
    case 63:
    case 70:
    case 71:
    case 78:
    case 107:
    case 113:
    case -110:
      result = 0xD00000000000001CLL;
      break;
    case 23:
    case 73:
    case 126:
      result = 0xD000000000000028;
      break;
    case 29:
    case 31:
    case 33:
    case 43:
    case 91:
    case 97:
    case 104:
    case -108:
    case -107:
    case -101:
    case -82:
      result = 0xD000000000000023;
      break;
    case 35:
    case 42:
    case 72:
    case 82:
    case 105:
      result = 0xD000000000000025;
      break;
    case 36:
      result = 0xD00000000000002CLL;
      break;
    case 37:
      result = 0xD00000000000001DLL;
      break;
    case 39:
      result = 0xD00000000000001DLL;
      break;
    case 45:
      result = 0x65746143656C6F72;
      break;
    case 47:
      result = 0xD000000000000026;
      break;
    case 48:
      result = 0x5365636976726573;
      break;
    case 52:
    case 101:
    case 110:
    case 111:
    case 115:
    case -111:
    case -91:
    case -88:
      result = 0xD00000000000001ALL;
      break;
    case 55:
    case 66:
    case 83:
    case 85:
    case 89:
      result = 0xD000000000000013;
      break;
    case 56:
      result = 0x63616542666C6573;
      break;
    case 59:
      result = 0x5279654B7473616CLL;
      break;
    case 60:
      result = 0xD00000000000001DLL;
      break;
    case 68:
      result = 0x724473776F6C6C61;
      break;
    case 74:
    case 95:
    case 112:
    case -121:
    case -100:
    case -93:
      result = 0xD000000000000020;
      break;
    case 80:
    case 114:
    case 121:
    case -123:
    case -109:
    case -86:
      result = 0xD000000000000022;
      break;
    case 86:
    case 119:
    case 127:
    case -104:
      result = 0xD00000000000002BLL;
      break;
    case 87:
      result = 0x6941656C65487369;
      break;
    case 94:
      result = 0xD00000000000001DLL;
      break;
    case 96:
    case 103:
    case 118:
    case -119:
      result = 0xD000000000000019;
      break;
    case 102:
      result = 0xD00000000000001DLL;
      break;
    case 109:
      result = 0xD00000000000001DLL;
      break;
    case 120:
    case -112:
      result = 0xD00000000000001BLL;
      break;
    case 122:
    case 124:
    case -126:
      result = 0xD000000000000032;
      break;
    case 123:
    case 125:
      result = 0xD000000000000031;
      break;
    case -128:
      result = 0xD00000000000001DLL;
      break;
    case -127:
      result = 0xD00000000000001DLL;
      break;
    case -124:
      result = 0xD00000000000001DLL;
      break;
    case -122:
      result = 0xD00000000000001DLL;
      break;
    case -116:
    case -115:
      result = 0x657261685378616DLL;
      break;
    case -103:
    case -87:
      result = 0xD00000000000002DLL;
      break;
    case -102:
      result = 0xD00000000000001DLL;
      break;
    case -98:
      result = 0xD00000000000001DLL;
      break;
    case -84:
      result = 0xD00000000000001DLL;
      break;
    case -81:
      result = 0xD000000000000029;
      break;
    case -79:
      result = 0xD00000000000001DLL;
      break;
    case -78:
      result = 0xD00000000000001DLL;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1008FC978(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016AE298, &qword_1013C56C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_10090CCEC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *(v3 + 8);
  *&v33 = *v3;
  *(&v33 + 1) = v9;
  LOBYTE(v26) = 0;
  sub_10002E98C(v33, v9);
  sub_1000E3190();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  sub_100006654(v33, *(&v33 + 1));
  if (!v2)
  {
    LOBYTE(v33) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33) = *(v3 + 25);
    LOBYTE(v26) = 2;
    sub_10090CF94();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v33) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v33 = *(v3 + 64);
    LOBYTE(v26) = 6;
    sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
    sub_100758BE4(&qword_1016B2860, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v33) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33) = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33) = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33) = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33) = 14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33) = 15;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33) = 16;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33) = 17;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33) = 18;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33) = 19;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33) = 20;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33) = 21;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33) = 22;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33) = 23;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33) = 24;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33) = 25;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v33 = *(v3 + 320);
    LOBYTE(v26) = 26;
    sub_1000BC4D4(&qword_101697E90, &qword_10138EB50);
    sub_10090CFE8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v33) = 27;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33) = 28;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33) = 29;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33) = 30;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33) = 31;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33) = 32;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33) = 33;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33) = 34;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33) = 35;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33) = 36;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33) = 37;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33) = 38;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33) = 39;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33) = 40;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33) = 41;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33) = 42;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33) = 43;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33) = 44;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v33 = *(v3 + 600);
    LOBYTE(v26) = 45;
    sub_1000BC4D4(&qword_101697EA0, &qword_10138EB60);
    sub_10090D0F8(&qword_1016AE2C0, sub_10090D170, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v33) = 46;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33) = 47;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v33 = *(v3 + 640);
    LOBYTE(v26) = 48;
    type metadata accessor for SPServiceState(0);
    sub_10090D1C4(&qword_1016AE2D0, type metadata accessor for SPServiceState, &protocol conformance descriptor for SPServiceState);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v33 = *(v3 + 648);
    LOBYTE(v26) = 49;
    sub_1000BC4D4(&qword_101697E78, &qword_1013F0760);
    sub_10090CEA4(&qword_1016AE2D8, &qword_1016AE2E0, &protocol conformance descriptor for SPDisabledReason, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v33) = 50;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33) = 51;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33) = 52;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33) = 53;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33) = 54;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33) = 55;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = type metadata accessor for DefaultConfigurationLayer(0);
    LOBYTE(v33) = 56;
    type metadata accessor for UUID();
    sub_10090D1C4(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v33) = 57;
    type metadata accessor for Date();
    v41 = sub_10090D1C4(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v33) = 58;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33) = 59;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v33) = 60;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33) = 61;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33) = 62;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33) = 63;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v33) = 64;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v40[0] = 65;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = (v3 + v11[70]);
    v13 = v12[4];
    v14 = v12[2];
    v36 = v12[3];
    v37 = v13;
    v15 = v12[4];
    v16 = v12[6];
    v38 = v12[5];
    v39 = v16;
    v17 = *v12;
    v18 = v12[2];
    v34 = v12[1];
    v35 = v18;
    v19 = *v12;
    v30 = v15;
    v31 = v38;
    v32 = v12[6];
    v33 = v19;
    v26 = v17;
    v27 = v34;
    v28 = v14;
    v29 = v36;
    v25 = 66;
    sub_1000D2A70(&v33, v24, &qword_1016ADCE8, &qword_1013C53A0);
    sub_10090D20C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v24[4] = v30;
    v24[5] = v31;
    v24[6] = v32;
    v24[0] = v26;
    v24[1] = v27;
    v24[2] = v28;
    v24[3] = v29;
    sub_10000B3A8(v24, &qword_1016ADCE8, &qword_1013C53A0);
    LOBYTE(v23) = 67;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 68;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 69;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 70;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 71;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 72;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 73;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 74;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 75;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 76;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 77;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 78;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 79;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 80;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 81;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 82;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v23 = *(v3 + v11[87]);
    BYTE4(v22) = 83;
    v20 = sub_1000BC4D4(&qword_101697E40, qword_1013C5620);
    sub_100391400(&qword_10169EA40, &protocol witness table for Int, &protocol conformance descriptor for <A> [A]);
    v41 = v20;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v23) = 84;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 85;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 86;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 87;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 88;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 89;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 90;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 91;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 92;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 93;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 94;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 95;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 96;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 97;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 98;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 99;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 100;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 101;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 102;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 103;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 104;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 105;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 106;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 107;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 108;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 109;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 110;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 111;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 112;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 113;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 114;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 115;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 116;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 117;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 118;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 119;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 120;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 121;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 122;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 123;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 124;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 125;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 126;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 127;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 0x80;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v23 = *(v3 + v11[133]);
    BYTE4(v22) = -127;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v23) = -126;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = -125;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v23 = *(v3 + v11[136]);
    BYTE4(v22) = -124;
    sub_1000BC4D4(&qword_101697E28, &qword_10138EA70);
    sub_10090D260(&qword_1016AE2F0, &protocol witness table for String, &protocol witness table for Double, &protocol conformance descriptor for <> [A : B]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v23) = -123;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = -122;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = -121;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = -120;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = -119;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = -118;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = -117;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = -116;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = -115;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = -114;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = -113;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = -112;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = -111;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = -110;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = -109;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = -108;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = -107;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = -106;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = -105;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = -104;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = -103;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = -102;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = -101;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = -100;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = -99;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = -98;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = -97;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = -96;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = -95;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = -94;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = -93;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = -92;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = -91;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = -90;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = -89;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = *(v3 + v11[172] + 4);
    LOBYTE(v23) = -88;
    BYTE4(v22) = v21;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = -87;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = -86;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = -85;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = -84;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = -83;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = -82;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = -81;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = -80;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = -79;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = -78;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = -77;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = -76;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}