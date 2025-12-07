uint64_t sub_100803C34()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[6];
    v4 = v0[3];
    sub_101123D4C(0, v2, 0);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v15 = *(v4 + 72);
    do
    {
      v6 = v0[7];
      v8 = v0[4];
      v7 = v0[5];
      sub_100833680(v5, v8, type metadata accessor for BeaconObservation);
      (*(v3 + 16))(v6, v8, v7);
      sub_1008333E4(v8, type metadata accessor for BeaconObservation);
      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_101123D4C((v9 > 1), v10 + 1, 1);
      }

      v11 = v0[7];
      v12 = v0[5];
      _swiftEmptyArrayStorage[2] = v10 + 1;
      (*(v3 + 32))(_swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v11, v12);
      v5 += v15;
      --v2;
    }

    while (v2);
  }

  v0[8] = sub_10000954C(_swiftEmptyArrayStorage);

  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_100803E2C;

  return daemon.getter();
}

uint64_t sub_100803E2C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 80) = a1;

  v3 = swift_task_alloc();
  *(v2 + 88) = v3;
  v4 = type metadata accessor for Daemon();
  updated = type metadata accessor for SimpleBeaconUpdateService(0);
  v6 = sub_1008345FC(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1008345FC(&unk_1016B10F0, type metadata accessor for SimpleBeaconUpdateService, &unk_1013CAC90);
  *v3 = v9;
  v3[1] = sub_100804008;

  return ActorServiceDaemon.getService<A>()(v4, updated, v6, v7);
}

uint64_t sub_100804008(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = v5[1];

    return v6();
  }

  else
  {

    v4[12] = a1;
    v8 = swift_task_alloc();
    v4[13] = v8;
    *v8 = v5;
    v8[1] = sub_1008041DC;
    v9 = v4[8];

    return sub_10094DB94(v9);
  }
}

uint64_t sub_1008041DC()
{

  return _swift_task_switch(sub_1008042F4, 0, 0);
}

uint64_t sub_1008042F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100804368(void **a1, uint64_t a2, void (*a3)(void **), void (*a4)(void **))
{
  v151 = a3;
  v150 = a4;
  v153 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v142 = *(v5 - 8);
  v143 = v5;
  __chkstk_darwin(v5);
  v139 = &v119[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for DispatchQoS();
  v140 = *(v7 - 8);
  v141 = v7;
  __chkstk_darwin(v7);
  v138 = &v119[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v9 - 8);
  v131 = &v119[-v10];
  v132 = type metadata accessor for OwnedBeaconRecord(0);
  v137 = *(v132 - 8);
  v11 = __chkstk_darwin(v132);
  v128 = &v119[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v11);
  v126 = &v119[-v14];
  v127 = v15;
  __chkstk_darwin(v13);
  v134 = &v119[-v16];
  v17 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  __chkstk_darwin(v17 - 8);
  v145 = &v119[-v18];
  v146 = type metadata accessor for OwnedBeaconGroup(0);
  v144 = *(v146 - 8);
  v19 = __chkstk_darwin(v146);
  v125 = &v119[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v22 = &v119[-v21];
  v23 = type metadata accessor for UUID();
  v24 = *(v23 - 8);
  v25 = v24[8];
  v26 = __chkstk_darwin(v23);
  v130 = &v119[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = __chkstk_darwin(v26);
  v136 = &v119[-v28];
  v29 = __chkstk_darwin(v27);
  v124 = &v119[-v30];
  v31 = __chkstk_darwin(v29);
  v33 = &v119[-v32];
  __chkstk_darwin(v31);
  v35 = &v119[-v34];
  if (qword_101694960 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  v37 = sub_1000076D4(v36, qword_10177B380);
  v38 = v24[2];
  v147 = a1;
  v38(v35, a1, v23);
  v148 = v38;
  v149 = v24 + 2;
  v38(v33, v153, v23);
  v129 = v37;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v135 = v22;
    v42 = v41;
    v122 = swift_slowAlloc();
    aBlock = v122;
    *v42 = 141558531;
    *(v42 + 4) = 1752392040;
    *(v42 + 12) = 2081;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v133 = v25;
    v45 = v44;
    v120 = v40;
    v121 = v24;
    v46 = v24[1];
    v46(v35, v23);
    v47 = sub_1000136BC(v43, v45, &aBlock);

    *(v42 + 14) = v47;
    *(v42 + 22) = 2082;
    v48 = dispatch thunk of CustomStringConvertible.description.getter();
    v50 = v49;
    v123 = v46;
    v46(v33, v23);
    v51 = sub_1000136BC(v48, v50, &aBlock);
    v25 = v133;

    *(v42 + 24) = v51;
    _os_log_impl(&_mh_execute_header, v39, v120, "Connect to %{private,mask.hash}s commandId: %{public}s.", v42, 0x20u);
    swift_arrayDestroy();

    v22 = v135;

    v52 = v121;
  }

  else
  {

    v53 = v24[1];
    v53(v33, v23);
    v123 = v53;
    v53(v35, v23);
    v52 = v24;
  }

  v54 = v145;
  v55 = v146;
  v56 = v152;
  v57 = v147;
  sub_100AC53EC(v147, v145);
  if ((*(v144 + 48))(v54, 1, v55) == 1)
  {
    sub_10000B3A8(v54, &unk_1016AF8B0, &unk_1013A0700);
    v146 = *&v56[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue];
    v58 = v136;
    v59 = v148;
    v148(v136, v57, v23);
    v60 = v130;
    v59(v130, v153, v23);
    v61 = *(v52 + 80);
    v62 = (v61 + 24) & ~v61;
    v63 = (v25 + v61 + v62) & ~v61;
    v64 = swift_allocObject();
    *(v64 + 16) = v56;
    v65 = v52[4];
    v65(v64 + v62, v58, v23);
    v65(v64 + v63, v60, v23);
    v66 = (v64 + ((v25 + v63 + 7) & 0xFFFFFFFFFFFFFFF8));
    v67 = v150;
    *v66 = v151;
    v66[1] = v67;
    v159 = sub_100834374;
    v160 = v64;
    aBlock = _NSConcreteStackBlock;
    v156 = 1107296256;
    v157 = sub_100006684;
    v158 = &unk_101636058;
    v68 = _Block_copy(&aBlock);
    v69 = v56;

    v70 = v138;
    static DispatchQoS.unspecified.getter();
    v154 = _swiftEmptyArrayStorage;
    sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v71 = v139;
    v72 = v143;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v68);
    (*(v142 + 8))(v71, v72);
    (*(v140 + 8))(v70, v141);
  }

  sub_1008336E8(v54, v22, type metadata accessor for OwnedBeaconGroup);
  v73 = v131;
  sub_100A85ED4(v22, v131);
  if ((*(v137 + 48))(v73, 1, v132) != 1)
  {
    v133 = v25;
    v135 = v22;
    v84 = v73;
    v85 = v134;
    sub_1008336E8(v84, v134, type metadata accessor for OwnedBeaconRecord);
    v86 = v126;
    sub_100833680(v85, v126, type metadata accessor for OwnedBeaconRecord);
    v87 = v124;
    v88 = v153;
    v148(v124, v153, v23);
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = v87;
      v92 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      aBlock = v147;
      *v92 = 141558531;
      *(v92 + 4) = 1752392040;
      *(v92 + 12) = 2081;
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v93 = v52;
      v94 = dispatch thunk of CustomStringConvertible.description.getter();
      v95 = v86;
      v97 = v96;
      sub_1008333E4(v95, type metadata accessor for OwnedBeaconRecord);
      v98 = sub_1000136BC(v94, v97, &aBlock);
      v88 = v153;

      *(v92 + 14) = v98;
      *(v92 + 22) = 2082;
      v99 = dispatch thunk of CustomStringConvertible.description.getter();
      v101 = v100;
      v123(v91, v23);
      v102 = sub_1000136BC(v99, v101, &aBlock);
      v56 = v152;

      *(v92 + 24) = v102;
      _os_log_impl(&_mh_execute_header, v89, v90, "Connect to primary beacon %{private,mask.hash}s commandId: %{public}s.", v92, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v123(v87, v23);
      sub_1008333E4(v86, type metadata accessor for OwnedBeaconRecord);
      v93 = v52;
    }

    v153 = *&v56[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue];
    v105 = v134;
    v106 = v128;
    sub_100833680(v134, v128, type metadata accessor for OwnedBeaconRecord);
    v107 = v136;
    v148(v136, v88, v23);
    v108 = (*(v137 + 80) + 24) & ~*(v137 + 80);
    v109 = (v127 + *(v93 + 80) + v108) & ~*(v93 + 80);
    v110 = (v133 + v109 + 7) & 0xFFFFFFFFFFFFFFF8;
    v111 = swift_allocObject();
    *(v111 + 16) = v56;
    sub_1008336E8(v106, v111 + v108, type metadata accessor for OwnedBeaconRecord);
    (v93[4])(v111 + v109, v107, v23);
    v112 = (v111 + v110);
    v113 = v150;
    *v112 = v151;
    v112[1] = v113;
    v159 = sub_100834448;
    v160 = v111;
    aBlock = _NSConcreteStackBlock;
    v156 = 1107296256;
    v157 = sub_100006684;
    v158 = &unk_1016360A8;
    v114 = _Block_copy(&aBlock);
    v115 = v56;

    v116 = v138;
    static DispatchQoS.unspecified.getter();
    v154 = _swiftEmptyArrayStorage;
    sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v117 = v139;
    v118 = v143;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v114);
    (*(v142 + 8))(v117, v118);
    (*(v140 + 8))(v116, v141);
    sub_1008333E4(v105, type metadata accessor for OwnedBeaconRecord);
    sub_1008333E4(v135, type metadata accessor for OwnedBeaconGroup);
  }

  sub_10000B3A8(v73, &unk_1016A9A20, &qword_10138B280);
  v74 = v125;
  sub_100833680(v22, v125, type metadata accessor for OwnedBeaconGroup);
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = v22;
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    aBlock = v79;
    *v78 = 136446210;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v80 = dispatch thunk of CustomStringConvertible.description.getter();
    v82 = v81;
    sub_1008333E4(v74, type metadata accessor for OwnedBeaconGroup);
    v83 = sub_1000136BC(v80, v82, &aBlock);

    *(v78 + 4) = v83;
    _os_log_impl(&_mh_execute_header, v75, v76, "No primary beacon for group %{public}s. Cannot connect!", v78, 0xCu);
    sub_100007BAC(v79);

    v22 = v77;
  }

  else
  {

    sub_1008333E4(v74, type metadata accessor for OwnedBeaconGroup);
  }

  type metadata accessor for CommandError(0);
  v154 = 3;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_1008345FC(&qword_101696428, type metadata accessor for CommandError, &unk_10138A938);
  _BridgedStoredNSError.init(_:userInfo:)();
  v103 = aBlock;
  v151(aBlock);

  return sub_1008333E4(v22, type metadata accessor for OwnedBeaconGroup);
}

uint64_t sub_1008055B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1000035D0((a1 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_findMyCommandManager), *(a1 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_findMyCommandManager + 24));
  v9 = type metadata accessor for OwnedBeaconRecord(0);
  return sub_10067A8F4(a2 + *(v9 + 20), a3, a4, a5);
}

uint64_t sub_100805628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v37 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v37 - 8);
  __chkstk_darwin(v37);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for DispatchQoS();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v31 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v31 - v14;
  v34 = *&v4[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue];
  v16 = *(v10 + 16);
  v16(&v31 - v14, a1, v9);
  v16(v13, a2, v9);
  v17 = *(v10 + 80);
  v18 = (v17 + 24) & ~v17;
  v19 = (v11 + v17 + v18) & ~v17;
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = v4;
  v22 = *(v10 + 32);
  v22(v21 + v18, v15, v9);
  v22(v21 + v19, v13, v9);
  v23 = (v21 + v20);
  v24 = v33;
  *v23 = v32;
  v23[1] = v24;
  aBlock[4] = sub_1008340A4;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101635FB8;
  v25 = _Block_copy(aBlock);
  v26 = v4;

  v27 = v31;
  static DispatchQoS.unspecified.getter();
  v40 = _swiftEmptyArrayStorage;
  sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v28 = v35;
  v29 = v37;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);
  (*(v39 + 8))(v28, v29);
  (*(v36 + 8))(v27, v38);
}

uint64_t sub_100805A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26[1] = a5;
  v27 = a3;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v26[0] = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v26 - v13;
  v15 = *sub_1000035D0((a1 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_findMyCommandManager), *(a1 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_findMyCommandManager + 24));
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  v28 = type metadata accessor for Transaction();
  v17 = *(v10 + 16);
  v17(v14, a2, v9);
  v17(v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v9);
  v18 = *(v10 + 80);
  v19 = (v18 + 24) & ~v18;
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v18 + v20 + 16) & ~v18;
  v22 = swift_allocObject();
  *(v22 + 16) = v15;
  v23 = *(v10 + 32);
  v23(v22 + v19, v14, v9);
  v24 = (v22 + v20);
  *v24 = sub_100680F90;
  v24[1] = v16;
  v23(v22 + v21, v26[0], v9);

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100805CB0(uint64_t (**a1)(uint64_t a1), uint64_t (**a2)(uint64_t a1), uint64_t a3, void (*a4)(uint64_t), uint64_t a5, double a6)
{
  v189 = a4;
  v190 = a5;
  v191 = a3;
  v176 = type metadata accessor for BeaconObservation(0);
  v179 = *(v176 - 8);
  v10 = __chkstk_darwin(v176);
  v184 = &v163 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v185 = &v163 - v12;
  v13 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  v14 = __chkstk_darwin(v13 - 8);
  v186 = &v163 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v174 = &v163 - v17;
  __chkstk_darwin(v16);
  v183 = &v163 - v18;
  v19 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v19 - 8);
  v178 = &v163 - v20;
  v21 = type metadata accessor for UUID();
  v187 = *(v21 - 8);
  v188 = v21;
  v22 = __chkstk_darwin(v21);
  v173 = &v163 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v169 = &v163 - v25;
  v26 = __chkstk_darwin(v24);
  v168 = &v163 - v27;
  v28 = __chkstk_darwin(v26);
  v175 = &v163 - v29;
  v30 = __chkstk_darwin(v28);
  v180 = &v163 - v31;
  __chkstk_darwin(v30);
  v33 = &v163 - v32;
  v34 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  __chkstk_darwin(v34 - 8);
  v36 = (&v163 - v35);
  v37 = type metadata accessor for OwnedBeaconGroup(0);
  v38 = *(v37 - 8);
  v39 = __chkstk_darwin(v37);
  v177 = &v163 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v43 = &v163 - v42;
  __chkstk_darwin(v41);
  v45 = &v163 - v44;
  v172 = *(v6 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_beaconStore);
  sub_100AC53EC(a2, v36);
  v46 = *(v38 + 48);
  v182 = v37;
  if (v46(v36, 1, v37) == 1)
  {
    sub_10000B3A8(v36, &unk_1016AF8B0, &unk_1013A0700);
    return sub_10080738C(a1, a2, v191, v189, v190, a6);
  }

  v167 = a2;
  v181 = a1;
  v171 = v6;
  sub_1008336E8(v36, v45, type metadata accessor for OwnedBeaconGroup);
  v48 = v45;
  if (qword_101694960 != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  v50 = sub_1000076D4(v49, qword_10177B380);
  sub_100833680(v45, v43, type metadata accessor for OwnedBeaconGroup);
  v51 = v187;
  v52 = v188;
  v53 = v187 + 16;
  v165 = *(v187 + 16);
  v165(v33, v181, v188);
  v170 = v50;
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();
  v56 = os_log_type_enabled(v54, v55);
  v166 = v53;
  if (!v56)
  {

    v63 = *(v51 + 8);
    v63(v33, v52);
    sub_1008333E4(v43, type metadata accessor for OwnedBeaconGroup);
    goto LABEL_23;
  }

  v164 = v48;
  v57 = swift_slowAlloc();
  v163 = swift_slowAlloc();
  v193[0] = v163;
  *v57 = 136446722;
  sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v58 = dispatch thunk of CustomStringConvertible.description.getter();
  v60 = v59;
  sub_1008333E4(v43, type metadata accessor for OwnedBeaconGroup);
  v61 = sub_1000136BC(v58, v60, v193);

  *(v57 + 4) = v61;
  *(v57 + 12) = 2080;
  if (v191 > 2)
  {
    switch(v191)
    {
      case 3:
        v62 = 0x8000000101357040;
        v64 = 0xD000000000000010;
        goto LABEL_22;
      case 4:
        v62 = 0xEF64656D7269666ELL;
        v64 = 0x6F4365756575712ELL;
        goto LABEL_22;
      case 5:
        v62 = 0xEE0074726F685367;
        goto LABEL_16;
    }

LABEL_19:
    v62 = 0xE700000000000000;
    v64 = 0x6E776F6E6B6E75;
    goto LABEL_22;
  }

  if (!v191)
  {
    v62 = 0xE800000000000000;
    v64 = 0x746C75616665642ELL;
    goto LABEL_22;
  }

  if (v191 == 1)
  {
    v62 = 0xE800000000000000;
    v64 = 0x676E69676E61722ELL;
    goto LABEL_22;
  }

  if (v191 != 2)
  {
    goto LABEL_19;
  }

  v62 = 0xE900000000000067;
LABEL_16:
  v64 = 0x6E696B636172742ELL;
LABEL_22:
  v65 = sub_1000136BC(v64, v62, v193);

  *(v57 + 14) = v65;
  *(v57 + 22) = 2082;
  v66 = v188;
  v67 = dispatch thunk of CustomStringConvertible.description.getter();
  v69 = v68;
  v63 = *(v51 + 8);
  v63(v33, v66);
  v70 = sub_1000136BC(v67, v69, v193);
  v52 = v66;

  *(v57 + 24) = v70;
  _os_log_impl(&_mh_execute_header, v54, v55, "Play sound for group %{public}s with context %s. CommandId %{public}s", v57, 0x20u);
  swift_arrayDestroy();

  v48 = v164;
LABEL_23:
  sub_10080AF18();
  v72 = v185;
  v71 = v186;
  v73 = v184;
  if ((v74 & 1) == 0)
  {
    v88 = v48;
    v89 = v177;
    sub_100833680(v48, v177, type metadata accessor for OwnedBeaconGroup);
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v193[0] = v93;
      *v92 = 136446210;
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v94 = dispatch thunk of CustomStringConvertible.description.getter();
      v96 = v95;
      sub_1008333E4(v89, type metadata accessor for OwnedBeaconGroup);
      v97 = sub_1000136BC(v94, v96, v193);

      *(v92 + 4) = v97;
      _os_log_impl(&_mh_execute_header, v90, v91, "Queue not needed for group %{public}s", v92, 0xCu);
      sub_100007BAC(v93);
    }

    else
    {

      sub_1008333E4(v89, type metadata accessor for OwnedBeaconGroup);
    }

    sub_100809A10(v181, v88, v191, v189, v190, a6);
    v106 = v88;
    return sub_1008333E4(v106, type metadata accessor for OwnedBeaconGroup);
  }

  v182 = v63;
  sub_100519FB0();
  v75 = v178;
  sub_10112C648(v76, v178);

  if ((*(v51 + 48))(v75, 1, v52) == 1)
  {
    v77 = v48;
    sub_10000B3A8(v75, &qword_1016980D0, &unk_10138F3B0);
    v78 = v173;
    v165(v173, v167, v52);
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v193[0] = v82;
      *v81 = 136315138;
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v83 = dispatch thunk of CustomStringConvertible.description.getter();
      v84 = v78;
      v86 = v85;
      v182(v84, v52);
      v87 = sub_1000136BC(v83, v86, v193);

      *(v81 + 4) = v87;
      _os_log_impl(&_mh_execute_header, v79, v80, "Group %s has no member!", v81, 0xCu);
      sub_100007BAC(v82);
    }

    else
    {

      v182(v78, v52);
    }

    v107 = v189;
    type metadata accessor for CommandError(0);
    v192 = 0;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1008345FC(&qword_101696428, type metadata accessor for CommandError, &unk_10138A938);
    _BridgedStoredNSError.init(_:userInfo:)();
    v108 = v193[0];
    v107(v193[0]);

    v106 = v77;
    return sub_1008333E4(v106, type metadata accessor for OwnedBeaconGroup);
  }

  v98 = v180;
  (*(v51 + 32))(v180, v75, v52);
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v99 = sub_100035730(v98, sub_100526B58, 0);
  v100 = v183;
  sub_1012BB138(v99, v183);

  v101 = v174;
  sub_1000D2A70(v100, v174, &qword_1016A42E0, &qword_1013B0010);
  v102 = v179 + 48;
  v103 = *(v179 + 48);
  v104 = v176;
  v105 = v103(v101, 1, v176);
  v164 = v48;
  if (v105 == 1)
  {
    sub_10000B3A8(v101, &qword_1016A42E0, &qword_1013B0010);
  }

  else
  {
    v179 = v102;
    sub_1008336E8(v101, v72, type metadata accessor for BeaconObservation);
    sub_100833680(v72, v73, type metadata accessor for BeaconObservation);
    v109 = Logger.logObject.getter();
    v110 = v73;
    v111 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v109, v111))
    {
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v193[0] = v113;
      *v112 = 136315138;
      v114 = sub_1009201A4();
      v116 = v115;
      sub_1008333E4(v110, type metadata accessor for BeaconObservation);
      v117 = sub_1000136BC(v114, v116, v193);

      *(v112 + 4) = v117;
      _os_log_impl(&_mh_execute_header, v109, v111, "Found observation %s", v112, 0xCu);
      sub_100007BAC(v113);
      v71 = v186;

      v48 = v164;
    }

    else
    {

      sub_1008333E4(v110, type metadata accessor for BeaconObservation);
    }

    sub_1008333E4(v72, type metadata accessor for BeaconObservation);
    v104 = v176;
  }

  sub_1000D2A70(v183, v71, &qword_1016A42E0, &qword_1013B0010);
  if (v103(v71, 1, v104) == 1)
  {
    sub_10000B3A8(v71, &qword_1016A42E0, &qword_1013B0010);
    v118 = v190;
    v119 = v167;
    v120 = v175;
  }

  else
  {
    v121 = *(v71 + *(v104 + 24));
    sub_1008333E4(v71, type metadata accessor for BeaconObservation);
    v118 = v190;
    v119 = v167;
    v120 = v175;
    if (v121 == 23)
    {
      v122 = v169;
      v123 = v188;
      v165(v169, v167, v188);
      v124 = Logger.logObject.getter();
      v125 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        v193[0] = v127;
        *v126 = 136315138;
        sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v128 = dispatch thunk of CustomStringConvertible.description.getter();
        v130 = v129;
        v131 = v122;
        v132 = v182;
        v182(v131, v123);
        v133 = sub_1000136BC(v128, v130, v193);

        *(v126 + 4) = v133;
        _os_log_impl(&_mh_execute_header, v124, v125, "Play Sound has already been queued for groupIdentifier: %s", v126, 0xCu);
        sub_100007BAC(v127);
      }

      else
      {

        v158 = v122;
        v132 = v182;
        v182(v158, v123);
      }

      v159 = v189;
      type metadata accessor for CommandError(0);
      v160 = 11;
      goto LABEL_59;
    }
  }

  v134 = sub_100831CC4(v119);
  sub_100A8B080(v48);

  if (v191 == 4)
  {
    sub_100831EA0(v119);
LABEL_51:
    v145 = v188;
    v165(v120, v119, v188);
    v146 = Logger.logObject.getter();
    v147 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v146, v147))
    {
      v148 = swift_slowAlloc();
      v149 = v118;
      v150 = swift_slowAlloc();
      v193[0] = v150;
      *v148 = 141558275;
      *(v148 + 4) = 1752392040;
      *(v148 + 12) = 2081;
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v151 = dispatch thunk of CustomStringConvertible.description.getter();
      v153 = v152;
      v154 = v120;
      v155 = v182;
      v182(v154, v145);
      v156 = sub_1000136BC(v151, v153, v193);

      *(v148 + 14) = v156;
      _os_log_impl(&_mh_execute_header, v146, v147, "Queuing play sound for %{private,mask.hash}s.", v148, 0x16u);
      sub_100007BAC(v150);
      v118 = v149;

      v48 = v164;
    }

    else
    {

      v157 = v120;
      v155 = v182;
      v182(v157, v145);
    }

    sub_100809A10(v181, v48, v191, v189, v118, a6);
    sub_10000B3A8(v183, &qword_1016A42E0, &qword_1013B0010);
    v155(v180, v145);
    v106 = v48;
    return sub_1008333E4(v106, type metadata accessor for OwnedBeaconGroup);
  }

  if (!v134)
  {
    goto LABEL_51;
  }

  v135 = v168;
  v123 = v188;
  v165(v168, v119, v188);
  v136 = Logger.logObject.getter();
  v137 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v136, v137))
  {
    v138 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    v193[0] = v139;
    *v138 = 141558275;
    *(v138 + 4) = 1752392040;
    *(v138 + 12) = 2081;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v140 = dispatch thunk of CustomStringConvertible.description.getter();
    v142 = v141;
    v143 = v135;
    v132 = v182;
    v182(v143, v123);
    v144 = sub_1000136BC(v140, v142, v193);

    *(v138 + 14) = v144;
    _os_log_impl(&_mh_execute_header, v136, v137, "Queue confirmation required for %{private,mask.hash}s, done with play sound.", v138, 0x16u);
    sub_100007BAC(v139);
  }

  else
  {

    v161 = v135;
    v132 = v182;
    v182(v161, v123);
  }

  v159 = v189;
  type metadata accessor for CommandError(0);
  v160 = 10;
LABEL_59:
  v192 = v160;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_1008345FC(&qword_101696428, type metadata accessor for CommandError, &unk_10138A938);
  _BridgedStoredNSError.init(_:userInfo:)();
  v162 = v193[0];
  v159(v193[0]);

  sub_10000B3A8(v183, &qword_1016A42E0, &qword_1013B0010);
  v132(v180, v123);
  v106 = v164;
  return sub_1008333E4(v106, type metadata accessor for OwnedBeaconGroup);
}

uint64_t sub_10080738C(uint64_t (**a1)(uint64_t a1), uint64_t (**a2)(uint64_t a1), uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v7 = v6;
  v266 = a5;
  v265 = a4;
  v261 = a1;
  v11 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  v12 = __chkstk_darwin(v11 - 8);
  v246 = &v242 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v245 = &v242 - v15;
  __chkstk_darwin(v14);
  v249 = &v242 - v16;
  v17 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  __chkstk_darwin(v17 - 8);
  v252 = (&v242 - v18);
  v19 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v19 - 8);
  v268 = v19;
  v269 = v20;
  __chkstk_darwin(v19);
  v267 = &v242 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v23 = *(v22 - 8);
  v271 = v22;
  v272 = v23;
  __chkstk_darwin(v22);
  v270 = &v242 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v258 = type metadata accessor for DispatchQoS.QoSClass();
  v257 = *(v258 - 8);
  __chkstk_darwin(v258);
  v256 = &v242 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = type metadata accessor for BeaconObservation(0);
  v26 = *(v253 - 8);
  v27 = __chkstk_darwin(v253);
  v244 = &v242 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v273 = (&v242 - v30);
  __chkstk_darwin(v29);
  v251 = &v242 - v31;
  v32 = type metadata accessor for UUID();
  v33 = *(v32 - 8);
  v34 = __chkstk_darwin(v32);
  v247 = &v242 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v243 = &v242 - v37;
  v38 = __chkstk_darwin(v36);
  v260 = &v242 - v39;
  v40 = __chkstk_darwin(v38);
  v274 = &v242 - v41;
  v262 = v42;
  __chkstk_darwin(v40);
  v44 = &v242 - v43;
  if (qword_101694960 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  v46 = sub_1000076D4(v45, qword_10177B380);
  v47 = *(v33 + 16);
  v276 = v33 + 16;
  v263 = v47;
  v47(v44, a2, v32);
  v250 = v46;
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();
  v50 = os_log_type_enabled(v48, v49);
  v264 = v7;
  v275 = v33;
  v254 = v26;
  if (!v50)
  {

    v60 = *(v33 + 8);
    (v60)(v44, v32);
    goto LABEL_21;
  }

  v248 = a2;
  v51 = swift_slowAlloc();
  aBlock = swift_slowAlloc();
  *v51 = 136315650;
  sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v52 = dispatch thunk of CustomStringConvertible.description.getter();
  v54 = v53;
  v55 = *(v33 + 8);
  v255 = v32;
  v242 = v55;
  (v55)(v44, v32);
  v56 = sub_1000136BC(v52, v54, &aBlock);

  *(v51 + 4) = v56;
  *(v51 + 12) = 2080;
  v259 = a3;
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v58 = 0xD000000000000010;
      v59 = 0x8000000101357040;
    }

    else
    {
      if (a3 != 4)
      {
        v57 = v264;
        if (a3 == 5)
        {
          v59 = 0xEE0074726F685367;
          v58 = 0x6E696B636172742ELL;
          goto LABEL_20;
        }

LABEL_16:
        v59 = 0xE700000000000000;
        v58 = 0x6E776F6E6B6E75;
        goto LABEL_20;
      }

      v59 = 0xEF64656D7269666ELL;
      v58 = 0x6F4365756575712ELL;
    }

LABEL_19:
    v57 = v264;
    goto LABEL_20;
  }

  if (!a3)
  {
    v58 = 0x746C75616665642ELL;
    v59 = 0xE800000000000000;
    goto LABEL_19;
  }

  if (a3 == 1)
  {
    v59 = 0xE800000000000000;
    v58 = 0x676E69676E61722ELL;
    goto LABEL_19;
  }

  v57 = v264;
  if (a3 != 2)
  {
    goto LABEL_16;
  }

  v58 = 0x6E696B636172742ELL;
  v59 = 0xE900000000000067;
LABEL_20:
  a2 = v248;
  v61 = sub_1000136BC(v58, v59, &aBlock);

  *(v51 + 14) = v61;
  *(v51 + 22) = 2048;
  *(v51 + 24) = a6;
  _os_log_impl(&_mh_execute_header, v48, v49, "playSoundSingle %s context %s timeout %f", v51, 0x20u);
  swift_arrayDestroy();

  v32 = v255;
  v33 = v275;
  v7 = v57;
  v60 = v242;
  a3 = v259;
LABEL_21:
  sub_100025020(a2, &aBlock);
  v62 = v7;
  v63 = v281;
  sub_10000B3A8(&aBlock, &qword_101696920, &unk_10138B200);
  v64 = v273;
  if (!v63)
  {
    v96 = v252;
    sub_100023184(a2, v252);
    v97 = type metadata accessor for WildModeAssociationRecord(0);
    v98 = (*(*(v97 - 8) + 48))(v96, 1, v97);
    sub_10000B3A8(v96, &unk_1016C7C90, &qword_1013BB4B0);
    if (v98 == 1)
    {
      v99 = v247;
      v263(v247, a2, v32);
      v100 = Logger.logObject.getter();
      v101 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        aBlock = v103;
        *v102 = 136315138;
        sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v104 = dispatch thunk of CustomStringConvertible.description.getter();
        v106 = v105;
        (v60)(v99, v32);
        v107 = sub_1000136BC(v104, v106, &aBlock);

        *(v102 + 4) = v107;
        _os_log_impl(&_mh_execute_header, v100, v101, "Invalid beacon %s", v102, 0xCu);
        sub_100007BAC(v103);
      }

      else
      {

        (v60)(v99, v32);
      }

      sub_1000BC488();
      v135 = v257;
      v136 = v256;
      v137 = v258;
      (*(v257 + 104))(v256, enum case for DispatchQoS.QoSClass.default(_:), v258);
      v138 = static OS_dispatch_queue.global(qos:)();
      (*(v135 + 8))(v136, v137);
      v139 = swift_allocObject();
      v140 = v266;
      *(v139 + 16) = v265;
      *(v139 + 24) = v140;
      v282 = sub_100833820;
      v283 = v139;
      aBlock = _NSConcreteStackBlock;
      v279 = 1107296256;
      v141 = &unk_101635A18;
      goto LABEL_44;
    }

    v82 = v60;
    v80 = v254;
    switch(a3)
    {
      case 2:
        goto LABEL_39;
      case 5:
        v273 = *&v62[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue];
        v144 = v263;
        v263(v274, a2, v32);
        v144(v260, v261, v32);
        v145 = v275;
        v146 = *(v275 + 80);
        v147 = (v146 + 16) & ~v146;
        v148 = (v262 + v147 + 7) & 0xFFFFFFFFFFFFFFF8;
        v149 = (v148 + 15) & 0xFFFFFFFFFFFFFFF8;
        v150 = v32;
        v151 = (v149 + 15) & 0xFFFFFFFFFFFFFFF8;
        v152 = (v151 + 15) & 0xFFFFFFFFFFFFFFF8;
        v153 = (v146 + 16 + v152) & ~v146;
        v154 = swift_allocObject();
        v155 = *(v145 + 32);
        v155(v154 + v147, v274, v150);
        *(v154 + v148) = 5;
        *(v154 + v149) = a6;
        v156 = v264;
        *(v154 + v151) = v264;
        v157 = (v154 + v152);
        v158 = v266;
        *v157 = v265;
        v157[1] = v158;
        v155(v154 + v153, v260, v150);
        v282 = sub_1008338B0;
        v283 = v154;
        aBlock = _NSConcreteStackBlock;
        v279 = 1107296256;
        v280 = sub_100006684;
        v281 = &unk_101635C20;
        v123 = _Block_copy(&aBlock);
        v159 = v156;
        goto LABEL_35;
      case 4:
LABEL_39:
        if (qword_101694920 == -1)
        {
          goto LABEL_40;
        }

        goto LABEL_81;
    }

    v174 = Logger.logObject.getter();
    v175 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v174, v175))
    {
LABEL_79:

      sub_1000BC488();
      v237 = v257;
      v238 = v256;
      v239 = v258;
      (*(v257 + 104))(v256, enum case for DispatchQoS.QoSClass.default(_:), v258);
      v138 = static OS_dispatch_queue.global(qos:)();
      (*(v237 + 8))(v238, v239);
      v240 = swift_allocObject();
      v241 = v266;
      *(v240 + 16) = v265;
      *(v240 + 24) = v241;
      v282 = sub_100834730;
      v283 = v240;
      aBlock = _NSConcreteStackBlock;
      v279 = 1107296256;
      v141 = &unk_101635A68;
LABEL_44:
      v280 = sub_100006684;
      v281 = v141;
      v142 = _Block_copy(&aBlock);

      v125 = v270;
      static DispatchQoS.unspecified.getter();
      v277 = _swiftEmptyArrayStorage;
      sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v127 = v267;
      v126 = v268;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v142);

      goto LABEL_45;
    }

    v176 = swift_slowAlloc();
    v177 = swift_slowAlloc();
    aBlock = v177;
    *v176 = 136315138;
    if (a3 > 1)
    {
      if (a3 == 3)
      {
        v179 = 0xD000000000000010;
        v178 = 0x8000000101357040;
        goto LABEL_78;
      }
    }

    else
    {
      if (!a3)
      {
        v179 = 0x746C75616665642ELL;
        v178 = 0xE800000000000000;
        goto LABEL_78;
      }

      if (a3 == 1)
      {
        v178 = 0xE800000000000000;
        v179 = 0x676E69676E61722ELL;
LABEL_78:
        v236 = sub_1000136BC(v179, v178, &aBlock);

        *(v176 + 4) = v236;
        _os_log_impl(&_mh_execute_header, v174, v175, "Invalid context for UT play sound %s", v176, 0xCu);
        sub_100007BAC(v177);

        goto LABEL_79;
      }
    }

    v178 = 0xE700000000000000;
    v179 = 0x6E776F6E6B6E75;
    goto LABEL_78;
  }

  if ((sub_10081008C(a2) & 1) == 0)
  {
    v273 = *&v62[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue];
    v255 = v32;
    v108 = v263;
    v263(v274, a2, v32);
    v108(v260, v261, v32);
    v109 = *(v33 + 80);
    v110 = (v109 + 16) & ~v109;
    v111 = (v262 + v110 + 7) & 0xFFFFFFFFFFFFFFF8;
    v112 = (v111 + 15) & 0xFFFFFFFFFFFFFFF8;
    v113 = (v112 + 15) & 0xFFFFFFFFFFFFFFF8;
    v114 = (v113 + 15) & 0xFFFFFFFFFFFFFFF8;
    v115 = (v109 + 16 + v114) & ~v109;
    v116 = swift_allocObject();
    v117 = *(v33 + 32);
    v118 = v116 + v110;
    v119 = v255;
    v117(v118, v274, v255);
    *(v116 + v111) = a3;
    *(v116 + v112) = a6;
    v120 = v264;
    *(v116 + v113) = v264;
    v121 = (v116 + v114);
    v122 = v266;
    *v121 = v265;
    v121[1] = v122;
    v117(v116 + v115, v260, v119);
    v282 = sub_100834708;
    v283 = v116;
    aBlock = _NSConcreteStackBlock;
    v279 = 1107296256;
    v280 = sub_100006684;
    v281 = &unk_101635C70;
    v123 = _Block_copy(&aBlock);
    v124 = v120;
LABEL_35:

    v125 = v270;
    static DispatchQoS.unspecified.getter();
    v277 = _swiftEmptyArrayStorage;
    sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v127 = v267;
    v126 = v268;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v123);
LABEL_45:
    (*(v269 + 8))(v127, v126);
    (*(v272 + 8))(v125, v271);
  }

  v259 = a3;
  v65 = v62;
  if (sub_10081008C(a2))
  {
    v66 = 23;
  }

  else
  {
    v66 = 24;
  }

  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v67 = qword_10177B2E8;
  v68 = v251;
  v69 = v32;
  v70 = v263;
  v263(v251, a2, v32);
  v71 = v253;
  static Date.trustedNow.getter(v68 + *(v253 + 20));
  *(v68 + *(v71 + 24)) = v66;
  sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
  v72 = (*(v254 + 80) + 32) & ~*(v254 + 80);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_101385D80;
  sub_100833680(v68, v73 + v72, type metadata accessor for BeaconObservation);
  v74 = type metadata accessor for Transaction();
  __chkstk_darwin(v74);
  *(&v242 - 4) = v67;
  *(&v242 - 3) = v73;
  *(&v242 - 2) = 0;
  *(&v242 - 1) = 0;
  static Transaction.named<A>(_:with:)();

  sub_1008333E4(v68, type metadata accessor for BeaconObservation);
  sub_10082145C(a2);
  v75 = *&v65[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue];
  v76 = v274;
  v70(v274, a2, v32);
  v77 = v65;
  v78 = v275;
  v79 = (*(v275 + 80) + 24) & ~*(v275 + 80);
  v80 = swift_allocObject();
  *(v80 + 16) = v77;
  (*(v78 + 32))(v80 + v79, v76, v69);
  v81 = swift_allocObject();
  *(v81 + 16) = sub_10083470C;
  *(v81 + 24) = v80;
  v282 = sub_10040B9F8;
  v283 = v81;
  v82 = a2;
  aBlock = _NSConcreteStackBlock;
  v279 = 1107296256;
  v83 = v77;
  a2 = &v280;
  v280 = sub_10013FE14;
  v281 = &unk_101635CE8;
  a3 = _Block_copy(&aBlock);
  v32 = v283;
  v64 = v83;

  dispatch_sync(v75, a3);
  _Block_release(a3);
  LOBYTE(v75) = swift_isEscapingClosureAtFileLocation();

  if ((v75 & 1) == 0)
  {
    v84 = type metadata accessor for Transaction();
    __chkstk_darwin(v84);
    *(&v242 - 6) = v64;
    *(&v242 - 5) = v82;
    *(&v242 - 4) = a6;
    v85 = v259;
    *(&v242 - 3) = v261;
    *(&v242 - 2) = v85;
    static Transaction.named<A>(_:with:)();
    sub_1000BC488();
    v86 = v257;
    v87 = v256;
    v88 = v258;
    (*(v257 + 104))(v256, enum case for DispatchQoS.QoSClass.default(_:), v258);
    v89 = static OS_dispatch_queue.global(qos:)();
    (*(v86 + 8))(v87, v88);
    v90 = swift_allocObject();
    v91 = v266;
    *(v90 + 16) = v265;
    *(v90 + 24) = v91;
    v282 = sub_100470308;
    v283 = v90;
    aBlock = _NSConcreteStackBlock;
    v279 = 1107296256;
    v280 = sub_100006684;
    v281 = &unk_101635D38;
    v92 = _Block_copy(&aBlock);

    v93 = v270;
    static DispatchQoS.unspecified.getter();
    v277 = _swiftEmptyArrayStorage;
    sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v95 = v267;
    v94 = v268;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v92);

    (*(v269 + 8))(v95, v94);
    (*(v272 + 8))(v93, v271);
LABEL_30:
  }

  __break(1u);
LABEL_81:
  swift_once();
LABEL_40:
  v128 = qword_10177B2E8;
  v248 = a2;
  v129 = sub_100035730(a2, sub_100526B58, 0);
  v130 = v249;
  sub_1012BB138(v129, v249);

  v131 = v130;
  v132 = v245;
  sub_1000D2A70(v131, v245, &qword_1016A42E0, &qword_1013B0010);
  v133 = *(v80 + 48);
  v134 = v253;
  if ((v133)(v132, 1, v253) == 1)
  {
    sub_10000B3A8(v132, &qword_1016A42E0, &qword_1013B0010);
  }

  else
  {
    v260 = v133;
    sub_1008336E8(v132, v64, type metadata accessor for BeaconObservation);
    v160 = v244;
    sub_100833680(v64, v244, type metadata accessor for BeaconObservation);
    v161 = Logger.logObject.getter();
    v162 = v64;
    v163 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v161, v163))
    {
      v164 = swift_slowAlloc();
      v165 = swift_slowAlloc();
      v259 = a3;
      v252 = v128;
      v166 = v32;
      v167 = v165;
      aBlock = v165;
      *v164 = 136315138;
      v168 = sub_1009201A4();
      v169 = v82;
      v171 = v170;
      sub_1008333E4(v160, type metadata accessor for BeaconObservation);
      v172 = sub_1000136BC(v168, v171, &aBlock);
      v82 = v169;

      *(v164 + 4) = v172;
      _os_log_impl(&_mh_execute_header, v161, v163, "Found observation %s", v164, 0xCu);
      sub_100007BAC(v167);
      v32 = v166;
      v128 = v252;
      a3 = v259;

      v80 = v254;

      v173 = v273;
    }

    else
    {

      sub_1008333E4(v160, type metadata accessor for BeaconObservation);
      v173 = v162;
    }

    sub_1008333E4(v173, type metadata accessor for BeaconObservation);
    v134 = v253;
    v133 = v260;
  }

  v180 = v246;
  sub_1000D2A70(v249, v246, &qword_1016A42E0, &qword_1013B0010);
  if ((v133)(v180, 1, v134) == 1)
  {
    sub_10000B3A8(v180, &qword_1016A42E0, &qword_1013B0010);
    v181 = v264;
    v182 = v248;
  }

  else
  {
    v183 = *(v180 + *(v134 + 24));
    sub_1008333E4(v180, type metadata accessor for BeaconObservation);
    v181 = v264;
    v182 = v248;
    if (v183 == 23)
    {
      v184 = v243;
      v263(v243, v248, v32);
      v185 = Logger.logObject.getter();
      v186 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v185, v186))
      {
        v187 = swift_slowAlloc();
        v188 = swift_slowAlloc();
        aBlock = v188;
        *v187 = 136315138;
        sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v189 = dispatch thunk of CustomStringConvertible.description.getter();
        v190 = v184;
        v192 = v191;
        (v82)(v190, v32);
        v193 = sub_1000136BC(v189, v192, &aBlock);

        *(v187 + 4) = v193;
        _os_log_impl(&_mh_execute_header, v185, v186, "Play Sound has already been queued for: %s", v187, 0xCu);
        sub_100007BAC(v188);
      }

      else
      {

        (v82)(v184, v32);
      }

      sub_1000BC488();
      v227 = v257;
      v228 = v256;
      v229 = v258;
      (*(v257 + 104))(v256, enum case for DispatchQoS.QoSClass.default(_:), v258);
      v197 = static OS_dispatch_queue.global(qos:)();
      (*(v227 + 8))(v228, v229);
      v230 = swift_allocObject();
      v231 = v266;
      *(v230 + 16) = v265;
      *(v230 + 24) = v231;
      v282 = sub_100833890;
      v283 = v230;
      aBlock = _NSConcreteStackBlock;
      v279 = 1107296256;
      v200 = &unk_101635BD0;
      goto LABEL_73;
    }
  }

  if (a3 == 4)
  {
    sub_100831EA0(v182);
    goto LABEL_66;
  }

  if (sub_100831CC4(v182))
  {
    sub_1000BC488();
    v194 = v257;
    v195 = v256;
    v196 = v258;
    (*(v257 + 104))(v256, enum case for DispatchQoS.QoSClass.default(_:), v258);
    v197 = static OS_dispatch_queue.global(qos:)();
    (*(v194 + 8))(v195, v196);
    v198 = swift_allocObject();
    v199 = v266;
    *(v198 + 16) = v265;
    *(v198 + 24) = v199;
    v282 = sub_100833870;
    v283 = v198;
    aBlock = _NSConcreteStackBlock;
    v279 = 1107296256;
    v200 = &unk_101635B80;
LABEL_73:
    v280 = sub_100006684;
    v281 = v200;
    v232 = _Block_copy(&aBlock);

    v233 = v270;
    static DispatchQoS.unspecified.getter();
    v277 = _swiftEmptyArrayStorage;
    sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v235 = v267;
    v234 = v268;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v232);

    (*(v269 + 8))(v235, v234);
    (*(v272 + 8))(v233, v271);
    sub_10000B3A8(v249, &qword_1016A42E0, &qword_1013B0010);
  }

LABEL_66:
  if (sub_10081008C(v182))
  {
    v201 = 23;
  }

  else
  {
    v201 = 24;
  }

  v202 = v251;
  v203 = v263;
  v263(v251, v182, v32);
  v204 = v253;
  static Date.trustedNow.getter(v202 + *(v253 + 20));
  *(v202 + *(v204 + 24)) = v201;
  sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
  v205 = (*(v80 + 80) + 32) & ~*(v80 + 80);
  v206 = swift_allocObject();
  *(v206 + 16) = xmmword_101385D80;
  sub_100833680(v202, v206 + v205, type metadata accessor for BeaconObservation);
  v207 = type metadata accessor for Transaction();
  __chkstk_darwin(v207);
  *(&v242 - 4) = v128;
  *(&v242 - 3) = v206;
  *(&v242 - 2) = 0;
  *(&v242 - 1) = 0;
  static Transaction.named<A>(_:with:)();

  sub_1008333E4(v202, type metadata accessor for BeaconObservation);
  sub_10082145C(v182);
  v208 = *&v181[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue];
  v209 = v274;
  v203(v274, v182, v32);
  v210 = v275;
  v211 = (*(v275 + 80) + 24) & ~*(v275 + 80);
  v212 = swift_allocObject();
  *(v212 + 16) = v181;
  (*(v210 + 32))(v212 + v211, v209, v32);
  v213 = swift_allocObject();
  *(v213 + 16) = sub_100833840;
  *(v213 + 24) = v212;
  v282 = sub_10040B9F8;
  v283 = v213;
  aBlock = _NSConcreteStackBlock;
  v279 = 1107296256;
  v280 = sub_10013FE14;
  v281 = &unk_101635AE0;
  v214 = _Block_copy(&aBlock);
  v215 = v181;

  dispatch_sync(v208, v214);
  _Block_release(v214);
  LOBYTE(v208) = swift_isEscapingClosureAtFileLocation();

  if ((v208 & 1) == 0)
  {
    v216 = type metadata accessor for Transaction();
    __chkstk_darwin(v216);
    *(&v242 - 6) = v215;
    *(&v242 - 5) = v182;
    *(&v242 - 4) = a6;
    *(&v242 - 3) = v261;
    *(&v242 - 2) = 2;
    static Transaction.named<A>(_:with:)();
    sub_1000BC488();
    v217 = v257;
    v218 = v256;
    v219 = v258;
    (*(v257 + 104))(v256, enum case for DispatchQoS.QoSClass.default(_:), v258);
    v220 = static OS_dispatch_queue.global(qos:)();
    (*(v217 + 8))(v218, v219);
    v221 = swift_allocObject();
    v222 = v266;
    *(v221 + 16) = v265;
    *(v221 + 24) = v222;
    v282 = sub_100470308;
    v283 = v221;
    aBlock = _NSConcreteStackBlock;
    v279 = 1107296256;
    v280 = sub_100006684;
    v281 = &unk_101635B30;
    v223 = _Block_copy(&aBlock);

    v224 = v270;
    static DispatchQoS.unspecified.getter();
    v277 = _swiftEmptyArrayStorage;
    sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v226 = v267;
    v225 = v268;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v223);

    (*(v269 + 8))(v226, v225);
    (*(v272 + 8))(v224, v271);
    sub_10000B3A8(v249, &qword_1016A42E0, &qword_1013B0010);
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

void sub_100809A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v118 = a5;
  v115 = a4;
  v110 = a3;
  v109 = a1;
  v127 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v127);
  v126 = &v102 - v9;
  v142 = type metadata accessor for Date();
  v10 = *(v142 - 8);
  __chkstk_darwin(v142);
  v140 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for BeaconObservation(0);
  v138 = *(v139 - 8);
  __chkstk_darwin(v139);
  v137 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for DispatchWorkItemFlags();
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v114 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for DispatchQoS();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v111 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for DispatchQoS.QoSClass();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v106 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for OwnedBeaconGroup(0);
  v120 = *(v16 - 8);
  __chkstk_darwin(v16 - 8);
  v121 = v17;
  v122 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v128 = &v102 - v23;
  __chkstk_darwin(v22);
  v119 = &v102 - v24;
  v25 = type metadata accessor for UUID();
  v26 = *(v25 - 8);
  v27 = __chkstk_darwin(v25);
  v147 = &v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = &v102 - v29;
  v123 = v6;
  sub_10080AF18();
  if (v31)
  {
    v32 = 23;
  }

  else
  {
    v32 = 24;
  }

  v133 = v32;
  v124 = a2;
  sub_100519FB0();
  v34 = v30;
  v35 = v33 + 56;
  v36 = 1 << *(v33 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & *(v33 + 56);
  v39 = (v36 + 63) >> 6;
  v145 = v26 + 16;
  v125 = (v10 + 48);
  v141 = (v10 + 32);
  v129 = enum case for Feature.FindMy.trustedNowUsesReferenceClock(_:);
  v105 = NSSystemClockDidChangeNotification;
  v104 = &v155;
  v132 = (v26 + 32);
  v135 = v26;
  v131 = (v26 + 8);
  v144 = v33;

  v40 = 0;
  v41 = 0;
  v130 = xmmword_101385D80;
  v143 = v21;
  v136 = v25;
  v134 = v34;
  while (v38)
  {
LABEL_14:
    v52 = *(v135 + 16);
    v52(v34, *(v144 + 48) + *(v135 + 72) * (__clz(__rbit64(v38)) | (v40 << 6)), v25);
    if (qword_101694920 != -1)
    {
      swift_once();
    }

    v146 = qword_10177B2E8;
    v52(v147, v34, v25);
    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    aBlock = 7.45683732e247;
    *&v154 = -5.98008217e197;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    if (v148 == 1)
    {
      v53 = [objc_opt_self() sharedInstance];
      v54 = [v53 isInternalBuild];

      if (v54)
      {
        if (qword_101694418 != -1)
        {
          swift_once();
        }

        v55 = sub_1000076D4(v127, qword_101696A00);
        swift_beginAccess();
        v56 = v126;
        sub_1000D2A70(v55, v126, &unk_101696900, &unk_10138B1E0);
        v57 = v142;
        if ((*v125)(v56, 1, v142) != 1)
        {
          v42 = v140;
          (*v141)(v140, v56, v57);
          v43 = v57;
          goto LABEL_8;
        }

        sub_10000B3A8(v56, &unk_101696900, &unk_10138B1E0);
      }
    }

    My = type metadata accessor for Feature.FindMy();
    v156 = My;
    v157 = sub_1008345FC(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
    v59 = sub_1000280DC(&aBlock);
    (*(*(My - 8) + 104))(v59, v129, My);
    LOBYTE(My) = isFeatureEnabled(_:)();
    sub_100007BAC(&aBlock);
    if (My)
    {
      if (qword_101694FD8 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&qword_101696CB8, &unk_10138B600);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v60 = *&v154;
      if ((LOBYTE(aBlock) & 1) == 0)
      {
        v61 = [objc_opt_self() defaultCenter];
        v157 = sub_1008347D8;
        v158 = 0;
        aBlock = COERCE_DOUBLE(_NSConcreteStackBlock);
        v154 = 1107296256;
        v155 = sub_100F0FA50;
        v156 = &unk_101635608;
        v62 = _Block_copy(&aBlock);

        v63 = [v61 addObserverForName:v105 object:0 queue:0 usingBlock:v62];
        _Block_release(v62);
        v21 = v143;
        swift_unknownObjectRelease();
      }

      if (qword_101694FE8 != -1)
      {
        swift_once();
      }

      if (*&qword_1016C0DA0 >= v60)
      {
        sub_100F10324(0);
      }

      Current = CFAbsoluteTimeGetCurrent();
      sub_1000BC4D4(&unk_1016B7CA0, &unk_101395220);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      if (Current - aBlock - *&v154 > 86400.0)
      {
        OSAllocatedUnfairLock.callAsFunction<A>(_:)();
        v103 = v41;
        v65 = v21;
        v66 = type metadata accessor for TaskPriority();
        v67 = *(v66 - 8);
        v68 = v128;
        (*(v67 + 56))(v128, 1, 1, v66);
        v69 = swift_allocObject();
        *(v69 + 16) = 0;
        *(v69 + 24) = 0;
        sub_1000D2A70(v68, v65, &qword_101698C00, &qword_10138B570);
        v70 = (*(v67 + 48))(v65, 1, v66);

        if (v70 == 1)
        {
          sub_10000B3A8(v65, &qword_101698C00, &qword_10138B570);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v67 + 8))(v65, v66);
        }

        v71 = *(v69 + 16);
        swift_unknownObjectRetain();

        v41 = v103;
        if (v71)
        {
          swift_getObjectType();
          v72 = dispatch thunk of Actor.unownedExecutor.getter();
          v74 = v73;
          swift_unknownObjectRelease();
        }

        else
        {
          v72 = 0;
          v74 = 0;
        }

        sub_10000B3A8(v128, &qword_101698C00, &qword_10138B570);
        v75 = swift_allocObject();
        *(v75 + 16) = &unk_1013BD7A8;
        *(v75 + 24) = v69;
        if (v74 | v72)
        {
          v149 = 0;
          v150 = 0;
          v151 = v72;
          v152 = v74;
        }

        swift_task_create();
      }

      v43 = v142;
      v42 = v140;
      Date.init(timeIntervalSinceReferenceDate:)();
    }

    else
    {
      v42 = v140;
      Date.init()();
      v43 = v142;
    }

LABEL_8:
    v38 &= v38 - 1;
    v44 = v137;
    v45 = v136;
    (*v132)(v137, v147, v136);
    v46 = v139;
    (*v141)((v44 + *(v139 + 20)), v42, v43);
    *(v44 + *(v46 + 24)) = v133;
    sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
    v47 = (*(v138 + 80) + 32) & ~*(v138 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = v130;
    sub_100833680(v44, v48 + v47, type metadata accessor for BeaconObservation);
    v49 = type metadata accessor for Transaction();
    __chkstk_darwin(v49);
    *(&v102 - 4) = v146;
    *(&v102 - 3) = v48;
    *(&v102 - 2) = 0;
    *(&v102 - 1) = 0;
    static Transaction.named<A>(_:with:)();

    v50 = v44;
    v25 = v45;
    sub_1008333E4(v50, type metadata accessor for BeaconObservation);
    v34 = v134;
    (*v131)(v134, v45);
    v21 = v143;
  }

  while (1)
  {
    v51 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v51 >= v39)
    {
      break;
    }

    v38 = *(v35 + 8 * v51);
    ++v40;
    if (v38)
    {
      v40 = v51;
      goto LABEL_14;
    }
  }

  v76 = type metadata accessor for TaskPriority();
  v77 = v119;
  (*(*(v76 - 8) + 56))(v119, 1, 1, v76);
  v78 = v124;
  v79 = v122;
  sub_100833680(v124, v122, type metadata accessor for OwnedBeaconGroup);
  v80 = *(v120 + 80);
  v81 = v121;
  v82 = swift_allocObject();
  *(v82 + 16) = 0;
  *(v82 + 24) = 0;
  sub_1008336E8(v79, v82 + ((v80 + 32) & ~v80), type metadata accessor for OwnedBeaconGroup);
  sub_10025EDD4(0, 0, v77, &unk_1013BD7C0, v82);

  v83 = v123;
  v84 = *&v123[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue];
  sub_100833680(v78, v79, type metadata accessor for OwnedBeaconGroup);
  v85 = (v80 + 16) & ~v80;
  v86 = swift_allocObject();
  sub_1008336E8(v79, v86 + v85, type metadata accessor for OwnedBeaconGroup);
  *(v86 + ((v81 + v85 + 7) & 0xFFFFFFFFFFFFFFF8)) = v83;
  v87 = swift_allocObject();
  *(v87 + 16) = sub_100832DF8;
  *(v87 + 24) = v86;
  v157 = sub_1000D2FB0;
  v158 = v87;
  aBlock = COERCE_DOUBLE(_NSConcreteStackBlock);
  v154 = 1107296256;
  v155 = sub_10013FE14;
  v156 = &unk_1016356F8;
  v88 = _Block_copy(&aBlock);
  v89 = v83;

  dispatch_sync(v84, v88);
  _Block_release(v88);
  LOBYTE(v84) = swift_isEscapingClosureAtFileLocation();

  if ((v84 & 1) == 0)
  {
    v90 = type metadata accessor for Transaction();
    __chkstk_darwin(v90);
    *(&v102 - 6) = v89;
    *(&v102 - 5) = v78;
    *(&v102 - 4) = a6;
    v91 = v110;
    *(&v102 - 3) = v109;
    *(&v102 - 2) = v91;
    static Transaction.named<A>(_:with:)();
    sub_1000BC488();
    v92 = v107;
    v93 = v106;
    v94 = v108;
    (*(v107 + 104))(v106, enum case for DispatchQoS.QoSClass.default(_:), v108);
    v95 = static OS_dispatch_queue.global(qos:)();
    (*(v92 + 8))(v93, v94);
    v96 = swift_allocObject();
    v97 = v118;
    *(v96 + 16) = v115;
    *(v96 + 24) = v97;
    v157 = sub_10041ABC0;
    v158 = v96;
    aBlock = COERCE_DOUBLE(_NSConcreteStackBlock);
    v154 = 1107296256;
    v155 = sub_100006684;
    v156 = &unk_101635748;
    v98 = _Block_copy(&aBlock);

    v99 = v111;
    static DispatchQoS.unspecified.getter();
    v148 = _swiftEmptyArrayStorage;
    sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v100 = v114;
    v101 = v117;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v98);

    (*(v116 + 8))(v100, v101);
    (*(v112 + 8))(v99, v113);

    return;
  }

LABEL_48:
  __break(1u);
}

void sub_10080AF18()
{
  v1 = v0;
  v65 = type metadata accessor for SystemInfo.DeviceLockState();
  v73 = *(v65 - 8);
  v2 = __chkstk_darwin(v65);
  v64 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v63 = &v50 - v4;
  v5 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  __chkstk_darwin(v5 - 8);
  v7 = (&v50 - v6);
  v72 = type metadata accessor for WildModeAssociationRecord(0);
  v8 = *(v72 - 8);
  __chkstk_darwin(v72);
  v60 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100519FB0();
  v15 = v14;
  v16 = v14 + 56;
  v17 = 1 << *(v14 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v14 + 56);
  v70 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_beaconStore;
  v52 = (v17 + 63) >> 6;
  v68 = (v8 + 48);
  v69 = v11 + 16;
  v59 = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
  v58 = (v73 + 13);
  v57 = v73 + 1;
  v53 = SPBeaconTypeHele;
  v71 = v11;
  v73 = (v11 + 8);

  v21 = 0;
  v67 = 0;
  v56 = xmmword_101385D80;
  v55 = v0;
  v62 = v10;
  v54 = v7;
  v61 = v20;
  v74 = v13;
  while (v19)
  {
LABEL_11:
    (*(v71 + 16))(v13, *(v15 + 48) + *(v71 + 72) * (__clz(__rbit64(v19)) | (v21 << 6)), v10);
    v26 = *(v1 + v70);
    sub_100023184(v13, v7);
    v27 = v72;
    if ((*v68)(v7, 1, v72) == 1)
    {
      v66 = v26;
      sub_10000B3A8(v7, &unk_1016C7C90, &qword_1013BB4B0);
      v28 = static os_log_type_t.info.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v29 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v30 = swift_allocObject();
      *(v30 + 16) = v56;
      v31 = v74;
      v32 = UUID.uuidString.getter();
      v34 = v33;
      *(v30 + 56) = &type metadata for String;
      *(v30 + 64) = sub_100008C00();
      *(v30 + 32) = v32;
      *(v30 + 40) = v34;
      v51 = v29;
      os_log(_:dso:log:_:_:)(v28, &_mh_execute_header, v29, "beaconRecord(for uuid: %@)", 26, 2, v30);

      v35 = v63;
      static SystemInfo.lockState.getter();
      v37 = v64;
      v36 = v65;
      (*v58)(v64, v59, v65);
      sub_1008345FC(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
      LOBYTE(v32) = dispatch thunk of static Equatable.== infix(_:_:)();
      v38 = *v57;
      (*v57)(v37, v36);
      v38(v35, v36);
      if (v32)
      {
        v49 = static os_log_type_t.default.getter();
        os_log(_:dso:log:_:_:)(v49, &_mh_execute_header, v51, "beaconRecord call failed because in device is in beforeFirstUnlock state", 72, 2, _swiftEmptyArrayStorage);
        v77 = 0;
        v75 = 0u;
        v76 = 0u;
LABEL_24:
        sub_10000B3A8(&v75, &qword_101696920, &unk_10138B200);
        (*v73)(v74, v62);

LABEL_25:

        return;
      }

      v39 = sub_100007F54();
      __chkstk_darwin(v39);
      *(&v50 - 2) = v31;
      v40 = v67;
      sub_1000314D0(sub_100030E14, v39, &v75);

      v41 = *(&v76 + 1);
      if (!*(&v76 + 1))
      {
        goto LABEL_24;
      }

      v42 = v77;
      sub_1000035D0(&v75, *(&v76 + 1));
      v43 = (*(v42 + 184))(v41, v42);
      sub_100007BAC(&v75);
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = v40;
      if (v44 == v47 && v46 == v48)
      {
        v24 = 1;
      }

      else
      {
        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v1 = v55;

      v15 = v61;
      v10 = v62;
      v7 = v54;
    }

    else
    {
      v22 = v60;
      sub_1008336E8(v7, v60, type metadata accessor for WildModeAssociationRecord);
      v23 = *(v22 + *(v27 + 52));
      sub_1008333E4(v22, type metadata accessor for WildModeAssociationRecord);
      v24 = v23 == 3;
    }

    v19 &= v19 - 1;
    v13 = v74;
    (*v73)(v74, v10);
    if ((v24 & 1) == 0)
    {

      goto LABEL_25;
    }
  }

  while (1)
  {
    v25 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v25 >= v52)
    {

      return;
    }

    v19 = *(v16 + 8 * v25);
    ++v21;
    if (v19)
    {
      v21 = v25;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_10080B6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v104 = a3;
  v105 = a4;
  v112 = a1;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v110 = *(v8 - 8);
  v111 = v8;
  __chkstk_darwin(v8);
  v107 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v108 = *(v10 - 8);
  v109 = v10;
  __chkstk_darwin(v10);
  v106 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for UUID();
  v12 = *(v101 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v101);
  v102 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v14);
  v17 = &v92 - v16;
  __chkstk_darwin(v15);
  v98 = &v92 - v18;
  v19 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  __chkstk_darwin(v19 - 8);
  v21 = (&v92 - v20);
  v22 = type metadata accessor for OwnedBeaconGroup(0);
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v100 = &v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v96 = &v92 - v27;
  v97 = v28;
  __chkstk_darwin(v26);
  v30 = &v92 - v29;
  sub_100AC53EC(a2, v21);
  v99 = v23;
  v31 = (*(v23 + 48))(v21, 1, v22);
  v103 = v5;
  v113 = v17;
  if (v31 == 1)
  {
    sub_10000B3A8(v21, &unk_1016AF8B0, &unk_1013A0700);
    v100 = *&v5[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue];
    v32 = *(v12 + 16);
    v33 = v17;
    v34 = v101;
    v32(v33, a2, v101);
    v32(v102, v112, v34);
    v35 = *(v12 + 80);
    v36 = (v35 + 16) & ~v35;
    v37 = (v13 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
    v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
    v40 = (v35 + 16 + v39) & ~v35;
    v41 = swift_allocObject();
    v42 = *(v12 + 32);
    v42(v41 + v36, v113, v34);
    *(v41 + v37) = a5;
    v44 = v103;
    v43 = v104;
    *(v41 + v38) = v103;
    v45 = (v41 + v39);
    v46 = v105;
    *v45 = v43;
    v45[1] = v46;
    v42(v41 + v40, v102, v34);
    v119 = sub_100832154;
    v120 = v41;
    aBlock = _NSConcreteStackBlock;
    v116 = 1107296256;
    v117 = sub_100006684;
    v118 = &unk_1016351A8;
    v47 = _Block_copy(&aBlock);
    v48 = v44;

    v49 = v106;
    static DispatchQoS.unspecified.getter();
    v114 = _swiftEmptyArrayStorage;
    sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v50 = v107;
    v51 = v111;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v47);
    (*(v110 + 8))(v50, v51);
    (*(v108 + 8))(v49, v109);
  }

  else
  {
    v52 = v13;
    v53 = v12;
    v54 = v101;
    sub_1008336E8(v21, v30, type metadata accessor for OwnedBeaconGroup);
    if (qword_101694960 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_1000076D4(v55, qword_10177B380);
    v102 = v30;
    v56 = v96;
    sub_100833680(v30, v96, type metadata accessor for OwnedBeaconGroup);
    v57 = v53;
    v58 = *(v53 + 16);
    v59 = v98;
    v60 = v112;
    v61 = v54;
    v95 = v53 + 16;
    v94 = v58;
    v58(v98, v112, v54);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      aBlock = v92;
      *v64 = 136315394;
      v93 = v52;
      v65 = v63;
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v66 = dispatch thunk of CustomStringConvertible.description.getter();
      v68 = v67;
      sub_1008333E4(v56, type metadata accessor for OwnedBeaconGroup);
      v69 = sub_1000136BC(v66, v68, &aBlock);

      *(v64 + 4) = v69;
      *(v64 + 12) = 2080;
      v70 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v71;
      (*(v57 + 8))(v59, v54);
      v73 = sub_1000136BC(v70, v72, &aBlock);
      v61 = v54;

      *(v64 + 14) = v73;
      v74 = v65;
      v52 = v93;
      _os_log_impl(&_mh_execute_header, v62, v74, "Stop sound for group %s. CommandId %s", v64, 0x16u);
      swift_arrayDestroy();

      v60 = v112;
    }

    else
    {

      (*(v57 + 8))(v59, v54);
      sub_1008333E4(v56, type metadata accessor for OwnedBeaconGroup);
    }

    v75 = v103;
    v76 = v113;
    v112 = *&v103[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue];
    v77 = v100;
    sub_100833680(v102, v100, type metadata accessor for OwnedBeaconGroup);
    v94(v76, v60, v61);
    v78 = (*(v99 + 80) + 16) & ~*(v99 + 80);
    v79 = v61;
    v80 = (v97 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
    v81 = (v80 + 15) & 0xFFFFFFFFFFFFFFF8;
    v82 = (*(v57 + 80) + v81 + 8) & ~*(v57 + 80);
    v83 = swift_allocObject();
    sub_1008336E8(v77, v83 + v78, type metadata accessor for OwnedBeaconGroup);
    *(v83 + v80) = v75;
    *(v83 + v81) = a5;
    (*(v57 + 32))(v83 + v82, v113, v79);
    v84 = (v83 + ((v52 + v82 + 7) & 0xFFFFFFFFFFFFFFF8));
    v85 = v105;
    *v84 = v104;
    v84[1] = v85;
    v119 = sub_100832208;
    v120 = v83;
    aBlock = _NSConcreteStackBlock;
    v116 = 1107296256;
    v117 = sub_100006684;
    v118 = &unk_1016351F8;
    v86 = _Block_copy(&aBlock);
    v87 = v75;

    v88 = v106;
    static DispatchQoS.unspecified.getter();
    v114 = _swiftEmptyArrayStorage;
    sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v89 = v107;
    v90 = v111;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v86);
    (*(v110 + 8))(v89, v90);
    (*(v108 + 8))(v88, v109);
    sub_1008333E4(v102, type metadata accessor for OwnedBeaconGroup);
  }
}

void *sub_10080C294@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for Date();
  v47 = *(v8 - 8);
  v48 = v8;
  __chkstk_darwin(v8);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  __chkstk_darwin(v10 - 8);
  v12 = (&v42 - v11);
  v13 = type metadata accessor for OwnedBeaconGroup(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100AC53EC(a2, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10000B3A8(v12, &unk_1016AF8B0, &unk_1013A0700);
    result = sub_10080C89C(a2);
    v18 = result;
  }

  else
  {
    sub_1008336E8(v12, v16, type metadata accessor for OwnedBeaconGroup);
    sub_100519FB0();
    v20 = v19;
    v21 = a1;
    v22 = sub_1008319C0(v20, v21, sub_10080C89C);

    v44 = v16;
    v45 = a3;
    if (v22 >> 62)
    {
      goto LABEL_49;
    }

    for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v24 = 0;
      v25 = v22 & 0xC000000000000001;
      do
      {
        if (v25)
        {
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v26 = *(v22 + 8 * v24 + 32);
        }

        v18 = v26;
        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        if (![v26 state])
        {
LABEL_30:
          sub_1008333E4(v44, type metadata accessor for OwnedBeaconGroup);

          goto LABEL_51;
        }

        ++v24;
      }

      while (v27 != i);
      v28 = 0;
      while (1)
      {
        if (v25)
        {
          v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v28 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_44;
          }

          v29 = *(v22 + 8 * v28 + 32);
        }

        v18 = v29;
        v30 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if ([v29 state] == 1)
        {
          goto LABEL_30;
        }

        ++v28;
        if (v30 == i)
        {
          v31 = 0;
          while (1)
          {
            if (v25)
            {
              v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v31 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_46;
              }

              v32 = *(v22 + 8 * v31 + 32);
            }

            v18 = v32;
            v33 = v31 + 1;
            if (__OFADD__(v31, 1))
            {
              goto LABEL_45;
            }

            if ([v32 state] == 4)
            {
              goto LABEL_30;
            }

            ++v31;
            if (v33 == i)
            {
              v34 = 0;
              v43 = v4;
              while (1)
              {
                if (v25)
                {
                  v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (v34 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_48;
                  }

                  v36 = *(v22 + 8 * v34 + 32);
                }

                v18 = v36;
                v4 = v34 + 1;
                if (__OFADD__(v34, 1))
                {
                  goto LABEL_47;
                }

                v37 = [v36 error];
                if (v37)
                {
                  v50 = v37;
                  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                  type metadata accessor for CommandError(0);
                  if (swift_dynamicCast())
                  {
                    v42 = v49;
                    v50 = v49;
                    sub_1008345FC(&qword_101696428, type metadata accessor for CommandError, &unk_10138A938);
                    _BridgedStoredNSError.code.getter();

                    if (v49 == 10)
                    {
                      sub_1008333E4(v44, type metadata accessor for OwnedBeaconGroup);

                      a3 = v45;
                      goto LABEL_52;
                    }
                  }
                }

                ++v34;
                v35 = v4 == i;
                v4 = v43;
                if (v35)
                {
                  goto LABEL_50;
                }
              }
            }
          }
        }
      }

LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      ;
    }

LABEL_50:

    v38 = SPBeaconTaskNamePlaySound;
    v39 = v46;
    static Date.trustedNow.getter(v46);
    v40 = objc_allocWithZone(SPBeaconTaskInformation);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v18 = [v40 initWithName:v38 lastUpdated:isa error:0 state:2];

    (*(v47 + 8))(v39, v48);
    result = sub_1008333E4(v44, type metadata accessor for OwnedBeaconGroup);
LABEL_51:
    a3 = v45;
  }

LABEL_52:
  *a3 = v18;
  return result;
}

id sub_10080C89C(void *a1)
{
  v294 = a1;
  v2 = sub_1000BC4D4(&qword_1016998E0, &qword_101392030);
  __chkstk_darwin(v2 - 8);
  v287 = &v257 - v3;
  v4 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v4 - 8);
  v272 = &v257 - v5;
  v273 = type metadata accessor for OwnedBeaconRecord(0);
  v271 = *(v273 - 8);
  v6 = __chkstk_darwin(v273);
  v266 = &v257 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v269 = &v257 - v8;
  v288 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator(0);
  v290 = *(v288 - 8);
  v9 = __chkstk_darwin(v288);
  v285 = &v257 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v281 = &v257 - v12;
  v13 = __chkstk_darwin(v11);
  v282 = &v257 - v14;
  v15 = __chkstk_darwin(v13);
  v263 = &v257 - v16;
  v17 = __chkstk_darwin(v15);
  v268 = (&v257 - v18);
  v19 = __chkstk_darwin(v17);
  v260 = &v257 - v20;
  v21 = __chkstk_darwin(v19);
  v262 = &v257 - v22;
  v23 = __chkstk_darwin(v21);
  v264 = &v257 - v24;
  v25 = __chkstk_darwin(v23);
  v267 = &v257 - v26;
  v27 = __chkstk_darwin(v25);
  v258 = &v257 - v28;
  v29 = __chkstk_darwin(v27);
  v257 = &v257 - v30;
  v31 = __chkstk_darwin(v29);
  v259 = &v257 - v32;
  v33 = __chkstk_darwin(v31);
  v270 = &v257 - v34;
  __chkstk_darwin(v33);
  v274 = &v257 - v35;
  v36 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  __chkstk_darwin(v36 - 8);
  v279 = (&v257 - v37);
  v278 = type metadata accessor for OwnedBeaconGroup(0);
  v277 = *(v278 - 1);
  __chkstk_darwin(v278);
  v276 = (&v257 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v39 - 8);
  v283 = &v257 - v40;
  v289 = type metadata accessor for UUID();
  v291 = *(v289 - 8);
  v41 = __chkstk_darwin(v289);
  v286 = &v257 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v284 = &v257 - v44;
  v45 = __chkstk_darwin(v43);
  v275 = &v257 - v46;
  v47 = __chkstk_darwin(v45);
  v261 = &v257 - v48;
  v49 = __chkstk_darwin(v47);
  v265 = &v257 - v50;
  __chkstk_darwin(v49);
  v280 = &v257 - v51;
  v52 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  __chkstk_darwin(v52 - 8);
  v54 = &v257 - v53;
  v55 = type metadata accessor for BeaconObservation(0);
  v56 = *(v55 - 8);
  __chkstk_darwin(v55);
  v58 = &v257 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for Date();
  v292 = *(v59 - 8);
  v293 = v59;
  __chkstk_darwin(v59);
  v61 = &v257 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for DispatchPredicate();
  v63 = *(v62 - 8);
  __chkstk_darwin(v62);
  v65 = &v257 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v296 = v1;
  v66 = *(v1 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue);
  *v65 = v66;
  (*(v63 + 104))(v65, enum case for DispatchPredicate.onQueue(_:), v62);
  v67 = v66;
  LOBYTE(v66) = _dispatchPreconditionTest(_:)();
  (*(v63 + 8))(v65, v62);
  if (v66)
  {
    Date.init()();
    v65 = v61;
    if (qword_101694920 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v68 = v294;
  v69 = sub_100035730(v294, sub_100526B58, 0);
  sub_1012BB138(v69, v54);

  if ((*(v56 + 48))(v54, 1, v55) == 1)
  {
    v70 = v65;
    sub_10000B3A8(v54, &qword_1016A42E0, &qword_1013B0010);
    v295 = 2;
  }

  else
  {
    sub_1008336E8(v54, v58, type metadata accessor for BeaconObservation);
    v71 = v58[*(v55 + 24)];
    if (v71 == 23)
    {
      v73 = v292;
      v72 = v293;
      (*(v292 + 8))(v65, v293);
      v76 = 4;
    }

    else
    {
      v73 = v292;
      v72 = v293;
      if (v71 == 24)
      {
        (*(v292 + 8))(v65, v293);
        v76 = 1;
      }

      else if (v71 == 25)
      {
        v74 = sub_1008108D4(v58);
        (*(v292 + 8))(v65, v293);
        v75 = !v74;
        v73 = v292;
        v72 = v293;
        v76 = 2;
        if (v75)
        {
          v76 = 0;
        }
      }

      else
      {
        (*(v292 + 8))(v65, v293);
        v76 = 2;
      }
    }

    v295 = v76;
    v77 = &v58[*(v55 + 20)];
    v70 = v65;
    (*(v73 + 16))(v65, v77, v72);
    sub_1008333E4(v58, type metadata accessor for BeaconObservation);
  }

  sub_100025020(v68, &v298);
  if (!v299)
  {
    sub_10000B3A8(&v298, &qword_101696920, &unk_10138B200);
LABEL_21:
    v84 = v289;
LABEL_25:
    v88 = v288;
    goto LABEL_26;
  }

  sub_10000A748(&v298, &v301);
  v78 = v302;
  v79 = v303;
  sub_1000035D0(&v301, v302);
  if (((*(v79 + 120))(v78, v79) & 1) == 0)
  {
    sub_100007BAC(&v301);
    goto LABEL_21;
  }

  v80 = v302;
  v81 = v303;
  sub_1000035D0(&v301, v302);
  v82 = v283;
  (*(v81 + 200))(v80, v81);
  v83 = v291;
  v84 = v289;
  if ((*(v291 + 6))(v82, 1, v289) == 1)
  {
    v85 = &qword_1016980D0;
    v86 = &unk_10138F3B0;
LABEL_24:
    sub_10000B3A8(v82, v85, v86);
    sub_100007BAC(&v301);
    goto LABEL_25;
  }

  v87 = v280;
  (*(v83 + 4))(v280, v82, v84);
  v82 = v279;
  sub_100AC53EC(v87, v279);
  if ((v277[6])(v82, 1, v278) == 1)
  {
    (*(v83 + 1))(v87, v84);
    v85 = &unk_1016AF8B0;
    v86 = &unk_1013A0700;
    goto LABEL_24;
  }

  v129 = v276;
  sub_1008336E8(v82, v276, type metadata accessor for OwnedBeaconGroup);
  v130 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_coordinators;
  v131 = v296;
  swift_beginAccess();
  v279 = v130;
  v132 = *(v130 + v131);
  v88 = v288;
  if (!*(v132 + 16))
  {
    goto LABEL_67;
  }

  v133 = sub_1000210EC(v294);
  if ((v134 & 1) == 0)
  {

LABEL_67:
    sub_1008333E4(v129, type metadata accessor for OwnedBeaconGroup);
    (*(v291 + 1))(v280, v84);
    goto LABEL_123;
  }

  v135 = *(v132 + 56);
  v283 = *(v290 + 72);
  v136 = v270;
  sub_100833680(v135 + v283 * v133, v270, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);

  sub_1008336E8(v136, v274, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
  v137 = v272;
  sub_100A85ED4(v129, v272);
  v138 = v273;
  if ((v271[6].isa)(v137, 1, v273) == 1)
  {
    sub_10000B3A8(v137, &unk_1016A9A20, &qword_10138B280);
LABEL_70:
    sub_100519FB0();
    v142 = v141;
    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v143 = v291;
    v273 = *(v291 + 9);
    v144 = swift_allocObject();
    *(v144 + 16) = xmmword_101385D80;
    v146 = v302;
    v145 = v303;
    sub_1000035D0(&v301, v302);
    (*(*(*(v145 + 8) + 8) + 32))(v146);
    v147 = sub_100615D6C(v144, v142);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v148 = (v147 + 7);
    v149 = 1 << *(v147 + 32);
    v150 = -1;
    if (v149 < 64)
    {
      v150 = ~(-1 << v149);
    }

    v151 = v150 & v147[7];
    v152 = (v149 + 63) >> 6;
    v153 = (v143 + 16);
    v278 = (v143 + 8);
    v277 = v147;

    v154 = 0;
    v155 = _swiftEmptyArrayStorage;
LABEL_73:
    v156 = v275;
    while (v151)
    {
LABEL_80:
      v158 = __clz(__rbit64(v151));
      v151 &= v151 - 1;
      (*v153)(v156, v277[6] + (v158 | (v154 << 6)) * v273, v289);
      v146 = *(v279 + v296);
      if (*(v146 + 16))
      {

        v159 = sub_1000210EC(v156);
        if (v160)
        {
          v161 = v260;
          sub_100833680(*(v146 + 56) + v159 * v283, v260, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
          (*v278)(v275, v289);

          sub_1008336E8(v161, v262, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v155 = sub_100A5DEF4(0, v155[2].isa + 1, 1, v155);
          }

          isa = v155[2].isa;
          v162 = v155[3].isa;
          v146 = isa + 1;
          if (isa >= v162 >> 1)
          {
            v155 = sub_100A5DEF4((v162 > 1), isa + 1, 1, v155);
          }

          v155[2].isa = v146;
          sub_1008336E8(v262, v155 + ((*(v290 + 80) + 32) & ~*(v290 + 80)) + isa * v283, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
          goto LABEL_73;
        }

        v156 = v275;
      }

      (*v278)(v156, v289);
    }

    while (1)
    {
      v157 = v154 + 1;
      if (__OFADD__(v154, 1))
      {
        __break(1u);
LABEL_132:
        v212 = 0xE700000000000000;
        v213 = 0x6465756575712ELL;
        goto LABEL_134;
      }

      if (v157 >= v152)
      {
        break;
      }

      v151 = *(v148 + 8 * v157);
      ++v154;
      if (v151)
      {
        v154 = v157;
        goto LABEL_80;
      }
    }

    v164 = v155[2].isa;
    v84 = v289;
    v88 = v288;
    v165 = v276;
    v166 = v268;
    if (v164)
    {
      v167 = 0;
      v168 = v155;
      while (1)
      {
        if (v167 >= v155[2].isa)
        {
          __break(1u);
          goto LABEL_165;
        }

        sub_100833680(v168 + ((*(v290 + 80) + 32) & ~*(v290 + 80)), v166, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
        if (*(v166 + v88[10]))
        {
          break;
        }

        ++v167;
        sub_1008333E4(v166, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
        v168 += v283;
        if (v164 == v167)
        {
          goto LABEL_93;
        }
      }

      v198 = v264;
      sub_1008336E8(v166, v264, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
      v199 = v267;
      sub_1008336E8(v198, v267, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
      v200 = v274;
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        sub_1008333E4(v199, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
        v169 = v200;
        goto LABEL_94;
      }

      v201 = sub_10080C89C((v199 + v88[5]));
      if (qword_101694960 != -1)
      {
        swift_once();
      }

      v202 = type metadata accessor for Logger();
      sub_1000076D4(v202, qword_10177B380);
      sub_10001F280(&v301, &v298);
      v203 = v263;
      sub_100833680(v199, v263, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
      v204 = v201;
      v155 = Logger.logObject.getter();
      LOBYTE(v151) = static os_log_type_t.info.getter();
      v294 = v204;

      if (!os_log_type_enabled(v155, v151))
      {

        sub_1008333E4(v203, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
        sub_1008333E4(v199, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
        sub_1008333E4(v200, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
        sub_1008333E4(v165, type metadata accessor for OwnedBeaconGroup);
        (*v278)(v280, v84);
        (*(v292 + 8))(v70, v293);
        sub_100007BAC(&v298);
        goto LABEL_172;
      }

      v152 = 0x676E696E6E75722ELL;
      v148 = swift_slowAlloc();
      v296 = swift_slowAlloc();
      v297 = v296;
      *v148 = 141559299;
      *(v148 + 4) = 1752392040;
      *(v148 + 12) = 2081;
      v206 = v299;
      v205 = v300;
      sub_1000035D0(&v298, v299);
      v207 = v261;
      (*(*(*(v205 + 8) + 8) + 32))(v206);
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v208 = dispatch thunk of CustomStringConvertible.description.getter();
      v210 = v209;
      v291 = *v278;
      (v291)(v207, v84);
      sub_100007BAC(&v298);
      v211 = sub_1000136BC(v208, v210, &v297);

      *(v148 + 14) = v211;
      *(v148 + 22) = 2082;
      if (v295 <= 1)
      {
        if (v295)
        {
          v213 = 0x676E69646E65702ELL;
        }

        else
        {
          v213 = 0x676E696E6E75722ELL;
        }

        v212 = 0xE800000000000000;
        v146 = v267;
      }

      else
      {
        v146 = v267;
        if (v295 == 4)
        {
          goto LABEL_132;
        }

        if (v295 == 3)
        {
          v212 = 0xE600000000000000;
          v213 = 0x726F7272652ELL;
        }

        else
        {
          v212 = 0xE500000000000000;
          v213 = 0x656C64692ELL;
        }
      }

LABEL_134:
      v237 = sub_1000136BC(v213, v212, &v297);

      *(v148 + 24) = v237;
      *(v148 + 32) = 2082;
      v238 = [v294 state];
      if (v238 > 1)
      {
        switch(v238)
        {
          case 4:
            v239 = 0xE700000000000000;
            v152 = 0x6465756575712ELL;
            goto LABEL_148;
          case 3:
            v239 = 0xE600000000000000;
            v152 = 0x726F7272652ELL;
            goto LABEL_148;
          case 2:
            v239 = 0xE500000000000000;
            v152 = 0x656C64692ELL;
            goto LABEL_148;
        }
      }

      else
      {
        switch(v238)
        {
          case -1:
            v239 = 0xE800000000000000;
            v152 = 0x6E776F6E6B6E752ELL;
            goto LABEL_148;
          case 0:
            v239 = 0xE800000000000000;
            goto LABEL_148;
          case 1:
            v239 = 0xE800000000000000;
            v152 = 0x676E69646E65702ELL;
LABEL_148:
            v240 = sub_1000136BC(v152, v239, &v297);

            *(v148 + 34) = v240;
            *(v148 + 42) = 2160;
            *(v148 + 44) = 1752392040;
            *(v148 + 52) = 2081;
            v241 = v263;
            v242 = v289;
            v243 = dispatch thunk of CustomStringConvertible.description.getter();
            v245 = v244;
            sub_1008333E4(v241, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
            v246 = sub_1000136BC(v243, v245, &v297);

            *(v148 + 54) = v246;
            _os_log_impl(&_mh_execute_header, v155, v151, "Beacon: %{private,mask.hash}s has state: %{public}s, -- taking playSound taskInfo state %{public}s from %{private,mask.hash}s.", v148, 0x3Eu);
            swift_arrayDestroy();

            sub_1008333E4(v146, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
            sub_1008333E4(v274, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
            sub_1008333E4(v276, type metadata accessor for OwnedBeaconGroup);
            (v291)(v280, v242);
            (*(v292 + 8))(v70, v293);
            goto LABEL_172;
        }
      }

      v152 = 0xD000000000000010;
      v239 = 0x8000000101360CA0;
      goto LABEL_148;
    }

LABEL_93:

    v169 = v274;
LABEL_94:
    sub_1008333E4(v169, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
    sub_1008333E4(v165, type metadata accessor for OwnedBeaconGroup);
    (*v278)(v280, v84);
LABEL_123:
    sub_100007BAC(&v301);
LABEL_26:
    v89 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_coordinators;
    v90 = v296;
    swift_beginAccess();
    v91 = *(v90 + v89);
    if (*(v91 + 16))
    {

      v92 = v294;
      v93 = sub_1000210EC(v294);
      v94 = v70;
      v95 = v291;
      if (v96)
      {
        v97 = v290;
        v98 = v281;
        sub_100833680(*(v91 + 56) + *(v290 + 72) * v93, v281, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);

        v99 = v282;
        sub_1008336E8(v98, v282, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
        v100 = *(v99 + v88[9]);
        swift_errorRetain();
        sub_1008333E4(v99, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
        v101 = v295;
        if (v100)
        {
          v101 = 3;
        }

        v295 = v101;
        goto LABEL_34;
      }

      v100 = 0;
    }

    else
    {
      v100 = 0;
      v94 = v70;
      v95 = v291;
      v92 = v294;
    }

    v97 = v290;
LABEL_34:
    v102 = SPBeaconTaskNamePlaySound;
    swift_errorRetain();
    v291 = v94;
    v103.super.isa = Date._bridgeToObjectiveC()().super.isa;
    if (v100)
    {
      v104 = _convertErrorToNSError(_:)();
    }

    else
    {
      v104 = 0;
    }

    v105 = objc_allocWithZone(SPBeaconTaskInformation);
    v294 = [v105 initWithName:v102 lastUpdated:v103.super.isa error:v104 state:v295];

    v106 = *(v296 + v89);
    if (*(v106 + 16))
    {

      v107 = sub_1000210EC(v92);
      v108 = v287;
      v109 = v286;
      if (v110)
      {
        sub_100833680(*(v106 + 56) + *(v97 + 72) * v107, v287, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
        v111 = 0;
      }

      else
      {
        v111 = 1;
      }
    }

    else
    {
      v111 = 1;
      v108 = v287;
      v109 = v286;
    }

    (*(v97 + 56))(v108, v111, 1, v88);
    if ((*(v97 + 48))(v108, 1, v88))
    {
      sub_10000B3A8(v108, &qword_1016998E0, &qword_101392030);
      v112 = 0;
    }

    else
    {
      v113 = v285;
      sub_100833680(v108, v285, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
      sub_10000B3A8(v108, &qword_1016998E0, &qword_101392030);
      v114 = v284;
      v95[2](v284, v113, v84);
      sub_1008333E4(v113, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
      v112 = UUID._bridgeToObjectiveC()().super.isa;
      (v95[1])(v114, v84);
    }

    [v294 setCommandIdentifier:v112];

    if (qword_101694960 != -1)
    {
      swift_once();
    }

    v115 = type metadata accessor for Logger();
    sub_1000076D4(v115, qword_10177B380);
    v95[2](v109, v92, v84);
    v116 = Logger.logObject.getter();
    v117 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v116, v117))
    {
      v118 = v109;
      v119 = swift_slowAlloc();
      v120 = v95;
      *&v298 = swift_slowAlloc();
      *v119 = 141558531;
      *(v119 + 4) = 1752392040;
      *(v119 + 12) = 2081;
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v121 = dispatch thunk of CustomStringConvertible.description.getter();
      v123 = v122;
      (v120[1])(v118, v84);
      v124 = sub_1000136BC(v121, v123, &v298);

      *(v119 + 14) = v124;
      *(v119 + 22) = 2082;
      if (v295 <= 1)
      {
        if (v295)
        {
          v125 = 0xE800000000000000;
          v126 = 0x676E69646E65702ELL;
        }

        else
        {
          v126 = 0x676E696E6E75722ELL;
          v125 = 0xE800000000000000;
        }
      }

      else if (v295 == 4)
      {
        v125 = 0xE700000000000000;
        v126 = 0x6465756575712ELL;
      }

      else if (v295 == 3)
      {
        v125 = 0xE600000000000000;
        v126 = 0x726F7272652ELL;
      }

      else
      {
        v125 = 0xE500000000000000;
        v126 = 0x656C64692ELL;
      }

      v127 = sub_1000136BC(v126, v125, &v298);

      *(v119 + 24) = v127;
      _os_log_impl(&_mh_execute_header, v116, v117, "TaskInfo for Beacon: %{private,mask.hash}s has state: %{public}s.", v119, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (v95[1])(v109, v84);
    }

    (*(v292 + 8))(v291, v293);
    return v294;
  }

  v139 = v269;
  sub_1008336E8(v137, v269, type metadata accessor for OwnedBeaconRecord);
  v140 = *(v138 + 20);
  sub_1008345FC(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    sub_1008333E4(v139, type metadata accessor for OwnedBeaconRecord);
    goto LABEL_70;
  }

  v277 = v140;
  v170 = sub_100A8B080(v129);
  __chkstk_darwin(v170);
  *(&v257 - 2) = v139;
  sub_1012BC794(sub_100832138, (&v257 - 4), v170);
  v172 = v171;

  if (v172)
  {
    v173 = v172;
  }

  else
  {
    v173 = &_swiftEmptySetSingleton;
  }

  if (qword_101694960 != -1)
  {
    swift_once();
  }

  v174 = type metadata accessor for Logger();
  v175 = sub_1000076D4(v174, qword_10177B380);
  v176 = v265;
  (*(v291 + 2))(v265, v294, v84);
  v177 = v266;
  sub_100833680(v139, v266, type metadata accessor for OwnedBeaconRecord);

  v275 = v175;
  v178 = Logger.logObject.getter();
  LODWORD(v175) = static os_log_type_t.info.getter();

  LODWORD(v278) = v175;
  v179 = os_log_type_enabled(v178, v175);
  v180 = v173;
  if (v179)
  {
    v181 = swift_slowAlloc();
    v270 = v173;
    v271 = v178;
    v182 = v181;
    v272 = swift_slowAlloc();
    *&v298 = v272;
    *v182 = 141559299;
    *(v182 + 4) = 1752392040;
    *(v182 + 12) = 2081;
    v268 = &type metadata accessor for UUID;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v183 = v177;
    v184 = dispatch thunk of CustomStringConvertible.description.getter();
    v186 = v185;
    v187 = *(v291 + 1);
    (v187)(v176, v289);
    v188 = sub_1000136BC(v184, v186, &v298);

    *(v182 + 14) = v188;
    *(v182 + 22) = 2160;
    *(v182 + 24) = 1752392040;
    *(v182 + 32) = 2081;
    v189 = dispatch thunk of CustomStringConvertible.description.getter();
    v191 = v190;
    sub_1008333E4(v183, type metadata accessor for OwnedBeaconRecord);
    v192 = sub_1000136BC(v189, v191, &v298);

    *(v182 + 34) = v192;
    *(v182 + 42) = 2160;
    v88 = v288;
    *(v182 + 44) = 1752392040;
    v84 = v289;
    *(v182 + 52) = 2081;
    v129 = v276;
    sub_1008345FC(&qword_1016967B0, v268, &protocol conformance descriptor for UUID);
    v193 = v270;
    v194 = Set.description.getter();
    v196 = sub_1000136BC(v194, v195, &v298);

    *(v182 + 54) = v196;
    v197 = v271;
    _os_log_impl(&_mh_execute_header, v271, v278, "device: %{private,mask.hash}s, primaryBeacon: %{private,mask.hash}s, nearbyPeers: %{private,mask.hash}s", v182, 0x3Eu);
    swift_arrayDestroy();
  }

  else
  {

    sub_1008333E4(v177, type metadata accessor for OwnedBeaconRecord);
    v187 = *(v291 + 1);
    (v187)(v176, v84);
    v193 = v180;
  }

  v214 = sub_100037E20(v294, v193);

  v215 = v274;
  v216 = v269;
  if ((v214 & 1) == 0 || (v217 = *(v279 + v296), !*(v217 + 16)))
  {
LABEL_122:
    sub_1008333E4(v215, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
    sub_1008333E4(v129, type metadata accessor for OwnedBeaconGroup);
    (v187)(v280, v84);
    sub_1008333E4(v216, type metadata accessor for OwnedBeaconRecord);
    goto LABEL_123;
  }

  v166 = v187;
  v218 = v274;

  v219 = sub_1000210EC(v277 + v216);
  if ((v220 & 1) == 0)
  {

    v215 = v218;
    v187 = v166;
    goto LABEL_122;
  }

  v221 = v257;
  sub_100833680(*(v217 + 56) + v219 * v283, v257, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);

  v222 = v259;
  sub_1008336E8(v221, v259, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
  v223 = sub_10080C89C((v222 + v88[5]));
  sub_10001F280(&v301, &v298);
  v224 = v258;
  sub_100833680(v222, v258, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
  v225 = v223;
  v155 = Logger.logObject.getter();
  v226 = static os_log_type_t.info.getter();
  v294 = v225;

  if (!os_log_type_enabled(v155, v226))
  {

    sub_1008333E4(v224, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
    sub_1008333E4(v222, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
    sub_1008333E4(v218, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
    sub_1008333E4(v129, type metadata accessor for OwnedBeaconGroup);
    (v166)(v280, v84);
    (*(v292 + 8))(v70, v293);
    sub_100007BAC(&v298);
    v167 = v269;
    goto LABEL_171;
  }

  LODWORD(v296) = v226;
  v227 = 0x676E696E6E75722ELL;
  v168 = swift_slowAlloc();
  v290 = swift_slowAlloc();
  v297 = v290;
  *v168 = 141559299;
  *(v168 + 4) = 1752392040;
  *(v168 + 12) = 2081;
  v229 = v299;
  v228 = v300;
  sub_1000035D0(&v298, v299);
  v230 = v261;
  (*(*(*(v228 + 8) + 8) + 32))(v229);
  sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v231 = dispatch thunk of CustomStringConvertible.description.getter();
  v233 = v232;
  v291 += 8;
  (v166)(v230, v84);
  sub_100007BAC(&v298);
  v234 = sub_1000136BC(v231, v233, &v297);

  *(v168 + 14) = v234;
  *(v168 + 22) = 2082;
  if (v295 <= 1)
  {
    v167 = v269;
    v235 = 0xE800000000000000;
    if (v295)
    {
      v236 = 0x676E69646E65702ELL;
    }

    else
    {
      v236 = 0x676E696E6E75722ELL;
    }
  }

  else
  {
    if (v295 == 4)
    {
      v235 = 0xE700000000000000;
      v236 = 0x6465756575712ELL;
    }

    else if (v295 == 3)
    {
      v235 = 0xE600000000000000;
      v236 = 0x726F7272652ELL;
    }

    else
    {
      v235 = 0xE500000000000000;
      v236 = 0x656C64692ELL;
    }

    v167 = v269;
  }

  v247 = sub_1000136BC(v236, v235, &v297);

  *(v168 + 24) = v247;
  *(v168 + 32) = 2082;
  v248 = [v294 state];
  if (v248 > 1)
  {
    switch(v248)
    {
      case 4:
        v249 = 0xE700000000000000;
        v227 = 0x6465756575712ELL;
        goto LABEL_170;
      case 3:
        v249 = 0xE600000000000000;
        v227 = 0x726F7272652ELL;
        goto LABEL_170;
      case 2:
        v249 = 0xE500000000000000;
        v227 = 0x656C64692ELL;
        goto LABEL_170;
    }

LABEL_167:
    v227 = 0xD000000000000010;
    v249 = 0x8000000101360CA0;
    goto LABEL_170;
  }

  if (v248 == -1)
  {
LABEL_165:
    v249 = 0xE800000000000000;
    v227 = 0x6E776F6E6B6E752ELL;
    goto LABEL_170;
  }

  if (!v248)
  {
    v249 = 0xE800000000000000;
    goto LABEL_170;
  }

  if (v248 != 1)
  {
    goto LABEL_167;
  }

  v249 = 0xE800000000000000;
  v227 = 0x676E69646E65702ELL;
LABEL_170:
  v250 = sub_1000136BC(v227, v249, &v297);

  *(v168 + 34) = v250;
  *(v168 + 42) = 2160;
  *(v168 + 44) = 1752392040;
  *(v168 + 52) = 2081;
  v251 = v258;
  v252 = v289;
  v253 = dispatch thunk of CustomStringConvertible.description.getter();
  v255 = v254;
  sub_1008333E4(v251, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
  v256 = sub_1000136BC(v253, v255, &v297);

  *(v168 + 54) = v256;
  _os_log_impl(&_mh_execute_header, v155, v296, "Beacon: %{private,mask.hash}s has state: %{public}s, -- taking playSound taskInfo state %{public}s from primary %{private,mask.hash}s.", v168, 0x3Eu);
  swift_arrayDestroy();

  sub_1008333E4(v259, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
  sub_1008333E4(v274, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
  sub_1008333E4(v276, type metadata accessor for OwnedBeaconGroup);
  (v166)(v280, v252);
  (*(v292 + 8))(v70, v293);
LABEL_171:
  sub_1008333E4(v167, type metadata accessor for OwnedBeaconRecord);
LABEL_172:
  sub_100007BAC(&v301);
  return v294;
}

void *sub_10080F2F4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v37 = type metadata accessor for Date();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v35 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  __chkstk_darwin(v8 - 8);
  v10 = (&v33 - v9);
  v11 = type metadata accessor for OwnedBeaconGroup(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100AC53EC(a2, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000B3A8(v10, &unk_1016AF8B0, &unk_1013A0700);
    result = sub_10080F73C(a2);
    v16 = result;
  }

  else
  {
    sub_1008336E8(v10, v14, type metadata accessor for OwnedBeaconGroup);
    sub_100519FB0();
    v18 = v17;
    v19 = a1;
    v20 = sub_1008319C0(v18, v19, sub_10080F73C);

    v33 = v3;
    v34 = a3;
    if (v20 >> 62)
    {
      goto LABEL_27;
    }

    for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v22 = 0;
      v23 = v20 & 0xC000000000000001;
      do
      {
        if (v23)
        {
          v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v24 = *(v20 + 8 * v22 + 32);
        }

        v16 = v24;
        v25 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        if (![v24 state])
        {
LABEL_22:
          sub_1008333E4(v14, type metadata accessor for OwnedBeaconGroup);

          goto LABEL_29;
        }

        ++v22;
      }

      while (v25 != i);
      v26 = 0;
      while (1)
      {
        if (v23)
        {
          v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v26 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_26;
          }

          v27 = *(v20 + 8 * v26 + 32);
        }

        v16 = v27;
        v28 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if ([v27 state] == 1)
        {
          goto LABEL_22;
        }

        ++v26;
        if (v28 == i)
        {
          goto LABEL_28;
        }
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      ;
    }

LABEL_28:

    v29 = SPBeaconTaskNameStopSound;
    v30 = v35;
    static Date.trustedNow.getter(v35);
    v31 = objc_allocWithZone(SPBeaconTaskInformation);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v16 = [v31 initWithName:v29 lastUpdated:isa error:0 state:2];

    (*(v36 + 8))(v30, v37);
    result = sub_1008333E4(v14, type metadata accessor for OwnedBeaconGroup);
LABEL_29:
    a3 = v34;
  }

  *a3 = v16;
  return result;
}

id sub_10080F73C(uint64_t a1)
{
  v70 = a1;
  v2 = sub_1000BC4D4(&qword_1016998E0, &qword_101392030);
  __chkstk_darwin(v2 - 8);
  v67 = &v58 - v3;
  v4 = type metadata accessor for UUID();
  v62 = *(v4 - 8);
  v63 = v4;
  __chkstk_darwin(v4);
  v61 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator(0);
  v65 = *(v6 - 8);
  v66 = v6;
  v7 = __chkstk_darwin(v6);
  v60 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v58 = &v58 - v10;
  __chkstk_darwin(v9);
  v59 = &v58 - v11;
  v12 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  __chkstk_darwin(v12 - 8);
  v14 = &v58 - v13;
  v15 = type metadata accessor for BeaconObservation(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for Date();
  v68 = *(v64 - 8);
  __chkstk_darwin(v64);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchPredicate();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = (&v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = v1;
  v25 = *(v1 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue);
  *v24 = v25;
  (*(v22 + 104))(v24, enum case for DispatchPredicate.onQueue(_:), v21);
  v26 = v25;
  LOBYTE(v25) = _dispatchPreconditionTest(_:)();
  (*(v22 + 8))(v24, v21);
  if (v25)
  {
    Date.init()();
    v21 = v20;
    if (qword_101694920 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v27 = sub_100035730(v70, sub_100526B58, 0);
  sub_1012BB138(v27, v14);

  v28 = (*(v16 + 48))(v14, 1, v15);
  v29 = v64;
  if (v28 == 1)
  {
    sub_10000B3A8(v14, &qword_1016A42E0, &qword_1013B0010);
    v30 = 2;
  }

  else
  {
    v31 = v68;
    (*(v68 + 8))(v21, v64);
    sub_1008336E8(v14, v18, type metadata accessor for BeaconObservation);
    v30 = 2 * (v18[*(v15 + 24)] != 26);
    (*(v31 + 16))(v21, &v18[*(v15 + 20)], v29);
    sub_1008333E4(v18, type metadata accessor for BeaconObservation);
  }

  v33 = v65;
  v32 = v66;
  v34 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_coordinators;
  v35 = v69;
  swift_beginAccess();
  v36 = *(v35 + v34);
  if (!*(v36 + 16))
  {
    goto LABEL_12;
  }

  v37 = sub_1000210EC(v70);
  if ((v38 & 1) == 0)
  {

LABEL_12:
    v42 = 0;
    goto LABEL_13;
  }

  v39 = v58;
  sub_100833680(*(v36 + 56) + *(v33 + 72) * v37, v58, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);

  v40 = v39;
  v41 = v59;
  sub_1008336E8(v40, v59, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
  v42 = *(v41 + *(v32 + 36));
  swift_errorRetain();
  sub_1008333E4(v41, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
  if (v42)
  {
    v30 = 3;
  }

LABEL_13:
  v43 = SPBeaconTaskNameStopSound;
  swift_errorRetain();
  v44.super.isa = Date._bridgeToObjectiveC()().super.isa;
  if (v42)
  {
    v45 = _convertErrorToNSError(_:)();
  }

  else
  {
    v45 = 0;
  }

  v46 = [objc_allocWithZone(SPBeaconTaskInformation) initWithName:v43 lastUpdated:v44.super.isa error:v45 state:v30];

  v47 = *(v69 + v34);
  if (*(v47 + 16))
  {

    v48 = sub_1000210EC(v70);
    v49 = v67;
    if (v50)
    {
      sub_100833680(*(v47 + 56) + *(v33 + 72) * v48, v67, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
      v51 = 0;
    }

    else
    {
      v51 = 1;
    }
  }

  else
  {
    v51 = 1;
    v49 = v67;
  }

  (*(v33 + 56))(v49, v51, 1, v32);
  if ((*(v33 + 48))(v49, 1, v32))
  {
    sub_10000B3A8(v49, &qword_1016998E0, &qword_101392030);
    isa = 0;
  }

  else
  {
    v53 = v60;
    sub_100833680(v49, v60, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
    sub_10000B3A8(v49, &qword_1016998E0, &qword_101392030);
    v55 = v61;
    v54 = v62;
    v56 = v63;
    (*(v62 + 16))(v61, v53, v63);
    sub_1008333E4(v53, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v54 + 8))(v55, v56);
  }

  [v46 setCommandIdentifier:isa];

  (*(v68 + 8))(v21, v29);
  return v46;
}

id sub_10080FFBC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SoundPlaybackManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10081008C(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  __chkstk_darwin(v2 - 8);
  v4 = (&v20[-1] - v3);
  v5 = type metadata accessor for WildModeAssociationRecord(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100023184(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000B3A8(v4, &unk_1016C7C90, &qword_1013BB4B0);
    sub_100025020(a1, v20);
    v9 = v21;
    if (v21)
    {
      v10 = v22;
      sub_1000035D0(v20, v21);
      v11 = (*(v10 + 184))(v9, v10);
      sub_100007BAC(v20);
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;
      if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
      {
        v16 = 1;
      }

      else
      {
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      sub_10000B3A8(v20, &qword_101696920, &unk_10138B200);
      v16 = 0;
    }
  }

  else
  {
    sub_1008336E8(v4, v8, type metadata accessor for WildModeAssociationRecord);
    v17 = v8[*(v5 + 52)];
    sub_1008333E4(v8, type metadata accessor for WildModeAssociationRecord);
    v16 = v17 == 3;
  }

  return v16 & 1;
}

uint64_t sub_100810310(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v35 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - v5;
  v7 = type metadata accessor for BeaconProductInfoRecord(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  __chkstk_darwin(v11 - 8);
  v13 = (&v34 - v12);
  v14 = type metadata accessor for WildModeAssociationRecord(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100023184(a1, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10000B3A8(v13, &unk_1016C7C90, &qword_1013BB4B0);
    sub_100025020(a1, &v38);
    if (v39)
    {
      sub_10000A748(&v38, v40);
      sub_100AC1584(a1, v6);
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {
        sub_10000B3A8(v6, &unk_1016AF8C0, &unk_1013A07A0);
        v19 = v41;
        v18 = v42;
        sub_1000035D0(v40, v41);
        LOBYTE(v19) = (*(v18 + 96))(v19, v18);
      }

      else
      {
        sub_1008336E8(v6, v10, type metadata accessor for BeaconProductInfoRecord);
        v32 = *&v10[*(v7 + 80)];
        sub_1008333E4(v10, type metadata accessor for BeaconProductInfoRecord);
        LODWORD(v19) = (v32 >> 8) & 1;
      }

      sub_100007BAC(v40);
    }

    else
    {
      sub_10000B3A8(&v38, &qword_101696920, &unk_10138B200);
      if (qword_101694968 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_1000076D4(v20, qword_1016AA7B0);
      v22 = v35;
      v21 = v36;
      v23 = v37;
      (*(v36 + 16))(v35, a1, v37);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v40[0] = v27;
        *v26 = 141558275;
        *(v26 + 4) = 1752392040;
        *(v26 + 12) = 2081;
        sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v28 = dispatch thunk of CustomStringConvertible.description.getter();
        v30 = v29;
        (*(v21 + 8))(v22, v23);
        v31 = sub_1000136BC(v28, v30, v40);

        *(v26 + 14) = v31;
        _os_log_impl(&_mh_execute_header, v24, v25, "Missing beacon record for %{private,mask.hash}s!", v26, 0x16u);
        sub_100007BAC(v27);
      }

      else
      {

        (*(v21 + 8))(v22, v23);
      }

      LOBYTE(v19) = 0;
    }
  }

  else
  {
    sub_1008336E8(v13, v17, type metadata accessor for WildModeAssociationRecord);
    LOBYTE(v19) = sub_1003073D8();
    sub_1008333E4(v17, type metadata accessor for WildModeAssociationRecord);
  }

  return v19 & 1;
}

BOOL sub_1008108D4(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v28 = *(v3 - 8);
  v29 = v3;
  __chkstk_darwin(v3);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v6 = __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_beaconStore);
  sub_100030068();

  v30 = v15;
  v31 = a1;
  QueueSynchronizer.conditionalSync<A>(_:)();
  sub_1000D2AD8(v8, v10, &qword_1016980D0, &unk_10138F3B0);
  v16 = *(v12 + 48);
  if (v16(v10, 1, v11) == 1)
  {
    (*(v12 + 16))(v14, a1, v11);
    if (v16(v10, 1, v11) != 1)
    {
      sub_10000B3A8(v10, &qword_1016980D0, &unk_10138F3B0);
    }
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
  }

  sub_100025020(v14, &v32);
  if (!v33)
  {
    (*(v12 + 8))(v14, v11);
    sub_10000B3A8(&v32, &qword_101696920, &unk_10138B200);
    return 0;
  }

  sub_10000A748(&v32, v34);
  v17 = v35;
  v18 = v36;
  sub_1000035D0(v34, v35);
  if (((*(v18 + 88))(v17, v18) & 1) == 0)
  {
    v19 = v35;
    v20 = v36;
    sub_1000035D0(v34, v35);
    if (((*(v20 + 120))(v19, v20) & 1) == 0)
    {
      (*(v12 + 8))(v14, v11);
      sub_100007BAC(v34);
      return 0;
    }
  }

  if (*(a1 + *(type metadata accessor for BeaconObservation(0) + 24)) == 25)
  {
    v21 = v27;
    static Date.trustedNow.getter(v27);
    Date.timeIntervalSince(_:)();
    v23 = v22;
    (*(v28 + 8))(v21, v29);
    (*(v12 + 8))(v14, v11);
    v24 = v23 > 120.0;
  }

  else
  {
    (*(v12 + 8))(v14, v11);
    v24 = 0;
  }

  sub_100007BAC(v34);
  return v24;
}

uint64_t sub_100810D44()
{
  sub_100519FB0();
  *(v0 + 24) = v1;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_100810DE0;

  return daemon.getter();
}

uint64_t sub_100810DE0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 40) = a1;

  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  v4 = type metadata accessor for Daemon();
  updated = type metadata accessor for SimpleBeaconUpdateService(0);
  v6 = sub_1008345FC(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1008345FC(&unk_1016B10F0, type metadata accessor for SimpleBeaconUpdateService, &unk_1013CAC90);
  *v3 = v9;
  v3[1] = sub_100810FBC;

  return ActorServiceDaemon.getService<A>()(v4, updated, v6, v7);
}

uint64_t sub_100810FBC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = v5[1];

    return v6();
  }

  else
  {

    v4[7] = a1;
    v8 = swift_task_alloc();
    v4[8] = v8;
    *v8 = v5;
    v8[1] = sub_10081117C;
    v9 = v4[3];

    return sub_10094DB94(v9);
  }
}

uint64_t sub_10081117C()
{

  return _swift_task_switch(sub_1004BCEC0, 0, 0);
}

uint64_t sub_100811294(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000BC4D4(&qword_1016998E0, &qword_101392030);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v54 = &v47 - v7;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v58 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100519FB0();
  v12 = v11 + 56;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v11 + 56);
  v16 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_coordinators;
  v55 = v11;

  v57 = v16;
  result = swift_beginAccess();
  v18 = v8;
  v19 = 0;
  v20 = (v13 + 63) >> 6;
  v52 = v9;
  v53 = v8;
  v48 = (v9 + 8);
  v49 = v9 + 16;
  v50 = v20;
  v51 = v12;
  v47 = a2;
  while (v15)
  {
    v24 = v57;
    v25 = v58;
LABEL_13:
    v27 = *(v52 + 72);
    (*(v52 + 16))(v25, *(v55 + 48) + v27 * (__clz(__rbit64(v15)) | (v19 << 6)), v18);
    v28 = *(a2 + v24);
    if (*(v28 + 16))
    {

      v29 = sub_1000210EC(v25);
      if (v30)
      {
        v31 = v29;
        v56 = *(v28 + 56);
        v32 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator(0);
        v33 = *(v32 - 8);
        v34 = v56 + *(v33 + 72) * v31;
        v35 = v54;
        sub_100833680(v34, v54, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
        v36 = v35;

        (*(v33 + 56))(v35, 0, 1, v32);
      }

      else
      {

        v32 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator(0);
        v36 = v54;
        (*(*(v32 - 8) + 56))(v54, 1, 1, v32);
      }

      a2 = v47;
    }

    else
    {
      v32 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator(0);
      v36 = v54;
      (*(*(v32 - 8) + 56))(v54, 1, 1, v32);
    }

    type metadata accessor for SoundPlaybackManager.PlaybackCoordinator(0);
    v37 = *(v32 - 8);
    v38 = (*(v37 + 48))(v36, 1, v32);
    v56 = v32;
    if (v38)
    {
      sub_10000B3A8(v36, &qword_1016998E0, &qword_101392030);
    }

    else
    {

      sub_10000B3A8(v36, &qword_1016998E0, &qword_101392030);
      dispatch thunk of DispatchWorkItem.cancel()();
    }

    v39 = v57;
    swift_beginAccess();
    v40 = sub_1000210EC(v25);
    v41 = a2;
    if (v42)
    {
      v43 = v40;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = *(v41 + v39);
      v59 = v45;
      *(v41 + v39) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10100773C();
        v45 = v59;
      }

      v46 = *(v45 + 48) + v43 * v27;
      v23 = v48;
      v22 = v53;
      (*v48)(v46, v53);
      sub_1008336E8(*(v45 + 56) + *(v37 + 72) * v43, v6, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
      sub_100AF8234(v43, v45);
      *(v41 + v39) = v45;

      v21 = 0;
      a2 = v41;
    }

    else
    {
      v21 = 1;
      v22 = v53;
      v23 = v48;
    }

    v15 &= v15 - 1;
    (*(v37 + 56))(v6, v21, 1, v56);
    sub_10000B3A8(v6, &qword_1016998E0, &qword_101392030);
    swift_endAccess();
    result = (*v23)(v58, v22);
    v18 = v22;
    v20 = v50;
    v12 = v51;
  }

  v24 = v57;
  v25 = v58;
  while (1)
  {
    v26 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v26 >= v20)
    {
    }

    v15 = *(v12 + 8 * v26);
    ++v19;
    if (v15)
    {
      v19 = v26;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100811844(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v39 = a1;
  v40 = a5;
  v35 = a2;
  v36 = a4;
  v43 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v43 - 8);
  __chkstk_darwin(v43);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v37 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v33 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v34 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OwnedBeaconGroup(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *&a2[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue];
  sub_100833680(a3, v17, type metadata accessor for OwnedBeaconGroup);
  (*(v12 + 16))(&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v36, v11);
  v18 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v19 = (v16 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (*(v12 + 80) + v20 + 8) & ~*(v12 + 80);
  v22 = (v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  sub_1008336E8(v17, v23 + v18, type metadata accessor for OwnedBeaconGroup);
  v24 = v34;
  v25 = v35;
  *(v23 + v19) = v35;
  *(v23 + v20) = a6;
  (*(v12 + 32))(v23 + v21, v24, v33);
  v26 = v39;
  *(v23 + v22) = v40;
  *(v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8)) = v26;
  aBlock[4] = sub_100832EF8;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101635798;
  v27 = _Block_copy(aBlock);
  v28 = v25;

  v29 = v37;
  static DispatchQoS.unspecified.getter();
  v46 = _swiftEmptyArrayStorage;
  sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v30 = v41;
  v31 = v43;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);
  (*(v45 + 8))(v30, v31);
  (*(v42 + 8))(v29, v44);
}

uint64_t sub_100811D24(char *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v268 = a5;
  v261 = a4;
  v273 = a3;
  v274 = a2;
  v278 = sub_1000BC4D4(&qword_1016AA8E8, &qword_1013BD6E0);
  v276 = *(v278 - 1);
  __chkstk_darwin(v278);
  v234 = &v208 - v8;
  v233 = sub_1000BC4D4(&qword_1016AA8F0, &unk_1013BD6E8);
  v275 = *(v233 - 1);
  __chkstk_darwin(v233);
  v232 = &v208 - v9;
  v10 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v10 - 8);
  v251 = &v208 - v11;
  v244 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v242 = *(v244 - 8);
  __chkstk_darwin(v244);
  v240 = &v208 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = sub_1000BC4D4(&qword_1016AA8F8, &qword_1013BD6F8);
  v237 = *(v239 - 8);
  __chkstk_darwin(v239);
  v236 = &v208 - v13;
  v243 = sub_1000BC4D4(&qword_1016AA900, &qword_1013BD700);
  v241 = *(v243 - 8);
  __chkstk_darwin(v243);
  v238 = &v208 - v14;
  v247 = sub_1000BC4D4(&qword_1016AA908, &qword_1013BD708);
  v246 = *(v247 - 8);
  __chkstk_darwin(v247);
  v245 = &v208 - v15;
  v250 = sub_1000BC4D4(&qword_1016AA910, &qword_1013BD710);
  v249 = *(v250 - 8);
  __chkstk_darwin(v250);
  v248 = &v208 - v16;
  v253 = sub_1000BC4D4(&qword_1016AA918, &qword_1013BD718);
  v252 = *(v253 - 8);
  __chkstk_darwin(v253);
  v257 = &v208 - v17;
  v18 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v18 - 8);
  v258 = (&v208 - v19);
  v218 = type metadata accessor for DispatchWorkItemFlags();
  v217 = *(v218 - 8);
  __chkstk_darwin(v218);
  v215 = &v208 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = type metadata accessor for DispatchQoS();
  v214 = *(v216 - 8);
  __chkstk_darwin(v216);
  v213 = &v208 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for OwnedBeaconGroup(0);
  v23 = v22 - 8;
  v254 = *(v22 - 8);
  __chkstk_darwin(v22);
  v260 = v24;
  v270 = &v208 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = type metadata accessor for DispatchTime();
  v224 = *(v223 - 8);
  v25 = __chkstk_darwin(v223);
  v212 = &v208 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v222 = &v208 - v27;
  v221 = type metadata accessor for Date();
  v220 = *(v221 - 8);
  __chkstk_darwin(v221);
  v219 = &v208 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator(0);
  v228 = *(v230 - 8);
  v29 = __chkstk_darwin(v230);
  v229 = &v208 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v211 = &v208 - v32;
  v33 = __chkstk_darwin(v31);
  v227 = &v208 - v34;
  __chkstk_darwin(v33);
  v231 = &v208 - v35;
  v36 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v36 - 8);
  v277 = &v208 - v37;
  v38 = type metadata accessor for UUID();
  v39 = *(v38 - 8);
  v40 = __chkstk_darwin(v38);
  v256 = &v208 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v225 = &v208 - v43;
  v44 = __chkstk_darwin(v42);
  v269 = &v208 - v45;
  v46 = __chkstk_darwin(v44);
  v235 = &v208 - v47;
  v48 = __chkstk_darwin(v46);
  v50 = &v208 - v49;
  v51 = __chkstk_darwin(v48);
  v53 = &v208 - v52;
  v259 = v54;
  __chkstk_darwin(v51);
  v56 = &v208 - v55;
  v57 = *(v39 + 16);
  v57(&v208 - v55, &a1[*(v23 + 32)], v38);
  v272 = a1;
  v58 = v274;
  sub_10080AF18();
  LODWORD(v262) = v59;
  v60 = 0x6575657551;
  if ((v59 & 1) == 0)
  {
    v60 = 0;
  }

  v255 = v60;
  if (v59)
  {
    v61 = 0xE500000000000000;
  }

  else
  {
    v61 = 0xE000000000000000;
  }

  if (qword_101694960 != -1)
  {
    swift_once();
  }

  v62 = type metadata accessor for Logger();
  v63 = sub_1000076D4(v62, qword_10177B380);
  v57(v53, v56, v38);
  v264 = v57;
  v57(v50, v273, v38);

  v263 = v61;
  v226 = v63;
  v64 = Logger.logObject.getter();
  v65 = v263;
  v66 = v64;
  v67 = static os_log_type_t.default.getter();

  v68 = os_log_type_enabled(v66, v67);
  v271 = v56;
  v266 = v39;
  v265 = v39 + 16;
  if (v68)
  {
    v69 = swift_slowAlloc();
    v210 = swift_slowAlloc();
    aBlock[0] = v210;
    *v69 = 136446978;
    *(v69 + 4) = sub_1000136BC(v255, v65, aBlock);
    *(v69 + 12) = 2082;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v209 = v67;
    v70 = dispatch thunk of CustomStringConvertible.description.getter();
    v208 = v66;
    v71 = v38;
    v73 = v72;
    v74 = *(v39 + 8);
    v74(v53, v71);
    v75 = sub_1000136BC(v70, v73, aBlock);
    v38 = v71;
    v76 = v58;
    v77 = v272;

    *(v69 + 14) = v75;
    *(v69 + 22) = 2048;
    *(v69 + 24) = a6;
    *(v69 + 32) = 2082;
    v78 = dispatch thunk of CustomStringConvertible.description.getter();
    v80 = v79;
    v74(v50, v38);
    v81 = v74;
    v82 = sub_1000136BC(v78, v80, aBlock);
    v83 = v273;

    *(v69 + 34) = v82;
    v84 = v208;
    _os_log_impl(&_mh_execute_header, v208, v209, "%{public}s playSound for group %{public}s with timeout %f. CommandId %{public}s", v69, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v81 = *(v39 + 8);
    v81(v50, v38);
    v81(v53, v38);
    v76 = v58;
    v77 = v272;
    v83 = v273;
  }

  if ((v262 & 1) == 0)
  {
    goto LABEL_25;
  }

  sub_100519FB0();
  v85 = v277;
  sub_10112C648(v86, v277);

  v87 = v266;
  if ((*(v266 + 48))(v85, 1, v38) != 1)
  {
    v88 = *(v87 + 32);
    v210 = v81;
    v89 = v235;
    v88(v235, v85, v38);
    v90 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_coordinators;
    swift_beginAccess();
    v91 = *(&v76->isa + v90);
    v92 = v89;
    v93 = v210;
    if (*(v91 + 16))
    {

      v94 = sub_1000210EC(v92);
      if (v95)
      {
        v96 = v227;
        sub_100833680(*(v91 + 56) + *(v228 + 72) * v94, v227, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);

        v97 = v96;
        v98 = v231;
        sub_1008336E8(v97, v231, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
        if (*(v98 + *(v230 + 24)))
        {

          v99 = v225;
          v100 = v271;
          v264(v225, v271, v38);
          v101 = v229;
          sub_100833680(v98, v229, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
          v102 = Logger.logObject.getter();
          v103 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v102, v103))
          {

            sub_1008333E4(v101, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
            v176 = v210;
            v210(v99, v38);
            sub_1008333E4(v98, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
            v176(v235, v38);
            return (v176)(v100, v38);
          }

          v104 = swift_slowAlloc();
          aBlock[0] = swift_slowAlloc();
          *v104 = 136315394;
          sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v105 = dispatch thunk of CustomStringConvertible.description.getter();
          v107 = v106;
          v210(v99, v38);
          v108 = sub_1000136BC(v105, v107, aBlock);

          *(v104 + 4) = v108;
          *(v104 + 12) = 2080;
          v109 = *(v229 + *(v230 + 24));
          if (v109 > 2)
          {
            if (*(v229 + *(v230 + 24)) > 4u)
            {
              if (v109 != 5)
              {
                v204 = 0xE800000000000000;
                v202 = 0x74756F656D69742ELL;
                goto LABEL_48;
              }

              v110 = 0x43706F74732ELL;
              goto LABEL_42;
            }

            if (v109 == 3)
            {
              v110 = 0x4379616C702ELL;
LABEL_42:
              v202 = v110 & 0xFFFFFFFFFFFFLL | 0x6D6F000000000000;
              v203 = 1952803952;
LABEL_47:
              v204 = v203 | 0xEE00646500000000;
              goto LABEL_48;
            }

            v186 = 0x49706F74732ELL;
LABEL_46:
            v202 = v186 & 0xFFFFFFFFFFFFLL | 0x696E000000000000;
            v203 = 1952541044;
            goto LABEL_47;
          }

          if (*(v229 + *(v230 + 24)))
          {
            if (v109 == 1)
            {
              v186 = 0x4979616C702ELL;
              goto LABEL_46;
            }

            v204 = 0xEC000000676E696ELL;
            v202 = 0x6E755279616C702ELL;
          }

          else
          {
            v204 = 0xEB00000000646575;
            v202 = 0x65755179616C702ELL;
          }

LABEL_48:
          sub_1008333E4(v229, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
          v205 = sub_1000136BC(v202, v204, aBlock);

          *(v104 + 14) = v205;
          _os_log_impl(&_mh_execute_header, v102, v103, "Cannot queue play sound for %s. Invalid state %s!", v104, 0x16u);
          swift_arrayDestroy();

          sub_1008333E4(v231, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
          v206 = v210;
          v210(v235, v38);
          return v206(v100, v38);
        }

        v173 = v219;
        static Date.trustedNow.getter(v219);
        Date.timeIntervalSince(_:)();
        v175 = v174;
        (*(v220 + 8))(v173, v221);
        if (a6 * 0.5 >= v175)
        {

          v177 = v211;
          sub_100833680(v98, v211, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
          v178 = Logger.logObject.getter();
          v179 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v178, v179))
          {
            v180 = swift_slowAlloc();
            v181 = swift_slowAlloc();
            aBlock[0] = v181;
            *v180 = 136446466;
            v182 = Date.localISO8601.getter();
            v184 = v183;
            sub_1008333E4(v177, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
            v185 = sub_1000136BC(v182, v184, aBlock);
            v76 = v274;

            *(v180 + 4) = v185;
            *(v180 + 12) = 2050;
            *(v180 + 14) = v175;
            _os_log_impl(&_mh_execute_header, v178, v179, "Last retry %{public}s.\nTime since: %{public}f. Defer retry", v180, 0x16u);
            sub_100007BAC(v181);
            v77 = v272;

            v87 = v266;
          }

          else
          {

            sub_1008333E4(v177, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
          }

          v187 = v264;
          v277 = *(&v76->isa + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue);
          v188 = v212;
          static DispatchTime.now()();
          + infix(_:_:)();
          v189 = *(v224 + 8);
          v224 += 8;
          v278 = v189;
          v189(v188, v223);
          v190 = v269;
          v187(v269, v273, v38);
          sub_100833680(v77, v270, type metadata accessor for OwnedBeaconGroup);
          v191 = (*(v87 + 80) + 24) & ~*(v87 + 80);
          v192 = (v259 + *(v254 + 80) + v191) & ~*(v254 + 80);
          v193 = (v260 + v192 + 7) & 0xFFFFFFFFFFFFFFF8;
          v194 = swift_allocObject();
          *(v194 + 16) = v76;
          v88((v194 + v191), v190, v38);
          sub_1008336E8(v270, v194 + v192, type metadata accessor for OwnedBeaconGroup);
          *(v194 + v193) = v261;
          *(v194 + ((v193 + 15) & 0xFFFFFFFFFFFFFFF8)) = a6;
          aBlock[4] = sub_1008332C8;
          aBlock[5] = v194;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100006684;
          aBlock[3] = &unk_101635860;
          v195 = _Block_copy(aBlock);
          v196 = v76;
          v197 = v213;
          static DispatchQoS.unspecified.getter();
          v281 = _swiftEmptyArrayStorage;
          sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
          sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
          v198 = v215;
          v199 = v218;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v200 = v222;
          OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
          _Block_release(v195);
          (*(v217 + 8))(v198, v199);
          (*(v214 + 8))(v197, v216);
          v278(v200, v223);
          sub_1008333E4(v231, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
          v201 = v210;
          v210(v235, v38);
          v201(v271, v38);
        }

        sub_1008333E4(v98, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
        v111 = v235;
LABEL_24:
        v93(v111, v38);
        v83 = v273;
        goto LABEL_25;
      }
    }

    v111 = v92;
    goto LABEL_24;
  }

  sub_10000B3A8(v85, &qword_1016980D0, &unk_10138F3B0);
LABEL_25:
  v267 = v38;
  v112 = v258;
  sub_100A85ED4(v77, v258);
  v113 = sub_100A8B080(v77);
  v114 = _swiftEmptyArrayStorage;
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100519FB0();
  v116 = v115;
  __chkstk_darwin(v115);
  *(&v208 - 6) = v112;
  *(&v208 - 5) = v113;
  *(&v208 - 4) = aBlock;
  *(&v208 - 3) = v76;
  v207 = v83;
  sub_1005C6534(sub_100833018, &(&v208)[-8], v116);

  v117 = aBlock[0];
  v118 = *(aBlock[0] + 16);
  v235 = aBlock[0];
  if (v118)
  {
    v281 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v119 = (v117 + 32);
    v120 = sub_1000041A4(&qword_1016AA930, &qword_1016AA920, &qword_1013BD720, &protocol conformance descriptor for AnyPublisher<A, B>);
    v276 = (v276 + 8);
    v277 = v120;
    v275 = (v275 + 8);
    v121 = v234;
    v122 = v233;
    v123 = v232;
    do
    {
      v124 = *v119++;
      v280 = v124;

      sub_1000BC4D4(&qword_1016AA920, &qword_1013BD720);
      sub_1000BC4D4(&qword_1016AA928, &qword_1013BD728);
      Publisher.map<A>(_:)();
      sub_1000BC4D4(&qword_1016AA938, &qword_1013BD730);
      sub_1000041A4(&qword_1016AA940, &qword_1016AA8E8, &qword_1013BD6E0, &protocol conformance descriptor for Publishers.Map<A, B>);
      sub_1000041A4(&qword_1016AA948, &qword_1016AA938, &qword_1013BD730, &protocol conformance descriptor for Just<A>);
      v125 = v278;
      Publisher.catch<A>(_:)();
      (*v276)(v121, v125);
      sub_1000041A4(&qword_1016AA950, &qword_1016AA8F0, &unk_1013BD6E8, &protocol conformance descriptor for Publishers.Catch<A, B>);
      Publisher.eraseToAnyPublisher()();

      (*v275)(v123, v122);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v118;
    }

    while (v118);
    v114 = v281;
  }

  v278 = Transaction.subscriptionCleaner.getter();
  v126 = swift_allocObject();
  v277 = v126;
  *(v126 + 16) = 2;
  *(v126 + 24) = 1;
  v281 = v114;
  sub_1000BC4D4(&qword_1016AA958, &qword_1013BD738);
  sub_1000041A4(&qword_1016AA960, &qword_1016AA958, &qword_1013BD738, &protocol conformance descriptor for [A]);
  sub_1000041A4(&qword_1016AA968, &qword_1016AA970, &qword_1013BD740, &protocol conformance descriptor for AnyPublisher<A, B>);
  v127 = Sequence<>.merged()();

  v281 = v127;
  sub_1000BC4D4(&qword_1016AA970, &qword_1013BD740);
  sub_100832458();
  v128 = v236;
  Publisher<>.setFailureType<A>(to:)();

  v129 = v240;
  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  v281 = *(&v274->isa + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue);
  v130 = v281;
  v131 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v132 = *(v131 - 8);
  v275 = *(v132 + 56);
  v276 = (v132 + 56);
  v133 = v251;
  v275(v251, 1, 1, v131);
  v234 = sub_1000BC488();
  sub_1000041A4(&qword_1016AA980, &qword_1016AA8F8, &qword_1013BD6F8, &protocol conformance descriptor for Publishers.SetFailureType<A, B>);
  v134 = sub_1008345FC(&qword_1016AF9C0, sub_1000BC488, &protocol conformance descriptor for OS_dispatch_queue);
  v233 = v130;
  v207 = v134;
  v135 = v238;
  v136 = v239;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_10000B3A8(v133, &unk_1016B0FE0, &unk_101391980);
  (*(v242 + 8))(v129, v244);
  (*(v237 + 8))(v128, v136);
  sub_1000BC4D4(&qword_1016AA988, &qword_1013BD748);
  sub_1000041A4(&qword_1016AA990, &qword_1016AA900, &qword_1013BD700, &protocol conformance descriptor for Publishers.Timeout<A, B>);
  v137 = v245;
  v138 = v243;
  Publisher.map<A>(_:)();
  (*(v241 + 8))(v135, v138);
  sub_1000BC4D4(&qword_1016AA998, &qword_1013BD750);
  sub_1000041A4(&qword_1016AA9A0, &qword_1016AA908, &qword_1013BD708, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_1000041A4(&qword_1016AA9A8, &qword_1016AA998, &qword_1013BD750, &protocol conformance descriptor for Just<A>);
  v139 = v248;
  v140 = v247;
  Publisher.catch<A>(_:)();
  (*(v246 + 8))(v137, v140);
  v141 = v233;
  v281 = v233;
  v275(v133, 1, 1, v131);
  sub_1000041A4(&qword_1016AA9B0, &qword_1016AA910, &qword_1013BD710, &protocol conformance descriptor for Publishers.Catch<A, B>);
  v142 = v250;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v133, &unk_1016B0FE0, &unk_101391980);

  (*(v249 + 8))(v139, v142);
  v143 = v269;
  v144 = v267;
  v145 = v264;
  v264(v269, v271, v267);
  v145(v256, v273, v144);
  v276 = type metadata accessor for OwnedBeaconGroup;
  sub_100833680(v272, v270, type metadata accessor for OwnedBeaconGroup);
  v146 = *(v266 + 80);
  v147 = v266;
  v148 = (v146 + 32) & ~v146;
  v275 = ((v148 + v259 + 7) & 0xFFFFFFFFFFFFFFF8);
  v149 = (v148 + v259 + 23) & 0xFFFFFFFFFFFFFFF8;
  v150 = (v146 + v149 + 8) & ~v146;
  v151 = *(v254 + 80);
  v152 = (v259 + v151 + v150) & ~v151;
  v273 = v146 | v151;
  v251 = ((v260 + v152 + 7) & 0xFFFFFFFFFFFFFFF8);
  v250 = (v251 + 15) & 0xFFFFFFFFFFFFFFF8;
  v153 = swift_allocObject();
  v154 = v278;
  *(v153 + 16) = v268;
  *(v153 + 24) = v154;
  v155 = *(v147 + 32);
  v156 = v143;
  v157 = v267;
  v155(v153 + v148, v156, v267);
  v254 = v155;
  v158 = v274;
  v159 = v275 + v153;
  *v159 = v277;
  LODWORD(v275) = v262 & 1;
  v159[8] = v262 & 1;
  *(v153 + v149) = v158;
  v155(v153 + v150, v256, v157);
  v262 = type metadata accessor for OwnedBeaconGroup;
  v160 = v270;
  sub_1008336E8(v270, v153 + v152, type metadata accessor for OwnedBeaconGroup);
  *&v251[v153] = v261;
  *(v153 + v250) = a6;
  v256 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v264(v269, v271, v157);
  sub_100833680(v272, v160, v276);
  v161 = (v146 + 40) & ~v146;
  v162 = (v259 + v161 + 7) & 0xFFFFFFFFFFFFFFF8;
  v163 = (v162 + 15) & 0xFFFFFFFFFFFFFFF8;
  v164 = (v163 + 15) & 0xFFFFFFFFFFFFFFF8;
  v165 = (v151 + v164 + 8) & ~v151;
  v166 = v165 + v260;
  v167 = swift_allocObject();
  v168 = v255;
  *(v167 + 2) = v256;
  *(v167 + 3) = v168;
  *(v167 + 4) = v263;
  v254(&v167[v161], v269, v157);
  *&v167[v162] = v277;
  *&v167[v163] = a6;
  *&v167[v164] = v261;
  sub_1008336E8(v270, &v167[v165], v262);
  v167[v166] = v275;
  sub_1000041A4(&qword_1016AA9B8, &qword_1016AA918, &qword_1013BD718, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  swift_retain_n();
  v169 = v274;

  swift_unknownObjectRetain();
  v170 = v253;
  v171 = v257;
  Publisher.sink(receiveCompletion:receiveValue:)();

  (*(v252 + 8))(v171, v170);
  AnyCancellable.store(in:)();
  swift_unknownObjectRelease();

  (*(v266 + 8))(v271, v267);

  return sub_10000B3A8(v258, &unk_1016A9A20, &qword_10138B280);
}

uint64_t sub_10081434C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void, void, void), uint64_t a5, uint64_t a6)
{
  v80 = a6;
  v81 = a5;
  v69 = a3;
  v70 = a4;
  v8 = sub_1000BC4D4(&qword_1016998E0, &qword_101392030);
  __chkstk_darwin(v8 - 8);
  v76 = &v67 - v9;
  v74 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v74);
  v75 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v77 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v73 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v79 = &v67 - v15;
  v72 = v16;
  __chkstk_darwin(v14);
  v68 = &v67 - v17;
  v18 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v18 - 8);
  v20 = &v67 - v19;
  v21 = type metadata accessor for OwnedBeaconRecord(0);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2A70(a2, v20, &unk_1016A9A20, &qword_10138B280);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_10000B3A8(v20, &unk_1016A9A20, &qword_10138B280);
LABEL_5:
    v26 = v70;
    v27 = a1;
    sub_100814D78(a1, v80, 0);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(*v26 + 16) >= *(*v26 + 24) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    goto LABEL_21;
  }

  sub_1008336E8(v20, v24, type metadata accessor for OwnedBeaconRecord);
  sub_1008345FC(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v25 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v25)
  {
    sub_1008333E4(v24, type metadata accessor for OwnedBeaconRecord);
    goto LABEL_5;
  }

  __chkstk_darwin(v25);
  *(&v67 - 2) = v24;
  v28 = v78;
  sub_1012BC794(sub_1008347E0, (&v67 - 4), v69);
  if (v29)
  {
    v30 = v29;
  }

  else
  {
    v30 = &_swiftEmptySetSingleton;
  }

  v31 = sub_100037E20(a1, v30);

  v32 = v77;
  v78 = v28;
  if (v31)
  {
    if (qword_101694960 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_1000076D4(v33, qword_10177B380);
    v34 = v68;
    (*(v32 + 16))(v68, a1, v11);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    v37 = v32;
    if (os_log_type_enabled(v35, v36))
    {
      LODWORD(v70) = v36;
      v27 = a1;
      v38 = v34;
      v39 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      aBlock[0] = v69;
      *v39 = 141558275;
      *(v39 + 4) = 1752392040;
      *(v39 + 12) = 2081;
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v40 = v35;
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      (*(v37 + 8))(v38, v11);
      v44 = sub_1000136BC(v41, v43, aBlock);

      *(v39 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v40, v70, "Ignoring nearby non-primary beacon %{private,mask.hash}s", v39, 0x16u);
      sub_100007BAC(v69);
    }

    else
    {
      v27 = a1;

      (*(v32 + 8))(v34, v11);
    }
  }

  else
  {
    sub_100814D78(a1, v80, 0);
    v45 = v70;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(*v45 + 16) >= *(*v45 + 24) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v27 = a1;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  sub_1008333E4(v24, type metadata accessor for OwnedBeaconRecord);
LABEL_21:
  v69 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = v77;
  v47 = *(v77 + 16);
  v70 = v47;
  v71 = v27;
  v48 = v79;
  v47(v79, v27, v11);
  v49 = v73;
  v47(v73, v80, v11);
  v50 = *(v46 + 80);
  v51 = (v50 + 16) & ~v50;
  v52 = (v72 + v50 + v51) & ~v50;
  v53 = (v72 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  v55 = *(v46 + 32);
  v56 = v48;
  v57 = v11;
  v55(v54 + v51, v56);
  (v55)(v54 + v52, v49, v11);
  *(v54 + v53) = v69;
  aBlock[4] = sub_100833450;
  aBlock[5] = v54;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101635900;
  _Block_copy(aBlock);
  aBlock[8] = _swiftEmptyArrayStorage;
  sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);

  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v58 = DispatchWorkItem.init(flags:block:)();

  v59 = v79;
  v60 = v70;
  v61 = v71;
  v70(v79, v71, v57);
  v62 = v76;
  v60(v76, v80, v57);
  v63 = v60;
  v64 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator(0);
  v63(v62 + v64[5], v61, v57);
  v65 = v64[8];

  static Date.trustedNow.getter(v62 + v65);
  *(v62 + v64[6]) = 0;
  *(v62 + v64[7]) = v58;
  *(v62 + v64[9]) = 0;
  *(v62 + v64[10]) = 0;
  (*(*(v64 - 1) + 56))(v62, 0, 1, v64);
  swift_beginAccess();
  sub_1001DE600(v62, v59);
  swift_endAccess();
}

uint64_t sub_100814D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v63 = a3;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v62 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v54 - v11;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v4 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue);
  *v16 = v17;
  (*(v14 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v13);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v16, v13);
  if (v17)
  {
    v61 = a2;
    if (qword_101694960 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v19 = type metadata accessor for Logger();
  sub_1000076D4(v19, qword_10177B380);
  v58 = *(v8 + 16);
  v58(v12, a1, v7);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v22 = os_log_type_enabled(v20, v21);
  v60 = v8;
  if (v22)
  {
    v56 = v19;
    v57 = a1;
    v23 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v64[0] = v55;
    *v23 = 141558531;
    *(v23 + 4) = 1752392040;
    *(v23 + 12) = 2081;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    v59 = *(v8 + 8);
    v59(v12, v7);
    v27 = sub_1000136BC(v24, v26, v64);

    *(v23 + 14) = v27;
    *(v23 + 22) = 2082;
    if (v63 > 2)
    {
      if (v63 != 3)
      {
        a1 = v57;
        if (v63 == 4)
        {
          v28 = 0xEF64656D7269666ELL;
          v29 = 0x6F4365756575712ELL;
          goto LABEL_21;
        }

        if (v63 == 5)
        {
          v28 = 0xEE0074726F685367;
          goto LABEL_14;
        }

LABEL_18:
        v28 = 0xE700000000000000;
        v29 = 0x6E776F6E6B6E75;
        goto LABEL_21;
      }

      v29 = 0xD000000000000010;
      v28 = 0x8000000101357040;
    }

    else
    {
      if (v63)
      {
        a1 = v57;
        if (v63 == 1)
        {
          v28 = 0xE800000000000000;
          v29 = 0x676E69676E61722ELL;
          goto LABEL_21;
        }

        if (v63 == 2)
        {
          v28 = 0xE900000000000067;
LABEL_14:
          v29 = 0x6E696B636172742ELL;
LABEL_21:
          v30 = sub_1000136BC(v29, v28, v64);

          *(v23 + 24) = v30;
          _os_log_impl(&_mh_execute_header, v20, v21, "Calling play sound on device %{private,mask.hash}s with context %{public}s", v23, 0x20u);
          swift_arrayDestroy();

          v19 = v56;
          goto LABEL_22;
        }

        goto LABEL_18;
      }

      v28 = 0xE800000000000000;
      v29 = 0x746C75616665642ELL;
    }

    a1 = v57;
    goto LABEL_21;
  }

  v59 = *(v8 + 8);
  v59(v12, v7);
LABEL_22:
  sub_1000BC4D4(&qword_1016AA9C0, &qword_1013BD758);
  swift_allocObject();
  v31 = PassthroughSubject.init()();
  v32 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_playSoundSubjects;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = *(v4 + v32);
  *(v4 + v32) = 0x8000000000000000;
  sub_101000078(v31, a1, isUniquelyReferenced_nonNull_native);
  *(v4 + v32) = v65;
  swift_endAccess();
  v34 = sub_100810310(a1);
  My = type metadata accessor for Feature.FindMy();
  v64[3] = My;
  v64[4] = sub_1008345FC(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v36 = sub_1000280DC(v64);
  (*(*(My - 8) + 104))(v36, enum case for Feature.FindMy.spPlaySoundAll(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v64);
  if (My & 1) == 0 || (v34)
  {
    sub_100801B60();
    v47 = v46;
    ObjectType = swift_getObjectType();
    if (v63 == 5)
    {
      v51 = [objc_opt_self() shortSequence];
      (*(v47 + 48))();
    }

    else
    {
      if (v63 == 2)
      {
        (*(v47 + 40))(a1, ObjectType, v47);
        swift_unknownObjectRelease();
LABEL_39:
        v64[0] = v31;
        sub_1000041A4(&qword_1016AA9C8, &qword_1016AA9C0, &qword_1013BD758, &protocol conformance descriptor for PassthroughSubject<A, B>);
        v50 = Publisher.eraseToAnyPublisher()();
        goto LABEL_40;
      }

      if (v63 == 1)
      {
        v49 = [objc_opt_self() rangingSequence];
      }

      else
      {
        v49 = [objc_opt_self() defaultSequence];
      }

      v51 = v49;
      (*(v47 + 32))();
    }

    swift_unknownObjectRelease();

    goto LABEL_39;
  }

  if (qword_101694968 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v19, qword_1016AA7B0);
  v37 = v62;
  v58(v62, a1, v7);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v64[0] = v58;
    *v40 = 136315651;
    *(v40 + 4) = sub_1000136BC(0xD000000000000024, 0x8000000101360EC0, v64);
    *(v40 + 12) = 2160;
    *(v40 + 14) = 1752392040;
    *(v40 + 22) = 2081;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = a1;
    v44 = v43;
    v59(v37, v7);
    v45 = sub_1000136BC(v41, v44, v64);
    a1 = v42;

    *(v40 + 24) = v45;
    _os_log_impl(&_mh_execute_header, v38, v39, "%s SPPlaySoundAll: %{private,mask.hash}s does NOT support ranging", v40, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v59(v37, v7);
  }

  v50 = sub_1008293E4(a1, v61, v63, v31);
LABEL_40:
  v52 = v50;

  return v52;
}

void sub_100815748(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v87 = a3;
  v85 = a2;
  v94 = a1;
  v5 = type metadata accessor for BeaconObservation(0);
  v6 = *(v5 - 8);
  v88 = v5;
  v89 = v6;
  __chkstk_darwin(v5);
  v90 = &v75[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1000BC4D4(&qword_1016998E0, &qword_101392030);
  __chkstk_darwin(v8 - 8);
  v86 = &v75[-v9];
  v10 = type metadata accessor for Date();
  v82 = *(v10 - 8);
  v83 = v10;
  __chkstk_darwin(v10);
  v81 = &v75[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v93 = type metadata accessor for UUID();
  v12 = *(v93 - 8);
  v13 = __chkstk_darwin(v93);
  v15 = &v75[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v13);
  v84 = &v75[-v17];
  __chkstk_darwin(v16);
  v19 = &v75[-v18];
  v20 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator(0);
  v91 = *(v20 - 1);
  v21 = __chkstk_darwin(v20);
  v23 = &v75[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v92 = &v75[-v24];
  v25 = type metadata accessor for DispatchPredicate();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v75[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = *(v4 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue);
  *v28 = v29;
  (*(v26 + 104))(v28, enum case for DispatchPredicate.onQueue(_:), v25);
  v30 = v29;
  LOBYTE(v29) = _dispatchPreconditionTest(_:)();
  v32 = *(v26 + 8);
  v31 = v26 + 8;
  v32(v28, v25);
  if ((v29 & 1) == 0)
  {
    __break(1u);
LABEL_21:
    swift_once();
LABEL_10:
    v48 = type metadata accessor for Logger();
    sub_1000076D4(v48, qword_10177B380);
    v49 = v93;
    (*(v12 + 16))(v15, v31, v93);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v95[0] = v53;
      *v52 = 141558275;
      *(v52 + 4) = 1752392040;
      *(v52 + 12) = 2081;
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;
      (*(v12 + 8))(v15, v49);
      v57 = sub_1000136BC(v54, v56, v95);

      *(v52 + 14) = v57;
      _os_log_impl(&_mh_execute_header, v50, v51, "No coordinator for %{private,mask.hash}s. Cannot complete!", v52, 0x16u);
      sub_100007BAC(v53);
    }

    else
    {

      (*(v12 + 8))(v15, v49);
    }

    return;
  }

  v33 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_coordinators;
  swift_beginAccess();
  v34 = *(v4 + v33);
  v31 = v94;
  if (!*(v34 + 16))
  {
LABEL_9:
    if (qword_101694960 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

  v35 = v4;

  v36 = sub_1000210EC(v31);
  if ((v37 & 1) == 0)
  {

    goto LABEL_9;
  }

  sub_100833680(*(v34 + 56) + *(v91 + 72) * v36, v23, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);

  sub_1008336E8(v23, v92, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
  if (qword_101694960 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  sub_1000076D4(v38, qword_10177B380);
  v39 = v93;
  v80 = *(v12 + 16);
  v80(v19, v31, v93);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v78 = v12 + 16;
    v43 = v42;
    v77 = swift_slowAlloc();
    v95[0] = v77;
    *v43 = 141558275;
    *(v43 + 4) = 1752392040;
    *(v43 + 12) = 2081;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v76 = v41;
    v44 = dispatch thunk of CustomStringConvertible.description.getter();
    v79 = v35;
    v46 = v45;
    (*(v12 + 8))(v19, v39);
    v47 = sub_1000136BC(v44, v46, v95);

    *(v43 + 14) = v47;
    _os_log_impl(&_mh_execute_header, v40, v76, "commandComplete %{private,mask.hash}s", v43, 0x16u);
    sub_100007BAC(v77);
  }

  else
  {

    (*(v12 + 8))(v19, v39);
  }

  v58 = v39;
  v59 = v92;
  dispatch thunk of DispatchWorkItem.cancel()();
  if (v85)
  {
    v60 = 5;
  }

  else
  {
    v60 = 3;
  }

  v59[v20[6]] = v60;
  v59[v20[10]] = 0;
  v61 = v81;
  static Date.trustedNow.getter(v81);
  (*(v82 + 40))(&v59[v20[8]], v61, v83);
  v62 = v20[9];
  v63 = v87;
  swift_errorRetain();

  *&v59[v62] = v63;
  v64 = v84;
  v65 = v94;
  v66 = v58;
  v67 = v80;
  v80(v84, v94, v66);
  v68 = v86;
  sub_100833680(v59, v86, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
  (*(v91 + 56))(v68, 0, 1, v20);
  swift_beginAccess();
  sub_1001DE600(v68, v64);
  swift_endAccess();
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v69 = qword_10177B2E8;
  v70 = v90;
  v67(v90, v65, v93);
  v71 = v88;
  static Date.trustedNow.getter(v70 + *(v88 + 20));
  *(v70 + *(v71 + 24)) = 29;
  sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
  v72 = (*(v89 + 80) + 32) & ~*(v89 + 80);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_101385D80;
  sub_100833680(v70, v73 + v72, type metadata accessor for BeaconObservation);
  v74 = type metadata accessor for Transaction();
  __chkstk_darwin(v74);
  *&v75[-32] = v69;
  *&v75[-24] = v73;
  *&v75[-16] = 0;
  *&v75[-8] = 0;
  static Transaction.named<A>(_:with:)();

  sub_1008333E4(v70, type metadata accessor for BeaconObservation);
  sub_10082145C(v65);
  sub_1008333E4(v59, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
}

unint64_t sub_100816244(double a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5, unint64_t a6, char a7, uint64_t a8, char *a9, char *a10, char *a11)
{
  v51 = a8;
  LOBYTE(v13) = a7;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v50 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v46 - v20;
  Transaction.capture()();
  if (qword_101694960 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v22 = type metadata accessor for Logger();
    sub_1000076D4(v22, qword_10177B380);
    v48 = *(v17 + 16);
    v49 = v17 + 16;
    v48(v21, a5, v16);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    v25 = os_log_type_enabled(v23, v24);
    v52 = v17;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v46 = a9;
      v27 = v13;
      v13 = v26;
      v53 = swift_slowAlloc();
      *v13 = 136446466;
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      v47 = *(v52 + 8);
      v47(v21, v16);
      v31 = sub_1000136BC(v28, v30, &v53);

      *(v13 + 4) = v31;
      *(v13 + 12) = 2082;
      swift_beginAccess();
      v32 = *(a6 + 24);
      v54 = *(a6 + 16);
      v55 = v32;
      sub_100833444(v54, v32);
      sub_1000BC4D4(&qword_1016AAA10, &unk_1013BD7E0);
      v33 = String.init<A>(describing:)();
      v35 = sub_1000136BC(v33, v34, &v53);

      *(v13 + 14) = v35;
      v17 = v52;
      _os_log_impl(&_mh_execute_header, v23, v24, "playSound for group %{public}s) completion. Result: %{public}s", v13, 0x16u);
      swift_arrayDestroy();

      LOBYTE(v13) = v27;
      a9 = v46;
    }

    else
    {

      v47 = *(v17 + 8);
      v47(v21, v16);
    }

    result = swift_beginAccess();
    if (*(a6 + 24) != 1)
    {
      return result;
    }

    a6 = *(a6 + 16);
    sub_1008326DC(a6);
    if (v13)
    {
      sub_100816750(a9, a10, a11, a1);
      return sub_10083303C(a6, 1);
    }

    sub_100519FB0();
    v38 = v37;
    v21 = (v37 + 56);
    v39 = 1 << *(v37 + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v13 = v40 & *(v37 + 56);
    v41 = (v39 + 63) >> 6;
    v46 = (v17 + 8);

    a5 = 0;
    while (v13)
    {
      v42 = a5;
      v43 = v52;
LABEL_17:
      v44 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      a9 = v50;
      v48(v50, *(v38 + 48) + *(v43 + 72) * (v44 | (v42 << 6)), v16);
      sub_100832458();
      v17 = swift_allocError();
      *v45 = a6;
      sub_100833444(a6, 1);
      sub_100815748(a9, 0, v17);

      v47(a9, v16);
    }

    v43 = v52;
    while (1)
    {
      v42 = a5 + 1;
      if (__OFADD__(a5, 1))
      {
        break;
      }

      if (v42 >= v41)
      {
        sub_10083303C(a6, 1);
      }

      v13 = *&v21[8 * v42];
      ++a5;
      if (v13)
      {
        a5 = v42;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_22:
    swift_once();
  }
}

uint64_t sub_100816750(char *a1, char *a2, char *a3, double a4)
{
  v91 = a1;
  v92 = a3;
  v7 = type metadata accessor for Date();
  v94 = *(v7 - 8);
  v95 = v7;
  __chkstk_darwin(v7);
  v93 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  __chkstk_darwin(v9 - 8);
  v98 = &v90 - v10;
  v101 = type metadata accessor for BeaconObservation(0);
  v97 = *(v101 - 8);
  v11 = __chkstk_darwin(v101);
  v99 = (&v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v96 = &v90 - v13;
  v14 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v14 - 8);
  v16 = &v90 - v15;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v100 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v90 = &v90 - v22;
  v23 = __chkstk_darwin(v21);
  v103 = &v90 - v24;
  __chkstk_darwin(v23);
  v26 = &v90 - v25;
  v27 = type metadata accessor for DispatchPredicate();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v90 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = v4;
  v31 = *&v4[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue];
  *v30 = v31;
  (*(v28 + 104))(v30, enum case for DispatchPredicate.onQueue(_:), v27);
  v32 = v31;
  LOBYTE(v31) = _dispatchPreconditionTest(_:)();
  (*(v28 + 8))(v30, v27);
  if ((v31 & 1) == 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v33 = &a2[*(type metadata accessor for OwnedBeaconGroup(0) + 24)];
  v102 = *(v18 + 16);
  v102(v26, v33, v17);
  sub_100519FB0();
  sub_10112C648(v34, v16);

  v30 = v26;
  v27 = v17;
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    v35 = &qword_1016980D0;
    v36 = &unk_10138F3B0;
    goto LABEL_8;
  }

  v37 = a2;
  v38 = v103;
  (*(v18 + 32))(v103, v16, v17);
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v39 = sub_100035730(v38, sub_100526C48, 0);
  v16 = v98;
  sub_1012BB138(v39, v98);

  v40 = (*(v97 + 48))(v16, 1, v101);
  v41 = v99;
  if (v40 != 1)
  {
    v47 = v96;
    sub_1008336E8(v16, v96, type metadata accessor for BeaconObservation);
    v48 = v93;
    static Date.trustedNow.getter(v93);
    Date.timeIntervalSince(_:)();
    v50 = v49;
    (*(v94 + 8))(v48, v95);
    if (qword_101694960 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    v52 = sub_1000076D4(v51, qword_10177B380);
    sub_100833680(v47, v41, type metadata accessor for BeaconObservation);
    v97 = v52;
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    v55 = os_log_type_enabled(v53, v54);
    v98 = v30;
    if (v55)
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v105[0] = v57;
      *v56 = 136446466;
      v58 = Date.localISO8601.getter();
      v59 = v41;
      v60 = v37;
      v62 = v61;
      sub_1008333E4(v59, type metadata accessor for BeaconObservation);
      v63 = sub_1000136BC(v58, v62, v105);
      v37 = v60;

      *(v56 + 4) = v63;
      *(v56 + 12) = 2050;
      *(v56 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v53, v54, "Queued at %{public}s. Time since: %{public}f", v56, 0x16u);
      sub_100007BAC(v57);

      v47 = v96;
    }

    else
    {

      sub_1008333E4(v41, type metadata accessor for BeaconObservation);
    }

    if (v50 < 180.0)
    {
      v64 = type metadata accessor for Transaction();
      __chkstk_darwin(v64);
      *(&v90 - 6) = v104;
      *(&v90 - 5) = v37;
      *(&v90 - 4) = a4;
      v65 = v92;
      *(&v90 - 3) = v91;
      *(&v90 - 2) = v65;
      static Transaction.named<A>(_:with:)();
      sub_1008333E4(v47, type metadata accessor for BeaconObservation);
      v66 = *(v18 + 8);
      v66(v103, v27);
      return (v66)(v98, v27);
    }

    v95 = v37;
    v67 = v90;
    v68 = v98;
    v102(v90, v98, v27);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v105[0] = v72;
      *v71 = 134218242;
      *(v71 + 4) = 0x4066800000000000;
      *(v71 + 12) = 2080;
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v73 = dispatch thunk of CustomStringConvertible.description.getter();
      v75 = v74;
      v76 = *(v18 + 8);
      v101 = v18 + 8;
      v99 = v76;
      v76(v67, v27);
      v77 = sub_1000136BC(v73, v75, v105);
      v68 = v98;

      *(v71 + 14) = v77;
      _os_log_impl(&_mh_execute_header, v69, v70, "%f elapsed. Posting error alert for %s", v71, 0x16u);
      sub_100007BAC(v72);
    }

    else
    {

      v78 = *(v18 + 8);
      v101 = v18 + 8;
      v99 = v78;
      v78(v67, v27);
    }

    sub_100819C70(v68, 0);
    sub_100519FB0();
    v80 = v79;
    v30 = (v79 + 56);
    v81 = 1 << *(v79 + 32);
    v82 = -1;
    if (v81 < 64)
    {
      v82 = ~(-1 << v81);
    }

    v83 = v82 & *(v79 + 56);
    v84 = (v81 + 63) >> 6;

    v85 = 0;
    v86 = v100;
    while (v83)
    {
      v87 = v85;
LABEL_31:
      v88 = __clz(__rbit64(v83));
      v83 &= v83 - 1;
      v102(v86, (*(v80 + 48) + *(v18 + 72) * (v88 | (v87 << 6))), v27);
      sub_100815748(v86, 0, 0);
      v99(v86, v27);
    }

    while (1)
    {
      v87 = v85 + 1;
      if (__OFADD__(v85, 1))
      {
        break;
      }

      if (v87 >= v84)
      {

        sub_1008333E4(v96, type metadata accessor for BeaconObservation);
        v89 = v99;
        v99(v103, v27);
        v89(v98, v27);
      }

      v83 = *&v30[8 * v87];
      ++v85;
      if (v83)
      {
        v85 = v87;
        goto LABEL_31;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

  (*(v18 + 8))(v38, v27);
  v35 = &qword_1016A42E0;
  v36 = &qword_1013B0010;
LABEL_8:
  sub_10000B3A8(v16, v35, v36);
  if (qword_101694960 != -1)
  {
LABEL_36:
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  sub_1000076D4(v42, qword_10177B380);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&_mh_execute_header, v43, v44, "No playback observation found. Cannot retry", v45, 2u);
  }

  return (*(v18 + 8))(v30, v27);
}

void sub_100817364(uint64_t a1, uint64_t a2, NSObject *a3, void (*a4)(uint64_t, uint64_t), _BYTE *a5, uint64_t a6, unint64_t a7, uint64_t a8, double a9, unsigned __int8 a10)
{
  v141 = a8;
  v140 = a7;
  v139 = a6;
  v145 = a5;
  v137 = a4;
  v136 = a3;
  v12 = type metadata accessor for UUID();
  v147 = *(v12 - 8);
  v148 = v12;
  v13 = __chkstk_darwin(v12);
  v15 = &v130[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v13);
  v18 = &v130[-v17];
  v19 = __chkstk_darwin(v16);
  v21 = &v130[-v20];
  v22 = __chkstk_darwin(v19);
  v135 = &v130[-v23];
  v24 = __chkstk_darwin(v22);
  v143 = &v130[-v25];
  v26 = __chkstk_darwin(v24);
  v138 = &v130[-v27];
  v28 = __chkstk_darwin(v26);
  v30 = &v130[-v29];
  __chkstk_darwin(v28);
  v142 = &v130[-v31];
  v32 = sub_1000BC4D4(&qword_1016AA928, &qword_1013BD728);
  v33 = __chkstk_darwin(v32);
  v35 = &v130[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v33);
  v144 = &v130[-v36];
  v37 = sub_1000BC4D4(&qword_1016AA988, &qword_1013BD748);
  __chkstk_darwin(v37);
  v39 = &v130[-v38];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1000D2A70(a1, v39, &qword_1016AA988, &qword_1013BD748);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v40 = *v39;
      if (*v39 == 3)
      {
        v42 = v147;
        v41 = v148;
        if (qword_101694960 != -1)
        {
LABEL_48:
          swift_once();
        }

        v43 = type metadata accessor for Logger();
        sub_1000076D4(v43, qword_10177B380);
        (*(v42 + 16))(v18, v145, v41);
        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v151[0] = v47;
          *v46 = 136446466;
          sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v48 = dispatch thunk of CustomStringConvertible.description.getter();
          v50 = v49;
          (*(v42 + 8))(v18, v41);
          v51 = sub_1000136BC(v48, v50, v151);

          *(v46 + 4) = v51;
          *(v46 + 12) = 2048;
          *(v46 + 14) = a9;
          _os_log_impl(&_mh_execute_header, v44, v45, "Play sound timed out for %{public}s after %f. CL should have completed by now", v46, 0x16u);
          sub_100007BAC(v47);
        }

        else
        {

          (*(v42 + 8))(v18, v41);
        }
      }

      else
      {
        v68 = v147;
        v67 = v148;
        if (qword_101694960 != -1)
        {
          swift_once();
        }

        v69 = type metadata accessor for Logger();
        sub_1000076D4(v69, qword_10177B380);
        (*(v68 + 16))(v15, v145, v67);
        sub_1008326DC(v40);
        v70 = Logger.logObject.getter();
        v71 = static os_log_type_t.error.getter();
        sub_1008326EC(v40);
        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v151[0] = swift_slowAlloc();
          *v72 = 136446466;
          sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v73 = dispatch thunk of CustomStringConvertible.description.getter();
          v75 = v74;
          (*(v68 + 8))(v15, v67);
          v76 = sub_1000136BC(v73, v75, v151);

          *(v72 + 4) = v76;
          *(v72 + 12) = 2082;
          v150 = v40;
          sub_1008326DC(v40);
          v77 = String.init<A>(describing:)();
          v79 = sub_1000136BC(v77, v78, v151);

          *(v72 + 14) = v79;
          _os_log_impl(&_mh_execute_header, v70, v71, "Play sound failed for %{public}s with unexpected error %{public}s", v72, 0x16u);
          swift_arrayDestroy();

          sub_1008326EC(v40);
        }

        else
        {

          sub_1008326EC(v40);
          (*(v68 + 8))(v15, v67);
        }
      }
    }

    else
    {
      v52 = v144;
      sub_1000D2AD8(v39, v144, &qword_1016AA928, &qword_1013BD728);
      sub_1000D2A70(v52, v35, &qword_1016AA928, &qword_1013BD728);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v53 = *v35;
        if (qword_101694960 != -1)
        {
          swift_once();
        }

        v54 = type metadata accessor for Logger();
        sub_1000076D4(v54, qword_10177B380);
        v56 = v147;
        v55 = v148;
        (*(v147 + 16))(v21, v145, v148);
        sub_1008326DC(v53);
        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.error.getter();
        sub_1008326EC(v53);
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v151[0] = swift_slowAlloc();
          *v59 = 136446466;
          sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v60 = dispatch thunk of CustomStringConvertible.description.getter();
          v62 = v61;
          (*(v56 + 8))(v21, v55);
          v63 = sub_1000136BC(v60, v62, v151);

          *(v59 + 4) = v63;
          *(v59 + 12) = 2082;
          v150 = v53;
          sub_1008326DC(v53);
          v64 = String.init<A>(describing:)();
          v66 = sub_1000136BC(v64, v65, v151);

          *(v59 + 14) = v66;
          _os_log_impl(&_mh_execute_header, v57, v58, "Play sound failed for %{public}s. Error %{public}s", v59, 0x16u);
          swift_arrayDestroy();

          sub_1008326EC(v53);
        }

        else
        {

          sub_1008326EC(v53);
          (*(v56 + 8))(v21, v55);
        }

        sub_10000B3A8(v144, &qword_1016AA928, &qword_1013BD728);
      }

      else
      {
        v80 = v147;
        v81 = v148;
        v82 = v142;
        (*(v147 + 32))(v142, v35, v148);
        if (qword_101694960 != -1)
        {
          swift_once();
        }

        v83 = type metadata accessor for Logger();
        v84 = sub_1000076D4(v83, qword_10177B380);
        v85 = *(v80 + 16);
        v85(v30, v82, v81);
        v86 = v138;
        v134 = v85;
        v85(v138, v145, v81);
        v87 = v137;

        v133 = v84;
        v88 = Logger.logObject.getter();
        v89 = static os_log_type_t.default.getter();

        v90 = v80;
        if (os_log_type_enabled(v88, v89))
        {
          v91 = swift_slowAlloc();
          v132 = swift_slowAlloc();
          v151[0] = v132;
          *v91 = 136446979;
          *(v91 + 4) = sub_1000136BC(v136, v87, v151);
          *(v91 + 12) = 2160;
          *(v91 + 14) = 1752392040;
          *(v91 + 22) = 2081;
          sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v136 = v88;
          v92 = dispatch thunk of CustomStringConvertible.description.getter();
          v93 = v86;
          v95 = v94;
          v131 = v89;
          v96 = *(v80 + 8);
          v96(v30, v81);
          v97 = sub_1000136BC(v92, v95, v151);

          *(v91 + 24) = v97;
          *(v91 + 32) = 2082;
          v98 = dispatch thunk of CustomStringConvertible.description.getter();
          v100 = v99;
          v138 = (v90 + 8);
          v137 = v96;
          v96(v93, v81);
          v101 = sub_1000136BC(v98, v100, v151);

          *(v91 + 34) = v101;
          v102 = v136;
          _os_log_impl(&_mh_execute_header, v136, v131, "%{public}s play sound started for %{private,mask.hash}s. Group: %{public}s", v91, 0x2Au);
          swift_arrayDestroy();

          v82 = v142;
        }

        else
        {

          v103 = *(v80 + 8);
          v103(v86, v81);
          v138 = (v80 + 8);
          v137 = v103;
          v103(v30, v81);
        }

        LODWORD(v136) = a10;
        v104 = v139;
        swift_beginAccess();
        v105 = *(v104 + 16);
        v106 = *(v104 + 24);
        *(v104 + 16) = 0;
        *(v104 + 24) = 0;
        sub_10083303C(v105, v106);
        sub_100818478(v82, v140, a9);
        sub_100519FB0();
        __chkstk_darwin(v107);
        *&v130[-16] = v82;
        v109 = sub_100B00224(sub_100834714, &v130[-32], v108);
        v110 = Strong;
        v111 = v109;
        v112 = v109 + 56;
        v113 = 1 << v109[32];
        v114 = -1;
        if (v113 < 64)
        {
          v114 = ~(-1 << v113);
        }

        v115 = v114 & *(v109 + 7);
        v41 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_playSoundSubjects;

        swift_beginAccess();
        v116 = 0;
        v18 = ((v113 + 63) >> 6);
        v42 = v143;
        while (v115)
        {
LABEL_36:
          v134(v42, *(v111 + 6) + *(v147 + 72) * (__clz(__rbit64(v115)) | (v116 << 6)), v148);
          if (*(*&v110[v41] + 16))
          {

            sub_1000210EC(v42);
            if (v118)
            {

              v149 = 4;
              PassthroughSubject.send(completion:)();
              v110 = Strong;
            }

            else
            {
            }

            v42 = v143;
          }

          v115 &= v115 - 1;
          sub_100815748(v42, 0, 0);
          v137(v42, v148);
        }

        while (1)
        {
          v117 = v116 + 1;
          if (__OFADD__(v116, 1))
          {
            __break(1u);
            goto LABEL_48;
          }

          if (v117 >= v18)
          {
            break;
          }

          v115 = *&v112[8 * v117];
          ++v116;
          if (v115)
          {
            v116 = v117;
            goto LABEL_36;
          }
        }

        if (v136)
        {
          v119 = v135;
          v120 = v148;
          v134(v135, v145, v148);
          v121 = Logger.logObject.getter();
          v122 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v121, v122))
          {
            v123 = swift_slowAlloc();
            v124 = swift_slowAlloc();
            v149 = v124;
            *v123 = 136446210;
            sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v125 = dispatch thunk of CustomStringConvertible.description.getter();
            v127 = v126;
            v137(v119, v120);
            v128 = sub_1000136BC(v125, v127, &v149);

            *(v123 + 4) = v128;
            _os_log_impl(&_mh_execute_header, v121, v122, "Posting success alert for %{public}s", v123, 0xCu);
            sub_100007BAC(v124);

            v110 = Strong;
          }

          else
          {

            v137(v119, v120);
          }

          v129 = v142;
          sub_100819C70(v145, 1);

          sub_10000B3A8(v144, &qword_1016AA928, &qword_1013BD728);
        }

        else
        {
          sub_10000B3A8(v144, &qword_1016AA928, &qword_1013BD728);

          v120 = v148;
          v129 = v142;
        }

        v137(v129, v120);
      }
    }
  }
}

uint64_t sub_100818478(void *a1, unint64_t a2, double a3)
{
  v4 = v3;
  v156 = a2;
  v172 = a1;
  v6 = type metadata accessor for DispatchTime();
  v168 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v166 = &v140 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v167 = &v140 - v9;
  v162 = type metadata accessor for BeaconObservation(0);
  v163 = *(v162 - 8);
  __chkstk_darwin(v162);
  v164 = &v140 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_1016998E0, &qword_101392030);
  __chkstk_darwin(v11 - 8);
  v161 = &v140 - v12;
  v160 = type metadata accessor for Date();
  v159 = *(v160 - 8);
  __chkstk_darwin(v160);
  v158 = &v140 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v14 - 8);
  v155 = &v140 - v15;
  v154 = type metadata accessor for OwnedBeaconRecord(0);
  v153 = *(v154 - 8);
  __chkstk_darwin(v154);
  v150 = &v140 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000BC4D4(&qword_10169DBD0, &unk_1013D6790);
  __chkstk_darwin(v17 - 8);
  v19 = &v140 - v18;
  v152 = type metadata accessor for BeaconStatus(0);
  __chkstk_darwin(v152);
  v151 = &v140 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for UUID();
  v169 = *(v173 - 8);
  v21 = __chkstk_darwin(v173);
  v157 = &v140 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v149 = &v140 - v24;
  __chkstk_darwin(v23);
  v26 = &v140 - v25;
  v170 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator(0);
  v171 = *(v170 - 8);
  v27 = __chkstk_darwin(v170);
  v29 = &v140 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = &v140 - v30;
  v32 = type metadata accessor for DispatchPredicate();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v35 = (&v140 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = *(v4 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue);
  *v35 = v36;
  (*(v33 + 104))(v35, enum case for DispatchPredicate.onQueue(_:), v32);
  v165 = v36;
  LOBYTE(v36) = _dispatchPreconditionTest(_:)();
  (*(v33 + 8))(v35, v32);
  if ((v36 & 1) == 0)
  {
    __break(1u);
LABEL_61:
    swift_once();
    goto LABEL_5;
  }

  v37 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_coordinators;
  result = swift_beginAccess();
  v39 = *(v4 + v37);
  if (!*(v39 + 16))
  {
    return result;
  }

  v35 = v172;
  v40 = sub_1000210EC(v172);
  if ((v41 & 1) == 0)
  {
  }

  v144 = v37;
  sub_100833680(*(v39 + 56) + *(v171 + 72) * v40, v29, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);

  sub_1008336E8(v29, v31, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
  v143 = v4;
  v142 = *(v4 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_beaconStore);
  sub_100025020(v35, &v179);
  if (qword_101694960 != -1)
  {
    goto LABEL_61;
  }

LABEL_5:
  v145 = type metadata accessor for Logger();
  v42 = sub_1000076D4(v145, qword_10177B380);
  v43 = v169;
  v44 = *(v169 + 16);
  v45 = v173;
  v148 = v169 + 16;
  v147 = v44;
  v44(v26, v35, v173);
  v140 = v42;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();
  v48 = os_log_type_enabled(v46, v47);
  v146 = v6;
  if (v48)
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v176 = v50;
    *v49 = 141558531;
    *(v49 + 4) = 1752392040;
    *(v49 + 12) = 2081;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v51 = dispatch thunk of CustomStringConvertible.description.getter();
    v53 = v52;
    v141 = *(v43 + 8);
    v141(v26, v173);
    v54 = sub_1000136BC(v51, v53, &v176);
    v45 = v173;

    *(v49 + 14) = v54;
    *(v49 + 22) = 2048;
    *(v49 + 24) = a3;
    _os_log_impl(&_mh_execute_header, v46, v47, "Play sound running: for %{private,mask.hash}s, timeout: %f.", v49, 0x20u);
    sub_100007BAC(v50);

    v35 = v172;
  }

  else
  {

    v141 = *(v43 + 8);
    v141(v26, v45);
  }

  v55 = v170;
  sub_1000D2A70(&v179, &v174, &qword_101696920, &unk_10138B200);
  v56 = v31;
  if (!v175)
  {
    sub_10000B3A8(&v174, &qword_101696920, &unk_10138B200);
LABEL_15:
    v31[v55[10]] = 0;
    goto LABEL_28;
  }

  sub_10000A748(&v174, &v176);
  v57 = v177;
  v58 = v178;
  sub_1000035D0(&v176, v177);
  if (((*(v58 + 120))(v57, v58) & 1) == 0)
  {
    sub_100007BAC(&v176);
    v45 = v173;
    goto LABEL_15;
  }

  sub_100AC6DA0(v35, v19);
  v59 = sub_1000BC4D4(&qword_10169DBE0, &unk_1013BD7D0);
  v60 = (*(*(v59 - 8) + 48))(v19, 1, v59);
  v45 = v173;
  if (v60 == 1)
  {
    sub_10000B3A8(v19, &qword_10169DBD0, &unk_1013D6790);
  }

  else
  {
    v61 = v151;
    sub_1008336E8(v19, v151, type metadata accessor for BeaconStatus);
    v62 = *(v61 + *(v152 + 20));
    sub_1008333E4(v61, type metadata accessor for BeaconStatus);
    v63 = sub_10001993C(v62 & 0xB);
    sub_10001F280(&v176, &v174);
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    v64 = v155;
    v65 = v154;
    v66 = swift_dynamicCast();
    v67 = *(v153 + 56);
    if (v66)
    {
      v67(v64, 0, 1, v65);
      v68 = v150;
      sub_1008336E8(v64, v150, type metadata accessor for OwnedBeaconRecord);
      v69 = sub_100D608FC();
      if ((v69 & 0x100) != 0)
      {
        sub_1008333E4(v68, type metadata accessor for OwnedBeaconRecord);
      }

      else
      {
        v70 = v69;
        v71 = v177;
        v72 = v178;
        v73 = sub_1000035D0(&v176, v177);
        v74 = sub_100B167CC(v73, (v63 >> 8) & 1, HIWORD(v63) & 1, HIBYTE(v63) & 1, v71, v72);
        v75 = v74[2] == 2 && (sub_1011207C8(2u, v74) || v70 == 2);
        v35 = v172;
        v76 = v147;
        v77 = v149;
        v78 = v75;
        v31[*(v170 + 40)] = v75;
        v79 = v173;
        v76(v77, v35, v173);
        swift_bridgeObjectRetain_n();
        v80 = Logger.logObject.getter();
        v81 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          v155 = swift_slowAlloc();
          *&v174 = v155;
          *v82 = 67110147;
          *(v82 + 4) = v78;
          *(v82 + 8) = 2160;
          *(v82 + 10) = 1752392040;
          *(v82 + 18) = 2081;
          sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v83 = dispatch thunk of CustomStringConvertible.description.getter();
          v85 = v84;
          v141(v77, v79);
          v86 = sub_1000136BC(v83, v85, &v174);

          *(v82 + 20) = v86;
          *(v82 + 28) = 2048;
          v87 = v74[2];

          *(v82 + 30) = v87;

          *(v82 + 38) = 2082;
          v88 = Set.description.getter();
          v90 = v89;

          v91 = sub_1000136BC(v88, v90, &v174);

          *(v82 + 40) = v91;
          _os_log_impl(&_mh_execute_header, v80, v81, "Play sound running: airPodPlayingSoundWithBothBudsInCase %{BOOL}d for %{private,mask.hash}s. Nearby Count: %ld, nearby: %{public}s.", v82, 0x30u);
          swift_arrayDestroy();

          v35 = v172;
        }

        else
        {

          swift_bridgeObjectRelease_n();
          v141(v77, v79);
        }

        sub_1008333E4(v150, type metadata accessor for OwnedBeaconRecord);
        v55 = v170;
        v45 = v79;
      }
    }

    else
    {
      v67(v64, 1, 1, v65);
      sub_10000B3A8(v64, &unk_1016A9A20, &qword_10138B280);
    }
  }

  sub_100007BAC(&v176);
LABEL_28:
  swift_beginAccess();
  *(v56 + v55[6]) = 2;
  v92 = v158;
  static Date.trustedNow.getter(v158);
  (*(v159 + 40))(v56 + v55[8], v92, v160);
  swift_endAccess();
  v93 = v157;
  v94 = v147;
  v147(v157, v35, v45);
  v173 = v56;
  v95 = v161;
  sub_100833680(v56, v161, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
  (*(v171 + 56))(v95, 0, 1, v55);
  swift_beginAccess();
  sub_1001DE600(v95, v93);
  swift_endAccess();
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v96 = qword_10177B2E8;
  v97 = v164;
  v94(v164, v35, v45);
  v98 = v162;
  static Date.trustedNow.getter(v97 + *(v162 + 20));
  *(v97 + *(v98 + 24)) = 25;
  sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
  v99 = (*(v163 + 80) + 32) & ~*(v163 + 80);
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_101385D80;
  sub_100833680(v97, v100 + v99, type metadata accessor for BeaconObservation);
  v101 = type metadata accessor for Transaction();
  __chkstk_darwin(v101);
  *(&v140 - 4) = v96;
  *(&v140 - 3) = v100;
  *(&v140 - 2) = 0;
  *(&v140 - 1) = 0;
  static Transaction.named<A>(_:with:)();

  sub_1008333E4(v97, type metadata accessor for BeaconObservation);
  sub_10082145C(v35);
  v102 = sub_100810310(v35);
  My = type metadata accessor for Feature.FindMy();
  v177 = My;
  v178 = sub_1008345FC(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v104 = sub_1000280DC(&v176);
  (*(*(My - 8) + 104))(v104, enum case for Feature.FindMy.spPlaySoundAll(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(&v176);
  if ((My & 1) == 0)
  {
    v105 = v145;
    v106 = v173;
    v107 = v146;
    goto LABEL_54;
  }

  v105 = v145;
  v106 = v173;
  v107 = v146;
  if ((v102 & 1) == 0)
  {
    v108 = v156;
    if (v156 > 5)
    {
      if (qword_101694968 != -1)
      {
        v139 = v145;
        swift_once();
        v105 = v139;
      }

      v118 = v105;
      sub_1000076D4(v105, qword_1016AA7B0);
      v119 = Logger.logObject.getter();
      v120 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v119, v120))
      {
        v121 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v176 = v122;
        *v121 = 136315394;
        *(v121 + 4) = sub_1000136BC(0xD000000000000029, 0x8000000101360E90, &v176);
        *(v121 + 12) = 2048;
        *(v121 + 14) = v108;
        _os_log_impl(&_mh_execute_header, v119, v120, "%s Unexpected play sound context %ld!", v121, 0x16u);
        sub_100007BAC(v122);
      }

      sub_1000D2A70(&v179, &v176, &qword_101696920, &unk_10138B200);
      v123 = v177;
      if (v177)
      {
        v124 = v178;
        sub_1000035D0(&v176, v177);
        v125 = (*(v124 + 184))(v123, v124);
        sub_100007BAC(&v176);
        v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v128 = v127;
        if (v126 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v128 == v129)
        {

          a3 = 30.0;
          v105 = v118;
          goto LABEL_54;
        }

        v130 = _stringCompareWithSmolCheck(_:_:expecting:)();

        a3 = 30.0;
        v105 = v118;
        if (v130)
        {
          goto LABEL_54;
        }
      }

      else
      {
        sub_10000B3A8(&v176, &qword_101696920, &unk_10138B200);
        v105 = v118;
      }
    }

    else
    {
      if (((1 << v156) & 0x1D) == 0)
      {
        a3 = 2.0;
        goto LABEL_54;
      }

      v109 = v145;
      sub_1000D2A70(&v179, &v176, &qword_101696920, &unk_10138B200);
      v110 = v177;
      if (v177)
      {
        v111 = v178;
        sub_1000035D0(&v176, v177);
        v112 = (*(v111 + 184))(v110, v111);
        sub_100007BAC(&v176);
        v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v115 = v114;
        if (v113 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v115 == v116)
        {

          a3 = 30.0;
          v105 = v109;
          goto LABEL_54;
        }

        v117 = _stringCompareWithSmolCheck(_:_:expecting:)();

        a3 = 30.0;
        v105 = v109;
        if (v117)
        {
          goto LABEL_54;
        }
      }

      else
      {
        sub_10000B3A8(&v176, &qword_101696920, &unk_10138B200);
        v105 = v109;
      }
    }

    a3 = 20.0;
  }

LABEL_54:
  if (qword_101694968 != -1)
  {
    v138 = v105;
    swift_once();
    v105 = v138;
  }

  sub_1000076D4(v105, qword_1016AA7B0);
  v131 = Logger.logObject.getter();
  v132 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v131, v132))
  {
    v133 = swift_slowAlloc();
    v134 = swift_slowAlloc();
    v176 = v134;
    *v133 = 136315394;
    *(v133 + 4) = sub_1000136BC(0xD000000000000029, 0x8000000101360E90, &v176);
    *(v133 + 12) = 2048;
    *(v133 + 14) = a3;
    _os_log_impl(&_mh_execute_header, v131, v132, "%s scheduling timeout block after %f seconds", v133, 0x16u);
    sub_100007BAC(v134);
  }

  v135 = v166;
  static DispatchTime.now()();
  v136 = v167;
  + infix(_:_:)();
  v137 = *(v168 + 8);
  v137(v135, v107);

  OS_dispatch_queue.asyncAfter(deadline:execute:)();

  v137(v136, v107);
  sub_10000B3A8(&v179, &qword_101696920, &unk_10138B200);
  return sub_1008333E4(v106, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
}

uint64_t sub_100819C70(uint64_t a1, int a2)
{
  v53 = a2;
  v52 = type metadata accessor for PlaySoundUserNotification(0);
  __chkstk_darwin(v52);
  v54 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LocalizationUtility.Table();
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v49 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  __chkstk_darwin(v6 - 8);
  v8 = (&v48 - v7);
  v9 = type metadata accessor for OwnedBeaconGroup(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  __chkstk_darwin(v13 - 8);
  v15 = (&v48 - v14);
  v16 = type metadata accessor for WildModeAssociationRecord(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100023184(a1, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10000B3A8(v15, &unk_1016C7C90, &qword_1013BB4B0);
    sub_100AC53EC(a1, v8);
    v20 = a1;
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_10000B3A8(v8, &unk_1016AF8B0, &unk_1013A0700);
      v21 = sub_100A8F20C(a1);
      v23 = v54;
      v24 = v52;
      if (v22)
      {
        v25 = v21;
        v26 = v22;
      }

      else
      {
        v31 = v50;
        v30 = v51;
        v32 = v49;
        (*(v50 + 104))(v49, enum case for LocalizationUtility.Table.default(_:), v51);
        v25 = static LocalizationUtility.localizedString(key:table:)();
        v26 = v33;
        (*(v31 + 8))(v32, v30);
      }

      v28 = 64;
    }

    else
    {
      sub_1008336E8(v8, v12, type metadata accessor for OwnedBeaconGroup);
      v29 = &v12[*(v9 + 36)];
      v25 = *v29;
      v26 = v29[1];

      sub_1008333E4(v12, type metadata accessor for OwnedBeaconGroup);
      v28 = 64;
      v23 = v54;
      v24 = v52;
    }
  }

  else
  {
    sub_1008336E8(v15, v19, type metadata accessor for WildModeAssociationRecord);
    v25 = sub_100306A98();
    v26 = v27;
    sub_1008333E4(v19, type metadata accessor for WildModeAssociationRecord);
    v28 = 65;
    v23 = v54;
    v20 = a1;
    v24 = v52;
  }

  v34 = v24[9];
  v35 = type metadata accessor for UUID();
  (*(*(v35 - 8) + 16))(&v23[v34], v20, v35);
  *v23 = 1;
  v23[1] = v28;
  UUID.init()();
  v36 = &v23[v24[7]];
  *v36 = v25;
  v36[1] = v26;
  v23[v24[8]] = v53 & 1;
  if (qword_101694EE0 != -1)
  {
    swift_once();
  }

  v57[3] = v24;
  v57[4] = &off_101636A50;
  v37 = sub_1000280DC(v57);
  sub_100833680(v23, v37, type metadata accessor for PlaySoundUserNotification);
  v38 = objc_allocWithZone(UNUserNotificationCenter);
  v39 = String._bridgeToObjectiveC()();

  v40 = [v38 initWithBundleIdentifier:v39];

  v41 = sub_10111B408(v37);
  UUID.uuidString.getter();
  v42 = v41;
  v43 = String._bridgeToObjectiveC()();

  v44 = [objc_opt_self() requestWithIdentifier:v43 content:v42 trigger:0 destinations:7];

  sub_10001F280(v57, v56);
  v45 = swift_allocObject();
  sub_10000A748(v56, v45 + 16);
  *(v45 + 56) = 0;
  *(v45 + 64) = 0;
  aBlock[4] = sub_100358EC4;
  aBlock[5] = v45;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10077732C;
  aBlock[3] = &unk_1016358B0;
  v46 = _Block_copy(aBlock);

  [v40 addNotificationRequest:v44 withCompletionHandler:v46];

  _Block_release(v46);
  sub_100007BAC(v57);
  return sub_1008333E4(v23, type metadata accessor for PlaySoundUserNotification);
}

uint64_t sub_10081A3C8(int64_t a1, uint64_t a2, _BYTE *a3, unint64_t a4, uint64_t a5, double a6)
{
  v177 = a5;
  v11 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v12 = __chkstk_darwin(v11 - 8);
  v186 = &v159[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v185 = &v159[-v14];
  v182 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v182);
  v181 = &v159[-v15];
  v198 = type metadata accessor for Date();
  v199 = *(v198 - 8);
  __chkstk_darwin(v198);
  v187 = &v159[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v194 = type metadata accessor for BeaconObservation(0);
  v193 = *(v194 - 8);
  __chkstk_darwin(v194);
  v192 = &v159[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v175 = type metadata accessor for DispatchWorkItemFlags();
  v174 = *(v175 - 8);
  __chkstk_darwin(v175);
  v172 = &v159[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v173 = type metadata accessor for DispatchQoS();
  v171 = *(v173 - 8);
  __chkstk_darwin(v173);
  v170 = &v159[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v169 = type metadata accessor for DispatchQoS.QoSClass();
  v168 = *(v169 - 8);
  __chkstk_darwin(v169);
  v167 = &v159[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v188 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator(0);
  v165 = *(v188 - 8);
  v21 = __chkstk_darwin(v188);
  v164 = &v159[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __chkstk_darwin(v21);
  v180 = &v159[-v24];
  __chkstk_darwin(v23);
  *&v189 = &v159[-v25];
  v26 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v26 - 8);
  v197 = &v159[-v27];
  v28 = type metadata accessor for UUID();
  v29 = *(v28 - 8);
  v30 = __chkstk_darwin(v28);
  v205 = &v159[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = __chkstk_darwin(v30);
  v201 = &v159[-v33];
  v34 = __chkstk_darwin(v32);
  v190 = &v159[-v35];
  v36 = __chkstk_darwin(v34);
  v204 = &v159[-v37];
  v38 = __chkstk_darwin(v36);
  v191 = &v159[-v39];
  v40 = __chkstk_darwin(v38);
  v42 = &v159[-v41];
  v43 = __chkstk_darwin(v40);
  v45 = &v159[-v44];
  __chkstk_darwin(v43);
  v47 = &v159[-v46];
  v206 = 0;
  v48 = *(type metadata accessor for OwnedBeaconGroup(0) + 24);
  v202 = v29;
  v51 = *(v29 + 16);
  v50 = (v29 + 16);
  v49 = v51;
  v51(v47, (a1 + v48), v28);
  v184 = a2;
  sub_10080AF18();
  LODWORD(v200) = v52;
  if (qword_101694960 != -1)
  {
    goto LABEL_93;
  }

  while (1)
  {
    v53 = type metadata accessor for Logger();
    v54 = sub_1000076D4(v53, qword_10177B380);
    v179 = v47;
    v49(v45, v47, v28);
    v196 = v50;
    v195 = v49;
    v49(v42, a3, v28);
    v163 = v54;
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();
    v57 = os_log_type_enabled(v55, v56);
    v183 = a1;
    v178 = a3;
    v176 = a4;
    if (v57)
    {
      v58 = swift_slowAlloc();
      v162 = swift_slowAlloc();
      aBlock = *&v162;
      *v58 = 136315650;
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v161 = v55;
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v60;
      v62 = v202;
      v160 = v56;
      v63 = *(v202 + 8);
      v63(v45, v28);
      v64 = sub_1000136BC(v59, v61, &aBlock);

      *(v58 + 4) = v64;
      *(v58 + 12) = 2048;
      *(v58 + 14) = a6;
      *(v58 + 22) = 2080;
      v65 = dispatch thunk of CustomStringConvertible.description.getter();
      v67 = v66;
      v203 = v63;
      v63(v42, v28);
      v47 = v62;
      v68 = sub_1000136BC(v65, v67, &aBlock);

      *(v58 + 24) = v68;
      v69 = v161;
      _os_log_impl(&_mh_execute_header, v161, v160, "Stop sound %s timeout %f. CommandId %s", v58, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v47 = v202;
      v70 = *(v202 + 8);
      v70(v42, v28);
      v203 = v70;
      v70(v45, v28);
    }

    v71 = v187;
    v72 = v204;
    v166 = v28;
    if ((v200 & 1) == 0)
    {
      break;
    }

    sub_100519FB0();
    v73 = v197;
    sub_10112C648(v74, v197);

    if ((*(v47 + 6))(v73, 1, v28) == 1)
    {
      sub_10000B3A8(v73, &qword_1016980D0, &unk_10138F3B0);
      break;
    }

    v75 = v191;
    (*(v47 + 4))(v191, v73, v28);
    v76 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_coordinators;
    v77 = v184;
    swift_beginAccess();
    v78 = *(v77 + v76);
    if (!*(v78 + 16))
    {
      goto LABEL_17;
    }

    v79 = sub_1000210EC(v75);
    if ((v80 & 1) == 0)
    {

LABEL_17:
      v203(v75, v28);
      break;
    }

    v81 = v180;
    sub_100833680(*(v78 + 56) + v165[9] * v79, v180, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);

    v82 = v189;
    sub_1008336E8(v81, v189, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
    if (*(v82 + *(v188 + 24)) == 4)
    {
      v195(v72, v179, v28);
      v83 = v164;
      sub_100833680(v82, v164, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v84, v85))
      {

        sub_1008333E4(v83, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
        v100 = v203;
        v203(v72, v28);
        sub_1008333E4(v82, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
        v100(v191, v28);
        v47 = v202;
        break;
      }

      LODWORD(v200) = v85;
      v86 = v72;
      v87 = swift_slowAlloc();
      aBlock = COERCE_DOUBLE(swift_slowAlloc());
      *v87 = 136315394;
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v88 = dispatch thunk of CustomStringConvertible.description.getter();
      v90 = v89;
      v203(v86, v28);
      v91 = sub_1000136BC(v88, v90, &aBlock);

      *(v87 + 4) = v91;
      *(v87 + 12) = 2080;
      v92 = *(v83 + *(v188 + 24));
      if (v92 <= 2)
      {
        if (*(v83 + *(v188 + 24)))
        {
          if (v92 == 1)
          {
            v101 = 0x4979616C702ELL;
            goto LABEL_43;
          }

          v104 = 0xEC000000676E696ELL;
          v102 = 0x6E755279616C702ELL;
        }

        else
        {
          v104 = 0xEB00000000646575;
          v102 = 0x65755179616C702ELL;
        }
      }

      else if (*(v83 + *(v188 + 24)) > 4u)
      {
        if (v92 == 5)
        {
          v93 = 0x43706F74732ELL;
LABEL_39:
          v102 = v93 & 0xFFFFFFFFFFFFLL | 0x6D6F000000000000;
          v103 = 1952803952;
          goto LABEL_44;
        }

LABEL_91:
        v104 = 0xE800000000000000;
        v102 = 0x74756F656D69742ELL;
      }

      else
      {
        if (v92 == 3)
        {
          v93 = 0x4379616C702ELL;
          goto LABEL_39;
        }

        v101 = 0x49706F74732ELL;
LABEL_43:
        v102 = v101 & 0xFFFFFFFFFFFFLL | 0x696E000000000000;
        v103 = 1952541044;
LABEL_44:
        v104 = v103 | 0xEE00646500000000;
      }

      sub_1008333E4(v83, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
      v105 = sub_1000136BC(v102, v104, &aBlock);

      *(v87 + 14) = v105;
      _os_log_impl(&_mh_execute_header, v84, v200, "Cannot stop sound for %s. Invalid state %s!", v87, 0x16u);
      swift_arrayDestroy();

      sub_1008333E4(v189, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
      v28 = v166;
      v203(v191, v166);
LABEL_46:
      v71 = v187;
      break;
    }

    v49 = v28;
    sub_100519FB0();
    v42 = v94;
    v45 = v94 + 56;
    v95 = 1 << v94[32];
    v96 = -1;
    if (v95 < 64)
    {
      v96 = ~(-1 << v95);
    }

    a4 = v96 & *(v94 + 7);
    v97 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_playSoundSubjects;

    v204 = v97;
    swift_beginAccess();
    v28 = 0;
    a1 = (v95 + 63) >> 6;
    v50 = v47 + 8;
    a3 = v190;
    while (a4)
    {
LABEL_29:
      v195(a3, (*(v42 + 6) + *(v47 + 9) * (__clz(__rbit64(a4)) | (v28 << 6))), v49);
      if (*(*&v204[v184] + 16))
      {

        sub_1000210EC(a3);
        if (v99)
        {

          *&aBlock = 4;
          PassthroughSubject.send(completion:)();
        }

        else
        {
        }

        a3 = v190;
      }

      a4 &= a4 - 1;
      sub_100815748(a3, 0, 0);
      v203(a3, v49);
    }

    while (1)
    {
      v98 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v98 >= a1)
      {

        sub_1008333E4(v189, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
        v28 = v49;
        v203(v191, v49);

        goto LABEL_46;
      }

      a4 = *&v45[8 * v98];
      ++v28;
      if (a4)
      {
        v28 = v98;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_93:
    swift_once();
  }

  sub_100519FB0();
  v84 = (v106 + 56);
  v107 = 1 << *(v106 + 32);
  v108 = -1;
  if (v107 < 64)
  {
    v108 = ~(-1 << v107);
  }

  isa = v108 & *(v106 + 56);
  v110 = (v107 + 63) >> 6;
  v180 = (v199 + 48);
  v197 = (v199 + 32);
  LODWORD(v188) = enum case for Feature.FindMy.trustedNowUsesReferenceClock(_:);
  v165 = NSSystemClockDidChangeNotification;
  v164 = &v214;
  v190 = v47 + 32;
  v200 = v47 + 8;
  v199 = v106;

  v87 = 0;
  v83 = &unk_101696900;
  v189 = xmmword_101385D80;
  v111 = v201;
  v191 = v110;
  while (isa)
  {
LABEL_57:
    v119 = *(v199 + 48) + *(v47 + 9) * (__clz(__rbit64(isa)) | (v87 << 6));
    v120 = v195;
    v195(v111, v119, v28);
    if (qword_101694920 != -1)
    {
      swift_once();
    }

    v204 = qword_10177B2E8;
    v120(v205, v111, v28);
    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    aBlock = 7.45683732e247;
    *&v213 = -5.98008217e197;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    v121 = v206;
    if (v207 == 1)
    {
      v122 = [objc_opt_self() sharedInstance];
      v123 = [v122 isInternalBuild];

      if (v123)
      {
        if (qword_101694418 != -1)
        {
          swift_once();
        }

        v124 = sub_1000076D4(v182, qword_101696A00);
        swift_beginAccess();
        v125 = v124;
        v126 = v181;
        sub_1000D2A70(v125, v181, &unk_101696900, &unk_10138B1E0);
        v112 = v198;
        if ((*v180)(v126, 1, v198) != 1)
        {
          (*v197)(v71, v126, v112);
          goto LABEL_51;
        }

        sub_10000B3A8(v126, &unk_101696900, &unk_10138B1E0);
      }
    }

    My = type metadata accessor for Feature.FindMy();
    v215 = My;
    v216 = sub_1008345FC(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
    v128 = sub_1000280DC(&aBlock);
    (*(*(My - 8) + 104))(v128, v188, My);
    LOBYTE(My) = isFeatureEnabled(_:)();
    sub_100007BAC(&aBlock);
    if (My)
    {
      if (qword_101694FD8 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&qword_101696CB8, &unk_10138B600);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v129 = *&v213;
      if ((LOBYTE(aBlock) & 1) == 0)
      {
        v130 = [objc_opt_self() defaultCenter];
        v216 = sub_1000DFB44;
        v217 = 0;
        aBlock = COERCE_DOUBLE(_NSConcreteStackBlock);
        v213 = 1107296256;
        v214 = sub_100F0FA50;
        v215 = &unk_101635220;
        v131 = _Block_copy(&aBlock);

        v132 = [v130 addObserverForName:v165 object:0 queue:0 usingBlock:v131];
        _Block_release(v131);
        v71 = v187;
        swift_unknownObjectRelease();
      }

      if (qword_101694FE8 != -1)
      {
        swift_once();
      }

      if (*&qword_1016C0DA0 >= v129)
      {
        sub_100F10324(0);
      }

      Current = CFAbsoluteTimeGetCurrent();
      sub_1000BC4D4(&unk_1016B7CA0, &unk_101395220);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      if (Current - aBlock - *&v213 <= 86400.0)
      {
        v112 = v198;
      }

      else
      {
        OSAllocatedUnfairLock.callAsFunction<A>(_:)();
        v206 = v121;
        v134 = type metadata accessor for TaskPriority();
        v135 = *(v134 - 8);
        v136 = v185;
        (*(v135 + 56))(v185, 1, 1, v134);
        v137 = swift_allocObject();
        *(v137 + 16) = 0;
        *(v137 + 24) = 0;
        v138 = v186;
        sub_1000D2A70(v136, v186, &qword_101698C00, &qword_10138B570);
        LODWORD(v136) = (*(v135 + 48))(v138, 1, v134);

        if (v136 == 1)
        {
          sub_10000B3A8(v138, &qword_101698C00, &qword_10138B570);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v135 + 8))(v186, v134);
        }

        v139 = *(v137 + 16);
        swift_unknownObjectRetain();

        if (v139)
        {
          swift_getObjectType();
          v140 = dispatch thunk of Actor.unownedExecutor.getter();
          v142 = v141;
          swift_unknownObjectRelease();
        }

        else
        {
          v140 = 0;
          v142 = 0;
        }

        v28 = v166;
        sub_10000B3A8(v185, &qword_101698C00, &qword_10138B570);
        v143 = swift_allocObject();
        *(v143 + 16) = &unk_10138B610;
        *(v143 + 24) = v137;
        v121 = v206;
        if (v142 | v140)
        {
          v208 = 0;
          v209 = 0;
          v210 = v140;
          v211 = v142;
        }

        v112 = v198;
        swift_task_create();

        v71 = v187;
      }

      Date.init(timeIntervalSinceReferenceDate:)();
    }

    else
    {
      Date.init()();
      v112 = v198;
    }

LABEL_51:
    isa &= isa - 1;
    v113 = v192;
    (*v190)(v192, v205, v28);
    v114 = v194;
    (*v197)(v113 + *(v194 + 20), v71, v112);
    *(v113 + *(v114 + 24)) = 26;
    sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
    v115 = (*(v193 + 80) + 32) & ~*(v193 + 80);
    v116 = swift_allocObject();
    *(v116 + 16) = v189;
    sub_100833680(v113, v116 + v115, type metadata accessor for BeaconObservation);
    v117 = type metadata accessor for Transaction();
    __chkstk_darwin(v117);
    *&v159[-32] = v204;
    *&v159[-24] = v116;
    *&v159[-16] = 0;
    *&v159[-8] = 0;
    static Transaction.named<A>(_:with:)();
    v206 = v121;

    sub_1008333E4(v113, type metadata accessor for BeaconObservation);
    v111 = v201;
    v203(v201, v28);
    v47 = v202;
    v110 = v191;
    v83 = &unk_101696900;
  }

  while (1)
  {
    v118 = v87 + 1;
    if (__OFADD__(v87, 1))
    {
      __break(1u);
      goto LABEL_91;
    }

    if (v118 >= v110)
    {
      break;
    }

    isa = v84[v118].isa;
    ++v87;
    if (isa)
    {
      v87 = v118;
      goto LABEL_57;
    }
  }

  sub_1000BC488();
  v144 = v168;
  v145 = v167;
  v146 = v169;
  (*(v168 + 104))(v167, enum case for DispatchQoS.QoSClass.default(_:), v169);
  v147 = static OS_dispatch_queue.global(qos:)();
  (*(v144 + 8))(v145, v146);
  v148 = swift_allocObject();
  v149 = v177;
  *(v148 + 16) = v176;
  *(v148 + 24) = v149;
  v216 = sub_100470308;
  v217 = v148;
  aBlock = COERCE_DOUBLE(_NSConcreteStackBlock);
  v213 = 1107296256;
  v214 = sub_100006684;
  v215 = &unk_1016352C0;
  v150 = _Block_copy(&aBlock);

  v151 = v28;
  v152 = v170;
  static DispatchQoS.unspecified.getter();
  v207 = _swiftEmptyArrayStorage;
  sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v153 = v172;
  v154 = v175;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v150);

  (*(v174 + 8))(v153, v154);
  (*(v171 + 8))(v152, v173);

  v155 = type metadata accessor for Transaction();
  __chkstk_darwin(v155);
  v156 = v184;
  *&v159[-48] = v183;
  *&v159[-40] = v156;
  *&v159[-32] = v178;
  *&v159[-24] = a6;
  v157 = v179;
  *&v159[-16] = v179;
  static Transaction.named<A>(_:with:)();
  return (v203)(v157, v151);
}

uint64_t sub_10081C254(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, double a6)
{
  v106 = a5;
  v115 = a4;
  v110 = a1;
  v10 = sub_1000BC4D4(&qword_1016AA8E8, &qword_1013BD6E0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v76 - v12;
  v14 = sub_1000BC4D4(&qword_1016AA8F0, &unk_1013BD6E8);
  v113 = *(v14 - 1);
  __chkstk_darwin(v14);
  v16 = &v76 - v15;
  v17 = type metadata accessor for OwnedBeaconGroup(0);
  v100 = *(v17 - 8);
  __chkstk_darwin(v17 - 8);
  v101 = v18;
  v109 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for UUID();
  v102 = *(v105 - 8);
  __chkstk_darwin(v105);
  v99 = v19;
  v104 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v20 - 8);
  v95 = &v76 - v21;
  v88 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v86 = *(v88 - 8);
  __chkstk_darwin(v88);
  v83 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1000BC4D4(&qword_1016AA8F8, &qword_1013BD6F8);
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v79 = &v76 - v23;
  v85 = sub_1000BC4D4(&qword_1016AA900, &qword_1013BD700);
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v81 = &v76 - v24;
  v90 = sub_1000BC4D4(&qword_1016AA908, &qword_1013BD708);
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v87 = &v76 - v25;
  v93 = sub_1000BC4D4(&qword_1016AA910, &qword_1013BD710);
  v92 = *(v93 - 1);
  __chkstk_darwin(v93);
  v91 = &v76 - v26;
  v98 = sub_1000BC4D4(&qword_1016AA918, &qword_1013BD718);
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v103 = &v76 - v27;
  v28 = _swiftEmptyArrayStorage;
  v122 = _swiftEmptyArrayStorage;
  v107 = a2;
  sub_100519FB0();
  v117 = &v122;
  v118 = a3;
  v108 = a3;
  v119 = v115;
  sub_1005C6534(sub_100832438, v116, v29);
  v96 = v6;

  v30 = v122;
  v31 = v122[2];
  v94 = v122;
  if (v31)
  {
    v121 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v32 = v30 + 4;
    v33 = sub_1000041A4(&qword_1016AA930, &qword_1016AA920, &qword_1013BD720, &protocol conformance descriptor for AnyPublisher<A, B>);
    v114 = v11 + 8;
    v115 = v33;
    v112 = v10;
    v113 = (v113 + 8);
    v34 = v16;
    v111 = v14;
    do
    {
      v35 = *v32++;
      v120 = v35;

      sub_1000BC4D4(&qword_1016AA920, &qword_1013BD720);
      sub_1000BC4D4(&qword_1016AA928, &qword_1013BD728);
      Publisher.map<A>(_:)();
      sub_1000BC4D4(&qword_1016AA938, &qword_1013BD730);
      sub_1000041A4(&qword_1016AA940, &qword_1016AA8E8, &qword_1013BD6E0, &protocol conformance descriptor for Publishers.Map<A, B>);
      sub_1000041A4(&qword_1016AA948, &qword_1016AA938, &qword_1013BD730, &protocol conformance descriptor for Just<A>);
      v36 = v112;
      Publisher.catch<A>(_:)();
      (*v114)(v13, v36);
      sub_1000041A4(&qword_1016AA950, &qword_1016AA8F0, &unk_1013BD6E8, &protocol conformance descriptor for Publishers.Catch<A, B>);
      v37 = v111;
      Publisher.eraseToAnyPublisher()();

      (*v113)(v34, v37);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v31;
    }

    while (v31);
    v28 = v121;
  }

  v115 = Transaction.subscriptionCleaner.getter();
  v114 = swift_allocObject();
  *(v114 + 16) = 0;
  v121 = v28;
  sub_1000BC4D4(&qword_1016AA958, &qword_1013BD738);
  sub_1000041A4(&qword_1016AA960, &qword_1016AA958, &qword_1013BD738, &protocol conformance descriptor for [A]);
  sub_1000041A4(&qword_1016AA968, &qword_1016AA970, &qword_1013BD740, &protocol conformance descriptor for AnyPublisher<A, B>);
  v38 = Sequence<>.merged()();

  v121 = v38;
  sub_1000BC4D4(&qword_1016AA970, &qword_1013BD740);
  sub_100832458();
  v39 = v79;
  Publisher<>.setFailureType<A>(to:)();

  v40 = v83;
  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  v121 = *&v108[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue];
  v41 = v121;
  v42 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v43 = *(v42 - 8);
  v112 = *(v43 + 56);
  v113 = (v43 + 56);
  v44 = v95;
  v112(v95, 1, 1, v42);
  v78 = sub_1000BC488();
  sub_1000041A4(&qword_1016AA980, &qword_1016AA8F8, &qword_1013BD6F8, &protocol conformance descriptor for Publishers.SetFailureType<A, B>);
  v111 = sub_1008345FC(&qword_1016AF9C0, sub_1000BC488, &protocol conformance descriptor for OS_dispatch_queue);
  v77 = v41;
  v45 = v81;
  v46 = v82;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_10000B3A8(v44, &unk_1016B0FE0, &unk_101391980);
  (*(v86 + 8))(v40, v88);
  (*(v80 + 8))(v39, v46);
  sub_1000BC4D4(&qword_1016AA988, &qword_1013BD748);
  sub_1000041A4(&qword_1016AA990, &qword_1016AA900, &qword_1013BD700, &protocol conformance descriptor for Publishers.Timeout<A, B>);
  v47 = v87;
  v48 = v85;
  Publisher.map<A>(_:)();
  (*(v84 + 8))(v45, v48);
  sub_1000BC4D4(&qword_1016AA998, &qword_1013BD750);
  sub_1000041A4(&qword_1016AA9A0, &qword_1016AA908, &qword_1013BD708, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_1000041A4(&qword_1016AA9A8, &qword_1016AA998, &qword_1013BD750, &protocol conformance descriptor for Just<A>);
  v49 = v91;
  v50 = v90;
  Publisher.catch<A>(_:)();
  (*(v89 + 8))(v47, v50);
  v51 = v77;
  v121 = v77;
  v112(v44, 1, 1, v42);
  sub_1000041A4(&qword_1016AA9B0, &qword_1016AA910, &qword_1013BD710, &protocol conformance descriptor for Publishers.Catch<A, B>);
  v52 = v93;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v44, &unk_1016B0FE0, &unk_101391980);

  (*(v92 + 8))(v49, v52);
  v53 = v102;
  v54 = *(v102 + 16);
  v112 = (v102 + 16);
  v113 = v54;
  v56 = v104;
  v55 = v105;
  (v54)(v104, v106, v105);
  v111 = type metadata accessor for OwnedBeaconGroup;
  sub_100833680(v107, v109, type metadata accessor for OwnedBeaconGroup);
  v57 = *(v53 + 80);
  v58 = (v57 + 32) & ~v57;
  v99 += 7;
  v59 = (v99 + v58) & 0xFFFFFFFFFFFFFFF8;
  v60 = *(v100 + 80);
  v95 = (v60 + 8);
  v61 = (v60 + 8 + v59) & ~v60;
  v100 = v57 | v60;
  v101 += 7;
  v92 = (v101 + v61) & 0xFFFFFFFFFFFFFFF8;
  v62 = swift_allocObject();
  v63 = v115;
  *(v62 + 16) = v110;
  *(v62 + 24) = v63;
  v102 = *(v53 + 32);
  (v102)(v62 + v58, v56, v55);
  *(v62 + v59) = v114;
  v93 = type metadata accessor for OwnedBeaconGroup;
  v64 = v62 + v61;
  v65 = v109;
  sub_1008336E8(v109, v64, type metadata accessor for OwnedBeaconGroup);
  v66 = v108;
  *(v62 + v92) = v108;
  v113(v56, v106, v55);
  sub_100833680(v107, v65, v111);
  v67 = (v57 + 16) & ~v57;
  v68 = (v99 + v67) & 0xFFFFFFFFFFFFFFF8;
  v69 = &v95[v68] & ~v60;
  v70 = (v101 + v69) & 0xFFFFFFFFFFFFFFF8;
  v71 = swift_allocObject();
  (v102)(v71 + v67, v104, v105);
  *(v71 + v68) = v114;
  sub_1008336E8(v109, v71 + v69, v93);
  *(v71 + v70) = v66;
  *(v71 + ((v70 + 15) & 0xFFFFFFFFFFFFFFF8)) = a6;
  sub_1000041A4(&qword_1016AA9B8, &qword_1016AA918, &qword_1013BD718, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  swift_retain_n();
  v72 = v66;

  swift_unknownObjectRetain();
  v73 = v98;
  v74 = v103;
  Publisher.sink(receiveCompletion:receiveValue:)();

  (*(v97 + 8))(v74, v73);
  AnyCancellable.store(in:)();

  swift_unknownObjectRelease();
}

uint64_t sub_10081D388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000BC4D4(&qword_1016998E0, &qword_101392030);
  __chkstk_darwin(v8 - 8);
  v10 = v27 - v9;
  v28 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v28);
  v29 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v31 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  v30 = a4;
  sub_10081D85C(a1, a4);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(*a2 + 16) >= *(*a2 + 24) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27[1] = a3;
  v27[0] = *(v13 + 16);
  v16 = v31;
  (v27[0])(v31, v32, v12);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = swift_allocObject();
  (*(v13 + 32))(v18 + v17, v16, v12);
  *(v18 + ((v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
  aBlock[4] = sub_10083271C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016353D8;
  _Block_copy(aBlock);
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);

  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v19 = DispatchWorkItem.init(flags:block:)();

  v20 = v31;
  v21 = v32;
  v22 = v27[0];
  (v27[0])(v31, v32, v12);
  v22(v10, v30, v12);
  v23 = v22;
  v24 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator(0);
  v23(&v10[v24[5]], v21, v12);
  v25 = v24[8];

  static Date.trustedNow.getter(&v10[v25]);
  v10[v24[6]] = 4;
  *&v10[v24[7]] = v19;
  *&v10[v24[9]] = 0;
  v10[v24[10]] = 0;
  (*(*(v24 - 1) + 56))(v10, 0, 1, v24);
  swift_beginAccess();
  sub_1001DE600(v10, v20);
  swift_endAccess();
}

uint64_t sub_10081D85C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v109 = a1;
  ObjectType = swift_getObjectType();
  v5 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v5 - 8);
  v100 = &v94 - v6;
  v7 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  __chkstk_darwin(v7 - 8);
  v9 = (&v94 - v8);
  v105 = type metadata accessor for WildModeAssociationRecord(0);
  v107 = *(v105 - 8);
  v10 = *(v107 + 64);
  v11 = __chkstk_darwin(v105);
  v99 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v108 = (&v94 - v12);
  v112 = type metadata accessor for UUID();
  v110 = *(v112 - 8);
  v13 = *(v110 + 64);
  v14 = __chkstk_darwin(v112);
  v94 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v14);
  v98 = &v94 - v16;
  v17 = __chkstk_darwin(v15);
  v97 = &v94 - v18;
  __chkstk_darwin(v17);
  v20 = &v94 - v19;
  v21 = type metadata accessor for DispatchPredicate();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = (&v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v111 = v3;
  v25 = *&v3[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue];
  *v24 = v25;
  (*(v22 + 104))(v24, enum case for DispatchPredicate.onQueue(_:), v21);
  v26 = v25;
  LOBYTE(v25) = _dispatchPreconditionTest(_:)();
  (*(v22 + 8))(v24, v21);
  if (v25)
  {
    v103 = a2;
    if (qword_101694960 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v102 = type metadata accessor for Logger();
  sub_1000076D4(v102, qword_10177B380);
  v28 = v109;
  v27 = v110;
  v29 = *(v110 + 16);
  v104 = v110 + 16;
  v106 = v29;
  v29(v20, v109, v112);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  v32 = os_log_type_enabled(v30, v31);
  v96 = v10;
  v95 = v13;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = v112;
    v35 = v33;
    v36 = swift_slowAlloc();
    v113[0] = v36;
    *v35 = 141558275;
    *(v35 + 4) = 1752392040;
    *(v35 + 12) = 2081;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v38;
    v40 = v34;
    v41 = *(v27 + 8);
    (v41)(v20, v40);
    v42 = sub_1000136BC(v37, v39, v113);
    v28 = v109;

    *(v35 + 14) = v42;
    _os_log_impl(&_mh_execute_header, v30, v31, "Calling stop sound on device %{private,mask.hash}s", v35, 0x16u);
    sub_100007BAC(v36);
  }

  else
  {

    v41 = *(v27 + 8);
    (v41)(v20, v112);
  }

  v43 = sub_1000BC4D4(&qword_1016AA9C0, &qword_1013BD758);
  swift_allocObject();
  v44 = PassthroughSubject.init()();
  v45 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_stopSoundSubjects;
  v46 = v111;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v114 = *&v46[v45];
  *&v46[v45] = 0x8000000000000000;
  sub_101000078(v44, v28, isUniquelyReferenced_nonNull_native);
  *&v46[v45] = v114;
  swift_endAccess();
  sub_100023184(v28, v9);
  if ((*(v107 + 48))(v9, 1, v105) == 1)
  {
    sub_10000B3A8(v9, &unk_1016C7C90, &qword_1013BB4B0);
    v48 = sub_100810310(v28);
    My = type metadata accessor for Feature.FindMy();
    v113[3] = My;
    v113[4] = sub_1008345FC(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
    v50 = sub_1000280DC(v113);
    (*(*(My - 8) + 104))(v50, enum case for Feature.FindMy.spPlaySoundAll(_:), My);
    LOBYTE(My) = isFeatureEnabled(_:)();
    sub_100007BAC(v113);
    if (My & 1) == 0 || (v48)
    {
      sub_100801B60();
      v77 = v76;
      v78 = swift_getObjectType();
      (*(v77 + 56))(v28, v78, v77);
      swift_unknownObjectRelease();
      v113[0] = v44;
      sub_1000041A4(&qword_1016AA9C8, &qword_1016AA9C0, &qword_1013BD758, &protocol conformance descriptor for PassthroughSubject<A, B>);
      v79 = Publisher.eraseToAnyPublisher()();
    }

    else
    {
      v108 = v41;
      if (qword_101694968 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v102, qword_1016AA7B0);
      v51 = v94;
      v106(v94, v28, v112);
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v56 = v44;
        v57 = v112;
        v113[0] = v55;
        *v54 = 136315651;
        *(v54 + 4) = sub_1000136BC(0xD00000000000001CLL, 0x8000000101360DB0, v113);
        *(v54 + 12) = 2160;
        *(v54 + 14) = 1752392040;
        *(v54 + 22) = 2081;
        sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v58 = dispatch thunk of CustomStringConvertible.description.getter();
        v60 = v59;
        v61 = v57;
        v44 = v56;
        (v108)(v51, v61);
        v62 = sub_1000136BC(v58, v60, v113);
        v28 = v109;

        *(v54 + 24) = v62;
        _os_log_impl(&_mh_execute_header, v52, v53, "%s SPPlaySoundAll: %{private,mask.hash}s does NOT support ranging", v54, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        (v108)(v51, v112);
      }

      v79 = sub_10082B674(v28, v103, v44);
    }

    v92 = v79;
  }

  else
  {
    v105 = v43;
    v109 = v44;
    sub_1008336E8(v9, v108, type metadata accessor for WildModeAssociationRecord);
    if (qword_101694968 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v102, qword_1016AA7B0);
    v63 = v97;
    v106(v97, v28, v112);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v68 = v112;
      v113[0] = v67;
      *v66 = 136315651;
      *(v66 + 4) = sub_1000136BC(0xD00000000000001CLL, 0x8000000101360DB0, v113);
      *(v66 + 12) = 2160;
      *(v66 + 14) = 1752392040;
      *(v66 + 22) = 2081;
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v69 = dispatch thunk of CustomStringConvertible.description.getter();
      v71 = v70;
      v72 = v41;
      v73 = v110;
      v72(v63, v68);
      v74 = sub_1000136BC(v69, v71, v113);

      *(v66 + 24) = v74;
      _os_log_impl(&_mh_execute_header, v64, v65, "%s Non-owner stop sound on device: %{private,mask.hash}s", v66, 0x20u);
      swift_arrayDestroy();

      v75 = v73;
    }

    else
    {

      v75 = v110;
      (v41)(v63, v112);
    }

    v80 = type metadata accessor for TaskPriority();
    v81 = v100;
    (*(*(v80 - 8) + 56))(v100, 1, 1, v80);
    v82 = v99;
    sub_100833680(v108, v99, type metadata accessor for WildModeAssociationRecord);
    v83 = v98;
    v84 = v112;
    v106(v98, v103, v112);
    v85 = (*(v107 + 80) + 32) & ~*(v107 + 80);
    v86 = (v96 + *(v75 + 80) + v85) & ~*(v75 + 80);
    v87 = v75;
    v88 = (v95 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
    v89 = swift_allocObject();
    *(v89 + 16) = 0;
    *(v89 + 24) = 0;
    sub_1008336E8(v82, v89 + v85, type metadata accessor for WildModeAssociationRecord);
    (*(v87 + 32))(v89 + v86, v83, v84);
    v90 = v111;
    *(v89 + v88) = v111;
    *(v89 + ((v88 + 15) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
    v91 = v90;
    sub_10025EDD4(0, 0, v81, &unk_1013BD768, v89);

    v113[0] = v109;
    sub_1000041A4(&qword_1016AA9C8, &qword_1016AA9C0, &qword_1013BD758, &protocol conformance descriptor for PassthroughSubject<A, B>);
    v92 = Publisher.eraseToAnyPublisher()();
    sub_1008333E4(v108, type metadata accessor for WildModeAssociationRecord);
  }

  return v92;
}

void sub_10081E634(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694960 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177B380);
  (*(v4 + 16))(v6, a1, v3);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v19 = a1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v20[0] = v12;
    *v11 = 136315138;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v4 + 8))(v6, v3);
    v16 = sub_1000136BC(v13, v15, v20);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "Timed out stop sound waiting for CL. Beacon %s", v11, 0xCu);
    sub_100007BAC(v12);

    a1 = v19;
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    sub_100815748(a1, 0, 0);
  }
}

uint64_t sub_10081E8E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000D2A70(a1, a2, &qword_1016AA928, &qword_1013BD728);
  sub_1000BC4D4(&qword_1016AA988, &qword_1013BD748);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10081E94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v42 = a7;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v35 - v15;
  Transaction.capture()();
  if (qword_101694960 != -1)
  {
LABEL_17:
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177B380);
  v39 = *(v11 + 16);
  v40 = v11 + 16;
  v39(v16, a4, v10);
  swift_retain_n();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = os_log_type_enabled(v18, v19);
  v41 = v11;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v38 = a6;
    v22 = v21;
    v37 = swift_slowAlloc();
    v43 = v37;
    *v22 = 136315394;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v36 = v19;
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v18;
    v25 = v24;
    v26 = *(v11 + 8);
    v26(v16, v10);
    v27 = sub_1000136BC(v23, v25, &v43);

    *(v22 + 4) = v27;
    *(v22 + 12) = 1024;
    swift_beginAccess();
    LODWORD(v25) = *(a5 + 16);

    *(v22 + 14) = v25;

    v28 = v35;
    _os_log_impl(&_mh_execute_header, v35, v36, "Stop sound for group %s completion. Success? %{BOOL}d", v22, 0x12u);
    sub_100007BAC(v37);
  }

  else
  {

    v26 = *(v11 + 8);
    v26(v16, v10);
  }

  sub_100519FB0();
  a5 = v29;
  a4 = v29 + 56;
  v30 = 1 << *(v29 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v11 = v31 & *(v29 + 56);
  v16 = ((v30 + 63) >> 6);

  a6 = 0;
  if (v11)
  {
    while (1)
    {
      v32 = a6;
LABEL_13:
      v33 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v39(v14, *(a5 + 48) + *(v41 + 72) * (v33 | (v32 << 6)), v10);
      sub_100815748(v14, 1, 0);
      v26(v14, v10);
      if (!v11)
      {
        goto LABEL_9;
      }
    }
  }

  while (1)
  {
LABEL_9:
    v32 = a6 + 1;
    if (__OFADD__(a6, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v32 >= v16)
    {
      break;
    }

    v11 = *(a4 + 8 * v32);
    ++a6;
    if (v11)
    {
      a6 = v32;
      goto LABEL_13;
    }
  }
}

void sub_10081ED54(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v119 = a2;
  v120 = a5;
  v113 = a3;
  v114 = a4;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v121 = v8;
  v122 = v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v108[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v10);
  v117 = &v108[-v14];
  v15 = __chkstk_darwin(v13);
  v115 = &v108[-v16];
  v17 = __chkstk_darwin(v15);
  v112 = &v108[-v18];
  v19 = __chkstk_darwin(v17);
  v21 = &v108[-v20];
  __chkstk_darwin(v19);
  v118 = &v108[-v22];
  v23 = sub_1000BC4D4(&qword_1016AA928, &qword_1013BD728);
  v24 = __chkstk_darwin(v23);
  v26 = &v108[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v28 = &v108[-v27];
  v29 = sub_1000BC4D4(&qword_1016AA988, &qword_1013BD748);
  __chkstk_darwin(v29);
  v31 = &v108[-v30];
  sub_1000D2A70(a1, &v108[-v30], &qword_1016AA988, &qword_1013BD748);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = *v31;
    if (*v31 == 3)
    {
      if (qword_101694960 == -1)
      {
LABEL_4:
        v33 = type metadata accessor for Logger();
        sub_1000076D4(v33, qword_10177B380);
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 134217984;
          *(v36 + 4) = a6;
          _os_log_impl(&_mh_execute_header, v34, v35, "Stop sound timed out after %f. CL should have completed by now", v36, 0xCu);
        }

        return;
      }

LABEL_39:
      swift_once();
      goto LABEL_4;
    }

    if (qword_101694960 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_1000076D4(v55, qword_10177B380);
    v56 = v121;
    v57 = v122;
    (*(v122 + 16))(v12, v119, v121);
    sub_1008326DC(v32);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    sub_1008326EC(v32);
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v125[0] = swift_slowAlloc();
      *v60 = 136315394;
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = v56;
      v63 = v61;
      v65 = v64;
      (*(v57 + 8))(v12, v62);
      v66 = sub_1000136BC(v63, v65, v125);

      *(v60 + 4) = v66;
      *(v60 + 12) = 2080;
      v124 = v32;
      sub_1008326DC(v32);
      v67 = String.init<A>(describing:)();
      v69 = sub_1000136BC(v67, v68, v125);

      *(v60 + 14) = v69;
      _os_log_impl(&_mh_execute_header, v58, v59, "Stop sound failed for %s with unexpected error %s", v60, 0x16u);
      swift_arrayDestroy();

      sub_1008326EC(v32);
    }

    else
    {

      sub_1008326EC(v32);
      (*(v57 + 8))(v12, v56);
    }
  }

  else
  {
    sub_1000D2AD8(v31, v28, &qword_1016AA928, &qword_1013BD728);
    sub_1000D2A70(v28, v26, &qword_1016AA928, &qword_1013BD728);
    v37 = v28;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v111 = v28;
      v70 = v121;
      v71 = v122;
      v72 = v118;
      (*(v122 + 32))(v118, v26, v121);
      if (qword_101694960 != -1)
      {
        swift_once();
      }

      v73 = type metadata accessor for Logger();
      sub_1000076D4(v73, qword_10177B380);
      v74 = *(v71 + 16);
      v74(v21, v72, v70);
      v75 = v112;
      v116 = v74;
      v117 = (v71 + 16);
      v74(v112, v119, v70);
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v125[0] = v110;
        *v78 = 136315394;
        sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v79 = v75;
        v80 = v70;
        v109 = v77;
        v81 = dispatch thunk of CustomStringConvertible.description.getter();
        v83 = v82;
        v84 = *(v71 + 8);
        v84(v21, v70);
        v85 = sub_1000136BC(v81, v83, v125);

        *(v78 + 4) = v85;
        *(v78 + 12) = 2080;
        v86 = dispatch thunk of CustomStringConvertible.description.getter();
        v88 = v87;
        v119 = v84;
        v84(v79, v80);
        v72 = v118;
        v89 = sub_1000136BC(v86, v88, v125);

        *(v78 + 14) = v89;
        _os_log_impl(&_mh_execute_header, v76, v109, "Stop sound succeeded for %s. Group: %s", v78, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v90 = *(v71 + 8);
        v90(v75, v70);
        v119 = v90;
        v90(v21, v70);
      }

      v91 = v113;
      swift_beginAccess();
      *(v91 + 16) = 1;
      sub_100519FB0();
      __chkstk_darwin(v92);
      *&v108[-16] = v72;
      v94 = sub_100B00224(sub_1008326FC, &v108[-32], v93);
      v95 = v94;
      v96 = v94 + 56;
      v97 = 1 << v94[32];
      v98 = -1;
      if (v97 < 64)
      {
        v98 = ~(-1 << v97);
      }

      v99 = v98 & *(v94 + 7);
      v100 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_stopSoundSubjects;

      swift_beginAccess();
      v101 = 0;
      v102 = (v97 + 63) >> 6;
      v103 = v121;
      v104 = v115;
      while (v99)
      {
LABEL_34:
        v106 = __clz(__rbit64(v99));
        v99 &= v99 - 1;
        v116(v104, *(v95 + 6) + *(v122 + 72) * (v106 | (v101 << 6)), v103);
        if (*(*(v120 + v100) + 16))
        {

          sub_1000210EC(v104);
          if (v107)
          {

            v123 = 4;
            PassthroughSubject.send(completion:)();
            v103 = v121;
          }

          else
          {
          }
        }

        v119(v104, v103);
      }

      while (1)
      {
        v105 = v101 + 1;
        if (__OFADD__(v101, 1))
        {
          break;
        }

        if (v105 >= v102)
        {
          sub_10000B3A8(v111, &qword_1016AA928, &qword_1013BD728);

          v119(v118, v103);
          return;
        }

        v99 = *&v96[8 * v105];
        ++v101;
        if (v99)
        {
          v101 = v105;
          goto LABEL_34;
        }
      }

      __break(1u);
      goto LABEL_39;
    }

    v38 = *v26;
    v39 = v121;
    v40 = v122;
    if (qword_101694960 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_1000076D4(v41, qword_10177B380);
    v42 = v117;
    (*(v40 + 16))(v117, v119, v39);
    sub_1008326DC(v38);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    sub_1008326EC(v38);
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v125[0] = swift_slowAlloc();
      *v45 = 136315394;
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v39;
      v48 = v46;
      v50 = v49;
      (*(v40 + 8))(v42, v47);
      v51 = sub_1000136BC(v48, v50, v125);

      *(v45 + 4) = v51;
      *(v45 + 12) = 2080;
      v124 = v38;
      sub_1008326DC(v38);
      v52 = String.init<A>(describing:)();
      v54 = sub_1000136BC(v52, v53, v125);

      *(v45 + 14) = v54;
      _os_log_impl(&_mh_execute_header, v43, v44, "Stop sound failed for %s with error %s", v45, 0x16u);
      swift_arrayDestroy();

      sub_1008326EC(v38);
    }

    else
    {

      sub_1008326EC(v38);
      (*(v40 + 8))(v42, v39);
    }

    sub_10000B3A8(v37, &qword_1016AA928, &qword_1013BD728);
  }
}

BOOL sub_10081F9E8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  sub_1008345FC(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

void sub_10081FA7C(void (*a1)(), uint64_t a2, uint64_t a3)
{
  type metadata accessor for CommandError(0);
  sub_100032898(_swiftEmptyArrayStorage);
  sub_1008345FC(&qword_101696428, type metadata accessor for CommandError, &unk_10138A938);
  _BridgedStoredNSError.init(_:userInfo:)();
  a1();
}

uint64_t sub_10081FB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v143 = a5;
  v142 = a4;
  v154 = a3;
  v150 = a2;
  v134 = type metadata accessor for BeaconObservation(0);
  v135 = *(v134 - 8);
  __chkstk_darwin(v134);
  v136 = v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_1016998E0, &qword_101392030);
  __chkstk_darwin(v11 - 8);
  v133 = v127 - v12;
  v156 = type metadata accessor for DispatchWorkItemFlags();
  v147 = *(v156 - 8);
  __chkstk_darwin(v156);
  v155 = v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for DispatchQoS();
  v145 = *(v146 - 8);
  __chkstk_darwin(v146);
  v144 = v127 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for DispatchQoS.QoSClass();
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v139 = v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator(0);
  v148 = *(v149 - 8);
  v16 = __chkstk_darwin(v149);
  v129 = v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v130 = v127 - v19;
  __chkstk_darwin(v18);
  v131 = v127 - v20;
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  v23 = v22[8];
  v24 = __chkstk_darwin(v21);
  v132 = v127 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v24);
  v152 = v127 - v26;
  v27 = __chkstk_darwin(v25);
  v128 = v127 - v28;
  __chkstk_darwin(v27);
  v30 = v127 - v29;
  if (qword_101694960 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  v32 = sub_1000076D4(v31, qword_10177B380);
  v153 = v22[2];
  v153(v30, a1, v21);
  v127[1] = v32;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  v35 = os_log_type_enabled(v33, v34);
  v157 = a6;
  v151 = a1;
  v138 = v22 + 2;
  v137 = v22;
  if (!v35)
  {

    v40 = v22[1];
    v40(v30, v21);
    goto LABEL_21;
  }

  v36 = swift_slowAlloc();
  v127[0] = swift_slowAlloc();
  aBlock = v127[0];
  *v36 = 136446722;
  sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v37 = dispatch thunk of CustomStringConvertible.description.getter();
  v39 = v38;
  v40 = v22[1];
  v40(v30, v21);
  v41 = sub_1000136BC(v37, v39, &aBlock);

  *(v36 + 4) = v41;
  *(v36 + 12) = 2082;
  if (v150 > 2)
  {
    switch(v150)
    {
      case 3:
        v42 = 0x8000000101357040;
        v43 = 0xD000000000000010;
        goto LABEL_20;
      case 4:
        v42 = 0xEF64656D7269666ELL;
        v43 = 0x6F4365756575712ELL;
        goto LABEL_20;
      case 5:
        v42 = 0xEE0074726F685367;
        goto LABEL_14;
    }

LABEL_17:
    v42 = 0xE700000000000000;
    v43 = 0x6E776F6E6B6E75;
    goto LABEL_20;
  }

  if (!v150)
  {
    v42 = 0xE800000000000000;
    v43 = 0x746C75616665642ELL;
    goto LABEL_20;
  }

  if (v150 == 1)
  {
    v42 = 0xE800000000000000;
    v43 = 0x676E69676E61722ELL;
    goto LABEL_20;
  }

  if (v150 != 2)
  {
    goto LABEL_17;
  }

  v42 = 0xE900000000000067;
LABEL_14:
  v43 = 0x6E696B636172742ELL;
LABEL_20:
  v44 = sub_1000136BC(v43, v42, &aBlock);

  *(v36 + 14) = v44;
  *(v36 + 22) = 2048;
  *(v36 + 24) = a7;
  _os_log_impl(&_mh_execute_header, v33, v34, "playSoundOneShot %{public}s context %{public}s timeout %f", v36, 0x20u);
  swift_arrayDestroy();

  a6 = v157;
  a1 = v151;
LABEL_21:
  v45 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_coordinators;
  v46 = v154;
  swift_beginAccess();
  v47 = *(v46 + v45);
  if (!*(v47 + 16))
  {
LABEL_26:
    v128 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v53 = v152;
    v52 = v153;
    v129 = v45;
    v153(v152, a1, v21);
    v54 = v132;
    v52(v132, a6, v21);
    v55 = v137;
    v56 = *(v137 + 80);
    v57 = (v56 + 16) & ~v56;
    v58 = (v23 + v56 + v57) & ~v56;
    v59 = swift_allocObject();
    v60 = v55[4];
    v60(v59 + v57, v53, v21);
    v60(v59 + v58, v54, v21);
    *(v59 + ((v23 + v58 + 7) & 0xFFFFFFFFFFFFFFF8)) = v128;
    v163 = sub_100833B94;
    v164 = v59;
    aBlock = _NSConcreteStackBlock;
    v160 = 1107296256;
    v161 = sub_100006684;
    v162 = &unk_101635D88;
    _Block_copy(&aBlock);
    v158 = _swiftEmptyArrayStorage;
    v61 = sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);

    v62 = sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    v63 = sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v131 = v62;
    v130 = v63;
    v132 = v61;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    type metadata accessor for DispatchWorkItem();
    swift_allocObject();
    v64 = DispatchWorkItem.init(flags:block:)();

    v65 = v151;
    v66 = v152;
    v67 = v153;
    v153(v152, v151, v21);
    v68 = v133;
    v67(v133, v157, v21);
    v69 = v149;
    v70 = v67;
    v67((v68 + *(v149 + 20)), v65, v21);
    v71 = v69[8];

    static Date.trustedNow.getter(v68 + v71);
    *(v68 + v69[6]) = 1;
    v72 = v69[7];
    v137 = v64;
    *(v68 + v72) = v64;
    *(v68 + v69[9]) = 0;
    *(v68 + v69[10]) = 0;
    (*(v148 + 56))(v68, 0, 1, v69);
    v73 = v154;
    swift_beginAccess();
    v74 = v73;
    sub_1001DE600(v68, v66);
    swift_endAccess();
    if (qword_101694920 != -1)
    {
      swift_once();
    }

    v75 = qword_10177B2E8;
    v76 = v136;
    v70(v136, v65, v21);
    v77 = v134;
    static Date.trustedNow.getter(v76 + *(v134 + 20));
    *(v76 + *(v77 + 24)) = 24;
    sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
    v78 = (*(v135 + 80) + 32) & ~*(v135 + 80);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_101385D80;
    sub_100833680(v76, v79 + v78, type metadata accessor for BeaconObservation);
    v80 = type metadata accessor for Transaction();
    __chkstk_darwin(v80);
    v127[-4] = v75;
    v127[-3] = v79;
    v127[-2] = 0;
    v127[-1] = 0;
    static Transaction.named<A>(_:with:)();

    sub_1008333E4(v76, type metadata accessor for BeaconObservation);
    sub_10082145C(v65);
    sub_1000BC488();
    v81 = v140;
    v82 = v139;
    v83 = v141;
    (*(v140 + 104))(v139, enum case for DispatchQoS.QoSClass.default(_:), v141);
    v84 = static OS_dispatch_queue.global(qos:)();
    (*(v81 + 8))(v82, v83);
    v85 = swift_allocObject();
    v86 = v143;
    *(v85 + 16) = v142;
    *(v85 + 24) = v86;
    v163 = sub_100470308;
    v164 = v85;
    aBlock = _NSConcreteStackBlock;
    v160 = 1107296256;
    v161 = sub_100006684;
    v162 = &unk_101635DD8;
    v87 = _Block_copy(&aBlock);

    v88 = v144;
    static DispatchQoS.unspecified.getter();
    v158 = _swiftEmptyArrayStorage;
    v90 = v155;
    v89 = v156;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v87);

    (*(v147 + 8))(v90, v89);
    (*(v145 + 8))(v88, v146);

    v91 = type metadata accessor for Transaction();
    __chkstk_darwin(v91);
    v127[-6] = v74;
    v127[-5] = v65;
    v92 = v150;
    v127[-4] = v157;
    v127[-3] = v92;
    *&v127[-2] = a7;
    static Transaction.named<A>(_:with:)();
  }

  v48 = sub_1000210EC(a1);
  if ((v49 & 1) == 0)
  {

    goto LABEL_26;
  }

  v50 = v130;
  sub_100833680(*(v47 + 56) + *(v148 + 72) * v48, v130, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);

  v51 = v131;
  sub_1008336E8(v50, v131, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
  if (sub_10062CFC0(*(v51 + *(v149 + 24)), &off_10160A220))
  {
    sub_1008333E4(v51, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
    goto LABEL_26;
  }

  v94 = v40;
  v95 = v128;
  v153(v128, a1, v21);
  v96 = v129;
  sub_100833680(v51, v129, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v99 = 136315394;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v100 = dispatch thunk of CustomStringConvertible.description.getter();
    v102 = v101;
    v94(v95, v21);
    v103 = sub_1000136BC(v100, v102, &aBlock);
    v104 = v129;

    *(v99 + 4) = v103;
    *(v99 + 12) = 2080;
    v105 = *(v104 + *(v149 + 24));
    v106 = 0xEB00000000646575;
    v107 = 0x65755179616C702ELL;
    v108 = 0x6D6F43706F74732ELL;
    v109 = 0xEE00646574656C70;
    if (v105 != 5)
    {
      v108 = 0x74756F656D69742ELL;
      v109 = 0xE800000000000000;
    }

    v110 = 0x6D6F4379616C702ELL;
    v111 = 0xEE00646574656C70;
    if (v105 != 3)
    {
      v110 = 0x696E49706F74732ELL;
      v111 = 0xEE00646574616974;
    }

    if (*(v104 + *(v149 + 24)) <= 4u)
    {
      v108 = v110;
      v109 = v111;
    }

    v112 = 0x696E4979616C702ELL;
    v113 = 0xEE00646574616974;
    if (v105 != 1)
    {
      v112 = 0x6E755279616C702ELL;
      v113 = 0xEC000000676E696ELL;
    }

    if (*(v104 + *(v149 + 24)))
    {
      v107 = v112;
      v106 = v113;
    }

    if (*(v104 + *(v149 + 24)) <= 2u)
    {
      v114 = v107;
    }

    else
    {
      v114 = v108;
    }

    if (*(v104 + *(v149 + 24)) <= 2u)
    {
      v115 = v106;
    }

    else
    {
      v115 = v109;
    }

    v116 = v155;
    sub_1008333E4(v104, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
    v117 = sub_1000136BC(v114, v115, &aBlock);

    *(v99 + 14) = v117;
    _os_log_impl(&_mh_execute_header, v97, v98, "Cannot playSound for %s. Invalid state %s!", v99, 0x16u);
    swift_arrayDestroy();

    v118 = v156;
  }

  else
  {

    sub_1008333E4(v96, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
    v94(v95, v21);
    v116 = v155;
    v118 = v156;
  }

  sub_1000BC488();
  v119 = v140;
  v120 = v139;
  v121 = v141;
  (*(v140 + 104))(v139, enum case for DispatchQoS.QoSClass.default(_:), v141);
  v122 = static OS_dispatch_queue.global(qos:)();
  (*(v119 + 8))(v120, v121);
  v123 = swift_allocObject();
  v124 = v143;
  *(v123 + 16) = v142;
  *(v123 + 24) = v124;
  v163 = sub_100833BD8;
  v164 = v123;
  aBlock = _NSConcreteStackBlock;
  v160 = 1107296256;
  v161 = sub_100006684;
  v162 = &unk_101635E28;
  v125 = _Block_copy(&aBlock);

  v126 = v144;
  static DispatchQoS.unspecified.getter();
  v158 = _swiftEmptyArrayStorage;
  sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v125);

  (*(v147 + 8))(v116, v118);
  (*(v145 + 8))(v126, v146);
  sub_1008333E4(v131, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
}

void sub_1008210C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), const char *a5)
{
  v36 = a5;
  v37 = a3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v32[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v32[-v13];
  if (qword_101694960 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000076D4(v15, qword_10177B380);
  v16 = *(v9 + 16);
  v16(v14, a1, v8);
  v16(v12, a2, v8);
  v17 = Logger.logObject.getter();
  v18 = a4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v38[0] = v34;
    *v19 = 141558531;
    *(v19 + 4) = 1752392040;
    *(v19 + 12) = 2081;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v33 = v18;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    v35 = a1;
    v23 = *(v9 + 8);
    v23(v14, v8);
    v24 = sub_1000136BC(v20, v22, v38);

    *(v19 + 14) = v24;
    *(v19 + 22) = 2082;
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    v23(v12, v8);
    a1 = v35;
    v28 = sub_1000136BC(v25, v27, v38);

    *(v19 + 24) = v28;
    _os_log_impl(&_mh_execute_header, v17, v33, v36, v19, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v29 = *(v9 + 8);
    v29(v12, v8);
    v29(v14, v8);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    sub_100815748(a1, 0, 0);
  }
}

void sub_10082145C(uint64_t a1)
{
  v21[0] = type metadata accessor for UUID();
  v2 = *(v21[0] - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v21[0]);
  v4 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v4 - 8);
  v6 = v21 - v5;
  v7 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  __chkstk_darwin(v7 - 8);
  v9 = v21 - v8;
  sub_100023184(a1, (v21 - v8));
  v10 = type metadata accessor for WildModeAssociationRecord(0);
  v11 = (*(*(v10 - 8) + 48))(v9, 1, v10);
  sub_10000B3A8(v9, &unk_1016C7C90, &qword_1013BB4B0);
  if (v11 == 1)
  {
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    v13 = v21[0];
    (*(v2 + 16))(v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v21[0]);
    v14 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    (*(v2 + 32))(v15 + v14, v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
    sub_10025EDD4(0, 0, v6, &unk_1013BD6D8, v15);
  }

  else
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000076D4(v16, qword_10177BA08);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 67109120;
      *(v19 + 4) = 1;
      _os_log_impl(&_mh_execute_header, v17, v18, "Requesting SPUnknownBeaconsChangedNotification to be posted. Bypass rate limit? %{BOOL}d", v19, 8u);
    }

    ThrottledDarwinPoster.post(bypassRateLimit:)(1);
    if (v20)
    {
    }
  }
}

uint64_t sub_1008217F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v68 = a1;
  v69 = a5;
  v63 = a3;
  v76 = type metadata accessor for UUID();
  v74 = *(v76 - 8);
  v75 = *(v74 + 64);
  __chkstk_darwin(v76);
  v73 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v66 = *(v12 - 8);
  v67 = v12;
  __chkstk_darwin(v12);
  v57 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v14 - 8);
  v16 = v51 - v15;
  v58 = sub_1000BC4D4(&qword_1016AA9D0, &qword_1013BD788);
  v59 = *(v58 - 8);
  __chkstk_darwin(v58);
  v18 = v51 - v17;
  v19 = sub_1000BC4D4(&qword_1016AA9D8, &qword_1013BD790);
  v20 = *(v19 - 8);
  v61 = v19;
  v62 = v20;
  __chkstk_darwin(v19);
  v55 = v51 - v21;
  v22 = sub_1000BC4D4(&qword_1016AA9E0, &qword_1013BD798);
  v23 = *(v22 - 8);
  v64 = v22;
  v65 = v23;
  __chkstk_darwin(v22);
  v56 = v51 - v24;
  v25 = sub_1000BC4D4(&qword_1016AA9E8, &qword_1013BD7A0);
  v26 = *(v25 - 8);
  v71 = v25;
  v72 = v26;
  __chkstk_darwin(v25);
  v77 = v51 - v27;
  v70 = Transaction.subscriptionCleaner.getter();
  v60 = a2;
  v28 = sub_100814D78(a3, a4, a5);
  v78 = *(a2 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue);
  v29 = v78;
  v79[0] = v28;
  v30 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v31 = *(v30 - 8);
  v53 = *(v31 + 56);
  v54 = v31 + 56;
  v53(v16, 1, 1, v30);
  v52 = v29;
  sub_1000BC4D4(&qword_1016AA920, &qword_1013BD720);
  v51[1] = sub_1000BC488();
  sub_1000041A4(&qword_1016AA930, &qword_1016AA920, &qword_1013BD720, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_1008345FC(&qword_1016AF9C0, sub_1000BC488, &protocol conformance descriptor for OS_dispatch_queue);
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v16, &unk_1016B0FE0, &unk_101391980);

  v32 = v57;
  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  v33 = v52;
  v79[0] = v52;
  v53(v16, 1, 1, v30);
  sub_1000041A4(&qword_1016AA9F0, &qword_1016AA9D0, &qword_1013BD788, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v34 = v55;
  v35 = v58;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_10000B3A8(v16, &unk_1016B0FE0, &unk_101391980);

  (*(v66 + 8))(v32, v67);
  (*(v59 + 8))(v18, v35);
  sub_1000BC4D4(&qword_1016AA928, &qword_1013BD728);
  sub_1000041A4(&qword_1016AA9F8, &qword_1016AA9D8, &qword_1013BD790, &protocol conformance descriptor for Publishers.Timeout<A, B>);
  v36 = v56;
  v37 = v61;
  Publisher.map<A>(_:)();
  (*(v62 + 8))(v34, v37);
  sub_1000BC4D4(&qword_1016AA938, &qword_1013BD730);
  sub_1000041A4(&qword_1016AAA00, &qword_1016AA9E0, &qword_1013BD798, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_1000041A4(&qword_1016AA948, &qword_1016AA938, &qword_1013BD730, &protocol conformance descriptor for Just<A>);
  v38 = v64;
  Publisher.catch<A>(_:)();
  (*(v65 + 8))(v36, v38);
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = v73;
  v40 = v74;
  v42 = v76;
  (*(v74 + 16))(v73, v63, v76);
  v43 = v40;
  v44 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v45 = (v75 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  *(v47 + 16) = v39;
  *(v47 + 24) = v68;
  (*(v43 + 32))(v47 + v44, v41, v42);
  *(v47 + v45) = a6;
  *(v47 + v46) = v69;
  *(v47 + ((v46 + 15) & 0xFFFFFFFFFFFFFFF8)) = v70;
  sub_1000041A4(&qword_1016AAA08, &qword_1016AA9E8, &qword_1013BD7A0, &protocol conformance descriptor for Publishers.Catch<A, B>);

  swift_unknownObjectRetain();
  v48 = v71;
  v49 = v77;
  Publisher<>.sink(receiveValue:)();

  (*(v72 + 8))(v49, v48);
  AnyCancellable.store(in:)();
  swift_unknownObjectRelease();
}