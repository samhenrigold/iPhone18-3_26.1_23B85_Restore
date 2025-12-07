uint64_t sub_10003BED0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = sub_1000033A8(&qword_1001D8020, &qword_1001728D0);
  v4 = __chkstk_darwin(v3 - 8);
  v74 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v78 = &v71 - v7;
  __chkstk_darwin(v6);
  v82 = &v71 - v8;
  v93 = type metadata accessor for SaliencyStreamConfiguration();
  v91 = *(v93 - 8);
  __chkstk_darwin(v93);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000033A8(&qword_1001D58B0, &qword_1001737D8);
  v94 = *(v11 - 8);
  v95 = v11;
  __chkstk_darwin(v11);
  v13 = &v71 - v12;
  v14 = type metadata accessor for CameraControllerConfiguration(0);
  __chkstk_darwin(v14);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003B080(v16);
  BoolAnswer = AVGestaltGetBoolAnswer();
  v99 = a1;
  if (BoolAnswer && AVGestaltGetBoolAnswer())
  {
    if (AVGestaltGetBoolAnswer())
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  v92 = v10;
  v98 = v13;
  v19 = v14[5];
  v16[v19] = v18;
  v89 = v14[6];
  v90 = v19;
  v16[v89] = 0;
  v88 = v14[7];
  v16[v88] = 1;
  v87 = v14[8];
  v16[v87] = 0;
  v86 = v14[9];
  v16[v86] = 1;
  v85 = v14[10];
  v16[v85] = 1;
  v84 = v14[11];
  v16[v84] = 1;
  v20 = &v16[v14[12]];
  if (qword_1001D3198 != -1)
  {
    swift_once();
  }

  v21 = byte_1001EB570;
  *v20 = qword_1001EB568;
  v20[8] = v21;
  v22 = v14[13];
  v23 = String._bridgeToObjectiveC()();
  v24 = String._bridgeToObjectiveC()();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v23, v24, 0);

  v81 = v22;
  v16[v22] = AppBooleanValue != 0;
  v26 = v14[14];
  v27 = type metadata accessor for URL();
  v83 = v20;
  v28 = v27;
  v29 = *(*(v27 - 8) + 56);
  v80 = v26;
  v29(&v16[v26], 1, 1, v27);
  v79 = v14[15];
  v16[v79] = 4;
  v77 = v14[16];
  v16[v77] = 0;
  v76 = v14[17];
  v29(&v16[v76], 1, 1, v28);
  v30 = v14[18];
  v16[v30] = 1;
  v31 = v14[19];
  v16[v31] = 0;
  v32 = v16;
  v33 = v14[20];
  v16[v33] = 1;
  v34 = v14[21];
  v97 = v32;
  v29(&v32[v34], 1, 1, v28);
  v35 = sub_100006AAC(v99, v99[3]);
  sub_10004F7D4(v35, v36, v37);
  v38 = v96;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v38)
  {
    v69 = v97;
    v46 = v99;
  }

  else
  {
    v96 = v30;
    v73 = v31;
    v72 = v33;
    v71 = v34;
    LOBYTE(v100) = 0;
    sub_10003E86C(&qword_1001D58C0, &type metadata accessor for SaliencyStreamConfiguration, &protocol conformance descriptor for SaliencyStreamConfiguration);
    v40 = v92;
    v39 = v93;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v42 = v97;
    v43 = (*(v91 + 40))(v97, v40, v39);
    v102 = 1;
    sub_10004F828(v43, v44, v45);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v46 = v99;
    *(v42 + v90) = v100;
    LOBYTE(v100) = 2;
    *(v42 + v89) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v100) = 3;
    v47 = KeyedDecodingContainer.decode(_:forKey:)();
    *(v42 + v88) = v47 & 1;
    v102 = 4;
    sub_10004F87C(v47, v48, v49);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v42 + v87) = v100;
    LOBYTE(v100) = 5;
    v50 = KeyedDecodingContainer.decode(_:forKey:)();
    *(v42 + v86) = v50 & 1;
    v102 = 6;
    sub_10004F8D0(v50, v51, v52);
    v53 = KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v42 + v85) = v100;
    v102 = 7;
    sub_10004F924(v53, v54, v55);
    v56 = KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v42 + v84) = v100;
    v102 = 8;
    sub_10004F978(v56, v57, v58);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v59 = v101;
    v60 = v83;
    *v83 = v100;
    v60[8] = v59;
    LOBYTE(v100) = 9;
    *(v97 + v81) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v100) = 10;
    sub_10003E86C(&qword_1001D58F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v61 = sub_10004E3A0(v82, v97 + v80);
    v102 = 11;
    sub_10004F9CC(v61, v62, v63);
    v64 = KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v97 + v79) = v100;
    v102 = 12;
    sub_10004FA20(v64, v65, v66);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v97 + v77) = v100;
    LOBYTE(v100) = 13;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_10004E3A0(v78, v97 + v76);
    LOBYTE(v100) = 14;
    *(v97 + v96) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v100) = 15;
    *(v97 + v73) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v100) = 16;
    v67 = KeyedDecodingContainer.decode(_:forKey:)();
    v69 = v97;
    v68 = v98;
    *(v97 + v72) = v67 & 1;
    LOBYTE(v100) = 17;
    v70 = v95;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v94 + 8))(v68, v70);
    sub_10004E3A0(v74, v69 + v71);
    sub_10004EB44(v69, v75, type metadata accessor for CameraControllerConfiguration);
  }

  sub_100006B44(v46);
  return sub_10004A93C(v69, type metadata accessor for CameraControllerConfiguration);
}

uint64_t sub_10003C9C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10004DC68(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10003C9F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10004F7D4(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_10003CA34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10004F7D4(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_10003CAA8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for URL();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000522A0, 0, 0);
}

uint64_t sub_10003CB68(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = type metadata accessor for URL.DirectoryHint();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_1000521E8, 0, 0);
}

uint64_t sub_10003CD64(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for URL();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_10003CE24, 0, 0);
}

uint64_t sub_10003CE24()
{
  (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
  SentTransferredFile.init(_:allowAccessingOriginalFile:)();

  v1 = v0[1];

  return v1();
}

uint64_t sub_10003CEB8(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = type metadata accessor for URL.DirectoryHint();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_10003D074, 0, 0);
}

uint64_t sub_10003D074()
{
  v45 = v0[17];
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[9];
  v8 = v0[10];
  v44 = v0[8];
  static URL.temporaryDirectory.getter();
  UUID.init()();
  sub_10003E86C(&qword_1001D80C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v47 = dispatch thunk of CustomStringConvertible.description.getter();
  v48 = v9;
  (*(v5 + 8))(v3, v6);
  v10._countAndFlagsBits = 46;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  ReceivedTransferredFile.file.getter();
  v11 = URL.pathExtension.getter();
  v13 = v12;
  v14 = *(v2 + 8);
  v14(v1, v4);
  v15._countAndFlagsBits = v11;
  v15._object = v13;
  String.append(_:)(v15);

  v0[2] = v47;
  v0[3] = v48;
  v16 = v0 + 2;
  v17 = (*(v7 + 104))(v8, enum case for URL.DirectoryHint.inferFromPath(_:), v44);
  sub_10002EC9C(v17, v18, v19);
  v20 = v45;
  URL.appending<A>(path:directoryHint:)();
  (*(v7 + 8))(v8, v44);

  v46 = v14;
  v14(v20, v4);
  v21 = objc_opt_self();
  v22 = [v21 defaultManager];
  URL.path(percentEncoded:)(1);
  v23 = String._bridgeToObjectiveC()();

  LODWORD(v20) = [v22 fileExistsAtPath:v23];

  if (v20)
  {
    v24 = [v21 defaultManager];
    URL._bridgeToObjectiveC()(v25);
    v27 = v26;
    v0[5] = 0;
    v28 = [v24 removeItemAtURL:v26 error:v0 + 5];

    v29 = v0[5];
    if (!v28)
    {
      goto LABEL_6;
    }

    v30 = v29;
    v16 = v0 + 2;
  }

  v31 = v0[17];
  v32 = v0[14];
  v33 = [v21 defaultManager];
  ReceivedTransferredFile.file.getter();
  URL._bridgeToObjectiveC()(v34);
  v36 = v35;
  v46(v31, v32);
  URL._bridgeToObjectiveC()(v37);
  v39 = v38;
  v0[4] = 0;
  LODWORD(v32) = [v33 copyItemAtURL:v36 toURL:v38 error:v16 + 2];

  v29 = v0[4];
  if (v32)
  {
    (*(v0[15] + 32))(v0[6], v0[18], v0[14]);
    v40 = v29;

    v41 = v0[1];
    goto LABEL_7;
  }

LABEL_6:
  v42 = v29;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v46(v0[18], v0[14]);

  v41 = v0[1];
LABEL_7:

  return v41();
}

uint64_t sub_10003D528(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for UTType();
  v7 = __chkstk_darwin(v6 - 8);
  a3(v7);
  return FileRepresentation.init(contentType:shouldAttemptToOpenInPlace:exporting:importing:)();
}

double sub_10003D5F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a3;
  v5 = type metadata accessor for ConfigStorageKey();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v53 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v54 = &v52 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v52 - v12;
  __chkstk_darwin(v11);
  v15 = &v52 - v14;
  v56 = *(v6 + 104);
  v56(&v52 - v14, enum case for ConfigStorageKey.hasOnboardedVisualLookUp(_:), v5);
  v16 = ConfigStorageKey.rawValue.getter();
  v18 = v17;
  v19 = v15;
  v20 = a2;
  v21 = *(v6 + 8);
  v21(v19, v5);
  if (v16 == a1 && v18 == a2)
  {

    goto LABEL_23;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v23)
  {
LABEL_23:
    v46 = v57;
    *(v57 + 24) = &type metadata for Bool;
    *v46 = 1;
    return result;
  }

  v25 = v56;
  v56(v13, enum case for ConfigStorageKey.isVisualLookUpEagerModeEnabled(_:), v5);
  v26 = ConfigStorageKey.rawValue.getter();
  v28 = v27;
  v21(v13, v5);
  if (v26 == a1 && v28 == v20)
  {

    goto LABEL_26;
  }

  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v30)
  {
LABEL_26:
    v47 = v57;
    *(v57 + 24) = &type metadata for Bool;
    *v47 = 0;
    return result;
  }

  v31 = v54;
  v25(v54, enum case for ConfigStorageKey.hasOnboardedACME(_:), v5);
  v32 = ConfigStorageKey.rawValue.getter();
  v34 = v33;
  v21(v31, v5);
  if (v32 == a1 && v34 == v20)
  {
    goto LABEL_18;
  }

  v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v36 & 1) == 0)
  {
    v37 = v25;
    v38 = v53;
    v37(v53, enum case for ConfigStorageKey.hasOnboardedImageSearch(_:), v5);
    v39 = ConfigStorageKey.rawValue.getter();
    v41 = v40;
    v21(v38, v5);
    if (v39 == a1 && v41 == v20)
    {
LABEL_18:

      goto LABEL_19;
    }

    v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v50 & 1) == 0)
    {
      v51 = *(v55 + 16);
      v43 = String._bridgeToObjectiveC()();
      v44 = [v51 objectForKey:v43];
      goto LABEL_20;
    }
  }

LABEL_19:
  v42 = *(v55 + 24);
  v43 = String._bridgeToObjectiveC()();
  v44 = [v42 objectForKey:v43];
LABEL_20:
  v45 = v44;

  if (v45)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v58 = 0u;
    v59 = 0u;
  }

  result = *&v58;
  v48 = v59;
  v49 = v57;
  *v57 = v58;
  *(v49 + 16) = v48;
  return result;
}

uint64_t sub_10003DA1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64 = a1;
  v5 = type metadata accessor for ConfigStorageKey();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v61 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v62 = &v61 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v61 - v12;
  __chkstk_darwin(v11);
  v15 = &v61 - v14;
  v16 = *(v6 + 104);
  v16(&v61 - v14, enum case for ConfigStorageKey.hasOnboardedVisualLookUp(_:), v5);
  v17 = ConfigStorageKey.rawValue.getter();
  v19 = v18;
  v20 = v15;
  v21 = a3;
  v22 = *(v6 + 8);
  v22(v20, v5);
  if (v17 == a2 && v19 == v21)
  {
    goto LABEL_22;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v24)
  {
    goto LABEL_23;
  }

  v16(v13, enum case for ConfigStorageKey.isVisualLookUpEagerModeEnabled(_:), v5);
  v25 = ConfigStorageKey.rawValue.getter();
  v27 = v26;
  v28 = v13;
  v29 = v22;
  v22(v28, v5);
  if (v25 == a2 && v27 == v21)
  {
LABEL_22:

    goto LABEL_23;
  }

  v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v31 & 1) == 0)
  {
    v32 = v62;
    v16(v62, enum case for ConfigStorageKey.hasOnboardedACME(_:), v5);
    v33 = ConfigStorageKey.rawValue.getter();
    v35 = v34;
    v29(v32, v5);
    if (v33 == a2 && v35 == v21)
    {
      goto LABEL_18;
    }

    v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v38 = v64;
    if (v37)
    {
      goto LABEL_19;
    }

    v39 = v61;
    v16(v61, enum case for ConfigStorageKey.hasOnboardedImageSearch(_:), v5);
    v40 = ConfigStorageKey.rawValue.getter();
    v42 = v41;
    v29(v39, v5);
    if (v40 == a2 && v42 == v21)
    {
LABEL_18:
      v38 = v64;
    }

    else
    {
      v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v38 = v64;
      if ((v53 & 1) == 0)
      {
        v43 = *(v63 + 16);
        sub_1000138BC(v64, v65, &unk_1001D8060, &qword_1001732E0);
        v54 = v66;
        if (v66)
        {
          v55 = sub_100006AAC(v65, v66);
          v56 = *(v54 - 8);
          __chkstk_darwin(v55);
          v58 = &v61 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v56 + 16))(v58);
          v50 = _bridgeAnythingToObjectiveC<A>(_:)();
          v59 = v58;
          v38 = v64;
          (*(v56 + 8))(v59, v54);
          goto LABEL_21;
        }

LABEL_28:
        v50 = 0;
        goto LABEL_29;
      }
    }

LABEL_19:
    v43 = *(v63 + 24);
    sub_1000138BC(v38, v65, &unk_1001D8060, &qword_1001732E0);
    v44 = v66;
    if (v66)
    {
      v45 = sub_100006AAC(v65, v66);
      v46 = *(v44 - 8);
      __chkstk_darwin(v45);
      v48 = v38;
      v49 = &v61 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v46 + 16))(v49);
      v50 = _bridgeAnythingToObjectiveC<A>(_:)();
      v51 = v49;
      v38 = v48;
      (*(v46 + 8))(v51, v44);
LABEL_21:
      sub_100006B44(v65);
LABEL_29:
      v60 = String._bridgeToObjectiveC()();

      [v43 setObject:v50 forKey:v60];
      swift_unknownObjectRelease();

      return sub_10001370C(v38, &unk_1001D8060, &qword_1001732E0);
    }

    goto LABEL_28;
  }

LABEL_23:
  sub_10001370C(v64, &unk_1001D8060, &qword_1001732E0);
}

uint64_t sub_10003DFE8()
{

  return swift_deallocClassInstance();
}

uint64_t initializeBufferWithCopyOfBuffer for CameraControllerConfiguration.SafeAreaStrategy(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CameraControllerConfiguration.SafeAreaStrategy(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CameraControllerConfiguration.SafeAreaStrategy(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_10003E0C8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10003E0E4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_10003E128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SaliencyStreamConfiguration();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = sub_1000033A8(&qword_1001D8020, &qword_1001728D0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 56);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10003E278(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SaliencyStreamConfiguration();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  else
  {
    v11 = sub_1000033A8(&qword_1001D8020, &qword_1001728D0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 56);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_10003E3C4(uint64_t a1)
{
  type metadata accessor for SaliencyStreamConfiguration();
  if (v1 <= 0x3F)
  {
    sub_100050DA0(319, &qword_1001D5398, &type metadata accessor for URL, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100050E68(319, &unk_1001D53A0, &type metadata for CameraSystemPressureLevel, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_10003E5B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5420;
  if (!qword_1001D5420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5420);
  }

  return result;
}

unint64_t sub_10003E650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5438;
  if (!qword_1001D5438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5438);
  }

  return result;
}

unint64_t sub_10003E6EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5450;
  if (!qword_1001D5450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5450);
  }

  return result;
}

unint64_t sub_10003E788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5468;
  if (!qword_1001D5468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5468);
  }

  return result;
}

uint64_t sub_10003E86C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10003E944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5488;
  if (!qword_1001D5488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5488);
  }

  return result;
}

unint64_t sub_10003E9E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D54A0;
  if (!qword_1001D54A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D54A0);
  }

  return result;
}

void (*sub_10003EAEC(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x58uLL);
  }

  *a1 = v7;
  v7[9] = a3;
  v7[10] = v3;
  v7[8] = a2;
  sub_10003D5F0(a2, a3, v7);
  return sub_10003EB80;
}

void sub_10003EB80(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 64);
  if (a2)
  {
    sub_1000138BC(*a1, v2 + 32, &unk_1001D8060, &qword_1001732E0);

    sub_10003DA1C(v2 + 32, v4, v3);
    sub_10001370C(v2, &unk_1001D8060, &qword_1001732E0);
  }

  else
  {

    sub_10003DA1C(v2, v4, v3);
  }

  free(v2);
}

uint64_t sub_10003ECB8()
{
  _StringGuts.grow(_:)(18);

  type metadata accessor for URL();
  sub_10003E86C(&qword_1001D57A8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  sub_1000033A8(&qword_1001D5620, &qword_1001734C8);
  sub_100013608(&qword_1001D5628, &qword_1001D5620, &qword_1001734C8, &protocol conformance descriptor for Button<A>);
  View.swipeActions<A>(edge:allowsFullSwipe:content:)();
}

uint64_t sub_10003EE48@<X0>(uint64_t a1@<X8>)
{
  v164 = a1;
  v148 = sub_1000033A8(&qword_1001D5738, &qword_100173658);
  v140 = *(v148 - 8);
  __chkstk_darwin(v148);
  v139 = &v117 - v2;
  v145 = sub_1000033A8(&qword_1001D5740, &qword_100173660);
  __chkstk_darwin(v145);
  v146 = &v117 - v3;
  v160 = sub_1000033A8(&qword_1001D56A8, &qword_100173508);
  __chkstk_darwin(v160);
  v147 = &v117 - v4;
  v5 = type metadata accessor for ReplayVideo(0);
  __chkstk_darwin(v5 - 8);
  v136 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_1000033A8(&qword_1001D5698, &qword_100173500);
  __chkstk_darwin(v151);
  v132 = (&v117 - v7);
  v157 = sub_1000033A8(&qword_1001D5748, &qword_100173668);
  __chkstk_darwin(v157);
  v159 = &v117 - v8;
  v149 = sub_1000033A8(&qword_1001D5750, &qword_100173670);
  __chkstk_darwin(v149);
  v150 = &v117 - v9;
  v158 = sub_1000033A8(&qword_1001D5648, &qword_1001734D8);
  __chkstk_darwin(v158);
  v152 = &v117 - v10;
  v125 = sub_1000033A8(&qword_1001D5758, &qword_100173678);
  __chkstk_darwin(v125);
  v128 = &v117 - v11;
  v129 = sub_1000033A8(&qword_1001D5760, &qword_100173680);
  v119 = *(v129 - 8);
  __chkstk_darwin(v129);
  v118 = &v117 - v12;
  v138 = sub_1000033A8(&qword_1001D5678, &qword_1001734F0);
  __chkstk_darwin(v138);
  v130 = &v117 - v13;
  v14 = type metadata accessor for PhotosPickerItem.EncodingDisambiguationPolicy();
  __chkstk_darwin(v14 - 8);
  v124 = &v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000033A8(&qword_1001D5768, &qword_100173688);
  __chkstk_darwin(v16 - 8);
  v123 = &v117 - v17;
  v18 = sub_1000033A8(&qword_1001D5770, &qword_100173690);
  __chkstk_darwin(v18 - 8);
  v122 = &v117 - v19;
  v127 = sub_1000033A8(&qword_1001D5680, &qword_1001734F8);
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v131 = &v117 - v20;
  v133 = sub_1000033A8(&qword_1001D5778, &qword_100173698);
  __chkstk_darwin(v133);
  v135 = &v117 - v21;
  v155 = type metadata accessor for CameraControllerConfigurationForm(0);
  v141 = *(v155 - 8);
  __chkstk_darwin(v155);
  v142 = v22;
  v143 = &v117 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_1000033A8(&qword_1001D5668, &qword_10017CFB0);
  v121 = *(v134 - 8);
  __chkstk_darwin(v134);
  v120 = &v117 - v23;
  v144 = sub_1000033A8(&qword_1001D5658, &unk_1001734E0);
  __chkstk_darwin(v144);
  v137 = &v117 - v24;
  v154 = type metadata accessor for CameraControllerConfigurationForm.ReplayState(0);
  __chkstk_darwin(v154);
  v153 = (&v117 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v165 = sub_1000033A8(&qword_1001D5638, &qword_1001734D0);
  __chkstk_darwin(v165);
  v156 = &v117 - v26;
  v163 = sub_1000033A8(&qword_1001D5780, &qword_1001736A0);
  __chkstk_darwin(v163);
  v28 = &v117 - v27;
  v29 = sub_1000033A8(&qword_1001D5788, &qword_1001736A8);
  v161 = *(v29 - 8);
  v162 = v29;
  __chkstk_darwin(v29);
  v31 = &v117 - v30;
  v32 = sub_1000033A8(&qword_1001D8020, &qword_1001728D0);
  __chkstk_darwin(v32 - 8);
  v34 = &v117 - v33;
  v35 = type metadata accessor for CameraControllerConfiguration(0);
  v36 = v35 - 8;
  __chkstk_darwin(v35);
  v38 = &v117 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for URL();
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v42 = &v117 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000033A8(&qword_1001D5568, &qword_100173390);
  Binding.wrappedValue.getter();
  sub_1000138BC(&v38[*(v36 + 76)], v34, &qword_1001D8020, &qword_1001728D0);
  sub_10004A93C(v38, type metadata accessor for CameraControllerConfiguration);
  if ((*(v40 + 48))(v34, 1, v39) != 1)
  {
    (*(v40 + 32))(v42, v34, v39);
    sub_10003ECB8();
    v56 = v161;
    v55 = v162;
    (*(v161 + 16))(v28, v31, v162);
    swift_storeEnumTagMultiPayload();
    v57 = sub_10001276C(&qword_1001D5620, &qword_1001734C8);
    v58 = sub_100013608(&qword_1001D5628, &qword_1001D5620, &qword_1001734C8, &protocol conformance descriptor for Button<A>);
    v167 = &type metadata for Text;
    v168 = v57;
    v169 = &protocol witness table for Text;
    v170 = v58;
    swift_getOpaqueTypeConformance2();
    sub_100049BE4();
    _ConditionalContent<>.init(storage:)();
    (*(v56 + 8))(v31, v55);
    return (*(v40 + 8))(v42, v39);
  }

  v43 = v161;
  v117 = v28;
  sub_10001370C(v34, &qword_1001D8020, &qword_1001728D0);
  v44 = v155;
  sub_1000033A8(&qword_1001D55E8, &qword_100173490);
  v45 = v1;
  v46 = v153;
  State.wrappedValue.getter();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v90 = v1 + *(v44 + 32);
      v91 = *v90;
      v92 = *(v90 + 8);
      LOBYTE(v167) = v91;
      v168 = v92;
      sub_1000033A8(&qword_1001D3E88, &unk_100171900);
      State.wrappedValue.getter();
      if (v166)
      {
        sub_1000033A8(&qword_1001D55E0, &qword_100173488);
        State.projectedValue.getter();
        v93 = v123;
        static PHPickerFilter.videos.getter();
        v94 = type metadata accessor for PHPickerFilter();
        (*(*(v94 - 8) + 56))(v93, 0, 1, v94);
        static PhotosPickerItem.EncodingDisambiguationPolicy.current.getter();
        v95 = v131;
        PhotosPicker.init(selection:matching:preferredItemEncoding:label:)();
        v96 = sub_1000D02C8();
        if (v96)
        {
          v97 = v96;
          v98 = [v96 localIdentifier];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v99 = sub_100013608(&qword_1001D5688, &qword_1001D5680, &qword_1001734F8, &protocol conformance descriptor for PhotosPicker<A>);
          v100 = v118;
          v101 = v127;
          View._photosPickerContainerIdentifier(_:)();

          v102 = v119;
          v103 = v129;
          (*(v119 + 16))(v128, v100, v129);
          swift_storeEnumTagMultiPayload();
          v167 = v101;
          v168 = v99;
          swift_getOpaqueTypeConformance2();
          v104 = v130;
          _ConditionalContent<>.init(storage:)();

          (*(v102 + 8))(v100, v103);
          v89 = v117;
          v54 = v156;
          v105 = v126;
        }

        else
        {
          v105 = v126;
          v101 = v127;
          (*(v126 + 16))(v128, v95, v127);
          swift_storeEnumTagMultiPayload();
          v113 = sub_100013608(&qword_1001D5688, &qword_1001D5680, &qword_1001734F8, &protocol conformance descriptor for PhotosPicker<A>);
          v167 = v101;
          v168 = v113;
          swift_getOpaqueTypeConformance2();
          v104 = v130;
          _ConditionalContent<>.init(storage:)();
          v89 = v117;
          v54 = v156;
        }

        sub_1000138BC(v104, v135, &qword_1001D5678, &qword_1001734F0);
        swift_storeEnumTagMultiPayload();
        sub_100013608(&qword_1001D5660, &qword_1001D5668, &qword_10017CFB0, &protocol conformance descriptor for Button<A>);
        sub_100049DE0();
        v112 = v137;
        _ConditionalContent<>.init(storage:)();
        sub_10001370C(v104, &qword_1001D5678, &qword_1001734F0);
        (*(v105 + 8))(v131, v101);
      }

      else
      {
        v106 = v143;
        sub_10004EB44(v1, v143, type metadata accessor for CameraControllerConfigurationForm);
        v107 = (*(v141 + 80) + 16) & ~*(v141 + 80);
        v108 = swift_allocObject();
        sub_10004A8D4(v106, v108 + v107, type metadata accessor for CameraControllerConfigurationForm);
        v109 = v120;
        Button.init(action:label:)();
        v110 = v121;
        v111 = v134;
        (*(v121 + 16))(v135, v109, v134);
        swift_storeEnumTagMultiPayload();
        sub_100013608(&qword_1001D5660, &qword_1001D5668, &qword_10017CFB0, &protocol conformance descriptor for Button<A>);
        sub_100049DE0();
        v112 = v137;
        _ConditionalContent<>.init(storage:)();
        (*(v110 + 8))(v109, v111);
        v89 = v117;
        v54 = v156;
      }

      sub_1000138BC(v112, v150, &qword_1001D5658, &unk_1001734E0);
      swift_storeEnumTagMultiPayload();
      sub_100049D28();
      sub_100013608(&qword_1001D5690, &qword_1001D5698, &qword_100173500, &protocol conformance descriptor for HStack<A>);
      v114 = v152;
      _ConditionalContent<>.init(storage:)();
      sub_1000138BC(v114, v159, &qword_1001D5648, &qword_1001734D8);
      swift_storeEnumTagMultiPayload();
      sub_100049C70();
      sub_100049ED8();
      _ConditionalContent<>.init(storage:)();
      sub_10001370C(v114, &qword_1001D5648, &qword_1001734D8);
      sub_10001370C(v112, &qword_1001D5658, &unk_1001734E0);
      goto LABEL_17;
    }

    v60 = v46[1];
    v167 = *v46;
    v168 = v60;
    sub_10002EC9C(EnumCaseMultiPayload, v48, v49);
    v61 = Text.init<A>(_:)();
    v63 = v62;
    v65 = v64;
    v167 = static Color.red.getter();
    v66 = Text.foregroundStyle<A>(_:)();
    v68 = v67;
    v70 = v69;
    v72 = v71;
    sub_100020D44(v61, v63, v65 & 1);

    v167 = v66;
    v168 = v68;
    LOBYTE(v169) = v70 & 1;
    v170 = v72;
    v73 = v143;
    sub_10004EB44(v45, v143, type metadata accessor for CameraControllerConfigurationForm);
    v74 = (*(v141 + 80) + 16) & ~*(v141 + 80);
    v75 = swift_allocObject();
    sub_10004A8D4(v73, v75 + v74, type metadata accessor for CameraControllerConfigurationForm);
    v76 = v139;
    View.onTapGesture(count:perform:)();

    sub_100020D44(v66, v68, v70 & 1);

    v77 = v140;
    v78 = v148;
    (*(v140 + 16))(v146, v76, v148);
    swift_storeEnumTagMultiPayload();
    v79 = sub_10001276C(&qword_1001D5620, &qword_1001734C8);
    v80 = sub_100013608(&qword_1001D5628, &qword_1001D5620, &qword_1001734C8, &protocol conformance descriptor for Button<A>);
    v167 = &type metadata for Text;
    v168 = v79;
    v169 = &protocol witness table for Text;
    v170 = v80;
    swift_getOpaqueTypeConformance2();
    v167 = &type metadata for Text;
    v168 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    v81 = v147;
    _ConditionalContent<>.init(storage:)();
    sub_1000138BC(v81, v159, &qword_1001D56A8, &qword_100173508);
    swift_storeEnumTagMultiPayload();
    sub_100049C70();
    sub_100049ED8();
    v54 = v156;
    _ConditionalContent<>.init(storage:)();
    sub_10001370C(v81, &qword_1001D56A8, &qword_100173508);
    (*(v77 + 8))(v76, v78);
  }

  else if (EnumCaseMultiPayload)
  {
    v82 = v136;
    sub_10004A8D4(v46, v136, type metadata accessor for ReplayVideo);
    v83 = v31;
    sub_10003ECB8();
    v84 = v31;
    v85 = v162;
    (*(v43 + 16))(v146, v84, v162);
    swift_storeEnumTagMultiPayload();
    v86 = sub_10001276C(&qword_1001D5620, &qword_1001734C8);
    v87 = sub_100013608(&qword_1001D5628, &qword_1001D5620, &qword_1001734C8, &protocol conformance descriptor for Button<A>);
    v167 = &type metadata for Text;
    v168 = v86;
    v169 = &protocol witness table for Text;
    v170 = v87;
    swift_getOpaqueTypeConformance2();
    v167 = &type metadata for Text;
    v168 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    v88 = v147;
    _ConditionalContent<>.init(storage:)();
    sub_1000138BC(v88, v159, &qword_1001D56A8, &qword_100173508);
    swift_storeEnumTagMultiPayload();
    sub_100049C70();
    sub_100049ED8();
    v54 = v156;
    _ConditionalContent<>.init(storage:)();
    sub_10001370C(v88, &qword_1001D56A8, &qword_100173508);
    (*(v43 + 8))(v83, v85);
    sub_10004A93C(v82, type metadata accessor for ReplayVideo);
  }

  else
  {
    sub_10004A93C(v46, type metadata accessor for CameraControllerConfigurationForm.ReplayState);
    v50 = static VerticalAlignment.center.getter();
    v51 = v132;
    *v132 = v50;
    *(v51 + 8) = 0;
    *(v51 + 16) = 1;
    v52 = sub_1000033A8(&qword_1001D5790, &qword_1001736B0);
    sub_100040D8C(v51 + *(v52 + 44));
    sub_1000138BC(v51, v150, &qword_1001D5698, &qword_100173500);
    swift_storeEnumTagMultiPayload();
    sub_100049D28();
    sub_100013608(&qword_1001D5690, &qword_1001D5698, &qword_100173500, &protocol conformance descriptor for HStack<A>);
    v53 = v152;
    _ConditionalContent<>.init(storage:)();
    sub_1000138BC(v53, v159, &qword_1001D5648, &qword_1001734D8);
    swift_storeEnumTagMultiPayload();
    sub_100049C70();
    sub_100049ED8();
    v54 = v156;
    _ConditionalContent<>.init(storage:)();
    sub_10001370C(v53, &qword_1001D5648, &qword_1001734D8);
    sub_10001370C(v51, &qword_1001D5698, &qword_100173500);
  }

  v89 = v117;
LABEL_17:
  sub_1000138BC(v54, v89, &qword_1001D5638, &qword_1001734D0);
  swift_storeEnumTagMultiPayload();
  v115 = sub_10001276C(&qword_1001D5620, &qword_1001734C8);
  v116 = sub_100013608(&qword_1001D5628, &qword_1001D5620, &qword_1001734C8, &protocol conformance descriptor for Button<A>);
  v167 = &type metadata for Text;
  v168 = v115;
  v169 = &protocol witness table for Text;
  v170 = v116;
  swift_getOpaqueTypeConformance2();
  sub_100049BE4();
  _ConditionalContent<>.init(storage:)();
  return sub_10001370C(v54, &qword_1001D5638, &qword_1001734D0);
}

uint64_t sub_100040974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v4[5] = type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v4[7] = v5;
  *v5 = v4;
  v5[1] = sub_100040A68;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4 + 9, 0, 0, 0xD000000000000017, 0x800000010016C1A0, sub_100019D38, 0, &type metadata for Bool);
}

uint64_t sub_100040A68()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_100040BFC;
  }

  else
  {
    v2 = sub_100040B7C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100040B7C()
{
  *(v0 + 74) = *(v0 + 72);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100040C80, v2, v1);
}

uint64_t sub_100040BFC()
{

  *(v0 + 74) = 0;
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100040C80, v2, v1);
}

uint64_t sub_100040C80()
{
  v1 = *(v0 + 74);
  v2 = *(v0 + 32);

  v3 = (v2 + *(type metadata accessor for CameraControllerConfigurationForm(0) + 32));
  v4 = *v3;
  v5 = *(v3 + 1);
  *(v0 + 16) = v4;
  *(v0 + 24) = v5;
  *(v0 + 73) = v1;
  sub_1000033A8(&qword_1001D3E88, &unk_100171900);
  State.wrappedValue.setter();
  v6 = *(v0 + 8);

  return v6();
}

void sub_100040D3C(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000017;
  *(a1 + 8) = 0x800000010016C180;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

double sub_100040D6C@<D0>(uint64_t a1@<X8>)
{
  result = 4.09163782e87;
  *a1 = xmmword_100172980;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_100040D8C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000033A8(&qword_1001D5798, &qword_1001736C8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  ProgressView<>.init<>()();
  v9 = *(v3 + 16);
  v9(v6, v8, v2);
  *a1 = 0x1000000000000011;
  *(a1 + 8) = 0x800000010016C1C0;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v10 = sub_1000033A8(&qword_1001D57A0, &qword_1001736D0);
  v9((a1 + *(v10 + 64)), v6, v2);
  sub_100020D5C(0x1000000000000011, 0x800000010016C1C0, 0);
  v11 = *(v3 + 8);

  v11(v8, v2);
  v11(v6, v2);
  sub_100020D44(0x1000000000000011, 0x800000010016C1C0, 0);
}

uint64_t sub_100040F64()
{
  v0 = type metadata accessor for CameraControllerConfiguration(0);
  v1 = v0 - 8;
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000033A8(&qword_1001D8020, &qword_1001728D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_1000033A8(&qword_1001D54C0, &qword_1001732E8);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v16 - v11;
  v13 = type metadata accessor for PhotosPickerItem();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  type metadata accessor for CameraControllerConfigurationForm(0);
  sub_1000138BC(v12, v10, &qword_1001D54C0, &qword_1001732E8);
  sub_1000033A8(&qword_1001D55E0, &qword_100173488);
  State.wrappedValue.setter();
  sub_10001370C(v12, &qword_1001D54C0, &qword_1001732E8);
  v14 = type metadata accessor for URL();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  sub_1000033A8(&qword_1001D5568, &qword_100173390);
  Binding.wrappedValue.getter();
  sub_10004E3A0(v6, &v3[*(v1 + 76)]);
  return Binding.wrappedValue.setter();
}

uint64_t sub_1000411CC()
{
  _StringGuts.grow(_:)(18);

  type metadata accessor for URL();
  sub_10003E86C(&qword_1001D57A8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  sub_1000033A8(&qword_1001D5620, &qword_1001734C8);
  sub_100013608(&qword_1001D5628, &qword_1001D5620, &qword_1001734C8, &protocol conformance descriptor for Button<A>);
  View.swipeActions<A>(edge:allowsFullSwipe:content:)();
}

uint64_t sub_100041358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for CameraControllerConfigurationForm(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = sub_1000033A8(&qword_1001D57B0, &qword_1001736D8);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  static ButtonRole.destructive.getter();
  v11 = type metadata accessor for ButtonRole();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  sub_10004EB44(a1, &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CameraControllerConfigurationForm);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  sub_10004A8D4(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for CameraControllerConfigurationForm);
  sub_1000033A8(&qword_1001D57B8, &qword_1001736E0);
  sub_100013608(&qword_1001D57C0, &qword_1001D57B8, &qword_1001736E0, &protocol conformance descriptor for Label<A, B>);
  return Button.init(role:action:label:)();
}

uint64_t sub_10004157C()
{
  v0 = LocalizedStringKey.init(stringLiteral:)();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_1000415D8@<X0>(uint64_t a1@<X8>)
{
  v164 = a1;
  v148 = sub_1000033A8(&qword_1001D5738, &qword_100173658);
  v140 = *(v148 - 8);
  __chkstk_darwin(v148);
  v139 = &v117 - v2;
  v145 = sub_1000033A8(&qword_1001D5740, &qword_100173660);
  __chkstk_darwin(v145);
  v146 = &v117 - v3;
  v160 = sub_1000033A8(&qword_1001D56A8, &qword_100173508);
  __chkstk_darwin(v160);
  v147 = &v117 - v4;
  v5 = type metadata accessor for StillFrame(0);
  __chkstk_darwin(v5 - 8);
  v136 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_1000033A8(&qword_1001D5698, &qword_100173500);
  __chkstk_darwin(v151);
  v132 = (&v117 - v7);
  v157 = sub_1000033A8(&qword_1001D5748, &qword_100173668);
  __chkstk_darwin(v157);
  v159 = &v117 - v8;
  v149 = sub_1000033A8(&qword_1001D5750, &qword_100173670);
  __chkstk_darwin(v149);
  v150 = &v117 - v9;
  v158 = sub_1000033A8(&qword_1001D5648, &qword_1001734D8);
  __chkstk_darwin(v158);
  v152 = &v117 - v10;
  v125 = sub_1000033A8(&qword_1001D5758, &qword_100173678);
  __chkstk_darwin(v125);
  v128 = &v117 - v11;
  v129 = sub_1000033A8(&qword_1001D5760, &qword_100173680);
  v119 = *(v129 - 8);
  __chkstk_darwin(v129);
  v118 = &v117 - v12;
  v138 = sub_1000033A8(&qword_1001D5678, &qword_1001734F0);
  __chkstk_darwin(v138);
  v130 = &v117 - v13;
  v14 = type metadata accessor for PhotosPickerItem.EncodingDisambiguationPolicy();
  __chkstk_darwin(v14 - 8);
  v124 = &v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000033A8(&qword_1001D5768, &qword_100173688);
  __chkstk_darwin(v16 - 8);
  v123 = &v117 - v17;
  v18 = sub_1000033A8(&qword_1001D5770, &qword_100173690);
  __chkstk_darwin(v18 - 8);
  v122 = &v117 - v19;
  v127 = sub_1000033A8(&qword_1001D5680, &qword_1001734F8);
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v131 = &v117 - v20;
  v133 = sub_1000033A8(&qword_1001D5778, &qword_100173698);
  __chkstk_darwin(v133);
  v135 = &v117 - v21;
  v155 = type metadata accessor for CameraControllerConfigurationForm(0);
  v141 = *(v155 - 8);
  __chkstk_darwin(v155);
  v142 = v22;
  v143 = &v117 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_1000033A8(&qword_1001D5668, &qword_10017CFB0);
  v121 = *(v134 - 8);
  __chkstk_darwin(v134);
  v120 = &v117 - v23;
  v144 = sub_1000033A8(&qword_1001D5658, &unk_1001734E0);
  __chkstk_darwin(v144);
  v137 = &v117 - v24;
  v154 = type metadata accessor for CameraControllerConfigurationForm.StillSelectionState(0);
  __chkstk_darwin(v154);
  v153 = (&v117 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v165 = sub_1000033A8(&qword_1001D5638, &qword_1001734D0);
  __chkstk_darwin(v165);
  v156 = &v117 - v26;
  v163 = sub_1000033A8(&qword_1001D5780, &qword_1001736A0);
  __chkstk_darwin(v163);
  v28 = &v117 - v27;
  v29 = sub_1000033A8(&qword_1001D5788, &qword_1001736A8);
  v161 = *(v29 - 8);
  v162 = v29;
  __chkstk_darwin(v29);
  v31 = &v117 - v30;
  v32 = sub_1000033A8(&qword_1001D8020, &qword_1001728D0);
  __chkstk_darwin(v32 - 8);
  v34 = &v117 - v33;
  v35 = type metadata accessor for CameraControllerConfiguration(0);
  v36 = v35 - 8;
  __chkstk_darwin(v35);
  v38 = &v117 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for URL();
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v42 = &v117 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000033A8(&qword_1001D5568, &qword_100173390);
  Binding.wrappedValue.getter();
  sub_1000138BC(&v38[*(v36 + 64)], v34, &qword_1001D8020, &qword_1001728D0);
  sub_10004A93C(v38, type metadata accessor for CameraControllerConfiguration);
  if ((*(v40 + 48))(v34, 1, v39) != 1)
  {
    (*(v40 + 32))(v42, v34, v39);
    sub_1000411CC();
    v56 = v161;
    v55 = v162;
    (*(v161 + 16))(v28, v31, v162);
    swift_storeEnumTagMultiPayload();
    v57 = sub_10001276C(&qword_1001D5620, &qword_1001734C8);
    v58 = sub_100013608(&qword_1001D5628, &qword_1001D5620, &qword_1001734C8, &protocol conformance descriptor for Button<A>);
    v167 = &type metadata for Text;
    v168 = v57;
    v169 = &protocol witness table for Text;
    v170 = v58;
    swift_getOpaqueTypeConformance2();
    sub_100049BE4();
    _ConditionalContent<>.init(storage:)();
    (*(v56 + 8))(v31, v55);
    return (*(v40 + 8))(v42, v39);
  }

  v43 = v161;
  v117 = v28;
  sub_10001370C(v34, &qword_1001D8020, &qword_1001728D0);
  v44 = v155;
  sub_1000033A8(&qword_1001D55F0, &qword_100173498);
  v45 = v1;
  v46 = v153;
  State.wrappedValue.getter();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v90 = v1 + *(v44 + 32);
      v91 = *v90;
      v92 = *(v90 + 8);
      LOBYTE(v167) = v91;
      v168 = v92;
      sub_1000033A8(&qword_1001D3E88, &unk_100171900);
      State.wrappedValue.getter();
      if (v166)
      {
        sub_1000033A8(&qword_1001D55E0, &qword_100173488);
        State.projectedValue.getter();
        v93 = v123;
        static PHPickerFilter.images.getter();
        v94 = type metadata accessor for PHPickerFilter();
        (*(*(v94 - 8) + 56))(v93, 0, 1, v94);
        static PhotosPickerItem.EncodingDisambiguationPolicy.current.getter();
        v95 = v131;
        PhotosPicker.init(selection:matching:preferredItemEncoding:label:)();
        v96 = sub_1000D02C8();
        if (v96)
        {
          v97 = v96;
          v98 = [v96 localIdentifier];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v99 = sub_100013608(&qword_1001D5688, &qword_1001D5680, &qword_1001734F8, &protocol conformance descriptor for PhotosPicker<A>);
          v100 = v118;
          v101 = v127;
          View._photosPickerContainerIdentifier(_:)();

          v102 = v119;
          v103 = v129;
          (*(v119 + 16))(v128, v100, v129);
          swift_storeEnumTagMultiPayload();
          v167 = v101;
          v168 = v99;
          swift_getOpaqueTypeConformance2();
          v104 = v130;
          _ConditionalContent<>.init(storage:)();

          (*(v102 + 8))(v100, v103);
          v89 = v117;
          v54 = v156;
          v105 = v126;
        }

        else
        {
          v105 = v126;
          v101 = v127;
          (*(v126 + 16))(v128, v95, v127);
          swift_storeEnumTagMultiPayload();
          v113 = sub_100013608(&qword_1001D5688, &qword_1001D5680, &qword_1001734F8, &protocol conformance descriptor for PhotosPicker<A>);
          v167 = v101;
          v168 = v113;
          swift_getOpaqueTypeConformance2();
          v104 = v130;
          _ConditionalContent<>.init(storage:)();
          v89 = v117;
          v54 = v156;
        }

        sub_1000138BC(v104, v135, &qword_1001D5678, &qword_1001734F0);
        swift_storeEnumTagMultiPayload();
        sub_100013608(&qword_1001D5660, &qword_1001D5668, &qword_10017CFB0, &protocol conformance descriptor for Button<A>);
        sub_100049DE0();
        v112 = v137;
        _ConditionalContent<>.init(storage:)();
        sub_10001370C(v104, &qword_1001D5678, &qword_1001734F0);
        (*(v105 + 8))(v131, v101);
      }

      else
      {
        v106 = v143;
        sub_10004EB44(v1, v143, type metadata accessor for CameraControllerConfigurationForm);
        v107 = (*(v141 + 80) + 16) & ~*(v141 + 80);
        v108 = swift_allocObject();
        sub_10004A8D4(v106, v108 + v107, type metadata accessor for CameraControllerConfigurationForm);
        v109 = v120;
        Button.init(action:label:)();
        v110 = v121;
        v111 = v134;
        (*(v121 + 16))(v135, v109, v134);
        swift_storeEnumTagMultiPayload();
        sub_100013608(&qword_1001D5660, &qword_1001D5668, &qword_10017CFB0, &protocol conformance descriptor for Button<A>);
        sub_100049DE0();
        v112 = v137;
        _ConditionalContent<>.init(storage:)();
        (*(v110 + 8))(v109, v111);
        v89 = v117;
        v54 = v156;
      }

      sub_1000138BC(v112, v150, &qword_1001D5658, &unk_1001734E0);
      swift_storeEnumTagMultiPayload();
      sub_100049D28();
      sub_100013608(&qword_1001D5690, &qword_1001D5698, &qword_100173500, &protocol conformance descriptor for HStack<A>);
      v114 = v152;
      _ConditionalContent<>.init(storage:)();
      sub_1000138BC(v114, v159, &qword_1001D5648, &qword_1001734D8);
      swift_storeEnumTagMultiPayload();
      sub_100049C70();
      sub_100049ED8();
      _ConditionalContent<>.init(storage:)();
      sub_10001370C(v114, &qword_1001D5648, &qword_1001734D8);
      sub_10001370C(v112, &qword_1001D5658, &unk_1001734E0);
      goto LABEL_17;
    }

    v60 = v46[1];
    v167 = *v46;
    v168 = v60;
    sub_10002EC9C(EnumCaseMultiPayload, v48, v49);
    v61 = Text.init<A>(_:)();
    v63 = v62;
    v65 = v64;
    v167 = static Color.red.getter();
    v66 = Text.foregroundStyle<A>(_:)();
    v68 = v67;
    v70 = v69;
    v72 = v71;
    sub_100020D44(v61, v63, v65 & 1);

    v167 = v66;
    v168 = v68;
    LOBYTE(v169) = v70 & 1;
    v170 = v72;
    v73 = v143;
    sub_10004EB44(v45, v143, type metadata accessor for CameraControllerConfigurationForm);
    v74 = (*(v141 + 80) + 16) & ~*(v141 + 80);
    v75 = swift_allocObject();
    sub_10004A8D4(v73, v75 + v74, type metadata accessor for CameraControllerConfigurationForm);
    v76 = v139;
    View.onTapGesture(count:perform:)();

    sub_100020D44(v66, v68, v70 & 1);

    v77 = v140;
    v78 = v148;
    (*(v140 + 16))(v146, v76, v148);
    swift_storeEnumTagMultiPayload();
    v79 = sub_10001276C(&qword_1001D5620, &qword_1001734C8);
    v80 = sub_100013608(&qword_1001D5628, &qword_1001D5620, &qword_1001734C8, &protocol conformance descriptor for Button<A>);
    v167 = &type metadata for Text;
    v168 = v79;
    v169 = &protocol witness table for Text;
    v170 = v80;
    swift_getOpaqueTypeConformance2();
    v167 = &type metadata for Text;
    v168 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    v81 = v147;
    _ConditionalContent<>.init(storage:)();
    sub_1000138BC(v81, v159, &qword_1001D56A8, &qword_100173508);
    swift_storeEnumTagMultiPayload();
    sub_100049C70();
    sub_100049ED8();
    v54 = v156;
    _ConditionalContent<>.init(storage:)();
    sub_10001370C(v81, &qword_1001D56A8, &qword_100173508);
    (*(v77 + 8))(v76, v78);
  }

  else if (EnumCaseMultiPayload)
  {
    v82 = v136;
    sub_10004A8D4(v46, v136, type metadata accessor for StillFrame);
    v83 = v31;
    sub_1000411CC();
    v84 = v31;
    v85 = v162;
    (*(v43 + 16))(v146, v84, v162);
    swift_storeEnumTagMultiPayload();
    v86 = sub_10001276C(&qword_1001D5620, &qword_1001734C8);
    v87 = sub_100013608(&qword_1001D5628, &qword_1001D5620, &qword_1001734C8, &protocol conformance descriptor for Button<A>);
    v167 = &type metadata for Text;
    v168 = v86;
    v169 = &protocol witness table for Text;
    v170 = v87;
    swift_getOpaqueTypeConformance2();
    v167 = &type metadata for Text;
    v168 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    v88 = v147;
    _ConditionalContent<>.init(storage:)();
    sub_1000138BC(v88, v159, &qword_1001D56A8, &qword_100173508);
    swift_storeEnumTagMultiPayload();
    sub_100049C70();
    sub_100049ED8();
    v54 = v156;
    _ConditionalContent<>.init(storage:)();
    sub_10001370C(v88, &qword_1001D56A8, &qword_100173508);
    (*(v43 + 8))(v83, v85);
    sub_10004A93C(v82, type metadata accessor for StillFrame);
  }

  else
  {
    sub_10004A93C(v46, type metadata accessor for CameraControllerConfigurationForm.StillSelectionState);
    v50 = static VerticalAlignment.center.getter();
    v51 = v132;
    *v132 = v50;
    *(v51 + 8) = 0;
    *(v51 + 16) = 1;
    v52 = sub_1000033A8(&qword_1001D5790, &qword_1001736B0);
    sub_10004363C(v51 + *(v52 + 44));
    sub_1000138BC(v51, v150, &qword_1001D5698, &qword_100173500);
    swift_storeEnumTagMultiPayload();
    sub_100049D28();
    sub_100013608(&qword_1001D5690, &qword_1001D5698, &qword_100173500, &protocol conformance descriptor for HStack<A>);
    v53 = v152;
    _ConditionalContent<>.init(storage:)();
    sub_1000138BC(v53, v159, &qword_1001D5648, &qword_1001734D8);
    swift_storeEnumTagMultiPayload();
    sub_100049C70();
    sub_100049ED8();
    v54 = v156;
    _ConditionalContent<>.init(storage:)();
    sub_10001370C(v53, &qword_1001D5648, &qword_1001734D8);
    sub_10001370C(v51, &qword_1001D5698, &qword_100173500);
  }

  v89 = v117;
LABEL_17:
  sub_1000138BC(v54, v89, &qword_1001D5638, &qword_1001734D0);
  swift_storeEnumTagMultiPayload();
  v115 = sub_10001276C(&qword_1001D5620, &qword_1001734C8);
  v116 = sub_100013608(&qword_1001D5628, &qword_1001D5620, &qword_1001734C8, &protocol conformance descriptor for Button<A>);
  v167 = &type metadata for Text;
  v168 = v115;
  v169 = &protocol witness table for Text;
  v170 = v116;
  swift_getOpaqueTypeConformance2();
  sub_100049BE4();
  _ConditionalContent<>.init(storage:)();
  return sub_10001370C(v54, &qword_1001D5638, &qword_1001734D0);
}

uint64_t sub_100043104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CameraControllerConfigurationForm(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = sub_1000033A8(&qword_1001D41B0, &qword_100170B60);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_10004EB44(a1, &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CameraControllerConfigurationForm);
  type metadata accessor for MainActor();
  v12 = static MainActor.shared.getter();
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = &protocol witness table for MainActor;
  sub_10004A8D4(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for CameraControllerConfigurationForm);
  sub_1000154EC(0, 0, v10, a3, v14);
}

uint64_t sub_1000432E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v4[5] = type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v4[7] = v5;
  *v5 = v4;
  v5[1] = sub_1000433D4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4 + 9, 0, 0, 0xD000000000000017, 0x800000010016C1A0, sub_100019D38, 0, &type metadata for Bool);
}

uint64_t sub_1000433D4()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_100043568;
  }

  else
  {
    v2 = sub_1000434E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000434E8()
{
  *(v0 + 74) = *(v0 + 72);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000521B0, v2, v1);
}

uint64_t sub_100043568()
{

  *(v0 + 74) = 0;
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000521B0, v2, v1);
}

void sub_1000435EC(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000016;
  *(a1 + 8) = 0x800000010016C200;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

double sub_10004361C@<D0>(uint64_t a1@<X8>)
{
  result = 1.83475386e44;
  *a1 = xmmword_100172990;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_10004363C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000033A8(&qword_1001D5798, &qword_1001736C8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  ProgressView<>.init<>()();
  v9 = *(v3 + 16);
  v9(v6, v8, v2);
  *a1 = 0x1000000000000010;
  *(a1 + 8) = 0x800000010016C220;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v10 = sub_1000033A8(&qword_1001D57A0, &qword_1001736D0);
  v9((a1 + *(v10 + 64)), v6, v2);
  sub_100020D5C(0x1000000000000010, 0x800000010016C220, 0);
  v11 = *(v3 + 8);

  v11(v8, v2);
  v11(v6, v2);
  sub_100020D44(0x1000000000000010, 0x800000010016C220, 0);
}

uint64_t sub_100043814()
{
  v0 = type metadata accessor for CameraControllerConfiguration(0);
  v1 = v0 - 8;
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000033A8(&qword_1001D8020, &qword_1001728D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_1000033A8(&qword_1001D54C0, &qword_1001732E8);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v16 - v11;
  v13 = type metadata accessor for PhotosPickerItem();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  type metadata accessor for CameraControllerConfigurationForm(0);
  sub_1000138BC(v12, v10, &qword_1001D54C0, &qword_1001732E8);
  sub_1000033A8(&qword_1001D55E0, &qword_100173488);
  State.wrappedValue.setter();
  sub_10001370C(v12, &qword_1001D54C0, &qword_1001732E8);
  v14 = type metadata accessor for URL();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  sub_1000033A8(&qword_1001D5568, &qword_100173390);
  Binding.wrappedValue.getter();
  sub_10004E3A0(v6, &v3[*(v1 + 64)]);
  return Binding.wrappedValue.setter();
}

uint64_t sub_100043A78(uint64_t a1)
{
  v92 = a1;
  v1 = sub_1000033A8(&qword_1001D8020, &qword_1001728D0);
  __chkstk_darwin(v1 - 8);
  v88 = &v74 - v2;
  v83 = type metadata accessor for CameraControllerConfigurationForm.StillSelectionState(0);
  v3 = __chkstk_darwin(v83);
  v86 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v87 = (&v74 - v5);
  v6 = type metadata accessor for CameraControllerConfigurationForm(0);
  v84 = *(v6 - 8);
  __chkstk_darwin(v6);
  v85 = v7;
  v89 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for CameraControllerConfigurationForm.ReplayState(0);
  v8 = __chkstk_darwin(v90);
  v78 = (&v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __chkstk_darwin(v8);
  v77 = &v74 - v11;
  v12 = __chkstk_darwin(v10);
  v81 = &v74 - v13;
  __chkstk_darwin(v12);
  v82 = (&v74 - v14);
  v15 = sub_1000033A8(&qword_1001D41B0, &qword_100170B60);
  __chkstk_darwin(v15 - 8);
  v93 = &v74 - v16;
  v17 = type metadata accessor for CameraControllerConfiguration(0);
  v18 = __chkstk_darwin(v17);
  v80 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v74 - v21;
  __chkstk_darwin(v20);
  v24 = &v74 - v23;
  v25 = sub_1000033A8(&qword_1001D54C0, &qword_1001732E8);
  __chkstk_darwin(v25 - 8);
  v27 = &v74 - v26;
  v28 = type metadata accessor for PhotosPickerItem();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v28);
  v79 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v91 = &v74 - v32;
  sub_1000138BC(v92, v27, &qword_1001D54C0, &qword_1001732E8);
  v92 = v29;
  v33 = v28;
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_10001370C(v27, &qword_1001D54C0, &qword_1001732E8);
    sub_1000033A8(&qword_1001D5568, &qword_100173390);
    Binding.wrappedValue.getter();
    v34 = v22[v17[8]];
    sub_10004A93C(v22, type metadata accessor for CameraControllerConfiguration);
    sub_1000033A8(&qword_1001D55E8, &qword_100173490);
    if (v34 > 1)
    {
      v57 = v78;
      State.wrappedValue.getter();
      if (swift_getEnumCaseMultiPayload())
      {
        sub_10004A93C(v57, type metadata accessor for CameraControllerConfigurationForm.ReplayState);
      }

      else
      {
        sub_1000033A8(&qword_1001D57C8, &qword_1001736F8);
        sub_1000033A8(&qword_1001D57D0, &qword_100173700);
        Task.cancel()();
      }

      v72 = v87;
      swift_storeEnumTagMultiPayload();
      sub_10004EB44(v72, v86, type metadata accessor for CameraControllerConfigurationForm.StillSelectionState);
      sub_1000033A8(&qword_1001D55F0, &qword_100173498);
      State.wrappedValue.setter();
      sub_10004A93C(v72, type metadata accessor for CameraControllerConfigurationForm.StillSelectionState);
      v73 = type metadata accessor for URL();
      v69 = v88;
      (*(*(v73 - 8) + 56))(v88, 1, 1, v73);
      v70 = v80;
      Binding.wrappedValue.getter();
      v71 = v17[14];
    }

    else
    {
      v35 = v77;
      State.wrappedValue.getter();
      if (swift_getEnumCaseMultiPayload())
      {
        sub_10004A93C(v35, type metadata accessor for CameraControllerConfigurationForm.ReplayState);
      }

      else
      {
        sub_1000033A8(&qword_1001D57C8, &qword_1001736F8);
        sub_1000033A8(&qword_1001D57D0, &qword_100173700);
        Task.cancel()();
      }

      v67 = v82;
      swift_storeEnumTagMultiPayload();
      sub_10004EB44(v67, v81, type metadata accessor for CameraControllerConfigurationForm.ReplayState);
      State.wrappedValue.setter();
      sub_10004A93C(v67, type metadata accessor for CameraControllerConfigurationForm.ReplayState);
      v68 = type metadata accessor for URL();
      v69 = v88;
      (*(*(v68 - 8) + 56))(v88, 1, 1, v68);
      v70 = v80;
      Binding.wrappedValue.getter();
      v71 = v17[17];
    }

    sub_10004E3A0(v69, &v70[v71]);
    return Binding.wrappedValue.setter();
  }

  else
  {
    v88 = v6;
    v37 = v91;
    v36 = v92;
    v76 = *(v92 + 32);
    v76(v91, v27, v33);
    sub_1000033A8(&qword_1001D5568, &qword_100173390);
    Binding.wrappedValue.getter();
    v38 = v24[v17[8]];
    sub_10004A93C(v24, type metadata accessor for CameraControllerConfiguration);
    v39 = type metadata accessor for TaskPriority();
    v40 = *(v39 - 8);
    v41 = *(v40 + 56);
    v80 = v39;
    v77 = (v40 + 56);
    v78 = v41;
    (v41)(v93, 1, 1);
    v43 = v36 + 16;
    v42 = *(v36 + 16);
    v44 = v79;
    v42(v79, v37, v33);
    type metadata accessor for MainActor();
    v45 = static MainActor.shared.getter();
    v46 = (*(v43 + 64) + 32) & ~*(v43 + 64);
    if (v38 > 1)
    {
      v58 = swift_allocObject();
      *(v58 + 16) = v45;
      *(v58 + 24) = &protocol witness table for MainActor;
      v75 = v33;
      v76((v58 + v46), v44, v33);
      v59 = v93;
      v60 = sub_100044D64(0, 0, v93, &unk_100173710, v58, &qword_1001D57E0, &qword_100173748);
      v61 = v87;
      *v87 = v60;
      swift_storeEnumTagMultiPayload();
      sub_10004EB44(v61, v86, type metadata accessor for CameraControllerConfigurationForm.StillSelectionState);

      sub_1000033A8(&qword_1001D55F0, &qword_100173498);
      v62 = v94;
      State.wrappedValue.setter();
      sub_10004A93C(v61, type metadata accessor for CameraControllerConfigurationForm.StillSelectionState);
      v78(v59, 1, 1, v80);
      v63 = v89;
      sub_10004EB44(v62, v89, type metadata accessor for CameraControllerConfigurationForm);

      v64 = static MainActor.shared.getter();
      v65 = (*(v84 + 80) + 40) & ~*(v84 + 80);
      v66 = swift_allocObject();
      v66[2] = v64;
      v66[3] = &protocol witness table for MainActor;
      v66[4] = v60;
      sub_10004A8D4(v63, v66 + v65, type metadata accessor for CameraControllerConfigurationForm);
      sub_1000154EC(0, 0, v59, &unk_100173720, v66);

      return (*(v92 + 8))(v91, v75);
    }

    else
    {
      v47 = swift_allocObject();
      *(v47 + 16) = v45;
      *(v47 + 24) = &protocol witness table for MainActor;
      v76((v47 + v46), v44, v33);
      v48 = v93;
      v49 = sub_100044D64(0, 0, v93, &unk_100173730, v47, &qword_1001D57C8, &qword_1001736F8);
      v50 = v82;
      *v82 = v49;
      swift_storeEnumTagMultiPayload();
      sub_10004EB44(v50, v81, type metadata accessor for CameraControllerConfigurationForm.ReplayState);

      sub_1000033A8(&qword_1001D55E8, &qword_100173490);
      v51 = v94;
      State.wrappedValue.setter();
      sub_10004A93C(v50, type metadata accessor for CameraControllerConfigurationForm.ReplayState);
      v78(v48, 1, 1, v80);
      v52 = v89;
      sub_10004EB44(v51, v89, type metadata accessor for CameraControllerConfigurationForm);

      v53 = static MainActor.shared.getter();
      v54 = (*(v84 + 80) + 40) & ~*(v84 + 80);
      v55 = swift_allocObject();
      v55[2] = v53;
      v55[3] = &protocol witness table for MainActor;
      v55[4] = v49;
      sub_10004A8D4(v52, v55 + v54, type metadata accessor for CameraControllerConfigurationForm);
      sub_1000154EC(0, 0, v48, &unk_100173740, v55);

      return (*(v92 + 8))(v91, v33);
    }
  }
}

uint64_t sub_100044784(uint64_t a1)
{
  v1[2] = type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = type metadata accessor for StillFrame(0);
  v4 = swift_task_alloc();
  v1[4] = v4;
  v5 = sub_10003E86C(&qword_1001D57E8, type metadata accessor for StillFrame, &unk_100174C40);
  *v4 = v1;
  v4[1] = sub_100044894;

  return PhotosPickerItem.loadTransferable<A>(type:)(a1, v3, v3, v5);
}

uint64_t sub_100044894()
{
  *(*v1 + 40) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100044A54;
  }

  else
  {
    v4 = sub_1000449F0;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1000449F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100044A54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100044AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000033A8(&qword_1001D41B0, &qword_100170B60);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1000138BC(a3, v22 - v9, &qword_1001D41B0, &qword_100170B60);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10001370C(v10, &qword_1001D41B0, &qword_100170B60);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_10001370C(a3, &qword_1001D41B0, &qword_100170B60);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10001370C(a3, &qword_1001D41B0, &qword_100170B60);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100044D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v26[0] = a4;
  v12 = sub_1000033A8(&qword_1001D41B0, &qword_100170B60);
  __chkstk_darwin(v12 - 8);
  v14 = v26 - v13;
  sub_1000138BC(a3, v26 - v13, &qword_1001D41B0, &qword_100170B60);
  v15 = type metadata accessor for TaskPriority();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 48))(v14, 1, v15);

  if (v17 == 1)
  {
    sub_10001370C(v14, &qword_1001D41B0, &qword_100170B60);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v16 + 8))(v14, v15);
  }

  v18 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = String.utf8CString.getter() + 32;

      sub_1000033A8(a6, a7);
      v23 = (v21 | v19);
      if (v21 | v19)
      {
        v27[0] = 0;
        v27[1] = 0;
        v23 = v27;
        v27[2] = v19;
        v27[3] = v21;
      }

      v26[1] = 7;
      v26[2] = v23;
      v26[3] = v22;
      v24 = swift_task_create();

      sub_10001370C(a3, &qword_1001D41B0, &qword_100170B60);

      return v24;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10001370C(a3, &qword_1001D41B0, &qword_100170B60);
  sub_1000033A8(a6, a7);
  if (v21 | v19)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v19;
    v27[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_100045014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a5;
  v5[3] = type metadata accessor for CameraControllerConfiguration(0);
  v5[4] = swift_task_alloc();
  sub_1000033A8(&qword_1001D8020, &qword_1001728D0);
  v5[5] = swift_task_alloc();
  v5[6] = type metadata accessor for CameraControllerConfigurationForm.StillSelectionState(0);
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v7 = sub_1000033A8(&qword_1001D57E0, &qword_100173748);
  v8 = swift_task_alloc();
  v5[9] = v8;
  v9 = type metadata accessor for StillFrame(0);
  v5[10] = v9;
  v5[11] = *(v9 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = type metadata accessor for MainActor();
  v5[14] = static MainActor.shared.getter();
  v10 = swift_task_alloc();
  v5[15] = v10;
  v11 = sub_1000033A8(&qword_1001D57D0, &qword_100173700);
  *v10 = v5;
  v10[1] = sub_100045240;

  return Task.value.getter(v8, a4, v7, v11, &protocol self-conformance witness table for Error);
}

uint64_t sub_100045240()
{

  if (v0)
  {

    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v2;
    v4 = sub_1000456F0;
  }

  else
  {
    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v5;
    v4 = sub_1000453C4;
  }

  return _swift_task_switch(v4, v1, v3);
}

uint64_t sub_1000453C4()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[8];
    v5 = v0[7];
    sub_10001370C(v0[9], &qword_1001D57E0, &qword_100173748);
    *v4 = 0xD000000000000012;
    v4[1] = 0x800000010016C280;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for CameraControllerConfigurationForm(0);
    sub_10004EB44(v4, v5, type metadata accessor for CameraControllerConfigurationForm.StillSelectionState);
    sub_1000033A8(&qword_1001D55F0, &qword_100173498);
    State.wrappedValue.setter();
    v6 = type metadata accessor for CameraControllerConfigurationForm.StillSelectionState;
  }

  else
  {
    v4 = v0[12];
    v7 = v0[8];
    v8 = v0[7];
    v9 = v0[4];
    v10 = v0[5];
    v11 = v0[3];
    sub_10004A8D4(v0[9], v4, type metadata accessor for StillFrame);
    sub_10004EB44(v4, v7, type metadata accessor for StillFrame);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for CameraControllerConfigurationForm(0);
    sub_10004EB44(v7, v8, type metadata accessor for CameraControllerConfigurationForm.StillSelectionState);
    sub_1000033A8(&qword_1001D55F0, &qword_100173498);
    State.wrappedValue.setter();
    sub_10004A93C(v7, type metadata accessor for CameraControllerConfigurationForm.StillSelectionState);
    v12 = type metadata accessor for URL();
    v13 = *(v12 - 8);
    (*(v13 + 16))(v10, v4, v12);
    (*(v13 + 56))(v10, 0, 1, v12);
    sub_1000033A8(&qword_1001D5568, &qword_100173390);
    Binding.wrappedValue.getter();
    sub_10004E3A0(v10, v9 + *(v11 + 56));
    Binding.wrappedValue.setter();
    v6 = type metadata accessor for StillFrame;
  }

  sub_10004A93C(v4, v6);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000456F0()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];

  (*(v2 + 56))(v3, 1, 1, v1);
  v4 = v0[8];
  v5 = v0[7];
  sub_10001370C(v0[9], &qword_1001D57E0, &qword_100173748);
  *v4 = 0xD000000000000012;
  v4[1] = 0x800000010016C280;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for CameraControllerConfigurationForm(0);
  sub_10004EB44(v4, v5, type metadata accessor for CameraControllerConfigurationForm.StillSelectionState);
  sub_1000033A8(&qword_1001D55F0, &qword_100173498);
  State.wrappedValue.setter();
  sub_10004A93C(v4, type metadata accessor for CameraControllerConfigurationForm.StillSelectionState);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10004587C(uint64_t a1)
{
  v1[2] = type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = type metadata accessor for ReplayVideo(0);
  v4 = swift_task_alloc();
  v1[4] = v4;
  v5 = sub_10003E86C(&qword_1001D57D8, type metadata accessor for ReplayVideo, &unk_100174C78);
  *v4 = v1;
  v4[1] = sub_10004598C;

  return PhotosPickerItem.loadTransferable<A>(type:)(a1, v3, v3, v5);
}

uint64_t sub_10004598C()
{
  *(*v1 + 40) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_10005229C;
  }

  else
  {
    v4 = sub_1000522A4;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100045AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a5;
  v5[3] = type metadata accessor for CameraControllerConfiguration(0);
  v5[4] = swift_task_alloc();
  sub_1000033A8(&qword_1001D8020, &qword_1001728D0);
  v5[5] = swift_task_alloc();
  v5[6] = type metadata accessor for CameraControllerConfigurationForm.ReplayState(0);
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v7 = sub_1000033A8(&qword_1001D57C8, &qword_1001736F8);
  v8 = swift_task_alloc();
  v5[9] = v8;
  v9 = type metadata accessor for ReplayVideo(0);
  v5[10] = v9;
  v5[11] = *(v9 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = type metadata accessor for MainActor();
  v5[14] = static MainActor.shared.getter();
  v10 = swift_task_alloc();
  v5[15] = v10;
  v11 = sub_1000033A8(&qword_1001D57D0, &qword_100173700);
  *v10 = v5;
  v10[1] = sub_100045D14;

  return Task.value.getter(v8, a4, v7, v11, &protocol self-conformance witness table for Error);
}

uint64_t sub_100045D14()
{

  if (v0)
  {

    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v2;
    v4 = sub_1000461C4;
  }

  else
  {
    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v5;
    v4 = sub_100045E98;
  }

  return _swift_task_switch(v4, v1, v3);
}

uint64_t sub_100045E98()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[8];
    v5 = v0[7];
    sub_10001370C(v0[9], &qword_1001D57C8, &qword_1001736F8);
    *v4 = 0xD000000000000012;
    v4[1] = 0x800000010016C260;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for CameraControllerConfigurationForm(0);
    sub_10004EB44(v4, v5, type metadata accessor for CameraControllerConfigurationForm.ReplayState);
    sub_1000033A8(&qword_1001D55E8, &qword_100173490);
    State.wrappedValue.setter();
    v6 = type metadata accessor for CameraControllerConfigurationForm.ReplayState;
  }

  else
  {
    v4 = v0[12];
    v7 = v0[8];
    v8 = v0[7];
    v9 = v0[4];
    v10 = v0[5];
    v11 = v0[3];
    sub_10004A8D4(v0[9], v4, type metadata accessor for ReplayVideo);
    sub_10004EB44(v4, v7, type metadata accessor for ReplayVideo);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for CameraControllerConfigurationForm(0);
    sub_10004EB44(v7, v8, type metadata accessor for CameraControllerConfigurationForm.ReplayState);
    sub_1000033A8(&qword_1001D55E8, &qword_100173490);
    State.wrappedValue.setter();
    sub_10004A93C(v7, type metadata accessor for CameraControllerConfigurationForm.ReplayState);
    v12 = type metadata accessor for URL();
    v13 = *(v12 - 8);
    (*(v13 + 16))(v10, v4, v12);
    (*(v13 + 56))(v10, 0, 1, v12);
    sub_1000033A8(&qword_1001D5568, &qword_100173390);
    Binding.wrappedValue.getter();
    sub_10004E3A0(v10, v9 + *(v11 + 68));
    Binding.wrappedValue.setter();
    v6 = type metadata accessor for ReplayVideo;
  }

  sub_10004A93C(v4, v6);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000461C4()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];

  (*(v2 + 56))(v3, 1, 1, v1);
  v4 = v0[8];
  v5 = v0[7];
  sub_10001370C(v0[9], &qword_1001D57C8, &qword_1001736F8);
  *v4 = 0xD000000000000012;
  v4[1] = 0x800000010016C260;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for CameraControllerConfigurationForm(0);
  sub_10004EB44(v4, v5, type metadata accessor for CameraControllerConfigurationForm.ReplayState);
  sub_1000033A8(&qword_1001D55E8, &qword_100173490);
  State.wrappedValue.setter();
  sub_10004A93C(v4, type metadata accessor for CameraControllerConfigurationForm.ReplayState);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100046350@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v251 = a1;
  v276 = type metadata accessor for CameraControllerConfigurationForm(0);
  v242 = *(v276 - 8);
  __chkstk_darwin(v276);
  v243 = v3;
  v244 = v214 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = sub_1000033A8(&qword_1001D54C0, &qword_1001732E8);
  __chkstk_darwin(v247);
  v249 = v214 - v4;
  v248 = sub_1000033A8(&qword_1001D54C8, &qword_1001732F0);
  v246 = *(v248 - 8);
  __chkstk_darwin(v248);
  v245 = v214 - v5;
  v241 = sub_1000033A8(&qword_1001D54D0, &qword_1001732F8);
  __chkstk_darwin(v241);
  v240 = v214 - v6;
  v294 = sub_1000033A8(&qword_1001D54D8, &qword_100173300);
  v250 = *(v294 - 8);
  v7 = __chkstk_darwin(v294);
  v293 = v214 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v290 = v214 - v9;
  v239 = sub_1000033A8(&qword_1001D54E0, &qword_100173308);
  __chkstk_darwin(v239);
  v238 = v214 - v10;
  v292 = sub_1000033A8(&qword_1001D54E8, &qword_100173310);
  v299 = *(v292 - 8);
  v11 = __chkstk_darwin(v292);
  v291 = v214 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v288 = v214 - v13;
  v236 = sub_1000033A8(&qword_1001D54F0, &qword_100173318);
  __chkstk_darwin(v236);
  v237 = (v214 - v14);
  v15 = sub_1000033A8(&qword_1001D54F8, &qword_100173320);
  v16 = __chkstk_darwin(v15 - 8);
  v289 = v214 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v287 = v214 - v18;
  v234 = sub_1000033A8(&qword_1001D5500, &qword_100173328);
  __chkstk_darwin(v234);
  v235 = v214 - v19;
  v221 = sub_1000033A8(&qword_1001D5508, &qword_100173330);
  __chkstk_darwin(v221);
  v219 = v214 - v20;
  v263 = sub_1000033A8(&qword_1001D5510, &qword_100173338);
  v267 = *(v263 - 8);
  v21 = __chkstk_darwin(v263);
  v218 = v214 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v262 = v214 - v23;
  v261 = sub_1000033A8(&qword_1001D5518, &qword_100173340);
  v266 = *(v261 - 8);
  v24 = __chkstk_darwin(v261);
  v229 = v214 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v259 = v214 - v26;
  v260 = sub_1000033A8(&qword_1001D5520, &qword_100173348);
  v265 = *(v260 - 8);
  v27 = __chkstk_darwin(v260);
  v228 = v214 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v258 = v214 - v29;
  v220 = sub_1000033A8(&qword_1001D5528, &qword_100173350);
  v30 = __chkstk_darwin(v220);
  v227 = v214 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v269 = (v214 - v32);
  v257 = sub_1000033A8(&qword_1001D5530, &qword_100173358);
  v264 = *(v257 - 8);
  v33 = __chkstk_darwin(v257);
  v226 = v214 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v256 = v214 - v35;
  v233 = type metadata accessor for ConfigToggle();
  v230 = *(v233 - 8);
  v36 = __chkstk_darwin(v233);
  v217 = v214 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v216 = v214 - v39;
  v40 = __chkstk_darwin(v38);
  v215 = v214 - v41;
  v42 = __chkstk_darwin(v40);
  v222 = v214 - v43;
  v44 = __chkstk_darwin(v42);
  v223 = v214 - v45;
  v46 = __chkstk_darwin(v44);
  v224 = v214 - v47;
  v48 = __chkstk_darwin(v46);
  v225 = v214 - v49;
  v50 = __chkstk_darwin(v48);
  v253 = v214 - v51;
  v52 = __chkstk_darwin(v50);
  v252 = v214 - v53;
  v54 = __chkstk_darwin(v52);
  v254 = v214 - v55;
  v56 = __chkstk_darwin(v54);
  v255 = v214 - v57;
  __chkstk_darwin(v56);
  v270 = v214 - v58;
  v268 = type metadata accessor for CameraControllerConfiguration(0);
  __chkstk_darwin(v268);
  v295 = (v214 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = sub_1000033A8(&qword_1001D5538, &qword_100173360);
  v61 = __chkstk_darwin(v60 - 8);
  v286 = v214 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v61);
  v281 = v214 - v63;
  v285 = sub_1000033A8(&qword_1001D5540, &qword_100173368);
  v298 = *(v285 - 8);
  v64 = __chkstk_darwin(v285);
  v284 = v214 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v64);
  v280 = v214 - v66;
  v283 = sub_1000033A8(&qword_1001D5548, &qword_100173370);
  v297 = *(v283 - 8);
  v67 = __chkstk_darwin(v283);
  v282 = v214 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v67);
  v277 = v214 - v69;
  v231 = sub_1000033A8(&qword_1001D5550, &qword_100173378);
  __chkstk_darwin(v231);
  v71 = v214 - v70;
  v279 = sub_1000033A8(&qword_1001D5558, &qword_100173380);
  v296 = *(v279 - 8);
  v72 = __chkstk_darwin(v279);
  v278 = v214 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v72);
  v75 = v214 - v74;
  v76 = sub_1000033A8(&qword_1001D5560, &qword_100173388);
  __chkstk_darwin(v76);
  v78 = v214 - v77;
  v79 = sub_1000033A8(&qword_1001D5568, &qword_100173390);
  __chkstk_darwin(v79);
  v81 = v214 - v80;
  v274 = sub_1000033A8(&qword_1001D5570, &qword_100173398);
  v273 = *(v274 - 8);
  v82 = __chkstk_darwin(v274);
  v272 = v214 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v82);
  v85 = v214 - v84;
  Binding.projectedValue.getter();
  swift_getKeyPath();
  Binding.subscript.getter();

  sub_10001370C(v81, &qword_1001D5568, &qword_100173390);
  sub_10003E86C(&qword_1001D5578, &type metadata accessor for BundleSelector.Configuration, &protocol conformance descriptor for BundleSelector.Configuration);
  v271 = v85;
  Binding<A>.configurationForm.getter();
  sub_10001370C(v78, &qword_1001D5560, &qword_100173388);
  Binding.projectedValue.getter();
  swift_getKeyPath();
  Binding.subscript.getter();

  sub_10001370C(v81, &qword_1001D5568, &qword_100173390);
  sub_10003E86C(&qword_1001D5580, &type metadata accessor for CVCoordinator.Configuration, &protocol conformance descriptor for CVCoordinator.Configuration);
  v275 = v75;
  v86 = v268;
  Binding<A>.configurationForm.getter();
  sub_10001370C(v71, &qword_1001D5550, &qword_100173378);
  Binding.projectedValue.getter();
  swift_getKeyPath();
  Binding.subscript.getter();

  v87 = sub_10001370C(v81, &qword_1001D5568, &qword_100173390);
  v312 = v300;
  v313 = v301;
  v314 = v302;
  v88 = v1 + *(v276 + 20);
  v89 = v88 + v86[12];
  v90 = *v89;
  LOBYTE(v89) = *(v89 + 8);
  v310 = v90;
  v311 = v89;
  v93 = sub_10004969C(v87, v91, v92);
  v96 = sub_1000496F0(v93, v94, v95);
  sub_100049744(v96, v97, v98);
  sub_100013608(&qword_1001D55A0, &qword_1001D5480, &qword_100172F90, &protocol conformance descriptor for [A]);
  ConfigPicker<>.init(_:selection:initialValue:)();
  Binding.projectedValue.getter();
  swift_getKeyPath();
  Binding.subscript.getter();

  v99 = sub_10001370C(v81, &qword_1001D5568, &qword_100173390);
  v312 = v300;
  LOBYTE(v313) = v301;
  LOBYTE(v310) = *(v88 + v86[8]);
  v102 = sub_100049798(v99, v100, v101);
  v105 = sub_1000497EC(v102, v103, v104);
  sub_100049840(v105, v106, v107);
  sub_100013608(&qword_1001D55C0, &qword_1001D5498, &qword_100173128, &protocol conformance descriptor for [A]);
  v108 = v86;
  ConfigPicker<>.init(_:selection:initialValue:)();
  v109 = v295;
  Binding.wrappedValue.getter();
  LODWORD(v71) = *(v109 + v86[8]);
  v110 = v109;
  sub_10004A93C(v109, type metadata accessor for CameraControllerConfiguration);
  v232 = v79;
  v231 = v88;
  if (v71)
  {
    v111 = v269;
    v112 = v235;
    v113 = v108;
    v114 = v281;
    Binding.wrappedValue.getter();
    LODWORD(v113) = *(v110 + v113[8]);
    sub_10004A93C(v110, type metadata accessor for CameraControllerConfiguration);
    if (v113 == 2)
    {
      sub_1000415D8(v111);
      sub_1000138BC(v111, v112, &qword_1001D5528, &qword_100173350);
      swift_storeEnumTagMultiPayload();
      sub_100013608(&qword_1001D5610, &qword_1001D5508, &qword_100173330, &protocol conformance descriptor for TupleView<A>);
      sub_100049AD4();
      _ConditionalContent<>.init(storage:)();
      sub_10001370C(v111, &qword_1001D5528, &qword_100173350);
      v115 = sub_1000033A8(&qword_1001D55C8, &qword_100173430);
      (*(*(v115 - 8) + 56))(v114, 0, 1, v115);
    }

    else
    {
      v185 = sub_1000033A8(&qword_1001D55C8, &qword_100173430);
      (*(*(v185 - 8) + 56))(v114, 1, 1, v185);
    }

    v156 = v233;
    v176 = v270;
    if (FigCaptureGetExperimentsEnabled())
    {
      goto LABEL_8;
    }
  }

  else
  {
    Binding.projectedValue.getter();
    swift_getKeyPath();
    Binding.subscript.getter();

    sub_10001370C(v81, &qword_1001D5568, &qword_100173390);
    ConfigToggle.init(_:isOn:initialValue:onChange:)();
    v295 = v1;
    Binding.projectedValue.getter();
    swift_getKeyPath();
    Binding.subscript.getter();

    v116 = sub_10001370C(v81, &qword_1001D5568, &qword_100173390);
    v312 = v300;
    LOBYTE(v313) = v301;
    LOBYTE(v310) = *(v88 + v108[11]);
    v119 = sub_10004A008(v116, v117, v118);
    v122 = sub_10004A05C(v119, v120, v121);
    sub_10004A0B0(v122, v123, v124);
    sub_100013608(&qword_1001D56C8, &qword_1001D5448, &qword_100172C98, &protocol conformance descriptor for [A]);
    ConfigPicker<>.init(_:selection:initialValue:)();
    sub_10003EE48(v269);
    Binding.projectedValue.getter();
    swift_getKeyPath();
    Binding.subscript.getter();

    sub_10001370C(v81, &qword_1001D5568, &qword_100173390);
    ConfigToggle.init(_:isOn:initialValue:onChange:)();
    Binding.projectedValue.getter();
    swift_getKeyPath();
    Binding.subscript.getter();

    v125 = sub_10001370C(v81, &qword_1001D5568, &qword_100173390);
    v312 = v300;
    LOBYTE(v313) = v301;
    LOBYTE(v310) = *(v88 + v108[5]);
    v128 = sub_10004A104(v125, v126, v127);
    v131 = sub_10004A158(v128, v129, v130);
    sub_10004A1AC(v131, v132, v133);
    sub_100013608(&qword_1001D56E8, &qword_1001D5418, &qword_100172A58, &protocol conformance descriptor for [A]);
    ConfigPicker<>.init(_:selection:initialValue:)();
    Binding.projectedValue.getter();
    swift_getKeyPath();
    Binding.subscript.getter();

    sub_10001370C(v81, &qword_1001D5568, &qword_100173390);
    ConfigToggle.init(_:isOn:initialValue:onChange:)();
    Binding.projectedValue.getter();
    swift_getKeyPath();
    Binding.subscript.getter();

    v134 = sub_10001370C(v81, &qword_1001D5568, &qword_100173390);
    v312 = v300;
    LOBYTE(v313) = v301;
    LOBYTE(v310) = *(v88 + v108[10]);
    v137 = sub_10004A200(v134, v135, v136);
    v140 = sub_10004A254(v137, v138, v139);
    sub_10004A2A8(v140, v141, v142);
    sub_100013608(&qword_1001D5708, &qword_1001D5430, &qword_100172B78, &protocol conformance descriptor for [A]);
    ConfigPicker<>.init(_:selection:initialValue:)();
    Binding.projectedValue.getter();
    swift_getKeyPath();
    Binding.subscript.getter();

    v143 = sub_10001370C(v81, &qword_1001D5568, &qword_100173390);
    v312 = v300;
    LOBYTE(v313) = v301;
    LOBYTE(v310) = *(v88 + v108[16]);
    v146 = sub_10004A2FC(v143, v144, v145);
    v149 = sub_10004A350(v146, v147, v148);
    sub_10004A3A4(v149, v150, v151);
    sub_100013608(&qword_1001D5728, &qword_1001D5460, &qword_100172DB8, &protocol conformance descriptor for [A]);
    v214[1] = 0xD000000000000010;
    ConfigPicker<>.init(_:selection:initialValue:)();
    Binding.projectedValue.getter();
    swift_getKeyPath();
    Binding.subscript.getter();

    sub_10001370C(v81, &qword_1001D5568, &qword_100173390);
    ConfigToggle.init(_:isOn:initialValue:onChange:)();
    Binding.projectedValue.getter();
    swift_getKeyPath();
    Binding.subscript.getter();

    sub_10001370C(v81, &qword_1001D5568, &qword_100173390);
    ConfigToggle.init(_:isOn:initialValue:onChange:)();
    Binding.projectedValue.getter();
    swift_getKeyPath();
    Binding.subscript.getter();

    sub_10001370C(v81, &qword_1001D5568, &qword_100173390);
    v152 = v225;
    ConfigToggle.init(_:isOn:initialValue:onChange:)();
    v153 = v230;
    v154 = *(v230 + 16);
    v155 = v224;
    v156 = v233;
    v154(v224, v270, v233);
    *&v300 = v155;
    v157 = v226;
    (*(v264 + 16))(v226, v256, v257);
    *(&v300 + 1) = v157;
    v158 = v227;
    sub_1000138BC(v269, v227, &qword_1001D5528, &qword_100173350);
    v301 = v158;
    v159 = v223;
    v154(v223, v255, v156);
    v302 = v159;
    v160 = v228;
    (*(v265 + 16))(v228, v258, v260);
    v303 = v160;
    v161 = v222;
    v154(v222, v254, v156);
    v304 = v161;
    v162 = v229;
    (*(v266 + 16))(v229, v259, v261);
    v305 = v162;
    v163 = v218;
    (*(v267 + 16))(v218, v262, v263);
    v306 = v163;
    v164 = v215;
    v154(v215, v252, v156);
    v307 = v164;
    v165 = v216;
    v154(v216, v253, v156);
    v308 = v165;
    v166 = v217;
    v154(v217, v152, v156);
    v309 = v166;
    v167 = v219;
    sub_100037FC0(&v300, v219);
    v168 = *(v153 + 8);
    v168(v166, v156);
    v168(v165, v156);
    v168(v164, v156);
    v169 = *(v267 + 8);
    v267 += 8;
    v217 = v169;
    (v169)(v163, v263);
    v170 = *(v266 + 8);
    v266 += 8;
    v218 = v170;
    (v170)(v229, v261);
    v168(v222, v156);
    v171 = *(v265 + 8);
    v265 += 8;
    v229 = v171;
    (v171)(v228, v260);
    v168(v223, v156);
    sub_10001370C(v227, &qword_1001D5528, &qword_100173350);
    v172 = *(v264 + 8);
    v264 += 8;
    v228 = v172;
    (v172)(v226, v257);
    v168(v224, v156);
    sub_1000138BC(v167, v235, &qword_1001D5508, &qword_100173330);
    swift_storeEnumTagMultiPayload();
    sub_100013608(&qword_1001D5610, &qword_1001D5508, &qword_100173330, &protocol conformance descriptor for TupleView<A>);
    sub_100049AD4();
    v173 = v281;
    _ConditionalContent<>.init(storage:)();
    sub_10001370C(v167, &qword_1001D5508, &qword_100173330);
    v168(v225, v156);
    v168(v253, v156);
    v168(v252, v156);
    (v217)(v262, v263);
    (v218)(v259, v261);
    v168(v254, v156);
    (v229)(v258, v260);
    v168(v255, v156);
    sub_10001370C(v269, &qword_1001D5528, &qword_100173350);
    (v228)(v256, v257);
    v174 = v270;
    v168(v270, v156);
    v2 = v295;
    v175 = sub_1000033A8(&qword_1001D55C8, &qword_100173430);
    (*(*(v175 - 8) + 56))(v173, 0, 1, v175);
    v176 = v174;
    if (FigCaptureGetExperimentsEnabled())
    {
LABEL_8:
      Binding.projectedValue.getter();
      swift_getKeyPath();
      Binding.subscript.getter();

      sub_10001370C(v81, &qword_1001D5568, &qword_100173390);
      ConfigToggle.init(_:isOn:initialValue:onChange:)();
      v186 = v230;
      (*(v230 + 16))(v237, v176, v156);
      swift_storeEnumTagMultiPayload();
      sub_10003E86C(&qword_1001D4628, &type metadata accessor for ConfigToggle, &protocol conformance descriptor for ConfigToggle);
      _ConditionalContent<>.init(storage:)();
      (*(v186 + 8))(v176, v156);
      goto LABEL_9;
    }
  }

  *&v300 = static Color.red.getter();
  v177 = Text.foregroundStyle<A>(_:)();
  v179 = v178;
  v181 = v180;
  v183 = v182;

  v184 = v237;
  *v237 = v177;
  v184[1] = v179;
  *(v184 + 16) = v181 & 1;
  v184[3] = v183;
  swift_storeEnumTagMultiPayload();
  sub_10003E86C(&qword_1001D4628, &type metadata accessor for ConfigToggle, &protocol conformance descriptor for ConfigToggle);
  _ConditionalContent<>.init(storage:)();
LABEL_9:
  Binding.projectedValue.getter();
  swift_getKeyPath();
  v187 = v238;
  Binding.subscript.getter();

  sub_10001370C(v81, &qword_1001D5568, &qword_100173390);
  sub_10003E86C(&qword_1001D55D0, &type metadata accessor for TrackManager.Configuration, &protocol conformance descriptor for TrackManager.Configuration);
  Binding<A>.configurationForm.getter();
  sub_10001370C(v187, &qword_1001D54E0, &qword_100173308);
  Binding.projectedValue.getter();
  swift_getKeyPath();
  v188 = v240;
  Binding.subscript.getter();

  sub_10001370C(v81, &qword_1001D5568, &qword_100173390);
  v189 = sub_10003E86C(&qword_1001D55D8, &type metadata accessor for BundleManager.Configuration, &protocol conformance descriptor for BundleManager.Configuration);
  v190 = v245;
  Binding<A>.configurationForm.getter();
  sub_10001370C(v188, &qword_1001D54D0, &qword_1001732F8);
  sub_1000033A8(&qword_1001D55E0, &qword_100173488);
  v191 = v249;
  State.wrappedValue.getter();
  v192 = v244;
  sub_10004EB44(v2, v244, type metadata accessor for CameraControllerConfigurationForm);
  v193 = (*(v242 + 80) + 16) & ~*(v242 + 80);
  v194 = swift_allocObject();
  sub_10004A8D4(v192, v194 + v193, type metadata accessor for CameraControllerConfigurationForm);
  *&v300 = type metadata accessor for BundleManager.Configuration();
  *(&v300 + 1) = v189;
  swift_getOpaqueTypeConformance2();
  sub_100049A20();
  v195 = v248;
  View.onChange<A>(of:initial:_:)();

  sub_10001370C(v191, &qword_1001D54C0, &qword_1001732E8);
  (*(v246 + 8))(v190, v195);
  v267 = *(v273 + 16);
  v196 = v272;
  v197 = v274;
  (v267)(v272, v271, v274);
  v295 = *(v296 + 16);
  v295(v278, v275, v279);
  v276 = *(v297 + 16);
  (v276)(v282, v277, v283);
  v270 = *(v298 + 16);
  (v270)(v284, v280, v285);
  sub_1000138BC(v281, v286, &qword_1001D5538, &qword_100173360);
  sub_1000138BC(v287, v289, &qword_1001D54F8, &qword_100173320);
  v269 = *(v299 + 16);
  (v269)(v291, v288, v292);
  v198 = v250;
  v268 = *(v250 + 16);
  (v268)(v293, v290, v294);
  v199 = v251;
  (v267)(v251, v196, v197);
  v200 = sub_1000033A8(&qword_1001D5608, &qword_1001734A0);
  v295((v199 + v200[12]), v278, v279);
  v201 = v283;
  (v276)(v199 + v200[16], v282, v283);
  v202 = v285;
  (v270)(v199 + v200[20], v284, v285);
  sub_1000138BC(v286, v199 + v200[24], &qword_1001D5538, &qword_100173360);
  sub_1000138BC(v289, v199 + v200[28], &qword_1001D54F8, &qword_100173320);
  v203 = v292;
  (v269)(v199 + v200[32], v291, v292);
  v204 = v294;
  (v268)(v199 + v200[36], v293, v294);
  v205 = *(v198 + 8);
  v205(v290, v204);
  v206 = *(v299 + 8);
  v299 += 8;
  v206(v288, v203);
  sub_10001370C(v287, &qword_1001D54F8, &qword_100173320);
  sub_10001370C(v281, &qword_1001D5538, &qword_100173360);
  v207 = *(v298 + 8);
  v298 += 8;
  v207(v280, v202);
  v208 = *(v297 + 8);
  v297 += 8;
  v208(v277, v201);
  v209 = *(v296 + 8);
  v296 += 8;
  v210 = v279;
  v209(v275, v279);
  v211 = *(v273 + 8);
  v212 = v274;
  v211(v271, v274);
  v205(v293, v294);
  v206(v291, v292);
  sub_10001370C(v289, &qword_1001D54F8, &qword_100173320);
  sub_10001370C(v286, &qword_1001D5538, &qword_100173360);
  v207(v284, v285);
  v208(v282, v283);
  v209(v278, v210);
  return (v211)(v272, v212);
}

uint64_t sub_1000490A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(char *))
{
  v8 = a5(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v17 - v13;
  v15 = *(v9 + 16);
  v15(&v17 - v13, a1, v8);
  v15(v12, v14, v8);
  a6(v12);
  return (*(v9 + 8))(v14, v8);
}

uint64_t sub_1000491E4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LocationsHandler();
  static LocationsHandler.shared.getter();
  dispatch thunk of LocationsHandler.promptForLocationAccessIfApplicable()();

  return sub_100043A78(a2);
}

uint64_t sub_10004923C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = type metadata accessor for CameraControllerConfigurationForm.StillSelectionState(0);
  v6 = __chkstk_darwin(v32);
  v31 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v30 - v8;
  v10 = sub_1000033A8(&qword_1001D54C0, &qword_1001732E8);
  v11 = __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v30 - v14;
  v16 = type metadata accessor for CameraControllerConfigurationForm.ReplayState(0);
  v17 = __chkstk_darwin(v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v30 - v20;
  sub_10004F518(a1, a3);
  v22 = type metadata accessor for CameraControllerConfigurationForm(0);
  sub_10004A8D4(a2, a3 + *(v22 + 20), type metadata accessor for CameraControllerConfiguration);
  swift_storeEnumTagMultiPayload();
  sub_10004EB44(v21, v19, type metadata accessor for CameraControllerConfigurationForm.ReplayState);
  State.init(wrappedValue:)();
  sub_10004A93C(v21, type metadata accessor for CameraControllerConfigurationForm.ReplayState);
  v23 = type metadata accessor for PhotosPickerItem();
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  sub_1000138BC(v15, v13, &qword_1001D54C0, &qword_1001732E8);
  State.init(wrappedValue:)();
  sub_10001370C(v15, &qword_1001D54C0, &qword_1001732E8);
  v24 = MKBGetDeviceLockState();
  if (v24)
  {
    v25 = v24 == 3;
  }

  else
  {
    v25 = 1;
  }

  v26 = v25;
  v27 = a3 + *(v22 + 32);
  v33 = v26;
  State.init(wrappedValue:)();
  v28 = v35;
  *v27 = v34;
  *(v27 + 8) = v28;
  swift_storeEnumTagMultiPayload();
  sub_10004EB44(v9, v31, type metadata accessor for CameraControllerConfigurationForm.StillSelectionState);
  State.init(wrappedValue:)();
  return sub_10004A93C(v9, type metadata accessor for CameraControllerConfigurationForm.StillSelectionState);
}

unint64_t sub_10004969C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5588;
  if (!qword_1001D5588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5588);
  }

  return result;
}

unint64_t sub_1000496F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5590;
  if (!qword_1001D5590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5590);
  }

  return result;
}

unint64_t sub_100049744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5598;
  if (!qword_1001D5598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5598);
  }

  return result;
}

unint64_t sub_100049798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D55A8;
  if (!qword_1001D55A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D55A8);
  }

  return result;
}

unint64_t sub_1000497EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D55B0;
  if (!qword_1001D55B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D55B0);
  }

  return result;
}

unint64_t sub_100049840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D55B8;
  if (!qword_1001D55B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D55B8);
  }

  return result;
}

uint64_t sub_1000499A0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CameraControllerConfigurationForm(0);

  return sub_1000491E4(a1, a2);
}

unint64_t sub_100049A20()
{
  result = qword_1001D55F8;
  if (!qword_1001D55F8)
  {
    sub_10001276C(&qword_1001D54C0, &qword_1001732E8);
    sub_10003E86C(&qword_1001D5600, &type metadata accessor for PhotosPickerItem, &protocol conformance descriptor for PhotosPickerItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D55F8);
  }

  return result;
}

unint64_t sub_100049AD4()
{
  result = qword_1001D5618;
  if (!qword_1001D5618)
  {
    sub_10001276C(&qword_1001D5528, &qword_100173350);
    sub_10001276C(&qword_1001D5620, &qword_1001734C8);
    sub_100013608(&qword_1001D5628, &qword_1001D5620, &qword_1001734C8, &protocol conformance descriptor for Button<A>);
    swift_getOpaqueTypeConformance2();
    sub_100049BE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5618);
  }

  return result;
}

unint64_t sub_100049BE4()
{
  result = qword_1001D5630;
  if (!qword_1001D5630)
  {
    sub_10001276C(&qword_1001D5638, &qword_1001734D0);
    sub_100049C70();
    sub_100049ED8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5630);
  }

  return result;
}

unint64_t sub_100049C70()
{
  result = qword_1001D5640;
  if (!qword_1001D5640)
  {
    sub_10001276C(&qword_1001D5648, &qword_1001734D8);
    sub_100049D28();
    sub_100013608(&qword_1001D5690, &qword_1001D5698, &qword_100173500, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5640);
  }

  return result;
}

unint64_t sub_100049D28()
{
  result = qword_1001D5650;
  if (!qword_1001D5650)
  {
    sub_10001276C(&qword_1001D5658, &unk_1001734E0);
    sub_100013608(&qword_1001D5660, &qword_1001D5668, &qword_10017CFB0, &protocol conformance descriptor for Button<A>);
    sub_100049DE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5650);
  }

  return result;
}

unint64_t sub_100049DE0()
{
  result = qword_1001D5670;
  if (!qword_1001D5670)
  {
    sub_10001276C(&qword_1001D5678, &qword_1001734F0);
    sub_10001276C(&qword_1001D5680, &qword_1001734F8);
    sub_100013608(&qword_1001D5688, &qword_1001D5680, &qword_1001734F8, &protocol conformance descriptor for PhotosPicker<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5670);
  }

  return result;
}

unint64_t sub_100049ED8()
{
  result = qword_1001D56A0;
  if (!qword_1001D56A0)
  {
    sub_10001276C(&qword_1001D56A8, &qword_100173508);
    sub_10001276C(&qword_1001D5620, &qword_1001734C8);
    sub_100013608(&qword_1001D5628, &qword_1001D5620, &qword_1001734C8, &protocol conformance descriptor for Button<A>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D56A0);
  }

  return result;
}

unint64_t sub_10004A008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D56B0;
  if (!qword_1001D56B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D56B0);
  }

  return result;
}

unint64_t sub_10004A05C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D56B8;
  if (!qword_1001D56B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D56B8);
  }

  return result;
}

unint64_t sub_10004A0B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D56C0;
  if (!qword_1001D56C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D56C0);
  }

  return result;
}

unint64_t sub_10004A104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D56D0;
  if (!qword_1001D56D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D56D0);
  }

  return result;
}

unint64_t sub_10004A158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D56D8;
  if (!qword_1001D56D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D56D8);
  }

  return result;
}

unint64_t sub_10004A1AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D56E0;
  if (!qword_1001D56E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D56E0);
  }

  return result;
}

unint64_t sub_10004A200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D56F0;
  if (!qword_1001D56F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D56F0);
  }

  return result;
}

unint64_t sub_10004A254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D56F8;
  if (!qword_1001D56F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D56F8);
  }

  return result;
}

unint64_t sub_10004A2A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5700;
  if (!qword_1001D5700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5700);
  }

  return result;
}

unint64_t sub_10004A2FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5710;
  if (!qword_1001D5710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5710);
  }

  return result;
}

unint64_t sub_10004A350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5718;
  if (!qword_1001D5718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5718);
  }

  return result;
}

unint64_t sub_10004A3A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5720;
  if (!qword_1001D5720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5720);
  }

  return result;
}

uint64_t sub_10004A418()
{
  v24 = type metadata accessor for CameraControllerConfigurationForm(0);
  v23 = *(*(v24 - 1) + 80);
  v1 = v0 + ((v23 + 16) & ~v23);

  v2 = v1 + *(sub_1000033A8(&qword_1001D5568, &qword_100173390) + 32);
  v3 = type metadata accessor for SaliencyStreamConfiguration();
  v4 = *(*(v3 - 8) + 8);
  v4(v2, v3);
  v5 = type metadata accessor for CameraControllerConfiguration(0);
  v6 = v5[14];
  v7 = type metadata accessor for URL();
  v25 = *(v7 - 8);
  v8 = *(v25 + 48);
  if (!v8(v2 + v6, 1, v7))
  {
    (*(v25 + 8))(v2 + v6, v7);
  }

  v9 = v5[17];
  if (!v8(v2 + v9, 1, v7))
  {
    (*(v25 + 8))(v2 + v9, v7);
  }

  v10 = v5[21];
  if (!v8(v2 + v10, 1, v7))
  {
    (*(v25 + 8))(v2 + v10, v7);
  }

  v11 = v1 + v24[5];
  v4(v11, v3);
  v12 = v5[14];
  if (!v8(v11 + v12, 1, v7))
  {
    (*(v25 + 8))(v11 + v12, v7);
  }

  v13 = v5[17];
  if (!v8(v11 + v13, 1, v7))
  {
    (*(v25 + 8))(v11 + v13, v7);
  }

  v14 = v5[21];
  if (!v8(v11 + v14, 1, v7))
  {
    (*(v25 + 8))(v11 + v14, v7);
  }

  v15 = v1 + v24[6];
  type metadata accessor for CameraControllerConfigurationForm.ReplayState(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:

      break;
    case 1:
      (*(v25 + 8))(v15, v7);
      break;
    case 0:

      break;
  }

  sub_1000033A8(&qword_1001D55E8, &qword_100173490);

  v17 = v1 + v24[7];
  v18 = type metadata accessor for PhotosPickerItem();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v17, 1, v18))
  {
    (*(v19 + 8))(v17, v18);
  }

  sub_1000033A8(&qword_1001D55E0, &qword_100173488);

  v20 = v1 + v24[9];
  type metadata accessor for CameraControllerConfigurationForm.StillSelectionState(0);
  v21 = swift_getEnumCaseMultiPayload();
  switch(v21)
  {
    case 2:

      break;
    case 1:
      (*(v25 + 8))(v20, v7);
      break;
    case 0:

      break;
  }

  sub_1000033A8(&qword_1001D55F0, &qword_100173498);

  return swift_deallocObject();
}

uint64_t sub_10004A8D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004A93C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10004A9BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReplayVideo(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CameraControllerConfigurationForm.ReplayState(0);
  v8 = __chkstk_darwin(v7);
  v10 = (&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v8);
  v13 = &v28 - v12;
  __chkstk_darwin(v11);
  v15 = &v28 - v14;
  v16 = sub_1000033A8(&qword_1001D6000, &qword_100174D28);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v28 - v18;
  v20 = (&v28 + *(v17 + 56) - v18);
  sub_10004EB44(a1, &v28 - v18, type metadata accessor for CameraControllerConfigurationForm.ReplayState);
  sub_10004EB44(a2, v20, type metadata accessor for CameraControllerConfigurationForm.ReplayState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_10004EB44(v19, v13, type metadata accessor for CameraControllerConfigurationForm.ReplayState);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_10004A93C(v13, type metadata accessor for ReplayVideo);
        goto LABEL_19;
      }

      sub_10004A8D4(v20, v6, type metadata accessor for ReplayVideo);
      v26 = static URL.== infix(_:_:)();
      sub_10004A93C(v6, type metadata accessor for ReplayVideo);
      sub_10004A93C(v13, type metadata accessor for ReplayVideo);
    }

    else
    {
      sub_10004EB44(v19, v15, type metadata accessor for CameraControllerConfigurationForm.ReplayState);
      if (swift_getEnumCaseMultiPayload())
      {

LABEL_19:
        sub_10001370C(v19, &qword_1001D6000, &qword_100174D28);
        goto LABEL_20;
      }

      sub_1000033A8(&qword_1001D57C8, &qword_1001736F8);
      sub_1000033A8(&qword_1001D57D0, &qword_100173700);
      v26 = static Task.== infix(_:_:)();
    }

    sub_10004A93C(v19, type metadata accessor for CameraControllerConfigurationForm.ReplayState);
    return v26 & 1;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_19;
    }

    goto LABEL_24;
  }

  sub_10004EB44(v19, v10, type metadata accessor for CameraControllerConfigurationForm.ReplayState);
  v23 = *v10;
  v22 = v10[1];
  if (swift_getEnumCaseMultiPayload() != 2)
  {

    goto LABEL_19;
  }

  if (v23 == *v20 && v22 == v20[1])
  {

    goto LABEL_24;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v25)
  {
LABEL_24:
    sub_10004A93C(v19, type metadata accessor for CameraControllerConfigurationForm.ReplayState);
    v26 = 1;
    return v26 & 1;
  }

  sub_10004A93C(v19, type metadata accessor for CameraControllerConfigurationForm.ReplayState);
LABEL_20:
  v26 = 0;
  return v26 & 1;
}

uint64_t sub_10004ADF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StillFrame(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CameraControllerConfigurationForm.StillSelectionState(0);
  v8 = __chkstk_darwin(v7);
  v10 = (&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v8);
  v13 = &v28 - v12;
  __chkstk_darwin(v11);
  v15 = &v28 - v14;
  v16 = sub_1000033A8(&qword_1001D5FF8, &qword_100174D20);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v28 - v18;
  v20 = (&v28 + *(v17 + 56) - v18);
  sub_10004EB44(a1, &v28 - v18, type metadata accessor for CameraControllerConfigurationForm.StillSelectionState);
  sub_10004EB44(a2, v20, type metadata accessor for CameraControllerConfigurationForm.StillSelectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_10004EB44(v19, v13, type metadata accessor for CameraControllerConfigurationForm.StillSelectionState);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_10004A93C(v13, type metadata accessor for StillFrame);
        goto LABEL_19;
      }

      sub_10004A8D4(v20, v6, type metadata accessor for StillFrame);
      v26 = static URL.== infix(_:_:)();
      sub_10004A93C(v6, type metadata accessor for StillFrame);
      sub_10004A93C(v13, type metadata accessor for StillFrame);
    }

    else
    {
      sub_10004EB44(v19, v15, type metadata accessor for CameraControllerConfigurationForm.StillSelectionState);
      if (swift_getEnumCaseMultiPayload())
      {

LABEL_19:
        sub_10001370C(v19, &qword_1001D5FF8, &qword_100174D20);
        goto LABEL_20;
      }

      sub_1000033A8(&qword_1001D57E0, &qword_100173748);
      sub_1000033A8(&qword_1001D57D0, &qword_100173700);
      v26 = static Task.== infix(_:_:)();
    }

    sub_10004A93C(v19, type metadata accessor for CameraControllerConfigurationForm.StillSelectionState);
    return v26 & 1;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_19;
    }

    goto LABEL_24;
  }

  sub_10004EB44(v19, v10, type metadata accessor for CameraControllerConfigurationForm.StillSelectionState);
  v23 = *v10;
  v22 = v10[1];
  if (swift_getEnumCaseMultiPayload() != 2)
  {

    goto LABEL_19;
  }

  if (v23 == *v20 && v22 == v20[1])
  {

    goto LABEL_24;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v25)
  {
LABEL_24:
    sub_10004A93C(v19, type metadata accessor for CameraControllerConfigurationForm.StillSelectionState);
    v26 = 1;
    return v26 & 1;
  }

  sub_10004A93C(v19, type metadata accessor for CameraControllerConfigurationForm.StillSelectionState);
LABEL_20:
  v26 = 0;
  return v26 & 1;
}

BOOL sub_10004B234(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v56 = *(v4 - 8);
  __chkstk_darwin(v4);
  v55 = &v48[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1000033A8(&qword_1001D8020, &qword_1001728D0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v48[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v7);
  v12 = &v48[-v11];
  __chkstk_darwin(v10);
  v14 = &v48[-v13];
  v15 = sub_1000033A8(&qword_1001D5958, &qword_1001737E8);
  v16 = __chkstk_darwin(v15);
  v18 = &v48[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v16);
  v21 = &v48[-v20];
  __chkstk_darwin(v19);
  v23 = &v48[-v22];
  if ((static SaliencyStreamConfiguration.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v24 = type metadata accessor for CameraControllerConfiguration(0);
  if (*(a1 + v24[5]) != *(a2 + v24[5]) || *(a1 + v24[6]) != *(a2 + v24[6]) || *(a1 + v24[7]) != *(a2 + v24[7]) || *(a1 + v24[8]) != *(a2 + v24[8]) || *(a1 + v24[9]) != *(a2 + v24[9]) || *(a1 + v24[10]) != *(a2 + v24[10]) || *(a1 + v24[11]) != *(a2 + v24[11]))
  {
    return 0;
  }

  v25 = v24[12];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 8);
  if (v27)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  if (*(a1 + v24[13]) != *(a2 + v24[13]))
  {
    return 0;
  }

  v51 = v24;
  v30 = *(v15 + 48);
  v53 = v24[14];
  v54 = v30;
  sub_1000138BC(a1 + v53, v23, &qword_1001D8020, &qword_1001728D0);
  sub_1000138BC(a2 + v53, &v54[v23], &qword_1001D8020, &qword_1001728D0);
  v52 = *(v56 + 48);
  v53 = v56 + 48;
  if (v52(v23, 1, v4) == 1)
  {
    if (v52(&v54[v23], 1, v4) == 1)
    {
      sub_10001370C(v23, &qword_1001D8020, &qword_1001728D0);
      goto LABEL_25;
    }

LABEL_21:
    v31 = v23;
LABEL_22:
    sub_10001370C(v31, &qword_1001D5958, &qword_1001737E8);
    return 0;
  }

  sub_1000138BC(v23, v14, &qword_1001D8020, &qword_1001728D0);
  if (v52(&v54[v23], 1, v4) == 1)
  {
    (*(v56 + 8))(v14, v4);
    goto LABEL_21;
  }

  (*(v56 + 32))(v55, &v54[v23], v4);
  sub_10003E86C(&qword_1001D5960, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v49 = dispatch thunk of static Equatable.== infix(_:_:)();
  v33 = *(v56 + 8);
  v50 = v56 + 8;
  v54 = v33;
  (v33)(v55, v4);
  (v54)(v14, v4);
  sub_10001370C(v23, &qword_1001D8020, &qword_1001728D0);
  if ((v49 & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  v34 = v51[15];
  v35 = *(a1 + v34);
  v36 = *(a2 + v34);
  if (v35 == 4)
  {
    if (v36 != 4)
    {
      return 0;
    }
  }

  else if (v35 != v36)
  {
    return 0;
  }

  if (*(a1 + v51[16]) != *(a2 + v51[16]))
  {
    return 0;
  }

  v37 = v51[17];
  v38 = *(v15 + 48);
  sub_1000138BC(a1 + v37, v21, &qword_1001D8020, &qword_1001728D0);
  v54 = v38;
  sub_1000138BC(a2 + v37, &v38[v21], &qword_1001D8020, &qword_1001728D0);
  v39 = v52;
  if (v52(v21, 1, v4) == 1)
  {
    if (v39(&v54[v21], 1, v4) == 1)
    {
      sub_10001370C(v21, &qword_1001D8020, &qword_1001728D0);
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  sub_1000138BC(v21, v12, &qword_1001D8020, &qword_1001728D0);
  if (v39(&v54[v21], 1, v4) == 1)
  {
    (*(v56 + 8))(v12, v4);
LABEL_35:
    v31 = v21;
    goto LABEL_22;
  }

  v40 = v56;
  (*(v56 + 32))(v55, &v54[v21], v4);
  sub_10003E86C(&qword_1001D5960, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  LODWORD(v54) = dispatch thunk of static Equatable.== infix(_:_:)();
  v41 = *(v40 + 8);
  v41(v55, v4);
  v41(v12, v4);
  sub_10001370C(v21, &qword_1001D8020, &qword_1001728D0);
  if ((v54 & 1) == 0)
  {
    return 0;
  }

LABEL_37:
  if (*(a1 + v51[18]) != *(a2 + v51[18]) || *(a1 + v51[19]) != *(a2 + v51[19]) || *(a1 + v51[20]) != *(a2 + v51[20]))
  {
    return 0;
  }

  v42 = v51[21];
  v43 = *(v15 + 48);
  sub_1000138BC(a1 + v42, v18, &qword_1001D8020, &qword_1001728D0);
  sub_1000138BC(a2 + v42, &v18[v43], &qword_1001D8020, &qword_1001728D0);
  if (v52(v18, 1, v4) != 1)
  {
    sub_1000138BC(v18, v9, &qword_1001D8020, &qword_1001728D0);
    if (v52(&v18[v43], 1, v4) == 1)
    {
      (*(v56 + 8))(v9, v4);
      goto LABEL_45;
    }

    v45 = v55;
    v44 = v56;
    (*(v56 + 32))(v55, &v18[v43], v4);
    sub_10003E86C(&qword_1001D5960, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v46 = dispatch thunk of static Equatable.== infix(_:_:)();
    v47 = *(v44 + 8);
    v47(v45, v4);
    v47(v9, v4);
    sub_10001370C(v18, &qword_1001D8020, &qword_1001728D0);
    return (v46 & 1) != 0;
  }

  if (v52(&v18[v43], 1, v4) != 1)
  {
LABEL_45:
    v31 = v18;
    goto LABEL_22;
  }

  sub_10001370C(v18, &qword_1001D8020, &qword_1001728D0);
  return 1;
}

uint64_t sub_10004BB58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74694B7261 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7275747061437661 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F74616C756D6973 && a2 == 0xE900000000000072)
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

uint64_t sub_10004BC78(void *a1)
{
  v34 = sub_1000033A8(&qword_1001D57F0, &qword_100173750);
  v37 = *(v34 - 8);
  __chkstk_darwin(v34);
  v38 = &v31 - v2;
  v3 = sub_1000033A8(&qword_1001D57F8, &qword_100173758);
  v35 = *(v3 - 8);
  v36 = v3;
  __chkstk_darwin(v3);
  v5 = &v31 - v4;
  v6 = sub_1000033A8(&qword_1001D5800, &qword_100173760);
  v33 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v31 - v7;
  v9 = sub_1000033A8(&qword_1001D5808, &qword_100173768);
  v39 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v31 - v10;
  v12 = sub_100006AAC(a1, a1[3]);
  sub_10004F588(v12, v13, v14);
  v15 = v40;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    goto LABEL_14;
  }

  v32 = v6;
  v16 = v38;
  v40 = a1;
  v17 = v11;
  v18 = KeyedDecodingContainer.allKeys.getter();
  v21 = *(v18 + 16);
  if (!v21 || ((v22 = *(v18 + 32), v21 == 1) ? (v23 = v22 == 3) : (v23 = 1), v23))
  {
    v24 = type metadata accessor for DecodingError();
    swift_allocError();
    v26 = v25;
    sub_1000033A8(&qword_1001D5818, &qword_100173770);
    *v26 = &type metadata for CameraControllerConfiguration.SourceType;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v24 - 8) + 104))(v26, enum case for DecodingError.typeMismatch(_:), v24);
    swift_willThrow();
    (*(v39 + 8))(v17, v9);
    swift_unknownObjectRelease();
    a1 = v40;
LABEL_14:
    sub_100006B44(a1);
    return 0;
  }

  v41 = *(v18 + 32);
  if (!v22)
  {
    v42 = 0;
    sub_10004F684(v18, v19, v20);
    v27 = v11;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v33 + 8))(v8, v32);
    v28 = v39;
    goto LABEL_15;
  }

  if (v22 == 1)
  {
    v43 = 1;
    sub_10004F630(v18, v19, v20);
    v27 = v11;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v28 = v39;
    (*(v35 + 8))(v5, v36);
LABEL_15:
    (*(v28 + 8))(v27, v9);
    goto LABEL_16;
  }

  v44 = 2;
  sub_10004F5DC(v18, v19, v20);
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v29 = v39;
  (*(v37 + 8))(v16, v34);
  (*(v29 + 8))(v17, v9);
LABEL_16:
  swift_unknownObjectRelease();
  sub_100006B44(v40);
  return v41;
}

uint64_t sub_10004C208(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701079415 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656469576C617564 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C70697274 && a2 == 0xE600000000000000)
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

uint64_t sub_10004C31C(void *a1)
{
  v34 = sub_1000033A8(&qword_1001D5A58, &qword_100173890);
  v37 = *(v34 - 8);
  __chkstk_darwin(v34);
  v38 = &v31 - v2;
  v3 = sub_1000033A8(&qword_1001D5A60, &qword_100173898);
  v35 = *(v3 - 8);
  v36 = v3;
  __chkstk_darwin(v3);
  v5 = &v31 - v4;
  v6 = sub_1000033A8(&qword_1001D5A68, &qword_1001738A0);
  v33 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v31 - v7;
  v9 = sub_1000033A8(&qword_1001D5A70, &qword_1001738A8);
  v39 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v31 - v10;
  v12 = sub_100006AAC(a1, a1[3]);
  sub_100050008(v12, v13, v14);
  v15 = v40;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    goto LABEL_14;
  }

  v32 = v6;
  v16 = v38;
  v40 = a1;
  v17 = v11;
  v18 = KeyedDecodingContainer.allKeys.getter();
  v21 = *(v18 + 16);
  if (!v21 || ((v22 = *(v18 + 32), v21 == 1) ? (v23 = v22 == 3) : (v23 = 1), v23))
  {
    v24 = type metadata accessor for DecodingError();
    swift_allocError();
    v26 = v25;
    sub_1000033A8(&qword_1001D5818, &qword_100173770);
    *v26 = &type metadata for CameraControllerConfiguration.Camera;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v24 - 8) + 104))(v26, enum case for DecodingError.typeMismatch(_:), v24);
    swift_willThrow();
    (*(v39 + 8))(v17, v9);
    swift_unknownObjectRelease();
    a1 = v40;
LABEL_14:
    sub_100006B44(a1);
    return 0;
  }

  v41 = *(v18 + 32);
  if (!v22)
  {
    v42 = 0;
    sub_100050104(v18, v19, v20);
    v27 = v11;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v33 + 8))(v8, v32);
    v28 = v39;
    goto LABEL_15;
  }

  if (v22 == 1)
  {
    v43 = 1;
    sub_1000500B0(v18, v19, v20);
    v27 = v11;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v28 = v39;
    (*(v35 + 8))(v5, v36);
LABEL_15:
    (*(v28 + 8))(v27, v9);
    goto LABEL_16;
  }

  v44 = 2;
  sub_10005005C(v18, v19, v20);
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v29 = v39;
  (*(v37 + 8))(v16, v34);
  (*(v29 + 8))(v17, v9);
LABEL_16:
  swift_unknownObjectRelease();
  sub_100006B44(v40);
  return v41;
}

uint64_t sub_10004C8AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1869903201 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F73655268676968 && a2 == 0xEE006E6F6974756CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4B72756F66 && a2 == 0xE500000000000000)
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

uint64_t sub_10004C9C8(void *a1)
{
  v34 = sub_1000033A8(&qword_1001D59B0, &qword_100173820);
  v37 = *(v34 - 8);
  __chkstk_darwin(v34);
  v38 = &v31 - v2;
  v3 = sub_1000033A8(&qword_1001D59B8, &qword_100173828);
  v35 = *(v3 - 8);
  v36 = v3;
  __chkstk_darwin(v3);
  v5 = &v31 - v4;
  v6 = sub_1000033A8(&qword_1001D59C0, &qword_100173830);
  v33 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v31 - v7;
  v9 = sub_1000033A8(&qword_1001D59C8, &qword_100173838);
  v39 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v31 - v10;
  v12 = sub_100006AAC(a1, a1[3]);
  sub_10004FDBC(v12, v13, v14);
  v15 = v40;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    goto LABEL_14;
  }

  v32 = v6;
  v16 = v38;
  v40 = a1;
  v17 = v11;
  v18 = KeyedDecodingContainer.allKeys.getter();
  v21 = *(v18 + 16);
  if (!v21 || ((v22 = *(v18 + 32), v21 == 1) ? (v23 = v22 == 3) : (v23 = 1), v23))
  {
    v24 = type metadata accessor for DecodingError();
    swift_allocError();
    v26 = v25;
    sub_1000033A8(&qword_1001D5818, &qword_100173770);
    *v26 = &type metadata for CameraControllerConfiguration.RecordingQuality;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v24 - 8) + 104))(v26, enum case for DecodingError.typeMismatch(_:), v24);
    swift_willThrow();
    (*(v39 + 8))(v17, v9);
    swift_unknownObjectRelease();
    a1 = v40;
LABEL_14:
    sub_100006B44(a1);
    return 0;
  }

  v41 = *(v18 + 32);
  if (!v22)
  {
    v42 = 0;
    sub_10004FEB8(v18, v19, v20);
    v27 = v11;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v33 + 8))(v8, v32);
    v28 = v39;
    goto LABEL_15;
  }

  if (v22 == 1)
  {
    v43 = 1;
    sub_10004FE64(v18, v19, v20);
    v27 = v11;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v28 = v39;
    (*(v35 + 8))(v5, v36);
LABEL_15:
    (*(v28 + 8))(v27, v9);
    goto LABEL_16;
  }

  v44 = 2;
  sub_10004FE10(v18, v19, v20);
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v29 = v39;
  (*(v37 + 8))(v16, v34);
  (*(v29 + 8))(v17, v9);
LABEL_16:
  swift_unknownObjectRelease();
  sub_100006B44(v40);
  return v41;
}

uint64_t sub_10004CF58(void *a1)
{
  v29 = sub_1000033A8(&qword_1001D5A10, &qword_100173860);
  v27 = *(v29 - 8);
  __chkstk_darwin(v29);
  v3 = v25 - v2;
  v4 = sub_1000033A8(&qword_1001D5A18, &qword_100173868);
  v28 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v25 - v5;
  v7 = sub_1000033A8(&qword_1001D5A20, &qword_100173870);
  v30 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v25 - v8;
  v10 = sub_100006AAC(a1, a1[3]);
  sub_10004FF0C(v10, v11, v12);
  v13 = v31;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    return sub_100006B44(a1);
  }

  v26 = v4;
  v31 = a1;
  v15 = v28;
  v14 = v29;
  v16 = v9;
  v17 = KeyedDecodingContainer.allKeys.getter();
  if (*(v17 + 16) != 1)
  {
    v21 = type metadata accessor for DecodingError();
    swift_allocError();
    v23 = v22;
    sub_1000033A8(&qword_1001D5818, &qword_100173770);
    *v23 = &type metadata for CameraControllerConfiguration.PhotoQuality;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v21 - 8) + 104))(v23, enum case for DecodingError.typeMismatch(_:), v21);
    swift_willThrow();
    (*(v30 + 8))(v16, v7);
    swift_unknownObjectRelease();
    a1 = v31;
    return sub_100006B44(a1);
  }

  v25[1] = v17;
  v32 = *(v17 + 32);
  if (v32)
  {
    v34 = 1;
    sub_10004FF60(v17, v18, v19);
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v20 = v30;
    (*(v27 + 8))(v3, v14);
  }

  else
  {
    v33 = 0;
    sub_10004FFB4(v17, v18, v19);
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v20 = v30;
    (*(v15 + 8))(v6, v26);
  }

  (*(v20 + 8))(v9, v7);
  swift_unknownObjectRelease();
  sub_100006B44(v31);
  return v32;
}

uint64_t sub_10004D394(void *a1)
{
  v29 = sub_1000033A8(&qword_1001D5968, &qword_1001737F0);
  v27 = *(v29 - 8);
  __chkstk_darwin(v29);
  v3 = v25 - v2;
  v4 = sub_1000033A8(&qword_1001D5970, &qword_1001737F8);
  v28 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v25 - v5;
  v7 = sub_1000033A8(&qword_1001D5978, &qword_100173800);
  v30 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v25 - v8;
  v10 = sub_100006AAC(a1, a1[3]);
  sub_10004FCC0(v10, v11, v12);
  v13 = v31;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    return sub_100006B44(a1);
  }

  v26 = v4;
  v31 = a1;
  v15 = v28;
  v14 = v29;
  v16 = v9;
  v17 = KeyedDecodingContainer.allKeys.getter();
  if (*(v17 + 16) != 1)
  {
    v21 = type metadata accessor for DecodingError();
    swift_allocError();
    v23 = v22;
    sub_1000033A8(&qword_1001D5818, &qword_100173770);
    *v23 = &type metadata for CameraControllerConfiguration.FrameRate;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v21 - 8) + 104))(v23, enum case for DecodingError.typeMismatch(_:), v21);
    swift_willThrow();
    (*(v30 + 8))(v16, v7);
    swift_unknownObjectRelease();
    a1 = v31;
    return sub_100006B44(a1);
  }

  v25[1] = v17;
  v32 = *(v17 + 32);
  if (v32)
  {
    v34 = 1;
    sub_10004FD14(v17, v18, v19);
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v20 = v30;
    (*(v27 + 8))(v3, v14);
  }

  else
  {
    v33 = 0;
    sub_10004FD68(v17, v18, v19);
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v20 = v30;
    (*(v15 + 8))(v6, v26);
  }

  (*(v20 + 8))(v9, v7);
  swift_unknownObjectRelease();
  sub_100006B44(v31);
  return v32;
}

void *sub_10004D7D0(void *a1)
{
  v2 = sub_1000033A8(&qword_1001D5858, &qword_100173798);
  v3 = *(v2 - 8);
  v36 = v2;
  v37 = v3;
  __chkstk_darwin(v2);
  v5 = &v33[-v4];
  v6 = sub_1000033A8(&qword_1001D5860, &qword_1001737A0);
  v38 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v33[-v7];
  v9 = sub_1000033A8(&qword_1001D5868, &qword_1001737A8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33[-v11];
  v13 = a1[3];
  v40 = a1;
  v14 = sub_100006AAC(a1, v13);
  sub_10004F6D8(v14, v15, v16);
  v17 = v39;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v17)
  {
    v18 = v38;
    v35 = v6;
    v39 = v10;
    v19 = KeyedDecodingContainer.allKeys.getter();
    v22 = v9;
    if (*(v19 + 16) == 1)
    {
      v34 = *(v19 + 32);
      if (v34)
      {
        v42 = 1;
        sub_10004F72C(v19, v20, v21);
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v23 = v39;
        v24 = v5;
        v25 = v36;
        KeyedDecodingContainer.decode(_:forKey:)();
        v27 = v26;
        (*(v37 + 8))(v24, v25);
        (*(v23 + 8))(v12, v22);
        swift_unknownObjectRelease();
        v14 = v27;
      }

      else
      {
        v41 = 0;
        sub_10004F780(v19, v20, v21);
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v31 = v39;
        (*(v18 + 8))(v8, v35);
        (*(v31 + 8))(v12, v22);
        swift_unknownObjectRelease();
        v14 = 0;
      }
    }

    else
    {
      v28 = type metadata accessor for DecodingError();
      swift_allocError();
      v30 = v29;
      sub_1000033A8(&qword_1001D5818, &qword_100173770);
      *v30 = &type metadata for CameraControllerConfiguration.SafeAreaStrategy;
      v14 = v12;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v28 - 8) + 104))(v30, enum case for DecodingError.typeMismatch(_:), v28);
      swift_willThrow();
      (*(v39 + 8))(v12, v9);
      swift_unknownObjectRelease();
    }
  }

  sub_100006B44(v40);
  return v14;
}

uint64_t sub_10004DC68(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001BLL && 0x800000010016C320 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6172656D6163 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000010016C340 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x800000010016C360 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7954656372756F73 && a2 == 0xEA00000000006570 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x800000010016C380 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6175516F746F6870 && a2 == 0xEC0000007974696CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010016C3A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010016C3C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000016 && 0x800000010016C3E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6172466C6C697473 && a2 == 0xED00004C5255656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000010016C400 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6172466F65646976 && a2 == 0xEE0065746152656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x7065526F65646976 && a2 == 0xEE004C525579616CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000019 && 0x800000010016C420 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x4F764373746E6177 && a2 == 0xEE0079616C726576 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010016C440 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000018 && 0x800000010016C460 == a2)
  {

    return 17;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

uint64_t sub_10004E24C(uint64_t a1)
{
  v4 = *(type metadata accessor for CameraControllerConfigurationForm(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100019774;

  return sub_100040974(a1, v6, v7, v1 + v5);
}

uint64_t sub_10004E3A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D8020, &qword_1001728D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004E4DC()
{
  v24 = type metadata accessor for CameraControllerConfigurationForm(0);
  v23 = *(*(v24 - 1) + 80);
  swift_unknownObjectRelease();
  v1 = v0 + ((v23 + 32) & ~v23);

  v2 = v1 + *(sub_1000033A8(&qword_1001D5568, &qword_100173390) + 32);
  v3 = type metadata accessor for SaliencyStreamConfiguration();
  v4 = *(*(v3 - 8) + 8);
  v4(v2, v3);
  v5 = type metadata accessor for CameraControllerConfiguration(0);
  v6 = v5[14];
  v7 = type metadata accessor for URL();
  v25 = *(v7 - 8);
  v8 = *(v25 + 48);
  if (!v8(v2 + v6, 1, v7))
  {
    (*(v25 + 8))(v2 + v6, v7);
  }

  v9 = v5[17];
  if (!v8(v2 + v9, 1, v7))
  {
    (*(v25 + 8))(v2 + v9, v7);
  }

  v10 = v5[21];
  if (!v8(v2 + v10, 1, v7))
  {
    (*(v25 + 8))(v2 + v10, v7);
  }

  v11 = v1 + v24[5];
  v4(v11, v3);
  v12 = v5[14];
  if (!v8(v11 + v12, 1, v7))
  {
    (*(v25 + 8))(v11 + v12, v7);
  }

  v13 = v5[17];
  if (!v8(v11 + v13, 1, v7))
  {
    (*(v25 + 8))(v11 + v13, v7);
  }

  v14 = v5[21];
  if (!v8(v11 + v14, 1, v7))
  {
    (*(v25 + 8))(v11 + v14, v7);
  }

  v15 = v1 + v24[6];
  type metadata accessor for CameraControllerConfigurationForm.ReplayState(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:

      break;
    case 1:
      (*(v25 + 8))(v15, v7);
      break;
    case 0:

      break;
  }

  sub_1000033A8(&qword_1001D55E8, &qword_100173490);

  v17 = v1 + v24[7];
  v18 = type metadata accessor for PhotosPickerItem();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v17, 1, v18))
  {
    (*(v19 + 8))(v17, v18);
  }

  sub_1000033A8(&qword_1001D55E0, &qword_100173488);

  v20 = v1 + v24[9];
  type metadata accessor for CameraControllerConfigurationForm.StillSelectionState(0);
  v21 = swift_getEnumCaseMultiPayload();
  switch(v21)
  {
    case 2:

      break;
    case 1:
      (*(v25 + 8))(v20, v7);
      break;
    case 0:

      break;
  }

  sub_1000033A8(&qword_1001D55F0, &qword_100173498);

  return swift_deallocObject();
}

uint64_t sub_10004E9A4(uint64_t a1)
{
  v4 = *(type metadata accessor for CameraControllerConfigurationForm(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100019774;

  return sub_1000432E0(a1, v6, v7, v1 + v5);
}

uint64_t sub_10004EB44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004EBB0(uint64_t a1)
{
  type metadata accessor for PhotosPickerItem();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100019340;

  return sub_100044784(a1);
}

uint64_t sub_10004ECA4(uint64_t a1)
{
  v4 = *(type metadata accessor for CameraControllerConfigurationForm(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100019774;

  return sub_100045014(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10004ED9C()
{
  v1 = type metadata accessor for PhotosPickerItem();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10004EE60(uint64_t a1)
{
  type metadata accessor for PhotosPickerItem();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100019774;

  return sub_10004587C(a1);
}

uint64_t sub_10004EF50()
{
  v24 = type metadata accessor for CameraControllerConfigurationForm(0);
  v23 = *(*(v24 - 1) + 80);
  swift_unknownObjectRelease();

  v1 = v0 + ((v23 + 40) & ~v23);

  v2 = v1 + *(sub_1000033A8(&qword_1001D5568, &qword_100173390) + 32);
  v3 = type metadata accessor for SaliencyStreamConfiguration();
  v4 = *(*(v3 - 8) + 8);
  v4(v2, v3);
  v5 = type metadata accessor for CameraControllerConfiguration(0);
  v6 = v5[14];
  v7 = type metadata accessor for URL();
  v25 = *(v7 - 8);
  v8 = *(v25 + 48);
  if (!v8(v2 + v6, 1, v7))
  {
    (*(v25 + 8))(v2 + v6, v7);
  }

  v9 = v5[17];
  if (!v8(v2 + v9, 1, v7))
  {
    (*(v25 + 8))(v2 + v9, v7);
  }

  v10 = v5[21];
  if (!v8(v2 + v10, 1, v7))
  {
    (*(v25 + 8))(v2 + v10, v7);
  }

  v11 = v1 + v24[5];
  v4(v11, v3);
  v12 = v5[14];
  if (!v8(v11 + v12, 1, v7))
  {
    (*(v25 + 8))(v11 + v12, v7);
  }

  v13 = v5[17];
  if (!v8(v11 + v13, 1, v7))
  {
    (*(v25 + 8))(v11 + v13, v7);
  }

  v14 = v5[21];
  if (!v8(v11 + v14, 1, v7))
  {
    (*(v25 + 8))(v11 + v14, v7);
  }

  v15 = v1 + v24[6];
  type metadata accessor for CameraControllerConfigurationForm.ReplayState(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:

      break;
    case 1:
      (*(v25 + 8))(v15, v7);
      break;
    case 0:

      break;
  }

  sub_1000033A8(&qword_1001D55E8, &qword_100173490);

  v17 = v1 + v24[7];
  v18 = type metadata accessor for PhotosPickerItem();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v17, 1, v18))
  {
    (*(v19 + 8))(v17, v18);
  }

  sub_1000033A8(&qword_1001D55E0, &qword_100173488);

  v20 = v1 + v24[9];
  type metadata accessor for CameraControllerConfigurationForm.StillSelectionState(0);
  v21 = swift_getEnumCaseMultiPayload();
  switch(v21)
  {
    case 2:

      break;
    case 1:
      (*(v25 + 8))(v20, v7);
      break;
    case 0:

      break;
  }

  sub_1000033A8(&qword_1001D55F0, &qword_100173498);

  return swift_deallocObject();
}

uint64_t sub_10004F420(uint64_t a1)
{
  v4 = *(type metadata accessor for CameraControllerConfigurationForm(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100019340;

  return sub_100045AE8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10004F518(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D5568, &qword_100173390);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10004F588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5810;
  if (!qword_1001D5810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5810);
  }

  return result;
}

unint64_t sub_10004F5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5820;
  if (!qword_1001D5820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5820);
  }

  return result;
}

unint64_t sub_10004F630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5828;
  if (!qword_1001D5828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5828);
  }

  return result;
}

unint64_t sub_10004F684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5830;
  if (!qword_1001D5830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5830);
  }

  return result;
}

unint64_t sub_10004F6D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5870;
  if (!qword_1001D5870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5870);
  }

  return result;
}

unint64_t sub_10004F72C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5878;
  if (!qword_1001D5878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5878);
  }

  return result;
}

unint64_t sub_10004F780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5880;
  if (!qword_1001D5880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5880);
  }

  return result;
}

unint64_t sub_10004F7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D58B8;
  if (!qword_1001D58B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D58B8);
  }

  return result;
}

unint64_t sub_10004F828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D58C8;
  if (!qword_1001D58C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D58C8);
  }

  return result;
}

unint64_t sub_10004F87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D58D0;
  if (!qword_1001D58D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D58D0);
  }

  return result;
}

unint64_t sub_10004F8D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D58D8;
  if (!qword_1001D58D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D58D8);
  }

  return result;
}

unint64_t sub_10004F924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D58E0;
  if (!qword_1001D58E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D58E0);
  }

  return result;
}

unint64_t sub_10004F978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D58E8;
  if (!qword_1001D58E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D58E8);
  }

  return result;
}

unint64_t sub_10004F9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D58F8;
  if (!qword_1001D58F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D58F8);
  }

  return result;
}

unint64_t sub_10004FA20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5900;
  if (!qword_1001D5900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5900);
  }

  return result;
}

unint64_t sub_10004FA74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5918;
  if (!qword_1001D5918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5918);
  }

  return result;
}

unint64_t sub_10004FAC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5920;
  if (!qword_1001D5920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5920);
  }

  return result;
}

unint64_t sub_10004FB1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5928;
  if (!qword_1001D5928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5928);
  }

  return result;
}

unint64_t sub_10004FB70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5930;
  if (!qword_1001D5930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5930);
  }

  return result;
}

unint64_t sub_10004FBC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5938;
  if (!qword_1001D5938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5938);
  }

  return result;
}

unint64_t sub_10004FC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5948;
  if (!qword_1001D5948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5948);
  }

  return result;
}

unint64_t sub_10004FC6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5950;
  if (!qword_1001D5950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5950);
  }

  return result;
}

unint64_t sub_10004FCC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5980;
  if (!qword_1001D5980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5980);
  }

  return result;
}

unint64_t sub_10004FD14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5988;
  if (!qword_1001D5988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5988);
  }

  return result;
}

unint64_t sub_10004FD68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5990;
  if (!qword_1001D5990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5990);
  }

  return result;
}

unint64_t sub_10004FDBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D59D0;
  if (!qword_1001D59D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D59D0);
  }

  return result;
}

unint64_t sub_10004FE10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D59D8;
  if (!qword_1001D59D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D59D8);
  }

  return result;
}

unint64_t sub_10004FE64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D59E0;
  if (!qword_1001D59E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D59E0);
  }

  return result;
}

unint64_t sub_10004FEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D59E8;
  if (!qword_1001D59E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D59E8);
  }

  return result;
}

unint64_t sub_10004FF0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5A28;
  if (!qword_1001D5A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5A28);
  }

  return result;
}

unint64_t sub_10004FF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5A30;
  if (!qword_1001D5A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5A30);
  }

  return result;
}

unint64_t sub_10004FFB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5A38;
  if (!qword_1001D5A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5A38);
  }

  return result;
}

unint64_t sub_100050008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5A78;
  if (!qword_1001D5A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5A78);
  }

  return result;
}

unint64_t sub_10005005C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5A80;
  if (!qword_1001D5A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5A80);
  }

  return result;
}

unint64_t sub_1000500B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5A88;
  if (!qword_1001D5A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5A88);
  }

  return result;
}

unint64_t sub_100050104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5A90;
  if (!qword_1001D5A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5A90);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CameraControllerConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CameraControllerConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100050440(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000504C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100050530(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100050654(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t))
{
  sub_1000506E4(319, a4, a5, a6);
  if (v8 <= 0x3F)
  {
    a7(319);
    if (v9 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1000506E4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10001276C(a3, a4);
    sub_10001276C(&qword_1001D57D0, &qword_100173700);
    v5 = type metadata accessor for Task();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100050778(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000033A8(&qword_1001D5568, &qword_100173390);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for CameraControllerConfiguration(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_1000033A8(&qword_1001D55E8, &qword_100173490);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_1000033A8(&qword_1001D55E0, &qword_100173488);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  if (a2 == 2147483646)
  {
    v17 = *(a1 + a3[8] + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v17 - 1;
    if (v18 < 0)
    {
      v18 = -1;
    }

    return (v18 + 1);
  }

  else
  {
    v19 = sub_1000033A8(&qword_1001D55F0, &qword_100173498);
    v20 = *(*(v19 - 8) + 48);
    v21 = a1 + a3[9];

    return v20(v21, a2, v19);
  }
}

uint64_t sub_1000509D0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000033A8(&qword_1001D5568, &qword_100173390);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for CameraControllerConfiguration(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_1000033A8(&qword_1001D55E8, &qword_100173490);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  result = sub_1000033A8(&qword_1001D55E0, &qword_100173488);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[8] + 8) = a2;
  }

  else
  {
    v18 = sub_1000033A8(&qword_1001D55F0, &qword_100173498);
    v19 = *(*(v18 - 8) + 56);
    v20 = a1 + a4[9];

    return v19(v20, a2, a2, v18);
  }

  return result;
}

void sub_100050C08(uint64_t a1)
{
  sub_100050DA0(319, &qword_1001D5DA0, type metadata accessor for CameraControllerConfiguration, &type metadata accessor for Binding);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CameraControllerConfiguration(319);
    if (v2 <= 0x3F)
    {
      sub_100050DA0(319, &qword_1001D5DA8, type metadata accessor for CameraControllerConfigurationForm.ReplayState, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        sub_100050E04(319);
        if (v4 <= 0x3F)
        {
          sub_100050E68(319, &qword_1001D44A0, &type metadata for Bool, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            sub_100050DA0(319, &unk_1001D5DB8, type metadata accessor for CameraControllerConfigurationForm.StillSelectionState, &type metadata accessor for State);
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

void sub_100050DA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100050E04(uint64_t a1)
{
  if (!qword_1001D5DB0)
  {
    sub_10001276C(&qword_1001D54C0, &qword_1001732E8);
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &qword_1001D5DB0);
    }
  }
}

void sub_100050E68(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_100050F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5E08;
  if (!qword_1001D5E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5E08);
  }

  return result;
}

unint64_t sub_100050F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5E10;
  if (!qword_1001D5E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5E10);
  }

  return result;
}

unint64_t sub_100050FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5E18;
  if (!qword_1001D5E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5E18);
  }

  return result;
}

unint64_t sub_100051008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5E20;
  if (!qword_1001D5E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5E20);
  }

  return result;
}

unint64_t sub_100051060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5E28;
  if (!qword_1001D5E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5E28);
  }

  return result;
}

unint64_t sub_1000510B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5E30;
  if (!qword_1001D5E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5E30);
  }

  return result;
}

unint64_t sub_100051110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5E38;
  if (!qword_1001D5E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5E38);
  }

  return result;
}

unint64_t sub_100051168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5E40;
  if (!qword_1001D5E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5E40);
  }

  return result;
}

unint64_t sub_1000511C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5E48;
  if (!qword_1001D5E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5E48);
  }

  return result;
}

unint64_t sub_100051218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5E50;
  if (!qword_1001D5E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5E50);
  }

  return result;
}

unint64_t sub_100051270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5E58;
  if (!qword_1001D5E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5E58);
  }

  return result;
}

unint64_t sub_1000512C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5E60;
  if (!qword_1001D5E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5E60);
  }

  return result;
}

unint64_t sub_100051320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5E68;
  if (!qword_1001D5E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5E68);
  }

  return result;
}

unint64_t sub_100051378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5E70;
  if (!qword_1001D5E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5E70);
  }

  return result;
}

unint64_t sub_1000513D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5E78;
  if (!qword_1001D5E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5E78);
  }

  return result;
}

unint64_t sub_100051428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5E80;
  if (!qword_1001D5E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5E80);
  }

  return result;
}

unint64_t sub_100051480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5E88;
  if (!qword_1001D5E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5E88);
  }

  return result;
}

unint64_t sub_1000514D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5E90;
  if (!qword_1001D5E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5E90);
  }

  return result;
}

unint64_t sub_100051530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5E98;
  if (!qword_1001D5E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5E98);
  }

  return result;
}

unint64_t sub_100051588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5EA0;
  if (!qword_1001D5EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5EA0);
  }

  return result;
}

unint64_t sub_1000515E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5EA8;
  if (!qword_1001D5EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5EA8);
  }

  return result;
}

unint64_t sub_100051638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5EB0;
  if (!qword_1001D5EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5EB0);
  }

  return result;
}

unint64_t sub_100051690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5EB8;
  if (!qword_1001D5EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5EB8);
  }

  return result;
}

unint64_t sub_1000516E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5EC0;
  if (!qword_1001D5EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5EC0);
  }

  return result;
}

unint64_t sub_100051740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5EC8;
  if (!qword_1001D5EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5EC8);
  }

  return result;
}

unint64_t sub_100051798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5ED0;
  if (!qword_1001D5ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5ED0);
  }

  return result;
}

unint64_t sub_1000517F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5ED8;
  if (!qword_1001D5ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5ED8);
  }

  return result;
}

unint64_t sub_100051848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5EE0;
  if (!qword_1001D5EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5EE0);
  }

  return result;
}

unint64_t sub_1000518A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5EE8;
  if (!qword_1001D5EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5EE8);
  }

  return result;
}

unint64_t sub_1000518F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5EF0;
  if (!qword_1001D5EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5EF0);
  }

  return result;
}

unint64_t sub_100051950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5EF8;
  if (!qword_1001D5EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5EF8);
  }

  return result;
}

unint64_t sub_1000519A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5F00;
  if (!qword_1001D5F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5F00);
  }

  return result;
}

unint64_t sub_100051A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5F08;
  if (!qword_1001D5F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5F08);
  }

  return result;
}

unint64_t sub_100051A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5F10;
  if (!qword_1001D5F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5F10);
  }

  return result;
}

unint64_t sub_100051AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5F18;
  if (!qword_1001D5F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5F18);
  }

  return result;
}

unint64_t sub_100051B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5F20;
  if (!qword_1001D5F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5F20);
  }

  return result;
}

unint64_t sub_100051B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5F28;
  if (!qword_1001D5F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5F28);
  }

  return result;
}

unint64_t sub_100051BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5F30;
  if (!qword_1001D5F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5F30);
  }

  return result;
}

unint64_t sub_100051C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5F38;
  if (!qword_1001D5F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5F38);
  }

  return result;
}

unint64_t sub_100051C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5F40;
  if (!qword_1001D5F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5F40);
  }

  return result;
}

unint64_t sub_100051CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5F48;
  if (!qword_1001D5F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5F48);
  }

  return result;
}

unint64_t sub_100051D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5F50;
  if (!qword_1001D5F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5F50);
  }

  return result;
}

unint64_t sub_100051D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5F58;
  if (!qword_1001D5F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5F58);
  }

  return result;
}

unint64_t sub_100051DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5F60;
  if (!qword_1001D5F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5F60);
  }

  return result;
}

unint64_t sub_100051E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5F68;
  if (!qword_1001D5F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5F68);
  }

  return result;
}

unint64_t sub_100051E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5F70;
  if (!qword_1001D5F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5F70);
  }

  return result;
}

unint64_t sub_100051ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5F78;
  if (!qword_1001D5F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5F78);
  }

  return result;
}

unint64_t sub_100051F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5F80;
  if (!qword_1001D5F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5F80);
  }

  return result;
}

unint64_t sub_100051F80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5F88;
  if (!qword_1001D5F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5F88);
  }

  return result;
}

unint64_t sub_100051FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5F90;
  if (!qword_1001D5F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5F90);
  }

  return result;
}

unint64_t sub_100052030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5F98;
  if (!qword_1001D5F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5F98);
  }

  return result;
}

unint64_t sub_100052088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D5FA0;
  if (!qword_1001D5FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5FA0);
  }

  return result;
}

uint64_t sub_1000521E8()
{

  return sub_10003D074();
}

uint64_t sub_1000522BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000524D0(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_1000522F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000524D0(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_10005235C(void *a1)
{
  v2 = sub_1000033A8(&qword_1001D6030, &qword_100174E20);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - v4;
  v6 = sub_100006AAC(a1, a1[3]);
  sub_1000524D0(v6, v7, v8);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_10005247C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D6028;
  if (!qword_1001D6028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6028);
  }

  return result;
}

unint64_t sub_1000524D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D6038;
  if (!qword_1001D6038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6038);
  }

  return result;
}

unint64_t sub_100052538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D6040;
  if (!qword_1001D6040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6040);
  }

  return result;
}

unint64_t sub_100052590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D6048;
  if (!qword_1001D6048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6048);
  }

  return result;
}

uint64_t sub_100052610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v43 = a5;
  v39 = sub_1000033A8(&qword_1001D6050, &qword_100174F80) - 8;
  v9 = __chkstk_darwin(v39);
  v42 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v41 = &v36 - v12;
  v13 = __chkstk_darwin(v11);
  v40 = &v36 - v14;
  __chkstk_darwin(v13);
  v16 = &v36 - v15;
  LocalizedStringKey.init(stringLiteral:)();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v38 = a2;
  v17[4] = a3;
  v17[5] = a4;

  v37 = v16;
  Button<>.init(_:action:)();
  type metadata accessor for CameraControllerConfiguration.Storage();
  sub_100052C8C();
  v18 = dispatch thunk of UserDefaultsUtility.hasAnyOnboardingDefaults<A>(configStorage:)();
  KeyPath = swift_getKeyPath();
  v20 = swift_allocObject();
  *(v20 + 16) = (v18 & 1) == 0;
  v21 = v39;
  v22 = &v16[*(v39 + 44)];
  *v22 = KeyPath;
  v22[1] = sub_100052CFC;
  v22[2] = v20;
  LocalizedStringKey.init(stringLiteral:)();
  v23 = swift_allocObject();
  v24 = v38;
  v23[2] = a1;
  v23[3] = v24;
  v23[4] = a3;
  v23[5] = a4;

  v25 = v40;
  Button<>.init(_:action:)();
  v26 = dispatch thunk of UserDefaultsUtility.hasPresentedGeoLookupFollowUpPrompt.getter();
  v27 = swift_getKeyPath();
  v28 = swift_allocObject();
  *(v28 + 16) = (v26 & 1) == 0;
  v29 = (v25 + *(v21 + 44));
  *v29 = v27;
  v29[1] = sub_100052EA8;
  v29[2] = v28;
  v30 = v37;
  v31 = v41;
  sub_100052D60(v37, v41);
  v32 = v42;
  sub_100052D60(v25, v42);
  v33 = v43;
  sub_100052D60(v31, v43);
  v34 = sub_1000033A8(&qword_1001D6060, &qword_100174FB8);
  sub_100052D60(v32, v33 + *(v34 + 48));
  sub_100052DD0(v25);
  sub_100052DD0(v30);
  sub_100052DD0(v32);
  return sub_100052DD0(v31);
}

uint64_t sub_1000529C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.ui.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Resetting onboarding overlays…", v9, 2u);
  }

  (*(v4 + 8))(v6, v3);
  type metadata accessor for CameraControllerConfiguration.Storage();
  sub_100052C8C();
  return dispatch thunk of UserDefaultsUtility.resetOnboardingDefaults<A>(configStorage:)();
}

uint64_t sub_100052B28()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.ui.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Resetting onboarding follow up prompts…", v6, 2u);
  }

  (*(v1 + 8))(v3, v0);
  return dispatch thunk of UserDefaultsUtility.resetGeoLookupFollowUpPrompt()();
}

unint64_t sub_100052C8C()
{
  result = qword_1001D6058;
  if (!qword_1001D6058)
  {
    type metadata accessor for CameraControllerConfiguration.Storage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6058);
  }

  return result;
}

uint64_t sub_100052D04()
{

  return swift_deallocObject();
}

uint64_t sub_100052D60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D6050, &qword_100174F80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100052DD0(uint64_t a1)
{
  v2 = sub_1000033A8(&qword_1001D6050, &qword_100174F80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100052E3C()
{
  result = qword_1001D6068;
  if (!qword_1001D6068)
  {
    sub_10001276C(&qword_1001D6070, &qword_100174FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6068);
  }

  return result;
}

uint64_t sub_100052EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000033A8(&qword_1001D4CD0, &qword_100172230);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100052FA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000033A8(&qword_1001D4CD0, &qword_100172230);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for CameraErrorView(uint64_t a1)
{
  result = qword_1001D60D0;
  if (!qword_1001D60D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000530B4(uint64_t a1)
{
  sub_100053128(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100053128(uint64_t a1)
{
  if (!qword_1001D4D48)
  {
    type metadata accessor for ColorScheme();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_1001D4D48);
    }
  }
}

uint64_t sub_10005319C@<X0>(uint64_t a1@<X8>)
{
  v57[1] = a1;
  v2 = type metadata accessor for ColorScheme();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v57 - v7;
  v9 = sub_1000033A8(&qword_1001D6108, &qword_100175030);
  __chkstk_darwin(v9);
  v11 = v57 - v10;
  *v11 = static HorizontalAlignment.center.getter();
  *(v11 + 1) = 0x4034000000000000;
  v11[16] = 0;
  v12 = sub_1000033A8(&qword_1001D6110, &qword_100175038);
  sub_10005373C(v1, &v11[*(v12 + 44)]);
  v13 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = &v11[*(sub_1000033A8(&qword_1001D6118, &qword_100175040) + 36)];
  *v22 = v13;
  *(v22 + 1) = v15;
  *(v22 + 2) = v17;
  *(v22 + 3) = v19;
  *(v22 + 4) = v21;
  v22[40] = 0;
  v23 = static Alignment.center.getter();
  v25 = v24;
  sub_100054038(&qword_1001D4DC0, &qword_100172370, &type metadata accessor for ColorScheme, v8);
  (*(v3 + 104))(v6, enum case for ColorScheme.light(_:), v2);
  v26 = static ColorScheme.== infix(_:_:)();
  v27 = *(v3 + 8);
  v27(v6, v2);
  v27(v8, v2);
  if (v26)
  {
    v28 = 0.8;
  }

  else
  {
    v28 = 0.3;
  }

  v29 = &v11[*(sub_1000033A8(&qword_1001D6120, &qword_100175048) + 36)];
  *v29 = &off_1001BEC68;
  *(v29 + 1) = 0x403C000000000000;
  *(v29 + 2) = v28;
  *(v29 + 3) = 0x3FE3333333333333;
  *(v29 + 4) = v23;
  *(v29 + 5) = v25;
  v30 = &v11[*(sub_1000033A8(&qword_1001D6128, &qword_100175050) + 36)];
  static Material.thin.getter();
  v31 = static Edge.Set.all.getter();
  v30[*(sub_1000033A8(&qword_1001D3CA0, &qword_100170918) + 36)] = v31;
  sub_10002E2E4(v64);
  v32 = v64[0];
  v33 = v64[1];
  v34 = v64[2];
  v35 = v64[3];
  v36 = v64[4];
  v37 = static Alignment.center.getter();
  v39 = v38;
  *&v59 = v32;
  *(&v59 + 1) = v33;
  *&v60 = v34;
  *(&v60 + 1) = v35;
  *&v61 = v36;
  *(&v61 + 1) = 0x3FE6666666666666;
  *&v62 = v37;
  *(&v62 + 1) = v38;
  v40 = &v11[*(sub_1000033A8(&qword_1001D6130, &qword_100175058) + 36)];
  v41 = v60;
  *v40 = v59;
  *(v40 + 1) = v41;
  v42 = v62;
  *(v40 + 2) = v61;
  *(v40 + 3) = v42;
  v63[0] = v32;
  v63[1] = v33;
  v63[2] = v34;
  v63[3] = v35;
  v63[4] = v36;
  v63[5] = 0x3FE6666666666666;
  v63[6] = v37;
  v63[7] = v39;
  sub_1000138BC(&v59, v58, &qword_1001D4E40, &qword_1001723D8);
  sub_10001370C(v63, &qword_1001D4E40, &qword_1001723D8);
  v43 = &v11[*(sub_1000033A8(&qword_1001D6138, &qword_100175060) + 36)];
  v44 = *(type metadata accessor for RoundedRectangle() + 20);
  v45 = enum case for RoundedCornerStyle.continuous(_:);
  v46 = type metadata accessor for RoundedCornerStyle();
  (*(*(v46 - 8) + 104))(&v43[v44], v45, v46);
  __asm { FMOV            V0.2D, #28.0 }

  *v43 = _Q0;
  *&v43[*(sub_1000033A8(&qword_1001D4E50, &qword_1001723E8) + 36)] = 256;
  static Color.black.getter();
  v52 = Color.opacity(_:)();

  v53 = &v11[*(sub_1000033A8(&qword_1001D6140, &qword_100175068) + 36)];
  *v53 = v52;
  *(v53 + 8) = xmmword_1001721E0;
  *(v53 + 3) = 0x4010000000000000;
  LOBYTE(v45) = static Edge.Set.all.getter();
  v54 = &v11[*(sub_1000033A8(&qword_1001D6148, &qword_100175070) + 36)];
  *v54 = v45;
  *(v54 + 8) = 0u;
  *(v54 + 24) = 0u;
  v54[40] = 1;
  static AnyTransition.opacity.getter();
  static AnyTransition.blur(radius:)();
  v55 = AnyTransition.combined(with:)();

  *&v11[*(sub_1000033A8(&qword_1001D6150, &qword_100175078) + 36)] = v55;
  v11[*(v9 + 36)] = 0;
  sub_100054510();
  View.accessibilityIdentifier(_:)();
  return sub_10001370C(v11, &qword_1001D6108, &qword_100175030);
}

uint64_t sub_10005373C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_1000033A8(&qword_1001D61D0, &qword_100175090);
  v4 = __chkstk_darwin(v3 - 8);
  v44 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v41 - v6;
  *v7 = static VerticalAlignment.center.getter();
  *(v7 + 8) = 0;
  *(v7 + 16) = 1;
  v42 = v7;
  v8 = sub_1000033A8(&qword_1001D61D8, &qword_100175098);
  sub_100053AD8(v7 + *(v8 + 44));
  v9 = type metadata accessor for CameraErrorView(0);
  v10 = (a1 + *(v9 + 20));
  v11 = v10[1];
  v61 = *v10;
  v62 = v11;
  sub_10002EC9C(v9, v12, v13);

  v14 = Text.init<A>(_:)();
  v16 = v15;
  v18 = v17;
  static Font.headline.getter();
  v19 = Text.font(_:)();
  v21 = v20;
  v23 = v22;

  sub_100020D44(v14, v16, v18 & 1);

  static Font.Weight.medium.getter();
  v24 = Text.fontWeight(_:)();
  v26 = v25;
  LOBYTE(v7) = v27;
  v41 = v28;
  sub_100020D44(v19, v21, v23 & 1);

  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v29 = v7 & 1;
  v74 = v7 & 1;
  v30 = v42;
  v31 = v44;
  sub_1000138BC(v42, v44, &qword_1001D61D0, &qword_100175090);
  v32 = v31;
  v33 = v43;
  sub_1000138BC(v32, v43, &qword_1001D61D0, &qword_100175090);
  v34 = (v33 + *(sub_1000033A8(&qword_1001D61E0, &qword_1001750A0) + 48));
  *&v52 = v24;
  *(&v52 + 1) = v26;
  LOBYTE(v53) = v29;
  *(&v53 + 1) = *v73;
  DWORD1(v53) = *&v73[3];
  v35 = v41;
  *(&v53 + 1) = v41;
  v58 = v49;
  v59 = v50;
  v60 = v51;
  v56 = v47;
  v57 = v48;
  v54 = v45;
  v55 = v46;
  v36 = v50;
  v34[6] = v49;
  v34[7] = v36;
  v34[8] = v60;
  v37 = v55;
  v34[2] = v54;
  v34[3] = v37;
  v38 = v57;
  v34[4] = v56;
  v34[5] = v38;
  v39 = v53;
  *v34 = v52;
  v34[1] = v39;
  sub_1000138BC(&v52, &v61, &qword_1001D61E8, &qword_1001750A8);
  sub_10001370C(v30, &qword_1001D61D0, &qword_100175090);
  v61 = v24;
  v62 = v26;
  v63 = v29;
  *v64 = *v73;
  *&v64[3] = *&v73[3];
  v65 = v35;
  v70 = v49;
  v71 = v50;
  v72 = v51;
  v66 = v45;
  v67 = v46;
  v68 = v47;
  v69 = v48;
  sub_10001370C(&v61, &qword_1001D61E8, &qword_1001750A8);
  return sub_10001370C(v44, &qword_1001D61D0, &qword_100175090);
}

uint64_t sub_100053AD8@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = type metadata accessor for SymbolEffectOptions();
  v37 = *(v1 - 8);
  v38 = v1;
  __chkstk_darwin(v1);
  v34 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ReplaceSymbolEffect();
  v4 = *(v3 - 8);
  v35 = v3;
  v36 = v4;
  __chkstk_darwin(v3);
  v33 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DynamicTypeSize();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000033A8(&qword_1001D61F0, &qword_1001750B0);
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - v11;
  v13 = sub_1000033A8(&qword_1001D61F8, &qword_1001750B8);
  v14 = v13 - 8;
  v15 = __chkstk_darwin(v13);
  v32 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v31 - v17;
  Image.init(_internalSystemName:)();
  static SymbolRenderingMode.multicolor.getter();
  v19 = type metadata accessor for SymbolRenderingMode();
  (*(*(v19 - 8) + 56))(v12, 0, 1, v19);
  v20 = Image.symbolRenderingMode(_:)();

  sub_10001370C(v12, &qword_1001D61F0, &qword_1001750B0);
  v21 = static Font.title.getter();
  KeyPath = swift_getKeyPath();
  v40 = v20;
  v41 = KeyPath;
  v42 = v21;
  (*(v7 + 104))(v9, enum case for DynamicTypeSize.large(_:), v6);
  sub_1000033A8(&qword_1001D46B8, &unk_100172820);
  sub_100022DB8();
  View.dynamicTypeSize(_:)();
  (*(v7 + 8))(v9, v6);

  v23 = v33;
  ReplaceSymbolEffect.init()();
  v24 = v34;
  static SymbolEffectOptions.default.getter();
  v25 = &v18[*(v14 + 44)];
  sub_1000033A8(&qword_1001D6200, &qword_1001750F0);
  sub_100054C44(&qword_1001D6208, &type metadata accessor for ReplaceSymbolEffect, &protocol conformance descriptor for ReplaceSymbolEffect);
  v26 = v35;
  static ContentTransition.symbolEffect<A>(_:options:)();
  (*(v37 + 8))(v24, v38);
  (*(v36 + 8))(v23, v26);
  *v25 = swift_getKeyPath();
  v27 = v32;
  sub_1000138BC(v18, v32, &qword_1001D61F8, &qword_1001750B8);
  v28 = v39;
  sub_1000138BC(v27, v39, &qword_1001D61F8, &qword_1001750B8);
  v29 = v28 + *(sub_1000033A8(&qword_1001D6210, &qword_100175128) + 48);
  *v29 = 0;
  *(v29 + 8) = 1;
  sub_10001370C(v18, &qword_1001D61F8, &qword_1001750B8);
  return sub_10001370C(v27, &qword_1001D61F8, &qword_1001750B8);
}

uint64_t sub_100054038@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  v8 = v4;
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000033A8(a1, a2);
  __chkstk_darwin(v14);
  v16 = &v20 - v15;
  sub_1000138BC(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_100054238(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    return v10[1];
  }

  return a1;
}

uint64_t sub_1000543F0(uint64_t a1)
{
  v2 = type metadata accessor for ContentTransition();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.contentTransition.setter();
}

uint64_t sub_1000544B8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

unint64_t sub_100054510()
{
  result = qword_1001D6158;
  if (!qword_1001D6158)
  {
    sub_10001276C(&qword_1001D6108, &qword_100175030);
    sub_10005459C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6158);
  }

  return result;
}

unint64_t sub_10005459C()
{
  result = qword_1001D6160;
  if (!qword_1001D6160)
  {
    sub_10001276C(&qword_1001D6150, &qword_100175078);
    sub_100054654();
    sub_100013608(&qword_1001D3CD0, &qword_1001D3CC8, &qword_100176850, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6160);
  }

  return result;
}

unint64_t sub_100054654()
{
  result = qword_1001D6168;
  if (!qword_1001D6168)
  {
    sub_10001276C(&qword_1001D6148, &qword_100175070);
    sub_1000546E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6168);
  }

  return result;
}

unint64_t sub_1000546E0()
{
  result = qword_1001D6170;
  if (!qword_1001D6170)
  {
    sub_10001276C(&qword_1001D6140, &qword_100175068);
    sub_10005476C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6170);
  }

  return result;
}

unint64_t sub_10005476C()
{
  result = qword_1001D6178;
  if (!qword_1001D6178)
  {
    sub_10001276C(&qword_1001D6138, &qword_100175060);
    sub_100054824();
    sub_100013608(&qword_1001D61C8, &qword_1001D4E50, &qword_1001723E8, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6178);
  }

  return result;
}

unint64_t sub_100054824()
{
  result = qword_1001D6180;
  if (!qword_1001D6180)
  {
    sub_10001276C(&qword_1001D6130, &qword_100175058);
    sub_1000548DC();
    sub_100013608(&qword_1001D61C0, &qword_1001D4E40, &qword_1001723D8, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6180);
  }

  return result;
}

unint64_t sub_1000548DC()
{
  result = qword_1001D6188;
  if (!qword_1001D6188)
  {
    sub_10001276C(&qword_1001D6128, &qword_100175050);
    sub_100054994();
    sub_100013608(&qword_1001D3CC0, &qword_1001D3CA0, &qword_100170918, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6188);
  }

  return result;
}

unint64_t sub_100054994()
{
  result = qword_1001D6190;
  if (!qword_1001D6190)
  {
    sub_10001276C(&qword_1001D6120, &qword_100175048);
    sub_100054A4C();
    sub_100013608(&qword_1001D61B0, &qword_1001D61B8, &qword_100175088, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6190);
  }

  return result;
}

unint64_t sub_100054A4C()
{
  result = qword_1001D6198;
  if (!qword_1001D6198)
  {
    sub_10001276C(&qword_1001D6118, &qword_100175040);
    sub_100013608(&qword_1001D61A0, &qword_1001D61A8, &qword_100175080, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6198);
  }

  return result;
}

uint64_t sub_100054B04@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

unint64_t sub_100054B88()
{
  result = qword_1001D6218;
  if (!qword_1001D6218)
  {
    sub_10001276C(&qword_1001D6220, &qword_100175130);
    sub_100054510();
    sub_100054C44(&qword_1001D3DB8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6218);
  }

  return result;
}

uint64_t sub_100054C44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *CGImagePropertyOrientation.init(from:)(void *a1)
{
  v3 = sub_100006AAC(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v1)
  {
    sub_100006B44(a1);
  }

  else
  {
    sub_100006AAC(v5, v5[3]);
    v3 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    sub_100006B44(v5);
    sub_100006B44(a1);
  }

  return v3;
}

uint64_t CGImagePropertyOrientation.encode(to:)(void *a1, uint64_t a2)
{
  sub_100006AAC(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100054DDC(v3, v3[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return sub_100006B44(v3);
}

uint64_t sub_100054DDC(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_100054E2C@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_100006AAC(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    return sub_100006B44(a1);
  }

  sub_100006AAC(v7, v7[3]);
  v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
  sub_100006B44(v7);
  result = sub_100006B44(a1);
  *a2 = v5;
  return result;
}

uint64_t sub_100054EEC(void *a1)
{
  sub_100006AAC(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100054DDC(v2, v2[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return sub_100006B44(v2);
}

double sub_100054F80(uint64_t a1, uint64_t a2, double a3)
{
  v75 = type metadata accessor for Corners();
  v77 = *(v75 - 8);
  v6 = __chkstk_darwin(v75);
  v74 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v73 = v50 - v8;
  v72 = type metadata accessor for CVTrackedDetection.Prediction();
  v9 = *(v72 - 8);
  __chkstk_darwin(v72);
  v71 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CVDetection();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v50 - v16;
  v18 = type metadata accessor for DetectionRequest();
  __chkstk_darwin(v18 - 8);
  v20 = v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DetectionResult();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v64 = v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = *(a1 + 16);
  if (v26)
  {
    v61 = v50 - v25;
    v50[1] = a2;
    v79 = _swiftEmptyArrayStorage;
    v60 = v26;
    sub_100059548(0, v26, 0);
    v65 = v79;
    v28 = *(v22 + 16);
    v27 = v22 + 16;
    v59 = v28;
    v58 = (*(v27 + 64) + 32) & ~*(v27 + 64);
    v57 = a1 + v58;
    v69 = (v77 + 8);
    v70 = v12 + 16;
    v29 = (v9 + 8);
    v30 = 0;
    v67 = (v12 + 8);
    v68 = v29;
    v53 = v12;
    v66 = (v12 + 32);
    v56 = (v27 - 8);
    v55 = (v27 + 16);
    v31 = *(v27 + 56);
    v52 = v20;
    v51 = v21;
    v50[2] = v27;
    v54 = v31;
    do
    {
      v63 = v30;
      v59(v64, v57 + v31 * v30, v21);
      DetectionResult.request.getter();
      v32 = DetectionResult.results.getter();
      v33 = *(v32 + 16);
      if (v33)
      {
        v78 = _swiftEmptyArrayStorage;
        sub_10005958C(0, v33, 0);
        v34 = v78;
        v35 = (*(v53 + 80) + 32) & ~*(v53 + 80);
        v62 = v32;
        v77 = v35;
        v36 = v32 + v35;
        v37 = *(v53 + 72);
        v76 = *(v53 + 16);
        do
        {
          v76(v15, v36, v11);
          v38 = v17;
          v39 = v73;
          CVDetection.corners.getter();
          Corners.center.getter();
          (*v69)(v39, v75);
          CVDetection.corners.getter();
          v40 = v71;
          CVTrackedDetection.Prediction.init(center:corners:timestamp:)();
          CVDetection.modifyWithPrediction(_:)();
          (*v68)(v40, v72);
          (*v67)(v15, v11);
          v78 = v34;
          v42 = v34[2];
          v41 = v34[3];
          if (v42 >= v41 >> 1)
          {
            sub_10005958C((v41 > 1), v42 + 1, 1);
            v34 = v78;
          }

          v34[2] = v42 + 1;
          (*v66)(v34 + v77 + v42 * v37, v38, v11);
          v36 += v37;
          --v33;
          v17 = v38;
        }

        while (v33);

        v21 = v51;
      }

      else
      {
      }

      v43 = v61;
      DetectionResult.init(request:results:)();
      (*v56)(v64, v21);
      v44 = v65;
      v79 = v65;
      v46 = v65[2];
      v45 = v65[3];
      v47 = v63;
      if (v46 >= v45 >> 1)
      {
        sub_100059548((v45 > 1), v46 + 1, 1);
        v43 = v61;
        v44 = v79;
      }

      v30 = v47 + 1;
      v44[2] = v46 + 1;
      v65 = v44;
      v48 = v44 + v58 + v46 * v54;
      v31 = v54;
      (*v55)(v48, v43, v21);
    }

    while (v30 != v60);
  }

  return a3;
}

uint64_t sub_100055670(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = sub_1000033A8(&qword_1001D6398, &qword_100175318);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  v12 = sub_100006AAC(a1, a1[3]);
  sub_10005AA70(v12, v13, v14);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2;
  HIBYTE(v16) = 0;
  sub_1000033A8(&qword_1001D6348, &qword_1001752F8);
  sub_10005ABE0(&qword_1001D63A0, &qword_1001D63A8, &protocol conformance descriptor for DetectionResult, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    LOBYTE(v17) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LODWORD(v17) = a3;
    BYTE4(v17) = BYTE4(a3) & 1;
    HIBYTE(v16) = 2;
    type metadata accessor for CGImagePropertyOrientation(0);
    sub_10005AAC4(&unk_1001D63B0, type metadata accessor for CGImagePropertyOrientation, &protocol conformance descriptor for CGImagePropertyOrientation);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_100055904()
{
  v1 = 0x6D617473656D6974;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_10005596C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10005A114(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100055994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10005AA70(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_1000559D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10005AA70(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

void sub_100055A0C(uint64_t a1@<X8>, void *a2@<X0>)
{
  v6 = sub_10005A248(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 8) = v6;
    *(a1 + 16) = v5;
    *(a1 + 20) = BYTE4(v5) & 1;
  }
}

uint64_t sub_100055A84(void *a1)
{
  v3 = sub_1000033A8(&qword_1001D6618, &qword_1001756B8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-v5];
  v7 = sub_100006AAC(a1, a1[3]);
  sub_10005C418(v7, v8, v9);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[15] = 0;
  type metadata accessor for CVDetection();
  sub_10005AAC4(&qword_1001D6620, &type metadata accessor for CVDetection, &protocol conformance descriptor for CVDetection);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for LegacyDetectionRequestConvertible(0);
    v11[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

Swift::Int sub_100055C3C()
{
  Hasher.init(_seed:)();
  type metadata accessor for CVDetection();
  sub_10005AAC4(&qword_1001D6600, &type metadata accessor for CVDetection, &protocol conformance descriptor for CVDetection);
  dispatch thunk of Hashable.hash(into:)();
  v1 = *(v0 + *(type metadata accessor for LegacyDetectionRequestConvertible(0) + 20));
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
  return Hasher._finalize()();
}

uint64_t sub_100055CEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = type metadata accessor for CVDetection();
  v27 = *(v4 - 8);
  v28 = v4;
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1000033A8(&qword_1001D6608, &qword_1001756B0);
  v26 = *(v29 - 8);
  __chkstk_darwin(v29);
  v8 = &v23 - v7;
  v9 = type metadata accessor for LegacyDetectionRequestConvertible(0);
  __chkstk_darwin(v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100006AAC(a1, a1[3]);
  sub_10005C418(v12, v13, v14);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006B44(a1);
  }

  v24 = v11;
  v15 = v26;
  v16 = v27;
  v31 = 0;
  sub_10005AAC4(&qword_1001D65E8, &type metadata accessor for CVDetection, &protocol conformance descriptor for CVDetection);
  v17 = v28;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v16 + 32))(v24, v6, v17);
  v30 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v19 = v18;
  (*(v15 + 8))(v8, v29);
  v21 = v24;
  v20 = v25;
  *&v24[*(v9 + 20)] = v19;
  sub_10005C46C(v21, v20, type metadata accessor for LegacyDetectionRequestConvertible);
  sub_100006B44(a1);
  return sub_10005C3B8(v21, type metadata accessor for LegacyDetectionRequestConvertible);
}

uint64_t sub_100056038()
{
  if (*v0)
  {
    return 0x6D617473656D6974;
  }

  else
  {
    return 0x6F69746365746564;
  }
}

uint64_t sub_100056084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F69746365746564 && a2 == 0xED0000657079546ELL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
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

uint64_t sub_100056170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10005C418(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_1000561AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10005C418(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

void sub_100056240(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CVDetection();
  sub_10005AAC4(&qword_1001D6600, &type metadata accessor for CVDetection, &protocol conformance descriptor for CVDetection);
  dispatch thunk of Hashable.hash(into:)();
  v4 = *(v2 + *(a2 + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  Hasher._combine(_:)(*&v4);
}

Swift::Int sub_1000562DC(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for CVDetection();
  sub_10005AAC4(&qword_1001D6600, &type metadata accessor for CVDetection, &protocol conformance descriptor for CVDetection);
  dispatch thunk of Hashable.hash(into:)();
  v4 = *(v2 + *(a2 + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  Hasher._combine(_:)(*&v4);
  return Hasher._finalize()();
}

uint64_t sub_1000563BC(void *a1)
{
  v3 = v1;
  v5 = sub_1000033A8(&qword_1001D6630, &qword_1001756C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-v7];
  v9 = sub_100006AAC(a1, a1[3]);
  sub_10005C24C(v9, v10, v11);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  type metadata accessor for LegacyDetectionRequestConvertible(0);
  sub_10005AAC4(&qword_1001D6638, type metadata accessor for LegacyDetectionRequestConvertible, &unk_10017555C);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = *(v3 + *(type metadata accessor for LegacyDetectionResultConvertible(0) + 20));
    v13[15] = 1;
    sub_1000033A8(&qword_1001D65D8, &qword_100175698);
    sub_10005C4D4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_1000565A0(uint64_t a1)
{
  v2 = type metadata accessor for CVDetection();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = sub_10005AAC4(&qword_1001D6600, &type metadata accessor for CVDetection, &protocol conformance descriptor for CVDetection);
  dispatch thunk of Hashable.hash(into:)();
  v6 = *(v1 + *(type metadata accessor for LegacyDetectionRequestConvertible(0) + 20));
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  Hasher._combine(_:)(*&v6);
  v7 = *(v1 + *(type metadata accessor for LegacyDetectionResultConvertible(0) + 20));
  Hasher._combine(_:)(*(v7 + 16));
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v3 + 16;
    v10 = *(v3 + 16);
    v11 = v7 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v12 = *(v9 + 56);
    v13 = (v9 - 8);
    do
    {
      v10(v5, v11, v2);
      dispatch thunk of Hashable.hash(into:)();
      (*v13)(v5, v2);
      v11 += v12;
      --v8;
    }

    while (v8);
  }
}

uint64_t sub_10005676C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for LegacyDetectionRequestConvertible(0);
  __chkstk_darwin(v4);
  v23 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000033A8(&qword_1001D65C0, &qword_100175690);
  v21 = *(v6 - 8);
  v22 = v6;
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for LegacyDetectionResultConvertible(0);
  __chkstk_darwin(v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100006AAC(a1, a1[3]);
  sub_10005C24C(v12, v13, v14);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006B44(a1);
  }

  v15 = v11;
  v16 = v21;
  v26 = 0;
  sub_10005AAC4(&qword_1001D65D0, type metadata accessor for LegacyDetectionRequestConvertible, &unk_100175584);
  v17 = v22;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_10005C2A0(v23, v15);
  sub_1000033A8(&qword_1001D65D8, &qword_100175698);
  v25 = 1;
  sub_10005C304();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v16 + 8))(v8, v17);
  *(v15 + *(v9 + 20)) = v24;
  sub_10005C46C(v15, v20, type metadata accessor for LegacyDetectionResultConvertible);
  sub_100006B44(a1);
  return sub_10005C3B8(v15, type metadata accessor for LegacyDetectionResultConvertible);
}

uint64_t sub_100056A88()
{
  if (*v0)
  {
    return 0x73746C75736572;
  }

  else
  {
    return 0x74736575716572;
  }
}

uint64_t sub_100056ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74736575716572 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73746C75736572 && a2 == 0xE700000000000000)
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

uint64_t sub_100056B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10005C24C(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_100056BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10005C24C(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_100056C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static CVDetection.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for LegacyDetectionRequestConvertible(0);
  if (*(a1 + *(v6 + 20)) != *(a2 + *(v6 + 20)))
  {
    return 0;
  }

  v7 = *(a3 + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);

  return sub_100059230(v8, v9);
}

Swift::Int sub_100056C94()
{
  Hasher.init(_seed:)();
  sub_1000565A0(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100056CD8()
{
  Hasher.init(_seed:)();
  sub_1000565A0(v1);
  return Hasher._finalize()();
}

unint64_t sub_100056D44(uint64_t a1)
{
  v2 = 0xD000000000000017;
  v44 = type metadata accessor for CVDetection.DetectionType();
  v3 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for DetectionRequest();
  v5 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for DetectionResult();
  v7 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = 0xD000000000000017;
  v48 = 0x8000000100175200;
  v9 = *(a1 + 16);
  if (v9)
  {
    v46._countAndFlagsBits = 0;
    v46._object = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    v46._countAndFlagsBits = 0x2020202020200ALL;
    v46._object = 0xE700000000000000;
    v45 = v9;
    v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v10);

    v11._countAndFlagsBits = 0xD00000000000001ELL;
    v11._object = 0x800000010016C540;
    String.append(_:)(v11);
    v45 = _swiftEmptyArrayStorage;
    sub_1000595D0(0, v9, 0);
    v12 = v45;
    v14 = *(v7 + 16);
    v13 = v7 + 16;
    v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v36 = *(v13 + 56);
    v37 = v14;
    v34 = (v3 + 8);
    v35 = (v5 + 8);
    v33 = (v13 - 8);
    v38 = v13;
    do
    {
      v17 = v39;
      v16 = v40;
      v37(v39, v15, v40);
      v18 = v41;
      DetectionResult.request.getter();
      v19 = v43;
      DetectionRequest.detectionType.getter();
      (*v35)(v18, v42);
      sub_10005AAC4(&qword_1001D62F8, &type metadata accessor for CVDetection.DetectionType, &protocol conformance descriptor for CVDetection.DetectionType);
      v20 = v44;
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      (*v34)(v19, v20);
      (*v33)(v17, v16);
      v45 = v12;
      v25 = v12[2];
      v24 = v12[3];
      if (v25 >= v24 >> 1)
      {
        sub_1000595D0((v24 > 1), v25 + 1, 1);
        v12 = v45;
      }

      v12[2] = v25 + 1;
      v26 = &v12[2 * v25];
      v26[4] = v21;
      v26[5] = v23;
      v15 += v36;
      --v9;
    }

    while (v9);
    v45 = v12;
    sub_1000033A8(&unk_1001D6300, &unk_1001752C0);
    sub_100013608(&unk_1001D8160, &unk_1001D6300, &unk_1001752C0, &protocol conformance descriptor for [A]);
    v27 = BidirectionalCollection<>.joined(separator:)();
    v29 = v28;

    v30._countAndFlagsBits = v27;
    v30._object = v29;
    String.append(_:)(v30);

    String.append(_:)(v46);

    return v47;
  }

  return v2;
}

void sub_100057490(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_1000033A8(&qword_1001D6450, &qword_1001753A0);
  __chkstk_darwin(v3 - 8);
  v5 = v34 - v4;
  v6 = type metadata accessor for Angle();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for UUID();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for Corners();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v34 - v13;
  v15 = AVMetadataMachineReadableCodeObject.corners.getter();
  [a1 time];
  Seconds = CMTimeGetSeconds(&time);
  v17 = *(v15 + 16);
  if (!v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v17 == 1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v17 >= 4)
  {
    *&v34[1] = Seconds;
    v35 = v12;

    Corners.init(topLeft:topRight:bottomLeft:bottomRight:)();
    v18 = [a1 basicDescriptor];
    if (v18)
    {
      v19 = v18;
      v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v38 = 0x61746144776152;
      v39 = 0xE700000000000000;
      AnyHashable.init<A>(_:)();
      if (*(v20 + 16) && (v21 = sub_100095C98(&time), (v22 & 1) != 0))
      {
        sub_10005BB68(*(v20 + 56) + 32 * v21, v41);
        sub_10005BC0C(&time);
        if (swift_dynamicCast())
        {
          v23 = v5;
          v24 = v14;
          v25 = v38;
          v26 = v39;
          v36 = Data.base64EncodedString(options:)(0);

          sub_10005BC60(v25, v26);
LABEL_13:
          v30 = [objc_opt_self() detectedCodeWithMachineReadableObject:a1];
          UUID.init()();
          (*(v9 + 16))(v35, v24, v8);
          static Angle.degrees(_:)();
          *v23 = v30;
          v31 = enum case for StreamingBarcodeDetectorResult.BCSDetectedCodeContainer.detectedCodeObject(_:);
          v32 = type metadata accessor for StreamingBarcodeDetectorResult.BCSDetectedCodeContainer();
          v33 = *(v32 - 8);
          (*(v33 + 104))(v23, v31, v32);
          (*(v33 + 56))(v23, 0, 1, v32);
          StreamingBarcodeDetectorResult.init(id:confidence:corners:label:rotationAngle:timestamp:detectedCodeContainer:)();
          (*(v9 + 8))(v24, v8);
          return;
        }
      }

      else
      {

        sub_10005BC0C(&time);
      }
    }

    v23 = v5;
    v24 = v14;
    v27 = [a1 stringValue];
    if (v27)
    {
      v28 = v27;
      v36._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36._object = v29;
    }

    else
    {
      v36._object = 0xE500000000000000;
      v36._countAndFlagsBits = 0x7974706D65;
    }

    goto LABEL_13;
  }

LABEL_17:
  __break(1u);
}

id sub_1000579EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StreamingMetadataProcessor(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100057B50(uint64_t a1)
{
  type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    sub_100057C8C(319, &qword_1001D6280, &type metadata accessor for AsyncStream);
    if (v2 <= 0x3F)
    {
      sub_100057C8C(319, &qword_1001D6290, &type metadata accessor for AsyncStream.Continuation);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100057C8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_10001276C(&qword_1001D6288, &qword_1001751F0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

char *sub_100057CF8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_1000595F0(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_10005BBC4(0, &qword_1001D7FF0, NSObject_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_1000595F0((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_10005BB58(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_10005BBC4(0, &qword_1001D7FF0, NSObject_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_1000595F0((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_10005BB58(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void sub_100057EF4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v6 = *a1;
  if (!*(*a1 + 16))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_10005BB68(v6 + 32, &time);
  sub_10005BBC4(0, &qword_1001D6430, NSValue_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  if (*(v6 + 16) < 2uLL)
  {
    goto LABEL_13;
  }

  v12 = v18;
  sub_10005BB68(v6 + 64, &time);
  sub_10005BBC4(0, &qword_1001D6438, NSSet_ptr);
  if (swift_dynamicCast())
  {
    if (*(v6 + 16) >= 3uLL)
    {
      v16 = a6;
      v13 = v18;
      sub_10005BB68(v6 + 96, &time);
      sub_1000033A8(&unk_1001D6440, &unk_100175390);
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_9:

        goto LABEL_10;
      }

      v14 = v18;
      [v12 CMTimeValue];
      Seconds = CMTimeGetSeconds(&time);
      sub_1000AEB98(&time.value, Seconds);
      if (*(*a2 + 16) == 1)
      {
        sub_100058780();
        sub_10005893C(v14, a4, a5, a3, v16);

        goto LABEL_9;
      }

LABEL_15:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_10:
}

void sub_10005812C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    for (i = (a1 + 32); ; ++i)
    {
      v14 = *i;

      sub_100057EF4(&v14, a2, a3, a4, a5, a6);
      if (v6)
      {
        break;
      }

      if (!--v7)
      {
        return;
      }
    }
  }
}

uint64_t sub_1000581E4(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v64 = a4;
  v71 = a3;
  v78 = type metadata accessor for CVDetection.DetectionType();
  v6 = __chkstk_darwin(v78);
  v68 = &v62[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v77 = &v62[-v9];
  v10 = a1 + 56;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 56);
  v14 = (v11 + 63) >> 6;
  v74 = AVMetadataObjectTypeQRCode;
  v65 = AVMetadataObjectTypeAppClipCode;
  v63 = enum case for CVDetection.DetectionType.appClip(_:);
  v66 = v8 + 16;
  v67 = v8;
  v72 = (v8 + 8);
  v73 = (v8 + 104);
  v70 = enum case for CVDetection.DetectionType.qrCode(_:);
  v75 = a1;

  v15 = 0;
  v69 = a1 + 56;
  while (v13)
  {
LABEL_11:
    v17 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v18 = (*(v75 + 48) + ((v15 << 10) | (16 * v17)));
    v19 = *v18;
    v20 = v18[1];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)() == v19 && v21 == v20;
    v76 = v20;
    if (v22)
    {

LABEL_23:
      v27 = v14;
      v28 = v77;
      (*v73)(v77, v70, v78);
      v29 = *v71;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v79 = *a2;
      v31 = v79;
      v32 = a2;
      *a2 = 0x8000000000000000;
      v34 = sub_100095CDC(v28);
      v35 = v31[2];
      v36 = (v33 & 1) == 0;
      v37 = v35 + v36;
      if (__OFADD__(v35, v36))
      {
        goto LABEL_48;
      }

      v38 = v33;
      if (v31[3] >= v37)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v41 = v79;
          if (v33)
          {
            goto LABEL_4;
          }
        }

        else
        {
          sub_1000C1CC4();
          v41 = v79;
          if (v38)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        sub_1000BDA34(v37, isUniquelyReferenced_nonNull_native);
        v39 = sub_100095CDC(v77);
        if ((v38 & 1) != (v40 & 1))
        {
          goto LABEL_52;
        }

        v34 = v39;
        v41 = v79;
        if (v38)
        {
LABEL_4:
          *(v41[7] + 8 * v34) = v29;

          goto LABEL_5;
        }
      }

      v41[(v34 >> 6) + 8] |= 1 << v34;
      (*(v67 + 16))(v41[6] + *(v67 + 72) * v34, v77, v78);
      *(v41[7] + 8 * v34) = v29;
      v42 = v41[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_49;
      }

      v41[2] = v44;
LABEL_5:
      (*v72)(v77, v78);
      a2 = v32;
      *v32 = v41;

      v14 = v27;
      v10 = v69;
    }

    else
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v23)
      {
        goto LABEL_23;
      }

      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v19 && v24 == v20)
      {

LABEL_33:
        v45 = v68;
        (*v73)(v68, v63, v78);
        v46 = *v64;

        v47 = swift_isUniquelyReferenced_nonNull_native();
        v79 = *a2;
        v48 = v79;
        *a2 = 0x8000000000000000;
        v49 = sub_100095CDC(v45);
        v51 = v48[2];
        v52 = (v50 & 1) == 0;
        v43 = __OFADD__(v51, v52);
        v53 = v51 + v52;
        if (v43)
        {
          goto LABEL_50;
        }

        v54 = v50;
        if (v48[3] < v53)
        {
          sub_1000BDA34(v53, v47);
          v49 = sub_100095CDC(v68);
          if ((v54 & 1) != (v55 & 1))
          {
            goto LABEL_52;
          }

LABEL_38:
          v56 = v79;
          if (v54)
          {
            goto LABEL_39;
          }

          goto LABEL_43;
        }

        if (v47)
        {
          goto LABEL_38;
        }

        v57 = v49;
        sub_1000C1CC4();
        v49 = v57;
        v56 = v79;
        if (v54)
        {
LABEL_39:
          *(v56[7] + 8 * v49) = v46;

          goto LABEL_45;
        }

LABEL_43:
        v56[(v49 >> 6) + 8] |= 1 << v49;
        v58 = v49;
        (*(v67 + 16))(v56[6] + *(v67 + 72) * v49, v68, v78);
        *(v56[7] + 8 * v58) = v46;
        v59 = v56[2];
        v43 = __OFADD__(v59, 1);
        v60 = v59 + 1;
        if (v43)
        {
          goto LABEL_51;
        }

        v56[2] = v60;
LABEL_45:
        (*v72)(v68, v78);
        *a2 = v56;
      }

      else
      {
        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v26)
        {
          goto LABEL_33;
        }
      }
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v14)
    {
    }

    v13 = *(v10 + 8 * v16);
    ++v15;
    if (v13)
    {
      v15 = v16;
      goto LABEL_11;
    }
  }

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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100058780()
{
  v0 = type metadata accessor for NSFastEnumerationIterator();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  NSSet.makeIterator()();
  sub_10005AAC4(&qword_1001D6458, &type metadata accessor for NSFastEnumerationIterator, &protocol conformance descriptor for NSFastEnumerationIterator);
  dispatch thunk of IteratorProtocol.next()();
  while (v10)
  {
    sub_10005BB58(v9, v8);
    sub_10005BB68(v8, v6);
    swift_dynamicCast();
    sub_1000AEC8C(&v7, v5[0], v5[1]);

    sub_100006B44(v8);
    dispatch thunk of IteratorProtocol.next()();
  }

  return (*(v1 + 8))(v3, v0);
}

void sub_10005893C(unint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v9 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v14 = v10;
      sub_100058A44(&v14, a2, a3);

      if (!v5)
      {
        ++v9;
        if (v12 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_100058A44(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v56 = a3;
  v4 = type metadata accessor for CVDetection();
  v5 = *(v4 - 8);
  v57 = v4;
  v58 = v5;
  v6 = __chkstk_darwin(v4);
  v8 = (&v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v10 = (&v56 - v9);
  v11 = type metadata accessor for StreamingBarcodeDetectorResult();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    v16 = v15;
    sub_100057490(v15, v14);
    v17 = [v16 descriptor];
    if (v17)
    {
      v18 = v17;
      objc_opt_self();
      v19 = swift_dynamicCastObjCClass();

      if (v19)
      {
        v20 = swift_allocBox();
        (*(v12 + 16))(v21, v14, v11);
        *v10 = v20;
        v22 = v57;
        (*(v58 + 104))(v10, enum case for CVDetection.qrCode(_:), v57);
        v23 = *a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v23 = sub_100094EE8(0, v23[2] + 1, 1, v23);
          *a2 = v23;
        }

        v26 = v23[2];
        v25 = v23[3];
        if (v26 >= v25 >> 1)
        {
          *a2 = sub_100094EE8((v25 > 1), v26 + 1, 1, v23);
        }

        (*(v12 + 8))(v14, v11);
        v27 = *a2;
        v27[2] = v26 + 1;
        (*(v58 + 32))(v27 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v26, v10, v22);
        return;
      }
    }

    v28 = [v16 basicDescriptor];
    if (v28)
    {
      v29 = v28;
      v30 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v59 = 0x5465646F63726142;
      v60 = 0xEB00000000657079;
      AnyHashable.init<A>(_:)();
      if (*(v30 + 16))
      {
        v31 = sub_100095C98(&v61);
        if (v32)
        {
          sub_10005BB68(*(v30 + 56) + 32 * v31, &v62);
          sub_10005BC0C(&v61);

          if (*(&v63 + 1))
          {
            type metadata accessor for ObjectType(0);
            if (swift_dynamicCast())
            {
              v33 = v61;
              v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v36 = v35;
              if (v34 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v36 == v37)
              {

                v39 = v56;
                v38 = v57;
LABEL_28:
                v49 = swift_allocBox();
                (*(v12 + 16))(v50, v14, v11);
                *v8 = v49;
                (*(v58 + 104))(v8, enum case for CVDetection.appClip(_:), v38);
                v51 = *v39;
                v52 = swift_isUniquelyReferenced_nonNull_native();
                *v39 = v51;
                if ((v52 & 1) == 0)
                {
                  v51 = sub_100094EE8(0, v51[2] + 1, 1, v51);
                  *v39 = v51;
                }

                v54 = v51[2];
                v53 = v51[3];
                if (v54 >= v53 >> 1)
                {
                  *v39 = sub_100094EE8((v53 > 1), v54 + 1, 1, v51);
                }

                (*(v12 + 8))(v14, v11);
                v55 = *v39;
                v55[2] = v54 + 1;
                (*(v58 + 32))(v55 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v54, v8, v38);
                return;
              }

              v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v39 = v56;
              v38 = v57;
              if (v48)
              {
                goto LABEL_28;
              }
            }

LABEL_25:
            (*(v12 + 8))(v14, v11);
            return;
          }

LABEL_24:
          sub_10001370C(&v62, &unk_1001D8060, &qword_1001732E0);
          goto LABEL_25;
        }
      }

      sub_10005BC0C(&v61);
    }

    v62 = 0u;
    v63 = 0u;
    goto LABEL_24;
  }

  objc_opt_self();
  v40 = swift_dynamicCastObjCClass();
  if (v40)
  {
    v41 = v40;
    [v40 qrSceneConfidence];
    if (v42 < 0.06)
    {
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1000AEC8C(&v61, v43, v44);
    }

    [v41 appCodeSceneConfidence];
    if (v45 < 0.108)
    {
      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1000AEC8C(&v61, v46, v47);
    }
  }
}

__n128 sub_100059180(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_100059194(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 21))
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

uint64_t sub_1000591DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 21) = 1;
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

    *(result + 21) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100059230(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CVDetection();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_10005AAC4(&qword_1001D6628, &type metadata accessor for CVDetection, &protocol conformance descriptor for CVDetection);
    v21 = dispatch thunk of static Equatable.== infix(_:_:)();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100059444(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

char *sub_1000594A0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000597A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000594C0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100059F38(a1, a2, a3, *v3, &qword_1001D6318, &unk_1001752D0, &type metadata accessor for CVTrackSnapshot);
  *v3 = result;
  return result;
}

void *sub_100059504(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100059F38(a1, a2, a3, *v3, &qword_1001D63C8, &qword_100175330, &type metadata accessor for CVBundle);
  *v3 = result;
  return result;
}

void *sub_100059548(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100059F38(a1, a2, a3, *v3, &qword_1001D6390, &qword_100175310, &type metadata accessor for DetectionResult);
  *v3 = result;
  return result;
}

void *sub_10005958C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100059F38(a1, a2, a3, *v3, &qword_1001D63D0, &qword_100175338, &type metadata accessor for CVDetection);
  *v3 = result;
  return result;
}

char *sub_1000595D0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10005990C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000595F0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100059A18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100059610(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100059B28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100059630(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100059F38(a1, a2, a3, *v3, &qword_1001D63E0, &qword_100175348, &type metadata accessor for Angle);
  *v3 = result;
  return result;
}

char *sub_100059674(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100059C2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100059694(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100059F38(a1, a2, a3, *v3, &qword_1001D65F0, &qword_1001756A0, type metadata accessor for ActionBarItem);
  *v3 = result;
  return result;
}

void *sub_1000596D8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100059F38(a1, a2, a3, *v3, &qword_1001D63D8, &qword_100175340, &type metadata accessor for UUID);
  *v3 = result;
  return result;
}

char *sub_10005971C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100059D30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10005973C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100059F38(a1, a2, a3, *v3, &qword_1001D6320, &qword_100177590, &type metadata accessor for DetectionRequest);
  *v3 = result;
  return result;
}

char *sub_100059780(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100059E34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000597A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000033A8(&qword_1001D65F8, &qword_1001756A8);
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

char *sub_10005990C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000033A8(&qword_1001D6310, &qword_1001775B0);
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

char *sub_100059A18(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000033A8(&qword_1001D7FE0, &qword_100175388);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100059B28(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000033A8(&unk_1001D63F0, &qword_100175358);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_100059C2C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000033A8(&qword_1001D63E8, &qword_100175350);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_100059D30(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000033A8(&qword_1001D6328, &qword_1001752E0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}