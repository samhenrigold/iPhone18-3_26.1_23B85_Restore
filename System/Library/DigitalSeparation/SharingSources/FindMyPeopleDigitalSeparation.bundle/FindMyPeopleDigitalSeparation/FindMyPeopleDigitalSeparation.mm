id sub_1724(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for DSFriend(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_17F8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_184C(uint64_t a1, id *a2)
{
  result = sub_7F64();
  *a2 = 0;
  return result;
}

uint64_t sub_18C4(uint64_t a1, id *a2)
{
  v3 = sub_7F74();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1944@<X0>(uint64_t *a1@<X8>)
{
  sub_7F84();
  v2 = sub_7F54();

  *a1 = v2;
  return result;
}

uint64_t sub_1988@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_7F54();

  *a2 = v3;
  return result;
}

uint64_t sub_19D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_7F84();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_19FC(uint64_t a1)
{
  v2 = sub_1AFC(&qword_116A8, &unk_92EC);
  v3 = sub_1AFC(&qword_116B0, &unk_9294);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1AFC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DSSourceName(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B40()
{
  sub_7F84();
  v0 = sub_7FD4();

  return v0;
}

uint64_t sub_1B7C(uint64_t a1)
{
  sub_7F84();
  sub_7FB4();
}

Swift::Int sub_1BD0(uint64_t a1)
{
  sub_7F84();
  sub_80E4();
  sub_7FB4();
  v1 = sub_80F4();

  return v1;
}

uint64_t sub_1C44(void *a1, uint64_t *a2)
{
  v2 = sub_7F84();
  v4 = v3;
  if (v2 == sub_7F84() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_80C4();
  }

  return v7 & 1;
}

uint64_t sub_1D10()
{
  v0 = sub_7F44();
  sub_6F00(v0, qword_118A0);
  v1 = sub_5C0C(v0, qword_118A0);
  if (qword_11578 != -1)
  {
    swift_once();
  }

  v2 = sub_5C0C(v0, qword_11D40);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1DD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  sub_5BC4(&qword_11990, &qword_9458);
  __chkstk_darwin();
  v8 = &v18 - v7;
  if (qword_11570 != -1)
  {
    swift_once();
  }

  v9 = sub_7F44();
  sub_5C0C(v9, qword_118A0);
  v10 = sub_7F24();
  v11 = sub_8064();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_66B4(0xD000000000000021, 0x8000000000008BB0, &v19);
    _os_log_impl(&dword_0, v10, v11, "%{public}s Attempting to fetch shared resources", v12, 0xCu);
    sub_6C7C(v13);
  }

  v14 = sub_8044();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v3;
  v15[5] = a1;
  v15[6] = a2;
  v15[7] = ObjectType;
  v16 = v3;

  sub_247C(0, 0, v8, &unk_9470, v15);
}

uint64_t sub_2028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_20BC;

  return sub_289C();
}

uint64_t sub_20BC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_225C;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = sub_21E4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_21E4()
{
  (*(v0 + 16))(*(v0 + 48), 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225C()
{
  v13 = v0;
  if (qword_11570 != -1)
  {
    swift_once();
  }

  v1 = sub_7F44();
  sub_5C0C(v1, qword_118A0);
  swift_errorRetain();
  v2 = sub_7F24();
  v3 = sub_8054();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_66B4(0xD000000000000021, 0x8000000000008BB0, &v12);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&dword_0, v2, v3, "%{public}s error %{public}@", v4, 0x16u);
    sub_7148(v5, &qword_11988, &qword_9450);

    sub_6C7C(v6);
  }

  v8 = v0[5];
  v9 = v0[2];
  swift_errorRetain();
  v9(&_swiftEmptyArrayStorage, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_247C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_5BC4(&qword_11990, &qword_9458);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_70D8(a3, v24 - v9);
  v11 = sub_8044();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_7148(v10, &qword_11990, &qword_9458);
  }

  else
  {
    sub_8034();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_8024();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_7FA4() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_7148(a3, &qword_11990, &qword_9458);

      return v22;
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

  sub_7148(a3, &qword_11990, &qword_9458);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

void sub_27F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_5BC4(&qword_11998, qword_9520);
  v5.super.isa = sub_7FF4().super.isa;
  if (a2)
  {
    v6 = sub_7E34();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

uint64_t sub_289C()
{
  v1[8] = v0;
  v2 = sub_7ED4();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v3 = sub_7EA4();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_29FC, 0, 0);
}

uint64_t sub_29FC()
{
  v9 = v0;
  v0[6] = &_swiftEmptyArrayStorage;
  if (qword_11570 != -1)
  {
    swift_once();
  }

  v1 = sub_7F44();
  v0[17] = sub_5C0C(v1, qword_118A0);
  v2 = sub_7F24();
  v3 = sub_8064();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_66B4(0xD000000000000010, 0x8000000000008B90, &v8);
    _os_log_impl(&dword_0, v2, v3, "%{public}s Attempting to fetch friends following my location", v4, 0xCu);
    sub_6C7C(v5);
  }

  v0[18] = *(v0[8] + OBJC_IVAR____TtC29FindMyPeopleDigitalSeparation35FindMyPeopleDigitalSeparationSource_session);

  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = sub_2C04;

  return Session.friendsFollowingMyLocation()();
}

uint64_t sub_2C04(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v4 = sub_36E8;
  }

  else
  {
    v4 = sub_2D6C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_2D6C(uint64_t a1, uint64_t a2)
{
  v97 = v2;

  v3 = sub_7F24();
  v4 = sub_8064();
  v5 = os_log_type_enabled(v3, v4);
  receiver = v2[10].receiver;
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v96[0] = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_66B4(0xD000000000000010, 0x8000000000008B90, v96);
    *(v7 + 12) = 2048;
    *(v7 + 14) = receiver[2];

    _os_log_impl(&dword_0, v3, v4, "%{public}s Got friends sharing with me: %ld", v7, 0x16u);
    sub_6C7C(v8);
  }

  else
  {
  }

  v9 = objc_allocWithZone(CNContactStore);
  v10 = CNContactIdentifierKey;
  v11 = [v9 init];
  sub_5BC4(&qword_11970, &unk_9438);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_93A0;
  *(v12 + 32) = v10;
  v80 = v10;
  sub_5BC4(&qword_11978, &qword_9448);
  isa = sub_7FF4().super.isa;

  v2[3].super_class = 0;
  v14 = [v11 _ios_meContactWithKeysToFetch:isa error:&v2[3].super_class];

  super_class = v2[3].super_class;
  if (v14)
  {
    v16 = super_class;
    v17 = [v14 identifier];
    v81 = sub_7F84();
    v87 = v18;
  }

  else
  {
    v19 = super_class;
    sub_7E44();

    swift_willThrow();
    swift_errorRetain();
    v20 = sub_7F24();
    v21 = sub_8064();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138543362;
      swift_errorRetain();
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&dword_0, v20, v21, "Error fetching me contact: %{public}@", v22, 0xCu);
      sub_7148(v23, &qword_11988, &qword_9450);
    }

    else
    {
    }

    v81 = 0;
    v87 = 0;
  }

  v25 = v2[10].receiver;
  v85 = v25[2];
  if (v85)
  {
    v26 = 0;
    v82 = v25 + ((*(v2[6].super_class + 80) + 32) & ~*(v2[6].super_class + 80));
    v86 = (v2[5].receiver + 8);
    v27 = &_swiftEmptyArrayStorage;
    v83 = v2[6].super_class;
    v84 = v2[10].receiver;
    v95 = v2;
    do
    {
      if (v26 >= v25[2])
      {
        __break(1u);
      }

      v28 = v2[7].super_class;
      v29 = v2[8].receiver;
      v30 = v2[5].super_class;
      v31 = v2[6].receiver;
      v92 = v31;
      v90 = v95[4].super_class;
      v94 = v26;
      v32 = v83[2];
      v32(v29, &v82[v83[9] * v26], v31);
      v88 = v32;
      v32(v28, v29, v31);
      v34 = type metadata accessor for DSFriend(0, v33);
      v35 = objc_allocWithZone(v34);
      *&v35[OBJC_IVAR____TtC29FindMyPeopleDigitalSeparation8DSFriend_role] = 2;
      sub_7E94();
      v36 = sub_7EB4();
      v38 = v37;
      v39 = *v86;
      (*v86)(v30, v90);
      v40 = &v35[OBJC_IVAR____TtC29FindMyPeopleDigitalSeparation8DSFriend_friendIdentifier];
      *v40 = v36;
      v40[1] = v38;
      sub_7E94();
      v41 = sub_7EC4();
      v43 = v42;
      v44 = v90;
      v2 = v95;
      v91 = v39;
      v39(v30, v44);
      v45 = &v35[OBJC_IVAR____TtC29FindMyPeopleDigitalSeparation8DSFriend_friendContactIdentifier];
      *v45 = v41;
      v45[1] = v43;
      v95[1].receiver = v35;
      v95[1].super_class = v34;
      v46 = objc_msgSendSuper2(v95 + 1, "init");
      v47 = v83[1];
      v47(v28, v92);
      if (v87 && (v48 = *&v46[OBJC_IVAR____TtC29FindMyPeopleDigitalSeparation8DSFriend_friendContactIdentifier + 8]) != 0 && (*&v46[OBJC_IVAR____TtC29FindMyPeopleDigitalSeparation8DSFriend_friendContactIdentifier] == v81 ? (v49 = v48 == v87) : (v49 = 0), v49 || (sub_80C4() & 1) != 0))
      {
        v50 = sub_7F24();
        v51 = sub_8064();
        v52 = os_log_type_enabled(v50, v51);
        v53 = v95[8].receiver;
        v54 = v95[6].receiver;
        if (v52)
        {
          v55 = swift_slowAlloc();
          *v55 = 0;
          _os_log_impl(&dword_0, v50, v51, "Found myself as a friend, skipping adding to the participants", v55, 2u);
        }

        else
        {
        }

        v47(v53, v54);
      }

      else
      {
        v88(v95[7].receiver, v95[8].receiver, v95[6].receiver);
        v56 = sub_7F24();
        v57 = sub_8064();
        v58 = os_log_type_enabled(v56, v57);
        v59 = v95[7].receiver;
        v60 = v95[6].receiver;
        if (v58)
        {
          v61 = v95[5].super_class;
          v89 = v46;
          v62 = v95[4].super_class;
          v93 = v47;
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v96[0] = v64;
          *v63 = 141558275;
          *(v63 + 4) = 1752392040;
          *(v63 + 12) = 2081;
          sub_7E94();
          sub_6F64();
          v65 = sub_80B4();
          v67 = v66;
          v68 = v62;
          v46 = v89;
          v91(v61, v68);
          v93(v59, v60);
          v69 = sub_66B4(v65, v67, v96);

          *(v63 + 14) = v69;
          _os_log_impl(&dword_0, v56, v57, "Appending %{private,mask.hash}s to participants", v63, 0x16u);
          sub_6C7C(v64);

          v47 = v93;
          v2 = v95;
        }

        else
        {

          v47(v59, v60);
        }

        v70 = v46;
        sub_7FE4();
        if (*(&dword_10 + (v2[3].receiver & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v2[3].receiver & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_8004();
        }

        v71 = v2[8].receiver;
        v72 = v2[6].receiver;
        sub_8014();

        v47(v71, v72);
        v27 = v2[3].receiver;
      }

      v26 = v94 + 1;
      v25 = v84;
    }

    while (v85 != v94 + 1);
  }

  else
  {

    v27 = &_swiftEmptyArrayStorage;
  }

  v74 = type metadata accessor for DSPeopleSharedResouce(0, v73);
  v75 = objc_allocWithZone(v74);
  *&v75[OBJC_IVAR____TtC29FindMyPeopleDigitalSeparation21DSPeopleSharedResouce_dsFriends] = v27;
  v2[2].receiver = v75;
  v2[2].super_class = v74;
  v76 = objc_msgSendSuper2(v2 + 2, "init");
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_93A0;
  *(v77 + 32) = v76;

  v78 = v2->super_class;

  return v78(v77);
}

uint64_t sub_36E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_392C(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  a3;
  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_7B80;

  return sub_7878();
}

uint64_t sub_3A00(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_7ED4();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  sub_5BC4(&qword_11950, &qword_9410);
  v2[10] = swift_task_alloc();
  v4 = sub_7E84();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v5 = sub_7EA4();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_3BC8, 0, 0);
}

uint64_t sub_3BC8()
{
  v21 = v0;
  if (qword_11570 != -1)
  {
    swift_once();
  }

  v1 = sub_7F44();
  sub_5C0C(v1, qword_118A0);
  swift_unknownObjectRetain();
  v2 = sub_7F24();
  v3 = sub_8064();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_66B4(0xD00000000000001DLL, 0x8000000000008B70, &v20);
    *(v5 + 12) = 2080;
    v0[2] = v4;
    swift_unknownObjectRetain();
    sub_5BC4(&unk_11A30, &qword_9430);
    v6 = sub_7F94();
    v8 = sub_66B4(v6, v7, &v20);

    *(v5 + 14) = v8;
    _os_log_impl(&dword_0, v2, v3, "%{public}s Attempting to stop sharing with participant: %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  type metadata accessor for DSFriend(0, v9);
  v10 = swift_dynamicCastClass();
  v0[17] = v10;
  if (v10)
  {
    v11 = v0[4];
    v12 = OBJC_IVAR____TtC29FindMyPeopleDigitalSeparation35FindMyPeopleDigitalSeparationSource_session;
    v0[18] = OBJC_IVAR____TtC29FindMyPeopleDigitalSeparation35FindMyPeopleDigitalSeparationSource_session;
    v0[19] = *(v11 + v12);
    swift_unknownObjectRetain();

    v13 = swift_task_alloc();
    v0[20] = v13;
    *v13 = v0;
    v13[1] = sub_3F80;

    return Session.friendsFollowingMyLocation()();
  }

  else
  {
    v14 = sub_7F24();
    v15 = sub_8054();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v20 = v17;
      *v16 = 136446210;
      *(v16 + 4) = sub_66B4(0xD00000000000001DLL, 0x8000000000008B70, &v20);
      _os_log_impl(&dword_0, v14, v15, "%{public}s Shared resource isn't the right type", v16, 0xCu);
      sub_6C7C(v17);
    }

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_3F80(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v4 = sub_4640;
  }

  else
  {

    v4 = sub_409C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_409C()
{
  v1 = v0[21];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[15];
    v4 = v0[6];
    v38 = (v0[17] + OBJC_IVAR____TtC29FindMyPeopleDigitalSeparation8DSFriend_friendIdentifier);
    v5 = *(v3 + 16);
    v3 += 16;
    v37 = v5;
    v6 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v35 = (v4 + 8);
    v36 = *(v3 + 56);
    v33 = v4;
    v34 = (v3 - 8);
    v7 = (v4 + 32);
    v8 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v9 = v0[7];
      v10 = v0[5];
      v37(v0[16], v6, v0[14]);
      sub_7E94();
      v11 = sub_7EB4();
      v13 = v12;
      (*v35)(v9, v10);
      if (v11 == *v38 && v13 == v38[1])
      {
        break;
      }

      v15 = sub_80C4();

      if (v15)
      {
        goto LABEL_12;
      }

      (*v34)(v0[16], v0[14]);
LABEL_4:
      v6 += v36;
      if (!--v2)
      {

        goto LABEL_19;
      }
    }

LABEL_12:
    v16 = v0[16];
    v17 = v0[14];
    v19 = v0[8];
    v18 = v0[9];
    v20 = v0[5];
    sub_7E94();
    (*v34)(v16, v17);
    v21 = *v7;
    (*v7)(v18, v19, v20);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_64DC(0, *(v8 + 2) + 1, 1, v8);
    }

    v23 = *(v8 + 2);
    v22 = *(v8 + 3);
    if (v23 >= v22 >> 1)
    {
      v8 = sub_64DC((v22 > 1), v23 + 1, 1, v8);
    }

    v24 = v0[9];
    v25 = v0[5];
    *(v8 + 2) = v23 + 1;
    v21(&v8[((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v23], v24, v25);
    goto LABEL_4;
  }

  v8 = &_swiftEmptyArrayStorage;
LABEL_19:
  v0[23] = v8;
  v26 = v0[10];
  v27 = v0[5];
  v28 = v0[6];
  v0[24] = *(v0[4] + v0[18]);
  (*(v28 + 56))(v26, 1, 1, v27);

  v29 = swift_task_alloc();
  v0[25] = v29;
  *v29 = v0;
  v29[1] = sub_43D4;
  v30 = v0[13];
  v31 = v0[10];

  return Session.stopSharingMyLocation(with:from:isFromGroup:)(v30, v8, v31, 0);
}

uint64_t sub_43D4()
{
  v2 = *v1;
  (*v1)[26] = v0;

  if (v0)
  {
    sub_7148(v2[10], &qword_11950, &qword_9410);

    v3 = sub_46FC;
  }

  else
  {
    v5 = v2[12];
    v4 = v2[13];
    v8 = v2 + 10;
    v7 = v2[10];
    v6 = v8[1];

    sub_7148(v7, &qword_11950, &qword_9410);
    (*(v5 + 8))(v4, v6);
    v3 = sub_4590;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_4590()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_4640()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_46FC()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_4938(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_49FC;

  return sub_3A00(a1);
}

uint64_t sub_49FC()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 24);
  v6 = *v1;

  swift_unknownObjectRelease();

  v7 = *(v3 + 32);
  if (v2)
  {
    v8 = sub_7E34();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_4B9C()
{
  v1[2] = v0;
  v2 = sub_7EA4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_7ED4();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  sub_5BC4(&qword_11950, &qword_9410);
  v1[9] = swift_task_alloc();
  v4 = sub_7E84();
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_4D4C, 0, 0);
}

uint64_t sub_4D4C()
{
  v11 = v0;
  if (qword_11570 != -1)
  {
    swift_once();
  }

  v1 = sub_7F44();
  sub_5C0C(v1, qword_118A0);
  v2 = sub_7F24();
  v3 = sub_8064();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_66B4(0xD000000000000010, 0x8000000000008B50, &v10);
    _os_log_impl(&dword_0, v2, v3, "%{public}s Attempting to stop all sharing", v4, 0xCu);
    sub_6C7C(v5);
  }

  v6 = v0[2];
  v7 = OBJC_IVAR____TtC29FindMyPeopleDigitalSeparation35FindMyPeopleDigitalSeparationSource_session;
  v0[13] = OBJC_IVAR____TtC29FindMyPeopleDigitalSeparation35FindMyPeopleDigitalSeparationSource_session;
  v0[14] = *(v6 + v7);

  v8 = swift_task_alloc();
  v0[15] = v8;
  *v8 = v0;
  v8[1] = sub_4F1C;

  return Session.friendsFollowingMyLocation()();
}

uint64_t sub_4F1C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v4 = sub_54D4;
  }

  else
  {

    v4 = sub_5038;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_5038()
{
  v1 = v0[16];
  v0[18] = *(v0[2] + v0[13]);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[7];
    v4 = v0[4];

    sub_6C5C(0, v2, 0);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v18 = *(v4 + 56);
    v19 = v5;
    v7 = (v4 - 8);
    do
    {
      v8 = v0[5];
      v9 = v0[3];
      v19(v8, v6, v9);
      sub_7E94();
      (*v7)(v8, v9);
      v11 = *(&_swiftEmptyArrayStorage + 2);
      v10 = *(&_swiftEmptyArrayStorage + 3);
      if (v11 >= v10 >> 1)
      {
        sub_6C5C((v10 > 1), v11 + 1, 1);
      }

      v12 = v0[8];
      v13 = v0[6];
      *(&_swiftEmptyArrayStorage + 2) = v11 + 1;
      (*(v3 + 32))(&_swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11, v12, v13);
      v6 += v18;
      --v2;
    }

    while (v2);
  }

  else
  {
  }

  v0[19] = &_swiftEmptyArrayStorage;
  (*(v0[7] + 56))(v0[9], 1, 1, v0[6]);
  v14 = swift_task_alloc();
  v0[20] = v14;
  *v14 = v0;
  v14[1] = sub_528C;
  v15 = v0[12];
  v16 = v0[9];

  return Session.stopSharingMyLocation(with:from:isFromGroup:)(v15, &_swiftEmptyArrayStorage, v16, 0);
}

uint64_t sub_528C()
{
  v2 = *v1;
  (*v1)[21] = v0;

  if (v0)
  {
    sub_7148(v2[9], &qword_11950, &qword_9410);

    v3 = sub_5568;
  }

  else
  {
    v5 = v2[11];
    v4 = v2[12];
    v8 = v2 + 9;
    v7 = v2[9];
    v6 = v8[1];

    sub_7148(v7, &qword_11950, &qword_9410);
    (*(v5 + 8))(v4, v6);
    v3 = sub_5448;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_5448()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_54D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_5568()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_5768(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_5810;

  return sub_4B9C();
}

uint64_t sub_5810()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = sub_7E34();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

id sub_5B20(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FindMyPeopleDigitalSeparationSource(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_5BC4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_5C0C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_5C44(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_5D3C;

  return v6(a1);
}

uint64_t sub_5D3C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_5E34(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_7BA8;

  return v6();
}

uint64_t sub_5F1C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_6004;

  return v7();
}

uint64_t sub_6004()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_60F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_5BC4(&qword_11990, &qword_9458);
  __chkstk_darwin();
  v10 = v22 - v9;
  sub_70D8(a3, v22 - v9);
  v11 = sub_8044();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_7148(v10, &qword_11990, &qword_9458);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_8034();
  (*(v12 + 8))(v10, v11);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v13 = sub_8024();
  v15 = v14;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v16 = sub_7FA4() + 32;
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    *(v17 + 24) = a5;

    if (v15 | v13)
    {
      v23[0] = 0;
      v23[1] = 0;
      v18 = v23;
      v23[2] = v13;
      v23[3] = v15;
    }

    else
    {
      v18 = 0;
    }

    v22[1] = 7;
    v22[2] = v18;
    v22[3] = v16;
    v20 = swift_task_create();

    sub_7148(a3, &qword_11990, &qword_9458);

    return v20;
  }

LABEL_8:
  sub_7148(a3, &qword_11990, &qword_9458);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_63E4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_7BAC;

  return v6(a1);
}

void *sub_64DC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_5BC4(&unk_11960, &unk_9420);
  v10 = *(sub_7ED4() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_7ED4() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_66B4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_6780(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_6CC8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_6C7C(v11);
  return v7;
}

unint64_t sub_6780(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_688C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_8084();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_688C(uint64_t a1, unint64_t a2)
{
  v3 = sub_68D8(a1, a2);
  sub_6A08(&off_C530);
  return v3;
}

char *sub_68D8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_6AF4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_8084();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_7FC4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_6AF4(v10, 0);
        result = sub_8074();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_6A08(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_6B68(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_6AF4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_5BC4(&qword_11958, &qword_9418);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_6B68(char *result, int64_t a2, char a3, char *a4)
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
    sub_5BC4(&qword_11958, &qword_9418);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_6C5C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_6D28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_6C7C(void *a1)
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

uint64_t sub_6CC8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_6D28(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_5BC4(&unk_11960, &unk_9420);
  v10 = *(sub_7ED4() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_7ED4() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t *sub_6F00(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_6F64()
{
  result = qword_11980;
  if (!qword_11980)
  {
    sub_7ED4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_11980);
  }

  return result;
}

uint64_t sub_6FBC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_7004(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_7BA8;

  return sub_2028(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_70D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_5BC4(&qword_11990, &qword_9458);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_7148(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_5BC4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_71A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_71E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_7BA8;

  return sub_5C44(a1, v4);
}

uint64_t sub_7298(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_6004;

  return sub_5C44(a1, v4);
}

uint64_t sub_7350()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_7390()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_7BA8;

  return sub_5768(v2, v3);
}

uint64_t sub_7440()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_7BA8;

  return sub_5E34(v2, v3, v4);
}

uint64_t sub_7500(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_7BA8;

  return sub_5F1C(a1, v4, v5, v6);
}

uint64_t sub_75CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_7BA8;

  return sub_63E4(a1, v4);
}

uint64_t sub_7688()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_6004;

  return sub_4938(v2, v3, v4);
}

uint64_t sub_773C()
{
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_7784()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_7BA8;

  return sub_392C(v2, v3, v4);
}

uint64_t sub_7838()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_7898()
{
  v9 = v0;
  if (qword_11570 != -1)
  {
    swift_once();
  }

  v1 = sub_7F44();
  sub_5C0C(v1, qword_118A0);
  v2 = sub_7F24();
  v3 = sub_8064();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_66B4(0x72616853706F7473, 0xEF293A5F28676E69, &v8);
    _os_log_impl(&dword_0, v2, v3, "%{public}s Attempting to stop all sharing, only one resource.", v4, 0xCu);
    sub_6C7C(v5);
  }

  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_7A4C;

  return sub_4B9C();
}

uint64_t sub_7A4C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_7B40()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_7C84(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {

    sub_5BC4(&unk_11A30, &qword_9430);
    v2 = sub_8094();
  }

  else
  {
    v2 = a1;

    sub_80D4();
  }

  return v2;
}

id sub_7D4C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for DSPeopleSharedResouce(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_7DB4()
{
  v0 = sub_7F44();
  sub_6F00(v0, qword_11D40);
  sub_5C0C(v0, qword_11D40);
  return sub_7F34();
}