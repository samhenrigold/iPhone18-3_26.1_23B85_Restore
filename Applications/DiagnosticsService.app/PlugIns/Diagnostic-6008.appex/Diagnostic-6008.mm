id sub_100001458()
{
  result = DiagnosticLogHandleForCategory();
  qword_1000116F0 = result;
  return result;
}

void sub_100001484(uint64_t a1, void *a2)
{
  *&v2[OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_responder] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11[4] = sub_100005ED0;
  v11[5] = v5;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1000017D4;
  v11[3] = &unk_10000C698;
  v6 = _Block_copy(v11);

  [a2 requestSessionAccessoryIdentifierWithCompletion:v6];
  _Block_release(v6);
  if (a1 && (type metadata accessor for OnDemandAudioDiagnosticMonitorInputs(), (v7 = swift_dynamicCastClass()) != 0))
  {
    v8 = *&v2[OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_inputs];
    *&v2[OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_inputs] = v7;
    swift_unknownObjectRetain();
  }

  else
  {
    v9 = [v2 result];
    isa = sub_100006E8C().super.super.isa;
    [v9 setStatusCode:isa];

    [v2 setFinished:1];
  }
}

void sub_100001618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a3)
    {
      swift_errorRetain();
      v9 = sub_100006E9C();
      if (qword_100011040 != -1)
      {
        swift_once();
      }

      v10 = qword_1000116F0;
      if (os_log_type_enabled(qword_1000116F0, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v17 = v12;
        *v11 = 136315138;
        swift_getErrorValue();
        v13 = sub_100006FCC();
        v15 = sub_100004D2C(v13, v14, &v17);

        *(v11 + 4) = v15;
        _os_log_impl(&_mh_execute_header, v10, v9, "Unable to get accessory identifier from host app with error %s", v11, 0xCu);
        sub_100005D64(v12);
      }

      sub_10000401C(0);
    }

    else
    {
      v16 = (Strong + OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_targetUUID);
      *v16 = a1;
      v16[1] = a2;
    }
  }
}

void sub_1000017D4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = sub_100006E3C();
  v7 = v6;

  v8 = a3;
  v4(v5, v7, a3);
}

uint64_t sub_1000018F0()
{
  v1 = v0;
  v26 = sub_100006D9C();
  v2 = *(v26 - 8);
  __chkstk_darwin(v26);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100006DCC();
  v27 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100006DEC();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v22 - v13;
  sub_100004BA4();
  v15 = sub_100006EEC();
  result = sub_100006DDC();
  v17 = *(v1 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_inputs);
  if (v17)
  {
    v23 = v15;
    v24 = v5;
    v25 = v2;
    if ((*(v17 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_diagnosticTestWaitDuration + 8) & 1) == 0)
    {
      sub_100006DFC();
      v22 = *(v9 + 8);
      v22(v12, v8);
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_100005EB8;
      aBlock[5] = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100005F00;
      aBlock[3] = &unk_10000C620;
      v19 = _Block_copy(aBlock);

      sub_100006DBC();
      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_100005E1C(&qword_100011110, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100004C84(&qword_100011118, &qword_100007718);
      sub_100005E64(&qword_100011120, &qword_100011118, &qword_100007718);
      v20 = v26;
      sub_100006F1C();
      v21 = v23;
      sub_100006ECC();
      _Block_release(v19);

      (*(v25 + 8))(v4, v20);
      (*(v27 + 8))(v7, v24);
      return (v22)(v14, v8);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100001CEC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if ([v2 isFinished])
    {

LABEL_16:
      return;
    }

    v3 = [v2 isCancelled];

    if (v3)
    {
      goto LABEL_16;
    }

    v4 = OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_inputs;
    v5 = *&v2[OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_inputs];
    if (v5)
    {
      v6 = *(v5 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioEnabled);
      if (v6 != 2)
      {
        if (v6)
        {
          sub_1000025A8();
        }

        v7 = *&v2[OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_responder];
        if (v7)
        {
          if (([*&v2[OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_responder] respondsToSelector:"displayAlertWithHeader:message:buttonStrings:completion:"] & 1) == 0)
          {
            goto LABEL_16;
          }

          v8 = *&v2[v4];
          if (v8)
          {
            if (*(v8 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertHeader + 8))
            {
              if (*(v8 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertMessage + 8))
              {
                sub_100004C84(&qword_100011160, &qword_100007748);
                v9 = swift_allocObject();
                *(v9 + 16) = xmmword_1000076C0;
                v10 = *(v8 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertButton + 8);
                if (v10)
                {
                  *(v9 + 32) = *(v8 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertButton);
                  *(v9 + 40) = v10;
                  v11 = swift_allocObject();
                  swift_unknownObjectWeakInit();

                  swift_unknownObjectRetain();

                  v12 = sub_100006E2C();

                  v13 = sub_100006E2C();

                  isa = sub_100006E7C().super.isa;

                  aBlock[4] = sub_100005EC0;
                  aBlock[5] = v11;
                  aBlock[0] = _NSConcreteStackBlock;
                  aBlock[1] = 1107296256;
                  aBlock[2] = sub_100001FF0;
                  aBlock[3] = &unk_10000C648;
                  v15 = _Block_copy(aBlock);
                  [v7 displayAlertWithHeader:v12 message:v13 buttonStrings:isa completion:v15];

                  swift_unknownObjectRelease();
                  _Block_release(v15);

                  return;
                }

                goto LABEL_24;
              }

LABEL_23:
              __break(1u);
LABEL_24:
              __break(1u);
              return;
            }

LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }
}

void sub_100001FF0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

char *sub_10000207C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_100006D9C();
  v31 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100006DCC();
  v30 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100006DEC();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v25 - v14;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    result[OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_openLidAlertDismissed] = 1;
    sub_100002D88();
    sub_100004BA4();
    v18 = sub_100006EEC();
    result = sub_100006DDC();
    v19 = *&v17[OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_inputs];
    if (v19)
    {
      v27 = v18;
      v28 = v6;
      v29 = v3;
      if ((*(v19 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_resultTimeout + 8) & 1) == 0)
      {
        sub_100006DFC();
        v20 = *(v10 + 8);
        v25 = v9;
        v26 = v20;
        v20(v13, v9);
        v21 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = sub_100005EC8;
        aBlock[5] = v21;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100005F00;
        aBlock[3] = &unk_10000C670;
        v22 = _Block_copy(aBlock);

        sub_100006DBC();
        aBlock[0] = &_swiftEmptyArrayStorage;
        sub_100005E1C(&qword_100011110, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_100004C84(&qword_100011118, &qword_100007718);
        sub_100005E64(&qword_100011120, &qword_100011118, &qword_100007718);
        v23 = v29;
        sub_100006F1C();
        v24 = v27;
        sub_100006ECC();
        _Block_release(v22);

        (*(v31 + 8))(v5, v23);
        (*(v30 + 8))(v8, v28);
        return v26(v15, v25);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void sub_1000024B4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_10000401C(2u);
  }
}

void sub_1000025A8()
{
  v1 = v0 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_audioAlertPlaybackStartTime;
  if (*(v0 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_audioAlertPlaybackStartTime + 8))
  {
    *v1 = 0x41CD27E440000000;
    *(v1 + 8) = 0;
    v2 = *(v0 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_inputs);
    if (!v2)
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

LABEL_3:
    v3 = v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertSoundID;
    if ((*(v3 + 4) & 1) == 0)
    {
      v4 = *v3;
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v7[4] = sub_100005E0C;
      v7[5] = v5;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 1107296256;
      v7[2] = sub_100005F00;
      v7[3] = &unk_10000C5D0;
      v6 = _Block_copy(v7);

      AudioServicesPlayAlertSoundWithCompletion(v4, v6);
      _Block_release(v6);
      return;
    }

    __break(1u);
    goto LABEL_11;
  }

  if ((*(v0 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_openLidAlertDismissed) & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_inputs);
    if (!v2)
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    if (*(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioDuration + 8))
    {
LABEL_13:
      __break(1u);
      return;
    }

    if (*v1 + *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioDuration) >= 978307200.0)
    {
      goto LABEL_3;
    }
  }
}

void sub_100002738(uint64_t a1)
{
  v1 = sub_100006D9C();
  v34 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100006DCC();
  v32 = *(v4 - 8);
  v33 = v4;
  __chkstk_darwin(v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_100006DEC();
  v31 = *(v35 - 8);
  v7 = __chkstk_darwin(v35);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v28 - v10;
  v12 = sub_100006DAC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v17 = Strong;
  v30 = v1;
  v18 = OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_inputs;
  v19 = *&Strong[OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_inputs];
  if (!v19)
  {
    __break(1u);
    goto LABEL_11;
  }

  v20 = *(v19 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioLoops);
  if (v20 == 2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v20)
  {
    sub_100004BA4();
    (*(v13 + 104))(v15, enum case for DispatchQoS.QoSClass.userInteractive(_:), v12);
    v21 = sub_100006F0C();
    (*(v13 + 8))(v15, v12);
    sub_100006DDC();
    v22 = *&v17[v18];
    if (v22)
    {
      v28 = v21;
      v29 = v3;
      if ((*(v22 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioLoopDelay + 8) & 1) == 0)
      {
        sub_100006DFC();
        v31 = *(v31 + 8);
        (v31)(v9, v35);
        v23 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = sub_100005E14;
        aBlock[5] = v23;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100005F00;
        aBlock[3] = &unk_10000C5F8;
        v24 = _Block_copy(aBlock);

        sub_100006DBC();
        v36 = &_swiftEmptyArrayStorage;
        sub_100005E1C(&qword_100011110, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_100004C84(&qword_100011118, &qword_100007718);
        sub_100005E64(&qword_100011120, &qword_100011118, &qword_100007718);
        v25 = v29;
        v26 = v30;
        sub_100006F1C();
        v27 = v28;
        sub_100006ECC();
        _Block_release(v24);

        (*(v34 + 8))(v25, v26);
        (*(v32 + 8))(v6, v33);
        (v31)(v11, v35);

        return;
      }

      goto LABEL_13;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }
}

void sub_100002C60(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1000025A8();
  }
}

uint64_t sub_100002CB4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_100002D88()
{
  v1 = *(v0 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_hearingModeClient);
  [v1 setDispatchQueue:*(v0 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_hearingModeDispatchQueue)];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = sub_100004D14;
  v13 = v2;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_100005F00;
  v11 = &unk_10000C558;
  v3 = _Block_copy(&v8);

  [v1 setInterruptionHandler:v3];
  _Block_release(v3);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = sub_100004D1C;
  v13 = v4;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_100003DD0;
  v11 = &unk_10000C580;
  v5 = _Block_copy(&v8);

  [v1 setDeviceDiagnosticRecordFoundHandler:v5];
  _Block_release(v5);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = sub_100004D24;
  v13 = v6;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_100003FB0;
  v11 = &unk_10000C5A8;
  v7 = _Block_copy(&v8);

  [v1 activateWithCompletion:v7];
  _Block_release(v7);
}

void sub_100002FCC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_100006E9C();
    if (qword_100011040 != -1)
    {
      swift_once();
    }

    sub_100006D8C();
    sub_10000401C(3u);
  }
}

void sub_100003090(void *a1, uint64_t a2)
{
  v3 = sub_100006D7C();
  v107 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v6 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v99 - v7;
  v9 = sub_100004C84(&qword_100011130, &qword_100007728);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v99 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v99 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v99 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v99 - v23;
  __chkstk_darwin(v22);
  v108 = &v99 - v25;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v100 = v8;
    v101 = v6;
    v109 = a1;
    v27 = Strong;
    v28 = [a1 bluetoothUUID];
    v29 = sub_100006E3C();
    v31 = v30;

    v106 = v27;
    if (v29 == *&v27[OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_targetUUID] && v31 == *&v27[OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_targetUUID + 8])
    {
    }

    else
    {
      v32 = sub_100006FAC();

      if ((v32 & 1) == 0)
      {

        return;
      }
    }

    v33 = sub_100006E9C();
    if (qword_100011040 != -1)
    {
      swift_once();
    }

    v34 = qword_1000116F0;
    v35 = os_log_type_enabled(qword_1000116F0, v33);
    v105 = v18;
    if (v35)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      v38 = v109;
      *(v36 + 4) = v109;
      *v37 = v38;
      v39 = v38;
      _os_log_impl(&_mh_execute_header, v34, v33, "Recieved diagnostic record from HearingModeService client %@", v36, 0xCu);
      sub_1000053D8(v37, &qword_100011128, &qword_100007720);
      v18 = v105;
    }

    v40 = [objc_opt_self() sharedFormatter];
    if (!v40)
    {
      __break(1u);
      return;
    }

    v41 = v40;
    v104 = [v40 formatterWithType:0];

    v42 = [v109 lastMeasurementTimestampLeft];
    if (v42)
    {
      v43 = v42;
      sub_100006D6C();

      v44 = 0;
    }

    else
    {
      v44 = 1;
    }

    v45 = v107;
    v103 = *(v107 + 56);
    v103(v24, v44, 1, v3);
    v46 = v24;
    v47 = v108;
    sub_1000052D4(v46, v108);
    sub_100005344(v47, v21);
    v102 = *(v45 + 48);
    v48 = &OnDemandAudioDiagnosticMonitorController__metaData;
    if (v102(v21, 1, v3) == 1)
    {
      sub_1000053D8(v21, &qword_100011130, &qword_100007728);
    }

    else
    {
      v49 = v100;
      (*(v45 + 32))(v100, v21, v3);
      v50 = [v106 result];
      *&v113 = 0xD00000000000001CLL;
      *(&v113 + 1) = 0x8000000100007F30;
      sub_100006F5C();
      v51 = v104;
      if (v104)
      {
        v52 = v104;
        isa = sub_100006D5C().super.isa;
        v54 = [v52 stringFromDate:isa];

        v55 = sub_100006E3C();
        v57 = v56;

        v18 = v105;
        v51 = &type metadata for String;
      }

      else
      {
        v55 = 0;
        v57 = 0;
        v114 = 0;
      }

      *&v113 = v55;
      *(&v113 + 1) = v57;
      v115 = v51;
      v58 = [v50 data];
      v59 = sub_100006E1C();

      v111 = v59;
      if (v115)
      {
        sub_100005530(&v113, v112);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v110 = v59;
        sub_10000599C(v112, v116, isUniquelyReferenced_nonNull_native);
        sub_1000054DC(v116);
        v111 = v110;
      }

      else
      {
        sub_1000053D8(&v113, &qword_100011138, &qword_100007730);
        sub_100005438(v112, v116);
        v18 = v105;
        sub_1000053D8(v112, &qword_100011138, &qword_100007730);
        sub_1000054DC(v116);
      }

      v61 = sub_100006E0C().super.isa;

      [v50 setData:v61];

      v45 = v107;
      v62 = v49;
      v48 = &OnDemandAudioDiagnosticMonitorController__metaData;
      (*(v107 + 8))(v62, v3);
    }

    v63 = [v109 lastMeasurementTimestampRight];
    if (v63)
    {
      v64 = v63;
      sub_100006D6C();

      v65 = 0;
    }

    else
    {
      v65 = 1;
    }

    v103(v15, v65, 1, v3);
    sub_1000052D4(v15, v18);
    sub_100005344(v18, v12);
    if (v102(v12, 1, v3) == 1)
    {
      sub_1000053D8(v12, &qword_100011130, &qword_100007728);
      v66 = v109;
    }

    else
    {
      v67 = v101;
      (*(v45 + 32))(v101, v12, v3);
      v68 = [v106 result];
      *&v113 = 0xD00000000000001DLL;
      *(&v113 + 1) = 0x8000000100007F10;
      sub_100006F5C();
      v69 = v104;
      v66 = v109;
      if (v104)
      {
        v70 = v104;
        v71 = sub_100006D5C().super.isa;
        v72 = v48;
        v73 = [v70 stringFromDate:v71];

        v74 = sub_100006E3C();
        v76 = v75;

        v48 = v72;
        v69 = &type metadata for String;
      }

      else
      {
        v74 = 0;
        v76 = 0;
        v114 = 0;
      }

      *&v113 = v74;
      *(&v113 + 1) = v76;
      v115 = v69;
      v77 = [v68 data];
      v78 = sub_100006E1C();

      v111 = v78;
      if (v115)
      {
        sub_100005530(&v113, v112);
        v79 = swift_isUniquelyReferenced_nonNull_native();
        v110 = v78;
        sub_10000599C(v112, v116, v79);
        sub_1000054DC(v116);
        v111 = v110;
      }

      else
      {
        sub_1000053D8(&v113, &qword_100011138, &qword_100007730);
        sub_100005438(v112, v116);
        sub_1000053D8(v112, &qword_100011138, &qword_100007730);
        sub_1000054DC(v116);
      }

      v80 = sub_100006E0C().super.isa;

      [v68 v48[34].base_props];

      (*(v107 + 8))(v67, v3);
    }

    v81 = [v66 latestMeasurementResultLeft];
    v82 = [v66 latestMeasurementResultRight];
    sub_1000053B4(v81);
    v83 = sub_100006E5C();
    v85 = v84;
    LODWORD(v109) = v82;
    sub_1000053B4(v82);
    v107 = sub_100006E5C();
    v103 = v86;
    v87 = v106;
    v88 = [v87 result];
    *&v113 = 0xD00000000000001FLL;
    *(&v113 + 1) = 0x8000000100007EC0;
    sub_100006F5C();
    v115 = &type metadata for String;
    *&v113 = v83;
    *(&v113 + 1) = v85;
    v89 = [v88 data];
    v90 = sub_100006E1C();

    sub_100005530(&v113, v112);
    v91 = swift_isUniquelyReferenced_nonNull_native();
    v111 = v90;
    sub_10000599C(v112, v116, v91);
    sub_1000054DC(v116);
    v92 = sub_100006E0C().super.isa;

    [v88 setData:v92];

    v93 = [v87 result];
    *&v113 = 0xD000000000000020;
    *(&v113 + 1) = 0x8000000100007EE0;
    sub_100006F5C();
    v115 = &type metadata for String;
    *&v113 = v107;
    *(&v113 + 1) = v103;
    v94 = [v93 data];
    v95 = sub_100006E1C();

    sub_100005530(&v113, v112);
    v96 = swift_isUniquelyReferenced_nonNull_native();
    v111 = v95;
    sub_10000599C(v112, v116, v96);
    sub_1000054DC(v116);
    v97 = sub_100006E0C().super.isa;

    [v93 setData:v97];

    if (v81 - 1 >= 2)
    {
      v98 = 6;
      if (!v81 || v81 == 8 || (v109 & 0xFFFFFFF7) == 0)
      {
        goto LABEL_43;
      }
    }

    else if (v109 < 9)
    {
      v98 = byte_10000778C[v109];
LABEL_43:
      sub_10000401C(v98);

      sub_1000053D8(v105, &qword_100011130, &qword_100007728);
      sub_1000053D8(v108, &qword_100011130, &qword_100007728);
      return;
    }

    v98 = 5;
    goto LABEL_43;
  }
}

void sub_100003DD0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_100003E38(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a1)
    {
      swift_errorRetain();
      v5 = sub_100006E9C();
      if (qword_100011040 != -1)
      {
        swift_once();
      }

      v6 = qword_1000116F0;
      if (os_log_type_enabled(qword_1000116F0, v5))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        *v7 = 138412290;
        swift_errorRetain();
        v9 = _swift_stdlib_bridgeErrorToNSError();
        *(v7 + 4) = v9;
        *v8 = v9;
        _os_log_impl(&_mh_execute_header, v6, v5, "Failed to activate HearingModeService client with error %@", v7, 0xCu);
        sub_1000053D8(v8, &qword_100011128, &qword_100007720);
      }

      sub_10000401C(4u);
    }

    else
    {
    }
  }
}

void sub_100003FB0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id sub_10000401C(unsigned __int8 a1)
{
  v3 = sub_100006D9C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100006DCC();
  v45 = *(v7 - 8);
  __chkstk_darwin(v7);
  v44 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100006DEC();
  v42 = *(v9 - 8);
  v43 = v9;
  v10 = __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v41 = &v35 - v13;
  v14 = sub_100006DAC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v1;
  result = *(v1 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_responder);
  if (!result)
  {
    __break(1u);
    goto LABEL_26;
  }

  result = [result clearAllowSessionAccessoryDisconnect];
  v39 = v6;
  v40 = v3;
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        v19 = -1;
      }

      else
      {
        v19 = 0;
      }
    }

    else if (a1 == 4)
    {
      v19 = -3;
    }

    else
    {
      v19 = -2;
    }

LABEL_17:
    v21 = *(v46 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_inputs);
    if (v21)
    {
      v22 = v21 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_delayExitWorkaroundDuration;
      if ((*(v22 + 8) & 1) == 0)
      {
        v20 = *v22;
        goto LABEL_20;
      }

LABEL_27:
      __break(1u);
      return result;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v19 = -5;
    }

    else
    {
      v19 = -4;
    }

    goto LABEL_17;
  }

  if (!a1)
  {
    v19 = -901;
    goto LABEL_17;
  }

  v20 = 0.0;
  v19 = -900;
LABEL_20:
  v38 = v4;
  v23 = sub_100006EAC();
  if (qword_100011040 != -1)
  {
    swift_once();
  }

  v37 = v7;
  v24 = qword_1000116F0;
  if (os_log_type_enabled(qword_1000116F0, v23))
  {
    v25 = swift_slowAlloc();
    *v25 = 134218240;
    *(v25 + 4) = v19;
    *(v25 + 12) = 2048;
    *(v25 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v24, v23, "Test finished with status code %ld. Will end test after %f seconds", v25, 0x16u);
  }

  sub_100004BA4();
  (*(v15 + 104))(v17, enum case for DispatchQoS.QoSClass.default(_:), v14);
  v36 = sub_100006F0C();
  (*(v15 + 8))(v17, v14);
  sub_100006DDC();
  v26 = v41;
  sub_100006DFC();
  v27 = v43;
  v42 = *(v42 + 8);
  (v42)(v12, v43);
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  *(v29 + 24) = a1;
  aBlock[4] = sub_100004C60;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005F00;
  aBlock[3] = &unk_10000C530;
  v30 = _Block_copy(aBlock);

  v31 = v44;
  sub_100006DBC();
  v47 = &_swiftEmptyArrayStorage;
  sub_100005E1C(&qword_100011110, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100004C84(&qword_100011118, &qword_100007718);
  sub_100005E64(&qword_100011120, &qword_100011118, &qword_100007718);
  v32 = v39;
  v33 = v40;
  sub_100006F1C();
  v34 = v36;
  sub_100006ECC();
  _Block_release(v30);

  (*(v38 + 8))(v32, v33);
  (*(v45 + 8))(v31, v37);
  (v42)(v26, v27);
}

void sub_100004678(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (([v3 isFinished] & 1) == 0)
    {
      sub_100006EAC();
      if (qword_100011040 != -1)
      {
        swift_once();
      }

      sub_100006D8C();
      v4 = [v3 result];
      isa = sub_100006E8C().super.super.isa;
      [v4 setStatusCode:isa];

      [v3 setFinished:1];
    }
  }
}

id sub_1000047BC()
{
  v14 = sub_100006EDC();
  v1 = *(v14 - 8);
  __chkstk_darwin(v14);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100006EBC();
  __chkstk_darwin(v4);
  v5 = sub_100006DCC();
  __chkstk_darwin(v5 - 8);
  *&v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_inputs] = 0;
  *&v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_responder] = 0;
  v6 = OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_hearingModeClient;
  *&v0[v6] = [objc_allocWithZone(HMServiceClient) init];
  v13 = OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_hearingModeDispatchQueue;
  v7 = sub_100004BA4();
  v12[1] = "d (HearingModeService crash?)";
  v12[2] = v7;
  sub_100006DBC();
  v16 = &_swiftEmptyArrayStorage;
  sub_100005E1C(&qword_100011148, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100004C84(&qword_100011150, &qword_100007740);
  sub_100005E64(&qword_100011158, &qword_100011150, &qword_100007740);
  sub_100006F1C();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v14);
  *&v0[v13] = sub_100006EFC();
  v8 = &v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_audioAlertPlaybackStartTime];
  *v8 = 0;
  v8[8] = 1;
  v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_openLidAlertDismissed] = 0;
  v9 = &v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_targetUUID];
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = type metadata accessor for OnDemandAudioDiagnosticMonitorController();
  v15.receiver = v0;
  v15.super_class = v10;
  return objc_msgSendSuper2(&v15, "init");
}

id sub_100004ACC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OnDemandAudioDiagnosticMonitorController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100004BA4()
{
  result = qword_100011108;
  if (!qword_100011108)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100011108);
  }

  return result;
}

uint64_t sub_100004BF0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100004C28()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100004C6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004C84(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100004CCC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100004D2C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100004DF8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100005DB0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005D64(v11);
  return v7;
}

unint64_t sub_100004DF8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100004F04(a5, a6);
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
    result = sub_100006F7C();
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

char *sub_100004F04(uint64_t a1, unint64_t a2)
{
  v3 = sub_100004F50(a1, a2);
  sub_100005080(&off_10000C4B8);
  return v3;
}

char *sub_100004F50(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000516C(v5, 0);
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

  result = sub_100006F7C();
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
        v10 = sub_100006E6C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000516C(v10, 0);
        result = sub_100006F6C();
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

uint64_t sub_100005080(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000051E0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10000516C(uint64_t a1, uint64_t a2)
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

  sub_100004C84(&qword_100011168, qword_100007750);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000051E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004C84(&qword_100011168, qword_100007750);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_1000052D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004C84(&qword_100011130, &qword_100007728);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100005344(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004C84(&qword_100011130, &qword_100007728);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

const char *sub_1000053B4(unsigned int a1)
{
  if (a1 > 8)
  {
    return "?";
  }

  else
  {
    return off_10000C6C0[a1];
  }
}

uint64_t sub_1000053D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004C84(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double sub_100005438@<D0>(_OWORD *a1@<X8>, uint64_t a2@<X0>)
{
  v3 = v2;
  v5 = sub_100006B20(a2);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100005B64();
      v9 = v11;
    }

    sub_1000054DC(*(v9 + 48) + 40 * v7);
    sub_100005530((*(v9 + 56) + 32 * v7), a1);
    sub_1000057F8(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

_OWORD *sub_100005530(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100005540(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100004C84(&qword_100011140, &qword_100007738);
  result = sub_100006F9C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_100005530((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_100005D08(v23, &v36);
        sub_100005DB0(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_100006F3C(*(v7 + 40));
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
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
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_100005530(v35, (*(v7 + 56) + 32 * v15));
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
      v33 = 1 << *(v5 + 32);
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

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1000057F8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100006F2C() + 1) & ~v5;
    do
    {
      sub_100005D08(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_100006F3C(*(a2 + 40));
      result = sub_1000054DC(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_10000599C(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100006B20(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_100005B64();
      goto LABEL_7;
    }

    sub_100005540(v13, a3 & 1);
    v19 = sub_100006B20(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_100005D08(a2, v21);
      return sub_100005AE8(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_100006FBC();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_100005D64(v17);

  return sub_100005530(a1, v17);
}

_OWORD *sub_100005AE8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_100005530(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void *sub_100005B64()
{
  v1 = v0;
  sub_100004C84(&qword_100011140, &qword_100007738);
  v2 = *v0;
  v3 = sub_100006F8C();
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
        v18 = 40 * v17;
        sub_100005D08(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_100005DB0(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_100005530(v22, (*(v4 + 56) + v17));
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

uint64_t sub_100005D64(void *a1)
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

uint64_t sub_100005DB0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100005E1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100005E64(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100004CCC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100005F28(uint64_t result)
{
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = v1;
  v3 = result;
  if (*(result + 16) && (v4 = sub_100006B64(*(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_diagnosticTestWaitDurationKey), *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_diagnosticTestWaitDurationKey + 8)), (v5 & 1) != 0) && (sub_100005DB0(*(v3 + 56) + 32 * v4, v58), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v56;
    if (!v56)
    {
      return 0;
    }
  }

  else
  {
    v6 = 30;
  }

  v7 = v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_diagnosticTestWaitDuration;
  *v7 = v6;
  *(v7 + 8) = 0;
  v8 = *(v3 + 16);
  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = sub_100006B64(*(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertHeaderKey), *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertHeaderKey + 8));
  if ((v10 & 1) == 0)
  {
    v8 = 0;
LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

  sub_100005DB0(*(v3 + 56) + 32 * v9, v58);
  v11 = swift_dynamicCast();
  v8 = v56;
  v12 = v57;
  if (!v11)
  {
    v8 = 0;
    v12 = 0;
  }

LABEL_14:
  v13 = (v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertHeader);
  *v13 = v8;
  v13[1] = v12;

  if (!v13[1])
  {
    return 0;
  }

  v14 = *(v3 + 16);
  if (!v14)
  {
    goto LABEL_20;
  }

  v15 = sub_100006B64(*(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertMessageKey), *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertMessageKey + 8));
  if ((v16 & 1) == 0)
  {
    v14 = 0;
LABEL_20:
    v18 = 0;
    goto LABEL_21;
  }

  sub_100005DB0(*(v3 + 56) + 32 * v15, v58);
  v17 = swift_dynamicCast();
  v14 = v56;
  v18 = v57;
  if (!v17)
  {
    v14 = 0;
    v18 = 0;
  }

LABEL_21:
  v19 = (v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertMessage);
  *v19 = v14;
  v19[1] = v18;

  if (!v19[1])
  {
    return 0;
  }

  v20 = *(v3 + 16);
  if (!v20)
  {
LABEL_27:
    v24 = 0;
    goto LABEL_28;
  }

  v21 = sub_100006B64(*(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertButtonKey), *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertButtonKey + 8));
  if ((v22 & 1) == 0)
  {
    v20 = 0;
    goto LABEL_27;
  }

  sub_100005DB0(*(v3 + 56) + 32 * v21, v58);
  v23 = swift_dynamicCast();
  v20 = v56;
  v24 = v57;
  if (!v23)
  {
    v20 = 0;
    v24 = 0;
  }

LABEL_28:
  v25 = (v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertButton);
  *v25 = v20;
  v25[1] = v24;

  if (!v25[1])
  {
    return 0;
  }

  if (*(v3 + 16) && (v26 = sub_100006B64(*(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioEnabledKey), *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioEnabledKey + 8)), (v27 & 1) != 0) && (sub_100005DB0(*(v3 + 56) + 32 * v26, v58), (swift_dynamicCast() & 1) != 0))
  {
    if (*(v3 + 16) && (v28 = sub_100006B64(*(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioDurationKey), *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioDurationKey + 8)), (v29 & 1) != 0) && (sub_100005DB0(*(v3 + 56) + 32 * v28, v58), (swift_dynamicCast() & 1) != 0))
    {
      v30 = v56;
      if (!v56)
      {
        return 0;
      }
    }

    else
    {
      v30 = 10;
    }

    v37 = v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioDuration;
    *v37 = v30;
    *(v37 + 8) = 0;
    if (*(v3 + 16) && (v38 = sub_100006B64(*(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioLoopsKey), *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioLoopsKey + 8)), (v39 & 1) != 0) && (sub_100005DB0(*(v3 + 56) + 32 * v38, v58), (swift_dynamicCast() & 1) != 0))
    {
      v40 = v56;
    }

    else
    {
      v40 = 0;
    }

    *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioLoops) = v40;
    if (*(v3 + 16) && (v41 = sub_100006B64(*(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioLoopDelayKey), *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioLoopDelayKey + 8)), (v42 & 1) != 0) && (sub_100005DB0(*(v3 + 56) + 32 * v41, v58), (swift_dynamicCast() & 1) != 0))
    {
      v43 = v56;
    }

    else
    {
      v43 = 10;
    }

    v44 = v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioLoopDelay;
    *v44 = v43;
    *(v44 + 8) = 0;
    if (!*(v3 + 16))
    {
      return 0;
    }

    v45 = sub_100006B64(*(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertSoundIDKey), *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertSoundIDKey + 8));
    if ((v46 & 1) == 0)
    {
      return 0;
    }

    sub_100005DB0(*(v3 + 56) + 32 * v45, v58);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return 0;
    }

    v47 = v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertSoundID;
    *v47 = v56;
    *(v47 + 4) = 0;
    *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioEnabled) = v56;
    if (!*(v3 + 16))
    {
      goto LABEL_57;
    }
  }

  else
  {
    *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioEnabled) = 0;
    v31 = v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioDuration;
    *v31 = 10;
    *(v31 + 8) = 0;
    *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioLoops) = 0;
    v32 = v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioLoopDelay;
    *v32 = 10;
    *(v32 + 8) = 0;
    v33 = v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertSoundID;
    *v33 = 0;
    *(v33 + 4) = 0;
    if (!*(v3 + 16))
    {
      goto LABEL_57;
    }
  }

  v34 = sub_100006B64(*(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_resultTimeoutKey), *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_resultTimeoutKey + 8));
  if (v35)
  {
    sub_100005DB0(*(v3 + 56) + 32 * v34, v58);
    if (swift_dynamicCast())
    {
      v36 = v56;
      if (!v56)
      {
        return 0;
      }

      goto LABEL_58;
    }
  }

LABEL_57:
  v36 = 60;
LABEL_58:
  v48 = v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_resultTimeout;
  *v48 = v36;
  *(v48 + 8) = 0;
  if (*(v3 + 16) && (v49 = *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_delayExitWorkaroundDurationKey), v50 = *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_delayExitWorkaroundDurationKey + 8), , v51 = sub_100006B64(v49, v50), v53 = v52, , (v53 & 1) != 0) && (sub_100005DB0(*(v3 + 56) + 32 * v51, v58), (swift_dynamicCast() & 1) != 0))
  {
    v54 = v56;
    if (*(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_delayExitWorkaroundDurationMax) < v56 || v56 < *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_delayExitWorkaroundDurationMin))
    {
      return 0;
    }
  }

  else
  {
    v54 = *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_delayExitWorkaroundDurationDefault);
  }

  v55 = v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_delayExitWorkaroundDuration;
  *v55 = v54;
  *(v55 + 8) = 0;
  return 1;
}

id sub_1000065F4(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_diagnosticTestWaitDurationKey];
  *v2 = 0xD00000000000001ALL;
  *(v2 + 1) = 0x8000000100008450;
  *&v1[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_diagnosticTestWaitDurationMin] = 1;
  *&v1[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_diagnosticTestWaitDurationMax] = -1;
  *&v1[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_diagnosticTestWaitDurationDefault] = 30;
  v3 = &v1[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertHeaderKey];
  *v3 = 0xD000000000000012;
  *(v3 + 1) = 0x8000000100008470;
  v4 = &v1[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertMessageKey];
  *v4 = 0xD000000000000013;
  *(v4 + 1) = 0x8000000100008490;
  v5 = &v1[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertButtonKey];
  *v5 = 0xD000000000000012;
  *(v5 + 1) = 0x80000001000084B0;
  v6 = &v1[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_resultTimeoutKey];
  strcpy(&v1[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_resultTimeoutKey], "resultTimeout");
  *(v6 + 7) = -4864;
  *&v1[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_resultTimeoutMin] = 1;
  *&v1[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_resultTimeoutMax] = -1;
  *&v1[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_resultTimeoutDefault] = 60;
  v7 = &v1[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioEnabledKey];
  *v7 = 0xD000000000000018;
  *(v7 + 1) = 0x80000001000084E0;
  v1[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioEnabledDefault] = 0;
  v8 = &v1[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioLoopsKey];
  *v8 = 0xD000000000000016;
  *(v8 + 1) = 0x80000001000085A0;
  v1[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioLoopsDefault] = 0;
  v9 = &v1[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioDurationKey];
  *v9 = 0xD000000000000019;
  *(v9 + 1) = 0x8000000100008500;
  *&v1[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioDurationMin] = 1;
  *&v1[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioDurationMax] = -1;
  *&v1[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioDurationDefault] = 10;
  v10 = &v1[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioLoopDelayKey];
  *v10 = 0xD00000000000001ALL;
  *(v10 + 1) = 0x8000000100008540;
  *&v1[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioLoopDelayMin] = 0;
  *&v1[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioLoopDelayMax] = -1;
  *&v1[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioLoopDelayDefault] = 10;
  v11 = &v1[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertSoundIDKey];
  *v11 = 0xD000000000000013;
  *(v11 + 1) = 0x8000000100008560;
  v12 = &v1[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_delayExitWorkaroundDurationKey];
  *v12 = 0xD00000000000001BLL;
  *(v12 + 1) = 0x8000000100008580;
  *&v1[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_delayExitWorkaroundDurationMin] = 0;
  *&v1[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_delayExitWorkaroundDurationMax] = 60;
  *&v1[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_delayExitWorkaroundDurationDefault] = 0;
  v13 = &v1[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_diagnosticTestWaitDuration];
  *v13 = 0;
  v13[8] = 1;
  v14 = &v1[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertHeader];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v1[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertMessage];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v1[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertButton];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &v1[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_resultTimeout];
  *v17 = 0;
  v17[8] = 1;
  v1[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioEnabled] = 2;
  v18 = &v1[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioDuration];
  *v18 = 0;
  v18[8] = 1;
  v1[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioLoops] = 2;
  v19 = &v1[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioLoopDelay];
  *v19 = 0;
  v19[8] = 1;
  v20 = &v1[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertSoundID];
  *v20 = 0;
  v20[4] = 1;
  v21 = &v1[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_delayExitWorkaroundDuration];
  *v21 = 0;
  v21[8] = 1;
  v23.receiver = v1;
  v23.super_class = type metadata accessor for OnDemandAudioDiagnosticMonitorInputs();
  return objc_msgSendSuper2(&v23, "init");
}

id sub_100006984(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for OnDemandAudioDiagnosticMonitorInputs();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100006B20(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100006F3C(*(v2 + 40));

  return sub_100006BDC(a1, v4);
}

unint64_t sub_100006B64(uint64_t a1, uint64_t a2)
{
  sub_100006FDC();
  sub_100006E4C();
  v4 = sub_100006FEC();

  return sub_100006CA4(a1, a2, v4);
}

unint64_t sub_100006BDC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100005D08(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100006F4C();
      sub_1000054DC(v8);
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

unint64_t sub_100006CA4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100006FAC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}