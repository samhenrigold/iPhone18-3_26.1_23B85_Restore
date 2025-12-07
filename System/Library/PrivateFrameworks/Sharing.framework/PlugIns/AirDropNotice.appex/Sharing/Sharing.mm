uint64_t sub_100001828()
{
  v0 = sub_100008AF8();
  sub_100007454(v0, qword_100010818);
  sub_100006D64(v0, qword_100010818);
  return sub_100008AE8();
}

Swift::Int sub_1000018C4()
{
  v1 = *v0;
  sub_100008CA8();
  sub_100008CB8(v1);
  return sub_100008CC8();
}

Swift::Int sub_100001938(uint64_t a1)
{
  v2 = *v1;
  sub_100008CA8();
  sub_100008CB8(v2);
  return sub_100008CC8();
}

uint64_t sub_10000197C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  return v1;
}

id sub_1000019F0()
{
  ObjectType = swift_getObjectType();
  v2 = sub_100007408(&qword_100010E78, &unk_100009A08);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v10 - v4;
  *&v0[OBJC_IVAR____TtC13AirDropNotice35WolfAirDropNoticeSessionsController_connection] = 0;
  *&v0[OBJC_IVAR____TtC13AirDropNotice35WolfAirDropNoticeSessionsController_server] = 0;
  v6 = OBJC_IVAR____TtC13AirDropNotice35WolfAirDropNoticeSessionsController__airDropSessionsByID;
  v12 = sub_100008688(&_swiftEmptyArrayStorage);
  sub_100007408(&qword_100010890, qword_100009420);
  sub_100008B18();
  (*(v3 + 32))(&v0[v6], v5, v2);
  v7 = OBJC_IVAR____TtC13AirDropNotice35WolfAirDropNoticeSessionsController_unassociatedDismissalHandler;
  *&v0[v7] = sub_10000878C(&_swiftEmptyArrayStorage);
  v11.receiver = v0;
  v11.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v11, "init");
  sub_100001B6C();

  return v8;
}

void sub_100001B6C()
{
  v1 = v0;
  if (qword_100010810 != -1)
  {
    swift_once();
  }

  v2 = sub_100008AF8();
  sub_100006D64(v2, qword_100010818);
  v3 = sub_100008AD8();
  v4 = sub_100008BF8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Activating connection", v5, 2u);
  }

  v6 = sub_100008B88();
  v45 = [objc_opt_self() interfaceWithIdentifier:v6];

  v7 = objc_opt_self();
  v8 = [v7 protocolForProtocol:&OBJC_PROTOCOL___SFAirDropNoticeServer];
  [v45 setServer:v8];

  v9 = [v7 protocolForProtocol:&OBJC_PROTOCOL___SFAirDropNoticeClient];
  [v45 setClient:v9];

  [v45 setClientMessagingExpectation:1];
  v10 = sub_100008B88();
  v11 = sub_100008B88();
  v12 = [objc_opt_self() endpointForMachName:v10 service:v11 instance:0];

  if (v12)
  {
    v13 = v12;
    v14 = sub_100008AD8();
    v15 = sub_100008BD8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "WolfAirDropNoticeSessionsController: endpoint created!", v16, 2u);
    }

    v17 = [objc_opt_self() connectionWithEndpoint:v13];
    if (v17)
    {
      v18 = v17;
      aBlock[6] = &OBJC_PROTOCOL___BSServiceConnectionClient;
      v19 = swift_dynamicCastObjCProtocolConditional();
      if (v19)
      {
        v20 = v19;
        v21 = v18;
        v22 = sub_100008AD8();
        v23 = sub_100008BD8();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&_mh_execute_header, v22, v23, "WolfAirDropNoticeSessionsController: connection created", v24, 2u);
        }

        v25 = swift_allocObject();
        *(v25 + 16) = v45;
        *(v25 + 24) = v1;
        v26 = swift_allocObject();
        *(v26 + 16) = sub_1000088E8;
        *(v26 + 24) = v25;
        aBlock[4] = sub_100008900;
        aBlock[5] = v26;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100002D88;
        aBlock[3] = &unk_10000C708;
        v27 = _Block_copy(aBlock);
        v28 = v21;
        v46 = v45;
        v29 = v1;

        [v20 configureConnection:v27];

        _Block_release(v27);
        LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

        if (v27)
        {
          __break(1u);
        }

        else
        {
          v30 = OBJC_IVAR____TtC13AirDropNotice35WolfAirDropNoticeSessionsController_connection;
          if (*&v29[OBJC_IVAR____TtC13AirDropNotice35WolfAirDropNoticeSessionsController_connection])
          {
            v31 = sub_100008AD8();
            v32 = sub_100008BE8();
            if (os_log_type_enabled(v31, v32))
            {
              v33 = swift_slowAlloc();
              *v33 = 0;
              _os_log_impl(&_mh_execute_header, v31, v32, "WolfAirDropNoticeSessionsController: Previous connection present while trying to activate. Ending previous then activating new connection", v33, 2u);
            }

            sub_100002AA4();
            v34 = *&v29[v30];
          }

          else
          {
            v34 = 0;
          }

          *&v29[v30] = v20;
          v41 = v28;

          v42 = sub_100008AD8();
          v43 = sub_100008BF8();
          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            *v44 = 0;
            _os_log_impl(&_mh_execute_header, v42, v43, "WolfAirDropNoticeSessionsController: Activating Session", v44, 2u);
          }

          [v20 activate];
        }

        return;
      }
    }

    else
    {
    }

    v38 = sub_100008AD8();
    v39 = sub_100008BE8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Could not create a connection with the AirDropNotice endpoint", v40, 2u);
    }
  }

  else
  {
    v35 = sub_100008AD8();
    v36 = sub_100008BE8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Could not find endpoint for AirDropNotice. It may not be loaded.", v37, 2u);
    }
  }
}

void sub_1000022D0(uint64_t a1, uint64_t a2, uint64_t a3, _TtC13AirDropNotice35WolfAirDropNoticeSessionsController *a4)
{
  v5 = v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *v4;
    sub_100007F78(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);
    a4, v11, v12, v13, v14, v15, v16, v17;
    *v4 = v36;
  }

  else
  {
    v18 = sub_1000074F0(a3, a4);
    v20 = v19;
    a4, v19, v21, v22, v23, v24, v25, v26;
    if (v20)
    {
      v27 = swift_isUniquelyReferenced_nonNull_native();
      v35 = *v5;
      v37 = *v5;
      if (!v27)
      {
        sub_1000083EC();
        v35 = v37;
      }

      *(*(v35 + 48) + 16 * v18 + 8), v28, v29, v30, v31, v32, v33, v34;

      sub_100007DC8(v18, v35);
      *v5 = v35;
    }
  }
}

void sub_1000023D8(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_100010810 != -1)
  {
    swift_once();
  }

  v6 = sub_100008AF8();
  sub_100006D64(v6, qword_100010818);
  v7 = sub_100008AD8();
  v8 = sub_100008BD8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "WolfAirDropNoticeSessionsController: configuring session...", v9, 2u);
  }

  v10 = sub_100008B88();
  [a1 setName:v10];

  v11 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality:v11];

  [a1 setInterface:a2];
  [a1 setInterfaceTarget:a3];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = sub_100008978;
  v23 = v12;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_100002930;
  v21 = &unk_10000C758;
  v13 = _Block_copy(&v18);

  [a1 setActivationHandler:v13];
  _Block_release(v13);
  v14 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v22 = sub_1000089B8;
  v23 = v14;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_100002930;
  v21 = &unk_10000C7A8;
  v15 = _Block_copy(&v18);

  [a1 setInvalidationHandler:v15];
  _Block_release(v15);
  v22 = sub_100002CA0;
  v23 = 0;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_100002930;
  v21 = &unk_10000C7D0;
  v16 = _Block_copy(&v18);
  [a1 setInterruptionHandler:v16];
  _Block_release(v16);
  sub_1000089C0(0, &qword_100010EE0, OS_dispatch_queue_ptr);
  v17 = sub_100008C08();
  [a1 setTargetQueue:v17];
}

char *sub_100002764(void *a1, uint64_t a2)
{
  if (qword_100010810 != -1)
  {
    swift_once();
  }

  v3 = sub_100008AF8();
  sub_100006D64(v3, qword_100010818);
  v4 = sub_100008AD8();
  v5 = sub_100008BD8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "WolfAirDropNoticeSessionsController connection activated!", v6, 2u);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    if ([a1 remoteTarget])
    {
      sub_100008C18();
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
    }

    v14[0] = v12;
    v14[1] = v13;
    if (*(&v13 + 1))
    {
      sub_100007408(&unk_100010EF0, &unk_100009A20);
      v9 = swift_dynamicCast();
      v10 = v11;
      if (!v9)
      {
        v10 = 0;
      }
    }

    else
    {
      sub_100008A08(v14);
      v10 = 0;
    }

    *&v8[OBJC_IVAR____TtC13AirDropNotice35WolfAirDropNoticeSessionsController_server] = v10;

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100002930(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_100002998(uint64_t a1, uint64_t a2)
{
  if (qword_100010810 != -1)
  {
    swift_once();
  }

  v2 = sub_100008AF8();
  sub_100006D64(v2, qword_100010818);
  v3 = sub_100008AD8();
  v4 = sub_100008BF8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "WolfAirDropNoticeSessionsController connection invalidated with endpoint!", v5, 2u);
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_100002AA4();
}

void sub_100002AA4()
{
  v1 = OBJC_IVAR____TtC13AirDropNotice35WolfAirDropNoticeSessionsController_connection;
  v2 = *(v0 + OBJC_IVAR____TtC13AirDropNotice35WolfAirDropNoticeSessionsController_connection);
  if (v2)
  {
    v3 = v0;
    v4 = qword_100010810;
    v5 = v2;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = sub_100008AF8();
    sub_100006D64(v6, qword_100010818);
    v7 = sub_100008AD8();
    v8 = sub_100008BF8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "WolfAirDropNoticeSessionsController: Invalidating connection", v9, 2u);
    }

    [v5 invalidate];
    *(v3 + OBJC_IVAR____TtC13AirDropNotice35WolfAirDropNoticeSessionsController_server) = 0;
    swift_unknownObjectRelease();
    v10 = *(v3 + v1);
    *(v3 + v1) = 0;
  }

  else
  {
    if (qword_100010810 != -1)
    {
      swift_once();
    }

    v11 = sub_100008AF8();
    sub_100006D64(v11, qword_100010818);
    oslog = sub_100008AD8();
    v12 = sub_100008BD8();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v12, "XPC Connection not available, skipping end.", v13, 2u);
    }

    v10 = oslog;
  }
}

void sub_100002CA0()
{
  if (qword_100010810 != -1)
  {
    swift_once();
  }

  v0 = sub_100008AF8();
  sub_100006D64(v0, qword_100010818);
  oslog = sub_100008AD8();
  v1 = sub_100008BF8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Client received interruption", v2, 2u);
  }
}

uint64_t sub_100002D88(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

id sub_100002DDC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_100010810 != -1)
  {
    swift_once();
  }

  v3 = sub_100008AF8();
  sub_100006D64(v3, qword_100010818);
  v4 = sub_100008AD8();
  v5 = sub_100008BF8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "WolfAirDropNoticeSessionsController deinit", v6, 2u);
  }

  sub_100002AA4();
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "dealloc");
}

void sub_100002FE8(uint64_t a1)
{
  sub_100006308(319, &qword_100010888, &qword_100010890, qword_100009420);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000030A8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000030F0@<X0>(uint64_t *a2@<X8>)
{
  swift_getObjectType();
  result = sub_100008B08();
  *a2 = result;
  return result;
}

uint64_t sub_100003130(uint64_t a1, _TtC13AirDropNotice35WolfAirDropNoticeSessionsController *a2, void *a3, void *a4, void *a5, char *a6, uint64_t a7, unint64_t a8, _TtC13AirDropNotice35WolfAirDropNoticeSessionsController *a9, uint64_t a10, uint64_t a11, unint64_t a12, _TtC13AirDropNotice35WolfAirDropNoticeSessionsController *a13, unint64_t a14)
{
  v15 = v14;
  v281 = a7;
  v284 = a4;
  v285 = a6;
  v279 = a3;
  v287 = a1;
  v276 = sub_100007408(&qword_100010E60, &qword_1000099A8);
  v275 = *(v276 - 8);
  __chkstk_darwin();
  v274 = &v262 - v19;
  v273 = sub_100007408(&qword_100010E58, &qword_1000099A0);
  v272 = *(v273 - 8);
  __chkstk_darwin();
  v271 = &v262 - v20;
  v283 = sub_100007408(&qword_100010E50, &qword_100009998);
  v270 = *(v283 - 8);
  __chkstk_darwin();
  v269 = &v262 - v21;
  *&v282 = sub_100007408(&qword_100010E40, &qword_100009988);
  v280 = *(v282 - 8);
  __chkstk_darwin();
  v268 = &v262 - v22;
  v267 = sub_100007408(&qword_100010E30, &qword_100009978);
  v266 = *(v267 - 8);
  __chkstk_darwin();
  v265 = &v262 - v23;
  v264 = sub_100008AC8();
  v24 = *(v264 - 1);
  __chkstk_darwin();
  v26 = &v262 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100010810 != -1)
  {
    swift_once();
  }

  v27 = sub_100008AF8();
  v28 = sub_100006D64(v27, qword_100010818);

  v286 = v28;
  v29 = sub_100008AD8();
  v30 = sub_100008BF8();
  a2, v31, v32, v33, v34, v35, v36, v37;
  if (os_log_type_enabled(v29, v30))
  {
    v38 = swift_slowAlloc();
    v39 = a5;
    v40 = v15;
    v41 = swift_slowAlloc();
    v288 = v41;
    *v38 = 136315138;
    *(v38 + 4) = sub_100006DB8(v287, a2, &v288);
    _os_log_impl(&_mh_execute_header, v29, v30, "WolfAirDropNoticeSessionsController: Start session with identifier: %s", v38, 0xCu);
    sub_100007360(v41);
    v15 = v40;
    a5 = v39;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  v49 = v288;
  v50 = *(v288 + 16);
  v277 = a8;
  if (v50)
  {
    sub_1000074F0(v287, a2);
    v52 = v51;
    v49, v51, v53, v54, v55, v56, v57, v58;
    if (v52)
    {

      v59 = sub_100008AD8();
      v60 = sub_100008BE8();
      a2, v61, v62, v63, v64, v65, v66, v67;
      if (os_log_type_enabled(v59, v60))
      {
        v68 = swift_slowAlloc();
        v69 = a5;
        v70 = v15;
        v71 = swift_slowAlloc();
        v288 = v71;
        *v68 = 136315138;
        v72 = v287;
        *(v68 + 4) = sub_100006DB8(v287, a2, &v288);
        _os_log_impl(&_mh_execute_header, v59, v60, "Tried to start a session with an existing transfer: %s. Ending existing session, and starting new one", v68, 0xCu);
        sub_100007360(v71);
        v15 = v70;
        a5 = v69;
      }

      else
      {

        v72 = v287;
      }

      sub_100004564(v72, a2);
    }
  }

  else
  {
    v288, v42, v43, v44, v45, v46, v47, v48;
  }

  v284 = [v284 unsignedIntegerValue];

  LODWORD(v279) = [v279 BOOLValue];

  v278 = [v285 BOOLValue];
  v263 = [a5 integerValue];
  type metadata accessor for WolfAirDropNoticeSession(0);
  v73 = swift_allocObject();
  *(v73 + 16) = 0;
  *(v73 + 24) = 0;
  *(v73 + 48) = 0;
  *(v73 + 56) = 0;
  v285 = v15;
  sub_100008AB8();
  v74 = sub_100008AA8();
  v76 = v75;
  (*(v24 + 8))(v26, v264);
  *(v73 + 72) = v74;
  *(v73 + 80) = v76;
  v77 = OBJC_IVAR____TtC13AirDropNotice24WolfAirDropNoticeSession__transferAccepted;
  LOBYTE(v288) = 0;
  v78 = v265;
  sub_100008B18();
  (v266[1].super.isa)(v73 + v77, v78, v267);
  v79 = OBJC_IVAR____TtC13AirDropNotice24WolfAirDropNoticeSession__localizedTransferDescription;
  v288 = 0;
  v289 = 0;
  v265 = sub_100007408(&qword_100010A58, &qword_1000094F8);
  v80 = v268;
  sub_100008B18();
  v264 = *(v280 + 32);
  (v264)(v73 + v79, v80, v282);
  v81 = OBJC_IVAR____TtC13AirDropNotice24WolfAirDropNoticeSession__transferState;
  v267 = OBJC_IVAR____TtC13AirDropNotice24WolfAirDropNoticeSession__transferState;
  v288 = 1;
  type metadata accessor for SFAirDropTransferState(0);
  v266 = a2;
  v280 = v82;
  v83 = v269;
  sub_100008B18();
  v84 = v270;
  (*(v270 + 32))(v73 + v81, v83, v283);
  v85 = OBJC_IVAR____TtC13AirDropNotice24WolfAirDropNoticeSession__previewImage;
  v288 = 0;
  sub_100007408(&qword_100010A80, &qword_100009500);
  v86 = v271;
  sub_100008B18();
  v87 = *(v272 + 32);
  v88 = v273;
  v87(v73 + v85, v86, v273);
  v89 = OBJC_IVAR____TtC13AirDropNotice24WolfAirDropNoticeSession__iconImage;
  v288 = 0;
  sub_100008B18();
  v90 = v73 + v89;
  v91 = v277;
  v87(v90, v86, v88);
  v92 = OBJC_IVAR____TtC13AirDropNotice24WolfAirDropNoticeSession__contactIdentifier;
  v288 = 0;
  v289 = 0;
  sub_100008B18();
  (v264)(v73 + v92, v80, v282);
  v93 = v285;
  v94 = OBJC_IVAR____TtC13AirDropNotice24WolfAirDropNoticeSession__state;
  LOBYTE(v288) = 0;
  v95 = v274;
  sub_100008B18();
  (*(v275 + 32))(v73 + v94, v95, v276);
  v96 = v287;
  v97 = v266;
  *(v73 + 32) = v287;
  *(v73 + 40) = v97;
  *(v73 + 64) = v279;
  v98 = *(v73 + 56);
  *(v73 + 48) = v281;
  *(v73 + 56) = v91;
  v99 = v97;

  v98, v100, v101, v102, v103, v104, v105, v106;
  v107 = v267;
  swift_beginAccess();
  (*(v84 + 8))(v73 + v107, v283);
  v108 = v284;
  v290 = v284;
  sub_100008B18();
  swift_endAccess();
  *(v73 + 65) = v278;
  swift_beginAccess();
  v290 = 0;
  sub_100008B18();
  swift_endAccess();
  swift_beginAccess();
  v109 = v263;
  v290 = v263;
  sub_100008B18();
  swift_endAccess();
  *(v73 + OBJC_IVAR____TtC13AirDropNotice24WolfAirDropNoticeSession_delegate + 8) = &off_10000C670;
  swift_unknownObjectUnownedInit();
  v110 = [objc_opt_self() progressWithTotalUnitCount:v109];
  swift_beginAccess();
  v290 = v110;
  sub_1000089C0(0, &qword_100010A68, NSProgress_ptr);
  sub_100008B18();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  v111 = v288;
  [v288 setCompletedUnitCount:0];

  if (v108 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v288) = 1;

    sub_100008B48();
  }

  v112 = SFAirDropTransferStateToString();
  if (v112)
  {
    v113 = v112;
    v114 = sub_100008B98();
    v116 = v115;
  }

  else
  {
    v116 = 0xE90000000000003ELL;
    v114 = 0x6E776F6E6B6E553CLL;
  }

  v117 = v99;
  v283 = a10;

  v118 = sub_100008AD8();
  v119 = sub_100008BF8();
  v116, v120, v121, v122, v123, v124, v125, v126;

  v91, v127, v128, v129, v130, v131, v132, v133;
  v117, v134, v135, v136, v137, v138, v139, v140;
  if (os_log_type_enabled(v118, v119))
  {
    v148 = swift_slowAlloc();
    *&v282 = v114;
    v149 = v148;
    v288 = swift_slowAlloc();
    *v149 = 136316418;
    v150 = sub_100006DB8(v96, v117, &v288);
    v117, v151, v152, v153, v154, v155, v156, v157;
    *(v149 + 4) = v150;
    *(v149 + 12) = 2080;
    if (v91)
    {
      v158 = v281;
    }

    else
    {
      v158 = 7104878;
    }

    if (v91)
    {
      v159 = v91;
    }

    else
    {
      v159 = 0xE300000000000000;
    }

    v160 = sub_100006DB8(v158, v159, &v288);
    v159, v161, v162, v163, v164, v165, v166, v167;
    *(v149 + 14) = v160;
    *(v149 + 22) = 1024;
    *(v149 + 24) = v279;
    *(v149 + 28) = 1024;
    *(v149 + 30) = v278;
    *(v149 + 34) = 2048;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_100008B38();

    v96 = v287;

    v168 = v290;
    [v290 fractionCompleted];
    v170 = v169;

    *(v149 + 36) = v170;
    *(v149 + 44) = 2080;
    v171 = sub_100006DB8(v282, v116, &v288);
    v116, v172, v173, v174, v175, v176, v177, v178;
    *(v149 + 46) = v171;
    _os_log_impl(&_mh_execute_header, v118, v119, "Transfer session created for transfer %s with senderName: %s, isFromMe: %{BOOL}d, isDestinationDownloads: %{BOOL}d, completed: %f, transferState: %s", v149, 0x36u);
    swift_arrayDestroy();
    v93 = v285;
  }

  else
  {
    v116, v141, v142, v143, v144, v145, v146, v147;
    v91, v179, v180, v181, v182, v183, v184, v185;
    v117, v186, v187, v188, v189, v190, v191, v192;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  v193 = sub_100008B28();
  v195 = v194;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v290 = *v195;
  *v195 = 0x8000000000000000;
  sub_100008100(v73, v96, v117, isUniquelyReferenced_nonNull_native);
  v117, v197, v198, v199, v200, v201, v202, v203;
  *v195 = v290;
  v193(&v288, 0);

  v204 = OBJC_IVAR____TtC13AirDropNotice35WolfAirDropNoticeSessionsController_unassociatedDismissalHandler;
  swift_beginAccess();
  v205 = *&v93[v204];
  if (*(v205 + 16) && (v206 = sub_1000074F0(v96, v117), (v207 & 1) != 0))
  {
    v208 = v206;
    v209 = *(v205 + 56);
    v210 = swift_allocObject();
    v282 = *(v209 + 16 * v208);
    *(v210 + 16) = v282;
    swift_endAccess();
    v211 = *(v73 + 16);
    v212 = *(v73 + 24);
    *(v73 + 16) = sub_100008660;
    *(v73 + 24) = v210;

    sub_1000074B8(v211, v212);
    swift_beginAccess();

    sub_1000022D0(0, 0, v96, v117);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  v213 = v283;
  if (v283)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v288 = a9;
    v289 = v213;

    sub_100008B48();
    v214 = v213;
  }

  else
  {
    v214 = 0xEE006E6F69747069;
  }

  v215 = a12;

  v216 = sub_100008AD8();
  v217 = sub_100008BF8();
  v213, v218, v219, v220, v221, v222, v223, v224;
  if (os_log_type_enabled(v216, v217))
  {
    v225 = swift_slowAlloc();
    v287 = a12;
    v226 = v213;
    v227 = v225;
    v288 = swift_slowAlloc();
    *v227 = 136315394;
    v290 = v284;
    v228 = sub_100008BA8();
    v230 = v229;
    v231 = sub_100006DB8(v228, v229, &v288);
    v230, v232, v233, v234, v235, v236, v237, v238;
    *(v227 + 4) = v231;
    *(v227 + 12) = 2080;
    if (v226)
    {
      v239 = a9;
    }

    else
    {
      v239 = 0x7263736564206F6ELL;
    }

    v215 = v287;

    v240 = sub_100006DB8(v239, v214, &v288);
    v214, v241, v242, v243, v244, v245, v246, v247;
    *(v227 + 14) = v240;
    _os_log_impl(&_mh_execute_header, v216, v217, "Transfer started: state:%s description: %s", v227, 0x16u);
    swift_arrayDestroy();
  }

  if (v215 >> 60 != 15)
  {
    v248 = objc_allocWithZone(UIImage);
    sub_1000085D4(a11, v215);
    sub_1000085D4(a11, v215);
    isa = sub_100008A88().super.isa;
    v250 = [v248 initWithData:isa];

    sub_10000856C(a11, v215);
    v251 = sub_100008AD8();
    v252 = sub_100008BF8();
    v253 = os_log_type_enabled(v251, v252);
    if (v250)
    {
      if (v253)
      {
        v254 = swift_slowAlloc();
        *v254 = 0;
        _os_log_impl(&_mh_execute_header, v251, v252, "Preview image found and decoded", v254, 2u);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v288 = v250;

      v255 = v250;
      sub_100008B48();
      sub_10000856C(a11, v215);
    }

    else
    {
      if (v253)
      {
        v256 = swift_slowAlloc();
        *v256 = 0;
        _os_log_impl(&_mh_execute_header, v251, v252, "Could not decode preview image data", v256, 2u);
      }

      sub_10000856C(a11, v215);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v288 = a13;
  v289 = a14;

  sub_100008B48();
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v258 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v259 = sub_100008B88();
  v260 = [objc_opt_self() imageNamed:v259 inBundle:v258 withConfiguration:0];

  swift_getKeyPath();
  swift_getKeyPath();
  v288 = v260;
  return sub_100008B48();
}

void sub_100004564(uint64_t a1, _TtC13AirDropNotice35WolfAirDropNoticeSessionsController *a2)
{
  if (qword_100010810 != -1)
  {
    swift_once();
  }

  v4 = sub_100008AF8();
  sub_100006D64(v4, qword_100010818);

  v5 = sub_100008AD8();
  v6 = sub_100008BF8();
  a2, v7, v8, v9, v10, v11, v12, v13;
  if (os_log_type_enabled(v5, v6))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v48[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_100006DB8(a1, a2, v48);
    _os_log_impl(&_mh_execute_header, v5, v6, "WolfAirDropNoticeSessionsController: Ending session with transfer identifier: %s.", v14, 0xCu);
    sub_100007360(v15);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  v23 = v48[0];
  if (*(v48[0] + 16) && (v24 = sub_1000074F0(a1, a2), (v16 & 1) != 0))
  {
    v25 = *(*v23[1].unassociatedDismissalHandler + 8 * v24);

    v23, v26, v27, v28, v29, v30, v31, v32;
    sub_100002AA4();
    v33 = *(v25 + 16);
    if (v33)
    {
      v34 = *(v25 + 24);

      v33(v35);
      sub_1000074B8(v33, v34);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v36 = sub_100008B28();
    sub_100007620(a1, a2);

    v36(v48, 0);
  }

  else
  {
    v23, v16, v17, v18, v19, v20, v21, v22;

    v37 = sub_100008AD8();
    v38 = sub_100008BE8();
    a2, v39, v40, v41, v42, v43, v44, v45;
    if (os_log_type_enabled(v37, v38))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v48[0] = v47;
      *v46 = 136315138;
      *(v46 + 4) = sub_100006DB8(a1, a2, v48);
      _os_log_impl(&_mh_execute_header, v37, v38, "AirDrop transfer session not active for ID: %s, unable to end transfer", v46, 0xCu);
      sub_100007360(v47);
    }
  }
}

void sub_100004A78(uint64_t a1, _TtC13AirDropNotice35WolfAirDropNoticeSessionsController *a2, void *a3, void *a4, void *a5, void *a6, char *a7, _TtC13AirDropNotice35WolfAirDropNoticeSessionsController *a8)
{
  if (qword_100010810 != -1)
  {
    swift_once();
  }

  v13 = sub_100008AF8();
  sub_100006D64(v13, qword_100010818);

  v14 = sub_100008AD8();
  v15 = sub_100008BF8();
  a2, v16, v17, v18, v19, v20, v21, v22;
  if (os_log_type_enabled(v14, v15))
  {
    v98 = a5;
    v23 = swift_slowAlloc();
    v24 = a8;
    v25 = swift_slowAlloc();
    v102 = v25;
    *v23 = 136315138;
    *(v23 + 4) = sub_100006DB8(a1, a2, &v102);
    _os_log_impl(&_mh_execute_header, v14, v15, "WolfAirDropNoticeSessionsController: Updating transfer with identifier %s", v23, 0xCu);
    sub_100007360(v25);
    a8 = v24;

    a5 = v98;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  v33 = v102;
  if (*v102->server && (v34 = sub_1000074F0(a1, a2), (v26 & 1) != 0))
  {
    v35 = *(*v33[1].unassociatedDismissalHandler + 8 * v34);

    v33, v36, v37, v38, v39, v40, v41, v42;
    v43 = [a3 unsignedIntegerValue];
    sub_10000543C(v43, [a4 BOOLValue], objc_msgSend(a5, "integerValue"), objc_msgSend(a6, "integerValue"), a7, a8);

    v44 = sub_100008AD8();
    v45 = sub_100008BF8();
    a8, v46, v47, v48, v49, v50, v51, v52;
    if (os_log_type_enabled(v44, v45))
    {
      v53 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      *v53 = 136315394;
      type metadata accessor for SFAirDropTransferState(0);
      v54 = sub_100008BA8();
      v56 = v55;
      v57 = sub_100006DB8(v54, v55, &v102);
      v56, v58, v59, v60, v61, v62, v63, v64;
      *(v53 + 4) = v57;
      *(v53 + 12) = 2080;
      if (a8)
      {
        v65 = a7;
      }

      else
      {
        v65 = 0x7263736564206F6ELL;
      }

      if (a8)
      {
        v66 = a8;
      }

      else
      {
        v66 = 0xEE006E6F69747069;
      }

      v67 = sub_100006DB8(v65, v66, &v102);
      v66, v68, v69, v70, v71, v72, v73, v74;
      *(v53 + 14) = v67;
      _os_log_impl(&_mh_execute_header, v44, v45, "Transfer updated: state:%s description: %s", v53, 0x16u);
      swift_arrayDestroy();
    }

    if (v43 == 3)
    {
      v75 = sub_100008AD8();
      v76 = sub_100008BD8();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&_mh_execute_header, v75, v76, "Transfer was cancelled by sender. Ending our session locally.", v77, 2u);
      }

      v78 = *(v35 + 32);
      v79 = *(v35 + 40);

      sub_100004564(v78, v79);
      v79, v80, v81, v82, v83, v84, v85, v86;
    }
  }

  else
  {
    v33, v26, v27, v28, v29, v30, v31, v32;

    v87 = sub_100008AD8();
    v88 = sub_100008BE8();
    a2, v89, v90, v91, v92, v93, v94, v95;
    if (os_log_type_enabled(v87, v88))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v102 = v97;
      *v96 = 136315138;
      *(v96 + 4) = sub_100006DB8(a1, a2, &v102);
      _os_log_impl(&_mh_execute_header, v87, v88, "AirDrop transfer session not active for ID: %s, returning", v96, 0xCu);
      sub_100007360(v97);
    }
  }
}

uint64_t sub_10000511C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  return v1;
}

uint64_t sub_1000051B8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  return v3;
}

uint64_t sub_100005238()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  return v1;
}

uint64_t sub_1000052AC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  return v1;
}

uint64_t sub_10000535C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  return v3;
}

uint64_t sub_1000053C8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  return v1;
}

void sub_10000543C(char *a1, char a2, char *a3, char *a4, char *a5, _TtC13AirDropNotice35WolfAirDropNoticeSessionsController *a6)
{
  v11 = SFAirDropTransferStateToString();
  if (v11)
  {
    v12 = v11;
    v13 = sub_100008B98();
    v15 = v14;
  }

  else
  {
    v15 = 0xE90000000000003ELL;
    v13 = 0x6E776F6E6B6E553CLL;
  }

  if (qword_100010810 != -1)
  {
    swift_once();
  }

  v16 = sub_100008AF8();
  sub_100006D64(v16, qword_100010818);

  v17 = sub_100008AD8();
  v18 = sub_100008BF8();
  v15, v19, v20, v21, v22, v23, v24, v25;
  v81 = a6;
  if (os_log_type_enabled(v17, v18))
  {
    v33 = swift_slowAlloc();
    v79 = a1;
    v34 = a3;
    v35 = a2;
    v36 = a4;
    v37 = swift_slowAlloc();
    v82 = v37;
    *v33 = 136315138;
    v38 = sub_100006DB8(v13, v15, &v82);
    v15, v39, v40, v41, v42, v43, v44, v45;
    *(v33 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v17, v18, "Updating: Transfer description: %s", v33, 0xCu);
    sub_100007360(v37);
    a4 = v36;
    a2 = v35;
    a3 = v34;
    a1 = v79;
  }

  else
  {
    v15, v26, v27, v28, v29, v30, v31, v32;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  if (v82 != a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v82 = a1;

    sub_100008B48();
    if (a1 == 2)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_100008B38();

      if ((v82 & 1) == 0)
      {
        sub_100008B78();
        sub_100008B68();
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  if (v82 != (a2 & 1))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v82) = a2 & 1;

    sub_100008B48();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  v46 = v82;
  if (v82 != a3)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v82 = a3;

    sub_100008B48();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  if (v82 == a4)
  {
    if (v46 == a3)
    {
      v47 = v81;
      if (!v81)
      {
        return;
      }

      goto LABEL_23;
    }
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v82 = a4;

    sub_100008B48();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  v48 = v82;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  [v48 setCompletedUnitCount:v82];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  v49 = v82;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  [v49 setTotalUnitCount:v82];

  v47 = v81;
  if (!v81)
  {
    return;
  }

LABEL_23:
  if ((a1 - 1) > 1)
  {
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_100008B38();

  v56 = v83;
  if (!v83)
  {
    goto LABEL_30;
  }

  if (v82 == a5 && v83 == v47)
  {
    v47, v50, v82, v51, v52, v53, v54, v55;
    v56, v57, v58, v59, v60, v61, v62, v63;
    return;
  }

  v64 = sub_100008C88();
  v56, v65, v66, v67, v68, v69, v70, v71;
  if (v64)
  {
    v47, v72, v73, v74, v75, v76, v77, v78;
  }

  else
  {
LABEL_30:
    swift_getKeyPath();
    swift_getKeyPath();
    v82 = a5;
    v83 = v47;

    sub_100008B48();
  }
}

uint64_t sub_100005B58(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100008B48();
}

uint64_t sub_100005BCC()
{
  sub_1000074B8(*(v0 + 16), *(v0 + 24));
  *(v0 + 40), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 56), v8, v9, v10, v11, v12, v13, v14;
  *(v0 + 80), v15, v16, v17, v18, v19, v20, v21;
  v22 = OBJC_IVAR____TtC13AirDropNotice24WolfAirDropNoticeSession__transferAccepted;
  v23 = sub_100007408(&qword_100010E30, &qword_100009978);
  (*(*(v23 - 8) + 8))(v0 + v22, v23);
  v24 = OBJC_IVAR____TtC13AirDropNotice24WolfAirDropNoticeSession__numTotalItems;
  v25 = sub_100007408(&qword_100010E38, &qword_100009980);
  v26 = *(*(v25 - 8) + 8);
  v26(v0 + v24, v25);
  v26(v0 + OBJC_IVAR____TtC13AirDropNotice24WolfAirDropNoticeSession__numCompletedItems, v25);
  v27 = OBJC_IVAR____TtC13AirDropNotice24WolfAirDropNoticeSession__localizedTransferDescription;
  v28 = sub_100007408(&qword_100010E40, &qword_100009988);
  v29 = *(*(v28 - 8) + 8);
  v29(v0 + v27, v28);
  v30 = OBJC_IVAR____TtC13AirDropNotice24WolfAirDropNoticeSession__progress;
  v31 = sub_100007408(&qword_100010E48, &qword_100009990);
  (*(*(v31 - 8) + 8))(v0 + v30, v31);
  v32 = OBJC_IVAR____TtC13AirDropNotice24WolfAirDropNoticeSession__transferState;
  v33 = sub_100007408(&qword_100010E50, &qword_100009998);
  (*(*(v33 - 8) + 8))(v0 + v32, v33);
  v34 = OBJC_IVAR____TtC13AirDropNotice24WolfAirDropNoticeSession__previewImage;
  v35 = sub_100007408(&qword_100010E58, &qword_1000099A0);
  v36 = *(*(v35 - 8) + 8);
  v36(v0 + v34, v35);
  v36(v0 + OBJC_IVAR____TtC13AirDropNotice24WolfAirDropNoticeSession__iconImage, v35);
  v29(v0 + OBJC_IVAR____TtC13AirDropNotice24WolfAirDropNoticeSession__contactIdentifier, v28);
  v37 = OBJC_IVAR____TtC13AirDropNotice24WolfAirDropNoticeSession__state;
  v38 = sub_100007408(&qword_100010E60, &qword_1000099A8);
  (*(*(v38 - 8) + 8))(v0 + v37, v38);
  sub_1000074C8(v0 + OBJC_IVAR____TtC13AirDropNotice24WolfAirDropNoticeSession_delegate);
  return v0;
}

uint64_t sub_100005EA8()
{
  sub_100005BCC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100005F28(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100005F60(uint64_t a1)
{
  sub_10000635C(319, &qword_100010A40, &type metadata for Bool, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    sub_10000635C(319, &qword_100010A48, &type metadata for Int, &type metadata accessor for Published);
    if (v2 <= 0x3F)
    {
      sub_100006308(319, &qword_100010A50, &qword_100010A58, &qword_1000094F8);
      if (v3 <= 0x3F)
      {
        sub_100006220(319);
        if (v4 <= 0x3F)
        {
          sub_100006288(319);
          if (v5 <= 0x3F)
          {
            sub_100006308(319, &qword_100010A78, &qword_100010A80, &qword_100009500);
            if (v6 <= 0x3F)
            {
              sub_10000635C(319, &unk_100010A88, &type metadata for NoticeState, &type metadata accessor for Published);
              if (v7 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_100006220(uint64_t a1)
{
  if (!qword_100010A60)
  {
    sub_1000089C0(255, &qword_100010A68, NSProgress_ptr);
    v1 = sub_100008B58();
    if (!v2)
    {
      atomic_store(v1, &qword_100010A60);
    }
  }
}

void sub_100006288(uint64_t a1)
{
  if (!qword_100010A70)
  {
    type metadata accessor for SFAirDropTransferState(255);
    v1 = sub_100008B58();
    if (!v2)
    {
      atomic_store(v1, &qword_100010A70);
    }
  }
}

void sub_100006308(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1000030A8(a3, a4);
    v5 = sub_100008B58();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10000635C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for NoticeState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NoticeState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100006524@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for WolfAirDropNoticeSession(0);
  result = sub_100008B08();
  *a2 = result;
  return result;
}

uint64_t sub_100006564@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  *a2 = v4;
  return result;
}

uint64_t sub_1000065E4(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_100008B48();
}

uint64_t sub_10000665C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  *a2 = v4;
  return result;
}

uint64_t sub_1000066DC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100008B48();
}

uint64_t sub_10000678C@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  *a4 = v6;
  return result;
}

uint64_t sub_10000681C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100008B48();
}

uint64_t sub_10000688C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  *a2 = v4;
  return result;
}

uint64_t sub_10000690C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_100008B48();
}

uint64_t sub_1000069C0@<X0>(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  *a4 = v6;
  return result;
}

uint64_t sub_100006A50(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100008B48();
}

uint64_t sub_100006B38(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;

  return sub_100008B48();
}

double sub_100006BC0@<D0>(_OWORD *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t sub_100006C50(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100008B48();
}

void *sub_100006CD0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

unint64_t sub_100006D04()
{
  result = qword_100010E20;
  if (!qword_100010E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010E20);
  }

  return result;
}

uint64_t sub_100006D64(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100006DB8(uint64_t a1, _TtC13AirDropNotice35WolfAirDropNoticeSessionsController *a2, uint64_t *a3)
{

  v6 = sub_100006E84(v18, 0, 0, 1, a1, a2);
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
    sub_1000073AC(v18, v16);
    *a3 = v16 + 32;
  }

LABEL_4:
  sub_100007360(v18);
  return v14;
}

unint64_t sub_100006E84(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100006F90(a5, a6);
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
    result = sub_100008C48();
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

char *sub_100006F90(uint64_t a1, unint64_t a2)
{
  v3 = sub_100006FDC(a1, a2);
  sub_10000710C(&off_10000C598);
  return v3;
}

char *sub_100006FDC(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000071F8(v5, 0);
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

  result = sub_100008C48();
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
        v10 = sub_100008BC8();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000071F8(v10, 0);
        result = sub_100008C38();
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

void sub_10000710C(_TtC13AirDropNotice35WolfAirDropNoticeSessionsController *a1)
{
  v2 = *a1->server;
  v3 = *v1;
  v4 = *(*v1)->server;
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *v3->unassociatedDismissalHandler >> 1)
  {
    if (*a1->server)
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

  v3 = sub_10000726C(isUniquelyReferenced_nonNull_native, v26, 1, v3, v11, v12, v13, v14);
  if (!*a1->server)
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
  v15 = *v3->server;
  if ((*v3->unassociatedDismissalHandler >> 1) - v15 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[1] + v15, &a1[1], v2);
  a1, v16, v17, v18, v19, v20, v21, v22;
  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v23 = *v3->server;
  v24 = __OFADD__(v23, v2);
  v25 = v23 + v2;
  if (!v24)
  {
    *v3->server = v25;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_1000071F8(uint64_t a1, uint64_t a2)
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

  sub_100007408(&qword_100010E28, &qword_100009898);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

_TtC13AirDropNotice35WolfAirDropNoticeSessionsController *sub_10000726C(_TtC13AirDropNotice35WolfAirDropNoticeSessionsController *result, int64_t a2, void *a3, _TtC13AirDropNotice35WolfAirDropNoticeSessionsController *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->unassociatedDismissalHandler;
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

  v12 = *a4->server;
  if (v11 <= v12)
  {
    v13 = *a4->server;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_100007408(&qword_100010E28, &qword_100009898);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    *v14->server = v12;
    *v14->unassociatedDismissalHandler = 2 * v15 - 64;
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  v16 = v14 + 1;
  v17 = a4 + 1;
  if (v9)
  {
    if (v14 != a4 || v16 >= (v17 + v12))
    {
      memmove(v16, v17, v12);
    }

    *a4->server = 0;
  }

  else
  {
    memcpy(v16, v17, v12);
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

uint64_t sub_100007360(void *a1)
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

uint64_t sub_1000073AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100007408(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t *sub_100007454(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1000074B8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1000074F0(uint64_t a1, uint64_t a2)
{
  sub_100008CA8();
  sub_100008BB8();
  v4 = sub_100008CC8();

  return sub_100007568(a1, a2, v4);
}

unint64_t sub_100007568(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100008C88())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100007620(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1000074F0(a1, a2);
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
    sub_10000827C();
    v15 = v18;
  }

  *(*(v15 + 48) + 16 * v6 + 8), v8, v9, v10, v11, v12, v13, v14;
  v16 = *(*(v15 + 56) + 8 * v6);
  sub_100007C18(v6, v15);
  *v3 = v15;
  return v16;
}

uint64_t sub_1000076B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100007408(&qword_100010E68, &qword_1000099F8);
  v34 = v4;
  result = sub_100008C68();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
    v14 = result + 64;
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
      if ((v34 & 1) == 0)
      {
      }

      sub_100008CA8();
      sub_100008BB8();
      result = sub_100008CC8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100007960(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100007408(&qword_100010E70, &qword_100009A00);
  v33 = v4;
  result = sub_100008C68();
  v7 = result;
  if (*(v5 + 16))
  {
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
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {
      }

      sub_100008CA8();
      sub_100008BB8();
      result = sub_100008CC8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_100007C18(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100008C28() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 16 * v6 + 8);
      sub_100008CA8();

      sub_100008BB8();
      v10 = sub_100008CC8();
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

void sub_100007DC8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100008C28() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 16 * v6 + 8);
      sub_100008CA8();

      sub_100008BB8();
      v10 = sub_100008CC8();
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
        v23 = (v22 + 16 * v3);
        v24 = (v22 + 16 * v6);
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

uint64_t sub_100007F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1000074F0(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_100007960(v18, a5 & 1);
      v13 = sub_1000074F0(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_100008C98();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1000083EC();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

uint64_t sub_100008100(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000074F0(a2, a3);
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
      sub_1000076B8(v16, a4 & 1);
      v11 = sub_1000074F0(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_100008C98();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_10000827C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
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

void *sub_10000827C()
{
  v1 = v0;
  sub_100007408(&qword_100010E68, &qword_1000099F8);
  v2 = *v0;
  v3 = sub_100008C58();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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

  return result;
}

void *sub_1000083EC()
{
  v1 = v0;
  sub_100007408(&qword_100010E70, &qword_100009A00);
  v2 = *v0;
  v3 = sub_100008C58();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

  return result;
}

uint64_t sub_10000856C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100008580(a1, a2);
  }

  return a1;
}

uint64_t sub_100008580(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1000085D4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100008628()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100008688(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007408(&qword_100010E68, &qword_1000099F8);
    v3 = sub_100008C78();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1000074F0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_10000878C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007408(&qword_100010E70, &qword_100009A00);
    v3 = sub_100008C78();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_1000074F0(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

uint64_t sub_1000088A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008928(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100008940()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008980()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000089C0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100008A08(uint64_t a1)
{
  v2 = sub_100007408(&qword_100010EE8, &qword_100009A18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}