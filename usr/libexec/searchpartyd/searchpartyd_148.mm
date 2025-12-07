uint64_t sub_101057240(uint64_t a1, uint64_t a2)
{
  v3 = static os_log_type_t.default.getter();
  if (qword_1016950B8 != -1)
  {
    swift_once();
  }

  v4 = qword_10177C400;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10138BBE0;
  v6 = UUID.uuidString.getter();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  v9 = sub_100008C00();
  *(v5 + 64) = v9;
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  swift_errorRetain();
  sub_1000BC4D4(&unk_101696AD0, &qword_10139A2E0);
  v10 = String.init<A>(describing:)();
  *(v5 + 96) = &type metadata for String;
  *(v5 + 104) = v9;
  *(v5 + 72) = v10;
  *(v5 + 80) = v11;
  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "#Accessory - firmwareUpdateRequestForDevice %@ didCompleteWithError %@", 70, 2, v5);

  v12 = type metadata accessor for Transaction();
  __chkstk_darwin(v12);
  if (!a2)
  {
    return static Transaction.named<A>(_:with:)();
  }

  swift_errorRetain();
  static Transaction.named<A>(_:with:)();
}

void sub_1010574B4()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_101055D98(v4, v0 + v2, v5, v6);
}

uint64_t sub_101057550()
{
  v1 = *(type metadata accessor for AccessoryFirmwareUpdateCommandInfo(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_101056958((v0 + v2), v3);
}

uint64_t sub_1010575DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_101057644(uint64_t a1)
{
  type metadata accessor for UUID();
  v3 = *(v1 + 16);

  return sub_101056A04(a1, v3);
}

void sub_1010576B8(uint64_t a1)
{
  type metadata accessor for UUID();
  v3 = *(v1 + 16);

  sub_101056B70(a1, v3);
}

uint64_t sub_10105772C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_101057794(id *a1)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1009ED108(a1, v4, v5, v6);
}

uint64_t sub_101057808(void **a1)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *a1;

  return sub_1009EDC88(v8, v1 + v4, v6, v7);
}

uint64_t sub_1010578B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_101057914()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1010553AC(v3, v0 + v2, v4);
}

uint64_t sub_1010579A4()
{
  updated = type metadata accessor for AccessoryFirmwareUpdateCommandInfo(0);
  v3 = *(updated - 8);
  result = updated - 8;
  v4 = (v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  if (*v4)
  {
    return (*v4)(0);
  }

  return result;
}

uint64_t sub_101057A14()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v4);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  return sub_101051E64(v6, v7, (v0 + v3), v5, (v0 + ((v2 + v4 + 8) & ~v2)));
}

void sub_101057AB4()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = (v0 + v3);
  v7 = *(v0 + v4);
  v8 = *v6;
  v9 = v6[1];

  sub_101054A94(v5, v0 + v2, v8, v9, v7);
}

uint64_t sub_101057B94(uint64_t a1)
{
  v2 = sub_10046C80C();

  return RequestContentRepresentable.description.getter(a1, v2);
}

uint64_t sub_101057BD0(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C48B8, &qword_1013FC2E8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_10105AA18();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v10[7] = 0;
  sub_1000BC4D4(&qword_101698DD8, &qword_1013C44B0);
  sub_10091C270();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v10[6] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v10[5] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_101057D9C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&qword_1016C4838, &unk_1013FBED0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  sub_1000035D0(a1, a1[3]);
  sub_10105A530();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v11[1] = a3;
    v12 = 1;
    sub_1000BC4D4(&qword_101699EB8, &qword_101398AA0);
    sub_1002DE008();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_101057F34()
{
  v1 = 0x6449746E65696C63;
  if (*v0 != 1)
  {
    v1 = 0x41747865746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x53776F6C6C616873;
  }
}

uint64_t sub_101057F9C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_101059DAC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_101057FC4(uint64_t a1)
{
  v2 = sub_10105AA18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_101058000(uint64_t a1)
{
  v2 = sub_10105AA18();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_101058054()
{
  if (*v0)
  {
    return 0x76654464656E776FLL;
  }

  else
  {
    return 0x6570795479656BLL;
  }
}

uint64_t sub_10105809C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6570795479656BLL && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x76654464656E776FLL && a2 == 0xEE00736449656369)
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

uint64_t sub_101058180(uint64_t a1)
{
  v2 = sub_10105A530();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010581BC(uint64_t a1)
{
  v2 = sub_10105A530();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_101058214(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C4810, &qword_1013FBEC8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_10105A3B0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v13 = *v3;
  v14 = v9;
  v15 = *(v3 + 4);
  v12 = 0;
  sub_10105A404();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    *&v13 = *(v3 + 5);
    v12 = 1;
    sub_1000BC4D4(&qword_1016C47D8, &unk_1013FBBE0);
    sub_10105A458();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1010583C4(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v14 = a4;
  v8 = sub_1000BC4D4(&qword_1016C4908, &qword_1013FC618);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_1000035D0(a1, a1[3]);
  sub_10105AF10();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v16 = a3;
  v17 = 0;
  sub_100017D5C(a2, a3);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v15, v16);
  if (!v4)
  {
    v15 = v14;
    v17 = 1;
    sub_1000BC4D4(&qword_1016A3E18, &qword_1013AF270);
    sub_10105AF64(&qword_1016A3E40, &qword_1016A3CB8, &unk_1013AEF5C, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1010585C4()
{
  if (*v0)
  {
    return 0x6863746566;
  }

  else
  {
    return 0x6F43746E65696C63;
  }
}

uint64_t sub_101058608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6863746566 && a2 == 0xE500000000000000)
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

uint64_t sub_1010586E8(uint64_t a1)
{
  v2 = sub_10105A3B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_101058724(uint64_t a1)
{
  v2 = sub_10105A3B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_101058778(uint64_t a1)
{
  v2 = sub_10105A8EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010587B4(uint64_t a1)
{
  v2 = sub_10105A8EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010587F0@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_101059ED0(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
    *(a1 + 17) = HIBYTE(v6) & 1;
  }

  return result;
}

uint64_t sub_10105882C()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x65566769666E6F63;
  }
}

uint64_t sub_101058878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65566769666E6F63 && a2 == 0xED00006E6F697372;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000101349FC0 == a2)
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

uint64_t sub_101058964(uint64_t a1)
{
  v2 = sub_10105A308();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010589A0(uint64_t a1)
{
  v2 = sub_10105A308();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010589DC@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10105A12C(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7 & 1;
    *(a1 + 25) = HIBYTE(v7) & 1;
  }

  return result;
}

uint64_t sub_101058A1C()
{
  if (*v0)
  {
    return 0x6E6F697461636F6CLL;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_101058A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEC0000006F666E49)
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

uint64_t sub_101058B2C(uint64_t a1)
{
  v2 = sub_10105AF10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_101058B68(uint64_t a1)
{
  v2 = sub_10105AF10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_101058BA4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10105ACAC(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_101058BF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v52 = type metadata accessor for HashAlgorithm();
  v8 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for UUID();
  v10 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100907E70(_swiftEmptyArrayStorage);
  sub_1000BC4D4(&qword_1016C47E0, &qword_1013FBBF0);
  v13 = swift_allocObject();
  v14 = v13;
  *(v13 + 16) = xmmword_101385D80;
  v15 = *(a3 + 16);
  if (v15)
  {
    v36 = v13;
    v37 = v12;
    v39 = a1;
    v40 = a2;
    v41 = a4;
    v54 = _swiftEmptyArrayStorage;
    sub_1011244D8(0, v15, 0);
    v17 = *(v10 + 16);
    v16 = v10 + 16;
    v18 = v8;
    v19 = v54;
    v20 = (*(v16 + 64) + 32) & ~*(v16 + 64);
    v38 = a3;
    v21 = a3 + v20;
    v46 = *(v16 + 56);
    v47 = v17;
    v45 = enum case for HashAlgorithm.sha256(_:);
    v43 = (v18 + 8);
    v44 = (v18 + 104);
    v42 = (v16 - 8);
    v48 = v16;
    do
    {
      v22 = v49;
      v23 = v50;
      v47(v49, v21, v50);
      v24 = UUID.data.getter();
      v26 = v25;
      v27 = v51;
      v28 = v52;
      (*v44)(v51, v45, v52);
      v29 = Data.hash(algorithm:)();
      v53 = v30;
      sub_100016590(v24, v26);
      (*v43)(v27, v28);
      (*v42)(v22, v23);
      v54 = v19;
      v32 = v19[2];
      v31 = v19[3];
      if (v32 >= v31 >> 1)
      {
        sub_1011244D8((v31 > 1), v32 + 1, 1);
        v19 = v54;
      }

      v19[2] = v32 + 1;
      v33 = &v19[2 * v32];
      v34 = v53;
      v33[4] = v29;
      v33[5] = v34;
      v21 += v46;
      --v15;
    }

    while (v15);

    a2 = v40;
    a4 = v41;
    a1 = v39;
    v14 = v36;
    v12 = v37;
  }

  else
  {

    v19 = _swiftEmptyArrayStorage;
  }

  *(v14 + 32) = 1;
  *(v14 + 40) = v19;
  *a4 = v12;
  *(a4 + 8) = a1;
  *(a4 + 16) = a2;
  strcpy((a4 + 24), "searchpartyd");
  *(a4 + 37) = 0;
  *(a4 + 38) = -5120;
  *(a4 + 40) = v14;
  return result;
}

uint64_t sub_101058F64(uint64_t a1, uint64_t a2)
{
  v2[48] = a1;
  v2[49] = a2;
  v3 = type metadata accessor for HashAlgorithm();
  v2[50] = v3;
  v2[51] = *(v3 - 8);
  v2[52] = swift_task_alloc();

  return _swift_task_switch(sub_101059024, 0, 0);
}

void sub_101059024()
{
  v1 = *(v0 + 384);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v3 = v1[1];
  v2 = v1[2];
  *(v0 + 176) = *v1;
  *(v0 + 192) = v3;
  *(v0 + 208) = v2;
  sub_101059B34();
  v4 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 424) = 0;
  *(v0 + 432) = v4;
  *(v0 + 440) = v5;
  v6 = v5;
  v7 = v4;

  sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000011;
  *(inited + 16) = xmmword_101391790;
  *(inited + 40) = 0x800000010134EA40;
  v9 = [objc_opt_self() currentDevice];
  if (!v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = v9;
  v11 = [v9 serverFriendlyDescription];

  if (!v11)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v12 = *(v0 + 384);
  *(v0 + 360) = *v12;
  sub_10000B3A8(v0 + 360, &qword_101698DD8, &qword_1013C44B0);
  *(v0 + 296) = *(v12 + 8);
  sub_1002FFC04(v0 + 296);
  *(v0 + 312) = *(v12 + 24);
  sub_1002FFC04(v0 + 312);
  *(v0 + 368) = *(v12 + 40);
  sub_10000B3A8(v0 + 368, &qword_1016C47D8, &unk_1013FBBE0);
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *(inited + 48) = v13;
  *(inited + 56) = v15;
  strcpy((inited + 64), "Accept-Version");
  *(inited + 79) = -18;
  *(inited + 80) = 49;
  *(inited + 88) = 0xE100000000000000;
  strcpy((inited + 96), "Content-Type");
  *(inited + 109) = 0;
  *(inited + 110) = -5120;
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x800000010134F5C0;
  strcpy((inited + 128), "Content-Length");
  *(inited + 143) = -18;
  v16 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v16)
    {
      v17 = BYTE6(v6);
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v17 = 0;
  if (v16 == 2)
  {
    v19 = *(v7 + 16);
    v18 = *(v7 + 24);
    v20 = __OFSUB__(v18, v19);
    v17 = v18 - v19;
    if (v20)
    {
      __break(1u);
LABEL_10:
      LODWORD(v17) = HIDWORD(v7) - v7;
      if (!__OFSUB__(HIDWORD(v7), v7))
      {
        v17 = v17;
        goto LABEL_12;
      }

      __break(1u);
      goto LABEL_16;
    }
  }

LABEL_12:
  *(v0 + 376) = v17;
  v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v21);

  *(inited + 144) = 0;
  *(inited + 152) = 0xE000000000000000;
  *(v0 + 448) = sub_100907E70(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
  swift_arrayDestroy();
  v22 = swift_task_alloc();
  *(v0 + 456) = v22;
  *v22 = v0;
  v22[1] = sub_10105947C;

  sub_100EA476C();
}

uint64_t sub_10105947C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 464) = a1;
  *(v3 + 472) = a2;

  return _swift_task_switch(sub_10105957C, 0, 0);
}

uint64_t sub_10105957C()
{
  v2 = v0[58];
  v1 = v0[59];
  v3 = v0[54];
  v4 = v0[55];
  v5 = v0[51];
  v16 = v0[50];
  v17 = v0[52];
  v0[41] = v2;
  v0[42] = v1;
  v0[31] = &type metadata for Data;
  v0[32] = &protocol witness table for Data;
  v0[28] = v3;
  v0[29] = v4;
  v6 = sub_1000035D0(v0 + 28, &type metadata for Data);
  v8 = *v6;
  v7 = v6[1];
  sub_100017D5C(v2, v1);
  sub_100017D5C(v3, v4);
  sub_100017DB0(v8, v7, (v0 + 41));
  sub_100016590(v2, v1);
  sub_100007BAC(v0 + 28);
  v9 = v0[42];
  v0[60] = v0[41];
  v0[61] = v9;
  (*(v5 + 104))(v17, enum case for HashAlgorithm.sha256(_:), v16);
  v10 = Data.hash(algorithm:)();
  v12 = v11;
  v0[62] = v10;
  v0[63] = v11;
  (*(v5 + 8))(v17, v16);
  v13 = swift_task_alloc();
  v0[64] = v13;
  *v13 = v0;
  v13[1] = sub_101059730;
  v14 = v0[49];

  return sub_100EA87F4(v10, v12, v14);
}

uint64_t sub_101059730(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 520) = v1;

  if (v1)
  {
    v5 = sub_10105994C;
  }

  else
  {
    v6 = v4[62];
    v7 = v4[63];
    v4[66] = a1;
    sub_100016590(v6, v7);
    v5 = sub_101059860;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_101059860()
{
  v12 = v0;
  v1 = v0[66];
  v3 = v0[60];
  v2 = v0[61];
  v4 = v0[56];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = v4;
  sub_10028709C(v1, sub_100EB00A4, 0, isUniquelyReferenced_nonNull_native, &v11);

  sub_100016590(v3, v2);

  v6 = v11;

  v7 = v0[1];
  v8 = v0[54];
  v9 = v0[55];

  return v7(v8, v9, v6);
}

uint64_t sub_10105994C()
{
  v1 = v0[60];
  v2 = v0[61];
  sub_100016590(v0[62], v0[63]);
  sub_100016590(v1, v2);
  if (qword_101694CE0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177BC50);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to generate fetch request attestation header: %{public}@.", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v9 = v0[56];

  v10 = v0[1];
  v11 = v0[54];
  v12 = v0[55];

  return v10(v11, v12, v9);
}

unint64_t sub_101059B34()
{
  result = qword_1016C47D0;
  if (!qword_1016C47D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C47D0);
  }

  return result;
}

uint64_t sub_101059BA8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_101059BF0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 sub_101059C4C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_101059C60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
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

uint64_t sub_101059CA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_101059D00()
{
  result = qword_1016C47E8;
  if (!qword_1016C47E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C47E8);
  }

  return result;
}

unint64_t sub_101059D58()
{
  result = qword_1016C47F0;
  if (!qword_1016C47F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C47F0);
  }

  return result;
}

uint64_t sub_101059DAC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x53776F6C6C616873 && a2 == 0xEC00000073746174;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449746E65696C63 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x41747865746E6F63 && a2 == 0xEA00000000007070)
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

uint64_t sub_101059ED0(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016C4890, &qword_1013FC2D8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  sub_1000035D0(a1, v7);
  sub_10105A8EC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_1000BC4D4(&qword_1016C48A0, &qword_1013FC2E0);
    v9[15] = 0;
    sub_10105A940();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = v10;
    v9[14] = 1;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v9[12] = 2;
    sub_100B770A8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100007BAC(a1);
  return v7;
}

uint64_t sub_10105A12C(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016C47F8, &qword_1013FBEC0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  sub_1000035D0(a1, v7);
  sub_10105A308();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[8] = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v9[7] = 1;
    sub_10105A35C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100007BAC(a1);
  return v7;
}

unint64_t sub_10105A308()
{
  result = qword_1016C4800;
  if (!qword_1016C4800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4800);
  }

  return result;
}

unint64_t sub_10105A35C()
{
  result = qword_1016C4808;
  if (!qword_1016C4808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4808);
  }

  return result;
}

unint64_t sub_10105A3B0()
{
  result = qword_1016C4818;
  if (!qword_1016C4818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4818);
  }

  return result;
}

unint64_t sub_10105A404()
{
  result = qword_1016C4820;
  if (!qword_1016C4820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4820);
  }

  return result;
}

unint64_t sub_10105A458()
{
  result = qword_1016C4828;
  if (!qword_1016C4828)
  {
    sub_1000BC580(&qword_1016C47D8, &unk_1013FBBE0);
    sub_10105A4DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4828);
  }

  return result;
}

unint64_t sub_10105A4DC()
{
  result = qword_1016C4830;
  if (!qword_1016C4830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4830);
  }

  return result;
}

unint64_t sub_10105A530()
{
  result = qword_1016C4840;
  if (!qword_1016C4840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4840);
  }

  return result;
}

unint64_t sub_10105A5D8()
{
  result = qword_1016C4848;
  if (!qword_1016C4848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4848);
  }

  return result;
}

unint64_t sub_10105A630()
{
  result = qword_1016C4850;
  if (!qword_1016C4850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4850);
  }

  return result;
}

unint64_t sub_10105A688()
{
  result = qword_1016C4858;
  if (!qword_1016C4858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4858);
  }

  return result;
}

unint64_t sub_10105A6E0()
{
  result = qword_1016C4860;
  if (!qword_1016C4860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4860);
  }

  return result;
}

unint64_t sub_10105A738()
{
  result = qword_1016C4868;
  if (!qword_1016C4868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4868);
  }

  return result;
}

unint64_t sub_10105A790()
{
  result = qword_1016C4870;
  if (!qword_1016C4870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4870);
  }

  return result;
}

unint64_t sub_10105A7E8()
{
  result = qword_1016C4878;
  if (!qword_1016C4878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4878);
  }

  return result;
}

unint64_t sub_10105A840()
{
  result = qword_1016C4880;
  if (!qword_1016C4880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4880);
  }

  return result;
}

unint64_t sub_10105A898()
{
  result = qword_1016C4888;
  if (!qword_1016C4888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4888);
  }

  return result;
}

unint64_t sub_10105A8EC()
{
  result = qword_1016C4898;
  if (!qword_1016C4898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4898);
  }

  return result;
}

unint64_t sub_10105A940()
{
  result = qword_1016C48A8;
  if (!qword_1016C48A8)
  {
    sub_1000BC580(&qword_1016C48A0, &qword_1013FC2E0);
    sub_10105A9C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C48A8);
  }

  return result;
}

unint64_t sub_10105A9C4()
{
  result = qword_1016C48B0;
  if (!qword_1016C48B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C48B0);
  }

  return result;
}

unint64_t sub_10105AA18()
{
  result = qword_1016C48C0;
  if (!qword_1016C48C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C48C0);
  }

  return result;
}

unint64_t sub_10105AAA0()
{
  result = qword_1016C48C8;
  if (!qword_1016C48C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C48C8);
  }

  return result;
}

unint64_t sub_10105AAF8()
{
  result = qword_1016C48D0;
  if (!qword_1016C48D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C48D0);
  }

  return result;
}

unint64_t sub_10105AB50()
{
  result = qword_1016C48D8;
  if (!qword_1016C48D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C48D8);
  }

  return result;
}

unint64_t sub_10105ABA8()
{
  result = qword_1016C48E0;
  if (!qword_1016C48E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C48E0);
  }

  return result;
}

unint64_t sub_10105AC00()
{
  result = qword_1016C48E8;
  if (!qword_1016C48E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C48E8);
  }

  return result;
}

unint64_t sub_10105AC58()
{
  result = qword_1016C48F0;
  if (!qword_1016C48F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C48F0);
  }

  return result;
}

uint64_t sub_10105ACAC(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016C48F8, &unk_1013FC608);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - v5;
  v7 = a1[3];
  sub_1000035D0(a1, v7);
  sub_10105AF10();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    v11 = 0;
    sub_1000E307C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = v12;
    v9 = v13;
    sub_1000BC4D4(&qword_1016A3E18, &qword_1013AF270);
    v11 = 1;
    sub_10105AF64(&qword_1016A3E20, &qword_1016A3CB0, &unk_1013AEF84, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    sub_100017D5C(v7, v9);

    sub_100007BAC(a1);
    sub_100016590(v7, v9);
  }

  return v7;
}

unint64_t sub_10105AF10()
{
  result = qword_1016C4900;
  if (!qword_1016C4900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4900);
  }

  return result;
}

uint64_t sub_10105AF64(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016A3E18, &qword_1013AF270);
    sub_10105AFEC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10105AFEC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DeviceEventEncodedInfo(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10105B044()
{
  result = qword_1016C4910;
  if (!qword_1016C4910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4910);
  }

  return result;
}

unint64_t sub_10105B09C()
{
  result = qword_1016C4918;
  if (!qword_1016C4918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4918);
  }

  return result;
}

unint64_t sub_10105B0F4()
{
  result = qword_1016C4920;
  if (!qword_1016C4920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4920);
  }

  return result;
}

uint64_t sub_10105B150(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 88) = a3;
  *(v4 + 96) = v3;
  *(v4 + 216) = a2;
  *(v4 + 80) = a1;
  v5 = type metadata accessor for UUID();
  *(v4 + 104) = v5;
  *(v4 + 112) = *(v5 - 8);
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();

  return _swift_task_switch(sub_10105B224, v3, 0);
}

uint64_t sub_10105B224()
{
  v29 = v0;
  if (qword_1016954C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 80);
  v5 = type metadata accessor for Logger();
  *(v0 + 136) = sub_1000076D4(v5, qword_10177CDD0);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  swift_bridgeObjectRetain_n();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 128);
  v12 = *(v0 + 104);
  v11 = *(v0 + 112);
  v13 = *(v0 + 88);
  if (v9)
  {
    v14 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v14 = 141558531;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    sub_10105F5BC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    log = v7;
    v16 = v6;
    v18 = v17;
    (*(v11 + 8))(v10, v12);
    v19 = sub_1000136BC(v15, v18, &v28);
    v6 = v16;

    *(v14 + 14) = v19;
    *(v14 + 22) = 2048;
    v20 = *(v13 + 16);

    *(v14 + 24) = v20;

    _os_log_impl(&_mh_execute_header, log, v8, "Updating keys for share id: %{private,mask.hash}s, keyPackages count: %ld.", v14, 0x20u);
    sub_100007BAC(v27);
  }

  else
  {
    swift_bridgeObjectRelease_n();

    (*(v11 + 8))(v10, v12);
  }

  v6(*(v0 + 120), *(v0 + 80), *(v0 + 104));

  v21 = swift_task_alloc();
  *(v0 + 144) = v21;
  *v21 = v0;
  v21[1] = sub_10105B548;
  v22 = *(v0 + 120);
  v23 = *(v0 + 88);
  v24 = *(v0 + 216);

  return sub_10105ED60(v22, v24, v23);
}

uint64_t sub_10105B548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v4;
  v8 = *v4;
  v7[19] = a1;
  v7[20] = a2;
  v7[21] = a3;
  v7[22] = v3;

  if (v3)
  {
    v9 = v7[12];

    return _swift_task_switch(sub_10105BA10, v9, 0);
  }

  else
  {
    v10 = swift_task_alloc();
    v7[23] = v10;
    *v10 = v8;
    v10[1] = sub_10105B6E0;

    return sub_101036954(a2, a3);
  }
}

uint64_t sub_10105B6E0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[7] = v2;
  v4[8] = a1;
  v4[9] = a2;
  v5 = v3[12];
  v4[24] = a2;

  return _swift_task_switch(sub_10105B7FC, v5, 0);
}

uint64_t sub_10105B7FC()
{
  v15 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[24];
  if (v3)
  {
    if (v4)
    {
      v5 = v0[8];
    }

    else
    {
      v4 = 0xE300000000000000;
      v5 = 7104878;
    }

    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v8 = sub_1000136BC(v5, v4, &v14);

    *(v6 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "KeyDropUpdateRequest: %s", v6, 0xCu);
    sub_100007BAC(v7);
  }

  else
  {
  }

  v9 = v0[20];
  v10 = v0[21];
  v11 = v0[19];
  v0[5] = &type metadata for KeyDropUpdateRequest;
  v0[6] = sub_10105F568();
  v0[2] = v11;
  v0[3] = v9;
  v0[4] = v10;

  sub_100017D5C(v9, v10);
  v12 = swift_task_alloc();
  v0[25] = v12;
  *v12 = v0;
  v12[1] = sub_10105BA7C;

  return sub_10103AEA4((v0 + 2), 2);
}

uint64_t sub_10105BA10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10105BA7C(char a1)
{
  v4 = *v2;
  *(*v2 + 208) = v1;

  if (v1)
  {
    v5 = *(v4 + 96);
    v6 = sub_10105BC50;
  }

  else
  {
    v7 = *(v4 + 96);
    *(v4 + 217) = a1;
    sub_100007BAC((v4 + 16));
    v6 = sub_10105BBBC;
    v5 = v7;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10105BBBC()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  sub_100016590(v1, v2);

  v3 = *(v0 + 8);
  v4 = *(v0 + 217);

  return v3(v4);
}

uint64_t sub_10105BC50()
{
  v1 = v0[20];
  v2 = v0[21];

  sub_100016590(v1, v2);
  sub_100007BAC(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10105BCDC(void *a1, unsigned __int16 a2)
{
  v3 = a2;
  v5 = sub_1000BC4D4(&qword_1016C4CF8, &qword_1013FCC20);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_10106024C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = v3;
  v10[14] = 0;
  sub_1010602A0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10[13] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10105BE74(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C4CA8, &qword_1013FCBF0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_101060078();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  type metadata accessor for UUID();
  sub_10105F5BC(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for KeyDropShareMetaDataRequest.KeyDropMetaDataContent(0);
    v16 = *(v3 + v9[5]);
    v15 = 1;
    sub_1001E8200();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11[0] = v9[6];
    v14 = 2;
    type metadata accessor for Date();
    sub_10105F5BC(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11[1] = *(v3 + v9[8]);
    v12 = 4;
    sub_1000BC4D4(&qword_1016C4CB8, &qword_1013FCBF8);
    sub_1010600CC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10105C15C()
{
  if (*v0)
  {
    return 0x617461646174656DLL;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_10105C190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
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

uint64_t sub_10105C26C(uint64_t a1)
{
  v2 = sub_10106024C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10105C2A8(uint64_t a1)
{
  v2 = sub_10106024C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10105C2E4(void *a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_10105BCDC(a1, v2 | *v1);
}

uint64_t sub_10105C314()
{
  v1 = *v0;
  v2 = 0x64496572616873;
  v3 = 0x6D617473656D6974;
  v4 = 0x64497265626D656DLL;
  if (v1 != 3)
  {
    v4 = 0x736567616B636170;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701869940;
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

uint64_t sub_10105C3AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_101060DB4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10105C3D4(uint64_t a1)
{
  v2 = sub_101060078();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10105C410(uint64_t a1)
{
  v2 = sub_101060078();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10105C464(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C4CE0, &unk_1013FCC08);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_1010601F8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  type metadata accessor for UUID();
  sub_10105F5BC(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    updated = type metadata accessor for KeyDropUpdateRequest.UpdateRequestContent(0);
    v14 = *(v3 + *(updated + 20));
    v13 = 1;
    sub_1001E8200();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + *(updated + 24));
    v11[15] = 2;
    sub_1000BC4D4(&qword_10169CDB0, &qword_10139A080);
    sub_1002E9F80();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10105C690()
{
  v1 = 1701869940;
  if (*v0 != 1)
  {
    v1 = 0x616B63615079656BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64496572616873;
  }
}

uint64_t sub_10105C6EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_101060F6C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10105C714(uint64_t a1)
{
  v2 = sub_1010601F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10105C750(uint64_t a1)
{
  v2 = sub_1010601F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10105C7A4(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C4D58, &qword_1013FCC38);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_101060444();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = *v3;
  v10[14] = 0;
  sub_1010602A0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    type metadata accessor for KeyDropShareMetaDataResponse.ShareMetaData(0);
    v10[13] = 1;
    type metadata accessor for KeyDropInterface.KeyAlignment(0);
    sub_10105F5BC(&qword_1016C4D60, type metadata accessor for KeyDropInterface.KeyAlignment, &unk_10140E8A0);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[12] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[11] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10105C9D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = type metadata accessor for KeyDropInterface.KeyAlignment(0);
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016C4D38, &qword_1013FCC30);
  v26 = *(v7 - 8);
  v27 = v7;
  __chkstk_darwin(v7);
  v9 = &v23 - v8;
  v10 = type metadata accessor for KeyDropShareMetaDataResponse.ShareMetaData(0);
  __chkstk_darwin(v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v28 = a1;
  sub_1000035D0(a1, v13);
  sub_101060444();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(v28);
  }

  v24 = v10;
  v14 = v12;
  v15 = v26;
  v32 = 0;
  sub_101060498();
  v16 = v27;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *v14 = v33;
  v31 = 1;
  sub_10105F5BC(&qword_1016C4D50, type metadata accessor for KeyDropInterface.KeyAlignment, &unk_10140E8C8);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = v24;
  sub_1010604EC(v6, &v14[*(v24 + 20)]);
  v30 = 2;
  v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v19 = &v14[*(v17 + 24)];
  *v19 = v18;
  v19[8] = v20 & 1;
  v29 = 3;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v15 + 8))(v9, v16);
  *&v14[*(v17 + 28)] = v22;
  sub_101060550(v14, v25, type metadata accessor for KeyDropShareMetaDataResponse.ShareMetaData);
  sub_100007BAC(v28);
  return sub_10105ED00(v14, type metadata accessor for KeyDropShareMetaDataResponse.ShareMetaData);
}

uint64_t sub_10105CD7C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C4D78, &qword_1013FCC48);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_1010605B8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  type metadata accessor for UUID();
  sub_10105F5BC(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for KeyDropShareMetaDataResponse.Member(0);
    LOBYTE(v14) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = (v3 + *(v9 + 24));
    v11 = v10[1];
    v14 = *v10;
    v15 = v11;
    v13[15] = 2;
    sub_10002E98C(v14, v11);
    sub_1000E3190();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v14, v15);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10105CF8C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for UUID();
  v18 = *(v4 - 8);
  __chkstk_darwin(v4);
  v21 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016C4D68, &qword_1013FCC40);
  v19 = *(v6 - 8);
  v20 = v6;
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for KeyDropShareMetaDataResponse.Member(0);
  __chkstk_darwin(v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_1010605B8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v12 = v11;
  v13 = v18;
  LOBYTE(v22) = 0;
  sub_10105F5BC(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v14 = v20;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 32))(v12, v21, v4);
  LOBYTE(v22) = 1;
  *(v12 + *(v9 + 20)) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  v23 = 2;
  sub_1000E307C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v19 + 8))(v8, v14);
  *(v12 + *(v9 + 24)) = v22;
  sub_101060550(v12, v17, type metadata accessor for KeyDropShareMetaDataResponse.Member);
  sub_100007BAC(a1);
  return sub_10105ED00(v12, type metadata accessor for KeyDropShareMetaDataResponse.Member);
}

uint64_t sub_10105D338(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C4D10, &qword_1013FCC28);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_10105FF70();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  type metadata accessor for UUID();
  sub_10105F5BC(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for KeyDropShareMetaDataResponse(0);
    LOBYTE(v12) = 1;
    type metadata accessor for Date();
    sub_10105F5BC(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = *(v3 + *(v9 + 24));
    HIBYTE(v11) = 2;
    sub_1000BC4D4(&qword_1016C4C78, &qword_1013FCBE0);
    sub_1010602F4(&qword_1016C4D18, &qword_1016C4D20, &unk_1013FC984, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + *(v9 + 28));
    HIBYTE(v11) = 3;
    sub_1000BC4D4(&qword_1016C4C90, &qword_1013FCBE8);
    sub_101060390();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10105D624@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for UUID();
  v21 = *(v6 - 8);
  __chkstk_darwin(v6);
  v22 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000BC4D4(&qword_1016C4C68, &qword_1013FCBD8);
  v20 = *(v24 - 8);
  __chkstk_darwin(v24);
  v9 = &v19 - v8;
  v10 = type metadata accessor for KeyDropShareMetaDataResponse(0);
  __chkstk_darwin(v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_10105FF70();
  v23 = v9;
  v13 = v25;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    return sub_100007BAC(a1);
  }

  v14 = v12;
  v16 = v20;
  v15 = v21;
  LOBYTE(v27) = 0;
  sub_10105F5BC(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = *(v15 + 32);
  v25 = v6;
  v17(v14, v22, v6);
  type metadata accessor for Date();
  LOBYTE(v27) = 1;
  sub_10105F5BC(&qword_101697F40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1001578A0(v5, v14 + v10[5]);
  sub_1000BC4D4(&qword_1016C4C78, &qword_1013FCBE0);
  v26 = 2;
  sub_1010602F4(&qword_1016C4C80, &qword_1016C4C88, &unk_1013FC9AC, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v14 + v10[6]) = v27;
  sub_1000BC4D4(&qword_1016C4C90, &qword_1013FCBE8);
  v26 = 3;
  sub_10105FFC4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v16 + 8))(v23, v24);
  *(v14 + v10[7]) = v27;
  sub_101060550(v14, v19, type metadata accessor for KeyDropShareMetaDataResponse);
  sub_100007BAC(a1);
  return sub_10105ED00(v14, type metadata accessor for KeyDropShareMetaDataResponse);
}

uint64_t sub_10105DB70()
{
  v1 = 1701869940;
  v2 = 0x61745365676E6172;
  if (*v0 != 2)
  {
    v2 = 0x646E4565676E6172;
  }

  if (*v0)
  {
    v1 = 0x6E656D6E67696C61;
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

uint64_t sub_10105DBEC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_101061088(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10105DC14(uint64_t a1)
{
  v2 = sub_101060444();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10105DC50(uint64_t a1)
{
  v2 = sub_101060444();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10105DCC0()
{
  v1 = 0x72656E776FLL;
  if (*v0 != 1)
  {
    v1 = 0x6574707972636E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64497265626D656DLL;
  }
}

uint64_t sub_10105DD24@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1010611FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10105DD4C(uint64_t a1)
{
  v2 = sub_1010605B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10105DD88(uint64_t a1)
{
  v2 = sub_1010605B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10105DDF8()
{
  v1 = 0x64496572616873;
  v2 = 0x616B63615079656BLL;
  if (*v0 != 2)
  {
    v2 = 0x737265626D656DLL;
  }

  if (*v0)
  {
    v1 = 0x6974617269707865;
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

uint64_t sub_10105DE80@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_101061318(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10105DEA8(uint64_t a1)
{
  v2 = sub_10105FF70();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10105DEE4(uint64_t a1)
{
  v2 = sub_10105FF70();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10105DF50(uint64_t a1)
{
  v2 = sub_1010601A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10105DF8C(uint64_t a1)
{
  v2 = sub_1010601A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10105DFC8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016C4CD0, &qword_1013FCC00);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_1010601A4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  result = sub_100007BAC(a1);
  *a2 = v9;
  return result;
}

uint64_t sub_10105E128(void *a1)
{
  v2 = sub_1000BC4D4(&qword_1016C4CF0, &qword_1013FCC18);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_1000035D0(a1, a1[3]);
  sub_1010601A4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

BOOL sub_10105E260(char *a1, char *a2)
{
  v4 = *a2;
  v5 = sub_10125403C(*a1);
  v7 = v6;
  if (v5 == sub_10125403C(v4) && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = type metadata accessor for KeyDropShareMetaDataResponse.ShareMetaData(0);
  v12 = v11[5];
  v13 = &a1[v12];
  v14 = &a2[v12];
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v15 = type metadata accessor for KeyDropInterface.KeyAlignment(0);
  if (*&v13[*(v15 + 20)] != *&v14[*(v15 + 20)] || (static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v16 = v11[6];
  v17 = &a1[v16];
  v18 = a1[v16 + 8];
  v19 = &a2[v16];
  v20 = a2[v16 + 8];
  if (v18)
  {
    if (!v20)
    {
      return 0;
    }
  }

  else
  {
    if (*v17 != *v19)
    {
      LOBYTE(v20) = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  return *&a1[v11[7]] == *&a2[v11[7]];
}

BOOL sub_10105E3A8(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for KeyDropShareMetaDataResponse.Member(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      sub_10002E98C(v7, v6);
      sub_10002E98C(v10, v9);
      sub_100006654(v7, v6);
      return 1;
    }

    goto LABEL_7;
  }

  if (v9 >> 60 == 15)
  {
LABEL_7:
    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    sub_100006654(v7, v6);
    sub_100006654(v10, v9);
    return 0;
  }

  sub_10002E98C(v7, v6);
  sub_10002E98C(v10, v9);
  v12 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
  sub_100006654(v10, v9);
  sub_100006654(v7, v6);
  return v12;
}

void *sub_10105E4EC(void *a1, void *a2, int a3, uint64_t a4, uint64_t a5)
{
  v63 = a5;
  LODWORD(object) = a3;
  v8 = type metadata accessor for P256.Signing.PrivateKey();
  v54 = *(v8 - 8);
  v55 = v8;
  __chkstk_darwin(v8);
  v60 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for P256.Signing.ECDSASignature();
  v52 = *(v10 - 8);
  v53 = v10;
  __chkstk_darwin(v10);
  v56 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for KeyDropShareMetaDataRequest.KeyDropMetaDataContent(0);
  __chkstk_darwin(v12);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  v19 = JSONEncoder.init()();
  *v18 = sub_100281AE0;
  v18[1] = 0;
  (*(v16 + 104))(v18, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v15);
  v66 = v19;
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  v20 = *(a4 + 16);
  if (v20)
  {
    v58 = v14;
    v59 = a2;
    v57 = a1;
    v64 = _swiftEmptyArrayStorage;
    sub_1011244B8(0, v20, 0);
    v21 = v64;
    v22 = v64[2];
    v23 = 2 * v22;
    v24 = 32;
    do
    {
      v25 = *(a4 + v24);
      v64 = v21;
      v26 = v21[3];
      v27 = v22 + 1;
      if (v22 >= v26 >> 1)
      {
        sub_1011244B8((v26 > 1), v22 + 1, 1);
        v21 = v64;
      }

      v21[2] = v27;
      v28 = v21 + v23;
      v28[32] = v25;
      v28[33] = 1;
      v23 += 2;
      ++v24;
      v22 = v27;
      --v20;
    }

    while (v20);

    a1 = v57;
    v14 = v58;
    a2 = v59;
  }

  else
  {

    v21 = _swiftEmptyArrayStorage;
  }

  v29 = type metadata accessor for UUID();
  v30 = *(v29 - 8);
  v31 = *(v30 + 16);
  v31(v14, a1, v29);
  static Date.trustedNow.getter(&v14[v12[6]]);
  v31(&v14[v12[7]], a2, v29);
  v14[v12[5]] = object;
  *&v14[v12[8]] = v21;
  sub_10105F5BC(&qword_1016C4928, type metadata accessor for KeyDropShareMetaDataRequest.KeyDropMetaDataContent, &unk_1013FCB68);
  v32 = v62;
  v33 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v32)
  {

    sub_10105ED00(v63, type metadata accessor for KeyDropJoinToken);
    v39 = *(v30 + 8);
    v39(a2, v29);
    v39(a1, v29);
    sub_10105ED00(v14, type metadata accessor for KeyDropShareMetaDataRequest.KeyDropMetaDataContent);
  }

  else
  {
    v35 = v34;
    v62 = v33;
    v36 = v63 + *(type metadata accessor for KeyDropJoinToken(0) + 20);
    v37 = *(v36 + 8);
    v64 = *v36;
    v65 = v37;
    sub_100017D5C(v64, v37);
    v38 = v60;
    P256.Signing.PrivateKey.init<A>(rawRepresentation:)();
    v64 = v62;
    v65 = v35;
    sub_1000E0A3C();
    P256.Signing.PrivateKey.signature<A>(for:)();
    v58 = v14;
    v59 = a2;
    (*(v54 + 8))(v38, v55);
    a2 = sub_100646BE0();
    if (qword_101694F58 != -1)
    {
      swift_once();
    }

    object = qword_10177C218;
    v41 = [objc_opt_self() sharedInstance];
    v42 = [v41 isInternalBuild];

    if (v42 && (v43 = String._bridgeToObjectiveC()(), v44 = [object BOOLForKey:v43], v43, (v44 & 1) != 0))
    {

      v45 = v56;
    }

    else
    {
      v57 = a1;
      v60 = "DisableShareAuthorization";
      v45 = v56;
      v46 = P256.Signing.ECDSASignature.derRepresentation.getter();
      v48 = v47;
      v49 = Data.base64EncodedString(options:)(0);
      object = v49._object;
      sub_100016590(v46, v48);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64 = a2;
      a1 = v57;
      sub_100FFACA0(v49._countAndFlagsBits, object, 0xD000000000000012, v60 | 0x8000000000000000, isUniquelyReferenced_nonNull_native);

      a2 = v64;
    }

    sub_10105ED00(v63, type metadata accessor for KeyDropJoinToken);
    v51 = *(v30 + 8);
    v51(v59, v29);
    v51(a1, v29);
    (*(v52 + 8))(v45, v53);
    sub_10105ED00(v58, type metadata accessor for KeyDropShareMetaDataRequest.KeyDropMetaDataContent);
  }

  return a2;
}

uint64_t sub_10105ED00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10105ED60(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 160) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  *(v3 + 32) = type metadata accessor for KeyDropUpdateRequest.UpdateRequestContent(0);
  *(v3 + 40) = swift_task_alloc();
  v4 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  *(v3 + 48) = v4;
  *(v3 + 56) = *(v4 - 8);
  *(v3 + 64) = swift_task_alloc();
  v5 = swift_task_alloc();
  *(v3 + 72) = v5;
  *v5 = v3;
  v5[1] = sub_10105EE94;

  return sub_1010351F0();
}

uint64_t sub_10105EE94(uint64_t a1)
{
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_10105EF94, 0, 0);
}

uint64_t sub_10105EF94()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = *(v0 + 160);
  v8 = *(v0 + 16);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  *(v0 + 88) = JSONEncoder.init()();
  *v1 = sub_100281AE0;
  v1[1] = 0;
  (*(v2 + 104))(v1, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v4);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  v9 = type metadata accessor for UUID();
  *(v0 + 96) = v9;
  v10 = *(v9 - 8);
  *(v0 + 104) = v10;
  (*(v10 + 16))(v3, v8, v9);
  *(v3 + *(v5 + 20)) = v7;
  *(v3 + *(v5 + 24)) = v6;
  sub_10105F5BC(&qword_1016C4938, type metadata accessor for KeyDropUpdateRequest.UpdateRequestContent, &unk_1013FCAFC);
  v11 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 112) = v11;
  *(v0 + 120) = v12;
  v13 = v11;
  v14 = v12;
  v15 = swift_task_alloc();
  *(v0 + 128) = v15;
  *v15 = v0;
  v15[1] = sub_10105F23C;

  return sub_1010358B4(v13, v14);
}

uint64_t sub_10105F23C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 136) = v2;

  if (v2)
  {
    v7 = sub_10105F488;
  }

  else
  {
    *(v6 + 144) = a2;
    *(v6 + 152) = a1;
    v7 = sub_10105F370;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10105F370()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[5];
  v6 = v0[2];
  sub_100016590(v0[14], v0[15]);

  (*(v4 + 8))(v6, v3);
  sub_10105ED00(v5, type metadata accessor for KeyDropUpdateRequest.UpdateRequestContent);

  sub_100017D5C(v2, v1);

  sub_100016590(v2, v1);

  v7 = v0[1];
  v9 = v0[18];
  v8 = v0[19];
  v10 = v0[10];

  return v7(v10, v8, v9);
}

uint64_t sub_10105F488()
{
  sub_100016590(v0[14], v0[15]);
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[5];
  v4 = v0[2];

  (*(v2 + 8))(v4, v1);
  sub_10105ED00(v3, type metadata accessor for KeyDropUpdateRequest.UpdateRequestContent);

  v5 = v0[1];

  return v5();
}

unint64_t sub_10105F568()
{
  result = qword_1016C4930;
  if (!qword_1016C4930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4930);
  }

  return result;
}

uint64_t sub_10105F5BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10105F64C(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_10105FBC8(319, &unk_1016C3C40, type metadata accessor for KeyDropInterface.KeyPackage, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for KeyDropUpdateResponse(unsigned __int8 *a1, unsigned int a2)
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
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

uint64_t getEnumTagSinglePayload for KeyDropShareMetaDataRequest.MetaDataPackageRequest(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KeyDropShareMetaDataRequest.MetaDataPackageRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_10105F960(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      sub_10105FE28(319, &unk_1016C4A40, &type metadata for KeyDropShareMetaDataRequest.MetaDataPackageRequest, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10105FA84(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_10105FBC8(319, &qword_1016BA040, &type metadata accessor for Date, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_10105FBC8(319, &qword_1016C4AE8, type metadata accessor for KeyDropShareMetaDataResponse.ShareMetaData, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        sub_10105FBC8(319, &unk_1016C4AF0, type metadata accessor for KeyDropShareMetaDataResponse.Member, &type metadata accessor for Array);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10105FBC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10105FC94(uint64_t a1)
{
  type metadata accessor for KeyDropInterface.KeyAlignment(319);
  if (v1 <= 0x3F)
  {
    sub_10105FE28(319, &qword_10169C540, &type metadata for Int64, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10105FD78(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_10105FE28(319, &qword_10169A330, &type metadata for Data, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10105FE28(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_10105FE78(uint64_t a1)
{
  result = sub_10105FEA0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10105FEA0()
{
  result = qword_1016C4C58;
  if (!qword_1016C4C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4C58);
  }

  return result;
}

unint64_t sub_10105FEF4(uint64_t a1)
{
  result = sub_10105FF1C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10105FF1C()
{
  result = qword_1016C4C60;
  if (!qword_1016C4C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4C60);
  }

  return result;
}

unint64_t sub_10105FF70()
{
  result = qword_1016C4C70;
  if (!qword_1016C4C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4C70);
  }

  return result;
}

unint64_t sub_10105FFC4()
{
  result = qword_1016C4C98;
  if (!qword_1016C4C98)
  {
    sub_1000BC580(&qword_1016C4C90, &qword_1013FCBE8);
    sub_10105F5BC(&qword_1016C4CA0, type metadata accessor for KeyDropShareMetaDataResponse.Member, &unk_1013FC934);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4C98);
  }

  return result;
}

unint64_t sub_101060078()
{
  result = qword_1016C4CB0;
  if (!qword_1016C4CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4CB0);
  }

  return result;
}

unint64_t sub_1010600CC()
{
  result = qword_1016C4CC0;
  if (!qword_1016C4CC0)
  {
    sub_1000BC580(&qword_1016C4CB8, &qword_1013FCBF8);
    sub_101060150();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4CC0);
  }

  return result;
}

unint64_t sub_101060150()
{
  result = qword_1016C4CC8;
  if (!qword_1016C4CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4CC8);
  }

  return result;
}

unint64_t sub_1010601A4()
{
  result = qword_1016C4CD8;
  if (!qword_1016C4CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4CD8);
  }

  return result;
}

unint64_t sub_1010601F8()
{
  result = qword_1016C4CE8;
  if (!qword_1016C4CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4CE8);
  }

  return result;
}

unint64_t sub_10106024C()
{
  result = qword_1016C4D00;
  if (!qword_1016C4D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4D00);
  }

  return result;
}

unint64_t sub_1010602A0()
{
  result = qword_1016C4D08;
  if (!qword_1016C4D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4D08);
  }

  return result;
}

uint64_t sub_1010602F4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016C4C78, &qword_1013FCBE0);
    sub_10105F5BC(a2, type metadata accessor for KeyDropShareMetaDataResponse.ShareMetaData, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_101060390()
{
  result = qword_1016C4D28;
  if (!qword_1016C4D28)
  {
    sub_1000BC580(&qword_1016C4C90, &qword_1013FCBE8);
    sub_10105F5BC(&qword_1016C4D30, type metadata accessor for KeyDropShareMetaDataResponse.Member, &unk_1013FC90C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4D28);
  }

  return result;
}

unint64_t sub_101060444()
{
  result = qword_1016C4D40;
  if (!qword_1016C4D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4D40);
  }

  return result;
}

unint64_t sub_101060498()
{
  result = qword_1016C4D48;
  if (!qword_1016C4D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4D48);
  }

  return result;
}

uint64_t sub_1010604EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeyDropInterface.KeyAlignment(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_101060550(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1010605B8()
{
  result = qword_1016C4D70;
  if (!qword_1016C4D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4D70);
  }

  return result;
}

unint64_t sub_101060680()
{
  result = qword_1016C4D80;
  if (!qword_1016C4D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4D80);
  }

  return result;
}

unint64_t sub_1010606D8()
{
  result = qword_1016C4D88;
  if (!qword_1016C4D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4D88);
  }

  return result;
}

unint64_t sub_101060730()
{
  result = qword_1016C4D90;
  if (!qword_1016C4D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4D90);
  }

  return result;
}

unint64_t sub_101060788()
{
  result = qword_1016C4D98;
  if (!qword_1016C4D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4D98);
  }

  return result;
}

unint64_t sub_1010607E0()
{
  result = qword_1016C4DA0;
  if (!qword_1016C4DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4DA0);
  }

  return result;
}

unint64_t sub_101060838()
{
  result = qword_1016C4DA8;
  if (!qword_1016C4DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4DA8);
  }

  return result;
}

unint64_t sub_101060890()
{
  result = qword_1016C4DB0;
  if (!qword_1016C4DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4DB0);
  }

  return result;
}

unint64_t sub_1010608E8()
{
  result = qword_1016C4DB8;
  if (!qword_1016C4DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4DB8);
  }

  return result;
}

unint64_t sub_101060940()
{
  result = qword_1016C4DC0;
  if (!qword_1016C4DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4DC0);
  }

  return result;
}

unint64_t sub_101060998()
{
  result = qword_1016C4DC8;
  if (!qword_1016C4DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4DC8);
  }

  return result;
}

unint64_t sub_1010609F0()
{
  result = qword_1016C4DD0;
  if (!qword_1016C4DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4DD0);
  }

  return result;
}

unint64_t sub_101060A48()
{
  result = qword_1016C4DD8;
  if (!qword_1016C4DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4DD8);
  }

  return result;
}

unint64_t sub_101060AA0()
{
  result = qword_1016C4DE0;
  if (!qword_1016C4DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4DE0);
  }

  return result;
}

unint64_t sub_101060AF8()
{
  result = qword_1016C4DE8;
  if (!qword_1016C4DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4DE8);
  }

  return result;
}

unint64_t sub_101060B50()
{
  result = qword_1016C4DF0;
  if (!qword_1016C4DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4DF0);
  }

  return result;
}

unint64_t sub_101060BA8()
{
  result = qword_1016C4DF8;
  if (!qword_1016C4DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4DF8);
  }

  return result;
}

unint64_t sub_101060C00()
{
  result = qword_1016C4E00;
  if (!qword_1016C4E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4E00);
  }

  return result;
}

unint64_t sub_101060C58()
{
  result = qword_1016C4E08;
  if (!qword_1016C4E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4E08);
  }

  return result;
}

unint64_t sub_101060CB0()
{
  result = qword_1016C4E10;
  if (!qword_1016C4E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4E10);
  }

  return result;
}

unint64_t sub_101060D08()
{
  result = qword_1016C4E18;
  if (!qword_1016C4E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4E18);
  }

  return result;
}

unint64_t sub_101060D60()
{
  result = qword_1016C4E20;
  if (!qword_1016C4E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4E20);
  }

  return result;
}

uint64_t sub_101060DB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496572616873 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64497265626D656DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736567616B636170 && a2 == 0xE800000000000000)
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

uint64_t sub_101060F6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496572616873 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616B63615079656BLL && a2 == 0xEB00000000736567)
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

uint64_t sub_101061088(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656D6E67696C61 && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61745365676E6172 && a2 == 0xEA00000000007472 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646E4565676E6172 && a2 == 0xE800000000000000)
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

uint64_t sub_1010611FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64497265626D656DLL && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72656E776FLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574707972636E65 && a2 == 0xEE00646C65694664)
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

uint64_t sub_101061318(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496572616873 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEA00000000006E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616B63615079656BLL && a2 == 0xEB00000000736567 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x737265626D656DLL && a2 == 0xE700000000000000)
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

uint64_t type metadata accessor for SubmitPayloadFieldLengthV2(uint64_t a1)
{
  result = qword_1016C4E80;
  if (!qword_1016C4E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1010614FC(uint64_t a1)
{
  result = type metadata accessor for Bit();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_101061588(void *a1)
{
  sub_1000035D0(a1, a1[3]);
  result = dispatch thunk of BinaryEncoding.container()();
  if (((*v1 - 1) & 0xFFFF0000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (((*(v1 + 1) - 1) & 0xFFFF0000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (((v1[4] - 1) & 0xFFFFFF00) != 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1002053B0();
  result = FixedWidthInteger.bits()();
  if (result[2] < 0xDuLL)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    __break(1u);
    goto LABEL_15;
  }

  v3 = result;
  v4 = type metadata accessor for Bit();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  result = FixedWidthInteger.bits()();
  if (result[2] < 0xAuLL)
  {
    goto LABEL_13;
  }

  v7 = result;
  v8 = (v6 + 32) & ~v6;
  sub_1000198E8();
  v9 = FixedWidthInteger.bits()();
  sub_1000BC4D4(&qword_10169F070, &unk_1013D4CE0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_101385D80;
  v11 = type metadata accessor for SubmitPayloadFieldLengthV2(0);
  (*(v5 + 16))(v10 + v8, &v1[*(v11 + 28)], v4);

  sub_101062A04(v12, v7 + v8, 0, 0x15uLL);

  v13 = *(v9 + 16);
  if (!__OFADD__(v13, 13))
  {
    v15[6] = sub_100A5E6F8(0, (v13 + 13) & ~((v13 + 13) >> 63), 0, _swiftEmptyArrayStorage);
    v14 = swift_unknownObjectRetain();
    sub_10039A94C(v14, v3 + v8, 0, 0x1BuLL);
    sub_10039AF70(v9);
    swift_unknownObjectRelease();
    sub_10039AF70(v10);
    sub_100101824();
    FixedWidthInteger.init(bits:)();
    sub_10015049C(v15, v15[3]);
    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();

    return sub_100007BAC(v15);
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1010618B0(uint64_t result)
{
  v2 = result;
  v3 = v1[3];
  v4 = v3 >> 1;
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = *v1;
  result = swift_isUniquelyReferenced_nonNull();
  *v1 = v5;
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v6 = v1[2];
  v7 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = v1[1];
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = _swiftEmptyArrayStorage;
  }

  v10 = *(type metadata accessor for Bit() - 8);
  v11 = v9[2];
  if ((v8 + *(v10 + 72) * v6 + *(v10 + 72) * v7) != (v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v11))
  {

    goto LABEL_9;
  }

  v12 = v9[3];

  v13 = (v12 >> 1) - v11;
  v14 = __OFADD__(v7, v13);
  v7 += v13;
  if (!v14)
  {
LABEL_9:
    if (v7 >= v2)
    {
LABEL_17:
      *v1 = v5;
      return result;
    }

LABEL_10:
    v15 = v1[2];
    if (__OFSUB__(v4, v15))
    {
      __break(1u);
    }

    else
    {
      result = sub_1003A8968(v4 - v15, v2);
      if (v4 >= v15)
      {
        v5 = result;
        v16 = *(type metadata accessor for Bit() - 8);
        v17 = v5 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
        v18 = *(v16 + 72);
        result = swift_arrayInitWithCopy();
        if (!__OFSUB__(0, v15))
        {
          v19 = *(v5 + 16);
          v14 = __OFADD__(v15, v19);
          v20 = v15 + v19;
          if (!v14)
          {
            if (v20 >= v15)
            {
              if ((v20 & 0x8000000000000000) == 0)
              {
                v21 = (2 * v20) | 1;
                result = swift_unknownObjectRelease();
                v1[1] = v17 + v18 * -v15;
                v1[2] = v15;
                v1[3] = v21;
                goto LABEL_17;
              }

              goto LABEL_23;
            }

LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
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

    __break(1u);
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_101061AEC(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(unint64_t, uint64_t))
{
  v5 = v4;
  v6 = v4[2];
  v7 = v4[3] >> 1;
  v8 = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    __break(1u);
    goto LABEL_46;
  }

  v10 = *a1;
  v11 = *(*a1 + 16);
  v12 = __OFSUB__(v11, a2);
  v13 = v11 - a2;
  if (v12)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v15 = v13 - a3;
  if (__OFSUB__(v13, a3))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v16 = v8 - a2;
  if (__OFSUB__(v8, a2))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v12 = __OFSUB__(v16, v15);
  v17 = v16 - v15;
  if (v12)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v43 = v15;
  v45 = v17;
  v47 = type metadata accessor for Bit();
  v19 = (*(*(v47 - 8) + 80) + 32) & ~*(*(v47 - 8) + 80);
  v20 = *(*(v47 - 8) + 72);
  v48 = v10 + v19;
  v21 = v10 + v19 + v20 * a2;
  v46 = a3;
  v44 = v21 + v20 * a3;
  v22 = sub_101062160(v8);
  if (v22)
  {
    if (!v20)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v23 = v22;
    v41 = v10;
    v42 = a4;
    v24 = v5[2];
    v25 = v5[1] + v24 * v20;
    v26 = v22 + v19;
    if (v25 - v26 == 0x8000000000000000 && v20 == -1)
    {
      goto LABEL_61;
    }

    v28 = v25 + v20 * a2;
    v40 = v26;
    swift_arrayDestroy();
    if (v48 < v25 || v48 >= v28)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v48 != v25)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    swift_arrayDestroy();
    v42(v21, v46);
    v35 = v28 + v20 * v45;
    if (v44 < v35 || v44 >= v35 + v20 * v43)
    {
      swift_arrayInitWithTakeFrontToBack();
      v37 = v40;
    }

    else
    {
      v37 = v40;
      if (v44 != v35)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v32 = v48;
    if (v37 + *(v23 + 16) * v20 - (v25 + v20 * v8) == 0x8000000000000000 && v20 == -1)
    {
      goto LABEL_62;
    }

    swift_arrayDestroy();
    *(v23 + 16) = 0;

    v10 = v41;
  }

  else
  {
    v30 = a4;
    v24 = v5[2];
    v31 = v24 + a2;
    if (__OFADD__(v24, a2))
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if (v31 < v24)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    if (__OFSUB__(v31, v24))
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v32 = v10 + v19;
    swift_arrayInitWithCopy();
    v30(v48 + a2 * v20, v46);
    v33 = v31 + v45;
    if (__OFADD__(v31, v45))
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v34 = v5[3] >> 1;
    if (v34 < v33)
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    if (__OFSUB__(v34, v33))
    {
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      return;
    }

    swift_arrayInitWithCopy();
  }

  swift_unknownObjectRelease();
  if (__OFSUB__(0, v24))
  {
    goto LABEL_50;
  }

  v38 = *(v10 + 16);
  v12 = __OFADD__(v24, v38);
  v39 = v24 + v38;
  if (v12)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v39 < v24)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v39 < 0)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  *v5 = v10;
  v5[1] = v32 + -v24 * v20;
  v5[2] = v24;
  v5[3] = (2 * v39) | 1;
}

void *sub_101061E58(void *result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = v3 >> 1;
  v5 = __OFSUB__(v3 >> 1, v2);
  v6 = (v3 >> 1) - v2;
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = result - v6;
  if (__OFSUB__(result, v6))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v7)
  {
    return result;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = _swiftEmptyArrayStorage;
  }

  v8 = result[2];
  v5 = __OFADD__(v8, v7);
  v9 = &v7[v8];
  if (v5)
  {
    goto LABEL_13;
  }

  result[2] = v9;

  v10 = &v7[v4];
  if (__OFADD__(v4, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  *(v1 + 24) = v3 & 1 | (2 * v10);
  return result;
}

void *sub_101061F10(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_30:
    if (v7 >= v6)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  v6 = a2;
  if ((a6 & 1) == 0)
  {
    goto LABEL_30;
  }

  v28 = result;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    swift_unknownObjectRelease();
    v10 = _swiftEmptyArrayStorage;
  }

  v11 = *(type metadata accessor for Bit() - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = v10[2];
  v14 = *(v11 + 72);
  v15 = a4 + v14 * a5 + v14 * v7;
  if (v15 == (v10 + v12 + v14 * v13))
  {
    v17 = v10[3];

    v18 = (v17 >> 1) - v13;
    v16 = v7 + v18;
    if (__OFADD__(v7, v18))
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }
  }

  else
  {

    v16 = v7;
  }

  swift_unknownObjectRetain();
  v19 = swift_dynamicCastClass();
  if (v16 >= v6)
  {
    if (!v19)
    {
      swift_unknownObjectRelease();
      v19 = _swiftEmptyArrayStorage;
    }

    v21 = v19[2];
    if (v15 == (v19 + v12 + v14 * v21))
    {
      v25 = v19[3];

      v26 = (v25 >> 1) - v21;
      v24 = __OFADD__(v7, v26);
      v7 += v26;
      if (v24)
      {
LABEL_35:
        __break(1u);
        return result;
      }
    }

    else
    {
    }

    result = v28;
    goto LABEL_23;
  }

  if (!v19)
  {
    swift_unknownObjectRelease();
    v19 = _swiftEmptyArrayStorage;
  }

  v20 = v19[2];
  if (v15 == (v19 + v12 + v14 * v20))
  {
    v22 = v19[3];

    v23 = (v22 >> 1) - v20;
    v24 = __OFADD__(v7, v23);
    v7 += v23;
    if (v24)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }
  }

  else
  {
  }

  result = v28;
LABEL_19:
  if (v7 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  v7 *= 2;
LABEL_23:
  if (v7 <= v6)
  {
    v27 = v6;
  }

  else
  {
    v27 = v7;
  }

  return sub_1003A8968(result, v27);
}

uint64_t sub_101062160(uint64_t a1)
{
  if (!swift_isUniquelyReferenced_nonNull())
  {
    return 0;
  }

  v6 = v2[2];
  v5 = v2[3];
  v7 = (v5 >> 1) - v6;
  if (__OFSUB__(v5 >> 1, v6))
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = v2[1];
  if ((v5 & 1) == 0)
  {
    goto LABEL_8;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = _swiftEmptyArrayStorage;
  }

  v10 = *(type metadata accessor for Bit() - 8);
  v11 = v9[2];
  if ((v8 + *(v10 + 72) * v6 + *(v10 + 72) * v7) != (v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v11))
  {

LABEL_8:
    v12 = v7;
    goto LABEL_10;
  }

  v13 = v9[3];

  v15 = (v13 >> 1) - v11;
  v16 = __OFADD__(v7, v15);
  v12 = v7 + v15;
  if (v16)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

LABEL_10:
  if (v12 < a1)
  {
    return 0;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = _swiftEmptyArrayStorage;
  }

  v1 = v17;
  v5 = *(type metadata accessor for Bit() - 8);
  v18 = *(v5 + 72);
  if (!v18)
  {
    goto LABEL_21;
  }

  result = v1;
  v19 = v8 + v18 * v6 - (v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)));
  if (v18 == -1 && v19 == 0x8000000000000000)
  {
    goto LABEL_25;
  }

  v20 = v19 / v18;
  v16 = __OFADD__(v7, v20);
  v5 = v7 + v20;
  if (v16)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v4 = *(v1 + 16);
  if (v5 < v4)
  {
LABEL_23:
    sub_100A1A12C(v5, v4, 0);
    return v1;
  }

  return result;
}

void *sub_10106239C(void *a1)
{
  v3 = type metadata accessor for Bit();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_10169F068, &unk_1013A00E0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v51 = &v48 - v12;
  result = __chkstk_darwin(v11);
  v15 = &v48 - v14;
  v17 = v1[2];
  v16 = v1[3];
  v18 = (v16 >> 1) - v17;
  if (__OFSUB__(v16 >> 1, v17))
  {
    goto LABEL_52;
  }

  v64 = v6;
  v19 = a1[1];
  v20 = a1[2];
  v59 = v20;
  v60 = v19;
  v21 = a1[4];
  v63 = a1[3] >> 1;
  v57 = v16;
  if (v21 == v63)
  {
    v62 = *(v4 + 56);
    v62(&v48 - v14, 1, 1, v3);
    v22 = v51;
  }

  else
  {
    v22 = v51;
    if (v21 < v20 || v21 >= v63)
    {
      goto LABEL_53;
    }

    (*(v4 + 16))(&v48 - v14, v60 + *(v4 + 72) * v21++, v3);
    v62 = *(v4 + 56);
    v62(v15, 0, 1, v3);
  }

  sub_101062D20(v15, v22);
  v50 = v4;
  v68 = *(v4 + 48);
  v69 = v4 + 48;
  if (v68(v22, 1, v3) == 1)
  {
LABEL_8:
    sub_101062D90(v15);
    return sub_101062D90(v22);
  }

  v23 = v21;
  v65 = (v50 + 32);
  v58 = (v50 + 16);
  v61 = v50 + 56;
  v48 = (v50 + 8);
  v49 = v1;
  v67 = v3;
  while (1)
  {
    result = sub_101062D90(v22);
    if (__OFADD__(v18, 1))
    {
      goto LABEL_45;
    }

    v55 = v23;
    v70 = sub_101061F10(v18, v18 + 1, *v1, v1[1], v17, v57);
    v24 = sub_101062144();
    sub_101061AEC(&v70, v18, 0, v24);

    v26 = v1[2];
    v25 = v1[3];
    v27 = (v25 >> 1) - v26;
    if (__OFSUB__(v25 >> 1, v26))
    {
      break;
    }

    v28 = *v1;
    v29 = v1[1];
    v56 = (v25 >> 1) - v26;
    v57 = v25;
    v52 = v25 >> 1;
    v53 = v28;
    if ((v25 & 1) == 0)
    {
      v32 = *(v50 + 72);
      v33 = v32 * v26;
      goto LABEL_18;
    }

    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain();
    v30 = swift_dynamicCastClass();
    if (!v30)
    {
      swift_unknownObjectRelease();
      v30 = _swiftEmptyArrayStorage;
    }

    v31 = v30[2];
    v32 = *(v50 + 72);
    v33 = v32 * v26;
    if ((v29 + v32 * v26 + v32 * v27) != (v30 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + v32 * v31))
    {

LABEL_18:
      v34 = v27;
      goto LABEL_20;
    }

    v35 = v30[3];

    v36 = (v35 >> 1) - v31;
    v34 = v56 + v36;
    if (__OFADD__(v56, v36))
    {
      goto LABEL_51;
    }

LABEL_20:
    v54 = v26;
    sub_101062D20(v15, v10);
    if (v68(v10, 1, v3) != 1)
    {
      v37 = *v65;
      if (v34 <= v18)
      {
        v38 = v18;
      }

      else
      {
        v38 = v34;
      }

      v66 = v38;
      v39 = v29 + v33 + v32 * v18;
      v23 = v55;
      while (1)
      {
        v41 = v23;
        v42 = v64;
        v37(v64, v10, v3);
        if (v66 == v18)
        {
          result = (*v48)(v42, v3);
          v18 = v66;
          v23 = v41;
          goto LABEL_35;
        }

        sub_101062D90(v15);
        result = (v37)(v39, v42, v3);
        if (v41 == v63)
        {
          v40 = 1;
          v23 = v63;
          v3 = v67;
        }

        else
        {
          if (v41 < v59 || v41 >= v63)
          {
            __break(1u);
LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

          v3 = v67;
          (*v58)(v15, v60 + v41 * v32, v67);
          v40 = 0;
          v23 = v41 + 1;
        }

        v62(v15, v40, 1, v3);
        sub_101062D20(v15, v10);
        v39 += v32;
        ++v18;
        if (v68(v10, 1, v3) == 1)
        {
          goto LABEL_22;
        }
      }
    }

    v23 = v55;
LABEL_22:
    result = sub_101062D90(v10);
LABEL_35:
    v43 = v18 - v56;
    v1 = v49;
    v17 = v54;
    if (__OFSUB__(v18, v56))
    {
      goto LABEL_47;
    }

    v3 = v67;
    if (v43)
    {
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain();
      result = swift_dynamicCastClass();
      if (!result)
      {
        swift_unknownObjectRelease();
        result = _swiftEmptyArrayStorage;
      }

      v44 = result[2];
      v45 = __OFADD__(v44, v43);
      v46 = v44 + v43;
      if (v45)
      {
        goto LABEL_48;
      }

      result[2] = v46;

      v47 = v52 + v43;
      if (__OFADD__(v52, v43))
      {
        goto LABEL_49;
      }

      if ((v47 & 0x8000000000000000) != 0)
      {
        goto LABEL_50;
      }

      v57 = v57 & 1 | (2 * v47);
      v1[3] = v57;
    }

    v22 = v51;
    sub_101062D20(v15, v51);
    if (v68(v22, 1, v3) == 1)
    {
      goto LABEL_8;
    }
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

void *sub_101062A04(void *result, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v38 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_34;
  }

  v9 = v5[2];
  v8 = v5[3];
  v4 = (v8 >> 1) - v9;
  if (__OFSUB__(v8 >> 1, v9))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v6 = a3;
  v11 = result;
  if ((v8 & 1) == 0)
  {
LABEL_8:
    v16 = v4;
    goto LABEL_10;
  }

  v12 = v5[1];
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    swift_unknownObjectRelease();
    v13 = _swiftEmptyArrayStorage;
  }

  v14 = *(type metadata accessor for Bit() - 8);
  v15 = v13[2];
  if ((v12 + *(v14 + 72) * v9 + *(v14 + 72) * v4) != (v13 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v15))
  {

    goto LABEL_8;
  }

  v17 = v13[3];

  v18 = (v17 >> 1) - v15;
  v19 = __OFADD__(v4, v18);
  v16 = v4 + v18;
  if (v19)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_10:
  result = (v4 + v7);
  if (__OFADD__(v4, v7))
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v16 < result)
  {
    if (v16 + 0x4000000000000000 < 0)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v20 = (2 * v16);
    if (v20 > result)
    {
      result = v20;
    }
  }

  result = sub_1010618B0(result);
  v22 = v5[2];
  v21 = v5[3];
  v4 = (v21 >> 1) - v22;
  if (__OFSUB__(v21 >> 1, v22))
  {
    goto LABEL_36;
  }

  v35 = v11;
  v37 = a2;
  v23 = v5[1];
  result = type metadata accessor for Bit();
  v24 = *(result - 1);
  v25 = *(v24 + 72);
  v26 = (v23 + v25 * v22 + v25 * v4);
  if ((v21 & 1) == 0)
  {
LABEL_37:
    v30 = v4;
    v29 = v6;
    goto LABEL_22;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v27 = swift_dynamicCastClass();
  if (!v27)
  {
    swift_unknownObjectRelease();
    v27 = _swiftEmptyArrayStorage;
  }

  v28 = v27[2];
  v29 = v6;
  if (v26 == (v27 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + v28 * v25))
  {
    v31 = v27[3];

    v32 = (v31 >> 1) - v28;
    v19 = __OFADD__(v4, v32);
    v30 = v4 + v32;
    if (v19)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }
  }

  else
  {

    v30 = v4;
  }

LABEL_22:
  v33 = v30 - v4;
  v34 = v38;
  if (__OFSUB__(v30, v4))
  {
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v38 == v29)
  {
    if (v7 <= 0)
    {
      v7 = 0;
      v34 = v29;
      goto LABEL_30;
    }

    goto LABEL_39;
  }

  if (v33 < v7)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  result = swift_arrayInitWithCopy();
  if (v7 > 0)
  {
    result = (v4 + v7);
    if (__OFADD__(v4, v7))
    {
LABEL_44:
      __break(1u);
      return result;
    }

    result = sub_101061E58(result);
  }

LABEL_30:
  if (v7 == v33)
  {
    v39[0] = v35;
    v39[1] = v37;
    v39[2] = v29;
    v39[3] = a4;
    v39[4] = v34;
    return sub_10106239C(v39);
  }

  return result;
}

uint64_t sub_101062D20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_10169F068, &unk_1013A00E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_101062D90(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_10169F068, &unk_1013A00E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for AccessoryIdentityPairingLockCheckEndPoint(uint64_t a1)
{
  result = qword_1016C4F18;
  if (!qword_1016C4F18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_101062E6C()
{
  v1 = type metadata accessor for FMNAccountType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + *(type metadata accessor for AccessoryIdentityPairingLockCheckEndPoint(0) + 20)) == 1)
  {
    (*(v2 + 104))(v4, enum case for FMNAccountType.none(_:), v1);
    type metadata accessor for AccountURLComponents();
    swift_allocObject();
    sub_1010B32C8(v4);
    sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
    OS_dispatch_queue.sync<A>(execute:)();
    URLComponents.init()();
    URLComponents.scheme.setter();
    URLComponents.host.setter();
    URLComponents.path.setter();

    v5 = URLComponents.path.modify();
    v6._countAndFlagsBits = 0xD00000000000002ALL;
    v6._object = 0x8000000101379250;
    String.append(_:)(v6);
    v5(&v15, 0);
  }

  else
  {
    (*(v2 + 16))(v4, v0, v1);
    type metadata accessor for AccountURLComponents();
    swift_allocObject();
    sub_1010B32C8(v4);
    sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
    OS_dispatch_queue.sync<A>(execute:)();
    URLComponents.init()();
    URLComponents.scheme.setter();
    URLComponents.host.setter();
    URLComponents.path.setter();

    v7 = URLComponents.path.modify();
    v8._countAndFlagsBits = 0xD00000000000001BLL;
    v8._object = 0x8000000101379230;
    String.append(_:)(v8);
    v7(&v15, 0);
    if (qword_101694F58 != -1)
    {
      swift_once();
    }

    v9 = qword_10177C218;
    v10 = [objc_opt_self() sharedInstance];
    v11 = [v10 isInternalBuild];

    if (v11)
    {
      v12 = String._bridgeToObjectiveC()();
      v13 = [v9 stringForKey:v12];

      if (v13)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        URLComponents.host.setter();
      }
    }
  }
}

unint64_t sub_101063248()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v11 - v5;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v7 = sub_101073524(v11[1]);

  if ((v7 * 60) >> 64 != (60 * v7) >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  static Date.trustedNow.getter(v6);
  Date.timeIntervalSinceReferenceDate.getter();
  Date.init(timeIntervalSinceReferenceDate:)();
  Date.timeIntervalSince(_:)();
  static Duration.seconds(_:)();
  v9 = Duration.milliseconds.getter();
  v10 = *(v1 + 8);
  v10(v4, v0);
  result = (v10)(v6, v0);
  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!HIDWORD(v9))
  {
    return v9;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_101063438()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C530);
  sub_1000076D4(v0, qword_10177C530);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1010634B8()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016C4F50);
  v1 = sub_1000076D4(v0, qword_1016C4F50);
  if (qword_1016951B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177C530);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_101063580(uint64_t a1)
{
  if (a1 > 4)
  {
    if (a1 <= 7)
    {
      if (a1 == 5)
      {
        return 0xD000000000000016;
      }

      if (a1 != 6)
      {
        return 0x676E697373696D2ELL;
      }

      return 0xD000000000000013;
    }

    switch(a1)
    {
      case 8:
        return 0xD000000000000012;
      case 9:
        return 0x64696C61766E692ELL;
      case 10:
        return 0xD000000000000010;
    }

LABEL_24:
    strcpy(v4, ".underlying(");
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v2._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v2);

    v3._countAndFlagsBits = 41;
    v3._object = 0xE100000000000000;
    String.append(_:)(v3);
    return v4[0];
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x6E776F6E6B6E752ELL;
    }

    if (a1 == 1)
    {
      return 0x74756F656D69742ELL;
    }

    goto LABEL_24;
  }

  if (a1 == 2)
  {
    return 0x4E64726F6365722ELL;
  }

  if (a1 != 3)
  {
    return 0x676E697373696D2ELL;
  }

  return 0x6F707075736E752ELL;
}

uint64_t sub_1010637D4()
{
  v1[3] = v0;
  sub_1000BC4D4(&unk_1016C1200, &qword_1013B6240);
  v1[4] = swift_task_alloc();
  type metadata accessor for UUID();
  v1[5] = swift_task_alloc();
  sub_1000BC4D4(&qword_101698E38, &unk_101395BA0);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_1010638D4, 0, 0);
}

uint64_t sub_1010638D4()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  swift_defaultActor_initialize();
  v3[14] = 0xD00000000000001DLL;
  v3[15] = 0x80000001013FD470;
  type metadata accessor for WorkItemQueue();
  v4 = type metadata accessor for WorkItemQueue.WarningOptions();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  UUID.init()();
  v3[17] = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  type metadata accessor for CentralManager();
  sub_1000BC4D4(&unk_1016C2250, &unk_1013F6360);
  v5 = type metadata accessor for CentralManager.Options();
  v6 = *(v5 - 8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101385D80;
  static CentralManager.Options.needsRestrictedStateOperation.getter();
  v0[2] = v7;
  sub_1010732D8(&unk_1016C1210, 255, &type metadata accessor for CentralManager.Options, &protocol conformance descriptor for CentralManager.Options);
  sub_1000BC4D4(&unk_1016C2260, &unk_101395BB0);
  sub_1000041A4(&qword_1016C1220, &unk_1016C2260, &unk_101395BB0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v6 + 56))(v2, 0, 1, v5);
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_10026B354;
  v9 = v0[4];

  return CentralManager.__allocating_init(options:)(v9);
}

uint64_t sub_101063BA0()
{
  *(v1 + 696) = v0;
  v2 = swift_task_alloc();
  *(v1 + 744) = v2;
  *v2 = v1;
  v2[1] = sub_101063C34;

  return daemon.getter();
}

uint64_t sub_101063C34(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 752) = a1;

  v3 = swift_task_alloc();
  *(v2 + 760) = v3;
  v4 = type metadata accessor for Daemon();
  UnlockService = type metadata accessor for FirstUnlockService();
  v6 = sub_1010732D8(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1010732D8(&qword_10169BD10, 255, &type metadata accessor for FirstUnlockService, &protocol conformance descriptor for FirstUnlockService);
  *v3 = v9;
  v3[1] = sub_101063E18;

  return ActorServiceDaemon.getService<A>()(v4, UnlockService, v6, v7);
}

uint64_t sub_101063E18(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 768) = a1;

  v4 = *(v3 + 696);
  if (v1)
  {

    v5 = sub_101064398;
  }

  else
  {

    v5 = sub_101063F7C;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_101063F7C()
{
  if (qword_1016951B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 776) = sub_1000076D4(v1, qword_1016C4F50);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Waiting for first unlock", v4, 2u);
  }

  v7 = (&async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock() + async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock());
  v5 = swift_task_alloc();
  *(v0 + 784) = v5;
  *v5 = v0;
  v5[1] = sub_1010640E0;

  return v7();
}

uint64_t sub_1010640E0()
{
  v1 = *(*v0 + 696);

  return _swift_task_switch(sub_1010641F0, v1, 0);
}

uint64_t sub_1010641F0(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Device is now unlocked", v4, 2u);
  }

  swift_asyncLet_begin();

  return _swift_asyncLet_get(v1 + 16);
}

uint64_t sub_101064334()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_101064398()
{
  if (qword_1016951B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016C4F50);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "First unlock service is not available. Bailing", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1010644B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003633C;

  return sub_101064540();
}

uint64_t sub_101064540()
{
  v1[3] = v0;
  v1[4] = *v0;
  v2 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v1[7] = *(v3 + 64);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = type metadata accessor for CentralManager.ConnectedState();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016C21B0, &unk_101395B20);
  v1[14] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_10169BCE8, &unk_1013E8AA0);
  v1[15] = v4;
  v1[16] = *(v4 - 8);
  v1[17] = swift_task_alloc();
  v5 = sub_1000BC4D4(&unk_1016C21C0, &unk_101395B30);
  v1[18] = v5;
  v1[19] = *(v5 - 8);
  v1[20] = swift_task_alloc();

  return _swift_task_switch(sub_101064798, v0, 0);
}

uint64_t sub_101064798()
{
  v18 = v0;
  if (qword_1016951B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[21] = sub_1000076D4(v1, qword_1016C4F50);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v17 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x800000010134F3A0, &v17);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v0[22] = *(v0[3] + 128);
  sub_1000BC4D4(&qword_10169BCF0, &unk_1013E2690);
  v6 = type metadata accessor for CentralManager.State();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  v0[23] = v10;
  *(v10 + 16) = xmmword_10138BBE0;
  v11 = v10 + v9;
  v12 = *(v7 + 104);
  v12(v11, enum case for CentralManager.State.poweredOn(_:), v6);
  v12(v11 + v8, enum case for CentralManager.State.restricted(_:), v6);
  v13 = swift_task_alloc();
  v0[24] = v13;
  v14 = type metadata accessor for CentralManager();
  v0[25] = v14;
  v15 = sub_1010732D8(&unk_1016C1160, 255, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  *v13 = v0;
  v13[1] = sub_101064A94;

  return CentralManagerProtocol.await(states:)(v10, v14, v15);
}

uint64_t sub_101064A94()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_101065794;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_101064BBC;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_101064BBC()
{
  sub_1000BC4D4(&qword_1016973D8, &qword_10138BF80);
  sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0);
  v1 = swift_allocObject();
  *(v0 + 216) = v1;
  *(v1 + 16) = xmmword_101385D80;
  type metadata accessor for Service();
  Identifier.init(stringLiteral:)();
  sub_1010732D8(&unk_1016C21D0, 255, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_101064D38, v3, v2);
}

uint64_t sub_101064D38()
{
  v1 = v0[26];
  dispatch thunk of CentralManager.connectionEvents(serviceIdentifiers:)();
  v0[28] = v1;
  if (v1)
  {
    v2 = v0[3];
    v3 = sub_1010659AC;
  }

  else
  {
    v4 = v0[3];

    v3 = sub_101064DDC;
    v2 = v4;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_101064DDC()
{
  AsyncStream.makeAsyncIterator()();
  v2 = sub_1010732D8(&qword_1016C5030, v1, type metadata accessor for AccessoryConfigurationService, &unk_1013FD568);
  v3 = v0[28];
  v0[29] = v2;
  v0[30] = v3;
  v4 = v0[3];
  v5 = swift_task_alloc();
  v0[31] = v5;
  *v5 = v0;
  v5[1] = sub_101064ED8;
  v6 = v0[14];
  v7 = v0[15];

  return AsyncStream.Iterator.next(isolation:)(v6, v4, v2, v7);
}

uint64_t sub_101064ED8()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_101064FE8, v1, 0);
}

uint64_t sub_101064FE8()
{
  v65 = v0;
  v1 = v0[14];
  v2 = sub_1000BC4D4(&qword_10169BCF8, &unk_101395B40);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[16] + 8))(v0[17], v0[15]);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    v5 = os_log_type_enabled(v3, v4);
    v7 = v0[19];
    v6 = v0[20];
    v8 = v0[18];
    if (v5)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "centralManager.connectionEvents() terminated", v9, 2u);
    }

    (*(v7 + 8))(v6, v8);
    goto LABEL_12;
  }

  v10 = v0[30];
  v11 = *v1;
  sub_101072F44(v1 + *(v2 + 48), v0[13], &type metadata accessor for CentralManager.ConnectedState);
  static Task<>.checkCancellation()();
  if (v10)
  {
    v13 = v0[19];
    v12 = v0[20];
    v15 = v0[17];
    v14 = v0[18];
    v16 = v0[15];
    v17 = v0[16];
    v18 = v0[13];

    sub_101072FAC(v18, &type metadata accessor for CentralManager.ConnectedState);
    (*(v17 + 8))(v15, v16);
    (*(v13 + 8))(v12, v14);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v64[0] = v23;
      *v21 = 136315394;
      *(v21 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x800000010134F3A0, v64);
      *(v21 + 12) = 2114;
      swift_errorRetain();
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 14) = v24;
      *v22 = v24;
      _os_log_impl(&_mh_execute_header, v19, v20, "%s error: %{public}@", v21, 0x16u);
      sub_10000B3A8(v22, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v23);
    }

    else
    {
    }

LABEL_12:

    v42 = v0[1];

    return v42();
  }

  v26 = v0[12];
  v25 = v0[13];
  type metadata accessor for Transaction();
  static Transaction.$current.getter();
  v0[2] = v11;
  swift_retain_n();
  sub_1000BC4D4(&qword_10169BD00, &qword_1013FD5B0);
  swift_task_localValuePush();
  sub_1010721A8(v25, v26, &type metadata accessor for CentralManager.ConnectedState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = v0[9];
    v27 = v0[10];
    v29 = v0[5];
    v30 = v0[6];
    v63 = *(v30 + 32);
    v63(v27, v0[12], v29);
    v62 = *(v30 + 16);
    v62(v28, v27, v29);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    v33 = os_log_type_enabled(v31, v32);
    v34 = v0[9];
    v36 = v0[5];
    v35 = v0[6];
    if (v33)
    {
      v37 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v64[0] = v60;
      *v37 = 136446210;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = v32;
      v40 = v39;
      v61 = *(v35 + 8);
      v61(v34, v36);
      v41 = sub_1000136BC(v38, v40, v64);

      *(v37 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v31, v58, "Connected to %{public}s", v37, 0xCu);
      sub_100007BAC(v60);
    }

    else
    {

      v61 = *(v35 + 8);
      v61(v34, v36);
    }

    v44 = v0[10];
    v46 = v0[7];
    v45 = v0[8];
    v47 = v0[5];
    v48 = v0[6];
    v49 = v0[3];
    v59 = v0[4];
    v62(v45, v44, v47);
    v50 = (*(v48 + 80) + 24) & ~*(v48 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = v49;
    v63(v51 + v50, v45, v47);
    *(v51 + ((v46 + v50 + 7) & 0xFFFFFFFFFFFFFFF8)) = v59;

    dispatch thunk of WorkItemQueue.enqueue(_:)();

    v61(v44, v47);
  }

  else
  {
    (*(v0[6] + 8))(v0[12], v0[5]);
  }

  v52 = v0[13];
  swift_task_localValuePop();

  sub_101072FAC(v52, &type metadata accessor for CentralManager.ConnectedState);
  v0[30] = 0;
  v53 = v0[29];
  v54 = v0[3];
  v55 = swift_task_alloc();
  v0[31] = v55;
  *v55 = v0;
  v55[1] = sub_101064ED8;
  v56 = v0[14];
  v57 = v0[15];

  return AsyncStream.Iterator.next(isolation:)(v56, v54, v53, v57);
}

uint64_t sub_101065794()
{
  v10 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v3 = 136315394;
    *(v3 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x800000010134F3A0, &v9);
    *(v3 + 12) = 2114;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v6;
    *v4 = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s error: %{public}@", v3, 0x16u);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v5);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1010659AC()
{
  v10 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v3 = 136315394;
    *(v3 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x800000010134F3A0, &v9);
    *(v3 + 12) = 2114;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v6;
    *v4 = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s error: %{public}@", v3, 0x16u);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v5);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_101065BE8(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for AccessoryConfigurationService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_101065C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for AccessoryConfigurationService();
  *v8 = v4;
  v8[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v9, a4);
}

uint64_t sub_101065D54(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for AccessoryConfigurationService();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_101065DFC(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for AccessoryConfigurationService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.startup()(v5, a2);
}

uint64_t sub_101065EA4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_101063BA0();
}

uint64_t sub_101065F30()
{
  type metadata accessor for AccessoryConfigurationService();
  sub_1010732D8(&unk_1016B1040, v0, type metadata accessor for AccessoryConfigurationService, &unk_1013FD508);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_101066028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_10106610C, 0, 0);
}

uint64_t sub_10106610C()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v7 = v0[2];
  v6 = v0[3];
  v8 = *(v3 + 16);
  v0[10] = v8;
  v0[11] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v1, v6, v4);
  v9 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v10 = (v2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  v0[12] = v11;
  *(v11 + 16) = v7;
  (*(v3 + 32))(v11 + v9, v1, v4);
  *(v11 + v10) = v5;

  v12 = swift_task_alloc();
  v0[13] = v12;
  *v12 = v0;
  v12[1] = sub_101066284;

  return withTimeout<A>(_:block:)(v12, 0x158E460913D00000, 1, &unk_1013FD5D0, v11, &type metadata for () + 1);
}

uint64_t sub_101066284()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1010663A0;
  }

  else
  {

    v2 = sub_10026F2C0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1010663A0()
{
  v23 = v0;

  if (qword_1016951B8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016C4F50);
  v1(v2, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[8];
  v11 = v0[5];
  v10 = v0[6];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v12 = 136446466;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_1000136BC(v13, v15, &v22);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v17;
    *v20 = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error handling connection event for %{public}s: %{public}@", v12, 0x16u);
    sub_10000B3A8(v20, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v21);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_101066668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  type metadata accessor for String.Encoding();
  v3[5] = swift_task_alloc();
  v3[6] = *(type metadata accessor for OwnedBeaconGroup.PairingState(0) - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016BBEA0, &unk_101395A80);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v3[11] = swift_task_alloc();
  v4 = type metadata accessor for OwnedBeaconGroup(0);
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v5 = type metadata accessor for TransportType();
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3[20] = v6;
  v3[21] = *(v6 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_101066928, 0, 0);
}

uint64_t sub_101066928()
{
  v1 = *(v0[3] + 128);
  v0[25] = v1;

  v2 = swift_task_alloc();
  v0[26] = v2;
  *v2 = v0;
  v2[1] = sub_101066A04;

  return withTimeout<A>(_:block:)(v2, 2000000000000000000, 0, &unk_1013FD5E0, v1, &type metadata for () + 1);
}

uint64_t sub_101066A04()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_101068410;
  }

  else
  {

    v2 = sub_101066B20;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_101066B20()
{
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  type metadata accessor for UUID();
  v1 = swift_allocObject();
  *(v0 + 224) = v1;
  *(v1 + 16) = xmmword_101385D80;
  Identifier.id.getter();
  v4 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:));
  v2 = swift_task_alloc();
  *(v0 + 232) = v2;
  *v2 = v0;
  v2[1] = sub_101066C78;

  return v4(v1);
}

uint64_t sub_101066C78(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v1;

  if (v1)
  {
    v4 = sub_101068524;
  }

  else
  {

    v4 = sub_101066D94;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_101066D94()
{
  v25 = v0;
  v1 = v0[30];
  if (v1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v1 & 0xC000000000000001) != 0)
    {
      v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_6;
    }

    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v2 = *(v0[30] + 32);

LABEL_6:
      v0[32] = v2;

      type metadata accessor for Peripheral();
      sub_1010732D8(&unk_1016C11B0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
      v4 = dispatch thunk of Actor.unownedExecutor.getter();

      return _swift_task_switch(sub_101067174, v4, v3);
    }

    __break(1u);
    goto LABEL_19;
  }

  if (qword_1016951B8 != -1)
  {
LABEL_19:
    swift_once();
  }

  v5 = v0[24];
  v6 = v0[20];
  v7 = v0[21];
  v8 = v0[4];
  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_1016C4F50);
  (*(v7 + 16))(v5, v8, v6);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[24];
  v14 = v0[20];
  v15 = v0[21];
  if (v12)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24 = v17;
    *v16 = 136446210;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    (*(v15 + 8))(v13, v14);
    v21 = sub_1000136BC(v18, v20, &v24);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v10, v11, "Unable to retrieve a Peripheral for %{public}s", v16, 0xCu);
    sub_100007BAC(v17);
  }

  else
  {

    (*(v15 + 8))(v13, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_101067174()
{
  dispatch thunk of Peripheral.transportType.getter();

  return _swift_task_switch(sub_1010671E0, 0, 0);
}

uint64_t sub_1010671E0()
{
  v29 = v0;
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  (*(v4 + 104))(v2, enum case for TransportType.classic(_:), v3);
  sub_1010732D8(&qword_10169BCD8, 255, &type metadata accessor for TransportType, &protocol conformance descriptor for TransportType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v5 = *(v4 + 8);
  v5(v2, v3);
  v5(v1, v3);
  if (*(v0 + 344) == *(v0 + 345))
  {
    v6 = swift_task_alloc();
    *(v0 + 264) = v6;
    *v6 = v0;
    v6[1] = sub_10106760C;
    v7 = *(v0 + 256);
    v8 = *(v0 + 88);

    return sub_1010690EC(v8, v7);
  }

  else
  {
    if (qword_1016951B8 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 168);
    v10 = *(v0 + 176);
    v12 = *(v0 + 160);
    v13 = *(v0 + 32);
    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_1016C4F50);
    (*(v11 + 16))(v10, v13, v12);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    v17 = os_log_type_enabled(v15, v16);
    v19 = *(v0 + 168);
    v18 = *(v0 + 176);
    v20 = *(v0 + 160);
    if (v17)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28 = v22;
      *v21 = 136446210;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      (*(v19 + 8))(v18, v20);
      v26 = sub_1000136BC(v23, v25, &v28);

      *(v21 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v15, v16, "Ignore non-classic peripheral: %{public}s", v21, 0xCu);
      sub_100007BAC(v22);
    }

    else
    {

      (*(v19 + 8))(v18, v20);
    }

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_10106760C()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_101068638;
  }

  else
  {
    v2 = sub_101067720;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_101067720()
{
  v65 = v0;
  v1 = *(v0 + 88);
  if ((*(*(v0 + 104) + 48))(v1, 1, *(v0 + 96)) == 1)
  {
    sub_10000B3A8(v1, &unk_1016AF8B0, &unk_1013A0700);
    if (qword_1016951B8 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 184);
    v3 = *(v0 + 160);
    v4 = *(v0 + 168);
    v5 = *(v0 + 32);
    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_1016C4F50);
    (*(v4 + 16))(v2, v5, v3);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 184);
    v12 = *(v0 + 160);
    v11 = *(v0 + 168);
    if (v9)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v64 = v14;
      *v13 = 136446210;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v11 + 8))(v10, v12);
      v18 = sub_1000136BC(v15, v17, &v64);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v7, v8, "No beacon group was found for connected peripheral: %{public}s", v13, 0xCu);
      sub_100007BAC(v14);
    }

    else
    {

      (*(v11 + 8))(v10, v12);
    }

    goto LABEL_22;
  }

  sub_101072F44(v1, *(v0 + 120), type metadata accessor for OwnedBeaconGroup);
  if (qword_1016951B8 != -1)
  {
    swift_once();
  }

  v19 = *(v0 + 112);
  v20 = *(v0 + 120);
  v21 = type metadata accessor for Logger();
  *(v0 + 280) = sub_1000076D4(v21, qword_1016C4F50);
  sub_1010721A8(v20, v19, type metadata accessor for OwnedBeaconGroup);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v24 = os_log_type_enabled(v22, v23);
  v25 = *(v0 + 112);
  if (v24)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v64 = v27;
    *v26 = 136315138;
    v28 = sub_10051F7B0();
    v30 = v29;
    sub_101072FAC(v25, type metadata accessor for OwnedBeaconGroup);
    v31 = sub_1000136BC(v28, v30, &v64);

    *(v26 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v22, v23, "Found beacon group %s", v26, 0xCu);
    sub_100007BAC(v27);
  }

  else
  {

    sub_101072FAC(v25, type metadata accessor for OwnedBeaconGroup);
  }

  v32 = *(v0 + 72);
  v33 = *(*(v0 + 120) + *(*(v0 + 96) + 40));
  v34 = *(v0 + 48);
  *(v0 + 288) = v33;
  v35 = *(v33 + 32);
  *(v0 + 346) = v35;
  v36 = -1;
  v37 = -1 << v35;
  if (-(-1 << v35) < 64)
  {
    v36 = ~(-1 << -v37);
  }

  v38 = v36 & *(v33 + 64);

  if (v38)
  {
    v40 = 0;
LABEL_19:
    v43 = *(v0 + 64);
    v44 = (v38 - 1) & v38;
    v45 = __clz(__rbit64(v38)) | (v40 << 6);
    v46 = (*(v39 + 48) + 16 * v45);
    v47 = *v46;
    v48 = v46[1];
    sub_1010721A8(*(v39 + 56) + *(v34 + 72) * v45, v43, type metadata accessor for OwnedBeaconGroup.PairingState);
    v49 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
    v50 = *(v49 + 48);
    *v32 = v47;
    v32[1] = v48;
    sub_101072F44(v43, v32 + v50, type metadata accessor for OwnedBeaconGroup.PairingState);
    (*(*(v49 - 8) + 56))(v32, 0, 1, v49);
    sub_100017D5C(v47, v48);
    v42 = v40;
  }

  else
  {
    v41 = 0;
    v42 = ((63 - v37) >> 6) - 1;
    while (v42 != v41)
    {
      v40 = v41 + 1;
      v38 = *(v39 + 72 + 8 * v41++);
      if (v38)
      {
        goto LABEL_19;
      }
    }

    v63 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
    (*(*(v63 - 8) + 56))(v32, 1, 1, v63);
    v44 = 0;
  }

  *(v0 + 296) = v44;
  *(v0 + 304) = v42;
  v51 = *(v0 + 80);
  sub_101072210(*(v0 + 72), v51);
  v52 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
  if ((*(*(v52 - 8) + 48))(v51, 1, v52) == 1)
  {
    v53 = *(v0 + 120);

    sub_101072FAC(v53, type metadata accessor for OwnedBeaconGroup);
LABEL_22:

    v54 = *(v0 + 8);

    return v54();
  }

  v56 = *(v0 + 80);
  v57 = *(v0 + 56);
  v58 = *v56;
  *(v0 + 312) = *v56;
  v59 = v56[1];
  *(v0 + 320) = v59;
  sub_101072F44(v56 + *(v52 + 48), v57, type metadata accessor for OwnedBeaconGroup.PairingState);
  v60 = swift_task_alloc();
  *(v0 + 328) = v60;
  *v60 = v0;
  v60[1] = sub_101067EE4;
  v61 = *(v0 + 256);
  v62 = *(v0 + 56);

  return sub_10106A974(v61, v58, v59, v62);
}

uint64_t sub_101067EE4()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_10106874C;
  }

  else
  {
    v2 = sub_101067FF8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_101067FF8()
{
  v1 = *(v0 + 56);
  sub_100016590(*(v0 + 312), *(v0 + 320));
  result = sub_101072FAC(v1, type metadata accessor for OwnedBeaconGroup.PairingState);
  v3 = *(v0 + 296);
  v4 = *(v0 + 304);
  if (v3)
  {
    v5 = *(v0 + 288);
LABEL_11:
    v10 = *(v0 + 64);
    v11 = *(v0 + 72);
    v12 = (v3 - 1) & v3;
    v13 = __clz(__rbit64(v3)) | (v4 << 6);
    v14 = (*(v5 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    sub_1010721A8(*(v5 + 56) + *(*(v0 + 48) + 72) * v13, v10, type metadata accessor for OwnedBeaconGroup.PairingState);
    v17 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
    v18 = *(v17 + 48);
    *v11 = v15;
    v11[1] = v16;
    sub_101072F44(v10, v11 + v18, type metadata accessor for OwnedBeaconGroup.PairingState);
    (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
    sub_100017D5C(v15, v16);
    v8 = v4;
LABEL_12:
    *(v0 + 296) = v12;
    *(v0 + 304) = v8;
    v19 = *(v0 + 80);
    sub_101072210(*(v0 + 72), v19);
    v20 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
    if ((*(*(v20 - 8) + 48))(v19, 1, v20) == 1)
    {
      v21 = *(v0 + 120);

      sub_101072FAC(v21, type metadata accessor for OwnedBeaconGroup);

      v22 = *(v0 + 8);

      return v22();
    }

    else
    {
      v23 = *(v0 + 80);
      v24 = *(v0 + 56);
      v25 = *v23;
      *(v0 + 312) = *v23;
      v26 = v23[1];
      *(v0 + 320) = v26;
      sub_101072F44(v23 + *(v20 + 48), v24, type metadata accessor for OwnedBeaconGroup.PairingState);
      v27 = swift_task_alloc();
      *(v0 + 328) = v27;
      *v27 = v0;
      v27[1] = sub_101067EE4;
      v28 = *(v0 + 256);
      v29 = *(v0 + 56);

      return sub_10106A974(v28, v25, v26, v29);
    }
  }

  else
  {
    v6 = ((1 << *(v0 + 346)) + 63) >> 6;
    if (v6 <= (v4 + 1))
    {
      v7 = v4 + 1;
    }

    else
    {
      v7 = ((1 << *(v0 + 346)) + 63) >> 6;
    }

    v8 = v7 - 1;
    while (1)
    {
      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v9 >= v6)
      {
        v30 = *(v0 + 72);
        v31 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
        (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
        v12 = 0;
        goto LABEL_12;
      }

      v5 = *(v0 + 288);
      v3 = *(v5 + 8 * v9 + 64);
      ++v4;
      if (v3)
      {
        v4 = v9;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_101068410()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_101068524()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_101068638()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10106874C()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  sub_100017D5C(v2, v1);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  sub_100016590(v2, v1);

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 312);
    v5 = *(v0 + 320);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *(v0 + 16) = v9;
    *v7 = 141558531;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    sub_100017D5C(v6, v5);
    static String.Encoding.utf8.getter();
    v10 = String.init(data:encoding:)();
    v12 = v11;
    v13 = *(v0 + 312);
    v14 = *(v0 + 320);
    if (!v12)
    {
      v15 = *(v0 + 312);
      v16 = *(v0 + 320);
      v10 = Data.hexString.getter();
      v12 = v17;
      v13 = v15;
      v14 = v16;
    }

    sub_100016590(v13, v14);
    v18 = *(v0 + 312);
    v53 = *(v0 + 320);
    v54 = *(v0 + 56);
    v19 = sub_1000136BC(v10, v12, (v0 + 16));

    *(v7 + 14) = v19;
    *(v7 + 22) = 2114;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v20;
    *v8 = v20;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to configure key alignment for %{private,mask.hash}s error %{public}@", v7, 0x20u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v9);

    sub_100016590(v18, v53);
    v21 = v54;
  }

  else
  {
    v22 = *(v0 + 56);
    sub_100016590(*(v0 + 312), *(v0 + 320));

    v21 = v22;
  }

  result = sub_101072FAC(v21, type metadata accessor for OwnedBeaconGroup.PairingState);
  v24 = *(v0 + 296);
  v25 = *(v0 + 304);
  if (v24)
  {
    v26 = *(v0 + 288);
LABEL_16:
    v31 = *(v0 + 64);
    v32 = *(v0 + 72);
    v33 = (v24 - 1) & v24;
    v34 = __clz(__rbit64(v24)) | (v25 << 6);
    v35 = (*(v26 + 48) + 16 * v34);
    v36 = *v35;
    v37 = v35[1];
    sub_1010721A8(*(v26 + 56) + *(*(v0 + 48) + 72) * v34, v31, type metadata accessor for OwnedBeaconGroup.PairingState);
    v38 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
    v39 = *(v38 + 48);
    *v32 = v36;
    v32[1] = v37;
    sub_101072F44(v31, v32 + v39, type metadata accessor for OwnedBeaconGroup.PairingState);
    (*(*(v38 - 8) + 56))(v32, 0, 1, v38);
    sub_100017D5C(v36, v37);
    v29 = v25;
LABEL_17:
    *(v0 + 296) = v33;
    *(v0 + 304) = v29;
    v40 = *(v0 + 80);
    sub_101072210(*(v0 + 72), v40);
    v41 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
    if ((*(*(v41 - 8) + 48))(v40, 1, v41) == 1)
    {
      v42 = *(v0 + 120);

      sub_101072FAC(v42, type metadata accessor for OwnedBeaconGroup);

      v43 = *(v0 + 8);

      return v43();
    }

    else
    {
      v44 = *(v0 + 80);
      v45 = *(v0 + 56);
      v46 = *v44;
      *(v0 + 312) = *v44;
      v47 = v44[1];
      *(v0 + 320) = v47;
      sub_101072F44(v44 + *(v41 + 48), v45, type metadata accessor for OwnedBeaconGroup.PairingState);
      v48 = swift_task_alloc();
      *(v0 + 328) = v48;
      *v48 = v0;
      v48[1] = sub_101067EE4;
      v49 = *(v0 + 256);
      v50 = *(v0 + 56);

      return sub_10106A974(v49, v46, v47, v50);
    }
  }

  else
  {
    v27 = ((1 << *(v0 + 346)) + 63) >> 6;
    if (v27 <= (v25 + 1))
    {
      v28 = v25 + 1;
    }

    else
    {
      v28 = ((1 << *(v0 + 346)) + 63) >> 6;
    }

    v29 = v28 - 1;
    while (1)
    {
      v30 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v30 >= v27)
      {
        v51 = *(v0 + 72);
        v52 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
        (*(*(v52 - 8) + 56))(v51, 1, 1, v52);
        v33 = 0;
        goto LABEL_17;
      }

      v26 = *(v0 + 288);
      v24 = *(v26 + 8 * v30 + 64);
      ++v25;
      if (v24)
      {
        v25 = v30;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_101068D70(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = type metadata accessor for CentralManager.State();
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v2[5] = swift_task_alloc();

  return _swift_task_switch(sub_101068E30, 0, 0);
}

uint64_t sub_101068E30()
{
  (*(v0[4] + 104))(v0[5], enum case for CentralManager.State.poweredOn(_:), v0[3]);
  v1 = swift_task_alloc();
  v0[6] = v1;
  v2 = type metadata accessor for CentralManager();
  v3 = sub_1010732D8(&unk_1016C1160, 255, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  *v1 = v0;
  v1[1] = sub_101068F44;
  v4 = v0[5];

  return CentralManagerProtocol.await(state:)(v4, v2, v3);
}

uint64_t sub_101068F44()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *v1;
  *(v5 + 56) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return _swift_task_switch(sub_1007809C0, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1010690EC(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v3[7] = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v3[8] = swift_task_alloc();
  v4 = type metadata accessor for OwnedBeaconGroup(0);
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v3[12] = swift_task_alloc();
  v5 = type metadata accessor for MACAddress();
  v3[13] = v5;
  v6 = *(v5 - 8);
  v3[14] = v6;
  v3[15] = *(v6 + 64);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_1010692AC, v2, 0);
}

uint64_t sub_1010692AC()
{
  v1 = *(v0[6] + 128);
  v0[20] = v1;

  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_101069388;

  return withTimeout<A>(_:block:)(v2, 2000000000000000000, 0, &unk_1013FD640, v1, &type metadata for () + 1);
}

uint64_t sub_101069388()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = sub_10106A7EC;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_1010694B0;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1010694B0()
{
  v1 = swift_task_alloc();
  *(v0 + 184) = v1;
  *v1 = v0;
  v1[1] = sub_101069540;

  return daemon.getter();
}

uint64_t sub_101069540(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 192) = a1;

  v3 = swift_task_alloc();
  *(v2 + 200) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_1010732D8(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1010732D8(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_101069724;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_101069724(uint64_t a1)
{
  v3 = *v2;
  v3[26] = a1;
  v3[27] = v1;

  if (v1)
  {
    v4 = v3[6];
    v5 = sub_10106A8B0;
    v6 = 0;
  }

  else
  {

    type metadata accessor for Peripheral();
    sub_1010732D8(&unk_1016C11B0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
    v5 = sub_1010698A8;
    v4 = v7;
    v6 = v9;
  }

  return _swift_task_switch(v5, v4, v6);
}

uint64_t sub_1010698A8()
{
  v1 = *(v0 + 48);
  dispatch thunk of Peripheral.macAddress.getter();

  return _swift_task_switch(sub_101069914, v1, 0);
}

uint64_t sub_101069914()
{
  v34 = v0;
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_1016A40D0, &unk_10138BE70);
    if (qword_1016951B8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_1016C4F50);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Looking through all beacon groups", v7, 2u);
    }

    v8 = v0[26];

    v9 = sub_10106A2A8;
    v10 = v8;
  }

  else
  {
    v11 = v0[19];
    v12 = *(v2 + 32);
    v0[28] = v12;
    v0[29] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v12(v11, v3, v1);
    if (qword_1016951B8 != -1)
    {
      swift_once();
    }

    v13 = v0[18];
    v14 = v0[19];
    v15 = v0[13];
    v16 = v0[14];
    v17 = type metadata accessor for Logger();
    v0[30] = sub_1000076D4(v17, qword_1016C4F50);
    v18 = *(v16 + 16);
    v0[31] = v18;
    v0[32] = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v18(v13, v14, v15);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[18];
    v23 = v0[13];
    v24 = v0[14];
    if (v21)
    {
      v25 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = v32;
      *v25 = 136446210;
      sub_1010732D8(&qword_1016A4210, 255, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      v29 = *(v24 + 8);
      v29(v22, v23);
      v30 = sub_1000136BC(v26, v28, &v33);

      *(v25 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v19, v20, "Looking for beacon group matching %{public}s", v25, 0xCu);
      sub_100007BAC(v32);
    }

    else
    {

      v29 = *(v24 + 8);
      v29(v22, v23);
    }

    v0[33] = v29;
    v10 = v0[26];
    v9 = sub_101069CA4;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_101069CA4()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v3 = *(v0 + 136);
  v4 = *(v0 + 112);
  v5 = *(v0 + 104);
  (*(v0 + 248))(v3, *(v0 + 152), v5);
  v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v0 + 272) = v7;
  *(v7 + 16) = v2;
  v1(v7 + v6, v3, v5);

  v8 = swift_task_alloc();
  *(v0 + 280) = v8;
  *v8 = v0;
  v8[1] = sub_101069DF4;
  v10 = *(v0 + 56);
  v9 = *(v0 + 64);

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_10107321C, v7, v10);
}

uint64_t sub_101069DF4()
{
  v1 = *(*v0 + 48);

  return _swift_task_switch(sub_101069F20, v1, 0);
}

uint64_t sub_101069F20()
{
  v33 = v0;
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[33];
    v5 = v0[19];
    v6 = v0[13];
    v7 = v0[4];

    v4(v5, v6);
    sub_10000B3A8(v3, &unk_1016AF8B0, &unk_1013A0700);
    (*(v2 + 56))(v7, 1, 1, v1);
  }

  else
  {
    v8 = v0[31];
    v9 = v0[19];
    v10 = v0[16];
    v11 = v0[13];
    sub_101072F44(v3, v0[11], type metadata accessor for OwnedBeaconGroup);
    v8(v10, v9, v11);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[33];
    v16 = v0[19];
    v17 = v0[16];
    v18 = v0[13];
    if (v14)
    {
      v31 = v0[33];
      v19 = swift_slowAlloc();
      v30 = v16;
      v20 = swift_slowAlloc();
      v32 = v20;
      *v19 = 136446210;
      sub_1010732D8(&qword_1016A4210, 255, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      v31(v17, v18);
      v24 = sub_1000136BC(v21, v23, &v32);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v12, v13, "Found beacon group matching %{public}s", v19, 0xCu);
      sub_100007BAC(v20);

      v31(v30, v18);
    }

    else
    {

      v15(v17, v18);
      v15(v16, v18);
    }

    v25 = v0[10];
    v26 = v0[9];
    v27 = v0[4];
    sub_101072F44(v0[11], v27, type metadata accessor for OwnedBeaconGroup);
    (*(v25 + 56))(v27, 0, 1, v26);
  }

  v28 = v0[1];

  return v28();
}

uint64_t sub_10106A2A8()
{

  v1 = swift_task_alloc();
  v0[36] = v1;
  v2 = sub_1000BC4D4(&qword_10169B778, &qword_101395240);
  v0[37] = v2;
  *v1 = v0;
  v1[1] = sub_10106A398;
  v3 = v0[26];

  return unsafeBlocking<A>(context:_:)(v0 + 2, 0xD000000000000010, 0x800000010134A8C0, sub_10025B32C, v3, v2);
}

uint64_t sub_10106A398()
{
  v1 = *(*v0 + 208);

  return _swift_task_switch(sub_10106A4B0, v1, 0);
}

uint64_t sub_10106A4B0()
{
  v1 = v0[6];
  v0[38] = v0[2];
  return _swift_task_switch(sub_10106A4D4, v1, 0);
}

uint64_t sub_10106A4D4()
{
  v1 = v0[20];
  v2 = v0[5];
  v0[3] = v0[38];
  v3 = swift_task_alloc();
  v0[39] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[40] = v4;
  v5 = sub_1000041A4(&qword_10169BCE0, &qword_10169B778, &qword_101395240, &protocol conformance descriptor for [A]);
  *v4 = v0;
  v4[1] = sub_10106A5EC;
  v6 = v0[37];
  v7 = v0[4];

  return Sequence.asyncFirst(where:)(v7, &unk_1013FD658, v3, v6, v5);
}

uint64_t sub_10106A5EC()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = *(v2 + 48);

    return _swift_task_switch(sub_10106A734, v4, 0);
  }
}

uint64_t sub_10106A734()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10106A7EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10106A8B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10106A974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[55] = a4;
  v5[56] = v4;
  v5[53] = a2;
  v5[54] = a3;
  v5[52] = a1;
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v5[57] = swift_task_alloc();
  v5[58] = swift_task_alloc();
  v5[59] = type metadata accessor for AccessoryCommand(0);
  v5[60] = swift_task_alloc();
  type metadata accessor for String.Encoding();
  v5[61] = swift_task_alloc();
  v5[62] = type metadata accessor for BeaconIdentifier(0);
  v5[63] = swift_task_alloc();
  sub_1000BC4D4(&qword_10169E368, &qword_1013D6690);
  v5[64] = swift_task_alloc();
  v6 = type metadata accessor for KeyGenerationBeaconInfo(0);
  v5[65] = v6;
  v5[66] = *(v6 - 8);
  v5[67] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v5[68] = swift_task_alloc();
  v5[69] = swift_task_alloc();
  v5[70] = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  v5[71] = swift_task_alloc();
  v5[72] = swift_task_alloc();
  v5[73] = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v5[74] = swift_task_alloc();
  v7 = type metadata accessor for OwnedBeaconRecord(0);
  v5[75] = v7;
  v5[76] = *(v7 - 8);
  v5[77] = swift_task_alloc();
  v5[78] = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v5[79] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v5[80] = v8;
  v9 = *(v8 - 8);
  v5[81] = v9;
  v5[82] = *(v9 + 64);
  v5[83] = swift_task_alloc();
  v5[84] = swift_task_alloc();
  v5[85] = swift_task_alloc();
  v5[86] = swift_task_alloc();
  v5[87] = swift_task_alloc();
  v5[88] = swift_task_alloc();
  v5[89] = swift_task_alloc();
  v5[90] = swift_task_alloc();

  return _swift_task_switch(sub_10106AD50, v4, 0);
}

uint64_t sub_10106AD50()
{
  v21 = v0;
  sub_1010721A8(v0[55], v0[79], type metadata accessor for OwnedBeaconGroup.PairingState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = v0[90];
    v2 = v0[81];
    v3 = v0[80];
    v4 = v0[79];
    v5 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
    v6 = *(v5 + 48);
    sub_100006654(*(v4 + *(v5 + 64)), *(v4 + *(v5 + 64) + 8));
    v7 = *(v2 + 32);
    v0[91] = v7;
    v0[92] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v7(v1, v4, v3);
    sub_10000B3A8(v4 + v6, &qword_1016A40D0, &unk_10138BE70);
    v8 = swift_task_alloc();
    v0[93] = v8;
    *v8 = v0;
    v8[1] = sub_10106B1C4;

    return daemon.getter();
  }

  else
  {
    sub_101072FAC(v0[79], type metadata accessor for OwnedBeaconGroup.PairingState);
    if (qword_1016951B8 != -1)
    {
      swift_once();
    }

    v10 = v0[53];
    v9 = v0[54];
    v11 = type metadata accessor for Logger();
    sub_1000076D4(v11, qword_1016C4F50);
    sub_100017D5C(v10, v9);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    sub_100016590(v10, v9);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v14 = 136315651;
      *(v14 + 4) = sub_1000136BC(0xD00000000000003CLL, 0x80000001013792C0, &v20);
      *(v14 + 12) = 2160;
      *(v14 + 14) = 1752392040;
      *(v14 + 22) = 2081;
      static String.Encoding.utf8.getter();
      v15 = String.init(data:encoding:)();
      if (!v16)
      {
        v15 = Data.hexString.getter();
      }

      v17 = sub_1000136BC(v15, v16, &v20);

      *(v14 + 24) = v17;
      _os_log_impl(&_mh_execute_header, v12, v13, "%s Skipping .unpaired part %{private,mask.hash}s", v14, 0x20u);
      swift_arrayDestroy();
    }

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_10106B1C4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[94] = a1;

  v3 = swift_task_alloc();
  v2[95] = v3;
  v4 = type metadata accessor for Daemon();
  v2[96] = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_1010732D8(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[97] = v6;
  v7 = sub_1010732D8(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_10106B3B8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10106B3B8(uint64_t a1)
{
  v4 = *v2;
  v4[98] = a1;
  v4[99] = v1;

  if (v1)
  {
    v5 = v4[56];

    v6 = sub_10106F720;
    v7 = v5;
  }

  else
  {

    v6 = sub_10106B510;
    v7 = a1;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_10106B510()
{
  v1 = *(v0 + 784);
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);
  v4 = *(v0 + 712);
  v5 = *(v0 + 648);
  v6 = *(v0 + 640);
  v7 = *(v5 + 16);
  v5 += 16;
  *(v0 + 800) = v7;
  *(v0 + 808) = v5 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v4, v3, v6);
  v8 = *(v5 + 64);
  *(v0 + 1120) = v8;
  v9 = (v8 + 24) & ~v8;
  v10 = swift_allocObject();
  *(v0 + 816) = v10;
  *(v10 + 16) = v1;
  v2(v10 + v9, v4, v6);

  v11 = swift_task_alloc();
  *(v0 + 824) = v11;
  *v11 = v0;
  v11[1] = sub_10106B68C;
  v12 = *(v0 + 592);
  v13 = *(v0 + 584);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_101072280, v10, v13);
}

uint64_t sub_10106B68C()
{
  v1 = *(*v0 + 448);

  return _swift_task_switch(sub_10106B7B8, v1, 0);
}

uint64_t sub_10106B7B8()
{
  v29 = v0;
  v1 = v0[75];
  v2 = v0[74];
  if ((*(v0[76] + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &unk_1016A9A20, &qword_10138B280);
    if (qword_1016951B8 != -1)
    {
      swift_once();
    }

    v3 = v0[100];
    v4 = v0[90];
    v5 = v0[83];
    v6 = v0[80];
    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_1016C4F50);
    v3(v5, v4, v6);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[83];
    v12 = v0[81];
    v13 = v0[80];
    if (v10)
    {
      v27 = v9;
      v14 = swift_slowAlloc();
      v28[0] = swift_slowAlloc();
      *v14 = 136315651;
      *(v14 + 4) = sub_1000136BC(0xD00000000000003CLL, 0x80000001013792C0, v28);
      *(v14 + 12) = 2160;
      *(v14 + 14) = 1752392040;
      *(v14 + 22) = 2081;
      sub_1010732D8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      v18 = *(v12 + 8);
      v18(v11, v13);
      v19 = sub_1000136BC(v15, v17, v28);

      *(v14 + 24) = v19;
      _os_log_impl(&_mh_execute_header, v8, v27, "%s Missing beacon record for %{private,mask.hash}s.", v14, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v18 = *(v12 + 8);
      v18(v11, v13);
    }

    v22 = v0[90];
    v23 = v0[80];
    sub_1010722AC();
    swift_allocError();
    *v24 = 4;
    swift_willThrow();

    v18(v22, v23);

    v25 = v0[1];

    return v25();
  }

  else
  {
    v20 = v0[98];
    v21 = v0[77];
    sub_101072F44(v2, v21, type metadata accessor for OwnedBeaconRecord);
    v0[104] = [objc_opt_self() standardUserDefaults];
    v0[105] = *(v21 + *(v1 + 68));

    return _swift_task_switch(sub_10106BCA8, v20, 0);
  }
}

uint64_t sub_10106BCA8()
{
  v1 = *(v0 + 784);
  v2 = *(v0 + 728);
  v3 = *(v0 + 712);
  v4 = *(v0 + 640);
  v5 = (*(v0 + 1120) + 24) & ~*(v0 + 1120);
  (*(v0 + 800))(v3, *(v0 + 720), v4);
  v6 = swift_allocObject();
  *(v0 + 848) = v6;
  *(v6 + 16) = v1;
  v2(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 856) = v7;
  *v7 = v0;
  v7[1] = sub_10106BE04;
  v8 = *(v0 + 576);
  v9 = *(v0 + 560);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_101072300, v6, v9);
}

uint64_t sub_10106BE04()
{
  v1 = *(*v0 + 448);

  return _swift_task_switch(sub_10106BF30, v1, 0);
}

uint64_t sub_10106BF30()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 isInternalBuild];

  if (v2)
  {
    v3 = v0[104];
    v4 = String._bridgeToObjectiveC()();
    LOBYTE(v3) = [v3 BOOLForKey:v4];

    if (v3)
    {
      goto LABEL_4;
    }
  }

  v5 = v0[105];
  v6 = sub_101129A64(&off_10160D330);
  LOBYTE(v5) = sub_10111F5D4(v5, v6);

  if (v5)
  {
    goto LABEL_4;
  }

  v8 = v0[71];
  sub_1000D2A70(v0[72], v8, &unk_1016AF8C0, &unk_1013A07A0);
  v9 = type metadata accessor for BeaconProductInfoRecord(0);
  v10 = (*(*(v9 - 8) + 48))(v8, 1, v9);
  v11 = v0[71];
  if (v10 == 1)
  {
    sub_10000B3A8(v11, &unk_1016AF8C0, &unk_1013A07A0);
  }

  else
  {
    v12 = *(v11 + *(v9 + 40));
    sub_101072FAC(v11, type metadata accessor for BeaconProductInfoRecord);
    if (v12 != 2 && (v12 & 1) != 0)
    {
LABEL_4:
      v7 = swift_task_alloc();
      v0[108] = v7;
      *v7 = v0;
      v7[1] = sub_10106C3D0;

      return daemon.getter();
    }
  }

  if (qword_1016951B8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_1016C4F50);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = v0[105];
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = v16;
  }

  v18 = v0[104];
  v19 = v0[90];
  v20 = v0[81];
  v21 = v0[80];
  v22 = v0[77];
  v23 = v0[72];

  sub_10000B3A8(v23, &unk_1016AF8C0, &unk_1013A07A0);
  sub_101072FAC(v22, type metadata accessor for OwnedBeaconRecord);
  (*(v20 + 8))(v19, v21);

  v24 = v0[1];

  return v24();
}

uint64_t sub_10106C3D0(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 872) = a1;

  v5 = swift_task_alloc();
  *(v3 + 880) = v5;
  v6 = type metadata accessor for BeaconKeyService();
  v7 = sub_1010732D8(&unk_1016B1090, 255, type metadata accessor for BeaconKeyService, &unk_1013CC4A0);
  *v5 = v4;
  v5[1] = sub_10106C588;
  v8 = *(v2 + 776);
  v9 = *(v2 + 768);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_10106C588(uint64_t a1)
{
  v4 = *v2;
  v4[111] = a1;
  v4[112] = v1;

  if (v1)
  {
    v5 = v4[56];

    v6 = sub_10106F8D0;
    v7 = v5;
  }

  else
  {

    v6 = sub_10106C6E0;
    v7 = a1;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_10106C6E0()
{
  v1 = *(v0[111] + 128);
  v0[113] = v1;
  v2 = v0[56];
  if (v1)
  {

    v3 = sub_10106C770;
  }

  else
  {
    v3 = sub_10106F42C;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_10106C770()
{
  *(v0 + 1124) = sub_101063248();
  v1 = swift_task_alloc();
  *(v0 + 912) = v1;
  *v1 = v0;
  v1[1] = sub_10106C814;
  v2 = *(v0 + 720);
  v3 = *(v0 + 552);

  return sub_1010706B0(v3, v2);
}

uint64_t sub_10106C814()
{
  v2 = *v1;
  *(*v1 + 920) = v0;

  v3 = *(v2 + 448);
  if (v0)
  {
    v4 = sub_10106FAD8;
  }

  else
  {
    v4 = sub_10106C940;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10106C940()
{
  v32 = v0;
  sub_100EB3A04(0xD00000000000001FLL, 0x8000000101379330, *(v0 + 832));
  if (v2)
  {
    v3 = **(v0 + 552);
    goto LABEL_11;
  }

  v4 = v1;
  if (qword_1016951B8 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 552);
  v6 = *(v0 + 544);
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_1016C4F50);
  sub_1000D2A70(v5, v6, &unk_1016C8FC0, &unk_10139D7D0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 544);
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v31 = v13;
    *v12 = 136315394;
    v14 = sub_1009AB5AC();
    v16 = v15;
    sub_10000B3A8(v11, &unk_1016C8FC0, &unk_10139D7D0);
    v17 = sub_1000136BC(v14, v16, &v31);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2048;
    *(v12 + 14) = v4;
    _os_log_impl(&_mh_execute_header, v8, v9, "lastObservedIndex:%s offsetOverride:%ld", v12, 0x16u);
    sub_100007BAC(v13);
  }

  else
  {

    sub_10000B3A8(v11, &unk_1016C8FC0, &unk_10139D7D0);
  }

  v18 = **(v0 + 552);
  if (v18 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v19 = __OFADD__(v18, v4);
  v3 = v18 + v4;
  if (v19)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v3 < 0)
  {
LABEL_20:
    __break(1u);
    return daemon.getter();
  }

LABEL_11:
  *(v0 + 928) = v3;
  v20 = *(v0 + 920);
  *(v0 + 1128) = sub_10107232C();
  if (!v20)
  {
    v30 = swift_task_alloc();
    *(v0 + 936) = v30;
    *v30 = v0;
    v30[1] = sub_10106CDDC;

    return daemon.getter();
  }

  v21 = *(v0 + 832);
  v22 = *(v0 + 720);
  v23 = *(v0 + 648);
  v24 = *(v0 + 640);
  v25 = *(v0 + 616);
  v26 = *(v0 + 576);
  v27 = *(v0 + 552);

  sub_10000B3A8(v27, &unk_1016C8FC0, &unk_10139D7D0);
  sub_10000B3A8(v26, &unk_1016AF8C0, &unk_1013A07A0);
  sub_101072FAC(v25, type metadata accessor for OwnedBeaconRecord);
  (*(v23 + 8))(v22, v24);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_10106CDDC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 944) = a1;

  v5 = swift_task_alloc();
  *(v3 + 952) = v5;
  v6 = type metadata accessor for OwnerCommandService(0);
  v7 = sub_1010732D8(&unk_1016B10E0, 255, type metadata accessor for OwnerCommandService, &unk_10140DB10);
  *v5 = v4;
  v5[1] = sub_10106CF94;
  v8 = *(v2 + 776);
  v9 = *(v2 + 768);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_10106CF94(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 960) = a1;
  *(v4 + 968) = v1;

  v5 = *(v3 + 448);

  if (v1)
  {
    v6 = sub_10106FCF4;
  }

  else
  {
    v6 = sub_10106D0E8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10106D0E8()
{
  (*(v0 + 800))(*(v0 + 504) + *(*(v0 + 496) + 20), *(v0 + 720), *(v0 + 640));
  v1 = getuid();
  sub_1000294F0(v1);
  v2 = swift_task_alloc();
  *(v0 + 976) = v2;
  *v2 = v0;
  v2[1] = sub_10106D1AC;
  v4 = *(v0 + 504);
  v3 = *(v0 + 512);

  return sub_10094751C(v3, v4);
}

uint64_t sub_10106D1AC()
{
  v2 = *v1;
  *(*v1 + 984) = v0;

  v3 = *(v2 + 504);
  v4 = *(v2 + 448);
  sub_101072FAC(v3, type metadata accessor for BeaconIdentifier);
  if (v0)
  {
    v5 = sub_10106FF2C;
  }

  else
  {
    v5 = sub_10106D308;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10106D308()
{
  v46 = v0;
  v1 = v0[65];
  v2 = v0[64];
  if ((*(v0[66] + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &qword_10169E368, &qword_1013D6690);
    if (qword_1016951B8 != -1)
    {
      swift_once();
    }

    v3 = v0[100];
    v4 = v0[90];
    v5 = v0[84];
    v6 = v0[80];
    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_1016C4F50);
    v3(v5, v4, v6);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[84];
    v12 = v0[81];
    v13 = v0[80];
    if (v10)
    {
      v14 = swift_slowAlloc();
      v45[0] = swift_slowAlloc();
      *v14 = 136315651;
      *(v14 + 4) = sub_1000136BC(0xD00000000000003CLL, 0x80000001013792C0, v45);
      *(v14 + 12) = 2160;
      *(v14 + 14) = 1752392040;
      *(v14 + 22) = 2081;
      sub_1010732D8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      v42 = *(v12 + 8);
      v42(v11, v13);
      v18 = sub_1000136BC(v15, v17, v45);

      *(v14 + 24) = v18;
      _os_log_impl(&_mh_execute_header, v8, v9, "%s Missing beacon info for %{private,mask.hash}s.", v14, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v42 = *(v12 + 8);
      v42(v11, v13);
    }

    v27 = v0[104];
    v40 = v0[80];
    v41 = v0[90];
    v39 = v0[77];
    v28 = v0[72];
    v29 = v0[69];
    sub_1010722AC();
    swift_allocError();
    *v30 = 4;
    swift_willThrow();

    sub_10000B3A8(v29, &unk_1016C8FC0, &unk_10139D7D0);
    sub_10000B3A8(v28, &unk_1016AF8C0, &unk_1013A07A0);
    sub_101072FAC(v39, type metadata accessor for OwnedBeaconRecord);
    v42(v41, v40);

    v31 = v0[1];

    return v31();
  }

  else
  {
    v19 = v0[67];
    sub_101072F44(v2, v19, type metadata accessor for KeyGenerationBeaconInfo);
    v20 = (v19 + *(v1 + 24));
    v21 = v20[1];
    if (v21 >> 60 == 15)
    {
      v22 = 0;
      v23 = 0;
      v21 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0xF000000000000000;
    }

    else
    {
      v23 = *v20;
      v24 = v20[2];
      v25 = v20[3];
      v33 = v20[4];
      v34 = v20[5];
      sub_100F32E90(*v20, v20[1], v24, v25, v33, v34, sub_100017D5C, sub_1002DBC68);
      sub_100017D5C(v23, v21);
      sub_10002EA98(57, v23, v21, v45);
      sub_100496F68(v45[0], v45[1], &v43);
      v26 = v44;
      if (v44 >> 60 == 15)
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      v22 = v43;
      sub_100017D5C(v23, v21);
      sub_100017D5C(v24, v25);
      sub_100F32E90(v23, v21, v24, v25, v33, v34, sub_100016590, sub_100006654);
    }

    v0[129] = v25;
    v0[128] = v24;
    v0[127] = v21;
    v0[126] = v23;
    v0[125] = v26;
    v0[124] = v22;
    v35 = v0[116];
    v36 = v0[113];
    v0[2] = v22;
    v0[3] = v26;
    v0[4] = v23;
    v0[5] = v21;
    v0[6] = v24;
    v0[7] = v25;
    sub_1009B4CEC(v0 + 8);
    v0[40] = &type metadata for PrimaryIndex;
    v0[41] = sub_10002A2B8();
    v0[37] = v35;
    v37 = swift_task_alloc();
    v0[130] = v37;
    *v37 = v0;
    v37[1] = sub_10106DA7C;
    v38 = v0[67];

    return sub_100429258((v0 + 32), v38, (v0 + 2), (v0 + 8), (v0 + 37), v36, 4000);
  }
}

uint64_t sub_10106DA7C()
{
  v2 = *v1;
  *(*v1 + 1048) = v0;

  if (v0)
  {
    v3 = v2[129];
    v4 = v2[128];
    v5 = v2[127];
    v6 = v2[126];
    v7 = v2[125];
    v8 = v2[124];
    v9 = v2[56];
    sub_10000B3A8((v2 + 8), &qword_10169FCA8, &qword_1013A2B88);
    sub_100F32E90(v8, v7, v6, v5, v4, v3, sub_100016590, sub_100016590);
    v10 = sub_101070174;
  }

  else
  {
    v11 = v2[129];
    v12 = v2[128];
    v13 = v2[127];
    v14 = v2[126];
    v15 = v2[125];
    v16 = v2[124];
    v9 = v2[56];
    sub_10000B3A8((v2 + 8), &qword_10169FCA8, &qword_1013A2B88);
    sub_100F32E90(v16, v15, v14, v13, v12, v11, sub_100016590, sub_100016590);
    sub_100007BAC(v2 + 37);
    v10 = sub_10106DCA0;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_10106DCA0()
{
  v109 = v0;
  if (*(v0 + 280))
  {
    sub_1000BC4D4(&qword_1016C5048, &unk_1013FD628);
    if (swift_dynamicCast())
    {
      v103 = *(v0 + 336);
      v105 = *(v0 + 344);
      *(v0 + 1056) = v105;
      v2 = *(v0 + 352);
      v1 = *(v0 + 360);
      *(v0 + 1064) = v2;
      log = v1;
      *(v0 + 1072) = v1;
      v93 = *(v0 + 368);
      *(v0 + 1080) = v93;
      if (qword_1016951B8 != -1)
      {
        swift_once();
      }

      v3 = *(v0 + 800);
      v4 = *(v0 + 720);
      v5 = *(v0 + 704);
      v6 = *(v0 + 640);
      v8 = *(v0 + 424);
      v7 = *(v0 + 432);
      v9 = type metadata accessor for Logger();
      *(v0 + 1088) = sub_1000076D4(v9, qword_1016C4F50);
      v3(v5, v4, v6);
      v10 = v105;
      sub_100017D5C(v105, v2);
      sub_100017D5C(log, v93);
      sub_100017D5C(v8, v7);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      sub_100016590(v8, v7);
      v101 = v2;
      sub_100016590(v105, v2);
      sub_100016590(log, v93);
      v13 = os_log_type_enabled(v11, v12);
      v14 = *(v0 + 704);
      v15 = *(v0 + 648);
      v16 = *(v0 + 640);
      if (v13)
      {
        v94 = v12;
        loga = v11;
        v17 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        *v17 = 136317187;
        *(v17 + 4) = sub_1000136BC(0xD00000000000003CLL, 0x80000001013792C0, &v106);
        *(v17 + 12) = 2160;
        *(v17 + 14) = 1752392040;
        *(v17 + 22) = 2081;
        sub_1010732D8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v18 = dispatch thunk of CustomStringConvertible.description.getter();
        v20 = v19;
        v21 = *(v15 + 8);
        v21(v14, v16);
        v22 = sub_1000136BC(v18, v20, &v106);

        *(v17 + 24) = v22;
        *(v17 + 32) = 2160;
        *(v17 + 34) = 1752392040;
        *(v17 + 42) = 2081;
        static String.Encoding.utf8.getter();
        v23 = String.init(data:encoding:)();
        if (!v24)
        {
          v23 = Data.hexString.getter();
        }

        v10 = v105;
        v25 = *(v0 + 1128);
        v26 = *(v0 + 1124);
        v27 = sub_1000136BC(v23, v24, &v106);

        *(v17 + 44) = v27;
        *(v17 + 52) = 2082;
        v107 = 0x7972616D6972702ELL;
        v108 = 0xEA0000000000282FLL;
        *(v0 + 408) = v103;
        v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v28);

        v29._countAndFlagsBits = 41;
        v29._object = 0xE100000000000000;
        String.append(_:)(v29);
        v30 = sub_1000136BC(v107, v108, &v106);

        *(v17 + 54) = v30;
        *(v17 + 62) = 2080;
        sub_100017D5C(v105, v101);
        v31 = Data.hexString.getter();
        v33 = v32;
        sub_100016590(v105, v101);
        v34 = sub_1000136BC(v31, v33, &v106);

        *(v17 + 64) = v34;
        *(v17 + 72) = 1024;
        *(v17 + 74) = v26;
        *(v17 + 78) = 1024;
        *(v17 + 80) = v25;
        _os_log_impl(&_mh_execute_header, loga, v94, "%s beacon:%{private,mask.hash}s serialNumber:%{private,mask.hash}s, primaryIndex:%{public}s primaryKey:%s, nextPrimaryKeyRoll:%ums secondaryKeyEvaluationIndex:%u", v17, 0x54u);
        swift_arrayDestroy();
      }

      else
      {

        v21 = *(v15 + 8);
        v21(v14, v16);
      }

      *(v0 + 1096) = v21;
      v58 = *(v0 + 800);
      v59 = *(v0 + 720);
      v60 = *(v0 + 696);
      v61 = *(v0 + 640);
      v63 = *(v0 + 424);
      v62 = *(v0 + 432);
      logb = 1;
      (*(*(v0 + 648) + 56))(*(v0 + 464), 1, 1, v61);
      v58(v60, v59, v61);
      sub_100017D5C(v63, v62);
      sub_100017D5C(v10, v101);
      v64 = sub_100D60CD0();
      v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = v66;
      if (v65 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v67 != v68)
      {
        logb = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v96 = *(v0 + 1124);
      v69 = *(v0 + 648);
      v70 = *(v0 + 640);
      v72 = *(v0 + 456);
      v71 = *(v0 + 464);
      v73 = *(v0 + 432);

      sub_1000D2A70(v71, v72, &qword_1016980D0, &unk_10138F3B0);
      v74 = *(v69 + 48);
      if (v74(v72, 1, v70) == 1)
      {
        v75 = *(v0 + 640);
        v77 = *(v0 + 456);
        v76 = *(v0 + 464);
        UUID.init()();
        sub_10000B3A8(v76, &qword_1016980D0, &unk_10138F3B0);
        if (v74(v77, 1, v75) != 1)
        {
          sub_10000B3A8(*(v0 + 456), &qword_1016980D0, &unk_10138F3B0);
        }
      }

      else
      {
        v78 = *(v0 + 728);
        v79 = *(v0 + 688);
        v80 = *(v0 + 640);
        v81 = *(v0 + 456);
        sub_10000B3A8(*(v0 + 464), &qword_1016980D0, &unk_10138F3B0);
        v78(v79, v81, v80);
      }

      v82 = v101 | 0x1000000000000000;
      v83 = *(v0 + 728);
      v84 = *(v0 + 696);
      v85 = *(v0 + 640);
      v87 = *(v0 + 472);
      v86 = *(v0 + 480);
      v88 = *(v0 + 424);
      v102 = *(v0 + 416);
      v83(v86, *(v0 + 688), v85);
      v83(v86 + v87[5], v84, v85);
      v89 = (v86 + v87[6]);
      *v89 = v88;
      v89[1] = v73 | 0x2000000000000000;
      v89[2] = v103;
      v89[3] = v105;
      v89[4] = v82;
      v89[5] = v96;
      *(v86 + v87[7]) = logb & 1;
      *(v86 + v87[8]) = 1;
      v90 = swift_task_alloc();
      *(v0 + 1104) = v90;
      *v90 = v0;
      v90[1] = sub_10106E890;
      v91 = *(v0 + 480);

      return sub_10121B780(v0 + 112, v91, v102);
    }
  }

  else
  {
    sub_10000B3A8(v0 + 256, &qword_1016C5040, &qword_1013FD620);
  }

  if (qword_1016951B8 != -1)
  {
    swift_once();
  }

  v35 = *(v0 + 800);
  v36 = *(v0 + 720);
  v37 = *(v0 + 680);
  v38 = *(v0 + 640);
  v39 = type metadata accessor for Logger();
  sub_1000076D4(v39, qword_1016C4F50);
  v35(v37, v36, v38);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();
  v42 = os_log_type_enabled(v40, v41);
  v43 = *(v0 + 680);
  v44 = *(v0 + 648);
  v45 = *(v0 + 640);
  if (v42)
  {
    v46 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    *v46 = 136315651;
    *(v46 + 4) = sub_1000136BC(0xD00000000000003CLL, 0x80000001013792C0, &v107);
    *(v46 + 12) = 2160;
    *(v46 + 14) = 1752392040;
    *(v46 + 22) = 2081;
    sub_1010732D8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v49 = v48;
    v104 = *(v44 + 8);
    v104(v43, v45);
    v50 = sub_1000136BC(v47, v49, &v107);

    *(v46 + 24) = v50;
    _os_log_impl(&_mh_execute_header, v40, v41, "%s Missing primaryKey for %{private,mask.hash}s.", v46, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v104 = *(v44 + 8);
    v104(v43, v45);
  }

  v51 = *(v0 + 832);
  v95 = *(v0 + 640);
  logc = *(v0 + 720);
  v92 = *(v0 + 616);
  v52 = *(v0 + 576);
  v53 = *(v0 + 552);
  v54 = *(v0 + 536);
  sub_1010722AC();
  swift_allocError();
  *v55 = 8;
  swift_willThrow();

  sub_101072FAC(v54, type metadata accessor for KeyGenerationBeaconInfo);
  sub_10000B3A8(v53, &unk_1016C8FC0, &unk_10139D7D0);
  sub_10000B3A8(v52, &unk_1016AF8C0, &unk_1013A07A0);
  sub_101072FAC(v92, type metadata accessor for OwnedBeaconRecord);
  v104(logc, v95);

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_10106E890()
{
  v2 = *v1;
  *(*v1 + 1112) = v0;

  v3 = *(v2 + 448);
  if (v0)
  {
    v4 = sub_1010703E8;
  }

  else
  {
    v4 = sub_10106E9BC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10106E9BC()
{
  v52 = v0;
  sub_1000D2A70(v0 + 112, v0 + 160, &qword_1016A24A8, &unk_1013F60E0);
  if (*(v0 + 184))
  {
    sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
    if (swift_dynamicCast())
    {
      v1 = *(v0 + 208);
      v2 = *(v0 + 216);
      v4 = *(v0 + 224);
      v3 = *(v0 + 232);
      v6 = *(v0 + 240);
      v5 = *(v0 + 248);
      if (((v6 >> 58) & 0xC | (v2 >> 60) & 3) == 6)
      {
        sub_10067F4FC(*(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), sub_100017D5C);
        sub_100017D5C(v1, v2 & 0xCFFFFFFFFFFFFFFFLL);
        v7 = Logger.logObject.getter();
        v8 = static os_log_type_t.default.getter();
        sub_10067F4FC(v1, v2, v4, v3, v6, v5, sub_100016590);
        log = v7;
        type = v8;
        v9 = os_log_type_enabled(v7, v8);
        v10 = *(v0 + 1096);
        v34 = *(v0 + 1072);
        v36 = *(v0 + 1080);
        v31 = *(v0 + 1056);
        v32 = *(v0 + 1064);
        v11 = *(v0 + 832);
        v48 = *(v0 + 640);
        v50 = *(v0 + 720);
        v45 = *(v0 + 616);
        v42 = *(v0 + 552);
        v44 = *(v0 + 576);
        v38 = *(v0 + 480);
        v40 = *(v0 + 536);
        if (v9)
        {
          v28 = *(v0 + 1096);
          v12 = swift_slowAlloc();
          v51[0] = swift_slowAlloc();
          *v12 = 136315394;
          *(v12 + 4) = sub_1000136BC(0xD00000000000003CLL, 0x80000001013792C0, v51);
          *(v12 + 12) = 2080;
          *(v0 + 376) = v1;
          *(v0 + 384) = v2 & 0xCFFFFFFFFFFFFFFFLL;
          *(v0 + 392) = v4;
          *(v0 + 400) = v3;
          sub_100017D5C(v1, v2 & 0xCFFFFFFFFFFFFFFFLL);
          v13 = String.init<A>(describing:)();
          v27 = v11;
          v15 = sub_1000136BC(v13, v14, v51);

          *(v12 + 14) = v15;
          _os_log_impl(&_mh_execute_header, log, type, "%s Received keyAlignmentResponse: %s", v12, 0x16u);
          swift_arrayDestroy();

          sub_10067F4FC(v1, v2, v4, v3, v6, v5, sub_100016590);
          sub_10067F4FC(v1, v2, v4, v3, v6, v5, sub_100016590);
          sub_100016590(v31, v32);
          sub_100016590(v34, v36);

          sub_10000B3A8(v0 + 112, &qword_1016A24A8, &unk_1013F60E0);
          sub_101072FAC(v38, type metadata accessor for AccessoryCommand);
          sub_101072FAC(v40, type metadata accessor for KeyGenerationBeaconInfo);
          sub_10000B3A8(v42, &unk_1016C8FC0, &unk_10139D7D0);
          sub_10000B3A8(v44, &unk_1016AF8C0, &unk_1013A07A0);
          sub_101072FAC(v45, type metadata accessor for OwnedBeaconRecord);
          v28(v50, v48);
        }

        else
        {

          sub_10067F4FC(v1, v2, v4, v3, v6, v5, sub_100016590);
          sub_10067F4FC(v1, v2, v4, v3, v6, v5, sub_100016590);
          sub_100016590(v31, v32);
          sub_100016590(v34, v36);

          sub_10000B3A8(v0 + 112, &qword_1016A24A8, &unk_1013F60E0);
          sub_101072FAC(v38, type metadata accessor for AccessoryCommand);
          sub_101072FAC(v40, type metadata accessor for KeyGenerationBeaconInfo);
          sub_10000B3A8(v42, &unk_1016C8FC0, &unk_10139D7D0);
          sub_10000B3A8(v44, &unk_1016AF8C0, &unk_1013A07A0);
          sub_101072FAC(v45, type metadata accessor for OwnedBeaconRecord);
          v10(v50, v48);
        }

        v25 = *(v0 + 8);
        goto LABEL_11;
      }

      sub_10067F4FC(*(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), sub_100016590);
    }
  }

  else
  {
    sub_10000B3A8(v0 + 160, &qword_1016A24A8, &unk_1013F60E0);
  }

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v51[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_1000136BC(0xD00000000000003CLL, 0x80000001013792C0, v51);
    _os_log_impl(&_mh_execute_header, v16, v17, "%s Invalid keyAlignmentResponse!", v18, 0xCu);
    sub_100007BAC(v19);
  }

  v49 = *(v0 + 1096);
  v33 = *(v0 + 1080);
  v20 = *(v0 + 1072);
  v21 = *(v0 + 1064);
  v22 = *(v0 + 1056);
  v23 = *(v0 + 832);
  v47 = *(v0 + 720);
  v46 = *(v0 + 640);
  v41 = *(v0 + 576);
  v43 = *(v0 + 616);
  v37 = *(v0 + 536);
  v39 = *(v0 + 552);
  v35 = *(v0 + 480);
  sub_1010722AC();
  swift_allocError();
  *v24 = 10;
  swift_willThrow();

  sub_100016590(v22, v21);
  sub_100016590(v20, v33);

  sub_10000B3A8(v0 + 112, &qword_1016A24A8, &unk_1013F60E0);
  sub_101072FAC(v35, type metadata accessor for AccessoryCommand);
  sub_101072FAC(v37, type metadata accessor for KeyGenerationBeaconInfo);
  sub_10000B3A8(v39, &unk_1016C8FC0, &unk_10139D7D0);
  sub_10000B3A8(v41, &unk_1016AF8C0, &unk_1013A07A0);
  sub_101072FAC(v43, type metadata accessor for OwnedBeaconRecord);
  v49(v47, v46);

  v25 = *(v0 + 8);
LABEL_11:

  return v25();
}

uint64_t sub_10106F42C()
{
  if (qword_1016951B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016C4F50);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing LTKGenerator!", v4, 2u);
  }

  v5 = v0[104];
  v13 = v0[90];
  v6 = v0[81];
  v7 = v0[80];
  v8 = v0[77];
  v9 = v0[72];

  sub_1010722AC();
  swift_allocError();
  *v10 = 7;
  swift_willThrow();

  sub_10000B3A8(v9, &unk_1016AF8C0, &unk_1013A07A0);
  sub_101072FAC(v8, type metadata accessor for OwnedBeaconRecord);
  (*(v6 + 8))(v13, v7);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10106F720()
{
  (*(v0[81] + 8))(v0[90], v0[80]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10106F8D0()
{
  v1 = *(v0 + 720);
  v2 = *(v0 + 648);
  v3 = *(v0 + 640);
  v4 = *(v0 + 616);
  v5 = *(v0 + 576);

  sub_10000B3A8(v5, &unk_1016AF8C0, &unk_1013A07A0);
  sub_101072FAC(v4, type metadata accessor for OwnedBeaconRecord);
  (*(v2 + 8))(v1, v3);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10106FAD8()
{
  v1 = v0[104];
  v2 = v0[90];
  v3 = v0[81];
  v4 = v0[80];
  v5 = v0[77];
  v6 = v0[72];

  sub_10000B3A8(v6, &unk_1016AF8C0, &unk_1013A07A0);
  sub_101072FAC(v5, type metadata accessor for OwnedBeaconRecord);
  (*(v3 + 8))(v2, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10106FCF4()
{
  v1 = v0[104];
  v2 = v0[90];
  v3 = v0[81];
  v4 = v0[80];
  v5 = v0[77];
  v6 = v0[72];
  v7 = v0[69];

  sub_10000B3A8(v7, &unk_1016C8FC0, &unk_10139D7D0);
  sub_10000B3A8(v6, &unk_1016AF8C0, &unk_1013A07A0);
  sub_101072FAC(v5, type metadata accessor for OwnedBeaconRecord);
  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10106FF2C()
{
  v1 = v0[104];
  v9 = v0[90];
  v2 = v0[81];
  v3 = v0[80];
  v4 = v0[77];
  v5 = v0[72];
  v6 = v0[69];

  sub_10000B3A8(v6, &unk_1016C8FC0, &unk_10139D7D0);
  sub_10000B3A8(v5, &unk_1016AF8C0, &unk_1013A07A0);
  sub_101072FAC(v4, type metadata accessor for OwnedBeaconRecord);
  (*(v2 + 8))(v9, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_101070174()
{
  v1 = v0[104];
  v10 = v0[90];
  v2 = v0[81];
  v9 = v0[80];
  v3 = v0[77];
  v4 = v0[72];
  v5 = v0[69];
  v6 = v0[67];

  sub_101072FAC(v6, type metadata accessor for KeyGenerationBeaconInfo);
  sub_10000B3A8(v5, &unk_1016C8FC0, &unk_10139D7D0);
  sub_10000B3A8(v4, &unk_1016AF8C0, &unk_1013A07A0);
  sub_101072FAC(v3, type metadata accessor for OwnedBeaconRecord);
  (*(v2 + 8))(v10, v9);
  sub_100007BAC(v0 + 37);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1010703E8()
{
  v15 = v0[137];
  v1 = v0[135];
  v2 = v0[134];
  v3 = v0[133];
  v4 = v0[132];
  v5 = v0[104];
  v13 = v0[80];
  v14 = v0[90];
  v12 = v0[77];
  v10 = v0[69];
  v11 = v0[72];
  v9 = v0[67];
  v6 = v0[60];

  sub_100016590(v4, v3);
  sub_100016590(v2, v1);

  sub_101072FAC(v6, type metadata accessor for AccessoryCommand);
  sub_101072FAC(v9, type metadata accessor for KeyGenerationBeaconInfo);
  sub_10000B3A8(v10, &unk_1016C8FC0, &unk_10139D7D0);
  sub_10000B3A8(v11, &unk_1016AF8C0, &unk_1013A07A0);
  sub_101072FAC(v12, type metadata accessor for OwnedBeaconRecord);
  v15(v14, v13);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1010706B0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for UUID();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v3[11] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[16] = v7;
  *v7 = v3;
  v7[1] = sub_10107085C;

  return daemon.getter();
}

uint64_t sub_10107085C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[17] = a1;

  v3 = swift_task_alloc();
  v2[18] = v3;
  v4 = type metadata accessor for Daemon();
  v2[19] = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_1010732D8(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[20] = v6;
  v7 = sub_1010732D8(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_101070A50;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_101070A50(uint64_t a1)
{
  v3 = *v2;
  v3[21] = a1;
  v3[22] = v1;

  if (v1)
  {
    v4 = v3[4];

    return _swift_task_switch(sub_101071770, v4, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[23] = v5;
    *v5 = v3;
    v5[1] = sub_101070BC4;

    return daemon.getter();
  }
}

uint64_t sub_101070BC4(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 192) = a1;

  v5 = swift_task_alloc();
  *(v3 + 200) = v5;
  v6 = type metadata accessor for ObservationStoreService();
  v7 = sub_1010732D8(&qword_1016AA450, 255, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v5 = v4;
  v5[1] = sub_101070D7C;
  v8 = *(v2 + 160);
  v9 = *(v2 + 152);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_101070D7C(uint64_t a1)
{
  v3 = *v2;
  v3[26] = a1;
  v3[27] = v1;

  if (v1)
  {
    v4 = v3[4];
    v5 = sub_101071814;
  }

  else
  {
    v6 = v3[21];

    v5 = sub_101070EA4;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_101070EA4()
{
  v1 = v0[21];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[5];
  v5 = v0[3];
  v6 = *(v3 + 16);
  v0[28] = v6;
  v0[29] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[30] = v8;
  *(v8 + 16) = v1;
  (*(v3 + 32))(v8 + v7, v2, v4);

  v9 = swift_task_alloc();
  v0[31] = v9;
  *v9 = v0;
  v9[1] = sub_101071014;
  v11 = v0[10];
  v10 = v0[11];

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, 0x800000010134A8C0, sub_1010733F0, v8, v11);
}

uint64_t sub_101071014()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_101071140, v1, 0);
}

uint64_t sub_101071140()
{
  v31 = v0;
  v1 = v0[11];
  v2 = type metadata accessor for OwnedBeaconRecord(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &unk_1016A9A20, &qword_10138B280);
    if (qword_1016951B8 != -1)
    {
      swift_once();
    }

    v3 = v0[28];
    v4 = v0[8];
    v5 = v0[5];
    v6 = v0[3];
    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_1016C4F50);
    v3(v4, v6, v5);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[8];
    v12 = v0[5];
    v13 = v0[6];
    if (v10)
    {
      v14 = swift_slowAlloc();
      v30[0] = swift_slowAlloc();
      *v14 = 136315651;
      *(v14 + 4) = sub_1000136BC(0xD000000000000017, 0x8000000101379370, v30);
      *(v14 + 12) = 2160;
      *(v14 + 14) = 1752392040;
      *(v14 + 22) = 2081;
      sub_1010732D8(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v13 + 8))(v11, v12);
      v18 = sub_1000136BC(v15, v17, v30);

      *(v14 + 24) = v18;
      _os_log_impl(&_mh_execute_header, v8, v9, "%s No base date for beacon %{private,mask.hash}s.", v14, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v13 + 8))(v11, v12);
    }

    sub_1010722AC();
    swift_allocError();
    *v28 = 4;
    swift_willThrow();

    v29 = v0[1];

    return v29();
  }

  else
  {
    v20 = v0[14];
    v19 = v0[15];
    v21 = v0[12];
    v22 = v0[13];
    (*(v22 + 16))(v20, v1 + *(v2 + 32), v21);
    sub_101072FAC(v1, type metadata accessor for OwnedBeaconRecord);
    (*(v22 + 32))(v19, v20, v21);
    v23 = swift_task_alloc();
    v0[32] = v23;
    *v23 = v0;
    v23[1] = sub_101071588;
    v24 = v0[15];
    v25 = v0[2];
    v26 = v0[3];

    return sub_1010CD424(v25, v26, v24);
  }
}

uint64_t sub_101071588()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_101071698, v1, 0);
}

uint64_t sub_101071698()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_101071770()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_101071814()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010718C4(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = type metadata accessor for CentralManager.State();
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v2[5] = swift_task_alloc();

  return _swift_task_switch(sub_101071984, 0, 0);
}

uint64_t sub_101071984()
{
  (*(v0[4] + 104))(v0[5], enum case for CentralManager.State.poweredOn(_:), v0[3]);
  v1 = swift_task_alloc();
  v0[6] = v1;
  v2 = type metadata accessor for CentralManager();
  v3 = sub_1010732D8(&unk_1016C1160, 255, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  *v1 = v0;
  v1[1] = sub_100274D78;
  v4 = v0[5];

  return CentralManagerProtocol.await(state:)(v4, v2, v3);
}

uint64_t sub_101071A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3[3] = v5;
  v3[4] = *(v5 - 8);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v6 = *(type metadata accessor for OwnedBeaconGroup(0) + 28);
  v9 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:) + async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:));
  v7 = swift_task_alloc();
  v3[7] = v7;
  *v7 = v3;
  v7[1] = sub_101071BD4;

  return v9(a1 + v6);
}

uint64_t sub_101071BD4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4(0);
  }

  else
  {

    return _swift_task_switch(sub_101071D28, 0, 0);
  }
}

uint64_t sub_101071D28(uint64_t a1)
{
  if (v1[8])
  {
    v3 = v1[5];
    v2 = v1[6];
    v4 = v1[3];
    v5 = v1[4];
    Peripheral.id.getter();
    Peripheral.id.getter();
    type metadata accessor for Peripheral();
    v6 = static Identifier.== infix(_:_:)();

    v7 = *(v5 + 8);
    v7(v3, v4);
    v7(v2, v4);
  }

  else
  {
    v6 = 0;
  }

  v8 = v1[1];

  return v8(v6 & 1);
}

uint64_t sub_101071E34()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_1010644B0();
}

uint64_t sub_101071ED0()
{
  v2 = *(sub_1000BC4D4(&qword_10169A060, &unk_10139DB00) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_101066028(v4, v0 + v3, v5);
}

uint64_t sub_101071FE4(uint64_t a1)
{
  v4 = *(sub_1000BC4D4(&qword_10169A060, &unk_10139DB00) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_101066668(a1, v6, v1 + v5);
}

uint64_t sub_10107210C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_101068D70(a1, v1);
}

uint64_t sub_1010721A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_101072210(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_1016BBEA0, &unk_101395A80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1010722AC()
{
  result = qword_1016C5038;
  if (!qword_1016C5038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5038);
  }

  return result;
}

uint64_t sub_10107232C()
{
  v1 = type metadata accessor for Calendar.SearchDirection();
  v85 = *(v1 - 8);
  v86 = v1;
  __chkstk_darwin(v1);
  v84 = v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v79 = *(v90 - 8);
  __chkstk_darwin(v90);
  v83 = v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Calendar.MatchingPolicy();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016A9620, &qword_1013BB5A0);
  __chkstk_darwin(v8 - 8);
  v10 = v73 - v9;
  v11 = sub_1000BC4D4(&qword_1016A9628, &unk_1013BB5A8);
  __chkstk_darwin(v11 - 8);
  v13 = v73 - v12;
  v14 = type metadata accessor for DateComponents();
  v81 = *(v14 - 8);
  v82 = v14;
  __chkstk_darwin(v14);
  v16 = v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v17 - 8);
  v80 = v73 - v18;
  v19 = type metadata accessor for Date();
  v88 = *(v19 - 8);
  v89 = v19;
  v20 = __chkstk_darwin(v19);
  v76 = v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v75 = v73 - v23;
  v24 = __chkstk_darwin(v22);
  v87 = v73 - v25;
  __chkstk_darwin(v24);
  v94 = v73 - v26;
  v27 = type metadata accessor for Calendar();
  v91 = *(v27 - 8);
  v92 = v27;
  __chkstk_darwin(v27);
  v93 = v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v29 = sub_101073524(v95);

  if ((v29 * 60) >> 64 != (60 * v29) >> 63)
  {
    __break(1u);
    goto LABEL_20;
  }

  v74 = 60 * v29;
  v73[1] = v0;
  static Calendar.autoupdatingCurrent.getter();
  static Date.trustedNow.getter(v94);
  (*(v91 + 56))(v13, 1, 1, v92);
  static TimeZone.autoupdatingCurrent.getter();
  v30 = type metadata accessor for TimeZone();
  (*(*(v30 - 8) + 56))(v10, 0, 1, v30);
  v77 = v16;
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v31 = v5;
  v32 = *(v5 + 104);
  v78 = v4;
  v32(v7, enum case for Calendar.MatchingPolicy.nextTime(_:), v4);
  v33 = v79;
  v34 = v83;
  (*(v79 + 104))(v83, enum case for Calendar.RepeatedTimePolicy.first(_:), v90);
  v36 = v84;
  v35 = v85;
  v37 = v86;
  (*(v85 + 104))(v84, enum case for Calendar.SearchDirection.forward(_:), v86);
  v38 = v80;
  Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
  (*(v35 + 8))(v36, v37);
  (*(v33 + 8))(v34, v90);
  (*(v31 + 8))(v7, v78);
  (*(v81 + 8))(v77, v82);
  v5 = v88;
  v7 = v89;
  if ((*(v88 + 48))(v38, 1, v89) == 1)
  {
    sub_10000B3A8(v38, &unk_101696900, &unk_10138B1E0);
    if (qword_1016951B8 == -1)
    {
LABEL_6:
      v39 = type metadata accessor for Logger();
      sub_1000076D4(v39, qword_1016C4F50);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      v42 = os_log_type_enabled(v40, v41);
      v43 = v94;
      if (v42)
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v95 = v45;
        *v44 = 136315138;
        *(v44 + 4) = sub_1000136BC(0xD000000000000019, 0x8000000101379350, &v95);
        _os_log_impl(&_mh_execute_header, v40, v41, "%s Unable to compute next 4am date", v44, 0xCu);
        sub_100007BAC(v45);
      }

      sub_1010722AC();
      swift_allocError();
      *v46 = 9;
      swift_willThrow();
      (*(v5 + 8))(v43, v7);
      return (*(v91 + 8))(v93, v92);
    }

LABEL_21:
    swift_once();
    goto LABEL_6;
  }

  v48 = v87;
  (*(v5 + 32))(v87, v38, v7);
  v49 = v94;
  Date.timeIntervalSince(_:)();
  v51 = v50;
  if (qword_1016951B8 != -1)
  {
    swift_once();
  }

  v52 = v74;
  v53 = type metadata accessor for Logger();
  sub_1000076D4(v53, qword_1016C4F50);
  v54 = *(v5 + 16);
  v55 = v75;
  v54(v75, v49, v7);
  v56 = v76;
  v54(v76, v48, v7);
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v95 = v90;
    *v59 = 136315650;
    LODWORD(v86) = v58;
    v60 = Date.localISO8601.getter();
    v62 = v61;
    v64 = *(v5 + 8);
    v5 += 8;
    v63 = v64;
    v64(v55, v7);
    v65 = sub_1000136BC(v60, v62, &v95);

    *(v59 + 4) = v65;
    *(v59 + 12) = 2080;
    v66 = Date.localISO8601.getter();
    v68 = v67;
    v64(v56, v7);
    v69 = sub_1000136BC(v66, v68, &v95);
    v49 = v94;

    *(v59 + 14) = v69;
    *(v59 + 22) = 2048;
    *(v59 + 24) = v51;
    _os_log_impl(&_mh_execute_header, v57, v86, "numberOfKeysBefore4amRoll: now:%s wild4amDate:%s\nremainingTimeInSeconds:%f", v59, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v70 = *(v5 + 8);
    v5 += 8;
    v63 = v70;
    v70(v56, v7);
    v70(v55, v7);
  }

  v71 = ceil(v51 / v52);
  v63(v87, v7);
  v63(v49, v7);
  result = (*(v91 + 8))(v93, v92);
  v72 = 96.0;
  if (v71 < 96.0)
  {
    v72 = v71;
    if ((*&v71 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }
  }

  if (v72 <= -1.0)
  {
    __break(1u);
  }

  else if (v72 < 4294967300.0)
  {
    return v72;
  }

  __break(1u);
  return result;
}

uint64_t sub_101072F44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_101072FAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10107300C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014650;

  return sub_1010718C4(a1, v1);
}

uint64_t sub_1010730A8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1001BA6C8;

  return sub_101071A98(a1, v5, v4);
}

uint64_t sub_101073150(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);

  (*(v3 + 8))(v1 + v4, v2);

  return _swift_deallocObject(v1, v4 + v5);
}

uint64_t sub_101073248(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

uint64_t sub_1010732D8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_101073320(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_101073338(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF4 && *(a1 + 8))
  {
    return (*a1 + 2147483637);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 10;
  if (v4 >= 0xC)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101073390(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF5)
  {
    *result = 0;
    *result = a2 - 2147483637;
    if (a3 >= 0x7FFFFFF5)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF5)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 10;
    }
  }

  return result;
}

uint64_t sub_101073428(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  sub_10003E938(KeyPath, a1);
  if ((v4 & 1) == 0)
  {
  }

  _StringGuts.grow(_:)(40);
  v6._object = 0x800000010134CA80;
  v6._countAndFlagsBits = 0xD000000000000026;
  String.append(_:)(v6);
  sub_1000BC4D4(&unk_101698C60, &qword_1013907B0);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *sub_1010735A8(void *a1)
{
  v2 = type metadata accessor for DefaultConfigurationLayer(0) - 8;
  v3 = __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v27 = &v26 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v26 - v9;
  __chkstk_darwin(v8);
  v28 = &v26 - v12;
  v29 = v11;
  v13 = a1[2];
  v30 = a1;
  if (v13)
  {
    v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v15 = a1 + v14;
    v16 = _swiftEmptyArrayStorage;
    v17 = *(v11 + 72);
    while (1)
    {
      sub_100041EB0(v15, v10);
      if (v10[25] <= 1u)
      {
        if (v10[25])
        {
          break;
        }
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_10;
      }

      sub_100041F5C(v10);
LABEL_4:
      v15 += v17;
      if (!--v13)
      {
        goto LABEL_16;
      }
    }

LABEL_10:
    sub_1000420BC(v10, v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1011243B0(0, v16[2] + 1, 1);
      v16 = v31;
    }

    v21 = v16[2];
    v20 = v16[3];
    if (v21 >= v20 >> 1)
    {
      sub_1011243B0((v20 > 1), v21 + 1, 1);
      v16 = v31;
    }

    v16[2] = v21 + 1;
    sub_1000420BC(v5, v16 + v14 + v21 * v17);
    goto LABEL_4;
  }

  v16 = _swiftEmptyArrayStorage;
LABEL_16:
  if (v16[2])
  {
    v22 = v27;
    sub_100041EB0(v16 + ((*(v29 + 80) + 32) & ~*(v29 + 80)), v27);

    v23 = v28;
    sub_1000420BC(v22, v28);
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    v24 = sub_1010738E0(v23, v30);
    sub_100041F5C(v23);
  }

  else
  {

    v24 = v30;
  }

  return v24;
}