void sub_1007A4B48(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(unint64_t, char *, uint64_t))
{
  v72 = a6;
  v71 = a5;
  v70 = a4;
  v77 = a3;
  v79 = a2;
  v80 = type metadata accessor for WildModeTrackingLocation(0);
  v11 = *(v80 - 8);
  __chkstk_darwin(v80);
  v13 = &v67[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v74 = type metadata accessor for MACAddress();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v75 = &v67[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  __chkstk_darwin(v15 - 8);
  v17 = &v67[-v16];
  v18 = type metadata accessor for WildModeAssociationRecord(0);
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v67[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v24 = &v67[-v23];
  v78 = a8;
  _Block_copy(a8);
  v76 = a1;
  v25 = v79;
  v79 = a7;
  sub_100793720(a1, v25, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_10000B3A8(v17, &unk_1016C7C90, &qword_1013BB4B0);
    v26 = static os_log_type_t.error.getter();
    if (qword_1016950B0 != -1)
    {
      v65 = v26;
      swift_once();
      v26 = v65;
    }

    os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, qword_10177C3F8, "No wildModeAssociationRecord found", 34, 2, _swiftEmptyArrayStorage);
    type metadata accessor for TrackingAvoidanceError(0);
    v81 = 3;
    sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101385D80;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v28;
    *(inited + 48) = 0xD000000000000027;
    *(inited + 56) = 0x800000010135F6C0;
    sub_10090403C(inited);
    swift_setDeallocating();
    sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
    sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError, &unk_101389AA8);
    _BridgedStoredNSError.init(_:userInfo:)();
    v29 = v82[0];
    v30 = _convertErrorToNSError(_:)();
    v31 = v78;
    (*(v78 + 2))(v78, v30);

    v32 = v31;
    goto LABEL_24;
  }

  sub_1007A91C8(v17, v24, type metadata accessor for WildModeAssociationRecord);
  if (qword_101694918 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_1000076D4(v33, qword_1016A9318);
  sub_1007A7DFC(v24, v22, type metadata accessor for WildModeAssociationRecord);
  v34 = v73;
  v35 = v75;
  v36 = v74;
  (*(v73 + 16))(v75, v76, v74);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v82[0] = v69;
    *v39 = 136315394;
    type metadata accessor for UUID();
    sub_100799304(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v68 = v38;
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v41;
    sub_1007A810C(v22, type metadata accessor for WildModeAssociationRecord);
    v43 = sub_1000136BC(v40, v42, v82);

    *(v39 + 4) = v43;
    *(v39 + 12) = 2080;
    sub_100799304(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    v44 = v75;
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = v46;
    (*(v34 + 8))(v44, v36);
    v48 = sub_1000136BC(v45, v47, v82);

    *(v39 + 14) = v48;
    _os_log_impl(&_mh_execute_header, v37, v68, "update: found UT record UUID %s address %s.", v39, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v34 + 8))(v35, v36);
    sub_1007A810C(v22, type metadata accessor for WildModeAssociationRecord);
  }

  v49 = [v77 observedLocations];
  sub_100008BB8(0, &qword_1016B27B0, SPObservationLocation_ptr);
  v50 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v50 >> 62))
  {
    v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v51)
    {
      goto LABEL_12;
    }

LABEL_22:

    v53 = _swiftEmptyArrayStorage;
LABEL_23:
    v66 = v78;
    _Block_copy(v78);
    sub_1007A3124(v24, v77, v76, v70, v71, v72, v53, v79, v66);
    _Block_release(v66);

    sub_1007A810C(v24, type metadata accessor for WildModeAssociationRecord);
    v32 = v66;
LABEL_24:
    _Block_release(v32);
    return;
  }

  v51 = _CocoaArrayWrapper.endIndex.getter();
  if (!v51)
  {
    goto LABEL_22;
  }

LABEL_12:
  v82[0] = _swiftEmptyArrayStorage;
  sub_101124B70(0, v51 & ~(v51 >> 63), 0);
  if ((v51 & 0x8000000000000000) == 0)
  {
    v75 = v24;
    v52 = 0;
    v53 = v82[0];
    do
    {
      if ((v50 & 0xC000000000000001) != 0)
      {
        v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v54 = *(v50 + 8 * v52 + 32);
      }

      v55 = v54;
      [v54 latitude];
      v57 = v56;
      [v55 longitude];
      v59 = v58;
      [v55 horizontalAccuracy];
      v61 = v60;
      v62 = [v55 timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      *v13 = v57;
      v13[1] = v59;
      v13[2] = v61;
      v82[0] = v53;
      v64 = v53[2];
      v63 = v53[3];
      if (v64 >= v63 >> 1)
      {
        sub_101124B70((v63 > 1), v64 + 1, 1);
        v53 = v82[0];
      }

      ++v52;
      v53[2] = v64 + 1;
      sub_1007A91C8(v13, v53 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v64, type metadata accessor for WildModeTrackingLocation);
    }

    while (v51 != v52);

    v24 = v75;
    goto LABEL_23;
  }

  __break(1u);
}

void sub_1007A54FC(void *a1, uint64_t *a2, const void *a3)
{
  v314 = a1;
  v5 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  __chkstk_darwin(v5 - 8);
  v294 = &v287 - v6;
  v295 = type metadata accessor for SharedBeaconRecord(0);
  v293 = *(v295 - 8);
  v7 = __chkstk_darwin(v295);
  v291 = &v287 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v292 = &v287 - v9;
  v10 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v10 - 8);
  v298 = &v287 - v11;
  v12 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v13 = __chkstk_darwin(v12 - 8);
  v305 = &v287 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  *&v307 = &v287 - v15;
  v16 = sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  __chkstk_darwin(v16 - 8);
  v304 = &v287 - v17;
  v18 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v301 = *(v18 - 8);
  v302 = v18;
  __chkstk_darwin(v18);
  v299 = &v287 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v21 = __chkstk_darwin(v20 - 8);
  v289 = &v287 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v296 = &v287 - v24;
  __chkstk_darwin(v23);
  v300 = &v287 - v25;
  v308 = type metadata accessor for MACAddress();
  v306 = *(v308 - 1);
  v26 = __chkstk_darwin(v308);
  v309 = &v287 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v290 = &v287 - v29;
  v30 = __chkstk_darwin(v28);
  v297 = &v287 - v31;
  __chkstk_darwin(v30);
  v303 = (&v287 - v32);
  v33 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v33 - 8);
  v35 = &v287 - v34;
  v36 = type metadata accessor for Date();
  v316 = *(v36 - 8);
  v37 = __chkstk_darwin(v36);
  v39 = &v287 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v312 = &v287 - v40;
  _Block_copy(a3);
  _Block_copy(a3);
  v313 = a3;
  _Block_copy(a3);
  v41 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v42 = qword_10177C398;
  v311 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_10138BBE0;
  v317 = *a2;
  sub_1000BC4D4(&qword_1016A94C0, &qword_1013BB4B8);
  v44 = String.init<A>(describing:)();
  *&v315 = a2;
  v46 = v45;
  *(v43 + 56) = &type metadata for String;
  v47 = sub_100008C00();
  *(v43 + 32) = v44;
  *(v43 + 40) = v46;
  *(v43 + 96) = &type metadata for String;
  *(v43 + 104) = v47;
  v310 = v47;
  *(v43 + 64) = v47;
  *(v43 + 72) = 0xD000000000000039;
  *(v43 + 80) = 0x800000010135F420;
  os_log(_:dso:log:_:_:)(v41, &_mh_execute_header, v42, "%{public}@: %{public}@", 22, 2, v43);

  v48 = v314;
  v49 = [v314 trackingIdentifier];
  sub_100780A4C(v49, v35);

  v50 = v316;
  if ((*(v316 + 48))(v35, 1, v36) == 1)
  {
    sub_10000B3A8(v35, &unk_101696900, &unk_10138B1E0);
  }

  else
  {
    v51 = v312;
    (*(v50 + 32))(v312, v35, v36);
    static Date.trustedNow.getter(v39);
    v52 = static Date.> infix(_:_:)();
    v55 = *(v50 + 8);
    v54 = v50 + 8;
    v53 = v55;
    v55(v39, v36);
    if (v52)
    {
      v308 = v53;
      v309 = v36;
      v316 = v54;
      v56 = swift_allocObject();
      v315 = xmmword_101385D80;
      *(v56 + 16) = xmmword_101385D80;
      v57 = [v48 trackingIdentifier];
      v58 = [v57 advertisementData];

      v59 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v60;

      v62 = Data.hexString.getter();
      v64 = v63;
      sub_100016590(v59, v61);
      v65 = v310;
      *(v56 + 56) = &type metadata for String;
      *(v56 + 64) = v65;
      *(v56 + 32) = v62;
      *(v56 + 40) = v64;
      v66 = String.init(format:_:)();
      v68 = v67;
      v69 = static os_log_type_t.default.getter();
      if (qword_1016950B0 != -1)
      {
        swift_once();
      }

      v70 = qword_10177C3F8;
      v71 = swift_allocObject();
      *(v71 + 16) = v315;
      *(v71 + 56) = &type metadata for String;
      *(v71 + 64) = v65;
      *(v71 + 32) = v66;
      *(v71 + 40) = v68;

      os_log(_:dso:log:_:_:)(v69, &_mh_execute_header, v70, "%@", 2, 2, v71);

      type metadata accessor for TrackingAvoidanceError(0);
      v319 = 7;
      sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
      v72 = swift_allocObject();
      *(v72 + 16) = v315;
      *(v72 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v72 + 72) = &type metadata for String;
      *(v72 + 40) = v73;
      *(v72 + 48) = v66;
      *(v72 + 56) = v68;
      sub_10090403C(v72);
      swift_setDeallocating();
      sub_10000B3A8(v72 + 32, &unk_101695C20, &unk_101386D90);
      swift_deallocClassInstance();
      sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError, &unk_101389AA8);
      _BridgedStoredNSError.init(_:userInfo:)();
      v74 = v317;
      v75 = _convertErrorToNSError(_:)();
      v76 = v313;
      (v313)[2](v313, v75);

      v308(v312, v309);
      goto LABEL_79;
    }

    v53(v51, v36);
  }

  v77 = [v48 observedLocations];
  sub_100008BB8(0, &qword_1016B27B0, SPObservationLocation_ptr);
  v78 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v78 >> 62)
  {
    v79 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v79 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v79)
  {
    v87 = static os_log_type_t.error.getter();
    if (qword_1016950B0 != -1)
    {
      v282 = v87;
      swift_once();
      v87 = v282;
    }

    os_log(_:dso:log:_:_:)(v87, &_mh_execute_header, qword_10177C3F8, "There is no location", 20, 2, _swiftEmptyArrayStorage);
    type metadata accessor for TrackingAvoidanceError(0);
    v319 = 4;
    sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101385D80;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v90 = inited + 32;
    v91 = 0x800000010135F5B0;
    *(inited + 72) = &type metadata for String;
    v92 = 0xD000000000000027;
    goto LABEL_36;
  }

  v80 = [v48 observedLocations];
  v81 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v82 = &selRef_initWithBeaconAdvertisements_searchResultMarker_error_;
  if (v81 >> 62)
  {
    v83 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v83 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v84 = 0;
  while (1)
  {
    if (v83 == v84)
    {

      v93 = [v48 trackingIdentifier];
      v94 = [v93 data];

      v95 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v97 = v96;

      if (qword_101694918 != -1)
      {
        swift_once();
      }

      v98 = type metadata accessor for Logger();
      v99 = sub_1000076D4(v98, qword_1016A9318);
      sub_100017D5C(v95, v97);
      v316 = v99;
      v100 = Logger.logObject.getter();
      v101 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v100, v101))
      {
        sub_100016590(v95, v97);

        goto LABEL_46;
      }

      v102 = v97;
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v105 = v104;
      v317 = v104;
      *v103 = 134218242;
      v106 = v102 >> 62;
      if ((v102 >> 62) > 1)
      {
        if (v106 != 2)
        {
          v107 = 0;
          goto LABEL_45;
        }

        v112 = *(v95 + 16);
        v111 = *(v95 + 24);
        v113 = __OFSUB__(v111, v112);
        v107 = v111 - v112;
        if (!v113)
        {
          goto LABEL_45;
        }

        __break(1u);
      }

      else if (!v106)
      {
        v107 = BYTE6(v102);
LABEL_45:
        *(v103 + 4) = v107;
        sub_100016590(v95, v102);
        *(v103 + 12) = 2082;
        v114 = Data.hexString.getter();
        v116 = sub_1000136BC(v114, v115, &v317);

        *(v103 + 14) = v116;
        _os_log_impl(&_mh_execute_header, v100, v101, "Decoding advertisement from advertisementData[%ld]: %{public}s", v103, 0x16u);
        sub_100007BAC(v105);

        v97 = v102;
LABEL_46:
        v117 = [v48 trackingIdentifier];
        v118 = [v117 isPosh];

        v119 = [v48 trackingIdentifier];
        v120 = [v119 networkID];

        v121 = [v48 trackingIdentifier];
        v122 = [v121 status];

        if (v120 == 1)
        {
          v123 = 5;
        }

        else
        {
          v123 = 6;
        }

        if (v118)
        {
          LOBYTE(v124) = v123;
        }

        else
        {
          LODWORD(v124) = (v122 >> 4) & 3;
        }

        v125 = Logger.logObject.getter();
        v126 = static os_log_type_t.default.getter();
        v127 = os_log_type_enabled(v125, v126);
        v312 = v95;
        if (v127)
        {
          v128 = swift_slowAlloc();
          v129 = swift_slowAlloc();
          v317 = v129;
          *v128 = 136446210;
          v130 = sub_100781578(v124);
          v132 = v124;
          v124 = v48;
          v133 = sub_1000136BC(v130, v131, &v317);
          v95 = v312;

          *(v128 + 4) = v133;
          v48 = v124;
          LOBYTE(v124) = v132;
          _os_log_impl(&_mh_execute_header, v125, v126, "UnauthorizedTrackingAdvertisementType: %{public}s", v128, 0xCu);
          sub_100007BAC(v129);
        }

        v134 = v309;
        switch(v124)
        {
          case 4u:
            v161 = v48;
            v162 = Logger.logObject.getter();
            v163 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v162, v163))
            {
              v164 = swift_slowAlloc();
              *v164 = 67109632;
              v165 = [v161 trackingIdentifier];
              v166 = [v165 isPosh];

              *(v164 + 4) = v166;
              *(v164 + 8) = 256;
              v167 = [v161 trackingIdentifier];
              LOBYTE(v166) = [v167 networkID];

              *(v164 + 10) = v166;
              *(v164 + 11) = 256;
              v168 = [v161 trackingIdentifier];
              LOBYTE(v166) = [v168 status];

              *(v164 + 13) = v166;
              v95 = v312;

              _os_log_impl(&_mh_execute_header, v162, v163, "Unknown advertisement type. isPosh: %{BOOL}d networkID: %hhu status: %hhu", v164, 0xEu);
            }

            else
            {

              v162 = v161;
            }

            type metadata accessor for TrackingAvoidanceError(0);
            v319 = 6;
            sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
            v171 = swift_initStackObject();
            *(v171 + 16) = xmmword_101385D80;
            *(v171 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v173 = v171 + 32;
            v174 = "Unknown advertisement type";
            goto LABEL_77;
          case 6u:
            v139 = [v48 trackingIdentifier];
            v140 = [v139 address];

            v141 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v143 = v142;

            sub_100017D5C(v141, v143);
            v144 = v300;
            v311 = v143;
            MACAddress.init(data:type:)();
            v145 = v306;
            v146 = v308;
            if ((*(v306 + 48))(v144, 1, v308) == 1)
            {
              sub_10000B3A8(v144, &qword_1016A40D0, &unk_10138BE70);
              v147 = v311;
              sub_100017D5C(v141, v311);
              v148 = Logger.logObject.getter();
              v149 = static os_log_type_t.error.getter();
              sub_100016590(v141, v147);
              if (os_log_type_enabled(v148, v149))
              {
                v150 = swift_slowAlloc();
                v151 = swift_slowAlloc();
                v317 = v151;
                *v150 = 136446210;
                v152 = Data.hexString.getter();
                v154 = sub_1000136BC(v152, v153, &v317);

                *(v150 + 4) = v154;
                _os_log_impl(&_mh_execute_header, v148, v149, "Invalid MAC address %{public}s", v150, 0xCu);
                sub_100007BAC(v151);
              }

              type metadata accessor for TrackingAvoidanceError(0);
              v319 = 3;
              sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
              v155 = swift_initStackObject();
              *(v155 + 16) = xmmword_101385D80;
              *(v155 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
              *(v155 + 72) = &type metadata for String;
              *(v155 + 40) = v156;
              *(v155 + 48) = 0xD00000000000001FLL;
              *(v155 + 56) = 0x800000010135F4D0;
              sub_10090403C(v155);
              swift_setDeallocating();
              sub_10000B3A8(v155 + 32, &unk_101695C20, &unk_101386D90);
              sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError, &unk_101389AA8);
              _BridgedStoredNSError.init(_:userInfo:)();
              v157 = v317;
              v158 = _convertErrorToNSError(_:)();
              v76 = v313;
              (v313)[2](v313, v158);

              sub_100016590(v95, v97);
              v159 = v141;
              v160 = v311;
              goto LABEL_78;
            }

            v310 = v141;
            v288 = v97;
            v185 = v144;
            v186 = v303;
            (*(v145 + 32))(v303, v185, v146);
            (*(v145 + 16))(v134, v186, v146);
            v187 = v145;
            v188 = Logger.logObject.getter();
            v189 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v188, v189))
            {
              v190 = v134;
              v191 = swift_slowAlloc();
              v192 = swift_slowAlloc();
              v317 = v192;
              *v191 = 136446210;
              sub_100799304(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
              v193 = dispatch thunk of CustomStringConvertible.description.getter();
              v195 = v194;
              v196 = v190;
              v197 = *(v187 + 8);
              v197(v196, v308);
              v198 = sub_1000136BC(v193, v195, &v317);
              v146 = v308;

              *(v191 + 4) = v198;
              _os_log_impl(&_mh_execute_header, v188, v189, "Posh address: %{public}s", v191, 0xCu);
              sub_100007BAC(v192);
              v199 = v288;
            }

            else
            {

              v197 = *(v145 + 8);
              v197(v134, v146);
              v199 = v288;
            }

            v223 = type metadata accessor for UUID();
            v224 = v305;
            (*(*(v223 - 8) + 56))(v305, 1, 1, v223);
            v214 = v313;
            _Block_copy(v313);
            v225 = v303;
            sub_1007A4B48(v303, v224, v314, 0, 0, 0, v315, v214);
            _Block_release(v214);
            sub_100016590(v310, v311);
            sub_100016590(v312, v199);
            sub_10000B3A8(v224, &qword_1016980D0, &unk_10138F3B0);
            v197(v225, v146);
LABEL_89:
            _Block_release(v214);
            _Block_release(v214);
            v201 = v214;
            goto LABEL_80;
          case 5u:
            sub_100017D5C(v95, v97);
            sub_100497060(v95, v97, &v317);
            v135 = v318;
            if (v318 >> 60 == 15)
            {
              v136 = Logger.logObject.getter();
              v137 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v136, v137))
              {
                v138 = swift_slowAlloc();
                *v138 = 0;
                _os_log_impl(&_mh_execute_header, v136, v137, "received an advertisement of unexpected length or format", v138, 2u);
              }

LABEL_70:

              type metadata accessor for TrackingAvoidanceError(0);
              v319 = 3;
              sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
              v171 = swift_initStackObject();
              *(v171 + 16) = xmmword_101385D80;
              *(v171 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v173 = v171 + 32;
              v174 = "Advertisement is malformed";
LABEL_77:
              *(v171 + 72) = &type metadata for String;
              *(v171 + 40) = v172;
              *(v171 + 48) = 0xD00000000000001ALL;
              *(v171 + 56) = (v174 - 32) | 0x8000000000000000;
              sub_10090403C(v171);
              swift_setDeallocating();
              sub_10000B3A8(v173, &unk_101695C20, &unk_101386D90);
              sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError, &unk_101389AA8);
              _BridgedStoredNSError.init(_:userInfo:)();
              v157 = v317;
              v200 = _convertErrorToNSError(_:)();
              v76 = v313;
              (v313)[2](v313, v200);

              v159 = v95;
              v160 = v97;
LABEL_78:
              sub_100016590(v159, v160);

              goto LABEL_79;
            }

            break;
          default:
            sub_100017D5C(v95, v97);
            sub_100497060(v95, v97, &v317);
            v135 = v318;
            if (v318 >> 60 == 15)
            {
              v136 = Logger.logObject.getter();
              v169 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v136, v169))
              {
                v170 = swift_slowAlloc();
                *v170 = 0;
                _os_log_impl(&_mh_execute_header, v136, v169, "received an advertisement of unexpected length or format", v170, 2u);
              }

              goto LABEL_70;
            }

            break;
        }

        v288 = v97;
        v175 = v317;
        type metadata accessor for BeaconKeyManager(0);
        OSAllocatedUnfairLock.callAsFunction<A>(_:)();
        v176 = type metadata accessor for UUID();
        v300 = *(v176 - 8);
        v177 = *(v300 + 7);
        v178 = 1;
        v179 = v307;
        v309 = v176;
        v303 = v177;
        (v177)(v307, 1, 1);
        v316 = v175;
        v180 = v135;
        v181 = sub_1012DD334(v175, v135, v179);
        v182 = v181[2];
        v183 = v301;
        v184 = v304;
        if (v182)
        {
          sub_1007A7DFC(v181 + ((*(v301 + 80) + 32) & ~*(v301 + 80)) + *(v301 + 72) * (v182 - 1), v304, type metadata accessor for BeaconKeyManager.IndexInformation);
          v178 = 0;
        }

        sub_10000B3A8(v307, &qword_1016980D0, &unk_10138F3B0);
        v202 = v302;
        (*(v183 + 56))(v184, v178, 1, v302);
        if ((*(v183 + 48))(v184, 1, v202) == 1)
        {
          sub_10000B3A8(v184, &unk_1016C1120, &qword_1013C49D0);
          v203 = v316;
          v204 = v180;
          sub_100017D5C(v316, v180);
          v205 = static MACAddress.length.getter();
          sub_10002EA98(v205, v203, v180, &v317);
          v206 = v296;
          MACAddress.init(data:type:)();
          v207 = v306;
          v208 = v308;
          v209 = (*(v306 + 48))(v206, 1, v308);
          v210 = v288;
          if (v209 == 1)
          {
            v285 = v313;
            _Block_release(v313);
            _Block_release(v285);
            _Block_release(v285);
            _Block_release(v285);
            __break(1u);
LABEL_111:
            v286 = v313;
            _Block_release(v313);
            _Block_release(v286);
            _Block_release(v286);
            _Block_release(v286);
            __break(1u);
            return;
          }

          v211 = v297;
          (*(v207 + 32))(v297, v206, v208);
          v212 = v305;
          (v303)(v305, 1, 1, v309);
          v213 = v207;
          v214 = v313;
          _Block_copy(v313);
          sub_1007A4B48(v211, v212, v314, 0, 0, 0, v315, v214);
          _Block_release(v214);
          sub_100006654(v203, v204);
          sub_100016590(v312, v210);
          sub_10000B3A8(v212, &qword_1016980D0, &unk_10138F3B0);
          (*(v213 + 8))(v211, v208);
          goto LABEL_89;
        }

        v215 = v299;
        sub_1007A91C8(v184, v299, type metadata accessor for BeaconKeyManager.IndexInformation);
        v216 = v298;
        sub_100AA33AC(v215, v298);
        v217 = type metadata accessor for OwnedBeaconRecord(0);
        v218 = (*(*(v217 - 8) + 48))(v216, 1, v217);
        sub_10000B3A8(v216, &unk_1016A9A20, &qword_10138B280);
        v48 = v288;
        v103 = v180;
        if (v218 == 1)
        {
          v219 = v294;
          sub_100AA5198(v215, v294);
          v220 = v295;
          v221 = (*(v293 + 48))(v219, 1, v295);
          v82 = v316;
          if (v221 == 1)
          {
            sub_10000B3A8(v219, &unk_101698C30, &unk_101392630);
            v222 = v312;
          }

          else
          {
            v288 = v48;
            v244 = v292;
            sub_1007A91C8(v219, v292, type metadata accessor for SharedBeaconRecord);
            v245 = *(v244 + *(v220 + 64));
            v222 = v312;
            if (v245 == 1 || v245 == 4)
            {
              v304 = v103;
              v246 = static os_log_type_t.default.getter();
              if (qword_1016950B0 != -1)
              {
                swift_once();
              }

              v247 = qword_10177C3F8;
              v248 = swift_allocObject();
              v307 = xmmword_101385D80;
              *(v248 + 16) = xmmword_101385D80;
              sub_1007A7DFC(v244, v291, type metadata accessor for SharedBeaconRecord);
              v249 = v295;
              v250 = String.init<A>(describing:)();
              v251 = v310;
              *(v248 + 56) = &type metadata for String;
              *(v248 + 64) = v251;
              *(v248 + 32) = v250;
              *(v248 + 40) = v252;
              v302 = v247;
              os_log(_:dso:log:_:_:)(v246, &_mh_execute_header, v247, "Found shared beacon %@.", 23, 2, v248);

              v80 = *(v249 + 20);
              if ((sub_100785DE8(v80 + v244) & 1) == 0)
              {
                goto LABEL_100;
              }

              v253 = String.init(format:_:)();
              v255 = v254;
              v256 = static os_log_type_t.default.getter();
              v257 = swift_allocObject();
              *(v257 + 16) = v307;
              *(v257 + 56) = &type metadata for String;
              *(v257 + 64) = v251;
              *(v257 + 32) = v253;
              *(v257 + 40) = v255;

              os_log(_:dso:log:_:_:)(v256, &_mh_execute_header, v302, "%@", 2, 2, v257);

              type metadata accessor for TrackingAvoidanceError(0);
              v319 = 7;
              sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
              v258 = swift_initStackObject();
              *(v258 + 16) = v307;
              *(v258 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
              *(v258 + 72) = &type metadata for String;
              *(v258 + 40) = v259;
              *(v258 + 48) = v253;
              *(v258 + 56) = v255;
              sub_10090403C(v258);
              swift_setDeallocating();
              sub_10000B3A8(v258 + 32, &unk_101695C20, &unk_101386D90);
              sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError, &unk_101389AA8);
              _BridgedStoredNSError.init(_:userInfo:)();
              v260 = v317;
              v261 = _convertErrorToNSError(_:)();
              v76 = v313;
              (v313)[2](v313, v261);

              sub_100006654(v316, v304);
              sub_100016590(v312, v288);
              sub_1007A810C(v299, type metadata accessor for BeaconKeyManager.IndexInformation);
              v262 = type metadata accessor for SharedBeaconRecord;
              v263 = v244;
              goto LABEL_105;
            }

            sub_1007A810C(v244, type metadata accessor for SharedBeaconRecord);
            v48 = v288;
          }

          type metadata accessor for TrackingAvoidanceError(0);
          v319 = 6;
          sub_100032898(_swiftEmptyArrayStorage);
          sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError, &unk_101389AA8);
          _BridgedStoredNSError.init(_:userInfo:)();
          v280 = v317;
          v281 = _convertErrorToNSError(_:)();
          v76 = v313;
          (v313)[2](v313, v281);

          sub_100006654(v82, v103);
          v243 = v222;
LABEL_104:
          sub_100016590(v243, v48);
          v262 = type metadata accessor for BeaconKeyManager.IndexInformation;
          v263 = v299;
LABEL_105:
          sub_1007A810C(v263, v262);
          goto LABEL_79;
        }

        v104 = static os_log_type_t.default.getter();
        if (qword_1016950B0 == -1)
        {
LABEL_91:
          os_log(_:dso:log:_:_:)(v104, &_mh_execute_header, qword_10177C3F8, "Beacon belongs to owner", 23, 2, _swiftEmptyArrayStorage);
          v226 = swift_allocObject();
          v315 = xmmword_101385D80;
          *(v226 + 16) = xmmword_101385D80;
          v227 = [v314 trackingIdentifier];
          v228 = [v227 advertisementData];

          v229 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v231 = v230;

          v232 = Data.hexString.getter();
          v234 = v233;
          sub_100016590(v229, v231);
          v235 = v310;
          *(v226 + 56) = &type metadata for String;
          *(v226 + 64) = v235;
          *(v226 + 32) = v232;
          *(v226 + 40) = v234;
          v236 = String.init(format:_:)();
          v238 = v237;
          type metadata accessor for TrackingAvoidanceError(0);
          v319 = 8;
          sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
          v239 = swift_initStackObject();
          *(v239 + 16) = v315;
          *(v239 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *(v239 + 72) = &type metadata for String;
          *(v239 + 40) = v240;
          *(v239 + 48) = v236;
          *(v239 + 56) = v238;
          sub_10090403C(v239);
          swift_setDeallocating();
          sub_10000B3A8(v239 + 32, &unk_101695C20, &unk_101386D90);
          sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError, &unk_101389AA8);
          _BridgedStoredNSError.init(_:userInfo:)();
          v241 = v317;
          v242 = _convertErrorToNSError(_:)();
          v76 = v313;
          (v313)[2](v313, v242);

          sub_100006654(v316, v103);
          v243 = v312;
          goto LABEL_104;
        }

LABEL_109:
        v284 = v104;
        swift_once();
        v104 = v284;
        goto LABEL_91;
      }

      LODWORD(v107) = HIDWORD(v95) - v95;
      if (__OFSUB__(HIDWORD(v95), v95))
      {
        __break(1u);
        goto LABEL_109;
      }

      v107 = v107;
      goto LABEL_45;
    }

    if ((v81 & 0xC000000000000001) != 0)
    {
      v85 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v84 >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_99;
      }

      v85 = *(v81 + 8 * v84 + 32);
    }

    v86 = v85;
    if (__OFADD__(v84, 1))
    {
      break;
    }

    v80 = sub_1010E13F0();

    ++v84;
    if (v80)
    {

      v108 = static os_log_type_t.error.getter();
      if (qword_1016950B0 != -1)
      {
        v283 = v108;
        swift_once();
        v108 = v283;
      }

      os_log(_:dso:log:_:_:)(v108, &_mh_execute_header, qword_10177C3F8, "received locations within blocked regions", 41, 2, _swiftEmptyArrayStorage);
      type metadata accessor for TrackingAvoidanceError(0);
      v319 = 11;
      sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_101385D80;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v90 = inited + 32;
      v91 = 0x800000010135F490;
      *(inited + 72) = &type metadata for String;
      v92 = 0xD00000000000001CLL;
LABEL_36:
      *(inited + 40) = v89;
      *(inited + 48) = v92;
      *(inited + 56) = v91;
      sub_10090403C(inited);
      swift_setDeallocating();
      sub_10000B3A8(v90, &unk_101695C20, &unk_101386D90);
      sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError, &unk_101389AA8);
      _BridgedStoredNSError.init(_:userInfo:)();
      v109 = v317;
      v110 = _convertErrorToNSError(_:)();
      v76 = v313;
      (v313)[2](v313, v110);

LABEL_79:
      _Block_release(v76);
      _Block_release(v76);
      v201 = v76;
      goto LABEL_80;
    }
  }

  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  v264 = v304;
  sub_100017D5C(v82, v304);
  v265 = static MACAddress.length.getter();
  sub_10002EA98(v265, v82, v264, &v317);
  v266 = v289;
  MACAddress.init(data:type:)();
  v267 = v306;
  v268 = v308;
  if ((*(v306 + 48))(v266, 1, v308) == 1)
  {
    goto LABEL_111;
  }

  v269 = v290;
  (*(v267 + 32))(v290, v266, v268);
  v270 = v292;
  v271 = v80 + v292;
  v272 = v305;
  v273 = v309;
  (*(v300 + 2))(v305, v271, v309);
  (v303)(v272, 0, 1, v273);
  v274 = (v270 + *(v295 + 28));
  v275 = v267;
  v276 = *v274;
  v277 = *(v274 + 1);
  v278 = *(v274 + 2);
  v279 = v313;
  _Block_copy(v313);
  sub_1007A4B48(v269, v272, v314, v276, v277, v278, v315, v279);
  _Block_release(v279);
  sub_100006654(v316, v264);
  sub_100016590(v312, v288);
  sub_10000B3A8(v272, &qword_1016980D0, &unk_10138F3B0);
  (*(v275 + 8))(v269, v308);
  sub_1007A810C(v299, type metadata accessor for BeaconKeyManager.IndexInformation);
  sub_1007A810C(v270, type metadata accessor for SharedBeaconRecord);
  _Block_release(v279);
  _Block_release(v279);
  v201 = v279;
LABEL_80:
  _Block_release(v201);
}

unint64_t sub_1007A7D10()
{
  result = qword_1016A94C8;
  if (!qword_1016A94C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A94C8);
  }

  return result;
}

unint64_t sub_1007A7D8C()
{
  result = qword_1016A9510;
  if (!qword_1016A9510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9510);
  }

  return result;
}

uint64_t sub_1007A7DFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1007A7E6C(uint64_t a1)
{
  v4 = *(type metadata accessor for MACAddress() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014744;

  return sub_10078D7A8(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_1007A7FE0()
{

  return _swift_deallocObject(v0, 40);
}

void sub_1007A8054(uint64_t a1)
{
  v3 = *(type metadata accessor for WildModeAssociationRecord(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  sub_100793D50(a1, v1 + v4, v6, v8, v9);
}

uint64_t sub_1007A810C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1007A816C()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1007A8208(void (*a1)(void), uint64_t a2)
{
  v5 = *(type metadata accessor for MACAddress() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_101191C00(a1, a2, v2 + v6, v7);
}

uint64_t sub_1007A82B4()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_1007A8390(void (*a1)(void, void, void))
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(type metadata accessor for MACAddress() - 8);
  v8 = *(v7 + 80);
  v9 = (v6 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = *(sub_1000BC4D4(&unk_101698C30, &unk_101392630) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v8 + v12) & ~v8;
  v14 = (v13 + v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_10078798C(a1, *(v1 + 16), *(v1 + 24), v1 + v4, *(v1 + v5), *(v1 + v6), (v1 + v9), v1 + v12, (v1 + v13), *(v1 + ((v13 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v13 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + v14), *(v1 + v14 + 8), *(v1 + ((v14 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v14 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1007A857C()
{
  v2 = *(type metadata accessor for WildModeAssociationRecord(0) - 8);
  v3 = (*(v2 + 80) + 17) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_10078C2B0(v4, v0 + v3);
}

uint64_t sub_1007A8654(char *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for MACAddress() - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 8 + v5) & ~v7;
  v9 = *(v6 + 64);
  v10 = *(sub_1000BC4D4(&unk_101698C30, &unk_101392630) - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v7 + 8 + v12) & ~v7;
  v14 = (v13 + v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_100789E8C(a1, *(v1 + 16), v1 + v4, *(v1 + v5), (v1 + v8), v1 + v11, *(v1 + v12), (v1 + v13), *(v1 + ((v13 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v13 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + v14), *(v1 + v15), *(v1 + v15 + 8), *(v1 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1007A8840()
{
  v1 = v0;
  v2 = type metadata accessor for WildModeAssociationRecord(0);
  v48 = *(*(v2 - 1) + 80);
  v46 = *(*(v2 - 1) + 64);
  v47 = (v48 + 17) & ~v48;
  v3 = v0 + v47;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v47, v4);
  v7 = v2[5];
  if (!(*(v5 + 48))(v3 + v7, 1, v4))
  {
    v6(v3 + v7, v4);
  }

  v8 = v2[7];
  v9 = type metadata accessor for MACAddress();
  (*(*(v9 - 8) + 8))(v3 + v8, v9);

  v10 = v2[10];
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v49 = *(v12 + 8);
  v49(v3 + v10, v11);
  v13 = v2[11];
  v44 = *(v12 + 48);
  if (!v44(v3 + v13, 1, v11))
  {
    v49(v3 + v13, v11);
  }

  v45 = v11;

  v14 = v3 + v2[14];
  v15 = type metadata accessor for AccessoryMetadata(0);
  if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    v6(v14, v4);
    sub_100016590(*(v14 + *(v15 + 20)), *(v14 + *(v15 + 20) + 8));

    v16 = *(v15 + 36);
    v17 = type metadata accessor for AirTagVersionNumber();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v14 + v16, 1, v17))
    {
      (*(v18 + 8))(v14 + v16, v17);
    }
  }

  v19 = v3 + v2[15];
  v20 = type metadata accessor for AccessoryProductInfo(0);
  if (!(*(*(v20 - 1) + 48))(v19, 1, v20))
  {
    v43 = v1;
    v21 = v20[5];
    v22 = type metadata accessor for ServerStatusCode();
    (*(*(v22 - 8) + 8))(v19 + v21, v22);

    v23 = v20[17];
    v24 = type metadata accessor for URL();
    v25 = *(v24 - 8);
    v26 = *(v25 + 48);
    if (!v26(v19 + v23, 1, v24))
    {
      (*(v25 + 8))(v19 + v23, v24);
    }

    v27 = v20[18];
    v42 = v26;
    if (!v26(v19 + v27, 1, v24))
    {
      (*(v25 + 8))(v19 + v27, v24);
    }

    v28 = v19 + v20[21];
    v29 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
    if (!(*(*(v29 - 8) + 48))(v28, 1, v29))
    {

      v40 = *(v29 + 44);
      if (!v42(v28 + v40, 1, v24))
      {
        (*(v25 + 8))(v28 + v40, v24);
      }

      v41 = *(v29 + 48);
      if (!v42(v28 + v41, 1, v24))
      {
        (*(v25 + 8))(v28 + v41, v24);
      }
    }

    v30 = (v19 + v20[24]);
    v31 = v30[1];
    if (v31 >> 60 != 15)
    {
      sub_100016590(*v30, v31);
    }

    v32 = (v19 + v20[25]);
    v33 = v32[1];
    if (v33 >> 60 != 15)
    {
      sub_100016590(*v32, v33);
    }

    v34 = *(v25 + 8);
    v34(v19 + v20[26], v24);
    v34(v19 + v20[27], v24);
    v34(v19 + v20[28], v24);
    v34(v19 + v20[29], v24);
    v34(v19 + v20[30], v24);
    v34(v19 + v20[31], v24);

    v34(v19 + v20[38], v24);
    v34(v19 + v20[39], v24);
    v34(v19 + v20[40], v24);
    v34(v19 + v20[41], v24);
    v34(v19 + v20[42], v24);
    v34(v19 + v20[43], v24);

    v1 = v43;
  }

  v35 = v2[18];
  if (!v44(v3 + v35, 1, v45))
  {
    v49(v3 + v35, v45);
  }

  v36 = v2[19];
  if (!v44(v3 + v36, 1, v45))
  {
    v49(v3 + v36, v45);
  }

  v37 = (v3 + v2[20]);
  v38 = v37[1];
  if (((v38 >> 60) | 4) != 0xF)
  {
    sub_100016590(*v37, v38);
  }

  return _swift_deallocObject(v1, v47 + v46);
}

uint64_t sub_1007A90E4()
{
  v2 = *(type metadata accessor for WildModeAssociationRecord(0) - 8);
  v3 = (*(v2 + 80) + 17) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014650;

  return sub_10078B7F4(v4, v0 + v3);
}

uint64_t sub_1007A91C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1007A9248(void (*a1)(uint64_t), void (*a2)(uint64_t))
{
  v5 = *(type metadata accessor for MACAddress() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_1000BC4D4(&unk_101698C30, &unk_101392630) - 8);
  v9 = *(v2 + 16);
  v10 = v2 + ((v7 + *(v8 + 80) + 1) & ~*(v8 + 80));
  v11 = *(v10 + *(v8 + 64));
  v12 = *(v2 + v7);

  sub_1007A2798(v2 + v6, v12, v10, v11, v9, a1, a2);
}

uint64_t sub_1007A938C()
{

  return _swift_deallocObject(v0, 33);
}

uint64_t sub_1007A93CC()
{
  v1 = v0;
  v2 = type metadata accessor for WildModeAssociationRecord(0);
  v47 = *(*(v2 - 1) + 80);
  v45 = *(*(v2 - 1) + 64);

  v46 = (v47 + 80) & ~v47;
  v3 = v0 + v46;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v46, v4);
  v7 = v2[5];
  if (!(*(v5 + 48))(v0 + v46 + v7, 1, v4))
  {
    v6(v3 + v7, v4);
  }

  v8 = v2[7];
  v9 = type metadata accessor for MACAddress();
  (*(*(v9 - 8) + 8))(v3 + v8, v9);

  v10 = v2[10];
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v48 = *(v12 + 8);
  v48(v3 + v10, v11);
  v13 = v2[11];
  v43 = *(v12 + 48);
  if (!v43(v3 + v13, 1, v11))
  {
    v48(v3 + v13, v11);
  }

  v44 = v11;

  v14 = v3 + v2[14];
  v15 = type metadata accessor for AccessoryMetadata(0);
  if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    v6(v14, v4);
    sub_100016590(*(v14 + *(v15 + 20)), *(v14 + *(v15 + 20) + 8));

    v16 = *(v15 + 36);
    v17 = type metadata accessor for AirTagVersionNumber();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v14 + v16, 1, v17))
    {
      (*(v18 + 8))(v14 + v16, v17);
    }
  }

  v19 = v3 + v2[15];
  v20 = type metadata accessor for AccessoryProductInfo(0);
  if (!(*(*(v20 - 1) + 48))(v19, 1, v20))
  {
    v21 = v20[5];
    v22 = type metadata accessor for ServerStatusCode();
    (*(*(v22 - 8) + 8))(v19 + v21, v22);

    v23 = v20[17];
    v24 = type metadata accessor for URL();
    v25 = *(v24 - 8);
    v26 = *(v25 + 48);
    if (!v26(v19 + v23, 1, v24))
    {
      (*(v25 + 8))(v19 + v23, v24);
    }

    v42 = v1;
    v27 = v20[18];
    if (!v26(v19 + v27, 1, v24))
    {
      (*(v25 + 8))(v19 + v27, v24);
    }

    v28 = v19 + v20[21];
    v29 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
    if (!(*(*(v29 - 8) + 48))(v28, 1, v29))
    {

      v40 = *(v29 + 44);
      if (!v26(v28 + v40, 1, v24))
      {
        (*(v25 + 8))(v28 + v40, v24);
      }

      v41 = *(v29 + 48);
      if (!v26(v28 + v41, 1, v24))
      {
        (*(v25 + 8))(v28 + v41, v24);
      }
    }

    v30 = (v19 + v20[24]);
    v31 = v30[1];
    v1 = v42;
    if (v31 >> 60 != 15)
    {
      sub_100016590(*v30, v31);
    }

    v32 = (v19 + v20[25]);
    v33 = v32[1];
    if (v33 >> 60 != 15)
    {
      sub_100016590(*v32, v33);
    }

    v34 = *(v25 + 8);
    v34(v19 + v20[26], v24);
    v34(v19 + v20[27], v24);
    v34(v19 + v20[28], v24);
    v34(v19 + v20[29], v24);
    v34(v19 + v20[30], v24);
    v34(v19 + v20[31], v24);

    v34(v19 + v20[38], v24);
    v34(v19 + v20[39], v24);
    v34(v19 + v20[40], v24);
    v34(v19 + v20[41], v24);
    v34(v19 + v20[42], v24);
    v34(v19 + v20[43], v24);
  }

  v35 = v2[18];
  if (!v43(v3 + v35, 1, v44))
  {
    v48(v3 + v35, v44);
  }

  v36 = v2[19];
  if (!v43(v3 + v36, 1, v44))
  {
    v48(v3 + v36, v44);
  }

  v37 = (v3 + v2[20]);
  v38 = v37[1];
  if (((v38 >> 60) | 4) != 0xF)
  {
    sub_100016590(*v37, v38);
  }

  return _swift_deallocObject(v1, v46 + v45);
}

uint64_t sub_1007A9D20()
{
  sub_100007BAC((v0 + 16));
  if (*(v0 + 56))
  {
  }

  return _swift_deallocObject(v0, 72);
}

uint64_t getEnumTagSinglePayload for UnauthorizedTrackingAdvertisementType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_20;
  }

  v2 = a2 + 6;
  if (a2 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 6;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 4)
  {
    v8 = v7 - 3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 4)
  {
    return v8 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for UnauthorizedTrackingAdvertisementType(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 6;
  if (a3 + 6 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFA)
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1007A9ED0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1007A9EE4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

unint64_t sub_1007A9F08()
{
  result = qword_1016A9678;
  if (!qword_1016A9678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9678);
  }

  return result;
}

uint64_t sub_1007A9FEC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1000210EC(a1);
  if ((v4 & 1) == 0)
  {
    return 6;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1010062B8();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + v5);
  sub_100AF76A8(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_1007AA10C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1000210EC(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10100B118();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_100B27F70();
  *v2 = v7;
  return v10;
}

uint64_t sub_1007AA200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1000210EC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10100EB44();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    updated = type metadata accessor for AccessoryFirmwareUpdateCommandInfo(0);
    v20 = *(updated - 8);
    sub_1000293B8(v12 + *(v20 + 72) * v7, a2, type metadata accessor for AccessoryFirmwareUpdateCommandInfo);
    sub_100AFAEF8(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = updated;
  }

  else
  {
    v18 = type metadata accessor for AccessoryFirmwareUpdateCommandInfo(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1007AA39C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_100772DDC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10100EE0C();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for ShareAttemptTracker.AttemptKey(0);
    sub_1007AF224(v10 + *(*(v11 - 8) + 72) * v7, type metadata accessor for ShareAttemptTracker.AttemptKey);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for Date();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_100AFB260(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for Date();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1007AA564(uint64_t a1, void (*a2)(uint64_t, uint64_t), void (*a3)(void))
{
  v6 = v3;
  v7 = sub_1000210EC(a1);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  v16 = *v6;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a3();
    v11 = v16;
  }

  v12 = *(v11 + 48);
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v9, v13);
  v14 = *(*(v11 + 56) + 8 * v9);
  a2(v9, v11);
  *v6 = v11;
  return v14;
}

uint64_t sub_1007AA644()
{
  v0 = type metadata accessor for URL();
  v1 = __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694928 != -1)
  {
    v6 = v1;
    swift_once();
    v1 = v6;
  }

  sub_1000076D4(v1, qword_10177B2F0);
  URL.appendingPathComponent(_:)();
  type metadata accessor for BeaconObservationStore(0);
  v4 = swift_allocObject();
  result = sub_1007AB3D4(v3);
  qword_10177B2E8 = v4;
  return result;
}

uint64_t sub_1007AA740()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v2, qword_10177B2F0);
  sub_1000076D4(v0, qword_10177B2F0);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v5 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v4, v5, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1007AA89C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a1 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsURL, v5);
  v9 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v10 = String._bridgeToObjectiveC()();

  v11 = [v9 fileExistsAtPath:v10];

  if (v11)
  {
    v30 = a1;
    v12 = Data.init(contentsOf:options:)();
    if (v2)
    {
      v28 = a2;
      v29 = 0;
      v27 = static os_log_type_t.error.getter();
      if (qword_101694930 != -1)
      {
        swift_once();
      }

      v26 = qword_10177B308;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_10138BBE0;
      sub_1007AF130(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      *(v16 + 56) = &type metadata for String;
      v20 = sub_100008C00();
      *(v16 + 64) = v20;
      *(v16 + 32) = v17;
      *(v16 + 40) = v19;
      v31 = v2;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v21 = String.init<A>(describing:)();
      *(v16 + 96) = &type metadata for String;
      *(v16 + 104) = v20;
      *(v16 + 72) = v21;
      *(v16 + 80) = v22;
      os_log(_:dso:log:_:_:)(v27, &_mh_execute_header, v26, "Error reading observations, url %@, error, %@", 45, 2, v16);

      (*(v6 + 8))(v8, v5);
      v24 = _swiftEmptyDictionarySingleton;
      a2 = v28;
    }

    else
    {
      v14 = v12;
      v15 = v13;
      type metadata accessor for PropertyListDecoder();
      swift_allocObject();
      PropertyListDecoder.init()();
      sub_1000BC4D4(&unk_1016B26E0, &unk_10138C4A0);
      sub_1007AEEC0();
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
      v29 = 0;
      (*(v6 + 8))(v8, v5);

      sub_100016590(v14, v15);
      v24 = v31;
    }

    *(v30 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsMap) = v24;
  }

  else
  {
    result = (*(v6 + 8))(v8, v5);
    v24 = _swiftEmptyDictionarySingleton;
  }

  *a2 = v24;
  return result;
}

uint64_t sub_1007AAC84(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v6 = *(v19 - 8);
  __chkstk_darwin(v19);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v1 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsMap))
  {
    *(v1 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsMap) = a1;
  }

  v13 = *(v1 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsConcurrentQueue);
  *v12 = v13;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v12, v9);
  if (v13)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = v1;
    *(v16 + 24) = a1;
    aBlock[4] = sub_1007AEAB8;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_101632F40;
    v17 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v21 = _swiftEmptyArrayStorage;
    sub_1007AF130(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);
    (*(v20 + 8))(v5, v3);
    (*(v6 + 8))(v8, v19);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1007AB060(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v23 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v22 - v9;
  __chkstk_darwin(v8);
  v12 = &v22 - v11;
  sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
  v13 = OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsURL;
  v14 = *(v5 + 16);
  v22 = a1;
  v14(v10, a1 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsURL, v4);
  URL.deletingLastPathComponent()();
  v15 = *(v5 + 8);
  v15(v10, v4);
  static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
  v15(v12, v4);
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v24 = a2;
  sub_1000BC4D4(&unk_1016B26E0, &unk_10138C4A0);
  sub_1007AEAC0();
  v16 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v18 = v17;
  v19 = v22 + v13;
  v20 = v23;
  v14(v23, v19, v4);
  Data.write(to:excludeFromBackup:options:)();
  v15(v20, v4);
  sub_100016590(v16, v18);
}

uint64_t sub_1007AB3D4(uint64_t a1)
{
  v34 = a1;
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v2);
  v39 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v37 = v5;
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v8;
  v40 = v1;
  *(v1 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_systemClockChangedSubscription) = 0;
  PressuredExitTransactionManager.init()();
  v33 = OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_subscriptionQueue;
  v36 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v30 = "observations.plist";
  v9 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v31 = *(v6 + 104);
  v32 = v6 + 104;
  v38 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v31(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v5);
  static DispatchQoS.unspecified.getter();
  v41 = _swiftEmptyArrayStorage;
  sub_1007AF130(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  v10 = sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  v35 = v2;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v11 = v29;
  v12 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v13 = v40;
  *(v40 + v33) = v12;
  *(v13 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_subscriptions) = _swiftEmptyArrayStorage;
  v33 = OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_subscriptionPublishQueue;
  v30 = "tore.subscription";
  v14 = v9;
  v15 = v37;
  v16 = v31;
  v31(v11, v14, v37);
  static DispatchQoS.unspecified.getter();
  v41 = _swiftEmptyArrayStorage;
  v28 = v10;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v40 + v33) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v33 = OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsConcurrentQueue;
  v30 = "tore.publishToSubscribers";
  v16(v11, v38, v15);
  static DispatchQoS.unspecified.getter();
  v41 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v17 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v18 = v40;
  *(v40 + v33) = v17;
  v33 = OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_fileWriteQueue;
  v16(v11, v38, v37);
  v19 = v18;
  static DispatchQoS.unspecified.getter();
  v41 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v18 + v33) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v18 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsMap) = 0;
  v20 = OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_automaticTimeEnabled;
  if (qword_101695510 != -1)
  {
    swift_once();
  }

  AnyCurrentValuePublisher.value.getter();

  *(v18 + v20) = v41;
  v21 = OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsURL;
  v22 = type metadata accessor for URL();
  v23 = *(v22 - 8);
  v24 = v34;
  (*(v23 + 16))(v19 + v21, v34, v22);

  v25 = AnyCurrentValuePublisher.publisher.getter();

  v41 = v25;
  swift_allocObject();
  swift_weakInit();
  sub_1000BC4D4(&unk_1016B1050, &unk_1013A4F40);
  sub_1000041A4(&unk_1016B1060, &unk_1016B1050, &unk_1013A4F40, &protocol conformance descriptor for AnyPublisher<A, B>);
  v26 = Publisher<>.sink(receiveValue:)();

  (*(v23 + 8))(v24, v22);

  *(v19 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_systemClockChangedSubscription) = v26;

  return v19;
}

uint64_t sub_1007ABA88(char *a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchQoS();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    static DispatchWorkItemFlags.barrier.getter();
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = v11;
    aBlock[4] = sub_1007AEAAC;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_101632EF0;
    v15 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v15);
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_1007ABD1C(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1007ABD7C(a2 & 1);
  }

  return result;
}

uint64_t sub_1007ABD7C(char a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsConcurrentQueue);
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v10 = *(v4 + 8);
  v9 = v4 + 8;
  v11 = v10(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v9 = OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_automaticTimeEnabled;
  v12 = *(v1 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_automaticTimeEnabled);
  v11 = static os_log_type_t.default.getter();
  if (v12 != (a1 & 1))
  {
    if (qword_101694930 == -1)
    {
LABEL_4:
      v13 = qword_10177B308;
      os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, qword_10177B308, "Automatic time value changed. Clearing all observations.", 56, 2, _swiftEmptyArrayStorage);
      *(v1 + v9) = a1 & 1;
      sub_1007AAC84(_swiftEmptyDictionarySingleton);
      v14 = static os_log_type_t.default.getter();
      return os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v13, "All observations removed.", 25, 2, _swiftEmptyArrayStorage);
    }

LABEL_9:
    v19 = v11;
    swift_once();
    v11 = v19;
    goto LABEL_4;
  }

  v16 = v11;
  if (qword_101694930 != -1)
  {
    swift_once();
  }

  v17 = qword_10177B308;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_101385D80;
  *(v18 + 56) = &type metadata for Bool;
  *(v18 + 64) = &protocol witness table for Bool;
  *(v18 + 32) = a1 & 1;
  os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v17, "Automatic time value unchanged: %i", v20);
}

uint64_t sub_1007AC00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = type metadata accessor for DispatchQoS();
  v20 = *(v22 - 8);
  __chkstk_darwin(v22);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v21 - 8);
  __chkstk_darwin(v21);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsConcurrentQueue);
  static DispatchWorkItemFlags.barrier.getter();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a1;
  v15[5] = a4;
  v15[6] = a5;
  v16 = a5;
  aBlock[4] = sub_1007AEC94;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101632F90;
  v17 = _Block_copy(aBlock);

  sub_100012908(a4, v16);
  static DispatchQoS.unspecified.getter();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v20 + 8))(v11, v22);
  (*(v12 + 8))(v14, v21);
}

uint64_t sub_1007AC284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v86 = a4;
  v87 = a5;
  v85 = a3;
  v84 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v84 - 8);
  __chkstk_darwin(v84);
  v83 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for DispatchQoS();
  v9 = *(v82 - 8);
  __chkstk_darwin(v82);
  v81 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for BeaconObservation(0);
  v89 = *(v80 - 8);
  v11 = *(v89 + 64);
  v12 = __chkstk_darwin(v80);
  v79 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v67 = &v65 - v14;
  __chkstk_darwin(v13);
  v16 = &v65 - v15;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = (&v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(a1 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsMap))
  {
    v22 = *(a1 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsMap);
  }

  else
  {
    v88 = v7;
    v23 = v9;
    v24 = a1;
    v25 = *(a1 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsConcurrentQueue);
    *v21 = v25;
    v26 = v19;
    (*(v18 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v19);
    v27 = v25;
    LOBYTE(v25) = _dispatchPreconditionTest(_:)();
    result = (*(v18 + 8))(v21, v26);
    if ((v25 & 1) == 0)
    {
      __break(1u);
      return result;
    }

    v29 = objc_autoreleasePoolPush();
    sub_1007AA89C(v24, aBlock);
    objc_autoreleasePoolPop(v29);
    v22 = aBlock[0];
    a1 = v24;
    v9 = v23;
    v7 = v88;
  }

  v30 = *(a2 + 16);
  v88 = a1;
  if (v30)
  {
    v78 = *(a1 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsConcurrentQueue);
    v31 = *(v89 + 80);
    v32 = (v31 + 32) & ~v31;
    v33 = a2 + v32;
    v34 = *(v89 + 72);
    v76 = v32;
    v66 = v32 + 2 * v34;
    v77 = v31;
    v75 = (v31 + 24) & ~v31;
    v74 = (v11 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
    v73 = (v74 + 15) & 0xFFFFFFFFFFFFFFF8;
    v72 = v92;
    v71 = (v7 + 8);
    v70 = (v9 + 8);

    v68 = xmmword_101385D80;
    v65 = xmmword_10138BBE0;
    v69 = v34;
    do
    {
      sub_10073B64C(v33, v16);
      if (*(v22 + 16) && (v52 = sub_1000210EC(v16), (v53 & 1) != 0))
      {
        v54 = *(*(v22 + 56) + 8 * v52);
      }

      else
      {
        v54 = sub_10090A254(_swiftEmptyArrayStorage);
      }

      v89 = v30;
      v55 = v16[*(v80 + 24)];
      if (v54[2] && (v56 = sub_100772048(v16[*(v80 + 24)]), (v57 & 1) != 0) && (v58 = *(v54[7] + 8 * v56), *(v58 + 16)))
      {
        v59 = v76;
        v60 = v67;
        sub_10073B64C(v58 + v76, v67);
        sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
        v61 = swift_allocObject();
        *(v61 + 16) = v65;
        v62 = v61 + v59;
        sub_10073B64C(v16, v62);
        sub_10073B64C(v60, v62 + v34);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v54;
        sub_100FFBA7C(v61, v55, isUniquelyReferenced_nonNull_native);
        v38 = aBlock[0];
        sub_1007AF224(v60, type metadata accessor for BeaconObservation);
      }

      else
      {
        sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
        v35 = v76;
        v36 = swift_allocObject();
        *(v36 + 16) = v68;
        sub_10073B64C(v16, v36 + v35);
        v37 = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v54;
        sub_100FFBA7C(v36, v55, v37);
        v38 = aBlock[0];
      }

      v39 = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v22;
      sub_10100003C(v38, v16, v39);
      v22 = aBlock[0];
      v40 = v79;
      sub_10073B64C(v16, v79);
      v41 = v73;
      v42 = swift_allocObject();
      *(v42 + 16) = v88;
      sub_1000293B8(v40, v42 + v75, type metadata accessor for BeaconObservation);
      *(v42 + v74) = v85;
      v43 = (v42 + v41);
      v44 = v16;
      v45 = v86;
      v46 = v87;
      *v43 = v86;
      v43[1] = v46;
      v92[2] = sub_1007AECA4;
      v92[3] = v42;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v92[0] = sub_100006684;
      v92[1] = &unk_101632FE0;
      v47 = _Block_copy(aBlock);

      sub_100012908(v45, v46);
      v48 = v81;
      static DispatchQoS.unspecified.getter();
      v90 = _swiftEmptyArrayStorage;
      sub_1007AF130(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v50 = v83;
      v49 = v84;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v47);
      v51 = v49;
      v16 = v44;
      (*v71)(v50, v51);
      (*v70)(v48, v82);
      sub_1007AF224(v44, type metadata accessor for BeaconObservation);

      v34 = v69;
      v33 += v69;
      v30 = v89 - 1;
    }

    while (v89 != 1);
  }

  else
  {
  }

  sub_1007AAC84(v64);
}

uint64_t sub_1007ACB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a5;

  sub_100012908(a4, a5);
  sub_1007ACBB4(a2, sub_1007AED44, v9);
}

uint64_t sub_1007ACBB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a2;
  v56 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v39 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for DispatchQoS();
  v38 = *(v57 - 8);
  __chkstk_darwin(v57);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BeaconObservation(0);
  v55 = *(v10 - 8);
  __chkstk_darwin(v10 - 8);
  v53 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v11;
  v52 = sub_1000BC4D4(&unk_1016B1E80, &qword_10138CDE0);
  v12 = *(v52 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v52);
  v51 = &v33 - v14;
  sub_1000BC4D4(&qword_1016A97C0, &qword_1013BB820);
  OS_dispatch_queue.sync<A>(execute:)();
  v15 = aBlock[2];
  v36 = v3;
  if (v15)
  {
    v34 = a3;
    v16 = *(v3 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_subscriptionPublishQueue);
    v17 = v12 + 16;
    v48 = *(v12 + 16);
    v49 = v16;
    v18 = *(v12 + 80);
    v19 = v9;
    v33 = aBlock;
    v20 = aBlock + ((v18 + 32) & ~v18);
    v47 = v18;
    v46 = (v18 + 16) & ~v18;
    v45 = v46 + v13;
    v44 = *(v17 + 56);
    v50 = v17;
    v43 = (v17 + 16);
    v42 = &v61;
    v35 = v6;
    v41 = (v6 + 8);
    v40 = (v38 + 8);
    v21 = v39;
    do
    {
      v23 = v51;
      v22 = v52;
      v48(v51, v20, v52);
      v24 = v53;
      sub_10073B64C(v56, v53);
      v25 = (v45 + *(v55 + 80)) & ~*(v55 + 80);
      v26 = swift_allocObject();
      (*v43)(v26 + v46, v23, v22);
      sub_1000293B8(v24, v26 + v25, type metadata accessor for BeaconObservation);
      v63 = sub_1007AEDE8;
      v64 = v26;
      aBlock = _NSConcreteStackBlock;
      v60 = 1107296256;
      v61 = sub_100006684;
      v62 = &unk_101633058;
      v27 = _Block_copy(&aBlock);
      static DispatchQoS.unspecified.getter();
      v58 = _swiftEmptyArrayStorage;
      sub_1007AF130(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v27);
      (*v41)(v21, v5);
      (*v40)(v19, v57);

      v20 += v44;
      --v15;
    }

    while (v15);

    v6 = v35;
    v9 = v19;
    a3 = v34;
    v28 = v37;
  }

  else
  {

    v28 = v37;
  }

  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  *(v29 + 24) = a3;
  v63 = sub_10013A884;
  v64 = v29;
  aBlock = _NSConcreteStackBlock;
  v60 = 1107296256;
  v61 = sub_100006684;
  v62 = &unk_1016330A8;
  v30 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  v58 = _swiftEmptyArrayStorage;
  sub_1007AF130(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v31 = v39;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v30);
  (*(v6 + 8))(v31, v5);
  (*(v38 + 8))(v9, v57);
}

void sub_1007AD36C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016A97F0, &qword_1013BB830);
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 1);
  __chkstk_darwin(v8);
  v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(a1 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsMap);
  v28 = a2;
  v29 = v2;
  if (v12)
  {
    v8 = v12;
LABEL_6:
    v30 = _swiftEmptyArrayStorage;
    v17 = 1 << *(v8 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & v8[8];
    v20 = (v17 + 63) >> 6;

    v21 = 0;
    while (v19)
    {
      v22 = v21;
LABEL_14:
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v24 = v23 | (v22 << 6);
      v25 = v8[6];
      v26 = type metadata accessor for UUID();
      (*(*(v26 - 8) + 16))(v7, v25 + *(*(v26 - 8) + 72) * v24, v26);
      v27 = *(v8[7] + 8 * v24);
      *&v7[*(v5 + 48)] = v27;
      swift_bridgeObjectRetain_n();
      sub_1007AF284(v7);
      sub_10039A2A8(v27);
    }

    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v20)
      {

        *v28 = v30;
        return;
      }

      v19 = v8[v22 + 8];
      ++v21;
      if (v19)
      {
        v21 = v22;
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

  v13 = *(a1 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsConcurrentQueue);
  *v11 = v13;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  v15 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if ((v15 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = objc_autoreleasePoolPush();
  v16 = v29;
  sub_1007AA89C(a1, &v30);
  if (!v16)
  {
    v29 = 0;
    objc_autoreleasePoolPop(v8);
    v8 = v30;
    goto LABEL_6;
  }

LABEL_19:
  objc_autoreleasePoolPop(v8);
  __break(1u);
}

void sub_1007AD670(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v64 = a3;
  v58 = a2;
  v8 = type metadata accessor for BeaconObservation(0);
  v63 = *(v8 - 8);
  v9 = __chkstk_darwin(v8 - 8);
  v62 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v61 = &v51 - v11;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = (&v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(a1 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsMap);
  v60 = a4;
  v53 = a1;
  if (v17)
  {
    v18 = v17;
    goto LABEL_6;
  }

  v19 = *(a1 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsConcurrentQueue);
  *v16 = v19;
  v20 = v14;
  (*(v13 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v14);
  v21 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v16, v20);
  if ((v19 & 1) == 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v16 = objc_autoreleasePoolPush();
  sub_1007AA89C(a1, &v67);
  if (!v4)
  {
    v5 = 0;
    objc_autoreleasePoolPop(v16);
    v18 = v67;
LABEL_6:
    v22 = v61;
    v67 = v18;
    v23 = v18[2];

    if (!v23 || (v24 = sub_1000210EC(v58), (v25 & 1) == 0))
    {

      return;
    }

    v51 = v5;
    v16 = *(v18[7] + 8 * v24);
    v52 = sub_10090A254(_swiftEmptyArrayStorage);
    v26 = v16 + 8;
    v27 = 1 << *(v16 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v29 = v28 & v16[8];
    v30 = (v27 + 63) >> 6;
    v57 = v16;

    v31 = 0;
    v55 = v30;
    v56 = v16 + 8;
LABEL_11:
    v32 = v31;
    if (!v29)
    {
      goto LABEL_13;
    }

    while (1)
    {
      v31 = v32;
LABEL_16:
      v59 = v29;
      v33 = __clz(__rbit64(v29)) | (v31 << 6);
      v34 = v57[7];
      v54 = *(v57[6] + v33);
      v35 = *(v34 + 8 * v33);
      v36 = *(v35 + 16);

      v65 = v36;
      if (v36)
      {
        break;
      }

      v16 = _swiftEmptyArrayStorage;
LABEL_28:
      v29 = (v59 - 1) & v59;

      if (v16[2])
      {
        v43 = v52;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66 = v43;
        sub_100FFBA7C(v16, v54, isUniquelyReferenced_nonNull_native);
        v52 = v66;
        v30 = v55;
        v26 = v56;
        goto LABEL_11;
      }

      v32 = v31;
      v30 = v55;
      v26 = v56;
      if (!v29)
      {
LABEL_13:
        while (1)
        {
          v31 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            goto LABEL_37;
          }

          if (v31 >= v30)
          {

            v45 = v52;

            v46 = v67;
            v47 = swift_isUniquelyReferenced_nonNull_native();
            v66 = v46;
            v48 = v58;
            sub_10100003C(v45, v58, v47);
            v67 = v66;
            v49 = *(v45 + 16);

            if (!v49)
            {
              sub_1007AA10C(v48);
            }

            sub_1007AAC84(v50);

            return;
          }

          v29 = v26[v31];
          ++v32;
          if (v29)
          {
            goto LABEL_16;
          }
        }
      }
    }

    v37 = 0;
    v16 = _swiftEmptyArrayStorage;
    while (v37 < *(v35 + 16))
    {
      v38 = (*(v63 + 80) + 32) & ~*(v63 + 80);
      v39 = *(v63 + 72);
      sub_10073B64C(v35 + v38 + v39 * v37, v22);
      if (v64(v22))
      {
        sub_1007AF224(v22, type metadata accessor for BeaconObservation);
      }

      else
      {
        sub_1000293B8(v22, v62, type metadata accessor for BeaconObservation);
        v40 = swift_isUniquelyReferenced_nonNull_native();
        v66 = v16;
        if ((v40 & 1) == 0)
        {
          sub_101124308(0, v16[2] + 1, 1);
          v16 = v66;
        }

        v42 = v16[2];
        v41 = v16[3];
        if (v42 >= v41 >> 1)
        {
          sub_101124308((v41 > 1), v42 + 1, 1);
          v16 = v66;
        }

        v16[2] = v42 + 1;
        sub_1000293B8(v62, v16 + v38 + v42 * v39, type metadata accessor for BeaconObservation);
        v22 = v61;
      }

      if (v65 == ++v37)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_39:
  objc_autoreleasePoolPop(v16);
  __break(1u);
}

uint64_t sub_1007ADBC8(uint64_t a1, uint64_t a2)
{
  sub_1000BC4D4(&unk_1016B1E80, &qword_10138CDE0);
  Subscription.subscriber.getter();
  v3 = v7;
  v4 = v8;
  sub_1000035D0(v6, v7);
  (*(v4 + 8))(a2, v3, v4);
  return sub_100007BAC(v6);
}

uint64_t sub_1007ADC54()
{
  v1 = OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_transactionManager;
  v4 = type metadata accessor for PressuredExitTransactionManager();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t sub_1007ADD64()
{
  sub_1007ADC54();

  return swift_deallocClassInstance();
}

uint64_t sub_1007ADDC4(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PressuredExitTransactionManager();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1007ADEC0(uint64_t a1)
{
  sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
  v2 = *(type metadata accessor for BeaconObservation(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_101385D80;
  sub_10073B64C(a1, v4 + v3);
  type metadata accessor for Transaction();
  static Transaction.named<A>(_:with:)();
}

uint64_t sub_1007ADFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *v3;
  static DispatchWorkItemFlags.barrier.getter();
  v14 = v11;
  v15 = a1;
  v16 = a2;
  v17 = a3;
  OS_dispatch_queue.sync<A>(flags:execute:)();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1007AE124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000BC4D4(&unk_1016B1E80, &qword_10138CDE0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17[-v8 - 8];
  sub_10001F280(a1, v17);
  swift_allocObject();
  swift_weakInit();
  sub_1000BC4D4(&qword_1016A97E0, &qword_1013BB828);
  Subscription.init(subscriber:unsubscribeBlock:)();
  (*(v7 + 16))(v9, a3, v6);
  v10 = OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_subscriptions;
  swift_beginAccess();
  v11 = *(a2 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v10) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_100A5DE64(0, v11[2] + 1, 1, v11);
    *(a2 + v10) = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = sub_100A5DE64((v13 > 1), v14 + 1, 1, v11);
  }

  v11[2] = v14 + 1;
  (*(v7 + 32))(v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v14, v9, v6);
  *(a2 + v10) = v11;
  return swift_endAccess();
}

uint64_t sub_1007AE34C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1007AE3C0(a1);
  }

  return result;
}

uint64_t sub_1007AE3C0(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v18 = *(v6 - 8);
  v19 = v6;
  __chkstk_darwin(v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&unk_1016B1E80, &qword_10138CDE0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v17 - v11;
  v17[1] = *(v1 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_subscriptionQueue);
  (*(v10 + 16))(v17 - v11, a1, v9);
  v13 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  (*(v10 + 32))(v14 + v13, v12, v9);
  aBlock[4] = sub_1007AF194;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016330F8;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_1007AF130(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v20 + 8))(v5, v3);
  (*(v18 + 8))(v8, v19);
}

uint64_t sub_1007AE768(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_subscriptions;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v7[2] = a2;

  *(a1 + v4) = sub_10013D928(sub_1007AF204, v7, v5);
}

BOOL sub_1007AE7FC(uint64_t a1, uint64_t a2)
{
  sub_1000BC4D4(&unk_1016B1E80, &qword_10138CDE0);
  sub_1000041A4(&qword_1016A97E8, &unk_1016B1E80, &qword_10138CDE0, &protocol conformance descriptor for Subscription<A>);
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

double sub_1007AE8A0()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_1007AE8EC(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_subscriptions;
  swift_beginAccess();
  *(v3 + v4) = a1;
}

uint64_t sub_1007AEA2C()
{
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  result = OS_os_log.init(subsystem:category:)();
  qword_10177B308 = result;
  return result;
}

unint64_t sub_1007AEAC0()
{
  result = qword_1016A97A8;
  if (!qword_1016A97A8)
  {
    sub_1000BC580(&unk_1016B26E0, &unk_10138C4A0);
    sub_1007AF130(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_1007AEB7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A97A8);
  }

  return result;
}

unint64_t sub_1007AEB7C()
{
  result = qword_1016A97B0;
  if (!qword_1016A97B0)
  {
    sub_1000BC580(&qword_101697788, &qword_10138C498);
    sub_1007AEC40();
    sub_1007AF094(&qword_1016A46F8, &qword_1016A4700, &unk_1013C6970, &protocol conformance descriptor for <A> [A]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A97B0);
  }

  return result;
}

unint64_t sub_1007AEC40()
{
  result = qword_1016A97B8;
  if (!qword_1016A97B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A97B8);
  }

  return result;
}

uint64_t sub_1007AECA4()
{
  v1 = *(type metadata accessor for BeaconObservation(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = (v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_1007ACB08(v4, v0 + v2, v5, v7, v8);
}

void sub_1007AED44()
{
  v1 = *(v0 + 24);
  Transaction.capture()();
  if (v1)
  {
    v1();
  }
}

double sub_1007AED88@<D0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_subscriptions;
  swift_beginAccess();
  *a1 = *(v1 + v3);

  return result;
}

uint64_t sub_1007AEDE8()
{
  v1 = *(sub_1000BC4D4(&unk_1016B1E80, &qword_10138CDE0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for BeaconObservation(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1007ADBC8(v0 + v2, v5);
}

unint64_t sub_1007AEEC0()
{
  result = qword_1016A97C8;
  if (!qword_1016A97C8)
  {
    sub_1000BC580(&unk_1016B26E0, &unk_10138C4A0);
    sub_1007AF130(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_1007AEF7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A97C8);
  }

  return result;
}

unint64_t sub_1007AEF7C()
{
  result = qword_1016A97D0;
  if (!qword_1016A97D0)
  {
    sub_1000BC580(&qword_101697788, &qword_10138C498);
    sub_1007AF040();
    sub_1007AF094(&qword_1016A5008, &qword_1016A5010, &unk_1013C6998, &protocol conformance descriptor for <A> [A]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A97D0);
  }

  return result;
}

unint64_t sub_1007AF040()
{
  result = qword_1016A97D8;
  if (!qword_1016A97D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A97D8);
  }

  return result;
}

uint64_t sub_1007AF094(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016A46F0, &qword_1013B1020);
    sub_1007AF130(a2, type metadata accessor for BeaconObservation, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1007AF130(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1007AF194()
{
  v1 = *(sub_1000BC4D4(&unk_1016B1E80, &qword_10138CDE0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1007AE768(v2, v3);
}

uint64_t sub_1007AF224(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1007AF284(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016A97F0, &qword_1013BB830);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1007AF31C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B330);
  v1 = sub_1000076D4(v0, qword_10177B330);
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177AE28);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1007AF3E4(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for UUID();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  sub_1000BC4D4(&qword_10169F040, &qword_10139FE30);
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for DelegatedBeaconMetadata(0);
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v6 = swift_task_alloc();
  v3[13] = v6;
  *v6 = v3;
  v6[1] = sub_1007AF56C;

  return daemon.getter();
}

uint64_t sub_1007AF56C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 112) = a1;

  v3 = swift_task_alloc();
  *(v2 + 120) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_1007B1BB8(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1007B1BB8(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1007AF750;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1007AF750(uint64_t a1)
{
  v4 = *v2;
  v4[16] = a1;
  v4[17] = v1;

  if (v1)
  {
    v5 = v4[5];
    v6 = sub_1007AFE60;
  }

  else
  {

    v6 = sub_1007AF888;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1007AF888()
{

  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  *v1 = v0;
  v1[1] = sub_1007AF968;
  v3 = *(v0 + 128);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v3, v2);
}

uint64_t sub_1007AF968()
{
  v1 = *(*v0 + 128);

  return _swift_task_switch(sub_1007AFA80, v1, 0);
}

uint64_t sub_1007AFA80()
{
  v1 = v0[5];
  v0[19] = v0[2];
  return _swift_task_switch(sub_1007AFAA4, v1, 0);
}

uint64_t sub_1007AFAA4()
{
  v0[20] = *(v0[19] + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);

  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_1007AFB68;
  v2 = v0[9];
  v3 = v0[4];

  return sub_10068F740(v2, v3);
}

uint64_t sub_1007AFB68()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = sub_1007AFEE8;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_1007AFC90;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1007AFC90()
{
  v1 = v0[10];
  v2 = v0[9];
  if ((*(v0[11] + 48))(v2, 1, v1) == 1)
  {
    sub_1007B1C00(v2);
    sub_1001BAEE0();
    swift_allocError();
    *v3 = 21;
    swift_willThrow();

    v4 = v0[1];
  }

  else
  {
    v5 = v0[12];
    v7 = v0[7];
    v6 = v0[8];
    v8 = v0[6];
    v10 = v0[3];
    v9 = v0[4];

    sub_1007B1C68(v2, v5);
    (*(v7 + 16))(v6, v9, v8);
    v11 = v5 + *(v1 + 20);
    v12 = *v11;
    v13 = *(v11 + 8);
    sub_1007B1CCC(v5, type metadata accessor for DelegatedBeaconMetadata);
    if (v13)
    {
      v12 = 0;
    }

    (*(v7 + 32))(v10, v6, v8);
    *(v10 + *(type metadata accessor for DelegatedShareMeta(0) + 20)) = v12;

    v4 = v0[1];
  }

  return v4();
}

uint64_t sub_1007AFE60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1007AFEE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1007AFF7C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for UUID();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = *(v4 + 64);
  v2[8] = swift_task_alloc();
  v2[9] = type metadata accessor for KeyDropDelegatedShareMetadataResponse(0);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  type metadata accessor for KeyDropJoinToken(0);
  v2[15] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[16] = v5;
  *v5 = v2;
  v5[1] = sub_1007B0100;

  return daemon.getter();
}

uint64_t sub_1007B0100(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 136) = a1;

  v3 = swift_task_alloc();
  *(v2 + 144) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_1007B1BB8(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1007B1BB8(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1007B02E4;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1007B02E4(uint64_t a1)
{
  v3 = *v2;
  v3[19] = a1;
  v3[20] = v1;

  if (v1)
  {
    v4 = v3[4];
    v5 = sub_1007B1354;
  }

  else
  {
    v6 = v3[4];

    v5 = sub_1007B040C;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1007B040C()
{
  v1 = v0[19];
  type metadata accessor for SharingCircleKeyManager();
  v2 = swift_allocObject();
  v0[21] = v2;

  swift_defaultActor_initialize();
  type metadata accessor for KeyDropInterface();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v2 + 112) = v3;
  *(v2 + 120) = v1;
  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = sub_1007B0500;
  v5 = v0[15];
  v6 = v0[3];

  return sub_100CFD9C0(v5, v6);
}

uint64_t sub_1007B0500()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_1007B1414;
  }

  else
  {
    v4 = sub_1007B062C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1007B062C()
{
  v1 = swift_task_alloc();
  v0[24] = v1;
  *v1 = v0;
  v1[1] = sub_1007B06CC;
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[3];

  return sub_10024A800(v2, v4, v3);
}

uint64_t sub_1007B06CC()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_1007B14E0;
  }

  else
  {
    v4 = sub_1007B07F8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1007B07F8()
{
  v29 = v0;
  if (qword_101694938 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177B330);
  sub_1007B1B54(v2, v1);
  sub_1007B1B54(v2, v3);
  sub_1007B1B54(v2, v4);
  sub_1007B1B54(v2, v5);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[12];
  v10 = v0[13];
  v12 = v0[10];
  v13 = v0[11];
  if (v9)
  {
    v26 = v0[9];
    v14 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v14 = 136447747;
    sub_1007B1BB8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v8;
    v17 = v16;
    sub_1007B1CCC(v10, type metadata accessor for KeyDropDelegatedShareMetadataResponse);
    v18 = sub_1000136BC(v15, v17, &v28);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2160;
    *(v14 + 14) = 1752392040;
    *(v14 + 22) = 2049;
    v19 = *(v11 + *(v26 + 20));
    sub_1007B1CCC(v11, type metadata accessor for KeyDropDelegatedShareMetadataResponse);
    *(v14 + 24) = v19;
    *(v14 + 32) = 2160;
    *(v14 + 34) = 1752392040;
    *(v14 + 42) = 2081;
    type metadata accessor for Date();
    sub_1007B1BB8(&qword_1016969A0, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    sub_1007B1CCC(v13, type metadata accessor for KeyDropDelegatedShareMetadataResponse);
    v23 = sub_1000136BC(v20, v22, &v28);

    *(v14 + 44) = v23;
    *(v14 + 52) = 2160;
    *(v14 + 54) = 1752392040;
    *(v14 + 62) = 1025;
    LODWORD(v23) = *(v12 + *(v26 + 28));
    sub_1007B1CCC(v12, type metadata accessor for KeyDropDelegatedShareMetadataResponse);
    *(v14 + 64) = v23;
    _os_log_impl(&_mh_execute_header, v7, v27, "Got metadata for delegated share: %{public}s,\nvisitor count: %{private,mask.hash}ld,\nexpiration: %{private,mask.hash}s.\navailableToNewViewers: %{BOOL,private,mask.hash}d.", v14, 0x44u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1007B1CCC(v0[10], type metadata accessor for KeyDropDelegatedShareMetadataResponse);
    sub_1007B1CCC(v11, type metadata accessor for KeyDropDelegatedShareMetadataResponse);

    sub_1007B1CCC(v13, type metadata accessor for KeyDropDelegatedShareMetadataResponse);
    sub_1007B1CCC(v10, type metadata accessor for KeyDropDelegatedShareMetadataResponse);
  }

  v24 = v0[19];

  return _swift_task_switch(sub_1007B0BBC, v24, 0);
}

uint64_t sub_1007B0BBC()
{

  v1 = swift_task_alloc();
  *(v0 + 208) = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  *v1 = v0;
  v1[1] = sub_1007B0C9C;
  v3 = *(v0 + 152);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1000D27E4, v3, v2);
}

uint64_t sub_1007B0C9C()
{
  v1 = *(*v0 + 152);

  return _swift_task_switch(sub_1007B0DB4, v1, 0);
}

uint64_t sub_1007B0DB4()
{
  v1 = v0[14];
  v2 = v0[9];
  v0[27] = v0[2];
  v3 = *(v1 + *(v2 + 20));
  v4 = swift_task_alloc();
  v0[28] = v4;
  *v4 = v0;
  v4[1] = sub_1007B0E64;
  v5 = v0[3];

  return sub_1012DA140(v5, v3);
}

uint64_t sub_1007B0E64()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_1007B15CC;
  }

  else
  {
    v4 = sub_1007B0FAC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1007B0FAC()
{
  if (*(v0[14] + *(v0[9] + 28)))
  {

    v1 = v0[15];
    sub_1007B1CCC(v0[14], type metadata accessor for KeyDropDelegatedShareMetadataResponse);
    sub_1007B1CCC(v1, type metadata accessor for KeyDropJoinToken);

    v2 = v0[1];

    return v2();
  }

  else
  {

    return _swift_task_switch(sub_1007B110C, 0, 0);
  }
}

uint64_t sub_1007B110C()
{
  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  (*(v3 + 16))(v1, v0[3], v2);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  (*(v3 + 32))(v6 + v5, v1, v2);
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  return _swift_task_switch(sub_1007B124C, v4, 0);
}

uint64_t sub_1007B124C()
{

  v1 = v0[15];
  sub_1007B1CCC(v0[14], type metadata accessor for KeyDropDelegatedShareMetadataResponse);
  sub_1007B1CCC(v1, type metadata accessor for KeyDropJoinToken);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1007B1354()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1007B1414()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1007B14E0()
{
  v1 = *(v0 + 120);

  sub_1007B1CCC(v1, type metadata accessor for KeyDropJoinToken);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1007B15CC()
{
  v2 = v0[14];
  v1 = v0[15];

  sub_1007B1CCC(v2, type metadata accessor for KeyDropDelegatedShareMetadataResponse);
  sub_1007B1CCC(v1, type metadata accessor for KeyDropJoinToken);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1007B16F8(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for DelegatedShareMetadataService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_1007B17A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for DelegatedShareMetadataService();
  *v8 = v4;
  v8[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v9, a4);
}

uint64_t sub_1007B1864(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for DelegatedShareMetadataService();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_1007B190C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for DelegatedShareMetadataService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.startup()(v5, a2);
}

uint64_t sub_1007B19B4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for DelegatedShareMetadataService();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.run()(v5, a2);
}

uint64_t sub_1007B1A5C()
{
  type metadata accessor for DelegatedShareMetadataService();
  sub_1007B1BB8(&unk_101698C70, v0, type metadata accessor for DelegatedShareMetadataService, &unk_1013BB8D0);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_1007B1B54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeyDropDelegatedShareMetadataResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007B1BB8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1007B1C00(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_10169F040, &qword_10139FE30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1007B1C68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DelegatedBeaconMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007B1CCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for DelegatedShareMeta(uint64_t a1)
{
  result = qword_1016A9920;
  if (!qword_1016A9920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1007B1DA0(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1007B1E14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1011250BC(0, v1, 0);
    v2 = a1 + 56;
    v3 = _HashTable.startBucket.getter();
    v4 = a1;
    v5 = 0;
    v21 = v1;
    while ((v3 & 0x8000000000000000) == 0 && v3 < 1 << *(v4 + 32))
    {
      v8 = v3 >> 6;
      if ((*(v2 + 8 * (v3 >> 6)) & (1 << v3)) == 0)
      {
        goto LABEL_21;
      }

      v22 = *(v4 + 36);
      v9 = *(*(v4 + 48) + 8 * v3);
      v10 = sub_1010C97CC(v9);

      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        sub_1011250BC((v11 > 1), v12 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v12 + 1;
      *(&_swiftEmptyArrayStorage[4] + v12) = v10;
      v6 = 1 << *(v4 + 32);
      if (v3 >= v6)
      {
        goto LABEL_22;
      }

      v2 = a1 + 56;
      v13 = *(a1 + 56 + 8 * v8);
      if ((v13 & (1 << v3)) == 0)
      {
        goto LABEL_23;
      }

      if (v22 != *(v4 + 36))
      {
        goto LABEL_24;
      }

      v14 = v13 & (-2 << (v3 & 0x3F));
      if (v14)
      {
        v6 = __clz(__rbit64(v14)) | v3 & 0x7FFFFFFFFFFFFFC0;
        v7 = v21;
      }

      else
      {
        v15 = v8 << 6;
        v16 = v8 + 1;
        v17 = (a1 + 64 + 8 * v8);
        v7 = v21;
        while (v16 < (v6 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            sub_1000BB408(v3, v22, 0);
            v4 = a1;
            v6 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        sub_1000BB408(v3, v22, 0);
        v4 = a1;
      }

LABEL_4:
      ++v5;
      v3 = v6;
      if (v5 == v7)
      {
        return;
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
  }
}

Swift::Int sub_1007B2054()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1007B20C8(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1007B211C@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10160A078, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1007B23F8(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_1007B24B8;

  return sub_100702488();
}

uint64_t sub_1007B24B8(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_1007B25B8, 0, 0);
}

uint64_t sub_1007B25B8()
{
  v1 = *(v0 + 24);

  sub_100008BB8(0, &unk_1016C7F80, SPStandaloneBeacon_ptr);
  sub_100009CC8(qword_1016A9A70, &unk_1016C7F80, SPStandaloneBeacon_ptr);
  isa = Set._bridgeToObjectiveC()().super.isa;

  (v1)[2](v1, isa);

  _Block_release(v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1007B26B8(void (*a1)(void, uint64_t))
{
  sub_10025ED18();
  v2 = swift_allocError();
  *v3 = 0;
  a1(0, v2);
}

uint64_t sub_1007B28D8(void (*a1)(void))
{
  sub_10025ED18();
  swift_allocError();
  *v2 = 0;
  a1();
}

uint64_t sub_1007B2A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_1007B2AE0;

  return sub_1004DCECC(a2);
}

uint64_t sub_1007B2AE0(char a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_1007B2C78;
  }

  else
  {
    *(v4 + 48) = a1 & 1;
    v5 = sub_1007B2C0C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1007B2C0C()
{
  (*(v0 + 16))(*(v0 + 48), 0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1007B2C78()
{
  v13 = v0;
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B7F8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v4 = 136315394;
    *(v4 + 4) = sub_1000136BC(0xD00000000000001ELL, 0x80000001013606F0, &v12);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s error: %{public}@", v4, 0x16u);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v6);
  }

  v8 = v0[5];
  v9 = v0[2];
  swift_errorRetain();
  v9(0, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1007B32C4(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(uint64_t, unint64_t, uint64_t))
{
  if ((a3 & 1) == 0)
  {
    return a4(a1, a2, 0);
  }

  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  swift_willThrowTypedImpl();
  swift_errorRetain();
  a4(0, 0xF000000000000000, a1);
  sub_1007BF380(a1, a2, 1);
  return sub_1007BF380(a1, a2, 1);
}

void sub_1007B370C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  if (a2)
  {
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

void sub_1007B3BA4(void *a1, int a2, void *a3, void *aBlock, void (*a5)(uint64_t, unint64_t, id, void *))
{
  v8 = _Block_copy(aBlock);
  v9 = a3;
  v13 = a1;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  _Block_copy(v8);
  a5(v10, v12, v13, v8);
  _Block_release(v8);
  _Block_release(v8);
  sub_100016590(v10, v12);
}

void sub_1007B3E84(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

uint64_t sub_1007B3F98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = static os_log_type_t.default.getter();
  if (qword_1016950B0 != -1)
  {
    swift_once();
  }

  v7 = qword_10177C3F8;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_101385D80;
  v9 = UUID.uuidString.getter();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_100008C00();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v7, "received ignore beacon for %@", 29, 2, v8);

  sub_1000035D0((v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_100A2C208();
  sub_10079337C(a1, a2, 0, 0);
}

uint64_t sub_1007B41DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v4 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v17 = v3;
  v6 = String.init<A>(describing:)();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  v9 = sub_100008C00();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  *(v5 + 96) = &type metadata for String;
  *(v5 + 104) = v9;
  *(v5 + 64) = v9;
  *(v5 + 72) = 0xD00000000000001FLL;
  *(v5 + 80) = 0x800000010135D810;
  os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v4, "%{public}@: %{public}@", 22, 2, v5);

  v10 = static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v11 = qword_10177C370;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10138BBE0;
  v13 = String.init<A>(describing:)();
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = v9;
  *(v12 + 32) = v13;
  *(v12 + 40) = v14;
  *(v12 + 96) = &type metadata for String;
  *(v12 + 104) = v9;
  *(v12 + 72) = 0xD00000000000001FLL;
  *(v12 + 80) = 0x800000010135D810;
  os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "%{public}@: %{public}s", 22, 2, v12);

  sub_1000035D0((v17 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v17 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  return sub_10069DCD0(a1, a2, a3);
}

uint64_t sub_1007B44E0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = static os_log_type_t.default.getter();
  if (qword_1016950B0 != -1)
  {
    v16 = v7;
    swift_once();
    v7 = v16;
  }

  os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, qword_10177C3F8, "detected unauthorized tracking", 30, 2, _swiftEmptyArrayStorage);
  v8 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v9 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v11 = String.init<A>(describing:)();
  v13 = v12;
  *(v10 + 56) = &type metadata for String;
  v14 = sub_100008C00();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  *(v10 + 96) = &type metadata for String;
  *(v10 + 104) = v14;
  *(v10 + 64) = v14;
  *(v10 + 72) = 0xD000000000000039;
  *(v10 + 80) = 0x800000010135FC90;
  os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "%{public}@: %{public}@", 22, 2, v10);

  sub_1000035D0((a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_100A2C208();
  sub_100786378(a1, sub_10026AE30, v6);
}

uint64_t sub_1007B48A8(uint64_t a1)
{
  v1 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v2 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v4 = String.init<A>(describing:)();
  v6 = v5;
  *(v3 + 56) = &type metadata for String;
  v7 = sub_100008C00();
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  *(v3 + 96) = &type metadata for String;
  *(v3 + 104) = v7;
  *(v3 + 64) = v7;
  *(v3 + 72) = 0xD000000000000018;
  *(v3 + 80) = 0x80000001013604F0;
  os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, v2, "%{public}@: %{public}@", 22, 2, v3);
}

uint64_t sub_1007B4AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v55 = a2;
  v56 = a3;
  v54 = a1;
  v5 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v5 - 8);
  v59 = &v47 - v6;
  v52 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v52);
  v51 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  v50 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v10 = *(v48 - 8);
  __chkstk_darwin(v48);
  v49 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for UUID();
  v53 = *(v61 - 8);
  v12 = *(v53 + 64);
  v13 = __chkstk_darwin(v61);
  v60 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v58 = &v47 - v15;
  __chkstk_darwin(v14);
  v17 = &v47 - v16;
  v18 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v19 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10138BBE0;
  ObjectType = swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v21 = String.init<A>(describing:)();
  v23 = v22;
  *(v20 + 56) = &type metadata for String;
  v24 = sub_100008C00();
  *(v20 + 32) = v21;
  *(v20 + 40) = v23;
  *(v20 + 96) = &type metadata for String;
  *(v20 + 104) = v24;
  *(v20 + 64) = v24;
  *(v20 + 72) = 0xD00000000000002DLL;
  *(v20 + 80) = 0x80000001013604C0;
  os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v19, "%{public}@: %{public}@", 22, 2, v20);

  v57 = v17;
  UUID.init()();
  v47 = *sub_1000035D0((v4 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v4 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v10 + 104))(v49, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v48);
  static DispatchQoS.unspecified.getter();
  ObjectType = _swiftEmptyArrayStorage;
  sub_1007BECAC(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v52 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v25 = type metadata accessor for TaskPriority();
  (*(*(v25 - 8) + 56))(v59, 1, 1, v25);
  v26 = v53;
  v27 = *(v53 + 16);
  v28 = v61;
  v27(v58, v54, v61);
  v27(v60, v57, v28);
  v29 = *(v26 + 80);
  v30 = (v29 + 32) & ~v29;
  v31 = v12 + 7;
  v32 = (v12 + 7 + v30) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v29 + v33 + 8) & ~v29;
  v35 = (v31 + v34) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  v37 = *(v26 + 32);
  v38 = v36 + v30;
  v39 = v61;
  v37(v38, v58, v61);
  *(v36 + v32) = 2;
  *(v36 + v33) = v47;
  v40 = v36 + v34;
  v41 = v39;
  v37(v40, v60, v39);
  v42 = (v36 + v35);
  v43 = v56;
  *v42 = v55;
  v42[1] = v43;
  v44 = v52;
  *(v36 + ((v35 + 23) & 0xFFFFFFFFFFFFFFF8)) = v52;

  v45 = v44;
  sub_10025EDD4(0, 0, v59, &unk_1013BB9E8, v36);

  return (*(v26 + 8))(v57, v41);
}

uint64_t sub_1007B5270(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v8 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v9 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v11 = String.init<A>(describing:)();
  v13 = v12;
  *(v10 + 56) = &type metadata for String;
  v14 = sub_100008C00();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  *(v10 + 96) = &type metadata for String;
  *(v10 + 104) = v14;
  *(v10 + 64) = v14;
  *(v10 + 72) = 0xD00000000000002CLL;
  *(v10 + 80) = 0x8000000101360490;
  os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "%{public}@: %{public}@", 22, 2, v10);

  sub_1000035D0((v4 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v4 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_100A2C208();
  sub_10079337C(a1, a2, a3, a4);
}

uint64_t sub_1007B556C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v8 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v9 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v11 = String.init<A>(describing:)();
  v13 = v12;
  *(v10 + 56) = &type metadata for String;
  v14 = sub_100008C00();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  *(v10 + 96) = &type metadata for String;
  *(v10 + 104) = v14;
  *(v10 + 64) = v14;
  *(v10 + 72) = 0xD000000000000028;
  *(v10 + 80) = 0x8000000101360460;
  os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "%{public}@: %{public}@", 22, 2, v10);

  sub_1000035D0((v4 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v4 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_100A2C208();
  sub_100792FD8(a1, a2, a3, a4);
}

uint64_t sub_1007B590C(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v8 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v9 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v11 = String.init<A>(describing:)();
  v13 = v12;
  *(v10 + 56) = &type metadata for String;
  v14 = sub_100008C00();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  *(v10 + 96) = &type metadata for String;
  *(v10 + 104) = v14;
  *(v10 + 64) = v14;
  *(v10 + 72) = 0xD00000000000002FLL;
  *(v10 + 80) = 0x800000010135FAA0;
  os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "%{public}@: %{public}@", 22, 2, v10);

  sub_1000035D0((v4 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v4 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_100A2C208();
  sub_100792880(a1, a2, a3, a4);
}

void sub_1007B6054(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  sub_100008BB8(0, &qword_1016969B0, SPBeaconLocation_ptr);
  sub_1007BECAC(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

uint64_t sub_1007B6124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_1007B6148, 0, 0);
}

uint64_t sub_1007B6148()
{
  v1 = *(v0 + 24);
  sub_1000035D0((*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  v2 = [v1 uuids];
  type metadata accessor for UUID();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 48) = v3;

  v4 = [v1 bundleIdentifier];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *(v0 + 56) = v8;
  v9 = [*(v0 + 24) subscribe];
  type metadata accessor for Transaction();
  v10 = static Transaction.currentNSXPCConnection.getter();
  *(v0 + 64) = v10;
  v11 = swift_task_alloc();
  *(v0 + 72) = v11;
  *v11 = v0;
  v11[1] = sub_1007B62CC;

  return sub_1004BD718(v6, v8, v3, v9, v10);
}

uint64_t sub_1007B62CC(uint64_t a1)
{
  v4 = *v2;
  v4[10] = v1;

  v5 = v4[8];
  if (v1)
  {

    v6 = sub_1007B64C8;
  }

  else
  {
    v4[11] = a1;

    v6 = sub_1007B6454;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1007B6454()
{
  v1 = *(v0 + 88);
  (*(v0 + 32))(v1, 0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1007B64C8()
{
  v1 = v0[10];
  v2 = v0[4];
  swift_errorRetain();
  v2(0, v1);

  v3 = v0[1];

  return v3();
}

void sub_1007B6B00(char *a1, uint64_t a2, uint64_t a3, const void *a4, void (*a5)(char *, uint64_t, void *))
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = *sub_1000035D0(&a1[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation], *&a1[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24]);
  _Block_copy(v12);
  v14 = a1;
  a5(v11, v13, v12);
  _Block_release(v12);
  _Block_release(v12);
  (*(v9 + 8))(v11, v8);
}

void sub_1007B6C8C(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

void sub_1007B6E34(void *a1, char a2, void (*a3)(void *, void *))
{
  if (a2)
  {
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    swift_willThrowTypedImpl();
    swift_errorRetain();
    a3(0, a1);
    sub_1000BB578(a1, 1);
    sub_1000BB578(a1, 1);
  }

  else
  {
    a3(a1, 0);
  }
}

void sub_1007B71D4(void *a1, int a2, void *a3, uint64_t a4, void *aBlock, void (*a6)(uint64_t, unint64_t, uint64_t, void *))
{
  v10 = _Block_copy(aBlock);
  v11 = a3;
  v15 = a1;
  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  _Block_copy(v10);
  a6(v12, v14, a4, v10);
  _Block_release(v10);
  _Block_release(v10);
  sub_100016590(v12, v14);
}

uint64_t sub_1007B729C(uint64_t a1, void (*a2)(id, uint64_t))
{
  v4 = sub_1000BC4D4(&unk_1016A99D0, &unk_1013BB9A0);
  __chkstk_darwin(v4);
  v6 = (&v13 - v5);
  v7 = type metadata accessor for RawAccessoryMetadata(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2A70(a1, v6, &unk_1016A99D0, &unk_1013BB9A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v6;
    v10 = v14;
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    swift_willThrowTypedImpl();
    swift_errorRetain();
    a2(0, v10);
  }

  else
  {
    sub_1007BF0D4(v6, v9, type metadata accessor for RawAccessoryMetadata);
    v12 = sub_100232DEC();
    a2(v12, 0);

    return sub_1007BF158(v9, type metadata accessor for RawAccessoryMetadata);
  }
}

uint64_t sub_1007B7494(uint64_t a1, void (*a2)(id, uint64_t))
{
  v4 = sub_1000BC4D4(&unk_1016A99C0, &unk_1013BB530);
  __chkstk_darwin(v4);
  v6 = (&v13 - v5);
  v7 = type metadata accessor for AccessoryMetadata(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2A70(a1, v6, &unk_1016A99C0, &unk_1013BB530);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v6;
    v10 = v14;
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    swift_willThrowTypedImpl();
    swift_errorRetain();
    a2(0, v10);
  }

  else
  {
    sub_1007BF0D4(v6, v9, type metadata accessor for AccessoryMetadata);
    v12 = sub_100231400();
    a2(v12, 0);

    return sub_1007BF158(v9, type metadata accessor for AccessoryMetadata);
  }
}

void sub_1007B7688(char *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, void (*a7)(char *, uint64_t, uint64_t, uint64_t))
{
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = *sub_1000035D0(&a1[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation], *&a1[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24]);
  v18 = a1;
  a7(v14, v17, a6, v16);

  (*(v12 + 8))(v14, v11);
}

uint64_t sub_1007B78F8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    a1 = 0;
  }

  return (*(v2 + 16))(a1);
}

uint64_t sub_1007B7928()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_1006DC000(v2, v3);
}

void sub_1007B79C0(uint64_t a1, unint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v33 - v12;
  v14 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  __chkstk_darwin(v14 - 8);
  v16 = &v33 - v15;
  v17 = type metadata accessor for MACAddress();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  _Block_copy(a4);
  sub_100017D5C(a1, a2);
  MACAddress.init(data:type:)();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_10000B3A8(v16, &qword_1016A40D0, &unk_10138BE70);
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000076D4(v21, qword_10177C418);
    sub_100017D5C(a1, a2);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    sub_100016590(a1, a2);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v34 = v25;
      *v24 = 136315138;
      v26 = Data.hexString.getter();
      v28 = sub_1000136BC(v26, v27, &v34);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "beaconingIdentifier: invalid MAC address %s", v24, 0xCu);
      sub_100007BAC(v25);
    }

    v29 = type metadata accessor for UUID();
    v30 = *(v29 - 8);
    (*(v30 + 56))(v13, 1, 1, v29);
    sub_1000D2A70(v13, v11, &qword_1016980D0, &unk_10138F3B0);
    isa = 0;
    if ((*(v30 + 48))(v11, 1, v29) != 1)
    {
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v30 + 8))(v11, v29);
    }

    (a4)[2](a4, isa);

    sub_10000B3A8(v13, &qword_1016980D0, &unk_10138F3B0);
  }

  else
  {
    (*(v18 + 32))(v20, v16, v17);
    v32 = *sub_1000035D0((a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
    _Block_copy(a4);
    sub_100703194(v20, v32, a4);
    _Block_release(a4);
    (*(v18 + 8))(v20, v17);
  }

  _Block_release(a4);
}

uint64_t sub_1007B7E64(uint64_t a1, unint64_t a2, uint64_t a3, const void *a4)
{
  v39 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v7 - 8);
  v46 = v7;
  __chkstk_darwin(v7);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for DispatchQoS.QoSClass();
  v10 = *(v40 - 8);
  __chkstk_darwin(v40);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  __chkstk_darwin(v13 - 8);
  v15 = &v38 - v14;
  v16 = type metadata accessor for MACAddress();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  _Block_copy(a4);
  sub_100017D5C(a1, a2);
  MACAddress.init(data:type:)();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10000B3A8(v15, &qword_1016A40D0, &unk_10138BE70);
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000076D4(v21, qword_10177C418);
    sub_100017D5C(a1, a2);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    sub_100016590(a1, a2);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136315138;
      v26 = Data.hexString.getter();
      v28 = sub_1000136BC(v26, v27, aBlock);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "fetchFindMyNetworkStatus: invalid MAC address %s", v24, 0xCu);
      sub_100007BAC(v25);
    }

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v29 = v40;
    (*(v10 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v40);
    v30 = static OS_dispatch_queue.global(qos:)();
    (*(v10 + 8))(v12, v29);
    v31 = swift_allocObject();
    *(v31 + 16) = sub_1001BE468;
    *(v31 + 24) = v20;
    aBlock[4] = sub_1007BF680;
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_101633A80;
    v32 = _Block_copy(aBlock);

    v33 = v41;
    static DispatchQoS.unspecified.getter();
    v47 = _swiftEmptyArrayStorage;
    sub_1007BECAC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v34 = v43;
    v35 = v46;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v32);

    (*(v45 + 8))(v34, v35);
    (*(v42 + 8))(v33, v44);
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    v36 = *sub_1000035D0((v39 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v39 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
    _Block_copy(a4);
    sub_100703BA4(v19, v36, a4);
    _Block_release(a4);
    (*(v17 + 8))(v19, v16);
  }
}

uint64_t sub_1007B8530(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, const void *a5)
{
  v25 = a4;
  v9 = type metadata accessor for MACAddress();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v24 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  _Block_copy(a5);
  sub_100017D5C(a1, a2);
  MACAddress.init(dataRepresentation:)();
  v24[1] = type metadata accessor for Transaction();
  (*(v10 + 16))(v13, v15, v9);
  v17 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = (v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v10 + 32))(v19 + v17, v13, v9);
  v20 = (v19 + v18);
  v21 = v25;
  *v20 = a3;
  v20[1] = v21;
  v22 = (v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v22 = sub_10026AE30;
  v22[1] = v16;
  sub_100017D5C(a3, v21);

  static Transaction.asyncTask(name:block:)();

  (*(v10 + 8))(v15, v9);
}

uint64_t sub_1007B88FC(uint64_t a1, unint64_t a2, const void *a3)
{
  v6 = type metadata accessor for MACAddress();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v18 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  _Block_copy(a3);
  sub_100017D5C(a1, a2);
  MACAddress.init(dataRepresentation:)();
  type metadata accessor for Transaction();
  (*(v7 + 16))(v10, v12, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  (*(v7 + 32))(v15 + v14, v10, v6);
  v16 = (v15 + ((v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = sub_10026AE30;
  v16[1] = v13;

  static Transaction.asyncTask(name:block:)();

  (*(v7 + 8))(v12, v6);
}

uint64_t sub_1007B8C9C(uint64_t a1, unint64_t a2, int a3, uint64_t a4, void *a5)
{
  v39 = a4;
  v40 = a3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v46 = *(v8 - 8);
  v47 = v8;
  __chkstk_darwin(v8);
  v44 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DispatchQoS();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v42 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v41 - 8);
  __chkstk_darwin(v41);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  __chkstk_darwin(v14 - 8);
  v16 = &v39 - v15;
  v17 = type metadata accessor for MACAddress();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  *(v21 + 16) = a5;
  _Block_copy(a5);
  sub_100017D5C(a1, a2);
  MACAddress.init(data:type:)();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_10000B3A8(v16, &qword_1016A40D0, &unk_10138BE70);
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000076D4(v22, qword_10177C418);
    sub_100017D5C(a1, a2);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    sub_100016590(a1, a2);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock[0] = v26;
      *v25 = 136315138;
      v27 = Data.hexString.getter();
      v29 = sub_1000136BC(v27, v28, aBlock);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "setFindMyNetworkStatus: invalid MAC address %s", v25, 0xCu);
      sub_100007BAC(v26);
    }

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v30 = v41;
    (*(v11 + 104))(v13, enum case for DispatchQoS.QoSClass.default(_:), v41);
    v31 = static OS_dispatch_queue.global(qos:)();
    (*(v11 + 8))(v13, v30);
    v32 = swift_allocObject();
    *(v32 + 16) = sub_10026AE30;
    *(v32 + 24) = v21;
    aBlock[4] = sub_1007BF440;
    aBlock[5] = v32;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_101633968;
    v33 = _Block_copy(aBlock);

    v34 = v42;
    static DispatchQoS.unspecified.getter();
    v48 = _swiftEmptyArrayStorage;
    sub_1007BECAC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v35 = v44;
    v36 = v47;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v33);

    (*(v46 + 8))(v35, v36);
    (*(v43 + 8))(v34, v45);
  }

  else
  {
    (*(v18 + 32))(v20, v16, v17);
    v37 = *sub_1000035D0((v39 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v39 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
    _Block_copy(a5);
    sub_1007041C4(v20, v40 & 1, v37, a5);
    _Block_release(a5);
    (*(v18 + 8))(v20, v17);
  }
}

void sub_1007B9374(char a1, uint64_t a2, uint64_t a3)
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v5 = sub_10107416C(v32);

  sub_1000034A4();
  v6 = sub_100003518();
  v7 = [v6 stringForKey:SPSettingsServiceStateKey];

  if (!v7)
  {
    if (qword_101694A88 != -1)
    {
      swift_once();
    }

    v7 = qword_10177B658;
  }

  if (*(v5 + 16))
  {
    v32 = SPDisabledReasonNone;
    __chkstk_darwin(v8);
    v31[2] = &v32;
    if ((sub_1002EFACC(sub_1002EF830, v31, v5) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
LABEL_14:
      v15 = &SPOwnerDataStateNotAvailable;
      v16 = &SPOwnerDataStateUpToDate;
      v17 = (a1 & 1) == 0;
      goto LABEL_18;
    }
  }

  if ((a1 & 1) == 0)
  {
    v15 = &SPOwnerDataStateInitializing;
    goto LABEL_22;
  }

  v18 = sub_100A96828();
  v15 = &SPOwnerDataStateUpToDate;
  v16 = &SPOwnerDataStateUpdating;
  v17 = (v18 & 1) == 0;
LABEL_18:
  if (!v17)
  {
    v15 = v16;
  }

LABEL_22:
  v19 = *v15;
  v20 = v7;
  sub_101129C80(v5);

  v21 = objc_allocWithZone(SPOwnerSessionState);
  type metadata accessor for SPDisabledReason(0);
  sub_1007BECAC(&unk_1016A9A50, type metadata accessor for SPDisabledReason, &unk_1013867EC);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v23 = [v21 initWithServiceState:v20 disabledReasons:isa ownerDataState:v19];

  v24 = static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v25 = qword_10177C370;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_101385D80;
  v27 = [v23 description];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  *(v26 + 56) = &type metadata for String;
  *(v26 + 64) = sub_100008C00();
  *(v26 + 32) = v28;
  *(v26 + 40) = v30;
  os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, v25, "ownerSessionState(completion:) %@", 33, 2, v26);

  (*(a3 + 16))(a3, v23);
}

void sub_1007B97C4(uint64_t a1, const void *a2)
{
  sub_1000035D0((a1 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a1 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  _Block_copy(a2);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  QueueSynchronizer.conditionalSync<A>(_:)();

  sub_1007B9374(v4, a1, a2);
  _Block_release(a2);
}

uint64_t sub_1007B98CC(uint64_t a1, uint64_t a2)
{
  if (qword_101694910 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177B2D0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_1000136BC(0xD000000000000035, 0x800000010135D8A0, &v10);
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s", v7, 0xCu);
    sub_100007BAC(v8);
  }

  return sub_1007061DC(a1, a2);
}

uint64_t sub_1007B9A2C(uint64_t a1, uint64_t a2)
{
  sub_1000035D0((a1 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a1 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  QueueSynchronizer.conditionalSync<A>(_:)();

  return (*(a2 + 16))(a2, v4);
}

void sub_1007B9B1C(uint64_t a1, unint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v8 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  __chkstk_darwin(v8 - 8);
  v10 = v24 - v9;
  v11 = type metadata accessor for MACAddress();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  _Block_copy(a4);
  sub_100017D5C(a1, a2);
  MACAddress.init(data:type:)();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000B3A8(v10, &qword_1016A40D0, &unk_10138BE70);
    v15 = static os_log_type_t.error.getter();
    if (qword_101695008 != -1)
    {
      swift_once();
    }

    v16 = qword_10177C340;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_101385D80;
    v18 = Data.hexString.getter();
    v20 = v19;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = sub_100008C00();
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v16, "Unable to parse MAC address %@", 30, 2, v17);

    type metadata accessor for SPOwnerSessionError(0);
    v24[0] = 5;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1007BECAC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
    _BridgedStoredNSError.init(_:userInfo:)();
    v21 = v24[1];
    v22 = _convertErrorToNSError(_:)();
    (a4)[2](a4, v22);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v23 = *(*(*sub_1000035D0((a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24)) + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_bluetoothCommunicatorCoordinator) + 24);
    _Block_copy(a4);
    sub_101327B98(v14, v23, a4);
    _Block_release(a4);
    (*(v12 + 8))(v14, v11);
  }

  _Block_release(a4);
}

void sub_1007B9E90(char **a1, unint64_t a2, uint64_t a3, char *a4)
{
  v8 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  __chkstk_darwin(v8 - 8);
  v37 = &v31 - v9;
  v38 = type metadata accessor for OwnedBeaconGroup(0);
  v10 = *(v38 - 8);
  __chkstk_darwin(v38);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007BEC04(a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation, v40);
  v13 = sub_1000035D0(v40, v40[3]);
  if (a2 >> 62)
  {
    goto LABEL_16;
  }

  v14 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v35 = v12;
  v36 = v10;
  if (v14)
  {
    while (1)
    {
      v34 = v13;
      _Block_copy(a4);
      v39 = _swiftEmptyArrayStorage;
      sub_101123D1C(0, v14 & ~(v14 >> 63), 0);
      if (v14 < 0)
      {
        break;
      }

      v32 = a1;
      v33 = a4;
      a4 = 0;
      v15 = v39;
      v10 = a2 & 0xC000000000000001;
      a1 = &selRef_initWithBeaconAdvertisements_searchResultMarker_error_;
      while (1)
      {
        v16 = v10 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(a2 + 8 * a4 + 32);
        v13 = v16;
        v17 = [v16 integerValue];

        if ((v17 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v17 > 0xFF)
        {
          goto LABEL_15;
        }

        v39 = v15;
        v12 = *(v15 + 16);
        v18 = *(v15 + 24);
        if (v12 >= v18 >> 1)
        {
          sub_101123D1C((v18 > 1), (v12 + 1), 1);
          v15 = v39;
        }

        ++a4;
        *(v15 + 16) = v12 + 1;
        v12[v15 + 32] = v17;
        if (v14 == a4)
        {
          a4 = v33;
          v19 = v37;
          a1 = v32;
          v13 = v34;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      v14 = _CocoaArrayWrapper.endIndex.getter();
      v35 = v12;
      v36 = v10;
      if (!v14)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    _Block_copy(a4);
    v15 = _swiftEmptyArrayStorage;
    v19 = v37;
LABEL_18:
    v20 = *v13;
    _Block_copy(a4);
    _Block_copy(a4);
    sub_100AC53EC(a1, v19);
    v21 = v38;
    if ((*(v36 + 48))(v19, 1, v38) == 1)
    {
      sub_10000B3A8(v19, &unk_1016AF8B0, &unk_1013A0700);
      sub_1003FD838();
      swift_allocError();
      *v22 = 1;
      v23 = _convertErrorToNSError(_:)();
      (*(a4 + 2))(a4, v23);
    }

    else
    {
      v24 = v35;
      v25 = sub_1007BF0D4(v19, v35, type metadata accessor for OwnedBeaconGroup);
      v26 = *(v24 + *(v21 + 40));
      __chkstk_darwin(v25);
      *(&v31 - 2) = v24;
      *(&v31 - 1) = v15;

      sub_1001661F0(_swiftEmptyArrayStorage, sub_1007BF13C, (&v31 - 4), v26);
      v28 = v27;

      v29 = *(v20 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_classicPairingSupport);
      v30 = *(v21 + 28);
      _Block_copy(a4);
      sub_1004676B4(v24 + v30, v28, v29, a4);
      _Block_release(a4);

      sub_1007BF158(v24, type metadata accessor for OwnedBeaconGroup);
    }

    _Block_release(a4);
    _Block_release(a4);

    sub_100007BAC(v40);
    _Block_release(a4);
  }
}

void sub_1007BA2F8(uint64_t a1, void *aBlock)
{
  _Block_copy(aBlock);
  v4 = static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v5 = qword_10177C370;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v7 = String.init<A>(describing:)();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  v10 = sub_100008C00();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = v10;
  *(v6 + 64) = v10;
  *(v6 + 72) = 0xD00000000000001ELL;
  *(v6 + 80) = 0x8000000101360650;
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "%{public}@:%{public}@", 21, 2, v6);

  v11 = sub_1000035D0((a1 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a1 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_1004DFF38(*v11, aBlock);
  _Block_release(aBlock);
}

uint64_t sub_1007BA47C(void *a1, uint64_t a2, void *aBlock)
{
  _Block_copy(aBlock);
  v6 = static os_log_type_t.default.getter();
  if (qword_1016950B0 != -1)
  {
    v16 = v6;
    swift_once();
    v6 = v16;
  }

  os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, qword_10177C3F8, "update unauthorized tracking", 28, 2, _swiftEmptyArrayStorage);
  v7 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v8 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v10 = String.init<A>(describing:)();
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  v13 = sub_100008C00();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = v13;
  *(v9 + 64) = v13;
  *(v9 + 72) = 0xD000000000000039;
  *(v9 + 80) = 0x800000010135F420;
  os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, "%{public}@: %{public}@", 22, 2, v9);

  sub_1000035D0((a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  v14 = sub_100A2C208();
  sub_1007A54FC(a1, v14, aBlock);
  _Block_release(aBlock);
}

uint64_t sub_1007BA690(unint64_t a1, uint64_t a2, void *aBlock)
{
  _Block_copy(aBlock);
  v6 = static os_log_type_t.default.getter();
  if (qword_1016950B0 != -1)
  {
    v16 = v6;
    swift_once();
    v6 = v16;
  }

  os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, qword_10177C3F8, "withdrawn unauthorized tracking", 31, 2, _swiftEmptyArrayStorage);
  v7 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v8 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v10 = String.init<A>(describing:)();
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  v13 = sub_100008C00();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = v13;
  *(v9 + 64) = v13;
  *(v9 + 72) = 0xD00000000000003BLL;
  *(v9 + 80) = 0x800000010135F320;
  os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, "%{public}@: %{public}@", 22, 2, v9);

  sub_1000035D0((a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  v14 = sub_100A2C208();
  sub_100799528(a1, v14, aBlock);
  _Block_release(aBlock);
}

uint64_t sub_1007BA8A4(void *a1, uint64_t a2, uint64_t a3)
{
  v22[0] = a1;
  v5 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v22 - v9;
  v11 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v12 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10138BBE0;
  v22[1] = swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v14 = String.init<A>(describing:)();
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  v17 = sub_100008C00();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  *(v13 + 96) = &type metadata for String;
  *(v13 + 104) = v17;
  *(v13 + 64) = v17;
  *(v13 + 72) = 0xD000000000000038;
  *(v13 + 80) = 0x8000000101360550;
  os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "%{public}@: %{public}@", 22, 2, v13);

  sub_1000035D0((a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_100A2C208();
  sub_100780A4C(v22[0], v10);

  sub_1000D2A70(v10, v8, &unk_101696900, &unk_10138B1E0);
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  isa = 0;
  if ((*(v19 + 48))(v8, 1, v18) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v19 + 8))(v8, v18);
  }

  (*(a3 + 16))(a3, isa, 0);

  return sub_10000B3A8(v10, &unk_101696900, &unk_10138B1E0);
}

uint64_t sub_1007BAB7C(void *a1, uint64_t a2, void *aBlock)
{
  _Block_copy(aBlock);
  v6 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v7 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v9 = String.init<A>(describing:)();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  v12 = sub_100008C00();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  *(v8 + 96) = &type metadata for String;
  *(v8 + 104) = v12;
  *(v8 + 64) = v12;
  *(v8 + 72) = 0xD000000000000034;
  *(v8 + 80) = 0x8000000101360510;
  os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v7, "%{public}@: %{public}@", 22, 2, v8);

  sub_1000035D0((a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  v13 = sub_100A2C208();
  sub_100798BEC(a1, v13, aBlock);
  _Block_release(aBlock);
}

void sub_1007BAD24(void *a1, uint64_t a2, const void *a3)
{
  v6 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v6 - 8);
  v8 = &v36 - v7;
  v9 = sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120);
  __chkstk_darwin(v9 - 8);
  v11 = &v36 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v38 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v36 - v16;
  v41 = swift_allocObject();
  *(v41 + 16) = a3;
  v39 = a2;
  _Block_copy(a3);
  v40 = a3;
  _Block_copy(a3);
  v18 = [a1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100025020(v17, v45);
  v37 = *(v13 + 8);
  v37(v17, v12);
  sub_1000D2A70(v45, v44, &qword_101696920, &unk_10138B200);
  if (v44[3])
  {
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    v19 = type metadata accessor for LocalFindableAccessoryRecord(0);
    v20 = swift_dynamicCast();
    (*(*(v19 - 8) + 56))(v11, v20 ^ 1u, 1, v19);
  }

  else
  {
    sub_10000B3A8(v44, &qword_101696920, &unk_10138B200);
    v19 = type metadata accessor for LocalFindableAccessoryRecord(0);
    (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  }

  type metadata accessor for LocalFindableAccessoryRecord(0);
  v21 = (*(*(v19 - 8) + 48))(v11, 1, v19);
  sub_10000B3A8(v11, &qword_1016A9A30, &unk_1013BD120);
  if (v21)
  {
    sub_1000D2A70(v45, &v42, &qword_101696920, &unk_10138B200);
    if (v43)
    {
      sub_100031694(&v42, v44);
      v22 = *sub_1000035D0((v39 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v39 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
      v23 = v40;
      _Block_copy(v40);
      sub_1004DE6B4(v44, v22, v23);
      _Block_release(v23);
      sub_100007BAC(v44);
    }

    else
    {
      sub_10000B3A8(&v42, &qword_101696920, &unk_10138B200);
      type metadata accessor for SPOwnerSessionError(0);
      *&v42 = 2;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_1007BECAC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
      _BridgedStoredNSError.init(_:userInfo:)();
      v34 = v44[0];
      v35 = _convertErrorToNSError(_:)();
      v23 = v40;
      (*(v40 + 2))(v40, v35);
    }

    sub_10000B3A8(v45, &qword_101696920, &unk_10138B200);

    v33 = v23;
  }

  else
  {
    v24 = [a1 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = swift_allocObject();
    v26 = v8;
    v36 = v8;
    v27 = v41;
    *(v25 + 16) = sub_10026AE30;
    *(v25 + 24) = v27;
    v28 = type metadata accessor for TaskPriority();
    (*(*(v28 - 8) + 56))(v26, 1, 1, v28);
    v29 = v38;
    (*(v13 + 16))(v38, v17, v12);
    v30 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    *(v31 + 24) = 0;
    (*(v13 + 32))(v31 + v30, v29, v12);
    v32 = (v31 + ((v14 + v30 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v32 = sub_10040A6CC;
    v32[1] = v25;

    sub_10025EDD4(0, 0, v36, &unk_1013BB9D0, v31);

    v37(v17, v12);
    sub_10000B3A8(v45, &qword_101696920, &unk_10138B200);

    v33 = v40;
  }

  _Block_release(v33);
}

void sub_1007BB3B0(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v10 - 8);
  v12 = &v21 - v11;
  v13 = type metadata accessor for OwnedBeaconRecord(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = a2;
  _Block_copy(a3);
  v17 = [a1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100AA33AC(v9, v12);
  (*(v7 + 8))(v9, v6);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10000B3A8(v12, &unk_1016A9A20, &qword_10138B280);
    type metadata accessor for SPOwnerSessionError(0);
    v23 = 2;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1007BECAC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
    _BridgedStoredNSError.init(_:userInfo:)();
    v18 = v24;
    v19 = _convertErrorToNSError(_:)();
    (a3)[2](a3, v19);
  }

  else
  {
    sub_1007BF0D4(v12, v16, type metadata accessor for OwnedBeaconRecord);
    v20 = *sub_1000035D0((v22 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v22 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
    _Block_copy(a3);
    sub_1004DEB00(v16, v20, a3);
    _Block_release(a3);
    sub_1007BF158(v16, type metadata accessor for OwnedBeaconRecord);
  }

  _Block_release(a3);
}

void sub_1007BB6F8(void *a1, uint64_t a2, const void *a3)
{
  v6 = sub_1000BC4D4(&unk_1016A99E0, &qword_1013A07B0);
  v7 = __chkstk_darwin(v6 - 8);
  v264 = &v255 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v258 = &v255 - v10;
  __chkstk_darwin(v9);
  v263 = &v255 - v11;
  v275 = type metadata accessor for LostModeRecord(0);
  v273 = *(v275 - 8);
  v12 = __chkstk_darwin(v275);
  v262 = &v255 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v257 = (&v255 - v15);
  v16 = __chkstk_darwin(v14);
  v256 = (&v255 - v17);
  __chkstk_darwin(v16);
  v259 = &v255 - v18;
  v19 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v20 = __chkstk_darwin(v19 - 8);
  v261 = (&v255 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v260 = (&v255 - v22);
  v23 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v23 - 8);
  v277 = &v255 - v24;
  v272 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v272);
  v271 = &v255 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v26 - 8);
  v269 = &v255 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v267 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v266 = *(v267 - 8);
  __chkstk_darwin(v267);
  v268 = &v255 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v282 = type metadata accessor for UUID();
  v283 = *(v282 - 8);
  v29 = *(v283 + 64);
  v30 = __chkstk_darwin(v282);
  v278 = &v255 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v30);
  v274 = &v255 - v32;
  v33 = __chkstk_darwin(v31);
  v276 = &v255 - v34;
  v35 = __chkstk_darwin(v33);
  v270 = &v255 - v36;
  v37 = __chkstk_darwin(v35);
  *&v280[8] = &v255 - v38;
  __chkstk_darwin(v37);
  v281 = &v255 - v39;
  v40 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v40 - 8);
  v265 = &v255 - v41;
  v284 = swift_allocObject();
  *(v284 + 16) = a3;
  _Block_copy(a3);
  _Block_copy(a3);
  _Block_copy(a3);
  v285 = a3;
  _Block_copy(a3);
  v42 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v43 = qword_10177C398;
  *&v279 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_10138B360;
  *v280 = a2;
  aBlock = swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v45 = String.init<A>(describing:)();
  v47 = v46;
  *(v44 + 56) = &type metadata for String;
  v48 = sub_100008C00();
  *(v44 + 32) = v45;
  *(v44 + 40) = v47;
  *(v44 + 96) = &type metadata for String;
  *(v44 + 104) = v48;
  *(v44 + 64) = v48;
  *(v44 + 72) = 0xD000000000000016;
  *(v44 + 80) = 0x80000001013602C0;
  aBlock = [a1 type];
  v49 = dispatch thunk of CustomStringConvertible.description.getter();
  *(v44 + 136) = &type metadata for String;
  *(v44 + 144) = v48;
  v50 = v48;
  *(v44 + 112) = v49;
  *(v44 + 120) = v51;
  v52 = v43;
  os_log(_:dso:log:_:_:)(v42, &_mh_execute_header, v43, "%{public}@: %{public}@ - received command type - %{public}@", 59, 2, v44);

  v53 = a1;
  switch([a1 type])
  {
    case 0uLL:
      sub_1000035D0((*v280 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(*v280 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
      sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
      v116 = v283;
      v117 = (*(v283 + 80) + 32) & ~*(v283 + 80);
      v118 = swift_allocObject();
      *(v118 + 16) = xmmword_101385D80;
      v119 = [v53 beaconIdentifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v120 = type metadata accessor for Date();
      v121 = v265;
      (*(*(v120 - 8) + 56))(v265, 1, 1, v120);
      v122 = swift_allocObject();
      v123 = v284;
      *(v122 + 16) = sub_10026AE30;
      *(v122 + 24) = v123;

      sub_1004ADD04(v118, v121, &_swiftEmptySetSingleton, 1, sub_10041ABC0, v122);
      swift_setDeallocating();
      (*(v116 + 8))(v118 + v117, v282);
      swift_deallocClassInstance();

      sub_10000B3A8(v121, &unk_101696900, &unk_10138B1E0);
      goto LABEL_27;
    case 1uLL:
      v104 = [a1 identifier];
      v55 = v281;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v105 = [a1 beaconIdentifier];
      v57 = *&v280[8];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1004E1828(v55, v57, sub_10026AE30, v284);
      goto LABEL_26;
    case 2uLL:
      v108 = [a1 identifier];
      v55 = v281;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v109 = [a1 beaconIdentifier];
      v57 = *&v280[8];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1004E1854(v55, v57, sub_10026AE30, v284);
      goto LABEL_26;
    case 3uLL:
      v62 = sub_1000035D0((*v280 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(*v280 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
      v63 = [a1 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v64 = [a1 beaconIdentifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      *v280 = [a1 playSoundContext];
      *&v279 = *v62;
      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      (*(v266 + 104))(v268, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v267);
      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_1007BECAC(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
      sub_1000BC4D4(&unk_101695580, &qword_101385D90);
      sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v278 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v65 = type metadata accessor for TaskPriority();
      (*(*(v65 - 8) + 56))(v277, 1, 1, v65);
      v66 = v283;
      v67 = *(v283 + 16);
      v68 = v270;
      v69 = v282;
      v67(v270, *&v280[8], v282);
      v67(v276, v281, v69);
      v70 = *(v66 + 80);
      v71 = (v70 + 32) & ~v70;
      v72 = v29 + 7;
      v73 = (v29 + 7 + v71) & 0xFFFFFFFFFFFFFFF8;
      v74 = (v73 + 15) & 0xFFFFFFFFFFFFFFF8;
      v75 = (v70 + v74 + 8) & ~v70;
      v274 = ((v72 + v75) & 0xFFFFFFFFFFFFFFF8);
      v275 = (v274 + 23) & 0xFFFFFFFFFFFFFFF8;
      v76 = swift_allocObject();
      *(v76 + 16) = 0;
      *(v76 + 24) = 0;
      v77 = *(v66 + 32);
      v77(v76 + v71, v68, v69);
      *(v76 + v73) = *v280;
      *(v76 + v74) = v279;
      v77(v76 + v75, v276, v69);
      v78 = &v274[v76];
      v79 = v284;
      *v78 = sub_10026AE30;
      v78[1] = v79;
      v80 = v278;
      *(v76 + v275) = v278;

      v81 = v80;
      sub_10025EDD4(0, 0, v277, &unk_1013BB9C8, v76);

      v82 = *(v66 + 8);
      v82(*&v280[8], v69);
      v82(v281, v69);
      goto LABEL_27;
    case 4uLL:
      sub_1000035D0((*v280 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(*v280 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
      v124 = [a1 identifier];
      v55 = v281;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v125 = [a1 beaconIdentifier];
      v57 = *&v280[8];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1004CB778(v55, v57, sub_10026AE30, v284);
      goto LABEL_26;
    case 5uLL:
      sub_1007BEC04(*v280 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation, &aBlock);
      v128 = sub_1000035D0(&aBlock, v291);
      v129 = [a1 beaconIdentifier];
      v130 = v274;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v131 = [a1 lostModeMessage];
      v255 = v50;
      if (v131)
      {
        v132 = v131;
        v277 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v281 = v133;
      }

      else
      {
        v277 = 0;
        v281 = 0;
      }

      v183 = [a1 lostModePhoneNumber];
      if (v183)
      {
        v184 = v183;
        v276 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *&v280[8] = v185;
      }

      else
      {
        v276 = 0;
        *&v280[8] = 0;
      }

      v186 = [a1 lostModeEmail];
      if (v186)
      {
        v187 = v186;
        v272 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *v280 = v188;
      }

      else
      {
        v272 = 0;
        *v280 = 0;
      }

      v189 = *v128;
      v190 = static os_log_type_t.default.getter();
      if (qword_1016950A0 != -1)
      {
        swift_once();
      }

      v191 = qword_10177C3E8;
      v192 = swift_allocObject();
      v279 = xmmword_101385D80;
      *(v192 + 16) = xmmword_101385D80;
      v193 = UUID.uuidString.getter();
      v194 = v255;
      *(v192 + 56) = &type metadata for String;
      *(v192 + 64) = v194;
      *(v192 + 32) = v193;
      *(v192 + 40) = v195;
      v278 = v191;
      os_log(_:dso:log:_:_:)(v190, &_mh_execute_header, v191, "Command lost mode uuid: %@", 26, 2, v192);

      sub_100025020(v130, &v286);
      v196 = v287;
      sub_10000B3A8(&v286, &qword_101696920, &unk_10138B200);
      if (!v196)
      {
        v197 = v260;
        sub_100AC53EC(v130, v260);
        v198 = type metadata accessor for OwnedBeaconGroup(0);
        v199 = (*(*(v198 - 8) + 48))(v197, 1, v198);
        sub_10000B3A8(v197, &unk_1016AF8B0, &unk_1013A0700);
        if (v199 == 1)
        {
          v200 = static os_log_type_t.error.getter();
          v201 = swift_allocObject();
          *(v201 + 16) = v279;
          sub_1007BECAC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v202 = v282;
          v203 = dispatch thunk of CustomStringConvertible.description.getter();
          v204 = v255;
          *(v201 + 56) = &type metadata for String;
          *(v201 + 64) = v204;
          *(v201 + 32) = v203;
          *(v201 + 40) = v205;
          os_log(_:dso:log:_:_:)(v200, &_mh_execute_header, v52, "Could not find beacon/group for given UUID - %@", 47, 2, v201);

          sub_10025ED18();
          swift_allocError();
          *v206 = 0;
          v207 = _convertErrorToNSError(_:)();
          v177 = v285;
          (v285)[2](v285, v207);

          (*(v283 + 8))(v130, v202);
          goto LABEL_111;
        }
      }

      if (!v281)
      {
        v212 = static os_log_type_t.error.getter();
        os_log(_:dso:log:_:_:)(v212, &_mh_execute_header, v278, "Lost mode cannot be enabled without a message", 45, 2, _swiftEmptyArrayStorage);
        sub_10025ED18();
        swift_allocError();
        *v213 = 0;
        v214 = _convertErrorToNSError(_:)();
        v177 = v285;
        (v285)[2](v285, v214);

        (*(v283 + 8))(v130, v282);
        goto LABEL_111;
      }

      v208 = v263;
      sub_100ABD87C(v263);
      v209 = *(v273 + 48);
      v210 = v275;
      if (v209(v208, 1, v275) != 1)
      {
        v215 = v208;
        v216 = v259;
        sub_1007BF0D4(v215, v259, type metadata accessor for LostModeRecord);
        v217 = (v216 + v210[9]);
        v218 = v217[1];
        if (!v218 || (*v217 != v277 || v218 != v281) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_104;
        }

        v219 = (v216 + v210[8]);
        v220 = v219[1];
        if (v220)
        {
          if (!*&v280[8] || (*v219 != v276 || v220 != *&v280[8]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_104;
          }
        }

        else if (*&v280[8])
        {
          goto LABEL_104;
        }

        v226 = (v216 + v210[7]);
        v227 = v226[1];
        if (v227)
        {
          if (*v280 && (*v226 == v272 && v227 == *v280 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
          {
            goto LABEL_99;
          }
        }

        else if (!*v280)
        {
LABEL_99:
          v228 = static os_log_type_t.default.getter();
          os_log(_:dso:log:_:_:)(v228, &_mh_execute_header, v278, "Lost mode info has not changed. Nothing to do.", 46, 2, _swiftEmptyArrayStorage);
          v177 = v285;
          v285[2](v285, 0);

          (*(v283 + 8))(v130, v282);
          sub_1007BF158(v216, type metadata accessor for LostModeRecord);
          goto LABEL_111;
        }

LABEL_104:
        v211 = v189;
        sub_1007BF158(v216, type metadata accessor for LostModeRecord);
        goto LABEL_105;
      }

      v211 = v189;
      sub_10000B3A8(v208, &unk_1016A99E0, &qword_1013A07B0);
LABEL_105:
      v229 = static os_log_type_t.default.getter();
      v230 = swift_allocObject();
      *(v230 + 16) = v279;
      v231 = v274;
      v232 = UUID.uuidString.getter();
      *(v230 + 56) = &type metadata for String;
      *(v230 + 64) = v50;
      *(v230 + 32) = v232;
      *(v230 + 40) = v233;
      v234 = v229;
      v235 = v278;
      os_log(_:dso:log:_:_:)(v234, &_mh_execute_header, v278, "enableLostMode for beacon %@.", 29, 2, v230);

      if (*v280 == 0)
      {
        v236 = static os_log_type_t.error.getter();
        v237 = swift_allocObject();
        *(v237 + 16) = v279;
        v238 = UUID.uuidString.getter();
        *(v237 + 56) = &type metadata for String;
        *(v237 + 64) = v50;
        *(v237 + 32) = v238;
        *(v237 + 40) = v239;
        os_log(_:dso:log:_:_:)(v236, &_mh_execute_header, v235, "Must provide either phone number or email - %@", 46, 2, v237);

        sub_10025ED18();
        swift_allocError();
        *v240 = 0;
        v241 = _convertErrorToNSError(_:)();
        v177 = v285;
        (v285)[2](v285, v241);

LABEL_110:
        (*(v283 + 8))(v231, v282);
        goto LABEL_111;
      }

      v242 = v211;
      v243 = v258;
      sub_100ABD87C(v258);
      v244 = v275;
      if (v209(v243, 1, v275) != 1)
      {
        v254 = v256;
        sub_1007BF0D4(v243, v256, type metadata accessor for LostModeRecord);
        v177 = v285;
        _Block_copy(v285);
        sub_1008B59FC(v254, v272, *v280, v276, *&v280[8], v277, v281, v242, v177);
        _Block_release(v177);

        sub_1007BF158(v254, type metadata accessor for LostModeRecord);
        goto LABEL_110;
      }

      sub_10000B3A8(v243, &unk_1016A99E0, &qword_1013A07B0);
      v245 = v257;
      UUID.init()();
      v246 = v283;
      v247 = v282;
      (*(v283 + 16))(v245 + v244[6], v231, v282);
      *v245 = xmmword_10138C660;
      v248 = (v245 + v244[7]);
      v249 = *v280;
      *v248 = v272;
      v248[1] = v249;
      v250 = (v245 + v244[8]);
      v251 = *&v280[8];
      *v250 = v276;
      v250[1] = v251;
      v252 = (v245 + v244[9]);
      v253 = v281;
      *v252 = v277;
      v252[1] = v253;
      v177 = v285;
      _Block_copy(v285);

      sub_1008B90DC(v245, v242, v177);
      _Block_release(v177);

      sub_1007BF158(v245, type metadata accessor for LostModeRecord);
      (*(v246 + 8))(v231, v247);
LABEL_111:
      sub_100007BAC(&aBlock);

      _Block_release(v177);
      _Block_release(v177);
      v93 = v177;
LABEL_29:
      _Block_release(v93);
      return;
    case 6uLL:
      sub_1007BEC04(*v280 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation, &aBlock);
      v110 = sub_1000035D0(&aBlock, v291);
      v111 = [a1 beaconIdentifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v112 = [a1 lostModeMessage];
      if (v112)
      {
        v113 = v112;
        v281 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v115 = v114;
      }

      else
      {
        v281 = 0;
        v115 = 0;
      }

      v149 = [v53 lostModePhoneNumber];
      if (v149)
      {
        v150 = v149;
        *v280 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v152 = v151;
      }

      else
      {
        *v280 = 0;
        v152 = 0;
      }

      v153 = [v53 lostModeEmail];
      if (v153)
      {
        v154 = v153;
        v277 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v156 = v155;
      }

      else
      {
        v277 = 0;
        v156 = 0;
      }

      v157 = *v110;
      v158 = static os_log_type_t.default.getter();
      if (qword_1016950A0 != -1)
      {
        swift_once();
      }

      v159 = qword_10177C3E8;
      v160 = swift_allocObject();
      *&v280[8] = xmmword_101385D80;
      *(v160 + 16) = xmmword_101385D80;
      v161 = v278;
      v162 = UUID.uuidString.getter();
      *(v160 + 56) = &type metadata for String;
      *(v160 + 64) = v50;
      *(v160 + 32) = v162;
      *(v160 + 40) = v163;
      v164 = v158;
      v165 = v161;
      os_log(_:dso:log:_:_:)(v164, &_mh_execute_header, v159, "Command lost mode uuid: %@", 26, 2, v160);

      sub_100025020(v161, &v286);
      v166 = v287;
      sub_10000B3A8(&v286, &qword_101696920, &unk_10138B200);
      if (!v166)
      {
        v167 = v261;
        sub_100AC53EC(v165, v261);
        v168 = type metadata accessor for OwnedBeaconGroup(0);
        v169 = (*(*(v168 - 8) + 48))(v167, 1, v168);
        sub_10000B3A8(v167, &unk_1016AF8B0, &unk_1013A0700);
        if (v169 == 1)
        {
          v170 = static os_log_type_t.error.getter();
          v171 = swift_allocObject();
          *(v171 + 16) = *&v280[8];
          sub_1007BECAC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v172 = v282;
          v173 = dispatch thunk of CustomStringConvertible.description.getter();
          *(v171 + 56) = &type metadata for String;
          *(v171 + 64) = v50;
          *(v171 + 32) = v173;
          *(v171 + 40) = v174;
          os_log(_:dso:log:_:_:)(v170, &_mh_execute_header, v52, "Could not find beacon/group for given UUID - %@", 47, 2, v171);

          sub_10025ED18();
          swift_allocError();
          *v175 = 0;
          v176 = _convertErrorToNSError(_:)();
          v177 = v285;
          (v285)[2](v285, v176);

          (*(v283 + 8))(v165, v172);
          goto LABEL_111;
        }
      }

      v178 = v264;
      sub_100ABD87C(v264);
      v179 = v275;
      if ((*(v273 + 48))(v178, 1, v275) == 1)
      {
        sub_10000B3A8(v178, &unk_1016A99E0, &qword_1013A07B0);
LABEL_102:
        v177 = v285;
        _Block_copy(v285);
        sub_1008B55B0(v165, v157, v177);
        _Block_release(v177);

        (*(v283 + 8))(v165, v282);
        goto LABEL_111;
      }

      v180 = v262;
      sub_1007BF0D4(v178, v262, type metadata accessor for LostModeRecord);
      v181 = v180 + v179[9];
      v182 = *(v181 + 8);
      if (v182)
      {
        if (!v115 || (*v181 != v281 || v182 != v115) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_101;
        }
      }

      else if (v115)
      {
        goto LABEL_101;
      }

      v221 = (v180 + v179[8]);
      v222 = v221[1];
      if (v222)
      {
        if (!v152 || (*v221 != *v280 || v222 != v152) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_101;
        }
      }

      else if (v152)
      {
        goto LABEL_101;
      }

      v223 = (v180 + v179[7]);
      v224 = v223[1];
      if (v224)
      {
        if (v156 && (*v223 == v277 && v224 == v156 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
        {
          goto LABEL_92;
        }
      }

      else if (!v156)
      {
LABEL_92:
        v225 = static os_log_type_t.default.getter();
        os_log(_:dso:log:_:_:)(v225, &_mh_execute_header, v159, "Lost mode info has not changed. Nothing to do.", 46, 2, _swiftEmptyArrayStorage);
        v177 = v285;
        v285[2](v285, 0);

        (*(v283 + 8))(v165, v282);
        sub_1007BF158(v180, type metadata accessor for LostModeRecord);
        goto LABEL_111;
      }

LABEL_101:
      sub_1007BF158(v180, type metadata accessor for LostModeRecord);
      goto LABEL_102;
    case 7uLL:
      sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
      v140 = v283;
      v141 = v53;
      v142 = (*(v283 + 80) + 32) & ~*(v283 + 80);
      v143 = swift_allocObject();
      *(v143 + 16) = xmmword_101385D80;
      v144 = [v141 beaconIdentifier];
      v145 = v281;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v140 + 32))(v143 + v142, v145, v282);
      v100.super.isa = Array._bridgeToObjectiveC()().super.isa;

      v146 = swift_allocObject();
      v147 = v284;
      *(v146 + 16) = sub_10026AE30;
      *(v146 + 24) = v147;
      v292 = sub_1007BEC80;
      v293 = v146;
      aBlock = _NSConcreteStackBlock;
      v289 = 1107296256;
      v290 = sub_1000D415C;
      v291 = &unk_101633418;
      v103 = _Block_copy(&aBlock);

      [*v280 enableSeparationMonitoringForBeacons:v100.super.isa completion:v103];
      goto LABEL_31;
    case 8uLL:
      sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
      v94 = v283;
      v95 = v53;
      v96 = (*(v283 + 80) + 32) & ~*(v283 + 80);
      v97 = swift_allocObject();
      *(v97 + 16) = xmmword_101385D80;
      v98 = [v95 beaconIdentifier];
      v99 = v281;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v94 + 32))(v97 + v96, v99, v282);
      v100.super.isa = Array._bridgeToObjectiveC()().super.isa;

      v101 = swift_allocObject();
      v102 = v284;
      *(v101 + 16) = sub_10026AE30;
      *(v101 + 24) = v102;
      v292 = sub_1007BF8DC;
      v293 = v101;
      aBlock = _NSConcreteStackBlock;
      v289 = 1107296256;
      v290 = sub_1000D415C;
      v291 = &unk_1016333C8;
      v103 = _Block_copy(&aBlock);

      [*v280 disableSeparationMonitoringForBeacons:v100.super.isa completion:v103];
LABEL_31:
      _Block_release(v103);

      goto LABEL_28;
    case 9uLL:
      sub_1000035D0((*v280 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(*v280 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
      v134 = [a1 identifier];
      v55 = v281;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v135 = [a1 beaconIdentifier];
      v57 = *&v280[8];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1004D04EC(v55, v57, sub_10026AE30, v284);
      goto LABEL_26;
    case 0xAuLL:
      v60 = [a1 beaconIdentifier];
      v61 = v281;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1004E1458(v61, sub_10026AE30, v284);
      (*(v283 + 8))(v61, v282);
      goto LABEL_27;
    case 0xBuLL:
      v83 = [a1 obfuscatedIdentifier];
      if (v83)
      {
        v84 = v83;
        v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v87 = v86;

        v88 = static os_log_type_t.default.getter();
        v89 = swift_allocObject();
        *(v89 + 16) = xmmword_101385D80;
        *(v89 + 56) = &type metadata for String;
        *(v89 + 64) = v50;
        *(v89 + 32) = v85;
        *(v89 + 40) = v87;
        os_log(_:dso:log:_:_:)(v88, &_mh_execute_header, v43, "#Durian: Command setObfuscated identifier: %@", 45, 2, v89);

        sub_1003FD838();
LABEL_11:
        swift_allocError();
        *v90 = 1;
      }

      else
      {
        sub_1007BEBB0();
        swift_allocError();
        *v148 = 0;
      }

      v91 = _convertErrorToNSError(_:)();
      v92 = v285;
      (v285)[2](v285, v91);

      _Block_release(v92);
      _Block_release(v92);
      v93 = v92;
      goto LABEL_29;
    case 0xCuLL:
      sub_1000035D0((*v280 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(*v280 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
      v126 = [a1 identifier];
      v55 = v281;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v127 = [a1 beaconIdentifier];
      v57 = *&v280[8];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1004D027C(v55);
      goto LABEL_26;
    case 0xDuLL:
      sub_1000035D0((*v280 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(*v280 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
      v58 = [a1 identifier];
      v55 = v281;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v59 = [a1 beaconIdentifier];
      v57 = *&v280[8];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1004D0B20(v55, v57, sub_10026AE30, v284);
      goto LABEL_26;
    case 0xEuLL:
      v106 = [a1 identifier];
      v55 = v281;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v107 = [a1 beaconIdentifier];
      v57 = *&v280[8];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1004E0A98(v55, v57, sub_10026AE30, v284);
      goto LABEL_26;
    case 0xFuLL:
      v54 = [a1 identifier];
      v55 = v281;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v56 = [a1 beaconIdentifier];
      v57 = *&v280[8];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1004E0F78(v55, v57, sub_10026AE30, v284);
LABEL_26:
      v136 = *(v283 + 8);
      v137 = v57;
      v138 = v282;
      v136(v137, v282);
      v136(v55, v138);
LABEL_27:

LABEL_28:
      v139 = v285;
      _Block_release(v285);
      _Block_release(v139);
      v93 = v139;
      goto LABEL_29;
    default:
      sub_1007BEBB0();
      goto LABEL_11;
  }
}

uint64_t sub_1007BE080(uint64_t a1, unint64_t a2, int a3, const void *a4)
{
  v26 = a3;
  v7 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v7 - 8);
  v9 = &v25[-v8];
  v10 = type metadata accessor for MACAddress();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v16 = &v25[-v15];
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  _Block_copy(a4);
  sub_100017D5C(a1, a2);
  MACAddress.init(dataRepresentation:)();
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1007BF8E0;
  *(v18 + 24) = v17;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  (*(v11 + 16))(v14, v16, v10);
  v20 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v21 = swift_allocObject();
  v22 = v26 & 1;
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = v22;
  (*(v11 + 32))(v21 + v20, v14, v10);
  v23 = (v21 + ((v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = sub_1007BE840;
  v23[1] = v18;

  sub_10025EDD4(0, 0, v9, &unk_1013BB9B8, v21);

  (*(v11 + 8))(v16, v10);
}

uint64_t sub_1007BE3B4(uint64_t a1, unint64_t a2, int a3, const void *a4)
{
  v26 = a3;
  v7 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v7 - 8);
  v9 = &v25[-v8];
  v10 = type metadata accessor for MACAddress();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v16 = &v25[-v15];
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  _Block_copy(a4);
  sub_100017D5C(a1, a2);
  MACAddress.init(dataRepresentation:)();
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1007BF8E0;
  *(v18 + 24) = v17;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  (*(v11 + 16))(v14, v16, v10);
  v20 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v21 = swift_allocObject();
  v22 = v26 & 1;
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = v22;
  (*(v11 + 32))(v21 + v20, v14, v10);
  v23 = (v21 + ((v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = sub_1007BE6E8;
  v23[1] = v18;

  sub_10025EDD4(0, 0, v9, &unk_1013BB9B0, v21);

  (*(v11 + 8))(v16, v10);
}

uint64_t sub_1007BE704(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for MACAddress() - 8);
  v6 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100014744;

  return sub_1006D80FC(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1007BE85C()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_1007BE938(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for MACAddress() - 8);
  v6 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100014744;

  return sub_1006D7EB4(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1007BEA80(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014744;

  return sub_1006D6324(a1, v6, v7, v1 + v5, v9, v10);
}

unint64_t sub_1007BEBB0()
{
  result = qword_1016A9A00;
  if (!qword_1016A9A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9A00);
  }

  return result;
}

uint64_t sub_1007BEC04(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 112);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  v7 = *(a1 + 80);
  v8 = *(a1 + 96);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v5;
  *(a2 + 64) = v6;
  *(a2 + 80) = v7;
  *(a2 + 96) = v8;
  *(a2 + 112) = v4;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1007BECAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1007BECF4(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v5 + v6) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 8) & ~v4;
  v10 = *(v1 + 24);
  v16 = *(v1 + 16);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v9 + v6) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_100014744;

  return sub_1004C7264(a1, v16, v10, v1 + v5, v11, v12, v1 + v9, v13);
}

uint64_t sub_1007BEE9C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_1007B6124(v2, v3, v5, v4);
}

uint64_t sub_1007BEF6C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64) + 7;
  v6 = (v3 + ((((v5 + v4) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v3;
  v7 = (((v5 + v6) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v8 = *(v2 + 8);
  v8(v0 + v4, v1);

  v8(v0 + v6, v1);

  return _swift_deallocObject(v0, v7 + 8);
}

uint64_t sub_1007BF0D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1007BF158(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1007BF1B8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for Date() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + v7);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = (v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_100014744;

  return sub_1004D2ECC(a1, v11, v12, v1 + v6, v10, v1 + v9, v14, v15);
}

uint64_t sub_1007BF380(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_100016590(a1, a2);
  }
}

uint64_t sub_1007BF394()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_1007B2A34(v2, v3, v5, v4);
}

uint64_t sub_1007BF448()
{
  v2 = *(type metadata accessor for MACAddress() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100014650;

  return sub_10069A6D8(v0 + v3, v5, v6);
}

uint64_t sub_1007BF554()
{
  v2 = *(type metadata accessor for MACAddress() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v0 + v4);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + v5);
  v10 = *(v0 + v5 + 8);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_100014744;

  return sub_100699CD8(v0 + v3, v7, v8, v9, v10);
}

uint64_t sub_1007BF688()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_1007B23F8(v2, v3, v4);
}

uint64_t sub_1007BF73C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_101026390(a1, v4, v5, v6);
}

unint64_t sub_1007BF824()
{
  result = qword_1016A9A80;
  if (!qword_1016A9A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9A80);
  }

  return result;
}

unint64_t sub_1007BF87C()
{
  result = qword_1016A9A88;
  if (!qword_1016A9A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9A88);
  }

  return result;
}

uint64_t *sub_1007BF8F0()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  return &qword_10177B348;
}

void *sub_1007BF940()
{
  v0 = type metadata accessor for URL();
  __chkstk_darwin(v0 - 8);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100F4CE88();
  type metadata accessor for ConfigurationCoordinator(0);
  swift_allocObject();
  result = sub_10013EB00(v2);
  qword_10177B348 = result;
  return result;
}

uint64_t sub_1007BF9D4()
{
  sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
  OS_dispatch_queue.sync<A>(execute:)();
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();
  URLComponents.path.setter();
  v0 = URLComponents.path.modify();
  v1._countAndFlagsBits = 0x6F666E6974752FLL;
  v1._object = 0xE700000000000000;
  String.append(_:)(v1);
  return v0(&v3, 0);
}

uint64_t sub_1007BFADC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7354746E657665;
  }

  else
  {
    v3 = 0x746E657665;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x7354746E657665;
  }

  else
  {
    v5 = 0x746E657665;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1007BFB80()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1007BFC00(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1007BFC6C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1007BFCF4(uint64_t *a1@<X8>)
{
  v2 = 0x746E657665;
  if (*v1)
  {
    v2 = 0x7354746E657665;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1007BFD30()
{
  if (*v0)
  {
    return 0x7354746E657665;
  }

  else
  {
    return 0x746E657665;
  }
}

uint64_t sub_1007BFD68@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_10160A0B0, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_1007BFDCC(uint64_t a1)
{
  v2 = sub_1007C3238();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007BFE08(uint64_t a1)
{
  v2 = sub_1007C3238();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007BFE44(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016A9C10, &qword_1013BBEC0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000035D0(a1, a1[3]);
  sub_1007C3238();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for UTInfoPublishRequestBody.State(0);
    v8[14] = 1;
    type metadata accessor for Date();
    sub_1007C3394(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1007BFFFC(void *a1, unint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5)
{
  v20 = a5;
  v17 = a4;
  v9 = sub_1000BC4D4(&qword_1016A9CE0, &qword_1013BC4E8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - v11;
  sub_1000035D0(a1, a1[3]);
  sub_1007C3B7C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v18) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v5)
  {
    v13 = a3;
    v14 = v17;
    LOBYTE(v18) = BYTE1(a2);
    v21 = 1;
    sub_1007C3BD0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v18) = BYTE2(a2);
    v21 = 2;
    sub_1007C3C24();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v18) = BYTE3(a2);
    v21 = 3;
    sub_1003091D4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v18) = 4;
    v21 = BYTE5(a2) & 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = v13;
    v19 = v14;
    v21 = 5;
    sub_10002E98C(v13, v14);
    sub_1000E3190();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v18, v19);
    LOBYTE(v18) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1007C02C8(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016A9C20, &qword_1013BBEC8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_1007C328C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[0] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    *v11 = *(v3 + 16);
    v10[0] = 1;
    sub_1000BC4D4(&qword_1016A9C30, &qword_1013BBED0);
    sub_1007C32E0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11[0] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12[0] = *(v3 + 40);
    *(v12 + 9) = *(v3 + 49);
    *v11 = *(v3 + 40);
    *&v11[9] = *(v3 + 49);
    v10[31] = 3;
    sub_1007C33DC(v12, v10);
    sub_1007C344C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1007C34A0(*v11, *&v11[8], *&v11[16]);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1007C04F4(void *a1, char a2, uint64_t a3)
{
  v7 = sub_1000BC4D4(&qword_1016A9BE0, &qword_1013BBEB0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_1000035D0(a1, a1[3]);
  sub_1007C30B8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v14 = 0;
  sub_1007C310C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v12[1] = a3;
    v13 = 1;
    sub_1000BC4D4(&qword_1016A9BF8, &qword_1013BBEB8);
    sub_1007C3160();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1007C06B8(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 1802661751;
  }

  else
  {
    v2 = 1701670760;
  }

  if (*a2)
  {
    v3 = 1802661751;
  }

  else
  {
    v3 = 1701670760;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_1007C0730()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1007C0798(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1007C07E4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1007C0854(uint64_t *a1@<X8>)
{
  v2 = 1701670760;
  if (*v1)
  {
    v2 = 1802661751;
  }

  *a1 = v2;
  a1[1] = 0xE400000000000000;
}

Swift::Int sub_1007C08D8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1007C09A0(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1007C0A54(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1007C0B18@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1007C18D0(*a1);
  *a2 = result;
  return result;
}

void sub_1007C0B48(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x676E696B6C6177;
  v4 = 0xE700000000000000;
  v5 = 0x676E6976697264;
  if (*v1 != 2)
  {
    v5 = 0x616E6F6974617473;
    v4 = 0xEA00000000007972;
  }

  if (*v1)
  {
    v3 = 0x676E696C637963;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1007C0C1C()
{
  v1 = *v0;
  v2 = 0x6E6F437261435462;
  v3 = 0x657264644163616DLL;
  if (v1 != 5)
  {
    v3 = 0x6E72657478457369;
  }

  v4 = 0x7954656369766564;
  if (v1 != 3)
  {
    v4 = 0x496B726F7774656ELL;
  }

  if (*v0 > 4u)
  {
    v4 = v3;
  }

  v5 = 0xD000000000000011;
  if (v1 != 1)
  {
    v5 = 0x74536E6F69746F6DLL;
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

uint64_t sub_1007C0D20@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1007C191C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1007C0D48(uint64_t a1)
{
  v2 = sub_1007C3B7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007C0D84(uint64_t a1)
{
  v2 = sub_1007C3B7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007C0E08()
{
  v1 = 1953916001;
  v2 = 0x7069726373627573;
  if (*v0 != 2)
  {
    v2 = 0x787443746E657665;
  }

  if (*v0)
  {
    v1 = 0x6574617473;
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

uint64_t sub_1007C0E84@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1007C1B88(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1007C0EAC(uint64_t a1)
{
  v2 = sub_1007C328C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007C0EE8(uint64_t a1)
{
  v2 = sub_1007C328C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007C0F60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6572616853736168 && a2 == 0xEE00736D65744964)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1007C0FF0(uint64_t a1)
{
  v2 = sub_1007C3B28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007C102C(uint64_t a1)
{
  v2 = sub_1007C3B28();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007C1068(void *a1)
{
  v2 = sub_1000BC4D4(&qword_1016A9CD0, &qword_1013BC4E0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_1000035D0(a1, a1[3]);
  sub_1007C3B28();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1007C11A0()
{
  if (*v0)
  {
    return 7562345;
  }

  else
  {
    return 0x7443746E65696C63;
  }
}

uint64_t sub_1007C11D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7443746E65696C63 && a2 == 0xE900000000000078;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7562345 && a2 == 0xE300000000000000)
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

uint64_t sub_1007C12BC(uint64_t a1)
{
  v2 = sub_1007C30B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007C12F8(uint64_t a1)
{
  v2 = sub_1007C30B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007C1354(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x657669746361;
  }

  else
  {
    v3 = 0x7472656E69;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x657669746361;
  }

  else
  {
    v5 = 0x7472656E69;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1007C13F4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1007C1470(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1007C14D8(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1007C155C@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, char *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_1007C15B8(uint64_t *a1@<X8>)
{
  v2 = 0x7472656E69;
  if (*v1)
  {
    v2 = 0x657669746361;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1007C1650()
{
  v1 = 1953916001;
  if (*v0 != 1)
  {
    v1 = 0x746C75736572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7069726373627573;
  }
}

uint64_t sub_1007C16AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1007C1CF0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1007C16D4(uint64_t a1)
{
  v2 = sub_1007C3A80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007C1710(uint64_t a1)
{
  v2 = sub_1007C3A80();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1007C174C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1007C1E0C(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1007C17A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7562345 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1007C182C(uint64_t a1)
{
  v2 = sub_1007C2F8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007C1868(uint64_t a1)
{
  v2 = sub_1007C2F8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1007C18A4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1007C206C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1007C18D0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10160A150, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1007C191C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F437261435462 && a2 == 0xEE0064657463656ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001013607B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74536E6F69746F6DLL && a2 == 0xEB00000000657461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7954656369766564 && a2 == 0xEA00000000006570 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x496B726F7774656ELL && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x657264644163616DLL && a2 == 0xEA00000000007373 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E72657478457369 && a2 == 0xEA00000000006C61)
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

uint64_t sub_1007C1B88(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1953916001 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7069726373627573 && a2 == 0xEE0064496E6F6974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x787443746E657665 && a2 == 0xE800000000000000)
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

uint64_t sub_1007C1CF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7069726373627573 && a2 == 0xEE0064496E6F6974;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1953916001 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
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

uint64_t sub_1007C1E0C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016A9CB8, &qword_1013BC4D8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_1007C3A80();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v23 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v19 = v9;
  v22 = 1;
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  v18 = v12;
  v20 = 2;
  sub_1007C3AD4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v13 = v21;
  result = sub_100007BAC(a1);
  *a2 = v19;
  *(a2 + 8) = v11;
  v15 = v18;
  *(a2 + 16) = v17;
  *(a2 + 24) = v15;
  *(a2 + 32) = v13;
  return result;
}

void *sub_1007C206C(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016A9BB8, &qword_1013BBEA0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_1000035D0(a1, a1[3]);
  sub_1007C2F8C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_1000BC4D4(&qword_1016A9BC8, &qword_1013BBEA8);
    sub_1007C2FE0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_100007BAC(a1);
  }

  return v7;
}

uint64_t sub_1007C21F0(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 200) = a2;
  *(v3 + 208) = a3;
  *(v3 + 384) = a1;
  v4 = type metadata accessor for HashAlgorithm();
  *(v3 + 216) = v4;
  *(v3 + 224) = *(v4 - 8);
  *(v3 + 232) = swift_task_alloc();
  v5 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  *(v3 + 240) = v5;
  *(v3 + 248) = *(v5 - 8);
  *(v3 + 256) = swift_task_alloc();
  v6 = type metadata accessor for TimeZone();
  *(v3 + 264) = v6;
  *(v3 + 272) = *(v6 - 8);
  *(v3 + 280) = swift_task_alloc();
  v7 = type metadata accessor for Date();
  *(v3 + 288) = v7;
  *(v3 + 296) = *(v7 - 8);
  *(v3 + 304) = swift_task_alloc();

  return _swift_task_switch(sub_1007C23C8, 0, 0);
}

uint64_t sub_1007C23C8()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);
  v3 = *(v0 + 280);
  v4 = *(v0 + 288);
  v29 = *(v0 + 272);
  v30 = *(v0 + 264);
  v31 = *(v0 + 256);
  v32 = *(v0 + 248);
  v33 = *(v0 + 240);
  v35 = *(v0 + 200);
  v34 = *(v0 + 384);
  sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
  inited = swift_initStackObject();
  *(inited + 32) = 0x747065636341;
  *(inited + 16) = xmmword_101391790;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = 0xD000000000000010;
  *(inited + 56) = 0x800000010134F5C0;
  strcpy((inited + 64), "content-type");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x800000010134F5C0;
  *(inited + 96) = 0xD000000000000015;
  *(inited + 104) = 0x8000000101360770;
  Date.init()();
  v6 = Date.epoch.getter();
  v7 = *(v1 + 8);
  v7(v2, v4);
  *(v0 + 192) = v6;
  *(inited + 112) = dispatch thunk of CustomStringConvertible.description.getter();
  *(inited + 120) = v8;
  *(inited + 128) = 0xD000000000000012;
  *(inited + 136) = 0x8000000101360790;
  static TimeZone.current.getter();
  Date.init()();
  v9 = TimeZone.abbreviation(for:)();
  v11 = v10;
  v7(v2, v4);
  (*(v29 + 8))(v3, v30);
  if (v11)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  v13 = 0xE000000000000000;
  if (v11)
  {
    v13 = v11;
  }

  *(inited + 144) = v12;
  *(inited + 152) = v13;
  v14 = sub_100907E70(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
  swift_arrayDestroy();
  v15 = sub_100EB2DF0();
  v17 = v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v15, v17, 0x6567412D72657355, 0xEA0000000000746ELL, isUniquelyReferenced_nonNull_native);
  *(v0 + 312) = v14;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  *(v0 + 320) = JSONEncoder.init()();
  *v31 = sub_100281AE0;
  v31[1] = 0;
  (*(v32 + 104))(v31, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v33);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  *(v0 + 176) = v34;
  *(v0 + 184) = v35;
  sub_1007C2CFC();
  *(v0 + 328) = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 336) = v19;
  v21 = *(v0 + 224);
  v20 = *(v0 + 232);
  v22 = *(v0 + 216);

  (*(v21 + 104))(v20, enum case for HashAlgorithm.sha256(_:), v22);
  v23 = Data.hash(algorithm:)();
  v25 = v24;
  *(v0 + 344) = v23;
  *(v0 + 352) = v24;
  (*(v21 + 8))(v20, v22);
  v26 = swift_task_alloc();
  *(v0 + 360) = v26;
  *v26 = v0;
  v26[1] = sub_1007C2864;
  v27 = *(v0 + 208);

  return sub_100EA87F4(v23, v25, v27);
}

uint64_t sub_1007C2864(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 368) = v1;

  if (v1)
  {
    v5 = sub_1007C2AC8;
  }

  else
  {
    v6 = v4[43];
    v7 = v4[44];
    v4[47] = a1;
    sub_100016590(v6, v7);
    v5 = sub_1007C2994;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1007C2994()
{
  v12 = v0;
  v1 = v0[47];
  v2 = v0[39];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = v2;
  sub_10028709C(v1, sub_100EB00A4, 0, isUniquelyReferenced_nonNull_native, &v11);

  v4 = v11;
  v6 = v0[41];
  v5 = v0[42];

  sub_100017D5C(v6, v5);

  sub_100016590(v6, v5);

  v7 = v0[1];
  v8 = v0[41];
  v9 = v0[42];

  return v7(v4, v8, v9);
}

uint64_t sub_1007C2AC8()
{
  sub_100016590(v0[43], v0[44]);
  if (qword_101695010 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C348);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to generate utInfo attestation header: %{public}@.", v4, 0xCu);
    sub_100288C6C(v5);
  }

  else
  {
  }

  v7 = v0[41];
  v8 = v0[42];
  v9 = v0[39];

  sub_100017D5C(v7, v8);

  sub_100016590(v7, v8);

  v10 = v0[1];
  v11 = v0[41];
  v12 = v0[42];

  return v10(v9, v11, v12);
}

unint64_t sub_1007C2CFC()
{
  result = qword_1016A9A90;
  if (!qword_1016A9A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9A90);
  }

  return result;
}

uint64_t sub_1007C2D98(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1007C2E14(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    v2 = ((v1 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v2 = -2;
  }

  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 sub_1007C2E44(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1007C2E68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1007C2EB0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1007C2F8C()
{
  result = qword_1016A9BC0;
  if (!qword_1016A9BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9BC0);
  }

  return result;
}

unint64_t sub_1007C2FE0()
{
  result = qword_1016A9BD0;
  if (!qword_1016A9BD0)
  {
    sub_1000BC580(&qword_1016A9BC8, &qword_1013BBEA8);
    sub_1007C3064();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9BD0);
  }

  return result;
}

unint64_t sub_1007C3064()
{
  result = qword_1016A9BD8;
  if (!qword_1016A9BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9BD8);
  }

  return result;
}

unint64_t sub_1007C30B8()
{
  result = qword_1016A9BE8;
  if (!qword_1016A9BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9BE8);
  }

  return result;
}

unint64_t sub_1007C310C()
{
  result = qword_1016A9BF0;
  if (!qword_1016A9BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9BF0);
  }

  return result;
}

unint64_t sub_1007C3160()
{
  result = qword_1016A9C00;
  if (!qword_1016A9C00)
  {
    sub_1000BC580(&qword_1016A9BF8, &qword_1013BBEB8);
    sub_1007C31E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9C00);
  }

  return result;
}

unint64_t sub_1007C31E4()
{
  result = qword_1016A9C08;
  if (!qword_1016A9C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9C08);
  }

  return result;
}

unint64_t sub_1007C3238()
{
  result = qword_1016A9C18;
  if (!qword_1016A9C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9C18);
  }

  return result;
}

unint64_t sub_1007C328C()
{
  result = qword_1016A9C28;
  if (!qword_1016A9C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9C28);
  }

  return result;
}

unint64_t sub_1007C32E0()
{
  result = qword_1016A9C38;
  if (!qword_1016A9C38)
  {
    sub_1000BC580(&qword_1016A9C30, &qword_1013BBED0);
    sub_1007C3394(&qword_1016A9C40, type metadata accessor for UTInfoPublishRequestBody.State, &unk_1013BBDA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9C38);
  }

  return result;
}

uint64_t sub_1007C3394(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1007C33DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A9C48, &qword_1013BBED8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1007C344C()
{
  result = qword_1016A9C50;
  if (!qword_1016A9C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9C50);
  }

  return result;
}

uint64_t sub_1007C34A0(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result != 3)
  {
    return sub_100006654(a2, a3);
  }

  return result;
}

uint64_t sub_1007C34FC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[25])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1007C355C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1007C35C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1007C360C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1007C3664()
{
  result = qword_1016A9C58;
  if (!qword_1016A9C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9C58);
  }

  return result;
}

unint64_t sub_1007C36BC()
{
  result = qword_1016A9C60;
  if (!qword_1016A9C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9C60);
  }

  return result;
}

unint64_t sub_1007C3714()
{
  result = qword_1016A9C68;
  if (!qword_1016A9C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9C68);
  }

  return result;
}

unint64_t sub_1007C376C()
{
  result = qword_1016A9C70;
  if (!qword_1016A9C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9C70);
  }

  return result;
}

unint64_t sub_1007C37C4()
{
  result = qword_1016A9C78;
  if (!qword_1016A9C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9C78);
  }

  return result;
}

unint64_t sub_1007C381C()
{
  result = qword_1016A9C80;
  if (!qword_1016A9C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9C80);
  }

  return result;
}

unint64_t sub_1007C3874()
{
  result = qword_1016A9C88;
  if (!qword_1016A9C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9C88);
  }

  return result;
}

unint64_t sub_1007C38CC()
{
  result = qword_1016A9C90;
  if (!qword_1016A9C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9C90);
  }

  return result;
}

unint64_t sub_1007C3924()
{
  result = qword_1016A9C98;
  if (!qword_1016A9C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9C98);
  }

  return result;
}

unint64_t sub_1007C397C()
{
  result = qword_1016A9CA0;
  if (!qword_1016A9CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9CA0);
  }

  return result;
}

unint64_t sub_1007C39D4()
{
  result = qword_1016A9CA8;
  if (!qword_1016A9CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9CA8);
  }

  return result;
}

unint64_t sub_1007C3A2C()
{
  result = qword_1016A9CB0;
  if (!qword_1016A9CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9CB0);
  }

  return result;
}

unint64_t sub_1007C3A80()
{
  result = qword_1016A9CC0;
  if (!qword_1016A9CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9CC0);
  }

  return result;
}

unint64_t sub_1007C3AD4()
{
  result = qword_1016A9CC8;
  if (!qword_1016A9CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9CC8);
  }

  return result;
}

unint64_t sub_1007C3B28()
{
  result = qword_1016A9CD8;
  if (!qword_1016A9CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9CD8);
  }

  return result;
}

unint64_t sub_1007C3B7C()
{
  result = qword_1016A9CE8;
  if (!qword_1016A9CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9CE8);
  }

  return result;
}

unint64_t sub_1007C3BD0()
{
  result = qword_1016A9CF0;
  if (!qword_1016A9CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9CF0);
  }

  return result;
}

unint64_t sub_1007C3C24()
{
  result = qword_1016A9CF8;
  if (!qword_1016A9CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9CF8);
  }

  return result;
}

unint64_t sub_1007C3CDC()
{
  result = qword_1016A9D00;
  if (!qword_1016A9D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9D00);
  }

  return result;
}

unint64_t sub_1007C3D34()
{
  result = qword_1016A9D08;
  if (!qword_1016A9D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9D08);
  }

  return result;
}

unint64_t sub_1007C3D8C()
{
  result = qword_1016A9D10;
  if (!qword_1016A9D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9D10);
  }

  return result;
}

unint64_t sub_1007C3DE4()
{
  result = qword_1016A9D18;
  if (!qword_1016A9D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9D18);
  }

  return result;
}

unint64_t sub_1007C3E3C()
{
  result = qword_1016A9D20;
  if (!qword_1016A9D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9D20);
  }

  return result;
}

unint64_t sub_1007C3E94()
{
  result = qword_1016A9D28;
  if (!qword_1016A9D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9D28);
  }

  return result;
}

unint64_t sub_1007C3EEC()
{
  result = qword_1016A9D30;
  if (!qword_1016A9D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9D30);
  }

  return result;
}

unint64_t sub_1007C3F44()
{
  result = qword_1016A9D38;
  if (!qword_1016A9D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9D38);
  }

  return result;
}

unint64_t sub_1007C3F9C()
{
  result = qword_1016A9D40;
  if (!qword_1016A9D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9D40);
  }

  return result;
}

unint64_t sub_1007C3FF4()
{
  result = qword_1016A9D48;
  if (!qword_1016A9D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9D48);
  }

  return result;
}

unint64_t sub_1007C404C()
{
  result = qword_1016A9D50;
  if (!qword_1016A9D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9D50);
  }

  return result;
}

unint64_t sub_1007C40A4()
{
  result = qword_1016A9D58;
  if (!qword_1016A9D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9D58);
  }

  return result;
}

unint64_t sub_1007C40F8()
{
  result = qword_1016A9D60;
  if (!qword_1016A9D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9D60);
  }

  return result;
}

unint64_t sub_1007C414C()
{
  result = qword_1016A9D68;
  if (!qword_1016A9D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9D68);
  }

  return result;
}

unint64_t sub_1007C41A0()
{
  result = qword_1016A9D70;
  if (!qword_1016A9D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9D70);
  }

  return result;
}

uint64_t ConnectionPair.__allocating_init(_:readonly:key:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = swift_allocObject();
  ConnectionPair.init(_:readonly:key:)(a1, v6, a3, a4);
  return v8;
}

uint64_t ConnectionPair.init(_:readonly:key:)(uint64_t a1, int a2, uint64_t a3, unint64_t a4)
{
  v42 = a3;
  v45 = a4;
  LODWORD(v40) = a2;
  v47 = type metadata accessor for URL();
  v5 = *(v47 - 8);
  v6 = __chkstk_darwin(v47);
  v39 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v39 - v9;
  __chkstk_darwin(v8);
  v46 = &v39 - v11;
  v12 = type metadata accessor for Connection.Location();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v39 - v17;
  v19 = *(v13 + 16);
  v43 = a1;
  v19(&v39 - v17, a1, v12);
  v20 = (*(v13 + 88))(v18, v12);
  if (v20 != enum case for Connection.Location.uri(_:))
  {
    v31 = v41;
    v30 = v42;
    if (v20 != enum case for Connection.Location.inMemory(_:) && v20 != enum case for Connection.Location.temporary(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    v33 = v43;
    v19(v16, v43, v12);
    type metadata accessor for Connection();
    swift_allocObject();
    v34 = Connection.init(_:readonly:)();
    if (v31)
    {
      sub_100006654(v30, v45);
      (*(v13 + 8))(v33, v12);
      v29 = v44;
      goto LABEL_12;
    }

    v29 = v44;
    *(v44 + 16) = v34;
    *(v29 + 24) = v34;

LABEL_14:

    Connection.busyTimeout.setter();

    Connection.busyTimeout.setter();
    sub_100006654(v30, v45);
    (*(v13 + 8))(v33, v12);
    return v29;
  }

  (*(v13 + 96))(v18, v12);
  v21 = v46;
  URL.init(fileURLWithPath:)();

  v22 = type metadata accessor for Connection();
  v23 = *(v5 + 16);
  v23(v10, v21, v47);
  v24 = v42;
  v25 = v45;
  sub_10002E98C(v42, v45);
  v26 = v40 & 1;
  v40 = v22;
  v27 = v41;
  v28 = Connection.init(_:readonly:key:)(v10, v26, v24, v25);
  if (!v27)
  {
    v41 = v5;
    v35 = v24;
    v29 = v44;
    *(v44 + 24) = v28;
    v36 = v39;
    v23(v39, v46, v47);
    sub_10002E98C(v35, v25);
    v37 = Connection.init(_:readonly:key:)(v36, 1, v35, v25);
    v30 = v35;
    (*(v41 + 8))(v46, v47);
    *(v29 + 16) = v37;
    v33 = v43;
    goto LABEL_14;
  }

  sub_100006654(v24, v25);
  (*(v13 + 8))(v43, v12);
  (*(v5 + 8))(v46, v47);
  v29 = v44;
LABEL_12:
  type metadata accessor for ConnectionPair();
  swift_deallocPartialClassInstance();
  return v29;
}

uint64_t ConnectionPair.deinit()
{

  return v0;
}

uint64_t ConnectionPair.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1007C4844()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B350);
  sub_1000076D4(v0, qword_10177B350);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1007C48B4()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  sub_1000BC4D4(&qword_1016A4720, &qword_1013B1060);
  sub_101074BC4(v1);

  result = AsyncKeyedThrottle.__allocating_init(throttleInterval:)();
  qword_1016A9E20 = result;
  return result;
}

uint64_t sub_1007C498C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();
  v2[8] = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for MemberSharingCircle(0);
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_1007C4B04, v1, 0);
}

uint64_t sub_1007C4B04()
{
  v18 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = *(v0 + 16);
  v3 = type metadata accessor for Logger();
  *(v0 + 120) = sub_1000076D4(v3, qword_10177A560);
  sub_1007D493C(v2, v1, type metadata accessor for MemberSharingCircle);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 112);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 141558275;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_1007D49A4(v7, type metadata accessor for MemberSharingCircle);
    v13 = sub_1000136BC(v10, v12, &v17);

    *(v8 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Initial keys downloading for circle %{private,mask.hash}s", v8, 0x16u);
    sub_100007BAC(v9);
  }

  else
  {

    sub_1007D49A4(v7, type metadata accessor for MemberSharingCircle);
  }

  v14 = *(v0 + 80);
  v15 = *(*(v0 + 24) + 152);
  *(v0 + 128) = v15;
  *(v0 + 176) = *(v14 + 20);

  return _swift_task_switch(sub_1007C4D7C, v15, 0);
}

uint64_t sub_1007C4D7C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  (*(v4 + 16))(v2, *(v0 + 16) + *(v0 + 176), v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v0 + 136) = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);

  v7 = swift_task_alloc();
  *(v0 + 144) = v7;
  *v7 = v0;
  v7[1] = sub_1007C4EE4;
  v9 = *(v0 + 64);
  v8 = *(v0 + 72);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_1007D4EAC, v6, v9);
}

uint64_t sub_1007C4EE4()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_1007C5010, v1, 0);
}

uint64_t sub_1007C5010()
{
  v23 = v0;
  v1 = v0[10];
  v2 = v0[9];
  if ((*(v0[11] + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &unk_101698BC0, &qword_10138C440);
LABEL_3:
    sub_1007D493C(v0[2], v0[12], type metadata accessor for MemberSharingCircle);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[12];
    if (v5)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v22 = v8;
      *v7 = 141558275;
      *(v7 + 4) = 1752392040;
      *(v7 + 12) = 2081;
      sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      v11 = v10;
      sub_1007D49A4(v6, type metadata accessor for MemberSharingCircle);
      v12 = sub_1000136BC(v9, v11, &v22);

      *(v7 + 14) = v12;
      _os_log_impl(&_mh_execute_header, v3, v4, "Skip keys download for %{private,mask.hash}s.\nShare has not been accepted yet.", v7, 0x16u);
      sub_100007BAC(v8);
    }

    else
    {

      sub_1007D49A4(v6, type metadata accessor for MemberSharingCircle);
    }

    v21 = v0[1];

    return v21();
  }

  v13 = v0[13];
  sub_1007D48B4(v2, v13, type metadata accessor for MemberSharingCircle);
  v14 = *(v13 + *(v1 + 40));
  v15 = v14 > 4;
  v16 = (1 << v14) & 0x16;
  if (v15 || v16 == 0)
  {
    sub_1007D49A4(v0[13], type metadata accessor for MemberSharingCircle);
    goto LABEL_3;
  }

  v18 = swift_task_alloc();
  v0[19] = v18;
  *v18 = v0;
  v18[1] = sub_1007C5378;
  v19 = v0[2];

  return sub_1007C7AC0(v19, 1);
}