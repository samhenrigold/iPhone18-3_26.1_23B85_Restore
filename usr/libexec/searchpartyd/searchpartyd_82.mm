Swift::Int sub_100910B10(uint64_t *a1)
{
  v2 = *(type metadata accessor for BeaconObservation(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100B32020(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_10091835C(v6);
  *a1 = v3;
  return result;
}

char *sub_100910BB8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100B321EC(v2);
  }

  v3 = *(v2 + 2);
  v19[0] = (v2 + 32);
  v19[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = v2[v9 + 32];
        v12 = qword_1013C6530[v11];
        v13 = v8;
        v14 = v10;
        do
        {
          v15 = *v14;
          if (v12 >= qword_1013C6530[v15])
          {
            break;
          }

          v14[1] = v15;
          *v14-- = v11;
        }

        while (!__CFADD__(v13++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v17[0] = v7 + 4;
    v17[1] = v6;
    sub_100919994(v17, v18, v19, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

void sub_100910D08()
{
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = [objc_allocWithZone(FMStateCapture) init];
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100910F7C;
  *(v3 + 24) = v1;
  v6[4] = sub_100910F84;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_10015013C;
  v6[3] = &unk_10163B818;
  v4 = _Block_copy(v6);

  [v2 setStateCaptureBlock:v4];
  _Block_release(v4);

  v5 = *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_stateCapture);
  *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_stateCapture) = v2;
}

char *sub_100910E58@<X0>(char **a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 280);
    v5 = Strong;

    v6 = objc_autoreleasePoolPush();
    sub_100910F8C(v5, v4, &v13);
    objc_autoreleasePoolPop(v6);
    v7 = v13;
    v8 = objc_autoreleasePoolPush();
    sub_100913B8C(v5, &v13);
    objc_autoreleasePoolPop(v8);
    v9 = v13;
    v10 = objc_autoreleasePoolPush();
    sub_100914760(v5, &v13);
    objc_autoreleasePoolPop(v10);

    v12 = v13;
  }

  else
  {
    v7 = sub_10090A388(_swiftEmptyArrayStorage);
    v12 = sub_10090A5A4(_swiftEmptyArrayStorage);
    result = sub_10090A388(_swiftEmptyArrayStorage);
    v9 = result;
  }

  *a2 = v7;
  a2[1] = v12;
  a2[2] = v9;
  return result;
}

uint64_t sub_100910F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v46 = a2;
  v47 = type metadata accessor for BeaconState(0);
  v6 = *(v47 - 8);
  __chkstk_darwin(v47);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016AE310, &unk_1013C57E0);
  v9 = __chkstk_darwin(v8 - 8);
  v42 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v44 = &v35 - v11;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1;
  v16 = sub_100007F54();
  v17 = v16[2];
  if (v17)
  {
    v36 = a3;
    v37 = v3;
    v35 = v16;
    v18 = (v16 + 4);
    v43 = (v6 + 48);
    v19 = (v13 + 8);
    v39 = v6;
    v40 = (v6 + 56);
    v20 = _swiftEmptyDictionarySingleton;
    v38 = v13;
    do
    {
      v24 = v12;
      sub_10001F280(v18, v48);
      v26 = v49;
      v25 = v50;
      sub_1000035D0(v48, v49);
      (*(*(*(v25 + 8) + 8) + 32))(v26);
      v27 = v44;
      sub_1009113C8(v48, v46, v44);
      sub_100007BAC(v48);
      if ((*v43)(v27, 1, v47) == 1)
      {
        sub_10000B3A8(v27, &qword_1016AE310, &unk_1013C57E0);
        v28 = sub_1000210EC(v15);
        if (v29)
        {
          v30 = v28;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v51 = v20;
          v32 = v42;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_10100B518();
            v32 = v42;
            v20 = v51;
          }

          (*(v38 + 8))(v20[6] + *(v38 + 72) * v30, v24);
          sub_10091AA88(v20[7] + *(v39 + 72) * v30, v32, type metadata accessor for BeaconState);
          sub_100AF95D4(v30, v20);
          v33 = 0;
        }

        else
        {
          v33 = 1;
          v32 = v42;
        }

        (*v40)(v32, v33, 1, v47);
        sub_10000B3A8(v32, &qword_1016AE310, &unk_1013C57E0);
        (*v19)(v15, v24);
        v12 = v24;
      }

      else
      {
        v21 = v27;
        v22 = v41;
        sub_10091AA88(v21, v41, type metadata accessor for BeaconState);
        v23 = swift_isUniquelyReferenced_nonNull_native();
        v51 = v20;
        sub_1010000C4(v22, v15, v23);
        v12 = v24;
        (*v19)(v15, v24);
        v20 = v51;
      }

      v18 += 40;
      --v17;
    }

    while (v17);

    a3 = v36;
  }

  else
  {

    v20 = _swiftEmptyDictionarySingleton;
  }

  *a3 = v20;
  return result;
}

uint64_t sub_1009113C8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v326 = a2;
  v317 = a3;
  v291 = type metadata accessor for SharedBeaconState(0);
  __chkstk_darwin(v291);
  v290 = &v289 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v298 = type metadata accessor for SharedBeaconRecord(0);
  v5 = __chkstk_darwin(v298);
  v289 = &v289 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v296 = &v289 - v7;
  v306 = type metadata accessor for OwnedBeaconState(0);
  __chkstk_darwin(v306);
  v305 = &v289 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  v10 = __chkstk_darwin(v9 - 8);
  v301 = &v289 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v302 = &v289 - v12;
  v304 = type metadata accessor for ProductInfoState(0);
  v13 = __chkstk_darwin(v304);
  v303 = &v289 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v316 = &v289 - v15;
  v345 = type metadata accessor for ShareRecord(0);
  v292 = *(v345 - 1);
  __chkstk_darwin(v345);
  v344 = &v289 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v336 = type metadata accessor for ShareState(0);
  v335 = *(v336 - 8);
  __chkstk_darwin(v336);
  v346 = &v289 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000BC4D4(&qword_1016B1500, &unk_1013C57F0);
  __chkstk_darwin(v18 - 8);
  v300 = &v289 - v19;
  v20 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v20 - 8);
  v331 = (&v289 - v21);
  v297 = type metadata accessor for DirectorySequence();
  v295 = *(v297 - 8);
  __chkstk_darwin(v297);
  v342 = &v289 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v343 = type metadata accessor for URL();
  v333 = *(v343 - 1);
  v23 = __chkstk_darwin(v343);
  v294 = &v289 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v332 = (&v289 - v25);
  v320 = type metadata accessor for OwnedBeaconRecord(0);
  v26 = __chkstk_darwin(v320);
  v318 = &v289 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v327 = (&v289 - v28);
  v29 = sub_1000BC4D4(&qword_10169F328, &unk_1013CB040);
  __chkstk_darwin(v29 - 8);
  v315 = &v289 - v30;
  v314 = type metadata accessor for KeyAlignmentRecord(0);
  v313 = *(v314 - 8);
  __chkstk_darwin(v314);
  v293 = &v289 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v33 = __chkstk_darwin(v32 - 8);
  v334 = &v289 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v329 = &v289 - v35;
  v308 = sub_1000BC4D4(&unk_1016AF8A0, &unk_10139D7C0);
  v36 = __chkstk_darwin(v308);
  v328 = (&v289 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = __chkstk_darwin(v36);
  v309 = (&v289 - v39);
  __chkstk_darwin(v38);
  v321 = &v289 - v40;
  v41 = type metadata accessor for UUID();
  v339 = *(v41 - 8);
  __chkstk_darwin(v41);
  v43 = &v289 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v340 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  __chkstk_darwin(v340);
  v45 = &v289 - v44;
  v338 = type metadata accessor for Date();
  v325 = *(v338 - 8);
  v46 = __chkstk_darwin(v338);
  v299 = &v289 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __chkstk_darwin(v46);
  v330 = &v289 - v49;
  v50 = __chkstk_darwin(v48);
  v310 = &v289 - v51;
  v52 = __chkstk_darwin(v50);
  v322 = &v289 - v53;
  __chkstk_darwin(v52);
  v323 = &v289 - v54;
  v55 = type metadata accessor for BeaconNamingRecord(0);
  v56 = *(v55 - 1);
  v57 = __chkstk_darwin(v55);
  v59 = &v289 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v61 = (&v289 - v60);
  v62 = a1;
  v64 = a1[3];
  v63 = a1[4];
  v65 = v62;
  sub_1000035D0(v62, v64);
  (*(*(*(v63 + 8) + 8) + 32))(v64);
  v347 = v326;
  v348 = v43;
  QueueSynchronizer.conditionalSync<A>(_:)();
  v312 = 0;
  v67 = v339 + 8;
  v66 = *(v339 + 8);
  v340 = v43;
  v337 = v41;
  v311 = v66;
  v66(v43, v41);
  v68 = (*(v56 + 48))(v45, 1, v55);
  v319 = v55;
  v307 = v67;
  if (v68 == 1)
  {
    sub_10000B3A8(v45, &unk_1016B29E0, &unk_1013B70E0);
    UUID.init()();
    v69 = v65[3];
    v70 = v65[4];
    sub_1000035D0(v65, v69);
    (*(*(*(v70 + 8) + 8) + 32))(v69);
    *v61 = xmmword_10138C660;
    *(v61 + v55[7]) = -1;
    v71 = (v61 + v55[8]);
    *v71 = 0xD000000000000017;
    v71[1] = 0x8000000101364E30;
    v72 = (v61 + v55[9]);
    *v72 = 0;
    v72[1] = 0;
  }

  else
  {
    sub_10091AA88(v45, v59, type metadata accessor for BeaconNamingRecord);
    sub_10091AA88(v59, v61, type metadata accessor for BeaconNamingRecord);
  }

  v73 = v65;
  sub_10001F280(v65, &v352);
  v74 = swift_allocObject();
  *(v74 + 16) = v341;
  sub_100031694(&v352, v74 + 24);

  v75 = v321;
  unsafeFromAsyncTask<A>(_:)();

  v76 = v75;
  v77 = v309;
  sub_1000D2A70(v75, v309, &unk_1016AF8A0, &unk_10139D7C0);
  v78 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v79 = *(*(v78 - 8) + 48);
  v80 = v79(v77, 1, v78);
  v81 = v329;
  v82 = v311;
  v83 = v328;
  if (v80 == 1)
  {
    sub_10000B3A8(v77, &unk_1016AF8A0, &unk_10139D7C0);
    v308 = 1;
  }

  else
  {
    v308 = *v77;
    sub_10000B3A8(v77, &unk_1016C8FC0, &unk_10139D7D0);
  }

  v324 = v61;
  v84 = v76;
  sub_1000D2A70(v76, v83, &unk_1016AF8A0, &unk_10139D7C0);
  if (v79(v83, 1, v78) == 1)
  {
    sub_10000B3A8(v83, &unk_1016AF8A0, &unk_10139D7C0);
    v85 = v325;
    v86 = v338;
    (*(v325 + 56))(v81, 1, 1, v338);
    v87 = v73[3];
    v88 = v73[4];
    sub_1000035D0(v73, v87);
    v89 = v87;
    v90 = v310;
    (*(v88 + 192))(v89, v88);
    v91 = v82;
    if ((*(v85 + 48))(v81, 1, v86) != 1)
    {
      sub_10000B3A8(v81, &unk_101696900, &unk_10138B1E0);
    }
  }

  else
  {
    v85 = v325;
    v92 = v83 + *(v78 + 36);
    v93 = v83;
    v86 = v338;
    (*(v325 + 16))(v81, v92, v338);
    sub_10000B3A8(v93, &unk_1016C8FC0, &unk_10139D7D0);
    (*(v85 + 56))(v81, 0, 1, v86);
    v90 = v310;
    (*(v85 + 32))(v310, v81, v86);
    v91 = v82;
  }

  v94 = *(v85 + 32);
  v329 = (v85 + 32);
  v328 = v94;
  v94(v323, v90, v86);
  v95 = v73[3];
  v96 = v73[4];
  sub_1000035D0(v73, v95);
  v97 = v340;
  (*(*(*(v96 + 8) + 8) + 32))(v95);
  v98 = v315;
  sub_100B2DA4C(v315);
  v91(v97, v337);
  v99 = v314;
  if ((*(v313 + 48))(v98, 1, v314) == 1)
  {
    sub_10000B3A8(v98, &qword_10169F328, &unk_1013CB040);
    static Date.distantPast.getter();
    v314 = 0;
  }

  else
  {
    v100 = v98;
    v101 = v293;
    sub_10091AA88(v100, v293, type metadata accessor for KeyAlignmentRecord);
    v102 = *(v99 + 32);
    v314 = *(v101 + *(v99 + 28));
    (*(v85 + 16))(v322, v101 + v102, v86);
    sub_10091AAF0(v101, type metadata accessor for KeyAlignmentRecord);
  }

  v103 = v324;
  v104 = v327;
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v106 = v73[3];
  v105 = v73[4];
  sub_1000035D0(v73, v106);
  v107 = v340;
  (*(*(*(v105 + 8) + 8) + 32))(v106);
  v108 = sub_100035730(v107, 0, 0);
  v91(v107, v337);
  *&v352 = v108;

  v109 = v312;
  sub_100910B10(&v352);
  if (!v109)
  {

    v110 = sub_10091ACD0(v352);

    sub_10001F280(v73, &v352);
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    v111 = v320;
    v112 = swift_dynamicCast();
    v113 = v319;
    v114 = v331;
    if (v112)
    {
      v315 = v110;
      sub_10091AA88(v104, v318, type metadata accessor for OwnedBeaconRecord);
      v115 = *(v111 + 20);
      v116 = *(v326 + 168);
      v117 = objc_autoreleasePoolPush();
      if (qword_101694468 != -1)
      {
        swift_once();
      }

      v118 = v343;
      sub_1000076D4(v343, qword_10177A518);
      v313 = v115;
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:isDirectory:)();

      objc_autoreleasePoolPop(v117);
      v351 = _swiftEmptyArrayStorage;
      v349 = _swiftEmptyArrayStorage;
      v119 = [objc_opt_self() defaultManager];
      NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

      DirectorySequence.next()();
      v120 = v118;
      v121 = *(v333 + 48);
      v122 = v121(v114, 1, v118);
      v123 = v294;
      if (v122 != 1)
      {
        v124 = *(v333 + 32);
        v125 = (v333 + 8);
        do
        {
          v124(v123, v114, v120);
          v126 = objc_autoreleasePoolPush();
          sub_1005FF9CC(v123, v116, &v351, &v349);
          objc_autoreleasePoolPop(v126);
          (*v125)(v123, v343);
          DirectorySequence.next()();
          v120 = v343;
        }

        while (v121(v114, 1, v343) != 1);
      }

      (*(v295 + 8))(v342, v297);
      v127 = static os_log_type_t.debug.getter();
      sub_10039722C();
      v128 = v120;
      v129 = static OS_os_log.default.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v130 = swift_allocObject();
      *(v130 + 16) = xmmword_10138BBE0;
      v131 = v351;
      v132 = v351[2];
      *(v130 + 56) = &type metadata for Int;
      *(v130 + 64) = &protocol witness table for Int;
      *(v130 + 32) = v132;
      sub_100024938(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);

      v133 = v332;
      v134 = dispatch thunk of CustomStringConvertible.description.getter();
      v136 = v135;
      *(v130 + 96) = &type metadata for String;
      *(v130 + 104) = sub_100008C00();
      *(v130 + 72) = v134;
      *(v130 + 80) = v136;
      os_log(_:dso:log:_:_:)(v127, &_mh_execute_header, v129, "Found %i records at %@", 22, 2, v130);

      (*(v333 + 8))(v133, v128);

      v137 = v131[2];
      if (v137)
      {
        v351 = _swiftEmptyArrayStorage;
        sub_1011253A4(0, v137, 0);
        v138 = v351;
        v139 = (*(v292 + 80) + 32) & ~*(v292 + 80);
        v312 = v131;
        v140 = (v131 + v139);
        v333 = *(v292 + 72);
        v332 = (v325 + 48);
        v327 = (v325 + 8);
        v331 = (v339 + 16);
        v141 = v338;
        v142 = v346;
        do
        {
          v342 = v137;
          v341 = v140;
          v143 = v344;
          sub_10091B164(v140, v344, type metadata accessor for ShareRecord);
          v144 = v143 + v345[8];
          v145 = v334;
          sub_1000D2A70(v144, v334, &unk_101696900, &unk_10138B1E0);
          v146 = (*v332)(v145, 1, v141);
          v343 = v138;
          if (v146 == 1)
          {
            sub_10000B3A8(v145, &unk_101696900, &unk_10138B1E0);
            v340 = 0;
            v339 = 0xE000000000000000;
          }

          else
          {
            v147 = v330;
            v328(v330, v145, v141);
            v340 = Date.iso8601.getter();
            v339 = v148;
            (*v327)(v147, v141);
          }

          v149 = v345;
          v150 = v344;
          (*v331)(v142, v344 + v345[5], v337);
          v151 = Date.iso8601.getter();
          v153 = v152;
          v154 = v150 + v149[9];
          v155 = *(v154 + 8);
          v156 = *(v154 + 16);
          v157 = (v150 + v149[10]);
          v158 = *v157;
          v159 = v157[1];
          v160 = v149[12];
          v161 = *(v150 + v149[11]);
          v162 = *(v150 + v160);

          v163 = sub_1008BA9C0(v162);
          v165 = v164;
          sub_10091AAF0(v150, type metadata accessor for ShareRecord);
          v166 = v336;
          v167 = &v346[*(v336 + 20)];
          *v167 = v151;
          v167[1] = v153;
          v168 = &v346[v166[6]];
          v169 = v339;
          *v168 = v340;
          v168[1] = v169;
          v170 = &v346[v166[7]];
          *v170 = v155;
          *(v170 + 1) = v156;
          v171 = &v346[v166[8]];
          *v171 = v158;
          *(v171 + 1) = v159;
          v142 = v346;
          *&v346[v166[9]] = v161;
          v172 = (v142 + v166[10]);
          *v172 = v163;
          v172[1] = v165;
          v138 = v343;
          v351 = v343;
          v174 = v343[2];
          v173 = v343[3];
          if (v174 >= v173 >> 1)
          {
            sub_1011253A4((v173 > 1), v174 + 1, 1);
            v138 = v351;
          }

          v138[2] = v174 + 1;
          sub_10091AA88(v142, v138 + ((*(v335 + 80) + 32) & ~*(v335 + 80)) + *(v335 + 72) * v174, type metadata accessor for ShareState);
          v140 = (v341 + v333);
          v137 = (v342 - 1);
          v141 = v338;
        }

        while (v342 != 1);
      }

      else
      {

        v138 = _swiftEmptyArrayStorage;
        v141 = v338;
      }

      v227 = v318;
      v228 = v319;
      v229 = v300;
      sub_100ABD310(v300);
      v230 = v229;
      v231 = type metadata accessor for LeashRecord(0);
      v232 = (*(*(v231 - 8) + 48))(v230, 1, v231);
      v233 = v303;
      v234 = v302;
      v235 = v313;
      if (v232 == 1)
      {
        sub_10000B3A8(v230, &qword_1016B1500, &unk_1013C57F0);
        LODWORD(v346) = 0;
      }

      else
      {
        v236 = *(v230 + *(v231 + 24));

        sub_10091AAF0(v230, type metadata accessor for LeashRecord);
        LODWORD(v346) = sub_1005C8A30(v227 + v235, v236);
      }

      v237 = sub_1006FD6D0(v227, v326);
      sub_100AC1584(v227 + v235, v234);
      sub_1000D2A70(v234, v233, &unk_1016AF8C0, &unk_1013A07A0);
      v238 = v301;
      sub_1000D2A70(v234, v301, &unk_1016AF8C0, &unk_1013A07A0);
      v239 = type metadata accessor for BeaconProductInfoRecord(0);
      v240 = (*(*(v239 - 8) + 48))(v238, 1, v239);
      v343 = v138;
      v345 = v237;
      if (v240 == 1)
      {
        sub_10000B3A8(v234, &unk_1016AF8C0, &unk_1013A07A0);
        v227 = v318;
        sub_10000B3A8(v238, &unk_1016AF8C0, &unk_1013A07A0);
        v241 = 0;
        v242 = 0;
      }

      else
      {
        v243 = *(v238 + *(v239 + 80));
        sub_10091AAF0(v238, type metadata accessor for BeaconProductInfoRecord);
        v241 = sub_1010D840C(v243);
        v242 = v244;
        sub_10000B3A8(v234, &unk_1016AF8C0, &unk_1013A07A0);
      }

      v245 = (v233 + *(v304 + 20));
      *v245 = v241;
      v245[1] = v242;
      v341 = type metadata accessor for ProductInfoState;
      sub_10091AA88(v233, v316, type metadata accessor for ProductInfoState);
      v246 = v320;
      v247 = v306;
      v248 = v305;
      sub_10091B164(v227 + *(v320 + 24), &v305[*(v306 + 20)], type metadata accessor for StableIdentifier);
      v249 = v325;
      v250 = v299;
      (*(v325 + 16))(v299, v227 + v246[8], v141);
      v344 = Date.iso8601.getter();
      v342 = v251;
      v335 = *(v249 + 8);
      (v335)(v250, v141);
      v252 = v228[7];
      v253 = (v324 + v228[8]);
      v254 = v253[1];
      v339 = *v253;
      v329 = v254;
      v255 = v246[15];
      v256 = (v227 + v246[14]);
      v257 = v256[1];
      v337 = *v256;
      v258 = v246[17];
      v319 = *(v227 + v246[16]);
      v259 = v319;
      v325 = *(v227 + v258);
      v260 = v325;
      v261 = *(v227 + v255 + 8);
      v336 = *(v227 + v255);
      v340 = *(v324 + v252);
      LOBYTE(v250) = *(v227 + v246[19]);

      v331 = sub_1012BE5DC(v250);
      v330 = v262;
      LODWORD(v326) = sub_100E0EA64(v259, v260);
      v263 = v323;
      v328 = Date.iso8601.getter();
      v327 = v264;
      v265 = v322;
      v333 = Date.iso8601.getter();
      v332 = v266;
      LODWORD(v334) = sub_10111F67C(8, v345);

      sub_1000D2A70(v227 + v246[7], v248 + v247[24], &qword_1016980D0, &unk_10138F3B0);
      LOWORD(v250) = sub_100D608FC();
      sub_10091AA88(v316, v248 + v247[26], v341);
      sub_10091AAF0(v227, type metadata accessor for OwnedBeaconRecord);
      sub_10000B3A8(v321, &unk_1016AF8A0, &unk_10139D7C0);
      v267 = v338;
      v268 = v335;
      (v335)(v265, v338);
      v268(v263, v267);
      sub_10091AAF0(v324, type metadata accessor for BeaconNamingRecord);
      *v248 = 0x61654264656E774FLL;
      v248[1] = 0xEB000000006E6F63;
      v269 = (v248 + v247[6]);
      v270 = v342;
      *v269 = v344;
      v269[1] = v270;
      v271 = (v248 + v247[7]);
      v272 = v329;
      *v271 = v339;
      v271[1] = v272;
      v273 = (v248 + v247[8]);
      *v273 = v337;
      v273[1] = v257;
      v274 = (v248 + v247[9]);
      *v274 = v336;
      v274[1] = v261;
      *(v248 + v247[10]) = v319;
      *(v248 + v247[11]) = v325;
      *(v248 + v247[12]) = v340;
      v275 = (v248 + v247[13]);
      v276 = v330;
      *v275 = v331;
      v275[1] = v276;
      *(v248 + v247[14]) = v326 & 1;
      *(v248 + v247[15]) = v308;
      v277 = (v248 + v247[16]);
      v278 = v327;
      *v277 = v328;
      v277[1] = v278;
      *(v248 + v247[17]) = 1;
      *(v248 + v247[18]) = v314;
      v279 = (v248 + v247[19]);
      v280 = v332;
      *v279 = v333;
      v279[1] = v280;
      *(v248 + v247[20]) = v343;
      *(v248 + v247[21]) = v315;
      *(v248 + v247[22]) = v346 & 1;
      *(v248 + v247[23]) = v334 & 1;
      v281 = v248 + v247[25];
      *v281 = v250;
      v281[1] = BYTE1(v250) & 1;
      v282 = v317;
      sub_10091AA88(v248, v317, type metadata accessor for OwnedBeaconState);
      v210 = type metadata accessor for BeaconState(0);
      swift_storeEnumTagMultiPayload();
      v211 = *(*(v210 - 8) + 56);
      v212 = v282;
    }

    else
    {
      v175 = v296;
      v176 = v298;
      if (!swift_dynamicCast())
      {

        if (qword_101694BE8 != -1)
        {
          swift_once();
        }

        v213 = type metadata accessor for Logger();
        sub_1000076D4(v213, qword_10177BA08);
        sub_10001F280(v73, &v351);
        v214 = Logger.logObject.getter();
        v215 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v214, v215))
        {
          v216 = swift_slowAlloc();
          v217 = v103;
          v218 = swift_slowAlloc();
          v350 = v218;
          *v216 = 136315138;
          sub_10001F280(&v351, &v349);
          v219 = String.init<A>(describing:)();
          v220 = v84;
          v222 = v221;
          sub_100007BAC(&v351);
          v223 = sub_1000136BC(v219, v222, &v350);

          *(v216 + 4) = v223;
          _os_log_impl(&_mh_execute_header, v214, v215, "Unhandled beacon type: %s", v216, 0xCu);
          sub_100007BAC(v218);

          sub_10000B3A8(v220, &unk_1016AF8A0, &unk_10139D7C0);
          v224 = *(v325 + 8);
          v225 = v338;
          v224(v322, v338);
          v224(v323, v225);
          v226 = v217;
        }

        else
        {

          sub_100007BAC(&v351);
          sub_10000B3A8(v84, &unk_1016AF8A0, &unk_10139D7C0);
          v285 = *(v325 + 8);
          v286 = v338;
          v285(v322, v338);
          v285(v323, v286);
          v226 = v103;
        }

        sub_10091AAF0(v226, type metadata accessor for BeaconNamingRecord);
        v287 = v317;
        v284 = type metadata accessor for BeaconState(0);
        v211 = *(*(v284 - 8) + 56);
        v212 = v287;
        v283 = 1;
        goto LABEL_49;
      }

      v177 = v289;
      sub_10091AA88(v175, v289, type metadata accessor for SharedBeaconRecord);
      v178 = v291;
      v179 = v290;
      (*(v339 + 16))(&v290[*(v291 + 20)], v177 + v176[6], v337);
      v180 = v176[8];
      v181 = v177 + v176[7];
      v182 = *(v181 + 16);
      v345 = *(v181 + 8);
      v331 = v182;
      v183 = *(v177 + v180 + 8);
      v346 = *(v177 + v180);
      v184 = v113[7];
      v185 = (v103 + v113[8]);
      v186 = v185[1];
      v340 = *v185;
      v187 = v176[10];
      v188 = (v177 + v176[9]);
      v339 = *v188;
      v189 = v103;
      v190 = v188[1];
      v191 = v176[12];
      v342 = *(v177 + v176[11]);
      v344 = *(v177 + v191);
      LODWORD(v343) = *(v177 + v176[13]);
      v192 = *(v177 + v187 + 8);
      v337 = *(v177 + v187);
      v330 = v192;
      v341 = *(v189 + v184);
      v193 = *(v177 + v176[16]);

      v336 = sub_1008BA9C0(v193);
      v315 = v110;
      v194 = v317;
      v335 = v195;
      v334 = *(v177 + v176[17]);
      v333 = Date.iso8601.getter();
      v332 = v196;
      sub_1000D2A70(v177 + v176[19], v179 + v178[19], &qword_1016980D0, &unk_10138F3B0);
      sub_10091AAF0(v177, type metadata accessor for SharedBeaconRecord);
      sub_10000B3A8(v321, &unk_1016AF8A0, &unk_10139D7C0);
      v197 = *(v325 + 8);
      v198 = v338;
      v197(v322, v338);
      v197(v323, v198);
      sub_10091AAF0(v324, type metadata accessor for BeaconNamingRecord);
      strcpy(v179, "SharedBeacon");
      *(v179 + 13) = 0;
      *(v179 + 14) = -5120;
      v199 = (v179 + v178[6]);
      v200 = v331;
      *v199 = v345;
      v199[1] = v200;
      v201 = (v179 + v178[7]);
      *v201 = v346;
      v201[1] = v183;
      v202 = (v179 + v178[8]);
      *v202 = v340;
      v202[1] = v186;
      v203 = (v179 + v178[9]);
      *v203 = v339;
      v203[1] = v190;
      v204 = (v179 + v178[10]);
      v205 = v330;
      *v204 = v337;
      v204[1] = v205;
      *(v179 + v178[11]) = v342;
      *(v179 + v178[12]) = v344;
      *(v179 + v178[13]) = v343;
      *(v179 + v178[14]) = v341;
      v206 = (v179 + v178[15]);
      v207 = v335;
      *v206 = v336;
      v206[1] = v207;
      *(v179 + v178[16]) = v334;
      v208 = (v179 + v178[17]);
      v209 = v332;
      *v208 = v333;
      v208[1] = v209;
      *(v179 + v178[18]) = v315;
      sub_10091AA88(v179, v194, type metadata accessor for SharedBeaconState);
      v210 = type metadata accessor for BeaconState(0);
      swift_storeEnumTagMultiPayload();
      v211 = *(*(v210 - 8) + 56);
      v212 = v194;
    }

    v283 = 0;
    v284 = v210;
LABEL_49:
    v211(v212, v283, 1, v284);
    return sub_100007BAC(&v352);
  }

  __break(1u);
  return result;
}

uint64_t sub_100913B8C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for BeaconState(0);
  v56 = *(v5 - 8);
  v57 = v5;
  __chkstk_darwin(v5);
  v63 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016AE310, &unk_1013C57E0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v51 - v11;
  v62 = type metadata accessor for UUID();
  v13 = *(v62 - 8);
  __chkstk_darwin(v62);
  v15 = v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = a1;
  v16 = sub_100008CA0();
  v17 = sub_100009324(v16);

  v18 = sub_1000066C8();
  v19 = sub_100009924(v18);

  v65[0] = v17;
  sub_100009AF4(v19);
  v20 = v65[0];
  v61 = *(v65[0] + 16);
  if (v61)
  {
    v55 = v10;
    v51[0] = a2;
    v51[1] = v2;
    v21 = 0;
    v22 = v65[0] + 32;
    v23 = v57;
    v24 = v13;
    v51[2] = v13 + 16;
    v59 = (v13 + 8);
    v60 = (v56 + 48);
    v25 = _swiftEmptyDictionarySingleton;
    v53 = v24;
    v54 = (v56 + 56);
    v52 = v12;
    v58 = v65[0];
    while (v21 < *(v20 + 16))
    {
      sub_10001F280(v22, v65);
      v28 = v66;
      v29 = v67;
      sub_1000035D0(v65, v66);
      (*(v29 + 8))(v28, v29);
      sub_100914178(v65, v12);
      sub_100007BAC(v65);
      if ((*v60)(v12, 1, v23) == 1)
      {
        sub_10000B3A8(v12, &qword_1016AE310, &unk_1013C57E0);
        v30 = sub_1000210EC(v15);
        if (v31)
        {
          v32 = v30;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v68 = v25;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_10100B518();
            v25 = v68;
          }

          v34 = *(v53 + 8);
          v35 = v62;
          v34(v25[6] + *(v53 + 72) * v32, v62);
          v27 = v55;
          sub_10091AA88(v25[7] + *(v56 + 72) * v32, v55, type metadata accessor for BeaconState);
          sub_100AF95D4(v32, v25);
          v34(v15, v35);
          v26 = 0;
          v12 = v52;
          v23 = v57;
        }

        else
        {
          (*v59)(v15, v62);
          v26 = 1;
          v27 = v55;
        }

        (*v54)(v27, v26, 1, v23);
        sub_10000B3A8(v27, &qword_1016AE310, &unk_1013C57E0);
      }

      else
      {
        sub_10091AA88(v12, v63, type metadata accessor for BeaconState);
        v36 = swift_isUniquelyReferenced_nonNull_native();
        v68 = v25;
        v38 = sub_1000210EC(v15);
        v39 = v25[2];
        v40 = (v37 & 1) == 0;
        v41 = v39 + v40;
        if (__OFADD__(v39, v40))
        {
          goto LABEL_26;
        }

        v42 = v37;
        if (v25[3] >= v41)
        {
          if ((v36 & 1) == 0)
          {
            sub_10100B518();
          }
        }

        else
        {
          sub_100FF2C6C(v41, v36);
          v43 = sub_1000210EC(v15);
          if ((v42 & 1) != (v44 & 1))
          {
            goto LABEL_28;
          }

          v38 = v43;
        }

        v23 = v57;
        v25 = v68;
        if (v42)
        {
          sub_10091AA24(v63, v68[7] + *(v56 + 72) * v38);
          (*v59)(v15, v62);
        }

        else
        {
          v68[(v38 >> 6) + 8] |= 1 << v38;
          v45 = v53;
          v46 = v62;
          (*(v53 + 16))(v25[6] + *(v53 + 72) * v38, v15, v62);
          sub_10091AA88(v63, v25[7] + *(v56 + 72) * v38, type metadata accessor for BeaconState);
          (*(v45 + 8))(v15, v46);
          v47 = v25[2];
          v48 = __OFADD__(v47, 1);
          v49 = v47 + 1;
          if (v48)
          {
            goto LABEL_27;
          }

          v25[2] = v49;
        }
      }

      ++v21;
      v22 += 40;
      v20 = v58;
      if (v61 == v21)
      {

        a2 = v51[0];
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {

    v25 = _swiftEmptyDictionarySingleton;
LABEL_24:
    *a2 = v25;
  }

  return result;
}

uint64_t sub_100914178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SharedBeaconGroup(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v40 - v8;
  v10 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v10 - 8);
  v12 = &v40 - v11;
  v13 = type metadata accessor for OwnedBeaconGroup(0);
  v14 = __chkstk_darwin(v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v40 - v17;
  sub_10001F280(a1, v48);
  sub_1000BC4D4(&qword_10169EF38, &unk_1013AB040);
  if (swift_dynamicCast())
  {
    sub_10091AA88(v18, v16, type metadata accessor for OwnedBeaconGroup);
    v19 = MACAddress.description.getter();
    v43 = v20;
    v44 = v19;
    v21 = v13[9];
    v42 = v16[v13[8]];
    v22 = *&v16[v21 + 8];
    v41 = *&v16[v21];
    type metadata accessor for OwnedBeaconGroup.PairingState(0);
    sub_10091AB50();
    sub_100101BAC();
    sub_100024938(&qword_1016AE320, type metadata accessor for OwnedBeaconGroup.PairingState, &unk_1013AFC58);

    v23 = Dictionary<>.stringRepresentation.getter();
    if (qword_101694920 != -1)
    {
      swift_once();
    }

    v24 = sub_100035730(&v16[v13[6]], 0, 0);
    v25 = sub_1005232D8(v12, v24);

    sub_10000B3A8(v12, &unk_101696900, &unk_10138B1E0);
    sub_10091AAF0(v16, type metadata accessor for OwnedBeaconGroup);
    *a2 = 0xD000000000000010;
    *(a2 + 8) = 0x8000000101364E10;
    v26 = v43;
    *(a2 + 16) = v44;
    *(a2 + 24) = v26;
    *(a2 + 32) = v42;
    *(a2 + 40) = v41;
    *(a2 + 48) = v22;
    *(a2 + 56) = v23;
    *(a2 + 64) = v25 & 1;
    v27 = type metadata accessor for BeaconState(0);
    goto LABEL_7;
  }

  if (swift_dynamicCast())
  {
    sub_10091AA88(v9, v7, type metadata accessor for SharedBeaconGroup);
    v28 = *&v7[*(v4 + 20)];

    sub_10091AAF0(v7, type metadata accessor for SharedBeaconGroup);
    *a2 = 0xD000000000000011;
    *(a2 + 8) = 0x8000000101364DF0;
    *(a2 + 16) = v28;
    v27 = type metadata accessor for BeaconState(0);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    (*(*(v27 - 8) + 56))(a2, 0, 1, v27);
    return sub_100007BAC(v48);
  }

  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_1000076D4(v29, qword_10177BA08);
  sub_10001F280(a1, v47);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v46 = v33;
    *v32 = 136315138;
    sub_10001F280(v47, v45);
    v34 = String.init<A>(describing:)();
    v36 = v35;
    sub_100007BAC(v47);
    v37 = sub_1000136BC(v34, v36, &v46);

    *(v32 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v30, v31, "Unhandled beacon group type: %s", v32, 0xCu);
    sub_100007BAC(v33);
  }

  else
  {

    sub_100007BAC(v47);
  }

  v38 = type metadata accessor for BeaconState(0);
  (*(*(v38 - 8) + 56))(a2, 1, 1, v38);
  return sub_100007BAC(v48);
}

uint64_t sub_100914760@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v47 = a2;
  v60 = type metadata accessor for UUID();
  v49 = *(v60 - 8);
  __chkstk_darwin(v60);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for SafeLocation(0);
  v56 = *(v54 - 8);
  __chkstk_darwin(v54);
  v59 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v6 - 8);
  v8 = &v47 - v7;
  v50 = type metadata accessor for DirectorySequence();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v10 = (&v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  isUniquelyReferenced_nonNull_native = type metadata accessor for URL();
  v12 = *(isUniquelyReferenced_nonNull_native - 8);
  v13 = __chkstk_darwin(isUniquelyReferenced_nonNull_native);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v47 - v16;
  v53 = *(*(a1 + 280) + 168);
  if (qword_101694F88 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v55 = v4;
    v18 = sub_1000076D4(isUniquelyReferenced_nonNull_native, qword_10177C268);
    (*(v12 + 16))(v17, v18, isUniquelyReferenced_nonNull_native);
    v62 = _swiftEmptyArrayStorage;
    v61 = _swiftEmptyArrayStorage;
    v19 = [objc_opt_self() defaultManager];
    v51 = v17;
    NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

    v57 = v10;
    DirectorySequence.next()();
    v20 = *(v12 + 48);
    v21 = v20(v8, 1, isUniquelyReferenced_nonNull_native);
    v52 = v12;
    if (v21 != 1)
    {
      break;
    }

LABEL_6:
    (*(v48 + 8))(v57, v50);
    v12 = static os_log_type_t.debug.getter();
    sub_10039722C();
    v17 = static OS_os_log.default.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_10138BBE0;
    v4 = v62;
    v26 = *(v62 + 2);
    *(v25 + 56) = &type metadata for Int;
    *(v25 + 64) = &protocol witness table for Int;
    *(v25 + 32) = v26;
    sub_100024938(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);

    v27 = v51;
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v29;
    *(v25 + 96) = &type metadata for String;
    *(v25 + 104) = sub_100008C00();
    *(v25 + 72) = v28;
    *(v25 + 80) = v15;
    os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v17, "Found %i records at %@", 22, 2, v25);

    (*(v52 + 1))(v27, isUniquelyReferenced_nonNull_native);

    v53 = *(v4 + 2);
    if (!v53)
    {
      v30 = _swiftEmptyDictionarySingleton;
LABEL_22:

      *v47 = v30;
      return result;
    }

    v8 = 0;
    v10 = v55;
    v52 = &v4[(*(v56 + 80) + 32) & ~*(v56 + 80)];
    v57 = (v49 + 16);
    v51 = (v49 + 8);
    v30 = _swiftEmptyDictionarySingleton;
    v50 = v4;
    while (v8 < *(v4 + 2))
    {
      v32 = v59;
      sub_10091B164(&v52[*(v56 + 72) * v8], v59, type metadata accessor for SafeLocation);
      v15 = v54;
      v33 = *v57;
      (*v57)(v10, v32 + *(v54 + 20), v60);
      v4 = *(*(v32 + *(v15 + 52)) + 16);
      v17 = *(v32 + *(v15 + 48));
      v12 = *(v32 + *(v15 + 24));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62 = v30;
      v34 = sub_1000210EC(v10);
      v36 = *(v30 + 2);
      v37 = (v35 & 1) == 0;
      v38 = __OFADD__(v36, v37);
      v39 = v36 + v37;
      if (v38)
      {
        goto LABEL_24;
      }

      v15 = v35;
      if (*(v30 + 3) < v39)
      {
        sub_100FF2CA8(v39, isUniquelyReferenced_nonNull_native);
        v34 = sub_1000210EC(v10);
        if ((v15 & 1) != (v40 & 1))
        {
          goto LABEL_28;
        }

LABEL_16:
        v30 = v62;
        if (v15)
        {
          goto LABEL_8;
        }

        goto LABEL_17;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_16;
      }

      isUniquelyReferenced_nonNull_native = v34;
      sub_10100B554();
      v34 = isUniquelyReferenced_nonNull_native;
      v30 = v62;
      if (v15)
      {
LABEL_8:
        v31 = *(v30 + 7) + 40 * v34;
        strcpy(v31, "SafeLocation");
        *(v31 + 13) = 0;
        *(v31 + 14) = -5120;
        *(v31 + 16) = v4;
        *(v31 + 24) = v17;
        *(v31 + 32) = v12;

        (*v51)(v10, v60);
        goto LABEL_9;
      }

LABEL_17:
      *&v30[8 * (v34 >> 6) + 64] |= 1 << v34;
      v41 = v49;
      v15 = v34;
      isUniquelyReferenced_nonNull_native = v60;
      v33((*(v30 + 6) + *(v49 + 72) * v34), v55, v60);
      v42 = *(v30 + 7) + 40 * v15;
      strcpy(v42, "SafeLocation");
      *(v42 + 13) = 0;
      *(v42 + 14) = -5120;
      *(v42 + 16) = v4;
      *(v42 + 24) = v17;
      *(v42 + 32) = v12;
      v43 = *(v41 + 8);
      v10 = v55;
      v43(v55, isUniquelyReferenced_nonNull_native);
      v44 = *(v30 + 2);
      v38 = __OFADD__(v44, 1);
      v45 = v44 + 1;
      if (v38)
      {
        goto LABEL_25;
      }

      *(v30 + 2) = v45;
LABEL_9:
      ++v8;
      sub_10091AAF0(v59, type metadata accessor for SafeLocation);
      v4 = v50;
      if (v53 == v8)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
  }

  v22 = *(v12 + 32);
  while (1)
  {
    v22(v15, v8, isUniquelyReferenced_nonNull_native);
    v23 = objc_autoreleasePoolPush();
    v24 = v58;
    sub_1006005CC(v15, v53, &v62, &v61);
    v58 = v24;
    if (v24)
    {
      break;
    }

    objc_autoreleasePoolPop(v23);
    (*(v12 + 8))(v15, isUniquelyReferenced_nonNull_native);
    DirectorySequence.next()();
    if (v20(v8, 1, isUniquelyReferenced_nonNull_native) == 1)
    {
      goto LABEL_6;
    }
  }

  objc_autoreleasePoolPop(v23);
  __break(1u);
LABEL_28:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100914FCC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for Date();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[10] = v5;
  *v5 = v2;
  v5[1] = sub_100915118;

  return daemon.getter();
}

uint64_t sub_100915118(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 88) = a1;

  v3 = swift_task_alloc();
  *(v2 + 96) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_100024938(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100024938(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_100738710;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1009152F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1009153A8;

  return sub_100914FCC(a1, a3);
}

uint64_t sub_1009153A8()
{

  if (v0)
  {

    v1 = sub_100915568;
  }

  else
  {
    v1 = sub_1009154C0;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1009154C0()
{
  v1 = *(v0 + 16);
  v2 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100915568()
{
  v1 = *(v0 + 16);
  v2 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100915610(void *a1)
{
  v2 = v1;
  v21 = type metadata accessor for SharedBeaconState(0);
  __chkstk_darwin(v21);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OwnedBeaconState(0);
  __chkstk_darwin(v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BeaconState(0);
  __chkstk_darwin(v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_10091B164(v2, v11, type metadata accessor for BeaconState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v13 = *(v11 + 1);
      v14 = *(v11 + 3);
      v29 = *(v11 + 2);
      v30 = v14;
      v15 = *(v11 + 1);
      v27 = *v11;
      v28 = v15;
      v16 = *(v11 + 3);
      v24 = v29;
      v25 = v16;
      v31 = v11[64];
      v26 = v11[64];
      v23 = v13;
      v22 = v27;
      sub_10015049C(v32, v33);
      sub_10091C090();
      dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
      sub_10091C0E4(&v27);
    }

    else
    {
      v17 = *(v11 + 1);
      v18 = *(v11 + 2);
      *&v27 = *v11;
      *(&v27 + 1) = v17;
      *&v28 = v18;
      sub_10015049C(v32, v33);
      sub_10091C03C();
      dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_10091AA88(v11, v5, type metadata accessor for SharedBeaconState);
    sub_10015049C(v32, v33);
    sub_100024938(&qword_1016AE7D8, type metadata accessor for SharedBeaconState, &unk_1013C5A64);
    dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
    sub_10091AAF0(v5, type metadata accessor for SharedBeaconState);
  }

  else
  {
    sub_10091AA88(v11, v8, type metadata accessor for OwnedBeaconState);
    sub_10015049C(v32, v33);
    sub_100024938(&qword_1016AE7E0, type metadata accessor for OwnedBeaconState, &unk_1013C5A8C);
    dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
    sub_10091AAF0(v8, type metadata accessor for OwnedBeaconState);
  }

  return sub_100007BAC(v32);
}

uint64_t sub_100915A08(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016AE810, &qword_1013C5BD0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000035D0(a1, a1[3]);
  sub_10091C2EC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_100915BC8()
{
  v1 = 1701869940;
  v2 = 0x6C61766F72707061;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100915C4C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10091CE58(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100915C74(uint64_t a1)
{
  v2 = sub_10091C2EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100915CB0(uint64_t a1)
{
  v2 = sub_10091C2EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100915D28(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016AE758, &qword_1013C5B88);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000035D0(a1, a1[3]);
  sub_10091BDB4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for BeaconProductInfoRecord(0);
  sub_100024938(&qword_1016AAC20, type metadata accessor for BeaconProductInfoRecord, &unk_1013BE2D8);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for ProductInfoState(0);
    v8[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100915EE4()
{
  if (*v0)
  {
    return 0x696C696261706163;
  }

  else
  {
    return 0x49746375646F7270;
  }
}

uint64_t sub_100915F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x49746375646F7270 && a2 == 0xEB000000006F666ELL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x696C696261706163 && a2 == 0xEC00000073656974)
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

uint64_t sub_100916014(uint64_t a1)
{
  v2 = sub_10091BDB4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100916050(uint64_t a1)
{
  v2 = sub_10091BDB4();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1009160A4(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0x6449656C62617473;
      break;
    case 2:
      result = 0x44676E6972696170;
      break;
    case 3:
      result = 1701667182;
      break;
    case 4:
      result = 0x6C65646F6DLL;
      break;
    case 5:
      result = 0x65566D6574737973;
      break;
    case 6:
      result = 0x6449726F646E6576;
      break;
    case 7:
    case 22:
      result = 0x49746375646F7270;
      break;
    case 8:
      result = 1701605234;
      break;
    case 9:
      result = 0x4C79726574746162;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0xD000000000000018;
      break;
    case 12:
      result = 0xD00000000000001FLL;
      break;
    case 13:
      result = 0xD000000000000018;
      break;
    case 14:
    case 19:
      result = 0xD00000000000001DLL;
      break;
    case 15:
      result = 0xD000000000000024;
      break;
    case 16:
      result = 0x736572616873;
      break;
    case 17:
      result = 0x746176726573626FLL;
      break;
    case 18:
      result = 0xD00000000000001BLL;
      break;
    case 20:
      result = 0x644970756F7267;
      break;
    case 21:
      result = 0x644974726170;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100916310(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016AE768, &qword_1013C5B90);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_10091BE08();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for OwnedBeaconState(0);
    LOBYTE(v12) = 1;
    type metadata accessor for StableIdentifier(0);
    sub_100024938(&qword_1016AE778, type metadata accessor for StableIdentifier, &unk_1014055F0);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 12;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 13;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 14;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 15;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = *(v3 + *(v9 + 80));
    HIBYTE(v11) = 16;
    sub_1000BC4D4(&qword_1016AE780, &qword_1013C5B98);
    sub_10091BE5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + *(v9 + 84));
    HIBYTE(v11) = 17;
    sub_1000BC4D4(&qword_1016AE798, &qword_1013C5BA0);
    sub_10091BF10();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 18;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 19;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 20;
    type metadata accessor for UUID();
    sub_100024938(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v12) = 21;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v12) = 22;
    type metadata accessor for ProductInfoState(0);
    sub_100024938(&qword_1016AE7B0, type metadata accessor for ProductInfoState, &unk_1013C5AB4);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100916978(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016AE748, &qword_1013C5B80);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000035D0(a1, a1[3]);
  sub_10091BD60();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for UUID();
  sub_100024938(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for ShareState(0);
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[11] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[10] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[9] = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100916C2C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10091CFD4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100916C60(uint64_t a1)
{
  v2 = sub_10091BE08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100916C9C(uint64_t a1)
{
  v2 = sub_10091BE08();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100916CF0()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x7079546572616873;
  if (v1 == 5)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0xD000000000000015;
  if (v1 == 3)
  {
    v4 = 0x6148656572616873;
  }

  if (*v0 > 4u)
  {
    v4 = v3;
  }

  v5 = 0x7461446572616873;
  if (v1 != 1)
  {
    v5 = 0x6974617269707865;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100916DE4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10091D6F4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100916E0C(uint64_t a1)
{
  v2 = sub_10091BD60();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100916E48(uint64_t a1)
{
  v2 = sub_10091BD60();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100916E9C(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0x6564496572616873;
      break;
    case 2:
      result = 0x6E614872656E776FLL;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 1701667182;
      break;
    case 5:
      result = 0x6C65646F6DLL;
      break;
    case 6:
      result = 0x65566D6574737973;
      break;
    case 7:
      result = 0x6449726F646E6576;
      break;
    case 8:
      result = 0x49746375646F7270;
      break;
    case 9:
      result = 0x6465747065636361;
      break;
    case 10:
      result = 1701605234;
      break;
    case 11:
      result = 0x7079546572616873;
      break;
    case 12:
      result = 0x7369747265766461;
      break;
    case 13:
      result = 0x7461446572616873;
      break;
    case 14:
      result = 0x746176726573626FLL;
      break;
    case 15:
      result = 0x644970756F7267;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10091705C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016AE7B8, &qword_1013C5BA8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_10091BFE8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for SharedBeaconState(0);
    LOBYTE(v12) = 1;
    type metadata accessor for UUID();
    sub_100024938(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 12;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 13;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = *(v3 + *(v9 + 72));
    v11[15] = 14;
    sub_1000BC4D4(&qword_1016AE798, &qword_1013C5BA0);
    sub_10091BF10();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 15;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1009174E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10091D960(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100917518(uint64_t a1)
{
  v2 = sub_10091BFE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100917554(uint64_t a1)
{
  v2 = sub_10091BFE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1009175A8(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016AE800, &unk_1013C5BC0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_10091C21C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v14 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = *(v3 + 56);
    v10[15] = 4;
    sub_1000BC4D4(&qword_101698DD8, &qword_1013C44B0);
    sub_10091C270();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[14] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1009177FC()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 1701667182;
  v4 = 0x614D6E6F63616562;
  if (v1 != 4)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x657264644163616DLL;
  if (v1 != 1)
  {
    v5 = 0xD000000000000016;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1009178B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10091DE84(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1009178DC(uint64_t a1)
{
  v2 = sub_10091C21C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100917918(uint64_t a1)
{
  v2 = sub_10091C21C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100917998(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v6 = sub_1000BC4D4(&qword_1016AE7E8, &unk_1013C5BB0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  sub_1000035D0(a1, a1[3]);
  sub_10091C114();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v11[1] = v11[0];
    v12 = 1;
    sub_1000BC4D4(&qword_1016AF8E0, &qword_101393130);
    sub_10091C168();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100917B3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a3;
  v8 = sub_1000BC4D4(&qword_1016AE6F8, &qword_1013C5B58);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_1000035D0(a1, a1[3]);
  sub_10091BABC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v14 = 0;
  sub_1000BC4D4(&qword_1016AE708, &qword_1013C5B60);
  sub_10091BB10();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v15 = v13;
    v14 = 1;
    sub_1000BC4D4(&qword_1016AE720, &qword_1013C5B68);
    sub_10091BBFC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = a4;
    v14 = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100917D3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v6 = sub_1000BC4D4(&qword_1016AE738, &unk_1013C5B70);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  sub_1000035D0(a1, a1[3]);
  sub_10091BD0C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v11[1] = v11[0];
    v12 = 1;
    sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
    sub_1001E8254();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100917EE0()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_100917F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000101364F60 == a2)
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

uint64_t sub_100917FFC(uint64_t a1)
{
  v2 = sub_10091C114();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100918038(uint64_t a1)
{
  v2 = sub_10091C114();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100918094()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x70756F72476C6C61;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F636165426C6C61;
  }
}

uint64_t sub_1009180FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10091E0A0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100918124(uint64_t a1)
{
  v2 = sub_10091BABC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100918160(uint64_t a1)
{
  v2 = sub_10091BABC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1009181BC()
{
  if (*v0)
  {
    return 0x7365746164;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1009181EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7365746164 && a2 == 0xE500000000000000)
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

uint64_t sub_1009182C4(uint64_t a1)
{
  v2 = sub_10091BD0C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100918300(uint64_t a1)
{
  v2 = sub_10091BD0C();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10091835C(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for BeaconObservation(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for BeaconObservation(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1009188E4(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100918488(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100918488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v59 = sub_1000BC4D4(&qword_1016AE328, &qword_1013C5818);
  v8 = __chkstk_darwin(v59);
  v58 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v47 - v10;
  v61 = type metadata accessor for BeaconObservation(0);
  v12 = __chkstk_darwin(v61);
  v56 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v67 = &v47 - v15;
  result = __chkstk_darwin(v14);
  v66 = &v47 - v18;
  v49 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v17 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v54 = -v20;
    v55 = v19;
    v22 = a1 - a3;
    v48 = v20;
    v23 = v19 + v20 * a3;
    v57 = v11;
LABEL_5:
    v52 = v21;
    v53 = a3;
    v50 = v23;
    v51 = v22;
    v24 = v22;
    while (1)
    {
      v64 = v24;
      v65 = v23;
      v25 = v23;
      v26 = v66;
      sub_10091B164(v25, v66, type metadata accessor for BeaconObservation);
      v63 = v21;
      v27 = v21;
      v28 = v67;
      sub_10091B164(v27, v67, type metadata accessor for BeaconObservation);
      v30 = *(v61 + 20);
      v29 = *(v61 + 24);
      v31 = *(v26 + v29);
      v62 = *(v28 + v29);
      *v11 = v31;
      v32 = v59;
      v33 = *(v59 + 48);
      v34 = type metadata accessor for Date();
      v35 = v11;
      v36 = *(*(v34 - 8) + 16);
      v60 = v33;
      v36(&v35[v33], v26 + v30, v34);
      v37 = v58;
      v38 = v62;
      *v58 = v62;
      v36((v37 + *(v32 + 48)), v28 + v30, v34);
      v39 = qword_1013C6530[v31];
      v40 = qword_1013C6530[v38];
      if (v39 == v40)
      {
        sub_100024938(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v11 = v57;
        v41 = dispatch thunk of static Comparable.< infix(_:_:)();
        sub_10000B3A8(v37, &qword_1016AE328, &qword_1013C5818);
        sub_10000B3A8(v11, &qword_1016AE328, &qword_1013C5818);
      }

      else
      {
        v11 = v57;
        sub_10000B3A8(v57, &qword_1016AE328, &qword_1013C5818);
        sub_10000B3A8(v37, &qword_1016AE328, &qword_1013C5818);
        v41 = v39 < v40;
      }

      sub_10091AAF0(v67, type metadata accessor for BeaconObservation);
      result = sub_10091AAF0(v66, type metadata accessor for BeaconObservation);
      v43 = v64;
      v42 = v65;
      v44 = v63;
      if ((v41 & 1) == 0)
      {
LABEL_4:
        a3 = v53 + 1;
        v21 = v52 + v48;
        v22 = v51 - 1;
        v23 = v50 + v48;
        if (v53 + 1 == v49)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v55)
      {
        break;
      }

      v45 = v56;
      sub_10091AA88(v65, v56, type metadata accessor for BeaconObservation);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10091AA88(v45, v44, type metadata accessor for BeaconObservation);
      v21 = v44 + v54;
      v23 = v42 + v54;
      v46 = __CFADD__(v43, 1);
      v24 = v43 + 1;
      if (v46)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1009188E4(int64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v183 = a4;
  v181 = a1;
  v202 = sub_1000BC4D4(&qword_1016AE328, &qword_1013C5818);
  v7 = __chkstk_darwin(v202);
  v9 = &v175 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v175 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v175 - v14;
  v16 = __chkstk_darwin(v13);
  v190 = &v175 - v17;
  v18 = __chkstk_darwin(v16);
  v176 = (&v175 - v19);
  __chkstk_darwin(v18);
  v180 = &v175 - v20;
  v204 = type metadata accessor for BeaconObservation(0);
  v21 = *(v204 - 8);
  v22 = __chkstk_darwin(v204);
  v185 = &v175 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v200 = &v175 - v25;
  v26 = __chkstk_darwin(v24);
  v211 = &v175 - v27;
  v28 = __chkstk_darwin(v26);
  v210 = &v175 - v29;
  v30 = __chkstk_darwin(v28);
  v197 = &v175 - v31;
  v32 = __chkstk_darwin(v30);
  v196 = &v175 - v33;
  v34 = __chkstk_darwin(v32);
  v179 = &v175 - v35;
  result = __chkstk_darwin(v34);
  v178 = &v175 - v37;
  v38 = *(a3 + 8);
  if (v38 < 1)
  {
    v41 = a3;
    v40 = _swiftEmptyArrayStorage;
LABEL_110:
    v42 = *v181;
    if (!*v181)
    {
      goto LABEL_148;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_142:
      result = sub_100B31E68(v40);
      v40 = result;
    }

    v212 = v40;
    v170 = *(v40 + 16);
    if (v170 >= 2)
    {
      while (*v41)
      {
        v171 = v40;
        v40 = *(v40 + 16 * v170);
        v172 = v171;
        v173 = *&v171[16 * v170 + 24];
        sub_100919F10(*v41 + *(v21 + 72) * v40, *v41 + *(v21 + 72) * *&v171[16 * v170 + 16], *v41 + *(v21 + 72) * v173, v42);
        if (v5)
        {
        }

        if (v173 < v40)
        {
          goto LABEL_135;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v172 = sub_100B31E68(v172);
        }

        if (v170 - 2 >= *(v172 + 2))
        {
          goto LABEL_136;
        }

        v174 = &v172[16 * v170];
        *v174 = v40;
        v174[1] = v173;
        v212 = v172;
        result = sub_100B31DDC(v170 - 1);
        v40 = v212;
        v170 = *(v212 + 16);
        if (v170 <= 1)
        {
        }
      }

      goto LABEL_146;
    }
  }

  v186 = v15;
  v39 = 0;
  v40 = _swiftEmptyArrayStorage;
  v41 = a3;
  v182 = a3;
  v192 = v21;
  v203 = v12;
  v201 = v9;
  while (1)
  {
    v42 = v39 + 1;
    v193 = v40;
    v184 = v39;
    if (v39 + 1 >= v38)
    {
      v65 = v183;
    }

    else
    {
      v43 = v39;
      v189 = v38;
      v177 = v5;
      v44 = *v41;
      v45 = *(v21 + 72);
      v194 = v39 + 1;
      v46 = v178;
      sub_10091B164(v44 + v45 * v42, v178, type metadata accessor for BeaconObservation);
      v195 = v45;
      v209 = v44;
      v47 = v179;
      sub_10091B164(v44 + v45 * v43, v179, type metadata accessor for BeaconObservation);
      v49 = *(v204 + 20);
      v48 = *(v204 + 24);
      v208 = *(v46 + v48);
      v50 = *(v47 + v48);
      v206 = v49;
      v207 = v50;
      v51 = v180;
      *v180 = v208;
      v52 = v202;
      v53 = *(v202 + 48);
      v205 = v53;
      v54 = type metadata accessor for Date();
      v55 = *(v54 - 8);
      v56 = *(v55 + 16);
      v57 = v55 + 16;
      v58 = &v51[v53];
      v59 = v206;
      v56(v58, v46 + v206, v54);
      v41 = v176;
      v60 = v207;
      *v176 = v207;
      v61 = v41 + *(v52 + 48);
      v188 = v56;
      v187 = v57;
      v56(v61, v47 + v59, v54);
      v62 = qword_1013C6530[v208];
      v63 = qword_1013C6530[v60];
      v208 = v54;
      if (v62 == v63)
      {
        sub_100024938(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v64 = v180;
        LODWORD(v191) = dispatch thunk of static Comparable.< infix(_:_:)();
        sub_10000B3A8(v41, &qword_1016AE328, &qword_1013C5818);
        sub_10000B3A8(v64, &qword_1016AE328, &qword_1013C5818);
      }

      else
      {
        sub_10000B3A8(v180, &qword_1016AE328, &qword_1013C5818);
        sub_10000B3A8(v41, &qword_1016AE328, &qword_1013C5818);
        LODWORD(v191) = v62 < v63;
      }

      v66 = v190;
      sub_10091AAF0(v179, type metadata accessor for BeaconObservation);
      sub_10091AAF0(v178, type metadata accessor for BeaconObservation);
      v67 = v184 + 2;
      v68 = v194;
      v69 = v195 * (v184 + 2);
      result = v209 + v69;
      v70 = v195 * v194;
      v42 = v209 + v195 * v194;
      v40 = v193;
      do
      {
        v21 = v67;
        v73 = v68;
        v72 = v70;
        v74 = v69;
        if (v67 >= v189)
        {
          break;
        }

        v209 = v68;
        v205 = v69;
        v206 = v70;
        v207 = v67;
        v199 = result;
        v75 = v196;
        sub_10091B164(result, v196, type metadata accessor for BeaconObservation);
        v198 = v42;
        v76 = v197;
        sub_10091B164(v42, v197, type metadata accessor for BeaconObservation);
        v78 = *(v204 + 20);
        v77 = *(v204 + 24);
        v79 = *(v75 + v77);
        v80 = *(v76 + v77);
        *v66 = v79;
        v81 = v202;
        v82 = &v66[*(v202 + 48)];
        v83 = v188;
        v188(v82, v75 + v78, v208);
        v84 = v186;
        *v186 = v80;
        v83(v84 + *(v81 + 48), v76 + v78, v208);
        v85 = qword_1013C6530[v79];
        v86 = qword_1013C6530[v80];
        if (v85 == v86)
        {
          sub_100024938(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          v66 = v190;
          v71 = dispatch thunk of static Comparable.< infix(_:_:)();
          sub_10000B3A8(v84, &qword_1016AE328, &qword_1013C5818);
          sub_10000B3A8(v66, &qword_1016AE328, &qword_1013C5818);
        }

        else
        {
          v66 = v190;
          sub_10000B3A8(v190, &qword_1016AE328, &qword_1013C5818);
          sub_10000B3A8(v84, &qword_1016AE328, &qword_1013C5818);
          v71 = v85 < v86;
        }

        v40 = v193;
        v41 = type metadata accessor for BeaconObservation;
        sub_10091AAF0(v197, type metadata accessor for BeaconObservation);
        sub_10091AAF0(v196, type metadata accessor for BeaconObservation);
        v72 = v206;
        v21 = v207;
        v67 = v207 + 1;
        result = v199 + v195;
        v42 = v198 + v195;
        v73 = v209;
        v68 = v209 + 1;
        v70 = v206 + v195;
        v74 = v205;
        v69 = v205 + v195;
      }

      while ((v191 & 1) == (v71 & 1));
      if (v191)
      {
        v5 = v177;
        v65 = v183;
        if (v21 < v184)
        {
          goto LABEL_139;
        }

        if (v184 < v21)
        {
          v87 = v184 * v195;
          v88 = v184;
          while (1)
          {
            if (v88 == v73)
            {
              goto LABEL_23;
            }

            v209 = v73;
            v91 = *v182;
            if (!*v182)
            {
              goto LABEL_145;
            }

            v92 = v72;
            sub_10091AA88(v91 + v87, v185, type metadata accessor for BeaconObservation);
            v89 = v92;
            if (v87 < v92 || v91 + v87 >= (v91 + v74))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else
            {
              if (v87 == v92)
              {
                goto LABEL_22;
              }

              swift_arrayInitWithTakeBackToFront();
            }

            v89 = v92;
LABEL_22:
            result = sub_10091AA88(v185, v91 + v89, type metadata accessor for BeaconObservation);
            v72 = v92;
            v65 = v183;
            v73 = v209;
LABEL_23:
            ++v88;
            v72 -= v195;
            v74 -= v195;
            v87 += v195;
            if (v88 >= v73--)
            {
              v42 = v21;
              v5 = v177;
              goto LABEL_33;
            }
          }
        }

        v42 = v21;
LABEL_33:
        v41 = v182;
        v21 = v192;
      }

      else
      {
        v42 = v21;
        v5 = v177;
        v41 = v182;
        v21 = v192;
        v65 = v183;
      }

      v12 = v203;
    }

    v93 = *(v41 + 1);
    if (v42 >= v93)
    {
      goto LABEL_56;
    }

    if (__OFSUB__(v42, v184))
    {
      goto LABEL_138;
    }

    if (v42 - v184 >= v65)
    {
LABEL_56:
      v95 = v184;
      goto LABEL_57;
    }

    if (__OFADD__(v184, v65))
    {
      goto LABEL_140;
    }

    if (v184 + v65 >= v93)
    {
      v94 = *(v41 + 1);
    }

    else
    {
      v94 = (v184 + v65);
    }

    if (v94 < v184)
    {
LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

    v95 = v184;
    if (v42 != v94)
    {
      break;
    }

LABEL_57:
    if (v42 < v95)
    {
      goto LABEL_137;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100A5B430(0, *(v40 + 16) + 1, 1, v40);
      v40 = result;
    }

    v126 = *(v40 + 16);
    v125 = *(v40 + 24);
    v127 = v126 + 1;
    if (v126 >= v125 >> 1)
    {
      result = sub_100A5B430((v125 > 1), v126 + 1, 1, v40);
      v40 = result;
    }

    *(v40 + 16) = v127;
    v128 = v40 + 16 * v126;
    *(v128 + 32) = v184;
    *(v128 + 40) = v42;
    v194 = v42;
    if (!*v181)
    {
      goto LABEL_147;
    }

    v42 = v5;
    if (v126)
    {
      v21 = *v181;
      v12 = v203;
      while (1)
      {
        v5 = v127 - 1;
        if (v127 >= 4)
        {
          break;
        }

        if (v127 == 3)
        {
          v129 = *(v40 + 32);
          v130 = *(v40 + 40);
          v139 = __OFSUB__(v130, v129);
          v131 = v130 - v129;
          v132 = v139;
LABEL_78:
          if (v132)
          {
            goto LABEL_126;
          }

          v145 = (v40 + 16 * v127);
          v147 = *v145;
          v146 = v145[1];
          v148 = __OFSUB__(v146, v147);
          v149 = v146 - v147;
          v150 = v148;
          if (v148)
          {
            goto LABEL_129;
          }

          v151 = (v40 + 32 + 16 * v5);
          v153 = *v151;
          v152 = v151[1];
          v139 = __OFSUB__(v152, v153);
          v154 = v152 - v153;
          if (v139)
          {
            goto LABEL_132;
          }

          if (__OFADD__(v149, v154))
          {
            goto LABEL_133;
          }

          if (v149 + v154 >= v131)
          {
            if (v131 < v154)
            {
              v5 = v127 - 2;
            }

            goto LABEL_99;
          }

          goto LABEL_92;
        }

        v155 = (v40 + 16 * v127);
        v157 = *v155;
        v156 = v155[1];
        v139 = __OFSUB__(v156, v157);
        v149 = v156 - v157;
        v150 = v139;
LABEL_92:
        if (v150)
        {
          goto LABEL_128;
        }

        v158 = v40 + 16 * v5;
        v160 = *(v158 + 32);
        v159 = *(v158 + 40);
        v139 = __OFSUB__(v159, v160);
        v161 = v159 - v160;
        if (v139)
        {
          goto LABEL_131;
        }

        if (v161 < v149)
        {
          goto LABEL_4;
        }

LABEL_99:
        v166 = v5 - 1;
        if (v5 - 1 >= v127)
        {
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
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        if (!*v41)
        {
          goto LABEL_144;
        }

        v167 = *(v40 + 32 + 16 * v166);
        v168 = *(v40 + 32 + 16 * v5 + 8);
        sub_100919F10(*v41 + *(v192 + 72) * v167, *v41 + *(v192 + 72) * *(v40 + 32 + 16 * v5), *v41 + *(v192 + 72) * v168, v21);
        if (v42)
        {
        }

        if (v168 < v167)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_100B31E68(v40);
        }

        if (v166 >= *(v40 + 16))
        {
          goto LABEL_123;
        }

        v169 = v40 + 16 * v166;
        *(v169 + 32) = v167;
        *(v169 + 40) = v168;
        v212 = v40;
        result = sub_100B31DDC(v5);
        v40 = v212;
        v127 = *(v212 + 16);
        v12 = v203;
        if (v127 <= 1)
        {
          goto LABEL_4;
        }
      }

      v133 = v40 + 32 + 16 * v127;
      v134 = *(v133 - 64);
      v135 = *(v133 - 56);
      v139 = __OFSUB__(v135, v134);
      v136 = v135 - v134;
      if (v139)
      {
        goto LABEL_124;
      }

      v138 = *(v133 - 48);
      v137 = *(v133 - 40);
      v139 = __OFSUB__(v137, v138);
      v131 = v137 - v138;
      v132 = v139;
      if (v139)
      {
        goto LABEL_125;
      }

      v140 = (v40 + 16 * v127);
      v142 = *v140;
      v141 = v140[1];
      v139 = __OFSUB__(v141, v142);
      v143 = v141 - v142;
      if (v139)
      {
        goto LABEL_127;
      }

      v139 = __OFADD__(v131, v143);
      v144 = v131 + v143;
      if (v139)
      {
        goto LABEL_130;
      }

      if (v144 >= v136)
      {
        v162 = (v40 + 32 + 16 * v5);
        v164 = *v162;
        v163 = v162[1];
        v139 = __OFSUB__(v163, v164);
        v165 = v163 - v164;
        if (v139)
        {
          goto LABEL_134;
        }

        if (v131 < v165)
        {
          v5 = v127 - 2;
        }

        goto LABEL_99;
      }

      goto LABEL_78;
    }

    v12 = v203;
LABEL_4:
    v38 = *(v41 + 1);
    v39 = v194;
    v5 = v42;
    v21 = v192;
    if (v194 >= v38)
    {
      goto LABEL_110;
    }
  }

  v177 = v5;
  v96 = *v41;
  v97 = *(v21 + 72);
  v98 = *v41 + v97 * (v42 - 1);
  v198 = -v97;
  v199 = v96;
  v99 = v184 - v42;
  v194 = v42;
  v187 = v97;
  v100 = v96 + v42 * v97;
  v101 = v204;
  v188 = v94;
LABEL_46:
  v189 = v100;
  v191 = v99;
  v102 = v99;
  v195 = v98;
  while (1)
  {
    v207 = v100;
    v208 = v102;
    v103 = v210;
    sub_10091B164(v100, v210, type metadata accessor for BeaconObservation);
    v206 = v98;
    v104 = v211;
    sub_10091B164(v98, v211, type metadata accessor for BeaconObservation);
    v107 = v101 + 20;
    v106 = *(v101 + 20);
    v105 = *(v107 + 4);
    v209 = *(v103 + v105);
    v108 = *(v104 + v105);
    *v12 = v209;
    v109 = v202;
    v110 = *(v202 + 48);
    v111 = type metadata accessor for Date();
    v112 = v12;
    v113 = *(*(v111 - 8) + 16);
    v205 = v110;
    v114 = v103 + v106;
    v115 = v201;
    v113(&v112[v110], v114, v111);
    *v115 = v108;
    v113(&v115[*(v109 + 48)], v104 + v106, v111);
    v116 = qword_1013C6530[v209];
    v21 = qword_1013C6530[v108];
    if (v116 == v21)
    {
      sub_100024938(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v117 = v203;
      v118 = dispatch thunk of static Comparable.< infix(_:_:)();
      sub_10000B3A8(v115, &qword_1016AE328, &qword_1013C5818);
      sub_10000B3A8(v117, &qword_1016AE328, &qword_1013C5818);
      v12 = v117;
    }

    else
    {
      v119 = v203;
      sub_10000B3A8(v203, &qword_1016AE328, &qword_1013C5818);
      sub_10000B3A8(v115, &qword_1016AE328, &qword_1013C5818);
      v118 = v116 < v21;
      v12 = v119;
    }

    sub_10091AAF0(v211, type metadata accessor for BeaconObservation);
    result = sub_10091AAF0(v210, type metadata accessor for BeaconObservation);
    v101 = v204;
    if ((v118 & 1) == 0)
    {
LABEL_45:
      v98 = v195 + v187;
      v99 = v191 - 1;
      v100 = v189 + v187;
      if (++v194 != v188)
      {
        goto LABEL_46;
      }

      v42 = v188;
      v5 = v177;
      v41 = v182;
      v40 = v193;
      goto LABEL_56;
    }

    v120 = v208;
    if (!v199)
    {
      break;
    }

    v121 = v207;
    v122 = v200;
    sub_10091AA88(v207, v200, type metadata accessor for BeaconObservation);
    v123 = v206;
    swift_arrayInitWithTakeFrontToBack();
    sub_10091AA88(v122, v123, type metadata accessor for BeaconObservation);
    v98 = v123 + v198;
    v100 = v121 + v198;
    v124 = __CFADD__(v120, 1);
    v102 = v120 + 1;
    if (v124)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
  return result;
}

uint64_t sub_100919994(uint64_t result, uint64_t a2, uint64_t *a3, char *a4)
{
  v84 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_89:
    v6 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_121:
      result = sub_100B31E68(v8);
      v8 = result;
    }

    v76 = v8 + 16;
    v77 = *(v8 + 2);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = &v8[16 * v77];
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_10091A7EC((*a3 + *v78), (*a3 + *v80), (*a3 + v81), v6);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_113;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_114;
        }

        *v78 = v79;
        *(v78 + 1) = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_115;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_125;
    }
  }

  v6 = a4;
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v5)
    {
      v10 = qword_1013C6530[*(*a3 + v7)];
      v11 = *(*a3 + v7);
      v12 = qword_1013C6530[*(*a3 + v9)];
      v13 = v9 + 2;
      if (v5 <= v9 + 2)
      {
        v7 = v9 + 2;
      }

      else
      {
        v7 = v5;
      }

      while (v7 != v13)
      {
        v14 = *(*a3 + v13);
        v15 = (v10 < v12) ^ (qword_1013C6530[v14] >= qword_1013C6530[v11]);
        ++v13;
        v11 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v13 - 1;
          break;
        }
      }

      if (v10 < v12)
      {
        if (v7 < v9)
        {
          goto LABEL_118;
        }

        if (v9 < v7)
        {
          v16 = v7 - 1;
          v17 = v9;
          do
          {
            if (v17 != v16)
            {
              v20 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v18 = *(v20 + v17);
              *(v20 + v17) = *(v20 + v16);
              *(v20 + v16) = v18;
            }
          }

          while (++v17 < v16--);
          v5 = a3[1];
        }
      }
    }

    if (v7 < v5)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_117;
      }

      if (v7 - v9 < v6)
      {
        if (__OFADD__(v9, v6))
        {
          goto LABEL_119;
        }

        if (v9 + v6 < v5)
        {
          v5 = v9 + v6;
        }

        if (v5 < v9)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v7 != v5)
        {
          break;
        }
      }
    }

LABEL_38:
    if (v7 < v9)
    {
      goto LABEL_116;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100A5B430(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v31 = *(v8 + 2);
    v30 = *(v8 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_100A5B430((v30 > 1), v31 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v32;
    v33 = &v8[16 * v31];
    *(v33 + 4) = v9;
    *(v33 + 5) = v7;
    v34 = *v84;
    if (!*v84)
    {
      goto LABEL_126;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v8 + 4);
          v37 = *(v8 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_58:
          if (v39)
          {
            goto LABEL_104;
          }

          v52 = &v8[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_107;
          }

          v58 = &v8[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_111;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        v62 = &v8[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_72:
        if (v57)
        {
          goto LABEL_106;
        }

        v65 = &v8[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_109;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_79:
        v6 = v35 - 1;
        if (v35 - 1 >= v32)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v73 = *&v8[16 * v6 + 32];
        v74 = *&v8[16 * v35 + 40];
        sub_10091A7EC((*a3 + v73), (*a3 + *&v8[16 * v35 + 32]), (*a3 + v74), v34);
        if (v4)
        {
        }

        if (v74 < v73)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100B31E68(v8);
        }

        if (v6 >= *(v8 + 2))
        {
          goto LABEL_101;
        }

        v75 = &v8[16 * v6];
        *(v75 + 4) = v73;
        *(v75 + 5) = v74;
        result = sub_100B31DDC(v35);
        v32 = *(v8 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v8[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_102;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_103;
      }

      v47 = &v8[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_105;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_108;
      }

      if (v51 >= v43)
      {
        v69 = &v8[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_112;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_58;
    }

LABEL_3:
    v5 = a3[1];
    v6 = a4;
    if (v7 >= v5)
    {
      goto LABEL_89;
    }
  }

  v21 = *a3;
  v22 = (*a3 + v7);
  v23 = v9 - v7;
LABEL_31:
  v24 = *(v21 + v7);
  v25 = qword_1013C6530[v24];
  v26 = v23;
  v27 = v22;
  while (1)
  {
    v28 = *(v27 - 1);
    if (v25 >= qword_1013C6530[v28])
    {
LABEL_30:
      ++v7;
      ++v22;
      --v23;
      if (v7 != v5)
      {
        goto LABEL_31;
      }

      v7 = v5;
      goto LABEL_38;
    }

    if (!v21)
    {
      break;
    }

    *v27 = v28;
    *--v27 = v24;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_30;
    }
  }

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
  return result;
}

uint64_t sub_100919F10(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v86 = sub_1000BC4D4(&qword_1016AE328, &qword_1013C5818);
  v8 = __chkstk_darwin(v86);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v77 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v77 - v15;
  __chkstk_darwin(v14);
  v18 = &v77 - v17;
  v94 = type metadata accessor for BeaconObservation(0);
  v19 = __chkstk_darwin(v94);
  v88 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v87 = &v77 - v22;
  v23 = __chkstk_darwin(v21);
  v90 = &v77 - v24;
  result = __chkstk_darwin(v23);
  v89 = &v77 - v26;
  v28 = *(v27 + 72);
  if (!v28)
  {
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v28 == -1)
  {
    goto LABEL_68;
  }

  v29 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v28 == -1)
  {
    goto LABEL_69;
  }

  v30 = (a2 - a1) / v28;
  v97 = a1;
  v96 = a4;
  v84 = v28;
  if (v30 >= v29 / v28)
  {
    v85 = v13;
    v33 = v10;
    v34 = v29 / v28 * v28;
    if (a4 < a2 || a2 + v34 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v53 = a4 + v34;
    if (v34 >= 1)
    {
      v54 = -v84;
      v55 = a4 + v34;
      v91 = a4;
      v92 = a1;
      v79 = v33;
      v80 = -v84;
      while (2)
      {
        while (1)
        {
          v77 = v53;
          v56 = a2;
          a2 += v54;
          v93 = a2;
          v81 = v56;
          while (1)
          {
            if (v56 <= a1)
            {
              v97 = v56;
              v95 = v77;
              goto LABEL_66;
            }

            v84 = a3;
            v78 = v53;
            v89 = v55;
            v90 = v55 + v54;
            v57 = v87;
            sub_10091B164(v55 + v54, v87, type metadata accessor for BeaconObservation);
            v58 = a2;
            v59 = v88;
            sub_10091B164(v58, v88, type metadata accessor for BeaconObservation);
            v61 = *(v94 + 20);
            v60 = *(v94 + 24);
            v62 = *(v57 + v60);
            v82 = *(v59 + v60);
            v83 = v62;
            v63 = v85;
            v64 = v86;
            *v85 = v62;
            v65 = *(v64 + 48);
            v66 = type metadata accessor for Date();
            v67 = *(*(v66 - 8) + 16);
            v68 = v57 + v61;
            v69 = v79;
            v67(&v63[v65], v68, v66);
            v70 = v82;
            *v69 = v82;
            v67(&v69[*(v64 + 48)], v59 + v61, v66);
            v71 = qword_1013C6530[v83];
            v72 = qword_1013C6530[v70];
            if (v71 == v72)
            {
              sub_100024938(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
              v73 = v85;
              v74 = dispatch thunk of static Comparable.< infix(_:_:)();
              sub_10000B3A8(v69, &qword_1016AE328, &qword_1013C5818);
              sub_10000B3A8(v73, &qword_1016AE328, &qword_1013C5818);
            }

            else
            {
              sub_10000B3A8(v85, &qword_1016AE328, &qword_1013C5818);
              sub_10000B3A8(v69, &qword_1016AE328, &qword_1013C5818);
              v74 = v71 < v72;
            }

            v54 = v80;
            v75 = v84;
            a3 = v84 + v80;
            sub_10091AAF0(v88, type metadata accessor for BeaconObservation);
            sub_10091AAF0(v87, type metadata accessor for BeaconObservation);
            a1 = v92;
            a2 = v93;
            v76 = v91;
            v55 = v89;
            v56 = v81;
            if (v74)
            {
              break;
            }

            v53 = v90;
            if (v75 < v89 || a3 >= v89)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v75 != v89)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v55 = v53;
            if (v90 <= v76)
            {
              a2 = v56;
              goto LABEL_65;
            }
          }

          if (v75 < v81 || a3 >= v81)
          {
            break;
          }

          v53 = v78;
          if (v75 != v81)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v55 <= v76)
          {
            goto LABEL_65;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        v53 = v78;
        if (v55 > v76)
        {
          continue;
        }

        break;
      }
    }

LABEL_65:
    v97 = a2;
    v95 = v53;
  }

  else
  {
    v31 = v30 * v28;
    if (a4 < a1 || a1 + v31 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v32 = v18;
    }

    else
    {
      v32 = v18;
      if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v83 = a4 + v31;
    v95 = a4 + v31;
    if (v31 >= 1 && a2 < a3)
    {
      v81 = v16;
      v82 = a3;
      v80 = v32;
      do
      {
        v92 = a1;
        v93 = a2;
        v36 = v89;
        sub_10091B164(a2, v89, type metadata accessor for BeaconObservation);
        v91 = a4;
        v37 = v90;
        sub_10091B164(a4, v90, type metadata accessor for BeaconObservation);
        v39 = *(v94 + 20);
        v38 = *(v94 + 24);
        v40 = *(v36 + v38);
        v87 = *(v37 + v38);
        v88 = v40;
        *v32 = v40;
        v41 = v86;
        v42 = *(v86 + 48);
        v43 = type metadata accessor for Date();
        v44 = v32;
        v45 = *(*(v43 - 8) + 16);
        v85 = v42;
        v45(&v42[v44], v36 + v39, v43);
        v46 = v87;
        *v16 = v87;
        v45(&v16[*(v41 + 48)], v37 + v39, v43);
        v47 = qword_1013C6530[v88];
        v48 = qword_1013C6530[v46];
        if (v47 == v48)
        {
          sub_100024938(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          v32 = v80;
          v16 = v81;
          v49 = dispatch thunk of static Comparable.< infix(_:_:)();
          sub_10000B3A8(v16, &qword_1016AE328, &qword_1013C5818);
          sub_10000B3A8(v32, &qword_1016AE328, &qword_1013C5818);
        }

        else
        {
          v32 = v80;
          sub_10000B3A8(v80, &qword_1016AE328, &qword_1013C5818);
          v16 = v81;
          sub_10000B3A8(v81, &qword_1016AE328, &qword_1013C5818);
          v49 = v47 < v48;
        }

        sub_10091AAF0(v90, type metadata accessor for BeaconObservation);
        sub_10091AAF0(v89, type metadata accessor for BeaconObservation);
        v50 = v92;
        a2 = v93;
        a4 = v91;
        v51 = v82;
        v52 = v84;
        if (v49)
        {
          if (v92 < v93 || v92 >= v93 + v84)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v92 != v93)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v52;
        }

        else
        {
          if (v92 < v91 || v92 >= v91 + v84)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v92 != v91)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v96 = a4 + v52;
          a4 += v52;
        }

        a1 = v50 + v52;
        v97 = a1;
      }

      while (a4 < v83 && a2 < v51);
    }
  }

LABEL_66:
  sub_10060AAB4(&v97, &v96, &v95);
  return 1;
}

uint64_t sub_10091A7EC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= a3 - __src)
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v14 = v6 - 1;
        --v5;
        v15 = v10;
        while (1)
        {
          v16 = v5 + 1;
          v18 = *--v15;
          v17 = v18;
          v19 = *v14;
          if (qword_1013C6530[v18] < qword_1013C6530[v19])
          {
            break;
          }

          if (v16 < v10 || v5 >= v10)
          {
            *v5 = v17;
          }

          --v5;
          v10 = v15;
          if (v15 <= v4)
          {
            v10 = v15;
            goto LABEL_40;
          }
        }

        if (v16 < v6 || v5 >= v6)
        {
          *v5 = v19;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v14 > v7);
      v6 = v14;
      if (v14 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v4;
        if (qword_1013C6530[*v6] >= qword_1013C6530[v11])
        {
          v13 = v4 + 1;
          v12 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v13)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          LOBYTE(v11) = *v6;
          v12 = v6 + 1;
          if (v7 >= v6 && v7 < v12)
          {
            goto LABEL_16;
          }
        }

        *v7 = v11;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v12;
          if (v12 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

uint64_t sub_10091AA24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10091AA88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10091AAF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10091AB50()
{
  result = qword_1016AE318;
  if (!qword_1016AE318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE318);
  }

  return result;
}

uint64_t sub_10091AC24(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014650;

  return sub_1009152F4(a1, v4, v1 + 24);
}

char *sub_10091ACD0(uint64_t a1)
{
  v2 = type metadata accessor for BeaconObservation(0);
  v3 = __chkstk_darwin(v2);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (!v7)
  {
    v22 = _swiftEmptyDictionarySingleton;
LABEL_21:
    v37 = v22[2];
    if (v37)
    {
      v38 = sub_1003A8858(v22[2], 0);
      v39 = sub_1003AA5EC(&v62, v38 + 32, v37, v22);
      v40 = v62;
      swift_bridgeObjectRetain_n();
      sub_1000128F8(v40);
      if (v39 == v37)
      {
LABEL_25:
        v62 = v38;
        sub_100910BB8(&v62);

        v41 = *(v62 + 2);
        v61 = v62;
        if (v41)
        {
          v42 = v62 + 32;
          v43 = _swiftEmptyArrayStorage;
          do
          {
            v46 = *v42++;
            v45 = v46;
            if (v22[2])
            {
              v47 = sub_100772048(v45);
              if (v48)
              {
                v49 = *(v22[7] + 8 * v47);

                v50 = sub_10091E6AC(v45);
                v52 = v51;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v43 = sub_100A5E278(0, *(v43 + 2) + 1, 1, v43);
                }

                v54 = *(v43 + 2);
                v53 = *(v43 + 3);
                if (v54 >= v53 >> 1)
                {
                  v43 = sub_100A5E278((v53 > 1), v54 + 1, 1, v43);
                }

                *(v43 + 2) = v54 + 1;
                v44 = &v43[24 * v54];
                *(v44 + 4) = v50;
                *(v44 + 5) = v52;
                *(v44 + 6) = v49;
              }
            }

            --v41;
          }

          while (v41);
        }

        else
        {
          v43 = _swiftEmptyArrayStorage;
        }

        return v43;
      }

      __break(1u);
    }

    v38 = _swiftEmptyArrayStorage;
    goto LABEL_25;
  }

  v8 = *(v3 + 24);
  v59 = *(v3 + 20);
  v60 = v8;
  v9 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v58 = *(v4 + 72);
  v10 = _swiftEmptyDictionarySingleton;
  v57 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  while (1)
  {
    sub_10091B164(v9, v6, type metadata accessor for BeaconObservation);
    v11 = v6[v60];

    v12 = Date.iso8601.getter();
    v14 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = v10;
    v17 = sub_100772048(v11);
    v18 = v10[2];
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      break;
    }

    v21 = v16;
    if (v10[3] >= v20)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v22 = v10;
        if (v16)
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_10100B504();
        v22 = v62;
        if (v21)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      sub_100FF29D0(v20, isUniquelyReferenced_nonNull_native);
      v22 = v62;
      v23 = sub_100772048(v11);
      if ((v21 & 1) != (v24 & 1))
      {
        goto LABEL_39;
      }

      v17 = v23;
      if (v21)
      {
        goto LABEL_12;
      }
    }

    v22[(v17 >> 6) + 8] |= 1 << v17;
    *(v22[6] + v17) = v11;
    *(v22[7] + 8 * v17) = _swiftEmptyArrayStorage;
    v25 = v22[2];
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (v26)
    {
      goto LABEL_38;
    }

    v22[2] = v27;
LABEL_12:
    v61 = v14;
    v28 = v22[7];
    v29 = *(v28 + 8 * v17);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    *(v28 + 8 * v17) = v29;
    v31 = v12;
    if ((v30 & 1) == 0)
    {
      v29 = sub_100A5B2CC(0, *(v29 + 2) + 1, 1, v29);
      *(v28 + 8 * v17) = v29;
    }

    v33 = *(v29 + 2);
    v32 = *(v29 + 3);
    if (v33 >= v32 >> 1)
    {
      *(v28 + 8 * v17) = sub_100A5B2CC((v32 > 1), v33 + 1, 1, v29);
    }

    v6 = v57;
    sub_10091AAF0(v57, type metadata accessor for BeaconObservation);
    v34 = *(v28 + 8 * v17);
    *(v34 + 16) = v33 + 1;
    v35 = v34 + 16 * v33;
    v36 = v61;
    *(v35 + 32) = v31;
    *(v35 + 40) = v36;
    v9 += v58;
    v10 = v22;
    if (!--v7)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_10091B164(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10091B204(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_10091B2BC(uint64_t a1)
{
  sub_10091B5B8(319, &unk_1016AE440, type metadata accessor for BeaconProductInfoRecord, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_10091B61C(319, &qword_1016BD350, &type metadata for String, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10091B3BC(uint64_t a1)
{
  type metadata accessor for StableIdentifier(319);
  if (v1 <= 0x3F)
  {
    sub_10091B5B8(319, &qword_1016AE4D8, type metadata accessor for ShareState, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_10091B61C(319, &unk_1016AE4E0, &type metadata for ObservationState, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        sub_10091B5B8(319, &qword_1016B1C20, &type metadata accessor for UUID, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_10091B61C(319, &qword_10169C548, &type metadata for UInt8, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            type metadata accessor for ProductInfoState(319);
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

void sub_10091B5B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_10091B61C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10091B694(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_10091B61C(319, &unk_1016AE4E0, &type metadata for ObservationState, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_10091B5B8(319, &qword_1016B1C20, &type metadata accessor for UUID, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10091B7D0(uint64_t a1)
{
  sub_10091B8A4(319, &qword_1016AE6B0, type metadata accessor for OwnedBeaconState);
  if (v1 <= 0x3F)
  {
    sub_10091B8A4(319, &qword_1016AE6B8, type metadata accessor for SharedBeaconState);
    if (v2 <= 0x3F)
    {
      sub_10091B8F0();
      if (v3 <= 0x3F)
      {
        sub_10091B920();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_10091B8A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

ValueMetadata *sub_10091B8F0()
{
  result = qword_1016AE6C0;
  if (!qword_1016AE6C0)
  {
    result = &type metadata for OwnedBeaconGroupState;
    atomic_store(&type metadata for OwnedBeaconGroupState, &qword_1016AE6C0);
  }

  return result;
}

ValueMetadata *sub_10091B920()
{
  result = qword_1016AE6C8;
  if (!qword_1016AE6C8)
  {
    result = &type metadata for SharedBeaconGroupState;
    atomic_store(&type metadata for SharedBeaconGroupState, &qword_1016AE6C8);
  }

  return result;
}

uint64_t sub_10091B960(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_10091B9A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10091BA0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10091BA54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10091BABC()
{
  result = qword_1016AE700;
  if (!qword_1016AE700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE700);
  }

  return result;
}

unint64_t sub_10091BB10()
{
  result = qword_1016AE710;
  if (!qword_1016AE710)
  {
    sub_1000BC580(&qword_1016AE708, &qword_1013C5B60);
    sub_100024938(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_100024938(&qword_1016AE718, type metadata accessor for BeaconState, &unk_1013C5A3C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE710);
  }

  return result;
}

unint64_t sub_10091BBFC()
{
  result = qword_1016AE728;
  if (!qword_1016AE728)
  {
    sub_1000BC580(&qword_1016AE720, &qword_1013C5B68);
    sub_100024938(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_10091BCB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE728);
  }

  return result;
}

unint64_t sub_10091BCB8()
{
  result = qword_1016AE730;
  if (!qword_1016AE730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE730);
  }

  return result;
}

unint64_t sub_10091BD0C()
{
  result = qword_1016AE740;
  if (!qword_1016AE740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE740);
  }

  return result;
}

unint64_t sub_10091BD60()
{
  result = qword_1016AE750;
  if (!qword_1016AE750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE750);
  }

  return result;
}

unint64_t sub_10091BDB4()
{
  result = qword_1016AE760;
  if (!qword_1016AE760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE760);
  }

  return result;
}

unint64_t sub_10091BE08()
{
  result = qword_1016AE770;
  if (!qword_1016AE770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE770);
  }

  return result;
}

unint64_t sub_10091BE5C()
{
  result = qword_1016AE788;
  if (!qword_1016AE788)
  {
    sub_1000BC580(&qword_1016AE780, &qword_1013C5B98);
    sub_100024938(&qword_1016AE790, type metadata accessor for ShareState, &unk_1013C5ADC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE788);
  }

  return result;
}

unint64_t sub_10091BF10()
{
  result = qword_1016AE7A0;
  if (!qword_1016AE7A0)
  {
    sub_1000BC580(&qword_1016AE798, &qword_1013C5BA0);
    sub_10091BF94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE7A0);
  }

  return result;
}

unint64_t sub_10091BF94()
{
  result = qword_1016AE7A8;
  if (!qword_1016AE7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE7A8);
  }

  return result;
}

unint64_t sub_10091BFE8()
{
  result = qword_1016AE7C0;
  if (!qword_1016AE7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE7C0);
  }

  return result;
}

unint64_t sub_10091C03C()
{
  result = qword_1016AE7C8;
  if (!qword_1016AE7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE7C8);
  }

  return result;
}

unint64_t sub_10091C090()
{
  result = qword_1016AE7D0;
  if (!qword_1016AE7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE7D0);
  }

  return result;
}

unint64_t sub_10091C114()
{
  result = qword_1016AE7F0;
  if (!qword_1016AE7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE7F0);
  }

  return result;
}

unint64_t sub_10091C168()
{
  result = qword_1016AE7F8;
  if (!qword_1016AE7F8)
  {
    sub_1000BC580(&qword_1016AF8E0, &qword_101393130);
    sub_100024938(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE7F8);
  }

  return result;
}

unint64_t sub_10091C21C()
{
  result = qword_1016AE808;
  if (!qword_1016AE808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE808);
  }

  return result;
}

unint64_t sub_10091C270()
{
  result = qword_1016AD858;
  if (!qword_1016AD858)
  {
    sub_1000BC580(&qword_101698DD8, &qword_1013C44B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD858);
  }

  return result;
}

unint64_t sub_10091C2EC()
{
  result = qword_1016AE818;
  if (!qword_1016AE818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE818);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OwnedBeaconState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OwnedBeaconState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10091C514()
{
  result = qword_1016AE820;
  if (!qword_1016AE820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE820);
  }

  return result;
}

unint64_t sub_10091C56C()
{
  result = qword_1016AE828;
  if (!qword_1016AE828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE828);
  }

  return result;
}

unint64_t sub_10091C5C4()
{
  result = qword_1016AE830;
  if (!qword_1016AE830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE830);
  }

  return result;
}

unint64_t sub_10091C61C()
{
  result = qword_1016AE838;
  if (!qword_1016AE838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE838);
  }

  return result;
}

unint64_t sub_10091C674()
{
  result = qword_1016AE840;
  if (!qword_1016AE840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE840);
  }

  return result;
}

unint64_t sub_10091C6CC()
{
  result = qword_1016AE848;
  if (!qword_1016AE848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE848);
  }

  return result;
}

unint64_t sub_10091C724()
{
  result = qword_1016AE850;
  if (!qword_1016AE850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE850);
  }

  return result;
}

unint64_t sub_10091C77C()
{
  result = qword_1016AE858;
  if (!qword_1016AE858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE858);
  }

  return result;
}

unint64_t sub_10091C7D4()
{
  result = qword_1016AE860;
  if (!qword_1016AE860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE860);
  }

  return result;
}

unint64_t sub_10091C82C()
{
  result = qword_1016AE868;
  if (!qword_1016AE868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE868);
  }

  return result;
}

unint64_t sub_10091C884()
{
  result = qword_1016AE870;
  if (!qword_1016AE870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE870);
  }

  return result;
}

unint64_t sub_10091C8DC()
{
  result = qword_1016AE878;
  if (!qword_1016AE878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE878);
  }

  return result;
}

unint64_t sub_10091C934()
{
  result = qword_1016AE880;
  if (!qword_1016AE880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE880);
  }

  return result;
}

unint64_t sub_10091C98C()
{
  result = qword_1016AE888;
  if (!qword_1016AE888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE888);
  }

  return result;
}

unint64_t sub_10091C9E4()
{
  result = qword_1016AE890;
  if (!qword_1016AE890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE890);
  }

  return result;
}

unint64_t sub_10091CA3C()
{
  result = qword_1016AE898;
  if (!qword_1016AE898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE898);
  }

  return result;
}

unint64_t sub_10091CA94()
{
  result = qword_1016AE8A0;
  if (!qword_1016AE8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE8A0);
  }

  return result;
}

unint64_t sub_10091CAEC()
{
  result = qword_1016AE8A8;
  if (!qword_1016AE8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE8A8);
  }

  return result;
}

unint64_t sub_10091CB44()
{
  result = qword_1016AE8B0;
  if (!qword_1016AE8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE8B0);
  }

  return result;
}

unint64_t sub_10091CB9C()
{
  result = qword_1016AE8B8;
  if (!qword_1016AE8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE8B8);
  }

  return result;
}

unint64_t sub_10091CBF4()
{
  result = qword_1016AE8C0;
  if (!qword_1016AE8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE8C0);
  }

  return result;
}

unint64_t sub_10091CC4C()
{
  result = qword_1016AE8C8;
  if (!qword_1016AE8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE8C8);
  }

  return result;
}

unint64_t sub_10091CCA4()
{
  result = qword_1016AE8D0;
  if (!qword_1016AE8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE8D0);
  }

  return result;
}

unint64_t sub_10091CCFC()
{
  result = qword_1016AE8D8;
  if (!qword_1016AE8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE8D8);
  }

  return result;
}

unint64_t sub_10091CD54()
{
  result = qword_1016AE8E0;
  if (!qword_1016AE8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE8E0);
  }

  return result;
}

unint64_t sub_10091CDAC()
{
  result = qword_1016AE8E8;
  if (!qword_1016AE8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE8E8);
  }

  return result;
}

unint64_t sub_10091CE04()
{
  result = qword_1016AE8F0;
  if (!qword_1016AE8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE8F0);
  }

  return result;
}

uint64_t sub_10091CE58(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000101364FA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C61766F72707061 && a2 == 0xED00006574617453 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101364FC0 == a2)
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

uint64_t sub_10091CFD4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449656C62617473 && a2 == 0xEF72656669746E65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44676E6972696170 && a2 == 0xEB00000000657461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65566D6574737973 && a2 == 0xED00006E6F697372 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6449726F646E6576 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 1701605234 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x4C79726574746162 && a2 == 0xEC0000006C657665 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010135E720 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000101364E70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000101364E90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000101364EB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000101364ED0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000024 && 0x8000000101364EF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x736572616873 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x746176726573626FLL && a2 == 0xEC000000736E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000101364F20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000101364F40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x644970756F7267 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x644974726170 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xEB000000006F666ELL)
  {

    return 22;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 22;
    }

    else
    {
      return 23;
    }
  }
}

uint64_t sub_10091D6F4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461446572616873 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEA00000000006E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6148656572616873 && a2 == 0xEC000000656C646ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001013477D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010134C4B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7079546572616873 && a2 == 0xE900000000000065)
  {

    return 6;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_10091D960(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6564496572616873 && a2 == 0xEF7265696669746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E614872656E776FLL && a2 == 0xEB00000000656C64 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001013477D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x65566D6574737973 && a2 == 0xED00006E6F697372 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6449726F646E6576 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6465747065636361 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 1701605234 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7079546572616873 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x7369747265766461 && a2 == 0xEF7865646E496465 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x7461446572616873 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x746176726573626FLL && a2 == 0xEC000000736E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x644970756F7267 && a2 == 0xE700000000000000)
  {

    return 15;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t sub_10091DE84(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657264644163616DLL && a2 == 0xEA00000000007373 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000101347C70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x614D6E6F63616562 && a2 == 0xE900000000000070 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000101364F80 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_10091E0A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F636165426C6C61 && a2 == 0xEA0000000000736ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101364E50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x70756F72476C6C61 && a2 == 0xE900000000000073)
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

uint64_t sub_10091E1E8@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_10091E298(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_10091E214(uint64_t a1)
{
  *(a1 + 8) = sub_10091E244();
  result = sub_10059BF4C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10091E244()
{
  result = qword_1016AE8F8;
  if (!qword_1016AE8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE8F8);
  }

  return result;
}

uint64_t sub_10091E298(void *a1)
{
  v3 = type metadata accessor for Endianness();
  __chkstk_darwin(v3 - 8);
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  v4 = sub_10015049C(v13, v13[3]);
  v5 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (!v1)
  {
    v7 = v5;
    v8 = v6;
    sub_100017D5C(v5, v6);
    static Endianness.current.getter();
    sub_1000198E8();
    FixedWidthInteger.init(data:ofEndianness:)();
    if (v12 != 1)
    {
      v4 = v11;
      sub_100016590(v7, v8);
      sub_100007BAC(v13);
      sub_100007BAC(a1);
      return v4;
    }

    v4 = type metadata accessor for BinaryEncodingError();
    sub_100205404();
    swift_allocError();
    (*(*(v4 - 8) + 104))(v9, enum case for BinaryEncodingError.encodingError(_:), v4);
    swift_willThrow();
    sub_100016590(v7, v8);
  }

  sub_100007BAC(v13);
  sub_100007BAC(a1);
  return v4;
}

uint64_t sub_10091E468(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for BeaconObservation.ObservationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD5)
  {
    goto LABEL_17;
  }

  if (a2 + 43 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 43) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 43;
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

      return (*a1 | (v4 << 8)) - 43;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 43;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2C;
  v8 = v6 - 44;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BeaconObservation.ObservationType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 43 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 43) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD5)
  {
    v4 = 0;
  }

  if (a2 > 0xD4)
  {
    v5 = ((a2 - 213) >> 8) + 1;
    *result = a2 + 43;
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
    *result = a2 + 43;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10091E648()
{
  result = qword_1016AE998;
  if (!qword_1016AE998)
  {
    sub_1000BC580(&qword_1016AE9A0, "H6\t");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE998);
  }

  return result;
}

unint64_t sub_10091E6AC(char a1)
{
  switch(a1)
  {
    case 1:
      v4 = 0x206465726961702ELL;
      break;
    case 2:
    case 19:
      _StringGuts.grow(_:)(35);

      v4 = 0xD000000000000020;
      break;
    case 3:
      _StringGuts.grow(_:)(34);

      v4 = 0xD00000000000001FLL;
      break;
    case 4:
      _StringGuts.grow(_:)(32);

      v4 = 0xD00000000000001DLL;
      break;
    case 5:
    case 15:
    case 28:
    case 35:
      _StringGuts.grow(_:)(33);

      v4 = 0xD00000000000001ELL;
      break;
    case 6:
    case 20:
    case 33:
    case 41:
      _StringGuts.grow(_:)(30);

      v4 = 0xD00000000000001BLL;
      break;
    case 7:
    case 9:
    case 14:
    case 30:
    case 32:
      _StringGuts.grow(_:)(28);

      v4 = 0xD000000000000019;
      break;
    case 8:
    case 10:
      _StringGuts.grow(_:)(26);

      v4 = 0xD000000000000017;
      break;
    case 11:
      _StringGuts.grow(_:)(31);

      v4 = 0xD00000000000001CLL;
      break;
    case 12:
    case 29:
      _StringGuts.grow(_:)(27);

      v4 = 0xD000000000000018;
      break;
    case 13:
    case 22:
    case 31:
    case 42:
    case 43:
      _StringGuts.grow(_:)(29);

      v4 = 0xD00000000000001ALL;
      break;
    case 16:
    case 21:
      _StringGuts.grow(_:)(38);

      v4 = 0xD000000000000023;
      break;
    case 17:
    case 38:
      _StringGuts.grow(_:)(40);

      v4 = 0xD000000000000025;
      break;
    case 18:
      _StringGuts.grow(_:)(36);

      v4 = 0xD000000000000021;
      break;
    case 23:
      _StringGuts.grow(_:)(21);

      v4 = 0xD000000000000012;
      break;
    case 24:
    case 26:
    case 27:
    case 39:
      _StringGuts.grow(_:)(24);

      v4 = 0xD000000000000015;
      break;
    case 25:
      _StringGuts.grow(_:)(22);

      v4 = 0xD000000000000013;
      break;
    case 34:
    case 36:
      _StringGuts.grow(_:)(41);

      v4 = 0xD000000000000026;
      break;
    case 37:
      _StringGuts.grow(_:)(37);

      v4 = 0xD000000000000022;
      break;
    case 40:
      _StringGuts.grow(_:)(23);

      v4 = 0xD000000000000014;
      break;
    default:
      v4 = 0x64657461636F6C2ELL;
      break;
  }

  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 41;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  return v4;
}

uint64_t sub_10091F290(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016AE9D0, &qword_1013C6A38);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_1009203C4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[15] = 0;
  type metadata accessor for UUID();
  sub_100920418(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for BeaconObservation(0);
    v11[14] = 1;
    type metadata accessor for Date();
    sub_100920418(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11[13] = *(v3 + *(v9 + 24));
    v11[12] = 2;
    sub_1007AEC40();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10091F4D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for Date();
  v24 = *(v4 - 8);
  v25 = v4;
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for UUID();
  v22 = *(v28 - 8);
  __chkstk_darwin(v28);
  v26 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1000BC4D4(&qword_1016AE9C0, &qword_1013C6A30);
  v23 = *(v27 - 8);
  __chkstk_darwin(v27);
  v9 = &v19 - v8;
  v10 = type metadata accessor for BeaconObservation(0);
  __chkstk_darwin(v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_1009203C4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v19 = v10;
  v20 = a1;
  v13 = v12;
  v15 = v23;
  v14 = v24;
  v16 = v25;
  v32 = 0;
  sub_100920418(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v22 + 32))(v13, v26, v28);
  v31 = 1;
  sub_100920418(&qword_101697F40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v14 + 32))(v13 + *(v19 + 20), v6, v16);
  v29 = 2;
  sub_1007AF040();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = v20;
  (*(v15 + 8))(v9, v27);
  *(v13 + *(v19 + 24)) = v30;
  sub_10073B64C(v13, v21);
  sub_100007BAC(v17);
  return sub_10073B5F0(v13);
}

Swift::Int sub_10091F9B8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1013C6B58[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_10091FA40(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1013C6B58[v2]);
  return Hasher._finalize()();
}

uint64_t sub_10091FA8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100920460(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10091FC28()
{
  result = qword_1016AE9A8;
  if (!qword_1016AE9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE9A8);
  }

  return result;
}

uint64_t sub_10091FC7C()
{
  v1 = 1702125924;
  if (*v0 != 1)
  {
    v1 = 1701869940;
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

uint64_t sub_10091FCCC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1009207C8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10091FCF4(uint64_t a1)
{
  v2 = sub_1009203C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10091FD30(uint64_t a1)
{
  v2 = sub_1009203C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10091FD9C(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100920418(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Date();
  sub_100920418(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(qword_1013C6B58[*(v1 + *(a1 + 24))]);
  return Hasher._finalize()();
}

void sub_10091FEA8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  sub_100920418(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Date();
  sub_100920418(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(qword_1013C6B58[*(v2 + *(a2 + 24))]);
}

Swift::Int sub_10091FFA4(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100920418(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Date();
  sub_100920418(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(qword_1013C6B58[*(v2 + *(a2 + 24))]);
  return Hasher._finalize()();
}

uint64_t sub_1009201A4()
{
  _StringGuts.grow(_:)(37);

  v1 = type metadata accessor for BeaconObservation(0);
  sub_100920418(&qword_1016AE9B8, type metadata accessor for BeaconObservation, &unk_1013C69C0);
  v2._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x6669746E65646920;
  v3._object = 0xED0000203A726569;
  String.append(_:)(v3);
  type metadata accessor for UUID();
  sub_100920418(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x203A6570797420;
  v5._object = 0xE700000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = sub_10091E6AC(*(v0 + *(v1 + 24)));
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x203A6574616420;
  v7._object = 0xE700000000000000;
  String.append(_:)(v7);
  type metadata accessor for Date();
  sub_100920418(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 62;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  return 60;
}

unint64_t sub_1009203C4()
{
  result = qword_1016AE9C8;
  if (!qword_1016AE9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE9C8);
  }

  return result;
}

uint64_t sub_100920418(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100920460(uint64_t a1)
{
  if (a1 > 399)
  {
    if (a1 > 600)
    {
      if (a1 <= 699)
      {
        if (a1 == 601)
        {
          return 39;
        }

        if (a1 == 602)
        {
          return 40;
        }
      }

      else
      {
        switch(a1)
        {
          case 700:
            return 41;
          case 701:
            return 42;
          case 801:
            return 43;
        }
      }

      return 44;
    }

    else
    {
      v2 = a1 - 400;
      result = 1;
      switch(v2)
      {
        case 0:
          result = 0;
          break;
        case 2:
          return result;
        case 3:
          result = 2;
          break;
        case 5:
          result = 3;
          break;
        case 6:
          result = 4;
          break;
        case 7:
          result = 5;
          break;
        case 100:
          result = 32;
          break;
        case 101:
          result = 33;
          break;
        case 102:
          result = 34;
          break;
        case 103:
          result = 35;
          break;
        case 104:
          result = 36;
          break;
        case 105:
          result = 37;
          break;
        case 106:
          result = 38;
          break;
        default:
          return 44;
      }
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        result = 6;
        break;
      case 3:
        result = 7;
        break;
      case 4:
        result = 8;
        break;
      case 5:
        result = 9;
        break;
      case 6:
        result = 14;
        break;
      case 7:
        result = 15;
        break;
      case 8:
        result = 16;
        break;
      case 9:
        result = 17;
        break;
      case 10:
        result = 18;
        break;
      case 11:
        result = 19;
        break;
      case 16:
        result = 10;
        break;
      case 17:
        result = 11;
        break;
      case 18:
        result = 12;
        break;
      case 19:
        result = 30;
        break;
      case 20:
        result = 31;
        break;
      case 22:
        result = 20;
        break;
      case 23:
        result = 21;
        break;
      case 24:
        result = 23;
        break;
      case 25:
        result = 24;
        break;
      case 26:
        result = 25;
        break;
      case 27:
        result = 26;
        break;
      case 28:
        result = 27;
        break;
      case 29:
        result = 28;
        break;
      case 31:
        result = 13;
        break;
      case 32:
        result = 29;
        break;
      case 33:
        result = 22;
        break;
      default:
        return 44;
    }
  }

  return result;
}

unint64_t sub_10092065C()
{
  result = qword_1016AE9D8;
  if (!qword_1016AE9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE9D8);
  }

  return result;
}

unint64_t sub_1009206C4()
{
  result = qword_1016AE9E0;
  if (!qword_1016AE9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE9E0);
  }

  return result;
}

unint64_t sub_10092071C()
{
  result = qword_1016AE9E8;
  if (!qword_1016AE9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE9E8);
  }

  return result;
}

unint64_t sub_100920774()
{
  result = qword_1016AE9F0;
  if (!qword_1016AE9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE9F0);
  }

  return result;
}

uint64_t sub_1009207C8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000101347590 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void sub_10092093C(uint64_t a1)
{
  sub_100157BAC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1009209C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_100920A08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100920AB0(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1002359B8(319, &qword_1016A8838, &type metadata for Int);
    if (v2 <= 0x3F)
    {
      sub_100157BAC(319);
      if (v3 <= 0x3F)
      {
        sub_1002359B8(319, &qword_10169A330, &type metadata for Data);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100920B8C(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016AEB30, &qword_1013C7098);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000035D0(a1, a1[3]);
  sub_100922338();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100920D4C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016AEB40, &qword_1013C70A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000035D0(a1, a1[3]);
  sub_10092238C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = *v3;
  v13 = *v3;
  v12 = 0;
  sub_1001022C4(&v17, v11);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    sub_100016590(v13, *(&v13 + 1));
    v16 = v3[1];
    v13 = v3[1];
    v12 = 1;
    sub_1001022C4(&v16, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v15 = v3[2];
    v13 = v3[2];
    v12 = 2;
    sub_1001022C4(&v15, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v13 = v3[3];
    v14 = v13;
    v12 = 3;
    sub_1001022C4(&v14, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  sub_100016590(v13, *(&v13 + 1));
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100920FCC(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016AEB88, &qword_1013C70D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_100922E20();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  type metadata accessor for UUID();
  sub_100922F3C(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for DelegatedBeaconMetadata(0);
    LOBYTE(v14) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v14) = 2;
    type metadata accessor for Date();
    sub_100922F3C(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = (v3 + *(v9 + 28));
    v11 = v10[1];
    v14 = *v10;
    v15 = v11;
    v13[15] = 3;
    sub_10002E98C(v14, v11);
    sub_1000E3190();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v14, v15);
    LOBYTE(v14) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100921284@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v24 - v4;
  v6 = type metadata accessor for UUID();
  v27 = *(v6 - 8);
  __chkstk_darwin(v6);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1000BC4D4(&qword_1016AEB78, &qword_1013C70C8);
  v26 = *(v30 - 8);
  __chkstk_darwin(v30);
  v9 = &v24 - v8;
  v10 = type metadata accessor for DelegatedBeaconMetadata(0);
  __chkstk_darwin(v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_100922E20();
  v29 = v9;
  v13 = v31;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    return sub_100007BAC(a1);
  }

  v31 = v5;
  v14 = v12;
  v16 = v26;
  v15 = v27;
  LOBYTE(v32) = 0;
  sub_100922F3C(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v17 = v28;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v15 + 32))(v14, v17, v6);
  LOBYTE(v32) = 1;
  v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v19 = v14 + v10[5];
  *v19 = v18;
  *(v19 + 8) = v20 & 1;
  type metadata accessor for Date();
  LOBYTE(v32) = 2;
  sub_100922F3C(&qword_101697F40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v21 = v31;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1001578A0(v21, v14 + v10[6]);
  v33 = 3;
  sub_1000E307C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(v14 + v10[7]) = v32;
  LOBYTE(v32) = 4;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v16 + 8))(v29, v30);
  *(v14 + v10[8]) = v22 & 1;
  sub_100922E74(v14, v25, type metadata accessor for DelegatedBeaconMetadata);
  sub_100007BAC(a1);
  return sub_100922EDC(v14, type metadata accessor for DelegatedBeaconMetadata);
}

uint64_t sub_100921780(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016AEB70, &qword_1013C70C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_1000035D0(a1, a1[3]);
  sub_100922DCC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = 0;
  type metadata accessor for Date();
  sub_100922F3C(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for DelegatedBeaconLostDates(0);
    v10 = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v9 = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100921980@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v28 - v9;
  __chkstk_darwin(v8);
  v32 = &v28 - v11;
  v12 = sub_1000BC4D4(&qword_1016AEB60, &qword_1013C70B8);
  v33 = *(v12 - 8);
  v34 = v12;
  __chkstk_darwin(v12);
  v14 = &v28 - v13;
  v15 = type metadata accessor for DelegatedBeaconLostDates(0);
  __chkstk_darwin(v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v35 = a1;
  sub_1000035D0(a1, v18);
  sub_100922DCC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(v35);
  }

  v29 = v10;
  v30 = v15;
  v19 = v17;
  v28 = v7;
  type metadata accessor for Date();
  v38 = 0;
  sub_100922F3C(&qword_101697F40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v20 = v32;
  v21 = v34;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v22 = v20;
  v23 = v19;
  sub_1001578A0(v22, v19);
  v37 = 1;
  v24 = v29;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1001578A0(v24, v23 + *(v30 + 20));
  v36 = 2;
  v25 = v23;
  v26 = v28;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v33 + 8))(v14, v21);
  sub_1001578A0(v26, v25 + *(v30 + 24));
  sub_100922E74(v25, v31, type metadata accessor for DelegatedBeaconLostDates);
  sub_100007BAC(v35);
  return sub_100922EDC(v25, type metadata accessor for DelegatedBeaconLostDates);
}

uint64_t sub_100921D90()
{
  v1 = 0x754E6C6169726573;
  v2 = 0x6C69616D65;
  if (*v0 != 2)
  {
    v2 = 0x656E6F6870;
  }

  if (*v0)
  {
    v1 = 0x44746375646F7270;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100921E14@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1009223E0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100921E3C(uint64_t a1)
{
  v2 = sub_100922338();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100921E78(uint64_t a1)
{
  v2 = sub_100922338();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100921EB4@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100922544(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

uint64_t sub_100921F10()
{
  v1 = 0x727574616E676973;
  v2 = 6775156;
  if (*v0 != 2)
  {
    v2 = 0x65636E6F6ELL;
  }

  if (*v0)
  {
    v1 = 0x6574707972636E65;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100921F90@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100922838(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100921FB8(uint64_t a1)
{
  v2 = sub_10092238C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100921FF4(uint64_t a1)
{
  v2 = sub_10092238C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100922030@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1009229A8(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

unint64_t sub_10092208C()
{
  v1 = *v0;
  v2 = 0x43726F7469736976;
  v3 = 0x6C6275507473616CLL;
  v4 = 0x656B6F54736E7061;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000018;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100922144@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1009233E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10092216C(uint64_t a1)
{
  v2 = sub_100922E20();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1009221A8(uint64_t a1)
{
  v2 = sub_100922E20();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100922214()
{
  v1 = 0xD00000000000001ALL;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_100922268@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1009235B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100922290(uint64_t a1)
{
  v2 = sub_100922DCC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1009222CC(uint64_t a1)
{
  v2 = sub_100922DCC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100922338()
{
  result = qword_1016AEB38;
  if (!qword_1016AEB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEB38);
  }

  return result;
}

unint64_t sub_10092238C()
{
  result = qword_1016AEB48;
  if (!qword_1016AEB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEB48);
  }

  return result;
}

uint64_t sub_1009223E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44746375646F7270 && a2 == 0xEB00000000617461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C69616D65 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656E6F6870 && a2 == 0xE500000000000000)
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

uint64_t sub_100922544@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016AEB58, &qword_1013C70B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100922338();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  LOBYTE(v32[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v27 = v10;
  LOBYTE(v32[0]) = 1;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v26 = v12;
  v24 = v11;
  LOBYTE(v32[0]) = 2;
  v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v25 = v13;
  v33 = 3;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  v17 = v27;
  *&v28 = v9;
  *(&v28 + 1) = v27;
  v19 = v24;
  v18 = v25;
  *&v29 = v24;
  *(&v29 + 1) = v26;
  *&v30 = v23;
  *(&v30 + 1) = v25;
  *&v31 = v14;
  *(&v31 + 1) = v16;
  sub_1006941BC(&v28, v32);
  sub_100007BAC(a1);
  v32[0] = v9;
  v32[1] = v17;
  v32[2] = v19;
  v32[3] = v26;
  v32[4] = v23;
  v32[5] = v18;
  v32[6] = v14;
  v32[7] = v16;
  result = sub_100694A6C(v32);
  v21 = v29;
  *a2 = v28;
  a2[1] = v21;
  v22 = v31;
  a2[2] = v30;
  a2[3] = v22;
  return result;
}

uint64_t sub_100922838(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x727574616E676973 && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574707972636E65 && a2 == 0xED00006174614464 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6775156 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65636E6F6ELL && a2 == 0xE500000000000000)
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

uint64_t sub_1009229A8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016AEB50, &qword_1013C70A8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_10092238C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  LOBYTE(v21) = 0;
  sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = v25[0];
  LOBYTE(v21) = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = v25[0];
  LOBYTE(v21) = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18 = v25[0];
  v29 = 3;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v16 = *(&v28 + 1);
  v17 = v28;
  v9 = v20;
  v21 = v20;
  v10 = v19;
  v22 = v19;
  v11 = v18;
  v23 = v18;
  v24 = v28;
  sub_100922D64(&v21, v25);
  sub_100007BAC(a1);
  v25[0] = v9;
  v25[1] = v10;
  v25[2] = v11;
  v26 = v17;
  v27 = v16;
  result = sub_100922D9C(v25);
  v13 = v22;
  *a2 = v21;
  a2[1] = v13;
  v14 = v24;
  a2[2] = v23;
  a2[3] = v14;
  return result;
}

unint64_t sub_100922DCC()
{
  result = qword_1016AEB68;
  if (!qword_1016AEB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEB68);
  }

  return result;
}

unint64_t sub_100922E20()
{
  result = qword_1016AEB80;
  if (!qword_1016AEB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEB80);
  }

  return result;
}

uint64_t sub_100922E74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100922EDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100922F3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100922FC8()
{
  result = qword_1016AEB90;
  if (!qword_1016AEB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEB90);
  }

  return result;
}

unint64_t sub_100923020()
{
  result = qword_1016AEB98;
  if (!qword_1016AEB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEB98);
  }

  return result;
}

unint64_t sub_100923078()
{
  result = qword_1016AEBA0;
  if (!qword_1016AEBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEBA0);
  }

  return result;
}

unint64_t sub_1009230D0()
{
  result = qword_1016AEBA8;
  if (!qword_1016AEBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEBA8);
  }

  return result;
}

unint64_t sub_100923128()
{
  result = qword_1016AEBB0;
  if (!qword_1016AEBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEBB0);
  }

  return result;
}

unint64_t sub_100923180()
{
  result = qword_1016AEBB8;
  if (!qword_1016AEBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEBB8);
  }

  return result;
}

unint64_t sub_1009231D8()
{
  result = qword_1016AEBC0;
  if (!qword_1016AEBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEBC0);
  }

  return result;
}

unint64_t sub_100923230()
{
  result = qword_1016AEBC8;
  if (!qword_1016AEBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEBC8);
  }

  return result;
}

unint64_t sub_100923288()
{
  result = qword_1016AEBD0;
  if (!qword_1016AEBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEBD0);
  }

  return result;
}

unint64_t sub_1009232E0()
{
  result = qword_1016AEBD8;
  if (!qword_1016AEBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEBD8);
  }

  return result;
}

unint64_t sub_100923338()
{
  result = qword_1016AEBE0;
  if (!qword_1016AEBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEBE0);
  }

  return result;
}

unint64_t sub_100923390()
{
  result = qword_1016AEBE8;
  if (!qword_1016AEBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEBE8);
  }

  return result;
}

uint64_t sub_1009233E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x80000001013512B0 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x43726F7469736976 && a2 == 0xEC000000746E756FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6275507473616CLL && a2 == 0xEF65746144687369 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656B6F54736E7061 && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000101351290 == a2)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1009235B4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x800000010134DA90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010134DAB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001013513B0 == a2)
  {

    return 2;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

Swift::Int sub_1009236EC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

Swift::Int sub_100923764(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2 + 1);
  return Hasher._finalize()();
}

uint64_t sub_1009237A8@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100923A98(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1009238A4(void *a1)
{
  a1[1] = sub_1009238DC();
  a1[2] = sub_100923930();
  result = sub_100923984();
  a1[3] = result;
  return result;
}

unint64_t sub_1009238DC()
{
  result = qword_1016AEBF0;
  if (!qword_1016AEBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEBF0);
  }

  return result;
}

unint64_t sub_100923930()
{
  result = qword_1016AEBF8;
  if (!qword_1016AEBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEBF8);
  }

  return result;
}

unint64_t sub_100923984()
{
  result = qword_1016AEC00;
  if (!qword_1016AEC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEC00);
  }

  return result;
}

unint64_t sub_1009239DC()
{
  result = qword_1016AEC08;
  if (!qword_1016AEC08)
  {
    sub_1000BC580(&qword_1016AEC10, qword_1013C75A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEC08);
  }

  return result;
}

unint64_t sub_100923A44()
{
  result = qword_1016AEC18;
  if (!qword_1016AEC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEC18);
  }

  return result;
}

uint64_t sub_100923A98(int a1)
{
  if ((a1 - 1) >= 9)
  {
    return 9;
  }

  else
  {
    return (a1 - 1);
  }
}

uint64_t sub_100923AAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 352))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 168);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100923AF4(uint64_t result, int a2, int a3)
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
      *(result + 168) = (a2 - 1);
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

void sub_100923BE8(uint64_t a1)
{
  sub_10093F030(319, &qword_10169AC00, &type metadata accessor for MACAddress);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

id sub_100923CB0(const void *a1, int a2, void (*a3)(uint64_t), uint64_t a4)
{
  v68 = a3;
  v69 = a4;
  LODWORD(v70) = a2;
  v66 = a1;
  v64 = *v4;
  v5 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v5 - 8);
  v65 = &v55 - v6;
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v62 = *(v7 - 8);
  v63 = v7;
  __chkstk_darwin(v7);
  v61 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v59);
  v60 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v58 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1000BC4D4(&qword_101697360, &unk_10138BED0);
  __chkstk_darwin(v56);
  v57 = (&v55 - v12);
  v13 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v13 - 8);
  v15 = &v55 - v14;
  v16 = type metadata accessor for AccessoryIdentityPairingLockCheckEndPoint(0);
  v17 = __chkstk_darwin(v16);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v55 - v20;
  v22 = static os_log_type_t.default.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  v23 = qword_10177C410;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_101385D80;
  *(v24 + 56) = &type metadata for String;
  *(v24 + 64) = sub_100008C00();
  *(v24 + 32) = 0xD000000000000048;
  *(v24 + 40) = 0x80000001013659B0;
  os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v23, "%@", 2, 2, v24);

  v25 = enum case for FMNAccountType.w2Accessory(_:);
  v26 = type metadata accessor for FMNAccountType();
  (*(*(v26 - 8) + 104))(v21, v25, v26);
  v27 = *(v16 + 20);
  v28 = v70;
  v29 = v70 & 1;
  v21[v27] = v70 & 1;
  type metadata accessor for SearchPartyURLSessionFactory(0);
  swift_allocObject();
  v30 = type metadata accessor for FMNMockingPreferences();
  (*(*(v30 - 8) + 56))(v15, 1, 1, v30);
  v31 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  type metadata accessor for ServerInteractionController(0);
  v32 = swift_allocObject();
  sub_10093C940(v21, v19, type metadata accessor for AccessoryIdentityPairingLockCheckEndPoint);
  v33 = sub_10061E864(v19, v31, v32);
  v34 = 0;
  v35 = 0;
  if (v28)
  {
    goto LABEL_7;
  }

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v37 = result;
    v38 = sub_100513CD8();

    if (!v38 || (v34 = sub_100513FCC(), v35 = v39, v38, !v35))
    {
      if (qword_1016950E0 != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for Logger();
      sub_1000076D4(v50, qword_10177C448);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&_mh_execute_header, v51, v52, "Unable to retrieve masked identifier", v53, 2u);
      }

      type metadata accessor for SPPairingSessionError(0);
      v71[42] = 27;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_10093C818(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
      _BridgedStoredNSError.init(_:userInfo:)();
      v54 = v57;
      *v57 = v71[0];
      swift_storeEnumTagMultiPayload();
      v68(v54);

      sub_10000B3A8(v54, &qword_101697360, &unk_10138BED0);
      v49 = v21;
      return sub_10093C9A8(v49, type metadata accessor for AccessoryIdentityPairingLockCheckEndPoint);
    }

LABEL_7:
    v56 = v34;
    sub_1000BC488();
    LODWORD(v57) = v29;
    v40 = v33;
    static DispatchQoS.unspecified.getter();
    v71[0] = _swiftEmptyArrayStorage;
    sub_10093C818(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    v70 = v21;
    sub_1000BC4D4(&unk_101695580, &qword_101385D90);
    sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v62 + 104))(v61, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v63);
    v41 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v42 = type metadata accessor for TaskPriority();
    v43 = v65;
    (*(*(v42 - 8) + 56))(v65, 1, 1, v42);
    v44 = swift_allocObject();
    *(v44 + 16) = 0;
    *(v44 + 24) = 0;
    v45 = v66;
    memcpy((v44 + 32), v66, 0x150uLL);
    *(v44 + 368) = v56;
    *(v44 + 376) = v35;
    v46 = v68;
    *(v44 + 384) = v67;
    *(v44 + 392) = v41;
    v47 = v69;
    *(v44 + 400) = v46;
    *(v44 + 408) = v47;
    *(v44 + 416) = v40;
    *(v44 + 424) = v57;
    *(v44 + 432) = v64;
    sub_10093DC08(v45, v71);

    v48 = v41;

    sub_10025EDD4(0, 0, v43, &unk_1013C8278, v44);

    v49 = v70;
    return sub_10093C9A8(v49, type metadata accessor for AccessoryIdentityPairingLockCheckEndPoint);
  }

  __break(1u);
  return result;
}

uint64_t sub_1009245B4(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v55 = a3;
  v54 = a2;
  v4 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v4 - 8);
  v52 = &v45 - v5;
  v51 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v49 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v48);
  v47 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  v45 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v10 - 8);
  v12 = &v45 - v11;
  v13 = type metadata accessor for FMNAccountType();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AccessoryIdentityPairingLockAckEndPoint(0);
  v18 = v17 - 8;
  v19 = __chkstk_darwin(v17);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = (&v45 - v22);
  v24 = enum case for FMNAccountType.w2Accessory(_:);
  v25 = *(v14 + 104);
  v25(v16, enum case for FMNAccountType.w2Accessory(_:), v13);
  type metadata accessor for AccountURLComponents();
  swift_allocObject();
  *v23 = sub_1010B32C8(v16);
  v26 = v23 + *(v18 + 28);
  v46 = v23;
  v25(v26, v24, v13);
  type metadata accessor for SearchPartyURLSessionFactory(0);
  swift_allocObject();
  v27 = type metadata accessor for FMNMockingPreferences();
  (*(*(v27 - 8) + 56))(v12, 1, 1, v27);
  v28 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  type metadata accessor for ServerInteractionController(0);
  v29 = swift_allocObject();
  sub_10093C940(v23, v21, type metadata accessor for AccessoryIdentityPairingLockAckEndPoint);
  v30 = sub_10061EC7C(v21, v28, v29);
  sub_1000BC488();
  static DispatchQoS.unspecified.getter();
  v56[0] = _swiftEmptyArrayStorage;
  sub_10093C818(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v50 + 104))(v49, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v51);
  v31 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v32 = type metadata accessor for TaskPriority();
  v33 = v52;
  (*(*(v32 - 8) + 56))(v52, 1, 1, v32);
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  v35 = a1[11];
  *(v34 + 192) = a1[10];
  *(v34 + 208) = v35;
  v36 = a1[13];
  *(v34 + 224) = a1[12];
  *(v34 + 240) = v36;
  v37 = a1[7];
  *(v34 + 128) = a1[6];
  *(v34 + 144) = v37;
  v38 = a1[9];
  *(v34 + 160) = a1[8];
  *(v34 + 176) = v38;
  v39 = a1[3];
  *(v34 + 64) = a1[2];
  *(v34 + 80) = v39;
  v40 = a1[5];
  *(v34 + 96) = a1[4];
  *(v34 + 112) = v40;
  v41 = a1[1];
  *(v34 + 32) = *a1;
  *(v34 + 48) = v41;
  *(v34 + 256) = v53;
  *(v34 + 264) = v31;
  v42 = v55;
  *(v34 + 272) = v54;
  *(v34 + 280) = v42;
  *(v34 + 288) = v30;
  sub_10093CBF0(a1, v56);

  v43 = v31;

  sub_10025EDD4(0, 0, v33, &unk_1013C8250, v34);

  return sub_10093C9A8(v46, type metadata accessor for AccessoryIdentityPairingLockAckEndPoint);
}

id sub_100924C68(const void *a1, int a2, void (*a3)(uint64_t), uint64_t a4)
{
  v78 = a3;
  v79 = a4;
  LODWORD(v80) = a2;
  v77 = a1;
  v72 = *v4;
  v5 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v5 - 8);
  v73 = v64 - v6;
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v70 = *(v7 - 8);
  v71 = v7;
  __chkstk_darwin(v7);
  v69 = v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v67);
  v68 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v66 = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1000BC4D4(&qword_1016993A8, &unk_101391930);
  __chkstk_darwin(v75);
  v76 = (v64 - v12);
  v13 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v13 - 8);
  v15 = v64 - v14;
  v16 = type metadata accessor for AirPodsLEPairingLockCheckEndPoint(0);
  v17 = __chkstk_darwin(v16);
  v19 = v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v64 - v20;
  v22 = static os_log_type_t.default.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  v23 = qword_10177C410;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_101385D80;
  *(v24 + 56) = &type metadata for String;
  *(v24 + 64) = sub_100008C00();
  *(v24 + 32) = 0xD000000000000048;
  *(v24 + 40) = 0x8000000101365C40;
  os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v23, "%@", 2, 2, v24);

  v25 = enum case for FMNAccountType.w2Accessory(_:);
  v26 = type metadata accessor for FMNAccountType();
  (*(*(v26 - 8) + 104))(v21, v25, v26);
  v27 = v80;
  v28 = v80 & 1;
  v21[*(v16 + 20)] = v80 & 1;
  type metadata accessor for SearchPartyURLSessionFactory(0);
  swift_allocObject();
  v29 = type metadata accessor for FMNMockingPreferences();
  (*(*(v29 - 8) + 56))(v15, 1, 1, v29);
  v30 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  type metadata accessor for ServerInteractionController(0);
  v31 = swift_allocObject();
  sub_10093C940(v21, v19, type metadata accessor for AirPodsLEPairingLockCheckEndPoint);
  v32 = sub_10061F8C4(v19, v30, v31);
  v33 = 0;
  v34 = 0;
  v35 = v21;
  if (v27)
  {
    goto LABEL_7;
  }

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v37 = result;
    v38 = sub_100513CD8();

    if (!v38 || (v33 = sub_100513FCC(), v34 = v39, v38, !v34))
    {
      if (qword_1016950E0 != -1)
      {
        swift_once();
      }

      v59 = type metadata accessor for Logger();
      sub_1000076D4(v59, qword_10177C448);
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&_mh_execute_header, v60, v61, "Unable to retrieve masked identifier", v62, 2u);
      }

      type metadata accessor for SPPairingSessionError(0);
      v47 = 27;
      goto LABEL_19;
    }

LABEL_7:
    v40 = v77;
    v41 = sub_10093A8E4(v77);
    if (v42 >> 60 != 15)
    {
      v75 = v42;
      v76 = v41;
      v48 = sub_1000BC488();
      v80 = v35;
      v64[0] = "lonePairing:completion:)";
      v64[1] = v48;
      static DispatchQoS.unspecified.getter();
      v81[0] = _swiftEmptyArrayStorage;
      sub_10093C818(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
      v65 = v28;
      v49 = v32;
      sub_1000BC4D4(&unk_101695580, &qword_101385D90);
      sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v70 + 104))(v69, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v71);
      v50 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v51 = type metadata accessor for TaskPriority();
      v52 = v73;
      (*(*(v51 - 8) + 56))(v73, 1, 1, v51);
      v53 = swift_allocObject();
      *(v53 + 16) = 0;
      *(v53 + 24) = 0;
      memcpy((v53 + 32), v40, 0x160uLL);
      *(v53 + 384) = v33;
      *(v53 + 392) = v34;
      v55 = v75;
      v54 = v76;
      *(v53 + 400) = v76;
      *(v53 + 408) = v55;
      *(v53 + 416) = v74;
      *(v53 + 424) = v50;
      v56 = v79;
      *(v53 + 432) = v78;
      *(v53 + 440) = v56;
      *(v53 + 448) = v49;
      *(v53 + 456) = v65;
      *(v53 + 464) = v72;
      sub_100165278(v40, v81);
      sub_10002E98C(v54, v55);

      v57 = v50;

      sub_10025EDD4(0, 0, v52, &unk_1013C82E8, v53);

      sub_100006654(v54, v55);
      v58 = v80;
      return sub_10093C9A8(v58, type metadata accessor for AirPodsLEPairingLockCheckEndPoint);
    }

    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_1000076D4(v43, qword_10177C448);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Unable to generate BAA payload", v46, 2u);
    }

    type metadata accessor for SPPairingSessionError(0);
    v47 = 26;
LABEL_19:
    v81[44] = v47;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10093C818(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    v63 = v76;
    *v76 = v81[0];
    swift_storeEnumTagMultiPayload();
    v78(v63);

    sub_10000B3A8(v63, &qword_1016993A8, &unk_101391930);
    v58 = v35;
    return sub_10093C9A8(v58, type metadata accessor for AirPodsLEPairingLockCheckEndPoint);
  }

  __break(1u);
  return result;
}

uint64_t sub_100925674(const void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v61 = a2;
  v62 = a3;
  v63 = a1;
  v57 = sub_1000BC4D4(&qword_1016993C0, &qword_1013C82C0);
  __chkstk_darwin(v57);
  v58 = (v51 - v3);
  v4 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v4 - 8);
  v59 = v51 - v5;
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v55 = *(v6 - 8);
  v56 = v6;
  __chkstk_darwin(v6);
  v54 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v52);
  v53 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  v51[1] = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v11 - 8);
  v13 = v51 - v12;
  v14 = type metadata accessor for FMNAccountType();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AirPodsLEPairingLockAckEndPoint(0);
  v19 = v18 - 8;
  v20 = __chkstk_darwin(v18);
  v22 = v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = (v51 - v23);
  v25 = enum case for FMNAccountType.w2Accessory(_:);
  v26 = *(v15 + 104);
  v26(v17, enum case for FMNAccountType.w2Accessory(_:), v14);
  type metadata accessor for AccountURLComponents();
  swift_allocObject();
  *v24 = sub_1010B32C8(v17);
  v26(v24 + *(v19 + 28), v25, v14);
  type metadata accessor for SearchPartyURLSessionFactory(0);
  swift_allocObject();
  v27 = type metadata accessor for FMNMockingPreferences();
  (*(*(v27 - 8) + 56))(v13, 1, 1, v27);
  v28 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  type metadata accessor for ServerInteractionController(0);
  v29 = swift_allocObject();
  sub_10093C940(v24, v22, type metadata accessor for AirPodsLEPairingLockAckEndPoint);
  v30 = sub_10061FCDC(v22, v28, v29);
  v31 = sub_10093AF34(v63);
  if (v32 >> 60 == 15)
  {
    v33 = v61;
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_1000076D4(v34, qword_10177C448);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Unable to generate BAA payload", v37, 2u);
    }

    type metadata accessor for SPPairingSessionError(0);
    v64[34] = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10093C818(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    v38 = v58;
    *v58 = v64[0];
    swift_storeEnumTagMultiPayload();
    v33(v38);

    sub_10000B3A8(v38, &qword_1016993C0, &qword_1013C82C0);
    v39 = v24;
  }

  else
  {
    v40 = v31;
    v41 = v32;
    v57 = sub_1000BC488();
    v58 = v30;
    static DispatchQoS.unspecified.getter();
    v64[0] = _swiftEmptyArrayStorage;
    sub_10093C818(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_1000BC4D4(&unk_101695580, &qword_101385D90);
    sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v55 + 104))(v54, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v56);
    v42 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v43 = type metadata accessor for TaskPriority();
    v44 = v59;
    (*(*(v43 - 8) + 56))(v59, 1, 1, v43);
    v45 = swift_allocObject();
    v45[2] = 0;
    v45[3] = 0;
    v46 = v63;
    memcpy(v45 + 4, v63, 0x110uLL);
    v45[38] = v40;
    v45[39] = v41;
    v47 = v61;
    v45[40] = v60;
    v45[41] = v42;
    v48 = v62;
    v45[42] = v47;
    v45[43] = v48;
    v61 = v24;
    v45[44] = v58;
    sub_100164F7C(v46, v64);
    sub_10002E98C(v40, v41);

    v49 = v42;

    sub_10025EDD4(0, 0, v44, &unk_1013C82D0, v45);

    sub_100006654(v40, v41);
    v39 = v61;
  }

  return sub_10093C9A8(v39, type metadata accessor for AirPodsLEPairingLockAckEndPoint);
}

id sub_100925EB8(uint64_t a1, _OWORD *a2, uint64_t (*a3)(void), uint64_t a4)
{
  v71 = a3;
  v68 = a2;
  v59 = a1;
  v5 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v5 - 8);
  v69 = &v57 - v6;
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v66 = *(v7 - 8);
  v67 = v7;
  __chkstk_darwin(v7);
  v65 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v62);
  v63 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v61 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v12 - 8);
  v60 = &v57 - v13;
  v14 = type metadata accessor for FMNAccountType();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AirPodsUnpairEndPoint(0);
  v19 = __chkstk_darwin(v18);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v64 = (&v57 - v22);
  v23 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v23);
  v25 = &v57 - v24;
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v27 = result;
    v28 = [result aa_primaryAppleAccount];

    if (v28)
    {
      v58 = a4;

      v29 = static os_log_type_t.default.getter();
      if (qword_1016950C8 != -1)
      {
        swift_once();
      }

      v30 = qword_10177C410;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_101385D80;
      sub_1000D2A70(v59, v25, &qword_1016980D0, &unk_10138F3B0);
      v32 = String.init<A>(describing:)();
      v34 = v33;
      *(v31 + 56) = &type metadata for String;
      *(v31 + 64) = sub_100008C00();
      *(v31 + 32) = v32;
      *(v31 + 40) = v34;
      os_log(_:dso:log:_:_:)(v29, &_mh_execute_header, v30, "Removing pairing lock for UUID - %@", 35, 2, v31);

      v35 = enum case for FMNAccountType.w2Accessory(_:);
      v36 = *(v15 + 104);
      v36(v17, enum case for FMNAccountType.w2Accessory(_:), v14);
      type metadata accessor for AccountURLComponents();
      swift_allocObject();
      v37 = sub_1010B32C8(v17);
      v38 = v64;
      *v64 = v37;
      v36((v38 + *(v18 + 20)), v35, v14);
      type metadata accessor for SearchPartyURLSessionFactory(0);
      swift_allocObject();
      v39 = type metadata accessor for FMNMockingPreferences();
      (*(*(v39 - 8) + 56))(v60, 1, 1, v39);
      v40 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
      type metadata accessor for ServerInteractionController(0);
      v41 = swift_allocObject();
      sub_10093C940(v38, v21, type metadata accessor for AirPodsUnpairEndPoint);
      v42 = sub_10062156C(v21, v40, v41);
      sub_1000BC488();
      static DispatchQoS.unspecified.getter();
      v72 = _swiftEmptyArrayStorage;
      sub_10093C818(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
      sub_1000BC4D4(&unk_101695580, &qword_101385D90);
      sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v66 + 104))(v65, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v67);
      v43 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v44 = type metadata accessor for TaskPriority();
      v45 = v69;
      (*(*(v44 - 8) + 56))(v69, 1, 1, v44);
      v46 = swift_allocObject();
      *(v46 + 16) = 0;
      *(v46 + 24) = 0;
      v47 = v68;
      v48 = v68[3];
      *(v46 + 64) = v68[2];
      *(v46 + 80) = v48;
      *(v46 + 96) = v47[4];
      v49 = v47[1];
      *(v46 + 32) = *v47;
      *(v46 + 48) = v49;
      v50 = v71;
      *(v46 + 112) = v70;
      *(v46 + 120) = v43;
      v51 = v58;
      *(v46 + 128) = v50;
      *(v46 + 136) = v51;
      *(v46 + 144) = v42;
      sub_1009399EC(v47, &v72);

      v52 = v43;

      sub_10025EDD4(0, 0, v45, &unk_1013C8230, v46);

      return sub_10093C9A8(v38, type metadata accessor for AirPodsUnpairEndPoint);
    }

    else
    {
      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      sub_1000076D4(v53, qword_10177C418);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&_mh_execute_header, v54, v55, "iCloud not signed in: Skip pairing lock removal.", v56, 2u);
      }

      return v71(0);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_100926764()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 - 1);
  return Hasher._finalize()();
}

Swift::Int sub_1009267DC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2 - 1);
  return Hasher._finalize()();
}

void *sub_100926820@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  if ((*result + 1) < 3)
  {
    v2 = *result + 1;
  }

  else
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_10092684C()
{
  v1 = 0x63697373616C632ELL;
  if (*v0 != 1)
  {
    v1 = 0x72656E45776F6C2ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E752ELL;
  }
}

uint64_t sub_100926A0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10093CAB0();

  return RawRepresentable<>.codingKey.getter(a1, a2, v4);
}

uint64_t sub_100926A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10093CAB0();

  return RawRepresentable<>.init<A>(codingKey:)(a1, a4, a2, a5, v10, a3);
}

uint64_t sub_100926ADC()
{
  v1 = 0x6465726961702ELL;
  if (*v0 != 1)
  {
    v1 = 0x64656B636F6C2ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E752ELL;
  }
}

unint64_t sub_100926B3C()
{
  result = qword_1016AECB8;
  if (!qword_1016AECB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AECB8);
  }

  return result;
}

unint64_t sub_100926B94()
{
  result = qword_1016AECC0;
  if (!qword_1016AECC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AECC0);
  }

  return result;
}

uint64_t sub_100926BE8()
{
  v1 = v0;
  v2 = 0x6E776F6E6B6E752ELL;
  v3 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  __chkstk_darwin(v3 - 8);
  v5 = &v26[-v4];
  v27 = 0;
  v28 = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  v6._countAndFlagsBits = 0x203A644974726170;
  v6._object = 0xE800000000000000;
  String.append(_:)(v6);
  v26[15] = *v0;
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x617453636E797320;
  v8._object = 0xED0000203A737574;
  String.append(_:)(v8);
  v9 = 0x6465726961702ELL;
  if (v0[1] != 1)
  {
    v9 = 0x64656B636F6C2ELL;
  }

  if (v0[1])
  {
    v10 = v9;
  }

  else
  {
    v10 = 0x6E776F6E6B6E752ELL;
  }

  if (v0[1])
  {
    v11 = 0xE700000000000000;
  }

  else
  {
    v11 = 0xE800000000000000;
  }

  v12 = v11;
  String.append(_:)(*&v10);

  v13._countAndFlagsBits = 0x7264644163616D20;
  v13._object = 0xED0000203A737365;
  String.append(_:)(v13);
  v14 = type metadata accessor for MultipartAccessoryPairingInfo(0);
  sub_1000D2A70(&v0[*(v14 + 24)], v5, &qword_1016A40D0, &unk_10138BE70);
  v15 = type metadata accessor for MACAddress();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v5, 1, v15) == 1)
  {
    sub_10000B3A8(v5, &qword_1016A40D0, &unk_10138BE70);
    v17 = 0xE400000000000000;
    v18 = 1701736302;
  }

  else
  {
    v19 = MACAddress.description.getter();
    v17 = v20;
    (*(v16 + 8))(v5, v15);
    v18 = v19;
  }

  v21 = v17;
  String.append(_:)(*&v18);

  v22._countAndFlagsBits = 0x676E697269617020;
  v22._object = 0xEE00203A65707954;
  String.append(_:)(v22);
  if (v1[*(v14 + 28)])
  {
    if (v1[*(v14 + 28)] == 1)
    {
      v23 = 0xE800000000000000;
      v2 = 0x63697373616C632ELL;
    }

    else
    {
      v23 = 0xEA00000000007967;
      v2 = 0x72656E45776F6C2ELL;
    }
  }

  else
  {
    v23 = 0xE800000000000000;
  }

  v24._countAndFlagsBits = v2;
  v24._object = v23;
  String.append(_:)(v24);

  return v27;
}

uint64_t sub_100926EFC(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016AECE8, &qword_1013C8240);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_10093C898();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v11[14] = *(v3 + 1);
    v11[13] = 1;
    sub_10093CA08();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v9 = type metadata accessor for MultipartAccessoryPairingInfo(0);
    v11[12] = 2;
    type metadata accessor for MACAddress();
    sub_10093C818(&qword_10169B550, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v11[11] = *(v3 + *(v9 + 28));
    v11[10] = 3;
    sub_100525E54();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10092713C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v21 = sub_1000BC4D4(&qword_1016AECD0, &qword_1013C8238);
  v7 = *(v21 - 8);
  __chkstk_darwin(v21);
  v9 = &v19 - v8;
  v10 = type metadata accessor for MultipartAccessoryPairingInfo(0);
  __chkstk_darwin(v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v22 = a1;
  sub_1000035D0(a1, v13);
  sub_10093C898();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(v22);
  }

  v28 = 0;
  v14 = v12;
  *v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = 1;
  sub_10093C8EC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = v7;
  v14[1] = v27;
  type metadata accessor for MACAddress();
  v25 = 2;
  sub_10093C818(&qword_1016A41D0, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v16 = v14;
  sub_1000D2AD8(v6, &v14[*(v10 + 24)], &qword_1016A40D0, &unk_10138BE70);
  v23 = 3;
  sub_100525E00();
  v17 = v21;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v15 + 8))(v9, v17);
  *(v16 + *(v10 + 28)) = v24;
  sub_10093C940(v16, v20, type metadata accessor for MultipartAccessoryPairingInfo);
  sub_100007BAC(v22);
  return sub_10093C9A8(v16, type metadata accessor for MultipartAccessoryPairingInfo);
}

uint64_t sub_100927508()
{
  v1 = 0x644974726170;
  v2 = 0x657264644163616DLL;
  if (*v0 != 2)
  {
    v2 = 0x54676E6972696170;
  }

  if (*v0)
  {
    v1 = 0x74617453636E7973;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10092758C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10093CC28(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1009275B4(uint64_t a1)
{
  v2 = sub_10093C898();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1009275F0(uint64_t a1)
{
  v2 = sub_10093C898();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100927660()
{
  *&v64 = 0;
  *(&v64 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(765);
  v59 = v64;
  v1._countAndFlagsBits = 0xD000000000000014;
  v1._object = 0x80000001013655C0;
  String.append(_:)(v1);
  v2._countAndFlagsBits = Data.hexString.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0xD00000000000001ELL;
  v3._object = 0x80000001013655E0;
  String.append(_:)(v3);
  v4._countAndFlagsBits = Data.hexString.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0xD00000000000001FLL;
  v5._object = 0x8000000101365600;
  String.append(_:)(v5);
  v6 = 0;
  v7 = 0;
  if (*(v0 + 40) >> 60 != 15)
  {
    v6 = Data.hexString.getter();
  }

  *&v64 = v6;
  *(&v64 + 1) = v7;
  sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
  v8._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0xD000000000000016;
  v9._object = 0x8000000101365620;
  String.append(_:)(v9);
  v10 = 0x6465726961702ELL;
  if (*(v0 + 48) != 1)
  {
    v10 = 0x64656B636F6C2ELL;
  }

  if (*(v0 + 48))
  {
    v11 = v10;
  }

  else
  {
    v11 = 0x6E776F6E6B6E752ELL;
  }

  if (*(v0 + 48))
  {
    v12 = 0xE700000000000000;
  }

  else
  {
    v12 = 0xE800000000000000;
  }

  v13 = v12;
  String.append(_:)(*&v11);

  v14._countAndFlagsBits = 0xD000000000000031;
  v14._object = 0x8000000101365640;
  String.append(_:)(v14);
  v64 = *(v0 + 56);
  v63 = *(v0 + 56);
  sub_1000D2A70(&v64, &v62, &qword_1016A0AC0, &unk_1013926A0);
  v15._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v15);

  v16._countAndFlagsBits = 0xD000000000000017;
  v16._object = 0x8000000101365680;
  String.append(_:)(v16);
  v62 = *(v0 + 72);
  v63 = v62;
  sub_1000D2A70(&v63, &v61, &qword_1016A0AC0, &unk_1013926A0);
  v17._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v17);

  v18._countAndFlagsBits = 0xD00000000000001DLL;
  v18._object = 0x80000001013656A0;
  String.append(_:)(v18);
  v61 = *(v0 + 88);
  v62 = v61;
  sub_1000D2A70(&v62, &v60, &qword_1016A0AC0, &unk_1013926A0);
  v19._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v19);

  v20._countAndFlagsBits = 0xD000000000000023;
  v20._object = 0x80000001013656C0;
  String.append(_:)(v20);
  v21._countAndFlagsBits = Data.hexString.getter();
  String.append(_:)(v21);

  v22._object = 0x80000001013656F0;
  v22._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v22);
  v23._countAndFlagsBits = Data.hexString.getter();
  String.append(_:)(v23);

  v24._countAndFlagsBits = 0xD000000000000018;
  v24._object = 0x8000000101365710;
  String.append(_:)(v24);
  v25._countAndFlagsBits = Data.hexString.getter();
  String.append(_:)(v25);

  v26._countAndFlagsBits = 0xD000000000000016;
  v26._object = 0x8000000101365730;
  String.append(_:)(v26);
  *&v61 = *(v0 + 152);
  BYTE8(v61) = *(v0 + 160);
  sub_1000BC4D4(&qword_101697E58, &qword_1013C8210);
  v27._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v27);

  v28._countAndFlagsBits = 0xD00000000000001ELL;
  v28._object = 0x8000000101365750;
  String.append(_:)(v28);
  v29._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v29);

  v30._countAndFlagsBits = 0xD000000000000028;
  v30._object = 0x8000000101365770;
  String.append(_:)(v30);
  type metadata accessor for MultipartAccessoryPairingInfo(0);
  sub_100101BAC();
  v31._countAndFlagsBits = Dictionary.description.getter();
  String.append(_:)(v31);

  v32._countAndFlagsBits = 0xD000000000000016;
  v32._object = 0x80000001013657A0;
  String.append(_:)(v32);
  *&v61 = *(v0 + 184);
  v33._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v33);

  v34._object = 0x80000001013657C0;
  v34._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v34);
  v35._countAndFlagsBits = Data.hexString.getter();
  String.append(_:)(v35);

  v36._countAndFlagsBits = 0xD000000000000020;
  v36._object = 0x80000001013657E0;
  String.append(_:)(v36);
  v37._countAndFlagsBits = Data.hexString.getter();
  String.append(_:)(v37);

  v38._object = 0x8000000101365810;
  v38._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v38);
  v39._countAndFlagsBits = Data.hexString.getter();
  String.append(_:)(v39);

  v40._countAndFlagsBits = 0xD00000000000002ELL;
  v40._object = 0x8000000101365830;
  String.append(_:)(v40);
  v41._countAndFlagsBits = Data.hexString.getter();
  String.append(_:)(v41);

  v42._countAndFlagsBits = 0xD00000000000001BLL;
  v42._object = 0x8000000101365860;
  String.append(_:)(v42);
  v43._countAndFlagsBits = Data.hexString.getter();
  String.append(_:)(v43);

  v44._countAndFlagsBits = 0xD00000000000001DLL;
  v44._object = 0x8000000101365880;
  String.append(_:)(v44);
  v45 = 0;
  v46 = 0;
  if (*(v0 + 280) >> 60 != 15)
  {
    v45 = Data.hexString.getter();
  }

  *&v61 = v45;
  *(&v61 + 1) = v46;
  v47._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v47);

  v48._countAndFlagsBits = 0xD00000000000003ELL;
  v48._object = 0x80000001013658A0;
  String.append(_:)(v48);
  v60 = *(v0 + 288);
  v61 = v60;
  sub_1000D2A70(&v61, &v58, &qword_1016A0AC0, &unk_1013926A0);
  v49._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v49);

  v50._countAndFlagsBits = 0xD000000000000017;
  v50._object = 0x80000001013658E0;
  String.append(_:)(v50);
  v60 = *(v0 + 304);
  v58 = *(v0 + 304);
  sub_1000D2A70(&v60, &v57, &qword_1016AECC8, &unk_1013C8218);
  sub_1000BC4D4(&qword_1016AECC8, &unk_1013C8218);
  v51._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v51);

  v52._countAndFlagsBits = 0xD000000000000028;
  v52._object = 0x8000000101365900;
  String.append(_:)(v52);
  v53._countAndFlagsBits = Data.hexString.getter();
  String.append(_:)(v53);

  v54._countAndFlagsBits = 0xD00000000000001BLL;
  v54._object = 0x8000000101365930;
  String.append(_:)(v54);
  v55._countAndFlagsBits = Data.hexString.getter();
  String.append(_:)(v55);

  return v59;
}

uint64_t sub_100927E34(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016AEE20, &unk_1013CA1F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_10093F404();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v15 = *v3;
  v16 = v9;
  v14 = 0;
  sub_10002E98C(v15, v9);
  sub_1000E3190();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v2)
  {
    sub_100006654(v15, v16);
  }

  else
  {
    sub_100006654(v15, v16);
    v10 = v3[3];
    v15 = v3[2];
    v16 = v10;
    v14 = 1;
    sub_10002E98C(v15, v10);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v15, v16);
    v12 = v3[5];
    v15 = v3[4];
    v16 = v12;
    v14 = 2;
    sub_100017D5C(v15, v12);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v15, v16);
    type metadata accessor for AirPodsUnpairData.DeviceUnpairData(0);
    LOBYTE(v15) = 3;
    type metadata accessor for UUID();
    sub_10093C818(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v15) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v15) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100928114(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016AEDF0, &qword_1013CA1E0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_10093F2A8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v16 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = *(v3 + 64);
    v12 = 4;
    sub_10093F2FC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = *(v3 + 72);
    v10[15] = 5;
    sub_1000BC4D4(&qword_1016AEE08, &qword_1013CA1E8);
    sub_10093F350();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1009283DC()
{
  v1 = *v0;
  v2 = 1684628325;
  v3 = 0x6449616E6D66;
  v4 = 0x49746375646F7270;
  if (v1 != 4)
  {
    v4 = 0x6449726F646E6576;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x644970696863;
  if (v1 != 1)
  {
    v5 = 0x754E6C6169726573;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100928494@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10093CD98(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1009284BC(uint64_t a1)
{
  v2 = sub_10093F404();

  return CodingKey.description.getter(a1, v2);
}