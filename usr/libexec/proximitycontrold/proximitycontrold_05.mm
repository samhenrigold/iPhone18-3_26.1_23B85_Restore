unint64_t sub_100075A48()
{
  result = qword_100339848;
  if (!qword_100339848)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100339848);
  }

  return result;
}

uint64_t sub_100075AAC(uint64_t a1, int a2, uint64_t a3)
{
  LODWORD(v3) = a2;
  v5 = type metadata accessor for DiscoveryTokenStateMachine.Input(0);
  v6 = __chkstk_darwin(v5);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v24[-v9];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_100338E88 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100003078(v12, qword_10033CBC8);
    v13 = v3 & 1;
    sub_100077134(a1, v3 & 1);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    sub_100077140(a1, v3 & 1);
    v16 = os_log_type_enabled(v14, v15);
    v26 = a1;
    if (v16)
    {
      v17 = swift_slowAlloc();
      v25 = v3;
      v3 = v17;
      v18 = swift_slowAlloc();
      v27[0] = v18;
      v27[1] = a1;
      *v3 = 136315138;
      v28 = v13;
      sub_100077134(a1, v13);
      sub_100035D04(&qword_10033D638, &qword_100273260);
      v19 = String.init<A>(describing:)();
      v21 = sub_100017494(v19, v20, v27);

      *(v3 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "Handling token sync initiation: %s", v3, 0xCu);
      sub_10000903C(v18);

      LOBYTE(v3) = v25;
    }

    if (v3)
    {
      v22 = type metadata accessor for DispatchTimeInterval();
      (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      if ((v26 & 1) == 0)
      {
        v23 = type metadata accessor for DispatchTimeInterval();
        (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
      }

      swift_storeEnumTagMultiPayload();
      sub_10007714C(v8, v10);
    }

    swift_beginAccess();
    sub_1001677A8(v10);
    swift_endAccess();

    return sub_100010B48(v10);
  }

  return result;
}

unsigned __int8 *sub_100075E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_10007721C();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_100164110(result, v7);
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_10007639C(void *a1)
{
  v2 = v1;
  v56 = a1;
  v55 = sub_100035D04(&qword_1003398E8, &qword_1002703C8);
  v3 = *(v55 - 8);
  __chkstk_darwin(v55);
  v5 = &v54 - v4;
  v6 = sub_100035D04(&qword_100339948, &unk_100273050);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v54 - v10;
  *(v1 + 16) = 7;
  sub_100035D04(&qword_10033D400, &unk_100274950);
  swift_allocObject();
  LOBYTE(v58[0]) = 1;
  *(v1 + 24) = sub_10002F7D4(0x100000000uLL, 0, 0, 0, 0, 0);
  *(v1 + 32) = 0;
  UUID.init()();
  v12 = v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_lastDistanceMeasurementQuality;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = (v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_mediaRouteIDActive);
  *v13 = 0;
  v13[1] = 0;
  v14 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__region;
  sub_100035D04(&qword_10033D408, &qword_100273060);
  swift_allocObject();
  *(v1 + v14) = sub_100030564(5, 0, 0, 0, 0, 0);
  v15 = v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_regionResolutionSignpostPostedInstant;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_regionTimestamp;
  *v16 = 0;
  *(v16 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___regionPublisher) = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_tasks) = &_swiftEmptySetSingleton;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___activityDisplayContextPublisher) = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___educationFlowPolicy) = 0;
  v17 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__handoffTargetStatus;
  v18 = type metadata accessor for HandoffTargetStatus(0);
  (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  sub_100009848(v11, v9, &qword_100339948, &unk_100273050);
  sub_100035D04(&qword_10033D410, &unk_100273068);
  swift_allocObject();
  v19 = sub_100031250(v9, 0, 0, 0, 0, 0);
  sub_1000097E8(v11, &qword_100339948, &unk_100273050);
  *(v2 + v17) = v19;
  v20 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__isHandoffV1Suppressed;
  sub_100035D04(&qword_100339900, &unk_1002703D0);
  swift_allocObject();
  *(v2 + v20) = sub_10002AA3C(0, 0, 0, 0, 0, 0);
  *(v2 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_legacyDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v21 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_legacyDeliveryModeStateMachine;
  type metadata accessor for ContextDeliveryModeStateMachine(0);
  swift_allocObject();
  *(v2 + v21) = sub_1001FA054();
  v22 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__legacyEvent;
  v59 = 0;
  memset(v58, 0, sizeof(v58));
  sub_100035D04(&qword_10033CCB8, &qword_100272F78);
  Published.init(initialValue:)();
  (*(v3 + 32))(v2 + v22, v5, v55);
  v23 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__mediaRemoteDisplayContext;
  sub_100035D04(&qword_10033D418, &qword_100273078);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v2 + v23) = v24;
  *(v2 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___mediaRemoteDisplayContextPublisher) = 0;
  *(v2 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_proximityDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  v25 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__transfer;
  sub_100035D04(&qword_10033D420, &unk_100273080);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  *(v2 + v25) = v26;
  *(v2 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___transferPublisher) = 0;
  v27 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_transferrableActivityPublisherKicker;
  sub_100035D04(&qword_10034C750, &unk_100287670);
  swift_allocObject();
  *(v2 + v27) = PassthroughSubject.init()();
  *(v2 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___transferStatePublisher) = 0;
  v28 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__v1TransferState;
  sub_100035D04(&qword_10033D428, &qword_100273090);
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = 0;
  *(v29 + 40) = 3;
  *(v29 + 48) = 0u;
  *(v29 + 64) = 0u;
  *(v2 + v28) = v29;
  v30 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_activityStreamErrorSubject;
  sub_100035D04(&qword_10033D430, &qword_100273098);
  swift_allocObject();
  *(v2 + v30) = PassthroughSubject.init()();
  v31 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_currentActivitySubject;
  *&v58[0] = 0;
  sub_100035D04(&qword_10033D438, &unk_1002730A0);
  swift_allocObject();
  *(v2 + v31) = CurrentValueSubject.init(_:)();
  v32 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_deviceActivity;
  type metadata accessor for DeviceActivity();
  swift_allocObject();
  *(v2 + v32) = sub_1001F16D0();
  v33 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_discoveryTokenStateMachine;
  type metadata accessor for DiscoveryTokenStateMachine(0);
  swift_allocObject();
  *(v2 + v33) = sub_10003ADA4();
  v34 = v2 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_discoveryTokenSyncDelegate;
  *(v2 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_discoveryTokenSyncDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_discoveryTokenSyncTask) = 0;
  v35 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__executedThisSession;
  sub_100035D04(&unk_10034A300, &unk_1002746D0);
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  *(v2 + v35) = v36;
  v37 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_lastTokenSyncAttempt;
  v38 = type metadata accessor for Date();
  (*(*(v38 - 8) + 56))(v2 + v37, 1, 1, v38);
  *(v2 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___localActivityPublisher) = 0;
  *(v2 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_pairedConnectionFuture) = 0;
  *(v2 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_pairedConnectionTask) = 0;
  *(v2 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_pairedConnection) = 0;
  *(v2 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___uxRegionPublisher) = 0;
  v39 = v56;
  v40 = *v56;
  swift_beginAccess();
  v57 = v40;
  type metadata accessor for Identity(0);

  Published.init(initialValue:)();
  swift_endAccess();
  *(v34 + 8) = v39[2];
  swift_unknownObjectWeakAssign();
  *(v2 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_localDeviceActivity) = v39[3];
  *(v2 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_isMock) = *(v39 + 32);
  v41 = qword_100338E88;

  if (v41 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  sub_100003078(v42, qword_10033CBC8);

  swift_unknownObjectRetain();
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();

  swift_unknownObjectRelease();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *&v58[0] = swift_slowAlloc();
    *v45 = 136315394;
    v46 = UUID.uuidString.getter();
    v48 = sub_100017494(v46, v47, v58);

    *(v45 + 4) = v48;
    *(v45 + 12) = 2080;

    v49 = sub_10000A474();
    v51 = v50;

    v52 = sub_100017494(v49, v51, v58);

    *(v45 + 14) = v52;
    _os_log_impl(&_mh_execute_header, v43, v44, "Init: %s %s", v45, 0x16u);
    swift_arrayDestroy();
  }

  sub_1000715FC();
  return v2;
}

void *sub_100076CCC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = sub_1001CCA28(*a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + v6, *(v2 + v6 + *(v5 + 64)));
  *a2 = v7;

  return v7;
}

void sub_100076D98(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = v2[2];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = *(v2 + ((*(v5 + 80) + 64) & ~*(v5 + 80)) + *(v5 + 64));
  v12 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v12;
  v13[2] = *(a1 + 32);
  v14 = *(a1 + 48);
  sub_1001BF5AC(v13, v6, v7, v8, v9, v10, a2, v11);
}

unint64_t sub_100076F14()
{
  result = qword_10033D5C8;
  if (!qword_10033D5C8)
  {
    sub_100035D4C(&qword_10033D5D0, &unk_100273240);
    sub_100076FC4(&qword_10033D5D8, &unk_10034A340, CBDevice_ptr, &protocol conformance descriptor for NSObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033D5C8);
  }

  return result;
}

uint64_t sub_100076FC4(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100003118(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100077008()
{
  result = qword_10033D600;
  if (!qword_10033D600)
  {
    sub_100035D4C(&qword_10033D608, &unk_100273250);
    sub_100076FC4(&qword_10033D610, &qword_10033D618, RPCompanionLinkDevice_ptr, &protocol conformance descriptor for NSObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033D600);
  }

  return result;
}

uint64_t sub_1000770B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100077134(uint64_t result, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return v2;
}

uint64_t sub_100077140(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_10007714C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoveryTokenStateMachine.Input(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000771B0()
{
  result = qword_10033D668;
  if (!qword_10033D668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033D668);
  }

  return result;
}

unint64_t sub_10007721C()
{
  result = qword_10033D6A0;
  if (!qword_10033D6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033D6A0);
  }

  return result;
}

uint64_t sub_100077270@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  *a2 = sub_1001CEDCC(*a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + v6, *(v2 + v6 + *(v5 + 64)));

  return swift_unknownObjectRetain();
}

id sub_10007732C(id result, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
    v4 = result;

    return v4;
  }

  return result;
}

double sub_100077374(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_1000773C0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100035D4C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10007743C()
{
  result = qword_10033D758;
  if (!qword_10033D758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033D758);
  }

  return result;
}

uint64_t sub_100077490()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (*(v0 + 16))
  {
  }

  v5 = (v3 + 64) & ~v3;

  (*(v2 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v4 + v5 + 1, v3 | 7);
}

uint64_t sub_100077588@<X0>(unsigned __int8 *a1@<X0>, uint64_t (*a2)(void, void, void, void, void, void, void)@<X1>, _BYTE *a3@<X8>)
{
  type metadata accessor for Logger();
  result = a2(*a1, v3[2], v3[3], v3[4], v3[5], v3[6], v3[7]);
  *a3 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for RangingError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RangingError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100077798()
{
  result = qword_10033D788;
  if (!qword_10033D788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033D788);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HandoffContentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HandoffContentType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10007794C(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

unint64_t sub_100077AA4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x656D695465636146;
    v6 = 0x656E6F6850;
    if (a1 != 2)
    {
      v6 = 0x74736163646F50;
    }

    if (a1)
    {
      v5 = 0x636973754DLL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x436E776F6E6B6E55;
    v2 = 0x4D6E776F6E6B6E55;
    if (a1 != 7)
    {
      v2 = 0x6E776F6E6B6E55;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000019;
    if (a1 != 4)
    {
      v3 = 0xD00000000000001ALL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int sub_100077BD4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10007794C(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_100077C24(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_10007794C(v4, v2);
  return Hasher._finalize()();
}

unint64_t sub_100077C68@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100077D1C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100077C98@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100077AA4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100077CC8()
{
  result = qword_10033D790;
  if (!qword_10033D790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033D790);
  }

  return result;
}

unint64_t sub_100077D1C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100300728, v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100077D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    if (a2)
    {
      if (a1 == 0x6C7070612E6D6F63 && a2 == 0xEF636973754D2E65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }

      else
      {
        result = 3;
        if (a1 != 0xD000000000000012 || 0x8000000100299600 != a2)
        {
          if (_stringCompareWithSmolCheck(_:_:expecting:)())
          {
            return 3;
          }

          else
          {
            return 5;
          }
        }
      }
    }

    else
    {
      return 7;
    }
  }

  else if (a3)
  {
    return 8;
  }

  else if (a2)
  {
    if (a1 == 0xD000000000000015 && 0x8000000100299640 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return 2;
    }

    else if (a1 == 0xD000000000000012 && 0x8000000100299620 == a2)
    {
      return 0;
    }

    else if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return 0;
    }

    else
    {
      return 4;
    }
  }

  else
  {
    return 6;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContextDeliveryMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContextDeliveryMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10007806C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x72656E6E6162;
  }

  else
  {
    v3 = 0x6572757472657061;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x72656E6E6162;
  }

  else
  {
    v5 = 0x6572757472657061;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
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

Swift::Int sub_100078110()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100078190(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000781FC(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_100078284(uint64_t *a1@<X8>)
{
  v2 = 0x6572757472657061;
  if (*v1)
  {
    v2 = 0x72656E6E6162;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100078380()
{
  if (*v0)
  {
    return 0x72656E6E6142;
  }

  else
  {
    return 0x2063696D616E7944;
  }
}

unint64_t sub_1000783F8()
{
  result = qword_10033D7A8;
  if (!qword_10033D7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033D7A8);
  }

  return result;
}

uint64_t sub_10007844C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v3 = 0x74696D69786F7270;
  }

  if (v2)
  {
    v4 = 0xED00006472614379;
  }

  else
  {
    v4 = 0x80000001002971C0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000014;
  }

  else
  {
    v5 = 0x74696D69786F7270;
  }

  if (*a2)
  {
    v6 = 0x80000001002971C0;
  }

  else
  {
    v6 = 0xED00006472614379;
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

Swift::Int sub_100078504()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100078598(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100078618(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000786B4@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, char *a3@<X8>)
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

void sub_100078710(unint64_t *a1@<X8>)
{
  v2 = 0x80000001002971C0;
  v3 = 0x74696D69786F7270;
  if (*v1)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v2 = 0xED00006472614379;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_100078820()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x74696D69786F7270;
  }
}

uint64_t sub_10007886C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x63697373616C63;
  if (v2 != 1)
  {
    v4 = 0x6C6C657764;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701736302;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x63697373616C63;
  if (*a2 != 1)
  {
    v8 = 0x6C6C657764;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701736302;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100078960()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000789F8(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100078A7C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100078B10@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100078D7C(*a1);
  *a2 = result;
  return result;
}

void sub_100078B40(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x63697373616C63;
  if (v2 != 1)
  {
    v5 = 0x6C6C657764;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701736302;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_100078BD8()
{
  result = qword_10033D7C0;
  if (!qword_10033D7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033D7C0);
  }

  return result;
}

uint64_t sub_100078C5C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100035D4C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100078CB4()
{
  result = qword_10033D7D8;
  if (!qword_10033D7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033D7D8);
  }

  return result;
}

uint64_t sub_100078D08()
{
  result = SBUIIsSystemApertureEnabled();
  byte_10038AFB0 = result;
  return result;
}

unint64_t sub_100078D28()
{
  result = qword_10033D7E0;
  if (!qword_10033D7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033D7E0);
  }

  return result;
}

unint64_t sub_100078D7C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100300898, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100078DC8()
{
  result = qword_10033D7E8;
  if (!qword_10033D7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033D7E8);
  }

  return result;
}

uint64_t sub_100078E38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
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

  return (v4 + 1);
}

uint64_t sub_100078E94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_100078EF8(void *a1, char a2, uint64_t a3)
{
  _StringGuts.grow(_:)(28);

  if (a3)
  {

    v7._countAndFlagsBits = sub_1000092A0(v5, v6);
    String.append(_:)(v7);

    v8._countAndFlagsBits = 41;
    v8._object = 0xE100000000000000;
    String.append(_:)(v8);

    v9 = 0x2865746F6D6572;
    v10 = 0xE700000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
    v9 = 0x6C61636F6CLL;
  }

  v11 = v10;
  String.append(_:)(*&v9);

  v12._countAndFlagsBits = 32;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  v13 = a1;
  v14._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v14);

  v15._countAndFlagsBits = 62;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  return 0xD000000000000016;
}

void sub_100079090(uint64_t *a1@<X8>)
{
  v2 = 1819042147;
  if (*v1)
  {
    v2 = 0x616964656DLL;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1000790C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x616964656DLL;
  }

  else
  {
    v3 = 1819042147;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x616964656DLL;
  }

  else
  {
    v5 = 1819042147;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
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

uint64_t sub_100079188(uint64_t a1, uint64_t a2)
{
  if (!*v2)
  {
    return 0x6C61636F6CLL;
  }

  v3._countAndFlagsBits = sub_1000092A0(a1, a2);
  String.append(_:)(v3);

  v4._countAndFlagsBits = 41;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return 0x2865746F6D6572;
}

uint64_t sub_10007920C(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      return static UUID.== infix(_:_:)();
    }

    return 0;
  }

  return !v2;
}

uint64_t sub_100079248(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = [a1 isEqual:a4];
  if (result)
  {
    if (a3)
    {
      if (a6 && (static UUID.== infix(_:_:)() & 1) != 0)
      {
        return 1;
      }
    }

    else if (!a6)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1000792B4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100079304(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100079358(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_100079370(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1000793B0()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10033D7F0);
  sub_100003078(v0, qword_10033D7F0);
  return Logger.init(subsystem:category:)();
}

id sub_100079434(void *a1, char *a2)
{
  v2[OBJC_IVAR____TtC17proximitycontrold13XPCConnection_unitTesting] = 0;
  v5 = OBJC_IVAR____TtC17proximitycontrold13XPCConnection_lockscreenFeature;
  if (qword_100338E78 != -1)
  {
    swift_once();
  }

  *&v2[v5] = qword_10038AEE0;
  *&v2[OBJC_IVAR____TtC17proximitycontrold13XPCConnection_lockscreenObserver] = 0;
  v6 = &v2[OBJC_IVAR____TtC17proximitycontrold13XPCConnection_activityServer];
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0;
  *&v2[OBJC_IVAR____TtC17proximitycontrold13XPCConnection_activityClient] = 0;
  *&v2[OBJC_IVAR____TtC17proximitycontrold13XPCConnection_mediaTransferObserver] = 0;
  *&v2[OBJC_IVAR____TtC17proximitycontrold13XPCConnection_mediaTransferObserverTask] = 0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + OBJC_IVAR___Application_handoffFeature);
    v9 = Strong;
    v10 = v8;

    if (v8)
    {
      v11 = *&v10[OBJC_IVAR____TtC17proximitycontrold14HandoffFeature_environment];

      if (v11)
      {
        v12 = sub_1001411E4();

        *(&v28 + 1) = type metadata accessor for ActivityProxy();
        v29 = &off_100304B98;
        *&v27 = v12;
        goto LABEL_9;
      }
    }
  }

  else
  {
  }

  v29 = 0;
  v27 = 0u;
  v28 = 0u;
LABEL_9:
  swift_beginAccess();
  sub_10007CD0C(&v27, v6);
  swift_endAccess();
  *&v2[OBJC_IVAR____TtC17proximitycontrold13XPCConnection_internalCnx] = a1;
  *&v2[OBJC_IVAR____TtC17proximitycontrold13XPCConnection_xpcServer] = a2;
  v26.receiver = v2;
  v26.super_class = type metadata accessor for XPCConnection();
  v13 = a1;
  v14 = a2;
  v15 = objc_msgSendSuper2(&v26, "init");
  v16 = qword_100338E98;
  v17 = v15;
  if (v16 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100003078(v18, qword_10033D7F0);
  v19 = v13;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    *(v22 + 4) = v19;
    *v23 = v19;
    v24 = v19;
    _os_log_impl(&_mh_execute_header, v20, v21, "Initialized connection for %@", v22, 0xCu);
    sub_1000097E8(v23, &qword_100339940, &unk_100272C50);

    v19 = v14;
    v14 = v20;
    v20 = v24;
  }

  return v17;
}

void sub_10007983C()
{
  v1 = v0;
  if (qword_100338E98 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033D7F0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Invalidating", v5, 2u);
  }

  [*(v1 + OBJC_IVAR____TtC17proximitycontrold13XPCConnection_internalCnx) invalidate];
  v6 = OBJC_IVAR____TtC17proximitycontrold13XPCConnection_activityClient;
  v7 = *(v1 + OBJC_IVAR____TtC17proximitycontrold13XPCConnection_activityClient);
  if (v7)
  {
    v8 = OBJC_IVAR____TtC17proximitycontrold13XPCConnection_activityServer;
    swift_beginAccess();
    sub_10007E718(v1 + v8, &v16);
    if (*(&v17 + 1))
    {
      sub_10007E790(&v16, v15);
      v9 = v7;
      sub_1000097E8(&v16, &qword_10033D878, qword_100273CF0);
      sub_10000EBC0(v15, v15[3]);
      sub_1000A9D3C(v9);

      sub_10000903C(v15);
    }

    else
    {
      sub_1000097E8(&v16, &qword_10033D878, qword_100273CF0);
    }
  }

  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v10 = OBJC_IVAR____TtC17proximitycontrold13XPCConnection_activityServer;
  swift_beginAccess();
  sub_10007CD0C(&v16, v1 + v10);
  swift_endAccess();
  v11 = *(v1 + v6);
  if (v11)
  {
    [v11 setActivityDataUpdateHandler:0];
    v12 = *(v1 + v6);
  }

  else
  {
    v12 = 0;
  }

  *(v1 + v6) = 0;

  *(v1 + OBJC_IVAR____TtC17proximitycontrold13XPCConnection_mediaTransferObserverTask) = 0;

  v13 = *(v1 + OBJC_IVAR____TtC17proximitycontrold13XPCConnection_lockscreenObserver);
  if (v13)
  {
    v14 = v13;
    sub_10005C004(v14);
  }
}

id sub_100079A90(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for XPCConnection();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100079C80(uint64_t a1, const char *a2, void (*a3)(void))
{
  if (qword_100338E98 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_10033D7F0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, a2, v9, 2u);
  }

  if (sub_1000D0404(5u, *(v3 + OBJC_IVAR____TtC17proximitycontrold13XPCConnection_internalCnx)))
  {
    v10 = *(v3 + OBJC_IVAR____TtC17proximitycontrold13XPCConnection_activityClient);
    if (v10)
    {
      v11 = OBJC_IVAR____TtC17proximitycontrold13XPCConnection_activityServer;
      swift_beginAccess();
      sub_10007E718(v3 + v11, &v23);
      if (v24)
      {
        sub_10000E754(&v23, v25);
        sub_10000EBC0(v25, v25[3]);
        v12 = v10;
        a3();

        sub_10000903C(v25);
      }

      else
      {
        v18 = v10;
        sub_1000097E8(&v23, &qword_10033D878, qword_100273CF0);
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&_mh_execute_header, v19, v20, "### No Activity Server", v21, 2u);
        }
      }

      return;
    }

    oslog = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v16, "### Client not yet activated", v17, 2u);
    }
  }

  else
  {
    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v25[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_100017494(0xD000000000000029, 0x8000000100297350, v25);
      _os_log_impl(&_mh_execute_header, oslog, v13, "### Missing %s", v14, 0xCu);
      sub_10000903C(v15);

      return;
    }
  }
}

void sub_10007A1D4()
{
  if (qword_100338E98 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003078(v1, qword_10033D7F0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "stopObservingAllDevices()", v4, 2u);
  }

  if (sub_1000D0404(5u, *(v0 + OBJC_IVAR____TtC17proximitycontrold13XPCConnection_internalCnx)))
  {
    v5 = *(v0 + OBJC_IVAR____TtC17proximitycontrold13XPCConnection_activityClient);
    if (v5)
    {
      v6 = OBJC_IVAR____TtC17proximitycontrold13XPCConnection_activityServer;
      swift_beginAccess();
      sub_10007E718(v0 + v6, &v18);
      if (v19)
      {
        sub_10000E754(&v18, v20);
        sub_10000EBC0(v20, v20[3]);
        v7 = v5;
        sub_1000A99E4(v7);

        sub_10000903C(v20);
      }

      else
      {
        v13 = v5;
        sub_1000097E8(&v18, &qword_10033D878, qword_100273CF0);
        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&_mh_execute_header, v14, v15, "### No Activity Server", v16, 2u);
        }
      }

      return;
    }

    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v11, "### Client not yet activated", v12, 2u);
    }
  }

  else
  {
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v20[0] = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_100017494(0xD000000000000029, 0x8000000100297350, v20);
      _os_log_impl(&_mh_execute_header, oslog, v8, "### Missing %s", v9, 0xCu);
      sub_10000903C(v10);

      return;
    }
  }
}

void sub_10007A588(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a2;
  if (a1)
  {
    strcpy(v36, "homeKitID=");
    BYTE3(v36[1]) = 0;
    HIDWORD(v36[1]) = -369098752;
    v8 = a1;
    v9 = [v8 description];
LABEL_5:
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14._countAndFlagsBits = v11;
    v14._object = v13;
    String.append(_:)(v14);

    v16 = v36[0];
    v15 = v36[1];
    goto LABEL_6;
  }

  if (a2)
  {
    v8 = a2;
    _StringGuts.grow(_:)(16);

    strcpy(v36, "mediaRemoteID=");
    HIBYTE(v36[1]) = -18;
    v9 = [v8 description];
    goto LABEL_5;
  }

  v15 = 0x8000000100299AE0;
  v16 = 0xD000000000000035;
LABEL_6:
  if (qword_100338E98 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100003078(v17, qword_10033D7F0);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = v7;
    v22 = a3;
    v23 = a4;
    v24 = swift_slowAlloc();
    v36[0] = v24;
    *v20 = 136315138;
    v25 = sub_100017494(v16, v15, v36);

    *(v20 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v18, v19, "Sending activity update from %s", v20, 0xCu);
    sub_10000903C(v24);
    a4 = v23;
    a3 = v22;
    v7 = v21;
  }

  else
  {
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    v28 = [*(Strong + OBJC_IVAR____TtC17proximitycontrold13XPCConnection_internalCnx) remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100035D04(&qword_10033D880, &qword_100273D08);
    if (swift_dynamicCast())
    {
      [v35 updateHomeKitID:a1 mediaRemoteID:v7 withActivities:a3 disambiguationContext:a4];

      swift_unknownObjectRelease();
      return;
    }

    v29 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v29, v32, "### Cannot forward activities to client, nil remoteObj", v33, 2u);
    }
  }

  else
  {
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "### Cannot forward activities to client, nil self", v31, 2u);
    }
  }
}

void sub_10007A9B0(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = *(a1 + 32);

  v13 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v9(a2, a3, v11, v12);
}

void sub_10007AA6C()
{
  if (qword_100338E98 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003078(v1, qword_10033D7F0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "userTappedCloseButton()", v4, 2u);
  }

  if ((sub_1000D0404(5u, *(v0 + OBJC_IVAR____TtC17proximitycontrold13XPCConnection_internalCnx)) & 1) == 0)
  {
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_100017494(0xD000000000000029, 0x8000000100297350, &v9);
      _os_log_impl(&_mh_execute_header, oslog, v5, "### Missing %s", v6, 0xCu);
      sub_10000903C(v7);
    }

    else
    {
    }
  }
}

void sub_10007ACAC(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v24 = *(v6 - 8);
  v25 = v6;
  __chkstk_darwin(v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100338E98 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003078(v9, qword_10033D7F0);
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, "userTappedDisambiguationButton with context %@", v13, 0xCu);
    sub_1000097E8(v14, &qword_100339940, &unk_100272C50);
  }

  if (sub_1000D0404(5u, *(v1 + OBJC_IVAR____TtC17proximitycontrold13XPCConnection_internalCnx)))
  {
    if (qword_1003391E8 != -1)
    {
      swift_once();
    }

    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = v10;
    aBlock[4] = sub_10007E650;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100018AB8;
    aBlock[3] = &unk_100303DA8;
    v18 = _Block_copy(aBlock);
    v19 = v10;

    static DispatchQoS.unspecified.getter();
    v27 = _swiftEmptyArrayStorage;
    sub_10007E5B8();
    sub_100035D04(&unk_100343710, &qword_100271800);
    sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);
    (v26[1].isa)(v5, v3);
    (*(v24 + 8))(v8, v25);
  }

  else
  {
    v26 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_100017494(0xD000000000000029, 0x8000000100297350, aBlock);
      _os_log_impl(&_mh_execute_header, v26, v20, "### Missing %s", v21, 0xCu);
      sub_10000903C(v22);
    }

    else
    {
      v23 = v26;
    }
  }
}

double sub_10007B1D8(uint64_t a1, void *a2)
{
  v3 = sub_100035D04(&unk_10034C700, &qword_100273D30);
  __chkstk_darwin(v3);
  v5 = &v37 - v4;
  v6 = type metadata accessor for ExperienceEvent(0);
  __chkstk_darwin(v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12 && (v13 = *(v12 + OBJC_IVAR___Application_handoffFeature), v14 = v12, v15 = v13, v14, v13) && (v16 = *&v15[OBJC_IVAR____TtC17proximitycontrold14HandoffFeature_environment], , v15, v16))
    {
      sub_10014300C();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v40)
      {
        v17 = UUID.uuidString.getter();
        v38 = v18;
        v39 = v17;
        v40 = 0x3D747865746E6F63;
        v41 = 0xE800000000000000;
        v19 = [a2 description];
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        v23._countAndFlagsBits = v20;
        v23._object = v22;
        String.append(_:)(v23);

        v24 = v40;
        v25 = v41;
        *v8 = 5;
        *(v8 + 8) = 0u;
        *(v8 + 24) = 0u;
        *(v8 + 40) = 0u;
        v8[56] = 66;
        swift_storeEnumTagMultiPayload();
        v26 = &v5[*(v3 + 48)];
        v27 = &v5[*(v3 + 64)];
        sub_10007E658(v8, v5);
        v28 = v38;
        *v26 = v39;
        *(v26 + 1) = v28;
        *v27 = v24;
        *(v27 + 1) = v25;
        PassthroughSubject.send(_:)();

        sub_1000097E8(v5, &unk_10034C700, &qword_100273D30);
        sub_10007E6BC(v8);
      }

      else
      {
        if (qword_100338E98 != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        sub_100003078(v33, qword_10033D7F0);
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          _os_log_impl(&_mh_execute_header, v34, v35, "### No session?", v36, 2u);
        }
      }
    }

    else
    {
      if (qword_100338E98 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_100003078(v29, qword_10033D7F0);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "### No HandoffFeature to receive 'tapped disambiugation button' event", v32, 2u);
      }
    }
  }

  return result;
}

void sub_10007B6B8()
{
  if (qword_100338E98 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003078(v1, qword_10033D7F0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "requestState()", v4, 2u);
  }

  v5 = [*(v0 + OBJC_IVAR____TtC17proximitycontrold13XPCConnection_internalCnx) remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100035D04(&qword_10033D880, &qword_100273D08);
  if (swift_dynamicCast())
  {
    v6 = [*(v0 + OBJC_IVAR____TtC17proximitycontrold13XPCConnection_xpcServer) description];
    [v9 handleState:v6];
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "### Lost: No remote obj?", v8, 2u);
    }
  }
}

double sub_10007B924(uint64_t a1, uint64_t a2)
{
  if (qword_100339160 != -1)
  {
    swift_once();
  }

  v4 = dispatch_semaphore_create(0);
  sub_100035D04(&qword_10033D8D8, &qword_100273D18);
  sub_10000E244(&qword_10033D8E0, &qword_10033D8D8, &qword_100273D18, &protocol conformance descriptor for PassthroughSubject<A, B>);
  Publisher.share()();
  sub_100035D04(&qword_10033D8E8, &qword_100273D20);
  sub_10000E244(&qword_10033D8F0, &qword_10033D8E8, &qword_100273D20, &protocol conformance descriptor for Publishers.Share<A>);
  Publisher.eraseToAnyPublisher()();

  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = v4;

  v6 = v4;
  sub_100035D04(&qword_10033D8F8, &qword_100273D28);
  sub_10000E244(&qword_10033D900, &qword_10033D8F8, &qword_100273D28, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher<>.sink(receiveValue:)();

  sub_1001BA458(1);
  OS_dispatch_semaphore.wait()();
  AnyCancellable.cancel()();

  return result;
}

void sub_10007BBE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = _convertErrorToNSError(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  (*(a3 + 16))(a3);
}

void sub_10007BC68(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

double sub_10007BCE4(uint64_t a1)
{
  v2 = v1;
  v21 = a1;
  v3 = sub_100035D04(&unk_10033D8B0, &qword_100275520);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3 - 8);
  v7 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  if (qword_100338E98 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = sub_100003078(v10, qword_10033D7F0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "activate(_:)", v14, 2u);
  }

  v15 = *(v10 - 8);
  (*(v15 + 16))(v9, v11, v10);
  (*(v15 + 56))(v9, 0, 1, v10);
  sub_10007E4B8(v9, v7);
  v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = 0xD000000000000011;
  *(v17 + 24) = 0x80000001002999C0;
  sub_10007E4B8(v7, v17 + v16);
  aBlock[4] = sub_10007E528;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100124498;
  aBlock[3] = &unk_100303CB8;
  v18 = _Block_copy(aBlock);

  [v2 observer:v21 activateWithCompletion:v18];
  _Block_release(v18);

  return result;
}

void sub_10007C0BC(void *a1, uint64_t a2, const char *a3, SEL *a4, const char *a5)
{
  if (qword_100338E98 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003078(v9, qword_10033D7F0);
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, a3, v13, 0xCu);
    sub_1000097E8(v14, &qword_100339940, &unk_100272C50);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v17 = Strong, v18 = [*(Strong + OBJC_IVAR____TtC17proximitycontrold13XPCConnection_internalCnx) remoteObjectProxy], _bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), v17, sub_100035D04(&qword_10033D880, &qword_100273D08), (swift_dynamicCast() & 1) != 0))
  {
    [v22 *a4];
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, a5, v21, 2u);
    }
  }
}

uint64_t sub_10007C3BC()
{
  sub_100035D04(&unk_10033D890, &qword_100275EB0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10026F050;
  _StringGuts.grow(_:)(16);

  strcpy(v17, "XPCConnection ");
  HIBYTE(v17[1]) = -18;
  v2._countAndFlagsBits = sub_10007C5AC();
  String.append(_:)(v2);

  v3 = v17[1];
  *(v1 + 32) = v17[0];
  *(v1 + 40) = v3;
  v4 = [*(v0 + OBJC_IVAR____TtC17proximitycontrold13XPCConnection_internalCnx) serviceName];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    strcpy(v17, "service=");
    BYTE1(v17[1]) = 0;
    WORD1(v17[1]) = 0;
    HIDWORD(v17[1]) = -402653184;
    v9._countAndFlagsBits = v6;
    v9._object = v8;
    String.append(_:)(v9);

    v10 = v17[0];
    v11 = v17[1];
    v13 = *(v1 + 16);
    v12 = *(v1 + 24);
    if (v13 >= v12 >> 1)
    {
      v1 = sub_100009088((v12 > 1), v13 + 1, 1, v1);
    }

    *(v1 + 16) = v13 + 1;
    v14 = v1 + 16 * v13;
    *(v14 + 32) = v10;
    *(v14 + 40) = v11;
  }

  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  sub_10000E244(&qword_10033D8A0, &qword_1003397D0, &qword_1002729A0, &protocol conformance descriptor for [A]);
  v15 = BidirectionalCollection<>.joined(separator:)();

  return v15;
}

uint64_t sub_10007C5AC()
{
  v1 = 0x206E776F6E6B6E55;
  v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold13XPCConnection_lockscreenObserver);
  if (v2)
  {
    v3 = v2;
    v4 = [v3 processName];
    if (v4)
    {
      v5 = v4;
      v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      if (qword_100338E98 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_100003078(v6, qword_10033D7F0);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "Process name provided by client", v9, 2u);
      }
    }
  }

  return v1;
}

void sub_10007C6F8(void *a1, uint64_t a2)
{
  if (qword_100338E98 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003078(v3, qword_10033D7F0);
  v4 = a1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    sub_100035D04(&qword_10033D888, &qword_100273D10);
    Optional.unwrap(_:file:line:)();
    *(v7 + 4) = v16;
    *v8 = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "Transfer began with %@", v7, 0xCu);
    sub_1000097E8(v8, &qword_100339940, &unk_100272C50);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v10 = Strong, v11 = [*(Strong + OBJC_IVAR____TtC17proximitycontrold13XPCConnection_internalCnx) remoteObjectProxy], _bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), v10, sub_100035D04(&qword_10033D880, &qword_100273D08), (swift_dynamicCast() & 1) != 0))
  {
    [v15 transferBeganWithContext:v4];
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "### No remote obj?", v14, 2u);
    }
  }
}

void sub_10007C9E4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_10007CA50(uint64_t a1)
{
  if (qword_100338E98 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003078(v1, qword_10033D7F0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Transfer ended", v4, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v6 = Strong, v7 = [*(Strong + OBJC_IVAR____TtC17proximitycontrold13XPCConnection_internalCnx) remoteObjectProxy], _bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), v6, sub_100035D04(&qword_10033D880, &qword_100273D08), (swift_dynamicCast() & 1) != 0))
  {
    [v11 transferEnded];
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "### No remote obj?", v10, 2u);
    }
  }
}

void sub_10007CC78(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

uint64_t sub_10007CD0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_10033D878, qword_100273CF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_10007CD7C(void *a1, _BYTE *a2, void *aBlock)
{
  _Block_copy(aBlock);
  if (qword_100338E98 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_10033D7F0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "client(_:activateWithCompletion:)", v9, 2u);
  }

  if ((sub_1000D0404(5u, *&a2[OBJC_IVAR____TtC17proximitycontrold13XPCConnection_internalCnx]) & 1) == 0)
  {
    sub_10001618C();
    swift_allocError();
    *v12 = 0xD000000000000040;
    *(v12 + 8) = 0x8000000100299A00;
    *(v12 + 16) = 5;
    goto LABEL_9;
  }

  v10 = OBJC_IVAR____TtC17proximitycontrold13XPCConnection_activityClient;
  if (*&a2[OBJC_IVAR____TtC17proximitycontrold13XPCConnection_activityClient])
  {
    sub_10001618C();
    swift_allocError();
    *v11 = 0xD000000000000030;
    *(v11 + 8) = 0x80000001002998B0;
    *(v11 + 16) = 2;
LABEL_9:
    v13 = _convertErrorToNSError(_:)();
    (*(aBlock + 2))(aBlock, v13);

    _Block_release(aBlock);
    return;
  }

  v14 = OBJC_IVAR____TtC17proximitycontrold13XPCConnection_activityServer;
  swift_beginAccess();
  sub_10007E718(&a2[v14], &v28);
  if (v30)
  {
    sub_10000E754(&v28, v33);
    v15 = a1;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v15;
      *v19 = v15;
      v20 = v15;
      _os_log_impl(&_mh_execute_header, v16, v17, "Activating new PCRemoteActivityClient %@", v18, 0xCu);
      sub_1000097E8(v19, &qword_100339940, &unk_100272C50);
    }

    if ((a2[OBJC_IVAR____TtC17proximitycontrold13XPCConnection_unitTesting] & 1) == 0)
    {
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v31 = sub_10007E788;
      v32 = v21;
      *&v28 = _NSConcreteStackBlock;
      *(&v28 + 1) = 1107296256;
      v29 = sub_10007A9B0;
      v30 = &unk_100303DD0;
      v22 = _Block_copy(&v28);

      [v15 setActivityDataUpdateHandler:v22];
      _Block_release(v22);
    }

    v23 = *&a2[v10];
    *&a2[v10] = v15;
    v24 = v15;

    v25 = *sub_10000EBC0(v33, v33[3]);
    _Block_copy(aBlock);
    sub_1000AC51C(v24, a2, v25, aBlock);
    _Block_release(aBlock);
    (*(aBlock + 2))(aBlock, 0);
    sub_10000903C(v33);
  }

  else
  {
    sub_1000097E8(&v28, &qword_10033D878, qword_100273CF0);
    sub_10001618C();
    swift_allocError();
    *v26 = 0xD000000000000012;
    *(v26 + 8) = 0x8000000100299A50;
    *(v26 + 16) = 9;
    v27 = _convertErrorToNSError(_:)();
    (*(aBlock + 2))(aBlock, v27);
  }

  _Block_release(aBlock);
}

void sub_10007D244(uint64_t a1, uint64_t a2)
{
  if (sub_1000D0404(0, *(a1 + OBJC_IVAR____TtC17proximitycontrold13XPCConnection_internalCnx)))
  {
    v4 = [*(a1 + OBJC_IVAR____TtC17proximitycontrold13XPCConnection_xpcServer) description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = String._bridgeToObjectiveC()();
    (*(a2 + 16))(a2);
  }

  else
  {
    if (qword_100338E98 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100003078(v5, qword_10033D7F0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_100017494(0xD000000000000024, 0x8000000100297260, &v11);
      _os_log_impl(&_mh_execute_header, v6, v7, "### Missing %s", v8, 0xCu);
      sub_10000903C(v9);
    }

    v10 = String._bridgeToObjectiveC()();
    (*(a2 + 16))(a2);
  }
}

double sub_10007D440(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v6 = *(v18 - 8);
  __chkstk_darwin(v18);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100035CB8();
  (*(v10 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v9);
  v13 = static OS_dispatch_queue.global(qos:)();
  (*(v10 + 8))(v12, v9);
  v14 = swift_allocObject();
  *(v14 + 16) = v17;
  *(v14 + 24) = a2;
  aBlock[4] = sub_10007E5B0;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_100303D30;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_10007E5B8();
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v19 + 8))(v5, v3);
  (*(v6 + 8))(v8, v18);

  return result;
}

void sub_10007D7B8(uint64_t a1, uint64_t a2)
{
  if (sub_1000D0404(0, *(a1 + OBJC_IVAR____TtC17proximitycontrold13XPCConnection_internalCnx)))
  {
    if (qword_100338E78 != -1)
    {
      swift_once();
    }

    sub_10005BBEC();
    v3 = *(a2 + 16);

    v3(a2, 0);
  }

  else
  {
    if (qword_100338E98 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100003078(v4, qword_10033D7F0);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_100017494(0xD000000000000024, 0x8000000100297260, &v9);
      _os_log_impl(&_mh_execute_header, oslog, v5, "### Missing %s", v6, 0xCu);
      sub_10000903C(v7);
    }
  }
}

uint64_t sub_10007D98C(void *a1)
{
  if (qword_100338E98 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033D7F0);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "DidSwitchRoute to %@", v6, 0xCu);
    sub_1000097E8(v7, &qword_100339940, &unk_100272C50);
  }

  if (qword_1003390D8 != -1)
  {
    swift_once();
  }

  return sub_10015B870(v3);
}

uint64_t sub_10007DB08(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_100338E98 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_10033D7F0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "observer(_:activateWithCompletion:)", v9, 2u);
  }

  if (sub_1000D0404(3u, *(a2 + OBJC_IVAR____TtC17proximitycontrold13XPCConnection_internalCnx)))
  {
    v34 = &type metadata for Feature;
    v35 = sub_100013104();
    LOBYTE(v31) = 4;
    v10 = isFeatureEnabled(_:)();
    sub_10000903C(&v31);
    if ((v10 & 1) == 0)
    {
      sub_10001618C();
      swift_allocError();
      *v12 = 0xD000000000000018;
      *(v12 + 8) = 0x8000000100299970;
      v13 = 12;
      goto LABEL_13;
    }

    v11 = OBJC_IVAR____TtC17proximitycontrold13XPCConnection_lockscreenObserver;
    if (*(a2 + OBJC_IVAR____TtC17proximitycontrold13XPCConnection_lockscreenObserver))
    {
      sub_10001618C();
      swift_allocError();
      *v12 = 0xD000000000000030;
      *(v12 + 8) = 0x80000001002998B0;
      v13 = 2;
LABEL_13:
      *(v12 + 16) = v13;
      v17 = _convertErrorToNSError(_:)();
      (*(a3 + 16))(a3, v17);
    }

    v18 = a1;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v18;
      *v22 = v18;
      v23 = v18;
      _os_log_impl(&_mh_execute_header, v19, v20, "Activating new PCLockscreenControlsObserver %@", v21, 0xCu);
      sub_1000097E8(v22, &qword_100339940, &unk_100272C50);
    }

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = sub_10007E450;
    v36 = v24;
    v31 = _NSConcreteStackBlock;
    v32 = 1107296256;
    v33 = sub_100002B88;
    v34 = &unk_100303C40;
    v25 = _Block_copy(&v31);

    [v18 setDeviceLost:v25];
    _Block_release(v25);
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = sub_10007E484;
    v36 = v26;
    v31 = _NSConcreteStackBlock;
    v32 = 1107296256;
    v33 = sub_100002B88;
    v34 = &unk_100303C68;
    v27 = _Block_copy(&v31);

    [v18 setDeviceUpdated:v27];
    _Block_release(v27);
    v28 = *(a2 + v11);
    *(a2 + v11) = v18;
    v29 = v18;

    v30 = sub_10005BF8C(v29);
    return (*(a3 + 16))(a3, 0, v30);
  }

  else
  {
    sub_10001618C();
    swift_allocError();
    *v14 = 0xD000000000000044;
    *(v14 + 8) = 0x8000000100299920;
    *(v14 + 16) = 5;
    v15 = _convertErrorToNSError(_:)();
    (*(a3 + 16))(a3, v15);
  }
}

uint64_t sub_10007E004(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_100338E98 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_10033D7F0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "mediaTransferObserver(_:activateWithCompletion:)", v9, 2u);
  }

  if ((sub_1000D0404(4u, *(a2 + OBJC_IVAR____TtC17proximitycontrold13XPCConnection_internalCnx)) & 1) == 0)
  {
    sub_10001618C();
    swift_allocError();
    *v11 = 0xD000000000000047;
    *(v11 + 8) = 0x8000000100299830;
    v12 = 5;
    goto LABEL_9;
  }

  v10 = OBJC_IVAR____TtC17proximitycontrold13XPCConnection_mediaTransferObserver;
  if (*(a2 + OBJC_IVAR____TtC17proximitycontrold13XPCConnection_mediaTransferObserver))
  {
    sub_10001618C();
    swift_allocError();
    *v11 = 0xD000000000000030;
    *(v11 + 8) = 0x80000001002998B0;
    v12 = 2;
LABEL_9:
    *(v11 + 16) = v12;
    v13 = _convertErrorToNSError(_:)();
    (*(a3 + 16))(a3, v13);
  }

  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    *(v18 + 4) = v15;
    *v19 = v15;
    v20 = v15;
    _os_log_impl(&_mh_execute_header, v16, v17, "Activating new PCMediaTransferObserver %@", v18, 0xCu);
    sub_1000097E8(v19, &qword_100339940, &unk_100272C50);
  }

  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = sub_10007E440;
  v32 = v21;
  v27 = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_10007C9E4;
  v30 = &unk_100303BF0;
  v22 = _Block_copy(&v27);

  [v15 setTransferBeganHandler:v22];
  _Block_release(v22);
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = sub_10007E448;
  v32 = v23;
  v27 = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_100018AB8;
  v30 = &unk_100303C18;
  v24 = _Block_copy(&v27);

  [v15 setTransferEndedHandler:v24];
  _Block_release(v24);
  v25 = *(a2 + v10);
  *(a2 + v10) = v15;
  v26 = v15;

  return (*(a3 + 16))(a3, 0);
}

uint64_t sub_10007E4B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&unk_10033D8B0, &qword_100275520);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007E528(uint64_t a1)
{
  v3 = *(sub_100035D04(&unk_10033D8B0, &qword_100275520) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_10014AEC4(a1, v4, v5, v6);
}

unint64_t sub_10007E5B8()
{
  result = qword_10033D8C0;
  if (!qword_10033D8C0)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033D8C0);
  }

  return result;
}

uint64_t sub_10007E658(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExperienceEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007E6BC(uint64_t a1)
{
  v2 = type metadata accessor for ExperienceEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10007E718(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_10033D878, qword_100273CF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007E790(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10007E82C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  sub_10002689C(v1, v2);

  return swift_deallocClassInstance();
}

BOOL sub_10007E8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for Weak(0, a3, a4, a4);
  v5 = sub_10007E920(v4);
  return v5 == sub_10007E920(v4);
}

Swift::Int sub_10007E920(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10007E974(v3, a1);
  return Hasher._finalize()();
}

void sub_10007E974(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v5 = &v8 - v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    dispatch thunk of Identifiable.id.getter();
    swift_unknownObjectRelease();
    swift_getAssociatedConformanceWitness();
    v7 = dispatch thunk of Hashable.hashValue.getter();
    (*(v3 + 8))(v5, AssociatedTypeWitness);
  }

  else
  {
    v9 = 0;
    swift_stdlib_random();
    v7 = v9;
  }

  Hasher._combine(_:)(v7);
}

Swift::Int sub_10007EAEC(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  sub_10007E974(v4, a2);
  return Hasher._finalize()();
}

uint64_t sub_10007EB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10007EB84(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10007EBA4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

unint64_t sub_10007EBCC(unint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    _StringGuts.grow(_:)(26);

    v5 = 0xD000000000000016;
LABEL_5:
    v13 = v5;
    v6._countAndFlagsBits = a1;
    v6._object = a2;
    String.append(_:)(v6);
    v7._countAndFlagsBits = 10528;
    v7._object = 0xE200000000000000;
    String.append(_:)(v7);
    return v13;
  }

  if (a3 == 2)
  {
    _StringGuts.grow(_:)(25);

    v5 = 0xD000000000000015;
    goto LABEL_5;
  }

  v9 = 0x676E6964616F6CLL;
  if (a1 ^ 4 | a2)
  {
    v10 = 0x736E617254646964;
  }

  else
  {
    v10 = 0x6E6172546C6C6977;
  }

  if (a1 ^ 3 | a2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0x6165707041646964;
  }

  if (a1 ^ 1 | a2)
  {
    v12 = 0x657070416C6C6977;
  }

  else
  {
    v12 = 0x64616F4C646964;
  }

  if (a1 | a2)
  {
    v9 = v12;
  }

  if (a1 <= 2)
  {
    return v9;
  }

  else
  {
    return v11;
  }
}

uint64_t sub_10007EDE8(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t getEnumTagSinglePayload for XPCConnectionManager.ReconnectPolicy(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for XPCConnectionManager.ReconnectPolicy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10007EE90(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

void sub_10007EED0(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    for (i = (a3 + 32); ; ++i)
    {
      v7 = *i;

      a1(&v7);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return;
      }
    }
  }
}

void sub_10007EF68(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v6 = sub_100035D04(&qword_10033B530, &unk_1002783D0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v16 - v8;
  v10 = *(a3 + 16);
  if (v10)
  {
    v20 = _swiftEmptyArrayStorage;
    sub_1000CE0A4(0, v10, 0);
    v11 = v20;
    v12 = *(type metadata accessor for ExperienceEffect(0) - 8);
    v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v17 = *(v12 + 72);
    while (1)
    {
      v18(v13);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v20 = v11;
      v15 = v11[2];
      v14 = v11[3];
      if (v15 >= v14 >> 1)
      {
        sub_1000CE0A4((v14 > 1), v15 + 1, 1);
        v11 = v20;
      }

      v11[2] = v15 + 1;
      sub_10003693C(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, &qword_10033B530, &unk_1002783D0);
      v13 += v17;
      if (!--v10)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10007F168(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  __chkstk_darwin(a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v27 - v13;
  __chkstk_darwin(v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  v19 = dispatch thunk of Collection.count.getter();
  if (!v19)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v41 = v19;
  v45 = ContiguousArray.init()();
  v32 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v41);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10007F588()
{
  v1 = v0;
  swift_beginAccess();

  v3 = sub_10007F868(v2);

  *(v1 + *(*v1 + 144)) = v3;
}

void *sub_10007F638(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v2 = (a1 + 72);
  while (1)
  {
    v23 = v1;
    v3 = *(v2 - 20);
    v4 = *(v2 - 2);
    v5 = *(v2 - 1);
    v6 = *v2;
    v7 = *(v2 - 4);
    v8 = *(v2 - 3);
    sub_100035D04(&qword_10033DE68, &qword_100274150);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10026F050;
    *(inited + 32) = v3;
    *(inited + 40) = v7;
    *(inited + 48) = v8;
    *(inited + 56) = v4;
    *(inited + 64) = v5;
    *(inited + 72) = v6;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = sub_10008517C(v3);
    v13 = _swiftEmptyDictionarySingleton[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      break;
    }

    v16 = v11;
    if (_swiftEmptyDictionarySingleton[3] >= v15)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v11)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_100089B80();
        if (v16)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_100085EBC(v15, isUniquelyReferenced_nonNull_native);
      v17 = sub_10008517C(v3);
      if ((v16 & 1) != (v18 & 1))
      {
        goto LABEL_18;
      }

      v12 = v17;
      if (v16)
      {
        goto LABEL_3;
      }
    }

    _swiftEmptyDictionarySingleton[(v12 >> 6) + 8] |= 1 << v12;
    *(_swiftEmptyDictionarySingleton[6] + 2 * v12) = v3;
    *(_swiftEmptyDictionarySingleton[7] + 8 * v12) = _swiftEmptyArrayStorage;
    v19 = _swiftEmptyDictionarySingleton[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_17;
    }

    _swiftEmptyDictionarySingleton[2] = v21;
LABEL_3:
    v2 += 6;
    sub_1000B31EC(inited);

    v1 = v23 - 1;
    if (v23 == 1)
    {
      return _swiftEmptyDictionarySingleton;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10007F868(uint64_t a1)
{
  v7[5] = a1;
  v2 = v1[11];
  v3 = v1[12];
  v4 = v1[13];
  v5 = v1[14];
  v7[0] = v1[10];
  v7[1] = v2;
  v7[2] = v3;
  v7[3] = v4;
  v7[4] = v5;
  type metadata accessor for Edge2(255, v7);
  type metadata accessor for Array();
  Dictionary.init()();
  type metadata accessor for Dictionary();
  swift_getWitnessTable();
  Sequence.reduce<A>(into:_:)();
  return v7[0];
}

uint64_t StateMachine2.edges.getter()
{
  sub_10008BE64();
}

uint64_t StateMachine2.edges.setter(uint64_t a1)
{
  v3 = direct field offset for StateMachine2.edges;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return sub_10007F588();
}

uint64_t (*StateMachine2.edges.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_10007FA58;
}

uint64_t sub_10007FA58(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_10007F588();
  }

  return result;
}

uint64_t sub_10007FA8C(char *a1)
{
  v12 = a1;
  v2 = *v1;
  v3 = *(*v1 + 80);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin(TupleTypeMetadata2);
  v7 = &v12 - v6;
  v8 = *(v2 + 136);
  swift_beginAccess();
  v9 = *(TupleTypeMetadata2 + 48);
  v10 = *(*(v3 - 8) + 16);
  v10(v7, &v1[v8], v3);
  v10(&v7[v9], v12, v3);
  PassthroughSubject.send(_:)();
  return (*(v5 + 8))(v7, TupleTypeMetadata2);
}

uint64_t sub_10007FC28(uint64_t a1)
{
  v12 = a1;
  v2 = *v1;
  v3 = *(*v1 + 80);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin(TupleTypeMetadata2);
  v7 = &v12 - v6;
  v8 = *(v2 + 136);
  swift_beginAccess();
  v9 = *(TupleTypeMetadata2 + 48);
  v10 = *(*(v3 - 8) + 16);
  v10(v7, v12, v3);
  v10(&v7[v9], v1 + v8, v3);
  PassthroughSubject.send(_:)();
  return (*(v5 + 8))(v7, TupleTypeMetadata2);
}

uint64_t StateMachine2.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 136);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t StateMachine2.state.setter(char *a1)
{
  v3 = *v1;
  sub_10008BEA8(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

void (*StateMachine2.state.modify(void *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[3] = v1;
  v5 = *(*v1 + 80);
  v3[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v3[5] = v6;
  v8 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v3[6] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v3[6] = malloc(*(v6 + 64));
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[7] = v9;
  v11 = *(*v1 + 136);
  swift_beginAccess();
  v12 = *(v7 + 16);
  v4[8] = v12;
  v4[9] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v10, v1 + v11, v5);
  return sub_10008004C;
}

void sub_10008004C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  if (a2)
  {
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), *(v2 + 32));
    sub_10008BEA8(v4);
    v7 = *(v6 + 8);
    v7(v4, v5);
    v7(v3, v5);
  }

  else
  {
    sub_10008BEA8(*(v2 + 56));
    (*(v6 + 8))(v3, v5);
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t StateMachine2.outputPublisher.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v14[0] = *(*v4 + 88);
  v6 = v5[12];
  type metadata accessor for OutputEventContext(255, v14[0], v6, a4);
  type metadata accessor for PassthroughSubject();
  swift_getWitnessTable();
  v7 = type metadata accessor for Publishers.Map();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - v9;
  v14[1] = *(v4 + v5[20]);
  v11 = swift_allocObject();
  v11[2] = v5[10];
  v11[3] = v14[0];
  v11[4] = v6;
  v11[5] = v5[13];
  v11[6] = v5[14];

  Publisher.map<A>(_:)();

  swift_getWitnessTable();
  v12 = Publisher.eraseToAnyPublisher()();
  (*(v8 + 8))(v10, v7);
  return v12;
}

uint64_t StateMachine2.outputEventContextPublisher.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for OutputEventContext(255, *(*v4 + 88), *(*v4 + 96), a4);
  type metadata accessor for PassthroughSubject();
  swift_getWitnessTable();
  return Publisher.eraseToAnyPublisher()();
}

uint64_t StateMachine2.willChangePublisher.getter()
{
  swift_getTupleTypeMetadata2();
  type metadata accessor for PassthroughSubject();
  swift_getWitnessTable();
  return Publisher.eraseToAnyPublisher()();
}

uint64_t StateMachine2.didChangePublisher.getter()
{
  swift_getTupleTypeMetadata2();
  type metadata accessor for PassthroughSubject();
  swift_getWitnessTable();
  return Publisher.eraseToAnyPublisher()();
}

void *sub_1000805B8()
{
  v1 = *(*v0 + 144);
  if (*(v0 + v1))
  {
    v2 = *(v0 + v1);
  }

  else
  {
    swift_beginAccess();

    v2 = sub_10007F638(v3);

    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100080664()
{
  v1 = *(*v0 + 144);
  if (*(v0 + v1))
  {
    v2 = *(v0 + v1);
  }

  else
  {
    swift_beginAccess();

    v2 = sub_10007F868(v3);

    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t StateMachine2.__allocating_init(_:edges:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *(v2 + 80);
  v6 = *(v5 - 8);
  __chkstk_darwin(a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(v6 + 16))(v8, a1, v5);
  v10 = a2(v9);
  v11 = (*(v2 + 288))(v8, v10, 0, 0);
  (*(v6 + 8))(a1, v5);
  return v11;
}

uint64_t *StateMachine2.__allocating_init(_:edges:logCategory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_allocObject();
  v10 = sub_10008C040(a1, a2, a3, a4);
  (*(*(*(v5 + 80) - 8) + 8))(a1);
  return v10;
}

uint64_t *StateMachine2.init(_:edges:logCategory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = sub_10008C040(a1, a2, a3, a4);
  (*(*(*(v6 + 80) - 8) + 8))(a1);
  return v7;
}

uint64_t sub_1000809B4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v39 = a1;
  v34 = *(a3 - 8);
  __chkstk_darwin(a1);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;
  v14[6] = a7;
  v38[0] = a3;
  v38[1] = a4;
  v38[2] = a5;
  v38[3] = a6;
  v38[4] = a7;
  v15 = type metadata accessor for Edge2(255, v38);
  type metadata accessor for _ContiguousArrayStorage();
  v16 = *(v15 - 8);
  swift_allocObject();
  v36 = static Array._adoptStorage(_:count:)();
  (*(v16 + 16))(v17, a2, v15);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
  v18[6] = a7;
  v18[7] = sub_10008CCAC;
  v18[8] = v14;
  v19 = v39;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v19;
  v38[0] = v20;
  v21 = a2;
  v22 = *(a6 + 8);
  v37 = v21;
  v32[2] = sub_100085328(v21, a3, v22);
  v24 = *(v20 + 16);
  v25 = (v23 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
    __break(1u);
LABEL_8:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v27 = v23;
  v32[1] = type metadata accessor for Array();
  type metadata accessor for _NativeDictionary();
  v28 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v26);
  v29 = v38[0];
  if (v28)
  {
    v28 = sub_100085328(v37, a3, v22);
    if ((v27 & 1) != (v30 & 1))
    {
      goto LABEL_8;
    }
  }

  *v39 = v29;
  if ((v27 & 1) == 0)
  {
    v38[0] = (v18[7])(v28);
    (*(v34 + 16))(v33, v37, a3);
    _NativeDictionary._insert(at:key:value:)();
  }

  sub_100042610(v36, v15);
  static Array.+= infix(_:_:)();
}

uint64_t sub_100080CFC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = *(*v2 + 136);
  swift_beginAccess();
  v7 = *(v2 + v6);
  v8 = sub_1000805B8();
  if (!v8[2])
  {
    goto LABEL_7;
  }

  v9 = sub_10008517C(v7);
  if ((v10 & 1) == 0)
  {
    goto LABEL_7;
  }

  v11 = *(v8[7] + 8 * v9);

  __chkstk_darwin(v12);
  v28[2] = a1;
  sub_1000818EC(sub_10008CBB4, v28, v11);
  v14 = v13;
  v15 = *(v13 + 16);
  if (v15 > 1)
  {
    sub_100035D04(&qword_10033DE50, &qword_100274140);
    sub_10000E244(&qword_10033DE58, &qword_10033DE50, &qword_100274140, &protocol conformance descriptor for StateMachine2<A, B, C>.TransitionError);
    swift_allocError();
    v17 = v16;
    v18 = sub_100035D04(&qword_10033DE60, &qword_100274148);
    v19 = *(v18 + 48);
    v20 = *(v18 + 64);
    *v17 = *(v3 + v6);
    sub_10008CD34(a1, v17 + v19, type metadata accessor for ExperienceEvent);
    *(v17 + v20) = v14;
    (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
    return swift_willThrow();
  }

  if (v15)
  {
    v22 = *(v13 + 32);
    v24 = *(v13 + 40);
    v23 = *(v13 + 48);
    v25 = *(v13 + 56);
    v26 = *(v13 + 64);
    v27 = *(v13 + 72);
  }

  else
  {
LABEL_7:

    v22 = 0;
    v24 = 0;
    v23 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
  }

  *a2 = v22;
  a2[1] = v24;
  a2[2] = v23;
  a2[3] = v25;
  a2[4] = v26;
  a2[5] = v27;
  return result;
}

uint64_t sub_100080F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v42 = a1;
  v38 = a2;
  v4 = *v2;
  v6 = v4[11];
  v7 = v4[12];
  v8 = v4[13];
  v9 = v4[14];
  v43 = v4[10];
  v5 = v43;
  v44 = v6;
  v40 = v7;
  v41 = v6;
  v45 = v7;
  v46 = v8;
  v39 = v9;
  v47 = v9;
  v10 = type metadata accessor for Edge2(255, &v43);
  v11 = type metadata accessor for Optional();
  v33 = *(v11 - 8);
  v34 = v11;
  v12 = __chkstk_darwin(v11);
  v37 = &v33 - v13;
  v14 = *(v5 - 8);
  __chkstk_darwin(v12);
  v16 = &v33 - v15;
  v17 = v4[17];
  swift_beginAccess();
  v35 = *(v14 + 16);
  v36 = v17;
  v35(v16, &v3[v17], v5);
  sub_100080664();
  type metadata accessor for Array();
  Dictionary.subscript.getter();

  v18 = (*(v14 + 8))(v16, v5);
  if (!v43)
  {
    return (*(*(v10 - 8) + 56))(v38, 1, 1, v10);
  }

  __chkstk_darwin(v18);
  v19 = v40;
  v20 = v41;
  *(&v33 - 6) = v5;
  *(&v33 - 5) = v20;
  *(&v33 - 4) = v19;
  *(&v33 - 3) = v8;
  v21 = v42;
  *(&v33 - 2) = v39;
  *(&v33 - 1) = v21;
  swift_getWitnessTable();
  v22 = _ArrayProtocol.filter(_:)();
  if (Array.count.getter() <= 1)
  {
    v43 = v22;
    swift_getWitnessTable();
    v30 = v37;
    Collection.first.getter();
    v31 = *(v10 - 8);
    if ((*(v31 + 48))(v30, 1, v10) == 1)
    {
      (*(v33 + 8))(v30, v34);

      return (*(v31 + 56))(v38, 1, 1, v10);
    }

    else
    {
      v32 = v38;
      (*(v31 + 32))(v38, v30, v10);

      return (*(v31 + 56))(v32, 0, 1, v10);
    }
  }

  else
  {
    v23 = v41;
    v43 = v5;
    v44 = v41;
    v45 = v40;
    v46 = v8;
    v47 = v39;
    type metadata accessor for StateMachine2.TransitionError(0, &v43);
    swift_getWitnessTable();
    v48 = swift_allocError();
    v25 = v24;
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v27 = *(TupleTypeMetadata3 + 48);
    v28 = *(TupleTypeMetadata3 + 64);
    v35(v25, &v3[v36], v5);
    (*(*(v23 - 8) + 16))(&v25[v27], v42, v23);
    *&v25[v28] = v22;
    (*(*(TupleTypeMetadata3 - 8) + 56))(v25, 0, 1, TupleTypeMetadata3);
    return swift_willThrow();
  }
}

BOOL sub_1000814F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13[4] = a7;
  v13[0] = a3;
  v13[1] = a4;
  v13[2] = a5;
  v13[3] = a6;
  v9 = type metadata accessor for Edge2(0, v13);
  v13[0] = *(a1 + *(v9 + 68));
  swift_getFunctionTypeMetadata1();
  type metadata accessor for Array();

  swift_getWitnessTable();
  v10 = Sequence.allSatisfy(_:)();

  return (v10 & 1) != 0 && sub_100043820(a2, v9);
}

uint64_t sub_100081638(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    while (1)
    {
      v12 = *v6;

      v8 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- != 0;
      ++v6;
      if ((v8 & v10 & 1) == 0)
      {
        return v8 & 1;
      }
    }

    LOBYTE(v8) = 0;
  }

  else
  {
    LOBYTE(v8) = 1;
  }

  return v8 & 1;
}

uint64_t sub_1000816EC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v21 = result;
  v20 = *(a3 + 16);
  if (v20)
  {
    v4 = 0;
    v5 = (a3 + 40);
    v6 = _swiftEmptyArrayStorage;
    v19 = a3;
    while (v4 < *(a3 + 16))
    {
      v7 = *(v5 - 1);
      v8 = *v5;
      v9 = v5[1];
      v10 = *(v5 + 1);
      v11 = v5[16];
      v12 = *(v5 + 3);
      v13 = *(v5 + 4);
      v24 = v7;
      v22 = v9;
      v23 = v8;
      v25 = v8;
      v26 = v9;
      v27 = v10;
      v28 = v11;
      v29 = v12;
      v30 = v13;

      v14 = v21(&v24);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v14)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v31 = v6;
        if ((result & 1) == 0)
        {
          result = sub_1000CE040(0, v6[2] + 1, 1);
          v6 = v31;
        }

        v16 = v6[2];
        v15 = v6[3];
        v17 = v16 + 1;
        v3 = 0;
        if (v16 >= v15 >> 1)
        {
          result = sub_1000CE040((v15 > 1), v16 + 1, 1);
          v17 = v16 + 1;
          v3 = 0;
          v6 = v31;
        }

        v6[2] = v17;
        v18 = &v6[6 * v16];
        v18[4] = v7;
        *(v18 + 40) = v23;
        *(v18 + 41) = v22;
        v18[6] = v10;
        *(v18 + 56) = v11;
        v18[8] = v12;
        v18[9] = v13;
      }

      else
      {

        v3 = 0;
      }

      ++v4;
      v5 += 48;
      a3 = v19;
      if (v20 == v4)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
LABEL_16:

    return v6;
  }

  return result;
}

void sub_1000818EC(uint64_t (*a1)(__int16 *), uint64_t a2, uint64_t a3)
{
  v19 = *(a3 + 16);
  if (v19)
  {
    v4 = 0;
    v5 = (a3 + 72);
    v22 = _swiftEmptyArrayStorage;
    v18 = a3;
    while (v4 < *(a3 + 16))
    {
      v6 = *(v5 - 20);
      v7 = *(v5 - 4);
      v8 = *(v5 - 3);
      v9 = *(v5 - 2);
      v10 = *(v5 - 1);
      v11 = *v5;
      v23 = v6;
      v21 = v7;
      v24 = v7;
      v25 = v8;
      v26 = v9;
      v27 = v10;
      v28 = v11;

      v12 = a1(&v23);
      if (v3)
      {

        return;
      }

      if (v12)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = v22;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000CDF60(0, v22[2] + 1, 1);
          v22 = v29;
        }

        v15 = v22[2];
        v14 = v22[3];
        v16 = v15 + 1;
        if (v15 >= v14 >> 1)
        {
          sub_1000CDF60((v14 > 1), v15 + 1, 1);
          v16 = v15 + 1;
          v22 = v29;
        }

        v22[2] = v16;
        v17 = &v22[6 * v15];
        *(v17 + 16) = v6;
        v17[5] = v21;
        v17[6] = v8;
        v17[7] = v9;
        v17[8] = v10;
        v17[9] = v11;
        v3 = 0;
      }

      else
      {

        v3 = 0;
      }

      ++v4;
      v5 += 6;
      a3 = v18;
      if (v19 == v4)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
  }
}

void sub_100081B08(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = v2;
  v86 = a2;
  v6 = sub_100035D04(&qword_10033B530, &unk_1002783D0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v70 - v12;
  __chkstk_darwin(v11);
  v15 = &v70 - v14;
  sub_100080CFC(a1, &v99);
  if (!v3)
  {
    v84 = v15;
    v85 = v7;
    v92 = v13;
    v83 = v6;
    v16 = v99;
    v17 = v100;
    v18 = v101;
    v19 = v102;
    v20 = v103;
    v21 = v104;
    if (!v100)
    {
      v27 = v86;
LABEL_18:
      *v27 = v16;
      v27[1] = v17;
      v27[2] = v18;
      v27[3] = v19;
      v27[4] = v20;
      v27[5] = v21;
      return;
    }

    v77 = v99;
    v79 = v104;
    v78 = v103;
    v22 = a1;
    v76 = v100;
    v23 = v100(&v95, a1);
    if (!v96)
    {
      sub_100035D04(&qword_10033DE50, &qword_100274140);
      sub_10000E244(&qword_10033DE58, &qword_10033DE50, &qword_100274140, &protocol conformance descriptor for StateMachine2<A, B, C>.TransitionError);
      swift_allocError();
      v29 = v28;
      v30 = sub_100035D04(&qword_10033DE60, &qword_100274148);
      (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
      swift_willThrow();

      return;
    }

    v74 = v96;
    v82 = v4;
    v24 = v95;
    v25 = v97;
    v73 = v98;
    __chkstk_darwin(v23);
    *(&v70 - 2) = a1;
    v26 = sub_100081638(sub_10008CE94, (&v70 - 4), v25);
    v75 = v3;
    v72 = v25;
    if (*(v25 + 16) && (v26 & 1) == 0)
    {

      v77 = 0;
      v76 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v27 = v86;
LABEL_17:

      v16 = v77;
      v17 = v76;
      goto LABEL_18;
    }

    v71 = v18;
    v31 = v82;
    v32 = *(*v82 + 136);
    swift_beginAccess();
    LOWORD(v93) = *(v31 + v32);
    v33 = v93;
    WORD1(v93) = v24;
    PassthroughSubject.send(_:)();
    *(v31 + v32) = v24;
    LOWORD(v93) = v33;
    WORD1(v93) = v24;
    PassthroughSubject.send(_:)();
    v93 = v74;

    v70 = v19;
    v34 = sub_1000B34EC(v19);
    v35 = v93;
    __chkstk_darwin(v34);
    *(&v70 - 2) = v22;
    v36 = v75;
    sub_10007EED0(sub_10008CAA4, (&v70 - 4), v35);
    v37 = v36;

    v93 = v73;
    v38 = v79;

    v39 = sub_1000B32F4(v38);
    v40 = v93;
    __chkstk_darwin(v39);
    *(&v70 - 2) = v22;
    sub_100082F6C(sub_10008CADC, (&v70 - 4), v40);
    v42 = v41;

    __chkstk_darwin(v43);
    *(&v70 - 2) = v22;
    sub_10007EF68(sub_10008CB2C, (&v70 - 4), v42);
    v45 = v44;
    v75 = v37;

    v47 = *(v45 + 16);
    v90 = qword_10038AFC0;
    v89 = *(*v31 + 160);
    v49 = v84;
    v48 = v85;
    v50 = v92;
    v91 = v47;
    if (!v47)
    {
LABEL_16:

      v27 = v86;
      v18 = v71;
      v19 = v70;
      v20 = v78;
      v21 = v79;
      goto LABEL_17;
    }

    v51 = v31;
    v52 = 0;
    *&v46 = 136315138;
    v80 = v46;
    v88 = v45;
    v81 = v10;
    while (v52 < *(v45 + 16))
    {
      v55 = v45 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
      v56 = v48;
      sub_100009848(v55 + *(v48 + 72) * v52, v49, &qword_10033B530, &unk_1002783D0);
      sub_100009848(v49, v50, &qword_10033B530, &unk_1002783D0);
      v57 = v50;
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v105 = v87;
        *v60 = v80;
        v61 = v81;
        sub_100009848(v57, v81, &qword_10033B530, &unk_1002783D0);
        sub_1000097E8(v92, &qword_10033B530, &unk_1002783D0);
        v93 = 0;
        v94 = 0xE000000000000000;
        v62 = v58;
        v63._countAndFlagsBits = 60;
        v63._object = 0xE100000000000000;
        String.append(_:)(v63);
        type metadata accessor for ExperienceEffect(0);
        _print_unlocked<A, B>(_:_:)();
        v64._countAndFlagsBits = 0x3D7475706E69202CLL;
        v64._object = 0xE800000000000000;
        String.append(_:)(v64);
        type metadata accessor for ExperienceEvent(0);
        _print_unlocked<A, B>(_:_:)();
        v65._countAndFlagsBits = 62;
        v65._object = 0xE100000000000000;
        String.append(_:)(v65);
        v66 = v93;
        v67 = v94;
        v68 = v61;
        LOBYTE(v61) = v59;
        v53 = v92;
        sub_1000097E8(v68, &qword_10033B530, &unk_1002783D0);
        v69 = sub_100017494(v66, v67, &v105);
        v48 = v85;

        *(v60 + 4) = v69;
        _os_log_impl(&_mh_execute_header, v62, v61, "⭐️ Output: %s", v60, 0xCu);
        sub_10000903C(v87);
        v54 = v82;

        v49 = v84;
      }

      else
      {
        v53 = v57;
        sub_1000097E8(v57, &qword_10033B530, &unk_1002783D0);

        v54 = v51;
        v48 = v56;
      }

      ++v52;
      v51 = v54;
      PassthroughSubject.send(_:)();
      sub_1000097E8(v49, &qword_10033B530, &unk_1002783D0);
      v45 = v88;
      v50 = v53;
      if (v91 == v52)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t StateMachine2.receive(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a1;
  v80 = a2;
  v4 = *(*v2 + 88);
  v5 = *(*v2 + 96);
  v6 = *(*v2 + 104);
  v7 = *(*v2 + 112);
  v84 = *(*v2 + 80);
  v3 = v84;
  v85 = v4;
  v86 = v5;
  v87 = v6;
  v88 = v7;
  v8 = type metadata accessor for End(255, &v84);
  v9 = type metadata accessor for Optional();
  v73 = *(v9 - 8);
  v74 = v9;
  v10 = __chkstk_darwin(v9);
  v76 = &v66 - v11;
  v79 = *(v8 - 8);
  __chkstk_darwin(v10);
  v13 = &v66 - v12;
  v81 = v3;
  v82 = v4;
  v84 = v3;
  v85 = v4;
  v77 = v5;
  v78 = v6;
  v86 = v5;
  v87 = v6;
  v88 = v7;
  v14 = type metadata accessor for Edge2(255, &v84);
  v15 = type metadata accessor for Optional();
  v75 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v18 = &v66 - v17;
  v19 = *(v14 - 8);
  __chkstk_darwin(v16);
  v21 = &v66 - v20;
  v22 = v83;
  result = sub_100080F74(v89, v18);
  if (!v22)
  {
    v83 = 0;
    v69 = v13;
    v70 = v7;
    v24 = v82;
    v68 = v2;
    v71 = v21;
    v72 = v8;
    if ((*(v19 + 48))(v18, 1, v14) == 1)
    {
      (*(v75 + 8))(v18, v15);
      v25 = 1;
      v26 = v80;
      v27 = v19;
      return (*(v27 + 56))(v26, v25, 1, v14);
    }

    v29 = v19 + 32;
    v28 = *(v19 + 32);
    v30 = v19;
    v31 = v71;
    v67 = v28;
    v28(v71, v18, v14);
    v32 = v76;
    v33 = v89;
    v34 = v14;
    sub_100043970(v89, v14);
    v35 = v79;
    v36 = v72;
    if ((*(v79 + 48))(v32, 1, v72) != 1)
    {
      v73 = v29;
      v74 = v30;
      v75 = v34;
      v40 = v69;
      v41 = (*(v35 + 32))(v69, v32, v36);
      v42 = *&v40[*(v36 + 64)];
      v84 = v42;
      __chkstk_darwin(v41);
      *(&v66 - 6) = v81;
      *(&v66 - 5) = v24;
      v43 = v24;
      v45 = v77;
      v44 = v78;
      *(&v66 - 4) = v77;
      *(&v66 - 3) = v44;
      *(&v66 - 2) = v70;
      *(&v66 - 1) = v33;
      swift_getFunctionTypeMetadata1();
      type metadata accessor for Array();

      swift_getWitnessTable();
      v46 = v83;
      v47 = Sequence.allSatisfy(_:)();
      v83 = v46;

      v84 = v42;
      swift_getWitnessTable();
      if (Collection.isEmpty.getter() & 1) != 0 || (v47)
      {
        sub_10008BEA8(v69);
        swift_getFunctionTypeMetadata1();
        v48 = static Array.+ infix(_:_:)();
        v66 = &v66;
        v84 = v48;
        __chkstk_darwin(v48);
        *(&v66 - 6) = v81;
        *(&v66 - 5) = v43;
        *(&v66 - 4) = v45;
        *(&v66 - 3) = v44;
        v49 = v89;
        *(&v66 - 2) = v70;
        *(&v66 - 1) = v49;
        type metadata accessor for Array();
        v76 = &protocol conformance descriptor for [A];
        swift_getWitnessTable();
        v50 = v83;
        Sequence.forEach(_:)();
        v83 = v50;

        type metadata accessor for Array();
        swift_getFunctionTypeMetadata1();
        v51 = static Array.+ infix(_:_:)();
        v66 = &v66;
        v84 = v51;
        __chkstk_darwin(v51);
        *(&v66 - 6) = v81;
        *(&v66 - 5) = v43;
        *(&v66 - 4) = v45;
        v52 = v78;
        v53 = v70;
        *(&v66 - 3) = v78;
        *(&v66 - 2) = v53;
        *(&v66 - 1) = v49;
        type metadata accessor for Array();
        v54 = swift_checkMetadataState();
        swift_getWitnessTable();
        swift_getWitnessTable();
        v55 = v83;
        v56 = Sequence.flatMap<A>(_:)();

        v84 = v56;
        __chkstk_darwin(v57);
        *(&v66 - 6) = v81;
        *(&v66 - 5) = v43;
        v58 = v77;
        *(&v66 - 4) = v77;
        *(&v66 - 3) = v52;
        v59 = v89;
        *(&v66 - 2) = v70;
        *(&v66 - 1) = v59;
        v61 = type metadata accessor for OutputEventContext(0, v43, v58, v60);
        WitnessTable = swift_getWitnessTable();
        v64 = sub_10007F168(sub_10008C3FC, (&v66 - 8), v54, v61, &type metadata for Never, WitnessTable, &protocol witness table for Never, v63);

        v84 = v64;
        type metadata accessor for Array();
        swift_getWitnessTable();
        Sequence.forEach(_:)();
        v14 = v75;
        v83 = v55;

        (*(v79 + 8))(v69, v72);
        v65 = v80;
        v67(v80, v71, v14);
        v26 = v65;
        v25 = 0;
        v27 = v74;
      }

      else
      {
        (*(v79 + 8))(v69, v72);
        v27 = v74;
        v14 = v75;
        (*(v74 + 8))(v71, v75);
        v25 = 1;
        v26 = v80;
      }

      return (*(v27 + 56))(v26, v25, 1, v14);
    }

    (*(v73 + 8))(v32, v74);
    v84 = v81;
    v85 = v24;
    v86 = v77;
    v87 = v78;
    v88 = v70;
    type metadata accessor for StateMachine2.TransitionError(0, &v84);
    swift_getWitnessTable();
    swift_allocError();
    v38 = v37;
    type metadata accessor for Array();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    (*(*(TupleTypeMetadata3 - 8) + 56))(v38, 1, 1, TupleTypeMetadata3);
    swift_willThrow();
    return (*(v30 + 8))(v31, v34);
  }

  return result;
}

char *sub_100082DF8(char *(*a1)(uint64_t *__return_ptr, char *, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = (a3 + 32);
  v6 = _swiftEmptyArrayStorage;
  while (1)
  {
    v19 = *v5;
    result = a1(&v18, &v19, a2);
    if (v3)
    {

      return v6;
    }

    v8 = v18;
    v9 = *(v18 + 16);
    v10 = *(v6 + 2);
    v11 = v10 + v9;
    if (__OFADD__(v10, v9))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v11 <= *(v6 + 3) >> 1)
    {
      if (*(v8 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v10 <= v11)
      {
        v12 = v10 + v9;
      }

      else
      {
        v12 = v10;
      }

      result = sub_1000AF698(result, v12, 1, v6);
      v6 = result;
      if (*(v8 + 16))
      {
LABEL_15:
        v13 = *(v6 + 2);
        if ((*(v6 + 3) >> 1) - v13 < v9)
        {
          goto LABEL_24;
        }

        memcpy(&v6[2 * v13 + 32], (v8 + 32), 2 * v9);

        if (v9)
        {
          v14 = *(v6 + 2);
          v15 = __OFADD__(v14, v9);
          v16 = v14 + v9;
          if (v15)
          {
            goto LABEL_25;
          }

          *(v6 + 2) = v16;
        }

        goto LABEL_4;
      }
    }

    if (v9)
    {
      goto LABEL_23;
    }

LABEL_4:
    ++v5;
    if (!--v4)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void sub_100082F6C(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return;
  }

  v5 = (a3 + 32);
  v6 = _swiftEmptyArrayStorage;
  while (1)
  {
    v18 = *v5;

    a1(&v19, &v18);
    if (v3)
    {

      return;
    }

    v7 = v19;
    v8 = *(v19 + 16);
    v9 = v6[2];
    v10 = v9 + v8;
    if (__OFADD__(v9, v8))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v10 <= v6[3] >> 1)
    {
      if (*(v7 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v9 <= v10)
      {
        v12 = v9 + v8;
      }

      else
      {
        v12 = v9;
      }

      v6 = sub_1000AFDE4(isUniquelyReferenced_nonNull_native, v12, 1, v6);
      if (*(v7 + 16))
      {
LABEL_15:
        v13 = (v6[3] >> 1) - v6[2];
        type metadata accessor for ExperienceEffect(0);
        if (v13 < v8)
        {
          goto LABEL_24;
        }

        swift_arrayInitWithCopy();

        if (v8)
        {
          v14 = v6[2];
          v15 = __OFADD__(v14, v8);
          v16 = v14 + v8;
          if (v15)
          {
            goto LABEL_25;
          }

          v6[2] = v16;
        }

        goto LABEL_4;
      }
    }

    if (v8)
    {
      goto LABEL_23;
    }

LABEL_4:
    ++v5;
    if (!--v4)
    {
      return;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_10008313C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t x8_0@<X8>)
{
  v10 = *(a4 - 8);
  v11 = __chkstk_darwin(a1);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15);
  (*(v10 + 16))(v13, a2, a4);
  return sub_10022AF8C(v15, v13, a4, a5, x8_0);
}

uint64_t sub_1000832B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for OutputEventContext(0, *(*a2 + 88), *(*a2 + 96), a4);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v24 - v10;
  v12 = *(v6 + 16);
  v26 = a1;
  v12(&v24 - v10, a1, v5);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25 = v14;
    v16 = v15;
    v24 = swift_slowAlloc();
    v27 = v24;
    *v16 = 136315138;
    v12(v9, v11, v5);
    v17 = *(v6 + 8);
    v17(v11, v5);
    v18 = v13;
    v19 = OutputEventContext.description.getter(v5);
    v21 = v20;
    v17(v9, v5);
    v22 = sub_100017494(v19, v21, &v27);

    *(v16 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v18, v25, "⭐️ Output: %s", v16, 0xCu);
    sub_10000903C(v24);
  }

  else
  {
    (*(v6 + 8))(v11, v5);
  }

  return PassthroughSubject.send(_:)();
}

void sub_100083564(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ExperienceEvent(0);
  v5 = __chkstk_darwin(v4);
  v7 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v48 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = v48 - v12;
  __chkstk_darwin(v11);
  v15 = v48 - v14;
  v16 = qword_10038AFC0;
  sub_10008CD34(a1, v48 - v14, type metadata accessor for ExperienceEvent);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v48[1] = v16;
    v20 = v19;
    v21 = swift_slowAlloc();
    v50 = v10;
    v48[0] = v21;
    v53[0] = v21;
    *v20 = 136315138;
    sub_10008CD34(v15, v13, type metadata accessor for ExperienceEvent);
    v22 = a1;
    v23 = v7;
    v24 = String.init<A>(describing:)();
    v49 = v13;
    v26 = v25;
    sub_10007E6BC(v15);
    v27 = v24;
    v7 = v23;
    a1 = v22;
    v28 = sub_100017494(v27, v26, v53);
    v13 = v49;

    *(v20 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v17, v18, "⬆️  Input: %s", v20, 0xCu);
    sub_10000903C(v48[0]);
  }

  else
  {

    sub_10007E6BC(v15);
  }

  sub_100081B08(a1, v53);
  if (!v53[1])
  {
    v37 = v13;
    sub_10008CD34(a1, v7, type metadata accessor for ExperienceEvent);

    v29 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v29, v38))
    {

      sub_10007E6BC(v7);
      return;
    }

    v39 = swift_slowAlloc();
    v52[0] = swift_slowAlloc();
    *v39 = 136315394;
    sub_10008CD34(v7, v37, type metadata accessor for ExperienceEvent);
    v40 = String.init<A>(describing:)();
    v42 = v41;
    sub_10007E6BC(v7);
    v43 = sub_100017494(v40, v42, v52);

    *(v39 + 4) = v43;
    *(v39 + 12) = 2080;
    v44 = *(*v2 + 136);
    swift_beginAccess();
    v51 = *(v2 + v44);
    v45 = String.init<A>(describing:)();
    v47 = sub_100017494(v45, v46, v52);

    *(v39 + 14) = v47;
    _os_log_impl(&_mh_execute_header, v29, v38, "♢ No edge for input: %s, state=%s", v39, 0x16u);
    swift_arrayDestroy();

    goto LABEL_9;
  }

  sub_1000097E8(v53, &qword_10033DE48, &unk_100274130);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v52[0] = v32;
    *v31 = 136315138;
    v33 = *(*v2 + 136);
    swift_beginAccess();
    v51 = *(v2 + v33);
    v34 = String.init<A>(describing:)();
    v36 = sub_100017494(v34, v35, v52);

    *(v31 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v29, v30, "🟣 State: %s", v31, 0xCu);
    sub_10000903C(v32);

LABEL_9:
  }
}

void StateMachine2.send(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v69 = *(*(*v1 + 80) - 8);
  __chkstk_darwin(a1);
  v67 = v5;
  v68 = v64 - v4;
  v79 = v5;
  v77 = *(v6 + 88);
  v80 = v77;
  v81 = *(v6 + 104);
  v71 = type metadata accessor for Edge2(255, &v79);
  v7 = type metadata accessor for Optional();
  v70 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v76 = v64 - v9;
  v10 = v77;
  v11 = *(v77 - 8);
  v12 = __chkstk_darwin(v8);
  v14 = v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = v64 - v16;
  __chkstk_darwin(v15);
  v19 = v64 - v18;
  v20 = qword_10038AFC0;
  v72 = *(v11 + 16);
  v73 = v11 + 16;
  v72(v64 - v18, v3, v10);
  *&v77 = v20;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  v23 = os_log_type_enabled(v21, v22);
  v75 = v11;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v64[0] = v7;
    v25 = v24;
    v26 = swift_slowAlloc();
    v65 = v3;
    v27 = v26;
    v79 = v26;
    *v25 = 136315138;
    v28 = sub_10013FD74(v19, v10);
    v64[1] = v14;
    v29 = v17;
    v30 = v28;
    v66 = v2;
    v32 = v31;
    v74 = *(v11 + 8);
    v74(v19, v10);
    v33 = v30;
    v17 = v29;
    v34 = sub_100017494(v33, v32, &v79);
    v2 = v66;

    *(v25 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v21, v22, "⬆️  Input: %s", v25, 0xCu);
    sub_10000903C(v27);
    v3 = v65;

    v7 = v64[0];
  }

  else
  {

    v74 = *(v11 + 8);
    v74(v19, v10);
  }

  v35 = v76;
  StateMachine2.receive(_:)(v3, v76);
  v36 = (*(*(v71 - 8) + 48))(v35, 1);
  (*(v70 + 8))(v35, v7);
  if (v36 != 1)
  {

    v37 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v37, v53))
    {
LABEL_10:

      return;
    }

    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v78[0] = v55;
    *v54 = 136315138;
    v56 = *(*v2 + 136);
    swift_beginAccess();
    v58 = v68;
    v57 = v69;
    v59 = v67;
    (*(v69 + 16))(v68, v2 + v56, v67);
    v60 = sub_10013FD74(v58, v59);
    v62 = v61;
    (*(v57 + 8))(v58, v59);
    v63 = sub_100017494(v60, v62, v78);

    *(v54 + 4) = v63;
    _os_log_impl(&_mh_execute_header, v37, v53, "🟣 State: %s", v54, 0xCu);
    sub_10000903C(v55);

LABEL_9:

    goto LABEL_10;
  }

  v72(v17, v3, v10);

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v78[0] = swift_slowAlloc();
    *v39 = 136315394;
    v40 = sub_10013FD74(v17, v10);
    v41 = v17;
    v43 = v42;
    v74(v41, v10);
    v44 = sub_100017494(v40, v43, v78);

    *(v39 + 4) = v44;
    *(v39 + 12) = 2080;
    v45 = *(*v2 + 136);
    swift_beginAccess();
    v47 = v68;
    v46 = v69;
    v48 = v67;
    (*(v69 + 16))(v68, v2 + v45, v67);
    v49 = sub_10013FD74(v47, v48);
    v51 = v50;
    (*(v46 + 8))(v47, v48);
    v52 = sub_100017494(v49, v51, v78);

    *(v39 + 14) = v52;
    _os_log_impl(&_mh_execute_header, v37, v38, "♢ No edge for input: %s, state=%s", v39, 0x16u);
    swift_arrayDestroy();

    goto LABEL_9;
  }

  v74(v17, v10);
}

uint64_t sub_1000845AC()
{
  v1 = (v0 + *(*v0 + 176));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    swift_getMetatypeMetadata();
    v2 = String.init<A>(describing:)();
    *v1 = v2;
    v1[1] = v3;
  }

  return v2;
}

uint64_t StateMachine2.description.getter(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = *(v5 - 8);
  __chkstk_darwin(a1);
  v8 = &v30[-v7];
  v34 = 0;
  v35.i64[0] = 0xE000000000000000;
  _StringGuts.grow(_:)(22);
  v39 = v34;
  v40 = v35.i64[0];
  v9._countAndFlagsBits = 60;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  v10._countAndFlagsBits = sub_1000845AC();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0x3D657461747320;
  v11._object = 0xE700000000000000;
  String.append(_:)(v11);
  v12 = *(*v1 + 136);
  swift_beginAccess();
  (*(v6 + 16))(v8, v2 + v12, v5);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  (*(v6 + 8))(v8, v5);
  v13._countAndFlagsBits = 0x3D736567646520;
  v13._object = 0xE700000000000000;
  String.append(_:)(v13);
  v38 = sub_100080664();
  v14 = *(v3 + 104);
  v15.i64[0] = v5;
  v33 = *(v3 + 112);
  v34 = v5;
  v16 = *(v4 + 88);
  *&v17 = vdupq_laneq_s64(v16, 1).u64[0];
  *(&v17 + 1) = v14;
  v31 = vzip1q_s64(v15, v16);
  v32 = v17;
  v35 = v16;
  v36 = v14;
  v37 = v33;
  type metadata accessor for Edge2(255, &v34);
  type metadata accessor for Array();
  v18 = type metadata accessor for Dictionary();
  WitnessTable = swift_getWitnessTable();
  v21 = sub_10007F168(sub_10008C440, v30, v18, &type metadata for Int, &type metadata for Never, WitnessTable, &protocol witness table for Never, v20);

  result = v21;
  v23 = *(v21 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = (result + 32);
    while (1)
    {
      v26 = *v25++;
      v27 = __OFADD__(v24, v26);
      v24 += v26;
      if (v27)
      {
        break;
      }

      if (!--v23)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v24 = 0;
LABEL_7:

    v34 = v24;
    v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v28);

    v29._countAndFlagsBits = 62;
    v29._object = 0xE100000000000000;
    String.append(_:)(v29);
    return v39;
  }

  return result;
}

uint64_t sub_1000849BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v17[0] = a2;
  v17[1] = a3;
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  type metadata accessor for Edge2(255, v17);
  type metadata accessor for Array();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  __chkstk_darwin(TupleTypeMetadata2);
  v12 = &v17[-1] - v11;
  (*(v13 + 16))(&v17[-1] - v11, a1, TupleTypeMetadata2);
  v14 = Array.count.getter();

  *a7 = v14;
  return (*(*(a2 - 8) + 8))(v12, a2);
}

uint64_t *StateMachine2.deinit()
{
  v1 = *v0;
  v2 = qword_10038AFC0;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 136));

  return v0;
}

uint64_t StateMachine2.__deallocating_deinit()
{
  StateMachine2.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_100084D08()
{
  v1 = *v0;
  v2 = *(**v0 + 136);
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_100084D5C()
{
  sub_100035D04(&qword_10033DE78, &qword_100274160);
  sub_10000E244(&qword_10033DE80, &qword_10033DE78, &qword_100274160, &protocol conformance descriptor for PassthroughSubject<A, B>);
  return Publisher.eraseToAnyPublisher()();
}

uint64_t sub_100084E24(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_100084E70(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_100084EF8(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_100017494(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_100084F54(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100035D04(&qword_10033DF38, &unk_100280F20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_100085048(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_100085058(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

unint64_t sub_1000850CC(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_100085384(a1, v4);
}

unint64_t sub_100085110(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();

  return sub_100085448(a1, v2);
}

unint64_t sub_10008517C(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  sub_100244AC4(v4, v1);
  v2 = Hasher._finalize()();

  return sub_1000854B4(v1, v2);
}

unint64_t sub_1000851E8(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000855D8(a1, v4);
}

unint64_t sub_10008522C(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  v2 = Hasher._finalize()();

  return sub_1000856A0(v1, v2);
}

unint64_t sub_100085298(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_100085710(a1, v2);
}

unint64_t sub_100085328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_100085814(a1, v6, a2, a3);
}

unint64_t sub_100085384(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_10008CCE8();
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

unint64_t sub_100085448(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1000854B4(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(*(v2 + 48) + 2 * result);
      v8 = v7 >> 13;
      if (v7 >> 13 <= 1)
      {
        if (v8)
        {
          if ((a1 & 0xE000) != 0x2000)
          {
            goto LABEL_5;
          }

LABEL_19:
          if ((v7 ^ a1) & 1) == 0 && ((((a1 & 0x100) == 0) ^ ((v7 & 0x100) >> 8)))
          {
            return result;
          }

          goto LABEL_5;
        }

        if ((a1 & 0xE000) == 0)
        {
LABEL_4:
          if (((v7 ^ a1) & 1) == 0)
          {
            return result;
          }
        }
      }

      else
      {
        if (v8 == 2)
        {
          if ((a1 & 0xE000) != 0x4000)
          {
            goto LABEL_5;
          }

          goto LABEL_19;
        }

        if (v8 == 3)
        {
          if ((a1 & 0xE000) == 0x6000)
          {
            goto LABEL_4;
          }
        }

        else if (v7 == 0x8000)
        {
          if (a1 == 0x8000)
          {
            return result;
          }
        }

        else if (v7 == 32769)
        {
          if (a1 == 32769)
          {
            return result;
          }
        }

        else if (a1 == 33024)
        {
          return result;
        }
      }

LABEL_5:
      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1000855D8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100051658(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_1000516C4(v8);
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

unint64_t sub_1000856A0(unsigned __int8 a1, uint64_t a2)
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

unint64_t sub_100085710(uint64_t a1, uint64_t a2)
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

unint64_t sub_100085814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  __chkstk_darwin(a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

void sub_10008599C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100035D04(&qword_100350F40, &qword_1002741B0);
  v36 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v2;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v36 & 1) == 0)
      {
        v25 = v21;
      }

      v26 = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_100085C20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100035D04(&qword_10033DEB0, &qword_1002741B8);
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v35 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v21);
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
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
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

void sub_100085EBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100035D04(&qword_10033DE70, &qword_100274158);
  v35 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
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
    v14 = v6 + 64;
    while (1)
    {
      if (!v12)
      {
        v17 = v8;
        while (1)
        {
          v8 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
            goto LABEL_51;
          }

          if (v8 >= v13)
          {
            break;
          }

          v18 = v9[v8];
          ++v17;
          if (v18)
          {
            v16 = __clz(__rbit64(v18));
            v12 = (v18 - 1) & v18;
            goto LABEL_15;
          }
        }

        if ((v35 & 1) == 0)
        {

          v3 = v2;
          goto LABEL_49;
        }

        v34 = 1 << *(v5 + 32);
        v3 = v2;
        if (v34 >= 64)
        {
          bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v9 = -1 << v34;
        }

        *(v5 + 16) = 0;
        goto LABEL_48;
      }

      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 2 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v35 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      v22 = v20 >> 13;
      if (v20 >> 13 <= 1)
      {
        break;
      }

      if (v22 == 2)
      {
        v25 = 3;
        goto LABEL_28;
      }

      if (v22 == 3)
      {
        Hasher._combine(_:)(4uLL);
        v23 = v20 & 1;
      }

      else if (v20 == 0x8000)
      {
        v23 = 2;
      }

      else if (v20 == 32769)
      {
        v23 = 5;
      }

      else
      {
        v23 = 6;
      }

      Hasher._combine(_:)(v23);
LABEL_33:
      v26 = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_51:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 2 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    if (v22)
    {
      v25 = 1;
LABEL_28:
      Hasher._combine(_:)(v25);
      Hasher._combine(_:)(v20 & 1);
      v24 = (v20 >> 8) & 1;
    }

    else
    {
      Hasher._combine(_:)(0);
      LOBYTE(v24) = v20 & 1;
    }

    Hasher._combine(_:)(v24);
    goto LABEL_33;
  }

LABEL_48:

LABEL_49:
  *v3 = v7;
}

void sub_100086218(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  sub_100035D04(a3, a4);
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

      sub_100019194(&qword_100339848, &protocol conformance descriptor for UUID);
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

void sub_1000865E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100035D04(&qword_10033DEF0, &qword_100274218);
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

void sub_1000868BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100035D04(&unk_100350EA0, &qword_100274268);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v3;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      v22 = static Hasher._hash(seed:_:)();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_100086B2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100035D04(&qword_10033DEC0, &qword_1002741D0);
  v38 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v39 = *v26;
      if ((v38 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v28 = Hasher._finalize()();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v39;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_100086DEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100035D04(&qword_10033DF28, &qword_100274278);
  v45 = v4;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v50 = v8;
    v41 = v2;
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
    v42 = (v6 + 16);
    v43 = v9;
    v44 = v6;
    v46 = (v6 + 32);
    v18 = v10 + 64;
    while (v16)
    {
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v25 = v22 | (v12 << 6);
      v26 = *(v9 + 48);
      v49 = *(v44 + 72);
      v27 = v26 + v49 * v25;
      if (v45)
      {
        (*v46)(v50, v27, v5);
        v28 = (*(v9 + 56) + 16 * v25);
        v29 = *v28;
        v47 = v28[1];
        v48 = v29;
      }

      else
      {
        (*v42)(v50, v27, v5);
        v30 = (*(v9 + 56) + 16 * v25);
        v31 = *v30;
        v47 = v30[1];
        v48 = v31;
      }

      sub_100019194(&qword_100339848, &protocol conformance descriptor for UUID);
      v32 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v33 = -1 << *(v11 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v18 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v18 + 8 * v35);
          if (v39 != -1)
          {
            v19 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v34) & ~*(v18 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v46)((*(v11 + 48) + v49 * v19), v50, v5);
      v20 = (*(v11 + 56) + 16 * v19);
      v21 = v47;
      *v20 = v48;
      v20[1] = v21;
      ++*(v11 + 16);
      v9 = v43;
    }

    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v24 = v13[v12];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v16 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v13, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_1000871E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100035D04(&qword_10033DF18, &qword_100274258);
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

void sub_100087490(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100035D04(&unk_100350E90, &unk_10027C950);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v2;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v39 = *(v23 + 32);
        v37 = v24;
        v38 = v25;
        sub_1000516B4((*(v5 + 56) + 32 * v22), v36);
      }

      else
      {
        sub_100051658(v23, &v37);
        sub_10001766C(*(v5 + 56) + 32 * v22, v36);
      }

      v26 = AnyHashable._rawHashValue(seed:)(*(v7 + 40));
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v37;
      v18 = v38;
      *(v16 + 32) = v39;
      *v16 = v17;
      *(v16 + 16) = v18;
      sub_1000516B4(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_100087770(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100035D04(&qword_10033DED8, &qword_1002741F0);
  v34 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
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
      v24 = (*(v5 + 56) + 32 * v20);
      if (v34)
      {
        sub_1000516B4(v24, v35);
      }

      else
      {
        sub_10001766C(v24, v35);
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

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      sub_1000516B4(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_100087A3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_100035D04(a3, a4);
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v34 = v5;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
        v24 = v23;
      }

      v25 = static Hasher._hash(seed:_:)();
      v26 = -1 << *(v9 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v16 + 8 * v28);
          if (v32 != -1)
          {
            v17 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v6)
    {
      v33 = 1 << *(v7 + 32);
      if (v33 >= 64)
      {
        bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v11 = -1 << v33;
      }

      *(v7 + 16) = 0;
    }

    v5 = v34;
  }

  else
  {
  }

  *v5 = v9;
}

void sub_100087CD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100035D04(&qword_10033DEF8, &qword_100274220);
  v35 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_1000516B4(v22, v36);
      }

      else
      {
        sub_10001766C(v22, v36);
        v23 = v21;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v24 = Hasher._finalize()();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
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

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      sub_1000516B4(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
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

LABEL_34:
  *v3 = v7;
}

void sub_100087FA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100035D04(&unk_100350F90, &qword_100274210);
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

void sub_100088250(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100035D04(&qword_10033DEE8, &qword_100274208);
  v38 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v5;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 24 * v21);
      v26 = v25[1];
      v39 = *v25;
      v27 = v25[2];
      if ((v38 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v28 = Hasher._finalize()();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = (*(v7 + 56) + 24 * v15);
      *v17 = v39;
      v17[1] = v26;
      v17[2] = v27;
      ++*(v7 + 16);
      v5 = v37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_100088520(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v53 = type metadata accessor for Date();
  v5 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v54 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100035D04(&qword_10033DEE0, &qword_100274200);
  v48 = v4;
  v11 = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = v11;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v44 = (v14 + 16);
    v45 = v14;
    v42 = v2;
    v43 = v5 + 16;
    v46 = v10;
    v47 = v5;
    v49 = (v5 + 32);
    v50 = (v14 + 32);
    v20 = v11 + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v51 = *(v21 + 72);
      v28 = v27 + v51 * v26;
      if (v48)
      {
        (*v50)(v54, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v47 + 72);
        (*(v47 + 32))(v52, v29 + v30 * v26, v53);
      }

      else
      {
        (*v44)(v54, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v47 + 72);
        (*(v47 + 16))(v52, v31 + v30 * v26, v53);
      }

      sub_100019194(&qword_100339848, &protocol conformance descriptor for UUID);
      v32 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v33 = -1 << *(v12 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v20 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v20 + 8 * v35);
          if (v39 != -1)
          {
            v22 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v34) & ~*(v20 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v50)((*(v12 + 48) + v51 * v22), v54, v7);
      (*v49)(*(v12 + 56) + v30 * v22, v52, v53);
      ++*(v12 + 16);
      v21 = v45;
      v10 = v46;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_34;
    }

    v40 = 1 << *(v10 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v15, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v40;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
}

void sub_1000889B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  active = type metadata accessor for PCUserAlertManager.ActiveAlertContext(0);
  v43 = *(active - 8);
  __chkstk_darwin(active - 8);
  v48 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v47 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100035D04(&qword_10033DF30, &unk_100274280);
  v44 = v4;
  v11 = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = v11;
  if (*(v10 + 16))
  {
    v39 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v40 = (v8 + 16);
    v41 = v8;
    v45 = (v8 + 32);
    v19 = v11 + 64;
    v42 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v46 = *(v8 + 72);
      v26 = v25 + v46 * v24;
      if (v44)
      {
        (*v45)(v47, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v43 + 72);
        sub_10008CD9C(v27 + v28 * v24, v48);
      }

      else
      {
        (*v40)(v47, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v43 + 72);
        sub_10008CD34(v29 + v28 * v24, v48, type metadata accessor for PCUserAlertManager.ActiveAlertContext);
      }

      sub_100019194(&qword_100339848, &protocol conformance descriptor for UUID);
      v30 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v31 = -1 << *(v12 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v19 + 8 * (v32 >> 6))) == 0)
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
          v37 = *(v19 + 8 * v33);
          if (v37 != -1)
          {
            v20 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v20 = __clz(__rbit64((-1 << v32) & ~*(v19 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v45)((*(v12 + 48) + v46 * v20), v47, v7);
      sub_10008CD9C(v48, *(v12 + 56) + v28 * v20);
      ++*(v12 + 16);
      v8 = v41;
      v10 = v42;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v14, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
}

void sub_100088E2C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  sub_100035D04(a3, a4);
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

      sub_100019194(&qword_100339848, &protocol conformance descriptor for UUID);
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

void sub_100089244(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_100035D04(a3, a4);
  v37 = v6;
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v27 = Hasher._finalize()();
      v28 = -1 << *(v9 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_1000894F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_100035D04(a3, a4);
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v33 = v5;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
      }

      v24 = static Hasher._hash(seed:_:)();
      v25 = -1 << *(v9 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v6 & 1) == 0)
    {

      v5 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v7 + 32);
    v5 = v33;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}