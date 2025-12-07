unint64_t sub_100822150(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5, uint64_t a6)
{
  v49 = a6;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v47 - v14;
  v16 = sub_1000BC4D4(&qword_1016AA928, &qword_1013BD728);
  __chkstk_darwin(v16);
  v18 = (&v47 - v17);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = result;
    Transaction.capture()();
    sub_1000D2A70(a1, v18, &qword_1016AA928, &qword_1013BD728);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v49 = a5;
      v21 = *v18;
      if (qword_101694960 != -1)
      {
        swift_once();
      }

      v48 = v20;
      v22 = type metadata accessor for Logger();
      sub_1000076D4(v22, qword_10177B380);
      (*(v10 + 16))(v13, v49, v9);
      sub_1008326DC(v21);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      sub_1008326EC(v21);
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *v25 = 136315394;
        sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v26 = dispatch thunk of CustomStringConvertible.description.getter();
        v28 = v27;
        (*(v10 + 8))(v13, v9);
        v29 = sub_1000136BC(v26, v28, &v51);

        *(v25 + 4) = v29;
        *(v25 + 12) = 2080;
        v50 = v21;
        sub_1008326DC(v21);
        v30 = String.init<A>(describing:)();
        v32 = sub_1000136BC(v30, v31, &v51);

        *(v25 + 14) = v32;
        _os_log_impl(&_mh_execute_header, v23, v24, "Play sound oneShot failed for %s. Error %s", v25, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        (*(v10 + 8))(v13, v9);
      }

      sub_100832458();
      v42 = swift_allocError();
      *v43 = v21;
      v44 = swift_allocError();
      *v45 = v42;
      sub_1008326DC(v21);
      v46 = v48;
      sub_100815748(v49, 0, v44);

      return sub_1008326EC(v21);
    }

    else
    {
      if (qword_101694960 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      sub_1000076D4(v33, qword_10177B380);
      (*(v10 + 16))(v15, a5, v9);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v51 = v47;
        *v36 = 136315138;
        sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v37 = dispatch thunk of CustomStringConvertible.description.getter();
        v48 = v20;
        v38 = a5;
        v40 = v39;
        (*(v10 + 8))(v15, v9);
        v41 = sub_1000136BC(v37, v40, &v51);
        a5 = v38;
        v20 = v48;

        *(v36 + 4) = v41;
        _os_log_impl(&_mh_execute_header, v34, v35, "Play sound oneShot started successfully for %s", v36, 0xCu);
        sub_100007BAC(v47);
      }

      else
      {

        (*(v10 + 8))(v15, v9);
      }

      sub_100818478(a5, v49, a3);

      return sub_10000B3A8(v18, &qword_1016AA928, &qword_1013BD728);
    }
  }

  return result;
}

uint64_t sub_100822778(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000BC4D4(&qword_1016998E0, &qword_101392030);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for UUID();
  __chkstk_darwin(v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a2);
  v10 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator(0);
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  swift_beginAccess();
  sub_1001DE600(v5, v8);
  return swift_endAccess();
}

uint64_t sub_1008228FC(uint64_t a1, char *a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a1;
  v36 = a6;
  v40 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v40 - 8);
  __chkstk_darwin(v40);
  v38 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DispatchQoS();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v34 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v32 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v31 = &v31 - v15;
  v37 = *&a2[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue];
  v33 = a2;
  v16 = *(v12 + 16);
  v16();
  (v16)(&v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v11);
  v17 = *(v12 + 80);
  v18 = (v17 + 24) & ~v17;
  v19 = (v13 + 7 + v18) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v17 + v19 + 8) & ~v17;
  v21 = (v13 + 7 + v20) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  v23 = *(v12 + 32);
  v23(v22 + v18, v31, v11);
  *(v22 + v19) = a3;
  v23(v22 + v20, v32, v11);
  v24 = v35;
  *(v22 + v21) = v36;
  *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = v24;
  aBlock[4] = sub_100833CB0;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101635EA0;
  v25 = _Block_copy(aBlock);
  v26 = v33;

  v27 = v34;
  static DispatchQoS.unspecified.getter();
  v43 = _swiftEmptyArrayStorage;
  sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v28 = v38;
  v29 = v40;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);
  (*(v42 + 8))(v28, v29);
  (*(v39 + 8))(v27, v41);
}

uint64_t sub_100822D6C(char *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v220 = a5;
  v221 = a4;
  v230 = a3;
  v210 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v208 = *(v210 - 8);
  __chkstk_darwin(v210);
  v206 = &v178[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v10 - 8);
  v200 = &v178[-v11];
  v203 = sub_1000BC4D4(&qword_1016AA9D0, &qword_1013BD788);
  v201 = *(v203 - 8);
  __chkstk_darwin(v203);
  v199 = &v178[-v12];
  v205 = sub_1000BC4D4(&qword_1016AA9D8, &qword_1013BD790);
  v204 = *(v205 - 8);
  __chkstk_darwin(v205);
  v202 = &v178[-v13];
  v211 = sub_1000BC4D4(&qword_1016AA9E0, &qword_1013BD798);
  v209 = *(v211 - 8);
  __chkstk_darwin(v211);
  v207 = &v178[-v14];
  v213 = sub_1000BC4D4(&qword_1016AA9E8, &qword_1013BD7A0);
  v212 = *(v213 - 8);
  __chkstk_darwin(v213);
  v219 = &v178[-v15];
  v16 = sub_1000BC4D4(&qword_1016998E0, &qword_101392030);
  __chkstk_darwin(v16 - 8);
  v198 = &v178[-v17];
  v215 = type metadata accessor for DispatchWorkItemFlags();
  v186 = *(v215 - 1);
  __chkstk_darwin(v215);
  v216 = &v178[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v185 = type metadata accessor for DispatchQoS();
  v184 = *(v185 - 8);
  __chkstk_darwin(v185);
  v183 = &v178[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v191 = type metadata accessor for DispatchTime();
  v192 = *(v191 - 8);
  v20 = __chkstk_darwin(v191);
  v182 = &v178[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v190 = &v178[-v22];
  v189 = type metadata accessor for Date();
  v188 = *(v189 - 8);
  __chkstk_darwin(v189);
  v187 = &v178[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v222 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator(0);
  v218 = *(v222 - 8);
  v24 = __chkstk_darwin(v222);
  v193 = &v178[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = __chkstk_darwin(v24);
  v181 = &v178[-v27];
  v28 = __chkstk_darwin(v26);
  v195 = &v178[-v29];
  __chkstk_darwin(v28);
  v31 = &v178[-v30];
  v32 = type metadata accessor for UUID();
  v33 = *(v32 - 8);
  v34 = __chkstk_darwin(v32);
  v217 = &v178[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = __chkstk_darwin(v34);
  v225 = &v178[-v37];
  v38 = __chkstk_darwin(v36);
  v226 = &v178[-v39];
  v40 = __chkstk_darwin(v38);
  v42 = &v178[-v41];
  v214 = v43;
  __chkstk_darwin(v40);
  v45 = &v178[-v44];
  v231 = a2;
  v229 = a1;
  v46 = sub_10081008C(a2);
  LODWORD(v223) = v46;
  v47 = 0x6575657551;
  if ((v46 & 1) == 0)
  {
    v47 = 0;
  }

  v197 = v47;
  if (v46)
  {
    v48 = 0xE500000000000000;
  }

  else
  {
    v48 = 0xE000000000000000;
  }

  if (qword_101694960 != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  v50 = sub_1000076D4(v49, qword_10177B380);
  v51 = *(v33 + 16);
  v51(v45, v231, v32);
  v227 = v51;
  v51(v42, v230, v32);

  v194 = v50;
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();

  v54 = os_log_type_enabled(v52, v53);
  v228 = v33;
  v224 = v33 + 16;
  if (v54)
  {
    v55 = swift_slowAlloc();
    v179 = v53;
    v56 = v55;
    v180 = swift_slowAlloc();
    aBlock = v180;
    *v56 = 136447235;
    v57 = sub_1000136BC(v197, v48, &aBlock);

    *(v56 + 4) = v57;
    *(v56 + 12) = 2160;
    *(v56 + 14) = 1752392040;
    *(v56 + 22) = 2081;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v58 = dispatch thunk of CustomStringConvertible.description.getter();
    v197 = v31;
    v60 = v59;
    v61 = *(v33 + 8);
    v61(v45, v32);
    v62 = sub_1000136BC(v58, v60, &aBlock);

    *(v56 + 24) = v62;
    *(v56 + 32) = 2048;
    *(v56 + 34) = a6;
    *(v56 + 42) = 2082;
    v63 = dispatch thunk of CustomStringConvertible.description.getter();
    v65 = v64;
    v66 = v32;
    v61(v42, v32);
    v67 = v61;
    v68 = sub_1000136BC(v63, v65, &aBlock);
    v31 = v197;

    *(v56 + 44) = v68;
    _os_log_impl(&_mh_execute_header, v52, v179, "%{public}s playSoundSingle for %{private,mask.hash}s with timeout %f. CommandId %{public}s", v56, 0x34u);
    swift_arrayDestroy();
  }

  else
  {

    v67 = *(v33 + 8);
    v67(v42, v32);
    v69 = v45;
    v66 = v32;
    v67(v69, v32);
  }

  v70 = v222;
  v71 = v217;
  if ((v223 & 1) == 0)
  {
    goto LABEL_21;
  }

  v72 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_coordinators;
  v73 = v229;
  swift_beginAccess();
  v74 = *&v73[v72];
  if (!*(v74 + 16))
  {
    goto LABEL_21;
  }

  v75 = sub_1000210EC(v231);
  if ((v76 & 1) == 0)
  {

    goto LABEL_21;
  }

  v77 = v195;
  sub_100833680(*(v74 + 56) + *(v218 + 72) * v75, v195, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);

  sub_1008336E8(v77, v31, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
  if (!v31[*(v70 + 24)])
  {
    v140 = v187;
    static Date.trustedNow.getter(v187);
    Date.timeIntervalSince(_:)();
    v142 = v141;
    (*(v188 + 8))(v140, v189);
    if (a6 * 0.5 >= v142)
    {
      v197 = v31;
      v144 = v31;
      v145 = v181;
      sub_100833680(v144, v181, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
      v146 = Logger.logObject.getter();
      v147 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v146, v147))
      {
        v148 = swift_slowAlloc();
        v149 = swift_slowAlloc();
        aBlock = v149;
        *v148 = 136446466;
        v150 = Date.localISO8601.getter();
        v151 = v145;
        v153 = v152;
        sub_1008333E4(v151, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
        v154 = sub_1000136BC(v150, v153, &aBlock);

        *(v148 + 4) = v154;
        *(v148 + 12) = 2050;
        *(v148 + 14) = v142;
        _os_log_impl(&_mh_execute_header, v146, v147, "Last retry %{public}s.\nTime since: %{public}f. Defer retry", v148, 0x16u);
        sub_100007BAC(v149);
      }

      else
      {

        sub_1008333E4(v145, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
      }

      v156 = v229;
      v222 = *&v229[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue];
      v157 = v182;
      static DispatchTime.now()();
      + infix(_:_:)();
      v158 = *(v192 + 8);
      v192 += 8;
      v223 = v158;
      v158(v157, v191);
      v159 = v227;
      v227(v226, v230, v66);
      v160 = v225;
      v159(v225, v231, v66);
      v161 = v228;
      v162 = *(v228 + 80);
      v163 = (v162 + 24) & ~v162;
      v164 = (v214 + v162 + v163) & ~v162;
      v165 = (v214 + v164 + 7) & 0xFFFFFFFFFFFFFFF8;
      v166 = swift_allocObject();
      *(v166 + 16) = v156;
      v167 = *(v161 + 32);
      v167(v166 + v163, v226, v66);
      v167(v166 + v164, v160, v66);
      *(v166 + v165) = v221;
      *(v166 + ((v165 + 15) & 0xFFFFFFFFFFFFFFF8)) = a6;
      v237 = sub_100833FB8;
      v238 = v166;
      aBlock = _NSConcreteStackBlock;
      v234 = 1107296256;
      v235 = sub_100006684;
      v236 = &unk_101635F68;
      v168 = _Block_copy(&aBlock);
      v169 = v156;
      v170 = v183;
      static DispatchQoS.unspecified.getter();
      v232 = _swiftEmptyArrayStorage;
      sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v171 = v216;
      v172 = v215;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v173 = v190;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v168);
      (*(v186 + 8))(v171, v172);
      (*(v184 + 8))(v170, v185);
      v223(v173, v191);
      sub_1008333E4(v197, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
    }

    sub_1008333E4(v31, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
LABEL_21:
    v90 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v92 = v226;
    v91 = v227;
    v227(v226, v231, v66);
    v93 = v225;
    v91(v225, v230, v66);
    v94 = *(v228 + 80);
    v95 = v228;
    v96 = (v94 + 16) & ~v94;
    v97 = (v214 + v94 + v96) & ~v94;
    v197 = v94;
    v214 += 7;
    v98 = (v214 + v97) & 0xFFFFFFFFFFFFFFF8;
    v99 = swift_allocObject();
    v100 = *(v95 + 32);
    v228 = v95 + 32;
    v217 = v100;
    (v100)(v99 + v96, v92, v66);
    (v100)(v99 + v97, v93, v66);
    *(v99 + v98) = v90;
    v237 = sub_100834710;
    v238 = v99;
    aBlock = _NSConcreteStackBlock;
    v234 = 1107296256;
    v235 = sub_100006684;
    v236 = &unk_101635EF0;
    _Block_copy(&aBlock);
    v232 = _swiftEmptyArrayStorage;
    sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);

    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    type metadata accessor for DispatchWorkItem();
    swift_allocObject();
    v101 = DispatchWorkItem.init(flags:block:)();

    v102 = v226;
    v103 = v231;
    v196 = v66;
    v104 = v227;
    v227(v226, v231, v66);
    v105 = v198;
    v106 = v230;
    v104(v198, v230, v66);
    v107 = v222;
    v104((v105 + *(v222 + 20)), v103, v66);
    v108 = v107[8];
    v216 = v101;

    static Date.trustedNow.getter(v105 + v108);
    *(v105 + v107[6]) = 0;
    *(v105 + v107[7]) = v101;
    *(v105 + v107[9]) = 0;
    *(v105 + v107[10]) = 0;
    (*(v218 + 56))(v105, 0, 1, v107);
    v109 = v229;
    swift_beginAccess();
    sub_1001DE600(v105, v102);
    swift_endAccess();
    v222 = Transaction.subscriptionCleaner.getter();
    v110 = sub_100814D78(v103, v106, v221);
    v232 = *&v109[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue];
    v111 = v232;
    aBlock = v110;
    v112 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v218 = *(*(v112 - 8) + 56);
    v113 = v200;
    (v218)(v200, 1, 1, v112);
    v215 = v111;
    sub_1000BC4D4(&qword_1016AA920, &qword_1013BD720);
    sub_1000BC488();
    sub_1000041A4(&qword_1016AA930, &qword_1016AA920, &qword_1013BD720, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_1008345FC(&qword_1016AF9C0, sub_1000BC488, &protocol conformance descriptor for OS_dispatch_queue);
    v114 = v199;
    Publisher.receive<A>(on:options:)();
    sub_10000B3A8(v113, &unk_1016B0FE0, &unk_101391980);

    v115 = v206;
    static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
    v116 = v215;
    aBlock = v215;
    (v218)(v113, 1, 1, v112);
    sub_1000041A4(&qword_1016AA9F0, &qword_1016AA9D0, &qword_1013BD788, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v117 = v202;
    v118 = v203;
    Publisher.timeout<A>(_:scheduler:options:customError:)();
    sub_10000B3A8(v113, &unk_1016B0FE0, &unk_101391980);

    (*(v208 + 8))(v115, v210);
    (*(v201 + 8))(v114, v118);
    sub_1000BC4D4(&qword_1016AA928, &qword_1013BD728);
    sub_1000041A4(&qword_1016AA9F8, &qword_1016AA9D8, &qword_1013BD790, &protocol conformance descriptor for Publishers.Timeout<A, B>);
    v119 = v207;
    v120 = v205;
    Publisher.map<A>(_:)();
    (*(v204 + 8))(v117, v120);
    sub_1000BC4D4(&qword_1016AA938, &qword_1013BD730);
    sub_1000041A4(&qword_1016AAA00, &qword_1016AA9E0, &qword_1013BD798, &protocol conformance descriptor for Publishers.Map<A, B>);
    sub_1000041A4(&qword_1016AA948, &qword_1016AA938, &qword_1013BD730, &protocol conformance descriptor for Just<A>);
    v121 = v211;
    Publisher.catch<A>(_:)();
    (*(v209 + 8))(v119, v121);
    v122 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v124 = v226;
    v123 = v227;
    v125 = v196;
    v227(v226, v231, v196);
    v123(v225, v230, v125);
    v126 = v197;
    v127 = (v126 + 32) & ~v126;
    v128 = (v214 + v127) & 0xFFFFFFFFFFFFFFF8;
    v129 = (v128 + 15) & 0xFFFFFFFFFFFFFFF8;
    v130 = (v126 + v129 + 9) & ~v126;
    v131 = (v214 + v130) & 0xFFFFFFFFFFFFFFF8;
    v132 = swift_allocObject();
    v133 = v220;
    *(v132 + 16) = v122;
    *(v132 + 24) = v133;
    v134 = v132 + v127;
    v135 = v217;
    (v217)(v134, v124, v125);
    *(v132 + v128) = a6;
    v136 = v132 + v129;
    *v136 = v221;
    *(v136 + 8) = v223 & 1;
    v135(v132 + v130, v225, v125);
    *(v132 + v131) = v222;
    sub_1000041A4(&qword_1016AAA08, &qword_1016AA9E8, &qword_1013BD7A0, &protocol conformance descriptor for Publishers.Catch<A, B>);

    swift_unknownObjectRetain();
    v137 = v213;
    v138 = v219;
    Publisher<>.sink(receiveValue:)();

    (*(v212 + 8))(v138, v137);
    AnyCancellable.store(in:)();

    swift_unknownObjectRelease();
  }

  v78 = v66;
  v227(v71, v231, v66);
  v79 = v193;
  sub_100833680(v31, v193, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v80, v81))
  {
    v197 = v31;
    v82 = v67;
    v83 = swift_slowAlloc();
    v231 = swift_slowAlloc();
    aBlock = v231;
    *v83 = 136315394;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v84 = dispatch thunk of CustomStringConvertible.description.getter();
    v86 = v85;
    v82(v71, v78);
    v87 = sub_1000136BC(v84, v86, &aBlock);

    *(v83 + 4) = v87;
    *(v83 + 12) = 2080;
    v88 = v79[*(v70 + 24)];
    if (v88 > 2)
    {
      if (v79[*(v70 + 24)] > 4u)
      {
        if (v88 != 5)
        {
          v176 = 0xE800000000000000;
          v174 = 0x74756F656D69742ELL;
          goto LABEL_41;
        }

        v89 = 0x43706F74732ELL;
        goto LABEL_35;
      }

      if (v88 == 3)
      {
        v89 = 0x4379616C702ELL;
LABEL_35:
        v174 = v89 & 0xFFFFFFFFFFFFLL | 0x6D6F000000000000;
        v175 = 1952803952;
LABEL_40:
        v176 = v175 | 0xEE00646500000000;
        goto LABEL_41;
      }

      v155 = 0x49706F74732ELL;
LABEL_39:
      v174 = v155 & 0xFFFFFFFFFFFFLL | 0x696E000000000000;
      v175 = 1952541044;
      goto LABEL_40;
    }

    if (v79[*(v70 + 24)])
    {
      if (v88 == 1)
      {
        v155 = 0x4979616C702ELL;
        goto LABEL_39;
      }

      v176 = 0xEC000000676E696ELL;
      v174 = 0x6E755279616C702ELL;
    }

    else
    {
      v176 = 0xEB00000000646575;
      v174 = 0x65755179616C702ELL;
    }

LABEL_41:
    sub_1008333E4(v79, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
    v177 = sub_1000136BC(v174, v176, &aBlock);

    *(v83 + 14) = v177;
    _os_log_impl(&_mh_execute_header, v80, v81, "Cannot queue play sound for %s. Invalid state %s!", v83, 0x16u);
    swift_arrayDestroy();

    v143 = v197;
    return sub_1008333E4(v143, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
  }

  sub_1008333E4(v79, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
  v67(v71, v78);
  v143 = v31;
  return sub_1008333E4(v143, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
}

void sub_100824C00(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5, uint64_t a6, int a7, uint64_t (*a8)(char *, uint64_t, uint64_t))
{
  v71 = a8;
  v73 = a7;
  v75 = a5;
  v11 = type metadata accessor for UUID();
  v74 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v67 - v16;
  __chkstk_darwin(v15);
  v19 = &v67 - v18;
  v20 = sub_1000BC4D4(&qword_1016AA928, &qword_1013BD728);
  __chkstk_darwin(v20);
  v22 = (&v67 - v21);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    Transaction.capture()();
    sub_1000D2A70(a1, v22, &qword_1016AA928, &qword_1013BD728);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v72 = v24;
    if (EnumCaseMultiPayload == 1)
    {
      v26 = *v22;
      v27 = v74;
      if (qword_101694960 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_1000076D4(v28, qword_10177B380);
      (*(v27 + 16))(v14, v75, v11);
      sub_1008326DC(v26);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      sub_1008326EC(v26);
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v70 = a6;
        v32 = v31;
        v77 = swift_slowAlloc();
        *v32 = 136315394;
        sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v33 = dispatch thunk of CustomStringConvertible.description.getter();
        v35 = v34;
        (*(v27 + 8))(v14, v11);
        v36 = sub_1000136BC(v33, v35, &v77);

        *(v32 + 4) = v36;
        *(v32 + 12) = 2080;
        v76 = v26;
        sub_1008326DC(v26);
        v37 = String.init<A>(describing:)();
        v39 = sub_1000136BC(v37, v38, &v77);

        *(v32 + 14) = v39;
        _os_log_impl(&_mh_execute_header, v29, v30, "Play sound single failed for %s. Error %s", v32, 0x16u);
        swift_arrayDestroy();

        a6 = v70;

        if ((v73 & 1) == 0)
        {
LABEL_7:
          sub_100832458();
          v40 = swift_allocError();
          *v41 = v26;
          sub_1008326DC(v26);
          v42 = v72;
          sub_100815748(v75, 0, v40);
          sub_1008326EC(v26);

          return;
        }
      }

      else
      {

        (*(v27 + 8))(v14, v11);
        if ((v73 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      v56 = v72;
      sub_100825410(v71, v75, a6, a3);
      sub_1008326EC(v26);
    }

    else
    {
      v70 = a6;
      v43 = v74;
      if (qword_101694960 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      v45 = sub_1000076D4(v44, qword_10177B380);
      v71 = *(v43 + 16);
      v71(v19, v75, v11);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v69 = v45;
        v49 = v48;
        v68 = swift_slowAlloc();
        v77 = v68;
        *v49 = 136315138;
        sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v50 = dispatch thunk of CustomStringConvertible.description.getter();
        v67 = v17;
        v52 = v51;
        v53 = *(v43 + 8);
        v53(v19, v11);
        v54 = sub_1000136BC(v50, v52, &v77);
        v17 = v67;

        *(v49 + 4) = v54;
        _os_log_impl(&_mh_execute_header, v46, v47, "Play sound single started successfully for %s", v49, 0xCu);
        sub_100007BAC(v68);

        v55 = v53;
      }

      else
      {

        v55 = *(v43 + 8);
        v55(v19, v11);
      }

      v57 = v72;
      sub_100818478(v75, v70, a3);
      if (v73)
      {
        v71(v17, v75, v11);
        v58 = Logger.logObject.getter();
        v59 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v77 = v61;
          *v60 = 136315138;
          sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v62 = dispatch thunk of CustomStringConvertible.description.getter();
          v63 = v17;
          v65 = v64;
          v55(v63, v11);
          v66 = sub_1000136BC(v62, v65, &v77);

          *(v60 + 4) = v66;
          _os_log_impl(&_mh_execute_header, v58, v59, "Posting success alert for %s", v60, 0xCu);
          sub_100007BAC(v61);

          v57 = v72;
        }

        else
        {

          v55(v17, v11);
        }

        sub_100819C70(v75, 1);
      }

      sub_10000B3A8(v22, &qword_1016AA928, &qword_1013BD728);
    }
  }
}

void sub_100825410(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v58 = a1;
  v59 = a3;
  v67 = a2;
  v6 = type metadata accessor for UUID();
  v63 = *(v6 - 8);
  v64 = v6;
  __chkstk_darwin(v6);
  v62 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v60 = *(v8 - 8);
  v61 = v8;
  __chkstk_darwin(v8);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  __chkstk_darwin(v11 - 8);
  v13 = &v58 - v12;
  v14 = type metadata accessor for BeaconObservation(0);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v65 = &v58 - v19;
  v20 = type metadata accessor for DispatchPredicate();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = (&v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = v4;
  v24 = *(v4 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue);
  *v23 = v24;
  (*(v21 + 104))(v23, enum case for DispatchPredicate.onQueue(_:), v20);
  v25 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  (*(v21 + 8))(v23, v20);
  if (v24)
  {
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
  v26 = v67;
  v27 = sub_100035730(v67, sub_100526C48, 0);
  sub_1012BB138(v27, v13);

  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10000B3A8(v13, &qword_1016A42E0, &qword_1013B0010);
    if (qword_101694960 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_1000076D4(v28, qword_10177B380);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "No playback observation found. Cannot retry", v31, 2u);
    }
  }

  else
  {
    v32 = v65;
    sub_1008336E8(v13, v65, type metadata accessor for BeaconObservation);
    static Date.trustedNow.getter(v10);
    Date.timeIntervalSince(_:)();
    v34 = v33;
    (*(v60 + 8))(v10, v61);
    if (qword_101694960 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_1000076D4(v35, qword_10177B380);
    sub_100833680(v32, v18, type metadata accessor for BeaconObservation);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v68 = v39;
      *v38 = 136446466;
      v40 = Date.localISO8601.getter();
      v42 = v41;
      sub_1008333E4(v18, type metadata accessor for BeaconObservation);
      v43 = sub_1000136BC(v40, v42, &v68);

      *(v38 + 4) = v43;
      *(v38 + 12) = 2050;
      *(v38 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v36, v37, "Queued at %{public}s. Time since: %{public}f", v38, 0x16u);
      sub_100007BAC(v39);
    }

    else
    {

      sub_1008333E4(v18, type metadata accessor for BeaconObservation);
    }

    v45 = v63;
    v44 = v64;
    v46 = v62;
    if (v34 >= 180.0)
    {
      (*(v63 + 16))(v62, v26, v64);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v68 = v52;
        *v51 = 134218242;
        *(v51 + 4) = 0x4066800000000000;
        *(v51 + 12) = 2080;
        sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v53 = dispatch thunk of CustomStringConvertible.description.getter();
        v54 = v46;
        v56 = v55;
        (*(v45 + 8))(v54, v44);
        v57 = sub_1000136BC(v53, v56, &v68);

        *(v51 + 14) = v57;
        _os_log_impl(&_mh_execute_header, v49, v50, "%f elapsed. Posting error alert for %s", v51, 0x16u);
        sub_100007BAC(v52);
      }

      else
      {

        (*(v45 + 8))(v46, v44);
      }

      sub_100819C70(v26, 0);
      sub_100815748(v26, 0, 0);
    }

    else
    {
      v47 = type metadata accessor for Transaction();
      __chkstk_darwin(v47);
      *(&v58 - 6) = v66;
      *(&v58 - 5) = v26;
      *(&v58 - 4) = a4;
      v48 = v59;
      *(&v58 - 3) = v58;
      *(&v58 - 2) = v48;
      static Transaction.named<A>(_:with:)();
    }

    sub_1008333E4(v32, type metadata accessor for BeaconObservation);
  }
}

uint64_t sub_100825CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v261 = a5;
  v250 = a4;
  v249 = a3;
  v9 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v9 - 8);
  v244 = &v222 - v10;
  v241 = type metadata accessor for BeaconObservation(0);
  v242 = *(v241 - 8);
  __chkstk_darwin(v241);
  v243 = &v222 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&qword_1016998E0, &qword_101392030);
  __chkstk_darwin(v12 - 8);
  v240 = &v222 - v13;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v252 = *(v14 - 8);
  __chkstk_darwin(v14);
  v259 = &v222 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v254 = type metadata accessor for DispatchQoS();
  v253 = *(v254 - 8);
  __chkstk_darwin(v254);
  v251 = &v222 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = type metadata accessor for DispatchQoS.QoSClass();
  v247 = *(v248 - 8);
  __chkstk_darwin(v248);
  v246 = &v222 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator(0);
  v257 = *(v255 - 8);
  v18 = __chkstk_darwin(v255);
  v232 = &v222 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v236 = &v222 - v21;
  v22 = __chkstk_darwin(v20);
  v237 = &v222 - v23;
  v24 = __chkstk_darwin(v22);
  v226 = &v222 - v25;
  v26 = __chkstk_darwin(v24);
  v227 = &v222 - v27;
  v28 = __chkstk_darwin(v26);
  v228 = &v222 - v29;
  __chkstk_darwin(v28);
  v229 = &v222 - v30;
  v31 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v32 = __chkstk_darwin(v31 - 8);
  v233 = &v222 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v235 = (&v222 - v34);
  v35 = type metadata accessor for UUID();
  v36 = *(v35 - 8);
  v37 = __chkstk_darwin(v35);
  v260 = &v222 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v231 = &v222 - v40;
  v41 = __chkstk_darwin(v39);
  v245 = (&v222 - v42);
  v43 = __chkstk_darwin(v41);
  v225 = &v222 - v44;
  v45 = __chkstk_darwin(v43);
  v224 = &v222 - v46;
  v47 = __chkstk_darwin(v45);
  v230 = &v222 - v48;
  v49 = __chkstk_darwin(v47);
  v234 = &v222 - v50;
  v51 = __chkstk_darwin(v49);
  v53 = &v222 - v52;
  v239 = v54;
  __chkstk_darwin(v51);
  v56 = &v222 - v55;
  if (qword_101694960 != -1)
  {
    swift_once();
  }

  v57 = type metadata accessor for Logger();
  v58 = sub_1000076D4(v57, qword_10177B380);
  v59 = v36[2];
  v264 = a1;
  v263 = v36 + 2;
  v268 = v59;
  v59(v56, a1, v35);
  v256 = v58;
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();
  v62 = os_log_type_enabled(v60, v61);
  v267 = v36;
  v266 = v53;
  v265 = a2;
  if (v62)
  {
    v63 = v14;
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    aBlock = v65;
    *v64 = 141558531;
    *(v64 + 4) = 1752392040;
    *(v64 + 12) = 2081;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v66 = dispatch thunk of CustomStringConvertible.description.getter();
    v68 = v67;
    v258 = v267[1];
    v258(v56, v35);
    v69 = sub_1000136BC(v66, v68, &aBlock);
    v70 = v265;

    *(v64 + 14) = v69;
    v71 = v70;
    *(v64 + 22) = 2048;
    *(v64 + 24) = a6;
    _os_log_impl(&_mh_execute_header, v60, v61, "stopSoundSingle %{private,mask.hash}s timeout %f", v64, 0x20u);
    sub_100007BAC(v65);

    v14 = v63;
    v36 = v267;
    v53 = v266;
  }

  else
  {
    v71 = a2;

    v258 = v36[1];
    v258(v56, v35);
  }

  v72 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_coordinators;
  swift_beginAccess();
  v238 = v72;
  v73 = *(v71 + v72);

  v74 = v264;
  sub_100025020(v264, &v277);
  v262 = v14;
  if (!v278)
  {
    sub_10000B3A8(&v277, &qword_101696920, &unk_10138B200);
    goto LABEL_18;
  }

  sub_10000A748(&v277, &aBlock);
  v75 = v274;
  v76 = v275;
  sub_1000035D0(&aBlock, v274);
  if ((v76[15](v75, v76) & 1) == 0)
  {
    sub_100007BAC(&aBlock);
    v53 = v266;
    goto LABEL_18;
  }

  v77 = v274;
  v78 = v275;
  sub_1000035D0(&aBlock, v274);
  v79 = v77;
  v80 = v235;
  v78[25](v79, v78);
  v81 = v36[6];
  if (v81(v80, 1, v35) == 1)
  {
    v82 = &qword_1016980D0;
    v83 = &unk_10138F3B0;
    v84 = v80;
LABEL_16:
    sub_10000B3A8(v84, v82, v83);
    goto LABEL_17;
  }

  v85 = v36[4];
  v86 = v234;
  v235 = (v36 + 4);
  v223 = v85;
  v85(v234, v80, v35);
  sub_100ACBC98(v86, &v269);
  if (!v270)
  {
    v258(v86, v35);
    v82 = &unk_1016AA480;
    v83 = &unk_1013BD050;
    v84 = &v269;
    goto LABEL_16;
  }

  sub_10000A748(&v269, &v277);
  v87 = v278;
  v88 = v279;
  sub_1000035D0(&v277, v278);
  v89 = (*(v88 + 16))(v87, v88);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_101385D80;
  v92 = v274;
  v91 = v275;
  sub_1000035D0(&aBlock, v274);
  (*(*(v91[1] + 1) + 32))(v92);
  v93 = sub_100615D6C(v90, v89);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v94 = v233;
  sub_10112C648(v93, v233);

  if (v81(v94, 1, v35) == 1)
  {
    v258(v86, v35);
    sub_10000B3A8(v94, &qword_1016980D0, &unk_10138F3B0);
    sub_100007BAC(&v277);
LABEL_17:
    sub_100007BAC(&aBlock);
    v53 = v266;
    v74 = v264;
    goto LABEL_18;
  }

  v143 = v230;
  v223(v230, v94, v35);
  v144 = v258;
  v53 = v266;
  v74 = v264;
  if (*(v73 + 16))
  {
    v145 = sub_1000210EC(v143);
    if (v146)
    {
      v147 = *(v257 + 72);
      v148 = v228;
      sub_100833680(*(v73 + 56) + v147 * v145, v228, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
      v149 = v229;
      sub_1008336E8(v148, v229, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
      if (*(v73 + 16) && (v150 = sub_1000210EC(v74), (v151 & 1) != 0))
      {
        v152 = *(v73 + 56) + v150 * v147;
        v153 = v226;
        sub_100833680(v152, v226, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
        v154 = v227;
        sub_1008336E8(v153, v227, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
        if ((static UUID.== infix(_:_:)() & 1) != 0 && *(v149 + *(v255 + 40)) == 1)
        {
          v155 = v268;
          v268(v53, v143, v35);
          v156 = v224;
          v155(v224, v74, v35);
          v155(v225, v143, v35);
          v157 = Logger.logObject.getter();
          v158 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v157, v158))
          {
            v159 = swift_slowAlloc();
            v245 = v157;
            v160 = v156;
            v161 = v159;
            v264 = swift_slowAlloc();
            *&v269 = v264;
            *v161 = 141558787;
            *(v161 + 4) = 1752392040;
            *(v161 + 12) = 2081;
            v233 = sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            LODWORD(v235) = v158;
            v162 = dispatch thunk of CustomStringConvertible.description.getter();
            v164 = v163;
            v165 = v225;
            v166 = v258;
            v258(v160, v35);
            v167 = sub_1000136BC(v162, v164, &v269);
            v53 = v266;

            *(v161 + 14) = v167;
            *(v161 + 22) = 2160;
            *(v161 + 24) = 1752392040;
            *(v161 + 32) = 2081;
            v168 = dispatch thunk of CustomStringConvertible.description.getter();
            v170 = v169;
            v166(v165, v35);
            v171 = sub_1000136BC(v168, v170, &v269);

            *(v161 + 34) = v171;
            v172 = v245;
            _os_log_impl(&_mh_execute_header, v245, v235, "Overriding stopSoundSingle %{private,mask.hash}s because %{private,mask.hash}s is indicating it was playing both in-case.", v161, 0x2Au);
            swift_arrayDestroy();

            sub_1008333E4(v227, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
            sub_1008333E4(v229, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
            v166(v143, v35);
            v166(v234, v35);
          }

          else
          {

            v183 = v258;
            v258(v225, v35);
            v183(v156, v35);
            sub_1008333E4(v227, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
            sub_1008333E4(v149, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
            v183(v143, v35);
            v183(v234, v35);
          }

          v105 = v261;
          v106 = v260;
          sub_100007BAC(&v277);
          sub_100007BAC(&aBlock);
          v107 = v255;
          if (!*(v73 + 16))
          {
            goto LABEL_64;
          }

          goto LABEL_22;
        }

        sub_1008333E4(v154, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
        v182 = v149;
      }

      else
      {
        v182 = v149;
      }

      sub_1008333E4(v182, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
    }
  }

  v144(v143, v35);
  v144(v234, v35);
  sub_100007BAC(&v277);
  sub_100007BAC(&aBlock);
LABEL_18:
  v95 = v245;
  v268(v245, v74, v35);
  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    v99 = v73;
    v100 = swift_slowAlloc();
    aBlock = v100;
    *v98 = 141558275;
    *(v98 + 4) = 1752392040;
    *(v98 + 12) = 2081;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v101 = dispatch thunk of CustomStringConvertible.description.getter();
    v103 = v102;
    v258(v95, v35);
    v104 = sub_1000136BC(v101, v103, &aBlock);

    *(v98 + 14) = v104;
    _os_log_impl(&_mh_execute_header, v96, v97, "stopSoundSingle for %{private,mask.hash}s directly.", v98, 0x16u);
    sub_100007BAC(v100);
    v73 = v99;

    v53 = v266;
  }

  else
  {

    v258(v95, v35);
  }

  v105 = v261;
  v106 = v260;
  v268(v53, v264, v35);
  v107 = v255;
  if (!*(v73 + 16))
  {
    goto LABEL_64;
  }

LABEL_22:
  v108 = sub_1000210EC(v53);
  if ((v109 & 1) == 0)
  {
LABEL_64:

    goto LABEL_65;
  }

  v110 = v236;
  sub_100833680(*(v73 + 56) + *(v257 + 72) * v108, v236, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);

  v111 = v237;
  sub_1008336E8(v110, v237, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
  v112 = *(v111 + v107[6]);
  if ((v112 - 1) < 2)
  {
    dispatch thunk of DispatchWorkItem.cancel()();
    v113 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_playSoundSubjects;
    v114 = v265;
    swift_beginAccess();
    if (*(*(v114 + v113) + 16))
    {

      sub_1000210EC(v53);
      if (v115)
      {

        aBlock = 4;
        PassthroughSubject.send(completion:)();
      }

      else
      {
      }
    }

    goto LABEL_55;
  }

  if (v112 != 4)
  {
LABEL_55:
    sub_1008333E4(v111, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
LABEL_65:
    v184 = v268;
    v268(v106, v53, v35);
    v185 = v240;
    v184(v240, v105, v35);
    v184((v185 + v107[5]), v53, v35);
    v275 = SharingCircleWildAdvertisementKey.init(key:);
    v276 = 0;
    aBlock = _NSConcreteStackBlock;
    v272 = 1107296256;
    v273 = sub_100006684;
    v274 = &unk_1016354F0;
    _Block_copy(&aBlock);
    *&v269 = _swiftEmptyArrayStorage;
    v186 = sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    v256 = v35;
    v187 = v186;
    v188 = v53;
    v189 = sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    v190 = v260;
    v191 = sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v263 = v189;
    v258 = v191;
    v192 = v188;
    v264 = v187;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    type metadata accessor for DispatchWorkItem();
    swift_allocObject();
    v193 = DispatchWorkItem.init(flags:block:)();
    static Date.trustedNow.getter(v185 + v107[8]);
    *(v185 + v107[6]) = 4;
    *(v185 + v107[7]) = v193;
    *(v185 + v107[9]) = 0;
    *(v185 + v107[10]) = 0;
    (*(v257 + 56))(v185, 0, 1, v107);
    swift_beginAccess();
    sub_1001DE600(v185, v190);
    swift_endAccess();
    v194 = v256;
    if (qword_101694920 != -1)
    {
      swift_once();
    }

    v195 = qword_10177B2E8;
    v196 = v243;
    v197 = v188;
    v198 = v268;
    v268(v243, v197, v194);
    v199 = v241;
    static Date.trustedNow.getter(v196 + *(v241 + 20));
    *(v196 + *(v199 + 24)) = 26;
    sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
    v200 = (*(v242 + 80) + 32) & ~*(v242 + 80);
    v201 = v192;
    v202 = swift_allocObject();
    *(v202 + 16) = xmmword_101385D80;
    sub_100833680(v196, v202 + v200, type metadata accessor for BeaconObservation);
    v203 = type metadata accessor for Transaction();
    __chkstk_darwin(v203);
    *(&v222 - 4) = v195;
    *(&v222 - 3) = v202;
    *(&v222 - 2) = 0;
    *(&v222 - 1) = 0;
    static Transaction.named<A>(_:with:)();

    sub_1008333E4(v196, type metadata accessor for BeaconObservation);
    v204 = type metadata accessor for TaskPriority();
    v205 = v244;
    (*(*(v204 - 8) + 56))(v244, 1, 1, v204);
    v198(v190, v201, v194);
    v206 = v267;
    v207 = (*(v267 + 80) + 32) & ~*(v267 + 80);
    v208 = swift_allocObject();
    *(v208 + 16) = 0;
    *(v208 + 24) = 0;
    v209 = v206 + 4;
    (v206[4])(v208 + v207, v190, v194);
    sub_10025EDD4(0, 0, v205, &unk_1013BD778, v208);

    sub_1000BC488();
    v210 = v247;
    v211 = v246;
    v212 = v248;
    (*(v247 + 104))(v246, enum case for DispatchQoS.QoSClass.default(_:), v248);
    v213 = static OS_dispatch_queue.global(qos:)();
    (*(v210 + 8))(v211, v212);
    v214 = swift_allocObject();
    v215 = v250;
    *(v214 + 16) = v249;
    *(v214 + 24) = v215;
    v275 = sub_100470308;
    v276 = v214;
    aBlock = _NSConcreteStackBlock;
    v272 = 1107296256;
    v273 = sub_100006684;
    v274 = &unk_101635568;
    v216 = _Block_copy(&aBlock);

    v217 = v251;
    static DispatchQoS.unspecified.getter();
    *&v269 = _swiftEmptyArrayStorage;
    v218 = v259;
    v219 = v262;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v216);

    v220 = v266;
    (*(v252 + 8))(v218, v219);
    (*(v253 + 8))(v217, v254);

    v221 = type metadata accessor for Transaction();
    __chkstk_darwin(v221);
    *(&v222 - 4) = v265;
    *(&v222 - 3) = v220;
    *(&v222 - 2) = v261;
    *(&v222 - 1) = a6;
    static Transaction.named<A>(_:with:)();
    return (*(v209 - 3))(v220, v194);
  }

  v116 = v53;
  v117 = v259;
  v118 = v231;
  v268(v231, v116, v35);
  v119 = v232;
  sub_100833680(v111, v232, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
  v120 = Logger.logObject.getter();
  v121 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v120, v121))
  {
    v122 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v122 = 141558531;
    *(v122 + 4) = 1752392040;
    *(v122 + 12) = 2081;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v123 = dispatch thunk of CustomStringConvertible.description.getter();
    v124 = v118;
    v126 = v125;
    v258(v124, v35);
    v127 = sub_1000136BC(v123, v126, &aBlock);

    *(v122 + 14) = v127;
    *(v122 + 22) = 2082;
    v128 = *(v119 + v107[6]);
    v129 = 0xEB00000000646575;
    v130 = 0x65755179616C702ELL;
    v131 = 0x6D6F43706F74732ELL;
    v132 = 0xEE00646574656C70;
    if (v128 != 5)
    {
      v131 = 0x74756F656D69742ELL;
      v132 = 0xE800000000000000;
    }

    v133 = 0x6D6F4379616C702ELL;
    v134 = 0xEE00646574656C70;
    if (v128 != 3)
    {
      v133 = 0x696E49706F74732ELL;
      v134 = 0xEE00646574616974;
    }

    if (*(v119 + v107[6]) <= 4u)
    {
      v131 = v133;
      v132 = v134;
    }

    v135 = 0x696E4979616C702ELL;
    v136 = 0xEE00646574616974;
    if (v128 != 1)
    {
      v135 = 0x6E755279616C702ELL;
      v136 = 0xEC000000676E696ELL;
    }

    if (*(v119 + v107[6]))
    {
      v130 = v135;
      v129 = v136;
    }

    if (*(v119 + v107[6]) <= 2u)
    {
      v137 = v130;
    }

    else
    {
      v137 = v131;
    }

    if (*(v119 + v107[6]) <= 2u)
    {
      v138 = v129;
    }

    else
    {
      v138 = v132;
    }

    v139 = v119;
    v140 = v262;
    v141 = v35;
    sub_1008333E4(v139, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
    v142 = sub_1000136BC(v137, v138, &aBlock);

    *(v122 + 24) = v142;
    _os_log_impl(&_mh_execute_header, v120, v121, "Cannot stopSound for %{private,mask.hash}s. Invalid state %{public}s!", v122, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1008333E4(v119, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
    v141 = v35;
    v258(v118, v35);
    v140 = v262;
  }

  sub_1000BC488();
  v173 = v247;
  v174 = v246;
  v175 = v248;
  (*(v247 + 104))(v246, enum case for DispatchQoS.QoSClass.default(_:), v248);
  v176 = static OS_dispatch_queue.global(qos:)();
  (*(v173 + 8))(v174, v175);
  v177 = swift_allocObject();
  v178 = v250;
  *(v177 + 16) = v249;
  *(v177 + 24) = v178;
  v275 = sub_100834734;
  v276 = v177;
  aBlock = _NSConcreteStackBlock;
  v272 = 1107296256;
  v273 = sub_100006684;
  v274 = &unk_1016355B8;
  v179 = _Block_copy(&aBlock);

  v180 = v251;
  static DispatchQoS.unspecified.getter();
  *&v277 = _swiftEmptyArrayStorage;
  sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v179);

  (*(v252 + 8))(v117, v140);
  (*(v253 + 8))(v180, v254);

  sub_1008333E4(v237, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
  return (v258)(v266, v141);
}

uint64_t sub_100827FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_100828034;

  return daemon.getter();
}

uint64_t sub_100828034(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 32) = a1;

  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  v4 = type metadata accessor for Daemon();
  updated = type metadata accessor for SimpleBeaconUpdateService(0);
  v6 = sub_1008345FC(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1008345FC(&unk_1016B10F0, type metadata accessor for SimpleBeaconUpdateService, &unk_1013CAC90);
  *v3 = v9;
  v3[1] = sub_1004D405C;

  return ActorServiceDaemon.getService<A>()(v4, updated, v6, v7);
}

uint64_t sub_100828210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v59 = a3;
  v63 = a1;
  v71 = type metadata accessor for UUID();
  v69 = *(v71 - 8);
  v70 = *(v69 + 64);
  __chkstk_darwin(v71);
  v68 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v62 = *(v64 - 8);
  __chkstk_darwin(v64);
  v52 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v10 - 8);
  v12 = &v46 - v11;
  v53 = sub_1000BC4D4(&qword_1016AA9D0, &qword_1013BD788);
  v55 = *(v53 - 8);
  __chkstk_darwin(v53);
  v14 = &v46 - v13;
  v15 = sub_1000BC4D4(&qword_1016AA9D8, &qword_1013BD790);
  v16 = *(v15 - 8);
  v57 = v15;
  v58 = v16;
  __chkstk_darwin(v15);
  v50 = &v46 - v17;
  v18 = sub_1000BC4D4(&qword_1016AA9E0, &qword_1013BD798);
  v19 = *(v18 - 8);
  v60 = v18;
  v61 = v19;
  __chkstk_darwin(v18);
  v51 = &v46 - v20;
  v21 = sub_1000BC4D4(&qword_1016AA9E8, &qword_1013BD7A0);
  v22 = *(v21 - 8);
  v66 = v21;
  v67 = v22;
  __chkstk_darwin(v21);
  v54 = &v46 - v23;
  v65 = Transaction.subscriptionCleaner.getter();
  v56 = a2;
  v24 = sub_10081D85C(a3, a4);
  v72 = *(a2 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue);
  v25 = v72;
  v73[0] = v24;
  v26 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v27 = *(v26 - 8);
  v48 = *(v27 + 56);
  v49 = v27 + 56;
  v48(v12, 1, 1, v26);
  v47 = v25;
  sub_1000BC4D4(&qword_1016AA920, &qword_1013BD720);
  v46 = sub_1000BC488();
  sub_1000041A4(&qword_1016AA930, &qword_1016AA920, &qword_1013BD720, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_1008345FC(&qword_1016AF9C0, sub_1000BC488, &protocol conformance descriptor for OS_dispatch_queue);
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v12, &unk_1016B0FE0, &unk_101391980);

  v28 = v52;
  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  v29 = v47;
  v73[0] = v47;
  v48(v12, 1, 1, v26);
  sub_1000041A4(&qword_1016AA9F0, &qword_1016AA9D0, &qword_1013BD788, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v30 = v50;
  v31 = v53;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_10000B3A8(v12, &unk_1016B0FE0, &unk_101391980);

  (*(v62 + 8))(v28, v64);
  (*(v55 + 8))(v14, v31);
  sub_1000BC4D4(&qword_1016AA928, &qword_1013BD728);
  sub_1000041A4(&qword_1016AA9F8, &qword_1016AA9D8, &qword_1013BD790, &protocol conformance descriptor for Publishers.Timeout<A, B>);
  v32 = v51;
  v33 = v57;
  Publisher.map<A>(_:)();
  (*(v58 + 8))(v30, v33);
  sub_1000BC4D4(&qword_1016AA938, &qword_1013BD730);
  sub_1000041A4(&qword_1016AAA00, &qword_1016AA9E0, &qword_1013BD798, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_1000041A4(&qword_1016AA948, &qword_1016AA938, &qword_1013BD730, &protocol conformance descriptor for Just<A>);
  v34 = v54;
  v35 = v60;
  Publisher.catch<A>(_:)();
  (*(v61 + 8))(v32, v35);
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = v68;
  v37 = v69;
  v39 = v71;
  (*(v69 + 16))(v68, v59, v71);
  v40 = v37;
  v41 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v42 = (v70 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  *(v43 + 16) = v63;
  *(v43 + 24) = v36;
  (*(v40 + 32))(v43 + v41, v38, v39);
  *(v43 + v42) = v65;
  sub_1000041A4(&qword_1016AAA08, &qword_1016AA9E8, &qword_1013BD7A0, &protocol conformance descriptor for Publishers.Catch<A, B>);

  swift_unknownObjectRetain();
  v44 = v66;
  Publisher<>.sink(receiveValue:)();

  (*(v67 + 8))(v34, v44);
  AnyCancellable.store(in:)();
  swift_unknownObjectRelease();
}

uint64_t sub_100828B44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  sub_1000BC4D4(&qword_1016AA928, &qword_1013BD728);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100828BD4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000BC4D4(a2, a3);
  __chkstk_darwin(v4);
  v6 = *a1;
  *(&v8 - v5) = v6;
  swift_storeEnumTagMultiPayload();
  sub_1008326DC(v6);
  return Just.init(_:)();
}

void sub_100828C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = a4;
  v57 = type metadata accessor for UUID();
  v5 = *(v57 - 8);
  v6 = __chkstk_darwin(v57);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v54 - v9;
  v11 = sub_1000BC4D4(&qword_1016AA928, &qword_1013BD728);
  __chkstk_darwin(v11);
  v13 = (&v54 - v12);
  v56 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator(0);
  v14 = *(v56 - 1);
  v15 = __chkstk_darwin(v56);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v58 = &v54 - v18;
  Transaction.capture()();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v21 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_coordinators;
    swift_beginAccess();
    v22 = *&v20[v21];
    if (*(v22 + 16))
    {

      v23 = sub_1000210EC(v59);
      if (v24)
      {
        sub_100833680(*(v22 + 56) + *(v14 + 72) * v23, v17, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);

        v25 = v17;
        v26 = v58;
        sub_1008336E8(v25, v58, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
        sub_1000D2A70(a1, v13, &qword_1016AA928, &qword_1013BD728);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v27 = *v13;
          v28 = v5;
          if (qword_101694960 != -1)
          {
            swift_once();
          }

          v29 = type metadata accessor for Logger();
          sub_1000076D4(v29, qword_10177B380);
          v30 = *(v5 + 16);
          v31 = v57;
          v30(v8, v59, v57);
          sub_1008326DC(v27);
          v32 = Logger.logObject.getter();
          v33 = static os_log_type_t.error.getter();
          sub_1008326EC(v27);
          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            v55 = swift_slowAlloc();
            v61 = v55;
            *v34 = 141558531;
            *(v34 + 4) = 1752392040;
            *(v34 + 12) = 2081;
            sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v35 = dispatch thunk of CustomStringConvertible.description.getter();
            v37 = v36;
            (*(v28 + 8))(v8, v31);
            v38 = sub_1000136BC(v35, v37, &v61);

            *(v34 + 14) = v38;
            *(v34 + 22) = 2080;
            v60 = v27;
            sub_1008326DC(v27);
            v39 = String.init<A>(describing:)();
            v41 = sub_1000136BC(v39, v40, &v61);

            *(v34 + 24) = v41;
            v26 = v58;
            _os_log_impl(&_mh_execute_header, v32, v33, "Stop sound failed for %{private,mask.hash}s. Error %s", v34, 0x20u);
            swift_arrayDestroy();
          }

          else
          {

            (*(v28 + 8))(v8, v31);
          }

          sub_100832458();
          v51 = swift_allocError();
          *v52 = v27;
          v53 = *(v56 + 9);

          *(v26 + v53) = v51;
        }

        else
        {
          if (qword_101694960 != -1)
          {
            swift_once();
          }

          v42 = type metadata accessor for Logger();
          sub_1000076D4(v42, qword_10177B380);
          v43 = v57;
          (*(v5 + 16))(v10, v59, v57);
          v44 = Logger.logObject.getter();
          v45 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            v56 = swift_slowAlloc();
            v61 = v56;
            *v46 = 141558275;
            *(v46 + 4) = 1752392040;
            *(v46 + 12) = 2081;
            sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v47 = dispatch thunk of CustomStringConvertible.description.getter();
            v49 = v48;
            (*(v5 + 8))(v10, v43);
            v50 = sub_1000136BC(v47, v49, &v61);

            *(v46 + 14) = v50;
            _os_log_impl(&_mh_execute_header, v44, v45, "Stop sound completed successfully for %{private,mask.hash}s", v46, 0x16u);
            sub_100007BAC(v56);

            v26 = v58;
          }

          else
          {

            (*(v5 + 8))(v10, v43);
          }

          sub_10000B3A8(v13, &qword_1016AA928, &qword_1013BD728);
        }

        sub_100815748(v59, 1, 0);

        sub_1008333E4(v26, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1008293E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v115 = a4;
  v111 = a3;
  v121 = a2;
  v122 = a1;
  v5 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v6 = __chkstk_darwin(v5 - 8);
  v109 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v108 = &v99 - v8;
  v110 = type metadata accessor for AccessoryCommand(0);
  v112 = *(v110 - 8);
  v9 = __chkstk_darwin(v110);
  v113 = v10;
  v114 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v99 - v11;
  v13 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v13 - 8);
  v101 = &v99 - v14;
  v104 = type metadata accessor for UUID();
  v120 = *(v104 - 8);
  v15 = *(v120 + 64);
  v16 = __chkstk_darwin(v104);
  v107 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v16);
  v119 = &v99 - v18;
  v19 = __chkstk_darwin(v17);
  v116 = &v99 - v20;
  v21 = __chkstk_darwin(v19);
  v105 = &v99 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v99 - v24;
  __chkstk_darwin(v23);
  v27 = &v99 - v26;
  v28 = type metadata accessor for DispatchPredicate();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = (&v99 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v106 = v4;
  v32 = *&v4[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue];
  *v31 = v32;
  (*(v29 + 104))(v31, enum case for DispatchPredicate.onQueue(_:), v28);
  v33 = v32;
  v34 = _dispatchPreconditionTest(_:)();
  (*(v29 + 8))(v31, v28);
  if (v34)
  {
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
  v35 = type metadata accessor for Logger();
  sub_1000076D4(v35, qword_10177B380);
  v36 = v120;
  v37 = v120 + 16;
  v38 = *(v120 + 16);
  v39 = v122;
  v40 = v104;
  v38(v27, v122, v104);
  v117 = v38;
  v118 = v37;
  v38(v25, v121, v40);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  v43 = os_log_type_enabled(v41, v42);
  v103 = v12;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v123[0] = v102;
    *v44 = 141558531;
    *(v44 + 4) = 1752392040;
    *(v44 + 12) = 2081;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v100 = v42;
    v99 = v41;
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v46 = v36;
    v48 = v47;
    v49 = *(v46 + 8);
    v49(v27, v40);
    v50 = sub_1000136BC(v45, v48, v123);

    *(v44 + 14) = v50;
    *(v44 + 22) = 2082;
    v51 = dispatch thunk of CustomStringConvertible.description.getter();
    v53 = v52;
    v49(v25, v40);
    v39 = v122;
    v54 = sub_1000136BC(v51, v53, v123);

    *(v44 + 24) = v54;
    v55 = v99;
    _os_log_impl(&_mh_execute_header, v99, v100, "SPPlaySound play sound on device %{private,mask.hash}s commandId: %{public}s.", v44, 0x20u);
    swift_arrayDestroy();

    v56 = v120;
  }

  else
  {

    v57 = *(v36 + 8);
    v57(v25, v40);
    v57(v27, v40);
    v56 = v36;
  }

  v58 = v106;
  v102 = sub_1000035D0(&v106[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_findMyCommandManager], *&v106[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_findMyCommandManager + 24]);
  v59 = v105;
  v60 = v117;
  v117(v105, v39, v40);
  v61 = v116;
  v60(v116, v121, v40);
  v62 = *(v56 + 80);
  v63 = (v62 + 16) & ~v62;
  v64 = (v15 + v62 + v63) & ~v62;
  v65 = swift_allocObject();
  v66 = *(v56 + 32);
  v66(v65 + v63, v59, v40);
  v116 = v66;
  v66(v65 + v64, v61, v40);
  v67 = v58;
  *(v65 + ((v15 + v64 + 7) & 0xFFFFFFFFFFFFFFF8)) = v58;
  v68 = *v102;
  v69 = *(*v102 + 184);
  v70 = v40;
  if (v69)
  {
    v71 = v67;

    v72 = v101;
    sub_100AA33AC(v122, v101);

    v73 = type metadata accessor for OwnedBeaconRecord(0);
    if ((*(*(v73 - 8) + 48))(v72, 1, v73) == 1)
    {
      sub_10000B3A8(v72, &unk_1016A9A20, &qword_10138B280);
      LOBYTE(v69) = 0;
    }

    else
    {
      v75 = sub_100D60CD0();
      v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = v77;
      if (v76 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v78 == v79)
      {
        LOBYTE(v69) = 1;
      }

      else
      {
        LOBYTE(v69) = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      sub_1008333E4(v101, type metadata accessor for OwnedBeaconRecord);
    }
  }

  else
  {
    v74 = v67;
  }

  v80 = v108;
  v81 = v40;
  v82 = v117;
  v117(v108, v121, v81);
  v83 = v120;
  (*(v120 + 56))(v80, 0, 1, v70);
  v82(v119, v122, v70);
  v84 = v109;
  sub_1000D2A70(v80, v109, &qword_1016980D0, &unk_10138F3B0);
  v85 = *(v83 + 48);
  v86 = v85(v84, 1, v70);
  v87 = v107;
  if (v86 == 1)
  {
    UUID.init()();
    sub_10000B3A8(v80, &qword_1016980D0, &unk_10138F3B0);
    if (v85(v84, 1, v70) != 1)
    {
      sub_10000B3A8(v84, &qword_1016980D0, &unk_10138F3B0);
    }
  }

  else
  {
    sub_10000B3A8(v80, &qword_1016980D0, &unk_10138F3B0);
    (v116)(v87, v84, v70);
  }

  v88 = v103;
  v89 = v116;
  (v116)(v103, v87, v70);
  v90 = v110;
  v89(v88 + *(v110 + 20), v119, v70);
  v91 = v88 + v90[6];
  *v91 = v111;
  *(v91 + 8) = 0x2000000000000000;
  *(v91 + 16) = 0u;
  *(v91 + 32) = 0u;
  *(v88 + v90[7]) = v69 & 1;
  *(v88 + v90[8]) = 1;
  v92 = swift_allocObject();
  *(v92 + 16) = sub_100833590;
  *(v92 + 24) = v65;
  type metadata accessor for Transaction();
  v93 = v114;
  sub_100833680(v88, v114, type metadata accessor for AccessoryCommand);
  v94 = (*(v112 + 80) + 16) & ~*(v112 + 80);
  v95 = (v113 + v94 + 7) & 0xFFFFFFFFFFFFFFF8;
  v96 = swift_allocObject();
  sub_1008336E8(v93, v96 + v94, type metadata accessor for AccessoryCommand);
  *(v96 + v95) = v68;
  v97 = (v96 + ((v95 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v97 = sub_10067B5A4;
  v97[1] = v92;

  static Transaction.asyncTask(name:block:)();

  sub_1008333E4(v88, type metadata accessor for AccessoryCommand);
  v123[0] = v115;
  sub_1000BC4D4(&qword_1016AA9C0, &qword_1013BD758);
  sub_1000041A4(&qword_1016AA9C8, &qword_1016AA9C0, &qword_1013BD758, &protocol conformance descriptor for PassthroughSubject<A, B>);
  return Publisher.eraseToAnyPublisher()();
}

uint64_t sub_100829FCC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v20[0] = a4;
  v23 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v23 - 8);
  __chkstk_darwin(v23);
  v21 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v20[1] = *&a2[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue];
  (*(v11 + 16))(v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v10);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  (*(v11 + 32))(v14 + v13, v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  *(v14 + ((v12 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v20[0];
  aBlock[4] = sub_100833770;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016359C8;
  v15 = _Block_copy(aBlock);

  v16 = a2;
  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v17 = v21;
  v18 = v23;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v25 + 8))(v17, v18);
  (*(v22 + 8))(v9, v24);
}

void sub_10082A3B0(void *a1, uint64_t a2)
{
  v3 = v2;
  v144 = a2;
  v5 = sub_1000BC4D4(&qword_1016998E0, &qword_101392030);
  __chkstk_darwin(v5 - 8);
  v149 = &v137[-v6];
  v7 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v137[-v8];
  v150 = type metadata accessor for UUID();
  v10 = *(v150 - 8);
  v11 = __chkstk_darwin(v150);
  v151 = &v137[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v11);
  v146 = &v137[-v14];
  v15 = __chkstk_darwin(v13);
  v142 = &v137[-v16];
  v17 = __chkstk_darwin(v15);
  v143 = &v137[-v18];
  v19 = __chkstk_darwin(v17);
  v21 = &v137[-v20];
  v22 = __chkstk_darwin(v19);
  v145 = &v137[-v23];
  v24 = __chkstk_darwin(v22);
  v26 = &v137[-v25];
  __chkstk_darwin(v24);
  v147 = &v137[-v27];
  v28 = type metadata accessor for DispatchPredicate();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v137[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = *(v3 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue);
  *v31 = v32;
  (*(v29 + 104))(v31, enum case for DispatchPredicate.onQueue(_:), v28);
  v33 = v32;
  LOBYTE(v32) = _dispatchPreconditionTest(_:)();
  v35 = *(v29 + 8);
  v34 = v29 + 8;
  v35(v31, v28);
  if ((v32 & 1) == 0)
  {
    __break(1u);
    goto LABEL_46;
  }

  v148 = v3;
  v152 = a1;
  sub_100025020(a1, v157);
  v36 = v158;
  v153 = v10;
  if (!v158)
  {
    sub_10000B3A8(v157, &qword_101696920, &unk_10138B200);
    v34 = v150;
    (*(v10 + 56))(v9, 1, 1);
LABEL_9:
    sub_10000B3A8(v9, &qword_1016980D0, &unk_10138F3B0);
    if (qword_101694960 == -1)
    {
LABEL_10:
      v59 = type metadata accessor for Logger();
      sub_1000076D4(v59, qword_10177B380);
      v60 = v153;
      v42 = *(v153 + 16);
      v57 = v152;
      v42(v21);
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v157[0] = v64;
        *v63 = 141558275;
        *(v63 + 4) = 1752392040;
        *(v63 + 12) = 2081;
        sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v65 = dispatch thunk of CustomStringConvertible.description.getter();
        v66 = v42;
        v68 = v67;
        v69 = v21;
        v58 = *(v153 + 8);
        v58(v69, v34);
        v70 = sub_1000136BC(v65, v68, v157);
        v42 = v66;

        *(v63 + 14) = v70;
        _os_log_impl(&_mh_execute_header, v61, v62, "didStartPlayingSoundOnDevice %{private,mask.hash}s", v63, 0x16u);
        sub_100007BAC(v64);
      }

      else
      {

        v71 = v21;
        v58 = *(v60 + 8);
        v58(v71, v34);
      }

      v40 = v151;
      goto LABEL_14;
    }

LABEL_46:
    swift_once();
    goto LABEL_10;
  }

  v37 = v159;
  sub_1000035D0(v157, v158);
  (*(v37 + 200))(v36, v37);
  sub_100007BAC(v157);
  v34 = v150;
  if ((*(v10 + 48))(v9, 1) == 1)
  {
    goto LABEL_9;
  }

  v38 = v153;
  v39 = v147;
  (*(v153 + 32))(v147, v9, v34);
  v40 = v151;
  if (qword_101694960 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  sub_1000076D4(v41, qword_10177B380);
  v42 = *(v38 + 16);
  (v42)(v26, v152, v34);
  v43 = v145;
  (v42)(v145, v39, v34);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v140 = swift_slowAlloc();
    v157[0] = v140;
    *v46 = 141558531;
    *(v46 + 4) = 1752392040;
    *(v46 + 12) = 2081;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v141 = v42;
    v139 = v44;
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v138 = v45;
    v49 = v48;
    v50 = *(v153 + 8);
    v50(v26, v34);
    v51 = sub_1000136BC(v47, v49, v157);

    *(v46 + 14) = v51;
    *(v46 + 22) = 2082;
    v42 = v141;
    v52 = dispatch thunk of CustomStringConvertible.description.getter();
    v54 = v53;
    v50(v43, v34);
    v55 = sub_1000136BC(v52, v54, v157);

    *(v46 + 24) = v55;
    v56 = v139;
    _os_log_impl(&_mh_execute_header, v139, v138, "didStartPlayingSoundOnDevice %{private,mask.hash}s. groupId %{public}s", v46, 0x20u);
    swift_arrayDestroy();

    v57 = v152;

    v50(v147, v34);
    v58 = v50;
  }

  else
  {

    v58 = *(v38 + 8);
    v58(v43, v34);
    v58(v26, v34);
    v58(v39, v34);
    v57 = v152;
  }

LABEL_14:
  v72 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_coordinators;
  v73 = v148;
  swift_beginAccess();
  v74 = *(v73 + v72);
  if (!*(v74 + 16))
  {
LABEL_24:
    v103 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator(0);
    v104 = v149;
    (*(*(v103 - 8) + 56))(v149, 1, 1, v103);
    sub_10000B3A8(v104, &qword_1016998E0, &qword_101392030);
    if (qword_101694960 != -1)
    {
      swift_once();
    }

    v105 = type metadata accessor for Logger();
    sub_1000076D4(v105, qword_10177B380);
    (v42)(v40, v57, v34);
    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v156[0] = v109;
      *v108 = 136315138;
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v110 = dispatch thunk of CustomStringConvertible.description.getter();
      v111 = v40;
      v113 = v112;
      v58(v111, v34);
      v114 = sub_1000136BC(v110, v113, v156);

      *(v108 + 4) = v114;
      _os_log_impl(&_mh_execute_header, v106, v107, "didStartPlayingSoundOnDevice called with unknown device %s", v108, 0xCu);
      sub_100007BAC(v109);

      return;
    }

    v115 = v40;
LABEL_36:
    v58(v115, v34);
    return;
  }

  v75 = sub_1000210EC(v57);
  if ((v76 & 1) == 0)
  {

    goto LABEL_24;
  }

  v77 = v75;
  v141 = v42;
  v78 = *(v74 + 56);
  v79 = v73;
  v80 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator(0);
  v81 = *(v80 - 8);
  v82 = v78 + *(v81 + 72) * v77;
  v83 = v141;
  v84 = v149;
  sub_100833680(v82, v149, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);

  (*(v81 + 56))(v84, 0, 1, v80);
  sub_10000B3A8(v84, &qword_1016998E0, &qword_101392030);
  v85 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_playSoundSubjects;
  swift_beginAccess();
  v86 = v146;
  if (!*(*(v79 + v85) + 16))
  {
LABEL_31:
    if (qword_101694960 != -1)
    {
      swift_once();
    }

    v116 = type metadata accessor for Logger();
    sub_1000076D4(v116, qword_10177B380);
    v83(v86, v57, v34);
    v117 = Logger.logObject.getter();
    v118 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = v58;
      v120 = v86;
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v155 = v122;
      *v121 = 141558275;
      *(v121 + 4) = 1752392040;
      *(v121 + 12) = 2081;
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v123 = dispatch thunk of CustomStringConvertible.description.getter();
      v125 = v124;
      v119(v120, v34);
      v126 = sub_1000136BC(v123, v125, &v155);

      *(v121 + 14) = v126;
      _os_log_impl(&_mh_execute_header, v117, v118, "Missing playSoundSubject for device %{private,mask.hash}s!", v121, 0x16u);
      sub_100007BAC(v122);

      return;
    }

    v115 = v86;
    goto LABEL_36;
  }

  sub_1000210EC(v57);
  if ((v87 & 1) == 0)
  {

    goto LABEL_31;
  }

  v88 = v144;
  if (v144)
  {
    swift_errorRetain();
    if (qword_101694960 != -1)
    {
      swift_once();
    }

    v89 = type metadata accessor for Logger();
    sub_1000076D4(v89, qword_10177B380);
    v90 = v143;
    (v141)(v143, v57, v34);
    swift_errorRetain();
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = v90;
      v94 = swift_slowAlloc();
      v155 = swift_slowAlloc();
      *v94 = 141558531;
      *(v94 + 4) = 1752392040;
      *(v94 + 12) = 2081;
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v95 = dispatch thunk of CustomStringConvertible.description.getter();
      v96 = v58;
      v98 = v97;
      v96(v93, v34);
      v99 = sub_1000136BC(v95, v98, &v155);

      *(v94 + 14) = v99;
      *(v94 + 22) = 2082;
      v154 = v144;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v100 = String.init<A>(describing:)();
      v102 = sub_1000136BC(v100, v101, &v155);

      *(v94 + 24) = v102;
      _os_log_impl(&_mh_execute_header, v91, v92, "didStartPlayingSoundOnDevice %{private,mask.hash}s failed due to %{public}s", v94, 0x20u);
      swift_arrayDestroy();
      v88 = v144;
    }

    else
    {

      v58(v90, v34);
    }

    v155 = v88;
    swift_errorRetain();
    PassthroughSubject.send(completion:)();
  }

  else
  {
    if (qword_101694960 != -1)
    {
      swift_once();
    }

    v127 = type metadata accessor for Logger();
    sub_1000076D4(v127, qword_10177B380);
    v128 = v142;
    (v141)(v142, v57, v34);
    v129 = Logger.logObject.getter();
    v130 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      v152 = swift_slowAlloc();
      v155 = v152;
      *v131 = 141558275;
      *(v131 + 4) = 1752392040;
      *(v131 + 12) = 2081;
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v132 = dispatch thunk of CustomStringConvertible.description.getter();
      v133 = v58;
      v135 = v134;
      v133(v128, v34);
      v136 = sub_1000136BC(v132, v135, &v155);

      *(v131 + 14) = v136;
      _os_log_impl(&_mh_execute_header, v129, v130, "didStartPlayingSoundOnDevice %{private,mask.hash}s succeeded", v131, 0x16u);
      sub_100007BAC(v152);
    }

    else
    {

      v58(v128, v34);
    }

    PassthroughSubject.send(_:)();
    v155 = 4;
    PassthroughSubject.send(completion:)();
  }
}

uint64_t sub_10082B674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a3;
  v66 = a1;
  v67 = a2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v55[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v6);
  v64 = &v55[-v10];
  v11 = __chkstk_darwin(v9);
  v13 = &v55[-v12];
  v63 = v14;
  __chkstk_darwin(v11);
  v16 = &v55[-v15];
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v55[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = *&v3[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue];
  *v20 = v21;
  (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  (*(v18 + 8))(v20, v17);
  if (v21)
  {
    v62 = v3;
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
  v61 = v8;
  v23 = type metadata accessor for Logger();
  sub_1000076D4(v23, qword_10177B380);
  v24 = *(v5 + 16);
  (v24)(v16, v66, v4);
  (v24)(v13, v67, v4);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  v27 = os_log_type_enabled(v25, v26);
  v60 = v5;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = v13;
    v59 = v24;
    v30 = v28;
    v58 = swift_slowAlloc();
    v68 = v58;
    *v30 = 141558531;
    *(v30 + 4) = 1752392040;
    *(v30 + 12) = 2081;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v57 = v25;
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v5;
    v34 = v33;
    v56 = v26;
    v35 = *(v32 + 8);
    v35(v16, v4);
    v36 = sub_1000136BC(v31, v34, &v68);

    *(v30 + 14) = v36;
    *(v30 + 22) = 2082;
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v38;
    v35(v29, v4);
    v40 = sub_1000136BC(v37, v39, &v68);

    *(v30 + 24) = v40;
    v41 = v57;
    _os_log_impl(&_mh_execute_header, v57, v56, "SPPlaySound stop sound on device %{private,mask.hash}s commandId: %{public}s.", v30, 0x20u);
    swift_arrayDestroy();

    v24 = v59;
  }

  else
  {

    v42 = *(v5 + 8);
    v42(v13, v4);
    v42(v16, v4);
  }

  v43 = v62;
  v59 = sub_1000035D0(&v62[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_findMyCommandManager], *&v62[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_findMyCommandManager + 24]);
  v44 = v64;
  (v24)(v64, v66, v4);
  v45 = v61;
  (v24)(v61, v67, v4);
  v46 = v60;
  v47 = *(v60 + 80);
  v48 = (v47 + 16) & ~v47;
  v49 = (v63 + v47 + v48) & ~v47;
  v50 = (v63 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  v52 = *(v46 + 32);
  v52(v51 + v48, v44, v4);
  v52(v51 + v49, v45, v4);
  *(v51 + v50) = v43;
  v53 = v43;
  sub_10067AF4C(v66, v67, sub_100832970, v51);

  v68 = v65;
  sub_1000BC4D4(&qword_1016AA9C0, &qword_1013BD758);
  sub_1000041A4(&qword_1016AA9C8, &qword_1016AA9C0, &qword_1013BD758, &protocol conformance descriptor for PassthroughSubject<A, B>);
  return Publisher.eraseToAnyPublisher()();
}

uint64_t sub_10082BC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[16] = a5;
  v6[17] = a6;
  v6[15] = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v6[18] = v7;
  v6[19] = *(v7 - 8);
  v6[20] = swift_task_alloc();
  v8 = type metadata accessor for DispatchQoS();
  v6[21] = v8;
  v6[22] = *(v8 - 8);
  v6[23] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v6[26] = type metadata accessor for AccessoryCommand(0);
  v6[27] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v6[28] = v9;
  v10 = *(v9 - 8);
  v6[29] = v10;
  v6[30] = *(v10 + 64);
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();

  return _swift_task_switch(sub_10082BED4, 0, 0);
}

uint64_t sub_10082BED4()
{
  v34 = v0;
  v1 = v0[40];
  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[15];
  v5 = *(v3 + 16);
  v0[41] = v5;
  v0[42] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  if (qword_101694968 != -1)
  {
    swift_once();
  }

  v6 = v0[39];
  v7 = v0[40];
  v8 = v0[38];
  v9 = v0[28];
  v10 = v0[16];
  v11 = type metadata accessor for Logger();
  v0[43] = sub_1000076D4(v11, qword_1016AA7B0);
  v5(v6, v7, v9);
  v5(v8, v10, v9);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v12, v13);
  v16 = v0[38];
  v15 = v0[39];
  v18 = v0[28];
  v17 = v0[29];
  if (v14)
  {
    v32 = v13;
    v19 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v19 = 136315650;
    *(v19 + 4) = sub_1000136BC(0xD00000000000002ALL, 0x8000000101360DD0, &v33);
    *(v19 + 12) = 2082;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    log = v12;
    v23 = *(v17 + 8);
    v23(v15, v18);
    v24 = sub_1000136BC(v20, v22, &v33);

    *(v19 + 14) = v24;
    *(v19 + 22) = 2082;
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    v23(v16, v18);
    v28 = sub_1000136BC(v25, v27, &v33);

    *(v19 + 24) = v28;
    _os_log_impl(&_mh_execute_header, log, v32, "%s on device %{public}s commandId: %{public}s.", v19, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v23 = *(v17 + 8);
    v23(v16, v18);
    v23(v15, v18);
  }

  v0[44] = v23;
  v29 = swift_task_alloc();
  v0[45] = v29;
  *v29 = v0;
  v29[1] = sub_10082C240;

  return daemon.getter();
}

uint64_t sub_10082C240(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 368) = a1;

  v3 = swift_task_alloc();
  *(v2 + 376) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for OwnerCommandService(0);
  v6 = sub_1008345FC(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1008345FC(&unk_1016B10E0, type metadata accessor for OwnerCommandService, &unk_10140DB10);
  *v3 = v9;
  v3[1] = sub_10082C41C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10082C41C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 384) = a1;
  *(v3 + 392) = v1;

  if (v1)
  {
    v4 = sub_10082CEF8;
  }

  else
  {

    v4 = sub_10082C538;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10082C538()
{
  v1 = v0[41];
  v2 = v0[40];
  v3 = v0[37];
  v4 = v0[28];
  v5 = v0[29];
  v7 = v0[24];
  v6 = v0[25];
  v8 = v0[15];
  (*(v5 + 56))(v6, 1, 1, v4);
  v1(v3, v2, v4);
  v9 = *(v8 + *(type metadata accessor for WildModeAssociationRecord(0) + 52));
  sub_1000D2A70(v6, v7, &qword_1016980D0, &unk_10138F3B0);
  v10 = *(v5 + 48);
  v11 = v10(v7, 1, v4);
  v12 = v0[36];
  if (v11 == 1)
  {
    v13 = v0[28];
    v15 = v0[24];
    v14 = v0[25];
    UUID.init()();
    sub_10000B3A8(v14, &qword_1016980D0, &unk_10138F3B0);
    if (v10(v15, 1, v13) != 1)
    {
      sub_10000B3A8(v0[24], &qword_1016980D0, &unk_10138F3B0);
    }
  }

  else
  {
    v16 = v0[28];
    v17 = v0[29];
    v18 = v0[24];
    sub_10000B3A8(v0[25], &qword_1016980D0, &unk_10138F3B0);
    (*(v17 + 32))(v12, v18, v16);
  }

  v19 = v9 == 3;
  v20 = v0[37];
  v21 = v0[28];
  v23 = v0[26];
  v22 = v0[27];
  v24 = *(v0[29] + 32);
  v24(v22, v0[36], v21);
  v24(v22 + v23[5], v20, v21);
  v25 = v22 + v23[6];
  *v25 = xmmword_1013BD3F0;
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = xmmword_10139BF70;
  *(v22 + v23[7]) = v19;
  *(v22 + v23[8]) = 1;
  v26 = swift_task_alloc();
  v0[50] = v26;
  *v26 = v0;
  v26[1] = sub_10082C7B4;
  v27 = v0[27];

  return sub_10121B780((v0 + 8), v27, 3);
}

uint64_t sub_10082C7B4()
{
  *(*v1 + 408) = v0;

  if (v0)
  {
    v2 = sub_10082D52C;
  }

  else
  {
    v2 = sub_10082C8C8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10082C8C8()
{
  v46 = v0;
  v1 = v0[41];
  v2 = v0[34];
  v3 = v0[28];
  v4 = v0[16];
  v1(v0[35], v0[40], v3);
  v1(v2, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[44];
  v10 = v0[34];
  v9 = v0[35];
  v11 = v0[28];
  v12 = v0[27];
  if (v7)
  {
    v43 = v6;
    v13 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v13 = 136315650;
    *(v13 + 4) = sub_1000136BC(0xD00000000000002ALL, 0x8000000101360DD0, &v45);
    *(v13 + 12) = 2082;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v42 = v5;
    v44 = v12;
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v8(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v45);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2082;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v8(v10, v11);
    v21 = sub_1000136BC(v18, v20, &v45);

    *(v13 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v42, v43, "%s succeeded on device %{public}s commandId: %{public}s.", v13, 0x20u);
    swift_arrayDestroy();

    sub_10000B3A8((v0 + 8), &qword_1016A24A8, &unk_1013F60E0);
    v22 = v44;
  }

  else
  {

    v8(v10, v11);
    v8(v9, v11);
    sub_10000B3A8((v0 + 8), &qword_1016A24A8, &unk_1013F60E0);
    v22 = v12;
  }

  sub_1008333E4(v22, type metadata accessor for AccessoryCommand);
  v38 = v0[40];
  v41 = v0[44];
  v23 = v0[33];
  v24 = v0[29];
  v25 = v0[30];
  v26 = v0[28];
  v39 = v0[22];
  v40 = v0[21];
  v35 = v0[23];
  v36 = v0[20];
  v27 = v0[18];
  v28 = v0[17];
  v37 = v0[19];
  (v0[41])(v23);
  v29 = (*(v24 + 80) + 24) & ~*(v24 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  (*(v24 + 32))(v30 + v29, v23, v26);
  *(v30 + ((v25 + v29 + 7) & 0xFFFFFFFFFFFFFFF8)) = 0;
  v0[6] = sub_1008328E0;
  v0[7] = v30;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100006684;
  v0[5] = &unk_101635450;
  v31 = _Block_copy(v0 + 2);
  v32 = v28;
  static DispatchQoS.unspecified.getter();
  v0[14] = _swiftEmptyArrayStorage;
  sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v31);

  (*(v37 + 8))(v36, v27);
  (*(v39 + 8))(v35, v40);
  v41(v38, v26);

  v33 = v0[1];

  return v33();
}

uint64_t sub_10082CEF8()
{
  v47 = v0;

  v1 = v0[49];
  v2 = v0[41];
  v3 = v0[31];
  v4 = v0[28];
  v5 = v0[16];
  v2(v0[32], v0[40], v4);
  v2(v3, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[44];
  v11 = v0[31];
  v10 = v0[32];
  v12 = v0[28];
  if (v8)
  {
    v44 = v6;
    v13 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v46[0] = swift_slowAlloc();
    *v13 = 136315906;
    *(v13 + 4) = sub_1000136BC(0xD00000000000002ALL, 0x8000000101360DD0, v46);
    *(v13 + 12) = 2082;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v7;
    v16 = v15;
    v9(v10, v12);
    v17 = sub_1000136BC(v14, v16, v46);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2082;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v9(v11, v12);
    v21 = sub_1000136BC(v18, v20, v46);

    *(v13 + 24) = v21;
    *(v13 + 32) = 2114;
    swift_errorRetain();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 34) = v22;
    *v43 = v22;
    _os_log_impl(&_mh_execute_header, v44, v42, "%s failed on device %{public}s commandId: %{public}s. Error: %{public}@", v13, 0x2Au);
    sub_10000B3A8(v43, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {

    v9(v11, v12);
    v9(v10, v12);
  }

  v45 = v1;
  swift_errorRetain();
  v38 = v0[40];
  v41 = v0[44];
  v23 = v0[33];
  v24 = v0[30];
  v26 = v0[28];
  v25 = v0[29];
  v27 = v0[23];
  v39 = v0[22];
  v40 = v0[21];
  v37 = v0[19];
  v28 = v0[17];
  v35 = v0[20];
  v36 = v0[18];
  (v0[41])(v23);
  v29 = (*(v25 + 80) + 24) & ~*(v25 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  (*(v25 + 32))(v30 + v29, v23, v26);
  *(v30 + ((v24 + v29 + 7) & 0xFFFFFFFFFFFFFFF8)) = v45;
  v0[6] = sub_1008328E0;
  v0[7] = v30;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100006684;
  v0[5] = &unk_101635450;
  v31 = _Block_copy(v0 + 2);
  v32 = v28;
  static DispatchQoS.unspecified.getter();
  v0[14] = _swiftEmptyArrayStorage;
  sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v31);

  (*(v37 + 8))(v35, v36);
  (*(v39 + 8))(v27, v40);
  v41(v38, v26);

  v33 = v0[1];

  return v33();
}

uint64_t sub_10082D52C()
{
  v48 = v0;
  v1 = v0[27];

  sub_1008333E4(v1, type metadata accessor for AccessoryCommand);
  v2 = v0[51];
  v3 = v0[41];
  v4 = v0[31];
  v5 = v0[28];
  v6 = v0[16];
  v3(v0[32], v0[40], v5);
  v3(v4, v6, v5);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[44];
  v12 = v0[31];
  v11 = v0[32];
  v13 = v0[28];
  if (v9)
  {
    v45 = v7;
    v14 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v47[0] = swift_slowAlloc();
    *v14 = 136315906;
    *(v14 + 4) = sub_1000136BC(0xD00000000000002ALL, 0x8000000101360DD0, v47);
    *(v14 + 12) = 2082;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v8;
    v17 = v16;
    v10(v11, v13);
    v18 = sub_1000136BC(v15, v17, v47);

    *(v14 + 14) = v18;
    *(v14 + 22) = 2082;
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    v10(v12, v13);
    v22 = sub_1000136BC(v19, v21, v47);

    *(v14 + 24) = v22;
    *(v14 + 32) = 2114;
    swift_errorRetain();
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 34) = v23;
    *v44 = v23;
    _os_log_impl(&_mh_execute_header, v45, v43, "%s failed on device %{public}s commandId: %{public}s. Error: %{public}@", v14, 0x2Au);
    sub_10000B3A8(v44, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {

    v10(v12, v13);
    v10(v11, v13);
  }

  v46 = v2;
  swift_errorRetain();
  v39 = v0[40];
  v42 = v0[44];
  v24 = v0[33];
  v25 = v0[30];
  v27 = v0[28];
  v26 = v0[29];
  v28 = v0[23];
  v40 = v0[22];
  v41 = v0[21];
  v38 = v0[19];
  v29 = v0[17];
  v36 = v0[20];
  v37 = v0[18];
  (v0[41])(v24);
  v30 = (*(v26 + 80) + 24) & ~*(v26 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  (*(v26 + 32))(v31 + v30, v24, v27);
  *(v31 + ((v25 + v30 + 7) & 0xFFFFFFFFFFFFFFF8)) = v46;
  v0[6] = sub_1008328E0;
  v0[7] = v31;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100006684;
  v0[5] = &unk_101635450;
  v32 = _Block_copy(v0 + 2);
  v33 = v29;
  static DispatchQoS.unspecified.getter();
  v0[14] = _swiftEmptyArrayStorage;
  sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v32);

  (*(v38 + 8))(v36, v37);
  (*(v40 + 8))(v28, v41);
  v42(v39, v27);

  v34 = v0[1];

  return v34();
}

void sub_10082DB80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v144 = a2;
  v5 = sub_1000BC4D4(&qword_1016998E0, &qword_101392030);
  __chkstk_darwin(v5 - 8);
  v149 = &v136 - v6;
  v7 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v136 - v8;
  v150 = type metadata accessor for UUID();
  v10 = *(v150 - 8);
  v11 = __chkstk_darwin(v150);
  v151 = &v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v146 = &v136 - v14;
  v15 = __chkstk_darwin(v13);
  v142 = &v136 - v16;
  v17 = __chkstk_darwin(v15);
  v143 = &v136 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v136 - v20;
  v22 = __chkstk_darwin(v19);
  v145 = &v136 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v136 - v25;
  __chkstk_darwin(v24);
  v147 = &v136 - v27;
  v28 = type metadata accessor for DispatchPredicate();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = (&v136 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = *(v3 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue);
  *v31 = v32;
  (*(v29 + 104))(v31, enum case for DispatchPredicate.onQueue(_:), v28);
  v33 = v32;
  LOBYTE(v32) = _dispatchPreconditionTest(_:)();
  v35 = *(v29 + 8);
  v34 = v29 + 8;
  v35(v31, v28);
  if ((v32 & 1) == 0)
  {
    __break(1u);
    goto LABEL_47;
  }

  v148 = v3;
  v152 = a1;
  sub_100025020(a1, v156);
  v36 = v157;
  if (!v157)
  {
    sub_10000B3A8(v156, &qword_101696920, &unk_10138B200);
    v31 = v10;
    v34 = v150;
    (*(v10 + 56))(v9, 1, 1, v150);
LABEL_9:
    sub_10000B3A8(v9, &qword_1016980D0, &unk_10138F3B0);
    if (qword_101694960 == -1)
    {
LABEL_10:
      v61 = type metadata accessor for Logger();
      sub_1000076D4(v61, qword_10177B380);
      v42 = v31[2];
      v43 = v152;
      v42(v21, v152, v34);
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = v31;
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v156[0] = v66;
        *v65 = 141558275;
        *(v65 + 4) = 1752392040;
        *(v65 + 12) = 2081;
        sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v67 = dispatch thunk of CustomStringConvertible.description.getter();
        v68 = v42;
        v70 = v69;
        v71 = v21;
        v60 = v64[1];
        v60(v71, v34);
        v72 = sub_1000136BC(v67, v70, v156);
        v42 = v68;

        *(v65 + 14) = v72;
        _os_log_impl(&_mh_execute_header, v62, v63, "didStopPlayingSoundOnDevice %{private,mask.hash}s", v65, 0x16u);
        sub_100007BAC(v66);

        v43 = v152;
      }

      else
      {

        v73 = v21;
        v60 = v31[1];
        v60(v73, v34);
      }

      v39 = v151;
      goto LABEL_14;
    }

LABEL_47:
    swift_once();
    goto LABEL_10;
  }

  v37 = v158;
  sub_1000035D0(v156, v157);
  (*(v37 + 200))(v36, v37);
  sub_100007BAC(v156);
  v31 = v10;
  v34 = v150;
  if ((*(v10 + 48))(v9, 1, v150) == 1)
  {
    goto LABEL_9;
  }

  v38 = v147;
  (*(v10 + 32))(v147, v9, v34);
  v39 = v151;
  if (qword_101694960 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  sub_1000076D4(v40, qword_10177B380);
  v41 = v10;
  v42 = *(v10 + 16);
  v43 = v152;
  v42(v26, v152, v34);
  v44 = v145;
  v42(v145, v38, v34);
  v45 = Logger.logObject.getter();
  v140 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v45, v140))
  {
    v46 = swift_slowAlloc();
    v47 = v41;
    v138 = v41;
    v48 = v46;
    v139 = swift_slowAlloc();
    v156[0] = v139;
    *v48 = 141558531;
    *(v48 + 4) = 1752392040;
    *(v48 + 12) = 2081;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v141 = v42;
    v137 = v45;
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = v50;
    v52 = v44;
    v53 = *(v47 + 8);
    v53(v26, v34);
    v54 = sub_1000136BC(v49, v51, v156);

    *(v48 + 14) = v54;
    *(v48 + 22) = 2082;
    v42 = v141;
    v55 = dispatch thunk of CustomStringConvertible.description.getter();
    v57 = v56;
    v53(v52, v34);
    v58 = sub_1000136BC(v55, v57, v156);

    *(v48 + 24) = v58;
    v59 = v137;
    _os_log_impl(&_mh_execute_header, v137, v140, "didStopPlayingSoundOnDevice %{private,mask.hash}s. groupId %{public}s", v48, 0x20u);
    swift_arrayDestroy();

    v43 = v152;

    v53(v147, v34);
    v60 = v53;
  }

  else
  {
    v118 = v38;

    v60 = *(v41 + 8);
    v60(v44, v34);
    v60(v26, v34);
    v60(v118, v34);
  }

LABEL_14:
  v74 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_coordinators;
  v75 = v148;
  swift_beginAccess();
  v76 = *(v75 + v74);
  if (!*(v76 + 16))
  {
LABEL_24:
    v104 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator(0);
    v105 = v149;
    (*(*(v104 - 8) + 56))(v149, 1, 1, v104);
    sub_10000B3A8(v105, &qword_1016998E0, &qword_101392030);
    if (qword_101694960 != -1)
    {
      swift_once();
    }

    v106 = type metadata accessor for Logger();
    sub_1000076D4(v106, qword_10177B380);
    v42(v39, v43, v34);
    v107 = Logger.logObject.getter();
    v108 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v155[0] = v110;
      *v109 = 141558275;
      *(v109 + 4) = 1752392040;
      *(v109 + 12) = 2081;
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v111 = dispatch thunk of CustomStringConvertible.description.getter();
      v112 = v39;
      v114 = v113;
      v60(v112, v34);
      v115 = sub_1000136BC(v111, v114, v155);

      *(v109 + 14) = v115;
      v116 = "didStopPlayingSoundOnDevice called with unknown device %{private,mask.hash}s";
LABEL_35:
      _os_log_impl(&_mh_execute_header, v107, v108, v116, v109, 0x16u);
      sub_100007BAC(v110);

      return;
    }

    v117 = v39;
LABEL_37:
    v60(v117, v34);
    return;
  }

  v77 = sub_1000210EC(v43);
  if ((v78 & 1) == 0)
  {

    goto LABEL_24;
  }

  v79 = v77;
  v141 = v42;
  v80 = *(v76 + 56);
  v81 = v75;
  v82 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator(0);
  v83 = *(v82 - 8);
  v84 = v80 + *(v83 + 72) * v79;
  v85 = v141;
  v86 = v149;
  sub_100833680(v84, v149, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);

  (*(v83 + 56))(v86, 0, 1, v82);
  sub_10000B3A8(v86, &qword_1016998E0, &qword_101392030);
  v87 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_stopSoundSubjects;
  swift_beginAccess();
  v88 = v146;
  if (!*(*(v81 + v87) + 16))
  {
LABEL_31:
    if (qword_101694960 != -1)
    {
      swift_once();
    }

    v119 = type metadata accessor for Logger();
    sub_1000076D4(v119, qword_10177B380);
    v85(v88, v43, v34);
    v107 = Logger.logObject.getter();
    v108 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v107, v108))
    {
      v120 = v60;
      v121 = v88;
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v154 = v110;
      *v109 = 141558275;
      *(v109 + 4) = 1752392040;
      *(v109 + 12) = 2081;
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v122 = dispatch thunk of CustomStringConvertible.description.getter();
      v124 = v123;
      v120(v121, v34);
      v125 = sub_1000136BC(v122, v124, &v154);

      *(v109 + 14) = v125;
      v116 = "Missing stopSoundSubject for device %{private,mask.hash}s!";
      goto LABEL_35;
    }

    v117 = v88;
    goto LABEL_37;
  }

  sub_1000210EC(v43);
  if ((v89 & 1) == 0)
  {

    goto LABEL_31;
  }

  v90 = v144;
  if (v144)
  {
    swift_errorRetain();
    if (qword_101694960 != -1)
    {
      swift_once();
    }

    v91 = type metadata accessor for Logger();
    sub_1000076D4(v91, qword_10177B380);
    v92 = v143;
    v141(v143, v43, v34);
    swift_errorRetain();
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v154 = swift_slowAlloc();
      *v95 = 141558531;
      *(v95 + 4) = 1752392040;
      *(v95 + 12) = 2081;
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v96 = dispatch thunk of CustomStringConvertible.description.getter();
      v97 = v60;
      v99 = v98;
      v97(v92, v34);
      v100 = sub_1000136BC(v96, v99, &v154);

      *(v95 + 14) = v100;
      *(v95 + 22) = 2082;
      v153 = v144;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v101 = String.init<A>(describing:)();
      v103 = sub_1000136BC(v101, v102, &v154);

      *(v95 + 24) = v103;
      _os_log_impl(&_mh_execute_header, v93, v94, "didStopPlayingSoundOnDevice %{private,mask.hash}s failed due to %{public}s", v95, 0x20u);
      swift_arrayDestroy();
      v90 = v144;
    }

    else
    {

      v60(v92, v34);
    }

    v154 = v90;
    swift_errorRetain();
    PassthroughSubject.send(completion:)();
  }

  else
  {
    if (qword_101694960 != -1)
    {
      swift_once();
    }

    v126 = type metadata accessor for Logger();
    sub_1000076D4(v126, qword_10177B380);
    v127 = v142;
    v141(v142, v43, v34);
    v128 = Logger.logObject.getter();
    v129 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v128, v129))
    {
      v130 = swift_slowAlloc();
      v151 = swift_slowAlloc();
      v154 = v151;
      *v130 = 141558275;
      *(v130 + 4) = 1752392040;
      *(v130 + 12) = 2081;
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v131 = dispatch thunk of CustomStringConvertible.description.getter();
      v132 = v60;
      v134 = v133;
      v132(v127, v34);
      v135 = sub_1000136BC(v131, v134, &v154);

      *(v130 + 14) = v135;
      _os_log_impl(&_mh_execute_header, v128, v129, "didStopPlayingSoundOnDevice %{private,mask.hash}s succeeded", v130, 0x16u);
      sub_100007BAC(v151);
    }

    else
    {

      v60(v127, v34);
    }

    PassthroughSubject.send(_:)();
    v154 = 4;
    PassthroughSubject.send(completion:)();
  }
}

void sub_10082EE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, const char *a7)
{
  v65 = a5;
  v66 = a3;
  v67 = a2;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v59 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v59 - v20;
  __chkstk_darwin(v19);
  v23 = &v59 - v22;
  if (a1)
  {
    v63 = a4;
    v64 = a6;
    swift_errorRetain();
    if (qword_101694960 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000076D4(v24, qword_10177B380);
    v25 = *(v12 + 16);
    v25(v23, v67, v11);
    v25(v21, v66, v11);
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v69 = v66;
      *v28 = 141558787;
      *(v28 + 4) = 1752392040;
      *(v28 + 12) = 2081;
      v61 = sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v62 = v27;
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      v60 = *(v12 + 8);
      v60(v23, v11);
      v32 = sub_1000136BC(v29, v31, &v69);

      *(v28 + 14) = v32;
      *(v28 + 22) = 2082;
      v68 = a1;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v33 = String.init<A>(describing:)();
      v35 = sub_1000136BC(v33, v34, &v69);

      *(v28 + 24) = v35;
      *(v28 + 32) = 2082;
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      v60(v21, v11);
      v39 = sub_1000136BC(v36, v38, &v69);

      *(v28 + 34) = v39;
      _os_log_impl(&_mh_execute_header, v26, v62, v65, v28, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      v54 = *(v12 + 8);
      v54(v21, v11);
      v54(v23, v11);
    }

    v55 = v63;
    v56 = type metadata accessor for Transaction();
    __chkstk_darwin(v56);
    v57 = v67;
    *(&v59 - 4) = v55;
    *(&v59 - 3) = v57;
    *(&v59 - 2) = a1;
    static Transaction.named<A>(_:with:)();
  }

  else
  {
    v65 = a7;
    if (qword_101694960 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_1000076D4(v40, qword_10177B380);
    v41 = *(v12 + 16);
    v41(v18, v67, v11);
    v41(v15, v66, v11);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v69 = v67;
      *v44 = 141558531;
      *(v44 + 4) = 1752392040;
      *(v44 + 12) = 2081;
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      LODWORD(v66) = v43;
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;
      v48 = *(v12 + 8);
      v48(v18, v11);
      v49 = sub_1000136BC(v45, v47, &v69);

      *(v44 + 14) = v49;
      *(v44 + 22) = 2082;
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v51;
      v48(v15, v11);
      v53 = sub_1000136BC(v50, v52, &v69);

      *(v44 + 24) = v53;
      _os_log_impl(&_mh_execute_header, v42, v66, v65, v44, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v58 = *(v12 + 8);
      v58(v15, v11);
      v58(v18, v11);
    }
  }
}

uint64_t sub_10082F528(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v25 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v25 - 8);
  __chkstk_darwin(v25);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *&a2[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue];
  (*(v11 + 16))(v13, a3, v10);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = (v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  (*(v11 + 32))(v16 + v14, v13, v10);
  *(v16 + v15) = v22;
  aBlock[4] = sub_1008328E0;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016354C8;
  v17 = _Block_copy(aBlock);
  v18 = a2;
  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v19 = v25;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v27 + 8))(v7, v19);
  (*(v24 + 8))(v9, v26);
}

uint64_t sub_10082F8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_10082F98C;

  return daemon.getter();
}

uint64_t sub_10082F98C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 32) = a1;

  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  v4 = type metadata accessor for Daemon();
  updated = type metadata accessor for SimpleBeaconUpdateService(0);
  v6 = sub_1008345FC(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1008345FC(&unk_1016B10F0, type metadata accessor for SimpleBeaconUpdateService, &unk_1013CAC90);
  *v3 = v9;
  v3[1] = sub_10082FB68;

  return ActorServiceDaemon.getService<A>()(v4, updated, v6, v7);
}

uint64_t sub_10082FB68(uint64_t a1)
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

    *(v4 + 48) = a1;

    return _swift_task_switch(sub_10082FCE8, 0, 0);
  }
}

uint64_t sub_10082FCE8()
{
  v1 = v0[2];
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_101385D80;
  (*(v3 + 16))(v5 + v4, v1, v2);
  v6 = sub_10000954C(v5);
  v0[7] = v6;
  swift_setDeallocating();
  (*(v3 + 8))(v5 + v4, v2);
  swift_deallocClassInstance();
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_10082FE84;

  return sub_10094DB94(v6);
}

uint64_t sub_10082FE84()
{

  return _swift_task_switch(sub_1008347FC, 0, 0);
}

void sub_10082FFD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v125 = a2;
  v5 = sub_1000BC4D4(&qword_1016998E0, &qword_101392030);
  __chkstk_darwin(v5 - 8);
  v129 = &v117 - v6;
  v7 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v117 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v130 = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v122 = &v117 - v15;
  v16 = __chkstk_darwin(v14);
  v123 = &v117 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v117 - v19;
  v21 = __chkstk_darwin(v18);
  v126 = &v117 - v22;
  v23 = __chkstk_darwin(v21);
  v124 = &v117 - v24;
  __chkstk_darwin(v23);
  v127 = (&v117 - v25);
  v26 = type metadata accessor for DispatchPredicate();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = (&v117 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = *(v3 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue);
  *v29 = v30;
  (*(v27 + 104))(v29, enum case for DispatchPredicate.onQueue(_:), v26);
  v31 = v30;
  LOBYTE(v30) = _dispatchPreconditionTest(_:)();
  (*(v27 + 8))(v29, v26);
  if ((v30 & 1) == 0)
  {
    __break(1u);
LABEL_37:
    swift_once();
LABEL_10:
    v57 = type metadata accessor for Logger();
    sub_1000076D4(v57, qword_10177B380);
    v38 = *(a1 + 16);
    v58 = v10;
    v38(v20, v29, v10);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v121 = v38;
      v62 = v61;
      v63 = swift_slowAlloc();
      v133[0] = v63;
      *v62 = 141558275;
      *(v62 + 4) = 1752392040;
      *(v62 + 12) = 2081;
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v64 = dispatch thunk of CustomStringConvertible.description.getter();
      v66 = v65;
      v127 = *(a1 + 8);
      v127(v20, v58);
      v67 = sub_1000136BC(v64, v66, v133);

      *(v62 + 14) = v67;
      _os_log_impl(&_mh_execute_header, v59, v60, "didCompletePlayingSoundOnDevice %{private,mask.hash}s", v62, 0x16u);
      sub_100007BAC(v63);

      v38 = v121;
    }

    else
    {

      v127 = *(a1 + 8);
      v127(v20, v58);
    }

    goto LABEL_15;
  }

  v128 = v3;
  v32 = a1;
  sub_100025020(a1, v133);
  v33 = v134;
  if (!v134)
  {
    sub_10000B3A8(v133, &qword_101696920, &unk_10138B200);
    a1 = v11;
    (*(v11 + 56))(v9, 1, 1, v10);
LABEL_9:
    sub_10000B3A8(v9, &qword_1016980D0, &unk_10138F3B0);
    v29 = v32;
    if (qword_101694960 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_37;
  }

  v34 = v135;
  sub_1000035D0(v133, v134);
  (*(v34 + 200))(v33, v34);
  sub_100007BAC(v133);
  a1 = v11;
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    goto LABEL_9;
  }

  v35 = *(v11 + 32);
  v36 = v127;
  v35(v127, v9, v10);
  v29 = v32;
  if (qword_101694960 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  sub_1000076D4(v37, qword_10177B380);
  v38 = *(a1 + 16);
  v39 = v124;
  v38(v124, v32, v10);
  v40 = v126;
  v38(v126, v36, v10);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = v39;
    v44 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    v133[0] = v120;
    *v44 = 141558531;
    *(v44 + 4) = 1752392040;
    *(v44 + 12) = 2081;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v119 = v42;
    v118 = v41;
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = v46;
    v121 = v38;
    v48 = *(a1 + 8);
    v48(v43, v10);
    v49 = sub_1000136BC(v45, v47, v133);
    v29 = v32;

    *(v44 + 14) = v49;
    *(v44 + 22) = 2082;
    v50 = v126;
    v51 = dispatch thunk of CustomStringConvertible.description.getter();
    v53 = v52;
    v48(v50, v10);
    v54 = sub_1000136BC(v51, v53, v133);

    *(v44 + 24) = v54;
    v55 = v118;
    _os_log_impl(&_mh_execute_header, v118, v119, "didCompletePlayingSoundOnDevice %{private,mask.hash}s. groupId %{public}s", v44, 0x20u);
    swift_arrayDestroy();

    v56 = v127;
    v127 = v48;
    v48(v56, v10);
    v38 = v121;
  }

  else
  {

    v68 = *(a1 + 8);
    v68(v40, v10);
    v68(v39, v10);
    v127 = v68;
    v68(v36, v10);
  }

  v58 = v10;
LABEL_15:
  v69 = v130;
  v70 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_coordinators;
  v71 = v128;
  swift_beginAccess();
  v72 = *(v71 + v70);
  if (*(v72 + 16))
  {

    v73 = sub_1000210EC(v29);
    if (v74)
    {
      v75 = v73;
      v76 = v38;
      v77 = *(v72 + 56);
      v78 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator(0);
      v79 = *(v78 - 8);
      v80 = v77 + *(v79 + 72) * v75;
      v81 = v129;
      sub_100833680(v80, v129, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);

      (*(v79 + 56))(v81, 0, 1, v78);
      sub_10000B3A8(v81, &qword_1016998E0, &qword_101392030);
      sub_100815748(v29, 0, 0);
      v82 = v125;
      if (v125)
      {
        swift_errorRetain();
        if (qword_101694960 != -1)
        {
          swift_once();
        }

        v83 = type metadata accessor for Logger();
        sub_1000076D4(v83, qword_10177B380);
        v84 = v123;
        v76(v123, v29, v58);
        swift_errorRetain();
        v85 = Logger.logObject.getter();
        v86 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v85, v86))
        {
          v87 = v84;
          v88 = swift_slowAlloc();
          v132 = swift_slowAlloc();
          *v88 = 141558531;
          *(v88 + 4) = 1752392040;
          *(v88 + 12) = 2081;
          sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v89 = dispatch thunk of CustomStringConvertible.description.getter();
          v90 = v82;
          v92 = v91;
          v127(v87, v58);
          v93 = sub_1000136BC(v89, v92, &v132);

          *(v88 + 14) = v93;
          *(v88 + 22) = 2082;
          v131 = v90;
          swift_errorRetain();
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          v94 = String.init<A>(describing:)();
          v96 = sub_1000136BC(v94, v95, &v132);

          *(v88 + 24) = v96;
          _os_log_impl(&_mh_execute_header, v85, v86, "didCompletePlayingSoundOnDevice %{private,mask.hash}s failed due to %{public}s", v88, 0x20u);
          swift_arrayDestroy();

          return;
        }

        v109 = v84;
        goto LABEL_35;
      }

      if (qword_101694960 != -1)
      {
        swift_once();
      }

      v110 = type metadata accessor for Logger();
      sub_1000076D4(v110, qword_10177B380);
      v111 = v122;
      v76(v122, v29, v58);
      v100 = Logger.logObject.getter();
      v101 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v132 = v103;
        *v102 = 141558275;
        *(v102 + 4) = 1752392040;
        *(v102 + 12) = 2081;
        sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v112 = dispatch thunk of CustomStringConvertible.description.getter();
        v113 = v111;
        v115 = v114;
        v127(v113, v58);
        v116 = sub_1000136BC(v112, v115, &v132);

        *(v102 + 14) = v116;
        v108 = "didCompletePlayingSoundOnDevice %{private,mask.hash}s succeeded";
        goto LABEL_27;
      }

      v109 = v111;
      goto LABEL_35;
    }
  }

  v97 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator(0);
  v98 = v129;
  (*(*(v97 - 8) + 56))(v129, 1, 1, v97);
  sub_10000B3A8(v98, &qword_1016998E0, &qword_101392030);
  if (qword_101694960 != -1)
  {
    swift_once();
  }

  v99 = type metadata accessor for Logger();
  sub_1000076D4(v99, qword_10177B380);
  v38(v69, v29, v58);
  v100 = Logger.logObject.getter();
  v101 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v132 = v103;
    *v102 = 141558275;
    *(v102 + 4) = 1752392040;
    *(v102 + 12) = 2081;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v104 = dispatch thunk of CustomStringConvertible.description.getter();
    v106 = v105;
    v127(v69, v58);
    v107 = sub_1000136BC(v104, v106, &v132);

    *(v102 + 14) = v107;
    v108 = "didCompletePlayingSoundOnDevice called with unknown device %{private,mask.hash}s";
LABEL_27:
    _os_log_impl(&_mh_execute_header, v100, v101, v108, v102, 0x16u);
    sub_100007BAC(v103);

    return;
  }

  v109 = v69;
LABEL_35:
  v127(v109, v58);
}

uint64_t SPBeaconTaskState.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 4)
    {
      return 0x6465756575712ELL;
    }

    if (a1 != 3)
    {
      if (a1 == 2)
      {
        return 0x656C64692ELL;
      }

      return 0xD000000000000010;
    }

    return 0x726F7272652ELL;
  }

  else
  {
    if (a1 == -1)
    {
      return 0x6E776F6E6B6E752ELL;
    }

    if (a1)
    {
      if (a1 == 1)
      {
        return 0x676E69646E65702ELL;
      }

      return 0xD000000000000010;
    }

    return 0x676E696E6E75722ELL;
  }
}

uint64_t type metadata accessor for SoundPlaybackManager.PlaybackCoordinator(uint64_t a1)
{
  result = qword_1016AA880;
  if (!qword_1016AA880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100831120(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for DispatchWorkItem();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v3 <= 0x3F)
      {
        sub_1008311EC(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1008311EC(uint64_t a1)
{
  if (!qword_1016AA890)
  {
    sub_1000BC580(&qword_101696960, &unk_10138B220);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1016AA890);
    }
  }
}

uint64_t sub_100831260(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100831278(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1008312CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_100831338()
{
  result = qword_1016AA8D8;
  if (!qword_1016AA8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AA8D8);
  }

  return result;
}

uint64_t sub_10083138C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a3;
  v6 = sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  __chkstk_darwin(v6 - 8);
  v40 = &v40 - v7;
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v41 = &v40 - v12;
  v13 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v40 - v15;
  v17 = *(a1 - 8);
  __chkstk_darwin(v14);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SharedBeaconRecord(0);
  v21 = *(v20 - 1);
  __chkstk_darwin(v20);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v17 + 16);
  v42 = v3;
  v24(v19, v3, a1);
  v25 = swift_dynamicCast();
  v26 = *(v21 + 56);
  if ((v25 & 1) == 0)
  {
    v26(v16, 1, 1, v20);
    sub_10000B3A8(v16, &unk_101698C30, &unk_101392630);
    goto LABEL_6;
  }

  v26(v16, 0, 1, v20);
  sub_1008336E8(v16, v23, type metadata accessor for SharedBeaconRecord);
  if (*&v23[v20[11]] != -1 || *&v23[v20[12]] != -1)
  {
    sub_1008333E4(v23, type metadata accessor for SharedBeaconRecord);
LABEL_6:
    v27 = a2;
    goto LABEL_7;
  }

  v32 = v23[v20[16]];
  v33 = v32 == 4 || v32 == 1;
  v27 = a2;
  if (v33)
  {
    v34 = v40;
    sub_1000D2A70(&v23[v20[20]], v40, &unk_1016AF890, &qword_1013926D0);
    sub_1008333E4(v23, type metadata accessor for SharedBeaconRecord);
    v35 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
    if ((*(*(v35 - 8) + 48))(v34, 1, v35) == 1)
    {
      sub_10000B3A8(v34, &unk_1016AF890, &qword_1013926D0);
      v36 = type metadata accessor for UUID();
      v37 = v41;
      (*(*(v36 - 8) + 56))(v41, 1, 1, v36);
    }

    else
    {
      v37 = v41;
      sub_1000D2A70(v34 + *(v35 + 20), v41, &qword_1016980D0, &unk_10138F3B0);
      sub_1008333E4(v34, type metadata accessor for SharedBeaconRecord.PropertyListContent);
      v38 = type metadata accessor for UUID();
      v39 = *(v38 - 8);
      if ((*(v39 + 48))(v37, 1, v38) != 1)
      {
        return (*(v39 + 32))(v43, v37, v38);
      }
    }

    sub_10000B3A8(v37, &qword_1016980D0, &unk_10138F3B0);
  }

  else
  {
    sub_1008333E4(v23, type metadata accessor for SharedBeaconRecord);
  }

LABEL_7:
  (*(v27 + 200))(a1, v27);
  v28 = type metadata accessor for UUID();
  v29 = *(v28 - 8);
  v30 = *(v29 + 48);
  if (v30(v11, 1, v28) != 1)
  {
    return (*(v29 + 32))(v43, v11, v28);
  }

  (*(*(*(v27 + 8) + 8) + 32))(a1);
  result = (v30)(v11, 1, v28);
  if (result != 1)
  {
    return sub_10000B3A8(v11, &qword_1016980D0, &unk_10138F3B0);
  }

  return result;
}

void *sub_1008319C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *))
{
  v38 = a2;
  v39 = a3;
  v37 = type metadata accessor for UUID();
  v5 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v7)
  {
    v29[1] = v3;
    v42 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v9 = a1 + 56;
    result = _HashTable.startBucket.getter();
    v10 = result;
    v11 = 0;
    v12 = *(a1 + 36);
    v34 = v5 + 16;
    v35 = v5;
    v32 = v7;
    v33 = v5 + 8;
    v30 = a1 + 64;
    v31 = v12;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v14 = v10 >> 6;
      if ((*(v9 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_21;
      }

      if (v12 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v40 = v11;
      v12 = v9;
      v15 = v35;
      v16 = *(a1 + 48) + *(v35 + 72) * v10;
      v17 = a1;
      v18 = v36;
      v19 = v37;
      (*(v35 + 16))(v36, v16, v37);
      v41 = v39(v18);
      v20 = v18;
      a1 = v17;
      (*(v15 + 8))(v20, v19);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v13 = 1 << *(v17 + 32);
      if (v10 >= v13)
      {
        goto LABEL_23;
      }

      v21 = *(v12 + 8 * v14);
      v22 = v32;
      if ((v21 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v9 = v12;
      LODWORD(v12) = v31;
      if (v31 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v21 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v13 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = v14 << 6;
        v25 = v14 + 1;
        v26 = (v30 + 8 * v14);
        while (v25 < (v13 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_10040BA00(v10, v31, 0);
            v13 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_10040BA00(v10, v31, 0);
      }

LABEL_4:
      v11 = v40 + 1;
      v10 = v13;
      if (v40 + 1 == v22)
      {
        return v42;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

BOOL sub_100831CC4(uint64_t a1)
{
  if (qword_101694920 != -1)
  {
    v12 = a1;
    swift_once();
    a1 = v12;
  }

  v1 = sub_100035730(a1, sub_10082FF9C, 0);
  if (qword_101694960 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177B380);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    type metadata accessor for BeaconObservation(0);
    v7 = Array.description.getter();
    v9 = sub_1000136BC(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Found queueObservations %s", v5, 0xCu);
    sub_100007BAC(v6);
  }

  v10 = v1[2];

  return v10 == 0;
}

uint64_t sub_100831EA0(uint64_t a1)
{
  v2 = type metadata accessor for BeaconObservation(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v6 = qword_10177B2E8;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 16))(v5, a1, v7);
  static Date.trustedNow.getter(&v5[*(v2 + 20)]);
  v5[*(v2 + 24)] = 22;
  sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_101385D80;
  sub_100833680(v5, v9 + v8, type metadata accessor for BeaconObservation);
  v10 = type metadata accessor for Transaction();
  __chkstk_darwin(v10);
  *&v12[-32] = v6;
  *&v12[-24] = v9;
  *&v12[-16] = 0;
  *&v12[-8] = 0;
  static Transaction.named<A>(_:with:)();

  return sub_1008333E4(v5, type metadata accessor for BeaconObservation);
}

unint64_t sub_1008320D4(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

unint64_t sub_1008320E4()
{
  result = qword_1016AA8E0;
  if (!qword_1016AA8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AA8E0);
  }

  return result;
}

uint64_t sub_100832154()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v4);
  v8 = *(v0 + v5);
  v9 = *(v0 + v6);
  v10 = *(v0 + v6 + 8);

  return sub_100825CC0(v0 + v3, v8, v9, v10, v0 + ((v2 + 16 + v6) & ~v2), v7);
}

uint64_t sub_100832208()
{
  v1 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = *(v0 + v3);
  v8 = *(v0 + v4);
  v9 = (v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_10081A3C8(v0 + v2, v7, (v0 + v6), v10, v11, v8);
}

uint64_t sub_100832348(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_10082F8F8(a1, v6, v7, v1 + v5);
}

unint64_t sub_100832458()
{
  result = qword_1016AA978;
  if (!qword_1016AA978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AA978);
  }

  return result;
}

uint64_t sub_1008324AC(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v5);
  v11 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10081E94C(a1, v8, v9, v1 + v4, v10, v1 + v7, v11);
}

void sub_1008325C0(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v5);
  v10 = *(v1 + v8);
  v11 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_10081ED54(a1, (v1 + v4), v9, v1 + v7, v10, v11);
}

unint64_t sub_1008326DC(unint64_t result)
{
  if (result >= 4)
  {
    return swift_errorRetain();
  }

  return result;
}

unint64_t sub_1008326EC(unint64_t result)
{
  if (result >= 4)
  {
  }

  return result;
}

uint64_t sub_100832748(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for WildModeAssociationRecord(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100014744;

  return sub_10082BC70(a1, v10, v11, v1 + v6, v1 + v9, v12);
}

void sub_1008328E0()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  sub_10082DB80(v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1008329B8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_100832A90()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100832B54(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_100827FA0(a1, v6, v7, v1 + v5);
}

void sub_100832C68(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_100828C80(a1, v4, v5, v6);
}

uint64_t sub_100832D08(uint64_t a1)
{
  v4 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_100810D24(a1, v6, v7, v1 + v5);
}

uint64_t sub_100832E24(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v2 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(v2 + v4, v5);
}

uint64_t sub_100832EF8()
{
  v1 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v3);
  v9 = *(v0 + v4);
  v10 = *(v0 + v7);
  v11 = *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100811D24((v0 + v2), v8, v0 + v6, v10, v11, v9);
}

unint64_t sub_10083303C(unint64_t result, char a2)
{
  if (a2)
  {
    return sub_1008326EC(result);
  }

  return result;
}

unint64_t sub_100833048(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v5 + v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v4 + v7 + 8) & ~v4;
  v9 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v10 = (v6 + *(v9 + 80) + v8) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_100816244(*(v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), a1, *(v1 + 16), *(v1 + 24), v1 + v5, *(v1 + ((v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + v7), (v1 + v8), (v1 + v10), *(v1 + v11));
}

void sub_10083319C(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v9 = (*(v8 + 80) + v7 + 8) & ~*(v8 + 80);
  sub_100817364(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), (v1 + v4), *(v1 + v5), *(v1 + v7), v1 + v9, *(v1 + v6), *(v1 + v9 + *(v8 + 64)));
}

uint64_t sub_1008332C8()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_100824B58(*(v0 + 16), v0 + v2, v0 + v5, *(v0 + v6), "SoundPlaybackManager.queuePlaySound", 35, sub_1008346D4, *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1008333E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100833444(unint64_t result, char a2)
{
  if (a2)
  {
    return sub_1008326DC(result);
  }

  return result;
}

uint64_t sub_100833470(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = type metadata accessor for OwnedBeaconRecord(0);
  return sub_100037E20(v2 + *(v4 + 20), v3) & 1;
}

uint64_t sub_1008334C0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = (v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);

  return _swift_deallocObject(v0, v8 + 8);
}

void sub_1008335B8(uint64_t a1, const char *a2, uint64_t a3, const char *a4, ...)
{
  v9 = *(type metadata accessor for UUID() - 8);
  v10 = *(v9 + 80);
  sub_10082EE44(a1, v4 + ((v10 + 16) & ~v10), v4 + ((*(v9 + 64) + v10 + ((v10 + 16) & ~v10)) & ~v10), *(v4 + ((*(v9 + 64) + ((*(v9 + 64) + v10 + ((v10 + 16) & ~v10)) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8)), a2, a3, a4);
}

uint64_t sub_100833680(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1008336E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_100833770()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  Transaction.capture()();
  sub_10082A3B0((v0 + v2), v3);
}

uint64_t sub_1008338B4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (((((v6 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v4 + 16 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v4;
  v3(v0 + v5, v1);

  v3(v0 + v8, v1);

  return _swift_deallocObject(v0, v8 + v6);
}

uint64_t sub_1008339AC()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v4);
  v9 = *(v0 + v5);
  v10 = *(v0 + v6);
  v11 = *(v0 + v7);
  v12 = *(v0 + v7 + 8);

  return sub_10081FB38(v0 + v3, v8, v10, v11, v12, v0 + ((v2 + 16 + v7) & ~v2), v9);
}

uint64_t sub_100833A6C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100833B30()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_100822778(v2, v3);
}

unint64_t sub_100833BF8(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100822150(a1, v7, v6, v8, (v1 + v4), v9);
}

uint64_t sub_100833CB0()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64) + 7;
  v5 = (v4 + v3) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v2 + v5 + 8) & ~v2;
  v7 = (v4 + v6) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  v9 = *(v0 + v5);
  v10 = *(v0 + v7);
  v11 = *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100822D6C(v8, (v0 + v3), v0 + v6, v10, v11, v9);
}

uint64_t sub_100833D68()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = (v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);

  return _swift_deallocObject(v0, v8 + 8);
}

void sub_100833E38(uint64_t (*a1)(void), const char *a2, ...)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = *(v5 + 80);
  sub_1008210C8(v2 + ((v6 + 16) & ~v6), v2 + ((*(v5 + 64) + v6 + ((v6 + 16) & ~v6)) & ~v6), *(v2 + ((*(v5 + 64) + ((*(v5 + 64) + v6 + ((v6 + 16) & ~v6)) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8)), a1, a2);
}

void sub_100833EE8(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = (*(v3 + 64) + 7 + v5) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v6);
  v11 = *(v1 + v7);
  v12 = *(v1 + v7 + 8);

  sub_100824C00(a1, v8, v10, v9, (v1 + v5), v11, v12, (v1 + ((v4 + v7 + 9) & ~v4)));
}

uint64_t sub_100833FB8()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  return sub_100824B58(*(v0 + 16), v0 + v3, v0 + ((v4 + v2 + v3) & ~v2), *(v0 + ((v4 + ((v4 + v2 + v3) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8)), "SoundPlaybackManager.queuePlaySoundSingle", 41, sub_1008346EC, *(v0 + ((((v4 + ((v4 + v2 + v3) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1008340A4()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = *(v0 + 16);
  v7 = (v0 + ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_100805A60(v6, v0 + v4, v0 + v5, v8, v9);
}

uint64_t sub_100834148()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v3 + v5 + 16) & ~v3;
  v7 = *(v0 + 16);
  v8 = *(v0 + v5);
  v9 = *(v0 + v5 + 8);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_100014744;

  return sub_100662A80(v7, v0 + v4, v8, v9, v0 + v6);
}

uint64_t sub_100834270()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  return _swift_deallocObject(v0, v7 + 16);
}

uint64_t sub_100834374()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = (v0 + ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  sub_1000035D0((*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_findMyCommandManager), *(*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_findMyCommandManager + 24));
  return sub_10067A8F4(v0 + v4, v0 + v5, v7, v8);
}

uint64_t sub_100834448()
{
  v1 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v0 + 16);
  v7 = (v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_1008055B0(v6, v0 + v2, v0 + v5, v8, v9);
}

uint64_t sub_100834548(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100803B1C(a1, v4, v5, v6);
}

uint64_t sub_1008345FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100834800(char a1)
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
      result = 0x7374726563;
      break;
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

uint64_t sub_100834ABC(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016AAA30, &unk_1013BE000);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000035D0(a1, a1[3]);
  sub_100837634();
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
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100835330@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1008379C4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100835364(uint64_t a1)
{
  v2 = sub_100837634();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008353A0(uint64_t a1)
{
  v2 = sub_100837634();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100835430@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X8>)
{
  v112 = a2;
  v113 = a3;
  v111 = a4;
  v5 = type metadata accessor for MultipartAccessoryPairingInfo(0);
  v119 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v124 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_1000BC4D4(&qword_101696E38, &qword_1013D8510);
  v7 = __chkstk_darwin(v127);
  v118 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v126 = (&v108 - v10);
  __chkstk_darwin(v9);
  v128 = (&v108 - v11);
  v12 = a1[15];
  v13 = a1[14];
  v159 = a1[16];
  v160 = v12;
  v14 = a1[2];
  v143 = v159;
  v144 = v14;
  v157 = *(a1 + 104);
  v158 = v14;
  v141 = *(a1 + 104);
  v142 = v12;
  v15 = *(a1 + 120);
  v155 = *(a1 + 136);
  v156 = v15;
  v139 = *(a1 + 136);
  v140 = v15;
  v16 = *(a1 + 19);
  v138 = *(a1 + 160);
  v137 = v16;
  v152 = v13;
  sub_1001022C4(&v160, &v151);
  sub_1001022C4(&v159, &v151);
  sub_1000D2A70(&v158, &v151, &qword_1016A40E0, &unk_101396F30);
  sub_1001022C4(&v157, &v151);
  sub_1001022C4(&v156, &v151);
  sub_1001022C4(&v155, &v151);
  sub_1000E0A3C();
  v17 = DataProtocol.intValue.getter();
  v18 = *(a1 + 21);
  v19 = *(a1 + 22);
  v114 = a1;
  v109 = v18;
  v110 = v17;
  v153 = v19;
  v154 = v18;
  sub_1000D2A70(&v154, &v152, &qword_101699EB8, &qword_101398AA0);
  sub_1000D2A70(&v153, &v152, &qword_1016AAA28, &unk_1013BD990);
  v20 = sub_100908488(_swiftEmptyArrayStorage);
  v21 = v19 + 64;
  v22 = 1 << *(v19 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v19 + 64);
  v25 = (v22 + 63) >> 6;
  v120 = v19;

  v26 = 0;
  v125 = 0;
  v116 = v25;
  v117 = v19 + 64;
  if (v24)
  {
    while (1)
    {
      v27 = v26;
LABEL_8:
      v28 = __clz(__rbit64(v24)) | (v27 << 6);
      v29 = (*(v120 + 48) + 16 * v28);
      v31 = *v29;
      v30 = v29[1];
      v32 = *(v119 + 72);
      v33 = v128;
      sub_1000E180C(*(v120 + 56) + v32 * v28, v128 + *(v127 + 48));
      *v33 = v31;
      v33[1] = v30;
      v34 = v33;
      v35 = v126;
      sub_1000D2A70(v34, v126, &qword_101696E38, &qword_1013D8510);
      v36 = *v35;
      v37 = v35[1];
      *&v152 = v36;
      *(&v152 + 1) = v37;
      v38 = v37 >> 62;
      v123 = v36;
      if ((v37 >> 62) <= 1)
      {
        break;
      }

      v39 = v20;
      if (v38 == 2)
      {
        v42 = *(v36 + 16);
        v41 = *(v36 + 24);
        v40 = v41 - v42;
        if (__OFSUB__(v41, v42))
        {
          goto LABEL_62;
        }

LABEL_17:
        sub_100017D5C(v36, v37);
        goto LABEL_19;
      }

      v40 = 0;
LABEL_19:
      v43 = 20 - v40;
      if (__OFSUB__(20, v40))
      {
        goto LABEL_57;
      }

      v121 = v32;
      if (v43)
      {
        if (v43 <= 14)
        {
          if (v43 < 0)
          {
            goto LABEL_60;
          }

          v48 = v115 & 0xF00000000000000 | ((20 - v40) << 48);
          sub_100017D5C(v31, v30);
          v47 = v39;

          v45 = 0;
          v115 = v48;
          v46 = v48;
        }

        else
        {
          type metadata accessor for __DataStorage();
          swift_allocObject();
          sub_100017D5C(v31, v30);

          v44 = __DataStorage.init(length:)();
          if (v43 >= 0x7FFFFFFF)
          {
            type metadata accessor for Data.RangeReference();
            v45 = swift_allocObject();
            *(v45 + 16) = 0;
            *(v45 + 24) = v43;
            v46 = v44 | 0x8000000000000000;
          }

          else
          {
            v45 = v43 << 32;
            v46 = v44 | 0x4000000000000000;
          }

          v47 = v39;
        }
      }

      else
      {
        sub_100017D5C(v31, v30);
        v47 = v39;

        v45 = 0;
        v46 = 0xC000000000000000;
      }

      v49 = v125;
      v50 = v127;
      v122 = *(v127 + 48);
      *&v151 = v45;
      *(&v151 + 1) = v46;
      sub_100776394(&v151, 0);
      v125 = v49;
      v51 = v151;
      Data.append(_:)();
      sub_100016590(v123, v37);
      sub_100016590(v51, *(&v51 + 1));
      v52 = v152;
      v53 = Data.base64EncodedString(options:)(0);
      sub_100016590(v52, *(&v52 + 1));
      sub_1000E1870(v126 + v122);
      v54 = v118;
      sub_1000D2A70(v128, v118, &qword_101696E38, &qword_1013D8510);
      sub_100016590(*v54, *(v54 + 8));
      sub_100837460(v54 + *(v50 + 48), v124);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v152 = v47;
      v56 = sub_100771D58(v53._countAndFlagsBits, v53._object);
      v58 = *(v47 + 16);
      v59 = (v57 & 1) == 0;
      v60 = __OFADD__(v58, v59);
      v61 = v58 + v59;
      if (v60)
      {
        goto LABEL_58;
      }

      v62 = v57;
      if (*(v47 + 24) >= v61)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v69 = v56;
          sub_1010064AC();
          v56 = v69;
        }
      }

      else
      {
        sub_100FE8E54(v61, isUniquelyReferenced_nonNull_native);
        v56 = sub_100771D58(v53._countAndFlagsBits, v53._object);
        if ((v62 & 1) != (v63 & 1))
        {
          goto LABEL_64;
        }
      }

      v21 = v117;
      v24 &= v24 - 1;
      if (v62)
      {
        v64 = v56;

        v65 = v152;
        sub_1008374C4(v124, *(v152 + 56) + v64 * v121);

        sub_10000B3A8(v128, &qword_101696E38, &qword_1013D8510);
        v26 = v27;
        v20 = v65;
        v25 = v116;
        if (!v24)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v66 = v152;
        *(v152 + 8 * (v56 >> 6) + 64) |= 1 << v56;
        *(v66[6] + 16 * v56) = v53;
        sub_100837460(v124, v66[7] + v56 * v121);

        sub_10000B3A8(v128, &qword_101696E38, &qword_1013D8510);
        v67 = v66[2];
        v60 = __OFADD__(v67, 1);
        v68 = v67 + 1;
        if (v60)
        {
          goto LABEL_59;
        }

        v66[2] = v68;
        v26 = v27;
        v20 = v66;
        v25 = v116;
        if (!v24)
        {
          goto LABEL_5;
        }
      }
    }

    if (!v38)
    {
      v39 = v20;
      v40 = BYTE6(v37);
      goto LABEL_19;
    }

    if (__OFSUB__(HIDWORD(v36), v36))
    {
      goto LABEL_61;
    }

    v39 = v20;
    v40 = HIDWORD(v36) - v36;
    goto LABEL_17;
  }

  while (1)
  {
LABEL_5:
    v27 = v26 + 1;
    if (__OFADD__(v26, 1))
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

    if (v27 >= v25)
    {
      break;
    }

    v24 = *(v21 + 8 * v27);
    ++v26;
    if (v24)
    {
      goto LABEL_8;
    }
  }

  sub_10000B3A8(&v153, &qword_1016AAA28, &unk_1013BD990);
  v70 = v114;
  v71 = *(v114 + 23);
  v136 = 0;
  v72 = v114[13];
  *&v135[7] = v114[12];
  v151 = v72;
  v152 = *&v135[7];
  v73 = *v114;
  v133 = v114[1];
  v134 = v72;
  v149 = v73;
  v150 = v133;
  v131 = *(v114 + 88);
  v132 = v73;
  v147 = *(v114 + 56);
  v148 = v131;
  v130 = *(v114 + 56);
  v74 = *(v114 + 72);
  v75 = *(v114 + 39);
  v145 = v114[18];
  v146 = v74;
  if (v75 >> 60 == 15)
  {
    sub_1001022C4(&v152, v129);
    sub_1001022C4(&v151, v129);
    sub_1001022C4(&v150, v129);
    sub_1001022C4(&v149, v129);
    sub_1000D2A70(&v148, v129, &qword_1016A0AC0, &unk_1013926A0);
    sub_1000D2A70(&v147, v129, &qword_1016A0AC0, &unk_1013926A0);
    sub_1000D2A70(&v146, v129, &qword_1016A0AC0, &unk_1013926A0);
    result = sub_1000D2A70(&v145, v129, &qword_1016A0AC0, &unk_1013926A0);
    v77 = 0;
    v78 = 0;
    v79 = 0;
    v80 = 0;
LABEL_55:
    v95 = v143;
    v96 = v144;
    v97 = v141;
    v99 = v110;
    v98 = v111;
    *v111 = v142;
    v98[1] = v95;
    v100 = v136;
    v98[2] = v96;
    *(v98 + 6) = 0;
    *(v98 + 56) = v97;
    v101 = v139;
    *(v98 + 72) = v140;
    *(v98 + 88) = v101;
    *(v98 + 120) = v138;
    v102 = v137;
    *(v98 + 13) = v99;
    *(v98 + 14) = v102;
    *(v98 + 16) = v109;
    *(v98 + 17) = v20;
    *(v98 + 18) = v71;
    *(v98 + 152) = v100;
    v103 = v134;
    *(v98 + 153) = *v135;
    *(v98 + 21) = *&v135[15];
    v104 = v133;
    v98[11] = v103;
    v98[12] = v104;
    v105 = v131;
    v98[13] = v132;
    v98[14] = v105;
    v106 = *(v70 + 72);
    v98[15] = v130;
    v98[16] = v106;
    *(v98 + 34) = 0x302E302E31;
    *(v98 + 35) = 0xE500000000000000;
    v98[18] = v70[18];
    *(v98 + 38) = v77;
    *(v98 + 39) = v78;
    *(v98 + 40) = v79;
    *(v98 + 41) = v80;
    v107 = v113;
    *(v98 + 42) = v112;
    *(v98 + 43) = v107;
    return result;
  }

  v81 = v20;
  v82 = *(v114 + 38);
  sub_1001022C4(&v152, v129);
  sub_1001022C4(&v151, v129);
  sub_1001022C4(&v150, v129);
  sub_1001022C4(&v149, v129);
  sub_1000D2A70(&v148, v129, &qword_1016A0AC0, &unk_1013926A0);
  sub_1000D2A70(&v147, v129, &qword_1016A0AC0, &unk_1013926A0);
  sub_1000D2A70(&v146, v129, &qword_1016A0AC0, &unk_1013926A0);
  sub_1000D2A70(&v145, v129, &qword_1016A0AC0, &unk_1013926A0);
  v83 = sub_100313B54(v82, v75);
  v85 = v84;
  v77 = Data.hexString.getter();
  v78 = v86;
  sub_100016590(v83, v85);
  v87 = v75 >> 62;
  if ((v75 >> 62) > 1)
  {
    if (v87 != 2)
    {
LABEL_54:
      v91 = Data.subdata(in:)();
      v93 = v92;
      v79 = Data.hexString.getter();
      v80 = v94;
      result = sub_100016590(v91, v93);
      v20 = v81;
      goto LABEL_55;
    }

    v89 = *(v82 + 16);
    v88 = *(v82 + 24);
    v60 = __OFSUB__(v88, v89);
    v90 = v88 - v89;
    if (v60)
    {
      __break(1u);
      goto LABEL_50;
    }

LABEL_52:
    if (v90 < -1)
    {
      __break(1u);
    }

    goto LABEL_54;
  }

  if (!v87)
  {
    goto LABEL_54;
  }

LABEL_50:
  LODWORD(v90) = HIDWORD(v82) - v82;
  if (!__OFSUB__(HIDWORD(v82), v82))
  {
    v90 = v90;
    goto LABEL_52;
  }

LABEL_63:
  __break(1u);
LABEL_64:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100835E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[319] = a4;
  v4[318] = a3;
  v4[317] = a2;
  v4[316] = a1;
  v5 = type metadata accessor for HashAlgorithm();
  v4[320] = v5;
  v4[321] = *(v5 - 8);
  v4[322] = swift_task_alloc();
  v6 = type metadata accessor for Locale();
  v4[323] = v6;
  v4[324] = *(v6 - 8);
  v4[325] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v4[326] = v7;
  v4[327] = *(v7 - 8);
  v4[328] = swift_task_alloc();

  return _swift_task_switch(sub_100835FF4, 0, 0);
}

void sub_100835FF4()
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

  v6 = *(v0 + 2624);
  v7 = *(v0 + 2616);
  v8 = *(v0 + 2608);
  v9 = *(v0 + 2600);
  v46 = *(v0 + 2592);
  v47 = *(v0 + 2584);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v10, v12, 0xD000000000000011, 0x800000010134EA40, v13);
  v14 = v1;
  Date.init()();
  v15 = Date.epoch.getter();
  (*(v7 + 8))(v6, v8);
  *(v0 + 2504) = v15;
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  v18 = v17;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v16, v18, 0xD000000000000015, 0x800000010134EA60, v19);
  *(v0 + 2512) = 1;
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

  *(v0 + 2632) = v33;
  v40 = *(v0 + 2544);
  v41 = *(v0 + 2536);
  v42 = *(v0 + 2528);
  sub_1008372F4(v42, v0 + 2128);
  sub_100835430(v42, v41, v40, (v0 + 16));
  sub_100837350(v42);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  *(v0 + 2640) = JSONEncoder.init()();
  memcpy((v0 + 368), (v0 + 16), 0x160uLL);
  sub_1008373A4();
  v43 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 2648) = 0;
  *(v0 + 2656) = v43;
  *(v0 + 2664) = v44;
  sub_100017D5C(v43, v44);
  v45 = swift_task_alloc();
  *(v0 + 2672) = v45;
  *v45 = v0;
  v45[1] = sub_100836680;

  sub_100EA5794();
}

uint64_t sub_100836680(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 2680) = a1;
  *(v3 + 2688) = a2;

  return _swift_task_switch(sub_100836784, 0, 0);
}

uint64_t sub_100836784()
{
  v1 = *(v0 + 2688);
  v2 = *(v0 + 2680);
  v3 = *(v0 + 2576);
  v4 = *(v0 + 2568);
  v5 = *(v0 + 2560);
  *(v0 + 2488) = v2;
  *(v0 + 2496) = v1;
  *(v0 + 2472) = &type metadata for Data;
  *(v0 + 2480) = &protocol witness table for Data;
  *(v0 + 2448) = *(v0 + 2656);
  v6 = sub_1000035D0((v0 + 2448), &type metadata for Data);
  v7 = *v6;
  v8 = v6[1];
  sub_100017D5C(v2, v1);
  sub_100017DB0(v7, v8, v0 + 2488);
  sub_100016590(v2, v1);
  sub_100007BAC((v0 + 2448));
  *(v0 + 2696) = *(v0 + 2488);
  *(v0 + 2704) = *(v0 + 2496);
  (*(v4 + 104))(v3, enum case for HashAlgorithm.sha256(_:), v5);
  v9 = Data.hash(algorithm:)();
  v11 = v10;
  *(v0 + 2712) = v9;
  *(v0 + 2720) = v10;
  (*(v4 + 8))(v3, v5);
  v12 = swift_task_alloc();
  *(v0 + 2728) = v12;
  *v12 = v0;
  v12[1] = sub_10083693C;
  v13 = *(v0 + 2552);

  return sub_100EA87F4(v9, v11, v13);
}

uint64_t sub_10083693C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 2736) = v1;

  if (v1)
  {
    v5 = sub_100836E68;
  }

  else
  {
    v6 = v4[340];
    v7 = v4[339];
    v4[343] = a1;
    sub_100016590(v7, v6);
    v5 = sub_100836A70;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100836A70()
{
  v46 = v0;
  v1 = v0[343];
  v2 = v0[338];
  v3 = v0[337];
  v4 = v0[329];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = v4;
  sub_10028709C(v1, sub_100EB00A4, 0, isUniquelyReferenced_nonNull_native, &v45);

  sub_100016590(v3, v2);
  v6 = v45;
  v7 = static os_log_type_t.debug.getter();
  if (qword_1016950C8 != -1)
  {
LABEL_17:
    v40 = v7;
    swift_once();
    v7 = v40;
  }

  v42 = qword_10177C410;
  os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, qword_10177C410, "Pairing lock header:", 20, 2, _swiftEmptyArrayStorage);
  v8 = v6 + 8;
  v9 = -1;
  v10 = -1 << *(v6 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & v6[8];
  v12 = (63 - v10) >> 6;
  v43 = v6;

  for (i = 0; v11; v7 = )
  {
    v14 = i;
    v15 = v43;
LABEL_11:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = (v14 << 10) | (16 * v16);
    v18 = v15[7];
    v19 = (v15[6] + v17);
    v20 = *v19;
    v21 = v19[1];
    v22 = (v18 + v17);
    v23 = v22[1];
    v44 = *v22;

    v24 = static os_log_type_t.debug.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_10138BBE0;
    v6 = &type metadata for String;
    *(v25 + 56) = &type metadata for String;
    v26 = sub_100008C00();
    *(v25 + 32) = v20;
    *(v25 + 40) = v21;
    *(v25 + 96) = &type metadata for String;
    *(v25 + 104) = v26;
    *(v25 + 64) = v26;
    *(v25 + 72) = v44;
    *(v25 + 80) = v23;
    os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, v42, "%@: %@", 6, 2, v25);
  }

  v15 = v43;
  while (1)
  {
    v14 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = v8[v14];
    ++i;
    if (v11)
    {
      i = v14;
      goto LABEL_11;
    }
  }

  v27 = v41;
  v28 = v41[333];
  v29 = v41[332];
  v30 = v41[316];

  v31 = static os_log_type_t.debug.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_101385D80;
  memcpy(v27 + 178, v27 + 2, 0x160uLL);
  sub_1008373F8((v27 + 2), (v27 + 222));
  v33 = String.init<A>(describing:)();
  v35 = v34;
  *(v32 + 56) = &type metadata for String;
  *(v32 + 64) = sub_100008C00();
  *(v32 + 32) = v33;
  *(v32 + 40) = v35;
  os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v42, "Pairing lock body %@", 20, 2, v32);

  sub_100837350(v30);

  sub_100837430((v41 + 2));

  sub_100017D5C(v29, v28);

  sub_100016590(v29, v28);
  v36 = v41[333];
  v37 = v41[332];

  v38 = v41[1];

  return v38(v43, v37, v36);
}

uint64_t sub_100836E68()
{
  v1 = *(v0 + 2704);
  v2 = *(v0 + 2696);
  sub_100016590(*(v0 + 2712), *(v0 + 2720));
  sub_100016590(v2, v1);
  v3 = static os_log_type_t.error.getter();
  v4 = &qword_101695000;
  if (qword_1016950C8 != -1)
  {
LABEL_19:
    swift_once();
  }

  v5 = *(v0 + 2736);
  v6 = qword_10177C410;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101385D80;
  *(v0 + 2520) = v5;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v8 = String.init<A>(describing:)();
  v10 = v9;
  *(v7 + 56) = &type metadata for String;
  v44 = sub_100008C00();
  *(v7 + 64) = v44;
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v6, "Failed to generate attestation header %@:", 41, 2, v7);

  v42 = v0;
  v0 = *(v0 + 2632);
  v11 = static os_log_type_t.debug.getter();
  if (*(v4 + 200) != -1)
  {
    v40 = v11;
    swift_once();
    v11 = v40;
  }

  v43 = qword_10177C410;
  os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, qword_10177C410, "Pairing lock header:", 20, 2, _swiftEmptyArrayStorage, 1, 2);
  v3 = v0 + 64;
  v12 = -1;
  v13 = -1 << *(v0 + 32);
  if (-v13 < 64)
  {
    v12 = ~(-1 << -v13);
  }

  v4 = v12 & *(v0 + 64);
  v14 = (63 - v13) >> 6;
  v45 = v0;

  v15 = 0;
  while (v4)
  {
    v16 = v15;
    v17 = v45;
LABEL_13:
    v18 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v19 = (v16 << 10) | (16 * v18);
    v20 = *(v17 + 56);
    v21 = (*(v17 + 48) + v19);
    v22 = *v21;
    v23 = v21[1];
    v24 = (v20 + v19);
    v0 = *v24;
    v25 = v24[1];

    v26 = static os_log_type_t.debug.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_10138BBE0;
    *(v27 + 56) = &type metadata for String;
    *(v27 + 64) = v44;
    *(v27 + 32) = v22;
    *(v27 + 40) = v23;
    *(v27 + 96) = &type metadata for String;
    *(v27 + 104) = v44;
    *(v27 + 72) = v0;
    *(v27 + 80) = v25;
    os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, v43, "%@: %@", 6, 2, v27);
  }

  v17 = v45;
  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (v16 >= v14)
    {
      break;
    }

    v4 = *(v3 + 8 * v16);
    ++v15;
    if (v4)
    {
      v15 = v16;
      goto LABEL_13;
    }
  }

  v28 = v42;
  v29 = v42[333];
  v30 = v42[332];
  v31 = v42[316];

  v32 = static os_log_type_t.debug.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v33 = swift_allocObject();
  *(v33 + 16) = v41;
  memcpy(v28 + 178, v28 + 2, 0x160uLL);
  sub_1008373F8((v28 + 2), (v28 + 222));
  v34 = String.init<A>(describing:)();
  *(v33 + 56) = &type metadata for String;
  *(v33 + 64) = v44;
  *(v33 + 32) = v34;
  *(v33 + 40) = v35;
  os_log(_:dso:log:_:_:)(v32, &_mh_execute_header, v43, "Pairing lock body %@", 20, 2, v33);

  sub_100837350(v31);

  sub_100837430((v42 + 2));

  sub_100017D5C(v30, v29);

  sub_100016590(v30, v29);
  v36 = v42[333];
  v37 = v42[332];

  v38 = v42[1];

  return v38(v45, v37, v36);
}

unint64_t sub_1008373A4()
{
  result = qword_1016AAA20;
  if (!qword_1016AAA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AAA20);
  }

  return result;
}

uint64_t sub_100837460(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultipartAccessoryPairingInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008374C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultipartAccessoryPairingInfo(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100837530(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 352))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 128);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100837578(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 344) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 352) = 1;
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
      *(result + 128) = (a2 - 1);
      return result;
    }

    *(result + 352) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100837634()
{
  result = qword_1016AAA38;
  if (!qword_1016AAA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AAA38);
  }

  return result;
}

unint64_t sub_100837688()
{
  result = qword_1016AAA48;
  if (!qword_1016AAA48)
  {
    sub_1000BC580(&qword_1016AAA40, &qword_1013D8B80);
    sub_100837714();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AAA48);
  }

  return result;
}

unint64_t sub_100837714()
{
  result = qword_1016AAA50;
  if (!qword_1016AAA50)
  {
    type metadata accessor for MultipartAccessoryPairingInfo(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AAA50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AirPodsPairingLockCheckRequestContent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_17;
  }

  if (a2 + 23 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 23) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 23;
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

      return (*a1 | (v4 << 8)) - 23;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 23;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v8 = v6 - 24;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AirPodsPairingLockCheckRequestContent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE9)
  {
    v4 = 0;
  }

  if (a2 > 0xE8)
  {
    v5 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1008378C0()
{
  result = qword_1016AAA58;
  if (!qword_1016AAA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AAA58);
  }

  return result;
}

unint64_t sub_100837918()
{
  result = qword_1016AAA60;
  if (!qword_1016AAA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AAA60);
  }

  return result;
}

unint64_t sub_100837970()
{
  result = qword_1016AAA68;
  if (!qword_1016AAA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AAA68);
  }

  return result;
}

uint64_t sub_1008379C4(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x7374726563 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
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

uint64_t sub_100838128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static DeviceVersion.== infix(_:_:)())
  {

    return static UUID.< infix(_:_:)();
  }

  else
  {

    return static DeviceVersion.< infix(_:_:)();
  }
}

BOOL sub_1008381A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static DeviceVersion.== infix(_:_:)())
  {
    v3 = static UUID.< infix(_:_:)();
  }

  else
  {
    v3 = static DeviceVersion.< infix(_:_:)();
  }

  return (v3 & 1) == 0;
}

BOOL sub_10083820C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static DeviceVersion.== infix(_:_:)())
  {
    v3 = static UUID.< infix(_:_:)();
  }

  else
  {
    v3 = static DeviceVersion.< infix(_:_:)();
  }

  return (v3 & 1) == 0;
}

uint64_t sub_10083826C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static DeviceVersion.== infix(_:_:)())
  {

    return static UUID.< infix(_:_:)();
  }

  else
  {

    return static DeviceVersion.< infix(_:_:)();
  }
}

uint64_t sub_1008382F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static DeviceVersion.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static UUID.== infix(_:_:)();
}

uint64_t type metadata accessor for LeaderDevice(uint64_t a1)
{
  result = qword_1016AAAD8;
  if (!qword_1016AAAD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1008383D8(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  sub_1000DF96C();
  v3 = StringProtocol.contains<A>(_:)();

  if ((v3 & 1) == 0)
  {
    v2 = 1;
    v4 = StringProtocol.contains<A>(_:)();

    if ((v4 & 1) == 0)
    {
      v2 = 2;
      v5 = StringProtocol.contains<A>(_:)();

      if ((v5 & 1) == 0)
      {
        sub_1008385D0();
        swift_allocError();
        swift_willThrow();
      }
    }
  }

  return v2;
}

unint64_t sub_1008385D0()
{
  result = qword_1016AAA78;
  if (!qword_1016AAA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AAA78);
  }

  return result;
}

uint64_t sub_10083865C(uint64_t a1)
{
  result = type metadata accessor for DeviceVersion();
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

uint64_t sub_1008386E0(uint64_t a1)
{
  result = sub_100838724(&qword_1016AAB10, &unk_1013BE170);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100838724(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LeaderDevice(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10083876C()
{
  result = qword_1016AAB18;
  if (!qword_1016AAB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AAB18);
  }

  return result;
}

uint64_t type metadata accessor for BeaconProductInfoRecord(uint64_t a1)
{
  result = qword_1016AAB78;
  if (!qword_1016AAB78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100838834(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1002359B8(319, &qword_10169D5F0, &type metadata for Bool);
    if (v2 <= 0x3F)
    {
      sub_1002359B8(319, &qword_10169A158, &type metadata for AccessoryBatteryType);
      if (v3 <= 0x3F)
      {
        sub_1002359B8(319, &qword_1016A8838, &type metadata for Int);
        if (v4 <= 0x3F)
        {
          sub_1002359B8(319, &qword_1016BD350, &type metadata for String);
          if (v5 <= 0x3F)
          {
            sub_100838A34(319, &qword_1016A8128, &type metadata accessor for URL);
            if (v6 <= 0x3F)
            {
              sub_100838A34(319, &qword_1016A86B0, type metadata accessor for AccessoryInfoResponseContent.Configuration);
              if (v7 <= 0x3F)
              {
                sub_100838A88(319);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for URL();
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_100838A34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100838A88(uint64_t a1)
{
  if (!qword_1016A86C8)
  {
    sub_1000BC580(&unk_1016A86D0, "֫\n");
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1016A86C8);
    }
  }
}

uint64_t sub_100838AEC()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v2, qword_10177B398);
  sub_1000076D4(v0, qword_10177B398);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v5 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v4, v5, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v4, v0);
}

unint64_t sub_100838C48(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
    case 4:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x7250796D646E6966;
      break;
    case 3:
      result = 0x5479726574746162;
      break;
    case 5:
      result = 0x6E6564646968;
      break;
    case 6:
      result = 0xD00000000000001ELL;
      break;
    case 7:
      result = 0x6D614E6C65646F6DLL;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x52746C7561666564;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0x55656C6261736964;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0x6E6F6973726576;
      break;
    case 14:
      result = 0x7265776F507874;
      break;
    case 15:
      result = 0x72756769666E6F63;
      break;
    case 16:
      result = 0x696C696261706163;
      break;
    case 17:
      result = 0x655474756F79616CLL;
      break;
    case 18:
      result = 0x48746C7561666564;
      break;
    case 19:
      result = 0x4C746C7561666564;
      break;
    case 20:
      result = 0xD000000000000011;
      break;
    case 21:
      result = 0xD000000000000011;
      break;
    case 22:
      result = 0xD000000000000011;
      break;
    case 23:
      result = 0xD000000000000011;
      break;
    case 24:
      result = 0x6761547269417369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100838F2C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016AAC38, &unk_1013BE390);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_10083C4FC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  type metadata accessor for UUID();
  sub_10083DB3C(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for BeaconProductInfoRecord(0);
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = *(v3 + v9[7]);
    v13 = 3;
    sub_1002354EC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v12) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v12) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v12) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v12) = 11;
    type metadata accessor for URL();
    sub_10083DB3C(&qword_1016A8188, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v12) = 12;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v12) = 13;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 14;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = v9[19];
    LOBYTE(v12) = 15;
    type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
    sub_10083DB3C(&qword_1016A8998, type metadata accessor for AccessoryInfoResponseContent.Configuration, &unk_1013B8E94);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LODWORD(v12) = *(v3 + v9[20]);
    v13 = 16;
    sub_100235498();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + v9[21]);
    v13 = 17;
    sub_1000BC4D4(&unk_1016A86D0, "֫\n");
    sub_100757AC0(&qword_1016A89B8, sub_100757B38, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v12) = 18;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 19;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 20;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 21;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 22;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 23;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 24;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_100839680(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
  v43 = *(v4 - 8);
  v44 = v4;
  __chkstk_darwin(v4);
  v40 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016A62E8, &qword_1013B3CB0);
  __chkstk_darwin(v6 - 8);
  v42 = &v38 - v7;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v41 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v38 - v15;
  type metadata accessor for UUID();
  sub_10083DB3C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v17 = type metadata accessor for BeaconProductInfoRecord(0);
  v18 = *(v1 + v17[5]);
  if (v18 == 2)
  {
    v19 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v19 = v18 & 1;
  }

  Hasher._combine(_:)(v19);
  String.hash(into:)();
  v20 = *(v1 + v17[7]);
  if (v20 == 4)
  {
    LOBYTE(v20) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
  }

  Hasher._combine(_:)(v20);
  Hasher._combine(_:)(*(v1 + v17[8]));
  Hasher._combine(_:)(*(v1 + v17[9]));
  v21 = *(v1 + v17[10]);
  if (v21 == 2)
  {
    v22 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v22 = v21 & 1;
  }

  Hasher._combine(_:)(v22);
  String.hash(into:)();
  String.hash(into:)();
  v23 = v1 + v17[13];
  if (*(v23 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v24 = *v23;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v24);
  }

  v25 = *(v1 + v17[14] + 8);
  v45 = v9;
  if (v25)
  {
    Hasher._combine(_:)(1u);
    v9 = v45;
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  sub_1000D2A70(v1 + v17[15], v16, &unk_101696AC0, &qword_101390A60);
  v26 = *(v9 + 48);
  if (v26(v16, 1, v8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v27 = *(v9 + 32);
    v39 = v14;
    v28 = v41;
    v27(v41, v16, v8);
    Hasher._combine(_:)(1u);
    sub_10083DB3C(&qword_1016A8908, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    dispatch thunk of Hashable.hash(into:)();
    v29 = v28;
    v14 = v39;
    (*(v9 + 8))(v29, v8);
  }

  sub_1000D2A70(v1 + v17[16], v14, &unk_101696AC0, &qword_101390A60);
  if (v26(v14, 1, v8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v30 = v45;
    v31 = v41;
    (*(v45 + 32))(v41, v14, v8);
    Hasher._combine(_:)(1u);
    sub_10083DB3C(&qword_1016A8908, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    dispatch thunk of Hashable.hash(into:)();
    (*(v30 + 8))(v31, v8);
  }

  String.hash(into:)();
  v32 = *(v1 + v17[18]);
  if (v32 == 0.0)
  {
    v32 = 0.0;
  }

  Hasher._combine(_:)(*&v32);
  v33 = v42;
  sub_1000D2A70(v2 + v17[19], v42, &qword_1016A62E8, &qword_1013B3CB0);
  if ((*(v43 + 48))(v33, 1, v44) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v34 = v40;
    sub_10083DB84(v33, v40, type metadata accessor for AccessoryInfoResponseContent.Configuration);
    Hasher._combine(_:)(1u);
    sub_10074F1C0(a1);
    sub_10083E698(v34, type metadata accessor for AccessoryInfoResponseContent.Configuration);
  }

  Hasher._combine(_:)(*(v2 + v17[20]));
  v35 = *(v2 + v17[21]);
  if (v35)
  {
    Hasher._combine(_:)(1u);
    sub_10083C3DC(a1, v35);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  sub_10083DB3C(&qword_1016A8908, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  v36 = *(v2 + v17[28]);
  if (v36 == 2)
  {
    v37 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v37 = v36 & 1;
  }

  Hasher._combine(_:)(v37);
}

uint64_t sub_100839E38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v102 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v101 = &v93 - v8;
  v9 = __chkstk_darwin(v7);
  v100 = &v93 - v10;
  v11 = __chkstk_darwin(v9);
  v99 = &v93 - v12;
  v13 = __chkstk_darwin(v11);
  v98 = &v93 - v14;
  __chkstk_darwin(v13);
  v97 = &v93 - v15;
  v16 = sub_1000BC4D4(&qword_1016A62E8, &qword_1013B3CB0);
  __chkstk_darwin(v16 - 8);
  v104 = &v93 - v17;
  v18 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v19 = __chkstk_darwin(v18 - 8);
  v105 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v93 - v21;
  v23 = type metadata accessor for UUID();
  v106 = *(v23 - 8);
  __chkstk_darwin(v23);
  v109 = &v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1000BC4D4(&qword_1016AAC28, &qword_1013BE388);
  v107 = *(v25 - 8);
  v108 = v25;
  __chkstk_darwin(v25);
  v27 = &v93 - v26;
  v28 = type metadata accessor for BeaconProductInfoRecord(0);
  v29 = __chkstk_darwin(v28);
  v31 = &v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v29 + 60);
  v112 = v4;
  v33 = *(v4 + 56);
  v114 = v32;
  v33(&v31[v32], 1, 1, v3);
  v113 = *(v28 + 64);
  v115 = v3;
  v33(&v31[v113], 1, 1, v3);
  v118 = v28;
  v34 = *(v28 + 76);
  v35 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
  v36 = *(*(v35 - 8) + 56);
  v116 = v31;
  v110 = v34;
  v36(&v31[v34], 1, 1, v35);
  v37 = a1[3];
  v111 = a1;
  sub_1000035D0(a1, v37);
  sub_10083C4FC();
  v38 = v117;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v38)
  {
    v117 = v38;
    v40 = v116;
    sub_100007BAC(v111);
    v109 = 0;
    LODWORD(v108) = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    goto LABEL_4;
  }

  v96 = v22;
  LOBYTE(v119) = 0;
  sub_10083DB3C(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v39 = v109;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v51 = v27;
  v52 = v116;
  (*(v106 + 32))(v116, v39, v23);
  LOBYTE(v119) = 1;
  v95 = v51;
  v53 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v93 = v23;
  v54 = v118;
  v52[v118[5]] = v53;
  LOBYTE(v119) = 2;
  v55 = KeyedDecodingContainer.decode(_:forKey:)();
  v56 = &v52[v54[6]];
  *v56 = v55;
  v56[1] = v57;
  v120 = 3;
  sub_100235294();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v52[v54[7]] = v119;
  LOBYTE(v119) = 4;
  v52[v54[8]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  LOBYTE(v119) = 5;
  v52[v54[9]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  LOBYTE(v119) = 6;
  v52[v54[10]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v119) = 7;
  v58 = KeyedDecodingContainer.decode(_:forKey:)();
  v59 = &v52[v54[11]];
  *v59 = v58;
  v59[1] = v60;
  LOBYTE(v119) = 8;
  v61 = KeyedDecodingContainer.decode(_:forKey:)();
  v117 = 0;
  v62 = &v52[v118[12]];
  *v62 = v61;
  v62[1] = v63;
  LOBYTE(v119) = 9;
  v64 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v117 = 0;
  v65 = &v116[v118[13]];
  *v65 = v64;
  v65[8] = v66 & 1;
  LOBYTE(v119) = 10;
  v67 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v94 = v68;
  v117 = 0;
  v69 = &v116[v118[14]];
  v70 = v94;
  *v69 = v67;
  v69[1] = v70;
  LOBYTE(v119) = 11;
  sub_10083DB3C(&qword_1016A8178, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v71 = v117;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v117 = v71;
  if (v71 || (sub_10002311C(v96, &v116[v114], &unk_101696AC0, &qword_101390A60), LOBYTE(v119) = 12, v72 = v117, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v117 = v72) != 0) || (sub_10002311C(v105, &v116[v113], &unk_101696AC0, &qword_101390A60), LOBYTE(v119) = 13, v73 = v117, v74 = KeyedDecodingContainer.decode(_:forKey:)(), (v117 = v73) != 0))
  {
    (*(v107 + 8))(v95, v108);
    v46 = 0;
    v45 = 0;
    v44 = 0;
    v43 = 0;
    v42 = 0;
    v41 = 0;
    LODWORD(v108) = 0;
    v109 = 0;
    LODWORD(v107) = 1;
    v40 = v116;
  }

  else
  {
    v76 = &v116[v118[17]];
    *v76 = v74;
    v76[1] = v75;
    LOBYTE(v119) = 14;
    KeyedDecodingContainer.decode(_:forKey:)();
    v117 = 0;
    *&v116[v118[18]] = v77;
    LOBYTE(v119) = 15;
    sub_10083DB3C(&qword_1016A8958, type metadata accessor for AccessoryInfoResponseContent.Configuration, &unk_1013B8EBC);
    v78 = v117;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v117 = v78;
    if (v78 || (sub_10002311C(v104, &v116[v110], &qword_1016A62E8, &qword_1013B3CB0), v120 = 16, sub_100235240(), v79 = v117, KeyedDecodingContainer.decode<A>(_:forKey:)(), (v117 = v79) != 0) || (*&v116[v118[20]] = v119, sub_1000BC4D4(&unk_1016A86D0, "֫\n"), v120 = 17, sub_100757AC0(&qword_1016A8970, sub_100757938, &protocol conformance descriptor for <A> [A]), v80 = v117, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v117 = v80) != 0))
    {
      (*(v107 + 8))(v95, v108);
      v45 = 0;
      v44 = 0;
      v43 = 0;
      v42 = 0;
      v41 = 0;
      LODWORD(v108) = 0;
      v109 = 0;
    }

    else
    {
      v81 = v118[21];
      v109 = v119;
      *&v116[v81] = v119;
      LOBYTE(v119) = 18;
      v82 = v117;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v117 = v82;
      if (!v82)
      {
        v83 = *(v112 + 32);
        v83(&v116[v118[22]], v97, v115);
        LOBYTE(v119) = 19;
        v84 = v117;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v117 = v84;
        if (v84)
        {
          (*(v107 + 8))(v95, v108);
          v44 = 0;
          v43 = 0;
          v42 = 0;
          v41 = 0;
          LODWORD(v108) = 0;
          LODWORD(v107) = 1;
          v46 = 1;
          v45 = 1;
          v40 = v116;
        }

        else
        {
          v83(&v116[v118[23]], v98, v115);
          LOBYTE(v119) = 20;
          v85 = v117;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v117 = v85;
          if (v85)
          {
            (*(v107 + 8))(v95, v108);
            v43 = 0;
            v42 = 0;
            v41 = 0;
            LODWORD(v108) = 0;
            LODWORD(v107) = 1;
            v46 = 1;
            v45 = 1;
            v44 = 1;
            v40 = v116;
          }

          else
          {
            v83(&v116[v118[24]], v99, v115);
            LOBYTE(v119) = 21;
            v86 = v117;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            v117 = v86;
            if (v86)
            {
              (*(v107 + 8))(v95, v108);
              v42 = 0;
              v41 = 0;
              LODWORD(v108) = 0;
              LODWORD(v107) = 1;
              v46 = 1;
              v45 = 1;
              v44 = 1;
              v43 = 1;
              v40 = v116;
            }

            else
            {
              v83(&v116[v118[25]], v100, v115);
              LOBYTE(v119) = 22;
              v87 = v117;
              KeyedDecodingContainer.decode<A>(_:forKey:)();
              v117 = v87;
              if (v87)
              {
                (*(v107 + 8))(v95, v108);
                v41 = 0;
                LODWORD(v108) = 0;
                LODWORD(v107) = 1;
                v46 = 1;
                v45 = 1;
                v44 = 1;
                v43 = 1;
                v42 = 1;
                v40 = v116;
              }

              else
              {
                v83(&v116[v118[26]], v101, v115);
                LOBYTE(v119) = 23;
                v88 = v117;
                KeyedDecodingContainer.decode<A>(_:forKey:)();
                v117 = v88;
                if (v88)
                {
                  (*(v107 + 8))(v95, v108);
                  LODWORD(v108) = 0;
                  LODWORD(v107) = 1;
                  v46 = 1;
                  v45 = 1;
                  v44 = 1;
                  v43 = 1;
                  v42 = 1;
                  v41 = 1;
                  v40 = v116;
                }

                else
                {
                  v83(&v116[v118[27]], v102, v115);
                  LOBYTE(v119) = 24;
                  v89 = v117;
                  v90 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
                  v117 = v89;
                  if (!v89)
                  {
                    v91 = v90;
                    (*(v107 + 8))(v95, v108);
                    v92 = v116;
                    v116[v118[28]] = v91;
                    sub_10083E630(v92, v103, type metadata accessor for BeaconProductInfoRecord);
                    sub_100007BAC(v111);
                    return sub_10083E698(v92, type metadata accessor for BeaconProductInfoRecord);
                  }

                  (*(v107 + 8))(v95, v108);
                  LODWORD(v107) = 1;
                  v46 = 1;
                  v45 = 1;
                  v44 = 1;
                  v43 = 1;
                  v42 = 1;
                  v41 = 1;
                  LODWORD(v108) = 1;
                  v40 = v116;
                }
              }
            }
          }
        }

        goto LABEL_20;
      }

      (*(v107 + 8))(v95, v108);
      v45 = 0;
      v44 = 0;
      v43 = 0;
      v42 = 0;
      v41 = 0;
      LODWORD(v108) = 0;
    }

    LODWORD(v107) = 1;
    v46 = 1;
    v40 = v116;
  }

LABEL_20:
  sub_100007BAC(v111);
  (*(v106 + 8))(v40, v93);

  if (v107)
  {
  }

LABEL_4:

  sub_10000B3A8(&v40[v114], &unk_101696AC0, &qword_101390A60);
  sub_10000B3A8(&v40[v113], &unk_101696AC0, &qword_101390A60);
  if (v46)
  {
  }

  sub_10000B3A8(&v40[v110], &qword_1016A62E8, &qword_1013B3CB0);

  v48 = v115;
  v49 = v112;
  v50 = v118;
  if (v45)
  {
    result = (*(v112 + 8))(&v40[v118[22]], v115);
    if (!v44)
    {
LABEL_8:
      if (!v43)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }
  }

  else if (!v44)
  {
    goto LABEL_8;
  }

  result = (*(v49 + 8))(&v40[v50[23]], v48);
  if (!v43)
  {
LABEL_9:
    if (!v42)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = (*(v49 + 8))(&v40[v50[24]], v48);
  if (!v42)
  {
LABEL_10:
    if (!v41)
    {
      goto LABEL_11;
    }

LABEL_17:
    result = (*(v49 + 8))(&v40[v50[26]], v48);
    if (!v108)
    {
      return result;
    }

    return (*(v49 + 8))(&v40[v50[27]], v48);
  }

LABEL_16:
  result = (*(v49 + 8))(&v40[v50[25]], v48);
  if (v41)
  {
    goto LABEL_17;
  }

LABEL_11:
  if (!v108)
  {
    return result;
  }

  return (*(v49 + 8))(&v40[v50[27]], v48);
}

uint64_t sub_10083B19C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10083DE44(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10083B1D0(uint64_t a1)
{
  v2 = sub_10083C4FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10083B20C(uint64_t a1)
{
  v2 = sub_10083C4FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10083B248()
{
  Hasher.init(_seed:)();
  sub_100839680(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10083B28C(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100839680(v2);
  return Hasher._finalize()();
}

uint64_t sub_10083B344(uint64_t a1)
{
  *(a1 + 8) = sub_10083DB3C(&qword_1016AAC18, type metadata accessor for BeaconProductInfoRecord, &unk_1013BE300);
  result = sub_10083DB3C(&qword_1016AAC20, type metadata accessor for BeaconProductInfoRecord, &unk_1013BE2D8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10083B3C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v78 = a2;
  v5 = sub_1000BC4D4(&qword_1016A62E8, &qword_1013B3CB0);
  __chkstk_darwin(v5 - 8);
  v7 = &v60 - v6;
  v8 = type metadata accessor for AccessoryProductInfo(0);
  v9 = v8[21];
  sub_1000D2A70(a1 + v9, v7, &qword_1016A62E8, &qword_1013B3CB0);
  v10 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
  if ((*(*(v10 - 8) + 48))(v7, 1, v10) == 1)
  {
    sub_10000B3A8(v7, &qword_1016A62E8, &qword_1013B3CB0);
    v11 = 3;
  }

  else
  {
    v12 = v7[48];
    v13 = v7[49];
    sub_10083E698(v7, type metadata accessor for AccessoryInfoResponseContent.Configuration);
    v11 = 3;
    if ((v13 & 1) == 0)
    {
      if (v12 >= 3)
      {
        v11 = 3;
      }

      else
      {
        v11 = v12;
      }
    }
  }

  v77 = v11;
  v14 = *(a1 + v8[11]);
  v15 = v8[7];
  v75 = *(a1 + v8[6]);
  v76 = v14;
  v16 = (a1 + v8[9]);
  v17 = *(a1 + v15);
  LODWORD(v15) = *(a1 + v8[8]);
  v73 = v17;
  v74 = v15;
  v18 = v16[1];
  v67 = *v16;
  v19 = v8[14];
  v20 = (a1 + v8[13]);
  v21 = *v20;
  v62 = v20[1];
  v22 = a1 + v19;
  v24 = *(a1 + v19);
  v23 = *(v22 + 8);
  v71 = v21;
  v72 = v24;
  v63 = v23;
  v64 = v18;
  v25 = v8[16];
  v26 = (a1 + v8[15]);
  v27 = *v26;
  v68 = *(v26 + 8);
  v28 = a1 + v25;
  v30 = *(a1 + v25);
  v29 = *(v28 + 8);
  v69 = v27;
  v70 = v30;
  v61 = v29;
  v31 = v8[18];
  v32 = type metadata accessor for BeaconProductInfoRecord(0);
  sub_1000D2A70(a1 + v31, a3 + v32[15], &unk_101696AC0, &qword_101390A60);
  sub_1000D2A70(a1 + v8[17], a3 + v32[16], &unk_101696AC0, &qword_101390A60);
  v33 = v8[20];
  v34 = (a1 + v8[19]);
  v36 = *v34;
  v35 = v34[1];
  v66 = v36;
  v60 = v35;
  v37 = *(a1 + v33);
  sub_1000D2A70(a1 + v9, a3 + v32[19], &qword_1016A62E8, &qword_1013B3CB0);
  v38 = v8[23];
  v65 = *(a1 + v8[22]);
  v39 = *(a1 + v38);
  v40 = v8[26];
  v41 = v32[22];
  v42 = type metadata accessor for URL();
  v43 = *(*(v42 - 8) + 16);
  v43(a3 + v41, a1 + v40, v42);
  v43(a3 + v32[23], a1 + v8[27], v42);
  v43(a3 + v32[24], a1 + v8[28], v42);
  v43(a3 + v32[25], a1 + v8[29], v42);
  v43(a3 + v32[26], a1 + v8[30], v42);
  v43(a3 + v32[27], a1 + v8[31], v42);
  v44 = *(a1 + v8[44]);

  v45 = v64;

  v46 = v62;

  v47 = v63;

  v48 = v61;

  v49 = v60;

  sub_10083E698(a1, type metadata accessor for AccessoryProductInfo);
  v50 = type metadata accessor for UUID();
  result = (*(*(v50 - 8) + 32))(a3, v78, v50);
  *(a3 + v32[5]) = v76;
  v52 = (a3 + v32[6]);
  *v52 = v67;
  v52[1] = v45;
  *(a3 + v32[7]) = v77;
  *(a3 + v32[8]) = v75;
  v53 = v74;
  *(a3 + v32[9]) = v73;
  *(a3 + v32[10]) = v53;
  v54 = (a3 + v32[11]);
  v55 = v72;
  *v54 = v71;
  v54[1] = v46;
  v56 = (a3 + v32[12]);
  *v56 = v55;
  v56[1] = v47;
  v57 = a3 + v32[13];
  *v57 = v69;
  *(v57 + 8) = v68;
  v58 = (a3 + v32[14]);
  *v58 = v70;
  v58[1] = v48;
  v59 = (a3 + v32[17]);
  *v59 = v66;
  v59[1] = v49;
  *(a3 + v32[18]) = v37;
  *(a3 + v32[20]) = v65;
  *(a3 + v32[21]) = v39;
  *(a3 + v32[28]) = v44;
  return result;
}

id sub_10083B890()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&qword_1016A62E8, &qword_1013B3CB0);
  __chkstk_darwin(v2 - 8);
  v4 = &v79 - v3;
  v5 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v79 - v9;
  v84 = [objc_allocWithZone(SPDiscoveredAccessoryProductInformation) init];
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v11 = qword_10177C218;
  v12 = [objc_opt_self() sharedInstance];
  v13 = [v12 isInternalBuild];

  if (v13)
  {
    v14 = String._bridgeToObjectiveC()();
    v15 = [v11 BOOLForKey:v14];
  }

  else
  {
    v15 = 0;
  }

  v16 = type metadata accessor for BeaconProductInfoRecord(0);
  [v84 setIsManagedAccessory:v1[v16[5]] & 1];
  v80 = v10;
  if (v15)
  {
    v17 = 0;
  }

  else
  {
    v17 = v1[v16[8]];
  }

  v81 = v8;
  v83 = v4;
  v18 = v84;
  [v84 setEligibleForPairing:v17];
  [v18 setHidden:v1[v16[9]]];
  v19 = String._bridgeToObjectiveC()();
  [v18 setModelName:v19];

  v82 = v16;
  v20 = String._bridgeToObjectiveC()();
  [v18 setManufacturerName:v20];

  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v21 = sub_101073D24(v87[0]);

  v85 = v21;
  v23 = *(v21 + 16);
  if (v23)
  {
    v24 = (v85 + 56);
    do
    {
      v25 = *v24;
      __chkstk_darwin(v22);
      *(&v79 - 2) = v1;

      sub_1012BBCA0(sub_10083C2A8, v25, v87);

      if (v87[2])
      {
        v26 = v1;
        v27 = v87[0];
        v28 = objc_allocWithZone(SPBeaconRole);
        v29 = String._bridgeToObjectiveC()();
        v30 = String._bridgeToObjectiveC()();
        v31 = [v28 initWithRoleId:v27 role:v29 roleEmoji:v30];

        v1 = v26;
        [v84 setDefaultRole:v31];
      }

      v24 += 4;
      --v23;
    }

    while (v23);
  }

  v32 = v82;
  v33 = v80;
  sub_1000D2A70(&v1[v82[15]], v80, &unk_101696AC0, &qword_101390A60);
  v34 = type metadata accessor for URL();
  v35 = *(v34 - 8);
  v36 = *(v35 + 48);
  v38 = 0;
  if (v36(v33, 1, v34) != 1)
  {
    URL._bridgeToObjectiveC()(v37);
    v38 = v39;
    (*(v35 + 8))(v33, v34);
  }

  [v84 setDisableURL:v38];

  v40 = v81;
  if (*&v1[v32[14] + 8])
  {
    v41 = String._bridgeToObjectiveC()();
  }

  else
  {
    v41 = 0;
  }

  [v84 setAppBundleIdentifier:v41];

  sub_1000D2A70(&v1[v32[16]], v40, &unk_101696AC0, &qword_101390A60);
  if (v36(v40, 1, v34) == 1)
  {
    v43 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v42);
    v43 = v44;
    (*(v35 + 8))(v40, v34);
  }

  v46 = v83;
  v45 = v84;
  [v84 setLowBatteryInfoURL:v43];

  v47 = String._bridgeToObjectiveC()();
  [v45 setVersion:v47];

  [v45 setTxPower:*&v1[v32[18]]];
  sub_1000D2A70(&v1[v32[19]], v46, &qword_1016A62E8, &qword_1013B3CB0);
  v48 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
  if ((*(*(v48 - 8) + 48))(v46, 1, v48) == 1)
  {
    sub_10000B3A8(v46, &qword_1016A62E8, &qword_1013B3CB0);
    v49 = 20.0;
  }

  else
  {
    v50 = v46 + *(v48 + 56);
    v51 = *v50;
    v52 = *(v50 + 8);
    sub_10083E698(v46, type metadata accessor for AccessoryInfoResponseContent.Configuration);
    v49 = 20.0;
    if (!v52)
    {
      v49 = v51;
    }
  }

  v53 = v84;
  [v84 setRangeDistanceInMeters:v49];
  [v53 setCapabilities:sub_1010D73CC(*&v1[v32[20]])];
  v54 = *&v1[v32[21]];
  if (v54)
  {
    v55 = *(v54 + 16);
    if (v55)
    {
      v81 = v1;
      v86 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v56 = v54 + 48;
      do
      {
        v58 = *(v56 - 16);
        v59 = *(v56 + 32);
        v83 = *(v56 + 24);
        LODWORD(v85) = *(v56 + 40);
        v60 = objc_allocWithZone(SPAccessoryLayoutTemplate);

        v61 = [v60 init];
        [v61 setPartIdentifier:v58];
        v62 = String._bridgeToObjectiveC()();
        [v61 setPartType:v62];

        v63 = String._bridgeToObjectiveC()();
        [v61 setPartName:v63];

        if (v59)
        {

          v57 = String._bridgeToObjectiveC()();
        }

        else
        {
          v57 = 0;
        }

        v56 += 64;
        [v61 setPartSymbol:v57];

        [v61 setIsPrimary:v85 & 1];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v55;
      }

      while (v55);
      v32 = v82;
    }

    sub_10083C300();
    v64.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v64.super.isa = 0;
  }

  v65 = v84;
  [v84 setLayoutTemplate:v64.super.isa];

  URL._bridgeToObjectiveC()(v32[22]);
  v67 = v66;
  [v65 setDefaultHeroIcon:v66];

  URL._bridgeToObjectiveC()(v32[23]);
  v69 = v68;
  [v65 setDefaultListIcon:v68];

  URL._bridgeToObjectiveC()(v32[24]);
  v71 = v70;
  [v65 setDefaultHeroIcon2x:v70];

  URL._bridgeToObjectiveC()(v32[25]);
  v73 = v72;
  [v65 setDefaultListIcon2x:v72];

  URL._bridgeToObjectiveC()(v32[26]);
  v75 = v74;
  [v65 setDefaultHeroIcon3x:v74];

  URL._bridgeToObjectiveC()(v32[27]);
  v77 = v76;
  [v65 setDefaultListIcon3x:v76];

  return v65;
}

uint64_t sub_10083C2A8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = v2 + *(type metadata accessor for BeaconProductInfoRecord(0) + 52);
  return (v3 == *v4) & ~*(v4 + 8);
}

unint64_t sub_10083C300()
{
  result = qword_1016A62F0;
  if (!qword_1016A62F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1016A62F0);
  }

  return result;
}

void sub_10083C34C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 56);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *(v4 - 24);
      v8 = *v4;
      v4 += 32;
      Hasher._combine(_:)(v7);
      sub_100017D5C(v5, v6);
      Data.hash(into:)();
      Hasher._combine(_:)(v8);
      sub_100016590(v5, v6);
      --v3;
    }

    while (v3);
  }
}

void sub_10083C3DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = a2 + 48;
    do
    {
      v6 = *(v4 + 32);
      v7 = *(v4 + 40);
      Hasher._combine(_:)(*(v4 - 16));

      String.hash(into:)();
      String.hash(into:)();
      if (v6)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        if (v7 != 2)
        {
          goto LABEL_9;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        if (v7 != 2)
        {
LABEL_9:
          Hasher._combine(_:)(1u);
          v5 = v7 & 1;
          goto LABEL_4;
        }
      }

      v5 = 0;
LABEL_4:
      v4 += 64;
      Hasher._combine(_:)(v5);

      --v3;
    }

    while (v3);
  }
}

unint64_t sub_10083C4FC()
{
  result = qword_1016AAC30;
  if (!qword_1016AAC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AAC30);
  }

  return result;
}

void sub_10083C550(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WildModeTrackingLocation(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a2 + 16);
  Hasher._combine(_:)(v7);
  if (v7)
  {
    v8 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v9 = *(v4 + 72);
    do
    {
      sub_10083E630(v8, v6, type metadata accessor for WildModeTrackingLocation);
      v10 = *v6;
      if (*v6 == 0.0)
      {
        v10 = 0.0;
      }

      Hasher._combine(_:)(*&v10);
      v11 = v6[1];
      if (v11 == 0.0)
      {
        v11 = 0.0;
      }

      Hasher._combine(_:)(*&v11);
      v12 = v6[2];
      if (v12 == 0.0)
      {
        v12 = 0.0;
      }

      Hasher._combine(_:)(*&v12);
      type metadata accessor for Date();
      sub_10083DB3C(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      dispatch thunk of Hashable.hash(into:)();
      sub_10083E698(v6, type metadata accessor for WildModeTrackingLocation);
      v8 += v9;
      --v7;
    }

    while (v7);
  }
}

void sub_10083C728(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v53 = *(v3 - 8);
  __chkstk_darwin(v3);
  v40 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v35 - v6;
  v8 = type metadata accessor for Date();
  v42 = *(v8 - 8);
  __chkstk_darwin(v8);
  v39 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v10 - 8);
  v54 = &v35 - v11;
  v12 = type metadata accessor for RawSearchResult(0);
  v13 = *(v12 - 1);
  __chkstk_darwin(v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 16);
  Hasher._combine(_:)(v16);
  if (v16)
  {
    v52 = &v15[v12[13]];
    v17 = a2 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v18 = v12[5];
    v50 = v12[6];
    v51 = v18;
    v48 = v12[7];
    v49 = (v42 + 48);
    v19 = v12[8];
    v46 = v12[9];
    v47 = v19;
    v20 = v12[10];
    v44 = v12[11];
    v45 = v20;
    v21 = v12[12];
    v37 = (v42 + 8);
    v38 = (v42 + 32);
    v42 = *(v13 + 72);
    v43 = v21;
    v41 = (v53 + 48);
    v53 = v3;
    v36 = v7;
    do
    {
      sub_10083E630(v17, v15, type metadata accessor for RawSearchResult);
      Hasher._combine(_:)(*v15);
      sub_10083DB3C(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      dispatch thunk of Hashable.hash(into:)();
      v23 = *&v15[v50];
      if (v23 == 0.0)
      {
        v23 = 0.0;
      }

      Hasher._combine(_:)(*&v23);
      v24 = *&v15[v48];
      if (v24 == 0.0)
      {
        v24 = 0.0;
      }

      Hasher._combine(_:)(*&v24);
      v25 = *&v15[v47];
      if (v25 == 0.0)
      {
        v25 = 0.0;
      }

      Hasher._combine(_:)(*&v25);
      Hasher._combine(_:)(v15[v46]);
      v26 = v54;
      sub_1000D2A70(&v15[v45], v54, &unk_101696900, &unk_10138B1E0);
      if ((*v49)(v26, 1, v8) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v27 = v39;
        (*v38)(v39, v26, v8);
        Hasher._combine(_:)(1u);
        dispatch thunk of Hashable.hash(into:)();
        (*v37)(v27, v8);
      }

      sub_1000D2A70(&v15[v44], v7, &unk_1016C1120, &qword_1013C49D0);
      if ((*v41)(v7, 1, v3) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v29 = v7;
        v30 = v40;
        sub_10083DB84(v29, v40, type metadata accessor for BeaconKeyManager.IndexInformation);
        Hasher._combine(_:)(1u);
        type metadata accessor for UUID();
        sub_10083DB3C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        v31 = (v30 + *(v3 + 20));
        sub_1000035D0(v31, v31[3]);
        dispatch thunk of RawRepresentable.rawValue.getter();
        Hasher._combine(_:)(v55[0]);
        v32 = v31[3];
        v33 = v31[4];
        sub_1000035D0(v31, v32);
        sub_10002BD40(v32, v33);
        String.hash(into:)();

        v34 = v30;
        v7 = v36;
        sub_10083E698(v34, type metadata accessor for BeaconKeyManager.IndexInformation);
      }

      v28 = v52;
      type metadata accessor for UUID();
      sub_10083DB3C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      if (v28[1])
      {
        v22 = 0;
      }

      else
      {
        v22 = *v28;
        Hasher._combine(_:)(1u);
      }

      v3 = v53;
      Hasher._combine(_:)(v22);
      sub_10083E698(v15, type metadata accessor for RawSearchResult);
      v17 += v42;
      --v16;
    }

    while (v16);
  }
}

BOOL sub_10083CE14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v132 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016A62E8, &qword_1013B3CB0);
  __chkstk_darwin(v8 - 8);
  v10 = &v132 - v9;
  v11 = sub_1000BC4D4(&qword_1016A89D8, &unk_10140A400);
  __chkstk_darwin(v11);
  v13 = &v132 - v12;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v142 = &v132 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v18 = __chkstk_darwin(v17 - 8);
  v140 = &v132 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v143 = &v132 - v20;
  v144 = sub_1000BC4D4(&qword_1016A8910, &qword_1013BE3A0);
  v21 = __chkstk_darwin(v144);
  v141 = &v132 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v145 = &v132 - v23;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v24 = type metadata accessor for BeaconProductInfoRecord(0);
  v25 = v24[5];
  v26 = *(a1 + v25);
  v27 = *(a2 + v25);
  if (v26 == 2)
  {
    if (v27 != 2)
    {
      return 0;
    }
  }

  else
  {
    v28 = 0;
    if (v27 == 2 || ((v27 ^ v26) & 1) != 0)
    {
      return v28;
    }
  }

  v29 = v24[6];
  v31 = *(a1 + v29);
  v30 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  if (v31 != *v32 || v30 != v32[1])
  {
    v139 = v15;
    v33 = v14;
    v34 = v11;
    v35 = v5;
    v36 = v10;
    v37 = v4;
    v38 = v13;
    v39 = a1;
    v40 = a2;
    v41 = v7;
    v42 = v24;
    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v24 = v42;
    v7 = v41;
    a2 = v40;
    a1 = v39;
    v13 = v38;
    v4 = v37;
    v10 = v36;
    v5 = v35;
    v11 = v34;
    v14 = v33;
    v15 = v139;
    if ((v43 & 1) == 0)
    {
      return 0;
    }
  }

  v44 = v24[7];
  v45 = *(a1 + v44);
  v46 = *(a2 + v44);
  if (v45 == 4)
  {
    if (v46 != 4)
    {
      return 0;
    }
  }

  else if (v45 != v46)
  {
    return 0;
  }

  if (*(a1 + v24[8]) != *(a2 + v24[8]) || *(a1 + v24[9]) != *(a2 + v24[9]))
  {
    return 0;
  }

  v48 = v24[10];
  v49 = *(a1 + v48);
  v50 = *(a2 + v48);
  if (v49 == 2)
  {
    if (v50 != 2)
    {
      return 0;
    }

LABEL_23:
    v51 = v24[11];
    v53 = *(a1 + v51);
    v52 = *(a1 + v51 + 8);
    v54 = (a2 + v51);
    v55 = v54[1];
    v56 = v53 == *v54;
    v139 = v15;
    if (!v56 || v52 != v55)
    {
      v57 = v14;
      v58 = v11;
      v59 = v5;
      v60 = v10;
      v61 = v4;
      v62 = v13;
      v63 = a1;
      v64 = a2;
      v65 = v7;
      v66 = v24;
      v67 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v24 = v66;
      v7 = v65;
      a2 = v64;
      a1 = v63;
      v13 = v62;
      v4 = v61;
      v10 = v60;
      v5 = v59;
      v11 = v58;
      v14 = v57;
      v15 = v139;
      if ((v67 & 1) == 0)
      {
        return 0;
      }
    }

    v68 = v24[12];
    v70 = *(a1 + v68);
    v69 = *(a1 + v68 + 8);
    v71 = (a2 + v68);
    if (v70 != *v71 || v69 != v71[1])
    {
      v72 = v14;
      v73 = v11;
      v74 = v5;
      v75 = v10;
      v76 = v4;
      v77 = v13;
      v78 = a1;
      v79 = a2;
      v80 = v7;
      v81 = v24;
      v82 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v24 = v81;
      v7 = v80;
      a2 = v79;
      a1 = v78;
      v13 = v77;
      v4 = v76;
      v10 = v75;
      v5 = v74;
      v11 = v73;
      v14 = v72;
      v15 = v139;
      if ((v82 & 1) == 0)
      {
        return 0;
      }
    }

    v83 = v24[13];
    v84 = (a1 + v83);
    v85 = *(a1 + v83 + 8);
    v86 = (a2 + v83);
    v28 = *(a2 + v83 + 8);
    if (v85)
    {
      if (!v28)
      {
        return v28;
      }
    }

    else
    {
      if (*v84 != *v86)
      {
        LOBYTE(v28) = 1;
      }

      if (v28)
      {
        return 0;
      }
    }

    v87 = v24[14];
    v88 = (a1 + v87);
    v89 = *(a1 + v87 + 8);
    v90 = (a2 + v87);
    v91 = v90[1];
    if (v89)
    {
      if (!v91)
      {
        return 0;
      }

      v135 = v7;
      if (*v88 != *v90 || v89 != v91)
      {
        v92 = v24;
        v93 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v24 = v92;
        if ((v93 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      v135 = v7;
      if (v91)
      {
        return 0;
      }
    }

    v134 = v24;
    v94 = v145;
    v95 = *(v144 + 48);
    v137 = v24[15];
    v138 = v95;
    sub_1000D2A70(a1 + v137, v145, &unk_101696AC0, &qword_101390A60);
    sub_1000D2A70(a2 + v137, v94 + v138, &unk_101696AC0, &qword_101390A60);
    v136 = *(v15 + 48);
    v137 = v15 + 48;
    if (v136(v94, 1, v14) == 1)
    {
      if (v136(v145 + v138, 1, v14) == 1)
      {
        v133 = v13;
        sub_10000B3A8(v145, &unk_101696AC0, &qword_101390A60);
        goto LABEL_50;
      }
    }

    else
    {
      v96 = v145;
      sub_1000D2A70(v145, v143, &unk_101696AC0, &qword_101390A60);
      if (v136(v96 + v138, 1, v14) != 1)
      {
        v133 = v13;
        (*(v15 + 32))(v142, v145 + v138, v14);
        sub_10083DB3C(&qword_1016A8918, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        LODWORD(v138) = dispatch thunk of static Equatable.== infix(_:_:)();
        v100 = *(v15 + 8);
        v100(v142, v14);
        v100(v143, v14);
        sub_10000B3A8(v145, &unk_101696AC0, &qword_101390A60);
        if ((v138 & 1) == 0)
        {
          return 0;
        }

LABEL_50:
        v143 = v11;
        v101 = v134[16];
        v102 = *(v144 + 48);
        v103 = v14;
        v104 = v141;
        sub_1000D2A70(a1 + v101, v141, &unk_101696AC0, &qword_101390A60);
        v145 = v102;
        sub_1000D2A70(a2 + v101, v104 + v102, &unk_101696AC0, &qword_101390A60);
        v105 = v136;
        if (v136(v104, 1, v103) == 1)
        {
          if (v105(v104 + v145, 1, v103) == 1)
          {
            sub_10000B3A8(v104, &unk_101696AC0, &qword_101390A60);
LABEL_58:
            v110 = v134;
            v111 = v134[17];
            v112 = *(a1 + v111);
            v113 = *(a1 + v111 + 8);
            v114 = (a2 + v111);
            if (v112 != *v114 || v113 != v114[1])
            {
              v115 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v110 = v134;
              if ((v115 & 1) == 0)
              {
                return 0;
              }
            }

            if (*(a1 + v110[18]) != *(a2 + v110[18]))
            {
              return 0;
            }

            v116 = v110[19];
            v117 = *(v143 + 48);
            v145 = a1;
            v118 = a1 + v116;
            v119 = v133;
            sub_1000D2A70(v118, v133, &qword_1016A62E8, &qword_1013B3CB0);
            v120 = a2;
            sub_1000D2A70(a2 + v116, v119 + v117, &qword_1016A62E8, &qword_1013B3CB0);
            v121 = *(v5 + 48);
            if (v121(v119, 1, v4) == 1)
            {
              v122 = v119;
              if (v121(v119 + v117, 1, v4) == 1)
              {
                sub_10000B3A8(v119, &qword_1016A62E8, &qword_1013B3CB0);
LABEL_69:
                if (*(v145 + v134[20]) == *(v120 + v134[20]))
                {
                  v126 = v134[21];
                  v127 = *(v145 + v126);
                  v128 = *(v120 + v126);
                  if (v127)
                  {
                    if (!v128 || (sub_10038F298(v127, v128) & 1) == 0)
                    {
                      return 0;
                    }
                  }

                  else if (v128)
                  {
                    return 0;
                  }

                  if ((static URL.== infix(_:_:)() & 1) == 0 || (static URL.== infix(_:_:)() & 1) == 0 || (static URL.== infix(_:_:)() & 1) == 0 || (static URL.== infix(_:_:)() & 1) == 0 || (static URL.== infix(_:_:)() & 1) == 0 || (static URL.== infix(_:_:)() & 1) == 0)
                  {
                    return 0;
                  }

                  v129 = v134[28];
                  v130 = *(v145 + v129);
                  v131 = *(v120 + v129);
                  if (v130 != 2)
                  {
                    return v131 != 2 && ((v131 ^ v130) & 1) == 0;
                  }

                  if (v131 == 2)
                  {
                    return 1;
                  }
                }

                return 0;
              }
            }

            else
            {
              sub_1000D2A70(v119, v10, &qword_1016A62E8, &qword_1013B3CB0);
              v122 = v119;
              if (v121(v119 + v117, 1, v4) != 1)
              {
                v123 = v119 + v117;
                v124 = v135;
                sub_10083DB84(v123, v135, type metadata accessor for AccessoryInfoResponseContent.Configuration);
                v125 = sub_100755284(v10, v124);
                sub_10083E698(v124, type metadata accessor for AccessoryInfoResponseContent.Configuration);
                sub_10083E698(v10, type metadata accessor for AccessoryInfoResponseContent.Configuration);
                sub_10000B3A8(v119, &qword_1016A62E8, &qword_1013B3CB0);
                if (!v125)
                {
                  return 0;
                }

                goto LABEL_69;
              }

              sub_10083E698(v10, type metadata accessor for AccessoryInfoResponseContent.Configuration);
            }

            v97 = &qword_1016A89D8;
            v98 = &unk_10140A400;
            v99 = v122;
LABEL_56:
            sub_10000B3A8(v99, v97, v98);
            return 0;
          }
        }

        else
        {
          v106 = v140;
          sub_1000D2A70(v104, v140, &unk_101696AC0, &qword_101390A60);
          if (v105(v104 + v145, 1, v103) != 1)
          {
            v107 = v139;
            v108 = v142;
            (*(v139 + 32))(v142, v104 + v145, v103);
            sub_10083DB3C(&qword_1016A8918, &type metadata accessor for URL, &protocol conformance descriptor for URL);
            LODWORD(v145) = dispatch thunk of static Equatable.== infix(_:_:)();
            v109 = *(v107 + 8);
            v109(v108, v103);
            v109(v106, v103);
            sub_10000B3A8(v141, &unk_101696AC0, &qword_101390A60);
            if ((v145 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_58;
          }

          (*(v139 + 8))(v106, v103);
        }

        v97 = &qword_1016A8910;
        v98 = &qword_1013BE3A0;
        v99 = v104;
        goto LABEL_56;
      }

      (*(v15 + 8))(v143, v14);
    }

    v97 = &qword_1016A8910;
    v98 = &qword_1013BE3A0;
    v99 = v145;
    goto LABEL_56;
  }

  v28 = 0;
  if (v50 != 2 && ((v50 ^ v49) & 1) == 0)
  {
    goto LABEL_23;
  }

  return v28;
}

uint64_t sub_10083DB3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10083DB84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for BeaconProductInfoRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 24;
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

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BeaconProductInfoRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10083DD40()
{
  result = qword_1016AAC40;
  if (!qword_1016AAC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AAC40);
  }

  return result;
}

unint64_t sub_10083DD98()
{
  result = qword_1016AAC48;
  if (!qword_1016AAC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AAC48);
  }

  return result;
}

unint64_t sub_10083DDF0()
{
  result = qword_1016AAC50;
  if (!qword_1016AAC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AAC50);
  }

  return result;
}

uint64_t sub_10083DE44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010135E6C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7250796D646E6966 && a2 == 0xEF6449746375646FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5479726574746162 && a2 == 0xEB00000000657079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001013610F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6564646968 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000010135E700 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6D614E6C65646F6DLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010134D650 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x52746C7561666564 && a2 == 0xEB00000000656C6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010135E820 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x55656C6261736964 && a2 == 0xEA00000000004C52 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010135E860 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x7265776F507874 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x696C696261706163 && a2 == 0xEC00000073656974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x655474756F79616CLL && a2 == 0xEE006574616C706DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x48746C7561666564 && a2 == 0xEF6E6F63496F7265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x4C746C7561666564 && a2 == 0xEF6E6F6349747369 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010135E740 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010135E760 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010135E780 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010135E7A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x6761547269417369 && a2 == 0xE800000000000000)
  {

    return 24;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 24;
    }

    else
    {
      return 25;
    }
  }
}

uint64_t sub_10083E630(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10083E698(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}