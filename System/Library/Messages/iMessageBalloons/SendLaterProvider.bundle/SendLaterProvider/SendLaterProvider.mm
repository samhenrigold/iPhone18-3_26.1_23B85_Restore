uint64_t sub_1980()
{
  v0 = sub_7EA0();
  sub_3F50(v0, qword_15E10);
  sub_3F18(v0, qword_15E10);
  return sub_7E90();
}

uint64_t sub_1D80(uint64_t a1)
{
  sub_3E50(a1, v16, &qword_15B40, &qword_9250);
  if (v17)
  {
    sub_8070();
    if (swift_dynamicCast())
    {
      v3 = OBJC_IVAR___SendLaterRootViewController_context;
      v4 = *(v1 + OBJC_IVAR___SendLaterRootViewController_context);
      *(v1 + OBJC_IVAR___SendLaterRootViewController_context) = v15;
      if (v4)
      {
        v5 = v1;
        v6 = v15;
        v7 = v4;
        v8 = sub_8080();

        if (v8)
        {

LABEL_15:
          return sub_3EB8(a1, &qword_15B40, &qword_9250);
        }

        v1 = v5;
        v13 = *(v5 + v3);
        if (!v13)
        {
LABEL_14:

          v7 = v4;
          goto LABEL_15;
        }
      }

      else
      {
        v12 = v15;
        v13 = v15;
        if (!v15)
        {
          goto LABEL_14;
        }
      }

      [v13 addObserver:v1];
      goto LABEL_14;
    }
  }

  else
  {
    sub_3EB8(v16, &qword_15B40, &qword_9250);
  }

  if (*(a1 + 24))
  {
    if (qword_15940 != -1)
    {
      swift_once();
    }

    v9 = sub_7EA0();
    sub_3F18(v9, qword_15E10);
    v7 = sub_7E80();
    v10 = sub_8020();
    if (os_log_type_enabled(v7, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v7, v10, "Could not set pluginContext, newValue is not of expected type CKSendLaterPluginInfo", v11, 2u);
    }

    goto LABEL_15;
  }

  return sub_3EB8(a1, &qword_15B40, &qword_9250);
}

char *sub_205C(uint64_t a1)
{
  *&v1[OBJC_IVAR___SendLaterRootViewController_presentationViewController] = 0;
  *&v1[OBJC_IVAR___SendLaterRootViewController_sendDelegate] = 0;
  *&v1[OBJC_IVAR___SendLaterRootViewController_balloonPlugin] = 0;
  *&v1[OBJC_IVAR___SendLaterRootViewController_balloonPluginDataSource] = 0;
  v1[OBJC_IVAR___SendLaterRootViewController_isiMessage] = 0;
  v1[OBJC_IVAR___SendLaterRootViewController_wantsDarkUI] = 0;
  v1[OBJC_IVAR___SendLaterRootViewController_wantsOpaqueUI] = 0;
  v1[OBJC_IVAR___SendLaterRootViewController_supportsQuickView] = 0;
  v1[OBJC_IVAR___SendLaterRootViewController_shouldSuppressEntryView] = 0;
  v1[OBJC_IVAR___SendLaterRootViewController_isPrimaryViewController] = 0;
  v1[OBJC_IVAR___SendLaterRootViewController_isDismissing] = 0;
  v1[OBJC_IVAR___SendLaterRootViewController_mayBeKeptInViewHierarchy] = 1;
  *&v1[OBJC_IVAR___SendLaterRootViewController_context] = 0;
  *&v1[OBJC_IVAR___SendLaterRootViewController_timePickerViewModel] = 0;
  *&v1[OBJC_IVAR___SendLaterRootViewController_cancellables] = &_swiftEmptySetSingleton;
  v1[OBJC_IVAR___SendLaterRootViewController_shouldShowChatChrome] = 1;
  v1[OBJC_IVAR___SendLaterRootViewController_inExpandedPresentation] = 1;
  v1[OBJC_IVAR___SendLaterRootViewController_inFullScreenModalPresentation] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for SendLaterRootViewController();
  v3 = objc_msgSendSuper2(&v6, "initWithNibName:bundle:", 0, 0);
  v4 = *&v3[OBJC_IVAR___SendLaterRootViewController_balloonPlugin];
  *&v3[OBJC_IVAR___SendLaterRootViewController_balloonPlugin] = a1;

  return v3;
}

void sub_220C()
{
  v1 = v0;
  v2 = sub_3E00(&qword_15B80, &qword_90D8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v75 = &v73 - v4;
  v5 = sub_3E00(&qword_15B30, &qword_9068);
  __chkstk_darwin(v5 - 8);
  v7 = &v73 - v6;
  v8 = sub_7E00();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v73 - v13;
  v15 = type metadata accessor for SendLaterRootViewController();
  v76.receiver = v0;
  v76.super_class = v15;
  objc_msgSendSuper2(&v76, "viewDidLoad");
  v16 = OBJC_IVAR___SendLaterRootViewController_context;
  v17 = *&v0[OBJC_IVAR___SendLaterRootViewController_context];
  if (v17)
  {
    goto LABEL_7;
  }

  v74 = v3;
  if (qword_15940 != -1)
  {
    swift_once();
  }

  v18 = sub_7EA0();
  sub_3F18(v18, qword_15E10);
  v19 = sub_7E80();
  v20 = sub_8020();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v73 = v2;
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "Did not have a plugin context for tracking the selected date. We'll set the current date on the view model as a fallback, but this is programmer error!", v21, 2u);
    v2 = v73;
  }

  v17 = *&v1[v16];
  v3 = v74;
  if (v17)
  {
LABEL_7:
    v22 = [v17 selectedDate];
    sub_7DD0();

    v23 = *(v9 + 32);
    v23(v7, v12, v8);
    (*(v9 + 56))(v7, 0, 1, v8);
    v23(v14, v7, v8);
  }

  else
  {
    (*(v9 + 56))(v7, 1, 1, v8);
    sub_7DF0();
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      sub_3EB8(v7, &qword_15B30, &qword_9068);
    }
  }

  type metadata accessor for TimePickerViewModel(0);
  swift_allocObject();
  v24 = sub_53F8(v14);
  swift_beginAccess();
  sub_3E00(&qword_15B88, &qword_90E0);
  v25 = v75;
  sub_7EE0();
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_4730(&qword_15B90, &qword_15B80, &qword_90D8, &protocol conformance descriptor for Published<A>.Publisher);
  sub_7F20();

  (*(v3 + 8))(v25, v2);
  swift_beginAccess();
  sub_7EB0();
  swift_endAccess();

  *&v1[OBJC_IVAR___SendLaterRootViewController_timePickerViewModel] = v24;

  v26 = objc_allocWithZone(type metadata accessor for TimePickerView());

  v28 = sub_6258(v27);
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 clearColor];
  [v30 setBackgroundColor:v31];

  [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
  v32 = [v1 view];
  if (!v32)
  {
    __break(1u);
    goto LABEL_23;
  }

  v33 = v32;
  [v32 addSubview:v30];

  v34 = [objc_opt_self() sharedFeatureFlags];
  v35 = [v34 isEntryViewRefreshEnabled];

  v36 = [v1 view];
  v37 = v36;
  if (v35)
  {
    if (!v36)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v38 = &selRef_clearColor;
LABEL_14:
    v39 = [v29 *v38];
    [v37 setBackgroundColor:v39];

    v40 = [v1 view];
    if (v40)
    {
      v41 = v40;
      [v40 bounds];
      v43 = v42;
      v45 = v44;
      v47 = v46;
      v49 = v48;

      [v30 setFrame:{v43, v45, v47, v49}];
      sub_3E00(&qword_15B98, qword_90E8);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_9000;
      v51 = [v30 leadingAnchor];
      v52 = [v1 view];
      if (v52)
      {
        v53 = v52;
        v54 = [v52 leadingAnchor];

        v55 = [v51 constraintEqualToAnchor:v54 constant:0.0];
        *(v50 + 32) = v55;
        v56 = [v30 trailingAnchor];
        v57 = [v1 view];
        if (v57)
        {
          v58 = v57;
          v59 = [v57 trailingAnchor];

          v60 = [v56 constraintEqualToAnchor:v59 constant:-0.0];
          *(v50 + 40) = v60;
          v61 = [v30 topAnchor];
          v62 = [v1 view];
          if (v62)
          {
            v63 = v62;
            v64 = [v62 topAnchor];

            v65 = [v61 constraintEqualToAnchor:v64 constant:0.0];
            *(v50 + 48) = v65;
            v66 = [v30 bottomAnchor];

            v67 = [v1 view];
            if (v67)
            {
              v68 = v67;
              v69 = objc_opt_self();
              v70 = [v68 bottomAnchor];

              v71 = [v66 constraintEqualToAnchor:v70 constant:-0.0];
              *(v50 + 56) = v71;
              sub_4778(0, &unk_15BA0, NSLayoutConstraint_ptr);
              isa = sub_7FF0().super.isa;

              [v69 activateConstraints:isa];

              return;
            }

            goto LABEL_27;
          }

LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v36)
  {
    v38 = &selRef_systemGray4Color;
    goto LABEL_14;
  }

LABEL_29:
  __break(1u);
}

void sub_2B70(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR___SendLaterRootViewController_context);
    v4 = Strong;
    v5 = v3;

    if (v3)
    {
      isa = sub_7DC0().super.isa;
      [v5 setSelectedDate:isa];
    }
  }
}

void sub_2C50()
{
  v1 = sub_7F30();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_7F50();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SendLaterRootViewController();
  v70.receiver = v0;
  v70.super_class = v9;
  objc_msgSendSuper2(&v70, "viewDidLayoutSubviews");
  v10 = [v0 view];
  if (!v10)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v11 = v10;
  v12 = [v10 window];

  if (!v12)
  {
    v12 = [objc_opt_self() mainScreen];
  }

  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = [v0 view];
  if (!v21)
  {
    goto LABEL_21;
  }

  v22 = v21;
  [v21 frame];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v72.origin.x = v24;
  v72.origin.y = v26;
  v72.size.width = v28;
  v72.size.height = v30;
  Height = CGRectGetHeight(v72);
  v73.origin.x = v14;
  v73.origin.y = v16;
  v73.size.width = v18;
  v73.size.height = v20;
  if (CGRectGetHeight(v73) * 0.5 >= Height)
  {
    return;
  }

  if (qword_15940 != -1)
  {
    swift_once();
  }

  v32 = sub_7EA0();
  sub_3F18(v32, qword_15E10);
  v33 = v0;
  v34 = sub_7E80();
  v35 = sub_8030();

  v36 = os_log_type_enabled(v34, v35);
  v61 = v5;
  v62 = v2;
  v60 = v6;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    aBlock = v38;
    *v37 = 136315138;
    v39 = [v33 sheetPresentationController];
    if (v39)
    {
      v40 = v39;
      v41 = [v39 detents];

      sub_4778(0, &qword_15B70, UISheetPresentationControllerDetent_ptr);
      v42 = sub_8000();
    }

    else
    {
      v42 = 0;
    }

    v69 = v42;
    sub_3E00(&qword_15B48, &qword_90C0);
    v43 = sub_7FB0();
    v45 = sub_409C(v43, v44, &aBlock);

    *(v37 + 4) = v45;
    _os_log_impl(&dword_0, v34, v35, "Detected full-screen presentation of time picker. Dismissing. Detents: %s", v37, 0xCu);
    sub_4644(v38);
  }

  else
  {
  }

  v46 = [objc_opt_self() sharedInstance];
  if (!v46)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v47 = v46;
  v48 = sub_7F90();
  v49 = sub_7F90();
  aBlock = 0x3A73746E65746544;
  v64 = 0xE900000000000020;
  v50 = [v33 sheetPresentationController];
  if (v50)
  {
    v51 = v50;
    v52 = [v50 detents];

    sub_4778(0, &qword_15B70, UISheetPresentationControllerDetent_ptr);
    v53 = sub_8000();
  }

  else
  {
    v53 = 0;
  }

  v69 = v53;
  sub_3E00(&qword_15B48, &qword_90C0);
  v71._countAndFlagsBits = sub_7FC0();
  sub_7FD0(v71);

  v54 = sub_7F90();

  [v47 forceAutoBugCaptureWithSubType:v48 errorPayload:0 type:v49 context:v54];

  sub_4778(0, &qword_15B50, OS_dispatch_queue_ptr);
  v55 = sub_8050();
  v56 = swift_allocObject();
  *(v56 + 16) = v33;
  v67 = sub_3FEC;
  v68 = v56;
  aBlock = _NSConcreteStackBlock;
  v64 = 1107296256;
  v65 = sub_34CC;
  v66 = &unk_10728;
  v57 = _Block_copy(&aBlock);
  v58 = v33;

  sub_7F40();
  aBlock = &_swiftEmptyArrayStorage;
  sub_400C(&qword_15B58, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_3E00(&qword_15B60, &qword_90C8);
  sub_4730(&qword_15B68, &qword_15B60, &qword_90C8, &protocol conformance descriptor for [A]);
  sub_80A0();
  sub_8060();
  _Block_release(v57);

  (*(v62 + 8))(v4, v1);
  (*(v60 + 8))(v8, v61);
}

id sub_33C4(uint64_t a1)
{
  if (qword_15940 != -1)
  {
    swift_once();
  }

  v2 = sub_7EA0();
  sub_3F18(v2, qword_15E10);
  v3 = sub_7E80();
  v4 = sub_8040();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "Dismissing programmatically due to a full-screen presentation.", v5, 2u);
  }

  result = *(a1 + OBJC_IVAR___SendLaterRootViewController_sendDelegate);
  if (result)
  {

    return [result dismiss];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_34CC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_3578(void *a1, uint64_t a2, uint64_t a3, const char **a4, char a5)
{
  v12.receiver = a1;
  v12.super_class = type metadata accessor for SendLaterRootViewController();
  v8 = *a4;
  v9 = v12.receiver;
  objc_msgSendSuper2(&v12, v8, a3);
  v10 = *&v9[OBJC_IVAR___SendLaterRootViewController_context];
  if (v10)
  {
    v11 = v10;
    [v11 setShowingDatePicker:{a5 & 1, v12.receiver, v12.super_class}];
  }
}

uint64_t sub_36A0(void *a1)
{
  v43 = sub_7E00();
  v45 = *(v43 - 8);
  v3 = __chkstk_darwin(v43);
  v41 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v42 = &v38 - v5;
  v6 = sub_3E00(&qword_15B28, &qword_9060);
  __chkstk_darwin(v6);
  v8 = &v38 - v7;
  v9 = sub_3E00(&qword_15B30, &qword_9068);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v38 - v14;
  result = __chkstk_darwin(v13);
  v18 = &v38 - v17;
  v19 = *(v1 + OBJC_IVAR___SendLaterRootViewController_context);
  v44 = a1;
  if (v19)
  {
    v20 = v19 == a1;
  }

  else
  {
    v20 = 0;
  }

  if (v20)
  {
    v39 = OBJC_IVAR___SendLaterRootViewController_timePickerViewModel;
    v40 = v1;
    if (*(v1 + OBJC_IVAR___SendLaterRootViewController_timePickerViewModel))
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_7EF0();

      v21 = v45;
      v22 = *(v45 + 56);
      v23 = v18;
      v24 = 0;
    }

    else
    {
      v21 = v45;
      v22 = *(v45 + 56);
      v23 = &v38 - v17;
      v24 = 1;
    }

    v25 = v43;
    v22(v23, v24, 1, v43);
    v26 = [v44 selectedDate];
    sub_7DD0();

    v22(v15, 0, 1, v25);
    v27 = *(v6 + 48);
    sub_3E50(v18, v8, &qword_15B30, &qword_9068);
    sub_3E50(v15, &v8[v27], &qword_15B30, &qword_9068);
    v28 = *(v21 + 48);
    if (v28(v8, 1, v25) == 1)
    {
      sub_3EB8(v15, &qword_15B30, &qword_9068);
      sub_3EB8(v18, &qword_15B30, &qword_9068);
      if (v28(&v8[v27], 1, v25) == 1)
      {
        return sub_3EB8(v8, &qword_15B30, &qword_9068);
      }
    }

    else
    {
      sub_3E50(v8, v12, &qword_15B30, &qword_9068);
      if (v28(&v8[v27], 1, v25) != 1)
      {
        v34 = v45;
        v35 = v42;
        (*(v45 + 32))(v42, &v8[v27], v25);
        sub_400C(&qword_15B38, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v36 = sub_7F80();
        v37 = *(v34 + 8);
        v37(v35, v25);
        sub_3EB8(v15, &qword_15B30, &qword_9068);
        sub_3EB8(v18, &qword_15B30, &qword_9068);
        v37(v12, v25);
        result = sub_3EB8(v8, &qword_15B30, &qword_9068);
        v29 = v40;
        if (v36)
        {
          return result;
        }

        goto LABEL_15;
      }

      sub_3EB8(v15, &qword_15B30, &qword_9068);
      sub_3EB8(v18, &qword_15B30, &qword_9068);
      (*(v45 + 8))(v12, v25);
    }

    result = sub_3EB8(v8, &qword_15B28, &qword_9060);
    v29 = v40;
LABEL_15:
    if (*(v29 + v39))
    {

      v30 = [v44 selectedDate];
      v31 = v42;
      sub_7DD0();

      swift_getKeyPath();
      swift_getKeyPath();
      v32 = v45;
      v33 = v43;
      (*(v45 + 16))(v41, v31, v43);
      sub_7F00();
      return (*(v32 + 8))(v31, v33);
    }
  }

  return result;
}

id sub_3D0C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SendLaterRootViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_3E00(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_3E50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_3E00(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_3EB8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_3E00(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_3F18(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_3F50(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_3FB4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3FF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_400C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_4054(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_409C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_4168(v11, 0, 0, 1, a1, a2);
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
    sub_4690(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_4644(v11);
  return v7;
}

unint64_t sub_4168(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_4274(a5, a6);
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
    result = sub_80D0();
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

char *sub_4274(uint64_t a1, unint64_t a2)
{
  v3 = sub_42C0(a1, a2);
  sub_43F0(&off_106D8);
  return v3;
}

char *sub_42C0(uint64_t a1, unint64_t a2)
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

  v6 = sub_44DC(v5, 0);
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

  result = sub_80D0();
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
        v10 = sub_7FE0();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_44DC(v10, 0);
        result = sub_80C0();
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

uint64_t sub_43F0(uint64_t result)
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

  result = sub_4550(result, v11, 1, v3);
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

void *sub_44DC(uint64_t a1, uint64_t a2)
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

  sub_3E00(&qword_15B78, &qword_90D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_4550(char *result, int64_t a2, char a3, char *a4)
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
    sub_3E00(&qword_15B78, &qword_90D0);
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

uint64_t sub_4644(void *a1)
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

uint64_t sub_4690(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_46F0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_4730(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_4054(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_4778(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_47C0()
{
  *(v0 + OBJC_IVAR___SendLaterRootViewController_presentationViewController) = 0;
  *(v0 + OBJC_IVAR___SendLaterRootViewController_sendDelegate) = 0;
  *(v0 + OBJC_IVAR___SendLaterRootViewController_balloonPlugin) = 0;
  *(v0 + OBJC_IVAR___SendLaterRootViewController_balloonPluginDataSource) = 0;
  *(v0 + OBJC_IVAR___SendLaterRootViewController_isiMessage) = 0;
  *(v0 + OBJC_IVAR___SendLaterRootViewController_wantsDarkUI) = 0;
  *(v0 + OBJC_IVAR___SendLaterRootViewController_wantsOpaqueUI) = 0;
  *(v0 + OBJC_IVAR___SendLaterRootViewController_supportsQuickView) = 0;
  *(v0 + OBJC_IVAR___SendLaterRootViewController_shouldSuppressEntryView) = 0;
  *(v0 + OBJC_IVAR___SendLaterRootViewController_isPrimaryViewController) = 0;
  *(v0 + OBJC_IVAR___SendLaterRootViewController_isDismissing) = 0;
  *(v0 + OBJC_IVAR___SendLaterRootViewController_mayBeKeptInViewHierarchy) = 1;
  *(v0 + OBJC_IVAR___SendLaterRootViewController_context) = 0;
  *(v0 + OBJC_IVAR___SendLaterRootViewController_timePickerViewModel) = 0;
  *(v0 + OBJC_IVAR___SendLaterRootViewController_cancellables) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR___SendLaterRootViewController_shouldShowChatChrome) = 1;
  *(v0 + OBJC_IVAR___SendLaterRootViewController_inExpandedPresentation) = 1;
  *(v0 + OBJC_IVAR___SendLaterRootViewController_inFullScreenModalPresentation) = 0;
  sub_80E0();
  __break(1u);
}

uint64_t sub_4900()
{
  v0 = sub_7EA0();
  sub_3F50(v0, qword_15E28);
  sub_3F18(v0, qword_15E28);
  return sub_7E90();
}

uint64_t sub_49A8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_7EF0();
}

uint64_t sub_4A18@<X0>(char *a1@<X8>)
{
  v2 = sub_3E00(&qword_15DD8, &unk_9240);
  v3 = __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v21 - v6;
  v8 = sub_7E00();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v21 - v13;
  sub_4CAC(&v21 - v13);
  sub_4FF4(v12);
  sub_7D58(&qword_15DE0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  result = sub_7F70();
  if (result)
  {
    v16 = *(v9 + 32);
    v16(v7, v14, v8);
    v16(&v7[*(v2 + 48)], v12, v8);
    sub_3E50(v7, v5, &qword_15DD8, &unk_9240);
    v17 = *(v2 + 48);
    v16(a1, v5, v8);
    v18 = *(v9 + 8);
    v18(&v5[v17], v8);
    sub_79C8(v7, v5);
    v19 = *(v2 + 48);
    v20 = sub_3E00(&unk_15C70, "6'");
    v16(&a1[*(v20 + 36)], &v5[v19], v8);
    return (v18)(v5, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_4CAC@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v23 = sub_7E00();
  v1 = *(v23 - 8);
  __chkstk_darwin(v23);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_7E50();
  v21 = v4;
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_7E70();
  v8 = *(v22 - 8);
  __chkstk_darwin(v22);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_3E00(&qword_15B30, &qword_9068);
  __chkstk_darwin(v11 - 8);
  v13 = &v20 - v12;
  sub_7E40();
  (*(v5 + 104))(v7, enum case for Calendar.Component.minute(_:), v4);
  v14 = sub_7F90();
  v15 = sub_7F90();
  IMGetCachedDomainIntForKeyWithDefaultValue();

  sub_7DE0();
  sub_7E30();
  v16 = *(v1 + 8);
  v17 = v3;
  v18 = v23;
  v16(v17, v23);
  (*(v5 + 8))(v7, v21);
  (*(v8 + 8))(v10, v22);
  result = (*(v1 + 48))(v13, 1, v18);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_70A8(v20);
    return (v16)(v13, v18);
  }

  return result;
}

uint64_t sub_4FF4@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v26 = sub_7E00();
  v1 = *(v26 - 8);
  __chkstk_darwin(v26);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_7E50();
  v4 = *(v25 - 8);
  __chkstk_darwin(v25);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_7E70();
  v7 = *(v24 - 8);
  __chkstk_darwin(v24);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3E00(&qword_15B30, &qword_9068);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - v11;
  v13 = [objc_opt_self() sharedInstanceForBagType:1];
  v14 = sub_7F90();
  v15 = [v13 objectForKey:v14];

  if (v15)
  {
    sub_8090();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v30[0] = v28;
  v30[1] = v29;
  if (*(&v29 + 1))
  {
    sub_4778(0, &qword_15DE8, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v16 = v27;
      [v27 integerValue];
    }
  }

  else
  {
    sub_3EB8(v30, &qword_15B40, &qword_9250);
  }

  sub_7E40();
  v17 = v25;
  (*(v4 + 104))(v6, enum case for Calendar.Component.day(_:), v25);
  sub_7DE0();
  sub_7E30();
  v18 = *(v1 + 8);
  v19 = v3;
  v20 = v26;
  v18(v19, v26);
  (*(v4 + 8))(v6, v17);
  (*(v7 + 8))(v9, v24);
  result = (*(v1 + 48))(v12, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_70A8(v23);
    return (v18)(v12, v20);
  }

  return result;
}

uint64_t sub_53F8(char *a1)
{
  v52 = a1;
  v51 = sub_7E50();
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v47 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_7E70();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v46 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_7E00();
  v3 = *(v43 - 8);
  v4 = __chkstk_darwin(v43);
  v44 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v41 - v6;
  v42 = sub_3E00(&qword_15DC0, &qword_9228);
  v8 = *(v42 - 8);
  __chkstk_darwin(v42);
  v10 = &v41 - v9;
  v11 = sub_3E00(&unk_15C70, "6'");
  v12 = __chkstk_darwin(v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v41 - v15;
  v17 = OBJC_IVAR____TtC17SendLaterProvider19TimePickerViewModel__dateClosedRange;
  type metadata accessor for TimePickerViewModel(0);
  sub_4A18(v16);
  sub_3E50(v16, v14, &unk_15C70, "6'");
  sub_7ED0();
  v18 = v16;
  v19 = v43;
  sub_3EB8(v18, &unk_15C70, "6'");
  v20 = v45;
  (*(v8 + 32))(v45 + v17, v10, v42);
  v21 = v20;
  v41 = OBJC_IVAR____TtC17SendLaterProvider19TimePickerViewModel_dateRangeUpdateTimer;
  *(v20 + OBJC_IVAR____TtC17SendLaterProvider19TimePickerViewModel_dateRangeUpdateTimer) = 0;
  v22 = *(v3 + 16);
  v22(v7, v52, v19);
  swift_beginAccess();
  v23 = v44;
  v22(v44, v7, v19);
  v24 = v23;
  sub_7ED0();
  v25 = *(v3 + 8);
  v42 = v3 + 8;
  v25(v7, v19);
  swift_endAccess();
  sub_7DF0();
  v26 = v46;
  sub_7E40();
  v27 = v49;
  v28 = v47;
  v29 = v51;
  (*(v49 + 104))(v47, enum case for Calendar.Component.second(_:), v51);
  v30 = v7;
  v31 = v26;
  v32 = sub_7E60();
  (*(v27 + 8))(v28, v29);
  result = (*(v48 + 8))(v31, v50);
  if (__OFSUB__(60, v32))
  {
    __break(1u);
  }

  else
  {
    sub_7DB0();
    v34 = swift_allocObject();
    swift_weakInit();
    v35 = objc_allocWithZone(NSTimer);

    isa = sub_7DC0().super.isa;
    aBlock[4] = sub_79A8;
    aBlock[5] = v34;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_7690;
    aBlock[3] = &unk_107C8;
    v37 = _Block_copy(aBlock);
    v38 = [v35 initWithFireDate:isa interval:1 repeats:v37 block:60.0];
    _Block_release(v37);

    v39 = [objc_opt_self() mainRunLoop];
    [v39 addTimer:v38 forMode:NSDefaultRunLoopMode];

    v25(v52, v19);
    v25(v24, v19);
    v25(v30, v19);
    v40 = *(v21 + v41);
    *(v21 + v41) = v38;

    return v21;
  }

  return result;
}

uint64_t sub_5A38(uint64_t a1, uint64_t a2)
{
  v2 = sub_3E00(&unk_15C70, "6'");
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v25[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v25[-1] - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v25[-1] - v10;
  __chkstk_darwin(v9);
  v13 = &v25[-1] - v12;
  type metadata accessor for TimePickerViewModel(0);
  sub_4A18(v13);
  if (qword_15948 != -1)
  {
    swift_once();
  }

  v14 = sub_7EA0();
  sub_3F18(v14, qword_15E28);
  sub_3E50(v13, v11, &unk_15C70, "6'");
  v15 = sub_7E80();
  v16 = sub_8010();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v25[0] = v18;
    *v17 = 136315138;
    v19 = sub_5D88();
    v24 = v13;
    v21 = v20;
    sub_3EB8(v11, &unk_15C70, "6'");
    v22 = sub_409C(v19, v21, v25);
    v13 = v24;

    *(v17 + 4) = v22;
    _os_log_impl(&dword_0, v15, v16, "Update timer fired. Updating dateClosedRange to %s", v17, 0xCu);
    sub_4644(v18);
  }

  else
  {

    sub_3EB8(v11, &unk_15C70, "6'");
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_3E50(v13, v8, &unk_15C70, "6'");
    swift_getKeyPath();
    swift_getKeyPath();
    sub_3E50(v8, v5, &unk_15C70, "6'");
    sub_7F00();
    sub_3EB8(v8, &unk_15C70, "6'");
  }

  return sub_3EB8(v13, &unk_15C70, "6'");
}

uint64_t sub_5D88()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  [v0 setTimeStyle:2];
  [v0 setDateStyle:1];
  isa = sub_7DC0().super.isa;
  v2 = [v0 stringFromDate:isa];

  v3 = sub_7FA0();
  v11 = v3;
  v12._countAndFlagsBits = 3026478;
  v12._object = 0xE300000000000000;
  sub_7FD0(v12);
  sub_3E00(&unk_15C70, "6'");
  v4 = [objc_allocWithZone(NSDateFormatter) init];
  [v4 setTimeStyle:2];
  [v4 setDateStyle:1];
  v5 = sub_7DC0().super.isa;
  v6 = [v4 stringFromDate:v5];

  v7 = sub_7FA0();
  v9 = v8;

  v13._countAndFlagsBits = v7;
  v13._object = v9;
  sub_7FD0(v13);

  return v11;
}

uint64_t sub_5F14()
{
  v1 = OBJC_IVAR____TtC17SendLaterProvider19TimePickerViewModel_dateRangeUpdateTimer;
  v2 = *(v0 + OBJC_IVAR____TtC17SendLaterProvider19TimePickerViewModel_dateRangeUpdateTimer);
  if (v2)
  {
    [v2 invalidate];
  }

  v3 = OBJC_IVAR____TtC17SendLaterProvider19TimePickerViewModel__date;
  v4 = sub_3E00(&qword_15B88, &qword_90E0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC17SendLaterProvider19TimePickerViewModel__dateClosedRange;
  v6 = sub_3E00(&qword_15DC0, &qword_9228);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TimePickerViewModel(uint64_t a1)
{
  result = qword_15C50;
  if (!qword_15C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_6088(uint64_t a1)
{
  sub_615C(319);
  if (v1 <= 0x3F)
  {
    sub_61B4(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_615C(uint64_t a1)
{
  if (!qword_15C60)
  {
    sub_7E00();
    v1 = sub_7F10();
    if (!v2)
    {
      atomic_store(v1, &qword_15C60);
    }
  }
}

void sub_61B4(uint64_t a1)
{
  if (!qword_15C68)
  {
    sub_4054(&unk_15C70, "6'");
    v1 = sub_7F10();
    if (!v2)
    {
      atomic_store(v1, &qword_15C68);
    }
  }
}

uint64_t sub_6218@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for TimePickerViewModel(0);
  result = sub_7EC0();
  *a2 = result;
  return result;
}

char *sub_6258(uint64_t a1)
{
  v3 = sub_3E00(&qword_15DC8, &unk_9230);
  v4 = *(v3 - 8);
  v65 = v3;
  v66 = v4;
  __chkstk_darwin(v3);
  v64 = &v55 - v5;
  v67 = sub_7E00();
  v6 = *(v67 - 8);
  __chkstk_darwin(v67);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_3E00(&unk_15C70, "6'") - 8;
  __chkstk_darwin(v61);
  v10 = &v55 - v9;
  *&v1[OBJC_IVAR____TtC17SendLaterProvider14TimePickerView_cancellables] = &_swiftEmptySetSingleton;
  v63 = a1;
  *&v1[OBJC_IVAR____TtC17SendLaterProvider14TimePickerView_model] = a1;
  v11 = objc_allocWithZone(UIDatePicker);

  v12 = [v11 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC17SendLaterProvider14TimePickerView_datePicker] = v12;
  v13 = type metadata accessor for TimePickerView();
  v68.receiver = v1;
  v68.super_class = v13;
  v14 = objc_msgSendSuper2(&v68, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v15 = *&v14[OBJC_IVAR____TtC17SendLaterProvider14TimePickerView_datePicker];
  v16 = OBJC_IVAR____TtC17SendLaterProvider14TimePickerView_datePicker;
  v58 = OBJC_IVAR____TtC17SendLaterProvider14TimePickerView_datePicker;
  v60 = OBJC_IVAR____TtC17SendLaterProvider14TimePickerView_model;
  swift_getKeyPath();
  swift_getKeyPath();
  v62 = v14;
  v17 = v15;

  sub_7EF0();

  v59 = *(v6 + 16);
  v18 = v67;
  v59(v8, v10, v67);
  sub_3EB8(v10, &unk_15C70, "6'");
  isa = sub_7DC0().super.isa;
  v20 = v6 + 8;
  v21 = *(v6 + 8);
  v57 = v20;
  v21(v8, v18);
  v56 = v21;
  [v17 setMinimumDate:isa];

  v22 = *&v14[v16];
  swift_getKeyPath();
  swift_getKeyPath();
  v23 = v22;

  sub_7EF0();

  v24 = v67;
  v59(v8, &v10[*(v61 + 44)], v67);
  sub_3EB8(v10, &unk_15C70, "6'");
  v25 = sub_7DC0().super.isa;
  v21(v8, v24);
  [v23 setMaximumDate:v25];

  v26 = v58;
  v27 = *&v14[v58];
  swift_getKeyPath();
  swift_getKeyPath();
  v28 = v27;

  sub_7EF0();

  v29 = sub_7DC0().super.isa;
  v56(v8, v67);
  [v28 setDate:v29];

  [*&v14[v26] setDatePickerMode:2];
  [*&v14[v26] setPreferredDatePickerStyle:1];
  v30 = v62;
  [*&v14[v26] addTarget:v62 action:"dateChanged:" forControlEvents:4096];
  v31 = *&v14[v26];
  [v31 addTarget:v30 action:"disableKeypad:" forControlEvents:0x10000];

  v32 = *&v14[v26];
  v33 = v30;
  [v33 addSubview:v32];
  [*&v14[v26] setTranslatesAutoresizingMaskIntoConstraints:0];
  v34 = objc_opt_self();
  sub_3E00(&qword_15B98, qword_90E8);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_9000;
  v36 = [*&v14[v26] leadingAnchor];
  v37 = [v33 leadingAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];

  *(v35 + 32) = v38;
  v39 = [*&v14[v26] trailingAnchor];
  v40 = [v33 trailingAnchor];

  v41 = [v39 constraintEqualToAnchor:v40];
  *(v35 + 40) = v41;
  v42 = [*&v14[v26] topAnchor];
  v43 = [v33 topAnchor];

  v44 = [v42 constraintEqualToAnchor:v43];
  *(v35 + 48) = v44;
  v45 = [*&v14[v26] bottomAnchor];
  v46 = [v33 bottomAnchor];

  v47 = [v45 constraintEqualToAnchor:v46];
  *(v35 + 56) = v47;
  sub_4778(0, &unk_15BA0, NSLayoutConstraint_ptr);
  v48 = sub_7FF0().super.isa;

  [v34 activateConstraints:v48];

  v49 = objc_opt_self();
  v50 = v33;
  v51 = [v49 clearColor];
  [v50 setBackgroundColor:v51];

  swift_beginAccess();
  sub_3E00(&qword_15DC0, &qword_9228);
  v52 = v64;
  sub_7EE0();
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_790C();
  v53 = v65;
  sub_7F20();

  (*(v66 + 8))(v52, v53);
  swift_beginAccess();
  sub_7EB0();
  swift_endAccess();

  return v50;
}

void sub_6B30(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC17SendLaterProvider14TimePickerView_datePicker);

    isa = sub_7DC0().super.isa;
    [v4 setMinimumDate:isa];
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    v8 = *(v6 + OBJC_IVAR____TtC17SendLaterProvider14TimePickerView_datePicker);

    sub_3E00(&unk_15C70, "6'");
    v9 = sub_7DC0().super.isa;
    [v8 setMaximumDate:v9];
  }
}

void sub_6D18(void *a1)
{
  v3 = sub_7E00();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  sub_4778(0, &qword_15DB8, NSObject_ptr);
  v10 = *(v1 + OBJC_IVAR____TtC17SendLaterProvider14TimePickerView_datePicker);
  v11 = sub_8080();

  if (v11)
  {

    v12 = [a1 date];
    sub_7DD0();

    swift_getKeyPath();
    swift_getKeyPath();
    (*(v4 + 16))(v7, v9, v3);
    sub_7F00();
    (*(v4 + 8))(v9, v3);
  }
}

id sub_6FE8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TimePickerView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_70A8@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_3E00(&qword_15B30, &qword_9068);
  __chkstk_darwin(v1 - 8);
  v26 = &v25 - v2;
  v3 = sub_7DA0();
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7E70();
  v28 = *(v6 - 8);
  v29 = v6;
  __chkstk_darwin(v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7E40();
  sub_3E00(&qword_15DF0, &qword_9258);
  v9 = sub_7E50();
  v10 = *(v9 - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = 4 * v11;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_9100;
  v15 = v14 + v12;
  v16 = *(v10 + 104);
  v16(v15, enum case for Calendar.Component.year(_:), v9);
  v16(v15 + v11, enum case for Calendar.Component.month(_:), v9);
  v16(v15 + 2 * v11, enum case for Calendar.Component.day(_:), v9);
  v17 = 3 * v11;
  v18 = v27;
  v16(v15 + v17, enum case for Calendar.Component.hour(_:), v9);
  v19 = v15 + v13;
  v20 = v26;
  v16(v19, enum case for Calendar.Component.minute(_:), v9);
  sub_7A38(v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_7E10();

  sub_7E20();
  (*(v30 + 8))(v5, v31);
  (*(v28 + 8))(v8, v29);
  v21 = sub_7E00();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  if (v23(v20, 1, v21) != 1)
  {
    return (*(v22 + 32))(v32, v20, v21);
  }

  (*(v22 + 16))(v32, v18, v21);
  result = (v23)(v20, 1, v21);
  if (result != 1)
  {
    return sub_3EB8(v20, &qword_15B30, &qword_9068);
  }

  return result;
}

uint64_t sub_751C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_7E00();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  v10(v7, v9, v3);

  sub_7F00();
  return (*(v4 + 8))(v9, v3);
}

void sub_7690(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_76F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_7EF0();
}

uint64_t sub_7798(uint64_t a1, uint64_t *a2)
{
  v3 = sub_3E00(&unk_15C70, "6'");
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v10 - v7;
  sub_3E50(a1, &v10 - v7, &unk_15C70, "6'");
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E50(v8, v6, &unk_15C70, "6'");

  sub_7F00();
  return sub_3EB8(v8, &unk_15C70, "6'");
}

uint64_t sub_78CC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_790C()
{
  result = qword_15DD0;
  if (!qword_15DD0)
  {
    sub_4054(&qword_15DC8, &unk_9230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_15DD0);
  }

  return result;
}

uint64_t sub_7970()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_79B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_79C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_3E00(&qword_15DD8, &unk_9240);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_7A38(uint64_t a1)
{
  v2 = sub_7E50();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_3E00(&qword_15DF8, &qword_9260);
    v9 = sub_80B0();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_7D58(&qword_15E00, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
      v16 = sub_7F60();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_7D58(&qword_15E08, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
          v23 = sub_7F80();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_7D58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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