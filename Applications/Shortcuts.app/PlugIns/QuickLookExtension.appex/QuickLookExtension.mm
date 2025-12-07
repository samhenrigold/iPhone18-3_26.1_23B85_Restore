id sub_100001A28(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC18QuickLookExtension21PreviewViewController____lazy_storage___hostingView;
  v3 = *(v1 + OBJC_IVAR____TtC18QuickLookExtension21PreviewViewController____lazy_storage___hostingView);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC18QuickLookExtension21PreviewViewController____lazy_storage___hostingView);
  }

  else
  {
    v5 = v1;
    sub_100005110();
    v6 = objc_allocWithZone(sub_1000034F4(&qword_10000C4B8, &qword_1000056D0));
    v7 = sub_100005030();
    v8 = *(v1 + v2);
    *(v5 + v2) = v7;
    v4 = v7;

    v3 = 0;
  }

  v9 = v3;
  return v4;
}

id sub_100001ACC()
{
  v18.receiver = v0;
  v18.super_class = type metadata accessor for PreviewViewController();
  v1 = objc_msgSendSuper2(&v18, "loadView");
  v2 = sub_100001A28(v1);
  [v0 addChildViewController:v2];

  v3 = OBJC_IVAR____TtC18QuickLookExtension21PreviewViewController____lazy_storage___hostingView;
  result = [*&v0[OBJC_IVAR____TtC18QuickLookExtension21PreviewViewController____lazy_storage___hostingView] view];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  result = [v0 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  [result bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [v5 setFrame:{v8, v10, v12, v14}];
  result = [*&v0[v3] view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v15 = result;
  [result setAutoresizingMask:18];

  result = [v0 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v16 = result;
  result = [*&v0[v3] view];
  if (result)
  {
    v17 = result;
    [v16 addSubview:result];

    return [*&v0[v3] didMoveToParentViewController:v0];
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_100001CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_100004F10();
  sub_100004DDC();
  __chkstk_darwin(v8);
  sub_100004E00();
  v11 = v10 - v9;
  (*(v12 + 16))(v10 - v9, a1);
  v13 = objc_allocWithZone(WFShortcutExtractor);
  v15 = sub_100003138(v11, 1, 0, 0, v14);
  v16 = swift_allocObject();
  v16[2] = v4;
  v16[3] = a2;
  v16[4] = a3;
  aBlock[4] = sub_100003284;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100001E6C;
  aBlock[3] = &unk_100008788;
  v17 = _Block_copy(aBlock);
  v18 = v4;

  [v15 extractShortcutWithCompletion:v17];
  _Block_release(v17);
}

void sub_100001E6C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_100002018(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_100004ED0();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

id sub_10000207C(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC18QuickLookExtension21PreviewViewController____lazy_storage___hostingView] = 0;
  if (a2)
  {
    v5 = sub_100005160();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for PreviewViewController();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id sub_100002168(void *a1)
{
  *&v1[OBJC_IVAR____TtC18QuickLookExtension21PreviewViewController____lazy_storage___hostingView] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PreviewViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_100002204(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PreviewViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10000226C(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_100005160();

  v4 = [v2 initWithBundleIdentifier:v3];

  return v4;
}

uint64_t sub_1000022E0@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_100005020();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = sub_1000034F4(&qword_10000C570, &qword_100005D28);
  return sub_100002344(a1, a2, a3 + *(v6 + 44));
}

uint64_t sub_100002344@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a2;
  v57 = a3;
  v4 = sub_1000034F4(&qword_10000C578, &qword_100005D30);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  sub_100004DF0();
  v56 = v6 - v7;
  sub_100004E58();
  __chkstk_darwin(v8);
  v10 = &v50 - v9;
  v54 = sub_100005130();
  sub_100004DDC();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100004DF0();
  v16 = (v14 - v15);
  __chkstk_darwin(v17);
  v19 = &v50 - v18;
  v20 = sub_1000034F4(&qword_10000C580, &qword_100005D38);
  v21 = v20 - 8;
  __chkstk_darwin(v20);
  sub_100004DF0();
  v24 = v22 - v23;
  __chkstk_darwin(v25);
  v27 = &v50 - v26;
  *v27 = sub_100005020();
  *(v27 + 1) = 0;
  v27[16] = 1;
  v28 = sub_1000034F4(&qword_10000C588, &qword_100005D40);
  sub_1000026E8(a1, &v27[*(v28 + 44)]);
  v29 = sub_100005050();
  sub_100004FA0();
  v30 = &v27[*(v21 + 44)];
  *v30 = v29;
  *(v30 + 1) = v31;
  *(v30 + 2) = v32;
  *(v30 + 3) = v33;
  *(v30 + 4) = v34;
  v30[40] = 0;
  v52 = v19;
  sub_100005120();
  v35 = a1;
  v36 = v55;
  sub_100004F20();
  v37 = [objc_opt_self() wf_systemGroupedBackgroundColor];
  v38 = sub_1000050E0();
  v39 = sub_100005050();
  v40 = &v10[*(v5 + 44)];
  v51 = v10;
  *v40 = v38;
  v40[8] = v39;
  v53 = v24;
  sub_1000048F0(v27, v24, &qword_10000C580, &qword_100005D38);
  v41 = *(v12 + 16);
  v42 = v19;
  v43 = v54;
  v41(v16, v42, v54);
  v44 = v56;
  sub_100004750(v10, v56);
  v45 = v24;
  v46 = v57;
  sub_1000048F0(v45, v57, &qword_10000C580, &qword_100005D38);
  v47 = sub_1000034F4(&qword_10000C590, &qword_100005D48);
  v41(v46 + *(v47 + 48), v16, v43);
  sub_100004750(v44, v46 + *(v47 + 64));
  sub_1000047C0(v51);
  v48 = *(v12 + 8);
  v48(v52, v43);
  sub_10000494C(v27, &qword_10000C580, &qword_100005D38);
  sub_1000047C0(v44);
  v48(v16, v43);
  return sub_10000494C(v53, &qword_10000C580, &qword_100005D38);
}

uint64_t sub_1000026E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = sub_1000034F4(&qword_10000C598, &qword_100005D50);
  __chkstk_darwin(v3 - 8);
  sub_100004DF0();
  v58 = v4 - v5;
  sub_100004E58();
  __chkstk_darwin(v6);
  v8 = (&v54 - v7);
  *v8 = sub_100005140();
  v8[1] = v9;
  v10 = sub_1000034F4(&qword_10000C5A0, &qword_100005D58);
  sub_100002A20(a1, v8 + *(v10 + 44));
  v11 = sub_100004828(a1, &selRef_name);
  if (v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  v14 = 0xE000000000000000;
  if (v12)
  {
    v14 = v12;
  }

  v60 = v13;
  v61 = v14;
  sub_100004634();
  v15 = sub_1000050A0();
  v17 = v16;
  v19 = v18;
  sub_100005060();
  v20 = sub_100005090();
  v56 = v21;
  v57 = v20;
  v55 = v22;
  HIDWORD(v54) = v23;

  sub_100004688(v15, v17, v19 & 1);

  v24 = [a1 workflowSubtitle];
  v25 = sub_100005170();
  v27 = v26;

  v60 = v25;
  v61 = v27;
  v28 = sub_1000050A0();
  v30 = v29;
  v32 = v31;
  sub_100005070();
  v33 = sub_100005090();
  v35 = v34;
  v37 = v36;
  v39 = v38;

  sub_100004688(v28, v30, v32 & 1);

  v40 = v58;
  sub_1000048F0(v8, v58, &qword_10000C598, &qword_100005D50);
  LOBYTE(v28) = BYTE4(v54) & 1;
  LOBYTE(v60) = BYTE4(v54) & 1;
  v41 = v59;
  sub_1000048F0(v40, v59, &qword_10000C598, &qword_100005D50);
  v42 = sub_1000034F4(&qword_10000C5A8, &qword_100005D60);
  v43 = v41 + *(v42 + 48);
  v45 = v56;
  v44 = v57;
  v46 = v55;
  *v43 = v57;
  *(v43 + 8) = v46;
  *(v43 + 16) = v28;
  *(v43 + 24) = v45;
  v47 = v41 + *(v42 + 64);
  *v47 = v33;
  *(v47 + 8) = v35;
  LOBYTE(v41) = v37 & 1;
  *(v47 + 16) = v37 & 1;
  *(v47 + 24) = v39;
  v48 = v44;
  sub_100004884(v44, v46, v28);

  v49 = sub_100004E64();
  sub_100004884(v49, v50, v41);

  sub_10000494C(v8, &qword_10000C598, &qword_100005D50);
  v51 = sub_100004E64();
  sub_100004688(v51, v52, v41);

  sub_100004688(v48, v46, v60);

  return sub_10000494C(v40, &qword_10000C598, &qword_100005D50);
}

uint64_t sub_100002A20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  sub_100004F70();
  sub_100004DDC();
  v71 = v4;
  v72 = v3;
  __chkstk_darwin(v3);
  sub_100004E00();
  v7 = v6 - v5;
  sub_100004F60();
  sub_100004DDC();
  v65 = v9;
  v66 = v8;
  __chkstk_darwin(v8);
  sub_100004E00();
  v64 = (v11 - v10);
  sub_100004F80();
  sub_100004DDC();
  v67 = v13;
  v68 = v12;
  __chkstk_darwin(v12);
  sub_100004DF0();
  v70 = (v14 - v15);
  sub_100004E58();
  __chkstk_darwin(v16);
  v69 = &v64 - v17;
  v18 = sub_100004FC0();
  sub_100004E10();
  __chkstk_darwin(v19);
  sub_100004E00();
  v22 = (v21 - v20);
  v23 = sub_1000034F4(&qword_10000C5B0, &qword_100005D68);
  v24 = v23 - 8;
  __chkstk_darwin(v23);
  sub_100004DF0();
  v27 = v25 - v26;
  sub_100004E58();
  __chkstk_darwin(v28);
  v30 = &v64 - v29;
  v31 = *(v18 + 20);
  v32 = enum case for RoundedCornerStyle.continuous(_:);
  sub_100005010();
  sub_100004E10();
  (*(v33 + 104))(&v22[v31], v32);
  __asm { FMOV            V0.2D, #16.0 }

  *v22 = _Q0;
  v39 = [a1 icon];
  v40 = [v39 backgroundColor];

  v41 = [v40 paletteGradient];
  sub_100004164(&qword_10000C5B8, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
  sub_100005100();

  sub_100004894(v22);
  sub_100005140();
  sub_100004FB0();
  v42 = &v30[*(v24 + 44)];
  v43 = v75;
  *v42 = v74;
  *(v42 + 1) = v43;
  *(v42 + 2) = v76;
  v44 = [a1 reference];
  if (v44)
  {
    v45 = v44;
    v46 = [v44 attributionIcon];
  }

  else
  {
    v48 = sub_100004828(a1, &selRef_associatedAppBundleIdentifier);
    if (v49)
    {
      v50 = v48;
      v51 = v49;
      sub_1000049A4();
      sub_10000226C(v50, v51);
      goto LABEL_6;
    }

    v45 = [a1 icon];
    v46 = [v45 icon];
  }

  v47 = v46;

LABEL_6:
  v52 = v64;
  v53 = v65;
  *v64 = 0x4046000000000000;
  (*(v53 + 104))(v52, enum case for IconSize.customHeight(_:), v66);
  *v7 = [objc_opt_self() whiteColor];
  *(v7 + 8) = 0;
  (*(v71 + 104))(v7, enum case for IconView.DisplayMode.customColor(_:), v72);
  v54 = v69;
  sub_100004F90();
  v55 = v30;
  sub_1000048F0(v30, v27, &qword_10000C5B0, &qword_100005D68);
  v56 = v67;
  v57 = v68;
  v58 = *(v67 + 16);
  v59 = v70;
  v58(v70, v54, v68);
  v60 = v73;
  sub_1000048F0(v27, v73, &qword_10000C5B0, &qword_100005D68);
  v61 = sub_1000034F4(&qword_10000C5C0, &qword_100005D70);
  v58(v60 + *(v61 + 48), v59, v57);
  v62 = *(v56 + 8);
  v62(v54, v57);
  sub_10000494C(v55, &qword_10000C5B0, &qword_100005D68);
  v62(v59, v57);
  return sub_10000494C(v27, &qword_10000C5B0, &qword_100005D68);
}

double sub_100002FF0@<D0>(uint64_t a2@<X8>)
{
  swift_getErrorValue();
  sub_1000051B0();
  sub_100004634();
  v3 = sub_1000050A0();
  v5 = v4;
  v7 = v6;
  sub_1000050F0();
  v8 = sub_100005080();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  sub_100004688(v3, v5, v7 & 1);

  KeyPath = swift_getKeyPath();
  v16 = swift_getKeyPath();
  v17 = sub_100005050();
  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v14;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 1;
  *(a2 + 48) = v16;
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
  *(a2 + 65) = 256;
  *(a2 + 72) = v17;
  result = 0.0;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 1;
  return result;
}

id sub_100003138@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a4@<X3>, uint64_t a6@<X5>, NSURL *x8_0@<X8>)
{
  v8 = v7;
  sub_100004EF0(x8_0);
  v14 = v13;
  if (!a4)
  {
    v15 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  v15 = sub_100005160();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16 = sub_100005160();

LABEL_6:
  v17 = [v8 initWithURL:v14 allowsOldFormatFile:a2 & 1 suggestedName:v15 sourceApplication:v16];

  v18 = sub_100004F10();
  (*(*(v18 - 8) + 8))(a1, v18);
  return v17;
}

uint64_t sub_100003244()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100003284(void *a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  if (a1)
  {
    v4 = a1;
    v5 = [v4 record];
    v6 = objc_allocWithZone(WFWorkflow);
    v26 = sub_1000035B8(v5, 0, 0);
    sub_100004F50();
    v27 = sub_100004F40();
    v28 = sub_100004F30();
    v29 = sub_100001A28(v28);
    sub_1000036A4();
    v30 = v26;
    v31 = v27;
    sub_100005110();
    sub_100005040();

    v3(0);
  }

  else if (a2)
  {
    swift_errorRetain();
    swift_errorRetain();
    sub_1000034F4(&qword_10000C4A0, &qword_1000056C8);
    type metadata accessor for WFWorkflowError(0);
    if ((sub_100004E28(v8, v9, v10, v11, v12, v13, v14, v15, a2, v33, v35) & 1) != 0 || (swift_errorRetain(), type metadata accessor for WFShortcutSharingError(0), sub_100004E28(v16, v17, v18, v19, v20, v21, v22, v23, a2, v34, v36)))
    {

      v25 = sub_100001A28(v24);
      swift_errorRetain();
      sub_100003564();
      sub_100005110();
      sub_100005040();

      v3(0);
    }

    else
    {

      v3(a2);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000034DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000034F4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100003564()
{
  result = qword_10000C4A8;
  if (!qword_10000C4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C4A8);
  }

  return result;
}

id sub_1000035B8(void *a1, void *a2, uint64_t a3)
{
  v10 = 0;
  v6 = [v3 initWithRecord:a1 reference:a2 storageProvider:a3 error:&v10];
  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_100004EE0();

    swift_willThrow();
  }

  swift_unknownObjectRelease();
  return v6;
}

unint64_t sub_1000036A4()
{
  result = qword_10000C4B0;
  if (!qword_10000C4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C4B0);
  }

  return result;
}

uint64_t sub_1000036F8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003768(uint64_t a1)
{
  v2 = sub_100004164(&qword_10000C560, type metadata accessor for WFShortcutSharingError, &unk_100005B24);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1000037D4(uint64_t a1)
{
  v2 = sub_100004164(&qword_10000C560, type metadata accessor for WFShortcutSharingError, &unk_100005B24);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100003840(void *a1, uint64_t a2)
{
  v4 = sub_100004164(&qword_10000C560, type metadata accessor for WFShortcutSharingError, &unk_100005B24);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000038F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004164(&qword_10000C560, type metadata accessor for WFShortcutSharingError, &unk_100005B24);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000039B4(uint64_t a1)
{
  v2 = sub_100004164(&qword_10000C518, type metadata accessor for WFWorkflowError, &unk_1000058FC);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100003A20(uint64_t a1)
{
  v2 = sub_100004164(&qword_10000C518, type metadata accessor for WFWorkflowError, &unk_1000058FC);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100003A8C(void *a1, uint64_t a2)
{
  v4 = sub_100004164(&qword_10000C518, type metadata accessor for WFWorkflowError, &unk_1000058FC);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100003B24(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004164(&qword_10000C518, type metadata accessor for WFWorkflowError, &unk_1000058FC);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100003BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000051D0();
  sub_100005150();
  return sub_1000051E0();
}

void sub_100003C04(uint64_t a2@<X8>)
{
  sub_100003C38();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

__n128 sub_100003C40(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100003C4C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

void *sub_100003C8C(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
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

      return sub_100004E4C(result, a2);
    }

    *(result + 16) = 0;
    if (a2)
    {
      return sub_100004E4C(result, a2);
    }
  }

  return result;
}

uint64_t sub_100003CDC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

void *sub_100003D1C(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

      return sub_100004E4C(result, a2);
    }

    *(result + 8) = 0;
    if (a2)
    {
      return sub_100004E4C(result, a2);
    }
  }

  return result;
}

uint64_t sub_100003D60(uint64_t a1)
{
  v2 = sub_100004164(&qword_10000C530, type metadata accessor for WFShortcutSharingError, &unk_100005AE4);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100003DCC(uint64_t a1)
{
  v2 = sub_100004164(&qword_10000C530, type metadata accessor for WFShortcutSharingError, &unk_100005AE4);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100003E38(uint64_t a1)
{
  v2 = sub_100004164(&qword_10000C560, type metadata accessor for WFShortcutSharingError, &unk_100005B24);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100003EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100004164(&qword_10000C560, type metadata accessor for WFShortcutSharingError, &unk_100005B24);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_100003F28(uint64_t a1)
{
  v2 = sub_100004164(&qword_10000C4E0, type metadata accessor for WFWorkflowError, &unk_1000058B8);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100003F94(uint64_t a1)
{
  v2 = sub_100004164(&qword_10000C4E0, type metadata accessor for WFWorkflowError, &unk_1000058B8);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100004004(uint64_t a1)
{
  v2 = sub_100004164(&qword_10000C518, type metadata accessor for WFWorkflowError, &unk_1000058FC);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100004070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100004164(&qword_10000C518, type metadata accessor for WFWorkflowError, &unk_1000058FC);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_100004164(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000042DC()
{
  result = qword_10000C508;
  if (!qword_10000C508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C508);
  }

  return result;
}

void sub_100004510(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_100004634()
{
  result = qword_10000C568;
  if (!qword_10000C568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C568);
  }

  return result;
}

uint64_t sub_100004688(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100004698@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100004FD0();
  *a1 = result;
  return result;
}

uint64_t sub_1000046EC@<X0>(uint64_t a1@<X8>)
{
  result = sub_100004FF0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100004750(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000034F4(&qword_10000C578, &qword_100005D30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000047C0(uint64_t a1)
{
  v2 = sub_1000034F4(&qword_10000C578, &qword_100005D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100004828(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_100005170();
  }

  return sub_100004E64();
}

uint64_t sub_100004884(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100004894(uint64_t a1)
{
  v2 = sub_100004FC0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000048F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1000034F4(a3, a4);
  sub_100004E10();
  v5 = sub_100004E64();
  v6(v5);
  return a2;
}

uint64_t sub_10000494C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1000034F4(a2, a3);
  sub_100004E10();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1000049A4()
{
  result = qword_10000C5C8;
  if (!qword_10000C5C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000C5C8);
  }

  return result;
}

unint64_t sub_1000049EC()
{
  result = qword_10000C5E0;
  if (!qword_10000C5E0)
  {
    sub_100004A78(&qword_10000C5E8, &qword_100005DC8);
    sub_100004AC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C5E0);
  }

  return result;
}

uint64_t sub_100004A78(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100004AC0()
{
  result = qword_10000C5F0;
  if (!qword_10000C5F0)
  {
    sub_100004A78(&qword_10000C5F8, &qword_100005DD0);
    sub_100004B4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C5F0);
  }

  return result;
}

unint64_t sub_100004B4C()
{
  result = qword_10000C600;
  if (!qword_10000C600)
  {
    sub_100004A78(&qword_10000C608, &qword_100005DD8);
    sub_100004C04();
    sub_100004D00(&qword_10000C630, &qword_10000C638, &qword_100005DF0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C600);
  }

  return result;
}

unint64_t sub_100004C04()
{
  result = qword_10000C610;
  if (!qword_10000C610)
  {
    sub_100004A78(&qword_10000C618, &qword_100005DE0);
    sub_100004D00(&qword_10000C620, &qword_10000C628, &qword_100005DE8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C610);
  }

  return result;
}

uint64_t sub_100004D00(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100004A78(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100004E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  return _swift_dynamicCast(va, &a9, v11, a1, 6);
}