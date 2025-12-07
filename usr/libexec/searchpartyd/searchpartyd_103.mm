uint64_t sub_100B55070(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for OwnerSharingCircle(0);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for DelegatedShareOwnerReunitedUserNotification(0);
  v2[9] = swift_task_alloc();
  sub_1000BC4D4(&qword_10169D398, &qword_10139ADE8);
  v2[10] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v2[11] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v2[14] = *(v4 + 64);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_100B55268, v1, 0);
}

uint64_t sub_100B55268()
{
  v1 = *(v0 + 32);
  v2 = *(*(v0 + 24) + 136);
  *(v0 + 152) = v2;
  *(v0 + 208) = *(v1 + 24);
  return _swift_task_switch(sub_100B55294, v2, 0);
}

uint64_t sub_100B55294()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 152);
  v3 = *(v0 + 128);
  v4 = *(v0 + 104);
  v5 = *(v0 + 96);
  v6 = *(v0 + 16);
  v7 = *(v4 + 16);
  *(v0 + 160) = v7;
  *(v0 + 168) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v3, v6 + v1, v5);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v0 + 176) = v9;
  *(v9 + 16) = v2;
  v10 = *(v4 + 32);
  *(v0 + 184) = v10;
  *(v0 + 192) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v3, v5);

  v11 = swift_task_alloc();
  *(v0 + 200) = v11;
  *v11 = v0;
  v11[1] = sub_100B55418;
  v13 = *(v0 + 136);
  v12 = *(v0 + 144);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_100B5AC80, v9, v13);
}

uint64_t sub_100B55418()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_100B55544, v1, 0);
}

uint64_t sub_100B55544()
{
  v74 = v0;
  v1 = *(v0 + 144);
  v2 = type metadata accessor for BeaconNamingRecord(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &unk_1016B29E0, &unk_1013B70E0);
    if (qword_101694C50 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 40);
    v4 = *(v0 + 16);
    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177BAA0);
    sub_100B5AAA0(v4, v3, type metadata accessor for OwnerSharingCircle);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 40);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v73[0] = v10;
      *v9 = 141558275;
      *(v9 + 4) = 1752392040;
      *(v9 + 12) = 2081;
      sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      v13 = v12;
      sub_10002FF48(v8, type metadata accessor for OwnerSharingCircle);
      v14 = sub_1000136BC(v11, v13, v73);

      *(v9 + 14) = v14;
      v15 = "Error posting notification for reunited delegation - invalid beacon name %{private,mask.hash}s";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v6, v7, v15, v9, 0x16u);
      sub_100007BAC(v10);

LABEL_18:
      sub_100B58A3C();
      swift_allocError();
      *v44 = 0;
      swift_willThrow();

      v45 = *(v0 + 8);
      goto LABEL_19;
    }

    v29 = *(v0 + 40);
    goto LABEL_17;
  }

  v16 = *(v0 + 80);
  v17 = *(v0 + 16);
  v18 = (v1 + *(v2 + 32));
  v20 = *v18;
  v19 = v18[1];

  sub_10002FF48(v1, type metadata accessor for BeaconNamingRecord);
  v21 = sub_10016632C();
  v22 = swift_task_alloc();
  *(v22 + 16) = v17;
  v23 = sub_1001BE474(_swiftEmptyDictionarySingleton, sub_100B5AC54, v22, v21);

  sub_10112C704(v23, v16);

  v24 = sub_1000BC4D4(&qword_101698C18, &qword_101390740);
  if ((*(*(v24 - 8) + 48))(v16, 1, v24) == 1)
  {
    v25 = *(v0 + 96);
    v26 = *(v0 + 104);
    v28 = *(v0 + 80);
    v27 = *(v0 + 88);

    sub_10000B3A8(v28, &qword_10169D398, &qword_10139ADE8);
    (*(v26 + 56))(v27, 1, 1, v25);
LABEL_11:
    sub_10000B3A8(*(v0 + 88), &qword_1016980D0, &unk_10138F3B0);
    if (qword_101694C50 != -1)
    {
      swift_once();
    }

    v36 = *(v0 + 48);
    v37 = *(v0 + 16);
    v38 = type metadata accessor for Logger();
    sub_1000076D4(v38, qword_10177BAA0);
    sub_100B5AAA0(v37, v36, type metadata accessor for OwnerSharingCircle);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v39 = *(v0 + 48);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v73[0] = v10;
      *v9 = 141558275;
      *(v9 + 4) = 1752392040;
      *(v9 + 12) = 2081;
      sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      sub_10002FF48(v39, type metadata accessor for OwnerSharingCircle);
      v43 = sub_1000136BC(v40, v42, v73);

      *(v9 + 14) = v43;
      v15 = "Error posting notification for reunited delegation - invalid client share identifier %{private,mask.hash}s";
      goto LABEL_15;
    }

    v29 = *(v0 + 48);
LABEL_17:

    sub_10002FF48(v29, type metadata accessor for OwnerSharingCircle);
    goto LABEL_18;
  }

  v30 = *(v0 + 96);
  v31 = *(v0 + 104);
  v33 = *(v0 + 80);
  v32 = *(v0 + 88);
  v34 = *(v24 + 48);
  (*(v0 + 184))(v32, v33, v30);
  (*(v31 + 56))(v32, 0, 1, v30);
  v35 = *(v31 + 8);
  v35(v33 + v34, v30);
  if ((*(v31 + 48))(v32, 1, v30) == 1)
  {

    goto LABEL_11;
  }

  v72 = v35;
  v47 = *(v0 + 160);
  v71 = v20;
  v48 = *(v0 + 208);
  v49 = *(v0 + 120);
  v50 = *(v0 + 96);
  v52 = *(v0 + 64);
  v51 = *(v0 + 72);
  v53 = *(v0 + 16);
  (*(v0 + 184))(v49, *(v0 + 88), v50);
  v47(v51, v49, v50);
  v47(v51 + *(v52 + 20), v53 + v48, v50);
  v54 = (v51 + *(v52 + 24));
  *v54 = v71;
  v54[1] = v19;
  if (qword_101694C50 != -1)
  {
    swift_once();
  }

  v55 = *(v0 + 56);
  v56 = *(v0 + 16);
  v57 = type metadata accessor for Logger();
  sub_1000076D4(v57, qword_10177BAA0);
  sub_100B5AAA0(v56, v55, type metadata accessor for OwnerSharingCircle);
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = *(v0 + 56);
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v73[0] = v62;
    *v61 = 141558275;
    *(v61 + 4) = 1752392040;
    *(v61 + 12) = 2081;
    sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v63 = dispatch thunk of CustomStringConvertible.description.getter();
    v65 = v64;
    sub_10002FF48(v60, type metadata accessor for OwnerSharingCircle);
    v66 = sub_1000136BC(v63, v65, v73);

    *(v61 + 14) = v66;
    _os_log_impl(&_mh_execute_header, v58, v59, "Post transparency notification for reunited Delegation %{private,mask.hash}s", v61, 0x16u);
    sub_100007BAC(v62);
  }

  else
  {
    v67 = *(v0 + 56);

    sub_10002FF48(v67, type metadata accessor for OwnerSharingCircle);
  }

  v68 = *(v0 + 120);
  v69 = *(v0 + 96);
  v70 = *(v0 + 72);
  swift_unownedRetainStrong();
  sub_100B593C4(v70, 0, 0);

  sub_10002FF48(v70, type metadata accessor for DelegatedShareOwnerReunitedUserNotification);
  v72(v68, v69);

  v45 = *(v0 + 8);
LABEL_19:

  return v45();
}

uint64_t sub_100B55F38(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for DelegatedShareShareeReunitedShareeUserNotification(0);
  v2[5] = swift_task_alloc();
  sub_1000BC4D4(&qword_10169D398, &qword_10139ADE8);
  v2[6] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v2[7] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v2[10] = *(v4 + 64);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_100B560E8, v1, 0);
}

uint64_t sub_100B560E8()
{
  v1 = *(*(v0 + 24) + 136);
  *(v0 + 120) = v1;
  *(v0 + 176) = *(type metadata accessor for OwnerSharingCircle(0) + 24);

  return _swift_task_switch(sub_100B56164, v1, 0);
}

uint64_t sub_100B56164()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 72);
  v5 = *(v0 + 64);
  v6 = *(v0 + 16);
  v7 = *(v4 + 16);
  *(v0 + 128) = v7;
  *(v0 + 136) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v3, v6 + v1, v5);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v0 + 144) = v9;
  *(v9 + 16) = v2;
  v10 = *(v4 + 32);
  *(v0 + 152) = v10;
  *(v0 + 160) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v3, v5);

  v11 = swift_task_alloc();
  *(v0 + 168) = v11;
  *v11 = v0;
  v11[1] = sub_100B562E8;
  v13 = *(v0 + 104);
  v12 = *(v0 + 112);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_100B5AC80, v9, v13);
}

uint64_t sub_100B562E8()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_100B56414, v1, 0);
}

uint64_t sub_100B56414()
{
  v1 = *(v0 + 112);
  v2 = type metadata accessor for BeaconNamingRecord(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &unk_1016B29E0, &unk_1013B70E0);
    if (qword_101694C50 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177BAA0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_15;
    }

    v6 = "Error while creating transparency notification on owner for delegation stop due to item reunited with sharee- invalid owner peer trust or beacon name";
LABEL_14:
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, v6, v27, 2u);

LABEL_15:

    sub_100B58A3C();
    swift_allocError();
    *v28 = 0;
    swift_willThrow();

    v29 = *(v0 + 8);
    goto LABEL_16;
  }

  v7 = *(v0 + 48);
  v8 = *(v0 + 16);
  v9 = (v1 + *(v2 + 32));
  v11 = *v9;
  v10 = v9[1];

  sub_10002FF48(v1, type metadata accessor for BeaconNamingRecord);
  v12 = sub_10016632C();
  v13 = swift_task_alloc();
  *(v13 + 16) = v8;
  v14 = sub_1001BE474(_swiftEmptyDictionarySingleton, sub_100B5AC54, v13, v12);

  sub_10112C704(v14, v7);

  v15 = sub_1000BC4D4(&qword_101698C18, &qword_101390740);
  if ((*(*(v15 - 8) + 48))(v7, 1, v15) == 1)
  {
    v16 = *(v0 + 64);
    v17 = *(v0 + 72);
    v19 = *(v0 + 48);
    v18 = *(v0 + 56);

    sub_10000B3A8(v19, &qword_10169D398, &qword_10139ADE8);
    (*(v17 + 56))(v18, 1, 1, v16);
LABEL_10:
    sub_10000B3A8(*(v0 + 56), &qword_1016980D0, &unk_10138F3B0);
    if (qword_101694C50 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000076D4(v26, qword_10177BAA0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_15;
    }

    v6 = "Error while creating transparency notification on owner for delegation stop due to item reunited with sharee - invalid client share identifier";
    goto LABEL_14;
  }

  v20 = *(v0 + 64);
  v21 = *(v0 + 72);
  v23 = *(v0 + 48);
  v22 = *(v0 + 56);
  v24 = *(v15 + 48);
  (*(v0 + 152))(v22, v23, v20);
  (*(v21 + 56))(v22, 0, 1, v20);
  v25 = *(v21 + 8);
  v25(v23 + v24, v20);
  if ((*(v21 + 48))(v22, 1, v20) == 1)
  {

    goto LABEL_10;
  }

  v46 = v11;
  v47 = v25;
  v31 = *(v0 + 128);
  v45 = *(v0 + 176);
  v32 = *(v0 + 88);
  v33 = *(v0 + 64);
  v35 = *(v0 + 32);
  v34 = *(v0 + 40);
  v36 = *(v0 + 16);
  (*(v0 + 152))(v32, *(v0 + 56), v33);
  v31(v34, v32, v33);
  v31(v34 + *(v35 + 20), v36 + v45, v33);
  v37 = (v34 + *(v35 + 24));
  *v37 = v46;
  v37[1] = v10;
  if (qword_101694C50 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  sub_1000076D4(v38, qword_10177BAA0);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v39, v40, "Post transparency notification on owner for delegation stop due to item reunited with sharee", v41, 2u);
  }

  v42 = *(v0 + 88);
  v43 = *(v0 + 64);
  v44 = *(v0 + 40);

  swift_unownedRetainStrong();
  sub_100B59870(v44, 0, 0);

  sub_10002FF48(v44, type metadata accessor for DelegatedShareShareeReunitedShareeUserNotification);
  v47(v42, v43);

  v29 = *(v0 + 8);
LABEL_16:

  return v29();
}

uint64_t sub_100B56A3C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for OwnerSharingCircle(0);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for DelegatedSharMaxViewsUserNotification(0);
  v2[9] = swift_task_alloc();
  sub_1000BC4D4(&qword_10169D398, &qword_10139ADE8);
  v2[10] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v2[11] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v2[14] = *(v4 + 64);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_100B56C34, v1, 0);
}

uint64_t sub_100B56C34()
{
  v1 = *(v0 + 32);
  v2 = *(*(v0 + 24) + 136);
  *(v0 + 152) = v2;
  *(v0 + 208) = *(v1 + 24);
  return _swift_task_switch(sub_100B56C60, v2, 0);
}

uint64_t sub_100B56C60()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 152);
  v3 = *(v0 + 128);
  v4 = *(v0 + 104);
  v5 = *(v0 + 96);
  v6 = *(v0 + 16);
  v7 = *(v4 + 16);
  *(v0 + 160) = v7;
  *(v0 + 168) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v3, v6 + v1, v5);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v0 + 176) = v9;
  *(v9 + 16) = v2;
  v10 = *(v4 + 32);
  *(v0 + 184) = v10;
  *(v0 + 192) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v3, v5);

  v11 = swift_task_alloc();
  *(v0 + 200) = v11;
  *v11 = v0;
  v11[1] = sub_100B56DE4;
  v13 = *(v0 + 136);
  v12 = *(v0 + 144);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_100B5AC80, v9, v13);
}

uint64_t sub_100B56DE4()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_100B56F10, v1, 0);
}

uint64_t sub_100B56F10()
{
  v74 = v0;
  v1 = *(v0 + 144);
  v2 = type metadata accessor for BeaconNamingRecord(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &unk_1016B29E0, &unk_1013B70E0);
    if (qword_101694C50 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 40);
    v4 = *(v0 + 16);
    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177BAA0);
    sub_100B5AAA0(v4, v3, type metadata accessor for OwnerSharingCircle);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 40);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v73[0] = v10;
      *v9 = 141558275;
      *(v9 + 4) = 1752392040;
      *(v9 + 12) = 2081;
      sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      v13 = v12;
      sub_10002FF48(v8, type metadata accessor for OwnerSharingCircle);
      v14 = sub_1000136BC(v11, v13, v73);

      *(v9 + 14) = v14;
      v15 = "Error while creating transparency notification for expired delegation - invalid beacon name %{private,mask.hash}s.";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v6, v7, v15, v9, 0x16u);
      sub_100007BAC(v10);

LABEL_18:
      sub_100B58A3C();
      swift_allocError();
      *v44 = 0;
      swift_willThrow();

      v45 = *(v0 + 8);
      goto LABEL_19;
    }

    v29 = *(v0 + 40);
    goto LABEL_17;
  }

  v16 = *(v0 + 80);
  v17 = *(v0 + 16);
  v18 = (v1 + *(v2 + 32));
  v20 = *v18;
  v19 = v18[1];

  sub_10002FF48(v1, type metadata accessor for BeaconNamingRecord);
  v21 = sub_10016632C();
  v22 = swift_task_alloc();
  *(v22 + 16) = v17;
  v23 = sub_1001BE474(_swiftEmptyDictionarySingleton, sub_100B58A90, v22, v21);

  sub_10112C704(v23, v16);

  v24 = sub_1000BC4D4(&qword_101698C18, &qword_101390740);
  if ((*(*(v24 - 8) + 48))(v16, 1, v24) == 1)
  {
    v25 = *(v0 + 96);
    v26 = *(v0 + 104);
    v28 = *(v0 + 80);
    v27 = *(v0 + 88);

    sub_10000B3A8(v28, &qword_10169D398, &qword_10139ADE8);
    (*(v26 + 56))(v27, 1, 1, v25);
LABEL_11:
    sub_10000B3A8(*(v0 + 88), &qword_1016980D0, &unk_10138F3B0);
    if (qword_101694C50 != -1)
    {
      swift_once();
    }

    v36 = *(v0 + 48);
    v37 = *(v0 + 16);
    v38 = type metadata accessor for Logger();
    sub_1000076D4(v38, qword_10177BAA0);
    sub_100B5AAA0(v37, v36, type metadata accessor for OwnerSharingCircle);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v39 = *(v0 + 48);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v73[0] = v10;
      *v9 = 141558275;
      *(v9 + 4) = 1752392040;
      *(v9 + 12) = 2081;
      sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      sub_10002FF48(v39, type metadata accessor for OwnerSharingCircle);
      v43 = sub_1000136BC(v40, v42, v73);

      *(v9 + 14) = v43;
      v15 = "Error while creating transparency notification for expired delegation - invalid client share identifier %{private,mask.hash}s.";
      goto LABEL_15;
    }

    v29 = *(v0 + 48);
LABEL_17:

    sub_10002FF48(v29, type metadata accessor for OwnerSharingCircle);
    goto LABEL_18;
  }

  v30 = *(v0 + 96);
  v31 = *(v0 + 104);
  v33 = *(v0 + 80);
  v32 = *(v0 + 88);
  v34 = *(v24 + 48);
  (*(v0 + 184))(v32, v33, v30);
  (*(v31 + 56))(v32, 0, 1, v30);
  v35 = *(v31 + 8);
  v35(v33 + v34, v30);
  if ((*(v31 + 48))(v32, 1, v30) == 1)
  {

    goto LABEL_11;
  }

  v72 = v35;
  v47 = *(v0 + 160);
  v71 = v20;
  v48 = *(v0 + 208);
  v49 = *(v0 + 120);
  v50 = *(v0 + 96);
  v52 = *(v0 + 64);
  v51 = *(v0 + 72);
  v53 = *(v0 + 16);
  (*(v0 + 184))(v49, *(v0 + 88), v50);
  v47(v51, v49, v50);
  v47(v51 + *(v52 + 20), v53 + v48, v50);
  v54 = (v51 + *(v52 + 24));
  *v54 = v71;
  v54[1] = v19;
  if (qword_101694C50 != -1)
  {
    swift_once();
  }

  v55 = *(v0 + 56);
  v56 = *(v0 + 16);
  v57 = type metadata accessor for Logger();
  sub_1000076D4(v57, qword_10177BAA0);
  sub_100B5AAA0(v56, v55, type metadata accessor for OwnerSharingCircle);
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = *(v0 + 56);
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v73[0] = v62;
    *v61 = 141558275;
    *(v61 + 4) = 1752392040;
    *(v61 + 12) = 2081;
    sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v63 = dispatch thunk of CustomStringConvertible.description.getter();
    v65 = v64;
    sub_10002FF48(v60, type metadata accessor for OwnerSharingCircle);
    v66 = sub_1000136BC(v63, v65, v73);

    *(v61 + 14) = v66;
    _os_log_impl(&_mh_execute_header, v58, v59, "Post transparency notification for expired Delegation %{private,mask.hash}s.", v61, 0x16u);
    sub_100007BAC(v62);
  }

  else
  {
    v67 = *(v0 + 56);

    sub_10002FF48(v67, type metadata accessor for OwnerSharingCircle);
  }

  v68 = *(v0 + 120);
  v69 = *(v0 + 96);
  v70 = *(v0 + 72);
  swift_unownedRetainStrong();
  sub_100B5A1C8(v70, 0, 0);

  sub_10002FF48(v70, type metadata accessor for DelegatedSharMaxViewsUserNotification);
  v72(v68, v69);

  v45 = *(v0 + 8);
LABEL_19:

  return v45();
}

uint64_t sub_100B57904(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = type metadata accessor for UUID();
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v2[16] = *(v4 + 64);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  v2[20] = swift_task_alloc();
  v5 = type metadata accessor for BeaconNamingRecord(0);
  v2[21] = v5;
  v2[22] = *(v5 - 8);
  v2[23] = swift_task_alloc();

  return _swift_task_switch(sub_100B57A70, v1, 0);
}

uint64_t sub_100B57A70()
{
  v1 = *(*(v0 + 104) + 136);
  *(v0 + 192) = v1;
  return _swift_task_switch(sub_100B57A94, v1, 0);
}

uint64_t sub_100B57A94()
{
  v1 = v0[24];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[14];
  (*(v3 + 16))(v2, v0[12], v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[25] = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);

  v7 = swift_task_alloc();
  v0[26] = v7;
  *v7 = v0;
  v7[1] = sub_100B57BF8;
  v9 = v0[19];
  v8 = v0[20];

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100B58A24, v6, v9);
}

uint64_t sub_100B57BF8()
{
  v1 = *(*v0 + 104);

  return _swift_task_switch(sub_100B57D24, v1, 0);
}

uint64_t sub_100B57D24()
{
  v1 = v0[21];
  v2 = v0[20];
  if ((*(v0[22] + 48))(v2, 1, v1) == 1)
  {
    v3 = v0[24];
    sub_10000B3A8(v2, &unk_1016B29E0, &unk_1013B70E0);

    return _swift_task_switch(sub_100B57E98, v3, 0);
  }

  else
  {
    v4 = v0[23];
    sub_100038EDC(v2, v4, type metadata accessor for BeaconNamingRecord);
    v5 = (v4 + *(v1 + 32));
    v7 = *v5;
    v6 = v5[1];

    sub_10002FF48(v4, type metadata accessor for BeaconNamingRecord);

    v8 = v0[1];

    return v8(v7, v6);
  }
}

uint64_t sub_100B57E98()
{

  v1 = swift_task_alloc();
  *(v0 + 216) = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  *v1 = v0;
  v1[1] = sub_100B57F78;
  v3 = *(v0 + 192);

  return unsafeBlocking<A>(context:_:)(v0 + 88, 0xD000000000000010, 0x800000010134A8C0, sub_1000D27E4, v3, v2);
}

uint64_t sub_100B57F78()
{
  v1 = *(*v0 + 192);

  return _swift_task_switch(sub_100B58090, v1, 0);
}

uint64_t sub_100B58090()
{
  v1 = v0[13];
  v0[28] = v0[11];
  return _swift_task_switch(sub_100B580B4, v1, 0);
}

uint64_t sub_100B580B4()
{
  v0 = getuid();
  sub_1000294F0(v0);

  return _swift_task_switch(sub_100B58124, 0, 0);
}

uint64_t sub_100B58124()
{
  v1 = swift_task_alloc();
  v0[29] = v1;
  *v1 = v0;
  v1[1] = sub_100B581D4;
  v2 = v0[17];
  v3 = v0[12];

  return sub_100687A6C((v0 + 2), v3, v2);
}

uint64_t sub_100B581D4()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_100B583E8;
    v4 = 0;
  }

  else
  {
    v5 = v2[17];
    v6 = v2[14];
    v7 = v2[15];
    v8 = v2[13];
    (*(v7 + 8))(v5, v6);

    v3 = sub_100B5831C;
    v4 = v8;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_100B5831C()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[2];

    sub_10000B3A8((v0 + 2), &unk_1016AF910, &unk_10138C4C0);
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_100B583E8()
{
  v1 = v0[13];
  (*(v0[15] + 8))(v0[17], v0[14]);

  return _swift_task_switch(sub_100B58470, v1, 0);
}

uint64_t sub_100B58470()
{

  v1 = *(v0 + 8);

  return v1(0, 0);
}

uint64_t sub_100B58500()
{

  swift_unownedRelease();

  sub_10000B3A8(v0 + 144, &qword_1016B6108, &unk_1013D7910);
  swift_unknownObjectRelease();

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100B58578()
{
  sub_100B58500();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100B585C8(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for ItemSharingNotificationsService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_100B58670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ItemSharingNotificationsService();
  *v8 = v4;
  v8[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v9, a4);
}

uint64_t sub_100B58734(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for ItemSharingNotificationsService();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_100B587DC(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for ItemSharingNotificationsService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.startup()(v5, a2);
}

uint64_t sub_100B58884(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for ItemSharingNotificationsService();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.run()(v5, a2);
}

uint64_t sub_100B5892C()
{
  type metadata accessor for ItemSharingNotificationsService();
  sub_100B5AB90(&qword_1016B1160, v0, type metadata accessor for ItemSharingNotificationsService, &unk_1013D77C8);
  return ActorServiceProtocol.description.getter();
}

unint64_t sub_100B58A3C()
{
  result = qword_1016B6090;
  if (!qword_1016B6090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6090);
  }

  return result;
}

uint64_t sub_100B58AAC(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v50 = a5;
  v7 = a3;
  v10 = sub_1000BC4D4(a3, a4);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v48 - v16;
  __chkstk_darwin(v15);
  v19 = &v48 - v18;
  v52 = v5;
  v20 = *v5;
  v60 = a1;
  v21 = v62;
  result = sub_100B58E14(a1, a2, v20, v7, a4);
  if (!v21)
  {
    v56 = v19;
    v51 = v17;
    v49 = v14;
    v62 = 0;
    if (v23)
    {
      return *(v20 + 16);
    }

    v54 = a2;
    v57 = a4;
    v59 = result;
    v24 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v25 = v20;
      v27 = (v20 + 16);
      v26 = *(v20 + 16);
      v28 = v56;
      if (v24 == v26)
      {
        return v59;
      }

      v29 = v60;
      v53 = v11;
      while (v24 < v26)
      {
        v30 = (*(v11 + 80) + 32) & ~*(v11 + 80);
        v61 = v25;
        v55 = v30;
        v31 = v25 + v30;
        v32 = v29;
        v33 = *(v11 + 72);
        v58 = v33 * v24;
        v34 = v7;
        v35 = v57;
        sub_1000D2A70(v31 + v33 * v24, v28, v7, v57);
        v36 = v28;
        v37 = v62;
        v38 = v32(v28);
        v39 = v36;
        v7 = v34;
        result = sub_10000B3A8(v39, v34, v35);
        v62 = v37;
        if (v37)
        {
          return result;
        }

        if (v38)
        {
          v29 = v60;
          v25 = v61;
          v11 = v53;
        }

        else
        {
          v40 = v59;
          if (v24 == v59)
          {
            v29 = v60;
            v25 = v61;
            v11 = v53;
          }

          else
          {
            if ((v59 & 0x8000000000000000) != 0)
            {
              goto LABEL_27;
            }

            v41 = *v27;
            if (v59 >= v41)
            {
              goto LABEL_28;
            }

            v42 = v33 * v59;
            v43 = v31 + v33 * v59;
            v44 = v57;
            result = sub_1000D2A70(v43, v51, v34, v57);
            if (v24 >= v41)
            {
              goto LABEL_29;
            }

            v45 = v49;
            sub_1000D2A70(v31 + v58, v49, v34, v44);
            v46 = v44;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v29 = v60;
              v25 = v61;
            }

            else
            {
              v25 = v50(v61);
              v29 = v60;
            }

            v11 = v53;
            v47 = v25 + v55;
            result = sub_10002311C(v45, v25 + v55 + v42, v7, v46);
            if (v24 >= *(v25 + 16))
            {
              goto LABEL_30;
            }

            result = sub_10002311C(v51, v47 + v58, v7, v46);
            *v52 = v25;
            v40 = v59;
          }

          v59 = v40 + 1;
        }

        v28 = v56;
        ++v24;
        v27 = (v25 + 16);
        v26 = *(v25 + 16);
        if (v24 == v26)
        {
          return v59;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100B58E14(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v6 = *(a3 + 16);
  if (!v6)
  {
    return 0;
  }

  v11 = 0;
  while (1)
  {
    v12 = *(sub_1000BC4D4(a4, a5) - 8);
    v13 = a1(a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v11);
    if (v5 || (v13 & 1) != 0)
    {
      break;
    }

    if (v6 == ++v11)
    {
      return 0;
    }
  }

  return v11;
}

uint64_t sub_100B58F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v42 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48[3] = type metadata accessor for DelegatedShareStartUserNotification(0);
  v48[4] = &off_10160E238;
  v9 = sub_1000280DC(v48);
  sub_100B5AAA0(a1, v9, type metadata accessor for DelegatedShareStartUserNotification);
  v10 = objc_allocWithZone(UNUserNotificationCenter);
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 initWithBundleIdentifier:v11];

  v13 = sub_101119244(v9);
  UUID.uuidString.getter();
  v14 = v13;
  v15 = String._bridgeToObjectiveC()();

  v16 = [objc_opt_self() requestWithIdentifier:v15 content:v14 trigger:0 destinations:7];

  if (qword_101694ED8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177C120);
  sub_10001F280(v48, aBlock);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v40 = v19;
    v21 = v20;
    v22 = swift_slowAlloc();
    v41 = v16;
    v39 = v22;
    *&v47[0] = v22;
    *v21 = 136315138;
    v23 = sub_1000035D0(aBlock, v44);
    v24 = v42;
    v25 = v8;
    (*(v42 + 16))(v8, v23, v6);
    sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v6;
    v28 = v14;
    v29 = v12;
    v30 = a2;
    v31 = a3;
    v33 = v32;
    (*(v24 + 8))(v25, v27);
    sub_100007BAC(aBlock);
    v34 = sub_1000136BC(v26, v33, v47);
    a3 = v31;
    a2 = v30;
    v12 = v29;
    v14 = v28;

    *(v21 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v18, v40, "Notification with identifier %s **WILL NOT** be forwarded to the companion", v21, 0xCu);
    sub_100007BAC(v39);
    v16 = v41;
  }

  else
  {

    sub_100007BAC(aBlock);
  }

  sub_10001F280(v48, v47);
  v35 = swift_allocObject();
  sub_10000A748(v47, v35 + 16);
  *(v35 + 56) = a2;
  *(v35 + 64) = a3;
  v45 = sub_1007A9F68;
  v46 = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10077732C;
  v44 = &unk_101649078;
  v36 = _Block_copy(aBlock);
  sub_100012908(a2, a3);

  [v12 addNotificationRequest:v16 withCompletionHandler:v36];

  _Block_release(v36);
  return sub_100007BAC(v48);
}

uint64_t sub_100B593C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v42 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48[3] = type metadata accessor for DelegatedShareOwnerReunitedUserNotification(0);
  v48[4] = &off_101644E20;
  v9 = sub_1000280DC(v48);
  sub_100B5AAA0(a1, v9, type metadata accessor for DelegatedShareOwnerReunitedUserNotification);
  v10 = objc_allocWithZone(UNUserNotificationCenter);
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 initWithBundleIdentifier:v11];

  v13 = sub_101119A58(v9);
  UUID.uuidString.getter();
  v14 = v13;
  v15 = String._bridgeToObjectiveC()();

  v16 = [objc_opt_self() requestWithIdentifier:v15 content:v14 trigger:0 destinations:7];

  if (qword_101694ED8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177C120);
  sub_10001F280(v48, aBlock);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v40 = v19;
    v21 = v20;
    v22 = swift_slowAlloc();
    v41 = v16;
    v39 = v22;
    *&v47[0] = v22;
    *v21 = 136315138;
    v23 = sub_1000035D0(aBlock, v44);
    v24 = v42;
    v25 = v8;
    (*(v42 + 16))(v8, v23, v6);
    sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v6;
    v28 = v14;
    v29 = v12;
    v30 = a2;
    v31 = a3;
    v33 = v32;
    (*(v24 + 8))(v25, v27);
    sub_100007BAC(aBlock);
    v34 = sub_1000136BC(v26, v33, v47);
    a3 = v31;
    a2 = v30;
    v12 = v29;
    v14 = v28;

    *(v21 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v18, v40, "Notification with identifier %s **WILL NOT** be forwarded to the companion", v21, 0xCu);
    sub_100007BAC(v39);
    v16 = v41;
  }

  else
  {

    sub_100007BAC(aBlock);
  }

  sub_10001F280(v48, v47);
  v35 = swift_allocObject();
  sub_10000A748(v47, v35 + 16);
  *(v35 + 56) = a2;
  *(v35 + 64) = a3;
  v45 = sub_1007A9F68;
  v46 = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10077732C;
  v44 = &unk_101648F88;
  v36 = _Block_copy(aBlock);
  sub_100012908(a2, a3);

  [v12 addNotificationRequest:v16 withCompletionHandler:v36];

  _Block_release(v36);
  return sub_100007BAC(v48);
}

uint64_t sub_100B59870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v42 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48[3] = type metadata accessor for DelegatedShareShareeReunitedShareeUserNotification(0);
  v48[4] = &off_101644E88;
  v9 = sub_1000280DC(v48);
  sub_100B5AAA0(a1, v9, type metadata accessor for DelegatedShareShareeReunitedShareeUserNotification);
  v10 = objc_allocWithZone(UNUserNotificationCenter);
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 initWithBundleIdentifier:v11];

  v13 = sub_101119FBC(v9);
  UUID.uuidString.getter();
  v14 = v13;
  v15 = String._bridgeToObjectiveC()();

  v16 = [objc_opt_self() requestWithIdentifier:v15 content:v14 trigger:0 destinations:7];

  if (qword_101694ED8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177C120);
  sub_10001F280(v48, aBlock);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v40 = v19;
    v21 = v20;
    v22 = swift_slowAlloc();
    v41 = v16;
    v39 = v22;
    *&v47[0] = v22;
    *v21 = 136315138;
    v23 = sub_1000035D0(aBlock, v44);
    v24 = v42;
    v25 = v8;
    (*(v42 + 16))(v8, v23, v6);
    sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v6;
    v28 = v14;
    v29 = v12;
    v30 = a2;
    v31 = a3;
    v33 = v32;
    (*(v24 + 8))(v25, v27);
    sub_100007BAC(aBlock);
    v34 = sub_1000136BC(v26, v33, v47);
    a3 = v31;
    a2 = v30;
    v12 = v29;
    v14 = v28;

    *(v21 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v18, v40, "Notification with identifier %s **WILL NOT** be forwarded to the companion", v21, 0xCu);
    sub_100007BAC(v39);
    v16 = v41;
  }

  else
  {

    sub_100007BAC(aBlock);
  }

  sub_10001F280(v48, v47);
  v35 = swift_allocObject();
  sub_10000A748(v47, v35 + 16);
  *(v35 + 56) = a2;
  *(v35 + 64) = a3;
  v45 = sub_1007A9F68;
  v46 = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10077732C;
  v44 = &unk_101648F10;
  v36 = _Block_copy(aBlock);
  sub_100012908(a2, a3);

  [v12 addNotificationRequest:v16 withCompletionHandler:v36];

  _Block_release(v36);
  return sub_100007BAC(v48);
}

uint64_t sub_100B59D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v42 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48[3] = type metadata accessor for DelegatedShareExpirationUserNotification(0);
  v48[4] = &off_101644DB8;
  v9 = sub_1000280DC(v48);
  sub_100B5AAA0(a1, v9, type metadata accessor for DelegatedShareExpirationUserNotification);
  v10 = objc_allocWithZone(UNUserNotificationCenter);
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 initWithBundleIdentifier:v11];

  v13 = sub_10111A51C(v9);
  UUID.uuidString.getter();
  v14 = v13;
  v15 = String._bridgeToObjectiveC()();

  v16 = [objc_opt_self() requestWithIdentifier:v15 content:v14 trigger:0 destinations:7];

  if (qword_101694ED8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177C120);
  sub_10001F280(v48, aBlock);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v40 = v19;
    v21 = v20;
    v22 = swift_slowAlloc();
    v41 = v16;
    v39 = v22;
    *&v47[0] = v22;
    *v21 = 136315138;
    v23 = sub_1000035D0(aBlock, v44);
    v24 = v42;
    v25 = v8;
    (*(v42 + 16))(v8, v23, v6);
    sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v6;
    v28 = v14;
    v29 = v12;
    v30 = a2;
    v31 = a3;
    v33 = v32;
    (*(v24 + 8))(v25, v27);
    sub_100007BAC(aBlock);
    v34 = sub_1000136BC(v26, v33, v47);
    a3 = v31;
    a2 = v30;
    v12 = v29;
    v14 = v28;

    *(v21 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v18, v40, "Notification with identifier %s **WILL NOT** be forwarded to the companion", v21, 0xCu);
    sub_100007BAC(v39);
    v16 = v41;
  }

  else
  {

    sub_100007BAC(aBlock);
  }

  sub_10001F280(v48, v47);
  v35 = swift_allocObject();
  sub_10000A748(v47, v35 + 16);
  *(v35 + 56) = a2;
  *(v35 + 64) = a3;
  v45 = sub_1007A9F68;
  v46 = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10077732C;
  v44 = &unk_101649000;
  v36 = _Block_copy(aBlock);
  sub_100012908(a2, a3);

  [v12 addNotificationRequest:v16 withCompletionHandler:v36];

  _Block_release(v36);
  return sub_100007BAC(v48);
}

uint64_t sub_100B5A1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v42 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48[3] = type metadata accessor for DelegatedSharMaxViewsUserNotification(0);
  v48[4] = &off_101644EF0;
  v9 = sub_1000280DC(v48);
  sub_100B5AAA0(a1, v9, type metadata accessor for DelegatedSharMaxViewsUserNotification);
  v10 = objc_allocWithZone(UNUserNotificationCenter);
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 initWithBundleIdentifier:v11];

  v13 = sub_10111AA80(v9);
  UUID.uuidString.getter();
  v14 = v13;
  v15 = String._bridgeToObjectiveC()();

  v16 = [objc_opt_self() requestWithIdentifier:v15 content:v14 trigger:0 destinations:7];

  if (qword_101694ED8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177C120);
  sub_10001F280(v48, aBlock);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v40 = v19;
    v21 = v20;
    v22 = swift_slowAlloc();
    v41 = v16;
    v39 = v22;
    *&v47[0] = v22;
    *v21 = 136315138;
    v23 = sub_1000035D0(aBlock, v44);
    v24 = v42;
    v25 = v8;
    (*(v42 + 16))(v8, v23, v6);
    sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v6;
    v28 = v14;
    v29 = v12;
    v30 = a2;
    v31 = a3;
    v33 = v32;
    (*(v24 + 8))(v25, v27);
    sub_100007BAC(aBlock);
    v34 = sub_1000136BC(v26, v33, v47);
    a3 = v31;
    a2 = v30;
    v12 = v29;
    v14 = v28;

    *(v21 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v18, v40, "Notification with identifier %s **WILL NOT** be forwarded to the companion", v21, 0xCu);
    sub_100007BAC(v39);
    v16 = v41;
  }

  else
  {

    sub_100007BAC(aBlock);
  }

  sub_10001F280(v48, v47);
  v35 = swift_allocObject();
  sub_10000A748(v47, v35 + 16);
  *(v35 + 56) = a2;
  *(v35 + 64) = a3;
  v45 = sub_100358EC4;
  v46 = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10077732C;
  v44 = &unk_101648E98;
  v36 = _Block_copy(aBlock);
  sub_100012908(a2, a3);

  [v12 addNotificationRequest:v16 withCompletionHandler:v36];

  _Block_release(v36);
  return sub_100007BAC(v48);
}

unint64_t sub_100B5A68C()
{
  result = qword_1016B6098;
  if (!qword_1016B6098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6098);
  }

  return result;
}

unint64_t sub_100B5A6E0()
{
  result = qword_1016B60A0;
  if (!qword_1016B60A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B60A0);
  }

  return result;
}

uint64_t sub_100B5A784(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100B4BDEC(a1, v1);
}

uint64_t sub_100B5A81C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100B4C3D4(a1, v1);
}

uint64_t sub_100B5A8B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100B4C9BC(a1, v4, v5, v6);
}

uint64_t sub_100B5A9F4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_100B41634(a1, a2, v2);
}

uint64_t sub_100B5AAA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100B5AB08(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_100B5AB90(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_100B5ABEC()
{
  result = qword_1016B6110;
  if (!qword_1016B6110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6110);
  }

  return result;
}

uint64_t sub_100B5AC90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_101699BA8, &unk_1013926B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  v7 = type metadata accessor for URLComponents();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OfflineLostModeInfoLookupEndpoint(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = URL.absoluteString.getter();
  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    URLComponents.init(string:)();

    v18 = type metadata accessor for URL();
    (*(*(v18 - 8) + 8))(a1, v18);
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      v21 = *(v8 + 32);
      v21(v10, v6, v7);
      v21(v14, v10, v7);
      sub_100B5B00C(v14, a2);
      v20 = 0;
      return (*(v12 + 56))(a2, v20, 1, v11);
    }

    sub_100B5AFA4(v6);
  }

  else
  {
    v19 = type metadata accessor for URL();
    (*(*(v19 - 8) + 8))(a1, v19);
  }

  v20 = 1;
  return (*(v12 + 56))(a2, v20, 1, v11);
}

uint64_t type metadata accessor for OfflineLostModeInfoLookupEndpoint(uint64_t a1)
{
  result = qword_1016B6170;
  if (!qword_1016B6170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100B5AFA4(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_101699BA8, &unk_1013926B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100B5B00C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfflineLostModeInfoLookupEndpoint(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100B5B098()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016B61A8);
  v1 = sub_1000076D4(v0, qword_1016B61A8);
  if (qword_101694CC8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177BBF0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100B5B160()
{
  v0 = type metadata accessor for Table();
  sub_100044B3C(v0, qword_10177BAB8);
  sub_1000076D4(v0, qword_10177BAB8);
  return Table.init(_:database:)();
}

uint64_t sub_100B5B1CC(uint64_t a1, char a2)
{
  *(v3 + 72) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = type metadata accessor for DatabaseState();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_100B5B290, 0, 0);
}

uint64_t sub_100B5B290()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 72);
  v6 = *(v0 + 16);
  swift_defaultActor_initialize();
  (*(v2 + 104))(v1, enum case for DatabaseState.unavailable(_:), v4);
  sub_1000BC4D4(&qword_1016A9010, &qword_1013BA868);
  v7 = swift_allocObject();
  *(v7 + ((*(*v7 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  (*(v2 + 16))(v7 + *(*v7 + class metadata base offset for ManagedBuffer + 16), v1, v4);
  (*(v2 + 8))(v1, v4);
  *(v3 + 14) = v7;
  sub_1000BC4D4(&qword_1016A9018, &unk_1013BA870);
  swift_allocObject();
  *(v3 + 15) = AsyncStreamProvider.init()();
  *(v3 + 16) = 0;
  *&v3[OBJC_IVAR____TtC12searchpartyd20LocalStorageDatabase_currentVersion] = 1;
  v8 = OBJC_IVAR____TtC12searchpartyd20LocalStorageDatabase_baseContainerURL;
  v9 = type metadata accessor for URL();
  *(v0 + 56) = v9;
  v10 = *(v9 - 8);
  *(v0 + 64) = v10;
  (*(v10 + 16))(&v3[v8], v6, v9);
  v3[OBJC_IVAR____TtC12searchpartyd20LocalStorageDatabase_temporary] = v5;

  return _swift_task_switch(sub_100767500, v3, 0);
}

uint64_t sub_100B5B4C8()
{

  v1 = OBJC_IVAR____TtC12searchpartyd20LocalStorageDatabase_baseContainerURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for LocalStorageDatabase(uint64_t a1)
{
  result = qword_1016B61E8;
  if (!qword_1016B61E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100B5B5AC(uint64_t a1)
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

uint64_t sub_100B5B6AC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12searchpartyd20LocalStorageDatabase_baseContainerURL;
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100B5B75C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 128) = a1;
}

uint64_t sub_100B5B81C()
{
  URL.appendingPathComponent(_:isDirectory:)();
  URL.appendingPathComponent(_:isDirectory:)();
  return URL.appendingPathComponent(_:isDirectory:)();
}

uint64_t sub_100B5B904()
{
  v1 = type metadata accessor for DatabaseState();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 112);
  v6 = *(*v5 + class metadata base offset for ManagedBuffer + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  v12 = *(v2 + 8);
  v12((v5 + v6), v1);
  v8 = enum case for DatabaseState.available(_:);
  v9 = *(v2 + 104);
  v9((v5 + v6), enum case for DatabaseState.available(_:), v1);
  os_unfair_lock_unlock((v5 + v7));
  v9(v4, v8, v1);
  AsyncStreamProvider.yield(value:transaction:)();
  return v12(v4, v1);
}

void sub_100B5BAB8(int a1, int a2, uint64_t a3)
{
  v20 = *v3;
  v6 = type metadata accessor for Connection.TransactionMode();
  v21 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694C58 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_1016B61A8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109376;
    *(v12 + 4) = a1;
    *(v12 + 8) = 1024;
    *(v12 + 10) = a2;
    _os_log_impl(&_mh_execute_header, v10, v11, "Migrate schema %d -> %d", v12, 0xEu);
  }

  if (a2 == 1)
  {
    v13._countAndFlagsBits = 0xD00000000000001FLL;
    v13._object = 0x80000001013513F0;
    Connection.execute(_:)(v13);
    if (!v14)
    {
      v15._countAndFlagsBits = 0xD000000000000018;
      v15._object = 0x8000000101351410;
      Connection.execute(_:)(v15);
      if (!v17)
      {
        __chkstk_darwin(v16);
        v18 = v21;
        (*(v21 + 104))(v8, enum case for Connection.TransactionMode.deferred(_:), v6);
        Connection.transaction(_:block:)();
        (*(v18 + 8))(v8, v6);
      }
    }
  }

  else
  {
    v22 = 0;
    v23 = 0xE000000000000000;
    _StringGuts.grow(_:)(21);

    v22 = 0xD000000000000013;
    v23 = 0x800000010135ECD0;
    v24 = a2;
    v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v19);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t sub_100B5BEB8()
{
  type metadata accessor for LocalStorageDatabase(0);
  sub_100B5DD20(&qword_1016B62E0, &unk_1013D7B20);
  return Database.description.getter();
}

uint64_t sub_100B5BF10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  v2 = type metadata accessor for LocalStorageDatabase(0);
  v3 = sub_100B5DD20(&qword_1016B62E0, &unk_1013D7B20);
  *v1 = v0;
  v1[1] = sub_1007682F4;

  return Database.isolatedDescription.getter(v2, v3);
}

uint64_t sub_100B5C048()
{
  if (qword_101694C60 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Table();
  sub_1000076D4(v1, qword_10177BAB8);
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (v0)
  {
  }

  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_101385D80;
  if (qword_101694CB0 != -1)
  {
    swift_once();
  }

  v3 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  v4 = sub_1000076D4(v3, qword_10177BBA8);
  *(v2 + 56) = v3;
  *(v2 + 64) = sub_1000041A4(&qword_101699E98, &qword_101699DC0, &unk_10139D110, &protocol conformance descriptor for Expression<A>);
  v5 = sub_1000280DC((v2 + 32));
  (*(*(v3 - 8) + 16))(v5, v4, v3);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();
}

uint64_t sub_100B5C2AC()
{
  v0 = sub_1000BC4D4(&qword_10169DE58, &unk_10139D1B0);
  __chkstk_darwin(v0 - 8);
  v59 = v50 - v1;
  v2 = sub_1000BC4D4(&qword_10169DE60, &unk_10139D1C0);
  __chkstk_darwin(v2 - 8);
  v55 = v50 - v3;
  v4 = sub_1000BC4D4(&qword_10169DE20, &unk_10139D180);
  __chkstk_darwin(v4 - 8);
  v61 = v50 - v5;
  v6 = sub_1000BC4D4(&unk_1016AB5A0, &unk_1013BF4D0);
  __chkstk_darwin(v6 - 8);
  v54 = v50 - v7;
  v8 = sub_1000BC4D4(&qword_10169DE50, &qword_10139D1A8);
  __chkstk_darwin(v8 - 8);
  v53 = v50 - v9;
  v10 = sub_1000BC4D4(&qword_10169DE40, &unk_1013D7C00);
  __chkstk_darwin(v10 - 8);
  v60 = v50 - v11;
  v12 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  __chkstk_darwin(v12 - 8);
  v14 = v50 - v13;
  v15 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  __chkstk_darwin(v15 - 8);
  v17 = v50 - v16;
  if (qword_101694C68 != -1)
  {
    swift_once();
  }

  v18 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v19 = sub_1000076D4(v18, qword_10177BAD0);
  v20 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v21 = *(*(v20 - 8) + 56);
  v62 = v20;
  v21(v17, 1, 1);
  v56 = *(v18 - 8);
  v22 = *(v56 + 56);
  v22(v14, 1, 1, v18);
  type metadata accessor for UUID();
  v57 = v19;
  TableBuilder.column<A>(_:primaryKey:check:defaultValue:)();
  sub_10000B3A8(v14, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v17, &qword_10169DE30, &unk_10139D190);
  if (qword_101694C70 != -1)
  {
    swift_once();
  }

  v23 = sub_1000BC4D4(&qword_101699E70, &unk_101393160);
  sub_1000076D4(v23, qword_10177BAE8);
  (v21)(v17, 1, 1, v62);
  v58 = v18;
  v22(v14, 1, 1, v18);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v14, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v17, &qword_10169DE30, &unk_10139D190);
  if (qword_101694CB0 != -1)
  {
    swift_once();
  }

  v24 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v24, qword_10177BBA8);
  v25 = v62;
  (v21)(v17, 1, 1, v62);
  v26 = *(v24 - 8);
  v27 = v60;
  v51 = *(v26 + 56);
  v52 = v24;
  v50[1] = v26 + 56;
  v51(v60, 1, 1, v24);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v27, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v17, &qword_10169DE30, &unk_10139D190);
  if (qword_101694C80 != -1)
  {
    swift_once();
  }

  v28 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  sub_1000076D4(v28, qword_10177BB18);
  (v21)(v17, 1, 1, v25);
  v29 = v53;
  (*(*(v28 - 8) + 56))(v53, 1, 1, v28);
  sub_100028088();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v29, &qword_10169DE50, &qword_10139D1A8);
  sub_10000B3A8(v17, &qword_10169DE30, &unk_10139D190);
  if (qword_101694C90 != -1)
  {
    swift_once();
  }

  v30 = sub_1000BC4D4(&qword_101699E60, &unk_1013BF4C0);
  sub_1000076D4(v30, qword_10177BB48);
  (v21)(v17, 1, 1, v25);
  v31 = *(*(v30 - 8) + 56);
  v32 = v54;
  v31(v54, 1, 1, v30);
  sub_10022A60C();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v32, &unk_1016AB5A0, &unk_1013BF4D0);
  sub_10000B3A8(v17, &qword_10169DE30, &unk_10139D190);
  if (qword_101694C88 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v30, qword_10177BB30);
  (v21)(v17, 1, 1, v62);
  v31(v32, 1, 1, v30);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v32, &unk_1016AB5A0, &unk_1013BF4D0);
  sub_10000B3A8(v17, &qword_10169DE30, &unk_10139D190);
  if (qword_101694CB8 != -1)
  {
    swift_once();
  }

  v33 = sub_1000BC4D4(&qword_10169DDD0, &unk_10139D140);
  sub_1000076D4(v33, qword_10177BBC0);
  v34 = v62;
  (v21)(v17, 1, 1, v62);
  v35 = v60;
  v51(v60, 1, 1, v52);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v35, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v17, &qword_10169DE30, &unk_10139D190);
  v36 = v61;
  if (qword_101694C78 != -1)
  {
    swift_once();
  }

  v37 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_1000076D4(v37, qword_10177BB00);
  (v21)(v17, 1, 1, v34);
  v38 = *(*(v37 - 8) + 56);
  v38(v36, 1, 1, v37);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v36, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v17, &qword_10169DE30, &unk_10139D190);
  if (qword_101694C98 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v37, qword_10177BB60);
  (v21)(v17, 1, 1, v34);
  v60 = v38;
  v38(v36, 1, 1, v37);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v36, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v17, &qword_10169DE30, &unk_10139D190);
  v39 = v21;
  if (qword_101694CA0 != -1)
  {
    swift_once();
  }

  v40 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  sub_1000076D4(v40, qword_10177BB78);
  (v21)(v17, 1, 1, v34);
  v41 = v55;
  (*(*(v40 - 8) + 56))(v55, 1, 1, v40);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v41, &qword_10169DE60, &unk_10139D1C0);
  sub_10000B3A8(v17, &qword_10169DE30, &unk_10139D190);
  if (qword_101694CA8 != -1)
  {
    swift_once();
  }

  v42 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_1000076D4(v42, qword_10177BB90);
  v39(v17, 1, 1, v34);
  v43 = v61;
  (v60)(v61, 1, 1, v37);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v43, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v17, &qword_10169DE30, &unk_10139D190);
  if (qword_101694CC0 != -1)
  {
    swift_once();
  }

  v44 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v44, qword_10177BBD8);
  v39(v17, 1, 1, v34);
  v45 = v59;
  (*(*(v44 - 8) + 56))(v59, 1, 1, v44);
  type metadata accessor for Date();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v45, &qword_10169DE58, &unk_10139D1B0);
  sub_10000B3A8(v17, &qword_10169DE30, &unk_10139D190);
  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_101385D80;
  v47 = v58;
  *(v46 + 56) = v58;
  *(v46 + 64) = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0, &protocol conformance descriptor for Expression<A>);
  v48 = sub_1000280DC((v46 + 32));
  (*(v56 + 16))(v48, v57, v47);
  TableBuilder.unique(_:)();
}

uint64_t sub_100B5D1DC()
{
  v0 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_100044B3C(v0, qword_10177BAD0);
  sub_1000076D4(v0, qword_10177BAD0);
  sub_1000041A4(&qword_10169DDB0, &qword_101699D10, &unk_1013930B0, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_100B5D284()
{
  v0 = sub_1000BC4D4(&qword_101699E70, &unk_101393160);
  sub_100044B3C(v0, qword_10177BAE8);
  sub_1000076D4(v0, qword_10177BAE8);
  sub_1000041A4(&qword_101699EB0, &qword_101699E70, &unk_101393160, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_100B5D338()
{
  v0 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_100044B3C(v0, qword_10177BB00);
  sub_1000076D4(v0, qword_10177BB00);
  sub_1000041A4(&qword_10169DE08, &qword_10169DE00, &unk_10139D160, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_100B5D3F8()
{
  v0 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  sub_100044B3C(v0, qword_10177BB18);
  sub_1000076D4(v0, qword_10177BB18);
  sub_1000041A4(&qword_10169DDA8, &qword_101699DA0, &unk_10139D120, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_100B5D4A8()
{
  v0 = sub_1000BC4D4(&qword_101699E60, &unk_1013BF4C0);
  sub_100044B3C(v0, qword_10177BB30);
  sub_1000076D4(v0, qword_10177BB30);
  sub_1000041A4(&qword_1016AB598, &qword_101699E60, &unk_1013BF4C0, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_100B5D560()
{
  v0 = sub_1000BC4D4(&qword_101699E60, &unk_1013BF4C0);
  sub_100044B3C(v0, qword_10177BB48);
  sub_1000076D4(v0, qword_10177BB48);
  sub_1000041A4(&qword_1016AB598, &qword_101699E60, &unk_1013BF4C0, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_100B5D614()
{
  v0 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_100044B3C(v0, qword_10177BB60);
  sub_1000076D4(v0, qword_10177BB60);
  sub_1000041A4(&qword_10169DE08, &qword_10169DE00, &unk_10139D160, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_100B5D6D0()
{
  v0 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  sub_100044B3C(v0, qword_10177BB78);
  sub_1000076D4(v0, qword_10177BB78);
  sub_1000041A4(&qword_10169DE18, &qword_101699E88, &unk_10139D170, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_100B5D790()
{
  v0 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_100044B3C(v0, qword_10177BB90);
  sub_1000076D4(v0, qword_10177BB90);
  sub_1000041A4(&qword_10169DDE8, &qword_10169DDE0, &unk_1013B6420, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_100B5D84C()
{
  v0 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_100044B3C(v0, qword_10177BBA8);
  sub_1000076D4(v0, qword_10177BBA8);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_100B5D908()
{
  v0 = sub_1000BC4D4(&qword_10169DDD0, &unk_10139D140);
  sub_100044B3C(v0, qword_10177BBC0);
  sub_1000076D4(v0, qword_10177BBC0);
  sub_1000041A4(&qword_10169DDD8, &qword_10169DDD0, &unk_10139D140, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_100B5D9C0()
{
  v0 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_100044B3C(v0, qword_10177BBD8);
  sub_1000076D4(v0, qword_10177BBD8);
  sub_1000041A4(&qword_101699D88, &qword_101699D78, &unk_1013BF4B0, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_100B5DA78()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BBF0);
  sub_1000076D4(v0, qword_10177BBF0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100B5DAF8()
{
  v1 = type metadata accessor for Keychain.DataProtectionClass();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = static Keychain.data(account:service:)();
  if (!v0 && v6 >> 60 == 15)
  {
    v7 = static Data.random(bytes:)();
    v9 = v8;
    v11[0] = v7;
    v11[1] = v8;
    (*(v2 + 104))(v4, enum case for Keychain.DataProtectionClass.c(_:), v1);
    v12 = v7;
    sub_100017D5C(v7, v9);
    sub_1000E0A3C();
    static Keychain.set<A>(data:account:service:dataProtectionClass:)();
    (*(v2 + 8))(v4, v1);
    v10 = v12;
    sub_100016590(v12, v9);
    return v10;
  }

  return result;
}

uint64_t sub_100B5DD20(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LocalStorageDatabase(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

searchpartyd::MessagingDestination __swiftcall MessagingDestination.init(phoneNumber:)(Swift::String phoneNumber)
{
  v1 = String._bridgeToObjectiveC()();
  v2 = IDSCopyIDForPhoneNumber();

  if (v2)
  {

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v3 = searchpartyd_MessagingDestination_DestinationType_phoneNumber;
    v4 = v6;
    v5 = v8;
  }

  else
  {
    __break(1u);
  }

  result.destination._object = v5;
  result.destination._countAndFlagsBits = v4;
  result.type = v3;
  return result;
}

searchpartyd::MessagingDestination __swiftcall MessagingDestination.init(email:)(Swift::String email)
{
  v1 = String._bridgeToObjectiveC()();
  v2 = IDSCopyIDForEmailAddress();

  if (v2)
  {

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v3 = searchpartyd_MessagingDestination_DestinationType_email;
    v4 = v6;
    v5 = v8;
  }

  else
  {
    __break(1u);
  }

  result.destination._object = v5;
  result.destination._countAndFlagsBits = v4;
  result.type = v3;
  return result;
}

uint64_t static MessagingDestination.== infix(_:_:)(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  if (a2 == a5 && a3 == a6)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100B5DEBC(unsigned __int8 a1, uint64_t a2, void *a3)
{
  if (a1 - 2 < 4)
  {
    return 2;
  }

  if (!a1)
  {
    v4 = sub_100EB3708(0, a2, a3);
    v5 = [v4 destination];

    if (!v5)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = String._bridgeToObjectiveC()();
    }

    v6 = CMFItemCreateWithEmailAddress();

    if (v6)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  v7 = sub_100EB3708(1, a2, a3);
  v8 = [v7 destination];

  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();
  }

  v9 = CFPhoneNumberCreate();

  result = CMFItemCreateWithPhoneNumber();
  if (result)
  {

LABEL_12:
    IsItemBlocked = CMFBlockListIsItemBlocked();
    swift_unknownObjectRelease();
    return IsItemBlocked != 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_100B5E0B8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 != 2)
  {
    v12 = a1;

    return v12;
  }

  v5 = String._bridgeToObjectiveC()();
  v6 = [v5 _stripPotentialTokenURIWithToken:0];

  if (v6)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    _s12searchpartyd20MessagingDestinationV6stringACSgSS_tcfC_0(v7, v9);
    if (v11)
    {
      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  _StringGuts.grow(_:)(39);

  v14._countAndFlagsBits = a2;
  v14._object = a3;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0xD000000000000013;
  v15._object = 0x800000010136DD00;
  String.append(_:)(v15);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100B5E220()
{
  if (*v0)
  {
    return 0x74616E6974736564;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_100B5E25C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69)
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

uint64_t sub_100B5E33C(uint64_t a1)
{
  v2 = sub_100B5EA34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B5E378(uint64_t a1)
{
  v2 = sub_100B5EA34();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t MessagingDestination.encode(to:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v7 = sub_1000BC4D4(&qword_1016B62E8, &qword_1013D7C30);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_1000035D0(a1, a1[3]);
  sub_100B5EA34();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v14 = 0;
  sub_100B5EA88();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100B5E580@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_100B5EADC(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_100B5E5D0()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t MessagingDestination.hash(into:)(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  Hasher._combine(_:)(a2);

  return String.hash(into:)();
}

Swift::Int MessagingDestination.hashValue.getter(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100B5E6BC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100B5E720(uint64_t a1)
{
  Hasher._combine(_:)(*v1);

  return String.hash(into:)();
}

Swift::Int sub_100B5E774(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100B5E7D4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

void _s12searchpartyd20MessagingDestinationV6stringACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  sub_1000DF96C();
  v2 = StringProtocol.contains<A>(_:)();
  v3 = String._bridgeToObjectiveC()();
  if (v2)
  {
    v4 = IDSCopyIDForEmailAddress();

    if (v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  else
  {
    v4 = IDSCopyIDForPhoneNumber();

    if (v4)
    {
LABEL_5:

      static String._unconditionallyBridgeFromObjectiveC(_:)();

      return;
    }
  }

  __break(1u);
}

uint64_t _s12searchpartyd20MessagingDestinationV20stringRepresentationACSgSS_tcfC_0()
{
  v0._countAndFlagsBits = 0x3A6F746C69616DLL;
  v0._object = 0xE700000000000000;
  if (String.hasPrefix(_:)(v0))
  {
    return 0;
  }

  v2._countAndFlagsBits = 980182388;
  v2._object = 0xE400000000000000;
  if (String.hasPrefix(_:)(v2))
  {
    return 1;
  }

  v3._countAndFlagsBits = 0x3A6E656B6F74;
  v3._object = 0xE600000000000000;
  if (String.hasPrefix(_:)(v3))
  {
    return 2;
  }

  v4._countAndFlagsBits = 0x6B6F742D666C6573;
  v4._object = 0xEB000000003A6E65;
  if (String.hasPrefix(_:)(v4))
  {
    return 2;
  }

  v5._countAndFlagsBits = 0x3A656369766564;
  v5._object = 0xE700000000000000;
  if (String.hasPrefix(_:)(v5))
  {
    return 3;
  }

  v6._countAndFlagsBits = 0x3A6E6F6973736573;
  v6._object = 0xE800000000000000;
  if (String.hasPrefix(_:)(v6))
  {
    return 4;
  }

  return 0;
}

unint64_t sub_100B5EA34()
{
  result = qword_1016B62F0;
  if (!qword_1016B62F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B62F0);
  }

  return result;
}

unint64_t sub_100B5EA88()
{
  result = qword_1016B62F8;
  if (!qword_1016B62F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B62F8);
  }

  return result;
}

uint64_t sub_100B5EADC(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016B6328, &qword_1013D7F68);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  sub_1000035D0(a1, v7);
  sub_100B5EA34();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[14] = 0;
    sub_100B5EE88();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = v9[15];
    v9[13] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100007BAC(a1);
  return v7;
}

unint64_t sub_100B5ECA4()
{
  result = qword_1016B6300;
  if (!qword_1016B6300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6300);
  }

  return result;
}

unint64_t sub_100B5ED30()
{
  result = qword_1016B6308;
  if (!qword_1016B6308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6308);
  }

  return result;
}

unint64_t sub_100B5ED88()
{
  result = qword_1016B6310;
  if (!qword_1016B6310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6310);
  }

  return result;
}

unint64_t sub_100B5EDE0()
{
  result = qword_1016B6318;
  if (!qword_1016B6318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6318);
  }

  return result;
}

unint64_t sub_100B5EE34()
{
  result = qword_1016B6320;
  if (!qword_1016B6320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6320);
  }

  return result;
}

unint64_t sub_100B5EE88()
{
  result = qword_1016B6330;
  if (!qword_1016B6330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6330);
  }

  return result;
}

double sub_100B5EEF0@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100B5EFF4(a2, v10);
  if (!v2)
  {
    v5 = v18;
    *(a1 + 128) = v17;
    *(a1 + 144) = v5;
    *(a1 + 160) = v19;
    *(a1 + 176) = v20;
    v6 = v14;
    *(a1 + 64) = v13;
    *(a1 + 80) = v6;
    v7 = v16;
    *(a1 + 96) = v15;
    *(a1 + 112) = v7;
    v8 = v10[1];
    *a1 = v10[0];
    *(a1 + 16) = v8;
    result = *&v11;
    v9 = v12;
    *(a1 + 32) = v11;
    *(a1 + 48) = v9;
  }

  return result;
}

unint64_t sub_100B5EF70(uint64_t a1)
{
  *(a1 + 8) = sub_100B5EFA0();
  result = sub_100A22270();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100B5EFA0()
{
  result = qword_1016B6338;
  if (!qword_1016B6338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6338);
  }

  return result;
}

uint64_t sub_100B5EFF4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v63, v64);
  v5 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
LABEL_14:
    sub_100007BAC(v63);
    return sub_100007BAC(a1);
  }

  v7 = v5;
  v8 = v6;
  sub_10015049C(v63, v64);
  v9 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v65 = v10;
  sub_10015049C(v63, v64);
  v61 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v62 = v11;
  sub_10015049C(v63, v64);
  v59 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v60 = v12;
  sub_10015049C(v63, v64);
  v57 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v58 = v13;
  sub_10015049C(v63, v64);
  v14 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v16 = v15;
  LOBYTE(v53) = sub_1000E0A3C();
  result = DataProtocol.intValue.getter();
  v18 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = (v18 * 20) >> 64;
  v18 *= 5;
  if (v19 != (4 * v18) >> 63)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (4 * v18 < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v56 = v14;
  v54 = Data.subdata(in:)();
  v55 = v20;
  sub_10015049C(v63, v64);
  v51 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v52 = v21;
  sub_10015049C(v63, v64);
  v49 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v50 = v22;
  sub_10015049C(v63, v64);
  v47 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v48 = v23;
  sub_10015049C(v63, v64);
  v45 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v46 = v24;
  sub_10015049C(v63, v64);
  v43 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v44 = v25;
  v53 = DataProtocol.intValue.getter();
  sub_10015049C(v63, v64);
  v42 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v14 = v26;
  if (v53 > 3)
  {
    if (qword_1016950D0 == -1)
    {
LABEL_11:
      v28 = type metadata accessor for Logger();
      sub_1000076D4(v28, qword_10177C418);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 134217984;
        *(v31 + 4) = v53;
        _os_log_impl(&_mh_execute_header, v29, v30, "Invalid beaconPartId %ld!", v31, 0xCu);
      }

      v32 = type metadata accessor for BinaryDecodingError();
      sub_100247A38();
      swift_allocError();
      (*(*(v32 - 8) + 104))(v33, enum case for BinaryDecodingError.decodingError(_:), v32);
      swift_willThrow();
      sub_100016590(v42, v14);
      sub_100016590(v43, v44);
      sub_100016590(v45, v46);
      sub_100016590(v47, v48);
      sub_100016590(v49, v50);
      sub_100016590(v51, v52);
      sub_100016590(v54, v55);
      sub_100016590(v56, v16);
      sub_100016590(v57, v58);
      sub_100016590(v59, v60);
      sub_100016590(v61, v62);
      sub_100016590(v9, v65);
      sub_100016590(v7, v8);
      goto LABEL_14;
    }

LABEL_37:
    swift_once();
    goto LABEL_11;
  }

  sub_100016590(v43, v44);
  result = sub_100016590(v56, v16);
  if (v53 < 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  v18 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    if (!v18)
    {
      v27 = BYTE6(v8);
      goto LABEL_24;
    }

    goto LABEL_22;
  }

LABEL_18:
  if (v18 != 2)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v34 = *(v7 + 16);
  v35 = *(v7 + 24);
  v36 = __OFSUB__(v35, v34);
  v27 = v35 - v34;
  if (v36)
  {
    __break(1u);
LABEL_22:
    LODWORD(v27) = HIDWORD(v7) - v7;
    if (__OFSUB__(HIDWORD(v7), v7))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v27 = v27;
  }

LABEL_24:
  if (v27 != 32)
  {
    goto LABEL_40;
  }

  v37 = v58 >> 62;
  if ((v58 >> 62) <= 1)
  {
    if (!v37)
    {
      v38 = BYTE6(v58);
      goto LABEL_34;
    }

LABEL_32:
    LODWORD(v38) = HIDWORD(v57) - v57;
    if (!__OFSUB__(HIDWORD(v57), v57))
    {
      v38 = v38;
      goto LABEL_34;
    }

    goto LABEL_39;
  }

  if (v37 != 2)
  {
    goto LABEL_41;
  }

  v40 = *(v57 + 16);
  v39 = *(v57 + 24);
  v36 = __OFSUB__(v39, v40);
  v38 = v39 - v40;
  if (v36)
  {
    __break(1u);
    goto LABEL_32;
  }

LABEL_34:
  if (v38 == 1)
  {
    sub_100007BAC(v63);
    result = sub_100007BAC(a1);
    *a2 = v7;
    *(a2 + 8) = v8;
    *(a2 + 16) = v57;
    *(a2 + 24) = v58;
    v41 = v65;
    *(a2 + 32) = v9;
    *(a2 + 40) = v41;
    *(a2 + 48) = v54;
    *(a2 + 56) = v55;
    *(a2 + 64) = v61;
    *(a2 + 72) = v62;
    *(a2 + 80) = v59;
    *(a2 + 88) = v60;
    *(a2 + 96) = v51;
    *(a2 + 104) = v52;
    *(a2 + 112) = v49;
    *(a2 + 120) = v50;
    *(a2 + 128) = v47;
    *(a2 + 136) = v48;
    *(a2 + 144) = v45;
    *(a2 + 152) = v46;
    *(a2 + 160) = v53;
    *(a2 + 168) = v42;
    *(a2 + 176) = v14;
    return result;
  }

LABEL_41:
  __break(1u);
  return result;
}

unint64_t sub_100B5F680(char a1)
{
  result = 0x4E6E6F6973736573;
  switch(a1)
  {
    case 1:
      result = 12645;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x74617453636E7973;
      break;
    case 4:
      result = 1684628325;
      break;
    case 5:
      result = 0x644970696863;
      break;
    case 6:
      result = 0x754E6C6169726573;
      break;
    case 7:
      result = 0x644974726170;
      break;
    case 8:
      result = 0x6F636165426D756ELL;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0xD00000000000001BLL;
      break;
    case 11:
      result = 0x6E55646572616873;
      break;
    case 12:
      result = 0x314B64656573;
      break;
    case 13:
    case 14:
      result = 0x726F737365636361;
      break;
    case 15:
      result = 0xD000000000000014;
      break;
    case 16:
      result = 0xD000000000000011;
      break;
    case 17:
      result = 0x69634572656E776FLL;
      break;
    case 18:
      result = 0x69684372656E776FLL;
      break;
    case 19:
      result = 0x7372655663657073;
      break;
    case 20:
      result = 0x657261776D726966;
      break;
    case 21:
      result = 0x49746375646F7270;
      break;
    case 22:
      result = 0x6449726F646E6576;
      break;
    case 23:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100B5F93C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016B6348, &qword_1013D8B78);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000035D0(a1, a1[3]);
  sub_100B62668();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v23 = *v3;
  v13 = *v3;
  v12 = 0;
  sub_1001022C4(&v23, v11);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v13, *(&v13 + 1));
  if (!v2)
  {
    v22 = v3[1];
    v13 = v3[1];
    v12 = 1;
    sub_1001022C4(&v22, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v21 = v3[2];
    v13 = v3[2];
    v12 = 2;
    sub_1000D2A70(&v21, v11, &qword_1016A40E0, &unk_101396F30);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v13, *(&v13 + 1));
    LOBYTE(v13) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = *(v3 + 56);
    v13 = *(v3 + 56);
    v12 = 4;
    sub_1001022C4(&v20, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v19 = *(v3 + 72);
    v13 = *(v3 + 72);
    v12 = 5;
    sub_1001022C4(&v19, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v18 = *(v3 + 88);
    v13 = *(v3 + 88);
    v12 = 6;
    sub_1001022C4(&v18, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    LOBYTE(v13) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v13 = *(v3 + 16);
    v11[0] = 9;
    sub_1000BC4D4(&qword_101699EB8, &qword_101398AA0);
    sub_1002DE008();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v13 = *(v3 + 17);
    v11[0] = 10;
    sub_1000BC4D4(&qword_1016AAA40, &qword_1013D8B80);
    sub_100837688();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v13) = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = v3[10];
    v13 = v3[10];
    v12 = 12;
    sub_1001022C4(&v17, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v16 = v3[11];
    v13 = v3[11];
    v12 = 13;
    sub_1001022C4(&v16, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v15 = v3[12];
    v13 = v3[12];
    v12 = 14;
    sub_1001022C4(&v15, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v14 = v3[13];
    v13 = v3[13];
    v12 = 15;
    sub_1001022C4(&v14, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    LOBYTE(v13) = 16;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 17;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 18;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 19;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 20;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 21;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 22;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 23;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100B601B0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100B627D4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100B601D8(uint64_t a1)
{
  v2 = sub_100B62668();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B60214(uint64_t a1)
{
  v2 = sub_100B62668();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100B602A4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X8>)
{
  v108 = a4;
  v109 = a5;
  v105 = a2;
  v106 = a3;
  v107 = a6;
  v7 = type metadata accessor for MultipartAccessoryPairingInfo(0);
  v115 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v119 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_1000BC4D4(&qword_101696E38, &qword_1013D8510);
  v9 = __chkstk_darwin(v124);
  v114 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v121 = (&v102 - v12);
  __chkstk_darwin(v11);
  v123 = (&v102 - v13);
  v14 = a1[14];
  v133 = a1[15];
  v149 = a1[16];
  v150 = v133;
  v15 = a1[2];
  v134 = v149;
  v135 = v15;
  v147 = *(a1 + 104);
  v148 = v15;
  v131 = *(a1 + 120);
  v132 = v147;
  v145 = *(a1 + 136);
  v146 = v131;
  v130 = v145;
  v129 = *(a1 + 160);
  v128 = *(a1 + 19);
  v142 = v14;
  sub_1001022C4(&v150, &v141);
  sub_1001022C4(&v149, &v141);
  sub_1000D2A70(&v148, &v141, &qword_1016A40E0, &unk_101396F30);
  sub_1001022C4(&v147, &v141);
  sub_1001022C4(&v146, &v141);
  sub_1001022C4(&v145, &v141);
  sub_1000E0A3C();
  v16 = DataProtocol.intValue.getter();
  v17 = *(a1 + 21);
  v18 = *(a1 + 22);
  v110 = a1;
  v103 = v17;
  v104 = v16;
  v143 = v18;
  v144 = v17;
  sub_1000D2A70(&v144, &v142, &qword_101699EB8, &qword_101398AA0);
  sub_1000D2A70(&v143, &v142, &qword_1016AAA28, &unk_1013BD990);
  v19 = sub_100908488(_swiftEmptyArrayStorage);
  v20 = v18 + 64;
  v21 = 1 << *(v18 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v18 + 64);
  v24 = (v21 + 63) >> 6;
  v116 = v18;

  v25 = 0;
  v120 = 0;
  v112 = v24;
  v113 = v18 + 64;
  if (v23)
  {
    while (1)
    {
      v26 = v25;
LABEL_8:
      v27 = __clz(__rbit64(v23)) | (v26 << 6);
      v28 = (*(v116 + 48) + 16 * v27);
      v30 = *v28;
      v29 = v28[1];
      v31 = *(v115 + 72);
      v32 = v123;
      sub_1000E180C(*(v116 + 56) + v31 * v27, v123 + *(v124 + 48));
      *v32 = v30;
      v32[1] = v29;
      v33 = v121;
      sub_1000D2A70(v32, v121, &qword_101696E38, &qword_1013D8510);
      v34 = *v33;
      v35 = v33[1];
      *&v142 = v34;
      *(&v142 + 1) = v35;
      v36 = v35 >> 62;
      v122 = v19;
      v118 = v31;
      if ((v35 >> 62) <= 1)
      {
        break;
      }

      if (v36 == 2)
      {
        v39 = *(v34 + 16);
        v38 = *(v34 + 24);
        v37 = v38 - v39;
        if (__OFSUB__(v38, v39))
        {
          goto LABEL_62;
        }

LABEL_17:
        sub_100017D5C(v34, v35);
        goto LABEL_19;
      }

      v37 = 0;
LABEL_19:
      v40 = 20 - v37;
      if (__OFSUB__(20, v37))
      {
        goto LABEL_57;
      }

      if (v40)
      {
        if (v40 <= 14)
        {
          if (v40 < 0)
          {
            goto LABEL_60;
          }

          v43 = v111 & 0xF00000000000000 | ((20 - v37) << 48);
          sub_100017D5C(v30, v29);
          v44 = v122;

          v42 = 0;
          v111 = v43;
        }

        else
        {
          type metadata accessor for __DataStorage();
          swift_allocObject();
          sub_100017D5C(v30, v29);

          v41 = __DataStorage.init(length:)();
          if (v40 >= 0x7FFFFFFF)
          {
            type metadata accessor for Data.RangeReference();
            v42 = swift_allocObject();
            *(v42 + 16) = 0;
            *(v42 + 24) = v40;
            v43 = v41 | 0x8000000000000000;
          }

          else
          {
            v42 = v40 << 32;
            v43 = v41 | 0x4000000000000000;
          }

          v44 = v122;
        }
      }

      else
      {
        sub_100017D5C(v30, v29);
        v44 = v122;

        v42 = 0;
        v43 = 0xC000000000000000;
      }

      v117 = *(v124 + 48);
      *&v141 = v42;
      *(&v141 + 1) = v43;
      v45 = v120;
      sub_100776394(&v141, 0);
      v120 = v45;
      v46 = v141;
      Data.append(_:)();
      sub_100016590(v34, v35);
      sub_100016590(v46, *(&v46 + 1));
      v47 = v142;
      v48 = Data.base64EncodedString(options:)(0);
      sub_100016590(v47, *(&v47 + 1));
      sub_1000E1870(v121 + v117);
      v49 = v114;
      sub_1000D2A70(v123, v114, &qword_101696E38, &qword_1013D8510);
      sub_100016590(*v49, *(v49 + 8));
      sub_100837460(v49 + *(v124 + 48), v119);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v142 = v44;
      v51 = sub_100771D58(v48._countAndFlagsBits, v48._object);
      v53 = *(v44 + 16);
      v54 = (v52 & 1) == 0;
      v55 = __OFADD__(v53, v54);
      v56 = v53 + v54;
      if (v55)
      {
        goto LABEL_58;
      }

      v57 = v52;
      if (*(v44 + 24) >= v56)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v64 = v51;
          sub_1010064AC();
          v51 = v64;
        }
      }

      else
      {
        sub_100FE8E54(v56, isUniquelyReferenced_nonNull_native);
        v51 = sub_100771D58(v48._countAndFlagsBits, v48._object);
        if ((v57 & 1) != (v58 & 1))
        {
          goto LABEL_64;
        }
      }

      v20 = v113;
      v23 &= v23 - 1;
      if (v57)
      {
        v59 = v51;

        v60 = v142;
        sub_1008374C4(v119, *(v142 + 56) + v59 * v118);

        sub_10000B3A8(v123, &qword_101696E38, &qword_1013D8510);
        v25 = v26;
        v19 = v60;
        v24 = v112;
        if (!v23)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v61 = v142;
        *(v142 + 8 * (v51 >> 6) + 64) |= 1 << v51;
        *(v61[6] + 16 * v51) = v48;
        sub_100837460(v119, v61[7] + v51 * v118);

        sub_10000B3A8(v123, &qword_101696E38, &qword_1013D8510);
        v62 = v61[2];
        v55 = __OFADD__(v62, 1);
        v63 = v62 + 1;
        if (v55)
        {
          goto LABEL_59;
        }

        v61[2] = v63;
        v25 = v26;
        v19 = v61;
        v24 = v112;
        if (!v23)
        {
          goto LABEL_5;
        }
      }
    }

    if (!v36)
    {
      v37 = BYTE6(v35);
      goto LABEL_19;
    }

    if (__OFSUB__(HIDWORD(v34), v34))
    {
      goto LABEL_61;
    }

    v37 = HIDWORD(v34) - v34;
    goto LABEL_17;
  }

  while (1)
  {
LABEL_5:
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    if (v26 >= v24)
    {
      break;
    }

    v23 = *(v20 + 8 * v26);
    ++v25;
    if (v23)
    {
      goto LABEL_8;
    }
  }

  v65 = v19;

  sub_10000B3A8(&v143, &qword_1016AAA28, &unk_1013BD990);
  v66 = v110;
  v67 = *(v110 + 23);
  v127 = 0;
  v142 = v110[12];
  *&v126[7] = v142;
  v68 = v110[1];
  v140 = *v110;
  v141 = v68;
  v69 = *(v110 + 88);
  v138 = *(v110 + 56);
  v139 = v69;
  v70 = *(v110 + 72);
  v71 = *(v110 + 39);
  v136 = v110[18];
  v137 = v70;
  if (v71 >> 60 == 15)
  {
    sub_1001022C4(&v142, v125);
    sub_1001022C4(&v141, v125);
    sub_1001022C4(&v140, v125);
    sub_1000D2A70(&v139, v125, &qword_1016A0AC0, &unk_1013926A0);
    sub_1000D2A70(&v138, v125, &qword_1016A0AC0, &unk_1013926A0);
    sub_1000D2A70(&v137, v125, &qword_1016A0AC0, &unk_1013926A0);
    result = sub_1000D2A70(&v136, v125, &qword_1016A0AC0, &unk_1013926A0);
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
LABEL_55:
    v90 = v127;
    v91 = v132;
    v92 = v134;
    v93 = v135;
    v94 = v107;
    *v107 = v133;
    v94[1] = v92;
    v94[2] = v93;
    *(v94 + 6) = 0;
    *(v94 + 56) = v91;
    v95 = v130;
    *(v94 + 72) = v131;
    *(v94 + 88) = v95;
    *(v94 + 120) = v129;
    v96 = v128;
    *(v94 + 13) = v104;
    *(v94 + 14) = v96;
    *(v94 + 16) = v103;
    *(v94 + 17) = v65;
    *(v94 + 18) = v67;
    *(v94 + 152) = v90;
    *(v94 + 153) = *v126;
    v98 = v105;
    v97 = v106;
    *(v94 + 21) = *&v126[15];
    *(v94 + 22) = v98;
    *(v94 + 23) = v97;
    v99 = *v66;
    v94[12] = v66[1];
    v94[13] = v99;
    v100 = *(v66 + 56);
    v94[14] = *(v66 + 88);
    v94[15] = v100;
    v94[16] = *(v66 + 72);
    *(v94 + 34) = 0x302E302E31;
    *(v94 + 35) = 0xE500000000000000;
    v94[18] = v66[18];
    *(v94 + 38) = v73;
    *(v94 + 39) = v74;
    *(v94 + 40) = v75;
    *(v94 + 41) = v76;
    v101 = v109;
    *(v94 + 42) = v108;
    *(v94 + 43) = v101;
    return result;
  }

  v77 = *(v110 + 38);
  sub_1001022C4(&v142, v125);
  sub_1001022C4(&v141, v125);
  sub_1001022C4(&v140, v125);
  sub_1000D2A70(&v139, v125, &qword_1016A0AC0, &unk_1013926A0);
  sub_1000D2A70(&v138, v125, &qword_1016A0AC0, &unk_1013926A0);
  sub_1000D2A70(&v137, v125, &qword_1016A0AC0, &unk_1013926A0);
  sub_1000D2A70(&v136, v125, &qword_1016A0AC0, &unk_1013926A0);
  v78 = sub_100313B54(v77, v71);
  v80 = v79;
  v73 = Data.hexString.getter();
  v74 = v81;
  sub_100016590(v78, v80);
  v82 = v71 >> 62;
  if ((v71 >> 62) > 1)
  {
    if (v82 != 2)
    {
LABEL_54:
      v86 = Data.subdata(in:)();
      v88 = v87;
      v75 = Data.hexString.getter();
      v76 = v89;
      result = sub_100016590(v86, v88);
      v66 = v110;
      goto LABEL_55;
    }

    v84 = *(v77 + 16);
    v83 = *(v77 + 24);
    v55 = __OFSUB__(v83, v84);
    v85 = v83 - v84;
    if (v55)
    {
      __break(1u);
      goto LABEL_50;
    }

LABEL_52:
    if (v85 < -1)
    {
      __break(1u);
    }

    goto LABEL_54;
  }

  if (!v82)
  {
    goto LABEL_54;
  }

LABEL_50:
  LODWORD(v85) = HIDWORD(v77) - v77;
  if (!__OFSUB__(HIDWORD(v77), v77))
  {
    v85 = v85;
    goto LABEL_52;
  }

LABEL_63:
  __break(1u);
LABEL_64:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100B60CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[412] = a6;
  v6[411] = a5;
  v6[410] = a4;
  v6[409] = a3;
  v6[408] = a2;
  v6[407] = a1;
  v7 = type metadata accessor for HashAlgorithm();
  v6[413] = v7;
  v6[414] = *(v7 - 8);
  v6[415] = swift_task_alloc();
  v8 = type metadata accessor for Locale();
  v6[416] = v8;
  v6[417] = *(v8 - 8);
  v6[418] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v6[419] = v9;
  v6[420] = *(v9 - 8);
  v6[421] = swift_task_alloc();

  return _swift_task_switch(sub_100B60E40, 0, 0);
}

void sub_100B60E40()
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

  v6 = *(v0 + 3368);
  v7 = *(v0 + 3360);
  v8 = *(v0 + 3352);
  v9 = *(v0 + 3344);
  v50 = *(v0 + 3336);
  v51 = *(v0 + 3328);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v10, v12, 0xD000000000000011, 0x800000010134EA40, v13);
  v14 = v1;
  Date.init()();
  v15 = Date.epoch.getter();
  (*(v7 + 8))(v6, v8);
  *(v0 + 3240) = v15;
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  v18 = v17;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v16, v18, 0xD000000000000015, 0x800000010134EA60, v19);
  *(v0 + 3248) = 1;
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
  (*(v50 + 8))(v9, v51);
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

  *(v0 + 3376) = v33;
  v40 = *(v0 + 3288);
  v41 = *(v0 + 3280);
  v42 = *(v0 + 3272);
  v43 = *(v0 + 3264);
  v44 = *(v0 + 3256);
  sub_100165278(v44, v0 + 368);
  sub_100017D5C(v41, v40);

  sub_100B602A4(v44, v41, v40, v43, v42, (v0 + 16));
  sub_1001652D4(v44);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  memcpy((v0 + 720), (v0 + 16), 0x160uLL);
  sub_100B6258C();
  v45 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 3384) = 0;
  *(v0 + 3392) = v45;
  *(v0 + 3400) = v46;
  v47 = v45;
  v48 = v46;

  sub_100017D5C(v47, v48);
  v49 = swift_task_alloc();
  *(v0 + 3408) = v49;
  *v49 = v0;
  v49[1] = sub_100B615CC;

  sub_100E9E69C();
}

uint64_t sub_100B615CC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 3416) = a1;
  *(v3 + 3424) = a2;

  return _swift_task_switch(sub_100B616D0, 0, 0);
}

uint64_t sub_100B616D0()
{
  v1 = *(v0 + 3424);
  v2 = *(v0 + 3416);
  v3 = *(v0 + 3320);
  v4 = *(v0 + 3312);
  v5 = *(v0 + 3304);
  *(v0 + 3224) = v2;
  *(v0 + 3232) = v1;
  *(v0 + 3208) = &type metadata for Data;
  *(v0 + 3216) = &protocol witness table for Data;
  *(v0 + 3184) = *(v0 + 3392);
  v6 = sub_1000035D0((v0 + 3184), &type metadata for Data);
  v7 = *v6;
  v8 = v6[1];
  sub_100017D5C(v2, v1);
  sub_100017DB0(v7, v8, v0 + 3224);
  sub_100016590(v2, v1);
  sub_100007BAC((v0 + 3184));
  *(v0 + 3432) = *(v0 + 3224);
  *(v0 + 3440) = *(v0 + 3232);
  (*(v4 + 104))(v3, enum case for HashAlgorithm.sha256(_:), v5);
  v9 = Data.hash(algorithm:)();
  v11 = v10;
  *(v0 + 3448) = v9;
  *(v0 + 3456) = v10;
  (*(v4 + 8))(v3, v5);
  v12 = swift_task_alloc();
  *(v0 + 3464) = v12;
  *v12 = v0;
  v12[1] = sub_100B61888;
  v13 = *(v0 + 3296);

  return sub_100EA87F4(v9, v11, v13);
}

uint64_t sub_100B61888(uint64_t a1)
{
  v4 = *v2;
  v4[434] = v1;

  v5 = v4[432];
  v6 = v4[431];
  if (v1)
  {
    sub_100016590(v6, v5);

    v7 = sub_100B61F50;
  }

  else
  {
    v4[435] = a1;
    sub_100016590(v6, v5);
    v7 = sub_100B619F0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100B619F0()
{
  v50 = v0;
  v1 = v0[435];
  v2 = v0[430];
  v3 = v0[429];
  v4 = v0[422];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49[0] = v4;
  sub_10028709C(v1, sub_100EB00A4, 0, isUniquelyReferenced_nonNull_native, v49);

  sub_100016590(v3, v2);
  v6 = v49[0];
  if (qword_1016950E0 == -1)
  {
    goto LABEL_2;
  }

LABEL_23:
  swift_once();
LABEL_2:
  v46 = v0;
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177C448);
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
  v47 = v6;
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
      v48 = *v22;

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v49[0] = swift_slowAlloc();
        *v26 = 136315394;
        v27 = sub_1000136BC(v20, v21, v49);

        *(v26 + 4) = v27;
        *(v26 + 12) = 2080;
        v28 = sub_1000136BC(v48, v23, v49);

        *(v26 + 14) = v28;
        _os_log_impl(&_mh_execute_header, v24, v25, "%s: %s", v26, 0x16u);
        swift_arrayDestroy();

        v6 = v47;

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

  sub_100B625E0((v46 + 2), (v46 + 266));
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  sub_100B62618((v46 + 2));
  v31 = os_log_type_enabled(v29, v30);
  v32 = v46[411];
  v33 = v46[410];
  v34 = v46[407];
  if (v31)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v49[0] = v36;
    *v35 = 136315138;
    memcpy(v46 + 310, v46 + 2, 0x160uLL);
    sub_100B625E0((v46 + 2), (v46 + 354));
    v37 = String.init<A>(describing:)();
    v39 = sub_1000136BC(v37, v38, v49);

    *(v35 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v29, v30, "Pairing lock body %s", v35, 0xCu);
    sub_100007BAC(v36);
    v6 = v47;

    sub_100B62618((v46 + 2));

    sub_100016590(v33, v32);
    sub_1001652D4(v34);
  }

  else
  {

    sub_100016590(v33, v32);
    sub_1001652D4(v34);

    sub_100B62618((v46 + 2));
  }

  v40 = v46[425];
  v41 = v46[424];

  sub_100017D5C(v41, v40);

  sub_100016590(v41, v40);
  v42 = v46[425];
  v43 = v46[424];

  v44 = v46[1];

  return v44(v6, v43, v42);
}

uint64_t sub_100B61F50()
{
  v50 = v0;
  sub_100016590(v0[429], v0[430]);
  v1 = &qword_101695000;
  if (qword_1016950E0 == -1)
  {
    goto LABEL_2;
  }

LABEL_28:
  swift_once();
LABEL_2:
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C448);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to generate attestation header: %{public}@.", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v8 = v0[422];
  if (v1[28] != -1)
  {
    swift_once();
  }

  v46 = v0;
  sub_1000076D4(v2, qword_10177C448);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Pairing lock header:", v11, 2u);
  }

  v1 = (v8 + 64);
  v12 = -1;
  v13 = -1 << *(v8 + 32);
  if (-v13 < 64)
  {
    v12 = ~(-1 << -v13);
  }

  v14 = v12 & *(v8 + 64);
  v0 = ((63 - v13) >> 6);

  v15 = 0;
  v47 = v8;
  if (v14)
  {
    while (2)
    {
      v16 = v15;
LABEL_18:
      v17 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v18 = (v16 << 10) | (16 * v17);
      v19 = (*(v8 + 48) + v18);
      v20 = *v19;
      v21 = v19[1];
      v22 = (*(v8 + 56) + v18);
      v23 = v22[1];
      v48 = *v22;

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *v26 = 136315394;
        v27 = sub_1000136BC(v20, v21, &v49);

        *(v26 + 4) = v27;
        *(v26 + 12) = 2080;
        v28 = sub_1000136BC(v48, v23, &v49);

        *(v26 + 14) = v28;
        _os_log_impl(&_mh_execute_header, v24, v25, "%s: %s", v26, 0x16u);
        swift_arrayDestroy();

        v8 = v47;

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
      goto LABEL_28;
    }

    if (v16 >= v0)
    {
      break;
    }

    v14 = v1[v16];
    ++v15;
    if (v14)
    {
      goto LABEL_18;
    }
  }

  sub_100B625E0((v46 + 2), (v46 + 266));
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  sub_100B62618((v46 + 2));
  v31 = os_log_type_enabled(v29, v30);
  v32 = v46[411];
  v33 = v46[410];
  v34 = v46[407];
  if (v31)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v49 = v36;
    *v35 = 136315138;
    memcpy(v46 + 310, v46 + 2, 0x160uLL);
    sub_100B625E0((v46 + 2), (v46 + 354));
    v37 = String.init<A>(describing:)();
    v39 = sub_1000136BC(v37, v38, &v49);

    *(v35 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v29, v30, "Pairing lock body %s", v35, 0xCu);
    sub_100007BAC(v36);
    v8 = v47;

    sub_100B62618((v46 + 2));

    sub_100016590(v33, v32);
    sub_1001652D4(v34);
  }

  else
  {

    sub_100016590(v33, v32);
    sub_1001652D4(v34);

    sub_100B62618((v46 + 2));
  }

  v40 = v46[425];
  v41 = v46[424];

  sub_100017D5C(v41, v40);

  sub_100016590(v41, v40);
  v42 = v46[425];
  v43 = v46[424];

  v44 = v46[1];

  return v44(v8, v43, v42);
}

unint64_t sub_100B6258C()
{
  result = qword_1016B6340;
  if (!qword_1016B6340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6340);
  }

  return result;
}

unint64_t sub_100B62668()
{
  result = qword_1016B6350;
  if (!qword_1016B6350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6350);
  }

  return result;
}

unint64_t sub_100B626D0()
{
  result = qword_1016B6358;
  if (!qword_1016B6358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6358);
  }

  return result;
}

unint64_t sub_100B62728()
{
  result = qword_1016B6360;
  if (!qword_1016B6360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6360);
  }

  return result;
}

unint64_t sub_100B62780()
{
  result = qword_1016B6368;
  if (!qword_1016B6368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6368);
  }

  return result;
}

uint64_t sub_100B627D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E6E6F6973736573 && a2 == 0xEC00000065636E6FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12645 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000101347DB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74617453636E7973 && a2 == 0xEA00000000007375 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1684628325 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x644970696863 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x644974726170 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6F636165426D756ELL && a2 == 0xEA0000000000736ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010134DD60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000101361060 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6E55646572616873 && a2 == 0xEA00000000007469 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x314B64656573 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xEF74736574744179 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xED00006E67695379 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000101361080 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010134F970 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x69634572656E776FLL && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x69684372656E776FLL && a2 == 0xEB00000000644970 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x7372655663657073 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x657261776D726966 && a2 == 0xEF6E6F6973726556 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x6449726F646E6576 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001013610A0 == a2)
  {

    return 23;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 23;
    }

    else
    {
      return 24;
    }
  }
}

uint64_t sub_100B62F44()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v2, qword_10177BC20);
  sub_1000076D4(v0, qword_10177BC20);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v5 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v4, v5, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100B630A0(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016B65E8, &qword_1013D8F80);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100B671A4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v17) = 0;
  type metadata accessor for UUID();
  sub_100003FAC(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for SecureLocationsCachedSharedKey(0);
    LOBYTE(v17) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = (v3 + v9[6]);
    v11 = v10[1];
    *&v17 = *v10;
    *(&v17 + 1) = v11;
    v19 = 2;
    sub_10002E98C(v17, v11);
    sub_10049DF20();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v17, *(&v17 + 1));
    v12 = (v3 + v9[7]);
    v13 = v12[1];
    *&v17 = *v12;
    *(&v17 + 1) = v13;
    v19 = 3;
    sub_10002E98C(v17, v13);
    sub_10049EBA4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v17, *(&v17 + 1));
    v14 = (v3 + v9[8]);
    v15 = *(v14 + 2);
    v17 = *v14;
    v18 = v15;
    v19 = 4;
    sub_100157F84();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v17) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v17) = 6;
    type metadata accessor for Date();
    sub_100003FAC(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_100B63408(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v7 - 8);
  v9 = v24 - v8;
  type metadata accessor for UUID();
  sub_100003FAC(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v10 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  String.hash(into:)();
  v11 = (v1 + v10[6]);
  v12 = v11[1];
  if (v12 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v13 = *v11;
    Hasher._combine(_:)(1u);
    sub_100017D5C(v13, v12);
    Data.hash(into:)();
    sub_100006654(v13, v12);
  }

  v14 = (v1 + v10[7]);
  v15 = v14[1];
  if (v15 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v16 = *v14;
    Hasher._combine(_:)(1u);
    sub_100017D5C(v16, v15);
    Data.hash(into:)();
    sub_100006654(v16, v15);
  }

  v17 = (v1 + v10[8]);
  if (*(v17 + 2))
  {
    v24[1] = *(v17 + 1);
    v18 = v9;
    v19 = v3;
    v20 = v4;
    v21 = v6;
    v22 = *v17;
    Hasher._combine(_:)(1u);
    v23 = v22;
    v6 = v21;
    v4 = v20;
    v3 = v19;
    v9 = v18;
    v2 = v1;
    Hasher._combine(_:)(v23);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v2 + v10[9] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  sub_1000D2A70(v2 + v10[10], v9, &unk_101696900, &unk_10138B1E0);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    Hasher._combine(_:)(1u);
    sub_100003FAC(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100B637E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v38 - v4;
  v6 = type metadata accessor for UUID();
  v40 = *(v6 - 8);
  __chkstk_darwin(v6);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016B65F8, &unk_1013D8F88);
  v9 = *(v8 - 8);
  v42 = v8;
  v43 = v9;
  __chkstk_darwin(v8);
  v11 = &v38 - v10;
  v12 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  v13 = __chkstk_darwin(v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &v15[v13[6]];
  *v16 = xmmword_10138BBF0;
  v48 = &v15[v13[7]];
  v49 = v16;
  *v48 = xmmword_10138BBF0;
  v17 = v13[10];
  v18 = type metadata accessor for Date();
  v19 = *(*(v18 - 8) + 56);
  v46 = v17;
  v20 = v15;
  v19(&v15[v17], 1, 1, v18);
  v21 = a1[3];
  v47 = a1;
  sub_1000035D0(a1, v21);
  sub_100B671A4();
  v44 = v11;
  v22 = v45;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    sub_100007BAC(v47);
    sub_100006654(*v49, *(v49 + 1));
    sub_100006654(*v48, *(v48 + 1));

    return sub_10000B3A8(v20 + v46, &unk_101696900, &unk_10138B1E0);
  }

  else
  {
    v38 = v18;
    v45 = v5;
    LOBYTE(v50) = 0;
    sub_100003FAC(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v23 = v41;
    v24 = v42;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v40 + 32))(v20, v23, v6);
    LOBYTE(v50) = 1;
    v25 = KeyedDecodingContainer.decode(_:forKey:)();
    v26 = (v20 + v12[5]);
    *v26 = v25;
    v26[1] = v27;
    v52 = 2;
    sub_10049DECC();
    v41 = 0;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v28 = v50;
    v29 = v49;
    sub_100006654(*v49, *(v49 + 1));
    *v29 = v28;
    v52 = 3;
    sub_10049EB50();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v30 = v50;
    v31 = v48;
    sub_100006654(*v48, *(v48 + 1));
    *v31 = v30;
    v52 = 4;
    sub_100157E1C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v32 = v20 + v12[8];
    v33 = v51;
    *v32 = v50;
    *(v32 + 16) = v33;
    LOBYTE(v50) = 5;
    v34 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v35 = (v20 + v12[9]);
    *v35 = v34;
    v35[1] = v36;
    LOBYTE(v50) = 6;
    sub_100003FAC(&qword_101697F40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v43 + 8))(v44, v24);
    sub_1008CCF08(v45, v20 + v46);
    sub_100B671F8(v20, v39, type metadata accessor for SecureLocationsCachedSharedKey);
    sub_100007BAC(v47);
    return sub_100B67260(v20, type metadata accessor for SecureLocationsCachedSharedKey);
  }
}

uint64_t sub_100B63EBC()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x6449794D646E6966;
    if (v1 != 1)
    {
      v5 = 0xD000000000000015;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x696669746E656469;
    }
  }

  else
  {
    v2 = 0xD00000000000001ALL;
    if (v1 == 5)
    {
      v2 = 0xD000000000000015;
    }

    v3 = 0xD000000000000014;
    if (v1 != 3)
    {
      v3 = 0x6E614872656E776FLL;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100B63FAC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100B66468(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100B63FD4(uint64_t a1)
{
  v2 = sub_100B671A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B64010(uint64_t a1)
{
  v2 = sub_100B671A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100B6404C()
{
  Hasher.init(_seed:)();
  sub_100B63408(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100B64090(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100B63408(v2);
  return Hasher._finalize()();
}

uint64_t sub_100B64100()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v2, qword_10177BC38);
  sub_1000076D4(v0, qword_10177BC38);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v5 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v4, v5, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100B6425C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016B6608, &qword_1013D8FA0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_100B67150();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v22) = 0;
  type metadata accessor for URL();
  sub_100003FAC(&qword_1016A8188, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for SecureLocationsCachedSharingKey(0);
    LOBYTE(v22) = 1;
    type metadata accessor for UUID();
    sub_100003FAC(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = (v3 + *(v9 + 24));
    v11 = v10[1];
    v12 = v10[2];
    v13 = v10[3];
    v14 = v10[4];
    v15 = v10[5];
    v22 = *v10;
    v23 = v11;
    v24 = v12;
    v25 = v13;
    v26 = v14;
    v27 = v15;
    v21[15] = 2;
    sub_10002E98C(v22, v11);
    sub_100017D5C(v12, v13);
    sub_10002E98C(v14, v15);
    sub_100A81474();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = v24;
    v17 = v25;
    v18 = v26;
    v19 = v27;
    sub_100006654(v22, v23);
    sub_100016590(v16, v17);
    sub_100006654(v18, v19);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100B644FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v30 = type metadata accessor for UUID();
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_1016B65D8, &qword_1013D8F78);
  v26 = *(v9 - 8);
  v27 = v9;
  __chkstk_darwin(v9);
  v11 = &v24 - v10;
  v29 = type metadata accessor for SecureLocationsCachedSharingKey(0);
  __chkstk_darwin(v29);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694CD8 != -1)
  {
    swift_once();
  }

  v14 = sub_1000076D4(v5, qword_10177BC38);
  (*(v6 + 16))(v13, v14, v5);
  v15 = a1[3];
  v31 = a1;
  sub_1000035D0(a1, v15);
  sub_100B67150();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100007BAC(v31);
    return (*(v6 + 8))(v13, v5);
  }

  else
  {
    LOBYTE(v32) = 0;
    sub_100003FAC(&qword_1016A8178, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v16 = v27;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 40))(v13, v8, v5);
    LOBYTE(v32) = 1;
    sub_100003FAC(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = v25;
    v18 = v30;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v19 = v16;
    v20 = v29;
    (*(v28 + 32))(&v13[*(v29 + 20)], v17, v18);
    v35 = 2;
    sub_100A812F4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v26 + 8))(v11, v19);
    v21 = &v13[*(v20 + 24)];
    v22 = v33;
    *v21 = v32;
    *(v21 + 1) = v22;
    *(v21 + 2) = v34;
    sub_100B671F8(v13, v24, type metadata accessor for SecureLocationsCachedSharingKey);
    sub_100007BAC(v31);
    return sub_100B67260(v13, type metadata accessor for SecureLocationsCachedSharingKey);
  }
}

uint64_t sub_100B64A38()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0x4B676E6972616873;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x614264726F636572;
  }
}

uint64_t sub_100B64AAC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100B666C4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100B64AD4(uint64_t a1)
{
  v2 = sub_100B67150();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B64B10(uint64_t a1)
{
  v2 = sub_100B67150();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100B64B7C(uint64_t a1)
{
  v11 = a1;
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v2);
  v3 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = sub_1000BC488();
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  static DispatchQoS.unspecified.getter();
  v12 = _swiftEmptyArrayStorage;
  sub_100003FAC(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v8 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v1 + 16) = v11;
  *(v1 + 24) = v8;
  return v1;
}

uint64_t sub_100B64DD8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v62 = type metadata accessor for URL();
  v66 = *(v62 - 8);
  __chkstk_darwin(v62);
  v64 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for UUID();
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016B6448, "X-\t");
  v8 = __chkstk_darwin(v7);
  v60 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v67 = &v56 - v11;
  __chkstk_darwin(v10);
  v69 = &v56 - v12;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_101694E48 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v68 = sub_1000076D4(v17, qword_10177BFF8);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "shareKey: getCachedSharingKeys", v20, 2u);
  }

  v21 = *(v2 + 24);
  *v16 = v21;
  (*(v14 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v13);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  v24 = *(v14 + 8);
  v23 = v14 + 8;
  v24(v16, v13);
  if ((v21 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_100B667F0();
  if (v25)
  {
    v26 = v25;
    v61 = v7;
    v59 = a1;
    v27 = *(v2 + 16);

    v28 = String.utf8Data.getter();
    v56 = v26;
    v30 = v29;
    v71[0] = v28;
    v71[1] = v29;
    sub_1000E0A3C();
    DataProtocol.stableUUID.getter();
    sub_100016590(v28, v30);
    v57 = v6;
    v58 = v27;
    v23 = *(v27 + 168);
    if (qword_101694CD8 == -1)
    {
LABEL_8:
      v31 = v62;
      v32 = sub_1000076D4(v62, qword_10177BC38);
      v33 = v66;
      v34 = v64;
      (*(v66 + 16))(v64, v32, v31);
      v35._object = 0x800000010135B5A0;
      v35._countAndFlagsBits = 0xD000000000000014;
      prohibitAsyncContext(functionName:)(v35);
      v70 = type metadata accessor for SecureLocationsCachedSharingKey(0);
      sub_1000BC4D4(&qword_1016B6458, "P-\t");
      v36 = String.init<A>(describing:)();
      v38 = v37;
      v39 = objc_autoreleasePoolPush();
      __chkstk_darwin(v39);
      v40 = v57;
      *(&v56 - 6) = v23;
      *(&v56 - 5) = v40;
      *(&v56 - 4) = v34;
      *(&v56 - 3) = v36;
      *(&v56 - 2) = v38;
      v41 = v69;
      OS_dispatch_queue.sync<A>(execute:)();

      objc_autoreleasePoolPop(v39);

      (*(v33 + 8))(v34, v31);

      (*(v63 + 8))(v40, v65);
      v42 = v67;
      sub_1000D2A70(v41, v67, &qword_1016B6448, "X-\t");
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v71[0] = v46;
        *v45 = 136315138;
        sub_1000D2A70(v42, v60, &qword_1016B6448, "X-\t");
        v47 = String.init<A>(describing:)();
        v49 = v48;
        sub_10000B3A8(v42, &qword_1016B6448, "X-\t");
        v50 = sub_1000136BC(v47, v49, v71);

        *(v45 + 4) = v50;
        _os_log_impl(&_mh_execute_header, v43, v44, "shareKey: Returning localstorage cached sharing keys %s", v45, 0xCu);
        sub_100007BAC(v46);
      }

      else
      {

        sub_10000B3A8(v42, &qword_1016B6448, "X-\t");
      }

      return sub_100B66D04(v69, v59);
    }

LABEL_16:
    swift_once();
    goto LABEL_8;
  }

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&_mh_execute_header, v51, v52, "shareKey: no myPersonID", v53, 2u);
  }

  v54 = type metadata accessor for SecureLocationsCachedSharingKey(0);
  return (*(*(v54 - 8) + 56))(a1, 1, 1, v54);
}

uint64_t sub_100B65558(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v13 = a4;
  v7 = sub_1000BC4D4(&qword_1016B65C8, &qword_1013D8F70);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_1000035D0(a1, a1[3]);
  sub_100B670FC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v14 = a3;
    v15 = v13;
    v16 = 1;
    sub_100017D5C(a3, v13);
    sub_1000E3190();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v14, v15);
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100B656F4()
{
  if (*v0)
  {
    return 0x4B65746176697270;
  }

  else
  {
    return 0x7865646E69;
  }
}

uint64_t sub_100B65730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4B65746176697270 && a2 == 0xEA00000000007965)
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

uint64_t sub_100B65810(uint64_t a1)
{
  v2 = sub_100B670FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B6584C(uint64_t a1)
{
  v2 = sub_100B670FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100B65888@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100B672C0(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_100B658D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v9 = *(v20 - 8);
  __chkstk_darwin(v20);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694E48 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_10177BFF8);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "getSharingKey", v15, 2u);
  }

  v16 = swift_allocObject();
  v16[2] = v3;
  v16[3] = a1;
  v16[4] = a2;
  aBlock[4] = sub_100B66384;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016498D0;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_100003FAC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v21 + 8))(v8, v6);
  (*(v9 + 8))(v11, v20);
}

void sub_100B65C5C(uint64_t a1, void (*a2)(uint64_t, unint64_t, void *))
{
  v3 = sub_1000BC4D4(&qword_1016B6448, "X-\t");
  __chkstk_darwin(v3 - 8);
  v5 = &v26[-v4];
  v6 = type metadata accessor for SecureLocationsCachedSharingKey(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100B64DD8(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10000B3A8(v5, &qword_1016B6448, "X-\t");
    if (qword_101694E48 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000076D4(v10, qword_10177BFF8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "getSharingKey failed: No cached sharing key", v13, 2u);
    }

    type metadata accessor for SecureLocationsError(0);
    v30 = 3;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003FAC(&unk_1016B0E20, type metadata accessor for SecureLocationsError, &unk_101389C40);
    _BridgedStoredNSError.init(_:userInfo:)();
    v14 = v27;
    a2(0, 0xF000000000000000, v27);
  }

  else
  {
    sub_100B663B0(v5, v9);
    v15 = &v9[*(v6 + 24)];
    v16 = *(v15 + 5);
    if (v16 >> 60 == 15)
    {
      if (qword_101694E48 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_1000076D4(v17, qword_10177BFF8);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "getSharingKey failed: Missing private key", v20, 2u);
      }

      type metadata accessor for SecureLocationsError(0);
      v30 = 3;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100003FAC(&unk_1016B0E20, type metadata accessor for SecureLocationsError, &unk_101389C40);
      _BridgedStoredNSError.init(_:userInfo:)();
      v21 = v27;
      a2(0, 0xF000000000000000, v27);
    }

    else
    {
      v22 = *(v15 + 4);
      type metadata accessor for PropertyListEncoder();
      swift_allocObject();
      sub_100017D5C(v22, v16);
      PropertyListEncoder.init()();
      v27 = 0;
      v28 = v22;
      v29 = v16;
      sub_100017D5C(v22, v16);
      sub_100B66414();
      v23 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
      v25 = v24;
      sub_100017D5C(v23, v24);
      a2(v23, v25, 0);
      sub_100016590(v23, v25);
      sub_100006654(v22, v16);

      sub_100006654(v22, v16);
      sub_100016590(v23, v25);
    }

    sub_100B67260(v9, type metadata accessor for SecureLocationsCachedSharingKey);
  }
}

uint64_t sub_100B663B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureLocationsCachedSharingKey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100B66414()
{
  result = qword_1016B6450;
  if (!qword_1016B6450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6450);
  }

  return result;
}

uint64_t sub_100B66468(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449794D646E6966 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010136DDD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010136DDF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E614872656E776FLL && a2 == 0xEB00000000656C64 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001013477D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000010136DE10 == a2)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_100B666C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614264726F636572 && a2 == 0xED00004C52556573;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4B676E6972616873 && a2 == 0xEB00000000737965)
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

uint64_t sub_100B667F0()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(ACAccountStore) init];
  v5 = [v4 aa_primaryAppleAccount];

  if (!v5)
  {
    if (qword_101694E48 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000076D4(v13, qword_10177BFF8);
    v5 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v5, v14, "Could not obtain aa_primaryAppleAccount while getting myPersonID !", v15, 2u);
    }

    goto LABEL_14;
  }

  v6 = [v5 aa_personID];
  if (!v6)
  {
    if (qword_101694E48 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000076D4(v16, qword_10177BFF8);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Primary AppleAccount has nil aa_personID!", v19, 2u);
    }

LABEL_14:
    return 0;
  }

  v7 = v6;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static String.Encoding.utf8.getter();
  v8 = String.data(using:allowLossyConversion:)();
  v10 = v9;

  (*(v1 + 8))(v3, v0);
  if (v10 >> 60 == 15)
  {
    v11 = 0;
    v12 = 0;
  }

  else
  {
    sub_100017D5C(v8, v10);
    v20 = Data.base64EncodedString(options:)(0);
    sub_100006654(v8, v10);
    v38 = v20;
    v36 = 61;
    v37 = 0xE100000000000000;
    v34 = 126;
    v35 = 0xE100000000000000;
    sub_1000DF96C();
    v11 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v12 = v21;
  }

  if (qword_101694E48 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_10177BFF8);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v38._countAndFlagsBits = v26;
    *v25 = 136315138;
    if (v12)
    {
      v27 = v11;
    }

    else
    {
      v27 = 7104878;
    }

    v33 = v8;
    if (v12)
    {
      v28 = v12;
    }

    else
    {
      v28 = 0xE300000000000000;
    }

    v29 = sub_1000136BC(v27, v28, &v38._countAndFlagsBits);

    *(v25 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v23, v24, "MyPersonID %s", v25, 0xCu);
    sub_100007BAC(v26);

    v30 = v33;
  }

  else
  {
    v30 = v8;
  }

  sub_100006654(v30, v10);

  return v11;
}

uint64_t sub_100B66D04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016B6448, "X-\t");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100B66DBC(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1002359B8(319, &qword_1016A0E30, &type metadata for PrivateKey);
    if (v2 <= 0x3F)
    {
      sub_1002359B8(319, &qword_1016B64C8, &type metadata for HashedAdvertisement);
      if (v3 <= 0x3F)
      {
        sub_1002359B8(319, &qword_10169D5C8, &type metadata for MessagingDestination);
        if (v4 <= 0x3F)
        {
          sub_1002359B8(319, &qword_1016BD350, &type metadata for String);
          if (v5 <= 0x3F)
          {
            sub_100157BAC(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100B66F20(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100B66FAC(uint64_t a1)
{
  *(a1 + 8) = sub_100003FAC(&qword_1016B65A8, type metadata accessor for SecureLocationsCachedSharingKey, &unk_1013D8F20);
  result = sub_100003FAC(&qword_1016B65B0, type metadata accessor for SecureLocationsCachedSharingKey, &unk_1013D8DE0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100B67078(uint64_t a1)
{
  *(a1 + 8) = sub_100003FAC(&qword_1016B65C0, type metadata accessor for SecureLocationsCachedSharedKey, &unk_1013D8ED0);
  result = sub_100003FAC(&qword_1016B0E18, type metadata accessor for SecureLocationsCachedSharedKey, &unk_1013D8EF8);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100B670FC()
{
  result = qword_1016B65D0;
  if (!qword_1016B65D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B65D0);
  }

  return result;
}

unint64_t sub_100B67150()
{
  result = qword_1016B65E0;
  if (!qword_1016B65E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B65E0);
  }

  return result;
}

unint64_t sub_100B671A4()
{
  result = qword_1016B65F0;
  if (!qword_1016B65F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B65F0);
  }

  return result;
}

uint64_t sub_100B671F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100B67260(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100B672C0(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016B6600, &qword_1013D8F98);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  sub_1000035D0(a1, v7);
  sub_100B670FC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[16] = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v9[15] = 1;
    sub_1000E307C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100007BAC(a1);
  return v7;
}

unint64_t sub_100B674B8()
{
  result = qword_1016B6610;
  if (!qword_1016B6610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6610);
  }

  return result;
}

unint64_t sub_100B67510()
{
  result = qword_1016B6618;
  if (!qword_1016B6618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6618);
  }

  return result;
}

unint64_t sub_100B67568()
{
  result = qword_1016B6620;
  if (!qword_1016B6620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6620);
  }

  return result;
}

unint64_t sub_100B675C0()
{
  result = qword_1016B6628;
  if (!qword_1016B6628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6628);
  }

  return result;
}

unint64_t sub_100B67618()
{
  result = qword_1016B6630;
  if (!qword_1016B6630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6630);
  }

  return result;
}

unint64_t sub_100B67670()
{
  result = qword_1016B6638;
  if (!qword_1016B6638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6638);
  }

  return result;
}

unint64_t sub_100B676C8()
{
  result = qword_1016B6640;
  if (!qword_1016B6640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6640);
  }

  return result;
}

unint64_t sub_100B67720()
{
  result = qword_1016B6648;
  if (!qword_1016B6648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6648);
  }

  return result;
}

unint64_t sub_100B67778()
{
  result = qword_1016B6650;
  if (!qword_1016B6650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6650);
  }

  return result;
}

unint64_t sub_100B677CC()
{
  v1 = 0xD000000000000014;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_100B67834(char a1)
{
  v2 = 0xD000000000000010;
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = 0xD000000000000014;
    }

    else
    {
      v2 = 0xD000000000000017;
    }

    if (a1 == 1)
    {
      v3 = ".pairedToAnotherAccount";
    }

    else
    {
      v3 = "lastProactiveSubscribeTime";
    }
  }

  else
  {
    v3 = ".pairedToThisAccount";
  }

  v4 = v3 | 0x8000000000000000;
  String.append(_:)(*&v2);

  return 0x203A737574617473;
}

uint64_t sub_100B678E0@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_100B679E4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_100B6790C(uint64_t a1)
{
  *(a1 + 8) = sub_100B6793C();
  result = sub_100B67990();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100B6793C()
{
  result = qword_1016B6658;
  if (!qword_1016B6658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6658);
  }

  return result;
}

unint64_t sub_100B67990()
{
  result = qword_1016B6660;
  if (!qword_1016B6660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6660);
  }

  return result;
}

uint64_t sub_100B679E4(void *a1)
{
  v3 = type metadata accessor for Endianness();
  __chkstk_darwin(v3 - 8);
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  v4 = sub_10015049C(v19, v19[3]);
  v5 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v1)
  {
LABEL_10:
    sub_100007BAC(v19);
    sub_100007BAC(a1);
    return v4;
  }

  v7 = v5;
  v8 = v6;
  sub_100017D5C(v5, v6);
  static Endianness.current.getter();
  sub_1000198E8();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (BYTE1(v20) == 1 || (v4 = v20, v20 >= 3u))
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_10177C418);
    sub_100017D5C(v7, v8);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    sub_100016590(v7, v8);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136315138;
      v14 = Data.hexString.getter();
      v16 = sub_1000136BC(v14, v15, &v20);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "Invalid FMNId status: %s", v12, 0xCu);
      sub_100007BAC(v13);
    }

    v4 = type metadata accessor for BinaryEncodingError();
    sub_100205404();
    swift_allocError();
    (*(*(v4 - 8) + 104))(v17, enum case for BinaryEncodingError.encodingError(_:), v4);
    swift_willThrow();
    sub_100016590(v7, v8);
    goto LABEL_10;
  }

  sub_100016590(v7, v8);
  sub_100007BAC(v19);
  sub_100007BAC(a1);
  return v4;
}

unint64_t sub_100B67D08()
{
  result = qword_1016B6668;
  if (!qword_1016B6668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6668);
  }

  return result;
}

uint64_t sub_100B67D6C(unint64_t a1, unint64_t a2)
{
  v2 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v2 - 8);
  sub_100101824();
  v55 = FixedWidthInteger.data.getter();
  v60 = v3;
  static String.Encoding.ascii.getter();
  sub_100165078();
  v4 = String.init<A>(bytes:encoding:)();
  v6 = v5;
  sub_100016590(v55, v60);
  if (!v6)
  {
    goto LABEL_10;
  }

  v56 = FixedWidthInteger.data.getter();
  v61 = v7;
  static String.Encoding.ascii.getter();
  v8 = String.init<A>(bytes:encoding:)();
  v10 = v9;
  sub_100016590(v56, v61);
  if (!v10)
  {
LABEL_9:

LABEL_10:
    v25 = FixedWidthInteger.data.getter();
    v27 = v26;
    v28 = Data.hexString.getter();
    sub_100016590(v25, v27);
    v59 = v28;
    v29._countAndFlagsBits = 46;
    v29._object = 0xE100000000000000;
    String.append(_:)(v29);
    v30 = FixedWidthInteger.data.getter();
    v32 = v31;
    v33 = Data.hexString.getter();
    v35 = v34;
    sub_100016590(v30, v32);
    v36._countAndFlagsBits = v33;
    v36._object = v35;
    String.append(_:)(v36);

    v37._countAndFlagsBits = 46;
    v37._object = 0xE100000000000000;
    String.append(_:)(v37);
    v38 = FixedWidthInteger.data.getter();
    v40 = v39;
    v41 = Data.hexString.getter();
    v43 = v42;
    sub_100016590(v38, v40);
    v44._countAndFlagsBits = v41;
    v44._object = v43;
    String.append(_:)(v44);

    v45._countAndFlagsBits = 46;
    v45._object = 0xE100000000000000;
    String.append(_:)(v45);
    v46 = FixedWidthInteger.data.getter();
    v48 = v47;
    v49 = Data.hexString.getter();
    v51 = v50;
    sub_100016590(v46, v48);
    v52._countAndFlagsBits = v49;
    v52._object = v51;
    String.append(_:)(v52);
    goto LABEL_11;
  }

  v54 = v8;
  v57 = FixedWidthInteger.data.getter();
  v62 = v11;
  static String.Encoding.ascii.getter();
  v12 = String.init<A>(bytes:encoding:)();
  v14 = v13;
  sub_100016590(v57, v62);
  if (!v14)
  {
LABEL_8:

    goto LABEL_9;
  }

  v58 = FixedWidthInteger.data.getter();
  v63 = v15;
  static String.Encoding.ascii.getter();
  v16 = String.init<A>(bytes:encoding:)();
  v18 = v17;
  sub_100016590(v58, v63);
  if (!v18)
  {

    goto LABEL_8;
  }

  v59 = v4;
  v19._countAndFlagsBits = 46;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = v54;
  v20._object = v10;
  String.append(_:)(v20);

  v21._countAndFlagsBits = 46;
  v21._object = 0xE100000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = v12;
  v22._object = v14;
  String.append(_:)(v22);

  v23._countAndFlagsBits = 46;
  v23._object = 0xE100000000000000;
  String.append(_:)(v23);
  v24._countAndFlagsBits = v16;
  v24._object = v18;
  String.append(_:)(v24);
LABEL_11:

  return v59;
}

uint64_t sub_100B68148(void *a1, unint64_t a2, unint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016B6688, &qword_1013D95C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100B6985C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v3)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v13 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v12 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v11 = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100B68328@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100B69524(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100B68350(uint64_t a1)
{
  v2 = sub_100B6985C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B6838C(uint64_t a1)
{
  v2 = sub_100B6985C();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100B683C8@<X0>(unint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100B69668(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_100B6841C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v10 = CustomStringConvertible.typeDescription.getter();
  v7._countAndFlagsBits = 32;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  v8._countAndFlagsBits = sub_100B67D6C(v3 | (v4 << 32), v5 | (v6 << 32));
  String.append(_:)(v8);

  return v10;
}

Swift::Int sub_100B684A0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

void sub_100B68520()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
}

Swift::Int sub_100B68578(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

unint64_t sub_100B68634()
{
  result = qword_1016B6670;
  if (!qword_1016B6670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6670);
  }

  return result;
}

void *sub_100B68688(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Endianness();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.Encoding();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1;
  v37 = a2;
  v34 = 46;
  v35 = 0xE100000000000000;
  sub_1000DF96C();
  v9 = StringProtocol.components<A>(separatedBy:)();

  if (*(v9 + 16) != 4)
  {
    goto LABEL_8;
  }

  static String.Encoding.ascii.getter();
  v10 = String.data(using:allowLossyConversion:)();
  v12 = v11;

  v13 = *(v6 + 8);
  v13(v8, v5);
  if (v12 >> 60 == 15)
  {
    goto LABEL_8;
  }

  sub_100017D5C(v10, v12);
  static Endianness.current.getter();
  v14 = sub_100101824();
  result = FixedWidthInteger.init(data:ofEndianness:)();
  if (BYTE4(v36) == 1)
  {
    goto LABEL_6;
  }

  v32 = v14;
  if (*(v9 + 16) < 2uLL)
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v31 = v36;

  static String.Encoding.ascii.getter();
  v33 = String.data(using:allowLossyConversion:)();
  v17 = v16;

  v13(v8, v5);
  if (v17 >> 60 == 15)
  {
LABEL_6:
    v18 = v10;
    v19 = v12;
LABEL_7:
    sub_100006654(v18, v19);
LABEL_8:

    return 0;
  }

  sub_100017D5C(v33, v17);
  static Endianness.current.getter();
  v20 = v17;
  result = FixedWidthInteger.init(data:ofEndianness:)();
  if (BYTE4(v36) == 1)
  {
    sub_100006654(v10, v12);
    v18 = v33;
LABEL_12:
    v19 = v20;
    goto LABEL_7;
  }

  v30 = v17;
  if (*(v9 + 16) < 3uLL)
  {
    goto LABEL_24;
  }

  v28 = v36;

  static String.Encoding.ascii.getter();
  v29 = String.data(using:allowLossyConversion:)();
  v22 = v21;

  v13(v8, v5);
  if (v22 >> 60 == 15)
  {
    sub_100006654(v10, v12);
    v18 = v33;
    v19 = v30;
    goto LABEL_7;
  }

  sub_100017D5C(v29, v22);
  static Endianness.current.getter();
  v20 = v22;
  result = FixedWidthInteger.init(data:ofEndianness:)();
  v23 = v33;
  if (BYTE4(v36) == 1)
  {
    sub_100006654(v10, v12);
    sub_100006654(v23, v30);
    v18 = v29;
    goto LABEL_12;
  }

  v27 = v20;
  if (*(v9 + 16) < 4uLL)
  {
    goto LABEL_25;
  }

  v26 = v36;

  static String.Encoding.ascii.getter();
  String.data(using:allowLossyConversion:)();
  v25 = v24;

  v13(v8, v5);
  if (v25 >> 60 == 15)
  {
    sub_100006654(v10, v12);
    sub_100006654(v33, v30);
    sub_100006654(v29, v27);
    return 0;
  }

  static Endianness.current.getter();
  FixedWidthInteger.init(data:ofEndianness:)();
  sub_100006654(v10, v12);
  sub_100006654(v33, v30);
  sub_100006654(v29, v27);
  if (BYTE4(v36) == 1)
  {
    return 0;
  }

  return (v31 | (v28 << 32));
}

void sub_100B68B98(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Endianness();
  __chkstk_darwin(v4 - 8);
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_17;
    }

    v7 = *(a1 + 16);
    v6 = *(a1 + 24);
    v8 = __OFSUB__(v6, v7);
    v9 = v6 - v7;
    if (!v8)
    {
      if (v9 == 19)
      {
        goto LABEL_8;
      }

LABEL_17:
      v22 = 0x800000010136DE90;
      sub_100233888();
      swift_allocError();
      v24 = 0xD000000000000013;
      goto LABEL_18;
    }

    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  if (v5)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 == 19)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

    goto LABEL_114;
  }

  if (BYTE6(a2) != 19)
  {
    goto LABEL_17;
  }

LABEL_8:
  if (Data._Representation.subscript.getter() != 46 || Data._Representation.subscript.getter() != 46 || Data._Representation.subscript.getter() != 46)
  {
    v22 = 0x800000010136DEB0;
    sub_100233888();
    swift_allocError();
    v24 = 0xD000000000000012;
LABEL_18:
    *v23 = v24;
    *(v23 + 8) = v22;
    *(v23 + 16) = 1;
    swift_willThrow();
    v25 = a1;
    v26 = a2;
LABEL_19:
    sub_100016590(v25, v26);
    return;
  }

  v74 = Data.subdata(in:)();
  v11 = v10;
  v70 = Data.subdata(in:)();
  v13 = v12;
  v68 = Data.subdata(in:)();
  v15 = v14;
  v72 = v11;
  v73 = Data.subdata(in:)();
  v17 = v11 >> 62;
  v69 = v13;
  v18 = v13 >> 62;
  v67 = v15;
  v19 = v15 >> 62;
  v71 = v16;
  v20 = v16 >> 62;
  if ((v11 >> 62) <= 1)
  {
    if (!v17)
    {
      v21 = BYTE6(v11);
      goto LABEL_26;
    }

LABEL_24:
    LODWORD(v21) = HIDWORD(v74) - v74;
    if (!__OFSUB__(HIDWORD(v74), v74))
    {
      v21 = v21;
      goto LABEL_26;
    }

LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  if (v17 != 2)
  {
    goto LABEL_74;
  }

  v28 = *(v74 + 16);
  v27 = *(v74 + 24);
  v8 = __OFSUB__(v27, v28);
  v21 = v27 - v28;
  if (v8)
  {
    __break(1u);
    goto LABEL_24;
  }

LABEL_26:
  if (v21 != 4)
  {
    goto LABEL_74;
  }

  if (v18 <= 1)
  {
    if (!v18)
    {
      v29 = BYTE6(v69);
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  if (v18 != 2)
  {
    goto LABEL_74;
  }

  v31 = *(v70 + 16);
  v30 = *(v70 + 24);
  v8 = __OFSUB__(v30, v31);
  v29 = v30 - v31;
  if (v8)
  {
    __break(1u);
LABEL_34:
    LODWORD(v29) = HIDWORD(v70) - v70;
    if (__OFSUB__(HIDWORD(v70), v70))
    {
LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

    v29 = v29;
  }

LABEL_36:
  if (v29 != 4)
  {
    goto LABEL_74;
  }

  if (v19 <= 1)
  {
    if (!v19)
    {
      v32 = BYTE6(v67);
      goto LABEL_46;
    }

LABEL_44:
    LODWORD(v32) = HIDWORD(v68) - v68;
    if (__OFSUB__(HIDWORD(v68), v68))
    {
LABEL_121:
      __break(1u);
      goto LABEL_122;
    }

    v32 = v32;
    goto LABEL_46;
  }

  if (v19 != 2)
  {
    goto LABEL_74;
  }

  v34 = *(v68 + 16);
  v33 = *(v68 + 24);
  v8 = __OFSUB__(v33, v34);
  v32 = v33 - v34;
  if (v8)
  {
    __break(1u);
    goto LABEL_44;
  }

LABEL_46:
  if (v32 != 4)
  {
    goto LABEL_74;
  }

  if (v20 <= 1)
  {
    if (!v20)
    {
      v35 = BYTE6(v16);
      goto LABEL_56;
    }

    goto LABEL_54;
  }

  if (v20 != 2)
  {
LABEL_74:
    _StringGuts.grow(_:)(40);

    if (v17 > 1)
    {
      if (v17 != 2 || !__OFSUB__(*(v74 + 24), *(v74 + 16)))
      {
        goto LABEL_82;
      }

      __break(1u);
    }

    else if (!v17)
    {
      goto LABEL_82;
    }

    if (!__OFSUB__(HIDWORD(v74), v74))
    {
LABEL_82:
      v42._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v42);

      v43._countAndFlagsBits = 978600480;
      v43._object = 0xE400000000000000;
      String.append(_:)(v43);
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          v44 = v69;
          v45 = v70;
          goto LABEL_92;
        }

        v44 = v69;
        v45 = v70;
        if (!__OFSUB__(*(v70 + 24), *(v70 + 16)))
        {
          goto LABEL_92;
        }

        __break(1u);
      }

      else if (!v18)
      {
        v44 = v69;
        v45 = v70;
LABEL_92:
        v46._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v46);

        v47._countAndFlagsBits = 978603296;
        v47._object = 0xE400000000000000;
        String.append(_:)(v47);
        if (v19 > 1)
        {
          if (v19 != 2)
          {
            v48 = v67;
            v49 = v68;
            goto LABEL_102;
          }

          v48 = v67;
          v49 = v68;
          if (!__OFSUB__(*(v68 + 24), *(v68 + 16)))
          {
            goto LABEL_102;
          }

          __break(1u);
        }

        else if (!v19)
        {
          v48 = v67;
          v49 = v68;
LABEL_102:
          v50._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v50);

          v51._countAndFlagsBits = 976243744;
          v51._object = 0xE400000000000000;
          String.append(_:)(v51);
          if (v20 > 1)
          {
            if (v20 != 2 || !__OFSUB__(*(v73 + 24), *(v73 + 16)))
            {
              goto LABEL_110;
            }

            __break(1u);
          }

          else if (!v20)
          {
            goto LABEL_110;
          }

          if (!__OFSUB__(HIDWORD(v73), v73))
          {
LABEL_110:
            v52._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v52);

            sub_100233888();
            swift_allocError();
            *v53 = 0xD000000000000014;
            *(v53 + 8) = 0x800000010136DED0;
            *(v53 + 16) = 1;
            swift_willThrow();
            sub_100016590(a1, a2);
            sub_100016590(v73, v71);
            sub_100016590(v49, v48);
            v54 = v45;
            v55 = v44;
            goto LABEL_111;
          }

          goto LABEL_119;
        }

        v49 = v68;
        if (!__OFSUB__(HIDWORD(v68), v68))
        {
          v48 = v67;
          goto LABEL_102;
        }

LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
        goto LABEL_120;
      }

      v45 = v70;
      if (!__OFSUB__(HIDWORD(v70), v70))
      {
        v44 = v69;
        goto LABEL_92;
      }

LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  v37 = *(v73 + 16);
  v36 = *(v73 + 24);
  v8 = __OFSUB__(v36, v37);
  v35 = v36 - v37;
  if (!v8)
  {
LABEL_56:
    if (v35 == 4)
    {
      sub_100017D5C(v74, v11);
      static Endianness.current.getter();
      sub_100101824();
      FixedWidthInteger.init(data:ofEndianness:)();
      if (v76)
      {
        v38 = 0;
      }

      else
      {
        v38 = v75;
      }

      v66 = v38;
      sub_100017D5C(v70, v69);
      static Endianness.current.getter();
      FixedWidthInteger.init(data:ofEndianness:)();
      if (v76)
      {
        v39 = 0;
      }

      else
      {
        v39 = v75;
      }

      v65 = v39;
      sub_100017D5C(v68, v67);
      static Endianness.current.getter();
      FixedWidthInteger.init(data:ofEndianness:)();
      if (v76)
      {
        v40 = 0;
      }

      else
      {
        v40 = v75;
      }

      sub_100017D5C(v73, v71);
      static Endianness.current.getter();
      FixedWidthInteger.init(data:ofEndianness:)();
      if (v76)
      {
        v41 = 0;
      }

      else
      {
        v41 = v75;
      }

      if (v66 && v65 && v40 && v41)
      {
        sub_100016590(v73, v71);
        sub_100016590(v68, v67);
        sub_100016590(v70, v69);
        sub_100016590(v74, v72);
        sub_100016590(a1, a2);
        return;
      }

      _StringGuts.grow(_:)(57);
      v56._countAndFlagsBits = 0xD000000000000025;
      v56._object = 0x800000010136DEF0;
      String.append(_:)(v56);
      v57._countAndFlagsBits = Data.description.getter();
      String.append(_:)(v57);

      v58._countAndFlagsBits = 978600480;
      v58._object = 0xE400000000000000;
      String.append(_:)(v58);
      v59._countAndFlagsBits = Data.description.getter();
      String.append(_:)(v59);

      v60._countAndFlagsBits = 978603296;
      v60._object = 0xE400000000000000;
      String.append(_:)(v60);
      v61._countAndFlagsBits = Data.description.getter();
      String.append(_:)(v61);

      v62._countAndFlagsBits = 976243744;
      v62._object = 0xE400000000000000;
      String.append(_:)(v62);
      v63._countAndFlagsBits = Data.description.getter();
      String.append(_:)(v63);

      sub_100233888();
      swift_allocError();
      *v64 = 0;
      *(v64 + 8) = 0xE000000000000000;
      *(v64 + 16) = 1;
      swift_willThrow();
      sub_100016590(a1, a2);
      sub_100016590(v73, v71);
      sub_100016590(v68, v67);
      v55 = v69;
      v54 = v70;
LABEL_111:
      sub_100016590(v54, v55);
      v25 = v74;
      v26 = v72;
      goto LABEL_19;
    }

    goto LABEL_74;
  }

  __break(1u);
LABEL_54:
  LODWORD(v35) = HIDWORD(v73) - v73;
  if (!__OFSUB__(HIDWORD(v73), v73))
  {
    v35 = v35;
    goto LABEL_56;
  }

LABEL_122:
  __break(1u);
}

uint64_t sub_100B69524(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 13388 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 21570 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 21581 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 12364 && a2 == 0xE200000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_100B69668(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016B6678, &qword_1013D95C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - v5;
  sub_1000035D0(a1, a1[3]);
  sub_100B6985C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100007BAC(a1);
  }

  v15 = 0;
  v7 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = 1;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = 2;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = 3;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_100007BAC(a1);
  return v7 | (v8 << 32);
}

unint64_t sub_100B6985C()
{
  result = qword_1016B6680;
  if (!qword_1016B6680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6680);
  }

  return result;
}

unint64_t sub_100B698C4()
{
  result = qword_1016B6690;
  if (!qword_1016B6690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6690);
  }

  return result;
}

unint64_t sub_100B6991C()
{
  result = qword_1016B6698;
  if (!qword_1016B6698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6698);
  }

  return result;
}

unint64_t sub_100B69974()
{
  result = qword_1016B66A0;
  if (!qword_1016B66A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B66A0);
  }

  return result;
}

uint64_t sub_100B699C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v63 = a1;
  v3 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v62 = &v58 - v8;
  v9 = __chkstk_darwin(v7);
  v61 = &v58 - v10;
  __chkstk_darwin(v9);
  v12 = &v58 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v60 = &v58 - v18;
  v19 = [v2 data];
  v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v20;
  v23 = v21;
  v24 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    v59 = v17;
    if (v24 != 2)
    {
LABEL_47:
      sub_100016590(v22, v23);
      goto LABEL_48;
    }

    v26 = v13;
    v27 = v2;
    v28 = v6;
    v29 = v19;
    v30 = v14;
    v31 = *(v20 + 16);
    v32 = *(v20 + 24);
    sub_100016590(v20, v21);
    v25 = v32 - v31;
    if (!__OFSUB__(v32, v31))
    {
      v14 = v30;
      v19 = v29;
      v6 = v28;
      v2 = v27;
      v13 = v26;
      v17 = v59;
      if (v25 == 16)
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v24)
  {
    v39 = HIDWORD(v20);
    sub_100016590(v20, v21);
    LODWORD(v25) = v39 - v22;
    if (!__OFSUB__(v39, v22))
    {
      v25 = v25;
      if (v25 == 16)
      {
        goto LABEL_14;
      }

LABEL_8:
      if (v25 == 4)
      {
        v23 = v2;
        v60 = v19;
        v61 = v6;
        v33 = v62;
        UUID.init(uuidString:)();
        v34 = *(v14 + 48);
        if (v34(v33, 1, v13) != 1)
        {
          v62 = *(v14 + 32);
          (v62)(v17, v33, v13);
          v64[0] = UUID.bytes.getter();
          v35 = [v2 data];
          v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v37 = v36;

          v23 = v14;
          sub_100B6A404(v22, v37, v64, sub_100B6A270, sub_100B6A270);
          sub_100016590(v22, v37);

          v38 = v61;
          UUID.init(bytes:)();
          if (v34(v38, 1, v13) != 1)
          {
            (*(v14 + 8))(v17, v13);

            (v62)(v63, v38, v13);
          }

          goto LABEL_45;
        }

        __break(1u);
      }

      else
      {
        if (v25 != 2)
        {
LABEL_48:
          result = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return result;
        }

        UUID.init(uuidString:)();
        v62 = *(v14 + 48);
        if ((v62)(v12, 1, v13) != 1)
        {
          v45 = *(v14 + 32);
          v46 = v60;
          v45();
          v64[0] = UUID.bytes.getter();
          v47 = [v2 data];
          v48 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v50 = v49;

          v23 = v14;
          sub_100B6A404(v48, v50, v64, sub_100B6A1B4, sub_100B6A1B4);
          sub_100016590(v48, v50);
          v22 = v64[0];

          v51 = v61;
          UUID.init(bytes:)();
          if ((v62)(v51, 1, v13) != 1)
          {
            (*(v23 + 8))(v46, v13);

            (v45)(v63, v51, v13);
          }

          goto LABEL_46;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    goto LABEL_39;
  }

  sub_100016590(v20, v21);
  v25 = BYTE6(v23);
  if (BYTE6(v23) != 16)
  {
    goto LABEL_8;
  }

LABEL_14:

  v40 = [v2 data];
  v41 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;

  v44 = v43 >> 62;
  if ((v43 >> 62) > 1)
  {
    if (v44 != 2)
    {
      memset(v64, 0, 14);
      goto LABEL_37;
    }

    v53 = *(v41 + 16);
    v54 = *(v41 + 24);
    v55 = __DataStorage._bytes.getter();
    if (v55)
    {
      v56 = __DataStorage._offset.getter();
      if (__OFSUB__(v53, v56))
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v55 += v53 - v56;
    }

    if (!__OFSUB__(v54, v53))
    {
      goto LABEL_33;
    }

    __break(1u);
  }

  else if (!v44)
  {
    v64[0] = v41;
    LOWORD(v64[1]) = v43;
    BYTE2(v64[1]) = BYTE2(v43);
    BYTE3(v64[1]) = BYTE3(v43);
    BYTE4(v64[1]) = BYTE4(v43);
    BYTE5(v64[1]) = BYTE5(v43);
LABEL_37:
    sub_100B6A3AC(v64);
    return sub_100016590(v41, v43);
  }

  if (v41 >> 32 < v41)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v55 = __DataStorage._bytes.getter();
  if (v55)
  {
    v57 = __DataStorage._offset.getter();
    if (!__OFSUB__(v41, v57))
    {
      v55 += v41 - v57;
      goto LABEL_33;
    }

LABEL_42:
    __break(1u);
  }

LABEL_33:
  __DataStorage._length.getter();
  sub_100B6A3AC(v55);

  return sub_100016590(v41, v43);
}

uint64_t sub_100B6A1B4(_BYTE *a1, uint64_t a2, char **a3)
{
  v4 = a1;
  v5 = *a1;
  v6 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_100607450(v6);
    *a3 = v6;
  }

  if (*(v6 + 2) < 3uLL)
  {
    __break(1u);
  }

  else
  {
    v6[34] = v5;
    v6 = *a3;
    LOBYTE(v4) = v4[1];
    result = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v6;
    if (result)
    {
      goto LABEL_5;
    }
  }

  result = sub_100607450(v6);
  v6 = result;
  *a3 = result;
LABEL_5:
  if (*(v6 + 2) < 4uLL)
  {
    __break(1u);
  }

  else
  {
    v6[35] = v4;
  }

  return result;
}

uint64_t sub_100B6A270(_BYTE *a1, uint64_t a2, char **a3)
{
  v4 = a1;
  v5 = *a1;
  v6 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v6;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (*(v6 + 2))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = sub_100607450(v6);
    *a3 = v6;
    if (*(v6 + 2))
    {
LABEL_3:
      v6[32] = v5;
      v6 = *a3;
      v5 = v4[1];
      v8 = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v6;
      if (v8)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_12:
  v6 = sub_100607450(v6);
  *a3 = v6;
LABEL_4:
  if (*(v6 + 2) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v6[33] = v5;
    v6 = *a3;
    v5 = v4[2];
    v9 = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v6;
    if (v9)
    {
      goto LABEL_6;
    }
  }

  v6 = sub_100607450(v6);
  *a3 = v6;
LABEL_6:
  if (*(v6 + 2) < 3uLL)
  {
    __break(1u);
  }

  else
  {
    v6[34] = v5;
    v6 = *a3;
    LOBYTE(v4) = v4[3];
    result = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v6;
    if (result)
    {
      goto LABEL_8;
    }
  }

  result = sub_100607450(v6);
  v6 = result;
  *a3 = result;
LABEL_8:
  if (*(v6 + 2) < 4uLL)
  {
    __break(1u);
  }

  else
  {
    v6[35] = v4;
  }

  return result;
}

uint64_t sub_100B6A404(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(void *, char *), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v10, 0, 14);
      v6 = v10;
      return (a4)(v10, v6, a3);
    }

    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    return sub_100B6A52C(v7, v8, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a5);
  }

  if (v5)
  {
    v7 = a1;
    v8 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_100B6A52C(v7, v8, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a5);
  }

  v10[0] = a1;
  LOWORD(v10[1]) = a2;
  BYTE2(v10[1]) = BYTE2(a2);
  BYTE3(v10[1]) = BYTE3(a2);
  BYTE4(v10[1]) = BYTE4(a2);
  BYTE5(v10[1]) = BYTE5(a2);
  v6 = v10 + BYTE6(a2);
  return (a4)(v10, v6, a3);
}

uint64_t sub_100B6A52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  result = __DataStorage._bytes.getter();
  v10 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v10 += a1 - result;
  }

  v11 = __OFSUB__(a2, a1);
  v12 = a2 - a1;
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = __DataStorage._length.getter();
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v15 = v14 + v10;
  if (v10)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  return a5(v10, v16, a4);
}

uint64_t sub_100B6A5D8()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BC50);
  sub_1000076D4(v0, qword_10177BC50);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100B6A658()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016B66A8);
  v1 = sub_1000076D4(v0, qword_1016B66A8);
  if (qword_101694CE0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177BC50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100B6A720(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v2[15] = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  v2[16] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016AA510, &unk_101393150);
  v2[17] = swift_task_alloc();
  v3 = type metadata accessor for DeviceEvent(0);
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016B67A8, &qword_1013D97C8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v4 = type metadata accessor for JSONDecoder.DateDecodingStrategy();
  v2[31] = v4;
  v2[32] = *(v4 - 8);
  v2[33] = swift_task_alloc();
  v5 = type metadata accessor for Response();
  v2[34] = v5;
  v2[35] = *(v5 - 8);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = *(type metadata accessor for LocalFindableAccessoryRecord(0) - 8);
  v2[39] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[40] = v6;
  v2[41] = *(v6 - 8);
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();

  return _swift_task_switch(sub_100B6AAA8, v1, 0);
}

uint64_t sub_100B6AAA8()
{
  if (qword_101694CE8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[44] = sub_1000076D4(v1, qword_1016B66A8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Preparing LocalFindable location fetching.", v4, 2u);
  }

  v5 = v0[13];

  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = [objc_opt_self() currentDevice];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 uniqueDeviceIdentifier];

      if (v9)
      {
        v10 = v0[41];
        v11 = v0[38];
        v12 = v0[13];
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v39 = v14;
        v40 = v13;

        sub_101123D4C(0, v6, 0);
        v15 = v12 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
        v16 = (v10 + 16);
        v41 = *(v11 + 72);
        do
        {
          v17 = v0[43];
          v19 = v0[39];
          v18 = v0[40];
          sub_100B72A30(v15, v19, type metadata accessor for LocalFindableAccessoryRecord);
          v20 = *v16;
          v0[57] = *v16;
          v0[58] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v20(v17, v19, v18);
          sub_100B72BF8(v19, type metadata accessor for LocalFindableAccessoryRecord);
          v22 = _swiftEmptyArrayStorage[2];
          v21 = _swiftEmptyArrayStorage[3];
          if (v22 >= v21 >> 1)
          {
            sub_101123D4C((v21 > 1), v22 + 1, 1);
          }

          v23 = v0[43];
          v24 = v0[40];
          _swiftEmptyArrayStorage[2] = v22 + 1;
          v25 = _swiftEmptyArrayStorage + ((*(v10 + 80) + 32) & ~*(v10 + 80));
          v26 = *(v10 + 72);
          v0[59] = v26;
          v27 = &v25[v26 * v22];
          v28 = *(v10 + 32);
          v0[60] = v28;
          v0[61] = (v10 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
          v28(v27, v23, v24);
          v15 += v41;
          --v6;
        }

        while (v6);
        v36 = v0[14];
        sub_101058BF4(v40, v39, _swiftEmptyArrayStorage, (v0 + 2));
        v37 = *(v36 + 112);

        v38 = swift_task_alloc();
        v0[45] = v38;
        *v38 = v0;
        v38[1] = sub_100B6AFC0;

        return sub_101058F64((v0 + 2), v37);
      }
    }

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Unable to get device identifier", v31, 2u);
    }

    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  sub_100B72A98();
  swift_allocError();
  *v33 = v32;
  swift_willThrow();

  v34 = v0[1];

  return v34();
}

uint64_t sub_100B6AFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[46] = a1;
  v5[47] = a2;
  v5[48] = a3;

  if (v3)
  {

    v6 = v5[1];

    return v6();
  }

  else
  {
    v5[49] = type metadata accessor for PencilSecureLocationsFetch();
    v5[50] = swift_allocObject();
    swift_defaultActor_initialize();
    v8 = swift_task_alloc();
    v5[51] = v8;
    *v8 = v5;
    v8[1] = sub_100B6B254;

    return daemon.getter();
  }
}

uint64_t sub_100B6B254(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[52] = a1;

  v3 = swift_task_alloc();
  v2[53] = v3;
  v4 = type metadata accessor for Daemon();
  v2[54] = v4;
  v5 = type metadata accessor for AccountService();
  v6 = sub_100B72BB0(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[55] = v6;
  v7 = sub_100B72BB0(&qword_101697890, type metadata accessor for AccountService, &unk_10139AEB0);
  *v3 = v9;
  v3[1] = sub_100B6B434;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100B6B434(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 448) = v1;

  if (v1)
  {
    v5 = sub_100B6B750;
  }

  else
  {
    *(v4 + 496) = a1;
    v5 = sub_100B6B578;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100B6B578()
{
  *(v0[50] + 112) = v0[62];
  v1 = swift_task_alloc();
  v0[63] = v1;
  *v1 = v0;
  v1[1] = sub_100B6B624;
  v2 = v0[47];
  v3 = v0[48];
  v4 = v0[46];
  v5 = v0[37];

  return sub_10046BCBC(v5, v4, v2, v3);
}

uint64_t sub_100B6B624()
{
  v2 = *v1;
  *(*v1 + 512) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_100B6EA60;
  }

  else
  {
    v4 = sub_100B6B948;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100B6B750()
{
  v1 = *(v0 + 112);
  swift_defaultActor_destroy();
  swift_deallocPartialClassInstance();

  return _swift_task_switch(sub_100B6B7DC, v1, 0);
}

uint64_t sub_100B6B7DC()
{
  sub_100006654(v0[46], v0[47]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100B6B948(uint64_t a1)
{
  v2 = Response.response.getter();
  v3 = [v2 statusCode];

  if (v3 != 200)
  {
    (*(v1[35] + 16))(v1[36], v1[37], v1[34]);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    v18 = os_log_type_enabled(v16, v17);
    v36 = v1[47];
    v35 = v1[46];
    v19 = v1[36];
    v20 = v1[37];
    v21 = v1[34];
    v22 = v1[35];
    if (v18)
    {
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      v34 = v20;
      v24 = Response.response.getter();
      v25 = [v24 statusCode];

      v26 = *(v22 + 8);
      v26(v19, v21);
      *(v23 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to fetch: %ld", v23, 0xCu);

      sub_100B72A98();
      swift_allocError();
      *v27 = 2;
      swift_willThrow();

      sub_100006654(v35, v36);

      v26(v34, v21);
    }

    else
    {
      v28 = *(v22 + 8);
      v28(v1[36], v1[34]);

      sub_100B72A98();
      swift_allocError();
      *v29 = 2;
      swift_willThrow();

      sub_100006654(v35, v36);

      v28(v20, v21);
    }

LABEL_9:

    v30 = v1[1];

    return v30();
  }

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Successful LocalFindable location fetching.", v6, 2u);
  }

  v7 = v1[64];
  v9 = v1[32];
  v8 = v1[33];
  v10 = v1[31];

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v1[65] = JSONDecoder.init()();
  *v8 = sub_100B72CC0;
  v8[1] = 0;
  (*(v9 + 104))(v8, enum case for JSONDecoder.DateDecodingStrategy.custom(_:), v10);
  dispatch thunk of JSONDecoder.dateDecodingStrategy.setter();
  v11 = Response.body.getter();
  v13 = v12;
  sub_100B72AEC();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v7)
  {
    v14 = v1[47];
    v15 = v1[46];
    (*(v1[35] + 8))(v1[37], v1[34]);
    sub_100016590(v11, v13);

    sub_100006654(v15, v14);

    goto LABEL_9;
  }

  sub_100016590(v11, v13);
  v1[66] = v1[9];
  v32 = swift_task_alloc();
  v1[67] = v32;
  *v32 = v1;
  v32[1] = sub_100B6BE8C;
  v33 = v1[30];

  return sub_100B6FA20(v33);
}

uint64_t sub_100B6BE8C()
{
  v1 = *(*v0 + 112);

  return _swift_task_switch(sub_100B6BF9C, v1, 0);
}

uint64_t sub_100B6BF9C()
{
  v1 = *(v0 + 528);
  v2 = sub_100B702C4(v1, *(v0 + 104));
  *(v0 + 544) = v2;

  v3 = *(v2 + 32);
  *(v0 + 90) = v3;
  v4 = 1 << v3;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  isa = v5 & v2[8];

  v7 = 0;
  while (1)
  {
    if (!isa)
    {
      v9 = ((1 << *(v0 + 90)) + 63) >> 6;
      if (v9 <= v7 + 1)
      {
        v10 = v7 + 1;
      }

      else
      {
        v10 = ((1 << *(v0 + 90)) + 63) >> 6;
      }

      v11 = v10 - 1;
      while (1)
      {
        v12 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v12 >= v9)
        {
          v47 = *(v0 + 208);
          v48 = sub_1000BC4D4(&qword_1016A58E0, &unk_1013B3330);
          (*(*(v48 - 8) + 56))(v47, 1, 1, v48);
          isa = 0;
          v7 = v11;
          goto LABEL_19;
        }

        v1 = *(v0 + 544);
        isa = v1[v12 + 8].isa;
        ++v7;
        if (isa)
        {
          v7 = v12;
          goto LABEL_18;
        }
      }

      __break(1u);
      goto LABEL_47;
    }

    v1 = *(v0 + 544);
LABEL_18:
    v81 = *(v0 + 480);
    v13 = *(v0 + 336);
    v14 = *(v0 + 320);
    v15 = __clz(__rbit64(isa));
    v17 = *(v0 + 200);
    v16 = *(v0 + 208);
    isa &= isa - 1;
    v18 = v15 | (v7 << 6);
    v19 = *(v0 + 152);
    (*(v0 + 456))(v13, v1[6].isa + *(v0 + 472) * v18, v14);
    sub_100B72A30(v1[7].isa + *(v19 + 72) * v18, v17, type metadata accessor for DeviceEvent);
    v20 = sub_1000BC4D4(&qword_1016A58E0, &unk_1013B3330);
    v21 = *(v20 + 48);
    v81(v16, v13, v14);
    sub_100B729C8(v17, v16 + v21, type metadata accessor for DeviceEvent);
    (*(*(v20 - 8) + 56))(v16, 0, 1, v20);
LABEL_19:
    *(v0 + 560) = v7;
    *(v0 + 552) = isa;
    v22 = *(v0 + 216);
    sub_100B72B40(*(v0 + 208), v22);
    v23 = sub_1000BC4D4(&qword_1016A58E0, &unk_1013B3330);
    if ((*(*(v23 - 8) + 48))(v22, 1, v23) == 1)
    {
      break;
    }

    v24 = *(v0 + 192);
    v26 = *(v0 + 136);
    v25 = *(v0 + 144);
    sub_100B729C8(*(v0 + 216) + *(v23 + 48), v24, type metadata accessor for DeviceEvent);
    sub_1000D2A70(v24 + *(v25 + 32), v26, &unk_1016AA510, &unk_101393150);
    v27 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
    if ((*(*(v27 - 8) + 48))(v26, 1, v27) == 1)
    {
      sub_10000B3A8(*(v0 + 136), &unk_1016AA510, &unk_101393150);
      v28 = 1;
    }

    else
    {
      v29 = *(v0 + 136);
      (*(v0 + 456))(*(v0 + 232), v29, *(v0 + 320));
      sub_100B72BF8(v29, type metadata accessor for DeviceEvent.AttachmentInfo);
      v28 = 0;
    }

    v31 = *(v0 + 320);
    v30 = *(v0 + 328);
    v33 = *(v0 + 232);
    v32 = *(v0 + 240);
    v35 = *(v0 + 120);
    v34 = *(v0 + 128);
    (*(v30 + 56))(v33, v28, 1, v31);
    v36 = *(v35 + 48);
    sub_1000D2A70(v33, v34, &qword_1016980D0, &unk_10138F3B0);
    sub_1000D2A70(v32, v34 + v36, &qword_1016980D0, &unk_10138F3B0);
    v37 = *(v30 + 48);
    v38 = v37(v34, 1, v31);
    v39 = *(v0 + 320);
    if (v38 == 1)
    {
      sub_10000B3A8(*(v0 + 232), &qword_1016980D0, &unk_10138F3B0);
      if (v37(v34 + v36, 1, v39) != 1)
      {
        goto LABEL_32;
      }

      sub_10000B3A8(*(v0 + 128), &qword_1016980D0, &unk_10138F3B0);
      goto LABEL_7;
    }

    sub_1000D2A70(*(v0 + 128), *(v0 + 224), &qword_1016980D0, &unk_10138F3B0);
    if (v37(v34 + v36, 1, v39) == 1)
    {
      v58 = *(v0 + 320);
      v59 = *(v0 + 328);
      v60 = *(v0 + 224);
      sub_10000B3A8(*(v0 + 232), &qword_1016980D0, &unk_10138F3B0);
      (*(v59 + 8))(v60, v58);
LABEL_32:
      sub_10000B3A8(*(v0 + 128), &qword_1016AF880, &unk_10138CE20);
LABEL_33:
      v61 = *(v0 + 192);
      v11 = *(v0 + 168);
      v62 = *(v0 + 176);
      sub_100B72A30(v61, *(v0 + 184), type metadata accessor for DeviceEvent);
      sub_100B72A30(v61, v62, type metadata accessor for DeviceEvent);
      sub_100B72A30(v61, v11, type metadata accessor for DeviceEvent);
      v1 = Logger.logObject.getter();
      LOBYTE(v11) = static os_log_type_t.error.getter();
      v63 = os_log_type_enabled(v1, v11);
      v64 = *(v0 + 176);
      v65 = *(v0 + 184);
      if (v63)
      {
        v7 = swift_slowAlloc();
        *(v0 + 96) = swift_slowAlloc();
        *v7 = 136446979;
        type metadata accessor for Date();
        sub_100B72BB0(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v66 = dispatch thunk of CustomStringConvertible.description.getter();
        v68 = v67;
        sub_100B72BF8(v65, type metadata accessor for DeviceEvent);
        v69 = sub_1000136BC(v66, v68, (v0 + 96));

        *(v7 + 4) = v69;
        *(v7 + 12) = 2082;
        v70 = *(v64 + 9);
        if (v70 > 3)
        {
          if (*(v64 + 9) > 5u)
          {
            if (v70 == 6)
            {
              v2 = 0xEC00000064657261;
              v71 = 0x657070617369642ELL;
            }

            else
            {
              v2 = 0xE500000000000000;
              v71 = 0x726961702ELL;
            }

            goto LABEL_52;
          }

          if (v70 != 4)
          {
            v2 = 0xEF79627261654E64;
            v71 = 0x657463657465642ELL;
            goto LABEL_52;
          }

          v2 = 0xE700000000000000;
          v73 = 1952801838;
        }

        else
        {
          if (*(v64 + 9) <= 1u)
          {
            v2 = 0xE800000000000000;
            if (!*(v64 + 9))
            {
              v71 = 0x6E776F6E6B6E752ELL;
              goto LABEL_52;
            }

LABEL_47:
            v71 = 0x7463656E6E6F632ELL;
LABEL_52:
            v74 = *(v0 + 168);
            sub_100B72BF8(*(v0 + 176), type metadata accessor for DeviceEvent);
            v75 = sub_1000136BC(v71, v2, (v0 + 96));

            *(v7 + 14) = v75;
            *(v7 + 22) = 2160;
            *(v7 + 24) = 1752392040;
            *(v7 + 32) = 2081;
            type metadata accessor for BeaconIdentifier(0);
            sub_100B72BB0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v76 = dispatch thunk of CustomStringConvertible.description.getter();
            v78 = v77;
            sub_100B72BF8(v74, type metadata accessor for DeviceEvent);
            v79 = sub_1000136BC(v76, v78, (v0 + 96));

            *(v7 + 34) = v79;
            _os_log_impl(&_mh_execute_header, v1, v11, "Saving device event %{public}s, source: %{public}s, for beacon %{private,mask.hash}s.", v7, 0x2Au);
            swift_arrayDestroy();

LABEL_53:
            v80 = swift_task_alloc();
            *(v0 + 568) = v80;
            *v80 = v0;
            v80[1] = sub_100B6CBAC;

            return daemon.getter();
          }

          if (v70 == 2)
          {
            v2 = 0xEB00000000746365;
            v71 = 0x6E6E6F637369642ELL;
            goto LABEL_52;
          }

          v2 = 0xE700000000000000;
          v73 = 1953784110;
        }

        v71 = v73 | 0x68636100000000;
        goto LABEL_52;
      }

      v72 = *(v0 + 168);

      sub_100B72BF8(v72, type metadata accessor for DeviceEvent);
      sub_100B72BF8(v64, type metadata accessor for DeviceEvent);
      sub_100B72BF8(v65, type metadata accessor for DeviceEvent);
      goto LABEL_53;
    }

    v40 = *(v0 + 328);
    v41 = *(v0 + 336);
    v42 = *(v0 + 320);
    v44 = *(v0 + 224);
    v43 = *(v0 + 232);
    v82 = *(v0 + 128);
    (*(v0 + 480))(v41, v34 + v36, v42);
    sub_100B72BB0(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v45 = dispatch thunk of static Equatable.== infix(_:_:)();
    v46 = *(v40 + 8);
    v46(v41, v42);
    sub_10000B3A8(v43, &qword_1016980D0, &unk_10138F3B0);
    v46(v44, v42);
    sub_10000B3A8(v82, &qword_1016980D0, &unk_10138F3B0);
    if ((v45 & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_7:
    v2 = *(v0 + 320);
    v8 = *(v0 + 328);
    v1 = *(v0 + 216);
    sub_100B72BF8(*(v0 + 192), type metadata accessor for DeviceEvent);
    (*(v8 + 8))(v1, v2);
  }

  v49 = *(v0 + 376);
  v50 = *(v0 + 368);
  v51 = *(v0 + 296);
  v53 = *(v0 + 272);
  v52 = *(v0 + 280);
  v54 = *(v0 + 240);

  sub_100006654(v50, v49);

  sub_10000B3A8(v54, &qword_1016980D0, &unk_10138F3B0);
  (*(v52 + 8))(v51, v53);

  v55 = *(v0 + 8);
  v56 = *(v0 + 544);

  return v55(v56);
}

uint64_t sub_100B6CBAC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 576) = a1;

  v5 = swift_task_alloc();
  *(v3 + 584) = v5;
  v6 = type metadata accessor for ObservationStoreService();
  v7 = sub_100B72BB0(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v5 = v4;
  v5[1] = sub_100B6CD60;
  v8 = *(v2 + 440);
  v9 = *(v2 + 432);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_100B6CD60(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[74] = a1;
  v3[75] = v1;

  if (v1)
  {
    v5 = v3[14];

    return _swift_task_switch(sub_100B6D01C, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[76] = v6;
    *v6 = v4;
    v6[1] = sub_100B6CEF4;
    v7 = v3[24];

    return sub_1010D02E4(v7);
  }
}

uint64_t sub_100B6CEF4()
{
  v2 = *v1;
  *(*v1 + 616) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = sub_100B6EBDC;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_100B6DE60;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100B6D01C()
{
  v97 = v0;
  v1 = *(v0 + 600);
  v2 = *(v0 + 192);
  v3 = *(v0 + 160);

  sub_100B72A30(v2, v3, type metadata accessor for DeviceEvent);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v94 = *(v0 + 192);
    v6 = *(v0 + 160);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v96 = v92;
    *v7 = 138543875;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    *(v7 + 12) = 2160;
    *(v7 + 14) = 1752392040;
    *(v7 + 22) = 2081;
    type metadata accessor for BeaconIdentifier(0);
    sub_100B72BB0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v13 = type metadata accessor for DeviceEvent;
    sub_100B72BF8(v6, type metadata accessor for DeviceEvent);
    v14 = sub_1000136BC(v10, v12, &v96);

    *(v7 + 24) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to save location %{public}@, for beacon %{private,mask.hash}s.", v7, 0x20u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v92);

    v15 = v94;
  }

  else
  {
    v13 = *(v0 + 192);
    v16 = *(v0 + 160);

    v1 = type metadata accessor for DeviceEvent;
    sub_100B72BF8(v16, type metadata accessor for DeviceEvent);
    v15 = v13;
  }

  sub_100B72BF8(v15, type metadata accessor for DeviceEvent);
  (*(*(v0 + 328) + 8))(*(v0 + 216), *(v0 + 320));
  v17 = *(v0 + 560);
  isa = *(v0 + 552);
  while (1)
  {
    if (!isa)
    {
      v20 = ((1 << *(v0 + 90)) + 63) >> 6;
      if (v20 <= v17 + 1)
      {
        v21 = v17 + 1;
      }

      else
      {
        v21 = ((1 << *(v0 + 90)) + 63) >> 6;
      }

      v22 = v21 - 1;
      while (1)
      {
        v23 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v23 >= v20)
        {
          v58 = *(v0 + 208);
          v59 = sub_1000BC4D4(&qword_1016A58E0, &unk_1013B3330);
          (*(*(v59 - 8) + 56))(v58, 1, 1, v59);
          isa = 0;
          v17 = v22;
          goto LABEL_19;
        }

        v1 = *(v0 + 544);
        isa = v1[v23 + 8].isa;
        ++v17;
        if (isa)
        {
          v17 = v23;
          goto LABEL_18;
        }
      }

      __break(1u);
      goto LABEL_47;
    }

    v1 = *(v0 + 544);
LABEL_18:
    v93 = *(v0 + 480);
    v24 = *(v0 + 336);
    v25 = *(v0 + 320);
    v26 = __clz(__rbit64(isa));
    v28 = *(v0 + 200);
    v27 = *(v0 + 208);
    isa &= isa - 1;
    v29 = v26 | (v17 << 6);
    v30 = *(v0 + 152);
    (*(v0 + 456))(v24, v1[6].isa + *(v0 + 472) * v29, v25);
    sub_100B72A30(v1[7].isa + *(v30 + 72) * v29, v28, type metadata accessor for DeviceEvent);
    v31 = sub_1000BC4D4(&qword_1016A58E0, &unk_1013B3330);
    v32 = *(v31 + 48);
    v93(v27, v24, v25);
    sub_100B729C8(v28, v27 + v32, type metadata accessor for DeviceEvent);
    (*(*(v31 - 8) + 56))(v27, 0, 1, v31);
LABEL_19:
    *(v0 + 560) = v17;
    *(v0 + 552) = isa;
    v33 = *(v0 + 216);
    sub_100B72B40(*(v0 + 208), v33);
    v34 = sub_1000BC4D4(&qword_1016A58E0, &unk_1013B3330);
    if ((*(*(v34 - 8) + 48))(v33, 1, v34) == 1)
    {
      break;
    }

    v35 = *(v0 + 192);
    v37 = *(v0 + 136);
    v36 = *(v0 + 144);
    sub_100B729C8(*(v0 + 216) + *(v34 + 48), v35, type metadata accessor for DeviceEvent);
    sub_1000D2A70(v35 + *(v36 + 32), v37, &unk_1016AA510, &unk_101393150);
    v38 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
    if ((*(*(v38 - 8) + 48))(v37, 1, v38) == 1)
    {
      sub_10000B3A8(*(v0 + 136), &unk_1016AA510, &unk_101393150);
      v39 = 1;
    }

    else
    {
      v40 = *(v0 + 136);
      (*(v0 + 456))(*(v0 + 232), v40, *(v0 + 320));
      sub_100B72BF8(v40, type metadata accessor for DeviceEvent.AttachmentInfo);
      v39 = 0;
    }

    v42 = *(v0 + 320);
    v41 = *(v0 + 328);
    v44 = *(v0 + 232);
    v43 = *(v0 + 240);
    v46 = *(v0 + 120);
    v45 = *(v0 + 128);
    (*(v41 + 56))(v44, v39, 1, v42);
    v47 = *(v46 + 48);
    sub_1000D2A70(v44, v45, &qword_1016980D0, &unk_10138F3B0);
    sub_1000D2A70(v43, v45 + v47, &qword_1016980D0, &unk_10138F3B0);
    v48 = *(v41 + 48);
    v49 = v48(v45, 1, v42);
    v50 = *(v0 + 320);
    if (v49 == 1)
    {
      sub_10000B3A8(*(v0 + 232), &qword_1016980D0, &unk_10138F3B0);
      if (v48(v45 + v47, 1, v50) != 1)
      {
        goto LABEL_32;
      }

      sub_10000B3A8(*(v0 + 128), &qword_1016980D0, &unk_10138F3B0);
      goto LABEL_7;
    }

    sub_1000D2A70(*(v0 + 128), *(v0 + 224), &qword_1016980D0, &unk_10138F3B0);
    if (v48(v45 + v47, 1, v50) == 1)
    {
      v69 = *(v0 + 320);
      v70 = *(v0 + 328);
      v71 = *(v0 + 224);
      sub_10000B3A8(*(v0 + 232), &qword_1016980D0, &unk_10138F3B0);
      (*(v70 + 8))(v71, v69);
LABEL_32:
      sub_10000B3A8(*(v0 + 128), &qword_1016AF880, &unk_10138CE20);
LABEL_33:
      v72 = *(v0 + 192);
      v22 = *(v0 + 168);
      v73 = *(v0 + 176);
      sub_100B72A30(v72, *(v0 + 184), type metadata accessor for DeviceEvent);
      sub_100B72A30(v72, v73, type metadata accessor for DeviceEvent);
      sub_100B72A30(v72, v22, type metadata accessor for DeviceEvent);
      v1 = Logger.logObject.getter();
      LOBYTE(v22) = static os_log_type_t.error.getter();
      v74 = os_log_type_enabled(v1, v22);
      v75 = *(v0 + 176);
      v76 = *(v0 + 184);
      if (v74)
      {
        v17 = swift_slowAlloc();
        *(v0 + 96) = swift_slowAlloc();
        *v17 = 136446979;
        type metadata accessor for Date();
        sub_100B72BB0(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v77 = dispatch thunk of CustomStringConvertible.description.getter();
        v79 = v78;
        sub_100B72BF8(v76, type metadata accessor for DeviceEvent);
        v80 = sub_1000136BC(v77, v79, (v0 + 96));

        *(v17 + 4) = v80;
        *(v17 + 12) = 2082;
        v81 = *(v75 + 9);
        if (v81 > 3)
        {
          if (*(v75 + 9) > 5u)
          {
            if (v81 == 6)
            {
              v13 = 0xEC00000064657261;
              v82 = 0x657070617369642ELL;
            }

            else
            {
              v13 = 0xE500000000000000;
              v82 = 0x726961702ELL;
            }

            goto LABEL_52;
          }

          if (v81 != 4)
          {
            v13 = 0xEF79627261654E64;
            v82 = 0x657463657465642ELL;
            goto LABEL_52;
          }

          v13 = 0xE700000000000000;
          v84 = 1952801838;
        }

        else
        {
          if (*(v75 + 9) <= 1u)
          {
            v13 = 0xE800000000000000;
            if (!*(v75 + 9))
            {
              v82 = 0x6E776F6E6B6E752ELL;
              goto LABEL_52;
            }

LABEL_47:
            v82 = 0x7463656E6E6F632ELL;
LABEL_52:
            v85 = *(v0 + 168);
            sub_100B72BF8(*(v0 + 176), type metadata accessor for DeviceEvent);
            v86 = sub_1000136BC(v82, v13, (v0 + 96));

            *(v17 + 14) = v86;
            *(v17 + 22) = 2160;
            *(v17 + 24) = 1752392040;
            *(v17 + 32) = 2081;
            type metadata accessor for BeaconIdentifier(0);
            sub_100B72BB0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v87 = dispatch thunk of CustomStringConvertible.description.getter();
            v89 = v88;
            sub_100B72BF8(v85, type metadata accessor for DeviceEvent);
            v90 = sub_1000136BC(v87, v89, (v0 + 96));

            *(v17 + 34) = v90;
            _os_log_impl(&_mh_execute_header, v1, v22, "Saving device event %{public}s, source: %{public}s, for beacon %{private,mask.hash}s.", v17, 0x2Au);
            swift_arrayDestroy();

LABEL_53:
            v91 = swift_task_alloc();
            *(v0 + 568) = v91;
            *v91 = v0;
            v91[1] = sub_100B6CBAC;

            return daemon.getter();
          }

          if (v81 == 2)
          {
            v13 = 0xEB00000000746365;
            v82 = 0x6E6E6F637369642ELL;
            goto LABEL_52;
          }

          v13 = 0xE700000000000000;
          v84 = 1953784110;
        }

        v82 = v84 | 0x68636100000000;
        goto LABEL_52;
      }

      v83 = *(v0 + 168);

      sub_100B72BF8(v83, type metadata accessor for DeviceEvent);
      sub_100B72BF8(v75, type metadata accessor for DeviceEvent);
      sub_100B72BF8(v76, type metadata accessor for DeviceEvent);
      goto LABEL_53;
    }

    v51 = *(v0 + 328);
    v52 = *(v0 + 336);
    v53 = *(v0 + 320);
    v55 = *(v0 + 224);
    v54 = *(v0 + 232);
    v95 = *(v0 + 128);
    (*(v0 + 480))(v52, v45 + v47, v53);
    sub_100B72BB0(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v56 = dispatch thunk of static Equatable.== infix(_:_:)();
    v57 = *(v51 + 8);
    v57(v52, v53);
    sub_10000B3A8(v54, &qword_1016980D0, &unk_10138F3B0);
    v57(v55, v53);
    sub_10000B3A8(v95, &qword_1016980D0, &unk_10138F3B0);
    if ((v56 & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_7:
    v13 = *(v0 + 320);
    v19 = *(v0 + 328);
    v1 = *(v0 + 216);
    sub_100B72BF8(*(v0 + 192), type metadata accessor for DeviceEvent);
    (*(v19 + 8))(v1, v13);
  }

  v60 = *(v0 + 376);
  v61 = *(v0 + 368);
  v62 = *(v0 + 296);
  v64 = *(v0 + 272);
  v63 = *(v0 + 280);
  v65 = *(v0 + 240);

  sub_100006654(v61, v60);

  sub_10000B3A8(v65, &qword_1016980D0, &unk_10138F3B0);
  (*(v63 + 8))(v62, v64);

  v66 = *(v0 + 8);
  v67 = *(v0 + 544);

  return v66(v67);
}

uint64_t sub_100B6DE60()
{
  sub_100B72BF8(*(v2 + 192), type metadata accessor for DeviceEvent);
  (*(*(v2 + 328) + 8))(*(v2 + 216), *(v2 + 320));
  v3 = *(v2 + 560);
  isa = *(v2 + 552);
  while (1)
  {
    if (!isa)
    {
      v6 = ((1 << *(v2 + 90)) + 63) >> 6;
      if (v6 <= v3 + 1)
      {
        v7 = v3 + 1;
      }

      else
      {
        v7 = ((1 << *(v2 + 90)) + 63) >> 6;
      }

      v8 = v7 - 1;
      while (1)
      {
        v9 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        if (v9 >= v6)
        {
          v44 = *(v2 + 208);
          v45 = sub_1000BC4D4(&qword_1016A58E0, &unk_1013B3330);
          (*(*(v45 - 8) + 56))(v44, 1, 1, v45);
          isa = 0;
          v3 = v8;
          goto LABEL_16;
        }

        v0 = *(v2 + 544);
        isa = v0[v9 + 8].isa;
        ++v3;
        if (isa)
        {
          v3 = v9;
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_44;
    }

    v0 = *(v2 + 544);
LABEL_15:
    v78 = *(v2 + 480);
    v10 = *(v2 + 336);
    v11 = *(v2 + 320);
    v12 = __clz(__rbit64(isa));
    v14 = *(v2 + 200);
    v13 = *(v2 + 208);
    isa &= isa - 1;
    v15 = v12 | (v3 << 6);
    v16 = *(v2 + 152);
    (*(v2 + 456))(v10, v0[6].isa + *(v2 + 472) * v15, v11);
    sub_100B72A30(v0[7].isa + *(v16 + 72) * v15, v14, type metadata accessor for DeviceEvent);
    v17 = sub_1000BC4D4(&qword_1016A58E0, &unk_1013B3330);
    v18 = *(v17 + 48);
    v78(v13, v10, v11);
    sub_100B729C8(v14, v13 + v18, type metadata accessor for DeviceEvent);
    (*(*(v17 - 8) + 56))(v13, 0, 1, v17);
LABEL_16:
    *(v2 + 560) = v3;
    *(v2 + 552) = isa;
    v19 = *(v2 + 216);
    sub_100B72B40(*(v2 + 208), v19);
    v20 = sub_1000BC4D4(&qword_1016A58E0, &unk_1013B3330);
    if ((*(*(v20 - 8) + 48))(v19, 1, v20) == 1)
    {
      break;
    }

    v21 = *(v2 + 192);
    v23 = *(v2 + 136);
    v22 = *(v2 + 144);
    sub_100B729C8(*(v2 + 216) + *(v20 + 48), v21, type metadata accessor for DeviceEvent);
    sub_1000D2A70(v21 + *(v22 + 32), v23, &unk_1016AA510, &unk_101393150);
    v24 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
    if ((*(*(v24 - 8) + 48))(v23, 1, v24) == 1)
    {
      sub_10000B3A8(*(v2 + 136), &unk_1016AA510, &unk_101393150);
      v25 = 1;
    }

    else
    {
      v26 = *(v2 + 136);
      (*(v2 + 456))(*(v2 + 232), v26, *(v2 + 320));
      sub_100B72BF8(v26, type metadata accessor for DeviceEvent.AttachmentInfo);
      v25 = 0;
    }

    v28 = *(v2 + 320);
    v27 = *(v2 + 328);
    v30 = *(v2 + 232);
    v29 = *(v2 + 240);
    v32 = *(v2 + 120);
    v31 = *(v2 + 128);
    (*(v27 + 56))(v30, v25, 1, v28);
    v33 = *(v32 + 48);
    sub_1000D2A70(v30, v31, &qword_1016980D0, &unk_10138F3B0);
    sub_1000D2A70(v29, v31 + v33, &qword_1016980D0, &unk_10138F3B0);
    v34 = *(v27 + 48);
    v35 = v34(v31, 1, v28);
    v36 = *(v2 + 320);
    if (v35 == 1)
    {
      sub_10000B3A8(*(v2 + 232), &qword_1016980D0, &unk_10138F3B0);
      if (v34(v31 + v33, 1, v36) != 1)
      {
        goto LABEL_29;
      }

      sub_10000B3A8(*(v2 + 128), &qword_1016980D0, &unk_10138F3B0);
      goto LABEL_4;
    }

    sub_1000D2A70(*(v2 + 128), *(v2 + 224), &qword_1016980D0, &unk_10138F3B0);
    if (v34(v31 + v33, 1, v36) == 1)
    {
      v55 = *(v2 + 320);
      v56 = *(v2 + 328);
      v57 = *(v2 + 224);
      sub_10000B3A8(*(v2 + 232), &qword_1016980D0, &unk_10138F3B0);
      (*(v56 + 8))(v57, v55);
LABEL_29:
      sub_10000B3A8(*(v2 + 128), &qword_1016AF880, &unk_10138CE20);
LABEL_30:
      v58 = *(v2 + 192);
      v8 = *(v2 + 168);
      v59 = *(v2 + 176);
      sub_100B72A30(v58, *(v2 + 184), type metadata accessor for DeviceEvent);
      sub_100B72A30(v58, v59, type metadata accessor for DeviceEvent);
      sub_100B72A30(v58, v8, type metadata accessor for DeviceEvent);
      v0 = Logger.logObject.getter();
      LOBYTE(v8) = static os_log_type_t.error.getter();
      v60 = os_log_type_enabled(v0, v8);
      v61 = *(v2 + 176);
      v62 = *(v2 + 184);
      if (v60)
      {
        v3 = swift_slowAlloc();
        *(v2 + 96) = swift_slowAlloc();
        *v3 = 136446979;
        type metadata accessor for Date();
        sub_100B72BB0(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v63 = dispatch thunk of CustomStringConvertible.description.getter();
        v65 = v64;
        sub_100B72BF8(v62, type metadata accessor for DeviceEvent);
        v66 = sub_1000136BC(v63, v65, (v2 + 96));

        *(v3 + 4) = v66;
        *(v3 + 12) = 2082;
        v67 = *(v61 + 9);
        if (v67 > 3)
        {
          if (*(v61 + 9) > 5u)
          {
            if (v67 == 6)
            {
              v1 = 0xEC00000064657261;
              v68 = 0x657070617369642ELL;
            }

            else
            {
              v1 = 0xE500000000000000;
              v68 = 0x726961702ELL;
            }

            goto LABEL_49;
          }

          if (v67 != 4)
          {
            v1 = 0xEF79627261654E64;
            v68 = 0x657463657465642ELL;
            goto LABEL_49;
          }

          v1 = 0xE700000000000000;
          v70 = 1952801838;
        }

        else
        {
          if (*(v61 + 9) <= 1u)
          {
            v1 = 0xE800000000000000;
            if (!*(v61 + 9))
            {
              v68 = 0x6E776F6E6B6E752ELL;
              goto LABEL_49;
            }

LABEL_44:
            v68 = 0x7463656E6E6F632ELL;
LABEL_49:
            v71 = *(v2 + 168);
            sub_100B72BF8(*(v2 + 176), type metadata accessor for DeviceEvent);
            v72 = sub_1000136BC(v68, v1, (v2 + 96));

            *(v3 + 14) = v72;
            *(v3 + 22) = 2160;
            *(v3 + 24) = 1752392040;
            *(v3 + 32) = 2081;
            type metadata accessor for BeaconIdentifier(0);
            sub_100B72BB0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v73 = dispatch thunk of CustomStringConvertible.description.getter();
            v75 = v74;
            sub_100B72BF8(v71, type metadata accessor for DeviceEvent);
            v76 = sub_1000136BC(v73, v75, (v2 + 96));

            *(v3 + 34) = v76;
            _os_log_impl(&_mh_execute_header, v0, v8, "Saving device event %{public}s, source: %{public}s, for beacon %{private,mask.hash}s.", v3, 0x2Au);
            swift_arrayDestroy();

LABEL_50:
            v77 = swift_task_alloc();
            *(v2 + 568) = v77;
            *v77 = v2;
            v77[1] = sub_100B6CBAC;

            return daemon.getter();
          }

          if (v67 == 2)
          {
            v1 = 0xEB00000000746365;
            v68 = 0x6E6E6F637369642ELL;
            goto LABEL_49;
          }

          v1 = 0xE700000000000000;
          v70 = 1953784110;
        }

        v68 = v70 | 0x68636100000000;
        goto LABEL_49;
      }

      v69 = *(v2 + 168);

      sub_100B72BF8(v69, type metadata accessor for DeviceEvent);
      sub_100B72BF8(v61, type metadata accessor for DeviceEvent);
      sub_100B72BF8(v62, type metadata accessor for DeviceEvent);
      goto LABEL_50;
    }

    v37 = *(v2 + 328);
    v38 = *(v2 + 336);
    v39 = *(v2 + 320);
    v41 = *(v2 + 224);
    v40 = *(v2 + 232);
    v79 = *(v2 + 128);
    (*(v2 + 480))(v38, v31 + v33, v39);
    sub_100B72BB0(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v42 = dispatch thunk of static Equatable.== infix(_:_:)();
    v43 = *(v37 + 8);
    v43(v38, v39);
    sub_10000B3A8(v40, &qword_1016980D0, &unk_10138F3B0);
    v43(v41, v39);
    sub_10000B3A8(v79, &qword_1016980D0, &unk_10138F3B0);
    if ((v42 & 1) == 0)
    {
      goto LABEL_30;
    }

LABEL_4:
    v1 = *(v2 + 320);
    v5 = *(v2 + 328);
    v0 = *(v2 + 216);
    sub_100B72BF8(*(v2 + 192), type metadata accessor for DeviceEvent);
    (*(v5 + 8))(v0, v1);
  }

  v46 = *(v2 + 376);
  v47 = *(v2 + 368);
  v48 = *(v2 + 296);
  v50 = *(v2 + 272);
  v49 = *(v2 + 280);
  v51 = *(v2 + 240);

  sub_100006654(v47, v46);

  sub_10000B3A8(v51, &qword_1016980D0, &unk_10138F3B0);
  (*(v49 + 8))(v48, v50);

  v52 = *(v2 + 8);
  v53 = *(v2 + 544);

  return v52(v53);
}

uint64_t sub_100B6EA60()
{
  v1 = v0[47];
  v2 = v0[46];

  sub_100006654(v2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100B6EBDC()
{
  v97 = v0;
  v1 = *(v0 + 616);
  v2 = *(v0 + 192);
  v3 = *(v0 + 160);

  sub_100B72A30(v2, v3, type metadata accessor for DeviceEvent);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v94 = *(v0 + 192);
    v6 = *(v0 + 160);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v96 = v92;
    *v7 = 138543875;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    *(v7 + 12) = 2160;
    *(v7 + 14) = 1752392040;
    *(v7 + 22) = 2081;
    type metadata accessor for BeaconIdentifier(0);
    sub_100B72BB0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v13 = type metadata accessor for DeviceEvent;
    sub_100B72BF8(v6, type metadata accessor for DeviceEvent);
    v14 = sub_1000136BC(v10, v12, &v96);

    *(v7 + 24) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to save location %{public}@, for beacon %{private,mask.hash}s.", v7, 0x20u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v92);

    v15 = v94;
  }

  else
  {
    v13 = *(v0 + 192);
    v16 = *(v0 + 160);

    v1 = type metadata accessor for DeviceEvent;
    sub_100B72BF8(v16, type metadata accessor for DeviceEvent);
    v15 = v13;
  }

  sub_100B72BF8(v15, type metadata accessor for DeviceEvent);
  (*(*(v0 + 328) + 8))(*(v0 + 216), *(v0 + 320));
  v17 = *(v0 + 560);
  isa = *(v0 + 552);
  while (1)
  {
    if (!isa)
    {
      v20 = ((1 << *(v0 + 90)) + 63) >> 6;
      if (v20 <= v17 + 1)
      {
        v21 = v17 + 1;
      }

      else
      {
        v21 = ((1 << *(v0 + 90)) + 63) >> 6;
      }

      v22 = v21 - 1;
      while (1)
      {
        v23 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v23 >= v20)
        {
          v58 = *(v0 + 208);
          v59 = sub_1000BC4D4(&qword_1016A58E0, &unk_1013B3330);
          (*(*(v59 - 8) + 56))(v58, 1, 1, v59);
          isa = 0;
          v17 = v22;
          goto LABEL_19;
        }

        v1 = *(v0 + 544);
        isa = v1[v23 + 8].isa;
        ++v17;
        if (isa)
        {
          v17 = v23;
          goto LABEL_18;
        }
      }

      __break(1u);
      goto LABEL_47;
    }

    v1 = *(v0 + 544);
LABEL_18:
    v93 = *(v0 + 480);
    v24 = *(v0 + 336);
    v25 = *(v0 + 320);
    v26 = __clz(__rbit64(isa));
    v28 = *(v0 + 200);
    v27 = *(v0 + 208);
    isa &= isa - 1;
    v29 = v26 | (v17 << 6);
    v30 = *(v0 + 152);
    (*(v0 + 456))(v24, v1[6].isa + *(v0 + 472) * v29, v25);
    sub_100B72A30(v1[7].isa + *(v30 + 72) * v29, v28, type metadata accessor for DeviceEvent);
    v31 = sub_1000BC4D4(&qword_1016A58E0, &unk_1013B3330);
    v32 = *(v31 + 48);
    v93(v27, v24, v25);
    sub_100B729C8(v28, v27 + v32, type metadata accessor for DeviceEvent);
    (*(*(v31 - 8) + 56))(v27, 0, 1, v31);
LABEL_19:
    *(v0 + 560) = v17;
    *(v0 + 552) = isa;
    v33 = *(v0 + 216);
    sub_100B72B40(*(v0 + 208), v33);
    v34 = sub_1000BC4D4(&qword_1016A58E0, &unk_1013B3330);
    if ((*(*(v34 - 8) + 48))(v33, 1, v34) == 1)
    {
      break;
    }

    v35 = *(v0 + 192);
    v37 = *(v0 + 136);
    v36 = *(v0 + 144);
    sub_100B729C8(*(v0 + 216) + *(v34 + 48), v35, type metadata accessor for DeviceEvent);
    sub_1000D2A70(v35 + *(v36 + 32), v37, &unk_1016AA510, &unk_101393150);
    v38 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
    if ((*(*(v38 - 8) + 48))(v37, 1, v38) == 1)
    {
      sub_10000B3A8(*(v0 + 136), &unk_1016AA510, &unk_101393150);
      v39 = 1;
    }

    else
    {
      v40 = *(v0 + 136);
      (*(v0 + 456))(*(v0 + 232), v40, *(v0 + 320));
      sub_100B72BF8(v40, type metadata accessor for DeviceEvent.AttachmentInfo);
      v39 = 0;
    }

    v42 = *(v0 + 320);
    v41 = *(v0 + 328);
    v44 = *(v0 + 232);
    v43 = *(v0 + 240);
    v46 = *(v0 + 120);
    v45 = *(v0 + 128);
    (*(v41 + 56))(v44, v39, 1, v42);
    v47 = *(v46 + 48);
    sub_1000D2A70(v44, v45, &qword_1016980D0, &unk_10138F3B0);
    sub_1000D2A70(v43, v45 + v47, &qword_1016980D0, &unk_10138F3B0);
    v48 = *(v41 + 48);
    v49 = v48(v45, 1, v42);
    v50 = *(v0 + 320);
    if (v49 == 1)
    {
      sub_10000B3A8(*(v0 + 232), &qword_1016980D0, &unk_10138F3B0);
      if (v48(v45 + v47, 1, v50) != 1)
      {
        goto LABEL_32;
      }

      sub_10000B3A8(*(v0 + 128), &qword_1016980D0, &unk_10138F3B0);
      goto LABEL_7;
    }

    sub_1000D2A70(*(v0 + 128), *(v0 + 224), &qword_1016980D0, &unk_10138F3B0);
    if (v48(v45 + v47, 1, v50) == 1)
    {
      v69 = *(v0 + 320);
      v70 = *(v0 + 328);
      v71 = *(v0 + 224);
      sub_10000B3A8(*(v0 + 232), &qword_1016980D0, &unk_10138F3B0);
      (*(v70 + 8))(v71, v69);
LABEL_32:
      sub_10000B3A8(*(v0 + 128), &qword_1016AF880, &unk_10138CE20);
LABEL_33:
      v72 = *(v0 + 192);
      v22 = *(v0 + 168);
      v73 = *(v0 + 176);
      sub_100B72A30(v72, *(v0 + 184), type metadata accessor for DeviceEvent);
      sub_100B72A30(v72, v73, type metadata accessor for DeviceEvent);
      sub_100B72A30(v72, v22, type metadata accessor for DeviceEvent);
      v1 = Logger.logObject.getter();
      LOBYTE(v22) = static os_log_type_t.error.getter();
      v74 = os_log_type_enabled(v1, v22);
      v75 = *(v0 + 176);
      v76 = *(v0 + 184);
      if (v74)
      {
        v17 = swift_slowAlloc();
        *(v0 + 96) = swift_slowAlloc();
        *v17 = 136446979;
        type metadata accessor for Date();
        sub_100B72BB0(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v77 = dispatch thunk of CustomStringConvertible.description.getter();
        v79 = v78;
        sub_100B72BF8(v76, type metadata accessor for DeviceEvent);
        v80 = sub_1000136BC(v77, v79, (v0 + 96));

        *(v17 + 4) = v80;
        *(v17 + 12) = 2082;
        v81 = *(v75 + 9);
        if (v81 > 3)
        {
          if (*(v75 + 9) > 5u)
          {
            if (v81 == 6)
            {
              v13 = 0xEC00000064657261;
              v82 = 0x657070617369642ELL;
            }

            else
            {
              v13 = 0xE500000000000000;
              v82 = 0x726961702ELL;
            }

            goto LABEL_52;
          }

          if (v81 != 4)
          {
            v13 = 0xEF79627261654E64;
            v82 = 0x657463657465642ELL;
            goto LABEL_52;
          }

          v13 = 0xE700000000000000;
          v84 = 1952801838;
        }

        else
        {
          if (*(v75 + 9) <= 1u)
          {
            v13 = 0xE800000000000000;
            if (!*(v75 + 9))
            {
              v82 = 0x6E776F6E6B6E752ELL;
              goto LABEL_52;
            }

LABEL_47:
            v82 = 0x7463656E6E6F632ELL;
LABEL_52:
            v85 = *(v0 + 168);
            sub_100B72BF8(*(v0 + 176), type metadata accessor for DeviceEvent);
            v86 = sub_1000136BC(v82, v13, (v0 + 96));

            *(v17 + 14) = v86;
            *(v17 + 22) = 2160;
            *(v17 + 24) = 1752392040;
            *(v17 + 32) = 2081;
            type metadata accessor for BeaconIdentifier(0);
            sub_100B72BB0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v87 = dispatch thunk of CustomStringConvertible.description.getter();
            v89 = v88;
            sub_100B72BF8(v85, type metadata accessor for DeviceEvent);
            v90 = sub_1000136BC(v87, v89, (v0 + 96));

            *(v17 + 34) = v90;
            _os_log_impl(&_mh_execute_header, v1, v22, "Saving device event %{public}s, source: %{public}s, for beacon %{private,mask.hash}s.", v17, 0x2Au);
            swift_arrayDestroy();

LABEL_53:
            v91 = swift_task_alloc();
            *(v0 + 568) = v91;
            *v91 = v0;
            v91[1] = sub_100B6CBAC;

            return daemon.getter();
          }

          if (v81 == 2)
          {
            v13 = 0xEB00000000746365;
            v82 = 0x6E6E6F637369642ELL;
            goto LABEL_52;
          }

          v13 = 0xE700000000000000;
          v84 = 1953784110;
        }

        v82 = v84 | 0x68636100000000;
        goto LABEL_52;
      }

      v83 = *(v0 + 168);

      sub_100B72BF8(v83, type metadata accessor for DeviceEvent);
      sub_100B72BF8(v75, type metadata accessor for DeviceEvent);
      sub_100B72BF8(v76, type metadata accessor for DeviceEvent);
      goto LABEL_53;
    }

    v51 = *(v0 + 328);
    v52 = *(v0 + 336);
    v53 = *(v0 + 320);
    v55 = *(v0 + 224);
    v54 = *(v0 + 232);
    v95 = *(v0 + 128);
    (*(v0 + 480))(v52, v45 + v47, v53);
    sub_100B72BB0(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v56 = dispatch thunk of static Equatable.== infix(_:_:)();
    v57 = *(v51 + 8);
    v57(v52, v53);
    sub_10000B3A8(v54, &qword_1016980D0, &unk_10138F3B0);
    v57(v55, v53);
    sub_10000B3A8(v95, &qword_1016980D0, &unk_10138F3B0);
    if ((v56 & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_7:
    v13 = *(v0 + 320);
    v19 = *(v0 + 328);
    v1 = *(v0 + 216);
    sub_100B72BF8(*(v0 + 192), type metadata accessor for DeviceEvent);
    (*(v19 + 8))(v1, v13);
  }

  v60 = *(v0 + 376);
  v61 = *(v0 + 368);
  v62 = *(v0 + 296);
  v64 = *(v0 + 272);
  v63 = *(v0 + 280);
  v65 = *(v0 + 240);

  sub_100006654(v61, v60);

  sub_10000B3A8(v65, &qword_1016980D0, &unk_10138F3B0);
  (*(v63 + 8))(v62, v64);

  v66 = *(v0 + 8);
  v67 = *(v0 + 544);

  return v66(v67);
}

uint64_t sub_100B6FA20(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for OwnedBeaconRecord(0);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[8] = v4;
  *v4 = v2;
  v4[1] = sub_100B6FB10;

  return daemon.getter();
}

uint64_t sub_100B6FB10(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 72) = a1;

  v3 = swift_task_alloc();
  *(v2 + 80) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100B72BB0(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100B72BB0(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_100B6FCEC;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100B6FCEC(uint64_t a1)
{
  v3 = a1;
  v4 = *v2;
  *(*v2 + 88) = a1;

  if (v1)
  {
    v3 = *(v4 + 32);

    v5 = sub_100B70220;
  }

  else
  {

    v5 = sub_100B6FE44;
  }

  return _swift_task_switch(v5, v3, 0);
}

uint64_t sub_100B6FE44()
{

  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  v2 = sub_1000BC4D4(&qword_101698C80, &unk_1013A23F0);
  *v1 = v0;
  v1[1] = sub_100B6FF30;
  v3 = *(v0 + 88);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1004216C0, v3, v2);
}