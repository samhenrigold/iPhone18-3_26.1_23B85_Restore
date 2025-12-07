uint64_t sub_1001DDF54()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1001DE048(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1001DE9E0;

  return sub_1001DCF00(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1001DE11C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001DE18C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1001DE9F0;

  return sub_1001DD314(a1, v4);
}

void *sub_1001DE244(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1001DE288(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1001DE9E4;

  return sub_1001DBE9C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1001DE364(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1001DE41C;

  return sub_1001DD314(a1, v4);
}

uint64_t sub_1001DE41C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1001DE510(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1001DE9E8;

  return sub_1001DA764(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1001DE5D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1001DE9F4;

  return sub_1001DD314(a1, v4);
}

void sub_1001DE690(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_1001AD17C(&qword_100372E48, qword_10029DC48);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_1001DE980(0, &qword_100373FE0, BSAction_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_1001DE980(0, &qword_100373FE0, BSAction_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_1001DE980(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t Logger.akd.unsafeMutableAddressor()
{
  if (qword_100371BB0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_1001AD2E4(v0, static Logger.akd);
}

uint64_t sub_1001DEA5C()
{
  v0 = type metadata accessor for Logger();
  sub_1001DEB84(v0, static Logger.akd);
  sub_1001AD2E4(v0, static Logger.akd);

  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.akd.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100371BB0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_1001AD2E4(v2, static Logger.akd);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *sub_1001DEB84(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1001DEBE8()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v60 - v7;
  __chkstk_darwin(v6);
  v10 = &v60 - v9;
  v11 = v0[2];
  v12 = [v11 primaryAuthKitAccount];
  if (!v12)
  {
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1001AD2E4(v17, qword_100377698);
    v13 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v13, v18, "No primary AuthKit account found.", v19, 2u);
    }

    goto LABEL_13;
  }

  v13 = v12;
  v14 = [v11 sharingGroupLastNotificationDateForAccount:v12];
  if (!v14)
  {
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1001AD2E4(v20, qword_100377698);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "There was no KCSharing group update notification saved. Skipping token rotation.", v23, 2u);
    }

LABEL_13:
    v24 = 0;
    return v24 & 1;
  }

  v15 = v14;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1001BB81C(v0 + 3, v0[6]);
  v16 = sub_10020FE10();
  v26 = v16;
  if (v16)
  {
    v65 = v1;
    v27 = OBJC_IVAR___AKSharedGroupsMembershipInfo_savedDate;
    v28 = v16;
    v64 = v27;
    v24 = static Date.< infix(_:_:)();
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    v30 = sub_1001AD2E4(v29, qword_100377698);
    v31 = v28;
    v69 = v30;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    v67 = v31;

    v63 = v33;
    v66 = v32;
    v34 = os_log_type_enabled(v32, v33);
    v68 = v2;
    if (v34)
    {
      v35 = swift_slowAlloc();
      v60 = v35;
      v61 = swift_slowAlloc();
      v70[0] = v61;
      *v35 = 136315138;
      v62 = *(v2 + 16);
      v36 = v65;
      v62(v8, v64 + v26, v65);
      sub_1001E174C();
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      (*(v2 + 8))(v8, v36);
      v40 = sub_10024B050(v37, v39, v70);

      v41 = v60;
      *(v60 + 1) = v40;
      v42 = v66;
      _os_log_impl(&_mh_execute_header, v66, v63, "lastSavedMembershipInfo - %s", v41, 0xCu);
      sub_1001E17A4(v61);

      v62(v5, v10, v36);
    }

    else
    {

      v36 = v65;
      (*(v2 + 16))(v5, v10, v65);
    }

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v64 = v49;
      v66 = swift_slowAlloc();
      v70[0] = v66;
      *v49 = 136315138;
      sub_1001E174C();
      LODWORD(v65) = v48;
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v51;
      v53 = *(v68 + 8);
      v53(v5, v36);
      v54 = sub_10024B050(v50, v52, v70);

      v55 = v64;
      *(v64 + 1) = v54;
      _os_log_impl(&_mh_execute_header, v47, v65, "sharingGroupUpdateLastNotificationDate - %s", v55, 0xCu);
      sub_1001E17A4(v66);
    }

    else
    {

      v53 = *(v68 + 8);
      v53(v5, v36);
    }

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 67109120;
      *(v58 + 4) = v24 & 1;
      _os_log_impl(&_mh_execute_header, v56, v57, "needsTokenRotation - %{BOOL}d", v58, 8u);
    }

    v59 = v67;

    v53(v10, v36);
  }

  else
  {
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_1001AD2E4(v43, qword_100377698);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "There was no last saved membership info. Need token rotation.", v46, 2u);
    }

    (*(v2 + 8))(v10, v1);
    v24 = 1;
  }

  return v24 & 1;
}

uint64_t sub_1001DF470()
{
  v1 = v0[2];
  sub_1001BB81C((v1 + 24), *(v1 + 48));
  v0[3] = sub_10020FE10();
  sub_1001BB81C((v1 + 24), *(v1 + 48));
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1001DF570;

  return sub_10020FF44();
}

uint64_t sub_1001DF570(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v1;

  if (v1)
  {
    v4 = sub_1001DF7A4;
  }

  else
  {
    v4 = sub_1001DF684;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001DF684()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_1001BB81C((*(v0 + 16) + 24), *(*(v0 + 16) + 48));
  sub_1002103AC(v1);
  if (v2)
  {
    v3 = *(v0 + 24);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v0 + 56) = v6;
    *v6 = v0;
    v6[1] = sub_1001DF808;
    v7 = *(v0 + 40);
    v8 = *(v0 + 24);

    return sub_1002107F8(v8, v7);
  }
}

uint64_t sub_1001DF7A4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001DF808(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v4 = sub_1001DFAD4;
  }

  else
  {
    v4 = sub_1001DF91C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001DF91C()
{
  if (*(v0[8] + 16))
  {
    v1 = swift_task_alloc();
    v0[10] = v1;
    *v1 = v0;
    v1[1] = sub_1001DFB40;
    v2 = v0[8];

    return sub_1001DFD48(v2);
  }

  else
  {

    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1001AD2E4(v4, qword_100377698);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[5];
    v9 = v0[3];
    if (v7)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "No groups with depatures detected.", v10, 2u);
    }

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1001DFAD4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001DFB40()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1001DFCDC;
  }

  else
  {
    v2 = sub_1001DFC70;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001DFC70()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001DFCDC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001DFD48(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1001DFD68, 0, 0);
}

uint64_t sub_1001DFD68()
{
  v13 = v0;
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[4] = sub_1001AD2E4(v1, qword_100377698);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    v6 = Set.description.getter();
    v8 = sub_10024B050(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Rotating share tokens for accounts in groups - %s", v4, 0xCu);
    sub_1001E17A4(v5);
  }

  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = sub_1001DFF4C;
  v10 = v0[2];

  return sub_1001E086C(v10);
}

uint64_t sub_1001DFF4C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_1001E0080, 0, 0);
  }
}

uint64_t sub_1001E0080()
{
  if (*(v0[6] + 16))
  {
    sub_1001BB81C((v0[3] + 72), *(v0[3] + 96));
    v1 = swift_task_alloc();
    v0[7] = v1;
    *v1 = v0;
    v1[1] = sub_1001E01E8;
    v2 = v0[6];

    return sub_1001D077C(v2);
  }

  else
  {

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "No SIWA accounts found in the departed groups.", v6, 2u);
    }

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1001E01E8(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 64) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_1001E0338, 0, 0);
  }
}

uint64_t sub_1001E0338()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[9] = v4;
  v4[2] = v1;
  v4[3] = v2;
  v4[4] = v3;
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_1001E0430;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_1001E0430()
{

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(sub_1001E0580, 0, 0);
  }
}

uint64_t sub_1001E0580()
{
  sub_1001BB81C((*(v0 + 24) + 24), *(*(v0 + 24) + 48));
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1001E0620;

  return sub_10020FF44();
}

uint64_t sub_1001E0620(uint64_t a1)
{
  v3 = *v2;
  v3[12] = a1;
  v3[13] = v1;

  if (v1)
  {
    v4 = v3[1];

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_1001E0754, 0, 0);
  }
}

uint64_t sub_1001E0754()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  sub_1001BB81C((*(v0 + 24) + 24), *(*(v0 + 24) + 48));
  sub_1002103AC(v1);
  if (v2)
  {

    v3 = *(v0 + 8);
  }

  else
  {
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Token rotation complete", v6, 2u);
    }

    v3 = *(v0 + 8);
  }

  return v3();
}

uint64_t sub_1001E086C(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return _swift_task_switch(sub_1001E088C, 0, 0);
}

uint64_t sub_1001E088C()
{
  v1 = *(v0[20] + 64);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1001E09AC;
  v2 = swift_continuation_init();
  v0[17] = sub_1001AD17C(&qword_100372E38, &unk_10029DBF0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1001DD224;
  v0[13] = &unk_100327500;
  v0[14] = v2;
  [v1 fetchAllSharedAccountsWithShareTokenWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1001E09AC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_1001E0F30;
  }

  else
  {
    v2 = sub_1001E0ABC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001E0ABC()
{
  v46 = v0;
  v43 = *(v0 + 144);
  if (v43 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v39 = v0)
  {
    v2 = 0;
    v3 = *(v0 + 152);
    v4 = v43 & 0xC000000000000001;
    v44 = v3 + 56;
    v41 = &_swiftEmptyDictionarySingleton;
    v40 = i;
    while (1)
    {
      if (v4)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v2 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v5 = *(v43 + 32 + 8 * v2);
      }

      v6 = v5;
      if (__OFADD__(v2++, 1))
      {
        break;
      }

      v8 = [v5 shareInfo];
      if (v8)
      {
        v9 = v8;
        v10 = [v8 groupID];
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;

        if (*(v3 + 16) && (Hasher.init(_seed:)(), String.hash(into:)(), v14 = Hasher._finalize()(), v15 = -1 << *(v3 + 32), v16 = v14 & ~v15, ((*(v44 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0))
        {
          v0 = ~v15;
          while (1)
          {
            v17 = (*(v3 + 48) + 16 * v16);
            v18 = *v17 == v11 && v17[1] == v13;
            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v16 = (v16 + 1) & v0;
            if (((*(v44 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          if ([v9 isCurrentUser])
          {
            v31 = [v6 clientID];
            v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v34 = v33;

            v35 = v6;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v45[0] = v41;
            sub_100231834(v35, v32, v34, isUniquelyReferenced_nonNull_native);

            v41 = v45[0];
          }

          else
          {
          }
        }

        else
        {
LABEL_4:
        }
      }

      else
      {
        if (qword_100371BD8 != -1)
        {
          swift_once();
        }

        v19 = type metadata accessor for Logger();
        sub_1001AD2E4(v19, qword_100377698);
        v20 = v6;
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v45[0] = v42;
          *v23 = 136315138;
          v24 = v4;
          v25 = v3;
          v26 = [v20 clientID];
          v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v29 = v28;

          v3 = v25;
          v4 = v24;
          v30 = sub_10024B050(v27, v29, v45);

          *(v23 + 4) = v30;
          i = v40;
          _os_log_impl(&_mh_execute_header, v21, v22, "Shared SIWA account (%s) with nil share info. Skipping...", v23, 0xCu);
          v0 = v42;
          sub_1001E17A4(v42);
        }

        else
        {
        }
      }

      if (v2 == i)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    i = _CocoaArrayWrapper.endIndex.getter();
  }

  v41 = &_swiftEmptyDictionarySingleton;
LABEL_34:

  v37 = *(v39 + 8);

  return v37(v41);
}

uint64_t sub_1001E0F30(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1001E0F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();

  return _swift_task_switch(sub_1001E1048, 0, 0);
}

void sub_1001E1048()
{
  v45 = v0;
  v1 = v0[10];
  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (!v2)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_27;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    return;
  }

  v3 = 0;
  v37 = v0 + 2;
  v43 = v0[11];
  v42 = v1 & 0xC000000000000001;
  v40 = v0[10] + 32;
  v38 = v0;
  v39 = v2;
  do
  {
    if (v42)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v4 = *(v40 + 8 * v3);
    }

    v5 = v4;
    v6 = &v4[OBJC_IVAR___AKSignInWithAppleSharedCredential_clientID];
    if (*(v43 + 16) && (v7 = *v6, v8 = v6[1], , v9 = sub_10023A350(v7, v8), v11 = v10, , (v11 & 1) != 0))
    {
      v13 = v0[13];
      v12 = v0[14];
      v14 = v0[12];
      v15 = *(*(v43 + 56) + 8 * v9);
      v16 = type metadata accessor for TaskPriority();
      v17 = *(v16 - 8);
      (*(v17 + 56))(v12, 1, 1, v16);
      v18 = swift_allocObject();
      v18[2] = 0;
      v18[3] = 0;
      v18[4] = v14;
      v18[5] = v15;
      v18[6] = v5;
      sub_1001DE11C(v12, v13);
      LODWORD(v13) = (*(v17 + 48))(v13, 1, v16);
      v41 = v15;

      v19 = v5;
      v20 = v38[13];
      if (v13 == 1)
      {
        sub_100010DD0(v38[13]);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v17 + 8))(v20, v16);
      }

      v0 = v38;
      if (v18[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v30 = dispatch thunk of Actor.unownedExecutor.getter();
        v32 = v31;
        swift_unknownObjectRelease();
      }

      else
      {
        v30 = 0;
        v32 = 0;
      }

      v33 = *v38[9];

      if (v32 | v30)
      {
        v34 = v37;
        *v37 = 0;
        v37[1] = 0;
        v38[4] = v30;
        v38[5] = v32;
      }

      else
      {
        v34 = 0;
      }

      v35 = v38[14];
      v38[6] = 1;
      v38[7] = v34;
      v38[8] = v33;
      swift_task_create();

      sub_100010DD0(v35);
      v2 = v39;
    }

    else
    {
      if (qword_100371BD8 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_1001AD2E4(v21, qword_100377698);
      v22 = v5;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v44 = v26;
        *v25 = 136315138;
        v27 = *v6;
        v28 = v6[1];

        v29 = sub_10024B050(v27, v28, &v44);

        *(v25 + 4) = v29;
        _os_log_impl(&_mh_execute_header, v23, v24, "No matching account found with bundleID %s", v25, 0xCu);
        sub_1001E17A4(v26);
      }
    }

    ++v3;
  }

  while (v2 != v3);
LABEL_27:

  v36 = v0[1];

  v36();
}

uint64_t sub_1001E1500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;

  return _swift_task_switch(sub_1001E1594, 0, 0);
}

uint64_t sub_1001E1594()
{
  v1 = *(v0[3] + 64);
  v0[2] = 0;
  v2 = [v1 removeSharedAccount:v0[4] error:v0 + 2];
  v3 = v0[2];
  if (v2 && (v4 = v0[5], v0[2] = 0, v5 = v3, v6 = [v1 addSharedAccountWithCredential:v4 error:v0 + 2], v3 = v0[2], v6))
  {
    v11 = v0[1];
    v7 = v3;
    v8 = v11;
  }

  else
  {
    v9 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v8 = v0[1];
  }

  return v8();
}

uint64_t sub_1001E16D8()
{
  sub_1001E17A4((v0 + 24));
  swift_unknownObjectRelease();
  sub_1001E17A4((v0 + 72));

  return swift_deallocClassInstance();
}

unint64_t sub_1001E174C()
{
  result = qword_100372F30;
  if (!qword_100372F30)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100372F30);
  }

  return result;
}

uint64_t sub_1001E17A4(void *a1)
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

uint64_t sub_1001E17F0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1001E18B4;

  return sub_1001E0F9C(a1, a2, v6, v7, v8);
}

uint64_t sub_1001E18B4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1001E19A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1001E1A70;

  return sub_1001E1500(a1, v4, v5, v6, v7, v8);
}

id AppleIDPasskeyDaemonService.exportedObject.getter@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for AppleIDPasskeyDaemonService();
  *a1 = v3;

  return v3;
}

Swift::Bool __swiftcall AppleIDPasskeyDaemonService.shouldAcceptNewConnection(_:)(NSXPCConnection a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for AppleIDPasskeyDaemonService();
  v3 = objc_msgSendSuper2(&v8, "shouldAcceptNewConnection:", a1.super.isa);
  if (v3)
  {
    v4 = v3;
    v5 = [objc_allocWithZone(AKClient) initWithConnection:a1.super.isa];
    v6 = *&v1[OBJC_IVAR___AKAppleIDPasskeyDaemonService_client];
    *&v1[OBJC_IVAR___AKAppleIDPasskeyDaemonService_client] = v5;

    LOBYTE(v3) = v4;
  }

  return v3;
}

id AppleIDPasskeyDaemonService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppleIDPasskeyDaemonService.init()()
{
  *&v0[OBJC_IVAR___AKAppleIDPasskeyDaemonService_client] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppleIDPasskeyDaemonService();
  return objc_msgSendSuper2(&v2, "init");
}

id AppleIDPasskeyDaemonService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppleIDPasskeyDaemonService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t AppleIDPasskeyDaemonService.setupAppleIDPasskey(with:)(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return _swift_task_switch(sub_1001E1DE4, 0, 0);
}

uint64_t sub_1001E1DE4()
{
  receiver = v0[4].receiver;
  super_class = v0[4].super_class;
  v3 = OBJC_IVAR___AKAppleIDPasskeyDaemonService_client;
  v4 = *(super_class + OBJC_IVAR___AKAppleIDPasskeyDaemonService_client);
  v5 = v4;
  v6 = sub_1001B0778(receiver, v4);
  v0[5].receiver = v6;

  if (v6)
  {
    v7 = v0[4].receiver;
    v8 = *(super_class + v3);
    v9 = v8;
    v10 = sub_1001B0BCC(v7, v8);
    v0[5].super_class = v10;

    if (v10)
    {
      sub_1001E48C8();
      v0[6].receiver = v11;
      v24 = v11;
      v25 = [objc_allocWithZone(AKAppleIDPasskeyAuthenticationController) init];
      v26 = type metadata accessor for AppleIDPasskeyCredentialProvider();
      v27 = objc_allocWithZone(v26);
      *&v27[OBJC_IVAR___AKAppleIDPasskeyCredentialProvider_authorizationController] = v25;
      v0[1].receiver = v27;
      v0[1].super_class = v26;
      v28 = objc_msgSendSuper2(v0 + 1, "init");
      v0[6].super_class = v28;
      v29 = type metadata accessor for AppleIDPasskeyEnrollController();
      v30 = objc_allocWithZone(v29);
      *&v30[OBJC_IVAR___AKAppleIDPasskeyEnrollController_passkeyValidator] = v24;
      *&v30[OBJC_IVAR___AKAppleIDPasskeyEnrollController_challengeProvider] = v6;
      *&v30[OBJC_IVAR___AKAppleIDPasskeyEnrollController_credentialProvider] = v28;
      *&v30[OBJC_IVAR___AKAppleIDPasskeyEnrollController_registrationProvider] = v10;
      v0[2].receiver = v30;
      v0[2].super_class = v29;
      swift_unknownObjectRetain();
      v31 = v6;
      v32 = v28;
      v33 = v10;
      v0[7].receiver = objc_msgSendSuper2(v0 + 2, "init");
      v34 = swift_task_alloc();
      v0[7].super_class = v34;
      *v34 = v0;
      *(v34 + 1) = sub_1001E2264;

      return sub_1001B0268(0);
    }
  }

  if (qword_100371BE0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1001AD2E4(v12, qword_1003776B0);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Passkey setup is missing provider.", v15, 2u);
  }

  type metadata accessor for AppleIDPasskeyError(0);
  v0[3].super_class = -120018;
  sub_1001E4150(_swiftEmptyArrayStorage);
  sub_1001B1020();
  _BridgedStoredNSError.init(_:userInfo:)();
  swift_willThrow();
  if (qword_100371BE0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1001AD2E4(v16, qword_1003776B0);
  swift_errorRetain();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 4) = v21;
    *v20 = v21;
    _os_log_impl(&_mh_execute_header, v17, v18, "Setup passkey failed with error: %@.", v19, 0xCu);
    sub_1001B4EB8(v20);
  }

  swift_willThrow();
  v22 = v0->super_class;

  return v22(0);
}

uint64_t sub_1001E2264(char a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = sub_1001E241C;
  }

  else
  {
    *(v4 + 136) = a1 & 1;
    v5 = sub_1001E2390;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001E2390()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v3 = *(v0 + 80);

  swift_unknownObjectRelease();
  v4 = *(v0 + 8);
  v5 = *(v0 + 136);

  return v4(v5);
}

uint64_t sub_1001E241C()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v3 = *(v0 + 80);

  swift_unknownObjectRelease();
  if (qword_100371BE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1001AD2E4(v4, qword_1003776B0);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Setup passkey failed with error: %@.", v7, 0xCu);
    sub_1001B4EB8(v8);
  }

  swift_willThrow();
  v10 = *(v0 + 8);

  return v10(0);
}

uint64_t sub_1001E2750(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1001E2814;

  return AppleIDPasskeyDaemonService.setupAppleIDPasskey(with:)(v6);
}

uint64_t sub_1001E2814(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 32);
  if (v3)
  {
    v11 = _convertErrorToNSError(_:)();

    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    (*(v10 + 16))(*(v5 + 32), a1 & 1, 0);
  }

  _Block_release(*(v6 + 32));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t AppleIDPasskeyDaemonService.verifyAppleIDPasskey(with:)(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return _swift_task_switch(sub_1001E29E4, 0, 0);
}

uint64_t sub_1001E29E4()
{
  sub_1001E48C8();
  v0[3].receiver = v1;
  v2 = v1;
  receiver = v0[2].receiver;
  v4 = *(v0[2].super_class + OBJC_IVAR___AKAppleIDPasskeyDaemonService_client);
  v5 = v4;
  v6 = sub_1001F2AA4(receiver, v4);
  v0[3].super_class = v6;

  v7 = type metadata accessor for AppleIDPasskeyVerificationController();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR___AKAppleIDPasskeyVerificationController_passkeyValidator] = v2;
  *&v8[OBJC_IVAR___AKAppleIDPasskeyVerificationController_verificationProvider] = v6;
  v0[1].receiver = v8;
  v0[1].super_class = v7;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v0[4].receiver = objc_msgSendSuper2(v0 + 1, "init");
  v9 = swift_task_alloc();
  v0[4].super_class = v9;
  *v9 = v0;
  *(v9 + 1) = sub_1001E2C8C;
  v10 = v0[2].receiver;

  return sub_1001F2414(v10);
}

uint64_t sub_1001E2C8C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_1001E2E30;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = sub_1001E2DB4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001E2DB4()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);
  v2 = *(v0 + 88);

  return v1(v2);
}

uint64_t sub_1001E2E30()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (qword_100371BE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1001AD2E4(v1, qword_1003776B0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Verify passkey failed with error: %@.", v4, 0xCu);
    sub_1001B4EB8(v5);
  }

  swift_willThrow();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1001E3158(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1001E5974;

  return AppleIDPasskeyDaemonService.verifyAppleIDPasskey(with:)(v6);
}

uint64_t AppleIDPasskeyDaemonService.unenrollAppleIDPasskey(with:)(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return _swift_task_switch(sub_1001E323C, 0, 0);
}

uint64_t sub_1001E323C()
{
  sub_1001E48C8();
  v0[3].receiver = v1;
  v2 = v1;
  receiver = v0[2].receiver;
  v4 = *(v0[2].super_class + OBJC_IVAR___AKAppleIDPasskeyDaemonService_client);
  v5 = v4;
  v6 = sub_100206718(receiver, v4, 0);
  v0[3].super_class = v6;

  v7 = type metadata accessor for AppleIDPasskeyUnenrollController();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR___AKAppleIDPasskeyUnenrollController_passkeyValidator] = v2;
  *&v8[OBJC_IVAR___AKAppleIDPasskeyUnenrollController_unenrollProvider] = v6;
  v0[1].receiver = v8;
  v0[1].super_class = v7;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v0[4].receiver = objc_msgSendSuper2(v0 + 1, "init");
  v9 = swift_task_alloc();
  v0[4].super_class = v9;
  *v9 = v0;
  *(v9 + 1) = sub_1001E34FC;

  return sub_100206B80(0);
}

uint64_t sub_1001E34FC(char a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_1001E36A4;
  }

  else
  {
    *(v4 + 88) = a1 & 1;
    v5 = sub_1001E3628;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001E3628()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);
  v2 = *(v0 + 88);

  return v1(v2);
}

uint64_t sub_1001E36A4()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (qword_100371BE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1001AD2E4(v1, qword_1003776B0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unenroll passkey failed with error: %@.", v4, 0xCu);
    sub_1001B4EB8(v5);
  }

  swift_willThrow();
  v7 = *(v0 + 8);

  return v7(0);
}

uint64_t sub_1001E39D0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1001E59A0;

  return AppleIDPasskeyDaemonService.unenrollAppleIDPasskey(with:)(v6);
}

uint64_t AppleIDPasskeyDaemonService.appleIDPasskeyStatus(with:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1001E3B3C;

  return sub_1001E4B90(a1);
}

uint64_t sub_1001E3B3C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1001E3DC4(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1001E3E98;

  return sub_1001E4B90(v6);
}

uint64_t sub_1001E3E98(Class a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;

  if (v3)
  {
    a1 = _convertErrorToNSError(_:)();

    v9 = a1;
LABEL_3:
    v10 = 0;
    goto LABEL_6;
  }

  if (!a1)
  {
    v9 = 0;
    goto LABEL_3;
  }

  sub_1001AD17C(&qword_1003728B0, &qword_10029D460);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10 = isa;
  v9 = 0;
  a1 = isa;
LABEL_6:
  v12 = *(v5 + 32);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v8 + 8);

  return v13();
}

uint64_t sub_1001E406C(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

_BYTE **sub_1001E40CC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_1001E40DC(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

unint64_t sub_1001E4150(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001AD17C(&unk_100374250, &qword_10029D9A0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1001E58BC(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_100013518(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000122C0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

void _s3akd27AppleIDPasskeyDaemonServiceC26configureExportedInterfaceyySo14NSXPCInterfaceCF_0(void *a1)
{
  sub_1001AD17C(&unk_100374270, &qword_10029DE30);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10029DD30;
  v2 = sub_1001E592C(0, &qword_100372FE0, AKAppleIDPasskeySetupContext_ptr);
  *(v1 + 56) = sub_1001AD17C(&qword_100372FE8, &qword_10029DE38);
  *(v1 + 32) = v2;
  v10 = sub_1001E592C(0, &qword_100372FF0, NSData_ptr);
  *(v1 + 88) = sub_1001AD17C(&qword_100372FF8, &qword_10029DE40);
  *(v1 + 64) = v10;
  v9 = sub_1001E592C(0, &qword_100373000, NSError_ptr);
  *(v1 + 120) = sub_1001AD17C(&unk_100373008, &qword_10029DE48);
  *(v1 + 96) = v9;
  v3 = sub_1001E592C(0, &qword_100372950, NSString_ptr);
  *(v1 + 152) = sub_1001AD17C(&qword_100373018, &qword_10029DE50);
  *(v1 + 128) = v3;
  v4 = sub_1001E592C(0, &qword_100373020, NSDictionary_ptr);
  *(v1 + 184) = sub_1001AD17C(&qword_100373028, &qword_10029DE58);
  *(v1 + 160) = v4;
  v5 = sub_1001E592C(0, &qword_100373030, NSNull_ptr);
  *(v1 + 216) = sub_1001AD17C(&qword_100373038, qword_10029DE60);
  *(v1 + 192) = v5;
  v6 = objc_allocWithZone(NSSet);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = [v6 initWithArray:isa];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1001E48C8()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 primaryAuthKitAccount];
  if (v1)
  {
    v2 = v1;
    v14 = [objc_opt_self() sharedManager];
    v3 = [objc_allocWithZone(type metadata accessor for AppleIDPasskeyServerConfiguration()) init];
    v4 = [objc_opt_self() currentDevice];
    if (v4)
    {
      v5 = v4;
      v6 = [objc_allocWithZone(AKCDPFactory) init];
      v7 = [objc_allocWithZone(AKAppleIDPasskeyAuthenticationController) init];
      v8 = type metadata accessor for AppleIDPasskeyValidator();
      v9 = objc_allocWithZone(v8);
      *&v9[OBJC_IVAR___AKAppleIDPasskeyValidator_account] = v2;
      *&v9[OBJC_IVAR___AKAppleIDPasskeyValidator_accountManager] = v0;
      *&v9[OBJC_IVAR___AKAppleIDPasskeyValidator_featureManager] = v14;
      *&v9[OBJC_IVAR___AKAppleIDPasskeyValidator_configuration] = v3;
      *&v9[OBJC_IVAR___AKAppleIDPasskeyValidator_device] = v5;
      *&v9[OBJC_IVAR___AKAppleIDPasskeyValidator_cdpFactory] = v6;
      *&v9[OBJC_IVAR___AKAppleIDPasskeyValidator_authenticationController] = v7;
      v15.receiver = v9;
      v15.super_class = v8;
      objc_msgSendSuper2(&v15, "init");
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_100371BE0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1001AD2E4(v10, qword_1003776B0);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Missing primary account.", v13, 2u);
    }

    type metadata accessor for AppleIDPasskeyError(0);
    v16 = -120017;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B1020();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

uint64_t sub_1001E4BB0()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = type metadata accessor for AppleIDPasskeyStatusController();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR___AKAppleIDPasskeyStatusController_accountManager] = v1;
  v0[1].receiver = v3;
  v0[1].super_class = v2;
  v0[2].super_class = objc_msgSendSuper2(v0 + 1, "init");
  v4 = swift_task_alloc();
  v0[3].receiver = v4;
  *v4 = v0;
  v4[1] = sub_1001E4CAC;
  receiver = v0[2].receiver;

  return sub_1001BB90C(receiver);
}

uint64_t sub_1001E4CAC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_1001E4E3C;
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = sub_1001E4DD4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001E4DD4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1(v2);
}

uint64_t sub_1001E4E3C()
{
  if (qword_100371BE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1001AD2E4(v1, qword_1003776B0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Passkey status failed with error: %@.", v4, 0xCu);
    sub_1001B4EB8(v5);
  }

  swift_willThrow();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1001E4FCC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001E5080;

  return sub_1001E3DC4(v2, v3, v4);
}

uint64_t sub_1001E5080()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1001E5174()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001E597C;

  return sub_1001E39D0(v2, v3, v4);
}

uint64_t sub_1001E5228()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001E5980;

  return sub_10000A98C(v2, v3, v4);
}

uint64_t sub_1001E52E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1001E5984;

  return sub_1000099A4(a1, v4, v5, v6);
}

uint64_t sub_1001E53B4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001E5988;

  return sub_1001E3158(v2, v3, v4);
}

uint64_t sub_1001E5468()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001E598C;

  return sub_10000A98C(v2, v3, v4);
}

uint64_t sub_1001E5528(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1001E5990;

  return sub_1000099A4(a1, v4, v5, v6);
}

uint64_t sub_1001E55F4()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001E563C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001E5994;

  return sub_1001E2750(v2, v3, v4);
}

uint64_t sub_1001E56F0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001E5998;

  return sub_10000A98C(v2, v3, v4);
}

uint64_t sub_1001E57B0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001E57F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1001E599C;

  return sub_1000099A4(a1, v4, v5, v6);
}

uint64_t sub_1001E58BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001AD17C(&unk_100372FD0, &qword_10029F6F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001E592C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_1001E59A4(char *a1)
{
  v3 = v1;
  v5 = sub_1001E6248();

  v6 = String._bridgeToObjectiveC()();

  [v5 setAccount:v6];

  v7 = String._bridgeToObjectiveC()();

  [v5 setLabel:v7];

  v8 = String._bridgeToObjectiveC()();

  [v5 setServer:v8];

  v9 = String._bridgeToObjectiveC()();

  [v5 setSharingGroup:v9];

  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for SignInWithAppleSharedCredential();
  sub_1001E6334(&qword_100373048, type metadata accessor for SignInWithAppleSharedCredential, &unk_10029E570);
  v10 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v2)
  {
  }

  else
  {
    v12 = v10;
    v13 = v11;

    v14 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    isa = Data._bridgeToObjectiveC()().super.isa;
    v3 = [v14 initWithDescriptor:v5 value:isa];
    sub_100013B34(v12, v13);
  }

  return v3;
}

char *sub_1001E5C20(char *a1)
{
  v2 = a1;
  v3 = [a1 descriptor];
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = v3;
  v5 = [v3 server];
  if (!v5)
  {

    goto LABEL_11;
  }

  v6 = v5;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = [v4 account];
  if (!v10)
  {

    goto LABEL_10;
  }

  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = [v2 value];
  if (!v15)
  {

    goto LABEL_10;
  }

  v60 = v12;
  v62 = v7;
  v64 = v14;
  v16 = v15;
  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v20 = type metadata accessor for SignInWithAppleSharedCredential();
  sub_1001E6334(&qword_100373040, type metadata accessor for SignInWithAppleSharedCredential, &unk_10029E598);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (!v1)
  {
    v58 = v19;
    v59 = v20;

    v22 = v68;
    v23 = &v68[OBJC_IVAR___AKSignInWithAppleSharedCredential_clientID];
    v57 = v17;
    if (*&v68[OBJC_IVAR___AKSignInWithAppleSharedCredential_clientID] == v62 && *&v68[OBJC_IVAR___AKSignInWithAppleSharedCredential_clientID + 8] == v9)
    {

LABEL_17:
      v25 = &v68[OBJC_IVAR___AKSignInWithAppleSharedCredential_userID];
      if (*&v68[OBJC_IVAR___AKSignInWithAppleSharedCredential_userID] == v60 && *&v68[OBJC_IVAR___AKSignInWithAppleSharedCredential_userID + 8] == v64)
      {
      }

      else
      {
        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v26 & 1) == 0)
        {

          sub_100013B34(v17, v58);
          goto LABEL_11;
        }
      }

      v65 = *v23;
      v61 = *(v23 + 1);
      v27 = *&v68[OBJC_IVAR___AKSignInWithAppleSharedCredential_teamID + 8];
      v55 = *&v68[OBJC_IVAR___AKSignInWithAppleSharedCredential_teamID];
      v28 = *&v68[OBJC_IVAR___AKSignInWithAppleSharedCredential_clientName + 8];
      v53 = *&v68[OBJC_IVAR___AKSignInWithAppleSharedCredential_clientName];
      v63 = *v25;
      v56 = *(v25 + 1);
      v29 = *&v68[OBJC_IVAR___AKSignInWithAppleSharedCredential_shareToken + 8];
      v54 = *&v68[OBJC_IVAR___AKSignInWithAppleSharedCredential_shareToken];
      v30 = *&v68[OBJC_IVAR___AKSignInWithAppleSharedCredential_groupID + 8];
      v52 = *&v68[OBJC_IVAR___AKSignInWithAppleSharedCredential_groupID];
      v50 = *&v68[OBJC_IVAR___AKSignInWithAppleSharedCredential_participantID + 8];
      v51 = *&v68[OBJC_IVAR___AKSignInWithAppleSharedCredential_participantID];
      v48 = *&v68[OBJC_IVAR___AKSignInWithAppleSharedCredential_participantName + 8];
      v49 = *&v68[OBJC_IVAR___AKSignInWithAppleSharedCredential_participantName];
      v47 = *&v68[OBJC_IVAR___AKSignInWithAppleSharedCredential_privateEmail];
      v45 = *&v68[OBJC_IVAR___AKSignInWithAppleSharedCredential_privateEmail + 8];
      v31 = *&v68[OBJC_IVAR___AKSignInWithAppleSharedCredential_developerName + 8];
      v46 = *&v68[OBJC_IVAR___AKSignInWithAppleSharedCredential_developerName];
      v32 = objc_allocWithZone(v59);
      *&v32[OBJC_IVAR___AKSignInWithAppleSharedCredential_groupedAppsBundleIDs] = &_swiftEmptySetSingleton;
      v33 = &v32[OBJC_IVAR___AKSignInWithAppleSharedCredential_clientID];
      *v33 = v65;
      *(v33 + 1) = v61;
      v34 = &v32[OBJC_IVAR___AKSignInWithAppleSharedCredential_teamID];
      *v34 = v55;
      *(v34 + 1) = v27;
      v35 = &v32[OBJC_IVAR___AKSignInWithAppleSharedCredential_clientName];
      *v35 = v53;
      *(v35 + 1) = v28;
      v36 = &v32[OBJC_IVAR___AKSignInWithAppleSharedCredential_userID];
      *v36 = v63;
      *(v36 + 1) = v56;
      v37 = &v32[OBJC_IVAR___AKSignInWithAppleSharedCredential_shareToken];
      *v37 = v54;
      *(v37 + 1) = v29;
      v38 = &v32[OBJC_IVAR___AKSignInWithAppleSharedCredential_groupID];
      *v38 = v52;
      *(v38 + 1) = v30;
      v39 = &v32[OBJC_IVAR___AKSignInWithAppleSharedCredential_participantID];
      *v39 = v51;
      *(v39 + 1) = v50;
      v40 = &v32[OBJC_IVAR___AKSignInWithAppleSharedCredential_participantName];
      *v40 = v49;
      *(v40 + 1) = v48;
      v41 = &v32[OBJC_IVAR___AKSignInWithAppleSharedCredential_privateEmail];
      *v41 = v47;
      *(v41 + 1) = v45;
      v42 = &v32[OBJC_IVAR___AKSignInWithAppleSharedCredential_developerName];
      *v42 = v46;
      *(v42 + 1) = v31;
      v66.receiver = v32;
      v66.super_class = v59;

      v43 = objc_msgSendSuper2(&v66, "init");

      sub_100013B34(v57, v58);
      v44 = *&v22[OBJC_IVAR___AKSignInWithAppleSharedCredential_groupedAppsBundleIDs];
      v2 = v43;

      *&v2[OBJC_IVAR___AKSignInWithAppleSharedCredential_groupedAppsBundleIDs] = v44;

      return v2;
    }

    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v24)
    {
      goto LABEL_17;
    }

    sub_100013B34(v17, v58);
LABEL_10:

    goto LABEL_11;
  }

  sub_100013B34(v17, v19);

LABEL_11:
  type metadata accessor for SignInWithAppleError(0);
  v67 = -16009;
  sub_1001E4150(_swiftEmptyArrayStorage);
  sub_1001E6334(&qword_100372690, type metadata accessor for SignInWithAppleError, &unk_10029C488);
  _BridgedStoredNSError.init(_:userInfo:)();
  swift_willThrow();

  return v2;
}

id sub_1001E6248()
{
  v0 = [objc_allocWithZone(AAFKeychainItemDescriptor) init];
  [v0 setItemClass:2];
  [v0 setAccessGroup:AKSignInWithAppleKeychainAccessGroup];
  [v0 setSynchronizable:1];
  [v0 setItemAccessible:1];
  [v0 setUseDataProtection:2];
  String.init(_:)(kSecAttrProtocolHTTPS);
  v1 = String._bridgeToObjectiveC()();

  [v0 setItemProtocol:v1];

  return v0;
}

uint64_t sub_1001E6334(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1001E637C()
{
  result = [objc_allocWithZone(type metadata accessor for SignInWithAppleHealthCheckService()) init];
  qword_100377658 = result;
  return result;
}

uint64_t sub_1001E6408(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1001AD2E4(v5, qword_100377698);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_10024B050(0xD000000000000028, 0x80000001002AB440, v17);
    _os_log_impl(&_mh_execute_header, v6, v7, "Registering SIWA health check activity - %s", v8, 0xCu);
    sub_1001E94CC(v9);
  }

  v10 = *&v3[OBJC_IVAR___AKSignInWithAppleHealthCheckService_serialQueue];
  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  *(v11 + 24) = ObjectType;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1001E7C80;
  *(v12 + 24) = v11;
  v17[4] = sub_1001E7C88;
  v17[5] = v12;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_1001FAEC8;
  v17[3] = &unk_100327758;
  v13 = _Block_copy(v17);
  v14 = v3;

  dispatch_sync(v10, v13);
  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_1001E6678(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v8[4] = sub_1001E7C90;
  v8[5] = v4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100248CF4;
  v8[3] = &unk_1003277A8;
  v5 = _Block_copy(v8);
  v6 = a1;

  v7 = String.utf8CString.getter();
  xpc_activity_register((v7 + 32), XPC_ACTIVITY_CHECK_IN, v5);

  _Block_release(v5);
}

uint64_t sub_1001E678C(_xpc_activity_s *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v38 - v6;
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1001AD2E4(v8, qword_100377698);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Registered SIWA health check service", v11, 2u);
  }

  String.utf8CString.getter();
  v12 = os_transaction_create();

  state = xpc_activity_get_state(a1);
  v14 = Logger.logObject.getter();
  if (state != 2)
  {
    if (state)
    {
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v39 = v17;
        *v16 = 136315138;
        *(v16 + 4) = sub_10024B050(0xD000000000000028, 0x80000001002AB440, &v39);
        v18 = "Error handling activity: %s";
        goto LABEL_19;
      }
    }

    else
    {
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v39 = v17;
        *v16 = 136315138;
        *(v16 + 4) = sub_10024B050(0xD000000000000028, 0x80000001002AB440, &v39);
        v18 = "Checked in %s";
LABEL_19:
        _os_log_impl(&_mh_execute_header, v14, v15, v18, v16, 0xCu);
        sub_1001E94CC(v17);

        return swift_unknownObjectRelease();
      }
    }

LABEL_22:

    return swift_unknownObjectRelease();
  }

  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v39 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_10024B050(0xD000000000000028, 0x80000001002AB440, &v39);
    _os_log_impl(&_mh_execute_header, v14, v19, "Running %s", v20, 0xCu);
    sub_1001E94CC(v21);
  }

  if (xpc_activity_should_defer(a1))
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v39 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_10024B050(0xD000000000000028, 0x80000001002AB440, &v39);
      _os_log_impl(&_mh_execute_header, v22, v23, "Activity (%s) transistion to state RUN, but criteria are no longer satisfied. Deferring", v24, 0xCu);
      sub_1001E94CC(v25);
    }

    if (!xpc_activity_set_state(a1, 3))
    {
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v39 = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_10024B050(0xD000000000000028, 0x80000001002AB440, &v39);
        _os_log_impl(&_mh_execute_header, v26, v27, "Activity (%s) failed to transition to state DEFER", v28, 0xCu);
        sub_1001E94CC(v29);

        return swift_unknownObjectRelease();
      }
    }

    goto LABEL_22;
  }

  if (!xpc_activity_set_state(a1, 4))
  {
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v39 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_10024B050(0xD000000000000028, 0x80000001002AB440, &v39);
      _os_log_impl(&_mh_execute_header, v34, v35, "Failed to set activity(%s) state to Continue", v36, 0xCu);
      sub_1001E94CC(v37);
    }

    xpc_activity_set_state(a1, 5);
    goto LABEL_22;
  }

  v31 = type metadata accessor for TaskPriority();
  (*(*(v31 - 8) + 56))(v7, 1, 1, v31);
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v32;
  *(v33 + 40) = 1;
  *(v33 + 48) = a1;
  *(v33 + 56) = v12;
  *(v33 + 64) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_1001E745C(0, 0, v7, &unk_10029DED0, v33);
  swift_unknownObjectRelease();

  return sub_100010DD0(v7);
}

uint64_t sub_1001E6EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 72) = a5;
  *(v6 + 40) = a4;
  *(v6 + 48) = a6;
  return _swift_task_switch(sub_1001E6F10, 0, 0);
}

uint64_t sub_1001E6F10()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = Strong;
    if ([*(Strong + OBJC_IVAR___AKSignInWithAppleHealthCheckService_currentDevice) isUnlocked])
    {
      v3 = swift_task_alloc();
      v0[8] = v3;
      *v3 = v0;
      v3[1] = sub_1001E70F4;

      return sub_1001E8BF0();
    }

    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1001AD2E4(v5, qword_100377698);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Device is not unlocked. Skipping health check.", v8, 2u);
    }
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001E70F4()
{

  return _swift_task_switch(sub_1001E71F0, 0, 0);
}

uint64_t sub_1001E71F0()
{
  v14 = v0;
  if (*(v0 + 72) != 1)
  {

    goto LABEL_14;
  }

  if (xpc_activity_set_state(*(v0 + 48), 5))
  {
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1001AD2E4(v1, qword_100377698);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 56);
    if (!v4)
    {
      goto LABEL_13;
    }

    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_10024B050(0xD000000000000028, 0x80000001002AB440, &v13);
    v8 = "Activity(%s) state set to Done";
  }

  else
  {
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1001AD2E4(v9, qword_100377698);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 56);
    if (!v10)
    {
      goto LABEL_13;
    }

    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_10024B050(0xD000000000000028, 0x80000001002AB440, &v13);
    v8 = "Failed to set activity(%s) state to Done";
  }

  _os_log_impl(&_mh_execute_header, v2, v3, v8, v6, 0xCu);
  sub_1001E94CC(v7);

LABEL_13:

LABEL_14:
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1001E745C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1001DE11C(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100010DD0(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id sub_1001E7744(void *a1)
{
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1001AD2E4(v2, qword_100377698);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "SIWA health check: Releasing Lock Assertion", v5, 2u);
  }

  return [a1 unlock];
}

id sub_1001E783C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v11 - 8);
  __chkstk_darwin(v11);
  v5 = &ObjectType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  v10 = OBJC_IVAR___AKSignInWithAppleHealthCheckService_serialQueue;
  sub_1001E7B78();
  static DispatchQoS.unspecified.getter();
  v13 = _swiftEmptyArrayStorage;
  sub_1001E7BC4();
  sub_1001AD17C(&unk_1003734F0, &unk_10029DEA8);
  sub_1001E7C1C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v11);
  *&v2[v10] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  result = [objc_opt_self() currentDevice];
  if (result)
  {
    *&v2[OBJC_IVAR___AKSignInWithAppleHealthCheckService_currentDevice] = result;
    v12.receiver = v2;
    v12.super_class = ObjectType;
    return objc_msgSendSuper2(&v12, "init");
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1001E7AD0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_1001E7B78()
{
  result = qword_1003734E0;
  if (!qword_1003734E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003734E0);
  }

  return result;
}

unint64_t sub_1001E7BC4()
{
  result = qword_100373090;
  if (!qword_100373090)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100373090);
  }

  return result;
}

unint64_t sub_1001E7C1C()
{
  result = qword_1003730A0;
  if (!qword_1003730A0)
  {
    sub_1001C5270(&unk_1003734F0, &unk_10029DEA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003730A0);
  }

  return result;
}

uint64_t sub_1001E7C98(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1001E7D78;

  return sub_1001E6EEC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1001E7D78()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1001E7E6C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1001E9524;

  return sub_10024ADDC(a1, v4);
}

uint64_t sub_1001E7F24(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1001E7FDC;

  return sub_10024ADDC(a1, v4);
}

uint64_t sub_1001E7FDC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_1001E80D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = type metadata accessor for SharedGroupsMembershipController();
  v25[3] = v9;
  v25[4] = &off_100328758;
  v25[0] = a2;
  v23 = v8;
  v24 = &off_1003270E8;
  v22[0] = a4;
  type metadata accessor for SharedAccountsTokenRotationController();
  v10 = swift_allocObject();
  v11 = sub_1001E947C(v25, v9);
  __chkstk_darwin(v11);
  v13 = (v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = sub_1001E947C(v22, v23);
  __chkstk_darwin(v15);
  v17 = (v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v13;
  v20 = *v17;
  v10[6] = v9;
  v10[7] = &off_100328758;
  v10[12] = v8;
  v10[13] = &off_1003270E8;
  v10[2] = a1;
  v10[3] = v19;
  v10[8] = a3;
  v10[9] = v20;
  sub_1001E94CC(v22);
  sub_1001E94CC(v25);
  return v10;
}

void *sub_1001E82E8()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [objc_allocWithZone(AAFKeychainManager) init];
  v2 = objc_allocWithZone(type metadata accessor for SharedAccountsStorageController());
  v50 = v1;
  v3 = v0;
  v52 = sub_100244CAC(v50, v3, v2);
  v51 = objc_opt_self();
  v4 = [v51 sharedInstance];
  v5 = [objc_allocWithZone(AKCDPFactory) init];
  v6 = type metadata accessor for AccountSharingPreFlightChecker();
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  v8 = AKURLBagKeySIWAFetchSharedGroups;
  v9 = [objc_allocWithZone(AKAppleIDAuthenticationContext) init];
  v10 = String._bridgeToObjectiveC()();
  [v9 setAltDSID:v10];

  v11 = type metadata accessor for AccountSharingRequestProvider();
  v12 = [objc_allocWithZone(v11) initWithContext:v9 urlBagKey:v8];
  [v12 setAuthenticatedRequest:1];
  v13 = [objc_allocWithZone(AKServiceControllerImpl) initWithRequestProvider:v12];

  v14 = type metadata accessor for AccountSharingService();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  v16 = AKURLBagKeySIWARevokeShareToken;
  v17 = [objc_allocWithZone(AKAppleIDAuthenticationContext) init];
  v18 = String._bridgeToObjectiveC()();
  [v17 setAltDSID:v18];

  v19 = [objc_allocWithZone(v11) initWithContext:v17 urlBagKey:v16];
  [v19 setAuthenticatedRequest:1];
  v20 = [objc_allocWithZone(AKServiceControllerImpl) initWithRequestProvider:v19];

  v21 = type metadata accessor for AccountUnsharingService();
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  v23 = type metadata accessor for SharedGroupsMembershipController();
  v24 = swift_allocObject();
  v25 = v50;
  *(v24 + 16) = v3;
  *(v24 + 24) = v25;
  v50 = v25;
  v49 = v3;
  v51 = [v51 sharedInstance];
  v62[3] = v6;
  v62[4] = &off_100328630;
  v62[0] = v7;
  v60 = v14;
  v61 = &off_1003270E8;
  v59[0] = v15;
  v57 = v21;
  v58 = &off_1003269B8;
  v56[0] = v22;
  v54 = v23;
  v55 = &off_100328758;
  v53[0] = v24;
  type metadata accessor for SharedGroupsSyncController();
  v26 = swift_allocObject();
  v27 = sub_1001E947C(v62, v6);
  __chkstk_darwin(v27);
  v29 = (&v48 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29);
  v31 = sub_1001E947C(v59, v60);
  __chkstk_darwin(v31);
  v33 = (&v48 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v33);
  v35 = sub_1001E947C(v56, v57);
  __chkstk_darwin(v35);
  v37 = (&v48 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v38 + 16))(v37);
  v39 = sub_1001E947C(v53, v54);
  __chkstk_darwin(v39);
  v41 = (&v48 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v42 + 16))(v41);
  v43 = *v29;
  v44 = *v33;
  v45 = *v37;
  v46 = *v41;
  v26[6] = v6;
  v26[7] = &off_100328630;
  v26[3] = v43;
  v26[12] = v14;
  v26[13] = &off_1003270E8;
  v26[9] = v44;
  v26[17] = v21;
  v26[18] = &off_1003269B8;
  v26[14] = v45;
  v26[22] = v23;
  v26[23] = &off_100328758;

  v26[19] = v46;
  v26[2] = v51;
  v26[8] = v52;
  sub_1001E94CC(v53);
  sub_1001E94CC(v56);
  sub_1001E94CC(v59);
  sub_1001E94CC(v62);
  return v26;
}

void *sub_1001E897C()
{
  v21 = [objc_allocWithZone(AKAppleIDAuthenticationContext) init];
  v0 = String._bridgeToObjectiveC()();
  [v21 setAltDSID:v0];

  v1 = [objc_opt_self() sharedInstance];
  v2 = [objc_allocWithZone(AAFKeychainManager) init];
  v3 = objc_allocWithZone(type metadata accessor for SharedAccountsStorageController());
  v4 = v2;
  v5 = v1;
  v6 = sub_100244CAC(v4, v5, v3);
  type metadata accessor for SharedGroupsMembershipController();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  v8 = AKURLBagKeySIWARotateShareTokens;
  v9 = objc_allocWithZone(AKAppleIDAuthenticationContext);
  v10 = v4;
  v11 = v5;
  v12 = [v9 init];
  v13 = String._bridgeToObjectiveC()();
  [v12 setAltDSID:v13];

  v14 = [objc_allocWithZone(type metadata accessor for AccountSharingRequestProvider()) initWithContext:v12 urlBagKey:v8];
  [v14 setAuthenticatedRequest:1];
  v15 = [objc_allocWithZone(AKServiceControllerImpl) initWithRequestProvider:v14];

  type metadata accessor for AccountSharingService();
  v16 = swift_allocObject();
  v16[2] = v15;
  v17 = [objc_opt_self() sharedInstance];

  v18 = v6;

  v19 = sub_1001E80D0(v17, v7, v18, v16);

  return v19;
}

uint64_t sub_1001E8C0C()
{
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[2] = sub_1001AD2E4(v1, qword_100377698);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "SIWA health check: Taking Lock Assertion", v4, 2u);
  }

  v0[3] = [objc_opt_self() lock];
  v5 = [objc_opt_self() sharedManager];
  v6 = [v5 isSiwaCredentialSharingEnabled];

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  v9 = os_log_type_enabled(v7, v8);
  if (v6)
  {
    if (v9)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Running SIWA health check", v10, 2u);
    }

    v11 = objc_opt_self();
    v12 = [v11 sharedInstance];
    v13 = [v12 primaryAuthKitAccount];
    v0[4] = v13;

    if (v13)
    {
      v14 = [v11 sharedInstance];
      v15 = [v14 altDSIDForAccount:v13];

      if (v15)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v0[5] = sub_1001E82E8();
        v0[6] = sub_1001E897C();

        v16 = swift_task_alloc();
        v0[7] = v16;
        *v16 = v0;
        v16[1] = sub_1001E8FDC;

        return sub_1001D629C();
      }
    }

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "No primary AuthKit account found. Skipping health check.";
      goto LABEL_18;
    }
  }

  else if (v9)
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "SIWA account sharing is not enabled. Skipping health check.";
LABEL_18:
    _os_log_impl(&_mh_execute_header, v7, v8, v19, v18, 2u);
  }

  v20 = v0[3];
  sub_1001E7744(v20);

  v21 = v0[1];

  return v21();
}

uint64_t sub_1001E8FDC()
{

  if (v0)
  {

    v1 = sub_1001E951C;
  }

  else
  {
    v1 = sub_1001E90F4;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1001E90F4()
{
  if (sub_1001DEBE8())
  {
    v1 = swift_task_alloc();
    *(v0 + 64) = v1;
    *v1 = v0;
    v1[1] = sub_1001E9268;

    return sub_1001DF450();
  }

  else
  {
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "SIWA health check completed", v5, 2u);
    }

    v6 = *(v0 + 24);
    sub_1001E7744(v6);

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1001E9268()
{

  if (v0)
  {

    v1 = sub_1001E9520;
  }

  else
  {
    v1 = sub_1001E9380;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1001E9380(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "SIWA health check completed", v4, 2u);
  }

  v5 = *(v1 + 24);
  sub_1001E7744(v5);

  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_1001E947C(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_1001E94CC(void *a1)
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

id sub_1001E956C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AppleIDPasskeyServerConfiguration();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1001E9668()
{
  v1 = v0[2];
  v2 = OBJC_IVAR___AKSharedAccountsStorageController__cachedSharedGroupsMembershipInfo;
  v0[3] = OBJC_IVAR___AKSharedAccountsStorageController__cachedSharedGroupsMembershipInfo;
  v3 = *(v1 + v2);
  if (v3)
  {
    v7 = v0[1];
    v4 = v3;

    return v7(v4);
  }

  else
  {
    sub_1001F1344((v1 + OBJC_IVAR___AKSharedAccountsStorageController_sharedGroupsMembershipController), *(v1 + OBJC_IVAR___AKSharedAccountsStorageController_sharedGroupsMembershipController + 24));
    v6 = swift_task_alloc();
    v0[4] = v6;
    *v6 = v0;
    v6[1] = sub_1001E9764;

    return sub_10020FF44();
  }
}

uint64_t sub_1001E9764(uint64_t a1)
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
    *(v4 + 40) = a1;

    return _swift_task_switch(sub_1001E98B0, 0, 0);
  }
}

uint64_t sub_1001E98B0()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(v3 + v2);
  *(v3 + v2) = v1;
  v5 = v1;

  v6 = v0[5];
  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_1001E9948()
{
  v1 = v0[20];
  v2 = OBJC_IVAR___AKSharedAccountsStorageController__cachedCurrentUserParticipantIdentifier;
  v0[21] = OBJC_IVAR___AKSharedAccountsStorageController__cachedCurrentUserParticipantIdentifier;
  v3 = (v1 + v2);
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v9 = v0[1];

    return v9(v5, v4);
  }

  else
  {
    v7 = *(v1 + OBJC_IVAR___AKSharedAccountsStorageController_keychainGroupManager);
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1001E9AE4;
    v8 = swift_continuation_init();
    v0[17] = sub_1001AD17C(&unk_1003731F0, &unk_10029DFB0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1001E9CF0;
    v0[13] = &unk_100327898;
    v0[14] = v8;
    [v7 fetchCurrentUserIdentifierWithReply:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_1001E9AE4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_1001E9C84;
  }

  else
  {
    v2 = sub_1001E9BF4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001E9BF4()
{
  v1 = (v0[20] + v0[21]);
  v3 = v0[18];
  v2 = v0[19];
  *v1 = v3;
  v1[1] = v2;

  v4 = v0[1];

  return v4(v3, v2);
}

uint64_t sub_1001E9C84(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1001E9CF0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_1001F1344((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1001AD17C(&qword_100373250, qword_10029D0B0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = *(*(v4 + 64) + 40);
    *v9 = v8;
    v9[1] = v10;

    return swift_continuation_throwingResume();
  }
}

void sub_1001E9DC4(void *a1)
{
  v3 = v1;
  sub_1001F18B4(0, &qword_1003723F8, AAFKeychainItem_ptr);
  v5 = sub_1001E59A4(a1);
  if (!v2)
  {
    v6 = v5;
    v7 = *(v3 + OBJC_IVAR___AKSharedAccountsStorageController_keychainStorageController);
    v10 = 0;
    if ([v7 addWithItem:v6 error:&v10])
    {
      v8 = v10;
    }

    else
    {
      v9 = v10;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

uint64_t sub_1001E9EDC(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;

  return _swift_task_switch(sub_1001E9F70, 0, 0);
}

uint64_t sub_1001E9F70()
{
  v1 = v0[5];
  v2 = *(v0[6] + OBJC_IVAR___AKSharedAccountsStorageController_keychainStorageController);
  v3 = sub_1001E6248();
  if (v1)
  {
    v1 = String._bridgeToObjectiveC()();
  }

  v0[2] = 0;
  v4 = [v2 keychainItemsForDescriptor:v3 withGroup:v1 error:v0 + 2];

  v5 = v0[2];
  if (v4)
  {
    sub_1001F18B4(0, &qword_1003723F8, AAFKeychainItem_ptr);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v0[7] = v6;
    v7 = v5;

    v0[3] = _swiftEmptyArrayStorage;
    if (v6 >> 62)
    {
      v17 = _CocoaArrayWrapper.endIndex.getter();
      v0[8] = v17;
      if (v17)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v0[8] = v8;
      if (v8)
      {
LABEL_6:
        v0[9] = _swiftEmptyArrayStorage;
        v9 = v0[7];
        if ((v9 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
          }

          v10 = *(v9 + 32);
        }

        v0[10] = v10;
        v0[11] = 1;
        v11 = sub_1001E5C20(v10);
        v0[12] = v11;
        v15 = v11;
        v16 = swift_task_alloc();
        v0[13] = v16;
        *v16 = v0;
        v16[1] = sub_1001EA258;

        return sub_1001EA6E8(v15, 0);
      }
    }

    v18 = v0[1];

    return v18(_swiftEmptyArrayStorage);
  }

  else
  {
    v12 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1001EA258(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {

    v4 = sub_1001EA650;
  }

  else
  {
    v4 = sub_1001EA3B4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001EA3B4()
{
  v1 = *(v0 + 112);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v2 = *(v0 + 112);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 80);
  v6 = *(v0 + 64);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v7 = *(v0 + 24);
  if (v4 == v6)
  {

    v8 = *(v0 + 8);

    return v8(v7);
  }

  v10 = *(v0 + 120);
  v11 = *(v0 + 88);
  *(v0 + 72) = v7;
  v12 = *(v0 + 56);
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (v11 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    v13 = *(v12 + 8 * v11 + 32);
  }

  *(v0 + 80) = v13;
  *(v0 + 88) = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
LABEL_20:
    __break(1u);
  }

  v14 = v13;
  v15 = sub_1001E5C20(v14);
  *(v0 + 96) = v15;
  if (v10)
  {

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    v17 = v15;
    v18 = swift_task_alloc();
    *(v0 + 104) = v18;
    *v18 = v0;
    v18[1] = sub_1001EA258;

    return sub_1001EA6E8(v17, 0);
  }
}

uint64_t sub_1001EA650()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001EA6E8(uint64_t a1, char a2)
{
  *(v3 + 152) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return _swift_task_switch(sub_1001EA70C, 0, 0);
}

uint64_t sub_1001EA70C()
{
  v1 = v0[2];
  v2 = v1 + OBJC_IVAR___AKSignInWithAppleSharedCredential_groupID;
  v3 = *(v1 + OBJC_IVAR___AKSignInWithAppleSharedCredential_groupID);
  v0[4] = v3;
  v4 = *(v2 + 8);
  v0[5] = v4;
  v5 = v1 + OBJC_IVAR___AKSignInWithAppleSharedCredential_participantID;
  v6 = *(v1 + OBJC_IVAR___AKSignInWithAppleSharedCredential_participantID);
  v0[6] = v6;
  v7 = *(v5 + 8);
  v0[7] = v7;
  v8 = objc_allocWithZone(AKSignInWithAppleAccountShareInfo);
  v9 = String._bridgeToObjectiveC()();
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  v0[8] = [v8 initWithGroupID:v9 participantID:v10 participantName:v11];

  v12 = swift_task_alloc();
  v0[9] = v12;
  *v12 = v0;
  v12[1] = sub_1001EA894;

  return sub_1001F090C(v6, v7, v3, v4);
}

uint64_t sub_1001EA894(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = a2;

  return _swift_task_switch(sub_1001EA994, 0, 0);
}

uint64_t sub_1001EA994()
{
  v1 = *(v0 + 64);
  v2 = String._bridgeToObjectiveC()();

  [v1 setParticipantHandle:v2];

  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_1001EAA60;

  return sub_1001E9928();
}

uint64_t sub_1001EAA60(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[13] = a1;
  v4[14] = a2;
  v4[15] = v2;

  if (v2)
  {
    v5 = sub_1001EAFCC;
  }

  else
  {
    v5 = sub_1001EAB78;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001EAB78()
{
  if (v0[13] == v0[6] && v0[14] == v0[7])
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v3 = v0[8];

  [v3 setIsCurrentUser:v2 & 1];
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_1001EAC60;
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[4];
  v8 = v0[5];

  return sub_1001F090C(v6, v5, v7, v8);
}

uint64_t sub_1001EAC60(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = a2;

  return _swift_task_switch(sub_1001EAD60, 0, 0);
}

uint64_t sub_1001EAD60()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 152);
  v3 = String._bridgeToObjectiveC()();

  [v1 setParticipantHandle:v3];

  if (v2 == 1)
  {
    v4 = *(v0 + 64);
    v5 = String._bridgeToObjectiveC()();
    [v4 setShareToken:v5];
  }

  v6 = *(v0 + 16);
  v7 = objc_allocWithZone(AKSignInWithAppleAccount);
  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  v10 = [v7 initWithClientID:v8 userID:v9];

  v11 = String._bridgeToObjectiveC()();
  [v10 setLocalizedAppName:v11];

  if (*(v6 + OBJC_IVAR___AKSignInWithAppleSharedCredential_privateEmail + 8))
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v0 + 64);
  [v10 setPrivateEmail:v12];

  v14 = String._bridgeToObjectiveC()();
  [v10 setTeamID:v14];

  v15 = String._bridgeToObjectiveC()();
  [v10 setLocalizedAppDeveloperName:v15];

  [v10 setShareInfo:v13];
  v16 = *(v0 + 8);

  return v16(v10);
}

uint64_t sub_1001EAFCC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001EB1B8(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v3[4] = v7;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1001EB29C;

  return sub_1001E9EDC(a1, v7);
}

uint64_t sub_1001EB29C(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    isa = _convertErrorToNSError(_:)();

    v8 = isa;
    v9 = 0;
  }

  else
  {
    sub_1001F18B4(0, &qword_1003743E0, AKSignInWithAppleAccount_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v9 = isa;
    v8 = 0;
  }

  v10 = *(v4 + 24);
  (v10)[2](v10, v9, v8);

  _Block_release(v10);
  v11 = *(v6 + 8);

  return v11();
}

uint64_t sub_1001EB454()
{
  *(v1 + 32) = v0;

  return _swift_task_switch(sub_1001EB4E4, 0, 0);
}

uint64_t sub_1001EB4E4()
{
  v1 = *(v0[4] + OBJC_IVAR___AKSharedAccountsStorageController_keychainStorageController);
  v2 = sub_1001E6248();
  v0[2] = 0;
  v3 = [v1 keychainItemsForDescriptor:v2 withGroup:0 error:v0 + 2];

  v4 = v0[2];
  if (v3)
  {
    sub_1001F18B4(0, &qword_1003723F8, AAFKeychainItem_ptr);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v0[5] = v5;
    v6 = v4;

    v0[3] = _swiftEmptyArrayStorage;
    if (v5 >> 62)
    {
      v16 = _CocoaArrayWrapper.endIndex.getter();
      v0[6] = v16;
      if (v16)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v0[6] = v7;
      if (v7)
      {
LABEL_4:
        v0[7] = _swiftEmptyArrayStorage;
        v8 = v0[5];
        if ((v8 & 0xC000000000000001) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
          }

          v9 = *(v8 + 32);
        }

        v0[8] = v9;
        v0[9] = 1;
        v10 = sub_1001E5C20(v9);
        v0[10] = v10;
        v14 = v10;
        v15 = swift_task_alloc();
        v0[11] = v15;
        *v15 = v0;
        v15[1] = sub_1001EB7BC;

        return sub_1001EA6E8(v14, 1);
      }
    }

    v17 = v0[1];

    return v17(_swiftEmptyArrayStorage);
  }

  else
  {
    v11 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1001EB7BC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {

    v4 = sub_1001EBBB4;
  }

  else
  {
    v4 = sub_1001EB918;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001EB918()
{
  v1 = *(v0 + 96);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v2 = *(v0 + 96);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 64);
  v6 = *(v0 + 48);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v7 = *(v0 + 24);
  if (v4 == v6)
  {

    v8 = *(v0 + 8);

    return v8(v7);
  }

  v10 = *(v0 + 104);
  v11 = *(v0 + 72);
  *(v0 + 56) = v7;
  v12 = *(v0 + 40);
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (v11 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    v13 = *(v12 + 8 * v11 + 32);
  }

  *(v0 + 64) = v13;
  *(v0 + 72) = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
LABEL_20:
    __break(1u);
  }

  v14 = v13;
  v15 = sub_1001E5C20(v14);
  *(v0 + 80) = v15;
  if (v10)
  {

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    v17 = v15;
    v18 = swift_task_alloc();
    *(v0 + 88) = v18;
    *v18 = v0;
    v18[1] = sub_1001EB7BC;

    return sub_1001EA6E8(v17, 1);
  }
}

uint64_t sub_1001EBBB4()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001EBDC0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1001EBE68;

  return sub_1001EB454();
}

uint64_t sub_1001EBE68(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    v7 = _convertErrorToNSError(_:)();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    sub_1001F18B4(0, &qword_1003743E0, AKSignInWithAppleAccount_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v9 = isa;
    v8 = 0;
    v7 = isa;
  }

  v11 = *(v4 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_1001EC004(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;

  return _swift_task_switch(sub_1001EC098, 0, 0);
}

uint64_t sub_1001EC098()
{
  v57 = v0;
  if (qword_100371BD8 != -1)
  {
    goto LABEL_43;
  }

  while (1)
  {
    v1 = type metadata accessor for Logger();
    v0[9] = sub_1001AD2E4(v1, qword_100377698);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Fetching keychain SIWA shared credentials", v4, 2u);
    }

    v5 = sub_1001E6248();
    v0[10] = v5;

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v9 = v0[6];
      v8 = v0[7];
      v10 = v5;
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v56[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_10024B050(v9, v8, v56);
      _os_log_impl(&_mh_execute_header, v6, v7, "Searching keychain for groups with SIWA app ID %s", v11, 0xCu);
      sub_1001F2370(v12);

      v5 = v10;
    }

    v13 = v0[8];
    v14 = String._bridgeToObjectiveC()();
    [v5 setServer:v14];

    v15 = *(v13 + OBJC_IVAR___AKSharedAccountsStorageController_keychainStorageController);
    v0[3] = 0;
    v16 = [v15 keychainItemsForDescriptor:v5 withGroup:0 error:v0 + 3];
    v17 = v0[3];
    if (v16)
    {
      v18 = v16;
      sub_1001F18B4(0, &qword_1003723F8, AAFKeychainItem_ptr);
      v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v17;
    }

    else
    {
      v21 = v17;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v19 = _swiftEmptyArrayStorage;
    }

    v0[2] = v19;
    v22 = v19 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v22)
    {
      break;
    }

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();

    v52 = v5;
    if (os_log_type_enabled(v23, v24))
    {
      v26 = v0[6];
      v25 = v0[7];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v56[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_10024B050(v26, v25, v56);
      _os_log_impl(&_mh_execute_header, v23, v24, "There are no items matching clientID. Looking for items that have %s in their groupedAppsBundleIDs", v27, 0xCu);
      sub_1001F2370(v28);
    }

    v29 = sub_1001E6248();
    v0[5] = 0;
    v30 = [v15 keychainItemsForDescriptor:v29 withGroup:0 error:v0 + 5];

    v31 = v0[5];
    if (v30)
    {
      sub_1001F18B4(0, &qword_1003723F8, AAFKeychainItem_ptr);
      v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v31;
    }

    else
    {
      v34 = v31;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v32 = _swiftEmptyArrayStorage;
    }

    if (v32 >> 62)
    {
      v55 = v32 & 0xFFFFFFFFFFFFFF8;
      v35 = _CocoaArrayWrapper.endIndex.getter();
      if (!v35)
      {
LABEL_46:

        v5 = v52;
        break;
      }
    }

    else
    {
      v55 = v32 & 0xFFFFFFFFFFFFFF8;
      v35 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v35)
      {
        goto LABEL_46;
      }
    }

    v36 = 0;
    v53 = v32 + 32;
    v54 = v32 & 0xC000000000000001;
    while (v54)
    {
      v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v38 = __OFADD__(v36++, 1);
      if (v38)
      {
        goto LABEL_41;
      }

LABEL_25:
      v39 = v37;
      v40 = sub_1001E5C20(v39);
      v41 = *&v40[OBJC_IVAR___AKSignInWithAppleSharedCredential_groupedAppsBundleIDs];
      if (!*(v41 + 16))
      {
        goto LABEL_21;
      }

      Hasher.init(_seed:)();

      String.hash(into:)();
      v42 = Hasher._finalize()();
      v43 = -1 << *(v41 + 32);
      v44 = v42 & ~v43;
      if ((*(v41 + 56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44))
      {
        v45 = ~v43;
        while (1)
        {
          v46 = (*(v41 + 48) + 16 * v44);
          v47 = *v46 == v0[6] && v46[1] == v0[7];
          if (v47 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v44 = (v44 + 1) & v45;
          if (((*(v41 + 56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        v48 = v39;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v19 = v0[2];
        if (v36 == v35)
        {
          goto LABEL_46;
        }
      }

      else
      {
LABEL_20:

LABEL_21:

        if (v36 == v35)
        {
          goto LABEL_46;
        }
      }
    }

    if (v36 >= *(v55 + 16))
    {
      goto LABEL_42;
    }

    v37 = *(v53 + 8 * v36);
    v38 = __OFADD__(v36++, 1);
    if (!v38)
    {
      goto LABEL_25;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
  }

  v0[11] = v19;
  v0[12] = v19;
  if (v19 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_53;
    }

LABEL_49:
    v0[4] = _swiftEmptyArrayStorage;
    v49 = swift_task_alloc();
    v0[13] = v49;
    *v49 = v0;
    v49[1] = sub_1001EC8B4;

    return sub_1001E9648();
  }

  else
  {
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_49;
    }

LABEL_53:

    v51 = v0[1];

    return v51(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1001EC8B4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {

    v5 = sub_1001ED540;
  }

  else
  {
    *(v4 + 120) = a1;
    v5 = sub_1001ECA0C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001ECA0C()
{
  v39 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);

  *(v0 + 128) = sub_10022C268(v3);

  if (v2 >> 62)
  {
LABEL_35:
    v4 = *(v0 + 88) & 0xFFFFFFFFFFFFFF8;
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *(v0 + 88) & 0xFFFFFFFFFFFFFF8;
    v5 = *(v4 + 0x10);
  }

  *(v0 + 136) = v4;
  *(v0 + 144) = v5;
  v6 = *(v0 + 112);
  *(v0 + 152) = _swiftEmptyArrayStorage;
  if (!v5)
  {
LABEL_27:
    v34 = *(v0 + 80);

    v35 = *(v0 + 152);
    v36 = *(v0 + 8);

    return v36(v35);
  }

  v7 = 0;
  while (1)
  {
    if ((*(v0 + 88) & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(*(v0 + 136) + 16))
      {
        goto LABEL_34;
      }

      v8 = *(*(v0 + 96) + 8 * v7 + 32);
    }

    v9 = __OFADD__(v7++, 1);
    *(v0 + 160) = v8;
    *(v0 + 168) = v7;
    if (v9)
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v10 = v8;
    v11 = sub_1001E5C20(v10);
    *(v0 + 176) = v11;
    if (v6)
    {

      v37 = *(v0 + 8);

      return v37();
    }

    v12 = v11;
    v13 = *(v0 + 128);
    v14 = &v11[OBJC_IVAR___AKSignInWithAppleSharedCredential_groupID];
    if (*(v13 + 16))
    {
      break;
    }

LABEL_21:
    v24 = v12;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v38[0] = v28;
      *v27 = 136315138;
      v29 = *v14;
      v30 = v14[1];

      v31 = sub_10024B050(v29, v30, v38);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "Detected credential but the current user no longer has access to the group %s. Skipping...", v27, 0xCu);
      sub_1001F2370(v28);
    }

    v6 = 0;
    if (v7 == *(v0 + 144))
    {
      goto LABEL_27;
    }
  }

  v16 = *v14;
  v15 = v14[1];
  Hasher.init(_seed:)();

  String.hash(into:)();
  v17 = Hasher._finalize()();
  v18 = -1 << *(v13 + 32);
  v19 = v17 & ~v18;
  if (((*(v13 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v19) & 1) == 0)
  {
LABEL_20:

    goto LABEL_21;
  }

  v20 = ~v18;
  v21 = *(v0 + 128);
  while (1)
  {
    v22 = (*(v21 + 48) + 16 * v19);
    v23 = *v22 == v16 && v22[1] == v15;
    if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v21 = *(v0 + 128);
    v19 = (v19 + 1) & v20;
    if (((*(v21 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v19) & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v32 = swift_task_alloc();
  *(v0 + 184) = v32;
  *v32 = v0;
  v32[1] = sub_1001ECEB4;

  return sub_1001EA6E8(v12, 0);
}

uint64_t sub_1001ECEB4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 192) = a1;
  *(v3 + 200) = v1;

  if (v1)
  {

    v4 = sub_1001ED5D0;
  }

  else
  {
    v4 = sub_1001ED01C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001ED01C()
{
  v41 = v0;
  v1 = [*(v0 + 192) shareInfo];
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = v1;
  if ([v1 isCurrentUser])
  {

LABEL_4:
    v3 = *(v0 + 192);
    v4 = *(v0 + 176);

    v5 = *(v0 + 200);
    v2 = *(v0 + 168);
    goto LABEL_7;
  }

  v6 = *(v0 + 192);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_39:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v7 = *(v0 + 192);
  v8 = *(v0 + 176);
  v9 = *(v0 + 160);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v5 = *(v0 + 200);
  v2 = *(v0 + 168);
  *(v0 + 152) = *(v0 + 32);
LABEL_7:
  if (v2 == *(v0 + 144))
  {
LABEL_8:
    v10 = *(v0 + 80);

    v11 = *(v0 + 152);
    v12 = *(v0 + 8);

    return v12(v11);
  }

  while (1)
  {
    if ((*(v0 + 88) & 0xC000000000000001) != 0)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v2 >= *(*(v0 + 136) + 16))
      {
        goto LABEL_38;
      }

      v14 = *(*(v0 + 96) + 8 * v2 + 32);
    }

    v15 = __OFADD__(v2++, 1);
    *(v0 + 160) = v14;
    *(v0 + 168) = v2;
    if (v15)
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v16 = v14;
    v17 = sub_1001E5C20(v16);
    *(v0 + 176) = v17;
    if (v5)
    {

      v39 = *(v0 + 8);

      return v39();
    }

    v18 = v17;
    v19 = *(v0 + 128);
    v20 = &v17[OBJC_IVAR___AKSignInWithAppleSharedCredential_groupID];
    if (*(v19 + 16))
    {
      break;
    }

LABEL_28:
    v30 = v18;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v40[0] = v34;
      *v33 = 136315138;
      v35 = *v20;
      v36 = v20[1];

      v37 = sub_10024B050(v35, v36, v40);

      *(v33 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "Detected credential but the current user no longer has access to the group %s. Skipping...", v33, 0xCu);
      sub_1001F2370(v34);
    }

    v5 = 0;
    if (v2 == *(v0 + 144))
    {
      goto LABEL_8;
    }
  }

  v22 = *v20;
  v21 = v20[1];
  Hasher.init(_seed:)();

  String.hash(into:)();
  v23 = Hasher._finalize()();
  v24 = -1 << *(v19 + 32);
  v25 = v23 & ~v24;
  if (((*(v19 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v25) & 1) == 0)
  {
LABEL_27:

    goto LABEL_28;
  }

  v26 = ~v24;
  v27 = *(v0 + 128);
  while (1)
  {
    v28 = (*(v27 + 48) + 16 * v25);
    v29 = *v28 == v22 && v28[1] == v21;
    if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v27 = *(v0 + 128);
    v25 = (v25 + 1) & v26;
    if (((*(v27 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v25) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v38 = swift_task_alloc();
  *(v0 + 184) = v38;
  *v38 = v0;
  v38[1] = sub_1001ECEB4;

  return sub_1001EA6E8(v18, 0);
}

uint64_t sub_1001ED540()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001ED5D0()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 160);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001ED800(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1001ED8D4;

  return sub_1001EC004(v5, v7);
}

uint64_t sub_1001ED8D4(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    v7 = _convertErrorToNSError(_:)();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    sub_1001F18B4(0, &qword_1003743E0, AKSignInWithAppleAccount_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v9 = isa;
    v8 = 0;
    v7 = isa;
  }

  v11 = *(v4 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

id sub_1001EDA94(void *a1)
{
  v4 = sub_1001E6248();
  v5 = [a1 clientID];
  if (!v5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = String._bridgeToObjectiveC()();
  }

  [v4 setServer:v5];

  v6 = [a1 userID];
  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  [v4 setAccount:v6];

  v7 = String._bridgeToObjectiveC()();
  [v4 setSharingGroup:v7];

  v8 = [a1 shareInfo];
  if (!v8)
  {
    type metadata accessor for SignInWithAppleError(0);
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    return v4;
  }

  v9 = v8;
  v10 = *(v1 + OBJC_IVAR___AKSharedAccountsStorageController_keychainStorageController);
  v46 = 0;
  v11 = [v10 keychainItemsForDescriptor:v4 withGroup:0 error:&v46];
  v12 = v46;
  if (!v11)
  {
    v20 = v46;
    _convertNSErrorToError(_:)();

LABEL_34:
    swift_willThrow();

    return v4;
  }

  v13 = v11;
  sub_1001F18B4(0, &qword_1003723F8, AAFKeychainItem_ptr);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v12;

  if (!(v14 >> 62))
  {
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

  if (_CocoaArrayWrapper.endIndex.getter() != 1 || !_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_33:

    type metadata accessor for SignInWithAppleError(0);
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    goto LABEL_34;
  }

LABEL_9:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v16 = *(v14 + 32);
  }

  v17 = v16;

  v18 = v17;
  v19 = sub_1001E5C20(v18);
  if (!v2)
  {
    v44 = v18;
    v45 = v19;
    v22 = *&v19[OBJC_IVAR___AKSignInWithAppleSharedCredential_participantID];
    v21 = *&v19[OBJC_IVAR___AKSignInWithAppleSharedCredential_participantID + 8];

    v23 = [v9 participantID];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    if (v22 == v24 && v21 == v26)
    {

      v27 = v45;
    }

    else
    {
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v27 = v45;
      if ((v28 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    v30 = *&v27[OBJC_IVAR___AKSignInWithAppleSharedCredential_groupID];
    v29 = *&v27[OBJC_IVAR___AKSignInWithAppleSharedCredential_groupID + 8];

    v31 = [v9 groupID];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    if (v30 == v32 && v29 == v34)
    {

      v27 = v45;
    }

    else
    {
      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v27 = v45;
      if ((v35 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    v37 = *&v27[OBJC_IVAR___AKSignInWithAppleSharedCredential_userID];
    v36 = *&v27[OBJC_IVAR___AKSignInWithAppleSharedCredential_userID + 8];

    v38 = [a1 userID];
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    if (v37 == v39 && v36 == v41)
    {

LABEL_29:
      v4 = *&v27[OBJC_IVAR___AKSignInWithAppleSharedCredential_shareToken];

      return v4;
    }

    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v42)
    {

      goto LABEL_29;
    }

LABEL_30:
    type metadata accessor for SignInWithAppleError(0);
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    return v4;
  }

  return v4;
}

uint64_t sub_1001EE308(uint64_t a1, void *aBlock, void *a3)
{
  v3[4] = a3;
  v3[5] = _Block_copy(aBlock);
  v3[2] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3[3] = v5;
  v3[6] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[7] = v6;
  *v6 = v3;
  v6[1] = sub_1001EE3C8;

  return sub_1001E9648();
}

uint64_t sub_1001EE3C8(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;

  if (v3)
  {
    v7 = *(v5 + 40);

    v8 = _convertErrorToNSError(_:)();

    (*(v7 + 16))(v7, 0, v8);

    _Block_release(*(v5 + 40));
    v9 = *(v6 + 8);

    return v9();
  }

  else
  {
    v11 = *(v5 + 16);
    *(v5 + 64) = a1;
    *(v5 + 72) = v11;

    return _swift_task_switch(sub_1001EE560, 0, 0);
  }
}

uint64_t sub_1001EE560()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 32);

  v7 = sub_10022C268(v6);

  LOBYTE(v1) = sub_10022C454(v1, v3, v7);

  (*(v4 + 16))(v4, v1 & 1, 0);
  _Block_release(*(v0 + 40));
  v8 = *(v0 + 8);

  return v8();
}

void sub_1001EE638(void *a1)
{
  v3 = [a1 shareInfo];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1001E6248();
    v6 = [a1 clientID];
    if (!v6)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = String._bridgeToObjectiveC()();
    }

    [v5 setServer:v6];

    v7 = [a1 userID];
    if (!v7)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = String._bridgeToObjectiveC()();
    }

    [v5 setAccount:v7];

    v8 = [v4 groupID];
    if (!v8)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = String._bridgeToObjectiveC()();
    }

    [v5 setSharingGroup:v8];

    v9 = *(v1 + OBJC_IVAR___AKSharedAccountsStorageController_keychainStorageController);
    v12 = 0;
    if ([v9 deleteKeychainItemsFor:v5 error:&v12])
    {
      v10 = v12;
    }

    else
    {
      v11 = v12;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
    type metadata accessor for SignInWithAppleError(0);
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

uint64_t sub_1001EE880(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id))
{
  v7 = a3;
  v8 = a1;
  a5(v7);

  return 1;
}

uint64_t sub_1001EE920()
{
  *(v1 + 32) = v0;

  return _swift_task_switch(sub_1001EE9B0, 0, 0);
}

uint64_t sub_1001EE9B0()
{
  *(v0 + 40) = sub_1001E6248();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1001EEA74;

  return sub_1001E9928();
}

uint64_t sub_1001EEA74(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v7 = sub_1001EF360;
  }

  else
  {
    *(v6 + 64) = a2;
    *(v6 + 72) = a1;
    v7 = sub_1001EEBD0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001EEBD0()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = String._bridgeToObjectiveC()();

  [v1 setLabel:v3];

  v4 = *(v2 + OBJC_IVAR___AKSharedAccountsStorageController_keychainStorageController);
  *(v0 + 16) = 0;
  v5 = [v4 keychainItemsForDescriptor:v1 withGroup:0 error:v0 + 16];
  v6 = *(v0 + 16);
  if (v5)
  {
    v7 = v5;
    sub_1001F18B4(0, &qword_1003723F8, AAFKeychainItem_ptr);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v6;

    v10 = *(v0 + 56);
  }

  else
  {
    v11 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v10 = 0;
    v8 = _swiftEmptyArrayStorage;
  }

  *(v0 + 80) = v8;
  if (v8 >> 62)
  {
    v21 = _CocoaArrayWrapper.endIndex.getter();
    *(v0 + 88) = v21;
    if (v21)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 88) = v12;
    if (v12)
    {
LABEL_6:
      *(v0 + 24) = _swiftEmptyArrayStorage;
      *(v0 + 96) = _swiftEmptyArrayStorage;
      v13 = *(v0 + 80);
      if ((v13 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
        }

        v14 = *(v13 + 32);
      }

      *(v0 + 104) = v14;
      *(v0 + 112) = 1;
      v15 = v14;
      v16 = sub_1001E5C20(v15);
      *(v0 + 120) = v16;
      if (v10)
      {

        v17 = *(v0 + 8);

        return v17();
      }

      else
      {
        v19 = v16;
        v20 = swift_task_alloc();
        *(v0 + 128) = v20;
        *v20 = v0;
        v20[1] = sub_1001EEEFC;

        return sub_1001EA6E8(v19, 0);
      }
    }
  }

  v22 = *(v0 + 40);

  v23 = *(v0 + 8);

  return v23(_swiftEmptyArrayStorage);
}

uint64_t sub_1001EEEFC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {

    v4 = sub_1001EF3F0;
  }

  else
  {
    v4 = sub_1001EF058;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001EF058()
{
  v1 = [*(v0 + 136) shareInfo];
  if (v1)
  {
    v2 = v1;
    if ([v1 isCurrentUser])
    {
      v3 = *(v0 + 136);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_26;
      }

      while (1)
      {
        v4 = *(v0 + 136);
        v5 = *(v0 + 120);
        v6 = *(v0 + 104);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v7 = *(v0 + 144);
        v8 = *(v0 + 112);
        *(v0 + 96) = *(v0 + 24);
        if (v8 == *(v0 + 88))
        {
          goto LABEL_8;
        }

LABEL_12:
        v16 = *(v0 + 80);
        if ((v16 & 0xC000000000000001) != 0)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v17 = *(v16 + 8 * v8 + 32);
        }

        *(v0 + 104) = v17;
        *(v0 + 112) = v8 + 1;
        if (!__OFADD__(v8, 1))
        {
          v18 = v17;
          v19 = sub_1001E5C20(v18);
          *(v0 + 120) = v19;
          if (v7)
          {

            v20 = *(v0 + 8);

            return v20();
          }

          else
          {
            v21 = v19;
            v22 = swift_task_alloc();
            *(v0 + 128) = v22;
            *v22 = v0;
            v22[1] = sub_1001EEEFC;

            return sub_1001EA6E8(v21, 0);
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }
    }
  }

  v9 = *(v0 + 136);
  v10 = *(v0 + 112);
  v2 = *(v0 + 120);
  v11 = *(v0 + 88);

  if (v10 != v11)
  {
    v7 = *(v0 + 144);
    v8 = *(v0 + 112);
    goto LABEL_12;
  }

LABEL_8:
  v12 = *(v0 + 40);

  v13 = *(v0 + 96);
  v14 = *(v0 + 8);

  return v14(v13);
}

uint64_t sub_1001EF360()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001EF3F0()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001EF60C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1001F2410;

  return sub_1001EE920();
}

uint64_t sub_1001EF6B4(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;

  return _swift_task_switch(sub_1001EF748, 0, 0);
}

uint64_t sub_1001EF748()
{
  v1 = sub_1001E6248();
  *(v0 + 48) = v1;
  v2 = String._bridgeToObjectiveC()();
  [v1 setServer:v2];

  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_1001EF844;

  return sub_1001E9928();
}

uint64_t sub_1001EF844(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 64) = v2;

  if (v2)
  {
    v7 = sub_1001EFC10;
  }

  else
  {
    *(v6 + 72) = a2;
    *(v6 + 80) = a1;
    v7 = sub_1001EF9A0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001EF9A0()
{
  v23 = v0;
  v2 = v0[5];
  v1 = v0[6];
  v3 = String._bridgeToObjectiveC()();

  [v1 setLabel:v3];

  v4 = *(v2 + OBJC_IVAR___AKSharedAccountsStorageController_keychainStorageController);
  v0[2] = 0;
  v5 = [v4 deleteKeychainItemsFor:v1 error:v0 + 2];
  v6 = v0[2];
  if (v5)
  {
    v7 = qword_100371BD8;
    v8 = v6;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1001AD2E4(v9, qword_100377698);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();

    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[6];
    if (v12)
    {
      v15 = v0[3];
      v14 = v0[4];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_10024B050(v15, v14, &v22);
      _os_log_impl(&_mh_execute_header, v10, v11, "Deleted keychain item for %s.", v16, 0xCu);
      sub_1001F2370(v17);
    }

    v18 = v0[1];
  }

  else
  {
    v19 = v0[6];
    v20 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v18 = v0[1];
  }

  return v18();
}

uint64_t sub_1001EFC10()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001EFE28(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1001EFEFC;

  return sub_1001EF6B4(v5, v7);
}

uint64_t sub_1001EFEFC()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_1001F0224(uint64_t a1, void *aBlock, void *a3)
{
  v3[4] = a3;
  v3[5] = _Block_copy(aBlock);
  v3[2] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3[3] = v5;
  v3[6] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[7] = v6;
  *v6 = v3;
  v6[1] = sub_1001F02E4;

  return sub_1001E9928();
}

uint64_t sub_1001F02E4(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  *(v5 + 64) = a2;
  *(v5 + 72) = v2;

  if (v2)
  {
    v6 = *(v5 + 40);
    v7 = *(v5 + 32);

    v8 = _convertErrorToNSError(_:)();

    (*(v6 + 16))(v6, v8);

    _Block_release(*(v5 + 40));
    v9 = *(v5 + 8);

    return v9();
  }

  else
  {
    v11 = *(v5 + 16);
    *(v5 + 80) = a1;
    *(v5 + 88) = v11;

    return _swift_task_switch(sub_1001F0478, 0, 0);
  }
}

uint64_t sub_1001F0478()
{
  v1 = *(v0 + 72);
  sub_1001F056C();
  if (v1)
  {

    v2 = *(v0 + 40);
    v3 = *(v0 + 32);

    v4 = _convertErrorToNSError(_:)();

    (*(v2 + 16))(v2, v4);
  }

  else
  {
    v5 = *(v0 + 40);
    v6 = *(v0 + 32);

    (*(v5 + 16))(v5, 0);
  }

  _Block_release(*(v0 + 40));
  v7 = *(v0 + 8);

  return v7();
}

void sub_1001F056C()
{
  v1 = sub_1001E6248();
  v2 = String._bridgeToObjectiveC()();
  [v1 setSharingGroup:v2];

  v3 = String._bridgeToObjectiveC()();
  [v1 setLabel:v3];

  v4 = *(v0 + OBJC_IVAR___AKSharedAccountsStorageController_keychainStorageController);
  v7 = 0;
  if ([v4 deleteKeychainItemsFor:v1 error:&v7])
  {
    v5 = v7;
  }

  else
  {
    v6 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_1001F0774()
{
  v1 = sub_1001E6248();
  v2 = String._bridgeToObjectiveC()();
  [v1 setSharingGroup:v2];

  v3 = *(v0 + OBJC_IVAR___AKSharedAccountsStorageController_keychainStorageController);
  v6 = 0;
  if ([v3 deleteKeychainItemsFor:v1 error:&v6])
  {
    v4 = v6;
  }

  else
  {
    v5 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_1001F090C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[29] = a4;
  v5[30] = v4;
  v5[27] = a2;
  v5[28] = a3;
  v5[26] = a1;
  return _swift_task_switch(sub_1001F0934, 0, 0);
}

uint64_t sub_1001F0934()
{
  v1 = v0[30];
  v2 = OBJC_IVAR___AKSharedAccountsStorageController_participantIDToHandleMap;
  v0[31] = OBJC_IVAR___AKSharedAccountsStorageController_participantIDToHandleMap;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {
    v5 = v0[26];
    v4 = v0[27];

    v6 = sub_10023A350(v5, v4);
    if (v7)
    {
      v8 = (*(v3 + 56) + 16 * v6);
      v9 = *v8;
      v10 = v8[1];

      v11 = v0[1];

      return v11(v9, v10);
    }
  }

  v0[32] = *(v0[30] + OBJC_IVAR___AKSharedAccountsStorageController_keychainGroupManager);
  v0[33] = String._bridgeToObjectiveC()();
  v0[34] = String._bridgeToObjectiveC()();
  v13 = swift_task_alloc();
  v0[35] = v13;
  *v13 = v0;
  v13[1] = sub_1001F0AAC;

  return sub_1001E9928();
}

uint64_t sub_1001F0AAC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;

  if (v2)
  {
    v8 = v6[33];
    v7 = v6[34];

    v9 = sub_1001F0F54;
  }

  else
  {
    v6[36] = a2;
    v6[37] = a1;
    v9 = sub_1001F0BE4;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1001F0BE4()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
  v4 = String._bridgeToObjectiveC()();
  v0[38] = v4;

  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_1001F0D3C;
  v5 = swift_continuation_init();
  v0[17] = sub_1001AD17C(&unk_1003731F0, &unk_10029DFB0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1001E9CF0;
  v0[13] = &unk_100327870;
  v0[14] = v5;
  [v3 fetchParticipantHandleFor:v2 groupID:v1 currentUserParticipantID:v4 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1001F0D3C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 312) = v1;
  if (v1)
  {
    v2 = sub_1001F103C;
  }

  else
  {
    v2 = sub_1001F0E4C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001F0E4C()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);

  v6 = *(v0 + 240);
  v5 = *(v0 + 248);
  v8 = *(v0 + 208);
  v7 = *(v0 + 216);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v6 + v5);
  *(v6 + v5) = 0x8000000000000000;
  sub_1002316AC(v3, v4, v8, v7, isUniquelyReferenced_nonNull_native);

  *(v6 + v5) = v12;
  swift_endAccess();
  v10 = *(v0 + 8);

  return v10(v3, v4);
}

uint64_t sub_1001F0F54()
{
  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[26];
  v3 = v0[27];
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v1);
  *(v2 + v1) = 0x8000000000000000;
  sub_1002316AC(0, 0xE000000000000000, v4, v3, isUniquelyReferenced_nonNull_native);

  *(v2 + v1) = v8;
  swift_endAccess();
  v6 = v0[1];

  return v6(0, 0xE000000000000000);
}

uint64_t sub_1001F103C(uint64_t a1)
{
  v2 = v1[38];
  v4 = v1[33];
  v3 = v1[34];
  swift_willThrow();

  v6 = v1[30];
  v5 = v1[31];
  v8 = v1[26];
  v7 = v1[27];
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v6 + v5);
  *(v6 + v5) = 0x8000000000000000;
  sub_1002316AC(0, 0xE000000000000000, v8, v7, isUniquelyReferenced_nonNull_native);

  *(v6 + v5) = v12;
  swift_endAccess();
  v10 = v1[1];

  return v10(0, 0xE000000000000000);
}

id sub_1001F1178(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SharedAccountsStorageController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1001F1260(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = &a3[OBJC_IVAR___AKSharedAccountsStorageController__cachedCurrentUserParticipantIdentifier];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&a3[OBJC_IVAR___AKSharedAccountsStorageController_participantIDToHandleMap] = &_swiftEmptyDictionarySingleton;
  *&a3[OBJC_IVAR___AKSharedAccountsStorageController__cachedSharedGroupsMembershipInfo] = 0;
  *&a3[OBJC_IVAR___AKSharedAccountsStorageController_keychainStorageController] = a1;
  *&a3[OBJC_IVAR___AKSharedAccountsStorageController_keychainGroupManager] = a2;
  v7 = type metadata accessor for SharedGroupsMembershipController();
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a1;
  v9 = &a3[OBJC_IVAR___AKSharedAccountsStorageController_sharedGroupsMembershipController];
  *(v9 + 3) = v7;
  *(v9 + 4) = &off_100328758;
  *v9 = v8;
  v11.receiver = a3;
  v11.super_class = type metadata accessor for SharedAccountsStorageController();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return objc_msgSendSuper2(&v11, "init");
}

void *sub_1001F1344(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1001F1388()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001F23C8;

  return sub_1001F0224(v2, v3, v4);
}

uint64_t sub_1001F143C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001F23EC;

  return sub_1001EFE28(v2, v3, v4);
}

uint64_t sub_1001F14F0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001F23CC;

  return sub_10000A98C(v2, v3, v4);
}

uint64_t sub_1001F15B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1001F23D0;

  return sub_1000099A4(a1, v4, v5, v6);
}

uint64_t sub_1001F167C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1001F23D4;

  return sub_1001EF60C(v2, v3);
}

uint64_t sub_1001F1728()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001F23D8;

  return sub_10000A98C(v2, v3, v4);
}

uint64_t sub_1001F17E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1001F23DC;

  return sub_1000099A4(a1, v4, v5, v6);
}

uint64_t sub_1001F18B4(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1001F18FC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001F23E0;

  return sub_1001EE308(v2, v3, v4);
}

uint64_t sub_1001F19B0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001F23E4;

  return sub_10000A98C(v2, v3, v4);
}

uint64_t sub_1001F1A70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1001F23E8;

  return sub_1000099A4(a1, v4, v5, v6);
}

uint64_t sub_1001F1B3C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001F2404;

  return sub_1001ED800(v2, v3, v4);
}

uint64_t sub_1001F1BF0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001F23F0;

  return sub_10000A98C(v2, v3, v4);
}

uint64_t sub_1001F1CB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1001F23F4;

  return sub_1000099A4(a1, v4, v5, v6);
}

uint64_t sub_1001F1D7C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1001F23F8;

  return sub_1001EBDC0(v2, v3);
}

uint64_t sub_1001F1E28()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001F23FC;

  return sub_10000A98C(v2, v3, v4);
}

uint64_t sub_1001F1EE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1001F2400;

  return sub_1000099A4(a1, v4, v5, v6);
}

uint64_t sub_1001F1FB4()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001F1FFC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001F20B0;

  return sub_1001EB1B8(v2, v3, v4);
}

uint64_t sub_1001F20B0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1001F21A4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001F2408;

  return sub_10000A98C(v2, v3, v4);
}

uint64_t sub_1001F2264()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001F22A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1001F240C;

  return sub_1000099A4(a1, v4, v5, v6);
}

uint64_t sub_1001F2370(void *a1)
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

uint64_t sub_1001F2414(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return _swift_task_switch(sub_1001F2434, 0, 0);
}

uint64_t sub_1001F2434()
{
  if ([*(v0[20] + OBJC_IVAR___AKAppleIDPasskeyVerificationController_passkeyValidator) canVerifyPasskey])
  {
    v1 = v0[19];
    v2 = *(v0[20] + OBJC_IVAR___AKAppleIDPasskeyVerificationController_verificationProvider);
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1001F26BC;
    v3 = swift_continuation_init();
    v0[17] = sub_1001AD17C(&unk_100373240, qword_10029E0E0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1001F28D0;
    v0[13] = &unk_100327C08;
    v0[14] = v3;
    [v2 performVerificationRequestWith:v1 completionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    if (qword_100371BE0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1001AD2E4(v4, qword_1003776B0);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Passkey verification failed. Device is not passkey eligible.", v7, 2u);
    }

    type metadata accessor for AppleIDPasskeyError(0);
    v0[18] = -12002;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B1020();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1001F26BC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_1001F27E8;
  }

  else
  {
    v2 = sub_1001F27CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001F27E8(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1001F28D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_1001B1078((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1001AD17C(&qword_100373250, qword_10029D0B0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_1001AD17C(&qword_1003728B0, &qword_10029D460);
    **(*(v4 + 64) + 40) = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    return swift_continuation_throwingResume();
  }
}

id sub_1001F29FC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_1001F2AA4(void *a1, uint64_t a2)
{
  v4 = sub_1001AD17C(&qword_100372298, &qword_10029CF30);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  result = [objc_opt_self() sharedBag];
  if (result)
  {
    v8 = result;
    v9 = [result generateVerificationTokenURL];

    if (v9)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v10 = type metadata accessor for URL();
      (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
      sub_1001F2EFC(v6);
      v11 = [objc_allocWithZone(AKAppleIDAuthenticationContext) init];
      v12 = [a1 altDSID];
      if (!v12)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = String._bridgeToObjectiveC()();
      }

      [v11 setAltDSID:v12];

      v13 = [objc_allocWithZone(type metadata accessor for AppleIDPasskeyRequestProvider()) initWithContext:v11 urlBagKey:AKURLBagKeyGenerateVerificationToken];
      [v13 setAuthenticatedRequest:1];
      [v13 setClient:a2];
      v14 = [objc_allocWithZone(AKAuthHandlerImpl) init];
      [v14 setForceSilentAuth:1];
      v15 = [objc_allocWithZone(AKServiceControllerImpl) initWithRequestProvider:v13];
      [v15 setAuthenticationDelegate:v14];

      v16 = [objc_opt_self() sharedInstance];
      v17 = [objc_allocWithZone(AKMIDKeychain) init];
      v18 = [objc_opt_self() sharedManager];
      v19 = [objc_opt_self() sharedManager];

      type metadata accessor for AppleIDPasskeyVerificationProvider();
      result = swift_allocObject();
      *(result + 48) = 3;
      *(result + 2) = v15;
      *(result + 3) = v16;
      *(result + 4) = v17;
      *(result + 5) = v18;
      *(result + 7) = v19;
    }

    else
    {
      v20 = type metadata accessor for URL();
      (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
      sub_1001F2EFC(v6);
      if (qword_100371BE0 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_1001AD2E4(v21, qword_1003776B0);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "Missing passkey verification url.", v24, 2u);
      }

      type metadata accessor for AppleIDPasskeyError(0);
      v25 = -120013;
      sub_1001E4150(_swiftEmptyArrayStorage);
      sub_1001B1020();
      _BridgedStoredNSError.init(_:userInfo:)();
      return swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001F2EFC(uint64_t a1)
{
  v2 = sub_1001AD17C(&qword_100372298, &qword_10029CF30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1001F2FD8(uint64_t a1, char *a2)
{
  v4 = sub_1001AD17C(&qword_100373298, qword_10029E138);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  sub_1001F3964();
  v9 = *&a2[OBJC_IVAR___AKAppleIDPasskeyChallengeProvider_serviceController];
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  *(v11 + ((v6 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = sub_1001F4514;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100234B90;
  aBlock[3] = &unk_100327CD0;
  v12 = _Block_copy(aBlock);
  v13 = a2;

  [v9 executeRequestWithCompletion:v12];
  _Block_release(v12);
}

uint64_t sub_1001F3324(const void *a1, void *a2)
{
  *(v2 + 24) = a2;
  *(v2 + 32) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_1001F339C, 0, 0);
}

uint64_t sub_1001F339C()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  v4 = sub_1001F44C8();
  *v3 = v0;
  v3[1] = sub_1001F3498;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000019, 0x80000001002AB730, sub_1001F44C0, v2, v4);
}

uint64_t sub_1001F3498()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1001F363C;
  }

  else
  {

    v2 = sub_1001F35B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001F35B4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 16);
  (v1)[2](v1, v2, 0);
  _Block_release(v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001F363C()
{
  v1 = *(v0 + 32);

  v2 = _convertErrorToNSError(_:)();

  (v1)[2](v1, 0, v2);

  _Block_release(v1);
  v3 = *(v0 + 8);

  return v3();
}

id sub_1001F371C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1001F37C4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1001F3870;

  return sub_1001F3324(v2, v3);
}

uint64_t sub_1001F3870()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1001F3964()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR___AKAppleIDPasskeyChallengeProvider_accountManager);
  v6 = [v5 primaryAuthKitAccount];
  if (v6)
  {
    v7 = v6;
    static Date.now.getter();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v2 + 8))(v4, v1);
    [v5 setPasskeyRegistrationAttemptDateForAccount:isa forAccount:v7];

    v27 = 0;
    if ([v5 saveAccount:v7 error:&v27])
    {
      v9 = qword_100371BE0;
      v10 = v27;
      if (v9 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_1001AD2E4(v11, qword_1003776B0);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "Saved passkeyRegistrationAttemptDate to account", v14, 2u);
      }
    }

    else
    {
      v19 = v27;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100371BE0 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_1001AD2E4(v20, qword_1003776B0);
      swift_errorRetain();
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138412290;
        swift_errorRetain();
        v25 = _swift_stdlib_bridgeErrorToNSError();
        *(v23 + 4) = v25;
        *v24 = v25;
        _os_log_impl(&_mh_execute_header, v21, v22, "Failed to save passkeyRegistrationAttemptDate with error %@.", v23, 0xCu);
        sub_1001B4EB8(v24);
      }

      else
      {
      }
    }
  }

  else
  {
    if (qword_100371BE0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1001AD2E4(v15, qword_1003776B0);
    v26 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v26, v16, "Missing primary account.", v17, 2u);
    }

    v18 = v26;
  }
}

uint64_t sub_1001F3DD4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  isa = 0;
  if (a3 >> 60 != 15)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v4 = [objc_opt_self() dictionaryFromObject:isa ofType:@"application/json"];
  swift_unknownObjectRelease();
  if (!v4)
  {
    goto LABEL_19;
  }

  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v5 + 16))
  {
    goto LABEL_18;
  }

  v6 = sub_10023A30C(v23);
  if ((v7 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_1000087A8(*(v5 + 56) + 32 * v6, v24);
  sub_1001AD3EC(v23);
  if (swift_dynamicCast())
  {
    AnyHashable.init<A>(_:)();
    if (*(v5 + 16) && (v8 = sub_10023A30C(v23), (v9 & 1) != 0))
    {
      sub_1000087A8(*(v5 + 56) + 32 * v8, v24);
      sub_1001AD3EC(v23);
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_15:

        goto LABEL_16;
      }

      AnyHashable.init<A>(_:)();
      if (*(v5 + 16))
      {
        v10 = sub_10023A30C(v23);
        if (v11)
        {
          sub_1000087A8(*(v5 + 56) + 32 * v10, v24);
          sub_1001AD3EC(v23);

          if (swift_dynamicCast())
          {
            sub_1001F42D8();
            v16 = objc_allocWithZone(AKAppleIDPasskeyCredentialRequestContext);
            v17 = String._bridgeToObjectiveC()();

            v18 = String._bridgeToObjectiveC()();

            v19 = String._bridgeToObjectiveC()();

            v20 = String._bridgeToObjectiveC()();

            v21 = [v16 initWithRelyingPartyIdentifier:v17 challengeString:v18 userIDString:v19 credentialName:v20];

            v23[0] = v21;
            sub_1001AD17C(&qword_100373298, qword_10029E138);
            return CheckedContinuation.resume(returning:)();
          }

          goto LABEL_15;
        }
      }
    }

    else
    {
    }

LABEL_18:

    sub_1001AD3EC(v23);
    goto LABEL_19;
  }

LABEL_16:

LABEL_19:
  if (qword_100371BE0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1001AD2E4(v12, qword_1003776B0);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Failed passkey registration. Missing challenge parameters.", v15, 2u);
  }

  type metadata accessor for AppleIDPasskeyError(0);
  v24[0] = -12008;
  sub_1001E4150(_swiftEmptyArrayStorage);
  sub_1001B1020();
  _BridgedStoredNSError.init(_:userInfo:)();
  v24[0] = v23[0];
  sub_1001AD17C(&qword_100373298, qword_10029E138);
  return CheckedContinuation.resume(throwing:)();
}

id sub_1001F42D8()
{
  v1 = [*(v0 + OBJC_IVAR___AKAppleIDPasskeyChallengeProvider_accountManager) primaryAuthKitAccount];
  if (v1)
  {
    v2 = v1;
    result = [v1 username];
    if (result)
    {
      v4 = result;
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v5;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_100371BE0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1001AD2E4(v6, qword_1003776B0);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Missing primary authKit account.", v9, 2u);
    }

    type metadata accessor for AppleIDPasskeyError(0);
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B1020();
    _BridgedStoredNSError.init(_:userInfo:)();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1001F4480()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_1001F44C8()
{
  result = qword_100373290;
  if (!qword_100373290)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100373290);
  }

  return result;
}

uint64_t sub_1001F4514(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1001AD17C(&qword_100373298, qword_10029E138);

  return sub_1001F3DD4(a1, a2, a3);
}

uint64_t sub_1001F468C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1001F46AC, 0, 0);
}

uint64_t sub_1001F46AC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = [objc_allocWithZone(AKAppleIDAuthenticationContext) init];
  v0[4] = v3;
  v4 = [v1 altDSID];
  [v3 setAltDSID:v4];

  v5 = [objc_allocWithZone(AKDeviceListRequestProvider) initWithContext:v3 urlBagKey:AKURLBagKeyDeviceList];
  v0[5] = v5;
  v6 = sub_1001F4BF0(v1);
  [v5 setDeviceRequestContext:v6];

  [v5 setClient:*(v2 + OBJC_IVAR___AKDeviceListRequester_client)];
  v7 = [objc_allocWithZone(AKServiceControllerImpl) initWithRequestProvider:v5];
  v0[6] = v7;
  v8 = *(v2 + OBJC_IVAR___AKDeviceListRequester_cdpFactory);
  v9 = *(v2 + OBJC_IVAR___AKDeviceListRequester_accountManager);
  v10 = swift_task_alloc();
  v0[7] = v10;
  *v10 = v0;
  v10[1] = sub_1001F486C;
  v11 = v0[2];

  return sub_1002358F0(v11, v8, v7, v9);
}

uint64_t sub_1001F486C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_1001F4A08;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_1001F4994;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001F4994()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);

  v3 = *(v0 + 8);
  v4 = *(v0 + 72);

  return v3(v4);
}

uint64_t sub_1001F4A08()
{
  if (qword_100371BC8 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  sub_1001AD2E4(v2, qword_100377668);
  v3 = v1;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    *(v7 + 4) = v6;
    *v8 = v6;
    *(v7 + 12) = 2112;
    v9 = v6;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    v8[1] = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to fetch device list  for context - %@ with error - %@", v7, 0x16u);
    sub_1001AD17C(&unk_1003726A0, &unk_10029CFA0);
    swift_arrayDestroy();
  }

  v12 = v0[5];
  v11 = v0[6];
  v13 = v0[4];

  swift_willThrow();
  v14 = v0[1];

  return v14();
}

id sub_1001F4BF0(void *a1)
{
  v2 = *(v1 + OBJC_IVAR___AKDeviceListRequester_cdpFactory);
  v3 = [a1 altDSID];
  LODWORD(v2) = [v2 isHSA2EnabledForAltDSID:v3];

  if (v2 && ([a1 includeFamilyDevices] & 1) == 0)
  {
    if (qword_100371BC8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1001AD2E4(v5, qword_100377668);
    v6 = a1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v6;
      *v10 = v6;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, v8, "Setting server provided context from context - %@", v9, 0xCu);
      sub_1001B4EB8(v10);
    }

    v12 = [objc_allocWithZone(AKDeviceListRequestContext) init];
    v13 = [v6 altDSID];
    [v12 setAltDSID:v13];

    [v12 setIncludeUntrustedDevices:1];
    return v12;
  }

  else
  {

    return a1;
  }
}

uint64_t sub_1001F4F98(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1001F505C;

  return sub_1001F468C(v6);
}

uint64_t sub_1001F505C(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 32);
  if (v3)
  {
    v10 = _convertErrorToNSError(_:)();

    (v9)[2](v9, 0, v10);

    _Block_release(v9);
  }

  else
  {
    (v9)[2](*(v5 + 32), a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_1001F5214(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1001F5234, 0, 0);
}

uint64_t sub_1001F5234()
{
  v0[4] = *(v0[3] + OBJC_IVAR___AKDeviceListRequester_storeManager);
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1001F52EC;
  v2 = v0[2];

  return sub_1001BCE30(v2);
}

uint64_t sub_1001F52EC(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6(0);
  }

  else
  {
    *(v4 + 56) = a1 & 1;

    return _swift_task_switch(sub_1001F5440, 0, 0);
  }
}

uint64_t sub_1001F5440()
{
  if (*(v0 + 56) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 48) = v1;
    *v1 = v0;
    v1[1] = sub_1001F552C;
    v2 = *(v0 + 16);

    return sub_1001BCE30(v2);
  }

  else
  {
    v4 = *(v0 + 8);

    return v4(0);
  }
}

uint64_t sub_1001F552C(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t sub_1001F57BC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1001F5880;

  return sub_1001F5214(v6);
}

uint64_t sub_1001F5880(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 32);
  if (v3)
  {
    v11 = _convertErrorToNSError(_:)();

    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    (*(v10 + 16))(*(v5 + 32), a1 & 1, 0);
  }

  _Block_release(*(v6 + 32));
  v12 = *(v9 + 8);

  return v12();
}

id sub_1001F5A60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceListRequester();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001F5B24()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001F5BD8;

  return sub_1001F57BC(v2, v3, v4);
}

uint64_t sub_1001F5BD8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1001F5CCC()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001F5D14()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001F5F58;

  return sub_1001F4F98(v2, v3, v4);
}

uint64_t sub_1001F5DC8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001F5F5C;

  return sub_10000A98C(v2, v3, v4);
}

uint64_t sub_1001F5E88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1001F5F60;

  return sub_1000099A4(a1, v4, v5, v6);
}

uint64_t sub_1001F5FD8(void *a1, uint64_t a2)
{
  v5 = sub_1001AD17C(&qword_100372300, &unk_10029CF90);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v76 - v7;
  v9 = *&v2[OBJC_IVAR___AKAppleIDPasskeyRegistrationProvider_serviceController];
  v10 = [v9 requestProvider];
  type metadata accessor for AppleIDPasskeyRequestProvider();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v79 = v8;
    v80 = v6;
    v81 = v11;
    v82 = a2;
    v12 = [a1 attestationDataString];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (!v16)
    {
      goto LABEL_17;
    }

    v17 = [a1 clientDataString];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v21 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (!v21)
    {
      goto LABEL_17;
    }

    v22 = [a1 originalChallengeString];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = HIBYTE(v25) & 0xF;
    if ((v25 & 0x2000000000000000) == 0)
    {
      v26 = v23 & 0xFFFFFFFFFFFFLL;
    }

    if (v26)
    {
      v77 = v9;
      v78 = v5;
      sub_1001AD17C(&unk_100373FF0, &qword_10029E208);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10029DA60;
      v83 = 1684631666;
      v84 = 0xE400000000000000;
      swift_unknownObjectRetain();
      AnyHashable.init<A>(_:)();
      v28 = [a1 relyingPartyIdentifier];
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      *(inited + 96) = &type metadata for String;
      *(inited + 72) = v29;
      *(inited + 80) = v31;
      v83 = 0x7461747365747461;
      v84 = 0xEB000000006E6F69;
      AnyHashable.init<A>(_:)();
      v32 = [a1 attestationDataString];
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      *(inited + 168) = &type metadata for String;
      *(inited + 144) = v33;
      *(inited + 152) = v35;
      v83 = 0x676E656C6C616863;
      v84 = 0xE900000000000065;
      AnyHashable.init<A>(_:)();
      v36 = [a1 originalChallengeString];
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      *(inited + 240) = &type metadata for String;
      *(inited + 216) = v37;
      *(inited + 224) = v39;
      v83 = 0x646E614872657375;
      v84 = 0xEA0000000000656CLL;
      AnyHashable.init<A>(_:)();
      v40 = [a1 userIDString];
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      *(inited + 312) = &type metadata for String;
      *(inited + 288) = v41;
      *(inited + 296) = v43;
      v83 = 0x6144746E65696C63;
      v84 = 0xEA00000000006174;
      AnyHashable.init<A>(_:)();
      v44 = [a1 clientDataString];
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      *(inited + 384) = &type metadata for String;
      *(inited + 360) = v45;
      *(inited + 368) = v47;
      sub_10023A660(inited);
      swift_setDeallocating();
      sub_1001AD17C(&qword_100373320, qword_10029E210);
      swift_arrayDestroy();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v81 setAuthKitBody:isa];
      swift_unknownObjectRelease();

      v49 = [a1 clientDataString];
      if (!v49)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v49 = String._bridgeToObjectiveC()();
      }

      v81 = v2;
      v50 = [v49 aaf_toBase64DecodedString];

      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;

      if (qword_100371BE0 != -1)
      {
        swift_once();
      }

      v54 = type metadata accessor for Logger();
      sub_1001AD2E4(v54, qword_1003776B0);

      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v83 = v58;
        *v57 = 136315138;
        v59 = sub_10024B050(v51, v53, &v83);

        *(v57 + 4) = v59;
        _os_log_impl(&_mh_execute_header, v55, v56, "Client data string decoded %s.", v57, 0xCu);
        sub_1001AD48C(v58);
      }

      else
      {
      }

      v69 = v78;
      v70 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v72 = v79;
      v71 = v80;
      (*(v80 + 16))(v79, v82, v69);
      v73 = (*(v71 + 80) + 24) & ~*(v71 + 80);
      v74 = swift_allocObject();
      *(v74 + 16) = v70;
      (*(v71 + 32))(v74 + v73, v72, v69);
      v87 = sub_1001F7AE8;
      v88 = v74;
      v83 = _NSConcreteStackBlock;
      v84 = 1107296256;
      v85 = sub_100234B90;
      v86 = &unk_100327EB0;
      v75 = _Block_copy(&v83);

      [v77 executeRequestWithCompletion:v75];
      _Block_release(v75);
    }

    else
    {
LABEL_17:
      if (qword_100371BE0 != -1)
      {
        swift_once();
      }

      v60 = type metadata accessor for Logger();
      sub_1001AD2E4(v60, qword_1003776B0);
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&_mh_execute_header, v61, v62, "Failed to register passkeys. Missing required parameters.", v63, 2u);
      }

      type metadata accessor for AppleIDPasskeyError(0);
      v89 = -120012;
      sub_1001E4150(_swiftEmptyArrayStorage);
      sub_1001B1020();
      _BridgedStoredNSError.init(_:userInfo:)();
      v89 = v83;
      CheckedContinuation.resume(throwing:)();
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    if (qword_100371BE0 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_1001AD2E4(v64, qword_1003776B0);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&_mh_execute_header, v65, v66, "Failed to register passkeys. Request provider type mismatch.", v67, 2u);
    }

    type metadata accessor for AppleIDPasskeyError(0);
    v89 = -12009;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B1020();
    _BridgedStoredNSError.init(_:userInfo:)();
    v89 = v83;
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_1001F6B0C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return _swift_task_switch(sub_1001F6B98, 0, 0);
}

uint64_t sub_1001F6B98()
{
  v1 = swift_task_alloc();
  v0[2].i64[1] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[3].i64[0] = v2;
  *v2 = v0;
  v2[1] = sub_1001F6C8C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(&v0[4], 0, 0, 0xD000000000000021, 0x80000001002AB8A0, sub_1001F7ABC, v1, &type metadata for Bool);
}

uint64_t sub_1001F6C8C()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1001F6E30;
  }

  else
  {

    v2 = sub_1001F6DA8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001F6DA8()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  (*(v1 + 16))(v1, *(v0 + 64), 0);
  _Block_release(*(v0 + 32));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001F6E30()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  v3 = _convertErrorToNSError(_:)();

  (*(v1 + 16))(v1, 0, v3);

  _Block_release(*(v0 + 32));
  v4 = *(v0 + 8);

  return v4();
}

id sub_1001F6F14(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1001F6FBC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001F7070;

  return sub_1001F6B0C(v2, v3, v4);
}

uint64_t sub_1001F7070()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1001F7164(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (a3 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      isa = Data._bridgeToObjectiveC()().super.isa;
    }

    v13 = [objc_opt_self() dictionaryFromObject:isa ofType:@"application/json"];
    swift_unknownObjectRelease();
    if (v13)
    {
      v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      *&v27[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v27[0] + 1) = v15;
      AnyHashable.init<A>(_:)();
      if (!*(v14 + 16) || (v16 = sub_10023A30C(v28), (v17 & 1) == 0))
      {

        sub_1001AD3EC(v28);
        memset(v27, 0, sizeof(v27));
        sub_100011FF4(v27, &qword_100372080, &qword_10029C6E0);
        sub_1001F76A4();
        if (qword_100371BE0 != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        sub_1001AD2E4(v21, qword_1003776B0);
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&_mh_execute_header, v22, v23, "Finished passkey registration.", v24, 2u);
        }

        LOBYTE(v28[0]) = 1;
        sub_1001AD17C(&qword_100372300, &unk_10029CF90);
        CheckedContinuation.resume(returning:)();
        goto LABEL_27;
      }

      sub_1000087A8(*(v14 + 56) + 32 * v16, v27);
      sub_1001AD3EC(v28);

      sub_100011FF4(v27, &qword_100372080, &qword_10029C6E0);
      if (qword_100371BE0 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_1001AD2E4(v18, qword_1003776B0);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v19, v20))
      {
LABEL_26:

        type metadata accessor for AppleIDPasskeyError(0);
        *&v27[0] = -12009;
        sub_1001E4150(_swiftEmptyArrayStorage);
        sub_1001B1020();
        _BridgedStoredNSError.init(_:userInfo:)();
        *&v27[0] = v28[0];
        sub_1001AD17C(&qword_100372300, &unk_10029CF90);
        CheckedContinuation.resume(throwing:)();
LABEL_27:

        return;
      }
    }

    else
    {
      if (qword_100371BE0 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_1001AD2E4(v25, qword_1003776B0);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v19, v20))
      {
        goto LABEL_26;
      }
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Failed to register passkey. Missing response.", v26, 2u);

    goto LABEL_26;
  }

  if (qword_100371BE0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1001AD2E4(v9, qword_1003776B0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Failed to register passkey. AppleIDPasskeyRegistrationProvider instance is nil.", v12, 2u);
  }

  type metadata accessor for AppleIDPasskeyError(0);
  sub_1001E4150(_swiftEmptyArrayStorage);
  sub_1001B1020();
  _BridgedStoredNSError.init(_:userInfo:)();
  *&v27[0] = v28[0];
  sub_1001AD17C(&qword_100372300, &unk_10029CF90);
  CheckedContinuation.resume(throwing:)();
}

void sub_1001F76A4()
{
  v1 = *(v0 + OBJC_IVAR___AKAppleIDPasskeyRegistrationProvider_accountManager);
  v2 = [v1 primaryAuthKitAccount];
  if (v2)
  {
    v3 = v2;
    [v1 setPasskeyPresent:1 forAccount:v2];
    v21 = 0;
    if ([v1 saveAccount:v3 error:&v21])
    {
      v4 = qword_100371BE0;
      v5 = v21;
      if (v4 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_1001AD2E4(v6, qword_1003776B0);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "AppleIDPasskeyRegistrationProvider: passkeyPresent saved successfully.", v9, 2u);
      }
    }

    else
    {
      v13 = v21;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100371BE0 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_1001AD2E4(v14, qword_1003776B0);
      swift_errorRetain();
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138412290;
        swift_errorRetain();
        v19 = _swift_stdlib_bridgeErrorToNSError();
        *(v17 + 4) = v19;
        *v18 = v19;
        _os_log_impl(&_mh_execute_header, v15, v16, "AppleIDPasskeyRegistrationProvider: Failed to save passkeyPresent with error %@.", v17, 0xCu);
        sub_100011FF4(v18, &unk_1003726A0, &unk_10029CFA0);
      }

      else
      {
      }
    }
  }

  else
  {
    if (qword_100371BE0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1001AD2E4(v10, qword_1003776B0);
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v11, "AppleIDPasskeyRegistrationProvider: Missing primary account.", v12, 2u);
    }
  }
}

uint64_t sub_1001F7A7C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

void sub_1001F7AE8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  sub_1001AD17C(&qword_100372300, &unk_10029CF90);
  v9 = *(v4 + 16);

  sub_1001F7164(a1, a2, a3, a4, v9);
}

id sub_1001F7E78(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AppleIDPasskeyRequestProvider();
  return objc_msgSendSuper2(&v3, "dealloc");
}

NSObject *sub_1001F7EF0(void *a1)
{
  v2 = v1;
  v4 = sub_1001F9E20(a1);
  v6 = v5;
  if (qword_100371BC8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1001AD2E4(v7, qword_100377668);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10024B050(v4, v6, aBlock);
    _os_log_impl(&_mh_execute_header, v8, v9, "DeviceListProvider - Begin fetching devices from cache for query %s", v10, 0xCu);
    sub_1001AD48C(v11);

    v2 = v1;
  }

  v12 = swift_allocObject();
  v12[2] = _swiftEmptyArrayStorage;
  v13 = String._bridgeToObjectiveC()();

  v14 = [objc_opt_self() queryWithString:v13];

  v15 = [a1 altDSID];
  if (!v15)
  {
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "DeviceListProvider - Context altDSID is nil, cannot fetch devices", v33, 2u);
    }

    type metadata accessor for DeviceListError(0);
    v30 = v34;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001BE2F4();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    goto LABEL_16;
  }

  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  sub_1001AD17C(&unk_100374270, &qword_10029DE30);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10029BEB0;
  *(v20 + 56) = &type metadata for String;
  *(v20 + 32) = v17;
  *(v20 + 40) = v19;
  isa = Array._bridgeToObjectiveC()().super.isa;

  aBlock[0] = 0;
  [v14 bindParameters:isa error:aBlock];

  v22 = aBlock[0];
  aBlock[4] = sub_1000133C0;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100012114;
  aBlock[3] = &unk_100327F00;
  v23 = _Block_copy(aBlock);
  v24 = v22;

  [v14 setRowHandler:v23];
  _Block_release(v23);
  v25 = *(v2 + 16);
  aBlock[0] = 0;
  if (![v25 performQuery:v14 error:aBlock])
  {
    v35 = aBlock[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      swift_errorRetain();
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 4) = v39;
      *v38 = v39;
      _os_log_impl(&_mh_execute_header, v30, v36, "Error %@ fetching devices from cache", v37, 0xCu);
      sub_1001FA4B4(v38, &unk_1003726A0, &unk_10029CFA0);
    }

    swift_willThrow();
LABEL_16:

    return v30;
  }

  v26 = aBlock[0];
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "DeviceListProvider - Finished fetching devices from cache", v29, 2u);
  }

  swift_beginAccess();
  v30 = v12[2];

  return v30;
}

uint64_t sub_1001F84F4(uint64_t a1, uint64_t a2)
{
  v3[2] = a2;
  v3[3] = v2;
  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_1001F858C;

  return sub_1001BCE30(a1);
}

uint64_t sub_1001F858C()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_1001F86BC, 0, 0);
  }
}

uint64_t sub_1001F86BC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 32);
  *(v0 + 128) = v2;
  v3 = 1 << v2;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(v1 + 64);

  v6 = 0;
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
          goto LABEL_29;
        }

        v7 = *(v0 + 16);
        if (v8 >= (((1 << *(v0 + 128)) + 63) >> 6))
        {
          break;
        }

        v5 = *(v7 + 8 * v8 + 64);
        ++v6;
        if (v5)
        {
          v6 = v8;
          goto LABEL_13;
        }
      }

      v19 = *(v0 + 8);

      return v19();
    }

    v7 = *(v0 + 16);
LABEL_13:
    *(v0 + 40) = v5;
    *(v0 + 48) = v6;
    v9 = __clz(__rbit64(v5)) | (v6 << 6);
    v10 = (*(v7 + 48) + 16 * v9);
    *(v0 + 56) = *v10;
    *(v0 + 64) = v10[1];
    v11 = *(*(v7 + 56) + 8 * v9);
    *(v0 + 72) = v11;

    v12 = v11;
    v13 = [v12 deviceList];
    if (!v13)
    {

      goto LABEL_6;
    }

    v14 = v13;
    sub_100013C00(0, &unk_100374310, AKRemoteDevice_ptr);
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    *(v0 + 80) = v15;

    result = v15 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 88) = result;
    v17 = *(v0 + 80);
    if (result)
    {
      break;
    }

    v18 = *(v0 + 72);

    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
LABEL_6:
    v5 &= v5 - 1;
  }

  if ((v17 & 0xC000000000000001) != 0)
  {
LABEL_29:
    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v20 = *(v17 + 32);
  }

  v21 = v20;
  *(v0 + 96) = v20;
  *(v0 + 104) = 1;
  v22 = swift_task_alloc();
  *(v0 + 112) = v22;
  *v22 = v0;
  v22[1] = sub_1001F8970;
  v23 = *(v0 + 56);
  v24 = *(v0 + 64);

  return sub_1001F8DB4(v21, v23, v24);
}

uint64_t sub_1001F8970()
{
  *(*v1 + 120) = v0;

  if (v0)
  {

    v2 = sub_1001F8D40;
  }

  else
  {
    v2 = sub_1001F8A98;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_1001F8A98()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);

  if (v1 == v2)
  {
    v3 = AKRemoteDevice_ptr;
    while (2)
    {
      v4 = *(v0 + 72);

      v6 = *(v0 + 40);
      v5 = *(v0 + 48);
      while (1)
      {
        v6 &= v6 - 1;
        if (!v6)
        {
          while (1)
          {
            v8 = v5 + 1;
            if (__OFADD__(v5, 1))
            {
              __break(1u);
              goto LABEL_29;
            }

            v7 = *(v0 + 16);
            if (v8 >= (((1 << *(v0 + 128)) + 63) >> 6))
            {
              break;
            }

            v6 = *(v7 + 8 * v8 + 64);
            ++v5;
            if (v6)
            {
              v5 = v8;
              goto LABEL_10;
            }
          }

          v24 = *(v0 + 8);

          v24();
          return;
        }

        v7 = *(v0 + 16);
LABEL_10:
        *(v0 + 40) = v6;
        *(v0 + 48) = v5;
        v9 = __clz(__rbit64(v6)) | (v5 << 6);
        v10 = (*(v7 + 48) + 16 * v9);
        *(v0 + 56) = *v10;
        *(v0 + 64) = v10[1];
        v11 = *(*(v7 + 56) + 8 * v9);
        *(v0 + 72) = v11;

        v12 = v11;
        v13 = [v12 deviceList];
        if (v13)
        {
          break;
        }
      }

      v14 = v13;
      sub_100013C00(0, &unk_100374310, AKRemoteDevice_ptr);
      v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      *(v0 + 80) = v15;

      if (v15 >> 62)
      {
        v17 = _CocoaArrayWrapper.endIndex.getter();
        *(v0 + 88) = v17;
        if (!v17)
        {
          continue;
        }
      }

      else
      {
        v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        *(v0 + 88) = v16;
        if (!v16)
        {
          continue;
        }
      }

      break;
    }

    v3 = 0;
  }

  else
  {
    v3 = *(v0 + 104);
  }

  v18 = *(v0 + 80);
  if ((v18 & 0xC000000000000001) != 0)
  {
LABEL_29:
    v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (v3 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_31:
      __break(1u);
      return;
    }

    v19 = *(v18 + 8 * v3 + 32);
  }

  v20 = v19;
  *(v0 + 96) = v19;
  *(v0 + 104) = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
    goto LABEL_31;
  }

  v21 = swift_task_alloc();
  *(v0 + 112) = v21;
  *v21 = v0;
  v21[1] = sub_1001F8970;
  v22 = *(v0 + 56);
  v23 = *(v0 + 64);

  sub_1001F8DB4(v20, v22, v23);
}

uint64_t sub_1001F8D40()
{
  v1 = v0[12];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1001F8DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for Date();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_1001F8EB0, 0, 0);
}

uint64_t sub_1001F8EB0()
{
  if (qword_100371BC8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = type metadata accessor for Logger();
  *(v0 + 88) = sub_1001AD2E4(v2, qword_100377668);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 24);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "DeviceListProvider - Begin saving device %@", v7, 0xCu);
    sub_1001FA4B4(v8, &unk_1003726A0, &unk_10029CFA0);
  }

  v10 = *(v0 + 24);

  v11 = [v10 lastUpdatedDate];
  if (!v11)
  {
    __break(1u);
  }

  v12 = v11;
  v14 = *(v0 + 72);
  v13 = *(v0 + 80);
  v15 = *(v0 + 56);
  v16 = *(v0 + 64);
  v17 = *(v0 + 24);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSince1970.getter();
  v19 = v18;
  v20 = *(v16 + 8);
  v20(v13, v15);
  v140 = [objc_allocWithZone(NSDecimalNumber) initWithDouble:v19];
  *(v0 + 96) = v140;
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v22 = v21;
  v20(v14, v15);
  v142 = [objc_allocWithZone(NSDecimalNumber) initWithDouble:v22];
  *(v0 + 104) = v142;
  v23 = [v17 additionalInfo];
  if (v23)
  {
    v24 = v23;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    sub_10023A660(_swiftEmptyArrayStorage);
  }

  v25 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 16) = 0;
  v27 = [v25 dataWithJSONObject:isa options:0 error:v0 + 16];

  v28 = *(v0 + 16);
  if (v27)
  {
    v29 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;
  }

  else
  {
    v32 = v28;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v29 = 0;
    v31 = 0xF000000000000000;
  }

  *(v0 + 112) = v29;
  *(v0 + 120) = v31;
  v33 = *(v0 + 24);
  sub_1001AD17C(&unk_100374270, &qword_10029DE30);
  v34 = swift_allocObject();
  *(v0 + 128) = v34;
  *(v34 + 16) = xmmword_10029E250;
  v35 = [v33 machineId];
  if (v35)
  {
    v36 = v35;
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    *(v34 + 56) = &type metadata for String;
    if (v39)
    {
      goto LABEL_17;
    }

    v37 = 0;
  }

  else
  {
    v37 = 0;
    *(v34 + 56) = &type metadata for String;
  }

  v39 = 0xE000000000000000;
LABEL_17:
  v40 = *(v0 + 24);
  *(v34 + 32) = v37;
  *(v34 + 40) = v39;
  v41 = [v40 name];
  if (v41)
  {
    v42 = v41;
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = (v34 + 64);
    *(v34 + 88) = &type metadata for String;
    if (v45)
    {
      *v46 = v43;
      goto LABEL_22;
    }
  }

  else
  {
    v46 = (v34 + 64);
    *(v34 + 88) = &type metadata for String;
  }

  *v46 = 0;
  v45 = 0xE000000000000000;
LABEL_22:
  v47 = *(v0 + 24);
  *(v34 + 72) = v45;
  v48 = [v47 serialNumber];
  if (v48)
  {
    v49 = v48;
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    v53 = (v34 + 96);
    *(v34 + 120) = &type metadata for String;
    if (v52)
    {
      *v53 = v50;
      goto LABEL_27;
    }
  }

  else
  {
    v53 = (v34 + 96);
    *(v34 + 120) = &type metadata for String;
  }

  *v53 = 0;
  v52 = 0xE000000000000000;
LABEL_27:
  v54 = *(v0 + 24);
  *(v34 + 104) = v52;
  v55 = [v54 model];
  if (v55)
  {
    v56 = v55;
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;

    v60 = (v34 + 128);
    *(v34 + 152) = &type metadata for String;
    if (v59)
    {
      *v60 = v57;
      goto LABEL_32;
    }
  }

  else
  {
    v60 = (v34 + 128);
    *(v34 + 152) = &type metadata for String;
  }

  *v60 = 0;
  v59 = 0xE000000000000000;
LABEL_32:
  v61 = *(v0 + 24);
  *(v34 + 136) = v59;
  v62 = [v61 operatingSystemName];
  if (v62)
  {
    v63 = v62;
    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v65;

    v67 = (v34 + 160);
    *(v34 + 184) = &type metadata for String;
    if (v66)
    {
      *v67 = v64;
      goto LABEL_37;
    }
  }

  else
  {
    v67 = (v34 + 160);
    *(v34 + 184) = &type metadata for String;
  }

  *v67 = 0;
  v66 = 0xE000000000000000;
LABEL_37:
  v68 = *(v0 + 24);
  *(v34 + 168) = v66;
  v69 = [v68 operatingSystemVersion];
  if (v69)
  {
    v70 = v69;
    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v72;

    v74 = (v34 + 192);
    *(v34 + 216) = &type metadata for String;
    if (v73)
    {
      *v74 = v71;
      goto LABEL_42;
    }
  }

  else
  {
    v74 = (v34 + 192);
    *(v34 + 216) = &type metadata for String;
  }

  *v74 = 0;
  v73 = 0xE000000000000000;
LABEL_42:
  v75 = *(v0 + 24);
  *(v34 + 200) = v73;
  v76 = [v75 colorCode];
  if (v76)
  {
    v77 = v76;
    v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v80 = v79;

    v81 = (v34 + 224);
    *(v34 + 248) = &type metadata for String;
    if (v80)
    {
      *v81 = v78;
      goto LABEL_47;
    }
  }

  else
  {
    v81 = (v34 + 224);
    *(v34 + 248) = &type metadata for String;
  }

  *v81 = 0;
  v80 = 0xE000000000000000;
LABEL_47:
  v82 = *(v0 + 24);
  *(v34 + 232) = v80;
  v83 = [v82 coverGlassColorCode];
  if (v83)
  {
    v84 = v83;
    v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v87 = v86;

    v88 = (v34 + 256);
    *(v34 + 280) = &type metadata for String;
    if (v87)
    {
      *v88 = v85;
      goto LABEL_52;
    }
  }

  else
  {
    v88 = (v34 + 256);
    *(v34 + 280) = &type metadata for String;
  }

  *v88 = 0;
  v87 = 0xE000000000000000;
LABEL_52:
  v89 = *(v0 + 24);
  *(v34 + 264) = v87;
  v90 = [v89 backingColorCode];
  if (v90)
  {
    v91 = v90;
    v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v94 = v93;

    v95 = (v34 + 288);
    *(v34 + 312) = &type metadata for String;
    if (v94)
    {
      *v95 = v92;
      goto LABEL_57;
    }
  }

  else
  {
    v95 = (v34 + 288);
    *(v34 + 312) = &type metadata for String;
  }

  *v95 = 0;
  v94 = 0xE000000000000000;
LABEL_57:
  v96 = *(v0 + 24);
  *(v34 + 296) = v94;
  v97 = [v96 housingColorCode];
  if (v97)
  {
    v98 = v97;
    v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v101 = v100;

    v102 = (v34 + 320);
    *(v34 + 344) = &type metadata for String;
    if (v101)
    {
      *v102 = v99;
      goto LABEL_62;
    }
  }

  else
  {
    v102 = (v34 + 320);
    *(v34 + 344) = &type metadata for String;
  }

  *v102 = 0;
  v101 = 0xE000000000000000;
LABEL_62:
  v103 = *(v0 + 24);
  *(v34 + 328) = v101;
  v104 = [v103 enclosureColorCode];
  if (v104)
  {
    v105 = v104;
    v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v108 = v107;

    v109 = (v34 + 352);
    *(v34 + 376) = &type metadata for String;
    if (v108)
    {
      *v109 = v106;
      goto LABEL_67;
    }
  }

  else
  {
    v109 = (v34 + 352);
    *(v34 + 376) = &type metadata for String;
  }

  *v109 = 0;
  v108 = 0xE000000000000000;
LABEL_67:
  v110 = *(v0 + 24);
  *(v34 + 360) = v108;
  [v110 inCircle];
  v111 = Bool._bridgeToObjectiveC()().super.super.isa;
  v112 = sub_100013C00(0, &qword_100372D58, NSNumber_ptr);
  *(v34 + 408) = v112;
  *(v34 + 384) = v111;
  v113 = [v110 buildNumber];
  if (v113)
  {
    v114 = v113;
    v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v117 = v116;

    v118 = (v34 + 416);
    *(v34 + 440) = &type metadata for String;
    if (v117)
    {
      *v118 = v115;
      goto LABEL_72;
    }
  }

  else
  {
    v118 = (v34 + 416);
    *(v34 + 440) = &type metadata for String;
  }

  *v118 = 0;
  v117 = 0xE000000000000000;
LABEL_72:
  v119 = *(v0 + 32);
  v120 = *(v0 + 40);
  v121 = *(v0 + 24);
  *(v34 + 424) = v117;
  [v121 trusted];
  v122.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
  *(v34 + 472) = v112;
  *(v34 + 448) = v122;
  v123 = sub_100013C00(0, &qword_100372D60, NSDecimalNumber_ptr);
  v124 = v123;
  *(v34 + 480) = v141;
  *(v34 + 536) = &type metadata for Data;
  if (v31 >> 60 == 15)
  {
    v125 = 0;
  }

  else
  {
    v125 = v29;
  }

  v126 = 0xC000000000000000;
  if (v31 >> 60 != 15)
  {
    v126 = v31;
  }

  *(v34 + 504) = v123;
  *(v34 + 512) = v125;
  *(v34 + 520) = v126;
  *(v34 + 568) = &type metadata for String;
  *(v34 + 544) = v119;
  *(v34 + 552) = v120;
  v127 = v141;

  v128 = [v121 services];
  if (v128)
  {
    v129 = v128;
    v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v132 = v131;

    v133 = (v34 + 576);
    *(v34 + 600) = &type metadata for String;
    if (v132)
    {
      *v133 = v130;
      goto LABEL_82;
    }
  }

  else
  {
    v133 = (v34 + 576);
    *(v34 + 600) = &type metadata for String;
  }

  *v133 = 0;
  v132 = 0xE000000000000000;
LABEL_82:
  *(v34 + 584) = v132;
  *(v34 + 632) = v124;
  *(v34 + 608) = v142;
  v134 = v142;
  _StringGuts.grow(_:)(286);
  v135._object = 0x80000001002AAF70;
  v135._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v135);
  v136._countAndFlagsBits = 0x6C5F656369766564;
  v136._object = 0xEB00000000747369;
  String.append(_:)(v136);
  v137._countAndFlagsBits = 0xD000000000000105;
  v137._object = 0x80000001002AB920;
  String.append(_:)(v137);
  *(v0 + 136) = 0xE000000000000000;
  v138 = swift_task_alloc();
  *(v0 + 144) = v138;
  *v138 = v0;
  v138[1] = sub_1001F98B8;

  return sub_1001BD4F8(0, 0xE000000000000000, v34);
}

uint64_t sub_1001F98B8(char a1)
{
  v3 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v4 = sub_1001F9BF8;
  }

  else
  {
    v4 = sub_1001F9A48;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001F9A48()
{
  v1 = *(v0 + 24);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 160);
    v5 = *(v0 + 24);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412546;
    *(v6 + 4) = v5;
    *v7 = v5;
    *(v6 + 12) = 1024;
    *(v6 + 14) = v4;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v2, v3, "DeviceListProvider - Finished saving device %@ with success: %{BOOL}d", v6, 0x12u);
    sub_1001FA4B4(v7, &unk_1003726A0, &unk_10029CFA0);
  }

  v10 = *(v0 + 112);
  v9 = *(v0 + 120);
  v11 = *(v0 + 104);

  sub_1001AE1E4(v10, v9);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1001F9BF8()
{
  v2 = v0[12];
  v1 = v0[13];
  sub_1001AE1E4(v0[14], v0[15]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1001F9CB8()
{

  return swift_deallocClassInstance();
}

double sub_1001F9D14@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_10023A350(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100231BF0();
      v10 = v12;
    }

    sub_1000122C0((*(v10 + 56) + 32 * v8), a3);
    sub_1001D1C1C(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_1001F9DB8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1001F9DCC(a1, a2);
  }

  return result;
}

double sub_1001F9DCC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

unint64_t sub_1001F9E20(void *a1)
{
  v2 = [a1 includeUntrustedDevices];
  if (v2)
  {
    v3 = 0xD00000000000002BLL;
  }

  else
  {
    v3 = 0xD00000000000003BLL;
  }

  if (v2)
  {
    v4 = "?, ?, ?, ?, ?, ?, ?);";
  }

  else
  {
    v4 = "vice_list WHERE altDSID = ?";
  }

  v5 = v4 | 0x8000000000000000;
  v6 = [a1 serialNumbers];
  if (v6)
  {
    v7 = v6;
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = *(v8 + 16);
    if (v9)
    {
      v66 = v3;
      v70 = _swiftEmptyArrayStorage;
      sub_100233A2C(0, v9, 0);
      v10 = _swiftEmptyArrayStorage;
      v11 = (v8 + 40);
      do
      {
        v12 = *(v11 - 1);
        v13 = *v11;
        v69[0] = 39;
        v69[1] = 0xE100000000000000;

        v14._countAndFlagsBits = v12;
        v14._object = v13;
        String.append(_:)(v14);
        v15._countAndFlagsBits = 39;
        v15._object = 0xE100000000000000;
        String.append(_:)(v15);

        v70 = v10;
        v17 = v10[2];
        v16 = v10[3];
        if (v17 >= v16 >> 1)
        {
          sub_100233A2C((v16 > 1), v17 + 1, 1);
          v10 = v70;
        }

        v10[2] = v17 + 1;
        v18 = &v10[2 * v17];
        v18[4] = 39;
        v18[5] = 0xE100000000000000;
        v11 += 2;
        --v9;
      }

      while (v9);

      v3 = v66;
    }

    else
    {

      v10 = _swiftEmptyArrayStorage;
    }

    _StringGuts.grow(_:)(26);

    v70 = v10;
    sub_1001AD17C(&qword_100373418, qword_10029E2A8);
    sub_1001FA514();
    v19 = BidirectionalCollection<>.joined(separator:)();
    v21 = v20;

    v22._countAndFlagsBits = v19;
    v22._object = v21;
    String.append(_:)(v22);

    v23._countAndFlagsBits = 41;
    v23._object = 0xE100000000000000;
    String.append(_:)(v23);
    v69[0] = v3;
    v69[1] = v5;

    v24._countAndFlagsBits = 0xD000000000000017;
    v24._object = 0x80000001002ABAC0;
    String.append(_:)(v24);
  }

  v25 = [a1 operatingSystems];
  if (v25)
  {
    v26 = v25;
    v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = *(v27 + 16);
    if (v28)
    {
      v67 = v3;
      v70 = _swiftEmptyArrayStorage;
      sub_100233A2C(0, v28, 0);
      v29 = _swiftEmptyArrayStorage;
      v30 = (v27 + 40);
      do
      {
        v31 = *(v30 - 1);
        v32 = *v30;
        v69[0] = 39;
        v69[1] = 0xE100000000000000;

        v33._countAndFlagsBits = v31;
        v33._object = v32;
        String.append(_:)(v33);
        v34._countAndFlagsBits = 39;
        v34._object = 0xE100000000000000;
        String.append(_:)(v34);

        v70 = v29;
        v36 = v29[2];
        v35 = v29[3];
        if (v36 >= v35 >> 1)
        {
          sub_100233A2C((v35 > 1), v36 + 1, 1);
          v29 = v70;
        }

        v29[2] = v36 + 1;
        v37 = &v29[2 * v36];
        v37[4] = 39;
        v37[5] = 0xE100000000000000;
        v30 += 2;
        --v28;
      }

      while (v28);

      v3 = v67;
    }

    else
    {

      v29 = _swiftEmptyArrayStorage;
    }

    strcpy(v69, " AND os IN (");
    BYTE5(v69[1]) = 0;
    HIWORD(v69[1]) = -5120;
    v70 = v29;
    sub_1001AD17C(&qword_100373418, qword_10029E2A8);
    sub_1001FA514();
    v38 = BidirectionalCollection<>.joined(separator:)();
    v40 = v39;

    v41._countAndFlagsBits = v38;
    v41._object = v40;
    String.append(_:)(v41);

    v42._countAndFlagsBits = 41;
    v42._object = 0xE100000000000000;
    String.append(_:)(v42);
    v43 = v69[0];
    v44 = v69[1];
    v69[0] = v3;
    v69[1] = v5;

    v45._countAndFlagsBits = v43;
    v45._object = v44;
    String.append(_:)(v45);
  }

  v46 = [a1 services];
  if (v46)
  {
    v47 = v46;
    v48 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v49 = *(v48 + 16);
    if (v49)
    {
      v68 = v3;
      v70 = _swiftEmptyArrayStorage;
      sub_100233A2C(0, v49, 0);
      v50 = _swiftEmptyArrayStorage;
      v51 = (v48 + 40);
      do
      {
        v52 = *(v51 - 1);
        v53 = *v51;

        _StringGuts.grow(_:)(20);

        v69[0] = 0xD000000000000010;
        v69[1] = 0x80000001002ABAA0;
        v54._countAndFlagsBits = v52;
        v54._object = v53;
        String.append(_:)(v54);
        v55._countAndFlagsBits = 10021;
        v55._object = 0xE200000000000000;
        String.append(_:)(v55);

        v70 = v50;
        v57 = v50[2];
        v56 = v50[3];
        if (v57 >= v56 >> 1)
        {
          sub_100233A2C((v56 > 1), v57 + 1, 1);
          v50 = v70;
        }

        v50[2] = v57 + 1;
        v58 = &v50[2 * v57];
        v58[4] = 0xD000000000000010;
        v58[5] = 0x80000001002ABAA0;
        v51 += 2;
        --v49;
      }

      while (v49);

      v3 = v68;
    }

    else
    {

      v50 = _swiftEmptyArrayStorage;
    }

    v70 = v50;
    sub_1001AD17C(&qword_100373418, qword_10029E2A8);
    sub_1001FA514();
    v59 = BidirectionalCollection<>.joined(separator:)();
    v61 = v60;

    v62._countAndFlagsBits = v59;
    v62._object = v61;
    String.append(_:)(v62);

    v63._countAndFlagsBits = 41;
    v63._object = 0xE100000000000000;
    String.append(_:)(v63);
    v69[0] = v3;
    v69[1] = v5;

    v64._countAndFlagsBits = 0x2820444E4120;
    v64._object = 0xE600000000000000;
    String.append(_:)(v64);
  }

  return v3;
}

uint64_t sub_1001FA4B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1001AD17C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1001FA514()
{
  result = qword_100373420;
  if (!qword_100373420)
  {
    sub_1001C5270(&qword_100373418, qword_10029E2A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100373420);
  }

  return result;
}

NSObject *sub_1001FA578(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1001B8248(a1, a2, a3, a4);
  v9 = *(v4 + 16);
  v43 = 0;
  v10 = [v9 keychainItemForDescriptor:v8 error:&v43];
  v11 = v10;
  if (v43)
  {
    v12 = v43;

LABEL_9:
    swift_willThrow();
    goto LABEL_10;
  }

  if (!v10)
  {
LABEL_8:
    v12 = [objc_opt_self() ak_errorWithCode:-7001];
    goto LABEL_9;
  }

  v13 = [v10 value];
  if (!v13)
  {

    goto LABEL_8;
  }

  v14 = v13;
  v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  sub_100200AC4(0, &unk_1003734C0, NSKeyedUnarchiver_ptr);
  type metadata accessor for BiscuitToken();
  v18 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  if (!v5)
  {
    v19 = v18;
    sub_100013B34(v15, v17);

    return v19;
  }

  sub_100013B34(v15, v17);

  v8 = v11;
  v12 = v5;
LABEL_10:

  v43 = v12;
  swift_errorRetain();
  v19 = sub_1001AD17C(&qword_100373250, qword_10029D0B0);
  sub_100200AC4(0, &qword_100373000, NSError_ptr);
  if (!swift_dynamicCast())
  {
LABEL_25:

    return v19;
  }

  if ([v42 code] != -25300)
  {
LABEL_20:
    if (qword_100371BB0 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_1001AD2E4(v34, static Logger.akd);

    v35 = v42;
    v19 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v44 = v39;
      *v37 = 136315394;
      *(v37 + 4) = sub_10024B050(a1, a2, &v44);
      *(v37 + 12) = 2112;
      *(v37 + 14) = v35;
      *v38 = v35;
      v40 = v35;
      _os_log_impl(&_mh_execute_header, v19, v36, "Failed to fetch token with identifier %s: %@", v37, 0x16u);
      sub_100012054(v38, &unk_1003726A0, &unk_10029CFA0);

      sub_1001FF914(v39);
    }

    swift_willThrow();
    goto LABEL_25;
  }

  v20 = [v42 domain];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  if (v21 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v23 != v24)
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v25)
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

LABEL_16:
  if (qword_100371BB0 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_1001AD2E4(v26, static Logger.akd);

  v27 = v42;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v44 = v32;
    *v30 = 136315394;
    *(v30 + 4) = sub_10024B050(a1, a2, &v44);
    *(v30 + 12) = 2112;
    *(v30 + 14) = v27;
    *v31 = v27;
    v33 = v27;
    _os_log_impl(&_mh_execute_header, v28, v29, "No token found in keychain with identifier %s: %@", v30, 0x16u);
    sub_100012054(v31, &unk_1003726A0, &unk_10029CFA0);

    sub_1001FF914(v32);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1001FAB4C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v31 = 0;
  v10 = [objc_opt_self() archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v31];
  v11 = v31;
  if (v10)
  {
    v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_1001B8248(a1, a2, a4, a5);
    v16 = objc_allocWithZone(AAFKeychainItem);
    v17 = v15;
    sub_1001F9DCC(v12, v14);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v19 = [v16 initWithDescriptor:v17 value:isa];

    sub_100013B34(v12, v14);
    v20 = *(v5 + 16);
    v31 = 0;
    [v20 addOrUpdateKeychainItem:v19 error:&v31];
    v21 = v31;
    if (!v31)
    {

      return sub_100013B34(v12, v14);
    }

    swift_willThrow();
    v21;

    sub_100013B34(v12, v14);
  }

  else
  {
    v22 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  if (qword_100371BB0 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_1001AD2E4(v23, static Logger.akd);

  swift_errorRetain();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v31 = v28;
    *v26 = 136315394;
    *(v26 + 4) = sub_10024B050(a1, a2, &v31);
    *(v26 + 12) = 2112;
    swift_errorRetain();
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 14) = v29;
    *v27 = v29;
    _os_log_impl(&_mh_execute_header, v24, v25, "Failed to update token with identifier %s: %@", v26, 0x16u);
    sub_100012054(v27, &unk_1003726A0, &unk_10029CFA0);

    sub_1001FF914(v28);
  }

  return swift_willThrow();
}