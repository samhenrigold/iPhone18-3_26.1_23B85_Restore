void *sub_1000020D8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void type metadata accessor for AVAudioDeviceTestSequenceOutputMode()
{
  if (!qword_100035760)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100035760);
    }
  }
}

void sub_100002144()
{
  v0 = sub_10002188C();
  v1 = [objc_opt_self() UUIDWithString:v0];

  qword_10003D030 = v1;
}

void sub_1000021B4()
{
  v0 = sub_10002188C();
  v1 = [objc_opt_self() UUIDWithString:v0];

  qword_10003D038 = v1;
}

void sub_100002224()
{
  v0 = sub_10002188C();
  v1 = [objc_opt_self() UUIDWithString:v0];

  qword_10003D040 = v1;
}

id sub_100002294(void (*a1)(char *, uint64_t), void (*a2)(char *, uint64_t), uint64_t a3, uint64_t a4)
{
  v64 = a1;
  v65 = a3;
  v7 = sub_1000217AC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000217CC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000217EC();
  v16 = __chkstk_darwin(v15);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v22 = &v4[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_audioBoxSerial];
  if (*&v4[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_audioBoxSerial + 8])
  {
    v23 = sub_1000219CC();
    if (qword_1000356F8 != -1)
    {
      v53 = v23;
      swift_once();
      v23 = v53;
    }

    sub_10002178C(v23, &_mh_execute_header, qword_10003D048, "connectToAudioBox(withSerial:completion:) can only be called once", 65, 2, _swiftEmptyArrayStorage);
    v24 = *sub_10000BEFC(&v4[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate], *&v4[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate + 24]);
    v25 = [v24 result];
    if (*&v24[OBJC_IVAR___AudioBoxController_exclavesStatus])
    {

      v26.super.isa = sub_10002185C().super.isa;
    }

    else
    {
      v26.super.isa = 0;
    }

    v50 = objc_opt_self();
    isa = sub_10002199C().super.super.isa;
    v52 = [v50 testResultOverrideForExclavesStatus:v26.super.isa originalResult:isa];

    [v25 setStatusCode:v52];

    return [v24 setFinished:1];
  }

  else
  {
    v56 = &v54 - v20;
    v57 = v21;
    v58 = v14;
    v59 = v12;
    v60 = v10;
    v61 = v8;
    v62 = v7;
    v63 = v19;
    v27 = v65;
    *v22 = v64;
    v22[1] = a2;
    v28 = &v4[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_audioBoxConnectionCompletion];
    v30 = *&v4[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_audioBoxConnectionCompletion];
    v29 = *&v4[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_audioBoxConnectionCompletion + 8];
    *v28 = v27;
    v28[1] = a4;

    result = sub_10000C004(v30, v29);
    v32 = *&v4[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_centralManager];
    if (v32)
    {
      v33 = v4;
      sub_100009BDC(&qword_100035DA8, &qword_1000259D0);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1000257F0;
      v35 = qword_1000356E0;
      v36 = v32;
      v65 = v11;
      v37 = v58;
      if (v35 != -1)
      {
        swift_once();
      }

      v38 = qword_10003D030;
      *(v34 + 32) = qword_10003D030;
      sub_10000C380(0, &qword_100035D70, CBUUID_ptr);
      v39 = v38;
      v40 = sub_10002196C().super.isa;

      [v36 scanForPeripheralsWithServices:v40 options:0];

      sub_10000C380(0, &qword_100035E28, OS_dispatch_queue_ptr);
      v55 = sub_100021A0C();
      sub_1000217DC();
      v41 = v56;
      sub_1000217FC();
      v64 = *(v57 + 8);
      v42 = v18;
      v43 = v63;
      v64(v42, v63);
      v44 = swift_allocObject();
      *(v44 + 16) = v33;
      aBlock[4] = sub_10000C4B0;
      aBlock[5] = v44;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100002B54;
      aBlock[3] = &unk_100030D08;
      v45 = _Block_copy(aBlock);
      v46 = v33;

      sub_1000217BC();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10000C420(&qword_100035E30, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100009BDC(&qword_100035E38, &qword_100025A08);
      sub_10000C468(&qword_100035E40, &qword_100035E38, &qword_100025A08, &protocol conformance descriptor for [A]);
      v47 = v60;
      v48 = v62;
      sub_100021A6C();
      v49 = v55;
      sub_1000219FC();
      _Block_release(v45);

      (*(v61 + 8))(v47, v48);
      (*(v59 + 8))(v37, v65);
      return (v64)(v41, v43);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

char *sub_10000296C(char *result)
{
  if (!*&result[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_audioBox])
  {
    v1 = result;
    v2 = sub_1000219BC();
    if (qword_1000356F8 != -1)
    {
      v9 = v2;
      swift_once();
      v2 = v9;
    }

    sub_10002178C(v2, &_mh_execute_header, qword_10003D048, "Timed out scanning for peripherals", 34, 2, _swiftEmptyArrayStorage);
    result = *&v1[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_centralManager];
    if (result)
    {
      [result stopScan];
      v3 = *sub_10000BEFC(&v1[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate], *&v1[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate + 24]);
      v4 = [v3 result];
      if (*&v3[OBJC_IVAR___AudioBoxController_exclavesStatus])
      {

        v5.super.isa = sub_10002185C().super.isa;
      }

      else
      {
        v5.super.isa = 0;
      }

      v6 = objc_opt_self();
      isa = sub_10002199C().super.super.isa;
      v8 = [v6 testResultOverrideForExclavesStatus:v5.super.isa originalResult:isa];

      [v4 setStatusCode:v8];

      return [v3 setFinished:1];
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100002B54(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100002B98(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), void (*a4)(char *, uint64_t))
{
  v5 = v4;
  v32 = a3;
  v35 = sub_1000217AC();
  v38 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000217CC();
  v36 = *(v10 - 8);
  v37 = v10;
  __chkstk_darwin(v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000217EC();
  v33 = v13;
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v31 - v18;
  v20 = &v5[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_expectedAudioBoxToken];
  *v20 = a1;
  *(v20 + 1) = a2;

  v21 = &v5[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_audioBoxAuthenticationCompletion];
  v22 = *&v5[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_audioBoxAuthenticationCompletion];
  v23 = *&v5[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_audioBoxAuthenticationCompletion + 8];
  *v21 = v32;
  v21[1] = a4;

  sub_10000C004(v22, v23);
  sub_10000C380(0, &qword_100035E28, OS_dispatch_queue_ptr);
  v24 = sub_100021A0C();
  sub_1000217DC();
  sub_1000217FC();
  v32 = *(v14 + 8);
  v32(v17, v13);
  v25 = swift_allocObject();
  *(v25 + 16) = v5;
  aBlock[4] = sub_10000C400;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002B54;
  aBlock[3] = &unk_100030CB8;
  v26 = _Block_copy(aBlock);
  v27 = v5;

  sub_1000217BC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000C420(&qword_100035E30, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100009BDC(&qword_100035E38, &qword_100025A08);
  sub_10000C468(&qword_100035E40, &qword_100035E38, &qword_100025A08, &protocol conformance descriptor for [A]);
  v28 = v34;
  v29 = v35;
  sub_100021A6C();
  sub_1000219FC();
  _Block_release(v26);

  (*(v38 + 8))(v28, v29);
  (*(v36 + 8))(v12, v37);
  return (v32)(v19, v33);
}

_BYTE *sub_100002FDC(_BYTE *result)
{
  if ((result[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_isAudioBoxAuthenticated] & 1) == 0)
  {
    v18 = v2;
    v19 = v1;
    v9 = result;
    v10 = sub_1000219BC();
    if (qword_1000356F8 != -1)
    {
      v17 = v10;
      swift_once();
      v10 = v17;
    }

    sub_10002178C(v10, &_mh_execute_header, qword_10003D048, "Timed out authenticating AudioBox", 33, 2, _swiftEmptyArrayStorage, v6, v5, v4, v3, v18, v19, v7);
    v11 = *sub_10000BEFC(&v9[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate], *&v9[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate + 24]);
    v12 = [v11 result];
    if (*&v11[OBJC_IVAR___AudioBoxController_exclavesStatus])
    {

      v13.super.isa = sub_10002185C().super.isa;
    }

    else
    {
      v13.super.isa = 0;
    }

    v14 = objc_opt_self();
    isa = sub_10002199C().super.super.isa;
    v16 = [v14 testResultOverrideForExclavesStatus:v13.super.isa originalResult:isa];

    [v12 setStatusCode:v16];

    return [v11 setFinished:1];
  }

  return result;
}

id sub_100003194(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = (v3 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_expectedAudioBoxToken);
  v7 = *(v3 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_expectedAudioBoxToken + 8);
  if (v7 && (*v6 == a1 ? (v8 = v7 == a2) : (v8 = 0), v8 || (sub_100021C3C() & 1) != 0))
  {
    v9 = sub_1000219DC();
    if (qword_1000356F8 != -1)
    {
      swift_once();
    }

    v10 = qword_10003D048;
    sub_100009BDC(&qword_100035D30, &qword_100025988);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100025800;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_100009C28();
    *(v11 + 32) = a1;
    *(v11 + 40) = a2;

    sub_10002178C(v9, &_mh_execute_header, v10, "Successfully authenticated AudioBox with token: %@", 50, 2, v11);

    *(v3 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_isAudioBoxAuthenticated) = 1;
    v12 = (v3 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_audioBoxAuthenticationCompletion);
    v13 = *(v3 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_audioBoxAuthenticationCompletion);
    if (v13)
    {
      v14 = v12[1];

      v13(v15);
      sub_10000C004(v13, v14);
      v16 = *v12;
    }

    else
    {
      v16 = 0;
    }

    v29 = v12[1];
    *v12 = 0;
    v12[1] = 0;

    return sub_10000C004(v16, v29);
  }

  else
  {
    v17 = sub_1000219BC();
    sub_100009BDC(&qword_100035D30, &qword_100025988);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_100025810;
    *(v18 + 56) = &type metadata for String;
    result = sub_100009C28();
    *(v18 + 64) = result;
    *(v18 + 32) = a1;
    *(v18 + 40) = a2;
    v20 = v6[1];
    if (v20)
    {
      v21 = *v6;
      *(v18 + 96) = &type metadata for String;
      *(v18 + 104) = result;
      *(v18 + 72) = v21;
      *(v18 + 80) = v20;
      sub_10000C380(0, &qword_100035E20, OS_os_log_ptr);

      v22 = sub_100021A2C();
      sub_10002178C(v17, &_mh_execute_header, v22, "Failed to authenticate AudioBox with token: %@ (expected token: %@)", 67, 2, v18);

      v23 = *sub_10000BEFC((v3 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate), *(v3 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate + 24));
      v24 = [v23 result];
      if (*&v23[OBJC_IVAR___AudioBoxController_exclavesStatus])
      {

        v25.super.isa = sub_10002185C().super.isa;
      }

      else
      {
        v25.super.isa = 0;
      }

      v26 = objc_opt_self();
      isa = sub_10002199C().super.super.isa;
      v28 = [v26 testResultOverrideForExclavesStatus:v25.super.isa originalResult:isa];

      [v24 setStatusCode:v28];

      return [v23 setFinished:1];
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100003528(uint64_t a1)
{
  v2 = v1;
  sub_10002162C();
  swift_allocObject();
  sub_10002161C();
  sub_10000C318();
  v3 = sub_10002160C();
  v5 = v4;

  v6 = *(v2 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_audioBox);
  if (v6 && (v7 = *(v2 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_messagingCharacteristic)) != 0)
  {
    v8 = v6;
    v9 = v7;
    sub_10000A3FC(v3, v5, v8, v9);
  }

  else
  {
    v10 = sub_1000219BC();
    if (qword_1000356F8 != -1)
    {
      v18 = v10;
      swift_once();
      v10 = v18;
    }

    sub_10002178C(v10, &_mh_execute_header, qword_10003D048, "Error: audioBox or messagingCharacteristic is nil", 49, 2, _swiftEmptyArrayStorage);
    v11 = *sub_10000BEFC((v2 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate), *(v2 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate + 24));
    v12 = [v11 result];
    if (*&v11[OBJC_IVAR___AudioBoxController_exclavesStatus])
    {

      v13.super.isa = sub_10002185C().super.isa;
    }

    else
    {
      v13.super.isa = 0;
    }

    v14 = objc_opt_self();
    isa = sub_10002199C().super.super.isa;
    v16 = [v14 testResultOverrideForExclavesStatus:v13.super.isa originalResult:isa];

    [v12 setStatusCode:v16];
    [v11 setFinished:1];
  }

  return sub_100009688(v3, v5);
}

uint64_t sub_100003988()
{
  v1 = v0;
  v30 = xmmword_100025820;
  v2 = OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_messagePacketsReceived;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v3 + 16);
  if (v4)
  {

    v5 = (v3 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      sub_100009634(v6, *v5);
      sub_10002175C();
      sub_100009688(v6, v7);
      v5 += 2;
      --v4;
    }

    while (v4);

    v9 = *(&v30 + 1);
    v8 = v30;
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  *(v0 + v2) = _swiftEmptyArrayStorage;

  sub_1000215FC();
  swift_allocObject();
  sub_1000215EC();
  sub_10000C214();
  sub_1000215DC();

  v31 = v26;
  v32 = v27;
  v33 = v28;
  v34 = v29;
  v10 = sub_1000219DC();
  if (qword_1000356F8 != -1)
  {
    swift_once();
  }

  v11 = qword_10003D048;
  sub_100009BDC(&qword_100035D30, &qword_100025988);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100025800;
  v26 = v31;
  v27 = v32;
  v28 = v33;
  v29 = v34;
  sub_10000C268(&v31, &v25);
  v13 = sub_1000218FC();
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_100009C28();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  sub_10002178C(v10, &_mh_execute_header, v11, "Received message: %@", 20, 2, v12);

  if (!v34)
  {
    if (*(v1 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_isAudioBoxAuthenticated))
    {
      v20 = sub_1000219BC();
      sub_10002178C(v20, &_mh_execute_header, v11, "AudioBox is already authenticated", 33, 2, _swiftEmptyArrayStorage);
      goto LABEL_17;
    }

LABEL_14:
    sub_10000BEFC((v1 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate), *(v1 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate + 24));
    sub_10001C720(&v31);
    goto LABEL_17;
  }

  if (*(v1 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_isAudioBoxAuthenticated))
  {
    goto LABEL_14;
  }

  v16 = sub_1000219BC();
  sub_10002178C(v16, &_mh_execute_header, v11, "Received bad message while AudioBox is unauthenticated", 54, 2, _swiftEmptyArrayStorage);
  v17 = *sub_10000BEFC((v1 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate), *(v1 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate + 24));
  v18 = [v17 result];
  if (*&v17[OBJC_IVAR___AudioBoxController_exclavesStatus])
  {

    v19.super.isa = sub_10002185C().super.isa;
  }

  else
  {
    v19.super.isa = 0;
  }

  v21 = objc_opt_self();
  isa = sub_10002199C().super.super.isa;
  v23 = [v21 testResultOverrideForExclavesStatus:v19.super.isa originalResult:isa];

  [v18 setStatusCode:v23];
  [v17 setFinished:1];
LABEL_17:
  sub_10000C2C4(&v31);
  return sub_100009688(v8, v9);
}

void sub_100003F78(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v43 = a5;
  v44 = a6;
  v10 = sub_10002184C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_10002183C();
  v14 = *(v47 - 8);
  __chkstk_darwin(v47);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1000219DC();
  if (qword_1000356F8 != -1)
  {
    swift_once();
  }

  v45 = qword_10003D048;
  sub_100009BDC(&qword_100035D30, &qword_100025988);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100025810;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = sub_100009C28();
  v48 = a1;
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;
  v50 = a2;
  v51 = a4;
  v18 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v18)
    {
      v19 = BYTE6(v51);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v18 != 2)
  {
    v19 = 0;
    goto LABEL_13;
  }

  v21 = *(a3 + 16);
  v20 = *(a3 + 24);
  v22 = __OFSUB__(v20, v21);
  v19 = v20 - v21;
  if (v22)
  {
    __break(1u);
LABEL_10:
    LODWORD(v19) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      __break(1u);
      goto LABEL_39;
    }

    v19 = v19;
  }

LABEL_13:
  *(v17 + 96) = &type metadata for Int;
  *(v17 + 104) = &protocol witness table for Int;
  *(v17 + 72) = v19;

  sub_10002178C(v46, &_mh_execute_header, v45, "Sending file %@ of size %d bytes", 32, 2, v17);

  sub_10000C420(&unk_100035DE0, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  sub_10002182C();
  v23 = v51;
  sub_100009634(a3, v51);
  sub_100009EA8(a3, v23, v13);
  sub_100009688(a3, v23);
  sub_10002181C();
  (*(v11 + 8))(v13, v10);
  v24 = sub_1000054C0(v16);
  (*(v14 + 8))(v16, v47);
  v52[0] = v24;
  sub_100009BDC(&unk_100035F40, &qword_1000259F8);
  sub_10000C468(&qword_100035DF0, &unk_100035F40, &qword_1000259F8, &protocol conformance descriptor for [A]);
  v25 = sub_10002187C();
  v27 = v26;

  if (v18 <= 1)
  {
    v29 = v48;
    v28 = v49;
    if (!v18)
    {
      v31 = v50;
      v30 = BYTE6(v51);
      v32 = BYTE6(v51);
      goto LABEL_23;
    }

LABEL_20:
    v30 = BYTE6(v51);
    if (!__OFSUB__(HIDWORD(a3), a3))
    {
      v32 = HIDWORD(a3) - a3;
      v31 = v50;
      goto LABEL_22;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v32 = 0;
  v28 = v49;
  v31 = v50;
  v29 = v48;
  v30 = BYTE6(v51);
  if (v18 != 2)
  {
    goto LABEL_23;
  }

  v34 = *(a3 + 16);
  v33 = *(a3 + 24);
  v32 = v33 - v34;
  if (__OFSUB__(v33, v34))
  {
    __break(1u);
    goto LABEL_20;
  }

LABEL_22:
  if (v32 < 0)
  {
    __break(1u);
    goto LABEL_37;
  }

LABEL_23:
  sub_100009BDC(&qword_100035D28, ">C");
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_100025800;
  *(v35 + 32) = v29;
  *(v35 + 40) = v31;
  *(v35 + 48) = v32;
  *(v35 + 56) = v25;
  *(v35 + 64) = v27;
  v52[0] = v35;
  memset(&v52[1], 0, 24);
  v53 = 2;

  sub_100003528(v52);

  swift_beginAccess();
  sub_10002175C();
  swift_endAccess();
  if (v18 <= 1)
  {
    if (!v18)
    {
      v32 = v30;
      goto LABEL_32;
    }

LABEL_30:
    if (!__OFSUB__(HIDWORD(a3), a3))
    {
      v32 = HIDWORD(a3) - a3;
      goto LABEL_32;
    }

LABEL_40:
    __break(1u);
    return;
  }

  v32 = 0;
  if (v18 == 2)
  {
    v37 = *(a3 + 16);
    v36 = *(a3 + 24);
    v32 = v36 - v37;
    if (__OFSUB__(v36, v37))
    {
      __break(1u);
      goto LABEL_30;
    }
  }

LABEL_32:
  v24 = OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_filesToSend;
  swift_beginAccess();
  v25 = *(v24 + v28);

  v18 = v44;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v24 + v28) = v25;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_37:
    v25 = sub_100009D88(0, *(v25 + 16) + 1, 1, v25);
    *(v24 + v28) = v25;
  }

  v40 = *(v25 + 16);
  v39 = *(v25 + 24);
  if (v40 >= v39 >> 1)
  {
    v25 = sub_100009D88((v39 > 1), v40 + 1, 1, v25);
  }

  *(v25 + 16) = v40 + 1;
  v41 = (v25 + 48 * v40);
  v41[4] = v29;
  v41[5] = v31;
  v42 = v43;
  v41[6] = v32;
  v41[7] = v42;
  v41[8] = v18;
  v41[9] = 0;
  *(v24 + v28) = v25;
  swift_endAccess();
  sub_100004548();
}

void sub_100004548()
{
  v2 = *&v0[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_l2capChannel];
  if (v2)
  {
    v3 = [v2 outputStream];
    if (v3)
    {
      v74 = v3;
      if (![v3 hasSpaceAvailable])
      {
        v8 = v74;

        goto LABEL_10;
      }

      v4 = &v0[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_fileDataToSend];
      swift_beginAccess();
      v5 = *v4;
      v6 = v4[1];
      v7 = v6 >> 62;
      if ((v6 >> 62) > 1)
      {
        v8 = v74;
        if (v7 != 2 || *(v5 + 16) == *(v5 + 24))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v8 = v74;
        if (v7)
        {
          if (v5 == v5 >> 32)
          {
            goto LABEL_10;
          }
        }

        else if ((v6 & 0xFF000000000000) == 0)
        {
LABEL_10:

          return;
        }
      }

      v9 = v8;
      v10 = v0;
      sub_100009634(v5, v6);
      v11 = sub_1000097AC(v5, v6, v9, v10);
      sub_100009688(v5, v6);
      v12 = [v9 streamError];
      v13 = _TtC15Diagnostic_838924AudioBoxBluetoothManager;
      cache = _TtC15Diagnostic_838924AudioBoxBluetoothManager;
      v72 = v10;
      if (!v12)
      {
        v69 = v4;
        v70 = v9;
        v1 = OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_filesToSend;
        swift_beginAccess();
        v71 = xmmword_100025830;
        v68 = v11;
        v15 = v11;
        while (1)
        {
          v18 = *&v10[v1];
          if (!*(v18 + 2) || v15 < 1)
          {
            goto LABEL_46;
          }

          v26 = *(v18 + 9);
          v27 = *(v18 + 6);
          v13 = (v27 - v26);
          if (__OFSUB__(v27, v26))
          {
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
            goto LABEL_67;
          }

          v9 = *(v18 + 5);
          v0 = *(v18 + 8);
          if (v15 < v13)
          {
            swift_beginAccess();

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v10[v1] = v18;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              goto LABEL_69;
            }

            if (!*(v18 + 2))
            {
              goto LABEL_70;
            }

            goto LABEL_42;
          }

          v28 = *(v18 + 7);
          swift_beginAccess();

          v29 = swift_isUniquelyReferenced_nonNull_native();
          *&v10[v1] = v18;
          if (v29)
          {
            if (!*(v18 + 2))
            {
              goto LABEL_62;
            }
          }

          else
          {
            v18 = sub_10000A088(v18);
            if (!*(v18 + 2))
            {
              goto LABEL_62;
            }
          }

          v30 = *(v18 + 9);
          v31 = __OFADD__(v30, v13);
          v32 = v13 + v30;
          if (v31)
          {
            goto LABEL_63;
          }

          v75 = v28;
          *(v18 + 9) = v32;
          *&v10[v1] = v18;
          swift_endAccess();
          v33 = sub_1000219DC();
          if (qword_1000356F8 != -1)
          {
            swift_once();
          }

          v34 = qword_10003D048;
          sub_100009BDC(&qword_100035D30, &qword_100025988);
          v35 = swift_allocObject();
          *(v35 + 16) = xmmword_100025830;
          v36 = *&v10[v1];
          if (!v36[2])
          {
            goto LABEL_64;
          }

          v37 = v35;
          v73 = v15;
          v15 = v9;
          v9 = v36[4];
          v38 = v36[5];
          *(v35 + 56) = &type metadata for String;
          *(v35 + 64) = sub_100009C28();
          v37[4] = v9;
          v37[5] = v38;
          v39 = v36[9];
          v37[12] = &type metadata for Int;
          v37[13] = &protocol witness table for Int;
          v37[9] = v39;
          v40 = v36[6];
          v37[17] = &type metadata for Int;
          v37[18] = &protocol witness table for Int;
          v37[14] = v40;
          v10 = v72;

          sub_10002178C(v33, &_mh_execute_header, v34, "Sending %@: %d of %d bytes", 26, 2, v37);

          v75(0);
          swift_beginAccess();
          v24 = *&v72[v1];
          v41 = *(v24 + 2);
          if (!v41)
          {
            goto LABEL_65;
          }

          v42 = swift_isUniquelyReferenced_nonNull_native();
          *&v72[v1] = v24;
          if (!v42 || (v41 - 1) > *(v24 + 3) >> 1)
          {
            v24 = sub_100009D88(v42, v41, 1, v24);
            *&v72[v1] = v24;
          }

          cache = _TtC15Diagnostic_838924AudioBoxBluetoothManager;
          sub_10000A3CC((v24 + 32));
          v25 = *(v24 + 2);
          memmove(v24 + 32, v24 + 80, 48 * v25 - 48);
          *(v24 + 2) = v25 - 1;
          *&v72[v1] = v24;
          swift_endAccess();

          v15 = v73 - v13;
          if (__OFSUB__(v73, v13))
          {
            goto LABEL_66;
          }
        }
      }

      v0 = v12;
      v15 = sub_1000219BC();
      if (qword_1000356F8 != -1)
      {
LABEL_67:
        swift_once();
      }

      v16 = qword_10003D048;
      sub_100009BDC(&qword_100035D30, &qword_100025988);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_100025800;
      v18 = v0;
      sub_100009BDC(&qword_100035D48, &qword_100025998);
      v19 = sub_1000218FC();
      v21 = v20;
      *(v17 + 56) = &type metadata for String;
      *(v17 + 64) = sub_100009C28();
      *(v17 + 32) = v19;
      *(v17 + 40) = v21;
      sub_10002178C(v15, &_mh_execute_header, v16, "Error writing to stream: %@", 27, 2, v17);

      cache = v13[74].cache;
      v10 = v72;
      swift_beginAccess();
      v22 = *(&cache->isa + v72);
      if (*(v22 + 16))
      {
        v23 = *(v22 + 56);
        v15 = v18;

        v23(v0);
      }

      swift_beginAccess();
      if ((*(&cache->isa + v72))->cache)
      {
        sub_10000A960(0, 1);
        swift_endAccess();

LABEL_57:
        return;
      }

      __break(1u);
LABEL_69:
      v18 = sub_10000A088(v18);
      if (*(v18 + 2))
      {
LABEL_42:
        v44 = *(v18 + 9);
        v31 = __OFADD__(v44, v15);
        v45 = v44 + v15;
        if (!v31)
        {
          *(v18 + 9) = v45;
          *&v10[v1] = v18;
          swift_endAccess();
          v18 = sub_1000219DC();
          if (cache[44].vtable == -1)
          {
LABEL_44:
            v46 = qword_10003D048;
            sub_100009BDC(&qword_100035D30, &qword_100025988);
            v47 = swift_allocObject();
            *(v47 + 16) = v71;
            v48 = *&v10[v1];
            if (!v48[2])
            {
              __break(1u);
              goto LABEL_74;
            }

            v50 = v48[4];
            v49 = v48[5];
            *(v47 + 56) = &type metadata for String;
            v51 = v47;
            *(v47 + 64) = sub_100009C28();
            v51[4] = v50;
            v51[5] = v49;
            v52 = v48[9];
            v51[12] = &type metadata for Int;
            v51[13] = &protocol witness table for Int;
            v51[9] = v52;
            v53 = v48[6];
            v51[17] = &type metadata for Int;
            v51[18] = &protocol witness table for Int;
            v51[14] = v53;

            sub_10002178C(v18, &_mh_execute_header, v46, "Sending %@: %d of %d bytes", 26, 2, v51);

LABEL_46:
            v54 = *v69;
            v55 = v69[1];
            v56 = v55 >> 62;
            if ((v55 >> 62) > 1)
            {
              v9 = v70;
              v57 = v68;
              if (v56 != 2)
              {
                if (v68 < 0)
                {
                  goto LABEL_56;
                }

                goto LABEL_60;
              }

              v60 = *(v54 + 16);
              v59 = *(v54 + 24);
              v31 = __OFSUB__(v59, v60);
              v58 = v59 - v60;
              if (!v31)
              {
LABEL_55:
                if (v57 < v58)
                {
LABEL_56:
                  sub_100009634(v54, v55);
                  v61 = sub_10002177C();
                  v63 = v62;
                  sub_100009688(v54, v55);
                  v64 = *v69;
                  v65 = v69[1];
                  *v69 = v61;
                  v69[1] = v63;
                  sub_100009688(v64, v65);
                  sub_100004548();
                  goto LABEL_57;
                }

LABEL_60:

                v66 = *v69;
                v67 = v69[1];
                *v69 = xmmword_100025820;
                sub_100009688(v66, v67);
                return;
              }

              __break(1u);
            }

            else
            {
              v9 = v70;
              v57 = v68;
              if (!v56)
              {
                v58 = BYTE6(v55);
                goto LABEL_55;
              }
            }

            LODWORD(v58) = HIDWORD(v54) - v54;
            if (!__OFSUB__(HIDWORD(v54), v54))
            {
              v58 = v58;
              goto LABEL_55;
            }

LABEL_74:
            __break(1u);
            return;
          }

LABEL_72:
          swift_once();
          goto LABEL_44;
        }
      }

      else
      {
LABEL_70:
        __break(1u);
      }

      __break(1u);
      goto LABEL_72;
    }
  }
}

uint64_t sub_100004D6C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_expectedFiles;
  v3 = (v0 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_fileDataReceived);
  swift_beginAccess();
  result = swift_beginAccess();
  for (i = *(v0 + v2); *(i + 16); i = *(v1 + v2))
  {
    v8 = *(i + 40);
    v9 = *(i + 64);
    v23[0] = *(i + 32);
    v23[1] = v8;
    v10 = *(i + 48);
    v24 = v10;
    v25 = v9;
    v11 = *v3;
    v12 = v3[1];
    v13 = v12 >> 62;
    if ((v12 >> 62) <= 1)
    {
      if (v13)
      {
        LODWORD(v14) = HIDWORD(v11) - v11;
        if (__OFSUB__(HIDWORD(v11), v11))
        {
          goto LABEL_23;
        }

        v14 = v14;
        if ((v14 & 0x8000000000000000) != 0)
        {
          return result;
        }
      }

      else
      {
        v14 = BYTE6(v12);
      }

      goto LABEL_14;
    }

    if (v13 == 2)
    {
      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      v17 = __OFSUB__(v15, v16);
      v14 = v15 - v16;
      if (v17)
      {
        goto LABEL_24;
      }

      if ((v14 & 0x8000000000000000) != 0)
      {
        return result;
      }

LABEL_14:
      if (v14 < v10)
      {
        return result;
      }

      goto LABEL_17;
    }

    if (v10)
    {
      return result;
    }

LABEL_17:

    sub_100009634(v11, v12);
    v18 = sub_10002176C();
    v20 = v19;
    sub_100009688(v11, v12);
    swift_beginAccess();
    sub_10002170C();
    swift_endAccess();
    sub_100004FD8(v18, v20, v23);

    result = swift_beginAccess();
    v6 = *(v1 + v2);
    v21 = *(v6 + 2);
    if (!v21)
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return result;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v2) = v6;
    if (!isUniquelyReferenced_nonNull_native || (v21 - 1) > *(v6 + 3) >> 1)
    {
      v6 = sub_100009A68(isUniquelyReferenced_nonNull_native, v21, 1, v6);
      *(v1 + v2) = v6;
    }

    sub_100009B88((v6 + 32));
    v7 = *(v6 + 2);
    memmove(v6 + 32, v6 + 72, 40 * v7 - 40);
    *(v6 + 2) = v7 - 1;
    *(v1 + v2) = v6;
    swift_endAccess();
    result = sub_100009688(v18, v20);
  }

  return result;
}

id sub_100004FD8(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v38 = a3;
  v5 = sub_10002184C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10002183C();
  v9 = *(v37 - 8);
  __chkstk_darwin(v37);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C420(&unk_100035DE0, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  sub_10002182C();
  sub_100009634(a1, a2);
  sub_100009EA8(a1, a2, v8);
  v35 = a1;
  v36 = a2;
  sub_100009688(a1, a2);
  sub_10002181C();
  (*(v6 + 8))(v8, v5);
  v12 = v38;
  v13 = sub_1000054C0(v11);
  (*(v9 + 8))(v11, v37);
  v40[0] = v13;
  sub_100009BDC(&unk_100035F40, &qword_1000259F8);
  sub_10000C468(&qword_100035DF0, &unk_100035F40, &qword_1000259F8, &protocol conformance descriptor for [A]);
  v14 = sub_10002187C();
  v16 = v15;

  v17 = v12[3];
  v18 = v12[4];
  if (__PAIR128__(v16, v14) == __PAIR128__(v18, v17) || (sub_100021C3C() & 1) != 0)
  {

    sub_10000BEFC((v39 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate), *(v39 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate + 24));
    return sub_10001D3A4(*v12, v12[1], v35, v36, 0);
  }

  else
  {

    LODWORD(v37) = sub_1000219BC();
    if (qword_1000356F8 != -1)
    {
      swift_once();
    }

    v20 = qword_10003D048;
    sub_100009BDC(&qword_100035D30, &qword_100025988);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100025810;
    *(v21 + 56) = &type metadata for String;
    v22 = sub_100009C28();
    *(v21 + 32) = v17;
    *(v21 + 40) = v18;
    *(v21 + 96) = &type metadata for String;
    *(v21 + 104) = v22;
    *(v21 + 64) = v22;
    *(v21 + 72) = v14;
    *(v21 + 80) = v16;
    sub_10002178C(v37, &_mh_execute_header, v20, "File checksum does not match (expected %@, calculated %@)", 57, 2, v21);

    v23 = sub_10000BEFC((v39 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate), *(v39 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate + 24));
    v24 = *v12;
    v25 = v12[1];
    sub_10000C1C0();
    v26 = swift_allocError();
    v27 = *v23;
    swift_errorRetain();
    v28 = sub_1000219BC();
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_100025800;
    v40[0] = v26;
    swift_errorRetain();
    sub_100009BDC(&qword_100035D48, &qword_100025998);
    v30 = sub_1000218FC();
    *(v29 + 56) = &type metadata for String;
    *(v29 + 64) = v22;
    *(v29 + 32) = v30;
    *(v29 + 40) = v31;
    sub_10002178C(v28, &_mh_execute_header, v20, "Error receiving file: %@", 24, 2, v29);

    v40[0] = v24;
    v40[1] = v25;
    v41 = xmmword_100025840;
    v42 = 1;
    v32 = *(v27 + OBJC_IVAR___AudioBoxController_bluetoothManager);
    if (v32)
    {
      v33 = v32;
      sub_100003528(v40);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void *sub_1000054C0(uint64_t a1)
{
  v2 = sub_10002183C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C420(&qword_100035E00, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
  v6 = sub_10002193C();
  v34 = _swiftEmptyArrayStorage;
  sub_10000A17C(0, v6 & ~(v6 >> 63), 0);
  v7 = v34;
  (*(v3 + 16))(v5, a1, v2);
  result = sub_10002192C();
  if ((v6 & 0x8000000000000000) == 0)
  {
    v9 = v33;
    if (v6)
    {
      v10 = v32;
      *&v31 = *(v32 + 16);
      v30 = xmmword_100025800;
      v11 = v33;
      while (v31 != v11)
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_21;
        }

        if (v11 >= *(v10 + 16))
        {
          goto LABEL_22;
        }

        v12 = *(v10 + 32 + v11);
        sub_100009BDC(&qword_100035D30, &qword_100025988);
        v13 = swift_allocObject();
        *(v13 + 16) = v30;
        *(v13 + 56) = &type metadata for UInt8;
        *(v13 + 64) = &protocol witness table for UInt8;
        *(v13 + 32) = v12;
        result = sub_1000218CC();
        v34 = v7;
        v16 = v7[2];
        v15 = v7[3];
        if (v16 >= v15 >> 1)
        {
          v29 = result;
          v18 = v14;
          sub_10000A17C((v15 > 1), v16 + 1, 1);
          v14 = v18;
          result = v29;
          v7 = v34;
        }

        v7[2] = v16 + 1;
        v17 = &v7[2 * v16];
        v17[4] = result;
        v17[5] = v14;
        ++v11;
        if (!--v6)
        {
          v33 = v11;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
      v11 = v33;
LABEL_12:
      v19 = v32;
      v20 = *(v32 + 16);
      if (v11 == v20)
      {
LABEL_13:

        return v7;
      }

      v31 = xmmword_100025800;
      while (v11 < v20)
      {
        v21 = *(v19 + 32 + v11);
        v33 = v11 + 1;
        sub_100009BDC(&qword_100035D30, &qword_100025988);
        v22 = swift_allocObject();
        *(v22 + 16) = v31;
        *(v22 + 56) = &type metadata for UInt8;
        *(v22 + 64) = &protocol witness table for UInt8;
        *(v22 + 32) = v21;
        result = sub_1000218CC();
        v34 = v7;
        v25 = v7[2];
        v24 = v7[3];
        if (v25 >= v24 >> 1)
        {
          v27 = result;
          v28 = v23;
          sub_10000A17C((v24 > 1), v25 + 1, 1);
          v23 = v28;
          result = v27;
          v7 = v34;
        }

        v7[2] = v25 + 1;
        v26 = &v7[2 * v25];
        v26[4] = result;
        v26[5] = v23;
        v20 = *(v19 + 16);
        v11 = v33;
        if (v33 == v20)
        {
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100005890()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioBoxBluetoothManager(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AudioBoxBluetoothManager(uint64_t a1)
{
  result = qword_100035BF8;
  if (!qword_100035BF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100005AD4(uint64_t a1)
{
  result = sub_10002179C();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

id sub_100005BBC(void *a1)
{
  v2 = [a1 state];
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        sub_10000C380(0, &qword_100035DD8, CBCentralManager_ptr);
        v12 = [swift_getObjCClassFromMetadata() authorization];
        v13 = sub_1000219BC();
        if (qword_1000356F8 != -1)
        {
          swift_once();
        }

        v14 = qword_10003D048;
        sub_100009BDC(&qword_100035D30, &qword_100025988);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_100025800;
        *(v15 + 56) = &type metadata for Int;
        *(v15 + 64) = &protocol witness table for Int;
        *(v15 + 32) = v12;
        sub_10002178C(v13, &_mh_execute_header, v14, "Bluetooth is unauthorized (CBManagerAuthorization %d)", v31);

        v10 = *sub_10000BEFC((v1 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate), *(v1 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate + 24));
        v11 = [v10 result];
        if (!*&v10[OBJC_IVAR___AudioBoxController_exclavesStatus])
        {
          v21.super.isa = 0;
          goto LABEL_40;
        }

LABEL_31:

        v21.super.isa = sub_10002185C().super.isa;

LABEL_40:
        v23 = objc_opt_self();
        isa = sub_10002199C().super.super.isa;
        v25 = [v23 testResultOverrideForExclavesStatus:v21.super.isa originalResult:isa];

        [v11 setStatusCode:v25];

        return [v10 setFinished:1];
      case 4:
        v16 = sub_1000219BC();
        if (qword_1000356F8 != -1)
        {
          v26 = v16;
          swift_once();
          v16 = v26;
        }

        sub_10002178C(v16, &_mh_execute_header, qword_10003D048, "Bluetooth is powered off", 24, 2, _swiftEmptyArrayStorage);
        v10 = *sub_10000BEFC((v1 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate), *(v1 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate + 24));
        v11 = [v10 result];
        if (!*&v10[OBJC_IVAR___AudioBoxController_exclavesStatus])
        {
          v21.super.isa = 0;
          goto LABEL_40;
        }

        goto LABEL_31;
      case 5:
        v3 = sub_1000219DC();
        if (qword_1000356F8 != -1)
        {
          v28 = v3;
          swift_once();
          v3 = v28;
        }

        sub_10002178C(v3, &_mh_execute_header, qword_10003D048, "Bluetooth powered on", 20, 2, _swiftEmptyArrayStorage);
        *(v1 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_isBluetoothReady) = 1;
        v4 = (v1 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_bluetoothReadyCallback);
        v5 = *(v1 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_bluetoothReadyCallback);
        if (v5)
        {
          v6 = v4[1];

          v5(v7);
          sub_10000C004(v5, v6);
          v8 = *v4;
        }

        else
        {
          v8 = 0;
        }

        v22 = v4[1];
        *v4 = 0;
        v4[1] = 0;

        return sub_10000C004(v8, v22);
    }

LABEL_28:
    v20 = sub_1000219BC();
    if (qword_1000356F8 != -1)
    {
      v30 = v20;
      swift_once();
      v20 = v30;
    }

    sub_10002178C(v20, &_mh_execute_header, qword_10003D048, "Bluetooth state unknown", 23, 2, _swiftEmptyArrayStorage);
    v10 = *sub_10000BEFC((v1 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate), *(v1 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate + 24));
    v11 = [v10 result];
    if (!*&v10[OBJC_IVAR___AudioBoxController_exclavesStatus])
    {
      v21.super.isa = 0;
      goto LABEL_40;
    }

    goto LABEL_31;
  }

  if (v2 != 1)
  {
    if (v2 == 2)
    {
      v9 = sub_1000219BC();
      if (qword_1000356F8 != -1)
      {
        v29 = v9;
        swift_once();
        v9 = v29;
      }

      sub_10002178C(v9, &_mh_execute_header, qword_10003D048, "Bluetooth is unsupported", 24, 2, _swiftEmptyArrayStorage);
      v10 = *sub_10000BEFC((v1 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate), *(v1 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate + 24));
      v11 = [v10 result];
      if (!*&v10[OBJC_IVAR___AudioBoxController_exclavesStatus])
      {
        v21.super.isa = 0;
        goto LABEL_40;
      }

      goto LABEL_31;
    }

    goto LABEL_28;
  }

  v17 = sub_1000219DC();
  if (qword_1000356F8 != -1)
  {
    v27 = v17;
    swift_once();
    v17 = v27;
  }

  v18 = qword_10003D048;

  return sub_10002178C(v17, &_mh_execute_header, v18, "Bluetooth connection is resetting", 33, 2, _swiftEmptyArrayStorage);
}

void sub_1000065A0(unint64_t a1, void *a2)
{
  v5 = sub_1000219AC();
  if (qword_1000356F8 != -1)
  {
LABEL_30:
    swift_once();
  }

  v6 = qword_10003D048;
  sub_100009BDC(&qword_100035D30, &qword_100025988);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100025800;
  *(v7 + 56) = &type metadata for String;
  v8 = sub_100009C28();
  *(v7 + 64) = v8;
  *(v7 + 32) = 0xD000000000000022;
  *(v7 + 40) = 0x8000000100023430;
  sub_10002178C(v5, &_mh_execute_header, v6, "%@", 2, 2, v7);

  if (a2)
  {
    swift_errorRetain();
    v9 = sub_1000219BC();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100025800;
    swift_errorRetain();
    sub_100009BDC(&qword_100035D48, &qword_100025998);
    v11 = sub_1000218FC();
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = v8;
    *(v10 + 32) = v11;
    *(v10 + 40) = v12;
    sub_10002178C(v9, &_mh_execute_header, v6, "Error discovering services %@", 29, 2, v10);

    v13 = *sub_10000BEFC((v2 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate), *(v2 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate + 24));
    v14 = [v13 result];
    if (*&v13[OBJC_IVAR___AudioBoxController_exclavesStatus])
    {

      v15.super.isa = sub_10002185C().super.isa;
    }

    else
    {
      v15.super.isa = 0;
    }

    v23 = objc_opt_self();
    isa = sub_10002199C().super.super.isa;
    v25 = [v23 testResultOverrideForExclavesStatus:v15.super.isa originalResult:isa];

    [v14 setStatusCode:v25];
    [v13 setFinished:1];

    return;
  }

  v16 = [a1 services];
  if (!v16)
  {
    goto LABEL_33;
  }

  v17 = v16;
  sub_10000C380(0, &qword_100035D60, CBService_ptr);
  v18 = sub_10002197C();

  v45 = v6;
  v46 = v2;
  v47 = a1;
  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

  v19 = sub_100021AEC();
  if (!v19)
  {
LABEL_32:

    v6 = v45;
    v2 = v46;
    a1 = v47;
LABEL_33:
    v32 = v8;
    v33 = sub_1000219BC();
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_100025800;
    v35 = [a1 services];
    if (v35)
    {
      v36 = v35;
      sub_10000C380(0, &qword_100035D60, CBService_ptr);
      sub_10002197C();
    }

    sub_100009BDC(&qword_100035DA0, &qword_1000259C8);
    v37 = sub_1000218FC();
    *(v34 + 56) = &type metadata for String;
    *(v34 + 64) = v32;
    *(v34 + 32) = v37;
    *(v34 + 40) = v38;
    sub_10002178C(v33, &_mh_execute_header, v6, "Error: AudioBox service not found (discovered: %@)", 50, 2, v34);

    v39 = *sub_10000BEFC((v2 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate), *(v2 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate + 24));
    v40 = [v39 result];
    if (*&v39[OBJC_IVAR___AudioBoxController_exclavesStatus])
    {

      v41.super.isa = sub_10002185C().super.isa;
    }

    else
    {
      v41.super.isa = 0;
    }

    v42 = objc_opt_self();
    v43 = sub_10002199C().super.super.isa;
    v44 = [v42 testResultOverrideForExclavesStatus:v41.super.isa originalResult:v43];

    [v40 setStatusCode:v44];
    [v39 setFinished:1];
    return;
  }

LABEL_8:
  a1 = 0;
  v5 = v18 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v20 = sub_100021ABC();
    }

    else
    {
      if (a1 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v20 = *(v18 + 8 * a1 + 32);
    }

    a2 = v20;
    v21 = (a1 + 1);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    sub_10000C380(0, &qword_100035D68, NSObject_ptr);
    v22 = [a2 UUID];
    if (qword_1000356E0 != -1)
    {
      swift_once();
    }

    v2 = sub_100021A1C();

    if (v2)
    {
      break;
    }

    ++a1;
    if (v21 == v19)
    {
      goto LABEL_32;
    }
  }

  sub_100009BDC(&qword_100035DA8, &qword_1000259D0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100025850;
  if (qword_1000356E8 != -1)
  {
    swift_once();
  }

  v27 = qword_10003D038;
  *(v26 + 32) = qword_10003D038;
  v28 = qword_1000356F0;
  v29 = v27;
  if (v28 != -1)
  {
    swift_once();
  }

  v30 = qword_10003D040;
  *(v26 + 40) = qword_10003D040;
  sub_10000C380(0, &qword_100035D70, CBUUID_ptr);
  v31 = v30;
  v48.super.isa = sub_10002196C().super.isa;

  [v47 discoverCharacteristics:v48.super.isa forService:a2];
}

void sub_100006D70(void *a1, id a2, void *a3)
{
  v5 = sub_1000219AC();
  if (qword_1000356F8 != -1)
  {
    goto LABEL_61;
  }

  while (1)
  {
    v6 = qword_10003D048;
    sub_100009BDC(&qword_100035D30, &qword_100025988);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100025810;
    *(v7 + 56) = &type metadata for String;
    v8 = sub_100009C28();
    *(v7 + 64) = v8;
    *(v7 + 32) = 0xD000000000000032;
    *(v7 + 40) = 0x8000000100023340;
    v9 = a2;
    v10 = [v9 description];
    a2 = sub_10002189C();
    v12 = v11;

    *(v7 + 96) = &type metadata for String;
    *(v7 + 104) = v8;
    v86 = v8;
    *(v7 + 72) = a2;
    *(v7 + 80) = v12;
    sub_10002178C(v5, &_mh_execute_header, v6, "%@ service: %@", 14, 2, v7);

    sub_10000C380(0, &qword_100035D68, NSObject_ptr);
    v13 = [v9 UUID];
    if (qword_1000356E0 != -1)
    {
      swift_once();
    }

    v14 = sub_100021A1C();

    if ((v14 & 1) == 0)
    {
      break;
    }

    if (a3)
    {
      swift_errorRetain();
      v15 = sub_1000219BC();
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_100025800;
      swift_errorRetain();
      sub_100009BDC(&qword_100035D48, &qword_100025998);
      v17 = sub_1000218FC();
      *(v16 + 56) = &type metadata for String;
      *(v16 + 64) = v8;
      *(v16 + 32) = v17;
      *(v16 + 40) = v18;
      sub_10002178C(v15, &_mh_execute_header, v6, "Error discovering characteristics: %@", 37, 2, v16);

      v19 = *sub_10000BEFC((v84 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate), *(v84 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate + 24));
      v20 = [v19 result];
      if (*&v19[OBJC_IVAR___AudioBoxController_exclavesStatus])
      {

        v21.super.isa = sub_10002185C().super.isa;
      }

      else
      {
        v21.super.isa = 0;
      }

      v32 = objc_opt_self();
      isa = sub_10002199C().super.super.isa;
      v34 = [v32 testResultOverrideForExclavesStatus:v21.super.isa originalResult:isa];

      [v20 setStatusCode:v34];
      [v19 setFinished:1];

      return;
    }

    v22 = [v9 characteristics];
    v23 = v84;
    if (!v22)
    {
LABEL_35:
      v40 = sub_1000219BC();
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_100025800;
      v42 = [v9 characteristics];
      if (v42)
      {
        v43 = v42;
        sub_10000C380(0, &qword_100035D98, CBCharacteristic_ptr);
        sub_10002197C();
      }

      sub_100009BDC(&qword_100035D90, &qword_1000259C0);
      v44 = sub_1000218FC();
      *(v41 + 56) = &type metadata for String;
      *(v41 + 64) = v86;
      *(v41 + 32) = v44;
      *(v41 + 40) = v45;
      sub_10002178C(v40, &_mh_execute_header, v6, "Error: AudioBox service is missing expected characteristics (discovered: %@)", 76, 2, v41);

      v46 = *sub_10000BEFC((v23 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate), *(v23 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate + 24));
      v47 = [v46 result];
      if (*&v46[OBJC_IVAR___AudioBoxController_exclavesStatus])
      {

        v48.super.isa = sub_10002185C().super.isa;
      }

      else
      {
        v48.super.isa = 0;
      }

      v49 = objc_opt_self();
      v50 = sub_10002199C().super.super.isa;
      v51 = [v49 testResultOverrideForExclavesStatus:v48.super.isa originalResult:v50];

      [v47 setStatusCode:v51];
      [v46 setFinished:1];
      return;
    }

    v24 = v22;
    v81 = v6;
    sub_10000C380(0, &qword_100035D98, CBCharacteristic_ptr);
    v25 = sub_10002197C();

    v26 = v25;
    v27 = v25 & 0xFFFFFFFFFFFFFF8;
    if (v25 >> 62)
    {
LABEL_64:
      v77 = v26;
      v78 = sub_100021AEC();
      v26 = v77;
      v89 = v78;
    }

    else
    {
      v89 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = 0;
    v87 = v26;
    v88 = v26 & 0xC000000000000001;
    a3 = &unk_10003D000;
    while (1)
    {
      if (v89 == v5)
      {
        goto LABEL_34;
      }

      if (v88)
      {
        v28 = sub_100021ABC();
      }

      else
      {
        if (v5 >= *(v27 + 16))
        {
          goto LABEL_60;
        }

        v28 = *(v26 + 8 * v5 + 32);
      }

      v29 = v28;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      a2 = [v28 UUID];
      if (qword_1000356E8 != -1)
      {
        swift_once();
      }

      v30 = qword_10003D038;
      v31 = sub_100021A1C();

      ++v5;
      v26 = v87;
      if (v31)
      {
        for (i = 0; v89 != i; ++i)
        {
          if (v88)
          {
            v36 = sub_100021ABC();
          }

          else
          {
            if (i >= *(v27 + 16))
            {
              goto LABEL_63;
            }

            v36 = *(v26 + 8 * i + 32);
          }

          v37 = v36;
          if (__OFADD__(i, 1))
          {
            __break(1u);
LABEL_63:
            __break(1u);
            goto LABEL_64;
          }

          v38 = [v36 UUID];
          if (qword_1000356F0 != -1)
          {
            swift_once();
          }

          a2 = qword_10003D040;
          v39 = sub_100021A1C();

          v26 = v87;
          if (v39)
          {
            sub_10000C380(0, &qword_100035D70, CBUUID_ptr);
            if (v89 < 1)
            {
              __break(1u);
            }

            else
            {
              v52 = 0;
              v80 = OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_l2capPSMCharacteristic;
              v83 = OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_messagingCharacteristic;
              v79 = xmmword_100025800;
              v53 = v87;
              do
              {
                if (v88)
                {
                  v56 = sub_100021ABC();
                }

                else
                {
                  v56 = *(v53 + 8 * v52 + 32);
                }

                v57 = v56;
                v58 = [v57 UUID];
                v59 = v30;
                v60 = sub_100021A1C();

                if (v60)
                {

                  v54 = *(v84 + v83);
                  *(v84 + v83) = v57;
                  v55 = v57;

                  [a1 setNotifyValue:1 forCharacteristic:{v55, v79}];
                }

                else
                {
                  v61 = a2;
                  v62 = sub_100021A1C();

                  if (v62)
                  {

                    v63 = *(v84 + v80);
                    *(v84 + v80) = v57;
                    v64 = v57;

                    [a1 readValueForCharacteristic:v64];
                    [a1 setNotifyValue:1 forCharacteristic:{v64, v79}];
                  }

                  else
                  {
                    v82 = sub_1000219BC();
                    v65 = swift_allocObject();
                    *(v65 + 16) = v79;
                    v66 = [v57 UUID];

                    v67 = [v66 UUIDString];
                    v68 = sub_10002189C();
                    v70 = v69;

                    *(v65 + 56) = &type metadata for String;
                    *(v65 + 64) = v86;
                    *(v65 + 32) = v68;
                    *(v65 + 40) = v70;
                    sub_10002178C(v82, &_mh_execute_header, v81, "Discovered unknown characteristic %@", 36, 2, v65);
                  }
                }

                ++v52;

                v53 = v87;
              }

              while (v89 != v52);

              v71 = (v84 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_audioBoxConnectionCompletion);
              v72 = *(v84 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_audioBoxConnectionCompletion);
              if (v72)
              {
                v73 = v71[1];

                v72(v74);
                sub_10000C004(v72, v73);
                v75 = *v71;
              }

              else
              {
                v75 = 0;
              }

              v76 = v71[1];
              *v71 = 0;
              v71[1] = 0;

              sub_10000C004(v75, v76);
            }

            return;
          }
        }

LABEL_34:

        v23 = v84;
        v6 = v81;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    swift_once();
  }
}

uint64_t sub_1000077E0(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = sub_100021ABC();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_100021AEC();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

_OWORD *sub_100007920(void *a1, void *a2, uint64_t a3)
{
  v68 = a1;
  v6 = sub_1000218EC();
  __chkstk_darwin(v6 - 8);
  v69 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000219AC();
  if (qword_1000356F8 != -1)
  {
    swift_once();
  }

  v9 = qword_10003D048;
  sub_100009BDC(&qword_100035D30, &qword_100025988);
  v10 = swift_allocObject();
  v70 = xmmword_100025800;
  *(v10 + 16) = xmmword_100025800;
  *(v10 + 56) = &type metadata for String;
  v11 = sub_100009C28();
  *(v10 + 64) = v11;
  *(v10 + 32) = 0xD000000000000026;
  *(v10 + 40) = 0x80000001000231A0;
  sub_10002178C(v8, &_mh_execute_header, v9, "%@", 2, 2, v10);

  if (a3)
  {
    swift_errorRetain();
    v12 = sub_1000219BC();
    v13 = swift_allocObject();
    *(v13 + 16) = v70;
    v71 = a3;
    swift_errorRetain();
    sub_100009BDC(&qword_100035D48, &qword_100025998);
    v14 = sub_1000218FC();
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = v11;
    *(v13 + 32) = v14;
    *(v13 + 40) = v15;
    sub_10002178C(v12, &_mh_execute_header, v9, "Error updating characteristic value: %@", 39, 2, v13);

    v16 = *sub_10000BEFC((v3 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate), *(v3 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate + 24));
    v17 = [v16 result];
    if (*&v16[OBJC_IVAR___AudioBoxController_exclavesStatus])
    {

      v18.super.isa = sub_10002185C().super.isa;
    }

    else
    {
      v18.super.isa = 0;
    }

    v34 = objc_opt_self();
    isa = sub_10002199C().super.super.isa;
    v36 = [v34 testResultOverrideForExclavesStatus:v18.super.isa originalResult:isa];

    [v17 setStatusCode:v36];
    [v16 setFinished:1];
  }

  v19 = [a2 value];
  if (v19)
  {
    v20 = v9;
    v67 = v3;
    v21 = v19;
    v22 = sub_10002173C();
    v24 = v23;

    v25 = [a2 UUID];
    v26 = qword_1000356E8;
    v27 = v25;
    if (v26 != -1)
    {
      swift_once();
    }

    v28 = qword_10003D038;
    sub_10000C380(0, &qword_100035D70, CBUUID_ptr);
    v29 = v28;
    LOBYTE(v28) = sub_100021A1C();

    if (v28)
    {

      sub_1000218DC();
      v30 = v22;
      v31 = sub_1000218BC();
      v33 = v67;
      if (v32)
      {
        if (v31 == 0x3E4D4F453CLL && v32 == 0xE500000000000000)
        {

LABEL_30:
          v48 = sub_1000219AC();
          sub_10002178C(v48, &_mh_execute_header, v20, "Received EOM", 12, 2, _swiftEmptyArrayStorage);
          sub_100003988();
LABEL_49:
          v56 = v30;
          return sub_100009688(v56, v24);
        }

        v47 = sub_100021C3C();

        if (v47)
        {
          goto LABEL_30;
        }
      }

      v49 = sub_1000219AC();
      result = swift_allocObject();
      result[1] = v70;
      v50 = v24 >> 62;
      if ((v24 >> 62) <= 1)
      {
        if (v50)
        {
          LODWORD(v51) = HIDWORD(v22) - v22;
          if (__OFSUB__(HIDWORD(v22), v22))
          {
            __break(1u);
            return result;
          }

          v51 = v51;
        }

        else
        {
          v51 = BYTE6(v24);
        }

        goto LABEL_44;
      }

      if (v50 != 2)
      {
        v51 = 0;
LABEL_44:
        *(result + 7) = &type metadata for Int;
        *(result + 8) = &protocol witness table for Int;
        *(result + 4) = v51;
        sub_10002178C(v49, &_mh_execute_header, v20, "Received %d message bytes", v66);

        v57 = OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_messagePacketsReceived;
        swift_beginAccess();
        v58 = *(v33 + v57);
        sub_100009634(v30, v24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v33 + v57) = v58;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v58 = sub_100009C7C(0, *(v58 + 2) + 1, 1, v58);
          *(v33 + v57) = v58;
        }

        v61 = *(v58 + 2);
        v60 = *(v58 + 3);
        if (v61 >= v60 >> 1)
        {
          v58 = sub_100009C7C((v60 > 1), v61 + 1, 1, v58);
        }

        *(v58 + 2) = v61 + 1;
        v62 = &v58[16 * v61];
        *(v62 + 4) = v30;
        *(v62 + 5) = v24;
        *(v33 + v57) = v58;
        swift_endAccess();
        goto LABEL_49;
      }

      v53 = *(v22 + 16);
      v52 = *(v22 + 24);
      v54 = __OFSUB__(v52, v53);
      v51 = v52 - v53;
      if (!v54)
      {
        goto LABEL_44;
      }

      __break(1u);
LABEL_38:
      if ((v71 & 0x10000) != 0)
      {
        v55 = sub_1000219DC();
        sub_10002178C(v55, &_mh_execute_header, v20, "Received nil L2CAP PSM", 22, 2, _swiftEmptyArrayStorage);
        sub_1000083E4();
      }

      else
      {
        v63 = v71;
        v64 = sub_1000219DC();
        v65 = swift_allocObject();
        *(v65 + 16) = v70;
        *(v65 + 56) = &type metadata for UInt16;
        *(v65 + 64) = &protocol witness table for UInt16;
        *(v65 + 32) = v63;
        sub_10002178C(v64, &_mh_execute_header, v20, "Received L2CAP PSM: %d", v66);

        [v68 openL2CAPChannel:v63];
      }

      v56 = v29;
      return sub_100009688(v56, v24);
    }

    v29 = v22;
    if (qword_1000356F0 != -1)
    {
      swift_once();
    }

    v42 = qword_10003D040;
    v43 = sub_100021A1C();

    if (v43)
    {
      sub_1000215FC();
      swift_allocObject();
      sub_1000215EC();
      sub_100009BDC(&qword_100035D78, &qword_1000259B0);
      sub_10000BF40();
      sub_1000215DC();

      goto LABEL_38;
    }

    return sub_100009688(v22, v24);
  }

  else
  {
    v38 = sub_1000219BC();
    sub_10002178C(v38, &_mh_execute_header, v9, "Error: characteristic.value is nil", 34, 2, _swiftEmptyArrayStorage);
    v39 = *sub_10000BEFC((v3 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate), *(v3 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate + 24));
    v40 = [v39 result];
    if (*&v39[OBJC_IVAR___AudioBoxController_exclavesStatus])
    {

      v41.super.isa = sub_10002185C().super.isa;
    }

    else
    {
      v41.super.isa = 0;
    }

    v44 = objc_opt_self();
    v45 = sub_10002199C().super.super.isa;
    v46 = [v44 testResultOverrideForExclavesStatus:v41.super.isa originalResult:v45];

    [v40 setStatusCode:v46];

    return [v39 setFinished:1];
  }
}

void sub_1000083E4()
{
  v1 = OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_l2capChannel;
  v2 = *(v0 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_l2capChannel);
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = sub_1000219DC();
  if (qword_1000356F8 != -1)
  {
    swift_once();
  }

  v5 = qword_10003D048;
  sub_100009BDC(&qword_100035D30, &qword_100025988);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100025800;
  v7 = [v3 PSM];
  *(v6 + 56) = &type metadata for UInt16;
  *(v6 + 64) = &protocol witness table for UInt16;
  *(v6 + 32) = v7;
  sub_10002178C(v4, &_mh_execute_header, v5, "Closing L2CAP connection with PSM %d", v24);

  v8 = [v3 outputStream];
  if (!v8)
  {
    __break(1u);
    goto LABEL_15;
  }

  v9 = v8;
  [v8 close];

  v10 = [v3 inputStream];
  if (!v10)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = v10;
  [v10 close];

  v12 = [v3 inputStream];
  if (!v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v12;
  v14 = objc_opt_self();
  v15 = [v14 mainRunLoop];
  [v13 removeFromRunLoop:v15 forMode:NSDefaultRunLoopMode];

  v16 = [v3 outputStream];
  if (!v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17 = v16;
  v18 = [v14 mainRunLoop];
  [v17 removeFromRunLoop:v18 forMode:NSDefaultRunLoopMode];

  v19 = [v3 inputStream];
  if (!v19)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v20 = v19;
  [v19 setDelegate:0];

  v21 = [v3 outputStream];
  if (!v21)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v22 = v21;
  [v21 setDelegate:0];

  v23 = *(v0 + v1);
  *(v0 + v1) = 0;
}

void sub_1000086E4(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void (*a6)(id, id, void *))
{
  v10 = a3;
  v11 = a4;
  v12 = a1;
  v13 = a5;
  a6(v10, v11, a5);
}

void sub_100008894(void *a1)
{
  v3 = OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_l2capChannel;
  if (*(v1 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_l2capChannel))
  {
    sub_1000083E4();
  }

  v4 = sub_1000219DC();
  if (qword_1000356F8 != -1)
  {
    swift_once();
  }

  v5 = qword_10003D048;
  sub_100009BDC(&qword_100035D30, &qword_100025988);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100025800;
  v7 = [a1 PSM];
  *(v6 + 56) = &type metadata for UInt16;
  *(v6 + 64) = &protocol witness table for UInt16;
  *(v6 + 32) = v7;
  sub_10002178C(v4, &_mh_execute_header, v5, "Opened L2CAP channel with PSM %d", v24);

  v8 = [a1 inputStream];
  if (!v8)
  {
    __break(1u);
    goto LABEL_15;
  }

  v9 = v8;
  [v8 setDelegate:v1];

  v10 = [a1 outputStream];
  if (!v10)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = v10;
  [v10 setDelegate:v1];

  v12 = [a1 inputStream];
  if (!v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v12;
  v14 = objc_opt_self();
  v15 = [v14 mainRunLoop];
  [v13 scheduleInRunLoop:v15 forMode:NSDefaultRunLoopMode];

  v16 = [a1 outputStream];
  if (!v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17 = v16;
  v18 = [v14 mainRunLoop];
  [v17 scheduleInRunLoop:v18 forMode:NSDefaultRunLoopMode];

  v19 = [a1 inputStream];
  if (!v19)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v20 = v19;
  [v19 open];

  v21 = [a1 outputStream];
  if (!v21)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v22 = v21;
  [v21 open];

  v25 = *(v1 + v3);
  *(v1 + v3) = a1;
  v23 = a1;
}

void sub_100008C00(void *a1, uint64_t a2)
{
  if (a2 <= 3)
  {
    if (a2 == 1)
    {
      v22 = sub_1000219DC();
      if (qword_1000356F8 != -1)
      {
        swift_once();
      }

      v23 = qword_10003D048;
      sub_100009BDC(&qword_100035D30, &qword_100025988);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_100025800;
      v25 = a1;
      v26 = [v25 description];
      v27 = sub_10002189C();
      v29 = v28;

      *(v24 + 56) = &type metadata for String;
      *(v24 + 64) = sub_100009C28();
      *(v24 + 32) = v27;
      *(v24 + 40) = v29;
      sub_10002178C(v22, &_mh_execute_header, v23, "L2CAP stream opened: %@", 23, 2, v24);
      goto LABEL_25;
    }

    if (a2 != 2)
    {
      goto LABEL_22;
    }

    sub_1000090C8();
  }

  else
  {
    switch(a2)
    {
      case 4:

        sub_100004548();
        break;
      case 8:
        v11 = sub_1000219BC();
        if (qword_1000356F8 != -1)
        {
          swift_once();
        }

        v12 = qword_10003D048;
        sub_100009BDC(&qword_100035D30, &qword_100025988);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_100025810;
        v14 = a1;
        v15 = [v14 description];
        v16 = sub_10002189C();
        v18 = v17;

        *(v13 + 56) = &type metadata for String;
        v19 = sub_100009C28();
        *(v13 + 64) = v19;
        *(v13 + 32) = v16;
        *(v13 + 40) = v18;
        [v14 streamError];
        sub_100009BDC(&qword_100035D40, &qword_100025990);
        v20 = sub_1000218FC();
        *(v13 + 96) = &type metadata for String;
        *(v13 + 104) = v19;
        *(v13 + 72) = v20;
        *(v13 + 80) = v21;
        sub_10002178C(v11, &_mh_execute_header, v12, "Error occurred in L2CAP stream %@: %@", 37, 2, v13);

        break;
      case 16:
        v3 = sub_1000219DC();
        if (qword_1000356F8 != -1)
        {
          swift_once();
        }

        v4 = qword_10003D048;
        sub_100009BDC(&qword_100035D30, &qword_100025988);
        v5 = swift_allocObject();
        *(v5 + 16) = xmmword_100025800;
        v6 = a1;
        v7 = [v6 description];
        v8 = sub_10002189C();
        v10 = v9;

        *(v5 + 56) = &type metadata for String;
        *(v5 + 64) = sub_100009C28();
        *(v5 + 32) = v8;
        *(v5 + 40) = v10;
        sub_10002178C(v3, &_mh_execute_header, v4, "L2CAP stream ended: %@", 22, 2, v5);
LABEL_25:

        return;
      default:
LABEL_22:
        v30 = sub_1000219BC();
        if (qword_1000356F8 != -1)
        {
          swift_once();
        }

        v31 = qword_10003D048;
        sub_100009BDC(&qword_100035D30, &qword_100025988);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_100025800;
        v33 = a1;
        v34 = [v33 description];
        v35 = sub_10002189C();
        v37 = v36;

        *(v32 + 56) = &type metadata for String;
        *(v32 + 64) = sub_100009C28();
        *(v32 + 32) = v35;
        *(v32 + 40) = v37;
        sub_10002178C(v30, &_mh_execute_header, v31, "L2CAP stream %@ encountered unknown event", 41, 2, v32);
        goto LABEL_25;
    }
  }
}

void sub_1000090C8()
{
  v1 = *(v0 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_l2capChannel);
  if (v1)
  {
    v2 = [v1 inputStream];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 read:swift_slowAlloc() maxLength:1024];
      v5 = [v3 streamError];
      if (v5)
      {
        v6 = v5;
        v0 = sub_1000219BC();
        if (qword_1000356F8 == -1)
        {
LABEL_5:
          v7 = qword_10003D048;
          sub_100009BDC(&qword_100035D30, &qword_100025988);
          v8 = swift_allocObject();
          *(v8 + 16) = xmmword_100025800;
          v9 = v6;
          sub_100009BDC(&qword_100035D48, &qword_100025998);
          v10 = sub_1000218FC();
          v12 = v11;
          *(v8 + 56) = &type metadata for String;
          *(v8 + 64) = sub_100009C28();
          *(v8 + 32) = v10;
          *(v8 + 40) = v12;
          sub_10002178C(v0, &_mh_execute_header, v7, "Error reading from stream: %@", 29, 2, v8);

LABEL_34:

          return;
        }

LABEL_37:
        swift_once();
        goto LABEL_5;
      }

      v6 = (v0 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_fileDataReceived);
      swift_beginAccess();
      if (v4)
      {
        sub_10002171C();
      }

      swift_endAccess();
      v13 = OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_expectedFiles;
      swift_beginAccess();
      v14 = *(v0 + v13);
      v15 = *(v14 + 16);
      if (v15)
      {
        v35 = v6;

        sub_10000A19C(0, v15, 0);
        v16 = _swiftEmptyArrayStorage[2];
        v17 = 48;
        do
        {
          v18 = *(v14 + v17);
          v19 = _swiftEmptyArrayStorage[3];
          if (v16 >= v19 >> 1)
          {
            sub_10000A19C((v19 > 1), v16 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v16 + 1;
          _swiftEmptyArrayStorage[v16 + 4] = v18;
          v17 += 40;
          ++v16;
          --v15;
        }

        while (v15);

        v6 = v35;
      }

      v20 = _swiftEmptyArrayStorage[2];
      if (v20)
      {
        v21 = 0;
        v22 = &_swiftEmptyArrayStorage[4];
        while (1)
        {
          v23 = *v22++;
          v24 = __CFADD__(v21, v23);
          v21 += v23;
          if (v24)
          {
            break;
          }

          if (!--v20)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
        goto LABEL_37;
      }

      v21 = 0;
LABEL_20:

      v25 = sub_1000219DC();
      if (qword_1000356F8 != -1)
      {
        swift_once();
      }

      v26 = qword_10003D048;
      sub_100009BDC(&qword_100035D30, &qword_100025988);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_100025810;
      v28 = *v6;
      v29 = v6[1];
      v30 = v29 >> 62;
      if ((v29 >> 62) <= 1)
      {
        if (!v30)
        {
          v28 = BYTE6(v29);
          goto LABEL_32;
        }

LABEL_29:
        v34 = __OFSUB__(HIDWORD(v28), v28);
        LODWORD(v28) = HIDWORD(v28) - v28;
        if (v34)
        {
          __break(1u);
          return;
        }

        v28 = v28;
        goto LABEL_32;
      }

      if (v30 == 2)
      {
        v33 = v28 + 16;
        v31 = *(v28 + 16);
        v32 = *(v33 + 8);
        v34 = __OFSUB__(v32, v31);
        v28 = v32 - v31;
        if (v34)
        {
          __break(1u);
          goto LABEL_29;
        }
      }

      else
      {
        v28 = 0;
      }

LABEL_32:
      *(v27 + 56) = &type metadata for Int;
      *(v27 + 64) = &protocol witness table for Int;
      *(v27 + 32) = v28;
      *(v27 + 96) = &type metadata for UInt;
      *(v27 + 104) = &protocol witness table for UInt;
      *(v27 + 72) = v21;
      sub_10002178C(v25, &_mh_execute_header, v26, "Received %d of %d expected file bytes", v35, v0);

      sub_100004D6C();
      if ([v3 hasBytesAvailable])
      {
        sub_1000090C8();
      }

      goto LABEL_34;
    }
  }
}

__n128 sub_10000957C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100009590(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1000095D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100009634(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100009688(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

id sub_1000096DC@<X0>(id result@<X0>, void *a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  if (!result)
  {
    goto LABEL_12;
  }

  v6 = result;
  v7 = (a3 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_fileDataToSend);
  result = swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    v11 = 0;
    if (v10 != 2)
    {
      goto LABEL_11;
    }

    v13 = v8 + 16;
    v8 = *(v8 + 16);
    v12 = *(v13 + 8);
    v11 = v12 - v8;
    if (!__OFSUB__(v12, v8))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v10)
  {
    v11 = BYTE6(v9);
LABEL_11:
    result = [a2 write:v6 maxLength:v11];
LABEL_12:
    *a4 = result;
    return result;
  }

  v14 = __OFSUB__(HIDWORD(v8), v8);
  v15 = HIDWORD(v8) - v8;
  if (!v14)
  {
    v11 = v15;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000097AC(uint64_t a1, unint64_t a2, void *a3, char *a4)
{
  v8 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v8)
    {
      v23 = a1;
      v24 = a2;
      v25 = BYTE2(a2);
      v26 = BYTE3(a2);
      v27 = BYTE4(a2);
      v9 = &a4[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_fileDataToSend];
      v28 = BYTE5(a2);
      swift_beginAccess();
      v10 = *v9;
      v11 = *(v9 + 1);
      v12 = v11 >> 62;
      if ((v11 >> 62) <= 1)
      {
        if (!v12)
        {
          v13 = BYTE6(v11);
LABEL_20:
          v16 = [a3 write:&v23 maxLength:v13];
LABEL_21:
          v5 = v16;

          goto LABEL_22;
        }

        v20 = __OFSUB__(HIDWORD(v10), v10);
        v21 = HIDWORD(v10) - v10;
        if (!v20)
        {
          v13 = v21;
          goto LABEL_20;
        }

LABEL_25:
        __break(1u);
      }

      v13 = 0;
      if (v12 != 2)
      {
        goto LABEL_20;
      }

      v19 = v10 + 16;
      v17 = *(v10 + 16);
      v18 = *(v19 + 8);
      v13 = v18 - v17;
      if (!__OFSUB__(v18, v17))
      {
        goto LABEL_20;
      }

      __break(1u);
LABEL_17:

      v5 = v23;
LABEL_22:

      return v5;
    }

    v14 = a1;
    v15 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
      goto LABEL_25;
    }

    goto LABEL_9;
  }

  if (v8 == 2)
  {
    v14 = *(a1 + 16);
    v15 = *(a1 + 24);
LABEL_9:
    v16 = sub_10000A7D4(v14, v15, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    if (!v4)
    {
      goto LABEL_21;
    }

    goto LABEL_12;
  }

  *(v29 + 6) = 0;
  v29[0] = 0;
  sub_1000096DC(v29, a3, a4, &v23);
  if (!v4)
  {
    goto LABEL_17;
  }

LABEL_12:

  return v5;
}

Swift::Int sub_1000099AC()
{
  sub_100021CBC();
  sub_100021CCC(0);
  return sub_100021CDC();
}

Swift::Int sub_100009A18(uint64_t a1)
{
  sub_100021CBC();
  sub_100021CCC(0);
  return sub_100021CDC();
}

char *sub_100009A68(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009BDC(&qword_100035D28, ">C");
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100009BDC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100009C28()
{
  result = qword_100035D38;
  if (!qword_100035D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035D38);
  }

  return result;
}

char *sub_100009C7C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009BDC(&qword_100035D88, &qword_1000259B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100009D88(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009BDC(&qword_100035D58, &qword_1000259A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100009EA8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_10002184C();
      sub_10000C420(&unk_100035DE0, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
      return sub_10002180C();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_10000A09C(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_10000A09C(v5, v6);
  }

  sub_10002184C();
  sub_10000C420(&unk_100035DE0, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  return sub_10002180C();
}

uint64_t sub_10000A09C(uint64_t a1, uint64_t a2)
{
  result = sub_10002163C();
  if (!result || (result = sub_10002165C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_10002164C();
      sub_10002184C();
      sub_10000C420(&unk_100035DE0, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
      return sub_10002180C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_10000A17C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000A1BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000A19C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000A2C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000A1BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009BDC(&qword_100035E08, &qword_100025A00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10000A2C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009BDC(&qword_100035D50, &qword_1000259A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_10000A3FC(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v47 = a4;
  v7 = sub_1000218EC();
  v39 = *(v7 - 8);
  v40 = v7;
  __chkstk_darwin(v7);
  v38 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a3;
  v44 = [a3 maximumWriteValueLengthForType:0];
  v45 = a2;
  v9 = a2 >> 62;
  v10 = __OFSUB__(HIDWORD(a1), a1);
  v42 = v10;
  if (v9 == 3)
  {
    goto LABEL_5;
  }

  v11 = 0;
  v41 = HIDWORD(a1) - a1;
  v18 = BYTE6(v45);
  v43 = xmmword_100025800;
  v19 = BYTE6(v45);
  if (!v9)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (v9 == 1)
  {
    v19 = v41;
    if (!v42)
    {
      goto LABEL_13;
    }

LABEL_33:
    __break(1u);
  }

  else
  {
    v21 = *(a1 + 16);
    v20 = *(a1 + 24);
    v22 = __OFSUB__(v20, v21);
    v19 = v20 - v21;
    if (!v22)
    {
LABEL_13:
      while (v11 < v19)
      {
        v23 = v18;
        if (v9)
        {
          if (v9 == 2)
          {
            v25 = *(a1 + 16);
            v24 = *(a1 + 24);
            v22 = __OFSUB__(v24, v25);
            v23 = v24 - v25;
            if (v22)
            {
              goto LABEL_36;
            }
          }

          else
          {
            v23 = v41;
            if (v42)
            {
              goto LABEL_35;
            }
          }
        }

        v22 = __OFSUB__(v23, v11);
        v26 = v23 - v11;
        if (v22)
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        if (v26 >= v44)
        {
          v27 = v44;
        }

        else
        {
          v27 = v26;
        }

        v28 = v11 + v27;
        if (__OFADD__(v11, v27))
        {
          goto LABEL_31;
        }

        if (v28 < v11)
        {
          goto LABEL_32;
        }

        v29 = sub_10002176C();
        v31 = v30;
        v32 = sub_1000219AC();
        if (qword_1000356F8 != -1)
        {
          swift_once();
        }

        v33 = qword_10003D048;
        sub_100009BDC(&qword_100035D30, &qword_100025988);
        v34 = swift_allocObject();
        *(v34 + 16) = v43;
        *(v34 + 56) = &type metadata for Int;
        *(v34 + 64) = &protocol witness table for Int;
        *(v34 + 32) = v27;
        sub_10002178C(v32, &_mh_execute_header, v33, "Sending %d bytes", v37);

        isa = sub_10002172C().super.isa;
        [v46 writeValue:isa forCharacteristic:v47 type:0];
        sub_100009688(v29, v31);

        v11 = v28;
        v19 = v18;
        if (v9)
        {
          goto LABEL_9;
        }
      }

LABEL_5:
      v11 = sub_1000219AC();
      if (qword_1000356F8 == -1)
      {
        goto LABEL_6;
      }

      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  v36 = v11;
  swift_once();
  v11 = v36;
LABEL_6:
  sub_10002178C(v11, &_mh_execute_header, qword_10003D048, "Sending EOM", 11, 2, _swiftEmptyArrayStorage);
  v12 = v38;
  sub_1000218DC();
  v13 = sub_1000218AC();
  v15 = v14;
  result = (*(v39 + 8))(v12, v40);
  if (v15 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v17 = sub_10002172C().super.isa;
    [v46 writeValue:v17 forCharacteristic:v47 type:0];

    return sub_10000C36C(v13, v15);
  }

  return result;
}

char *sub_10000A7D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  result = sub_10002163C();
  v11 = result;
  if (result)
  {
    result = sub_10002165C();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_10002164C();
  result = sub_1000096DC(v11, a4, a5, &v12);
  if (!v5)
  {
    return v12;
  }

  return result;
}

unint64_t sub_10000A888(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 48 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 48 * a3;
  v13 = (v7 + 32 + 48 * a2);
  if (result != v13 || result >= v13 + 48 * v12)
  {
    result = memmove(result, v13, 48 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_10000A960(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_100009D88(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_10000A888(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_10000AA20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009BDC(&qword_100035DD0, &qword_1000259F0);
    v3 = sub_100021B1C();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000C140(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_10001F750(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000C1B0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

void sub_10000AB30(void *a1, void *a2, uint64_t a3)
{
  v7 = sub_1000219AC();
  if (qword_1000356F8 != -1)
  {
    swift_once();
  }

  v8 = qword_10003D048;
  sub_100009BDC(&qword_100035D30, &qword_100025988);
  v9 = swift_allocObject();
  v45 = xmmword_100025800;
  *(v9 + 16) = xmmword_100025800;
  *(v9 + 56) = &type metadata for String;
  v10 = sub_100009C28();
  *(v9 + 64) = v10;
  *(v9 + 32) = 0xD000000000000035;
  *(v9 + 40) = 0x8000000100023550;
  sub_10002178C(v7, &_mh_execute_header, v8, "%@", 2, 2, v9);

  v11 = sub_10002189C();
  if (!*(a3 + 16))
  {
LABEL_19:

    return;
  }

  v13 = v3;
  v14 = sub_10001F750(v11, v12);
  v16 = v15;

  if (v16)
  {
    sub_10000C014(*(a3 + 56) + 32 * v14, v48);
    sub_100009BDC(&qword_100035DB0, &qword_1000259D8);
    v17 = swift_dynamicCast();
    if (v17)
    {
      if (qword_1000356E0 != -1)
      {
        v17 = swift_once();
      }

      v48[0] = qword_10003D030;
      __chkstk_darwin(v17);
      v43[2] = v48;
      if (sub_1000077E0(sub_10000C070, v43, v46))
      {
        v18 = sub_10002189C();
        if (*(a3 + 16))
        {
          v44 = a2;
          v20 = sub_10001F750(v18, v19);
          v22 = v21;

          if (v22)
          {
            sub_10000C014(*(a3 + 56) + 32 * v20, v48);
            if (swift_dynamicCast())
            {
              v23 = v46;
              v24 = v47;
              v25 = (v13 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_audioBoxSerial);
              v26 = *(v13 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_audioBoxSerial + 8);
              if (v26)
              {
                if (v27 = v13, v46 == *v25) && v26 == v47 || (sub_100021C3C())
                {

                  v28 = sub_1000219DC();
                  v29 = swift_allocObject();
                  *(v29 + 16) = v45;
                  *(v29 + 56) = &type metadata for String;
                  *(v29 + 64) = v10;
                  *(v29 + 32) = v23;
                  *(v29 + 40) = v24;
                  sub_10002178C(v28, &_mh_execute_header, v8, "Discovered audio box matching serial %@", 39, 2, v29);

                  [a1 stopScan];
                  sub_100009BDC(&qword_100035DB8, &qword_1000259E0);
                  inited = swift_initStackObject();
                  *(inited + 16) = v45;
                  *(inited + 32) = sub_10002189C();
                  *(inited + 40) = v31;
                  isa = sub_100021CEC().super.super.isa;
                  *(inited + 72) = sub_10000C380(0, &qword_100035DC0, NSNumber_ptr);
                  *(inited + 48) = isa;
                  sub_10000AA20(inited);
                  swift_setDeallocating();
                  sub_10000C0D8(inited + 32);
                  v33 = sub_10002185C().super.isa;

                  v34 = a1;
                  v35 = v44;
                  [v34 connectPeripheral:v44 options:v33];

                  [v35 setDelegate:v13];
                  v36 = *(v13 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_audioBox);
                  *(v27 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_audioBox) = v35;
                  v37 = v35;

                  return;
                }
              }

              v38 = sub_1000219DC();
              v39 = swift_allocObject();
              *(v39 + 16) = xmmword_100025810;
              *(v39 + 56) = &type metadata for String;
              *(v39 + 64) = v10;
              *(v39 + 32) = v23;
              *(v39 + 40) = v24;
              v40 = v25[1];
              if (!v40)
              {
                __break(1u);
                return;
              }

              v41 = v39;
              v42 = *v25;

              v41[12] = &type metadata for String;
              v41[13] = v10;
              v41[9] = v42;
              v41[10] = v40;
              sub_10002178C(v38, &_mh_execute_header, v8, "Discovered audio box with serial %@, doesn't match %@", 53, 2, v41);
            }
          }
        }

        else
        {
        }
      }

      goto LABEL_19;
    }
  }
}

void sub_10000B058(void *a1)
{
  v2 = sub_1000219AC();
  if (qword_1000356F8 != -1)
  {
    swift_once();
  }

  v3 = qword_10003D048;
  sub_100009BDC(&qword_100035D30, &qword_100025988);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100025800;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_100009C28();
  *(v4 + 32) = 0xD00000000000001DLL;
  *(v4 + 40) = 0x8000000100023530;
  sub_10002178C(v2, &_mh_execute_header, v3, "%@", 2, 2, v4);

  sub_100009BDC(&qword_100035DA8, &qword_1000259D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000257F0;
  if (qword_1000356E0 != -1)
  {
    swift_once();
  }

  v6 = qword_10003D030;
  *(v5 + 32) = qword_10003D030;
  sub_10000C380(0, &qword_100035D70, CBUUID_ptr);
  v7 = v6;
  isa = sub_10002196C().super.isa;

  [a1 discoverServices:isa];
}

id sub_10000B22C(uint64_t a1)
{
  v2 = sub_1000219AC();
  if (qword_1000356F8 != -1)
  {
    swift_once();
  }

  v3 = qword_10003D048;
  sub_100009BDC(&qword_100035D30, &qword_100025988);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100025800;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_100009C28();
  *(v4 + 32) = 0xD000000000000029;
  *(v4 + 40) = 0x8000000100023500;
  sub_10002178C(v2, &_mh_execute_header, v3, "%@", 2, 2, v4);

  v5 = *sub_10000BEFC((v1 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate), *(v1 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate + 24));
  v6 = [v5 result];
  if (*&v5[OBJC_IVAR___AudioBoxController_exclavesStatus])
  {

    v7.super.isa = sub_10002185C().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  v8 = objc_opt_self();
  isa = sub_10002199C().super.super.isa;
  v10 = [v8 testResultOverrideForExclavesStatus:v7.super.isa originalResult:isa];

  [v6 setStatusCode:v10];

  return [v5 setFinished:1];
}

id sub_10000B430(uint64_t a1)
{
  v2 = sub_1000219AC();
  if (qword_1000356F8 != -1)
  {
    swift_once();
  }

  v3 = qword_10003D048;
  sub_100009BDC(&qword_100035D30, &qword_100025988);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100025800;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_100009C28();
  *(v4 + 32) = 0xD000000000000030;
  *(v4 + 40) = 0x80000001000234C0;
  sub_10002178C(v2, &_mh_execute_header, v3, "%@", 2, 2, v4);

  v5 = *sub_10000BEFC((v1 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate), *(v1 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate + 24));
  v6 = [v5 result];
  if (*&v5[OBJC_IVAR___AudioBoxController_exclavesStatus])
  {

    v7.super.isa = sub_10002185C().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  v8 = objc_opt_self();
  isa = sub_10002199C().super.super.isa;
  v10 = [v8 testResultOverrideForExclavesStatus:v7.super.isa originalResult:isa];

  [v6 setStatusCode:v10];

  return [v5 setFinished:1];
}

void sub_10000B634(unint64_t a1)
{
  v2 = sub_1000219AC();
  if (qword_1000356F8 != -1)
  {
LABEL_24:
    swift_once();
  }

  v3 = qword_10003D048;
  sub_100009BDC(&qword_100035D30, &qword_100025988);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100025810;
  *(v4 + 56) = &type metadata for String;
  v5 = sub_100009C28();
  *(v4 + 64) = v5;
  *(v4 + 32) = 0xD000000000000020;
  *(v4 + 40) = 0x8000000100023110;
  sub_10000C380(0, &qword_100035D60, CBService_ptr);
  v6 = sub_10002198C();
  *(v4 + 96) = &type metadata for String;
  *(v4 + 104) = v5;
  *(v4 + 72) = v6;
  *(v4 + 80) = v7;
  v25 = v3;
  sub_10002178C(v2, &_mh_execute_header, v3, "%@ (invalidated: %@)", 20, 2, v4);

  if (a1 >> 62)
  {
    v8 = sub_100021AEC();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  v2 = _TtC15Diagnostic_838924AudioBoxBluetoothManager;
  while (v8 != v9)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v10 = sub_100021ABC();
    }

    else
    {
      if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v10 = *(a1 + 8 * v9 + 32);
    }

    v11 = v10;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    sub_10000C380(0, &qword_100035D68, NSObject_ptr);
    v12 = [v11 UUID];
    if (qword_1000356E0 != -1)
    {
      swift_once();
    }

    v13 = sub_100021A1C();

    ++v9;
    if (v13)
    {
      v14 = sub_1000219BC();
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_100025800;
      v16 = sub_10002198C();
      *(v15 + 56) = &type metadata for String;
      *(v15 + 64) = v5;
      *(v15 + 32) = v16;
      *(v15 + 40) = v17;
      sub_10002178C(v14, &_mh_execute_header, v25, "AudioBox service was invalidated: %@", 36, 2, v15);

      v18 = *sub_10000BEFC((v26 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate), *(v26 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate + 24));
      v19 = [v18 result];
      v20 = v19;
      if (*&v18[OBJC_IVAR___AudioBoxController_exclavesStatus])
      {

        v21.super.isa = sub_10002185C().super.isa;
      }

      else
      {
        v21.super.isa = 0;
      }

      v22 = objc_opt_self();
      isa = sub_10002199C().super.super.isa;
      v24 = [v22 testResultOverrideForExclavesStatus:v21.super.isa originalResult:isa];

      [v20 setStatusCode:v24];

      [v18 setFinished:1];
      return;
    }
  }
}

uint64_t sub_10000BA38(uint64_t a1)
{
  v3 = sub_1000219AC();
  if (qword_1000356F8 != -1)
  {
    swift_once();
  }

  v4 = qword_10003D048;
  sub_100009BDC(&qword_100035D30, &qword_100025988);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100025800;
  *(v5 + 56) = &type metadata for String;
  v6 = sub_100009C28();
  *(v5 + 64) = v6;
  *(v5 + 32) = 0xD000000000000025;
  *(v5 + 40) = 0x80000001000230A0;
  sub_10002178C(v3, &_mh_execute_header, v4, "%@", 2, 2, v5);

  if (a1)
  {
    swift_errorRetain();
    v8 = sub_1000219BC();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100025800;
    swift_errorRetain();
    sub_100009BDC(&qword_100035D48, &qword_100025998);
    v10 = sub_1000218FC();
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = v6;
    *(v9 + 32) = v10;
    *(v9 + 40) = v11;
    sub_10002178C(v8, &_mh_execute_header, v4, "Error writing value: %@", 23, 2, v9);

    v12 = *sub_10000BEFC((v1 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate), *(v1 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate + 24));
    v13 = [v12 result];
    if (*&v12[OBJC_IVAR___AudioBoxController_exclavesStatus])
    {

      v14.super.isa = sub_10002185C().super.isa;
    }

    else
    {
      v14.super.isa = 0;
    }

    v15 = objc_opt_self();
    isa = sub_10002199C().super.super.isa;
    v17 = [v15 testResultOverrideForExclavesStatus:v14.super.isa originalResult:isa];

    [v13 setStatusCode:v17];
    [v12 setFinished:1];
  }

  return result;
}

void sub_10000BCF4(void *a1, uint64_t a2)
{
  v4 = sub_1000219AC();
  if (qword_1000356F8 != -1)
  {
    swift_once();
  }

  v5 = qword_10003D048;
  sub_100009BDC(&qword_100035D30, &qword_100025988);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100025800;
  *(v6 + 56) = &type metadata for String;
  v7 = sub_100009C28();
  *(v6 + 64) = v7;
  *(v6 + 32) = 0xD00000000000001CLL;
  *(v6 + 40) = 0x8000000100023000;
  sub_10002178C(v4, &_mh_execute_header, v5, "%@", 2, 2, v6);

  if (a2)
  {
    swift_errorRetain();
    v8 = sub_1000219BC();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100025800;
    swift_errorRetain();
    sub_100009BDC(&qword_100035D48, &qword_100025998);
    v10 = sub_1000218FC();
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = v7;
    *(v9 + 32) = v10;
    *(v9 + 40) = v11;
    sub_10002178C(v8, &_mh_execute_header, v5, "Error opening L2CAP channel: %@", 31, 2, v9);
  }

  else if (a1)
  {
    v12 = a1;
    sub_100008894(v12);
  }
}

void *sub_10000BEFC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10000BF40()
{
  result = qword_100035D80;
  if (!qword_100035D80)
  {
    sub_10000BFBC(&qword_100035D78, &qword_1000259B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035D80);
  }

  return result;
}

uint64_t sub_10000BFBC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000C004(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000C014(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000C0D8(uint64_t a1)
{
  v2 = sub_100009BDC(&qword_100035DC8, &qword_1000259E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000C140(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009BDC(&qword_100035DC8, &qword_1000259E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_10000C1B0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_10000C1C0()
{
  result = qword_100035DF8;
  if (!qword_100035DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035DF8);
  }

  return result;
}

unint64_t sub_10000C214()
{
  result = qword_100035E10;
  if (!qword_100035E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035E10);
  }

  return result;
}

unint64_t sub_10000C318()
{
  result = qword_100035E18;
  if (!qword_100035E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035E18);
  }

  return result;
}

uint64_t sub_10000C36C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100009688(result, a2);
  }

  return result;
}

uint64_t sub_10000C380(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_10000C3C8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000C408(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000C420(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000C468(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10000BFBC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000C4B8(void *a1)
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

uint64_t getEnumTagSinglePayload for AudioBoxBluetoothManager.ProtocolError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AudioBoxBluetoothManager.ProtocolError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_10000C5F8()
{
  result = qword_100035E48;
  if (!qword_100035E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035E48);
  }

  return result;
}

uint64_t sub_10000C664(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = v1;
    v4 = sub_10001F750(*(v2 + OBJC_IVAR___AudioBoxInputs_audioBoxIDKey), *(v2 + OBJC_IVAR___AudioBoxInputs_audioBoxIDKey + 8));
    if (v5)
    {
      sub_10000C014(*(a1 + 56) + 32 * v4, v19);
      if (swift_dynamicCast())
      {
        if (*(a1 + 16) && (v6 = sub_10001F750(*(v2 + OBJC_IVAR___AudioBoxInputs_audioBoxTokenKey), *(v2 + OBJC_IVAR___AudioBoxInputs_audioBoxTokenKey + 8)), (v7 & 1) != 0) && (sub_10000C014(*(a1 + 56) + 32 * v6, v19), (swift_dynamicCast() & 1) != 0))
        {
          v8 = (v2 + OBJC_IVAR___AudioBoxInputs_audioBoxID);
          *v8 = v17;
          v8[1] = v18;

          v9 = (v2 + OBJC_IVAR___AudioBoxInputs_audioBoxToken);
          *v9 = v17;
          v9[1] = v18;

          *(v2 + OBJC_IVAR___AudioBoxInputs_parameters) = a1;

          if (!*(a1 + 16))
          {
            return 1;
          }

          v10 = sub_10001F750(*(v2 + OBJC_IVAR___AudioBoxInputs_downloadAudioFilesKey), *(v2 + OBJC_IVAR___AudioBoxInputs_downloadAudioFilesKey + 8));
          if ((v11 & 1) == 0)
          {
            return 1;
          }

          sub_10000C014(*(a1 + 56) + 32 * v10, v19);
          if (!swift_dynamicCast())
          {
            return 1;
          }

          result = 1;
          if ((v17 & 1) == 0)
          {
            return result;
          }

          *(v2 + OBJC_IVAR___AudioBoxInputs_downloadAudioFiles) = 1;
          if (*(a1 + 16))
          {
            v13 = sub_10001F750(*(v2 + OBJC_IVAR___AudioBoxInputs_fileDownloadTimeoutKey), *(v2 + OBJC_IVAR___AudioBoxInputs_fileDownloadTimeoutKey + 8));
            if (v14)
            {
              sub_10000C014(*(a1 + 56) + 32 * v13, v19);
              if (swift_dynamicCast())
              {
                if (*(a1 + 16))
                {
                  v15 = sub_10001F750(*(v2 + OBJC_IVAR___AudioBoxInputs_sourcesKey), *(v2 + OBJC_IVAR___AudioBoxInputs_sourcesKey + 8));
                  if (v16)
                  {
                    sub_10000C014(*(a1 + 56) + 32 * v15, v19);
                    sub_100009BDC(&unk_100035F40, &qword_1000259F8);
                    if (swift_dynamicCast())
                    {
                      *(v2 + OBJC_IVAR___AudioBoxInputs_fileDownloadTimeout) = v17;
                      *(v2 + OBJC_IVAR___AudioBoxInputs_sources) = v17;

                      return 1;
                    }
                  }
                }
              }
            }
          }
        }

        else
        {
        }
      }
    }
  }

  return 0;
}

uint64_t sub_10000C984(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(a1 + *a4) = sub_10002186C();

  return 1;
}

id sub_10000C9E8()
{
  v1 = &v0[OBJC_IVAR___AudioBoxInputs_audioBoxIDKey];
  *v1 = 0x786F426F69647561;
  *(v1 + 1) = 0xEA00000000004449;
  v2 = &v0[OBJC_IVAR___AudioBoxInputs_audioBoxTokenKey];
  strcpy(&v0[OBJC_IVAR___AudioBoxInputs_audioBoxTokenKey], "audioBoxToken");
  *(v2 + 7) = -4864;
  v3 = &v0[OBJC_IVAR___AudioBoxInputs_downloadAudioFilesKey];
  *v3 = 0xD000000000000012;
  *(v3 + 1) = 0x8000000100023AC0;
  v4 = &v0[OBJC_IVAR___AudioBoxInputs_fileDownloadTimeoutKey];
  *v4 = 0xD000000000000013;
  *(v4 + 1) = 0x8000000100023AE0;
  v5 = &v0[OBJC_IVAR___AudioBoxInputs_sourcesKey];
  *v5 = 0x73656372756F73;
  *(v5 + 1) = 0xE700000000000000;
  v6 = &v0[OBJC_IVAR___AudioBoxInputs_audioBoxID];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v0[OBJC_IVAR___AudioBoxInputs_audioBoxToken];
  *v7 = 0;
  *(v7 + 1) = 0;
  v0[OBJC_IVAR___AudioBoxInputs_downloadAudioFiles] = 0;
  *&v0[OBJC_IVAR___AudioBoxInputs_fileDownloadTimeout] = 0;
  *&v0[OBJC_IVAR___AudioBoxInputs_sources] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR___AudioBoxInputs_predicates] = &_swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR___AudioBoxInputs_parameters] = &_swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR___AudioBoxInputs_specifications] = &_swiftEmptyDictionarySingleton;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for AudioBoxInputs();
  return objc_msgSendSuper2(&v9, "init");
}

id sub_10000CB70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioBoxInputs();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_10000CCC0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000CCD4(uint64_t a1, int a2)
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

uint64_t sub_10000CD1C(uint64_t result, int a2, int a3)
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

uint64_t sub_10000CD74(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006D6FLL;
  v3 = 0x74746F427466654CLL;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 1801675074;
    }

    else
    {
      v5 = 0x746F427468676952;
    }

    if (v4 == 2)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xEB000000006D6F74;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x746E6F7246;
    }

    else
    {
      v5 = 0x74746F427466654CLL;
    }

    if (v4)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xEA00000000006D6FLL;
    }
  }

  v7 = 0xE400000000000000;
  v8 = 1801675074;
  if (a2 != 2)
  {
    v8 = 0x746F427468676952;
    v7 = 0xEB000000006D6F74;
  }

  if (a2)
  {
    v3 = 0x746E6F7246;
    v2 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100021C3C();
  }

  return v11 & 1;
}

uint64_t sub_10000CEF8()
{
  v1 = *v0;
  v2 = 0x796669746E656469;
  v3 = 0x6F63655279616C70;
  v4 = 0x6F636552706F7473;
  if (v1 != 4)
  {
    v4 = 0x706D6F4374736574;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x73736572676F7270;
  if (v1 != 1)
  {
    v5 = 0x6E617254656C6966;
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

uint64_t sub_10000CFDC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000118D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10000D01C(uint64_t a1)
{
  v2 = sub_100014118();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000D058(uint64_t a1)
{
  v2 = sub_100014118();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000D094(void *a1)
{
  v2 = v1;
  v4 = sub_100009BDC(&qword_100036020, &qword_100025FB8);
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v36 = &v30 - v5;
  v6 = sub_100009BDC(&qword_100036028, &qword_100025FC0);
  v34 = *(v6 - 8);
  v35 = v6;
  __chkstk_darwin(v6);
  v8 = &v30 - v7;
  v9 = sub_100009BDC(&qword_100036030, &qword_100025FC8);
  v32 = *(v9 - 8);
  v33 = v9;
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  v12 = sub_100009BDC(&qword_100036038, &qword_100025FD0);
  v31 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  v15 = sub_100009BDC(&qword_100036040, &qword_100025FD8);
  v40 = *(v15 - 8);
  v41 = v15;
  __chkstk_darwin(v15);
  v17 = &v30 - v16;
  sub_10000BEFC(a1, a1[3]);
  sub_100014508();
  sub_100021D2C();
  v18 = v2[1];
  v39 = *v2;
  v19 = v2[2];
  if (*(v2 + 32) > 1u)
  {
    if (*(v2 + 32) == 2)
    {
      LOBYTE(v42) = 2;
      sub_100014604();
      v23 = v41;
      sub_100021BCC();
      v42 = v39;
      sub_100014658();
      v24 = v35;
      sub_100021C0C();
      (*(v34 + 8))(v8, v24);
      return (*(v40 + 8))(v17, v23);
    }

    else
    {
      LOBYTE(v42) = 3;
      sub_10001455C();
      v27 = v36;
      v28 = v41;
      sub_100021BCC();
      v42 = v39;
      v43 = v18;
      v44 = v19;
      sub_1000145B0();
      v29 = v38;
      sub_100021C0C();
      (*(v37 + 8))(v27, v29);
      return (*(v40 + 8))(v17, v28);
    }
  }

  else if (*(v2 + 32))
  {
    LOBYTE(v42) = 1;
    sub_1000146AC();
    v25 = v41;
    sub_100021BCC();
    v42 = v39;
    v43 = v18;
    LOBYTE(v44) = v19;
    sub_100014700();
    v26 = v33;
    sub_100021C0C();
    (*(v32 + 8))(v11, v26);
    return (*(v40 + 8))(v17, v25);
  }

  else
  {
    v20 = v2[3];
    LOBYTE(v42) = 0;
    sub_100014754();
    v21 = v41;
    sub_100021BCC();
    v42 = v39;
    v43 = v18;
    v44 = v19;
    v45 = v20;
    sub_1000147A8();
    sub_100021C0C();
    (*(v31 + 8))(v14, v12);
    return (*(v40 + 8))(v17, v21);
  }
}

unint64_t sub_10000D628(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0x6965636552646964;
    v5 = 0x646E6553656C6966;
    if (a1 != 2)
    {
      v5 = 0xD000000000000010;
    }

    if (a1)
    {
      v4 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000011;
    v2 = 0xD000000000000012;
    if (a1 != 7)
    {
      v2 = 0x6E6964726F636572;
    }

    if (a1 == 6)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 4)
    {
      v1 = 0x6B63616279616C70;
    }

    if (a1 <= 5u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10000D778(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v72 = a4;
  *&v73 = a2;
  *(&v73 + 1) = a3;
  v5 = sub_100009BDC(&qword_100036518, &qword_100027F98);
  v63 = *(v5 - 8);
  v64 = v5;
  __chkstk_darwin(v5);
  v62 = &v46 - v6;
  v7 = sub_100009BDC(&qword_100036520, &qword_100027FA0);
  v60 = *(v7 - 8);
  v61 = v7;
  __chkstk_darwin(v7);
  v59 = &v46 - v8;
  v9 = sub_100009BDC(&qword_100036528, &qword_100027FA8);
  v57 = *(v9 - 8);
  v58 = v9;
  __chkstk_darwin(v9);
  v56 = &v46 - v10;
  v55 = sub_100009BDC(&qword_100036530, &qword_100027FB0);
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v53 = &v46 - v11;
  v52 = sub_100009BDC(&qword_100036538, &qword_100027FB8);
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v50 = &v46 - v12;
  v49 = sub_100009BDC(&qword_100036540, &qword_100027FC0);
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v47 = &v46 - v13;
  v14 = sub_100009BDC(&qword_100036548, &qword_100027FC8);
  v67 = *(v14 - 8);
  v68 = v14;
  __chkstk_darwin(v14);
  v16 = &v46 - v15;
  v17 = sub_100009BDC(&qword_100036550, &qword_100027FD0);
  v66 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v46 - v18;
  v20 = sub_100009BDC(&qword_100036558, &qword_100027FD8);
  v65 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v46 - v21;
  v23 = sub_100009BDC(&qword_100036560, &qword_100027FE0);
  v24 = *(v23 - 8);
  v70 = v23;
  v71 = v24;
  __chkstk_darwin(v23);
  v26 = &v46 - v25;
  sub_10000BEFC(a1, a1[3]);
  sub_100018D6C();
  v69 = v26;
  sub_100021D2C();
  if (v72 > 1u)
  {
    if (v72 == 2)
    {
      v76 = 2;
      sub_100018FB8();
      v30 = v69;
      v31 = v70;
      sub_100021BCC();
      v32 = v68;
      sub_100021BDC();
      (*(v67 + 8))(v16, v32);
      return (*(v71 + 8))(v30, v31);
    }

    else
    {
      if (v73 > 2)
      {
        if (v73 ^ 3 | *(&v73 + 1))
        {
          if (v73 ^ 4 | *(&v73 + 1))
          {
            v82 = 8;
            sub_100018DC0();
            v41 = v62;
            v37 = v69;
            v36 = v70;
            sub_100021BCC();
            v43 = v63;
            v42 = v64;
          }

          else
          {
            v81 = 7;
            sub_100018E14();
            v41 = v59;
            v37 = v69;
            v36 = v70;
            sub_100021BCC();
            v43 = v60;
            v42 = v61;
          }
        }

        else
        {
          v80 = 6;
          sub_100018E68();
          v41 = v56;
          v37 = v69;
          v36 = v70;
          sub_100021BCC();
          v43 = v57;
          v42 = v58;
        }

        v38 = *(v43 + 8);
        v39 = v41;
      }

      else
      {
        if (v73 == 0)
        {
          v77 = 3;
          sub_100018F64();
          v44 = v47;
          v37 = v69;
          v36 = v70;
          sub_100021BCC();
          v38 = *(v48 + 8);
          v39 = v44;
          v40 = &v83;
        }

        else if (v73 ^ 1 | *(&v73 + 1))
        {
          v79 = 5;
          sub_100018EBC();
          v45 = v53;
          v37 = v69;
          v36 = v70;
          sub_100021BCC();
          v38 = *(v54 + 8);
          v39 = v45;
          v40 = &v85;
        }

        else
        {
          v78 = 4;
          sub_100018F10();
          v35 = v50;
          v37 = v69;
          v36 = v70;
          sub_100021BCC();
          v38 = *(v51 + 8);
          v39 = v35;
          v40 = &v84;
        }

        v42 = *(v40 - 32);
      }

      v38(v39, v42);
      return (*(v71 + 8))(v37, v36);
    }
  }

  else if (v72)
  {
    v75 = 1;
    sub_10001900C();
    v34 = v69;
    v33 = v70;
    sub_100021BCC();
    sub_100021BDC();
    (*(v66 + 8))(v19, v17);
    return (*(v71 + 8))(v34, v33);
  }

  else
  {
    v74[0] = 0;
    sub_100019060();
    v28 = v69;
    v27 = v70;
    sub_100021BCC();
    sub_100021BDC();
    (*(v65 + 8))(v22, v20);
    return (*(v71 + 8))(v28, v27);
  }
}

uint64_t sub_10000E0F4(void *a1)
{
  v3 = sub_100009BDC(&qword_100035F60, &qword_100025BC8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000BEFC(a1, a1[3]);
  sub_100013D10();
  sub_100021D2C();
  v8[15] = 0;
  sub_100021BDC();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_100021BFC();
  v8[13] = 2;
  sub_100021BDC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10000E2B0(uint64_t a1)
{
  v2 = sub_100014310();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000E2EC(uint64_t a1)
{
  v2 = sub_100014310();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000E340(uint64_t a1)
{
  v2 = sub_100014460();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000E37C(uint64_t a1)
{
  v2 = sub_100014460();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000E3B8(uint64_t a1)
{
  v2 = sub_100014268();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000E3F4(uint64_t a1)
{
  v2 = sub_100014268();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000E430(uint64_t a1)
{
  v2 = sub_1000143B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000E46C(uint64_t a1)
{
  v2 = sub_1000143B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000E4B4@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_10000E4E4(uint64_t a1)
{
  v2 = sub_100014214();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000E520(uint64_t a1)
{
  v2 = sub_100014214();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000E55C(uint64_t a1)
{
  v2 = sub_10001416C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000E598(uint64_t a1)
{
  v2 = sub_10001416C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10000E5D4@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100011AEC(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_10000E624()
{
  v1 = 0x796669746E656469;
  v2 = 0x6E617254656C6966;
  if (*v0 != 2)
  {
    v2 = 0x7365547472617473;
  }

  if (*v0)
  {
    v1 = 0x737574617473;
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

uint64_t sub_10000E6A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10001272C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10000E6DC(uint64_t a1)
{
  v2 = sub_100014508();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000E718(uint64_t a1)
{
  v2 = sub_100014508();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000E754(uint64_t a1)
{
  v2 = sub_100014604();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000E790(uint64_t a1)
{
  v2 = sub_100014604();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000E7CC(uint64_t a1)
{
  v2 = sub_100014754();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000E808(uint64_t a1)
{
  v2 = sub_100014754();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000E844(uint64_t a1)
{
  v2 = sub_10001455C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000E880(uint64_t a1)
{
  v2 = sub_10001455C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000E8BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_100021C3C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10000E94C(uint64_t a1)
{
  v2 = sub_1000146AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000E988(uint64_t a1)
{
  v2 = sub_1000146AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000E9E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100012898(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10000EA18(uint64_t a1)
{
  v2 = sub_100018D6C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000EA54(uint64_t a1)
{
  v2 = sub_100018D6C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000EAAC(uint64_t a1)
{
  v2 = sub_100019060();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000EAE8(uint64_t a1)
{
  v2 = sub_100019060();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000EB24(uint64_t a1)
{
  v2 = sub_10001900C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000EB60(uint64_t a1)
{
  v2 = sub_10001900C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000EB9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656D614E656C6966 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_100021C3C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10000EC24(uint64_t a1)
{
  v2 = sub_100018FB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000EC60(uint64_t a1)
{
  v2 = sub_100018FB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000EC9C(uint64_t a1)
{
  v2 = sub_100018F10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000ECD8(uint64_t a1)
{
  v2 = sub_100018F10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000ED14(uint64_t a1)
{
  v2 = sub_100018F64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000ED50(uint64_t a1)
{
  v2 = sub_100018F64();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000ED8C(uint64_t a1)
{
  v2 = sub_100018EBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000EDC8(uint64_t a1)
{
  v2 = sub_100018EBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000EE04(uint64_t a1)
{
  v2 = sub_100018E14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000EE40(uint64_t a1)
{
  v2 = sub_100018E14();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000EE7C(uint64_t a1)
{
  v2 = sub_100018E68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000EEB8(uint64_t a1)
{
  v2 = sub_100018E68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000EEF4(uint64_t a1)
{
  v2 = sub_100018DC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000EF30(uint64_t a1)
{
  v2 = sub_100018DC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000EF6C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_100012BA0(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_10000EFBC()
{
  v1 = 1702521203;
  if (*v0 != 1)
  {
    v1 = 0x6D75736B63656863;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_10000F008@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000139E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10000F030(uint64_t a1)
{
  v2 = sub_100013D10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000F06C(uint64_t a1)
{
  v2 = sub_100013D10();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10000F0A8@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100013AFC(a2, v6);
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

uint64_t sub_10000F120()
{
  if (*v0)
  {
    return 0x6C656E6E616863;
  }

  else
  {
    return 1701080941;
  }
}

uint64_t sub_10000F154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701080941 && a2 == 0xE400000000000000;
  if (v5 || (sub_100021C3C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C656E6E616863 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100021C3C();

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

uint64_t sub_10000F23C(uint64_t a1)
{
  v2 = sub_10001790C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000F278(uint64_t a1)
{
  v2 = sub_10001790C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000F2B4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000147FC(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_10000F2E0()
{
  v1 = 0x656D756C6F76;
  if (*v0 != 1)
  {
    v1 = 0x73756C756D697473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E656E6F706D6F63;
  }
}

uint64_t sub_10000F344@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000149FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10000F378(uint64_t a1)
{
  v2 = sub_100014D1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000F3B4(uint64_t a1)
{
  v2 = sub_100014D1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10000F3F0@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100014B1C(a2, v6);
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

Swift::Int sub_10000F444()
{
  sub_100021CBC();
  sub_10002190C();

  return sub_100021CDC();
}

uint64_t sub_10000F508(uint64_t a1)
{
  sub_10002190C();
}

Swift::Int sub_10000F5B8(uint64_t a1)
{
  sub_100021CBC();
  sub_10002190C();

  return sub_100021CDC();
}

unint64_t sub_10000F678@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100016300(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10000F6A8(uint64_t *a1@<X8>)
{
  v2 = 0xEA00000000006D6FLL;
  v3 = 0x74746F427466654CLL;
  v4 = 0xE400000000000000;
  v5 = 1801675074;
  if (*v1 != 2)
  {
    v5 = 0x746F427468676952;
    v4 = 0xEB000000006D6F74;
  }

  if (*v1)
  {
    v3 = 0x746E6F7246;
    v2 = 0xE500000000000000;
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

uint64_t sub_10000F7A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656E6F706D6F63 && a2 == 0xE900000000000074)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_100021C3C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10000F834(uint64_t a1)
{
  v2 = sub_100018AF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000F870(uint64_t a1)
{
  v2 = sub_100018AF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10000F8AC@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_10001634C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000F8D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a3;
  v6 = sub_100009BDC(&qword_1000365B8, &qword_100027FE8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  sub_10000BEFC(a1, a1[3]);
  sub_1000190B4();
  sub_100021D2C();
  v14 = 0;
  sub_100021BEC();
  if (v4)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v13 = 1;
  sub_100021BEC();
  v12 = 2;
  sub_100021BEC();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10000FA88(void *a1, uint64_t a2)
{
  v4 = sub_100009BDC(&qword_1000362B0, &qword_100027360);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_10000BEFC(a1, a1[3]);
  sub_1000173F4();
  sub_100021D2C();
  v9[1] = a2;
  sub_100009BDC(&qword_100036248, &qword_100027338);
  sub_1000176E4();
  sub_100021C0C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10000FC04@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000164BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10000FC2C(uint64_t a1)
{
  v2 = sub_1000190B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000FC68(uint64_t a1)
{
  v2 = sub_1000190B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000FCA4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000165DC(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_10000FD08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656C6966 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_100021C3C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10000FD8C(uint64_t a1)
{
  v2 = sub_1000173F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000FDC8(uint64_t a1)
{
  v2 = sub_1000173F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10000FE04@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000167A8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000FE4C()
{
  v1 = 0x6C6F636F746F7270;
  if (*v0 != 1)
  {
    v1 = 0x656C69666F7270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E656B6F74;
  }
}

uint64_t sub_10000FEB0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100016958(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10000FED8(uint64_t a1)
{
  v2 = sub_1000175C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000FF14(uint64_t a1)
{
  v2 = sub_1000175C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000FF50@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100016A74(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_10000FF98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73736572676F7270 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_100021C3C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100010020(uint64_t a1)
{
  v2 = sub_100017518();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001005C(uint64_t a1)
{
  v2 = sub_100017518();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100010098@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100016CAC(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000100C4()
{
  if (*v0)
  {
    return 0x737475706E69;
  }

  else
  {
    return 0x74757074756FLL;
  }
}

uint64_t sub_1000100F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74757074756FLL && a2 == 0xE600000000000000;
  if (v6 || (sub_100021C3C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x737475706E69 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100021C3C();

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

uint64_t sub_1000101C4(uint64_t a1)
{
  v2 = sub_1000172F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100010200(uint64_t a1)
{
  v2 = sub_1000172F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10001023C@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100016E50(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_100010280()
{
  if (*v0)
  {
    return 0x73746C75736572;
  }

  else
  {
    return 0x6F43737574617473;
  }
}

uint64_t sub_1000102C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F43737574617473 && a2 == 0xEA00000000006564;
  if (v6 || (sub_100021C3C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73746C75736572 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100021C3C();

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

uint64_t sub_1000103A4(uint64_t a1)
{
  v2 = sub_1000172A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000103E0(uint64_t a1)
{
  v2 = sub_1000172A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001041C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10001709C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_100010448(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a4;
  v15 = a5;
  v8 = sub_100009BDC(&qword_1000362E0, &qword_100027370);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_10000BEFC(a1, a1[3]);
  sub_100017864();
  sub_100021D2C();
  LOBYTE(v16) = 0;
  sub_100021BEC();
  if (!v5)
  {
    v16 = a3;
    v17 = v14;
    v18 = v15;
    v19 = 1;
    sub_1000178B8();
    sub_100021C0C();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1000105D8(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_100009BDC(&qword_1000362C8, &qword_100027368);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v13 - v10;
  sub_10000BEFC(a1, a1[3]);
  sub_1000177BC();
  sub_100021D2C();
  v13[1] = a2;
  v13[2] = a3;
  v14 = a4;
  sub_100017810();
  sub_100021C0C();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100010734(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a3;
  v8 = sub_100009BDC(&qword_100036298, &qword_100027358);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_10000BEFC(a1, a1[3]);
  sub_100017690();
  sub_100021D2C();
  v15 = a2;
  v14 = 0;
  sub_100009BDC(&qword_1000361F8, &qword_100027318);
  sub_10000C468(&qword_1000362A8, &qword_1000361F8, &qword_100027318, &unk_100027CF8);
  sub_100021C0C();
  if (v4)
  {
    return (*(v9 + 8))(v11, v8);
  }

  v15 = v13;
  v14 = 1;
  sub_100021C0C();
  v15 = a4;
  v14 = 2;
  sub_100021C0C();
  return (*(v9 + 8))(v11, v8);
}

Swift::Int sub_100010958()
{
  v1 = *v0;
  sub_100021CBC();
  sub_100021CCC(v1);
  return sub_100021CDC();
}

Swift::Int sub_1000109A0(uint64_t a1)
{
  v2 = *v1;
  sub_100021CBC();
  sub_100021CCC(v2);
  return sub_100021CDC();
}

uint64_t sub_1000109E4()
{
  if (*v0)
  {
    return 0x6F6973726556736FLL;
  }

  else
  {
    return 0x6C6F636F746F7270;
  }
}

uint64_t sub_100010A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6F636F746F7270 && a2 == 0xEF6E6F6973726556;
  if (v6 || (sub_100021C3C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100021C3C();

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

uint64_t sub_100010B1C(uint64_t a1)
{
  v2 = sub_100017864();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100010B58(uint64_t a1)
{
  v2 = sub_100017864();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100010BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_100021C3C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100010C4C(uint64_t a1)
{
  v2 = sub_1000177BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100010C88(uint64_t a1)
{
  v2 = sub_1000177BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100010CE4()
{
  v1 = 0x6574656D61726170;
  if (*v0 != 1)
  {
    v1 = 0x6369666963657073;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7461636964657270;
  }
}

uint64_t sub_100010D50@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100018B9C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100010D78(uint64_t a1)
{
  v2 = sub_100017690();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100010DB4(uint64_t a1)
{
  v2 = sub_100017690();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100010E10@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v44 = a5;
  v9 = sub_100021A4C();
  v42 = *(v9 - 8);
  v43 = v9;
  v10 = __chkstk_darwin(v9);
  v48 = &v37 - v11;
  v45 = *(a2 - 8);
  __chkstk_darwin(v10);
  v41 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = *(AssociatedTypeWitness - 8);
  v13 = __chkstk_darwin(AssociatedTypeWitness);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v49 = a4;
  v50 = &v37 - v16;
  v46 = a3;
  v17 = type metadata accessor for RawValueDecodable(0, a2, a3, a4);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v37 - v19;
  sub_10000BEFC(a1, a1[3]);
  v21 = v53;
  sub_100021CFC();
  if (!v21)
  {
    v38 = v20;
    v39 = v18;
    v40 = v17;
    v53 = a1;
    v23 = v47;
    v22 = v48;
    sub_10000BEFC(v52, v52[3]);
    sub_100021C4C();
    v24 = v23;
    v25 = v15;
    v26 = *(v23 + 16);
    v26(v25, v50, AssociatedTypeWitness);
    v27 = v46;
    sub_10002194C();
    v28 = v45;
    if ((*(v45 + 48))(v22, 1, a2) != 1)
    {
      (*(v24 + 8))(v50, AssociatedTypeWitness);
      v34 = *(v28 + 32);
      v35 = v41;
      v34(v41, v22, a2);
      v36 = v38;
      v34(v38, v35, a2);
      sub_10000C4B8(v52);
      (*(v39 + 32))(v44, v36, v40);
      v32 = v53;
      return sub_10000C4B8(v32);
    }

    (*(v42 + 8))(v22, v43);
    type metadata accessor for RawValueDecodable.DecodingError(0, a2, v27, v49);
    swift_getWitnessTable();
    swift_allocError();
    v29 = v50;
    v30 = AssociatedTypeWitness;
    v26(v31, v50, AssociatedTypeWitness);
    swift_willThrow();
    (*(v24 + 8))(v29, v30);
    sub_10000C4B8(v52);
    a1 = v53;
  }

  v32 = a1;
  return sub_10000C4B8(v32);
}

uint64_t sub_1000112C8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v5 = sub_100021A4C();
  v42 = *(v5 - 8);
  v43 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = &v37 - v7;
  v45 = *(a2 - 8);
  __chkstk_darwin(v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SerializedCodable(0, a2, v11, v12);
  v41 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v37 - v14;
  sub_10000BEFC(a1, a1[3]);
  v16 = v46;
  sub_100021CFC();
  if (v16)
  {
    goto LABEL_10;
  }

  v38 = v15;
  v39 = v10;
  v40 = v13;
  v46 = v8;
  sub_10000BEFC(v48, v48[3]);
  sub_100018A88();
  sub_100021C4C();
  v17 = v47[0];
  v18 = v47[1];
  v19 = objc_opt_self();
  isa = sub_10002172C().super.isa;
  v47[0] = 0;
  v21 = [v19 JSONObjectWithData:isa options:0 error:v47];

  if (!v21)
  {
    v32 = v47[0];
    sub_10002166C();

    swift_willThrow();
    v33 = v17;
    goto LABEL_8;
  }

  v22 = a1;
  v23 = v17;
  v24 = v47[0];
  sub_100021A5C();
  swift_unknownObjectRelease();
  v25 = v46;
  v26 = a2;
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v45 + 56))(v25, 1, 1, a2);
    (*(v42 + 8))(v25, v43);
    type metadata accessor for SerializedCodable.DecodingError(0, a2, v34, v35);
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();
    v33 = v23;
LABEL_8:
    sub_100009688(v33, v18);
    sub_10000C4B8(v48);
LABEL_10:
    v31 = a1;
    return sub_10000C4B8(v31);
  }

  sub_100009688(v23, v18);
  v27 = v45;
  (*(v45 + 56))(v25, 0, 1, a2);
  v28 = *(v27 + 32);
  v29 = v39;
  v28(v39, v25, a2);
  v30 = v38;
  v28(v38, v29, v26);
  sub_10000C4B8(v48);
  (*(v41 + 32))(v44, v30, v40);
  v31 = v22;
  return sub_10000C4B8(v31);
}

uint64_t sub_100011730(void *a1, uint64_t a2)
{
  sub_10000BEFC(a1, a1[3]);
  sub_100021D1C();
  v2 = objc_opt_self();
  v10[0] = 0;
  v3 = [v2 dataWithJSONObject:sub_100021C2C() options:0 error:v10];
  swift_unknownObjectRelease();
  v4 = v10[0];
  if (v3)
  {
    v5 = sub_10002173C();
    v7 = v6;

    v10[0] = v5;
    v10[1] = v7;
    sub_100018CC8(v11, v11[3]);
    sub_100018D18();
    sub_100021C5C();
    sub_100009688(v5, v7);
  }

  else
  {
    v8 = v4;
    sub_10002166C();

    swift_willThrow();
  }

  return sub_10000C4B8(v11);
}

uint64_t sub_1000118D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x796669746E656469 && a2 == 0xE800000000000000;
  if (v4 || (sub_100021C3C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73736572676F7270 && a2 == 0xE800000000000000 || (sub_100021C3C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E617254656C6966 && a2 == 0xEC00000072656673 || (sub_100021C3C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F63655279616C70 && a2 == 0xEF6F696475416472 || (sub_100021C3C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F636552706F7473 && a2 == 0xED0000676E696472 || (sub_100021C3C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x706D6F4374736574 && a2 == 0xEC0000006574656CLL)
  {

    return 5;
  }

  else
  {
    v6 = sub_100021C3C();

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

uint64_t sub_100011AEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = sub_100009BDC(&qword_100035F80, &qword_100025F78);
  v4 = *(v3 - 8);
  v79 = v3;
  v80 = v4;
  __chkstk_darwin(v3);
  v85 = &v66 - v5;
  v74 = sub_100009BDC(&qword_100035F88, &qword_100025F80);
  v71 = *(v74 - 8);
  __chkstk_darwin(v74);
  v84 = &v66 - v6;
  v7 = sub_100009BDC(&qword_100035F90, &qword_100025F88);
  v8 = *(v7 - 8);
  v77 = v7;
  v78 = v8;
  __chkstk_darwin(v7);
  v83 = &v66 - v9;
  v10 = sub_100009BDC(&qword_100035F98, &qword_100025F90);
  v75 = *(v10 - 8);
  v76 = v10;
  __chkstk_darwin(v10);
  v82 = &v66 - v11;
  v12 = sub_100009BDC(&qword_100035FA0, &qword_100025F98);
  v72 = *(v12 - 8);
  v73 = v12;
  __chkstk_darwin(v12);
  v14 = &v66 - v13;
  v15 = sub_100009BDC(&qword_100035FA8, &qword_100025FA0);
  v70 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v66 - v16;
  v18 = sub_100009BDC(&qword_100035FB0, &qword_100025FA8);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v66 - v20;
  v22 = a1[3];
  v93 = a1;
  sub_10000BEFC(a1, v22);
  sub_100014118();
  v23 = v86;
  sub_100021D0C();
  if (v23)
  {
    return sub_10000C4B8(v93);
  }

  v67 = v15;
  v68 = v14;
  v25 = v82;
  v24 = v83;
  v26 = v84;
  v27 = v85;
  v69 = 0;
  v86 = v19;
  v28 = v18;
  v29 = sub_100021BBC();
  if (*(v29 + 16) != 1 || (v30 = *(v29 + 32), v30 == 6))
  {
    v35 = sub_100021ADC();
    swift_allocError();
    v37 = v36;
    sub_100009BDC(&qword_100035FC0, &qword_100025FB0);
    *v37 = &type metadata for IncomingMessage;
    sub_100021B4C();
    sub_100021ACC();
    (*(*(v35 - 8) + 104))(v37, enum case for DecodingError.typeMismatch(_:), v35);
    swift_willThrow();
    (*(v86 + 8))(v21, v18);
    goto LABEL_10;
  }

  if (*(v29 + 32) <= 2u)
  {
    if (*(v29 + 32))
    {
      if (v30 == 1)
      {
        LOBYTE(v87) = 1;
        sub_1000143B8();
        v31 = v68;
        v32 = v69;
        sub_100021B3C();
        v33 = v21;
        v34 = v86;
        if (v32)
        {
          (*(v86 + 8))(v33, v18);
LABEL_10:
          swift_unknownObjectRelease();
          return sub_10000C4B8(v93);
        }

        v56 = v33;
        sub_10001440C();
        v57 = v73;
        sub_100021BAC();
        v43 = 0;
        v69 = 0;
        (*(v72 + 8))(v31, v57);
        (*(v34 + 8))(v56, v18);
        swift_unknownObjectRelease();
        v60 = 0;
        v61 = 0;
        v62 = 0;
        v63 = 0;
        v64 = v87;
        v65 = 1;
        goto LABEL_30;
      }

      LOBYTE(v87) = 2;
      sub_100014310();
      v48 = v25;
      v49 = v69;
      sub_100021B3C();
      v50 = v86;
      if (!v49)
      {
        sub_100014364();
        v51 = v76;
        sub_100021BAC();
        v43 = 0;
        v69 = 0;
        (*(v75 + 8))(v48, v51);
        (*(v50 + 8))(v21, v18);
        swift_unknownObjectRelease();
        v60 = 0;
        v61 = 0;
        v62 = 0;
        v63 = 0;
        v64 = v87;
        v65 = 2;
LABEL_30:
        v59 = v81;
        goto LABEL_31;
      }
    }

    else
    {
      LOBYTE(v87) = 0;
      sub_100014460();
      v44 = v69;
      sub_100021B3C();
      if (!v44)
      {
        sub_1000144B4();
        v54 = v67;
        sub_100021BAC();
        (*(v70 + 8))(v17, v54);
        (*(v86 + 8))(v21, v18);
        swift_unknownObjectRelease();
        v69 = 0;
        v62 = 0;
        v63 = 0;
        v65 = 0;
        v64 = v87;
        v43 = v88;
        v60 = v89;
        v61 = v90;
        goto LABEL_30;
      }
    }

    (*(v86 + 8))(v21, v18);
    goto LABEL_10;
  }

  v82 = v21;
  v39 = v81;
  v66 = v29;
  if (v30 != 3)
  {
    v40 = v86;
    if (v30 == 4)
    {
      LOBYTE(v87) = 4;
      sub_100014214();
      v41 = v82;
      v42 = v69;
      sub_100021B3C();
      v43 = v42;
      if (v42)
      {
        (*(v40 + 8))(v41, v28);
        goto LABEL_10;
      }

      v69 = 0;
      (*(v71 + 8))(v26, v74);
      (*(v40 + 8))(v41, v28);
      swift_unknownObjectRelease();
      v64 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v63 = 0;
      v65 = 5;
    }

    else
    {
      LOBYTE(v87) = 5;
      sub_10001416C();
      v52 = v82;
      v53 = v69;
      sub_100021B3C();
      if (v53)
      {
        (*(v40 + 8))(v52, v28);
        swift_unknownObjectRelease();
        return sub_10000C4B8(v93);
      }

      sub_1000141C0();
      v58 = v79;
      sub_100021BAC();
      v69 = 0;
      (*(v80 + 8))(v27, v58);
      (*(v40 + 8))(v82, v28);
      swift_unknownObjectRelease();
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v63 = 0;
      v64 = v87;
      v43 = v88;
      v65 = 4;
    }

    goto LABEL_30;
  }

  LOBYTE(v87) = 3;
  sub_100014268();
  v45 = v82;
  v46 = v69;
  sub_100021B3C();
  v47 = v86;
  if (v46)
  {
    (*(v86 + 8))(v45, v28);
    swift_unknownObjectRelease();
    return sub_10000C4B8(v93);
  }

  sub_1000142BC();
  v55 = v77;
  sub_100021BAC();
  v69 = 0;
  (*(v78 + 8))(v24, v55);
  (*(v47 + 8))(v82, v28);
  swift_unknownObjectRelease();
  v64 = v87;
  v43 = v88;
  v60 = v89;
  v61 = v90;
  v59 = v39;
  v65 = 3;
  v62 = v91;
  v63 = v92;
LABEL_31:
  result = sub_10000C4B8(v93);
  *v59 = v64;
  *(v59 + 8) = v43;
  *(v59 + 16) = v60;
  *(v59 + 24) = v61;
  *(v59 + 32) = v62;
  *(v59 + 40) = v63;
  *(v59 + 48) = v65;
  return result;
}

uint64_t sub_10001272C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x796669746E656469 && a2 == 0xE800000000000000;
  if (v4 || (sub_100021C3C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_100021C3C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E617254656C6966 && a2 == 0xEC00000072656673 || (sub_100021C3C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365547472617473 && a2 == 0xE900000000000074)
  {

    return 3;
  }

  else
  {
    v6 = sub_100021C3C();

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

uint64_t sub_100012898(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6965636552646964 && a2 == 0xEE00656C69466576;
  if (v4 || (sub_100021C3C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100023B60 == a2 || (sub_100021C3C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646E6553656C6966 && a2 == 0xED0000726F727245 || (sub_100021C3C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100023B80 == a2 || (sub_100021C3C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100023BA0 == a2 || (sub_100021C3C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6B63616279616C70 && a2 == 0xED0000726F727245 || (sub_100021C3C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100023BC0 == a2 || (sub_100021C3C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000100023BE0 == a2 || (sub_100021C3C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E6964726F636572 && a2 == 0xEE00726F72724567)
  {

    return 8;
  }

  else
  {
    v6 = sub_100021C3C();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_100012BA0(void *a1)
{
  v2 = sub_100009BDC(&qword_1000365C8, &qword_100027FF0);
  v82 = *(v2 - 8);
  v83 = v2;
  __chkstk_darwin(v2);
  v87 = &v63 - v3;
  v4 = sub_100009BDC(&qword_1000365D0, &qword_100027FF8);
  v80 = *(v4 - 8);
  v81 = v4;
  __chkstk_darwin(v4);
  v90 = &v63 - v5;
  v6 = sub_100009BDC(&qword_1000365D8, &qword_100028000);
  v78 = *(v6 - 8);
  v79 = v6;
  __chkstk_darwin(v6);
  v89 = &v63 - v7;
  v8 = sub_100009BDC(&qword_1000365E0, &qword_100028008);
  v9 = *(v8 - 8);
  v76 = v8;
  v77 = v9;
  __chkstk_darwin(v8);
  v84 = &v63 - v10;
  v11 = sub_100009BDC(&qword_1000365E8, &qword_100028010);
  v12 = *(v11 - 8);
  v74 = v11;
  v75 = v12;
  __chkstk_darwin(v11);
  v88 = &v63 - v13;
  v70 = sub_100009BDC(&qword_1000365F0, &qword_100028018);
  v72 = *(v70 - 8);
  __chkstk_darwin(v70);
  v85 = &v63 - v14;
  v73 = sub_100009BDC(&qword_1000365F8, &qword_100028020);
  v71 = *(v73 - 8);
  __chkstk_darwin(v73);
  v86 = &v63 - v15;
  v69 = sub_100009BDC(&qword_100036600, &qword_100028028);
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v17 = &v63 - v16;
  v18 = sub_100009BDC(&qword_100036608, &qword_100028030);
  v67 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v63 - v19;
  v21 = sub_100009BDC(&qword_100036610, &qword_100028038);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v63 - v23;
  v25 = a1[3];
  v92 = a1;
  sub_10000BEFC(a1, v25);
  sub_100018D6C();
  v26 = v91;
  sub_100021D0C();
  if (v26)
  {
    goto LABEL_12;
  }

  v63 = v18;
  v28 = v88;
  v27 = v89;
  v64 = 0;
  v29 = v90;
  v65 = v22;
  v66 = v24;
  v91 = sub_100021BBC();
  if (*(v91 + 16) != 1 || (v30 = *(v91 + 32), v30 == 9))
  {
    v34 = sub_100021ADC();
    swift_allocError();
    v36 = v35;
    sub_100009BDC(&qword_100035FC0, &qword_100025FB0);
    *v36 = &type metadata for Status;
    v37 = v66;
    sub_100021B4C();
    sub_100021ACC();
    (*(*(v34 - 8) + 104))(v36, enum case for DecodingError.typeMismatch(_:), v34);
    swift_willThrow();
LABEL_11:
    (*(v65 + 8))(v37, v21);
    swift_unknownObjectRelease();
LABEL_12:
    v38 = v92;
    goto LABEL_13;
  }

  if (*(v91 + 32) > 3u)
  {
    v31 = v66;
    if (*(v91 + 32) <= 5u)
    {
      v32 = v92;
      if (v30 == 4)
      {
        v97 = 4;
        sub_100018F10();
        v48 = v64;
        sub_100021B3C();
        if (!v48)
        {
          (*(v75 + 8))(v28, v74);
          (*(v65 + 8))(v31, v21);
          swift_unknownObjectRelease();
          v21 = 1;
          goto LABEL_39;
        }
      }

      else
      {
        v98 = 5;
        sub_100018EBC();
        v57 = v84;
        v58 = v64;
        sub_100021B3C();
        if (!v58)
        {
          (*(v77 + 8))(v57, v76);
          (*(v65 + 8))(v31, v21);
          swift_unknownObjectRelease();
          v21 = 2;
          goto LABEL_39;
        }
      }
    }

    else
    {
      v32 = v92;
      if (v30 == 6)
      {
        v99 = 6;
        sub_100018E68();
        v49 = v64;
        sub_100021B3C();
        if (!v49)
        {
          (*(v78 + 8))(v27, v79);
          (*(v65 + 8))(v31, v21);
          swift_unknownObjectRelease();
          v21 = 3;
          goto LABEL_39;
        }
      }

      else if (v30 == 7)
      {
        v100 = 7;
        sub_100018E14();
        v33 = v64;
        sub_100021B3C();
        if (!v33)
        {
          (*(v80 + 8))(v29, v81);
          (*(v65 + 8))(v31, v21);
          swift_unknownObjectRelease();
          v21 = 4;
LABEL_39:
          v38 = v32;
          goto LABEL_13;
        }
      }

      else
      {
        v101 = 8;
        sub_100018DC0();
        v55 = v87;
        v56 = v64;
        sub_100021B3C();
        if (!v56)
        {
          (*(v82 + 8))(v55, v83);
          (*(v65 + 8))(v31, v21);
          swift_unknownObjectRelease();
          v21 = 5;
          goto LABEL_39;
        }
      }
    }

    goto LABEL_34;
  }

  if (*(v91 + 32) <= 1u)
  {
    v40 = v64;
    if (!*(v91 + 32))
    {
      v93[0] = 0;
      sub_100019060();
      v41 = v66;
      sub_100021B3C();
      v32 = v92;
      if (!v40)
      {
        v59 = v21;
        v60 = v63;
        v21 = sub_100021B6C();
        (*(v67 + 8))(v20, v60);
        (*(v65 + 8))(v41, v59);
        swift_unknownObjectRelease();
        goto LABEL_39;
      }

      v42 = *(v65 + 8);
      v43 = v41;
      goto LABEL_35;
    }

    v94 = 1;
    sub_10001900C();
    v37 = v66;
    sub_100021B3C();
    if (!v40)
    {
      v50 = v21;
      v51 = v69;
      v52 = sub_100021B6C();
      v53 = v65;
      v21 = v52;
      (*(v68 + 8))(v17, v51);
      (*(v53 + 8))(v66, v50);
      swift_unknownObjectRelease();
      v38 = v92;
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v44 = v64;
  if (v30 != 2)
  {
    v96 = 3;
    sub_100018F64();
    v54 = v85;
    v31 = v66;
    sub_100021B3C();
    v32 = v92;
    if (!v44)
    {
      (*(v72 + 8))(v54, v70);
      (*(v65 + 8))(v31, v21);
      swift_unknownObjectRelease();
      v21 = 0;
      goto LABEL_39;
    }

LABEL_34:
    v42 = *(v65 + 8);
    v43 = v31;
LABEL_35:
    v42(v43, v21);
    swift_unknownObjectRelease();
    v38 = v32;
    goto LABEL_13;
  }

  v95 = 2;
  sub_100018FB8();
  v45 = v86;
  v46 = v66;
  sub_100021B3C();
  v47 = v92;
  if (v44)
  {
    (*(v65 + 8))(v46, v21);
  }

  else
  {
    v61 = v21;
    v62 = v73;
    v21 = sub_100021B6C();
    (*(v71 + 8))(v45, v62);
    (*(v65 + 8))(v46, v61);
  }

  swift_unknownObjectRelease();
  v38 = v47;
LABEL_13:
  sub_10000C4B8(v38);
  return v21;
}

uint64_t sub_1000139E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_100021C3C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000 || (sub_100021C3C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D75736B63656863 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_100021C3C();

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

uint64_t sub_100013AFC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100009BDC(&qword_100035F50, &qword_100025BC0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_10000BEFC(a1, a1[3]);
  sub_100013D10();
  sub_100021D0C();
  if (v2)
  {
    return sub_10000C4B8(a1);
  }

  v22 = 0;
  v9 = sub_100021B6C();
  v11 = v10;
  v12 = v9;
  v21 = 1;
  v19 = sub_100021B9C();
  v20 = 2;
  v13 = sub_100021B6C();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = sub_10000C4B8(a1);
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v19;
  a2[3] = v13;
  a2[4] = v16;
  return result;
}

unint64_t sub_100013D10()
{
  result = qword_100035F58;
  if (!qword_100035F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035F58);
  }

  return result;
}

uint64_t sub_100013D64(uint64_t a1)
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

__n128 sub_100013D8C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100013DA0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_100013DE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_100013E48(uint64_t a1)
{
  if ((*(a1 + 48) & 7u) <= 4)
  {
    return *(a1 + 48) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 sub_100013E64(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100013E80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 49))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 48);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100013EC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_100013F1C(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_100013F54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100013F9C(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

unint64_t sub_100014014()
{
  result = qword_100035F68;
  if (!qword_100035F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035F68);
  }

  return result;
}

unint64_t sub_10001406C()
{
  result = qword_100035F70;
  if (!qword_100035F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035F70);
  }

  return result;
}

unint64_t sub_1000140C4()
{
  result = qword_100035F78;
  if (!qword_100035F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035F78);
  }

  return result;
}

unint64_t sub_100014118()
{
  result = qword_100035FB8;
  if (!qword_100035FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035FB8);
  }

  return result;
}

unint64_t sub_10001416C()
{
  result = qword_100035FC8;
  if (!qword_100035FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035FC8);
  }

  return result;
}

unint64_t sub_1000141C0()
{
  result = qword_100035FD0;
  if (!qword_100035FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035FD0);
  }

  return result;
}

unint64_t sub_100014214()
{
  result = qword_100035FD8;
  if (!qword_100035FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035FD8);
  }

  return result;
}

unint64_t sub_100014268()
{
  result = qword_100035FE0;
  if (!qword_100035FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035FE0);
  }

  return result;
}

unint64_t sub_1000142BC()
{
  result = qword_100035FE8;
  if (!qword_100035FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035FE8);
  }

  return result;
}

unint64_t sub_100014310()
{
  result = qword_100035FF0;
  if (!qword_100035FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035FF0);
  }

  return result;
}

unint64_t sub_100014364()
{
  result = qword_100035FF8;
  if (!qword_100035FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035FF8);
  }

  return result;
}

unint64_t sub_1000143B8()
{
  result = qword_100036000;
  if (!qword_100036000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036000);
  }

  return result;
}

unint64_t sub_10001440C()
{
  result = qword_100036008;
  if (!qword_100036008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036008);
  }

  return result;
}

unint64_t sub_100014460()
{
  result = qword_100036010;
  if (!qword_100036010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036010);
  }

  return result;
}

unint64_t sub_1000144B4()
{
  result = qword_100036018;
  if (!qword_100036018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036018);
  }

  return result;
}

unint64_t sub_100014508()
{
  result = qword_100036048;
  if (!qword_100036048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036048);
  }

  return result;
}

unint64_t sub_10001455C()
{
  result = qword_100036050;
  if (!qword_100036050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036050);
  }

  return result;
}

unint64_t sub_1000145B0()
{
  result = qword_100036058;
  if (!qword_100036058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036058);
  }

  return result;
}

unint64_t sub_100014604()
{
  result = qword_100036060;
  if (!qword_100036060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036060);
  }

  return result;
}

unint64_t sub_100014658()
{
  result = qword_100036068;
  if (!qword_100036068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036068);
  }

  return result;
}

unint64_t sub_1000146AC()
{
  result = qword_100036070;
  if (!qword_100036070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036070);
  }

  return result;
}

unint64_t sub_100014700()
{
  result = qword_100036078;
  if (!qword_100036078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036078);
  }

  return result;
}

unint64_t sub_100014754()
{
  result = qword_100036080;
  if (!qword_100036080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036080);
  }

  return result;
}

unint64_t sub_1000147A8()
{
  result = qword_100036088;
  if (!qword_100036088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036088);
  }

  return result;
}

uint64_t sub_1000147FC(void *a1)
{
  v2 = sub_100009BDC(&qword_1000362F8, &qword_100027378);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8[-v4];
  sub_10000BEFC(a1, a1[3]);
  sub_10001790C();
  sub_100021D0C();
  sub_100009BDC(&qword_100036308, &qword_100027380);
  v8[7] = 0;
  sub_10000C468(qword_100036310, &qword_100036308, &qword_100027380, &unk_100027B90);
  sub_100021BAC();
  v6 = v9;
  v8[6] = 1;
  sub_100021B8C();
  (*(v3 + 8))(v5, v2);
  sub_10000C4B8(a1);
  return v6;
}

uint64_t sub_1000149FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656E6F706D6F63 && a2 == 0xE900000000000074;
  if (v4 || (sub_100021C3C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D756C6F76 && a2 == 0xE600000000000000 || (sub_100021C3C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73756C756D697473 && a2 == 0xEC000000656C6946)
  {

    return 2;
  }

  else
  {
    v6 = sub_100021C3C();

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

uint64_t sub_100014B1C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100009BDC(&qword_100036090, &unk_100025FE0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18[-v7];
  sub_10000BEFC(a1, a1[3]);
  sub_100014D1C();
  sub_100021D0C();
  if (v2)
  {
    return sub_10000C4B8(a1);
  }

  v18[15] = 0;
  sub_100014D70();
  sub_100021BAC();
  v10 = v19;
  v9 = v20;
  LOBYTE(v19) = 1;
  sub_100021B7C();
  v12 = v11;
  LOBYTE(v19) = 2;
  v13 = sub_100021B6C();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = sub_10000C4B8(a1);
  *a2 = v10;
  *(a2 + 8) = v9;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;
  *(a2 + 32) = v16;
  return result;
}

unint64_t sub_100014D1C()
{
  result = qword_100036098;
  if (!qword_100036098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036098);
  }

  return result;
}

unint64_t sub_100014D70()
{
  result = qword_1000360A0;
  if (!qword_1000360A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000360A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IncomingMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IncomingMessage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for OSVersion(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100015008(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100015050(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1000150A0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

__n128 sub_1000150CC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000150D8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000150F8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for AudioOutput.Component(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100015140(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100015188(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000151D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_100015230(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_1000152C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100015308(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudioOutput.Component(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AudioOutput.Component(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

unint64_t sub_1000153B0(uint64_t a1)
{
  result = sub_1000144B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000153D8(uint64_t a1)
{
  result = sub_10001440C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100015400(uint64_t a1)
{
  result = sub_100014658();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100015428(uint64_t a1)
{
  result = sub_100014364();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100015450(uint64_t a1)
{
  *(a1 + 8) = sub_100015480();
  result = sub_1000154D4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100015480()
{
  result = qword_1000360A8;
  if (!qword_1000360A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000360A8);
  }

  return result;
}

unint64_t sub_1000154D4()
{
  result = qword_1000360B0;
  if (!qword_1000360B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000360B0);
  }

  return result;
}

unint64_t sub_100015528(uint64_t a1)
{
  result = sub_1000142BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100015550(uint64_t a1)
{
  result = sub_1000141C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100015578(uint64_t a1)
{
  result = sub_1000147A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000155A0(uint64_t a1)
{
  result = sub_100014700();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000155C8(uint64_t a1)
{
  result = sub_1000145B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000155F4()
{
  result = qword_1000360B8;
  if (!qword_1000360B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000360B8);
  }

  return result;
}

unint64_t sub_10001564C()
{
  result = qword_1000360C0;
  if (!qword_1000360C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000360C0);
  }

  return result;
}

unint64_t sub_1000156A4()
{
  result = qword_1000360C8;
  if (!qword_1000360C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000360C8);
  }

  return result;
}

unint64_t sub_1000156FC()
{
  result = qword_1000360D0;
  if (!qword_1000360D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000360D0);
  }

  return result;
}

unint64_t sub_100015754()
{
  result = qword_1000360D8;
  if (!qword_1000360D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000360D8);
  }

  return result;
}

unint64_t sub_1000157AC()
{
  result = qword_1000360E0;
  if (!qword_1000360E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000360E0);
  }

  return result;
}

unint64_t sub_100015804()
{
  result = qword_1000360E8;
  if (!qword_1000360E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000360E8);
  }

  return result;
}

unint64_t sub_10001585C()
{
  result = qword_1000360F0;
  if (!qword_1000360F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000360F0);
  }

  return result;
}

unint64_t sub_1000158B4()
{
  result = qword_1000360F8;
  if (!qword_1000360F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000360F8);
  }

  return result;
}

unint64_t sub_10001590C()
{
  result = qword_100036100;
  if (!qword_100036100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036100);
  }

  return result;
}

unint64_t sub_100015964()
{
  result = qword_100036108;
  if (!qword_100036108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036108);
  }

  return result;
}

unint64_t sub_1000159BC()
{
  result = qword_100036110;
  if (!qword_100036110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036110);
  }

  return result;
}

unint64_t sub_100015A14()
{
  result = qword_100036118;
  if (!qword_100036118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036118);
  }

  return result;
}

unint64_t sub_100015A6C()
{
  result = qword_100036120;
  if (!qword_100036120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036120);
  }

  return result;
}

unint64_t sub_100015AC4()
{
  result = qword_100036128;
  if (!qword_100036128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036128);
  }

  return result;
}

unint64_t sub_100015B1C()
{
  result = qword_100036130;
  if (!qword_100036130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036130);
  }

  return result;
}

unint64_t sub_100015B74()
{
  result = qword_100036138;
  if (!qword_100036138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036138);
  }

  return result;
}

unint64_t sub_100015BCC()
{
  result = qword_100036140;
  if (!qword_100036140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036140);
  }

  return result;
}

unint64_t sub_100015C24()
{
  result = qword_100036148;
  if (!qword_100036148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036148);
  }

  return result;
}

unint64_t sub_100015C7C()
{
  result = qword_100036150;
  if (!qword_100036150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036150);
  }

  return result;
}

unint64_t sub_100015CD4()
{
  result = qword_100036158;
  if (!qword_100036158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036158);
  }

  return result;
}

unint64_t sub_100015D2C()
{
  result = qword_100036160;
  if (!qword_100036160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036160);
  }

  return result;
}

unint64_t sub_100015D84()
{
  result = qword_100036168;
  if (!qword_100036168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036168);
  }

  return result;
}

unint64_t sub_100015DDC()
{
  result = qword_100036170;
  if (!qword_100036170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036170);
  }

  return result;
}

unint64_t sub_100015E34()
{
  result = qword_100036178;
  if (!qword_100036178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036178);
  }

  return result;
}

unint64_t sub_100015E8C()
{
  result = qword_100036180;
  if (!qword_100036180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036180);
  }

  return result;
}

unint64_t sub_100015EE4()
{
  result = qword_100036188;
  if (!qword_100036188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036188);
  }

  return result;
}

unint64_t sub_100015F3C()
{
  result = qword_100036190;
  if (!qword_100036190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036190);
  }

  return result;
}

unint64_t sub_100015F94()
{
  result = qword_100036198;
  if (!qword_100036198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036198);
  }

  return result;
}

unint64_t sub_100015FEC()
{
  result = qword_1000361A0;
  if (!qword_1000361A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000361A0);
  }

  return result;
}

unint64_t sub_100016044()
{
  result = qword_1000361A8;
  if (!qword_1000361A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000361A8);
  }

  return result;
}

unint64_t sub_10001609C()
{
  result = qword_1000361B0;
  if (!qword_1000361B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000361B0);
  }

  return result;
}

unint64_t sub_1000160F4()
{
  result = qword_1000361B8;
  if (!qword_1000361B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000361B8);
  }

  return result;
}

unint64_t sub_10001614C()
{
  result = qword_1000361C0;
  if (!qword_1000361C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000361C0);
  }

  return result;
}

unint64_t sub_1000161A4()
{
  result = qword_1000361C8;
  if (!qword_1000361C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000361C8);
  }

  return result;
}

unint64_t sub_1000161FC()
{
  result = qword_1000361D0;
  if (!qword_1000361D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000361D0);
  }

  return result;
}