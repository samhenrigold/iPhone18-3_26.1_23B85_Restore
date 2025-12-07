uint64_t sub_1000AA92C(uint64_t a1, uint64_t a2, int a3)
{
  v40 = a3;
  v5 = sub_10000F974(&qword_1004A6F50, &qword_1003DCCB0);
  __chkstk_darwin(v5 - 8);
  v7 = &v35 - v6;
  v8 = sub_10000F974(&qword_1004A6F58, &qword_1003DA840);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - v10;
  v12 = sub_10000F974(&qword_1004A6F60, &qword_1003DA848);
  v13 = *(v12 - 8);
  v38 = v12;
  v39 = v13;
  __chkstk_darwin(v12);
  v15 = &v35 - v14;
  v41 = sub_10000F974(&qword_1004A6F68, &qword_1003DA850);
  v44 = *(v41 - 8);
  __chkstk_darwin(v41);
  v37 = &v35 - v16;
  v17 = sub_10000F974(&qword_1004A6F70, &qword_1003DA858);
  v18 = *(v17 - 8);
  v42 = v17;
  v43 = v18;
  __chkstk_darwin(v17);
  v36 = &v35 - v19;
  Just.init(_:)();
  ObjectType = swift_getObjectType();
  (*(a2 + 16))(v46, ObjectType, a2);
  v22 = v47;
  v21 = v48;
  sub_10000FEBC(v46, v47);
  v23 = (*(v21 + 16))(v22, v21);
  v45 = v23;
  v24 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v24 - 8) + 56))(v7, 1, 1, v24);
  sub_10004D9B4();
  sub_10001D47C(&qword_1004A6F78, &qword_1004A6F58, &qword_1003DA840, &protocol conformance descriptor for Just<A>);
  sub_1000AB038(&qword_1004A6F80, sub_10004D9B4, &protocol conformance descriptor for OS_dispatch_queue);
  Publisher.receive<A>(on:options:)();
  sub_100018F04(v7, &qword_1004A6F50, &qword_1003DCCB0);

  (*(v9 + 8))(v11, v8);
  sub_10000FF00(v46);
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *(v25 + 24) = a2;
  LOBYTE(v9) = v40;
  *(v25 + 32) = v40;
  swift_unknownObjectRetain();
  static Subscribers.Demand.unlimited.getter();
  sub_10000F974(&unk_1004A3D70, &qword_1003DA860);
  sub_10001D47C(&qword_1004A6F88, &qword_1004A6F60, &qword_1003DA848, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  sub_10001D47C(&qword_1004A6F90, &unk_1004A3D70, &qword_1003DA860, &protocol conformance descriptor for Future<A, B>);
  v27 = v37;
  v26 = v38;
  Publisher<>.flatMap<A>(maxPublishers:_:)();

  (*(v39 + 8))(v15, v26);
  v28 = swift_allocObject();
  *(v28 + 16) = a1;
  *(v28 + 24) = a2;
  *(v28 + 32) = v9;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1000AB118;
  *(v29 + 24) = v28;
  swift_unknownObjectRetain();
  sub_10000F974(&qword_1004A6F48, &unk_1003DA830);
  sub_10001D47C(&qword_1004A6F98, &qword_1004A6F68, &qword_1003DA850, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v30 = v36;
  v31 = v41;
  Publisher.map<A>(_:)();

  (*(v44 + 8))(v27, v31);
  sub_10001D47C(&qword_1004A6FA0, &qword_1004A6F70, &qword_1003DA858, &protocol conformance descriptor for Publishers.Map<A, B>);
  v32 = v42;
  v33 = Publisher.eraseToAnyPublisher()();
  (*(v43 + 8))(v30, v32);
  return v33;
}

uint64_t sub_1000AAFC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F974(&qword_1004A6F48, &unk_1003DA830);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AB038(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000AB080()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1000AB0B8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  result = (*(v3 + 56))(v4, ObjectType, v3);
  *a1 = result;
  return result;
}

uint64_t sub_1000AB118()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  ObjectType = swift_getObjectType();
  sub_10008E3F4(ObjectType, v1);
  return v2;
}

uint64_t sub_1000AB16C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000AB1A4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(sub_10000F974(&qword_1004A6F48, &unk_1003DA830) + 48);
  result = v3(a1);
  *(a1 + v4) = result;
  return result;
}

unint64_t sub_1000AB200()
{
  result = qword_1004A6FB0;
  if (!qword_1004A6FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A6FB0);
  }

  return result;
}

uint64_t sub_1000AB254()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1000AB2C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000AA92C(*(v2 + 24), *(v2 + 32), *(a1 + 1));
  *a2 = result;
  return result;
}

uint64_t sub_1000AB334(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 16));
  a2(*(v3 + 24));

  return _swift_deallocObject(v3, a3, 7);
}

id sub_1000AB428(uint64_t a1)
{
  v3 = sub_1000B2228();
  if (v3 || !*(v1 + OBJC_IVAR____TtC7Measure11LabelRender_selectionState))
  {
    [*(v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelNode) setHidden:v3];
  }

  [*(v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelNode) setAlpha:*(v1 + OBJC_IVAR____TtC7Measure11LabelRender_desiredAlpha)];
  if (a1 <= 4)
  {
    if (a1 <= 2)
    {
      if (a1)
      {
        if (a1 == 1)
        {
          v4 = *(v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelContainer);
          v5 = objc_opt_self();
          v6 = v4;
          v7 = [v5 clearColor];
          [v6 setColor:v7];

          v8 = [v5 clearColor];
          v9 = (v1 + OBJC_IVAR____TtC7Measure11LabelRender_attributedText);
          v10 = *(v1 + OBJC_IVAR____TtC7Measure11LabelRender_attributedText + 24);
          *(v1 + OBJC_IVAR____TtC7Measure11LabelRender_attributedText + 24) = v8;
          v11 = v8;
LABEL_27:
          v18 = v11;

          v19 = *v9;
          v20 = v9[1];
          v21 = v9[2];
          v22 = *(v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelText);

          v23 = v21;
          v24 = sub_1000C0D98(v19, v20, v8);

          [v22 setAttributedText:v24];

          goto LABEL_36;
        }

        if (a1 != 2)
        {
          do
          {
            _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
            __break(1u);
LABEL_30:
            ;
          }

          while (a1 != 7);
        }
      }

      goto LABEL_31;
    }

LABEL_16:
    v14 = qword_1004A0598;
    v15 = *(v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelContainer);
    if (v14 != -1)
    {
      swift_once();
    }

    [v15 setColor:qword_1004D5110];

    if (qword_1004A0580 != -1)
    {
      swift_once();
    }

    v8 = qword_1004D50F8;
LABEL_26:
    v9 = (v1 + OBJC_IVAR____TtC7Measure11LabelRender_attributedText);
    v10 = *(v1 + OBJC_IVAR____TtC7Measure11LabelRender_attributedText + 24);
    *(v1 + OBJC_IVAR____TtC7Measure11LabelRender_attributedText + 24) = v8;
    v11 = v8;
    goto LABEL_27;
  }

  if (a1 <= 6)
  {
    if (a1 == 5)
    {
LABEL_31:
      v25 = qword_1004A0590;
      v26 = *(v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelContainer);
      if (v25 != -1)
      {
        swift_once();
      }

      [v26 setColor:qword_1004D5108];

      if (qword_1004A0578 != -1)
      {
        swift_once();
      }

      v27 = qword_1004D50F0;
      v28 = (v1 + OBJC_IVAR____TtC7Measure11LabelRender_attributedText);
      v29 = *(v1 + OBJC_IVAR____TtC7Measure11LabelRender_attributedText + 24);
      *(v1 + OBJC_IVAR____TtC7Measure11LabelRender_attributedText + 24) = qword_1004D50F0;
      v30 = v27;

      v31 = *v28;
      v32 = v28[1];
      v33 = v28[2];
      v34 = *(v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelText);

      v35 = v33;
      v36 = sub_1000C0D98(v31, v32, v27);

      [v34 setAttributedText:v36];

      v37 = (v1 + OBJC_IVAR____TtC7Measure11LabelRender_latestLineEnds);
      v58 = *(v1 + OBJC_IVAR____TtC7Measure11LabelRender_latestLineEnds + 16);
      v38 = *(v1 + OBJC_IVAR____TtC7Measure11LabelRender_latestLineEnds + 48);
      v57 = *(v1 + OBJC_IVAR____TtC7Measure11LabelRender_latestLineEnds + 32);
      v39 = (v1 + OBJC_IVAR____TtC7Measure11LabelRender_end1);
      *v39 = *(v1 + OBJC_IVAR____TtC7Measure11LabelRender_latestLineEnds);
      v39[1] = v58;
      v39[2] = v57;
      v39[3] = v38;
      v40 = v37[5];
      v56 = v37[4];
      v41 = v37[7];
      v55 = v37[6];
      v42 = (v1 + OBJC_IVAR____TtC7Measure11LabelRender_end2);
      *v42 = v56;
      v42[1] = v40;
      v42[2] = v55;
      v42[3] = v41;
      simd_float4x4.position.getter();
      simd_float4x4.position.getter();
      LODWORD(v54) = 1056964608;
      slerp(transform1:transform2:percent:)();
      simd_float4x4.up.getter();
      simd_float4x4.position.getter();
      createTransform(forward:normal:position:)();
      v43 = (v1 + OBJC_IVAR____TtC7Measure11LabelRender_center);
      *v43 = v44;
      v43[1] = v45;
      v43[2] = v46;
      v43[3] = v47;
      goto LABEL_36;
    }

    goto LABEL_16;
  }

  if (a1 == 9)
  {
    v16 = qword_1004A05A0;
    v17 = *(v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelContainer);
    if (v16 != -1)
    {
      swift_once();
    }

    [v17 setColor:qword_1004D5118];

    if (qword_1004A0588 != -1)
    {
      swift_once();
    }

    v8 = qword_1004D5100;
    goto LABEL_26;
  }

  if (a1 != 8)
  {
    goto LABEL_30;
  }

  v12 = qword_1004A0598;
  v13 = *(v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelContainer);
  if (v12 != -1)
  {
    swift_once();
  }

  [v13 setColor:qword_1004D5110];

LABEL_36:
  v48 = *(v1 + OBJC_IVAR____TtC7Measure11LabelRender_capturing);
  v49 = (v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelChevron);
  v50 = 0.0;
  if ((v48 & 1) == 0)
  {
    v51 = *(v1 + OBJC_IVAR____TtC7Measure11LabelRender_state);
    if (v51 <= 7)
    {
      v50 = dbl_1003DB058[v51];
    }
  }

  [*(v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelChevron) setAlpha:{v50, v54}];
  v52 = *v49;

  return [v52 setUserInteractionEnabled:v48 ^ 1u];
}

void sub_1000ABA98(uint64_t a1, void *a2)
{
  v4 = (v2 + OBJC_IVAR____TtC7Measure11LabelRender_attributedText);
  v5 = *(v2 + OBJC_IVAR____TtC7Measure11LabelRender_attributedText) == a1 && *(v2 + OBJC_IVAR____TtC7Measure11LabelRender_attributedText + 8) == a2;
  if (v5 || (v6 = v2, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
  }

  else
  {
    v8 = *(v2 + OBJC_IVAR____TtC7Measure11LabelRender_state);
    if (v8 > 9)
    {
      _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
    }

    else
    {
      if (((1 << v8) & 0x1DA) == 0)
      {
        if (qword_1004A02A0 != -1)
        {
          swift_once();
        }

        _StringGuts.grow(_:)(37);

        if (*(v2 + OBJC_IVAR____TtC7Measure11LabelRender_labelType))
        {
          if (*(v2 + OBJC_IVAR____TtC7Measure11LabelRender_labelType) == 1)
          {
            v9 = 0xE400000000000000;
            v10 = 1634038337;
          }

          else
          {
            v9 = 0xE600000000000000;
            v10 = 0x656D756C6F56;
          }
        }

        else
        {
          v9 = 0xE400000000000000;
          v10 = 1701734732;
        }

        v11 = v9;
        String.append(_:)(*&v10);

        v12._countAndFlagsBits = 32;
        v12._object = 0xE100000000000000;
        String.append(_:)(v12);
        String.append(_:)(*(v2 + OBJC_IVAR____TtC7Measure11LabelRender_measurementID));
        v13._countAndFlagsBits = 0x206D6F726620;
        v13._object = 0xE600000000000000;
        String.append(_:)(v13);
        v14 = [*(v2 + OBJC_IVAR____TtC7Measure11LabelRender_labelText) text];
        if (v14)
        {
          v15 = v14;
          v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v18 = v17;
        }

        else
        {
          v18 = 0xE300000000000000;
          v16 = 7104846;
        }

        v19._countAndFlagsBits = v16;
        v19._object = v18;
        String.append(_:)(v19);

        v20._countAndFlagsBits = 544175136;
        v20._object = 0xE400000000000000;
        String.append(_:)(v20);
        v21._countAndFlagsBits = a1;
        v21._object = a2;
        String.append(_:)(v21);
        v22._countAndFlagsBits = 0xD000000000000012;
        v22._object = 0x8000000100405250;
        Log.default(_:isPrivate:)(v22, 0);

        *(v6 + OBJC_IVAR____TtC7Measure11LabelRender_refined) = 1;
      }

      *v4 = a1;
      v4[1] = a2;

      v23 = *(v6 + OBJC_IVAR____TtC7Measure11LabelRender_labelText);
      v25 = v4[2];
      v24 = v4[3];
      v26 = v24;
      v27 = v23;
      v28 = v25;
      v29 = sub_1000C0D98(a1, a2, v24);

      [v27 setAttributedText:v29];

      sub_1000ABDF8();

      sub_1000AC368();
    }
  }
}

void sub_1000ABDF8()
{
  if (*(v0 + OBJC_IVAR____TtC7Measure11LabelRender_capturing) == 1)
  {
    if (qword_1004A05C0 != -1)
    {
      swift_once();
    }

    v1 = &qword_1004D5138;
  }

  else
  {
    if (qword_1004A05B8 != -1)
    {
      swift_once();
    }

    v1 = &qword_1004D5130;
  }

  v2 = OBJC_IVAR____TtC7Measure11LabelRender_labelFontMetrics;
  v3 = *v1;
  v4 = qword_1004A0050;
  v5 = *(v0 + OBJC_IVAR____TtC7Measure11LabelRender_labelFontMetrics);
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_1004D4970;
  v7 = static UIContentSizeCategory.> infix(_:_:)();

  if (v7)
  {

    v6 = UIContentSizeCategoryAccessibilityLarge;
  }

  v8 = objc_opt_self();
  v9 = [v8 traitCollectionWithPreferredContentSizeCategory:v6];

  [v5 scaledValueForValue:v9 compatibleWithTraitCollection:v3];
  v11 = v10;

  v12 = *(v0 + v2);
  v13 = qword_1004D4970;
  v14 = v12;
  LOBYTE(v9) = static UIContentSizeCategory.> infix(_:_:)();

  if (v9)
  {

    v13 = UIContentSizeCategoryAccessibilityLarge;
  }

  v15 = [v8 traitCollectionWithPreferredContentSizeCategory:v13];

  [v14 scaledValueForValue:v15 compatibleWithTraitCollection:10.0];
  v17 = v16;

  v18 = OBJC_IVAR____TtC7Measure11LabelRender_labelText;
  [*(v0 + OBJC_IVAR____TtC7Measure11LabelRender_labelText) frame];
  if (*(v0 + OBJC_IVAR____TtC7Measure11LabelRender_labelType))
  {
    v23 = v19;
    v24 = v20;
    v25 = v21;
    v26 = v22;
    v27 = v11 + CGRectGetWidth(*&v19);
    v83.origin.x = v23;
    v83.origin.y = v24;
    v83.size.width = v25;
    v83.size.height = v26;
    Height = CGRectGetHeight(v83);
    v29 = (v0 + OBJC_IVAR____TtC7Measure11LabelRender_labelSize);
    *v29 = v27;
    v29[1] = v17 + Height;
  }

  else
  {
    v30 = (v0 + OBJC_IVAR____TtC7Measure11LabelRender_attributedText);
    v31 = *(v0 + OBJC_IVAR____TtC7Measure11LabelRender_attributedText + 8);
    v76 = *(v0 + OBJC_IVAR____TtC7Measure11LabelRender_attributedText);
    v32 = *(v0 + OBJC_IVAR____TtC7Measure11LabelRender_measurement);
    v33 = *(**(v0 + OBJC_IVAR____TtC7Measure11LabelRender__unitState) + 144);
    v34 = v22;
    v35 = v21;
    v36 = v20;
    v37 = v19;

    v39 = v0;
    v33(v38);

    v40 = sub_1000983B8();
    sub_1001102CC(v40, v80, v32);
    v81 = v80[1];
    v82 = v80[0];
    sub_100018F04(&v81, &qword_1004A72C0, &qword_1003DAD40);
    *v30 = v82;
    v41 = v82;

    v42 = *(v0 + v18);
    v44 = v30[2];
    v43 = v30[3];
    v45 = v43;
    v46 = v42;
    v47 = v44;
    v48 = sub_1000C0D98(v41, *(&v41 + 1), v43);
    sub_1000C1108(&v82);

    [v46 setAttributedText:v48];
    [*(v39 + v18) frame];
    v78 = v50;
    v79 = v49;
    v52 = v51;
    rect = v53;
    v84.origin.x = v37;
    v84.origin.y = v36;
    v84.size.width = v35;
    v84.size.height = v34;
    v54 = v11 + CGRectGetWidth(v84);
    v85.origin.x = v37;
    v85.origin.y = v36;
    v85.size.width = v35;
    v85.size.height = v34;
    v55 = CGRectGetHeight(v85);
    v56 = (v39 + OBJC_IVAR____TtC7Measure11LabelRender_labelSize);
    *v56 = v54;
    v56[1] = v17 + v55;
    *v30 = v76;
    v30[1] = v31;

    v57 = *(v39 + v18);
    v59 = v30[2];
    v58 = v30[3];
    v60 = v58;
    v61 = v57;
    v62 = v59;
    v63 = sub_1000C0D98(v76, v31, v58);

    [v61 setAttributedText:v63];

    sub_10019F9DC();
    v64 = v30[2];
    v30[2] = v65;
    v66 = v65;

    v67 = *(v39 + v18);
    v68 = *v30;
    v69 = v30[1];
    v70 = v30[3];
    v71 = v70;
    v72 = v67;

    v73 = sub_1000C0D98(v68, v69, v70);

    [v72 setAttributedText:v73];

    v86.origin.x = v37;
    v86.origin.y = v36;
    v86.size.width = v35;
    v86.size.height = v34;
    v74 = v11 + CGRectGetWidth(v86);
    v87.size.width = v78;
    v87.origin.x = v79;
    v87.origin.y = v52;
    v87.size.height = rect;
    v75 = v11 + CGRectGetWidth(v87);
    if (v74 > v75)
    {
      v75 = v74;
    }

    *v56 = v75;
  }
}

uint64_t sub_1000AC368()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v3 = *(v10 - 8);
  __chkstk_darwin(v10);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100018630(0, &qword_1004A3F00, OS_dispatch_queue_ptr);
  v6 = static OS_dispatch_queue.main.getter();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1000C1100;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = &unk_10046C6F8;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000C1C84(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
  sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80, &unk_1003D6CF0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);

  (*(v11 + 8))(v2, v0);
  return (*(v3 + 8))(v5, v10);
}

void sub_1000AC710(float a1)
{
  if (*(v1 + OBJC_IVAR____TtC7Measure11LabelRender_measurement) != a1)
  {
    v2 = v1;
    if (*(v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelType))
    {
      if (*(v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelType) == 1)
      {
        v4 = *(**(v1 + OBJC_IVAR____TtC7Measure11LabelRender__unitState) + 144);

        v4(v5);

        v6 = sub_1000983B8();
        sub_100112000(v6, 0, 0, 0, &v29, a1);
        v7 = v29;
        v8 = v30;

        sub_1000ABA98(v7, v8);
        v9 = *(&v31 + 1);
        if (*(&v31 + 1))
        {
          v10 = v31;

          v11 = (v2 + OBJC_IVAR____TtC7Measure11LabelRender_speakableString);
          *v11 = v10;
          v11[1] = v9;
        }

LABEL_7:
        *(v2 + OBJC_IVAR____TtC7Measure11LabelRender_movesAlongLine) = 0;
        return;
      }

      if ([objc_opt_self() jasperAvailable])
      {
        v20 = *(**(v1 + OBJC_IVAR____TtC7Measure11LabelRender__unitState) + 144);

        v20(v21);

        v22 = sub_1000983B8();
        sub_10010DE20(v22, 0, 0, &v29, a1);
        v23 = v29;
        v24 = v30;

        sub_1000ABA98(v23, v24);
        v35 = v31;
        v25 = v31;

        if (*(&v25 + 1))
        {
          v26 = v34;
          if (v34 == 4 || (v33 & 1) != 0)
          {
            sub_100018F04(&v35, &qword_1004A72C0, &qword_1003DAD40);
          }

          else
          {
            v28 = v32;
            *(v2 + OBJC_IVAR____TtC7Measure11LabelRender_speakableString) = v25;

            *(v2 + OBJC_IVAR____TtC7Measure11LabelRender_roundedMeasurementInMeters) = sub_100111E38(v26, 0, v28);
          }
        }

        goto LABEL_7;
      }
    }

    else
    {
      v12 = *(**(v1 + OBJC_IVAR____TtC7Measure11LabelRender__unitState) + 144);

      v12(v14);

      v15 = sub_1000983B8();
      sub_10010DE20(v15, 0, 0, &v29, a1);
      v16 = v29;
      v17 = v30;

      sub_1000ABA98(v16, v17);
      v35 = v31;
      v18 = v31;

      if (*(&v18 + 1))
      {
        v19 = v34;
        if (v34 == 4 || (v33 & 1) != 0)
        {
          sub_100018F04(&v35, &qword_1004A72C0, &qword_1003DAD40);
        }

        else
        {
          v27 = v32;
          *(v2 + OBJC_IVAR____TtC7Measure11LabelRender_speakableString) = v18;

          *(v2 + OBJC_IVAR____TtC7Measure11LabelRender_roundedMeasurementInMeters) = sub_100111E38(v19, 0, v27);
        }
      }
    }
  }
}

void sub_1000ACA44(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = OBJC_IVAR____TtC7Measure11LabelRender_labelLock;
    v3 = Strong;
    swift_beginAccess();
    os_unfair_lock_lock(&v3[v2]);
    v3[OBJC_IVAR____TtC7Measure11LabelRender__visibleForCapture] = 0;
    os_unfair_lock_unlock(&v3[v2]);
    swift_endAccess();
  }
}

unint64_t sub_1000ACADC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C19D8(*a1);
  *a2 = result;
  return result;
}

char *sub_1000ACB60(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, int a6, unint64_t a7, int a8, double a9, double a10, void *a11)
{
  v12 = v11;
  v143 = a8;
  v136 = a7;
  v141 = a6;
  v154 = a5;
  v139 = a4;
  v138 = a3;
  v137 = a2;
  v140 = a11;
  ObjectType = swift_getObjectType();
  v149 = type metadata accessor for DispatchWorkItemFlags();
  v148 = *(v149 - 8);
  __chkstk_darwin(v149);
  v146 = &v136 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for DispatchQoS();
  v145 = *(v147 - 8);
  __chkstk_darwin(v147);
  v144 = &v136 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11[OBJC_IVAR____TtC7Measure11LabelRender_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v18 = &v11[OBJC_IVAR____TtC7Measure11LabelRender_rectangleLabelData];
  *v18 = 0;
  *(v18 + 1) = 0;
  *(v18 + 13) = 0;
  v18[21] = 1;
  v19 = &v11[OBJC_IVAR____TtC7Measure11LabelRender_labelSizeAdjustment];
  *v19 = 0;
  *(v19 + 1) = 0;
  *(v19 + 2) = 0;
  *(v19 + 12) = 0;
  v11[OBJC_IVAR____TtC7Measure11LabelRender_inBounds] = 0;
  v20 = OBJC_IVAR____TtC7Measure11LabelRender__input;
  KeyPath = swift_getKeyPath();
  v22 = sub_10000F974(&unk_1004A72D0, &qword_1003D5850);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v23 = qword_1004D5058;
  v24 = *(v22 + 272);
  swift_retain_n();
  *&v12[v20] = v24(KeyPath, v23);
  v25 = OBJC_IVAR____TtC7Measure11LabelRender__appState;
  v26 = swift_getKeyPath();
  v27 = *(sub_10000F974(&unk_1004A1940, &unk_1003D65A0) + 272);

  *&v12[v25] = v27(v26, v23);
  v28 = OBJC_IVAR____TtC7Measure11LabelRender__unitState;
  v29 = swift_getKeyPath();
  v30 = *(sub_10000F974(&unk_1004A72E0, &qword_1003DCDF0) + 272);

  *&v12[v28] = v30(v29, v23);
  v31 = OBJC_IVAR____TtC7Measure11LabelRender__orientationState;
  v32 = swift_getKeyPath();
  v33 = *(sub_10000F974(&unk_1004A4910, &unk_1003D8AC0) + 272);

  *&v12[v31] = v33(v32, v23);
  v34 = OBJC_IVAR____TtC7Measure11LabelRender__render;
  v35 = swift_getKeyPath();
  v36 = *(sub_10000F974(&qword_1004A72F0, &qword_1003DAE38) + 272);

  *&v12[v34] = v36(v35, v23);
  v37 = OBJC_IVAR____TtC7Measure11LabelRender__pointMove;
  v38 = swift_getKeyPath();
  v39 = sub_10000F974(&qword_1004A72F8, &qword_1003DAE68);
  *&v12[v37] = (*(v39 + 272))(v38, v23);
  v40 = OBJC_IVAR____TtC7Measure11LabelRender_desiredAlpha;
  *&v12[OBJC_IVAR____TtC7Measure11LabelRender_desiredAlpha] = 0x3FF0000000000000;
  *&v12[OBJC_IVAR____TtC7Measure11LabelRender_labelLock] = 0;
  v41 = &v12[OBJC_IVAR____TtC7Measure11LabelRender_snapFrom];
  sub_1000C1084(&v157);
  v42 = v160;
  v44 = v159;
  v43 = v160;
  *(v41 + 2) = v159;
  *(v41 + 3) = v42;
  v45 = v164;
  v47 = v163;
  v46 = v164;
  *(v41 + 6) = v163;
  *(v41 + 7) = v45;
  v48 = v162;
  v49 = v161;
  v50 = v162;
  *(v41 + 4) = v161;
  *(v41 + 5) = v48;
  v51 = v158;
  v52 = v157;
  v53 = v158;
  *v41 = v157;
  *(v41 + 1) = v51;
  v41[128] = v165;
  v54 = &v12[OBJC_IVAR____TtC7Measure11LabelRender_snapTo];
  *(v54 + 2) = v44;
  *(v54 + 3) = v43;
  *v54 = v52;
  *(v54 + 1) = v53;
  v54[128] = v165;
  *(v54 + 6) = v47;
  *(v54 + 7) = v46;
  *(v54 + 4) = v49;
  *(v54 + 5) = v50;
  v55 = &v12[OBJC_IVAR____TtC7Measure11LabelRender_latestLineEnds];
  v57 = matrix_identity_float4x4.columns[1];
  *v153 = matrix_identity_float4x4.columns[0];
  v56 = *v153;
  v152 = v57;
  v59 = matrix_identity_float4x4.columns[3];
  v151 = matrix_identity_float4x4.columns[2];
  v58 = v151;
  v150 = v59;
  *v55 = *v153;
  v55[1] = v57;
  v55[2] = v58;
  v55[3] = v59;
  v55[4] = v56;
  v55[5] = v57;
  v55[6] = v58;
  v55[7] = v59;
  v60 = OBJC_IVAR____TtC7Measure11LabelRender__pillToPlatterAnimationState;
  v61 = swift_getKeyPath();
  v62 = sub_10000F974(&unk_1004A7300, &qword_1003DA438);
  *&v12[v60] = (*(v62 + 272))(v61, v23);
  *&v12[OBJC_IVAR____TtC7Measure11LabelRender_kOcclusionAlpha] = 0x3FE0000000000000;
  v12[OBJC_IVAR____TtC7Measure11LabelRender_isOccluded] = 0;
  v63 = &v12[OBJC_IVAR____TtC7Measure11LabelRender_screenPoint];
  *v63 = 0;
  *(v63 + 1) = 0;
  v63[16] = 1;
  v12[OBJC_IVAR____TtC7Measure11LabelRender__visibleForCapture] = 0;
  v64 = &v12[OBJC_IVAR____TtC7Measure11LabelRender_captureActionKey];
  strcpy(&v12[OBJC_IVAR____TtC7Measure11LabelRender_captureActionKey], "captureAction");
  *(v64 + 7) = -4864;
  v65 = &v12[OBJC_IVAR____TtC7Measure11LabelRender_attributedText];
  sub_10019F9DC();
  *v65 = 0;
  v65[1] = 0xE000000000000000;
  v65[2] = v66;
  v65[3] = 0;
  v12[OBJC_IVAR____TtC7Measure11LabelRender_movesAlongLine] = 1;
  v67 = &v12[OBJC_IVAR____TtC7Measure11LabelRender_speakableString];
  *v67 = 0;
  v67[1] = 0xE000000000000000;
  *&v12[OBJC_IVAR____TtC7Measure11LabelRender_roundedMeasurementInMeters] = 0;
  *&v12[OBJC_IVAR____TtC7Measure11LabelRender_measurement] = 0;
  v12[OBJC_IVAR____TtC7Measure11LabelRender_capturing] = 0;
  v12[OBJC_IVAR____TtC7Measure11LabelRender_hideForMovePoint] = 0;
  v68 = &v12[OBJC_IVAR____TtC7Measure11LabelRender_labelSize];
  *v68 = 0;
  v68[1] = 0;
  v12[OBJC_IVAR____TtC7Measure11LabelRender_selectionState] = 0;
  v12[OBJC_IVAR____TtC7Measure11LabelRender_chevronOnLeft] = 0;
  *&v12[OBJC_IVAR____TtC7Measure11LabelRender_transitionLabel] = 0;
  *&v12[OBJC_IVAR____TtC7Measure11LabelRender_timer] = 0;
  v69 = &v12[OBJC_IVAR____TtC7Measure11LabelRender_center];
  v70 = *v153;
  v71 = v152;
  *v69 = *v153;
  v69[1] = v71;
  v72 = v151;
  v73 = v150;
  v69[2] = v151;
  v69[3] = v73;
  v74 = &v12[OBJC_IVAR____TtC7Measure11LabelRender_end1];
  *v74 = v70;
  v74[1] = v71;
  v74[2] = v72;
  v74[3] = v73;
  v75 = &v12[OBJC_IVAR____TtC7Measure11LabelRender_end2];
  *v75 = v70;
  v75[1] = v71;
  v75[2] = v72;
  v75[3] = v73;
  v76 = OBJC_IVAR____TtC7Measure11LabelRender_snapTimestamp;
  v77 = type metadata accessor for Date();
  v78 = *(*(v77 - 8) + 56);
  v78(&v12[v76], 1, 1, v77);
  *&v12[OBJC_IVAR____TtC7Measure11LabelRender_placingLabelDesiredOffset] = 0;
  *&v12[OBJC_IVAR____TtC7Measure11LabelRender_screenAngleOffset] = 0;
  *&v12[OBJC_IVAR____TtC7Measure11LabelRender_checkAngleOffset] = 0;
  v79 = &v12[OBJC_IVAR____TtC7Measure11LabelRender_labelSafeArea];
  *v79 = 0u;
  v79[1] = 0u;
  v12[OBJC_IVAR____TtC7Measure11LabelRender_refined] = 0;
  *&v12[OBJC_IVAR____TtC7Measure11LabelRender_labelZOffset] = 0;
  v80 = &v12[OBJC_IVAR____TtC7Measure11LabelRender_viewBounds];
  *v80 = 0;
  *(v80 + 1) = 0;
  v80[16] = 1;
  *&v12[OBJC_IVAR____TtC7Measure11LabelRender_lastPositionsOnLine] = _swiftEmptyArrayStorage;
  v81 = &v12[OBJC_IVAR____TtC7Measure11LabelRender_lastTransform];
  v82 = v152;
  *v81 = *v153;
  v81[1] = v82;
  v83 = v150;
  v81[2] = v151;
  v81[3] = v83;
  v84 = &v12[OBJC_IVAR____TtC7Measure11LabelRender_currentAnimation];
  *v84 = 0;
  *(v84 + 1) = 0;
  *(v84 + 1) = xmmword_1003DA910;
  *(v84 + 8) = 0;
  v78(&v12[OBJC_IVAR____TtC7Measure11LabelRender_occlusionResetTime], 1, 1, v77);
  v85 = OBJC_IVAR____TtC7Measure11LabelRender_activityPresentingViewController;
  *&v12[OBJC_IVAR____TtC7Measure11LabelRender_activityPresentingViewController] = 0;
  *&v12[OBJC_IVAR____TtC7Measure11LabelRender_historyPressedPublisher] = 0;
  v12[OBJC_IVAR____TtC7Measure11LabelRender_wasHidden] = 0;
  *&v12[OBJC_IVAR____TtC7Measure11LabelRender_mainView] = a1;
  v86 = &v12[OBJC_IVAR____TtC7Measure11LabelRender_measurementID];
  v87 = v138;
  *v86 = v137;
  v86[1] = v87;
  v88 = v139;
  *&v12[OBJC_IVAR____TtC7Measure11LabelRender_sceneView] = v139;
  *&v12[OBJC_IVAR____TtC7Measure11LabelRender_state] = v154;
  v89 = &v12[OBJC_IVAR____TtC7Measure11LabelRender_editViewBounds];
  *v89 = a9;
  v89[1] = a10;
  v90 = &v12[OBJC_IVAR____TtC7Measure11LabelRender_currentProperties];
  *v90 = xmmword_1003D9040;
  *(v90 + 1) = 0u;
  *(v90 + 2) = 0u;
  *(v90 + 3) = 0u;
  *(v90 + 8) = 0xE000000000000000;
  v91 = v140;
  *&v12[v85] = v140;
  v92 = objc_allocWithZone(type metadata accessor for TouchableSpriteNode());
  v153[0] = a1;
  v151.i64[0] = v88;
  v152.i64[0] = v91;
  v93 = [v92 init];
  v94 = OBJC_IVAR____TtC7Measure11LabelRender_labelNode;
  *&v12[OBJC_IVAR____TtC7Measure11LabelRender_labelNode] = v93;
  if (qword_1004A0590 != -1)
  {
    swift_once();
  }

  v95 = [objc_allocWithZone(SKSpriteNode) initWithColor:qword_1004D5108 size:{0.0, 0.0}];
  v96 = OBJC_IVAR____TtC7Measure11LabelRender_labelContainer;
  *&v12[OBJC_IVAR____TtC7Measure11LabelRender_labelContainer] = v95;
  [v95 setBlendMode:0];
  if (qword_1004D4FB0)
  {
    [*&v12[v96] setShader:?];
  }

  [*&v12[v94] setAlpha:{*&v12[v40], v136}];
  v97 = String._bridgeToObjectiveC()();
  v98 = [objc_opt_self() labelNodeWithText:v97];

  v99 = OBJC_IVAR____TtC7Measure11LabelRender_labelText;
  *&v12[OBJC_IVAR____TtC7Measure11LabelRender_labelText] = v98;
  v100 = objc_allocWithZone(NSAttributedString);
  v101 = v98;
  v102 = String._bridgeToObjectiveC()();
  v103 = [v100 initWithString:v102];

  [v101 setAttributedText:v103];
  v104 = objc_allocWithZone(SKSpriteNode);
  v105 = String._bridgeToObjectiveC()();
  v106 = [v104 initWithImageNamed:v105];

  v107 = OBJC_IVAR____TtC7Measure11LabelRender_labelChevron;
  *&v12[OBJC_IVAR____TtC7Measure11LabelRender_labelChevron] = v106;
  [v106 setAlpha:0.0];
  v108 = v151.i64[0];
  v109 = [v151.i64[0] overlaySKScene];
  if (v109)
  {
    v110 = v109;
    [v109 addChild:*&v12[v94]];
  }

  [*&v12[v94] addChild:*&v12[v96]];
  [*&v12[v94] addChild:*&v12[v99]];
  [*&v12[v96] addChild:*&v12[v107]];
  [*&v12[v99] setHorizontalAlignmentMode:0];
  [*&v12[v99] setVerticalAlignmentMode:1];
  if (qword_1004A0570 != -1)
  {
    swift_once();
  }

  v111 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:qword_1004D50E8];
  *&v12[OBJC_IVAR____TtC7Measure11LabelRender_labelFontMetrics] = v111;
  [*&v12[v99] setUserInteractionEnabled:0];
  [*&v12[v99] setBlendMode:0];
  [*&v12[v99] setZPosition:1.0];
  v12[OBJC_IVAR____TtC7Measure11LabelRender_labelType] = v141;
  v112 = v143;
  if (v143)
  {
    v113 = 0;
    v114 = 0;
    v115 = 0.0;
  }

  else
  {
    v114 = HIDWORD(v136);
    v115 = *&v136 * *(&v136 + 1);
    v113 = v136;
  }

  v116 = v154;
  *v18 = v113;
  *(v18 + 1) = v114;
  v18[20] = 0;
  *(v18 + 4) = v115;
  v18[21] = v112 & 1;
  v156.receiver = v12;
  v156.super_class = ObjectType;
  v117 = objc_msgSendSuper2(&v156, "init");
  sub_100018630(0, &qword_1004A3F00, OS_dispatch_queue_ptr);
  v118 = v117;
  v119 = static OS_dispatch_queue.main.getter();
  v120 = swift_allocObject();
  *(v120 + 16) = v118;
  *(v120 + 24) = v108;
  aBlock[4] = sub_1000C11E8;
  aBlock[5] = v120;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = &unk_10046C748;
  v121 = _Block_copy(aBlock);
  v122 = v108;

  v123 = v144;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000C1C84(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
  sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80, &unk_1003D6CF0, &protocol conformance descriptor for [A]);
  v124 = v146;
  v125 = v149;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v121);

  (*(v148 + 8))(v124, v125);
  (*(v145 + 8))(v123, v147);
  sub_1000AB428(v116);
  v126 = OBJC_IVAR____TtC7Measure11LabelRender_labelNode;
  [*&v118[OBJC_IVAR____TtC7Measure11LabelRender_labelNode] alpha];
  if (v127 != 0.0)
  {
    v128 = [objc_opt_self() fadeAlphaTo:0.0 duration:0.0];
    [*&v118[v126] runAction:v128];
  }

  [*&v118[v126] setUserInteractionEnabled:0];
  *(*&v118[v126] + OBJC_IVAR____TtC7Measure19TouchableSpriteNode_delegate + 8) = &off_10046C638;
  swift_unknownObjectWeakAssign();
  v129 = *&qword_1004D4BA8;
  *&v118[OBJC_IVAR____TtC7Measure11LabelRender_labelZOffset] = qword_1004D4BA8;
  *&qword_1004D4BA8 = v129 + 0.0003;
  v130 = v118;
  sub_1000DB884();

  v131 = swift_allocObject();
  *(v131 + 16) = v130;
  v132 = &v130[OBJC_IVAR____TtC7Measure11LabelRender_labelSizeAdjustment];
  swift_beginAccess();
  v133 = *v132;
  v134 = *(v132 + 1);
  *v132 = sub_1000C11F0;
  *(v132 + 1) = v131;
  *(v132 + 2) = 1;
  *(v132 + 12) = 0;
  sub_1000223C4(v133, v134);

  return v130;
}

void sub_1000ADB94(uint64_t a1, id a2)
{
  [a2 bounds];
  v3 = a1 + OBJC_IVAR____TtC7Measure11LabelRender_viewBounds;
  *v3 = v4;
  *(v3 + 8) = v5;
  *(v3 + 16) = 0;
  v6 = [objc_opt_self() sharedApplication];
  v7 = [v6 userInterfaceLayoutDirection];

  *(a1 + OBJC_IVAR____TtC7Measure11LabelRender_chevronOnLeft) = v7 == 1;
  if (v7 == 1)
  {
    v8 = *(a1 + OBJC_IVAR____TtC7Measure11LabelRender_labelChevron);

    [v8 setZRotation:3.14159265];
  }
}

uint64_t sub_1000ADC70()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v4 = *(v12 - 8);
  __chkstk_darwin(v12);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100018630(0, &qword_1004A3F00, OS_dispatch_queue_ptr);
  v7 = static OS_dispatch_queue.main.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_1000C0FF4;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = &unk_10046C6A8;
  v9 = _Block_copy(aBlock);
  v10 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000C1C84(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
  sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80, &unk_1003D6CF0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);

  (*(v13 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v12);
}

id sub_1000ADF64(uint64_t a1, __n128 a2)
{
  sub_1000ADFD0();
  v3 = *(a1 + OBJC_IVAR____TtC7Measure11LabelRender_transitionLabel);
  if (v3)
  {
    v4 = v3;
    sub_10009DD4C();
  }

  v5 = *(a1 + OBJC_IVAR____TtC7Measure11LabelRender_labelNode);

  return [v5 removeFromParent];
}

void sub_1000ADFD0()
{
  if (*(v0 + OBJC_IVAR____TtC7Measure11LabelRender_selectionState) - 1 <= 2)
  {
    v1 = v0;
    v2 = OBJC_IVAR____TtC7Measure11LabelRender_transitionLabel;
    v3 = *(v0 + OBJC_IVAR____TtC7Measure11LabelRender_transitionLabel);
    if (v3)
    {
      v4 = v3;
      sub_10009D984();
    }

    sub_1000B567C();
    v5 = *(v1 + v2);
    if (v5)
    {
      v6 = v5;
      sub_10009DD4C();
    }

    *(v1 + OBJC_IVAR____TtC7Measure11LabelRender_desiredAlpha) = 0x3FF0000000000000;
    v7 = *(v1 + OBJC_IVAR____TtC7Measure11LabelRender_state);

    sub_1000AB428(v7);
  }
}

void sub_1000AE08C(char a1, char a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  v11 = v10;
  v131 = a9;
  v132 = a10;
  v129 = a7;
  v130 = a8;
  v135 = a5;
  v136 = a6;
  v133 = a3;
  v134 = a4;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v127 = &v116 - v19;
  v20 = sub_10000F974(&unk_1004A3D90, &unk_1003DDD80);
  __chkstk_darwin(v20 - 8);
  v22 = &v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v116 - v24;
  simd_float4x4.position.getter();
  v128 = v26;
  v27 = simd_float4x4.position.getter();
  v29 = vsubq_f32(v128, v28);
  v30 = vmulq_f32(v29, v29);
  v31 = sqrtf(v30.f32[2] + vaddv_f32(*v30.f32));
  if (*(v10 + OBJC_IVAR____TtC7Measure11LabelRender_labelType) != 1)
  {
    sub_1000AC710(v31);
    *(v10 + OBJC_IVAR____TtC7Measure11LabelRender_measurement) = v31;
  }

  v32 = v133;
  v33 = v134;
  v34 = v135;
  v35 = v136;
  if (v31 > 0.00000011921)
  {
    v32.n128_f64[0] = sub_1000AE818(v27, v133, v134, v135, v136, v129, v130, v131, v132, 0.5);
  }

  if (a1 & 1) != 0 || (a2)
  {
    Date.init()();
    (*(v15 + 56))(v25, 0, 1, v14);
    v37 = OBJC_IVAR____TtC7Measure11LabelRender_snapTimestamp;
    swift_beginAccess();
    sub_1000C1014(v25, v11 + v37);
    swift_endAccess();
    v38 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_end1 + 16);
    v39 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_end1 + 32);
    v40 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_end1 + 48);
    v41 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_end2);
    v42 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_end2 + 16);
    v43 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_end2 + 32);
    v44 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_end2 + 48);
    v137 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_end1);
    v138 = v38;
    v139 = v39;
    v140 = v40;
    v141 = v41;
    v142 = v42;
    v143 = v43;
    v144 = v44;
    sub_1000C10C0(&v137);
    v45 = v11 + OBJC_IVAR____TtC7Measure11LabelRender_snapFrom;
    v46 = v144;
    *(v45 + 96) = v143;
    *(v45 + 112) = v46;
    *(v45 + 128) = v145;
    v47 = v140;
    *(v45 + 32) = v139;
    *(v45 + 48) = v47;
    v48 = v142;
    *(v45 + 64) = v141;
    *(v45 + 80) = v48;
    v49 = v138;
    *v45 = v137;
    *(v45 + 16) = v49;
    v146 = v133;
    v147 = v134;
    v148 = v135;
    v149 = v136;
    v150 = v129;
    v151 = v130;
    v152 = v131;
    v153 = v132;
    sub_1000C10C0(&v146);
    v50 = (v11 + OBJC_IVAR____TtC7Measure11LabelRender_snapTo);
    v51 = v149;
    v50[2] = v148;
    v50[3] = v51;
    v50[8].n128_u8[0] = v154;
    v52 = v153;
    v50[6] = v152;
    v50[7] = v52;
    v53 = v151;
    v50[4] = v150;
    v50[5] = v53;
    v54 = v147;
    *v50 = v146;
    v50[1] = v54;
  }

  else
  {
    v124 = v35;
    v125 = v34;
    v126 = v33;
    v128 = v32;
    v36 = OBJC_IVAR____TtC7Measure11LabelRender_snapTimestamp;
    swift_beginAccess();
    sub_10006C92C(v10 + v36, v22, &unk_1004A3D90, &unk_1003DDD80);
    if ((*(v15 + 48))(v22, 1, v14) == 1)
    {
      sub_100018F04(v22, &unk_1004A3D90, &unk_1003DDD80);
LABEL_13:
      v80 = (v11 + OBJC_IVAR____TtC7Measure11LabelRender_center);
      v82 = v125;
      v81 = v126;
      *v80 = v128;
      v80[1] = v81;
      v83 = v124;
      v80[2] = v82;
      v80[3] = v83;
      v84 = (v11 + OBJC_IVAR____TtC7Measure11LabelRender_end1);
      v86 = v133;
      v85 = v134;
      *v84 = v133;
      v84[1] = v85;
      v88 = v135;
      v87 = v136;
      v84[2] = v135;
      v84[3] = v87;
      v89 = (v11 + OBJC_IVAR____TtC7Measure11LabelRender_end2);
      v91 = v129;
      v90 = v130;
      *v89 = v129;
      v89[1] = v90;
      v60 = v131;
      v59 = v132;
      v89[2] = v131;
      v89[3] = v59;
      v55 = (v11 + OBJC_IVAR____TtC7Measure11LabelRender_latestLineEnds);
      *v55 = v86;
      v55[1] = v85;
      v55[2] = v88;
      v55[3] = v87;
      v55[4] = v91;
      v55[5] = v90;
      goto LABEL_14;
    }

    v61 = v127;
    (*(v15 + 32))(v127, v22, v14);
    Date.init()();
    Date.timeIntervalSince(_:)();
    v63 = v62;
    v64 = *(v15 + 8);
    v64(v17, v14);
    v65 = fabs(v63);
    if (v65 > 0.5)
    {
      v64(v61, v14);
      (*(v15 + 56))(v25, 1, 1, v14);
      swift_beginAccess();
      sub_1000C1014(v25, v11 + v36);
      swift_endAccess();
      sub_1000C1084(&v146);
      v66 = (v11 + OBJC_IVAR____TtC7Measure11LabelRender_snapFrom);
      v67 = v149;
      v68 = v148;
      v69 = v149;
      v66[2] = v148;
      v66[3] = v67;
      v70 = v153;
      v71 = v152;
      v72 = v153;
      v66[6] = v152;
      v66[7] = v70;
      v73 = v151;
      v75 = v150;
      v74 = v151;
      v66[4] = v150;
      v66[5] = v73;
      v76 = v147;
      v78 = v146;
      v77 = v147;
      *v66 = v146;
      v66[1] = v76;
      v66[8].n128_u8[0] = v154;
      v79 = (v11 + OBJC_IVAR____TtC7Measure11LabelRender_snapTo);
      v79[6] = v71;
      v79[7] = v72;
      v79[2] = v68;
      v79[3] = v69;
      v79[4] = v75;
      v79[5] = v74;
      v79[8].n128_u8[0] = v154;
      *v79 = v78;
      v79[1] = v77;
      goto LABEL_13;
    }

    v92 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_snapFrom + 112);
    v152 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_snapFrom + 96);
    v153 = v92;
    v154 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_snapFrom + 128);
    v93 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_snapFrom + 48);
    v148 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_snapFrom + 32);
    v149 = v93;
    v94 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_snapFrom + 80);
    v150 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_snapFrom + 64);
    v151 = v94;
    v95 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_snapFrom + 16);
    v146 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_snapFrom);
    v147 = v95;
    if (sub_1000C10A4(&v146) == 1 || (v96 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_snapTo + 112), v143 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_snapTo + 96), v144 = v96, v145 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_snapTo + 128), v97 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_snapTo + 48), v139 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_snapTo + 32), v140 = v97, v98 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_snapTo + 80), v141 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_snapTo + 64), v142 = v98, v99 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_snapTo + 16), v137 = *(v11 + OBJC_IVAR____TtC7Measure11LabelRender_snapTo), v138 = v99, sub_1000C10A4(&v137) == 1))
    {
      v64(v61, v14);
    }

    else
    {
      spring(tension:friction:velocity:elapsed:)(400.0, 40.0, 0.0, v65);
      slerp(transform1:transform2:percent:)();
      v128 = v100;
      v125 = v102;
      v126 = v101;
      v124 = v103;
      v104 = slerp(transform1:transform2:percent:)();
      v121 = v106;
      v122 = v105;
      v120 = v107;
      v123 = v108;
      *&v109 = sub_1000AE818(v104, v128, v126, v125, v124, v105, v106, v107, v108, 0.5);
      v118 = v110;
      v119 = v109;
      v116 = v112;
      v117 = v111;
      v64(v61, v14);
      v113 = (v11 + OBJC_IVAR____TtC7Measure11LabelRender_center);
      *v113 = v119;
      v113[1] = v118;
      v113[2] = v117;
      v113[3] = v116;
      v114 = (v11 + OBJC_IVAR____TtC7Measure11LabelRender_end1);
      *v114 = v128;
      v114[1] = v126;
      v114[2] = v125;
      v114[3] = v124;
      v115 = (v11 + OBJC_IVAR____TtC7Measure11LabelRender_end2);
      *v115 = v122;
      v115[1] = v121;
      v115[2] = v120;
      v115[3] = v123;
    }
  }

  v55 = (v11 + OBJC_IVAR____TtC7Measure11LabelRender_latestLineEnds);
  v56 = v134;
  *v55 = v133;
  v55[1] = v56;
  v57 = v136;
  v55[2] = v135;
  v55[3] = v57;
  v58 = v130;
  v55[4] = v129;
  v55[5] = v58;
  v60 = v131;
  v59 = v132;
LABEL_14:
  v55[6] = v60;
  v55[7] = v59;
}

double sub_1000AE818(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9, float a10)
{
  simd_float4x4.position.getter();
  v22 = v11;
  simd_float4x4.position.getter();
  v13 = vsubq_f32(v12, v22);
  v14 = vmulq_f32(v13, v13);
  *&v15 = v14.f32[2] + vaddv_f32(*v14.f32);
  *v14.f32 = vrsqrte_f32(v15);
  *v14.f32 = vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32)));
  v21 = vmulq_n_f32(v13, vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32))).f32[0]);
  simd_float4x4.up.getter();
  v17 = vmul_f32(vext_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL), 4uLL), *&vextq_s8(v21, v21, 4uLL));
  if ((1.0 - fabsf(v17.f32[1] + (vmuls_n_f32(*v16.i32, *v21.i32) + v17.f32[0]))) < 0.00000011921)
  {
    v18 = *(**(v10 + OBJC_IVAR____TtC7Measure11LabelRender__render) + 144);

    v18(__src, v19);

    memcpy(__dst, __src, 0x1F8uLL);
    sub_100038ECC(__dst);
    simd_float4x4.forward.getter();
  }

  createTransform(forward:normal:position:)();
  return result;
}

void sub_1000AE9F0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v177.i8[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v197 = type metadata accessor for DispatchQoS();
  v196 = *(v197 - 8);
  __chkstk_darwin(v197);
  v9 = &v177.i8[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_center + 16];
  v202 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_center];
  v201 = v10;
  v11 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_center + 48];
  v200 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_center + 32];
  v199 = v11;
  v12 = *(**&v1[OBJC_IVAR____TtC7Measure11LabelRender__appState] + 144);

  v12(&v206, v13);

  v14 = &OBJC_IVAR____TtC7Measure11LabelRender_rectangleLabelData;
  if (BYTE3(v206) == 1)
  {
    v15 = OBJC_IVAR____TtC7Measure11LabelRender_labelNode;
    [*&v1[OBJC_IVAR____TtC7Measure11LabelRender_labelNode] alpha];
    if (v16 != 0.0)
    {
      v17 = [objc_opt_self() fadeAlphaTo:0.0 duration:0.0];
      [*&v2[v15] runAction:v17];
    }

    [*&v2[v15] setUserInteractionEnabled:0];
    goto LABEL_95;
  }

  v183 = v4;
  sub_1000B0024();
  v18 = *(**&v1[OBJC_IVAR____TtC7Measure11LabelRender__input] + 144);

  v18(&v206, v19);

  v20 = *(&v207 + 8);
  v21 = *&v208;

  type metadata accessor for MeasureCamera();
  simd_float4x4.position.getter();
  v22 = *(a1 + 48);
  v188 = *(a1 + 32);
  v187 = v22;
  v23 = *(a1 + 80);
  v186 = *(a1 + 64);
  v185 = v23;
  v25 = *(a1 + 160);
  v24 = *(a1 + 176);
  v26 = *(a1 + 192);
  v27 = *(a1 + 208);
  v28 = *(a1 + 240);
  v181 = *(a1 + 224);
  v180 = v28;
  v29 = *(a1 + 272);
  v179 = *(a1 + 256);
  v178 = v29;
  v30 = *(a1 + 336);
  v192 = *(a1 + 320);
  v191 = v30;
  v31 = *(a1 + 368);
  v190 = *(a1 + 352);
  v189 = v31;
  v198 = v25;
  v195 = v24;
  v194 = v26;
  v193 = v27;
  static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
  SCNVector3.init(_:)();
  v33 = v32;
  v204 = __PAIR64__(v35, v34);
  v205 = v32;
  v36 = &v1[OBJC_IVAR____TtC7Measure11LabelRender_end2];
  simd_float4x4.position.getter();
  v184 = v37;
  static MeasureCamera.viewSpacePoint(fromWorldSpace:view:)();
  if (v38 >= 0.0)
  {
    simd_float4x4.position.getter();
  }

  static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
  SCNVector3.init(_:)();
  v182 = v5;
  - infix(_:_:)();
  v41 = atan2f(-v39, -v40);
  v42 = OBJC_IVAR____TtC7Measure11LabelRender_state;
  v43 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_state];
  if (v43 <= 7 && ((1 << v43) & 0x98) != 0 || (v1[OBJC_IVAR____TtC7Measure11LabelRender_capturing] & 1) != 0 || [objc_opt_self() jasperAvailable] && v1[OBJC_IVAR____TtC7Measure11LabelRender_movesAlongLine] == 1)
  {
    SIMD3<>.init(_:)();
    sub_1000B0DE4(a1, v44);
    SCNVector3.init(_:)();
    += infix(_:_:)();
  }

  v46 = *&v1[v42];
  if ((v46 > 7 || ((1 << v46) & 0x98) == 0) && (v1[OBJC_IVAR____TtC7Measure11LabelRender_capturing] & 1) == 0 && [objc_opt_self() jasperAvailable])
  {
    v67 = [objc_opt_self() standardUserDefaults];
    v68 = [v67 isLabelOcclusionEnabled];

    if (v68)
    {
      v14 = &OBJC_IVAR____TtC7Measure11LabelRender_rectangleLabelData;
      if (v2[OBJC_IVAR____TtC7Measure11LabelRender_movesAlongLine] == 1)
      {
        if (vaddv_f32(vmul_f32(*&v2[OBJC_IVAR____TtC7Measure11LabelRender_placingLabelDesiredOffset], *&v2[OBJC_IVAR____TtC7Measure11LabelRender_placingLabelDesiredOffset])) >= 0.00000011921)
        {
          v45.n128_u64[0] = v204;
          v202 = v45;
          static MeasureCamera.unprojectPoint(_:viewProjectionInv:viewportSize:)();
          v184 = v127;
          static MeasureCamera.unprojectPoint(_:viewProjectionInv:viewportSize:)();
          v181 = v128;
          v129 = &v2[OBJC_IVAR____TtC7Measure11LabelRender_end1];
          v130 = *&v2[OBJC_IVAR____TtC7Measure11LabelRender_end1 + 16];
          v131 = *&v2[OBJC_IVAR____TtC7Measure11LabelRender_end1 + 32];
          v132 = *&v2[OBJC_IVAR____TtC7Measure11LabelRender_end1 + 48];
          v202 = *&v2[OBJC_IVAR____TtC7Measure11LabelRender_end1];
          v201 = v130;
          v200 = v131;
          v199 = v132;
          simd_float4x4.position.getter();
          v180 = v133;
          v134 = v36[1];
          v135 = v36[2];
          v136 = v36[3];
          v188 = *v36;
          v187 = v134;
          v186 = v135;
          v185 = v136;
          simd_float4x4.position.getter();
          v137 = lineIntersection(line1P1:line1P2:line2P1:line2P2:)();
          v140 = vdupq_lane_s64(__SPAIR64__(v139, LODWORD(v138)), 0);
          v141.i32[0] = vmovn_s32(vcgtq_f32(xmmword_1003DA920, v140)).u32[0];
          v141.i32[1] = vmovn_s32(vcgtq_f32(v140, xmmword_1003DA920)).i32[1];
          if (vminv_u16(v141))
          {
            v142.n128_f64[0] = sub_1000AE818(v137, v202, v201, v200, v199, v188, v187, v186, v185, v138);
            v202 = v142;
            v201 = v143;
            v200 = v144;
            v199 = v145;
            simd_float4x4.position.getter();
            v188 = v146;
            v147 = v129[1];
            v187 = *v129;
            v186 = v147;
            v148 = v129[3];
            v185 = v129[2];
            v184 = v148;
            simd_float4x4.position.getter();
            v150 = vsubq_f32(v188, v149);
            v177 = vmulq_f32(v150, v150);
            v151 = v36[1];
            v181 = *v36;
            v180 = v151;
            v152 = v36[3];
            v179 = v36[2];
            v178 = v152;
            simd_float4x4.position.getter();
            v154 = vsubq_f32(v188, v153);
            v155 = vmulq_f32(v154, v154);
            *v155.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v177, v177, 8uLL), *&vextq_s8(v155, v155, 8uLL)), vadd_f32(vzip1_s32(*v177.i8, *v155.i8), vzip2_s32(*v177.i8, *v155.i8))));
            if (vcgt_f32(vdup_lane_s32(*v155.i8, 1), *v155.i8).u8[0])
            {
              v156 = -1;
            }

            else
            {
              v156 = 0;
            }

            v157 = vdupq_n_s32(v156);
            v188 = vbslq_s8(v157, v187, v181);
            v187 = vbslq_s8(v157, v186, v180);
            v186 = vbslq_s8(v157, v185, v179);
            v185 = vbslq_s8(v157, v184, v178);
            v73 = 1;
          }

          else
          {
            v73 = 0;
          }

          v14 = &OBJC_IVAR____TtC7Measure11LabelRender_rectangleLabelData;
        }

        else
        {
          sub_1000B0F0C(a1);
          if (v69 & 1) != 0 || (SIMD2<>.init(_:)(), SIMD2<>.init(_:)(), v70 = clipLineToRect(rectOrigin:rectSize:lineP1:lineP2:)(), (v72))
          {
            v73 = 0;
            v74 = *&v2[OBJC_IVAR____TtC7Measure11LabelRender_end1 + 16];
            v202 = *&v2[OBJC_IVAR____TtC7Measure11LabelRender_end1];
            v201 = v74;
            v75 = *&v2[OBJC_IVAR____TtC7Measure11LabelRender_end1 + 48];
            v200 = *&v2[OBJC_IVAR____TtC7Measure11LabelRender_end1 + 32];
            v199 = v75;
            v76 = v36[1];
            v188 = *v36;
            v187 = v76;
            v77 = v36[3];
            v186 = v36[2];
            v185 = v77;
          }

          else
          {
            v164 = v71;
            v165 = *&v2[OBJC_IVAR____TtC7Measure11LabelRender_end1 + 16];
            v202 = *&v2[OBJC_IVAR____TtC7Measure11LabelRender_end1];
            v201 = v165;
            v166 = *&v2[OBJC_IVAR____TtC7Measure11LabelRender_end1 + 48];
            v200 = *&v2[OBJC_IVAR____TtC7Measure11LabelRender_end1 + 32];
            v199 = v166;
            sub_1000B124C(a1, *&v70);
            simd_float4x4.translated(to:)();
            v202 = v167;
            v201 = v168;
            v200 = v169;
            v199 = v170;
            v171 = v36[1];
            v188 = *v36;
            v187 = v171;
            v172 = v36[3];
            v186 = v36[2];
            v185 = v172;
            sub_1000B124C(a1, v164);
            simd_float4x4.translated(to:)();
            v188 = v173;
            v187 = v174;
            v186 = v175;
            v185 = v176;
            v73 = 0;
          }
        }

        ariadne_trace(_:_:_:_:_:)();
        sub_1000B1378(a1, v73, v202, v201, v200, v199, v188, v187, v186, v185);
        v202 = v158;
        v201 = v159;
        v200 = v160;
        v199 = v161;
        ariadne_trace(_:_:_:_:_:)();
        simd_float4x4.position.getter();
        static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
        SCNVector3.init(_:)();
        v204 = __PAIR64__(v162, v45.n128_u32[0]);
        v205 = v163;
      }
    }

    else
    {
      v14 = &OBJC_IVAR____TtC7Measure11LabelRender_rectangleLabelData;
    }
  }

  v45.n128_u64[0] = v204;
  v198 = v45;
  sub_1000B124C(a1, *&v204);
  v195 = v47;
  simd_float4x4.position.getter();
  v49 = vsubq_f32(v48, v195);
  v50 = vmulq_f32(v49, v49);
  v51 = sqrtf(v50.f32[2] + vaddv_f32(*v50.f32));
  v52 = ((1.0 / ((v51 * 1.2) + 0.7)) + 0.5);
  v53 = 1.0;
  if ((*&v52 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v53 = ((1.0 / ((v51 * 1.2) + 0.7)) + 0.5);
  }

  if ((~*&v52 & 0x7FF0000000000000) != 0)
  {
    v54 = ((1.0 / ((v51 * 1.2) + 0.7)) + 0.5);
  }

  else
  {
    v54 = v53;
  }

  v55 = OBJC_IVAR____TtC7Measure11LabelRender_inBounds;
  v2[OBJC_IVAR____TtC7Measure11LabelRender_inBounds] = 0;
  v56 = objc_opt_self();
  if ([v56 jasperAvailable])
  {
    v57 = &v2[OBJC_IVAR____TtC7Measure11LabelRender_screenPoint];
    *v57 = vcvtq_f64_f32(v198.n128_u64[0]);
    LOBYTE(v57[1].f64[0]) = 0;
    if (v33 < 1.0)
    {
      if (v2[OBJC_IVAR____TtC7Measure11LabelRender_selectionState] && *&v2[v42] != 3 && swift_unknownObjectWeakLoadStrong())
      {
        sub_1000C5964(*&v2[OBJC_IVAR____TtC7Measure11LabelRender_measurementID], *&v2[OBJC_IVAR____TtC7Measure11LabelRender_measurementID + 8], 0.0, 0.0, 0.0, 0.0);
        swift_unknownObjectRelease();
      }

      goto LABEL_32;
    }
  }

  else if ([*&v2[OBJC_IVAR____TtC7Measure11LabelRender_labelNode] isHidden])
  {
    if (v33 < 1.0)
    {
      v58 = OBJC_IVAR____TtC7Measure11LabelRender_selectionState;
      if (v2[OBJC_IVAR____TtC7Measure11LabelRender_selectionState])
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_1000C5964(*&v2[OBJC_IVAR____TtC7Measure11LabelRender_measurementID], *&v2[OBJC_IVAR____TtC7Measure11LabelRender_measurementID + 8], 0.0, 0.0, 0.0, 0.0);
          swift_unknownObjectRelease();
        }

        if (v2[v58] == 2)
        {
          goto LABEL_95;
        }
      }

      goto LABEL_32;
    }
  }

  else if (v33 < 1.0)
  {
    goto LABEL_32;
  }

  if ((v2[OBJC_IVAR____TtC7Measure11LabelRender_selectionState] | 2) != 3)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1000C5964(*&v2[OBJC_IVAR____TtC7Measure11LabelRender_measurementID], *&v2[OBJC_IVAR____TtC7Measure11LabelRender_measurementID + 8], 0.0, 0.0, 0.0, 0.0);
      swift_unknownObjectRelease();
    }

    v114 = &OBJC_IVAR____TtC7Measure11LabelRender_rectangleLabelData;
    [*&v2[OBJC_IVAR____TtC7Measure11LabelRender_labelNode] setHidden:1];
    goto LABEL_81;
  }

LABEL_32:
  if ([v56 jasperAvailable])
  {
    v59 = OBJC_IVAR____TtC7Measure11LabelRender_labelLock;
    swift_beginAccess();
    os_unfair_lock_lock(&v2[v59]);
    v60 = v2[OBJC_IVAR____TtC7Measure11LabelRender__visibleForCapture];
    os_unfair_lock_unlock(&v2[v59]);
    swift_endAccess();
    v61 = &OBJC_IVAR____TtC7Measure11LabelRender_rectangleLabelData;
    if (v60)
    {
      goto LABEL_39;
    }

    v62 = sub_1000B2228();
    if (v62)
    {
      goto LABEL_38;
    }

LABEL_37:
    if (v2[OBJC_IVAR____TtC7Measure11LabelRender_selectionState])
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  v62 = sub_1000B2228();
  v61 = &OBJC_IVAR____TtC7Measure11LabelRender_rectangleLabelData;
  if (!v62)
  {
    goto LABEL_37;
  }

LABEL_38:
  [*&v2[v61[31]] setHidden:v62];
LABEL_39:
  sub_1000AC368();
  if ((v2[OBJC_IVAR____TtC7Measure11LabelRender_capturing] & 1) == 0)
  {
    [*&v2[OBJC_IVAR____TtC7Measure11LabelRender_labelContainer] size];
    v64 = v54 * v63 * 0.5;
    if (v21 > v64)
    {
      v64 = v21;
    }

    v65 = vsub_f32(v198.n128_u64[0], v20);
    v66 = vaddv_f32(vmul_f32(v65, v65)) < (v64 * v64) && *&v2[v42] != 1;
    v2[v55] = v66;
  }

  v78 = v198.n128_f32[1];
  sub_1000B22A4(-v41);
  v80 = fabsf(v79);
  v81 = Float.piDiv2.unsafeMutableAddressor();
  v82 = *v81 * 0.1;
  if ((*v81 + v82) < v80)
  {
    v83 = 1078530010;
LABEL_61:
    *&v2[OBJC_IVAR____TtC7Measure11LabelRender_screenAngleOffset] = v83;
    goto LABEL_62;
  }

  v83 = 0;
  if (v80 < (*v81 - v82))
  {
    goto LABEL_61;
  }

LABEL_62:
  v84 = v198.n128_f32[0];
  v85 = v78;
  v86 = (*&v2[OBJC_IVAR____TtC7Measure11LabelRender_screenAngleOffset] - v41);
  v87 = v61[31];
  [*&v2[v87] setZRotation:v86];
  [*&v2[v87] setScale:v54];
  v88 = *&v2[OBJC_IVAR____TtC7Measure11LabelRender_labelText];
  v89 = objc_opt_self();
  v90 = v88;
  v91 = [v89 mainScreen];
  [v91 scale];
  v93 = v92;

  [v90 setScale:1.0 / v93];
  if ((v2[OBJC_IVAR____TtC7Measure11LabelRender_viewBounds + 16] & 1) == 0)
  {
    [*&v2[v87] setPosition:{v84, *&v2[OBJC_IVAR____TtC7Measure11LabelRender_viewBounds + 8] - v85}];
  }

  sub_1000B2428(v51);
  v94 = 0.0;
  if (v2[v55])
  {
    v95 = 0.0;
  }

  else
  {
    [*&v2[v87] alpha];
    v95 = 0.0;
    if (v96 >= 0.5)
    {
      [*&v2[OBJC_IVAR____TtC7Measure11LabelRender_labelContainer] size];
      static CGSize.* infix(_:_:)();
      v94 = v97;
      v95 = v98;
    }
  }

  v99 = OBJC_IVAR____TtC7Measure11LabelRender_selectionState;
  if (!v2[OBJC_IVAR____TtC7Measure11LabelRender_selectionState] && swift_unknownObjectWeakLoadStrong())
  {
    sub_1000C5964(*&v2[OBJC_IVAR____TtC7Measure11LabelRender_measurementID], *&v2[OBJC_IVAR____TtC7Measure11LabelRender_measurementID + 8], v94, v95, v84, v85);
    swift_unknownObjectRelease();
  }

  v100 = &v2[OBJC_IVAR____TtC7Measure11LabelRender_currentProperties];
  *v100 = -v86;
  v100[1] = v54;
  v100[2] = v84;
  v100[3] = v85;
  v101 = OBJC_IVAR____TtC7Measure11LabelRender_labelContainer;
  [*&v2[OBJC_IVAR____TtC7Measure11LabelRender_labelContainer] size];
  *(v100 + 5) = v102;
  *(v100 + 6) = v103;
  [*&v2[v101] size];
  v100[4] = v104 * 0.5;
  v105 = *&v2[OBJC_IVAR____TtC7Measure11LabelRender_attributedText + 8];
  v100[7] = *&v2[OBJC_IVAR____TtC7Measure11LabelRender_attributedText];
  *(v100 + 8) = v105;

  if ((v2[v99] | 2) == 3)
  {
    v106 = *(v100 + 2);
    v209 = *(v100 + 3);
    v210 = *(v100 + 8);
    v107 = *v100;
    v207 = *(v100 + 1);
    v208 = v106;
    v206 = v107;
    sub_100018630(0, &qword_1004A3F00, OS_dispatch_queue_ptr);
    sub_10009F898(&v206, aBlock);
    v108 = static OS_dispatch_queue.main.getter();
    v109 = swift_allocObject();
    v110 = v206;
    *(v109 + 40) = v207;
    *(v109 + 56) = v208;
    *(v109 + 72) = v209;
    *(v109 + 16) = v2;
    *(v109 + 88) = v210;
    *(v109 + 24) = v110;
    aBlock[4] = sub_1000C1270;
    aBlock[5] = v109;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100041180;
    aBlock[3] = &unk_10046C7E8;
    v111 = _Block_copy(aBlock);
    v112 = v2;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000C1C84(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
    sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80, &unk_1003D6CF0, &protocol conformance descriptor for [A]);
    v113 = v183;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v111);

    (*(v182 + 8))(v7, v113);
    (*(v196 + 8))(v9, v197);
  }

  v14 = &OBJC_IVAR____TtC7Measure11LabelRender_rectangleLabelData;
  v114 = &OBJC_IVAR____TtC7Measure11LabelRender_rectangleLabelData;
  if ((v2[v55] & 1) == 0)
  {
    v211.x = v84;
    v211.y = v85;
    if (CGRectContainsPoint(*&v2[OBJC_IVAR____TtC7Measure11LabelRender_labelSafeArea], v211) && v2[OBJC_IVAR____TtC7Measure11LabelRender_refined] == 1 && swift_unknownObjectWeakLoadStrong())
    {
      sub_1000C5AD8();
      swift_unknownObjectRelease();
    }
  }

LABEL_81:
  if (!v2[OBJC_IVAR____TtC7Measure11LabelRender_selectionState] && (v2[OBJC_IVAR____TtC7Measure11LabelRender_capturing] & 1) == 0)
  {
    v115 = 0.0;
    if ((v2[v55] & 1) == 0)
    {
      v115 = *&v2[OBJC_IVAR____TtC7Measure11LabelRender_desiredAlpha];
    }

    v116 = v114[31];
    [*&v2[v116] alpha];
    if (vabdd_f64(v115, v117) > 0.01)
    {
      v118 = [objc_opt_self() fadeAlphaTo:v115 duration:0.1];
      [*&v2[v116] runAction:v118];
    }
  }

  v119 = &v2[OBJC_IVAR____TtC7Measure11LabelRender_labelSizeAdjustment];
  v120 = swift_beginAccess();
  if (*v119)
  {
    if (v119[24] == 1)
    {
      (*v119)(v120);
      *(v119 + 12) = 256;
    }

    else if ((v119[25] & 1) == 0)
    {
      v121 = *(v119 + 2);
      v122 = v121 != 0;
      v123 = v121 - 1;
      if (!v122)
      {
        __break(1u);
        return;
      }

      *(v119 + 2) = v123;
      v119[24] = v123 == 0;
    }
  }

  swift_endAccess();
LABEL_95:
  v2[v14[50]] = 0;
  v124 = &v2[OBJC_IVAR____TtC7Measure11LabelRender_lastTransform];
  v125 = v201;
  *v124 = v202;
  v124[1] = v125;
  v126 = v199;
  v124[2] = v200;
  v124[3] = v126;
}

void sub_1000B0024()
{
  v1 = v0;
  sub_100018630(0, &qword_1004A1930, UIDevice_ptr);
  if ((static UIDevice.isIPad()() & 1) == 0)
  {
    v15 = *(**(v0 + OBJC_IVAR____TtC7Measure11LabelRender__orientationState) + 144);

    v15(&v92, v16);

    if ((v92 - 3) >= 2)
    {
      if (v92 != 1)
      {
        v46 = v0 + OBJC_IVAR____TtC7Measure11LabelRender_labelSafeArea;
        v112.origin.x = 0.0;
        v112.origin.y = 0.0;
        v112.size.width = 0.0;
        v112.size.height = 0.0;
        if (CGRectEqualToRect(*(v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelSafeArea), v112))
        {
          if (qword_1004A0528 != -1)
          {
            swift_once();
          }

          v47 = *&qword_1004D5098;
          v48 = OBJC_IVAR____TtC7Measure11LabelRender_labelContainer;
          [*(v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelContainer) frame];
          Width = CGRectGetWidth(v105);
          v50 = *(v1 + OBJC_IVAR____TtC7Measure11LabelRender_editViewBounds + 8);
          if (qword_1004A05C8 != -1)
          {
            swift_once();
          }

          v51 = *&qword_1004D5140;
          [*(v1 + v48) frame];
          v52 = CGRectGetWidth(v106);
          if (qword_1004A0850 != -1)
          {
            v89 = v52;
            swift_once();
            v52 = v89;
          }

          if ((*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80) & 1) == 0)
          {
            v53 = v47 + 47.0 + Width * 0.5;
            v54 = v50 - v53 - v51 + v52 * -0.5;
            v55 = CGRectGetWidth(*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 48));
            *v46 = 0x403E000000000000;
            *(v46 + 8) = v53;
            *(v46 + 16) = v55 + -60.0;
            *(v46 + 24) = v54;
            return;
          }

          goto LABEL_89;
        }

        return;
      }

      if (qword_1004A0528 != -1)
      {
        swift_once();
      }

      v17 = *&qword_1004D5098;
      v33 = OBJC_IVAR____TtC7Measure11LabelRender_labelContainer;
      [*(v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelContainer) frame];
      v19 = CGRectGetWidth(v101);
      v20 = *(v1 + OBJC_IVAR____TtC7Measure11LabelRender_editViewBounds + 8);
      if (qword_1004A05C8 != -1)
      {
        swift_once();
      }

      v21 = *&qword_1004D5140;
      [*(v1 + v33) frame];
      v22 = CGRectGetWidth(v102);
      if (qword_1004A0850 != -1)
      {
        v88 = v22;
        swift_once();
        v22 = v88;
      }

      v23 = qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits;
      if (*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80))
      {
        goto LABEL_88;
      }

      v24 = 47.0;
    }

    else
    {
      if (qword_1004A0528 != -1)
      {
        swift_once();
      }

      v17 = *&qword_1004D5098;
      v18 = OBJC_IVAR____TtC7Measure11LabelRender_labelContainer;
      [*(v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelContainer) frame];
      v19 = CGRectGetWidth(v95);
      v20 = *(v1 + OBJC_IVAR____TtC7Measure11LabelRender_editViewBounds + 8);
      if (qword_1004A05C8 != -1)
      {
        swift_once();
      }

      v21 = *&qword_1004D5140;
      [*(v1 + v18) frame];
      v22 = CGRectGetWidth(v96);
      if (qword_1004A0850 != -1)
      {
        v87 = v22;
        swift_once();
        v22 = v87;
      }

      v23 = qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits;
      if (*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80))
      {
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      v24 = 80.0;
    }

    v34 = v17 + v24 + v19 * 0.5;
    v35 = v20 - v34 - v21 + v22 * -0.5;
    v36 = CGRectGetWidth(*(v23 + 48));
    v37 = v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelSafeArea;
    *v37 = 0x403E000000000000;
    *(v37 + 8) = v34;
    *(v37 + 16) = v36 + -60.0;
    *(v37 + 24) = v35;
    return;
  }

  v2 = *(**(v0 + OBJC_IVAR____TtC7Measure11LabelRender__pointMove) + 144);

  v2(&v92, v3);

  if ((v93 & 1) == 0)
  {
    v25 = OBJC_IVAR____TtC7Measure11LabelRender_labelContainer;
    [*(v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelContainer) frame];
    CGRectGetWidth(v97);
    [*(v1 + v25) frame];
    CGRectGetWidth(v98);
    static CGPoint.+ infix(_:_:)();
    v27 = v26;
    v29 = v28;
    [*(v1 + v25) frame];
    CGRectGetWidth(v99);
    [*(v1 + v25) frame];
    CGRectGetWidth(v100);
    static CGSize.- infix(_:_:)();
    v30 = (v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelSafeArea);
    *v30 = v27;
    v30[1] = v29;
    v30[2] = v31;
    v30[3] = v32;
    return;
  }

  v4 = *(**(v0 + OBJC_IVAR____TtC7Measure11LabelRender__orientationState) + 144);

  v4(&v92, v5);

  if (v92 > 2)
  {
    if (v92 != 3)
    {
      if (v92 == 4)
      {
        if (qword_1004A0528 != -1)
        {
          swift_once();
        }

        v38 = *&qword_1004D5098;
        v39 = OBJC_IVAR____TtC7Measure11LabelRender_labelContainer;
        [*(v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelContainer) frame];
        v40 = CGRectGetWidth(v103);
        if (qword_1004A05C8 != -1)
        {
          swift_once();
        }

        v41 = *&qword_1004D5140;
        if (qword_1004A0850 != -1)
        {
          swift_once();
        }

        v42 = qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits;
        if ((*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80) & 1) == 0)
        {
          v43 = CGRectGetWidth(*(v42 + 48));
          [*(v1 + v39) frame];
          v44 = CGRectGetWidth(v104);
          if ((*(v42 + 80) & 1) == 0)
          {
            v10 = v43 + -47.0 - (v38 + v38) - v44;
            Height = CGRectGetHeight(*(v42 + 48));
            v14 = (v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelSafeArea);
            *v14 = v38 + 47.0 + v40 * 0.5;
            v14[1] = v41 + 30.0;
            v13 = Height + -60.0 - v41;
LABEL_46:
            v14[2] = v10;
            v14[3] = v13;
            return;
          }

          goto LABEL_95;
        }

        goto LABEL_91;
      }

      goto LABEL_56;
    }

    if (qword_1004A0850 != -1)
    {
      swift_once();
    }

    v67 = qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits;
    if (*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80))
    {
      goto LABEL_93;
    }

    v68 = CGRectGetWidth(*(v67 + 48));
    if (qword_1004A0528 == -1)
    {
LABEL_77:
      v76 = *&qword_1004D5098;
      [*(v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelContainer) frame];
      v77 = CGRectGetWidth(v111);
      if (*(v67 + 80))
      {
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
        return;
      }

      v78 = v68 + -47.0 - (v76 + v76) - v77;
      v79 = CGRectGetHeight(*(v67 + 48)) + -60.0;
      if (qword_1004A05C8 != -1)
      {
        swift_once();
      }

      v80 = v79 - *&qword_1004D5140;
      v81 = v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelSafeArea;
      __asm { FMOV            V1.2D, #30.0 }

      *v81 = _Q1;
      *(v81 + 16) = v78;
      *(v81 + 24) = v80;
      return;
    }

LABEL_84:
    swift_once();
    goto LABEL_77;
  }

  if (v92 == 1)
  {
    if (qword_1004A0528 != -1)
    {
      swift_once();
    }

    v66 = *&qword_1004D5098;
    v67 = OBJC_IVAR____TtC7Measure11LabelRender_labelContainer;
    [*(v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelContainer) frame];
    v68 = CGRectGetWidth(v109);
    if (qword_1004A0850 != -1)
    {
      swift_once();
    }

    v69 = qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits;
    if (*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80))
    {
      goto LABEL_92;
    }

    v70 = CGRectGetWidth(*(v69 + 48));
    if (qword_1004A05C8 == -1)
    {
      if ((*(v69 + 80) & 1) == 0)
      {
LABEL_72:
        v71 = v66 + 47.0 + v68 * 0.5;
        v72 = v70 + -60.0 - *&qword_1004D5140;
        v73 = CGRectGetHeight(*(v69 + 48)) + -47.0 - (v66 + v66);
        [*(v1 + v67) frame];
        v74 = CGRectGetWidth(v110);
        v75 = v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelSafeArea;
        *v75 = 0x403E000000000000;
        *(v75 + 8) = v71;
        *(v75 + 16) = v72;
        *(v75 + 24) = v73 - v74;
        return;
      }
    }

    else
    {
      v90 = v70;
      swift_once();
      v70 = v90;
      if ((*(v69 + 80) & 1) == 0)
      {
        goto LABEL_72;
      }
    }

    __break(1u);
    goto LABEL_84;
  }

  if (v92 == 2)
  {
    if (qword_1004A05C8 != -1)
    {
      swift_once();
    }

    v6 = *&qword_1004D5140;
    if (qword_1004A0850 != -1)
    {
      swift_once();
    }

    v7 = qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits;
    if ((*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80) & 1) == 0)
    {
      v8 = CGRectGetWidth(*(v7 + 48));
      if ((*(v7 + 80) & 1) == 0)
      {
        v9 = v6 + 30.0;
        v10 = v8 + -60.0 - v6;
        v11 = CGRectGetHeight(*(v7 + 48)) + -47.0;
        if (qword_1004A0528 != -1)
        {
          swift_once();
        }

        v12 = v11 - (*&qword_1004D5098 + *&qword_1004D5098);
        [*(v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelContainer) frame];
        v13 = v12 - CGRectGetWidth(v94);
        v14 = (v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelSafeArea);
        *v14 = v9;
        v14[1] = 30.0;
        goto LABEL_46;
      }

      goto LABEL_94;
    }

    goto LABEL_90;
  }

LABEL_56:
  v56 = v0 + OBJC_IVAR____TtC7Measure11LabelRender_labelSafeArea;
  v113.origin.x = 0.0;
  v113.origin.y = 0.0;
  v113.size.width = 0.0;
  v113.size.height = 0.0;
  if (CGRectEqualToRect(*(v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelSafeArea), v113))
  {
    if (qword_1004A0528 != -1)
    {
      swift_once();
    }

    v57 = *&qword_1004D5098;
    v58 = OBJC_IVAR____TtC7Measure11LabelRender_labelContainer;
    [*(v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelContainer) frame];
    v59 = CGRectGetWidth(v107);
    if (qword_1004A0850 != -1)
    {
      swift_once();
    }

    v60 = qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits;
    if (*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80))
    {
      goto LABEL_97;
    }

    v61 = CGRectGetWidth(*(v60 + 48));
    if (qword_1004A05C8 == -1)
    {
      if ((*(v60 + 80) & 1) == 0)
      {
LABEL_64:
        v62 = v57 + 47.0 + v59 * 0.5;
        v63 = v61 + -60.0 - *&qword_1004D5140;
        v64 = CGRectGetHeight(*(v60 + 48)) + -47.0 - (v57 + v57);
        [*(v1 + v58) frame];
        v65 = CGRectGetWidth(v108);
        *v56 = 0x403E000000000000;
        *(v56 + 8) = v62;
        *(v56 + 16) = v63;
        *(v56 + 24) = v64 - v65;
        return;
      }
    }

    else
    {
      v91 = v61;
      swift_once();
      v61 = v91;
      if ((*(v60 + 80) & 1) == 0)
      {
        goto LABEL_64;
      }
    }

    __break(1u);
    goto LABEL_87;
  }
}

void sub_1000B0DE4(__n128 *a1, __n128 a2)
{
  v12 = a2.n128_u64[0];
  v4 = vcvtq_f64_f32(a2.n128_u64[0]);
  y = v4.y;
  v6 = 0;
  if (!CGRectContainsPoint(*(v2 + OBJC_IVAR____TtC7Measure11LabelRender_labelSafeArea), v4))
  {
    sub_1000B0F0C(a1);
    if ((v7 & 1) == 0)
    {
      SIMD2<>.init(_:)();
      SIMD2<>.init(_:)();
      if (lineInRect(rectOrigin:rectSize:lineP1:lineP2:)())
      {
        clipLineToRect(rectOrigin:rectSize:lineP1:lineP2:)();
        if ((v8 & 1) == 0)
        {
          closestPointOnLine(lineP1:lineP2:point:)();
          v10 = vsub_f32(v9, v12);
          v11 = vneg_f32(0x7F0000007FLL);
          v6 = vbsl_s8(vceq_s32(vand_s8(v10, v11), v11), vand_s8(v10, vceqz_s32(vand_s8(v10, 0x7F0000007FLL))), v10);
        }
      }
    }
  }

  *(v2 + OBJC_IVAR____TtC7Measure11LabelRender_placingLabelDesiredOffset) = v6;
}

uint64_t sub_1000B0F0C(__n128 *a1)
{
  simd_float4x4.position.getter();
  simd_float4x4.position.getter();
  type metadata accessor for MeasureCamera();
  static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
  v24 = v2;
  static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
  v25 = v3;
  v4 = *(v1 + OBJC_IVAR____TtC7Measure11LabelRender_state);
  v6 = v4 == 7 || (v4 - 3) < 2;
  v7 = 30.0;
  if (!v6)
  {
    v7 = 0.0;
  }

  v23 = v7;
  simd_float4x4.forward.getter();
  simd_float4x4.position.getter();
  __asm { FMOV            V6.2S, #1.0 }

  v13 = vcgt_f32(vzip1_s32(*&vextq_s8(v25, v25, 8uLL), *&vextq_s8(v24, v24, 8uLL)), _D6);
  if (v13.i8[4])
  {
    if (v13.i8[0])
    {
      return 0;
    }

    static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
    v15 = v14;
    v16 = *v25.i8;
  }

  else
  {
    if (v13.i8[0])
    {
      static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
    }

    else
    {
      v16 = *v25.i8;
    }

    v15 = *v24.i8;
  }

  *v8.f32 = vsub_f32(v16, v15);
  v17 = vaddv_f32(vmul_f32(*v8.f32, *v8.f32));
  v18 = 1800.0;
  if (!v6)
  {
    v18 = 0.0;
  }

  if (v17 < v18)
  {
    return 0;
  }

  v20 = v8;
  v20.i32[2] = 0;
  v21 = vmulq_f32(v20, v20);
  *&v22 = v21.f32[2] + vaddv_f32(*v21.f32);
  *v21.f32 = vrsqrte_f32(v22);
  *v21.f32 = vmul_f32(*v21.f32, vrsqrts_f32(v22, vmul_f32(*v21.f32, *v21.f32)));
  return vadd_f32(v15, vmul_n_f32(vmul_n_f32(*v8.f32, vmul_f32(*v21.f32, vrsqrts_f32(v22, vmul_f32(*v21.f32, *v21.f32))).f32[0]), v23));
}

uint64_t sub_1000B124C(__n128 *a1, double a2)
{
  type metadata accessor for MeasureCamera();
  static MeasureCamera.unprojectPoint(_:viewProjectionInv:viewportSize:)();
  static MeasureCamera.unprojectPoint(_:viewProjectionInv:viewportSize:)();
  simd_float4x4.position.getter();
  simd_float4x4.position.getter();
  return lineIntersection(line1P1:line1P2:line2P1:line2P2:)();
}

void sub_1000B1378(__n128 *a1, int a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  v193 = a9;
  v194 = a10;
  v191 = a7;
  v192 = a8;
  v206 = a5;
  v207 = a6;
  v204 = a3;
  v205 = a4;
  v203 = type metadata accessor for Date();
  v13 = *(v203 - 8);
  __chkstk_darwin(v203);
  v195 = &v186 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v196 = &v186 - v16;
  v17 = sub_10000F974(&unk_1004A3D90, &unk_1003DDD80);
  __chkstk_darwin(v17 - 8);
  v19 = &v186 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v186 - v21;
  __chkstk_darwin(v23);
  v26 = &v186 - v25;
  v27 = v204;
  v28 = v205;
  v29 = v206;
  v30 = v207;
  if ((a2 & 1) == 0)
  {
    v27.n128_f64[0] = sub_1000AE818(v24, *(v10 + OBJC_IVAR____TtC7Measure11LabelRender_end1), *(v10 + OBJC_IVAR____TtC7Measure11LabelRender_end1 + 16), *(v10 + OBJC_IVAR____TtC7Measure11LabelRender_end1 + 32), *(v10 + OBJC_IVAR____TtC7Measure11LabelRender_end1 + 48), *(v10 + OBJC_IVAR____TtC7Measure11LabelRender_end2), *(v10 + OBJC_IVAR____TtC7Measure11LabelRender_end2 + 16), *(v10 + OBJC_IVAR____TtC7Measure11LabelRender_end2 + 32), *(v10 + OBJC_IVAR____TtC7Measure11LabelRender_end2 + 48), 0.5);
  }

  v209 = v30;
  v210 = v29;
  v211 = v27;
  v212 = v28;
  v31 = *(v10 + OBJC_IVAR____TtC7Measure11LabelRender_state);
  v118 = v31 > 5;
  v32 = (1 << v31) & 0x25;
  if (v118 || v32 == 0)
  {
    (*(v13 + 56))(v26, 1, 1, v203);
    v70 = OBJC_IVAR____TtC7Measure11LabelRender_occlusionResetTime;
    swift_beginAccess();
    sub_1000C1014(v26, v10 + v70);
    swift_endAccess();
    v71 = v10 + OBJC_IVAR____TtC7Measure11LabelRender_currentAnimation;
    *v71 = 0;
    *(v71 + 8) = 0;
    *(v71 + 16) = xmmword_1003DA910;
    *(v71 + 32) = 0;
    *(v10 + OBJC_IVAR____TtC7Measure11LabelRender_lastPositionsOnLine) = _swiftEmptyArrayStorage;

    return;
  }

  v189 = a2;
  v197 = v26;
  v34 = (v10 + OBJC_IVAR____TtC7Measure11LabelRender_end2);
  simd_float4x4.position.getter();
  v213 = v35;
  v36 = v10 + OBJC_IVAR____TtC7Measure11LabelRender_end1;
  simd_float4x4.position.getter();
  v208 = v37;
  v38 = v213.f32[2];
  v39 = v37.f32[2];
  v40 = v10;
  v41 = v10 + OBJC_IVAR____TtC7Measure11LabelRender_lastTransform;
  simd_float4x4.position.getter();
  v190 = v42;
  type metadata accessor for MeasureCamera();
  v43 = a1[10];
  v200 = a1[11];
  v201 = v43;
  v44 = a1[12];
  v198 = a1[13];
  v199 = v44;
  static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
  v202 = v45;
  static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
  v46 = vsub_f32(*v208.f32, *v213.f32);
  v48 = vsub_f32(*v202.f32, v47);
  v49 = sqrtf(((v39 - v38) * (v39 - v38)) + vaddv_f32(vmul_f32(v46, v46))) / sqrtf(vaddv_f32(vmul_f32(v48, v48)));
  v50 = v49 * 25.0;
  simd_float4x4.position.getter();
  v202 = v51;
  v201.n128_u64[0] = v36;
  simd_float4x4.position.getter();
  v53 = vsubq_f32(v202, v52);
  v54 = vmulq_f32(v53, v53);
  v55 = sqrtf(v54.f32[2] + vaddv_f32(*v54.f32));
  if (v55 <= (v49 * 25.0))
  {
    v64 = v197;
    (*(v13 + 56))(v197, 1, 1, v203);
    v65 = OBJC_IVAR____TtC7Measure11LabelRender_occlusionResetTime;
    swift_beginAccess();
    sub_1000C1014(v64, v40 + v65);
    swift_endAccess();
    v66 = v40 + OBJC_IVAR____TtC7Measure11LabelRender_currentAnimation;
    *v66 = 0;
    *(v66 + 8) = 0;
    *(v66 + 16) = xmmword_1003DA910;
    *(v66 + 32) = 0;
    *(v40 + OBJC_IVAR____TtC7Measure11LabelRender_lastPositionsOnLine) = _swiftEmptyArrayStorage;

    simd_float4x4.position.getter();
    v213 = v67;
    if (qword_1004A04D8 != -1)
    {
      swift_once();
    }

    PublishedValue.wrappedValue.getter();

    memcpy(v215, v214, 0x200uLL);
    v68 = sub_10008D4F0();
    sub_100013C4C(v215);
    if (v68)
    {
      MeasureCore.shared.unsafeMutableAddressor();

      v69 = MeasureCore.isOccluded(_:in:withTolerance:)();

      if (v69)
      {
      }

      else
      {

        v78 = MeasureCore.isOccluded(_:in:withTolerance:)();

        v79 = 1.0;
        if ((v78 & 1) == 0)
        {
LABEL_21:
          *(v40 + OBJC_IVAR____TtC7Measure11LabelRender_desiredAlpha) = v79;
          return;
        }
      }
    }

    v79 = 0.5;
    goto LABEL_21;
  }

  v188 = v34;
  v200.n128_u64[0] = v41;
  v56 = *(v10 + OBJC_IVAR____TtC7Measure11LabelRender_currentProperties + 40);
  v199.n128_u64[0] = v19;
  v57 = OBJC_IVAR____TtC7Measure11LabelRender_occlusionResetTime;
  swift_beginAccess();
  sub_10006C92C(v10 + v57, v22, &unk_1004A3D90, &unk_1003DDD80);
  v58 = v203;
  v59 = *(v13 + 48);
  v198.n128_u32[0] = v59(v22, 1, v203);
  sub_100018F04(v22, &unk_1004A3D90, &unk_1003DDD80);
  v202.i64[0] = v10;
  v187 = v57;
  v60 = v10 + v57;
  v61 = v199.n128_u64[0];
  sub_10006C92C(v60, v199.n128_i64[0], &unk_1004A3D90, &unk_1003DDD80);
  if (v59(v61, 1, v58) == 1)
  {
    sub_100018F04(v61, &unk_1004A3D90, &unk_1003DDD80);
    v62 = v200.n128_u64[0];
    v63 = v202.i64[0];
    if (v198.n128_u32[0] != 1)
    {
      goto LABEL_61;
    }
  }

  else
  {
    v72 = v196;
    (*(v13 + 32))(v196, v61, v58);
    v73 = v195;
    Date.init()();
    Date.distance(to:)();
    v75 = v74;
    v76 = *(v13 + 8);
    v76(v73, v58);
    v77 = fabs(v75);
    v62 = v200.n128_u64[0];
    if (v77 <= 0.65)
    {
      v63 = v202.i64[0];
      if (v77 >= 0.585 && v77 <= 0.65)
      {
        v80 = v56;
        sub_1000C127C(v189 & 1, v204, v205, v206, v207, v191, v192, v193, v194, v50, v49 * v80);
        v82 = v81;
        v83 = OBJC_IVAR____TtC7Measure11LabelRender_lastPositionsOnLine;
        v84 = *(v63 + OBJC_IVAR____TtC7Measure11LabelRender_lastPositionsOnLine);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v86 = v83;
        *(v63 + v83) = v84;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v182 = sub_100067544(0, *(v84 + 16) + 1, 1, v84);
          v86 = v83;
          v84 = v182;
          *(v63 + v83) = v182;
        }

        v88 = *(v84 + 16);
        v87 = *(v84 + 24);
        v89 = v88 + 1;
        if (v88 >= v87 >> 1)
        {
          v207.n128_u64[0] = v88 + 1;
          v183 = v84;
          v184 = v86;
          v185 = sub_100067544((v87 > 1), v88 + 1, 1, v183);
          v89 = v207.n128_u64[0];
          v86 = v184;
          v84 = v185;
        }

        *(v84 + 16) = v89;
        *(v84 + 4 * v88 + 32) = v82;
        *(v63 + v86) = v84;
      }

      v76(v72, v58);
      if (v198.n128_u32[0] != 1)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v76(v72, v58);
      v63 = v202.i64[0];
    }
  }

  v90 = v197;
  Date.init()();
  (*(v13 + 56))(v90, 0, 1, v58);
  v91 = v187;
  swift_beginAccess();
  sub_1000C1014(v90, v63 + v91);
  swift_endAccess();
  v92 = sub_1000B5ACC();
  if ((v92 & 0x100000000) != 0)
  {
    v106 = *(v63 + OBJC_IVAR____TtC7Measure11LabelRender_center + 16);
    v107 = *(v63 + OBJC_IVAR____TtC7Measure11LabelRender_center + 32);
    v108 = *(v63 + OBJC_IVAR____TtC7Measure11LabelRender_center + 48);
    *v62 = *(v63 + OBJC_IVAR____TtC7Measure11LabelRender_center);
    v62[1] = v106;
    v62[2] = v107;
    v62[3] = v108;
LABEL_60:
    *(v63 + OBJC_IVAR____TtC7Measure11LabelRender_lastPositionsOnLine) = _swiftEmptyArrayStorage;

LABEL_61:
    v125 = *v62;
    v126 = v62[1];
    v127 = v62[2];
    v128 = v63;
    v129 = v63 + OBJC_IVAR____TtC7Measure11LabelRender_currentAnimation;
    v130 = *(v63 + OBJC_IVAR____TtC7Measure11LabelRender_currentAnimation + 16);
    if (v130 == 4)
    {
      return;
    }

    v209 = v62[3];
    v210 = v127;
    v211 = v125;
    v212 = v126;
    v131 = *v129;
    v132 = *(v129 + 8);
    v133 = *(v129 + 28);
    v134 = *(v129 + 32);
    v135 = *(&v130 + 1);
    v136 = *(v129 + 24);
    v137 = OBJC_IVAR____TtC7Measure11LabelRender_labelNode;
    v138 = [*(v128 + OBJC_IVAR____TtC7Measure11LabelRender_labelNode) alpha];
    if (v130 <= 1u)
    {
      if (v130)
      {
        v141 = (((v136 - *(&v130 + 1)) * (1.0 - powf(1.0 - (v131 / v132), 3.0))) + *(&v130 + 1));
        v157 = v202.i64[0];
LABEL_77:
        if (([*(v157 + v137) hasActions] & 1) == 0)
        {
          *(v157 + OBJC_IVAR____TtC7Measure11LabelRender_desiredAlpha) = v141;
        }

        if (v131 >= v132)
        {
          *v129 = 0;
          *(v129 + 8) = 0;
          *(v129 + 16) = xmmword_1003DA910;
          *(v129 + 32) = 0;
        }

        else if (*(v129 + 16) != 4)
        {
          *v129 = v131 + 1;
        }

        return;
      }

      v141 = v139;
      v142 = ((1.0 - ((1.0 - (v131 / v132)) * (1.0 - (v131 / v132)))) * (v134 - v133)) + v133;
      v143 = *v201.n128_u64[0];
      v144 = *(v201.n128_u64[0] + 16);
      v145 = *(v201.n128_u64[0] + 32);
      v146 = *(v201.n128_u64[0] + 48);
      v147 = *v188;
      v148 = v188[1];
      v149 = v188[2];
      v150 = v188[3];
LABEL_76:
      v157 = v202.i64[0];
      *v170.i64 = sub_1000AE818(v138, v143, v144, v145, v146, v147, v148, v149, v150, v142);
      v211 = v170;
      v212 = v171;
      v209 = v173;
      v210 = v172;
      goto LABEL_77;
    }

    v151 = v188;
    if (v130 != 2)
    {
      v169 = 1.0 - ((1.0 - (v131 / v132)) * (1.0 - (v131 / v132)));
      v141 = ((v169 * (v136 - *(&v130 + 1))) + *(&v130 + 1));
      v142 = (v169 * (v134 - v133)) + v133;
      v143 = *v201.n128_u64[0];
      v144 = *(v201.n128_u64[0] + 16);
      v145 = *(v201.n128_u64[0] + 32);
      v146 = *(v201.n128_u64[0] + 48);
      v147 = *v188;
      v148 = v188[1];
      v149 = v188[2];
      v150 = v188[3];
      goto LABEL_76;
    }

    if ((v132 + 1) >= 3)
    {
      if (v131 != 0x8000000000000000 || (v132 + 3) >= 2)
      {
        v140.f32[0] = (v132 / 2);
        v213 = v140;
        v152 = 1.0 - ((v131 % (v132 / 2)) / v140.f32[0]);
        if (v131 == v132)
        {
          v152 = 0.0;
        }

        v153 = powf(v152, 3.0);
        v154.f32[0] = v131;
        v208 = v154;
        v209 = vdupq_lane_s32(*&vcgtq_f32(v213, v154), 0);
        v155 = 1.0 - v153;
        v156 = v201.n128_u64[0];
        v157 = v202.i64[0];
        *v159.i64 = sub_1000AE818(v158, *v201.n128_u64[0], *(v201.n128_u64[0] + 16), *(v201.n128_u64[0] + 32), *(v201.n128_u64[0] + 48), *v151, v151[1], v151[2], v151[3], ((1.0 - ((1.0 - (v131 / v132)) * (1.0 - (v131 / v132)))) * (v134 - v133)) + v133);
        v212 = v159;
        v210 = v160;
        v206 = v162;
        v207 = v161;
        *v164.i64 = sub_1000AE818(v163, *v156, v156[1], v156[2], v156[3], *v151, v151[1], v151[2], v151[3], v133);
        v211 = vbslq_s8(v209, v164, v212);
        v212 = vbslq_s8(v209, v165, v210);
        v210 = vbslq_s8(v209, v166, v207);
        v209 = vbslq_s8(v209, v167, v206);
        v168 = v155 * v136;
        if (v208.f32[0] < v213.f32[0])
        {
          v168 = (1.0 - v155) * v135;
        }

        v141 = v168;
        goto LABEL_77;
      }

      goto LABEL_89;
    }

    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v93 = vsubq_f32(v213, v208);
  v93.f32[2] = v38 - v39;
  v94 = vmulq_f32(v93, v93);
  *&v95 = v94.f32[2] + vaddv_f32(*v94.f32);
  *v94.f32 = vrsqrte_f32(v95);
  *v94.f32 = vmul_f32(*v94.f32, vrsqrts_f32(v95, vmul_f32(*v94.f32, *v94.f32)));
  v96 = vmulq_n_f32(v93, vmul_f32(*v94.f32, vrsqrts_f32(v95, vmul_f32(*v94.f32, *v94.f32))).f32[0]);
  v97 = vmulq_f32(v96, vsubq_f32(v190, v208));
  v98 = vaddv_f32(*v97.f32);
  v99 = v97.f32[2];
  v100 = *&v92;
  if (*&v92 == -1.0)
  {
    v213 = v96;
    simd_float4x4.position.getter();
    v208 = v101;
    simd_float4x4.position.getter();
    v103 = vmulq_f32(v213, vsubq_f32(v208, v102));
    v104 = v103.f32[2] + vaddv_f32(*v103.f32);
    v105 = 0.5;
  }

  else
  {
    v105 = 1.0;
    v104 = *&v92;
  }

  v109 = v188;
  v110 = v99 + v98;
  v111 = OBJC_IVAR____TtC7Measure11LabelRender_labelNode;
  v63 = v202.i64[0];
  v112 = [*(v202.i64[0] + OBJC_IVAR____TtC7Measure11LabelRender_labelNode) alpha];
  v114 = v113;
  *(v63 + OBJC_IVAR____TtC7Measure11LabelRender_isOccluded) = v100 == -1.0;
  if (vabds_f32(v105, v114) < 0.01)
  {
    *(v63 + OBJC_IVAR____TtC7Measure11LabelRender_desiredAlpha) = v105;
    v114 = v105;
  }

  v115 = vabds_f32(v104, v110);
  if ((~LODWORD(v115) & 0x7F800000) != 0 || (LODWORD(v115) & 0x7FFFFF) == 0)
  {
    if ((v104 - v110) >= 0.0 && (v104 - v110) <= 0.0 && vabds_f32(v114, v105) <= 0.00000011921)
    {
      v174 = v63 + OBJC_IVAR____TtC7Measure11LabelRender_currentAnimation;
      if (*(v63 + OBJC_IVAR____TtC7Measure11LabelRender_currentAnimation + 16) != 4)
      {
        v175 = *(v174 + 32);
        v176 = v202.i64[0];
        *(v202.i64[0] + OBJC_IVAR____TtC7Measure11LabelRender_desiredAlpha) = *(v174 + 24);
        v177 = [*(v176 + v111) setAlpha:?];
        *v178.i64 = sub_1000AE818(v177, *v201.n128_u64[0], *(v201.n128_u64[0] + 16), *(v201.n128_u64[0] + 32), *(v201.n128_u64[0] + 48), *v109, v109[1], v109[2], v109[3], v175);
        *v62 = v178;
        v62[1] = v179;
        v62[2] = v180;
        v62[3] = v181;
      }

      *v174 = 0;
      *(v174 + 8) = 0;
      *(v174 + 16) = xmmword_1003DA910;
      *(v174 + 32) = 0;
      v63 = v202.i64[0];
    }

    else
    {
      if (v115 > 0.00000011921)
      {
        v117 = v50 * 6.0;
        if ((v50 * 6.0) < 0.00000011921)
        {
          goto LABEL_88;
        }

        v118 = v115 < 0.00000011921 || v115 > v117;
        if (v118)
        {
          if (v117 > v55)
          {
LABEL_90:
            __break(1u);
            return;
          }

          v123 = 2 * (v115 <= v55);
          if (v117 > v115)
          {
            v123 = 0;
          }
        }

        else
        {
          v123 = 3;
          if (vabds_f32(v114, v105) <= 0.00000011921)
          {
            v123 = 0;
          }
        }
      }

      else
      {
        *v119.i64 = sub_1000AE818(v112, *v201.n128_u64[0], *(v201.n128_u64[0] + 16), *(v201.n128_u64[0] + 32), *(v201.n128_u64[0] + 48), *v109, v109[1], v109[2], v109[3], v110 / v55);
        *v62 = v119;
        v62[1] = v120;
        v62[2] = v121;
        v62[3] = v122;
        v123 = 1;
      }

      v124 = v63 + OBJC_IVAR____TtC7Measure11LabelRender_currentAnimation;
      *v124 = xmmword_1003DA930;
      *(v124 + 16) = v123 | (LODWORD(v114) << 32);
      *(v124 + 24) = LODWORD(v105) | (COERCE_UNSIGNED_INT(v110 / v55) << 32);
      *(v124 + 32) = v104 / v55;
    }

    goto LABEL_60;
  }
}

BOOL sub_1000B2228()
{
  if (*(v0 + OBJC_IVAR____TtC7Measure11LabelRender_selectionState))
  {
    return 1;
  }

  v1 = *(v0 + OBJC_IVAR____TtC7Measure11LabelRender_state);
  v2 = v1 == 1 || v1 == 6;
  if (v2 || (*(v0 + OBJC_IVAR____TtC7Measure11LabelRender_hideForMovePoint) & 1) != 0)
  {
    return 1;
  }

  else
  {
    return *(v0 + OBJC_IVAR____TtC7Measure11LabelRender_capturing) == 1 && !MeasureObjectState.isCapturable()();
  }
}

void sub_1000B22A4(float a1)
{
  v3 = *(**(v1 + OBJC_IVAR____TtC7Measure11LabelRender__orientationState) + 144);

  v3(&v6, v4);

  if (v6 > 2)
  {
    if ((v6 - 5) < 2)
    {
      return;
    }

    if (v6 == 4)
    {
      v5 = -*Float.piDiv2.unsafeMutableAddressor();
    }

    else
    {
      if (v6 != 3)
      {
        goto LABEL_17;
      }

      v5 = *Float.piDiv2.unsafeMutableAddressor();
    }

    *(v1 + OBJC_IVAR____TtC7Measure11LabelRender_checkAngleOffset) = v5;
    return;
  }

  if (!v6)
  {
    return;
  }

  if (v6 == 1)
  {
    *(v1 + OBJC_IVAR____TtC7Measure11LabelRender_checkAngleOffset) = 0;
    return;
  }

  if (v6 != 2)
  {
LABEL_17:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  sub_100018630(0, &qword_1004A1930, UIDevice_ptr);
  if (static UIDevice.isIPad()())
  {
    if (a1 >= 0.0)
    {
      *(v1 + OBJC_IVAR____TtC7Measure11LabelRender_checkAngleOffset) = -1068953638;
    }

    else
    {
      *(v1 + OBJC_IVAR____TtC7Measure11LabelRender_checkAngleOffset) = 1078530010;
    }
  }
}

id sub_1000B2428(float a1)
{
  [*(v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelNode) setZPosition:*(v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelZOffset) + (a1 * -10.0)];
  [*(v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelContainer) setZPosition:0.0001];
  [*(v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelText) setZPosition:0.0002];
  v2 = *(v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelChevron);

  return [v2 setZPosition:0.0001];
}

void sub_1000B24E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC7Measure11LabelRender_transitionLabel);
  if (v2)
  {
    v4 = v2;
    sub_10009C6D4(a2);
  }
}

id sub_1000B2548()
{
  v1 = OBJC_IVAR____TtC7Measure11LabelRender_labelNode;
  [*(v0 + OBJC_IVAR____TtC7Measure11LabelRender_labelNode) removeAllActions];
  [*(v0 + v1) setAlpha:1.0];
  v2 = OBJC_IVAR____TtC7Measure11LabelRender_labelLock;
  swift_beginAccess();
  os_unfair_lock_lock((v0 + v2));
  *(v0 + OBJC_IVAR____TtC7Measure11LabelRender__visibleForCapture) = 1;
  os_unfair_lock_unlock((v0 + v2));
  swift_endAccess();
  result = [objc_opt_self() jasperAvailable];
  if (result)
  {
    v4 = [*(v0 + v1) isHidden];
    *(v0 + OBJC_IVAR____TtC7Measure11LabelRender_wasHidden) = v4;
    return [*(v0 + v1) setHidden:0];
  }

  return result;
}

void sub_1000B2630()
{
  if ([objc_opt_self() jasperAvailable])
  {
    [*(v0 + OBJC_IVAR____TtC7Measure11LabelRender_labelNode) setHidden:*(v0 + OBJC_IVAR____TtC7Measure11LabelRender_wasHidden)];
LABEL_4:
    v1 = *(v0 + OBJC_IVAR____TtC7Measure11LabelRender_desiredAlpha);
    goto LABEL_5;
  }

  v1 = 0.0;
  if ((*(v0 + OBJC_IVAR____TtC7Measure11LabelRender_inBounds) & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_5:
  v2 = OBJC_IVAR____TtC7Measure11LabelRender_labelLock;
  swift_beginAccess();
  os_unfair_lock_lock((v0 + v2));
  *(v0 + OBJC_IVAR____TtC7Measure11LabelRender__visibleForCapture) = 0;
  os_unfair_lock_unlock((v0 + v2));
  swift_endAccess();
  v3 = [objc_opt_self() fadeAlphaTo:v1 duration:0.1];
  [*(v0 + OBJC_IVAR____TtC7Measure11LabelRender_labelNode) runAction:v3];
}

uint64_t type metadata accessor for LabelRender(uint64_t a1)
{
  result = qword_1004A7200;
  if (!qword_1004A7200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000B2A1C(uint64_t a1)
{
  sub_100065060(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_1000B2C18()
{
  sub_1000B567C();
  *(v0 + OBJC_IVAR____TtC7Measure11LabelRender_desiredAlpha) = 0x3FF0000000000000;
  v1 = *(v0 + OBJC_IVAR____TtC7Measure11LabelRender_state);

  return sub_1000AB428(v1);
}

double sub_1000B2C60()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Measure11LabelRender_selectionState;
  if (v1[OBJC_IVAR____TtC7Measure11LabelRender_selectionState] != 2)
  {
    return result;
  }

  if ([objc_opt_self() jasperAvailable])
  {
    v3 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_transitionLabel];
    if (v3)
    {
      v4 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_currentProperties + 48];
      v16 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_currentProperties + 32];
      v17 = v4;
      v18 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_currentProperties + 64];
      v5 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_currentProperties + 16];
      v14 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_currentProperties];
      v15 = v5;
      v6 = swift_allocObject();
      *(v6 + 16) = v1;
      v7 = v3;
      sub_10009F898(&v14, v13);
      v8 = v1;
      sub_10009D0C4(&v14, sub_1000C1218, v6);

LABEL_7:
      sub_10009F9AC(&v14);
    }
  }

  else
  {
    v1[v2] = 3;
    v9 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_transitionLabel];
    if (v9)
    {
      v10 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_currentProperties + 48];
      v16 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_currentProperties + 32];
      v17 = v10;
      v18 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_currentProperties + 64];
      v11 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_currentProperties + 16];
      v14 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_currentProperties];
      v15 = v11;
      v7 = v9;
      sub_10009F898(&v14, v13);
      sub_10009D0C4(&v14, 0, 0);
      goto LABEL_7;
    }
  }

  if (qword_1004A02A8 != -1)
  {
    swift_once();
  }

  v13[0]._countAndFlagsBits = 0;
  v13[0]._object = 0xE000000000000000;
  _StringGuts.grow(_:)(31);

  v13[0]._countAndFlagsBits = 0xD00000000000001DLL;
  v13[0]._object = 0x8000000100405360;
  String.append(_:)(*&v1[OBJC_IVAR____TtC7Measure11LabelRender_measurementID]);
  Log.default(_:isPrivate:)(v13[0], 0);

  return result;
}

double sub_1000B2E88()
{
  if (qword_1004A02A8 != -1)
  {
    swift_once();
  }

  _StringGuts.grow(_:)(39);

  String.append(_:)(*(v0 + OBJC_IVAR____TtC7Measure11LabelRender_measurementID));
  v1._countAndFlagsBits = 0xD000000000000025;
  v1._object = 0x8000000100405330;
  Log.default(_:isPrivate:)(v1, 0);

  return result;
}

void sub_1000B2F84()
{
  v1 = v0;
  v2 = *(**&v0[OBJC_IVAR____TtC7Measure11LabelRender__appState] + 144);

  v2(v65, v3);

  if ((BYTE3(v65[0]) & 1) == 0 && !v0[OBJC_IVAR____TtC7Measure11LabelRender_selectionState])
  {
    if ([objc_opt_self() jasperAvailable])
    {
      v4 = *(**&v0[OBJC_IVAR____TtC7Measure11LabelRender__pillToPlatterAnimationState] + 144);

      v4(v65, v5);

      v6 = *(*&v65[0] + 16);

      if (v6)
      {
        return;
      }

      sub_100018630(0, &qword_1004A1930, UIDevice_ptr);
      v7 = static UIDevice.isIPhone()();
      v8 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_mainView];
      if ((v7 & 1) == 0)
      {
        v43 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_activityPresentingViewController];
        if (v43)
        {
          if (*&v1[OBJC_IVAR____TtC7Measure11LabelRender_historyPressedPublisher])
          {
            v61 = v1[OBJC_IVAR____TtC7Measure11LabelRender_chevronOnLeft];
            v63 = v1[OBJC_IVAR____TtC7Measure11LabelRender_labelType];
            v44 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_measurementID + 8];
            v59 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_measurementID];
            *&v65[0] = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_historyPressedPublisher];
            v45 = v8;

            v46 = v43;
            sub_10000F974(&unk_1004A7520, &unk_1003DF5D0);
            sub_10001D47C(&qword_1004A73C0, &unk_1004A7520, &unk_1003DF5D0, &protocol conformance descriptor for AnyPublisher<A, B>);
            v47 = Publisher.eraseToAnyPublisher()();
            v48 = objc_allocWithZone(type metadata accessor for LabelDetailsPlatterWrapper(0));
            v49 = v45;
            v27 = v46;
            v50 = sub_1000C0174(v49, v63, v1, v61, v59, v44, v27, v48);
            *&v65[0] = v47;
            swift_allocObject();
            swift_unknownObjectWeakInit();
            v29 = v50;
            v51 = Publisher<>.sink(receiveValue:)();

            *&v29[qword_1004A65B0] = v51;

            goto LABEL_14;
          }

LABEL_20:
          __break(1u);
          return;
        }

        goto LABEL_18;
      }

      v9 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_sceneView];
      v10 = v8;
      [v9 bounds];
      v15 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_activityPresentingViewController];
      if (v15)
      {
        v62 = v8;
        if (*&v1[OBJC_IVAR____TtC7Measure11LabelRender_historyPressedPublisher])
        {
          v16 = v11;
          v17 = v12;
          v18 = v13;
          v19 = v14;
          v60 = v1[OBJC_IVAR____TtC7Measure11LabelRender_labelType];
          v58 = v1[OBJC_IVAR____TtC7Measure11LabelRender_chevronOnLeft];
          v20 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_measurementID];
          v21 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_measurementID + 8];
          *&v65[0] = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_historyPressedPublisher];

          v22 = v15;
          sub_10000F974(&unk_1004A7520, &unk_1003DF5D0);
          sub_10001D47C(&qword_1004A73C0, &unk_1004A7520, &unk_1003DF5D0, &protocol conformance descriptor for AnyPublisher<A, B>);
          v23 = Publisher.eraseToAnyPublisher()();
          v24 = objc_allocWithZone(type metadata accessor for LabelDetailsPlatterWrapper(0));
          v25 = v1;
          v26 = v10;
          v27 = v22;
          v28 = sub_1000C0174(v26, v60, v25, v58, v20, v21, v27, v24);
          *&v65[0] = v23;
          swift_allocObject();
          swift_unknownObjectWeakInit();
          v29 = v28;
          v30 = Publisher<>.sink(receiveValue:)();

          *&v29[qword_1004A65B0] = v30;

          v31 = &v29[qword_1004A6658];
          *v31 = v16;
          *(v31 + 1) = v17;
          *(v31 + 2) = v18;
          *(v31 + 3) = v19;
          v31[32] = 0;
          v8 = v62;
LABEL_14:
          sub_10009A984();

          v52 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_transitionLabel];
          *&v1[OBJC_IVAR____TtC7Measure11LabelRender_transitionLabel] = v29;
          v53 = v29;

          v54 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_currentProperties + 48];
          v65[2] = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_currentProperties + 32];
          v65[3] = v54;
          v66 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_currentProperties + 64];
          v55 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_currentProperties + 16];
          v65[0] = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_currentProperties];
          v65[1] = v55;
          v56 = swift_allocObject();
          *(v56 + 16) = v1;
          v57 = v1;
          sub_10009F898(v65, v64);
          sub_10009BD94(v65, v1, sub_1000C19F0, v56);

          sub_10009F9AC(v65);

          return;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v32 = *&v0[OBJC_IVAR____TtC7Measure11LabelRender_activityPresentingViewController];
      if (v32)
      {
        v34 = *&v0[OBJC_IVAR____TtC7Measure11LabelRender_measurementID];
        v33 = *&v0[OBJC_IVAR____TtC7Measure11LabelRender_measurementID + 8];
        v35 = v1[OBJC_IVAR____TtC7Measure11LabelRender_chevronOnLeft];
        v36 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_mainView];
        v37 = v1[OBJC_IVAR____TtC7Measure11LabelRender_labelType];
        v38 = objc_allocWithZone(type metadata accessor for LabelDetailsPlatterWrapper(0));
        v39 = v1;
        v40 = v36;

        v41 = sub_1000C0174(v40, v37, v39, v35, v34, v33, v32, v38);
        v42 = *&v39[OBJC_IVAR____TtC7Measure11LabelRender_transitionLabel];
        *&v39[OBJC_IVAR____TtC7Measure11LabelRender_transitionLabel] = v41;

        sub_1000B5B98(v39);
        return;
      }

      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }
}

void sub_1000B35D0()
{
  v1 = v0;
  v2 = *(**(v0 + OBJC_IVAR____TtC7Measure11LabelRender__unitState) + 144);

  v2(v3);

  v4 = sub_1000983B8();
  v5 = v4;
  v6 = v4 == 0;
  if (!*(v0 + OBJC_IVAR____TtC7Measure11LabelRender_labelType))
  {
    sub_10010DE20(v4, 0, 0, &v253, *(v0 + OBJC_IVAR____TtC7Measure11LabelRender_measurement));
    if (v5)
    {
      if (v5 != 1)
      {
        goto LABEL_107;
      }

      sub_1001117E8(0, &v255);
      v23 = v257;
      v24 = v258;
      v25 = v256;
      v26 = v255;
      sub_10011062C(0, 0, v259);
    }

    else
    {
      sub_10011062C(1, 0, &v255);
      v23 = v257;
      v24 = v258;
      v25 = v256;
      v26 = v255;
      sub_1001117E8(0, v259);
    }

    v27 = v259[1];
    v28 = *(&v254 + 1);
    if (!*(&v254 + 1))
    {

      v250 = v253;
      sub_1000C1108(&v250);
      return;
    }

    if (v24)
    {
      if (v260)
      {
        v29 = *(v1 + OBJC_IVAR____TtC7Measure11LabelRender_transitionLabel);
        if (!v29)
        {

          v250 = v253;
          sub_1000C1108(&v250);
LABEL_91:

          return;
        }

        if (!*&v29[qword_1004A65D0] || (v222 = v259[0], v224 = *(&v253 + 1), v30 = v254, v219 = v253, v31 = *&v29[qword_1004A65D0], swift_getObjectType(), !swift_conformsToProtocol2()))
        {

          goto LABEL_36;
        }

        v32 = v29;
        v33 = v31;
        v34 = v30;
        v35 = v33;
        sub_100092D10(v219, v224, v34, v28, v26, v25, v23, v24, v222, v27);

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
      }

      else
      {

        v250 = v253;
        sub_1000C1108(&v250);
      }
    }

    else
    {

      v250 = v253;
      sub_1000C1108(&v250);
    }

    swift_bridgeObjectRelease_n();
    return;
  }

  if (*(v0 + OBJC_IVAR____TtC7Measure11LabelRender_labelType) != 1)
  {
    return;
  }

  v7 = (v0 + OBJC_IVAR____TtC7Measure11LabelRender_rectangleLabelData);
  if (*(v0 + OBJC_IVAR____TtC7Measure11LabelRender_rectangleLabelData + 21))
  {
    __break(1u);
    goto LABEL_105;
  }

  if ((*v7 & 0x100000000) != 0)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  if ((v7[1] & 0x100000000) != 0)
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  if (!v4)
  {
    sub_10011062C(0, 0, &v226);
    v8 = v227;
    v9 = v229;
    if (v231 == 1)
    {
      goto LABEL_35;
    }

    v10 = v230;
    v216 = v228;
    v11 = v226;
    v12 = sub_100111E38(2, 0, v230);
    sub_1001117E8(0, &v232);
    v13 = v235;
    v14 = v236;
    v15 = v237;
    v16 = v233;
    v217 = v232;
    v218 = v234;
    sub_10011062C(0, 0, &v238);
    v223 = v239;
    if ((v243 & 1) == 0)
    {
      v215 = v16;
      v220 = v241;
      v17 = v242;
      v212 = v240;
      v213 = v238;
      v18 = 2;
      v19 = sub_100111E38(2, 0, v242);
      sub_1001117E8(0, &v244);
      v214 = v245;
      v221 = v247;
      if ((v15 & 1) == 0)
      {
        v20 = v246;
        v21 = v248;
        v22 = 1;
        if ((v249 & 1) == 0)
        {
LABEL_40:
          v208 = v20;
          v38 = v244;
          sub_100112000(v5, 1, 0, 0, &v250, v12 * v19);
          v39 = sub_1001135A4(v22, 0, v21 * v14);
          sub_100112000(v6, 1, 0, 0, &v253, v39);
          sub_100111E38(v18, 0, sqrtf((v17 * v17) + (v10 * v10)));
          sub_100111E38(v22, 0, sqrtf((v21 * v21) + (v14 * v14)));
          v207 = v38;
          if (v5)
          {
            sub_1001117E8(0, &v255);
            v206 = v257;
            v40 = v258;
            v211 = v256;
            v209 = v255;
            sub_10011062C(0, 0, v259);
          }

          else
          {
            sub_10011062C(0, 0, &v255);
            v206 = v257;
            v40 = v258;
            v211 = v256;
            v209 = v255;
            sub_1001117E8(0, v259);
          }

          if (v252)
          {
            v210 = v260;
            v41 = v259[2];
            v263[0] = v254;
            if (*(&v254 + 1))
            {
              if (!v9)
              {

                sub_10006C92C(v263, &v262, &qword_1004A72C0, &qword_1003DAD40);

                v262 = v253;
                sub_1000C1108(&v262);
                sub_100018F04(v263, &qword_1004A72C0, &qword_1003DAD40);
                v261 = v250;
                sub_1000C1108(&v261);

                sub_100018F04(v263, &qword_1004A72C0, &qword_1003DAD40);
                goto LABEL_91;
              }

              if (v13)
              {
                if (v220)
                {
                  if (v221)
                  {
                    if (v40)
                    {
                      if (v260)
                      {
                        v42 = *(v1 + OBJC_IVAR____TtC7Measure11LabelRender_transitionLabel);
                        if (!v42)
                        {

                          v262 = v253;
                          sub_1000C1108(&v262);
                          sub_100018F04(v263, &qword_1004A72C0, &qword_1003DAD40);
                          v261 = v250;
                          sub_1000C1108(&v261);

                          goto LABEL_91;
                        }

                        v201 = v251;
                        v202 = *(&v254 + 1);
                        v43 = *&v263[0];
                        v261 = v253;
                        v262 = v250;
                        v44 = *&v42[qword_1004A65D0];
                        if (!v44 || (v45 = v252, swift_getObjectType(), !swift_conformsToProtocol2()))
                        {

                          sub_10006C92C(v263, v225, &qword_1004A72C0, &qword_1003DAD40);

                          sub_1000C1108(&v261);
                          sub_100018F04(v263, &qword_1004A72C0, &qword_1003DAD40);
                          sub_1000C1108(&v262);

                          sub_100018F04(v263, &qword_1004A72C0, &qword_1003DAD40);

                          goto LABEL_91;
                        }

                        v196 = v41;
                        v197 = v43;
                        *&v44[qword_1004AE700] = v250;
                        v199 = v45;

                        sub_10006C92C(v263, v225, &qword_1004A72C0, &qword_1003DAD40);

                        v200 = v13;

                        sub_100019324(&v262, v225);
                        v46 = v44;
                        v195 = v42;

                        v47 = &v46[qword_1004AE708];
                        *v47 = v11;
                        *(v47 + 1) = v8;

                        v48 = &v46[qword_1004AE710];
                        *v48 = v213;
                        *(v48 + 1) = v223;

                        v49 = &v46[qword_1004AE718];
                        *v49 = v209;
                        *(v49 + 1) = v211;

                        Strong = swift_unknownObjectWeakLoadStrong();
                        if (Strong)
                        {
                          v51 = Strong;
                          sub_10000F974(&unk_1004AF710, &qword_1003D7CA0);
                          v52 = swift_allocObject();
                          *(v52 + 16) = xmmword_1003D5730;
                          *(v52 + 56) = &type metadata for String;
                          v53 = sub_1000192D0();
                          *(v52 + 32) = v11;
                          *(v52 + 40) = v8;
                          *(v52 + 96) = &type metadata for String;
                          *(v52 + 104) = v53;
                          v205 = v53;
                          *(v52 + 64) = v53;
                          *(v52 + 72) = v213;
                          *(v52 + 80) = v223;

                          String.init(format:_:)();
                          v54 = String._bridgeToObjectiveC()();

                          [v51 setText:v54];

                          v55 = swift_unknownObjectWeakLoadStrong();
                          if (v55)
                          {
                            v56 = v55;
                            v203 = objc_opt_self();
                            v57 = [v203 systemFontOfSize:60.0 weight:UIFontWeightRegular];
                            [v56 setFont:v57];

                            v198 = swift_unknownObjectWeakLoadStrong();
                            if (v198)
                            {
                              v204 = objc_opt_self();
                              v58 = [v204 mainBundle];
                              v265._object = 0x8000000100405270;
                              v59._countAndFlagsBits = 0x4025207962204025;
                              v59._object = 0xE800000000000000;
                              v60._countAndFlagsBits = 0;
                              v60._object = 0xE000000000000000;
                              v265._countAndFlagsBits = 0xD00000000000009DLL;
                              NSLocalizedString(_:tableName:bundle:value:comment:)(v59, 0, v58, v60, v265);

                              v61 = swift_allocObject();
                              *(v61 + 16) = xmmword_1003D5730;
                              *(v61 + 56) = &type metadata for String;
                              *(v61 + 64) = v205;
                              *(v61 + 32) = v216;
                              *(v61 + 40) = v9;
                              *(v61 + 96) = &type metadata for String;
                              *(v61 + 104) = v205;
                              *(v61 + 72) = v212;
                              *(v61 + 80) = v220;

                              static String.localizedStringWithFormat(_:_:)();

                              v62 = String._bridgeToObjectiveC()();

                              [v198 setAccessibilityLabel:v62];

                              v63 = swift_unknownObjectWeakLoadStrong();
                              if (v63)
                              {
                                v64 = v63;
                                v65 = swift_allocObject();
                                *(v65 + 16) = xmmword_1003D5730;
                                *(v65 + 56) = &type metadata for String;
                                *(v65 + 64) = v205;
                                *(v65 + 32) = v217;
                                *(v65 + 40) = v215;
                                *(v65 + 96) = &type metadata for String;
                                *(v65 + 104) = v205;
                                *(v65 + 72) = v207;
                                *(v65 + 80) = v214;

                                String.init(format:_:)();
                                v66 = String._bridgeToObjectiveC()();

                                [v64 setText:v66];

                                v67 = swift_unknownObjectWeakLoadStrong();
                                if (v67)
                                {
                                  v68 = v67;
                                  sub_10019FCB8();
                                  v70 = v69;
                                  v71 = [v203 fontWithDescriptor:v69 size:0.0];

                                  [v68 setFont:v71];
                                  v72 = swift_unknownObjectWeakLoadStrong();
                                  if (v72)
                                  {
                                    v73 = v72;
                                    v74 = [v204 mainBundle];
                                    v266._object = 0x8000000100405270;
                                    v75._countAndFlagsBits = 0x4025207962204025;
                                    v75._object = 0xE800000000000000;
                                    v76._countAndFlagsBits = 0;
                                    v76._object = 0xE000000000000000;
                                    v266._countAndFlagsBits = 0xD00000000000009DLL;
                                    NSLocalizedString(_:tableName:bundle:value:comment:)(v75, 0, v74, v76, v266);

                                    v77 = swift_allocObject();
                                    *(v77 + 16) = xmmword_1003D5730;
                                    *(v77 + 56) = &type metadata for String;
                                    *(v77 + 64) = v205;
                                    *(v77 + 32) = v218;
                                    *(v77 + 40) = v200;
                                    *(v77 + 96) = &type metadata for String;
                                    *(v77 + 104) = v205;
                                    *(v77 + 72) = v208;
                                    *(v77 + 80) = v221;

                                    static String.localizedStringWithFormat(_:_:)();

                                    v78 = String._bridgeToObjectiveC()();

                                    [v73 setAccessibilityLabel:v78];

                                    v79 = swift_unknownObjectWeakLoadStrong();
                                    if (v79)
                                    {
                                      v80 = v79;
                                      v81 = swift_allocObject();
                                      *(v81 + 56) = &type metadata for String;
                                      *(v81 + 64) = v205;
                                      v82 = v261;
                                      v83 = v262;
                                      *(v81 + 16) = xmmword_1003D5730;
                                      *(v81 + 32) = v83;
                                      *(v81 + 96) = &type metadata for String;
                                      *(v81 + 104) = v205;
                                      *(v81 + 72) = v82;
                                      sub_100019324(&v262, v225);
                                      sub_100019324(&v261, v225);
                                      String.init(format:_:)();
                                      v84 = String._bridgeToObjectiveC()();

                                      [v80 setText:v84];

                                      v85 = swift_unknownObjectWeakLoadStrong();
                                      if (v85)
                                      {
                                        v86 = v85;
                                        sub_10019FCB8();
                                        v88 = v87;
                                        v89 = [v203 fontWithDescriptor:v87 size:0.0];

                                        [v86 setFont:v89];
                                        v90 = swift_unknownObjectWeakLoadStrong();
                                        if (v90)
                                        {
                                          v91 = v90;
                                          v92 = swift_allocObject();
                                          *(v92 + 16) = xmmword_1003D5730;
                                          *(v92 + 56) = &type metadata for String;
                                          *(v92 + 64) = v205;
                                          *(v92 + 32) = v201;
                                          *(v92 + 40) = v199;
                                          *(v92 + 96) = &type metadata for String;
                                          *(v92 + 104) = v205;
                                          *(v92 + 72) = v197;
                                          *(v92 + 80) = v202;

                                          sub_10006C92C(v263, v225, &qword_1004A72C0, &qword_1003DAD40);
                                          String.init(format:_:)();
                                          v93 = String._bridgeToObjectiveC()();

                                          [v91 setAccessibilityLabel:v93];

                                          v94 = swift_unknownObjectWeakLoadStrong();
                                          if (v94)
                                          {
                                            v95 = v94;
                                            v96 = String._bridgeToObjectiveC()();
                                            [v95 setText:v96];

                                            v97 = swift_unknownObjectWeakLoadStrong();
                                            if (v97)
                                            {
                                              v98 = v97;
                                              v99 = [v204 mainBundle];
                                              v267._object = 0x8000000100405270;
                                              v100._object = 0x8000000100405310;
                                              v100._countAndFlagsBits = 0xD000000000000013;
                                              v101._countAndFlagsBits = 0;
                                              v101._object = 0xE000000000000000;
                                              v267._countAndFlagsBits = 0xD00000000000009DLL;
                                              NSLocalizedString(_:tableName:bundle:value:comment:)(v100, 0, v99, v101, v267);

                                              v102 = swift_allocObject();
                                              *(v102 + 16) = xmmword_1003D5360;
                                              *(v102 + 56) = &type metadata for String;
                                              *(v102 + 64) = v205;
                                              *(v102 + 32) = v206;
                                              *(v102 + 40) = v40;

                                              static String.localizedStringWithFormat(_:_:)();

                                              v103 = String._bridgeToObjectiveC()();

                                              [v98 setAccessibilityLabel:v103];

                                              v104 = swift_unknownObjectWeakLoadStrong();
                                              if (v104)
                                              {
                                                v105 = v104;
                                                v106 = String._bridgeToObjectiveC()();
                                                [v105 setText:v106];

                                                v107 = swift_unknownObjectWeakLoadStrong();
                                                if (v107)
                                                {
                                                  v108 = v107;
                                                  v109 = [v204 mainBundle];
                                                  v268._object = 0x8000000100405270;
                                                  v110._object = 0x8000000100405310;
                                                  v110._countAndFlagsBits = 0xD000000000000013;
                                                  v111._countAndFlagsBits = 0;
                                                  v111._object = 0xE000000000000000;
                                                  v268._countAndFlagsBits = 0xD00000000000009DLL;
                                                  NSLocalizedString(_:tableName:bundle:value:comment:)(v110, 0, v109, v111, v268);

                                                  v112 = swift_allocObject();
                                                  *(v112 + 16) = xmmword_1003D5360;
                                                  *(v112 + 56) = &type metadata for String;
                                                  *(v112 + 64) = v205;
                                                  *(v112 + 32) = v196;
                                                  *(v112 + 40) = v210;

                                                  static String.localizedStringWithFormat(_:_:)();

                                                  v113 = String._bridgeToObjectiveC()();

                                                  [v108 setAccessibilityLabel:v113];

                                                  v114 = swift_unknownObjectWeakLoadStrong();
                                                  if (v114)
                                                  {
                                                    v115 = v114;
                                                    v116 = swift_unknownObjectWeakLoadStrong();
                                                    if (v116)
                                                    {
                                                      v117 = v116;
                                                      [v116 bounds];
                                                      v119 = v118;
                                                      v121 = v120;
                                                      v123 = v122;
                                                      v125 = v124;

                                                      v269.origin.x = v119;
                                                      v269.origin.y = v121;
                                                      v269.size.width = v123;
                                                      v269.size.height = v125;
                                                      Width = CGRectGetWidth(v269);
                                                      v127 = swift_unknownObjectWeakLoadStrong();
                                                      if (v127)
                                                      {
                                                        v128 = v127;
                                                        [v127 bounds];
                                                        v130 = v129;
                                                        v132 = v131;
                                                        v134 = v133;
                                                        v136 = v135;

                                                        v270.origin.x = v130;
                                                        v270.origin.y = v132;
                                                        v270.size.width = v134;
                                                        v270.size.height = v136;
                                                        Height = CGRectGetHeight(v270);
                                                        v138 = swift_unknownObjectWeakLoadStrong();
                                                        if (v138)
                                                        {
                                                          v139 = v138;
                                                          v140 = [v138 font];

                                                          if (v140)
                                                          {
                                                            [v140 lineHeight];
                                                            v142 = v141;

                                                            [v115 setCenter:{Width * 0.5, Height - v142 * 0.5}];
                                                            v143 = swift_unknownObjectWeakLoadStrong();
                                                            if (v143)
                                                            {
                                                              v144 = v143;
                                                              v145 = swift_unknownObjectWeakLoadStrong();
                                                              if (v145)
                                                              {
                                                                v146 = v145;
                                                                [v145 bounds];
                                                                v148 = v147;
                                                                v150 = v149;
                                                                v152 = v151;
                                                                v154 = v153;

                                                                v271.origin.x = v148;
                                                                v271.origin.y = v150;
                                                                v271.size.width = v152;
                                                                v271.size.height = v154;
                                                                v155 = CGRectGetWidth(v271);
                                                                v156 = swift_unknownObjectWeakLoadStrong();
                                                                if (v156)
                                                                {
                                                                  v157 = v156;
                                                                  v158 = [v156 font];

                                                                  if (v158)
                                                                  {
                                                                    [v158 lineHeight];
                                                                    v160 = v159;

                                                                    [v144 setCenter:{v155 * 0.5, v160 * 0.5}];
                                                                    v161 = swift_unknownObjectWeakLoadStrong();
                                                                    if (v161)
                                                                    {
                                                                      v162 = v161;
                                                                      sub_10019FCB8();
                                                                      v164 = v163;
                                                                      v165 = [v203 fontWithDescriptor:v163 size:0.0];

                                                                      [v162 setFont:v165];
                                                                      v166 = swift_unknownObjectWeakLoadStrong();
                                                                      if (v166)
                                                                      {
                                                                        v167 = v166;
                                                                        sub_10019FCB8();
                                                                        v169 = v168;
                                                                        v170 = [v203 fontWithDescriptor:v168 size:0.0];

                                                                        [v167 setFont:v170];
                                                                        v171 = swift_unknownObjectWeakLoadStrong();
                                                                        if (v171)
                                                                        {
                                                                          v172 = v171;
                                                                          v173 = swift_unknownObjectWeakLoadStrong();
                                                                          if (v173)
                                                                          {
                                                                            v174 = v173;
                                                                            [v173 bounds];
                                                                            v176 = v175;

                                                                            v177 = swift_unknownObjectWeakLoadStrong();
                                                                            if (v177)
                                                                            {
                                                                              v178 = v177;
                                                                              v179 = [v177 font];

                                                                              if (v179)
                                                                              {
                                                                                v180 = v176 * 0.5;
                                                                                [v179 leading];
                                                                                v182 = v181;

                                                                                [v172 setConstant:v180 - v182 * 0.5];
                                                                                v183 = swift_unknownObjectWeakLoadStrong();
                                                                                if (v183)
                                                                                {
                                                                                  v184 = v183;
                                                                                  v185 = swift_unknownObjectWeakLoadStrong();
                                                                                  if (v185)
                                                                                  {
                                                                                    v186 = v185;
                                                                                    [v185 bounds];
                                                                                    v188 = v187;

                                                                                    v189 = swift_unknownObjectWeakLoadStrong();
                                                                                    if (v189)
                                                                                    {
                                                                                      v190 = v189;
                                                                                      v191 = [v189 font];

                                                                                      if (v191)
                                                                                      {

                                                                                        v192 = v188 * 0.5;
                                                                                        sub_100018F04(v263, &qword_1004A72C0, &qword_1003DAD40);

                                                                                        [v191 leading];
                                                                                        v194 = v193;

                                                                                        [v184 setConstant:v192 - v194 * 0.5];

                                                                                        sub_1000C1108(&v261);
                                                                                        sub_100018F04(v263, &qword_1004A72C0, &qword_1003DAD40);
                                                                                        sub_1000C1108(&v262);

                                                                                        goto LABEL_91;
                                                                                      }

LABEL_139:
                                                                                      __break(1u);
                                                                                      return;
                                                                                    }

LABEL_138:
                                                                                    __break(1u);
                                                                                    goto LABEL_139;
                                                                                  }

LABEL_137:
                                                                                  __break(1u);
                                                                                  goto LABEL_138;
                                                                                }

LABEL_136:
                                                                                __break(1u);
                                                                                goto LABEL_137;
                                                                              }

LABEL_135:
                                                                              __break(1u);
                                                                              goto LABEL_136;
                                                                            }

LABEL_134:
                                                                            __break(1u);
                                                                            goto LABEL_135;
                                                                          }

LABEL_133:
                                                                          __break(1u);
                                                                          goto LABEL_134;
                                                                        }

LABEL_132:
                                                                        __break(1u);
                                                                        goto LABEL_133;
                                                                      }

LABEL_131:
                                                                      __break(1u);
                                                                      goto LABEL_132;
                                                                    }

LABEL_130:
                                                                    __break(1u);
                                                                    goto LABEL_131;
                                                                  }

LABEL_129:
                                                                  __break(1u);
                                                                  goto LABEL_130;
                                                                }

LABEL_128:
                                                                __break(1u);
                                                                goto LABEL_129;
                                                              }

LABEL_127:
                                                              __break(1u);
                                                              goto LABEL_128;
                                                            }

LABEL_126:
                                                            __break(1u);
                                                            goto LABEL_127;
                                                          }

LABEL_125:
                                                          __break(1u);
                                                          goto LABEL_126;
                                                        }

LABEL_124:
                                                        __break(1u);
                                                        goto LABEL_125;
                                                      }

LABEL_123:
                                                      __break(1u);
                                                      goto LABEL_124;
                                                    }

LABEL_122:
                                                    __break(1u);
                                                    goto LABEL_123;
                                                  }

LABEL_121:
                                                  __break(1u);
                                                  goto LABEL_122;
                                                }

LABEL_120:
                                                __break(1u);
                                                goto LABEL_121;
                                              }

LABEL_119:
                                              __break(1u);
                                              goto LABEL_120;
                                            }

LABEL_118:
                                            __break(1u);
                                            goto LABEL_119;
                                          }

LABEL_117:
                                          __break(1u);
                                          goto LABEL_118;
                                        }

LABEL_116:
                                        __break(1u);
                                        goto LABEL_117;
                                      }

LABEL_115:
                                      __break(1u);
                                      goto LABEL_116;
                                    }

LABEL_114:
                                    __break(1u);
                                    goto LABEL_115;
                                  }

LABEL_113:
                                  __break(1u);
                                  goto LABEL_114;
                                }

LABEL_112:
                                __break(1u);
                                goto LABEL_113;
                              }

LABEL_111:
                              __break(1u);
                              goto LABEL_112;
                            }

LABEL_110:
                            __break(1u);
                            goto LABEL_111;
                          }

LABEL_109:
                          __break(1u);
                          goto LABEL_110;
                        }

LABEL_108:
                        __break(1u);
                        goto LABEL_109;
                      }

                      sub_10006C92C(v263, &v262, &qword_1004A72C0, &qword_1003DAD40);

                      v262 = v253;
                      sub_1000C1108(&v262);
                      sub_100018F04(v263, &qword_1004A72C0, &qword_1003DAD40);
                      v261 = v250;
                      sub_1000C1108(&v261);
                    }

                    else
                    {

                      sub_10006C92C(v263, &v262, &qword_1004A72C0, &qword_1003DAD40);

                      v262 = v253;
                      sub_1000C1108(&v262);
                      sub_100018F04(v263, &qword_1004A72C0, &qword_1003DAD40);
                      v261 = v250;
                      sub_1000C1108(&v261);
                    }

                    swift_bridgeObjectRelease_n();

                    swift_bridgeObjectRelease_n();

                    swift_bridgeObjectRelease_n();

                    swift_bridgeObjectRelease_n();
                  }

                  else
                  {

                    sub_10006C92C(v263, &v262, &qword_1004A72C0, &qword_1003DAD40);

                    v262 = v253;
                    sub_1000C1108(&v262);
                    sub_100018F04(v263, &qword_1004A72C0, &qword_1003DAD40);
                    v261 = v250;
                    sub_1000C1108(&v261);

                    swift_bridgeObjectRelease_n();

                    swift_bridgeObjectRelease_n();

                    swift_bridgeObjectRelease_n();
                  }
                }

                else
                {

                  sub_10006C92C(v263, &v262, &qword_1004A72C0, &qword_1003DAD40);

                  v262 = v253;
                  sub_1000C1108(&v262);
                  sub_100018F04(v263, &qword_1004A72C0, &qword_1003DAD40);
                  v261 = v250;
                  sub_1000C1108(&v261);

                  swift_bridgeObjectRelease_n();

                  swift_bridgeObjectRelease_n();
                }
              }

              else
              {

                sub_10006C92C(v263, &v262, &qword_1004A72C0, &qword_1003DAD40);

                v262 = v253;
                sub_1000C1108(&v262);
                sub_100018F04(v263, &qword_1004A72C0, &qword_1003DAD40);
                v261 = v250;
                sub_1000C1108(&v261);

                swift_bridgeObjectRelease_n();
              }

              sub_100018F04(v263, &qword_1004A72C0, &qword_1003DAD40);
              goto LABEL_91;
            }

            v262 = v253;
            sub_1000C1108(&v262);
            v261 = v250;
            sub_1000C1108(&v261);

            swift_bridgeObjectRelease_n();
          }

          else
          {

            v263[0] = v253;
            sub_1000C1108(v263);
            v262 = v254;
            sub_100018F04(&v262, &qword_1004A72C0, &qword_1003DAD40);
            v261 = v250;
            sub_1000C1108(&v261);
          }

          goto LABEL_91;
        }
      }

      goto LABEL_34;
    }

    goto LABEL_28;
  }

  if (v4 != 1)
  {
LABEL_107:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_108;
  }

  sub_1001117E8(0, &v226);
  v8 = v227;
  v9 = v229;
  if (v231)
  {
    goto LABEL_35;
  }

  v10 = v230;
  v216 = v228;
  v11 = v226;
  v12 = sub_100111E38(1, 0, v230);
  sub_10011062C(0, 0, &v232);
  v13 = v235;
  v14 = v236;
  v36 = v237;
  v37 = v233;
  v217 = v232;
  v218 = v234;
  sub_1001117E8(0, &v238);
  v223 = v239;
  if ((v243 & 1) == 0)
  {
    v215 = v37;
    v220 = v241;
    v17 = v242;
    v212 = v240;
    v213 = v238;
    v18 = 1;
    v19 = sub_100111E38(1, 0, v242);
    sub_10011062C(0, 0, &v244);
    v214 = v245;
    v221 = v247;
    if ((v36 & 1) == 0)
    {
      v20 = v246;
      v21 = v248;
      v22 = 2;
      if ((v249 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

LABEL_34:

    goto LABEL_35;
  }

LABEL_28:

LABEL_35:

LABEL_36:
}

uint64_t sub_1000B567C()
{
  [*(v0 + OBJC_IVAR____TtC7Measure11LabelRender_labelNode) setAlpha:*(v0 + OBJC_IVAR____TtC7Measure11LabelRender_desiredAlpha)];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000C5628(*(v0 + OBJC_IVAR____TtC7Measure11LabelRender_measurementID), *(v0 + OBJC_IVAR____TtC7Measure11LabelRender_measurementID + 8));
    result = swift_unknownObjectRelease();
  }

  *(v0 + OBJC_IVAR____TtC7Measure11LabelRender_selectionState) = 0;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for RectangleLabelData(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for RectangleLabelData(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 21))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RectangleLabelData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
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

  *(result + 21) = v3;
  return result;
}

__n128 sub_1000B57E8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000B580C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000B5854(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1000B58B4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000B58C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 36))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1000B590C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 36) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 36) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_1000B5974(uint64_t a1, int a2)
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

uint64_t sub_1000B59BC(uint64_t result, int a2, int a3)
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

unint64_t sub_1000B5A20()
{
  result = qword_1004A7278;
  if (!qword_1004A7278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A7278);
  }

  return result;
}

unint64_t sub_1000B5A78()
{
  result = qword_1004A7280;
  if (!qword_1004A7280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A7280);
  }

  return result;
}

unint64_t sub_1000B5ACC()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Measure11LabelRender_lastPositionsOnLine);
  v2 = *(v1 + 16);
  if (!v2)
  {
    v4 = 0.0;
    return LODWORD(v4) | ((v2 == 0) << 32);
  }

  v3 = (v1 + 32);
  if (v2 == 1)
  {
    v4 = *v3;
    return LODWORD(v4) | ((v2 == 0) << 32);
  }

  v5 = 0;
  v6 = 0;
  v7 = vcvts_n_f32_u64(v2, 1uLL);
  v8 = 0.0;
  v9 = v2;
  while (*v3 != -1.0)
  {
    v10 = __OFADD__(v5++, 1);
    if (v10)
    {
      goto LABEL_16;
    }

    v8 = v8 + *v3;
LABEL_6:
    ++v3;
    if (!--v9)
    {
      v4 = v8 / v5;
      return LODWORD(v4) | ((v2 == 0) << 32);
    }
  }

  v10 = __OFADD__(v6++, 1);
  if (!v10)
  {
    if (v7 <= v6)
    {
      v4 = -1.0;
      return LODWORD(v4) | ((v2 == 0) << 32);
    }

    goto LABEL_6;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1000B5B98(uint64_t a1)
{
  *(a1 + OBJC_IVAR____TtC7Measure11LabelRender_selectionState) = 1;
  *(a1 + OBJC_IVAR____TtC7Measure11LabelRender_desiredAlpha) = 0;
  result = [objc_opt_self() jasperAvailable];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + OBJC_IVAR____TtC7Measure11LabelRender_transitionLabel);
    if (!v3)
    {
      __break(1u);
      return result;
    }

    v4 = *(a1 + OBJC_IVAR____TtC7Measure11LabelRender_currentProperties + 48);
    v9[2] = *(a1 + OBJC_IVAR____TtC7Measure11LabelRender_currentProperties + 32);
    v9[3] = v4;
    v10 = *(a1 + OBJC_IVAR____TtC7Measure11LabelRender_currentProperties + 64);
    v5 = *(a1 + OBJC_IVAR____TtC7Measure11LabelRender_currentProperties + 16);
    v9[0] = *(a1 + OBJC_IVAR____TtC7Measure11LabelRender_currentProperties);
    v9[1] = v5;
    v6 = v3;
    sub_10009F898(v9, &v8);
    sub_10009BD94(v9, a1, 0, 0);
    sub_10009F9AC(v9);
  }

  sub_1000AB428(*(a1 + OBJC_IVAR____TtC7Measure11LabelRender_state));
  sub_1000B35D0();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1000C57AC(*(a1 + OBJC_IVAR____TtC7Measure11LabelRender_measurementID), *(a1 + OBJC_IVAR____TtC7Measure11LabelRender_measurementID + 8));
    swift_unknownObjectRelease();
  }

  if (qword_1004A02A8 != -1)
  {
    swift_once();
  }

  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v8._countAndFlagsBits = 0xD00000000000001FLL;
  v8._object = 0x80000001004053A0;
  String.append(_:)(*(a1 + OBJC_IVAR____TtC7Measure11LabelRender_measurementID));
  Log.default(_:isPrivate:)(v8, 0);

  if (qword_1004A0350 != -1)
  {
    swift_once();
  }

  v7 = qword_1004D4F08 + OBJC_IVAR____TtC7Measure14MetricsManager_measurementState;
  result = swift_beginAccess();
  *(v7 + 48) = *(v7 + 48) + 1.0;
  return result;
}

void sub_1000B5DD8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC7Measure11LabelRender_labelSize);
    v3 = *(Strong + OBJC_IVAR____TtC7Measure11LabelRender_labelSize + 8);
    v5 = OBJC_IVAR____TtC7Measure11LabelRender_state;
    v6 = *(Strong + OBJC_IVAR____TtC7Measure11LabelRender_state);
    v7 = v6 > 5;
    v8 = (1 << v6) & 0x25;
    v9 = v7 || v8 == 0;
    if (!v9 && (*(Strong + OBJC_IVAR____TtC7Measure11LabelRender_capturing) & 1) == 0)
    {
      if (qword_1004A05B0 != -1)
      {
        swift_once();
      }

      v4 = v4 + *&qword_1004D5128 + *&qword_1004D5128;
    }

    v10 = OBJC_IVAR____TtC7Measure11LabelRender_labelContainer;
    [*&v2[OBJC_IVAR____TtC7Measure11LabelRender_labelContainer] setSize:{v4, v3 + 1.0}];
    v11 = *&v2[v10];
    [v11 size];
    v53 = v12;
    [*&v2[v10] size];
    v13.f64[0] = v53;
    v13.f64[1] = v14;
    v15 = [objc_opt_self() valueWithVectorFloat2:COERCE_DOUBLE(vcvt_f32_f64(v13))];
    v16 = String._bridgeToObjectiveC()();
    [v11 setValue:v15 forAttributeNamed:v16];

    v17 = *&v2[v5];
    if (v17 <= 5 && ((1 << v17) & 0x25) != 0 && (v2[OBJC_IVAR____TtC7Measure11LabelRender_capturing] & 1) == 0)
    {
      v19 = OBJC_IVAR____TtC7Measure11LabelRender_labelChevron;
      [*&v2[OBJC_IVAR____TtC7Measure11LabelRender_labelChevron] setHidden:0];
      v20 = qword_1004A05A8;
      v21 = *&v2[v19];
      if (v20 != -1)
      {
        swift_once();
      }

      v54 = OBJC_IVAR____TtC7Measure11LabelRender_labelFontMetrics;
      v22 = *&qword_1004D5120;
      v23 = qword_1004A0050;
      v24 = *&v2[OBJC_IVAR____TtC7Measure11LabelRender_labelFontMetrics];
      if (v23 != -1)
      {
        swift_once();
      }

      v25 = qword_1004D4970;
      v26 = static UIContentSizeCategory.> infix(_:_:)();

      if (v26)
      {

        v25 = UIContentSizeCategoryAccessibilityLarge;
      }

      v27 = v4 * 0.5;
      v28 = objc_opt_self();
      v29 = [v28 traitCollectionWithPreferredContentSizeCategory:v25];

      [v24 scaledValueForValue:v29 compatibleWithTraitCollection:v22];
      v31 = v30;

      [v21 setPosition:{v27 - v31, 0.0}];
      v32 = *&v2[v19];
      [v32 size];
      if (qword_1004A0570 != -1)
      {
        swift_once();
      }

      v33 = qword_1004D50E8;
      v34 = qword_1004D4970;
      v35 = static UIContentSizeCategory.> infix(_:_:)();

      if (v35)
      {

        v34 = UIContentSizeCategoryAccessibilityLarge;
      }

      v36 = objc_opt_self();
      v37 = [v28 traitCollectionWithPreferredContentSizeCategory:v34];

      v38 = [v36 preferredFontForTextStyle:v33 compatibleWithTraitCollection:v37];
      [v38 pointSize];

      static CGSize.* infix(_:_:)();
      [*&v2[v19] size];
      static CGSize./ infix(_:_:)();
      [v32 setSize:?];

      v39 = OBJC_IVAR____TtC7Measure11LabelRender_labelText;
      v40 = qword_1004A05B0;
      v41 = *&v2[OBJC_IVAR____TtC7Measure11LabelRender_labelText];
      if (v40 != -1)
      {
        swift_once();
      }

      v42 = *&qword_1004D5128;
      v43 = -*&qword_1004D5128;
      [v41 position];
      [v41 setPosition:v43];

      if (v2[OBJC_IVAR____TtC7Measure11LabelRender_chevronOnLeft] != 1)
      {
        goto LABEL_31;
      }

      v44 = *&v2[v19];
      v45 = *&v2[v55];
      v46 = qword_1004D4970;
      v47 = v44;
      v48 = v45;
      v49 = static UIContentSizeCategory.> infix(_:_:)();

      if (v49)
      {

        v46 = UIContentSizeCategoryAccessibilityLarge;
      }

      v50 = [v28 traitCollectionWithPreferredContentSizeCategory:v46];

      [v48 scaledValueForValue:v50 compatibleWithTraitCollection:v22];
      v52 = v51;

      [v47 setPosition:{v52 - v27, 0.0}];
      v18 = *&v2[v39];
      [v18 position];
      [v18 setPosition:v42];
    }

    else
    {
      [*&v2[OBJC_IVAR____TtC7Measure11LabelRender_labelChevron] setHidden:1];
      v18 = *&v2[OBJC_IVAR____TtC7Measure11LabelRender_labelText];
      [v18 position];
      [v18 setPosition:0.0];
    }

    v2 = v18;
LABEL_31:
  }
}

BOOL sub_1000B6434(__n128 a1)
{
  type metadata accessor for MeasureCamera();
  v2 = OBJC_IVAR____TtC7Measure11LabelRender__render;
  v3 = *(**(v1 + OBJC_IVAR____TtC7Measure11LabelRender__render) + 144);

  v3(__src, v4);

  memcpy(__dst, __src, 0x1F8uLL);
  sub_100038ECC(__dst);
  v5 = *(**(v1 + v2) + 144);

  v5(v11, v6);

  memcpy(__src, v11, 0x1F8uLL);
  sub_100038ECC(__src);
  static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
  v8 = vcvtq_f64_f32(v7);
  y = v8.y;
  return CGRectContainsPoint(*(v1 + OBJC_IVAR____TtC7Measure11LabelRender_labelSafeArea), v8);
}

double sub_1000B6580@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(*a1 + 16);

  return result;
}

double sub_1000B6590@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(*a1 + 176);

  return result;
}

double sub_1000B65A0@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(*a1 + 88);

  return result;
}

double sub_1000B65B0@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(*a1 + 280);

  return result;
}

void sub_1000B65C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v50 = a6;
  v9 = v6;
  v10 = a2;
  v11 = a3(0);
  v47 = *(v11 - 8);
  __chkstk_darwin(v11 - 8);
  v49 = &v44 - v12;
  v13 = *v6;
  sub_10000F974(a4, a5);
  v48 = v10;
  v14 = static _DictionaryStorage.resize(original:capacity:move:)();
  v15 = v14;
  if (*(v13 + 16))
  {
    v45 = v6;
    v46 = v13;
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
    v22 = v14 + 64;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v28 = v25 | (v16 << 6);
      v29 = *(v13 + 56);
      v30 = (*(v13 + 48) + 16 * v28);
      v32 = *v30;
      v31 = v30[1];
      v33 = *(v47 + 72);
      v34 = v29 + v33 * v28;
      if (v48)
      {
        sub_1000C1BC0(v34, v49, v50);
      }

      else
      {
        sub_1000C1B58(v34, v49, v50);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v35 = Hasher._finalize()();
      v36 = -1 << *(v15 + 32);
      v37 = v35 & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v22 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v22 + 8 * v38);
          if (v42 != -1)
          {
            v23 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v23 = __clz(__rbit64((-1 << v37) & ~*(v22 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v24 = (*(v15 + 48) + 16 * v23);
      *v24 = v32;
      v24[1] = v31;
      sub_1000C1BC0(v49, *(v15 + 56) + v33 * v23, v50);
      ++*(v15 + 16);
      v13 = v46;
    }

    v26 = v16;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v27 = v17[v16];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v20 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v9 = v45;
      goto LABEL_34;
    }

    v43 = 1 << *(v13 + 32);
    v9 = v45;
    if (v43 >= 64)
    {
      bzero(v17, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v43;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v9 = v15;
}

void sub_1000B6900(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000F974(&unk_1004A73F0, &qword_1003DAF90);
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
      v21 = *(*(v5 + 48) + v20);
      v22 = *(v5 + 56) + 24 * v20;
      v35 = *v22;
      v23 = *(v22 + 16);
      if ((v34 & 1) == 0)
      {
        v24 = v35;
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
      *(*(v7 + 48) + v15) = v21;
      v16 = *(v7 + 56) + 24 * v15;
      *v16 = v35;
      *(v16 + 16) = v23;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
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

LABEL_33:
  *v3 = v7;
}

void sub_1000B6BBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000F974(&qword_1004A7360, &qword_1003DAED8);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v4;
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
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + v19);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      v22 = Hasher._finalize()();
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

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_31:
  *v3 = v7;
}

void sub_1000B6E3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000F974(&qword_1004A73C8, &qword_1003DAF68);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v4;
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
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      Hasher.init(_seed:)();
      v22 = v20 - 3;
      if ((v20 - 3) >= 7)
      {
        Hasher._combine(_:)(7uLL);
        v22 = v20;
      }

      Hasher._combine(_:)(v22);
      v23 = Hasher._finalize()();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
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

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1000B70D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000F974(&qword_1004A7368, &qword_1003DAEE0);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v3;
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
        v22 = v21;
      }

      v23 = static Hasher._hash(seed:_:)();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
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

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1000B7360(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10000F974(&qword_1004A7428, &qword_1003DAFC0);
  v40 = v4;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v36 = v2;
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
    v37 = (v6 + 16);
    v38 = v9;
    v39 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v41)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1000C1C84(&qword_1004A7420, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v43 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_1000B773C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10000F974(&qword_1004AE170, &qword_1003E1490);
  v41 = v4;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v37 = v2;
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
    v38 = (v6 + 16);
    v39 = v6;
    v42 = (v6 + 32);
    v18 = v10 + 64;
    v40 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v43 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v41)
      {
        (*v42)(v44, v26, v5);
      }

      else
      {
        (*v38)(v44, v26, v5);
      }

      v27 = *(*(v9 + 56) + v24);
      sub_1000C1C84(&qword_1004A7420, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v28 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v29 = -1 << *(v11 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v18 + 8 * v31);
          if (v35 != -1)
          {
            v19 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v42)((*(v11 + 48) + v25 * v19), v44, v5);
      *(*(v11 + 56) + v19) = v27;
      ++*(v11 + 16);
      v6 = v39;
      v9 = v40;
      v16 = v43;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v13, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_1000B7AFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000F974(&unk_1004A72B0, &qword_1003DAD38);
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
        sub_1000C0FAC(v22, v36);
      }

      else
      {
        sub_10000FE60(v22, v36);
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
      sub_1000C0FAC(v36, (*(v7 + 56) + 32 * v15));
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

void sub_1000B7DE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000F974(&qword_1004A7348, &qword_1003DAEC0);
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
      v24 = *(*(v5 + 56) + 4 * v20);
      if ((v34 & 1) == 0)
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
      *(*(v7 + 56) + 4 * v15) = v24;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
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

LABEL_33:
  *v3 = v7;
}

void sub_1000B8084(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_10000F974(a3, a4);
  v38 = v6;
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v37 = v7;
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
      if ((v38 & 1) == 0)
      {

        v27 = v26;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v28 = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v37;
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

    if ((v38 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v36 = 1 << *(v7 + 32);
    v5 = v4;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_1000B8320(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000F974(&qword_1004A7430, &qword_1003DAFC8);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v4;
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
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      v22 = Hasher._finalize()();
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

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
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
        goto LABEL_33;
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

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_31:
  *v3 = v7;
}

void sub_1000B85A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000F974(&qword_1004AE1B0, &qword_1003DAF98);
  v49 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v46 = v3;
    v47 = v5;
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
    v48 = v6;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v50 = (v12 - 1) & v12;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = *(v5 + 56);
      v25 = (*(v5 + 48) + 16 * v23);
      v26 = v25[1];
      v53 = *v25;
      v27 = (v24 + 48 * v23);
      v28 = v27[1];
      v51 = *v27;
      v30 = v27[2];
      v29 = v27[3];
      v32 = v27[4];
      v31 = v27[5];
      if ((v49 & 1) == 0)
      {

        v33 = v31;
      }

      v52 = v31;
      v34 = v29;
      v35 = v30;
      v36 = v28;
      Hasher.init(_seed:)();
      String.hash(into:)();
      v37 = Hasher._finalize()();
      v7 = v48;
      v38 = -1 << *(v48 + 32);
      v39 = v37 & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v14 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        v16 = v52;
        v17 = v32;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v14 + 8 * v40);
          if (v44 != -1)
          {
            v15 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v39) & ~*(v14 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
      v16 = v52;
      v17 = v32;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v18 = (*(v48 + 48) + 16 * v15);
      *v18 = v53;
      v18[1] = v26;
      v19 = (*(v48 + 56) + 48 * v15);
      v12 = v50;
      *v19 = v51;
      v19[1] = v36;
      v19[2] = v35;
      v19[3] = v34;
      v19[4] = v17;
      v19[5] = v16;
      ++*(v48 + 16);
      v5 = v47;
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v50 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v49 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_33;
    }

    v45 = 1 << *(v5 + 32);
    v3 = v46;
    if (v45 >= 64)
    {
      bzero(v9, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v45;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1000B88C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000F974(&unk_1004A7410, &unk_1003DAFB0);
  v36 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = *(*(v5 + 48) + 8 * v23);
      if (v36)
      {
        v25 = *(v5 + 56) + 304 * v23;
        v48 = *v25;
        v49 = *(v25 + 16);
        v53 = *(v25 + 80);
        v54 = *(v25 + 64);
        v50 = *(v25 + 32);
        v51 = *(v25 + 96);
        v52 = *(v25 + 112);
        v55 = *(v25 + 132);
        v37 = *(v25 + 48);
        v38 = *(v25 + 136);
        v56 = *(v25 + 140);
        v39 = *(v25 + 128);
        v40 = *(v25 + 144);
        v57 = *(v25 + 148);
        v58 = *(v25 + 160);
        v41 = *(v25 + 156);
        v42 = *(v25 + 168);
        v59 = *(v25 + 172);
        v60 = *(v25 + 180);
        v43 = *(v25 + 176);
        v44 = *(v25 + 184);
        v61 = *(v25 + 188);
        v62 = *(v25 + 193);
        v63 = *(v25 + 208);
        v47 = *(v25 + 224);
        v64 = *(v25 + 228);
        v45 = *(v25 + 192);
        v46 = *(v25 + 232);
        v65 = *(v25 + 240);
        v66 = *(v25 + 256);
        v67 = *(v25 + 272);
        v68 = *(v25 + 288);
      }

      else
      {
        memcpy(__dst, (*(v5 + 56) + 304 * v23), 0x130uLL);
        v64 = DWORD1(__dst[14]);
        v63 = __dst[13];
        v46 = BYTE8(__dst[14]);
        v47 = __dst[14];
        v61 = HIDWORD(__dst[11]);
        v62 = BYTE1(__dst[12]);
        v44 = BYTE8(__dst[11]);
        v45 = __dst[12];
        v59 = HIDWORD(__dst[10]);
        v60 = DWORD1(__dst[11]);
        v42 = BYTE8(__dst[10]);
        v43 = __dst[11];
        v57 = *(&__dst[9] + 4);
        v58 = *&__dst[10];
        v40 = __dst[9];
        v41 = BYTE12(__dst[9]);
        v55 = DWORD1(__dst[8]);
        v56 = HIDWORD(__dst[8]);
        v38 = BYTE8(__dst[8]);
        v39 = __dst[8];
        v53 = __dst[5];
        v54 = __dst[4];
        v51 = __dst[6];
        v52 = __dst[7];
        v49 = __dst[1];
        v50 = __dst[2];
        v37 = __dst[3];
        v48 = __dst[0];
        sub_1000C1C28(__dst, &v65);
        v65 = __dst[15];
        v66 = __dst[16];
        v67 = __dst[17];
        v68 = __dst[18];
      }

      v26 = static Hasher._hash(seed:_:)();
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
      *(__dst + 7) = v65;
      *(&__dst[1] + 7) = v66;
      *(&__dst[2] + 7) = v67;
      *(&__dst[3] + 7) = v68;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v24;
      v16 = *(v7 + 56) + 304 * v15;
      *v16 = v48;
      *(v16 + 16) = v49;
      *(v16 + 32) = v50;
      *(v16 + 48) = v37;
      *(v16 + 64) = v54;
      *(v16 + 80) = v53;
      *(v16 + 96) = v51;
      *(v16 + 112) = v52;
      *(v16 + 128) = v39;
      *(v16 + 132) = v55;
      *(v16 + 136) = v38;
      *(v16 + 140) = v56;
      *(v16 + 144) = v40;
      *(v16 + 148) = v57;
      *(v16 + 156) = v41;
      *(v16 + 160) = v58;
      *(v16 + 168) = v42;
      *(v16 + 172) = v59;
      *(v16 + 176) = v43;
      *(v16 + 180) = v60;
      *(v16 + 184) = v44;
      *(v16 + 188) = v61;
      *(v16 + 192) = v45;
      *(v16 + 193) = v62;
      *(v16 + 208) = v63;
      *(v16 + 224) = v47;
      *(v16 + 228) = v64;
      *(v16 + 232) = v46;
      *(v16 + 233) = __dst[0];
      v17 = __dst[1];
      v18 = __dst[2];
      v19 = __dst[3];
      *(v16 + 296) = *(&__dst[3] + 15);
      *(v16 + 265) = v18;
      *(v16 + 281) = v19;
      *(v16 + 249) = v17;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
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

LABEL_34:
  *v3 = v7;
}

void sub_1000B8E4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000F974(&qword_1004A7438, &qword_1003DAFD0);
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

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
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

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1000B90C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10000F974(&qword_1004A73A8, &unk_1003DAF20);
  v41 = v4;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v37 = v2;
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
    v38 = (v6 + 16);
    v39 = v6;
    v42 = (v6 + 32);
    v18 = v10 + 64;
    v40 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v43 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v41)
      {
        (*v42)(v44, v26, v5);
      }

      else
      {
        (*v38)(v44, v26, v5);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_1000C1C84(&unk_1004A73B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v28 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v29 = -1 << *(v11 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v18 + 8 * v31);
          if (v35 != -1)
          {
            v19 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v42)((*(v11 + 48) + v25 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v27;
      ++*(v11 + 16);
      v6 = v39;
      v9 = v40;
      v16 = v43;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v13, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_1000B9488(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000F974(&unk_1004A7380, &qword_1003DAEF8);
  v31 = v4;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      (*(*v20 + 184))(v32);
      v22 = Hasher._finalize()();
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

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
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

void sub_1000B9738(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000F974(&qword_1004A7400, &qword_1003DAFA0);
  v37 = v4;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 12 * v21;
      v26 = *v25;
      v27 = *(v25 + 8);
      if ((v37 & 1) == 0)
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
      v17 = *(v7 + 56) + 12 * v15;
      *v17 = v26;
      *(v17 + 8) = v27;
      ++*(v7 + 16);
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

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

void sub_1000B99F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000F974(&qword_1004A7408, &qword_1003DAFA8);
  v36 = v4;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 24 * v21;
      v37 = *v25;
      v26 = *(v25 + 16);
      if ((v36 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v27 = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v37;
      *(v17 + 16) = v26;
      ++*(v7 + 16);
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

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1000B9CB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000F974(&qword_1004A73D0, &qword_1003DAF70);
  v32 = v4;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v32 & 1) == 0)
      {
        v22 = v21;
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      v23 = Hasher._finalize()();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
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

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1000B9F44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000F974(&qword_1004A7320, &qword_1003E1300);
  v36 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v2;
    v35 = v5;
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
      v37 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v36 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
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
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v35;
      v12 = v37;
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
        v37 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
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

void sub_1000BA208(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000F974(&qword_1004A73E0, &qword_1003DAF80);
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
      v21 = *(*(v5 + 56) + 8 * v20);
      v35 = *(*(v5 + 48) + 16 * v20);
      v22 = *(*(v5 + 48) + 16 * v20 + 8);
      if ((v34 & 1) == 0)
      {

        v23 = v22;
        v24 = v21;
      }

      Hasher.init(_seed:)();
      type metadata accessor for AnyKeyPath();
      dispatch thunk of Hashable.hash(into:)();
      NSObject.hash(into:)();
      v25 = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v16 = v35;
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
      v16 = v35;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v16;
      *(*(v7 + 56) + 8 * v15) = v21;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
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

LABEL_33:
  *v3 = v7;
}

void sub_1000BA4DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000F974(&qword_1004A73D8, &qword_1003DAF78);
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
      v21 = (*(v5 + 56) + 32 * v20);
      v33 = *(*(v5 + 48) + 16 * v20);
      v22 = *(*(v5 + 48) + 16 * v20 + 8);
      if (v4)
      {
        sub_1000C0FAC(v21, v34);
      }

      else
      {
        sub_10000FE60(v21, v34);

        v23 = v22;
      }

      Hasher.init(_seed:)();
      type metadata accessor for AnyKeyPath();
      dispatch thunk of Hashable.hash(into:)();
      NSObject.hash(into:)();
      v24 = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        v16 = v33;
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
      v16 = v33;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v16;
      sub_1000C0FAC(v34, (*(v7 + 56) + 32 * v15));
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

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

void sub_1000BA7B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000F974(&qword_1004A7398, &unk_1003DAF10);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v4;
    v32 = v3;
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

LABEL_33:
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
        goto LABEL_33;
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

    if (v31)
    {
      v30 = 1 << *(v5 + 32);
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

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1000BAA1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_10000F974(a3, a4);
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

void sub_1000BAC7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000F974(&qword_1004A73A0, &qword_1003E1350);
  v35 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v3;
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

      v25 = static Hasher._hash(seed:_:)();
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

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
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

LABEL_33:
  *v3 = v7;
}

uint64_t sub_1000BAF00(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_100198230(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for MetricsManager.EdgeGuideMetric(0);
      return sub_1000C1CCC(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for MetricsManager.EdgeGuideMetric);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1000BD8B8(type metadata accessor for MetricsManager.EdgeGuideMetric, &qword_1004A7338, &qword_1003DAEB0, type metadata accessor for MetricsManager.EdgeGuideMetric);
    goto LABEL_7;
  }

  sub_1000B65C0(v15, a4 & 1, type metadata accessor for MetricsManager.EdgeGuideMetric, &qword_1004A7338, &qword_1003DAEB0, type metadata accessor for MetricsManager.EdgeGuideMetric);
  v22 = sub_100198230(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1000BD40C(v12, a2, a3, a1, v18, type metadata accessor for MetricsManager.EdgeGuideMetric, type metadata accessor for MetricsManager.EdgeGuideMetric);
}

uint64_t sub_1000BB104(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_100198230(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for MetricsManager.SurfaceVectorGuideMetric(0);
      return sub_1000C1CCC(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for MetricsManager.SurfaceVectorGuideMetric);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1000BD8B8(type metadata accessor for MetricsManager.SurfaceVectorGuideMetric, &qword_1004A7358, &qword_1003DAED0, type metadata accessor for MetricsManager.SurfaceVectorGuideMetric);
    goto LABEL_7;
  }

  sub_1000B65C0(v15, a4 & 1, type metadata accessor for MetricsManager.SurfaceVectorGuideMetric, &qword_1004A7358, &qword_1003DAED0, type metadata accessor for MetricsManager.SurfaceVectorGuideMetric);
  v22 = sub_100198230(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1000BD40C(v12, a2, a3, a1, v18, type metadata accessor for MetricsManager.SurfaceVectorGuideMetric, type metadata accessor for MetricsManager.SurfaceVectorGuideMetric);
}

unint64_t sub_1000BB308(char a1, uint64_t a2, char a3, __n128 a4)
{
  v5 = v4;
  v7 = a2;
  v9 = *v4;
  result = sub_10019C35C(a4);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 >= v15 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v17 >= v15 && (a3 & 1) == 0)
  {
    v18 = result;
    sub_1000BDC8C();
    result = v18;
    goto LABEL_8;
  }

  sub_1000B6BBC(v15, a3 & 1);
  result = sub_10019C35C(v19);
  if ((v16 & 1) == (v20 & 1))
  {
LABEL_8:
    v21 = *v5;
    if (v16)
    {
      *(v21[7] + result) = a1 & 1;
      return result;
    }

    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + result) = v7;
    *(v21[7] + result) = a1 & 1;
    v22 = v21[2];
    v14 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v14)
    {
      v21[2] = v23;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_1000BB434(uint64_t a1, uint64_t a2, char a3, __n128 a4)
{
  v5 = v4;
  v9 = *v4;
  result = sub_1001983A8(a2);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 >= v15 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v17 >= v15 && (a3 & 1) == 0)
  {
    v18 = result;
    sub_1000BDDD8();
    result = v18;
    goto LABEL_8;
  }

  sub_1000B6E3C(v15, a3 & 1);
  result = sub_1001983A8(a2);
  if ((v16 & 1) == (v19 & 1))
  {
LABEL_8:
    v20 = *v5;
    if (v16)
    {
      *(v20[7] + 8 * result) = a1;
      return result;
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = a2;
    *(v20[7] + 8 * result) = a1;
    v21 = v20[2];
    v14 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v14)
    {
      v20[2] = v22;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_1000BB558(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_10019851C(a3);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a2 & 1) != 0)
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      v20 = v19[7];
      v21 = *(v20 + 8 * result);
      *(v20 + 8 * result) = a1;

      return _objc_release_x1(result, v21);
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a3;
    *(v19[7] + 8 * result) = a1;
    v22 = v19[2];
    v13 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v13)
    {
      v19[2] = v23;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a2 & 1) == 0)
  {
    v17 = result;
    sub_1000BDF24();
    result = v17;
    goto LABEL_8;
  }

  sub_1000B70D4(v14, a2 & 1);
  result = sub_10019851C(a3);
  if ((v15 & 1) == (v18 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return _objc_release_x1(result, v21);
}

uint64_t sub_1000BB6D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_100198230(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for MetricsManager.PersonHeightMetric(0);
      return sub_1000C1CCC(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for MetricsManager.PersonHeightMetric);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1000BD8B8(type metadata accessor for MetricsManager.PersonHeightMetric, &qword_1004A73E8, &qword_1003DAF88, type metadata accessor for MetricsManager.PersonHeightMetric);
    goto LABEL_7;
  }

  sub_1000B65C0(v15, a4 & 1, type metadata accessor for MetricsManager.PersonHeightMetric, &qword_1004A73E8, &qword_1003DAF88, type metadata accessor for MetricsManager.PersonHeightMetric);
  v22 = sub_100198230(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1000BD40C(v12, a2, a3, a1, v18, type metadata accessor for MetricsManager.PersonHeightMetric, type metadata accessor for MetricsManager.PersonHeightMetric);
}

void sub_1000BB8F0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = a1;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100198568(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + v14) = v7;
      return;
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_1000BE3A0();
    goto LABEL_7;
  }

  sub_1000B773C(v17, a3 & 1);
  v21 = sub_100198568(a2);
  if ((v18 & 1) != (v22 & 1))
  {
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v14 = v21;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  sub_1000BD4B8(v14, v11, v7, v20);
}

_OWORD *sub_1000BBA8C(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10019C358();
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1000BE610();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1000B7AFC(v13, a3 & 1);
    v8 = sub_10019C358();
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    sub_10000FF00(v19);

    return sub_1000C0FAC(a1, v19);
  }

  else
  {
    sub_1000BD570(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_1000BBBE0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_100198230(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_1000B8084(v20, a4 & 1, a5, a6);
      v15 = sub_100198230(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        v15 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1(v15, v27);
      }
    }

    else
    {
      v23 = v15;
      sub_1000BE934(a5, a6);
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    v26 = v25[7];
    v27 = *(v26 + 8 * v15);
    *(v26 + 8 * v15) = a1;

    return _objc_release_x1(v15, v27);
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v28 = (v25[6] + 16 * v15);
  *v28 = a2;
  v28[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v29 = v25[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v30;
}

uint64_t sub_1000BBDA4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_100198230(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for MetricsManager.VerticalGuideMetric(0);
      return sub_1000C1CCC(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for MetricsManager.VerticalGuideMetric);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1000BD8B8(type metadata accessor for MetricsManager.VerticalGuideMetric, &qword_1004A7350, &qword_1003DAEC8, type metadata accessor for MetricsManager.VerticalGuideMetric);
    goto LABEL_7;
  }

  sub_1000B65C0(v15, a4 & 1, type metadata accessor for MetricsManager.VerticalGuideMetric, &qword_1004A7350, &qword_1003DAEC8, type metadata accessor for MetricsManager.VerticalGuideMetric);
  v22 = sub_100198230(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1000BD40C(v12, a2, a3, a1, v18, type metadata accessor for MetricsManager.VerticalGuideMetric, type metadata accessor for MetricsManager.VerticalGuideMetric);
}

unint64_t sub_1000BBFA8(uint64_t a1, uint64_t a2, char a3, float a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_100198230(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_1000B7DE0(v16, a3 & 1);
      result = sub_100198230(a1, a2);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1000BE7CC();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 4 * result) = a4;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
  *(v21[7] + 4 * result) = a4;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

void sub_1000BC118(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100198230(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1000B85A0(v16, a4 & 1);
      v11 = sub_100198230(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1000BEBDC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 48 * v11;
    v23 = *(v22 + 40);
    v24 = a1[1];
    *v22 = *a1;
    *(v22 + 16) = v24;
    *(v22 + 32) = a1[2];

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v21[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = (v21[7] + 48 * v11);
  v27 = a1[1];
  *v26 = *a1;
  v26[1] = v27;
  v26[2] = a1[2];
  v28 = v21[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v29;
}

void sub_1000BC2E0(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_10019851C(a3);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a2 & 1) == 0)
  {
    if (v16 < v14 || (a2 & 1) != 0)
    {
      sub_1000B8E4C(v14, a2 & 1);
      v9 = sub_10019851C(a3);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_1000BEF48();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + 8 * v9) = a3;
    *(v19[7] + 8 * v9) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

void sub_1000BC434(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100198770(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + 8 * v14) = a1;
      return;
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_1000BF0A4();
    goto LABEL_7;
  }

  sub_1000B90C8(v17, a3 & 1);
  v21 = sub_100198770(a2);
  if ((v18 & 1) != (v22 & 1))
  {
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v14 = v21;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  sub_1000BD6C0(v14, v11, a1, v20);
}

void sub_1000BC5D0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_100198844(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_15;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1000B9488(v14, a3 & 1);
      v9 = sub_100198844(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        type metadata accessor for WorldPlane();
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_1000BF314();
      v9 = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
    return;
  }

  v19[(v9 >> 6) + 8] |= 1 << v9;
  *(v19[6] + 8 * v9) = a2;
  *(v19[7] + 8 * v9) = a1;
  v20 = v19[2];
  v13 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v13)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19[2] = v21;
}