char *sub_100030CC4(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v39 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FBKSInteraction.Content();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v34 - v11;
  v40 = *(v7 + 16);
  v40(&v34 - v11, a1, v6);
  v13 = sub_10003BE00(v12);
  if (v1)
  {
    (*(v7 + 8))(a1, v6);
  }

  else
  {
    v34 = v5;
    v36 = v3;
    v37 = 0;
    sub_10003BBA4(v13);
    v14 = a1;
    v15 = objc_allocWithZone(BMCustomAttributesBasicValue);
    v16 = String._bridgeToObjectiveC()();

    v17 = [v15 initWithBoolValue:0 int64Value:0 doubleValue:0 stringValue:v16];

    sub_100004F70(&qword_100083450, &qword_100069710);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1000695D0;
    v19 = objc_allocWithZone(BMCustomAttributesNamedValue);
    v20 = v17;
    v21 = String._bridgeToObjectiveC()();
    v22 = [v19 initWithName:v21 value:v20];

    v35 = v20;
    *(v18 + 32) = v22;
    v41 = v18;
    v38 = v14;
    v40(v10, v14, v6);
    if ((*(v7 + 88))(v10, v6) == enum case for FBKSInteraction.Content.file(_:))
    {
      (*(v7 + 96))(v10, v6);
      v23 = v39;
      v24 = v34;
      (*(v39 + 32))(v34, v10, v36);
      URL.lastPathComponent.getter();
      v25 = objc_allocWithZone(BMCustomAttributesBasicValue);
      v26 = String._bridgeToObjectiveC()();

      v27 = [v25 initWithBoolValue:0 int64Value:0 doubleValue:0 stringValue:v26];

      v28 = objc_allocWithZone(BMCustomAttributesNamedValue);
      v29 = v27;
      v30 = String._bridgeToObjectiveC()();
      [v28 initWithName:v30 value:v29];

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      (*(v23 + 8))(v24, v36);
    }

    else
    {
      (*(v7 + 8))(v10, v6);
    }

    v31 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    sub_100008714(0, &qword_100083518, BMCustomAttributesNamedValue_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v5 = [v31 initWithAttributeDict:isa];

    (*(v7 + 8))(v38, v6);
  }

  return v5;
}

id sub_1000311D8(uint64_t a1, uint64_t a2)
{
  v5 = [v2 attributeDict];
  sub_100008714(0, &qword_100083518, BMCustomAttributesNamedValue_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v12 = [v9 name];
      if (v12)
      {
        v13 = v12;
        v14 = a2;
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        if (v15 == a1 && v17 == v14)
        {

          goto LABEL_22;
        }

        a2 = v14;
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v19)
        {
          goto LABEL_22;
        }
      }

      ++v8;
      if (v11 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:
  v10 = 0;
LABEL_22:

  v20 = [v10 value];

  return v20;
}

uint64_t *sub_1000313B4(uint64_t a1)
{
  v3 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v3 - 8);
  v46 = type metadata accessor for FBKSInteraction.StructuredValue();
  v4 = *(v46 - 8);
  __chkstk_darwin(v46);
  v48 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004F70(&qword_100082CD8, &qword_100068EC8);
  __chkstk_darwin(v6 - 8);
  v8 = &v42 - v7;
  v9 = type metadata accessor for FBKSInteraction.Content();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v49 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v42 - v14;
  __chkstk_darwin(v13);
  v17 = &v42 - v16;
  sub_100018B48(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v18 = &qword_100082CD8;
    sub_1000071C8(v8, &qword_100082CD8, &qword_100068EC8);
    sub_10001BF40();
    swift_allocError();
    *v19 = 3;
    swift_willThrow();
    sub_1000071C8(a1, &qword_100082CD8, &qword_100068EC8);
    return v18;
  }

  v45 = a1;
  v47 = v1;
  (*(v10 + 32))(v17, v8, v9);
  v20 = *(v10 + 16);
  v44 = v17;
  v21 = v17;
  v22 = v20;
  v20(v15, v21, v9);
  v23 = (*(v10 + 88))(v15, v9);
  if (v23 != enum case for FBKSInteraction.Content.text(_:) && v23 != enum case for FBKSInteraction.Content.sourceCode(_:))
  {
    if (v23 == enum case for FBKSInteraction.Content.structured(_:))
    {
      v43 = v22;
      (*(v10 + 96))(v15, v9);
      v32 = v4;
      v33 = v46;
      (*(v4 + 32))(v48, v15, v46);
      type metadata accessor for JSONEncoder();
      swift_allocObject();
      v34 = JSONEncoder.init()();
      sub_100033520();
      v18 = v34;
      v35 = v47;
      v36 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v47 = v35;
      if (v35)
      {
      }

      else
      {
        v39 = v36;
        v18 = v37;

        static String.Encoding.utf8.getter();
        String.init(data:encoding:)();
        if (v40)
        {
          (*(v32 + 8))(v48, v33);
          sub_100013C98(v39, v18);
          v22 = v43;
          goto LABEL_6;
        }

        sub_10001BF40();
        swift_allocError();
        *v41 = 9;
        swift_willThrow();
        sub_100013C98(v39, v18);
      }

      sub_1000071C8(v45, &qword_100082CD8, &qword_100068EC8);
      (*(v32 + 8))(v48, v33);
      (*(v10 + 8))(v44, v9);
      return v18;
    }

    if (v23 != enum case for FBKSInteraction.Content.notification(_:) && v23 != enum case for FBKSInteraction.Content.mailMessage(_:) && v23 != enum case for FBKSInteraction.Content.html(_:))
    {
      sub_10001BF40();
      swift_allocError();
      *v38 = 1;
      swift_willThrow();
      sub_1000071C8(v45, &qword_100082CD8, &qword_100068EC8);
      v18 = *(v10 + 8);
      (v18)(v44, v9);
      (v18)(v15, v9);
      return v18;
    }
  }

  (*(v10 + 96))(v15, v9);
LABEL_6:
  v24 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v25 = String._bridgeToObjectiveC()();

  v18 = sub_100008714(0, &qword_100083530, BMCustomAttributes_ptr);
  v26 = v49;
  v27 = v44;
  v22(v49, v44, v9);
  v28 = v47;
  v29 = sub_100030CC4(v26);
  if (v28)
  {
  }

  else
  {
    v31 = v29;
    v18 = [v24 initWithText:v25 metadata:v29];
  }

  sub_1000071C8(v45, &qword_100082CD8, &qword_100068EC8);
  (*(v10 + 8))(v27, v9);
  return v18;
}

uint64_t *sub_100031A90(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004F70(&qword_100082CD8, &qword_100068EC8);
  __chkstk_darwin(v6 - 8);
  v8 = &v40 - v7;
  v9 = type metadata accessor for FBKSInteraction.Content();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v44 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = (&v40 - v14);
  __chkstk_darwin(v13);
  v17 = &v40 - v16;
  sub_100018B48(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v18 = &qword_100082CD8;
    sub_1000071C8(v8, &qword_100082CD8, &qword_100068EC8);
    sub_10001BF40();
    swift_allocError();
    *v19 = 3;
    swift_willThrow();
    sub_1000071C8(a1, &qword_100082CD8, &qword_100068EC8);
  }

  else
  {
    v43 = a1;
    (*(v10 + 32))(v17, v8, v9);
    v20 = *(v10 + 16);
    v20(v15, v17, v9);
    v21 = (*(v10 + 88))(v15, v9);
    v41 = v20;
    v42 = v17;
    if (v21 == enum case for FBKSInteraction.Content.file(_:))
    {
      (*(v10 + 96))(v15, v9);
      v22 = *(v3 + 32);
      v18 = (v3 + 32);
      v22(v5, v15, v2);
      v23 = v46;
      v24 = Data.init(contentsOf:options:)();
      v26 = (v18 - 3);
      v46 = v23;
      if (v23)
      {
        sub_1000071C8(v43, &qword_100082CD8, &qword_100068EC8);
        (*v26)(v5, v2);
        (*(v10 + 8))(v42, v9);
        return v18;
      }

      v29 = v24;
      v30 = v25;
      (*v26)(v5, v2);
      v27 = v29;
      v28 = v30;
    }

    else
    {
      if (v21 != enum case for FBKSInteraction.Content.image(_:) && v21 != enum case for FBKSInteraction.Content.audio(_:) && v21 != enum case for FBKSInteraction.Content.handwriting(_:) && v21 != enum case for FBKSInteraction.Content.sketch(_:) && v21 != enum case for FBKSInteraction.Content.video(_:) && v21 != enum case for FBKSInteraction.Content.emoji(_:))
      {
        sub_10001BF40();
        swift_allocError();
        *v39 = 1;
        swift_willThrow();
        sub_1000071C8(v43, &qword_100082CD8, &qword_100068EC8);
        v18 = *(v10 + 8);
        (v18)(v17, v9);
        (v18)(v15, v9);
        return v18;
      }

      (*(v10 + 96))(v15, v9);
      v27 = *v15;
      v28 = v15[1];
    }

    v45 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v31.super.isa = Data._bridgeToObjectiveC()().super.isa;
    v32 = v27;
    v18 = sub_100008714(0, &qword_100083530, BMCustomAttributes_ptr);
    v33 = v44;
    v34 = v42;
    v41(v44, v42, v9);
    v35 = v46;
    v36 = sub_100030CC4(v33);
    if (v35)
    {

      sub_100013C98(v32, v28);
    }

    else
    {
      v38 = v36;
      v18 = [v45 initWithImageData:v31.super.isa metadata:v36];

      sub_100013C98(v32, v28);
    }

    sub_1000071C8(v43, &qword_100082CD8, &qword_100068EC8);
    (*(v10 + 8))(v34, v9);
  }

  return v18;
}

uint64_t *sub_100032094(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v6 - 8);
  v81 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FBKSInteraction.StructuredValue();
  v9 = *(v8 - 8);
  v83 = v8;
  v84 = v9;
  v10 = __chkstk_darwin(v8);
  v80 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v82 = &v74 - v12;
  v13 = sub_100004F70(&qword_100082CD8, &qword_100068EC8);
  __chkstk_darwin(v13 - 8);
  v15 = &v74 - v14;
  v16 = type metadata accessor for FBKSInteraction.Content();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v85 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = (&v74 - v21);
  __chkstk_darwin(v20);
  v24 = &v74 - v23;
  sub_100018B48(a1, v15);
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    v79 = a1;
    (*(v17 + 32))(v24, v15, v16);
    v26 = *(v17 + 16);
    v86 = v24;
    v77 = v26;
    v26(v22, v24, v16);
    v27 = (*(v17 + 88))(v22, v16);
    v28 = v17;
    v78 = v17 + 16;
    if (v27 == enum case for FBKSInteraction.Content.file(_:))
    {
      (*(v17 + 96))(v22, v16);
      (*(v3 + 32))(v5, v22, v2);
      v84 = URL.lastPathComponent.getter();
      v29 = v87;
      v30 = Data.init(contentsOf:options:)();
      v32 = v17;
      v33 = v29;
      v34 = (v3 + 8);
      if (v29)
      {

        sub_1000071C8(v79, &qword_100082CD8, &qword_100068EC8);
        (*v34)(v5, v2);
        (*(v28 + 8))(v86, v16);
        return v5;
      }

      v38 = v30;
      v39 = v31;
      (*v34)(v5, v2);
      v36 = v38;
      v76 = v32;
      v37 = v39;
      goto LABEL_10;
    }

    v76 = v17;
    if (v27 == enum case for FBKSInteraction.Content.image(_:) || (v35 = v86, v27 == enum case for FBKSInteraction.Content.sketch(_:)) || v27 == enum case for FBKSInteraction.Content.imageText(_:) || v27 == enum case for FBKSInteraction.Content.sketchText(_:))
    {
      (*(v17 + 96))(v22, v16);
      v36 = *v22;
      v37 = v22[1];
      v33 = v87;
LABEL_10:
      v40 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v41 = String._bridgeToObjectiveC()();

      v42.super.isa = Data._bridgeToObjectiveC()().super.isa;
      v43 = v37;
      v44 = v36;
      v5 = sub_100008714(0, &qword_100083530, BMCustomAttributes_ptr);
      v45 = v85;
      v77(v85, v86, v16);
      v46 = sub_100030CC4(v45);
      if (!v33)
      {
        v48 = v46;
        v5 = [v40 initWithText:v41 imageData:v42.super.isa metadata:v46];

        sub_100013C98(v44, v43);
        sub_1000071C8(v79, &qword_100082CD8, &qword_100068EC8);
        (*(v76 + 8))(v86, v16);
        return v5;
      }

      sub_100013C98(v44, v43);
      sub_1000071C8(v79, &qword_100082CD8, &qword_100068EC8);
      goto LABEL_12;
    }

    if (v27 != enum case for FBKSInteraction.Content.imageStructured(_:))
    {
      if (v27 != enum case for FBKSInteraction.Content.sketchStructured(_:))
      {
        sub_10001BF40();
        swift_allocError();
        *v67 = 1;
        swift_willThrow();
        sub_1000071C8(v79, &qword_100082CD8, &qword_100068EC8);
        v5 = *(v17 + 8);
        (v5)(v35, v16);
        (v5)(v22, v16);
        return v5;
      }

      (*(v17 + 96))(v22, v16);
      v57 = v22[1];
      v75 = *v22;
      v82 = v57;
      v58 = v22 + *(sub_100004F70(&qword_100083550, &qword_100069800) + 48);
      v59 = v80;
      v60 = v83;
      (*(v84 + 32))(v80, v58, v83);
      type metadata accessor for JSONEncoder();
      swift_allocObject();
      v61 = JSONEncoder.init()();
      sub_100033520();
      v5 = v61;
      v62 = v87;
      v63 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      if (v62)
      {
        v65 = v28;

        v66 = v79;
      }

      else
      {
        v70 = v63;
        v5 = v64;

        static String.Encoding.utf8.getter();
        String.init(data:encoding:)();
        if (v71)
        {
          (*(v84 + 8))(v59, v83);
          sub_100013C98(v70, v5);
          v33 = 0;
          v36 = v75;
          v37 = v82;
          goto LABEL_10;
        }

        v65 = v76;
        sub_10001BF40();
        swift_allocError();
        *v73 = 9;
        swift_willThrow();
        sub_100013C98(v70, v5);
        v66 = v79;
        v60 = v83;
      }

      sub_100013C98(v75, v82);
      sub_1000071C8(v66, &qword_100082CD8, &qword_100068EC8);
      (*(v84 + 8))(v59, v60);
      (*(v65 + 8))(v86, v16);
      return v5;
    }

    (*(v17 + 96))(v22, v16);
    v37 = v22[1];
    v75 = *v22;
    v49 = sub_100004F70(&qword_100083558, &qword_100069808);
    v50 = v83;
    v51 = v22 + *(v49 + 48);
    v52 = v82;
    (*(v84 + 32))(v82, v51, v83);
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    v53 = JSONEncoder.init()();
    sub_100033520();
    v5 = v53;
    v54 = v87;
    v55 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v33 = v54;
    if (v54)
    {
    }

    else
    {
      v68 = v55;
      v5 = v56;

      static String.Encoding.utf8.getter();
      String.init(data:encoding:)();
      if (v69)
      {
        (*(v84 + 8))(v82, v83);
        sub_100013C98(v68, v5);
        v36 = v75;
        goto LABEL_10;
      }

      sub_10001BF40();
      swift_allocError();
      *v72 = 9;
      swift_willThrow();
      sub_100013C98(v68, v5);
      v52 = v82;
      v50 = v83;
    }

    sub_100013C98(v75, v37);
    sub_1000071C8(v79, &qword_100082CD8, &qword_100068EC8);
    (*(v84 + 8))(v52, v50);
LABEL_12:
    (*(v76 + 8))(v86, v16);
    return v5;
  }

  v5 = &qword_100082CD8;
  sub_1000071C8(v15, &qword_100082CD8, &qword_100068EC8);
  sub_10001BF40();
  swift_allocError();
  *v25 = 3;
  swift_willThrow();
  sub_1000071C8(a1, &qword_100082CD8, &qword_100068EC8);
  return v5;
}

id sub_100032B70(uint64_t a1, uint64_t a2)
{
  result = [v2 metadata];
  if (result)
  {
    v6 = result;
    v7 = sub_1000311D8(a1, a2);
    if (v7 && (v8 = v7, v9 = [v7 stringValue], v8, v9))
    {
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v10;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_100032C20(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = type metadata accessor for FBKSInteraction.FeatureDomain();
  v65 = *(v6 - 8);
  __chkstk_darwin(v6);
  v64 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_100004F70(&qword_100082D30, &qword_100069058);
  __chkstk_darwin(v69);
  v9 = &v56 - v8;
  v10 = sub_100004F70(&qword_100082808, &qword_100068380);
  v11 = __chkstk_darwin(v10 - 8);
  v66 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v56 - v13;
  v15 = a1;
  dispatch thunk of FBKSInteraction.donationID.getter();
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v62 = *(v17 + 48);
  v63 = v17 + 48;
  if (v62(v14, 1, v16) == 1)
  {

    sub_1000071C8(v14, &qword_100082808, &qword_100068380);
    sub_10001BF40();
    swift_allocError();
    *v18 = 12;
    swift_willThrow();

    return v15;
  }

  v56 = v17;
  v57 = v16;
  sub_1000071C8(v14, &qword_100082808, &qword_100068380);
  v19 = dispatch thunk of FBKSInteraction.auxiliaryMetrics.getter();
  v60 = v4;
  v58 = v6;
  if (v19)
  {
    sub_10002FBDC(v19);
  }

  v20 = objc_allocWithZone(BMCustomAttributes);
  sub_100008714(0, &qword_100083518, BMCustomAttributesNamedValue_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v22 = [v20 initWithAttributeDict:isa];

  v70 = _swiftEmptyArrayStorage;
  v23 = dispatch thunk of FBKSInteraction.prefillQuestions.getter();
  v61 = v15;
  v59 = v22;
  if (!v23)
  {
LABEL_18:
    v40 = v64;
    dispatch thunk of FBKSInteraction.featureDomain.getter();
    FBKSInteraction.FeatureDomain.description.getter();
    (*(v65 + 8))(v40, v58);
    v41 = String._bridgeToObjectiveC()();

    dispatch thunk of FBKSInteraction.bundleID.getter();
    v42 = v66;
    if (v43)
    {
      v69 = String._bridgeToObjectiveC()();
    }

    else
    {
      v69 = 0;
    }

    dispatch thunk of FBKSInteraction.donationID.getter();
    v44 = v57;
    if (v62(v42, 1, v57) == 1)
    {
      v45 = 0;
    }

    else
    {
      v45 = UUID._bridgeToObjectiveC()().super.isa;
      (*(v56 + 8))(v42, v44);
    }

    dispatch thunk of FBKSInteraction.isHighPriority.getter();
    v46.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
    dispatch thunk of FBKSInteraction.diagnostics.getter();
    v47 = v15;
    v49 = v48;

    v67 = v3;
    v50 = v41;
    if (v49)
    {
      v51 = String._bridgeToObjectiveC()();
    }

    else
    {
      v51 = 0;
    }

    v52 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    sub_100008714(0, &qword_100083510, BMEvaluationCommonMetadataQuestionAnswer_ptr);
    v53 = Array._bridgeToObjectiveC()().super.isa;
    v54 = v59;
    v55 = v69;
    v15 = [v52 initWithFeatureDomain:v50 bundleId:v69 evaluationUuid:v45 isHighPriority:v46.super.super.isa diagnostics:v51 prefilledQuestions:v53 auxiliaryAttributes:v59 systemBuild:0 modelVersion:0];

    return v15;
  }

  v24 = v23;
  v67 = v2;
  v25 = v23 + 64;
  v26 = 1 << *(v23 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v23 + 64);
  v29 = (v26 + 63) >> 6;

  v31 = 0;
  v68 = result;
  if (v28)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v32 >= v29)
    {

      v3 = v67;
      v15 = v61;
      goto LABEL_18;
    }

    v28 = *(v25 + 8 * v32);
    ++v31;
    if (v28)
    {
      v31 = v32;
      do
      {
LABEL_13:
        v33 = __clz(__rbit64(v28)) | (v31 << 6);
        v34 = *(v24 + 48);
        v35 = type metadata accessor for FBKSForm.Question();
        (*(*(v35 - 8) + 16))(v9, v34 + *(*(v35 - 8) + 72) * v33, v35);
        *&v9[*(v69 + 48)] = *(*(v24 + 56) + 8 * v33);

        FBKSForm.Question.stringValue.getter();
        v36 = v9;
        v37 = objc_allocWithZone(BMEvaluationCommonMetadataQuestionAnswer);
        v38 = String._bridgeToObjectiveC()();

        v39 = Array._bridgeToObjectiveC()().super.isa;
        [v37 initWithQuestion:v38 answer:v39];

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v28 &= v28 - 1;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        result = sub_1000071C8(v36, &qword_100082D30, &qword_100069058);
        v9 = v36;
        v24 = v68;
      }

      while (v28);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100033310(uint64_t a1)
{
  v2 = type metadata accessor for FBKSEvaluation.Action();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for FBKSEvaluation.Action.thumbsUp(_:))
  {
    v5 = 2;
  }

  else if (v6 == enum case for FBKSEvaluation.Action.thumbsDown(_:))
  {
    v5 = 3;
  }

  else if (v6 == enum case for FBKSEvaluation.Action.reportConcern(_:))
  {
    v5 = 4;
  }

  else if (v6 == enum case for FBKSEvaluation.Action.skip(_:))
  {
    v5 = 5;
  }

  else if (v6 == enum case for FBKSEvaluation.Action.invalidData(_:))
  {
    v5 = 6;
  }

  else
  {
    if (v6 != enum case for FBKSEvaluation.Action.contentDeleted(_:))
    {
      sub_10001BF40();
      swift_allocError();
      *v8 = 11;
      swift_willThrow();
      v9 = *(v3 + 8);
      v9(a1, v2);
      v9(v5, v2);
      return v5;
    }

    v5 = 7;
  }

  (*(v3 + 8))(a1, v2);
  return v5;
}

unint64_t sub_100033520()
{
  result = qword_100083538;
  if (!qword_100083538)
  {
    type metadata accessor for FBKSInteraction.StructuredValue();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083538);
  }

  return result;
}

uint64_t sub_100033578(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_100033588()
{
  type metadata accessor for LongTermPersistence(0);
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = OBJC_IVAR____TtC9feedbackd19LongTermPersistence____lazy_storage___feedbackdDirectory;
  v2 = sub_100004F70(&unk_1000835A8, qword_100069860);
  result = (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  qword_100085E18 = v0;
  return result;
}

uint64_t sub_10003361C()
{
  v0 = sub_100004F70(&unk_1000835A8, qword_100069860);
  __chkstk_darwin(v0 - 8);
  v2 = &v21 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000826B8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100002D00(v7, SharedLog);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_1000049B8(0x6C416574656C6564, 0xEF2928617461446CLL, &v21);
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s", v10, 0xCu);
    sub_100005ED8(v11);
  }

  sub_100038194(0, v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_1000071C8(v2, &unk_1000835A8, qword_100069860);
  }

  (*(v4 + 32))(v6, v2, v3);
  v13 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v14);
  v16 = v15;
  v21 = 0;
  v17 = [v13 removeItemAtURL:v15 error:&v21];

  if (v17)
  {
    v18 = *(v4 + 8);
    v19 = v21;
    return v18(v6, v3);
  }

  else
  {
    v20 = v21;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return (*(v4 + 8))(v6, v3);
  }
}

void sub_100033994(void *a1, void *a2, uint64_t a3)
{
  v41 = a1;
  v4 = sub_100004F70(&unk_1000835A8, qword_100069860);
  __chkstk_darwin(v4 - 8);
  v6 = &v38 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v39 = &v38 - v12;
  if (qword_1000826B8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_100002D00(v13, SharedLog);

  v40 = v14;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v38 = v7;
    v18 = v17;
    v43 = swift_slowAlloc();
    *v18 = 136446466;
    *(v18 + 4) = sub_1000049B8(0xD00000000000002BLL, 0x800000010006BE30, &v43);
    *(v18 + 12) = 2082;
    *(v18 + 14) = sub_1000049B8(v41, a2, &v43);
    _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s [%{public}s]", v18, 0x16u);
    swift_arrayDestroy();

    v7 = v38;
  }

  v19 = static FBKSError.xpcSafeNSError(error:)();
  v20 = objc_opt_self();
  v43 = 0;
  v21 = [v20 archivedDataWithRootObject:v19 requiringSecureCoding:1 error:&v43];
  v22 = v43;
  if (v21)
  {
    v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    sub_1000387DC(v41, a2, 0x73726F727265, 0xE600000000000000, 1, v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {

      sub_100013C98(v23, v25);
      sub_1000071C8(v6, &unk_1000835A8, qword_100069860);
    }

    else
    {
      v28 = v39;
      (*(v8 + 32))(v39, v6, v7);
      sub_100033F4C(v11);
      Data.write(to:options:)();
      sub_100013C98(v23, v25);

      v37 = *(v8 + 8);
      v37(v11, v7);
      v37(v28, v7);
    }
  }

  else
  {
    v26 = v22;
    v27 = _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v43 = v33;
      *v32 = 136446210;
      v42 = v27;
      swift_errorRetain();
      sub_100004F70(&unk_1000833F0, &unk_100068F00);
      v34 = String.init<A>(describing:)();
      v36 = sub_1000049B8(v34, v35, &v43);

      *(v32 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v29, v30, "Failed to save failure to collect: %{public}s", v32, 0xCu);
      sub_100005ED8(v33);
    }

    else
    {
    }
  }
}

uint64_t sub_100033F4C@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v1 = type metadata accessor for URL.DirectoryHint();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for URL();
  v9 = *(v20 - 8);
  __chkstk_darwin(v20);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(NSISO8601DateFormatter) init];
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v8, v5);
  v14 = [v12 stringFromDate:isa];

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v22 = v15;
  v23 = v17;
  (*(v2 + 104))(v4, enum case for URL.DirectoryHint.notDirectory(_:), v1);
  sub_1000070C4();
  URL.appending<A>(path:directoryHint:)();
  (*(v2 + 8))(v4, v1);

  URL.appendingPathExtension(_:)();
  return (*(v9 + 8))(v11, v20);
}

void sub_100034220(void *a1, void *a2, void *a3)
{
  v6 = type metadata accessor for URL.DirectoryHint();
  v64 = *(v6 - 8);
  v65 = v6;
  __chkstk_darwin(v6);
  v62 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004F70(&unk_1000835A8, qword_100069860);
  __chkstk_darwin(v8 - 8);
  v67 = &v61 - v9;
  v10 = type metadata accessor for URL();
  v70 = *(v10 - 8);
  v71 = v10;
  v11 = __chkstk_darwin(v10);
  v61 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v63 = &v61 - v14;
  __chkstk_darwin(v13);
  v69 = &v61 - v15;
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000826B8 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = sub_100002D00(v20, SharedLog);

  v66 = v21;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v74[0] = swift_slowAlloc();
    *v24 = 136446722;
    *(v24 + 4) = sub_1000049B8(0xD000000000000039, 0x800000010006BDF0, v74);
    *(v24 + 12) = 2082;
    *(v24 + 14) = sub_1000049B8(a1, a2, v74);
    *(v24 + 22) = 2050;
    *(v24 + 24) = a3;
    _os_log_impl(&_mh_execute_header, v22, v23, "%{public}s [%{public}s] id: [%{public}ld] ", v24, 0x20u);
    swift_arrayDestroy();
  }

  v25 = type metadata accessor for FeedbackSubmission(0);
  v26 = objc_allocWithZone(v25);
  v27 = &v26[OBJC_IVAR____TtC9feedbackd18FeedbackSubmission_formIdentifier];
  *v27 = a1;
  *(v27 + 1) = a2;

  Date.init()();
  (*(v17 + 32))(&v26[OBJC_IVAR____TtC9feedbackd18FeedbackSubmission_date], v19, v16);
  *&v26[OBJC_IVAR____TtC9feedbackd18FeedbackSubmission_feedbackId] = a3;
  v28 = [objc_opt_self() swVers];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v32 = &v26[OBJC_IVAR____TtC9feedbackd18FeedbackSubmission_build];
  *v32 = v29;
  v32[1] = v31;
  v73.receiver = v26;
  v73.super_class = v25;
  v33 = objc_msgSendSuper2(&v73, "init");
  v34 = objc_opt_self();
  v74[0] = 0;
  v35 = [v34 archivedDataWithRootObject:v33 requiringSecureCoding:1 error:v74];
  v36 = v74[0];
  if (v35)
  {
    v37 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    v40 = v67;
    sub_1000387DC(a1, a2, 0x657474696D627573, 0xE900000000000064, 1, v67);
    if ((*(v70 + 48))(v40, 1, v71) == 1)
    {

      sub_100013C98(v37, v39);
      sub_1000071C8(v40, &unk_1000835A8, qword_100069860);
    }

    else
    {
      v68 = v33;
      v43 = v70;
      (*(v70 + 32))(v69, v40, v71);
      v74[0] = a3;
      v74[0] = dispatch thunk of CustomStringConvertible.description.getter();
      v74[1] = v44;
      v46 = v64;
      v45 = v65;
      v47 = v39;
      v48 = v62;
      (*(v64 + 104))(v62, enum case for URL.DirectoryHint.notDirectory(_:), v65);
      sub_1000070C4();
      v49 = v61;
      URL.appending<A>(path:directoryHint:)();
      (*(v46 + 8))(v48, v45);

      v50 = v63;
      URL.appendingPathExtension(_:)();
      v51 = *(v43 + 8);
      v51(v49, v71);
      Data.write(to:options:)();
      sub_100013C98(v37, v47);

      v60 = v71;
      v51(v50, v71);
      v51(v69, v60);
    }
  }

  else
  {
    v41 = v36;
    v42 = _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v74[0] = v56;
      *v55 = 136446210;
      v72 = v42;
      swift_errorRetain();
      sub_100004F70(&unk_1000833F0, &unk_100068F00);
      v57 = String.init<A>(describing:)();
      v59 = sub_1000049B8(v57, v58, v74);

      *(v55 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v52, v53, "Failed to save feedback: %{public}s", v55, 0xCu);
      sub_100005ED8(v56);
    }

    else
    {
    }
  }
}

uint64_t sub_100034A7C(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_100004F70(&unk_1000835A8, qword_100069860);
  __chkstk_darwin(v6 - 8);
  v8 = v25 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v25 - v14;
  if (qword_1000826B8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = sub_100002D00(v16, SharedLog);

  v27 = v17;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v26 = v13;
    v21 = v20;
    v22 = swift_slowAlloc();
    v25[1] = v3;
    v28[0] = v22;
    *v21 = 136446466;
    *(v21 + 4) = sub_1000049B8(0xD000000000000025, 0x800000010006BDC0, v28);
    *(v21 + 12) = 2082;
    *(v21 + 14) = sub_1000049B8(a1, a2, v28);
    _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s [%{public}s]", v21, 0x16u);
    swift_arrayDestroy();

    v13 = v26;
  }

  sub_1000387DC(a1, a2, 0x64656E696C636564, 0xE800000000000000, 1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000071C8(v8, &unk_1000835A8, qword_100069860);
  }

  (*(v10 + 32))(v15, v8, v9);
  sub_100033F4C(v13);
  Data.write(to:options:)();
  v24 = *(v10 + 8);
  v24(v13, v9);
  return (v24)(v15, v9);
}

void *sub_100034EE0(void *a1, void *a2)
{
  v19 = type metadata accessor for Date();
  v4 = *(v19 - 8);
  __chkstk_darwin(v19);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v7 = sub_1000362DC(a1, a2, 0x657474696D627573, 0xE900000000000064);
  v8 = v7;
  if (!(v7 >> 62))
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_11:

    return _swiftEmptyArrayStorage;
  }

  v9 = _CocoaArrayWrapper.endIndex.getter();
  if (!v9)
  {
    goto LABEL_11;
  }

LABEL_3:
  v21 = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v9 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = 0;
    v17 = v8 & 0xC000000000000001;
    v18 = v8;
    v12 = (v4 + 16);
    do
    {
      if (v17)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v13 = *(v8 + 8 * v11 + 32);
      }

      v14 = v13;
      ++v11;
      (*v12)(v6, &v13[OBJC_IVAR____TtC9feedbackd18FeedbackSubmission_date], v19);
      v15 = objc_allocWithZone(type metadata accessor for FBKSFeedback());

      FBKSFeedback.init(formIdentifier:submissionDate:build:id:)();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v8 = v18;
    }

    while (v9 != v11);

    return v21;
  }

  return result;
}

void *sub_100035140(void *a1, void *a2)
{
  v4 = sub_100004F70(&qword_1000836B0, &qword_1000698A8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_100037240(a1, a2, 0x73726F727265, 0xE600000000000000);
  v9 = v8[2];
  if (v9)
  {
    v14 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v10 = 0;
    v12 = v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    while (v10 < v8[2])
    {
      sub_10000C0A0(&v12[*(v5 + 72) * v10], v7, &qword_1000836B0, &qword_1000698A8);
      sub_100035328(v7, &v13);
      sub_1000071C8(v7, &qword_1000836B0, &qword_1000698A8);
      ++v10;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v9 == v10)
      {

        return v14;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return result;
}

void sub_100035328(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v32 = a2;
  v3 = type metadata accessor for Date();
  __chkstk_darwin(v3 - 8);
  v31 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100004F70(&qword_1000836B0, &qword_1000698A8);
  __chkstk_darwin(v5);
  v7 = (&v25 - v6);
  sub_10000C0A0(a1, &v25 - v6, &qword_1000836B0, &qword_1000698A8);
  v8 = *v7;
  v30 = v5;
  v9 = *(v5 + 48);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  v28 = v11 + 8;
  v29 = v12;
  v12(v7 + v9, v10);
  v13 = [v8 userInfo];
  v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v14 + 16))
  {

LABEL_8:
    v26 = 0x6E776F6E6B6E55;
    v27 = 0xE700000000000000;
    goto LABEL_9;
  }

  v17 = a1;
  v18 = sub_10005BCB0(v15, v16);
  v20 = v19;

  if ((v20 & 1) == 0)
  {

    goto LABEL_7;
  }

  sub_100007018(*(v14 + 56) + 32 * v18, v35);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    a1 = v17;
    goto LABEL_8;
  }

  v26 = v33;
  v27 = v34;
  a1 = v17;
LABEL_9:
  [v8 code];
  v21 = [v8 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10000C0A0(a1, v7, &qword_1000836B0, &qword_1000698A8);
  v22 = *(v30 + 48);
  sub_100035648(v31);
  v29(v7 + v22, v10);
  v23 = objc_allocWithZone(type metadata accessor for FBKSCampaignError());
  v24 = FBKSCampaignError.init(code:domain:errorDescription:date:)();

  *v32 = v24;
}

void sub_100035648(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004F70(&unk_100083410, &qword_100068D50);
  __chkstk_darwin(v8 - 8);
  v10 = &v43 - v9;
  v49[0] = URL.lastPathComponent.getter();
  v49[1] = v11;
  v47 = 0x7473696C702ELL;
  v48 = 0xE600000000000000;
  v45 = 0;
  v46 = 0xE000000000000000;
  sub_1000070C4();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v12 = [objc_allocWithZone(NSISO8601DateFormatter) init];
  v13 = String._bridgeToObjectiveC()();

  v14 = [v12 dateFromString:v13];

  if (v14)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v15 = [objc_opt_self() defaultManager];
    URL.path.getter();
    v16 = String._bridgeToObjectiveC()();

    v49[0] = 0;
    v17 = [v15 attributesOfItemAtPath:v16 error:v49];

    v18 = v49[0];
    if (v17)
    {
      v44 = a1;
      type metadata accessor for FileAttributeKey(0);
      sub_100039420(&qword_1000829D8, type metadata accessor for FileAttributeKey, &unk_100068B24);
      v19 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v18;

      if (*(v19 + 16) && (v21 = sub_10005BE74(NSFileCreationDate), (v22 & 1) != 0))
      {
        sub_100007018(*(v19 + 56) + 32 * v21, v49);

        v23 = type metadata accessor for Date();
        v24 = swift_dynamicCast();
        v25 = *(v23 - 8);
        (*(v25 + 56))(v10, v24 ^ 1u, 1, v23);
        if ((*(v25 + 48))(v10, 1, v23) != 1)
        {

          (*(v25 + 32))(v44, v10, v23);
          return;
        }
      }

      else
      {

        v26 = type metadata accessor for Date();
        (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
      }

      sub_1000071C8(v10, &unk_100083410, &qword_100068D50);
      if (qword_1000826B8 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_100002D00(v27, SharedLog);
      (*(v5 + 16))(v7, v2, v4);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v49[0] = v31;
        *v30 = 136446210;
        sub_100039420(&qword_1000836B8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v32 = dispatch thunk of CustomStringConvertible.description.getter();
        v34 = v33;
        (*(v5 + 8))(v7, v4);
        v35 = sub_1000049B8(v32, v34, v49);

        *(v30 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v28, v29, "Error getting date from url [%{public}s]", v30, 0xCu);
        sub_100005ED8(v31);
      }

      else
      {

        (*(v5 + 8))(v7, v4);
      }

      Date.init()();
    }

    else
    {
      v36 = v49[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1000826B8 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_100002D00(v37, SharedLog);
      swift_errorRetain();
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v40 = 138543362;
        swift_errorRetain();
        v42 = _swift_stdlib_bridgeErrorToNSError();
        *(v40 + 4) = v42;
        *v41 = v42;
        _os_log_impl(&_mh_execute_header, v38, v39, "Error getting date from url [%{public}@]", v40, 0xCu);
        sub_1000071C8(v41, &qword_100082708, &qword_100068320);
      }

      Date.init()();
    }
  }
}

uint64_t sub_100035DAC(void *a1, void *a2)
{
  v4 = sub_100004F70(&unk_1000835A8, qword_100069860);
  __chkstk_darwin(v4 - 8);
  v6 = &v37 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v37 - v12;
  sub_1000387DC(a1, a2, 0x64656E696C636564, 0xE800000000000000, 0, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000071C8(v6, &unk_1000835A8, qword_100069860);
    return 0;
  }

  (*(v8 + 32))(v13, v6, v7);
  v15 = objc_opt_self();

  v16 = [v15 defaultManager];
  sub_100004F70(&qword_1000836A8, &qword_1000698A0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100069110;
  *(v17 + 32) = NSURLIsDirectoryKey;
  v18 = NSURLIsDirectoryKey;
  v19 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  if (!v19)
  {
    if (qword_1000826B8 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100002D00(v27, SharedLog);
    (*(v8 + 16))(v11, v13, v7);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v38 = v31;
      *v30 = 136446210;
      v37 = URL.path.getter();
      v33 = v32;
      v34 = *(v8 + 8);
      v34(v11, v7);
      v35 = sub_1000049B8(v37, v33, &v38);

      *(v30 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v28, v29, "Failed to read directory [%{public}s]", v30, 0xCu);
      sub_100005ED8(v31);

      v34(v13, v7);
    }

    else
    {

      v36 = *(v8 + 8);
      v36(v11, v7);
      v36(v13, v7);
    }

    return 0;
  }

  v20 = [v19 allObjects];
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = *(v21 + 16);

  if (qword_1000826B8 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100002D00(v22, SharedLog);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 134349056;
    *(v25 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v23, v24, "Declined count [%{public}ld]", v25, 0xCu);
  }

  (*(v8 + 8))(v13, v7);
  return v14;
}

void *sub_1000362DC(void *a1, void *a2, void *a3, uint64_t a4)
{
  v8 = sub_100004F70(&qword_1000836C8, &qword_1000698B0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v22 - v13;
  v15 = sub_1000364F4(a1, a2, a3, a4);
  v16 = v15[2];
  if (v16)
  {
    v24 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v17 = v15 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v18 = *(v9 + 72);
    v22[1] = v15;
    v23 = v18;
    do
    {
      sub_10000C0A0(v17, v14, &qword_1000836C8, &qword_1000698B0);
      sub_100039468(v14, v12, &qword_1000836C8, &qword_1000698B0);
      v19 = *(v8 + 48);
      v20 = type metadata accessor for URL();
      (*(*(v20 - 8) + 8))(&v12[v19], v20);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v17 += v23;
      --v16;
    }

    while (v16);

    return v24;
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }
}

void *sub_1000364F4(void *a1, void *a2, void *a3, uint64_t a4)
{
  v107 = sub_100004F70(&qword_1000836C8, &qword_1000698B0);
  v106 = *(v107 - 8);
  v8 = __chkstk_darwin(v107);
  v109 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v105 = &v98 - v11;
  __chkstk_darwin(v10);
  v108 = (&v98 - v12);
  v13 = type metadata accessor for NSFastEnumerationIterator();
  v110 = *(v13 - 8);
  v111 = v13;
  __chkstk_darwin(v13);
  v15 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100004F70(&unk_1000835A8, qword_100069860);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v98 - v20;
  v22 = type metadata accessor for URL();
  v23 = __chkstk_darwin(v22);
  v112 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v120 = &v98 - v26;
  v27 = __chkstk_darwin(v25);
  v117 = (&v98 - v28);
  __chkstk_darwin(v27);
  v30 = &v98 - v29;
  v31 = a4;
  v33 = v32;
  sub_1000387DC(a1, a2, a3, v31, 0, v21);
  if ((*(v33 + 48))(v21, 1, v22) == 1)
  {
    sub_1000071C8(v21, &unk_1000835A8, qword_100069860);
    return _swiftEmptyArrayStorage;
  }

  v118 = *(v33 + 32);
  v119 = v33 + 32;
  v118(v30, v21, v22);
  v35 = objc_opt_self();

  v36 = [v35 defaultManager];
  sub_100004F70(&qword_1000836A8, &qword_1000698A0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_100069110;
  *(v37 + 32) = NSURLIsDirectoryKey;
  v38 = NSURLIsDirectoryKey;
  v39 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  if (!v39)
  {
    if (qword_1000826B8 != -1)
    {
      swift_once();
    }

    v84 = type metadata accessor for Logger();
    sub_100002D00(v84, SharedLog);
    v85 = v117;
    (*(v33 + 16))(v117, v30, v22);
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v123[0] = v89;
      *v88 = 136446210;
      v90 = URL.path.getter();
      v91 = v30;
      v92 = v33;
      v94 = v93;
      v95 = *(v92 + 8);
      v95(v85, v22);
      v96 = sub_1000049B8(v90, v94, v123);

      *(v88 + 4) = v96;
      _os_log_impl(&_mh_execute_header, v86, v87, "Failed to read directory [%{public}s]", v88, 0xCu);
      sub_100005ED8(v89);

      v95(v91, v22);
    }

    else
    {

      v97 = *(v33 + 8);
      v97(v85, v22);
      v97(v30, v22);
    }

    return _swiftEmptyArrayStorage;
  }

  v100 = v39;
  NSEnumerator.makeIterator()();
  NSFastEnumerationIterator.next()();
  v101 = v33;
  if (v124)
  {
    v41 = 0;
    v42 = v33;
    v43 = (v33 + 56);
    v117 = (v42 + 8);
    v103 = _swiftEmptyArrayStorage;
    v102 = (v42 + 16);
    *&v40 = 136446210;
    v114 = v40;
    v115 = v30;
    v116 = v15;
    v44 = v120;
    v113 = v19;
    while (1)
    {
      while (1)
      {
        v45 = swift_dynamicCast();
        v46 = *v43;
        if (v45)
        {
          break;
        }

        v46(v19, 1, 1, v22);
        sub_1000071C8(v19, &unk_1000835A8, qword_100069860);
LABEL_8:
        NSFastEnumerationIterator.next()();
        if (!v124)
        {
          goto LABEL_36;
        }
      }

      v46(v19, 0, 1, v22);
      v118(v44, v19, v22);
      v47 = v41;
      v48 = Data.init(contentsOf:options:)();
      if (v41)
      {
        v41 = 0;
        if (qword_1000826B8 != -1)
        {
          swift_once();
        }

        v53 = type metadata accessor for Logger();
        sub_100002D00(v53, SharedLog);
        swift_errorRetain();
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v121 = v47;
          v122[0] = v57;
          *v56 = v114;
          swift_errorRetain();
          sub_100004F70(&unk_1000833F0, &unk_100068F00);
          v58 = String.init<A>(describing:)();
          v60 = sub_1000049B8(v58, v59, v122);

          *(v56 + 4) = v60;
          v30 = v115;
          _os_log_impl(&_mh_execute_header, v54, v55, "Failed to read item with error: [%{public}s]", v56, 0xCu);
          sub_100005ED8(v57);
          v41 = 0;
          v19 = v113;

          v15 = v116;
        }

        else
        {
        }

        v44 = v120;
        (*v117)(v120, v22);
        goto LABEL_8;
      }

      v50 = v48;
      v51 = v49;
      sub_100008714(0, &qword_1000836C0, NSKeyedUnarchiver_ptr);
      type metadata accessor for FeedbackSubmission(0);
      v52 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
      v104 = 0;
      if (!v52)
      {
        if (qword_1000826B8 != -1)
        {
          swift_once();
        }

        v61 = type metadata accessor for Logger();
        sub_100002D00(v61, SharedLog);
        v62 = v112;
        (*v102)(v112, v44, v22);
        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          v122[0] = v99;
          *v65 = v114;
          sub_100039420(&qword_1000836B8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v98 = v63;
          v66 = dispatch thunk of CustomStringConvertible.description.getter();
          v67 = v62;
          v69 = v68;
          v70 = *v117;
          (*v117)(v67, v22);
          v71 = sub_1000049B8(v66, v69, v122);

          *(v65 + 4) = v71;
          v72 = v98;
          _os_log_impl(&_mh_execute_header, v98, v64, "Failed to decode NSError in [%{public}s]", v65, 0xCu);
          sub_100005ED8(v99);

          v44 = v120;

          sub_100013C98(v50, v51);

          v70(v44, v22);
          v30 = v115;
        }

        else
        {
          sub_100013C98(v50, v51);

          v73 = *v117;
          (*v117)(v62, v22);
          v73(v44, v22);
        }

        v15 = v116;
        v41 = v104;
        goto LABEL_8;
      }

      v74 = v107;
      v75 = *(v107 + 48);
      v76 = v108;
      *v108 = v52;
      (*v102)(v76 + v75, v44, v22);
      v77 = v76;
      v78 = v105;
      sub_10000C0A0(v77, v105, &qword_1000836C8, &qword_1000698B0);
      v79 = *(v74 + 48);
      v80 = v109;
      *v109 = *v78;
      v118(&v80[v79], &v78[v79], v22);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v103 = sub_100065DF0(0, v103[2] + 1, 1, v103);
      }

      v82 = v103[2];
      v81 = v103[3];
      if (v82 >= v81 >> 1)
      {
        v103 = sub_100065DF0((v81 > 1), v82 + 1, 1, v103);
      }

      sub_100013C98(v50, v51);
      sub_1000071C8(v108, &qword_1000836C8, &qword_1000698B0);
      (*v117)(v44, v22);
      v83 = v103;
      v103[2] = v82 + 1;
      sub_100039468(v109, v83 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v82, &qword_1000836C8, &qword_1000698B0);
      NSFastEnumerationIterator.next()();
      v41 = v104;
      if (!v124)
      {
        goto LABEL_36;
      }
    }
  }

  v103 = _swiftEmptyArrayStorage;
LABEL_36:

  (*(v110 + 8))(v15, v111);
  (*(v101 + 8))(v30, v22);
  return v103;
}

void *sub_100037240(void *a1, void *a2, void *a3, uint64_t a4)
{
  v107 = sub_100004F70(&qword_1000836B0, &qword_1000698A8);
  v106 = *(v107 - 8);
  v8 = __chkstk_darwin(v107);
  v109 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v105 = &v98 - v11;
  __chkstk_darwin(v10);
  v108 = (&v98 - v12);
  v13 = type metadata accessor for NSFastEnumerationIterator();
  v110 = *(v13 - 8);
  v111 = v13;
  __chkstk_darwin(v13);
  v15 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100004F70(&unk_1000835A8, qword_100069860);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v98 - v20;
  v22 = type metadata accessor for URL();
  v23 = __chkstk_darwin(v22);
  v112 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v120 = &v98 - v26;
  v27 = __chkstk_darwin(v25);
  v117 = (&v98 - v28);
  __chkstk_darwin(v27);
  v30 = &v98 - v29;
  v31 = a4;
  v33 = v32;
  sub_1000387DC(a1, a2, a3, v31, 0, v21);
  if ((*(v33 + 48))(v21, 1, v22) == 1)
  {
    sub_1000071C8(v21, &unk_1000835A8, qword_100069860);
    return _swiftEmptyArrayStorage;
  }

  v118 = *(v33 + 32);
  v119 = v33 + 32;
  v118(v30, v21, v22);
  v35 = objc_opt_self();

  v36 = [v35 defaultManager];
  sub_100004F70(&qword_1000836A8, &qword_1000698A0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_100069110;
  *(v37 + 32) = NSURLIsDirectoryKey;
  v38 = NSURLIsDirectoryKey;
  v39 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  if (!v39)
  {
    if (qword_1000826B8 != -1)
    {
      swift_once();
    }

    v84 = type metadata accessor for Logger();
    sub_100002D00(v84, SharedLog);
    v85 = v117;
    (*(v33 + 16))(v117, v30, v22);
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v123[0] = v89;
      *v88 = 136446210;
      v90 = URL.path.getter();
      v91 = v30;
      v92 = v33;
      v94 = v93;
      v95 = *(v92 + 8);
      v95(v85, v22);
      v96 = sub_1000049B8(v90, v94, v123);

      *(v88 + 4) = v96;
      _os_log_impl(&_mh_execute_header, v86, v87, "Failed to read directory [%{public}s]", v88, 0xCu);
      sub_100005ED8(v89);

      v95(v91, v22);
    }

    else
    {

      v97 = *(v33 + 8);
      v97(v85, v22);
      v97(v30, v22);
    }

    return _swiftEmptyArrayStorage;
  }

  v100 = v39;
  NSEnumerator.makeIterator()();
  NSFastEnumerationIterator.next()();
  v101 = v33;
  if (v124)
  {
    v41 = 0;
    v42 = v33;
    v43 = (v33 + 56);
    v117 = (v42 + 8);
    v103 = _swiftEmptyArrayStorage;
    v102 = (v42 + 16);
    *&v40 = 136446210;
    v114 = v40;
    v115 = v30;
    v116 = v15;
    v44 = v120;
    v113 = v19;
    while (1)
    {
      while (1)
      {
        v45 = swift_dynamicCast();
        v46 = *v43;
        if (v45)
        {
          break;
        }

        v46(v19, 1, 1, v22);
        sub_1000071C8(v19, &unk_1000835A8, qword_100069860);
LABEL_8:
        NSFastEnumerationIterator.next()();
        if (!v124)
        {
          goto LABEL_36;
        }
      }

      v46(v19, 0, 1, v22);
      v118(v44, v19, v22);
      v47 = v41;
      v48 = Data.init(contentsOf:options:)();
      if (v41)
      {
        v41 = 0;
        if (qword_1000826B8 != -1)
        {
          swift_once();
        }

        v53 = type metadata accessor for Logger();
        sub_100002D00(v53, SharedLog);
        swift_errorRetain();
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v121 = v47;
          v122[0] = v57;
          *v56 = v114;
          swift_errorRetain();
          sub_100004F70(&unk_1000833F0, &unk_100068F00);
          v58 = String.init<A>(describing:)();
          v60 = sub_1000049B8(v58, v59, v122);

          *(v56 + 4) = v60;
          v30 = v115;
          _os_log_impl(&_mh_execute_header, v54, v55, "Failed to read item with error: [%{public}s]", v56, 0xCu);
          sub_100005ED8(v57);
          v41 = 0;
          v19 = v113;

          v15 = v116;
        }

        else
        {
        }

        v44 = v120;
        (*v117)(v120, v22);
        goto LABEL_8;
      }

      v50 = v48;
      v51 = v49;
      sub_100008714(0, &qword_1000836C0, NSKeyedUnarchiver_ptr);
      sub_100008714(0, &qword_100082D08, NSError_ptr);
      v52 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
      v104 = 0;
      if (!v52)
      {
        if (qword_1000826B8 != -1)
        {
          swift_once();
        }

        v61 = type metadata accessor for Logger();
        sub_100002D00(v61, SharedLog);
        v62 = v112;
        (*v102)(v112, v44, v22);
        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          v122[0] = v99;
          *v65 = v114;
          sub_100039420(&qword_1000836B8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v98 = v63;
          v66 = dispatch thunk of CustomStringConvertible.description.getter();
          v67 = v62;
          v69 = v68;
          v70 = *v117;
          (*v117)(v67, v22);
          v71 = sub_1000049B8(v66, v69, v122);

          *(v65 + 4) = v71;
          v72 = v98;
          _os_log_impl(&_mh_execute_header, v98, v64, "Failed to decode NSError in [%{public}s]", v65, 0xCu);
          sub_100005ED8(v99);

          v44 = v120;

          sub_100013C98(v50, v51);

          v70(v44, v22);
          v30 = v115;
        }

        else
        {
          sub_100013C98(v50, v51);

          v73 = *v117;
          (*v117)(v62, v22);
          v73(v44, v22);
        }

        v15 = v116;
        v41 = v104;
        goto LABEL_8;
      }

      v74 = v107;
      v75 = *(v107 + 48);
      v76 = v108;
      *v108 = v52;
      (*v102)(v76 + v75, v44, v22);
      v77 = v76;
      v78 = v105;
      sub_10000C0A0(v77, v105, &qword_1000836B0, &qword_1000698A8);
      v79 = *(v74 + 48);
      v80 = v109;
      *v109 = *v78;
      v118(&v80[v79], &v78[v79], v22);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v103 = sub_100065E14(0, v103[2] + 1, 1, v103);
      }

      v82 = v103[2];
      v81 = v103[3];
      if (v82 >= v81 >> 1)
      {
        v103 = sub_100065E14((v81 > 1), v82 + 1, 1, v103);
      }

      sub_100013C98(v50, v51);
      sub_1000071C8(v108, &qword_1000836B0, &qword_1000698A8);
      (*v117)(v44, v22);
      v83 = v103;
      v103[2] = v82 + 1;
      sub_100039468(v109, v83 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v82, &qword_1000836B0, &qword_1000698A8);
      NSFastEnumerationIterator.next()();
      v41 = v104;
      if (!v124)
      {
        goto LABEL_36;
      }
    }
  }

  v103 = _swiftEmptyArrayStorage;
LABEL_36:

  (*(v110 + 8))(v15, v111);
  (*(v101 + 8))(v30, v22);
  return v103;
}

uint64_t sub_100037F9C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100004F70(&qword_1000836A0, &qword_100069898);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC9feedbackd19LongTermPersistence____lazy_storage___feedbackdDirectory;
  swift_beginAccess();
  sub_10000C0A0(v1 + v9, v8, &qword_1000836A0, &qword_100069898);
  v10 = sub_100004F70(&unk_1000835A8, qword_100069860);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_100039468(v8, a1, &unk_1000835A8, qword_100069860);
  }

  sub_1000071C8(v8, &qword_1000836A0, &qword_100069898);
  sub_100038194(1, a1);
  sub_10000C0A0(a1, v6, &unk_1000835A8, qword_100069860);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_1000393B0(v6, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_100038194@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = type metadata accessor for URL.DirectoryHint();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for URL();
  v49 = *(v47 - 8);
  v7 = __chkstk_darwin(v47);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v47 - v10;
  v12 = objc_opt_self();
  v13 = [v12 defaultManager];
  static Strings.fbaGroupIdentifier.getter();
  v14 = String._bridgeToObjectiveC()();

  v15 = [v13 containerURLForSecurityApplicationGroupIdentifier:v14];

  if (v15)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v51[0] = static Strings.Daemon.directoryName.getter();
    v51[1] = v16;
    (*(v4 + 104))(v6, enum case for URL.DirectoryHint.isDirectory(_:), v3);
    sub_1000070C4();
    URL.appending<A>(path:directoryHint:)();
    (*(v4 + 8))(v6, v3);

    if (a1)
    {
      v17 = [v12 defaultManager];
      URL.path.getter();
      v18 = String._bridgeToObjectiveC()();

      v19 = [v17 fileExistsAtPath:v18 isDirectory:0];

      if (!v19)
      {
        v20 = [v12 defaultManager];
        URL._bridgeToObjectiveC()(v21);
        v23 = v22;
        v51[0] = 0;
        v24 = [v20 createDirectoryAtURL:v22 withIntermediateDirectories:1 attributes:0 error:v51];

        if (v24)
        {
          v25 = *(v49 + 8);
          v26 = v51[0];
          v27 = v47;
          v25(v11, v47);
LABEL_19:
          v46 = v48;
          (*(v49 + 32))(v48, v9, v27);
          return (*(v49 + 56))(v46, 0, 1, v27);
        }

        v36 = v51[0];
        v37 = _convertNSErrorToError(_:)();

        swift_willThrow();
        if (qword_1000826B8 != -1)
        {
          swift_once();
        }

        v38 = type metadata accessor for Logger();
        sub_100002D00(v38, SharedLog);
        swift_errorRetain();
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v51[0] = v42;
          *v41 = 136446210;
          v50 = v37;
          swift_errorRetain();
          sub_100004F70(&unk_1000833F0, &unk_100068F00);
          v43 = String.init<A>(describing:)();
          v45 = sub_1000049B8(v43, v44, v51);

          *(v41 + 4) = v45;
          _os_log_impl(&_mh_execute_header, v39, v40, "Failed to create feedbackd directory: %{public}s", v41, 0xCu);
          sub_100005ED8(v42);
        }
      }
    }

    v27 = v47;
    (*(v49 + 8))(v11, v47);
    goto LABEL_19;
  }

  if (qword_1000826B8 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_100002D00(v28, SharedLog);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "Failed to lookup container directory", v31, 2u);
  }

  v32 = *(v49 + 56);
  v34 = v47;
  v33 = v48;

  return v32(v33, 1, 1, v34);
}

uint64_t sub_1000387DC@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v80 = a5;
  v85 = a2;
  v86 = a4;
  v83 = a1;
  v84 = a3;
  v88 = a6;
  v81 = type metadata accessor for URL.DirectoryHint();
  v6 = *(v81 - 8);
  __chkstk_darwin(v81);
  v8 = v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v82 = v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = v75 - v14;
  __chkstk_darwin(v13);
  v17 = v75 - v16;
  v18 = sub_100004F70(&unk_1000835A8, qword_100069860);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = v75 - v23;
  __chkstk_darwin(v22);
  v26 = v75 - v25;
  sub_100037F9C(v24);
  v27 = v9;
  v87 = v10[6];
  if (v87(v24, 1, v9))
  {
    sub_1000071C8(v24, &unk_1000835A8, qword_100069860);
    v28 = 1;
    v29 = v88;
  }

  else
  {
    v30 = v10[2];
    v77 = v15;
    v30(v15, v24, v9);
    sub_1000071C8(v24, &unk_1000835A8, qword_100069860);
    v90 = v83;
    v91 = v85;
    v79 = enum case for URL.DirectoryHint.isDirectory(_:);
    v85 = v10;
    v78 = *(v6 + 104);
    v31 = v81;
    v78(v8);
    v75[1] = sub_1000070C4();
    v76 = v21;
    v32 = v26;
    v33 = v17;
    v83 = v9;
    v34 = v77;
    URL.appending<A>(path:directoryHint:)();
    v75[0] = *(v6 + 8);
    (v75[0])(v8, v31);
    v35 = v85[1];
    v35(v34, v83);
    v90 = v84;
    v91 = v86;
    (v78)(v8, v79, v31);
    v10 = v85;
    URL.appending<A>(path:directoryHint:)();
    v27 = v83;
    (v75[0])(v8, v31);
    v35(v33, v27);
    v29 = v88;
    v28 = 0;
    v26 = v32;
    v21 = v76;
  }

  v36 = v10[7];
  v36(v26, v28, 1, v27);
  sub_10000C0A0(v26, v21, &unk_1000835A8, qword_100069860);
  if (v87(v21, 1, v27) == 1)
  {
    v37 = v27;
    sub_1000071C8(v21, &unk_1000835A8, qword_100069860);
    if (qword_1000826B8 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100002D00(v38, SharedLog);
    v39 = v86;

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v90 = v43;
      *v42 = 136446210;
      *(v42 + 4) = sub_1000049B8(v84, v39, &v90);
      _os_log_impl(&_mh_execute_header, v40, v41, "Failed to get [%{public}s] directory", v42, 0xCu);
      sub_100005ED8(v43);
    }

    sub_1000071C8(v26, &unk_1000835A8, qword_100069860);
    v44 = 1;
    v45 = v37;
  }

  else
  {
    v81 = v36;
    v87 = v26;
    v85 = v10;
    v46 = v10[4];
    v47 = v82;
    v46();
    v48 = objc_opt_self();
    v49 = [v48 defaultManager];
    v50 = v27;
    URL.path.getter();
    v51 = String._bridgeToObjectiveC()();

    v52 = [v49 fileExistsAtPath:v51 isDirectory:0];

    if (v52)
    {
      sub_1000071C8(v87, &unk_1000835A8, qword_100069860);
      v29 = v88;
      (v46)(v88, v47, v50);
      v44 = 0;
      v45 = v50;
    }

    else
    {
      v83 = v50;
      if (v80)
      {
        if (qword_1000826B8 != -1)
        {
          swift_once();
        }

        v53 = type metadata accessor for Logger();
        sub_100002D00(v53, SharedLog);
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          *v56 = 0;
          _os_log_impl(&_mh_execute_header, v54, v55, "URL does not exist. Will create one", v56, 2u);
        }

        v57 = [v48 defaultManager];
        URL.path.getter();
        v58 = String._bridgeToObjectiveC()();

        v90 = 0;
        v59 = [v57 createDirectoryAtPath:v58 withIntermediateDirectories:1 attributes:0 error:&v90];

        if (v59)
        {
          v60 = v90;
          sub_1000071C8(v87, &unk_1000835A8, qword_100069860);
          v29 = v88;
          v61 = v83;
          (v46)(v88, v47, v83);
          v45 = v61;
          v44 = 0;
        }

        else
        {
          v63 = v90;
          v64 = _convertNSErrorToError(_:)();

          swift_willThrow();
          v65 = v86;

          swift_errorRetain();
          v66 = Logger.logObject.getter();
          v67 = static os_log_type_t.fault.getter();

          v68 = os_log_type_enabled(v66, v67);
          v29 = v88;
          if (v68)
          {
            v69 = swift_slowAlloc();
            v90 = swift_slowAlloc();
            *v69 = 136446466;
            *(v69 + 4) = sub_1000049B8(v84, v65, &v90);
            *(v69 + 12) = 2082;
            v89 = v64;
            swift_errorRetain();
            sub_100004F70(&unk_1000833F0, &unk_100068F00);
            v70 = String.init<A>(describing:)();
            v72 = sub_1000049B8(v70, v71, &v90);

            *(v69 + 14) = v72;
            _os_log_impl(&_mh_execute_header, v66, v67, "Failed to create [%{public}s] directory: [%{public}s]", v69, 0x16u);
            swift_arrayDestroy();
          }

          v73 = v83;
          (v85[1])(v82, v83);
          sub_1000071C8(v87, &unk_1000835A8, qword_100069860);
          v45 = v73;
          v44 = 1;
        }
      }

      else
      {
        v62 = v83;
        (v85[1])(v47, v83);
        sub_1000071C8(v87, &unk_1000835A8, qword_100069860);
        v45 = v62;
        v44 = 1;
        v29 = v88;
      }
    }

    v36 = v81;
  }

  return (v36)(v29, v44, 1, v45);
}

uint64_t sub_10003920C()
{
  sub_1000071C8(v0 + OBJC_IVAR____TtC9feedbackd19LongTermPersistence____lazy_storage___feedbackdDirectory, &qword_1000836A0, &qword_100069898);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for LongTermPersistence(uint64_t a1)
{
  result = qword_100083590;
  if (!qword_100083590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000392B0(uint64_t a1)
{
  sub_10003934C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10003934C(uint64_t a1)
{
  if (!qword_1000835A0)
  {
    sub_100005F88(&unk_1000835A8, qword_100069860);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1000835A0);
    }
  }
}

uint64_t sub_1000393B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004F70(&qword_1000836A0, &qword_100069898);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100039420(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100039468(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004F70(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000394D0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000394F4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100039548(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1000395A4(void *result, int a2)
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

uint64_t sub_1000395D4(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!v2)
  {
    return !v3;
  }

  if (v2 == 1)
  {
    return v3 == 1;
  }

  if (v3 < 2)
  {
    return 0;
  }

  return sub_100039B70(v2, v3);
}

uint64_t sub_100039614()
{
  if (sub_1000399B0())
  {
    if (qword_1000826B8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100002D00(v1, SharedLog);
    v2 = v0;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 67240192;
      *(v5 + 4) = [v2 processIdentifier];

      _os_log_impl(&_mh_execute_header, v3, v4, "Client with pid [%{public}d] has admin entitlement", v5, 8u);
    }

    else
    {
    }

    return 0;
  }

  else
  {
    v7 = sub_100039A88();
    if (v7)
    {
      v6 = v7;
      if (qword_1000826B8 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_100002D00(v8, SharedLog);
      v9 = v0;

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v23 = v13;
        *v12 = 67240450;
        *(v12 + 4) = [v9 processIdentifier];

        *(v12 + 8) = 2082;
        v14 = Array.description.getter();
        v16 = sub_1000049B8(v14, v15, &v23);

        *(v12 + 10) = v16;
        _os_log_impl(&_mh_execute_header, v10, v11, "Client with pid [%{public}d] is entitled to use forms [%{public}s]", v12, 0x12u);
        sub_100005ED8(v13);
      }

      else
      {
      }
    }

    else
    {
      if (qword_1000826B8 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100002D00(v17, SharedLog);
      v18 = v0;
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 67240192;
        *(v21 + 4) = [v18 processIdentifier];

        _os_log_impl(&_mh_execute_header, v19, v20, "Client with pid [%{public}d] is not entitled", v21, 8u);
      }

      else
      {
      }

      return 2;
    }
  }

  return v6;
}

uint64_t sub_1000399B0()
{
  static Strings.XPC.adminEntitlement.getter();
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 valueForEntitlement:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v4;
    }
  }

  else
  {
    sub_100039C00(v7);
    return 0;
  }

  return result;
}

uint64_t sub_100039A88()
{
  static Strings.XPC.clientEntitlement.getter();
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 valueForEntitlement:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100004F70(&qword_100082710, &qword_100068330);
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_100039C00(v7);
  }

  return 0;
}

uint64_t sub_100039B70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_100039C00(uint64_t a1)
{
  v2 = sub_100004F70(&qword_100082860, &unk_1000683C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100039C68()
{
  v1 = v0;
  v2 = type metadata accessor for FBKSInteraction.Content();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v28 - v7;
  v9 = *(v3 + 16);
  v9(&v28 - v7, v1, v2);
  v10 = (*(v3 + 88))(v8, v2);
  if (v10 == enum case for FBKSInteraction.Content.file(_:))
  {
    (*(v3 + 96))(v8, v2);
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 8))(v8, v11);
    return 1;
  }

  if (v10 != enum case for FBKSInteraction.Content._file(_:))
  {
    if (v10 == enum case for FBKSInteraction.Content.text(_:))
    {
      goto LABEL_10;
    }

    if (v10 != enum case for FBKSInteraction.Content.image(_:) && v10 != enum case for FBKSInteraction.Content.audio(_:) && v10 != enum case for FBKSInteraction.Content.handwriting(_:) && v10 != enum case for FBKSInteraction.Content.sketch(_:))
    {
      if (v10 == enum case for FBKSInteraction.Content.imageText(_:) || v10 == enum case for FBKSInteraction.Content.sketchText(_:))
      {
        (*(v3 + 8))(v8, v2);
        return 2;
      }

      if (v10 != enum case for FBKSInteraction.Content.video(_:))
      {
        if (v10 == enum case for FBKSInteraction.Content.sourceCode(_:) || v10 == enum case for FBKSInteraction.Content.structured(_:))
        {
          goto LABEL_10;
        }

        if (v10 == enum case for FBKSInteraction.Content.imageStructured(_:))
        {
          (*(v3 + 96))(v8, v2);
          sub_100013C98(*v8, *(v8 + 1));
          v23 = &qword_100083558;
          v24 = &qword_100069808;
LABEL_28:
          v25 = *(sub_100004F70(v23, v24) + 48);
          v26 = type metadata accessor for FBKSInteraction.StructuredValue();
          (*(*(v26 - 8) + 8))(&v8[v25], v26);
          return 2;
        }

        if (v10 == enum case for FBKSInteraction.Content.sketchStructured(_:))
        {
          (*(v3 + 96))(v8, v2);
          sub_100013C98(*v8, *(v8 + 1));
          v23 = &qword_100083550;
          v24 = &qword_100069800;
          goto LABEL_28;
        }

        if (v10 == enum case for FBKSInteraction.Content.notification(_:) || v10 == enum case for FBKSInteraction.Content.mailMessage(_:))
        {
          goto LABEL_10;
        }

        if (v10 != enum case for FBKSInteraction.Content.emoji(_:))
        {
          if (v10 != enum case for FBKSInteraction.Content.html(_:))
          {
            sub_10001BF40();
            swift_allocError();
            *v27 = 0;
            swift_willThrow();
            return (*(v3 + 8))(v8, v2);
          }

LABEL_10:
          (*(v3 + 8))(v8, v2);
          return 0;
        }
      }
    }

    (*(v3 + 8))(v8, v2);
    return 1;
  }

  v13 = *(v3 + 8);
  v13(v8, v2);
  if (qword_100082628 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100002D00(v14, qword_1000836D0);
  v9(v6, v1, v2);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v17 = 136315394;
    sub_10003C790(&qword_1000836E8, &type metadata accessor for FBKSInteraction.Content, &protocol conformance descriptor for FBKSInteraction.Content);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v13(v6, v2);
    v21 = sub_1000049B8(v18, v20, &v30);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    *(v17 + 14) = sub_1000049B8(0x28656761726F7473, 0xE900000000000029, &v30);
    _os_log_impl(&_mh_execute_header, v15, v16, "%s not supported in %{public}s", v17, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v13(v6, v2);
  }

  sub_10001BF40();
  swift_allocError();
  *v22 = 14;
  return swift_willThrow();
}

void sub_10003A2C0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for FBKSInteraction.Content();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = (&v24 - v10);
  v12 = [a1 text];
  if (!v12)
  {

    (*(v6 + 56))(a2, 1, 1, v5);
    return;
  }

  v25 = a2;
  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = sub_100031A70();
  if (!v18)
  {
    v20 = 5;
    goto LABEL_11;
  }

  v19 = sub_10003BDAC(v17, v18);
  v20 = 1;
  if (v19 > 0xB)
  {
    switch(v19)
    {
      case 0xCu:

        *v11 = v14;
        v11[1] = v16;
        v22 = &enum case for FBKSInteraction.Content.notification(_:);
        break;
      case 0xDu:

        *v11 = v14;
        v11[1] = v16;
        v22 = &enum case for FBKSInteraction.Content.mailMessage(_:);
        break;
      case 0xFu:

        *v11 = v14;
        v11[1] = v16;
        v22 = &enum case for FBKSInteraction.Content.html(_:);
        break;
      default:
        goto LABEL_11;
    }
  }

  else if (v19)
  {
    if (v19 != 8)
    {
      if (v19 == 9)
      {
        sub_10003B9C4(v14, v16);

        if (v2)
        {
          return;
        }

        (*(v6 + 104))(v9, enum case for FBKSInteraction.Content.structured(_:), v5);
        (*(v6 + 32))(v11, v9, v5);
        goto LABEL_21;
      }

LABEL_11:

      sub_10001BF40();
      swift_allocError();
      *v21 = v20;
      swift_willThrow();

      return;
    }

    *v11 = v14;
    v11[1] = v16;
    v22 = &enum case for FBKSInteraction.Content.sourceCode(_:);
  }

  else
  {

    *v11 = v14;
    v11[1] = v16;
    v22 = &enum case for FBKSInteraction.Content.text(_:);
  }

  (*(v6 + 104))(v11, *v22, v5);
LABEL_21:
  v23 = v25;
  (*(v6 + 32))(v25, v11, v5);
  (*(v6 + 56))(v23, 0, 1, v5);
}

uint64_t sub_10003A5A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000010006BE60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.imageGeneration(_:);
  }

  else if (a1 == 0x432079726F6D654DLL && a2 == 0xEF6E6F6974616572 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.memoryCreation(_:);
  }

  else if (a1 == 0x74697277646E6148 && a2 == 0xEB00000000676E69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.handwriting(_:);
  }

  else if (a1 == 0xD000000000000010 && 0x800000010006BE80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.systemAssistant(_:);
  }

  else if (a1 == 0x4520656369766544 && a2 == 0xED00007472657078 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.deviceExpert(_:);
  }

  else if (a1 == 0x20676E6974697257 && a2 == 0xED0000736C6F6F54 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.writingTools(_:);
  }

  else if (a1 == 0x6552207472616D53 && a2 == 0xEB00000000796C70 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.smartReplies(_:);
  }

  else if (a1 == 0xD000000000000010 && 0x800000010006BEA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.emojiGeneration(_:);
  }

  else if (a1 == 0xD000000000000012 && 0x800000010006BEC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.mailSummarization(_:);
  }

  else if (a1 == 0x676948206C69614DLL && a2 == 0xEF73746867696C68 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.mailHighlights(_:);
  }

  else if (a1 == 0xD000000000000016 && 0x800000010006BEE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.messagesSummarization(_:);
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000010006BF00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.notificationsSummarization(_:);
  }

  else if (a1 == 0xD000000000000018 && 0x800000010006BF20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.notificationsHighlights(_:);
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000010006BF40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.notificationsBreakthrough(_:);
  }

  else if (a1 == 0x615020636967614DLL && a2 == 0xEB00000000726570 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.magicPaper(_:);
  }

  else if (a1 == 0x7341207466697753 && a2 == 0xEC00000074736973 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.swiftAssist(_:);
  }

  else if (a1 == 0x4320736F746F6850 && a2 == 0xEE0070756E61656CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.photosCleanup(_:);
  }

  else if (a1 == 0xD000000000000013 && 0x800000010006BF60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.notesAudioSummary(_:);
  }

  else if (a1 == 1769105747 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.siriWithChatGPT(_:);
  }

  else if (a1 == 0xD000000000000018 && 0x800000010006BF80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.writingToolsCompose(_:);
  }

  else if (a1 == 0x6C616E6F73726550 && a2 == 0xEC00000041265120 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.siriPQA(_:);
  }

  else if (a1 == 0xD000000000000013 && 0x800000010006BFA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.visualIntelligence(_:);
  }

  else if (a1 == 0x5320736F746F6850 && a2 == 0xED00006863726165 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.photosSearch(_:);
  }

  else if (a1 == 0xD000000000000019 && 0x800000010006BFC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.imageGenerationExtended(_:);
  }

  else if (a1 == 0xD000000000000012 && 0x800000010006BFE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.messagesWallpaper(_:);
  }

  else if (a1 == 0x4D4C4C206B7341 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.askLLM(_:);
  }

  else if (a1 == 0x6341207472616D53 && a2 == 0xEC0000006E6F6974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.smartActions(_:);
  }

  else if (a1 == 0x68432065646F6358 && a2 == 0xEA00000000007461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.xcodeChat(_:);
  }

  else if (a1 == 0x65746F6E79654BLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.keynote(_:);
  }

  else if (a1 == 0x7365676150 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.pages(_:);
  }

  else if (a1 == 0x737265626D754ELL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.numbers(_:);
  }

  else if (a1 == 0x6D726F6665657246 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.freeform(_:);
  }

  else if (a1 == 0xD000000000000017 && 0x800000010006C000 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.voicemailTranscription(_:);
  }

  else if (a1 == 0xD000000000000017 && 0x800000010006C020 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.timeSensitiveMessages(_:);
  }

  else if (a1 == 0x756E452070696B53 && a2 == 0xE90000000000006DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.skipEnum(_:);
  }

  else if (a1 == 1953719636 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.test(_:);
  }

  else
  {
    *a3 = a1;
    a3[1] = a2;
    v6 = &enum case for FBKSInteraction.FeatureDomain.temporary(_:);
  }

  v7 = *v6;
  v8 = type metadata accessor for FBKSInteraction.FeatureDomain();
  v9 = *(*(v8 - 8) + 104);

  return v9(a3, v7, v8);
}

uint64_t sub_10003B1C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FBKSInteraction.Content();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = [a1 imageData];
  if (!v8)
  {

    return (*(v5 + 56))(a2, 1, 1, v4);
  }

  v9 = v8;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = sub_100033584();
  if (!v14)
  {
    v16 = 5;
    goto LABEL_10;
  }

  v15 = sub_10003BDAC(v13, v14);
  v16 = 1;
  if (v15 <= 3)
  {
    switch(v15)
    {
      case 1:

        *v7 = v10;
        v17 = &enum case for FBKSInteraction.Content.image(_:);
        goto LABEL_23;
      case 2:

        *v7 = v10;
        v17 = &enum case for FBKSInteraction.Content.audio(_:);
        goto LABEL_23;
      case 3:

        *v7 = v10;
        v17 = &enum case for FBKSInteraction.Content.handwriting(_:);
        goto LABEL_23;
    }

LABEL_10:
    sub_10001BF40();
    swift_allocError();
    *v19 = v16;
    swift_willThrow();

    return sub_100013C98(v10, v12);
  }

  if (v15 <= 13)
  {
    if (v15 == 4)
    {

      *v7 = v10;
      v17 = &enum case for FBKSInteraction.Content.sketch(_:);
      goto LABEL_23;
    }

    if (v15 == 7)
    {

      *v7 = v10;
      v17 = &enum case for FBKSInteraction.Content.video(_:);
LABEL_23:
      v23 = 1;
      goto LABEL_24;
    }

    goto LABEL_10;
  }

  if (v15 == 14)
  {

    *v7 = v10;
    v17 = &enum case for FBKSInteraction.Content.emoji(_:);
    goto LABEL_23;
  }

  if (v15 != 16)
  {
    goto LABEL_10;
  }

  v20 = sub_10003207C();
  if (!v21)
  {
    v16 = 15;
    goto LABEL_10;
  }

  v22 = v21;
  v25 = v20;

  *v7 = v25;
  v7[1] = v22;
  v7[2] = v10;
  v23 = 3;
  v17 = &enum case for FBKSInteraction.Content._file(_:);
LABEL_24:
  v7[v23] = v12;
  (*(v5 + 104))(v7, *v17, v4);
  (*(v5 + 32))(a2, v7, v4);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

void sub_10003B484(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for FBKSInteraction.Content();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __chkstk_darwin(v7);
  v12 = (&v40 - v11);
  __chkstk_darwin(v10);
  v14 = (&v40 - v13);
  v15 = [a1 text];
  if (!v15)
  {

    (*(v6 + 56))(a2, 1, 1, v5);
    return;
  }

  v16 = v15;
  v44 = a2;
  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = [a1 imageData];
  if (!v19)
  {

    sub_10001BF40();
    swift_allocError();
    *v32 = 8;
    swift_willThrow();

    return;
  }

  v43 = v18;
  v41 = v5;
  v20 = v19;
  v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24 = sub_100033584();
  if (!v25)
  {

    sub_10001BF40();
    swift_allocError();
    *v33 = 5;
    swift_willThrow();

    v30 = v21;
    v31 = v23;
    goto LABEL_13;
  }

  v26 = sub_10003BDAC(v24, v25);
  v27 = v23;
  if (v26 <= 5)
  {
    v28 = v21;
    if (v26 == 1)
    {

      *v14 = v21;
      v14[1] = v27;
      v29 = v41;
      (*(v6 + 104))(v14, enum case for FBKSInteraction.Content.image(_:), v41);
      goto LABEL_28;
    }

    v29 = v41;
    if (v26 == 4)
    {

      *v14 = v28;
      v14[1] = v27;
      v35 = &enum case for FBKSInteraction.Content.sketch(_:);
    }

    else
    {
      if (v26 != 5)
      {
        goto LABEL_22;
      }

      *v14 = v28;
      v14[1] = v27;
      v34 = v43;
      v14[2] = v42;
      v14[3] = v34;
      v35 = &enum case for FBKSInteraction.Content.imageText(_:);
    }

    goto LABEL_27;
  }

  v28 = v21;
  if (v26 > 10)
  {
    v29 = v41;
    if (v26 == 11)
    {
      sub_100004F70(&qword_100083550, &qword_100069800);
      *v9 = v28;
      v9[1] = v27;
      sub_10003B9C4(v42, v43);

      if (v2)
      {
        v30 = *v9;
        v31 = v9[1];
        goto LABEL_13;
      }

      (*(v6 + 104))(v9, enum case for FBKSInteraction.Content.sketchStructured(_:), v29);
      (*(v6 + 32))(v14, v9, v29);
      goto LABEL_28;
    }

    if (v26 != 16)
    {
LABEL_22:

      sub_10001BF40();
      swift_allocError();
      *v37 = 1;
      swift_willThrow();

      v30 = v28;
      v31 = v27;
      goto LABEL_13;
    }

    v36 = v43;
    *v14 = v42;
    v14[1] = v36;
    v14[2] = v28;
    v14[3] = v27;
    v35 = &enum case for FBKSInteraction.Content._file(_:);
LABEL_27:
    (*(v6 + 104))(v14, *v35, v29);
    goto LABEL_28;
  }

  v29 = v41;
  if (v26 == 6)
  {

    *v14 = v28;
    v14[1] = v27;
    v38 = v43;
    v14[2] = v42;
    v14[3] = v38;
    v35 = &enum case for FBKSInteraction.Content.sketchText(_:);
    goto LABEL_27;
  }

  if (v26 != 10)
  {
    goto LABEL_22;
  }

  sub_100004F70(&qword_100083558, &qword_100069808);
  *v12 = v28;
  v12[1] = v27;
  sub_10003B9C4(v42, v43);

  if (v2)
  {
    v30 = *v12;
    v31 = v12[1];
LABEL_13:
    sub_100013C98(v30, v31);
    return;
  }

  (*(v6 + 104))(v12, enum case for FBKSInteraction.Content.imageStructured(_:), v29);
  (*(v6 + 32))(v14, v12, v29);
LABEL_28:
  v39 = v44;
  (*(v6 + 32))(v44, v14, v29);
  (*(v6 + 56))(v39, 0, 1, v29);
}

uint64_t sub_10003B95C()
{
  v0 = type metadata accessor for Logger();
  sub_100007284(v0, qword_1000836D0);
  sub_100002D00(v0, qword_1000836D0);
  static Strings.Daemon.bundleIdentifier.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10003B9C4(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v6 = String.data(using:allowLossyConversion:)();
  v8 = v7;

  (*(v3 + 8))(v5, v2);
  if (v8 >> 60 == 15)
  {
    sub_10001BF40();
    swift_allocError();
    *v9 = 9;
    return swift_willThrow();
  }

  else
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    type metadata accessor for FBKSInteraction.StructuredValue();
    sub_10003C790(&unk_1000836F0, &type metadata accessor for FBKSInteraction.StructuredValue, &protocol conformance descriptor for FBKSInteraction.StructuredValue);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_100013E3C(v6, v8);
  }
}

unint64_t sub_10003BBA4(char a1)
{
  result = 1954047316;
  switch(a1)
  {
    case 1:
      result = 0x6567616D49;
      break;
    case 2:
      result = 0x6F69647541;
      break;
    case 3:
      result = 0x74697277646E6148;
      break;
    case 4:
      result = 0x686374656B53;
      break;
    case 5:
      result = 0x65542B6567616D49;
      break;
    case 6:
      result = 0x542B686374656B53;
      break;
    case 7:
      result = 0x6F65646956;
      break;
    case 8:
      result = 0x6320656372756F53;
      break;
    case 9:
      result = 0x7275746375727453;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x6163696669746F4ELL;
      break;
    case 13:
      result = 0x73656D206C69614DLL;
      break;
    case 14:
      result = 0x696A6F6D45;
      break;
    case 15:
      result = 1280136264;
      break;
    case 16:
      result = 1701603654;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10003BDAC(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10003BE00(uint64_t a1)
{
  v2 = type metadata accessor for FBKSInteraction.Content();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v45 - v7;
  v9 = *(v3 + 16);
  v9(&v45 - v7, a1, v2);
  v10 = (*(v3 + 88))(v8, v2);
  if (v10 == enum case for FBKSInteraction.Content.file(_:))
  {
    (*(v3 + 8))(a1, v2);
    (*(v3 + 96))(v8, v2);
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 8))(v8, v11);
    return 16;
  }

  else if (v10 == enum case for FBKSInteraction.Content._file(_:))
  {
    v46 = *(v3 + 8);
    v46(v8, v2);
    if (qword_100082628 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100002D00(v13, qword_1000836D0);
    v9(v6, a1, v2);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v47 = v45;
      *v16 = 136315394;
      sub_10003C790(&qword_1000836E8, &type metadata accessor for FBKSInteraction.Content, &protocol conformance descriptor for FBKSInteraction.Content);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      v20 = v6;
      v21 = v46;
      v46(v20, v2);
      v22 = sub_1000049B8(v17, v19, &v47);

      *(v16 + 4) = v22;
      *(v16 + 12) = 2082;
      *(v16 + 14) = sub_1000049B8(0x293A5F2874696E69, 0xE800000000000000, &v47);
      _os_log_impl(&_mh_execute_header, v14, v15, "%s not supported in %{public}s", v16, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v24 = v6;
      v21 = v46;
      v46(v24, v2);
    }

    sub_10001BF40();
    swift_allocError();
    *v25 = 14;
    swift_willThrow();
    return v21(a1, v2);
  }

  else if (v10 == enum case for FBKSInteraction.Content.text(_:))
  {
    v23 = *(v3 + 8);
    v23(a1, v2);
    v23(v8, v2);
    return 0;
  }

  else if (v10 == enum case for FBKSInteraction.Content.image(_:))
  {
    v26 = *(v3 + 8);
    v26(a1, v2);
    v26(v8, v2);
    return 1;
  }

  else if (v10 == enum case for FBKSInteraction.Content.audio(_:))
  {
    v27 = *(v3 + 8);
    v27(a1, v2);
    v27(v8, v2);
    return 2;
  }

  else if (v10 == enum case for FBKSInteraction.Content.handwriting(_:))
  {
    v28 = *(v3 + 8);
    v28(a1, v2);
    v28(v8, v2);
    return 3;
  }

  else if (v10 == enum case for FBKSInteraction.Content.sketch(_:))
  {
    v29 = *(v3 + 8);
    v29(a1, v2);
    v29(v8, v2);
    return 4;
  }

  else if (v10 == enum case for FBKSInteraction.Content.imageText(_:))
  {
    v30 = *(v3 + 8);
    v30(a1, v2);
    v30(v8, v2);
    return 5;
  }

  else if (v10 == enum case for FBKSInteraction.Content.sketchText(_:))
  {
    v31 = *(v3 + 8);
    v31(a1, v2);
    v31(v8, v2);
    return 6;
  }

  else if (v10 == enum case for FBKSInteraction.Content.video(_:))
  {
    v32 = *(v3 + 8);
    v32(a1, v2);
    v32(v8, v2);
    return 7;
  }

  else if (v10 == enum case for FBKSInteraction.Content.sourceCode(_:))
  {
    v33 = *(v3 + 8);
    v33(a1, v2);
    v33(v8, v2);
    return 8;
  }

  else if (v10 == enum case for FBKSInteraction.Content.structured(_:))
  {
    v34 = *(v3 + 8);
    v34(a1, v2);
    v34(v8, v2);
    return 9;
  }

  else if (v10 == enum case for FBKSInteraction.Content.imageStructured(_:))
  {
    (*(v3 + 8))(a1, v2);
    (*(v3 + 96))(v8, v2);
    sub_100013C98(*v8, *(v8 + 1));
    v35 = *(sub_100004F70(&qword_100083558, &qword_100069808) + 48);
    v36 = type metadata accessor for FBKSInteraction.StructuredValue();
    (*(*(v36 - 8) + 8))(&v8[v35], v36);
    return 10;
  }

  else if (v10 == enum case for FBKSInteraction.Content.sketchStructured(_:))
  {
    (*(v3 + 8))(a1, v2);
    (*(v3 + 96))(v8, v2);
    sub_100013C98(*v8, *(v8 + 1));
    v37 = *(sub_100004F70(&qword_100083550, &qword_100069800) + 48);
    v38 = type metadata accessor for FBKSInteraction.StructuredValue();
    (*(*(v38 - 8) + 8))(&v8[v37], v38);
    return 11;
  }

  else if (v10 == enum case for FBKSInteraction.Content.notification(_:))
  {
    v39 = *(v3 + 8);
    v39(a1, v2);
    v39(v8, v2);
    return 12;
  }

  else if (v10 == enum case for FBKSInteraction.Content.mailMessage(_:))
  {
    v40 = *(v3 + 8);
    v40(a1, v2);
    v40(v8, v2);
    return 13;
  }

  else if (v10 == enum case for FBKSInteraction.Content.emoji(_:))
  {
    v41 = *(v3 + 8);
    v41(a1, v2);
    v41(v8, v2);
    return 14;
  }

  else if (v10 == enum case for FBKSInteraction.Content.html(_:))
  {
    v42 = *(v3 + 8);
    v42(a1, v2);
    v42(v8, v2);
    return 15;
  }

  else
  {
    sub_10001BF40();
    swift_allocError();
    *v43 = 6;
    swift_willThrow();
    v44 = *(v3 + 8);
    v44(a1, v2);
    return (v44)(v8, v2);
  }
}

uint64_t sub_10003C790(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10003C7D8()
{
  v0 = type metadata accessor for Logger();
  sub_100007284(v0, qword_100083700);
  sub_100002D00(v0, qword_100083700);
  static Strings.Daemon.loggingSubsystem.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10003C83C(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100013DAC((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_100004F70(&unk_1000833F0, &unk_100068F00);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10003C914(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;

  return _swift_task_switch(sub_10003C9A4, 0, 0);
}

uint64_t sub_10003C9A4()
{
  v28 = v0;
  if (qword_100082630 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100002D00(v1, qword_100083700);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v27 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1000049B8(0xD000000000000019, 0x800000010006C320, &v27);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s ", v4, 0xCu);
    sub_100005ED8(v5);
  }

  *(v0 + 104) = 0;
  v6 = SBSGetScreenLockStatus();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = v6 != 0;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v27 = v11;
    *v10 = 67240450;
    *(v10 + 4) = v9;
    *(v10 + 8) = 2082;
    swift_beginAccess();
    v12 = DarwinBoolean.description.getter();
    v14 = sub_1000049B8(v12, v13, &v27);

    *(v10 + 10) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "Is device locked? [%{BOOL,public}d] passcodeRequired [%{public}s]", v10, 0x12u);
    sub_100005ED8(v11);
  }

  swift_beginAccess();
  if (*(v0 + 104))
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Detected race condition with remote alert launching while device is locked.", v17, 2u);
    }

    sub_10000BCE0();
    swift_allocError();
    *v18 = 8;
    swift_willThrow();
    v19 = *(v0 + 8);
    goto LABEL_11;
  }

  v21 = *(v0 + 72);
  v22 = [objc_allocWithZone(type metadata accessor for RemoteAlertManager(0)) init];
  *(v0 + 80) = v22;
  v23 = *(v21 + 16);
  *(v21 + 16) = v22;
  v24 = v22;

  if (!v24)
  {
    v19 = *(v0 + 8);
LABEL_11:

    return v19();
  }

  v25 = swift_task_alloc();
  *(v0 + 88) = v25;
  *v25 = v0;
  v25[1] = sub_10003CDF0;
  v26 = *(v0 + 64);

  return sub_10003D0B4(v26);
}

uint64_t sub_10003CDF0()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_10003CFC8;
  }

  else
  {

    v3 = sub_10003CF40;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10003CF40()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003CFC8()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003D058()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10003D0B4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10003D0D4, 0, 0);
}

uint64_t sub_10003D0D4()
{
  v1 = v0[2];
  v2 = swift_allocObject();
  v0[4] = v2;
  swift_unknownObjectWeakInit();
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_10003D1F0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

uint64_t sub_10003D1F0()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_10003D32C;
  }

  else
  {

    v2 = sub_10003D314;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10003D32C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10003D398(uint64_t a1, uint64_t a2)
{
  v3 = sub_100004F70(&qword_100083908, &qword_1000699F8);
  __chkstk_darwin(v3 - 8);
  v5 = &v27 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = objc_allocWithZone(SBSRemoteAlertDefinition);
    v9 = String._bridgeToObjectiveC()();
    v10 = String._bridgeToObjectiveC()();
    v29 = [v8 initWithServiceName:v9 viewControllerClassName:v10];

    v11 = [objc_allocWithZone(SBSRemoteAlertConfigurationContext) init];
    v12 = [objc_opt_self() anonymousListener];
    [v12 setDelegate:v7];
    v13 = [v12 endpoint];
    [v11 setXpcEndpoint:{objc_msgSend(v13, "_endpoint")}];
    swift_unknownObjectRelease();
    type metadata accessor for FBKSRemoteAlertRequest();
    sub_10003FC8C(&unk_100083910, &type metadata accessor for FBKSRemoteAlertRequest, &protocol conformance descriptor for FBKSRemoteAlertRequest);
    v14 = JSONCodable.encode()();
    v16 = v15;
    sub_100004F70(&qword_100083040, &qword_1000693C8);
    inited = swift_initStackObject();
    v28 = a1;
    v18 = inited;
    *(inited + 16) = xmmword_100069110;
    v30 = 0x74736575716572;
    v31 = 0xE700000000000000;
    AnyHashable.init<A>(_:)();
    v18[12] = &type metadata for Data;
    v18[9] = v14;
    v18[10] = v16;
    sub_100013D40(v14, v16);
    sub_1000159A0(v18);
    swift_setDeallocating();
    sub_1000071C8((v18 + 4), &unk_100083920, qword_1000693D0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v11 setUserInfo:isa];

    v20 = [objc_opt_self() newHandleWithDefinition:v29 configurationContext:v11];
    [v20 registerObserver:v7];
    v21 = sub_100004F70(&qword_100083898, &qword_1000699C0);
    v22 = *(v21 - 8);
    (*(v22 + 16))(v5, v28, v21);
    (*(v22 + 56))(v5, 0, 1, v21);
    v23 = OBJC_IVAR____TtC9feedbackdP33_109D9EA95C5E46A2F39C291451DCB14618RemoteAlertManager_checkedThrowingContinuation;
    swift_beginAccess();
    sub_10003FBDC(v5, &v7[v23]);
    swift_endAccess();
    v24 = [objc_allocWithZone(SBSRemoteAlertActivationContext) init];
    [v20 activateWithContext:v24];

    v25 = *&v7[OBJC_IVAR____TtC9feedbackdP33_109D9EA95C5E46A2F39C291451DCB14618RemoteAlertManager_remoteAlertHandle];
    *&v7[OBJC_IVAR____TtC9feedbackdP33_109D9EA95C5E46A2F39C291451DCB14618RemoteAlertManager_remoteAlertHandle] = v20;
    v26 = v20;

    [v12 resume];
    sub_100013C98(v14, v16);
  }
}

uint64_t sub_10003D9B0(void *a1)
{
  v2 = v1;
  v4 = sub_100004F70(&qword_100083898, &qword_1000699C0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = sub_100004F70(&qword_100083908, &qword_1000699F8);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v23 - v12;
  if (qword_100082630 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100002D00(v14, qword_100083700);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v24 = v7;
    v18 = a1;
    v19 = v17;
    v20 = swift_slowAlloc();
    v25[0] = v20;
    *v19 = 136446210;
    *(v19 + 4) = sub_1000049B8(0xD000000000000022, 0x800000010006C250, v25);
    _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s", v19, 0xCu);
    sub_100005ED8(v20);

    a1 = v18;
    v7 = v24;
  }

  [a1 unregisterObserver:v2];
  v21 = OBJC_IVAR____TtC9feedbackdP33_109D9EA95C5E46A2F39C291451DCB14618RemoteAlertManager_checkedThrowingContinuation;
  swift_beginAccess();
  sub_10003FB54(v2 + v21, v13);
  if ((*(v5 + 48))(v13, 1, v4))
  {
    sub_1000071C8(v13, &qword_100083908, &qword_1000699F8);
  }

  else
  {
    (*(v5 + 16))(v7, v13, v4);
    sub_1000071C8(v13, &qword_100083908, &qword_1000699F8);
    CheckedContinuation.resume(returning:)();
    (*(v5 + 8))(v7, v4);
  }

  (*(v5 + 56))(v11, 1, 1, v4);
  swift_beginAccess();
  sub_10003FBDC(v11, v2 + v21);
  return swift_endAccess();
}

uint64_t sub_10003DD94(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100004F70(&qword_100083898, &qword_1000699C0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v37 - v8;
  v10 = sub_100004F70(&qword_100083908, &qword_1000699F8);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v37 - v15;
  __chkstk_darwin(v14);
  v18 = &v37 - v17;
  [a1 unregisterObserver:v3];
  if (a2)
  {
    v38 = v9;
    swift_errorRetain();
    if (qword_100082630 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100002D00(v19, qword_100083700);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v37 = v13;
      v25 = v24;
      v40[0] = v24;
      *v22 = 136446466;
      *(v22 + 4) = sub_1000049B8(0xD00000000000002CLL, 0x800000010006C220, v40);
      *(v22 + 12) = 2112;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 14) = v26;
      *v23 = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "%{public}s Error: %@", v22, 0x16u);
      sub_1000071C8(v23, &qword_100082708, &qword_100068320);

      sub_100005ED8(v25);
      v13 = v37;
    }

    v27 = v38;
    v28 = OBJC_IVAR____TtC9feedbackdP33_109D9EA95C5E46A2F39C291451DCB14618RemoteAlertManager_checkedThrowingContinuation;
    swift_beginAccess();
    sub_10003FB54(v3 + v28, v18);
    if ((*(v7 + 48))(v18, 1, v6))
    {

      sub_1000071C8(v18, &qword_100083908, &qword_1000699F8);
    }

    else
    {
      (*(v7 + 16))(v27, v18, v6);
      sub_1000071C8(v18, &qword_100083908, &qword_1000699F8);
      v39 = a2;
      CheckedContinuation.resume(throwing:)();
      (*(v7 + 8))(v27, v6);
    }
  }

  else
  {
    if (qword_100082630 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100002D00(v29, qword_100083700);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v40[0] = v33;
      *v32 = 136446210;
      *(v32 + 4) = sub_1000049B8(0xD00000000000002CLL, 0x800000010006C220, v40);
      _os_log_impl(&_mh_execute_header, v30, v31, "%{public}s", v32, 0xCu);
      sub_100005ED8(v33);
    }

    v34 = OBJC_IVAR____TtC9feedbackdP33_109D9EA95C5E46A2F39C291451DCB14618RemoteAlertManager_checkedThrowingContinuation;
    swift_beginAccess();
    sub_10003FB54(v3 + v34, v16);
    if ((*(v7 + 48))(v16, 1, v6))
    {
      sub_1000071C8(v16, &qword_100083908, &qword_1000699F8);
    }

    else
    {
      (*(v7 + 16))(v9, v16, v6);
      sub_1000071C8(v16, &qword_100083908, &qword_1000699F8);
      CheckedContinuation.resume(returning:)();
      (*(v7 + 8))(v9, v6);
    }
  }

  (*(v7 + 56))(v13, 1, 1, v6);
  v35 = OBJC_IVAR____TtC9feedbackdP33_109D9EA95C5E46A2F39C291451DCB14618RemoteAlertManager_checkedThrowingContinuation;
  swift_beginAccess();
  sub_10003FBDC(v13, v3 + v35);
  return swift_endAccess();
}

id sub_10003E4B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteAlertManager(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for RemoteAlertManager(uint64_t a1)
{
  result = qword_100083880;
  if (!qword_100083880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003E598(uint64_t a1)
{
  sub_10003E630(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10003E630(uint64_t a1)
{
  if (!qword_100083890)
  {
    sub_100005F88(&qword_100083898, &qword_1000699C0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100083890);
    }
  }
}

void sub_10003E6AC(const char *a1)
{
  if (qword_100082630 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100002D00(v2, qword_100083700);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a1, v4, 2u);
  }
}

uint64_t sub_10003E868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[98] = a5;
  v5[97] = a4;
  v5[96] = a3;
  v5[95] = a2;
  v5[94] = a1;
  v6 = type metadata accessor for URL();
  v5[99] = v6;
  v5[100] = *(v6 - 8);
  v5[101] = swift_task_alloc();
  v5[102] = swift_task_alloc();

  return _swift_task_switch(sub_10003E944, 0, 0);
}

uint64_t sub_10003E944()
{
  v64 = v0;
  if (qword_100082630 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 824) = sub_100002D00(v1, qword_100083700);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 760);
    v5 = *(v0 + 752);
    v6 = swift_slowAlloc();
    v63[0] = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = sub_1000049B8(0xD000000000000019, 0x800000010006C1C0, v63);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_1000049B8(v5, v4, v63);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s form %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v7 = *(v0 + 776);
  v8 = *(v0 + 768);
  v9 = *(v0 + 760);
  v10 = *(v0 + 752);
  v11 = sub_1000159A0(_swiftEmptyArrayStorage);
  v12 = sub_100014430(v10, v9, v8, v7);
  v13 = [v12 asFBAURLSchemeWithIsSurvey:FormItem.isSurvey.getter() & 1];

  if (v13)
  {
    v14 = *(v0 + 816);
    v15 = *(v0 + 808);
    v16 = *(v0 + 800);
    v17 = *(v0 + 792);
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v62 = *(v16 + 16);
    v62(v15, v14, v17);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 808);
    v22 = *(v0 + 800);
    v23 = *(v0 + 792);
    if (v20)
    {
      v24 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v63[0] = v61;
      *v24 = 136446210;
      sub_10003FC8C(&qword_1000836B8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v19;
      v26 = v11;
      v28 = v27;
      (*(v22 + 8))(v21, v23);
      v29 = sub_1000049B8(v25, v28, v63);
      v11 = v26;

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v18, v60, "Launching FBA with [%{public}s]", v24, 0xCu);
      sub_100005ED8(v61);
    }

    else
    {

      (*(v22 + 8))(v21, v23);
    }

    v30 = *(v0 + 816);
    v31 = *(v0 + 792);
    *(v0 + 664) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v0 + 672) = v32;
    AnyHashable.init<A>(_:)();
    *(v0 + 368) = v31;
    v33 = sub_100019A2C((v0 + 344));
    v62(v33, v30, v31);
    sub_100007274((v0 + 344), (v0 + 376));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v63[0] = v11;
    sub_10005E0B0((v0 + 376), v0 + 144, isUniquelyReferenced_nonNull_native);
    sub_100006FC4(v0 + 144);
    v35 = v63[0];
    *(v0 + 680) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v0 + 688) = v36;
    AnyHashable.init<A>(_:)();
    *(v0 + 432) = &type metadata for Int;
    *(v0 + 408) = 3;
    sub_100007274((v0 + 408), (v0 + 440));
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v63[0] = v35;
    sub_10005E0B0((v0 + 440), v0 + 184, v37);
    sub_100006FC4(v0 + 184);
    v38 = v63[0];
    *(v0 + 696) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v0 + 704) = v39;
    AnyHashable.init<A>(_:)();
    *(v0 + 496) = &type metadata for Bool;
    *(v0 + 472) = 1;
    sub_100007274((v0 + 472), (v0 + 504));
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v63[0] = v38;
    sub_10005E0B0((v0 + 504), v0 + 224, v40);
    sub_100006FC4(v0 + 224);
    v41 = v63[0];
    *(v0 + 712) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v0 + 720) = v42;
    AnyHashable.init<A>(_:)();
    *(v0 + 560) = &type metadata for Bool;
    *(v0 + 536) = 1;
    sub_100007274((v0 + 536), (v0 + 568));
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v63[0] = v41;
    sub_10005E0B0((v0 + 568), v0 + 264, v43);
    sub_100006FC4(v0 + 264);
    v44 = v63[0];
    *(v0 + 728) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v0 + 736) = v45;
    AnyHashable.init<A>(_:)();
    v46 = static Strings.Daemon.bundleIdentifier.getter();
    *(v0 + 624) = &type metadata for String;
    *(v0 + 600) = v46;
    *(v0 + 608) = v47;
    sub_100007274((v0 + 600), (v0 + 632));
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v63[0] = v44;
    sub_10005E0B0((v0 + 632), v0 + 304, v48);
    sub_100006FC4(v0 + 304);
    v49 = [objc_opt_self() serviceWithDefaultShellEndpoint];
    *(v0 + 832) = v49;
    if (v49)
    {
      v50 = v49;
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v52 = [objc_opt_self() optionsWithDictionary:isa];
      *(v0 + 840) = v52;

      static Strings.fbaBundleIdentifier.getter();
      v53 = String._bridgeToObjectiveC()();
      *(v0 + 848) = v53;

      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 744;
      *(v0 + 24) = sub_10003F1F0;
      v54 = swift_continuation_init();
      *(v0 + 136) = sub_100004F70(&qword_100083900, &unk_1000699E8);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_10003C83C;
      *(v0 + 104) = &unk_10007E618;
      *(v0 + 112) = v54;
      [v50 openApplication:v53 withOptions:v52 completion:v0 + 80];

      return _swift_continuation_await(v0 + 16);
    }

    v55 = *(v0 + 816);
    v56 = *(v0 + 800);
    v57 = *(v0 + 792);

    sub_100015E58(0xD00000000000001BLL, 0x800000010006C170);
    swift_willThrow();
    (*(v56 + 8))(v55, v57);
  }

  else
  {

    sub_100015E58(0xD00000000000001ALL, 0x800000010006C150);
    swift_willThrow();
  }

  v58 = *(v0 + 8);

  return v58();
}

uint64_t sub_10003F1F0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 856) = v1;
  if (v1)
  {
    v2 = sub_10003F434;
  }

  else
  {
    v2 = sub_10003F300;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10003F300()
{
  v1 = *(v0 + 848);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Launched FBA", v4, 2u);
  }

  v5 = *(v0 + 832);
  v6 = *(v0 + 816);
  v7 = *(v0 + 800);
  v8 = *(v0 + 792);

  (*(v7 + 8))(v6, v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10003F434(uint64_t a1)
{
  v2 = v1[106];
  v3 = v1[105];
  v4 = v1[104];
  v5 = v1[102];
  v6 = v1[100];
  v7 = v1[99];
  swift_willThrow();

  (*(v6 + 8))(v5, v7);

  v8 = v1[1];

  return v8();
}

uint64_t sub_10003F660(void *a1)
{
  v11 = sub_10003E694;
  v12 = 0;
  v7 = _NSConcreteStackBlock;
  v8 = 1107296256;
  v9 = sub_100059744;
  v10 = &unk_10007E640;
  v3 = _Block_copy(&v7);
  [a1 setInvalidationHandler:v3];
  _Block_release(v3);
  v11 = sub_10003E6A0;
  v12 = 0;
  v7 = _NSConcreteStackBlock;
  v8 = 1107296256;
  v9 = sub_100059744;
  v10 = &unk_10007E668;
  v4 = _Block_copy(&v7);
  [a1 setInterruptionHandler:v4];
  _Block_release(v4);
  [a1 resume];
  v5 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP15FeedbackService33RemoteViewControllerReplyProtocol_];
  [a1 setExportedInterface:v5];

  [a1 setExportedObject:v1];
  return 1;
}

uint64_t sub_10003F800(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004F70(&qword_100083898, &qword_1000699C0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23[-1] - v6;
  v8 = sub_100004F70(&qword_100083908, &qword_1000699F8);
  __chkstk_darwin(v8 - 8);
  v10 = &v23[-1] - v9;
  if (qword_100082630 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100002D00(v11, qword_100083700);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23[0] = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_1000049B8(0xD000000000000035, 0x800000010006C1E0, v23);
    _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s", v14, 0xCu);
    sub_100005ED8(v15);
  }

  v16 = OBJC_IVAR____TtC9feedbackdP33_109D9EA95C5E46A2F39C291451DCB14618RemoteAlertManager_remoteAlertHandle;
  v17 = *(a1 + OBJC_IVAR____TtC9feedbackdP33_109D9EA95C5E46A2F39C291451DCB14618RemoteAlertManager_remoteAlertHandle);
  if (v17)
  {
    [v17 unregisterObserver:a1];
    v17 = *(a1 + v16);
  }

  [v17 invalidate];
  v18 = OBJC_IVAR____TtC9feedbackdP33_109D9EA95C5E46A2F39C291451DCB14618RemoteAlertManager_checkedThrowingContinuation;
  swift_beginAccess();
  sub_10003FB54(a1 + v18, v10);
  if ((*(v5 + 48))(v10, 1, v4))
  {
    sub_1000071C8(v10, &qword_100083908, &qword_1000699F8);
  }

  else
  {
    (*(v5 + 16))(v7, v10, v4);
    sub_1000071C8(v10, &qword_100083908, &qword_1000699F8);
    sub_10000BCE0();
    v19 = swift_allocError();
    *v20 = 8;
    v22 = v19;
    CheckedContinuation.resume(throwing:)();
    (*(v5 + 8))(v7, v4);
  }

  return (*(a2 + 16))(a2);
}

uint64_t sub_10003FB54(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004F70(&qword_100083908, &qword_1000699F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003FBC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003FBDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004F70(&qword_100083908, &qword_1000699F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003FC4C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003FC8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10003FCDC()
{
  v0 = type metadata accessor for Logger();
  sub_100007284(v0, qword_100083930);
  sub_100002D00(v0, qword_100083930);
  static Strings.Daemon.bundleIdentifier.getter();
  return Logger.init(subsystem:category:)();
}

void sub_10003FD40(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void), void (*a6)(void))
{
  v7 = v6;
  v115 = a3;
  v116 = a4;
  v11 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  __chkstk_darwin(v11 - 8);
  v109 = &v98 - v12;
  v13 = type metadata accessor for FormLaunchConfiguration(0);
  v14 = *(v13 - 8);
  v110 = v13;
  v111 = v14;
  v15 = __chkstk_darwin(v13);
  v112 = v16;
  v113 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v114 = &v98 - v17;
  if (qword_100082638 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100002D00(v18, qword_100083930);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v108 = a1;
    v22 = a5;
    v23 = a6;
    v24 = v21;
    v25 = swift_slowAlloc();
    *&v124 = v25;
    *v24 = 136446210;
    *(v24 + 4) = sub_1000049B8(0xD00000000000003DLL, 0x800000010006C480, &v124);
    _os_log_impl(&_mh_execute_header, v19, v20, "%{public}s", v24, 0xCu);
    sub_100005ED8(v25);

    a6 = v23;
    a5 = v22;
  }

  type metadata accessor for FBKSForm();
  v26 = static FBKSForm.fromJSON(data:)();
  if (v26)
  {
    v27 = v26;
    v28 = *(v7 + 16);
    if (v28 && (v28 == 1 || (, *&v124 = dispatch thunk of FBKSForm.identifier.getter(), *(&v124 + 1) = v29, __chkstk_darwin(v124), *(&v98 - 2) = &v124, v30 = sub_100062FB4(sub_100045BD4, (&v98 - 4), v28), sub_100045BF4(v28), , (v30 & 1) == 0)))
    {
      v87 = v27;
      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        *&v124 = v91;
        *v90 = 136446210;
        v92 = dispatch thunk of FBKSForm.identifier.getter();
        v94 = sub_1000049B8(v92, v93, &v124);

        *(v90 + 4) = v94;
        _os_log_impl(&_mh_execute_header, v88, v89, "Client is not entitled to access form [%{public}s]", v90, 0xCu);
        sub_100005ED8(v91);
      }

      if (a5)
      {
        sub_10000BCE0();
        swift_allocError();
        *v95 = 7;
        v96 = _convertErrorToNSError(_:)();
        a5();
      }

      else
      {
      }
    }

    else
    {
      type metadata accessor for FBKSLaunchConfiguration();
      v31 = static FBKSLaunchConfiguration.fromJSON(data:)();
      if (v31)
      {
        v32 = v31;
        v33 = v27;
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.debug.getter();

        v36 = os_log_type_enabled(v34, v35);
        v105 = a6;
        v106 = a5;
        if (v36)
        {
          v37 = swift_slowAlloc();
          *&v124 = swift_slowAlloc();
          *v37 = 136446722;
          *(v37 + 4) = sub_1000049B8(0xD00000000000003DLL, 0x800000010006C480, &v124);
          *(v37 + 12) = 2082;
          v38 = dispatch thunk of FBKSForm.identifier.getter();
          v40 = sub_1000049B8(v38, v39, &v124);

          *(v37 + 14) = v40;
          *(v37 + 22) = 2082;
          dispatch thunk of FBKSForm.authenticationMethod.getter();
          v41 = FBKSForm.AuthenticationMethod.description.getter();
          v43 = sub_1000049B8(v41, v42, &v124);

          *(v37 + 24) = v43;
          _os_log_impl(&_mh_execute_header, v34, v35, "%{public}s form: [%{public}s] authentication method: [%{public}s]", v37, 0x20u);
          swift_arrayDestroy();
        }

        v103 = v33;
        v116 = dispatch thunk of FBKSForm.identifier.getter();
        v108 = v44;
        v115 = dispatch thunk of FBKSForm.authenticationMethod.getter();
        v107 = dispatch thunk of FBKSForm.answers.getter();
        v45 = v32;
        v46 = dispatch thunk of FBKSLaunchConfiguration.localizedPromptTitle.getter();
        v101 = v47;
        v102 = v46;
        v48 = dispatch thunk of FBKSLaunchConfiguration.localizedPromptMessage.getter();
        v99 = v49;
        v100 = v48;
        v50 = dispatch thunk of FBKSLaunchConfiguration.localizedAlertViewProceedButtonTitle.getter();
        v52 = v51;
        v53 = dispatch thunk of FBKSLaunchConfiguration.localizedAlertViewDeclineButtonTitle.getter();
        v55 = v54;
        v56 = dispatch thunk of FBKSLaunchConfiguration.skipsPrompt.getter();
        v57 = dispatch thunk of FBKSLaunchConfiguration.alwaysLaunchInRemoteAlert.getter();
        v104 = v45;
        v58 = dispatch thunk of FBKSLaunchConfiguration.promptStyle.getter();
        v59 = dispatch thunk of FBKSLaunchConfiguration.notifyImmediately.getter();
        *&v118 = v102;
        *(&v118 + 1) = v101;
        *&v119 = v100;
        *(&v119 + 1) = v99;
        *&v120 = v50;
        *(&v120 + 1) = v52;
        *&v121 = v53;
        *(&v121 + 1) = v55;
        LOBYTE(v122) = v56;
        BYTE1(v122) = v57;
        *(&v122 + 1) = v58;
        v123 = v59;
        v129 = v59;
        v126 = v120;
        v127 = v121;
        v128 = v122;
        v124 = v118;
        v125 = v119;
        v60 = v110;
        v61 = v110[8];
        v62 = type metadata accessor for Date();
        v63 = *(*(v62 - 8) + 56);
        v64 = v114;
        v63(&v114[v61], 1, 1, v62);
        v63((v64 + v60[9]), 1, 1, v62);
        v65 = v108;

        v66 = v107;

        sub_10000FA5C(&v118, &v117);
        Date.init()();
        v67 = v115;
        *v64 = v116;
        *(v64 + 8) = v65;
        *(v64 + 16) = v67;
        *(v64 + 24) = v66;
        v68 = v127;
        *(v64 + 64) = v126;
        *(v64 + 80) = v68;
        *(v64 + 96) = v128;
        *(v64 + 112) = v129;
        v69 = v125;
        *(v64 + 32) = v124;
        *(v64 + 48) = v69;
        *(v64 + v60[7]) = 0;
        *(v64 + v60[10]) = 0;
        v70 = v109;
        static TaskPriority.utility.getter();
        v71 = type metadata accessor for TaskPriority();
        (*(*(v71 - 8) + 56))(v70, 0, 1, v71);
        v72 = v113;
        sub_10000F92C(v64, v113);
        v73 = (*(v111 + 80) + 64) & ~*(v111 + 80);
        v74 = (v112 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
        v75 = swift_allocObject();
        v75[2] = 0;
        v75[3] = 0;
        v76 = v108;
        v75[4] = v116;
        v75[5] = v76;
        v77 = v107;
        v75[6] = v115;
        v75[7] = v77;
        sub_10000F8C8(v72, v75 + v73);
        v78 = v103;
        *(v75 + v74) = v103;
        v79 = v75 + ((v74 + 15) & 0xFFFFFFFFFFFFFFF8);
        v80 = v125;
        *v79 = v124;
        *(v79 + 1) = v80;
        v79[80] = v129;
        v81 = v128;
        *(v79 + 3) = v127;
        *(v79 + 4) = v81;
        *(v79 + 2) = v126;
        v82 = (v75 + ((v74 + 103) & 0xFFFFFFFFFFFFFFF8));
        v84 = v105;
        v83 = v106;
        *v82 = v106;
        v82[1] = v84;
        v85 = v78;
        sub_100045FB4(v83, v84);
        sub_100059484(0, 0, v70, &unk_100069A58, v75);

        sub_1000071C8(v70, &qword_1000833B0, &qword_100068D60);
        sub_10000F990(v64);
      }

      else
      {
        if (a5)
        {
          v97 = sub_100015E58(0xD00000000000002ALL, 0x800000010006C450);
          a5();
        }
      }
    }
  }

  else if (a5)
  {
    v116 = sub_100015E58(0xD00000000000001FLL, 0x800000010006C430);
    a5();
    v86 = v116;
  }
}

uint64_t sub_1000406BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 256) = v13;
  *(v8 + 264) = v14;
  *(v8 + 240) = v12;
  *(v8 + 224) = a7;
  *(v8 + 232) = a8;
  *(v8 + 208) = a5;
  *(v8 + 216) = a6;
  *(v8 + 200) = a4;
  sub_100004F70(&qword_100082CA8, &unk_100069A60);
  *(v8 + 272) = swift_task_alloc();
  v9 = type metadata accessor for FormItem();
  *(v8 + 280) = v9;
  *(v8 + 288) = *(v9 - 8);
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();

  return _swift_task_switch(sub_100040800, 0, 0);
}

uint64_t sub_100040800(uint64_t a1)
{
  v3 = v1[25];
  v2 = v1[26];
  static Strings.Daemon.bundleIdentifier.getter();
  v4._countAndFlagsBits = 0x7463656C6C6F632ELL;
  v4._object = 0xE90000000000002ELL;
  String.append(_:)(v4);
  v5._countAndFlagsBits = v3;
  v5._object = v2;
  String.append(_:)(v5);
  String.utf8CString.getter();

  os_transaction_create();

  swift_unknownObjectRelease();
  type metadata accessor for SeedPortal();
  v1[42] = static SeedPortal.shared.getter();
  v6 = swift_task_alloc();
  v1[43] = v6;
  *v6 = v1;
  v6[1] = sub_100040930;
  v7 = v1[34];
  v8 = v1[27];
  v9 = v1[28];
  v10 = v1[25];
  v11 = v1[26];

  return sub_10001A628(v7, v10, v11, v8, v9, 0);
}

uint64_t sub_100040930()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_10004166C;
  }

  else
  {
    v2 = sub_100040A60;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100040A60()
{
  v99 = v0;
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[34];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000071C8(v3, &qword_100082CA8, &unk_100069A60);
    if (qword_100082638 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100002D00(v4, qword_100083930);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v8 = v0[25];
      v7 = v0[26];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v97 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_1000049B8(v8, v7, &v97);
      _os_log_impl(&_mh_execute_header, v5, v6, "Form [%s] is not available. Will not proceed.", v9, 0xCu);
      sub_100005ED8(v10);
    }

    if (qword_100082620 != -1)
    {
      swift_once();
    }

    v11 = v0[29];
    v12 = qword_100085E18;
    v0[56] = qword_100085E18;
    v0[57] = *v11;
    v0[58] = v11[1];
    sub_10000BCE0();
    v0[59] = swift_allocError();
    *v13 = 1;
    v0[60] = _convertErrorToNSError(_:)();

    return _swift_task_switch(sub_100042FC4, v12, 0);
  }

  (*(v2 + 32))(v0[41], v3, v1);
  if (qword_100082638 != -1)
  {
    swift_once();
  }

  v15 = v0[40];
  v14 = v0[41];
  v16 = v0[35];
  v17 = v0[36];
  v18 = type metadata accessor for Logger();
  v0[45] = sub_100002D00(v18, qword_100083930);
  v94 = *(v17 + 16);
  v94(v15, v14, v16);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  v21 = os_log_type_enabled(v19, v20);
  v22 = v0[40];
  v24 = v0[35];
  v23 = v0[36];
  if (v21)
  {
    v25 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v97 = v92;
    *v25 = 136315138;
    sub_100046018();
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v29 = *(v23 + 8);
    v29(v22, v24);
    v30 = sub_1000049B8(v26, v28, &v97);

    *(v25 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v19, v20, "Fetched form [%s]", v25, 0xCu);
    sub_100005ED8(v92);
  }

  else
  {

    v29 = *(v23 + 8);
    v29(v22, v24);
  }

  v0[46] = v29;
  v31 = FBKSForm.AuthenticationMethod.rawValue.getter();
  if (v31 != FBKSForm.AuthenticationMethod.rawValue.getter() && (FormItem.isSurvey.getter() & 1) != 0)
  {
    v94(v0[39], v0[41], v0[35]);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    v34 = os_log_type_enabled(v32, v33);
    v35 = v0[39];
    v36 = v0[35];
    if (v34)
    {
      v37 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v97 = v93;
      *v37 = 136315138;
      sub_100046018();
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      v29(v35, v36);
      v41 = sub_1000049B8(v38, v40, &v97);

      *(v37 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v32, v33, "Making survey [%s] available in FBA inbox", v37, 0xCu);
      sub_100005ED8(v93);
    }

    else
    {

      v29(v35, v36);
    }

    type metadata accessor for FBKSSharedPersistence();
    dispatch thunk of FBKSForm.identifier.getter();
    static FBKSSharedPersistence.saveSurveyTatInFBAInbox(formIdentifier:)();
  }

  v42 = *(v0[31] + 64);
  if (v42 != 2 && (v42 & 1) != 0)
  {
    v43 = FormItem.isSurvey.getter();
    v44 = v0[41];
    v45 = v0[35];
    if (v43)
    {
      v94(v0[38], v44, v45);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();
      v48 = os_log_type_enabled(v46, v47);
      v49 = v0[38];
      v50 = v0[35];
      if (v48)
      {
        v51 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v97 = v95;
        *v51 = 136315138;
        sub_100046018();
        v52 = dispatch thunk of CustomStringConvertible.description.getter();
        v53 = v29;
        v55 = v54;
        v53(v49, v50);
        v56 = sub_1000049B8(v52, v55, &v97);
        v29 = v53;

        *(v51 + 4) = v56;
        _os_log_impl(&_mh_execute_header, v46, v47, "Skipping prompt for form [%s].", v51, 0xCu);
        sub_100005ED8(v95);
      }

      else
      {

        v29(v49, v50);
      }

      v67 = v0[32];
      if (v67)
      {
        v67(0);
      }

LABEL_47:
      v29(v0[41], v0[35]);

      v90 = v0[1];

      return v90();
    }

    v94(v0[37], v44, v45);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    v59 = os_log_type_enabled(v57, v58);
    v60 = v0[37];
    v61 = v0[35];
    if (v59)
    {
      v62 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v97 = v96;
      *v62 = 136315138;
      sub_100046018();
      v63 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = v64;
      v29(v60, v61);
      v66 = sub_1000049B8(v63, v65, &v97);

      *(v62 + 4) = v66;
      _os_log_impl(&_mh_execute_header, v57, v58, "Skipping prompt is not compatible with feedback form [%s].", v62, 0xCu);
      sub_100005ED8(v96);
    }

    else
    {

      v29(v60, v61);
    }
  }

  v68 = v0[31];
  v69 = *(v68 + 72);
  if (v69 == 1)
  {
    v77 = FormItem.isSurvey.getter();
    v78 = swift_task_alloc();
    v0[49] = v78;
    *v78 = v0;
    v78[1] = sub_100041D38;
    v79 = v0[31];

    return sub_10002E580(v79, v77 & 1);
  }

  else
  {
    if (v69 != 2)
    {
      sub_10000FA5C(v0[31], (v0 + 2));
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.error.getter();
      sub_100045FC4(v68);
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v97 = v83;
        *v82 = 136315138;
        v0[24] = v69;
        v84 = String.init<A>(describing:)();
        v86 = sub_1000049B8(v84, v85, &v97);

        *(v82 + 4) = v86;
        _os_log_impl(&_mh_execute_header, v80, v81, "Prompt style not handled %s", v82, 0xCu);
        sub_100005ED8(v83);
      }

      v87 = v0[32];
      if (v87)
      {
        v97 = 0;
        v98 = 0xE000000000000000;
        _StringGuts.grow(_:)(27);

        v97 = 0xD000000000000019;
        v98 = 0x800000010006C4C0;
        v0[23] = v69;
        v88._countAndFlagsBits = String.init<A>(describing:)();
        String.append(_:)(v88);

        v89 = sub_100015E58(v97, v98);

        v87(v89);
      }

      goto LABEL_47;
    }

    if (qword_1000825D0 != -1)
    {
      swift_once();
    }

    v70 = swift_task_alloc();
    v0[47] = v70;
    *v70 = v0;
    v70[1] = sub_100041C24;
    v71 = v0[41];
    v72 = v0[31];
    v73 = v0[27];
    v74 = v0[28];
    v76 = v0[25];
    v75 = v0[26];

    return sub_10000C35C(v76, v75, v73, v74, v71, v72);
  }
}

uint64_t sub_10004166C()
{
  v29 = v0;
  v1 = *(v0 + 352);
  *(v0 + 160) = v1;
  *(v0 + 488) = v1;
  swift_errorRetain();
  sub_100004F70(&unk_1000833F0, &unk_100068F00);
  if (swift_dynamicCast())
  {

    v2 = *(v0 + 97);
    if (v2 == 5)
    {
      if (qword_100082638 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_100002D00(v3, qword_100083930);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_19;
      }

      v6 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v6 = 136446466;
      *(v6 + 4) = sub_1000049B8(0xD00000000000003DLL, 0x800000010006C480, &v28);
      *(v6 + 12) = 2080;
      v7 = 5;
    }

    else
    {
      if (qword_100082638 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100002D00(v21, qword_100083930);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_19;
      }

      v6 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v6 = 136446466;
      *(v6 + 4) = sub_1000049B8(0xD00000000000003DLL, 0x800000010006C480, &v28);
      *(v6 + 12) = 2080;
      v7 = v2;
    }

    v22 = sub_100015668(v7);
    v24 = sub_1000049B8(v22, v23, &v28);

    *(v6 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s failed with: %s", v6, 0x16u);
    swift_arrayDestroy();

LABEL_19:

    sub_10000BCE0();
    swift_allocError();
    *v25 = v2;
    *(v0 + 496) = _convertErrorToNSError(_:)();

    if (qword_100082620 != -1)
    {
      swift_once();
    }

    v26 = *(v0 + 232);
    v19 = qword_100085E18;
    *(v0 + 504) = qword_100085E18;
    *(v0 + 512) = *v26;
    *(v0 + 520) = v26[1];
    v20 = sub_100043088;
    goto LABEL_22;
  }

  if (qword_100082638 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100002D00(v8, qword_100083930);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v11 = 136446466;
    *(v11 + 4) = sub_1000049B8(0xD00000000000003DLL, 0x800000010006C480, &v28);
    *(v11 + 12) = 2080;
    *(v0 + 176) = v1;
    swift_errorRetain();
    v12 = String.init<A>(describing:)();
    v14 = sub_1000049B8(v12, v13, &v28);

    *(v11 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s failed with: %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  swift_getErrorValue();
  v16 = *(v0 + 136);
  v15 = *(v0 + 144);
  *(v0 + 128) = v15;
  v17 = sub_100019A2C((v0 + 104));
  (*(*(v15 - 8) + 16))(v17, v16, v15);
  *(v0 + 528) = static FBKSError.nsError(anyError:)();
  sub_100005ED8((v0 + 104));
  if (qword_100082620 != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 232);
  v19 = qword_100085E18;
  *(v0 + 536) = qword_100085E18;
  *(v0 + 544) = *v18;
  *(v0 + 552) = v18[1];
  v20 = sub_1000431D4;
LABEL_22:

  return _swift_task_switch(v20, v19, 0);
}

uint64_t sub_100041C24()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_100043334;
  }

  else
  {
    v2 = sub_100047528;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100041D38(char a1)
{
  v4 = *v2;
  *(*v2 + 400) = v1;

  if (v1)
  {
    v5 = sub_1000420F4;
  }

  else
  {
    *(v4 + 98) = a1;
    v5 = sub_100041E60;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100041E60()
{
  v19 = v0;
  v1 = *(v0 + 98);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v4 = os_log_type_enabled(v2, v3);
  if (v1)
  {
    if (v4)
    {
      v6 = *(v0 + 200);
      v5 = *(v0 + 208);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_1000049B8(v6, v5, &v18);
      _os_log_impl(&_mh_execute_header, v2, v3, "User declined [%s].", v7, 0xCu);
      sub_100005ED8(v8);
    }

    if (qword_100082620 != -1)
    {
      swift_once();
    }

    v9 = qword_100085E18;
    *(v0 + 424) = qword_100085E18;
    *(v0 + 432) = dispatch thunk of FBKSForm.identifier.getter();
    *(v0 + 440) = v10;
    v11 = sub_100042F4C;
    v12 = v9;
  }

  else
  {
    if (v4)
    {
      v14 = *(v0 + 200);
      v13 = *(v0 + 208);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1000049B8(v14, v13, &v18);
      _os_log_impl(&_mh_execute_header, v2, v3, "User agreed to [%s]. Will launch feedback", v15, 0xCu);
      sub_100005ED8(v16);
    }

    if (qword_1000825F8 != -1)
    {
      swift_once();
    }

    v12 = qword_100085DF0;
    v11 = sub_1000426C8;
  }

  return _swift_task_switch(v11, v12, 0);
}

uint64_t sub_1000420F4()
{
  v29 = v0;
  (*(v0 + 368))(*(v0 + 328), *(v0 + 280));
  v1 = *(v0 + 400);
  *(v0 + 160) = v1;
  *(v0 + 488) = v1;
  swift_errorRetain();
  sub_100004F70(&unk_1000833F0, &unk_100068F00);
  if (swift_dynamicCast())
  {

    v2 = *(v0 + 97);
    if (v2 == 5)
    {
      if (qword_100082638 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_100002D00(v3, qword_100083930);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_19;
      }

      v6 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v6 = 136446466;
      *(v6 + 4) = sub_1000049B8(0xD00000000000003DLL, 0x800000010006C480, &v28);
      *(v6 + 12) = 2080;
      v7 = 5;
    }

    else
    {
      if (qword_100082638 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100002D00(v21, qword_100083930);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_19;
      }

      v6 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v6 = 136446466;
      *(v6 + 4) = sub_1000049B8(0xD00000000000003DLL, 0x800000010006C480, &v28);
      *(v6 + 12) = 2080;
      v7 = v2;
    }

    v22 = sub_100015668(v7);
    v24 = sub_1000049B8(v22, v23, &v28);

    *(v6 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s failed with: %s", v6, 0x16u);
    swift_arrayDestroy();

LABEL_19:

    sub_10000BCE0();
    swift_allocError();
    *v25 = v2;
    *(v0 + 496) = _convertErrorToNSError(_:)();

    if (qword_100082620 != -1)
    {
      swift_once();
    }

    v26 = *(v0 + 232);
    v19 = qword_100085E18;
    *(v0 + 504) = qword_100085E18;
    *(v0 + 512) = *v26;
    *(v0 + 520) = v26[1];
    v20 = sub_100043088;
    goto LABEL_22;
  }

  if (qword_100082638 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100002D00(v8, qword_100083930);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v11 = 136446466;
    *(v11 + 4) = sub_1000049B8(0xD00000000000003DLL, 0x800000010006C480, &v28);
    *(v11 + 12) = 2080;
    *(v0 + 176) = v1;
    swift_errorRetain();
    v12 = String.init<A>(describing:)();
    v14 = sub_1000049B8(v12, v13, &v28);

    *(v11 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s failed with: %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  swift_getErrorValue();
  v16 = *(v0 + 136);
  v15 = *(v0 + 144);
  *(v0 + 128) = v15;
  v17 = sub_100019A2C((v0 + 104));
  (*(*(v15 - 8) + 16))(v17, v16, v15);
  *(v0 + 528) = static FBKSError.nsError(anyError:)();
  sub_100005ED8((v0 + 104));
  if (qword_100082620 != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 232);
  v19 = qword_100085E18;
  *(v0 + 536) = qword_100085E18;
  *(v0 + 544) = *v18;
  *(v0 + 552) = v18[1];
  v20 = sub_1000431D4;
LABEL_22:

  return _swift_task_switch(v20, v19, 0);
}

uint64_t sub_1000426C8()
{
  sub_10002150C(v0[29]);

  v1 = swift_task_alloc();
  v0[51] = v1;
  *v1 = v0;
  v1[1] = sub_10004278C;
  v2 = v0[41];
  v3 = v0[31];
  v4 = v0[27];
  v5 = v0[28];
  v7 = v0[25];
  v6 = v0[26];

  return sub_1000600C0(v7, v6, v4, v5, v3, v2);
}

uint64_t sub_10004278C()
{
  *(*v1 + 416) = v0;

  if (v0)
  {
    v2 = sub_100042978;
  }

  else
  {
    v2 = sub_1000428A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000428A0()
{
  v1 = *(v0 + 256);
  if (v1)
  {
    v1(0);
  }

  (*(v0 + 368))(*(v0 + 328), *(v0 + 280));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100042978()
{
  v29 = v0;
  (*(v0 + 368))(*(v0 + 328), *(v0 + 280));
  v1 = *(v0 + 416);
  *(v0 + 160) = v1;
  *(v0 + 488) = v1;
  swift_errorRetain();
  sub_100004F70(&unk_1000833F0, &unk_100068F00);
  if (swift_dynamicCast())
  {

    v2 = *(v0 + 97);
    if (v2 == 5)
    {
      if (qword_100082638 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_100002D00(v3, qword_100083930);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_19;
      }

      v6 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v6 = 136446466;
      *(v6 + 4) = sub_1000049B8(0xD00000000000003DLL, 0x800000010006C480, &v28);
      *(v6 + 12) = 2080;
      v7 = 5;
    }

    else
    {
      if (qword_100082638 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100002D00(v21, qword_100083930);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_19;
      }

      v6 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v6 = 136446466;
      *(v6 + 4) = sub_1000049B8(0xD00000000000003DLL, 0x800000010006C480, &v28);
      *(v6 + 12) = 2080;
      v7 = v2;
    }

    v22 = sub_100015668(v7);
    v24 = sub_1000049B8(v22, v23, &v28);

    *(v6 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s failed with: %s", v6, 0x16u);
    swift_arrayDestroy();

LABEL_19:

    sub_10000BCE0();
    swift_allocError();
    *v25 = v2;
    *(v0 + 496) = _convertErrorToNSError(_:)();

    if (qword_100082620 != -1)
    {
      swift_once();
    }

    v26 = *(v0 + 232);
    v19 = qword_100085E18;
    *(v0 + 504) = qword_100085E18;
    *(v0 + 512) = *v26;
    *(v0 + 520) = v26[1];
    v20 = sub_100043088;
    goto LABEL_22;
  }

  if (qword_100082638 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100002D00(v8, qword_100083930);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v11 = 136446466;
    *(v11 + 4) = sub_1000049B8(0xD00000000000003DLL, 0x800000010006C480, &v28);
    *(v11 + 12) = 2080;
    *(v0 + 176) = v1;
    swift_errorRetain();
    v12 = String.init<A>(describing:)();
    v14 = sub_1000049B8(v12, v13, &v28);

    *(v11 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s failed with: %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  swift_getErrorValue();
  v16 = *(v0 + 136);
  v15 = *(v0 + 144);
  *(v0 + 128) = v15;
  v17 = sub_100019A2C((v0 + 104));
  (*(*(v15 - 8) + 16))(v17, v16, v15);
  *(v0 + 528) = static FBKSError.nsError(anyError:)();
  sub_100005ED8((v0 + 104));
  if (qword_100082620 != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 232);
  v19 = qword_100085E18;
  *(v0 + 536) = qword_100085E18;
  *(v0 + 544) = *v18;
  *(v0 + 552) = v18[1];
  v20 = sub_1000431D4;
LABEL_22:

  return _swift_task_switch(v20, v19, 0);
}

uint64_t sub_100042F4C()
{
  sub_100034A7C(*(v0 + 432), *(v0 + 440));

  return _swift_task_switch(sub_100047528, 0, 0);
}

uint64_t sub_100042FC4()
{
  v1 = *(v0 + 480);
  sub_100033994(*(v0 + 456), *(v0 + 464), v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100043088()
{
  sub_100033994(*(v0 + 512), *(v0 + 520), *(v0 + 496));

  return _swift_task_switch(sub_1000430F8, 0, 0);
}

uint64_t sub_1000430F8()
{
  v1 = *(v0 + 256);
  if (v1)
  {
    v2 = *(v0 + 496);
    v3 = v2;
    v1(v2);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000431D4()
{
  sub_100033994(*(v0 + 544), *(v0 + 552), *(v0 + 528));

  return _swift_task_switch(sub_100043248, 0, 0);
}

uint64_t sub_100043248()
{
  v1 = v0[32];
  v2 = v0[66];
  if (v1)
  {
    v3 = v2;
    v1(v2);
  }

  else
  {
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_100043334()
{
  v29 = v0;
  (*(v0 + 368))(*(v0 + 328), *(v0 + 280));
  v1 = *(v0 + 384);
  *(v0 + 160) = v1;
  *(v0 + 488) = v1;
  swift_errorRetain();
  sub_100004F70(&unk_1000833F0, &unk_100068F00);
  if (swift_dynamicCast())
  {

    v2 = *(v0 + 97);
    if (v2 == 5)
    {
      if (qword_100082638 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_100002D00(v3, qword_100083930);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_19;
      }

      v6 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v6 = 136446466;
      *(v6 + 4) = sub_1000049B8(0xD00000000000003DLL, 0x800000010006C480, &v28);
      *(v6 + 12) = 2080;
      v7 = 5;
    }

    else
    {
      if (qword_100082638 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100002D00(v21, qword_100083930);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_19;
      }

      v6 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v6 = 136446466;
      *(v6 + 4) = sub_1000049B8(0xD00000000000003DLL, 0x800000010006C480, &v28);
      *(v6 + 12) = 2080;
      v7 = v2;
    }

    v22 = sub_100015668(v7);
    v24 = sub_1000049B8(v22, v23, &v28);

    *(v6 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s failed with: %s", v6, 0x16u);
    swift_arrayDestroy();

LABEL_19:

    sub_10000BCE0();
    swift_allocError();
    *v25 = v2;
    *(v0 + 496) = _convertErrorToNSError(_:)();

    if (qword_100082620 != -1)
    {
      swift_once();
    }

    v26 = *(v0 + 232);
    v19 = qword_100085E18;
    *(v0 + 504) = qword_100085E18;
    *(v0 + 512) = *v26;
    *(v0 + 520) = v26[1];
    v20 = sub_100043088;
    goto LABEL_22;
  }

  if (qword_100082638 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100002D00(v8, qword_100083930);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v11 = 136446466;
    *(v11 + 4) = sub_1000049B8(0xD00000000000003DLL, 0x800000010006C480, &v28);
    *(v11 + 12) = 2080;
    *(v0 + 176) = v1;
    swift_errorRetain();
    v12 = String.init<A>(describing:)();
    v14 = sub_1000049B8(v12, v13, &v28);

    *(v11 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s failed with: %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  swift_getErrorValue();
  v16 = *(v0 + 136);
  v15 = *(v0 + 144);
  *(v0 + 128) = v15;
  v17 = sub_100019A2C((v0 + 104));
  (*(*(v15 - 8) + 16))(v17, v16, v15);
  *(v0 + 528) = static FBKSError.nsError(anyError:)();
  sub_100005ED8((v0 + 104));
  if (qword_100082620 != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 232);
  v19 = qword_100085E18;
  *(v0 + 536) = qword_100085E18;
  *(v0 + 544) = *v18;
  *(v0 + 552) = v18[1];
  v20 = sub_1000431D4;
LABEL_22:

  return _swift_task_switch(v20, v19, 0);
}

uint64_t sub_100043A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_100043A48, 0, 0);
}

uint64_t sub_100043A48(uint64_t a1)
{
  v3 = v1[2];
  v2 = v1[3];
  static Strings.Daemon.bundleIdentifier.getter();
  v4._countAndFlagsBits = 0x2E746E756F632ELL;
  v4._object = 0xE700000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = v3;
  v5._object = v2;
  String.append(_:)(v5);
  String.utf8CString.getter();

  os_transaction_create();

  swift_unknownObjectRelease();
  if (qword_100082620 != -1)
  {
    swift_once();
  }

  v6 = qword_100085E18;
  v1[6] = qword_100085E18;

  return _swift_task_switch(sub_100043B54, v6, 0);
}

uint64_t sub_100043B54()
{
  v1 = *(v0 + 48);
  *(v0 + 56) = sub_100034EE0(*(v0 + 16), *(v0 + 24));

  return _swift_task_switch(sub_100043BC4, v1, 0);
}

uint64_t sub_100043BC4()
{
  *(v0 + 64) = sub_100035140(*(v0 + 16), *(v0 + 24));

  return _swift_task_switch(sub_100043C34, 0, 0);
}

uint64_t sub_100043C34()
{
  if (qword_1000825F8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_100043D00;
  v3 = v0[2];
  v2 = v0[3];

  return sub_10001C108(v3, v2);
}

uint64_t sub_100043D00(uint64_t a1)
{
  v2 = *(*v1 + 48);
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_100043E18, v2, 0);
}

uint64_t sub_100043E18()
{
  *(v0 + 88) = sub_100035DAC(*(v0 + 16), *(v0 + 24));

  return _swift_task_switch(sub_100043E88, 0, 0);
}

uint64_t sub_100043E88()
{
  v1 = *(v0 + 32);
  v2 = objc_allocWithZone(type metadata accessor for FBKSFeedbackCount());
  v3 = FBKSFeedbackCount.init(feedbackFiled:errors:currentCampaign:declineCount:)();
  v4 = FBKSFeedbackCount.asJSON.getter();
  v6 = v5;
  v1();
  sub_100013C98(v4, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100043FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100044010, 0, 0);
}

uint64_t sub_100044010()
{
  _StringGuts.grow(_:)(21);
  static Strings.Daemon.bundleIdentifier.getter();

  v1._object = 0x800000010006C5E0;
  v1._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v1);
  String.utf8CString.getter();

  os_transaction_create();

  swift_unknownObjectRelease();
  if (qword_100082620 != -1)
  {
    swift_once();
  }

  v2 = qword_100085E18;
  *(v0 + 32) = qword_100085E18;
  sub_10000BCE0();
  swift_allocError();
  *v3 = 2;
  v4 = _convertErrorToNSError(_:)();
  *(v0 + 40) = static FBKSError.xpcSafeNSError(error:)();

  return _swift_task_switch(sub_10004417C, v2, 0);
}

uint64_t sub_10004417C()
{
  v1 = *(v0 + 40);
  sub_100033994(*(v0 + 16), *(v0 + 24), v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10004427C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_1000442A0, 0, 0);
}

uint64_t sub_1000442A0()
{
  _StringGuts.grow(_:)(24);
  static Strings.Daemon.bundleIdentifier.getter();

  v1._object = 0x800000010006C580;
  v1._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v1);
  String.utf8CString.getter();

  os_transaction_create();

  swift_unknownObjectRelease();
  if (qword_1000825F8 != -1)
  {
    swift_once();
  }

  v2 = qword_100085DF0;
  *(v0 + 48) = qword_100085DF0;

  return _swift_task_switch(sub_1000443C4, v2, 0);
}

uint64_t sub_1000443C4()
{
  *(v0 + 96) = sub_100020CD8(*(v0 + 16), *(v0 + 24));

  return _swift_task_switch(sub_100044434, 0, 0);
}

uint64_t sub_100044434()
{
  v21 = v0;
  if (*(v0 + 96))
  {
    if (qword_100082638 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    *(v0 + 56) = sub_100002D00(v1, qword_100083930);

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v5 = *(v0 + 16);
      v4 = *(v0 + 24);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v20 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_1000049B8(v5, v4, &v20);
      _os_log_impl(&_mh_execute_header, v2, v3, "Marking form [%{public}s] as submitted", v6, 0xCu);
      sub_100005ED8(v7);
    }

    if (qword_100082610 != -1)
    {
      swift_once();
    }

    v8 = swift_task_alloc();
    *(v0 + 64) = v8;
    *v8 = v0;
    v8[1] = sub_10004477C;
    v10 = *(v0 + 16);
    v9 = *(v0 + 24);

    return sub_100026980(v10, v9);
  }

  else
  {
    if (qword_100082638 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100002D00(v12, qword_100083930);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v16 = *(v0 + 16);
      v15 = *(v0 + 24);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20 = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_1000049B8(v16, v15, &v20);
      _os_log_impl(&_mh_execute_header, v13, v14, "Form [%{public}s] is not known to feedbackd", v17, 0xCu);
      sub_100005ED8(v18);
    }

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_10004477C()
{
  v1 = *(*v0 + 48);

  return _swift_task_switch(sub_10004488C, v1, 0);
}

uint64_t sub_10004488C()
{
  sub_100020D7C(*(v0 + 16), *(v0 + 24));

  return _swift_task_switch(sub_1000448F4, 0, 0);
}

uint64_t sub_1000448F4()
{
  v18 = v0;
  v1 = v0[4];
  if (v1)
  {
    v2 = qword_100082620;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = qword_100085E18;
    v0[9] = qword_100085E18;
    v5 = sub_100044B44;
LABEL_5:

    return _swift_task_switch(v5, v4, 0);
  }

  v6 = v0[5];
  if (v6)
  {
    v7 = v6;
    if ([v7 integerValue])
    {
      if (qword_100082620 != -1)
      {
        swift_once();
      }

      v8 = qword_100085E18;
      v0[10] = qword_100085E18;
      v0[11] = [v7 integerValue];
      v5 = sub_100044C14;
      v4 = v8;
      goto LABEL_5;
    }
  }

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v12 = v0[2];
    v11 = v0[3];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_1000049B8(v12, v11, &v17);
    _os_log_impl(&_mh_execute_header, v9, v10, "Cannot record feedback submission for [%{public}s]. Feedback ID is invalid", v13, 0xCu);
    sub_100005ED8(v14);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_100044B44()
{
  sub_100033994(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return _swift_task_switch(sub_100044BB4, 0, 0);
}

uint64_t sub_100044BB4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100044C14()
{
  sub_100034220(*(v0 + 16), *(v0 + 24), *(v0 + 88));

  return _swift_task_switch(sub_100044C80, 0, 0);
}

uint64_t sub_100044C80()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100044DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 88) = a4;
  *(v5 + 96) = a5;
  return _swift_task_switch(sub_100044DDC, 0, 0);
}

uint64_t sub_100044DDC(uint64_t a1)
{
  static Strings.Daemon.bundleIdentifier.getter();
  v2._countAndFlagsBits = 0x74657365722ELL;
  v2._object = 0xE600000000000000;
  String.append(_:)(v2);
  String.utf8CString.getter();

  os_transaction_create();

  swift_unknownObjectRelease();
  if (qword_1000826D0 != -1)
  {
    swift_once();
  }

  v3 = swift_task_alloc();
  *(v1 + 104) = v3;
  *v3 = v1;
  v3[1] = sub_100044F00;

  return sub_100063734(0);
}

uint64_t sub_100044F00()
{

  return _swift_task_switch(sub_100044FFC, 0, 0);
}

uint64_t sub_100044FFC()
{
  if (qword_1000825F8 != -1)
  {
    swift_once();
  }

  v0 = qword_100085DF0;

  return _swift_task_switch(sub_100045090, v0, 0);
}

uint64_t sub_100045090()
{
  sub_100020630();

  return _swift_task_switch(sub_1000450F4, 0, 0);
}

uint64_t sub_1000450F4()
{
  if (qword_100082610 != -1)
  {
    swift_once();
  }

  sub_1000225C0();
  type metadata accessor for FBKSSharedPersistence();
  static FBKSSharedPersistence.removeAllInboxTats()();
  if (qword_100082620 != -1)
  {
    swift_once();
  }

  v1 = qword_100085E18;
  *(v0 + 112) = qword_100085E18;

  return _swift_task_switch(sub_1000451D8, v1, 0);
}

uint64_t sub_1000451D8()
{
  sub_10003361C();
  *(v0 + 120) = 0;

  return _swift_task_switch(sub_100045264, 0, 0);
}

uint64_t sub_100045264()
{
  v9 = v0;
  (*(v0 + 88))(0);
  if (qword_100082638 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100002D00(v1, qword_100083930);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1000049B8(0xD000000000000018, 0x800000010006C510, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "Finished %{public}s", v4, 0xCu);
    sub_100005ED8(v5);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000453E8()
{
  v22 = v0;
  if (qword_100082638 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100002D00(v1, qword_100083930);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[15];
    v5 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_1000049B8(0xD000000000000018, 0x800000010006C510, &v21);
    *(v5 + 12) = 2080;
    v0[10] = v4;
    swift_errorRetain();
    sub_100004F70(&unk_1000833F0, &unk_100068F00);
    v6 = String.init<A>(describing:)();
    v8 = sub_1000049B8(v6, v7, &v21);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s failed with: %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[11];
  swift_getErrorValue();
  v10 = v0[6];
  v11 = v0[7];
  v0[5] = v11;
  v12 = sub_100019A2C(v0 + 2);
  (*(*(v11 - 8) + 16))(v12, v10, v11);
  v13 = static FBKSError.nsError(anyError:)();
  sub_100005ED8(v0 + 2);
  v14 = v13;
  v9(v13);

  if (qword_100082638 != -1)
  {
    swift_once();
  }

  sub_100002D00(v1, qword_100083930);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v21 = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_1000049B8(0xD000000000000018, 0x800000010006C510, &v21);
    _os_log_impl(&_mh_execute_header, v15, v16, "Finished %{public}s", v17, 0xCu);
    sub_100005ED8(v18);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_1000457A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1000457C8, 0, 0);
}

uint64_t sub_1000457C8(uint64_t a1)
{
  static Strings.Daemon.bundleIdentifier.getter();
  v2._countAndFlagsBits = 0x752D74657365722ELL;
  v2._object = 0xEB00000000726573;
  String.append(_:)(v2);
  String.utf8CString.getter();

  os_transaction_create();

  swift_unknownObjectRelease();
  if (qword_1000826D0 != -1)
  {
    swift_once();
  }

  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  *v3 = v1;
  v3[1] = sub_1000458F8;

  return sub_100063734(0);
}

uint64_t sub_1000458F8()
{

  return _swift_task_switch(sub_1000459F4, 0, 0);
}

uint64_t sub_1000459F4()
{
  (*(v0 + 16))(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100045A90(uint64_t a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  a6(a5, v9);
}

uint64_t sub_100045B24()
{
  sub_100045BF4(*(v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t sub_100045BF4(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_100045C04()
{
  v1 = type metadata accessor for FormLaunchConfiguration(0);
  v2 = *(v1 - 1);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v14 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v2 + 80);
  swift_unknownObjectRelease();

  v4 = v0 + v3;

  v5 = v1[6];
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v4 + v5, v6);
  v9 = v1[8];
  v10 = *(v7 + 48);
  if (!v10(v4 + v9, 1, v6))
  {
    v8(v4 + v9, v6);
  }

  v11 = (v14 + 103) & 0xFFFFFFFFFFFFFFF8;
  v12 = v1[9];
  if (!v10(v4 + v12, 1, v6))
  {
    v8(v4 + v12, v6);
  }

  if (*(v0 + v11))
  {
  }

  return _swift_deallocObject(v0, v11 + 16, v15 | 7);
}

uint64_t sub_100045E3C(uint64_t a1)
{
  v3 = *(type metadata accessor for FormLaunchConfiguration(0) - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v12 = v1[2];
  v11 = v1[3];
  v5 = v1[5];
  v10 = v1[4];
  v6 = v1[6];
  v7 = v1[7];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002E084;

  return sub_1000406BC(a1, v12, v11, v10, v5, v6, v7, v1 + v4);
}

uint64_t sub_100045FB4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_100046018()
{
  result = qword_100083A30;
  if (!qword_100083A30)
  {
    type metadata accessor for FormItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083A30);
  }

  return result;
}

uint64_t sub_100046070()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000460B0(uint64_t a1, unint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v8 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  __chkstk_darwin(v8 - 8);
  v10 = v34 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  _Block_copy(a4);
  if (qword_100082638 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100002D00(v12, qword_100083930);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v34[0] = a4;
    v16 = a3;
    v17 = a2;
    v18 = v11;
    v19 = a1;
    v20 = v15;
    v21 = swift_slowAlloc();
    v35[0] = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_1000049B8(0xD00000000000002ALL, 0x800000010006C600, v35);
    _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s", v20, 0xCu);
    sub_100005ED8(v21);

    a1 = v19;
    v11 = v18;
    a2 = v17;
    a3 = v16;
    a4 = v34[0];
  }

  v23 = *(a3 + 16);
  if (v23 == 1 || v23 && (v35[0] = a1, v35[1] = a2, __chkstk_darwin(v22), v34[-2] = v35, , v24 = sub_100062FB4(sub_10004752C, &v34[-4], v23), sub_100045BF4(v23), (v24 & 1) == 0))
  {

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v35[0] = v30;
      *v29 = 136446210;
      *(v29 + 4) = sub_1000049B8(a1, a2, v35);
      _os_log_impl(&_mh_execute_header, v27, v28, "Client is not entitled to access form [%{public}s]", v29, 0xCu);
      sub_100005ED8(v30);
    }

    sub_10000BCE0();
    swift_allocError();
    *v31 = 7;
    v32 = _convertErrorToNSError(_:)();
    (a4)[2](a4, 0, v32);
  }

  else
  {
    static TaskPriority.utility.getter();
    v25 = type metadata accessor for TaskPriority();
    (*(*(v25 - 8) + 56))(v10, 0, 1, v25);
    v26 = swift_allocObject();
    v26[2] = 0;
    v26[3] = 0;
    v26[4] = a1;
    v26[5] = a2;
    v26[6] = sub_1000473E4;
    v26[7] = v11;

    sub_100059484(0, 0, v10, &unk_100069AC0, v26);

    sub_1000071C8(v10, &qword_1000833B0, &qword_100068D60);
  }
}

uint64_t sub_10004651C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  if (qword_100082638 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100002D00(v9, qword_100083930);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v12 = 136446466;
    *(v12 + 4) = sub_1000049B8(0xD000000000000035, 0x800000010006C5A0, &v17);
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_1000049B8(a1, a2, &v17);
    _os_log_impl(&_mh_execute_header, v10, v11, "%{public}s form: %{public}s", v12, 0x16u);
    swift_arrayDestroy();
  }

  type metadata accessor for FBKSSharedPersistence();
  static FBKSSharedPersistence.removeInboxTat(_:)();
  static TaskPriority.utility.getter();
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a1;
  v14[5] = a2;

  sub_100059788(0, 0, v8, &unk_100069AB0, v14);

  return (*(a3 + 16))(a3, 0);
}

uint64_t sub_1000467C0(uint64_t a1, unint64_t a2, void *a3, int a4, void *a5, uint64_t a6)
{
  v39 = a1;
  v11 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  __chkstk_darwin(v11 - 8);
  v13 = &v33 - v12;
  if (qword_100082638 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100002D00(v14, qword_100083930);
  v15 = a3;
  v16 = a5;

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  v19 = os_log_type_enabled(v17, v18);
  v37 = a3;
  v38 = a5;
  v36 = v15;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v34 = a4;
    v21 = v15;
    v22 = v20;
    v23 = swift_slowAlloc();
    v35 = a6;
    v24 = v23;
    v33 = swift_slowAlloc();
    v40 = v33;
    *v22 = 136446978;
    *(v22 + 4) = sub_1000049B8(0xD000000000000049, 0x800000010006C530, &v40);
    *(v22 + 12) = 2082;
    *(v22 + 14) = sub_1000049B8(v39, a2, &v40);
    *(v22 + 22) = 2114;
    *(v22 + 24) = v21;
    *v24 = a3;
    *(v22 + 32) = 1024;
    v25 = v21;
    LOBYTE(v21) = v34;

    *(v22 + 34) = a5 != 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "%{public}s form: %{public}s feedback: [%{public}@] has error? %{BOOL}d", v22, 0x26u);
    sub_1000071C8(v24, &qword_100082708, &qword_100068320);
    a6 = v35;

    swift_arrayDestroy();

    if ((v21 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (a4)
  {
LABEL_7:
    type metadata accessor for FBKSSharedPersistence();
    static FBKSSharedPersistence.removeInboxTat(_:)();
  }

LABEL_8:
  static TaskPriority.utility.getter();
  v26 = type metadata accessor for TaskPriority();
  (*(*(v26 - 8) + 56))(v13, 0, 1, v26);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v28 = v38;
  v27[4] = v39;
  v27[5] = a2;
  v29 = v37;
  v27[6] = v28;
  v27[7] = v29;
  v30 = v16;

  v31 = v36;
  sub_100059484(0, 0, v13, &unk_100069A98, v27);

  sub_1000071C8(v13, &qword_1000833B0, &qword_100068D60);
  return (*(a6 + 16))(a6, 0);
}

uint64_t sub_100046B60(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  if (qword_100082638 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100002D00(v7, qword_100083930);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_1000049B8(0xD000000000000018, 0x800000010006C510, &v16);
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s", v10, 0xCu);
    sub_100005ED8(v11);
  }

  static TaskPriority.utility.getter();
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a1;
  v13[5] = a2;

  sub_100059484(0, 0, v6, &unk_100069A88, v13);

  return sub_1000071C8(v6, &qword_1000833B0, &qword_100068D60);
}

uint64_t sub_100046DB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  if (qword_100082638 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100002D00(v7, qword_100083930);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_1000049B8(0xD000000000000023, 0x800000010006C4E0, &v16);
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s", v10, 0xCu);
    sub_100005ED8(v11);
  }

  static TaskPriority.utility.getter();
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a1;
  v13[5] = a2;

  sub_100059484(0, 0, v6, &unk_100069A78, v13);

  return sub_1000071C8(v6, &qword_1000833B0, &qword_100068D60);
}

uint64_t sub_100047018(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002E084;

  return sub_1000457A8(a1, v4, v5, v7, v6);
}

uint64_t sub_1000470D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000BEA0;

  return sub_100044DBC(a1, v4, v5, v7, v6);
}

uint64_t sub_100047198()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000471E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002E084;

  return sub_10004427C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1000472D4(void (*a1)(void))
{
  swift_unknownObjectRelease();
  a1(*(v1 + 40));

  return _swift_deallocObject(v1, 48, 7);
}

uint64_t sub_100047324(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002E084;

  return sub_100043FF0(a1, v4, v5, v7, v6);
}

uint64_t sub_1000473EC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100047434(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002E084;

  return sub_100043A24(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100047508(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_10004754C()
{
  static Strings.Daemon.configurationUserDefaultsDomain.getter();
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    qword_100085E20 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1000475D0()
{
  if (qword_100082640 != -1)
  {
    swift_once();
  }

  v0 = qword_100085E20;
  sub_100004F70(&qword_100082E80, &qword_1000692C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100069110;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 72) = &type metadata for Int;
  *(inited + 40) = 0x800000010006C800;
  *(inited + 48) = 48;
  v2 = v0;
  sub_100015ADC(inited);
  swift_setDeallocating();
  sub_100047EC8(inited + 32);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v2 registerDefaults:isa];

  qword_100083A38 = 0xD000000000000014;
  unk_100083A40 = 0x800000010006C800;
  qword_100083A48 = v2;
}

void sub_100047718()
{
  if (qword_100082640 != -1)
  {
    swift_once();
  }

  v0 = qword_100085E20;
  sub_100004F70(&qword_100082E80, &qword_1000692C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100069110;
  *(inited + 32) = 0xD000000000000018;
  *(inited + 72) = &type metadata for Int;
  *(inited + 40) = 0x800000010006C820;
  *(inited + 48) = 1;
  v2 = v0;
  sub_100015ADC(inited);
  swift_setDeallocating();
  sub_100047EC8(inited + 32);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v2 registerDefaults:isa];

  qword_100083A50 = 0xD000000000000018;
  *algn_100083A58 = 0x800000010006C820;
  qword_100083A60 = v2;
}

void sub_100047860()
{
  if (qword_100082640 != -1)
  {
    swift_once();
  }

  v0 = qword_100085E20;
  sub_100004F70(&qword_100082E80, &qword_1000692C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100069110;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 72) = &type metadata for Int;
  *(inited + 40) = 0x800000010006C840;
  *(inited + 48) = 5;
  v2 = v0;
  sub_100015ADC(inited);
  swift_setDeallocating();
  sub_100047EC8(inited + 32);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v2 registerDefaults:isa];

  qword_100083A68 = 0xD000000000000011;
  unk_100083A70 = 0x800000010006C840;
  qword_100083A78 = v2;
}

void sub_1000479A8()
{
  if (qword_100082640 != -1)
  {
    swift_once();
  }

  v0 = qword_100085E20;
  sub_100004F70(&qword_100082E80, &qword_1000692C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100069110;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 72) = &type metadata for Int;
  *(inited + 40) = 0x800000010006C7C0;
  *(inited + 48) = 11;
  v2 = v0;
  sub_100015ADC(inited);
  swift_setDeallocating();
  sub_100047EC8(inited + 32);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v2 registerDefaults:isa];

  qword_100083A80 = 0xD000000000000010;
  *algn_100083A88 = 0x800000010006C7C0;
  qword_100083A90 = v2;
}

void sub_100047AF0()
{
  if (qword_100082640 != -1)
  {
    swift_once();
  }

  v0 = qword_100085E20;
  sub_100004F70(&qword_100082E80, &qword_1000692C8);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000012;
  *(inited + 16) = xmmword_100069110;
  *(inited + 72) = &type metadata for Int;
  *(inited + 40) = 0x800000010006C7E0;
  *(inited + 48) = 0;
  v2 = v0;
  sub_100015ADC(inited);
  swift_setDeallocating();
  sub_100047EC8(inited + 32);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v2 registerDefaults:isa];

  qword_100083A98 = 0xD000000000000012;
  unk_100083AA0 = 0x800000010006C7E0;
  qword_100083AA8 = v2;
}

void sub_100047C34()
{
  if (qword_100082640 != -1)
  {
    swift_once();
  }

  v0 = qword_100085E20;
  sub_100004F70(&qword_100082E80, &qword_1000692C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100069110;
  *(inited + 32) = 0x6F43657A6F6F6E73;
  *(inited + 72) = &type metadata for Int;
  *(inited + 40) = 0xEB00000000746E75;
  *(inited + 48) = 3;
  v2 = v0;
  sub_100015ADC(inited);
  swift_setDeallocating();
  sub_100047EC8(inited + 32);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v2 registerDefaults:isa];

  qword_100083AB0 = 0x6F43657A6F6F6E73;
  *algn_100083AB8 = 0xEB00000000746E75;
  qword_100083AC0 = v2;
}

void sub_100047D80()
{
  if (qword_100082640 != -1)
  {
    swift_once();
  }

  v0 = qword_100085E20;
  sub_100004F70(&qword_100082E80, &qword_1000692C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100069110;
  *(inited + 32) = 0x6567676972546F6ELL;
  *(inited + 40) = 0xE900000000000072;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 0;
  v2 = v0;
  sub_100015ADC(inited);
  swift_setDeallocating();
  sub_100047EC8(inited + 32);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v2 registerDefaults:isa];

  qword_100083AC8 = 0x6567676972546F6ELL;
  unk_100083AD0 = 0xE900000000000072;
  qword_100083AD8 = v2;
}

uint64_t sub_100047EC8(uint64_t a1)
{
  v2 = sub_100004F70(&qword_100082E58, &qword_100069150);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100047F48(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v6 = isa;
  (*(a4 + 16))(a4);
}

uint64_t sub_100047FBC()
{
  v0 = type metadata accessor for Logger();
  sub_100007284(v0, qword_100083AE0);
  sub_100002D00(v0, qword_100083AE0);
  static Strings.Daemon.bundleIdentifier.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100048028()
{
  v0 = type metadata accessor for Logger();
  sub_100007284(v0, CFBLog);
  v1 = sub_100002D00(v0, CFBLog);
  if (qword_100082680 != -1)
  {
    swift_once();
  }

  v2 = sub_100002D00(v0, qword_100083AE0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t CFBLog.unsafeMutableAddressor()
{
  if (qword_100082688 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_100002D00(v0, CFBLog);
}

uint64_t sub_100048154()
{
  [v0 auditToken];
  if (xpc_copy_code_signing_identity_for_token() && (v1 = String.init(utf8String:)(), v2))
  {
    v6[0] = v1;
    v6[1] = v2;
    __chkstk_darwin(v1);
    v5[2] = v6;
    v3 = sub_100062FB4(sub_100045BD4, v5, &off_10007DC58);
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t sub_10004824C(void (*a1)(void))
{
  a1();
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 valueForEntitlement:v2];

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
    result = swift_dynamicCast();
    if (result)
    {
      return v5;
    }
  }

  else
  {
    sub_1000071C8(v8, &qword_100082860, &unk_1000683C0);
    return 0;
  }

  return result;
}

id sub_100048338()
{
  result = [objc_allocWithZone(type metadata accessor for CentralizedFeedbackDaemon()) init];
  qword_100085E40 = result;
  return result;
}

uint64_t sub_100048368(uint64_t a1)
{
  static Strings.Daemon.bundleIdentifier.getter();
  String.utf8CString.getter();

  has_internal_diagnostics = os_variant_has_internal_diagnostics();

  byte_100083AF8 = has_internal_diagnostics;
  return result;
}

uint64_t sub_1000483B8()
{
  if (qword_100082698 != -1)
  {
    result = swift_once();
  }

  if (byte_100083AF8)
  {
    v0 = 5;
  }

  else
  {
    v0 = 10;
  }

  dword_100083AFC = v0;
  return result;
}

uint64_t sub_100048420()
{
  if (qword_100082698 != -1)
  {
    result = swift_once();
  }

  v0 = 86400.0;
  if (byte_100083AF8)
  {
    v0 = 10800.0;
  }

  qword_100083B00 = *&v0;
  return result;
}

void sub_10004853C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  __chkstk_darwin(v3 - 8);
  v5 = v24 - v4;
  if (qword_100082680 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100002D00(v6, qword_100083AE0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24[0] = v10;
    v24[1] = ObjectType;
    *v9 = 136446210;
    swift_getMetatypeMetadata();
    v11 = String.init<A>(describing:)();
    v13 = sub_1000049B8(v11, v12, v24);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Started %{public}s", v9, 0xCu);
    sub_100005ED8(v10);
  }

  static TaskPriority.utility.getter();
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v5, 0, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v1;
  v16 = v1;
  sub_100059484(0, 0, v5, &unk_100069BC8, v15);

  sub_1000071C8(v5, &qword_1000833B0, &qword_100068D60);
  static Strings.XPC.CentralizedFeedback.machService.getter();
  v17 = objc_allocWithZone(NSXPCListener);
  v18 = String._bridgeToObjectiveC()();

  v19 = [v17 initWithMachServiceName:v18];

  v20 = OBJC_IVAR____TtC9feedbackd25CentralizedFeedbackDaemon_listener;
  v21 = *&v16[OBJC_IVAR____TtC9feedbackd25CentralizedFeedbackDaemon_listener];
  *&v16[OBJC_IVAR____TtC9feedbackd25CentralizedFeedbackDaemon_listener] = v19;
  v22 = v19;

  if (v22)
  {
    [v22 setDelegate:v16];

    v23 = *&v16[v20];
    if (v23)
    {
      [v23 resume];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100048844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_100004F70(&unk_100083410, &qword_100068D50);
  *(v4 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_1000488E0, 0, 0);
}

uint64_t sub_1000488E0(uint64_t a1)
{
  static Strings.Daemon.bundleIdentifier.getter();

  v2._countAndFlagsBits = 0x6D6561446266632ELL;
  v2._object = 0xEF74726174536E6FLL;
  String.append(_:)(v2);

  String.utf8CString.getter();

  os_transaction_create();

  swift_unknownObjectRelease();
  if (qword_1000825C0 != -1)
  {
    swift_once();
  }

  v3 = qword_100085DD8;
  *(v1 + 56) = qword_100085DD8;

  return _swift_task_switch(sub_1000489F8, v3, 0);
}

uint64_t sub_1000489F8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = [objc_opt_self() standardUserDefaults];
  v4 = String._bridgeToObjectiveC()();
  [v3 doubleForKey:v4];

  Date.init(timeIntervalSince1970:)();
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 56))(v1, 0, 1, v5);
  v6 = OBJC_IVAR____TtC9feedbackd25CFBNotificationController_lastNotificationDate;
  swift_beginAccess();
  sub_10000BFE8(v1, v2 + v6);
  swift_endAccess();

  return _swift_task_switch(sub_100048B50, 0, 0);
}

uint64_t sub_100048B50()
{
  sub_100053208();
  sub_100056204();

  v1 = *(v0 + 8);

  return v1();
}

void sub_100048BBC(void *a1, const char *a2)
{
  if (qword_100082680 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100002D00(v4, qword_100083AE0);
  v5 = a1;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67240192;
    *(v7 + 4) = [v5 processIdentifier];

    _os_log_impl(&_mh_execute_header, oslog, v6, a2, v7, 8u);

    v8 = oslog;
  }

  else
  {

    v8 = v5;
  }
}

uint64_t sub_100048D4C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - v11;
  if (qword_100082680 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100002D00(v13, qword_100083AE0);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_1000049B8(0xD00000000000002CLL, 0x800000010006CBC0, &v23);
    _os_log_impl(&_mh_execute_header, v14, v15, "%s", v16, 0xCu);
    sub_100005ED8(v17);
  }

  static TaskPriority.utility.getter();
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v12, 0, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a1;
  v19[5] = a2;
  v19[6] = a3;
  v19[7] = a4;
  v19[8] = v5;
  sub_100013D40(a1, a2);

  v20 = v5;
  sub_100059484(0, 0, v12, &unk_100069BB8, v19);

  return sub_1000071C8(v12, &qword_1000833B0, &qword_100068D60);
}

uint64_t sub_100048FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  sub_100004F70(&qword_100082808, &qword_100068380);
  v8[10] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v8[11] = v9;
  v8[12] = *(v9 - 8);
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();

  return _swift_task_switch(sub_1000490D4, 0, 0);
}

uint64_t sub_1000490D4(uint64_t a1)
{
  v42 = v1;
  v41[0] = static Strings.Daemon.bundleIdentifier.getter();
  v41[1] = v2;

  v3._countAndFlagsBits = 0x64696C61766E692ELL;
  v3._object = 0xED00006E6F697461;
  String.append(_:)(v3);

  String.utf8CString.getter();

  os_transaction_create();

  swift_unknownObjectRelease();
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  type metadata accessor for FBKSDonation();
  sub_100058B7C(&unk_100083BD0, &type metadata accessor for FBKSDonation, &protocol conformance descriptor for FBKSInteraction);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  v4 = *(v1 + 16);
  *(v1 + 120) = v4;
  v5 = qword_100082680;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100002D00(v7, qword_100083AE0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v41[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1000049B8(0xD00000000000002CLL, 0x800000010006CBC0, v41);
    _os_log_impl(&_mh_execute_header, v8, v9, "%s: Decoded donation", v10, 0xCu);
    sub_100005ED8(v11);
  }

  v12 = *(v1 + 88);
  v13 = *(v1 + 96);
  v14 = *(v1 + 80);
  dispatch thunk of FBKSInteraction.evaluationID.getter();

  if ((*(v13 + 48))(v14, 1, v12) == 1)
  {
    sub_1000071C8(*(v1 + 80), &qword_100082808, &qword_100068380);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v41[0] = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_1000049B8(0xD00000000000002CLL, 0x800000010006CBC0, v41);
      _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s donation evaluationID is undefined", v17, 0xCu);
      sub_100005ED8(v18);
    }

    (*(v1 + 56))(0);

    v19 = *(v1 + 8);

    return v19();
  }

  else
  {
    v21 = *(v1 + 104);
    v22 = *(v1 + 112);
    v23 = *(v1 + 88);
    v24 = *(v1 + 96);
    (*(v24 + 32))(v22, *(v1 + 80), v23);
    (*(v24 + 16))(v21, v22, v23);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    v27 = os_log_type_enabled(v25, v26);
    v29 = *(v1 + 96);
    v28 = *(v1 + 104);
    v30 = *(v1 + 88);
    if (v27)
    {
      v31 = swift_slowAlloc();
      v41[0] = swift_slowAlloc();
      *v31 = 136315394;
      *(v31 + 4) = sub_1000049B8(0xD00000000000002CLL, 0x800000010006CBC0, v41);
      *(v31 + 12) = 2080;
      sub_100058B7C(&unk_100083BC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      v37 = *(v29 + 8);
      v36 = v29 + 8;
      v35 = v37;
      v37(v28, v30);
      v38 = sub_1000049B8(v32, v34, v41);

      *(v31 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v25, v26, "%s: Donation has valid evaluationID: %s", v31, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v39 = *(v29 + 8);
      v36 = v29 + 8;
      v35 = v39;
      v39(v28, v30);
    }

    *(v1 + 128) = v36;
    *(v1 + 136) = v35;
    v40 = *(*(v1 + 72) + OBJC_IVAR____TtC9feedbackd25CentralizedFeedbackDaemon_biomeDonator);
    *(v1 + 144) = v40;

    return _swift_task_switch(sub_10004990C, v40, 0);
  }
}

uint64_t sub_10004990C()
{
  v1 = *(v0 + 144);
  v2 = objc_allocWithZone(BMFeedbackEvaluationResponse);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v4 = [v2 initWithEvaluationUuid:isa userResponse:6];

  [*(v1 + 112) sendEvent:v4];

  return _swift_task_switch(sub_1000499CC, 0, 0);
}

uint64_t sub_1000499CC()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 88);
  (*(v0 + 56))(0);

  v1(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

void sub_100049B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100004F70(&qword_100082808, &qword_100068380);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  sub_100058868(a1, &v12 - v7);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v8, v9);
  }

  (*(a3 + 16))(a3, isa, a2);
}

uint64_t sub_100049CA4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - v11;
  if (qword_100082680 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100002D00(v13, qword_100083AE0);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_1000049B8(0xD000000000000021, 0x800000010006CB90, &v23);
    _os_log_impl(&_mh_execute_header, v14, v15, "%{public}s", v16, 0xCu);
    sub_100005ED8(v17);
  }

  static TaskPriority.utility.getter();
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v12, 0, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a1;
  v19[5] = a2;
  v19[6] = a3;
  v19[7] = a4;
  v19[8] = v5;
  sub_100013D40(a1, a2);

  v20 = v5;
  sub_100059484(0, 0, v12, &unk_100069BA8, v19);

  return sub_1000071C8(v12, &qword_1000833B0, &qword_100068D60);
}

uint64_t sub_100049F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  sub_100004F70(&qword_100082808, &qword_100068380);
  v8[11] = swift_task_alloc();
  v9 = type metadata accessor for CFBDonationCheck.Result.Invalid(0);
  v8[12] = v9;
  v8[13] = *(v9 - 8);
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  type metadata accessor for CFBDonationCheck.Result(0);
  v8[16] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v8[17] = v10;
  v8[18] = *(v10 - 8);
  v8[19] = swift_task_alloc();

  return _swift_task_switch(sub_10004A0B4, 0, 0);
}

uint64_t sub_10004A0B4(uint64_t a1)
{
  static Strings.Daemon.bundleIdentifier.getter();

  v2._countAndFlagsBits = 0x6F6974616E6F642ELL;
  v2._object = 0xE90000000000006ELL;
  String.append(_:)(v2);

  String.utf8CString.getter();
  os_transaction_create();

  swift_unknownObjectRelease();
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  type metadata accessor for FBKSDonation();
  sub_100058B7C(&unk_100083BD0, &type metadata accessor for FBKSDonation, &protocol conformance descriptor for FBKSInteraction);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v1[20] = 0;

  v3 = v1[2];
  v1[21] = v3;
  v4 = v3;
  UUID.init()();
  dispatch thunk of FBKSInteraction.setEvaluationID(_:)();
  v5 = swift_task_alloc();
  v1[22] = v5;
  *v5 = v1;
  v5[1] = sub_10004A588;
  v6 = v1[16];

  return sub_100016D08(v6, v4);
}

uint64_t sub_10004A588()
{
  v1 = *(*v0 + 168);

  return _swift_task_switch(sub_10004A69C, 0, 0);
}

uint64_t sub_10004A69C()
{
  v26 = v0;
  v1 = v0[16];
  if ((*(v0[13] + 48))(v1, 1, v0[12]) == 1)
  {
    v2 = *(v0[10] + OBJC_IVAR____TtC9feedbackd25CentralizedFeedbackDaemon_biomeDonator);
    v0[23] = v2;

    return _swift_task_switch(sub_10004A9BC, v2, 0);
  }

  else
  {
    sub_100019310(v1, v0[15]);
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v3 = v0[14];
    v4 = v0[15];
    v5 = type metadata accessor for Logger();
    sub_100002D00(v5, qword_100083AE0);
    sub_100055F80(v4, v3);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[14];
    v10 = v0[15];
    if (v8)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v25 = v12;
      *v11 = 136446210;
      v13 = sub_100016618();
      v15 = v14;
      sub_100019374(v9);
      v16 = sub_1000049B8(v13, v15, &v25);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v6, v7, "Donation dropped due to: %{public}s", v11, 0xCu);
      sub_100005ED8(v12);
    }

    else
    {

      sub_100019374(v9);
    }

    sub_100019374(v10);
    v17 = v0[21];
    v19 = v0[18];
    v18 = v0[19];
    v20 = v0[17];
    v21 = v0[11];
    v22 = v0[8];
    (*(v19 + 16))(v21, v18, v20);
    (*(v19 + 56))(v21, 0, 1, v20);
    v22(v21, 0);

    sub_1000071C8(v21, &qword_100082808, &qword_100068380);
    (*(v19 + 8))(v18, v20);

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_10004A9BC()
{
  v1 = *(v0 + 160);
  CFBBiomeDonator.write(donation:)(*(v0 + 168));
  *(v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_10004AB88;
  }

  else
  {
    v2 = sub_10004AA48;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10004AA48()
{
  v1 = v0[21];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  v5 = v0[11];
  v6 = v0[8];
  (*(v3 + 16))(v5, v2, v4);
  (*(v3 + 56))(v5, 0, 1, v4);
  v6(v5, 0);

  sub_1000071C8(v5, &qword_100082808, &qword_100068380);
  (*(v3 + 8))(v2, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10004AB88()
{
  v20 = v0;
  if (qword_100082680 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100002D00(v1, qword_100083AE0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[24];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    v0[5] = v4;
    swift_errorRetain();
    sub_100004F70(&unk_1000833F0, &unk_100068F00);
    v7 = String.init<A>(describing:)();
    v9 = sub_1000049B8(v7, v8, &v19);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Donation error: %s", v5, 0xCu);
    sub_100005ED8(v6);
  }

  v10 = v0[21];
  v12 = v0[18];
  v11 = v0[19];
  v13 = v0[17];
  v14 = v0[11];
  v15 = v0[8];
  (*(v12 + 56))(v14, 1, 1, v13);
  v16 = _convertErrorToNSError(_:)();
  v15(v14, v16);

  sub_1000071C8(v14, &qword_100082808, &qword_100068380);
  (*(v12 + 8))(v11, v13);

  v17 = v0[1];

  return v17();
}

uint64_t sub_10004AE14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v34 = a2;
  v35 = a3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  __chkstk_darwin(v10 - 8);
  v12 = &v33 - v11;
  if (qword_100082680 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100002D00(v13, qword_100083AE0);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v33 = v8;
    v18 = v6;
    v19 = v4;
    v20 = a1;
    v21 = v17;
    v36 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_1000049B8(0xD00000000000002BLL, 0x800000010006CB40, &v36);
    _os_log_impl(&_mh_execute_header, v14, v15, "%{public}s", v16, 0xCu);
    sub_100005ED8(v21);
    a1 = v20;
    v4 = v19;
    v6 = v18;
    v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v8 = v33;
  }

  v22 = [objc_opt_self() currentConnection];
  if (v22)
  {
    v23 = v22;
    v24 = sub_100048154();

    v25 = v24 ^ 1;
  }

  else
  {
    v25 = 1;
  }

  static TaskPriority.userInitiated.getter();
  v26 = type metadata accessor for TaskPriority();
  (*(*(v26 - 8) + 56))(v12, 0, 1, v26);
  (*(v7 + 16))(v9, a1, v6);
  v27 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v28 = swift_allocObject();
  *(v28 + 2) = 0;
  *(v28 + 3) = 0;
  *(v28 + 4) = v4;
  (*(v7 + 32))(&v28[v27], v9, v6);
  v29 = &v28[(v8 + v27 + 7) & 0xFFFFFFFFFFFFFFF8];
  v30 = v35;
  *v29 = v34;
  *(v29 + 1) = v30;
  v29[16] = v25 & 1;
  v31 = v4;

  sub_100059484(0, 0, v12, &unk_100069B98, v28);

  return sub_1000071C8(v12, &qword_1000833B0, &qword_100068D60);
}

uint64_t sub_10004B1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 128) = a8;
  *(v8 + 48) = a6;
  *(v8 + 56) = a7;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  v9 = type metadata accessor for UUID();
  *(v8 + 64) = v9;
  *(v8 + 72) = *(v9 - 8);
  *(v8 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_10004B284, 0, 0);
}

uint64_t sub_10004B284(uint64_t a1)
{
  v2 = v1[4];
  static Strings.Daemon.bundleIdentifier.getter();
  v7 = v3;

  v4._object = 0x800000010006CB70;
  v4._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v4);

  v1[11] = v7;
  String.utf8CString.getter();
  os_transaction_create();

  swift_unknownObjectRelease();
  v5 = *(v2 + OBJC_IVAR____TtC9feedbackd25CentralizedFeedbackDaemon_biomeReader);
  v1[12] = v5;
  v1[13] = [objc_allocWithZone(BMSQLDatabase) init];

  return _swift_task_switch(sub_10004B384, v5, 0);
}

uint64_t sub_10004B384()
{
  v0[14] = CFBBiomeReader.fetchDonation(donationID:database:)(v0[5], v0[13]);
  v0[15] = 0;
  v1 = v0[13];

  return _swift_task_switch(sub_10004B428, 0, 0);
}

uint64_t sub_10004B428()
{
  v26 = v0;
  v1 = v0[14];
  if (v1)
  {
    v2 = v0[6];
    v3 = v1;
    static RACAnalytics.sendInteractionPresented(_:isInline:)();
    v2(0);
  }

  else
  {
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v5 = v0[9];
    v4 = v0[10];
    v6 = v0[8];
    v7 = v0[5];
    v8 = type metadata accessor for Logger();
    sub_100002D00(v8, qword_100083AE0);
    (*(v5 + 16))(v4, v7, v6);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[9];
    v12 = v0[10];
    v14 = v0[8];
    if (v11)
    {
      v15 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v15 = 136446723;
      *(v15 + 4) = sub_1000049B8(0xD00000000000002BLL, 0x800000010006CB40, &v25);
      *(v15 + 12) = 2160;
      *(v15 + 14) = 1752392040;
      *(v15 + 22) = 2081;
      v16 = UUID.uuidString.getter();
      v18 = v17;
      (*(v13 + 8))(v12, v14);
      v19 = sub_1000049B8(v16, v18, &v25);

      *(v15 + 24) = v19;
      _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s could not find Donation: %{private,mask.hash}s", v15, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v13 + 8))(v12, v14);
    }

    v20 = v0[6];
    sub_10001BF40();
    swift_allocError();
    *v21 = 13;
    v22 = _convertErrorToNSError(_:)();
    v20();
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_10004B6F8()
{
  v18 = v0;
  v0[2] = v0[15];
  swift_errorRetain();
  sub_100004F70(&unk_1000833F0, &unk_100068F00);
  sub_100008714(0, &qword_100082D08, NSError_ptr);
  result = swift_dynamicCast();
  if (result)
  {

    v2 = v0[3];
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100002D00(v3, qword_100083AE0);
    v4 = v2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v7 = 136446466;
      *(v7 + 4) = sub_1000049B8(0xD00000000000002BLL, 0x800000010006CB40, &v17);
      *(v7 + 12) = 2080;
      v8 = v4;
      v9 = [v8 description];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = sub_1000049B8(v10, v12, &v17);

      *(v7 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s error: %s", v7, 0x16u);
      swift_arrayDestroy();
    }

    v14 = v0[6];
    v15 = v4;
    v14(v4);

    v16 = v0[1];

    return v16();
  }

  return result;
}

uint64_t sub_10004B9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_10004BA14, 0, 0);
}

uint64_t sub_10004BA14(uint64_t a1)
{
  v2 = *(v1 + 40);
  static Strings.Daemon.bundleIdentifier.getter();

  v3._object = 0x800000010006CB70;
  v3._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v3);

  String.utf8CString.getter();

  os_transaction_create();

  swift_unknownObjectRelease();
  static RACAnalytics.sendInteractionPresented(analyticsPayload:featureDomainEventName:)();
  v2(0);
  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_10004BC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 104) = a6;
  *(v8 + 24) = a4;
  *(v8 + 32) = a5;
  sub_100004F70(&qword_100082808, &qword_100068380);
  *(v8 + 56) = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  *(v8 + 64) = v9;
  *(v8 + 72) = *(v9 - 8);
  *(v8 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_10004BD20, 0, 0);
}

uint64_t sub_10004BD20(uint64_t a1)
{
  static Strings.Daemon.bundleIdentifier.getter();

  v2._object = 0x800000010006CDA0;
  v2._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v2);

  String.utf8CString.getter();

  os_transaction_create();

  swift_unknownObjectRelease();
  v3 = swift_task_alloc();
  *(v1 + 88) = v3;
  *v3 = v1;
  v3[1] = sub_10004BE34;
  v4 = *(v1 + 80);
  v5 = *(v1 + 104);
  v6 = *(v1 + 32);

  return sub_10004C3A0(v4, v6, v5);
}

uint64_t sub_10004BE34()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_10004C054;
  }

  else
  {
    v2 = sub_10004BF48;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10004BF48()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  (*(v2 + 16))(v4, v1, v3);
  (*(v2 + 56))(v4, 0, 1, v3);
  v5(v4, 0);
  sub_1000071C8(v4, &qword_100082808, &qword_100068380);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10004C054()
{
  v15 = v0;
  if (qword_100082680 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100002D00(v1, qword_100083AE0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[12];
    v5 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_1000049B8(0xD00000000000002CLL, 0x800000010006CD70, &v14);
    *(v5 + 12) = 2080;
    v0[2] = v4;
    swift_errorRetain();
    sub_100004F70(&unk_1000833F0, &unk_100068F00);
    v6 = String.init<A>(describing:)();
    v8 = sub_1000049B8(v6, v7, &v14);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s error: %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[7];
  v10 = v0[5];
  (*(v0[9] + 56))(v9, 1, 1, v0[8]);
  v11 = _convertErrorToNSError(_:)();
  v10(v9, v11);

  sub_1000071C8(v9, &qword_100082808, &qword_100068380);

  v12 = v0[1];

  return v12();
}

void sub_10004C2E0(void *a1, int a2, void *a3, void *aBlock, void (*a5)(uint64_t, unint64_t, id, void *))
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
  sub_100013C98(v10, v12);
}

uint64_t sub_10004C3A0(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 216) = a3;
  *(v4 + 16) = a1;
  sub_100004F70(&qword_100082808, &qword_100068380);
  *(v4 + 40) = swift_task_alloc();
  sub_100004F70(&unk_100083BB0, &unk_100069420);
  *(v4 + 48) = swift_task_alloc();
  type metadata accessor for FBKSEvaluation.Action();
  *(v4 + 56) = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  *(v4 + 64) = v5;
  *(v4 + 72) = *(v5 - 8);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  v6 = type metadata accessor for FBKSEvaluation.Subject();
  *(v4 + 104) = v6;
  *(v4 + 112) = *(v6 - 8);
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();

  return _swift_task_switch(sub_10004C584, 0, 0);
}

uint64_t sub_10004C584(uint64_t a1)
{
  v2 = v1[16];
  v3 = v1[13];
  v4 = v1[14];
  FBKSEvaluation.subject.getter();
  v5 = (*(v4 + 88))(v2, v3);
  if (v5 == enum case for FBKSEvaluation.Subject.id(_:))
  {
    v6 = v1[16];
    v7 = v1[12];
    v8 = v1[8];
    v9 = v1[9];
    v10 = v1[4];
    v11 = v1[2];
    (*(v1[14] + 96))(v6, v1[13]);
    (*(v9 + 32))(v7, v6, v8);
    v12 = *(v9 + 16);
    v1[17] = v12;
    v1[18] = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v11, v7, v8);
    v13 = *(v10 + OBJC_IVAR____TtC9feedbackd25CentralizedFeedbackDaemon_biomeReader);
    v1[19] = v13;
    v1[20] = [objc_allocWithZone(BMSQLDatabase) init];
    v14 = sub_10004C8CC;
    v15 = v13;
LABEL_11:

    return _swift_task_switch(v14, v15, 0);
  }

  if (v5 == enum case for FBKSEvaluation.Subject.interaction(_:))
  {
    v16 = v1[16];
    v17 = v1[8];
    v18 = v1[9];
    v19 = v1[5];
    (*(v1[14] + 96))(v16, v1[13]);
    v20 = *v16;
    dispatch thunk of FBKSInteraction.evaluationID.getter();
    if ((*(v18 + 48))(v19, 1, v17) == 1)
    {
      sub_1000071C8(v1[5], &qword_100082808, &qword_100068380);
      UUID.init()();
      dispatch thunk of FBKSInteraction.setEvaluationID(_:)();
    }

    else
    {
      v24 = v1[8];
      v25 = v1[9];
      v26 = v1[5];
      v27 = v1[2];

      (*(v25 + 32))(v27, v26, v24);
    }

    v28 = v1[3];
    v29 = v1[4];
    v1[23] = 0;
    v1[24] = v28;
    v30 = v28;
    static RACAnalytics.sendEvaluation(_:isInline:)();

    v15 = *(v29 + OBJC_IVAR____TtC9feedbackd25CentralizedFeedbackDaemon_biomeDonator);
    v1[25] = v15;
    v14 = sub_10004CCB0;
    goto LABEL_11;
  }

  v21 = v1[14];
  sub_100015E58(0xD00000000000001FLL, 0x800000010006CAF0);
  swift_willThrow();
  (*(v21 + 8))(v1[16], v1[13]);

  v22 = v1[1];

  return v22();
}

uint64_t sub_10004C8CC()
{
  v1 = v0[20];
  v0[21] = CFBBiomeReader.fetchDonation(donationID:database:)(v0[12], v1);
  v0[22] = 0;

  return _swift_task_switch(sub_10004C964, 0, 0);
}

uint64_t sub_10004C964()
{
  v36 = v0;
  v1 = *(v0 + 168);
  if (v1)
  {
    v2 = *(v0 + 112);
    v3 = *(v0 + 120);
    v5 = *(v0 + 96);
    v4 = *(v0 + 104);
    v6 = *(v0 + 64);
    v7 = *(v0 + 72);
    *v3 = v1;
    (*(v2 + 104))(v3, enum case for FBKSEvaluation.Subject.interaction(_:), v4);
    v8 = v1;
    FBKSEvaluation.action.getter();
    FBKSEvaluation.formResponse.getter();
    v9 = objc_allocWithZone(type metadata accessor for FBKSEvaluation());
    v10 = FBKSEvaluation.init(subject:action:formResponse:)();

    (*(v7 + 8))(v5, v6);
  }

  else
  {
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 136);
    v12 = *(v0 + 88);
    v13 = *(v0 + 96);
    v14 = *(v0 + 64);
    v15 = type metadata accessor for Logger();
    sub_100002D00(v15, qword_100083AE0);
    v11(v12, v13, v14);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 88);
    v20 = *(v0 + 96);
    v22 = *(v0 + 64);
    v21 = *(v0 + 72);
    if (v18)
    {
      v34 = *(v0 + 96);
      v23 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v23 = 136446723;
      *(v23 + 4) = sub_1000049B8(0xD000000000000027, 0x800000010006CB10, &v35);
      *(v23 + 12) = 2160;
      *(v23 + 14) = 1752392040;
      *(v23 + 22) = 2081;
      v24 = UUID.uuidString.getter();
      v26 = v25;
      v27 = *(v21 + 8);
      v27(v19, v22);
      v28 = sub_1000049B8(v24, v26, &v35);

      *(v23 + 24) = v28;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s could not find Donation: %{private,mask.hash}s", v23, 0x20u);
      swift_arrayDestroy();

      v27(v34, v22);
    }

    else
    {

      v29 = *(v21 + 8);
      v29(v19, v22);
      v29(v20, v22);
    }

    v10 = *(v0 + 24);
  }

  *(v0 + 184) = *(v0 + 176);
  *(v0 + 192) = v10;
  v30 = *(v0 + 32);
  v31 = v10;
  static RACAnalytics.sendEvaluation(_:isInline:)();

  v32 = *(v30 + OBJC_IVAR____TtC9feedbackd25CentralizedFeedbackDaemon_biomeDonator);
  *(v0 + 200) = v32;

  return _swift_task_switch(sub_10004CCB0, v32, 0);
}

uint64_t sub_10004CCB0()
{
  v1 = v0[23];
  v2 = v0[3];
  sub_100008714(0, &qword_100082D50, BMFeedbackEvaluationResponse_ptr);
  v3 = sub_1000308C0(v2);
  v0[26] = v1;
  if (v1)
  {
    v4 = sub_10004D018;
  }

  else
  {
    v5 = v3;
    [*(v0[25] + 112) sendEvent:v3];

    v4 = sub_10004CD7C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10004CD7C()
{
  v22 = v0;
  if (qword_100082680 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 16);
  v5 = type metadata accessor for Logger();
  sub_100002D00(v5, qword_100083AE0);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 72);
  v9 = *(v0 + 80);
  v11 = *(v0 + 64);
  if (v8)
  {
    v20 = *(v0 + 192);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136446210;
    sub_100058B7C(&unk_100083BC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000049B8(v14, v16, &v21);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Evaluation recorded with ID: %{public}s", v12, 0xCu);
    sub_100005ED8(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_10004D018()
{
  v1 = *(v0 + 72);

  (*(v1 + 8))(*(v0 + 16), *(v0 + 64));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10004D110()
{
  v1 = *(v0[9] + 8);
  v1(v0[12], v0[8]);
  v1(v0[2], v0[8]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10004D210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27 = a2;
  v28 = a3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - v10;
  if (qword_100082680 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100002D00(v12, qword_100083AE0);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26 = v4;
    v16 = a1;
    v17 = v15;
    v18 = swift_slowAlloc();
    v29 = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_1000049B8(0xD000000000000029, 0x800000010006CAA0, &v29);
    _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s", v17, 0xCu);
    sub_100005ED8(v18);

    a1 = v16;
    v4 = v26;
  }

  static TaskPriority.userInitiated.getter();
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v11, 0, 1, v19);
  (*(v7 + 16))(&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v20 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = v4;
  (*(v7 + 32))(&v21[v20], &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v22 = &v21[(v8 + v20 + 7) & 0xFFFFFFFFFFFFFFF8];
  v23 = v28;
  *v22 = v27;
  v22[1] = v23;
  v24 = v4;

  sub_100059484(0, 0, v11, &unk_100069B80, v21);

  return sub_1000071C8(v11, &qword_1000833B0, &qword_100068D60);
}

uint64_t sub_10004D558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v8 = type metadata accessor for UUID();
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();

  return _swift_task_switch(sub_10004D61C, 0, 0);
}

uint64_t sub_10004D61C(uint64_t a1)
{
  v2 = v1[5];
  static Strings.Daemon.bundleIdentifier.getter();
  v7 = v3;

  v4._object = 0x800000010006CAD0;
  v4._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v4);

  v1[12] = v7;
  String.utf8CString.getter();
  os_transaction_create();

  swift_unknownObjectRelease();
  v5 = *(v2 + OBJC_IVAR____TtC9feedbackd25CentralizedFeedbackDaemon_biomeReader);
  v1[13] = [objc_allocWithZone(BMSQLDatabase) init];

  return _swift_task_switch(sub_10004D718, v5, 0);
}

uint64_t sub_10004D718()
{
  sub_100005A2C();
  *(v0 + 112) = v1;
  *(v0 + 120) = 0;

  return _swift_task_switch(sub_10004D7B0, 0, 0);
}

uint64_t sub_10004D7B0()
{
  v42 = v0;
  if (!v0[14])
  {
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v2 = v0[10];
    v1 = v0[11];
    v3 = v0[9];
    v4 = v0[6];
    v5 = type metadata accessor for Logger();
    sub_100002D00(v5, qword_100083AE0);
    (*(v2 + 16))(v1, v4, v3);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v10 = v0[10];
    v9 = v0[11];
    v11 = v0[9];
    if (v8)
    {
      v12 = swift_slowAlloc();
      v41[0] = swift_slowAlloc();
      *v12 = 136446723;
      *(v12 + 4) = sub_1000049B8(0xD000000000000029, 0x800000010006CAA0, v41);
      *(v12 + 12) = 2160;
      *(v12 + 14) = 1752392040;
      *(v12 + 22) = 2081;
      v13 = UUID.uuidString.getter();
      v15 = v14;
      (*(v10 + 8))(v9, v11);
      v16 = sub_1000049B8(v13, v15, v41);

      *(v12 + 24) = v16;
      _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s could not find Evaluation: %{private,mask.hash}s", v12, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v10 + 8))(v9, v11);
    }
  }

  v17 = v0[14];
  v18 = v0[15];
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v0[4] = v17;
  sub_100004F70(&qword_100083B90, &qword_100069B88);
  sub_100055BBC();
  v19 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v21 = v0[14];
  if (v18)
  {

    v0[2] = v18;
    swift_errorRetain();
    sub_100004F70(&unk_1000833F0, &unk_100068F00);
    sub_100008714(0, &qword_100082D08, NSError_ptr);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      return result;
    }

    v23 = v0[3];
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100002D00(v24, qword_100083AE0);
    v25 = v23;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v41[0] = swift_slowAlloc();
      *v28 = 136446466;
      *(v28 + 4) = sub_1000049B8(0xD000000000000029, 0x800000010006CAA0, v41);
      *(v28 + 12) = 2080;
      v29 = v25;
      v30 = [v29 description];
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      v34 = sub_1000049B8(v31, v33, v41);

      *(v28 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v26, v27, "%{public}s error: %s", v28, 0x16u);
      swift_arrayDestroy();
    }

    v35 = v0[7];
    v36 = v25;
    v35(0, 0xF000000000000000, v25);
  }

  else
  {
    v37 = v0[7];
    v38 = v19;
    v39 = v20;

    sub_100013D40(v38, v39);
    v37(v38, v39, 0);
    sub_100013C98(v38, v39);
    sub_100013C98(v38, v39);
  }

  v40 = v0[1];

  return v40();
}

uint64_t sub_10004DD14()
{
  v18 = v0;
  v0[2] = v0[15];
  swift_errorRetain();
  sub_100004F70(&unk_1000833F0, &unk_100068F00);
  sub_100008714(0, &qword_100082D08, NSError_ptr);
  result = swift_dynamicCast();
  if (result)
  {

    v2 = v0[3];
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100002D00(v3, qword_100083AE0);
    v4 = v2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v7 = 136446466;
      *(v7 + 4) = sub_1000049B8(0xD000000000000029, 0x800000010006CAA0, &v17);
      *(v7 + 12) = 2080;
      v8 = v4;
      v9 = [v8 description];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = sub_1000049B8(v10, v12, &v17);

      *(v7 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s error: %s", v7, 0x16u);
      swift_arrayDestroy();
    }

    v14 = v0[7];
    v15 = v4;
    v14(0, 0xF000000000000000, v4);

    v16 = v0[1];

    return v16();
  }

  return result;
}

uint64_t sub_10004E010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27 = a2;
  v28 = a3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - v10;
  if (qword_100082680 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100002D00(v12, qword_100083AE0);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26 = v4;
    v16 = a1;
    v17 = v15;
    v18 = swift_slowAlloc();
    v29 = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_1000049B8(0xD000000000000025, 0x800000010006CA50, &v29);
    _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s", v17, 0xCu);
    sub_100005ED8(v18);

    a1 = v16;
    v4 = v26;
  }

  static TaskPriority.userInitiated.getter();
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v11, 0, 1, v19);
  (*(v7 + 16))(&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v20 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = v4;
  (*(v7 + 32))(&v21[v20], &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v22 = &v21[(v8 + v20 + 7) & 0xFFFFFFFFFFFFFFF8];
  v23 = v28;
  *v22 = v27;
  v22[1] = v23;
  v24 = v4;

  sub_100059484(0, 0, v11, &unk_100069B68, v21);

  return sub_1000071C8(v11, &qword_1000833B0, &qword_100068D60);
}