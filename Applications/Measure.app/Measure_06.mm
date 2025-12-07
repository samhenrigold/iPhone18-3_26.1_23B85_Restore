void sub_10007FAE0(uint64_t a1)
{
  v3 = [objc_opt_self() currentTraitCollection];
  v4 = [v3 preferredContentSizeCategory];

  LOBYTE(v3) = UIContentSizeCategory.isAccessibilityCategory.getter();
  if (v3)
  {
    v5 = *(a1 + 24);
    v6 = *(v1 + OBJC_IVAR____TtC7Measure18LinePlatterSpatial_accessibilityLabelStrip);
    v7 = *(a1 + 104);
    v8 = OBJC_IVAR____TtC7Measure24AccessibilityDoubleStack_topLabel;
    v9 = *(v6 + OBJC_IVAR____TtC7Measure24AccessibilityDoubleStack_topLabel);
    v10 = String._bridgeToObjectiveC()();
    [v9 setText:v10];

    v11 = *(v6 + v8);
    if (v5)
    {
      v12 = String._bridgeToObjectiveC()();
    }

    else
    {
      v12 = 0;
    }

    [v11 setAccessibilityLabel:v12];

    v13 = OBJC_IVAR____TtC7Measure24AccessibilityDoubleStack_bottomLabel;
    v14 = *(v6 + OBJC_IVAR____TtC7Measure24AccessibilityDoubleStack_bottomLabel);
    v15 = String._bridgeToObjectiveC()();
    [v14 setText:v15];

    v16 = *(v6 + v13);
    if (v7)
    {
      v17 = String._bridgeToObjectiveC()();
    }

    else
    {
      v17 = 0;
    }

    [v16 setAccessibilityLabel:v17];

    v18 = *(a1 + 152);
    if (v18)
    {
      v47 = *(a1 + 240);
      v19 = *(a1 + 232);
      v20 = *(a1 + 208);
      v44 = *(a1 + 200);
      v46 = *(a1 + 224);
      v21 = *(a1 + 192);
      v22 = *(a1 + 168);
      v40 = *(a1 + 160);
      v42 = *(a1 + 184);
      v39 = *(a1 + 144);
      v23 = [objc_opt_self() mainBundle];
      v63._object = 0xE000000000000000;
      v24._countAndFlagsBits = 0x4F49544156454C45;
      v24._object = 0xE90000000000004ELL;
      v25._countAndFlagsBits = 0;
      v25._object = 0xE000000000000000;
      v63._countAndFlagsBits = 0;
      v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v23, v25, v63);

      v53 = v26;
      *&v54 = v39;
      *(&v54 + 1) = v18;
      *&v55 = v40;
      *(&v55 + 1) = v22;
      *&v56 = v42;
      *(&v56 + 1) = v21;
      *&v57 = v44;
      *(&v57 + 1) = v20;
      *&v58 = v46;
      *(&v58 + 1) = v19;
      v59 = v47;
      v62[4] = v57;
      v62[5] = v58;
      v62[6] = v47;
      v62[0] = v26;
      v62[1] = v54;
      v62[2] = v55;
      v62[3] = v56;

      sub_10012C2BC(v62);
      sub_100080320(&v53);
    }

    v27 = sub_1000802C8(*(a1 + 128));
    sub_1000A4B74(&v53, v27);
    v28 = [objc_opt_self() mainBundle];
    v64._object = 0xE000000000000000;
    v29._countAndFlagsBits = 0x45434E4154534944;
    v29._object = 0xED0000594157415FLL;
    v30._countAndFlagsBits = 0;
    v30._object = 0xE000000000000000;
    v64._countAndFlagsBits = 0;
    v31 = NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, v28, v30, v64);

    v32 = v53;
    v33 = v54;
    v34 = *(&v55 + 1);
    v35 = v56;
    v36 = v57;
    v37 = *(&v58 + 1);
    v43 = v58;
    v45 = *(&v56 + 1);
    v38 = *(&v59 + 1);
    v41 = v59;

    sub_10002212C(&v53);
    v48[0] = v31;
    v48[1] = v32;
    v48[2] = v33;
    *&v49 = v34;
    *(&v49 + 1) = v35;
    *&v50 = v45;
    *(&v50 + 1) = v36;
    *&v51 = v43;
    *(&v51 + 1) = v37;
    *&v52 = v41;
    *(&v52 + 1) = v38;
    v61[0] = v31;
    v61[1] = v32;
    v61[5] = v51;
    v61[6] = v52;
    v61[3] = v49;
    v61[4] = v50;
    v61[2] = v33;
    sub_10012C2BC(v61);
    sub_100080320(v48);
    sub_100080374(a1, v60);
    sub_10004EC0C(v60);
    sub_100080320(v60);
  }
}

__n128 sub_10008009C@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_10007D5A8(a1, v6);
  v3 = v6[5];
  *(a2 + 64) = v6[4];
  *(a2 + 80) = v3;
  *(a2 + 96) = v6[6];
  v4 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v4;
  result = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_100080100()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Measure18LinePlatterSpatial_title);

  return v1;
}

void *sub_10008013C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Measure18LinePlatterSpatial_tableView);
  v2 = v1;
  return v1;
}

id sub_100080170(uint64_t a1)
{
  v2 = type metadata accessor for MeasurementHistoryItem(0);
  memcpy(__dst, (a1 + *(v2 + 28)), 0x346uLL);
  v3 = sub_1000218D8(__dst);
  result = 0;
  if (!v3)
  {
    v5 = sub_1000218E4(__dst);
    v6 = sub_1001935F8();
    v7 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v6];

    v8 = *(v5 + 80);
    v15[4] = *(v5 + 64);
    v15[5] = v8;
    v16[0] = *(v5 + 96);
    *(v16 + 14) = *(v5 + 110);
    v9 = *(v5 + 16);
    v15[0] = *v5;
    v15[1] = v9;
    v10 = *(v5 + 48);
    v15[2] = *(v5 + 32);
    v15[3] = v10;
    v11._countAndFlagsBits = sub_10001912C(v15);
    String.append(_:)(v11);

    v12 = objc_allocWithZone(NSAttributedString);
    v13 = String._bridgeToObjectiveC()();

    v14 = [v12 initWithString:{v13, 10, 0xE100000000000000}];

    [v7 appendAttributedString:v14];
    return v7;
  }

  return result;
}

float sub_1000802C8(float32x4_t a1)
{
  static ComputedCameraProperties.shared.getter();
  simd_float4x4.position.getter();
  v2 = vsubq_f32(a1, v1);
  v3 = vmulq_f32(v2, v2);
  return sqrtf(v3.f32[2] + vaddv_f32(*v3.f32));
}

uint64_t sub_100080374@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if ((*(result + 268) & 1) != 0 || (v3 = *(result + 264), (~LODWORD(v3) & 0x7F800000) == 0))
  {
    v4 = [objc_opt_self() mainBundle];
    v5 = 0xE000000000000000;
    v25._object = 0xE000000000000000;
    v6._countAndFlagsBits = 0x454C474E41;
    v6._object = 0xE500000000000000;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    v25._countAndFlagsBits = 0;
    v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v4, v7, v25);
    countAndFlagsBits = v8._countAndFlagsBits;
    object = v8._object;

    v11 = 0;
    result = 0;
    v12 = 0;
LABEL_7:
    *a2 = countAndFlagsBits;
    a2[1] = object;
    a2[2] = v11;
    a2[3] = v5;
    a2[4] = result;
    a2[5] = v12;
    a2[6] = 0;
    a2[7] = 0xE000000000000000;
    a2[8] = 0;
    a2[9] = 0;
    a2[10] = 0;
    a2[11] = 0xE000000000000000;
    a2[12] = 0;
    a2[13] = 0;
    return result;
  }

  if (v3 <= -9.2234e18)
  {
    __break(1u);
  }

  else if (v3 < 9.2234e18)
  {
    v13 = v3;
    v14 = objc_opt_self();
    v15 = [v14 mainBundle];
    v26._object = 0xE000000000000000;
    v16._countAndFlagsBits = 0x454C474E41;
    v16._object = 0xE500000000000000;
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    v26._countAndFlagsBits = 0;
    v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v26);
    countAndFlagsBits = v18._countAndFlagsBits;
    object = v18._object;

    v19 = [v14 mainBundle];
    v27._object = 0x80000001004034E0;
    v20._countAndFlagsBits = 2965529637;
    v20._object = 0xA400000000000000;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    v27._countAndFlagsBits = 0xD000000000000011;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v20, 0, v19, v21, v27);

    sub_10000F974(&unk_1004AF710, &qword_1003D7CA0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1003D5360;
    *(v22 + 56) = &type metadata for Int;
    *(v22 + 64) = &protocol witness table for Int;
    *(v22 + 32) = v13;
    v11 = static String.localizedStringWithFormat(_:_:)();
    v5 = v23;

    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1003D5360;
    *(v24 + 56) = &type metadata for Int;
    *(v24 + 64) = &protocol witness table for Int;
    *(v24 + 32) = v13;
    result = String.init(format:_:)();
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_100080618(uint64_t a1)
{
  v2 = sub_10000F974(&qword_1004A4C58, &unk_1003D9030);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000806D4()
{
  *(v0 + OBJC_IVAR____TtC7Measure18LinePlatterSpatial_minContentViewHeight) = 0x4071400000000000;
  v1 = [objc_opt_self() currentTraitCollection];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = UIContentSizeCategory.isAccessibilityCategory.getter();
  v3 = 88.0;
  if (v1)
  {
    v3 = 222.0;
  }

  *(v0 + OBJC_IVAR____TtC7Measure18LinePlatterSpatial_tableRowHeight) = v3;
  v4 = (v0 + OBJC_IVAR____TtC7Measure18LinePlatterSpatial_numberOfRowsChangedCallback);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC7Measure18LinePlatterSpatial_sketchView;
  type metadata accessor for SketchLine();
  *(v0 + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC7Measure18LinePlatterSpatial_labelStrip;
  type metadata accessor for LabelsStrip();
  *(v0 + v6) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = OBJC_IVAR____TtC7Measure18LinePlatterSpatial_tableView;
  type metadata accessor for IntrinsicTableView();
  *(v0 + v7) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = OBJC_IVAR____TtC7Measure18LinePlatterSpatial_accessibilityLabelStrip;
  type metadata accessor for AccessibilityDoubleStack();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v8) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v10 = OBJC_IVAR____TtC7Measure18LinePlatterSpatial_accessibilityElevation;
  type metadata accessor for AccessibilityTripleStack();
  v11 = swift_getObjCClassFromMetadata();
  *(v0 + v10) = [objc_allocWithZone(v11) init];
  v12 = OBJC_IVAR____TtC7Measure18LinePlatterSpatial_accessibilityDistance;
  *(v0 + v12) = [objc_allocWithZone(v11) init];
  v13 = OBJC_IVAR____TtC7Measure18LinePlatterSpatial_accessibilityAngle;
  *(v0 + v13) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v14 = OBJC_IVAR____TtC7Measure18LinePlatterSpatial_accessibilitySeparatorOne;
  *(v0 + v14) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 375.0, 0.5}];
  v15 = OBJC_IVAR____TtC7Measure18LinePlatterSpatial_accessibilitySeparatorTwo;
  *(v0 + v15) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 375.0, 0.5}];
  v16 = OBJC_IVAR____TtC7Measure18LinePlatterSpatial_accessibilitySeparatorThree;
  *(v0 + v16) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 375.0, 0.5}];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10008096C(__int128 *a1, uint64_t a2, double a3, double a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v130 = v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v129 = *(v11 - 8);
  __chkstk_darwin(v11);
  v128 = v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1004A0158 != -1)
  {
    swift_once();
  }

  v13 = qword_1004A4C70;
  v14 = a1[7];
  v148 = a1[6];
  v149 = v14;
  v150 = *(a1 + 128);
  v15 = a1[3];
  v144 = a1[2];
  v145 = v15;
  v16 = a1[5];
  v146 = a1[4];
  v147 = v16;
  v17 = a1[1];
  v142 = *a1;
  v143 = v17;
  v18 = sub_10001376C(&v142);
  v131 = v11;
  v132 = v9;
  if (v18 == 1)
  {
    v134 = xmmword_1003D9040;
    v127 = xmmword_1003D9050;
    v19 = v13;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = _swiftEmptyArrayStorage;
    v24 = 1;
    v25 = 0;
    v26 = 0;
    v27 = 0.0;
    v28 = 0.0;
    v29 = 0.0;
    v30 = 0.0;
LABEL_57:
    sub_100018630(0, &qword_1004A3F00, OS_dispatch_queue_ptr);
    v111 = static OS_dispatch_queue.main.getter();
    v112 = swift_allocObject();
    v113 = v133;
    *(v112 + 16) = v133;
    *(v112 + 40) = v134;
    *(v112 + 24) = v127;
    *(v112 + 56) = v29;
    *(v112 + 64) = v30;
    *(v112 + 72) = v25;
    *(v112 + 80) = v26;
    *(v112 + 88) = v27;
    *(v112 + 96) = v28;
    *(v112 + 104) = v20;
    *(v112 + 112) = v24;
    *(v112 + 120) = v21;
    *(v112 + 128) = v22;
    *(v112 + 136) = v19;
    *(v112 + 144) = v23;
    *&v135[32] = sub_100082F4C;
    *&v135[40] = v112;
    *v135 = _NSConcreteStackBlock;
    *&v135[8] = 1107296256;
    *&v135[16] = sub_100041180;
    *&v135[24] = &unk_10046AC70;
    v114 = _Block_copy(v135);
    v115 = v20;
    v116 = v19;
    v117 = v113;

    v118 = v128;
    static DispatchQoS.unspecified.getter();
    *v135 = _swiftEmptyArrayStorage;
    sub_10003180C();
    sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
    sub_100031864();
    v119 = v130;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v114);

    (*(v132 + 8))(v119, v8);
    (*(v129 + 8))(v118, v131);
    return;
  }

  *&v127 = a2;
  v157 = v148;
  v158 = v149;
  v159 = v150;
  v153 = v144;
  v154 = v145;
  v155 = v146;
  v156 = v147;
  v151 = v142;
  v152 = v143;
  v31 = objc_opt_self();
  v126 = v13;
  sub_10006C92C(a1, v167, &qword_1004A33F0, &qword_1003D8DD0);
  v32 = [v31 mainScreen];
  [v32 scale];
  v34 = v33;

  v35 = v34 * *&v155;
  v36 = objc_opt_self();
  v37 = [v36 standardUserDefaults];
  Defaults.edgeDetectionUniqueContours.unsafeMutableAddressor();

  v38 = String._bridgeToObjectiveC()();

  v39 = [v37 BOOLForKey:v38];

  v40 = v152;
  v123 = v36;
  if (v39)
  {
    if ((*&v35 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v35 > -2147483650.0)
      {
        if (v35 < 2147483650.0)
        {
          v41 = [objc_opt_self() makeCVImageFromUniqueContours:v152 lineThickness:v35];
          goto LABEL_16;
        }

        goto LABEL_61;
      }

      goto LABEL_59;
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if ((*&v35 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_58;
  }

  if (v35 <= -2147483650.0)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v35 >= 2147483650.0)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v37 = v35;
  if (qword_1004A0168 != -1)
  {
LABEL_63:
    swift_once();
  }

  v41 = [objc_opt_self() makeCVImageFromContours:v40 lineThickness:v37 color:qword_1004A4C80];
LABEL_16:
  v42 = v41;
  v43 = v42;
  v44 = *(&v156 + 1);
  v160 = *(&v156 + 1);
  v45 = *(*(&v156 + 1) + 16);
  v124 = v8;
  if (v45)
  {
    v46 = v42;
    v47 = v42;
    sub_10006C92C(&v160, v167, &unk_1004A4D20, &qword_1003D9088);
    v48 = v44 + 64;
    v23 = _swiftEmptyArrayStorage;
    do
    {
      if (*(v48 + 56) == 1)
      {
        v134 = *v48;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_100067A00(0, *(v23 + 2) + 1, 1, v23);
        }

        v50 = *(v23 + 2);
        v49 = *(v23 + 3);
        if (v50 >= v49 >> 1)
        {
          v23 = sub_100067A00((v49 > 1), v50 + 1, 1, v23);
        }

        *(v23 + 2) = v50 + 1;
        *&v23[2 * v50 + 4] = v134;
      }

      v48 += 96;
      --v45;
    }

    while (v45);
    sub_100018F04(&v160, &unk_1004A4D20, &qword_1003D9088);
    v43 = v46;
    v8 = v124;
  }

  else
  {
    v51 = v42;
    v23 = _swiftEmptyArrayStorage;
  }

  v20 = [objc_opt_self() makeUIImageFromCVImage:v43];

  v125 = *(&v153 + 1);
  v25 = v153;
  v28 = *(&v154 + 1);
  v27 = *&v154;
  [v20 size];
  v53 = 1.0 / v52;
  [v20 size];
  CGAffineTransformMakeScale(v167, v53, 1.0 / v54);
  tx = v167[0].tx;
  ty = v167[0].ty;
  v134 = *&v167[0].a;
  v127 = *&v167[0].c;
  [v20 size];
  ARCameraImageToViewTransform();
  v57 = *&v167[0].a;
  v58 = *&v167[0].c;
  v59 = *&v167[0].tx;
  *&v167[0].c = v127;
  *&v167[0].a = v134;
  v167[0].tx = tx;
  v167[0].ty = ty;
  *v135 = v57;
  *&v135[16] = v58;
  *&v135[32] = v59;
  CGAffineTransformConcat(&v166, v167, v135);
  v60 = v166.tx;
  v61 = v166.ty;
  v134 = *&v166.a;
  v127 = *&v166.c;
  CGAffineTransformMakeScale(v167, v27, v28);
  v62 = *&v167[0].a;
  v63 = *&v167[0].c;
  v64 = *&v167[0].tx;
  *&v167[0].c = v127;
  *&v167[0].a = v134;
  v167[0].tx = v60;
  v167[0].ty = v61;
  *v135 = v62;
  *&v135[16] = v63;
  *&v135[32] = v64;
  CGAffineTransformConcat(&v166, v167, v135);
  v134 = *&v166.c;
  v127 = *&v166.a;
  v29 = v166.tx;
  v30 = v166.ty;
  v65 = [v123 standardUserDefaults];
  Defaults.edgeDetectionDebugReticleEnabled.unsafeMutableAddressor();
  v66 = v43;

  v67 = String._bridgeToObjectiveC()();

  v68 = [v65 BOOLForKey:v67];

  if (!v68)
  {

    sub_100018F04(a1, &qword_1004A33F0, &qword_1003D8DD0);
    v24 = 1;
    v21 = 0;
    v22 = 0;
    v19 = v126;
    v26 = v125;
    goto LABEL_57;
  }

  v122 = v20;
  v123 = v66;
  v69 = &v133[OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_reticlePoint];
  v70 = *&v133[OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_reticlePoint + 16];
  *&v166.tx = *&v133[OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_reticlePoint + 32];
  *&v166.a = *&v133[OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_reticlePoint];
  *&v166.c = v70;
  v26 = v125;
  if (LOBYTE(v166.tx) == 3 || v69[2].n128_u8[0] == 2)
  {
    v71 = 0;
    v72 = 0;
    v73 = 1;
  }

  else
  {
    v73 = 0;
    v71 = v69[1].n128_i64[0];
    v72 = v69[1].n128_i64[1];
  }

  v74 = *(**&v133[OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView__frameState] + 144);

  v74(v135, v75);

  memcpy(v167, v135, 0x200uLL);
  v76.n128_f64[0] = a3;
  sub_100078828(v71, v72, v73, &v166.a, v167, v76, a4);
  v78 = v77;
  sub_100013C4C(v167);
  if (v78 == 2)
  {
    v79 = v69[1];
    v165 = v69[2];
    v80 = *v69;
    v164[0] = *v69;
    v164[1] = v79;
    v8 = v124;
    v20 = v122;
    if (v165.n128_u8[0] == 3 || v69[2].n128_u8[0] == 2)
    {
      v81 = 0;
      v82 = 0;
      v83 = 1;
    }

    else
    {
      v83 = 0;
      v81 = v69[1].n128_i64[0];
      v82 = v69[1].n128_i64[1];
    }

    v80.n128_f64[0] = a3;
    sub_100078C58(v81, v82, v83, v164, v80, a4);
  }

  else
  {
    v8 = v124;
    v20 = v122;
  }

  v84 = v69[1];
  v161 = *v69;
  v162 = v84;
  v163 = v69[2];
  sub_1000790B8(&v136);
  v85 = v137;
  v86 = v138;
  v87 = v139;
  v88 = v140;
  v89 = v141;
  v69->n128_u64[0] = v136;
  v69->n128_u64[1] = v85;
  v69[1].n128_f64[0] = v86;
  v69[1].n128_f64[1] = v87;
  v69[2].n128_u64[0] = v88;
  v69[2].n128_u64[1] = v89;
  v19 = v126;
  v90 = v123;
  if (v88 == 2)
  {
LABEL_49:
    (*(**(&v157 + 1) + 144))(v135);
    if ((v135[72] & 1) != 0 || *(v151 + 196) >= *&v135[68])
    {

      sub_100018F04(a1, &qword_1004A33F0, &qword_1003D8DD0);
      v24 = 1;
      v21 = 0;
      v22 = 0;
    }

    else
    {
      static CGSize.* infix(_:_:)();
      CGPoint.init(_:)();
      static CGPoint.+ infix(_:_:)();
      if (qword_1004A0150 != -1)
      {
        swift_once();
      }

      static CGSize.* infix(_:_:)();
      CGPoint.init(_:)();
      static CGPoint.- infix(_:_:)();
      v21 = v108;
      v22 = v109;
      if (qword_1004A0160 != -1)
      {
        swift_once();
      }

      v110 = qword_1004A4C78;

      sub_100018F04(a1, &qword_1004A33F0, &qword_1003D8DD0);
      v24 = 0;
      v19 = v110;
    }

    goto LABEL_57;
  }

  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  if (*(&xmmword_1004D4AB8 + 1))
  {
    v91 = *(*(&xmmword_1004D4AB8 + 1) + qword_1004AF960);
    if (v91)
    {
      v92 = v87;
      v93 = v20;
      v94 = OBJC_IVAR____TtC7Measure11ReticleView_reticleBoundsLayer;
      v95 = *&v91[OBJC_IVAR____TtC7Measure11ReticleView_reticleBoundsLayer];
      v121 = *(&xmmword_1004D4AB8 + 1);
      v96 = v91;
      *&v120[1] = v86;
      [v95 convertPoint:0 fromLayer:{v86, v92}];
      v98 = v97;
      v99 = v25;
      v101 = v100;
      v102 = *&v91[v94];
      v20 = v93;
      v90 = v123;
      v103 = v102;
      v104 = v98;
      v26 = v125;
      v105 = v101;
      v25 = v99;
      LODWORD(v95) = [v103 containsPoint:{v104, v105}];

      v19 = v126;
      if (v95)
      {
        if (qword_1004A0150 != -1)
        {
          swift_once();
        }

        static CGSize.* infix(_:_:)();
        CGPoint.init(_:)();
        static CGPoint.- infix(_:_:)();
        v21 = v106;
        v22 = v107;

        sub_100018F04(a1, &qword_1004A33F0, &qword_1003D8DD0);
        v24 = 0;
        goto LABEL_57;
      }
    }

    goto LABEL_49;
  }

  __break(1u);
}

uint64_t sub_100081770(unint64_t a1, unint64_t a2, char a3, __n128 *a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v12 = *(v26 - 8);
  __chkstk_darwin(v26);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v16 = 0;
  if ((a3 & 1) == 0)
  {
    *&v17 = a1;
    *(&v17 + 1) = a2;
    v25 = v17;
    type metadata accessor for MeasureCamera();
    static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
    CGPoint.init(xy:)();
    if (qword_1004A0150 != -1)
    {
      swift_once();
    }

    static CGSize.* infix(_:_:)();
    CGPoint.init(_:)();
    static CGPoint.- infix(_:_:)();
    v15 = v18;
    v16 = v19;
  }

  sub_100018630(0, &qword_1004A3F00, OS_dispatch_queue_ptr);
  v20 = static OS_dispatch_queue.main.getter();
  v21 = swift_allocObject();
  *(v21 + 16) = v4;
  *(v21 + 24) = a3 & 1;
  *(v21 + 32) = v15;
  *(v21 + 40) = v16;
  aBlock[4] = sub_100082E64;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = &unk_10046AC20;
  v22 = _Block_copy(aBlock);
  v23 = v4;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10003180C();
  sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
  sub_100031864();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v9 + 8))(v11, v8);
  return (*(v12 + 8))(v14, v26);
}

void sub_100081AD0(uint64_t a1)
{
  CGSize.init(_:_:)();
  qword_1004A4C60 = v1;
  *algn_1004A4C68 = v2;
}

UIColor sub_100081AFC()
{
  sub_100018630(0, &qword_1004A2930, UIColor_ptr);
  result.super.isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.47451, 0.83922, 0.97647, 1.0).super.isa;
  qword_1004A4C70 = result.super.isa;
  return result;
}

UIColor sub_100081B68()
{
  sub_100018630(0, &qword_1004A2930, UIColor_ptr);
  result.super.isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.7451, 0.15686, 0.07451, 1.0).super.isa;
  qword_1004A4C78 = result.super.isa;
  return result;
}

UIColor sub_100081BD4()
{
  sub_100018630(0, &qword_1004A2930, UIColor_ptr);
  result.super.isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.7451, 0.15686, 0.07451, 1.0).super.isa;
  qword_1004A4C80 = result.super.isa;
  return result;
}

UIColor sub_100081C40()
{
  sub_100018630(0, &qword_1004A2930, UIColor_ptr);
  result.super.isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.9098, 0.47843, 0.64314, 1.0).super.isa;
  qword_1004A4C88 = result.super.isa;
  return result;
}

UIColor sub_100081CAC()
{
  sub_100018630(0, &qword_1004A2930, UIColor_ptr);
  result.super.isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.9098, 0.47843, 0.64314, 1.0).super.isa;
  qword_1004A4C90 = result.super.isa;
  return result;
}

char *sub_100081D18(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView__frameState;
  KeyPath = swift_getKeyPath();
  v12 = sub_10000F974(&qword_1004A1200, &unk_1003D5600);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v13 = qword_1004D5058;
  v14 = *(v12 + 272);

  *&v5[v10] = v14(KeyPath, v13);
  *&v5[OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_cornerViews] = _swiftEmptyArrayStorage;
  v15 = &v5[OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_reticlePoint];
  *v15 = 0u;
  v15[1] = 0u;
  v15[2] = xmmword_1003D9060;
  v5[OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_isRenderingEdges] = 0;
  v5[OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_isRenderingLines] = 0;
  v5[OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_isRenderingSmoothLines] = 0;
  v16 = [objc_allocWithZone(UIImageView) init];
  v17 = OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_imageView;
  *&v5[OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_imageView] = v16;
  [v16 setContentMode:4];
  [*&v5[v17] setAlpha:0.65];
  [*&v5[v17] setHidden:1];
  [*&v5[v17] setOpaque:0];
  v18 = [objc_allocWithZone(UIImageView) init];
  v19 = OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_edgeView;
  *&v5[OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_edgeView] = v18;
  [v18 setContentMode:4];
  [*&v5[v19] setAlpha:0.65];
  [*&v5[v19] setHidden:1];
  [*&v5[v19] setOpaque:0];
  v20 = [objc_allocWithZone(UIImageView) init];
  v21 = OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_lineView;
  *&v5[OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_lineView] = v20;
  [v20 setContentMode:4];
  [*&v5[v21] setAlpha:0.75];
  [*&v5[v21] setHidden:1];
  [*&v5[v21] setOpaque:0];
  v22 = [objc_allocWithZone(UIImageView) init];
  v23 = OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_smoothLineView;
  *&v5[OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_smoothLineView] = v22;
  [v22 setContentMode:4];
  [*&v5[v23] setAlpha:0.85];
  [*&v5[v23] setHidden:0];
  [*&v5[v23] setOpaque:0];
  if (qword_1004A0150 != -1)
  {
    swift_once();
  }

  v24 = *&qword_1004A4C60;
  v25 = *algn_1004A4C68;
  v26 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, *&qword_1004A4C60, *algn_1004A4C68}];
  v27 = OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_pointView;
  *&v5[OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_pointView] = v26;
  [v26 setContentMode:4];
  v28 = qword_1004A0158;
  v29 = *&v5[v27];
  if (v28 != -1)
  {
    swift_once();
  }

  [v29 setBackgroundColor:qword_1004A4C70];

  [*&v5[v27] setHidden:1];
  v30 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, v24, v25}];
  v31 = OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_unprojectedPointView;
  *&v5[OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_unprojectedPointView] = v30;
  [v30 setContentMode:4];
  v32 = qword_1004A0178;
  v33 = *&v5[v31];
  if (v32 != -1)
  {
    swift_once();
  }

  [v33 setBackgroundColor:qword_1004A4C90];

  [*&v5[v31] setHidden:1];
  v39.receiver = v5;
  v39.super_class = ObjectType;
  v34 = objc_msgSendSuper2(&v39, "initWithFrame:", a1, a2, a3, a4);
  v35 = *&v34[OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_imageView];
  v36 = v34;
  [v36 addSubview:v35];
  [v36 addSubview:*&v36[OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_edgeView]];
  [v36 addSubview:*&v36[OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_lineView]];
  [v36 addSubview:*&v36[OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_smoothLineView]];
  [v36 addSubview:*&v36[OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_pointView]];
  [v36 addSubview:*&v36[OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_unprojectedPointView]];
  [v36 setUserInteractionEnabled:0];

  return v36;
}

void sub_1000822A4(char *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v50 = a6;
  v23 = *(a2 + 32);
  v24 = *(a2 + 40);
  v25 = *&a1[OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_imageView];
  v26 = [objc_opt_self() standardUserDefaults];
  v27 = [v26 kEdgeDetectionDebugReticleEnabled];

  [v25 setHidden:v27 ^ 1];
  v28 = *(a2 + 16);
  v51[0] = *a2;
  v51[1] = v28;
  v52 = v23;
  v53 = v24;
  [v25 setTransform:v51];
  [v25 setFrame:{a7, a8, a9, a10}];
  [v25 setImage:a3];
  v29 = *&a1[OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_pointView];
  [v29 setHidden:a4 & 1];
  [v29 frame];
  [v29 setFrame:{a11, a12}];
  [v29 setBackgroundColor:a5];
  v30 = OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_cornerViews;
  swift_beginAccess();
  v31 = *&a1[v30];
  if (v31 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v33 = 0;
    while (1)
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v33 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v34 = *(v31 + 8 * v33 + 32);
      }

      v35 = v34;
      v36 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      [v34 setHidden:1];

      ++v33;
      if (v36 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

LABEL_12:

  v37 = *(v50 + 16);
  v38 = &selRef_setFrame_;
  if (v37)
  {
    v31 = 0;
    v39 = v50 + 40;
    do
    {
      v40 = *&a1[v30];
      if (v40 >> 62)
      {
        if (v31 >= _CocoaArrayWrapper.endIndex.getter())
        {
LABEL_16:
          v41 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 5.0, 5.0}];
          [v41 setContentMode:4];
          if (qword_1004A0170 != -1)
          {
            swift_once();
          }

          [v41 setBackgroundColor:{qword_1004A4C88, v50}];
          [a1 addSubview:v41];
          swift_beginAccess();
          v42 = v41;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*&a1[v30] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&a1[v30] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v38 = &selRef_setFrame_;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();
        }
      }

      else if (v31 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      swift_beginAccess();
      v43 = *&a1[v30];
      if ((v43 & 0xC000000000000001) != 0)
      {
        v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v31 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v44 = *(v43 + 8 * v31 + 32);
      }

      v45 = v44;
      ++v31;
      swift_endAccess();
      [v45 setHidden:0];
      [v45 frame];
      static CGSize.* infix(_:_:)();
      CGPoint.init(_:)();
      static CGPoint.- infix(_:_:)();
      v47 = v46;
      v49 = v48;
      [v45 frame];
      [v45 *v38];

      v39 += 16;
    }

    while (v37 != v31);
  }
}

void sub_100082758(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = [objc_allocWithZone(UIImage) init];
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  if (!*(&xmmword_1004D4AB8 + 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v12 = [*(&xmmword_1004D4AB8 + 1) view];
  if (!v12)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v13 = v12;
  [v12 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v47.origin.x = v15;
  v47.origin.y = v17;
  v47.size.width = v19;
  v47.size.height = v21;
  Width = CGRectGetWidth(v47);
  v48.origin.x = v15;
  v48.origin.y = v17;
  v48.size.width = v19;
  v48.size.height = v21;
  v46.height = CGRectGetHeight(v48);
  v46.width = Width;
  UIGraphicsBeginImageContextWithOptions(v46, 0, 0.0);
  [v42 drawAtPoint:{0.0, 0.0}];
  v23 = UIGraphicsGetCurrentContext();
  if (v23)
  {
    v43 = v23;
    CGContextSetLineWidth(v23, 1.2);
    v24 = [objc_opt_self() greenColor];
    v25 = [v24 CGColor];

    CGContextSetStrokeColorWithColor(v43, v25);
    v26 = *(a1 + 16);
    if (v26)
    {
      v27 = a1 + 56;
      do
      {
        CGContextRef.move(to:)();
        CGContextRef.addLine(to:)();
        CGContextStrokePath(v43);
        v27 += 32;
        --v26;
      }

      while (v26);
    }

    v28 = UIGraphicsGetImageFromCurrentImageContext();
    if (v28)
    {
      v29 = v28;
      UIGraphicsEndImageContext();
      v49.origin.x = v15;
      v49.origin.y = v17;
      v49.size.width = v19;
      v49.size.height = v21;
      v30 = CGRectGetWidth(v49);
      v50.origin.x = v15;
      v50.origin.y = v17;
      v50.size.width = v19;
      v50.size.height = v21;
      Height = CGRectGetHeight(v50);
      sub_100018630(0, &qword_1004A3F00, OS_dispatch_queue_ptr);
      v32 = static OS_dispatch_queue.main.getter();
      v33 = swift_allocObject();
      v33[3] = 0.0;
      v33[4] = 0.0;
      *(v33 + 2) = v2;
      v33[5] = v30;
      v33[6] = Height;
      *(v33 + 7) = v29;
      aBlock[4] = sub_10008310C;
      aBlock[5] = v33;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100041180;
      aBlock[3] = &unk_10046ACC0;
      v34 = _Block_copy(aBlock);
      v41 = v8;
      v35 = v9;
      v36 = v34;
      v37 = v2;
      v38 = v29;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10003180C();
      sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
      sub_100031864();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v36);

      (*(v5 + 8))(v7, v4);
      (*(v35 + 8))(v11, v41);
      return;
    }

    v39 = v43;
  }

  else
  {
    UIGraphicsEndImageContext();
    v39 = v42;
  }
}

id sub_100082C7C(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v11 = *(a1 + OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_smoothLineView);
  v12 = [objc_opt_self() standardUserDefaults];
  v13 = [v12 showEDLines];

  [v11 setHidden:v13 ^ 1];
  [v11 setFrame:{a3, a4, a5, a6}];

  return [v11 setImage:a2];
}

uint64_t sub_100082E2C()
{

  return _swift_deallocObject(v0, 48, 7);
}

id sub_100082E64()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(*(v0 + 16) + OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_unprojectedPointView);
  [v3 setHidden:*(v0 + 24)];
  [v3 frame];

  return [v3 setFrame:{v1, v2}];
}

double sub_100082EE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100082EFC()
{

  return _swift_deallocObject(v0, 152, 7);
}

void sub_100082F70()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView__frameState;
  KeyPath = swift_getKeyPath();
  v4 = sub_10000F974(&qword_1004A1200, &unk_1003D5600);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v5 = qword_1004D5058;
  v6 = *(v4 + 272);

  *(v1 + v2) = v6(KeyPath, v5);
  *(v1 + OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_cornerViews) = _swiftEmptyArrayStorage;
  v7 = (v1 + OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_reticlePoint);
  *v7 = 0u;
  v7[1] = 0u;
  v7[2] = xmmword_1003D9060;
  *(v1 + OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_isRenderingEdges) = 0;
  *(v1 + OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_isRenderingLines) = 0;
  *(v1 + OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_isRenderingSmoothLines) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000830CC()
{

  return _swift_deallocObject(v0, 64, 7);
}

void sub_10008321C(uint64_t result, __n128 a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC7Measure10EditButton_isInputEnabled);
  *(v2 + OBJC_IVAR____TtC7Measure10EditButton_isInputEnabled) = result;
  if (v3 != (result & 1) && (*(v2 + OBJC_IVAR____TtC7Measure10EditButton_editEnabled) & 1) != 0)
  {
    v4 = 0.5;
    if (result)
    {
      v4 = 1.0;
    }

    sub_1000838A8(v4);
  }
}

void sub_100083288()
{
  v1 = OBJC_IVAR____TtC7Measure10EditButton_editState;
  if ((*(v0 + OBJC_IVAR____TtC7Measure10EditButton_editState) & 1) == 0)
  {
    v2 = OBJC_IVAR____TtC7Measure10EditButton_animatingView;
    v3 = *(v0 + OBJC_IVAR____TtC7Measure10EditButton_animatingView);
    if (v3)
    {
      v4 = [v3 layer];
      CATransform3DMakeScale(&v12, 0.666667, 0.666667, 1.0);
      [v4 setTransform:&v12];
    }

    v5 = *(v0 + OBJC_IVAR____TtC7Measure10EditButton_pressUpDownAnimation);
    isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
    [v5 setFromValue:isa];

    v7 = CGFloat._bridgeToObjectiveC()().super.super.isa;
    [v5 setToValue:v7];

    v8 = *(v0 + v2);
    if (v8)
    {
      v9 = [v8 layer];
      v10 = String._bridgeToObjectiveC()();
      [v9 addAnimation:v5 forKey:v10];
    }

    v11 = *(v0 + OBJC_IVAR____TtC7Measure10EditButton_animatingBlur);
    if (v11)
    {
      [v11 setHighlighted:1];
    }
  }

  *(v0 + v1) = 1;
}

void sub_100083468()
{
  if (*(v0 + OBJC_IVAR____TtC7Measure10EditButton_editEnabled) == 1 && *(v0 + OBJC_IVAR____TtC7Measure10EditButton_isInputEnabled) == 1)
  {
    v1 = v0 + OBJC_IVAR____TtC7Measure10EditButton_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(v1 + 8);
      ObjectType = swift_getObjectType();
      (*(v2 + 8))(ObjectType, v2);
      swift_unknownObjectRelease();
    }

    sub_100083584();
    if (qword_1004A02A8 != -1)
    {
      swift_once();
    }

    v4 = 0x8000000100403790;
    v5 = 0xD000000000000012;

    Log.default(_:isPrivate:)(*&v5, 0);
  }
}

void sub_100083584()
{
  v1 = OBJC_IVAR____TtC7Measure10EditButton_editState;
  if (*(v0 + OBJC_IVAR____TtC7Measure10EditButton_editState) == 1)
  {
    v2 = OBJC_IVAR____TtC7Measure10EditButton_animatingView;
    v3 = *(v0 + OBJC_IVAR____TtC7Measure10EditButton_animatingView);
    if (v3)
    {
      v4 = [v3 layer];
      CATransform3DMakeScale(&v12, 1.0, 1.0, 1.0);
      [v4 setTransform:&v12];
    }

    v5 = *(v0 + OBJC_IVAR____TtC7Measure10EditButton_pressUpDownAnimation);
    isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
    [v5 setFromValue:isa];

    v7 = CGFloat._bridgeToObjectiveC()().super.super.isa;
    [v5 setToValue:v7];

    v8 = *(v0 + v2);
    if (v8)
    {
      v9 = [v8 layer];
      v10 = String._bridgeToObjectiveC()();
      [v9 addAnimation:v5 forKey:v10];
    }

    v11 = *(v0 + OBJC_IVAR____TtC7Measure10EditButton_animatingBlur);
    if (v11)
    {
      [v11 setHighlighted:0];
    }
  }

  *(v0 + v1) = 0;
}

void sub_100083730()
{
  if (*(v0 + OBJC_IVAR____TtC7Measure10EditButton_editEnabled) == 1 && *(v0 + OBJC_IVAR____TtC7Measure10EditButton_isInputEnabled) == 1 && (*(v0 + OBJC_IVAR____TtC7Measure10EditButton_isShowingAccessibilityHUD) & 1) == 0)
  {
    v1 = v0 + OBJC_IVAR____TtC7Measure10EditButton_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(v1 + 8);
      ObjectType = swift_getObjectType();
      (*(v2 + 8))(ObjectType, v2);
      swift_unknownObjectRelease();
    }

    sub_100083584();
  }
}

void sub_1000838A8(float a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = objc_allocWithZone(UIViewPropertyAnimator);
  v8[4] = sub_10007ADB8;
  v8[5] = v3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100041180;
  v8[3] = &unk_10046ADA0;
  v5 = _Block_copy(v8);
  v6 = v1;

  v7 = [v4 initWithDuration:v5 dampingRatio:0.5 animations:0.6];
  _Block_release(v5);
  if (a1 == 0.5)
  {
    sub_100083584();
  }

  [v7 setInterruptible:0];
  [v7 startAnimation];
}

unint64_t sub_100083B30()
{
  result = qword_1004A4D98;
  if (!qword_1004A4D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A4D98);
  }

  return result;
}

void sub_100083B84()
{
  *(v0 + OBJC_IVAR____TtC7Measure10EditButton_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC7Measure10EditButton_animatingView) = 0;
  *(v0 + OBJC_IVAR____TtC7Measure10EditButton_animatingBlur) = 0;
  v1 = OBJC_IVAR____TtC7Measure10EditButton_pressUpDownAnimation;
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() animationWithKeyPath:v2];

  *(v0 + v1) = v3;
  *(v0 + OBJC_IVAR____TtC7Measure10EditButton_editState) = 0;
  *(v0 + OBJC_IVAR____TtC7Measure10EditButton_editEnabled) = 1;
  *(v0 + OBJC_IVAR____TtC7Measure10EditButton_isInputEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC7Measure10EditButton_isShowingAccessibilityHUD) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100083CAC()
{
  v1 = sub_10000F974(&qword_1004A2D60, &unk_1003DEA40);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = type metadata accessor for UIPointerEffect();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = [objc_allocWithZone(UIPreviewParameters) init];
  [v0 bounds];
  CGRect.center.getter();
  [v0 bounds];
  CGRect.init(centerPoint:size:)();
  v13 = [objc_opt_self() bezierPathWithOvalInRect:{v9, v10, v11, v12}];
  [v8 setVisiblePath:v13];

  sub_100040E00();
  *v7 = [objc_allocWithZone(UITargetedPreview) initWithView:v0 parameters:v8];
  (*(v5 + 104))(v7, enum case for UIPointerEffect.lift(_:), v4);
  v14 = type metadata accessor for UIPointerShape();
  (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
  v15 = UIPointerStyle.init(effect:shape:)();

  return v15;
}

uint64_t sub_100083F14()
{

  return _swift_deallocObject(v0, 28, 7);
}

double sub_100083F4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_100083F8C()
{
  v1 = v0;
  KeyPath = swift_getKeyPath();
  v3 = sub_10000F974(&unk_1004A72D0, &qword_1003D5850);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v4 = qword_1004D5058;
  v5 = *(v3 + 272);
  swift_retain_n();
  *(v1 + 80) = v5(KeyPath, v4);
  v6 = sub_10000F974(&qword_1004A11D8, &qword_1003DD120);
  v7 = swift_getKeyPath();
  v8 = *(v6 + 272);

  *(v1 + 88) = v8(v7, v4);
  v9 = sub_10000F974(&qword_1004A11E0, &qword_1003E1650);
  v10 = swift_getKeyPath();
  v11 = *(v9 + 272);

  *(v1 + 96) = v11(v10, v4);
  v12 = swift_getKeyPath();
  v13 = *(sub_10000F974(&qword_1004A4F28, &qword_1003D9370) + 272);

  *(v1 + 104) = v13(v12, v4);
  v14 = sub_10000F974(&qword_1004A3F50, &qword_1003D8110);
  v15 = swift_getKeyPath();
  v16 = *(v14 + 272);

  *(v1 + 112) = v16(v15, v4);
  v17 = sub_10000F974(&qword_1004A2C60, &qword_1003E1620);
  v18 = swift_getKeyPath();
  *(v1 + 120) = (*(v17 + 272))(v18, v4);
  v19 = sub_10000F974(&qword_1004A2C80, &qword_1003E1140);
  v20 = swift_getKeyPath();
  *(v1 + 128) = (*(v19 + 272))(v20, v4);
  *(v1 + 136) = 0x8000000000000000;
  *(v1 + 144) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_100084250()
{

  StateValue.ifUpdated(_:)();

  StateValue.ifUpdated(_:)();

  StateValue.ifUpdated(_:)();

  if ([objc_opt_self() jasperAvailable])
  {

    StateValue.ifUpdated(_:)();
  }

  StateValue.ifUpdated(_:)();

  return result;
}

void sub_100084388(unint64_t a1)
{
  v2 = v1;
  v35 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin(v3);
  v32 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v30 = *(v5 - 8);
  v31 = v5;
  __chkstk_darwin(v5);
  v29 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v1 + 136);
  if (v28 >> 62)
  {
    sub_100071684(v28);

    StateValue.wrappedValue.getter();

    v8 = aBlock;
    v9 = v37;
    v10 = v38;
    if (!sub_1001CA154(&off_100464F30, aBlock, v37, v38))
    {
      sub_1001CA154(&off_100464F58, v8, v9, v10);
    }
  }

  else
  {
    v7 = v28;
  }

  StateValue.wrappedValue.getter();

  v11 = sub_1001C95B8(1, aBlock, v37, v38);

  StateValue.wrappedValue.getter();

  v12 = sub_1001C98F0(aBlock, v37, v38);

  StateValue.wrappedValue.getter();

  v13 = aBlock;
  v14 = v37;

  StateValue.wrappedValue.getter();

  v15 = sub_1000855D8(v14, aBlock, v37, v38);

  sub_10004D9B4();
  v27 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  v17 = v35;
  *(v16 + 16) = v2;
  *(v16 + 24) = v17;
  *(v16 + 32) = v11;
  *(v16 + 40) = !v12;
  *(v16 + 41) = v15;
  v18 = v28;
  *(v16 + 48) = v28;
  v40 = sub_100086118;
  v41 = v16;
  aBlock = _NSConcreteStackBlock;
  v37 = 1107296256;
  v38 = sub_100041180;
  v39 = &unk_10046AFE0;
  v19 = _Block_copy(&aBlock);
  sub_100071684(v18);

  sub_100071684(v17);
  v20 = v11;

  v21 = v29;
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_10003180C();
  sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
  sub_100031864();
  v22 = v32;
  v23 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = v27;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  sub_10001B360(v18);
  (*(v33 + 8))(v22, v23);
  (*(v30 + 8))(v21, v31);
  v25 = *(v2 + 136);
  *(v2 + 136) = v17;
  sub_100071684(v17);
  sub_10001B360(v25);
}

void sub_100084844(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];

  StateValue.wrappedValue.getter();

  sub_1000848F0(v8, v3, v4, v5);
  v6 = *(a2 + 136);
  sub_100071684(v6);
  sub_100084388(v6);
  sub_10001B360(v6);
}

void sub_1000848F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;

  StateValue.wrappedValue.getter();

  v10 = sub_1001C95B8(1, v19, v20, v21);

  if (v10)
  {
LABEL_2:

    goto LABEL_3;
  }

  v17 = *(*(v5 + 64) + qword_1004A4F38);
  if (v17 && *(v17 + OBJC_IVAR____TtC7Measure18UndoButtonSolarium_isEnabled) == 1)
  {
    v10 = v17;
    sub_1001B2F18(0);
    v18 = *&v10[OBJC_IVAR____TtC7Measure18UndoButtonSolarium_undoButton];
    if (v18)
    {
      [v18 setUserInteractionEnabled:0];
    }

    goto LABEL_2;
  }

LABEL_3:
  v11 = *(v5 + 64);
  v12 = sub_1000855D8(a1, a2, a3, a4);
  v13 = *(v11 + qword_1004A4F50);
  if (v13)
  {
    v14 = v13[OBJC_IVAR____TtC7Measure18EditButtonSolarium_isInputEnabled];
    v13[OBJC_IVAR____TtC7Measure18EditButtonSolarium_isInputEnabled] = v12;
    if (v12 != v14 && v13[OBJC_IVAR____TtC7Measure18EditButtonSolarium_editEnabled] == 1)
    {
      if (v12)
      {
        v15 = 1.0;
      }

      else
      {
        v15 = 0.5;
      }

      v16 = v13;
      sub_10013833C(v15);
    }
  }
}

void sub_100084AA0(uint64_t a1, uint64_t a2)
{

  StateValue.wrappedValue.getter();

  StateValue.wrappedValue.getter();

  v2 = 0.0;
  if (v3 & 1 | ((v4 & 1) == 0))
  {
    v2 = 1.0;
  }

  sub_100085488(v2);
}

void sub_100084B2C(uint64_t a1, uint64_t a2)
{

  StateValue.wrappedValue.getter();

  if ((v4 & 1) == 0)
  {

    StateValue.wrappedValue.getter();

    v2 = 1.0;
    if (v3)
    {
      v2 = 0.0;
    }

    sub_100085488(v2);
  }
}

double sub_100084BB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);

  StateValue.wrappedValue.getter();

  sub_1000848F0(v2, v4, v5, v6);

  return result;
}

void sub_100084C40()
{

  v1 = *(v0 + 136);

  sub_10001B360(v1);
}

uint64_t sub_100084CB0()
{
  v0 = StateObserver.deinit();

  sub_10001B360(*(v0 + 136));
  return v0;
}

uint64_t sub_100084D28()
{
  sub_100084CB0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EditController(uint64_t a1)
{
  result = qword_1004A4DC8;
  if (!qword_1004A4DC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100084E30()
{
  result = qword_1004A4F20;
  if (!qword_1004A4F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A4F20);
  }

  return result;
}

double sub_100084ED4(uint64_t a1, uint64_t a2, __n128 a3)
{
  sub_10008E8B4(9uLL, a3);
  v5 = *(*(a2 + 64) + qword_1004A4F38);
  if (v5 && *(v5 + OBJC_IVAR____TtC7Measure18UndoButtonSolarium_isEnabled) == 1)
  {
    v6 = v5;
    sub_1001B2F18(0);
    v7 = *&v6[OBJC_IVAR____TtC7Measure18UndoButtonSolarium_undoButton];
    if (v7)
    {
      [v7 setUserInteractionEnabled:0];
    }
  }

  return sub_1000867B4(0, v4);
}

void sub_100084F78()
{
  v1 = type metadata accessor for DebugSessionCoordinator.RecordReplayState(0);
  *&v2 = __chkstk_darwin(v1).n128_u64[0];
  v4 = (&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + 64);
  v6 = *(v5 + qword_1004A4F58);
  if (v6)
  {
    [v6 setEnabled:{0, v2}];
  }

  v7 = *(v5 + qword_1004A4F60);
  if (v7)
  {
    [v7 setEnabled:{0, v2}];
  }

  v8 = swift_allocObject();
  swift_weakInit();

  sub_100034F84(sub_100085F68, v8);

  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  v9 = qword_1004D4AD0;
  if (qword_1004D4AD0)
  {
    v10 = qword_1004ACA08;
    swift_beginAccess();
    sub_100085F70(v9 + v10, v4);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v11 = *v4;
      v12 = v9;
      v13 = sub_1000E0CE8();

      sub_100072394(5, 0, 0, 1);
    }

    else
    {
      sub_100085FD4(v4);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10008515C(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004D9B4();
  v10 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_100086030;
  aBlock[5] = a1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = &unk_10046AF40;
  v11 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10003180C();
  sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
  sub_100031864();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

void sub_1000853CC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 64);

    v3 = *&v2[qword_1004A4F58];
    if (v3)
    {
      [v3 setEnabled:1];
    }

    v4 = *&v2[qword_1004A4F60];
    if (v4)
    {
      v5 = v4;
      [v5 setEnabled:1];
    }
  }
}

void sub_100085488(double a1)
{
  [*(v1 + 64) alpha];
  if (v3 != a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    *(v4 + 24) = a1;
    v5 = objc_allocWithZone(UIViewPropertyAnimator);
    v8[4] = sub_1000860B0;
    v8[5] = v4;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_100041180;
    v8[3] = &unk_10046AF90;
    v6 = _Block_copy(v8);

    v7 = [v5 initWithDuration:v6 dampingRatio:0.5 animations:0.6];
    _Block_release(v6);
    [v7 setInterruptible:0];
    [v7 startAnimation];
  }
}

BOOL sub_1000855D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 144))
  {
    return 0;
  }

  StateValue.wrappedValue.getter();

  if (v22 >> 62 == 1)
  {
    sub_10001B360(v22);
    return 0;
  }

  if (v22 >> 62 == 2 && v22 == 0x8000000000000020)
  {
    return 0;
  }

  sub_10001B360(v22);
  if (a1)
  {
    v11 = *((swift_isaMask & *a1) + 0xD0);
    v12 = a1;
    v13 = v11();

    if (v13 != 4)
    {
      return 1;
    }
  }

  v14 = sub_1001C9E48(a2, a3, a4);
  v15 = v14;
  if (v14 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v17 = 0;
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v18 = *(v15 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if ((*((swift_isaMask & *v18) + 0xD0))() == 6)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v17;
      if (v20 == i)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

LABEL_28:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v21 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v21 = *&_swiftEmptyArrayStorage[2];
  }

  return v21 != 0;
}

void sub_100085840(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  sub_100086324(a2, a3 != 0, a4, a5, a7);
  if (a6 == 0x8000000000000010)
  {
    if (qword_1004A0188 != -1)
    {
      swift_once();
    }

    sub_10008A8FC(7u);

    Synchronized.wrappedValue.getter();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1000BB308(1, 2, isUniquelyReferenced_nonNull_native, v10);
    Synchronized.wrappedValue.setter();

    Synchronized.wrappedValue.getter();
    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000BB308(1, 1, v11, v12);
    Synchronized.wrappedValue.setter();
  }

  if (a2 >> 62 == 2 && (a2 | 8) == 0x8000000000000018)
  {
    if (qword_1004A0188 != -1)
    {
      swift_once();
    }

    sub_10008A8FC(6u);

    StateValue.wrappedValue.getter();

    if (v19)
    {
      v13 = *(*((swift_isaMask & *v19) + 0x2C0))();
      (*(v13 + 368))();

      if (simd_float4x4.isAlmostHorizontal(marginInDegrees:)(10.0) && (*((swift_isaMask & *v19) + 0x2F0))() < 3)
      {

        Synchronized.wrappedValue.getter();
        v14 = swift_isUniquelyReferenced_nonNull_native();
        sub_1000BB308(1, 1, v14, v15);
        Synchronized.wrappedValue.setter();

        Synchronized.wrappedValue.getter();
        v16 = swift_isUniquelyReferenced_nonNull_native();
        sub_1000BB308(1, 2, v16, v17);
        Synchronized.wrappedValue.setter();
      }
    }
  }
}

double sub_100085BFC@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(*a1 + 120);

  return result;
}

uint64_t sub_100085C0C(void *a1, uint64_t a2)
{
  v3 = v2;
  KeyPath = swift_getKeyPath();
  v7 = sub_10000F974(&unk_1004A72D0, &qword_1003D5850);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v8 = qword_1004D5058;
  v9 = *(v7 + 272);
  swift_retain_n();
  *(v3 + 80) = v9(KeyPath, v8);
  v10 = sub_10000F974(&qword_1004A11D8, &qword_1003DD120);
  v11 = swift_getKeyPath();
  v12 = *(v10 + 272);

  *(v3 + 88) = v12(v11, v8);
  v13 = sub_10000F974(&qword_1004A11E0, &qword_1003E1650);
  v14 = swift_getKeyPath();
  v15 = *(v13 + 272);

  *(v3 + 96) = v15(v14, v8);
  v16 = swift_getKeyPath();
  v17 = *(sub_10000F974(&qword_1004A4F28, &qword_1003D9370) + 272);

  *(v3 + 104) = v17(v16, v8);
  v18 = sub_10000F974(&qword_1004A3F50, &qword_1003D8110);
  v19 = swift_getKeyPath();
  v20 = *(v18 + 272);

  *(v3 + 112) = v20(v19, v8);
  v21 = sub_10000F974(&qword_1004A2C60, &qword_1003E1620);
  v22 = swift_getKeyPath();
  *(v3 + 120) = (*(v21 + 272))(v22, v8);
  v23 = sub_10000F974(&qword_1004A2C80, &qword_1003E1140);
  v24 = swift_getKeyPath();
  *(v3 + 128) = (*(v23 + 272))(v24, v8);
  *(v3 + 136) = 0x8000000000000000;
  *(v3 + 144) = 0;
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;
  v25 = a1;
  v26 = StateObserver.init(configuration:)();
  *&v25[qword_1004A4F30 + 8] = &off_10046AEF0;
  swift_unknownObjectWeakAssign();
  return v26;
}

double sub_100085F14@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(*a1 + 120);

  return result;
}

uint64_t sub_100085F30()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100085F70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugSessionCoordinator.RecordReplayState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100085FD4(uint64_t a1)
{
  v2 = type metadata accessor for DebugSessionCoordinator.RecordReplayState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_100086038(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100086078()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000860C8()
{

  sub_10001B360(*(v0 + 24));

  sub_10001B360(*(v0 + 48));

  return _swift_deallocObject(v0, 56, 7);
}

double sub_100086140()
{

  StateValue.ifUpdated(_:)();

  StateValue.ifUpdated(_:)();

  StateValue.ifUpdated(_:)();

  return result;
}

uint64_t sub_10008621C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(**(result + 80) + 200);
    v2 = result;

    v4 = v1(v3);

    v5 = *(*v4 + 280);
    swift_unknownObjectRetain();
    v5(sub_100089BCC, v2);
  }

  return result;
}

void sub_100086324(unint64_t a1, char a2, char a3, char a4, double a5)
{
  v6 = v5;
  v8 = qword_1004A4F50;
  v9 = *(v5 + qword_1004A4F50);
  if (v9)
  {
    v10 = v9[OBJC_IVAR____TtC7Measure18EditButtonSolarium_isInputEnabled];
    v9[OBJC_IVAR____TtC7Measure18EditButtonSolarium_isInputEnabled] = 1;
    if (v10 != 1 && v9[OBJC_IVAR____TtC7Measure18EditButtonSolarium_editEnabled] == 1)
    {
      v11 = a4;
      v12 = a3;
      v13 = a1;
      v14 = v9;
      sub_10013833C(1.0);

      a1 = v13;
      a3 = v12;
      a4 = v11;
    }
  }

  if (!(a1 >> 62))
  {
    sub_1000867B4(1, a5);
    v21 = *(v6 + qword_1004A4F38);
    if (!v21 || v21[OBJC_IVAR____TtC7Measure18UndoButtonSolarium_isEnabled] == (a2 & 1))
    {
      goto LABEL_25;
    }

    v22 = v21;
    sub_1001B2F18((a2 & 1));
    v23 = *&v22[OBJC_IVAR____TtC7Measure18UndoButtonSolarium_undoButton];
    if (v23)
    {
      [v23 setUserInteractionEnabled:a2 & 1];
    }

    goto LABEL_24;
  }

  if (a1 >> 62 != 1)
  {
    v25 = __ROR8__(a1 ^ 0x8000000000000000, 3);
    if (v25 > 1)
    {
      if (v25 != 2)
      {
        if (v25 != 3)
        {
          goto LABEL_7;
        }

        v26 = *(v6 + qword_1004A4F38);
        if (v26 && *(v26 + OBJC_IVAR____TtC7Measure18UndoButtonSolarium_isEnabled) == 1)
        {
          v27 = v26;
          sub_1001B2F18(0);
          v28 = *&v27[OBJC_IVAR____TtC7Measure18UndoButtonSolarium_undoButton];
          if (v28)
          {
            [v28 setUserInteractionEnabled:0];
          }
        }

        sub_1000867B4(0, a5);
        v24 = 0;
LABEL_26:

        sub_100086898(v24);
        return;
      }

      sub_1000867B4(1, a5);
      v33 = *(v6 + qword_1004A4F38);
      if (!v33 || (v33[OBJC_IVAR____TtC7Measure18UndoButtonSolarium_isEnabled] & 1) != 0)
      {
LABEL_25:
        v24 = 1;
        goto LABEL_26;
      }

      v22 = v33;
      sub_1001B2F18(1);
      v34 = *&v22[OBJC_IVAR____TtC7Measure18UndoButtonSolarium_undoButton];
      if (v34)
      {
        [v34 setUserInteractionEnabled:1];
      }

LABEL_24:

      goto LABEL_25;
    }

    v29 = a4;
    if (v25)
    {
      sub_1000867B4(a3 & 1, a5);
      v35 = *(v6 + qword_1004A4F38);
      if (v35 && *(v35 + OBJC_IVAR____TtC7Measure18UndoButtonSolarium_isEnabled) != (a2 & 1))
      {
        v31 = v35;
        sub_1001B2F18((a2 & 1));
        v36 = *&v31[OBJC_IVAR____TtC7Measure18UndoButtonSolarium_undoButton];
        if (v36)
        {
          [v36 setUserInteractionEnabled:a2 & 1];
        }

        goto LABEL_51;
      }
    }

    else
    {
      sub_1000867B4(0, a5);
      v30 = *(v6 + qword_1004A4F38);
      if (v30 && *(v30 + OBJC_IVAR____TtC7Measure18UndoButtonSolarium_isEnabled) == 1)
      {
        v31 = v30;
        sub_1001B2F18(0);
        v32 = *&v31[OBJC_IVAR____TtC7Measure18UndoButtonSolarium_undoButton];
        if (v32)
        {
          [v32 setUserInteractionEnabled:0];
        }

LABEL_51:
      }
    }

    sub_100086898(1);
    v37 = *(v6 + v8);
    if (!v37)
    {
      return;
    }

    v38 = v37[OBJC_IVAR____TtC7Measure18EditButtonSolarium_isInputEnabled];
    v37[OBJC_IVAR____TtC7Measure18EditButtonSolarium_isInputEnabled] = v29 & 1;
    if (v38 == (v29 & 1) || v37[OBJC_IVAR____TtC7Measure18EditButtonSolarium_editEnabled] != 1)
    {
      return;
    }

    v39 = v37;
    if (v29)
    {
      v20 = 1.0;
      goto LABEL_17;
    }

LABEL_16:
    v20 = 0.5;
LABEL_17:
    sub_10013833C(v20);

    return;
  }

LABEL_7:
  sub_1000867B4(a3 & 1, a5);
  v15 = *(v6 + qword_1004A4F38);
  if (v15 && *(v15 + OBJC_IVAR____TtC7Measure18UndoButtonSolarium_isEnabled) != (a2 & 1))
  {
    v16 = v15;
    sub_1001B2F18((a2 & 1));
    v17 = *&v16[OBJC_IVAR____TtC7Measure18UndoButtonSolarium_undoButton];
    if (v17)
    {
      [v17 setUserInteractionEnabled:a2 & 1];
    }
  }

  v18 = *(v6 + v8);
  if (v18)
  {
    v19 = v18[OBJC_IVAR____TtC7Measure18EditButtonSolarium_isInputEnabled];
    v18[OBJC_IVAR____TtC7Measure18EditButtonSolarium_isInputEnabled] = 0;
    if (v19 == 1 && v18[OBJC_IVAR____TtC7Measure18EditButtonSolarium_editEnabled] == 1)
    {
      v39 = v18;
      goto LABEL_16;
    }
  }
}

double sub_1000867B4(int a1, double result)
{
  v3 = *(v2 + qword_1004A4F40);
  if (!v3)
  {
    return v10;
  }

  v5 = *(v3 + 32);
  if (v5)
  {

    if ([v5 isEnabled])
    {
      if (a1)
      {
        goto LABEL_16;
      }

LABEL_12:
      v7 = *(v3 + 32);
      if (v7)
      {
        [v7 setEnabled:a1 & 1];
      }

      v8 = *(v3 + 40);
      if (v8)
      {
        v9 = v8;
        [v9 setEnabled:a1 & 1];
      }

      goto LABEL_16;
    }
  }

  else
  {
  }

  v6 = *(v3 + 40);
  if (v6)
  {
    if ((([v6 isEnabled] ^ a1) & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (a1)
  {
    goto LABEL_12;
  }

LABEL_16:

  return v10;
}

void sub_100086898(char a1)
{
  v2 = qword_1004A4F50;
  v3 = *(v1 + qword_1004A4F50);
  if (v3)
  {
    [*(v3 + OBJC_IVAR____TtC7Measure18EditButtonSolarium_editButton) setHidden:(a1 & 1) == 0];
    v5 = *(v1 + v2);
    if (v5)
    {
      v6 = v5[OBJC_IVAR____TtC7Measure18EditButtonSolarium_editEnabled];
      v5[OBJC_IVAR____TtC7Measure18EditButtonSolarium_editEnabled] = a1 & 1;
      if (v6 != (a1 & 1))
      {
        v8 = v5;
        v7 = 0.5;
        if (a1)
        {
          v7 = 1.0;
        }

        sub_10013833C(v7);
      }
    }
  }
}

void sub_10008696C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = v3;
  if (*(a2 + qword_1004A4F68) == 1)
  {
    v5 = *((swift_isaMask & *a2) + 0x298);
    v6 = a2;
    v5(v3);
  }

  else
  {
    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = sub_100088A24;
    *(v8 + 24) = v4;
    v12[4] = sub_100031688;
    v12[5] = v8;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_1000DC708;
    v12[3] = &unk_10046B0B8;
    v9 = _Block_copy(v12);
    v10 = a2;

    [v7 performWithoutAnimation:v9];
    _Block_release(v9);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_100086B68(uint64_t a1, uint64_t a2)
{

  StateValue.wrappedValue.getter();

  if (v8 == 2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = *(**(Strong + 80) + 200);
      v4 = Strong;

      v6 = v3(v5);

      v7 = *(*v6 + 280);
      swift_unknownObjectRetain();
      v7(sub_100089BCC, v4);
    }
  }
}

uint64_t sub_100086C94(uint64_t result, uint64_t a2)
{
  if (*result == 3)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v2 = *(**(result + 80) + 200);
      v3 = result;

      v5 = v2(v4);

      v6 = *(*v5 + 280);
      swift_unknownObjectRetain();
      v6(sub_1000889E4, v3);
    }
  }

  return result;
}

void sub_10008717C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[qword_1004A4F30 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[qword_1004A4F38] = 0;
  *&v4[qword_1004A4F40] = 0;
  *&v4[qword_1004A4F48] = 0;
  *&v4[qword_1004A4F50] = 0;
  *&v4[qword_1004A4F58] = 0;
  *&v4[qword_1004A4F60] = 0;
  v4[qword_1004A4F68] = 0;
  *&v4[qword_1004A4F70] = 0;
  v10 = qword_1004A4F78;
  v11 = sub_10000F974(&unk_1004A6950, &qword_1003DAF60);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v13 = qword_1004D5058;
  v14 = *(v11 + 272);
  swift_retain_n();
  *&v5[v10] = v14(KeyPath, v13);
  v15 = qword_1004A4F80;
  v16 = sub_10000F974(&qword_1004A3F50, &qword_1003D8110);
  v17 = swift_getKeyPath();
  *&v5[v15] = (*(v16 + 272))(v17, v13);
  v18 = qword_1004A4F88;
  v19 = sub_10000F974(&qword_1004A53F8, &qword_1003D9528);
  v20 = swift_getKeyPath();
  *&v5[v18] = (*(v19 + 272))(v20, v13);
  v21 = qword_1004A4F90;
  *&v5[v21] = [objc_allocWithZone(UIView) init];
  v22 = qword_1004A4F98;
  type metadata accessor for TouchPassThroughView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v5[v22] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v24 = qword_1004A4FA0;
  *&v5[v24] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v25 = &v5[qword_1004A4FA8];
  *v25 = a1;
  v25[1] = a2;
  v25[2] = a3;
  v25[3] = a4;
  v42.receiver = v5;
  v42.super_class = type metadata accessor for EditView(0);
  v26 = objc_msgSendSuper2(&v42, "initWithFrame:", a1, a2, a3, a4);
  v27 = objc_allocWithZone(UIAccessibilityHUDGestureManager);
  v28 = v26;
  v29 = [v27 initWithView:v28 delegate:v28];
  v30 = *(v28 + qword_1004A4F70);
  *(v28 + qword_1004A4F70) = v29;

  v31 = objc_opt_self();
  v32 = swift_allocObject();
  *(v32 + 16) = v28;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_100089B6C;
  *(v33 + 24) = v32;
  v40 = sub_100089BB8;
  v41 = v33;
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 1107296256;
  v38[2] = sub_1000DC708;
  v39 = &unk_10046B248;
  v34 = _Block_copy(v38);

  [v31 performWithoutAnimation:v34];
  _Block_release(v34);
  LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

  if (v31)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v36 = (*((swift_isaMask & *v28) + 0x2E8))(v35);
  (*((swift_isaMask & *v28) + 0x2F0))(v36);
  if (![objc_opt_self() jasperAvailable])
  {
    goto LABEL_9;
  }

  (*((swift_isaMask & *v28) + 0x2F8))();
  sub_100018630(0, &qword_1004A1930, UIDevice_ptr);
  if ((static UIDevice.isIPad()() & 1) == 0)
  {
    goto LABEL_9;
  }

  v37 = *(v28 + qword_1004A4F48);
  if (!v37)
  {
    goto LABEL_11;
  }

  if (*(v37 + OBJC_IVAR____TtC7Measure21HistoryButtonSolarium_buttoniPad))
  {
    [*(v28 + qword_1004A4F98) addSubview:?];
LABEL_9:
    v39 = type metadata accessor for _GlassGroup();
    v40 = &protocol witness table for _GlassGroup;
    sub_1000315D4(v38);
    _GlassGroup.init(foreground:)();
    UIView._background.setter();

    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_10008770C(void *a1)
{

  StateValue.wrappedValue.getter();

  return (*((swift_isaMask & *a1) + 0x298))();
}

void sub_1000877F4()
{
  v1 = qword_1004A4F68;
  if ((*(v0 + qword_1004A4F68) & 1) == 0)
  {
    v2 = v0;
    v3 = qword_1004A4F90;
    v4 = *(v0 + qword_1004A4F90);
    [v2 bounds];
    [v4 setFrame:?];

    v5 = &selRef_runAction_completion_;
    [v2 addSubview:*(v2 + v3)];
    m22 = *&qword_1004A4F98;
    v7 = *(v2 + qword_1004A4F98);
    [v2 bounds];
    [v7 setFrame:?];

    [v2 addSubview:*(v2 + *&m22)];
    v8 = qword_1004A4FA0;
    v9 = *(v2 + qword_1004A4FA0);
    [v2 bounds];
    [v9 setFrame:?];

    v10 = [v2 addSubview:*(v2 + v8)];
    v11 = (*((swift_isaMask & *v2) + 0x2C8))(v10);
    v12 = (*((swift_isaMask & *v2) + 0x2D0))(v11);
    v13 = *(v2 + qword_1004A4F50);
    if (v13)
    {
      v14 = *(v2 + *&m22);
      v15 = *&v13[OBJC_IVAR____TtC7Measure18EditButtonSolarium_editButton];
      v16 = v13;
      [v14 addSubview:v15];
      *&v16[OBJC_IVAR____TtC7Measure18EditButtonSolarium_delegate + 8] = &off_10046B058;
      swift_unknownObjectWeakAssign();
    }

    v17 = qword_1004A4F38;
    v18 = *(v2 + qword_1004A4F38);
    if (v18)
    {
      *(v18 + OBJC_IVAR____TtC7Measure18UndoButtonSolarium_delegate + 8) = &off_10046B018;
      v12 = swift_unknownObjectWeakAssign();
      if (*(v18 + OBJC_IVAR____TtC7Measure18UndoButtonSolarium_undoButton))
      {
        v12 = [*(v2 + *&m22) addSubview:?];
      }
    }

    v19 = *(v2 + qword_1004A4F40);
    if (v19)
    {
      *(v19 + 24) = &off_10046B038;
      v12 = swift_unknownObjectWeakAssign();
      v20 = *(v19 + 40);
      if (v20)
      {
        v21 = objc_opt_self();

        v22 = v20;
        if (([v21 jasperAvailable] & 1) == 0)
        {
          v23 = *(v2 + *&m22);
          [v23 addSubview:v22];

          v22 = v23;
        }
      }
    }

    (*((swift_isaMask & *v2) + 0x2D8))(v12);
    v25 = *(v2 + qword_1004A4F58);
    if (!v25)
    {
      goto LABEL_17;
    }

    v26 = v25;
    [v2 frame];
    [v26 setFrame:?];
    [v26 setExclusiveTouch:1];
    [v26 addTarget:v2 action:"capture" forControlEvents:64];
    v27 = &selRef_runAction_completion_;
    v28 = [v26 layer];
    CGSize.init(_:_:)();
    [v28 setShadowOffset:?];

    v29 = [v26 layer];
    [v29 setShadowRadius:10.0];

    v30 = [v26 layer];
    LODWORD(v31) = 1036831949;
    [v30 setShadowOpacity:v31];

    v32 = qword_1004A0530;
    v33 = v26;
    if (v32 != -1)
    {
      goto LABEL_26;
    }

    while (1)
    {
      [v33 setTintColor:qword_1004D50A0];
      [*(v2 + *&m22) v5[408]];
      v34 = [v33 sizeToFit];
      v35 = (*((swift_isaMask & *v2) + 0x2A0))(v34);
      v37 = v36;
      v38 = [v33 v27[466]];

      CATransform3DMakeTranslation(&v53, v35, v37, 0.0);
      [v38 setTransform:&v53];

      [v33 setAdjustsImageWhenDisabled:1];
      v39 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v40 = objc_allocWithZone(AVCaptureEventInteraction);
      *&v53.m21 = sub_1000898E8;
      *&v53.m22 = v39;
      *&v53.m11 = _NSConcreteStackBlock;
      *&v53.m12 = 1107296256;
      *&v53.m13 = sub_1000508F8;
      *&v53.m14 = &unk_10046B1D0;
      v41 = _Block_copy(&v53);

      v42 = [v40 initWithEventHandler:v41];
      _Block_release(v41);

      v43 = *(v2 + qword_1004A4F60);
      *(v2 + qword_1004A4F60) = v42;
      v44 = v42;

      if (v44)
      {
        v45 = *(v2 + *&m22);
        v46 = v44;
        v47 = v45;
        [v47 addInteraction:v46];
      }

LABEL_17:
      sub_1000867B4(0, v24);
      v48 = *(v2 + v17);
      if (v48 && *(v48 + OBJC_IVAR____TtC7Measure18UndoButtonSolarium_isEnabled) == 1)
      {
        v49 = v48;
        sub_1001B2F18(0);
        v50 = *&v49[OBJC_IVAR____TtC7Measure18UndoButtonSolarium_undoButton];
        if (v50)
        {
          [v50 setUserInteractionEnabled:0];
        }
      }

      v1[v2] = 1;
      v51 = objc_opt_self();
      v33 = swift_allocObject();
      v33[2] = v2;
      v27 = swift_allocObject();
      v27[2] = sub_1000898E0;
      v27[3] = v33;
      *&v53.m21 = sub_100089BB8;
      *&v53.m22 = v27;
      *&v53.m11 = _NSConcreteStackBlock;
      *&v53.m12 = 1107296256;
      *&v53.m13 = sub_1000DC708;
      *&v53.m14 = &unk_10046B1A8;
      v1 = _Block_copy(&v53);
      m22 = v53.m22;
      v5 = v2;

      [v51 performWithoutAnimation:v1];
      _Block_release(v1);
      LOBYTE(v51) = swift_isEscapingClosureAtFileLocation();

      if ((v51 & 1) == 0)
      {
        break;
      }

      __break(1u);
LABEL_26:
      swift_once();
    }

    (*((swift_isaMask & *v5) + 0x2E0))(v52);
  }
}

void sub_10008804C(void *a1, uint64_t a2)
{
  v2 = [a1 phase];
  if (v2 == 2)
  {
    goto LABEL_7;
  }

  if (v2 == 1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = *(Strong + qword_1004A4F58);
      v12 = Strong;
      v13 = v11;

      if (v11)
      {
        [v13 setHighlighted:0];
      }
    }

    swift_beginAccess();
    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      v6 = v14;
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_100084F78();
        swift_unknownObjectRelease();
      }

      goto LABEL_17;
    }

    return;
  }

  if (v2)
  {
LABEL_7:
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = *(v7 + qword_1004A4F58);
      v9 = v7;
      v6 = v8;

      if (v8)
      {
        [v6 setHighlighted:0];
        goto LABEL_17;
      }
    }
  }

  else
  {
    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = *(v3 + qword_1004A4F58);
      v5 = v3;
      v6 = v4;

      if (v4)
      {
        [v6 setHighlighted:1];
LABEL_17:
      }
    }
  }
}

uint64_t sub_1000881EC(void *a1)
{
  (*((swift_isaMask & *a1) + 0x300))();

  StateValue.wrappedValue.getter();

  return (*((swift_isaMask & *a1) + 0x298))();
}

void sub_1000882C8(void *a1)
{
  v1 = a1;
  sub_1000877F4();
}

double sub_100088310(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(**(Strong + 80) + 200);

    v6 = v4(v5);

    (*(*v6 + 280))(a1, 0);
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_100088408(void *a1)
{
  v1 = a1;
  sub_100088310(sub_100084E84);
}

void sub_100088468(char *a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = a1;
    sub_100084F78();
    swift_unknownObjectRelease();
  }
}

id sub_1000884E0(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = a1;
  v8 = sub_100088A9C();

  return v8;
}

void sub_100088554(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [a2 setHighlighted:0];
    v5 = qword_1004A4F50;
    v6 = *&v4[qword_1004A4F50];
    if (v6 && [a2 isDescendantOfView:*(v6 + OBJC_IVAR____TtC7Measure18EditButtonSolarium_editButton)])
    {
      v7 = *&v4[v5];
      v8 = v7;

      if (!v7)
      {
        return;
      }

      v8[OBJC_IVAR____TtC7Measure18EditButtonSolarium_isShowingAccessibilityHUD] = 1;
      v4 = v8;
    }
  }
}

void sub_100088624(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = a1;
  sub_1000893B8(a2, a3);
}

void sub_1000886A4()
{
  sub_10001B9D0(v0 + qword_1004A4F30);

  v1 = *(v0 + qword_1004A4FA0);
}

id sub_1000887A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000887DC(uint64_t a1)
{
  sub_10001B9D0(a1 + qword_1004A4F30);

  v2 = *(a1 + qword_1004A4FA0);
}

uint64_t type metadata accessor for EditView(uint64_t a1)
{
  result = qword_1004A5038;
  if (!qword_1004A5038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000889EC()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_100088A84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_100088A9C()
{
  v1 = v0;
  result = [v0 hitTest:0 withEvent:?];
  if (result)
  {
    v3 = result;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (!v4)
    {

      return 0;
    }

    v5 = v4;
    objc_opt_self();
    object = swift_dynamicCastObjCClass();
    if (object)
    {
      v7 = v3;
      v8 = [object imageView];
      v9 = [v8 image];

      v10 = [object titleForState:0];
      if (v10)
      {
        v11 = v10;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        object = v12;
      }

      else
      {

        object = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v13 = *&v1[qword_1004A4F38];
    if (v13)
    {
      v14 = *(v13 + OBJC_IVAR____TtC7Measure18UndoButtonSolarium_undoButton);
      if (v14)
      {
        v15 = v14;
        if ([v5 isDescendantOfView:v15])
        {

          v16 = [objc_opt_self() mainBundle];
          v82._object = 0xE000000000000000;
          v17._object = 0x8000000100403AD0;
          v17._countAndFlagsBits = 0xD00000000000001FLL;
          v18._countAndFlagsBits = 0;
          v18._object = 0xE000000000000000;
          v82._countAndFlagsBits = 0;
          object = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v82)._object;
        }
      }
    }

    v19 = *&v1[qword_1004A4F40];
    if (v19)
    {
      v20 = *(v19 + 40);
      if (v20)
      {
        v21 = v20;
        if ([v5 isDescendantOfView:v21])
        {

          v22 = [objc_opt_self() mainBundle];
          v23._countAndFlagsBits = 0xD000000000000012;
          v83._object = 0xE000000000000000;
          v23._object = 0x8000000100403AB0;
          v24._countAndFlagsBits = 0;
          v24._object = 0xE000000000000000;
          v83._countAndFlagsBits = 0;
          object = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v83)._object;
        }
      }
    }

    v25 = *&v1[qword_1004A4F58];
    if (v25)
    {
      v26 = v25;
      if ([v5 isDescendantOfView:v26])
      {

        v27 = [objc_opt_self() mainBundle];
        v84._object = 0xE000000000000000;
        v28._countAndFlagsBits = 0xD000000000000022;
        v28._object = 0x8000000100403A80;
        v29._countAndFlagsBits = 0;
        v29._object = 0xE000000000000000;
        v84._countAndFlagsBits = 0;
        object = NSLocalizedString(_:tableName:bundle:value:comment:)(v28, 0, v27, v29, v84)._object;
      }
    }

    v30 = qword_1004A4F50;
    v31 = *&v1[qword_1004A4F50];
    if (v31)
    {
      v32 = *(v31 + OBJC_IVAR____TtC7Measure18EditButtonSolarium_editButton);
      if ([v5 isDescendantOfView:v32])
      {

        v33 = [objc_opt_self() mainBundle];
        v85._object = 0xE000000000000000;
        v34._object = 0x8000000100403A60;
        v34._countAndFlagsBits = 0xD00000000000001FLL;
        v35._countAndFlagsBits = 0;
        v35._object = 0xE000000000000000;
        v85._countAndFlagsBits = 0;
        object = NSLocalizedString(_:tableName:bundle:value:comment:)(v34, 0, v33, v35, v85)._object;

        v36 = *&v1[v30];
        if (v36)
        {
          *(v36 + OBJC_IVAR____TtC7Measure18EditButtonSolarium_isShowingAccessibilityHUD) = 1;
        }
      }

      else
      {
      }
    }

    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    if (!v9 || (v40 = v9, v41 = [v40 CGImage], v40, !v41))
    {
      if (object)
      {
        v52 = String._bridgeToObjectiveC()();
      }

      else
      {
        v52 = 0;
      }

      v53 = [objc_allocWithZone(UIAccessibilityHUDItem) initWithTitle:v52 image:v9 imageInsets:{UIEdgeInsetsZero.top, left, bottom, right}];

      return v53;
    }

    v42 = objc_opt_self();
    v43 = [v42 sharedApplication];
    v44 = [v43 preferredContentSizeCategory];

    LOBYTE(v43) = UIContentSizeCategory.isAccessibilityCategory.getter();
    v45 = 1.0;
    if ((v43 & 1) == 0)
    {
LABEL_42:
      v56 = v41;
      [v40 scale];
      v58 = [objc_allocWithZone(UIImage) initWithCGImage:v56 scale:0 orientation:v45 * v57];

      v59 = [v58 imageWithRenderingMode:2];
      v60 = v59;
      if (object)
      {
        v61 = String._bridgeToObjectiveC()();
      }

      else
      {
        v61 = 0;
      }

      v53 = [objc_allocWithZone(UIAccessibilityHUDItem) initWithTitle:v61 image:v59 imageInsets:{UIEdgeInsetsZero.top, left, bottom, right}];

      return v53;
    }

    v46 = [v42 sharedApplication];
    v47 = [v46 preferredContentSizeCategory];

    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;
    if (v48 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v50 == v51)
    {
    }

    else
    {
      v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v54 & 1) == 0)
      {
        v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v64 = v63;
        if (v62 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v64 == v65)
        {
        }

        else
        {
          v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v66 & 1) == 0)
          {
            v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v69 = v68;
            if (v67 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v69 == v70)
            {

              v45 = 0.5;
              goto LABEL_42;
            }

            v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v71)
            {

              v45 = 0.5;
              goto LABEL_42;
            }

            v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v74 = v73;
            if (v72 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v74 == v75)
            {
            }

            else
            {
              v76 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v76 & 1) == 0)
              {
                v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v79 = v78;
                if (v77 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v79 == v80)
                {
                }

                else
                {
                  v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if ((v81 & 1) == 0)
                  {
                    goto LABEL_42;
                  }
                }

                *&v55 = 0.7;
                goto LABEL_41;
              }
            }

            *&v55 = 0.6;
LABEL_41:
            v45 = *&v55;
            goto LABEL_42;
          }
        }

        v45 = 0.4;
        goto LABEL_42;
      }
    }

    *&v55 = 0.3;
    goto LABEL_41;
  }

  return result;
}

void sub_1000893B8(double a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchTime();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v28 - v18;
  v33 = [v3 hitTest:0 withEvent:{a1, a2}];
  if (v33)
  {
    v31 = v10;
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (v20)
    {
      v21 = v20;
      [v20 setHighlighted:1];
      [v21 sendActionsForControlEvents:64];
      sub_100018630(0, &qword_1004A3F00, OS_dispatch_queue_ptr);
      v30 = v9;
      v28 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      + infix(_:_:)();
      v29 = *(v14 + 8);
      v29(v16, v13);
      v22 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      *(v23 + 24) = v21;
      aBlock[4] = sub_1000898A0;
      aBlock[5] = v23;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100041180;
      aBlock[3] = &unk_10046B130;
      v24 = _Block_copy(aBlock);
      v25 = v33;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10003180C();
      sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
      sub_100031864();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v26 = v28;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v24);

      (*(v32 + 8))(v8, v6);
      (*(v31 + 8))(v12, v30);
      v29(v19, v13);
    }

    else
    {
      v27 = v33;
    }
  }
}

uint64_t sub_100089828(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_100089860()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000898A8()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000898F0()
{
  v1 = v0;
  *(v0 + qword_1004A4F30 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + qword_1004A4F38) = 0;
  *(v0 + qword_1004A4F40) = 0;
  *(v0 + qword_1004A4F48) = 0;
  *(v0 + qword_1004A4F50) = 0;
  *(v0 + qword_1004A4F58) = 0;
  *(v0 + qword_1004A4F60) = 0;
  *(v0 + qword_1004A4F68) = 0;
  *(v0 + qword_1004A4F70) = 0;
  v2 = qword_1004A4F78;
  v3 = sub_10000F974(&unk_1004A6950, &qword_1003DAF60);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v5 = qword_1004D5058;
  v6 = *(v3 + 272);
  swift_retain_n();
  *(v1 + v2) = v6(KeyPath, v5);
  v7 = qword_1004A4F80;
  v8 = sub_10000F974(&qword_1004A3F50, &qword_1003D8110);
  v9 = swift_getKeyPath();
  *(v1 + v7) = (*(v8 + 272))(v9, v5);
  v10 = qword_1004A4F88;
  v11 = sub_10000F974(&qword_1004A53F8, &qword_1003D9528);
  v12 = swift_getKeyPath();
  *(v1 + v10) = (*(v11 + 272))(v12, v5);
  v13 = qword_1004A4F90;
  *(v1 + v13) = [objc_allocWithZone(UIView) init];
  v14 = qword_1004A4F98;
  type metadata accessor for TouchPassThroughView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v1 + v14) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v16 = qword_1004A4FA0;
  *(v1 + v16) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100089BD4()
{
  swift_getObjectType();
  v1 = sub_10008A35C();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 imageWithRenderingMode:2];

    v4 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v3 style:0 target:v0 action:"showHistory"];
    v5 = OBJC_IVAR____TtC7Measure21HistoryButtonSolarium_buttoniPhone;
    v6 = *(v0 + OBJC_IVAR____TtC7Measure21HistoryButtonSolarium_buttoniPhone);
    *(v0 + OBJC_IVAR____TtC7Measure21HistoryButtonSolarium_buttoniPhone) = v4;

    v7 = *(v0 + v5);
    if (v7)
    {
      swift_getMetatypeMetadata();
      v8 = v7;
      String.init<A>(describing:)();
      v9 = String._bridgeToObjectiveC()();

      [v8 setAccessibilityIdentifier:v9];

      v10 = *(v0 + v5);
      if (v10)
      {
        [v10 setEnabled:0];
        v11 = *(v0 + v5);
        if (v11)
        {
          v12 = objc_opt_self();
          v13 = v11;
          v14 = [v12 whiteColor];
          [v13 setTintColor:v14];
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100089D58(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for _Glass._GlassVariant();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for _Glass();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v43[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10008A35C();
  if (v16)
  {
    v17 = v16;
    v18 = [v16 imageWithRenderingMode:2];

    v19 = [objc_allocWithZone(UIButton) initWithFrame:{a1, a2, a3, a4}];
    v20 = OBJC_IVAR____TtC7Measure21HistoryButtonSolarium_buttoniPad;
    v21 = *(v4 + OBJC_IVAR____TtC7Measure21HistoryButtonSolarium_buttoniPad);
    *(v4 + OBJC_IVAR____TtC7Measure21HistoryButtonSolarium_buttoniPad) = v19;

    v22 = *(v4 + v20);
    if (v22)
    {
      [v22 setImage:v18 forState:0];
      v23 = *(v4 + v20);
      if (v23)
      {
        [v23 addTarget:v4 action:"showHistory" forControlEvents:64];
        v24 = *(v4 + v20);
        if (v24)
        {
          [v24 setEnabled:0];
          v25 = *(v4 + v20);
          if (v25)
          {
            v26 = objc_opt_self();
            v27 = v25;
            v28 = [v26 whiteColor];
            [v27 setTintColor:v28];

            v29 = *(v4 + v20);
            if (v29)
            {
              v43[0] = ObjectType;
              swift_getMetatypeMetadata();
              v30 = v29;
              String.init<A>(describing:)();
              v31 = String._bridgeToObjectiveC()();

              [v30 setAccessibilityIdentifier:v31];

              v32 = *(v4 + v20);
              if (v32)
              {
                v33 = v32;
                static _Glass._GlassVariant.regular.getter();
                _Glass.init(_:smoothness:)();
                v43[3] = v12;
                v43[4] = &protocol witness table for _Glass;
                sub_1000315D4(v43);
                _Glass.flexible(_:)();
                (*(v13 + 8))(v15, v12);
                UIView._background.setter();

                v34 = *(v4 + v20);
                if (v34)
                {
                  v35 = [v34 layer];
                  [v35 setMasksToBounds:1];

                  v36 = *(v5 + v20);
                  if (v36)
                  {
                    v37 = [v36 layer];
                    v44.origin.x = a1;
                    v44.origin.y = a2;
                    v44.size.width = a3;
                    v44.size.height = a4;
                    [v37 setCornerRadius:CGRectGetWidth(v44) * 0.5];
                  }
                }
              }
            }
          }
        }
      }
    }

    v38 = [objc_allocWithZone(UIPointerInteraction) initWithDelegate:v5];
    v39 = *(v5 + v20);
    if (v39)
    {
      v40 = v39;
      v41 = v38;
      [v40 addInteraction:v41];
    }
  }

  else
  {
    __break(1u);
  }
}

double sub_10008A204()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Measure21HistoryButtonSolarium_buttoniPhone);
  if (v1 && ([v1 isEnabled] & 1) != 0 || (v3 = *(v0 + OBJC_IVAR____TtC7Measure21HistoryButtonSolarium_buttoniPad)) != 0 && objc_msgSend(v3, "isEnabled"))
  {
    v4 = *(v0 + OBJC_IVAR____TtC7Measure21HistoryButtonSolarium_tapHandler);
    if (v4)
    {
      v5 = *(v0 + OBJC_IVAR____TtC7Measure21HistoryButtonSolarium_tapHandler + 8);

      v4(v6);

      return sub_1000223C4(v4, v5);
    }
  }

  return result;
}

id sub_10008A35C()
{
  v0 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryLarge];
  v1 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline compatibleWithTraitCollection:v0];
  [v1 pointSize];
  v3 = [objc_opt_self() configurationWithPointSize:7 weight:3 scale:v2];
  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() systemImageNamed:v4 withConfiguration:v3];

  return v5;
}

char *sub_10008A4A4(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  ObjectType = swift_getObjectType();
  v14 = &v6[OBJC_IVAR____TtC7Measure21HistoryButtonSolarium_tapHandler];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v6[OBJC_IVAR____TtC7Measure21HistoryButtonSolarium_buttoniPhone] = 0;
  *&v6[OBJC_IVAR____TtC7Measure21HistoryButtonSolarium_buttoniPad] = 0;
  v23.receiver = v6;
  v23.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v23, "init");
  v16 = &v15[OBJC_IVAR____TtC7Measure21HistoryButtonSolarium_tapHandler];
  v17 = *&v15[OBJC_IVAR____TtC7Measure21HistoryButtonSolarium_tapHandler];
  v18 = *&v15[OBJC_IVAR____TtC7Measure21HistoryButtonSolarium_tapHandler + 8];
  *v16 = a1;
  *(v16 + 1) = a2;
  v19 = v15;

  sub_1000223C4(v17, v18);
  v20 = [objc_opt_self() currentDevice];
  v21 = [v20 userInterfaceIdiom];

  if (v21 == 1)
  {
    sub_100089D58(a3, a4, a5, a6);
LABEL_5:

    return v19;
  }

  if (!v21)
  {
    sub_100089BD4();
    goto LABEL_5;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10008A624()
{
  v1 = sub_10000F974(&qword_1004A2D60, &unk_1003DEA40);
  __chkstk_darwin(v1 - 8);
  v3 = &v22 - v2;
  v4 = type metadata accessor for UIPointerEffect();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v0 + OBJC_IVAR____TtC7Measure21HistoryButtonSolarium_buttoniPad);
  if (!v8)
  {
    return 0;
  }

  v9 = objc_allocWithZone(UIPreviewParameters);
  v10 = v8;
  v11 = [v9 init];
  v12 = v10;
  [v12 bounds];
  CGRect.center.getter();
  [v12 bounds];
  CGRect.init(centerPoint:size:)();
  v17 = [objc_opt_self() bezierPathWithOvalInRect:{v13, v14, v15, v16}];
  [v11 setVisiblePath:v17];

  sub_100040E00();
  v18 = [objc_allocWithZone(UITargetedPreview) initWithView:v12 parameters:v11];

  *v7 = v18;
  (*(v5 + 104))(v7, enum case for UIPointerEffect.lift(_:), v4);
  v19 = type metadata accessor for UIPointerShape();
  (*(*(v19 - 8) + 56))(v3, 1, 1, v19);
  v20 = UIPointerStyle.init(effect:shape:)();

  return v20;
}

double sub_10008A8C0()
{
  v0 = *effectiveStatusBarOrientation.unsafeMutableAddressor();
  result = 0.0;
  xmmword_1004D4AB8 = 0u;
  *&qword_1004D4AC8 = 0u;
  qword_1004D4AD8 = 0;
  qword_1004D4AE0 = v0;
  qword_1004D4B18 = 0;
  *&qword_1004D4AF8 = 0u;
  *&qword_1004D4B08 = 0u;
  xmmword_1004D4AE8 = 0u;
  return result;
}

void sub_10008A8FC(unsigned int a1)
{
  v2 = v1;
  v29 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  v7 = *(v1 + 40);
  v8 = *(v2 + 48);
  *v6 = v7;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v10 = *(v4 + 104);
  v10(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v11 = v7;
  v12 = _dispatchPreconditionTest(_:)();
  v28 = *(v4 + 8);
  v28(v6, v3);

  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  Synchronized.wrappedValue.getter();

  v13 = v29;
  if ((v30[0] & 1) != 0 || v8 == v29)
  {
LABEL_8:
    swift_beginAccess();
    v16 = *(v2 + 40);
    *v6 = v16;
    v10(v6, v9, v3);
    v17 = v16;
    LOBYTE(v16) = _dispatchPreconditionTest(_:)();
    v28(v6, v3);
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

  if ((v29 - 1) > 1u)
  {
    sub_10004D9B4();
    *v6 = static OS_dispatch_queue.main.getter();
    v10(v6, v9, v3);
    v18 = _dispatchPreconditionTest(_:)();
    v28(v6, v3);
    if ((v18 & 1) == 0)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v19 = *(**(v2 + 56) + 144);

    v19(v30, v20);

    if (((BYTE3(v30[0]) | BYTE4(v30[0])) & 1) == 0)
    {
      sub_10008AF48(v29);
    }

    swift_beginAccess();
    v21 = *(v2 + 40);
    *v6 = v21;
    v10(v6, v9, v3);
    v22 = v21;
    LOBYTE(v21) = _dispatchPreconditionTest(_:)();
    v28(v6, v3);
    if (v21)
    {
LABEL_19:
      *(v2 + 48) = v29;
      swift_endAccess();
      return;
    }

    __break(1u);
  }

  else if ((v8 & 0xFE) == 6)
  {
    swift_beginAccess();
    v14 = *(v2 + 40);
    *v6 = v14;
    v10(v6, v9, v3);
    v15 = v14;
    LOBYTE(v14) = _dispatchPreconditionTest(_:)();
    v28(v6, v3);
    if (v14)
    {
LABEL_9:
      *(v2 + 48) = v13;
      swift_endAccess();
      return;
    }

    __break(1u);
    goto LABEL_8;
  }

  sub_10004D9B4();
  *v6 = static OS_dispatch_queue.main.getter();
  v10(v6, v9, v3);
  v23 = _dispatchPreconditionTest(_:)();
  v28(v6, v3);
  if (v23)
  {
    v24 = *(**(v2 + 56) + 144);

    v24(v30, v25);

    if (((BYTE3(v30[0]) | BYTE4(v30[0])) & 1) == 0)
    {
      sub_10008AF48(v29);
    }

    swift_beginAccess();
    v26 = *(v2 + 40);
    *v6 = v26;
    v10(v6, v9, v3);
    v27 = v26;
    LOBYTE(v26) = _dispatchPreconditionTest(_:)();
    v28(v6, v3);
    if ((v26 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

uint64_t sub_10008ADB4()
{
  type metadata accessor for FeedbackGenerator();
  swift_allocObject();
  result = sub_10008ADF0();
  qword_1004D4B20 = result;
  return result;
}

uint64_t sub_10008ADF0()
{
  v1 = v0;
  sub_10000F974(&qword_1004A5508, &qword_1003D9648);
  swift_allocObject();
  *(v0 + 16) = Synchronized.init(wrappedValue:)();
  sub_10004D9B4();
  *(v0 + 24) = static OS_dispatch_queue.main.getter();
  *(v0 + 32) = 0;
  *(v0 + 40) = static OS_dispatch_queue.main.getter();
  *(v0 + 48) = 0;
  KeyPath = swift_getKeyPath();
  v3 = sub_10000F974(&unk_1004A1940, &unk_1003D65A0);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v4 = qword_1004D5058;
  v5 = *(v3 + 272);

  *(v1 + 56) = v5(KeyPath, v4);
  sub_10000F974(&qword_1004A3FA8, &qword_1003D8280);
  swift_allocObject();
  *(v1 + 64) = Synchronized.init(wrappedValue:)();
  return v1;
}

void sub_10008AF48(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10004D9B4();
  *v7 = static OS_dispatch_queue.main.getter();
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v9 = *(v5 + 104);
  v9(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = _dispatchPreconditionTest(_:)();
  v35 = *(v5 + 8);
  v35(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  Synchronized.wrappedValue.getter();

  v12 = v38;
  if (*(v38 + 16) && (v13 = sub_10019C35C(v11), (v14 & 1) != 0))
  {
    v15 = *(*(v12 + 56) + v13);

    if (v15 == 1)
    {

      Synchronized.wrappedValue.getter();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37._countAndFlagsBits = v38;
      sub_1000BB308(0, a1, isUniquelyReferenced_nonNull_native, v17);
      Synchronized.wrappedValue.setter();
LABEL_30:

      return;
    }
  }

  else
  {
  }

  v34 = a1;
  swift_beginAccess();
  v19 = *(v2 + 24);
  v18 = *(v2 + 32);
  *v7 = v19;
  v9(v7, v8, v4);

  v20 = v19;
  v21 = _dispatchPreconditionTest(_:)();
  v35(v7, v4);

  if ((v21 & 1) == 0)
  {
    goto LABEL_32;
  }

  if (!v18)
  {
    if (qword_1004A0248 != -1)
    {
      swift_once();
    }

    v22._countAndFlagsBits = 0xD000000000000045;
    v22._object = 0x8000000100403C70;
    Log.debug(_:isPrivate:)(v22, 0);
    type metadata accessor for HapticFeedbackGenerator();
    swift_allocObject();
    v23 = sub_10008DB70();
    swift_beginAccess();
    v24 = *(v2 + 24);
    *v7 = v24;
    v9(v7, v8, v4);
    v25 = v24;
    LOBYTE(v24) = _dispatchPreconditionTest(_:)();
    v35(v7, v4);
    if ((v24 & 1) == 0)
    {
      __break(1u);
      goto LABEL_36;
    }

    *(v2 + 32) = v23;
    swift_endAccess();
  }

  v26 = *(v2 + 24);
  v27 = *(v2 + 32);
  *v7 = v26;
  v9(v7, v8, v4);

  v28 = v26;
  v29 = _dispatchPreconditionTest(_:)();
  v35(v7, v4);

  if ((v29 & 1) == 0)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
LABEL_16:
    v37._countAndFlagsBits = 0;
    v37._object = 0xE000000000000000;
    _StringGuts.grow(_:)(20);
    v30._object = 0x8000000100403CC0;
    v30._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v30);
    v31 = v34;
    v36 = v34;
    _print_unlocked<A, B>(_:_:)();
    Log.debug(_:isPrivate:)(v37, 0);

    if (v31 > 3u)
    {
      if (v31 > 5u)
      {
        if (v31 == 6 || v31 == 7)
        {
          goto LABEL_28;
        }

        goto LABEL_25;
      }

      if (v31 != 4)
      {
LABEL_28:
        v32 = 0;
        goto LABEL_29;
      }

LABEL_27:
      v32 = 2;
      goto LABEL_29;
    }

    if (v31 > 1u)
    {
      if (v31 == 2)
      {
        goto LABEL_27;
      }
    }

    else if (!v31)
    {
      goto LABEL_30;
    }

LABEL_25:
    v32 = 1;
LABEL_29:
    sub_10008D93C(v32);
    goto LABEL_30;
  }

  if (v27)
  {
    if (qword_1004A0248 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_36:
  __break(1u);
}

uint64_t sub_10008B448()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for FeedbackGenerator.Feedback(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FeedbackGenerator.Feedback(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10008B628()
{
  result = qword_1004A5500;
  if (!qword_1004A5500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A5500);
  }

  return result;
}

unint64_t sub_10008B680()
{
  _StringGuts.grow(_:)(34);

  v1 = *(v0 + OBJC_IVAR____TtC7Measure8MetaData_bundleIdentifier + 8);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC7Measure8MetaData_bundleIdentifier);
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Measure8MetaData_bundleIdentifier + 8);
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  v4._countAndFlagsBits = v2;
  v4._object = v3;
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x6F6973726576202CLL;
  v5._object = 0xEB00000000203A6ELL;
  String.append(_:)(v5);
  v6 = *(v0 + OBJC_IVAR____TtC7Measure8MetaData_versionString + 8);
  if (v6)
  {
    v7 = *(v0 + OBJC_IVAR____TtC7Measure8MetaData_versionString);
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v8 = *(v0 + OBJC_IVAR____TtC7Measure8MetaData_versionString + 8);
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  v9._countAndFlagsBits = v7;
  v9._object = v8;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 41;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  return 0xD000000000000012;
}

id sub_10008B7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  if (!a2)
  {
    v11 = [objc_opt_self() mainBundle];
    v12 = [v11 bundleIdentifier];

    if (v12)
    {
      a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      a2 = v13;
    }

    else
    {
      a1 = 0;
      a2 = 0;
    }
  }

  v14 = &v5[OBJC_IVAR____TtC7Measure8MetaData_bundleIdentifier];
  *v14 = a1;
  *(v14 + 1) = a2;
  if (!a4)
  {
    v15 = [objc_opt_self() mainBundle];
    v16 = [v15 infoDictionary];

    if (v16)
    {
      v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v17 + 16))
      {
        v18 = sub_100198230(0xD00000000000001ALL, 0x80000001004020E0);
        if (v19)
        {
          sub_10000FE60(*(v17 + 56) + 32 * v18, v24);

          v20 = swift_dynamicCast();
          if (v20)
          {
            a4 = v26;
          }

          else
          {
            a4 = 0;
          }

          if (v20)
          {
            a3 = v25;
          }

          else
          {
            a3 = 0;
          }

          goto LABEL_17;
        }
      }
    }

    a4 = 0;
    a3 = 0;
  }

LABEL_17:
  v21 = &v5[OBJC_IVAR____TtC7Measure8MetaData_versionString];
  *v21 = a3;
  *(v21 + 1) = a4;
  v23.receiver = v5;
  v23.super_class = ObjectType;
  return objc_msgSendSuper2(&v23, "init");
}

id sub_10008B98C(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = String._bridgeToObjectiveC()();
  v4 = [a1 decodeObjectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20 = v18;
  v21 = v19;
  if (*(&v19 + 1))
  {
    v5 = swift_dynamicCast();
    if (v5)
    {
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }

    if (v5)
    {
      v7 = v17;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    sub_10002D238(&v20);
    v6 = 0;
    v7 = 0;
  }

  v8 = String._bridgeToObjectiveC()();
  v9 = [a1 decodeObjectForKey:v8];

  if (v9)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20 = v18;
  v21 = v19;
  if (*(&v19 + 1))
  {
    v10 = swift_dynamicCast();
    if (v10)
    {
      v11 = v16;
    }

    else
    {
      v11 = 0;
    }

    if (v10)
    {
      v12 = v17;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    sub_10002D238(&v20);
    v11 = 0;
    v12 = 0;
  }

  v13 = objc_allocWithZone(ObjectType);
  v14 = sub_10008B7A0(v6, v7, v11, v12);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v14;
}

void sub_10008BBC8(void *a1)
{

  v2 = String._bridgeToObjectiveC()();

  v3 = String._bridgeToObjectiveC()();
  [a1 encodeObject:v2 forKey:v3];

  v4 = String._bridgeToObjectiveC()();

  v5 = String._bridgeToObjectiveC()();
  [a1 encodeObject:v4 forKey:v5];
}

uint64_t sub_10008BEA0(uint64_t *a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10008BEFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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

uint64_t sub_10008BF70(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10000F974(&qword_1004A28C0, &qword_1003D7080);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10008C040(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10000F974(&qword_1004A28C0, &qword_1003D7080);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for MeasurementsHistory(uint64_t a1)
{
  result = qword_1004A5660;
  if (!qword_1004A5660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10008C13C(uint64_t a1)
{
  sub_10008C1F8(319, &qword_1004A5670, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_10008C1F8(319, &unk_1004A5678, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10008C1F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for MeasurementHistoryItem(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_10008C28C(uint64_t a1)
{
  result = sub_10008C2B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10008C2B4()
{
  result = qword_1004A56D8;
  if (!qword_1004A56D8)
  {
    type metadata accessor for MeasurementsHistory(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A56D8);
  }

  return result;
}

id sub_10008C318(uint64_t a1, uint64_t *a2)
{
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  result = *(&xmmword_1004D4AE8 + 1);
  if (*(&xmmword_1004D4AE8 + 1))
  {
    v4 = *(&xmmword_1004D4AE8 + 1);
    *a2 = Contexts.PrivateQueue.init(_:)();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10008C3C4@<X0>(void *a1@<X2>, void **a2@<X3>, void **a4@<X8>)
{
  if (*a1 != -1)
  {
    v7 = a2;
    v8 = a4;
    swift_once();
    a4 = v8;
    a2 = v7;
  }

  v5 = *a2;
  *a4 = *a2;

  return v5;
}

uint64_t sub_10008C424(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      type metadata accessor for MeasureObject();
      v4 = v3;
      v5 = v2;
      v6 = static NSObject.== infix(_:_:)();

      if (v6)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_10008C49C(uint64_t a1)
{
  result = sub_10008C4C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10008C4C4()
{
  result = qword_1004A5708;
  if (!qword_1004A5708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A5708);
  }

  return result;
}

BOOL sub_10008C518(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for MeasurementHistoryItem(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_10000F974(&qword_1004A28C0, &qword_1003D7080);
  __chkstk_darwin(v8 - 8);
  v10 = &v33[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v33[-v12];
  v14 = sub_10000F974(&qword_1004A5710, &unk_1003D9780);
  __chkstk_darwin(v14);
  v16 = &v33[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v33[-v18];
  if ((sub_10007B2EC(*a1) & 1) == 0)
  {
    return 0;
  }

  v35 = v10;
  v36 = v7;
  v37 = type metadata accessor for MeasurementsHistory(0);
  v20 = *(v37 + 20);
  v21 = *(v14 + 48);
  sub_10008C928(a1 + v20, v19);
  sub_10008C928(a2 + v20, &v19[v21]);
  v22 = *(v5 + 48);
  if (v22(v19, 1, v4) != 1)
  {
    sub_10008C928(v19, v13);
    if (v22(&v19[v21], 1, v4) != 1)
    {
      v24 = &v19[v21];
      v25 = v36;
      sub_10008C998(v24, v36);
      v34 = sub_1001B2584(v13, v25);
      sub_10002339C(v25);
      sub_10002339C(v13);
      sub_100018F04(v19, &qword_1004A28C0, &qword_1003D7080);
      if ((v34 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

    sub_10002339C(v13);
LABEL_7:
    v23 = v19;
LABEL_15:
    sub_100018F04(v23, &qword_1004A5710, &unk_1003D9780);
    return 0;
  }

  if (v22(&v19[v21], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_100018F04(v19, &qword_1004A28C0, &qword_1003D7080);
LABEL_9:
  v26 = *(v37 + 24);
  v27 = *(v14 + 48);
  sub_10008C928(a1 + v26, v16);
  sub_10008C928(a2 + v26, &v16[v27]);
  if (v22(v16, 1, v4) == 1)
  {
    if (v22(&v16[v27], 1, v4) == 1)
    {
      sub_100018F04(v16, &qword_1004A28C0, &qword_1003D7080);
      return 1;
    }

    goto LABEL_14;
  }

  v28 = v35;
  sub_10008C928(v16, v35);
  if (v22(&v16[v27], 1, v4) == 1)
  {
    sub_10002339C(v28);
LABEL_14:
    v23 = v16;
    goto LABEL_15;
  }

  v30 = &v16[v27];
  v31 = v36;
  sub_10008C998(v30, v36);
  v32 = sub_1001B2584(v28, v31);
  sub_10002339C(v31);
  sub_10002339C(v28);
  sub_100018F04(v16, &qword_1004A28C0, &qword_1003D7080);
  return (v32 & 1) != 0;
}

uint64_t sub_10008C928(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F974(&qword_1004A28C0, &qword_1003D7080);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008C998(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MeasurementHistoryItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008CA00(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaSet.Index.== infix(_:_:)();
    sub_10008CE7C(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_10008CE7C(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_10008CE88(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_10008CE7C(v3, v5, v2 != 0);
  return v12;
}

id sub_10008CC58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = &v3[OBJC_IVAR____TtC7Measure29PanRecognizerWithInitialTouch_initialTouchLocation];
  *v7 = 0;
  *(v7 + 1) = 0;
  v7[16] = 1;
  sub_10002D2A0(a1, v18);
  v8 = v19;
  if (v19)
  {
    v9 = sub_10000FEBC(v18, v19);
    v10 = *(v8 - 8);
    v11 = __chkstk_darwin(v9);
    v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v11);
    v14 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v10 + 8))(v13, v8);
    sub_10000FF00(v18);
  }

  else
  {
    v14 = 0;
  }

  v17.receiver = v3;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, "initWithTarget:action:", v14, a2);
  swift_unknownObjectRelease();
  sub_10002D238(a1);
  return v15;
}

double sub_10008CE7C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_10008CE88(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_10001B92C();
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_10001B92C();
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

uint64_t sub_10008D09C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MeasurementHistoryItem(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10008D178(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MeasurementHistoryItem(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t type metadata accessor for SpatialPlattersHistoryItem(uint64_t a1)
{
  result = qword_1004A57A0;
  if (!qword_1004A57A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10008D27C(uint64_t a1)
{
  type metadata accessor for MeasurementHistoryItem(319);
  if (v1 <= 0x3F)
  {
    sub_10008D300(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10008D300(uint64_t a1)
{
  if (!qword_1004A57B0)
  {
    sub_10008D358();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1004A57B0);
    }
  }
}

unint64_t sub_10008D358()
{
  result = qword_1004ABAE0;
  if (!qword_1004ABAE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1004ABAE0);
  }

  return result;
}

uint64_t sub_10008D3AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 512))
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

uint64_t sub_10008D408(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 504) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 512) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 512) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_10008D4F0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = (*(*v1 + 112))();
    if (v2)
    {

      return (*(*v1 + 112))();
    }
  }

  if (qword_1004A0260 != -1)
  {
    swift_once();
  }

  _StringGuts.grow(_:)(62);
  v3._countAndFlagsBits = 0xD000000000000027;
  v3._object = 0x80000001004016C0;
  String.append(_:)(v3);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._object = 0x80000001004016F0;
  v5._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v5);
  sub_100046EB0();
  v6._countAndFlagsBits = static NSThread.prettyPrintCallStack(toDepth:)();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  Log.error(_:isPrivate:)(v7, 0);

  if (v1)
  {
    return (*(*v1 + 112))();
  }

  return 0;
}

uint64_t sub_10008D6BC()
{
  result = Contexts.UIKit.init()();
  qword_1004D4B38 = result;
  return result;
}

id sub_10008D6DC@<X0>(void *a1@<X8>)
{
  if (qword_1004A01A0 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1004D4B38;
  *a1 = qword_1004D4B38;

  return v2;
}

uint64_t sub_10008D74C(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_10008D820(v4, __dst) & 1;
}

unint64_t sub_10008D7A4(uint64_t a1)
{
  result = sub_10008D7CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10008D7CC()
{
  result = qword_1004A5808;
  if (!qword_1004A5808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A5808);
  }

  return result;
}

uint64_t sub_10008D820(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v12 = v2;
  v13 = v3;
  v4 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!v4)
    {
      v6 = a1;
      v5 = a2;
      sub_10004B20C(a2, v10);
      goto LABEL_10;
    }

LABEL_12:
    v9 = 0;
    return v9 & 1;
  }

  v5 = a2;
  if (!v4)
  {
    sub_10004B20C(a2, v10);
    goto LABEL_12;
  }

  v6 = a1;
  sub_10000F974(&qword_1004AC2D0, &qword_1003D7CA8);
  sub_10004B20C(v5, v10);
  v7 = static HashableWeakRef.== infix(_:_:)();
  sub_100013C4C(v5);
  if ((v7 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  memcpy(v10, (v6 + 32), 0x1E0uLL);
  memcpy(__dst, (v5 + 32), sizeof(__dst));
  v9 = static ComputedCameraProperties.__derived_struct_equals(_:_:)();
  return v9 & 1;
}

double sub_10008D93C(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10004D9B4();
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_8:
    swift_once();
    goto LABEL_6;
  }

  v10 = *(v2 + 16);
  if (*(v10 + 16))
  {
    v11 = sub_10019C35C(v9);
    if (v12)
    {
      v13 = *(*(v10 + 56) + 24 * v11 + 8);

      v13(v14);

      return result;
    }
  }

  if (qword_1004A0248 != -1)
  {
    goto LABEL_8;
  }

LABEL_6:
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  _StringGuts.grow(_:)(60);
  v16._object = 0x8000000100403E60;
  v16._countAndFlagsBits = 0xD00000000000003ALL;
  String.append(_:)(v16);
  v17[15] = v3;
  _print_unlocked<A, B>(_:_:)();
  Log.error(_:isPrivate:)(v18, 0);

  return result;
}

uint64_t sub_10008DB70()
{
  v0 = 0;
  while (1)
  {
    v3 = *(&off_100464D28 + v0 + 32);
    if (*(&off_100464D28 + v0 + 32))
    {
      if (v3 == 1)
      {
        v4 = [objc_allocWithZone(UISelectionFeedbackGenerator) init];
        v5 = sub_10008E17C;
      }

      else
      {
        v6 = [objc_opt_self() lightConfiguration];
        v4 = [objc_allocWithZone(UISelectionFeedbackGenerator) initWithConfiguration:v6];

        v5 = sub_10008E1A4;
      }
    }

    else
    {
      v4 = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:0];
      v5 = sub_10008E18C;
    }

    v7 = swift_allocObject();
    *(v7 + 16) = v4;
    v8 = v4;
    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    *(v9 + 24) = v7;
    v10 = v8;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = sub_10019C35C(v12);
    v15 = _swiftEmptyDictionarySingleton[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      break;
    }

    v19 = v14;
    if (_swiftEmptyDictionarySingleton[3] < v18)
    {
      sub_1000B6900(v18, isUniquelyReferenced_nonNull_native);
      v13 = sub_10019C35C(v20);
      if ((v19 & 1) != (v21 & 1))
      {
        goto LABEL_22;
      }

LABEL_14:
      if (v19)
      {
        goto LABEL_2;
      }

      goto LABEL_15;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_14;
    }

    v25 = v13;
    sub_1000BDB0C();
    v13 = v25;
    if (v19)
    {
LABEL_2:
      v1 = _swiftEmptyDictionarySingleton[7] + 24 * v13;
      v2 = *v1;
      *v1 = v10;
      *(v1 + 8) = sub_10008E154;
      *(v1 + 16) = v9;

      goto LABEL_3;
    }

LABEL_15:
    _swiftEmptyDictionarySingleton[(v13 >> 6) + 8] |= 1 << v13;
    *(_swiftEmptyDictionarySingleton[6] + v13) = v3;
    v22 = (_swiftEmptyDictionarySingleton[7] + 24 * v13);
    *v22 = v10;
    v22[1] = sub_10008E154;
    v22[2] = v9;

    v23 = _swiftEmptyDictionarySingleton[2];
    v17 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v17)
    {
      goto LABEL_21;
    }

    _swiftEmptyDictionarySingleton[2] = v24;
LABEL_3:
    if (++v0 == 3)
    {
      result = v27;
      *(v27 + 16) = _swiftEmptyDictionarySingleton;
      return result;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10008DE78()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for InstrumentationMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for InstrumentationMode(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10008E028()
{
  result = qword_1004A58B0;
  if (!qword_1004A58B0)
  {
    sub_100013BB0(&qword_1004A58B8, qword_1003D9870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A58B0);
  }

  return result;
}

unint64_t sub_10008E090()
{
  result = qword_1004A58C0;
  if (!qword_1004A58C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A58C0);
  }

  return result;
}

uint64_t sub_10008E0E4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008E11C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t getEnumTagSinglePayload for InstrumentExecutionPriority.Request(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 65283 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65283 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65283;
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

      return (*a1 | (v4 << 16)) - 65283;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65283;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for InstrumentExecutionPriority.Request(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65283 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65283 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 16) + 1;
    *result = a2 - 253;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
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
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10008E318()
{
  result = qword_1004A58C8;
  if (!qword_1004A58C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A58C8);
  }

  return result;
}

id sub_10008E36C@<X0>(void *a1@<X8>)
{
  a1[3] = &_s8SceneKitVN;
  a1[4] = sub_100028DB8();
  if (qword_1004A02D8 != -1)
  {
    swift_once();
  }

  v2 = qword_1004D4E90;
  *a1 = qword_1004D4E90;

  return v2;
}

unint64_t sub_10008E480@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &_s20EdgeDetectionContextVN;
  result = sub_10008E4B4();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_10008E4B4()
{
  result = qword_1004A58D0;
  if (!qword_1004A58D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A58D0);
  }

  return result;
}

id sub_10008E508@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &_s8SceneKitVN;
  a1[4] = sub_100028DB8();
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  result = *(&xmmword_1004D4AE8 + 1);
  if (*(&xmmword_1004D4AE8 + 1))
  {
    v3 = *(&xmmword_1004D4AE8 + 1);
    *a1 = Contexts.PrivateQueue.init(_:)();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SceneUpdate(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SceneUpdate(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10008E6FC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10008E744(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10008E7A0(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_10008E7BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10008E818(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_10008E878(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

unint64_t sub_10008E8B4(unint64_t result, __n128 a2)
{
  v3 = v2;
  v4 = result;
  v5 = *(v2 + 8);
  v6 = *(v5 + 16);
  if (v6)
  {
    result = sub_1001983A8(result);
    if (v7)
    {
      v6 = *(*(v5 + 56) + 8 * result);
    }

    else
    {
      v6 = 0;
    }
  }

  v8 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v3 + 8);
    result = sub_1000BB434(v8, v4, isUniquelyReferenced_nonNull_native, v10);
    *(v3 + 8) = v11;
  }

  return result;
}

uint64_t sub_10008E948()
{
  result = Contexts.UIKit.init()();
  qword_1004D4B40 = result;
  return result;
}

void sub_10008E968(uint64_t a1, unsigned __int8 a2)
{
  v2 = a2 - 3;
  if ((a2 - 3) >= 7u)
  {
    Hasher._combine(_:)(7uLL);
    v2 = a2;
  }

  Hasher._combine(_:)(v2);
}

Swift::Int sub_10008E9B0(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  v2 = a1 - 3;
  if ((a1 - 3) >= 7u)
  {
    Hasher._combine(_:)(7uLL);
    v2 = a1;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int sub_10008EA28()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = v1 - 3;
  if ((v1 - 3) >= 7)
  {
    Hasher._combine(_:)(7uLL);
    v2 = v1;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

double *sub_10008EAE0(void *a1)
{
  sub_100103A68(&off_100465060);
  v3 = 9;
  v4 = *(v1 + 8);
  v5 = &unk_100465050;
  v6 = _swiftEmptyArrayStorage;
  do
  {
    v8 = *v5++;
    v7 = v8;
    if (*(v4 + 16) && (v9 = sub_1001983A8(v7), (v10 & 1) != 0))
    {
      v11 = *(*(v4 + 56) + 8 * v9);
      if (!*a1)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v11 = 0;
      if (!*a1)
      {
LABEL_7:
        if (v11 < 1)
        {
          goto LABEL_3;
        }

        goto LABEL_15;
      }
    }

    v12 = a1[1];
    if (*(v12 + 16) && (v13 = sub_1001983A8(v7), (v14 & 1) != 0))
    {
      if (*(*(v12 + 56) + 8 * v13) >= v11)
      {
        goto LABEL_3;
      }
    }

    else if (v11 <= 0)
    {
      goto LABEL_3;
    }

LABEL_15:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_10006731C(0, *(v6 + 2) + 1, 1, v6);
    }

    v16 = *(v6 + 2);
    v15 = *(v6 + 3);
    if (v16 >= v15 >> 1)
    {
      v6 = sub_10006731C((v15 > 1), v16 + 1, 1, v6);
    }

    *(v6 + 2) = v16 + 1;
    *(v6 + v16 + 32) = v7;
LABEL_3:
    --v3;
  }

  while (v3);

  return v6;
}

id sub_10008EC64@<X0>(void *a1@<X8>)
{
  if (qword_1004A01A8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1004D4B40;
  *a1 = qword_1004D4B40;

  return v2;
}

BOOL sub_10008ECD4(double *a1, double *a2)
{
  v3 = a1[5];
  v2 = a1[6];
  v5 = a2[5];
  v4 = a2[6];
  sub_10008F12C();
  if ((static OrderedDictionary<>.__derived_struct_equals(_:_:)() & 1) == 0 || (static SearchArea.__derived_struct_equals(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4)
  {
    return v3 == v5;
  }

  return 0;
}

id sub_10008EDC0()
{
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  result = *(&xmmword_1004D4AE8 + 1);
  if (*(&xmmword_1004D4AE8 + 1))
  {
    v1 = *(&xmmword_1004D4AE8 + 1);
    qword_1004D4B48 = Contexts.PrivateQueue.init(_:)();

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10008EE40@<X0>(void *a1@<X8>)
{
  if (qword_1004A01B0 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1004D4B48;
  *a1 = qword_1004D4B48;

  return v2;
}

unint64_t sub_10008EEBC(uint64_t a1)
{
  result = sub_10008EEE4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10008EEE4()
{
  result = qword_1004A5900;
  if (!qword_1004A5900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A5900);
  }

  return result;
}

unint64_t sub_10008EF38(uint64_t a1)
{
  result = sub_10008EF60();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10008EF60()
{
  result = qword_1004A5930;
  if (!qword_1004A5930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A5930);
  }

  return result;
}

uint64_t sub_10008EFB4()
{
  v1 = *v0 >> 62;
  if (!v1)
  {
    return 0xD000000000000010;
  }

  if (v1 == 1)
  {
    return 0xD000000000000010;
  }

  v3 = __ROR8__(*v0 ^ 0x8000000000000000, 3);
  v4 = 1701602377;
  v5 = 0x4C20676E69646441;
  v6 = 0x5020676E69766F4DLL;
  if (v3 != 3)
  {
    v6 = 0xD000000000000028;
  }

  if (v3 != 2)
  {
    v5 = v6;
  }

  if (v3)
  {
    v4 = 0x6E69686372616553;
  }

  if (v3 <= 1)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

unint64_t sub_10008F0AC(uint64_t a1)
{
  result = sub_10008F0D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10008F0D4()
{
  result = qword_1004A5960;
  if (!qword_1004A5960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A5960);
  }

  return result;
}

unint64_t sub_10008F12C()
{
  result = qword_1004A5968;
  if (!qword_1004A5968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A5968);
  }

  return result;
}

BOOL sub_10008F180(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 > 5u)
  {
    if (a1 > 7u)
    {
      if (a1 == 8)
      {
        return a2 == 8;
      }

      if (a1 == 9)
      {
        return a2 == 9;
      }
    }

    else
    {
      if (a1 == 6)
      {
        return a2 == 6;
      }

      if (a1 == 7)
      {
        return a2 == 7;
      }
    }

LABEL_18:
    if (a2 - 3 >= 7)
    {
      return a1 == a2;
    }

    return 0;
  }

  if (a1 == 3)
  {
    return a2 == 3;
  }

  if (a1 != 4)
  {
    if (a1 == 5)
    {
      return a2 == 5;
    }

    goto LABEL_18;
  }

  return a2 == 4;
}

uint64_t sub_10008F260(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 != 1)
    {
      v11 = __ROR8__(a1 ^ 0x8000000000000000, 3);
      if (v11 <= 1)
      {
        if (v11)
        {
          if (a2 != 0x8000000000000008)
          {
            goto LABEL_23;
          }
        }

        else if (a2 != 0x8000000000000000)
        {
          goto LABEL_23;
        }
      }

      else if (v11 == 2)
      {
        if (a2 != 0x8000000000000010)
        {
          goto LABEL_23;
        }
      }

      else if (v11 == 3)
      {
        if (a2 != 0x8000000000000018)
        {
          goto LABEL_23;
        }
      }

      else if (a2 != 0x8000000000000020)
      {
        goto LABEL_23;
      }

LABEL_21:
      v10 = 1;
      return v10 & 1;
    }

    if (a2 >> 62 == 1)
    {
      v2 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v3 = ((a1 & 0x3FFFFFFFFFFFFFFFLL) + direct field offset for MeasureObject.id);
      swift_beginAccess();
      v4 = *v3;
      v5 = v3[1];
      v6 = (v2 + direct field offset for MeasureObject.id);
      goto LABEL_7;
    }

LABEL_23:
    v10 = 0;
    return v10 & 1;
  }

  if (a2 >> 62)
  {
    goto LABEL_23;
  }

  v7 = (a1 + direct field offset for MeasureObject.id);
  swift_beginAccess();
  v4 = *v7;
  v5 = v7[1];
  v6 = (a2 + direct field offset for MeasureObject.id);
LABEL_7:
  swift_beginAccess();
  if (v4 == *v6 && v5 == v6[1])
  {
    goto LABEL_21;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  return v10 & 1;
}

uint64_t getEnumTagSinglePayload for UserInputs.Type(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_20;
  }

  v2 = a2 + 9;
  if (a2 + 9 >= 0xFFFF00)
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

    return (*a1 | (v5 << 8)) - 9;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 9;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 8)
  {
    return v8 - 7;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for UserInputs.Type(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 9;
  if (a3 + 9 >= 0xFFFF00)
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

  if (a3 < 0xF7)
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10008F548(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_10008F55C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

unint64_t sub_10008F580()
{
  result = qword_1004A5970;
  if (!qword_1004A5970)
  {
    sub_100013BB0(&qword_1004A5978, qword_1003D9C98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A5970);
  }

  return result;
}

unint64_t sub_10008F5E8()
{
  result = qword_1004A5980;
  if (!qword_1004A5980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A5980);
  }

  return result;
}

uint64_t sub_10008F63C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[41])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10008F680(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_10008F6E0()
{
  result = Contexts.UIKit.init()();
  qword_1004D4B50 = result;
  return result;
}

id sub_10008F700@<X0>(void *a1@<X8>)
{
  if (qword_1004A01B8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1004D4B50;
  *a1 = qword_1004D4B50;

  return v2;
}

uint64_t sub_10008F770(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    if (a1[40])
    {
      if (a2[40])
      {
        return 1;
      }
    }

    else if ((a2[40] & 1) == 0 && CGRectEqualToRect(*(a1 + 8), *(a2 + 8)))
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_10008F7D4(uint64_t a1)
{
  result = sub_10008F7FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10008F7FC()
{
  result = qword_1004A59B0;
  if (!qword_1004A59B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A59B0);
  }

  return result;
}

unint64_t sub_10008F864()
{
  result = qword_1004A59B8;
  if (!qword_1004A59B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A59B8);
  }

  return result;
}

float sub_10008F8B8(__n128 *a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9)
{
  simd_float4x4.position.getter();
  v26 = v9;
  simd_float4x4.position.getter();
  v27 = v10;
  simd_float4x4.position.getter();
  v18 = vsubq_f32(v26, v27);
  v18.f32[2] = v26.f32[2] - v27.f32[2];
  v12 = vsubq_f32(v11, v27);
  v12.f32[2] = v11.f32[2] - v27.f32[2];
  v13 = vmulq_f32(v12, v12);
  v14 = v13.f32[2] + vaddv_f32(*v13.f32);
  v15 = vrsqrte_f32(LODWORD(v14));
  v16 = vmul_f32(v15, vrsqrts_f32(LODWORD(v14), vmul_f32(v15, v15)));
  v17 = vmulq_f32(v18, vmulq_n_f32(v12, vmul_f32(v16, vrsqrts_f32(LODWORD(v14), vmul_f32(v16, v16))).f32[0]));
  v18.i32[3] = 0;
  v19 = v17.f32[2] + vaddv_f32(*v17.f32);
  if (v19 < 0.0)
  {
    v20 = vmulq_f32(v18, v18);
    return sqrtf(v20.f32[2] + vaddv_f32(*v20.f32));
  }

  v11.i64[0] = vsubq_f32(v26, v11).u64[0];
  v21.f32[2] = v26.f32[2] - v11.f32[2];
  v21.i32[3] = 0;
  v22 = sqrtf(v14);
  if (v22 < v19)
  {
    v20 = vmulq_f32(v21, v21);
    return sqrtf(v20.f32[2] + vaddv_f32(*v20.f32));
  }

  v24 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL), vnegq_f32(v18)), v21, vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL));
  v25 = vmulq_f32(v24, v24);
  return sqrtf(v25.f32[1] + (v25.f32[2] + v25.f32[0])) / v22;
}

void sub_10008FA10(uint64_t a1, __n128 *a2, float32x2_t a3, float a4)
{
  v4 = a1;
  v6 = a4 * a4;
  v7 = a1 + 64;
  v29 = 1;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;
  v30 = 0;
  v12 = 0;

LABEL_4:
  v13 = v12;
  while (v10)
  {
    v12 = v13;
LABEL_10:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = *(*(v4 + 56) + 8 * (v14 | (v12 << 6)));
    v16 = *((swift_isaMask & *v15) + 0x280);
    v17 = v15;

    v16(v18);
    v20 = v19;

    if (v20)
    {

      goto LABEL_17;
    }

    v21 = *((swift_isaMask & *v17) + 0xD0);
    v22 = v17;
    v21();
    if (MeasureObjectState.isMovable()())
    {
      type metadata accessor for MeasureCamera();
      (*((swift_isaMask & *v22) + 0x2B0))();
      simd_float4x4.position.getter();
      static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
      v28 = v23;
      v25 = v24;

      if (v25 >= 1.0)
      {

        v13 = v12;
        v4 = v31;
      }

      else
      {

        v26 = vsub_f32(a3, v28);
        v27 = vaddv_f32(vmul_f32(v26, v26));
        v4 = v31;
        if (v27 < v6)
        {

          v29 = 0;
          v6 = v27;
          v30 = v15;
          goto LABEL_4;
        }

        v13 = v12;
      }
    }

    else
    {

LABEL_17:

      v13 = v12;
      v4 = v31;
    }
  }

  while (2)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v12 < v11)
    {
      v10 = *(v7 + 8 * v12);
      ++v13;
      if (v10)
      {
        goto LABEL_10;
      }

      continue;
    }

    break;
  }

  if (v30 && (v29 & 1) != 0)
  {
LABEL_25:
    __break(1u);
  }
}

void sub_10008FD20(float32x2_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>, float32x2_t a5@<D0>, float a6@<S1>)
{
  v73 = *SIMD3<>.zero.unsafeMutableAddressor();
  simd_float4x4.forward.getter();
  simd_float4x4.position.getter();
  v11 = a1[2];
  v12 = 0uLL;
  if (!*&v11)
  {
    v30 = 0;
    v61 = 0uLL;
    v62 = 0uLL;
    v63 = 0uLL;
LABEL_32:
    *a4 = v30;
    *(a4 + 8) = 0;
    *(a4 + 16) = v12;
    *(a4 + 32) = v61;
    *(a4 + 48) = v62;
    *(a4 + 64) = v63;
    *(a4 + 80) = v11;
    return;
  }

  v71 = a4;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = a6 * a6;
  v92 = -*&v11;
  v17 = a1 + 5;
  v18 = &swift_isaMask;
  v19 = 1;
  v69 = matrix_identity_float4x4.columns[1];
  v70 = matrix_identity_float4x4.columns[0];
  v68 = matrix_identity_float4x4.columns[2];
  v75 = a2;
  v66 = a1 + 5;
LABEL_3:
  v72 = v19;
  v74 = v14;
  v67 = v13;
  v20 = &v17[2 * v15++];
  do
  {
    if (!*(a2 + 16))
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v26 = *(v20 - 1);
    v27 = *v20;

    v28 = sub_100198230(v26, v27);
    if ((v29 & 1) == 0)
    {
      goto LABEL_34;
    }

    v30 = *(*(a2 + 56) + 8 * v28);
    v31 = *((*v18 & *v30) + 0x2C8);
    v32 = v30;
    v33 = v31();

    if (v33)
    {
      v34 = *((*v18 & *v32) + 0xD0);
      v35 = v32;
      v34();
      v36 = v18;

      if (MeasureObjectState.isMovable()())
      {
        v37 = *((*v18 & *v35) + 0x250);
        v38 = v35;
        v39 = v37();

        v88 = v37;
        if ((v39 & 0xC000000000000001) != 0)
        {
          v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_35;
          }

          v40 = *(v39 + 32);
        }

        v41 = v40;

        *v43.i64 = (*((*v36 & *v41) + 0x2B0))(v42);
        v82 = v43;
        v86 = v44;
        v84 = v45;

        v46 = v38;
        v47 = v88();

        if ((v47 & 0xC000000000000001) != 0)
        {
          v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          a2 = v75;
        }

        else
        {
          a2 = v75;
          if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
          {
            goto LABEL_36;
          }

          v48 = *(v47 + 40);
        }

        v18 = v36;
        (*((*v36 & *v48) + 0x2B0))(v49);

        type metadata accessor for MeasureCamera();
        simd_float4x4.position.getter();
        v79 = v50;
        static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
        v90 = v51;
        simd_float4x4.position.getter();
        v77 = v52;
        static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
        *v54.f32 = vsub_f32(*v77.f32, *v79.f32);
        if (v90 <= 1.0)
        {
          if (v53 > 1.0)
          {
            simd_float4x4.position.getter();
            v76 = v21;
            static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
            v22 = vsubq_f32(v76, v79);
            v22.i32[3] = 0;
            v78 = v22;
          }

          else
          {
            v54.i64[1] = COERCE_UNSIGNED_INT(v77.f32[2] - v79.f32[2]);
            v78 = v54;
          }
        }

        else
        {
          if (v53 > 1.0)
          {
            goto LABEL_6;
          }

          simd_float4x4.position.getter();
          v80 = v55;
          static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
          v56 = vsubq_f32(v77, v80);
          v56.i32[3] = 0;
          v78 = v56;
        }

        closestPointOnLine(lineP1:lineP2:point:)();
        v24 = vsub_f32(a5, v23);
        v25 = vaddv_f32(vmul_f32(v24, v24));
        if (v25 < v16)
        {
          v89 = v23;

          v19 = 0;
          v13 = v89;
          v57 = v78;
          v73 = v78;
          v59 = v82;
          v58 = v84;
          v70 = v82;
          v60 = v86;
          v68 = v84;
          v69 = v86;
          v16 = v25;
          v14 = v30;
          v17 = v66;
          if (v92 + v15)
          {
            goto LABEL_3;
          }

          goto LABEL_30;
        }
      }
    }

LABEL_6:

    ++v15;
    v20 += 2;
  }

  while (v92 + v15 != 1);
  if (v72)
  {

    v30 = 0;
    v11 = 0;
    v61 = 0uLL;
    v62 = 0uLL;
    v63 = 0uLL;
    a4 = v71;
    v12 = 0uLL;
    goto LABEL_32;
  }

  v57 = v73;
  v60 = v69;
  v59 = v70;
  v58 = v68;
  v30 = v74;
  v13 = v67;
LABEL_30:
  v83 = v59;
  v87 = v60;
  v85 = v58;
  v81 = v57;
  type metadata accessor for MeasureCamera();
  static MeasureCamera.unprojectPoint(_:viewProjectionInv:viewportSize:)();
  static MeasureCamera.unprojectPoint(_:viewProjectionInv:viewportSize:)();
  simd_float4x4.position.getter();
  v91 = v64;
  simd_float4x4.position.getter();
  lineIntersection(line1P1:line1P2:line2P1:line2P2:)();
  if (v30)
  {
    *&v63 = vaddq_f32(v91, vmulq_n_f32(v81, v65)).u64[0];
    *(&v63 + 2) = v91.f32[2] + vmuls_lane_f32(v65, v81, 2);
    HIDWORD(v63) = 1.0;
    v11 = v13;
    v12 = v83;
    v62 = v85;
    a4 = v71;
    v61 = v87;
    goto LABEL_32;
  }

LABEL_37:
  __break(1u);
}

void sub_10009055C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float32x2_t a4@<D0>, float a5@<S1>)
{
  v6 = a1;
  *&v7 = a5;
  if (qword_1004A0408 != -1)
  {
LABEL_25:
    a1 = swift_once();
  }

  v10 = *&dword_1004D4FCC;
  v11 = *((swift_isaMask & *v6) + 0x250);
  v12 = v11(a1);
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_29;
    }

    v13 = *(v12 + 32);
  }

  v14 = v13;

  (*((swift_isaMask & *v14) + 0x2B0))(v15);

  v17 = v11(v16);
  if ((v17 & 0xC000000000000001) != 0)
  {
    v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v18 = *(v17 + 40);
  }

  v19 = v18;

  (*((swift_isaMask & *v19) + 0x2B0))(v20);

  simd_float4x4.position.getter();
  v52 = v21;
  simd_float4x4.position.getter();
  v23 = vsubq_f32(v52, v22);
  v24 = vmulq_f32(v23, v23);
  v25 = floorf(sqrtf(v24.f32[2] + vaddv_f32(*v24.f32)) / v10);
  if ((LODWORD(v25) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v25 <= -9.2234e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v25 >= 9.2234e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v26 = v25;
  if (v25 < 1)
  {
LABEL_20:
    v39 = 1;
    v40 = 0;
    v41 = 0uLL;
    v27 = 0.0;
    v42 = 0uLL;
    v43 = 0uLL;
    v44 = 0uLL;
LABEL_23:
    *a3 = v27;
    *(a3 + 4) = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = v41;
    *(a3 + 32) = v42;
    *(a3 + 48) = v43;
    *(a3 + 64) = v44;
    *(a3 + 80) = v40;
    *(a3 + 88) = v39;
    return;
  }

  v27 = ((*&v7 * *&v7) * 0.6) * 0.6;
  type metadata accessor for MeasureCamera();
  v28 = 0;
  v6 = 0;
  v7 = *(a2 + 32);
  v29 = 1;
  v30 = 1;
  v48 = 0;
  a2 = 1;
  v46 = 0u;
  v47 = 0u;
  v45 = 0u;
  while (1)
  {
    slerp(transform1:transform2:percent:)();
    v49 = v32;
    v50 = v33;
    v51 = v35;
    v53 = v34;
    simd_float4x4.position.getter();
    static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
    v37 = vsub_f32(a4, v36);
    v38 = vaddv_f32(vmul_f32(v37, v37));
    if (v38 < v27)
    {
      v6 = *(&v49 + 1);
      v28 = v49;
      v45 = v53;
      v46 = v51;
      v47 = v50;
      v48 = v36;
      if (v26 == v29)
      {
        v27 = v38;
LABEL_22:
        v39 = 0;
        v44 = v47;
        v40 = v48;
        *&v41 = v28;
        *(&v41 + 1) = v6;
        v42 = v45;
        v43 = v46;
        goto LABEL_23;
      }

      a2 = 0;
      v30 = 0;
      v27 = v38;
      goto LABEL_14;
    }

    if (v26 == v29)
    {
      break;
    }

LABEL_14:
    if (__OFADD__(v29++, 1))
    {
      __break(1u);
      goto LABEL_25;
    }
  }

  if (a2)
  {
    goto LABEL_20;
  }

  if ((v30 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_33:
  __break(1u);
}

void sub_100090968()
{
  v0 = sub_10000F974(&qword_1004A3F50, &qword_1003D8110);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v2 = qword_1004D5058;
  v3 = *(v0 + 272);
  swift_retain_n();
  v3(KeyPath, v2);
  v4 = sub_10000F974(&qword_1004A2890, &qword_1003D6FD0);
  v5 = swift_getKeyPath();
  v6 = *(v4 + 272);

  v6(v5, v2);
  v7 = sub_10000F974(&qword_1004A2C68, &qword_1003D7438);
  v8 = swift_getKeyPath();
  (*(v7 + 272))(v8, v2);
  v9 = swift_getKeyPath();
  v10 = sub_10000F974(&qword_1004A5B18, &qword_1003D9F38);
  (*(v10 + 272))(v9, v2);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_100090B24()
{

  StateValue.ifUpdated(_:)();

  StateValue.ifUpdated(_:)();

  StateValue.ifUpdated(_:)();

  return result;
}

void sub_100090BE0(_BYTE *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 || a1[3])
  {
    sub_10004D9B4();
    v12 = static OS_dispatch_queue.main.getter();
    aBlock[4] = sub_100091CD4;
    aBlock[5] = a2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100041180;
    aBlock[3] = &unk_10046BA30;
    v13 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10003180C();
    sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
    sub_100031864();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v13);

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v8);
  }
}

double sub_100090E64(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = *(v1 + OBJC_IVAR____TtC7Measure9LabelView_measurementUnderInspection + 8);
  if (v2)
  {
    v3 = *(v1 + OBJC_IVAR____TtC7Measure9LabelView_measurementUnderInspection);
    v4 = OBJC_IVAR____TtC7Measure9LabelView_labelLock;
    swift_beginAccess();

    os_unfair_lock_lock((v1 + v4));
    swift_endAccess();
    v5 = OBJC_IVAR____TtC7Measure9LabelView_labels;
    swift_beginAccess();
    v6 = *(v1 + v5);
    if (*(v6 + 16) && (v7 = sub_100198230(v3, v2), (v8 & 1) != 0))
    {
      v9 = *(*(v6 + 56) + 8 * v7);
      swift_endAccess();
      v10 = v9;

      sub_1000ADFD0();
    }

    else
    {
      swift_endAccess();
    }

    swift_beginAccess();
    os_unfair_lock_unlock((v1 + v4));
    swift_endAccess();
  }

  return result;
}

double sub_100090F84()
{

  return result;
}

uint64_t sub_100090FD4()
{
  v0 = StateObserver.deinit();
  v1 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LabelController(uint64_t a1)
{
  result = qword_1004A59E8;
  if (!qword_1004A59E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000910FC(double *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  sub_100091A34(*a1, *(a1 + 1));
  *a1 = a2;
  *(a1 + 1) = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = a6;
  a1[5] = a7;
}

double sub_100091180(uint64_t *a1)
{
  sub_100091A34(*a1, a1[1]);
  result = 0.0;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  return result;
}

void sub_1000911C0(void *a1)
{
  v2 = *((swift_isaMask & *a1) + 0xD0);
  if ((v2() - 3) <= 1)
  {
    v3 = byte_1004D4FB9;
    v4 = byte_1004D4FBA;
    v5 = a1;
LABEL_7:
    sub_1000C2B4C(v5, v3, v4);
    return;
  }

  if (((*((swift_isaMask & *a1) + 0x2C8))() & 1) != 0 || v2() == 6 || v2() == 9)
  {
    v5 = a1;
    v3 = 0;
    v4 = 0;
    goto LABEL_7;
  }
}

void sub_1000912D4(void *a1)
{
  v2 = *((swift_isaMask & *a1) + 0x230);
  v3 = v2();
  if ((v3 & 0xC000000000000001) != 0)
  {
    goto LABEL_16;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

  for (i = *(v3 + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v5 = i;

    sub_1000C23D0(v5);

    v6 = v2();
    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v7 = *(v6 + 32);
    }

    v8 = v7;

    sub_1000C2B4C(v8, 0, 0);

    v9 = v2();
    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v10 = *(v9 + 40);
    }

    v11 = v10;

    sub_1000C23D0(v11);

    v12 = v2();
    if ((v12 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v13 = *(v12 + 40);
      goto LABEL_13;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_13:
  v14 = v13;

  sub_1000C2B4C(v14, 0, 0);

  sub_1000C2E94(a1);
  sub_1000C37F4(a1);
}

void sub_1000914D8(void *a1)
{
  v3 = *(v1 + 64);
  sub_1000C37F4(a1);
  v4 = (*((swift_isaMask & *a1) + 0x230))();
  v5 = v4;
  if (v4 >> 62)
  {
    goto LABEL_31;
  }

  v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v6)
  {
    if (v6 >= 1)
    {
      v7 = 0;
      v8 = OBJC_IVAR____TtC7Measure9LabelView_labelLock;
      v49 = v5 & 0xC000000000000001;
      v50 = OBJC_IVAR____TtC7Measure9LabelView_labels;
      v48 = v5;
      while (1)
      {
        v9 = v49 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v5 + 8 * v7 + 32);
        v10 = v9;
        swift_beginAccess();
        os_unfair_lock_lock((v3 + v8));
        v11 = swift_endAccess();
        v12 = (*((swift_isaMask & *v10) + 0xB8))(v11);
        v14 = v13;
        swift_beginAccess();
        v15 = *(v3 + v50);
        if (!*(v15 + 16))
        {
          break;
        }

        v16 = sub_100198230(v12, v14);
        v18 = v17;

        if ((v18 & 1) == 0)
        {
          goto LABEL_7;
        }

        v19 = *(*(v15 + 56) + 8 * v16);
        swift_endAccess();
        v20 = *((swift_isaMask & *v10) + 0x250);
        v21 = v19;
        v22 = v20();
        v5 = v22;
        if ((v22 & 0xC000000000000001) != 0)
        {
          v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            v6 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_3;
          }

          v23 = *(v22 + 32);
        }

        v24 = v23;

        v26.n128_f64[0] = (*((swift_isaMask & *v24) + 0x2B0))(v25);
        v46 = v27;
        v47 = v26;
        v44 = v29;
        v45 = v28;

        v30 = v20();
        v5 = v30;
        if ((v30 & 0xC000000000000001) != 0)
        {
          v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
          {
            goto LABEL_30;
          }

          v31 = *(v30 + 40);
        }

        v32 = v31;

        v34.n128_f64[0] = (*((swift_isaMask & *v32) + 0x2B0))(v33);
        v42 = v35;
        v43 = v34;
        v40 = v37;
        v41 = v36;

        sub_1000AE08C(0, 0, v47, v46, v45, v44, v43, v42, v41, v40);
        v38 = (*((swift_isaMask & *v10) + 0xD0))();
        v39 = *&v21[OBJC_IVAR____TtC7Measure11LabelRender_state];
        *&v21[OBJC_IVAR____TtC7Measure11LabelRender_state] = v38;
        if (v38 != v39)
        {
          sub_1000AB428(v38);
        }

LABEL_8:
        v5 = v48;
        ++v7;
        swift_beginAccess();
        os_unfair_lock_unlock((v3 + v8));
        swift_endAccess();

        if (v6 == v7)
        {
          goto LABEL_28;
        }
      }

LABEL_7:
      swift_endAccess();
      goto LABEL_8;
    }

    __break(1u);
  }

  else
  {

LABEL_28:
  }
}

void sub_1000919AC(char a1)
{
  v3 = [*(*(v1 + 64) + OBJC_IVAR____TtC7Measure9LabelView_sceneView) overlaySKScene];
  if (v3)
  {
    v4 = v3;
    [v3 setHidden:a1 & 1];
  }
}

double sub_100091A34(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_100091A48(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000F974(&qword_1004A3F50, &qword_1003D8110);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v8 = qword_1004D5058;
  v9 = *(v6 + 272);
  swift_retain_n();
  v3[10] = v9(KeyPath, v8);
  v10 = sub_10000F974(&qword_1004A2890, &qword_1003D6FD0);
  v11 = swift_getKeyPath();
  v12 = *(v10 + 272);

  v3[11] = v12(v11, v8);
  v13 = sub_10000F974(&qword_1004A2C68, &qword_1003D7438);
  v14 = swift_getKeyPath();
  v3[12] = (*(v13 + 272))(v14, v8);
  v15 = swift_getKeyPath();
  v16 = sub_10000F974(&qword_1004A5B18, &qword_1003D9F38);
  v3[13] = (*(v16 + 272))(v15, v8);
  v3[8] = a1;
  v3[9] = a2;
  v17 = a1;
  v18 = StateObserver.init(configuration:)();
  *&v17[OBJC_IVAR____TtC7Measure9LabelView_delegate + 8] = &off_10046BA18;
  swift_unknownObjectWeakAssign();
  return v18;
}

void sub_100091C8C(unsigned __int8 *result)
{
  v1 = *result;
  if (v1 == 4)
  {
    v2 = 1;
  }

  else
  {
    if (v1 != 5)
    {
      return;
    }

    v2 = 0;
  }

  sub_1000C4568(v2);
}

double sub_100091CDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_100091CF4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;
  }

  else
  {
    v4 = 0x80000001003FF830;
    v2 = 0xD000000000000011;
  }

  *&xmmword_1004D4B58 = v2;
  *(&xmmword_1004D4B58 + 1) = v4;
}

uint64_t sub_100091D98()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001D4FC(v4, qword_1004D4B68);
  v5 = sub_10001D4C4(v0, qword_1004D4B68);
  v6 = [objc_opt_self() defaultManager];
  v7 = [v6 temporaryDirectory];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  return (*(v1 + 32))(v5, v3, v0);
}

void sub_100091ECC()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setDateFormat:v1];

  qword_1004D4B80 = v0;
}

id sub_100091F44()
{
  v0 = type metadata accessor for URL();
  sub_10001D4FC(v0, qword_1004D4B88);
  v1 = sub_10001D4C4(v0, qword_1004D4B88);
  return sub_100091F90(v1);
}

id sub_100091F90@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(fileURLWithPath:isDirectory:)();
  v6 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  sub_10000F974(&qword_1004A5B20, &unk_1003D9F40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003D5730;
  *(inited + 32) = NSFileOwnerAccountName;
  *(inited + 40) = 0x656C69626F6DLL;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 64) = &type metadata for String;
  *(inited + 72) = NSFileGroupOwnerAccountName;
  *(inited + 104) = &type metadata for String;
  *(inited + 80) = 0x656C69626F6DLL;
  *(inited + 88) = 0xE600000000000000;
  v11 = NSFileOwnerAccountName;
  v12 = NSFileGroupOwnerAccountName;
  sub_10019A608(inited);
  swift_setDeallocating();
  sub_10000F974(&qword_1004A5B28, &qword_1003E1360);
  swift_arrayDestroy();
  type metadata accessor for FileAttributeKey(0);
  sub_10009226C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v19 = 0;
  v14 = [v6 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:isa error:&v19];

  v18 = v19;
  if (v14)
  {
    (*(v3 + 32))(a1, v5, v2);
    v15 = v18;

    return v15;
  }

  else
  {
    v17 = v18;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

unint64_t sub_10009226C()
{
  result = qword_1004A0C50;
  if (!qword_1004A0C50)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A0C50);
  }

  return result;
}

void sub_1000922C4(uint64_t a1)
{
  *(a1 + qword_1004A5B30 + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = (a1 + qword_1004A5B40);
  *v2 = 0;
  v2[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100092350(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v16.receiver = a1;
  v16.super_class = type metadata accessor for GenericPlatter(0);
  v8 = v16.receiver;
  v9 = a5;
  v10 = objc_msgSendSuper2(&v16, "hitTest:withEvent:", v9, a2, a3);
  if (!v10)
  {

    goto LABEL_5;
  }

  v12 = v10;
  v13 = (*((swift_isaMask & *v8) + 0x140))(v10, v11);
  v14 = [v12 isDescendantOfView:{v13, v16.receiver, v16.super_class}];

  v8 = v12;
  if ((v14 & 1) == 0)
  {
LABEL_5:

    v12 = 0;
  }

  return v12;
}

void sub_100092478(char *a1)
{
  v2 = &a1[qword_1004A5B30];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 24);
    v6 = a1;
    v5(ObjectType, v3);
    swift_unknownObjectRelease();
  }
}

void sub_100092530()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_1004A0858 != -1)
  {
    swift_once();
  }

  v2 = qword_1004D5430;
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v7[4] = sub_100092C88;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1000DB768;
  v7[3] = &unk_10046BAB0;
  v4 = _Block_copy(v7);
  v5 = v0;

  v6 = [v1 addObserverForName:v2 object:0 queue:0 usingBlock:v4];
  _Block_release(v4);
  swift_unknownObjectRelease();
}

uint64_t sub_10009268C(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004D9B4();
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  aBlock[4] = sub_100092CA8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = &unk_10046BB00;
  v13 = _Block_copy(aBlock);
  v14 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10003180C();
  sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
  sub_100031864();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

double sub_100092AB0()
{
  sub_10001B9D0(v0 + qword_1004A5B30);

  v1 = *(v0 + qword_1004A5B40);
  v2 = *(v0 + qword_1004A5B40 + 8);

  return sub_1000223C4(v1, v2);
}

id sub_100092B08()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenericPlatter(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_100092B40(uint64_t a1)
{
  sub_10001B9D0(a1 + qword_1004A5B30);

  v2 = *(a1 + qword_1004A5B40);
  v3 = *(a1 + qword_1004A5B40 + 8);

  return sub_1000223C4(v2, v3);
}

uint64_t type metadata accessor for GenericPlatter(uint64_t a1)
{
  result = qword_1004A5B70;
  if (!qword_1004A5B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100092C50()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_100092C90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_100092D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v148 = a10;
  v147 = a9;
  if (a1 == a5 && a2 == a6 || (v11 = 0, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v12 = [objc_opt_self() sharedApplication];
    v13 = [v12 preferredContentSizeCategory];

    LOBYTE(v12) = UIContentSizeCategory.isAccessibilityCategory.getter();
    v11 = v12 ^ 1;
  }

  v14 = *(v10 + qword_1004A5D90);
  v15 = String._bridgeToObjectiveC()();
  [v14 setText:v15];

  v16 = String._bridgeToObjectiveC()();
  [v14 setAccessibilityLabel:v16];

  [v14 sizeToFit];
  v17 = *(v10 + qword_1004A5DA0);
  v18 = String._bridgeToObjectiveC()();
  [v17 setAccessibilityLabel:v18];

  v19 = *(v10 + qword_1004A5DA8);
  v20 = String._bridgeToObjectiveC()();
  [v19 setAccessibilityLabel:v20];

  v21 = [objc_opt_self() sharedApplication];
  v22 = [v21 preferredContentSizeCategory];

  LOBYTE(v21) = UIContentSizeCategory.isAccessibilityCategory.getter();
  if (v21)
  {
    v23 = *(v10 + qword_1004A5DB0);
    sub_100097108(v14, v23);
    [v23 bounds];
    v24 = CGRectGetWidth(v151) * 0.5;
    [v23 bounds];
    [v14 setCenter:{v24, CGRectGetHeight(v152) * 0.5}];
    v25 = String._bridgeToObjectiveC()();
    [v17 setText:v25];

    [v17 sizeToFit];
    v26 = [v17 superview];
    if (v26)
    {
      v27 = v26;
      sub_100097108(v17, v26);

      v28 = String._bridgeToObjectiveC()();
      [v19 setText:v28];

      [v19 sizeToFit];
      v29 = [v19 superview];
      if (v29)
      {
        v30 = v29;
        sub_100097108(v19, v29);

        v31 = [v17 font];
        if (v31)
        {
          v32 = v31;
          [v31 pointSize];
          v34 = v33;

          v35 = [v19 font];
          if (v35)
          {
            v36 = v35;
            [v35 pointSize];
            v38 = v37;

            if (v34 != v38)
            {
              v39 = [v17 font];
              if (!v39)
              {
LABEL_76:
                __break(1u);
                goto LABEL_77;
              }

              v40 = v39;
              [v39 pointSize];
              v42 = v41;

              v43 = [v19 font];
              if (!v43)
              {
LABEL_77:
                __break(1u);
                goto LABEL_78;
              }

              v44 = v43;
              [v43 pointSize];
              v46 = v45;

              if (v42 >= v46)
              {
                v47 = v19;
              }

              else
              {
                v47 = v17;
              }

              v48 = [v47 font];
              [v17 setFont:v48];
              [v19 setFont:v48];
            }

            v49 = [v17 superview];
            if (v49)
            {
              v50 = v49;
              [v49 bounds];
              v52 = v51;
              v54 = v53;
              v56 = v55;
              v58 = v57;

              v153.origin.x = v52;
              v153.origin.y = v54;
              v153.size.width = v56;
              v153.size.height = v58;
              Width = CGRectGetWidth(v153);
              v60 = [v17 superview];
              if (v60)
              {
                v61 = v60;
                [v60 bounds];
                v63 = v62;
                v65 = v64;
                v67 = v66;
                v69 = v68;

                v154.origin.x = v63;
                v154.origin.y = v65;
                v154.size.width = v67;
                v154.size.height = v69;
                [v17 setCenter:{Width * 0.5, CGRectGetHeight(v154) * 0.5}];
                v70 = [v19 superview];
                if (v70)
                {
                  v71 = v70;
                  [v70 bounds];
                  v73 = v72;
                  v75 = v74;
                  v77 = v76;
                  v79 = v78;

                  v155.origin.x = v73;
                  v155.origin.y = v75;
                  v155.size.width = v77;
                  v155.size.height = v79;
                  v80 = CGRectGetWidth(v155);
                  v81 = [v19 superview];
                  if (v81)
                  {
                    v82 = v81;
                    [v81 bounds];
                    v84 = v83;
                    v86 = v85;
                    v88 = v87;
                    v90 = v89;

                    v156.origin.x = v84;
                    v156.origin.y = v86;
                    v156.size.width = v88;
                    v156.size.height = v90;
                    v91 = CGRectGetHeight(v156) * 0.5;

                    [v19 setCenter:{v80 * 0.5, v91}];
                    return;
                  }

                  goto LABEL_73;
                }

LABEL_72:
                __break(1u);
LABEL_73:
                __break(1u);
                goto LABEL_74;
              }

              goto LABEL_70;
            }

            goto LABEL_68;
          }

          goto LABEL_65;
        }

        goto LABEL_63;
      }
    }

    else
    {
      __break(1u);
    }

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
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v92 = String._bridgeToObjectiveC()();
  [v17 setText:v92];

  if (v11)
  {
    v93 = String._bridgeToObjectiveC()();
    [v17 setAccessibilityLabel:v93];
  }

  else
  {
    [v17 sizeToFit];
  }

  v94 = String._bridgeToObjectiveC()();
  [v19 setText:v94];

  [v19 sizeToFit];
  if ((v11 & 1) == 0)
  {
    v95 = [v17 font];
    if (!v95)
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v96 = v95;
    [v95 pointSize];
    v98 = v97;

    v99 = [v19 font];
    if (!v99)
    {
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v100 = v99;
    [v99 pointSize];
    v102 = v101;

    if (v98 != v102)
    {
      v103 = [v17 font];
      if (!v103)
      {
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      v104 = v103;
      [v103 pointSize];
      v106 = v105;

      v107 = [v19 font];
      if (!v107)
      {
LABEL_79:
        __break(1u);
        return;
      }

      v108 = v107;
      [v107 pointSize];
      v110 = v109;

      if (v106 >= v110)
      {
        v111 = v19;
      }

      else
      {
        v111 = v17;
      }

      v112 = [v111 font];
      [v17 setFont:v112];
      [v19 setFont:v112];
    }
  }

  [v14 setTranslatesAutoresizingMaskIntoConstraints:{0, v147, v148}];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  v113 = [v14 centerXAnchor];
  v114 = [v14 superview];
  if (!v114)
  {
    goto LABEL_62;
  }

  v115 = v114;
  v116 = [v114 centerXAnchor];

  v117 = [v113 constraintEqualToAnchor:v116];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v118 = [v14 centerYAnchor];
  v119 = [v14 superview];
  if (!v119)
  {
    goto LABEL_64;
  }

  v120 = v119;
  v121 = [v119 centerYAnchor];

  v122 = [v118 constraintEqualToAnchor:v121];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v123 = [v17 centerXAnchor];
  v124 = [v17 superview];
  if (!v124)
  {
    goto LABEL_66;
  }

  v125 = v124;
  v126 = [v124 centerXAnchor];

  v127 = [v123 constraintEqualToAnchor:v126];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v128 = [v19 centerXAnchor];
  v129 = [v19 superview];
  if (!v129)
  {
    goto LABEL_67;
  }

  v130 = v129;
  v131 = [v129 centerXAnchor];

  v132 = [v128 constraintEqualToAnchor:v131];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v133 = [v17 topAnchor];
  v134 = [v17 superview];
  if (!v134)
  {
    goto LABEL_69;
  }

  v135 = v134;
  v136 = [v134 topAnchor];

  v137 = [v133 constraintEqualToAnchor:v136];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v138 = [v17 bottomAnchor];
  v139 = [v19 topAnchor];
  v140 = [v138 constraintEqualToAnchor:v139];

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v141 = [v19 bottomAnchor];
  v142 = [v19 superview];
  if (!v142)
  {
    goto LABEL_71;
  }

  v143 = v142;
  v144 = [v142 bottomAnchor];

  v145 = [v141 constraintEqualToAnchor:v144];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v146 = objc_opt_self();
  sub_100022180();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v146 activateConstraints:isa];
}

void sub_100093AF8()
{
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = UIContentSizeCategory.isAccessibilityCategory.getter();
  v84 = v1;
  if (v1)
  {
    v3 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleHeadline];
    v4 = qword_1004A5D28;
    [v3 scaledValueForValue:*&v0[qword_1004A5D28]];

    v5 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleHeadline];
    [v5 scaledValueForValue:*&v0[v4]];
    v7 = v6;

    v8 = 69.5;
    if (v7 <= 69.5)
    {
      v8 = v7;
    }

    *&v0[v4] = v8;
    v9 = v8 + v8 + 195.0 + 15.0;
    *&v0[qword_1004A5D08] = v9;
  }

  [v0 setAlpha:0.0];
  v10 = *&v0[qword_1004A5DC0];
  v11 = objc_opt_self();
  v12 = [v11 clearColor];
  [v10 setBackgroundColor:v12];

  v82 = v10;
  [v0 addSubview:v10];
  v13 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v14 = [v11 clearColor];
  [v13 setBackgroundColor:v14];

  [v10 addSubview:v13];
  v83 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v15 = [v11 clearColor];
  [v83 setBackgroundColor:v15];

  [v13 addSubview:v83];
  v16 = v0;
  sub_1000946CC(v83, v84 & 1);
  v17 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v18 = [v11 clearColor];
  [v17 setBackgroundColor:v18];

  [v13 addSubview:v17];
  sub_100095D28(v17);
  v85 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v19 = [v11 clearColor];
  [v85 setBackgroundColor:v19];

  [v13 addSubview:v85];
  [v83 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v85 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v82 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10000F974(&unk_1004A3F10, &unk_1003D6230);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1003D9FE0;
  v21 = [v83 topAnchor];
  v22 = [v16 topAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  *(v20 + 32) = v23;
  v24 = [v83 leadingAnchor];
  v25 = [v13 leadingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];

  *(v20 + 40) = v26;
  v27 = [v83 trailingAnchor];
  v28 = [v13 trailingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];

  *(v20 + 48) = v29;
  v30 = [v83 bottomAnchor];
  v31 = [v85 topAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  *(v20 + 56) = v32;
  v33 = [v83 heightAnchor];
  v81 = qword_1004A5D28;
  v34 = [v33 constraintEqualToConstant:*&v16[qword_1004A5D28] + *&v16[qword_1004A5D28]];

  *(v20 + 64) = v34;
  v35 = [v85 leadingAnchor];
  v36 = [v13 leadingAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];

  *(v20 + 72) = v37;
  v38 = [v85 trailingAnchor];
  v39 = [v13 trailingAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];

  *(v20 + 80) = v40;
  v41 = [v85 bottomAnchor];
  v42 = [v17 topAnchor];
  v43 = [v41 constraintEqualToAnchor:v42];

  *(v20 + 88) = v43;
  v44 = [v17 leadingAnchor];
  v45 = [v13 leadingAnchor];
  v46 = [v44 constraintEqualToAnchor:v45 constant:28.0];

  *(v20 + 96) = v46;
  v47 = [v17 trailingAnchor];
  v48 = [v13 trailingAnchor];
  v49 = [v47 constraintEqualToAnchor:v48 constant:-28.0];

  *(v20 + 104) = v49;
  v50 = [v17 bottomAnchor];
  v51 = [v13 bottomAnchor];
  v52 = [v50 constraintEqualToAnchor:v51 constant:-28.0];

  *(v20 + 112) = v52;
  v53 = [v17 heightAnchor];
  v54 = [v53 constraintEqualToConstant:*&v16[v81]];

  *(v20 + 120) = v54;
  v55 = [v82 topAnchor];
  v56 = [v13 topAnchor];
  v57 = [v55 constraintEqualToAnchor:v56];

  *(v20 + 128) = v57;
  v58 = [v82 leadingAnchor];
  v59 = [v13 leadingAnchor];
  v60 = [v58 constraintEqualToAnchor:v59];

  *(v20 + 136) = v60;
  v61 = [v82 trailingAnchor];
  v62 = [v13 trailingAnchor];
  v63 = [v61 constraintEqualToAnchor:v62];

  *(v20 + 144) = v63;
  v64 = [v82 bottomAnchor];
  v65 = [v13 bottomAnchor];
  v66 = [v64 constraintEqualToAnchor:v65];

  *(v20 + 152) = v66;
  v67 = [v16 topAnchor];
  v68 = [v13 topAnchor];
  v69 = [v67 constraintEqualToAnchor:v68];

  *(v20 + 160) = v69;
  v70 = [v16 leadingAnchor];
  v71 = [v13 leadingAnchor];
  v72 = [v70 constraintEqualToAnchor:v71];

  *(v20 + 168) = v72;
  v73 = [v16 trailingAnchor];
  v74 = [v13 trailingAnchor];
  v75 = [v73 constraintEqualToAnchor:v74];

  *(v20 + 176) = v75;
  v76 = [v16 bottomAnchor];
  v77 = [v13 bottomAnchor];
  v78 = [v76 constraintEqualToAnchor:v77];

  *(v20 + 184) = v78;
  v79 = objc_opt_self();
  sub_100022180();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v79 activateConstraints:isa];

  sub_100092530();
  sub_1000DB8AC();
}

void sub_1000946CC(void *a1, char a2)
{
  v3 = v2;
  if (a2)
  {
    v5 = *(v2 + qword_1004A5DC8);
    CGSize.init(_:_:)();
    [v5 bounds];
    [v5 setBounds:?];
    [a1 bounds];
    [v5 setCenter:{CGRectGetWidth(v102) * 0.5, 150.0}];
    if (qword_1004A0558 != -1)
    {
      swift_once();
    }

    [v5 setBackgroundColor:qword_1004D50C8];
    [a1 addSubview:v5];
    v6 = [objc_allocWithZone(UIView) init];
    [v5 frame];
    [v6 bounds];
    [v6 setBounds:?];
    [v6 bounds];
    v8 = v7 * 0.5 + 16.0;
    [v5 center];
    [v6 setCenter:v8];
    v9 = objc_opt_self();
    v10 = [v9 clearColor];
    [v6 setBackgroundColor:v10];

    [a1 addSubview:v6];
    v11 = *(v3 + qword_1004A5DA0);
    v12 = [v9 clearColor];
    [v11 setBackgroundColor:v12];

    [v11 setTextAlignment:1];
    sub_10019FCB8();
    v14 = v13;
    v98 = objc_opt_self();
    v15 = [v98 fontWithDescriptor:v14 size:0.0];

    [v11 setFont:v15];
    if (qword_1004A0550 != -1)
    {
      swift_once();
    }

    [v11 setTextColor:qword_1004D50C0];
    v16 = *(v3 + qword_1004A5DB0);
    [a1 bounds];
    CGRectGetWidth(v103);
    [v16 bounds];
    [v16 setBounds:?];
    [a1 bounds];
    [v16 setCenter:{CGRectGetWidth(v104) * 0.5, 45.0}];
    v17 = [v9 clearColor];
    [v16 setBackgroundColor:v17];

    [a1 addSubview:v16];
    v18 = *(v3 + qword_1004A5D90);
    v19 = [v9 clearColor];
    [v18 setBackgroundColor:v19];

    [v18 setTextAlignment:1];
    v20 = [v98 systemFontOfSize:60.0 weight:UIFontWeightRegular];
    [v18 setFont:v20];

    if (qword_1004A0548 != -1)
    {
      swift_once();
    }

    [v18 setTextColor:qword_1004D50B8];
    [v16 addSubview:v18];
    v21 = [objc_allocWithZone(UIView) init];
    [v6 bounds];
    [v21 bounds];
    [v21 setBounds:?];
    [v5 frame];
    v22 = CGRectGetMaxX(v105) + 16.0;
    [v21 bounds];
    v24 = v22 + v23 * 0.5;
    [v6 center];
    [v21 setCenter:v24];
    v25 = [v9 clearColor];
    [v21 setBackgroundColor:v25];

    [a1 addSubview:v21];
    v26 = *(v3 + qword_1004A5DA8);
    v27 = [v9 clearColor];
    [v26 setBackgroundColor:v27];

    [v26 setTextAlignment:1];
    sub_10019FCB8();
    v29 = v28;
    v30 = [v98 fontWithDescriptor:v28 size:0.0];

    [v26 setFont:v30];
    [v26 setTextColor:qword_1004D50C0];
    if (*(v3 + qword_1004A5DB8) == 1)
    {
      [v21 addSubview:v11];
      [v6 addSubview:v26];
    }

    else
    {
      [v6 addSubview:v11];
      [v21 addSubview:v26];
    }
  }

  else
  {
    v31 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
    v32 = [v31 widthAnchor];
    v33 = [v32 constraintEqualToConstant:1.0];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v34 = [v31 topAnchor];
    v35 = [a1 topAnchor];
    v36 = [v34 constraintEqualToAnchor:v35];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v37 = [v31 bottomAnchor];
    v38 = [a1 bottomAnchor];
    v39 = [v37 constraintEqualToAnchor:v38];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v40 = [v31 centerXAnchor];
    v41 = [a1 centerXAnchor];
    v42 = [v40 constraintEqualToAnchor:v41];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    if (qword_1004A0558 != -1)
    {
      swift_once();
    }

    [v31 setBackgroundColor:qword_1004D50C8];
    [a1 addSubview:v31];
    v6 = [objc_allocWithZone(UIView) init];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v97 = *(v3 + qword_1004A5D90);
    [v97 setTranslatesAutoresizingMaskIntoConstraints:0];
    v43 = [v6 leadingAnchor];
    v44 = [a1 leadingAnchor];
    v45 = [v43 constraintEqualToAnchor:v44];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v46 = [v6 trailingAnchor];
    v99 = v31;
    v47 = [v31 leadingAnchor];
    v48 = [v46 constraintEqualToAnchor:v47];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v49 = [v6 topAnchor];
    v50 = [a1 topAnchor];
    v51 = [v49 constraintEqualToAnchor:v50];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v52 = [v6 bottomAnchor];
    v53 = [a1 bottomAnchor];
    v54 = [v52 constraintEqualToAnchor:v53];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v55 = [v6 leadingAnchor];
    v56 = [v97 leadingAnchor];
    v57 = [v55 constraintEqualToAnchor:v56];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v58 = [v6 trailingAnchor];
    v59 = [v97 trailingAnchor];
    v60 = [v58 constraintEqualToAnchor:v59];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v61 = [v6 topAnchor];
    v62 = [v97 topAnchor];
    v63 = [v61 constraintEqualToAnchor:v62];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v96 = v3;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v64 = [v6 bottomAnchor];
    v65 = [v97 bottomAnchor];
    v66 = [v64 constraintEqualToAnchor:v65];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v67 = objc_opt_self();
    v68 = [v67 clearColor];
    [v6 setBackgroundColor:v68];

    [a1 addSubview:v6];
    v69 = [v67 clearColor];
    [v97 setBackgroundColor:v69];

    [v97 setTextAlignment:1];
    v70 = objc_opt_self();
    v71 = [v70 systemFontOfSize:60.0 weight:UIFontWeightRegular];
    [v97 setFont:v71];

    if (qword_1004A0548 != -1)
    {
      swift_once();
    }

    [v97 setTextColor:qword_1004D50B8];
    v21 = [objc_allocWithZone(UIView) init];
    [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
    v72 = [v21 leadingAnchor];
    v73 = [v31 trailingAnchor];
    v74 = [v72 constraintEqualToAnchor:v73];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v75 = [v21 trailingAnchor];
    v76 = [a1 trailingAnchor];
    v77 = [v75 constraintEqualToAnchor:v76];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v78 = [v21 topAnchor];
    v79 = [a1 topAnchor];
    v80 = [v78 constraintEqualToAnchor:v79];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v81 = [v21 bottomAnchor];
    v82 = [a1 bottomAnchor];
    v83 = [v81 constraintEqualToAnchor:v82];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v84 = [v67 clearColor];
    [v21 setBackgroundColor:v84];

    [a1 addSubview:v21];
    v85 = *(v96 + qword_1004A5DA0);
    v86 = [v67 clearColor];
    [v85 setBackgroundColor:v86];

    sub_10019FCB8();
    v88 = v87;
    v89 = [v70 fontWithDescriptor:v87 size:0.0];

    [v85 setFont:v89];
    if (qword_1004A0550 != -1)
    {
      swift_once();
    }

    [v85 setTextColor:qword_1004D50C0];
    v90 = *(v96 + qword_1004A5DA8);
    v91 = [v67 clearColor];
    [v90 setBackgroundColor:v91];

    sub_10019FCB8();
    v93 = v92;
    v94 = [v70 fontWithDescriptor:v92 size:0.0];

    [v90 setFont:v94];
    [v90 setTextColor:qword_1004D50C0];
    if (*(v96 + qword_1004A5DB8) == 1)
    {
      [v85 setTextAlignment:2];
      [v90 setTextAlignment:2];
      [v21 addSubview:v97];
      [v6 addSubview:v85];
      [v6 addSubview:v90];
    }

    else
    {
      [v85 setTextAlignment:0];
      [v90 setTextAlignment:0];
      [v6 addSubview:v97];
      [v21 addSubview:v85];
      [v21 addSubview:v90];
    }
  }

  v95 = objc_opt_self();
  sub_100022180();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v95 activateConstraints:isa];
}