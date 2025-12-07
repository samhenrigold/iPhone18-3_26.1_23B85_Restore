uint64_t sub_1000F904C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000F90B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000F9100()
{
  result = qword_1001788F0;
  if (!qword_1001788F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001788F0);
  }

  return result;
}

uint64_t sub_1000F914C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

id sub_1000F917C(uint64_t a1)
{
  v5 = 0;
  v1 = [swift_getObjCClassFromMetadata() patternForKey:a1 error:&v5];
  if (v1)
  {
    v2 = v5;
  }

  else
  {
    v3 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

uint64_t sub_1000F9240()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000F9280(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000F92B4(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  sub_1000FE844(v2, *(a1 + 36), 0, a1);
}

uint64_t sub_1000F931C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for LayoutSubviews();
  sub_100103DB0(&qword_100178AF8, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v9[4] == v9[0])
  {
    v2 = type metadata accessor for LayoutSubview();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    v4 = dispatch thunk of Collection.subscript.read();
    v6 = v5;
    v7 = type metadata accessor for LayoutSubview();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a1, v6, v7);
    v4(v9, 0);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }
}

uint64_t sub_1000F94B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000077C8(&qword_1001763D0, &qword_100121C60);
  v13 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = _HashTable.startBucket.getter();
  if (v7 == 1 << *(a1 + 32))
  {
    v8 = *(v13 + 56);

    return v8(a2, 1, 1, v4);
  }

  else
  {
    v10 = sub_1000FE550(v6, v7, *(a1 + 36), 0, a1);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 32))(a2, v6, v11);
    *(a2 + *(v4 + 48)) = v10;
    return (*(v13 + 56))(a2, 0, 1, v4);
  }
}

uint64_t sub_1000F965C(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaSet.Index.== infix(_:_:)();
    sub_100047AC0(v6, v8, 1, v10, v11, v12, v13, v14);
    if (v9)
    {
LABEL_3:
      sub_100047AC0(v3, v5, (v2 != 0), v15, v16, v17, v18, v19);
      return 0;
    }
  }

  else
  {
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == (1 << *(a1 + 32)))
    {
      goto LABEL_3;
    }
  }

  sub_1000FE620(v3, v5, v2 != 0, a1);
  v22 = v21;
  sub_100047AC0(v3, v5, (v2 != 0), v23, v24, v25, v26, v27);
  return v22;
}

uint64_t sub_1000F9778(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_10000BCF0;

  return v5();
}

uint64_t sub_1000F9860(uint64_t a1, _TtC9AirDropUI33AirDropTransferSessionsController *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  __chkstk_darwin(v9 - 8);
  v11 = v32 - v10;
  sub_100007BA4(a3, v32 - v10, &qword_100172F50, &qword_10011E500);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000159AC(v11, &qword_100172F50, &qword_10011E500);
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
        v33[0] = 0;
        v33[1] = 0;
        v21 = v33;
        v33[2] = v16;
        v33[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v32[1] = 7;
      v32[2] = v21;
      v32[3] = v19;
      v23 = swift_task_create();

      sub_1000159AC(a3, &qword_100172F50, &qword_10011E500);
      a2, v24, v25, v26, v27, v28, v29, v30;

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

  sub_1000159AC(a3, &qword_100172F50, &qword_10011E500);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v33[4] = 0;
    v33[5] = 0;
    v33[6] = v16;
    v33[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1000F9B60()
{
  v0 = type metadata accessor for Logger();
  sub_1000154C0(v0, qword_1001788F8);
  v1 = sub_100007D20(v0, qword_1001788F8);
  if (qword_100172208 != -1)
  {
    swift_once();
  }

  v2 = sub_100007D20(v0, qword_10017F320);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double sub_1000F9C28()
{
  type metadata accessor for AirDropUIBannerManager();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  qword_10017F390 = v0;
  return result;
}

double sub_1000F9C60()
{
  if (qword_100172150 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v2)
  {
    *(v2 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_activity) = *(v0 + 32);
  }

  return result;
}

unint64_t sub_1000F9D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    return 0xD00000000000001BLL;
  }

  if (a2 > 3)
  {
    if (a2 <= 5)
    {
      if (a2 != 4)
      {
        v5 = "the assertion timed out";
        v6 = 0xD000000000000018;
        goto LABEL_29;
      }

      v7 = "the server disconnected from XPC";
    }

    else
    {
      if (a2 == 6)
      {
        v5 = "quest was denied";
        v6 = 0xD000000000000017;
        goto LABEL_29;
      }

      if (a2 != 7)
      {
        if (a2 == 8)
        {
          v5 = "the assertion was not acquired";
          v6 = 0xD00000000000001ALL;
          goto LABEL_29;
        }

LABEL_28:
        v5 = "Unknown assertion state";
        v6 = 0xD000000000000014;
        goto LABEL_29;
      }

      v7 = "the assertion request was denied";
    }

LABEL_27:
    v5 = (v7 - 32);
    v6 = 0xD000000000000020;
    goto LABEL_29;
  }

  if (a2 <= 1)
  {
    if (!a2)
    {
      if (a1)
      {
        v6 = 0xD000000000000037;
      }

      else
      {
        v6 = 0xD00000000000001ELL;
      }

      if (a1)
      {
        v5 = "validated because ";
      }

      else
      {
        v5 = "ion was not invalidated";
      }

      goto LABEL_29;
    }

    if (a2 != 1)
    {
      goto LABEL_28;
    }

    v7 = "a session was begun successfully";
    goto LABEL_27;
  }

  if (a2 == 2)
  {
    v5 = "ted an invalidation";
    v6 = 0xD00000000000001CLL;
  }

  else
  {
    v5 = "nnected from XPC";
    v6 = 0xD000000000000023;
  }

LABEL_29:
  v8 = 0xE000000000000000;
  _StringGuts.grow(_:)(47);
  0xE000000000000000, v9, v10, v11, v12, v13, v14, v15;
  v16._object = (v5 | 0x8000000000000000);
  v16._countAndFlagsBits = v6;
  String.append(_:)(v16);
  (v5 | 0x8000000000000000), v17, v18, v19, v20, v21, v22, v23;
  v24._countAndFlagsBits = 0x3A726F727245202ELL;
  v24._object = 0xE900000000000020;
  String.append(_:)(v24);
  if (a3)
  {
    swift_getErrorValue();
    v25 = Error.localizedDescription.getter();
    v8 = v26;
  }

  else
  {
    v25 = 0;
  }

  v27 = v8;
  String.append(_:)(*&v25);
  v8, v28, v29, v30, v31, v32, v33, v34;
  return 0xD000000000000022;
}

uint64_t sub_1000F9F88()
{
  v1 = v0;
  v311 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v306 = *(v311 - 8);
  __chkstk_darwin(v311);
  v3 = &v280 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000077C8(&qword_100172FD0, &qword_10011A210);
  __chkstk_darwin(v4 - 8);
  v315 = &v280 - v5;
  v314 = type metadata accessor for SFAirDropSend.Transfer.State();
  isa = v314[-1].isa;
  __chkstk_darwin(v314);
  v7 = &v280 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v310 = &v280 - v9;
  v10 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  __chkstk_darwin(v10 - 8);
  v281 = &v280 - v11;
  v283 = type metadata accessor for UUID();
  v282 = *(v283 - 8);
  __chkstk_darwin(v283);
  v285 = &v280 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v291 = type metadata accessor for Date();
  v289 = *(v291 - 8);
  __chkstk_darwin(v291);
  v290 = &v280 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v296 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType();
  v302 = *(v296 - 8);
  __chkstk_darwin(v296);
  v286 = &v280 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v288 = &v280 - v16;
  __chkstk_darwin(v17);
  v287 = &v280 - v18;
  __chkstk_darwin(v19);
  v295 = &v280 - v20;
  v294 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v293 = *(v294 - 8);
  __chkstk_darwin(v294);
  v292 = (&v280 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  userNotificationsCenter = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext();
  v297 = *(userNotificationsCenter - 8);
  __chkstk_darwin(userNotificationsCenter);
  v299 = &v280 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000077C8(&unk_100176550, &qword_10011E720);
  __chkstk_darwin(v24 - 8);
  v26 = &v280 - v25;
  v308 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v312 = *(v308 - 1);
  __chkstk_darwin(v308);
  v284 = &v280 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v301 = &v280 - v29;
  if (qword_100172150 != -1)
  {
LABEL_81:
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v30 = v318;
  sub_100100314(v318);
  v32 = v31;
  v303 = v33;
  if (qword_100172248 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  v35 = sub_100007D20(v34, qword_1001788F8);

  v307 = v35;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  v30, v38, v39, v40, v41, v42, v43, v44;

  v45 = os_log_type_enabled(v36, v37);
  v313 = v7;
  if (v45)
  {
    v298 = userNotificationsCenter;
    v309 = v1;
    v46 = swift_slowAlloc();
    v318 = swift_slowAlloc();
    *v46 = 136315394;
    if (v32)
    {
      v47 = v32;
      v48 = v32 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier;
      v50 = *(v32 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
      v49 = *(v48 + 8);
    }

    else
    {
      v47 = 0;
      v49 = 0xE300000000000000;
      v50 = 7104878;
    }

    v55 = sub_10003E81C(v50, v49, &v318);
    v49, v56, v57, v58, v59, v60, v61, v62;
    *(v46 + 4) = v55;
    *(v46 + 12) = 2080;
    type metadata accessor for AirDropTransferSession(0);
    v63 = Dictionary.Values.description.getter();
    v65 = v64;
    v66 = sub_10003E81C(v63, v64, &v318);
    v65, v67, v68, v69, v70, v71, v72, v73;
    *(v46 + 14) = v66;
    _os_log_impl(&_mh_execute_header, v36, v37, "Banner session chosen is %s from sessions %s", v46, 0x16u);
    swift_arrayDestroy();

    v1 = v309;
    v32 = v47;
    userNotificationsCenter = v298;
    if (!v47)
    {
      goto LABEL_14;
    }
  }

  else
  {

    if (!v32)
    {
LABEL_14:
      v280 = v32;
      v309 = v1;
      v318 = &_swiftEmptyArrayStorage;
      userNotificationsCenter = v30->userNotificationsCenter;
      v74 = 1 << v30->airDropClient[0];
      v75 = -1;
      if (v74 < 64)
      {
        v75 = ~(-1 << v74);
      }

      v76 = v75 & *v30->userNotificationsCenter;
      v297 = v3 + 8;
      v1 = (v74 + 63) >> 6;
      v312 = (isa + 48);
      v307 = (isa + 88);
      v308 = (isa + 32);
      v303 = enum case for SFAirDropSend.Transfer.State.analyzingFullContent(_:);
      LODWORD(v299) = enum case for SFAirDropSend.Transfer.State.waitingForSensitiveContentResponse(_:);
      LODWORD(v296) = enum case for SFAirDropSend.Transfer.State.created(_:);
      LODWORD(v294) = enum case for SFAirDropSend.Transfer.State.waitingForAskResponse(_:);
      v292 = (isa + 8);
      v301 = isa + 96;
      isa = (v306 + 11);
      LODWORD(v302) = enum case for SFAirDropReceive.Transfer.State.waitingForOpenResponse(_:);
      LODWORD(v298) = enum case for SFAirDropReceive.Transfer.State.completedSuccessfully(_:);
      LODWORD(v295) = enum case for SFAirDropReceive.Transfer.State.created(_:);
      LODWORD(v293) = enum case for SFAirDropReceive.Transfer.State.autoAccepted(_:);
      v290 = (v306 + 1);
      v306 += 12;
      LODWORD(v291) = enum case for SFAirDropReceive.Transfer.State.analyizingPreview(_:);

      v7 = 0;
      v304 = v30;
      v300 = v3;
      while (1)
      {
        while (1)
        {
          if (!v76)
          {
            while (1)
            {
              v77 = v7 + 1;
              if (__OFADD__(v7, 1))
              {
                __break(1u);
                goto LABEL_81;
              }

              if (v77 >= v1)
              {
                break;
              }

              v76 = *(userNotificationsCenter + 8 * v77);
              ++v7;
              if (v76)
              {
                v7 = v77;
                goto LABEL_22;
              }
            }

            if (v318 < 0 || (v318 & 0x4000000000000000) != 0)
            {
              v153 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v153 = *(v318 + 16);
            }

            v32 = v280;

            if (v153)
            {
              sub_1000FBDAC();
            }

            else
            {
              sub_1000FBF64();
            }

LABEL_58:
            v30, v154, v155, v156, v157, v158, v159, v160;
            return v32;
          }

LABEL_22:
          v78 = __clz(__rbit64(v76));
          v76 &= v76 - 1;
          v26 = *(*v30->nearbySharingInteractionCoordinator + ((v7 << 9) | (8 * v78)));
          swift_getKeyPath();
          swift_getKeyPath();

          v79 = v315;
          static Published.subscript.getter();

          v80 = v314;
          if ((*v312)(v79, 1, v314) != 1)
          {
            break;
          }

          sub_1000159AC(v79, &qword_100172FD0, &qword_10011A210);
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v81 = v311;
          v82 = (*isa)(v3, v311);
          if (v82 == v302)
          {

            (*v306)(v3, v81);
            v83 = sub_1000077C8(&qword_100173078, &unk_100118F60);
            *&v3[v83[12]], v84, v85, v86, v87, v88, v89, v90;
            *&v3[v83[16]], v91, v92, v93, v94, v95, v96, v97;
            v98 = v83[20];
            v99 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
            (*(*(v99 - 8) + 8))(&v3[v98], v99);
            v100 = type metadata accessor for SFAirDropReceive.ItemDestination();
            goto LABEL_29;
          }

          if (v82 == v298)
          {

            (*v306)(v3, v81);
            v115 = sub_1000077C8(&qword_100174FC0, &unk_10011C5F0);
            v116 = v115[12];
            *&v297[v115[16]], v117, v118, v119, v120, v121, v122, v123;
            *&v3[v115[20]], v124, v125, v126, v127, v128, v129, v130;
            *&v3[v115[24]], v131, v132, v133, v134, v135, v136, v137;
            *&v3[v115[28]], v138, v139, v140, v141, v142, v143, v144;
            v145 = type metadata accessor for SFAirDropReceive.ItemDestination();
            (*(*(v145 - 8) + 8))(&v3[v116], v145);
            v100 = type metadata accessor for SFAirDropReceive.Transfer.Metrics();
LABEL_29:
            (*(*(v100 - 8) + 8))(v3, v100);
          }

          else
          {
            if (v82 != v295 && v82 != v293 && v82 != v291)
            {
              (*v290)(v3, v81);
              goto LABEL_42;
            }

LABEL_40:
          }
        }

        v101 = v79;
        v102 = *v308;
        v103 = v310;
        (*v308)(v310, v101, v80);
        v104 = v313;
        v102(v313, v103, v80);
        v105 = (*v307)(v104, v80);
        if (v105 == v303)
        {
          break;
        }

        if (v105 == v299)
        {

          v104 = v313;
          (*v301)(v313, v80);
          *v104, v146, v147, v148, v149, v150, v151, v152;
          v113 = *(sub_1000077C8(&qword_100174128, &unk_10011C530) + 48);
          v114 = sub_1000077C8(&unk_100174F90, &unk_10011AE70);
LABEL_32:
          (*(*(v114 - 8) + 8))(v104 + v113, v114);
          v3 = v300;
          v30 = v304;
        }

        else
        {
          v3 = v300;
          if (v105 == v296)
          {

            v30 = v304;
          }

          else
          {
            v30 = v304;
            if (v105 == v294)
            {
              goto LABEL_40;
            }

            (*v292)(v313, v80);
LABEL_42:
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }
        }
      }

      (*v301)(v104, v80);
      *v104, v106, v107, v108, v109, v110, v111, v112;
      v113 = *(sub_1000077C8(&qword_100174130, &qword_10011C540) + 64);
      v114 = type metadata accessor for SFAirDrop.DeclineAction();
      goto LABEL_32;
    }
  }

  if (*(v1 + 24))
  {
    v51 = *(v1 + 16);
    if (!v51)
    {
      v312[7](v26, 1, 1, v308);
      goto LABEL_49;
    }

    v52 = v51;
    sub_100097458(v26);

    v53 = v312;
    v54 = v308;
    if ((v312[6])(v26, 1, v308) == 1)
    {

LABEL_49:
      sub_1000159AC(v26, &unk_100176550, &qword_10011E720);
      goto LABEL_50;
    }

    v169 = v301;
    (v53[4])(v301, v26, v54);
    v170 = v292;
    SFAirDrop.NearbySharingInteraction.state.getter();
    v171 = v293;
    v172 = v294;
    if ((*(v293 + 88))(v170, v294) != enum case for SFAirDrop.NearbySharingInteraction.State.connected(_:))
    {
      (v53[1])(v169, v54);

      (*(v171 + 8))(v170, v172);
      goto LABEL_50;
    }

    (*(v171 + 96))(v170, v172);
    v173 = *(v297 + 4);
    v298 = userNotificationsCenter;
    v173(v299, v170, userNotificationsCenter);
    SFAirDrop.NearbySharingInteraction.ConnectionContext.type.getter();
    v174 = *(v302 + 104);
    v175 = v287;
    (v174)(v287, enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.airDrop(_:), v296);
    v176 = sub_100103DB0(&unk_100173E70, &type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType, &protocol conformance descriptor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v177 = v319;
    v178 = v317;
    v314 = v176;
    v315 = v174;
    if (v318 == v316 && v319 == v317)
    {
      v179 = 1;
    }

    else
    {
      v179 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v181 = v302 + 8;
    v182 = *(v302 + 8);
    v183 = v175;
    v184 = v296;
    v182(v183, v296);
    v302 = v181;
    v182(v295, v184);
    v177, v185, v186, v187, v188, v189, v190, v191;
    v178, v192, v193, v194, v195, v196, v197, v198;
    if ((v179 & 1) == 0)
    {
      SFAirDrop.NearbySharingInteraction.ConnectionContext.type.getter();
      v199 = v286;
      (v315)(v286, enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.share(_:), v184);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v200 = v319;
      v201 = v317;
      if (v318 == v316 && v319 == v317)
      {
        v182(v199, v184);
        v182(v288, v184);
        v200, v202, v203, v204, v205, v206, v207, v208;
        v201, v209, v210, v211, v212, v213, v214, v215;
      }

      else
      {
        v216 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v182(v199, v184);
        v182(v288, v184);
        v200, v217, v218, v219, v220, v221, v222, v223;
        v201, v224, v225, v226, v227, v228, v229, v230;
        if ((v216 & 1) == 0)
        {

          (*(v297 + 1))(v299, v298);
          (v312[1])(v301, v308);
          goto LABEL_50;
        }
      }
    }

    v304 = v30;
    v231 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_startTime;
    v232 = v290;
    v233 = v301;
    SFAirDrop.NearbySharingInteraction.creationDate.getter();
    v234 = static Date.> infix(_:_:)();
    v235 = *(v289 + 8);
    v235(v232, v291);
    if ((v234 & 1) == 0)
    {

      (*(v297 + 1))(v299, v298);
      (v312[1])(v233, v308);
      v30 = v304;
      goto LABEL_50;
    }

    v236 = v284;
    v237 = v308;
    (v312[2])(v284, v233, v308);

    v238 = Logger.logObject.getter();
    v239 = static os_log_type_t.default.getter();

    LODWORD(v315) = v239;
    v240 = os_log_type_enabled(v238, v239);
    v280 = v32;
    if (v240)
    {
      v241 = swift_slowAlloc();
      v313 = swift_slowAlloc();
      v318 = v313;
      *v241 = 136315394;
      v242 = v290;
      v243 = v236;
      v244 = v291;
      (*(v289 + 16))(v290, v32 + v231, v291);
      sub_100103DB0(&qword_100178AE8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v314 = v238;
      v245 = dispatch thunk of CustomStringConvertible.description.getter();
      v247 = v246;
      v235(v242, v244);
      v248 = sub_10003E81C(v245, v247, &v318);
      v247, v249, v250, v251, v252, v253, v254, v255;
      *(v241 + 4) = v248;
      *(v241 + 12) = 2080;
      SFAirDrop.NearbySharingInteraction.creationDate.getter();
      v256 = dispatch thunk of CustomStringConvertible.description.getter();
      v258 = v257;
      v235(v242, v244);
      v259 = v312[1];
      (v259)(v243, v308);
      v260 = sub_10003E81C(v256, v258, &v318);
      v258, v261, v262, v263, v264, v265, v266, v267;
      *(v241 + 14) = v260;
      v268 = v314;
      _os_log_impl(&_mh_execute_header, v314, v315, "Ending Boop due to AirDrop - transfer.startDate:%s > nearbySharingInteraction.creationDate:%s.", v241, 0x16u);
      swift_arrayDestroy();

      v233 = v301;
    }

    else
    {

      v259 = v312[1];
      (v259)(v236, v237);
    }

    v269 = v285;
    v270 = *(v1 + 16);
    v30 = v304;
    if (v270)
    {
      v271 = v270;
      SFAirDrop.NearbySharingInteraction.id.getter();
      v272 = sub_10009E13C(v269);
      v32 = v280;
      if (v272)
      {
        v273 = v272;
        v274 = type metadata accessor for TaskPriority();
        v275 = v281;
        (*(*(v274 - 8) + 56))(v281, 1, 1, v274);
        type metadata accessor for MainActor();
        v276 = v273;
        v277 = static MainActor.shared.getter();
        v278 = swift_allocObject();
        v278[2] = v277;
        v278[3] = &protocol witness table for MainActor;
        v278[4] = v276;
        sub_1000F9860(0, 0, v275, &unk_100121BE0, v278);

        (*(v282 + 8))(v269, v283);
        (*(v297 + 1))(v299, v298);
        v279 = v301;
LABEL_79:
        (v259)(v279, v308);
        goto LABEL_50;
      }

      (*(v282 + 8))(v269, v283);
    }

    else
    {
      v32 = v280;
    }

    (*(v297 + 1))(v299, v298);
    v279 = v233;
    goto LABEL_79;
  }

LABEL_50:

  sub_1000FBA44(v161);
  if ((v303 & 1) == 0)
  {
    sub_1001032D4();

    goto LABEL_58;
  }

  sub_1000FBDAC();
  v30, v162, v163, v164, v165, v166, v167, v168;

  return v32;
}

void sub_1000FBA44(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = type metadata accessor for ActivityState();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v33 - v11;
  if (*(v1 + 32))
  {
    v33 = a1;
    v34 = v1;
    v37 = v2;

    dispatch thunk of Activity.activityState.getter();
    v13 = *(v7 + 104);
    v13(v9, enum case for ActivityState.dismissed(_:), v6);
    v14 = static ActivityState.== infix(_:_:)();
    v15 = *(v7 + 8);
    v15(v9, v6);
    v15(v12, v6);
    if (v14)
    {

      v3 = v37;
      a1 = v33;
      v4 = v34;
    }

    else
    {
      dispatch thunk of Activity.activityState.getter();
      v13(v9, enum case for ActivityState.ended(_:), v6);
      v16 = static ActivityState.== infix(_:_:)();

      v15(v9, v6);
      v15(v12, v6);
      v3 = v37;
      a1 = v33;
      v4 = v34;
      if ((v16 & 1) == 0)
      {
        return;
      }
    }
  }

  if (qword_100172248 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100007D20(v17, qword_1001788F8);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Requesting AirDrop activity", v20, 2u);
  }

  v21 = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);
  v35 = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
  v36 = v21;

  v22._countAndFlagsBits = 45;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0x732D72656E6E6162;
  v23._object = 0xEE006E6F69737365;
  String.append(_:)(v23);
  v24 = v36;
  v25 = sub_10007B6A8(v35, v36);
  v24, v26, v27, v28, v29, v30, v31, v32;
  if (!v3)
  {
    *(v4 + 32) = v25;

    sub_1000F9C60();
  }
}

void sub_1000FBDAC()
{
  if (*(v0 + 32))
  {
    v1 = qword_100172248;

    if (v1 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100007D20(v2, qword_1001788F8);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v28 = v6;
      *v5 = 136315138;
      v7 = Activity.id.getter();
      v9 = v8;
      v10 = sub_10003E81C(v7, v8, &v28);
      v9, v11, v12, v13, v14, v15, v16, v17;
      *(v5 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v3, v4, "Releasing AirDrop banner for activity %s", v5, 0xCu);
      sub_100007920(v6);
    }

    v18 = Activity.id.getter();
    v20 = v19;
    sub_1000FD57C(v18, v19);

    v20, v21, v22, v23, v24, v25, v26, v27;
  }
}

double sub_1000FBF64()
{
  v1 = v0;
  v2 = type metadata accessor for ActivityUIDismissalPolicy();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000077C8(&qword_100175CD0, &unk_10011D8C0);
  *&result = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v41 - v8;
  if (*(v0 + 32))
  {
    v10 = qword_100172248;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100007D20(v11, qword_1001788F8);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v43 = v9;
      v15 = v14;
      v42 = swift_slowAlloc();
      v44 = v42;
      *v15 = 136315138;
      v16 = Activity.id.getter();
      v18 = v17;
      v19 = v3;
      v20 = v1;
      v21 = v2;
      v22 = sub_10003E81C(v16, v17, &v44);
      v18, v23, v24, v25, v26, v27, v28, v29;
      *(v15 + 4) = v22;
      v2 = v21;
      v1 = v20;
      v3 = v19;
      _os_log_impl(&_mh_execute_header, v12, v13, "Releasing AirDrop banner and ending activity %s", v15, 0xCu);
      sub_100007920(v42);

      v9 = v43;
    }

    v30 = sub_1000077C8(&qword_100175CD8, &qword_10011D8D0);
    (*(*(v30 - 8) + 56))(v9, 1, 1, v30);
    static ActivityUIDismissalPolicy.immediate.getter();
    dispatch thunk of Activity.endSync(_:dismissalPolicy:)();
    (*(v3 + 8))(v5, v2);
    sub_1000159AC(v9, &qword_100175CD0, &unk_10011D8C0);
    v31 = Activity.id.getter();
    v33 = v32;
    sub_1000FD57C(v31, v32);
    v33, v34, v35, v36, v37, v38, v39, v40;
    *(v1 + 32) = 0;

    sub_1000F9C60();
  }

  return result;
}

void sub_1000FC284(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 32))
  {
    v4 = qword_100172248;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100007D20(v5, qword_1001788F8);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v8 = 136315394;
      v9 = Activity.id.getter();
      v11 = v10;
      v12 = sub_10003E81C(v9, v10, &v41);
      v11, v13, v14, v15, v16, v17, v18, v19;
      *(v8 + 4) = v12;
      *(v8 + 12) = 2080;
      v20 = Activity.id.getter();
      v22 = v21;
      v23 = sub_10003E81C(v20, v21, &v41);
      v22, v24, v25, v26, v27, v28, v29, v30;
      *(v8 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v6, v7, "Ending AirDrop banner activity %s due to Boop banner activity: %s", v8, 0x16u);
      swift_arrayDestroy();
    }

    sub_1000FBF64();
  }

  *(v2 + 24) = a1;

  v31 = Activity.id.getter();
  v33 = v32;
  sub_1000FC5B0(v31, v32);
  v33, v34, v35, v36, v37, v38, v39, v40;
}

void sub_1000FC4A4(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 24))
  {

    v3 = Activity.id.getter();
    v5 = v4;

    v6 = Activity.id.getter();
    v14 = v7;
    if (v5)
    {
      if (v3 == v6 && v5 == v7)
      {
        v5, v7, v6, v9, v10, v11, v12, v13;
        v14, v31, v32, v33, v34, v35, v36, v37;
      }

      else
      {
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v5, v17, v18, v19, v20, v21, v22, v23;
        v14, v24, v25, v26, v27, v28, v29, v30;
        if ((v16 & 1) == 0)
        {
          return;
        }
      }

      *(v2 + 24) = 0;

      v38 = Activity.id.getter();
      v14 = v39;
      sub_1000FD57C(v38, v39);
    }
  }

  else
  {
    Activity.id.getter();
    v14 = v7;
  }

  v14, v7, v8, v9, v10, v11, v12, v13;
}

void sub_1000FC5B0(uint64_t a1, _TtC9AirDropUI33AirDropTransferSessionsController *a2)
{
  v4 = v3;
  v5 = v2;
  v167 = a1;
  v7 = type metadata accessor for ActivityState();
  v165 = *(v7 - 8);
  __chkstk_darwin(v7);
  v164 = &v156 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v163 = &v156 - v10;
  v11 = *(v2 + 40);
  if (v11)
  {
    v12 = v11;
    v13 = [v12 sessionIdentifier];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    if (v14 == v167 && v16 == a2)
    {

      v16, v26, v27, v28, v29, v30, v31, v32;
      if (!*(v5 + 40))
      {
        goto LABEL_19;
      }

      goto LABEL_10;
    }

    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v16, v19, v20, v21, v22, v23, v24, v25;
    if (v18)
    {

      if (!*(v5 + 40))
      {
        goto LABEL_19;
      }

LABEL_10:
      if (qword_100172248 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      sub_100007D20(v33, qword_1001788F8);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "Not taking assertion as it is non-nil", v36, 2u);
      }

      goto LABEL_53;
    }

    if (qword_100172248 != -1)
    {
      swift_once();
    }

    v162 = v7;
    v37 = type metadata accessor for Logger();
    sub_100007D20(v37, qword_1001788F8);
    v38 = v12;

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.info.getter();
    a2, v41, v42, v43, v44, v45, v46, v47;

    if (os_log_type_enabled(v39, v40))
    {
      v48 = swift_slowAlloc();
      v161 = swift_slowAlloc();
      aBlock[0] = v161;
      *v48 = 136315394;
      v49 = [v38 sessionIdentifier];
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      LODWORD(v160) = v40;
      v52 = v51;

      v53 = sub_10003E81C(v50, v52, aBlock);
      v52, v54, v55, v56, v57, v58, v59, v60;
      *(v48 + 4) = v53;
      v4 = v3;
      *(v48 + 12) = 2080;
      *(v48 + 14) = sub_10003E81C(v167, a2, aBlock);
      _os_log_impl(&_mh_execute_header, v39, v160, "Releasing assertion for other activity %s in favour of new assertion for activity %s", v48, 0x16u);
      swift_arrayDestroy();
    }

    v61 = [v38 sessionIdentifier];
    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v63;

    sub_1000FD57C(v62, v64);
    v64, v65, v66, v67, v68, v69, v70, v71;
    v7 = v162;
    if (*(v5 + 40))
    {
      goto LABEL_10;
    }
  }

LABEL_19:
  if (*(v5 + 48))
  {
    if (qword_100172248 != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    sub_100007D20(v72, qword_1001788F8);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&_mh_execute_header, v73, v74, "Not taking assertion yet since banner is still showing", v75, 2u);
    }

    *(v5 + 49) = 1;
    return;
  }

  *(v5 + 49) = 0;
  if (qword_100172248 != -1)
  {
    swift_once();
  }

  v76 = type metadata accessor for Logger();
  v77 = sub_100007D20(v76, qword_1001788F8);

  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.default.getter();
  a2, v80, v81, v82, v83, v84, v85, v86;
  v87 = v7;
  if (os_log_type_enabled(v78, v79))
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    aBlock[0] = v89;
    *v88 = 136315138;
    *(v88 + 4) = sub_10003E81C(v167, a2, aBlock);
    _os_log_impl(&_mh_execute_header, v78, v79, "Acquire assertion START [sessionIdentifier = %s]", v88, 0xCu);
    sub_100007920(v89);
  }

  v90 = swift_allocObject();
  swift_weakInit();
  v91 = swift_allocObject();
  v92 = v167;
  v91[2] = v90;
  v91[3] = v92;
  v91[4] = a2;
  v93 = objc_allocWithZone(SNAProminentPresentationAssertion);

  v94 = String._bridgeToObjectiveC()();
  v95 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_1001034EC;
  aBlock[5] = v91;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000FE338;
  aBlock[3] = &unk_100161B60;
  v96 = _Block_copy(aBlock);

  v97 = [v93 initWithExplanation:v94 sessionIdentifier:v95 invalidationHandler:v96];
  _Block_release(v96);

  if ([v97 state] == 1)
  {
    v98 = *(v5 + 40);
    *(v5 + 40) = v97;
    v99 = v97;

    v34 = v99;
    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.default.getter();
    a2, v102, v103, v104, v105, v106, v107, v108;
    if (os_log_type_enabled(v100, v101))
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      aBlock[0] = v110;
      *v109 = 136315394;
      *(v109 + 4) = sub_10003E81C(v167, a2, aBlock);
      *(v109 + 12) = 2048;
      *(v109 + 14) = [v34 state];

      _os_log_impl(&_mh_execute_header, v100, v101, "Acquire assertion END [sessionIdentifier = %s, assertion state %lu]", v109, 0x16u);
      sub_100007920(v110);
    }

    else
    {
    }

LABEL_53:

    return;
  }

  if (!*(v5 + 32))
  {
LABEL_49:

    v34 = v97;
    v144 = Logger.logObject.getter();
    v145 = static os_log_type_t.error.getter();
    a2, v146, v147, v148, v149, v150, v151, v152;
    if (os_log_type_enabled(v144, v145))
    {
      v153 = swift_slowAlloc();
      v154 = swift_slowAlloc();
      aBlock[0] = v154;
      *v153 = 136315394;
      *(v153 + 4) = sub_10003E81C(v167, a2, aBlock);
      *(v153 + 12) = 2048;
      *(v153 + 14) = [v34 state];

      _os_log_impl(&_mh_execute_header, v144, v145, "Acquire assertion FAIL [sessionIdentifier = %s, assertion state %lu]", v153, 0x16u);
      sub_100007920(v154);
    }

    else
    {
    }

    sub_100103510();
    swift_allocError();
    *v155 = 0;
    v155[1] = 0;
    v155[2] = 1;
    swift_willThrow();
    goto LABEL_53;
  }

  v158 = v4;

  if (Activity.id.getter() == v167 && v111 == a2)
  {
    v111, v111, v112, v113, v114, v115, v116, v117;
  }

  else
  {
    v118 = v111;
    v119 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v118, v120, v121, v122, v123, v124, v125, v126;
    if ((v119 & 1) == 0)
    {
LABEL_48:

      goto LABEL_49;
    }
  }

  v160 = v77;
  v127 = v163;
  dispatch thunk of Activity.activityState.getter();
  v128 = v165;
  v129 = *(v165 + 104);
  v159 = v97;
  v130 = v164;
  v157 = v129;
  v129(v164, enum case for ActivityState.dismissed(_:), v87);
  v131 = static ActivityState.== infix(_:_:)();
  v132 = *(v128 + 8);
  v133 = v130;
  v97 = v159;
  v132(v133, v87);
  v162 = v87;
  v165 = v128 + 8;
  v132(v127, v87);
  if ((v131 & 1) == 0)
  {
    v134 = v163;
    dispatch thunk of Activity.activityState.getter();
    v135 = v164;
    v136 = v162;
    v157(v164, enum case for ActivityState.ended(_:), v162);
    v137 = static ActivityState.== infix(_:_:)();
    v138 = v135;
    v97 = v159;
    v132(v138, v136);
    v132(v134, v136);
    if ((v137 & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  if (qword_100172150 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v139 = aBlock[0];
  if (!aBlock[0])
  {
    goto LABEL_48;
  }

  v140 = Logger.logObject.getter();
  v141 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v140, v141))
  {
    v142 = swift_slowAlloc();
    *v142 = 0;
    _os_log_impl(&_mh_execute_header, v140, v141, "Acquire assertion failed due to activity being ended, recreating activity and retrying...", v142, 2u);
  }

  *(v5 + 32) = 0;

  sub_1000F9C60();
  v143 = v158;
  sub_1000FBA44(v139);
  if (!v143)
  {
    sub_1001032D4();
  }
}

uint64_t sub_1000FD210(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a1;
  v14[6] = a2;
  v15 = swift_allocObject();
  *(v15 + 16) = &unk_100121AF8;
  *(v15 + 24) = v14;

  v16 = a1;
  swift_errorRetain();
  static Task<>.noThrow(priority:operation:)();

  return sub_1000159AC(v11, &qword_100172F50, &qword_10011E500);
}

uint64_t sub_1000FD3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000FD494, v7, v6);
}

uint64_t sub_1000FD494()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100103670(*(v0 + 48), *(v0 + 56), [*(v0 + 64) state], objc_msgSend(*(v0 + 64), "invalidationReason"), 0, *(v0 + 72));
  }

  v1 = *(v0 + 8);

  return v1();
}

void sub_1000FD57C(uint64_t a1, _TtC9AirDropUI33AirDropTransferSessionsController *a2)
{
  v5 = *(v2 + 40);
  if (v5)
  {
    v6 = v2;
    v7 = qword_100172248;
    v43 = v5;
    if (v7 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100007D20(v8, qword_1001788F8);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    a2, v11, v12, v13, v14, v15, v16, v17;
    if (os_log_type_enabled(v9, v10))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v44 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_10003E81C(a1, a2, &v44);
      _os_log_impl(&_mh_execute_header, v9, v10, "Release assertion START [sessionIdentifier = %s]", v18, 0xCu);
      sub_100007920(v19);
    }

    [v43 invalidate];
    v20 = *(v6 + 40);
    *(v6 + 40) = 0;

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    a2, v23, v24, v25, v26, v27, v28, v29;
    if (os_log_type_enabled(v21, v22))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v44 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_10003E81C(a1, a2, &v44);
      _os_log_impl(&_mh_execute_header, v21, v22, "Release assertion END [sessionIdentifier = %s]", v30, 0xCu);
      sub_100007920(v31);

      goto LABEL_12;
    }
  }

  else
  {
    if (qword_100172248 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100007D20(v32, qword_1001788F8);

    v43 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    a2, v34, v35, v36, v37, v38, v39, v40;
    if (os_log_type_enabled(v43, v33))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v44 = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_10003E81C(a1, a2, &v44);
      _os_log_impl(&_mh_execute_header, v43, v33, "Not releasing assertion for session identifier %s since assertion is nil", v41, 0xCu);
      sub_100007920(v42);

      goto LABEL_12;
    }
  }

LABEL_12:
}

void sub_1000FD910(char a1)
{
  v2 = v1;
  v4 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  *(v2 + 48) = a1;
  if ((a1 & 1) == 0)
  {
    if (qword_100172248 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100007D20(v7, qword_1001788F8);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Banner session dismissed", v10, 2u);
    }

    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    v12 = swift_allocObject();
    *(v12 + 16) = &unk_100121A88;
    *(v12 + 24) = v2;

    static Task<>.noThrow(priority:operation:)();

    sub_1000159AC(v6, &qword_100172F50, &qword_10011E500);
  }
}

uint64_t sub_1000FDB14(uint64_t a1)
{
  *(v1 + 24) = a1;
  type metadata accessor for MainActor();
  *(v1 + 32) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000FDBAC, v3, v2);
}

uint64_t sub_1000FDBAC()
{
  v1 = v0[3];

  if (*(v1 + 49) == 1)
  {
    if (qword_100172248 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100007D20(v2, qword_1001788F8);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Taking assertion for banner requested while racing", v5, 2u);
    }

    v6 = v0[3];

    if (*(v6 + 24))
    {

      v7 = Activity.id.getter();
      v9 = v8;
      sub_1000FC5B0(v7, v8);
      v9, v10, v11, v12, v13, v14, v15, v16;
LABEL_8:

      goto LABEL_14;
    }

    if (qword_100172150 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v0[2])
    {
      sub_1000FBA44(v0[2]);
      sub_1001032D4();
      goto LABEL_8;
    }

    *(v1 + 49) = 0;
  }

LABEL_14:
  v17 = v0[1];

  return v17();
}

uint64_t sub_1000FDECC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000FDF40()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000167E4;

  return sub_1000FDB14(v0);
}

uint64_t sub_1000FDFD0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000FE058(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1000077C8(&qword_100172FD0, &qword_10011A210);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v10 - v7;
  sub_100007BA4(a1, &v10 - v7, &qword_100172FD0, &qword_10011A210);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100007BA4(v8, v5, &qword_100172FD0, &qword_10011A210);

  static Published.subscript.setter();
  return sub_1000159AC(v8, &qword_100172FD0, &qword_10011A210);
}

uint64_t sub_1000FE1C4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7)
{
  v8 = (a5)(0, a2, a3, a4);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = &v18 - v14;
  v16 = *(v9 + 16);
  v16(&v18 - v14, a1, v8, v13);
  swift_getKeyPath();
  swift_getKeyPath();
  (v16)(v11, v15, v8);

  static Published.subscript.setter();
  return (*(v9 + 8))(v15, v8);
}

void sub_1000FE338(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

uint64_t sub_1000FE3CC(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void *sub_1000FE404(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

void sub_1000FE424(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t sub_1000FE498@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

double (*sub_1000FE4C8(double (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1000FE548;
  }

  __break(1u);
  return result;
}

id sub_1000FE550(id result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a5 + 36) != a3)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = *(a5 + 48);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 16))(v7, v8 + *(*(v9 - 8) + 72) * a2, v9);
  v10 = *(*(a5 + 56) + 8 * a2);

  return v10;
}

void sub_1000FE620(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_1000165C4(0, &qword_100178000, TUConversationActivitySession_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_1000165C4(0, &qword_100178000, TUConversationActivitySession_ptr);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t sub_1000FE844(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1000FE894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v265 = a6;
  v255 = a5;
  v267 = a4;
  v277 = a2;
  v271 = a1;
  v270 = type metadata accessor for SFAirDrop.Progress();
  v266 = *(v270 - 8);
  __chkstk_darwin(v270);
  v259 = &v249 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v251 = type metadata accessor for SFAirDropReceive.Failure();
  v252 = *(v251 - 8);
  __chkstk_darwin(v251);
  v249 = &v249 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v250 = &v249 - v9;
  v10 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v11 = *(v10 - 8);
  v272 = v10;
  v273 = v11;
  __chkstk_darwin(v10);
  v274 = &v249 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SFAirDropSend.Failure();
  v14 = *(v13 - 8);
  v263 = v13;
  v264 = v14;
  __chkstk_darwin(v13);
  v261 = &v249 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v262 = &v249 - v17;
  v18 = sub_1000077C8(&unk_100174FA0, &qword_10011A700);
  __chkstk_darwin(v18 - 8);
  v257 = &v249 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v258 = &v249 - v21;
  __chkstk_darwin(v22);
  v254 = &v249 - v23;
  __chkstk_darwin(v24);
  v26 = &v249 - v25;
  v27 = type metadata accessor for Date();
  v28 = *(v27 - 8);
  v268 = v27;
  v269 = v28;
  __chkstk_darwin(v27);
  v256 = &v249 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v249 - v31;
  __chkstk_darwin(v33);
  v253 = &v249 - v34;
  __chkstk_darwin(v35);
  v260 = &v249 - v36;
  __chkstk_darwin(v37);
  v39 = &v249 - v38;
  v40 = sub_1000077C8(&qword_100172FD0, &qword_10011A210);
  __chkstk_darwin(v40 - 8);
  v42 = &v249 - v41;
  v43 = type metadata accessor for SFAirDropSend.Transfer.State();
  v44 = *(v43 - 8);
  __chkstk_darwin(v43);
  v275 = &v249 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  *&v276 = &v249 - v47;
  v48 = type metadata accessor for SFAirDrop.DisplayPriority();
  v49 = *(v48 - 8);
  v50 = __chkstk_darwin(v48);
  v52 = &v249 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v49 + 104))(v52, enum case for SFAirDrop.DisplayPriority.high(_:), v48, v50);
  sub_100103DB0(&qword_100178AF0, &type metadata accessor for SFAirDrop.DisplayPriority, &protocol conformance descriptor for SFAirDrop.DisplayPriority);
  v53 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v49 + 8))(v52, v48);
  if (v53)
  {
    if (qword_100172248 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_100007D20(v54, qword_1001788F8);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&_mh_execute_header, v55, v56, "Showing banner because high display priority was requested", v57, 2u);
    }

    goto LABEL_7;
  }

  sub_100007BA4(v277, v42, &qword_100172FD0, &qword_10011A210);
  if ((*(v44 + 48))(v42, 1, v43) != 1)
  {
    v66 = v44;
    v67 = v276;
    (*(v44 + 32))(COERCE_DOUBLE(*&v276), v42, v43);
    v68 = *(v44 + 16);
    v69 = v275;
    v68(v275, *&v67, v43);
    v70 = (*(v66 + 88))(v69, v43);
    if (v70 == enum case for SFAirDropSend.Transfer.State.transferring(_:))
    {
      (*(v66 + 96))(v69, v43);
      *(v69 + 1), v71, v72, v73, v74, v75, v76, v77;
      v78 = sub_1000077C8(&qword_100172F30, &unk_100118BC0);
      *&v69[v78[16] + 8], v79, v80, v81, v82, v83, v84, v85;
      sub_100007BA4(v267, v26, &unk_100174FA0, &qword_10011A700);
      v87 = v268;
      v86 = v269;
      if ((*(v269 + 48))(v26, 1, v268) == 1)
      {
        (*(v66 + 8))(COERCE_DOUBLE(*&v67), v43);
        sub_1000159AC(v26, &unk_100174FA0, &qword_10011A700);
        v58 = 0;
        v88 = v270;
        v89 = v266;
      }

      else
      {
        (*(v86 + 32))(v39, v26, v87);
        v88 = v270;
        v89 = v266;
        if (v265)
        {
          (*(v86 + 8))(v39, v87);
          (*(v66 + 8))(COERCE_DOUBLE(*&v276), v43);
          v58 = 0;
        }

        else
        {
          v121 = v66;
          v122 = v260;
          static Date.now.getter();
          Date.timeIntervalSince(_:)();
          v124 = v123;
          v125 = *(v86 + 8);
          v125(v122, v87);
          v125(v39, v87);
          (*(v121 + 8))(COERCE_DOUBLE(*&v276), v43);
          v88 = v270;
          v58 = v124 <= 3.0;
        }
      }

      v126 = v78[12];
      v127 = v78[20];
      v128 = type metadata accessor for SFAirDrop.DeclineAction();
      (*(*(v128 - 8) + 8))(&v69[v127], v128);
      (*(v89 + 8))(&v69[v126], v88);
      return v58 & 1;
    }

    if (v70 != enum case for SFAirDropSend.Transfer.State.transferFailed(_:))
    {
      v119 = *(v66 + 8);
      v119(*&v67, v43);
      v119(v69, v43);
      v58 = 0;
      return v58 & 1;
    }

    (*(v66 + 96))(v69, v43);
    v97 = sub_1000077C8(&qword_100172F20, &qword_100118F10);
    v99 = v263;
    v98 = v264;
    v100 = v262;
    (*(v264 + 32))(v262, &v69[*(v97 + 48)], v263);
    v101 = v261;
    (*(v98 + 16))(v261, v100, v99);
    v102 = (*(v98 + 88))(v101, v99);
    if (v102 == enum case for SFAirDropSend.Failure.missingEndpoint(_:))
    {
      goto LABEL_23;
    }

    if (v102 != enum case for SFAirDropSend.Failure.resolveFailure(_:))
    {
      if (v102 == enum case for SFAirDropSend.Failure.unexpected(_:))
      {
LABEL_23:
        v103 = *(v98 + 8);
        v103(v100, v99);
        (*(v66 + 8))(COERCE_DOUBLE(*&v67), v43);
        v103(v101, v99);
LABEL_24:
        v58 = 1;
LABEL_33:
        v120 = type metadata accessor for SFAirDropSend.Transfer.Metrics();
        (*(*(v120 - 8) + 8))(v69, v120);
        return v58 & 1;
      }

      if (v102 != enum case for SFAirDropSend.Failure.receiverDeclined(_:) && v102 != enum case for SFAirDropSend.Failure.cancelled(_:))
      {
        if (v102 == enum case for SFAirDropSend.Failure.unsupportedConnection(_:) || v102 == enum case for SFAirDropSend.Failure.badRequest(_:) || v102 == enum case for SFAirDropSend.Failure.badResponse(_:) || v102 == enum case for SFAirDropSend.Failure.missingDownloadDirectory(_:) || v102 == enum case for SFAirDropSend.Failure.streamError(_:) || v102 == enum case for SFAirDropSend.Failure.missingOwnContact(_:))
        {
          (*(v98 + 8))(v100, v99);
          (*(v66 + 8))(COERCE_DOUBLE(*&v67), v43);
          goto LABEL_24;
        }

        if (v102 == enum case for SFAirDropSend.Failure.missingRecordData(_:) || v102 == enum case for SFAirDropSend.Failure.serverError(_:))
        {
          (*(v264 + 8))(v262, v263);
          (*(v66 + 8))(COERCE_DOUBLE(*&v276), v43);
          v58 = 1;
          v69 = v275;
          goto LABEL_33;
        }

        v69 = v275;
        v67 = v276;
        v99 = v263;
        v98 = v264;
        v100 = v262;
        if (v102 != enum case for SFAirDropSend.Failure.insufficientStorage(_:))
        {
          v234 = _diagnoseUnexpectedEnumCase<A>(type:)();
          __break(1u);
          goto LABEL_94;
        }
      }
    }

    (*(v98 + 8))(v100, v99);
    (*(v66 + 8))(COERCE_DOUBLE(*&v67), v43);
    v58 = 0;
    goto LABEL_33;
  }

  sub_1000159AC(v42, &qword_100172FD0, &qword_10011A210);
  v60 = v273;
  v61 = v274;
  v62 = v272;
  (*(v273 + 16))(v274, v271, v272);
  v63 = (*(v60 + 88))(v61, v62);
  if (v63 == enum case for SFAirDropReceive.Transfer.State.waitingForAskResponse(_:))
  {
    (*(v60 + 96))(v61, v62);
    v64 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
LABEL_12:
    (*(*(v64 - 8) + 8))(v61, v64);
    sub_1000165C4(0, &qword_100172F70, NSUserDefaults_ptr);
    v65 = static NSUserDefaults.airdrop.getter();
    v58 = SFAirDropUserDefaults.systemLevelProgressEnabled.getter();

    return v58 & 1;
  }

  if (v63 == enum case for SFAirDropReceive.Transfer.State.waitingForShareContactPermissionResponse(_:))
  {
    (*(v60 + 96))(v61, v62);
    v90 = &qword_100173088;
    v91 = &unk_10011C520;
LABEL_18:
    v92 = *(sub_1000077C8(v90, v91) + 48);
    v93 = &unk_100174F80;
    v94 = &unk_10011AE60;
LABEL_19:
    v95 = sub_1000077C8(v93, v94);
    (*(*(v95 - 8) + 8))(&v61[v92], v95);
    v96 = type metadata accessor for SFAirDrop.ContactInfo();
LABEL_20:
    (*(*(v96 - 8) + 8))(v61, v96);
LABEL_7:
    v58 = 1;
    return v58 & 1;
  }

  if (v63 == enum case for SFAirDropReceive.Transfer.State.transferring(_:))
  {
    (*(v60 + 96))(v61, v62);
    v104 = sub_1000077C8(&unk_100174F70, &unk_10011A360);
    v105 = v104[12];
    *&v61[v104[16] + 8], v106, v107, v108, v109, v110, v111, v112;
    v113 = v266;
    v114 = v259;
    v115 = v270;
    (*(v266 + 32))(v259, &v61[v105], v270);
    v116 = v258;
    sub_100007BA4(v267, v258, &unk_100174FA0, &qword_10011A700);
    v118 = v268;
    v117 = v269;
    if ((*(v269 + 48))(v116, 1, v268) == 1)
    {
      (*(v113 + 8))(v114, v115);
      sub_1000159AC(v116, &unk_100174FA0, &qword_10011A700);
    }

    else
    {
      (*(v117 + 32))(v32, v116, v118);
      if ((v265 & 1) == 0)
      {
        v276 = COERCE_DOUBLE(SFAirDrop.Progress.percent.getter());
        LODWORD(v277) = v154;
        v155 = v260;
        static Date.now.getter();
        Date.timeIntervalSince(_:)();
        v157 = v156;
        v158 = *(v117 + 8);
        v158(v155, v118);
        v158(v32, v118);
        (*(v113 + 8))(v114, v115);
        if ((v277 & 1) != 0 || v276 <= 0.9)
        {
          v159 = 3.0;
        }

        else
        {
          v159 = 4.0;
        }

        v58 = v157 <= v159;
        goto LABEL_65;
      }

      (*(v117 + 8))(v32, v118);
      (*(v113 + 8))(v114, v115);
    }

    v58 = 0;
LABEL_65:
    v172 = v104[20];
    v173 = type metadata accessor for SFAirDrop.DeclineAction();
LABEL_66:
    (*(*(v173 - 8) + 8))(&v61[v172], v173);
    v174 = type metadata accessor for SFAirDropReceive.ItemDestination();
LABEL_67:
    (*(*(v174 - 8) + 8))(v61, v174);
    return v58 & 1;
  }

  if (v63 == enum case for SFAirDropReceive.Transfer.State.analyzingFullContent(_:))
  {
    (*(v60 + 96))(v61, v62);
    v129 = sub_1000077C8(&unk_100173CD0, &unk_10011C510);
    *&v61[*(v129 + 48)], v130, v131, v132, v133, v134, v135, v136;
    v137 = *(v129 + 80);
    v138 = type metadata accessor for SFAirDrop.DeclineAction();
    (*(*(v138 - 8) + 8))(&v61[v137], v138);
    goto LABEL_38;
  }

  if (v63 == enum case for SFAirDropReceive.Transfer.State.waitingForSensitiveContentResponse(_:))
  {
    (*(v60 + 96))(v61, v62);
    v143 = sub_1000077C8(&qword_100173CE0, &qword_100118F90);
    *&v61[*(v143 + 48)], v144, v145, v146, v147, v148, v149, v150;
    v151 = *(v143 + 64);
    v152 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
    (*(*(v152 - 8) + 8))(&v61[v151], v152);
    v96 = type metadata accessor for SFAirDropReceive.ItemDestination();
    goto LABEL_20;
  }

  if (v63 == enum case for SFAirDropReceive.Transfer.State.importing(_:))
  {
    (*(v60 + 96))(v61, v62);
    v160 = sub_1000077C8(&unk_100174F60, &qword_10011C4C0);
    *&v61[*(v160 + 48)], v161, v162, v163, v164, v165, v166, v167;
LABEL_38:
    v139 = type metadata accessor for SFAirDropReceive.ItemDestination();
    (*(*(v139 - 8) + 8))(v61, v139);
    v140 = v257;
    sub_100007BA4(v267, v257, &unk_100174FA0, &qword_10011A700);
    v142 = v268;
    v141 = v269;
    if ((*(v269 + 48))(v140, 1, v268) == 1)
    {
      sub_1000159AC(v140, &unk_100174FA0, &qword_10011A700);
      v58 = 0;
    }

    else
    {
      v153 = v256;
      (*(v141 + 32))(v256, v140, v142);
      if (v265)
      {
        (*(v141 + 8))(v153, v142);
        v58 = 0;
      }

      else
      {
        v168 = v260;
        static Date.now.getter();
        Date.timeIntervalSince(_:)();
        v170 = v169;
        v171 = *(v141 + 8);
        v171(v168, v142);
        v171(v153, v142);
        v58 = v170 <= 5.0;
      }
    }

    return v58 & 1;
  }

  if (v63 == enum case for SFAirDropReceive.Transfer.State.waitingForOpenResponse(_:))
  {
    (*(v60 + 96))(v61, v62);
    v175 = sub_1000077C8(&qword_100173078, &unk_100118F60);
    *&v61[v175[12]], v176, v177, v178, v179, v180, v181, v182;
    *&v61[v175[16]], v183, v184, v185, v186, v187, v188, v189;
    v190 = v254;
    sub_100007BA4(v255, v254, &unk_100174FA0, &qword_10011A700);
    v192 = v268;
    v191 = v269;
    if ((*(v269 + 48))(v190, 1, v268) == 1)
    {
      sub_1000159AC(v190, &unk_100174FA0, &qword_10011A700);
      v58 = 0;
    }

    else
    {
      v193 = v253;
      (*(v191 + 32))(v253, v190, v192);
      v194 = v260;
      static Date.now.getter();
      Date.timeIntervalSince(_:)();
      v196 = v195;
      v197 = *(v191 + 8);
      v197(v194, v192);
      v197(v193, v192);
      v58 = v196 <= 7.0;
    }

    v172 = v175[20];
    v173 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
    goto LABEL_66;
  }

  if (v63 == enum case for SFAirDropReceive.Transfer.State.waitingForShouldImportContactResponse(_:))
  {
    (*(v60 + 96))(v61, v62);
    v92 = *(sub_1000077C8(&qword_100173080, &unk_100118F80) + 48);
    v93 = &unk_100173CB0;
    v94 = &unk_10011AE50;
    goto LABEL_19;
  }

  if (v63 == enum case for SFAirDropReceive.Transfer.State.waitingForContactShareBackResponse(_:))
  {
    (*(v60 + 96))(v61, v62);
    v90 = &unk_100174FD0;
    v91 = &unk_100118F70;
    goto LABEL_18;
  }

  if (v63 == enum case for SFAirDropReceive.Transfer.State.completedSuccessfully(_:))
  {
    (*(v60 + 96))(v61, v62);
    v198 = sub_1000077C8(&qword_100174FC0, &unk_10011C5F0);
    v199 = v198[12];
    *&v61[v198[16] + 8], v200, v201, v202, v203, v204, v205, v206;
    *&v61[v198[20]], v207, v208, v209, v210, v211, v212, v213;
    *&v61[v198[24]], v214, v215, v216, v217, v218, v219, v220;
    *&v61[v198[28]], v221, v222, v223, v224, v225, v226, v227;
    v228 = type metadata accessor for SFAirDropReceive.ItemDestination();
    (*(*(v228 - 8) + 8))(&v61[v199], v228);
    v64 = type metadata accessor for SFAirDropReceive.Transfer.Metrics();
    goto LABEL_12;
  }

  if (v63 != enum case for SFAirDropReceive.Transfer.State.transferFailed(_:))
  {
    (*(v60 + 8))(v61, v62);
    v58 = 0;
    return v58 & 1;
  }

  (*(v60 + 96))(v61, v62);
  v229 = sub_1000077C8(&qword_100174FB0, &unk_10011C5E0);
  v230 = v252;
  v231 = v250;
  v232 = v251;
  (*(v252 + 32))(v250, &v61[*(v229 + 48)], v251);
  v233 = v249;
  (*(v230 + 16))(v249, v231, v232);
  v234 = (*(v230 + 88))(v233, v232);
  if (v234 == enum case for SFAirDropReceive.Failure.unsupportedType(_:))
  {
    v235 = v252;
    v236 = v251;
    (*(v252 + 8))(v250, v251);
    v237 = v249;
    (*(v235 + 96))(v249, v236);
    v237[1], v238, v239, v240, v241, v242, v243, v244;
    v245 = *(sub_1000077C8(&qword_100174FB8, &unk_100121C50) + 48);
    v246 = type metadata accessor for URL();
    (*(*(v246 - 8) + 8))(v237 + v245, v246);
    v58 = 1;
LABEL_100:
    v174 = type metadata accessor for SFAirDropReceive.Transfer.Metrics();
    goto LABEL_67;
  }

  if (v234 == enum case for SFAirDropReceive.Failure.unexpected(_:))
  {
    v247 = *(v252 + 8);
    v248 = v251;
    v247(v250, v251);
    v247(v249, v248);
    v58 = 1;
LABEL_99:
    v61 = v274;
    goto LABEL_100;
  }

  if (v234 == enum case for SFAirDropReceive.Failure.declined(_:) || v234 == enum case for SFAirDropReceive.Failure.askDismissed(_:))
  {
    goto LABEL_98;
  }

  if (v234 == enum case for SFAirDropReceive.Failure.senderCancelled(_:))
  {
LABEL_91:
    (*(v252 + 8))(v250, v251);
    v58 = 1;
    goto LABEL_99;
  }

LABEL_94:
  if (v234 == enum case for SFAirDropReceive.Failure.receiverCancelled(_:) || v234 == enum case for SFAirDropReceive.Failure.mixedTypes(_:))
  {
    goto LABEL_98;
  }

  if (v234 == enum case for SFAirDropReceive.Failure.missingDownloadDirectory(_:))
  {
    goto LABEL_91;
  }

  if (v234 == enum case for SFAirDropReceive.Failure.missingOwnContact(_:))
  {
LABEL_98:
    (*(v252 + 8))(v250, v251);
    v58 = 0;
    goto LABEL_99;
  }

  if (v234 == enum case for SFAirDropReceive.Failure.streamError(_:) || v234 == enum case for SFAirDropReceive.Failure.askNotHandled(_:) || v234 == enum case for SFAirDropReceive.Failure.incompleteTransfer(_:) || v234 == enum case for SFAirDropReceive.Failure.badRequest(_:) || v234 == enum case for SFAirDropReceive.Failure.moveToAppFailed(_:) || v234 == enum case for SFAirDropReceive.Failure.insufficientStorage(_:))
  {
    goto LABEL_91;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void sub_100100314(char *a1)
{
  v2 = type metadata accessor for Date();
  v308 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v293[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v293[-v6];
  __chkstk_darwin(v8);
  v310 = &v293[-v9];
  __chkstk_darwin(v10);
  v309 = &v293[-v11];
  v340 = type metadata accessor for SFAirDropSend.Transfer.State();
  v318 = *(v340 - 1);
  __chkstk_darwin(v340);
  v322 = &v293[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v321 = &v293[-v14];
  __chkstk_darwin(v15);
  v316 = &v293[-v16];
  __chkstk_darwin(v17);
  v314 = &v293[-v18];
  v19 = sub_1000077C8(&unk_100174FA0, &qword_10011A700);
  __chkstk_darwin(v19 - 8);
  v21 = &v293[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v313 = &v293[-v23];
  __chkstk_darwin(v24);
  v311 = &v293[-v25];
  __chkstk_darwin(v26);
  v335 = &v293[-v27];
  __chkstk_darwin(v28);
  v332 = &v293[-v29];
  v331 = type metadata accessor for SFAirDrop.DisplayPriority();
  v30 = *(v331 - 8);
  __chkstk_darwin(v331);
  v330 = &v293[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = sub_1000077C8(&qword_100172FD0, &qword_10011A210);
  __chkstk_darwin(v32 - 8);
  v323 = &v293[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v34);
  v336 = &v293[-v35];
  __chkstk_darwin(v36);
  v319 = &v293[-v37];
  __chkstk_darwin(v38);
  v315 = &v293[-v39];
  __chkstk_darwin(v40);
  v339 = &v293[-v41];
  v42 = type metadata accessor for SFAirDropReceive.Transfer.State();
  __chkstk_darwin(v42);
  v312 = &v293[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v44);
  v317 = &v293[-v45];
  __chkstk_darwin(v46);
  v320 = &v293[-v47];
  __chkstk_darwin(v48);
  v327 = &v293[-v49];
  __chkstk_darwin(v50);
  v333 = &v293[-v51];
  __chkstk_darwin(v52);
  __chkstk_darwin(v53);
  v329 = &v293[-v57];
  if (!*(a1 + 2))
  {
    return;
  }

  v306 = v56;
  v337 = v54;
  v303 = v21;
  v304 = v7;
  v302 = v4;
  v305 = v2;
  v342 = &_swiftEmptyArrayStorage;
  KeyPath = (a1 + 64);
  v59 = 1 << a1[32];
  v60 = -1;
  if (v59 < 64)
  {
    v60 = ~(-1 << v59);
  }

  v61 = v60 & *(a1 + 8);
  v62 = (v59 + 63) >> 6;
  v325 = (v30 + 8);
  v307 = v55;
  v334 = (v55 + 8);

  v63 = 0;
  v326 = (a1 + 64);
  v324 = v62;
  v328 = a1;
  v64 = v332;
  while (v61)
  {
    v65 = v63;
LABEL_12:
    v66 = __clz(__rbit64(v61));
    v61 &= v61 - 1;
    v67 = *(*(a1 + 7) + ((v65 << 9) | (8 * v66)));
    swift_getKeyPath();
    swift_getKeyPath();

    v68 = v329;
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    v69 = v330;
    static Published.subscript.getter();

    v70 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferringStateStartTime;
    swift_beginAccess();
    sub_100007BA4(v67 + v70, v64, &unk_100174FA0, &qword_10011A700);
    v71 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
    swift_beginAccess();
    v72 = v335;
    sub_100007BA4(v67 + v71, v335, &unk_100174FA0, &qword_10011A700);
    v30 = v339;
    LODWORD(v338) = sub_1000FE894(v68, v339, v69, v64, v72, *(v67 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_systemApertureIsEnabled));
    sub_1000159AC(v72, &unk_100174FA0, &qword_10011A700);
    sub_1000159AC(v64, &unk_100174FA0, &qword_10011A700);
    (*v325)(v69, v331);
    sub_1000159AC(v30, &qword_100172FD0, &qword_10011A210);
    (*v334)(v68, v337);
    if (v338)
    {
      v30 = &v342;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    v63 = v65;
    a1 = v328;
    KeyPath = v326;
    v62 = v324;
  }

  while (1)
  {
    v65 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
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
      goto LABEL_117;
    }

    if (v65 >= v62)
    {
      break;
    }

    v61 = *(KeyPath + 8 * v65);
    ++v63;
    if (v61)
    {
      goto LABEL_12;
    }
  }

  v30 = v342;
  if ((v342 & 0x8000000000000000) == 0 && (v342 & 0x4000000000000000) == 0)
  {
    v80 = *(v342 + 16);
    goto LABEL_17;
  }

LABEL_117:
  v80 = _CocoaArrayWrapper.endIndex.getter();
LABEL_17:
  v81 = v319;
  if (!v80)
  {
    goto LABEL_57;
  }

  while (2)
  {
    v82 = 0;
    if (v30 >> 62)
    {
      goto LABEL_107;
    }

LABEL_19:
    v83 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v83)
    {
LABEL_108:
      v30, v73, v74, v75, v76, v77, v78, v79;
      return;
    }

LABEL_20:
    LODWORD(v332) = v82;
    v84 = 0;
    v85 = v30 & 0xC000000000000001;
    v342 = &_swiftEmptyArrayStorage;
    v86 = v30 & 0xFFFFFFFFFFFFFF8;
    v339 = (v318 + 48);
    do
    {
      if (v85)
      {
        a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v87 = v84 + 1;
        if (__OFADD__(v84, 1))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v84 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_110;
        }

        a1 = *(v30 + 8 * v84 + 32);

        v87 = v84 + 1;
        if (__OFADD__(v84, 1))
        {
LABEL_30:
          __break(1u);
          return;
        }
      }

      v88 = v30;
      swift_getKeyPath();
      KeyPath = swift_getKeyPath();
      static Published.subscript.getter();

      v338 = *v339;
      if ((v338)(v81, 1, v340) == 1)
      {
        sub_1000159AC(v81, &qword_100172FD0, &qword_10011A210);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        KeyPath = *(v342 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {

        sub_1000159AC(v81, &qword_100172FD0, &qword_10011A210);
      }

      ++v84;
    }

    while (v87 != v83);
    v89 = 0;
    v335 = v342;
    v342 = &_swiftEmptyArrayStorage;
    while (v85)
    {
      a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v97 = v89 + 1;
      if (__OFADD__(v89, 1))
      {
        goto LABEL_42;
      }

LABEL_38:
      swift_getKeyPath();
      KeyPath = swift_getKeyPath();
      v98 = v336;
      static Published.subscript.getter();

      if ((v338)(v98, 1, v340) == 1)
      {

        sub_1000159AC(v98, &qword_100172FD0, &qword_10011A210);
      }

      else
      {
        sub_1000159AC(v98, &qword_100172FD0, &qword_10011A210);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        KeyPath = *(v342 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v89;
      v30 = v88;
      if (v97 == v83)
      {
        goto LABEL_43;
      }
    }

    if (v89 >= *(v86 + 16))
    {
      goto LABEL_111;
    }

    a1 = *(v30 + 8 * v89 + 32);

    v97 = v89 + 1;
    if (!__OFADD__(v89, 1))
    {
      goto LABEL_38;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    v30, v90, v91, v92, v93, v94, v95, v96;
    v99 = v342;
    KeyPath = v335;
    if ((v335 & 0x8000000000000000) == 0 && (v335 & 0x4000000000000000) == 0)
    {
      v81 = v323;
      v336 = *(v335 + 16);
      if (v336)
      {
        goto LABEL_46;
      }

LABEL_119:

      v342 = &_swiftEmptyArrayStorage;
      if (v99 < 0 || (v99 & 0x4000000000000000) != 0)
      {
        goto LABEL_177;
      }

      v101 = *(v99 + 16);
      if (v101)
      {
        goto LABEL_122;
      }

LABEL_178:
      v30 = &_swiftEmptyArrayStorage;
      if ((&_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
      {
        goto LABEL_185;
      }

      goto LABEL_179;
    }

    v193 = _CocoaArrayWrapper.endIndex.getter();
    v81 = v323;
    v336 = v193;
    if (!v193)
    {
      goto LABEL_119;
    }

LABEL_46:

    v100 = 0;
    v342 = &_swiftEmptyArrayStorage;
    v340 = (KeyPath & 0xC000000000000001);
    v101 = (v307 + 88);
    v339 = (v307 + 96);
    v102 = enum case for SFAirDropReceive.Transfer.State.waitingForAskResponse(_:);
    v81 = &unk_100121BC0;
LABEL_49:
    if (!v340)
    {
      if (v100 >= *(KeyPath + 16))
      {
        goto LABEL_112;
      }

      v99 = *(KeyPath + 8 * v100 + 32);

      v88 = (v100 + 1);
      if (!__OFADD__(v100, 1))
      {
        goto LABEL_52;
      }

LABEL_56:
      __break(1u);
LABEL_57:
      v106 = sub_1000F92B4(a1);
      if (v106)
      {
        if (*(v106 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_systemApertureIsEnabled) == 1)
        {
          v301 = v106;

          v342 = &_swiftEmptyArrayStorage;
          v107 = 1 << a1[32];
          v108 = -1;
          if (v107 < 64)
          {
            v108 = ~(-1 << v107);
          }

          v109 = v108 & *(a1 + 8);
          v300 = v306 + 8;
          v110 = (v107 + 63) >> 6;
          v111 = (v318 + 48);
          v339 = (v318 + 32);
          v338 = v318 + 88;
          LODWORD(v335) = enum case for SFAirDropSend.Transfer.State.analyzingFullContent(_:);
          LODWORD(v325) = enum case for SFAirDropSend.Transfer.State.waitingForSensitiveContentResponse(_:);
          v299 = enum case for SFAirDropSend.Transfer.State.created(_:);
          v297 = enum case for SFAirDropSend.Transfer.State.waitingForAskResponse(_:);
          v295 = (v318 + 8);
          v329 = (v318 + 96);
          v332 = (v307 + 88);
          LODWORD(v331) = enum case for SFAirDropReceive.Transfer.State.waitingForOpenResponse(_:);
          LODWORD(v324) = enum case for SFAirDropReceive.Transfer.State.completedSuccessfully(_:);
          v298 = enum case for SFAirDropReceive.Transfer.State.created(_:);
          v296 = enum case for SFAirDropReceive.Transfer.State.autoAccepted(_:);
          v326 = (v307 + 96);
          v294 = enum case for SFAirDropReceive.Transfer.State.analyizingPreview(_:);

          a1 = 0;
          v112 = v315;
          v330 = v111;
          while (1)
          {
            if (!v109)
            {
              while (1)
              {
                v134 = (a1 + 1);
                if (__OFADD__(a1, 1))
                {
                  goto LABEL_113;
                }

                if (v134 >= v110)
                {
                  break;
                }

                v109 = *(KeyPath + 8 * v134);
                ++a1;
                if (v109)
                {
                  a1 = v134;
                  goto LABEL_87;
                }
              }

              v30 = v342;
              v82 = 1;
              v81 = v319;
              if (v342 >> 62)
              {
LABEL_107:
                v191 = v82;
                v192 = _CocoaArrayWrapper.endIndex.getter();
                v82 = v191;
                v83 = v192;
                if (!v192)
                {
                  goto LABEL_108;
                }

                goto LABEL_20;
              }

              goto LABEL_19;
            }

LABEL_87:
            v109 &= v109 - 1;
            swift_getKeyPath();
            swift_getKeyPath();

            static Published.subscript.getter();

            v135 = v340;
            if ((*v111)(v112, 1, v340) == 1)
            {
              sub_1000159AC(v112, &qword_100172FD0, &qword_10011A210);
              swift_getKeyPath();
              swift_getKeyPath();
              v136 = v306;
              static Published.subscript.getter();

              v30 = v337;
              v137 = (*v332)(v136, v337);
              if (v137 == v331)
              {

                (*v326)(v136, v30);
                v116 = sub_1000077C8(&qword_100173078, &unk_100118F60);
                *(v136 + v116[12]), v117, v118, v119, v120, v121, v122, v123;
                *(v136 + v116[16]), v124, v125, v126, v127, v128, v129, v130;
                v131 = v116[20];
                v132 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
                (*(*(v132 - 8) + 8))(v136 + v131, v132);
                v133 = type metadata accessor for SFAirDropReceive.ItemDestination();
                (*(*(v133 - 8) + 8))(v136, v133);
                continue;
              }

              if (v137 == v324)
              {

                v138 = v306;
                (*v326)(v306, v337);
                v139 = sub_1000077C8(&qword_100174FC0, &unk_10011C5F0);
                v30 = v139[12];
                *(v300 + v139[16]), v140, v141, v142, v143, v144, v145, v146;
                *(v138 + v139[20]), v147, v148, v149, v150, v151, v152, v153;
                *(v138 + v139[24]), v154, v155, v156, v157, v158, v159, v160;
                *(v138 + v139[28]), v161, v162, v163, v164, v165, v166, v167;
                v168 = type metadata accessor for SFAirDropReceive.ItemDestination();
                (*(*(v168 - 8) + 8))(v138 + v30, v168);
                v169 = type metadata accessor for SFAirDropReceive.Transfer.Metrics();
                (*(*(v169 - 8) + 8))(v138, v169);
                continue;
              }

              if (v137 == v298 || v137 == v296 || v137 == v294)
              {
                goto LABEL_102;
              }

              (*v334)(v306, v337);
            }

            else
            {
              v30 = *v339;
              v170 = v314;
              (*v339)(v314, v112, v135);
              v171 = v316;
              (v30)(v316, v170, v135);
              v172 = (*v338)(v171, v135);
              if (v172 == v335)
              {

                (*v329)(v171, v135);
                *v171, v173, v174, v175, v176, v177, v178, v179;
                v180 = *(sub_1000077C8(&qword_100174130, &qword_10011C540) + 64);
                v181 = type metadata accessor for SFAirDrop.DeclineAction();
                (*(*(v181 - 8) + 8))(v171 + v180, v181);
LABEL_95:
                v112 = v315;
                v111 = v330;
                continue;
              }

              if (v172 == v325)
              {

                v30 = v316;
                (*v329)(v316, v340);
                *v30, v182, v183, v184, v185, v186, v187, v188;
                v189 = *(sub_1000077C8(&qword_100174128, &unk_10011C530) + 48);
                v190 = sub_1000077C8(&unk_100174F90, &unk_10011AE70);
                (*(*(v190 - 8) + 8))(v30 + v189, v190);
                goto LABEL_95;
              }

              v112 = v315;
              v111 = v330;
              if (v172 == v299 || v172 == v297)
              {
LABEL_102:

                continue;
              }

              (*v295)(v316, v340);
            }

            v30 = &v342;
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }
        }
      }

      continue;
    }

    break;
  }

  v99 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v88 = (v100 + 1);
  if (__OFADD__(v100, 1))
  {
    goto LABEL_56;
  }

LABEL_52:
  swift_getKeyPath();
  swift_getKeyPath();
  v103 = v333;
  static Published.subscript.getter();

  v104 = v103;

  a1 = *v101;
  v30 = v337;
  if ((*v101)(v104, v337) == v102)
  {
    (*v339)(v104, v30);
    v105 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
    (*(*(v105 - 8) + 8))(v104, v105);
    v30 = &v342;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  else
  {

    (*v334)(v104, v30);
  }

  ++v100;
  KeyPath = v335;
  if (v88 != v336)
  {
    goto LABEL_49;
  }

  v30 = v342;
  if ((v342 & 0x8000000000000000) != 0 || (v342 & 0x4000000000000000) != 0)
  {
    goto LABEL_139;
  }

  v113 = *(v342 + 16);
  if (v113)
  {
    while (2)
    {
      KeyPath = v30 & 0xC000000000000001;
      if ((v30 & 0xC000000000000001) != 0)
      {
        goto LABEL_174;
      }

      if (*(v30 + 16))
      {

        if (v113 == 1)
        {
          goto LABEL_292;
        }

        goto LABEL_68;
      }

      __break(1u);
LABEL_177:
      v101 = _CocoaArrayWrapper.endIndex.getter();
      if (!v101)
      {
        goto LABEL_178;
      }

LABEL_122:
      v194 = 0;
      v88 = (v99 & 0xC000000000000001);
      v337 = (v318 + 32);
      v336 = (v318 + 88);
      LODWORD(v335) = enum case for SFAirDropSend.Transfer.State.transferFailed(_:);
      v333 = (v318 + 8);
      v331 = v318 + 96;
      v334 = (v99 & 0xC000000000000001);
LABEL_125:
      if (!v88)
      {
        if (v194 >= *(v99 + 16))
        {
          __break(1u);
LABEL_139:
          v113 = _CocoaArrayWrapper.endIndex.getter();
          if (!v113)
          {
            goto LABEL_140;
          }

          continue;
        }

        a1 = *(v99 + 8 * v194 + 32);

        v196 = (v194 + 1);
        if (__OFADD__(v194, 1))
        {
          goto LABEL_135;
        }

        goto LABEL_128;
      }

      break;
    }

    a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v196 = (v194 + 1);
    if (!__OFADD__(v194, 1))
    {
LABEL_128:
      KeyPath = v99;
      v197 = v101;
      v30 = swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v198 = v340;

      if ((v338)(v81, 1, v198) == 1)
      {

        sub_1000159AC(v81, &qword_100172FD0, &qword_10011A210);
      }

      else
      {
        v30 = *v337;
        v199 = v81;
        v200 = v321;
        (*v337)(v321, v199, v198);
        v201 = v322;
        (v30)(v322, v200, v198);
        v202 = (*v336)(v201, v198);
        if (v202 == v335)
        {
          (*v331)(v201, v198);
          v203 = *(sub_1000077C8(&qword_100172F20, &qword_100118F10) + 48);
          v204 = type metadata accessor for SFAirDropSend.Failure();
          (*(*(v204 - 8) + 8))(&v201[v203], v204);
          v205 = type metadata accessor for SFAirDropSend.Transfer.Metrics();
          (*(*(v205 - 8) + 8))(v201, v205);
          v30 = &v342;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {

          (*v333)(v201, v198);
        }

        v81 = v323;
        v88 = v334;
      }

      ++v194;
      v101 = v197;
      v195 = v196 == v197;
      v99 = KeyPath;
      if (v195)
      {
        goto LABEL_136;
      }

      goto LABEL_125;
    }

LABEL_135:
    __break(1u);
LABEL_136:
    v30 = v342;
    if ((v342 & 0x8000000000000000) != 0)
    {
LABEL_185:
      v222 = _CocoaArrayWrapper.endIndex.getter();
      if (!v222)
      {
        goto LABEL_186;
      }

LABEL_181:
      v223 = v30 & 0xC000000000000001;
      if ((v30 & 0xC000000000000001) != 0)
      {
        goto LABEL_209;
      }

      if (*(v30 + 16))
      {
        v81 = *(v30 + 32);

        if (v222 == 1)
        {
          goto LABEL_292;
        }

        goto LABEL_210;
      }

      goto LABEL_226;
    }

LABEL_179:
    if ((v30 & 0x4000000000000000) != 0)
    {
      goto LABEL_185;
    }

    v222 = *(v30 + 16);
    if (v222)
    {
      goto LABEL_181;
    }

LABEL_186:

    if (!v101)
    {
      goto LABEL_293;
    }

    v81 = (v99 & 0xC000000000000001);
    v30 = v332;
    if ((v99 & 0xC000000000000001) != 0)
    {
      goto LABEL_271;
    }

    if (*(v99 + 16))
    {
      v224 = *(v99 + 32);

      if (v101 == 1)
      {
        goto LABEL_293;
      }

      while (1)
      {
        v223 = 1;
        while (1)
        {
          v30 = v224;
          v222 = v223;
LABEL_192:
          if (v81)
          {
            v224 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v223 = v222 + 1;
            if (__OFADD__(v222, 1))
            {
              break;
            }

            goto LABEL_199;
          }

          if ((v222 & 0x8000000000000000) != 0)
          {
            goto LABEL_207;
          }

          if (v222 >= *(v99 + 16))
          {
            goto LABEL_208;
          }

          v224 = *(v99 + 8 * v222 + 32);

          v223 = v222 + 1;
          if (__OFADD__(v222, 1))
          {
            break;
          }

LABEL_199:
          if ((static Date.< infix(_:_:)() & 1) == 0)
          {

            ++v222;
            if (v223 == v101)
            {
              goto LABEL_293;
            }

            goto LABEL_192;
          }

          if (v223 == v101)
          {
            goto LABEL_293;
          }
        }

        __break(1u);
LABEL_207:
        __break(1u);
LABEL_208:
        __break(1u);
LABEL_209:
        v81 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        if (v222 == 1)
        {
          goto LABEL_292;
        }

LABEL_210:
        KeyPath = 1;
        while (2)
        {
          if (v223)
          {
            v225 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            a1 = (KeyPath + 1);
            if (__OFADD__(KeyPath, 1))
            {
              break;
            }

            goto LABEL_218;
          }

          if ((KeyPath & 0x8000000000000000) != 0)
          {
            goto LABEL_224;
          }

          if (KeyPath >= *(v30 + 16))
          {
            goto LABEL_225;
          }

          v225 = *(v30 + 8 * KeyPath + 32);

          a1 = (KeyPath + 1);
          if (!__OFADD__(KeyPath, 1))
          {
LABEL_218:
            if (static Date.< infix(_:_:)())
            {

              v81 = v225;
              KeyPath = a1;
              if (a1 == v222)
              {
                goto LABEL_292;
              }
            }

            else
            {

              ++KeyPath;
              if (a1 == v222)
              {
                goto LABEL_292;
              }
            }

            continue;
          }

          break;
        }

        __break(1u);
LABEL_224:
        __break(1u);
LABEL_225:
        __break(1u);
LABEL_226:
        __break(1u);
LABEL_227:
        v113 = _CocoaArrayWrapper.endIndex.getter();
        if (!v113)
        {
          goto LABEL_228;
        }

LABEL_154:
        KeyPath = v30 & 0xC000000000000001;
        if ((v30 & 0xC000000000000001) != 0)
        {
          goto LABEL_268;
        }

        if (*(v30 + 16))
        {

          if (v113 == 1)
          {
            goto LABEL_292;
          }

          goto LABEL_157;
        }

        __break(1u);
LABEL_271:
        v224 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        if (v101 == 1)
        {
LABEL_293:

          return;
        }
      }
    }

    __break(1u);
    goto LABEL_274;
  }

LABEL_140:

  v206 = 0;
  v342 = &_swiftEmptyArrayStorage;
  v81 = &unk_100121BC0;
  v99 = enum case for SFAirDropReceive.Transfer.State.waitingForSensitiveContentResponse(_:);
  while (!v340)
  {
    if (v206 >= *(KeyPath + 16))
    {
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (v113 == 1)
      {
        goto LABEL_292;
      }

LABEL_68:
      v114 = 1;
      while (1)
      {
        if (KeyPath)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v115 = v114 + 1;
          if (__OFADD__(v114, 1))
          {
            goto LABEL_114;
          }
        }

        else
        {
          if ((v114 & 0x8000000000000000) != 0)
          {
            goto LABEL_115;
          }

          if (v114 >= *(v30 + 16))
          {
            goto LABEL_116;
          }

          v115 = v114 + 1;
          if (__OFADD__(v114, 1))
          {
            goto LABEL_114;
          }
        }

        if (static Date.< infix(_:_:)())
        {

          v114 = v115;
          if (v115 == v113)
          {
            goto LABEL_292;
          }
        }

        else
        {

          ++v114;
          if (v115 == v113)
          {
            goto LABEL_292;
          }
        }
      }
    }

    v207 = (v206 + 1);
    if (__OFADD__(v206, 1))
    {
      goto LABEL_150;
    }

LABEL_146:
    swift_getKeyPath();
    v113 = swift_getKeyPath();
    v208 = v327;
    static Published.subscript.getter();

    v30 = v337;
    if ((a1)(v208, v337) == v99)
    {
      (*v339)(v208, v30);
      v209 = sub_1000077C8(&qword_100173CE0, &qword_100118F90);
      *&v208[*(v209 + 48)], v210, v211, v212, v213, v214, v215, v216;
      v217 = *(v209 + 64);
      v218 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
      (*(*(v218 - 8) + 8))(&v208[v217], v218);
      v219 = type metadata accessor for SFAirDropReceive.ItemDestination();
      (*(*(v219 - 8) + 8))(v208, v219);
      v30 = &v342;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {

      (*v334)(v208, v30);
    }

    ++v206;
    KeyPath = v335;
    if (v207 == v336)
    {
      goto LABEL_151;
    }
  }

  specialized _ArrayBuffer._getElementSlowPath(_:)();
  v207 = (v206 + 1);
  if (!__OFADD__(v206, 1))
  {
    goto LABEL_146;
  }

LABEL_150:
  __break(1u);
LABEL_151:
  v30 = v342;
  if ((v342 & 0x8000000000000000) != 0 || (v342 & 0x4000000000000000) != 0)
  {
    goto LABEL_227;
  }

  v113 = *(v342 + 16);
  if (v113)
  {
    goto LABEL_154;
  }

LABEL_228:

  v226 = 0;
  v342 = &_swiftEmptyArrayStorage;
  v227 = enum case for SFAirDropReceive.Transfer.State.waitingForShareContactPermissionResponse(_:);
  v228 = enum case for SFAirDropReceive.Transfer.State.waitingForShouldImportContactResponse(_:);
  LODWORD(v338) = enum case for SFAirDropReceive.Transfer.State.waitingForContactShareBackResponse(_:);
  while (2)
  {
    if (!v340)
    {
      if (v226 >= *(v335 + 16))
      {
        __break(1u);
LABEL_265:
        __break(1u);
LABEL_266:
        __break(1u);
LABEL_267:
        __break(1u);
LABEL_268:
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        if (v113 == 1)
        {
          goto LABEL_292;
        }

LABEL_157:
        v220 = 1;
        while (1)
        {
          if (KeyPath)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            v221 = v220 + 1;
            if (__OFADD__(v220, 1))
            {
              goto LABEL_171;
            }
          }

          else
          {
            if ((v220 & 0x8000000000000000) != 0)
            {
              goto LABEL_172;
            }

            if (v220 >= *(v30 + 16))
            {
              goto LABEL_173;
            }

            v221 = v220 + 1;
            if (__OFADD__(v220, 1))
            {
              goto LABEL_171;
            }
          }

          if (static Date.< infix(_:_:)())
          {

            v220 = v221;
            if (v221 == v113)
            {
              goto LABEL_292;
            }
          }

          else
          {

            ++v220;
            if (v221 == v113)
            {
              goto LABEL_292;
            }
          }
        }
      }

      v113 = v226 + 1;
      if (__OFADD__(v226, 1))
      {
        goto LABEL_244;
      }

LABEL_235:
      swift_getKeyPath();
      swift_getKeyPath();
      KeyPath = v320;
      static Published.subscript.getter();

      v30 = v337;
      v234 = (a1)(KeyPath, v337);
      if (v234 == v227)
      {
        (*v339)(KeyPath, v30);
        v235 = &qword_100173088;
        v236 = &unk_10011C520;
        goto LABEL_237;
      }

      if (v234 != v228)
      {
        if (v234 == v338)
        {
          (*v339)(KeyPath, v337);
          v235 = &unk_100174FD0;
          v236 = &unk_100118F70;
LABEL_237:
          v229 = *(sub_1000077C8(v235, v236) + 48);
          v230 = &unk_100174F80;
          v231 = &unk_10011AE60;
LABEL_230:
          v232 = sub_1000077C8(v230, v231);
          (*(*(v232 - 8) + 8))(KeyPath + v229, v232);
          v233 = type metadata accessor for SFAirDrop.ContactInfo();
          (*(*(v233 - 8) + 8))(KeyPath, v233);
          v30 = &v342;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          KeyPath = *(v342 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {

          (*v334)(KeyPath, v337);
        }

        ++v226;
        if (v113 == v336)
        {
          goto LABEL_245;
        }

        continue;
      }

      (*v339)(KeyPath, v337);
      v229 = *(sub_1000077C8(&qword_100173080, &unk_100118F80) + 48);
      v230 = &unk_100173CB0;
      v231 = &unk_10011AE50;
      goto LABEL_230;
    }

    break;
  }

  specialized _ArrayBuffer._getElementSlowPath(_:)();
  v113 = v226 + 1;
  if (!__OFADD__(v226, 1))
  {
    goto LABEL_235;
  }

LABEL_244:
  __break(1u);
LABEL_245:
  v30 = v342;
  v88 = v335;
  if ((v342 & 0x8000000000000000) != 0 || (v342 & 0x4000000000000000) != 0)
  {
LABEL_274:
    v113 = _CocoaArrayWrapper.endIndex.getter();
    if (!v113)
    {
      goto LABEL_275;
    }

LABEL_248:
    KeyPath = v30 & 0xC000000000000001;
    if ((v30 & 0xC000000000000001) != 0)
    {
      goto LABEL_295;
    }

    if (*(v30 + 16))
    {

      if (v113 == 1)
      {
        goto LABEL_292;
      }

      goto LABEL_251;
    }

    __break(1u);
LABEL_298:
    v244 = _CocoaArrayWrapper.endIndex.getter();
    v245 = v312;
    if (!v244)
    {
      goto LABEL_299;
    }

LABEL_289:
    KeyPath = v30 & 0xC000000000000001;
    if ((v30 & 0xC000000000000001) == 0)
    {
      if (!*(v30 + 16))
      {
        goto LABEL_361;
      }

      if (v244 == 1)
      {
LABEL_292:

        goto LABEL_293;
      }

      goto LABEL_345;
    }

LABEL_344:
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    if (v244 == 1)
    {
      goto LABEL_292;
    }

LABEL_345:
    v290 = 1;
    v88 = &OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_startTime;
    while (1)
    {
      if (KeyPath)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v291 = v290 + 1;
        if (__OFADD__(v290, 1))
        {
          goto LABEL_358;
        }
      }

      else
      {
        if ((v290 & 0x8000000000000000) != 0)
        {
          goto LABEL_359;
        }

        if (v290 >= *(v30 + 16))
        {
          goto LABEL_360;
        }

        v291 = v290 + 1;
        if (__OFADD__(v290, 1))
        {
LABEL_358:
          __break(1u);
LABEL_359:
          __break(1u);
LABEL_360:
          __break(1u);
LABEL_361:
          __break(1u);
LABEL_362:
          v338 = _CocoaArrayWrapper.endIndex.getter();
          if (!v338)
          {
            goto LABEL_363;
          }

LABEL_318:
          v101 = (v339 & 0xC000000000000001);
          if ((v339 & 0xC000000000000001) != 0)
          {
            goto LABEL_382;
          }

          if (v339[2])
          {
            v280 = v339[4];

            goto LABEL_321;
          }

          __break(1u);
LABEL_384:
          v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_366:
          if (v336 == 1)
          {
            goto LABEL_293;
          }

          v244 = 1;
          while (1)
          {
            if (v340)
            {
              v292 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if ((v244 & 0x8000000000000000) != 0)
              {
                goto LABEL_380;
              }

              if (v244 >= v88[2])
              {
                goto LABEL_381;
              }

              v292 = v88[v244 + 4];
            }

            KeyPath = v244 + 1;
            if (__OFADD__(v244, 1))
            {
              break;
            }

            if (static Date.< infix(_:_:)())
            {

              v30 = v292;
              ++v244;
              if (KeyPath == v336)
              {
                goto LABEL_293;
              }
            }

            else
            {

              ++v244;
              if (KeyPath == v336)
              {
                goto LABEL_293;
              }
            }
          }

          __break(1u);
LABEL_380:
          __break(1u);
LABEL_381:
          __break(1u);
LABEL_382:
          v280 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_321:
          if (v338 == 1)
          {
            goto LABEL_292;
          }

          v281 = 1;
          v336 = v101;
          v282 = v305;
          while (2)
          {
            v283 = v280;
            v337 = v280;
LABEL_327:
            if (v101)
            {
              v280 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if ((v281 & 0x8000000000000000) != 0)
              {
                goto LABEL_342;
              }

              if (v281 >= v339[2])
              {
                goto LABEL_343;
              }

              v280 = v339[v281 + 4];
            }

            v244 = v281 + 1;
            if (__OFADD__(v281, 1))
            {
              goto LABEL_341;
            }

            v284 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
            swift_beginAccess();
            v30 = v313;
            sub_100007BA4(v283 + v284, v313, &unk_100174FA0, &qword_10011A700);
            KeyPath = *v330;
            if ((*v330)(v30, 1, v282) != 1)
            {
              v285 = v304;
              v340 = *v329;
              (v340)(v304, v313, v282);
              v286 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
              swift_beginAccess();
              v287 = v280 + v286;
              v288 = v303;
              sub_100007BA4(v287, v303, &unk_100174FA0, &qword_10011A700);
              if ((KeyPath)(v288, 1, v282) != 1)
              {
                v30 = v302;
                (v340)(v302, v288, v282);
                KeyPath = static Date.< infix(_:_:)();
                v289 = *v328;
                (*v328)(v30, v282);
                v289(v285, v282);
                v101 = v336;
                v283 = v337;
                if (KeyPath)
                {
LABEL_336:

                  ++v281;
                  if (v244 == v338)
                  {
                    goto LABEL_292;
                  }

                  continue;
                }

                goto LABEL_326;
              }

              (*v328)(v285, v282);
              v30 = v288;
              v101 = v336;
              v283 = v337;
            }

            break;
          }

          sub_1000159AC(v30, &unk_100174FA0, &qword_10011A700);
          if (static Date.< infix(_:_:)())
          {
            goto LABEL_336;
          }

LABEL_326:

          ++v281;
          if (v244 == v338)
          {
            goto LABEL_292;
          }

          goto LABEL_327;
        }
      }

      if (static Date.< infix(_:_:)())
      {

        v290 = v291;
        if (v291 == v244)
        {
          goto LABEL_292;
        }
      }

      else
      {

        ++v290;
        if (v291 == v244)
        {
          goto LABEL_292;
        }
      }
    }
  }

  v113 = *(v342 + 16);
  if (v113)
  {
    goto LABEL_248;
  }

LABEL_275:

  v239 = 0;
  v342 = &_swiftEmptyArrayStorage;
  v240 = enum case for SFAirDropReceive.Transfer.State.transferFailed(_:);
  while (2)
  {
    if (!v340)
    {
      if (v239 < v88[2])
      {

        v88 = (v239 + 1);
        if (__OFADD__(v239, 1))
        {
          goto LABEL_285;
        }

LABEL_281:
        swift_getKeyPath();
        v113 = swift_getKeyPath();
        KeyPath = v317;
        static Published.subscript.getter();

        v30 = v337;
        if ((a1)(KeyPath, v337) == v240)
        {
          (*v339)(KeyPath, v30);
          v241 = *(sub_1000077C8(&qword_100174FB0, &unk_10011C5E0) + 48);
          v242 = type metadata accessor for SFAirDropReceive.Failure();
          (*(*(v242 - 8) + 8))(KeyPath + v241, v242);
          v243 = type metadata accessor for SFAirDropReceive.Transfer.Metrics();
          (*(*(v243 - 8) + 8))(KeyPath, v243);
          v30 = &v342;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          KeyPath = *(v342 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {

          (*v334)(KeyPath, v30);
        }

        ++v239;
        v195 = v88 == v336;
        v88 = v335;
        if (v195)
        {
          goto LABEL_286;
        }

        continue;
      }

      __break(1u);
LABEL_295:
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (v113 == 1)
      {
        goto LABEL_292;
      }

LABEL_251:
      v237 = 1;
      while (1)
      {
        if (KeyPath)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v238 = v237 + 1;
          if (__OFADD__(v237, 1))
          {
            goto LABEL_265;
          }
        }

        else
        {
          if ((v237 & 0x8000000000000000) != 0)
          {
            goto LABEL_266;
          }

          if (v237 >= *(v30 + 16))
          {
            goto LABEL_267;
          }

          v238 = v237 + 1;
          if (__OFADD__(v237, 1))
          {
            goto LABEL_265;
          }
        }

        if (static Date.< infix(_:_:)())
        {

          v237 = v238;
          if (v238 == v113)
          {
            goto LABEL_292;
          }
        }

        else
        {

          ++v237;
          if (v238 == v113)
          {
            goto LABEL_292;
          }
        }
      }
    }

    break;
  }

  specialized _ArrayBuffer._getElementSlowPath(_:)();
  v88 = (v239 + 1);
  if (!__OFADD__(v239, 1))
  {
    goto LABEL_281;
  }

LABEL_285:
  __break(1u);
LABEL_286:
  v30 = v342;
  if ((v342 & 0x8000000000000000) != 0 || (v342 & 0x4000000000000000) != 0)
  {
    goto LABEL_298;
  }

  v244 = *(v342 + 16);
  v245 = v312;
  if (v244)
  {
    goto LABEL_289;
  }

LABEL_299:

  v246 = 0;
  v330 = (v308 + 48);
  v341 = &_swiftEmptyArrayStorage;
  v329 = (v308 + 32);
  LODWORD(v333) = enum case for SFAirDropReceive.Transfer.State.waitingForOpenResponse(_:);
  v30 = &unk_100174FA0;
  v328 = (v308 + 8);
  v244 = v311;
  while (2)
  {
    if (v340)
    {
      v247 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v246 >= v88[2])
      {
        goto LABEL_340;
      }

      v247 = v88[v246 + 4];
    }

    v338 = v246 + 1;
    if (__OFADD__(v246, 1))
    {
      __break(1u);
LABEL_340:
      __break(1u);
LABEL_341:
      __break(1u);
LABEL_342:
      __break(1u);
LABEL_343:
      __break(1u);
      goto LABEL_344;
    }

    v248 = v30;
    swift_getKeyPath();
    KeyPath = swift_getKeyPath();
    static Published.subscript.getter();

    v249 = v337;
    v250 = (a1)(v245, v337);
    if (v250 != v333)
    {

      (*v334)(v245, v249);
LABEL_301:
      v30 = v248;
      goto LABEL_302;
    }

    (*v339)(v245, v249);
    v251 = sub_1000077C8(&qword_100173078, &unk_100118F60);
    *&v245[v251[12]], v252, v253, v254, v255, v256, v257, v258;
    *&v245[v251[16]], v259, v260, v261, v262, v263, v264, v265;
    v331 = v251[20];
    v266 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
    swift_beginAccess();
    v267 = v247 + v266;
    v30 = v248;
    KeyPath = &qword_10011A700;
    sub_100007BA4(v267, v244, v248, &qword_10011A700);
    v268 = v245;
    v269 = v305;
    if ((*v330)(v244, 1, v305) != 1)
    {
      v272 = v244;
      v273 = v309;
      (*v329)(v309, v272, v269);
      v274 = v310;
      static Date.now.getter();
      Date.timeIntervalSince(_:)();
      v276 = v275;
      KeyPath = v328;
      v277 = *v328;
      (*v328)(v274, v269);
      v277(v273, v269);
      v278 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
      v245 = v312;
      (*(*(v278 - 8) + 8))(&v312[v331], v278);
      v279 = type metadata accessor for SFAirDropReceive.ItemDestination();
      (*(*(v279 - 8) + 8))(v245, v279);
      if (v276 <= 7.0)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        KeyPath = *(v341 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      v244 = v311;
      goto LABEL_301;
    }

    sub_1000159AC(v244, v248, &qword_10011A700);
    v270 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
    (*(*(v270 - 8) + 8))(&v268[v331], v270);
    v271 = type metadata accessor for SFAirDropReceive.ItemDestination();
    (*(*(v271 - 8) + 8))(v268, v271);
    v245 = v268;
LABEL_302:
    ++v246;
    v88 = v335;
    if (v338 != v336)
    {
      continue;
    }

    break;
  }

  v339 = v341;
  if ((v341 & 0x8000000000000000) != 0 || (v339 & 0x4000000000000000) != 0)
  {
    goto LABEL_362;
  }

  v338 = v339[2];
  if (v338)
  {
    goto LABEL_318;
  }

LABEL_363:

  if (v340)
  {
    goto LABEL_384;
  }

  if (v88[2])
  {
    v30 = v88[4];

    goto LABEL_366;
  }

  __break(1u);
}

void sub_1001032D4()
{
  if (*(v0 + 32))
  {
    v1 = qword_100172248;

    if (v1 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100007D20(v2, qword_1001788F8);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v28 = v6;
      *v5 = 136315138;
      v7 = Activity.id.getter();
      v9 = v8;
      v10 = sub_10003E81C(v7, v8, &v28);
      v9, v11, v12, v13, v14, v15, v16, v17;
      *(v5 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v3, v4, "Requesting AirDrop banner for activity %s", v5, 0xCu);
      sub_100007920(v6);
    }

    v18 = Activity.id.getter();
    v20 = v19;
    sub_1000FC5B0(v18, v19);

    v20, v21, v22, v23, v24, v25, v26, v27;
  }
}

uint64_t sub_100103474()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001034AC()
{

  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001034F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100103510()
{
  result = qword_100178AE0;
  if (!qword_100178AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178AE0);
  }

  return result;
}

uint64_t sub_100103564()
{

  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001035B4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10000BCF0;

  return sub_1000FD3F4(v2, v3, v4, v5, v6);
}

void sub_100103670(uint64_t a1, _TtC9AirDropUI33AirDropTransferSessionsController *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (qword_100172248 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100007D20(v12, qword_1001788F8);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  a2, v15, v16, v17, v18, v19, v20, v21;
  if (os_log_type_enabled(v13, v14))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = a1;
    v25 = a6;
    v26 = a5;
    v27 = a4;
    v28 = v23;
    v37 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_10003E81C(v24, a2, &v37);
    _os_log_impl(&_mh_execute_header, v13, v14, "Assertion invalidated [sessionIdentifier = %s]", v22, 0xCu);
    sub_100007920(v28);
    a4 = v27;
    a5 = v26;
    a6 = v25;
  }

  if (a3 == 2)
  {
    v29 = 0;
  }

  else
  {
    if (a3 == 1)
    {
      return;
    }

    if (a3)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    v29 = 7;
  }

  if (a5)
  {
    v30 = v29;
  }

  else
  {
    v30 = a4;
  }

  sub_100103510();
  swift_allocError();
  *v31 = a3;
  v31[1] = v30;
  v31[2] = a6;
  swift_willThrow();
  swift_errorRetain();
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    swift_errorRetain();
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v33 + 4) = v35;
    *v34 = v35;
    _os_log_impl(&_mh_execute_header, oslog, v32, "Assertion invalidation reason: %@", v33, 0xCu);
    sub_1000159AC(v34, &qword_100172EB0, &qword_100119410);
  }

  else
  {
  }
}

uint64_t sub_100103A80()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100103AC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000167E4;

  return sub_100096C6C(a1, v4, v5, v6);
}

uint64_t sub_100103B74(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000BCF0;

  return sub_10003E520(a1, v4);
}

uint64_t sub_100103C90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100103CB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 24))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100103D10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

void *sub_100103D70(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[2] = a2;
  }

  return result;
}

uint64_t sub_100103DB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100103E14()
{
  v0 = type metadata accessor for Logger();
  sub_1000154C0(v0, qword_100178B00);
  v1 = sub_100007D20(v0, qword_100178B00);
  if (qword_100172210 != -1)
  {
    swift_once();
  }

  v2 = sub_100007D20(v0, qword_10017F338);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100103EDC()
{
  v1 = sub_100104990(*(v0 + 8));
  v2 = *(v0 + 24);
  v3 = *(v0 + 16);
  objc_allocWithZone(type metadata accessor for AirDropSystemApertureProgressView());
  v4 = v1;
  v5 = v2;
  v6 = 1;
  sub_100109044(v5, 8, v3, v1, 0, 1);
  v8 = v7;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v9 = *(v8 + OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_progress);
  *(v8 + OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_progress) = v13;
  v10 = v13;

  sub_100108C54();
  v11 = OBJC_IVAR____TtC9AirDropUI25AirDropSystemApertureView_expanded;
  *(v8 + OBJC_IVAR____TtC9AirDropUI25AirDropSystemApertureView_expanded) = 1;
  sub_100109800();
  if (*(v8 + v11) == 1)
  {
    v6 = *(v8 + OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_cancelAction) == 0;
  }

  [*(v8 + OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_transparentCancelButton) setHidden:v6];

  return v8;
}

uint64_t sub_100104034(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SFAirDrop.DeclineAction();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  if (qword_100172258 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100007D20(v9, qword_100178B00);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Cancel button was tapped. Triggering cancel on AirDropTransferSession", v12, 2u);
  }

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  (*(v4 + 16))(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v3);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  (*(v4 + 32))(v15 + v14, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  static Task<>.noThrow(priority:operation:)();

  return sub_1000159AC(v8, &qword_100172F50, &qword_10011E500);
}

uint64_t sub_1001042E0(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = type metadata accessor for SFAirDrop.DeclineAction();
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v2[5] = swift_task_alloc();
  v2[6] = type metadata accessor for MainActor();
  v2[7] = static MainActor.shared.getter();
  v4 = swift_task_alloc();
  v2[8] = v4;
  *v4 = v2;
  v4[1] = sub_1001043F0;

  return SFAirDrop.DeclineAction.decline()();
}

uint64_t sub_1001043F0()
{
  *(*v1 + 72) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_1001045B4;
  }

  else
  {
    v4 = sub_10010454C;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10010454C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001045B4()
{
  v30 = v0;

  if (qword_100172258 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_100007D20(v5, qword_100178B00);
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
    v13 = SFAirDrop.DeclineAction.id.getter();
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
    _os_log_impl(&_mh_execute_header, v6, v7, "AirDrop transfer cancel action %s failed with error %@", v12, 0x16u);
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

uint64_t sub_100104848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100105238();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1001048AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100105238();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100104910(uint64_t a1)
{
  sub_100105238();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_10010493C()
{
  result = qword_100178B18;
  if (!qword_100178B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178B18);
  }

  return result;
}

uint64_t sub_100104990(unint64_t a1)
{
  v44 = a1;
  v1 = sub_1000077C8(&qword_100172FD0, &qword_10011A210);
  __chkstk_darwin(v1 - 8);
  v43 = v40 - v2;
  v3 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000077C8(&unk_100173C50, &qword_10011D9D0);
  __chkstk_darwin(v7 - 8);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v40 - v11;
  v13 = type metadata accessor for SFAirDrop.DeclineAction();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v41 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v42 = v40 - v17;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  SFAirDropReceive.Transfer.State.cancelAction.getter();
  (*(v4 + 8))(v6, v3);
  v18 = *(v14 + 48);
  if (v18(v9, 1, v13) == 1)
  {
    v40[1] = v15;
    swift_getKeyPath();
    swift_getKeyPath();
    v19 = v43;
    static Published.subscript.getter();

    v20 = type metadata accessor for SFAirDropSend.Transfer.State();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v19, 1, v20) == 1)
    {
      sub_1000159AC(v43, &qword_100172FD0, &qword_10011A210);
      (*(v14 + 56))(v12, 1, 1, v13);
    }

    else
    {
      v22 = v43;
      SFAirDropSend.Transfer.State.cancelAction.getter();
      (*(v21 + 8))(v22, v20);
    }

    if (v18(v9, 1, v13) != 1)
    {
      sub_1000159AC(v9, &unk_100173C50, &qword_10011D9D0);
    }
  }

  else
  {
    (*(v14 + 32))(v12, v9, v13);
    (*(v14 + 56))(v12, 0, 1, v13);
  }

  if (v18(v12, 1, v13) == 1)
  {
    sub_1000159AC(v12, &unk_100173C50, &qword_10011D9D0);
    return 0;
  }

  else
  {
    v24 = *(v14 + 32);
    v25 = v42;
    v24(v42, v12, v13);
    v44 = sub_100105014();
    SFAirDrop.DeclineAction.id.getter();
    v27 = v26;
    v28 = String._bridgeToObjectiveC()();
    v27, v29, v30, v31, v32, v33, v34, v35;
    v36 = v41;
    (*(v14 + 16))(v41, v25, v13);
    v37 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v38 = swift_allocObject();
    v24((v38 + v37), v36, v13);
    v39 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)(0, 0xE000000000000000, 0, 0, 0, 0, v28, 0, 0, 0, 0, sub_100105064, v38);
    (*(v14 + 8))(v25, v13);
    return v39;
  }
}

void sub_100104F1C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = *(a1 + OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_progress);
  *(a1 + OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_progress) = v10;
  v6 = v10;

  sub_100108C54();
  v7 = sub_100104990(a3);
  v8 = *(a1 + OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_cancelAction);
  *(a1 + OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_cancelAction) = v7;
  v9 = v7;
  sub_100108DA8(v8);
}

unint64_t sub_100105014()
{
  result = qword_1001760F0;
  if (!qword_1001760F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001760F0);
  }

  return result;
}

uint64_t sub_100105064(uint64_t a1)
{
  v3 = *(type metadata accessor for SFAirDrop.DeclineAction() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100104034(a1, v4);
}

uint64_t sub_1001050D4()
{
  v1 = type metadata accessor for SFAirDrop.DeclineAction();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10010515C(uint64_t a1)
{
  v4 = *(type metadata accessor for SFAirDrop.DeclineAction() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000BCF0;

  return sub_1001042E0(a1, v1 + v5);
}

unint64_t sub_100105238()
{
  result = qword_100178B20;
  if (!qword_100178B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178B20);
  }

  return result;
}

void sub_1001052BC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29[0] = a3;
  v29[1] = a1;
  v6 = sub_1000077C8(&qword_100174100, &qword_10011AD08);
  __chkstk_darwin(v6 - 8);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v29 - v10;
  v12 = type metadata accessor for DeviceLockState();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v29 - v17;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  (*(v13 + 104))(v15, enum case for DeviceLockState.unlocked(_:), v12);
  v19 = static DeviceLockState.== infix(_:_:)();
  v20 = *(v13 + 8);
  v20(v15, v12);
  v20(v18, v12);
  if (v19)
  {
    type metadata accessor for AirDropTransferSession(0);
    sub_10004DD0C();
    v21 = ObservedObject.init(wrappedValue:)();
    v23 = v22;
    v24 = v29[0];
    v25 = v29[0] & 1;

    v26 = 2;
  }

  else
  {

    v21 = 0;
    v23 = 0;
    v25 = 0;
    v26 = 0;
    v24 = v29[0];
  }

  *v11 = static HorizontalAlignment.leading.getter();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v27 = sub_1000077C8(&qword_100174108, &qword_10011CEB0);
  sub_10010562C(a2, v24 & 1, &v11[*(v27 + 44)]);
  sub_100007BA4(v11, v8, &qword_100174100, &qword_10011AD08);
  *a4 = v21;
  *(a4 + 8) = v23;
  *(a4 + 16) = v25;
  *(a4 + 24) = 0;
  *(a4 + 32) = v26;
  *(a4 + 40) = 0;
  v28 = sub_1000077C8(&qword_100178B40, &unk_100122060);
  sub_100007BA4(v8, a4 + *(v28 + 48), &qword_100174100, &qword_10011AD08);
  sub_10004DC44(v21, v23, v25, 0, v26);
  sub_10004DCA8(v21, v23, v25, 0, v26);
  sub_1000159AC(v11, &qword_100174100, &qword_10011AD08);
  sub_1000159AC(v8, &qword_100174100, &qword_10011AD08);
  sub_10004DCA8(v21, v23, v25, 0, v26);
}

uint64_t sub_10010562C@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  v47 = type metadata accessor for Font.TextStyle();
  v6 = *(v47 - 8);
  __chkstk_darwin(v47);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AirDropDescriptionView(0);
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1000077C8(&qword_100174138, &unk_10011AE80);
  __chkstk_darwin(v48);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v38 - v15;
  __chkstk_darwin(v17);
  v20 = &v38 - v19;
  if (a2)
  {
    static Alignment.center.getter();
    v18 = _FrameLayout.init(width:height:alignment:)();
    v45 = 0;
    v46 = v51;
    v44 = v53;
    v43 = v55;
    v42 = v56;
    LOBYTE(v57[0]) = 1;
    v50 = v52;
    v49 = v54;
    v39 = 1;
    v40 = v52;
    v41 = v54;
    LOBYTE(v59) = 0;
  }

  else
  {
    v46 = 0;
    v44 = 0;
    v43 = 0;
    v42 = 0;
    v41 = 0;
    v40 = 0;
    v39 = 0;
    v45 = 1;
  }

  v21 = sub_100105AFC(v18, a1);
  v22 = a1;
  v24 = v23;
  sub_1001063AC(v22, v57);
  *&v59 = 0x402C000000000000;
  (*(v6 + 104))(v8, enum case for Font.TextStyle.subheadline(_:), v47);
  sub_10004A578();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v25 = &v11[v9[5]];
  *v25 = v21;
  v25[1] = v24;
  v26 = &v11[v9[6]];
  v27 = v57[1];
  *v26 = v57[0];
  *(v26 + 1) = v27;
  v26[32] = v58;
  *&v11[v9[7]] = 0x3FE0000000000000;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10004DDC8(v11, v16);
  v28 = &v16[*(v48 + 36)];
  v29 = v64;
  *(v28 + 4) = v63;
  *(v28 + 5) = v29;
  *(v28 + 6) = v65;
  v30 = v60;
  *v28 = v59;
  *(v28 + 1) = v30;
  v31 = v62;
  *(v28 + 2) = v61;
  *(v28 + 3) = v31;
  sub_100021A84(v16, v20, &qword_100174138, &unk_10011AE80);
  sub_100007BA4(v20, v13, &qword_100174138, &unk_10011AE80);
  v32 = v39;
  *a3 = 0;
  *(a3 + 8) = v32;
  v33 = v40;
  *(a3 + 16) = v46;
  *(a3 + 24) = v33;
  v34 = v41;
  *(a3 + 32) = v44;
  *(a3 + 40) = v34;
  v35 = v42;
  *(a3 + 48) = v43;
  *(a3 + 56) = v35;
  *(a3 + 64) = v45;
  v36 = sub_1000077C8(&qword_100174140, &qword_100122070);
  sub_100007BA4(v13, a3 + *(v36 + 48), &qword_100174138, &unk_10011AE80);
  sub_1000159AC(v20, &qword_100174138, &unk_10011AE80);
  return sub_1000159AC(v13, &qword_100174138, &unk_10011AE80);
}

uint64_t sub_100105AFC(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v44 = *(v2 - 8);
  v45 = v2;
  __chkstk_darwin(v2);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v47 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v46 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SFAirDropSend.Failure();
  v41 = *(v9 - 8);
  v42 = v9;
  __chkstk_darwin(v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v43 = &v41 - v13;
  v14 = sub_1000077C8(&qword_100172FD0, &qword_10011A210);
  __chkstk_darwin(v14 - 8);
  v16 = &v41 - v15;
  v17 = type metadata accessor for SFAirDropSend.Transfer.State();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v41 - v22;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1000159AC(v16, &qword_100172FD0, &qword_10011A210);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v24 = SFAirDropReceive.Transfer.State.sfTransferState.getter();
    v25 = v45;
    v26 = *(v44 + 8);
    v26(v4, v45);
    if (v24 == 9 || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , v33 = SFAirDropReceive.Transfer.State.sfTransferState.getter(), v26(v4, v25), v33 == 3))
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      return String.init(localized:table:bundle:locale:comment:)();
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      return v48;
    }
  }

  else
  {
    (*(v18 + 32))(v23, v16, v17);
    (*(v18 + 16))(v20, v23, v17);
    if ((*(v18 + 88))(v20, v17) == enum case for SFAirDropSend.Transfer.State.transferFailed(_:))
    {
      (*(v18 + 96))(v20, v17);
      v27 = sub_1000077C8(&qword_100172F20, &qword_100118F10);
      v28 = v41;
      v29 = v42;
      v30 = v43;
      (*(v41 + 32))(v43, &v20[*(v27 + 48)], v42);
      (*(v28 + 16))(v11, v30, v29);
      v31 = (*(v28 + 88))(v11, v29);
      if (v31 == enum case for SFAirDropSend.Failure.receiverDeclined(_:))
      {
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        v32 = String.init(localized:table:bundle:locale:comment:)();
        (*(v28 + 8))(v30, v29);
        (*(v18 + 8))(v23, v17);
      }

      else
      {
        v37 = (v28 + 8);
        v38 = (v18 + 8);
        if (v31 == enum case for SFAirDropSend.Failure.cancelled(_:))
        {
          String.LocalizationValue.init(stringLiteral:)();
          static Locale.current.getter();
          v32 = String.init(localized:table:bundle:locale:comment:)();
          (*v37)(v43, v29);
          (*v38)(v23, v17);
        }

        else
        {
          String.LocalizationValue.init(stringLiteral:)();
          static Locale.current.getter();
          v32 = String.init(localized:table:bundle:locale:comment:)();
          v39 = *v37;
          (*v37)(v43, v29);
          (*v38)(v23, v17);
          v39(v11, v29);
        }
      }

      v40 = type metadata accessor for SFAirDropSend.Transfer.Metrics();
      (*(*(v40 - 8) + 8))(v20, v40);
      return v32;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v35 = *(v18 + 8);
      v35(v23, v17);
      v36 = v48;
      v35(v20, v17);
      return v36;
    }
  }
}

uint64_t sub_1001063AC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v31[3] = a1;
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v31[2] = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v31[1] = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SFAirDropReceive.Failure();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v32 = v31 - v12;
  v13 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v31 - v18;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  (*(v14 + 16))(v16, v19, v13);
  if ((*(v14 + 88))(v16, v13) != enum case for SFAirDropReceive.Transfer.State.transferFailed(_:))
  {
    v29 = *(v14 + 8);
    v29(v19, v13);
    result = (v29)(v16, v13);
LABEL_6:
    v23 = 0;
    v25 = 0;
    v28 = 0;
    v27 = -64;
    goto LABEL_7;
  }

  (*(v14 + 96))(v16, v13);
  v20 = sub_1000077C8(&qword_100174FB0, &unk_10011C5E0);
  v21 = v32;
  (*(v8 + 32))(v32, &v16[*(v20 + 48)], v7);
  v22 = type metadata accessor for SFAirDropReceive.Transfer.Metrics();
  (*(*(v22 - 8) + 8))(v16, v22);
  (*(v8 + 16))(v10, v21, v7);
  if ((*(v8 + 88))(v10, v7) != enum case for SFAirDropReceive.Failure.insufficientStorage(_:))
  {
    v30 = *(v8 + 8);
    v30(v32, v7);
    (*(v14 + 8))(v19, v13);
    result = (v30)(v10, v7);
    goto LABEL_6;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v23 = String.init(localized:table:bundle:locale:comment:)();
  v25 = v24;
  (*(v8 + 8))(v32, v7);
  result = (*(v14 + 8))(v19, v13);
  v27 = 0;
  v28 = 1;
LABEL_7:
  *a2 = v23;
  *(a2 + 8) = v25;
  *(a2 + 16) = 0;
  *(a2 + 24) = v28;
  *(a2 + 32) = v27;
  return result;
}

uint64_t sub_100106858@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000077C8(&qword_100178B28, &qword_100121FF0);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  *v5 = static VerticalAlignment.center.getter();
  *(v5 + 1) = 0x4028000000000000;
  v5[16] = 0;
  v9 = sub_1000077C8(&qword_100178B30, &qword_100121FF8);
  sub_1001052BC(v6, v7, v8, &v5[*(v9 + 44)]);
  if (v8)
  {
    v10 = 0x402E000000000000;
  }

  else
  {
    v10 = 0x4030000000000000;
  }

  if (v8)
  {
    v11 = 0x4036000000000000;
  }

  else
  {
    v11 = 0x4030000000000000;
  }

  if (v8)
  {
    v12 = 0x4031000000000000;
  }

  else
  {
    v12 = 0x4030000000000000;
  }

  v13 = static Edge.Set.all.getter();
  sub_100021A84(v5, a1, &qword_100178B28, &qword_100121FF0);
  result = sub_1000077C8(&qword_100178B38, &unk_100122000);
  v15 = a1 + *(result + 36);
  *v15 = v13;
  *(v15 + 8) = v10;
  *(v15 + 16) = v11;
  *(v15 + 24) = v10;
  *(v15 + 32) = v12;
  *(v15 + 40) = 0;
  return result;
}

unint64_t sub_1001069B8()
{
  result = qword_100178B48;
  if (!qword_100178B48)
  {
    sub_100007CCC(&qword_100178B38, &unk_100122000);
    sub_100106A44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178B48);
  }

  return result;
}

unint64_t sub_100106A44()
{
  result = qword_100178B50;
  if (!qword_100178B50)
  {
    sub_100007CCC(&qword_100178B28, &qword_100121FF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178B50);
  }

  return result;
}

double sub_100106B40(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

uint64_t sub_100106B84(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_100106BF8()
{
  sub_10001F364();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t sub_100106C34@<X0>(uint64_t a1@<X8>)
{
  if (*v1)
  {
    v3 = v1[2];
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v4 = static Edge.Set.all.getter();
    v5 = static Color.black.getter();
    v6 = static Edge.Set.all.getter();
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v8;
    *(a1 + 32) = v9;
    *(a1 + 48) = 0;
    *(a1 + 56) = v5;
    *(a1 + 64) = v6;
  }

  else
  {
    type metadata accessor for SystemApertureLayoutState(0);
    sub_100108AB4(&qword_1001733A0, type metadata accessor for SystemApertureLayoutState, &unk_100119AC0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100106DC8(uint64_t result)
{
  *(v1 + qword_100178B60) = result;
  v2 = *(v1 + qword_100178B60);
  if ((v2 - 3) <= 1)
  {
    *(v1 + qword_100178B70) = v2;
  }

  return result;
}

id sub_100106F3C()
{
  sub_100108704();
  if (v0)
  {
    v1 = v0;

    v2 = String._bridgeToObjectiveC()();
    v1, v3, v4, v5, v6, v7, v8, v9;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_100106FA8(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v12 = a1;
  sub_100107028(v4, v6, v12, v7, v8, v9, v10, v11);
}

void sub_100107028(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = (v8 + qword_100178B80);
  v10 = *(v8 + qword_100178B80 + 8);
  *v9 = a1;
  v9[1] = a2;
  v10, a2, a3, a4, a5, a6, a7, a8;
}

id sub_100107044()
{
  v0 = sub_100108718();

  return v0;
}

void sub_100107078(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_1001070D4(a3);
}

id sub_100107158()
{
  v0 = sub_100108728();

  return v0;
}

void sub_10010718C(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_1001071E8(a3);
}

id sub_1001071FC()
{
  v0 = sub_100108738();

  return v0;
}

void sub_100107230(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_10010728C(a3);
}

id sub_1001072A0()
{
  v0 = sub_100108748();

  return v0;
}

void sub_1001072D4(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_100107330(a3);
}

id sub_100107344()
{
  v0 = sub_100108758();

  return v0;
}

void sub_1001073B4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_100107408(a3);
}

uint64_t sub_100107408(uint64_t a1)
{
  v2 = *(v1 + qword_100178BE0);
  *(v1 + qword_100178BE0) = a1;
  return sub_100107420(v2);
}

uint64_t sub_100107420(uint64_t result)
{
  if (*&v1[qword_100178BE0] != result)
  {
    [objc_msgSend(v1 "systemApertureElementContext")];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1001074C0()
{
  v1 = *&v0[qword_100178B60];
  if (v1 == 3)
  {
    v18 = *&v0[qword_100178BB0];
    if (v18)
    {
      v19 = v18;
      result = [v0 view];
      if (!result)
      {
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v20 = result;
      v21 = [result SBUISA_systemApertureLeadingConcentricContentLayoutGuide];

      [v21 layoutFrame];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;

      v48.origin.x = v23;
      v48.origin.y = v25;
      v48.size.width = v27;
      v48.size.height = v29;
      MidX = CGRectGetMidX(v48);
      [v19 center];
      [v19 setCenter:MidX];
    }

    v31 = *&v0[qword_100178BC0];
    if (!v31)
    {
      goto LABEL_16;
    }

    v15 = v31;
    result = [v0 view];
    if (result)
    {
      v32 = result;
      v33 = [result SBUISA_systemApertureTrailingConcentricContentLayoutGuide];

      [v33 layoutFrame];
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v41 = v40;

      v49.origin.x = v35;
      v49.origin.y = v37;
      v49.size.width = v39;
      v49.size.height = v41;
      v16 = CGRectGetMidX(v49);
      [v15 center];
      goto LABEL_15;
    }

    goto LABEL_27;
  }

  if (v1 != 4)
  {
    goto LABEL_16;
  }

  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_26;
  }

  v3 = result;
  [result bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = *&v0[qword_100178BA0];
  if (!v12)
  {
    goto LABEL_16;
  }

  result = [v12 view];
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v13 = result;
  [result frame];
  [v13 setFrame:?];

  v14 = *&v0[qword_100178BA0];
  if (v14)
  {
    result = [v14 view];
    if (result)
    {
      v15 = result;
      v46.origin.x = v5;
      v46.origin.y = v7;
      v46.size.width = v9;
      v46.size.height = v11;
      v16 = CGRectGetMidX(v46);
      v47.origin.x = v5;
      v47.origin.y = v7;
      v47.size.width = v9;
      v47.size.height = v11;
      MidY = CGRectGetMidY(v47);
LABEL_15:
      [v15 setCenter:{v16, MidY}];

      goto LABEL_16;
    }

LABEL_29:
    __break(1u);
    return result;
  }

LABEL_16:
  v42 = *&v0[qword_100178B60];
  v43 = *&v0[qword_100178BB0];
  if (v43)
  {
    [v43 setHidden:v42 == 4];
  }

  v44 = *&v0[qword_100178BC0];
  if (v44)
  {
    [v44 setHidden:v42 == 4];
  }

  result = *&v0[qword_100178BD0];
  if (result)
  {

    return [result setHidden:v42 == 4];
  }

  return result;
}

void sub_10010782C(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v6[4] = sub_1001086E4;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100106B84;
  v6[3] = &unk_100161FD0;
  v4 = _Block_copy(v6);
  v5 = v1;

  [a1 animateAlongsideTransition:v4 completion:0];
  _Block_release(v4);
}

id sub_100107908(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + qword_100178BA8);
  type metadata accessor for SystemApertureElementHostingController(0, *((swift_isaMask & *a2) + 0x50), *((swift_isaMask & *a2) + 0x58), a4);

  sub_100023848(a2, v5);

  v6 = *(a2 + qword_100178B98);
  sub_100007350(a2, v6);

  return sub_1001074C0();
}

void sub_1001079CC(void *a1, uint64_t a2, void *a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  sub_10010782C(a3);
  swift_unknownObjectRelease();
}

void sub_100107A44(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = a1;
  sub_100108938();
  swift_unknownObjectRelease();
}

void sub_100107AA4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_100108A84();
}

id sub_100107B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SystemApertureElementHostingController(0, *((swift_isaMask & *v4) + 0x50), *((swift_isaMask & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_100107B84(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(a1 + qword_100178B80 + 8), a2, a3, a4, a5, a6, a7, a8;

  v9 = *(a1 + qword_100178BD8);
}

char *sub_100107CC4(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v3);
  v4 = objc_allocWithZone(sub_1000077C8(&unk_100178CD0, &unk_100122370));

  v5 = UIHostingController.init(rootView:)();
  sub_1000077C8(&unk_100173440, &unk_1001194C0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1001186F0;
  static UIHostingControllerSizingOptions.preferredContentSize.getter();
  v18 = v6;
  sub_100108AB4(&unk_100178CE0, &type metadata accessor for UIHostingControllerSizingOptions, &protocol conformance descriptor for UIHostingControllerSizingOptions);
  sub_1000077C8(&unk_100173450, &unk_100122380);
  sub_1000199C8(&unk_100178CF0, &unk_100173450, &unk_100122380, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  *&v2[OBJC_IVAR____TtC9AirDropUI27SystemApertureAccessoryView_hostingController] = v5;
  v7 = v5;
  [v7 preferredContentSize];
  v9 = v8;
  v11 = v10;
  v17.receiver = v2;
  v17.super_class = type metadata accessor for SystemApertureAccessoryView();
  v12 = objc_msgSendSuper2(&v17, "initWithFrame:", 0.0, 0.0, v9, v11);
  v13 = *&v12[OBJC_IVAR____TtC9AirDropUI27SystemApertureAccessoryView_hostingController];
  v14 = v12;
  result = [v13 view];
  if (result)
  {
    v16 = result;
    [v14 addSubview:result];

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1001082D0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10010833C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_100108384(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

double sub_100108400@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v4;
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

uint64_t sub_100108488(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100108510()
{
  v1 = [objc_opt_self() mainBundle];
  countAndFlagsBits = [v1 bundleIdentifier];

  if (countAndFlagsBits)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = String.lowercased()();
    countAndFlagsBits = v12._countAndFlagsBits;
    object = v12._object;
    v11, v12._object, v14, v15, v16, v17, v18, v19;
  }

  else
  {
    object = 0;
  }

  v20 = &v0[qword_100178B80];
  v21 = *&v0[qword_100178B80 + 8];
  *v20 = countAndFlagsBits;
  *(v20 + 1) = object;
  v21, v3, v4, v5, v6, v7, v8, v9;
  v22 = *&v0[qword_100178BE0];
  *&v0[qword_100178BE0] = v22 & 0xFFFFFFFFFFFFFFFDLL;
  sub_100107420(v22);
  [objc_msgSend(v0 "systemApertureElementContext")];

  return swift_unknownObjectRelease();
}

uint64_t sub_10010861C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = &v8[qword_100178B80];
  v10 = *&v8[qword_100178B80 + 8];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10, a2, a3, a4, a5, a6, a7, a8;
  v11 = *&v8[qword_100178BE0];
  *&v8[qword_100178BE0] = v11 | 2;
  sub_100107420(v11);
  [objc_msgSend(v8 "systemApertureElementContext")];

  return swift_unknownObjectRelease();
}

uint64_t sub_1001086AC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001086EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100108760()
{
  *(v0 + qword_100178B60) = 0;
  *(v0 + qword_100178B68) = 2;
  *(v0 + qword_100178B70) = 4;
  *(v0 + qword_100178B78) = 4;
  v1 = (v0 + qword_100178B80);
  *v1 = 0;
  v1[1] = 0;
  v2 = SBUISystemApertureElementIdentifierAirDrop;
  *(v0 + qword_100178B88) = SBUISystemApertureElementIdentifierAirDrop;
  *(v0 + qword_100178B90) = 1;
  v3 = qword_100178B98;
  v4 = objc_allocWithZone(type metadata accessor for SystemApertureElementTransitionCoordinator());
  v5 = v2;
  *(v0 + v3) = [v4 init];
  *(v0 + qword_100178BA0) = 0;
  v6 = qword_100178BA8;
  type metadata accessor for SystemApertureLayoutState(0);
  v7 = swift_allocObject();
  __asm { FMOV            V0.2D, #17.0 }

  Published.init(initialValue:)();
  Published.init(initialValue:)();
  *(v0 + v6) = v7;
  *(v0 + qword_100178BB0) = 0;
  *(v0 + qword_100178BB8) = 0;
  *(v0 + qword_100178BC0) = 0;
  *(v0 + qword_100178BC8) = 0;
  *(v0 + qword_100178BD0) = 0;
  *(v0 + qword_100178BD8) = 0;
  *(v0 + qword_100178BE0) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100108938()
{
  [v0 preferredContentSize];
  v2 = v1;
  v4 = v3;
  v5 = *&v0[qword_100178BA0];
  if (v5)
  {
    [*(*(v5 + OBJC_IVAR____TtC9AirDropUI37SystemApertureAccessoryViewController__view) + OBJC_IVAR____TtC9AirDropUI27SystemApertureAccessoryView_hostingController) preferredContentSize];
  }

  else
  {
    v6 = 0.0;
    v7 = 0.0;
  }

  [v0 setPreferredContentSize:{v6, v7}];
  result = [v0 preferredContentSize];
  if (v2 != v10 || v4 != v9)
  {
    v12 = [v0 systemApertureElementContext];
    v14[4] = nullsub_1;
    v14[5] = 0;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_100106B40;
    v14[3] = &unk_100161FF8;
    v13 = _Block_copy(v14);
    [v12 setElementNeedsUpdateWithCoordinatedAnimations:v13];
    _Block_release(v13);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100108AB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100108B10()
{
  result = qword_100178D00;
  if (!qword_100178D00)
  {
    sub_100007CCC(&qword_100178D08, &qword_1001223A8);
    sub_100108BC8();
    sub_1000199C8(&unk_1001779E0, &qword_1001782B0, &qword_1001210B0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178D00);
  }

  return result;
}

unint64_t sub_100108BC8()
{
  result = qword_100178D10;
  if (!qword_100178D10)
  {
    sub_100007CCC(&qword_100178D18, &unk_1001223B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178D10);
  }

  return result;
}

void sub_100108C54()
{
  v1 = *(v0 + OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_progressMicaView);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 publishedObjectWithName:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_1000165C4(0, &qword_100178D80, CAShapeLayer_ptr);
    if (swift_dynamicCast())
    {
      [*(v0 + OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_progress) fractionCompleted];
      [v5 setStrokeStart:{0.999 - fmax(v4, 0.01) * 0.999 / 0.999}];
    }
  }

  else
  {
    sub_10006CDAC(v8);
  }

  sub_100109800();
}

void sub_100108DA8(id a1)
{
  if (a1)
  {
    v3 = [a1 identifier];
    v4 = (v1 + OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_cancelAction);
    v5 = *(v1 + OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_cancelAction);
    if (!v5)
    {
      if (!v3)
      {
        return;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v4 = (v1 + OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_cancelAction);
    v5 = *(v1 + OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_cancelAction);
    if (!v5)
    {
      return;
    }

    v3 = 0;
  }

  v6 = [v5 identifier];
  v7 = v6;
  if (!v3)
  {
    if (!v6)
    {
      return;
    }

    goto LABEL_17;
  }

  if (!v6)
  {
LABEL_15:
    v7 = v3;
LABEL_17:

LABEL_18:
    if (*v4)
    {
      v31 = *(v1 + OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_transparentCancelButton);
      v32 = *v4;
      [v31 addAction:v32 forControlEvents:0x2000];
      [v31 setHidden:(*(v1 + OBJC_IVAR____TtC9AirDropUI25AirDropSystemApertureView_expanded) & 1) == 0];
    }

    if (a1)
    {
      v33 = *(v1 + OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_transparentCancelButton);
      v48 = a1;
      [v33 removeAction:? forControlEvents:?];
      if (!*v4)
      {
        [v33 setHidden:1];
      }
    }

    return;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v8;
  v14 = v11;
  if (v13 != v12 || v10 != v11)
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v10, v17, v18, v19, v20, v21, v22, v23;
    v14, v24, v25, v26, v27, v28, v29, v30;
    if (v16)
    {
      return;
    }

    goto LABEL_18;
  }

  v10, v34, v35, v36, v37, v38, v39, v40;

  v14, v41, v42, v43, v44, v45, v46, v47;
}

void sub_100109044(void *a1, uint64_t a2, char a3, void *a4, uint64_t a5, char a6)
{
  v7 = v6;
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for UIButton.Configuration();
  __chkstk_darwin(v11 - 8);
  v12 = OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_progress;
  *&v6[v12] = [objc_opt_self() progressWithTotalUnitCount:1000];
  v13 = OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_cancelAction;
  *&v6[OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_cancelAction] = 0;
  v6[OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_isTouchingDownButton] = 0;
  v6[OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_didPostAccessibilityLayoutChangeNotification] = 0;
  type metadata accessor for AirDropSystemApertureIconView(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  if (a3)
  {
    v16 = "AirDropUICancelButtonTitle";
  }

  else
  {
    v16 = "rogressView.swift";
  }

  v17 = objc_allocWithZone(BSUICAPackageView);
  v18 = v15;
  v19 = String._bridgeToObjectiveC()();
  v20 = [v17 initWithPackageName:v19 inBundle:v18];

  v82 = v18;
  if (v20)
  {
    (v16 | 0x8000000000000000), v21, v22, v23, v24, v25, v26, v27;
    v28 = v20;
    [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v28 setFrame:{0.0, 0.0, 23.0, 23.0}];
    v29 = String._bridgeToObjectiveC()();
    [v28 setState:v29];

    *&v6[OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_progressMicaView] = v28;
    sub_1000165C4(0, &qword_100178D88, UIButton_ptr);
    v30 = v28;
    static UIButton.Configuration.plain()();
    v31 = a4;
    v32 = UIButton.init(configuration:primaryAction:)();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v34 = v33;
    v35 = String._bridgeToObjectiveC()();
    v34, v36, v37, v38, v39, v40, v41, v42;
    [v32 setAccessibilityLabel:v35];

    [v32 setTranslatesAutoresizingMaskIntoConstraints:0];
    *&v7[OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_transparentCancelButton] = v32;
    v43 = *&v7[v13];
    *&v7[v13] = a4;
    v44 = v31;
    v45 = v32;

    v46 = &v7[OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_overrideIntrinsicContentSize];
    if (a6)
    {
      *v46 = 0;
      *(v46 + 1) = 0;
      v46[16] = 1;
    }

    else
    {
      *v46 = a5;
      *(v46 + 1) = a5;
      v46[16] = 0;
    }

    v85.receiver = v7;
    v85.super_class = type metadata accessor for AirDropSystemApertureProgressView();
    v47 = objc_msgSendSuper2(&v85, "init");
    [v47 addSubview:v30];
    [v47 addSubview:v45];
    v48 = sub_1000F499C(v30, a2, 0.0);
    sub_1000165C4(0, &qword_100173390, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v48, v50, v51, v52, v53, v54, v55, v56;
    [v47 addConstraints:isa];

    v57 = sub_1000F499C(v45, a2, 0.0);
    v58 = Array._bridgeToObjectiveC()().super.isa;
    v57, v59, v60, v61, v62, v63, v64, v65;
    [v47 addConstraints:v58];

    if (qword_100172140 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v66 = v30;
    if (v84 == 1)
    {
      v67 = objc_opt_self();
      v68 = [v67 systemRedColor];
      v69 = [v68 colorWithAlphaComponent:0.3];

      [v47 setBackgroundColor:v69];
      v70 = [v67 systemOrangeColor];
      v66 = [v70 colorWithAlphaComponent:0.4];

      [v30 setBackgroundColor:v66];
    }

    v71 = OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_transparentCancelButton;
    v72 = *&v47[OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_transparentCancelButton];
    if (a4)
    {
      v73 = v44;
      [v72 addAction:v73 forControlEvents:0x2000];
      [*&v47[v71] setHidden:(v47[OBJC_IVAR____TtC9AirDropUI25AirDropSystemApertureView_expanded] & 1) == 0];
    }

    else
    {
      [*&v47[OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_transparentCancelButton] setHidden:1];
    }

    v74 = OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_transparentCancelButton;
    [*&v47[OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_transparentCancelButton] addTarget:v47 action:"touchedDownCancelButton" forControlEvents:{17, a5}];
    v75 = *&v47[v74];
    v76 = v47;
    v77 = v75;
    [v77 addTarget:v76 action:"touchedUpCancelButton" forControlEvents:480];
  }

  else
  {
    __break(1u);
  }
}

void sub_100109800()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v4 = v0[OBJC_IVAR____TtC9AirDropUI25AirDropSystemApertureView_expanded];
  v5 = OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_progress;
  v6 = [*&v0[OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_progress] isIndeterminate];
  if (v4 == 1)
  {
    if (v6)
    {
      v7 = 0xEB00000000676E69;
    }

    else
    {
      [*&v0[v5] fractionCompleted];
      if (v8 >= 1.0)
      {
        v21 = *&v0[OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_transparentCancelButton];
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        v23 = v22;
        v24 = String._bridgeToObjectiveC()();
        v23, v25, v26, v27, v28, v29, v30, v31;
        [v21 setAccessibilityLabel:v24];

        v7 = 0xE900000000000065;
      }

      else if (v0[OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_isTouchingDownButton])
      {
        v7 = 0xEA00000000007373;
      }

      else
      {
        v7 = 0xE400000000000000;
      }
    }
  }

  else
  {
    if (v6)
    {
      v7 = 0xEE00676E69766173;
    }

    else
    {
      [*&v0[v5] fractionCompleted];
      if (v9 >= 1.0)
      {
        v7 = 0xEC000000656E6F64;
      }

      else
      {
        v7 = 0xE700000000000000;
      }
    }

    String.LocalizationValue.init(_:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v11 = v10;
    v12 = String._bridgeToObjectiveC()();
    v11, v13, v14, v15, v16, v17, v18, v19;
    [v0 setAccessibilityLabel:v12];

    [objc_msgSend(v0 "systemApertureElementContext")];
    swift_unknownObjectRelease();
    v20 = OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_didPostAccessibilityLayoutChangeNotification;
    if ((v0[OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_didPostAccessibilityLayoutChangeNotification] & 1) == 0)
    {
      UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, v0);
      v0[v20] = 1;
    }
  }

  v32 = *&v0[OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_progressMicaView];
  v33 = String._bridgeToObjectiveC()();
  v7, v34, v35, v36, v37, v38, v39, v40;
  [v32 setState:v33];
}

void sub_100109C58()
{
  v1 = *(v0 + OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_transparentCancelButton);
}

id sub_100109CB8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AirDropSystemApertureProgressView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100109E08(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "createURL: CFURLSetResourcePropertyForKey %@", &v3, 0xCu);
}

NSPersonNameComponents __swiftcall PersonNameComponents._bridgeToObjectiveC()()
{
  v0 = PersonNameComponents._bridgeToObjectiveC()();
  result._private = v1;
  result.super.isa = v0;
  return result;
}

Swift::String_optional __swiftcall URL.host(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.host(percentEncoded:)(percentEncoded);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t SFNearbySharingInteraction.init(_:)()
{
  return SFNearbySharingInteraction.init(_:)();
}

{
  return SFNearbySharingInteraction.init(_:)();
}

uint64_t View.buttonStyle<A>(_:)()
{
  return View.buttonStyle<A>(_:)();
}

{
  return View.buttonStyle<A>(_:)();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}