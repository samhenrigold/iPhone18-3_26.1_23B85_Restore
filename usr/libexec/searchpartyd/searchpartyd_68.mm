id sub_100786378(unint64_t a1, void (*a2)(void), unint64_t a3)
{
  v4 = v3;
  v119 = a2;
  v120 = a3;
  v110 = *v3;
  v6 = type metadata accessor for WildModeTrackingLocation(0);
  v127 = *(v6 - 8);
  v128 = v6;
  __chkstk_darwin(v6);
  v8 = (&v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v10 = __chkstk_darwin(v9 - 8);
  v111 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v115 = &v107 - v12;
  v13 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v13 - 8);
  v118 = &v107 - v14;
  v15 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  __chkstk_darwin(v15 - 8);
  v123 = &v107 - v16;
  v17 = type metadata accessor for WildModeAssociationRecord(0);
  v116 = *(v17 - 8);
  v117 = v17;
  __chkstk_darwin(v17);
  v112 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_1000BC4D4(&qword_1016A9638, &qword_1013BB5C8);
  __chkstk_darwin(v113);
  v125 = &v107 - v19;
  v121 = sub_1000BC4D4(&qword_1016A9640, &qword_1013BB5D0);
  v20 = __chkstk_darwin(v121);
  v122 = &v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v124 = &v107 - v22;
  v23 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v24 = qword_10177C398;
  v25 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10138BBE0;
  v27 = *v4;
  v126 = v4;
  v129 = v27;
  sub_1000BC4D4(&qword_1016A94C0, &qword_1013BB4B8);
  v28 = String.init<A>(describing:)();
  v30 = v29;
  *(v26 + 56) = &type metadata for String;
  v31 = sub_100008C00();
  *(v26 + 32) = v28;
  *(v26 + 40) = v30;
  *(v26 + 96) = &type metadata for String;
  *(v26 + 104) = v31;
  v114 = v31;
  *(v26 + 64) = v31;
  *(v26 + 72) = 0xD000000000000039;
  *(v26 + 80) = 0x800000010135FC90;
  os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v24, "%{public}@: %{public}@", 22, 2, v26);

  v32 = static os_log_type_t.default.getter();
  if (qword_1016950B0 != -1)
  {
    swift_once();
  }

  v33 = qword_10177C3F8;
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_101385D80;
  v35 = a1 >> 62;
  if (a1 >> 62)
  {
    v36 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v36 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v34 + 56) = &type metadata for Int;
  *(v34 + 64) = &protocol witness table for Int;
  *(v34 + 32) = v36;
  os_log(_:dso:log:_:_:)(v32, &_mh_execute_header, v33, "received %d unauthorized tracking observation(s)", v107);

  result = [objc_opt_self() defaultWorkspace];
  if (!result)
  {
    goto LABEL_58;
  }

  v38 = result;
  v39 = String._bridgeToObjectiveC()();
  v40 = [v38 applicationIsInstalled:v39];

  if ((v40 & 1) == 0)
  {
    sub_10125E224();

    sub_100A8AF58();
  }

  if (v35)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_51;
    }

    v41 = *(a1 + 32);
  }

  v42 = v41;
  v43 = v124;
  sub_100783224(v41, v124);
  v44 = v122;
  sub_1000D2A70(v43, v122, &qword_1016A9640, &qword_1013BB5D0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v49 = v44;
    v50 = v125;
    sub_1000D2AD8(v49, v125, &qword_1016A9638, &qword_1013BB5C8);
    v51 = *(v50 + v113[24]);
    v52 = (v50 + v113[12]);
    v54 = *v52;
    v53 = v52[1];
    v108 = v54;
    v107 = v53;
    v55 = v113[16];
    v56 = v50 + v55;
    v57 = v115;
    sub_1000D2A70(v56, v115, &unk_101698C30, &unk_101392630);
    v58 = type metadata accessor for SharedBeaconRecord(0);
    v59 = *(v58 - 8);
    v60 = *(v59 + 48);
    v121 = v59 + 48;
    v61 = v60(v57, 1, v58);
    v109 = v33;
    v122 = v60;
    if (v61 == 1)
    {
      sub_10000B3A8(v57, &unk_101698C30, &unk_101392630);
      v62 = type metadata accessor for UUID();
      v63 = v118;
      (*(*(v62 - 8) + 56))(v118, 1, 1, v62);
    }

    else
    {
      v64 = v57;
      v65 = *(v58 + 20);
      v66 = type metadata accessor for UUID();
      v67 = v42;
      v68 = *(v66 - 8);
      v69 = v64 + v65;
      v63 = v118;
      (*(v68 + 16))(v118, v69, v66);
      sub_1007A810C(v64, type metadata accessor for SharedBeaconRecord);
      (*(v68 + 56))(v63, 0, 1, v66);
      v42 = v67;
    }

    v70 = v125;
    v71 = v63;
    sub_100793720(v125, v63, v123);
    v72 = v123;
    sub_10000B3A8(v71, &qword_1016980D0, &unk_10138F3B0);
    if ((*(v116 + 48))(v72, 1, v117) == 1)
    {
      sub_10000B3A8(v72, &unk_1016C7C90, &qword_1013BB4B0);
      sub_10079A248(v70, v108, v107, (v70 + v55), v42, v51, v119, v120);

      sub_10000B3A8(v124, &qword_1016A9640, &qword_1013BB5D0);
LABEL_54:
      v46 = &qword_1016A9638;
      v47 = &qword_1013BB5C8;
      v48 = v70;
      return sub_10000B3A8(v48, v46, v47);
    }

    v118 = v42;
    sub_1007A91C8(v72, v112, type metadata accessor for WildModeAssociationRecord);
    LODWORD(v123) = static os_log_type_t.default.getter();
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_10138B360;
    v74 = UUID.uuidString.getter();
    v75 = v114;
    *(v73 + 56) = &type metadata for String;
    *(v73 + 64) = v75;
    *(v73 + 32) = v74;
    *(v73 + 40) = v76;
    v77 = MACAddress.description.getter();
    *(v73 + 96) = &type metadata for String;
    *(v73 + 104) = v75;
    *(v73 + 72) = v77;
    *(v73 + 80) = v78;
    if (v51 <= 1)
    {
      v79 = v109;
      v80 = v122;
      if (v51)
      {
        v81 = 0xE600000000000000;
        v82 = 0x6E6169727564;
      }

      else
      {
        v81 = 0xE500000000000000;
        v82 = 0x656C707061;
      }
    }

    else
    {
      v79 = v109;
      v80 = v122;
      if (v51 == 2)
      {
        v81 = 0xE700000000000000;
        v82 = 0x6579656B776168;
      }

      else
      {
        if (v51 != 3)
        {
          v83 = v114;
          *(v73 + 136) = &type metadata for String;
          *(v73 + 144) = v83;
          v81 = 0xE000000000000000;
          *(v73 + 112) = 0;
          goto LABEL_34;
        }

        v81 = 0xE400000000000000;
        v82 = 1701602664;
      }
    }

    v84 = v114;
    *(v73 + 136) = &type metadata for String;
    *(v73 + 144) = v84;
    *(v73 + 112) = v82;
LABEL_34:
    *(v73 + 120) = v81;
    os_log(_:dso:log:_:_:)(v123, &_mh_execute_header, v79, "trigger: found UT record UUID %@ address %@. Type %@", 52, 2, v73);

    v85 = v111;
    sub_1000D2A70(v125 + v55, v111, &unk_101698C30, &unk_101392630);
    if (v80(v85, 1, v58) == 1)
    {
      sub_10000B3A8(v85, &unk_101698C30, &unk_101392630);
      v121 = 0;
      v122 = 0;
      v123 = 0;
    }

    else
    {
      v86 = (v85 + *(v58 + 28));
      v122 = *v86;
      v87 = *(v86 + 2);
      v121 = *(v86 + 1);
      v123 = v87;

      sub_1007A810C(v85, type metadata accessor for SharedBeaconRecord);
    }

    v25 = v126;
    v88 = [v118 observedLocations];
    sub_100008BB8(0, &qword_1016B27B0, SPObservationLocation_ptr);
    v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v35 >> 62))
    {
      v89 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v89)
      {
LABEL_39:
        v129 = _swiftEmptyArrayStorage;
        result = sub_101124B70(0, v89 & ~(v89 >> 63), 0);
        if ((v89 & 0x8000000000000000) == 0)
        {
          v90 = 0;
          v91 = v129;
          do
          {
            if ((v35 & 0xC000000000000001) != 0)
            {
              v92 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v92 = *(v35 + 8 * v90 + 32);
            }

            v93 = v92;
            [v92 latitude];
            v95 = v94;
            [v93 longitude];
            v97 = v96;
            [v93 horizontalAccuracy];
            v99 = v98;
            v100 = [v93 timestamp];
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            *v8 = v95;
            v8[1] = v97;
            v8[2] = v99;
            v129 = v91;
            v102 = v91[2];
            v101 = v91[3];
            if (v102 >= v101 >> 1)
            {
              sub_101124B70((v101 > 1), v102 + 1, 1);
              v91 = v129;
            }

            ++v90;
            v91[2] = v102 + 1;
            sub_1007A91C8(v8, v91 + ((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v102, type metadata accessor for WildModeTrackingLocation);
          }

          while (v89 != v90);

          v25 = v126;
          goto LABEL_53;
        }

        __break(1u);
LABEL_58:
        __break(1u);
        return result;
      }

LABEL_52:

      v91 = _swiftEmptyArrayStorage;
LABEL_53:
      v103 = swift_allocObject();
      swift_weakInit();
      v104 = v120;

      v105 = v112;
      v106 = v118;
      v70 = v125;
      sub_10079CDF4(v112, v118, v125, v122, v121, v123, v91, v25, v119, v104, v103, v110);

      sub_1007A810C(v105, type metadata accessor for WildModeAssociationRecord);
      sub_10000B3A8(v124, &qword_1016A9640, &qword_1013BB5D0);

      goto LABEL_54;
    }

LABEL_51:
    v89 = _CocoaArrayWrapper.endIndex.getter();
    if (v89)
    {
      goto LABEL_39;
    }

    goto LABEL_52;
  }

  v45 = *v44;
  swift_errorRetain();
  (v119)(v45);

  v46 = &qword_1016A9640;
  v47 = &qword_1013BB5D0;
  v48 = v43;
  return sub_10000B3A8(v48, v46, v47);
}

uint64_t sub_1007871F0(NSObject *a1, void (*a2)(void), uint64_t a3)
{
  v64 = a1;
  v62 = a2;
  v63 = a3;
  v3 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  __chkstk_darwin(v3 - 8);
  v5 = v57 - v4;
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v6 - 8);
  v60 = v57 - v7;
  v8 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  __chkstk_darwin(v8 - 8);
  v10 = v57 - v9;
  v11 = sub_1000BC4D4(&qword_1016A9638, &qword_1013BB5C8);
  v12 = __chkstk_darwin(v11);
  v14 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v57 - v15;
  v61 = sub_1000BC4D4(&qword_1016A9640, &qword_1013BB5D0);
  v17 = __chkstk_darwin(v61);
  v19 = (v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v21 = v57 - v20;
  if (qword_1016950D8 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_10177C430);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v58 = v10;
    v26 = v25;
    v27 = swift_slowAlloc();
    v57[1] = v27;
    *v26 = 136446466;
    v66 = v65;
    v67 = v27;
    type metadata accessor for UnauthorizedTracking();
    v59 = v16;

    v28 = String.init<A>(describing:)();
    v30 = v14;
    v31 = v5;
    v32 = v11;
    v33 = v21;
    v34 = v19;
    v35 = sub_1000136BC(v28, v29, &v67);
    v16 = v59;

    *(v26 + 4) = v35;
    v19 = v34;
    v21 = v33;
    v11 = v32;
    v5 = v31;
    v14 = v30;
    *(v26 + 12) = 2082;
    *(v26 + 14) = sub_1000136BC(0xD000000000000038, 0x800000010135FB30, &v67);
    _os_log_impl(&_mh_execute_header, v23, v24, "%{public}s: %{public}s", v26, 0x16u);
    swift_arrayDestroy();

    v10 = v58;
  }

  sub_100783224(v64, v21);
  sub_1000D2A70(v21, v19, &qword_1016A9640, &qword_1013BB5D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = *v19;
    swift_errorRetain();
    (v62)(v36);

    v37 = &qword_1016A9640;
    v38 = &qword_1013BB5D0;
    v39 = v21;
  }

  else
  {
    sub_1000D2AD8(v19, v16, &qword_1016A9638, &qword_1013BB5C8);
    v40 = v16[v11[24]];
    sub_1000D2A70(v16, v14, &qword_1016A9638, &qword_1013BB5C8);
    sub_100308D64(*&v14[v11[12]], *&v14[v11[12] + 8]);
    v41 = v11[16];

    sub_1000D2AD8(&v14[v41], v5, &unk_101698C30, &unk_101392630);
    v42 = type metadata accessor for SharedBeaconRecord(0);
    if ((*(*(v42 - 8) + 48))(v5, 1, v42) == 1)
    {
      v43 = type metadata accessor for MACAddress();
      (*(*(v43 - 8) + 8))(v14, v43);
      sub_10000B3A8(v5, &unk_101698C30, &unk_101392630);
      v44 = type metadata accessor for UUID();
      v45 = v60;
      (*(*(v44 - 8) + 56))(v60, 1, 1, v44);
    }

    else
    {
      v46 = *(v42 + 20);
      v47 = type metadata accessor for UUID();
      v48 = v5;
      v49 = *(v47 - 8);
      v50 = v48 + v46;
      v51 = v60;
      (*(v49 + 16))(v60, v50, v47);
      sub_1007A810C(v48, type metadata accessor for SharedBeaconRecord);
      v52 = v47;
      v45 = v51;
      (*(v49 + 56))(v51, 0, 1, v52);
      v53 = type metadata accessor for MACAddress();
      (*(*(v53 - 8) + 8))(v14, v53);
    }

    sub_100793720(v16, v45, v10);
    sub_10000B3A8(v45, &qword_1016980D0, &unk_10138F3B0);
    v54 = type metadata accessor for WildModeAssociationRecord(0);
    v55 = (*(*(v54 - 8) + 48))(v10, 1, v54);
    sub_10000B3A8(v10, &unk_1016C7C90, &qword_1013BB4B0);
    if (v55 == 1)
    {
      sub_10079A248(v16, *&v16[v11[12]], *&v16[v11[12] + 8], &v16[v11[16]], v64, v40, v62, v63);
    }

    else
    {
      sub_10078F774(v64, v62, v63);
    }

    sub_10000B3A8(v21, &qword_1016A9640, &qword_1013BB5D0);
    v37 = &qword_1016A9638;
    v38 = &qword_1013BB5C8;
    v39 = v16;
  }

  return sub_10000B3A8(v39, v37, v38);
}

uint64_t sub_10078798C(void (*a1)(void, void, void), uint64_t a2, void *a3, unint64_t a4, uint64_t a5, uint64_t a6, char *a7, unint64_t a8, char *a9, uint64_t a10, unsigned __int8 a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15)
{
  v279 = a8;
  v248 = a7;
  v249 = a6;
  v280 = a4;
  v282 = a3;
  v259 = a1;
  v16 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  __chkstk_darwin(v16 - 8);
  v267 = &v225 - v17;
  v18 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v19 = __chkstk_darwin(v18 - 8);
  v252 = &v225 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v268 = &v225 - v22;
  __chkstk_darwin(v21);
  v277 = (&v225 - v23);
  v278 = type metadata accessor for Date();
  v266 = *(v278 - 8);
  __chkstk_darwin(v278);
  v276 = &v225 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v25 - 8);
  v275 = &v225 - v26;
  v251 = type metadata accessor for WildModeAssociationRecord(0);
  v253 = *(v251 - 8);
  v27 = __chkstk_darwin(v251);
  v255 = &v225 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v254 = v28;
  __chkstk_darwin(v27);
  v30 = &v225 - v29;
  v31 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v245 = *(v31 - 8);
  v32 = __chkstk_darwin(v31 - 8);
  v247 = &v225 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v244 = &v225 - v35;
  v246 = v36;
  __chkstk_darwin(v34);
  v264 = &v225 - v37;
  v283 = type metadata accessor for MACAddress();
  v38 = *(v283 - 8);
  v39 = __chkstk_darwin(v283);
  v274 = &v225 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v263 = &v225 - v42;
  v243 = v43;
  __chkstk_darwin(v41);
  v262 = &v225 - v44;
  v45 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v45 - 8);
  v231 = &v225 - v46;
  v235 = sub_1000BC4D4(&qword_1016C7CC0, &qword_1013BB5D8);
  v233 = *(v235 - 8);
  __chkstk_darwin(v235);
  v232 = &v225 - v47;
  v237 = sub_1000BC4D4(&qword_1016A9648, &qword_1013BB5E0);
  v236 = *(v237 - 8);
  __chkstk_darwin(v237);
  v234 = &v225 - v48;
  v240 = sub_1000BC4D4(&qword_1016A9650, &qword_1013BB5E8);
  v239 = *(v240 - 8);
  __chkstk_darwin(v240);
  v238 = &v225 - v49;
  v242 = sub_1000BC4D4(&qword_1016A9658, &qword_1013BB5F0);
  v241 = *(v242 - 8);
  __chkstk_darwin(v242);
  v261 = &v225 - v50;
  v51 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v52 = __chkstk_darwin(v51 - 8);
  v265 = &v225 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v256 = &v225 - v54;
  v284 = type metadata accessor for UUID();
  v281 = *(v284 - 8);
  v55 = *(v281 + 64);
  v56 = __chkstk_darwin(v284);
  v273 = &v225 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __chkstk_darwin(v56);
  v59 = &v225 - v58;
  v60 = __chkstk_darwin(v57);
  v260 = &v225 - v61;
  __chkstk_darwin(v60);
  v63 = &v225 - v62;
  v269 = type metadata accessor for AccessoryMetadata(0);
  v270 = *(v269 - 8);
  __chkstk_darwin(v269);
  v272 = &v225 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1000BC4D4(&unk_1016A99C0, &unk_1013BB530);
  __chkstk_darwin(v65);
  v67 = (&v225 - v66);
  v250 = a5;
  v68 = swift_projectBox();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v271 = result;
    v258 = v38;
    v230 = a15;
    v227 = a14;
    v229 = a13;
    v228 = a12;
    v257 = a11;
    v226 = a10;
    v225 = a9;
    sub_1000D2A70(v259, v67, &unk_1016A99C0, &unk_1013BB530);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1007A91C8(v67, v272, type metadata accessor for AccessoryMetadata);
      v75 = v282;
      v76 = [v282 trackingIdentifier];
      v77 = [v76 isPosh];

      if (v77)
      {
        v78 = [v75 trackingIdentifier];
        v79 = [v78 networkID];

        if (v79 == 1)
        {
          LODWORD(v80) = 1;
        }

        else
        {
          LODWORD(v80) = 2 * (v79 == 2);
        }
      }

      else
      {
        LODWORD(v80) = 3;
      }

      if (qword_101694910 != -1)
      {
        swift_once();
      }

      v94 = type metadata accessor for Logger();
      sub_1000076D4(v94, qword_10177B2D0);
      v95 = v281;
      v96 = v284;
      v277 = *(v281 + 16);
      v278 = v281 + 16;
      v277(v63, v280, v284);
      v97 = Logger.logObject.getter();
      v98 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v259 = v68;
        v100 = v80;
        v80 = v99;
        v101 = swift_slowAlloc();
        v287 = v101;
        *v80 = 136446466;
        sub_100799304(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v102 = dispatch thunk of CustomStringConvertible.description.getter();
        v103 = v96;
        v105 = v104;
        (*(v95 + 8))(v63, v103);
        v106 = sub_1000136BC(v102, v105, &v287);

        *(v80 + 4) = v106;
        *(v80 + 12) = 256;
        if (v100 == 3)
        {
          v107 = 0;
        }

        else
        {
          v107 = v100;
        }

        *(v80 + 14) = v107;
        _os_log_impl(&_mh_execute_header, v97, v98, "Successfully fetched metadata for %{public}s. NetworkID: %hhu", v80, 0xFu);
        sub_100007BAC(v101);

        LOBYTE(v80) = v100;
        v68 = v259;
      }

      else
      {

        (*(v95 + 8))(v63, v96);
      }

      v108 = v272;
      v109 = v256;
      sub_1007A7DFC(v272, v256, type metadata accessor for AccessoryMetadata);
      v110 = v270 + 56;
      (*(v270 + 56))(v109, 0, 1, v269);
      swift_beginAccess();
      sub_10002311C(v109, v68, &qword_1016A62A0, &unk_101396E10);
      v111 = v271;
      sub_1000BC4D4(&unk_1016A62B0, &unk_10139DA70);
      v112 = (*(v110 + 24) + 32) & ~*(v110 + 24);
      v113 = swift_allocObject();
      *(v113 + 16) = xmmword_101385D80;
      sub_1007A7DFC(v108, v113 + v112, type metadata accessor for AccessoryMetadata);

      v114 = sub_1003666F4(v113, v80);

      v285 = *(v111 + 24);
      v115 = v285;
      v286 = v114;
      v116 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      v117 = v231;
      (*(*(v116 - 8) + 56))(v231, 1, 1, v116);
      v276 = v115;
      sub_1000BC4D4(&qword_1016C7CE0, &unk_10139DA90);
      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      sub_1000041A4(&qword_1016A9530, &qword_1016C7CE0, &unk_10139DA90, &protocol conformance descriptor for Future<A, B>);
      sub_100009D18(&qword_1016AF9C0, &qword_101695570, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
      v118 = v232;
      Publisher.receive<A>(on:options:)();
      sub_10000B3A8(v117, &unk_1016B0FE0, &unk_101391980);

      sub_1000041A4(&qword_1016C7CF0, &qword_1016C7CC0, &qword_1013BB5D8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
      v119 = v234;
      v120 = v235;
      Publisher.timeout(_:queue:customError:)();
      (*(v233 + 8))(v118, v120);
      sub_1000BC4D4(&qword_10169E748, &unk_10139DAB0);
      sub_1000041A4(&qword_1016A9660, &qword_1016A9648, &qword_1013BB5E0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
      v121 = v238;
      v122 = v237;
      Publisher.map<A>(_:)();
      (*(v236 + 8))(v119, v122);
      sub_1000BC4D4(&qword_1016A9548, &qword_1013BB510);
      sub_1000041A4(&qword_1016A9668, &qword_1016A9650, &qword_1013BB5E8, &protocol conformance descriptor for Publishers.Map<A, B>);
      sub_1000041A4(&qword_1016A9558, &qword_1016A9548, &qword_1013BB510, &protocol conformance descriptor for Just<A>);
      v123 = v240;
      Publisher.catch<A>(_:)();
      (*(v239 + 8))(v121, v123);
      v276 = swift_allocObject();
      swift_weakInit();
      v277(v260, v280, v284);
      v124 = v258;
      v125 = *(v258 + 16);
      v126 = v283;
      v125(v262, v248, v283);
      sub_1000D2A70(v279, v264, &unk_101698C30, &unk_101392630);
      v125(v263, v225, v126);
      v127 = v281;
      v128 = (*(v281 + 80) + 24) & ~*(v281 + 80);
      v129 = (v55 + v128 + 7) & 0xFFFFFFFFFFFFFFF8;
      v130 = *(v124 + 80);
      v131 = (v130 + 8 + v129) & ~v130;
      v132 = (v243 + *(v245 + 80) + v131) & ~*(v245 + 80);
      v133 = (v246 + v132 + 7) & 0xFFFFFFFFFFFFFFF8;
      v134 = (v130 + 8 + v133) & ~v130;
      v279 = (v134 + v243 + 23) & 0xFFFFFFFFFFFFFFF8;
      v280 = (v134 + v243 + 7) & 0xFFFFFFFFFFFFFFF8;
      v278 = (v279 + 15) & 0xFFFFFFFFFFFFFFF8;
      v277 = ((v278 + 23) & 0xFFFFFFFFFFFFFFF8);
      v135 = swift_allocObject();
      *(v135 + 16) = v276;
      (*(v127 + 32))(v135 + v128, v260, v284);
      *(v135 + v129) = v249;
      v136 = *(v124 + 32);
      v136(v135 + v131, v262, v126);
      sub_1000D2AD8(v264, v135 + v132, &unk_101698C30, &unk_101392630);
      v137 = v282;
      *(v135 + v133) = v282;
      v136(v135 + v134, v263, v126);
      v138 = v135 + v280;
      *v138 = v226;
      *(v138 + 8) = v257;
      v139 = v278;
      *(v135 + v279) = v250;
      v140 = (v135 + v139);
      v141 = v228;
      v142 = v229;
      *v140 = v228;
      v140[1] = v142;
      v143 = v277 + v135;
      v144 = v230;
      *v143 = v227;
      *(v143 + 1) = v144;

      v145 = v137;

      sub_100309400(v141, v142);
      sub_1000041A4(&qword_1016A9670, &qword_1016A9658, &qword_1013BB5F0, &protocol conformance descriptor for Publishers.Catch<A, B>);

      v146 = v242;
      v147 = v261;
      Publisher<>.sink(receiveValue:)();

      v241[1](v147, v146);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      v148 = type metadata accessor for AccessoryMetadata;
      v149 = v272;
      return sub_1007A810C(v149, v148);
    }

    v287 = *v67;
    v70 = v287;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v71 = swift_dynamicCast();
    v272 = v70;
    v259 = v68;
    if (v71)
    {
      v72 = v284;
      v73 = v281;
      if (v286 == 4)
      {
        LODWORD(v264) = 0;
        v74 = v279;
LABEL_27:
        if (v257 == 3)
        {
          if (qword_101694940 != -1)
          {
            swift_once();
          }

          OS_dispatch_queue.sync<A>(execute:)();
          v150 = sub_10107463C(v287);

          v68 = v259;
          if (v150)
          {
            if (qword_101694910 != -1)
            {
              swift_once();
            }

            v151 = type metadata accessor for Logger();
            sub_1000076D4(v151, qword_10177B2D0);
            v152 = Logger.logObject.getter();
            v153 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v152, v153))
            {
              v154 = swift_slowAlloc();
              *v154 = 0;
              _os_log_impl(&_mh_execute_header, v152, v153, "HELE is AirPods. Stubbing metadata with default values", v154, 2u);
              v72 = v284;
            }

            v155 = sub_100314604(76, 8211);
            if (v156 >> 60 == 15)
            {
              v157 = Logger.logObject.getter();
              v158 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v157, v158))
              {
                v159 = swift_slowAlloc();
                *v159 = 0;
                _os_log_impl(&_mh_execute_header, v157, v158, "Unable to init fallbackAirPodsProductData", v159, 2u);
              }

              v68 = v259;
            }

            else
            {
              v160 = v155;
              v161 = v156;
              v162 = v256;
              (*(v73 + 16))(v256, v280, v72);
              v163 = v74;
              v164 = v269;
              v165 = *(v269 + 36);
              v166 = type metadata accessor for AirTagVersionNumber();
              (*(*(v166 - 8) + 56))(v162 + v165, 1, 1, v166);
              v167 = v162 + v164[11];
              *v167 = 0;
              *(v167 + 8) = 0;
              *(v167 + 16) = 1;
              v168 = (v162 + v164[16]);
              *v168 = 0;
              v168[1] = 0xE000000000000000;
              v169 = (v162 + v164[5]);
              *v169 = v160;
              v169[1] = v161;
              *(v162 + v164[8]) = 16842753;
              v170 = (v162 + v164[7]);
              *v170 = 0;
              v170[1] = 0;
              v171 = (v162 + v164[6]);
              *v171 = 0;
              v171[1] = 0;
              v172 = v162 + v164[10];
              *v172 = 0;
              *(v172 + 4) = 1;
              v173 = v162 + v164[12];
              *v173 = 0;
              *(v173 + 8) = 1;
              v174 = v162 + v164[13];
              *v174 = 1025;
              *(v174 + 4) = 0;
              *(v162 + v164[14]) = 4;
              *(v162 + v164[15]) = 5;
              v175 = v162 + v164[17];
              *v175 = 0;
              *(v175 + 4) = 1;
              v72 = v284;
              v176 = v164;
              v74 = v163;
              (*(v270 + 56))(v162, 0, 1, v176);
              v68 = v259;
              swift_beginAccess();
              sub_10002311C(v162, v68, &qword_1016A62A0, &unk_101396E10);
            }
          }
        }

        v177 = *(v73 + 16);
        v177(v273, v280, v72);
        v178 = v244;
        sub_1000D2A70(v74, v244, &unk_101698C30, &unk_101392630);
        v179 = type metadata accessor for SharedBeaconRecord(0);
        v180 = *(*(v179 - 8) + 48);
        v181 = v180(v178, 1, v179);
        v263 = (v73 + 16);
        v262 = v177;
        if (v181 == 1)
        {
          sub_10000B3A8(v178, &unk_101698C30, &unk_101392630);
          v182 = 1;
          v183 = v275;
        }

        else
        {
          v184 = v178 + *(v179 + 20);
          v185 = v178;
          v183 = v275;
          v177(v275, v184, v72);
          sub_1007A810C(v185, type metadata accessor for SharedBeaconRecord);
          v182 = 0;
        }

        v186 = *(v73 + 56);
        (v186)(v183, v182, 1, v72);
        v187 = [v282 type];
        if (v187)
        {
          v188 = v283;
          v189 = v247;
          if (v187 != 1)
          {
            v224 = v187;
            type metadata accessor for TrackingObservationType(0);
            v287 = v224;
            result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
            __break(1u);
            return result;
          }

          LODWORD(v261) = 1;
        }

        else
        {
          LODWORD(v261) = 0;
          v188 = v283;
          v189 = v247;
        }

        v190 = *(v258 + 16);
        v260 = (v258 + 16);
        v259 = v190;
        v190(v274, v225, v188);
        static Date.trustedNow.getter(v276);
        v191 = *(v266 + 56);
        v280 = v266 + 56;
        (v191)(v277, 1, 1, v278);
        sub_1000D2A70(v279, v189, &unk_101698C30, &unk_101392630);
        v192 = v180(v189, 1, v179);
        v248 = v186;
        if (v192 == 1)
        {
          sub_10000B3A8(v189, &unk_101698C30, &unk_101392630);
          v256 = 0;
          v250 = 0;
          v249 = 0;
        }

        else
        {
          v193 = (v189 + *(v179 + 28));
          v256 = *v193;
          v194 = *(v193 + 2);
          v250 = *(v193 + 1);
          v249 = v194;

          sub_1007A810C(v189, type metadata accessor for SharedBeaconRecord);
        }

        swift_beginAccess();
        sub_1000D2A70(v68, v265, &qword_1016A62A0, &unk_101396E10);
        v195 = type metadata accessor for AccessoryProductInfo(0);
        v196 = *(v195 - 8);
        v245 = *(v196 + 56);
        v246 = v196 + 56;
        (v245)(v267, 1, 1, v195);
        v197 = v282;
        v198 = [v282 action];
        if (v198 < 5)
        {
          v199 = v198 + 1;
        }

        else
        {
          v199 = 0;
        }

        LODWORD(v247) = v199;
        v200 = v278;
        (v191)(v268, 1, 1, v278);
        v201 = [v197 trackingIdentifier];
        LODWORD(v279) = [v201 isPosh];

        v202 = [v197 trackingIdentifier];
        LODWORD(v282) = [v202 networkID];

        v203 = v251;
        v204 = *(v251 + 20);
        v205 = v284;
        (v248)(v30 + v204, 1, 1, v284);
        v240 = v203[6];
        v206 = v203[11];
        (v191)(v30 + v206, 1, 1, v200);
        v207 = (v30 + v203[12]);
        v243 = v203[14];
        (*(v270 + 56))(v30 + v243, 1, 1, v269);
        v244 = v203[15];
        (v245)(v30 + v244, 1, 1, v195);
        v208 = v203[17];
        v245 = v203[16];
        v246 = v208;
        *(v30 + v208) = sub_100908B38(_swiftEmptyArrayStorage);
        v209 = v203[18];
        v242 = v209;
        static Date.trustedNow.getter(v30 + v209);
        v241 = v191;
        (v191)(v30 + v209, 0, 1, v200);
        v248 = v203[19];
        (v191)(&v248[v30], 1, 1, v200);
        v210 = v203[22];
        v270 = v203[21];
        v269 = v30 + v210;
        (v262)(v30, v273, v205);
        sub_1001DA61C(v275, v30 + v204, &qword_1016980D0, &unk_10138F3B0);
        *(v30 + v240) = v261;
        v259(v30 + v203[7], v274, v283);
        *(v30 + v203[8]) = v226;
        *(v30 + v203[9]) = 0;
        v211 = v266;
        (*(v266 + 16))(v30 + v203[10], v276, v200);

        sub_1001DA61C(v277, v30 + v206, &unk_101696900, &unk_10138B1E0);
        v212 = v250;
        *v207 = v256;
        *(v207 + 1) = v212;
        *(v207 + 2) = v249;
        *(v30 + v203[13]) = v257;
        v213 = v265;
        sub_1001DA61C(v265, v30 + v243, &qword_1016A62A0, &unk_101396E10);
        v214 = v267;
        sub_1001DA61C(v267, v30 + v244, &qword_101697268, &qword_101394FE0);
        v215 = v247;
        *(v30 + v245) = v247;
        v216 = v252;
        static Date.trustedNow.getter(v252);
        (v241)(v216, 0, 1, v200);
        v217 = v242;
        sub_10002311C(v216, v30 + v242, &unk_101696900, &unk_10138B1E0);
        sub_1000D2A70(v30 + v217, v216, &unk_101696900, &unk_10138B1E0);
        sub_1001DE1F0(v216, v215);
        sub_10000B3A8(v214, &qword_101697268, &qword_101394FE0);
        sub_10000B3A8(v213, &qword_1016A62A0, &unk_101396E10);
        sub_10000B3A8(v277, &unk_101696900, &unk_10138B1E0);
        (*(v211 + 8))(v276, v278);
        (*(v258 + 8))(v274, v283);
        sub_10000B3A8(v275, &qword_1016980D0, &unk_10138F3B0);
        (*(v281 + 8))(v273, v284);
        sub_10002311C(v268, &v248[v30], &unk_101696900, &unk_10138B1E0);
        v218 = (v30 + v203[20]);
        v219 = v228;
        v220 = v229;
        *v218 = v228;
        v218[1] = v220;
        *(v30 + v270) = v279;
        *v269 = v282;
        sub_100309400(v219, v220);
        sub_100793B94(v30, v227, v230);
        type metadata accessor for Transaction();
        v221 = v255;
        sub_1007A7DFC(v30, v255, type metadata accessor for WildModeAssociationRecord);
        v222 = (*(v253 + 80) + 17) & ~*(v253 + 80);
        v223 = swift_allocObject();
        *(v223 + 16) = v264;
        sub_1007A91C8(v221, v223 + v222, type metadata accessor for WildModeAssociationRecord);
        static Transaction.asyncTask(name:block:)();

        v148 = type metadata accessor for WildModeAssociationRecord;
        v149 = v30;
        return sub_1007A810C(v149, v148);
      }
    }

    else
    {
      v72 = v284;
      v73 = v281;
    }

    if (qword_101694910 != -1)
    {
      swift_once();
    }

    v81 = type metadata accessor for Logger();
    sub_1000076D4(v81, qword_10177B2D0);
    (*(v73 + 16))(v59, v280, v72);
    swift_errorRetain();
    v82 = Logger.logObject.getter();
    v83 = v73;
    v84 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v82, v84))
    {
      v85 = swift_slowAlloc();
      v287 = swift_slowAlloc();
      *v85 = 136446466;
      sub_100799304(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v86 = dispatch thunk of CustomStringConvertible.description.getter();
      v88 = v87;
      (*(v83 + 8))(v59, v284);
      v89 = sub_1000136BC(v86, v88, &v287);
      v90 = v272;

      *(v85 + 4) = v89;
      *(v85 + 12) = 2082;
      v286 = v90;
      swift_errorRetain();
      v91 = String.init<A>(describing:)();
      v93 = sub_1000136BC(v91, v92, &v287);

      *(v85 + 14) = v93;
      _os_log_impl(&_mh_execute_header, v82, v84, "Failed to fetch metadata for %{public}s. Error %{public}s", v85, 0x16u);
      swift_arrayDestroy();

      v72 = v284;
    }

    else
    {

      (*(v83 + 8))(v59, v72);
    }

    LODWORD(v264) = 1;
    v73 = v83;
    v74 = v279;
    v68 = v259;
    goto LABEL_27;
  }

  return result;
}

uint64_t sub_100789E8C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void, void, void), uint64_t a6, void *a7, char *a8, uint64_t a9, unsigned __int8 a10, unint64_t a11, uint64_t a12, void (*a13)(void, void, void, void), uint64_t a14, uint64_t a15)
{
  v181 = a8;
  v183 = a7;
  v182 = a6;
  v174 = a5;
  v191 = a3;
  v190 = a1;
  v197 = a11;
  v15 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  __chkstk_darwin(v15 - 8);
  v195 = &v158 - v16;
  v17 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v18 = __chkstk_darwin(v17 - 8);
  v188 = &v158 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v193 = &v158 - v21;
  __chkstk_darwin(v20);
  v202 = &v158 - v22;
  v203 = type metadata accessor for Date();
  v194 = *(v203 - 8);
  __chkstk_darwin(v203);
  v201 = &v158 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = type metadata accessor for MACAddress();
  v196 = *(v204 - 8);
  __chkstk_darwin(v204);
  v200 = &v158 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v26 = __chkstk_darwin(v25 - 8);
  v180 = &v158 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v178 = &v158 - v28;
  v29 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v29 - 8);
  v199 = &v158 - v30;
  v184 = type metadata accessor for WildModeAssociationRecord(0);
  v185 = *(v184 - 8);
  v31 = __chkstk_darwin(v184);
  v187 = &v158 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = v32;
  __chkstk_darwin(v31);
  v177 = &v158 - v33;
  v34 = type metadata accessor for BluetoothCommunicationCoordinator.Error(0);
  v35 = __chkstk_darwin(v34 - 8);
  v37 = &v158 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v39 = &v158 - v38;
  v40 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v41 = __chkstk_darwin(v40 - 8);
  v192 = &v158 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v44 = &v158 - v43;
  v205 = type metadata accessor for UUID();
  v198 = *(v205 - 8);
  v45 = __chkstk_darwin(v205);
  v47 = &v158 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __chkstk_darwin(v45);
  v50 = &v158 - v49;
  __chkstk_darwin(v48);
  v52 = &v158 - v51;
  v53 = sub_1000BC4D4(&qword_10169E748, &unk_10139DAB0);
  __chkstk_darwin(v53);
  v55 = (&v158 - v54);
  v56 = swift_projectBox();
  v179 = swift_projectBox();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v176 = result;
    sub_1000D2A70(v190, v55, &qword_10169E748, &unk_10139DAB0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v190 = v47;
    v175 = v56;
    if (EnumCaseMultiPayload == 1)
    {
      sub_1007A91C8(v55, v39, type metadata accessor for BluetoothCommunicationCoordinator.Error);
      v59 = v205;
      v60 = v198;
      if (qword_101694910 != -1)
      {
        swift_once();
      }

      v61 = type metadata accessor for Logger();
      sub_1000076D4(v61, qword_10177B2D0);
      v62 = *(v60 + 16);
      v197 = (v60 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v62(v50, v191, v59);
      sub_1007A7DFC(v39, v37, type metadata accessor for BluetoothCommunicationCoordinator.Error);
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.error.getter();
      v65 = os_log_type_enabled(v63, v64);
      v189 = v62;
      if (v65)
      {
        v66 = swift_slowAlloc();
        v206 = swift_slowAlloc();
        *v66 = 136446466;
        sub_100799304(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v67 = dispatch thunk of CustomStringConvertible.description.getter();
        v69 = v68;
        (*(v198 + 8))(v50, v205);
        v70 = sub_1000136BC(v67, v69, &v206);
        v59 = v205;

        *(v66 + 4) = v70;
        *(v66 + 12) = 2082;
        v71 = sub_10118F894();
        v73 = v72;
        sub_1007A810C(v37, type metadata accessor for BluetoothCommunicationCoordinator.Error);
        v74 = sub_1000136BC(v71, v73, &v206);

        *(v66 + 14) = v74;
        _os_log_impl(&_mh_execute_header, v63, v64, "Failed to fetch product info for %{public}s. Error %{public}s", v66, 0x16u);
        swift_arrayDestroy();
        v60 = v198;
      }

      else
      {

        sub_1007A810C(v37, type metadata accessor for BluetoothCommunicationCoordinator.Error);
        v75 = (*(v60 + 8))(v50, v59);
      }

      __chkstk_darwin(v75);
      v88 = v174;
      *(&v158 - 2) = v174;
      *(&v158 - 1) = v89;
      sub_1000BC4D4(&unk_1016A6370, &unk_101391AA0);
      Lock.callAsFunction<A>(_:)();
      v90 = v206;
      if (v206)
      {
        v206 = sub_10131FAE0(v206);
        sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
        sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970, &protocol conformance descriptor for AnyPublisher<A, B>);
        Publisher.oneshot(_:)();

        sub_1007A810C(v39, type metadata accessor for BluetoothCommunicationCoordinator.Error);
      }

      else
      {
        type metadata accessor for AccessoryMetadataManager.Error(0);
        sub_100799304(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error, &unk_10139DCD8);
        v94 = swift_allocError();
        (*(v196 + 16))(v95, v88, v204);
        swift_storeEnumTagMultiPayload();
        v206 = v94;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        swift_willThrowTypedImpl();
        v96 = static os_log_type_t.error.getter();
        if (qword_1016950B0 != -1)
        {
          swift_once();
        }

        v97 = qword_10177C3F8;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v98 = swift_allocObject();
        *(v98 + 16) = xmmword_101385D80;
        v99 = _convertErrorToNSError(_:)();
        *(v98 + 56) = sub_100008BB8(0, &qword_10169E020, NSError_ptr);
        *(v98 + 64) = sub_100009D18(&qword_1016BC310, &qword_10169E020, NSError_ptr, &protocol conformance descriptor for NSObject);
        *(v98 + 32) = v99;
        os_log(_:dso:log:_:_:)(v96, &_mh_execute_header, v97, "Error from cancelConnection: %@", 31, 2, v98);

        sub_1007A810C(v39, type metadata accessor for BluetoothCommunicationCoordinator.Error);
        v60 = v198;
      }

      v100 = v182;
      v91 = v197;
    }

    else
    {
      v76 = *v55;
      v59 = v205;
      v77 = v198;
      if (qword_101694910 != -1)
      {
        swift_once();
      }

      v78 = type metadata accessor for Logger();
      sub_1000076D4(v78, qword_10177B2D0);
      v79 = *(v77 + 16);
      v197 = v77 + 16;
      v189 = v79;
      v79(v52, v191, v59);
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v206 = v83;
        *v82 = 136446210;
        sub_100799304(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v84 = dispatch thunk of CustomStringConvertible.description.getter();
        v86 = v85;
        (*(v77 + 8))(v52, v205);
        v87 = sub_1000136BC(v84, v86, &v206);

        *(v82 + 4) = v87;
        _os_log_impl(&_mh_execute_header, v80, v81, "Successfully fetched product info for %{public}s", v82, 0xCu);
        sub_100007BAC(v83);
        v59 = v205;
      }

      else
      {

        (*(v77 + 8))(v52, v59);
      }

      v60 = v77;
      v91 = v197 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v47 = v190;
      if (*(v76 + 16))
      {
        v92 = type metadata accessor for AccessoryProductInfo(0);
        v93 = *(v92 - 8);
        sub_1007A7DFC(v76 + ((*(v93 + 80) + 32) & ~*(v93 + 80)), v44, type metadata accessor for AccessoryProductInfo);

        (*(v93 + 56))(v44, 0, 1, v92);
      }

      else
      {

        v101 = type metadata accessor for AccessoryProductInfo(0);
        (*(*(v101 - 8) + 56))(v44, 1, 1, v101);
      }

      v100 = v182;
      v102 = v175;
      swift_beginAccess();
      sub_10002311C(v44, v102, &qword_101697268, &qword_101394FE0);
    }

    v103 = v189;
    v189(v47, v191, v59);
    v104 = v178;
    sub_1000D2A70(v100, v178, &unk_101698C30, &unk_101392630);
    v105 = type metadata accessor for SharedBeaconRecord(0);
    v106 = *(*(v105 - 8) + 48);
    if (v106(v104, 1, v105) == 1)
    {
      sub_10000B3A8(v104, &unk_101698C30, &unk_101392630);
      v107 = 1;
      v108 = v199;
    }

    else
    {
      v109 = v59;
      v110 = v199;
      v103(v199, v104 + *(v105 + 20), v109);
      sub_1007A810C(v104, type metadata accessor for SharedBeaconRecord);
      v107 = 0;
      v108 = v110;
      v59 = v109;
    }

    v111 = *(v60 + 56);
    v111(v108, v107, 1, v59);
    v112 = v183;
    v113 = [v183 type];
    v197 = v91;
    if (v113)
    {
      if (v113 != 1)
      {
        v157 = v113;
        type metadata accessor for TrackingObservationType(0);
        v206 = v157;
        result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
        __break(1u);
        return result;
      }

      v171 = 1;
    }

    else
    {
      v171 = 0;
    }

    v182 = a15;
    v178 = a14;
    v174 = a13;
    v173 = a12;
    LODWORD(v191) = a10;
    v172 = a9;
    v114 = *(v196 + 16);
    v115 = v181;
    v181 = (v196 + 16);
    v170 = v114;
    v114(v200, v115, v204);
    static Date.trustedNow.getter(v201);
    v116 = *(v194 + 56);
    v116(v202, 1, 1, v203);
    v117 = v100;
    v118 = v180;
    sub_1000D2A70(v117, v180, &unk_101698C30, &unk_101392630);
    if (v106(v118, 1, v105) == 1)
    {
      sub_10000B3A8(v118, &unk_101698C30, &unk_101392630);
      v169 = 0;
      v168 = 0;
      v167 = 0;
    }

    else
    {
      v119 = (v118 + *(v105 + 28));
      v169 = *v119;
      v120 = *(v119 + 2);
      v168 = *(v119 + 1);
      v167 = v120;

      sub_1007A810C(v118, type metadata accessor for SharedBeaconRecord);
    }

    v121 = v179;
    swift_beginAccess();
    sub_1000D2A70(v121, v195, &qword_1016A62A0, &unk_101396E10);
    v122 = v175;
    swift_beginAccess();
    sub_1000D2A70(v122, v192, &qword_101697268, &qword_101394FE0);
    v123 = [v112 action];
    if (v123 < 5)
    {
      v124 = v123 + 1;
    }

    else
    {
      v124 = 0;
    }

    LODWORD(v179) = v124;
    v125 = v203;
    v116(v193, 1, 1, v203);
    v126 = [v112 trackingIdentifier];
    LODWORD(v180) = [v126 isPosh];

    v127 = [v112 trackingIdentifier];
    LODWORD(v183) = [v127 networkID];

    v128 = v184;
    v129 = *(v184 + 20);
    v130 = v116;
    v131 = v177;
    v132 = v205;
    v111(&v177[v129], 1, 1, v205);
    v133 = v128[6];
    v163 = v128[11];
    v130(v131 + v163, 1, 1, v125);
    v134 = v130;
    v135 = (v131 + v128[12]);
    v136 = v128[14];
    v162 = v136;
    v137 = type metadata accessor for AccessoryMetadata(0);
    (*(*(v137 - 8) + 56))(v131 + v136, 1, 1, v137);
    v138 = v128[15];
    v160 = v138;
    v139 = type metadata accessor for AccessoryProductInfo(0);
    (*(*(v139 - 8) + 56))(v131 + v138, 1, 1, v139);
    v140 = v128[17];
    v161 = v128[16];
    v164 = v140;
    *(v131 + v140) = sub_100908B38(_swiftEmptyArrayStorage);
    v141 = v128[18];
    v159 = v141;
    static Date.trustedNow.getter(v131 + v141);
    v158 = v134;
    v134(v131 + v141, 0, 1, v125);
    v165 = v128[19];
    v142 = v125;
    v134(v131 + v165, 1, 1, v125);
    v143 = v128[22];
    v175 = v128[21];
    v166 = (v131 + v143);
    v189(v131, v190, v132);
    sub_1001DA61C(v199, v131 + v129, &qword_1016980D0, &unk_10138F3B0);
    *(v131 + v133) = v171;
    v170(v131 + v128[7], v200, v204);
    *(v131 + v128[8]) = v172;
    *(v131 + v128[9]) = 0;
    v144 = v194;
    (*(v194 + 16))(v131 + v128[10], v201, v125);

    sub_1001DA61C(v202, v131 + v163, &unk_101696900, &unk_10138B1E0);
    v145 = v168;
    *v135 = v169;
    v135[1] = v145;
    v135[2] = v167;
    *(v131 + v128[13]) = v191;
    v146 = v195;
    sub_1001DA61C(v195, v131 + v162, &qword_1016A62A0, &unk_101396E10);
    v147 = v192;
    sub_1001DA61C(v192, v131 + v160, &qword_101697268, &qword_101394FE0);
    v148 = v179;
    *(v131 + v161) = v179;
    v149 = v188;
    static Date.trustedNow.getter(v188);
    v158(v149, 0, 1, v142);
    v150 = v159;
    sub_10002311C(v149, v131 + v159, &unk_101696900, &unk_10138B1E0);
    sub_1000D2A70(v131 + v150, v149, &unk_101696900, &unk_10138B1E0);
    sub_1001DE1F0(v149, v148);
    sub_10000B3A8(v147, &qword_101697268, &qword_101394FE0);
    sub_10000B3A8(v146, &qword_1016A62A0, &unk_101396E10);
    sub_10000B3A8(v202, &unk_101696900, &unk_10138B1E0);
    (*(v144 + 8))(v201, v203);
    (*(v196 + 8))(v200, v204);
    sub_10000B3A8(v199, &qword_1016980D0, &unk_10138F3B0);
    (*(v198 + 8))(v190, v205);
    sub_10002311C(v193, v131 + v165, &unk_101696900, &unk_10138B1E0);
    v151 = (v131 + v128[20]);
    v152 = v173;
    v153 = v174;
    *v151 = v173;
    v151[1] = v153;
    *(v131 + v175) = v180;
    *v166 = v183;
    sub_100309400(v152, v153);
    sub_100793B94(v131, v178, v182);
    type metadata accessor for Transaction();
    v154 = v187;
    sub_1007A7DFC(v131, v187, type metadata accessor for WildModeAssociationRecord);
    v155 = (*(v185 + 80) + 17) & ~*(v185 + 80);
    v156 = swift_allocObject();
    *(v156 + 16) = v191;
    sub_1007A91C8(v154, v156 + v155, type metadata accessor for WildModeAssociationRecord);
    static Transaction.asyncTask(name:block:)();

    return sub_1007A810C(v131, type metadata accessor for WildModeAssociationRecord);
  }

  return result;
}

uint64_t sub_10078B7F4(char a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 56) = a1;
  return _swift_task_switch(sub_10078B818, 0, 0);
}

uint64_t sub_10078B818()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 56);
  type metadata accessor for AnalyticsEvent(0);
  v3 = swift_allocObject();
  *(v0 + 24) = v3;
  swift_defaultActor_initialize();
  *(v3 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v4 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v5 = type metadata accessor for DispatchTime();
  v6 = *(*(v5 - 8) + 56);
  v6(&v3[v4], 1, 1, v5);
  v6(&v3[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v5);
  *(v3 + 15) = 0xD00000000000002FLL;
  *(v3 + 16) = 0x800000010135FC00;
  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  *(v7 + 16) = v2;
  *(v7 + 24) = v1;

  return _swift_task_switch(sub_10078B984, v3, 0);
}

uint64_t sub_10078B984()
{
  sub_10115BE7C(sub_1007A91BC);

  type metadata accessor for AnalyticsPublisher();
  v0[5] = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_10078BA74;
  v2 = v0[3];

  return sub_101163F78(v2);
}

uint64_t sub_10078BA74()
{

  return _swift_task_switch(sub_1006B09C0, 0, 0);
}

void *sub_10078BB8C(unsigned __int8 a1, uint64_t a2)
{
  v44 = a2;
  v3 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v42 - v4;
  v6 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v42 - v7;
  v43 = type metadata accessor for AccessoryProductInfo(0);
  v9 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  __chkstk_darwin(v11 - 8);
  v13 = &v42 - v12;
  v14 = type metadata accessor for AccessoryMetadata(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = _swiftEmptyDictionarySingleton;
  sub_100FFC418(0, 1, 0xD000000000000010, 0x800000010135FC30, isUniquelyReferenced_nonNull_native);
  v19 = v45;
  if (a1 < 4u)
  {
    v20 = String._bridgeToObjectiveC()();

    v21 = swift_isUniquelyReferenced_nonNull_native();
    v45 = v19;
    sub_100FFC418(v20, 0, 0x7954656369766564, 0xEA00000000006570, v21);
    v19 = v45;
  }

  v22 = type metadata accessor for WildModeAssociationRecord(0);
  sub_1000D2A70(v44 + v22[14], v13, &qword_1016A62A0, &unk_101396E10);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10000B3A8(v13, &qword_1016A62A0, &unk_101396E10);
    v23 = v43;
  }

  else
  {
    sub_1007A91C8(v13, v17, type metadata accessor for AccessoryMetadata);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v45 = v19;
    sub_100FFC418(1, 1, 0x6863746546736961, 0xEF73736563637553, v24);
    v25 = v45;
    sub_10098E010();
    v26 = String._bridgeToObjectiveC()();

    v27 = swift_isUniquelyReferenced_nonNull_native();
    v45 = v25;
    sub_100FFC418(v26, 0, 0x6F69737265566D66, 0xEA0000000000736ELL, v27);
    v19 = v45;
    if ((v17[*(v14 + 40) + 4] & 1) == 0)
    {
      sub_10098E010();
      v28 = String._bridgeToObjectiveC()();

      v29 = swift_isUniquelyReferenced_nonNull_native();
      v45 = v19;
      sub_100FFC418(v28, 0, 0x69737265566E6D66, 0xEA00000000006E6FLL, v29);
      v19 = v45;
    }

    v23 = v43;
    sub_1007A810C(v17, type metadata accessor for AccessoryMetadata);
  }

  sub_1000D2A70(v44 + v22[15], v8, &qword_101697268, &qword_101394FE0);
  if ((*(v9 + 48))(v8, 1, v23) == 1)
  {
    sub_10000B3A8(v8, &qword_101697268, &qword_101394FE0);
  }

  else
  {
    v30 = v42;
    sub_1007A91C8(v8, v42, type metadata accessor for AccessoryProductInfo);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v45 = v19;
    sub_100FFC418(1, 1, 0xD000000000000014, 0x800000010135FC70, v31);
    v32 = v45;
    v33 = String._bridgeToObjectiveC()();
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v45 = v32;
    sub_100FFC418(v33, 0, 0x49746375646F7270, 0xE900000000000064, v34);
    v19 = v45;
    sub_1007A810C(v30, type metadata accessor for AccessoryProductInfo);
  }

  sub_1000D2A70(v44 + v22[5], v5, &qword_1016980D0, &unk_10138F3B0);
  v35 = type metadata accessor for UUID();
  v36 = (*(*(v35 - 8) + 48))(v5, 1, v35) != 1;
  sub_10000B3A8(v5, &qword_1016980D0, &unk_10138F3B0);
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v45 = v19;
  sub_100FFC418(v36, 1, 0x796C696D61467369, 0xEE006E6F63616542, v37);
  v38 = v45;
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v45 = v38;
  sub_100FFC418(isa, 0, 0xD000000000000015, 0x800000010135FC50, v40);
  return v45;
}

uint64_t sub_10078C2B0(char a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 56) = a1;
  return _swift_task_switch(sub_10078C2D4, 0, 0);
}

uint64_t sub_10078C2D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 56);
  type metadata accessor for AnalyticsEvent(0);
  v3 = swift_allocObject();
  *(v0 + 24) = v3;
  swift_defaultActor_initialize();
  *(v3 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v4 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v5 = type metadata accessor for DispatchTime();
  v6 = *(*(v5 - 8) + 56);
  v6(&v3[v4], 1, 1, v5);
  v6(&v3[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v5);
  *(v3 + 15) = 0xD00000000000002FLL;
  *(v3 + 16) = 0x800000010135FC00;
  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  *(v7 + 16) = v2;
  *(v7 + 24) = v1;

  return _swift_task_switch(sub_10078C440, v3, 0);
}

uint64_t sub_10078C440()
{
  sub_10115BE7C(sub_1007A9230);

  type metadata accessor for AnalyticsPublisher();
  v0[5] = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_10078C530;
  v2 = v0[3];

  return sub_101163F78(v2);
}

uint64_t sub_10078C530()
{

  return _swift_task_switch(sub_1007A9FBC, 0, 0);
}

void *sub_10078C648(char a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v4 - 8);
  v52 = &v48 - v5;
  v6 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v48 - v7;
  v9 = type metadata accessor for AccessoryProductInfo(0);
  v49 = *(v9 - 8);
  v50 = v9;
  __chkstk_darwin(v9);
  v48 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  __chkstk_darwin(v11 - 8);
  v13 = &v48 - v12;
  v14 = type metadata accessor for AccessoryMetadata(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (a1)
  {
    v53 = _swiftEmptyDictionarySingleton;
    sub_100FFC418(1, 1, 0xD000000000000010, 0x800000010135FC30, isUniquelyReferenced_nonNull_native);
    v19 = v53;
    v20 = type metadata accessor for WildModeAssociationRecord(0);
    v21 = *(a2 + v20[13]);
    v22 = a2;
    if (v21 < 4)
    {
      v24 = String._bridgeToObjectiveC()();

      v25 = swift_isUniquelyReferenced_nonNull_native();
      v53 = v19;
      sub_100FFC418(v24, 0, 0x7954656369766564, 0xEA00000000006570, v25);
      v19 = v53;
    }
  }

  else
  {
    v53 = _swiftEmptyDictionarySingleton;
    sub_100FFC418(0, 1, 0xD000000000000010, 0x800000010135FC30, isUniquelyReferenced_nonNull_native);
    v19 = v53;
    v20 = type metadata accessor for WildModeAssociationRecord(0);
    v23 = v20[13];
    v51 = a2;
    if (*(a2 + v23) < 4u)
    {
      v26 = String._bridgeToObjectiveC()();

      v27 = swift_isUniquelyReferenced_nonNull_native();
      v53 = v19;
      sub_100FFC418(v26, 0, 0x7954656369766564, 0xEA00000000006570, v27);
      v19 = v53;
    }

    sub_1000D2A70(v51 + v20[14], v13, &qword_1016A62A0, &unk_101396E10);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_10000B3A8(v13, &qword_1016A62A0, &unk_101396E10);
      v28 = v50;
    }

    else
    {
      sub_1007A91C8(v13, v17, type metadata accessor for AccessoryMetadata);
      v29 = swift_isUniquelyReferenced_nonNull_native();
      v53 = v19;
      sub_100FFC418(1, 1, 0x6863746546736961, 0xEF73736563637553, v29);
      v30 = v53;
      sub_10098E010();
      v31 = String._bridgeToObjectiveC()();

      v32 = swift_isUniquelyReferenced_nonNull_native();
      v53 = v30;
      sub_100FFC418(v31, 0, 0x6F69737265566D66, 0xEA0000000000736ELL, v32);
      v19 = v53;
      if ((v17[*(v14 + 40) + 4] & 1) == 0)
      {
        sub_10098E010();
        v33 = String._bridgeToObjectiveC()();

        v34 = swift_isUniquelyReferenced_nonNull_native();
        v53 = v19;
        sub_100FFC418(v33, 0, 0x69737265566E6D66, 0xEA00000000006E6FLL, v34);
        v19 = v53;
      }

      v28 = v50;
      sub_1007A810C(v17, type metadata accessor for AccessoryMetadata);
    }

    v22 = v51;
    sub_1000D2A70(v51 + v20[15], v8, &qword_101697268, &qword_101394FE0);
    if ((*(v49 + 48))(v8, 1, v28) == 1)
    {
      sub_10000B3A8(v8, &qword_101697268, &qword_101394FE0);
    }

    else
    {
      v35 = v48;
      sub_1007A91C8(v8, v48, type metadata accessor for AccessoryProductInfo);
      v36 = swift_isUniquelyReferenced_nonNull_native();
      v53 = v19;
      sub_100FFC418(1, 1, 0xD000000000000014, 0x800000010135FC70, v36);
      v37 = v53;
      v38 = String._bridgeToObjectiveC()();
      v39 = swift_isUniquelyReferenced_nonNull_native();
      v53 = v37;
      sub_100FFC418(v38, 0, 0x49746375646F7270, 0xE900000000000064, v39);
      v19 = v53;
      sub_1007A810C(v35, type metadata accessor for AccessoryProductInfo);
    }
  }

  type metadata accessor for WildModeAssociationRecord(0);
  v40 = v52;
  sub_1000D2A70(v22 + v20[5], v52, &qword_1016980D0, &unk_10138F3B0);
  v41 = type metadata accessor for UUID();
  v42 = (*(*(v41 - 8) + 48))(v40, 1, v41) != 1;
  sub_10000B3A8(v40, &qword_1016980D0, &unk_10138F3B0);
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v53 = v19;
  sub_100FFC418(v42, 1, 0x796C696D61467369, 0xEE006E6F63616542, v43);
  v44 = v53;
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v53 = v44;
  sub_100FFC418(isa, 0, 0xD000000000000015, 0x800000010135FC50, v46);
  return v53;
}

uint64_t sub_10078CE7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, uint64_t, uint64_t), char a4, void (*a5)(uint64_t), uint64_t a6)
{
  v72 = a5;
  v70 = a3;
  v74 = a1;
  v9 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v9 - 8);
  v69 = &v66 - v10;
  v66 = sub_1000BC4D4(&unk_1016A99C0, &unk_1013BB530);
  __chkstk_darwin(v66);
  v67 = (&v66 - v11);
  v12 = type metadata accessor for MACAddress();
  v73 = *(v12 - 8);
  v13 = *(v73 + 64);
  v14 = __chkstk_darwin(v12);
  v68 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v14);
  v17 = &v66 - v16;
  __chkstk_darwin(v15);
  v19 = &v66 - v18;
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v20 = qword_10177C218;
  v21 = [objc_opt_self() sharedInstance];
  v22 = [v21 isInternalBuild];

  if (v22)
  {
    v23 = String._bridgeToObjectiveC()();
    v24 = [v20 BOOLForKey:v23];

    if (v24)
    {
      if (qword_101694918 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_1000076D4(v25, qword_1016A9318);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v75 = v29;
        *v28 = 136446210;
        *(v28 + 4) = sub_1000136BC(0xD000000000000043, 0x800000010135F7F0, &v75);
        _os_log_impl(&_mh_execute_header, v26, v27, "%{public}s ForceReadingHawkeyeAIS is enabled!", v28, 0xCu);
        sub_100007BAC(v29);
      }

      v30 = v74;
      v31 = 2;
      goto LABEL_23;
    }
  }

  if (a4)
  {
    v71 = a6;
    v32 = v73;
    if (qword_101694910 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_1000076D4(v33, qword_10177B2D0);
    v34 = *(v32 + 16);
    v34(v17, v74, v12);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v70 = v34;
      v38 = v37;
      v75 = swift_slowAlloc();
      *v38 = 136446466;
      *(v38 + 4) = sub_1000136BC(0xD000000000000043, 0x800000010135F7F0, &v75);
      *(v38 + 12) = 2082;
      sub_100799304(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      (*(v73 + 8))(v17, v12);
      v42 = sub_1000136BC(v39, v41, &v75);

      *(v38 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v35, v36, "%{public}s for Posh accessory with %{public}s", v38, 0x16u);
      swift_arrayDestroy();
      v32 = v73;

      v34 = v70;
    }

    else
    {

      (*(v32 + 8))(v17, v12);
    }

    v53 = type metadata accessor for TaskPriority();
    v54 = v69;
    (*(*(v53 - 8) + 56))(v69, 1, 1, v53);
    v55 = v68;
    v34(v68, v74, v12);
    v56 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = 0;
    *(v57 + 24) = 0;
    (*(v32 + 32))(v57 + v56, v55, v12);
    v58 = (v57 + ((v13 + v56 + 7) & 0xFFFFFFFFFFFFFFF8));
    v59 = v71;
    *v58 = v72;
    v58[1] = v59;

    sub_10025EDD4(0, 0, v54, &unk_1013BB5C0, v57);
  }

  else
  {
    v43 = v73;
    if (a2 != 4)
    {
      v30 = v74;
      v31 = a2;
LABEL_23:
      v61 = v70;
      v62 = v72;

      return sub_10078DB94(v30, v31, v61, v62, a6);
    }

    if (qword_101694918 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_1000076D4(v44, qword_1016A9318);
    (*(v43 + 16))(v19, v74, v12);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = v43;
      v75 = swift_slowAlloc();
      *v47 = 136446466;
      *(v47 + 4) = sub_1000136BC(0xD000000000000043, 0x800000010135F7F0, &v75);
      *(v47 + 12) = 2082;
      sub_100799304(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      (*(v48 + 8))(v19, v12);
      v52 = sub_1000136BC(v49, v51, &v75);

      *(v47 + 14) = v52;
      _os_log_impl(&_mh_execute_header, v45, v46, "%{public}s for %{public}s with no device type!", v47, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v43 + 8))(v19, v12);
    }

    sub_1007A7D8C();
    v63 = swift_allocError();
    *v64 = 3;
    v65 = v67;
    *v67 = v63;
    swift_storeEnumTagMultiPayload();
    v72(v65);
    return sub_10000B3A8(v65, &unk_1016A99C0, &unk_1013BB530);
  }
}

uint64_t sub_10078D7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v6[4] = sub_1000BC4D4(&unk_1016A99C0, &unk_1013BB530);
  v6[5] = swift_task_alloc();
  type metadata accessor for AccessoryMetadata(0);
  v8 = swift_task_alloc();
  v6[6] = v8;
  type metadata accessor for AccessoryMetadataManager();
  v9 = swift_task_alloc();
  v6[7] = v9;
  *v9 = v6;
  v9[1] = sub_10078D8CC;

  return sub_10037208C(v8, a4);
}

uint64_t sub_10078D8CC()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_10078DAD4;
  }

  else
  {
    v2 = sub_10078D9E0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10078D9E0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[2];
  sub_1007A7DFC(v1, v2, type metadata accessor for AccessoryMetadata);
  swift_storeEnumTagMultiPayload();
  v3(v2);
  sub_10000B3A8(v2, &unk_1016A99C0, &unk_1013BB530);
  sub_1007A810C(v1, type metadata accessor for AccessoryMetadata);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10078DAD4()
{
  v1 = v0[5];
  v2 = v0[2];
  *v1 = v0[8];
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v2(v1);

  sub_10000B3A8(v1, &unk_1016A99C0, &unk_1013BB530);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10078DB94(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v129 = a4;
  v130 = a5;
  v127 = a3;
  v128 = a1;
  v5 = a2;
  v114 = sub_1000BC4D4(&qword_1016A95A0, &qword_1013BB558);
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v110 = &v97[-v6];
  v119 = sub_1000BC4D4(&qword_1016A95A8, &qword_1013BB560);
  v117 = *(v119 - 8);
  __chkstk_darwin(v119);
  v115 = &v97[-v7];
  v8 = sub_1000BC4D4(&qword_1016A95B0, &qword_1013BB568);
  v122 = *(v8 - 8);
  v123 = v8;
  __chkstk_darwin(v8);
  v121 = &v97[-v9];
  v108 = type metadata accessor for MACAddress();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v105 = v10;
  v106 = &v97[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v112 = sub_1000BC4D4(&qword_1016A95B8, &qword_1013BB570);
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v109 = &v97[-v11];
  v120 = sub_1000BC4D4(&qword_1016A95C0, &qword_1013BB578);
  v118 = *(v120 - 8);
  __chkstk_darwin(v120);
  v116 = &v97[-v12];
  v101 = sub_1000BC4D4(&qword_1016A9598, &qword_1013BB550);
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v97[-v13];
  v125 = sub_1000BC4D4(&unk_1016A99C0, &unk_1013BB530);
  __chkstk_darwin(v125);
  v126 = &v97[-v14];
  v15 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  __chkstk_darwin(v15 - 8);
  v17 = &v97[-v16];
  v18 = type metadata accessor for AccessoryMetadata(0);
  v124 = *(v18 - 8);
  __chkstk_darwin(v18);
  v104 = &v97[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  __chkstk_darwin(v20 - 8);
  v22 = &v97[-v21];
  v23 = type metadata accessor for SharedBeaconRecord(0);
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v102 = &v97[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = __chkstk_darwin(v25);
  v29 = &v97[-v28];
  v30 = __chkstk_darwin(v27);
  v103 = &v97[-v31];
  __chkstk_darwin(v30);
  v33 = &v97[-v32];
  v34 = sub_100B133C0(&off_101609F10);
  v35 = sub_1011204C8(v5, v34);

  if (!v35)
  {
    v98 = v5;
    sub_1000D2A70(v127, v22, &unk_101698C30, &unk_101392630);
    if ((*(v24 + 48))(v22, 1, v23) == 1)
    {
      sub_10000B3A8(v22, &unk_101698C30, &unk_101392630);
    }

    else
    {
      v36 = v33;
      sub_1007A91C8(v22, v33, type metadata accessor for SharedBeaconRecord);
      v131[3] = v23;
      v131[4] = sub_100799304(&qword_101698D80, type metadata accessor for SharedBeaconRecord, &unk_10140BB3C);
      v37 = sub_1000280DC(v131);
      sub_1007A7DFC(v33, v37, type metadata accessor for SharedBeaconRecord);
      sub_100D5D0A4(v131, 0, 0xF000000000000000, v17);
      if ((*(v124 + 48))(v17, 1, v18) != 1)
      {
        v45 = v104;
        sub_1007A91C8(v17, v104, type metadata accessor for AccessoryMetadata);
        if (qword_101694910 != -1)
        {
          swift_once();
        }

        v46 = type metadata accessor for Logger();
        sub_1000076D4(v46, qword_10177B2D0);
        v47 = v103;
        sub_1007A7DFC(v33, v103, type metadata accessor for SharedBeaconRecord);
        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v131[0] = v51;
          *v50 = 141558275;
          *(v50 + 4) = 1752392040;
          *(v50 + 12) = 2081;
          type metadata accessor for UUID();
          sub_100799304(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v52 = dispatch thunk of CustomStringConvertible.description.getter();
          v54 = v53;
          sub_1007A810C(v47, type metadata accessor for SharedBeaconRecord);
          v55 = sub_1000136BC(v52, v54, v131);

          *(v50 + 14) = v55;
          _os_log_impl(&_mh_execute_header, v48, v49, "Skipping AIS fetch for family beacon %{private,mask.hash}s", v50, 0x16u);
          sub_100007BAC(v51);
        }

        else
        {

          sub_1007A810C(v47, type metadata accessor for SharedBeaconRecord);
        }

        v96 = v126;
        sub_1007A7DFC(v45, v126, type metadata accessor for AccessoryMetadata);
        swift_storeEnumTagMultiPayload();
        v129(v96);
        sub_10000B3A8(v96, &unk_1016A99C0, &unk_1013BB530);
        sub_1007A810C(v45, type metadata accessor for AccessoryMetadata);
        return sub_1007A810C(v36, type metadata accessor for SharedBeaconRecord);
      }

      sub_10000B3A8(v17, &qword_1016A62A0, &unk_101396E10);
      if (qword_101694910 != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      sub_1000076D4(v38, qword_10177B2D0);
      sub_1007A7DFC(v33, v29, type metadata accessor for SharedBeaconRecord);
      v39 = v102;
      sub_1007A7DFC(v33, v102, type metadata accessor for SharedBeaconRecord);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 134218240;
        v43 = *&v29[*(v23 + 48)];
        sub_1007A810C(v29, type metadata accessor for SharedBeaconRecord);
        *(v42 + 4) = v43;
        *(v42 + 12) = 2048;
        v44 = *&v39[*(v23 + 44)];
        sub_1007A810C(v39, type metadata accessor for SharedBeaconRecord);
        *(v42 + 14) = v44;
        _os_log_impl(&_mh_execute_header, v40, v41, "Invalid product data from shared beacon %ld-%ld", v42, 0x16u);
      }

      else
      {
        sub_1007A810C(v39, type metadata accessor for SharedBeaconRecord);
        sub_1007A810C(v29, type metadata accessor for SharedBeaconRecord);
      }

      sub_1007A810C(v36, type metadata accessor for SharedBeaconRecord);
    }

    LOBYTE(v5) = v98;
  }

  if (v5 > 1u)
  {
    if (v5 == 2)
    {
      v64 = swift_allocObject();
      swift_weakInit();
      v65 = v107;
      v66 = v106;
      v67 = v108;
      (*(v107 + 16))(v106, v128, v108);
      v68 = (*(v65 + 80) + 16) & ~*(v65 + 80);
      v69 = (v105 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
      v70 = swift_allocObject();
      (*(v65 + 32))(v70 + v68, v66, v67);
      *(v70 + v69) = v64;
      sub_1000BC4D4(&qword_10169E840, &unk_101406170);
      swift_allocObject();
      v131[0] = Future.init(_:)();
      sub_1000041A4(&unk_1016C7E00, &qword_10169E840, &unk_101406170, &protocol conformance descriptor for Future<A, B>);
      v71 = Publisher.eraseToAnyPublisher()();

      v131[0] = v71;
      sub_1000BC4D4(&qword_1016A9518, &qword_1013BB500);
      sub_1000041A4(&unk_1016C7E10, &qword_1016A9518, &qword_1013BB500, &protocol conformance descriptor for AnyPublisher<A, B>);
      v72 = v109;
      Publisher.timeout(_:queue:customError:)();

      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      sub_1000041A4(&qword_1016A95F0, &qword_1016A95B8, &qword_1013BB570, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
      v73 = v116;
      v74 = v112;
      Publisher.mapError<A>(_:)();
      (*(v111 + 8))(v72, v74);
      v75 = swift_allocObject();
      v76 = v130;
      *(v75 + 16) = v129;
      *(v75 + 24) = v76;
      sub_1000041A4(&qword_1016A95F8, &qword_1016A95C0, &qword_1013BB578, &protocol conformance descriptor for Publishers.MapError<A, B>);

      v77 = v120;
      Publisher.oneshot(_:)();

      v78 = v118;
    }

    else
    {
      v131[0] = sub_10035B054();
      type metadata accessor for BluetoothCommunicationCoordinator.Error(0);
      sub_1000BC4D4(&unk_1016C7D70, &qword_1013BB580);
      sub_1000041A4(&qword_1016A95C8, &unk_1016C7D70, &qword_1013BB580, &protocol conformance descriptor for AnyPublisher<A, B>);
      sub_100799304(&qword_1016A95D0, type metadata accessor for BluetoothCommunicationCoordinator.Error, &unk_101409F40);
      v85 = v110;
      Publisher<>.setFailureType<A>(to:)();

      sub_1000041A4(&qword_1016A95D8, &qword_1016A95A0, &qword_1013BB558, &protocol conformance descriptor for Publishers.SetFailureType<A, B>);
      v86 = v115;
      v87 = v114;
      Publisher.timeout(_:queue:customError:)();
      (*(v113 + 8))(v85, v87);
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      sub_1000041A4(&qword_1016A95E0, &qword_1016A95A8, &qword_1013BB560, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
      v73 = v121;
      v88 = v119;
      Publisher.mapError<A>(_:)();
      (*(v117 + 8))(v86, v88);
      v89 = swift_allocObject();
      v90 = v130;
      *(v89 + 16) = v129;
      *(v89 + 24) = v90;
      sub_1000041A4(&qword_1016A95E8, &qword_1016A95B0, &qword_1013BB568, &protocol conformance descriptor for Publishers.MapError<A, B>);

      v77 = v123;
      Publisher.oneshot(_:)();

      v78 = v122;
    }

    return (*(v78 + 8))(v73, v77);
  }

  else
  {
    if (v5)
    {
      if (qword_101694940 != -1)
      {
        swift_once();
      }

      OS_dispatch_queue.sync<A>(execute:)();
      v79 = sub_101074648(v131[0]);

      if (v79)
      {
        v131[0] = sub_10035CFD8(v128);
        sub_1000BC4D4(&qword_1016A9518, &qword_1013BB500);
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        sub_1000041A4(&unk_1016C7E10, &qword_1016A9518, &qword_1013BB500, &protocol conformance descriptor for AnyPublisher<A, B>);
        v80 = v99;
        Publisher.mapError<A>(_:)();

        v81 = swift_allocObject();
        v82 = v130;
        *(v81 + 16) = v129;
        *(v81 + 24) = v82;
        sub_1000041A4(&qword_1016A9600, &qword_1016A9598, &qword_1013BB550, &protocol conformance descriptor for Publishers.MapError<A, B>);

        v83 = v101;
        Publisher.oneshot(_:)();

        return (*(v100 + 8))(v80, v83);
      }

      if (qword_101694910 != -1)
      {
        swift_once();
      }

      v91 = type metadata accessor for Logger();
      sub_1000076D4(v91, qword_10177B2D0);
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        *v94 = 0;
        _os_log_impl(&_mh_execute_header, v92, v93, "Non-owner ranging is disabled. Skipping AIS fetch for AirTag.", v94, 2u);
      }

      sub_1007A7D8C();
      v61 = swift_allocError();
      v63 = 4;
    }

    else
    {
      if (qword_101694910 != -1)
      {
        swift_once();
      }

      v56 = type metadata accessor for Logger();
      sub_1000076D4(v56, qword_10177B2D0);
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v131[0] = v60;
        *v59 = 136446210;
        *(v59 + 4) = sub_1000136BC(0x656C707061, 0xE500000000000000, v131);
        _os_log_impl(&_mh_execute_header, v57, v58, "readMetadata: %{public}s is not supported!", v59, 0xCu);
        sub_100007BAC(v60);
      }

      sub_1007A7D8C();
      v61 = swift_allocError();
      v63 = 3;
    }

    *v62 = v63;
    v95 = v126;
    *v126 = v61;
    swift_storeEnumTagMultiPayload();
    v129(v95);
    return sub_10000B3A8(v95, &unk_1016A99C0, &unk_1013BB530);
  }
}

uint64_t sub_10078F1F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for BluetoothCommunicationCoordinator.Error(0);
  sub_100799304(&qword_1016A95D0, type metadata accessor for BluetoothCommunicationCoordinator.Error, &unk_101409F40);
  *a2 = swift_allocError();
  return sub_1007A7DFC(a1, v4, type metadata accessor for BluetoothCommunicationCoordinator.Error);
}

uint64_t sub_10078F298(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = sub_1000BC4D4(&qword_1016A9608, &qword_1013BB588);
  __chkstk_darwin(v4 - 8);
  v32 = &v32 - v5;
  v6 = sub_1000BC4D4(&qword_10169E890, &unk_1013BB590);
  v7 = __chkstk_darwin(v6);
  v33 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v32 - v9;
  v11 = type metadata accessor for AccessoryMetadata(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000BC4D4(&unk_1016A99C0, &unk_1013BB530);
  __chkstk_darwin(v14);
  v16 = (&v32 - v15);
  sub_1000D2A70(a1, &v32 - v15, &unk_1016A99C0, &unk_1013BB530);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    if (qword_101694910 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000076D4(v18, qword_10177B2D0);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v34 = v17;
      v35 = v22;
      *v21 = 136446210;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v23 = String.init<A>(describing:)();
      v25 = sub_1000136BC(v23, v24, &v35);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "readMetadataCombine failed due to %{public}s", v21, 0xCu);
      sub_100007BAC(v22);
    }

    v26 = v32;
    v35 = v17;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v27 = type metadata accessor for BluetoothCommunicationCoordinator.Error(0);
    v28 = swift_dynamicCast();
    v29 = *(*(v27 - 8) + 56);
    if (v28)
    {
      v29(v26, 0, 1, v27);
      v30 = v33;
      sub_1007A91C8(v26, v33, type metadata accessor for BluetoothCommunicationCoordinator.Error);
    }

    else
    {
      v29(v26, 1, 1, v27);
      v30 = v33;
      swift_storeEnumTagMultiPayload();
    }

    swift_storeEnumTagMultiPayload();
    a2(v30);

    return sub_10000B3A8(v30, &qword_10169E890, &unk_1013BB590);
  }

  else
  {
    sub_1007A91C8(v16, v13, type metadata accessor for AccessoryMetadata);
    sub_1007A7DFC(v13, v10, type metadata accessor for AccessoryMetadata);
    swift_storeEnumTagMultiPayload();
    a2(v10);
    sub_10000B3A8(v10, &qword_10169E890, &unk_1013BB590);
    return sub_1007A810C(v13, type metadata accessor for AccessoryMetadata);
  }
}

void sub_10078F774(NSObject *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v285 = a3;
  v286 = a2;
  v287 = a1;
  v5 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  __chkstk_darwin(v5 - 8);
  v266 = &v260 - v6;
  v267 = type metadata accessor for SharedBeaconRecord(0);
  v265 = *(v267 - 8);
  v7 = __chkstk_darwin(v267);
  v263 = &v260 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v264 = &v260 - v9;
  v10 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v10 - 8);
  v271 = &v260 - v11;
  v12 = sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  __chkstk_darwin(v12 - 8);
  v277 = &v260 - v13;
  v14 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v275 = *(v14 - 8);
  v276 = v14;
  __chkstk_darwin(v14);
  v272 = &v260 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v17 = __chkstk_darwin(v16 - 8);
  *&v280 = &v260 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v278 = &v260 - v19;
  v20 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v21 = __chkstk_darwin(v20 - 8);
  v269 = &v260 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v261 = &v260 - v24;
  __chkstk_darwin(v23);
  v273 = &v260 - v25;
  v281 = type metadata accessor for MACAddress();
  v279 = *(v281 - 8);
  v26 = __chkstk_darwin(v281);
  v270 = &v260 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v262 = &v260 - v29;
  v30 = __chkstk_darwin(v28);
  v268 = &v260 - v31;
  __chkstk_darwin(v30);
  v274 = &v260 - v32;
  v33 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v33 - 8);
  v35 = &v260 - v34;
  v36 = type metadata accessor for Date();
  v289 = *(v36 - 8);
  v37 = __chkstk_darwin(v36);
  v39 = &v260 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v284 = &v260 - v40;
  v41 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v42 = qword_10177C398;
  v283 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_10138BBE0;
  v290 = *v4;
  sub_1000BC4D4(&qword_1016A94C0, &qword_1013BB4B8);
  v44 = String.init<A>(describing:)();
  *&v288 = v4;
  v46 = v45;
  *(v43 + 56) = &type metadata for String;
  v47 = sub_100008C00();
  *(v43 + 32) = v44;
  *(v43 + 40) = v46;
  *(v43 + 96) = &type metadata for String;
  *(v43 + 104) = v47;
  v282 = v47;
  *(v43 + 64) = v47;
  *(v43 + 72) = 0xD000000000000039;
  *(v43 + 80) = 0x800000010135F420;
  os_log(_:dso:log:_:_:)(v41, &_mh_execute_header, v42, "%{public}@: %{public}@", 22, 2, v43);

  v48 = v287;
  v49 = [v287 trackingIdentifier];
  sub_100780A4C(v49, v35);

  v50 = v289;
  if ((*(v289 + 48))(v35, 1, v36) == 1)
  {
    sub_10000B3A8(v35, &unk_101696900, &unk_10138B1E0);
  }

  else
  {
    v51 = v284;
    (*(v50 + 32))(v284, v35, v36);
    static Date.trustedNow.getter(v39);
    v52 = static Date.> infix(_:_:)();
    v55 = *(v50 + 8);
    v53 = v50 + 8;
    v54 = v55;
    v55(v39, v36);
    if (v52)
    {
      v289 = v53;
      v281 = v36;
      v56 = swift_allocObject();
      v288 = xmmword_101385D80;
      *(v56 + 16) = xmmword_101385D80;
      v57 = [v48 trackingIdentifier];
      v58 = [v57 advertisementData];

      v59 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v60;

      v62 = Data.hexString.getter();
      v64 = v63;
      sub_100016590(v59, v61);
      v65 = v282;
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
      *(v71 + 16) = v288;
      *(v71 + 56) = &type metadata for String;
      *(v71 + 64) = v65;
      *(v71 + 32) = v66;
      *(v71 + 40) = v68;

      os_log(_:dso:log:_:_:)(v69, &_mh_execute_header, v70, "%@", 2, 2, v71);

      type metadata accessor for TrackingAvoidanceError(0);
      v292 = 7;
      sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
      v72 = swift_allocObject();
      *(v72 + 16) = v288;
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
      v74 = v290;
      (v286)(v290);

      v54(v284, v281);
      return;
    }

    v54(v51, v36);
  }

  v75 = [v48 observedLocations];
  sub_100008BB8(0, &qword_1016B27B0, SPObservationLocation_ptr);
  v76 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v76 >> 62)
  {
    v77 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v77 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v77)
  {
    v86 = static os_log_type_t.error.getter();
    if (qword_1016950B0 != -1)
    {
      v257 = v86;
      swift_once();
      v86 = v257;
    }

    os_log(_:dso:log:_:_:)(v86, &_mh_execute_header, qword_10177C3F8, "There is no location", 20, 2, _swiftEmptyArrayStorage);
    type metadata accessor for TrackingAvoidanceError(0);
    v292 = 4;
    sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101385D80;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v89 = inited + 32;
    v90 = 0x800000010135F5B0;
    *(inited + 72) = &type metadata for String;
    v91 = 0xD000000000000027;
    goto LABEL_36;
  }

  v78 = v48;
  v79 = [v48 observedLocations];
  v80 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v80 >> 62)
  {
    v81 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v81 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v82 = 0;
  v83 = v80 & 0xC000000000000001;
  while (1)
  {
    if (v81 == v82)
    {

      v92 = v78;
      v93 = [v78 trackingIdentifier];
      v94 = [v93 data];

      v95 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v289 = v96;

      if (qword_101694918 != -1)
      {
        swift_once();
      }

      v97 = type metadata accessor for Logger();
      v98 = sub_1000076D4(v97, qword_1016A9318);
      sub_100017D5C(v95, v289);
      v284 = v98;
      v99 = Logger.logObject.getter();
      v100 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v99, v100))
      {
        sub_100016590(v95, v289);

        goto LABEL_47;
      }

      v101 = v78;
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v104 = v103;
      v290 = v103;
      *v102 = 134218242;
      v105 = v289 >> 62;
      if ((v289 >> 62) > 1)
      {
        if (v105 != 2)
        {
          v106 = 0;
          goto LABEL_46;
        }

        v110 = *(v95 + 16);
        v109 = *(v95 + 24);
        v111 = __OFSUB__(v109, v110);
        v106 = v109 - v110;
        if (!v111)
        {
          goto LABEL_46;
        }

        __break(1u);
      }

      else if (!v105)
      {
        v106 = BYTE6(v289);
LABEL_46:
        *(v102 + 4) = v106;
        sub_100016590(v95, v289);
        *(v102 + 12) = 2082;
        v112 = Data.hexString.getter();
        v114 = sub_1000136BC(v112, v113, &v290);

        *(v102 + 14) = v114;
        _os_log_impl(&_mh_execute_header, v99, v100, "Decoding advertisement from advertisementData[%ld]: %{public}s", v102, 0x16u);
        sub_100007BAC(v104);

        v92 = v101;
LABEL_47:
        v115 = [v92 trackingIdentifier];
        v116 = [v115 isPosh];

        v117 = [v92 trackingIdentifier];
        v118 = [v117 networkID];

        v119 = [v92 trackingIdentifier];
        v120 = [v119 status];

        if (v118 == 1)
        {
          v121 = 5;
        }

        else
        {
          v121 = 6;
        }

        if (v116)
        {
          LOBYTE(v122) = v121;
        }

        else
        {
          LODWORD(v122) = (v120 >> 4) & 3;
        }

        v123 = Logger.logObject.getter();
        v124 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v123, v124))
        {
          v125 = swift_slowAlloc();
          v126 = v122;
          v122 = v92;
          v127 = swift_slowAlloc();
          v290 = v127;
          *v125 = 136446210;
          v128 = sub_100781578(v126);
          v130 = sub_1000136BC(v128, v129, &v290);

          *(v125 + 4) = v130;
          v131 = v122;
          LOBYTE(v122) = v126;
          _os_log_impl(&_mh_execute_header, v123, v124, "UnauthorizedTrackingAdvertisementType: %{public}s", v125, 0xCu);
          sub_100007BAC(v127);
        }

        else
        {
          v131 = v92;
        }

        switch(v122)
        {
          case 4u:
            v155 = v131;
            v156 = Logger.logObject.getter();
            v157 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v156, v157))
            {
              v158 = swift_slowAlloc();
              *v158 = 67109632;
              v159 = [v155 trackingIdentifier];
              v160 = [v159 isPosh];

              *(v158 + 4) = v160;
              *(v158 + 8) = 256;
              v161 = [v155 trackingIdentifier];
              LOBYTE(v160) = [v161 networkID];

              *(v158 + 10) = v160;
              *(v158 + 11) = 256;
              v162 = [v155 trackingIdentifier];
              LOBYTE(v160) = [v162 status];

              *(v158 + 13) = v160;
              _os_log_impl(&_mh_execute_header, v156, v157, "Unknown advertisement type. isPosh: %{BOOL}d networkID: %hhu status: %hhu", v158, 0xEu);
            }

            else
            {

              v156 = v155;
            }

            type metadata accessor for TrackingAvoidanceError(0);
            v292 = 6;
            sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
            v166 = swift_initStackObject();
            *(v166 + 16) = xmmword_101385D80;
            *(v166 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v168 = v166 + 32;
            v169 = "Unknown advertisement type";
            goto LABEL_79;
          case 6u:
            v137 = [v131 trackingIdentifier];
            v138 = [v137 address];

            v139 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v141 = v140;

            sub_100017D5C(v139, v141);
            v142 = v273;
            MACAddress.init(data:type:)();
            v143 = v279;
            v144 = v281;
            if ((*(v279 + 48))(v142, 1, v281) != 1)
            {
              v282 = v139;
              v283 = v141;
              v177 = v274;
              (*(v143 + 32))(v274, v142, v144);
              v178 = v268;
              (*(v143 + 16))(v268, v177, v144);
              v179 = Logger.logObject.getter();
              v180 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v179, v180))
              {
                v181 = v178;
                v182 = v143;
                v183 = swift_slowAlloc();
                v184 = swift_slowAlloc();
                v290 = v184;
                *v183 = 136446210;
                sub_100799304(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
                LODWORD(v284) = v180;
                v185 = dispatch thunk of CustomStringConvertible.description.getter();
                v273 = v95;
                v187 = v186;
                v188 = *(v182 + 8);
                v188(v181, v281);
                v189 = sub_1000136BC(v185, v187, &v290);
                v95 = v273;

                *(v183 + 4) = v189;
                _os_log_impl(&_mh_execute_header, v179, v284, "Posh address: %{public}s", v183, 0xCu);
                sub_100007BAC(v184);
                v190 = v287;
                v144 = v281;
              }

              else
              {

                v188 = *(v143 + 8);
                v188(v178, v144);
                v190 = v131;
              }

              v209 = type metadata accessor for UUID();
              v210 = v278;
              (*(*(v209 - 8) + 56))(v278, 1, 1, v209);
              v211 = v274;
              sub_100791E34(v274, v210, v190, 0, 0, 0, v286, v285);
              sub_100016590(v282, v283);
              sub_100016590(v95, v289);
              sub_10000B3A8(v210, &qword_1016980D0, &unk_10138F3B0);
              v188(v211, v144);
              return;
            }

            sub_10000B3A8(v142, &qword_1016A40D0, &unk_10138BE70);
            sub_100017D5C(v139, v141);
            v145 = Logger.logObject.getter();
            v146 = static os_log_type_t.error.getter();
            sub_100016590(v139, v141);
            v147 = v139;
            if (os_log_type_enabled(v145, v146))
            {
              v148 = swift_slowAlloc();
              v149 = swift_slowAlloc();
              v290 = v149;
              *v148 = 136446210;
              v150 = Data.hexString.getter();
              v152 = sub_1000136BC(v150, v151, &v290);

              *(v148 + 4) = v152;
              _os_log_impl(&_mh_execute_header, v145, v146, "Invalid MAC address %{public}s", v148, 0xCu);
              sub_100007BAC(v149);
            }

            type metadata accessor for TrackingAvoidanceError(0);
            v292 = 3;
            sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
            v153 = swift_initStackObject();
            *(v153 + 16) = xmmword_101385D80;
            *(v153 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
            *(v153 + 72) = &type metadata for String;
            *(v153 + 40) = v154;
            *(v153 + 48) = 0xD00000000000001FLL;
            *(v153 + 56) = 0x800000010135F4D0;
            sub_10090403C(v153);
            swift_setDeallocating();
            sub_10000B3A8(v153 + 32, &unk_101695C20, &unk_101386D90);
            sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError, &unk_101389AA8);
            _BridgedStoredNSError.init(_:userInfo:)();
            v108 = v290;
            (v286)(v290);
            sub_100016590(v95, v289);
            sub_100016590(v147, v141);
LABEL_37:

            return;
          case 5u:
            v132 = v289;
            sub_100017D5C(v95, v289);
            sub_100497060(v95, v132, &v290);
            v133 = v291;
            if (v291 >> 60 == 15)
            {
              v134 = Logger.logObject.getter();
              v135 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v134, v135))
              {
                v136 = swift_slowAlloc();
                *v136 = 0;
                _os_log_impl(&_mh_execute_header, v134, v135, "received an advertisement of unexpected length or format", v136, 2u);
              }

LABEL_72:

              type metadata accessor for TrackingAvoidanceError(0);
              v292 = 3;
              sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
              v166 = swift_initStackObject();
              *(v166 + 16) = xmmword_101385D80;
              *(v166 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v168 = v166 + 32;
              v169 = "Advertisement is malformed";
LABEL_79:
              *(v166 + 72) = &type metadata for String;
              *(v166 + 40) = v167;
              *(v166 + 48) = 0xD00000000000001ALL;
              *(v166 + 56) = (v169 - 32) | 0x8000000000000000;
              sub_10090403C(v166);
              swift_setDeallocating();
              sub_10000B3A8(v168, &unk_101695C20, &unk_101386D90);
              sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError, &unk_101389AA8);
              _BridgedStoredNSError.init(_:userInfo:)();
              v108 = v290;
              (v286)(v290);
              sub_100016590(v95, v289);
              goto LABEL_37;
            }

            break;
          default:
            v163 = v289;
            sub_100017D5C(v95, v289);
            sub_100497060(v95, v163, &v290);
            v133 = v291;
            if (v291 >> 60 == 15)
            {
              v134 = Logger.logObject.getter();
              v164 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v134, v164))
              {
                v165 = swift_slowAlloc();
                *v165 = 0;
                _os_log_impl(&_mh_execute_header, v134, v164, "received an advertisement of unexpected length or format", v165, 2u);
              }

              goto LABEL_72;
            }

            break;
        }

        v284 = v133;
        v273 = v95;
        v170 = v290;
        type metadata accessor for BeaconKeyManager(0);
        OSAllocatedUnfairLock.callAsFunction<A>(_:)();
        v79 = type metadata accessor for UUID();
        v260 = *(v79 - 8);
        v171 = 1;
        v172 = v280;
        v268 = *(v260 + 56);
        (v268)(v280, 1, 1, v79);
        v274 = v170;
        v173 = sub_1012DD334(v170, v284, v172);
        v174 = v173[2];
        v175 = v275;
        v176 = v277;
        if (v174)
        {
          sub_1007A7DFC(v173 + ((*(v275 + 80) + 32) & ~*(v275 + 80)) + *(v275 + 72) * (v174 - 1), v277, type metadata accessor for BeaconKeyManager.IndexInformation);
          v171 = 0;
        }

        sub_10000B3A8(v280, &qword_1016980D0, &unk_10138F3B0);
        v191 = v276;
        (*(v175 + 56))(v176, v171, 1, v276);
        if ((*(v175 + 48))(v176, 1, v191) == 1)
        {
          sub_10000B3A8(v176, &unk_1016C1120, &qword_1013C49D0);
          v192 = v274;
          v193 = v284;
          sub_100017D5C(v274, v284);
          v194 = static MACAddress.length.getter();
          sub_10002EA98(v194, v192, v193, &v290);
          v195 = v269;
          MACAddress.init(data:type:)();
          v196 = v279;
          v197 = v281;
          v198 = (*(v279 + 48))(v195, 1, v281);
          v199 = v287;
          if (v198 != 1)
          {
            v200 = v270;
            (*(v196 + 32))(v270, v195, v197);
            v201 = v278;
            (v268)(v278, 1, 1, v79);
            sub_100791E34(v200, v201, v199, 0, 0, 0, v286, v285);
            sub_100006654(v192, v193);
            sub_100016590(v273, v289);
            sub_10000B3A8(v201, &qword_1016980D0, &unk_10138F3B0);
            (*(v196 + 8))(v200, v197);
            return;
          }

          __break(1u);
          goto LABEL_107;
        }

        v202 = v272;
        sub_1007A91C8(v176, v272, type metadata accessor for BeaconKeyManager.IndexInformation);
        v203 = v271;
        sub_100AA33AC(v202, v271);
        v204 = type metadata accessor for OwnedBeaconRecord(0);
        v205 = (*(*(v204 - 8) + 48))(v203, 1, v204);
        sub_10000B3A8(v203, &unk_1016A9A20, &qword_10138B280);
        v99 = v287;
        if (v205 == 1)
        {
          v206 = v266;
          sub_100AA5198(v202, v266);
          v207 = v267;
          v208 = (*(v265 + 48))(v206, 1, v267);
          v83 = v274;
          if (v208 == 1)
          {
            sub_10000B3A8(v206, &unk_101698C30, &unk_101392630);
          }

          else
          {
            v228 = v206;
            v80 = v264;
            sub_1007A91C8(v228, v264, type metadata accessor for SharedBeaconRecord);
            v229 = *(v80 + *(v207 + 64));
            if (v229 == 4 || v229 == 1)
            {
              v230 = static os_log_type_t.default.getter();
              if (qword_1016950B0 != -1)
              {
                swift_once();
              }

              v231 = qword_10177C3F8;
              v232 = swift_allocObject();
              v280 = xmmword_101385D80;
              *(v232 + 16) = xmmword_101385D80;
              sub_1007A7DFC(v80, v263, type metadata accessor for SharedBeaconRecord);
              v233 = v267;
              v234 = String.init<A>(describing:)();
              v235 = v282;
              *(v232 + 56) = &type metadata for String;
              *(v232 + 64) = v235;
              *(v232 + 32) = v234;
              *(v232 + 40) = v236;
              os_log(_:dso:log:_:_:)(v230, &_mh_execute_header, v231, "Found shared beacon %@.", 23, 2, v232);

              v82 = *(v233 + 20);
              if ((sub_100785DE8(v80 + v82) & 1) == 0)
              {
                goto LABEL_98;
              }

              v237 = String.init(format:_:)();
              v239 = v238;
              v240 = static os_log_type_t.default.getter();
              v241 = swift_allocObject();
              *(v241 + 16) = v280;
              *(v241 + 56) = &type metadata for String;
              *(v241 + 64) = v235;
              *(v241 + 32) = v237;
              *(v241 + 40) = v239;

              os_log(_:dso:log:_:_:)(v240, &_mh_execute_header, v231, "%@", 2, 2, v241);

              type metadata accessor for TrackingAvoidanceError(0);
              v292 = 7;
              sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
              v242 = swift_initStackObject();
              *(v242 + 16) = v280;
              *(v242 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
              *(v242 + 72) = &type metadata for String;
              *(v242 + 40) = v243;
              *(v242 + 48) = v237;
              *(v242 + 56) = v239;
              sub_10090403C(v242);
              swift_setDeallocating();
              sub_10000B3A8(v242 + 32, &unk_101695C20, &unk_101386D90);
              sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError, &unk_101389AA8);
              _BridgedStoredNSError.init(_:userInfo:)();
              v244 = v290;
              (v286)(v290);

              sub_100006654(v274, v284);
              sub_100016590(v273, v289);
              sub_1007A810C(v272, type metadata accessor for BeaconKeyManager.IndexInformation);
              sub_1007A810C(v80, type metadata accessor for SharedBeaconRecord);
              return;
            }

            sub_1007A810C(v80, type metadata accessor for SharedBeaconRecord);
          }

          type metadata accessor for TrackingAvoidanceError(0);
          v292 = 6;
          sub_100032898(_swiftEmptyArrayStorage);
          sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError, &unk_101389AA8);
          _BridgedStoredNSError.init(_:userInfo:)();
          v256 = v290;
          (v286)(v290);

          sub_100006654(v83, v284);
          sub_100016590(v273, v289);
          sub_1007A810C(v202, type metadata accessor for BeaconKeyManager.IndexInformation);
          return;
        }

        v103 = static os_log_type_t.default.getter();
        if (qword_1016950B0 == -1)
        {
LABEL_89:
          os_log(_:dso:log:_:_:)(v103, &_mh_execute_header, qword_10177C3F8, "Beacon belongs to owner", 23, 2, _swiftEmptyArrayStorage);
          v212 = swift_allocObject();
          v288 = xmmword_101385D80;
          *(v212 + 16) = xmmword_101385D80;
          v213 = [v99 trackingIdentifier];
          v214 = [v213 advertisementData];

          v215 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v217 = v216;

          v218 = Data.hexString.getter();
          v220 = v219;
          sub_100016590(v215, v217);
          v221 = v282;
          *(v212 + 56) = &type metadata for String;
          *(v212 + 64) = v221;
          *(v212 + 32) = v218;
          *(v212 + 40) = v220;
          v222 = String.init(format:_:)();
          v224 = v223;
          type metadata accessor for TrackingAvoidanceError(0);
          v292 = 8;
          sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
          v225 = swift_initStackObject();
          *(v225 + 16) = v288;
          *(v225 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *(v225 + 72) = &type metadata for String;
          *(v225 + 40) = v226;
          *(v225 + 48) = v222;
          *(v225 + 56) = v224;
          sub_10090403C(v225);
          swift_setDeallocating();
          sub_10000B3A8(v225 + 32, &unk_101695C20, &unk_101386D90);
          sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError, &unk_101389AA8);
          _BridgedStoredNSError.init(_:userInfo:)();
          v227 = v290;
          (v286)(v290);

          sub_100006654(v274, v284);
          sub_100016590(v273, v289);
          sub_1007A810C(v272, type metadata accessor for BeaconKeyManager.IndexInformation);
          return;
        }

LABEL_105:
        v259 = v103;
        swift_once();
        v103 = v259;
        goto LABEL_89;
      }

      LODWORD(v106) = HIDWORD(v95) - v95;
      if (__OFSUB__(HIDWORD(v95), v95))
      {
        __break(1u);
        goto LABEL_105;
      }

      v106 = v106;
      goto LABEL_46;
    }

    if (v83)
    {
      v84 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v82 >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_97;
      }

      v84 = *(v80 + 8 * v82 + 32);
    }

    v85 = v84;
    if (__OFADD__(v82, 1))
    {
      break;
    }

    v79 = sub_1010E13F0();

    ++v82;
    if (v79)
    {

      v107 = static os_log_type_t.error.getter();
      if (qword_1016950B0 != -1)
      {
        v258 = v107;
        swift_once();
        v107 = v258;
      }

      os_log(_:dso:log:_:_:)(v107, &_mh_execute_header, qword_10177C3F8, "received locations within blocked regions", 41, 2, _swiftEmptyArrayStorage);
      type metadata accessor for TrackingAvoidanceError(0);
      v292 = 11;
      sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_101385D80;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v89 = inited + 32;
      v90 = 0x800000010135F490;
      *(inited + 72) = &type metadata for String;
      v91 = 0xD00000000000001CLL;
LABEL_36:
      *(inited + 40) = v88;
      *(inited + 48) = v91;
      *(inited + 56) = v90;
      sub_10090403C(inited);
      swift_setDeallocating();
      sub_10000B3A8(v89, &unk_101695C20, &unk_101386D90);
      sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError, &unk_101389AA8);
      _BridgedStoredNSError.init(_:userInfo:)();
      v108 = v290;
      (v286)(v290);
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  v245 = v83;
  v246 = v83;
  v247 = v284;
  sub_100017D5C(v245, v284);
  v248 = static MACAddress.length.getter();
  sub_10002EA98(v248, v246, v247, &v290);
  v249 = v261;
  MACAddress.init(data:type:)();
  v250 = v279;
  v251 = v281;
  if ((*(v279 + 48))(v249, 1, v281) != 1)
  {
    v252 = v262;
    (*(v250 + 32))(v262, v249, v251);
    v253 = v80 + v82;
    v254 = v80;
    v255 = v278;
    (*(v260 + 16))(v278, v253, v79);
    (v268)(v255, 0, 1, v79);
    sub_100791E34(v252, v255, v287, *(v254 + *(v267 + 28)), *(v254 + *(v267 + 28) + 8), *(v254 + *(v267 + 28) + 16), v286, v285);
    sub_100006654(v274, v247);
    sub_100016590(v273, v289);
    sub_10000B3A8(v255, &qword_1016980D0, &unk_10138F3B0);
    (*(v250 + 8))(v252, v251);
    sub_1007A810C(v272, type metadata accessor for BeaconKeyManager.IndexInformation);
    sub_1007A810C(v254, type metadata accessor for SharedBeaconRecord);
    return;
  }

LABEL_107:
  __break(1u);
}

void sub_100791E34(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void), uint64_t a8)
{
  v77 = a7;
  v78 = a8;
  v70 = a6;
  v69 = a5;
  v68 = a4;
  v76 = a3;
  v79 = type metadata accessor for WildModeTrackingLocation(0);
  v11 = *(v79 - 8);
  __chkstk_darwin(v79);
  v13 = &v64[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v74 = type metadata accessor for MACAddress();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v72 = &v64[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  __chkstk_darwin(v15 - 8);
  v17 = &v64[-v16];
  v18 = type metadata accessor for WildModeAssociationRecord(0);
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v64[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v24 = &v64[-v23];
  v75 = a1;
  v71 = v8;
  sub_100793720(a1, a2, v17);
  if ((*(v19 + 48))(v17, 1, v18) != 1)
  {
    sub_1007A91C8(v17, v24, type metadata accessor for WildModeAssociationRecord);
    v29 = v24;
    if (qword_101694918 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000076D4(v30, qword_1016A9318);
    sub_1007A7DFC(v24, v22, type metadata accessor for WildModeAssociationRecord);
    v31 = v73;
    v32 = v72;
    v33 = v74;
    (*(v73 + 16))(v72, v75, v74);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    v36 = os_log_type_enabled(v34, v35);
    v67 = v29;
    if (v36)
    {
      v37 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v81[0] = v66;
      *v37 = 136315394;
      type metadata accessor for UUID();
      sub_100799304(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v65 = v35;
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      sub_1007A810C(v22, type metadata accessor for WildModeAssociationRecord);
      v41 = sub_1000136BC(v38, v40, v81);
      v29 = v67;

      *(v37 + 4) = v41;
      *(v37 + 12) = 2080;
      sub_100799304(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      (*(v31 + 8))(v32, v33);
      v45 = sub_1000136BC(v42, v44, v81);

      *(v37 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v34, v65, "update: found UT record UUID %s address %s.", v37, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v31 + 8))(v32, v33);
      sub_1007A810C(v22, type metadata accessor for WildModeAssociationRecord);
    }

    v46 = [v76 observedLocations];
    sub_100008BB8(0, &qword_1016B27B0, SPObservationLocation_ptr);
    v47 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v47 >> 62)
    {
      v48 = _CocoaArrayWrapper.endIndex.getter();
      if (v48)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v48)
      {
LABEL_12:
        v81[0] = _swiftEmptyArrayStorage;
        sub_101124B70(0, v48 & ~(v48 >> 63), 0);
        if (v48 < 0)
        {
          __break(1u);
          return;
        }

        v49 = 0;
        v50 = v81[0];
        do
        {
          if ((v47 & 0xC000000000000001) != 0)
          {
            v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v51 = *(v47 + 8 * v49 + 32);
          }

          v52 = v51;
          [v51 latitude];
          v54 = v53;
          [v52 longitude];
          v56 = v55;
          [v52 horizontalAccuracy];
          v58 = v57;
          v59 = [v52 timestamp];
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          *v13 = v54;
          v13[1] = v56;
          v13[2] = v58;
          v81[0] = v50;
          v61 = v50[2];
          v60 = v50[3];
          if (v61 >= v60 >> 1)
          {
            sub_101124B70((v60 > 1), v61 + 1, 1);
            v50 = v81[0];
          }

          ++v49;
          v50[2] = v61 + 1;
          sub_1007A91C8(v13, v50 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v61, type metadata accessor for WildModeTrackingLocation);
        }

        while (v48 != v49);

        v62 = v78;
        v29 = v67;
LABEL_23:

        sub_10079E7C8(v29, v76, v75, v68, v69, v70, v50, v71, v77, v62);

        sub_1007A810C(v29, type metadata accessor for WildModeAssociationRecord);
        return;
      }
    }

    v50 = _swiftEmptyArrayStorage;
    v62 = v78;
    goto LABEL_23;
  }

  sub_10000B3A8(v17, &unk_1016C7C90, &qword_1013BB4B0);
  v25 = static os_log_type_t.error.getter();
  if (qword_1016950B0 != -1)
  {
    v63 = v25;
    swift_once();
    v25 = v63;
  }

  os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, qword_10177C3F8, "No wildModeAssociationRecord found", 34, 2, _swiftEmptyArrayStorage);
  type metadata accessor for TrackingAvoidanceError(0);
  v80 = 3;
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v27;
  *(inited + 48) = 0xD000000000000027;
  *(inited + 56) = 0x800000010135F6C0;
  sub_10090403C(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
  sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError, &unk_101389AA8);
  _BridgedStoredNSError.init(_:userInfo:)();
  v28 = v81[0];
  (v77)(v81[0]);
}

uint64_t sub_1007927CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (!a2)
  {
    v5 = static os_log_type_t.default.getter();
    if (qword_1016950B0 != -1)
    {
      v7 = v5;
      swift_once();
      v5 = v7;
    }

    os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, qword_10177C3F8, "Successfully updated existing UT record.", 40, 2, _swiftEmptyArrayStorage);
  }

  return a3(a2);
}

uint64_t sub_100792880(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v71 = a4;
  v77 = a3;
  v65 = a2;
  v6 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  __chkstk_darwin(v6 - 8);
  v69 = &v63 - v7;
  v8 = type metadata accessor for WildModeAssociationRecord(0);
  v67 = *(v8 - 8);
  v68 = v8;
  __chkstk_darwin(v8);
  v64 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  __chkstk_darwin(v10 - 8);
  v12 = &v63 - v11;
  v13 = type metadata accessor for MACAddress();
  v76 = *(v13 - 8);
  __chkstk_darwin(v13);
  v70 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v74 = qword_10177C398;
  v72 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10138B360;
  v78 = *v4;
  sub_1000BC4D4(&qword_1016A94C0, &qword_1013BB4B8);
  v16 = String.init<A>(describing:)();
  v18 = v17;
  *(v15 + 56) = &type metadata for String;
  v19 = sub_100008C00();
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  *(v15 + 96) = &type metadata for String;
  *(v15 + 104) = v19;
  *(v15 + 64) = v19;
  *(v15 + 72) = 0xD00000000000002FLL;
  *(v15 + 80) = 0x800000010135FAA0;
  v20 = [a1 data];
  v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v66 = v4;
  v22 = a1;
  v24 = v23;

  v25 = Data.hexString.getter();
  v27 = v26;
  v28 = v24;
  v29 = v22;
  sub_100016590(v21, v28);
  *(v15 + 136) = &type metadata for String;
  *(v15 + 144) = v19;
  v73 = v19;
  *(v15 + 112) = v25;
  *(v15 + 120) = v27;
  os_log(_:dso:log:_:_:)(v75, &_mh_execute_header, v74, "%{public}@: %{public}@ ignoring device %@", 41, 2, v15);

  v30 = [v22 address];
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  MACAddress.init(data:type:)();
  v31 = v76;
  if ((*(v76 + 48))(v12, 1, v13) == 1)
  {
    sub_10000B3A8(v12, &qword_1016A40D0, &unk_10138BE70);
    v32 = static os_log_type_t.default.getter();
    if (qword_1016950B0 != -1)
    {
      swift_once();
    }

    v33 = qword_10177C3F8;
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_101385D80;
    v35 = [v29 data];
    v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39 = Data.hexString.getter();
    v41 = v40;
    sub_100016590(v36, v38);
    v42 = v73;
    *(v34 + 56) = &type metadata for String;
    *(v34 + 64) = v42;
    *(v34 + 32) = v39;
    *(v34 + 40) = v41;
    os_log(_:dso:log:_:_:)(v32, &_mh_execute_header, v33, "Invalid advertisement: %@", 25, 2, v34);

    v44 = v77;
    if (v77)
    {
      sub_1007A7D8C();
      swift_allocError();
      *v45 = 1;
      v44();
    }
  }

  else
  {
    v46 = v70;
    (*(v31 + 32))(v70, v12, v13);
    v47 = v69;
    sub_10125FD10(v46, v69);
    if ((*(v67 + 48))(v47, 1, v68) == 1)
    {
      sub_10000B3A8(v47, &unk_1016C7C90, &qword_1013BB4B0);
      v48 = static os_log_type_t.default.getter();
      if (qword_1016950B0 != -1)
      {
        swift_once();
      }

      v49 = qword_10177C3F8;
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_101385D80;
      v51 = [v29 data];
      v52 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;

      v55 = Data.hexString.getter();
      v57 = v56;
      sub_100016590(v52, v54);
      v58 = v73;
      *(v50 + 56) = &type metadata for String;
      *(v50 + 64) = v58;
      *(v50 + 32) = v55;
      *(v50 + 40) = v57;
      os_log(_:dso:log:_:_:)(v48, &_mh_execute_header, v49, "WildModeAssociationRecord not found for advertisement: %@", 57, 2, v50);

      v59 = v77;
      if (v77)
      {
        sub_1007A7D8C();
        swift_allocError();
        *v60 = 0;
        v59();
      }
    }

    else
    {
      v61 = v47;
      v62 = v64;
      sub_1007A91C8(v61, v64, type metadata accessor for WildModeAssociationRecord);
      sub_100796E08(v62, v65, v77, v71);
      sub_1007A810C(v62, type metadata accessor for WildModeAssociationRecord);
    }

    return (*(v31 + 8))(v46, v13);
  }

  return result;
}

uint64_t sub_100792FD8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v26 = a2;
  v27 = a4;
  v31 = a3;
  v7 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - v8;
  v30 = type metadata accessor for WildModeAssociationRecord(0);
  v10 = *(v30 - 8);
  __chkstk_darwin(v30);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v28 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10138B360;
  v32 = *v5;
  sub_1000BC4D4(&qword_1016A94C0, &qword_1013BB4B8);
  v14 = String.init<A>(describing:)();
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  v17 = sub_100008C00();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  *(v13 + 96) = &type metadata for String;
  *(v13 + 104) = v17;
  *(v13 + 64) = v17;
  *(v13 + 72) = 0xD00000000000002ALL;
  *(v13 + 80) = 0x800000010135FA20;
  v18 = UUID.uuidString.getter();
  *(v13 + 136) = &type metadata for String;
  *(v13 + 144) = v17;
  *(v13 + 112) = v18;
  *(v13 + 120) = v19;
  os_log(_:dso:log:_:_:)(v29, &_mh_execute_header, v28, "%{public}@: %{public}@ ignoring device %@", 41, 2, v13);

  sub_100AC29C4(a1, v9);
  if ((*(v10 + 48))(v9, 1, v30) == 1)
  {
    sub_10000B3A8(v9, &unk_1016C7C90, &qword_1013BB4B0);
    v20 = static os_log_type_t.default.getter();
    v21 = v31;
    if (qword_1016950B0 != -1)
    {
      v24 = v20;
      swift_once();
      v20 = v24;
    }

    result = os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, qword_10177C3F8, "No UT found for the given beacon UUID.", 38, 2, _swiftEmptyArrayStorage);
    if (v21)
    {
      sub_1007A7D8C();
      swift_allocError();
      *v23 = 0;
      v21();
    }
  }

  else
  {
    sub_1007A91C8(v9, v12, type metadata accessor for WildModeAssociationRecord);
    sub_100796878(v12, v26, v31, v27);
    return sub_1007A810C(v12, type metadata accessor for WildModeAssociationRecord);
  }

  return result;
}

uint64_t sub_10079337C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v26 = a2;
  v27 = a4;
  v31 = a3;
  v7 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  __chkstk_darwin(v7 - 8);
  v9 = (&v25 - v8);
  v30 = type metadata accessor for WildModeAssociationRecord(0);
  v10 = *(v30 - 8);
  __chkstk_darwin(v30);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v28 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10138B360;
  v32 = *v5;
  sub_1000BC4D4(&qword_1016A94C0, &qword_1013BB4B8);
  v14 = String.init<A>(describing:)();
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  v17 = sub_100008C00();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  *(v13 + 96) = &type metadata for String;
  *(v13 + 104) = v17;
  *(v13 + 64) = v17;
  *(v13 + 72) = 0xD00000000000002ALL;
  *(v13 + 80) = 0x800000010135FA20;
  v18 = UUID.uuidString.getter();
  *(v13 + 136) = &type metadata for String;
  *(v13 + 144) = v17;
  *(v13 + 112) = v18;
  *(v13 + 120) = v19;
  os_log(_:dso:log:_:_:)(v29, &_mh_execute_header, v28, "%{public}@: %{public}@ ignoring device %@", 41, 2, v13);

  sub_100023184(a1, v9);
  if ((*(v10 + 48))(v9, 1, v30) == 1)
  {
    sub_10000B3A8(v9, &unk_1016C7C90, &qword_1013BB4B0);
    v20 = static os_log_type_t.default.getter();
    v21 = v31;
    if (qword_1016950B0 != -1)
    {
      v24 = v20;
      swift_once();
      v20 = v24;
    }

    result = os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, qword_10177C3F8, "No UT found for the UUID.", 25, 2, _swiftEmptyArrayStorage);
    if (v21)
    {
      sub_1007A7D8C();
      swift_allocError();
      *v23 = 0;
      v21();
    }
  }

  else
  {
    sub_1007A91C8(v9, v12, type metadata accessor for WildModeAssociationRecord);
    sub_100796E08(v12, v26, v31, v27);
    return sub_1007A810C(v12, type metadata accessor for WildModeAssociationRecord);
  }

  return result;
}

uint64_t sub_100793720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a1;
  v34 = a3;
  v4 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - v5;
  v7 = type metadata accessor for WildModeAssociationRecord(0);
  v33 = *(v7 - 8);
  __chkstk_darwin(v7);
  v31 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2A70(a2, v11, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000B3A8(v11, &qword_1016980D0, &unk_10138F3B0);
    return sub_10125FD10(v32, v34);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    sub_100AC29C4(v15, v6);
    v17 = v33;
    if ((*(v33 + 48))(v6, 1, v7) == 1)
    {
      (*(v13 + 8))(v15, v12);
      sub_10000B3A8(v6, &unk_1016C7C90, &qword_1013BB4B0);
      return (*(v17 + 56))(v34, 1, 1, v7);
    }

    else
    {
      v18 = v31;
      sub_1007A91C8(v6, v31, type metadata accessor for WildModeAssociationRecord);
      LODWORD(v32) = static os_log_type_t.default.getter();
      if (qword_1016950B0 != -1)
      {
        swift_once();
      }

      v30 = qword_10177C3F8;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_10138B360;
      v20 = UUID.uuidString.getter();
      v22 = v21;
      *(v19 + 56) = &type metadata for String;
      v23 = sub_100008C00();
      *(v19 + 64) = v23;
      *(v19 + 32) = v20;
      *(v19 + 40) = v22;
      v24 = UUID.uuidString.getter();
      *(v19 + 96) = &type metadata for String;
      *(v19 + 104) = v23;
      *(v19 + 72) = v24;
      *(v19 + 80) = v25;
      v26 = MACAddress.description.getter();
      *(v19 + 136) = &type metadata for String;
      *(v19 + 144) = v23;
      *(v19 + 112) = v26;
      *(v19 + 120) = v27;
      os_log(_:dso:log:_:_:)(v32, &_mh_execute_header, v30, "Existing Family UT record %@ beacon %@ address %@.", 50, 2, v19);

      (*(v13 + 8))(v15, v12);
      v28 = v34;
      sub_1007A91C8(v18, v34, type metadata accessor for WildModeAssociationRecord);
      return (*(v33 + 56))(v28, 0, 1, v7);
    }
  }
}

uint64_t sub_100793B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *v3;
  v17 = a2;
  v6 = type metadata accessor for WildModeAssociationRecord(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007A7DFC(a1, v9, type metadata accessor for WildModeAssociationRecord);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = (v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  sub_1007A91C8(v9, v13 + v10, type metadata accessor for WildModeAssociationRecord);
  *(v13 + v11) = v3;
  v14 = (v13 + v12);
  *v14 = v17;
  v14[1] = a3;
  *(v13 + ((v12 + 23) & 0xFFFFFFFFFFFFFFF8)) = v16;

  sub_100D76818(a1, sub_1007A8054, v13);
}

void sub_100793D50(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v120 = a5;
  v121 = a4;
  v114 = a3;
  v115 = type metadata accessor for UnwantedTrackingUserNotification(0);
  __chkstk_darwin(v115);
  v116 = v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  __chkstk_darwin(v8 - 8);
  v10 = v112 - v9;
  v11 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  __chkstk_darwin(v11 - 8);
  v13 = v112 - v12;
  v122 = type metadata accessor for WildModeAssociationRecord(0);
  v14 = __chkstk_darwin(v122);
  v119 = v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v118 = v112 - v17;
  v18 = __chkstk_darwin(v16);
  v117 = v112 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = v112 - v21;
  __chkstk_darwin(v20);
  v24 = v112 - v23;
  v25 = sub_1000BC4D4(&qword_1016A9590, &unk_1013BB520);
  __chkstk_darwin(v25);
  v27 = v112 - v26;
  sub_1000D2A70(a1, v112 - v26, &qword_1016A9590, &unk_1013BB520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_101694918 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_1000076D4(v28, qword_1016A9318);
    swift_errorRetain();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    v31 = os_log_type_enabled(v29, v30);
    v32 = v121;
    if (v31)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138543362;
      swift_errorRetain();
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v35;
      *v34 = v35;
      _os_log_impl(&_mh_execute_header, v29, v30, "Error saving UT alert record %{public}@", v33, 0xCu);
      sub_10000B3A8(v34, &qword_10169BB30, &unk_10138B3C0);
    }

    type metadata accessor for TrackingAvoidanceError(0);
    v125[0] = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError, &unk_101389AA8);
    _BridgedStoredNSError.init(_:userInfo:)();
    v36 = aBlock[0];
    v32(aBlock[0]);

    return;
  }

  v113 = v24;
  sub_1007A91C8(v27, v24, type metadata accessor for WildModeAssociationRecord);
  if (qword_101694918 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  v38 = sub_1000076D4(v37, qword_1016A9318);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v39, v40, "UT alert saved successfully.", v41, 2u);
  }

  v42 = *(a2 + v122[16]);
  v43 = v22;
  if (v42 != 8)
  {
    if ((v42 & 0xFA) != 0)
    {
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v37, qword_10177BA08);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 67109120;
        _os_log_impl(&_mh_execute_header, v44, v45, "Requesting SPUnknownBeaconsChangedNotification to be posted. Bypass rate limit? %{BOOL}d", v46, 8u);
      }

      ThrottledDarwinPoster.post(bypassRateLimit:)(0);
      v43 = v22;
      if (v47)
      {
      }
    }

    if (v42 > 6 || v42 == 2)
    {
      sub_100A8AF58();
    }
  }

  v48 = v122;
  if (*(a2 + v122[13]) == 1 || (sub_1000D2A70(a2 + v122[14], v13, &qword_1016A62A0, &unk_101396E10), v49 = type metadata accessor for AccessoryMetadata(0), v50 = (*(*(v49 - 8) + 48))(v13, 1, v49), sub_10000B3A8(v13, &qword_1016A62A0, &unk_101396E10), v50 != 1))
  {
    v56 = 0;
  }

  else
  {
    if (qword_101694F58 != -1)
    {
      swift_once();
    }

    v51 = qword_10177C218;
    v52 = [objc_opt_self() sharedInstance];
    v53 = [v52 isInternalBuild];

    if (v53)
    {
      v54 = String._bridgeToObjectiveC()();
      v55 = [v51 BOOLForKey:v54];

      v56 = v55 ^ 1;
    }

    else
    {
      v56 = 1;
    }
  }

  sub_1000D2A70(a2 + v48[15], v10, &qword_101697268, &qword_101394FE0);
  v57 = type metadata accessor for AccessoryProductInfo(0);
  v58 = (*(*(v57 - 8) + 48))(v10, 1, v57);
  v59 = v118;
  v112[1] = v38;
  if (v58 == 1)
  {
    sub_10000B3A8(v10, &qword_101697268, &qword_101394FE0);
  }

  else
  {
    v60 = v10[*(v57 + 184)];
    sub_1007A810C(v10, type metadata accessor for AccessoryProductInfo);
    if (v60 != 2 && (v60 & 1) == 0)
    {
      v77 = 0;
      goto LABEL_45;
    }
  }

  if (v42 > 3)
  {
    if (v42 < 8)
    {
LABEL_40:
      v61 = v119;
      v76 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v56 & 1 | ((v76 & 1) == 0))
      {
        goto LABEL_41;
      }

LABEL_37:
      v62 = v115;
      v63 = v116;
      v64 = v113;
      sub_1007A7DFC(v113, &v116[*(v115 + 20)], type metadata accessor for WildModeAssociationRecord);
      *v63 = 2;
      v63[*(v62 + 24)] = 66;
      if (qword_101694EE0 != -1)
      {
        swift_once();
      }

      v125[3] = v62;
      v125[4] = &off_1016159B8;
      v65 = sub_1000280DC(v125);
      sub_1007A7DFC(v63, v65, type metadata accessor for UnwantedTrackingUserNotification);
      v66 = objc_allocWithZone(UNUserNotificationCenter);
      v67 = String._bridgeToObjectiveC()();

      v68 = [v66 initWithBundleIdentifier:v67];

      v69 = sub_10111AFE0(v65);
      UUID.uuidString.getter();
      v70 = v69;
      v71 = String._bridgeToObjectiveC()();

      v72 = [objc_opt_self() requestWithIdentifier:v71 content:v70 trigger:0 destinations:7];

      sub_10001F280(v125, v124);
      v73 = swift_allocObject();
      sub_100031694(v124, v73 + 16);
      *(v73 + 56) = 0;
      *(v73 + 64) = 0;
      aBlock[4] = sub_100358EC4;
      aBlock[5] = v73;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10077732C;
      aBlock[3] = &unk_101632A20;
      v74 = _Block_copy(aBlock);

      [v68 addNotificationRequest:v72 withCompletionHandler:v74];

      _Block_release(v74);
      sub_100007BAC(v125);
      sub_1007A810C(v63, type metadata accessor for UnwantedTrackingUserNotification);
      v75 = v121;
      goto LABEL_62;
    }

    v77 = 1;
LABEL_45:
    v61 = v119;
    goto LABEL_46;
  }

  if (v42 != 2)
  {
    goto LABEL_40;
  }

  v61 = v119;
  if ((v56 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_41:
  v77 = 1;
LABEL_46:
  sub_1007A7DFC(a2, v43, type metadata accessor for WildModeAssociationRecord);
  v78 = v43;
  v79 = v117;
  sub_1007A7DFC(a2, v117, type metadata accessor for WildModeAssociationRecord);
  sub_1007A7DFC(a2, v59, type metadata accessor for WildModeAssociationRecord);
  sub_1007A7DFC(a2, v61, type metadata accessor for WildModeAssociationRecord);
  v80 = v59;
  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    aBlock[0] = v116;
    *v83 = 136447490;
    type metadata accessor for UUID();
    sub_100799304(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v84 = dispatch thunk of CustomStringConvertible.description.getter();
    v86 = v85;
    sub_1007A810C(v78, type metadata accessor for WildModeAssociationRecord);
    v87 = sub_1000136BC(v84, v86, aBlock);

    *(v83 + 4) = v87;
    *(v83 + 12) = 1024;
    *(v83 + 14) = v77;
    *(v83 + 18) = 1024;
    *(v83 + 20) = v56;
    *(v83 + 24) = 2082;
    v88 = v122;
    v89 = *(v79 + v122[13]);
    v90 = 0xE500000000000000;
    v91 = 0x656C707061;
    v92 = 0xE700000000000000;
    v93 = 0x6579656B776168;
    v94 = 0xE400000000000000;
    v95 = 1701602664;
    if (v89 != 3)
    {
      v95 = 7104878;
      v94 = 0xE300000000000000;
    }

    if (v89 != 2)
    {
      v93 = v95;
      v92 = v94;
    }

    if (*(v79 + v122[13]))
    {
      v91 = 0x6E6169727564;
      v90 = 0xE600000000000000;
    }

    if (*(v79 + v122[13]) <= 1u)
    {
      v96 = v91;
    }

    else
    {
      v96 = v93;
    }

    if (*(v79 + v122[13]) <= 1u)
    {
      v97 = v90;
    }

    else
    {
      v97 = v92;
    }

    sub_1007A810C(v79, type metadata accessor for WildModeAssociationRecord);
    v98 = sub_1000136BC(v96, v97, aBlock);

    *(v83 + 26) = v98;
    *(v83 + 34) = 2082;
    type metadata accessor for MACAddress();
    sub_100799304(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    v99 = v118;
    v100 = dispatch thunk of CustomStringConvertible.description.getter();
    v102 = v101;
    sub_1007A810C(v99, type metadata accessor for WildModeAssociationRecord);
    v103 = sub_1000136BC(v100, v102, aBlock);

    *(v83 + 36) = v103;
    *(v83 + 44) = 2082;
    v104 = v119;
    LOBYTE(v125[0]) = v119[v88[16]];
    sub_1000BC4D4(&qword_1016A9630, &qword_1013BB5B8);
    v105 = String.init<A>(describing:)();
    v107 = v106;
    sub_1007A810C(v104, type metadata accessor for WildModeAssociationRecord);
    v108 = sub_1000136BC(v105, v107, aBlock);

    *(v83 + 46) = v108;
    _os_log_impl(&_mh_execute_header, v81, v82, "Not showing UT alert for %{public}s,\nsurfaceUt = %{BOOL}d isUnknown = %{BOOL}d,\ndeviceType = %{public}s\naddress = %{public}s,\nobservationState = %{public}s", v83, 0x36u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1007A810C(v61, type metadata accessor for WildModeAssociationRecord);
    sub_1007A810C(v80, type metadata accessor for WildModeAssociationRecord);
    sub_1007A810C(v79, type metadata accessor for WildModeAssociationRecord);
    sub_1007A810C(v78, type metadata accessor for WildModeAssociationRecord);
  }

  v75 = v121;
  v64 = v113;
LABEL_62:
  v109 = Logger.logObject.getter();
  v110 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v109, v110))
  {
    v111 = swift_slowAlloc();
    *v111 = 0;
    _os_log_impl(&_mh_execute_header, v109, v110, "Done waiting for user input", v111, 2u);
  }

  v75(0);
  sub_1007A810C(v64, type metadata accessor for WildModeAssociationRecord);
}

uint64_t sub_100794E58@<X0>(uint64_t a1@<X0>, int a3@<W3>, uint64_t *a4@<X8>)
{
  v17 = a3;
  v18 = a4;
  v5 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for WildModeAssociationRecord(0);
  v9 = swift_projectBox();
  sub_1007A7DFC(a1, v7, type metadata accessor for AccessoryMetadata);
  v10 = type metadata accessor for AccessoryMetadata(0);
  v11 = *(v10 - 8) + 56;
  (*v11)(v7, 0, 1, v10);
  swift_beginAccess();
  sub_10002311C(v7, v9 + *(v8 + 56), &qword_1016A62A0, &unk_101396E10);
  sub_1000BC4D4(&unk_1016A62B0, &unk_10139DA70);
  v12 = (*(v11 + 24) + 32) & ~*(v11 + 24);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_101385D80;
  sub_1007A7DFC(a1, v13 + v12, type metadata accessor for AccessoryMetadata);
  v14 = sub_1003666F4(v13, v17);

  *v18 = v14;
  return result;
}

double sub_100795020@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = *a1;
  sub_1000BC4D4(&qword_10169E748, &unk_10139DAB0);
  swift_storeEnumTagMultiPayload();

  return result;
}

uint64_t sub_100795080(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_10169E748, &unk_10139DAB0);
  __chkstk_darwin(v2);
  sub_1007A7DFC(a1, &v5 - v3, type metadata accessor for BluetoothCommunicationCoordinator.Error);
  swift_storeEnumTagMultiPayload();
  return Just.init(_:)();
}

uint64_t sub_100795144@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v90 = a3;
  v5 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  __chkstk_darwin(v5 - 8);
  v7 = &v84 - v6;
  v8 = type metadata accessor for BluetoothCommunicationCoordinator.Error(0);
  v9 = __chkstk_darwin(v8 - 8);
  v85 = (&v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v9);
  v84 = (&v84 - v12);
  __chkstk_darwin(v11);
  v14 = &v84 - v13;
  v15 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  __chkstk_darwin(v15 - 8);
  v17 = &v84 - v16;
  v18 = type metadata accessor for UUID();
  v87 = *(v18 - 8);
  v88 = v18;
  __chkstk_darwin(v18);
  v86 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000BC4D4(&qword_10169E748, &unk_10139DAB0);
  __chkstk_darwin(v20);
  v22 = (&v84 - v21);
  v23 = type metadata accessor for WildModeAssociationRecord(0);
  v89 = a2;
  v24 = swift_projectBox();
  sub_1000D2A70(a1, v22, &qword_10169E748, &unk_10139DAB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1007A91C8(v22, v14, type metadata accessor for BluetoothCommunicationCoordinator.Error);
    swift_beginAccess();
    sub_1000D2A70(v24 + *(v23 + 56), v7, &qword_1016A62A0, &unk_101396E10);
    v25 = type metadata accessor for AccessoryMetadata(0);
    v26 = (*(*(v25 - 8) + 48))(v7, 1, v25);
    sub_10000B3A8(v7, &qword_1016A62A0, &unk_101396E10);
    v27 = v24;
    if (v26 == 1)
    {
      if (qword_101694910 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_1000076D4(v28, qword_10177B2D0);
      v29 = v84;
      sub_1007A7DFC(v14, v84, type metadata accessor for BluetoothCommunicationCoordinator.Error);

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v91[0] = swift_slowAlloc();
        *v32 = 136446466;
        swift_beginAccess();
        v33 = v86;
        v34 = v87;
        v35 = v88;
        (*(v87 + 16))(v86, v27, v88);
        sub_100799304(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v36 = dispatch thunk of CustomStringConvertible.description.getter();
        v89 = v14;
        v37 = v27;
        v39 = v38;
        (*(v34 + 8))(v33, v35);
        v40 = sub_1000136BC(v36, v39, v91);

        *(v32 + 4) = v40;
        *(v32 + 12) = 2082;
        v41 = v84;
        v42 = sub_10118F894();
        v44 = v43;
        sub_1007A810C(v41, type metadata accessor for BluetoothCommunicationCoordinator.Error);
        v45 = sub_1000136BC(v42, v44, v91);

        *(v32 + 14) = v45;
        v27 = v37;
        v46 = "Failed to fetch metadata for %{public}s.\nError %{public}s";
LABEL_17:
        _os_log_impl(&_mh_execute_header, v30, v31, v46, v32, 0x16u);
        swift_arrayDestroy();

        v81 = v89;
LABEL_19:
        sub_1007A810C(v81, type metadata accessor for BluetoothCommunicationCoordinator.Error);
        goto LABEL_22;
      }
    }

    else
    {
      if (qword_101694910 != -1)
      {
        swift_once();
      }

      v67 = type metadata accessor for Logger();
      sub_1000076D4(v67, qword_10177B2D0);
      v29 = v85;
      sub_1007A7DFC(v14, v85, type metadata accessor for BluetoothCommunicationCoordinator.Error);

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v91[0] = swift_slowAlloc();
        *v32 = 136446466;
        swift_beginAccess();
        v69 = v86;
        v68 = v87;
        v70 = v88;
        (*(v87 + 16))(v86, v27, v88);
        sub_100799304(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v71 = dispatch thunk of CustomStringConvertible.description.getter();
        v89 = v14;
        v72 = v27;
        v74 = v73;
        (*(v68 + 8))(v69, v70);
        v75 = sub_1000136BC(v71, v74, v91);

        *(v32 + 4) = v75;
        *(v32 + 12) = 2082;
        v76 = v85;
        v77 = sub_10118F894();
        v79 = v78;
        sub_1007A810C(v76, type metadata accessor for BluetoothCommunicationCoordinator.Error);
        v80 = sub_1000136BC(v77, v79, v91);

        *(v32 + 14) = v80;
        v27 = v72;
        v46 = "Failed to fetch product info for %{public}s.\nError %{public}s";
        goto LABEL_17;
      }
    }

    sub_1007A810C(v29, type metadata accessor for BluetoothCommunicationCoordinator.Error);
    v81 = v14;
    goto LABEL_19;
  }

  v85 = v23;
  v27 = v24;
  v47 = *v22;
  if (qword_101694910 != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  sub_1000076D4(v48, qword_10177B2D0);

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v92[0] = v84;
    *v51 = 136446210;
    swift_beginAccess();
    v52 = v86;
    v53 = v87;
    v54 = *(v87 + 16);
    v89 = v47;
    v55 = v88;
    v54(v86, v27, v88);
    sub_100799304(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v56 = v17;
    v57 = dispatch thunk of CustomStringConvertible.description.getter();
    v58 = v27;
    v60 = v59;
    v61 = v55;
    v47 = v89;
    (*(v53 + 8))(v52, v61);
    v62 = v57;
    v17 = v56;
    v63 = sub_1000136BC(v62, v60, v92);
    v27 = v58;

    *(v51 + 4) = v63;
    _os_log_impl(&_mh_execute_header, v49, v50, "Successfully fetched product info for %{public}s", v51, 0xCu);
    sub_100007BAC(v84);
  }

  v64 = v85;
  if (*(v47 + 2))
  {
    v65 = type metadata accessor for AccessoryProductInfo(0);
    v66 = *(v65 - 8);
    sub_1007A7DFC(&v47[(*(v66 + 80) + 32) & ~*(v66 + 80)], v17, type metadata accessor for AccessoryProductInfo);

    (*(v66 + 56))(v17, 0, 1, v65);
  }

  else
  {

    v82 = type metadata accessor for AccessoryProductInfo(0);
    (*(*(v82 - 8) + 56))(v17, 1, 1, v82);
  }

  swift_beginAccess();
  sub_10002311C(v17, v27 + *(v64 + 60), &qword_101697268, &qword_101394FE0);
LABEL_22:
  swift_beginAccess();
  return sub_1007A7DFC(v27, v90, type metadata accessor for WildModeAssociationRecord);
}

uint64_t sub_100795C48(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, uint64_t a10)
{
  v77 = a8;
  v81 = a5;
  v82 = a7;
  v80 = a4;
  v14 = sub_1000BC4D4(&qword_1016A9590, &unk_1013BB520);
  __chkstk_darwin(v14);
  v16 = &v73 - v15;
  v17 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v17 - 8);
  v75 = &v73 - v18;
  v19 = type metadata accessor for WildModeTrackingLocation(0);
  v86 = *(v19 - 8);
  v20 = __chkstk_darwin(v19 - 8);
  v87 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v73 - v22;
  v84 = type metadata accessor for WildModeAssociationRecord(0);
  v24 = __chkstk_darwin(v84);
  v26 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24);
  v29 = &v73 - v28;
  __chkstk_darwin(v27);
  v78 = *(a2 + 16);
  v83 = &v73 - v30;
  sub_1007A7DFC(a1, &v73 - v30, type metadata accessor for WildModeAssociationRecord);
  v79 = v29;
  sub_1007A7DFC(a10, v29, type metadata accessor for WildModeAssociationRecord);
  v85 = v26;
  sub_1007A7DFC(a1, v26, type metadata accessor for WildModeAssociationRecord);
  v74 = a3;
  v31 = [a3 type];
  v76 = v16;
  if (v31)
  {
    if (v31 != 1)
    {
      v72 = v31;
      type metadata accessor for TrackingObservationType(0);
      v88[0] = v72;
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return result;
    }

    v32 = 1;
  }

  else
  {
    v32 = 0;
  }

  v33 = v84;
  v34 = v85;
  v85[*(v84 + 24)] = v32;
  v35 = &v34[*(v33 + 48)];

  v36 = v81;
  *v35 = v80;
  v35[1] = v36;
  v35[2] = a6;
  v37 = *(v33 + 32);
  v38 = *&v34[v37];
  v88[0] = v38;

  sub_10039A27C(v39);
  v40 = sub_10112A9D8(v88[0]);

  v41 = v40[2];
  v81 = v37;
  if (v41)
  {
    v42 = sub_1003A87B8(v41, 0);
    v43 = v86;
    v44 = sub_1003AA07C(v88, v42 + ((*(v86 + 80) + 32) & ~*(v86 + 80)), v41, v40);
    sub_1000128F8(v88[0]);
    if (v44 == v41)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v42 = _swiftEmptyArrayStorage;
  v43 = v86;
LABEL_9:
  v80 = v38;
  v82 = v14;
  v45 = v42[2];
  if (v45)
  {
    v46 = 0;
    v47 = _swiftEmptyArrayStorage;
    while (v46 < v42[2])
    {
      v48 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v49 = *(v43 + 72);
      sub_1007A7DFC(v42 + v48 + v49 * v46, v23, type metadata accessor for WildModeTrackingLocation);
      if (sub_1010E16B4())
      {
        sub_1007A810C(v23, type metadata accessor for WildModeTrackingLocation);
      }

      else
      {
        sub_1007A91C8(v23, v87, type metadata accessor for WildModeTrackingLocation);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v88[0] = v47;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_101124B70(0, v47[2] + 1, 1);
          v47 = v88[0];
        }

        v52 = v47[2];
        v51 = v47[3];
        if (v52 >= v51 >> 1)
        {
          sub_101124B70((v51 > 1), v52 + 1, 1);
          v47 = v88[0];
        }

        v47[2] = v52 + 1;
        sub_1007A91C8(v87, v47 + v48 + v52 * v49, type metadata accessor for WildModeTrackingLocation);
        v43 = v86;
      }

      if (v45 == ++v46)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
    v47 = _swiftEmptyArrayStorage;
LABEL_21:

    v53 = swift_isUniquelyReferenced_nonNull_native();
    v87 = a9;
    if (v53)
    {
      goto LABEL_22;
    }
  }

  v47 = sub_100607388(v47);
LABEL_22:
  v54 = v85;
  v55 = v79;
  v56 = v47[2];
  v88[0] = v47 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
  v88[1] = v56;
  sub_1007979C8(v88);
  *(v54 + v81) = v47;
  v57 = v83;
  v58 = v84;
  sub_1001DA61C(v83 + *(v84 + 56), v54 + *(v84 + 56), &qword_1016A62A0, &unk_101396E10);
  sub_1001DA61C(v57 + v58[15], v54 + v58[15], &qword_101697268, &qword_101394FE0);
  *(v54 + v58[9]) = 0;
  v59 = [v74 action];
  if (v59 < 5)
  {
    v60 = (v59 + 1);
  }

  else
  {
    v60 = 0;
  }

  v61 = v75;
  static Date.trustedNow.getter(v75);
  v62 = type metadata accessor for Date();
  v63 = *(*(v62 - 8) + 56);
  v63(v61, 0, 1, v62);
  sub_10002311C(v61, v54 + v58[18], &unk_101696900, &unk_10138B1E0);
  static Date.trustedNow.getter(v61);
  v63(v61, 0, 1, v62);
  sub_1001DE1F0(v61, v60);
  *(v54 + v58[16]) = v60;
  sub_1009F1D18(v54);
  v64 = v77;
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v65 = type metadata accessor for Logger();
  sub_1000076D4(v65, qword_10177BA08);
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    *v68 = 67109120;
    _os_log_impl(&_mh_execute_header, v66, v67, "Requesting SPUnknownBeaconsChangedNotification to be posted. Bypass rate limit? %{BOOL}d", v68, 8u);
  }

  ThrottledDarwinPoster.post(bypassRateLimit:)(0);
  if (v69)
  {
  }

  v70 = v76;
  sub_1007A7DFC(v54, v76, type metadata accessor for WildModeAssociationRecord);
  swift_storeEnumTagMultiPayload();
  sub_100796584(v70, v64, v87, v55);
  sub_10000B3A8(v70, &qword_1016A9590, &unk_1013BB520);
  sub_1007A810C(v55, type metadata accessor for WildModeAssociationRecord);
  sub_1007A810C(v83, type metadata accessor for WildModeAssociationRecord);
  return sub_1007A810C(v54, type metadata accessor for WildModeAssociationRecord);
}

void sub_100796584(uint64_t a1, void (*a2)(uint64_t, void *), uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for WildModeAssociationRecord(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&qword_1016A9590, &unk_1013BB520);
  __chkstk_darwin(v10);
  v12 = (&v21 - v11);
  sub_1000D2A70(a1, &v21 - v11, &qword_1016A9590, &unk_1013BB520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    v14 = static os_log_type_t.error.getter();
    if (qword_1016950B0 != -1)
    {
      swift_once();
    }

    v15 = qword_10177C3F8;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_101385D80;
    v22 = v13;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v17 = String.init<A>(describing:)();
    v19 = v18;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_100008C00();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "Failed to update existing UT record. Error - %@", 47, 2, v16);

    type metadata accessor for TrackingAvoidanceError(0);
    v21 = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError, &unk_101389AA8);
    _BridgedStoredNSError.init(_:userInfo:)();
    v20 = v22;
    a2(a4, v22);
  }

  else
  {
    sub_1007A91C8(v12, v9, type metadata accessor for WildModeAssociationRecord);
    a2(v9, 0);
    sub_1007A810C(v9, type metadata accessor for WildModeAssociationRecord);
  }
}

uint64_t sub_100796878(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v30 = sub_1000BC4D4(&qword_1016A9590, &unk_1013BB520);
  __chkstk_darwin(v30);
  v31 = &v28 - v6;
  v7 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v28 - v8;
  v10 = type metadata accessor for WildModeAssociationRecord(0);
  v11 = (v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v15 + 16);
  v18(v17, a2, v14);
  sub_1007A7DFC(a1, v13, type metadata accessor for WildModeAssociationRecord);
  v13[v11[11]] = 2;
  v19 = v11[13];
  sub_10000B3A8(&v13[v19], &unk_101696900, &unk_10138B1E0);
  v29 = v17;
  v18(&v13[v19], v17, v14);
  v28 = v15;
  v20 = *(v15 + 56);
  v20(&v13[v19], 0, 1, v14);
  static Date.trustedNow.getter(v9);
  v20(v9, 0, 1, v14);
  sub_10002311C(v9, &v13[v11[20]], &unk_101696900, &unk_10138B1E0);
  static Date.trustedNow.getter(v9);
  v20(v9, 0, 1, v14);
  sub_1001DE1F0(v9, 6);
  v13[v11[18]] = 6;
  sub_1009F1D18(v13);
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000076D4(v21, qword_10177BA08);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 67109120;
    _os_log_impl(&_mh_execute_header, v22, v23, "Requesting SPUnknownBeaconsChangedNotification to be posted. Bypass rate limit? %{BOOL}d", v24, 8u);
  }

  ThrottledDarwinPoster.post(bypassRateLimit:)(0);
  if (v25)
  {
  }

  v26 = v31;
  sub_1007A7DFC(v13, v31, type metadata accessor for WildModeAssociationRecord);
  swift_storeEnumTagMultiPayload();
  sub_1007975F0(v26, v32);
  sub_10000B3A8(v26, &qword_1016A9590, &unk_1013BB520);
  (*(v28 + 8))(v29, v14);
  return sub_1007A810C(v13, type metadata accessor for WildModeAssociationRecord);
}

uint64_t sub_100796E08(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v32 = sub_1000BC4D4(&qword_1016A9590, &unk_1013BB520);
  __chkstk_darwin(v32);
  v33 = &v29 - v6;
  v30 = type metadata accessor for WildModeAssociationRecord(0);
  __chkstk_darwin(v30);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v29 - v13;
  v15 = type metadata accessor for Date();
  v16 = *(*(v15 - 8) + 56);
  v16(v14, 1, 1, v15);
  v17 = static os_log_type_t.default.getter();
  if (a2)
  {
    if (a2 == 2)
    {
      v29 = a1;
      if (qword_1016950B0 != -1)
      {
        swift_once();
      }

      v18 = 2;
      os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, qword_10177C3F8, "Got request to ignore forever.", 30, 2, _swiftEmptyArrayStorage, v29);
      static Date.distantFuture.getter();
      sub_10000B3A8(v14, &unk_101696900, &unk_10138B1E0);
      v16(v12, 0, 1, v15);
      sub_1000D2AD8(v12, v14, &unk_101696900, &unk_10138B1E0);
      a1 = v29;
    }

    else if (a2 == 1)
    {
      if (qword_1016950B0 != -1)
      {
        swift_once();
      }

      v18 = 2;
      os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, qword_10177C3F8, "Got request to ignore till end of day.", 38, 2, _swiftEmptyArrayStorage);
      sub_100780EFC(v12);
      sub_10002311C(v12, v14, &unk_101696900, &unk_10138B1E0);
    }

    else
    {
      if (qword_1016950B0 != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, qword_10177C3F8, "No valid option to ignore until.", 32, 2, _swiftEmptyArrayStorage);
      sub_10000B3A8(v14, &unk_101696900, &unk_10138B1E0);
      v16(v14, 1, 1, v15);
      v18 = 4;
    }
  }

  else
  {
    if (qword_1016950B0 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, qword_10177C3F8, "Got request to not ignore this UT. Clearing out ignore.", 55, 2, _swiftEmptyArrayStorage);
    sub_10000B3A8(v14, &unk_101696900, &unk_10138B1E0);
    v18 = 1;
    v16(v14, 1, 1, v15);
  }

  v29 = *(v31 + 2);
  sub_1007A7DFC(a1, v8, type metadata accessor for WildModeAssociationRecord);
  v19 = v30;
  v8[*(v30 + 36)] = v18;
  swift_beginAccess();
  v20 = v19[11];
  sub_10000B3A8(&v8[v20], &unk_101696900, &unk_10138B1E0);
  v31 = v14;
  sub_1000D2A70(v14, &v8[v20], &unk_101696900, &unk_10138B1E0);
  static Date.trustedNow.getter(v12);
  v16(v12, 0, 1, v15);
  sub_10002311C(v12, &v8[v19[18]], &unk_101696900, &unk_10138B1E0);
  static Date.trustedNow.getter(v12);
  v16(v12, 0, 1, v15);
  sub_1001DE1F0(v12, 6);
  v8[v19[16]] = 6;
  sub_1009F1D18(v8);
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000076D4(v21, qword_10177BA08);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 67109120;
    _os_log_impl(&_mh_execute_header, v22, v23, "Requesting SPUnknownBeaconsChangedNotification to be posted. Bypass rate limit? %{BOOL}d", v24, 8u);
  }

  ThrottledDarwinPoster.post(bypassRateLimit:)(0);
  if (v25)
  {
  }

  v26 = v33;
  sub_1007A7DFC(v8, v33, type metadata accessor for WildModeAssociationRecord);
  swift_storeEnumTagMultiPayload();
  sub_1007975F0(v26, v34);
  v27 = v31;
  sub_10000B3A8(v26, &qword_1016A9590, &unk_1013BB520);
  sub_10000B3A8(v27, &unk_101696900, &unk_10138B1E0);
  return sub_1007A810C(v8, type metadata accessor for WildModeAssociationRecord);
}

uint64_t sub_1007975F0(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = sub_1000BC4D4(&qword_1016A9590, &unk_1013BB520);
  __chkstk_darwin(v4);
  v6 = (v17 - v5);
  sub_1000D2A70(a1, v17 - v5, &qword_1016A9590, &unk_1013BB520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *v6;
    v8 = static os_log_type_t.error.getter();
    if (qword_1016950B0 != -1)
    {
      swift_once();
    }

    v9 = qword_10177C3F8;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_101385D80;
    v17[1] = v7;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v11 = String.init<A>(describing:)();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_100008C00();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "Failed to ignore beacon record. Error - %@", 42, 2, v10);

    if (a2)
    {
      swift_errorRetain();
      a2(v7);
    }
  }

  else
  {
    v15 = static os_log_type_t.default.getter();
    if (qword_1016950B0 != -1)
    {
      v16 = v15;
      swift_once();
      v15 = v16;
    }

    os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, qword_10177C3F8, "Successfully ignored beacon record.", 35, 2, _swiftEmptyArrayStorage);
    if (a2)
    {
      a2(0);
    }

    return sub_10000B3A8(v6, &qword_1016A9590, &unk_1013BB520);
  }
}

uint64_t sub_10079786C()
{

  return swift_deallocClassInstance();
}

void sub_1007978E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100008BB8(0, &unk_1016C7F90, SPTrackingAvoidanceResult_ptr);
  sub_100009D18(&qword_1016A9610, &unk_1016C7F90, SPTrackingAvoidanceResult_ptr, &protocol conformance descriptor for NSObject);
  v5.super.isa = Set._bridgeToObjectiveC()().super.isa;
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

Swift::Int sub_1007979C8(uint64_t *a1)
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
        type metadata accessor for WildModeTrackingLocation(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for WildModeTrackingLocation(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100797D58(v8, v9, a1, v4);
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
    return sub_100797AF4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100797AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for WildModeTrackingLocation(0);
  v9 = __chkstk_darwin(v8);
  v35 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v27 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v27 - v16;
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v34 = v18;
    v28 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v32 = v20;
    v33 = a3;
    v30 = v23;
    v31 = v22;
    while (1)
    {
      sub_1007A7DFC(v23, v17, type metadata accessor for WildModeTrackingLocation);
      sub_1007A7DFC(v20, v13, type metadata accessor for WildModeTrackingLocation);
      v24 = static Date.< infix(_:_:)();
      sub_1007A810C(v13, type metadata accessor for WildModeTrackingLocation);
      result = sub_1007A810C(v17, type metadata accessor for WildModeTrackingLocation);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v20 = v32 + v28;
        v22 = v31 - 1;
        v23 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = v35;
      sub_1007A91C8(v23, v35, type metadata accessor for WildModeTrackingLocation);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1007A91C8(v25, v20, type metadata accessor for WildModeTrackingLocation);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100797D58(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v104 = a1;
  v9 = type metadata accessor for WildModeTrackingLocation(0);
  v112 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v107 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v115 = &v100 - v13;
  v14 = __chkstk_darwin(v12);
  v116 = &v100 - v15;
  result = __chkstk_darwin(v14);
  v18 = &v100 - v17;
  v114 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v104;
    if (!*v104)
    {
      goto LABEL_134;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_128:
      result = sub_100B31E68(a4);
    }

    v118 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v114)
      {
        v96 = *(result + 16 * a4);
        v97 = result;
        v98 = *(result + 16 * (a4 - 1) + 40);
        sub_1007986BC(*v114 + *(v112 + 72) * v96, *v114 + *(v112 + 72) * *(result + 16 * (a4 - 1) + 32), *v114 + *(v112 + 72) * v98, v5);
        if (v6)
        {
        }

        if (v98 < v96)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_100B31E68(v97);
        }

        if (a4 - 2 >= *(v97 + 2))
        {
          goto LABEL_122;
        }

        v99 = &v97[16 * a4];
        *v99 = v96;
        *(v99 + 1) = v98;
        v118 = v97;
        sub_100B31DDC(a4 - 1);
        result = v118;
        a4 = *(v118 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v20 = 0;
  v21 = _swiftEmptyArrayStorage;
  v103 = a4;
  v117 = v9;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v108 = v21;
    if (v20 + 1 >= v19)
    {
      v19 = v20 + 1;
    }

    else
    {
      v24 = *(v112 + 72);
      v5 = *v114 + v24 * v23;
      v110 = *v114;
      v25 = v110;
      sub_1007A7DFC(v110 + v24 * v23, v18, type metadata accessor for WildModeTrackingLocation);
      v26 = v25 + v24 * v22;
      v27 = v22;
      v28 = v116;
      sub_1007A7DFC(v26, v116, type metadata accessor for WildModeTrackingLocation);
      LODWORD(v111) = static Date.< infix(_:_:)();
      sub_1007A810C(v28, type metadata accessor for WildModeTrackingLocation);
      result = sub_1007A810C(v18, type metadata accessor for WildModeTrackingLocation);
      v102 = v27;
      v29 = v27 + 2;
      v113 = v24;
      v30 = v110 + v24 * (v27 + 2);
      while (v19 != v29)
      {
        sub_1007A7DFC(v30, v18, type metadata accessor for WildModeTrackingLocation);
        v31 = v116;
        sub_1007A7DFC(v5, v116, type metadata accessor for WildModeTrackingLocation);
        v32 = static Date.< infix(_:_:)() & 1;
        sub_1007A810C(v31, type metadata accessor for WildModeTrackingLocation);
        result = sub_1007A810C(v18, type metadata accessor for WildModeTrackingLocation);
        ++v29;
        v30 += v113;
        v5 += v113;
        if ((v111 & 1) != v32)
        {
          v19 = v29 - 1;
          break;
        }
      }

      v22 = v102;
      a4 = v103;
      if (v111)
      {
        if (v19 < v102)
        {
          goto LABEL_125;
        }

        if (v102 < v19)
        {
          v101 = v6;
          v33 = v113 * (v19 - 1);
          v34 = v19;
          v35 = v19 * v113;
          v111 = v19;
          v36 = v102;
          v37 = v102;
          v38 = v102 * v113;
          do
          {
            if (v36 != --v34)
            {
              v39 = *v114;
              if (!*v114)
              {
                goto LABEL_131;
              }

              v5 = v39 + v38;
              sub_1007A91C8(v39 + v38, v107, type metadata accessor for WildModeTrackingLocation);
              if (v38 < v33 || v5 >= v39 + v35)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v38 != v33)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1007A91C8(v107, v39 + v33, type metadata accessor for WildModeTrackingLocation);
            }

            ++v36;
            v33 -= v113;
            v35 -= v113;
            v38 += v113;
          }

          while (v36 < v34);
          v6 = v101;
          a4 = v103;
          v22 = v37;
          v19 = v111;
        }
      }
    }

    v40 = v114[1];
    if (v19 < v40)
    {
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_124;
      }

      if (v19 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_126;
        }

        if ((v22 + a4) >= v40)
        {
          v41 = v114[1];
        }

        else
        {
          v41 = v22 + a4;
        }

        if (v41 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v19 != v41)
        {
          break;
        }
      }
    }

    v20 = v19;
    if (v19 < v22)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v108;
    }

    else
    {
      result = sub_100A5B430(0, *(v108 + 2) + 1, 1, v108);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v42 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v42 >> 1)
    {
      result = sub_100A5B430((v42 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v43 = &v21[16 * a4];
    *(v43 + 4) = v22;
    *(v43 + 5) = v20;
    v44 = *v104;
    if (!*v104)
    {
      goto LABEL_133;
    }

    if (a4)
    {
      while (1)
      {
        v45 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v46 = *(v21 + 4);
          v47 = *(v21 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_52:
          if (v49)
          {
            goto LABEL_112;
          }

          v62 = &v21[16 * v5];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_115;
          }

          v68 = &v21[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_119;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v72 = &v21[16 * v5];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_66:
        if (v67)
        {
          goto LABEL_114;
        }

        v75 = &v21[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_117;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v45 - 1;
        if (v45 - 1 >= v5)
        {
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
          goto LABEL_127;
        }

        if (!*v114)
        {
          goto LABEL_130;
        }

        v83 = v21;
        v84 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v45 + 40];
        sub_1007986BC(*v114 + *(v112 + 72) * v84, *v114 + *(v112 + 72) * *&v21[16 * v45 + 32], *v114 + *(v112 + 72) * v5, v44);
        if (v6)
        {
        }

        if (v5 < v84)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_100B31E68(v83);
        }

        if (a4 >= *(v83 + 2))
        {
          goto LABEL_109;
        }

        v85 = &v83[16 * a4];
        *(v85 + 4) = v84;
        *(v85 + 5) = v5;
        v118 = v83;
        result = sub_100B31DDC(v45);
        v21 = v118;
        v5 = *(v118 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v21[16 * v5 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_110;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_111;
      }

      v57 = &v21[16 * v5];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_113;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_116;
      }

      if (v61 >= v53)
      {
        v79 = &v21[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_120;
        }

        if (v48 < v82)
        {
          v45 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v114[1];
    a4 = v103;
    if (v20 >= v19)
    {
      goto LABEL_95;
    }
  }

  v101 = v6;
  v86 = v19;
  v87 = v22;
  v88 = *v114;
  v89 = *(v112 + 72);
  v90 = *v114 + v89 * (v19 - 1);
  v91 = -v89;
  v102 = v87;
  v92 = v87 - v19;
  v111 = v86;
  v105 = v89;
  v106 = v41;
  v5 = v88 + v86 * v89;
LABEL_85:
  v109 = v5;
  v110 = v92;
  v113 = v90;
  while (1)
  {
    sub_1007A7DFC(v5, v18, type metadata accessor for WildModeTrackingLocation);
    v93 = v116;
    sub_1007A7DFC(v90, v116, type metadata accessor for WildModeTrackingLocation);
    a4 = static Date.< infix(_:_:)();
    sub_1007A810C(v93, type metadata accessor for WildModeTrackingLocation);
    result = sub_1007A810C(v18, type metadata accessor for WildModeTrackingLocation);
    if ((a4 & 1) == 0)
    {
LABEL_84:
      v20 = v106;
      v90 = v113 + v105;
      v92 = v110 - 1;
      v5 = v109 + v105;
      if (++v111 != v106)
      {
        goto LABEL_85;
      }

      v6 = v101;
      v22 = v102;
      if (v106 < v102)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v88)
    {
      break;
    }

    a4 = type metadata accessor for WildModeTrackingLocation;
    v94 = v115;
    sub_1007A91C8(v5, v115, type metadata accessor for WildModeTrackingLocation);
    swift_arrayInitWithTakeFrontToBack();
    sub_1007A91C8(v94, v90, type metadata accessor for WildModeTrackingLocation);
    v90 += v91;
    v5 += v91;
    if (__CFADD__(v92++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_1007986BC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = type metadata accessor for WildModeTrackingLocation(0);
  v8 = __chkstk_darwin(v45);
  v44 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v43 = &v35 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = a4 + v17;
    if (v17 >= 1)
    {
      v24 = -v13;
      v25 = a4 + v17;
      v39 = a1;
      v40 = a4;
      v38 = -v13;
      do
      {
        v36 = v23;
        v26 = a2;
        v27 = a2 + v24;
        v41 = v26;
        v42 = v27;
        while (1)
        {
          if (v26 <= a1)
          {
            v48 = v26;
            v46 = v36;
            goto LABEL_59;
          }

          v37 = v23;
          v29 = a3 + v24;
          v30 = v25 + v24;
          v31 = v43;
          sub_1007A7DFC(v30, v43, type metadata accessor for WildModeTrackingLocation);
          v32 = v44;
          sub_1007A7DFC(v27, v44, type metadata accessor for WildModeTrackingLocation);
          v33 = static Date.< infix(_:_:)();
          sub_1007A810C(v32, type metadata accessor for WildModeTrackingLocation);
          sub_1007A810C(v31, type metadata accessor for WildModeTrackingLocation);
          if (v33)
          {
            break;
          }

          v23 = v30;
          if (a3 < v25 || v29 >= v25)
          {
            a3 = v29;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v39;
          }

          else
          {
            v34 = a3 == v25;
            a3 = v29;
            a1 = v39;
            if (!v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v30;
          v26 = v41;
          v28 = v30 > v40;
          v27 = v42;
          v24 = v38;
          if (!v28)
          {
            a2 = v41;
            goto LABEL_58;
          }
        }

        if (a3 < v41 || v29 >= v41)
        {
          a3 = v29;
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v38;
          a1 = v39;
          v23 = v37;
        }

        else
        {
          v34 = a3 == v41;
          a3 = v29;
          a2 = v42;
          v24 = v38;
          a1 = v39;
          v23 = v37;
          if (!v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v40);
    }

LABEL_58:
    v48 = a2;
    v46 = v23;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = a3;
        v20 = v43;
        sub_1007A7DFC(a2, v43, type metadata accessor for WildModeTrackingLocation);
        v21 = v44;
        sub_1007A7DFC(a4, v44, type metadata accessor for WildModeTrackingLocation);
        v22 = static Date.< infix(_:_:)();
        sub_1007A810C(v21, type metadata accessor for WildModeTrackingLocation);
        sub_1007A810C(v20, type metadata accessor for WildModeTrackingLocation);
        if (v22)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v13;
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v13;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v48 = a1;
      }

      while (a4 < v42 && a2 < a3);
    }
  }

LABEL_59:
  sub_10060AB8C(&v48, &v47, &v46);
  return 1;
}

void sub_100798BEC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v6 - 8);
  v49 = &v43 - v7;
  v8 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v8 - 8);
  v47 = &v43 - v9;
  v10 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v10 - 8);
  v12 = &v43 - v11;
  v13 = sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  __chkstk_darwin(v13 - 8);
  v15 = &v43 - v14;
  v16 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  v20 = [a1 data];
  v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  sub_100497060(v21, v23, &v51);
  v24 = v52;
  if (v52 >> 60 == 15)
  {
    v25 = static os_log_type_t.error.getter();
    if (qword_1016950B0 != -1)
    {
      v42 = v25;
      swift_once();
      v25 = v42;
    }

    os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, qword_10177C3F8, "received an advertisement of unexpected length or format", 56, 2, _swiftEmptyArrayStorage);
    type metadata accessor for TrackingAvoidanceError(0);
    v50 = 3;
    sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101385D80;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v27;
    *(inited + 48) = 0xD00000000000001ALL;
    *(inited + 56) = 0x800000010135F300;
    sub_10090403C(inited);
    swift_setDeallocating();
    sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
    sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError, &unk_101389AA8);
    _BridgedStoredNSError.init(_:userInfo:)();
    v28 = v51;
    v29 = _convertErrorToNSError(_:)();
    (*(a3 + 16))(a3, 3, v29);
  }

  else
  {
    v45 = a2;
    v46 = a3;
    v30 = v51;
    type metadata accessor for BeaconKeyManager(0);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v31 = type metadata accessor for UUID();
    v32 = 1;
    (*(*(v31 - 8) + 56))(v12, 1, 1, v31);
    v43 = v30;
    v44 = v24;
    v33 = sub_1012DD334(v30, v24, v12);
    v34 = v33[2];
    if (v34)
    {
      sub_1007A7DFC(v33 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * (v34 - 1), v15, type metadata accessor for BeaconKeyManager.IndexInformation);
      v32 = 0;
    }

    sub_10000B3A8(v12, &qword_1016980D0, &unk_10138F3B0);
    (*(v17 + 56))(v15, v32, 1, v16);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      sub_10000B3A8(v15, &unk_1016C1120, &qword_1013C49D0);
      v35 = v46;
    }

    else
    {
      sub_1007A91C8(v15, v19, type metadata accessor for BeaconKeyManager.IndexInformation);
      v36 = v47;
      sub_100AA33AC(v19, v47);
      v37 = type metadata accessor for OwnedBeaconRecord(0);
      if ((*(*(v37 - 8) + 48))(v36, 1, v37) != 1)
      {
        sub_10000B3A8(v36, &unk_1016A9A20, &qword_10138B280);
        (*(v46 + 16))(v46, 0, 0);
        sub_100006654(v43, v44);
        sub_1007A810C(v19, type metadata accessor for BeaconKeyManager.IndexInformation);
        return;
      }

      sub_1007A810C(v19, type metadata accessor for BeaconKeyManager.IndexInformation);
      sub_10000B3A8(v36, &unk_1016A9A20, &qword_10138B280);
      v35 = v46;
    }

    v38 = v49;
    sub_100780A4C(v48, v49);
    v39 = type metadata accessor for Date();
    v40 = (*(*(v39 - 8) + 48))(v38, 1, v39);
    sub_10000B3A8(v38, &unk_101696900, &unk_10138B1E0);
    if (v40 == 1)
    {
      v41 = 3;
    }

    else
    {
      v41 = 2;
    }

    (*(v35 + 16))(v35, v41, 0);
    sub_100006654(v43, v44);
  }
}

uint64_t sub_100799304(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10079936C(uint64_t a1)
{
  v12[3] = type metadata accessor for UnwantedTrackingUserNotification(0);
  v12[4] = &off_1016159B8;
  v2 = sub_1000280DC(v12);
  sub_1007A7DFC(a1, v2, type metadata accessor for UnwantedTrackingUserNotification);
  v3 = objc_allocWithZone(UNUserNotificationCenter);
  v4 = String._bridgeToObjectiveC()();

  v5 = [v3 initWithBundleIdentifier:v4];

  sub_10001F280(v12, v11);
  v6 = swift_allocObject();
  sub_100031694(v11, v6 + 16);
  *(v6 + 56) = v5;
  v10[4] = sub_10079A23C;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100888E9C;
  v10[3] = &unk_101632688;
  v7 = _Block_copy(v10);
  v8 = v5;

  [v8 getDeliveredNotificationsWithCompletionHandler:v7];
  _Block_release(v7);

  return sub_100007BAC(v12);
}

void sub_100799528(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v83 = a3;
  v82 = a1;
  v73 = type metadata accessor for UnwantedTrackingUserNotification(0);
  __chkstk_darwin(v73);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  __chkstk_darwin(v6 - 8);
  v79 = &v63 - v7;
  v78 = type metadata accessor for WildModeAssociationRecord(0);
  v84 = *(v78 - 8);
  __chkstk_darwin(v78);
  v85 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  __chkstk_darwin(v9 - 8);
  v81 = &v63 - v10;
  v11 = type metadata accessor for MACAddress();
  v72 = *(v11 - 8);
  __chkstk_darwin(v11);
  v86 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v14 = qword_10177C398;
    v15 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_10138BBE0;
    v17 = *a2;
    v80 = a2;
    v88 = v17;
    sub_1000BC4D4(&qword_1016A94C0, &qword_1013BB4B8);
    v18 = String.init<A>(describing:)();
    v20 = v19;
    *(v16 + 56) = &type metadata for String;
    v21 = sub_100008C00();
    *(v16 + 32) = v18;
    *(v16 + 40) = v20;
    *(v16 + 96) = &type metadata for String;
    *(v16 + 104) = v21;
    v64 = v21;
    *(v16 + 64) = v21;
    *(v16 + 72) = 0xD00000000000003BLL;
    *(v16 + 80) = 0x800000010135F320;
    os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "%{public}@: %{public}@", 22, 2, v16);

    v22 = static os_log_type_t.default.getter();
    if (qword_1016950B0 != -1)
    {
      swift_once();
    }

    v23 = qword_10177C3F8;
    a2 = swift_allocObject();
    v67 = xmmword_101385D80;
    *(a2 + 16) = xmmword_101385D80;
    v24 = v82;
    if (v82 >> 62)
    {
      v25 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v25 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(a2 + 56) = &type metadata for Int;
    *(a2 + 64) = &protocol witness table for Int;
    *(a2 + 32) = v25;
    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v23, "withdrew %d unauthorized tracking observation(s)", v63);

    v65 = v15;
    v66 = v23;
    if (!(v24 >> 62))
    {
      v27 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v27)
      {
        return;
      }

      goto LABEL_10;
    }

    v27 = _CocoaArrayWrapper.endIndex.getter();
    if (!v27)
    {
      break;
    }

LABEL_10:
    v28 = 0;
    v13 = 0;
    v77 = v24 & 0xC000000000000001;
    v76 = v24 & 0xFFFFFFFFFFFFFF8;
    v74 = (v72 + 6);
    v71 = (v72 + 4);
    v70 = (v84 + 48);
    v75 = v83 + 16;
    ++v72;
    *&v26 = 67109120;
    v68 = v26;
    v69 = v5;
    while (v77)
    {
      v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v30 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_34;
      }

LABEL_14:
      v84 = v29;
      v31 = [v29 trackingIdentifier];
      v32 = [v31 address];

      static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v81;
      MACAddress.init(data:type:)();
      if ((*v74)(v33, 1, v11) == 1)
      {
        sub_10000B3A8(v33, &qword_1016A40D0, &unk_10138BE70);
        v48 = static os_log_type_t.error.getter();
        os_log(_:dso:log:_:_:)(v48, &_mh_execute_header, v66, "received an advertisement of unexpected length or format", 56, 2, _swiftEmptyArrayStorage);
        type metadata accessor for TrackingAvoidanceError(0);
        v87 = 3;
        sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
        inited = swift_initStackObject();
        *(inited + 16) = v67;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 72) = &type metadata for String;
        *(inited + 40) = v50;
        *(inited + 48) = 0xD00000000000001ALL;
        *(inited + 56) = 0x800000010135F300;
        sub_10090403C(inited);
        swift_setDeallocating();
        sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
        sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError, &unk_101389AA8);
        _BridgedStoredNSError.init(_:userInfo:)();
        v51 = v88;
        v52 = _convertErrorToNSError(_:)();
        (*(v83 + 16))(v83, v52);

        return;
      }

      v34 = v86;
      (*v71)(v86, v33, v11);
      v35 = *(v80 + 16);
      v36 = v79;
      sub_10125FD10(v34, v79);
      if ((*v70)(v36, 1, v78) == 1)
      {
        sub_10000B3A8(v36, &unk_1016C7C90, &qword_1013BB4B0);
        v53 = static os_log_type_t.error.getter();
        v54 = swift_allocObject();
        *(v54 + 16) = v67;
        v55 = v86;
        v56 = MACAddress.description.getter();
        v57 = v64;
        *(v54 + 56) = &type metadata for String;
        *(v54 + 64) = v57;
        *(v54 + 32) = v56;
        *(v54 + 40) = v58;
        os_log(_:dso:log:_:_:)(v53, &_mh_execute_header, v66, "wild mode association record for %@ not found!", 46, 2, v54);

        type metadata accessor for TrackingAvoidanceError(0);
        v87 = 10;
        sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
        v59 = swift_initStackObject();
        *(v59 + 16) = v67;
        *(v59 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v59 + 72) = &type metadata for String;
        *(v59 + 40) = v60;
        *(v59 + 48) = 0xD000000000000021;
        *(v59 + 56) = 0x800000010135F3D0;
        sub_10090403C(v59);
        swift_setDeallocating();
        sub_10000B3A8(v59 + 32, &unk_101695C20, &unk_101386D90);
        sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError, &unk_101389AA8);
        _BridgedStoredNSError.init(_:userInfo:)();
        v61 = v88;
        v62 = _convertErrorToNSError(_:)();
        (*(v83 + 16))(v83, v62);

        (*v72)(v55, v11);
        return;
      }

      v37 = v27;
      v38 = v85;
      sub_1007A91C8(v36, v85, type metadata accessor for WildModeAssociationRecord);
      v39 = *(v35 + 168);
      if (qword_101694550 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for URL();
      v41 = sub_1000076D4(v40, qword_10177A8D0);
      v42 = __chkstk_darwin(v41);
      *(&v63 - 4) = v39;
      *(&v63 - 3) = v38;
      *(&v63 - 2) = v42;
      OS_dispatch_queue.sync<A>(execute:)();
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      sub_1000076D4(v43, qword_10177BA08);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();
      v27 = v37;
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = v68;
        _os_log_impl(&_mh_execute_header, v44, v45, "Requesting SPUnknownBeaconsChangedNotification to be posted. Bypass rate limit? %{BOOL}d", v46, 8u);
      }

      ThrottledDarwinPoster.post(bypassRateLimit:)(0);
      v5 = v69;
      if (v13)
      {

        v13 = 0;
      }

      v24 = v82;
      sub_100A8AF58();
      v47 = v73;
      a2 = v85;
      sub_1007A7DFC(v85, &v5[*(v73 + 20)], type metadata accessor for WildModeAssociationRecord);
      *v5 = 2;
      v5[*(v47 + 24)] = 66;
      if (qword_101694EE0 != -1)
      {
        swift_once();
      }

      sub_10079936C(v5);
      (*(v83 + 16))(v83, 0);

      sub_1007A810C(v5, type metadata accessor for UnwantedTrackingUserNotification);
      (*v72)(v86, v11);
      sub_1007A810C(a2, type metadata accessor for WildModeAssociationRecord);
      ++v28;
      if (v30 == v27)
      {
        return;
      }
    }

    if (v28 >= *(v76 + 16))
    {
      goto LABEL_35;
    }

    v29 = *(v24 + 8 * v28 + 32);
    v30 = v28 + 1;
    if (!__OFADD__(v28, 1))
    {
      goto LABEL_14;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
  }
}

uint64_t sub_10079A248(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(char *, uint64_t, uint64_t), void *a5, unsigned int a6, void (*a7)(void *), unint64_t a8)
{
  v10 = v8;
  v256 = a7;
  v252 = a6;
  v250 = a4;
  v242 = a3;
  v241 = a2;
  v258 = a1;
  v251 = v10;
  v240 = *v10;
  v13 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v238 = *(v13 - 8);
  v239 = *(v238 + 64);
  __chkstk_darwin(v13 - 8);
  v248 = &v226 - v14;
  v15 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v16 = __chkstk_darwin(v15 - 8);
  v231 = &v226 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v229 = &v226 - v19;
  __chkstk_darwin(v18);
  v234 = (&v226 - v20);
  v21 = type metadata accessor for MACAddress();
  v259 = *(v21 - 8);
  v260 = v21;
  v22 = __chkstk_darwin(v21);
  v247 = &v226 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v246 = &v226 - v25;
  v26 = __chkstk_darwin(v24);
  v235 = &v226 - v27;
  v28 = __chkstk_darwin(v26);
  v230 = &v226 - v29;
  v30 = __chkstk_darwin(v28);
  v249 = &v226 - v31;
  v237 = v32;
  __chkstk_darwin(v30);
  v34 = &v226 - v33;
  v35 = type metadata accessor for UUID();
  v36 = *(v35 - 8);
  v262 = v35;
  v263 = v36;
  v37 = __chkstk_darwin(v35);
  v245 = &v226 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v253 = &v226 - v40;
  v236 = v41;
  __chkstk_darwin(v39);
  v261 = &v226 - v42;
  v265 = type metadata accessor for WildModeTrackingLocation(0);
  v43 = *(v265 - 8);
  v44 = __chkstk_darwin(v265);
  v264 = (&v226 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = __chkstk_darwin(v44);
  v48 = &v226 - v47;
  __chkstk_darwin(v46);
  v50 = (&v226 - v49);
  v254 = a5;
  v51 = [a5 observedLocations];
  sub_100008BB8(0, &qword_1016B27B0, SPObservationLocation_ptr);
  v52 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v52 >> 62)
  {
    goto LABEL_85;
  }

  for (i = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v257 = a8;
    v255 = v34;
    if (i)
    {
      v267 = _swiftEmptyArrayStorage;
      sub_101124B70(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        goto LABEL_87;
      }

      v9 = 0;
      v54 = v267;
      do
      {
        if ((v52 & 0xC000000000000001) != 0)
        {
          v55 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v55 = *(v52 + 8 * v9 + 32);
        }

        v56 = v55;
        [v55 latitude];
        v58 = v57;
        [v56 longitude];
        v60 = v59;
        [v56 horizontalAccuracy];
        v62 = v61;
        v63 = [v56 timestamp];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        *v50 = v58;
        v50[1] = v60;
        v50[2] = v62;
        v267 = v54;
        v65 = v54[2];
        v64 = v54[3];
        if (v65 >= v64 >> 1)
        {
          sub_101124B70((v64 > 1), v65 + 1, 1);
          v54 = v267;
        }

        ++v9;
        v54[2] = v65 + 1;
        sub_1007A91C8(v50, v54 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v65, type metadata accessor for WildModeTrackingLocation);
      }

      while (i != v9);
    }

    v67 = sub_10112A9D8(v66);

    v68 = v67[2];
    if (v68)
    {
      a8 = sub_1003A87B8(v67[2], 0);
      v69 = sub_1003AA07C(&v267, a8 + ((*(v43 + 80) + 32) & ~*(v43 + 80)), v68, v67);
      sub_1000128F8(v267);
      if (v69 == v68)
      {
        goto LABEL_16;
      }

      __break(1u);
    }

    a8 = _swiftEmptyArrayStorage;
LABEL_16:
    v267 = a8;

    sub_100780E54(&v267);

    v50 = v267;
    v34 = v267[2];
    if (!v34)
    {
      break;
    }

    v70 = 0;
    v71 = _swiftEmptyArrayStorage;
    while (v70 < v50[2])
    {
      v52 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v9 = *(v43 + 72);
      sub_1007A7DFC(v50 + v52 + v9 * v70, v48, type metadata accessor for WildModeTrackingLocation);
      if (sub_1010E16B4())
      {
        sub_1007A810C(v48, type metadata accessor for WildModeTrackingLocation);
      }

      else
      {
        sub_1007A91C8(v48, v264, type metadata accessor for WildModeTrackingLocation);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v267 = v71;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_101124B70(0, v71[2] + 1, 1);
          v71 = v267;
        }

        a8 = v71[2];
        v73 = v71[3];
        v74 = v71;
        if (a8 >= v73 >> 1)
        {
          sub_101124B70((v73 > 1), a8 + 1, 1);
          v74 = v267;
        }

        v74[2] = a8 + 1;
        sub_1007A91C8(v264, v74 + v52 + a8 * v9, type metadata accessor for WildModeTrackingLocation);
        v71 = v74;
      }

      if (v34 == ++v70)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_85:
    ;
  }

  v71 = _swiftEmptyArrayStorage;
LABEL_28:
  v264 = v71;

  v75 = v261;
  UUID.init()();
  if (qword_101694910 != -1)
  {
    swift_once();
  }

  v265 = type metadata accessor for Logger();
  sub_1000076D4(v265, qword_10177B2D0);
  v76 = v263;
  v77 = *(v263 + 16);
  v78 = v253;
  v79 = v75;
  v80 = v262;
  v233 = v263 + 16;
  v232 = v77;
  v77(v253, v79, v262);
  v81 = v259;
  v82 = *(v259 + 16);
  v83 = v255;
  v84 = v260;
  v244 = v259 + 16;
  v243 = v82;
  (v82)(v255, v258, v260);
  v85 = v254;
  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.default.getter();
  v88 = os_log_type_enabled(v86, v87);
  v254 = v85;
  if (v88)
  {
    v228 = v87;
    v89 = v78;
    v90 = swift_slowAlloc();
    v227 = swift_slowAlloc();
    v267 = v227;
    *v90 = 136447234;
    sub_100799304(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v91 = dispatch thunk of CustomStringConvertible.description.getter();
    v93 = v92;
    i = *(v76 + 8);
    (i)(v89, v80);
    v94 = sub_1000136BC(v91, v93, &v267);

    *(v90 + 4) = v94;
    *(v90 + 12) = 2082;
    sub_100799304(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    v95 = dispatch thunk of CustomStringConvertible.description.getter();
    v97 = v96;
    v255 = *(v81 + 8);
    v255(v83, v84);
    v98 = sub_1000136BC(v95, v97, &v267);

    v99 = v252;
    v100 = 0xE500000000000000;
    *(v90 + 14) = v98;
    *(v90 + 22) = 2082;
    v101 = 0x656C707061;
    v102 = 0xE700000000000000;
    v103 = 0x6579656B776168;
    v104 = 0xE400000000000000;
    v105 = 1701602664;
    if (v99 != 3)
    {
      v105 = 0;
      v104 = 0xE000000000000000;
    }

    if (v99 != 2)
    {
      v103 = v105;
      v102 = v104;
    }

    if (v99)
    {
      v101 = 0x6E6169727564;
      v100 = 0xE600000000000000;
    }

    if (v99 <= 1)
    {
      v106 = v101;
    }

    else
    {
      v106 = v103;
    }

    if (v99 <= 1)
    {
      v107 = v100;
    }

    else
    {
      v107 = v102;
    }

    v108 = sub_1000136BC(v106, v107, &v267);

    *(v90 + 24) = v108;
    *(v90 + 32) = 256;
    v109 = v254;
    v110 = [v254 trackingIdentifier];
    LOBYTE(v108) = [v110 networkID];

    *(v90 + 34) = v108;
    *(v90 + 35) = 1024;
    v111 = [v109 trackingIdentifier];
    LODWORD(v108) = [v111 isPosh];

    *(v90 + 37) = v108;
    v85 = v109;

    _os_log_impl(&_mh_execute_header, v86, v228, "Generated synthetic UUID %{public}s for %{public}s\ntype %{public}s networkID: %hhu isPosh: %{BOOL}d", v90, 0x29u);
    swift_arrayDestroy();
  }

  else
  {

    v255 = *(v81 + 8);
    v255(v83, v84);
    i = *(v76 + 8);
    (i)(v78, v80);
  }

  v112 = [v85 trackingIdentifier];
  v113 = [v112 isPosh];

  v114 = [v85 trackingIdentifier];
  v115 = [v114 networkID];

  v116 = [v85 trackingIdentifier];
  v117 = v85;
  v118 = [v116 status];

  if (v115 == 1)
  {
    v119 = 5;
  }

  else
  {
    v119 = 6;
  }

  if (v113)
  {
    v120 = v119;
  }

  else
  {
    v120 = (v118 >> 4) & 3;
  }

  v121 = [v117 trackingIdentifier];
  v122 = [v121 address];

  v48 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v123;

  if (qword_101694918 != -1)
  {
    swift_once();
  }

  v265 = sub_1000076D4(v265, qword_1016A9318);
  v124 = Logger.logObject.getter();
  v125 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v124, v125))
  {
    v126 = swift_slowAlloc();
    v267 = swift_slowAlloc();
    *v126 = 136315394;
    *(v126 + 4) = sub_1000136BC(0xD00000000000006DLL, 0x800000010135FB70, &v267);
    *(v126 + 12) = 2082;
    v127 = sub_100781578(v120);
    v129 = v9;
    v130 = sub_1000136BC(v127, v128, &v267);

    *(v126 + 14) = v130;
    v9 = v129;
    _os_log_impl(&_mh_execute_header, v124, v125, "%s Advertisement type: %{public}s", v126, 0x16u);
    swift_arrayDestroy();
  }

  if (v120 == 4)
  {

    v158 = Logger.logObject.getter();
    v159 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v158, v159))
    {
      v160 = swift_slowAlloc();
      v161 = swift_slowAlloc();
      v267 = v161;
      *v160 = 136315138;
      *(v160 + 4) = sub_1000136BC(0xD00000000000006DLL, 0x800000010135FB70, &v267);
      _os_log_impl(&_mh_execute_header, v158, v159, "%s unexpected advertisement type!", v160, 0xCu);
      sub_100007BAC(v161);

LABEL_76:
    }

LABEL_77:

    v144 = v262;
LABEL_78:
    type metadata accessor for TrackingAvoidanceError(0);
    v266 = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError, &unk_101389AA8);
    _BridgedStoredNSError.init(_:userInfo:)();
    v192 = v267;
    v256(v267);

    sub_100016590(v48, v9);
    return (i)(v261, v144);
  }

  if (v120 != 6)
  {
    sub_100017D5C(v48, v9);
    v162 = Logger.logObject.getter();
    v163 = static os_log_type_t.default.getter();
    sub_100016590(v48, v9);
    if (os_log_type_enabled(v162, v163))
    {
      v164 = swift_slowAlloc();
      v165 = swift_slowAlloc();
      v267 = v165;
      *v164 = 136446210;
      v166 = Data.hexString.getter();
      v168 = v48;
      v169 = sub_1000136BC(v166, v167, &v267);

      *(v164 + 4) = v169;
      v48 = v168;
      _os_log_impl(&_mh_execute_header, v162, v163, "Sanitizing MAC address: %{public}s", v164, 0xCu);
      sub_100007BAC(v165);
    }

    v170 = v259;
    v171 = v235;
    v172 = v234;
    sub_100017D5C(v48, v9);
    MACAddress.init(addressToSanitize:type:)();
    v146 = v260;
    if ((*(v170 + 48))(v172, 1, v260) != 1)
    {
      v253 = v48;
      v173 = v230;
      v234 = *(v170 + 32);
      v234(v230, v172, v146);
      v243(v171, v173, v146);
      v174 = Logger.logObject.getter();
      v175 = static os_log_type_t.default.getter();
      v176 = os_log_type_enabled(v174, v175);
      v235 = ((v170 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000);
      if (v176)
      {
        v177 = swift_slowAlloc();
        v178 = swift_slowAlloc();
        v267 = v178;
        *v177 = 136446210;
        sub_100799304(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
        v179 = dispatch thunk of CustomStringConvertible.description.getter();
        v180 = v171;
        v182 = v181;
        v255(v180, v260);
        v183 = sub_1000136BC(v179, v182, &v267);

        *(v177 + 4) = v183;
        _os_log_impl(&_mh_execute_header, v174, v175, "Sanitized MAC address: %{public}s", v177, 0xCu);
        sub_100007BAC(v178);

        v146 = v260;
      }

      else
      {

        v255(v171, v146);
      }

      v144 = v262;
      v196 = v249;
      v265 = v9;
      v234(v249, v173, v146);
      v149 = v263;
      v147 = v259;
      v195 = v196;
      goto LABEL_83;
    }

    goto LABEL_74;
  }

  if (qword_101694F58 != -1)
  {
LABEL_87:
    swift_once();
  }

  v131 = qword_10177C218;
  v132 = [objc_opt_self() sharedInstance];
  v133 = [v132 isInternalBuild];

  if (!v133 || (v134 = String._bridgeToObjectiveC()(), v135 = [v131 BOOLForKey:v134], v134, !v135))
  {
    sub_100017D5C(v48, v9);
    v172 = v231;
    MACAddress.init(data:type:)();
    v184 = v259;
    v146 = v260;
    if ((*(v259 + 48))(v172, 1, v260) != 1)
    {
      v253 = v48;
      v265 = v9;
      v194 = *(v184 + 32);
      v235 = ((v184 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000);
      v195 = v249;
      v194(v249, v172, v146);
      v147 = v184;
      v144 = v262;
      v149 = v263;
      goto LABEL_83;
    }

LABEL_74:

    sub_10000B3A8(v172, &qword_1016A40D0, &unk_10138BE70);
    sub_100017D5C(v48, v9);
    v158 = Logger.logObject.getter();
    v185 = static os_log_type_t.error.getter();
    sub_100016590(v48, v9);
    if (os_log_type_enabled(v158, v185))
    {
      v186 = swift_slowAlloc();
      v187 = swift_slowAlloc();
      v267 = v187;
      *v186 = 136315138;
      v188 = Data.hexString.getter();
      v190 = i;
      v191 = sub_1000136BC(v188, v189, &v267);

      *(v186 + 4) = v191;
      i = v190;
      _os_log_impl(&_mh_execute_header, v158, v185, "Invalid address %s!", v186, 0xCu);
      sub_100007BAC(v187);

      goto LABEL_76;
    }

    goto LABEL_77;
  }

  sub_100017D5C(v48, v9);
  v136 = Logger.logObject.getter();
  v137 = static os_log_type_t.default.getter();
  sub_100016590(v48, v9);
  if (os_log_type_enabled(v136, v137))
  {
    v138 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    v267 = v139;
    *v138 = 136446210;
    v140 = Data.hexString.getter();
    v142 = v48;
    v143 = sub_1000136BC(v140, v141, &v267);

    *(v138 + 4) = v143;
    v48 = v142;
    _os_log_impl(&_mh_execute_header, v136, v137, "ForceReadingHawkeyeAIS is enabled. Sanitizing MAC address: %{public}s", v138, 0xCu);
    sub_100007BAC(v139);
  }

  v144 = v262;
  v145 = v229;
  sub_100017D5C(v48, v9);
  MACAddress.init(addressToSanitize:type:)();
  v147 = v259;
  v146 = v260;
  v148 = (*(v259 + 48))(v145, 1, v260);
  v149 = v263;
  if (v148 == 1)
  {

    sub_10000B3A8(v145, &qword_1016A40D0, &unk_10138BE70);
    sub_100017D5C(v48, v9);
    v150 = Logger.logObject.getter();
    v151 = static os_log_type_t.error.getter();
    sub_100016590(v48, v9);
    if (os_log_type_enabled(v150, v151))
    {
      v152 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      v267 = v153;
      *v152 = 136315138;
      v154 = Data.hexString.getter();
      v156 = i;
      v157 = sub_1000136BC(v154, v155, &v267);

      *(v152 + 4) = v157;
      i = v156;
      _os_log_impl(&_mh_execute_header, v150, v151, "Invalid address %s!", v152, 0xCu);
      sub_100007BAC(v153);
      v144 = v262;
    }

    goto LABEL_78;
  }

  v253 = v48;
  v265 = v9;
  v197 = *(v147 + 32);
  v235 = ((v147 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000);
  v195 = v249;
  v197(v249, v145, v146);
LABEL_83:
  sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v255 = swift_allocBox();
  v199 = v198;
  v200 = type metadata accessor for AccessoryMetadata(0);
  (*(*(v200 - 8) + 56))(v199, 1, 1, v200);
  sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v234 = swift_allocBox();
  v202 = v201;
  v203 = type metadata accessor for AccessoryProductInfo(0);
  (*(*(v203 - 8) + 56))(v202, 1, 1, v203);
  v204 = swift_allocObject();
  swift_weakInit();
  v232(v245, v261, v144);
  v205 = v243;
  v243(v246, v195, v146);
  sub_1000D2A70(v250, v248, &unk_101698C30, &unk_101392630);
  v205(v247, v258, v146);
  v206 = (*(v149 + 80) + 32) & ~*(v149 + 80);
  v207 = (v236 + v206 + 7) & 0xFFFFFFFFFFFFFFF8;
  v208 = (v207 + 15) & 0xFFFFFFFFFFFFFFF8;
  v209 = *(v147 + 80);
  v210 = (v209 + v208 + 8) & ~v209;
  v236 = (v237 + *(v238 + 80) + v210) & ~*(v238 + 80);
  v238 = (v239 + v209 + v236) & ~v209;
  v244 = (v238 + v237 + 7) & 0xFFFFFFFFFFFFFFF8;
  v243 = ((v238 + v237 + 23) & 0xFFFFFFFFFFFFFFF8);
  v258 = (v243 + 23) & 0xFFFFFFFFFFFFFFF8;
  v239 = (v258 + 23) & 0xFFFFFFFFFFFFFFF8;
  v211 = v147;
  v212 = swift_allocObject();
  *(v212 + 16) = v204;
  v213 = v254;
  *(v212 + 24) = v254;
  (*(v149 + 32))(v212 + v206, v245, v144);
  *(v212 + v207) = v255;
  *(v212 + v208) = v234;
  v214 = *(v211 + 32);
  v215 = v260;
  v214(v212 + v210, v246, v260);
  sub_1000D2AD8(v248, v212 + v236, &unk_101698C30, &unk_101392630);
  v214(v212 + v238, v247, v215);
  v216 = v212 + v244;
  *v216 = v264;
  v217 = v252;
  *(v216 + 8) = v252;
  v218 = (v243 + v212);
  v219 = v241;
  v220 = v242;
  *v218 = v241;
  v218[1] = v220;
  v221 = v257;
  v222 = (v212 + v258);
  *v222 = v256;
  v222[1] = v221;
  *(v212 + v239) = v240;
  v223 = v213;

  sub_100309400(v219, v220);

  v224 = [v223 trackingIdentifier];
  LOBYTE(v221) = [v224 isPosh];

  v225 = v249;
  sub_10078CE7C(v249, v217, v250, v221, sub_1007A8390, v212);

  sub_100016590(v253, v265);
  (*(v259 + 8))(v225, v215);
  (*(v263 + 8))(v261, v262);
}

uint64_t sub_10079C024(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v102 = a5;
  v104 = a4;
  v105 = a3;
  v103 = a1;
  v6 = type metadata accessor for WildModeAssociationRecord(0);
  v7 = __chkstk_darwin(v6);
  v9 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v96 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v96 - v14;
  __chkstk_darwin(v13);
  v17 = &v96 - v16;
  v18 = type metadata accessor for UnwantedTrackingUserNotification(0);
  __chkstk_darwin(v18);
  v20 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  __chkstk_darwin(v21 - 8);
  v23 = &v96 - v22;
  v24 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  __chkstk_darwin(v24 - 8);
  v26 = &v96 - v25;
  if (a2)
  {
    return v105(a2);
  }

  v100 = v23;
  v97 = v18;
  v28 = v105;
  v98 = v20;
  v99 = v15;
  v101 = v9;
  v29 = v103;
  v30 = *(v103 + *(v6 + 64));
  v31 = v6;
  if (v30 > 8 || ((1 << v30) & 0x17B) == 0)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      sub_100A8AF58();
    }
  }

  v32 = static os_log_type_t.default.getter();
  v33 = v12;
  v34 = v17;
  if (qword_1016950B0 != -1)
  {
    v95 = v32;
    swift_once();
    v32 = v95;
  }

  v102 = qword_10177C3F8;
  os_log(_:dso:log:_:_:)(v32, &_mh_execute_header, qword_10177C3F8, "Successfully updated existing UT record.", 40, 2, _swiftEmptyArrayStorage);
  if (*(v29 + v31[13]) == 1)
  {
    v35 = v28;
    v36 = 0;
    v37 = v101;
    v38 = v100;
  }

  else
  {
    sub_1000D2A70(v29 + v31[14], v26, &qword_1016A62A0, &unk_101396E10);
    v39 = type metadata accessor for AccessoryMetadata(0);
    v40 = (*(*(v39 - 8) + 48))(v26, 1, v39);
    sub_10000B3A8(v26, &qword_1016A62A0, &unk_101396E10);
    v38 = v100;
    if (v40 == 1)
    {
      if (qword_101694F58 != -1)
      {
        swift_once();
      }

      v41 = qword_10177C218;
      v42 = [objc_opt_self() sharedInstance];
      v43 = [v42 isInternalBuild];

      v35 = v105;
      if (v43)
      {
        v44 = String._bridgeToObjectiveC()();
        v45 = [v41 BOOLForKey:v44];

        v36 = v45 ^ 1;
      }

      else
      {
        v36 = 1;
      }
    }

    else
    {
      v36 = 0;
      v35 = v105;
    }

    v37 = v101;
  }

  sub_1000D2A70(v29 + v31[15], v38, &qword_101697268, &qword_101394FE0);
  v46 = type metadata accessor for AccessoryProductInfo(0);
  if ((*(*(v46 - 8) + 48))(v38, 1, v46) == 1)
  {
    sub_10000B3A8(v38, &qword_101697268, &qword_101394FE0);
  }

  else
  {
    v47 = *(v38 + *(v46 + 184));
    sub_1007A810C(v38, type metadata accessor for AccessoryProductInfo);
    if (v47 != 2 && (v47 & 1) == 0)
    {
      LODWORD(v98) = 0;
      goto LABEL_35;
    }
  }

  if (v30 <= 3)
  {
    if (v30 == 2)
    {

      if (v36)
      {
LABEL_34:
        LODWORD(v98) = 1;
        goto LABEL_35;
      }

LABEL_28:
      v48 = v97;
      v49 = v98;
      sub_1007A7DFC(v29, &v98[*(v97 + 20)], type metadata accessor for WildModeAssociationRecord);
      *v49 = 2;
      v49[*(v48 + 24)] = 66;
      if (qword_101694EE0 != -1)
      {
        swift_once();
      }

      v108[3] = v48;
      v108[4] = &off_1016159B8;
      v50 = sub_1000280DC(v108);
      sub_1007A7DFC(v49, v50, type metadata accessor for UnwantedTrackingUserNotification);
      v51 = objc_allocWithZone(UNUserNotificationCenter);
      v52 = String._bridgeToObjectiveC()();

      v53 = [v51 initWithBundleIdentifier:v52];

      v54 = sub_10111AFE0(v50);
      UUID.uuidString.getter();
      v55 = v54;
      v56 = String._bridgeToObjectiveC()();

      v57 = [objc_opt_self() requestWithIdentifier:v56 content:v55 trigger:0 destinations:7];

      sub_10001F280(v108, v107);
      v58 = swift_allocObject();
      sub_100031694(v107, v58 + 16);
      *(v58 + 56) = 0;
      *(v58 + 64) = 0;
      aBlock[4] = sub_1007A9F68;
      aBlock[5] = v58;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10077732C;
      aBlock[3] = &unk_101632D40;
      v59 = _Block_copy(aBlock);

      [v53 addNotificationRequest:v57 withCompletionHandler:v59];

      _Block_release(v59);
      sub_100007BAC(v108);
      sub_1007A810C(v49, type metadata accessor for UnwantedTrackingUserNotification);
      goto LABEL_52;
    }

LABEL_33:
    v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v36 & 1 | ((v60 & 1) == 0))
    {
      goto LABEL_34;
    }

    goto LABEL_28;
  }

  if (v30 < 8)
  {
    goto LABEL_33;
  }

  LODWORD(v98) = 1;
LABEL_35:
  v100 = v33;
  if (qword_101694918 != -1)
  {
    swift_once();
  }

  v61 = type metadata accessor for Logger();
  sub_1000076D4(v61, qword_1016A9318);
  sub_1007A7DFC(v29, v34, type metadata accessor for WildModeAssociationRecord);
  v62 = v29;
  v63 = v29;
  v64 = v99;
  sub_1007A7DFC(v62, v99, type metadata accessor for WildModeAssociationRecord);
  v65 = v100;
  sub_1007A7DFC(v63, v100, type metadata accessor for WildModeAssociationRecord);
  sub_1007A7DFC(v63, v37, type metadata accessor for WildModeAssociationRecord);
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v68 = 136447490;
    type metadata accessor for UUID();
    sub_100799304(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v69 = dispatch thunk of CustomStringConvertible.description.getter();
    v71 = v70;
    sub_1007A810C(v34, type metadata accessor for WildModeAssociationRecord);
    v72 = sub_1000136BC(v69, v71, aBlock);

    *(v68 + 4) = v72;
    *(v68 + 12) = 1024;
    *(v68 + 14) = v98;
    *(v68 + 18) = 1024;
    *(v68 + 20) = v36;
    *(v68 + 24) = 2082;
    v73 = *(v64 + v31[13]);
    v74 = 0xE500000000000000;
    v75 = 0x656C707061;
    v76 = 0xE700000000000000;
    v77 = 0x6579656B776168;
    v78 = 0xE400000000000000;
    v79 = 1701602664;
    if (v73 != 3)
    {
      v79 = 7104878;
      v78 = 0xE300000000000000;
    }

    if (v73 != 2)
    {
      v77 = v79;
      v76 = v78;
    }

    if (*(v64 + v31[13]))
    {
      v75 = 0x6E6169727564;
      v74 = 0xE600000000000000;
    }

    if (*(v64 + v31[13]) <= 1u)
    {
      v80 = v75;
    }

    else
    {
      v80 = v77;
    }

    if (*(v64 + v31[13]) <= 1u)
    {
      v81 = v74;
    }

    else
    {
      v81 = v76;
    }

    sub_1007A810C(v64, type metadata accessor for WildModeAssociationRecord);
    v82 = sub_1000136BC(v80, v81, aBlock);

    *(v68 + 26) = v82;
    *(v68 + 34) = 2082;
    type metadata accessor for MACAddress();
    sub_100799304(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    v83 = v100;
    v84 = dispatch thunk of CustomStringConvertible.description.getter();
    v86 = v85;
    sub_1007A810C(v83, type metadata accessor for WildModeAssociationRecord);
    v87 = sub_1000136BC(v84, v86, aBlock);

    *(v68 + 36) = v87;
    *(v68 + 44) = 2082;
    v88 = v101;
    LOBYTE(v108[0]) = v101[v31[16]];
    sub_1000BC4D4(&qword_1016A9630, &qword_1013BB5B8);
    v89 = String.init<A>(describing:)();
    v91 = v90;
    sub_1007A810C(v88, type metadata accessor for WildModeAssociationRecord);
    v92 = sub_1000136BC(v89, v91, aBlock);

    *(v68 + 46) = v92;
    _os_log_impl(&_mh_execute_header, v66, v67, "Not showing UT alert for %{public}s,\nsurfaceUt = %{BOOL}d isUnknown = %{BOOL}d,\ndeviceType = %{public}s\naddress = %{public}s,\nobservationState = %{public}s", v68, 0x36u);
    swift_arrayDestroy();

    v35 = v105;
  }

  else
  {

    sub_1007A810C(v37, type metadata accessor for WildModeAssociationRecord);
    sub_1007A810C(v65, type metadata accessor for WildModeAssociationRecord);
    sub_1007A810C(v64, type metadata accessor for WildModeAssociationRecord);
    sub_1007A810C(v34, type metadata accessor for WildModeAssociationRecord);
    v35 = v105;
  }

LABEL_52:
  v93 = v102;
  v94 = static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)(v94, &_mh_execute_header, v93, "Done waiting for user input", 27, 2, _swiftEmptyArrayStorage);
  return v35(0);
}

uint64_t sub_10079CDF4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(void), void (*a10)(uint64_t, _BYTE *, uint64_t), uint64_t a11, uint64_t a12)
{
  v181 = a8;
  v182 = a2;
  v177 = a6;
  v178 = a7;
  v175 = a4;
  v176 = a5;
  v179 = a12;
  v13 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v13 - 8);
  v143 = &v133[-v14];
  v147 = sub_1000BC4D4(&qword_1016A94D0, &qword_1013BB4C0);
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v144 = &v133[-v15];
  v150 = sub_1000BC4D4(&qword_1016A94D8, &qword_1013BB4C8);
  v148 = *(v150 - 8);
  __chkstk_darwin(v150);
  v145 = &v133[-v16];
  v152 = sub_1000BC4D4(&qword_1016A94E0, &qword_1013BB4D0);
  v151 = *(v152 - 8);
  __chkstk_darwin(v152);
  v149 = &v133[-v17];
  v157 = sub_1000BC4D4(&qword_1016A94E8, &qword_1013BB4D8);
  v154 = *(v157 - 8);
  __chkstk_darwin(v157);
  v153 = &v133[-v18];
  v162 = sub_1000BC4D4(&qword_1016A94F0, &qword_1013BB4E0);
  v160 = *(v162 - 8);
  __chkstk_darwin(v162);
  v156 = &v133[-v19];
  v161 = sub_1000BC4D4(&qword_1016A94F8, &qword_1013BB4E8);
  v159 = *(v161 - 8);
  __chkstk_darwin(v161);
  v155 = &v133[-v20];
  v164 = sub_1000BC4D4(&qword_1016A9500, &qword_1013BB4F0);
  v163 = *(v164 - 8);
  __chkstk_darwin(v164);
  v158 = &v133[-v21];
  v22 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v137 = *(v22 - 8);
  v23 = __chkstk_darwin(v22 - 8);
  v139 = &v133[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v138 = v24;
  __chkstk_darwin(v23);
  v140 = &v133[-v25];
  v26 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  __chkstk_darwin(v26 - 8);
  v168 = &v133[-v27];
  v28 = type metadata accessor for MACAddress();
  v171 = *(v28 - 8);
  v172 = v28;
  v29 = __chkstk_darwin(v28);
  v136 = &v133[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v135 = v30;
  __chkstk_darwin(v29);
  v170 = &v133[-v31];
  v32 = type metadata accessor for WildModeAssociationRecord(0);
  v173 = *(v32 - 8);
  v33 = __chkstk_darwin(v32);
  v167 = &v133[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = __chkstk_darwin(v33);
  v166 = &v133[-v36];
  v174 = v37;
  __chkstk_darwin(v35);
  v39 = &v133[-v38];
  v169 = sub_1000BC4D4(&qword_1016A9508, &qword_1013BB4F8);
  v165 = *(v169 - 1);
  __chkstk_darwin(v169);
  v41 = &v133[-v40];
  v42 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  __chkstk_darwin(v42 - 8);
  v44 = &v133[-v43];
  v45 = swift_allocObject();
  v141 = a9;
  v45[2] = a9;
  v45[3] = a10;
  v180 = v45;
  v46 = v179;
  v45[4] = a11;
  v45[5] = v46;
  sub_1000D2A70(a1 + *(v32 + 56), v44, &qword_1016A62A0, &unk_101396E10);
  v47 = type metadata accessor for AccessoryMetadata(0);
  v48 = (*(*(v47 - 8) + 48))(v44, 1, v47);
  v142 = a10;

  sub_10000B3A8(v44, &qword_1016A62A0, &unk_101396E10);
  if (v48 != 1)
  {
    v63 = a1;
    sub_1007A7DFC(a1, v39, type metadata accessor for WildModeAssociationRecord);
    Just.init(_:)();
    sub_1000041A4(&qword_1016A9588, &qword_1016A9508, &qword_1013BB4F8, &protocol conformance descriptor for Just<A>);
    v64 = v169;
    v65 = Publisher.eraseToAnyPublisher()();
    (*(v165 + 1))(v41, v64);

    v66 = v63;
    v67 = v39;
LABEL_30:
    v183 = v65;
    sub_1007A7DFC(v66, v67, type metadata accessor for WildModeAssociationRecord);
    v125 = (*(v173 + 80) + 80) & ~*(v173 + 80);
    v126 = swift_allocObject();
    v127 = v182;
    v126[2] = v181;
    v126[3] = v127;
    v128 = v176;
    v126[4] = v175;
    v126[5] = v128;
    v129 = v178;
    v126[6] = v177;
    v126[7] = v129;
    v130 = v180;
    v126[8] = sub_1007A923C;
    v126[9] = v130;
    sub_1007A91C8(v67, v126 + v125, type metadata accessor for WildModeAssociationRecord);

    v131 = v127;
    sub_1000BC4D4(&qword_1016A9578, &qword_1013BB518);
    sub_1000041A4(&qword_1016A9580, &qword_1016A9578, &qword_1013BB518, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher<>.sink(receiveValue:)();

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  v169 = v32;
  v165 = v39;
  v179 = a1;
  if (qword_101694910 != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  sub_1000076D4(v49, qword_10177B2D0);
  v50 = v179;
  v51 = v166;
  sub_1007A7DFC(v179, v166, type metadata accessor for WildModeAssociationRecord);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();
  v54 = os_log_type_enabled(v52, v53);
  v55 = v171;
  v56 = v167;
  if (v54)
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v183 = v58;
    *v57 = 136446210;
    type metadata accessor for UUID();
    sub_100799304(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v59 = dispatch thunk of CustomStringConvertible.description.getter();
    v61 = v60;
    sub_1007A810C(v51, type metadata accessor for WildModeAssociationRecord);
    v62 = sub_1000136BC(v59, v61, &v183);

    *(v57 + 4) = v62;
    _os_log_impl(&_mh_execute_header, v52, v53, "Record %{public}s is missing metadata. Attempting to fetch again...", v57, 0xCu);
    sub_100007BAC(v58);
    v50 = v179;
  }

  else
  {

    sub_1007A810C(v51, type metadata accessor for WildModeAssociationRecord);
  }

  v68 = v172;
  if (qword_101694918 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v49, qword_1016A9318);
  sub_1007A7DFC(v50, v56, type metadata accessor for WildModeAssociationRecord);
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v69, v70))
  {

    sub_1007A810C(v56, type metadata accessor for WildModeAssociationRecord);
    goto LABEL_21;
  }

  v71 = swift_slowAlloc();
  v183 = swift_slowAlloc();
  *v71 = 136315394;
  *(v71 + 4) = sub_1000136BC(0xD000000000000068, 0x800000010135F6F0, &v183);
  *(v71 + 12) = 2082;
  v72 = (v56 + v169[22]);
  if (v72[1])
  {
    if (*(v56 + v169[21]))
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if ((*(v56 + v169[21]) & 1) == 0)
  {
LABEL_18:
    v73 = *(v56 + v169[13]);
    goto LABEL_20;
  }

  if (*v72 != 1)
  {
LABEL_19:
    v73 = 6;
    goto LABEL_20;
  }

  v73 = 5;
LABEL_20:
  v74 = sub_100781578(v73);
  v76 = v75;
  sub_1007A810C(v56, type metadata accessor for WildModeAssociationRecord);
  v77 = sub_1000136BC(v74, v76, &v183);

  *(v71 + 14) = v77;
  _os_log_impl(&_mh_execute_header, v69, v70, "%s Advertisement type: %{public}s", v71, 0x16u);
  swift_arrayDestroy();

  v50 = v179;
LABEL_21:
  v78 = v168;
  sub_100307708(v168);
  v79 = (*(v55 + 48))(v78, 1, v68);
  v80 = v182;
  if (v79 != 1)
  {
    v86 = *(v55 + 32);
    v167 = (v55 + 32);
    v142 = v86;
    v86(v170, v78, v68);
    LODWORD(v141) = *(v50 + v169[13]);
    v168 = swift_allocBox();
    sub_1007A7DFC(v50, v87, type metadata accessor for WildModeAssociationRecord);
    v88 = [v80 trackingIdentifier];
    v89 = [v88 isPosh];

    if (v89)
    {
      v90 = [v80 trackingIdentifier];
      v91 = [v90 networkID];

      v92 = 2 * (v91 == 2);
      if (v91 == 1)
      {
        v92 = 1;
      }
    }

    else
    {
      v92 = 3;
    }

    LODWORD(v166) = v92;
    v93 = type metadata accessor for SharedBeaconRecord(0);
    v94 = v140;
    (*(*(v93 - 8) + 56))(v140, 1, 1, v93);
    v134 = *(v50 + v169[21]);
    v95 = v136;
    (*(v55 + 16))(v136, v170, v68);
    v96 = v139;
    sub_1000D2A70(v94, v139, &unk_101698C30, &unk_101392630);
    v97 = v68;
    v98 = (*(v55 + 80) + 24) & ~*(v55 + 80);
    v99 = v98 + v135;
    v100 = (*(v137 + 80) + v98 + v135 + 1) & ~*(v137 + 80);
    v101 = v100 + v138;
    v102 = swift_allocObject();
    v103 = v181;
    *(v102 + 16) = v181;
    v142(v102 + v98, v95, v97);
    *(v102 + v99) = v141;
    sub_1000D2AD8(v96, v102 + v100, &unk_101698C30, &unk_101392630);
    *(v102 + v101) = v134 & 1;
    sub_1000BC4D4(&qword_10169E840, &unk_101406170);
    swift_allocObject();

    v183 = Future.init(_:)();
    v142 = &protocol conformance descriptor for Future<A, B>;
    sub_1000041A4(&unk_1016C7E00, &qword_10169E840, &unk_101406170, &protocol conformance descriptor for Future<A, B>);
    v104 = Publisher.eraseToAnyPublisher()();
    v167 = v104;

    sub_10000B3A8(v94, &unk_101698C30, &unk_101392630);
    v183 = v104;
    v184 = *(v103 + 24);
    v105 = v184;
    v106 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v107 = v143;
    (*(*(v106 - 8) + 56))(v143, 1, 1, v106);
    v108 = v105;
    v141 = v108;
    sub_1000BC4D4(&qword_1016A9518, &qword_1013BB500);
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    sub_1000041A4(&unk_1016C7E10, &qword_1016A9518, &qword_1013BB500, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_100009D18(&qword_1016AF9C0, &qword_101695570, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
    v109 = v144;
    Publisher.receive<A>(on:options:)();
    sub_10000B3A8(v107, &unk_1016B0FE0, &unk_101391980);

    v110 = swift_allocObject();
    *(v110 + 16) = v168;
    *(v110 + 24) = v103;
    *(v110 + 32) = v166;
    v111 = v179;

    static Subscribers.Demand.unlimited.getter();
    sub_1000BC4D4(&qword_1016A9520, &qword_1013BB508);
    sub_1000BC4D4(&qword_1016C7CE0, &unk_10139DA90);
    sub_1000041A4(&qword_1016A9528, &qword_1016A94D0, &qword_1013BB4C0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    sub_1000041A4(&qword_1016A9530, &qword_1016C7CE0, &unk_10139DA90, v142);
    v112 = v145;
    v113 = v147;
    Publisher.flatMap<A, B>(maxPublishers:_:)();

    (*(v146 + 8))(v109, v113);
    sub_1000041A4(&qword_1016A9538, &qword_1016A94D8, &qword_1013BB4C8, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
    v114 = v149;
    v115 = v150;
    Publisher.timeout(_:queue:customError:)();
    (*(v148 + 8))(v112, v115);
    sub_1000BC4D4(&qword_10169E748, &unk_10139DAB0);
    sub_1000041A4(&qword_1016A9540, &qword_1016A94E0, &qword_1013BB4D0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v116 = v153;
    v117 = v152;
    Publisher.map<A>(_:)();
    (*(v151 + 8))(v114, v117);
    sub_1000BC4D4(&qword_1016A9548, &qword_1013BB510);
    sub_1000041A4(&qword_1016A9550, &qword_1016A94E8, &qword_1013BB4D8, &protocol conformance descriptor for Publishers.Map<A, B>);
    sub_1000041A4(&qword_1016A9558, &qword_1016A9548, &qword_1013BB510, &protocol conformance descriptor for Just<A>);
    v118 = v156;
    v119 = v157;
    Publisher.catch<A>(_:)();
    (*(v154 + 8))(v116, v119);
    sub_1000041A4(&qword_1016A9560, &qword_1016A94F0, &qword_1013BB4E0, &protocol conformance descriptor for Publishers.Catch<A, B>);

    v120 = v155;
    v121 = v162;
    Publisher.map<A>(_:)();

    (*(v160 + 8))(v118, v121);
    sub_1000041A4(&qword_1016A9568, &qword_1016A94F8, &qword_1013BB4E8, &protocol conformance descriptor for Publishers.Map<A, B>);
    v122 = v158;
    v123 = v161;
    Publisher.replaceError(with:)();
    (*(v159 + 8))(v120, v123);
    sub_1000041A4(&qword_1016A9570, &qword_1016A9500, &qword_1013BB4F0, &protocol conformance descriptor for Publishers.ReplaceError<A>);
    v124 = v164;
    v65 = Publisher.eraseToAnyPublisher()();

    (*(v163 + 8))(v122, v124);
    (*(v171 + 8))(v170, v172);

    v66 = v111;
    v67 = v165;
    goto LABEL_30;
  }

  sub_10000B3A8(v78, &qword_1016A40D0, &unk_10138BE70);
  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v183 = v84;
    *v83 = 136315138;
    *(v83 + 4) = sub_1000136BC(0xD000000000000068, 0x800000010135F6F0, &v183);
    _os_log_impl(&_mh_execute_header, v81, v82, "%s unexpected advertisement type!", v83, 0xCu);
    sub_100007BAC(v84);
  }

  sub_1007A7D8C();
  swift_allocError();
  *v85 = 1;
  v141();
}

uint64_t sub_10079E7C8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(void), void (*a10)(uint64_t, _BYTE *, uint64_t))
{
  v176 = a8;
  v177 = a2;
  v172 = a6;
  v173 = a7;
  v170 = a4;
  v171 = a5;
  v11 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v11 - 8);
  v140 = &v128[-v12];
  v144 = sub_1000BC4D4(&qword_1016A94D0, &qword_1013BB4C0);
  v143 = *(v144 - 8);
  __chkstk_darwin(v144);
  v141 = &v128[-v13];
  v147 = sub_1000BC4D4(&qword_1016A94D8, &qword_1013BB4C8);
  v145 = *(v147 - 8);
  __chkstk_darwin(v147);
  v142 = &v128[-v14];
  v149 = sub_1000BC4D4(&qword_1016A94E0, &qword_1013BB4D0);
  v148 = *(v149 - 8);
  __chkstk_darwin(v149);
  v146 = &v128[-v15];
  v154 = sub_1000BC4D4(&qword_1016A94E8, &qword_1013BB4D8);
  v151 = *(v154 - 8);
  __chkstk_darwin(v154);
  v150 = &v128[-v16];
  v159 = sub_1000BC4D4(&qword_1016A94F0, &qword_1013BB4E0);
  v157 = *(v159 - 8);
  __chkstk_darwin(v159);
  v153 = &v128[-v17];
  v158 = sub_1000BC4D4(&qword_1016A94F8, &qword_1013BB4E8);
  v156 = *(v158 - 8);
  __chkstk_darwin(v158);
  v152 = &v128[-v18];
  v161 = sub_1000BC4D4(&qword_1016A9500, &qword_1013BB4F0);
  v160 = *(v161 - 8);
  __chkstk_darwin(v161);
  v155 = &v128[-v19];
  v20 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v134 = *(v20 - 8);
  v21 = __chkstk_darwin(v20 - 8);
  v136 = &v128[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v135 = v22;
  __chkstk_darwin(v21);
  v137 = &v128[-v23];
  v24 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  __chkstk_darwin(v24 - 8);
  v164 = &v128[-v25];
  v26 = type metadata accessor for MACAddress();
  v166 = *(v26 - 8);
  v167 = v26;
  v27 = __chkstk_darwin(v26);
  v133 = &v128[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v132 = v28;
  __chkstk_darwin(v27);
  v165 = &v128[-v29];
  v30 = type metadata accessor for WildModeAssociationRecord(0);
  v168 = *(v30 - 1);
  v31 = __chkstk_darwin(v30);
  v163 = &v128[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = __chkstk_darwin(v31);
  v162 = &v128[-v34];
  v169 = v35;
  __chkstk_darwin(v33);
  v37 = &v128[-v36];
  v38 = sub_1000BC4D4(&qword_1016A9508, &qword_1013BB4F8);
  v174 = *(v38 - 8);
  __chkstk_darwin(v38);
  v40 = &v128[-v39];
  v41 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  __chkstk_darwin(v41 - 8);
  v43 = &v128[-v42];
  v44 = swift_allocObject();
  v138 = a9;
  *(v44 + 16) = a9;
  *(v44 + 24) = a10;
  v175 = v44;
  sub_1000D2A70(a1 + v30[14], v43, &qword_1016A62A0, &unk_101396E10);
  v45 = type metadata accessor for AccessoryMetadata(0);
  v46 = (*(*(v45 - 8) + 48))(v43, 1, v45);
  v139 = a10;

  sub_10000B3A8(v43, &qword_1016A62A0, &unk_101396E10);
  if (v46 != 1)
  {
    sub_1007A7DFC(a1, v37, type metadata accessor for WildModeAssociationRecord);
    Just.init(_:)();
    sub_1000041A4(&qword_1016A9588, &qword_1016A9508, &qword_1013BB4F8, &protocol conformance descriptor for Just<A>);
    v60 = Publisher.eraseToAnyPublisher()();
    (*(v174 + 8))(v40, v38);

    v61 = a1;
    v62 = v37;
LABEL_30:
    v178 = v60;
    sub_1007A7DFC(v61, v62, type metadata accessor for WildModeAssociationRecord);
    v120 = (*(v168 + 80) + 80) & ~*(v168 + 80);
    v121 = swift_allocObject();
    v122 = v177;
    v121[2] = v176;
    v121[3] = v122;
    v123 = v171;
    v121[4] = v170;
    v121[5] = v123;
    v124 = v173;
    v121[6] = v172;
    v121[7] = v124;
    v125 = v175;
    v121[8] = sub_1007A9F64;
    v121[9] = v125;
    sub_1007A91C8(v62, v121 + v120, type metadata accessor for WildModeAssociationRecord);

    v126 = v122;
    sub_1000BC4D4(&qword_1016A9578, &qword_1013BB518);
    sub_1000041A4(&qword_1016A9580, &qword_1016A9578, &qword_1013BB518, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher<>.sink(receiveValue:)();

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  v131 = v37;
  v174 = a1;
  if (qword_101694910 != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  sub_1000076D4(v47, qword_10177B2D0);
  v48 = v174;
  v49 = v162;
  sub_1007A7DFC(v174, v162, type metadata accessor for WildModeAssociationRecord);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  v52 = os_log_type_enabled(v50, v51);
  v53 = v163;
  if (v52)
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v178 = v55;
    *v54 = 136446210;
    type metadata accessor for UUID();
    sub_100799304(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v56 = dispatch thunk of CustomStringConvertible.description.getter();
    v58 = v57;
    sub_1007A810C(v49, type metadata accessor for WildModeAssociationRecord);
    v59 = sub_1000136BC(v56, v58, &v178);

    *(v54 + 4) = v59;
    _os_log_impl(&_mh_execute_header, v50, v51, "Record %{public}s is missing metadata. Attempting to fetch again...", v54, 0xCu);
    sub_100007BAC(v55);
    v48 = v174;
  }

  else
  {

    sub_1007A810C(v49, type metadata accessor for WildModeAssociationRecord);
  }

  v63 = v164;
  if (qword_101694918 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v47, qword_1016A9318);
  sub_1007A7DFC(v48, v53, type metadata accessor for WildModeAssociationRecord);
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v64, v65))
  {

    sub_1007A810C(v53, type metadata accessor for WildModeAssociationRecord);
    goto LABEL_21;
  }

  v66 = swift_slowAlloc();
  v178 = swift_slowAlloc();
  *v66 = 136315394;
  *(v66 + 4) = sub_1000136BC(0xD000000000000068, 0x800000010135F6F0, &v178);
  *(v66 + 12) = 2082;
  v67 = (v53 + v30[22]);
  if (v67[1])
  {
    if (*(v53 + v30[21]))
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if ((*(v53 + v30[21]) & 1) == 0)
  {
LABEL_18:
    v68 = *(v53 + v30[13]);
    goto LABEL_20;
  }

  if (*v67 != 1)
  {
LABEL_19:
    v68 = 6;
    goto LABEL_20;
  }

  v68 = 5;
LABEL_20:
  v69 = sub_100781578(v68);
  v71 = v70;
  sub_1007A810C(v53, type metadata accessor for WildModeAssociationRecord);
  v72 = sub_1000136BC(v69, v71, &v178);

  *(v66 + 14) = v72;
  _os_log_impl(&_mh_execute_header, v64, v65, "%s Advertisement type: %{public}s", v66, 0x16u);
  swift_arrayDestroy();

  v48 = v174;
LABEL_21:
  sub_100307708(v63);
  v74 = v166;
  v73 = v167;
  v75 = (*(v166 + 48))(v63, 1, v167);
  v76 = v177;
  if (v75 != 1)
  {
    v82 = *(v74 + 32);
    v163 = (v74 + 32);
    v139 = v82;
    v82(v165, v63, v73);
    LODWORD(v138) = *(v48 + v30[13]);
    v164 = swift_allocBox();
    sub_1007A7DFC(v48, v83, type metadata accessor for WildModeAssociationRecord);
    v84 = [v76 trackingIdentifier];
    v85 = [v84 isPosh];

    if (v85)
    {
      v86 = [v76 trackingIdentifier];
      v87 = [v86 networkID];

      v88 = 2 * (v87 == 2);
      if (v87 == 1)
      {
        v88 = 1;
      }
    }

    else
    {
      v88 = 3;
    }

    LODWORD(v162) = v88;
    v89 = type metadata accessor for SharedBeaconRecord(0);
    v90 = v137;
    (*(*(v89 - 8) + 56))(v137, 1, 1, v89);
    v130 = v30;
    v129 = *(v174 + v30[21]);
    v91 = v133;
    (*(v74 + 16))(v133, v165, v73);
    v92 = v136;
    sub_1000D2A70(v90, v136, &unk_101698C30, &unk_101392630);
    v93 = (*(v74 + 80) + 24) & ~*(v74 + 80);
    v94 = v93 + v132;
    v95 = (*(v134 + 80) + v93 + v132 + 1) & ~*(v134 + 80);
    v96 = v95 + v135;
    v97 = swift_allocObject();
    v98 = v176;
    *(v97 + 16) = v176;
    v139(v97 + v93, v91, v73);
    *(v97 + v94) = v138;
    sub_1000D2AD8(v92, v97 + v95, &unk_101698C30, &unk_101392630);
    *(v97 + v96) = v129 & 1;
    sub_1000BC4D4(&qword_10169E840, &unk_101406170);
    swift_allocObject();

    v178 = Future.init(_:)();
    v139 = &protocol conformance descriptor for Future<A, B>;
    sub_1000041A4(&unk_1016C7E00, &qword_10169E840, &unk_101406170, &protocol conformance descriptor for Future<A, B>);
    v99 = Publisher.eraseToAnyPublisher()();
    v163 = v99;

    sub_10000B3A8(v90, &unk_101698C30, &unk_101392630);
    v178 = v99;
    v101 = v98;
    v179 = *(v98 + 24);
    v100 = v179;
    v102 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v103 = v140;
    (*(*(v102 - 8) + 56))(v140, 1, 1, v102);
    v104 = v100;
    v138 = v104;
    sub_1000BC4D4(&qword_1016A9518, &qword_1013BB500);
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    sub_1000041A4(&unk_1016C7E10, &qword_1016A9518, &qword_1013BB500, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_100009D18(&qword_1016AF9C0, &qword_101695570, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
    v105 = v141;
    Publisher.receive<A>(on:options:)();
    sub_10000B3A8(v103, &unk_1016B0FE0, &unk_101391980);

    v106 = swift_allocObject();
    *(v106 + 16) = v164;
    *(v106 + 24) = v101;
    *(v106 + 32) = v162;

    static Subscribers.Demand.unlimited.getter();
    sub_1000BC4D4(&qword_1016A9520, &qword_1013BB508);
    sub_1000BC4D4(&qword_1016C7CE0, &unk_10139DA90);
    sub_1000041A4(&qword_1016A9528, &qword_1016A94D0, &qword_1013BB4C0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    sub_1000041A4(&qword_1016A9530, &qword_1016C7CE0, &unk_10139DA90, v139);
    v107 = v142;
    v108 = v144;
    Publisher.flatMap<A, B>(maxPublishers:_:)();

    (*(v143 + 8))(v105, v108);
    sub_1000041A4(&qword_1016A9538, &qword_1016A94D8, &qword_1013BB4C8, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
    v109 = v146;
    v110 = v147;
    Publisher.timeout(_:queue:customError:)();
    (*(v145 + 8))(v107, v110);
    sub_1000BC4D4(&qword_10169E748, &unk_10139DAB0);
    sub_1000041A4(&qword_1016A9540, &qword_1016A94E0, &qword_1013BB4D0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v111 = v150;
    v112 = v149;
    Publisher.map<A>(_:)();
    (*(v148 + 8))(v109, v112);
    sub_1000BC4D4(&qword_1016A9548, &qword_1013BB510);
    sub_1000041A4(&qword_1016A9550, &qword_1016A94E8, &qword_1013BB4D8, &protocol conformance descriptor for Publishers.Map<A, B>);
    sub_1000041A4(&qword_1016A9558, &qword_1016A9548, &qword_1013BB510, &protocol conformance descriptor for Just<A>);
    v113 = v153;
    v114 = v154;
    Publisher.catch<A>(_:)();
    (*(v151 + 8))(v111, v114);
    sub_1000041A4(&qword_1016A9560, &qword_1016A94F0, &qword_1013BB4E0, &protocol conformance descriptor for Publishers.Catch<A, B>);

    v115 = v152;
    v116 = v159;
    v61 = v174;
    Publisher.map<A>(_:)();

    (*(v157 + 8))(v113, v116);
    sub_1000041A4(&qword_1016A9568, &qword_1016A94F8, &qword_1013BB4E8, &protocol conformance descriptor for Publishers.Map<A, B>);
    v117 = v155;
    v118 = v158;
    Publisher.replaceError(with:)();
    (*(v156 + 8))(v115, v118);
    sub_1000041A4(&qword_1016A9570, &qword_1016A9500, &qword_1013BB4F0, &protocol conformance descriptor for Publishers.ReplaceError<A>);
    v119 = v161;
    v60 = Publisher.eraseToAnyPublisher()();

    (*(v160 + 8))(v117, v119);
    (*(v166 + 8))(v165, v167);

    v62 = v131;
    goto LABEL_30;
  }

  sub_10000B3A8(v63, &qword_1016A40D0, &unk_10138BE70);
  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v178 = v80;
    *v79 = 136315138;
    *(v79 + 4) = sub_1000136BC(0xD000000000000068, 0x800000010135F6F0, &v178);
    _os_log_impl(&_mh_execute_header, v77, v78, "%s unexpected advertisement type!", v79, 0xCu);
    sub_100007BAC(v80);
  }

  sub_1007A7D8C();
  swift_allocError();
  *v81 = 1;
  v138();
}

void sub_1007A0164(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1007A7FC8;
  *(v7 + 24) = v6;
  _Block_copy(a3);

  v8 = sub_10112C948(a1);
  if (!v8)
  {
    if (qword_101694910 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_10177B2D0);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Empty observations!", v20, 2u);
    }

    if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
    {
      sub_100B134FC(_swiftEmptyArrayStorage);
    }

    type metadata accessor for TrackingAvoidanceError(0);
    v62 = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError, &unk_101389AA8);
    _BridgedStoredNSError.init(_:userInfo:)();
    sub_100008BB8(0, &unk_1016C7F90, SPTrackingAvoidanceResult_ptr);
    sub_100009D18(&qword_1016A9610, &unk_1016C7F90, SPTrackingAvoidanceResult_ptr, &protocol conformance descriptor for NSObject);
    isa = Set._bridgeToObjectiveC()().super.isa;
    v22 = _convertErrorToNSError(_:)();
    (a3)[2](a3, isa, v22);

    return;
  }

  v9 = v8;
  if (qword_101694910 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000076D4(v10, qword_10177B2D0);

  v11 = v9;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = &selRef_initWithBeaconAdvertisements_searchResultMarker_error_;
  if (!os_log_type_enabled(v12, v13))
  {

    goto LABEL_32;
  }

  v59 = a2;
  v15 = swift_slowAlloc();
  v61[0] = swift_slowAlloc();
  *v15 = 134218498;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v16 = __CocoaSet.count.getter();
  }

  else
  {
    v16 = *(a1 + 16);
  }

  *(v15 + 4) = v16;

  *(v15 + 12) = 2082;
  v23 = [v11 action];
  aBlock = a3;
  if (v23 <= 1)
  {
    if (!v23)
    {
      v24 = v7;
      v25 = 0xE700000000000000;
      v26 = 0x6465676174732ELL;
      goto LABEL_27;
    }

    if (v23 == 1)
    {
      v24 = v7;
      v25 = 0xE700000000000000;
      v26 = 0x796669746F6E2ELL;
      goto LABEL_27;
    }

LABEL_26:
    v24 = v7;
    v25 = 0xE800000000000000;
    v26 = 0x6E776F6E6B6E752ELL;
    goto LABEL_27;
  }

  if (v23 == 2)
  {
    v24 = v7;
    v25 = 0xE700000000000000;
    v26 = 0x6574616470752ELL;
    goto LABEL_27;
  }

  if (v23 == 3)
  {
    v24 = v7;
    v26 = 0x65676174736E752ELL;
    v25 = 0xE900000000000064;
    goto LABEL_27;
  }

  if (v23 != 4)
  {
    goto LABEL_26;
  }

  v24 = v7;
  v25 = 0xE900000000000077;
  v26 = 0x617264687469772ELL;
LABEL_27:
  v27 = sub_1000136BC(v26, v25, v61);

  *(v15 + 14) = v27;
  *(v15 + 22) = 2082;
  v28 = [v11 type];

  if (!v28)
  {
    v29 = 0xE800000000000000;
    v30 = 0x746C75616665642ELL;
LABEL_31:
    v31 = sub_1000136BC(v30, v29, v61);

    *(v15 + 24) = v31;
    _os_log_impl(&_mh_execute_header, v12, v13, "Observed [%ld] observations. Action: %{public}s. Type: %{public}s.", v15, 0x20u);
    swift_arrayDestroy();

    v7 = v24;
    a3 = aBlock;
    v14 = &selRef_initWithBeaconAdvertisements_searchResultMarker_error_;
LABEL_32:
    if ([v11 v14[121]] == 1)
    {
      My = type metadata accessor for Feature.FindMy();
      v61[3] = My;
      v61[4] = sub_100799304(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
      v33 = sub_1000280DC(v61);
      (*(*(My - 8) + 104))(v33, enum case for Feature.FindMy.beepOnMove(_:), My);
      LOBYTE(My) = isFeatureEnabled(_:)();
      sub_100007BAC(v61);
      if ((My & 1) == 0)
      {
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&_mh_execute_header, v41, v42, "Internal Settings -> Feature Flags -> FindMy -> beepOnMove is disabled.", v43, 2u);
        }

        if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
        {
          sub_100B134FC(_swiftEmptyArrayStorage);
        }

        type metadata accessor for TrackingAvoidanceError(0);
        v62 = 6;
        sub_100032898(_swiftEmptyArrayStorage);
        sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError, &unk_101389AA8);
        _BridgedStoredNSError.init(_:userInfo:)();
        v44 = v61[0];
        sub_100008BB8(0, &unk_1016C7F90, SPTrackingAvoidanceResult_ptr);
        sub_100009D18(&qword_1016A9610, &unk_1016C7F90, SPTrackingAvoidanceResult_ptr, &protocol conformance descriptor for NSObject);
        v45.super.isa = Set._bridgeToObjectiveC()().super.isa;
        v46 = _convertErrorToNSError(_:)();
        (a3)[2](a3, v45.super.isa, v46);

        goto LABEL_62;
      }

      if (qword_101694940 != -1)
      {
        swift_once();
      }

      OS_dispatch_queue.sync<A>(execute:)();
      v34 = sub_101074654(v61[0]);

      if ((v34 & 1) == 0)
      {
        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          *v49 = 0;
          _os_log_impl(&_mh_execute_header, v47, v48, "isBeepOnMoveEnabled is false. Skipping observations.", v49, 2u);
        }

        if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
        {
          sub_100B134FC(_swiftEmptyArrayStorage);
        }

        type metadata accessor for TrackingAvoidanceError(0);
        v62 = 6;
        sub_100032898(_swiftEmptyArrayStorage);
        sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError, &unk_101389AA8);
        _BridgedStoredNSError.init(_:userInfo:)();
        v50 = v61[0];
        sub_100008BB8(0, &unk_1016C7F90, SPTrackingAvoidanceResult_ptr);
        sub_100009D18(&qword_1016A9610, &unk_1016C7F90, SPTrackingAvoidanceResult_ptr, &protocol conformance descriptor for NSObject);
        v45.super.isa = Set._bridgeToObjectiveC()().super.isa;
        v46 = _convertErrorToNSError(_:)();
        (a3)[2](a3, v45.super.isa, v46);

        goto LABEL_63;
      }
    }

    v35 = [v11 action];
    if (v35 <= 1)
    {
      if (v35)
      {
        if (v35 == 1)
        {
          v38 = sub_1003A8C04(a1);
          v39 = swift_allocObject();
          v39[2] = sub_1007A7FD0;
          v39[3] = v7;
          v39[4] = v11;
          v40 = v11;

          sub_100786378(v38, sub_1007A8020, v39);

          goto LABEL_56;
        }

        goto LABEL_57;
      }

      v53 = swift_allocObject();
      v53[2] = sub_1007A7FD0;
      v53[3] = v7;
      v53[4] = v11;
      v52 = v11;

      sub_1007871F0(v52, sub_1007A9F88, v53);
    }

    else
    {
      if (v35 != 2 && v35 != 3)
      {
        if (v35 == 4)
        {
          v36 = sub_1003A8C04(a1);
          v37 = swift_allocObject();
          *(v37 + 16) = sub_1007A7FC8;
          *(v37 + 24) = v6;

          sub_100781FD8(v36, sub_1007A7FD8, v37);

LABEL_56:

          return;
        }

LABEL_57:
        v54 = v11;
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          *v57 = 134217984;
          *(v57 + 4) = [v54 action];

          _os_log_impl(&_mh_execute_header, v55, v56, "Unknown action %ld", v57, 0xCu);
        }

        else
        {

          v55 = v54;
        }

        if (_swiftEmptyArrayStorage >> 62)
        {
          if (_CocoaArrayWrapper.endIndex.getter())
          {
            sub_100B134FC(_swiftEmptyArrayStorage);
          }
        }

        type metadata accessor for TrackingAvoidanceError(0);
        v62 = 1;
        sub_100032898(_swiftEmptyArrayStorage);
        sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError, &unk_101389AA8);
        _BridgedStoredNSError.init(_:userInfo:)();
        v58 = v61[0];
        sub_100008BB8(0, &unk_1016C7F90, SPTrackingAvoidanceResult_ptr);
        sub_100009D18(&qword_1016A9610, &unk_1016C7F90, SPTrackingAvoidanceResult_ptr, &protocol conformance descriptor for NSObject);
        v45.super.isa = Set._bridgeToObjectiveC()().super.isa;
        v46 = _convertErrorToNSError(_:)();
        (a3)[2](a3, v45.super.isa, v46);

LABEL_62:

LABEL_63:

        return;
      }

      v51 = swift_allocObject();
      v51[2] = sub_1007A7FD0;
      v51[3] = v7;
      v51[4] = v11;
      v52 = v11;

      sub_10078F774(v52, sub_1007A9F88, v51);
    }

    goto LABEL_56;
  }

  if (v28 == 1)
  {
    v29 = 0xEB0000000065766FLL;
    v30 = 0x4D6E4F706565622ELL;
    goto LABEL_31;
  }

  type metadata accessor for TrackingObservationType(0);
  _Block_release(aBlock);
  v62 = v28;
  _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
}

uint64_t sub_1007A10A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v133 = a1;
  v134 = a4;
  v132 = a3;
  v8 = a2;
  v9 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  __chkstk_darwin(v9 - 8);
  v126 = &v101 - v10;
  v11 = type metadata accessor for AccessoryMetadata(0);
  v124 = *(v11 - 8);
  v125 = v11;
  __chkstk_darwin(v11);
  v104 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_1000BC4D4(&unk_1016A99C0, &unk_1013BB530);
  __chkstk_darwin(v128);
  v129 = (&v101 - v13);
  v103 = sub_1000BC4D4(&qword_1016A9598, &qword_1013BB550);
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v101 = &v101 - v14;
  v114 = sub_1000BC4D4(&qword_1016A95A0, &qword_1013BB558);
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v110 = &v101 - v15;
  v119 = sub_1000BC4D4(&qword_1016A95A8, &qword_1013BB560);
  v117 = *(v119 - 8);
  __chkstk_darwin(v119);
  v115 = &v101 - v16;
  v17 = sub_1000BC4D4(&qword_1016A95B0, &qword_1013BB568);
  v122 = *(v17 - 8);
  v123 = v17;
  __chkstk_darwin(v17);
  v121 = &v101 - v18;
  v108 = type metadata accessor for MACAddress();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v105 = v19;
  v106 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_1000BC4D4(&qword_1016A95B8, &qword_1013BB570);
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v109 = &v101 - v20;
  v120 = sub_1000BC4D4(&qword_1016A95C0, &qword_1013BB578);
  v118 = *(v120 - 8);
  __chkstk_darwin(v120);
  v116 = &v101 - v21;
  v22 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  __chkstk_darwin(v22 - 8);
  v24 = &v101 - v23;
  v25 = type metadata accessor for SharedBeaconRecord(0);
  v26 = *(v25 - 8);
  v27 = __chkstk_darwin(v25);
  v29 = &v101 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v27);
  v32 = &v101 - v31;
  v33 = __chkstk_darwin(v30);
  v35 = &v101 - v34;
  __chkstk_darwin(v33);
  v127 = &v101 - v36;
  v37 = swift_allocObject();
  v130 = a5;
  *(v37 + 16) = a5;
  *(v37 + 24) = a6;
  v135 = v37;
  v38 = sub_100B133C0(&off_101609F38);
  LOBYTE(a5) = sub_1011204C8(v8, v38);
  v131 = a6;

  if (a5)
  {
LABEL_15:
    if (v8 > 1u)
    {
      if (v8 == 2)
      {
        v66 = swift_allocObject();
        swift_weakInit();
        v67 = v107;
        v68 = v106;
        v69 = v108;
        (*(v107 + 16))(v106, v133, v108);
        v70 = (*(v67 + 80) + 16) & ~*(v67 + 80);
        v71 = (v105 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
        v72 = swift_allocObject();
        (*(v67 + 32))(v72 + v70, v68, v69);
        *(v72 + v71) = v66;
        sub_1000BC4D4(&qword_10169E840, &unk_101406170);
        swift_allocObject();
        v136[0] = Future.init(_:)();
        sub_1000041A4(&unk_1016C7E00, &qword_10169E840, &unk_101406170, &protocol conformance descriptor for Future<A, B>);
        v73 = Publisher.eraseToAnyPublisher()();

        v136[0] = v73;
        sub_1000BC4D4(&qword_1016A9518, &qword_1013BB500);
        sub_1000041A4(&unk_1016C7E10, &qword_1016A9518, &qword_1013BB500, &protocol conformance descriptor for AnyPublisher<A, B>);
        v74 = v109;
        Publisher.timeout(_:queue:customError:)();

        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        sub_1000041A4(&qword_1016A95F0, &qword_1016A95B8, &qword_1013BB570, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
        v75 = v116;
        v76 = v112;
        Publisher.mapError<A>(_:)();
        (*(v111 + 8))(v74, v76);
        v77 = swift_allocObject();
        v78 = v135;
        *(v77 + 16) = sub_1007A9FB4;
        *(v77 + 24) = v78;
        sub_1000041A4(&qword_1016A95F8, &qword_1016A95C0, &qword_1013BB578, &protocol conformance descriptor for Publishers.MapError<A, B>);

        v79 = v120;
        Publisher.oneshot(_:)();

        v80 = v118;
      }

      else
      {
        v136[0] = sub_10035B054();
        type metadata accessor for BluetoothCommunicationCoordinator.Error(0);
        sub_1000BC4D4(&unk_1016C7D70, &qword_1013BB580);
        sub_1000041A4(&qword_1016A95C8, &unk_1016C7D70, &qword_1013BB580, &protocol conformance descriptor for AnyPublisher<A, B>);
        sub_100799304(&qword_1016A95D0, type metadata accessor for BluetoothCommunicationCoordinator.Error, &unk_101409F40);
        v86 = v110;
        Publisher<>.setFailureType<A>(to:)();

        sub_1000041A4(&qword_1016A95D8, &qword_1016A95A0, &qword_1013BB558, &protocol conformance descriptor for Publishers.SetFailureType<A, B>);
        v87 = v115;
        v88 = v114;
        Publisher.timeout(_:queue:customError:)();
        (*(v113 + 8))(v86, v88);
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        sub_1000041A4(&qword_1016A95E0, &qword_1016A95A8, &qword_1013BB560, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
        v75 = v121;
        v89 = v119;
        Publisher.mapError<A>(_:)();
        (*(v117 + 8))(v87, v89);
        v90 = swift_allocObject();
        v91 = v135;
        *(v90 + 16) = sub_1007A9FB4;
        *(v90 + 24) = v91;
        sub_1000041A4(&qword_1016A95E8, &qword_1016A95B0, &qword_1013BB568, &protocol conformance descriptor for Publishers.MapError<A, B>);

        v79 = v123;
        Publisher.oneshot(_:)();

        v80 = v122;
      }

      (*(v80 + 8))(v75, v79);
    }

    else if (v8)
    {
      if (qword_101694940 != -1)
      {
        swift_once();
      }

      OS_dispatch_queue.sync<A>(execute:)();
      v81 = sub_101074648(v136[0]);

      if (v81)
      {
        v136[0] = sub_10035CFD8(v133);
        sub_1000BC4D4(&qword_1016A9518, &qword_1013BB500);
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        sub_1000041A4(&unk_1016C7E10, &qword_1016A9518, &qword_1013BB500, &protocol conformance descriptor for AnyPublisher<A, B>);
        v82 = v101;
        Publisher.mapError<A>(_:)();

        v83 = swift_allocObject();
        v84 = v135;
        *(v83 + 16) = sub_1007A9FB4;
        *(v83 + 24) = v84;
        sub_1000041A4(&qword_1016A9600, &qword_1016A9598, &qword_1013BB550, &protocol conformance descriptor for Publishers.MapError<A, B>);

        v85 = v103;
        Publisher.oneshot(_:)();

        (*(v102 + 8))(v82, v85);
      }

      else
      {
        if (qword_101694910 != -1)
        {
          swift_once();
        }

        v92 = type metadata accessor for Logger();
        sub_1000076D4(v92, qword_10177B2D0);
        v93 = Logger.logObject.getter();
        v94 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          *v95 = 0;
          _os_log_impl(&_mh_execute_header, v93, v94, "Non-owner ranging is disabled. Skipping AIS fetch for AirTag.", v95, 2u);
        }

        sub_1007A7D8C();
        v96 = swift_allocError();
        *v97 = 4;
        v98 = v129;
        *v129 = v96;
        swift_storeEnumTagMultiPayload();
        sub_10078F298(v98, v130);
        sub_10000B3A8(v98, &unk_1016A99C0, &unk_1013BB530);
      }
    }

    else
    {
      if (qword_101694910 != -1)
      {
        swift_once();
      }

      v58 = type metadata accessor for Logger();
      sub_1000076D4(v58, qword_10177B2D0);
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v136[0] = v62;
        *v61 = 136446210;
        *(v61 + 4) = sub_1000136BC(0x656C707061, 0xE500000000000000, v136);
        _os_log_impl(&_mh_execute_header, v59, v60, "readMetadata: %{public}s is not supported!", v61, 0xCu);
        sub_100007BAC(v62);
      }

      sub_1007A7D8C();
      v63 = swift_allocError();
      *v64 = 3;
      v65 = v129;
      *v129 = v63;
      swift_storeEnumTagMultiPayload();
      sub_10078F298(v65, v130);
      sub_10000B3A8(v65, &unk_1016A99C0, &unk_1013BB530);
    }
  }

  sub_1000D2A70(v132, v24, &unk_101698C30, &unk_101392630);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_10000B3A8(v24, &unk_101698C30, &unk_101392630);
    goto LABEL_15;
  }

  v39 = v127;
  sub_1007A91C8(v24, v127, type metadata accessor for SharedBeaconRecord);
  v136[3] = v25;
  v136[4] = sub_100799304(&qword_101698D80, type metadata accessor for SharedBeaconRecord, &unk_10140BB3C);
  v40 = sub_1000280DC(v136);
  sub_1007A7DFC(v39, v40, type metadata accessor for SharedBeaconRecord);
  v41 = v126;
  sub_100D5D0A4(v136, 0, 0xF000000000000000, v126);
  if ((*(v124 + 48))(v41, 1, v125) == 1)
  {
    sub_10000B3A8(v41, &qword_1016A62A0, &unk_101396E10);
    if (qword_101694910 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_1000076D4(v42, qword_10177B2D0);
    sub_1007A7DFC(v39, v32, type metadata accessor for SharedBeaconRecord);
    sub_1007A7DFC(v39, v29, type metadata accessor for SharedBeaconRecord);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 134218240;
      v46 = *&v32[*(v25 + 48)];
      sub_1007A810C(v32, type metadata accessor for SharedBeaconRecord);
      *(v45 + 4) = v46;
      *(v45 + 12) = 2048;
      v47 = *&v29[*(v25 + 44)];
      sub_1007A810C(v29, type metadata accessor for SharedBeaconRecord);
      *(v45 + 14) = v47;
      v39 = v127;
      _os_log_impl(&_mh_execute_header, v43, v44, "Invalid product data from shared beacon %ld-%ld", v45, 0x16u);
    }

    else
    {
      sub_1007A810C(v29, type metadata accessor for SharedBeaconRecord);
      sub_1007A810C(v32, type metadata accessor for SharedBeaconRecord);
    }

    sub_1007A810C(v39, type metadata accessor for SharedBeaconRecord);
    goto LABEL_15;
  }

  v48 = v104;
  sub_1007A91C8(v41, v104, type metadata accessor for AccessoryMetadata);
  if (qword_101694910 != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  sub_1000076D4(v49, qword_10177B2D0);
  sub_1007A7DFC(v39, v35, type metadata accessor for SharedBeaconRecord);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v136[0] = v53;
    *v52 = 141558275;
    *(v52 + 4) = 1752392040;
    *(v52 + 12) = 2081;
    type metadata accessor for UUID();
    sub_100799304(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v54 = dispatch thunk of CustomStringConvertible.description.getter();
    v56 = v55;
    sub_1007A810C(v35, type metadata accessor for SharedBeaconRecord);
    v57 = sub_1000136BC(v54, v56, v136);

    *(v52 + 14) = v57;
    _os_log_impl(&_mh_execute_header, v50, v51, "Skipping AIS fetch for family beacon %{private,mask.hash}s", v52, 0x16u);
    sub_100007BAC(v53);
  }

  else
  {

    sub_1007A810C(v35, type metadata accessor for SharedBeaconRecord);
  }

  v99 = v129;
  sub_1007A7DFC(v48, v129, type metadata accessor for AccessoryMetadata);
  swift_storeEnumTagMultiPayload();
  sub_10078F298(v99, v130);
  sub_10000B3A8(v99, &unk_1016A99C0, &unk_1013BB530);
  sub_1007A810C(v48, type metadata accessor for AccessoryMetadata);
  sub_1007A810C(v127, type metadata accessor for SharedBeaconRecord);
}

uint64_t sub_1007A2798(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(char *, uint64_t, uint64_t), void (*a6)(uint64_t), void (*a7)(uint64_t))
{
  v72 = a3;
  v73 = a5;
  v77 = a1;
  v68 = sub_1000BC4D4(&unk_1016A99C0, &unk_1013BB530);
  __chkstk_darwin(v68);
  v69 = (&v67 - v11);
  v12 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v12 - 8);
  v71 = &v67 - v13;
  v14 = type metadata accessor for MACAddress();
  v75 = *(v14 - 8);
  v15 = *(v75 + 64);
  v16 = __chkstk_darwin(v14);
  v17 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v70 = &v67 - v19;
  __chkstk_darwin(v18);
  v21 = &v67 - v20;
  v22 = swift_allocObject();
  v74 = a6;
  *(v22 + 16) = a6;
  *(v22 + 24) = a7;
  v76 = v22;
  v23 = qword_101694F58;
  swift_retain_n();
  if (v23 != -1)
  {
    swift_once();
  }

  v24 = qword_10177C218;
  v25 = [objc_opt_self() sharedInstance];
  v26 = [v25 isInternalBuild];

  if (v26)
  {
    v27 = String._bridgeToObjectiveC()();
    v28 = [v24 BOOLForKey:v27];

    if (v28)
    {
      if (qword_101694918 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_1000076D4(v29, qword_1016A9318);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v78 = v33;
        *v32 = 136446210;
        *(v32 + 4) = sub_1000136BC(0xD000000000000043, 0x800000010135F7F0, &v78);
        _os_log_impl(&_mh_execute_header, v30, v31, "%{public}s ForceReadingHawkeyeAIS is enabled!", v32, 0xCu);
        sub_100007BAC(v33);
      }

      v34 = v77;
      v35 = 2;
      goto LABEL_23;
    }
  }

  if (a4)
  {
    v74 = a7;
    if (qword_101694910 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1000076D4(v36, qword_10177B2D0);
    v37 = v75;
    v38 = *(v75 + 16);
    v38(v21, v77, v14);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v73 = v38;
      v78 = v42;
      *v41 = 136446466;
      *(v41 + 4) = sub_1000136BC(0xD000000000000043, 0x800000010135F7F0, &v78);
      *(v41 + 12) = 2082;
      sub_100799304(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v45 = v44;
      (*(v75 + 8))(v21, v14);
      v46 = sub_1000136BC(v43, v45, &v78);

      *(v41 + 14) = v46;
      _os_log_impl(&_mh_execute_header, v39, v40, "%{public}s for Posh accessory with %{public}s", v41, 0x16u);
      swift_arrayDestroy();
      v38 = v73;

      v37 = v75;
    }

    else
    {

      (*(v37 + 8))(v21, v14);
    }

    v56 = type metadata accessor for TaskPriority();
    v57 = v71;
    (*(*(v56 - 8) + 56))(v71, 1, 1, v56);
    v58 = v70;
    v38(v70, v77, v14);
    v59 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = 0;
    *(v60 + 24) = 0;
    (*(v37 + 32))(v60 + v59, v58, v14);
    v61 = (v60 + ((v15 + v59 + 7) & 0xFFFFFFFFFFFFFFF8));
    v62 = v76;
    *v61 = sub_1007A7E64;
    v61[1] = v62;

    sub_10025EDD4(0, 0, v57, &unk_1013BB548, v60);
  }

  else
  {
    if (a2 != 4)
    {

      v34 = v77;
      v35 = a2;
LABEL_23:
      sub_1007A10A8(v34, v35, v72, v73, v74, a7);
    }

    if (qword_101694918 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_1000076D4(v47, qword_1016A9318);
    v48 = v75;
    (*(v75 + 16))(v17, v77, v14);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *v51 = 136446466;
      *(v51 + 4) = sub_1000136BC(0xD000000000000043, 0x800000010135F7F0, &v78);
      *(v51 + 12) = 2082;
      sub_100799304(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v54 = v53;
      (*(v48 + 8))(v17, v14);
      v55 = sub_1000136BC(v52, v54, &v78);

      *(v51 + 14) = v55;
      _os_log_impl(&_mh_execute_header, v49, v50, "%{public}s for %{public}s with no device type!", v51, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v48 + 8))(v17, v14);
    }

    sub_1007A7D8C();
    v64 = swift_allocError();
    *v65 = 3;
    v66 = v69;
    *v69 = v64;
    swift_storeEnumTagMultiPayload();
    sub_10078F298(v66, v74);
    sub_10000B3A8(v66, &unk_1016A99C0, &unk_1013BB530);
  }
}

uint64_t sub_1007A3124(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(unint64_t, char *, uint64_t))
{
  v176 = a8;
  v177 = a2;
  v172 = a6;
  v173 = a7;
  v170 = a4;
  v171 = a5;
  v10 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v10 - 8);
  v138 = &v128 - v11;
  v142 = sub_1000BC4D4(&qword_1016A94D0, &qword_1013BB4C0);
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v139 = &v128 - v12;
  v145 = sub_1000BC4D4(&qword_1016A94D8, &qword_1013BB4C8);
  v143 = *(v145 - 8);
  __chkstk_darwin(v145);
  v140 = &v128 - v13;
  v147 = sub_1000BC4D4(&qword_1016A94E0, &qword_1013BB4D0);
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v144 = &v128 - v14;
  v152 = sub_1000BC4D4(&qword_1016A94E8, &qword_1013BB4D8);
  v149 = *(v152 - 8);
  __chkstk_darwin(v152);
  v148 = &v128 - v15;
  v157 = sub_1000BC4D4(&qword_1016A94F0, &qword_1013BB4E0);
  v155 = *(v157 - 8);
  __chkstk_darwin(v157);
  v151 = &v128 - v16;
  v156 = sub_1000BC4D4(&qword_1016A94F8, &qword_1013BB4E8);
  v154 = *(v156 - 8);
  __chkstk_darwin(v156);
  v150 = &v128 - v17;
  v159 = sub_1000BC4D4(&qword_1016A9500, &qword_1013BB4F0);
  v158 = *(v159 - 8);
  __chkstk_darwin(v159);
  v153 = &v128 - v18;
  v19 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v133 = *(v19 - 8);
  v20 = __chkstk_darwin(v19 - 8);
  v135 = &v128 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = v21;
  __chkstk_darwin(v20);
  v136 = &v128 - v22;
  v23 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  __chkstk_darwin(v23 - 8);
  v162 = &v128 - v24;
  v25 = type metadata accessor for MACAddress();
  v165 = *(v25 - 8);
  v166 = v25;
  v26 = __chkstk_darwin(v25);
  v132 = &v128 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = v27;
  __chkstk_darwin(v26);
  v164 = &v128 - v28;
  v29 = type metadata accessor for WildModeAssociationRecord(0);
  v167 = *(v29 - 8);
  v30 = __chkstk_darwin(v29);
  v161 = &v128 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v160 = &v128 - v33;
  v168 = v34;
  __chkstk_darwin(v32);
  v36 = &v128 - v35;
  v169 = sub_1000BC4D4(&qword_1016A9508, &qword_1013BB4F8);
  v163 = *(v169 - 8);
  __chkstk_darwin(v169);
  v38 = &v128 - v37;
  v39 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  __chkstk_darwin(v39 - 8);
  v41 = &v128 - v40;
  v42 = swift_allocObject();
  *(v42 + 16) = a9;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_10001E370;
  *(v43 + 24) = v42;
  v174 = v43;
  v44 = a1;
  sub_1000D2A70(a1 + *(v29 + 56), v41, &qword_1016A62A0, &unk_101396E10);
  v45 = type metadata accessor for AccessoryMetadata(0);
  LODWORD(a1) = (*(*(v45 - 8) + 48))(v41, 1, v45);
  v137 = a9;
  _Block_copy(a9);
  v175 = v42;

  sub_10000B3A8(v41, &qword_1016A62A0, &unk_101396E10);
  if (a1 != 1)
  {
    sub_1007A7DFC(v44, v36, type metadata accessor for WildModeAssociationRecord);
    Just.init(_:)();
    sub_1000041A4(&qword_1016A9588, &qword_1016A9508, &qword_1013BB4F8, &protocol conformance descriptor for Just<A>);
    v60 = v169;
    v61 = Publisher.eraseToAnyPublisher()();
    (*(v163 + 8))(v38, v60);

LABEL_30:
    v178 = v61;
    sub_1007A7DFC(v44, v36, type metadata accessor for WildModeAssociationRecord);
    v119 = (*(v167 + 80) + 80) & ~*(v167 + 80);
    v120 = swift_allocObject();
    v121 = v36;
    v122 = v177;
    v120[2] = v176;
    v120[3] = v122;
    v123 = v171;
    v120[4] = v170;
    v120[5] = v123;
    v124 = v173;
    v120[6] = v172;
    v120[7] = v124;
    v125 = v174;
    v120[8] = sub_1007A7D84;
    v120[9] = v125;
    sub_1007A91C8(v121, v120 + v119, type metadata accessor for WildModeAssociationRecord);

    v126 = v122;
    sub_1000BC4D4(&qword_1016A9578, &qword_1013BB518);
    sub_1000041A4(&qword_1016A9580, &qword_1016A9578, &qword_1013BB518, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher<>.sink(receiveValue:)();

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  v163 = v29;
  v130 = v36;
  v169 = v44;
  if (qword_101694910 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  sub_1000076D4(v46, qword_10177B2D0);
  v47 = v169;
  v48 = v160;
  sub_1007A7DFC(v169, v160, type metadata accessor for WildModeAssociationRecord);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();
  v51 = os_log_type_enabled(v49, v50);
  v52 = v166;
  v53 = v161;
  if (v51)
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v178 = v55;
    *v54 = 136446210;
    type metadata accessor for UUID();
    sub_100799304(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v56 = dispatch thunk of CustomStringConvertible.description.getter();
    v58 = v57;
    sub_1007A810C(v48, type metadata accessor for WildModeAssociationRecord);
    v59 = sub_1000136BC(v56, v58, &v178);

    *(v54 + 4) = v59;
    _os_log_impl(&_mh_execute_header, v49, v50, "Record %{public}s is missing metadata. Attempting to fetch again...", v54, 0xCu);
    sub_100007BAC(v55);

    v47 = v169;
  }

  else
  {

    sub_1007A810C(v48, type metadata accessor for WildModeAssociationRecord);
  }

  if (qword_101694918 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v46, qword_1016A9318);
  sub_1007A7DFC(v47, v53, type metadata accessor for WildModeAssociationRecord);
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v62, v63))
  {

    sub_1007A810C(v53, type metadata accessor for WildModeAssociationRecord);
    goto LABEL_21;
  }

  v64 = swift_slowAlloc();
  v178 = swift_slowAlloc();
  *v64 = 136315394;
  *(v64 + 4) = sub_1000136BC(0xD000000000000068, 0x800000010135F6F0, &v178);
  *(v64 + 12) = 2082;
  v65 = (v53 + *(v163 + 88));
  if (v65[1])
  {
    if (*(v53 + *(v163 + 84)))
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if ((*(v53 + *(v163 + 84)) & 1) == 0)
  {
LABEL_18:
    v66 = *(v53 + *(v163 + 52));
    goto LABEL_20;
  }

  if (*v65 != 1)
  {
LABEL_19:
    v66 = 6;
    goto LABEL_20;
  }

  v66 = 5;
LABEL_20:
  v67 = sub_100781578(v66);
  v69 = v68;
  sub_1007A810C(v53, type metadata accessor for WildModeAssociationRecord);
  v70 = sub_1000136BC(v67, v69, &v178);

  *(v64 + 14) = v70;
  _os_log_impl(&_mh_execute_header, v62, v63, "%s Advertisement type: %{public}s", v64, 0x16u);
  swift_arrayDestroy();

  v47 = v169;
LABEL_21:
  v71 = v162;
  sub_100307708(v162);
  v72 = v165;
  v73 = (*(v165 + 48))(v71, 1, v52);
  v74 = v177;
  if (v73 != 1)
  {
    v82 = *(v72 + 32);
    v161 = (v72 + 32);
    v137 = v82;
    v82(v164, v71, v52);
    v129 = *(v47 + *(v163 + 52));
    v162 = swift_allocBox();
    sub_1007A7DFC(v47, v83, type metadata accessor for WildModeAssociationRecord);
    v84 = [v74 trackingIdentifier];
    v85 = [v84 isPosh];

    if (v85)
    {
      v86 = [v74 trackingIdentifier];
      v87 = [v86 networkID];

      v88 = 2 * (v87 == 2);
      if (v87 == 1)
      {
        v88 = 1;
      }
    }

    else
    {
      v88 = 3;
    }

    LODWORD(v160) = v88;
    v89 = type metadata accessor for SharedBeaconRecord(0);
    v90 = v136;
    (*(*(v89 - 8) + 56))(v136, 1, 1, v89);
    v128 = *(v47 + *(v163 + 84));
    v91 = v132;
    (*(v72 + 16))(v132, v164, v52);
    v92 = v135;
    sub_1000D2A70(v90, v135, &unk_101698C30, &unk_101392630);
    v93 = (*(v72 + 80) + 24) & ~*(v72 + 80);
    v94 = v93 + v131;
    v95 = (*(v133 + 80) + v93 + v131 + 1) & ~*(v133 + 80);
    v96 = v95 + v134;
    v97 = swift_allocObject();
    v98 = v176;
    *(v97 + 16) = v176;
    v137(v97 + v93, v91, v52);
    *(v97 + v94) = v129;
    sub_1000D2AD8(v92, v97 + v95, &unk_101698C30, &unk_101392630);
    *(v97 + v96) = v128 & 1;
    sub_1000BC4D4(&qword_10169E840, &unk_101406170);
    swift_allocObject();

    v178 = Future.init(_:)();
    v137 = &protocol conformance descriptor for Future<A, B>;
    sub_1000041A4(&unk_1016C7E00, &qword_10169E840, &unk_101406170, &protocol conformance descriptor for Future<A, B>);
    v99 = Publisher.eraseToAnyPublisher()();
    v161 = v99;

    sub_10000B3A8(v90, &unk_101698C30, &unk_101392630);
    v178 = v99;
    v179 = *(v98 + 24);
    v100 = v179;
    v101 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v102 = v138;
    (*(*(v101 - 8) + 56))(v138, 1, 1, v101);
    v103 = v100;
    v136 = v103;
    sub_1000BC4D4(&qword_1016A9518, &qword_1013BB500);
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    sub_1000041A4(&unk_1016C7E10, &qword_1016A9518, &qword_1013BB500, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_100009D18(&qword_1016AF9C0, &qword_101695570, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
    v104 = v139;
    Publisher.receive<A>(on:options:)();
    sub_10000B3A8(v102, &unk_1016B0FE0, &unk_101391980);

    v105 = swift_allocObject();
    *(v105 + 16) = v162;
    *(v105 + 24) = v98;
    *(v105 + 32) = v160;

    static Subscribers.Demand.unlimited.getter();
    sub_1000BC4D4(&qword_1016A9520, &qword_1013BB508);
    sub_1000BC4D4(&qword_1016C7CE0, &unk_10139DA90);
    sub_1000041A4(&qword_1016A9528, &qword_1016A94D0, &qword_1013BB4C0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    sub_1000041A4(&qword_1016A9530, &qword_1016C7CE0, &unk_10139DA90, v137);
    v106 = v140;
    v107 = v142;
    Publisher.flatMap<A, B>(maxPublishers:_:)();

    (*(v141 + 8))(v104, v107);
    sub_1000041A4(&qword_1016A9538, &qword_1016A94D8, &qword_1013BB4C8, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
    v108 = v144;
    v109 = v145;
    Publisher.timeout(_:queue:customError:)();
    (*(v143 + 8))(v106, v109);
    sub_1000BC4D4(&qword_10169E748, &unk_10139DAB0);
    sub_1000041A4(&qword_1016A9540, &qword_1016A94E0, &qword_1013BB4D0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v110 = v148;
    v111 = v147;
    Publisher.map<A>(_:)();
    (*(v146 + 8))(v108, v111);
    sub_1000BC4D4(&qword_1016A9548, &qword_1013BB510);
    sub_1000041A4(&qword_1016A9550, &qword_1016A94E8, &qword_1013BB4D8, &protocol conformance descriptor for Publishers.Map<A, B>);
    sub_1000041A4(&qword_1016A9558, &qword_1016A9548, &qword_1013BB510, &protocol conformance descriptor for Just<A>);
    v112 = v151;
    v113 = v152;
    v44 = v169;
    Publisher.catch<A>(_:)();
    (*(v149 + 8))(v110, v113);
    sub_1000041A4(&qword_1016A9560, &qword_1016A94F0, &qword_1013BB4E0, &protocol conformance descriptor for Publishers.Catch<A, B>);

    v114 = v150;
    v115 = v157;
    Publisher.map<A>(_:)();

    (*(v155 + 8))(v112, v115);
    sub_1000041A4(&qword_1016A9568, &qword_1016A94F8, &qword_1013BB4E8, &protocol conformance descriptor for Publishers.Map<A, B>);
    v116 = v153;
    v117 = v156;
    Publisher.replaceError(with:)();
    (*(v154 + 8))(v114, v117);
    sub_1000041A4(&qword_1016A9570, &qword_1016A9500, &qword_1013BB4F0, &protocol conformance descriptor for Publishers.ReplaceError<A>);
    v118 = v159;
    v61 = Publisher.eraseToAnyPublisher()();

    (*(v158 + 8))(v116, v118);
    (*(v165 + 8))(v164, v166);

    v36 = v130;
    goto LABEL_30;
  }

  sub_10000B3A8(v71, &qword_1016A40D0, &unk_10138BE70);
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v178 = v78;
    *v77 = 136315138;
    *(v77 + 4) = sub_1000136BC(0xD000000000000068, 0x800000010135F6F0, &v178);
    _os_log_impl(&_mh_execute_header, v75, v76, "%s unexpected advertisement type!", v77, 0xCu);
    sub_100007BAC(v78);
  }

  sub_1007A7D8C();
  swift_allocError();
  *v79 = 1;
  v80 = v137;
  _Block_copy(v137);
  v81 = _convertErrorToNSError(_:)();
  v80[2](v80, v81);

  _Block_release(v80);
}