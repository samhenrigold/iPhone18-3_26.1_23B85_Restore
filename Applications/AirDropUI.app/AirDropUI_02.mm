uint64_t sub_1000362B4()
{
  v39 = v0;
  v1 = v0[16];
  v2 = v0[17];

  v2, v3, v4, v5, v6, v7, v8, v9;
  v1, v10, v11, v12, v13, v14, v15, v16;
  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v17 = v0[8];
  v18 = type metadata accessor for Logger();
  sub_100007D20(v18, qword_100173A40);

  swift_errorRetain();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  v17, v21, v22, v23, v24, v25, v26, v27;

  v28 = os_log_type_enabled(v19, v20);
  v29 = v0[15];
  if (v28)
  {
    v31 = v0[7];
    v30 = v0[8];
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v38 = v34;
    *v32 = 136315394;
    *(v32 + 4) = sub_10003E81C(v31, v30, &v38);
    *(v32 + 12) = 2112;
    swift_errorRetain();
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 14) = v35;
    *v33 = v35;
    _os_log_impl(&_mh_execute_header, v19, v20, "Failed to get fallback preview image for transfer %s: %@", v32, 0x16u);
    sub_1000159AC(v33, &qword_100172EB0, &qword_100119410);

    sub_100007920(v34);
  }

  else
  {
  }

  v36 = v0[1];

  return v36();
}

double sub_1000364F8(_TtC9AirDropUI33AirDropTransferSessionsController *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (*v35->connection && (sub_10003EEC0(a2, a3), (v8 & 1) != 0))
  {

    v35, v15, v16, v17, v18, v19, v20, v21;
    swift_getKeyPath();
    swift_getKeyPath();
    v35 = a1;
    v22 = a1;
    static Published.subscript.setter();
  }

  else
  {
    v35, v8, v9, v10, v11, v12, v13, v14;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v35)
  {
    v24 = *&v35->listener[OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier];

    v25._countAndFlagsBits = a2;
    v25._object = a3;
    v26 = String.hasPrefix(_:)(v25);
    v24, v27, v28, v29, v30, v31, v32, v33;
    if (v26)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v34 = a1;
      static Published.subscript.setter();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1000366D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v6 = type metadata accessor for SFAirDropSend.ItemMetadata();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[12] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[13] = v8;
  v5[14] = v7;

  return _swift_task_switch(sub_1000367D0, v8, v7);
}

uint64_t sub_1000367D0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v2 = SFAirDropSend.Request.urls.getter();
    v0[16] = v2;
    v3 = SFAirDropSend.Request.urlsMetadata.getter();
    v11 = &_swiftEmptyArrayStorage;
    if (v3)
    {
      v12 = *v3->connection;
      if (v12)
      {
        v70 = v2;
        v13 = v0[10];
        v14 = v3;
        sub_10000E494(0, v12, 0);
        v11 = &_swiftEmptyArrayStorage;
        v15 = *(v13 + 16);
        v13 += 16;
        v72 = v14;
        v16 = v14 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
        v74 = *(v13 + 56);
        v76 = v15;
        v17 = (v13 - 8);
        do
        {
          v18 = v0[11];
          v19 = v0[9];
          v76(v18, v16, v19);
          v20 = SFAirDropSend.ItemMetadata.fileType.getter();
          v22 = v21;
          (*v17)(v18, v19);
          v31 = *v11->connection;
          v30 = *v11->airdropClient;
          v32 = v11;
          if (v31 >= v30 >> 1)
          {
            sub_10000E494((v30 > 1), v31 + 1, 1);
            v32 = v11;
          }

          *v32->connection = v31 + 1;
          v33 = v32 + 16 * v31;
          *(v33 + 4) = v20;
          *(v33 + 5) = v22;
          v16 += v74;
          --v12;
          v11 = v32;
        }

        while (v12);
        v72, v23, v24, v25, v26, v27, v28, v29;
        v2 = v70;
      }

      else
      {
        v3, v4, v5, v6, v7, v8, v9, v10;
      }
    }

    v0[17] = v11;
    v36 = SFAirDropSend.Request.urlsMetadata.getter();
    if (v36)
    {
      v44 = *v36->connection;
      if (v44)
      {
        v69 = v11;
        v71 = v2;
        v45 = v0[10];
        v46 = v36;
        sub_10000E494(0, v44, 0);
        v47 = *(v45 + 16);
        v45 += 16;
        v68 = v46;
        v48 = v46 + ((*(v45 + 64) + 32) & ~*(v45 + 64));
        v73 = *(v45 + 56);
        v75 = v47;
        v49 = (v45 - 8);
        do
        {
          v50 = v0[11];
          v51 = v0[9];
          v75(v50, v48, v51);
          v52 = SFAirDropSend.ItemMetadata.fileSubType.getter();
          v54 = v53;
          (*v49)(v50, v51);
          v63 = *_swiftEmptyArrayStorage.connection;
          v62 = *_swiftEmptyArrayStorage.airdropClient;
          if (v63 >= v62 >> 1)
          {
            sub_10000E494((v62 > 1), v63 + 1, 1);
          }

          *_swiftEmptyArrayStorage.connection = v63 + 1;
          v64 = &_swiftEmptyArrayStorage + 16 * v63;
          *(v64 + 4) = v52;
          *(v64 + 5) = v54;
          v48 += v73;
          --v44;
        }

        while (v44);
        v68, v55, v56, v57, v58, v59, v60, v61;
        v11 = v69;
        v2 = v71;
      }

      else
      {
        v36, v37, v38, v39, v40, v41, v42, v43;
      }
    }

    v0[18] = &_swiftEmptyArrayStorage;
    type metadata accessor for SFAirDropUtilities();
    v65 = swift_task_alloc();
    v0[19] = v65;
    *v65 = v0;
    v65[1] = sub_100036B74;
    v66.n128_u64[0] = 0x405A800000000000;
    v67.n128_u64[0] = 0x405A800000000000;

    return static SFAirDropUtilities.generatePreviewIcon(for:fileTypes:fileSubTypes:size:)(v2, v11, &_swiftEmptyArrayStorage, v66, v67);
  }

  else
  {

    v34 = v0[1];

    return v34();
  }
}

uint64_t sub_100036B74(uint64_t a1)
{
  v4 = *v2;
  v4[20] = v1;

  v12 = v4[18];
  v13 = v4[17];
  v14 = v4[16];
  if (v1)
  {
    v12, v5, v6, v7, v8, v9, v10, v11;
    v13, v15, v16, v17, v18, v19, v20, v21;
    v14, v22, v23, v24, v25, v26, v27, v28;
    v29 = v4[13];
    v30 = v4[14];
    v31 = sub_100036DCC;
  }

  else
  {
    v13, v5, v6, v7, v8, v9, v10, v11;
    v12, v32, v33, v34, v35, v36, v37, v38;
    v4[21] = a1;
    v14, v39, v40, v41, v42, v43, v44, v45;
    v29 = v4[13];
    v30 = v4[14];
    v31 = sub_100036D14;
  }

  return _swift_task_switch(v31, v29, v30);
}

uint64_t sub_100036D14()
{
  v1 = v0[21];
  v2 = v0[15];
  v4 = v0[7];
  v3 = v0[8];

  v5 = v1;
  sub_1000364F8(v1, v4, v3, &unk_10011A780, &unk_10011A7A8);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100036DCC()
{
  v23 = v0;

  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = type metadata accessor for Logger();
  sub_100007D20(v2, qword_100173A40);

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  v1, v5, v6, v7, v8, v9, v10, v11;

  v12 = os_log_type_enabled(v3, v4);
  v13 = v0[15];
  if (v12)
  {
    v15 = v0[7];
    v14 = v0[8];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v22 = v18;
    *v16 = 136315394;
    *(v16 + 4) = sub_10003E81C(v15, v14, &v22);
    *(v16 + 12) = 2112;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v19;
    *v17 = v19;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to get fallback preview image for transfer %s: %@", v16, 0x16u);
    sub_1000159AC(v17, &qword_100172EB0, &qword_100119410);

    sub_100007920(v18);
  }

  else
  {
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_100036FFC(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_1000077C8(&unk_100174FA0, &qword_10011A700);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v30 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v31 = &v27 - v15;
  v16 = *a1;
  v17 = *a2;
  v18 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
  swift_beginAccess();
  sub_100007BA4(v16 + v18, v10, &unk_100174FA0, &qword_10011A700);
  v19 = v12[6];
  if (v19(v10, 1, v11) == 1)
  {
    v7 = v10;
  }

  else
  {
    v29 = v2;
    v28 = v12[4];
    v28(v31, v10, v11);
    v20 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
    swift_beginAccess();
    sub_100007BA4(v17 + v20, v7, &unk_100174FA0, &qword_10011A700);
    if (v19(v7, 1, v11) != 1)
    {
      v22 = v30;
      v28(v30, v7, v11);
      v23 = v31;
      v24 = static Date.< infix(_:_:)();
      v25 = v12[1];
      v25(v22, v11);
      v25(v23, v11);
      v21 = v24;
      return v21 & 1;
    }

    (v12[1])(v31, v11);
  }

  sub_1000159AC(v7, &unk_100174FA0, &qword_10011A700);
  v21 = static Date.< infix(_:_:)();
  return v21 & 1;
}

uint64_t sub_100037314(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = sub_1000077C8(&unk_100173C98, &unk_10011A300);
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v2[5] = swift_task_alloc();
  v4 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v2[6] = v4;
  v2[7] = *(v4 - 8);
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_10003743C, 0, 0);
}

uint64_t sub_10003743C()
{
  (*(v0[7] + 104))(v0[8], enum case for SFAirDropReceive.ItemDestination.noItem(_:), v0[6]);
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_1000374FC;
  v2 = v0[8];
  v3 = v0[3];

  return SFAirDrop.AcceptAction.Single.accept(with:)(v2, v3);
}

uint64_t sub_1000374FC()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *v1;
  *(v5 + 80) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return _swift_task_switch(sub_1000376B0, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1000376B0()
{
  v30 = v0;
  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_100007D20(v5, qword_100173A40);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[4];
  v9 = v0[5];
  v11 = v0[3];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v12 = 136315394;
    v13 = SFAirDrop.AcceptAction.Single.id.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_10003E81C(v13, v15, &v29);
    v15, v17, v18, v19, v20, v21, v22, v23;
    *(v12 + 4) = v16;
    *(v12 + 12) = 2112;
    swift_errorRetain();
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v24;
    *v27 = v24;
    _os_log_impl(&_mh_execute_header, v6, v7, "AirDrop ReadyForOpen action %s failed with error %@", v12, 0x16u);
    sub_1000159AC(v27, &qword_100172EB0, &qword_100119410);

    sub_100007920(v28);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v25 = v0[1];

  return v25();
}

double sub_100037940(uint64_t a1, _TtC9AirDropUI33AirDropTransferSessionsController *a2)
{
  v3 = v2;
  v6 = sub_1000077C8(&unk_100173C50, &qword_10011D9D0);
  __chkstk_darwin(v6 - 8);
  v95 = &v94 - v7;
  v96 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v94 = *(v96 - 8);
  __chkstk_darwin(v96);
  v9 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  __chkstk_darwin(v10 - 8);
  v97 = &v94 - v11;
  v12 = sub_1000077C8(&qword_100172FD0, &qword_10011A210);
  __chkstk_darwin(v12 - 8);
  v14 = &v94 - v13;
  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100007D20(v15, qword_100173A40);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  a2, v18, v19, v20, v21, v22, v23, v24;
  if (os_log_type_enabled(v16, v17))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v99[0] = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_10003E81C(a1, a2, v99);
    _os_log_impl(&_mh_execute_header, v16, v17, "Scene session discarded for activity %s", v25, 0xCu);
    sub_100007920(v26);
  }

  sub_100026D10(a1, a2);
  if (v27)
  {
    v29 = v27;

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v99[0] = v33;
      *v32 = 136315138;
      v34 = *(v29 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
      v35 = *(v29 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);

      v36 = sub_10003E81C(v34, v35, v99);
      v35, v37, v38, v39, v40, v41, v42, v43;
      *(v32 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v30, v31, "Ending transfer %s because scene session was discarded", v32, 0xCu);
      sub_100007920(v33);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v44 = type metadata accessor for SFAirDropSend.Transfer.State();
    v45 = (*(*(v44 - 8) + 48))(v14, 1, v44);
    sub_1000159AC(v14, &qword_100172FD0, &qword_10011A210);
    if (v45 == 1)
    {
      v46 = *(v29 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
      v47 = *(v29 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      v48 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_cancelAction;
      swift_beginAccess();
      v49 = v95;
      sub_100007BA4(v29 + v48, v95, &unk_100173C50, &qword_10011D9D0);
      sub_10004520C(v46, v47, v9, v49);
      v47, v50, v51, v52, v53, v54, v55, v56;
      sub_1000159AC(v49, &unk_100173C50, &qword_10011D9D0);
      (*(v94 + 8))(v9, v96);
    }

    else
    {
      v57 = type metadata accessor for TaskPriority();
      v58 = v97;
      (*(*(v57 - 8) + 56))(v97, 1, 1, v57);
      v59 = swift_allocObject();
      *(v59 + 16) = v3;
      *(v59 + 24) = v29;

      v60 = v3;
      static Task<>.noThrow(priority:operation:)();

      sub_1000159AC(v58, &qword_100172F50, &qword_10011E500);
    }

    v61 = (v29 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
    v62 = *(v29 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
    v63 = *(v29 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);

    sub_10002FCDC(v62, v63);
    v63, v64, v65, v66, v67, v68, v69, v70;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v98)
    {
      v71 = *(v98 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);
      v72 = *v61;
      v73 = v61[1];

      v74._countAndFlagsBits = v72;
      v74._object = v73;
      v75 = String.hasPrefix(_:)(v74);
      v71, v76, v77, v78, v79, v80, v81, v82;
      v73, v83, v84, v85, v86, v87, v88, v89;
      if (v75)
      {
        v90 = type metadata accessor for TaskPriority();
        v91 = v97;
        (*(*(v90 - 8) + 56))(v97, 1, 1, v90);
        v92 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v93 = swift_allocObject();
        *(v93 + 16) = &unk_10011A2B0;
        *(v93 + 24) = v92;
        sub_1000077C8(&unk_100173C60, &qword_10011D910);
        static Task<>.noThrow(priority:operation:)();

        sub_1000159AC(v91, &qword_100172F50, &qword_10011E500);
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_100038148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v3[6] = swift_task_alloc();

  return _swift_task_switch(sub_100038208, 0, 0);
}

uint64_t sub_100038208()
{
  v0[7] = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier;

  SFAirDrop.TransferIdentifier.init(_:)();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_100038508;
  v2 = v0[6];

  return SFAirDropClient.cancelTransfer(_:)(v2);
}

uint64_t sub_100038508()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *v1;
  *(v5 + 72) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return _swift_task_switch(sub_1000386B0, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1000386B0()
{
  v22 = v0;
  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100007D20(v1, qword_100173A40);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = (v0[3] + v0[7]);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21 = v7;
    *v5 = 136315394;
    v8 = *v4;
    v9 = v4[1];

    v10 = sub_10003E81C(v8, v9, &v21);
    v9, v11, v12, v13, v14, v15, v16, v17;
    *(v5 + 4) = v10;
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v18;
    *v6 = v18;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to cancel transfer %s: %@", v5, 0x16u);
    sub_1000159AC(v6, &qword_100172EB0, &qword_100119410);

    sub_100007920(v7);
  }

  else
  {
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_1000388E8(uint64_t a1)
{
  *(v1 + 40) = a1;
  type metadata accessor for MainActor();
  *(v1 + 48) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100038980, v3, v2);
}

uint64_t sub_100038980()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_100028718();
  }

  v2 = *(v0 + 8);

  return v2(Strong == 0);
}

uint64_t sub_100038A14(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_100038B00;

  return v5();
}

uint64_t sub_100038B00(char a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1 & 1;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100038C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();

  return _swift_task_switch(sub_100038CD8, 0, 0);
}

uint64_t sub_100038CD8()
{
  (*(v0[6] + 104))(v0[7], enum case for SFAirDropReceive.ItemDestination.noItem(_:), v0[5]);
  v1 = swift_task_alloc();
  v0[8] = v1;
  v2 = sub_1000077C8(&unk_100173C98, &unk_10011A300);
  *v1 = v0;
  v1[1] = sub_100038DB0;
  v3 = v0[7];

  return SFAirDrop.AcceptAction.Single.accept(with:)(v3, v2);
}

uint64_t sub_100038DB0()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *v1;
  *(v5 + 72) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return _swift_task_switch(sub_100038F58, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_100038F58()
{
  v21 = v0;
  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = type metadata accessor for Logger();
  sub_100007D20(v2, qword_100173A40);

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  v1, v5, v6, v7, v8, v9, v10, v11;

  if (os_log_type_enabled(v3, v4))
  {
    v13 = v0[3];
    v12 = v0[4];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20 = v16;
    *v14 = 136315394;
    *(v14 + 4) = sub_10003E81C(v13, v12, &v20);
    *(v14 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v17;
    *v15 = v17;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to decline ask for %s: %@", v14, 0x16u);
    sub_1000159AC(v15, &qword_100172EB0, &qword_100119410);

    sub_100007920(v16);
  }

  else
  {
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_100039174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  sub_1000077C8(&unk_100173C50, &qword_10011D9D0);
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_100039214, 0, 0);
}

uint64_t sub_100039214()
{
  v1 = v0[5];
  sub_100007BA4(v0[2], v1, &unk_100173C50, &qword_10011D9D0);
  v2 = type metadata accessor for SFAirDrop.DeclineAction();
  v0[6] = v2;
  v3 = *(v2 - 8);
  v0[7] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1000159AC(v0[5], &unk_100173C50, &qword_10011D9D0);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    v0[8] = v6;
    *v6 = v0;
    v6[1] = sub_100039374;

    return SFAirDrop.DeclineAction.decline()();
  }
}

uint64_t sub_100039374()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000394C8, 0, 0);
  }

  else
  {
    (*(v2[7] + 8))(v2[5], v2[6]);

    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_1000394C8()
{
  v21 = v0;
  (*(v0[7] + 8))(v0[5], v0[6]);
  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = type metadata accessor for Logger();
  sub_100007D20(v2, qword_100173A40);

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  v1, v5, v6, v7, v8, v9, v10, v11;

  if (os_log_type_enabled(v3, v4))
  {
    v13 = v0[3];
    v12 = v0[4];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20 = v16;
    *v14 = 136315394;
    *(v14 + 4) = sub_10003E81C(v13, v12, &v20);
    *(v14 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v17;
    *v15 = v17;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to cancel transfer for %s: %@", v14, 0x16u);
    sub_1000159AC(v15, &qword_100172EB0, &qword_100119410);

    sub_100007920(v16);
  }

  else
  {
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_1000396FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  v5 = swift_task_alloc();
  v4[4] = v5;
  *v5 = v4;
  v5[1] = sub_100039794;

  return SFAirDrop.DeclineAction.decline()();
}

uint64_t sub_100039794()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000398C8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1000398C8()
{
  v21 = v0;
  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  sub_100007D20(v2, qword_100173A40);

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  v1, v5, v6, v7, v8, v9, v10, v11;

  if (os_log_type_enabled(v3, v4))
  {
    v13 = v0[2];
    v12 = v0[3];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20 = v16;
    *v14 = 136315394;
    *(v14 + 4) = sub_10003E81C(v13, v12, &v20);
    *(v14 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v17;
    *v15 = v17;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to decline ask for %s: %@", v14, 0x16u);
    sub_1000159AC(v15, &qword_100172EB0, &qword_100119410);

    sub_100007920(v16);
  }

  else
  {
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_100039ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  v5 = swift_task_alloc();
  v4[4] = v5;
  *v5 = v4;
  v5[1] = sub_100039B74;

  return SFAirDrop.DeclineAction.decline()();
}

uint64_t sub_100039B74()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100039CA8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100039CA8()
{
  v21 = v0;
  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  sub_100007D20(v2, qword_100173A40);

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  v1, v5, v6, v7, v8, v9, v10, v11;

  if (os_log_type_enabled(v3, v4))
  {
    v13 = v0[2];
    v12 = v0[3];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20 = v16;
    *v14 = 136315394;
    *(v14 + 4) = sub_10003E81C(v13, v12, &v20);
    *(v14 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v17;
    *v15 = v17;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to cancel transfer for %s: %@", v14, 0x16u);
    sub_1000159AC(v15, &qword_100172EB0, &qword_100119410);

    sub_100007920(v16);
  }

  else
  {
  }

  v18 = v0[1];

  return v18();
}

double sub_100039EBC(uint64_t a1, _TtC9AirDropUI33AirDropTransferSessionsController *a2, void *a3, void *a4, void *a5, void *a6, void *a7, _TtC9AirDropUI33AirDropTransferSessionsController *a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12)
{
  v112 = a8;
  v116 = a7;
  v114 = a4;
  v110 = a3;
  v16 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v117 = *(v16 - 8);
  __chkstk_darwin(v16);
  v115 = (&v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100007D20(v18, qword_100173A40);

  v19 = a5;
  v20 = a6;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  a2, v23, v24, v25, v26, v27, v28, v29;
  v30 = os_log_type_enabled(v21, v22);
  v113 = v20;
  v111 = v19;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v109 = v16;
    v32 = v31;
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v119[0] = v34;
    *v32 = 136315650;
    *(v32 + 4) = sub_10003E81C(a1, a2, v119);
    *(v32 + 12) = 2112;
    *(v32 + 14) = v19;
    *(v32 + 22) = 2112;
    *(v32 + 24) = v20;
    *v33 = v19;
    v33[1] = v20;
    v35 = v19;
    v36 = v20;
    _os_log_impl(&_mh_execute_header, v21, v22, "Update transfer %s. Completed unit count: %@. Total unit count: %@", v32, 0x20u);
    sub_1000077C8(&qword_100172EB0, &qword_100119410);
    swift_arrayDestroy();

    sub_100007920(v34);

    v16 = v109;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v44 = v119[0];
  if (*(v119[0] + 16) && (v45 = sub_10003EEC0(a1, a2), (v37 & 1) != 0))
  {
    v109 = *(*v44->nearbySharingInteractionCoordinator + 8 * v45);

    v44, v46, v47, v48, v49, v50, v51, v52;
    v53 = [v110 unsignedIntegerValue];
    if (a10 >> 60 == 15)
    {
      v66 = 0;
    }

    else
    {
      sub_1000165C4(0, &unk_100172ED0, NSKeyedUnarchiver_ptr);
      sub_1000156D8(a9, a10);
      static NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(_:)();
      sub_100015660(a9, a10);
      if (v120)
      {
        sub_1000077C8(&qword_100173D38, &unk_10011A520);
        if (swift_dynamicCast())
        {
          v66 = v118;
        }

        else
        {
          v66 = 0;
        }
      }

      else
      {
        sub_1000159AC(v119, &qword_1001746C0, &qword_10011A510);
        v66 = 0;
      }
    }

    if (a12 >> 60 == 15)
    {
      v68 = 0;
      v67 = v111;
    }

    else
    {
      sub_1000165C4(0, &unk_100172ED0, NSKeyedUnarchiver_ptr);
      sub_1000156D8(a11, a12);
      static NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(_:)();
      sub_100015660(a11, a12);
      v67 = v111;
      if (v120)
      {
        sub_1000077C8(&qword_100173D30, &qword_10011A518);
        if (swift_dynamicCast())
        {
          v68 = v118;
        }

        else
        {
          v68 = 0;
        }
      }

      else
      {
        sub_1000159AC(v119, &qword_1001746C0, &qword_10011A510);
        v68 = 0;
      }
    }

    v69 = v115;
    *v115 = v53;
    v70 = v117;
    (*(v117 + 104))(v69, enum case for SFAirDropReceive.Transfer.State.legacyTransferState(_:), v16);
    v71 = [v114 BOOLValue];
    v72 = [v67 integerValue];
    v73 = [v113 integerValue];
    v74 = v72;
    v75 = v66;
    v76 = v66;
    v77 = v109;
    sub_10007F568(v69, v71, v74, v73, v116, v112, v75, v68);
    v68, v78, v79, v80, v81, v82, v83, v84;
    v76, v85, v86, v87, v88, v89, v90, v91;
    (*(v70 + 8))(v69, v16);
    if (qword_100172140 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v53 == 3 && (v119[0] & 1) == 0)
    {
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        *v94 = 0;
        _os_log_impl(&_mh_execute_header, v92, v93, "Transfer was cancelled by sender. Ending our session locally.", v94, 2u);
      }

      v96 = *(v77 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
      v95 = *(v77 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);

      v97 = Logger.logObject.getter();
      v98 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v119[0] = v100;
        *v99 = 136315138;
        *(v99 + 4) = sub_10003E81C(v96, v95, v119);
        _os_log_impl(&_mh_execute_header, v97, v98, "After opening URLs for transfer %s. Ending session locally.", v99, 0xCu);
        sub_100007920(v100);
      }

      sub_10002FCDC(v96, v95);
      v95, v101, v102, v103, v104, v105, v106, v107;
    }
  }

  else
  {
    v44, v37, v38, v39, v40, v41, v42, v43;

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    a2, v56, v57, v58, v59, v60, v61, v62;
    if (os_log_type_enabled(v54, v55))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v119[0] = v64;
      *v63 = 136315138;
      *(v63 + 4) = sub_10003E81C(a1, a2, v119);
      _os_log_impl(&_mh_execute_header, v54, v55, "AirDrop transfer session not active for ID: %s, returning", v63, 0xCu);
      sub_100007920(v64);
    }
  }

  return result;
}

void sub_10003AB68(uint64_t a1, _TtC9AirDropUI33AirDropTransferSessionsController *a2)
{
  v4 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100007D20(v8, qword_100173A40);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  a2, v11, v12, v13, v14, v15, v16, v17;
  if (os_log_type_enabled(v9, v10))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v78 = v4;
    v79[0] = v19;
    v20 = v5;
    v21 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_10003E81C(a1, a2, v79);
    _os_log_impl(&_mh_execute_header, v9, v10, "Accept transfer for transfer identifier: %s.", v18, 0xCu);
    sub_100007920(v21);
    v5 = v20;
    v4 = v78;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v29 = v79[0];
  if (*(v79[0] + 16) && (v30 = sub_10003EEC0(a1, a2), (v22 & 1) != 0))
  {
    v31 = *(*v29->nearbySharingInteractionCoordinator + 8 * v30);

    v29, v32, v33, v34, v35, v36, v37, v38;
    *v7 = 2;
    (*(v5 + 104))(v7, enum case for SFAirDropReceive.Transfer.State.legacyTransferState(_:), v4);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v39 = v79[0];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v40 = v79[0];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v41 = *(v31 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_actions);
    v42 = v79[0];
    v43 = v79[1];
    v44 = *(v31 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_completedURLs);

    sub_10007F568(v7, 1, v39, v40, v42, v43, v41, v44);

    v41, v45, v46, v47, v48, v49, v50, v51;
    v44, v52, v53, v54, v55, v56, v57, v58;
    v43, v59, v60, v61, v62, v63, v64, v65;
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v29, v22, v23, v24, v25, v26, v27, v28;

    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();
    a2, v68, v69, v70, v71, v72, v73, v74;
    if (os_log_type_enabled(v66, v67))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v79[0] = v76;
      *v75 = 136315138;
      *(v75 + 4) = sub_10003E81C(a1, a2, v79);
      _os_log_impl(&_mh_execute_header, v66, v67, "AirDrop transfer session not active for ID: %s, returning", v75, 0xCu);
      sub_100007920(v76);
    }
  }
}

void sub_10003B098(uint64_t a1)
{
  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100007D20(v3, qword_100173A40);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received cancellation request by the AirDropTransfer session", v6, 2u);
  }

  v8 = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
  v7 = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);
  v9 = *(v1 + OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_airDropClient);
  if (v9)
  {

    swift_unknownObjectRetain();
    v10 = String._bridgeToObjectiveC()();
    [v9 cancellationWasRequestedForTransferIdentifier:v10];

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Notified AirDropUIClient of cancellation. Ending session locally for faster feedback to the user.", v13, 2u);
    }

    sub_10002FCDC(v8, v7);
    v7, v14, v15, v16, v17, v18, v19, v20;

    swift_unknownObjectRelease();
  }

  else
  {

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "AirDropUIClient is nil. Ending session locally.", v23, 2u);
    }

    sub_10002FCDC(v8, v7);

    v7, v24, v25, v26, v27, v28, v29, v30;
  }
}

void sub_10003B32C(uint64_t a1)
{
  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100007D20(v3, qword_100173A40);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received accepted request by the AirDropTransfer session", v6, 2u);
  }

  v8 = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
  v7 = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);
  v9 = *(v1 + OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_airDropClient);
  if (v9)
  {

    swift_unknownObjectRetain();
    v10 = String._bridgeToObjectiveC()();
    v7, v11, v12, v13, v14, v15, v16, v17;
    [v9 acceptWasRequestedForTransferIdentifier:v10];

    oslog = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v18, "Notified AirDropUIClient of transfer accept.", v19, 2u);
    }

    swift_unknownObjectRelease();
  }

  else
  {

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "AirDropUIClient is nil, accepting local session.", v22, 2u);
    }

    sub_10003AB68(v8, v7);

    v7, v23, v24, v25, v26, v27, v28, v29;
  }
}

uint64_t sub_10003B5B4(uint64_t a1, uint64_t a2)
{
  v2[6] = a2;
  v3 = type metadata accessor for SFInterventionWorkflow();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for SFInterventionResponse();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_10003B6D0, 0, 0);
}

uint64_t sub_10003B6D0()
{
  (*(v0[8] + 104))(v0[9], enum case for SFInterventionWorkflow.moreInfo(_:), v0[7]);
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_10003B794;
  v2 = v0[12];
  v3 = v0[9];

  return SFAirDropClient.showIntervention(workflow:)(v2, v3);
}

uint64_t sub_10003B794()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  *(*v1 + 112) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_10003B990;
  }

  else
  {
    (*(v2[11] + 8))(v2[12], v2[10]);
    v6 = sub_10003B924;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10003B924()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003B990()
{
  v20 = v0;
  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100007D20(v1, qword_100173A40);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = v7;
    v9 = sub_10003E81C(v6, v7, &v19);
    v8, v10, v11, v12, v13, v14, v15, v16;
    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to show more info {error: %s}", v4, 0xCu);
    sub_100007920(v5);
  }

  else
  {
  }

  v17 = *(v0 + 8);

  return v17();
}

void sub_10003BB64(uint64_t a1)
{
  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100007D20(v2, qword_100173A40);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Received request from AirDropTransfer session to show a user notification for completed URLs", v5, 2u);
  }

  sub_10003BC60(a1);
}

void sub_10003BC60(uint64_t a1)
{
  v3 = sub_1000077C8(&qword_100172EE0, &qword_10011B220);
  __chkstk_darwin(v3 - 8);
  v5 = v107 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v107[4] = v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v109 = v107 - v10;
  __chkstk_darwin(v11);
  v13 = v107 - v12;
  __chkstk_darwin(v14);
  v112 = v107 - v15;
  v16 = type metadata accessor for Locale();
  __chkstk_darwin(v16 - 8);
  v17 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v17 - 8);
  v18 = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_completedURLs);
  v19 = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);
  v113 = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
  if (*v18->connection)
  {
    v111 = v1;
    v20 = v19;
    v21 = objc_allocWithZone(UNMutableNotificationContent);

    v108 = v20;

    v110 = [v21 init];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v22 = v115;
    if (!v115)
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v22 = v23;
    }

    v24 = String._bridgeToObjectiveC()();
    v22, v25, v26, v27, v28, v29, v30, v31;
    v32 = v110;
    [v110 setBody:v24];

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v40 = aBlock;
    v41 = v111;
    if (aBlock)
    {
      sub_10003C934(aBlock, v5);
      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {

        sub_1000159AC(v5, &qword_100172EE0, &qword_10011B220);
        if (!*v18->connection)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      v65 = v112;
      (*(v7 + 32))(v112, v5, v6);
      sub_1000165C4(0, &unk_100173D20, UNNotificationAttachment_ptr);
      (*(v7 + 16))(v13, v65, v6);
      v66 = sub_10003D13C(0xD000000000000015, 0x80000001001234C0, v13, 0);
      sub_1000077C8(&unk_100172E80, &unk_100118B40);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_100118700;
      *(v67 + 32) = v66;
      v68 = v66;
      isa = Array._bridgeToObjectiveC()().super.isa;
      v67, v70, v71, v72, v73, v74, v75, v76;
      v32 = v110;
      [v110 setAttachments:isa];

      (*(v7 + 8))(v112, v6);
      v41 = v111;
    }

    if (!*v18->connection)
    {
LABEL_18:
      v18, v33, v34, v35, v36, v37, v38, v39;
      v87 = 0;
      goto LABEL_19;
    }

LABEL_17:
    v77 = v109;
    (*(v7 + 16))(v109, v18 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);
    v18, v78, v79, v80, v81, v82, v83, v84;
    URL._bridgeToObjectiveC()(v85);
    v87 = v86;
    (*(v7 + 8))(v77, v6);
LABEL_19:
    [v32 setDefaultActionURL:{v87, v107[0]}];

    [v32 setShouldBackgroundDefaultAction:1];
    v88 = [objc_opt_self() triggerWithTimeInterval:0 repeats:0.1];
    v89 = v32;
    v90 = v88;
    v91 = String._bridgeToObjectiveC()();
    v92 = [objc_opt_self() requestWithIdentifier:v91 content:v89 trigger:v90];

    v93 = *(v41 + OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_userNotificationsCenter);
    v118 = sub_10003D2F8;
    v119 = 0;
    aBlock = _NSConcreteStackBlock;
    v115 = 1107296256;
    v116 = sub_10003D4AC;
    v117 = &unk_10015DE08;
    v94 = _Block_copy(&aBlock);
    [v93 addNotificationRequest:v92 withCompletionHandler:v94];
    _Block_release(v94);
    if (qword_100172148 != -1)
    {
      swift_once();
    }

    v95 = type metadata accessor for Logger();
    sub_100007D20(v95, qword_100173A40);
    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&_mh_execute_header, v96, v97, "Notification hopefully shown for transfer. Ending session.", v98, 2u);
    }

    v99 = v108;
    sub_10002FCDC(v113, v108);
    v99, v100, v101, v102, v103, v104, v105, v106;

    return;
  }

  v42 = qword_100172148;

  if (v42 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  sub_100007D20(v43, qword_100173A40);

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.error.getter();
  v19, v46, v47, v48, v49, v50, v51, v52;
  v53 = os_log_type_enabled(v44, v45);
  v54 = v113;
  if (v53)
  {
    v55 = swift_slowAlloc();
    v56 = v19;
    v57 = swift_slowAlloc();
    aBlock = v57;
    *v55 = 136315138;
    *(v55 + 4) = sub_10003E81C(v54, v56, &aBlock);
    _os_log_impl(&_mh_execute_header, v44, v45, "AirDropTransfer %s has no completed URLs, so nothing to present to user. Ending session.", v55, 0xCu);
    sub_100007920(v57);
    v19 = v56;
  }

  sub_10002FCDC(v54, v19);

  v19, v58, v59, v60, v61, v62, v63, v64;
}

uint64_t sub_10003C81C()
{
  v0 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);

  static Task<>.noThrow(priority:operation:)();

  return sub_1000159AC(v2, &qword_100172F50, &qword_10011E500);
}

uint64_t sub_10003C934@<X0>(UIImage *a1@<X0>, uint64_t a2@<X8>)
{
  v99 = type metadata accessor for UUID();
  v4 = *(v99 - 8);
  __chkstk_darwin(v99);
  v6 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v98 = &v94 - v12;
  v13 = sub_1000077C8(&qword_100172EE0, &qword_10011B220);
  __chkstk_darwin(v13 - 8);
  v94 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v100 = &v94 - v16;
  __chkstk_darwin(v17);
  v19 = &v94 - v18;
  v21 = __chkstk_darwin(v20);
  v23 = &v94 - v22;
  v102 = v8[7];
  v102(&v94 - v22, 1, 1, v7, v21);
  v24 = UIImageJPEGRepresentation(a1, 1.0);
  if (!v24)
  {
    goto LABEL_10;
  }

  v95 = a2;
  v25 = v24;
  v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v96 = v27;
  v97 = v26;

  v28 = NSTemporaryDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v101 = v8 + 7;
  v30 = v29;

  URL.init(fileURLWithPath:)();
  v30, v31, v32, v33, v34, v35, v36, v37;
  v103 = 0;
  v104 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);
  v104, v38, v39, v40, v41, v42, v43, v44;
  v103 = 0xD000000000000017;
  v104 = 0x80000001001234E0;
  UUID.init()();
  v45 = UUID.uuidString.getter();
  v47 = v46;
  (*(v4 + 8))(v6, v99);
  v48._countAndFlagsBits = v45;
  v48._object = v47;
  String.append(_:)(v48);
  v47, v49, v50, v51, v52, v53, v54, v55;
  v56 = v104;
  v57 = v98;
  URL.appendingPathComponent(_:)();
  v56, v58, v59, v60, v61, v62, v63, v64;
  v65 = v8[1];
  v65(v10, v7);
  URL.appendingPathExtension(_:)();
  v65(v57, v7);
  (v102)(v19, 0, 1, v7);
  sub_1000478DC(v19, v23, &qword_100172EE0, &qword_10011B220);
  v99 = v23;
  v66 = v100;
  sub_100007BA4(v23, v100, &qword_100172EE0, &qword_10011B220);
  v69 = v8[6];
  v68 = (v8 + 6);
  v67 = v69;
  result = v69(v66, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v71 = v96;
    v72 = v97;
    Data.write(to:options:)();
    v102 = v68;
    v65(v66, v7);
    if (qword_100172148 != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    sub_100007D20(v73, qword_100173A40);
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v74, v75))
    {
      v92 = v72;
      v93 = v71;
      goto LABEL_9;
    }

    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v103 = v77;
    *v76 = 136315138;
    v78 = v99;
    swift_beginAccess();
    v79 = v78;
    v80 = v94;
    sub_100007BA4(v79, v94, &qword_100172EE0, &qword_10011B220);
    result = v67(v80, 1, v7);
    if (result != 1)
    {
      v81 = URL.absoluteString.getter();
      v83 = v82;
      v65(v80, v7);
      v84 = sub_10003E81C(v81, v83, &v103);
      v83, v85, v86, v87, v88, v89, v90, v91;
      *(v76 + 4) = v84;
      _os_log_impl(&_mh_execute_header, v74, v75, "Saved temporary image URL to: %s", v76, 0xCu);
      sub_100007920(v77);

      v93 = v96;
      v92 = v97;
LABEL_9:
      sub_10001546C(v92, v93);

      a2 = v95;
      v23 = v99;
LABEL_10:
      swift_beginAccess();
      sub_100007BA4(v23, a2, &qword_100172EE0, &qword_10011B220);
      return sub_1000159AC(v23, &qword_100172EE0, &qword_10011B220);
    }
  }

  __break(1u);
  return result;
}

id sub_10003D13C(uint64_t a1, _TtC9AirDropUI33AirDropTransferSessionsController *a2, uint64_t a3, _TtC9AirDropUI33AirDropTransferSessionsController *a4)
{
  v7 = String._bridgeToObjectiveC()();
  a2, v8, v9, v10, v11, v12, v13, v14;
  URL._bridgeToObjectiveC()(v15);
  v17 = v16;
  if (a4)
  {
    v18.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    a4, v19, v20, v21, v22, v23, v24, v25;
  }

  else
  {
    v18.super.isa = 0;
  }

  v34 = 0;
  v26 = [swift_getObjCClassFromMetadata() attachmentWithIdentifier:v7 URL:v17 options:v18.super.isa error:&v34];

  v27 = v34;
  if (v26)
  {
    v28 = type metadata accessor for URL();
    v29 = *(*(v28 - 8) + 8);
    v30 = v27;
    v29(a3, v28);
  }

  else
  {
    v31 = v34;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v32 = type metadata accessor for URL();
    (*(*(v32 - 8) + 8))(a3, v32);
  }

  return v26;
}

void sub_10003D2F8(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100172148 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100007D20(v1, qword_100173A40);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v17 = v5;
      *v4 = 136315138;
      swift_getErrorValue();
      v6 = Error.localizedDescription.getter();
      v8 = v7;
      v9 = sub_10003E81C(v6, v7, &v17);
      v8, v10, v11, v12, v13, v14, v15, v16;
      *(v4 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v2, v3, "Couldn't post notification: %s", v4, 0xCu);
      sub_100007920(v5);
    }

    else
    {
    }
  }
}

void sub_10003D4AC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

double sub_10003D5B0(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DeviceLockState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v47 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v46 - v8;
  __chkstk_darwin(v10);
  v12 = v46 - v11;
  if (qword_100172148 == -1)
  {
    goto LABEL_2;
  }

LABEL_23:
  swift_once();
LABEL_2:
  v13 = type metadata accessor for Logger();
  sub_100007D20(v13, qword_100173A40);
  v46[0] = *(v5 + 16);
  v46[1] = v5 + 16;
  (v46[0])(v12, a1, v4);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  v16 = os_log_type_enabled(v14, v15);
  v51 = a1;
  if (v16)
  {
    v17 = swift_slowAlloc();
    KeyPath = v5;
    v18 = v17;
    v19 = swift_slowAlloc();
    v49 = v2;
    v20 = v19;
    v54 = v19;
    *v18 = 136315138;
    sub_100047F70(&qword_100173C48, &type metadata accessor for DeviceLockState, &protocol conformance descriptor for DeviceLockState);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    v53 = *(KeyPath + 8);
    v53(v12, v4);
    v24 = sub_10003E81C(v21, v23, &v54);
    v23, v25, v26, v27, v28, v29, v30, v31;
    *(v18 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, "Lock state changed to %s", v18, 0xCu);
    sub_100007920(v20);

    v5 = KeyPath;
  }

  else
  {

    v53 = *(v5 + 8);
    v53(v12, v4);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v54)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    sub_100047F70(&qword_100173C40, &type metadata accessor for DeviceLockState, &protocol conformance descriptor for DeviceLockState);
    v32 = v51;
    v33 = dispatch thunk of static Equatable.== infix(_:_:)();
    v53(v9, v4);
    if (v33)
    {
    }

    else
    {
      v34 = v46[0];
      (v46[0])(v9, v32, v4);
      KeyPath = swift_getKeyPath();
      swift_getKeyPath();
      v34(v47, v9, v4);
      static Published.subscript.setter();
      v53(v9, v4);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v35 = 0;
  v37 = v54 + 64;
  v36 = *(v54 + 64);
  KeyPath = v54;
  v38 = 1 << *(v54 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  a1 = v39 & v36;
  v2 = (v38 + 63) >> 6;
  v50 = v4;
  if ((v39 & v36) != 0)
  {
    while (2)
    {
      v12 = v35;
LABEL_18:
      v42 = __clz(__rbit64(a1));
      a1 &= a1 - 1;
      v5 = *(*(KeyPath + 56) + ((v12 << 9) | (8 * v42)));
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      sub_100047F70(&qword_100173C40, &type metadata accessor for DeviceLockState, &protocol conformance descriptor for DeviceLockState);
      v43 = v51;
      v44 = dispatch thunk of static Equatable.== infix(_:_:)();
      v53(v9, v4);
      if (v44)
      {

        v35 = v12;
        if (a1)
        {
          continue;
        }
      }

      else
      {
        v40 = v43;
        v41 = v46[0];
        (v46[0])(v9, v40, v4);
        v49 = swift_getKeyPath();
        v48 = swift_getKeyPath();
        v41(v47, v9, v50);
        v4 = v50;
        static Published.subscript.setter();
        v53(v9, v4);
        v35 = v12;
        if (a1)
        {
          continue;
        }
      }

      break;
    }
  }

  while (1)
  {
    v12 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v12 >= v2)
    {
      break;
    }

    a1 = *(v37 + 8 * v12);
    ++v35;
    if (a1)
    {
      goto LABEL_18;
    }
  }

  return result;
}

uint64_t sub_10003DC88(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000167E4;

  return sub_10003B5B4(a1, v1);
}

void sub_10003DD24(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_10003DDA4(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

double sub_10003DE1C(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return result;
}

uint64_t sub_10003DE98(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for DeviceLockState();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  (v11)(v6, v10, v3);

  static Published.subscript.setter();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_10003E008(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_10003E054(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1000167E4;

  return v6();
}

uint64_t sub_10003E13C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10000BCF0;

  return v7();
}

uint64_t sub_10003E224(uint64_t a1, _TtC9AirDropUI33AirDropTransferSessionsController *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  __chkstk_darwin(v9 - 8);
  v11 = v30 - v10;
  sub_100007BA4(a3, v30 - v10, &qword_100172F50, &qword_10011E500);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000159AC(v11, &qword_100172F50, &qword_10011E500);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v31[0] = 0;
      v31[1] = 0;
      v19 = v31;
      v31[2] = v14;
      v31[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v30[1] = 7;
    v30[2] = v19;
    v30[3] = v17;
    v21 = swift_task_create();

    sub_1000159AC(a3, &qword_100172F50, &qword_10011E500);
    a2, v22, v23, v24, v25, v26, v27, v28;

    return v21;
  }

LABEL_8:
  sub_1000159AC(a3, &qword_100172F50, &qword_10011E500);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v31[4] = 0;
    v31[5] = 0;
    v31[6] = v14;
    v31[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_10003E520(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10003E618;

  return v6(a1);
}

uint64_t sub_10003E618()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

_TtC9AirDropUI33AirDropTransferSessionsController *sub_10003E710(uint64_t a1, uint64_t a2)
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

  sub_1000077C8(&unk_100172E80, &unk_100118B40);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  *v4->connection = a1;
  *v4->airdropClient = (2 * (v9 >> 3)) | 1;
  return result;
}

void sub_10003E7C0(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = v7;
  v9 = sub_10003E81C(v6, v7, a3);
  v8, v10, v11, v12, v13, v14, v15, v16;
  v17 = *a1;
  *v17 = v9;
  *a1 = v17 + 1;
}

unint64_t sub_10003E81C(uint64_t a1, _TtC9AirDropUI33AirDropTransferSessionsController *a2, uint64_t *a3)
{

  v6 = sub_10003E8E8(v18, 0, 0, 1, a1, a2);
  v14 = v18[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v18[0] = a1;
    v18[1] = a2;
    v16 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v15 = v6;
  a2, v7, v8, v9, v10, v11, v12, v13;
  ObjectType = swift_getObjectType();
  v18[0] = v15;
  v16 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100015A30(v18, v16);
    *a3 = v16 + 32;
  }

LABEL_4:
  sub_100007920(v18);
  return v14;
}

unint64_t sub_10003E8E8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10003E9F4(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

_TtC9AirDropUI33AirDropTransferSessionsController *sub_10003E9F4(uint64_t a1, unint64_t a2)
{
  v3 = sub_10003EA40(a1, a2);
  sub_10003EB70(&off_10015C8F0);
  return v3;
}

_TtC9AirDropUI33AirDropTransferSessionsController *sub_10003EA40(uint64_t a1, unint64_t a2)
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

  v6 = sub_10003EC5C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6->airDropClient, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7->airDropClient, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10003EC5C(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

void sub_10003EB70(_TtC9AirDropUI33AirDropTransferSessionsController *a1)
{
  v2 = *a1->connection;
  v3 = *v1;
  v4 = *(*v1)->connection;
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *v3->airdropClient >> 1)
  {
    if (*a1->connection)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v26 = v4 + v2;
  }

  else
  {
    v26 = v4;
  }

  v3 = sub_10003ECD0(isUniquelyReferenced_nonNull_native, v26, 1, v3, v11, v12, v13, v14);
  if (!*a1->connection)
  {
LABEL_13:
    a1, v8, v9, v10, v11, v12, v13, v14;
    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v15 = *v3->connection;
  if ((*v3->airdropClient >> 1) - v15 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3->airDropClient[v15], a1->airDropClient, v2);
  a1, v16, v17, v18, v19, v20, v21, v22;
  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v23 = *v3->connection;
  v24 = __OFADD__(v23, v2);
  v25 = v23 + v2;
  if (!v24)
  {
    *v3->connection = v25;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

_TtC9AirDropUI33AirDropTransferSessionsController *sub_10003EC5C(uint64_t a1, uint64_t a2)
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

  sub_1000077C8(&qword_100173C38, &qword_10011A120);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  *v4->connection = a1;
  *v4->airdropClient = 2 * v5 - 64;
  return result;
}

_TtC9AirDropUI33AirDropTransferSessionsController *sub_10003ECD0(_TtC9AirDropUI33AirDropTransferSessionsController *result, int64_t a2, void *a3, _TtC9AirDropUI33AirDropTransferSessionsController *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->airdropClient;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->connection;
  if (v11 <= v12)
  {
    v13 = *a4->connection;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_1000077C8(&qword_100173C38, &qword_10011A120);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    *v14->connection = v12;
    *v14->airdropClient = 2 * v15 - 64;
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  airDropClient = v14->airDropClient;
  v17 = a4->airDropClient;
  if (v9)
  {
    if (v14 != a4 || airDropClient >= &v17[v12])
    {
      memmove(airDropClient, v17, v12);
    }

    *a4->connection = 0;
  }

  else
  {
    memcpy(airDropClient, v17, v12);
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

_BYTE **sub_10003EDC4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_10003EDEC(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_100047F70(&unk_100173CF0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10003F19C(a1, v2, &type metadata accessor for UUID, &qword_100175DE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

unint64_t sub_10003EEC0(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10003F0E4(a1, a2, v4);
}

unint64_t sub_10003EF38(uint64_t a1)
{
  type metadata accessor for SFAirDrop.TransferIdentifier();
  sub_100047F70(&qword_100173C80, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10003F19C(a1, v2, &type metadata accessor for SFAirDrop.TransferIdentifier, &qword_100173C88, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
}

unint64_t sub_10003F00C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10003F33C(a1, v4);
}

unint64_t sub_10003F050(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();
  v3, v5, v6, v7, v8, v9, v10, v11;

  return sub_10003F404(a1, v4);
}

unint64_t sub_10003F0E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10003F19C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      sub_100047F70(v24, v25, v26);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_10003F33C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100046E14(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100046E70(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10003F404(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v10;
      if (v6 == v9 && v8 == v10)
      {
        break;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v8, v20, v21, v22, v23, v24, v25, v26;
      v17, v27, v28, v29, v30, v31, v32, v33;
      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    v8, v10, v11, v12, v13, v14, v15, v16;
    v17, v34, v35, v36, v37, v38, v39, v40;
  }

  return v4;
}

uint64_t sub_10003F508(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_10003EEC0(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v2;
  v18 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100041DCC();
    v15 = v18;
  }

  *(*(v15 + 48) + 16 * v6 + 8), v8, v9, v10, v11, v12, v13, v14;
  v16 = *(*(v15 + 56) + 8 * v6);
  sub_100040A74(v6, v15);
  *v3 = v15;
  return v16;
}

void sub_10003F5A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000077C8(&qword_1001765B0, &qword_10011A8B0);
  v35 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_10003F848(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000077C8(&qword_100173C90, &qword_10011A2F8);
  v35 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_10003FAF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1000077C8(&unk_1001765A0, &qword_10011A2F0);
  v40 = v4;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v9;
    v39 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v41)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      sub_100047F70(&qword_100173C80, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v43 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_10003FECC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1000077C8(&qword_100173CE8, &unk_10011A380);
  v40 = v4;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v9;
    v39 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v41)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      sub_100047F70(&unk_100173CF0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v43 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_1000402A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1000077C8(&unk_100173D10, &qword_10011A398);
  v40 = v4;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v9;
    v39 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v41)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      sub_100047F70(&unk_100173CF0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v43 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_100040698(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  sub_1000077C8(a3, a4);
  v44 = v8;
  v14 = static _DictionaryStorage.resize(original:capacity:move:)();
  v15 = v14;
  if (*(v13 + 16))
  {
    v48 = v12;
    v40 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v41 = (v10 + 16);
    v42 = v13;
    v43 = v10;
    v45 = (v10 + 32);
    v22 = v14 + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v47 = *(v43 + 72);
      v29 = v28 + v47 * v27;
      if (v44)
      {
        (*v45)(v48, v29, v9);
        v46 = *(*(v13 + 56) + 8 * v27);
      }

      else
      {
        (*v41)(v48, v29, v9);
        v46 = *(*(v13 + 56) + 8 * v27);
      }

      sub_100047F70(&unk_100173CF0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v30 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v31 = -1 << *(v15 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v22 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v22 + 8 * v33);
          if (v37 != -1)
          {
            v23 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v23 = __clz(__rbit64((-1 << v32) & ~*(v22 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      (*v45)((*(v15 + 48) + v47 * v23), v48, v9);
      *(*(v15 + 56) + 8 * v23) = v46;
      ++*(v15 + 16);
      v13 = v42;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v7 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v13 + 32);
    v7 = v40;
    if (v38 >= 64)
    {
      bzero(v17, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v38;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
}

void sub_100040A74(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 16 * v6 + 8);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();
      v9, v11, v12, v13, v14, v15, v16, v17;
      v18 = v10 & v7;
      if (v3 >= v8)
      {
        if (v18 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v18 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v18)
      {
LABEL_10:
        v19 = *(a2 + 48);
        v20 = (v19 + 16 * v3);
        v21 = (v19 + 16 * v6);
        if (v3 != v6 || v20 >= v21 + 1)
        {
          *v20 = *v21;
        }

        v22 = *(a2 + 56);
        v23 = (v22 + 8 * v3);
        v24 = (v22 + 8 * v6);
        if (v3 != v6 || v23 >= v24 + 1)
        {
          *v23 = *v24;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }
}

void sub_100040C24(int64_t a1, uint64_t a2)
{
  v38 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v4 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = _HashTable.previousHole(before:)();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_100047F70(&qword_100173C80, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

void sub_100040F48(int64_t a1, uint64_t a2)
{
  v38 = type metadata accessor for UUID();
  v4 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = _HashTable.previousHole(before:)();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_100047F70(&unk_100173CF0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

uint64_t sub_100041268(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10003EEC0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10003F5A0(v16, a4 & 1);
      v11 = sub_10003EEC0(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_100041C5C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

void sub_1000413E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10003EEC0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10003F848(v16, a4 & 1);
      v11 = sub_10003EEC0(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_100041DCC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void sub_100041560(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_10003EF38(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_100041F3C();
      goto LABEL_7;
    }

    sub_10003FAF0(v17, a3 & 1);
    v21 = sub_10003EF38(a2);
    if ((v18 & 1) == (v22 & 1))
    {
      v14 = v21;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_100041AE8(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

void sub_10004172C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_10003EDEC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1000421BC();
      goto LABEL_7;
    }

    sub_10003FECC(v17, a3 & 1);
    v23 = sub_10003EDEC(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_100041BA0(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

void sub_10004190C(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v25 = a4;
  v26 = a5;
  v6 = v5;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v16 = sub_10003EDEC(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      sub_1000426C4(v25, v26);
      goto LABEL_7;
    }

    sub_100040698(v19, a3 & 1, v25, v26);
    v23 = sub_10003EDEC(a2);
    if ((v20 & 1) == (v24 & 1))
    {
      v16 = v23;
      v22 = *v6;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v13, a2, v10);
      sub_100041BA0(v16, v13, a1, v22);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v22 = *v6;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v22[7] + 8 * v16) = a1;
}

uint64_t sub_100041AE8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for SFAirDrop.TransferIdentifier();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_100041BA0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void sub_100041C5C()
{
  v1 = v0;
  sub_1000077C8(&qword_1001765B0, &qword_10011A8B0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_100041DCC()
{
  v1 = v0;
  sub_1000077C8(&qword_100173C90, &qword_10011A2F8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_100041F3C()
{
  v1 = v0;
  v33 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000077C8(&unk_1001765A0, &qword_10011A2F0);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_1000421BC()
{
  v1 = v0;
  v32 = type metadata accessor for UUID();
  v34 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000077C8(&qword_100173CE8, &unk_10011A380);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v33 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v35 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v34;
        v20 = *(v34 + 72) * v18;
        v22 = v31;
        v21 = v32;
        (*(v34 + 16))(v31, *(v3 + 48) + v20, v32);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v33;
        (*(v19 + 32))(*(v33 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        v25 = v23;
        v13 = v35;
      }

      while (v35);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v27;
        v5 = v33;
        goto LABEL_18;
      }

      v17 = *(v28 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v35 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_100042430()
{
  v1 = v0;
  v33 = type metadata accessor for UUID();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000077C8(&unk_100173D10, &qword_10011A398);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_1000426C4(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v35 = type metadata accessor for UUID();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000077C8(a1, a2);
  v7 = *v2;
  v8 = static _DictionaryStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    v30 = v5;
    v31 = (v7 + 64);
    if (v9 != v7 || v10 >= v7 + 64 + 8 * v11)
    {
      memmove(v10, v31, 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v36 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v17)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
LABEL_17:
        v22 = v19 | (v13 << 6);
        v23 = v37;
        v24 = *(v37 + 72) * v22;
        v26 = v34;
        v25 = v35;
        (*(v37 + 16))(v34, *(v7 + 48) + v24, v35);
        v27 = *(*(v7 + 56) + 8 * v22);
        v28 = v36;
        (*(v23 + 32))(*(v36 + 48) + v24, v26, v25);
        *(*(v28 + 56) + 8 * v22) = v27;

        v17 = v38;
      }

      while (v38);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v5 = v30;
        v9 = v36;
        goto LABEL_21;
      }

      v21 = *(v31 + v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v38 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v9;
  }
}

void sub_10004293C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        type metadata accessor for AirDropTransferSession(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1000077C8(&unk_100172E80, &unk_100118B40);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_100042A20(uint64_t *a1)
{
  v3 = sub_1000077C8(&unk_100174FA0, &qword_10011A700);
  __chkstk_darwin(v3 - 8);
  v60 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v65 = v48 - v6;
  v61 = type metadata accessor for Date();
  v7 = *(v61 - 8);
  __chkstk_darwin(v61);
  v54 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v48 - v10;
  v12 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_1000446B8(v12);
    *a1 = v12;
  }

  v14 = *(v12 + 16);
  v50 = (v12 + 32);
  v64[0] = v12 + 32;
  v64[1] = v14;
  v15 = _minimumMergeRunLength(_:)(v14);
  if (v15 >= v14)
  {
    if (v14 < 2)
    {
      return specialized ContiguousArray._endMutation()();
    }

    v59 = v11;
    v48[0] = a1;
    v48[1] = v1;
    v58 = (v7 + 48);
    v18 = (v7 + 32);
    v56 = (v7 + 8);
    v19 = -1;
    v20 = 1;
    v21 = v50;
    v49 = v14;
    v57 = v18;
LABEL_9:
    v52 = v20;
    v53 = v19;
    v22 = v50[v20];
    v51 = v21;
    while (1)
    {
      v28 = *v21;
      v29 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
      swift_beginAccess();
      v30 = v65;
      sub_100007BA4(v22 + v29, v65, &unk_100174FA0, &qword_10011A700);
      v31 = *v58;
      if ((*v58)(v30, 1, v61) == 1)
      {

        v32 = v65;
      }

      else
      {
        v33 = v61;
        v34 = *v18;
        (*v18)(v59, v65, v61);
        v35 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
        swift_beginAccess();
        v36 = v28 + v35;
        v37 = v60;
        sub_100007BA4(v36, v60, &unk_100174FA0, &qword_10011A700);
        if (v31(v37, 1, v33) != 1)
        {
          v23 = v54;
          v34(v54, v60, v33);

          v24 = v59;
          v55 = static Date.< infix(_:_:)();
          v25 = *v56;
          (*v56)(v23, v33);
          v25(v24, v33);

          v18 = v57;
          if ((v55 & 1) == 0)
          {
            goto LABEL_8;
          }

          goto LABEL_11;
        }

        v38 = *v56;

        v38(v59, v33);
        v32 = v60;
        v18 = v57;
      }

      sub_1000159AC(v32, &unk_100174FA0, &qword_10011A700);
      v39 = static Date.< infix(_:_:)();

      if ((v39 & 1) == 0)
      {
LABEL_8:
        v20 = v52 + 1;
        v21 = v51 + 1;
        v19 = v53 - 1;
        if (v52 + 1 == v49)
        {
          return specialized ContiguousArray._endMutation()();
        }

        goto LABEL_9;
      }

LABEL_11:
      v26 = *v21;
      v22 = v21[1];
      *v21 = v22;
      v21[1] = v26;
      --v21;
      if (__CFADD__(v19++, 1))
      {
        goto LABEL_8;
      }
    }
  }

  v16 = v15;
  if (v14 >= 2)
  {
    type metadata accessor for AirDropTransferSession(0);
    v17 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) = v14 >> 1;
  }

  else
  {
    v17 = &_swiftEmptyArrayStorage;
  }

  v63[0] = (v17 & 0xFFFFFFFFFFFFFF8) + 32;
  v63[1] = v14 >> 1;
  sub_100042F04(v63, v62, v64, v16);
  *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  v17, v40, v41, v42, v43, v44, v45, v46;
  return specialized ContiguousArray._endMutation()();
}

void sub_100042F04(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v148 = a1;
  v6 = sub_1000077C8(&unk_100174FA0, &qword_10011A700);
  __chkstk_darwin(v6 - 8);
  v8 = &v144 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v144 - v10;
  __chkstk_darwin(v12);
  v14 = &v144 - v13;
  __chkstk_darwin(v15);
  v154 = &v144 - v16;
  v168 = type metadata accessor for Date();
  __chkstk_darwin(v168);
  v158 = &v144 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v167 = &v144 - v19;
  __chkstk_darwin(v20);
  v149 = &v144 - v21;
  __chkstk_darwin(v22);
  v32 = *(a3 + 8);
  if (v32 < 1)
  {
    v34 = &_swiftEmptyArrayStorage;
LABEL_102:
    a4 = *v148;
    if (!*v148)
    {
      goto LABEL_141;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = v159;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_104:
      v171 = v34;
      v140 = *v34->connection;
      if (v140 >= 2)
      {
        while (*a3)
        {
          v141 = *(&v34->super.isa + 2 * v140);
          v142 = *&v34->airdropClient[16 * v140];
          sub_100043C64((*a3 + 8 * v141), (*a3 + 8 * *&v34->connection[16 * v140]), (*a3 + 8 * v142), a4);
          if (v11)
          {
            goto LABEL_112;
          }

          if (v142 < v141)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v34 = sub_1000445A0(v34, v23, v24, v25, v26, v27, v28, v29);
          }

          if (v140 - 2 >= *v34->connection)
          {
            goto LABEL_129;
          }

          v143 = &v34->super.isa + 2 * v140;
          *v143 = v141;
          v143[1] = v142;
          v171 = v34;
          sub_100044514(v140 - 1);
          v34 = v171;
          v140 = *v171->connection;
          if (v140 <= 1)
          {
            goto LABEL_112;
          }
        }

        goto LABEL_139;
      }

LABEL_112:
      v34, v23, v24, v25, v26, v27, v28, v29;
      return;
    }

LABEL_135:
    v34 = sub_1000445A0(v34, v23, v24, v25, v26, v27, v28, v29);
    goto LABEL_104;
  }

  v153 = &v144 - v31;
  v150 = v14;
  v145 = a4;
  v33 = 0;
  v166 = (v30 + 48);
  v162 = (v30 + 32);
  v161 = (v30 + 8);
  v34 = &_swiftEmptyArrayStorage;
  v146 = a3;
  v160 = v8;
  v163 = v11;
LABEL_4:
  v35 = v33;
  if (v33 + 1 >= v32)
  {
    v32 = v33 + 1;
    goto LABEL_25;
  }

  v36 = *a3;
  v37 = *(v36 + 8 * (v33 + 1));
  a4 = *(v36 + 8 * v33);
  v169 = a4;
  v170 = v37;

  v38 = v159;
  LODWORD(v156) = sub_100036FFC(&v170, &v169);
  v159 = v38;
  if (v38)
  {
    v34, v39, v40, v41, v42, v43, v44, v45;

    return;
  }

  v46 = v35;
  v47 = v35 + 2;
  v147 = v46;
  v164 = (8 * v46);
  v48 = (v36 + 8 * v46 + 16);
  v155 = v34;
  v157 = v32;
  while (v32 != v47)
  {
    a4 = *v48;
    v165 = *(v48 - 1);
    v56 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
    swift_beginAccess();
    v57 = a4 + v56;
    v58 = v154;
    sub_100007BA4(v57, v154, &unk_100174FA0, &qword_10011A700);
    v59 = *v166;
    if ((*v166)(v58, 1, v168) == 1)
    {

LABEL_14:
      sub_1000159AC(v58, &unk_100174FA0, &qword_10011A700);
      v51 = static Date.< infix(_:_:)();
      goto LABEL_8;
    }

    v60 = v168;
    v152 = *v162;
    (v152)(v153, v58, v168);
    v61 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
    v62 = v165;
    swift_beginAccess();
    v63 = &v62[v61];
    v58 = v150;
    sub_100007BA4(v63, v150, &unk_100174FA0, &qword_10011A700);
    if (v59(v58, 1, v60) == 1)
    {
      v64 = *v161;

      v64(v153, v168);
      v32 = v157;
      goto LABEL_14;
    }

    v49 = v149;
    (v152)(v149, v58, v168);

    v50 = v153;
    v51 = static Date.< infix(_:_:)();
    v52 = *v161;
    v53 = v49;
    v54 = v168;
    (*v161)(v53, v168);
    v52(v50, v54);
    v32 = v157;
LABEL_8:

    v55 = v156 ^ v51;
    ++v47;
    ++v48;
    v34 = v155;
    v11 = v163;
    if (v55)
    {
      v32 = v47 - 1;
      break;
    }
  }

  a3 = v146;
  v35 = v147;
  if ((v156 & 1) == 0)
  {
    goto LABEL_25;
  }

  if (v32 < v147)
  {
    goto LABEL_134;
  }

  if (v147 < v32)
  {
    v65 = 8 * v32 - 8;
    v66 = v32;
    v67 = v147;
    do
    {
      if (v67 != --v66)
      {
        v68 = *a3;
        if (!*a3)
        {
          goto LABEL_138;
        }

        v69 = *&v164[v68];
        *&v164[v68] = *(v68 + v65);
        *(v68 + v65) = v69;
      }

      ++v67;
      v65 -= 8;
      v164 += 8;
    }

    while (v67 < v66);
  }

LABEL_25:
  v70 = *(a3 + 8);
  if (v32 >= v70)
  {
    goto LABEL_34;
  }

  if (__OFSUB__(v32, v35))
  {
    goto LABEL_131;
  }

  if (v32 - v35 >= v145)
  {
LABEL_34:
    a4 = v32;
    if (v32 < v35)
    {
      goto LABEL_130;
    }

    goto LABEL_35;
  }

  if (__OFADD__(v35, v145))
  {
    goto LABEL_132;
  }

  if (v35 + v145 >= v70)
  {
    a4 = *(a3 + 8);
  }

  else
  {
    a4 = v35 + v145;
  }

  if (a4 < v35)
  {
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v32 == a4)
  {
    goto LABEL_34;
  }

  v155 = v34;
  v119 = v32;
  v165 = *a3;
  v120 = &v165[8 * v32 - 8];
  v147 = v35;
  v121 = (v35 - v32);
  v151 = a4;
LABEL_86:
  v157 = v119;
  v122 = *&v165[8 * v119];
  v152 = v121;
  v156 = v120;
  while (2)
  {
    v123 = *v120;
    v124 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
    swift_beginAccess();
    sub_100007BA4(v122 + v124, v11, &unk_100174FA0, &qword_10011A700);
    v125 = *v166;
    if ((*v166)(v11, 1, v168) == 1)
    {

      v126 = v11;
LABEL_91:
      sub_1000159AC(v126, &unk_100174FA0, &qword_10011A700);
      v132 = static Date.< infix(_:_:)();

      if ((v132 & 1) == 0)
      {
        goto LABEL_85;
      }
    }

    else
    {
      v127 = v168;
      v164 = *v162;
      (v164)(v167, v11, v168);
      v128 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
      swift_beginAccess();
      v129 = v123 + v128;
      v130 = v160;
      sub_100007BA4(v129, v160, &unk_100174FA0, &qword_10011A700);
      if (v125(v130, 1, v127) == 1)
      {
        v131 = *v161;

        v131(v167, v168);
        v126 = v130;
        v11 = v163;
        goto LABEL_91;
      }

      v133 = v168;
      v134 = v158;
      (v164)(v158, v130, v168);

      v135 = static Date.< infix(_:_:)();
      v136 = *v161;
      (*v161)(v134, v133);
      v136(v167, v133);

      v11 = v163;
      if ((v135 & 1) == 0)
      {
        goto LABEL_85;
      }
    }

    if (v165)
    {
      v137 = *v120;
      v122 = *(v120 + 1);
      *v120 = v122;
      *(v120 + 1) = v137;
      v120 -= 8;
      if (!__CFADD__(v121++, 1))
      {
        continue;
      }

LABEL_85:
      v119 = v157 + 1;
      v120 = v156 + 8;
      v121 = v152 - 1;
      a4 = v151;
      if (v157 + 1 != v151)
      {
        goto LABEL_86;
      }

      a3 = v146;
      v34 = v155;
      v35 = v147;
      if (v151 < v147)
      {
        goto LABEL_130;
      }

LABEL_35:
      v71 = swift_isUniquelyReferenced_nonNull_native();
      v151 = a4;
      if ((v71 & 1) == 0)
      {
        v34 = sub_1000445B4(0, *v34->connection + 1, 1, v34, v26, v27, v28, v29);
      }

      a4 = *v34->connection;
      v72 = *v34->airdropClient;
      v73 = a4 + 1;
      if (a4 >= v72 >> 1)
      {
        v34 = sub_1000445B4((v72 > 1), a4 + 1, 1, v34, v26, v27, v28, v29);
      }

      *v34->connection = v73;
      v74 = v34 + 16 * a4;
      v75 = v151;
      *(v74 + 4) = v35;
      *(v74 + 5) = v75;
      v165 = *v148;
      if (!v165)
      {
        goto LABEL_140;
      }

      if (a4)
      {
        while (2)
        {
          a4 = v73 - 1;
          if (v73 >= 4)
          {
            v80 = &v34->airDropClient[16 * v73];
            v81 = *(v80 - 64);
            v82 = *(v80 - 56);
            v86 = __OFSUB__(v82, v81);
            v83 = v82 - v81;
            if (v86)
            {
              goto LABEL_117;
            }

            v85 = *(v80 - 48);
            v84 = *(v80 - 40);
            v86 = __OFSUB__(v84, v85);
            v78 = v84 - v85;
            v79 = v86;
            if (v86)
            {
              goto LABEL_118;
            }

            v87 = &v34->super.isa + 2 * v73;
            v89 = *v87;
            v88 = v87[1];
            v86 = __OFSUB__(v88, v89);
            v90 = v88 - v89;
            if (v86)
            {
              goto LABEL_120;
            }

            v86 = __OFADD__(v78, v90);
            v91 = v78 + v90;
            if (v86)
            {
              goto LABEL_123;
            }

            if (v91 >= v83)
            {
              v109 = &v34->airDropClient[16 * a4];
              v111 = *v109;
              v110 = *(v109 + 1);
              v86 = __OFSUB__(v110, v111);
              v112 = v110 - v111;
              if (v86)
              {
                goto LABEL_127;
              }

              if (v78 < v112)
              {
                a4 = v73 - 2;
              }
            }

            else
            {
LABEL_54:
              if (v79)
              {
                goto LABEL_119;
              }

              v92 = &v34->super.isa + 2 * v73;
              v94 = *v92;
              v93 = v92[1];
              v95 = __OFSUB__(v93, v94);
              v96 = v93 - v94;
              v97 = v95;
              if (v95)
              {
                goto LABEL_122;
              }

              v98 = &v34->airDropClient[16 * a4];
              v100 = *v98;
              v99 = *(v98 + 1);
              v86 = __OFSUB__(v99, v100);
              v101 = v99 - v100;
              if (v86)
              {
                goto LABEL_125;
              }

              if (__OFADD__(v96, v101))
              {
                goto LABEL_126;
              }

              if (v96 + v101 < v78)
              {
                goto LABEL_68;
              }

              if (v78 < v101)
              {
                a4 = v73 - 2;
              }
            }
          }

          else
          {
            if (v73 == 3)
            {
              v76 = *v34->airDropClient;
              v77 = *v34->transfersMonitorTask;
              v86 = __OFSUB__(v77, v76);
              v78 = v77 - v76;
              v79 = v86;
              goto LABEL_54;
            }

            v102 = &v34->super.isa + 2 * v73;
            v104 = *v102;
            v103 = v102[1];
            v86 = __OFSUB__(v103, v104);
            v96 = v103 - v104;
            v97 = v86;
LABEL_68:
            if (v97)
            {
              goto LABEL_121;
            }

            v105 = v34 + 16 * a4;
            v107 = *(v105 + 4);
            v106 = *(v105 + 5);
            v86 = __OFSUB__(v106, v107);
            v108 = v106 - v107;
            if (v86)
            {
              goto LABEL_124;
            }

            if (v108 < v96)
            {
              break;
            }
          }

          v113 = a4 - 1;
          if (a4 - 1 >= v73)
          {
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
            goto LABEL_133;
          }

          v114 = *a3;
          if (!*a3)
          {
            goto LABEL_137;
          }

          v115 = a3;
          v116 = *&v34->airDropClient[16 * v113];
          a3 = *&v34->transfersMonitorTask[16 * a4];
          v117 = v159;
          sub_100043C64((v114 + 8 * v116), (v114 + 8 * *&v34->airDropClient[16 * a4]), (v114 + 8 * a3), v165);
          v159 = v117;
          if (v117)
          {
            goto LABEL_112;
          }

          if (a3 < v116)
          {
            goto LABEL_115;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v34 = sub_1000445A0(v34, v23, v24, v25, v26, v27, v28, v29);
          }

          if (v113 >= *v34->connection)
          {
            goto LABEL_116;
          }

          v118 = v34 + 16 * v113;
          *(v118 + 4) = v116;
          *(v118 + 5) = a3;
          v171 = v34;
          sub_100044514(a4);
          v34 = v171;
          v73 = *v171->connection;
          a3 = v115;
          if (v73 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v32 = *(a3 + 8);
      v33 = v151;
      if (v151 >= v32)
      {
        goto LABEL_102;
      }

      goto LABEL_4;
    }

    break;
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}

uint64_t sub_100043C64(char *a1, char *a2, char *a3, char *a4)
{
  v8 = sub_1000077C8(&unk_100174FA0, &qword_10011A700);
  __chkstk_darwin(v8 - 8);
  v77 = &v73[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v78 = &v73[-v11];
  __chkstk_darwin(v12);
  v80 = &v73[-v13];
  __chkstk_darwin(v14);
  v83 = &v73[-v15];
  v88 = type metadata accessor for Date();
  v16 = *(v88 - 8);
  __chkstk_darwin(v88);
  v74 = &v73[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  __chkstk_darwin(v19);
  v76 = &v73[-v20];
  __chkstk_darwin(v21);
  v89 = a1;
  v24 = a2 - a1;
  v25 = v24 / 8;
  v26 = a3;
  v27 = a3 - a2;
  v28 = v27 / 8;
  if (v24 / 8 >= v27 / 8)
  {
    v82 = v23;
    if (a4 != a2 || &a2[8 * v28] <= a4)
    {
      memmove(a4, a2, 8 * v28);
    }

    v29 = &a4[8 * v28];
    if (v27 < 8)
    {
      v52 = a2;
      goto LABEL_46;
    }

    v52 = a2;
    if (a2 <= v89)
    {
      goto LABEL_46;
    }

    v75 = (v16 + 8);
    v53 = v78;
    v86 = a4;
    v80 = (v16 + 48);
    v76 = (v16 + 32);
LABEL_28:
    v87 = v52;
    v54 = v52 - 8;
    v55 = v29;
    v81 = v52 - 8;
    while (1)
    {
      v56 = *(v55 - 1);
      v83 = v55 - 8;
      v84 = v26;
      v57 = *v54;
      v58 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
      swift_beginAccess();
      sub_100007BA4(v56 + v58, v53, &unk_100174FA0, &qword_10011A700);
      v59 = *v80;
      if ((*v80)(v53, 1, v88) == 1)
      {

        v60 = v53;
      }

      else
      {
        v85 = v29;
        v61 = v88;
        v79 = *v76;
        (v79)(v82, v53, v88);
        v62 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
        swift_beginAccess();
        v63 = v57 + v62;
        v64 = v77;
        sub_100007BA4(v63, v77, &unk_100174FA0, &qword_10011A700);
        if (v59(v64, 1, v61) != 1)
        {
          v68 = v74;
          (v79)(v74, v64, v61);

          v69 = v82;
          LODWORD(v79) = static Date.< infix(_:_:)();
          v70 = *v75;
          (*v75)(v68, v61);
          v70(v69, v61);

          v66 = v84;
          v29 = v85;
          v26 = v84 - 8;
          v53 = v78;
          if (v79)
          {
LABEL_39:
            v71 = v81;
            if (v66 != v87)
            {
              *v26 = *v81;
            }

            a4 = v86;
            if (v29 <= v86 || (v52 = v71, v71 <= v89))
            {
              v52 = v71;
              goto LABEL_46;
            }

            goto LABEL_28;
          }

          goto LABEL_37;
        }

        v65 = *v75;

        v65(v82, v61);
        v60 = v64;
        v29 = v85;
        v53 = v78;
      }

      v66 = v84;
      sub_1000159AC(v60, &unk_100174FA0, &qword_10011A700);
      v67 = static Date.< infix(_:_:)();

      v26 = v66 - 8;
      if (v67)
      {
        goto LABEL_39;
      }

LABEL_37:
      v54 = v81;
      v55 = v83;
      if (v29 != v66)
      {
        *v26 = *v83;
      }

      v29 = v55;
      a4 = v86;
      if (v55 <= v86)
      {
        v29 = v55;
        v52 = v87;
        goto LABEL_46;
      }
    }
  }

  v82 = &v73[-v22];
  if (a4 != v89 || &v89[8 * v25] <= a4)
  {
    memmove(a4, v89, 8 * v25);
  }

  v29 = &a4[8 * v25];
  if (v24 >= 8)
  {
    v30 = a2;
    if (a2 < v26)
    {
      v84 = (v16 + 48);
      v81 = (v16 + 32);
      v78 = (v16 + 8);
      v85 = v29;
      v79 = v26;
      while (1)
      {
        v87 = v30;
        v31 = *v30;
        v32 = *a4;
        v33 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
        swift_beginAccess();
        v34 = v83;
        sub_100007BA4(v31 + v33, v83, &unk_100174FA0, &qword_10011A700);
        v35 = *v84;
        if ((*v84)(v34, 1, v88) == 1)
        {
          break;
        }

        v86 = a4;
        v37 = v34;
        v38 = *v81;
        v39 = v88;
        (*v81)(v82, v37, v88);
        v40 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
        swift_beginAccess();
        v41 = v32 + v40;
        v42 = v80;
        sub_100007BA4(v41, v80, &unk_100174FA0, &qword_10011A700);
        if (v35(v42, 1, v39) == 1)
        {
          v43 = *v78;

          v43(v82, v88);
          v36 = v42;
          a4 = v86;
          v30 = v87;
          v26 = v79;
LABEL_12:
          sub_1000159AC(v36, &unk_100174FA0, &qword_10011A700);
          v44 = static Date.< infix(_:_:)();

          if ((v44 & 1) == 0)
          {
            goto LABEL_17;
          }

          goto LABEL_13;
        }

        v47 = v76;
        v48 = v88;
        v38(v76, v42, v88);

        v49 = v82;
        v50 = static Date.< infix(_:_:)();
        v51 = *v78;
        (*v78)(v47, v48);
        v51(v49, v48);

        a4 = v86;
        v30 = v87;
        v26 = v79;
        if ((v50 & 1) == 0)
        {
LABEL_17:
          v45 = a4;
          v46 = v89 == a4;
          a4 += 8;
          if (v46)
          {
            goto LABEL_19;
          }

LABEL_18:
          *v89 = *v45;
          goto LABEL_19;
        }

LABEL_13:
        v45 = v30;
        v46 = v89 == v30;
        v30 += 8;
        if (!v46)
        {
          goto LABEL_18;
        }

LABEL_19:
        v89 += 8;
        v29 = v85;
        if (a4 >= v85 || v30 >= v26)
        {
          goto LABEL_21;
        }
      }

      v36 = v34;
      v30 = v87;
      goto LABEL_12;
    }
  }

LABEL_21:
  v52 = v89;
LABEL_46:
  if (v52 != a4 || v52 >= &a4[(v29 - a4 + (v29 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v52, a4, 8 * ((v29 - a4) / 8));
  }

  return 1;
}

uint64_t sub_100044514(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000445A0(v3, v5, v6, v7, v8, v9, v10, v11);
    v3 = result;
  }

  v12 = *(v3 + 16);
  if (v12 <= a1)
  {
    __break(1u);
  }

  else
  {
    v13 = v12 - 1;
    v14 = v3 + 16 * a1;
    v15 = *(v14 + 32);
    memmove((v14 + 32), (v14 + 48), 16 * (v12 - 1 - a1));
    *(v3 + 16) = v13;
    *v1 = v3;
    return v15;
  }

  return result;
}

_TtC9AirDropUI33AirDropTransferSessionsController *sub_1000445B4(_TtC9AirDropUI33AirDropTransferSessionsController *result, int64_t a2, void *a3, _TtC9AirDropUI33AirDropTransferSessionsController *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->airdropClient;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->connection;
  if (v11 <= v12)
  {
    v13 = *a4->connection;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_1000077C8(&unk_100173E60, &qword_10011A720);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    *v14->connection = v12;
    *v14->airdropClient = 2 * (v16 >> 4);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  airDropClient = v14->airDropClient;
  v18 = a4->airDropClient;
  if (v9)
  {
    if (v14 != a4 || airDropClient >= &v18[16 * v12])
    {
      memmove(airDropClient, v18, 16 * v12);
    }

    *a4->connection = 0;
  }

  else
  {
    memcpy(airDropClient, v18, 16 * v12);
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

_TtC9AirDropUI33AirDropTransferSessionsController *sub_1000446CC(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v2 = a1;
  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:
    v2, v4, v5, v6, v7, v8, v9, v10;
    return &_swiftEmptyArrayStorage;
  }

  v11 = v3;
  v12 = sub_10003E710(v3, 0);
  v13 = sub_100044760(v12->airDropClient, v11, v2);
  v2 = v14;
  v13, v15, v14, v16, v17, v18, v19, v20;
  result = v12;
  if (v2 != v11)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100044760(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000199C8(&qword_100173E58, &qword_100173E50, &qword_10011A718, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_1000077C8(&qword_100173E50, &qword_10011A718);
            v9 = sub_1000FE4C8(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for AirDropTransferSession(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100044918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a1 + 40); ; i += 2)
  {
    v8 = *(i - 1) == a2 && *i == a3;
    if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

id sub_1000449C8()
{
  v0 = SFAirDropSend.Request.itemPreviewData.getter();
  if (v1 >> 60 == 15)
  {
    if (qword_100172148 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100007D20(v2, qword_100173A40);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Missing preview image data", v5, 2u);
    }

    return 0;
  }

  v7 = v0;
  v8 = v1;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v10 = sub_100003C74(isa);

  if (v10)
  {
    v11 = objc_allocWithZone(UIImage);
LABEL_11:
    v13 = [v11 initWithCGImage:v10];

    sub_100015660(v7, v8);
    return v13;
  }

  v12 = Data._bridgeToObjectiveC()().super.isa;
  v10 = SFCreateCGImageFromData();

  v11 = objc_allocWithZone(UIImage);
  if (v10)
  {
    goto LABEL_11;
  }

  v14 = v11;
  sub_1000156D8(v7, v8);
  v15 = Data._bridgeToObjectiveC()().super.isa;
  v16 = [v14 initWithData:v15];

  sub_100015660(v7, v8);
  if (!v16)
  {
    if (qword_100172148 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100007D20(v17, qword_100173A40);
    sub_1000156D8(v7, v8);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    sub_100015660(v7, v8);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v33 = v21;
      *v20 = 136315138;
      sub_1000156D8(v7, v8);
      v22 = Data.description.getter();
      v24 = v23;
      sub_100015660(v7, v8);
      v25 = sub_10003E81C(v22, v24, &v33);
      v24, v26, v27, v28, v29, v30, v31, v32;
      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to create image from preview image data: %s", v20, 0xCu);
      sub_100007920(v21);

      sub_100015660(v7, v8);
    }

    else
    {

      sub_100015660(v7, v8);
    }

    return 0;
  }

  sub_100015660(v7, v8);
  return v16;
}

void sub_100044D28(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = sub_100044918(*a1, a2, a3);
  v9 = v7;
  if (!v3 && (v8 & 1) == 0)
  {
    v10 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      v11 = *(v6 + 16);
      if (v10 == v11)
      {
        return;
      }

      v12 = 16 * v7;
      while (v10 < v11)
      {
        v15 = *(v6 + v12 + 48);
        v16 = *(v6 + v12 + 56);
        v17 = v15 == a2 && v16 == a3;
        if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          if (v10 != v9)
          {
            if (v9 >= v11)
            {
              goto LABEL_23;
            }

            v18 = (v6 + 32 + 16 * v9);
            v19 = v18[1];
            v36 = *v18;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_100044904(v6, v20, v21, v22, v23, v24, v25, v26);
            }

            v27 = v6 + 16 * v9;
            v28 = *(v27 + 40);
            *(v27 + 32) = v15;
            *(v27 + 40) = v16;
            v28, v20, v21, v22, v23, v24, v25, v26;
            if (v10 >= *(v6 + 16))
            {
              goto LABEL_24;
            }

            v13 = v6 + v12;
            v14 = *(v6 + v12 + 56);
            *(v13 + 48) = v36;
            *(v13 + 56) = v19;
            v14, v29, v30, v31, v32, v33, v34, v35;
            *a1 = v6;
          }

          ++v9;
        }

        ++v10;
        v11 = *(v6 + 16);
        v12 += 16;
        if (v10 == v11)
        {
          return;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
    }

    __break(1u);
  }
}

void sub_100044EA0(void *a1, __n128 a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100007D20(v6, qword_100173A40);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "AirDropTransferSessionsController received a connection! %@", v10, 0xCu);
    sub_1000159AC(v11, &qword_100172EB0, &qword_100119410);
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  *(v13 + 24) = ObjectType;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_100047570;
  *(v14 + 24) = v13;
  v24 = sub_100047588;
  v25 = v14;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v23 = sub_10005A770;
  *(&v23 + 1) = &unk_10015DF48;
  v15 = _Block_copy(&aBlock);
  v16 = v3;

  [v7 configureConnection:v15];
  _Block_release(v15);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  else
  {
    [v7 activate];
    v17 = *&v16[OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_connection];
    *&v16[OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_connection] = v7;
    v18 = v7;

    if ([v18 remoteTarget])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
    }

    aBlock = v20;
    v23 = v21;
    if (*(&v21 + 1))
    {
      sub_1000077C8(&qword_100173D88, &qword_10011A648);
      if (swift_dynamicCast())
      {
        *&v16[OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_airDropClient] = v19;

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      sub_1000159AC(&aBlock, &qword_1001746C0, &qword_10011A510);
    }
  }
}

uint64_t sub_10004520C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v209 = a4;
  v219 = a3;
  v216 = a1;
  v217 = a2;
  v4 = sub_1000077C8(&unk_100173C50, &qword_10011D9D0);
  v206 = *(v4 - 8);
  v207 = *(v206 + 64);
  __chkstk_darwin(v4 - 8);
  v208 = &v195 - v5;
  v195 = sub_1000077C8(&unk_100173C98, &unk_10011A300);
  v198 = *(v195 - 8);
  __chkstk_darwin(v195);
  v197 = &v195 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = v6;
  __chkstk_darwin(v7);
  v203 = &v195 - v8;
  v201 = sub_1000077C8(&unk_100172F90, &qword_100118CE0);
  v204 = *(v201 - 8);
  __chkstk_darwin(v201);
  v200 = &v195 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v199 = &v195 - v11;
  __chkstk_darwin(v12);
  v202 = &v195 - v13;
  v14 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  __chkstk_darwin(v14 - 8);
  v218 = &v195 - v15;
  v212 = sub_1000077C8(&qword_100173CA8, &unk_10011A310);
  v16 = *(v212 - 8);
  __chkstk_darwin(v212);
  v205 = (&v195 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v20 = (&v195 - v19);
  v21 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v195 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for SFAirDrop.DeclineAction();
  v214 = *(v25 - 8);
  v215 = v25;
  v26 = *(v214 + 64);
  __chkstk_darwin(v25);
  v213 = &v195 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v211 = &v195 - v28;
  __chkstk_darwin(v29);
  v31 = &v195 - v30;
  v32 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v210 = &v195 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v35);
  v38 = &v195 - v37;
  (*(v22 + 16))(v24, v219, v21, v36);
  v39 = (*(v22 + 88))(v24, v21);
  if (v39 == enum case for SFAirDropReceive.Transfer.State.waitingForAskResponse(_:))
  {
    (*(v22 + 96))(v24, v21);
    (*(v33 + 32))(v38, v24, v32);
    goto LABEL_3;
  }

  if (v39 == enum case for SFAirDropReceive.Transfer.State.transferring(_:))
  {
    (*(v22 + 96))(v24, v21);
    v75 = sub_1000077C8(&unk_100174F70, &unk_10011A360);
    v76 = v75[12];
    *&v24[v75[16] + 8], v77, v78, v79, v80, v81, v82, v83;
    v84 = v75[20];
    v85 = v214;
    v86 = v215;
    v87 = *(v214 + 32);
    v87(v31, &v24[v84], v215);
    v88 = type metadata accessor for SFAirDrop.Progress();
    (*(*(v88 - 8) + 8))(&v24[v76], v88);
LABEL_10:
    v98 = type metadata accessor for SFAirDropReceive.ItemDestination();
    (*(*(v98 - 8) + 8))(v24, v98);
    v99 = type metadata accessor for TaskPriority();
    v100 = v218;
    (*(*(v99 - 8) + 56))(v218, 1, 1, v99);
    v101 = v213;
    v87(v213, v31, v86);
    v102 = (*(v85 + 80) + 16) & ~*(v85 + 80);
    v103 = swift_allocObject();
    v87((v103 + v102), v101, v86);
    v104 = (v103 + ((v26 + v102 + 7) & 0xFFFFFFFFFFFFFFF8));
    v105 = v217;
    *v104 = v216;
    v104[1] = v105;

    static Task<>.noThrow(priority:operation:)();

    return sub_1000159AC(v100, &qword_100172F50, &qword_10011E500);
  }

  if (v39 == enum case for SFAirDropReceive.Transfer.State.analyzingFullContent(_:))
  {
    (*(v22 + 96))(v24, v21);
    v89 = sub_1000077C8(&unk_100173CD0, &unk_10011C510);
    *&v24[*(v89 + 48)], v90, v91, v92, v93, v94, v95, v96;
    v97 = *(v89 + 80);
    v85 = v214;
    v86 = v215;
    v87 = *(v214 + 32);
    v87(v31, &v24[v97], v215);
    goto LABEL_10;
  }

  if (v39 == enum case for SFAirDropReceive.Transfer.State.waitingForSensitiveContentResponse(_:))
  {
    (*(v22 + 96))(v24, v21);
    v106 = sub_1000077C8(&qword_100173CE0, &qword_100118F90);
    *&v24[*(v106 + 48)], v107, v108, v109, v110, v111, v112, v113;
    (*(v33 + 32))(v38, &v24[*(v106 + 64)], v32);
    v114 = type metadata accessor for SFAirDropReceive.ItemDestination();
    (*(*(v114 - 8) + 8))(v24, v114);
LABEL_3:
    SFAirDrop.PermissionRequest.style.getter();
    (*(v33 + 8))(v38, v32);
    v40 = v212;
    if ((*(v16 + 88))(v20, v212) != enum case for SFAirDrop.PermissionRequest.Style.inline<A>(_:))
    {
      return (*(v16 + 8))(v20, v40);
    }

    (*(v16 + 96))(v20, v40);
    v20[1], v41, v42, v43, v44, v45, v46, v47;
    v20[3], v48, v49, v50, v51, v52, v53, v54;
    v20[4], v55, v56, v57, v58, v59, v60, v61;
    v62 = sub_1000077C8(&qword_100173CC0, qword_10011D010);
    v63 = v214;
    v64 = v215;
    v65 = *(v214 + 32);
    v66 = v211;
    v65(v211, v20 + *(v62 + 80), v215);
    v67 = type metadata accessor for TaskPriority();
    v68 = v218;
    (*(*(v67 - 8) + 56))(v218, 1, 1, v67);
    v69 = v213;
    (*(v63 + 16))(v213, v66, v64);
    v70 = (*(v63 + 80) + 16) & ~*(v63 + 80);
    v71 = swift_allocObject();
    v65((v71 + v70), v69, v64);
    v72 = (v71 + ((v26 + v70 + 7) & 0xFFFFFFFFFFFFFFF8));
    v73 = v217;
    *v72 = v216;
    v72[1] = v73;

    static Task<>.noThrow(priority:operation:)();

    sub_1000159AC(v68, &qword_100172F50, &qword_10011E500);
    return (*(v63 + 8))(v211, v64);
  }

  if (v39 == enum case for SFAirDropReceive.Transfer.State.waitingForOpenResponse(_:))
  {
    (*(v22 + 96))(v24, v21);
    v115 = sub_1000077C8(&qword_100173078, &unk_100118F60);
    *&v24[v115[12]], v116, v117, v118, v119, v120, v121, v122;
    *&v24[v115[16]], v123, v124, v125, v126, v127, v128, v129;
    v130 = &v24[v115[20]];
    v131 = v210;
    v132 = v32;
    (*(v33 + 32))(v210, v130, v32);
    v133 = v205;
    SFAirDrop.PermissionRequest.style.getter();
    v134 = v212;
    if ((*(v16 + 88))(v133, v212) == enum case for SFAirDrop.PermissionRequest.Style.inline<A>(_:))
    {
      (*(v16 + 96))(v133, v134);
      v133[1], v135, v136, v137, v138, v139, v140, v141;
      v133[3], v142, v143, v144, v145, v146, v147, v148;
      v149 = v133[4];
      v150 = sub_1000077C8(&qword_100173CC0, qword_10011D010);
      (*(v214 + 8))(v133 + *(v150 + 80), v215);
      if (*v149->connection)
      {
        v158 = v204;
        v159 = *(v204 + 16);
        v160 = v199;
        v161 = v201;
        v159(v199, v149 + ((*(v204 + 80) + 32) & ~*(v204 + 80)), v201);
        v149, v162, v163, v164, v165, v166, v167, v168;
        v169 = v202;
        (*(v158 + 32))(v202, v160, v161);
        v170 = v200;
        v159(v200, v169, v161);
        if ((*(v158 + 88))(v170, v161) == enum case for SFAirDrop.AcceptAction.single<A>(_:))
        {
          (*(v158 + 96))(v170, v161);
          v219 = *(sub_1000077C8(&qword_100173CC8, &qword_10011A330) + 48);
          v171 = v170;
          v172 = v198;
          v215 = *(v198 + 32);
          v173 = v195;
          v215(v203, v171, v195);
          v174 = type metadata accessor for UUID();
          (*(*(v174 - 8) + 8))(&v171[v219], v174);
          v175 = type metadata accessor for TaskPriority();
          v176 = *(*(v175 - 8) + 56);
          v219 = v132;
          v176(v218, 1, 1, v175);
          v177 = v197;
          v178 = v173;
          (*(v172 + 16))(v197, v203, v173);
          v179 = (*(v172 + 80) + 16) & ~*(v172 + 80);
          v180 = (v196 + v179 + 7) & 0xFFFFFFFFFFFFFFF8;
          v181 = swift_allocObject();
          v215(v181 + v179, v177, v178);
          v182 = (v181 + v180);
          v183 = v217;
          *v182 = v216;
          v182[1] = v183;

          v184 = v218;
          static Task<>.noThrow(priority:operation:)();

          sub_1000159AC(v184, &qword_100172F50, &qword_10011E500);
          (*(v172 + 8))(v203, v178);
          (*(v204 + 8))(v202, v161);
          (*(v33 + 8))(v210, v219);
        }

        else
        {
          v193 = *(v158 + 8);
          v193(v169, v161);
          (*(v33 + 8))(v210, v132);
          v193(v170, v161);
        }
      }

      else
      {
        v149, v151, v152, v153, v154, v155, v156, v157;
        (*(v33 + 8))(v131, v132);
      }
    }

    else
    {
      (*(v33 + 8))(v131, v132);
      (*(v16 + 8))(v133, v134);
    }

    v194 = type metadata accessor for SFAirDropReceive.ItemDestination();
    return (*(*(v194 - 8) + 8))(v24, v194);
  }

  else
  {
    v185 = type metadata accessor for TaskPriority();
    v186 = v218;
    (*(*(v185 - 8) + 56))(v218, 1, 1, v185);
    v187 = v208;
    sub_100007BA4(v209, v208, &unk_100173C50, &qword_10011D9D0);
    v188 = (*(v206 + 80) + 16) & ~*(v206 + 80);
    v189 = (v207 + v188 + 7) & 0xFFFFFFFFFFFFFFF8;
    v190 = swift_allocObject();
    sub_100046794(v187, v190 + v188);
    v191 = (v190 + v189);
    v192 = v217;
    *v191 = v216;
    v191[1] = v192;

    static Task<>.noThrow(priority:operation:)();

    sub_1000159AC(v186, &qword_100172F50, &qword_10011E500);
    return (*(v22 + 8))(v24, v21);
  }
}

uint64_t sub_1000462FC(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_100046334()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000463C4;

  return sub_1000388E8(v0);
}

uint64_t sub_1000463C4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1000464C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000167E4;

  return sub_100038A14(a1, v4);
}

uint64_t sub_100046578()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000465B8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000167E4;

  return sub_100038148(a1, v5, v4);
}

uint64_t sub_100046664()
{
  v1 = *(sub_1000077C8(&unk_100173C50, &qword_10011D9D0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for SFAirDrop.DeclineAction();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v14 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(v0 + v14 + 8), v7, v8, v9, v10, v11, v12, v13;

  return _swift_deallocObject(v0, v14 + 16, v2 | 7);
}

uint64_t sub_100046794(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000077C8(&unk_100173C50, &qword_10011D9D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100046804(uint64_t a1)
{
  v4 = *(sub_1000077C8(&unk_100173C50, &qword_10011D9D0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000167E4;

  return sub_100039174(a1, v1 + v5, v7, v8);
}

uint64_t sub_10004692C()
{
  v1 = sub_1000077C8(&unk_100173C98, &unk_10011A300);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  *(v0 + v5 + 8), v6, v7, v8, v9, v10, v11, v12;

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1000469D8(uint64_t a1)
{
  v4 = *(sub_1000077C8(&unk_100173C98, &unk_10011A300) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000167E4;

  return sub_100038C14(a1, v1 + v5, v7, v8);
}

uint64_t sub_100046B04(uint64_t a1)
{
  v4 = *(type metadata accessor for SFAirDrop.DeclineAction() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000167E4;

  return sub_100039ADC(a1, v1 + v5, v7, v8);
}

uint64_t sub_100046C20()
{
  v1 = type metadata accessor for SFAirDrop.DeclineAction();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  *(v0 + v5 + 8), v6, v7, v8, v9, v10, v11, v12;

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100046CC0(uint64_t a1)
{
  v4 = *(type metadata accessor for SFAirDrop.DeclineAction() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000167E4;

  return sub_1000396FC(a1, v1 + v5, v7, v8);
}

uint64_t sub_100046DFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100046EC4(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 actionIdentifier];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v14;
  if (v10 == v13 && v12 == v14)
  {
    v14, v14, v15, v16, v17, v18, v19, v20;
    v12, v38, v39, v40, v41, v42, v43, v44;
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v21, v24, v25, v26, v27, v28, v29, v30;
    v12, v31, v32, v33, v34, v35, v36, v37;
    if ((v23 & 1) == 0)
    {
      return (*(a2 + 16))(a2);
    }
  }

  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  sub_100007D20(v45, qword_100173A40);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&_mh_execute_header, v46, v47, "Notification was tapped, they navigated to the completed url", v48, 2u);
  }

  v49 = [a1 notification];
  v50 = [v49 request];

  v51 = [v50 content];
  v52 = [v51 defaultActionURL];

  if (v52)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v5 + 8))(v8, v4);
  }

  return (*(a2 + 16))(a2);
}

uint64_t sub_10004718C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000471CC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000167E4;

  return sub_100032AC4(v2, v3);
}

uint64_t sub_10004727C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000167E4;

  return sub_10003E054(v2, v3, v4);
}

uint64_t sub_10004733C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004737C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000167E4;

  return sub_10003E13C(a1, v4, v5, v6);
}

uint64_t sub_100047448()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100047480(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000167E4;

  return sub_10003E520(a1, v4);
}

uint64_t sub_100047538()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100047598()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100047604(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000167E4;

  return sub_1000281C0(a1);
}

uint64_t sub_1000476B8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000167E4;

  return sub_100028260(v0);
}

uint64_t sub_100047748(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000167E4;

  return sub_1000F9778(a1, v4);
}

uint64_t sub_100047808(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000167E4;

  return sub_100028E70(a1, v4);
}

uint64_t sub_1000478DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000077C8(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_100047944()
{
  v1 = sub_1000077C8(&unk_100173C98, &unk_10011A300);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000479D8(uint64_t a1)
{
  v4 = *(sub_1000077C8(&unk_100173C98, &unk_10011A300) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000167E4;

  return sub_100037314(a1, v1 + v5);
}

void sub_100047AC0(_TtC9AirDropUI33AirDropTransferSessionsController *self, SEL x1_0, id x2_0, id x3_0, id x4_0, id x5_0, id x6_0, id x7_0)
{
  if (x2_0)
  {
    self, x1_0, x2_0, x3_0, x4_0, x5_0, x6_0, x7_0;
  }
}

uint64_t sub_100047AEC(uint64_t a1)
{
  v4 = *(type metadata accessor for SFAirDropSend.Request() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000167E4;

  return sub_1000366D8(a1, v6, v1 + v5, v8, v9);
}

uint64_t sub_100047C30(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v1 + v5, v2);
  *(v1 + v6 + 8), v7, v8, v9, v10, v11, v12, v13;

  return _swift_deallocObject(v1, v6 + 16, v4 | 7);
}

uint64_t sub_100047D14(uint64_t a1)
{
  v4 = *(type metadata accessor for SFAirDropReceive.AskRequest() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000167E4;

  return sub_100035C3C(a1, v6, v1 + v5, v8, v9);
}

uint64_t sub_100047E64(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return _swift_deallocObject(v2, 40, 7);
}

uint64_t sub_100047EBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000BCF0;

  return sub_1000356B4(a1, v4, v5, v6);
}

uint64_t sub_100047F70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100047FB8()
{
  v1 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100048084(uint64_t a1)
{
  v4 = *(type metadata accessor for SFAirDrop.NearbySharingInteraction() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000BCF0;

  return sub_100034D54(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10004817C()
{

  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 48), v8, v9, v10, v11, v12, v13, v14;

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000481C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000167E4;

  return sub_1000350D4(a1, v4, v5, v6, v7, v8);
}

void sub_100048310(void *a1, _TtC9AirDropUI33AirDropTransferSessionsController *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = (v8 + OBJC_IVAR____TtC9AirDropUI29ShockwaveEffectViewController_assetState);
  v10 = *(v8 + OBJC_IVAR____TtC9AirDropUI29ShockwaveEffectViewController_assetState);
  v11 = *(v8 + OBJC_IVAR____TtC9AirDropUI29ShockwaveEffectViewController_assetState + 8);
  *v9 = a1;
  v9[1] = a2;
  if (!a2)
  {
    if (!v11)
    {
      return;
    }

    goto LABEL_10;
  }

  if (!v11 || (v10 == a1 ? (v12 = v11 == a2) : (v12 = 0), !v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
LABEL_10:
    if (*(v8 + OBJC_IVAR____TtC9AirDropUI29ShockwaveEffectViewController_hasSetInitialState) == 1)
    {
      sub_1000489B8(1);
    }
  }

  v11, a2, v10, a4, a5, a6, a7, a8;
}

void sub_1000483A8()
{
  v1 = v0;
  v0[OBJC_IVAR____TtC9AirDropUI29ShockwaveEffectViewController_hasSetInitialState] = 0;
  v2 = OBJC_IVAR____TtC9AirDropUI29ShockwaveEffectViewController_effectState;
  v3 = type metadata accessor for SFShockwaveEffectState();
  (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  v4 = &v1[OBJC_IVAR____TtC9AirDropUI29ShockwaveEffectViewController_assetState];
  sub_1000194DC();
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = static NSUserDefaults.airdrop.getter();
  SFAirDropUserDefaults.shockwaveEffectVariant.getter();
  v7 = v6;

  v8 = type metadata accessor for ShockwaveEffectViewController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v11 = objc_allocWithZone(BSUICAPackageView);
  v12 = String._bridgeToObjectiveC()();
  v7, v13, v14, v15, v16, v17, v18, v19;
  v20 = [v11 initWithPackageName:v12 inBundle:v10];

  if (!v20)
  {
    __break(1u);
    goto LABEL_10;
  }

  *&v1[OBJC_IVAR____TtC9AirDropUI29ShockwaveEffectViewController_effectAssetView] = v20;
  v77.receiver = v1;
  v77.super_class = v8;
  v21 = objc_msgSendSuper2(&v77, "initWithNibName:bundle:", 0, 0);
  v22 = [v21 view];
  if (!v22)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v23 = v22;
  v24 = objc_opt_self();
  v25 = [v24 clearColor];
  [v23 setBackgroundColor:v25];

  v26 = OBJC_IVAR____TtC9AirDropUI29ShockwaveEffectViewController_effectAssetView;
  v27 = *&v21[OBJC_IVAR____TtC9AirDropUI29ShockwaveEffectViewController_effectAssetView];
  v28 = [v24 clearColor];
  [v27 setBackgroundColor:v28];

  [*&v21[v26] setTranslatesAutoresizingMaskIntoConstraints:0];
  v29 = *&v21[v26];
  v30 = [v21 view];
  if (!v30)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v31 = v30;
  [v30 frame];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  [v29 setFrame:{v33, v35, v37, v39}];
  v40 = [v21 view];
  if (!v40)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v41 = v40;
  [v40 addSubview:*&v21[v26]];

  [*&v21[v26] sizeThatFits:{0.0, 0.0}];
  v43 = v42;
  v45 = v44;
  v46 = [v21 view];
  if (!v46)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v47 = v46;
  [v46 frame];
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;

  v78.origin.x = v49;
  v78.origin.y = v51;
  v78.size.width = v53;
  v78.size.height = v55;
  Height = CGRectGetHeight(v78);
  v57 = *&v21[v26];
  [v57 transform];
  v73 = *&v76.c;
  v74 = *&v76.a;
  tx = v76.tx;
  ty = v76.ty;
  v60 = [v21 view];
  if (!v60)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v61 = v60;
  v62 = v43 / v45 * Height;
  [v60 frame];
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;

  v79.origin.x = v64;
  v79.origin.y = v66;
  v79.size.width = v68;
  v79.size.height = v70;
  Width = CGRectGetWidth(v79);
  *&v76.a = v74;
  *&v76.c = v73;
  v76.tx = tx;
  v76.ty = ty;
  CGAffineTransformScale(&v75, &v76, Width / v62 * 1.003, 1.0);
  v76 = v75;
  [v57 setTransform:&v76];

  v72 = [v21 view];
  if (v72)
  {
    [v72 setUserInteractionEnabled:0];

    [*&v21[v26] bs_setHitTestingDisabled:1];
    return;
  }

LABEL_15:
  __break(1u);
}

void sub_1000489B8(char a1)
{
  v2 = v1;
  v4 = sub_1000077C8(&qword_100173F30, &unk_10011A930);
  __chkstk_darwin(v4 - 8);
  v6 = &v222[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v226 = &v222[-v8];
  v9 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v222[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1000077C8(&qword_100173F38, &qword_10011E770);
  __chkstk_darwin(v13 - 8);
  v15 = &v222[-v14];
  v16 = type metadata accessor for SFNearbySharingInteraction();
  __chkstk_darwin(v16);
  __chkstk_darwin(v17);
  v22 = *(v2 + OBJC_IVAR____TtC9AirDropUI29ShockwaveEffectViewController_assetState + 8);
  if (!v22)
  {
    return;
  }

  v224 = v21;
  v227 = &v222[-v19];
  v228 = v20;
  v229 = v18;
  v23 = *(v2 + OBJC_IVAR____TtC9AirDropUI29ShockwaveEffectViewController_assetState);
  v24 = *(v2 + OBJC_IVAR____TtC9AirDropUI29ShockwaveEffectViewController_effectAssetView);

  v225 = v23;
  v25 = String._bridgeToObjectiveC()();
  [v24 setState:v25 animated:a1 & 1 transitionSpeed:0 completion:0.7];

  if (qword_100172150 != -1)
  {
    swift_once();
  }

  v26 = *(qword_10017F1E0 + OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_nearbySharingInteractionCoordinator);
  sub_100096D04(v15);

  v28 = v228;
  v27 = v229;
  if ((*(v228 + 48))(v15, 1, v229) != 1)
  {
    (*(v28 + 32))(v227, v15, v27);
    SFNearbySharingInteraction.state.getter();
    v56 = (*(v10 + 88))(v12, v9);
    v57 = v56;
    v58 = enum case for SFAirDrop.NearbySharingInteraction.State.presenceDetected(_:);
    v59 = v56 != enum case for SFAirDrop.NearbySharingInteraction.State.presenceDetected(_:) && v56 == enum case for SFAirDrop.NearbySharingInteraction.State.connecting(_:);
    v60 = !v59;
    if (!v59)
    {
      (*(v10 + 8))(v12, v9);
    }

    v61 = OBJC_IVAR____TtC9AirDropUI29ShockwaveEffectViewController_effectState;
    swift_beginAccess();
    v62 = v226;
    sub_100049E10(v2 + v61, v226);
    v63 = type metadata accessor for SFShockwaveEffectState();
    v64 = *(v63 - 8);
    if ((*(v64 + 48))(v62, 1, v63) == 1)
    {
      goto LABEL_18;
    }

    sub_100049E10(v62, v6);
    v85 = (*(v64 + 88))(v6, v63);
    if (v85 == enum case for SFShockwaveEffectState.connectionHint(_:))
    {
      v86 = v60 ^ 1;
      sub_1000194DC();
      v87 = static NSUserDefaults.airdrop.getter();
      v88 = SFAirDropUserDefaults.shockwaveHapticsPlayerStartsEarly.getter();

      v89 = (v57 == v58) & v88 | v86;
      if (qword_100172218 != -1)
      {
        swift_once();
      }

      v90 = type metadata accessor for Logger();
      v91 = sub_100007D20(v90, qword_10017F350);

      v224 = v91;
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.default.getter();
      v22, v94, v95, v96, v97, v98, v99, v100;
      if (os_log_type_enabled(v92, v93))
      {
        v223 = v57 == v58;
        v108 = swift_slowAlloc();
        v230 = swift_slowAlloc();
        *v108 = 136316162;
        v109 = sub_10003E81C(v225, v22, &v230);
        v22, v110, v111, v112, v113, v114, v115, v116;
        *(v108 + 4) = v109;
        *(v108 + 12) = 2080;
        if (v89)
        {
          v117 = 5457241;
        }

        else
        {
          v117 = 20302;
        }

        if (v89)
        {
          v118 = 0xE300000000000000;
        }

        else
        {
          v118 = 0xE200000000000000;
        }

        v119 = v89;
        v120 = sub_10003E81C(v117, v118, &v230);
        v118, v121, v122, v123, v124, v125, v126, v127;
        *(v108 + 14) = v120;
        *(v108 + 22) = 1024;
        v128 = static NSUserDefaults.airdrop.getter();
        LOBYTE(v120) = SFAirDropUserDefaults.shockwaveHapticsPlayerStartsEarly.getter();

        *(v108 + 24) = v120 & 1;
        *(v108 + 28) = 1024;
        *(v108 + 30) = v223;
        *(v108 + 34) = 1024;
        *(v108 + 36) = v86;
        _os_log_impl(&_mh_execute_header, v92, v93, "Should play haptics for SFShockwaveEffectState: %s? %s , shockwaveHapticsPlayerStartsEarly:%{BOOL}d, isInteractionStatePresenceDetected:%{BOOL}d, isInteractionStateConnecting:%{BOOL}d", v108, 0x28u);
        swift_arrayDestroy();
        v62 = v226;
      }

      else
      {
        v22, v101, v102, v103, v104, v105, v106, v107;

        v119 = v89;
      }

      v171 = v229;
      if (v119)
      {
        if (SFNearbySharingInteraction.isInitiator.getter())
        {
          v172 = 1;
        }

        else
        {
          v172 = SFNearbySharingInteraction.isInitiatorRoleExpected.getter();
        }

        v208 = Logger.logObject.getter();
        v209 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v208, v209))
        {
          v210 = swift_slowAlloc();
          v211 = swift_slowAlloc();
          v230 = v211;
          *v210 = 136315138;
          if (v172)
          {
            v212 = 0x6F74616974696E69;
          }

          else
          {
            v212 = 0x7265766965636572;
          }

          if (v172)
          {
            v213 = 0xE900000000000072;
          }

          else
          {
            v213 = 0xE800000000000000;
          }

          v214 = sub_10003E81C(v212, v213, &v230);
          v213, v215, v216, v217, v218, v219, v220, v221;
          *(v210 + 4) = v214;
          _os_log_impl(&_mh_execute_header, v208, v209, "Playing hinting haptics as %s", v210, 0xCu);
          sub_100007920(v211);
          v171 = v229;
        }

        if (v172)
        {
          if (qword_100172240 != -1)
          {
            swift_once();
          }

          sub_1000F7B34();
        }

        else
        {
          if (qword_100172240 != -1)
          {
            swift_once();
          }

          sub_1000F7DF4();
        }
      }
    }

    else
    {
      if (v85 == enum case for SFShockwaveEffectState.shockwave(_:))
      {
        v136 = v229;
        if (qword_100172218 != -1)
        {
          swift_once();
        }

        v137 = type metadata accessor for Logger();
        sub_100007D20(v137, qword_10017F350);
        v138 = v228;
        v139 = v224;
        (*(v228 + 16))(v224, v227, v136);

        v140 = Logger.logObject.getter();
        v141 = static os_log_type_t.default.getter();
        v22, v142, v143, v144, v145, v146, v147, v148;
        if (os_log_type_enabled(v140, v141))
        {
          v149 = swift_slowAlloc();
          v230 = swift_slowAlloc();
          *v149 = 136315394;
          v150 = SFNearbySharingInteraction.isInitiator.getter();
          if (v150)
          {
            v151 = 0x6F74616974696E69;
          }

          else
          {
            v151 = 0x7265766965636572;
          }

          if (v150)
          {
            v152 = 0xE900000000000072;
          }

          else
          {
            v152 = 0xE800000000000000;
          }

          v153 = *(v138 + 8);
          v153(v139, v229);
          v154 = sub_10003E81C(v151, v152, &v230);
          v155 = v152;
          v136 = v229;
          v155, v156, v157, v158, v159, v160, v161, v162;
          *(v149 + 4) = v154;
          *(v149 + 12) = 2080;
          v163 = sub_10003E81C(v225, v22, &v230);
          v22, v164, v165, v166, v167, v168, v169, v170;
          *(v149 + 14) = v163;
          _os_log_impl(&_mh_execute_header, v140, v141, "Playing shockwave haptics as %s for SFShockwaveEffectState: %s", v149, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          v22, v200, v201, v202, v203, v204, v205, v206;
          v153 = *(v138 + 8);
          v153(v139, v136);
        }

        if (SFNearbySharingInteraction.isInitiator.getter())
        {
          if (qword_100172240 != -1)
          {
            swift_once();
          }

          v207.n128_f64[0] = sub_1000F7C94();
        }

        else
        {
          if (qword_100172240 != -1)
          {
            swift_once();
          }

          v207.n128_f64[0] = sub_1000F7F54();
        }

        (v153)(v227, v136, v207);
        goto LABEL_88;
      }

      v171 = v229;
      if (v85 != enum case for SFShockwaveEffectState.cleaningUp(_:))
      {
        (*(v64 + 8))(v6, v63);
LABEL_18:
        if (qword_100172218 != -1)
        {
          swift_once();
        }

        v65 = type metadata accessor for Logger();
        sub_100007D20(v65, qword_10017F350);

        v66 = Logger.logObject.getter();
        v67 = static os_log_type_t.default.getter();
        v22, v68, v69, v70, v71, v72, v73, v74;
        if (os_log_type_enabled(v66, v67))
        {
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v230 = v76;
          *v75 = 136315138;
          v77 = sub_10003E81C(v225, v22, &v230);
          v22, v78, v79, v80, v81, v82, v83, v84;
          *(v75 + 4) = v77;
          _os_log_impl(&_mh_execute_header, v66, v67, "Not playing haptics for SFShockwaveEffectState: %s", v75, 0xCu);
          sub_100007920(v76);
        }

        else
        {

          v22, v129, v130, v131, v132, v133, v134, v135;
        }

        (*(v228 + 8))(v227, v229);
        goto LABEL_88;
      }

      if (qword_100172218 != -1)
      {
        swift_once();
      }

      v173 = type metadata accessor for Logger();
      sub_100007D20(v173, qword_10017F350);

      v174 = Logger.logObject.getter();
      v175 = static os_log_type_t.default.getter();
      v22, v176, v177, v178, v179, v180, v181, v182;
      if (os_log_type_enabled(v174, v175))
      {
        v190 = swift_slowAlloc();
        v191 = swift_slowAlloc();
        v230 = v191;
        *v190 = 136315138;
        v192 = sub_10003E81C(v225, v22, &v230);
        v22, v193, v194, v195, v196, v197, v198, v199;
        *(v190 + 4) = v192;
        _os_log_impl(&_mh_execute_header, v174, v175, "Cleaning up haptics for SFShockwaveEffectState: %s", v190, 0xCu);
        sub_100007920(v191);

        v171 = v229;
      }

      else
      {
        v22, v183, v184, v185, v186, v187, v188, v189;
      }

      if (qword_100172240 != -1)
      {
        swift_once();
      }

      sub_1000F80B4();
    }

    (*(v228 + 8))(v227, v171);
LABEL_88:
    sub_1000159AC(v62, &qword_100173F30, &unk_10011A930);
    return;
  }

  sub_1000159AC(v15, &qword_100173F38, &qword_10011E770);
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_100007D20(v29, qword_10017F350);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  v22, v32, v33, v34, v35, v36, v37, v38;
  if (os_log_type_enabled(v30, v31))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v231[0] = v47;
    *v46 = 136315138;
    v48 = sub_10003E81C(v225, v22, v231);
    v22, v49, v50, v51, v52, v53, v54, v55;
    *(v46 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v30, v31, "Skipping playing Haptics with ShockwaveEffectView's state change to %s, currentNearbyInteraction was nil", v46, 0xCu);
    sub_100007920(v47);
  }

  else
  {
    v22, v39, v40, v41, v42, v43, v44, v45;
  }
}

id sub_1000498F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShockwaveEffectViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ShockwaveEffectViewController(uint64_t a1)
{
  result = qword_100173F18;
  if (!qword_100173F18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000499F4(uint64_t a1)
{
  sub_100049AA4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100049AA4(uint64_t a1)
{
  if (!qword_100173F28)
  {
    type metadata accessor for SFShockwaveEffectState();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100173F28);
    }
  }
}

id sub_100049AFC()
{
  v0 = objc_allocWithZone(type metadata accessor for ShockwaveEffectViewController(0));

  return [v0 init];
}

void sub_100049B34(uint64_t a1)
{
  v2 = type metadata accessor for SFShockwaveEffectState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000077C8(&qword_100173F30, &unk_10011A930);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  dispatch thunk of ShockwaveAnimationCoordinator.state.getter();
  (*(v3 + 56))(v8, 0, 1, v2);
  v9 = OBJC_IVAR____TtC9AirDropUI29ShockwaveEffectViewController_effectState;
  swift_beginAccess();
  sub_10004A0E0(v8, a1 + v9);
  swift_endAccess();
  dispatch thunk of ShockwaveAnimationCoordinator.state.getter();
  v10 = SFShockwaveEffectState.assetState.getter();
  v12 = v11;
  (*(v3 + 8))(v5, v2);
  sub_100048310(v10, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_100049D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004A08C();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100049D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004A08C();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100049DE8(uint64_t a1)
{
  sub_10004A08C();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_100049E10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000077C8(&qword_100173F30, &unk_10011A930);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100049F94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100049FDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10004A02C()
{
  result = qword_100177090;
  if (!qword_100177090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177090);
  }

  return result;
}

unint64_t sub_10004A08C()
{
  result = qword_100173F40;
  if (!qword_100173F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173F40);
  }

  return result;
}

uint64_t sub_10004A0E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000077C8(&qword_100173F30, &unk_10011A930);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004A150(uint64_t a1)
{
  v1 = *(a1 + 32) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10004A16C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 33))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 32) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 32) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10004A1C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_10004A22C(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 32) = *(result + 32) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = -64;
  }

  return result;
}

uint64_t sub_10004A280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000077C8(&qword_100173F48, qword_10011AAE0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10004A36C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000077C8(&qword_100173F48, qword_10011AAE0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t type metadata accessor for AirDropDescriptionView(uint64_t a1)
{
  result = qword_100173FA8;
  if (!qword_100173FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004A480(uint64_t a1)
{
  sub_10004A51C(319);
  if (v1 <= 0x3F)
  {
    sub_10004A5CC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10004A51C(uint64_t a1)
{
  if (!qword_100173FB8)
  {
    sub_10004A578();
    v1 = type metadata accessor for ScaledMetric();
    if (!v2)
    {
      atomic_store(v1, &qword_100173FB8);
    }
  }
}

unint64_t sub_10004A578()
{
  result = qword_100173FC0;
  if (!qword_100173FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173FC0);
  }

  return result;
}

void sub_10004A5CC()
{
  if (!qword_100173FC8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100173FC8);
    }
  }
}

uint64_t sub_10004A638()
{
  v1 = sub_1000077C8(&qword_100177A70, &qword_10011AC50);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = v0 + *(type metadata accessor for AirDropDescriptionView(0) + 24);
  if (*(v4 + 32) <= 0x3Fu && (v5 = *(v4 + 16)) != 0)
  {
  }

  else
  {
    sub_1000077C8(&qword_100173F48, qword_10011AAE0);
    ScaledMetric.wrappedValue.getter();
    v6 = type metadata accessor for Font.Design();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v5 = static Font.system(size:weight:design:)();
    sub_1000159AC(v3, &qword_100177A70, &qword_10011AC50);
  }

  return v5;
}

uint64_t sub_10004A77C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000077C8(&qword_100174008, &qword_10011AB70);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = (&v23 - v8);
  v10 = sub_1000077C8(&qword_100174010, &qword_10011AB78);
  __chkstk_darwin(v10 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v23 - v14;
  if (qword_1001721B0 != -1)
  {
    swift_once();
  }

  sub_10004AA18(v15);
  v16 = sub_10004A638();
  v17 = type metadata accessor for AirDropDescriptionView(0);
  v18 = a1 + *(v17 + 24);
  v19 = *(v18 + 32);
  if ((v19 >> 6) - 1 >= 2)
  {
    if (v19 >> 6)
    {
      v20 = 0;
      LOBYTE(v19) = 1;
    }

    else
    {
      v20 = *(v18 + 24);
    }
  }

  else
  {
    LOBYTE(v19) = 0;
    v20 = 1;
  }

  sub_10004ADBC(v16, v20, v19 & 1, v9, *(a1 + *(v17 + 28)));

  sub_100007BA4(v15, v12, &qword_100174010, &qword_10011AB78);
  sub_100007BA4(v9, v6, &qword_100174008, &qword_10011AB70);
  sub_100007BA4(v12, a2, &qword_100174010, &qword_10011AB78);
  v21 = sub_1000077C8(&qword_100174018, &qword_10011AB80);
  sub_100007BA4(v6, a2 + *(v21 + 48), &qword_100174008, &qword_10011AB70);
  sub_1000159AC(v9, &qword_100174008, &qword_10011AB70);
  sub_1000159AC(v15, &qword_100174010, &qword_10011AB78);
  sub_1000159AC(v6, &qword_100174008, &qword_10011AB70);
  return sub_1000159AC(v12, &qword_100174010, &qword_10011AB78);
}

__n128 sub_10004AA18@<Q0>(uint64_t a2@<X8>)
{
  v65 = a2;
  v64 = sub_1000077C8(&qword_100174070, &qword_10011ABB8);
  __chkstk_darwin(v64);
  v4 = &v64 - v3;
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  v7 = (v2 + *(type metadata accessor for AirDropDescriptionView(0) + 20));
  v8 = *v7;
  if (v7[1])
  {
    v9 = v7[1];
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v8 = String.init(localized:table:bundle:locale:comment:)();
  }

  *&v66 = v8;
  *(&v66 + 1) = v9;
  sub_10004BB74();

  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = Text.font(_:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_10004BBC8(v10, v12, (v14 & 1), v22, v24, v25, v26, v27);
  v16, v28, v29, v30, v31, v32, v33, v34;
  static Color.primary.getter();
  v35 = Text.foregroundColor(_:)();
  v37 = v36;
  v39 = v38;
  v41 = v40;

  sub_10004BBC8(v17, v19, (v21 & 1), v42, v43, v44, v45, v46);
  v23, v47, v48, v49, v50, v51, v52, v53;
  KeyPath = swift_getKeyPath();
  v55 = &v4[*(v64 + 36)];
  v56 = *(sub_1000077C8(&qword_1001740A0, &qword_10011ABD0) + 28);
  v57 = enum case for Text.TruncationMode.tail(_:);
  v58 = type metadata accessor for Text.TruncationMode();
  (*(*(v58 - 8) + 104))(v55 + v56, v57, v58);
  *v55 = swift_getKeyPath();
  *v4 = v35;
  *(v4 + 1) = v37;
  v4[16] = v39 & 1;
  *(v4 + 3) = v41;
  *(v4 + 4) = KeyPath;
  *(v4 + 5) = 1;
  v4[48] = 0;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v59 = v65;
  sub_100021A84(v4, v65, &qword_100174070, &qword_10011ABB8);
  v60 = v59 + *(sub_1000077C8(&qword_100174010, &qword_10011AB78) + 36);
  v61 = v71;
  *(v60 + 64) = v70;
  *(v60 + 80) = v61;
  *(v60 + 96) = v72;
  v62 = v67;
  *v60 = v66;
  *(v60 + 16) = v62;
  result = v69;
  *(v60 + 32) = v68;
  *(v60 + 48) = result;
  return result;
}

void *sub_10004ADBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>, double a5@<D0>)
{
  v138 = a2;
  v141 = a1;
  v142 = sub_1000077C8(&qword_100174020, &qword_10011AB88);
  __chkstk_darwin(v142);
  v10 = &v137 - v9;
  v137 = sub_1000077C8(&qword_100174028, &qword_10011AB90);
  __chkstk_darwin(v137);
  v12 = &v137 - v11;
  v143 = sub_1000077C8(&qword_100174030, &qword_10011AB98);
  __chkstk_darwin(v143);
  v139 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v140 = &v137 - v15;
  v148 = sub_1000077C8(&qword_100174038, &qword_10011ABA0);
  __chkstk_darwin(v148);
  v144 = &v137 - v16;
  v146 = sub_1000077C8(&qword_100174040, &qword_10011ABA8);
  __chkstk_darwin(v146);
  v147 = &v137 - v17;
  v18 = v5 + *(type metadata accessor for AirDropDescriptionView(0) + 24);
  v20 = *v18;
  v19 = *(v18 + 8);
  v21 = *(v18 + 16);
  v22 = *(v18 + 24);
  v23 = *(v18 + 32);
  v24 = v23 >> 6;
  v145 = a4;
  if (v23 >> 6 <= 1)
  {
    if (!v24)
    {

      goto LABEL_8;
    }

    v25 = sub_10004B6B8(v20, v19);
LABEL_7:
    v30 = v25;
    v31 = a3;
    v32 = v26;
    sub_10004BB08(v20, v19, v21, v22, v23, v27, v28, v29);
    v20 = v30;
    v19 = v32;
    a3 = v31;
    goto LABEL_8;
  }

  if (v24 == 2)
  {

    v25 = sub_10004B8BC(v20, v19);
    goto LABEL_7;
  }

  v136 = v19 | v20;
  v19 = 0xE000000000000000;
  v20 = 0;
  if (!(v136 | v21 | v22) && v23 == 192)
  {
    swift_storeEnumTagMultiPayload();
    sub_10004BF94();
    return _ConditionalContent<>.init(storage:)();
  }

LABEL_8:
  *&v150 = v20;
  *(&v150 + 1) = v19;
  sub_10004BB74();
  if (a3)
  {
    v33 = Text.init<A>(_:)();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v40 = Text.font(_:)();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    sub_10004BBC8(v33, v35, (v37 & 1), v45, v47, v48, v49, v50);
    v39, v51, v52, v53, v54, v55, v56, v57;
    static Color.primary.getter();
    v58 = Text.foregroundColor(_:)();
    v60 = v59;
    v62 = v61;
    v64 = v63;

    sub_10004BBC8(v40, v42, (v44 & 1), v65, v66, v67, v68, v69);
    v46, v70, v71, v72, v73, v74, v75, v76;
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *(v10 + 4) = a5;
    v77 = v152;
    *(v10 + 88) = v153;
    v78 = v155;
    *(v10 + 104) = v154;
    *(v10 + 120) = v78;
    *(v10 + 136) = v156;
    v79 = v151;
    *(v10 + 40) = v150;
    *(v10 + 56) = v79;
    v149 = v62 & 1;
    *v10 = v58;
    *(v10 + 1) = v60;
    v10[16] = v62 & 1;
    *(v10 + 3) = v64;
    *(v10 + 72) = v77;
    *(v10 + 76) = 256;
    swift_storeEnumTagMultiPayload();
    sub_1000077C8(&qword_100174050, &qword_10011ABB0);
    sub_10004BE8C(&qword_100174058, &qword_100174030, &qword_10011AB98, sub_10004BBD8);
    sub_10004BDD4();
    v80 = v144;
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v81 = Text.init<A>(_:)();
    v83 = v82;
    v85 = v84;
    v87 = v86;
    v88 = Text.font(_:)();
    v90 = v89;
    v92 = v91;
    v94 = v93;
    sub_10004BBC8(v81, v83, (v85 & 1), v93, v95, v96, v97, v98);
    v87, v99, v100, v101, v102, v103, v104, v105;
    static Color.primary.getter();
    v106 = Text.foregroundColor(_:)();
    v108 = v107;
    LOBYTE(v87) = v109;
    v141 = v110;

    sub_10004BBC8(v88, v90, (v92 & 1), v111, v112, v113, v114, v115);
    v94, v116, v117, v118, v119, v120, v121, v122;
    KeyPath = swift_getKeyPath();
    v124 = &v12[*(sub_1000077C8(&qword_100174070, &qword_10011ABB8) + 36)];
    v125 = *(sub_1000077C8(&qword_1001740A0, &qword_10011ABD0) + 28);
    v126 = enum case for Text.TruncationMode.tail(_:);
    v127 = type metadata accessor for Text.TruncationMode();
    (*(*(v127 - 8) + 104))(v124 + v125, v126, v127);
    *v124 = swift_getKeyPath();
    *v12 = v106;
    *(v12 + 1) = v108;
    v12[16] = v87 & 1;
    *(v12 + 3) = v141;
    *(v12 + 4) = KeyPath;
    *(v12 + 5) = v138;
    v12[48] = 0;
    *&v12[*(v137 + 36)] = a5;
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v128 = v12;
    v129 = v139;
    sub_100021A84(v128, v139, &qword_100174028, &qword_10011AB90);
    v130 = (v129 + *(v143 + 36));
    v131 = v155;
    v130[4] = v154;
    v130[5] = v131;
    v130[6] = v156;
    v132 = v151;
    *v130 = v150;
    v130[1] = v132;
    v133 = v153;
    v130[2] = v152;
    v130[3] = v133;
    v134 = v140;
    sub_100021A84(v129, v140, &qword_100174030, &qword_10011AB98);
    sub_100007BA4(v134, v10, &qword_100174030, &qword_10011AB98);
    swift_storeEnumTagMultiPayload();
    sub_1000077C8(&qword_100174050, &qword_10011ABB0);
    sub_10004BE8C(&qword_100174058, &qword_100174030, &qword_10011AB98, sub_10004BBD8);
    sub_10004BDD4();
    v80 = v144;
    _ConditionalContent<>.init(storage:)();
    sub_1000159AC(v134, &qword_100174030, &qword_10011AB98);
  }

  sub_100007BA4(v80, v147, &qword_100174038, &qword_10011ABA0);
  swift_storeEnumTagMultiPayload();
  sub_10004BF94();
  _ConditionalContent<>.init(storage:)();
  return sub_1000159AC(v80, &qword_100174038, &qword_10011ABA0);
}

uint64_t sub_10004B6B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v7 = v6;
  if (a2)
  {
    v8 = a2;
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    a1 = String.init(localized:table:bundle:locale:comment:)();
    v8 = v9;
  }

  sub_1000077C8(&qword_1001740D8, &qword_10011DF00);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1001186F0;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_10004C144();
  *(v10 + 32) = a1;
  *(v10 + 40) = v8;

  v11 = static String.localizedStringWithFormat(_:_:)();
  v7, v12, v13, v14, v15, v16, v17, v18;
  v10, v19, v20, v21, v22, v23, v24, v25;
  return v11;
}

uint64_t sub_10004B8BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v7 = v6;
  if (a2)
  {
    v8 = a2;
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    a1 = String.init(localized:table:bundle:locale:comment:)();
    v8 = v9;
  }

  sub_1000077C8(&qword_1001740D8, &qword_10011DF00);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1001186F0;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_10004C144();
  *(v10 + 32) = a1;
  *(v10 + 40) = v8;

  v11 = static String.localizedStringWithFormat(_:_:)();
  v7, v12, v13, v14, v15, v16, v17, v18;
  v10, v19, v20, v21, v22, v23, v24, v25;
  return v11;
}

uint64_t sub_10004BAB8@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.leading.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = sub_1000077C8(&qword_100174000, &qword_10011AB68);
  return sub_10004A77C(v1, a1 + *(v3 + 44));
}

void sub_10004BB08(uint64_t a1, _TtC9AirDropUI33AirDropTransferSessionsController *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if ((a5 >> 6) > 1u)
  {
    if (a5 >> 6 != 2)
    {
      return;
    }
  }

  else if (!(a5 >> 6))
  {
    a2, a2, a3, a4, a5, a6, a7, a8;

    return;
  }

  a2, a2, a3, a4, a5, a6, a7, a8;
}

unint64_t sub_10004BB74()
{
  result = qword_100174048;
  if (!qword_100174048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174048);
  }

  return result;
}

void sub_10004BBC8(uint64_t a1, _TtC9AirDropUI33AirDropTransferSessionsController *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a3)
  {
  }

  else
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
  }
}

unint64_t sub_10004BBD8()
{
  result = qword_100174060;
  if (!qword_100174060)
  {
    sub_100007CCC(&qword_100174028, &qword_10011AB90);
    sub_10004BC64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174060);
  }

  return result;
}

unint64_t sub_10004BC64()
{
  result = qword_100174068;
  if (!qword_100174068)
  {
    sub_100007CCC(&qword_100174070, &qword_10011ABB8);
    sub_10004BD1C();
    sub_1000199C8(&qword_100174098, &qword_1001740A0, &qword_10011ABD0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174068);
  }

  return result;
}

unint64_t sub_10004BD1C()
{
  result = qword_100174078;
  if (!qword_100174078)
  {
    sub_100007CCC(&qword_100174080, &qword_10011ABC0);
    sub_1000199C8(&qword_100174088, &qword_100174090, &qword_10011ABC8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174078);
  }

  return result;
}

unint64_t sub_10004BDD4()
{
  result = qword_1001740A8;
  if (!qword_1001740A8)
  {
    sub_100007CCC(&qword_100174050, &qword_10011ABB0);
    sub_10004BE8C(&qword_1001740B0, &qword_1001740B8, &qword_10011ABD8, sub_10004BF10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001740A8);
  }

  return result;
}

uint64_t sub_10004BE8C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100007CCC(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10004BF10()
{
  result = qword_1001740C0;
  if (!qword_1001740C0)
  {
    sub_100007CCC(&qword_1001740C8, &qword_10011ABE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001740C0);
  }

  return result;
}

unint64_t sub_10004BF94()
{
  result = qword_1001740D0;
  if (!qword_1001740D0)
  {
    sub_100007CCC(&qword_100174038, &qword_10011ABA0);
    sub_10004BE8C(&qword_100174058, &qword_100174030, &qword_10011AB98, sub_10004BBD8);
    sub_10004BDD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001740D0);
  }

  return result;
}

uint64_t sub_10004C078(uint64_t a1)
{
  v2 = type metadata accessor for Text.TruncationMode();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.truncationMode.setter();
}

unint64_t sub_10004C144()
{
  result = qword_100177670;
  if (!qword_100177670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177670);
  }

  return result;
}

uint64_t sub_10004C1DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10004C224(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10004C290(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v60 = a1;
  v56 = a4;
  v6 = sub_1000077C8(&qword_100174100, &qword_10011AD08);
  __chkstk_darwin(v6 - 8);
  v62 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v45 - v9;
  v11 = type metadata accessor for DeviceLockState();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v45 - v16;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  v63 = a2;
  static Published.subscript.getter();

  v18 = *(v12 + 104);
  LODWORD(v59) = enum case for DeviceLockState.unlocked(_:);
  v58 = v18;
  v18(v14);
  v19 = static DeviceLockState.== infix(_:_:)();
  v20 = *(v12 + 8);
  v20(v14, v11);
  v20(v17, v11);
  if (v19)
  {
    type metadata accessor for AirDropTransferSession(0);
    sub_10004DD0C();
    v55 = ObservedObject.init(wrappedValue:)();
    v52 = a3 & 1;
    v54 = v21;

    v53 = 2;
  }

  else
  {

    v55 = 0;
    v54 = 0;
    v52 = 0;
    v53 = 0;
  }

  *v10 = static HorizontalAlignment.leading.getter();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v22 = *(sub_1000077C8(&qword_100174108, &qword_10011CEB0) + 44);
  v61 = v10;
  v23 = v60;
  sub_10004CAD0(v60, v63, a3 & 1, &v10[v22]);
  swift_getKeyPath();
  swift_getKeyPath();
  v57 = a3;
  static Published.subscript.getter();

  v58(v14, v59, v11);
  v24 = static DeviceLockState.== infix(_:_:)();
  v20(v14, v11);
  v20(v17, v11);
  if ((v24 & 1) != 0 && (v25 = v57, (sub_10004D5DC(v23, v63) & 1) == 0))
  {
    type metadata accessor for AirDropTransferSession(0);
    sub_10004DD0C();
    v27 = ObservedObject.init(wrappedValue:)();
    v29 = v28;
    sub_10004DD64();
    if (qword_1001721C0 != -1)
    {
      swift_once();
    }

    v26 = UIColor.init(_:)();
    if (qword_100172140 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v51 = LOBYTE(v70[0]);
    static Alignment.trailing.getter();
    _FrameLayout.init(width:height:alignment:)();
    v50 = v70[11];
    v49 = v70[12];
    v48 = v70[13];
    v47 = v70[14];
    v59 = v25 & 1;
    v63 = v70[15];
    v60 = v70[16];
    v58 = v27;
    v57 = v29;
  }

  else
  {

    v58 = 0;
    v57 = 0;
    v26 = 0;
    v50 = 0;
    v49 = 0;
    v48 = 0;
    v47 = 0;
    v63 = 0;
    v60 = 0;
    v51 = 0;
    v59 = 0;
  }

  v46 = v26;
  v30 = v62;
  sub_100007BA4(v61, v62, &qword_100174100, &qword_10011AD08);
  v31 = v56;
  v32 = v55;
  v33 = v54;
  *v56 = v55;
  v31[1] = v33;
  v34 = v52;
  v31[2] = v52;
  v31[3] = 0;
  v35 = v53;
  v31[4] = v53;
  *(v31 + 40) = 0;
  v36 = sub_1000077C8(&qword_100174110, &qword_10011AD60);
  sub_100007BA4(v30, v31 + *(v36 + 48), &qword_100174100, &qword_10011AD08);
  v37 = v31 + *(v36 + 64);
  *&v64 = v58;
  *(&v64 + 1) = v57;
  *&v65 = v59;
  *(&v65 + 1) = v26;
  v38 = v51;
  *&v66 = v51;
  v39 = v50;
  *(&v66 + 1) = v50;
  v40 = v49;
  *&v67 = v49;
  v41 = v48;
  v42 = v47;
  *(&v67 + 1) = v48;
  *&v68 = v47;
  *(&v68 + 1) = v63;
  v69 = v60;
  sub_10004DC44(v32, v33, v34, 0, v35);
  sub_100007BA4(&v64, v70, &qword_100174118, &qword_10011AD68);
  sub_10004DCA8(v32, v33, v34, 0, v35);
  v43 = v67;
  *(v37 + 2) = v66;
  *(v37 + 3) = v43;
  *(v37 + 4) = v68;
  *(v37 + 10) = v69;
  v44 = v65;
  *v37 = v64;
  *(v37 + 1) = v44;
  sub_1000159AC(v61, &qword_100174100, &qword_10011AD08);
  v70[0] = v58;
  v70[1] = v57;
  v70[2] = v59;
  v70[3] = v46;
  v70[4] = v38;
  v70[5] = v39;
  v70[6] = v40;
  v70[7] = v41;
  v70[8] = v42;
  v70[9] = v63;
  v70[10] = v60;
  sub_1000159AC(v70, &qword_100174118, &qword_10011AD68);
  sub_1000159AC(v62, &qword_100174100, &qword_10011AD08);
  sub_10004DCA8(v32, v33, v34, 0, v35);
}

uint64_t sub_10004CAD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v50 = a2;
  v48 = a1;
  v51 = type metadata accessor for Font.TextStyle();
  v47 = *(v51 - 8);
  __chkstk_darwin(v51);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for AirDropDescriptionView(0);
  __chkstk_darwin(v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1000077C8(&qword_100174138, &unk_10011AE80);
  __chkstk_darwin(v46);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  __chkstk_darwin(v18);
  v20 = &v37 - v19;
  v49 = a3;
  if (a3)
  {
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v44 = 0;
    v45 = v54;
    v43 = v56;
    v42 = v58;
    v41 = v59;
    LOBYTE(v60[0]) = 1;
    v53 = v55;
    v52 = v57;
    v38 = 1;
    v39 = v55;
    v40 = v57;
    LOBYTE(v62) = 0;
  }

  else
  {
    v45 = 0;
    v43 = 0;
    v42 = 0;
    v41 = 0;
    v40 = 0;
    v39 = 0;
    v38 = 0;
    v44 = 1;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v21 = String.init(localized:table:bundle:locale:comment:)();
  v23 = v22;
  sub_10004D08C(v50, v60);
  *&v62 = 0x402C000000000000;
  (*(v47 + 104))(v7, enum case for Font.TextStyle.subheadline(_:), v51);
  sub_10004A578();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v24 = &v12[v10[5]];
  *v24 = v21;
  v24[1] = v23;
  v25 = &v12[v10[6]];
  v26 = v60[1];
  *v25 = v60[0];
  *(v25 + 1) = v26;
  v25[32] = v61;
  *&v12[v10[7]] = 0x3FE0000000000000;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10004DDC8(v12, v17);
  v27 = &v17[*(v46 + 36)];
  v28 = v67;
  *(v27 + 4) = v66;
  *(v27 + 5) = v28;
  *(v27 + 6) = v68;
  v29 = v63;
  *v27 = v62;
  *(v27 + 1) = v29;
  v30 = v65;
  *(v27 + 2) = v64;
  *(v27 + 3) = v30;
  sub_10004DE2C(v17, v20);
  sub_100007BA4(v20, v14, &qword_100174138, &unk_10011AE80);
  v31 = v38;
  *a4 = 0;
  *(a4 + 8) = v31;
  v32 = v39;
  *(a4 + 16) = v45;
  *(a4 + 24) = v32;
  v33 = v40;
  *(a4 + 32) = v43;
  *(a4 + 40) = v33;
  v34 = v41;
  *(a4 + 48) = v42;
  *(a4 + 56) = v34;
  *(a4 + 64) = v44;
  v35 = sub_1000077C8(&qword_100174140, &qword_100122070);
  sub_100007BA4(v14, a4 + *(v35 + 48), &qword_100174138, &unk_10011AE80);
  sub_1000159AC(v20, &qword_100174138, &unk_10011AE80);
  return sub_1000159AC(v14, &qword_100174138, &unk_10011AE80);
}

uint64_t sub_10004D08C@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v46 = a2;
  v45 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v3 = *(v45 - 8);
  __chkstk_darwin(v45);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000077C8(&qword_100172FD0, &qword_10011A210);
  __chkstk_darwin(v6 - 8);
  v8 = &v45 - v7;
  v9 = type metadata accessor for SFAirDropSend.Transfer.State();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v45 - v14;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    v27 = a1;
    v28 = *(v10 + 32);
    v28(v15, v8, v9);
    v28(v12, v15, v9);
    if ((*(v10 + 88))(v12, v9) == enum case for SFAirDropSend.Transfer.State.transferring(_:))
    {
      (*(v10 + 96))(v12, v9);
      *(v12 + 1), v29, v30, v31, v32, v33, v34, v35;
      v36 = sub_1000077C8(&qword_100172F30, &unk_100118BC0);
      v37 = v36[12];
      v38 = &v12[v36[16]];
      v20 = *v38;
      v21 = *(v38 + 1);
      v39 = v36[20];
      v40 = type metadata accessor for SFAirDrop.DeclineAction();
      (*(*(v40 - 8) + 8))(&v12[v39], v40);
      v41 = type metadata accessor for SFAirDrop.Progress();
      result = (*(*(v41 - 8) + 8))(&v12[v37], v41);
      if (v21)
      {
        goto LABEL_6;
      }
    }

    else
    {
      (*(v10 + 8))(v12, v9);
    }

    v20 = *(v27 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_receiverName);
    v21 = *(v27 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_receiverName + 8);

    v43 = 0;
    v42 = 0x80;
    goto LABEL_10;
  }

  sub_1000159AC(v8, &qword_100172FD0, &qword_10011A210);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v16 = v45;
  if ((*(v3 + 88))(v5, v45) != enum case for SFAirDropReceive.Transfer.State.transferring(_:))
  {
    (*(v3 + 8))(v5, v16);
    v20 = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_senderName);
    v21 = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_senderName + 8);

    v43 = 0;
    v42 = 64;
    goto LABEL_10;
  }

  (*(v3 + 96))(v5, v16);
  v17 = sub_1000077C8(&unk_100174F70, &unk_10011A360);
  v18 = v17[12];
  v19 = &v5[v17[16]];
  v20 = *v19;
  v21 = *(v19 + 1);
  v22 = v17[20];
  v23 = type metadata accessor for SFAirDrop.DeclineAction();
  (*(*(v23 - 8) + 8))(&v5[v22], v23);
  v24 = type metadata accessor for SFAirDrop.Progress();
  (*(*(v24 - 8) + 8))(&v5[v18], v24);
  v25 = type metadata accessor for SFAirDropReceive.ItemDestination();
  result = (*(*(v25 - 8) + 8))(v5, v25);
LABEL_6:
  v42 = 0;
  v43 = 1;
LABEL_10:
  v44 = v46;
  *v46 = v20;
  v44[1] = v21;
  v44[2] = 0;
  v44[3] = v43;
  *(v44 + 32) = v42;
  return result;
}

uint64_t sub_10004D5DC(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v42 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000077C8(&qword_100172FD0, &qword_10011A210);
  __chkstk_darwin(v5 - 8);
  v7 = &v41 - v6;
  v8 = type metadata accessor for SFAirDropSend.Transfer.State();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v14 = &v41 - v13;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    v18 = *(v9 + 32);
    v18(v14, v7, v8);
    v18(v11, v14, v8);
    v19 = (*(v9 + 88))(v11, v8);
    if (v19 == enum case for SFAirDropSend.Transfer.State.analyzingFullContent(_:))
    {
      (*(v9 + 96))(v11, v8);
      *v11, v20, v21, v22, v23, v24, v25, v26;
      v27 = *(sub_1000077C8(&qword_100174130, &qword_10011C540) + 64);
      v28 = type metadata accessor for SFAirDrop.DeclineAction();
    }

    else
    {
      v31 = v19;
      if (v19 != enum case for SFAirDropSend.Transfer.State.waitingForSensitiveContentResponse(_:))
      {
        result = 1;
        if (v31 != enum case for SFAirDropSend.Transfer.State.created(_:) && v31 != enum case for SFAirDropSend.Transfer.State.waitingForAskResponse(_:))
        {
          (*(v9 + 8))(v11, v8);
          return 0;
        }

        return result;
      }

      (*(v9 + 96))(v11, v8);
      *v11, v32, v33, v34, v35, v36, v37, v38;
      v27 = *(sub_1000077C8(&qword_100174128, &unk_10011C530) + 48);
      v28 = sub_1000077C8(&unk_100174F90, &unk_10011AE70);
    }

    (*(*(v28 - 8) + 8))(v11 + v27, v28);
    return 1;
  }

  sub_1000159AC(v7, &qword_100172FD0, &qword_10011A210);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v15 = v42;
  v16 = (*(v42 + 88))(v4, v2);
  if (v16 == enum case for SFAirDropReceive.Transfer.State.waitingForAskResponse(_:))
  {
    goto LABEL_3;
  }

  if (v16 == enum case for SFAirDropReceive.Transfer.State.waitingForShareContactPermissionResponse(_:))
  {
    (*(v15 + 96))(v4, v2);
    v29 = *(sub_1000077C8(&qword_100173088, &unk_10011C520) + 48);
    v30 = sub_1000077C8(&unk_100174F80, &unk_10011AE60);
    (*(*(v30 - 8) + 8))(&v4[v29], v30);
    v17 = type metadata accessor for SFAirDrop.ContactInfo();
    goto LABEL_8;
  }

  if (v16 == enum case for SFAirDropReceive.Transfer.State.waitingForSensitivePreviewIntervention(_:))
  {
LABEL_3:
    (*(v15 + 96))(v4, v2);
    v17 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
LABEL_8:
    (*(*(v17 - 8) + 8))(v4, v17);
    return 1;
  }

  v40 = v16;
  result = 1;
  if (v40 != enum case for SFAirDropReceive.Transfer.State.created(_:) && v40 != enum case for SFAirDropReceive.Transfer.State.autoAccepted(_:) && v40 != enum case for SFAirDropReceive.Transfer.State.analyizingPreview(_:))
  {
    (*(v15 + 8))(v4, v2);
    return 0;
  }

  return result;
}