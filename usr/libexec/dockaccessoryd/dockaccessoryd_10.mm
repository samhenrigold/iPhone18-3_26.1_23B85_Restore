uint64_t sub_100164FA8(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v49 = a1;
  v41 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v41 - 8);
  __chkstk_darwin(v41);
  v43 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for DispatchQoS();
  v4 = *(v40 - 8);
  __chkstk_darwin(v40);
  v46 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002A6780 != -1)
  {
LABEL_21:
    swift_once();
  }

  v6 = qword_1002B1CF0;
  sub_1001F1EF0(_swiftEmptyArrayStorage);

  v7 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock;
  v8 = *(v6 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock);

  os_unfair_lock_lock(v8 + 4);

  v9 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyBatteryClients;
  swift_beginAccess();
  v10 = *(v6 + v9);
  v48 = v6;
  v11 = *(v6 + v7);

  os_unfair_lock_unlock(v11 + 4);

  v12 = 0;
  v13 = 1 << *(v10 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v10 + 64);
  v47 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__txnLock;
  v44 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_txn;
  v16 = (v13 + 63) >> 6;
  v39 = v51;
  v38 = v2 + 1;
  v37 = (v4 + 8);
  while (v15)
  {
LABEL_11:
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v19 = *(v10 + 56) + ((v12 << 10) | (16 * v18));
    if (*v19)
    {
      v20 = *(v19 + 8);
      v2 = *v19;
      v4 = v20;
      v21 = [v2 remoteObjectProxy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100095274(&qword_1002A91F8, &qword_10023F050);
      if (swift_dynamicCast())
      {
        v22 = v52;
        sub_100095B94(0, &qword_1002A7270, NSObject_ptr);
        v23 = v4;
        v4 = static NSObject.== infix(_:_:)();

        if (v4)
        {
          v42 = v22;
          v24 = v48;
          v25 = *(v48 + v47);

          os_unfair_lock_lock(v25 + 4);

          v26 = *(v24 + v44);
          if (v26)
          {
            v27 = *(v26 + 24);
            if (v27)
            {
              v51[2] = sub_1000BABC4;
              v51[3] = v26;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              v51[0] = sub_100147FC8;
              v51[1] = &unk_100279430;
              v36 = v26;
              v35 = _Block_copy(aBlock);
              swift_retain_n();
              v34 = v27;
              static DispatchQoS.unspecified.getter();
              v52 = _swiftEmptyArrayStorage;
              v33 = sub_10016947C(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
              sub_100095274(&unk_1002A6B60, qword_10023AE10);
              sub_1000E4D54(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10, &protocol conformance descriptor for [A]);
              v28 = v41;
              dispatch thunk of SetAlgebra.init<A>(_:)();
              v29 = v35;
              v30 = v34;
              OS_dispatch_queue.async(group:qos:flags:execute:)();
              _Block_release(v29);

              (*v38)(v43, v28);
              (*v37)(v46, v40);
            }
          }

          v31 = *(v48 + v47);

          os_unfair_lock_unlock(v31 + 4);

          v4 = v42;
          [v42 batteryStateDataWithInfo:v49 data:v45];
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v17 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_21;
    }

    if (v17 >= v16)
    {
    }

    v15 = *(v10 + 64 + 8 * v17);
    ++v12;
    if (v15)
    {
      v12 = v17;
      goto LABEL_11;
    }
  }
}

void sub_1001655C8(void *a1, uint64_t a2)
{
  v431 = a1;
  v414 = type metadata accessor for ComponentType();
  v3 = *(v414 - 8);
  __chkstk_darwin(v414);
  v413 = &v400 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100095274(&unk_1002A9330, &qword_10023DEE0);
  __chkstk_darwin(v5 - 8);
  v7 = &v400 - v6;
  v8 = type metadata accessor for TrajectoryCommand.Progress();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v423 = (&v400 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v438 = type metadata accessor for Logger();
  v11 = __chkstk_darwin(v438);
  v419 = &v400 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v420 = &v400 - v14;
  v15 = __chkstk_darwin(v13);
  v412 = &v400 - v16;
  v17 = __chkstk_darwin(v15);
  v424 = &v400 - v18;
  v19 = __chkstk_darwin(v17);
  v418 = &v400 - v20;
  v21 = __chkstk_darwin(v19);
  v22 = __chkstk_darwin(v21);
  v24 = &v400 - v23;
  v25 = __chkstk_darwin(v22);
  __chkstk_darwin(v25);
  v429 = &v400 - v30;
  if (!a2)
  {
    return;
  }

  v441 = *(a2 + 16);
  if (!v441)
  {
    return;
  }

  v31 = 0;
  v32 = 0;
  v430 = OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_manager;
  v440 = a2 + 32;
  v434 = (v26 + 16);
  v435 = OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger;
  v433 = (v26 + 8);
  v411 = "com.apple.dockaccessoryd.server";
  v415 = (v9 + 48);
  v406 = (v9 + 8);
  v407 = (v9 + 32);
  v405 = enum case for ComponentType.Battery(_:);
  v404 = (v3 + 104);
  v403 = (v3 + 8);
  *&v29 = 136315138;
  v428 = v29;
  *&v29 = 138412290;
  v410 = v29;
  *&v29 = 136316162;
  v402 = v29;
  v416 = v7;
  v417 = v8;
  v408 = v27;
  v439 = v24;
  v427 = v28;
  while (2)
  {
    v444 = v31;
    sub_100095B34(v440 + 32 * v31, v452);
    sub_100095B34(v452, &v448);
    v33 = sub_100095B94(0, &qword_1002A92F0, off_100271C60);
    v34 = swift_dynamicCast();
    v445 = v33;
    if ((v34 & 1) == 0)
    {
      goto LABEL_59;
    }

    v35 = v446;
    v36 = [v446 cbCharacteristic];
    if (!v36)
    {
      goto LABEL_311;
    }

    v37 = v36;
    v38 = sub_100095B94(0, &qword_1002A7270, NSObject_ptr);
    v39 = [v37 UUID];

    if (qword_1002A6728 != -1)
    {
      swift_once();
    }

    v40 = static NSObject.== infix(_:_:)();

    if ((v40 & 1) == 0)
    {

      goto LABEL_59;
    }

    if ([v35 value])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v446 = 0u;
      v447 = 0u;
    }

    v41 = v429;
    v448 = v446;
    v449 = v447;
    if (!*(&v447 + 1))
    {
      sub_100095808(v452);

      sub_100095C84(&v448, &qword_1002A9210, &unk_10023BE70);
      return;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_100095808(v452);

      return;
    }

    v442 = v32;
    v437 = __dst;
    v42 = __dst & 1;
    v43 = *v434;
    v44 = v438;
    (*v434)(v41, v443 + v435, v438);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    v47 = os_log_type_enabled(v45, v46);
    v432 = v35;
    v425 = v42;
    v426 = v38;
    if (v47)
    {
      v48 = swift_slowAlloc();
      v49 = v44;
      v50 = swift_slowAlloc();
      *&v448 = v50;
      *v48 = v428;
      if (v42)
      {
        v51 = 0x64656C62616E45;
      }

      else
      {
        v51 = 0x64656C6261736944;
      }

      if (v42)
      {
        v52 = 0xE700000000000000;
      }

      else
      {
        v52 = 0xE800000000000000;
      }

      v53 = sub_1000952D4(v51, v52, &v448);

      *(v48 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v45, v46, "Tracking is %s!", v48, 0xCu);
      sub_100095808(v50);
      v44 = v49;
    }

    v54 = *v433;
    (*v433)(v41, v44);
    v55 = v427;
    v43(v427, v443 + v435, v44);
    v56 = v55;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();
    v59 = os_log_type_enabled(v57, v58);
    v60 = v437;
    if (v59)
    {
      v61 = swift_slowAlloc();
      v62 = v44;
      v63 = swift_slowAlloc();
      *&v448 = v63;
      *v61 = v428;
      if ((v60 >> 1))
      {
        v64 = 1701736260;
      }

      else
      {
        v64 = 0x656E6F44746F4ELL;
      }

      if ((v60 >> 1))
      {
        v65 = 0xE400000000000000;
      }

      else
      {
        v65 = 0xE700000000000000;
      }

      v60 = sub_1000952D4(v64, v65, &v448);

      *(v61 + 4) = v60;
      LOBYTE(v60) = v437;
      _os_log_impl(&_mh_execute_header, v57, v58, "Startup done is %s!", v61, 0xCu);
      sub_100095808(v63);

      v66 = v56;
      v67 = v62;
    }

    else
    {

      v66 = v56;
      v67 = v44;
    }

    v54(v66, v67);
    v68 = v431;
    v69 = v432;
    v24 = v439;
    v32 = v442;
    if ((v60 & 2) != 0)
    {
      if (qword_1002A6780 != -1)
      {
        swift_once();
      }

      v70 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
      sub_1000E0C3C();

      v68 = v431;
    }

    v71 = *(v443 + v430);
    if (!v71)
    {

      v450 = 0;
      v448 = 0u;
      v449 = 0u;
LABEL_58:
      sub_100095C84(&v448, &unk_1002A6F40, &unk_10023BE90);
      goto LABEL_59;
    }

    if (!v68)
    {
      goto LABEL_317;
    }

    v72 = v71;
    v73 = [v68 identifier];
    if (!v73)
    {
      goto LABEL_316;
    }

    v74 = v73;
    v436 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v75;

    v77 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v78 = *(v72 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem);
    OS_dispatch_semaphore.wait()();

    v79 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v80 = *(v72 + v79);
    v81 = *(v80 + 16);
    if (!v81)
    {

LABEL_57:
      v94 = *(v72 + v77);
      OS_dispatch_semaphore.signal()();

      v450 = 0;
      v448 = 0u;
      v449 = 0u;
      goto LABEL_58;
    }

    v437 = v76;
    v421 = v77;
    v422 = v72;
    v82 = v80 + 32;

    v83 = 0;
    while (1)
    {
      if (v83 >= *(v80 + 16))
      {
        __break(1u);
LABEL_306:
        __break(1u);
LABEL_307:
        __break(1u);
LABEL_308:
        __break(1u);
LABEL_309:
        __break(1u);
LABEL_310:
        __break(1u);
LABEL_311:
        __break(1u);
LABEL_312:
        __break(1u);
LABEL_313:
        __break(1u);
LABEL_314:
        __break(1u);
LABEL_315:
        __break(1u);
LABEL_316:
        __break(1u);
LABEL_317:
        __break(1u);
      }

      sub_1000A097C(v82, &v446);
      v84 = *(*sub_1000A09E0(&v446, *(&v447 + 1)) + 32);
      if (!v84)
      {
        goto LABEL_44;
      }

      v85 = v84;
      v86 = [v85 identifier];
      if (v86)
      {
        break;
      }

LABEL_43:

LABEL_44:
      ++v83;
      sub_100095808(&v446);
      v82 += 40;
      if (v81 == v83)
      {

        v24 = v439;
        v77 = v421;
        v72 = v422;
        goto LABEL_57;
      }
    }

    v87 = v86;
    v88 = v32;
    v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v91 = v90;

    if (v89 != v436 || v91 != v437)
    {
      v93 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v32 = v88;
      if (v93)
      {

        goto LABEL_92;
      }

      goto LABEL_43;
    }

LABEL_92:

    v137 = v422;
    v138 = *(v422 + v421);
    OS_dispatch_semaphore.signal()();

    sub_1000A097C(&v446, &v448);
    sub_100095808(&v446);
    v24 = v439;
    if (!*(&v449 + 1))
    {

      v32 = v88;
      goto LABEL_58;
    }

    sub_100095274(&unk_1002A7A90, &unk_10023C960);
    type metadata accessor for DaemonAccessory(0);
    v32 = v88;
    if (swift_dynamicCast())
    {
      v139 = v446;
      if (qword_1002A6780 != -1)
      {
        swift_once();
      }

      v140 = qword_1002B1CF0;
      v141 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
      v142 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

      os_unfair_lock_lock(v142 + 4);

      v143 = *(v140 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
      v144 = *(v140 + v141);
      v145 = v143;

      os_unfair_lock_unlock(v144 + 4);

      if (v143)
      {
        v146 = dispatch thunk of DockCoreAccessory.info.getter();
        v147 = *(v139 + 24);
        v148 = static NSObject.== infix(_:_:)();

        v149 = v432;
        if (v148)
        {
          v150 = v425;
          *(v139 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_trackingEnabled) = v425;
          sub_100189E44(v150);
        }
      }

      else
      {
      }
    }

    else
    {
    }

LABEL_59:
    sub_100095B34(v452, &v448);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_110;
    }

    v95 = v446;
    v96 = [v446 cbCharacteristic];
    if (!v96)
    {
      goto LABEL_312;
    }

    v97 = v96;
    sub_100095B94(0, &qword_1002A7270, NSObject_ptr);
    v98 = [v97 UUID];

    if (qword_1002A6748 != -1)
    {
      swift_once();
    }

    v99 = static NSObject.== infix(_:_:)();

    if ((v99 & 1) == 0)
    {
LABEL_75:

      goto LABEL_110;
    }

    if ([v95 value])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v446 = 0u;
      v447 = 0u;
    }

    v448 = v446;
    v449 = v447;
    if (!*(&v447 + 1))
    {

      v129 = &qword_1002A9210;
      v130 = &unk_10023BE70;
LABEL_109:
      sub_100095C84(&v448, v129, v130);
      goto LABEL_110;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_75;
    }

    v100 = __dst;
    v101 = objc_opt_self();
    v432 = *(&v100 + 1);
    v426 = v100;
    isa = Data._bridgeToObjectiveC()().super.isa;
    *&v448 = 0;
    v103 = [v101 parsedFromData:isa error:&v448];

    v104 = v103;
    v105 = v448;
    if (!v104)
    {
      v131 = v448;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      goto LABEL_89;
    }

    v106 = *(v443 + v430);
    if (!v106)
    {
      v151 = v448;

      sub_1000A0D2C(v426, v432);
      v450 = 0;
      v448 = 0u;
      v449 = 0u;
LABEL_108:
      v129 = &unk_1002A6F40;
      v130 = &unk_10023BE90;
      goto LABEL_109;
    }

    v425 = v104;
    v107 = v431;
    if (!v431)
    {
      goto LABEL_322;
    }

    v108 = v106;
    v109 = v105;
    v110 = [v107 identifier];
    if (!v110)
    {
      goto LABEL_321;
    }

    v111 = v110;
    v436 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v113 = v112;

    v421 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v114 = *&v108[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
    OS_dispatch_semaphore.wait()();

    v115 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v422 = v108;
    v116 = *&v108[v115];
    v117 = *(v116 + 16);
    if (!v117)
    {

LABEL_107:
      v152 = v422;
      v153 = *(v422 + v421);
      OS_dispatch_semaphore.signal()();

      sub_1000A0D2C(v426, v432);
      v450 = 0;
      v448 = 0u;
      v449 = 0u;
      v24 = v439;
      goto LABEL_108;
    }

    v437 = v113;
    v442 = v32;
    v118 = v116 + 32;

    v119 = 0;
    while (1)
    {
      if (v119 >= *(v116 + 16))
      {
        goto LABEL_306;
      }

      sub_1000A097C(v118, &v446);
      v120 = *(*sub_1000A09E0(&v446, *(&v447 + 1)) + 32);
      if (!v120)
      {
        goto LABEL_77;
      }

      v121 = v120;
      v122 = [v121 identifier];
      if (v122)
      {
        break;
      }

LABEL_76:

LABEL_77:
      ++v119;
      sub_100095808(&v446);
      v118 += 40;
      if (v117 == v119)
      {

        v32 = v442;
        goto LABEL_107;
      }
    }

    v123 = v122;
    v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v126 = v125;

    if (v124 != v436 || v126 != v437)
    {
      v128 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v128)
      {

        goto LABEL_245;
      }

      goto LABEL_76;
    }

LABEL_245:

    v315 = v422;
    v316 = *(v422 + v421);
    OS_dispatch_semaphore.signal()();

    sub_1000A097C(&v446, &v448);
    sub_100095808(&v446);
    v24 = v439;
    v32 = v442;
    v317 = v425;
    if (!*(&v449 + 1))
    {

      sub_1000A0D2C(v426, v432);
      goto LABEL_108;
    }

    sub_100095274(&unk_1002A7A90, &unk_10023C960);
    type metadata accessor for DaemonAccessory(0);
    if (swift_dynamicCast())
    {
      v318 = v446;
      v319 = *(v443 + v430);
      if (v319)
      {
        v320 = *(v319 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_firmwareUpdateManager);
        sub_10014BB80(v318, v317);
        if (v32)
        {

LABEL_89:
          v32 = 0;
          (*v434)(v420, v443 + v435, v438);
          swift_errorRetain();
          v132 = Logger.logObject.getter();
          v133 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v132, v133))
          {
            v134 = swift_slowAlloc();
            v135 = swift_slowAlloc();
            *v134 = v410;
            swift_errorRetain();
            v136 = _swift_stdlib_bridgeErrorToNSError();
            *(v134 + 4) = v136;
            *v135 = v136;
            _os_log_impl(&_mh_execute_header, v132, v133, "error parsing firmware update readiness %@", v134, 0xCu);
            sub_100095C84(v135, &unk_1002A6F60, &unk_10023C4E0);

            sub_1000A0D2C(v426, v432);
          }

          else
          {

            sub_1000A0D2C(v426, v432);
          }

          (*v433)(v420, v438);
        }

        else
        {

          sub_1000A0D2C(v426, v432);
        }
      }

      else
      {

        sub_1000A0D2C(v426, v432);
      }
    }

    else
    {

      sub_1000A0D2C(v426, v432);
    }

LABEL_110:
    sub_100095B34(v452, &v448);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_150;
    }

    v154 = v446;
    v155 = [v446 cbCharacteristic];
    if (!v155)
    {
      goto LABEL_313;
    }

    v156 = v155;
    sub_100095B94(0, &qword_1002A7270, NSObject_ptr);
    v157 = [v156 UUID];

    if (qword_1002A6750 != -1)
    {
      swift_once();
    }

    v158 = static NSObject.== infix(_:_:)();

    if ((v158 & 1) == 0)
    {
LABEL_126:

      goto LABEL_150;
    }

    if ([v154 value])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v446 = 0u;
      v447 = 0u;
    }

    v448 = v446;
    v449 = v447;
    if (!*(&v447 + 1))
    {

      v188 = &qword_1002A9210;
      v189 = &unk_10023BE70;
LABEL_149:
      sub_100095C84(&v448, v188, v189);
      goto LABEL_150;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_126;
    }

    v159 = __dst;
    v160 = objc_opt_self();
    v432 = *(&v159 + 1);
    v426 = v159;
    v161 = Data._bridgeToObjectiveC()().super.isa;
    *&v448 = 0;
    v162 = [v160 parsedFromData:v161 error:&v448];

    v163 = v162;
    v164 = v448;
    if (!v163)
    {
      v190 = v448;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      goto LABEL_140;
    }

    v165 = *(v443 + v430);
    if (!v165)
    {
      v196 = v448;

      sub_1000A0D2C(v426, v432);
      v450 = 0;
      v448 = 0u;
      v449 = 0u;
LABEL_148:
      v188 = &unk_1002A6F40;
      v189 = &unk_10023BE90;
      goto LABEL_149;
    }

    v425 = v163;
    v166 = v431;
    if (!v431)
    {
      goto LABEL_320;
    }

    v167 = v165;
    v168 = v164;
    v169 = [v166 identifier];
    if (!v169)
    {
      goto LABEL_319;
    }

    v170 = v169;
    v436 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v172 = v171;

    v421 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v173 = *&v167[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
    OS_dispatch_semaphore.wait()();

    v174 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v422 = v167;
    v175 = *&v167[v174];
    v176 = *(v175 + 16);
    if (!v176)
    {

LABEL_147:
      v197 = v422;
      v198 = *(v422 + v421);
      OS_dispatch_semaphore.signal()();

      sub_1000A0D2C(v426, v432);
      v450 = 0;
      v448 = 0u;
      v449 = 0u;
      v24 = v439;
      goto LABEL_148;
    }

    v437 = v172;
    v442 = v32;
    v177 = v175 + 32;

    v178 = 0;
    while (1)
    {
      if (v178 >= *(v175 + 16))
      {
        goto LABEL_307;
      }

      sub_1000A097C(v177, &v446);
      v179 = *(*sub_1000A09E0(&v446, *(&v447 + 1)) + 32);
      if (!v179)
      {
        goto LABEL_128;
      }

      v180 = v179;
      v181 = [v180 identifier];
      if (v181)
      {
        break;
      }

LABEL_127:

LABEL_128:
      ++v178;
      sub_100095808(&v446);
      v177 += 40;
      if (v176 == v178)
      {

        v32 = v442;
        goto LABEL_147;
      }
    }

    v182 = v181;
    v183 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v185 = v184;

    if (v183 != v436 || v185 != v437)
    {
      v187 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v187)
      {

        goto LABEL_251;
      }

      goto LABEL_127;
    }

LABEL_251:

    v321 = v422;
    v322 = *(v422 + v421);
    OS_dispatch_semaphore.signal()();

    sub_1000A097C(&v446, &v448);
    sub_100095808(&v446);
    v24 = v439;
    v32 = v442;
    v323 = v425;
    if (!*(&v449 + 1))
    {

      sub_1000A0D2C(v426, v432);
      goto LABEL_148;
    }

    sub_100095274(&unk_1002A7A90, &unk_10023C960);
    type metadata accessor for DaemonAccessory(0);
    if (swift_dynamicCast())
    {
      v324 = v446;
      v325 = *(v443 + v430);
      if (v325)
      {
        v326 = *(v325 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_firmwareUpdateManager);
        sub_10014C008(v324, v323);
        if (v32)
        {

LABEL_140:
          v32 = 0;
          (*v434)(v419, v443 + v435, v438);
          swift_errorRetain();
          v191 = Logger.logObject.getter();
          v192 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v191, v192))
          {
            v193 = swift_slowAlloc();
            v194 = swift_slowAlloc();
            *v193 = v410;
            swift_errorRetain();
            v195 = _swift_stdlib_bridgeErrorToNSError();
            *(v193 + 4) = v195;
            *v194 = v195;
            _os_log_impl(&_mh_execute_header, v191, v192, "error parsing firmware update update status %@", v193, 0xCu);
            sub_100095C84(v194, &unk_1002A6F60, &unk_10023C4E0);

            sub_1000A0D2C(v426, v432);
          }

          else
          {

            sub_1000A0D2C(v426, v432);
          }

          (*v433)(v419, v438);
        }

        else
        {

          sub_1000A0D2C(v426, v432);
        }
      }

      else
      {

        sub_1000A0D2C(v426, v432);
      }
    }

    else
    {

      sub_1000A0D2C(v426, v432);
    }

LABEL_150:
    sub_100095B34(v452, &v448);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_191;
    }

    v199 = v446;
    v200 = [v446 cbCharacteristic];
    if (!v200)
    {
      goto LABEL_314;
    }

    v201 = v200;
    sub_100095B94(0, &qword_1002A7270, NSObject_ptr);
    v202 = [v201 UUID];

    if (qword_1002A6730 != -1)
    {
      swift_once();
    }

    v203 = static NSObject.== infix(_:_:)();

    if ((v203 & 1) == 0)
    {
      goto LABEL_165;
    }

    if ([v199 value])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v446 = 0u;
      v447 = 0u;
    }

    v448 = v446;
    v449 = v447;
    if (!*(&v447 + 1))
    {

      sub_100095C84(&v448, &qword_1002A9210, &unk_10023BE70);
      goto LABEL_191;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_165:

      goto LABEL_191;
    }

    v442 = v32;
    v436 = *(&__dst + 1);
    v204 = __dst;
    v205 = v24;
    v206 = *v434;
    (*v434)(v205, v443 + v435, v438);
    v207 = Logger.logObject.getter();
    v208 = static os_log_type_t.debug.getter();
    v209 = os_log_type_enabled(v207, v208);
    v437 = v204;
    if (v209)
    {
      v210 = swift_slowAlloc();
      v211 = swift_slowAlloc();
      *&v448 = v211;
      *v210 = v428;
      *(v210 + 4) = sub_1000952D4(0xD00000000000004BLL, v411 | 0x8000000000000000, &v448);
      _os_log_impl(&_mh_execute_header, v207, v208, "%s Decoding trajectory status from ADK", v210, 0xCu);
      sub_100095808(v211);

      v204 = v437;
    }

    v212 = *v433;
    (*v433)(v205, v438);
    v213 = v436;
    sub_1000A0CD8(v204, v436);
    v214 = v416;
    TrajectoryCommand.Progress.init(data:)();
    v215 = v417;
    v216 = (*v415)(v214, 1, v417);
    v32 = v442;
    if (v216 == 1)
    {

      sub_1000A0D2C(v204, v213);
      sub_100095C84(v214, &unk_1002A9330, &qword_10023DEE0);
      goto LABEL_164;
    }

    (*v407)(v423, v214, v215);
    v217 = v408;
    v206(v408, v443 + v435, v438);
    v218 = v217;
    v219 = Logger.logObject.getter();
    v220 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v219, v220))
    {
      v221 = swift_slowAlloc();
      v222 = swift_slowAlloc();
      *&v448 = v222;
      *v221 = v428;
      *(v221 + 4) = sub_1000952D4(0xD00000000000004BLL, v411 | 0x8000000000000000, &v448);
      _os_log_impl(&_mh_execute_header, v219, v220, "%s Received trajectory status from ADK", v221, 0xCu);
      sub_100095808(v222);
    }

    v212(v218, v438);
    v223 = v436;
    v224 = v437;
    v225 = v431;
    v226 = *(v443 + v430);
    v227 = v417;
    if (!v226)
    {

      sub_1000A0D2C(v224, v223);
      (*v406)(v423, v227);
      v450 = 0;
      v448 = 0u;
      v449 = 0u;
      goto LABEL_190;
    }

    if (!v431)
    {
      goto LABEL_326;
    }

    v228 = v226;
    v229 = [v225 identifier];
    if (!v229)
    {
      goto LABEL_325;
    }

    v230 = v229;
    v426 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v432 = v231;

    v422 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v232 = *&v228[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
    OS_dispatch_semaphore.wait()();

    v233 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v425 = v228;
    v234 = *&v228[v233];
    v235 = *(v234 + 16);
    if (!v235)
    {

LABEL_188:
      v247 = v425;
      v248 = *(v422 + v425);
      OS_dispatch_semaphore.signal()();

      sub_1000A0D2C(v224, v223);
      v450 = 0;
      v448 = 0u;
      v449 = 0u;
      v32 = v442;
LABEL_189:
      (*v406)(v423, v227);
LABEL_190:
      sub_100095C84(&v448, &unk_1002A6F40, &unk_10023BE90);
      v24 = v439;
      goto LABEL_191;
    }

    v236 = v234 + 32;

    v237 = 0;
    while (1)
    {
      if (v237 >= *(v234 + 16))
      {
        goto LABEL_308;
      }

      sub_1000A097C(v236, &v446);
      v238 = *(*sub_1000A09E0(&v446, *(&v447 + 1)) + 32);
      if (!v238)
      {
        goto LABEL_175;
      }

      v239 = v238;
      v240 = [v239 identifier];
      if (v240)
      {
        break;
      }

LABEL_174:

      v224 = v437;
LABEL_175:
      ++v237;
      sub_100095808(&v446);
      v236 += 40;
      if (v235 == v237)
      {

        v227 = v417;
        v223 = v436;
        goto LABEL_188;
      }
    }

    v241 = v240;
    v242 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v244 = v243;

    if (v242 != v426 || v244 != v432)
    {
      v246 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v246)
      {

        goto LABEL_257;
      }

      goto LABEL_174;
    }

LABEL_257:

    v327 = v425;
    v328 = *(v422 + v425);
    OS_dispatch_semaphore.signal()();

    sub_1000A097C(&v446, &v448);
    sub_100095808(&v446);
    v227 = v417;
    v32 = v442;
    v330 = v436;
    v329 = v437;
    if (!*(&v449 + 1))
    {

      sub_1000A0D2C(v329, v330);
      goto LABEL_189;
    }

    sub_100095274(&unk_1002A7A90, &unk_10023C960);
    type metadata accessor for DaemonAccessory(0);
    v331 = swift_dynamicCast();
    if (v331)
    {
      v432 = &v400;
      v332 = v446;
      v333 = *(v446 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_callbackLock);
      v334 = __chkstk_darwin(v331);
      v335 = v423;
      *(&v400 - 2) = v423;
      *(&v400 - 1) = v332;
      __chkstk_darwin(v334);
      *(&v400 - 2) = sub_1001698F0;
      *(&v400 - 1) = v336;

      os_unfair_lock_lock(v333 + 4);
      sub_1000F003C(v337);
      os_unfair_lock_unlock(v333 + 4);

      sub_1000A0D2C(v437, v330);

      (*v406)(v335, v227);
    }

    else
    {
      (*v406)(v423, v227);

      sub_1000A0D2C(v329, v330);
    }

LABEL_164:
    v24 = v439;
LABEL_191:
    sub_100095B34(v452, &v448);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_100095808(v452);
      goto LABEL_5;
    }

    v249 = v446;
    if ([v446 value])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v446 = 0u;
      v447 = 0u;
    }

    v448 = v446;
    v449 = v447;
    if (!*(&v447 + 1))
    {
      sub_100095808(v452);

      sub_100095C84(&v448, &qword_1002A9210, &unk_10023BE70);
LABEL_204:
      v24 = v439;
      goto LABEL_5;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_100095808(v452);

      goto LABEL_204;
    }

    v437 = *(&__dst + 1);
    v445 = __dst;
    v250 = [v249 cbCharacteristic];
    if (!v250)
    {
      goto LABEL_315;
    }

    v251 = v250;
    v252 = [v250 UUID];

    v253 = [v252 data];
    v254 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v256 = v255;

    sub_1001A36A0(12, v254, v256, &v446);
    v257 = v446;
    v258 = sub_100095274(&unk_1002A7B10, &unk_10023F3A0);
    *(&v449 + 1) = v258;
    v450 = sub_1000E4D54(&qword_1002A9C30, &unk_1002A7B10, &unk_10023F3A0, &protocol conformance descriptor for <A> [A]);
    *&v448 = &off_100274C28;
    v259 = sub_1000A09E0(&v448, v258);
    v260 = *v259;
    v261 = *(*v259 + 16);
    if (v261)
    {
      if (v261 <= 0xE)
      {
        *(&__dst + 6) = 0;
        *&__dst = 0;
        BYTE14(__dst) = v261;
        memcpy(&__dst, (v260 + 32), v261);
        v265 = __dst;
        v266 = v409 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
        v409 = v266;
      }

      else
      {
        v262 = v32;
        type metadata accessor for __DataStorage();
        swift_allocObject();
        v263 = __DataStorage.init(bytes:length:)();
        v264 = v263;
        if (v261 >= 0x7FFFFFFF)
        {
          type metadata accessor for Data.RangeReference();
          v265 = swift_allocObject();
          *(v265 + 16) = 0;
          *(v265 + 24) = v261;
          v266 = v264 | 0x8000000000000000;
        }

        else
        {
          v265 = v261 << 32;
          v266 = v263 | 0x4000000000000000;
        }

        v32 = v262;
      }
    }

    else
    {
      v265 = 0;
      v266 = 0xC000000000000000;
    }

    sub_100095808(&v448);
    v267 = sub_1001ACC84(v257, *(&v257 + 1), v265, v266);
    sub_1000A0D2C(v265, v266);
    sub_1000A0D2C(v257, *(&v257 + 1));

    if (!v267)
    {
      sub_100095808(v452);

      sub_1000A0D2C(v445, v437);
      v24 = v439;
      goto LABEL_5;
    }

    v268 = [v249 cbCharacteristic];
    if (v268)
    {
      v269 = v268;
      v270 = [v268 UUID];

      v271 = sub_10013C30C();
      if (qword_1002A6760 != -1)
      {
        swift_once();
      }

      if (v271 != sub_10013C30C())
      {
        sub_100095808(v452);

        sub_1000A0D2C(v445, v437);
        goto LABEL_204;
      }

      v272 = v418;
      v273 = v438;
      v425 = *v434;
      (v425)(v418, v443 + v435, v438);
      v274 = v445;
      v275 = v437;
      sub_1000A0CD8(v445, v437);
      v276 = Logger.logObject.getter();
      v277 = static os_log_type_t.default.getter();
      sub_1000A0D2C(v274, v275);
      if (os_log_type_enabled(v276, v277))
      {
        v278 = swift_slowAlloc();
        v279 = swift_slowAlloc();
        *&v448 = v279;
        *v278 = v428;
        v280 = sub_10013B46C(v274, v275);
        v282 = sub_1000952D4(v280, v281, &v448);

        *(v278 + 4) = v282;
        _os_log_impl(&_mh_execute_header, v276, v277, "Sensor Data: %s", v278, 0xCu);
        sub_100095808(v279);

        v283 = *v433;
        v284 = v418;
        v285 = v438;
      }

      else
      {

        v283 = *v433;
        v284 = v272;
        v285 = v273;
      }

      v426 = v283;
      v283(v284, v285);
      (v425)(v424, v443 + v435, v438);
      v286 = v249;
      v287 = Logger.logObject.getter();
      v288 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v287, v288))
      {
        v289 = swift_slowAlloc();
        v290 = swift_slowAlloc();
        *v289 = v410;
        *(v289 + 4) = v286;
        *v290 = v286;
        v291 = v286;
        _os_log_impl(&_mh_execute_header, v287, v288, "Characteristic: %@", v289, 0xCu);
        sub_100095C84(v290, &unk_1002A6F60, &unk_10023C4E0);
      }

      v432 = v286;

      v426(v424, v438);
      v292 = *(v443 + v430);
      v24 = v439;
      if (!v292)
      {

        sub_1000A0D2C(v445, v437);
        sub_100095808(v452);
        v450 = 0;
        v448 = 0u;
        v449 = 0u;
        goto LABEL_242;
      }

      v293 = v431;
      if (!v431)
      {
        goto LABEL_324;
      }

      v294 = v292;
      v295 = [v293 identifier];
      if (!v295)
      {
        goto LABEL_323;
      }

      v296 = v295;
      v436 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v298 = v297;

      v422 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
      v299 = *(v294 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem);
      OS_dispatch_semaphore.wait()();

      v300 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
      swift_beginAccess();
      v301 = *(v294 + v300);
      v302 = *(v301 + 16);
      if (!v302)
      {

        goto LABEL_240;
      }

      v421 = v294;
      v303 = v301 + 32;

      v304 = 0;
      while (2)
      {
        if (v304 >= *(v301 + 16))
        {
          goto LABEL_309;
        }

        sub_1000A097C(v303, &v446);
        v305 = *(*sub_1000A09E0(&v446, *(&v447 + 1)) + 32);
        if (!v305)
        {
          goto LABEL_227;
        }

        v442 = v32;
        v306 = v305;
        v307 = [v306 identifier];
        if (!v307)
        {
          goto LABEL_226;
        }

        v308 = v307;
        v309 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v311 = v310;

        if (v309 != v436 || v311 != v298)
        {
          v313 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v313)
          {

            goto LABEL_261;
          }

LABEL_226:

          v32 = v442;
LABEL_227:
          ++v304;
          sub_100095808(&v446);
          v303 += 40;
          if (v302 != v304)
          {
            continue;
          }

          v24 = v439;
          v294 = v421;
LABEL_240:
          v314 = *(v422 + v294);
          OS_dispatch_semaphore.signal()();
          sub_1000A0D2C(v445, v437);

          v450 = 0;
          v448 = 0u;
          v449 = 0u;
LABEL_241:
          sub_100095808(v452);
LABEL_242:
          sub_100095C84(&v448, &unk_1002A6F40, &unk_10023BE90);
          goto LABEL_5;
        }

        break;
      }

LABEL_261:

      v338 = v421;
      v339 = *(v422 + v421);
      OS_dispatch_semaphore.signal()();

      sub_1000A097C(&v446, &v448);
      sub_100095808(&v446);
      v24 = v439;
      v340 = v445;
      if (!*(&v449 + 1))
      {

        sub_1000A0D2C(v340, v437);
        v32 = v442;
        goto LABEL_241;
      }

      sub_100095274(&unk_1002A7A90, &unk_10023C960);
      type metadata accessor for DaemonAccessory(0);
      v341 = swift_dynamicCast();
      v32 = v442;
      if ((v341 & 1) == 0)
      {
        sub_100095808(v452);

        sub_1000A0D2C(v340, v437);
        goto LABEL_5;
      }

      v342 = v446;
      v343 = [(os_log_t *)v432 service];
      if (!v343)
      {
        goto LABEL_328;
      }

      v344 = v343;
      v345 = [v343 type];

      if (!v345)
      {
        goto LABEL_327;
      }

      v436 = [objc_opt_self() UUIDWithString:v345];

      v347 = v413;
      v346 = v414;
      (*v404)(v413, v405, v414);
      v348 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_sensorInfoMap;
      swift_beginAccess();
      v349 = *(v342 + v348);

      sub_1001A3650(v347, v349);
      v351 = v350;

      (*v403)(v347, v346);
      if (!v351)
      {
        v368 = v437;
        v369 = v445;
LABEL_298:
        sub_100095808(v452);

        sub_1000A0D2C(v369, v368);

        goto LABEL_5;
      }

      v421 = v342;
      v352 = *(v351 + 16);
      if (v352)
      {
        v353 = 0;
        v354 = v351 + 48;
        v400 = (v352 - 1);
        v355 = _swiftEmptyArrayStorage;
        v401 = v351 + 48;
        do
        {
          v422 = v355;
          v356 = (v354 + 24 * v353);
          v357 = v353;
          while (1)
          {
            if (v357 >= *(v351 + 16))
            {
              goto LABEL_310;
            }

            v359 = *(v356 - 2);
            v358 = *(v356 - 1);
            v353 = (&v357->isa + 1);
            v360 = *v356;
            sub_100095B94(0, &qword_1002A7270, NSObject_ptr);

            v361 = v360;
            if (static NSObject.== infix(_:_:)())
            {
              break;
            }

            v356 += 3;
            v357 = (v357 + 1);
            if (v352 == v353)
            {
              v355 = v422;
              goto LABEL_293;
            }
          }

          v362 = v422;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v448 = v362;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1001D7208(0, v362[2] + 1, 1);
            v362 = v448;
          }

          v365 = v362[2];
          v364 = v362[3];
          v366 = (v365 + 1);
          if (v365 >= v364 >> 1)
          {
            v422 = (v365 + 1);
            sub_1001D7208((v364 > 1), v365 + 1, 1);
            v366 = v422;
            v362 = v448;
          }

          v362[2] = v366;
          v367 = &v362[3 * v365];
          *(v367 + 4) = v359;
          *(v367 + 5) = v358;
          *(v367 + 6) = v361;
          v354 = v401;
          v355 = v362;
        }

        while (v400 != v357);
      }

      else
      {
        v355 = _swiftEmptyArrayStorage;
      }

LABEL_293:

      if (!v355[2])
      {

        v24 = v439;
        v32 = v442;
        v368 = v437;
        v369 = v445;
        goto LABEL_298;
      }

      v370 = v355[4];
      v371 = v355[5];
      v372 = v355[6];

      v422 = v372;

      v373 = objc_allocWithZone(type metadata accessor for AccessoryBatteryState());

      v374 = v445;
      v375 = v437;
      sub_1000A0CD8(v445, v437);

      v376 = AccessoryBatteryState.init(data:name:)();
      v24 = v439;
      if (v376)
      {
        v377 = v376;
        v378 = v412;
        (v425)(v412, v443 + v435, v438);
        v379 = v377;
        sub_1000A0CD8(v374, v375);

        v425 = v379;
        v380 = Logger.logObject.getter();
        v381 = static os_log_type_t.default.getter();

        sub_1000A0D2C(v374, v375);
        LODWORD(v401) = v381;
        if (os_log_type_enabled(v380, v381))
        {
          v382 = swift_slowAlloc();
          *&v448 = swift_slowAlloc();
          *v382 = v402;
          v383 = sub_1000952D4(v370, v371, &v448);
          v400 = v380;
          v384 = v383;

          *(v382 + 4) = v384;
          *(v382 + 12) = 2080;
          v385 = sub_10013B46C(v374, v375);
          v387 = sub_1000952D4(v385, v386, &v448);

          *(v382 + 14) = v387;
          *(v382 + 22) = 2048;
          v388 = v425;
          AccessoryBatteryState.batteryPercent.getter();
          *(v382 + 24) = v389;
          *(v382 + 32) = 1024;
          LOBYTE(v387) = AccessoryBatteryState.lowBattery.getter();

          *(v382 + 34) = v387 & 1;
          *(v382 + 38) = 2080;
          v390 = v438;
          *&v446 = AccessoryBatteryState.chargeState.getter();
          v391 = String.init<A>(describing:)();
          v393 = sub_1000952D4(v391, v392, &v448);

          *(v382 + 40) = v393;
          v394 = v400;
          _os_log_impl(&_mh_execute_header, v400, v401, "Got battery data for '%s': %s -> %f, %{BOOL}d, %s", v382, 0x30u);
          swift_arrayDestroy();

          v395 = v412;
          v396 = v390;
        }

        else
        {

          v397 = v425;

          v395 = v378;
          v396 = v438;
        }

        v426(v395, v396);
        v398 = *(v421 + 24);
        v399 = v425;
        sub_100164FA8(v398, v425);

        sub_1000A0D2C(v374, v375);
        sub_100095808(v452);
        v32 = v442;
      }

      else
      {
        sub_100095808(v452);

        sub_1000A0D2C(v374, v375);

        swift_bridgeObjectRelease_n();
        v32 = v442;
      }

LABEL_5:
      v31 = v444 + 1;
      if (v444 + 1 == v441)
      {
        return;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_319:
  __break(1u);
LABEL_320:
  __break(1u);
LABEL_321:
  __break(1u);
LABEL_322:
  __break(1u);
LABEL_323:
  __break(1u);
LABEL_324:
  __break(1u);
LABEL_325:
  __break(1u);
LABEL_326:
  __break(1u);
LABEL_327:
  __break(1u);
LABEL_328:
  __break(1u);
}

uint64_t sub_1001688C0(uint64_t a1, uint64_t a2)
{
  v45 = a1;
  v46 = a2;
  v41 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for DispatchQoS();
  v4 = *(v39 - 8);
  __chkstk_darwin(v39);
  v42 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002A6780 != -1)
  {
LABEL_19:
    swift_once();
  }

  v6 = qword_1002B1CF0;
  v48 = qword_1002B1CF0;
  sub_1001F1BBC(_swiftEmptyArrayStorage);

  v7 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock;
  v8 = *(v6 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock);

  os_unfair_lock_lock(v8 + 4);

  v9 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyEventClients;
  swift_beginAccess();
  v10 = *(v6 + v9);
  v11 = *(v6 + v7);

  os_unfair_lock_unlock(v11 + 4);
  v12 = v10;

  v13 = 0;
  v14 = v10 + 64;
  v15 = 1 << *(v10 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v10 + 64);
  v47 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__txnLock;
  v43 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_txn;
  v18 = (v15 + 63) >> 6;
  v38 = v50;
  v37 = v2 + 1;
  v36 = (v4 + 1);
  v4 = &qword_1002A91F0;
  for (i = v10; v17; v4 = &qword_1002A91F0)
  {
LABEL_11:
    while (1)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v21 = *(*(v12 + 56) + ((v13 << 9) | (8 * v20)));
      v2 = [v21 remoteObjectProxy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100095274(&qword_1002A91F0, qword_10023DDA0);
      if (swift_dynamicCast())
      {
        break;
      }

      if (!v17)
      {
        goto LABEL_7;
      }
    }

    v22 = v51;
    v2 = v48;
    v23 = *(v48 + v47);

    os_unfair_lock_lock(v23 + 4);

    v24 = *(v2 + v43);
    if (v24)
    {
      v25 = *(v24 + 24);
      if (v25)
      {
        v50[2] = sub_1000BAAE0;
        v50[3] = v24;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v50[0] = sub_100147FC8;
        v50[1] = &unk_100279318;
        v34 = _Block_copy(aBlock);
        swift_retain_n();
        v33 = v25;
        static DispatchQoS.unspecified.getter();
        v51 = _swiftEmptyArrayStorage;
        v32 = sub_10016947C(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        v35 = v22;
        sub_100095274(&unk_1002A6B60, qword_10023AE10);
        sub_1000E4D54(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10, &protocol conformance descriptor for [A]);
        v26 = v40;
        v27 = v41;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v2 = v34;
        v28 = v33;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v2);

        v29 = v26;
        v22 = v35;
        (*v37)(v29, v27);
        (*v36)(v42, v39);
      }
    }

    v30 = *(v48 + v47);

    os_unfair_lock_unlock(v30 + 4);

    [v22 systemEventDataWithInfo:v45 data:v46];
    swift_unknownObjectRelease();

    v12 = i;
  }

  while (1)
  {
LABEL_7:
    v19 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (v19 >= v18)
    {
    }

    v17 = *(v14 + 8 * v19);
    ++v13;
    if (v17)
    {
      v13 = v19;
      goto LABEL_11;
    }
  }
}

uint64_t sub_100168E74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100168E8C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v27 = a2;
  v11 = type metadata accessor for DockAccessorySWAuth.AuthRetry(0);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v29[3] = type metadata accessor for AccessoryServer(0);
  v29[4] = &off_1002792F0;
  v29[0] = a1;
  Logger.init(subsystem:category:)();
  v15 = OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_authManager;
  *(a6 + v15) = [objc_allocWithZone(DockAuthManager) init];
  v16 = OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_manager;
  *(a6 + v16) = [objc_opt_self() sharedManager];
  v17 = a6 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_delegate;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  v18 = OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_tokenUUID;
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  (*(v20 + 16))(a6 + v18, a3, v19);
  v21 = (a6 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_token);
  *v21 = a4;
  v21[1] = a5;
  sub_1000A097C(v29, v28);
  swift_beginAccess();
  sub_1000A0CD8(a4, a5);
  sub_100169218(v28, v17);
  swift_endAccess();
  v22 = v27;
  *(a6 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_accessoryServer) = v27;
  type metadata accessor for Transaction(0);
  v23 = swift_allocObject();
  *(v23 + 48) = 0;
  *(v23 + 24) = 0;
  *(v23 + 32) = 0;
  *(v23 + 16) = 0;
  swift_unknownObjectWeakInit();
  *(v23 + 80) = 0;
  *(v23 + 88) = 1;
  v24 = v22;
  Logger.init(subsystem:category:)();
  *(v23 + 64) = 0xD00000000000001FLL;
  *(v23 + 72) = 0x80000001002336C0;
  *(v23 + 48) = 0;
  *(v23 + 56) = 0x4024000000000000;
  swift_unknownObjectWeakAssign();
  UUID.init()();
  (*(v20 + 8))(a3, v19);
  sub_100095808(v29);
  *v14 = v23;
  *(v14 + 1) = 0;
  v14[16] = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = 0xE000000000000000;
  *(v14 + 5) = 0;
  *&v14[*(v12 + 48)] = xmmword_10023BF90;
  v25 = OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_retry;
  sub_100169288(v14, a6 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_retry);
  swift_beginAccess();
  *(*(a6 + v25) + 48) = &off_10027A888;
  swift_unknownObjectWeakAssign();
  return a6;
}

uint64_t sub_100169218(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&qword_1002A9BF8, &qword_10023EA00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100169288(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DockAccessorySWAuth.AuthRetry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001692F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10009862C;

  return sub_100157798(a1, v4, v5, v6, v7, v8);
}

void sub_1001693B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t))
{
  if (a4 != 2)
  {
    a8(a2, a3);

    a8(a5, a6);
  }
}

uint64_t sub_10016942C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10016947C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1001694C4(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_auth))
  {

    sub_1001B38D8(v2, v3);
  }

  sub_1000B346C();
  v6 = swift_allocError();
  *v7 = 6;
  sub_100153E88(0, v6);

  v8 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_manager);
  if (v8)
  {
    if (a1)
    {
      v6 = v8;
      result = [a1 identifier];
      if (result)
      {
        v9 = result;
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;

        v13 = swift_allocError();
        *v14 = 6;
        v15 = sub_1001F29A8(_swiftEmptyArrayStorage);
        if (*&v6[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_proxCard])
        {
          v6[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingState] = 0;
          v16 = *&v6[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_server];
          sub_100156798(v10, v12, 6, v15, v13);

          goto LABEL_13;
        }

        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  if (a1)
  {
    goto LABEL_13;
  }

  __break(1u);
LABEL_12:

LABEL_13:
  v20 = 0;
  v17 = [a1 stopPairingWithError:&v20];
  v18 = v20;
  if (v17)
  {

    return v18;
  }

  else
  {
    v19 = v20;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_100169790(const char *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger, v4);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, a1, v10, 2u);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10016990C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10016995C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000A139C;

  return sub_10015C264(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100169A24()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100169A64()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100169B04(uint64_t a1, uint64_t a2)
{
  v3[3] = v2;
  v4 = type metadata accessor for Logger();
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();

  return (_swift_task_switch)(sub_100169BFC, 0, 0);
}

uint64_t sub_100169BFC()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  v5 = OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsSession_logger;
  v0[8] = OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsSession_logger;
  v6 = *(v3 + 16);
  v0[9] = v6;
  v0[10] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4 + v5, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Shutting down", v9, 2u);
  }

  v10 = v0[7];
  v11 = v0[4];
  v12 = v0[5];
  v13 = v0[3];

  v14 = *(v12 + 8);
  v0[11] = v14;
  v14(v10, v11);
  v15 = *(v13 + 32);
  v0[12] = v15;
  if (v15)
  {
    v15;
    v16 = swift_task_alloc();
    v0[13] = v16;
    *v16 = v0;
    v16[1] = sub_10016A0E4;

    return sub_1000FADB4();
  }

  else
  {
    v18 = v0[3];
    *(v18 + 32) = 0;
    if (*(v18 + 40))
    {
      v19 = type metadata accessor for Errors();
      sub_10016EFDC(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
      v20 = swift_allocError();
      *v21 = 0;
      v21[1] = 0xE000000000000000;
      (*(*(v19 - 8) + 104))(v21, enum case for Errors.OperationCancelled(_:), v19);
      sub_10016CFFC(v20, v22);
    }

    v23 = v0[3];
    v23[14] = 0;
    v23[15] = 0;

    v24 = v23[16];
    if (v24)
    {
      v0[2] = 0;
      v25 = [v24 closeAndReturnError:v0 + 2];
      v26 = v0[2];
      if (v25)
      {
        v27 = v26;
      }

      else
      {
        v28 = v0[9];
        v29 = v0[8];
        v30 = v0[6];
        v32 = v0[3];
        v31 = v0[4];
        v33 = v26;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v28(v30, v32 + v29, v31);

        swift_errorRetain();
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          *v36 = 138412546;
          Strong = swift_weakLoadStrong();
          if (Strong)
          {
            v39 = *(Strong + 24);

            v40 = v39;
          }

          else
          {
            v39 = 0;
            v40 = 0;
          }

          *(v36 + 4) = v39;
          *v37 = v40;
          *(v36 + 12) = 2112;
          swift_errorRetain();
          v41 = _swift_stdlib_bridgeErrorToNSError();
          *(v36 + 14) = v41;
          v37[1] = v41;
          _os_log_impl(&_mh_execute_header, v34, v35, "Failed to close file for accessory: %@ with error: %@'", v36, 0x16u);
          sub_100095274(&unk_1002A6F60, &unk_10023C4E0);
          swift_arrayDestroy();
        }

        else
        {
        }

        (v0[11])(v0[6], v0[4]);
      }
    }

    v42 = v23[16];
    v23[16] = 0;

    v43 = v0[1];

    return v43();
  }
}

uint64_t sub_10016A0E4()
{
  v1 = *(*v0 + 96);

  return (_swift_task_switch)(sub_10016A224, 0, 0);
}

uint64_t sub_10016A224()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 32);
  *(v1 + 32) = 0;

  if (*(v1 + 40))
  {
    v3 = type metadata accessor for Errors();
    sub_10016EFDC(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    v4 = swift_allocError();
    *v5 = 0;
    v5[1] = 0xE000000000000000;
    (*(*(v3 - 8) + 104))(v5, enum case for Errors.OperationCancelled(_:), v3);
    sub_10016CFFC(v4, v6);
  }

  v7 = *(v0 + 24);
  v7[14] = 0;
  v7[15] = 0;

  v8 = v7[16];
  if (v8)
  {
    *(v0 + 16) = 0;
    v9 = [v8 closeAndReturnError:v0 + 16];
    v10 = *(v0 + 16);
    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v12 = *(v0 + 72);
      v13 = *(v0 + 64);
      v14 = *(v0 + 48);
      v16 = *(v0 + 24);
      v15 = *(v0 + 32);
      v17 = v10;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v12(v14, v16 + v13, v15);

      swift_errorRetain();
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 138412546;
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v23 = *(Strong + 24);

          v24 = v23;
        }

        else
        {
          v23 = 0;
          v24 = 0;
        }

        *(v20 + 4) = v23;
        *v21 = v24;
        *(v20 + 12) = 2112;
        swift_errorRetain();
        v25 = _swift_stdlib_bridgeErrorToNSError();
        *(v20 + 14) = v25;
        v21[1] = v25;
        _os_log_impl(&_mh_execute_header, v18, v19, "Failed to close file for accessory: %@ with error: %@'", v20, 0x16u);
        sub_100095274(&unk_1002A6F60, &unk_10023C4E0);
        swift_arrayDestroy();
      }

      else
      {
      }

      (*(v0 + 88))(*(v0 + 48), *(v0 + 32));
    }
  }

  v26 = v7[16];
  v7[16] = 0;

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_10016A5A0()
{
  v1 = [*(v0 + 56) format];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 value];

    if (!v3)
    {
      return 7367034;
    }
  }

  result = [*(v0 + 56) format];
  if (result)
  {
    v5 = result;
    v6 = [result value];

    if (v6 == 1)
    {
      return 7633012;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10016A660(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return (_swift_task_switch)(sub_10016A680, 0, 0);
}

uint64_t sub_10016A680()
{
  Strong = swift_weakLoadStrong();
  *(v0 + 112) = Strong;
  if (!Strong)
  {
    v29 = type metadata accessor for Errors();
    sub_10016EFDC(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    *v30 = 0xD000000000000010;
    v30[1] = 0x8000000100230B70;
    (*(*(v29 - 8) + 104))(v30, enum case for Errors.AccessoryServerNil(_:), v29);
    swift_willThrow();
    goto LABEL_10;
  }

  v2 = Strong;
  v3 = *(Strong + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_dataStreamController);
  if (!v3 || ([v3 canAcceptBulkSendListeners] & 1) == 0)
  {
    v4 = *(v2 + 40);
    OS_dispatch_queue.sync<A>(execute:)();

    if (*(v0 + 136) == 1)
    {
      v5 = type metadata accessor for Errors();
      sub_10016EFDC(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
      swift_allocError();
      v7 = v6;
      _StringGuts.grow(_:)(53);
      v8._countAndFlagsBits = 0xD000000000000033;
      v8._object = 0x8000000100233980;
      String.append(_:)(v8);
      v9 = *(v2 + 24);
      v10 = [v9 description];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14._countAndFlagsBits = v11;
      v14._object = v13;
      String.append(_:)(v14);

      *v7 = 0;
      v7[1] = 0xE000000000000000;
      (*(*(v5 - 8) + 104))(v7, enum case for Errors.OperationNotSupported(_:), v5);
      swift_willThrow();

LABEL_10:
      v31 = *(v0 + 8);

      return v31();
    }
  }

  v15 = *(v0 + 104);
  v16 = v15[3];

  v35 = v16;
  v33 = sub_10010669C();
  v17 = v15[9];
  v36 = v15[8];
  v34 = type metadata accessor for AccessoryDataStreamAdapter(0);
  v18 = objc_allocWithZone(v34);
  swift_weakInit();
  v19 = &v18[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_delegate];
  *(v19 + 4) = 0;
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *&v18[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_currentBulkSendSession] = 0;
  v20 = &v18[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_pendingOpenSessionCallback];
  *v20 = 0;
  v20[1] = 0;
  v18[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_transportReady] = 0;
  v18[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_didBulkSendFail] = 0;
  v18[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_didBulkSendComplete] = 0;

  Logger.init(subsystem:category:)();
  swift_weakAssign();
  *&v18[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_workQueue] = v35;
  *&v18[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_metadata] = v33;
  v21 = &v18[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_fileType];
  *v21 = 0xD000000000000014;
  v21[1] = 0x8000000100233920;
  v22 = &v18[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_reason];
  *v22 = v36;
  v22[1] = v17;
  *(v0 + 80) = v18;
  *(v0 + 88) = v34;
  v23 = objc_msgSendSuper2((v0 + 80), "init");

  v24 = v15[4];
  v15[4] = v23;
  v25 = v23;

  *(v0 + 40) = type metadata accessor for AccessoryDiagnosticsSession(0);
  *(v0 + 48) = &off_1002794F8;
  *(v0 + 16) = v15;
  v26 = OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_delegate;
  swift_beginAccess();

  sub_10016F118(v0 + 16, v25 + v26);
  swift_endAccess();

  v27 = swift_task_alloc();
  *(v0 + 120) = v27;
  *v27 = v0;
  v27[1] = sub_10016AC20;
  v28 = *(v0 + 104);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v27, 0, 0, 0xD000000000000010, 0x8000000100233960, sub_10016F188, v28, &type metadata for () + 8);
}

uint64_t sub_10016AC20()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_10016AD98;
  }

  else
  {
    v2 = sub_10016AD34;
  }

  return (_swift_task_switch)(v2, 0, 0);
}

uint64_t sub_10016AD34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10016AD98()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10016ADFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&qword_1002A9F70, &qword_10023EB70);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  v9 = *(a2 + 32);
  if (v9)
  {
    (*(v5 + 16))(v8, a1, v4);
    v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v11 = (v6 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = swift_allocObject();
    (*(v5 + 32))(v12 + v10, v8, v4);
    *(v12 + v11) = a2;
    v13 = v9;

    sub_1000FB4C0(sub_10016F238, v12);
  }
}

uint64_t sub_10016AF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v14[1] = a2;
    swift_errorRetain();
    sub_100095274(&qword_1002A9F70, &qword_10023EB70);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    (*(v7 + 16))(v9, a4 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsSession_logger, v6);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Diagnostics data stream was setup successfully", v13, 2u);
    }

    (*(v7 + 8))(v9, v6);
    *(a4 + 104) = 1;
    *(a4 + 96) = 1;
    sub_100095274(&qword_1002A9F70, &qword_10023EB70);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_10016B16C(uint64_t a1, uint64_t a2)
{
  if (!*(v2 + 32))
  {
    v9 = type metadata accessor for Errors();
    sub_10016EFDC(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    v11 = v10;
    v12 = 0x80000001002338B0;
    v13 = 0xD000000000000017;
LABEL_7:
    *v10 = v13;
    v10[1] = v12;
    (*(*(v9 - 8) + 104))(v11, enum case for Errors.CommunicationFailure(_:), v9);
    goto LABEL_8;
  }

  if ((*(v2 + 104) & 1) == 0)
  {
    v9 = type metadata accessor for Errors();
    sub_10016EFDC(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    v11 = v10;
    v12 = 0x80000001002338D0;
    v13 = 0xD00000000000001FLL;
    goto LABEL_7;
  }

  if (*(v2 + 40))
  {
    v3 = type metadata accessor for Errors();
    sub_10016EFDC(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    v4 = swift_allocError();
    *v5 = 0xD000000000000027;
    v5[1] = 0x80000001002338F0;
    v6 = *(*(v3 - 8) + 104);
    v6(v5, enum case for Errors.OperationInProgress(_:), v3);
    sub_10016CFFC(v4, v7);

    swift_allocError();
    *v8 = 0xD000000000000027;
    v8[1] = 0x80000001002338F0;
    v6(v8, enum case for Errors.CommunicationFailure(_:), v3);
LABEL_8:
    swift_willThrow();
    return;
  }

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  v14 = *(v2 + 24);

  v15 = v14;
  sub_100095274(&qword_1002A7168, &qword_10023C3C0);
  OS_dispatch_queue.sync<A>(execute:)();
}

void sub_10016B468(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = v3;
    sub_1000FB5F0(v4, v5);
  }

  *a2 = v3 == 0;
}

uint64_t sub_10016B4BC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v4 - 8);
  v62 = type metadata accessor for Logger();
  v5 = *(v62 - 8);
  v6 = __chkstk_darwin(v62);
  v7 = __chkstk_darwin(v6);
  v9 = &v60 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v60 - v11;
  v13 = __chkstk_darwin(v10);
  v16 = &v60 - v15;
  v17 = v1[17];
  if (v17 && (*(v17 + 57) & 1) != 0)
  {
    v18 = 1;
  }

  else
  {
    if (!v1[16])
    {
      v19 = sub_10016BD0C(v13, v14);
      if (v19)
      {
        v20 = v1[16];
        v1[16] = v19;
      }

      else
      {
        (*(v5 + 16))(v16, v1 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsSession_logger, v62);
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.error.getter();
        v61 = v21;
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          v24 = v22;
          v25 = v61;
          _os_log_impl(&_mh_execute_header, v61, v24, "error creating file handle", v23, 2u);
        }

        else
        {
        }

        (*(v5 + 8))(v16, v62);
      }
    }

    v18 = 0;
  }

  v26 = v2[11];
  v27 = [a1 length];
  if ((v27 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  if (__CFADD__(v26, v27))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v2[10] < v26 + v27)
  {
    v28 = v62;
    (*(v5 + 16))(v12, v2 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsSession_logger, v62);

    v29 = a1;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 134218496;
      *(v32 + 4) = v2[11];
      *(v32 + 12) = 2048;
      *(v32 + 14) = [v29 length];

      *(v32 + 22) = 2048;
      *(v32 + 24) = v2[10];

      _os_log_impl(&_mh_execute_header, v30, v31, "Diagnostics exceeded max size (written: %llu, new data: %ld, max: %llu", v32, 0x20u);
    }

    else
    {

      v30 = v29;
    }

    (*(v5 + 8))(v12, v28);
    return 0;
  }

  v33 = [a1 length];
  if ((v33 & 0x8000000000000000) != 0)
  {
    goto LABEL_39;
  }

  v34 = v2[11];
  v35 = __CFADD__(v34, v33);
  v36 = (v34 + v33);
  if (v35)
  {
LABEL_40:
    __break(1u);

    __break(1u);
    goto LABEL_41;
  }

  v2[11] = v36;
  if (v18)
  {
    v37 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;
    static String.Encoding.utf8.getter();
    v40 = String.init(data:encoding:)();
    v42 = v41;
    sub_1000A0D2C(v37, v39);
    if (v42)
    {
      v43 = v2[19];
      v63 = v2[18];
      v64 = v43;

      v44._countAndFlagsBits = v40;
      v44._object = v42;
      String.append(_:)(v44);

      v45 = v64;
      v2[18] = v63;
      v2[19] = v45;

      return 1;
    }

    return 1;
  }

  v47 = v2[16];
  if (v47)
  {
    v63 = a1;
    sub_100095B94(0, &qword_1002A9270, NSData_ptr);
    sub_10016F078();
    v48 = v47;
    NSFileHandle.write<A>(contentsOf:)();

    return 1;
  }

  v49 = v62;
  (*(v5 + 16))(v9, v2 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsSession_logger, v62);

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v63 = v54;
    *v52 = 138412546;
    result = swift_weakLoadStrong();
    if (result)
    {
      v55 = *(result + 24);

      v56 = v55;
    }

    else
    {
      v55 = 0;
      v56 = 0;
    }

    *(v52 + 4) = v55;
    *v53 = v56;
    *(v52 + 12) = 2080;
    v57 = v2[15];
    if (v57)
    {
      v58 = v2[14];

      v59 = sub_1000952D4(v58, v57, &v63);

      *(v52 + 14) = v59;
      _os_log_impl(&_mh_execute_header, v50, v51, "Failed to create log file for accessory: %@ file path: %s", v52, 0x16u);
      sub_100095C84(v53, &unk_1002A6F60, &unk_10023C4E0);

      sub_100095808(v54);

      (*(v5 + 8))(v9, v62);
      return 0;
    }

LABEL_41:
    __break(1u);
    return result;
  }

  (*(v5 + 8))(v9, v49);
  return 0;
}

id sub_10016BD0C(uint64_t a1, uint64_t a2)
{
  v133 = type metadata accessor for Logger();
  v137 = *(v133 - 1);
  v2 = __chkstk_darwin(v133);
  v110 = &v107 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v111 = &v107 - v4;
  v5 = sub_100095274(&qword_1002A9F58, &qword_10023EB68);
  __chkstk_darwin(v5 - 8);
  v132 = &v107 - v6;
  v131 = type metadata accessor for TimeZone();
  v130 = *(v131 - 8);
  __chkstk_darwin(v131);
  v120 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for Date.ISO8601FormatStyle.TimeZoneSeparator();
  v127 = *(v129 - 8);
  __chkstk_darwin(v129);
  v138 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for Date.ISO8601FormatStyle.TimeSeparator();
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v136 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for Date.ISO8601FormatStyle.DateTimeSeparator();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v126 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for Date.ISO8601FormatStyle.DateSeparator();
  v135 = *(v128 - 8);
  v11 = __chkstk_darwin(v128);
  v117 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v123 = &v107 - v13;
  v119 = type metadata accessor for Date.ISO8601FormatStyle();
  v118 = *(v119 - 8);
  v14 = __chkstk_darwin(v119);
  v113 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v115 = &v107 - v16;
  v116 = type metadata accessor for Date();
  v114 = *(v116 - 8);
  __chkstk_darwin(v116);
  v134 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for URL.DirectoryHint();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for URL();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v26 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v107 - v27;
  v29 = [objc_opt_self() defaultManager];
  v30 = [v29 URLsForDirectory:13 inDomains:1];
  v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v31 + 16))
  {

    return 0;
  }

  (*(v23 + 16))(v26, v31 + ((*(v23 + 80) + 32) & ~*(v23 + 80)), v22);

  v112 = v23;
  (*(v23 + 32))(v28, v26, v22);
  (*(v19 + 104))(v21, enum case for URL.DirectoryHint.isDirectory(_:), v18);
  sub_1000E3C10();
  URL.append<A>(components:directoryHint:)();
  (*(v19 + 8))(v21, v18);
  v140 = 0;
  URL.path(percentEncoded:)(1);
  v32 = String._bridgeToObjectiveC()();

  v33 = [v29 fileExistsAtPath:v32 isDirectory:&v140];

  v34 = v28;
  v36 = v137;
  v35 = v138;
  v37 = v136;
  v38 = v135;
  if (v33)
  {
    goto LABEL_5;
  }

  sub_100095274(&qword_1002A7B20, &unk_10023E940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10023C170;
  *(inited + 32) = NSFilePosixPermissions;
  *(inited + 40) = 448;
  v40 = NSFilePosixPermissions;
  v41 = sub_1001F237C(inited);
  swift_setDeallocating();
  sub_100095C84(inited + 32, &qword_1002A7B28, &qword_10023CA00);
  URL._bridgeToObjectiveC()(v42);
  v44 = v43;
  sub_1001DAF74(v41);

  type metadata accessor for FileAttributeKey(0);
  sub_10016EFDC(&qword_1002A6D80, type metadata accessor for FileAttributeKey, &unk_10023BBA8);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v142[0] = 0;
  v46 = [v29 createDirectoryAtURL:v44 withIntermediateDirectories:1 attributes:isa error:v142];

  if (!v46)
  {
    v83 = v142[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v84 = v110;
    v85 = v133;
    v36[2](v110, v139 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsSession_logger, v133);
    swift_errorRetain();
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v86, v87))
    {

      (v36[1])(v84, v85);
LABEL_18:
      (*(v112 + 8))(v34, v22);
      return 0;
    }

    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v111 = v22;
    v141._countAndFlagsBits = v89;
    *v88 = 136315394;
    swift_beginAccess();
    v90 = URL.path(percentEncoded:)(1);
    v91 = sub_1000952D4(v90._countAndFlagsBits, v90._object, &v141._countAndFlagsBits);
    v109 = v34;
    v92 = v91;

    *(v88 + 4) = v92;
    *(v88 + 12) = 2080;
    swift_getErrorValue();
    v93 = Error.localizedDescription.getter();
    v95 = sub_1000952D4(v93, v94, &v141._countAndFlagsBits);

    *(v88 + 14) = v95;
    _os_log_impl(&_mh_execute_header, v86, v87, "Unable to create file storage directory %s: %s", v88, 0x16u);
    swift_arrayDestroy();

    (v36[1])(v84, v133);
    (*(v112 + 8))(v109, v111);
    return 0;
  }

  v47 = v142[0];
LABEL_5:
  v48 = v139;
  v49 = sub_10016A5A0();
  if (!v50)
  {
    v78 = v111;
    v79 = v133;
    v36[2](v111, v48 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsSession_logger, v133);
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&_mh_execute_header, v80, v81, "FileType not supported", v82, 2u);
    }

    (v36[1])(v78, v79);
    goto LABEL_18;
  }

  v110 = v49;
  v133 = v50;
  v109 = v34;
  v111 = v22;
  v137 = v29;
  static Date.now.getter();
  v51 = *(v38 + 104);
  v108 = enum case for Date.ISO8601FormatStyle.DateSeparator.dash(_:);
  v52 = v38;
  v53 = v128;
  v107 = v51;
  v51(v123);
  (*(v121 + 104))(v126, enum case for Date.ISO8601FormatStyle.DateTimeSeparator.standard(_:), v122);
  (*(v124 + 104))(v37, enum case for Date.ISO8601FormatStyle.TimeSeparator.colon(_:), v125);
  (*(v127 + 104))(v35, enum case for Date.ISO8601FormatStyle.TimeZoneSeparator.omitted(_:), v129);
  v54 = v132;
  TimeZone.init(secondsFromGMT:)();
  v55 = v130;
  v56 = v131;
  result = (*(v130 + 48))(v54, 1, v131);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v55 + 32))(v120, v54, v56);
    v58 = v113;
    Date.ISO8601FormatStyle.init(dateSeparator:dateTimeSeparator:timeSeparator:timeZoneSeparator:includingFractionalSeconds:timeZone:)();
    v59 = v117;
    v107(v117, v108, v53);
    v60 = v115;
    Date.ISO8601FormatStyle.dateSeparator(_:)();
    (*(v52 + 8))(v59, v53);
    v61 = *(v118 + 8);
    v62 = v58;
    v63 = v119;
    v61(v62, v119);
    sub_10016EFDC(&qword_1002A9F60, &type metadata accessor for Date.ISO8601FormatStyle, &protocol conformance descriptor for Date.ISO8601FormatStyle);
    v64 = v134;
    Date.formatted<A>(_:)();
    v61(v60, v63);
    (*(v114 + 8))(v64, v116);
    v65 = v142[0];
    v66 = v142[1];
    v67 = v109;
    v68 = URL.path(percentEncoded:)(1);
    v142[0] = 0;
    v142[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(20);

    strcpy(v142, "diagnostics_");
    BYTE5(v142[1]) = 0;
    HIWORD(v142[1]) = -5120;
    v69._countAndFlagsBits = v65;
    v69._object = v66;
    String.append(_:)(v69);

    v70._countAndFlagsBits = 95;
    v70._object = 0xE100000000000000;
    String.append(_:)(v70);
    v71 = v139;
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v73 = v67;
      v74 = *(Strong + 24);

      v75 = DockCoreInfo.description.getter();
      v77 = v76;

      v67 = v73;
    }

    else
    {
      v77 = 0xE300000000000000;
      v75 = 7104878;
    }

    v96 = v112;
    v97._countAndFlagsBits = v75;
    v97._object = v77;
    String.append(_:)(v97);

    v98._countAndFlagsBits = 46;
    v98._object = 0xE100000000000000;
    String.append(_:)(v98);
    v99._countAndFlagsBits = v110;
    v99._object = v133;
    String.append(_:)(v99);

    v141 = v68;
    v141._countAndFlagsBits = String.init<A>(_:)();
    v141._object = v100;
    String.append<A>(contentsOf:)();

    countAndFlagsBits = v141._countAndFlagsBits;
    object = v141._object;
    v103 = String._bridgeToObjectiveC()();
    v104 = v137;
    [v137 createFileAtPath:v103 contents:0 attributes:0];

    v105 = String._bridgeToObjectiveC()();
    v106 = [objc_opt_self() fileHandleForWritingAtPath:v105];

    *(v71 + 112) = countAndFlagsBits;
    *(v71 + 120) = object;

    (*(v96 + 8))(v67, v111);
    return v106;
  }

  return result;
}

uint64_t sub_10016CE30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1 >= 0 && *(v3 + 96) == a1;
  v10 = v9;
  if (v9)
  {
    *(v3 + 96) = a1 + 1;
  }

  else
  {
    (*(v6 + 16))(v8, v3 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsSession_logger, v5);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v14 = swift_slowAlloc();
      *v14 = 134218240;
      *(v14 + 4) = a1;
      *(v14 + 12) = 2048;
      *(v14 + 14) = *(v3 + 96);

      _os_log_impl(&_mh_execute_header, v11, v12, "Invalid data sequence number received: %ld expected: %llu", v14, 0x16u);
    }

    else
    {
    }

    (*(v6 + 8))(v8, v5);
  }

  return v10;
}

uint64_t sub_10016CFFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, v3 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsSession_logger, v5);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    if (a1)
    {
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      v14 = v13;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    *(v11 + 4) = v13;
    *v12 = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, "Calling completion handler with error: %@", v11, 0xCu);
    sub_100095C84(v12, &unk_1002A6F60, &unk_10023C4E0);
  }

  result = (*(v6 + 8))(v8, v5);
  v16 = *(v3 + 40);
  if (v16)
  {
    v17 = *(v3 + 48);
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    v16(a1, 0, 0);
    return sub_1000BAA84(v16, v17);
  }

  return result;
}

uint64_t sub_10016D218()
{
  swift_weakDestroy();

  sub_1000BAA84(*(v0 + 40), *(v0 + 48));

  v1 = OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsSession_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_10016D2C8()
{
  sub_10016D218();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AccessoryDiagnosticsSession(uint64_t a1)
{
  result = qword_1002A9C98;
  if (!qword_1002A9C98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10016D374(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_10016D4D0(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10016DA54(a1, a2, v4);
}

unint64_t sub_10016D548(uint64_t a1)
{
  v1 = a1;
  v2 = static Hasher._hash(seed:bytes:count:)();

  return sub_10016DB0C(v1, v2);
}

unint64_t sub_10016D590(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_10016DB78(a1, v4);
}

unint64_t sub_10016D5D4(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_10016EFDC(&qword_1002A9810, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10016E058(a1, v2, &type metadata accessor for UUID, &qword_1002A8728, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

unint64_t sub_10016D6A8(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10016DC3C(a1, v4);
}

unint64_t sub_10016D6F0(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_10016DD04(a1, v2);
}

unint64_t sub_10016D780(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *(a1 + 24);
  NSObject.hash(into:)();

  v3 = Hasher._finalize()();

  return sub_10016DE08(a1, v3);
}

unint64_t sub_10016D7F8(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_10016DF1C(a1, v4, &qword_1002A9A88, NSUUID_ptr);
}

unint64_t sub_10016D848(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_10016DF1C(a1, v4, &unk_1002A9C50, CBUUID_ptr);
}

unint64_t sub_10016D898(uint64_t a1)
{
  v1 = a1;
  v2 = static Hasher._hash(seed:bytes:count:)();

  return sub_10016DFE8(v1, v2);
}

unint64_t sub_10016D8E0(uint64_t a1)
{
  type metadata accessor for ComponentType();
  sub_10016EFDC(&qword_1002A9F48, &type metadata accessor for ComponentType, &protocol conformance descriptor for ComponentType);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10016E058(a1, v2, &type metadata accessor for ComponentType, &qword_1002A9F50, &type metadata accessor for ComponentType, &protocol conformance descriptor for ComponentType);
}

unint64_t sub_10016D9B4(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_10016DF1C(a1, v4, &qword_1002A9840, CBService_ptr);
}

unint64_t sub_10016DA04(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_10016DF1C(a1, v4, &unk_1002A9830, CBCharacteristic_ptr);
}

unint64_t sub_10016DA54(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_10016DB0C(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10016DB78(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for DockCoreInfo();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10016DC3C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000FF250(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10016F024(v8);
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

unint64_t sub_10016DD04(uint64_t a1, uint64_t a2)
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
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10016DE08(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    v9 = type metadata accessor for DockCoreInfo();
    do
    {
      v10 = *(*(*(v6 + 48) + 8 * v5) + 24);
      v11 = *(a1 + 24);
      v15[3] = v9;
      v15[0] = v11;

      v12 = v10;
      v13 = v11;
      LOBYTE(v10) = DockCoreInfo.isEqual(_:)();

      sub_100095C84(v15, &qword_1002A9210, &unk_10023BE70);
      if (v10)
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10016DF1C(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_100095B94(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = static NSObject.== infix(_:_:)();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_10016DFE8(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10016E058(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_10016EFDC(v23, v24, v25);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

uint64_t sub_10016E1F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_weakInit();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 64) = 0x74736F6E67616964;
  *(v3 + 72) = 0xEF61746144736369;
  *(v3 + 80) = 5242880;
  *(v3 + 88) = 0;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0;
  *(v3 + 152) = 0xE000000000000000;
  Logger.init(subsystem:category:)();
  swift_weakAssign();
  *(v3 + 24) = a2;
  *(v3 + 56) = a3;
  return v3;
}

uint64_t sub_10016E2DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v3 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsSession_logger, v4);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v13 = *(Strong + 24);

      v14 = v13;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    *(v10 + 4) = v13;
    *v11 = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to read data for accessory: %@", v10, 0xCu);
    sub_100095C84(v11, &unk_1002A6F60, &unk_10023C4E0);
  }

  result = (*(v5 + 8))(v7, v4);
  if (*(v3 + 40))
  {
    v16 = type metadata accessor for Errors();
    sub_10016EFDC(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    v17 = swift_allocError();
    *v18 = 0x722064656C696166;
    v18[1] = 0xEB00000000646165;
    (*(*(v16 - 8) + 104))(v18, enum case for Errors.CommunicationFailure(_:), v16);
    sub_10016CFFC(v17, v19);
  }

  return result;
}

uint64_t sub_10016E5A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v37 - v11;
  __chkstk_darwin(v10);
  v14 = &v37 - v13;
  if (*(a1 + 16) && (v15 = sub_10016D4D0(1635017060, 0xE400000000000000), (v16 & 1) != 0) && (sub_100095B34(*(a1 + 56) + 32 * v15, v39), sub_100095B94(0, &qword_1002A9270, NSData_ptr), (swift_dynamicCast() & 1) != 0))
  {
    v17 = v38;
    if (*(a1 + 16))
    {
      v18 = sub_10016D4D0(0x617461646174656DLL, 0xE800000000000000);
      if (v19)
      {
        sub_100095B34(*(a1 + 56) + 32 * v18, v39);
        sub_100095274(&qword_1002A9F40, &qword_10023EB60);
        if (swift_dynamicCast())
        {
          v20 = v38;
          if (*(v38 + 2) && (v21 = sub_10016D4D0(0xD000000000000012, 0x8000000100233890), (v22 & 1) != 0))
          {
            sub_100095B34(v20[7] + 32 * v21, v39);

            sub_100095B94(0, &qword_1002A7AB0, NSNumber_ptr);
            if (swift_dynamicCast())
            {
              v23 = v38;
              v24 = [v38 integerValue];
              if (sub_10016CE30(v24, v25))
              {
              }

              else
              {
                (*(v6 + 16))(v14, v3 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsSession_logger, v5);
                v34 = Logger.logObject.getter();
                v35 = static os_log_type_t.info.getter();
                if (os_log_type_enabled(v34, v35))
                {
                  v36 = swift_slowAlloc();
                  *v36 = 0;
                  _os_log_impl(&_mh_execute_header, v34, v35, "unexpected sequence number but still accept it", v36, 2u);
                }

                (*(v6 + 8))(v14, v5);
              }
            }
          }

          else
          {
          }
        }
      }
    }

    (*(v6 + 16))(v12, v3 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsSession_logger, v5);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Data frame received", v33, 2u);
    }

    (*(v6 + 8))(v12, v5);
    v29 = sub_10016B4BC(v17);
  }

  else
  {
    (*(v6 + 16))(v9, v3 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsSession_logger, v5);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "No data present in frame", v28, 2u);
    }

    (*(v6 + 8))(v9, v5);
    v29 = 0;
  }

  return v29 & 1;
}

uint64_t sub_10016EA60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v46 - v10;
  __chkstk_darwin(v9);
  v13 = &v46 - v12;
  if (*(v3 + 5))
  {
    v14 = *(v3 + 17);
    if (v14)
    {
LABEL_3:
      v15 = *(v14 + 57);
      goto LABEL_8;
    }
  }

  else
  {
    (*(v5 + 16))(&v46 - v12, &v3[OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsSession_logger], v4);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Data read completed but no completion handler", v18, 2u);
    }

    (*(v5 + 8))(v13, v4);
    v14 = *(v3 + 17);
    if (v14)
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
LABEL_8:
  v19 = *(v3 + 16);
  if (v19)
  {
    v20 = v15;
  }

  else
  {
    v20 = 1;
  }

  v21 = *(v5 + 16);
  if ((v15 & 1) != 0 || v19)
  {
    v21(v8, &v3[OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsSession_logger], v4);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v47 = v20;
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v34 = *(Strong + 24);
        v46 = Strong;
        v35 = v34;

        v36 = v35;
      }

      else
      {
        v35 = 0;
        v36 = 0;
      }

      *(v31 + 4) = v35;
      *v32 = v36;
      _os_log_impl(&_mh_execute_header, v29, v30, "Data read completed for accessory: %@", v31, 0xCu);
      sub_100095C84(v32, &unk_1002A6F60, &unk_10023C4E0);

      v20 = v47;
    }

    result = (*(v5 + 8))(v8, v4);
    v38 = *(v3 + 5);
    if (v38)
    {
      v39 = *(v3 + 6);
      *(v3 + 5) = 0;
      *(v3 + 6) = 0;
      if (v20)
      {
        v41 = *(v3 + 18);
        v40 = *(v3 + 19);
      }

      else
      {
        v41 = *(v3 + 14);
        v40 = *(v3 + 15);
      }

      v38(0, v41, v40);

      return sub_1000BAA84(v38, v39);
    }
  }

  else
  {
    v21(v11, &v3[OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsSession_logger], v4);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      v26 = swift_weakLoadStrong();
      if (v26)
      {
        v27 = *(v26 + 24);

        v28 = v27;
      }

      else
      {
        v27 = 0;
        v28 = 0;
      }

      *(v24 + 4) = v27;
      *v25 = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "Data read completed for accessory: %@ but file path not present", v24, 0xCu);
      sub_100095C84(v25, &unk_1002A6F60, &unk_10023C4E0);
    }

    (*(v5 + 8))(v11, v4);
    v42 = type metadata accessor for Errors();
    sub_10016EFDC(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    v43 = swift_allocError();
    *v44 = 0x656C6966206C696ELL;
    v44[1] = 0xEF656C646E616820;
    (*(*(v42 - 8) + 104))(v44, enum case for Errors.CommunicationFailure(_:), v42);
    sub_10016CFFC(v43, v45);
  }

  return result;
}

uint64_t sub_10016EFDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10016F078()
{
  result = qword_1002A9F68;
  if (!qword_1002A9F68)
  {
    sub_100095B94(255, &qword_1002A9270, NSData_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A9F68);
  }

  return result;
}

uint64_t sub_10016F118(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&unk_1002A8890, &unk_10023FAF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10016F190()
{
  v1 = sub_100095274(&qword_1002A9F70, &qword_10023EB70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10016F238(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_100095274(&qword_1002A9F70, &qword_10023EB70) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10016AF9C(a1, a2, v2 + v6, v7);
}

void sub_10016F328(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a2;
  *a2 = 0;
  *(a2 + 8) = _swiftEmptyArrayStorage;
  type metadata accessor for JarvisEventHistory(0);
  Logger.init(subsystem:category:)();
  v4 = *(a1 + 16);
  if (v4)
  {
    *v3 = *(a1 + 32);
  }

  v24 = _swiftEmptyArrayStorage;
  v5 = 1;
  v26 = a1;
  v25 = v4;
LABEL_4:
  v6 = v5;
  while (v6 < v4)
  {
    v7 = v6 + 9;
    if (__OFADD__(v6, 9))
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      return;
    }

    if (v4 < v7)
    {

      osloga = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(osloga, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, osloga, v22, "buffer is incomplete, this is not expected. Not processing jarvis report further", v23, 2u);
      }

      return;
    }

    if (v5 < 0)
    {
      goto LABEL_35;
    }

    v8 = *(a1 + 16);
    if (v6 >= v8)
    {
      goto LABEL_36;
    }

    if (__OFSUB__(v7, 1))
    {
      goto LABEL_37;
    }

    if (v6 + 8 <= v6)
    {
      goto LABEL_38;
    }

    if (v8 < v7)
    {
      goto LABEL_39;
    }

    if (v7 < 0)
    {
      goto LABEL_40;
    }

    oslog = *(a1 + v6 + 32);
    if (v8 == 8)
    {

      v9 = a1;
    }

    else
    {
      sub_1001C9ED8(a1, a1 + 32, v6 + 1, (2 * v7) | 1);
      v9 = v17;
    }

    v10 = sub_10013B7B8(v9);

    v11 = mach_continuous_time();
    v12 = v11 - v10;
    if (v11 < v10)
    {
      goto LABEL_41;
    }

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = v3;
      v16 = swift_slowAlloc();
      *v16 = 134218752;
      *(v16 + 4) = v10;
      *(v16 + 12) = 2048;
      *(v16 + 14) = mach_continuous_time();
      *(v16 + 22) = 2048;
      *(v16 + 24) = v12;
      *(v16 + 32) = 256;
      *(v16 + 34) = oslog;
      _os_log_impl(&_mh_execute_header, v13, v14, "time is %llu, current time is %llu, ticks = %llu event is %hhu", v16, 0x23u);
      v3 = v15;
      v4 = v25;
      a1 = v26;
    }

    v6 += 9;
    if (v10)
    {
      v18 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_100103230(0, v24[2] + 1, 1, v24);
      }

      v20 = v18[2];
      v19 = v18[3];
      if (v20 >= v19 >> 1)
      {
        v18 = sub_100103230((v19 > 1), v20 + 1, 1, v18);
      }

      v18[2] = (v20 + 1);
      v21 = &v18[2 * v20];
      *(v21 + 32) = oslog;
      v21[5] = v12;
      v24 = v18;
      *(v3 + 8) = v18;
      v5 = v7;
      goto LABEL_4;
    }
  }
}

id DockDetector.startupValidator.getter()
{
  v1 = OBJC_IVAR____TtC14dockaccessoryd12DockDetector_startupValidator;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void DockDetector.startupValidator.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14dockaccessoryd12DockDetector_startupValidator;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *DockDetector.init(workQueue:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14dockaccessoryd12DockDetector_startupValidator;
  v5 = objc_allocWithZone(type metadata accessor for MotionValidator(0));
  *&v1[v4] = MotionValidator.init(type:interval:)(0, 0.1);
  Logger.init(subsystem:category:)();
  v6 = OBJC_IVAR____TtC14dockaccessoryd12DockDetector_hidManager;
  *&v2[v6] = IOHIDManagerCreate(kCFAllocatorDefault, 0);
  *&v2[OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvis] = 0;
  *&v2[OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisTimer] = 0;
  *&v2[OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisInterval] = 0x3FC999999999999ALL;
  *&v2[OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisLastDockedTimeout] = 0x4000000000000000;
  *&v2[OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisLastUndockedTimeout] = 0x4014000000000000;
  *&v2[OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisTimeThreshold] = 0x404E000000000000;
  v7 = OBJC_IVAR____TtC14dockaccessoryd12DockDetector_dockStatus;
  v8 = enum case for DockStatus.Undocked(_:);
  v9 = type metadata accessor for DockStatus();
  (*(*(v9 - 8) + 104))(&v2[v7], v8, v9);
  *&v2[OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisReportLength] = 91;
  v10 = &v2[OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisCallback];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v2[OBJC_IVAR____TtC14dockaccessoryd12DockDetector_clockTimebase] = 0;
  *&v2[OBJC_IVAR____TtC14dockaccessoryd12DockDetector_kJarvisReportID] = 2;
  *&v2[OBJC_IVAR____TtC14dockaccessoryd12DockDetector_workQueue] = a1;
  v11 = a1;
  *&v2[OBJC_IVAR____TtC14dockaccessoryd12DockDetector_reportBuffer] = swift_slowAlloc();
  v16.receiver = v2;
  v16.super_class = type metadata accessor for DockDetector(0);
  v12 = objc_msgSendSuper2(&v16, "init");
  v13 = OBJC_IVAR____TtC14dockaccessoryd12DockDetector_clockTimebase;
  swift_beginAccess();
  v14 = v12;
  mach_timebase_info(&v12[v13]);
  swift_endAccess();

  return v14;
}

id DockDetector.__deallocating_deinit()
{
  IOHIDManagerClose(*&v0[OBJC_IVAR____TtC14dockaccessoryd12DockDetector_hidManager], 0);
  v1 = *&v0[OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisTimer];
  *&v0[OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisTimer] = 0;

  v3.receiver = v0;
  v3.super_class = type metadata accessor for DockDetector(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10016FC24(uint64_t a1)
{
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Setting up Jarvis detection", v5, 2u);
  }

  sub_1001F3BCC(&off_100274ED0);
  sub_100095274(&qword_1002AC670, &qword_10023EC08);
  swift_arrayDestroy();
  matching = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = OBJC_IVAR____TtC14dockaccessoryd12DockDetector_hidManager;
  IOHIDManagerSetDeviceMatching(*(v2 + OBJC_IVAR____TtC14dockaccessoryd12DockDetector_hidManager), matching);
  v7 = IOHIDManagerCopyDevices(*(v2 + v6));
  if (v7)
  {
    v8 = v7;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for IOHIDDevice(0);
      sub_1001713E8(&unk_1002A6B40, type metadata accessor for IOHIDDevice, &unk_10023AD9C);
      static Set._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  v9 = sub_1001C9F98(&_swiftEmptySetSingleton);

  if ((v9 & 0x8000000000000000) != 0 || (v9 & 0x4000000000000000) != 0)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_11;
    }

LABEL_16:

    v11 = 0;
    goto LABEL_17;
  }

  if (!v9[2])
  {
    goto LABEL_16;
  }

LABEL_11:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!v9[2])
    {
      __break(1u);
      return;
    }

    v10 = v9[4];
  }

  v11 = v10;

LABEL_17:
  v12 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvis);
  *(v2 + OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvis) = v11;

  IOHIDManagerOpen(*(v2 + v6), 0);
}

BOOL sub_10016FEA0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisTimer;
  v3 = *&v1[OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisTimer];
  if (v3)
  {
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Another instance of Jarvis monitoring is running, this is unusual - not starting another instance", v6, 2u);
    }
  }

  else
  {
    sub_10016FC24(a1);
    v7 = *&v1[OBJC_IVAR____TtC14dockaccessoryd12DockDetector_workQueue];
    *(swift_allocObject() + 16) = v1;
    objc_allocWithZone(type metadata accessor for RepeatingTimer());
    v8 = v7;
    v9 = v1;
    v10 = RepeatingTimer.init(interval:fireOnce:queue:_:)();
    v4 = *&v1[v2];
    *&v1[v2] = v10;
  }

  return v3 == 0;
}

void sub_10016FFE4(uint64_t a1)
{
  v2 = type metadata accessor for DockStatus();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for JarvisEventHistory(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvis);
  if (v9)
  {
    pReportLength = 91;
    v10 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd12DockDetector_reportBuffer);
    v11 = v9;
    if (IOHIDDeviceGetReport(v11, kIOHIDReportTypeFeature, 2, v10, &pReportLength))
    {
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = "Failed to get HID device report";
LABEL_20:
        _os_log_impl(&_mh_execute_header, v12, v13, v15, v14, 2u);

        goto LABEL_21;
      }

      goto LABEL_21;
    }

    if (pReportLength != 91)
    {
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = "Report length is not valid";
        goto LABEL_20;
      }

LABEL_21:

LABEL_22:
      return;
    }

    if (*v10 != 2)
    {
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = "Report doesn't contain valid report ID";
        goto LABEL_20;
      }

      goto LABEL_21;
    }

    v23 = sub_1001F7A30();
    v24 = *(v10 + 16);
    v23[2] = *v10;
    v23[3] = v24;
    v26 = *(v10 + 48);
    v25 = *(v10 + 64);
    v27 = *(v10 + 32);
    *(v23 + 107) = *(v10 + 75);
    v23[5] = v26;
    v23[6] = v25;
    v23[4] = v27;
    sub_10016F328(v23, v8);
    v28 = OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisTimer;
    v29 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisTimer);
    if (v29)
    {
      v30 = v29;
      dispatch thunk of RepeatingTimer.timeSinceInit()();
      v32 = v31;

      v33 = sub_10017072C(v8, INFINITY);
      if (v32 > 5.0)
      {
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          v37 = "Jarvis: monitoring done, not docked but still connecting";
LABEL_26:
          _os_log_impl(&_mh_execute_header, v34, v35, v37, v36, 2u);

          goto LABEL_27;
        }

        goto LABEL_27;
      }

      if (v32 > 2.0 && v33)
      {
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          v37 = "Jarvis: monitoring done, docked and connecting";
          goto LABEL_26;
        }

LABEL_27:

        (*(v3 + 104))(v5, enum case for DockStatus.Docked(_:), v2);
        v38 = OBJC_IVAR____TtC14dockaccessoryd12DockDetector_dockStatus;
        swift_beginAccess();
        (*(v3 + 40))(a1 + v38, v5, v2);
        swift_endAccess();
        v39 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisCallback);
        if (!v39)
        {
LABEL_34:
          v46 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd12DockDetector_hidManager);
          IOHIDManagerClose(v46, 0);

          sub_10017138C(v8);
          v11 = *(a1 + v28);
          *(a1 + v28) = 0;
          goto LABEL_22;
        }

        v40 = a1 + OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisCallback;
LABEL_33:
        v45 = *(v40 + 8);

        v39(1);
        sub_1000BABC8(v39, v45);
        goto LABEL_34;
      }
    }

    if (!sub_10017072C(v8, 60.0))
    {
      sub_10017138C(v8);
      goto LABEL_22;
    }

    (*(v3 + 104))(v5, enum case for DockStatus.Docked(_:), v2);
    v41 = OBJC_IVAR____TtC14dockaccessoryd12DockDetector_dockStatus;
    swift_beginAccess();
    (*(v3 + 40))(a1 + v41, v5, v2);
    swift_endAccess();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Jarvis: docked", v44, 2u);
    }

    v40 = a1 + OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisCallback;
    v39 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisCallback);
    if (!v39)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "No Jarvis detector found, docked and connecting", v18, 2u);
  }

  (*(v3 + 104))(v5, enum case for DockStatus.Docked(_:), v2);
  v19 = OBJC_IVAR____TtC14dockaccessoryd12DockDetector_dockStatus;
  swift_beginAccess();
  (*(v3 + 40))(a1 + v19, v5, v2);
  swift_endAccess();
  v20 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisCallback);
  if (v20)
  {
    v21 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisCallback + 8);

    v20(1);
    sub_1000BABC8(v20, v21);
  }

  IOHIDManagerClose(*(a1 + OBJC_IVAR____TtC14dockaccessoryd12DockDetector_hidManager), 0);
  v22 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisTimer);
  *(a1 + OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisTimer) = 0;
}

BOOL sub_10017072C(uint64_t a1, double a2)
{
  v3 = *(a1 + 8);
  if (!*(v3 + 16))
  {
    return 1;
  }

  if (*(v3 + 32) != 1)
  {
    return 0;
  }

  v5 = *(v3 + 40);
  v6 = (v2 + OBJC_IVAR____TtC14dockaccessoryd12DockDetector_clockTimebase);
  swift_beginAccess();
  LODWORD(v7) = *v6;
  LODWORD(v8) = v6[1];
  v9 = v5 * v7 / v8 / 1000000000.0;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "Secs since last Jarvis event is %f", v12, 0xCu);
  }

  return v9 < a2;
}

uint64_t DockDetector.newStatus(_:monitorJarvisCallback:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v26 = a3;
  v27 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v27 - 8);
  __chkstk_darwin(v27);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v28 = *(v7 - 8);
  v29 = v7;
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DockStatus();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = *&v3[OBJC_IVAR____TtC14dockaccessoryd12DockDetector_workQueue];
  (*(v11 + 16))(&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  (*(v11 + 32))(v15 + v14, &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v16 = (v15 + ((v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  v18 = v25;
  v17 = v26;
  *v16 = v25;
  v16[1] = v17;
  aBlock[4] = sub_1001710C0;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_100279568;
  v19 = _Block_copy(aBlock);
  v20 = v13;
  v21 = v3;
  sub_1000C6F30(v18, v17);
  static DispatchQoS.unspecified.getter();
  v31 = _swiftEmptyArrayStorage;
  sub_1001713E8(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_1000BAB30();
  v22 = v27;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v30 + 8))(v6, v22);
  (*(v28 + 8))(v9, v29);
}

void sub_100170C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v30 = a3;
  v6 = type metadata accessor for DockStatus();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v28 - v11;
  v13 = OBJC_IVAR____TtC14dockaccessoryd12DockDetector_dockStatus;
  swift_beginAccess();
  v14 = *(v7 + 16);
  v31 = v13;
  v32 = v14;
  v14(v12, a1 + v13, v6);
  sub_1001713E8(&qword_1002AA030, &type metadata accessor for DockStatus, &protocol conformance descriptor for DockStatus);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v15 = *(v7 + 8);
  v15(v12, v6);
  if (v33 == v34)
  {
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Dock status has not changed, returning", v18, 2u);
    }

    return;
  }

  v32(v10, a2, v6);
  v19 = (*(v7 + 88))(v10, v6);
  if (v19 == enum case for DockStatus.Undocked(_:))
  {
LABEL_6:
    (*(v7 + 104))(v12, v19, v6);
    v20 = v31;
    swift_beginAccess();
    (*(v7 + 40))(a1 + v20, v12, v6);
    swift_endAccess();
    IOHIDManagerClose(*(a1 + OBJC_IVAR____TtC14dockaccessoryd12DockDetector_hidManager), 0);
    v21 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisTimer);
    *(a1 + OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisTimer) = 0;

    return;
  }

  if (v19 != enum case for DockStatus.DockedRSSI(_:))
  {
    if (v19 != enum case for DockStatus.Docked(_:))
    {
      v15(v10, v6);
      return;
    }

    goto LABEL_6;
  }

  (*(v7 + 104))(v12, v19, v6);
  v22 = v31;
  swift_beginAccess();
  (*(v7 + 40))(a1 + v22, v12, v6);
  v23 = swift_endAccess();
  v24 = v30;
  if (v30 && sub_10016FEA0(v23))
  {
    v25 = (a1 + OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisCallback);
    v26 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisCallback);
    v27 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisCallback + 8);
    *v25 = v24;
    v25[1] = v29;
    sub_1000BABC8(v26, v27);
  }
}

uint64_t sub_100170FDC()
{
  v1 = type metadata accessor for DockStatus();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
  }

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

void sub_1001710C0()
{
  v1 = *(type metadata accessor for DockStatus() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  sub_100170C00(v3, v0 + v2, v5, v6);
}

uint64_t sub_100171154(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001711D4(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for DockStatus();
    if (v4 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1001712F4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100171354(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10017138C(uint64_t a1)
{
  v2 = type metadata accessor for JarvisEventHistory(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001713E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100171454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Logger();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100171514(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Logger();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1001715B8(uint64_t a1)
{
  sub_10017164C();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Logger();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10017164C()
{
  if (!qword_1002AA0A0)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1002AA0A0);
    }
  }
}

uint64_t sub_10017169C(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (*(a2 + 16))
    {
      sub_1000B5150(v2, v17, &qword_1002AA4C8, &unk_10023EDF0);
      v9 = *(v8 + 24);

      if (v9)
      {
        sub_100171820(v8, a2, v17, a1);
      }

      else
      {
        sub_100138F54(v10, v11);
        if (!v4)
        {
          v15 = sub_100171820(v8, a2, v17, a1);
          sub_1001396D0(v15, v16);
        }
      }

      sub_100095C84(v17, &qword_1002AA4C8, &unk_10023EDF0);
    }

    else
    {
      sub_1000B346C();
      swift_allocError();
      *v14 = 2;
      swift_willThrow();
    }
  }

  else
  {
    sub_1000B346C();
    swift_allocError();
    *v12 = 2;
    return swift_willThrow();
  }
}

uint64_t sub_100171820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31[3] = a4;
  v6 = sub_10017D180(0x3F, 0xE100000000000000, *(a2 + 16));
  v7 = sub_100171B08(v6);
  v9 = v8;

  _StringGuts.grow(_:)(32);

  strcpy(v31, "INSERT INTO ");
  BYTE5(v31[1]) = 0;
  HIWORD(v31[1]) = -5120;
  v10 = *(*a3 + 16);
  v11 = *(*a3 + 24);

  v12._countAndFlagsBits = v10;
  v12._object = v11;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 10272;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = sub_100171B08(a2);
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0x5345554C41562029;
  v15._object = 0xEA00000000002820;
  String.append(_:)(v15);
  v16._countAndFlagsBits = v7;
  v16._object = v9;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 15145;
  v17._object = 0xE200000000000000;
  String.append(_:)(v17);
  v18 = v31[0];
  v19 = v31[1];
  type metadata accessor for DBStatement(0, v20);
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  swift_weakInit();
  swift_weakAssign();

  v22 = sub_1001399BC(v18, v19);

  *(inited + 16) = v22;
  if (!v22)
  {
    sub_100139F18();
    swift_allocError();
    *v29 = 1;
LABEL_7:
    *(v29 + 4) = 2;
    swift_willThrow();
    goto LABEL_8;
  }

  __chkstk_darwin(v23);
  OS_dispatch_queue.sync<A>(execute:)();
  if ((v31[0] & 1) == 0)
  {
    sub_100139F18();
    swift_allocError();
    *v29 = 2;
    goto LABEL_7;
  }

  v24 = sub_100138000(101);
  if (v25)
  {
    v26 = HIDWORD(v24);
    LODWORD(v31[0]) = v24;
    BYTE4(v31[0]) = BYTE4(v24);
    v27 = v24;
    sub_100139F18();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v28 = v27;
    *(v28 + 4) = v26;
  }

LABEL_8:
  swift_setDeallocating();
  return sub_100137E54();
}

uint64_t sub_100171B08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = a1 + 40;
  do
  {
    v6 = result;

    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    String.append(_:)(v5);

    String.append<A>(contentsOf:)();
    swift_bridgeObjectRelease_n();

    result = v6;
    v4 += 16;
    --v1;
  }

  while (v1);
  return result;
}

id *sub_100171C2C()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_1000B5150(v0, v10, &unk_1002AA510, &unk_10023EE08);
    if (*(v4 + 24))
    {
      v2 = sub_100171D78(v4, v10);
    }

    else
    {
      sub_100138F54(v5, v6);
      if (!v1)
      {
        v2 = sub_100171D78(v4, v10);
        sub_1001396D0(v2, v8);
      }
    }

    sub_100095C84(v10, &unk_1002AA510, &unk_10023EE08);
  }

  else
  {
    sub_1000B346C();
    swift_allocError();
    *v7 = 2;
    swift_willThrow();
  }

  return v2;
}

id *sub_100171D78(uint64_t a1, uint64_t a2)
{
  v3 = _swiftEmptyArrayStorage;
  v22 = _swiftEmptyArrayStorage;
  _StringGuts.grow(_:)(16);

  strcpy(v21, "SELECT * FROM ");
  HIBYTE(v21[1]) = -18;
  v4 = *(*a2 + 16);
  v5 = *(*a2 + 24);

  v6._countAndFlagsBits = v4;
  v6._object = v5;
  String.append(_:)(v6);

  v7 = v21[0];
  v8 = v21[1];
  type metadata accessor for DBStatement(0, v9);
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  swift_weakInit();
  swift_weakAssign();

  v11 = sub_1001399BC(v7, v8);

  *(inited + 16) = v11;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    while (1)
    {
      if (!*(inited + 16))
      {

        v14 = 0x200000001;
        goto LABEL_13;
      }

      if ((*(Strong + 24) & 1) == 0)
      {

        goto LABEL_12;
      }

      OS_dispatch_queue.sync<A>(execute:)();

      if (LODWORD(v21[0]) != 100)
      {
        v14 = LODWORD(v21[0]) | &_mh_execute_header;
        goto LABEL_13;
      }

      __chkstk_darwin(v13);
      sub_100095274(&unk_1002AA520, &qword_10023EE18);
      OS_dispatch_queue.sync<A>(execute:)();
      if (!v21[0])
      {
        break;
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v3 = v22;
      Strong = swift_weakLoadStrong();
      if (!Strong)
      {
        goto LABEL_12;
      }
    }

    sub_1000B346C();
    v15 = swift_allocError();
    *v18 = 2;
    swift_willThrow();
  }

  else
  {
LABEL_12:
    v14 = 0x200000000;
LABEL_13:
    LODWORD(v21[0]) = v14;
    BYTE4(v21[0]) = BYTE4(v14);
    sub_100139F18();
    swift_willThrowTypedImpl();
    v15 = swift_allocError();
    *v16 = v14;
    *(v16 + 4) = BYTE4(v14);
  }

  v21[0] = v15;
  swift_errorRetain();
  sub_100095274(&qword_1002A7268, &unk_10023C680);
  if (swift_dynamicCast() && v20 == 1 && v19 == 101)
  {

    swift_setDeallocating();
    sub_100137E54();
  }

  else
  {

    swift_willThrow();
    swift_setDeallocating();
    sub_100137E54();
  }

  return v3;
}

void sub_100172148(unint64_t a1, const void *a2, const void *a3)
{
  v7 = sub_1001762B8(a2, a3, 1);
  if (v7 >> 62)
  {
    v29 = v7;
    v30 = _CocoaArrayWrapper.endIndex.getter();
    v7 = v29;
    if (v30)
    {
LABEL_3:
      if ((v7 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_30:
          swift_once();
LABEL_14:
          v22 = type metadata accessor for Logger();
          sub_100093DE8(v22, qword_1002AA0E0);

          v23 = Logger.logObject.getter();
          v24 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            v31[0] = swift_slowAlloc();
            *v25 = 136315394;
            *(v25 + 4) = sub_1000952D4(a2, a3, v31);
            *(v25 + 12) = 2080;
            if (a1)
            {
              v26 = v3;
            }

            else
            {
              v26 = 0x206E776F6E6B6E55;
            }

            if (a1)
            {
              v27 = a1;
            }

            else
            {
              v27 = 0xED0000726F727245;
            }

            v28 = sub_1000952D4(v26, v27, v31);

            *(v25 + 14) = v28;
            _os_log_impl(&_mh_execute_header, v23, v24, "Unable to update peer key state number for %s: %s", v25, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          return;
        }

        v8 = v7[4];
      }

      *(v8 + 128) = a1;
      sub_100095274(&qword_1002AA4D8, &unk_10023FAE0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10023C170;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v10;
      v11 = *(v8 + 96);
      v12 = *(v8 + 104);
      *(inited + 72) = &type metadata for Data;
      *(inited + 48) = v11;
      *(inited + 56) = v12;
      sub_1000A0CD8(v11, v12);
      sub_1001F2468(inited);
      swift_setDeallocating();
      sub_100095C84(inited + 32, &qword_1002AA4E0, &qword_10023EE00);
      v13 = swift_initStackObject();
      *(v13 + 16) = xmmword_10023C170;
      *(v13 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v13 + 40) = v14;
      v15 = sub_10017565C();
      *(v13 + 72) = &type metadata for String;
      *(v13 + 48) = v15;
      *(v13 + 56) = v16;
      sub_1001F2468(v13);
      swift_setDeallocating();
      sub_100095C84(v13 + 32, &qword_1002AA4E0, &qword_10023EE00);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v18 = Dictionary._bridgeToObjectiveC()().super.isa;

      v19 = SecItemUpdate(isa, v18);

      if (!v19)
      {

        return;
      }

      v20 = SecCopyErrorMessageString(v19, 0);
      if (v20)
      {
        v21 = v20;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v31[0] = 0;
          v31[1] = 0;
          static String._conditionallyBridgeFromObjectiveC(_:result:)();
        }
      }

      v3 = 0;
      a1 = 0;
      if (qword_1002A6770 == -1)
      {
        goto LABEL_14;
      }

      goto LABEL_30;
    }
  }

  else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }
}

void sub_1001725C4(uint64_t a1, unint64_t a2, const void *a3, const void *a4)
{
  v9 = sub_1001762B8(a3, a4, 1);
  if (v9 >> 62)
  {
    v31 = v9;
    v32 = _CocoaArrayWrapper.endIndex.getter();
    v9 = v31;
    if (v32)
    {
LABEL_3:
      if ((v9 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_30:
          swift_once();
LABEL_14:
          v24 = type metadata accessor for Logger();
          sub_100093DE8(v24, qword_1002AA0E0);

          v25 = Logger.logObject.getter();
          v26 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            v33[0] = swift_slowAlloc();
            *v27 = 136315394;
            *(v27 + 4) = sub_1000952D4(a3, a4, v33);
            *(v27 + 12) = 2080;
            if (a2)
            {
              v28 = v4;
            }

            else
            {
              v28 = 0x206E776F6E6B6E55;
            }

            if (a2)
            {
              v29 = a2;
            }

            else
            {
              v29 = 0xED0000726F727245;
            }

            v30 = sub_1000952D4(v28, v29, v33);

            *(v27 + 14) = v30;
            _os_log_impl(&_mh_execute_header, v25, v26, "Unable to update peer key state number for %s: %s", v27, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          return;
        }

        v10 = v9[4];
      }

      v10[17] = a1;
      v10[18] = a2;

      sub_100095274(&qword_1002AA4D8, &unk_10023FAE0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10023C170;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v12;
      v13 = v10[12];
      v14 = v10[13];
      *(inited + 72) = &type metadata for Data;
      *(inited + 48) = v13;
      *(inited + 56) = v14;
      sub_1000A0CD8(v13, v14);
      sub_1001F2468(inited);
      swift_setDeallocating();
      sub_100095C84(inited + 32, &qword_1002AA4E0, &qword_10023EE00);
      v15 = swift_initStackObject();
      *(v15 + 16) = xmmword_10023C170;
      *(v15 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v15 + 40) = v16;
      v17 = sub_10017565C();
      *(v15 + 72) = &type metadata for String;
      *(v15 + 48) = v17;
      *(v15 + 56) = v18;
      sub_1001F2468(v15);
      swift_setDeallocating();
      sub_100095C84(v15 + 32, &qword_1002AA4E0, &qword_10023EE00);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v20 = Dictionary._bridgeToObjectiveC()().super.isa;

      v21 = SecItemUpdate(isa, v20);

      if (!v21)
      {

        return;
      }

      v22 = SecCopyErrorMessageString(v21, 0);
      if (v22)
      {
        v23 = v22;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v33[0] = 0;
          v33[1] = 0;
          static String._conditionallyBridgeFromObjectiveC(_:result:)();
        }
      }

      v4 = 0;
      a2 = 0;
      if (qword_1002A6770 == -1)
      {
        goto LABEL_14;
      }

      goto LABEL_30;
    }
  }

  else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }
}

uint64_t sub_100172A58(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  sub_100093D84(v2, qword_1002AA0E0);
  sub_100093DE8(v2, qword_1002AA0E0);
  return Logger.init(subsystem:category:)();
}

id *sub_100172AD0(uint64_t a1, unint64_t a2, char a3)
{
  v6 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v6 - 8);
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      return _swiftEmptyArrayStorage;
    }

    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
LABEL_8:
    if (v8 != v9)
    {
      goto LABEL_9;
    }

    return _swiftEmptyArrayStorage;
  }

  if (v7)
  {
    v8 = a1;
    v9 = a1 >> 32;
    goto LABEL_8;
  }

  if ((a2 & 0xFF000000000000) == 0)
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_9:
  v33 = a1;
  v34 = a2;
  static String.Encoding.utf8.getter();
  sub_10017E9A8();
  v10 = String.init<A>(bytes:encoding:)();
  if (!v11)
  {
    return _swiftEmptyArrayStorage;
  }

  v12 = v11;
  if (a3)
  {
    v13 = sub_10013B844(v10, v11);
    v15 = v14;

    if (v15 >> 60 != 15)
    {
      sub_100095274(&unk_1002AA540, &unk_10023EE28);
      result = swift_allocObject();
      *(result + 1) = xmmword_10023C170;
      result[4] = v13;
      result[5] = v15;
      return result;
    }

    return _swiftEmptyArrayStorage;
  }

  v33 = 43;
  v34 = 0xE100000000000000;
  __chkstk_darwin(v10);
  *&v32[-16] = &v33;
  v18 = sub_10017B660(0x7FFFFFFFFFFFFFFFLL, 1, sub_10017EA54, &v32[-32], v17, v12, v32);
  if (v18[2] != 2 || (v19 = v18, , v20 = static String._fromSubstring(_:)(), v22 = v21, , v23 = sub_10013B844(v20, v22), v25 = v24, result = , v25 >> 60 == 15))
  {

    return _swiftEmptyArrayStorage;
  }

  if (v19[2] < 2)
  {
    __break(1u);
  }

  else
  {

    v26 = static String._fromSubstring(_:)();
    v28 = v27;

    v29 = sub_10013B844(v26, v28);
    v31 = v30;

    if (v31 >> 60 == 15)
    {
      sub_1000A452C(v23, v25);
      return _swiftEmptyArrayStorage;
    }

    sub_100095274(&unk_1002AA540, &unk_10023EE28);
    result = swift_allocObject();
    *(result + 1) = xmmword_10023AAC0;
    result[4] = v23;
    result[5] = v25;
    result[6] = v29;
    result[7] = v31;
  }

  return result;
}

Swift::Int sub_100172DEC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*&aIpkd[8 * v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100172E74()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*&aIpkd[8 * v1]);
  return Hasher._finalize()();
}

uint64_t *sub_100172EC0@<X0>(uint64_t *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (*result == 1684762729)
  {
    v3 = 0;
  }

  else
  {
    v3 = 3;
  }

  if (v2 == 1684762731)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (v2 == 1684759156)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_100172F20(sqlite3_stmt *a1)
{
  v2 = v1;
  v4 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v94 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCC14dockaccessoryd17AccessoryKeystore24AccessoryPeripheralEntry_peripheralIdentifier;
  v15 = *(v11 + 56);
  v15(v1 + OBJC_IVAR____TtCC14dockaccessoryd17AccessoryKeystore24AccessoryPeripheralEntry_peripheralIdentifier, 1, 1, v10);
  *(v1 + OBJC_IVAR____TtCC14dockaccessoryd17AccessoryKeystore24AccessoryPeripheralEntry_sessionId) = 0;
  *(v1 + OBJC_IVAR____TtCC14dockaccessoryd17AccessoryKeystore24AccessoryPeripheralEntry_version) = 0;
  if (!sqlite3_column_text(a1, 1))
  {
    if (qword_1002A6770 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100093DE8(v28, qword_1002AA0E0);
    v20 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v20, v29))
    {
      goto LABEL_28;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = "Unable to read identifier";
LABEL_26:
    _os_log_impl(&_mh_execute_header, v20, v29, v31, v30, 2u);
    goto LABEL_27;
  }

  v97 = v13;
  v98 = v11;
  if (!sqlite3_column_text(a1, 2))
  {
    if (qword_1002A6770 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100093DE8(v32, qword_1002AA0E0);
    v20 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v20, v29))
    {
      goto LABEL_28;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = "Unable to read peripheral identifier";
    goto LABEL_26;
  }

  v16 = sqlite3_column_text(a1, 3);
  if (!v16)
  {
    if (qword_1002A6770 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100093DE8(v33, qword_1002AA0E0);
    v20 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v20, v29))
    {
      goto LABEL_28;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = "Unable to read session Id";
    goto LABEL_26;
  }

  v96 = v16;
  v17 = sqlite3_column_text(a1, 4);
  if (!v17)
  {
    if (qword_1002A6770 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100093DE8(v34, qword_1002AA0E0);
    v20 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v20, v29))
    {
      goto LABEL_28;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = "Unable to read version";
    goto LABEL_26;
  }

  v94[1] = v17;
  v95 = v1;
  String.init(cString:)();
  UUID.init(uuidString:)();

  v18 = v98;
  if ((*(v98 + 48))(v9, 1, v10) == 1)
  {
    sub_100095C84(v9, &qword_1002A7AF0, &qword_10023C9D0);
    if (qword_1002A6770 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100093DE8(v19, qword_1002AA0E0);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    v22 = os_log_type_enabled(v20, v21);
    v2 = v95;
    if (!v22)
    {
      goto LABEL_28;
    }

    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v100 = v24;
    *v23 = 136315138;
    v25 = String.init(cString:)();
    v27 = sub_1000952D4(v25, v26, &v100);

    *(v23 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v20, v21, "Invalid UUID %s", v23, 0xCu);
    sub_100095808(v24);

LABEL_27:

LABEL_28:

    sub_100095C84(v2 + OBJC_IVAR____TtCC14dockaccessoryd17AccessoryKeystore24AccessoryPeripheralEntry_peripheralIdentifier, &qword_1002A7AF0, &qword_10023C9D0);
    type metadata accessor for AccessoryKeystore.AccessoryPeripheralEntry(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v36 = v97;
  (*(v18 + 32))(v97, v9, v10);
  (*(v18 + 16))(v7, v36, v10);
  v15(v7, 0, 1, v10);
  v37 = v95;
  swift_beginAccess();
  sub_10017E7A8(v7, v37 + v14);
  swift_endAccess();
  *(v37 + 16) = String.init(cString:)();
  *(v37 + 24) = v38;
  result = String.init(cString:)();
  v40 = HIBYTE(v39) & 0xF;
  v41 = result & 0xFFFFFFFFFFFFLL;
  if ((v39 & 0x2000000000000000) != 0)
  {
    v42 = HIBYTE(v39) & 0xF;
  }

  else
  {
    v42 = result & 0xFFFFFFFFFFFFLL;
  }

  if (v42)
  {
    v43 = &unk_1002B1000;
    if ((v39 & 0x1000000000000000) != 0)
    {
      v47 = sub_10017C5E4(result, v39, 10);
      v64 = v91;

      v44 = v97;
LABEL_98:
      if (v64)
      {
        v65 = 0;
      }

      else
      {
        v65 = v47;
      }

      goto LABEL_101;
    }

    v44 = v97;
    if ((v39 & 0x2000000000000000) == 0)
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (v39 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v41 = v93;
      }

      v45 = *result;
      if (v45 == 43)
      {
        if (v41 >= 1)
        {
          v55 = v41 - 1;
          if (v55)
          {
            if (result)
            {
              v47 = 0;
              v56 = (result + 1);
              while (1)
              {
                v57 = *v56 - 48;
                if (v57 > 9)
                {
                  goto LABEL_85;
                }

                if (!is_mul_ok(v47, 0xAuLL))
                {
                  goto LABEL_85;
                }

                v50 = __CFADD__(10 * v47, v57);
                v47 = 10 * v47 + v57;
                if (v50)
                {
                  goto LABEL_85;
                }

                ++v56;
                if (!--v55)
                {
                  goto LABEL_87;
                }
              }
            }

            goto LABEL_86;
          }

          goto LABEL_85;
        }

        goto LABEL_179;
      }

      if (v45 != 45)
      {
        if (v41)
        {
          if (result)
          {
            v47 = 0;
            while (1)
            {
              v61 = *result - 48;
              if (v61 > 9)
              {
                goto LABEL_85;
              }

              if (!is_mul_ok(v47, 0xAuLL))
              {
                goto LABEL_85;
              }

              v50 = __CFADD__(10 * v47, v61);
              v47 = 10 * v47 + v61;
              if (v50)
              {
                goto LABEL_85;
              }

              ++result;
              if (!--v41)
              {
                goto LABEL_87;
              }
            }
          }

          goto LABEL_86;
        }

LABEL_85:
        v47 = 0;
        v99 = 1;
LABEL_97:
        v64 = v99;

        goto LABEL_98;
      }

      if (v41 >= 1)
      {
        v46 = v41 - 1;
        if (v46)
        {
          if (result)
          {
            v47 = 0;
            v48 = (result + 1);
            while (1)
            {
              v49 = *v48 - 48;
              if (v49 > 9)
              {
                goto LABEL_85;
              }

              if (!is_mul_ok(v47, 0xAuLL))
              {
                goto LABEL_85;
              }

              v50 = 10 * v47 >= v49;
              v47 = 10 * v47 - v49;
              if (!v50)
              {
                goto LABEL_85;
              }

              ++v48;
              if (!--v46)
              {
                goto LABEL_87;
              }
            }
          }

LABEL_86:
          v47 = 0;
LABEL_87:
          v99 = 0;
          goto LABEL_97;
        }

        goto LABEL_85;
      }

      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
      goto LABEL_180;
    }

    v100 = result;
    v101 = v39 & 0xFFFFFFFFFFFFFFLL;
    if (result == 43)
    {
      if (!v40)
      {
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
        goto LABEL_184;
      }

      v58 = v40 - 1;
      if (v58)
      {
        v47 = 0;
        v59 = &v100 + 1;
        while (1)
        {
          v60 = *v59 - 48;
          if (v60 > 9)
          {
            break;
          }

          if (!is_mul_ok(v47, 0xAuLL))
          {
            break;
          }

          v50 = __CFADD__(10 * v47, v60);
          v47 = 10 * v47 + v60;
          if (v50)
          {
            break;
          }

          v54 = 0;
          ++v59;
          if (!--v58)
          {
            goto LABEL_96;
          }
        }
      }
    }

    else if (result == 45)
    {
      if (!v40)
      {
        goto LABEL_178;
      }

      v51 = v40 - 1;
      if (v51)
      {
        v47 = 0;
        v52 = &v100 + 1;
        while (1)
        {
          v53 = *v52 - 48;
          if (v53 > 9)
          {
            break;
          }

          if (!is_mul_ok(v47, 0xAuLL))
          {
            break;
          }

          v50 = 10 * v47 >= v53;
          v47 = 10 * v47 - v53;
          if (!v50)
          {
            break;
          }

          v54 = 0;
          ++v52;
          if (!--v51)
          {
            goto LABEL_96;
          }
        }
      }
    }

    else if (v40)
    {
      v47 = 0;
      v62 = &v100;
      while (1)
      {
        v63 = *v62 - 48;
        if (v63 > 9)
        {
          break;
        }

        if (!is_mul_ok(v47, 0xAuLL))
        {
          break;
        }

        v50 = __CFADD__(10 * v47, v63);
        v47 = 10 * v47 + v63;
        if (v50)
        {
          break;
        }

        v54 = 0;
        v62 = (v62 + 1);
        if (!--v40)
        {
          goto LABEL_96;
        }
      }
    }

    v47 = 0;
    v54 = 1;
LABEL_96:
    v99 = v54;
    goto LABEL_97;
  }

  v65 = 0;
  v43 = &unk_1002B1000;
  v44 = v97;
LABEL_101:
  *(v37 + OBJC_IVAR____TtCC14dockaccessoryd17AccessoryKeystore24AccessoryPeripheralEntry_sessionId) = v65;
  result = String.init(cString:)();
  v67 = v66;
  v68 = HIBYTE(v66) & 0xF;
  v69 = result & 0xFFFFFFFFFFFFLL;
  if ((v67 & 0x2000000000000000) != 0)
  {
    v70 = v68;
  }

  else
  {
    v70 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v70)
  {
    (*(v98 + 8))(v44, v10);

    v90 = 0;
LABEL_170:
    result = v37;
    *(v37 + v43[411]) = v90;
    return result;
  }

  if ((v67 & 0x1000000000000000) != 0)
  {
    v73 = sub_10017C5E4(result, v67, 10);
    v89 = v92;
LABEL_167:
    (*(v98 + 8))(v44, v10);

    if (v89)
    {
      v90 = 0;
    }

    else
    {
      v90 = v73;
    }

    goto LABEL_170;
  }

  if ((v67 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v67 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v71 = *result;
    if (v71 == 43)
    {
      if (v69 >= 1)
      {
        v80 = v69 - 1;
        if (v69 != 1)
        {
          if (result)
          {
            v73 = 0;
            v81 = (result + 1);
            while (1)
            {
              v82 = *v81 - 48;
              if (v82 > 9)
              {
                goto LABEL_165;
              }

              if (!is_mul_ok(v73, 0xAuLL))
              {
                goto LABEL_165;
              }

              v50 = __CFADD__(10 * v73, v82);
              v73 = 10 * v73 + v82;
              if (v50)
              {
                goto LABEL_165;
              }

              v76 = 0;
              ++v81;
              if (!--v80)
              {
                goto LABEL_166;
              }
            }
          }

          goto LABEL_157;
        }

        goto LABEL_165;
      }

      goto LABEL_183;
    }

    if (v71 != 45)
    {
      if (v69)
      {
        if (result)
        {
          v73 = 0;
          while (1)
          {
            v86 = *result - 48;
            if (v86 > 9)
            {
              goto LABEL_165;
            }

            if (!is_mul_ok(v73, 0xAuLL))
            {
              goto LABEL_165;
            }

            v50 = __CFADD__(10 * v73, v86);
            v73 = 10 * v73 + v86;
            if (v50)
            {
              goto LABEL_165;
            }

            v76 = 0;
            ++result;
            if (!--v69)
            {
              goto LABEL_166;
            }
          }
        }

        goto LABEL_157;
      }

LABEL_165:
      v73 = 0;
      v76 = 1;
      goto LABEL_166;
    }

    if (v69 >= 1)
    {
      v72 = v69 - 1;
      if (v69 != 1)
      {
        if (result)
        {
          v73 = 0;
          v74 = (result + 1);
          while (1)
          {
            v75 = *v74 - 48;
            if (v75 > 9)
            {
              goto LABEL_165;
            }

            if (!is_mul_ok(v73, 0xAuLL))
            {
              goto LABEL_165;
            }

            v50 = 10 * v73 >= v75;
            v73 = 10 * v73 - v75;
            if (!v50)
            {
              goto LABEL_165;
            }

            v76 = 0;
            ++v74;
            if (!--v72)
            {
              goto LABEL_166;
            }
          }
        }

LABEL_157:
        v73 = 0;
        v76 = 0;
LABEL_166:
        v99 = v76;
        v89 = v76;
        goto LABEL_167;
      }

      goto LABEL_165;
    }

    goto LABEL_181;
  }

  v100 = result;
  v101 = v67 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v68)
      {
        v73 = 0;
        v87 = &v100;
        while (1)
        {
          v88 = *v87 - 48;
          if (v88 > 9)
          {
            break;
          }

          if (!is_mul_ok(v73, 0xAuLL))
          {
            break;
          }

          v50 = __CFADD__(10 * v73, v88);
          v73 = 10 * v73 + v88;
          if (v50)
          {
            break;
          }

          v76 = 0;
          v87 = (v87 + 1);
          if (!--v68)
          {
            goto LABEL_166;
          }
        }
      }

      goto LABEL_165;
    }

    if (v68)
    {
      v77 = v68 - 1;
      if (v77)
      {
        v73 = 0;
        v78 = &v100 + 1;
        while (1)
        {
          v79 = *v78 - 48;
          if (v79 > 9)
          {
            break;
          }

          if (!is_mul_ok(v73, 0xAuLL))
          {
            break;
          }

          v50 = 10 * v73 >= v79;
          v73 = 10 * v73 - v79;
          if (!v50)
          {
            break;
          }

          v76 = 0;
          ++v78;
          if (!--v77)
          {
            goto LABEL_166;
          }
        }
      }

      goto LABEL_165;
    }

    goto LABEL_182;
  }

  if (v68)
  {
    v83 = v68 - 1;
    if (v83)
    {
      v73 = 0;
      v84 = &v100 + 1;
      while (1)
      {
        v85 = *v84 - 48;
        if (v85 > 9)
        {
          break;
        }

        if (!is_mul_ok(v73, 0xAuLL))
        {
          break;
        }

        v50 = __CFADD__(10 * v73, v85);
        v73 = 10 * v73 + v85;
        if (v50)
        {
          break;
        }

        v76 = 0;
        ++v84;
        if (!--v83)
        {
          goto LABEL_166;
        }
      }
    }

    goto LABEL_165;
  }

LABEL_184:
  __break(1u);
  return result;
}

uint64_t sub_100173C18(uint64_t a1, void *a2)
{
  v5 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v49 - v9;
  v57 = a1;
  v11 = sqlite3_bind_parameter_count(*(a1 + 16));
  v12 = v11;
  v58 = a2[2];
  if (v58 != v11)
  {
    if (qword_1002A6770 != -1)
    {
      goto LABEL_66;
    }

    goto LABEL_44;
  }

  if (v11 < 1)
  {
    goto LABEL_65;
  }

  v53 = v8;
  v50 = OBJC_IVAR____TtCC14dockaccessoryd17AccessoryKeystore24AccessoryPeripheralEntry_version;
  v51 = OBJC_IVAR____TtCC14dockaccessoryd17AccessoryKeystore24AccessoryPeripheralEntry_sessionId;
  v56 = a2 + 4;
  v59 = OBJC_IVAR____TtCC14dockaccessoryd17AccessoryKeystore24AccessoryPeripheralEntry_peripheralIdentifier;
  swift_beginAccess();
  v13 = 1;
  v55 = v2;
  v54 = v12;
  v52 = v10;
  while (1)
  {
    v14 = v13;
    if (v13 == v12)
    {
      v13 = 0;
    }

    else
    {
      if (v13 == 0x7FFFFFFF)
      {
        goto LABEL_64;
      }

      ++v13;
    }

    v15 = v14 - 1;
    if (__OFSUB__(v14, 1))
    {
      break;
    }

    if (v15 < 0 || v58 <= v15)
    {
      goto LABEL_63;
    }

    v61 = v14;
    v16 = &v56[2 * v15];
    v18 = *v16;
    v17 = v16[1];
    v19 = *v16 == 0x7265687069726570 && v17 == 0xEC00000064496C61;
    if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v60 = v13;
      sub_1000B5150(v2 + v59, v10, &qword_1002A7AF0, &qword_10023C9D0);
      v20 = type metadata accessor for UUID();
      v21 = v10;
      v22 = *(v20 - 8);
      v23 = *(v22 + 48);
      if (v23(v10, 1, v20) == 1)
      {
        sub_100095C84(v10, &qword_1002A7AF0, &qword_10023C9D0);
      }

      else
      {

        v24 = v59;
        sub_100095C84(v21, &qword_1002A7AF0, &qword_10023C9D0);
        v25 = v2 + v24;
        v26 = v53;
        sub_1000B5150(v25, v53, &qword_1002A7AF0, &qword_10023C9D0);
        if (v23(v26, 1, v20) == 1)
        {
          __break(1u);
LABEL_68:
          swift_once();
LABEL_41:
          v36 = type metadata accessor for Logger();
          sub_100093DE8(v36, qword_1002AA0E0);
          v37 = Logger.logObject.getter();
          v38 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            *v39 = 0;
            v40 = "Unable to bind version";
            goto LABEL_59;
          }

          goto LABEL_60;
        }

        UUID.uuidString.getter();
        (*(v22 + 8))(v26, v20);
        v10 = v52;
      }

      v17 = String._bridgeToObjectiveC()();

      v27 = *(v57 + 16);
      v28 = [v17 UTF8String];
      if (sqlite3_bind_text(v27, v61, v28, -1, 0))
      {
        if (qword_1002A6770 != -1)
        {
          swift_once();
        }

        v46 = type metadata accessor for Logger();
        sub_100093DE8(v46, qword_1002AA0E0);
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          v40 = "Unable to bind peripheral UUID";
          goto LABEL_59;
        }

        goto LABEL_60;
      }

      v2 = v55;
      v12 = v54;
      v13 = v60;
    }

    else
    {
      v29 = v18 == 0x696669746E656469 && v17 == 0xEA00000000007265;
      if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v17 = String._bridgeToObjectiveC()();
        v30 = *(v57 + 16);
        v31 = [v17 UTF8String];
        if (sqlite3_bind_text(v30, v61, v31, -1, 0))
        {
          if (qword_1002A6770 != -1)
          {
            swift_once();
          }

          v47 = type metadata accessor for Logger();
          sub_100093DE8(v47, qword_1002AA0E0);
          v37 = Logger.logObject.getter();
          v38 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            *v39 = 0;
            v40 = "Unable to bind identifier";
            goto LABEL_59;
          }

          goto LABEL_60;
        }
      }

      else if (v18 == 0x496E6F6973736573 && v17 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v62 = *(v2 + v51);
        sub_1000A44D8();
        String.init<A>(_:radix:uppercase:)();
        v17 = String._bridgeToObjectiveC()();

        v32 = *(v57 + 16);
        v33 = [v17 UTF8String];
        if (sqlite3_bind_text(v32, v61, v33, -1, 0))
        {
          if (qword_1002A6770 != -1)
          {
            swift_once();
          }

          v48 = type metadata accessor for Logger();
          sub_100093DE8(v48, qword_1002AA0E0);
          v37 = Logger.logObject.getter();
          v38 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            *v39 = 0;
            v40 = "Unable to bind sessionId";
LABEL_59:
            _os_log_impl(&_mh_execute_header, v37, v38, v40, v39, 2u);
          }

LABEL_60:

          return 0;
        }
      }

      else
      {
        if ((v18 != 0x6E6F6973726576 || v17 != 0xE700000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_29;
        }

        v62 = *(v2 + v50);
        sub_10017E8D0();
        String.init<A>(_:radix:uppercase:)();
        v17 = String._bridgeToObjectiveC()();

        v34 = *(v57 + 16);
        v35 = [v17 UTF8String];
        if (sqlite3_bind_text(v34, v61, v35, -1, 0))
        {
          if (qword_1002A6770 == -1)
          {
            goto LABEL_41;
          }

          goto LABEL_68;
        }
      }
    }

LABEL_29:
    if (v61 == v12)
    {
      return 1;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  swift_once();
LABEL_44:
  v41 = type metadata accessor for Logger();
  sub_100093DE8(v41, qword_1002AA0E0);

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 67109376;
    *(v44 + 4) = v12;
    *(v44 + 8) = 2048;
    *(v44 + 10) = v58;

    _os_log_impl(&_mh_execute_header, v42, v43, "SQL parameters list (%d) is not the same size as bound values (%ld)", v44, 0x12u);
  }

  else
  {
  }

  return 0;
}

id *sub_100174554(uint64_t a1)
{
  v3 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  v4 = __chkstk_darwin(v3 - 8);
  __chkstk_darwin(v4);
  v7 = *(a1 + 16);
  if (v7)
  {
    v35 = v6;
    v36 = &v31 - v5;
    v32 = OBJC_IVAR____TtCC14dockaccessoryd17AccessoryKeystore24AccessoryPeripheralEntry_version;
    v33 = OBJC_IVAR____TtCC14dockaccessoryd17AccessoryKeystore24AccessoryPeripheralEntry_sessionId;
    v8 = OBJC_IVAR____TtCC14dockaccessoryd17AccessoryKeystore24AccessoryPeripheralEntry_peripheralIdentifier;
    swift_beginAccess();
    v9 = (a1 + 40);
    v10 = _swiftEmptyArrayStorage;
    v11 = &qword_1002A7AF0;
    v38 = v8;
    v34 = v1;
    while (1)
    {
      v13 = *(v9 - 1);
      v12 = *v9;
      v14 = v13 == 0x696669746E656469 && v12 == 0xEA00000000007265;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v21 = v13 == 0x7265687069726570 && v12 == 0xEC00000064496C61;
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        if (v13 == 0x496E6F6973736573 && v12 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v39 = *(v1 + v33);
          sub_1000A44D8();
        }

        else
        {
          if ((v13 != 0x6E6F6973726576 || v12 != 0xE700000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_13;
          }

          v39 = *(v1 + v32);
          sub_10017E8D0();
        }

        v16 = String.init<A>(_:radix:uppercase:)();
        v15 = v30;
LABEL_9:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_100102844(0, v10[2] + 1, 1, v10);
        }

        v18 = v10[2];
        v17 = v10[3];
        v19 = v18 + 1;
        if (v18 < v17 >> 1)
        {
          goto LABEL_12;
        }

        goto LABEL_30;
      }

      v22 = v11;
      v23 = v36;
      sub_1000B5150(v1 + v8, v36, v22, &qword_10023C9D0);
      v24 = type metadata accessor for UUID();
      v37 = *(v24 - 8);
      v25 = *(v37 + 48);
      if (v25(v23, 1, v24) == 1)
      {
        sub_100095C84(v23, v22, &qword_10023C9D0);
        v11 = v22;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_100102844(0, v10[2] + 1, 1, v10);
        }

        v18 = v10[2];
        v26 = v10[3];
        v19 = v18 + 1;
        if (v18 >= v26 >> 1)
        {
          v10 = sub_100102844((v26 > 1), v18 + 1, 1, v10);
        }

        v16 = 0;
        v15 = 0xE000000000000000;
        goto LABEL_12;
      }

      sub_100095C84(v23, v22, &qword_10023C9D0);
      v27 = v35;
      sub_1000B5150(v1 + v38, v35, v22, &qword_10023C9D0);
      result = (v25)(v27, 1, v24);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      v16 = UUID.uuidString.getter();
      v15 = v29;
      (*(v37 + 8))(v27, v24);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_100102844(0, v10[2] + 1, 1, v10);
      }

      v11 = &qword_1002A7AF0;
      v18 = v10[2];
      v17 = v10[3];
      v19 = v18 + 1;
      v1 = v34;
      if (v18 < v17 >> 1)
      {
        goto LABEL_12;
      }

LABEL_30:
      v10 = sub_100102844((v17 > 1), v19, 1, v10);
LABEL_12:
      v10[2] = v19;
      v20 = &v10[2 * v18];
      v20[4] = v16;
      v20[5] = v15;
      v8 = v38;
LABEL_13:
      v9 += 2;
      if (!--v7)
      {
        return v10;
      }
    }

    v16 = *(v1 + 16);
    v15 = *(v1 + 24);

    goto LABEL_9;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100174A90()
{

  sub_100095C84(v0 + OBJC_IVAR____TtCC14dockaccessoryd17AccessoryKeystore24AccessoryPeripheralEntry_peripheralIdentifier, &qword_1002A7AF0, &qword_10023C9D0);

  return swift_deallocClassInstance();
}

uint64_t sub_100174B0C(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = xmmword_10023BF90;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0xE000000000000000;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0xE000000000000000;
  *(v2 + 96) = xmmword_10023BF90;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0xE000000000000000;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 144) = 0;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  *(v2 + 32) = [objc_opt_self() pairingIdentity];
  return v2;
}

uint64_t sub_100174B78(uint64_t a1)
{
  v2 = v1;
  *(v1 + 40) = xmmword_10023BF90;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0xE000000000000000;
  *(v1 + 96) = xmmword_10023BF90;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0xE000000000000000;
  *(v1 + 128) = 0;
  *(v1 + 136) = 0;
  *(v1 + 144) = 0;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {

LABEL_15:

    if (qword_1002A6770 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100093DE8(v22, qword_1002AA0E0);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_20;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "Unable to parse key chain account";
LABEL_19:
    _os_log_impl(&_mh_execute_header, v23, v24, v26, v25, 2u);

LABEL_20:

LABEL_21:
    sub_1000A0D2C(*(v2 + 40), *(v2 + 48));

    sub_1000A0D2C(*(v2 + 96), *(v2 + 104));

    type metadata accessor for AccessoryKeystore.AccessoryKeyItem(v27, v28);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v6 = sub_10016D4D0(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_100095B34(*(a1 + 56) + 32 * v6, v102);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {

LABEL_24:

    if (qword_1002A6770 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100093DE8(v30, qword_1002AA0E0);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_20;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "Unable to parse key chain value";
    goto LABEL_19;
  }

  v11 = sub_10016D4D0(v9, v10);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_100095B34(*(a1 + 56) + 32 * v11, v102);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {

LABEL_30:

    if (qword_1002A6770 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100093DE8(v31, qword_1002AA0E0);
    v23 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v23, v32))
    {
      goto LABEL_35;
    }

    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = "Unable to parse key chain item type";
    v35 = v32;
    v36 = v23;
    v37 = v33;
    v38 = 2;
LABEL_34:
    _os_log_impl(&_mh_execute_header, v36, v35, v34, v37, v38);

LABEL_35:
    sub_1000A0D2C(v100, v101);
    goto LABEL_20;
  }

  v16 = sub_10016D4D0(v14, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_100095B34(*(a1 + 56) + 32 * v16, v102);
  v19 = swift_dynamicCast();
  if ((v19 & 1) == 0)
  {
    goto LABEL_30;
  }

  switch(v100)
  {
    case 1684759156:
      v21 = 2;
      break;
    case 1684762729:
      v21 = 0;
      break;
    case 1684762731:
      v21 = 1;
      break;
    default:

      if (qword_1002A6770 != -1)
      {
        swift_once();
      }

      v59 = type metadata accessor for Logger();
      sub_100093DE8(v59, qword_1002AA0E0);
      v23 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v23, v60))
      {
        goto LABEL_35;
      }

      v61 = swift_slowAlloc();
      *v61 = 134217984;
      *(v61 + 4) = v100;
      v34 = "Unable to parse key chain item accessory key type: %ld";
      v35 = v60;
      v36 = v23;
      v37 = v61;
      v38 = 12;
      goto LABEL_34;
  }

  type metadata accessor for AccessoryKeystore.AccessoryKeyItem(v19, v20);
  inited = swift_initStackObject();

  sub_100174B0C(v100, v101);
  *(inited + 56) = v21;
  if (v21)
  {
    if (v21 == 1)
    {

      v40 = sub_100172AD0(v100, v101, 1);
      if (v40[2])
      {
        v97 = v101;
        v41 = v40[4];
        v42 = v40[5];
        sub_1000A0CD8(v41, v42);

        v43 = *(inited + 40);
        v44 = *(inited + 48);
        *(inited + 40) = v41;
        *(inited + 48) = v42;
        sub_1000A0D2C(v43, v44);
        goto LABEL_53;
      }

      sub_1000A0D2C(v100, v101);

      goto LABEL_79;
    }

    v97 = v101;

LABEL_53:
    v62 = *(inited + 24);
    *(v2 + 16) = *(inited + 16);
    *(v2 + 24) = v62;
    v63 = *(inited + 32);
    *(v2 + 32) = v63;
    v64 = *(inited + 40);
    v65 = *(inited + 48);
    v66 = *(v2 + 40);
    v67 = *(v2 + 48);
    *(v2 + 40) = v64;
    *(v2 + 48) = v65;

    v68 = v63;
    sub_1000A0CD8(v64, v65);
    sub_1000A0D2C(v66, v67);
    *(v2 + 56) = *(inited + 56);
    v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(a1 + 16))
    {
      v71 = sub_10016D4D0(v69, v70);
      v73 = v72;

      v74 = v97;
      if (v73)
      {
        sub_100095B34(*(a1 + 56) + 32 * v71, v102);
        if (swift_dynamicCast())
        {
          *(v2 + 64) = v100;
          *(v2 + 72) = v101;
        }
      }
    }

    else
    {

      v74 = v97;
    }

    v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(a1 + 16))
    {
      v77 = sub_10016D4D0(v75, v76);
      v79 = v78;

      if ((v79 & 1) == 0 || (sub_100095B34(*(a1 + 56) + 32 * v77, v102), (swift_dynamicCast() & 1) == 0))
      {
LABEL_63:
        v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (*(a1 + 16))
        {
          v82 = sub_10016D4D0(v80, v81);
          v84 = v83;

          if (v84)
          {
            sub_100095B34(*(a1 + 56) + 32 * v82, v102);
            if (swift_dynamicCast())
            {
              v85 = *(v2 + 96);
              v86 = *(v2 + 104);
              *(v2 + 96) = v100;
              *(v2 + 104) = v101;
              sub_1000A0CD8(v100, v101);
              sub_1000A0D2C(v85, v86);
              sub_1000A0D2C(v100, v101);
            }
          }
        }

        else
        {
        }

        v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (*(a1 + 16))
        {
          v89 = sub_10016D4D0(v87, v88);
          v91 = v90;

          if (v91)
          {
            sub_100095B34(*(a1 + 56) + 32 * v89, v102);

            if (swift_dynamicCast())
            {
              sub_1001757B8(v100, v101);
            }

            sub_1000A0D2C(v100, v74);
            goto LABEL_77;
          }

          sub_1000A0D2C(v100, v74);
        }

        else
        {
          sub_1000A0D2C(v100, v74);
        }

LABEL_77:

        return v2;
      }

      *(v2 + 80) = v100;
      *(v2 + 88) = v101;
    }

    goto LABEL_63;
  }

  v96 = inited;
  v45 = sub_100172AD0(v100, v101, 0);
  v46 = v45;
  if (!v45[2] || (v47 = v45[4], v48 = v45[5], v98 = v47, v94 = v48, v92 = objc_allocWithZone(HMFPairingKey), sub_1000A0CD8(v47, v48), isa = Data._bridgeToObjectiveC()().super.isa, v50 = [v92 initWithPairingKeyData:isa], isa, result = sub_1000A0D2C(v98, v94), (v95 = v50) == 0))
  {

    sub_1000A0D2C(v100, v101);

LABEL_79:

LABEL_80:

    goto LABEL_21;
  }

  if (v46[2] >= 2)
  {
    v51 = v46[6];
    v52 = v46[7];
    sub_1000A0CD8(v51, v52);

    v99 = objc_allocWithZone(HMFPairingKey);
    v53 = Data._bridgeToObjectiveC()().super.isa;
    v93 = [v99 initWithPairingKeyData:v53];

    sub_1000A0D2C(v51, v52);
    if (!v93)
    {

      sub_1000A0D2C(v100, v101);

      goto LABEL_80;
    }

    v97 = v101;
    v54 = objc_allocWithZone(HAPPairingIdentity);
    v55 = v93;
    v56 = String._bridgeToObjectiveC()();

    v57 = [v54 initWithIdentifier:v56 publicKey:v95 privateKey:v55];

    inited = v96;
    v58 = *(v96 + 32);
    *(v96 + 32) = v57;

    goto LABEL_53;
  }

  __break(1u);
  return result;
}

uint64_t sub_10017565C()
{
  v13 = *(v0 + 112);

  v1._countAndFlagsBits = 43;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  sub_100095274(&unk_1002A73A0, &qword_10023C670);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10023C170;
  v3 = *(v0 + 128);
  *(v2 + 56) = &type metadata for UInt16;
  *(v2 + 64) = &protocol witness table for UInt16;
  *(v2 + 32) = v3;
  v4 = String.init(format:_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  result = v13;
  v9 = *(v0 + 144);
  if (v9)
  {
    v10 = *(v0 + 136);

    v11._countAndFlagsBits = 43;
    v11._object = 0xE100000000000000;
    String.append(_:)(v11);

    v12._countAndFlagsBits = v10;
    v12._object = v9;
    String.append(_:)(v12);

    return v13;
  }

  return result;
}

uint64_t sub_1001757B8(uint64_t a1, unint64_t a2)
{
  v5 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v68 - v10;
  __chkstk_darwin(v9);
  v13 = &v68 - v12;
  v14 = type metadata accessor for UUID();
  v15 = __chkstk_darwin(v14);
  v16 = __chkstk_darwin(v15);
  v18 = &v68 - v17;
  v19 = __chkstk_darwin(v16);
  v23 = &v68 - v22;
  v24 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v24 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {
    return 0;
  }

  v69 = v21;
  v70 = v2;
  v71 = v19;
  v72 = v20;
  v73[0] = 43;
  v73[1] = 0xE100000000000000;
  __chkstk_darwin(v19);
  *(&v68 - 2) = v73;

  v26 = sub_10017B660(0x7FFFFFFFFFFFFFFFLL, 1, sub_10017E860, (&v68 - 4), a1, a2, v25);
  v27 = v26[2];
  if (!v27)
  {
    goto LABEL_16;
  }

  if (v27 == 2)
  {

    v35 = Substring.distance(from:to:)();

    if (v35 == 36)
    {

      static String._fromSubstring(_:)();

      UUID.init(uuidString:)();

      v36 = v71;
      v37 = v72;
      if ((*(v72 + 48))(v11, 1, v71) == 1)
      {

        sub_100095C84(v11, &qword_1002A7AF0, &qword_10023C9D0);
        return 0;
      }

      (*(v37 + 32))(v18, v11, v36);
      v45 = UUID.uuidString.getter();
      v46 = v70;
      *(v70 + 112) = v45;
      *(v46 + 120) = v47;

      if (v26[2] >= 2)
      {
        v48 = v26[8];
        v49 = v26[9];
        v51 = v26[10];
        v50 = v26[11];

        if ((v49 ^ v48) >> 14)
        {
          v52 = sub_10017CB68(v48, v49, v51, v50, 16);
          if ((v52 & 0x1000000) != 0)
          {
            v52 = sub_10017C000(v48, v49, v51, v50, 16);
          }

          (*(v72 + 8))(v18, v71);

          if ((v52 & 0x10000) == 0)
          {
            *(v46 + 128) = v52;
            return 1;
          }

          return 0;
        }

        goto LABEL_43;
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      (*(v72 + 8))(v18, v71);
    }

LABEL_16:

    return 0;
  }

  if (v27 != 1)
  {

    v38 = Substring.distance(from:to:)();

    if (v38 == 36)
    {

      static String._fromSubstring(_:)();
      v18 = v39;

      UUID.init(uuidString:)();

      v41 = v71;
      v40 = v72;
      if ((*(v72 + 48))(v8, 1, v71) == 1)
      {

        sub_100095C84(v8, &qword_1002A7AF0, &qword_10023C9D0);
        return 0;
      }

      (*(v40 + 32))(v69, v8, v41);
      v57 = UUID.uuidString.getter();
      v58 = v70;
      *(v70 + 112) = v57;
      *(v58 + 120) = v59;

      if (v26[2] >= 2)
      {
        v60 = v26[8];
        v61 = v26[9];
        if ((v61 ^ v60) >= 0x4000)
        {
          v63 = v26[10];
          v62 = v26[11];
          result = sub_10017CB68(v26[8], v26[9], v63, v62, 16);
          if ((result & 0x1000000) != 0)
          {

            v64 = sub_10017C000(v60, v61, v63, v62, 16);

            result = v64;
            if ((v64 & 0x10000) != 0)
            {
              goto LABEL_35;
            }
          }

          else if ((result & 0x10000) != 0)
          {
            goto LABEL_35;
          }

          *(v58 + 128) = result;
          if (v26[2] < 3)
          {
            __break(1u);
            return result;
          }

          v65 = static String._fromSubstring(_:)();
          v67 = v66;

          (*(v72 + 8))(v69, v71);
          *(v58 + 136) = v65;
          *(v58 + 144) = v67;
LABEL_39:

          return 1;
        }

LABEL_35:

        (*(v72 + 8))(v69, v41);
        return 0;
      }

      goto LABEL_42;
    }

    goto LABEL_16;
  }

  v28 = Substring.distance(from:to:)();

  v29 = v26[4];
  v30 = v26[5];
  v32 = v26[6];
  v31 = v26[7];

  if (v28 != 36)
  {
    if ((v30 ^ v29) >> 14)
    {
      v43 = sub_10017CB68(v29, v30, v32, v31, 16);
      if ((v43 & 0x1000000) != 0)
      {
        v43 = sub_10017C000(v29, v30, v32, v31, 16);
      }

      v44 = v43;

      if ((v44 & 0x10000) == 0)
      {
        *(v70 + 128) = v44;
        return 1;
      }

      return 0;
    }

    goto LABEL_16;
  }

  static String._fromSubstring(_:)();

  UUID.init(uuidString:)();

  v33 = v71;
  v34 = v72;
  if ((*(v72 + 48))(v13, 1, v71) != 1)
  {
    (*(v34 + 32))(v23, v13, v33);
    v53 = v70;
    v54 = UUID.uuidString.getter();
    v56 = v55;
    (*(v34 + 8))(v23, v33);
    *(v53 + 112) = v54;
    *(v53 + 120) = v56;
    goto LABEL_39;
  }

  sub_100095C84(v13, &qword_1002A7AF0, &qword_10023C9D0);
  return 0;
}

uint64_t sub_100175FA8()
{

  sub_1000A0D2C(*(v0 + 40), *(v0 + 48));

  sub_1000A0D2C(*(v0 + 96), *(v0 + 104));

  return v0;
}

uint64_t sub_100176000()
{
  sub_100175FA8();

  return swift_deallocClassInstance();
}

void *sub_100176034()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002A6770 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100093DE8(v6, qword_1002AA0E0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Creating new controller key-pair!", v9, 2u);
  }

  UUID.init()();
  v10 = UUID.uuidString.getter();
  v12 = v11;
  v13 = (*(v3 + 8))(v5, v2);
  type metadata accessor for AccessoryKeystore.AccessoryKeyItem(v13, v14);
  v15 = swift_allocObject();
  sub_100174B0C(v10, v12);
  v15[8] = 0xD000000000000018;
  v15[9] = 0x8000000100233E70;

  v15[10] = 0xD00000000000002FLL;
  v15[11] = 0x8000000100233E90;

  if (sub_100177148(v15, 0, 0))
  {
    v16 = v15[3];
    v17 = (v1 + OBJC_IVAR____TtC14dockaccessoryd17AccessoryKeystore__activeController);
    *v17 = v15[2];
    v17[1] = v16;
  }

  else
  {
    sub_1000B346C();
    swift_allocError();
    *v18 = 3;
    swift_willThrow();
  }

  return v15;
}

id *sub_1001762B8(const void *a1, const void *a2, char a3)
{
  sub_100095274(&qword_1002AA4D8, &unk_10023FAE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10023E990;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v8;
  type metadata accessor for CFString(0);
  v10 = v9;
  *(inited + 72) = v9;
  *(inited + 48) = kSecClassGenericPassword;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v11;
  v12 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd17AccessoryKeystore_keyGroup);
  v13 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd17AccessoryKeystore_keyGroup + 8);
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v12;
  *(inited + 104) = v13;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v14;
  v15 = *&aIpkd[8 * a3];
  v16 = objc_allocWithZone(NSNumber);
  v17 = kSecClassGenericPassword;

  v18 = [v16 initWithInteger:v15];
  *(inited + 168) = sub_10017E95C(0, v19);
  *(inited + 144) = v18;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v20;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 192) = 1;
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v21;
  *(inited + 264) = &type metadata for Bool;
  *(inited + 240) = 1;
  *(inited + 272) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 280) = v22;
  *(inited + 312) = &type metadata for Bool;
  *(inited + 288) = 1;
  *(inited + 320) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 328) = v23;
  *(inited + 360) = v10;
  *(inited + 336) = kSecMatchLimitAll;
  v24 = kSecMatchLimitAll;
  v25 = sub_1001F2468(inited);
  swift_setDeallocating();
  sub_100095274(&qword_1002AA4E0, &qword_10023EE00);
  swift_arrayDestroy();
  if (a2)
  {
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;
    result[3] = &type metadata for String;
    result[0] = a1;
    result[1] = a2;
    sub_1000FEA30(result, v57);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = v25;
    sub_1001EB278(v57, v26, v28, isUniquelyReferenced_nonNull_native);
  }

  result[0] = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v31 = SecItemCopyMatching(isa, result);

  v32 = _swiftEmptyArrayStorage;
  if (!v31)
  {
    if (!result[0])
    {
      goto LABEL_20;
    }

    *&v57[0] = result[0];
    swift_unknownObjectRetain();
    sub_100095274(&qword_1002A9F40, &qword_10023EB60);
    if (swift_dynamicCast())
    {
      if (qword_1002A6770 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      sub_100093DE8(v33, qword_1002AA0E0);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "Found single keychain result for query.", v36, 2u);
      }

      type metadata accessor for AccessoryKeystore.AccessoryKeyItem(v37, v38);
      swift_allocObject();
      v39 = sub_100174B78(v56);
      if (v39)
      {
        v40 = v39;
        sub_100095274(&qword_1002A7390, &qword_10023BEF0);
        v32 = swift_allocObject();
        *(v32 + 1) = xmmword_10023BDA0;
        v32[4] = v40;
        goto LABEL_26;
      }

LABEL_25:
      v32 = _swiftEmptyArrayStorage;
      goto LABEL_26;
    }

    if (!result[0] || (*&v57[0] = result[0], swift_unknownObjectRetain(), sub_100095274(&qword_1002AA530, &qword_10023EE20), (swift_dynamicCast() & 1) == 0))
    {
LABEL_20:
      if (qword_1002A6770 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_100093DE8(v46, qword_1002AA0E0);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&_mh_execute_header, v47, v48, "Could not find any keychain results for query.", v49, 2u);
      }

      goto LABEL_25;
    }

    if (qword_1002A6770 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100093DE8(v41, qword_1002AA0E0);

    v42 = Logger.logObject.getter();
    LOBYTE(v43) = static os_log_type_t.info.getter();
    v44 = v56 >> 62;
    if (!os_log_type_enabled(v42, v43))
    {

      goto LABEL_28;
    }

    v25 = swift_slowAlloc();
    *v25 = 134217984;
    if (v44)
    {
      goto LABEL_47;
    }

    for (i = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      *(v25 + 4) = i;

      _os_log_impl(&_mh_execute_header, v42, v43, "Found keychain results for query: %ld", v25, 0xCu);

LABEL_28:
      *&v57[0] = _swiftEmptyArrayStorage;
      if (v44)
      {
        v43 = _CocoaArrayWrapper.endIndex.getter();
        if (!v43)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v43 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v43)
        {
          goto LABEL_45;
        }
      }

      if (v43 >= 1)
      {
        break;
      }

      __break(1u);
LABEL_47:
      ;
    }

    v51 = 0;
    v54 = v43;
    do
    {
      if ((v56 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        swift_unknownObjectRetain();
      }

      swift_unknownObjectRetain();
      sub_100095274(&qword_1002A9F40, &qword_10023EB60);
      v52 = swift_dynamicCast();
      if (v52)
      {
        type metadata accessor for AccessoryKeystore.AccessoryKeyItem(v52, v53);
        swift_allocObject();
        if (sub_100174B78(v55))
        {

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*&v57[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v57[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          swift_unknownObjectRelease();
          v32 = *&v57[0];
        }

        else
        {
          swift_unknownObjectRelease();
        }

        v43 = v54;
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v51;
    }

    while (v43 != v51);
LABEL_45:
  }

LABEL_26:
  swift_unknownObjectRelease();
  return v32;
}

uint64_t sub_100176ABC(uint64_t a1, char a2)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);

  v7 = sub_1001762B8(v5, v6, a2 & 1);

  if (!(v7 >> 62))
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_47:

    return 0;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_47;
  }

LABEL_3:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_51:
      swift_once();
LABEL_30:
      v34 = type metadata accessor for Logger();
      sub_100093DE8(v34, qword_1002AA0E0);

      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v47[0] = swift_slowAlloc();
        *v37 = 136315650;
        if (a2)
        {
          v38 = 1919247728;
        }

        else
        {
          v38 = 0x676E6972696170;
        }

        if (a2)
        {
          v39 = 0xE400000000000000;
        }

        else
        {
          v39 = 0xE700000000000000;
        }

        v40 = sub_1000952D4(v38, v39, v47);

        *(v37 + 4) = v40;
        *(v37 + 12) = 2080;
        v42 = *(a1 + 16);
        v41 = *(a1 + 24);

        v43 = sub_1000952D4(v42, v41, v47);

        *(v37 + 14) = v43;
        *(v37 + 22) = 2080;
        if (v6)
        {
          v44 = v2;
        }

        else
        {
          v44 = 0x206E776F6E6B6E55;
        }

        if (v6)
        {
          v45 = v6;
        }

        else
        {
          v45 = 0xED0000726F727245;
        }

        v46 = sub_1000952D4(v44, v45, v47);

        *(v37 + 24) = v46;
        _os_log_impl(&_mh_execute_header, v35, v36, "Unable to update %s keychain item for identfier %s: %s", v37, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
      }

      return 0;
    }

    v8 = v7[4];
  }

  v9 = *(a1 + 16) == v8[2] && *(a1 + 24) == v8[3];
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

    return 0;
  }

  sub_100095274(&qword_1002AA4D8, &unk_10023FAE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10023C170;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v11;
  v12 = v8[12];
  v13 = v8[13];
  *(inited + 72) = &type metadata for Data;
  *(inited + 48) = v12;
  *(inited + 56) = v13;
  sub_1000A0CD8(v12, v13);
  sub_1001F2468(inited);
  swift_setDeallocating();
  sub_100095C84(inited + 32, &qword_1002AA4E0, &qword_10023EE00);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_10023C170;
  *(v14 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v14 + 40) = v15;
  v16 = sub_10017D21C(a1, a2 & 1);
  *(v14 + 72) = &type metadata for Data;
  *(v14 + 48) = v16;
  *(v14 + 56) = v17;
  sub_1001F2468(v14);
  swift_setDeallocating();
  sub_100095C84(v14 + 32, &qword_1002AA4E0, &qword_10023EE00);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v19 = Dictionary._bridgeToObjectiveC()().super.isa;

  v20 = SecItemUpdate(isa, v19);

  if (v20)
  {
    v21 = SecCopyErrorMessageString(v20, 0);
    if (v21)
    {
      v22 = v21;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v47[0] = 0;
        v47[1] = 0;
        static String._conditionallyBridgeFromObjectiveC(_:result:)();
      }
    }

    v2 = 0;
    v6 = 0;
    if (qword_1002A6770 == -1)
    {
      goto LABEL_30;
    }

    goto LABEL_51;
  }

  if (qword_1002A6770 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100093DE8(v23, qword_1002AA0E0);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v47[0] = swift_slowAlloc();
    *v26 = 136315394;
    if (*(a1 + 56))
    {
      v27 = 1919247728;
    }

    else
    {
      v27 = 0x676E6972696170;
    }

    if (*(a1 + 56))
    {
      v28 = 0xE400000000000000;
    }

    else
    {
      v28 = 0xE700000000000000;
    }

    v29 = sub_1000952D4(v27, v28, v47);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2080;
    v31 = *(a1 + 16);
    v30 = *(a1 + 24);

    v32 = sub_1000952D4(v31, v30, v47);

    *(v26 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v24, v25, "Successfully updated %s keychain item for identfier %s", v26, 0x16u);
    swift_arrayDestroy();
  }

  return 1;
}

uint64_t sub_100177148(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a2;
  sub_100095274(&qword_1002AA4D8, &unk_10023FAE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10023BFA0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v7;
  type metadata accessor for CFString(0);
  v9 = v8;
  *(inited + 72) = v8;
  *(inited + 48) = kSecClassGenericPassword;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v10;
  v11 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd17AccessoryKeystore_keyGroup);
  v12 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd17AccessoryKeystore_keyGroup + 8);
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v11;
  *(inited + 104) = v12;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v13;
  *(inited + 168) = v9;
  *(inited + 144) = kSecAttrAccessibleAfterFirstUnlock;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v14;
  v15 = *&aIpkd[8 * *(a1 + 56)];
  v16 = objc_allocWithZone(NSNumber);
  v17 = kSecClassGenericPassword;

  v18 = kSecAttrAccessibleAfterFirstUnlock;
  v19 = [v16 initWithInteger:v15];
  *(inited + 216) = sub_10017E95C(0, v20);
  *(inited + 192) = v19;
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v21;
  v22 = *(a1 + 64);
  v23 = *(a1 + 72);
  *(inited + 264) = &type metadata for String;
  *(inited + 240) = v22;
  *(inited + 248) = v23;
  *(inited + 272) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 280) = v24;
  v25 = *(a1 + 80);
  v26 = *(a1 + 88);
  *(inited + 312) = &type metadata for String;
  *(inited + 288) = v25;
  *(inited + 296) = v26;
  *(inited + 320) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 328) = v27;
  v28 = *(a1 + 16);
  v29 = *(a1 + 24);
  *(inited + 360) = &type metadata for String;
  *(inited + 336) = v28;
  *(inited + 344) = v29;
  *(inited + 368) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 376) = v30;

  v31 = sub_10017D21C(a1, v4);
  *(inited + 408) = &type metadata for Data;
  *(inited + 384) = v31;
  *(inited + 392) = v32;
  sub_1001F2468(inited);
  swift_setDeallocating();
  sub_100095274(&qword_1002AA4E0, &qword_10023EE00);
  swift_arrayDestroy();
  if (v4)
  {
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;
    v72 = &type metadata for String;
    *&v71 = sub_10017565C();
    *(&v71 + 1) = v36;
    sub_1000FEA30(&v71, v70);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1001EB278(v70, v33, v35, isUniquelyReferenced_nonNull_native);
  }

  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v39 = SecItemAdd(isa, 0);

  if (v39)
  {
    if ((a3 & 1) != 0 && (v39 == -25296 || v39 == -25299))
    {
      v40 = sub_100176ABC(a1, v4 & 1);
      return v40 & 1;
    }

    v41 = SecCopyErrorMessageString(v39, 0);
    if (v41)
    {
      v42 = v41;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v71 = 0uLL;
        static String._conditionallyBridgeFromObjectiveC(_:result:)();

        v43 = *(&v71 + 1);
        if (*(&v71 + 1))
        {
          v44 = v71;
LABEL_19:
          if (qword_1002A6770 != -1)
          {
            swift_once();
          }

          v51 = type metadata accessor for Logger();
          sub_100093DE8(v51, qword_1002AA0E0);

          v52 = Logger.logObject.getter();
          v53 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            *&v71 = swift_slowAlloc();
            *v54 = 136315650;
            if (*(a1 + 56))
            {
              v55 = 0xE400000000000000;
              v56 = 1919247728;
            }

            else
            {
              v56 = 0x676E6972696170;
              v55 = 0xE700000000000000;
            }

            v57 = sub_1000952D4(v56, v55, &v71);

            *(v54 + 4) = v57;
            *(v54 + 12) = 2080;
            v59 = *(a1 + 16);
            v58 = *(a1 + 24);

            v60 = sub_1000952D4(v59, v58, &v71);

            *(v54 + 14) = v60;
            *(v54 + 22) = 2080;
            if (v43)
            {
              v61 = v44;
            }

            else
            {
              v61 = 0x206E776F6E6B6E55;
            }

            if (v43)
            {
              v62 = v43;
            }

            else
            {
              v62 = 0xED0000726F727245;
            }

            v63 = sub_1000952D4(v61, v62, &v71);

            *(v54 + 24) = v63;
            _os_log_impl(&_mh_execute_header, v52, v53, "Unable to add %s keychain item for identfier %s: %s", v54, 0x20u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v40 = 0;
          return v40 & 1;
        }
      }

      else
      {
      }
    }

    v44 = 0;
    v43 = 0;
    goto LABEL_19;
  }

  if (qword_1002A6770 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  sub_100093DE8(v45, qword_1002AA0E0);

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *&v71 = swift_slowAlloc();
    *v48 = 136315394;
    if (*(a1 + 56))
    {
      v49 = 0xE400000000000000;
      v50 = 1919247728;
    }

    else
    {
      v50 = 0x676E6972696170;
      v49 = 0xE700000000000000;
    }

    v64 = sub_1000952D4(v50, v49, &v71);

    *(v48 + 4) = v64;
    *(v48 + 12) = 2080;
    v66 = *(a1 + 16);
    v65 = *(a1 + 24);

    v67 = sub_1000952D4(v66, v65, &v71);

    *(v48 + 14) = v67;
    _os_log_impl(&_mh_execute_header, v46, v47, "Successfully added %s keychain item for identfier %s", v48, 0x16u);
    swift_arrayDestroy();
  }

  v40 = 1;
  return v40 & 1;
}

uint64_t sub_100177864(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC14dockaccessoryd17AccessoryKeystore_peripherals;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6 >> 62)
  {
    goto LABEL_41;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v7)
  {
    v8 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_17:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          v7 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }

        v9 = *(v6 + 8 * v8 + 32);

        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_17;
        }
      }

      v11 = *(v9 + 16) == a1 && *(v9 + 24) == a2;
      if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return v9;
      }

      ++v8;
    }

    while (v10 != v7);
  }

  v12 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd17AccessoryKeystore_table);
  v13 = qword_1002A66F0;

  if (v13 != -1)
  {
    swift_once();
  }

  swift_weakInit();
  v19[0] = v12;
  swift_weakAssign();
  v14 = sub_100171C2C();
  v2 = v14;
  if (v14 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (v6)
    {
      goto LABEL_24;
    }

LABEL_43:
    sub_100095C84(v19, &unk_1002AA510, &unk_10023EE08);

    return 0;
  }

  v6 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_43;
  }

LABEL_24:
  v15 = 0;
  while ((v2 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_37;
    }

LABEL_28:
    v17 = *(v9 + 16) == a1 && *(v9 + 24) == a2;
    if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_38;
    }

    ++v15;
    if (v16 == v6)
    {
      goto LABEL_43;
    }
  }

  if (v15 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_40;
  }

  v9 = *(v2 + 8 * v15 + 32);

  v16 = v15 + 1;
  if (!__OFADD__(v15, 1))
  {
    goto LABEL_28;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  sub_100095C84(v19, &unk_1002AA510, &unk_10023EE08);

  return v9;
}

void sub_100177B54(const void *a1, const void *a2, char a3)
{
  v7 = sub_1001762B8(a1, a2, 1);
  v8 = v7;
  v29 = a2;
  if (v7 >> 62)
  {
LABEL_28:
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
LABEL_3:
      v10 = 0;
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_26;
          }
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v11 = *(v8 + 8 * v10 + 32);

          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
            goto LABEL_28;
          }
        }

        v3 = *(v11 + 112);
        v4 = *(v11 + 120);
        v13 = HIBYTE(v4) & 0xF;
        if ((v4 & 0x2000000000000000) == 0)
        {
          v13 = v3 & 0xFFFFFFFFFFFFLL;
        }

        if (v13)
        {
          swift_bridgeObjectRetain_n();
          v14 = sub_1001762B8(v3, v4, 0);

          if (v14 >> 62)
          {
            if (_CocoaArrayWrapper.endIndex.getter())
            {
LABEL_19:
              v30 = v14;

              if (qword_1002A6770 != -1)
              {
                goto LABEL_45;
              }

              goto LABEL_20;
            }
          }

          else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }
        }

        else
        {
        }

        ++v10;
      }

      while (v12 != v9);
    }
  }

  if (qword_1002A6770 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100093DE8(v20, qword_1002AA0E0);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v31 = v3;
    *v23 = 136315138;
    *(v23 + 4) = sub_1000952D4(a1, v29, &v31);
    _os_log_impl(&_mh_execute_header, v21, v22, "Unable to find controller associated with accessory %s.  Returning default controller key-pair.", v23, 0xCu);
    sub_100095808(v3);
  }

  v24 = sub_1001762B8(0, 0, 0);
  if (v24 >> 62)
  {
    v25 = v24;
    v26 = _CocoaArrayWrapper.endIndex.getter();
    v24 = v25;
    if (v26)
    {
      goto LABEL_35;
    }

LABEL_40:

    if (a3)
    {
      sub_100176034();
    }

    else
    {
      sub_1000B346C();
      swift_allocError();
      *v27 = 1;
      swift_willThrow();
    }

    return;
  }

  if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_40;
  }

LABEL_35:
  if ((v24 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_38;
  }

  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_38;
  }

  __break(1u);
LABEL_45:
  swift_once();
LABEL_20:
  v15 = type metadata accessor for Logger();
  sub_100093DE8(v15, qword_1002AA0E0);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v18 = 136315394;
    v19 = sub_1000952D4(v3, v4, &v31);

    *(v18 + 4) = v19;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_1000952D4(a1, v29, &v31);
    _os_log_impl(&_mh_execute_header, v16, v17, "Found controller %s for given accessory identifier: %s", v18, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  if ((v30 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_38;
  }

  if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_38:

    return;
  }

  __break(1u);
}

uint64_t sub_1001780D0(const void *a1, const void *a2)
{
  v2 = sub_1001762B8(a1, a2, 1);
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_18;
  }

  result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    while (1)
    {
      v31 = result;
      if (result < 1)
      {
        break;
      }

      v36[8] = kSecValuePersistentRef;
      v32 = v3 & 0xC000000000000001;
      sub_100095274(&qword_1002A88B0, &qword_10023D3A0);
      v5 = 0;
      v6 = v31;
      while (1)
      {
        if (v32)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v7 = *(v3 + 8 * v5 + 32);
        }

        if (qword_1002A6770 != -1)
        {
          swift_once();
        }

        v8 = type metadata accessor for Logger();
        sub_100093DE8(v8, qword_1002AA0E0);

        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          v33 = v12;
          *v11 = 136315138;
          v13 = v7[2];
          v14 = v7[3];

          v15 = v3;
          v16 = sub_1000952D4(v13, v14, &v33);

          *(v11 + 4) = v16;
          v3 = v15;
          v6 = v31;
          _os_log_impl(&_mh_execute_header, v9, v10, "Removing accessory key item for %s", v11, 0xCu);
          sub_100095808(v12);
        }

        v36[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36[1] = v17;
        v18 = v7[12];
        v19 = v7[13];
        v36[5] = &type metadata for Data;
        v36[2] = v18;
        v36[3] = v19;
        v20 = static _DictionaryStorage.allocate(capacity:)();
        sub_1000A0CD8(v18, v19);
        sub_1000B5150(v36, &v33, &qword_1002AA4E0, &qword_10023EE00);
        v21 = v33;
        v22 = v34;
        v23 = sub_10016D4D0(v33, v34);
        if (v24)
        {
          break;
        }

        v20[(v23 >> 6) + 8] |= 1 << v23;
        v25 = (v20[6] + 16 * v23);
        *v25 = v21;
        v25[1] = v22;
        sub_1000FEA30(&v35, (v20[7] + 32 * v23));
        v26 = v20[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_17;
        }

        ++v5;
        v20[2] = v28;
        sub_100095C84(v36, &qword_1002AA4E0, &qword_10023EE00);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        SecItemDelete(isa);

        if (v6 == v5)
        {
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      result = _CocoaArrayWrapper.endIndex.getter();
      if (!result)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    sub_1000B346C();
    swift_allocError();
    *v30 = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100178478(const void *a1, const void *a2)
{
  v2 = sub_1001762B8(a1, a2, 0);
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_18;
  }

  result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
  }

  while (1)
  {
    v30 = result;
    if (result < 1)
    {
      break;
    }

    v35[8] = kSecValuePersistentRef;
    v31 = v3 & 0xC000000000000001;
    sub_100095274(&qword_1002A88B0, &qword_10023D3A0);
    v5 = 0;
    v6 = v30;
    while (1)
    {
      if (v31)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v3 + 8 * v5 + 32);
      }

      if (qword_1002A6770 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_100093DE8(v8, qword_1002AA0E0);

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v32 = v12;
        *v11 = 136315138;
        v13 = v7[2];
        v14 = v7[3];

        v15 = v3;
        v16 = sub_1000952D4(v13, v14, &v32);

        *(v11 + 4) = v16;
        v3 = v15;
        v6 = v30;
        _os_log_impl(&_mh_execute_header, v9, v10, "Removing controller key item for %s", v11, 0xCu);
        sub_100095808(v12);
      }

      v35[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35[1] = v17;
      v18 = v7[12];
      v19 = v7[13];
      v35[5] = &type metadata for Data;
      v35[2] = v18;
      v35[3] = v19;
      v20 = static _DictionaryStorage.allocate(capacity:)();
      sub_1000A0CD8(v18, v19);
      sub_1000B5150(v35, &v32, &qword_1002AA4E0, &qword_10023EE00);
      v21 = v32;
      v22 = v33;
      v23 = sub_10016D4D0(v32, v33);
      if (v24)
      {
        break;
      }

      v20[(v23 >> 6) + 8] |= 1 << v23;
      v25 = (v20[6] + 16 * v23);
      *v25 = v21;
      v25[1] = v22;
      sub_1000FEA30(&v34, (v20[7] + 32 * v23));
      v26 = v20[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_17;
      }

      ++v5;
      v20[2] = v28;
      sub_100095C84(v35, &qword_1002AA4E0, &qword_10023EE00);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      SecItemDelete(isa);

      if (v6 == v5)
      {
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
    }
  }

  __break(1u);
  return result;
}

id sub_1001787F0(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC14dockaccessoryd17AccessoryKeystore_keyGroup];
  *v3 = 0xD000000000000020;
  *(v3 + 1) = 0x800000010022E6D0;
  v4 = OBJC_IVAR____TtC14dockaccessoryd17AccessoryKeystore_table;
  type metadata accessor for DBTable(0, a2);
  v5 = swift_allocObject();
  *(v5 + 16) = 0x7265687069726550;
  *(v5 + 24) = 0xEB00000000736C61;
  *&v2[v4] = v5;
  *&v2[OBJC_IVAR____TtC14dockaccessoryd17AccessoryKeystore_peripherals] = _swiftEmptyArrayStorage;
  v6 = &v2[OBJC_IVAR____TtC14dockaccessoryd17AccessoryKeystore__activeController];
  *v6 = 0;
  *(v6 + 1) = 0xE000000000000000;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for AccessoryKeystore(v5, v7);
  return objc_msgSendSuper2(&v9, "init");
}

id sub_1001788E0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AccessoryKeystore(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for AccessoryKeystore.AccessoryPeripheralEntry(uint64_t a1)
{
  result = qword_1002AA1C8;
  if (!qword_1002AA1C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100178A00(uint64_t a1)
{
  sub_100178AAC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100178AAC(uint64_t a1)
{
  if (!qword_1002AA1D8)
  {
    type metadata accessor for UUID();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1002AA1D8);
    }
  }
}

unint64_t sub_100178B28(uint64_t a1, uint64_t a2)
{
  if (qword_1002A6770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100093DE8(v2, qword_1002AA0E0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Attempting to fetch local keychain identity...", v5, 2u);
  }

  result = sub_1001762B8(0, 0, 0);
  if (result >> 62)
  {
    v9 = result;
    v10 = _CocoaArrayWrapper.endIndex.getter();
    result = v9;
    if (v10)
    {
      goto LABEL_7;
    }

LABEL_12:

    sub_1000B346C();
    swift_allocError();
    *v11 = 1;
    return swift_willThrow();
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((result & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_10;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(result + 32);

LABEL_10:

    v8 = *(v7 + 32);

    return v8;
  }

  __break(1u);
  return result;
}

void sub_100178D10()
{
  v2 = v0;
  v3 = sub_1001762B8(0, 0, 0);
  v4 = v3;
  if (v3 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }

LABEL_13:

    v11 = sub_100176034();
    if (!v1)
    {
      v9 = v11;
      goto LABEL_11;
    }

    return;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

LABEL_3:
  if (qword_1002A6770 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100093DE8(v5, qword_1002AA0E0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Found existing controller keychain item.", v8, 2u);
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_10;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v4 + 32);

LABEL_10:

    v10 = String._bridgeToObjectiveC()();

    [v2 updateActiveControllerPairingIdentifier:v10];

LABEL_11:
    *(v9 + 32);

    return;
  }

  __break(1u);
}

id sub_100178F0C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a1;
  v6 = a4();

  return v6;
}

void sub_10017905C(void *a1, void *a2, void *a3, char a4, const void *a5, const void *a6)
{
  if (a6)
  {
    sub_100177B54(a5, a6, a4 & 1);
    if (!v6)
    {
      v11 = v10;
      if (a3)
      {

        v12 = String._bridgeToObjectiveC()();

        v13 = v12;
        *a3 = v12;
      }

      if (a1)
      {
        v14 = [*(v11 + 32) publicKey];
        v15 = [v14 data];
        if (!v15)
        {
          __break(1u);
          goto LABEL_17;
        }

        v16 = v15;

        v17 = v16;
        *a1 = v16;
      }

      if (!a2)
      {
        goto LABEL_13;
      }

      v18 = [*(v11 + 32) privateKey];
      if (!v18)
      {
        goto LABEL_13;
      }

      v19 = [*(v11 + 32) privateKey];
      if (v19)
      {
        v20 = v19;
        v21 = [v19 data];
        if (v21)
        {
          v22 = v21;

          v23 = v22;
          *a2 = v22;
LABEL_13:

          return;
        }

        goto LABEL_18;
      }

LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
    }
  }

  else
  {
    sub_1000B346C();
    swift_allocError();
    *v24 = 2;
    swift_willThrow();
  }
}

uint64_t sub_1001796F4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v5 = v4;
    type metadata accessor for AccessoryKeystore.AccessoryKeyItem(a1, a2);
    inited = swift_initStackObject();

    sub_100174B0C(a3, a4);
    *(inited + 56) = 1;
    *(inited + 64) = 0xD000000000000018;
    *(inited + 72) = 0x8000000100233E10;

    *(inited + 80) = 0xD000000000000039;
    *(inited + 88) = 0x8000000100233E30;

    if (a2 >> 60 == 15)
    {
      __break(1u);
    }

    else
    {
      v12 = *(inited + 40);
      v13 = *(inited + 48);
      *(inited + 40) = a1;
      *(inited + 48) = a2;
      sub_1000A0CD8(a1, a2);
      sub_1000A0D2C(v12, v13);
      v14 = *(v5 + OBJC_IVAR____TtC14dockaccessoryd17AccessoryKeystore__activeController + 8);
      *(inited + 112) = *(v5 + OBJC_IVAR____TtC14dockaccessoryd17AccessoryKeystore__activeController);
      *(inited + 120) = v14;

      *(inited + 128) = 0;
      sub_100177148(inited, 1, 1);
    }
  }

  else
  {
    sub_1000B346C();
    swift_allocError();
    *v15 = 2;
    return swift_willThrow();
  }

  return result;
}