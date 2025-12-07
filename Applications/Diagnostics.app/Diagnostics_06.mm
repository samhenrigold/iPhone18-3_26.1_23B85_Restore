double sub_1000BBCA4(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = &a1[*a4];
  v5 = *v4;
  if (*v4)
  {
    v6 = *(v4 + 1);
    v7 = a1;
    v8 = sub_10003C48C(v5, v6);
    v5(v8);

    return sub_10003C52C(v5, v6);
  }

  return result;
}

id sub_1000BBD24(uint64_t a1, DARootViewController *a2, uint64_t a3, DARootViewController *a4, uint64_t a5, DARootViewController *a6, uint64_t a7)
{
  v12 = &v7[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_primaryActionTitle];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v7[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_secondaryActionTitle];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v7[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_primaryAction];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v7[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_secondaryAction];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v7[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_cancelAction];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = String._bridgeToObjectiveC()();
  a2, v18, v19, v20, v21, v22, v23, v24;
  if (!a4)
  {
    v25 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v33 = 0;
    goto LABEL_6;
  }

  v25 = String._bridgeToObjectiveC()();
  a4, v26, v27, v28, v29, v30, v31, v32;
  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v33 = String._bridgeToObjectiveC()();
  a6, v34, v35, v36, v37, v38, v39, v40;
LABEL_6:
  v43.receiver = v7;
  v43.super_class = type metadata accessor for ConsentNoticeViewController();
  v41 = objc_msgSendSuper2(&v43, "initWithTitle:detailText:symbolName:contentLayout:", v17, v25, v33, a7);

  return v41;
}

id sub_1000BBF04(uint64_t a1, DARootViewController *a2, uint64_t a3, DARootViewController *a4, void *a5, uint64_t a6)
{
  v11 = &v6[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_primaryActionTitle];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v6[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_secondaryActionTitle];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v6[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_primaryAction];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v6[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_secondaryAction];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v6[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_cancelAction];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = String._bridgeToObjectiveC()();
  a2, v17, v18, v19, v20, v21, v22, v23;
  if (a4)
  {
    v24 = String._bridgeToObjectiveC()();
    a4, v25, v26, v27, v28, v29, v30, v31;
  }

  else
  {
    v24 = 0;
  }

  v34.receiver = v6;
  v34.super_class = type metadata accessor for ConsentNoticeViewController();
  v32 = objc_msgSendSuper2(&v34, "initWithTitle:detailText:icon:contentLayout:", v16, v24, a5, a6);

  return v32;
}

id sub_1000BC0A8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ConsentNoticeViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1000BC190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a5 == 0;
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD00000000000001ALL, 0x8000000100190050);
  v10 = v9;
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD00000000000001CLL, 0x8000000100190070);
  v12 = v11;
  v13 = String._bridgeToObjectiveC()();
  v10, v14, v15, v16, v17, v18, v19, v20;
  v21 = String._bridgeToObjectiveC()();
  v12, v22, v23, v24, v25, v26, v27, v28;
  v29 = [objc_opt_self() alertControllerWithTitle:v13 message:v21 preferredStyle:v8];

  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000018, 0x8000000100190090);
  v31 = v30;
  v32 = swift_allocObject();
  v32[2] = a1;
  v32[3] = a2;
  v32[4] = v29;

  v33 = v29;
  v34 = String._bridgeToObjectiveC()();
  v31, v35, v36, v37, v38, v39, v40, v41;
  v68 = sub_1000BCB04;
  v69 = v32;
  aBlock = _NSConcreteStackBlock;
  v65 = 1107296256;
  v66 = sub_100072168;
  v67 = &unk_1001C4458;
  v42 = _Block_copy(&aBlock);

  v43 = objc_opt_self();
  v44 = [v43 actionWithTitle:v34 style:2 handler:v42];
  _Block_release(v42);

  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000017, 0x80000001001900B0);
  v46 = v45;
  v47 = swift_allocObject();
  v47[2] = a3;
  v47[3] = a4;
  v47[4] = v33;
  v48 = v33;
  sub_10003C48C(a3, a4);
  v49 = String._bridgeToObjectiveC()();
  v46, v50, v51, v52, v53, v54, v55, v56;
  v68 = sub_1000BCB14;
  v69 = v47;
  aBlock = _NSConcreteStackBlock;
  v65 = 1107296256;
  v66 = sub_100072168;
  v67 = &unk_1001C44A8;
  v57 = _Block_copy(&aBlock);

  v58 = [v43 actionWithTitle:v49 style:1 handler:v57];
  _Block_release(v57);

  [v48 addAction:v44];
  [v48 addAction:v58];
  if (a5)
  {
    swift_unknownObjectRetain();
    v59 = [v48 popoverPresentationController];
    if (!v59)
    {

      swift_unknownObjectRelease();
      return v48;
    }

    v60 = v59;
    [v59 setSourceItem:a5];

    swift_unknownObjectRelease();
  }

  return v48;
}

double sub_1000BC590(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_1000BC5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a5 == 0;
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000021, 0x80000001001900D0);
  v10 = v9;
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000023, 0x8000000100190100);
  v12 = v11;
  v13 = String._bridgeToObjectiveC()();
  v10, v14, v15, v16, v17, v18, v19, v20;
  v21 = String._bridgeToObjectiveC()();
  v12, v22, v23, v24, v25, v26, v27, v28;
  v29 = [objc_opt_self() alertControllerWithTitle:v13 message:v21 preferredStyle:v8];

  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000020, 0x8000000100190130);
  v31 = v30;
  v32 = swift_allocObject();
  v32[2] = a1;
  v32[3] = a2;
  v32[4] = v29;

  v33 = v29;
  v34 = String._bridgeToObjectiveC()();
  v31, v35, v36, v37, v38, v39, v40, v41;
  v68 = sub_1000BC9F8;
  v69 = v32;
  aBlock = _NSConcreteStackBlock;
  v65 = 1107296256;
  v66 = sub_100072168;
  v67 = &unk_1001C44F8;
  v42 = _Block_copy(&aBlock);

  v43 = objc_opt_self();
  v44 = [v43 actionWithTitle:v34 style:2 handler:v42];
  _Block_release(v42);

  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000024, 0x8000000100190160);
  v46 = v45;
  v47 = swift_allocObject();
  v47[2] = a3;
  v47[3] = a4;
  v47[4] = v33;
  v48 = v33;
  sub_10003C48C(a3, a4);
  v49 = String._bridgeToObjectiveC()();
  v46, v50, v51, v52, v53, v54, v55, v56;
  v68 = sub_1000BCA70;
  v69 = v47;
  aBlock = _NSConcreteStackBlock;
  v65 = 1107296256;
  v66 = sub_100072168;
  v67 = &unk_1001C4548;
  v57 = _Block_copy(&aBlock);

  v58 = [v43 actionWithTitle:v49 style:1 handler:v57];
  _Block_release(v57);

  [v48 addAction:v44];
  [v48 addAction:v58];
  if (a5)
  {
    swift_unknownObjectRetain();
    v59 = [v48 popoverPresentationController];
    if (!v59)
    {

      swift_unknownObjectRelease();
      return v48;
    }

    v60 = v59;
    [v59 setSourceItem:a5];

    swift_unknownObjectRelease();
  }

  return v48;
}

uint64_t sub_1000BC9B8()
{

  return _swift_deallocObject(v0, 40, 7, v1);
}

uint64_t sub_1000BCA28()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 40, 7, v1);
}

uint64_t sub_1000BCA74()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(*(v0 + 32));
  }

  return result;
}

unint64_t sub_1000BCAA4()
{
  result = qword_1001FEE40;
  if (!qword_1001FEE40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001FEE40);
  }

  return result;
}

uint64_t sub_1000BCB18(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v27 = sub_10003C49C(&qword_1001FFE40, &unk_1001824B0);
  __chkstk_darwin(v27);
  v28 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v8 = type metadata accessor for Session.CollectOptions();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = &v24 - v14;
  v16 = *(v9 + 16);
  v26 = v2;
  v16(v11, v2, v8, v13);
  v24 = sub_1000C5A68(&qword_100202930, &type metadata accessor for Session.CollectOptions, &protocol conformance descriptor for Session.CollectOptions);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v17 = v27;
  sub_1000C5A68(&qword_1001FFE48, &type metadata accessor for Session.CollectOptions, &protocol conformance descriptor for Session.CollectOptions);
  v25 = a2;
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v17 + 48);
  *v7 = (v18 & 1) == 0;
  if (v18)
  {
    (*(v9 + 32))(&v7[v19], v15, v8);
  }

  else
  {
    (*(v9 + 8))(v15, v8);
    v20 = v25;
    (v16)(&v7[v19], v25, v8);
    (v16)(v11, v20, v8);
    dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  v21 = v28;
  sub_10009DDBC(v7, v28, &qword_1001FFE40, &unk_1001824B0);
  v22 = *v21;
  (*(v9 + 32))(v29, &v21[*(v17 + 48)], v8);
  return v22;
}

void sub_1000BCE1C(uint64_t (*a1)(void), uint64_t a2, DARootViewController *a3)
{
  v52 = type metadata accessor for IndexPath();
  __chkstk_darwin(v52);
  v49 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v8);
  v51 = &v41 - v18;
  v48 = *&a3->hostAppBundleIdentifier[8];
  if (v48)
  {
    v19 = 0;
    v45 = (v16 + 8);
    v46 = (v16 + 32);
    v47 = v16 + 16;
    v50 = &_swiftEmptyArrayStorage;
    v43 = a2;
    v44 = a3;
    v42 = a1;
    while (v19 < *&a3->hostAppBundleIdentifier[8])
    {
      v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v21 = *(v16 + 72);
      v22 = a3;
      v23 = a3 + v20 + v21 * v19;
      v24 = v16;
      v25 = a1;
      v26 = v51;
      (*(v16 + 16))(v51, v23, v52, v17);
      v27 = v26;
      a1 = v25;
      v28 = v25(v27);
      if (v3)
      {
        (*v45)(v51, v52);

        v22, v34, v35, v36, v37, v38, v39, v40;
        return;
      }

      if (v28)
      {
        v29 = *v46;
        (*v46)(v49, v51, v52);
        v30 = v50;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v53 = v30;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000B7D60(0, *&v30->hostAppBundleIdentifier[8] + 1, 1);
          v30 = v53;
        }

        v33 = *&v30->hostAppBundleIdentifier[8];
        v32 = *v30->responder;
        if (v33 >= v32 >> 1)
        {
          sub_1000B7D60((v32 > 1), v33 + 1, 1);
          v30 = v53;
        }

        *&v30->hostAppBundleIdentifier[8] = v33 + 1;
        v50 = v30;
        v29(v30 + v20 + v33 * v21, v49, v52);
        a3 = v44;
        a1 = v42;
      }

      else
      {
        (*v45)(v51, v52);
        a3 = v22;
      }

      ++v19;
      v16 = v24;
      if (v48 == v19)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v50 = &_swiftEmptyArrayStorage;
LABEL_14:
    a3, v9, v10, v11, v12, v13, v14, v15;
  }
}

uint64_t sub_1000BD0EC(uint64_t a1)
{
  v2 = type metadata accessor for TargetDevice.DeviceType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TargetDevice();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DeviceSelector.DataSourceItemState(0);
  __chkstk_darwin(v10);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C5A04(v1, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v12, v2);
    Hasher._combine(_:)(1uLL);
    sub_1000C5A68(&unk_1001FFDD0, &type metadata accessor for TargetDevice.DeviceType, &protocol conformance descriptor for TargetDevice.DeviceType);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    Hasher._combine(_:)(0);
    sub_1000C5A68(&unk_1001FDED0, &type metadata accessor for TargetDevice, &protocol conformance descriptor for TargetDevice);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v7 + 8))(v9, v6);
  }
}

Swift::Int sub_1000BD3A4()
{
  Hasher.init(_seed:)();
  sub_1000BD0EC(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000BD3E8(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1000BD0EC(v2);
  return Hasher._finalize()();
}

id sub_1000BD428()
{
  v0 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  [v0 startAnimating];
  v1 = [objc_allocWithZone(UILabel) init];
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000024, 0x80000001001903C0);
  v3 = v2;
  v4 = String._bridgeToObjectiveC()();
  v3, v5, v6, v7, v8, v9, v10, v11;
  [v1 setText:v4];

  v12 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v1 setFont:v12];

  v13 = [objc_opt_self() labelColor];
  [v1 setTextColor:v13];

  [v1 setNumberOfLines:0];
  sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10017ED90;
  *(v14 + 32) = v0;
  *(v14 + 40) = v1;
  v15 = objc_allocWithZone(UIStackView);
  sub_10003E110(0, &qword_1001FF090, UIView_ptr);
  v16 = v0;
  v17 = v1;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v14, v19, v20, v21, v22, v23, v24, v25;
  v26 = [v15 initWithArrangedSubviews:isa];

  [v26 setSpacing:16.0];
  [v26 setAxis:1];
  [v26 setAlignment:3];

  return v26;
}

id sub_1000BD678()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() systemImageNamed:v0];

  v2 = [objc_allocWithZone(UIImageView) initWithImage:v1];
  v3 = v2;
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = objc_opt_self();
  sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10017ED90;
  v6 = [v3 widthAnchor];
  v7 = [v6 constraintEqualToConstant:70.0];

  *(v5 + 32) = v7;
  v8 = [v3 heightAnchor];
  v9 = [v8 constraintEqualToConstant:70.0];

  *(v5 + 40) = v9;
  sub_10003E110(0, &qword_1001FD550, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v5, v11, v12, v13, v14, v15, v16, v17;
  [v4 activateConstraints:isa];

  v18 = [objc_allocWithZone(UILabel) init];
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000025, 0x8000000100190390);
  v20 = v19;
  v21 = String._bridgeToObjectiveC()();
  v20, v22, v23, v24, v25, v26, v27, v28;
  [v18 setText:v21];

  v29 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v18 setFont:v29];

  v30 = [objc_opt_self() labelColor];
  [v18 setTextColor:v30];

  [v18 setTextAlignment:1];
  [v18 setNumberOfLines:0];
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_10017ED90;
  *(v31 + 32) = v3;
  *(v31 + 40) = v18;
  v32 = objc_allocWithZone(UIStackView);
  sub_10003E110(0, &qword_1001FF090, UIView_ptr);
  v33 = v18;
  v34 = Array._bridgeToObjectiveC()().super.isa;
  v31, v35, v36, v37, v38, v39, v40, v41;
  v42 = [v32 initWithArrangedSubviews:v34];

  [v42 setSpacing:16.0];
  [v42 setAxis:1];
  [v42 setAlignment:3];

  return v42;
}

id sub_1000BDA58(char a1)
{
  v3 = &v1[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_DeviceSelectorHeaderIdentifier];
  *v3 = 0xD00000000000001ELL;
  v3[1] = 0x80000001001901C0;
  *&v1[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_tableViewPadding] = 0x4032000000000000;
  *&v1[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_tableRowHeight] = 0x4054000000000000;
  *&v1[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_discoveryOverlayPadding] = 0x4040000000000000;
  *&v1[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_noDeviceDiscoveryTimeOut] = 0x4014000000000000;
  *&v1[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_continueButton] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_tryAgainButton] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_devicesTableView] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_dataSource] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_discoveryTimeoutTimer] = 0;
  v4 = OBJC_IVAR____TtC11Diagnostics14DeviceSelector_discoveryActivityView;
  *&v1[v4] = sub_1000BD428();
  v5 = OBJC_IVAR____TtC11Diagnostics14DeviceSelector_noDevicesView;
  *&v1[v5] = sub_1000BD678();
  v1[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_consentState] = a1;
  v6 = sub_1000CA0BC();
  v7 = "iew";
  if (v6)
  {
    v7 = "ELS_DEVICE_SELECTOR_SUBTITLE";
    v8 = 0xD00000000000001FLL;
  }

  else
  {
    v8 = 0xD000000000000019;
  }

  if (v6)
  {
    v9 = "ELS_DEVICE_SELECTOR_TITLE_MULTI";
  }

  else
  {
    v9 = "ELS_DEVICE_SELECTOR_TITLE";
  }

  if (v6)
  {
    v10 = 0xD000000000000022;
  }

  else
  {
    v10 = 0xD00000000000001CLL;
  }

  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, v8, (v7 | 0x8000000000000000));
  v12 = v11;
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, v10, (v9 | 0x8000000000000000));
  v14 = v13;
  v15 = String._bridgeToObjectiveC()();
  v12, v16, v17, v18, v19, v20, v21, v22;
  v23 = String._bridgeToObjectiveC()();
  v14, v24, v25, v26, v27, v28, v29, v30;
  v33.receiver = v1;
  v33.super_class = type metadata accessor for DeviceSelector();
  v31 = objc_msgSendSuper2(&v33, "initWithTitle:detailText:symbolName:contentLayout:", v15, v23, 0, 3);

  return v31;
}

id sub_1000BDC64()
{
  v0 = ELSDeviceSelectionSingle;
  v1 = ELSDeviceSelectionRequirementTypeRequired;
  v2 = objc_opt_self();
  v3 = v0;
  v4 = v1;
  v5 = [v2 sharedManager];
  v6 = [v5 snapshot];

  v7 = [v6 deviceSelection];
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v46 = sub_1000C61A0();
  sub_10003C49C(&qword_1001FFE00, &qword_100182488);
  sub_1000CA2EC();
  AnyHashable.init<A>(_:)();
  if (!*(v8 + 16) || (v16 = sub_100064B74(v47), (v9 & 1) == 0))
  {
    v8, v9, v10, v11, v12, v13, v14, v15;
    sub_10003DB48(v47);
LABEL_11:
    v48 = 0u;
    v49 = 0u;
    goto LABEL_12;
  }

  sub_10003E010(*(v8 + 56) + 32 * v16, &v48);
  sub_10003DB48(v47);
  v8, v17, v18, v19, v20, v21, v22, v23;
  if (!*(&v49 + 1))
  {
LABEL_12:
    sub_10003DD84(&v48, &unk_1001FD720, &unk_10017ED20);
    return v3;
  }

  sub_10003C49C(&unk_100202960, &qword_100182490);
  if (swift_dynamicCast())
  {
    v24 = v47[0];
    v25 = ELSDeviceSelectionMapSelectionKey;
    *&v48 = ELSDeviceSelectionMapSelectionKey;
    type metadata accessor for ELSDeviceSelectionMapKey(0);
    sub_1000C5A68(&qword_1001FCD10, type metadata accessor for ELSDeviceSelectionMapKey, &unk_10017E970);
    v26 = v25;
    AnyHashable.init<A>(_:)();
    if (*(v24 + 16) && (v27 = sub_100064B74(v47), (v28 & 1) != 0))
    {
      sub_10003E010(*(v24 + 56) + 32 * v27, &v48);
      sub_10003DB48(v47);
      type metadata accessor for ELSDeviceSelection(0);
      if (swift_dynamicCast())
      {

        v3 = v46;
      }
    }

    else
    {
      sub_10003DB48(v47);
    }

    v30 = ELSDeviceSelectionMapRequirementTypeKey;
    AnyHashable.init<A>(_:)();
    if (*(v24 + 16) && (v38 = sub_100064B74(v47), (v31 & 1) != 0))
    {
      sub_10003E010(*(v24 + 56) + 32 * v38, &v48);
      sub_10003DB48(v47);
      v24, v39, v40, v41, v42, v43, v44, v45;
      type metadata accessor for ELSDeviceSelectionRequirementType(0);
      if (swift_dynamicCast())
      {
      }
    }

    else
    {
      v24, v31, v32, v33, v34, v35, v36, v37;
      sub_10003DB48(v47);
    }
  }

  return v3;
}

void sub_1000BDFB4(uint64_t a1, __n128 a2)
{
  v8.receiver = v2;
  v8.super_class = type metadata accessor for DeviceSelector();
  objc_msgSendSuper2(&v8, "viewDidLoad");
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() clearColor];
    [v4 setBackgroundColor:v5];

    v6 = [v2 headerView];
    [v6 setHidden:1];

    [*&v2[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_noDevicesView] setHidden:1];
    sub_1000BF08C(v7);
    sub_1000BFE00();
    sub_1000BE228();
  }

  else
  {
    __break(1u);
  }
}

void sub_1000BE228()
{
  v1 = objc_opt_self();
  v2 = [v1 boldButton];
  v3 = OBJC_IVAR____TtC11Diagnostics14DeviceSelector_continueButton;
  v4 = *&v0[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_continueButton];
  *&v0[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_continueButton] = v2;
  v5 = v2;

  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0x45554E49544E4F43, 0xE800000000000000);
  v7 = v6;
  v8 = String._bridgeToObjectiveC()();
  v7, v9, v10, v11, v12, v13, v14, v15;
  [v5 setTitle:v8 forState:0];

  v16 = *&v0[v3];
  if (!v16)
  {
    __break(1u);
    goto LABEL_11;
  }

  [v16 addTarget:v0 action:"continueConsent" forControlEvents:64];
  v17 = *&v0[v3];
  if (!v17)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  [v17 setEnabled:0];
  v18 = [v0 buttonTray];
  if (!*&v0[v3])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v19 = v18;
  [v18 addButton:?];

  v20 = [v1 boldButton];
  v21 = OBJC_IVAR____TtC11Diagnostics14DeviceSelector_tryAgainButton;
  v22 = *&v0[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_tryAgainButton];
  *&v0[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_tryAgainButton] = v20;
  v23 = v20;

  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0x494147415F595254, 0xE90000000000004ELL);
  v25 = v24;
  v26 = String._bridgeToObjectiveC()();
  v25, v27, v28, v29, v30, v31, v32, v33;
  [v23 setTitle:v26 forState:0];

  v34 = *&v0[v21];
  if (!v34)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v34 addTarget:v0 action:"tryAgain" forControlEvents:64];
  v35 = *&v0[v21];
  if (!v35)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v35 setHidden:1];
  v36 = [v0 buttonTray];
  if (!*&v0[v21])
  {
LABEL_15:
    __break(1u);
    return;
  }

  v37 = v36;
  [v36 addButton:?];
}

void sub_1000BE490(__n128 a1)
{
  v2 = v1;
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  if (SessionManager.currentSession.getter())
  {
    *(swift_allocObject() + 16) = v1;
    v3 = v1;
    Session.discoverDevices(callback:)();
  }

  sub_1000C1940();
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  v10[4] = sub_1000CB0F8;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100072168;
  v10[3] = &unk_1001C4638;
  v6 = _Block_copy(v10);
  v7 = v2;

  v8 = [v4 scheduledTimerWithTimeInterval:0 repeats:v6 block:5.0];
  _Block_release(v6);
  v9 = *&v7[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_discoveryTimeoutTimer];
  *&v7[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_discoveryTimeoutTimer] = v8;
}

void sub_1000BE63C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10);
  v14 = v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    if (qword_1001FC7D0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10003DAAC(v15, qword_10020A528);
    swift_errorRetain();
    v63 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v63, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, v63, v16, "Unable to start device discovery: %@", v17, 0xCu);
      sub_10003DD84(v18, &qword_1001FF0C0, &unk_10017ED00);

      v20 = v63;
    }

    else
    {
    }
  }

  else
  {
    v62 = v12;
    v63 = v11;
    if (qword_1001FC7D0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    v22 = sub_10003DAAC(v21, qword_10020A528);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    a1, v25, v26, v27, v28, v29, v30, v31;
    if (os_log_type_enabled(v23, v24))
    {
      v32 = swift_slowAlloc();
      v61 = v7;
      v33 = v32;
      v34 = swift_slowAlloc();
      v59[1] = v22;
      v35 = v34;
      aBlock[0] = v34;
      *v33 = 136315138;
      type metadata accessor for TargetDevice();
      v36 = Array.description.getter();
      v60 = a1;
      v37 = v14;
      v38 = v9;
      v39 = v6;
      v40 = a3;
      v42 = v41;
      v43 = sub_100056B7C(v36, v41, aBlock);
      v44 = v42;
      a3 = v40;
      v6 = v39;
      v9 = v38;
      v14 = v37;
      a1 = v60;
      v44, v45, v46, v47, v48, v49, v50, v51;
      *(v33 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v23, v24, "Got devices: %s", v33, 0xCu);
      sub_100044554(v35);

      v7 = v61;
    }

    sub_1000C1940();
    if (*(a1 + 16))
    {
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&_mh_execute_header, v52, v53, "Showing device selector table view", v54, 2u);
      }

      sub_10003E110(0, &qword_1001FD040, OS_dispatch_queue_ptr);
      v55 = static OS_dispatch_queue.main.getter();
      v56 = swift_allocObject();
      *(v56 + 16) = a3;
      *(v56 + 24) = a1;
      aBlock[4] = sub_1000CB160;
      aBlock[5] = v56;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100031FA8;
      aBlock[3] = &unk_1001C46B0;
      v57 = _Block_copy(aBlock);

      v58 = a3;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_1000C5A68(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
      sub_10003E278(&qword_1001FDE70, &unk_1001FD050, &qword_10017F6A0);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v57);

      (*(v7 + 8))(v9, v6);
      (*(v62 + 8))(v14, v63);
    }
  }
}

uint64_t sub_1000BECA8(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v6 = *(v18 - 8);
  __chkstk_darwin(v18);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001FC7D0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10003DAAC(v9, qword_10020A528);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Timed out while discovering devices", v12, 2u);
  }

  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  if (SessionManager.currentSession.getter())
  {
    Session.stopDeviceDiscovery()();
  }

  sub_10003E110(0, &qword_1001FD040, OS_dispatch_queue_ptr);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  aBlock[4] = sub_1000CB18C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C4700;
  v15 = _Block_copy(aBlock);
  v16 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000C5A68(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
  sub_10003E278(&qword_1001FDE70, &unk_1001FD050, &qword_10017F6A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v19 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v18);
}

void sub_1000BF08C(__n128 a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = [objc_allocWithZone(type metadata accessor for IntrinsicSizeAdjustingTableView()) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v5 = OBJC_IVAR____TtC11Diagnostics14DeviceSelector_devicesTableView;
  v6 = *&v2[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_devicesTableView];
  *&v2[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_devicesTableView] = v4;
  v7 = v4;

  v8 = [objc_opt_self() clearColor];
  [v7 setBackgroundColor:v8];

  v9 = *&v2[v5];
  if (!v9)
  {
    __break(1u);
    goto LABEL_20;
  }

  [v9 setDelegate:v2];
  v10 = *&v2[v5];
  if (!v10)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  type metadata accessor for DeviceSelectorCell(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = v10;
  v13 = String._bridgeToObjectiveC()();
  [v12 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v13];

  v14 = *&v2[v5];
  if (!v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_10003E110(0, &qword_1001FD920, UITableViewCell_ptr);
  v15 = swift_getObjCClassFromMetadata();
  v16 = v14;
  v17 = String._bridgeToObjectiveC()();
  [v16 registerClass:v15 forCellReuseIdentifier:v17];

  v18 = *&v2[v5];
  if (!v18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_10003E110(0, &qword_1001FFEA0, UITableViewHeaderFooterView_ptr);
  v19 = swift_getObjCClassFromMetadata();
  v20 = v18;
  v21 = String._bridgeToObjectiveC()();
  [v20 registerClass:v19 forHeaderFooterViewReuseIdentifier:v21];

  v22 = *&v2[v5];
  if (!v22)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v22 setSeparatorStyle:1];
  v23 = *&v2[v5];
  if (!v23)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v23 setAllowsSelection:1];
  v24 = *&v2[v5];
  if (!v24)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [v24 setAllowsMultipleSelection:1];
  v25 = *&v2[v5];
  if (!v25)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [v25 setAlwaysBounceVertical:1];
  v26 = *&v2[v5];
  if (!v26)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v26 setScrollEnabled:0];
  v27 = *&v2[v5];
  if (!v27)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  [v27 setShowsVerticalScrollIndicator:0];
  v28 = *&v2[v5];
  if (!v28)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  [v28 setRowHeight:80.0];
  v29 = *&v2[v5];
  if (!v29)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  [v29 setEstimatedSectionFooterHeight:0.0];
  v30 = *&v2[v5];
  if (!v30)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  [v30 setHidden:1];
  v31 = *&v2[v5];
  if (!v31)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v32 = swift_allocObject();
  *(v32 + 16) = v2;
  *(v32 + 24) = ObjectType;
  v33 = objc_allocWithZone(sub_10003C49C(&qword_1001FFEA8, &qword_1001824F8));
  v34 = v2;
  v35 = v31;
  v36 = UITableViewDiffableDataSource.init(tableView:cellProvider:)();
  v37 = *&v34[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_dataSource];
  *&v34[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_dataSource] = v36;

  v38 = [v34 contentView];
  if (!*&v2[v5])
  {
LABEL_33:
    __break(1u);
    return;
  }

  v39 = v38;
  [v38 addSubview:?];

  v40 = [v34 contentView];
  [v40 addSubview:*&v34[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_discoveryActivityView]];

  v41 = [v34 contentView];
  [v41 addSubview:*&v34[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_noDevicesView]];
}

char *sub_1000BF4F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v77 = a4;
  v82 = a1;
  v83 = a2;
  v5 = sub_10003C49C(&qword_1001FFE10, qword_100181340);
  __chkstk_darwin(v5 - 8);
  v7 = &v77 - v6;
  v8 = type metadata accessor for TargetDevice();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10003C49C(&unk_1001FFEB0, &qword_100182500);
  __chkstk_darwin(v12 - 8);
  v80 = &v77 - v13;
  v81 = type metadata accessor for UIBackgroundConfiguration();
  v79 = *(v81 - 8);
  __chkstk_darwin(v81);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UIListContentConfiguration();
  v78 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DeviceSelector.DataSourceItemState(0);
  __chkstk_darwin(v19);
  v21 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C5A04(a3, v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    static UIListContentConfiguration.subtitleCell()();
    sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD00000000000002BLL, 0x8000000100190560);
    UIListContentConfiguration.text.setter();
    v22 = String._bridgeToObjectiveC()();
    v23 = [objc_opt_self() systemImageNamed:v22];

    UIListContentConfiguration.image.setter();
    UIListContentConfiguration.imageToTextPadding.setter();
    v24 = UIListContentConfiguration.imageProperties.modify();
    UIListContentConfiguration.ImageProperties.reservedLayoutSize.setter();
    v24(v84, 0);
    v25 = objc_opt_self();
    v26 = [v25 configurationWithScale:3];
    v27 = objc_opt_self();
    v28 = [v27 systemDarkGrayTintColor];
    v29 = [v25 configurationWithHierarchicalColor:v28];

    v30 = [v26 configurationByApplyingConfiguration:v29];
    v31 = UIListContentConfiguration.imageProperties.modify();
    UIListContentConfiguration.ImageProperties.preferredSymbolConfiguration.setter();
    v31(v84, 0);
    static UIBackgroundConfiguration.listCell()();
    v32 = [v27 systemGroupedBackgroundColor];
    UIBackgroundConfiguration.backgroundColor.setter();
    v33 = String._bridgeToObjectiveC()();
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v35 = [v82 dequeueReusableCellWithIdentifier:v33 forIndexPath:isa];

    v84[3] = v16;
    v84[4] = &protocol witness table for UIListContentConfiguration;
    v36 = sub_10005BAD0(v84);
    v37 = v78;
    (*(v78 + 16))(v36, v18, v16);
    v38 = v35;
    UITableViewCell.contentConfiguration.setter();
    v40 = v79;
    v39 = v80;
    v41 = v81;
    (*(v79 + 16))(v80, v15, v81);
    (*(v40 + 56))(v39, 0, 1, v41);
    UITableViewCell.backgroundConfiguration.setter();

    (*(v40 + 8))(v15, v41);
    (*(v37 + 8))(v18, v16);
    sub_1000CA060(v21);
    return v38;
  }

  (*(v9 + 32))(v11, v21, v8);
  v42 = String._bridgeToObjectiveC()();
  v43 = v83;
  v44 = IndexPath._bridgeToObjectiveC()().super.isa;
  v45 = [v82 dequeueReusableCellWithIdentifier:v42 forIndexPath:v44];

  type metadata accessor for DeviceSelectorCell(0);
  v46 = swift_dynamicCastClass();
  if (!v46)
  {
    v52 = qword_1001FC7D0;
    v53 = v45;
    if (v52 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_10003DAAC(v54, qword_10020A528);
    v38 = v53;
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v84[0] = swift_slowAlloc();
      *v57 = 136315394;
      *(v57 + 4) = sub_100056B7C(0xD000000000000012, 0x8000000100190540, v84);
      *(v57 + 12) = 2080;
      swift_getObjectType();

      v58 = _typeName(_:qualified:)();
      v60 = v59;
      v61 = sub_100056B7C(v58, v59, v84);
      v60, v62, v63, v64, v65, v66, v67, v68;
      *(v57 + 14) = v61;
      _os_log_impl(&_mh_execute_header, v55, v56, "Device selector dequeued reusable cell and expected %s but got %s", v57, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    goto LABEL_14;
  }

  v38 = v46;
  (*(v9 + 16))(v7, v11, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v47 = OBJC_IVAR____TtC11Diagnostics18DeviceSelectorCell_device;
  swift_beginAccess();
  sub_10008CF1C(v7, v38 + v47);
  swift_endAccess();
  sub_1000CB3D4();
  sub_10003DD84(v7, &qword_1001FFE10, qword_100181340);
  result = *(v77 + OBJC_IVAR____TtC11Diagnostics14DeviceSelector_devicesTableView);
  if (result)
  {
    v49 = [result indexPathsForSelectedRows];
    if (v49)
    {
      v50 = v49;
      type metadata accessor for IndexPath();
      v51 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v51 = &_swiftEmptyArrayStorage;
    }

    v69 = sub_100088D3C(v43, v51);
    v51, v70, v71, v72, v73, v74, v75, v76;
    [v38 setSelected:v69];
LABEL_14:
    (*(v9 + 8))(v11, v8);
    return v38;
  }

  __break(1u);
  return result;
}

void sub_1000BFE00()
{
  v1 = OBJC_IVAR____TtC11Diagnostics14DeviceSelector_devicesTableView;
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_devicesTableView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_19;
  }

  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = *&v0[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_discoveryActivityView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = *&v0[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_noDevicesView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1001823C0;
  v6 = *&v0[v1];
  if (!v6)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v7 = [v6 topAnchor];
  v8 = [v0 contentView];
  v9 = [v8 safeAreaLayoutGuide];

  v10 = [v9 topAnchor];
  v11 = [v7 constraintEqualToAnchor:v10];

  *(v5 + 32) = v11;
  v12 = *&v0[v1];
  if (!v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v13 = [v12 bottomAnchor];
  v14 = [v0 contentView];
  v15 = [v14 bottomAnchor];

  v16 = [v13 constraintEqualToAnchor:v15];
  *(v5 + 40) = v16;
  v17 = [v3 centerXAnchor];
  v18 = [v0 view];
  if (!v18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v19 = v18;
  v20 = [v18 safeAreaLayoutGuide];

  v21 = [v20 centerXAnchor];
  v22 = [v17 constraintEqualToAnchor:v21];

  *(v5 + 48) = v22;
  v23 = [v3 centerYAnchor];
  v24 = [v0 view];
  if (!v24)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v25 = v24;
  v26 = [v24 centerYAnchor];

  v27 = [v23 constraintEqualToAnchor:v26];
  *(v5 + 56) = v27;
  v28 = [v3 leftAnchor];
  v29 = [v0 view];
  if (!v29)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v30 = v29;
  v31 = [v29 safeAreaLayoutGuide];

  v32 = [v31 leftAnchor];
  v33 = [v28 constraintEqualToAnchor:v32 constant:32.0];

  *(v5 + 64) = v33;
  v34 = [v3 rightAnchor];
  v35 = [v0 view];
  if (!v35)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v36 = v35;
  v37 = [v35 safeAreaLayoutGuide];

  v38 = [v37 rightAnchor];
  v39 = [v34 constraintEqualToAnchor:v38 constant:-32.0];

  *(v5 + 72) = v39;
  v40 = [v4 centerXAnchor];
  v41 = [v0 view];
  if (!v41)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v42 = v41;
  v43 = [v41 safeAreaLayoutGuide];

  v44 = [v43 centerXAnchor];
  v45 = [v40 constraintEqualToAnchor:v44];

  *(v5 + 80) = v45;
  v46 = [v4 centerYAnchor];
  v47 = [v0 view];
  if (!v47)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v48 = v47;
  v49 = [v47 centerYAnchor];

  v50 = [v46 constraintEqualToAnchor:v49];
  *(v5 + 88) = v50;
  v51 = [v4 leftAnchor];
  v52 = [v0 view];
  if (!v52)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v53 = v52;
  v54 = [v52 safeAreaLayoutGuide];

  v55 = [v54 leftAnchor];
  v56 = [v51 constraintEqualToAnchor:v55 constant:32.0];

  *(v5 + 96) = v56;
  v57 = [v4 rightAnchor];
  v58 = [v0 view];
  if (!v58)
  {
LABEL_28:
    __break(1u);
    return;
  }

  v59 = v58;
  v60 = [v58 safeAreaLayoutGuide];

  v61 = [v60 rightAnchor];
  v62 = [v57 constraintEqualToAnchor:v61 constant:-32.0];

  *(v5 + 104) = v62;
  v63 = sub_10014FCF8(&off_1001BDCC8);
  v64 = [objc_opt_self() currentDevice];
  v65 = [v64 userInterfaceIdiom];

  LOBYTE(v64) = sub_1000743A4(v65, v63);
  v63, v66, v67, v68, v69, v70, v71, v72;
  if (v64)
  {
    v73 = sub_1000C05A4(v0);
  }

  else
  {
    v73 = sub_1000C0730(v0);
  }

  v74 = v73;
  v75 = objc_opt_self();
  sub_100074470(v74);
  sub_10003E110(0, &qword_1001FD550, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v5, v76, v77, v78, v79, v80, v81, v82;
  [v75 activateConstraints:isa];
}

id sub_1000C05A4(char *a1)
{
  sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10017ED90;
  v3 = OBJC_IVAR____TtC11Diagnostics14DeviceSelector_devicesTableView;
  result = *&a1[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_devicesTableView];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = [result widthAnchor];
  result = [a1 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = result;
  v7 = [result widthAnchor];

  v8 = [v5 constraintEqualToAnchor:v7 multiplier:0.625];
  *(v2 + 32) = v8;
  result = *&a1[v3];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = [result centerXAnchor];
  result = [a1 view];
  if (result)
  {
    v10 = result;
    v11 = [result centerXAnchor];

    v12 = [v9 constraintEqualToAnchor:v11];
    *(v2 + 40) = v12;
    return v2;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_1000C0730(char *a1)
{
  sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10017ED80;
  v3 = OBJC_IVAR____TtC11Diagnostics14DeviceSelector_devicesTableView;
  result = *&a1[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_devicesTableView];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = [result leadingAnchor];
  v6 = [a1 contentView];
  v7 = [v6 leadingAnchor];

  v8 = [v5 constraintEqualToAnchor:v7];
  *(v2 + 32) = v8;
  result = *&a1[v3];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v9 = [result leftAnchor];
  v10 = [a1 contentView];
  v11 = [v10 leftAnchor];

  v12 = [v9 constraintEqualToAnchor:v11 constant:18.0];
  *(v2 + 40) = v12;
  result = *&a1[v3];
  if (result)
  {
    v13 = [result rightAnchor];
    v14 = [a1 contentView];
    v15 = [v14 rightAnchor];

    v16 = [v13 constraintEqualToAnchor:v15 constant:-18.0];
    *(v2 + 48) = v16;
    return v2;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1000C092C(DARootViewController *a1)
{
  v2 = v1;
  v4 = sub_10003C49C(&qword_1001FFE18, &qword_100182498);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v44 - v6;

  v9 = sub_1000CA5DC(v8);
  a1, v10, v11, v12, v13, v14, v15, v16;
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  if (SessionManager.currentSession.getter())
  {
    v17 = Session.targetedDeviceTypes.getter();

    sub_10003C49C(&qword_1001FFE70, &qword_1001824C8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10017EC10;
    v19 = ELSDeviceSelectionRequirementTypeRequired;
    *(inited + 32) = ELSDeviceSelectionRequirementTypeRequired;
    v20 = ELSDeviceSelectionRequirementTypeRequiredWhenOrigin;
    *(inited + 40) = ELSDeviceSelectionRequirementTypeRequiredWhenOrigin;
    v21 = v19;
    v22 = v20;
    v23 = sub_1000CAC78(v17, inited);
    swift_setDeallocating();
    type metadata accessor for ELSDeviceSelectionRequirementType(0);
    swift_arrayDestroy();
  }

  else
  {
    v23 = &_swiftEmptySetSingleton;
  }

  sub_1000C0BD8(v23, v9, v7);
  v23, v24, v25, v26, v27, v28, v29, v30;
  v31 = *(v2 + OBJC_IVAR____TtC11Diagnostics14DeviceSelector_dataSource);
  if (!v31)
  {
    __break(1u);
    goto LABEL_11;
  }

  v32 = v31;
  dispatch thunk of UITableViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

  v33 = *(v2 + OBJC_IVAR____TtC11Diagnostics14DeviceSelector_devicesTableView);
  if (!v33)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v34 = v33;
  v9, v35, v36, v37, v38, v39, v40, v41;
  [v34 invalidateIntrinsicContentSize];

  v42 = *(v2 + OBJC_IVAR____TtC11Diagnostics14DeviceSelector_continueButton);
  if (v42)
  {
    v43 = v42;
    [v43 setEnabled:sub_1000C19B0() & 1];

    (*(v5 + 8))(v7, v4);
    return;
  }

LABEL_12:
  __break(1u);
}

void sub_1000C0BD8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for DeviceSelector.DataSourceItemState(0);
  v143 = *(v6 - 8);
  __chkstk_darwin(v6);
  v121 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10003C49C(&unk_1001FFDF0, &unk_100182478);
  __chkstk_darwin(v8 - 8);
  v10 = &v119 - v9;
  v11 = type metadata accessor for TargetDevice.DeviceType();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v120 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v137 = &v119 - v15;
  v16 = sub_10003C49C(&qword_1001FFE78, &unk_1001824D0);
  __chkstk_darwin(v16 - 8);
  v18 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v127 = &v119 - v20;
  sub_1000C5A68(&unk_1001FFDD0, &type metadata accessor for TargetDevice.DeviceType, &protocol conformance descriptor for TargetDevice.DeviceType);
  sub_1000C5A68(&qword_1001FFE80, type metadata accessor for DeviceSelector.DataSourceItemState, &unk_10018242C);
  v140 = a3;
  v132 = v6;
  NSDiffableDataSourceSnapshot.init()();
  sub_1000C5B8C(a2);
  v22 = v21;
  v145 = a1;
  v23 = *(v21 + 16);
  v133 = (v12 + 56);
  v128 = v12;
  v123 = (v12 + 8);

  v24 = 0;
  v138 = 0;
  v141 = xmmword_10017EC00;
  v124 = v23;
  v131 = v10;
  v122 = v11;
  v139 = (v12 + 32);
  v134 = v12 + 16;
  v126 = v18;
  v125 = v22;
  while (1)
  {
    if (v24 == v23)
    {
      v33 = sub_10003C49C(&unk_100201EF0, &qword_100182338);
      (*(*(v33 - 8) + 56))(v18, 1, 1, v33);
      v136 = v23;
    }

    else
    {
      if ((v24 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      if (v24 >= *(v22 + 16))
      {
        goto LABEL_27;
      }

      v34 = v10;
      v35 = v11;
      v36 = v24;
      v37 = sub_10003C49C(&unk_100201EF0, &qword_100182338);
      v38 = *(v37 - 8);
      sub_1000CB048(v22 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v36, v18);
      v136 = (v36 + 1);
      v11 = v35;
      v10 = v34;
      (*(v38 + 56))(v18, 0, 1, v37);
    }

    v39 = v127;
    sub_10009DDBC(v18, v127, &qword_1001FFE78, &unk_1001824D0);
    v40 = sub_10003C49C(&unk_100201EF0, &qword_100182338);
    if ((*(*(v40 - 8) + 48))(v39, 1, v40) == 1)
    {
      break;
    }

    v48 = *(v39 + *(v40 + 48));
    v49 = v128;
    v50 = v137;
    (*(v128 + 32))(v137, v39, v11);
    sub_100127D54(v50, v10);
    sub_10003DD84(v10, &unk_1001FFDF0, &unk_100182478);
    sub_10003C49C(&unk_1001FDEA0, &qword_1001824E0);
    v51 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v52 = swift_allocObject();
    *(v52 + 16) = v141;
    v53 = *(v49 + 16);
    (v53)(v52 + v51, v50, v11);
    v54 = sub_10003C49C(&qword_1001FFE18, &qword_100182498);
    NSDiffableDataSourceSnapshot.appendSections(_:)(v52);
    v52, v55, v56, v57, v58, v59, v60, v61;
    v144 = v48;

    v62 = v138;
    sub_1000C6514(sub_100124B0C, 0, &type metadata accessor for TargetDevice, sub_1000658B8, &type metadata accessor for TargetDevice);
    if (v62)
    {
      goto LABEL_28;
    }

    v135 = v53;
    v138 = 0;
    v48, v63, v64, v65, v66, v67, v68, v69;
    v70 = v144;
    v71 = *&v144->hostAppBundleIdentifier[8];
    if (v71)
    {
      v130 = v54;
      v144 = &_swiftEmptyArrayStorage;
      sub_1000B7CFC(0, v71, 0);
      v72 = v144;
      v142 = type metadata accessor for TargetDevice();
      v73 = *(v142 - 8);
      v74 = *(v73 + 16);
      v75 = (*(v73 + 80) + 32) & ~*(v73 + 80);
      v129 = v70;
      v76 = v70 + v75;
      v77 = *(v73 + 72);
      v78 = v121;
      do
      {
        v74(v78, v76, v142);
        swift_storeEnumTagMultiPayload();
        v144 = v72;
        v80 = *&v72->hostAppBundleIdentifier[8];
        v79 = *v72->responder;
        if (v80 >= v79 >> 1)
        {
          sub_1000B7CFC((v79 > 1), v80 + 1, 1);
          v72 = v144;
        }

        *&v72->hostAppBundleIdentifier[8] = v80 + 1;
        sub_1000CA578(v78, v72 + ((*(v143 + 80) + 32) & ~*(v143 + 80)) + *(v143 + 72) * v80);
        v76 += v77;
        --v71;
      }

      while (v71);

      v10 = v131;
      v11 = v122;
    }

    else
    {

      v72 = &_swiftEmptyArrayStorage;
    }

    v25 = v137;
    (v135)(v10, v137, v11);
    (*v133)(v10, 0, 1, v11);
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
    v72, v26, v27, v28, v29, v30, v31, v32;
    sub_10003DD84(v10, &unk_1001FFDF0, &unk_100182478);
    (*v123)(v25, v11);
    v18 = v126;
    v22 = v125;
    v23 = v124;
    v24 = v136;
  }

  v22, v41, v42, v43, v44, v45, v46, v47;
  v81 = v145;
  v82 = *(v145 + 16);
  if (!v82)
  {
    goto LABEL_20;
  }

  v83 = sub_1000649E0(*(v145 + 16), 0);
  sub_1000C9940(&v144, v83 + ((*(v128 + 80) + 32) & ~*(v128 + 80)), v82, v81);
  v142 = v84;
  v85 = v144;

  sub_10004A320(v85);
  if (v142 != v82)
  {
    __break(1u);
LABEL_20:
    v83 = &_swiftEmptyArrayStorage;
  }

  v86 = v120;
  v144 = v83;
  v87 = v138;
  sub_1000C6514(sub_100121E24, 0, &type metadata accessor for TargetDevice.DeviceType, sub_1000658E0, &type metadata accessor for TargetDevice.DeviceType);
  if (v87)
  {
LABEL_28:

    __break(1u);
    return;
  }

  v81, v88, v89, v90, v91, v92, v93, v94;
  v95 = *&v144->hostAppBundleIdentifier[8];
  if (v95)
  {
    v96 = *(v128 + 80);
    v137 = ((v96 + 32) & ~v96);
    v138 = v96;
    v97 = &v137[v144];
    v142 = *(v128 + 72);
    v98 = *(v128 + 16);
    v135 = v144;
    v136 = v98;
    do
    {
      v99 = v136;
      v136(v86, v97, v11);
      sub_10003C49C(&unk_1001FDEA0, &qword_1001824E0);
      v100 = v137;
      v101 = swift_allocObject();
      *(v101 + 16) = v141;
      v99(&v100[v101], v86, v11);
      sub_10003C49C(&qword_1001FFE18, &qword_100182498);
      NSDiffableDataSourceSnapshot.appendSections(_:)(v101);
      v101, v102, v103, v104, v105, v106, v107, v108;
      sub_10003C49C(&qword_1001FFB18, &qword_1001824C0);
      v109 = (*(v143 + 80) + 32) & ~*(v143 + 80);
      v110 = swift_allocObject();
      *(v110 + 16) = v141;
      v99((v110 + v109), v86, v11);
      swift_storeEnumTagMultiPayload();
      v111 = v131;
      (*v139)(v131, v86, v11);
      (*v133)(v111, 0, 1, v11);
      NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
      v110, v112, v113, v114, v115, v116, v117, v118;
      sub_10003DD84(v111, &unk_1001FFDF0, &unk_100182478);
      v97 += v142;
      --v95;
    }

    while (v95);
  }
}

id sub_1000C1734(char a1, char a2)
{
  v5 = [v2 headerView];
  [v5 setHidden:1];

  result = *&v2[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_devicesTableView];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  [result setHidden:1];
  [*&v2[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_discoveryActivityView] setHidden:a1 & 1];
  [*&v2[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_noDevicesView] setHidden:a2 & 1];
  result = *&v2[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_continueButton];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  [result setHidden:1];
  v7 = OBJC_IVAR____TtC11Diagnostics14DeviceSelector_tryAgainButton;
  result = *&v2[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_tryAgainButton];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  [result setHidden:0];
  result = *&v2[v7];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  return [result setEnabled:a1 & 1];
}

id sub_1000C1850()
{
  v1 = [v0 headerView];
  [v1 setHidden:0];

  result = *&v0[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_devicesTableView];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  [result setHidden:0];
  [*&v0[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_discoveryActivityView] setHidden:1];
  [*&v0[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_noDevicesView] setHidden:1];
  result = *&v0[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_continueButton];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  [result setHidden:0];
  result = *&v0[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_tryAgainButton];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  return [result setHidden:1];
}

void sub_1000C1940()
{
  v1 = OBJC_IVAR____TtC11Diagnostics14DeviceSelector_discoveryTimeoutTimer;
  v2 = *(v0 + OBJC_IVAR____TtC11Diagnostics14DeviceSelector_discoveryTimeoutTimer);
  if (v2 && [v2 isValid])
  {
    [*(v0 + v1) invalidate];
    v3 = *(v0 + v1);
    *(v0 + v1) = 0;
  }
}

uint64_t sub_1000C19B0()
{
  v3 = type metadata accessor for TargetDevice.DeviceType();
  v40 = *(v3 - 8);
  *&v4 = __chkstk_darwin(v3).n128_u64[0];
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v0;
  v7 = *(v0 + OBJC_IVAR____TtC11Diagnostics14DeviceSelector_devicesTableView);
  if (v7)
  {
    v8 = [v7 indexPathsForSelectedRows];
    if (v8)
    {
      v16 = v8;
      type metadata accessor for IndexPath();
      v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v17 = &_swiftEmptyArrayStorage;
    }

    v18 = *&v17->hostAppBundleIdentifier[8];
    v17, v9, v10, v11, v12, v13, v14, v15;
    if (v18)
    {
      if (qword_1001FC7E8 != -1)
      {
        goto LABEL_23;
      }

      while (SessionManager.currentSession.getter())
      {
        v38 = v3;
        v19 = Session.targetedDeviceTypes.getter();

        v20 = 1 << *(v19 + 32);
        v21 = -1;
        if (v20 < 64)
        {
          v21 = ~(-1 << v20);
        }

        v3 = v21 & *(v19 + 56);
        v22 = (v20 + 63) >> 6;
        v37[1] = v40 + 16;
        v23 = (v40 + 8);

        v24 = 0;
        while (v3)
        {
LABEL_16:
          v26 = v38;
          (*(v40 + 16))(v6, *(v19 + 48) + *(v40 + 72) * (__clz(__rbit64(v3)) | (v24 << 6)), v38);
          sub_1000C1C70(v6, v39);
          v28 = v27;
          v3 &= v3 - 1;
          (*v23)(v6, v26);
          if ((v28 & 1) == 0)
          {
            v18 = 0;
LABEL_19:

            v19, v29, v30, v31, v32, v33, v34, v35;
            return v18;
          }
        }

        while (1)
        {
          v25 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (v25 >= v22)
          {
            v18 = 1;
            goto LABEL_19;
          }

          v3 = *(v19 + 56 + 8 * v25);
          ++v24;
          if (v3)
          {
            v24 = v25;
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_23:
        swift_once();
      }

      return 0;
    }

    return v18;
  }

  else
  {
    __break(1u);

    result = (*v2)(v6, v1);
    __break(1u);
  }

  return result;
}

void sub_1000C1C70(uint64_t a1, uint64_t a2)
{
  v237 = type metadata accessor for IndexPath();
  v241 = *(v237 - 8);
  __chkstk_darwin(v237);
  v240 = &v230 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v236 = &v230 - v6;
  v7 = sub_10003C49C(&qword_1001FFE18, &qword_100182498);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v230 - v9;
  v11 = sub_1000BDC64();
  v13 = *(a2 + OBJC_IVAR____TtC11Diagnostics14DeviceSelector_dataSource);
  if (!v13)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v14 = v11;
  v15 = v12;
  v16 = v13;
  dispatch thunk of UITableViewDiffableDataSource.snapshot()();

  v239 = NSDiffableDataSourceSnapshot.indexOfSection(_:)();
  LOBYTE(v16) = v17;
  (*(v8 + 8))(v10, v7);
  if (v16)
  {
    v18 = &_swiftEmptyArrayStorage;
    goto LABEL_21;
  }

  v19 = *(a2 + OBJC_IVAR____TtC11Diagnostics14DeviceSelector_devicesTableView);
  if (v19)
  {
    v20 = [v19 indexPathsForSelectedRows];
    v28 = v237;
    if (v20)
    {
      v29 = v20;
      v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v30 = &_swiftEmptyArrayStorage;
    }

    v230 = v15;
    v231 = v14;
    v232 = v2;
    v31 = *&v30->hostAppBundleIdentifier[8];
    if (!v31)
    {
      v33 = &_swiftEmptyArrayStorage;
LABEL_20:
      v30, v21, v22, v23, v24, v25, v26, v27;
      v18 = sub_10014B66C(v33, v41);

      v14 = v231;
      v15 = v230;
LABEL_21:
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;
      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v42;
      v53 = v45;
      if (v52 == v46 && v44 == v45)
      {
        v44, v45, v46, v47, v48, v49, v50, v51;
        v53, v89, v90, v91, v92, v93, v94, v95;
      }

      else
      {
        v55 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v44, v56, v57, v58, v59, v60, v61, v62;
        v53, v63, v64, v65, v66, v67, v68, v69;
        if ((v55 & 1) == 0)
        {
          v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v72 = v71;
          v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v80 = v70;
          v81 = v73;
          if (v80 != v74 || v72 != v73)
          {
            v159 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v72, v160, v161, v162, v163, v164, v165, v166;
            v81, v167, v168, v169, v170, v171, v172, v173;
            if (v159)
            {
LABEL_42:
              v174 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v98 = v175;
              v176 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v101 = v177;
              if (v174 != v176 || v98 != v177)
              {
                v178 = _stringCompareWithSmolCheck(_:_:expecting:)();
                v98, v179, v180, v181, v182, v183, v184, v185;
                v101, v186, v187, v188, v189, v190, v191, v192;
                if (v178)
                {

                  goto LABEL_35;
                }

                v211 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v98 = v212;
                v213 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v101 = v214;
                if (v211 != v213 || v98 != v214)
                {
                  v215 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  v98, v216, v217, v218, v219, v220, v221, v222;
                  v101, v223, v224, v225, v226, v227, v228, v229;
                  if (v215)
                  {
                    goto LABEL_35;
                  }

                  goto LABEL_55;
                }
              }

              goto LABEL_32;
            }

            v193 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v72 = v194;
            v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v195 = v193;
            v81 = v73;
            if (v195 != v74 || v72 != v73)
            {
              v196 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v72, v197, v198, v199, v200, v201, v202, v203;
              v81, v204, v205, v206, v207, v208, v209, v210;
              if ((v196 & 1) == 0)
              {

LABEL_55:
                v158 = v18;
LABEL_40:
                v158, v116, v117, v118, v119, v120, v121, v122;
                return;
              }

              goto LABEL_42;
            }
          }

          v72, v73, v74, v75, v76, v77, v78, v79;
          v81, v82, v83, v84, v85, v86, v87, v88;
          goto LABEL_42;
        }
      }

      v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v98 = v97;
      v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v101 = v100;
      if (v96 != v99 || v98 != v100)
      {
        v123 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v98, v124, v125, v126, v127, v128, v129, v130;
        v101, v131, v132, v133, v134, v135, v136, v137;
        if ((v123 & 1) == 0)
        {
          v18, v138, v139, v140, v141, v142, v143, v144;
          v145 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v147 = v146;
          v148 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v150 = v149;
          if (v145 != v148 || v147 != v149)
          {
            _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          v147, v151, v152, v153, v154, v155, v156, v157;
          v158 = v150;
          goto LABEL_40;
        }

LABEL_35:
        v18, v116, v117, v118, v119, v120, v121, v122;
        return;
      }

LABEL_32:

      v98, v102, v103, v104, v105, v106, v107, v108;
      v101, v109, v110, v111, v112, v113, v114, v115;
      goto LABEL_35;
    }

    v32 = 0;
    v233 = (v241 + 8);
    v238 = (v241 + 32);
    v33 = &_swiftEmptyArrayStorage;
    v34 = v236;
    v234 = v241 + 16;
    v235 = v31;
    while (v32 < *&v30->hostAppBundleIdentifier[8])
    {
      v35 = (*(v241 + 80) + 32) & ~*(v241 + 80);
      v36 = *(v241 + 72);
      (*(v241 + 16))(v34, v30 + v35 + v36 * v32, v28);
      if (IndexPath.section.getter() == v239)
      {
        v37 = *v238;
        (*v238)(v240, v34, v28);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v242 = v33;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000B7D60(0, *&v33->hostAppBundleIdentifier[8] + 1, 1);
          v33 = v242;
        }

        v40 = *&v33->hostAppBundleIdentifier[8];
        v39 = *v33->responder;
        if (v40 >= v39 >> 1)
        {
          sub_1000B7D60((v39 > 1), v40 + 1, 1);
          v33 = v242;
        }

        *&v33->hostAppBundleIdentifier[8] = v40 + 1;
        v28 = v237;
        v37(v33 + v35 + v40 * v36, v240, v237);
        v31 = v235;
        v34 = v236;
      }

      else
      {
        (*v233)(v34, v28);
      }

      if (v31 == ++v32)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_57;
  }

LABEL_58:
  __break(1u);
}

uint64_t sub_1000C2404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10003C49C(&qword_1001FFE10, qword_100181340);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = type metadata accessor for TargetDevice();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C4FA0(a3, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10003DD84(v6, &qword_1001FFE10, qword_100181340);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_10003C49C(&qword_1001FFB18, &qword_1001824C0);
  v12 = *(type metadata accessor for DeviceSelector.DataSourceItemState(0) - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10017EC00;
  (*(v8 + 16))(v14 + v13, v10, v7);
  swift_storeEnumTagMultiPayload();
  sub_10003C49C(&qword_1001FFE18, &qword_100182498);
  NSDiffableDataSourceSnapshot.reconfigureItems(_:)(v14);
  v14, v15, v16, v17, v18, v19, v20, v21;
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1000C2688(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = a1;
  sub_1000CB1B0(v9);

  return (*(v7 + 8))(v9, v6);
}

void sub_1000C2780(void *a1@<X1>, uint64_t a2@<X8>)
{
  v211 = a2;
  v4 = type metadata accessor for TargetDevice();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v215 = &v200 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DeviceSelector.DataSourceItemState(0);
  v213 = *(v7 - 8);
  v214 = v7;
  __chkstk_darwin(v7);
  v212 = &v200 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v223 = &v200 - v10;
  v11 = type metadata accessor for IndexPath();
  v12 = *(v11 - 8);
  v225 = v11;
  v226 = v12;
  __chkstk_darwin(v11);
  v222 = &v200 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v200 - v15;
  v205 = sub_10003C49C(&qword_1001FFE18, &qword_100182498);
  v209 = *(v205 - 8);
  __chkstk_darwin(v205);
  v218 = &v200 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v204 = &v200 - v19;
  __chkstk_darwin(v20);
  v22 = &v200 - v21;
  v208 = type metadata accessor for TargetDevice.DeviceType();
  v207 = *(v208 - 8);
  __chkstk_darwin(v208);
  v206 = &v200 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for TargetDevice.Status();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v200 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10003C49C(&qword_1001FFE10, qword_100181340);
  __chkstk_darwin(v28 - 8);
  v221 = &v200 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v200 - v31;
  v210 = a1;
  v33 = a1;
  v34 = v5;
  v227 = v2;
  sub_1000C4FA0(v33, &v200 - v31);
  v35 = *(v5 + 48);
  v224 = v4;
  v219 = v35;
  v220 = v5 + 48;
  if (v35(v32, 1, v4) == 1)
  {
    sub_10003DD84(v32, &qword_1001FFE10, qword_100181340);
    v36 = v211;
LABEL_15:
    (*(v226 + 56))(v36, 1, 1, v225);
    return;
  }

  TargetDevice.status.getter();
  v37 = (*(v25 + 88))(v27, v24);
  if (v37 != enum case for TargetDevice.Status.ready(_:))
  {
    v74 = v211;
    if (v37 != enum case for TargetDevice.Status.waiting(_:) && v37 != enum case for TargetDevice.Status.unavailable(_:) && v37 != enum case for TargetDevice.Status.unsupported(_:))
    {
      (*(v25 + 8))(v27, v24);
    }

    (*(v5 + 8))(v32, v224);
    v36 = v74;
    goto LABEL_15;
  }

  (*(v5 + 8))(v32, v224);
  v38 = OBJC_IVAR____TtC11Diagnostics14DeviceSelector_dataSource;
  v39 = *(v227 + OBJC_IVAR____TtC11Diagnostics14DeviceSelector_dataSource);
  if (!v39)
  {
    goto LABEL_59;
  }

  v40 = v39;
  dispatch thunk of UITableViewDiffableDataSource.snapshot()();

  v41 = v205;
  v42 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  v44 = v209 + 8;
  v43 = *(v209 + 8);
  v43(v22, v41);
  v45 = IndexPath.section.getter();
  if ((v45 & 0x8000000000000000) != 0)
  {
    goto LABEL_56;
  }

  if (v45 >= *(v42 + 16))
  {
    goto LABEL_57;
  }

  (*(v207 + 16))(v206, v42 + ((*(v207 + 80) + 32) & ~*(v207 + 80)) + *(v207 + 72) * v45, v208);
  v42, v46, v47, v48, v49, v50, v51, v52;
  v53 = sub_1000BDC64();

  v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v56;
  v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v65 = v55;
  v66 = v58;
  if (v65 == v59 && v57 == v58)
  {
    v57, v58, v59, v60, v61, v62, v63, v64;
    v66, v67, v68, v69, v70, v71, v72, v73;
LABEL_17:
    v90 = OBJC_IVAR____TtC11Diagnostics14DeviceSelector_devicesTableView;
    v91 = *(v227 + OBJC_IVAR____TtC11Diagnostics14DeviceSelector_devicesTableView);
    if (!v91)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v202 = v34;
    v92 = [v91 indexPathsForSelectedRows];
    v93 = v225;
    v209 = v44;
    v201 = v43;
    v203 = v38;
    v200 = v53;
    if (v92)
    {
      v94 = v92;
      v95 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v95 = &_swiftEmptyArrayStorage;
    }

    __chkstk_darwin(v92);
    *(&v200 - 2) = v210;
    sub_1000BCE1C(sub_1000CA558, (&v200 - 4), v95);
    v97 = v96;
    v98 = *(v96 + 16);
    if (v98)
    {
      v99 = 0;
      v100 = (v226 + 8);
      while (1)
      {
        v101 = v227;
        if (v99 >= *(v97 + 16))
        {
          break;
        }

        (*(v226 + 16))(v16, v97 + ((*(v226 + 80) + 32) & ~*(v226 + 80)) + *(v226 + 72) * v99, v93);
        v102 = *(v101 + v90);
        if (!v102)
        {
          goto LABEL_58;
        }

        ++v99;
        v103 = v102;
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [v103 deselectRowAtIndexPath:isa animated:{1, v200, v201}];

        (*v100)(v16, v93);
        if (v98 == v99)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

LABEL_26:
    v105 = *(v227 + v203);
    if (!v105)
    {
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v106 = v105;
    dispatch thunk of UITableViewDiffableDataSource.snapshot()();

    if (v98)
    {
      v217 = *(v226 + 16);
      v218 = (v226 + 16);
      v107 = v97 + ((*(v226 + 80) + 32) & ~*(v226 + 80));
      v216 = *(v226 + 72);
      v108 = (v226 + 8);
      v109 = (v202 + 32);
      v110 = &_swiftEmptyArrayStorage;
      do
      {
        v111 = v222;
        v112 = v225;
        v217(v222, v107, v225);
        v113 = v221;
        sub_1000C4FA0(v111, v221);
        v114 = v111;
        v115 = v113;
        (*v108)(v114, v112);
        v116 = v224;
        if (v219(v113, 1, v224) == 1)
        {
          sub_10003DD84(v113, &qword_1001FFE10, qword_100181340);
        }

        else
        {
          v117 = *v109;
          v118 = v215;
          (*v109)(v215, v115, v116);
          v119 = v212;
          v117(v212, v118, v116);
          swift_storeEnumTagMultiPayload();
          sub_1000CA578(v119, v223);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v110 = sub_1000D510C(0, *&v110->hostAppBundleIdentifier[8] + 1, 1, v110);
          }

          v121 = *&v110->hostAppBundleIdentifier[8];
          v120 = *v110->responder;
          if (v121 >= v120 >> 1)
          {
            v110 = sub_1000D510C((v120 > 1), v121 + 1, 1, v110);
          }

          *&v110->hostAppBundleIdentifier[8] = v121 + 1;
          sub_1000CA578(v223, v110 + ((*(v213 + 80) + 32) & ~*(v213 + 80)) + *(v213 + 72) * v121);
        }

        v107 += v216;
        --v98;
      }

      while (v98);
    }

    else
    {
      v110 = &_swiftEmptyArrayStorage;
    }

    v122 = v205;
    v123 = v204;
    NSDiffableDataSourceSnapshot.reconfigureItems(_:)(v110);
    v110, v124, v125, v126, v127, v128, v129, v130;
    v131 = *(v227 + v203);
    if (!v131)
    {
      goto LABEL_62;
    }

    v132 = v131;
    v97, v133, v134, v135, v136, v137, v138, v139;
    dispatch thunk of UITableViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    v201(v123, v122);
    (*(v207 + 8))(v206, v208);
    v140 = v211;
    v141 = v225;
LABEL_40:
    v142 = v226;
    (*(v226 + 16))(v140, v210, v141);
    (*(v142 + 56))(v140, 0, 1, v141);
    return;
  }

  v75 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v57, v76, v77, v78, v79, v80, v81, v82;
  v66, v83, v84, v85, v86, v87, v88, v89;
  if (v75)
  {
    goto LABEL_17;
  }

  v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v145 = v144;
  v147 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v153 = v143;
  v154 = v146;
  if (v153 == v147 && v145 == v146)
  {
    v145, v146, v147, v148, v149, v150, v151, v152;
    v154, v155, v156, v157, v158, v159, v160, v161;
    v141 = v225;
  }

  else
  {
    v162 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v145, v163, v164, v165, v166, v167, v168, v169;
    v154, v170, v171, v172, v173, v174, v175, v176;
    v141 = v225;
    if ((v162 & 1) == 0)
    {
LABEL_54:
      (*(v207 + 8))(v206, v208);

      v140 = v211;
      goto LABEL_40;
    }
  }

  v177 = OBJC_IVAR____TtC11Diagnostics14DeviceSelector_devicesTableView;
  v178 = *(v227 + OBJC_IVAR____TtC11Diagnostics14DeviceSelector_devicesTableView);
  if (!v178)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v179 = [v178 indexPathsForSelectedRows];
  if (v179)
  {
    v180 = v179;
    v181 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v181 = &_swiftEmptyArrayStorage;
  }

  v182 = sub_100088D3C(v210, v181);
  v181, v183, v184, v185, v186, v187, v188, v189;
  if (!v182)
  {
    goto LABEL_54;
  }

  v190 = v227;
  v191 = *(v227 + v177);
  if (!v191)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v192 = v191;
  v193 = v210;
  v194 = IndexPath._bridgeToObjectiveC()().super.isa;
  [v192 deselectRowAtIndexPath:v194 animated:1];

  v195 = *(v190 + v38);
  if (!v195)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v196 = v195;
  v197 = v218;
  dispatch thunk of UITableViewDiffableDataSource.snapshot()();

  sub_1000C2404(v197, v190, v193);
  v198 = *(v190 + v38);
  if (v198)
  {
    v199 = v198;
    dispatch thunk of UITableViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    v43(v197, v205);
    (*(v207 + 8))(v206, v208);
    (*(v226 + 56))(v211, 1, 1, v141);
    return;
  }

LABEL_66:
  __break(1u);
}

BOOL sub_1000C3514(uint64_t a1, uint64_t a2)
{
  type metadata accessor for IndexPath();
  sub_1000C5A68(&unk_1001FFE60, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    return 0;
  }

  v3 = IndexPath.section.getter();
  return v3 == IndexPath.section.getter();
}

void sub_1000C35DC(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v80[0] = a2;
  v5 = sub_10003C49C(&qword_1001FFE18, &qword_100182498);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v80 - v7;
  v9 = type metadata accessor for TargetDevice.DeviceType();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + OBJC_IVAR____TtC11Diagnostics14DeviceSelector_dataSource);
  if (!v13)
  {
    goto LABEL_21;
  }

  v14 = v13;
  dispatch thunk of UITableViewDiffableDataSource.snapshot()();

  v15 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  (*(v6 + 8))(v8, v5);
  v16 = IndexPath.section.getter();
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v16 >= *(v15 + 16))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  (*(v10 + 16))(v12, v15 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v16, v9);
  v15, v17, v18, v19, v20, v21, v22, v23;
  v24 = sub_1000BDC64();
  v26 = v25;

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v31;
  if (v27 == v30 && v29 == v31)
  {
    v29, v31, v32, v33, v34, v35, v36, v37;
    v38, v59, v60, v61, v62, v63, v64, v65;
  }

  else
  {
    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v29, v41, v42, v43, v44, v45, v46, v47;
    v38, v48, v49, v50, v51, v52, v53, v54;
    if ((v40 & 1) == 0)
    {
      v55 = *(v3 + OBJC_IVAR____TtC11Diagnostics14DeviceSelector_devicesTableView);
      if (v55)
      {
        v56 = [v55 indexPathsForSelectedRows];
        if (v56)
        {
          v57 = v56;
          type metadata accessor for IndexPath();
          v58 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          v58 = &_swiftEmptyArrayStorage;
        }

        __chkstk_darwin(v56);
        v80[-2] = a1;
        sub_1000BCE1C(sub_1000CA50C, &v80[-4], v58);
        v70 = v69;

        (*(v10 + 8))(v12, v9);
        v71 = *(v70 + 16);
        v70, v72, v73, v74, v75, v76, v77, v78;
        if (v71 == 1)
        {
          v79 = type metadata accessor for IndexPath();
          (*(*(v79 - 8) + 56))(v80[0], 1, 1, v79);
          return;
        }

        goto LABEL_14;
      }

LABEL_22:
      __break(1u);
      return;
    }
  }

  (*(v10 + 8))(v12, v9);

LABEL_14:
  v66 = type metadata accessor for IndexPath();
  v67 = *(v66 - 8);
  v68 = v80[0];
  (*(v67 + 16))(v80[0], a1, v66);
  (*(v67 + 56))(v68, 0, 1, v66);
}

Class sub_1000C3A34(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10003C49C(&unk_1001FFEC0, &qword_100182508);
  __chkstk_darwin(v12 - 8);
  v14 = &v22 - v13;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = a3;
  v16 = a1;
  a5();

  v17 = *(v9 + 8);
  v17(v11, v8);
  v18 = (*(v9 + 48))(v14, 1, v8);
  v19 = 0;
  if (v18 != 1)
  {
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v17(v14, v8);
    v19 = isa;
  }

  return v19;
}

id sub_1000C3BF0(void *a1, unint64_t a2)
{
  v32 = a2;
  v31 = type metadata accessor for TargetDevice.DeviceType();
  v4 = *(v31 - 8);
  __chkstk_darwin(v31);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10003C49C(&qword_1001FFE18, &qword_100182498);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - v9;
  v11 = type metadata accessor for UIListContentConfiguration();
  v30 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = String._bridgeToObjectiveC()();
  v15 = [a1 dequeueReusableHeaderFooterViewWithIdentifier:v14];

  if (!v15)
  {
    return v15;
  }

  result = static UIListContentConfiguration.header()();
  v17 = *(v2 + OBJC_IVAR____TtC11Diagnostics14DeviceSelector_dataSource);
  if (v17)
  {
    v18 = v17;
    dispatch thunk of UITableViewDiffableDataSource.snapshot()();

    v19 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
    result = (*(v8 + 8))(v10, v7);
    if ((v32 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v19 + 16) > v32)
    {
      v20 = v31;
      (*(v4 + 16))(v6, v19 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v32, v31);
      v19, v21, v22, v23, v24, v25, v26, v27;
      sub_1000C3F34();
      (*(v4 + 8))(v6, v20);
      UIListContentConfiguration.text.setter();
      v33[3] = v11;
      v33[4] = &protocol witness table for UIListContentConfiguration;
      v28 = sub_10005BAD0(v33);
      v29 = v30;
      (*(v30 + 16))(v28, v13, v11);
      UITableViewHeaderFooterView.contentConfiguration.setter();
      (*(v29 + 8))(v13, v11);
      return v15;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000C3F34()
{
  v1 = v0;
  v2 = type metadata accessor for TargetDevice.DeviceType();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  result = 0;
  if (v7 != enum case for TargetDevice.DeviceType.unknown(_:))
  {
    if (v7 == enum case for TargetDevice.DeviceType.mac(_:))
    {
      v9 = "TOR_DEVICES_IPHONE_IPAD";
      v10 = 0xD00000000000001FLL;
    }

    else if (v7 == enum case for TargetDevice.DeviceType.iOS(_:))
    {
      v9 = "ELS_DEVICE_SELECTOR_DEVICES_TV";
      v10 = 0xD000000000000027;
    }

    else
    {
      if (v7 == enum case for TargetDevice.DeviceType.appleTV(_:))
      {
        v11 = 0x8000000100190480;
        v10 = 0xD00000000000001ELL;
        return sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, v10, v11);
      }

      if (v7 == enum case for TargetDevice.DeviceType.watch(_:))
      {
        v9 = "TOR_DEVICES_HOMEPOD";
        v10 = 0xD000000000000021;
      }

      else if (v7 == enum case for TargetDevice.DeviceType.audioAccessory(_:))
      {
        v9 = "TOR_DEVICES_VISION";
        v10 = 0xD000000000000023;
      }

      else
      {
        if (v7 != enum case for TargetDevice.DeviceType.reality(_:))
        {
          (*(v3 + 8))(v6, v2);
          return 0;
        }

        v9 = "TOR_DEVICE_DISCOVERY";
        v10 = 0xD000000000000022;
      }
    }

    v11 = (v9 | 0x8000000000000000);
    return sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, v10, v11);
  }

  return result;
}

double sub_1000C4224()
{
  v1 = sub_10003C49C(&unk_1001FFE20, &unk_10017ED10);
  __chkstk_darwin(v1 - 8);
  v23 = &v21 - v2;
  v3 = type metadata accessor for Session.CollectOptions();
  v22 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v21 = &v21 - v8;
  v9 = v0;
  v10 = [v0 buttonTray];
  [v10 showButtonsBusy];

  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  if (SessionManager.currentSession.getter())
  {
    Session.stopDeviceDiscovery()();
  }

  v11 = swift_allocBox();
  v24 = &_swiftEmptyArrayStorage;
  sub_1000C5A68(&qword_100202930, &type metadata accessor for Session.CollectOptions, &protocol conformance descriptor for Session.CollectOptions);
  sub_10003C49C(&unk_1001FFE30, &unk_100181F90);
  sub_10003E278(&qword_100202940, &unk_1001FFE30, &unk_100181F90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  if (!SessionManager.currentSession.getter() || (v12 = Session.requiresFollowUpQuestion.getter(), , (v12 & 1) == 0))
  {
    if (v9[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_consentState] == 1)
    {
      static Session.CollectOptions.upload.getter();
      v13 = v21;
      sub_1000BCB18(v21, v5);
      v14 = *(v22 + 8);
      v14(v5, v3);
      v14(v13, v3);
    }
  }

  v15 = type metadata accessor for TaskPriority();
  v16 = v23;
  (*(*(v15 - 8) + 56))(v23, 1, 1, v15);
  type metadata accessor for MainActor();
  v17 = v9;

  v18 = static MainActor.shared.getter();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = &protocol witness table for MainActor;
  v19[4] = v17;
  v19[5] = v11;
  sub_1000539D8(0, 0, v16, &unk_1001824A8, v19);

  return result;
}

uint64_t sub_1000C45CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v6 = type metadata accessor for Session.CollectOptions();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_projectBox();
  type metadata accessor for MainActor();
  v5[11] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[12] = v8;
  v5[13] = v7;

  return _swift_task_switch(sub_1000C46D0, v8, v7);
}

uint64_t sub_1000C46D0(__n128 a1)
{
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  v2 = SessionManager.currentSession.getter();
  v1[14] = v2;
  if (v2)
  {
    v4 = v1[9];
    v3 = v1[10];
    v5 = v1[7];
    v6 = v1[8];
    v7 = sub_1000C53A0();
    v1[15] = v7;
    swift_beginAccess();
    (*(v6 + 16))(v4, v3, v5);
    v8 = swift_task_alloc();
    v1[16] = v8;
    *v8 = v1;
    v8[1] = sub_1000C49C0;
    v9 = v1[9];

    return Session.startCollecting(from:options:)(v7, v9);
  }

  else
  {

    sub_10008CDB0();
    v10 = swift_allocError();
    swift_willThrow();
    v1[5] = v10;
    swift_errorRetain();
    sub_10003C49C(&qword_100201C30, &unk_100183150);
    if (swift_dynamicCast() & 1) != 0 || (static SessionError.isSessionError(_:)())
    {
      v11 = v1[6];
      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      v13 = v11;
      v14 = sub_1000B99C8(v10, sub_1000CA504, v12);
    }

    else
    {
      v15 = v1[6];
      v16 = swift_allocObject();
      *(v16 + 16) = v15;
      v17 = v15;
      v14 = sub_1000B9DF8(v10, sub_1000CA4E0, v16);
    }

    v18 = v14;
    v19 = v1[6];

    [v19 presentViewController:v18 animated:1 completion:0];
    v20 = [v19 buttonTray];
    [v20 showButtonsAvailable];

    v21 = v1[1];

    return v21();
  }
}

uint64_t sub_1000C49C0()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = v2[15];
  (*(v2[8] + 8))(v2[9], v2[7]);
  v3, v4, v5, v6, v7, v8, v9, v10;
  v11 = v2[13];
  v12 = v2[12];
  if (v0)
  {
    v13 = sub_1000C4C58;
  }

  else
  {
    v13 = sub_1000C4B64;
  }

  return _swift_task_switch(v13, v12, v11);
}

uint64_t sub_1000C4B64()
{
  v1 = *(v0 + 48);

  v2 = [v1 parentViewController];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_100125854(1, 0, 1, 0, 0);

      goto LABEL_7;
    }
  }

LABEL_7:

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000C4C58()
{

  v1 = v0[17];
  v0[5] = v1;
  swift_errorRetain();
  sub_10003C49C(&qword_100201C30, &unk_100183150);
  if (swift_dynamicCast() & 1) != 0 || (static SessionError.isSessionError(_:)())
  {
    v2 = v0[6];
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = v2;
    v5 = sub_1000B99C8(v1, sub_1000CA504, v3);
  }

  else
  {
    v6 = v0[6];
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v8 = v6;
    v5 = sub_1000B9DF8(v1, sub_1000CA4E0, v7);
  }

  v9 = v5;
  v10 = v0[6];

  [v10 presentViewController:v9 animated:1 completion:0];
  v11 = [v10 buttonTray];
  [v11 showButtonsAvailable];

  v12 = v0[1];

  return v12();
}

void sub_1000C4E14(void *a1, __n128 a2)
{
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  if (SessionManager.currentSession.getter())
  {
    Session.cancel()();
  }

  v3 = [a1 parentViewController];
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_100125854(1, 0, 1, 0, 0);
    }
  }
}

void sub_1000C4FA0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v49 = a2;
  v3 = type metadata accessor for DeviceSelector.DataSourceItemState(0);
  v46 = *(v3 - 8);
  v47 = v3;
  __chkstk_darwin(v3);
  v48 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10003C49C(&qword_1001FFE18, &qword_100182498);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v45 - v10;
  v51 = type metadata accessor for TargetDevice.DeviceType();
  v12 = *(v51 - 8);
  __chkstk_darwin(v51);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC11Diagnostics14DeviceSelector_dataSource;
  v50 = v2;
  v16 = *(v2 + OBJC_IVAR____TtC11Diagnostics14DeviceSelector_dataSource);
  if (!v16)
  {
    goto LABEL_15;
  }

  v17 = v16;
  dispatch thunk of UITableViewDiffableDataSource.snapshot()();

  v18 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  v19 = *(v6 + 8);
  v19(v11, v5);
  v20 = IndexPath.section.getter();
  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v20 >= *(v18 + 16))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  (*(v12 + 16))(v14, v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v20, v51);
  v18, v21, v22, v23, v24, v25, v26, v27;
  v28 = *(v50 + v15);
  if (!v28)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v29 = v28;
  dispatch thunk of UITableViewDiffableDataSource.snapshot()();

  v30 = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
  v19(v8, v5);
  v31 = IndexPath.row.getter();
  if ((v31 & 0x8000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if (v31 >= *(v30 + 16))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v32 = v48;
  sub_1000C5A04(v30 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v31, v48);
  v30, v33, v34, v35, v36, v37, v38, v39;
  (*(v12 + 8))(v14, v51);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v41 = type metadata accessor for TargetDevice();
  v42 = *(v41 - 8);
  v43 = v42;
  if (EnumCaseMultiPayload == 1)
  {
    (*(v42 + 56))(v49, 1, 1, v41);
    sub_1000CA060(v32);
  }

  else
  {
    v44 = v49;
    (*(v42 + 32))(v49, v32, v41);
    (*(v43 + 56))(v44, 0, 1, v41);
  }
}

DARootViewController *sub_1000C53A0()
{
  v1 = sub_10003C49C(&qword_1001FFE10, qword_100181340);
  __chkstk_darwin(v1 - 8);
  v3 = &v41 - v2;
  v4 = type metadata accessor for TargetDevice();
  v44 = *(v4 - 8);
  __chkstk_darwin(v4);
  v50 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v0;
  result = *(v0 + OBJC_IVAR____TtC11Diagnostics14DeviceSelector_devicesTableView);
  if (result)
  {
    v12 = [(DARootViewController *)result indexPathsForSelectedRows];
    v43 = v4;
    if (v12)
    {
      v20 = v12;
      v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v4 = v43;
      v22 = *&v21->hostAppBundleIdentifier[8];
      if (v22)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v21 = &_swiftEmptyArrayStorage;
      v22 = *&_swiftEmptyArrayStorage.hostAppBundleIdentifier[8];
      if (v22)
      {
LABEL_4:
        v24 = *(v7 + 16);
        v23 = v7 + 16;
        v25 = *(v23 + 64);
        v41 = v21;
        v26 = v21 + ((v25 + 32) & ~v25);
        v46 = *(v23 + 56);
        v47 = v24;
        v48 = v23;
        v27 = (v23 - 8);
        v28 = (v44 + 48);
        v45 = (v44 + 32);
        v29 = &_swiftEmptyArrayStorage;
        v42 = v3;
        v24(v10, v26, v6);
        while (1)
        {
          sub_1000C4FA0(v10, v3);
          (*v27)(v10, v6);
          if ((*v28)(v3, 1, v4) == 1)
          {
            sub_10003DD84(v3, &qword_1001FFE10, qword_100181340);
          }

          else
          {
            v37 = v6;
            v38 = *v45;
            (*v45)(v50, v3, v4);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v29 = sub_1000D50E4(0, *&v29->hostAppBundleIdentifier[8] + 1, 1, v29);
            }

            v40 = *&v29->hostAppBundleIdentifier[8];
            v39 = *v29->responder;
            if (v40 >= v39 >> 1)
            {
              v29 = sub_1000D50E4((v39 > 1), v40 + 1, 1, v29);
            }

            *&v29->hostAppBundleIdentifier[8] = v40 + 1;
            v4 = v43;
            v38(v29 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v40, v50, v43);
            v3 = v42;
            v6 = v37;
          }

          v26 += v46;
          if (!--v22)
          {
            break;
          }

          v47(v10, v26, v6);
        }

        v41, v30, v31, v32, v33, v34, v35, v36;
        return v29;
      }
    }

    v21, v13, v14, v15, v16, v17, v18, v19;
    return &_swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

id sub_1000C57A4(uint64_t a1, __n128 a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for DeviceSelector();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for DeviceSelector.DataSourceItemState(uint64_t a1)
{
  result = qword_1001FFD90;
  if (!qword_1001FFD90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C5948(uint64_t a1)
{
  result = type metadata accessor for TargetDevice();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TargetDevice.DeviceType();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000C5A04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceSelector.DataSourceItemState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C5A68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000C5AD4()
{
  if (TargetDevice.isPrimaryHomeHub.getter())
  {
    v0 = 1;
  }

  else if (TargetDevice.isPrimaryHomeHub.getter())
  {
    v0 = 0;
  }

  else
  {
    v1 = TargetDevice.userAssignedName.getter();
    v3 = v2;
    v5 = TargetDevice.userAssignedName.getter();
    v11 = v4;
    if (v1 == v5 && v3 == v4)
    {
      v0 = 0;
    }

    else
    {
      v0 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v3, v4, v5, v6, v7, v8, v9, v10;
    v11, v12, v13, v14, v15, v16, v17, v18;
  }

  return v0 & 1;
}

void sub_1000C5B8C(uint64_t a1)
{
  v2 = sub_10003C49C(&unk_100201EF0, &qword_100182338);
  v50 = *(v2 - 8);
  v51 = v2;
  __chkstk_darwin(v2);
  v49 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v46 - v5;
  v7 = *(a1 + 16);
  v8 = &_swiftEmptyArrayStorage;
  if (v7)
  {
    v54 = &_swiftEmptyArrayStorage;
    sub_1000B7CDC(0, v7, 0);
    v8 = v54;
    v9 = a1 + 64;
    v10 = _HashTable.startBucket.getter();
    v11 = 0;
    v46 = a1 + 72;
    v47 = v7;
    v48 = a1 + 64;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v9 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v14 = *(a1 + 36);
      v52 = v11;
      v53 = v14;
      v15 = *(a1 + 48);
      v16 = type metadata accessor for TargetDevice.DeviceType();
      v17 = *(v16 - 8);
      v18 = v8;
      v19 = v17;
      v20 = v15 + *(v17 + 72) * v10;
      v21 = v49;
      (*(v17 + 16))(v49, v20, v16);
      v22 = a1;
      v23 = *(*(a1 + 56) + 8 * v10);
      (*(v19 + 32))(v6, v21, v16);
      *&v6[*(v51 + 48)] = v23;
      v54 = v18;
      v25 = *&v18->hostAppBundleIdentifier[8];
      v24 = *v18->responder;

      if (v25 >= v24 >> 1)
      {
        sub_1000B7CDC((v24 > 1), v25 + 1, 1);
        v18 = v54;
      }

      *&v18->hostAppBundleIdentifier[8] = v25 + 1;
      sub_10009DDBC(v6, v18 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v25, &unk_100201EF0, &qword_100182338);
      v12 = 1 << *(v22 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      a1 = v22;
      v9 = v48;
      v31 = *(v48 + 8 * v13);
      if ((v31 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      if (v53 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v8 = v18;
      v32 = v31 & (-2 << (v10 & 0x3F));
      if (v32)
      {
        v12 = __clz(__rbit64(v32)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v33 = a1;
        v34 = v13 << 6;
        v35 = v13 + 1;
        v36 = (v46 + 8 * v13);
        while (v35 < (v12 + 63) >> 6)
        {
          v38 = *v36++;
          v37 = v38;
          v34 += 64;
          ++v35;
          if (v38)
          {
            sub_1000B2714(v10, v53, 0, v26, v27, v28, v29, v30);
            v12 = __clz(__rbit64(v37)) + v34;
            goto LABEL_19;
          }
        }

        sub_1000B2714(v10, v53, 0, v26, v27, v28, v29, v30);
LABEL_19:
        a1 = v33;
      }

      v11 = v52 + 1;
      v10 = v12;
      if (v52 + 1 == v47)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_20:
    v54 = v8;

    sub_1000C6448(sub_100124D70, 0);
    v8, v39, v40, v41, v42, v43, v44, v45;
  }
}

uint64_t sub_1000C5F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10003C49C(&unk_100201EF0, &qword_100182338);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v17 - v6;
  sub_1000CB048(a1, &v17 - v6);
  *&v7[*(v5 + 56)], v8, v9, v10, v11, v12, v13, v14;
  v15 = type metadata accessor for TargetDevice.DeviceType();
  return (*(*(v15 - 8) + 32))(a2, v7, v15);
}

BOOL sub_1000C6060(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&unk_100201EF0, &qword_100182338);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v33 - v9;
  sub_1000CB048(a1, &v33 - v9);
  v11 = *&v10[*(v5 + 56)];
  v12 = *(v11 + 16);
  v11, v13, v14, v15, v16, v17, v18, v19;
  sub_1000CB048(a2, v7);
  v20 = *&v7[*(v5 + 56)];
  v21 = *(v20 + 16);
  v20, v22, v23, v24, v25, v26, v27, v28;
  v29 = v12 < v21;
  v30 = type metadata accessor for TargetDevice.DeviceType();
  v31 = *(*(v30 - 8) + 8);
  v31(v7, v30);
  v31(v10, v30);
  return v29;
}

id sub_1000C61A0()
{
  v1 = v0;
  v2 = type metadata accessor for TargetDevice.DeviceType();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for TargetDevice.DeviceType.mac(_:))
  {
    v8 = &ELSPlatformMacOS;
  }

  else if (v7 == enum case for TargetDevice.DeviceType.iOS(_:))
  {
    v8 = &ELSPlatformIOS;
  }

  else if (v7 == enum case for TargetDevice.DeviceType.appleTV(_:))
  {
    v8 = &ELSPlatformAppleTV;
  }

  else if (v7 == enum case for TargetDevice.DeviceType.watch(_:))
  {
    v8 = &ELSPlatformWatchOS;
  }

  else if (v7 == enum case for TargetDevice.DeviceType.audioAccessory(_:))
  {
    v8 = &ELSPlatformHomePod;
  }

  else
  {
    if (v7 != enum case for TargetDevice.DeviceType.reality(_:))
    {
      (*(v3 + 8))(v6, v2);
      return 0;
    }

    v8 = &ELSPlatformVisionOS;
  }

  v9 = *v8;
  v10 = *v8;
  return v9;
}

unint64_t *sub_1000C6368(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1000CA9EC(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

void sub_1000C6448(uint64_t (*a1)(uint64_t, char *), uint64_t a2)
{
  sub_10003C49C(&unk_100201EF0, &qword_100182338);
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1000658CC(v5);
  }

  sub_1000C65F4(a1, a2);
  *v2 = v5;
}

void sub_1000C6514(uint64_t (*a1)(char *, char *), uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t (*a5)(void))
{
  a3(0);
  v10 = *v5;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a4(v10);
  }

  sub_1000C6748(a1, a2, a5, a5);
  *v5 = v10;
}

void sub_1000C65F4(uint64_t (*a1)(uint64_t, char *), uint64_t a2)
{
  v5 = v2[1];
  v6 = _minimumMergeRunLength(_:)(v5);
  if (v6 < v5)
  {
    if (v5 >= -1)
    {
      v7 = v6;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_10003C49C(&unk_100201EF0, &qword_100182338);
        v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *&v9->hostAppBundleIdentifier[8] = v8;
      }

      v10 = *(sub_10003C49C(&unk_100201EF0, &qword_100182338) - 8);
      v18[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v18[1] = v8;
      sub_1000C6E3C(v18, v19, v2, a1, a2, v7);
      *&v9->hostAppBundleIdentifier[8] = 0;
      v9, v11, v12, v13, v14, v15, v16, v17;
      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    sub_1000C68B0(0, v5, 1, a1);
  }
}

void sub_1000C6748(uint64_t (*a1)(char *, char *), uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = v4[1];
  v10 = _minimumMergeRunLength(_:)(v9);
  if (v10 < v9)
  {
    if (v9 >= -1)
    {
      v11 = v10;
      v12 = v9 / 2;
      if (v9 < 2)
      {
        v13 = &_swiftEmptyArrayStorage;
      }

      else
      {
        a3(0);
        v13 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *&v13->hostAppBundleIdentifier[8] = v12;
      }

      v14 = *(a3(0) - 8);
      v22[0] = v13 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
      v22[1] = v12;
      sub_1000C7930(v22, v23, v4, a1, a2, v11, a4, a4);
      *&v13->hostAppBundleIdentifier[8] = 0;
      v13, v15, v16, v17, v18, v19, v20, v21;
      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v9 < 0)
  {
    goto LABEL_12;
  }

  if (v9)
  {
    sub_1000C6B4C(0, v9, 1, a1, a2, a4);
  }
}

void sub_1000C68B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t))
{
  v6 = v5;
  v49 = a4;
  v46 = sub_10003C49C(&unk_100201EF0, &qword_100182338);
  __chkstk_darwin(v46);
  v45 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v48 = &v36 - v12;
  __chkstk_darwin(v13);
  v47 = &v36 - v15;
  v38 = a2;
  if (a3 != a2)
  {
    v16 = *v4;
    v17 = *(v14 + 72);
    v18 = *v4 + v17 * (a3 - 1);
    v43 = -v17;
    v44 = v16;
    v19 = a1 - a3;
    v37 = v17;
    v20 = v16 + v17 * a3;
    v21 = &unk_100201EF0;
    v22 = &qword_100182338;
LABEL_4:
    v41 = v18;
    v42 = a3;
    v39 = v20;
    v40 = v19;
    v23 = v19;
    while (1)
    {
      v50 = v23;
      v24 = v47;
      sub_1000CB048(v20, v47);
      v25 = v48;
      sub_1000CB048(v18, v48);
      v26 = v6;
      v27 = v22;
      v28 = v49(v24, v25);
      sub_10003DD84(v25, v21, v27);
      v29 = v24;
      v30 = v21;
      v31 = v27;
      sub_10003DD84(v29, v21, v27);
      v6 = v26;
      if (v26)
      {
        break;
      }

      if ((v28 & 1) == 0)
      {
        v22 = v31;
LABEL_12:
        a3 = v42 + 1;
        v18 = v41 + v37;
        v19 = v40 - 1;
        v20 = v39 + v37;
        if (v42 + 1 != v38)
        {
          goto LABEL_4;
        }

        return;
      }

      v32 = v50;
      if (!v44)
      {
        __break(1u);
        return;
      }

      v33 = v45;
      v22 = v31;
      sub_10009DDBC(v20, v45, v30, v31);
      swift_arrayInitWithTakeFrontToBack();
      v34 = v33;
      v21 = v30;
      sub_10009DDBC(v34, v18, v30, v31);
      v18 += v43;
      v20 += v43;
      v35 = __CFADD__(v32, 1);
      v23 = v32 + 1;
      if (v35)
      {
        goto LABEL_12;
      }
    }
  }
}

void sub_1000C6B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *), uint64_t a5, uint64_t (*a6)(void))
{
  v8 = v7;
  v53 = a5;
  v54 = a4;
  v12 = a6(0);
  __chkstk_darwin(v12);
  v48 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v55 = &v39 - v15;
  v19 = __chkstk_darwin(v16);
  v40 = a2;
  if (a3 != a2)
  {
    v51 = &v39 - v17;
    v20 = *v6;
    v22 = *(v18 + 16);
    v21 = v18 + 16;
    v23 = *(v21 + 56);
    v49 = v22;
    v50 = (v21 - 8);
    v52 = v21;
    v46 = (v21 + 16);
    v47 = v20;
    v24 = (v20 + v23 * (a3 - 1));
    v45 = -v23;
    v25 = a1 - a3;
    v39 = v23;
    v26 = v20 + v23 * a3;
    v27 = v55;
    while (2)
    {
      v43 = v24;
      v44 = a3;
      v41 = v26;
      v42 = v25;
      v28 = v24;
      while (1)
      {
        v29 = v51;
        v30 = v49;
        (v49)(v51, v26, v12, v19);
        v30(v27, v28, v12);
        v31 = v54(v29, v27);
        if (v8)
        {
          v38 = *v50;
          (*v50)(v27, v12);
          v38(v29, v12);
          return;
        }

        v32 = v31;
        v33 = v27;
        v34 = *v50;
        (*v50)(v33, v12);
        v34(v29, v12);
        if ((v32 & 1) == 0)
        {
          break;
        }

        if (!v47)
        {
          __break(1u);
          return;
        }

        v35 = *v46;
        v36 = v48;
        (*v46)(v48, v26, v12);
        swift_arrayInitWithTakeFrontToBack();
        v35(v28, v36, v12);
        v28 += v45;
        v26 += v45;
        v37 = __CFADD__(v25++, 1);
        v27 = v55;
        v8 = 0;
        if (v37)
        {
          goto LABEL_11;
        }
      }

      v27 = v55;
      v8 = 0;
LABEL_11:
      a3 = v44 + 1;
      v24 = &v43[v39];
      v25 = v42 - 1;
      v26 = v41 + v39;
      if (v44 + 1 != v40)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1000C6E3C(char **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t, char *), int64_t a5, uint64_t a6)
{
  v7 = v6;
  v152 = a5;
  v153 = a4;
  v141 = a1;
  v146 = sub_10003C49C(&unk_100201EF0, &qword_100182338);
  v151 = *(v146 - 8);
  __chkstk_darwin(v146);
  v143 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v145 = &v131 - v12;
  __chkstk_darwin(v13);
  __chkstk_darwin(v14);
  v16 = &v131 - v15;
  __chkstk_darwin(v17);
  __chkstk_darwin(v18);
  v20 = &v131 - v19;
  __chkstk_darwin(v21);
  __chkstk_darwin(v22);
  v34 = a3[1];
  v147 = a3;
  if (v34 < 1)
  {
    v36 = &_swiftEmptyArrayStorage;
LABEL_103:
    v37 = v152;
    v16 = *v141;
    if (*v141)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_135;
      }

      goto LABEL_105;
    }

    goto LABEL_144;
  }

  v136 = &v131 - v30;
  v137 = v33;
  v148 = v32;
  v144 = v31;
  v134 = a6;
  v35 = 0;
  v36 = &_swiftEmptyArrayStorage;
  v139 = v20;
  while (1)
  {
    v37 = v35;
    v38 = v35 + 1;
    if (v38 >= v34)
    {
      v52 = v38;
    }

    else
    {
      v142 = v34;
      v150 = v7;
      v39 = *a3;
      v40 = *(v151 + 72);
      v41 = v37;
      v42 = v39 + v40 * v38;
      v43 = v136;
      sub_1000CB048(v42, v136);
      v140 = v40;
      v44 = v137;
      sub_1000CB048(v39 + v40 * v41, v137);
      v45 = v150;
      LODWORD(v150) = v153(v43, v44);
      if (v45)
      {
        sub_10003DD84(v44, &unk_100201EF0, &qword_100182338);
        sub_10003DD84(v43, &unk_100201EF0, &qword_100182338);
        v36, v124, v125, v126, v127, v128, v129, v130;
        return;
      }

      v135 = v36;
      v133 = v16;
      sub_10003DD84(v44, &unk_100201EF0, &qword_100182338);
      sub_10003DD84(v43, &unk_100201EF0, &qword_100182338);
      v132 = v142 - 1;
      v149 = v142 - 2;
      v46 = v39 + v140 * (v41 + 2);
      v138 = v41;
      v47 = v41;
      v7 = 0;
      v48 = v140;
      while (v149 != v47)
      {
        sub_1000CB048(v46, v20);
        v49 = v20;
        v50 = v148;
        sub_1000CB048(v42, v148);
        v51 = v153(v49, v50);
        sub_10003DD84(v50, &unk_100201EF0, &qword_100182338);
        v7 = 0;
        sub_10003DD84(v49, &unk_100201EF0, &qword_100182338);
        ++v47;
        v46 += v48;
        v42 += v48;
        v20 = v49;
        if ((v150 ^ v51))
        {
          v142 = v47 + 1;
          goto LABEL_11;
        }
      }

      v47 = v132;
LABEL_11:
      v16 = v133;
      v37 = v138;
      if (v150)
      {
        if (v142 < v138)
        {
          goto LABEL_138;
        }

        v36 = v135;
        if (v138 <= v47)
        {
          v53 = v142;
          v54 = v48 * (v142 - 1);
          v55 = v142 * v48;
          v56 = v138;
          v57 = v138 * v48;
          do
          {
            if (v56 != --v53)
            {
              v150 = v7;
              v58 = *v147;
              if (!*v147)
              {
                goto LABEL_142;
              }

              sub_10009DDBC(v58 + v57, v143, &unk_100201EF0, &qword_100182338);
              if (v57 < v54 || v58 + v57 >= (v58 + v55))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v57 != v54)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_10009DDBC(v143, v58 + v54, &unk_100201EF0, &qword_100182338);
              v7 = v150;
            }

            ++v56;
            v54 -= v48;
            v55 -= v48;
            v57 += v48;
          }

          while (v56 < v53);
          a3 = v147;
          v16 = v133;
          v37 = v138;
        }

        else
        {
          a3 = v147;
        }

        v52 = v142;
      }

      else
      {
        a3 = v147;
        v52 = v142;
        v36 = v135;
      }
    }

    v59 = a3[1];
    if (v52 >= v59)
    {
      goto LABEL_38;
    }

    if (__OFSUB__(v52, v37))
    {
      goto LABEL_134;
    }

    if (v52 - v37 >= v134)
    {
      goto LABEL_38;
    }

    if (__OFADD__(v37, v134))
    {
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
      goto LABEL_141;
    }

    v142 = v52;
    if (v37 + v134 >= v59)
    {
      v60 = v59;
    }

    else
    {
      v60 = v37 + v134;
    }

    if (v60 < v37)
    {
      goto LABEL_137;
    }

    if (v142 == v60)
    {
      v52 = v142;
LABEL_38:
      if (v52 < v37)
      {
        goto LABEL_133;
      }

      goto LABEL_39;
    }

    v108 = *a3;
    v109 = *(v151 + 72);
    v110 = *a3 + v109 * (v142 - 1);
    v149 = -v109;
    v150 = v108;
    v138 = v37;
    v111 = (v37 - v142);
    v131 = v109;
    v112 = v108 + v142 * v109;
    v140 = v60;
    do
    {
      v132 = v112;
      v133 = v111;
      v113 = v111;
      v135 = v110;
      do
      {
        sub_1000CB048(v112, v16);
        v114 = v16;
        v115 = v144;
        sub_1000CB048(v110, v144);
        v116 = v153(v114, v115);
        if (v7)
        {
          sub_10003DD84(v115, &unk_100201EF0, &qword_100182338);
          sub_10003DD84(v114, &unk_100201EF0, &qword_100182338);
LABEL_115:
          v36, v23, v24, v25, v26, v27, v28, v29;
          return;
        }

        v117 = v116;
        sub_10003DD84(v115, &unk_100201EF0, &qword_100182338);
        sub_10003DD84(v114, &unk_100201EF0, &qword_100182338);
        v16 = v114;
        if ((v117 & 1) == 0)
        {
          break;
        }

        if (!v150)
        {
          goto LABEL_140;
        }

        v118 = v145;
        sub_10009DDBC(v112, v145, &unk_100201EF0, &qword_100182338);
        swift_arrayInitWithTakeFrontToBack();
        sub_10009DDBC(v118, v110, &unk_100201EF0, &qword_100182338);
        v110 += v149;
        v112 += v149;
      }

      while (!__CFADD__(v113++, 1));
      v110 = v135 + v131;
      v111 = v133 - 1;
      v112 = v132 + v131;
      v52 = v140;
      ++v142;
    }

    while (v142 != v140);
    a3 = v147;
    v37 = v138;
    if (v140 < v138)
    {
      goto LABEL_133;
    }

LABEL_39:
    v61 = v7;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_1000C94C8(0, *&v36->hostAppBundleIdentifier[8] + 1, 1, v36, v26, v27, v28, v29);
    }

    v63 = *&v36->hostAppBundleIdentifier[8];
    v62 = *v36->responder;
    v64 = v63 + 1;
    if (v63 >= v62 >> 1)
    {
      v36 = sub_1000C94C8((v62 > 1), v63 + 1, 1, v36, v26, v27, v28, v29);
    }

    *&v36->hostAppBundleIdentifier[8] = v64;
    v65 = v36 + 16 * v63;
    *(v65 + 4) = v37;
    *(v65 + 5) = v52;
    v66 = *v141;
    if (!*v141)
    {
      goto LABEL_143;
    }

    v140 = v52;
    if (v63)
    {
      break;
    }

    v7 = v61;
LABEL_90:
    v34 = a3[1];
    v20 = v139;
    v35 = v140;
    if (v140 >= v34)
    {
      goto LABEL_103;
    }
  }

  v7 = v61;
  while (1)
  {
    v37 = v64 - 1;
    if (v64 >= 4)
    {
      v71 = &v36->remoteCardFilter[16 * v64];
      v72 = *(v71 - 64);
      v73 = *(v71 - 56);
      v77 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      if (v77)
      {
        goto LABEL_120;
      }

      v76 = *(v71 - 48);
      v75 = *(v71 - 40);
      v77 = __OFSUB__(v75, v76);
      v69 = v75 - v76;
      v70 = v77;
      if (v77)
      {
        goto LABEL_121;
      }

      v78 = &v36->super.super.super.super.isa + 2 * v64;
      v80 = *v78;
      v79 = v78[1];
      v77 = __OFSUB__(v79, v80);
      v81 = v79 - v80;
      if (v77)
      {
        goto LABEL_123;
      }

      v77 = __OFADD__(v69, v81);
      v82 = v69 + v81;
      if (v77)
      {
        goto LABEL_126;
      }

      if (v82 >= v74)
      {
        v100 = &v36->remoteCardFilter[16 * v37];
        v102 = *v100;
        v101 = *(v100 + 1);
        v77 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v77)
        {
          goto LABEL_132;
        }

        if (v69 < v103)
        {
          v37 = v64 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

    if (v64 == 3)
    {
      v67 = *v36->remoteCardFilter;
      v68 = *&v36->remoteCardFilter[8];
      v77 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      v70 = v77;
LABEL_59:
      if (v70)
      {
        goto LABEL_122;
      }

      v83 = &v36->super.super.super.super.isa + 2 * v64;
      v85 = *v83;
      v84 = v83[1];
      v86 = __OFSUB__(v84, v85);
      v87 = v84 - v85;
      v88 = v86;
      if (v86)
      {
        goto LABEL_125;
      }

      v89 = &v36->remoteCardFilter[16 * v37];
      v91 = *v89;
      v90 = *(v89 + 1);
      v77 = __OFSUB__(v90, v91);
      v92 = v90 - v91;
      if (v77)
      {
        goto LABEL_128;
      }

      if (__OFADD__(v87, v92))
      {
        goto LABEL_129;
      }

      if (v87 + v92 >= v69)
      {
        if (v69 < v92)
        {
          v37 = v64 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_73;
    }

    v93 = &v36->super.super.super.super.isa + 2 * v64;
    v95 = *v93;
    v94 = v93[1];
    v77 = __OFSUB__(v94, v95);
    v87 = v94 - v95;
    v88 = v77;
LABEL_73:
    if (v88)
    {
      goto LABEL_124;
    }

    v96 = v36 + 16 * v37;
    v98 = *(v96 + 4);
    v97 = *(v96 + 5);
    v77 = __OFSUB__(v97, v98);
    v99 = v97 - v98;
    if (v77)
    {
      goto LABEL_127;
    }

    if (v99 < v87)
    {
      goto LABEL_90;
    }

LABEL_80:
    v104 = v37 - 1;
    if (v37 - 1 >= v64)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_139;
    }

    v105 = *&v36->remoteCardFilter[16 * v104];
    v106 = *&v36->remoteCardFilter[16 * v37 + 8];
    sub_1000C856C(*a3 + *(v151 + 72) * v105, *a3 + *(v151 + 72) * *&v36->remoteCardFilter[16 * v37], *a3 + *(v151 + 72) * v106, v66, v153, v152);
    if (v7)
    {
      goto LABEL_115;
    }

    if (v106 < v105)
    {
      goto LABEL_118;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_1000C92DC(v36, v23, v24, v25, v26, v27, v28, v29);
    }

    if (v104 >= *&v36->hostAppBundleIdentifier[8])
    {
      goto LABEL_119;
    }

    v107 = v36 + 16 * v104;
    *(v107 + 4) = v105;
    *(v107 + 5) = v106;
    v154 = v36;
    sub_1000C9250(v37);
    v36 = v154;
    v64 = *&v154->hostAppBundleIdentifier[8];
    if (v64 <= 1)
    {
      goto LABEL_90;
    }
  }

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
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
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
LABEL_135:
  v36 = sub_1000C92DC(v36, v23, v24, v25, v26, v27, v28, v29);
LABEL_105:
  v154 = v36;
  v120 = *&v36->hostAppBundleIdentifier[8];
  if (v120 < 2)
  {
    goto LABEL_115;
  }

  while (1)
  {
    v121 = *a3;
    if (!*a3)
    {
      break;
    }

    v122 = *(&v36->super.super.super.super.isa + 2 * v120);
    a3 = *&v36->responder[16 * v120];
    sub_1000C856C(v121 + *(v151 + 72) * v122, v121 + *(v151 + 72) * *&v36->hostAppBundleIdentifier[16 * v120 + 8], v121 + *(v151 + 72) * a3, v16, v153, v37);
    if (v7)
    {
      goto LABEL_115;
    }

    if (a3 < v122)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_1000C92DC(v36, v23, v24, v25, v26, v27, v28, v29);
    }

    if (v120 - 2 >= *&v36->hostAppBundleIdentifier[8])
    {
      goto LABEL_131;
    }

    v123 = v36 + 2 * v120;
    *v123 = v122;
    v123[1] = a3;
    v154 = v36;
    sub_1000C9250(v120 - 1);
    v36 = v154;
    v120 = *&v154->hostAppBundleIdentifier[8];
    a3 = v147;
    if (v120 <= 1)
    {
      goto LABEL_115;
    }
  }

LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
}

void sub_1000C7930(char **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(char *, char *), uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v10 = v8;
  v183 = a4;
  v163 = a1;
  v182 = (a7)(0, a2);
  __chkstk_darwin(v182);
  v165 = &v154 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v168 = &v154 - v16;
  __chkstk_darwin(v17);
  __chkstk_darwin(v18);
  __chkstk_darwin(v19);
  v21 = &v154 - v20;
  __chkstk_darwin(v22);
  __chkstk_darwin(&v154 - v23);
  v37 = __chkstk_darwin(v24);
  v180 = v34;
  v181 = a3;
  v38 = a3[1];
  if (v38 < 1)
  {
    v40 = &_swiftEmptyArrayStorage;
    v41 = a5;
LABEL_104:
    v42 = *v163;
    if (*v163)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_138;
      }

      goto LABEL_106;
    }

    goto LABEL_147;
  }

  v161 = &v154 - v33;
  v159 = v26;
  v170 = v25;
  v171 = v21;
  v166 = v36;
  v167 = v35;
  v158 = a6;
  v39 = 0;
  v178 = (v34 + 8);
  v179 = v34 + 16;
  v175 = (v34 + 32);
  v40 = &_swiftEmptyArrayStorage;
  v176 = a5;
  v41 = a5;
  v157 = a8;
  while (1)
  {
    v42 = v39;
    v164 = v40;
    if ((v39 + 1) >= v38)
    {
      v66 = (v39 + 1);
      v40 = v182;
    }

    else
    {
      v162 = v38;
      v43 = *v181;
      v44 = *(v180 + 72);
      v45 = v39;
      v46 = *v181 + v44 * (v39 + 1);
      v47 = *(v180 + 16);
      v48 = v182;
      (v47)(v161, v46, v182, v37);
      v177 = v44;
      v160 = v43;
      v49 = v43 + v44 * v45;
      v50 = v159;
      v172 = v47;
      (v47)(v159, v49, v48);
      v51 = v161;
      LODWORD(v174) = v183(v161, v50);
      if (v10)
      {
        v153 = *v178;
        (*v178)(v50, v48);
        (v153)(v51, v48);
LABEL_119:
        v40, v26, v27, v28, v29, v30, v31, v32;
        return;
      }

      v184 = 0;
      v52 = *v178;
      (*v178)(v50, v48);
      v169 = v52;
      (v52)(v51, v48);
      v156 = (v162 - 1);
      v173 = v162 - 2;
      v53 = v177;
      v54 = (v160 + v177 * (v45 + 2));
      v160 = v45;
      v55 = v45;
      v41 = v176;
      while (v173 != v55)
      {
        v56 = v170;
        v57 = v41;
        v58 = v182;
        v59 = v172;
        (v172)(v170, v54, v182);
        v60 = v171;
        (v59)(v171, v46, v58);
        v61 = v57;
        v62 = v184;
        v63 = v183(v56, v60);
        v184 = v62;
        if (v62)
        {
          v144 = v169;
          (v169)(v60, v58);
          v144(v56, v58);
LABEL_117:
          v164, v145, v146, v147, v148, v149, v150, v151;
          return;
        }

        v64 = v63;
        v65 = v169;
        (v169)(v60, v58);
        v65(v56, v58);
        ++v55;
        v53 = v177;
        v54 += v177;
        v46 += v177;
        v41 = v61;
        if ((v174 ^ v64))
        {
          v66 = v55 + 1;
          goto LABEL_12;
        }
      }

      v55 = v156;
      v66 = v162;
LABEL_12:
      a8 = v157;
      v42 = v160;
      if (v174)
      {
        if (v66 < v160)
        {
          goto LABEL_141;
        }

        v40 = v182;
        if (v160 <= v55)
        {
          v67 = v53 * (v66 - 1);
          v68 = v66 * v53;
          v69 = v66;
          v70 = v160;
          v71 = v160 * v53;
          do
          {
            if (v70 != --v66)
            {
              v73 = *v181;
              if (!*v181)
              {
                goto LABEL_145;
              }

              v74 = *v175;
              (*v175)(v165, v73 + v71, v182);
              if (v71 < v67 || v73 + v71 >= (v73 + v68))
              {
                v72 = v182;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v72 = v182;
                if (v71 != v67)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v74((v73 + v67), v165, v72);
              v41 = v176;
              v53 = v177;
              v40 = v72;
            }

            ++v70;
            v67 -= v53;
            v68 -= v53;
            v71 += v53;
          }

          while (v70 < v66);
          v10 = v184;
          a8 = v157;
          v42 = v160;
          v66 = v69;
        }

        else
        {
          v10 = v184;
        }
      }

      else
      {
        v10 = v184;
        v40 = v182;
      }
    }

    v75 = v181[1];
    if (v66 >= v75)
    {
      goto LABEL_37;
    }

    if (__OFSUB__(v66, v42))
    {
      goto LABEL_137;
    }

    if (v66 - v42 >= v158)
    {
LABEL_37:
      v77 = v66;
      goto LABEL_38;
    }

    if (__OFADD__(v42, v158))
    {
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    if (&v42[v158] >= v75)
    {
      v76 = v181[1];
    }

    else
    {
      v76 = &v42[v158];
    }

    if (v76 < v42)
    {
      goto LABEL_140;
    }

    if (v66 == v76)
    {
      goto LABEL_37;
    }

    v184 = v10;
    v124 = *v181;
    v125 = *(v180 + 72);
    v177 = *(v180 + 16);
    v126 = (v124 + v125 * (v66 - 1));
    v173 = -v125;
    v160 = v42;
    v127 = &v42[-v66];
    v174 = v124;
    v154 = v125;
    v128 = v124 + v66 * v125;
    v172 = v76;
    do
    {
      v162 = v66;
      v155 = v128;
      v156 = v127;
      v169 = v126;
      v129 = v126;
      while (1)
      {
        v130 = v166;
        v131 = v177;
        (v177)(v166, v128, v40, v37);
        v132 = v167;
        v131(v167, v129, v40);
        v133 = v184;
        v134 = v183(v130, v132);
        v184 = v133;
        if (v133)
        {
          v152 = *v178;
          (*v178)(v132, v40);
          (v152)(v130, v40);
          goto LABEL_117;
        }

        v135 = v134;
        v136 = *v178;
        (*v178)(v132, v40);
        (v136)(v130, v40);
        if ((v135 & 1) == 0)
        {
          break;
        }

        if (!v174)
        {
          goto LABEL_143;
        }

        v137 = *v175;
        v138 = v168;
        v40 = v182;
        (*v175)(v168, v128, v182);
        swift_arrayInitWithTakeFrontToBack();
        v137(v129, v138, v40);
        v129 += v173;
        v128 += v173;
        v139 = __CFADD__(v127++, 1);
        v41 = v176;
        if (v139)
        {
          goto LABEL_101;
        }
      }

      v41 = v176;
      v40 = v182;
LABEL_101:
      v66 = v162 + 1;
      v126 = &v169[v154];
      v127 = v156 - 1;
      v128 = v155 + v154;
      v77 = v172;
    }

    while ((v162 + 1) != v172);
    a8 = v157;
    v10 = v184;
    v42 = v160;
LABEL_38:
    v40 = v164;
    if (v77 < v42)
    {
      goto LABEL_136;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = sub_1000C94C8(0, *&v40->hostAppBundleIdentifier[8] + 1, 1, v40, v29, v30, v31, v32);
    }

    v79 = *&v40->hostAppBundleIdentifier[8];
    v78 = *v40->responder;
    v80 = v79 + 1;
    if (v79 >= v78 >> 1)
    {
      v40 = sub_1000C94C8((v78 > 1), v79 + 1, 1, v40, v29, v30, v31, v32);
    }

    *&v40->hostAppBundleIdentifier[8] = v80;
    v81 = v40 + 16 * v79;
    *(v81 + 4) = v42;
    *(v81 + 5) = v77;
    v42 = *v163;
    if (!*v163)
    {
      goto LABEL_146;
    }

    v172 = v77;
    if (v79)
    {
      break;
    }

    v41 = v176;
LABEL_90:
    v38 = v181[1];
    v39 = v172;
    if (v172 >= v38)
    {
      goto LABEL_104;
    }
  }

  v41 = v176;
  while (1)
  {
    v82 = v80 - 1;
    if (v80 >= 4)
    {
      v87 = &v40->remoteCardFilter[16 * v80];
      v88 = *(v87 - 64);
      v89 = *(v87 - 56);
      v93 = __OFSUB__(v89, v88);
      v90 = v89 - v88;
      if (v93)
      {
        goto LABEL_123;
      }

      v92 = *(v87 - 48);
      v91 = *(v87 - 40);
      v93 = __OFSUB__(v91, v92);
      v85 = v91 - v92;
      v86 = v93;
      if (v93)
      {
        goto LABEL_124;
      }

      v94 = &v40->super.super.super.super.isa + 2 * v80;
      v96 = *v94;
      v95 = v94[1];
      v93 = __OFSUB__(v95, v96);
      v97 = v95 - v96;
      if (v93)
      {
        goto LABEL_126;
      }

      v93 = __OFADD__(v85, v97);
      v98 = v85 + v97;
      if (v93)
      {
        goto LABEL_129;
      }

      if (v98 >= v90)
      {
        v116 = &v40->remoteCardFilter[16 * v82];
        v118 = *v116;
        v117 = *(v116 + 1);
        v93 = __OFSUB__(v117, v118);
        v119 = v117 - v118;
        if (v93)
        {
          goto LABEL_135;
        }

        if (v85 < v119)
        {
          v82 = v80 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

    if (v80 == 3)
    {
      v83 = *v40->remoteCardFilter;
      v84 = *&v40->remoteCardFilter[8];
      v93 = __OFSUB__(v84, v83);
      v85 = v84 - v83;
      v86 = v93;
LABEL_59:
      if (v86)
      {
        goto LABEL_125;
      }

      v99 = &v40->super.super.super.super.isa + 2 * v80;
      v101 = *v99;
      v100 = v99[1];
      v102 = __OFSUB__(v100, v101);
      v103 = v100 - v101;
      v104 = v102;
      if (v102)
      {
        goto LABEL_128;
      }

      v105 = &v40->remoteCardFilter[16 * v82];
      v107 = *v105;
      v106 = *(v105 + 1);
      v93 = __OFSUB__(v106, v107);
      v108 = v106 - v107;
      if (v93)
      {
        goto LABEL_131;
      }

      if (__OFADD__(v103, v108))
      {
        goto LABEL_132;
      }

      if (v103 + v108 >= v85)
      {
        if (v85 < v108)
        {
          v82 = v80 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_73;
    }

    v109 = &v40->super.super.super.super.isa + 2 * v80;
    v111 = *v109;
    v110 = v109[1];
    v93 = __OFSUB__(v110, v111);
    v103 = v110 - v111;
    v104 = v93;
LABEL_73:
    if (v104)
    {
      goto LABEL_127;
    }

    v112 = v40 + 16 * v82;
    v114 = *(v112 + 4);
    v113 = *(v112 + 5);
    v93 = __OFSUB__(v113, v114);
    v115 = v113 - v114;
    if (v93)
    {
      goto LABEL_130;
    }

    if (v115 < v103)
    {
      goto LABEL_90;
    }

LABEL_80:
    v120 = v82 - 1;
    if (v82 - 1 >= v80)
    {
      break;
    }

    if (!*v181)
    {
      goto LABEL_142;
    }

    v121 = *&v40->remoteCardFilter[16 * v120];
    v122 = *&v40->remoteCardFilter[16 * v82 + 8];
    sub_1000C8B64((*v181 + *(v180 + 72) * v121), (*v181 + *(v180 + 72) * *&v40->remoteCardFilter[16 * v82]), *v181 + *(v180 + 72) * v122, v42, v183, v41, a8, a8);
    if (v10)
    {
      goto LABEL_119;
    }

    if (v122 < v121)
    {
      goto LABEL_121;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = sub_1000C92DC(v40, v26, v27, v28, v29, v30, v31, v32);
    }

    if (v120 >= *&v40->hostAppBundleIdentifier[8])
    {
      goto LABEL_122;
    }

    v123 = v40 + 16 * v120;
    *(v123 + 4) = v121;
    *(v123 + 5) = v122;
    v185 = v40;
    sub_1000C9250(v82);
    v40 = v185;
    v80 = *&v185->hostAppBundleIdentifier[8];
    if (v80 <= 1)
    {
      goto LABEL_90;
    }
  }

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
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
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
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  v40 = sub_1000C92DC(v40, v26, v27, v28, v29, v30, v31, v32);
LABEL_106:
  v185 = v40;
  v140 = *&v40->hostAppBundleIdentifier[8];
  if (v140 < 2)
  {
    goto LABEL_119;
  }

  while (*v181)
  {
    v141 = *(&v40->super.super.super.super.isa + 2 * v140);
    v142 = *&v40->responder[16 * v140];
    sub_1000C8B64((*v181 + *(v180 + 72) * v141), (*v181 + *(v180 + 72) * *&v40->hostAppBundleIdentifier[16 * v140 + 8]), *v181 + *(v180 + 72) * v142, v42, v183, v41, a8, a8);
    if (v10)
    {
      goto LABEL_119;
    }

    if (v142 < v141)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = sub_1000C92DC(v40, v26, v27, v28, v29, v30, v31, v32);
    }

    if (v140 - 2 >= *&v40->hostAppBundleIdentifier[8])
    {
      goto LABEL_134;
    }

    v143 = &v40->super.super.super.super.isa + 2 * v140;
    *v143 = v141;
    v143[1] = v142;
    v185 = v40;
    sub_1000C9250(v140 - 1);
    v40 = v185;
    v140 = *&v185->hostAppBundleIdentifier[8];
    if (v140 <= 1)
    {
      goto LABEL_119;
    }
  }

LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
}

void sub_1000C856C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t, char *), uint64_t a6)
{
  v7 = v6;
  v59 = a6;
  v60 = a5;
  v58 = sub_10003C49C(&unk_100201EF0, &qword_100182338);
  __chkstk_darwin(v58);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v55 = &v49 - v15;
  __chkstk_darwin(v16);
  v18 = &v49 - v17;
  __chkstk_darwin(v19);
  v21 = &v49 - v20;
  v57 = *(v22 + 72);
  if (!v57)
  {
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v57 == -1)
  {
    goto LABEL_65;
  }

  v23 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v57 == -1)
  {
    goto LABEL_66;
  }

  v56 = a3;
  v24 = (a2 - a1) / v57;
  v63 = a1;
  v62 = a4;
  if (v24 >= v23 / v57)
  {
    v27 = v23 / v57 * v57;
    if (a4 < a2 || a2 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v28 = v55;
      v29 = a4;
    }

    else
    {
      v28 = v55;
      v29 = a4;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v35 = v29 + v27;
    if (v27 >= 1)
    {
      v36 = v56;
      v37 = -v57;
      v38 = v35;
      v51 = v13;
      v52 = a1;
      do
      {
        v49 = v35;
        v39 = a2;
        v53 = a2;
        v54 = a2 + v37;
        while (1)
        {
          if (v39 <= a1)
          {
            v63 = v39;
            v35 = v49;
            goto LABEL_62;
          }

          v42 = v36;
          v50 = v35;
          v56 = v38 + v37;
          v57 = v38;
          sub_1000CB048(v38 + v37, v28);
          sub_1000CB048(v54, v13);
          v43 = v60(v28, v13);
          if (v7)
          {
            sub_10003DD84(v13, &unk_100201EF0, &qword_100182338);
            sub_10003DD84(v28, &unk_100201EF0, &qword_100182338);
            v63 = v53;
            v35 = v50;
            goto LABEL_62;
          }

          v44 = v43;
          v55 = 0;
          v45 = v42 + v37;
          sub_10003DD84(v13, &unk_100201EF0, &qword_100182338);
          sub_10003DD84(v28, &unk_100201EF0, &qword_100182338);
          if (v44)
          {
            break;
          }

          v46 = v56;
          v35 = v56;
          v36 = v42 + v37;
          if (v42 < v57 || v45 >= v57)
          {
            v40 = v56;
            swift_arrayInitWithTakeFrontToBack();
            v35 = v40;
          }

          else if (v42 != v57)
          {
            v47 = v56;
            swift_arrayInitWithTakeBackToFront();
            v35 = v47;
          }

          v38 = v35;
          v41 = v46 > v29;
          v7 = v55;
          v13 = v51;
          a1 = v52;
          v39 = v53;
          if (!v41)
          {
            a2 = v53;
            goto LABEL_61;
          }
        }

        v36 = v42 + v37;
        if (v42 < v53 || v45 >= v53)
        {
          a2 = v54;
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          v48 = v42 == v53;
          a2 = v54;
          if (!v48)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v38 = v57;
        v7 = v55;
        v13 = v51;
        a1 = v52;
        v35 = v50;
      }

      while (v57 > v29);
    }

LABEL_61:
    v63 = a2;
LABEL_62:
    v61 = v35;
  }

  else
  {
    v25 = v24 * v57;
    v26 = a4;
    if (a4 < a1 || a1 + v25 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v55 = (a4 + v25);
    v61 = a4 + v25;
    if (v25 >= 1 && a2 < v56)
    {
      while (1)
      {
        sub_1000CB048(a2, v21);
        sub_1000CB048(v26, v18);
        v31 = v60(v21, v18);
        if (v6)
        {
          break;
        }

        v32 = v31;
        sub_10003DD84(v18, &unk_100201EF0, &qword_100182338);
        sub_10003DD84(v21, &unk_100201EF0, &qword_100182338);
        if (v32)
        {
          v33 = v57;
          if (a1 < a2 || a1 >= a2 + v57)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v33;
        }

        else
        {
          v33 = v57;
          v34 = v26 + v57;
          if (a1 < v26 || a1 >= v34)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v26)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v62 = v34;
          v26 += v33;
        }

        a1 += v33;
        v63 = a1;
        if (v26 >= v55 || a2 >= v56)
        {
          goto LABEL_63;
        }
      }

      sub_10003DD84(v18, &unk_100201EF0, &qword_100182338);
      sub_10003DD84(v21, &unk_100201EF0, &qword_100182338);
    }
  }

LABEL_63:
  sub_1000C92F0(&v63, &v62, &v61);
}

void sub_1000C8B64(char *a1, char *a2, unint64_t a3, char *a4, uint64_t (*a5)(char *, char *), uint64_t a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v10 = v8;
  v82 = a5;
  v79 = a4;
  v15 = a7(0);
  v81 = *(v15 - 8);
  __chkstk_darwin(v15);
  __chkstk_darwin(v16);
  v18 = &v68 - v17;
  __chkstk_darwin(v19);
  v21 = &v68 - v20;
  __chkstk_darwin(v22);
  v84 = &v68 - v24;
  v26 = *(v25 + 72);
  if (!v26)
  {
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (a2 - a1 == 0x8000000000000000 && v26 == -1)
  {
    goto LABEL_70;
  }

  v27 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v26 != -1)
  {
    v80 = a3;
    v28 = (a2 - a1) / v26;
    v88 = a1;
    v29 = v79;
    v87 = v79;
    v83 = v26;
    v70 = a8;
    if (v28 < v27 / v26)
    {
      v30 = v10;
      v31 = a2;
      v32 = v28 * v26;
      v78 = v21;
      if (v79 < a1 || &a1[v32] <= v79)
      {
        v33 = v15;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v33 = v15;
        if (v79 != a1)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v77 = v29 + v32;
      v85 = v30;
      v86 = v29 + v32;
      v35 = v31;
      v36 = v32 < 1 || v31 >= v80;
      v37 = v84;
      if (!v36)
      {
        v38 = *(v81 + 16);
        v81 += 16;
        v75 = v38;
        v76 = (v81 - 8);
        while (1)
        {
          v84 = v35;
          v39 = v75;
          (v75)(v37);
          v40 = v78;
          v39(v78, v29, v33);
          v41 = v85;
          v42 = v82(v37, v40);
          v85 = v41;
          if (v41)
          {
            v66 = *v76;
            (*v76)(v40, v33);
            v66(v37, v33);
            goto LABEL_65;
          }

          v43 = v42;
          v44 = v29;
          v45 = *v76;
          (*v76)(v40, v33);
          v45(v37, v33);
          if (v43)
          {
            v46 = v83;
            v47 = &v84[v83];
            v29 = v44;
            if (a1 < v84 || a1 >= v47)
            {
              swift_arrayInitWithTakeFrontToBack();
LABEL_32:
              v46 = v83;
            }

            else if (a1 != v84)
            {
              swift_arrayInitWithTakeBackToFront();
              goto LABEL_32;
            }

            v35 = v47;
            goto LABEL_37;
          }

          v46 = v83;
          v29 = &v44[v83];
          if (a1 < v44 || a1 >= v29)
          {
            break;
          }

          if (a1 != v44)
          {
            swift_arrayInitWithTakeBackToFront();
LABEL_35:
            v46 = v83;
          }

          v87 = v29;
          v35 = v84;
LABEL_37:
          a1 += v46;
          v88 = a1;
          if (v29 >= v77 || v35 >= v80)
          {
            goto LABEL_65;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        goto LABEL_35;
      }

      goto LABEL_65;
    }

    v34 = v27 / v26 * v26;
    v77 = v23;
    if (v79 < a2 || &a2[v34] <= v79)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v79 == a2)
      {
LABEL_42:
        v48 = v29 + v34;
        if (v34 >= 1)
        {
          v49 = -v26;
          v50 = v80;
          v74 = (v81 + 16);
          v75 = (v81 + 8);
          v51 = v48;
          v72 = a1;
          v73 = a6;
          v71 = -v26;
          do
          {
            v78 = v48;
            v69 = v48;
            v52 = &a2[v49];
            v84 = &a2[v49];
            v76 = a2;
            while (1)
            {
              v85 = v10;
              if (a2 <= a1)
              {
                v88 = a2;
                v48 = v69;
                goto LABEL_67;
              }

              v81 = v50;
              v83 = v51;
              v54 = *v74;
              v80 = v51 + v49;
              v55 = v15;
              v56 = v49;
              v54(v18);
              v57 = v77;
              (v54)(v77, v52, v55);
              v58 = v85;
              v59 = v82(v18, v57);
              if (v58)
              {
                v67 = *v75;
                (*v75)(v57, v55);
                v67(v18, v55);
                v88 = v76;
                v86 = v78;
                goto LABEL_65;
              }

              v60 = v59;
              v85 = 0;
              v61 = v81;
              v62 = v81 + v56;
              v63 = *v75;
              (*v75)(v57, v55);
              v15 = v55;
              v63(v18, v55);
              if (v60)
              {
                break;
              }

              v64 = v80;
              v65 = v80;
              v50 = v62;
              if (v61 < v83 || v62 >= v83)
              {
                swift_arrayInitWithTakeFrontToBack();
                v52 = v84;
              }

              else
              {
                v52 = v84;
                if (v61 != v83)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v78 = v65;
              v51 = v65;
              v53 = v64 > v79;
              v10 = v85;
              a1 = v72;
              v49 = v71;
              a2 = v76;
              if (!v53)
              {
                v48 = v78;
                goto LABEL_66;
              }
            }

            v50 = v62;
            if (v61 < v76 || v62 >= v76)
            {
              a2 = v84;
              swift_arrayInitWithTakeFrontToBack();
            }

            else
            {
              a2 = v84;
              if (v61 != v76)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v48 = v78;
            v51 = v83;
            v10 = v85;
            a1 = v72;
            v49 = v71;
          }

          while (v83 > v79);
        }

LABEL_66:
        v85 = v10;
        v88 = a2;
LABEL_67:
        v86 = v48;
LABEL_65:
        sub_1000C93E0(&v88, &v87, &v86, v70);
        return;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v26 = v83;
    goto LABEL_42;
  }

LABEL_71:
  __break(1u);
}

uint64_t sub_1000C9250(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000C92DC(v3, v5, v6, v7, v8, v9, v10, v11);
    v3 = result;
  }

  v12 = *(v3 + 16);
  if (v12 <= a1)
  {
    __break(1u);
  }

  else
  {
    v13 = v12 - 1;
    v14 = v3 + 16 * a1;
    v15 = *(v14 + 32);
    memmove((v14 + 32), (v14 + 48), 16 * (v12 - 1 - a1));
    *(v3 + 16) = v13;
    *v1 = v3;
    return v15;
  }

  return result;
}

uint64_t sub_1000C92F0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_10003C49C(&unk_100201EF0, &qword_100182338);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1000C93E0(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

DARootViewController *sub_1000C94C8(DARootViewController *result, int64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 24);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 16);
  if (v11 <= v12)
  {
    v13 = *(a4 + 16);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_10003C49C(&qword_1001FFE88, &qword_1001824E8);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    *&v14->hostAppBundleIdentifier[8] = v12;
    *v14->responder = 2 * (v16 >> 4);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  remoteCardFilter = v14->remoteCardFilter;
  v18 = (a4 + 32);
  if (v9)
  {
    if (v14 != a4 || remoteCardFilter >= &v18[16 * v12])
    {
      memmove(remoteCardFilter, v18, 16 * v12);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(remoteCardFilter, v18, 16 * v12);
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

void *sub_1000C95CC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  __CocoaSet.makeIterator()();
  sub_10003E110(0, &qword_100202990, NSError_ptr);
  sub_1000CB328();
  result = Set.Iterator.init(_cocoa:)();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_30;
      }

      sub_10003E110(0, &qword_100202990, NSError_ptr);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void *sub_1000C97E8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_1000C9940(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for TargetDevice.DeviceType();
  v42 = *(v40 - 8);
  __chkstk_darwin(v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_1000C9BE4(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v6;
  if (v2 == v5 && v4 == v6)
  {
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v4, v6, v7, v8, v9, v10, v11, v12;
  v13, v16, v17, v18, v19, v20, v21, v22;
  return v15 & 1;
}

uint64_t sub_1000C9C74(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v3 = type metadata accessor for TargetDevice.DeviceType();
  v29 = *(v3 - 8);
  __chkstk_darwin(v3);
  v28 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TargetDevice();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DeviceSelector.DataSourceItemState(0);
  __chkstk_darwin(v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  v15 = sub_10003C49C(&qword_1001FFDE0, &qword_100182470);
  __chkstk_darwin(v15 - 8);
  v17 = &v27 - v16;
  v19 = *(v18 + 56);
  sub_1000C5A04(a1, &v27 - v16);
  sub_1000C5A04(v30, &v17[v19]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000C5A04(v17, v11);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = v29;
      v21 = &v17[v19];
      v22 = v28;
      (*(v29 + 32))(v28, v21, v3);
      sub_1000C5A68(&qword_1001FFDE8, &type metadata accessor for TargetDevice.DeviceType, &protocol conformance descriptor for TargetDevice.DeviceType);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v23 = *(v20 + 8);
      v23(v22, v3);
      v24 = v32 == v31;
      v23(v11, v3);
LABEL_9:
      sub_1000CA060(v17);
      return v24 & 1;
    }

    (*(v29 + 8))(v11, v3);
  }

  else
  {
    sub_1000C5A04(v17, v14);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v6 + 32))(v8, &v17[v19], v5);
      v24 = static TargetDevice.== infix(_:_:)();
      v25 = *(v6 + 8);
      v25(v8, v5);
      v25(v14, v5);
      goto LABEL_9;
    }

    (*(v6 + 8))(v14, v5);
  }

  sub_10003DD84(v17, &qword_1001FFDE0, &qword_100182470);
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_1000CA060(uint64_t a1)
{
  v2 = type metadata accessor for DeviceSelector.DataSourceItemState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000CA0BC()
{
  v0 = sub_10003C49C(&unk_1001FFDF0, &unk_100182478);
  __chkstk_darwin(v0 - 8);
  v2 = &v47 - v1;
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  if (SessionManager.currentSession.getter())
  {
    v3 = Session.targetedDeviceTypes.getter();
    v4 = *(v3 + 16);
    v3, v5, v6, v7, v8, v9, v10, v11;
    if (v4 < 2)
    {
      v13 = Session.targetedDeviceTypes.getter();
      sub_1001255F8(v13, v2);
      v13, v14, v15, v16, v17, v18, v19, v20;
      v21 = type metadata accessor for TargetDevice.DeviceType();
      v22 = *(v21 - 8);
      if ((*(v22 + 48))(v2, 1, v21) == 1)
      {
        sub_10003DD84(v2, &unk_1001FFDF0, &unk_100182478);

        v12 = 0;
      }

      else
      {
        v23 = sub_1000BDC64();

        (*(v22 + 8))(v2, v21);
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;
        if (v25 == v28 && v27 == v29)
        {
          v12 = 1;
        }

        else
        {
          v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v27, v32, v33, v34, v35, v36, v37, v38;
        v30, v39, v40, v41, v42, v43, v44, v45;
      }
    }

    else
    {

      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

unint64_t sub_1000CA2EC()
{
  result = qword_1001FFE08;
  if (!qword_1001FFE08)
  {
    sub_10003C4E4(&qword_1001FFE00, &qword_100182488);
    sub_1000C5A68(&qword_1001FCD20, type metadata accessor for ELSPlatform, &unk_10017E9B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FFE08);
  }

  return result;
}

uint64_t sub_1000CA3A0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7, v1);
}

uint64_t sub_1000CA3E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10003DEC8;

  return sub_1000C45CC(a1, v4, v5, v7, v6);
}

uint64_t sub_1000CA4A8()
{

  return _swift_deallocObject(v0, 24, 7, v1);
}

uint64_t sub_1000CA578(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceSelector.DataSourceItemState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1000CA5DC(uint64_t a1)
{
  v2 = type metadata accessor for TargetDevice.DeviceType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for TargetDevice();
  v6 = *(v54 - 8);
  __chkstk_darwin(v54);
  v51 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v53 = &v39 - v9;
  v10 = _swiftEmptyDictionarySingleton;
  v55 = _swiftEmptyDictionarySingleton;
  v11 = *(a1 + 16);
  if (!v11)
  {
    return v10;
  }

  v13 = *(v6 + 16);
  v12 = v6 + 16;
  v14 = *(v12 + 64);
  v15 = *(v12 + 56);
  v49 = (v14 + 32) & ~v14;
  v50 = v13;
  v16 = a1 + v49;
  v52 = (v12 + 16);
  v42 = v3 + 32;
  v43 = v14;
  v41 = (v3 + 8);
  v40 = xmmword_10017EC00;
  v45 = v3;
  v46 = v2;
  v17 = v2;
  v47 = v5;
  v48 = v15;
  v44 = v12;
  v13(v53, a1 + v49, v54);
  while (1)
  {
    TargetDevice.deviceType.getter();
    v20 = sub_100064D40(v5);
    v21 = v10[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      break;
    }

    v24 = v19;
    if (v10[3] < v23)
    {
      sub_100140F7C(v23, 1);
      v10 = v55;
      v25 = sub_100064D40(v5);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_20;
      }

      v20 = v25;
    }

    if (v24)
    {
      (*v41)(v5, v17);
      v27 = v10[7];
      v28 = *v52;
      (*v52)(v51, v53, v54);
      v29 = *(v27 + 8 * v20);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v27 + 8 * v20) = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = sub_1000D50E4(0, *&v29->hostAppBundleIdentifier[8] + 1, 1, v29);
        *(v27 + 8 * v20) = v29;
      }

      v32 = *&v29->hostAppBundleIdentifier[8];
      v31 = *v29->responder;
      if (v32 >= v31 >> 1)
      {
        v29 = sub_1000D50E4((v31 > 1), v32 + 1, 1, v29);
        *(v27 + 8 * v20) = v29;
      }

      *&v29->hostAppBundleIdentifier[8] = v32 + 1;
      v5 = v47;
      v18 = v48;
      v28(v29 + v49 + v32 * v48, v51, v54);
      v17 = v46;
    }

    else
    {
      sub_10003C49C(&unk_1001FFE90, &qword_1001824F0);
      v33 = v49;
      v34 = swift_allocObject();
      *(v34 + 16) = v40;
      (*v52)((v34 + v33), v53, v54);
      v10[(v20 >> 6) + 8] |= 1 << v20;
      (*(v45 + 32))(v10[6] + *(v45 + 72) * v20, v5, v17);
      *(v10[7] + 8 * v20) = v34;
      v35 = v10[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_19;
      }

      v10[2] = v37;
      v18 = v48;
    }

    v16 += v18;
    if (!--v11)
    {
      return v10;
    }

    v50(v53, v16, v54);
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1000CA9EC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a4;
  v34 = a2;
  v35 = a1;
  v42 = type metadata accessor for TargetDevice.DeviceType();
  v6 = __chkstk_darwin(v42);
  v40 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v5;
  v36 = 0;
  v8 = 0;
  v44 = a3;
  v11 = *(a3 + 56);
  v10 = a3 + 56;
  v9 = v11;
  v12 = 1 << *(v10 - 24);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v38 = v5 + 8;
  v39 = v5 + 16;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v45 = (v14 - 1) & v14;
LABEL_11:
    v19 = v16 | (v8 << 6);
    v20 = *(v44 + 48);
    v21 = v40;
    v22 = v41;
    v23 = *(v41 + 72);
    v37 = v19;
    v24 = v42;
    (*(v41 + 16))(v40, v20 + v23 * v19, v42, v6);
    v25 = sub_1000BDC64();
    v27 = v26;

    v47 = v27;
    __chkstk_darwin(v28);
    *(&v33 - 2) = &v47;
    v29 = v46;
    v30 = sub_100075550(sub_1000CB3B0, (&v33 - 4), v43);
    v46 = v29;

    (*(v22 + 8))(v21, v24);
    v14 = v45;
    if (v30)
    {
      *(v35 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
      if (__OFADD__(v36++, 1))
      {
        __break(1u);
LABEL_15:
        v32 = v44;

        sub_10012AC48(v35, v34, v36, v32);
        return;
      }
    }
  }

  v17 = v8;
  while (1)
  {
    v8 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v8 >= v15)
    {
      goto LABEL_15;
    }

    v18 = *(v10 + 8 * v8);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v45 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1000CAC78(uint64_t a1, DARootViewController *a2)
{
  v3 = v2;
  v55 = type metadata accessor for TargetDevice.DeviceType();
  v6 = *(v55 - 8);
  __chkstk_darwin(v55);
  v54 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v7) = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  v57 = a2;

  if (v8 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v59 = v3;
    v47[1] = v47;
    v48 = v9;
    __chkstk_darwin(v11);
    v49 = v47 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v49, v10);
    v50 = 0;
    v51 = v6;
    v9 = 0;
    v56 = a1;
    v13 = *(a1 + 56);
    a1 += 56;
    v12 = v13;
    v14 = 1 << *(a1 - 24);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & v12;
    v17 = (v14 + 63) >> 6;
    v52 = v6 + 8;
    v53 = v6 + 16;
    while (v16)
    {
      v18 = __clz(__rbit64(v16));
      v58 = (v16 - 1) & v16;
LABEL_12:
      v21 = v55;
      v3 = v18 | (v9 << 6);
      v22 = v54;
      (*(v6 + 16))(v54, *(v56 + 48) + *(v6 + 72) * v3, v55);
      v23 = sub_1000BDC64();
      v25 = v24;

      v60 = v25;
      __chkstk_darwin(v26);
      v47[-2] = &v60;
      v27 = v59;
      v10 = sub_100075550(sub_1000CB028, &v47[-4], v57);
      v59 = v27;

      v6 = v51;
      (*(v51 + 8))(v22, v21);
      v16 = v58;
      if (v10)
      {
        *&v49[(v3 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v3;
        if (__OFADD__(v50++, 1))
        {
          __break(1u);
LABEL_16:
          v29 = sub_10012AC48(v49, v48, v50, v56);
          v57, v30, v31, v32, v33, v34, v35, v36;
          return v29;
        }
      }
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v9 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(a1 + 8 * v9);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v58 = (v20 - 1) & v20;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v38 = swift_slowAlloc();
  v39 = v57;

  v29 = sub_1000C6368(v38, v9, a1, v39);

  v39, v40, v41, v42, v43, v44, v45, v46;
  return v29;
}

uint64_t sub_1000CB048(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&unk_100201EF0, &qword_100182338);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CB0B8()
{

  return _swift_deallocObject(v0, 32, 7, v1);
}

double sub_1000CB100(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000CB120()
{
  *(v0 + 24), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 32, 7, v8);
}

void sub_1000CB1B0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10003C49C(&qword_1001FFE18, &qword_100182498);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - v6;
  v8 = OBJC_IVAR____TtC11Diagnostics14DeviceSelector_dataSource;
  v9 = *(v1 + OBJC_IVAR____TtC11Diagnostics14DeviceSelector_dataSource);
  if (!v9)
  {
    __break(1u);
    goto LABEL_6;
  }

  v10 = v9;
  dispatch thunk of UITableViewDiffableDataSource.snapshot()();

  sub_1000C2404(v7, v2, a1);
  v11 = *(v2 + v8);
  if (!v11)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v12 = v11;
  dispatch thunk of UITableViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

  (*(v5 + 8))(v7, v4);
  v13 = *(v2 + OBJC_IVAR____TtC11Diagnostics14DeviceSelector_continueButton);
  if (v13)
  {
    v14 = v13;
    [v14 setEnabled:sub_1000C19B0() & 1];

    return;
  }

LABEL_7:
  __break(1u);
}

unint64_t sub_1000CB328()
{
  result = qword_1001FFED0;
  if (!qword_1001FFED0)
  {
    sub_10003E110(255, &qword_100202990, NSError_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FFED0);
  }

  return result;
}

void sub_1000CB3D4()
{
  v1 = v0;
  v2 = type metadata accessor for TargetDevice.Status();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TargetDevice();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10003C49C(&qword_1001FFE10, qword_100181340);
  __chkstk_darwin(v9 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v28 - v13;
  v15 = *(v0 + OBJC_IVAR____TtC11Diagnostics18DeviceSelectorCell_targetDeviceView);
  if (v15)
  {
    v16 = OBJC_IVAR____TtC11Diagnostics18DeviceSelectorCell_device;
    swift_beginAccess();
    sub_10008CEAC(v1 + v16, v14);
    v29 = v6;
    v17 = v7;
    v18 = v5;
    v19 = v3;
    v20 = v2;
    v21 = OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_device;
    swift_beginAccess();
    sub_10008CEAC(v15 + v21, v11);
    swift_beginAccess();
    v22 = v15;
    v23 = v15 + v21;
    v2 = v20;
    v3 = v19;
    v5 = v18;
    v7 = v17;
    v6 = v29;
    sub_10008CF1C(v14, v23);
    swift_endAccess();
    sub_100122594(v11);

    sub_10008CF8C(v11);
    sub_10008CF8C(v14);
  }

  v24 = OBJC_IVAR____TtC11Diagnostics18DeviceSelectorCell_device;
  swift_beginAccess();
  v25 = 1;
  if (!(*(v7 + 48))(v1 + v24, 1, v6))
  {
    v26 = v30;
    (*(v7 + 16))(v30, v1 + v24, v6);
    TargetDevice.status.getter();
    (*(v7 + 8))(v26, v6);
    v27 = (*(v3 + 88))(v5, v2);
    if (v27 == enum case for TargetDevice.Status.ready(_:))
    {
      v25 = 0;
    }

    else
    {
      v25 = 1;
      if (v27 != enum case for TargetDevice.Status.waiting(_:) && v27 != enum case for TargetDevice.Status.unavailable(_:) && v27 != enum case for TargetDevice.Status.unsupported(_:))
      {
        (*(v3 + 8))(v5, v2);
      }
    }
  }

  sub_1000CB850(v25);
}

void sub_1000CB850(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11Diagnostics18DeviceSelectorCell_isDisabled);
  *(v1 + OBJC_IVAR____TtC11Diagnostics18DeviceSelectorCell_isDisabled) = a1;
  if (v2 != (a1 & 1))
  {
    v3 = *(v1 + OBJC_IVAR____TtC11Diagnostics18DeviceSelectorCell_targetDeviceView);
    if (v3)
    {
      if (a1)
      {
        v4 = qword_1001FC768;
        v5 = v3;
        if (v4 != -1)
        {
          swift_once();
        }

        v6 = &xmmword_10020A438;
      }

      else
      {
        v7 = qword_1001FC760;
        v8 = v3;
        if (v7 != -1)
        {
          swift_once();
        }

        v6 = &xmmword_10020A3F0;
      }

      *&v27[32] = *(v6 + 8);
      v9 = v6[3];
      *v27 = v6[2];
      *&v27[16] = v9;
      v10 = v6[1];
      v25 = *v6;
      v26 = v10;
      v20 = *&v27[8];
      v21 = *&v27[24];
      v11 = *v27;
      v18 = v25;
      v19 = v10;
      sub_1000CC778(&v25, v23);
      v23[0] = v18;
      v23[1] = v19;
      *v24 = v11;
      *&v24[24] = v21;
      *&v24[8] = v20;
      v12 = &v3[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_configuration];
      v25 = *&v3[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_configuration];
      v13 = *&v3[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_configuration + 16];
      v14 = *&v3[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_configuration + 32];
      v15 = *&v3[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_configuration + 48];
      *&v27[32] = *&v3[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_configuration + 64];
      *v27 = v14;
      *&v27[16] = v15;
      v26 = v13;
      v16 = *v24;
      v17 = *&v24[16];
      *(v12 + 8) = *(&v21 + 1);
      *(v12 + 2) = v16;
      *(v12 + 3) = v17;
      *v12 = v23[0];
      *(v12 + 1) = v19;
      sub_1000CC778(v23, v22);
      sub_1000CC900(&v25);
      sub_100122E00();
      sub_1000CC900(v23);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1000CB9F4()
{
  v1 = v0;
  [v0 setSelectionStyle:0];
  v2 = [objc_opt_self() systemGroupedBackgroundColor];
  [v1 setBackgroundColor:v2];

  if (qword_1001FC760 != -1)
  {
    swift_once();
  }

  v18 = unk_10020A420;
  v19 = qword_10020A430;
  v16 = *&qword_10020A400;
  v17 = xmmword_10020A410;
  v15 = xmmword_10020A3F0;
  v3 = type metadata accessor for TargetDeviceDescriptionView(0);
  v4 = objc_allocWithZone(v3);
  v5 = OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_device;
  v6 = type metadata accessor for TargetDevice();
  (*(*(v6 - 8) + 56))(&v4[v5], 1, 1, v6);
  *&v4[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_stackView] = 0;
  *&v4[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_detailsStackView] = 0;
  *&v4[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_deviceImageView] = 0;
  v7 = &v4[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_configuration];
  *v7 = v15;
  v8 = v16;
  v9 = v17;
  v10 = v18;
  *(v7 + 8) = v19;
  *(v7 + 2) = v9;
  *(v7 + 3) = v10;
  *(v7 + 1) = v8;
  sub_1000CC778(&v15, v14);
  sub_1000CC778(&v15, v14);
  v13.receiver = v4;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1001229B0();
  if (*&v11[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_stackView])
  {
    [v11 addSubview:?];
    sub_100122AFC();
    sub_100122E00();
    sub_1000CC900(&v15);

    v12 = *&v1[OBJC_IVAR____TtC11Diagnostics18DeviceSelectorCell_targetDeviceView];
    *&v1[OBJC_IVAR____TtC11Diagnostics18DeviceSelectorCell_targetDeviceView] = v11;
  }

  else
  {
    __break(1u);
  }
}

void sub_1000CBC28()
{
  v1 = [v0 contentView];
  if (*&v0[OBJC_IVAR____TtC11Diagnostics18DeviceSelectorCell_targetDeviceView])
  {
    v2 = v1;
    [v1 addSubview:?];
  }

  else
  {
    __break(1u);
  }
}

void sub_1000CBC94()
{
  v1 = OBJC_IVAR____TtC11Diagnostics18DeviceSelectorCell_targetDeviceView;
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics18DeviceSelectorCell_targetDeviceView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10017ED60;
  v4 = *&v0[v1];
  if (!v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = [v4 leadingAnchor];
  v6 = [v0 contentView];
  v7 = [v6 leadingAnchor];

  v8 = [v5 constraintEqualToAnchor:v7];
  *(v3 + 32) = v8;
  v9 = *&v0[v1];
  if (!v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = [v9 trailingAnchor];
  v11 = [v0 contentView];
  v12 = [v11 trailingAnchor];

  v13 = [v10 constraintEqualToAnchor:v12];
  *(v3 + 40) = v13;
  v14 = *&v0[v1];
  if (!v14)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = [v14 topAnchor];
  v16 = [v0 contentView];
  v17 = [v16 topAnchor];

  v18 = [v15 constraintEqualToAnchor:v17];
  *(v3 + 48) = v18;
  v19 = *&v0[v1];
  if (!v19)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v20 = objc_opt_self();
  v21 = [v19 heightAnchor];
  v22 = [v0 contentView];
  v23 = [v22 heightAnchor];

  v24 = [v21 constraintEqualToAnchor:v23];
  *(v3 + 56) = v24;
  sub_10007E540();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v3, v25, v26, v27, v28, v29, v30, v31;
  [v20 activateConstraints:isa];
}

void sub_1000CBF78()
{
  v1 = sub_10003C49C(&qword_1001FFE10, qword_100181340);
  __chkstk_darwin(v1 - 8);
  v3 = &v15[-v2 - 8];
  v4 = type metadata accessor for DeviceSelectorCell(0);
  v20.receiver = v0;
  v20.super_class = v4;
  objc_msgSendSuper2(&v20, "prepareForReuse");
  v5 = type metadata accessor for TargetDevice();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = OBJC_IVAR____TtC11Diagnostics18DeviceSelectorCell_device;
  swift_beginAccess();
  sub_10008CF1C(v3, &v0[v6]);
  swift_endAccess();
  sub_1000CB3D4();
  sub_10008CF8C(v3);
  [v0 setSelected:0];
  v7 = v0[OBJC_IVAR____TtC11Diagnostics18DeviceSelectorCell_isDisabled];
  v0[OBJC_IVAR____TtC11Diagnostics18DeviceSelectorCell_isDisabled] = 0;
  if (v7 == 1)
  {
    v8 = *&v0[OBJC_IVAR____TtC11Diagnostics18DeviceSelectorCell_targetDeviceView];
    if (v8)
    {
      v9 = qword_1001FC760;
      v10 = v8;
      if (v9 != -1)
      {
        swift_once();
      }

      v16[2] = xmmword_10020A410;
      v16[3] = unk_10020A420;
      v17 = qword_10020A430;
      v16[0] = xmmword_10020A3F0;
      v16[1] = *&qword_10020A400;
      v12 = *&v10[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_configuration + 32];
      v11 = *&v10[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_configuration + 48];
      v13 = *&v10[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_configuration + 16];
      v19 = *&v10[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_configuration + 64];
      v18[2] = v12;
      v18[3] = v11;
      v18[1] = v13;
      v18[0] = *&v10[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_configuration];
      memmove(&v10[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_configuration], &xmmword_10020A3F0, 0x48uLL);
      sub_1000CC778(v16, v15);
      sub_1000CC900(v18);
      sub_100122E00();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1000CC3AC()
{
  sub_10008CF8C(v0 + OBJC_IVAR____TtC11Diagnostics18DeviceSelectorCell_device);
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics18DeviceSelectorCell_targetDeviceView);
}

id sub_1000CC3EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceSelectorCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DeviceSelectorCell(uint64_t a1)
{
  result = qword_1001FFF08;
  if (!qword_1001FFF08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000CC4C4(uint64_t a1)
{
  sub_1000CC568(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000CC568(uint64_t a1)
{
  if (!qword_100201EB0)
  {
    type metadata accessor for TargetDevice();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100201EB0);
    }
  }
}

double sub_1000CC5C0()
{
  sub_10014FFA0(&off_1001BDD20);
  v1 = v0;
  v2 = objc_opt_self();
  v3 = UIFontTextStyleHeadline;
  v4 = [v2 preferredFontForTextStyle:v3];

  v5 = [v4 fontDescriptor];
  v6 = [v5 fontDescriptorWithSymbolicTraits:2];

  if (!v6)
  {
    v6 = [v4 fontDescriptor];
  }

  [v4 pointSize];
  v7 = [v2 fontWithDescriptor:v6 size:?];

  v8 = objc_opt_self();
  v9 = [v8 labelColor];
  v10 = UIFontTextStyleBody;
  v11 = [v2 preferredFontForTextStyle:v10];

  v12 = [v8 labelColor];
  *&xmmword_10020A3F0 = v1;
  *(&xmmword_10020A3F0 + 1) = v7;
  qword_10020A400 = v9;
  unk_10020A408 = v11;
  *&xmmword_10020A410 = v12;
  *(&xmmword_10020A410 + 8) = xmmword_100182510;
  result = 1.0;
  unk_10020A428 = xmmword_100182520;
  return result;
}

double sub_1000CC7D4()
{
  sub_10014FFA0(&off_1001BDCF8);
  v1 = v0;
  v2 = objc_opt_self();
  v3 = UIFontTextStyleHeadline;
  v4 = [v2 preferredFontForTextStyle:v3];

  v5 = objc_opt_self();
  v6 = [v5 secondaryLabelColor];
  v7 = UIFontTextStyleSubheadline;
  v8 = [v2 preferredFontForTextStyle:v7];

  v9 = [v5 tertiaryLabelColor];
  *&xmmword_10020A438 = v1;
  *(&xmmword_10020A438 + 1) = v4;
  qword_10020A448 = v6;
  unk_10020A450 = v8;
  *&xmmword_10020A458 = v9;
  *(&xmmword_10020A458 + 8) = xmmword_100182530;
  result = 0.6;
  unk_10020A470 = xmmword_100182540;
  return result;
}

id sub_1000CC954()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = objc_opt_self();
  v2 = [v1 preferredFontForTextStyle:UIFontTextStyleBody];
  v3 = [v2 fontDescriptor];
  v4 = [v3 fontDescriptorWithSymbolicTraits:2];

  if (v4)
  {
    v5 = [v1 fontWithDescriptor:v4 size:0.0];

    v2 = v5;
  }

  [v0 setFont:v2];
  [v0 setNumberOfLines:0];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setAdjustsFontForContentSizeCategory:1];

  return v0;
}

unint64_t sub_1000CCA94()
{
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics16BaseProgressView_progressView);
  v2 = [v1 layer];
  [v2 setCornerRadius:2.5];

  [v1 setClipsToBounds:1];
  v3 = [v1 layer];
  v4 = [v3 sublayers];

  if (!v4)
  {
    goto LABEL_10;
  }

  sub_10003E110(0, &qword_1001FFF80, CALayer_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    goto LABEL_23;
  }

  result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (result <= 1)
  {
    v5, v6, v7, v8, v9, v10, v11, v12;
    while (1)
    {
LABEL_10:
      v23 = [v1 subviews];
      sub_10003E110(0, &qword_1001FF090, UIView_ptr);
      v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!(v5 >> 62))
      {
        v31 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_12;
      }

      v31 = _CocoaArrayWrapper.endIndex.getter();
      if ((v31 & 0x8000000000000000) != 0)
      {
        break;
      }

LABEL_12:
      if (v31 <= 1)
      {
        v5, v24, v25, v26, v27, v28, v29, v30;
        goto LABEL_18;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        goto LABEL_25;
      }

      if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
      {
        v32 = *(v5 + 40);
        goto LABEL_16;
      }

      __break(1u);
LABEL_27:
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:
      v22 = v14;
      v5, v15, v16, v17, v18, v19, v20, v21;
      [v22 setCornerRadius:2.5];
    }

    __break(1u);
LABEL_23:
    result = _CocoaArrayWrapper.endIndex.getter();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_25:
      v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_16:
      v40 = v32;
      v5, v33, v34, v35, v36, v37, v38, v39;
      [v40 setClipsToBounds:1];

LABEL_18:
      [*(v0 + OBJC_IVAR____TtC11Diagnostics16BaseProgressView_titleLabel) setTranslatesAutoresizingMaskIntoConstraints:0];
      [*(v0 + OBJC_IVAR____TtC11Diagnostics16BaseProgressView_subtitleLabel) setTranslatesAutoresizingMaskIntoConstraints:0];

      return [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
    }
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
    goto LABEL_27;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v14 = *(v5 + 40);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

id sub_1000CCD2C()
{
  [v0 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics16BaseProgressView_titleLabel]];
  [v0 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics16BaseProgressView_progressView]];
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics16BaseProgressView_subtitleLabel];

  return [v0 addSubview:v1];
}

void sub_1000CCDA0()
{
  v41 = objc_opt_self();
  sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1001823C0;
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics16BaseProgressView_progressView];
  v3 = [v2 centerYAnchor];
  v4 = [v0 centerYAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];

  *(v1 + 32) = v5;
  v6 = [v2 leadingAnchor];
  v7 = [v0 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];

  *(v1 + 40) = v8;
  v9 = [v2 trailingAnchor];
  v10 = [v0 trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  *(v1 + 48) = v11;
  v12 = [v2 heightAnchor];
  v13 = [v12 constraintEqualToConstant:5.0];

  *(v1 + 56) = v13;
  v14 = OBJC_IVAR____TtC11Diagnostics16BaseProgressView_titleLabel;
  v15 = [*&v0[OBJC_IVAR____TtC11Diagnostics16BaseProgressView_titleLabel] leadingAnchor];
  v16 = [v2 leadingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  *(v1 + 64) = v17;
  v18 = [*&v0[v14] trailingAnchor];
  v19 = [v2 trailingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(v1 + 72) = v20;
  v21 = [*&v0[v14] bottomAnchor];
  v22 = [v2 topAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:-8.0];

  *(v1 + 80) = v23;
  v24 = OBJC_IVAR____TtC11Diagnostics16BaseProgressView_subtitleLabel;
  v25 = [*&v0[OBJC_IVAR____TtC11Diagnostics16BaseProgressView_subtitleLabel] topAnchor];
  v26 = [v2 bottomAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:8.0];

  *(v1 + 88) = v27;
  v28 = [*&v0[v24] leadingAnchor];
  v29 = [v2 leadingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];

  *(v1 + 96) = v30;
  v31 = [*&v0[v24] trailingAnchor];
  v32 = [v2 trailingAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];

  *(v1 + 104) = v33;
  sub_10003E110(0, &qword_1001FD550, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v1, v34, v35, v36, v37, v38, v39, v40;
  [v41 activateConstraints:isa];
}

id sub_1000CD234(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC11Diagnostics16BaseProgressView_textSpacing] = 0x4020000000000000;
  *&v4[OBJC_IVAR____TtC11Diagnostics16BaseProgressView_progressViewHeight] = 0x4014000000000000;
  v9 = OBJC_IVAR____TtC11Diagnostics16BaseProgressView_progressView;
  type metadata accessor for FluidProgressView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC11Diagnostics16BaseProgressView_progress] = 0;
  v10 = OBJC_IVAR____TtC11Diagnostics16BaseProgressView_titleLabel;
  *&v4[v10] = sub_1000CC954();
  v11 = &v4[OBJC_IVAR____TtC11Diagnostics16BaseProgressView_titleText];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = OBJC_IVAR____TtC11Diagnostics16BaseProgressView_subtitleLabel;
  v13 = [objc_allocWithZone(UILabel) init];
  v14 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption1];
  [v13 setFont:v14];

  [v13 setNumberOfLines:0];
  [v13 setTextAlignment:1];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v13 setAdjustsFontForContentSizeCategory:1];
  *&v4[v12] = v13;
  v15 = &v4[OBJC_IVAR____TtC11Diagnostics16BaseProgressView_subtitleText];
  v16 = type metadata accessor for BaseProgressView();
  *v15 = 0;
  *(v15 + 1) = 0;
  v18.receiver = v4;
  v18.super_class = v16;
  return objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
}

id sub_1000CD40C(void *a1)
{
  *&v1[OBJC_IVAR____TtC11Diagnostics16BaseProgressView_textSpacing] = 0x4020000000000000;
  *&v1[OBJC_IVAR____TtC11Diagnostics16BaseProgressView_progressViewHeight] = 0x4014000000000000;
  v3 = OBJC_IVAR____TtC11Diagnostics16BaseProgressView_progressView;
  type metadata accessor for FluidProgressView();
  *&v1[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v1[OBJC_IVAR____TtC11Diagnostics16BaseProgressView_progress] = 0;
  v4 = OBJC_IVAR____TtC11Diagnostics16BaseProgressView_titleLabel;
  *&v1[v4] = sub_1000CC954();
  v5 = &v1[OBJC_IVAR____TtC11Diagnostics16BaseProgressView_titleText];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = OBJC_IVAR____TtC11Diagnostics16BaseProgressView_subtitleLabel;
  v7 = [objc_allocWithZone(UILabel) init];
  v8 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption1];
  [v7 setFont:v8];

  [v7 setNumberOfLines:0];
  [v7 setTextAlignment:1];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setAdjustsFontForContentSizeCategory:1];
  *&v1[v6] = v7;
  v9 = &v1[OBJC_IVAR____TtC11Diagnostics16BaseProgressView_subtitleText];
  v10 = type metadata accessor for BaseProgressView();
  *v9 = 0;
  *(v9 + 1) = 0;
  v13.receiver = v1;
  v13.super_class = v10;
  v11 = objc_msgSendSuper2(&v13, "initWithCoder:", a1);

  if (v11)
  {
  }

  return v11;
}

void sub_1000CD5E4()
{
  *(v0 + OBJC_IVAR____TtC11Diagnostics16BaseProgressView_titleText + 8), v1, v2, v3, v4, v5, v6, v7;

  v15 = *(v0 + OBJC_IVAR____TtC11Diagnostics16BaseProgressView_subtitleText + 8);

  v15, v8, v9, v10, v11, v12, v13, v14;
}

id sub_1000CD65C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BaseProgressView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

__n128 sub_1000CD738(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1000CD754(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000CD79C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1000CD818@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = static VerticalAlignment.center.getter();
  LOBYTE(v29[0]) = 0;
  sub_1000CDA5C(v2, __src);
  memcpy(__dst, __src, 0x181uLL);
  memcpy(v28, __src, 0x181uLL);
  sub_100044704(__dst, v24, &qword_100200038, &qword_100182808);
  sub_10003DD84(v28, &qword_100200038, &qword_100182808);
  memcpy(&v26[7], __dst, 0x181uLL);
  v5 = v29[0];
  v6 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  LOBYTE(__src[0]) = 0;
  v15 = [objc_opt_self() secondarySystemBackgroundColor];
  v16 = Color.init(_:)();
  v17 = static Edge.Set.all.getter();
  v18 = *(v2 + 16);
  v19 = (a1 + *(sub_10003C49C(&qword_100200040, &unk_100182810) + 36));
  v20 = *(type metadata accessor for RoundedRectangle() + 20);
  v21 = enum case for RoundedCornerStyle.continuous(_:);
  v22 = type metadata accessor for RoundedCornerStyle();
  (*(*(v22 - 8) + 104))(&v19[v20], v21, v22);
  *v19 = v18;
  *(v19 + 1) = v18;
  *&v19[*(sub_10003C49C(&qword_100200048, &qword_100186120) + 36)] = 256;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  result = memcpy((a1 + 17), v26, 0x188uLL);
  *(a1 + 409) = __src[0];
  *(a1 + 412) = *(__src + 3);
  *(a1 + 416) = v6;
  *(a1 + 417) = v24[0];
  *(a1 + 420) = *(v24 + 3);
  *(a1 + 424) = v8;
  *(a1 + 432) = v10;
  *(a1 + 440) = v12;
  *(a1 + 448) = v14;
  *(a1 + 456) = 0;
  *(a1 + 460) = *(v29 + 3);
  *(a1 + 457) = v29[0];
  *(a1 + 464) = v16;
  *(a1 + 472) = v17;
  return result;
}

uint64_t sub_1000CDA5C@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v112 = *(a1 + 6);
  v3 = [v112 assetLocator];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v6;
  v123 = v7;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v122 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v112 name];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  *&v143 = v17;
  *(&v143 + 1) = v19;
  sub_100079A64();
  v20 = Text.init<A>(_:)();
  v22 = v21;
  LOBYTE(v19) = v23;
  v25 = v24;
  static Font.title3.getter();
  v26 = Text.font(_:)();
  v28 = v27;
  v30 = v29;
  v32 = v31;

  sub_10007C874(v20, v22, (v19 & 1), v33, v34, v35, v36, v37);
  v25, v38, v39, v40, v41, v42, v43, v44;
  static Font.Weight.semibold.getter();
  v45 = Text.fontWeight(_:)();
  v114 = v46;
  v115 = v45;
  v48 = v47;
  v116 = v49;
  sub_10007C874(v26, v28, (v30 & 1), v49, v50, v51, v52, v53);
  v32, v54, v55, v56, v57, v58, v59, v60;
  v61 = [v112 status];
  sub_1000B7164(v61, &v143);

  v62 = v143;
  v119 = v144;
  v120 = *(&v143 + 1);
  v118 = *(&v144 + 1);
  v117 = v145;
  LOBYTE(v32) = BYTE2(v145);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v121 = v32;
  LOBYTE(v143) = v32;
  *&v182[5] = v183[0];
  *&v182[21] = v183[1];
  *&v182[37] = v183[2];
  v113 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v71 = [v112 sections];
  sub_10003E110(0, &qword_1001FF298, ASTSuiteResultSection_ptr);
  v72 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v80 = v72;
  if (v72 >> 62)
  {
    v111 = v72;
    v81 = _CocoaArrayWrapper.endIndex.getter();
    v80 = v111;
  }

  else
  {
    v81 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v80, v73, v74, v75, v76, v77, v78, v79;
  if (v81)
  {
    v81 = Image.init(systemName:)();
    v82 = [objc_opt_self() systemGrayColor];
    v83 = Color.init(uiColor:)();
    v84 = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    LOBYTE(v143) = 0;
    v89 = v84;
    v90 = 1;
  }

  else
  {
    v83 = 0;
    v89 = 0;
    v90 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v88 = 0;
  }

  *&v126 = sub_1000CF708;
  *(&v126 + 1) = v123;
  LOBYTE(v127) = 0;
  *(&v127 + 1) = *v188;
  DWORD1(v127) = *&v188[3];
  *(&v127 + 1) = sub_10005C298;
  *v128 = 0;
  *&v128[8] = v185;
  *&v128[24] = v186;
  *&v128[40] = v187;
  v128[56] = v122;
  *&v128[60] = *&v184[3];
  *&v128[57] = *v184;
  *&v129 = v9;
  *(&v129 + 1) = v11;
  *&v130 = v13;
  *(&v130 + 1) = v15;
  v131 = 0;
  LOBYTE(v151) = 0;
  v149 = v129;
  v150 = v130;
  v147 = *&v128[32];
  v148 = *&v128[48];
  v145 = *v128;
  v146 = *&v128[16];
  v143 = v126;
  v144 = v127;
  *&v132 = v62;
  *(&v132 + 1) = v120;
  *&v133 = v119;
  *(&v133 + 1) = v118;
  *v134 = v117;
  v134[2] = v121;
  *&v134[3] = *v182;
  *&v134[19] = *&v182[16];
  *&v134[35] = *&v182[32];
  *&v134[48] = *&v182[45];
  v134[56] = v113;
  *&v134[60] = *(v189 + 3);
  *&v134[57] = v189[0];
  *&v135 = v64;
  *(&v135 + 1) = v66;
  *&v136 = v68;
  *(&v136 + 1) = v70;
  v137 = 0;
  v125[135] = 0;
  *&v125[7] = v132;
  *&v125[71] = *&v134[32];
  *&v125[55] = *&v134[16];
  *&v125[39] = *v134;
  *&v125[23] = v133;
  *&v125[119] = v136;
  *&v125[103] = v135;
  *&v125[87] = *&v134[48];
  *&v138 = v81;
  *(&v138 + 1) = v90;
  *&v139 = v83;
  *(&v139 + 1) = v89;
  *&v140 = v85;
  *(&v140 + 1) = v86;
  *&v141 = v87;
  *(&v141 + 1) = v88;
  v142 = 0;
  v124[71] = 0;
  *&v124[23] = v139;
  *&v124[39] = v140;
  *&v124[55] = v141;
  *&v124[7] = v138;
  v91 = v126;
  v92 = v127;
  v93 = *&v128[16];
  *(a2 + 32) = *v128;
  *(a2 + 48) = v93;
  *a2 = v91;
  *(a2 + 16) = v92;
  v94 = v147;
  v95 = v148;
  v96 = v150;
  v97 = v151;
  *(a2 + 96) = v149;
  *(a2 + 112) = v96;
  *(a2 + 64) = v94;
  *(a2 + 80) = v95;
  *(a2 + 128) = v97;
  *(a2 + 136) = v115;
  *(a2 + 144) = v114;
  *(a2 + 152) = v48 & 1;
  *(a2 + 160) = v116;
  *(a2 + 168) = 0;
  *(a2 + 176) = 1;
  *(a2 + 257) = *&v125[80];
  *(a2 + 273) = *&v125[96];
  *(a2 + 289) = *&v125[112];
  *(a2 + 305) = *&v125[128];
  *(a2 + 193) = *&v125[16];
  *(a2 + 209) = *&v125[32];
  *(a2 + 225) = *&v125[48];
  *(a2 + 241) = *&v125[64];
  *(a2 + 177) = *v125;
  *(a2 + 345) = *&v124[32];
  *(a2 + 361) = *&v124[48];
  *(a2 + 377) = *&v124[64];
  *(a2 + 313) = *v124;
  *(a2 + 329) = *&v124[16];
  v152[0] = v81;
  v152[1] = v90;
  v152[2] = v83;
  v152[3] = v89;
  v152[4] = v85;
  v152[5] = v86;
  v152[6] = v87;
  v152[7] = v88;
  v153 = 0;
  sub_100044704(&v126, v167, &qword_100200050, &unk_100182820);
  sub_10007C884(v115, v114, v48 & 1);

  sub_100044704(&v132, v167, &qword_100200058, &qword_100186180);
  sub_100044704(&v138, v167, &qword_100200060, &qword_100182830);
  sub_10003DD84(v152, &qword_100200060, &qword_100182830);
  v157 = *v182;
  v154[0] = v62;
  v154[1] = v120;
  v154[2] = v119;
  v154[3] = v118;
  v155 = v117;
  v156 = v121;
  v158 = *&v182[16];
  *v159 = *&v182[32];
  *&v159[13] = *&v182[45];
  v160 = v113;
  *v161 = v189[0];
  *&v161[3] = *(v189 + 3);
  v162 = v64;
  v163 = v66;
  v164 = v68;
  v165 = v70;
  v166 = 0;
  sub_10003DD84(v154, &qword_100200058, &qword_100186180);
  sub_10007C874(v115, v114, (v48 & 1), v98, v99, v100, v101, v102);
  v116, v103, v104, v105, v106, v107, v108, v109;
  v167[0] = sub_1000CF708;
  v167[1] = v123;
  v168 = 0;
  *v169 = *v188;
  *&v169[3] = *&v188[3];
  v170 = sub_10005C298;
  v171 = 0;
  v172 = v185;
  v173 = v186;
  v174 = v187;
  v175 = v122;
  *&v176[3] = *&v184[3];
  *v176 = *v184;
  v177 = v9;
  v178 = v11;
  v179 = v13;
  v180 = v15;
  v181 = 0;
  return sub_10003DD84(v167, &qword_100200050, &unk_100182820);
}

uint64_t sub_1000CE2A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ScrollBounceBehavior();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v96 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for ScrollIndicatorVisibility();
  v91 = *(v93 - 8);
  __chkstk_darwin(v93);
  v104 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_10003C49C(&qword_1001FFFA0, &qword_1001826D8);
  v90 = *(v94 - 8);
  __chkstk_darwin(v94);
  v103 = &v87 - v8;
  v9 = sub_10003C49C(&qword_1001FFFA8, &qword_1001826E0);
  v95 = *(v9 - 8);
  __chkstk_darwin(v9);
  v105 = &v87 - v10;
  v11 = sub_10003C49C(&qword_1001FFFB0, &qword_1001826E8);
  v97 = *(v11 - 8);
  v98 = v11;
  __chkstk_darwin(v11);
  v92 = &v87 - v12;
  v13 = sub_10003C49C(&qword_1001FFFB8, &qword_1001826F0);
  __chkstk_darwin(v13 - 8);
  v15 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v87 - v17;
  v19 = *(a1 + 40);
  *&v102 = *(a1 + 32);
  *(&v102 + 1) = v19;

  v101 = static Font.title2.getter();
  v100 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  LOBYTE(v114) = 0;
  v99 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = [*(a1 + 48) components];
  sub_10003E110(0, &qword_1001FD530, ASTSuiteResultComponent_ptr);
  v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v45 = v37;
  if (v37 >> 62)
  {
    v62 = v9;
    v63 = v15;
    v64 = v45;
    v65 = _CocoaArrayWrapper.endIndex.getter();
    v66 = v64;
    v15 = v63;
    v9 = v62;
    v66, v67, v68, v69, v70, v71, v72, v73;
    if (v65)
    {
      goto LABEL_3;
    }

LABEL_11:
    (*(v97 + 56))(v18, 1, 1, v98);
    goto LABEL_12;
  }

  v46 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v37, v38, v39, v40, v41, v42, v43, v44;
  if (!v46)
  {
    goto LABEL_11;
  }

LABEL_3:
  v87 = v15;
  v88 = v5;
  v89 = v4;
  __chkstk_darwin(v47);
  *(&v87 - 2) = a1;
  static Axis.Set.vertical.getter();
  sub_10003C49C(&qword_1001FFFC0, &unk_1001826F8);
  sub_10005C71C(&qword_1001FFFC8, &qword_1001FFFC0, &unk_1001826F8, &protocol conformance descriptor for VStack<A>);
  ScrollView.init(_:showsIndicators:content:)();
  static ScrollIndicatorVisibility.never.getter();
  sub_10003C49C(&qword_1001FF278, &qword_100181AA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10017EC10;
  v49 = static Axis.Set.vertical.getter();
  *(inited + 32) = v49;
  v50 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v50;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v49)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  v51 = Axis.Set.init(rawValue:)();
  v52 = v88;
  if (v51 != v50)
  {
    Axis.Set.init(rawValue:)();
  }

  v53 = v96;
  v54 = sub_10005C71C(&qword_1001FFFD0, &qword_1001FFFA0, &qword_1001826D8, &protocol conformance descriptor for ScrollView<A>);
  v55 = v104;
  v56 = v94;
  v57 = v103;
  View.scrollIndicators(_:axes:)();
  (*(v91 + 8))(v55, v93);
  (*(v90 + 8))(v57, v56);
  static ScrollBounceBehavior.basedOnSize.getter();
  LOBYTE(v55) = static Axis.Set.vertical.getter();
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v55)
  {
    Axis.Set.init(rawValue:)();
  }

  *&v114 = v56;
  *(&v114 + 1) = v54;
  swift_getOpaqueTypeConformance2();
  v58 = v92;
  v59 = v105;
  View.scrollBounceBehavior(_:axes:)();
  (*(v52 + 8))(v53, v89);
  (*(v95 + 8))(v59, v9);
  v61 = v97;
  v60 = v98;
  (*(v97 + 32))(v18, v58, v98);
  (*(v61 + 56))(v18, 0, 1, v60);
  v15 = v87;
LABEL_12:
  sub_1000CF228(v18, v15);
  v74 = v102;
  v106 = v102;
  v75 = v101;
  *&v107 = v101;
  v76 = v100;
  BYTE8(v107) = v100;
  *(&v107 + 9) = v133[0];
  HIDWORD(v107) = *(v133 + 3);
  *&v108 = v21;
  *(&v108 + 1) = v23;
  *&v109 = v25;
  *(&v109 + 1) = v27;
  LOBYTE(v110) = 0;
  *(&v110 + 1) = *v132;
  DWORD1(v110) = *&v132[3];
  v77 = v18;
  v78 = v99;
  BYTE8(v110) = v99;
  HIDWORD(v110) = *&v131[3];
  *(&v110 + 9) = *v131;
  *&v111 = v29;
  *(&v111 + 1) = v31;
  *&v112 = v33;
  *(&v112 + 1) = v35;
  v113 = 0;
  v79 = v110;
  v80 = v111;
  v81 = v112;
  *(a2 + 112) = 0;
  *(a2 + 80) = v80;
  *(a2 + 96) = v81;
  v82 = v106;
  v83 = v107;
  v84 = v108;
  *(a2 + 48) = v109;
  *(a2 + 64) = v79;
  *(a2 + 16) = v83;
  *(a2 + 32) = v84;
  *a2 = v82;
  v85 = sub_10003C49C(&qword_1001FFFD8, &qword_100182708);
  sub_1000CF228(v15, a2 + *(v85 + 48));
  sub_100044704(&v106, &v114, &qword_1001FFFE0, &qword_100182710);
  sub_1000CF298(v77);
  sub_1000CF298(v15);
  v114 = v74;
  v115 = v75;
  v116 = v76;
  *v117 = v133[0];
  *&v117[3] = *(v133 + 3);
  v118 = v21;
  v119 = v23;
  v120 = v25;
  v121 = v27;
  v122 = 0;
  *v123 = *v132;
  *&v123[3] = *&v132[3];
  v124 = v78;
  *&v125[3] = *&v131[3];
  *v125 = *v131;
  v126 = v29;
  v127 = v31;
  v128 = v33;
  v129 = v35;
  v130 = 0;
  return sub_10003DD84(&v114, &qword_1001FFFE0, &qword_100182710);
}

uint64_t sub_1000CEB78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_10003C49C(&qword_1001FFFE8, &unk_100182718);
  v4 = [*(a1 + 48) components];
  sub_10003E110(0, &qword_1001FD530, ASTSuiteResultComponent_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v11[8] = v5;
  swift_getKeyPath();
  v6 = swift_allocObject();
  v7 = *(a1 + 16);
  v6[1] = *a1;
  v6[2] = v7;
  v6[3] = *(a1 + 32);
  *(v6 + 57) = *(a1 + 41);
  sub_1000CF3C4(a1, v11);
  sub_10003C49C(&qword_1001FFFF0, &qword_100182750);
  sub_10003C49C(&qword_1001FFFF8, &qword_100182758);
  sub_10005C71C(&qword_100200000, &qword_1001FFFF0, &qword_100182750, &protocol conformance descriptor for [A]);
  v8 = sub_10003C4E4(&qword_100200008, &qword_100182760);
  v9 = sub_1000CF3FC();
  v11[0] = v8;
  v11[1] = v9;
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

void sub_1000CED5C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 name];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_1000CEDB4(void **a1, _OWORD *a2)
{
  v3 = *a1;
  v4 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  *&v13 = v3;
  BYTE8(v13) = v4;
  *&v14 = v5;
  *(&v14 + 1) = v6;
  *&v15 = v7;
  *(&v15 + 1) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  v10 = a2[1];
  *(v9 + 24) = *a2;
  *(v9 + 40) = v10;
  *(v9 + 56) = a2[2];
  *(v9 + 65) = *(a2 + 41);
  v11 = v3;
  sub_1000CF3C4(a2, v16);
  sub_10003C49C(&qword_100200008, &qword_100182760);
  sub_1000CF3FC();
  View.onTapGesture(count:perform:)();

  v16[4] = v14;
  v16[5] = v15;
  v17 = 0;
  v16[0] = xmmword_1001825E0;
  v16[1] = xmmword_1001825F0;
  v16[2] = xmmword_100182600;
  v16[3] = v13;
  return sub_10003DD84(v16, &qword_100200008, &qword_100182760);
}

void sub_1000CEF1C(void *a1, uint64_t a2)
{
  v4 = [a1 sections];
  sub_10003E110(0, &qword_1001FF298, ASTSuiteResultSection_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5, v6, v7, v8, v9, v10, v11, v12;
  if (v13)
  {
    v14 = *(a2 + 24);
    if (v14)
    {
      _UISolariumEnabled();
      _UISolariumEnabled();
      __asm { FMOV            V0.2D, #16.0 }

      v20 = objc_allocWithZone(sub_10003C49C(&qword_100200020, &qword_100182768));
      v21 = a1;
      v22 = UIHostingController.init(rootView:)();
      [v14 pushViewController:v22 animated:1];
    }
  }
}

uint64_t sub_1000CF05C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10003C49C(&qword_1001FFF88, &qword_1001826C0);
  __chkstk_darwin(v3 - 8);
  v5 = v19 - v4;
  v6 = v1[1];
  v19[0] = *v1;
  v19[1] = v6;
  *v20 = v1[2];
  *&v20[9] = *(v1 + 41);
  *v5 = static HorizontalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v7 = sub_10003C49C(&qword_1001FFF90, &qword_1001826C8);
  sub_1000CE2A0(v19, &v5[*(v7 + 44)]);
  v8 = static Edge.Set.horizontal.getter();
  _UISolariumEnabled();
  EdgeInsets.init(_all:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_1000CF1B0(v5, a1);
  result = sub_10003C49C(&qword_1001FFF98, &qword_1001826D0);
  v18 = a1 + *(result + 36);
  *v18 = v8;
  *(v18 + 8) = v10;
  *(v18 + 16) = v12;
  *(v18 + 24) = v14;
  *(v18 + 32) = v16;
  *(v18 + 40) = 0;
  return result;
}

uint64_t sub_1000CF1B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&qword_1001FFF88, &qword_1001826C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CF228(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&qword_1001FFFB8, &qword_1001826F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CF298(uint64_t a1)
{
  v2 = sub_10003C49C(&qword_1001FFFB8, &qword_1001826F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000CF310(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = String._bridgeToObjectiveC()();
  [v2 setName:v3];
}

uint64_t sub_1000CF374()
{
  *(v0 + 56), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 73, 7, v8);
}

unint64_t sub_1000CF3FC()
{
  result = qword_100200010;
  if (!qword_100200010)
  {
    sub_10003C4E4(&qword_100200008, &qword_100182760);
    sub_1000CF488();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100200010);
  }

  return result;
}

unint64_t sub_1000CF488()
{
  result = qword_100200018;
  if (!qword_100200018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100200018);
  }

  return result;
}

uint64_t sub_1000CF4DC()
{
  *(v0 + 64), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 81, 7, v8);
}

__n128 sub_1000CF538(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000CF554(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000CF59C(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

unint64_t sub_1000CF5FC()
{
  result = qword_100200028;
  if (!qword_100200028)
  {
    sub_10003C4E4(&qword_1001FFF98, &qword_1001826D0);
    sub_10005C71C(&qword_100200030, &qword_1001FFF88, &qword_1001826C0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100200028);
  }

  return result;
}

uint64_t sub_1000CF6D0(uint64_t a1, const char *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 32, 7, v9);
}

unint64_t sub_1000CF714()
{
  result = qword_100200068;
  if (!qword_100200068)
  {
    sub_10003C4E4(&qword_100200040, &unk_100182810);
    sub_1000CF7CC();
    sub_10005C71C(&qword_1002000B0, &qword_100200048, &qword_100186120, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100200068);
  }

  return result;
}

unint64_t sub_1000CF7CC()
{
  result = qword_100200070;
  if (!qword_100200070)
  {
    sub_10003C4E4(&qword_100200078, &qword_100182838);
    sub_1000CF884();
    sub_10005C71C(&qword_1002000A0, &qword_1002000A8, &unk_100182850, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100200070);
  }

  return result;
}

unint64_t sub_1000CF884()
{
  result = qword_100200080;
  if (!qword_100200080)
  {
    sub_10003C4E4(&qword_100200088, &qword_100182840);
    sub_10005C71C(&qword_100200090, &qword_100200098, &qword_100182848, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100200080);
  }

  return result;
}

id UIColor.init(hexCode:)(int a1, char a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  if (a2)
  {
    v5 = HIBYTE(a1) / 255.0;
    v6 = BYTE2(a1) / 255.0;
    v7 = BYTE1(a1) / 255.0;
    v8 = a1 / 255.0;
  }

  else
  {
    v5 = BYTE2(a1) / 255.0;
    v6 = BYTE1(a1) / 255.0;
    v7 = a1 / 255.0;
    v8 = 1.0;
  }

  return [v4 initWithRed:v5 green:v6 blue:v7 alpha:v8];
}

uint64_t *Color.background.unsafeMutableAddressor()
{
  if (qword_1001FC770 != -1)
  {
    swift_once();
  }

  return &static Color.background;
}

uint64_t *Color.secondaryBackground.unsafeMutableAddressor()
{
  if (qword_1001FC778 != -1)
  {
    swift_once();
  }

  return &static Color.secondaryBackground;
}

uint64_t *Color.tertiaryBackground.unsafeMutableAddressor()
{
  if (qword_1001FC780 != -1)
  {
    swift_once();
  }

  return &static Color.tertiaryBackground;
}

uint64_t *Color.systemGray.unsafeMutableAddressor()
{
  if (qword_1001FC788 != -1)
  {
    swift_once();
  }

  return &static Color.systemGray;
}

uint64_t *Color.systemBlue.unsafeMutableAddressor()
{
  if (qword_1001FC790 != -1)
  {
    swift_once();
  }

  return &static Color.systemBlue;
}

uint64_t sub_1000CFCD0(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = Color.init(_:)();
  *a3 = result;
  return result;
}

uint64_t *Color.systemGray6.unsafeMutableAddressor()
{
  if (qword_1001FC798 != -1)
  {
    swift_once();
  }

  return &static Color.systemGray6;
}

double sub_1000CFD8C(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }

  return result;
}

uint64_t _s7HexCodeOwCP(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s7HexCodeOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t _s7HexCodeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void sub_1000CFFCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for CosmeticAssessmentCheckingDamageViewController();
  objc_msgSendSuper2(&v15, "viewDidLoad");
  v4 = [v2 navigationController];
  if (v4)
  {
    v5 = v4;
    [v4 setNavigationBarHidden:0 animated:1];
  }

  v6 = [v3 navigationItem];
  [v6 setHidesBackButton:1];

  sub_10003E110(0, &qword_1001FD3B8, UIBarButtonItem_ptr);
  sub_10003E110(0, &qword_1002023B0, UIAction_ptr);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = v7;
  v16.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v16.is_nil = 0;
  v8.super.super.isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemCancel, v16, v17).super.super.isa;
  v9 = OBJC_IVAR____TtC11Diagnostics46CosmeticAssessmentCheckingDamageViewController_barButton;
  v10 = *&v3[OBJC_IVAR____TtC11Diagnostics46CosmeticAssessmentCheckingDamageViewController_barButton];
  *&v3[OBJC_IVAR____TtC11Diagnostics46CosmeticAssessmentCheckingDamageViewController_barButton] = v8;

  LODWORD(v6) = _UISolariumEnabled();
  v11 = [v3 navigationItem];
  v12 = *&v3[v9];
  v13 = &selRef_setLeftBarButtonItem_;
  if (!v6)
  {
    v13 = &selRef_setRightBarButtonItem_;
  }

  [v11 *v13];
}

void sub_1000D01A4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1000EC128(4);
    *(swift_allocObject() + 16) = v3;
    v4 = v3;
    v5 = [v4 navigationItem];
    v6 = [v5 rightBarButtonItem];

    sub_100088E48(0, v6);

    v7 = *&v4[OBJC_IVAR____TtC11Diagnostics46CosmeticAssessmentCheckingDamageViewController_barButton];
    if (v7)
    {
      v8 = v7;
      [v8 setEnabled:0];
    }
  }
}

double sub_1000D02D8()
{
  v0 = sub_10003C49C(&unk_1001FFE20, &unk_10017ED10);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  sub_1000EC128(5);
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  type metadata accessor for MainActor();
  v4 = static MainActor.shared.getter();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = &protocol witness table for MainActor;
  sub_1000EC574(0, 0, v2, &unk_1001828C0, v5);

  return result;
}

id sub_1000D0464(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CosmeticAssessmentCheckingDamageViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1000D04CC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7, v1);
}

uint64_t sub_1000D050C()
{

  return _swift_deallocObject(v0, 24, 7, v1);
}

id sub_1000D0544()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC11Diagnostics46CosmeticAssessmentCheckingDamageViewController_barButton);
  if (result)
  {
    return [result setEnabled:1];
  }

  return result;
}

uint64_t sub_1000D056C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7, v1);
}

uint64_t sub_1000D05A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003DEC8;

  return sub_10006A96C();
}

void CGContextRef.usingGState(stateBlock:)(void (*a1)(CGContext *))
{
  CGContextSaveGState(v1);
  a1(v1);
  CGContextRestoreGState(v1);
}

CGPathRef sub_1000D06AC(char a1, uint64_t a2, uint64_t a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v7 = *(*v5->responder + 24);
  if (v7)
  {
    if (a5 >= a4)
    {
      v12 = a4;
    }

    else
    {
      v12 = a5;
    }

    v111 = v12;
    v13 = v12 / v7;
    CGAffineTransformMakeTranslation(&transform, (a4 - v13 * v7) * 0.5 + 15.0, (a5 - v13 * v7) * 0.5 + 15.0);
    a = transform.a;
    b = transform.b;
    c = transform.c;
    d = transform.d;
    tx = transform.tx;
    ty = transform.ty;
    v129 = v13;
    v137.a = 1.0;
    v137.b = 0.0;
    v137.c = 0.0;
    v137.d = 1.0;
    v137.tx = 0.0;
    v137.ty = 0.0;
    transform.a = 1.0;
    transform.b = 0.0;
    transform.c = 0.0;
    transform.d = 1.0;
    v126 = v13 * 9.0;
    transform.tx = 0.0;
    transform.ty = 0.0;
    CGAffineTransformScale(&t1, &transform, v13 * 9.0 / 90.0, v13 * 9.0 / 90.0);
    v16 = t1.a;
    v15 = t1.b;
    v18 = t1.c;
    v17 = t1.d;
    v20 = t1.tx;
    v19 = t1.ty;
    Mutable = CGPathCreateMutable();
    swift_beginAccess();
    sub_10004476C(a2 + 24, v138);
    if (!a1)
    {
      v30 = v139;
      v31 = v140;
      sub_1000442A0(v138, v139);
      v24 = (*(v31 + 8))(v30, v31);
      goto LABEL_12;
    }

    if (a1 == 1)
    {
      swift_beginAccess();
      sub_10004476C(a2 + 64, &transform);
      v22 = transform.d;
      v23 = transform.tx;
      sub_1000442A0(&transform, *&transform.d);
      v24 = (*(*&v23 + 8))(COERCE_CGFLOAT(*&v22), COERCE_CGFLOAT(*&v23));
      sub_100044554(&transform);
LABEL_12:
      t1.a = v16;
      t1.b = v15;
      t1.c = v18;
      t1.d = v17;
      t1.tx = v20;
      t1.ty = v19;
      t2.a = a;
      t2.b = b;
      t2.c = c;
      t2.d = d;
      t2.tx = tx;
      t2.ty = ty;
      CGAffineTransformConcat(&transform, &t1, &t2);
      v32 = CGPathCreateCopyByTransformingPath(v24, &transform);
      if (v32)
      {
        v33 = v32;
        CGMutablePathRef.addPath(_:transform:)(v32, &v137);
      }

      CGAffineTransformMakeScale(&t1, 1.0, -1.0);
      v34 = t1.tx;
      v35 = t1.ty;
      v118 = *&t1.c;
      v122 = *&t1.a;
      CGAffineTransformMakeTranslation(&t1, 0.0, 90.0);
      v36 = *&t1.a;
      v37 = *&t1.c;
      v38 = *&t1.tx;
      *&t1.a = v122;
      *&t1.c = v118;
      t1.tx = v34;
      t1.ty = v35;
      *&t2.a = v36;
      *&t2.c = v37;
      *&t2.tx = v38;
      CGAffineTransformConcat(&v134, &t1, &t2);
      t2 = v134;
      v134 = transform;
      CGAffineTransformConcat(&t1, &t2, &v134);
      v39 = CGPathCreateCopyByTransformingPath(v24, &t1);
      v40 = v129;
      v41 = v126;
      CGAffineTransformMakeTranslation(&t2, 0.0, v129 * *(*v6->responder + 24) - v126);
      if (v39)
      {
        v42 = CGPathCreateCopyByTransformingPath(v39, &t2);

        if (v42)
        {
          CGMutablePathRef.addPath(_:transform:)(v42, &v137);
        }
      }

      else
      {
LABEL_58:
        v42 = 0;
      }

      CGAffineTransformMakeScale(&v134, -1.0, 1.0);
      v75 = v134.tx;
      v76 = v134.ty;
      v120 = *&v134.c;
      v125 = *&v134.a;
      CGAffineTransformMakeTranslation(&v134, 90.0, 0.0);
      v77 = *&v134.a;
      v78 = *&v134.c;
      v79 = *&v134.tx;
      *&v134.a = v125;
      *&v134.c = v120;
      v134.tx = v75;
      v134.ty = v76;
      *&v133.a = v77;
      *&v133.c = v78;
      *&v133.tx = v79;
      CGAffineTransformConcat(&v132, &v134, &v133);
      v133 = v132;
      v132 = transform;
      CGAffineTransformConcat(&v134, &v133, &v132);
      v80 = CGPathCreateCopyByTransformingPath(v24, &v134);
      CGAffineTransformMakeTranslation(&v133, v40 * *(*v6->responder + 24) - v41, 0.0);
      if (v80)
      {
        v81 = CGPathCreateCopyByTransformingPath(v80, &v133);

        if (v81)
        {
          CGMutablePathRef.addPath(_:transform:)(v81, &v137);
        }
      }

      goto LABEL_63;
    }

    if (!a3)
    {
LABEL_63:
      sub_100044554(v138);
      return Mutable;
    }

    CGAffineTransformMakeScale(&transform, a4, a4);
    v43 = transform.tx;
    v40 = transform.ty;
    v127 = *&transform.c;
    v130 = *&transform.a;
    CGAffineTransformMakeScale(&transform, 1.0, -1.0);
    v44 = transform.tx;
    v45 = transform.ty;
    v119 = *&transform.c;
    v123 = *&transform.a;
    CGAffineTransformMakeTranslation(&transform, 0.0, 1.0);
    v46 = *&transform.a;
    v47 = *&transform.c;
    v48 = *&transform.tx;
    *&transform.a = v123;
    *&transform.c = v119;
    transform.tx = v44;
    transform.ty = v45;
    *&t1.a = v46;
    *&t1.c = v47;
    *&t1.tx = v48;
    CGAffineTransformConcat(&t2, &transform, &t1);
    t1 = t2;
    *&t2.a = v130;
    *&t2.c = v127;
    t2.tx = v43;
    t2.ty = v40;
    CGAffineTransformConcat(&transform, &t1, &t2);

    v49 = CGPathCreateMutable();
    v50 = *(a3 + 16);
    CGMutablePathRef.addPath(_:transform:)(v50, &transform);

    PathBoundingBox = CGPathGetPathBoundingBox(v49);
    v144 = CGRectInset(PathBoundingBox, *(a3 + 24), *(a3 + 24));
    x = v144.origin.x;
    y = v144.origin.y;
    width = v144.size.width;
    height = v144.size.height;
    v55 = CGRectGetWidth(v144);
    v145.origin.x = x;
    v145.origin.y = y;
    v145.size.width = width;
    v145.size.height = height;
    v56 = CGRectGetHeight(v145);
    if (v55 > v56)
    {
      v41 = v55;
    }

    else
    {
      v41 = v56;
    }

    v57 = *v6->responder;
    v58 = *(v57 + 24);
    v6 = *(v57 + 32);
    type metadata accessor for BoolMatrix();
    inited = swift_initStackObject();
    inited[2] = 0;
    inited[3] = 0;
    inited[4] = &_swiftEmptyArrayStorage;
    if ((v58 * v58) >> 64 != (v58 * v58) >> 63)
    {
      goto LABEL_99;
    }

    if (v58 * v58 == *&v6->hostAppBundleIdentifier[8])
    {
      v60 = inited;
      inited[2] = v58;
      inited[3] = v58;
      inited[4] = v6;

      if ((v58 & 0x8000000000000000) == 0)
      {
        v128 = v49;
        if (v58)
        {
          v116 = a2;
          v124 = Mutable;
          Mutable = 0;
          v61 = (v58 - 1);
          v62 = v58 - 9;
          do
          {
            v24 = 0;
            v131 = Mutable + 1;
            v63 = Mutable * v58;
            do
            {
              if (!Mutable || Mutable == v61 || !v24 || v61 == v24 || Mutable <= 8 && v24 < 9 || (Mutable < 9 ? (v72 = v24 < v62) : (v72 = 1), v72 ? (v73 = 0) : (v73 = 1), Mutable >= v62 ? (v74 = v24 >= 9) : (v74 = 1), !v74 || (v73 & 1) != 0))
              {
                if (v24 >= v58)
                {
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
LABEL_96:
                  __break(1u);
LABEL_97:
                  __break(1u);
LABEL_98:
                  __break(1u);
LABEL_99:
                  __break(1u);
                  goto LABEL_100;
                }

                if ((Mutable * v58) >> 64 != (Mutable * v58) >> 63)
                {
                  goto LABEL_90;
                }

                v64 = v24 + v63;
                if (__OFADD__(v63, v24))
                {
                  goto LABEL_91;
                }

                if (swift_isUniquelyReferenced_nonNull_native())
                {
                  if ((v64 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_57;
                  }
                }

                else
                {
                  v6 = sub_10003B9AC(v6, v65, v66, v67, v68, v69, v70, v71);
                  if ((v64 & 0x8000000000000000) != 0)
                  {
LABEL_57:
                    __break(1u);
                    goto LABEL_58;
                  }
                }

                if (v64 >= *&v6->hostAppBundleIdentifier[8])
                {
                  goto LABEL_92;
                }

                v6->remoteCardFilter[v64] = 0;
                v60[4] = v6;
              }

              v24 = (v24 + 1);
            }

            while (v58 != v24);
            ++Mutable;
          }

          while (v131 != v58);

          Mutable = v124;
          a2 = v116;
        }

        else
        {
        }

        sub_1000D63A4(v82, v41 / 1.41421356 / a4);
        v6, v83, v84, v85, v86, v87, v88, v89;

        sub_1000D1C0C(v90, v111);
        v92 = v91;

        v93 = *(a2 + 16);
        v94 = v92[3];
        if (a5 / v94 >= a4 / v94)
        {
          v95 = a4 / v94;
        }

        else
        {
          v95 = a5 / v94;
        }

        v96 = CGPathCreateMutable();
        v97 = v92[3];
        if ((v97 & 0x8000000000000000) == 0)
        {
          v98 = v96;
          if (v97)
          {
            v99 = 0;
            v100 = (a4 - v95 * v94) * 0.5 + 15.0;
            v101 = (a5 - v95 * v94) * 0.5 + 15.0;
            while (1)
            {
              v102 = v92[3];
              if (v102 < 0)
              {
                goto LABEL_98;
              }

              if (v102)
              {
                break;
              }

LABEL_72:
              if (++v99 == v97)
              {
                goto LABEL_88;
              }
            }

            v103 = 0;
            while (1)
            {
              v104 = v92[2];
              if (v103 >= v104 || v99 >= v92[3])
              {
                goto LABEL_93;
              }

              v106 = v99 * v104;
              if ((v99 * v104) >> 64 != (v99 * v104) >> 63)
              {
                goto LABEL_94;
              }

              v107 = v106 + v103;
              if (__OFADD__(v106, v103))
              {
                goto LABEL_95;
              }

              if ((v107 & 0x8000000000000000) != 0)
              {
                goto LABEL_96;
              }

              v108 = v92[4];
              if (v107 >= *(v108 + 16))
              {
                goto LABEL_97;
              }

              if (*(v108 + v107 + 32) == 1)
              {
                v146.origin.x = v100 + v95 * v103;
                v146.origin.y = v101 + v95 * v99;
                v146.size.width = v95;
                v146.size.height = v95;
                v109 = v93 * (CGRectGetHeight(v146) * 0.5);
                v147.origin.x = v100 + v95 * v103;
                v147.origin.y = v101 + v95 * v99;
                v147.size.width = v95;
                v147.size.height = v95;
                v148 = CGRectInset(v147, v109, v109);
                v110 = CGPathCreateWithEllipseInRect(v148, 0);
                CGMutablePathRef.addPath(_:transform:)(v110, &v137);
              }

              if (v102 == ++v103)
              {
                goto LABEL_72;
              }
            }
          }

LABEL_88:

          CGMutablePathRef.addPath(_:transform:)(v98, &v137);

          goto LABEL_63;
        }

LABEL_102:
        __break(1u);
      }
    }

    else
    {
LABEL_100:
      __break(1u);
    }

    __break(1u);
    goto LABEL_102;
  }

  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;

  return CGPathCreateWithRect(*&v25, 0);
}