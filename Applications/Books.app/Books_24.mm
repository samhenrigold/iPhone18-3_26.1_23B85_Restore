void BookReaderLayoutController.traitCollection.setter(void *a1)
{
  sub_100388554(a1);
}

uint64_t (*BookReaderLayoutController.traitCollection.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = sub_10079F7E4();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v6 + 64));
  }

  v4[8] = v7;
  swift_beginAccess();
  return sub_1003860B4;
}

void sub_1003860B4(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if (a2)
  {
    v4 = v3[8];
  }

  else
  {
    v5 = v3[7];
    v4 = v3[8];
    v7 = v3[5];
    v6 = v3[6];
    sub_1007A1024();
    sub_1007A1014();
    v8 = *(v7 + 88);
    sub_1007A0FD4();

    v9 = *(v7 + 88);
    v3[3] = v9;
    v3[4] = &protocol witness table for UITraitCollection;
    v10 = v9;
    sub_10079B8C4();

    v11 = *(v7 + 88);
    sub_10079F7C4();
    sub_10079B8F4();
    (*(v5 + 8))(v4, v6);
  }

  free(v4);

  free(v3);
}

uint64_t BookReaderLayoutController.menuOuterMargin.setter(double a1, double a2, double a3, double a4)
{
  result = swift_beginAccess();
  v4[12] = a1;
  v4[13] = a2;
  v4[14] = a3;
  v4[15] = a4;
  return result;
}

uint64_t BookReaderLayoutController.actionButtonLayout.setter(__int128 *a1)
{
  swift_beginAccess();
  sub_1000074E0((v1 + 128));
  sub_1000077C0(a1, v1 + 128);
  return swift_endAccess();
}

uint64_t BookReaderLayoutController.safeAreaInsets.setter(double a1, double a2, double a3, double a4)
{
  result = swift_beginAccess();
  v4[21] = a1;
  v4[22] = a2;
  v4[23] = a3;
  v4[24] = a4;
  return result;
}

uint64_t BookReaderLayoutController.safeAreaInsetsPublisher.getter()
{
  sub_1001F1160(&qword_100ADECC8, &unk_10081ED50);
  sub_100005920(&qword_100ADECD0, &qword_100ADECC8, &unk_10081ED50, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  return sub_10079BA14();
}

uint64_t BookReaderLayoutController.contentInsets.setter(double a1, double a2, double a3, double a4)
{
  swift_beginAccess();
  v4[26] = a1;
  v4[27] = a2;
  v4[28] = a3;
  v4[29] = a4;
  return sub_10079B8C4();
}

void (*BookReaderLayoutController.contentInsets.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  return sub_100386614;
}

void sub_100386614(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[4];
    v5 = *(v4 + 224);
    *v3 = *(v4 + 208);
    *(v3 + 1) = v5;
    sub_10079B8C4();
  }

  free(v3);
}

uint64_t BookReaderLayoutController.closeBookInteracting.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 240) = a1;
  return result;
}

uint64_t BookReaderLayoutController.contentRectPublisher.getter()
{
  sub_1001F1160(&qword_100ADECD8, &qword_10082E970);
  sub_100005920(&unk_100AF27F0, &qword_100ADECD8, &qword_10082E970, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  return sub_10079BA14();
}

uint64_t BookReaderLayoutController.contentInsetsPublisher.getter()
{
  sub_1001F1160(&qword_100ADECE0, &unk_10081ED60);
  sub_100005920(&qword_100ADECE8, &qword_100ADECE0, &unk_10081ED60, &protocol conformance descriptor for PassthroughSubject<A, B>);
  return sub_10079BA14();
}

uint64_t BookReaderLayoutController.layoutSizePublisher.getter()
{
  sub_1001F1160(&qword_100ADECF0, &unk_10082EA90);
  sub_100005920(&qword_100ADECF8, &qword_100ADECF0, &unk_10082EA90, &protocol conformance descriptor for PassthroughSubject<A, B>);
  return sub_10079BA14();
}

uint64_t BookReaderLayoutController.layoutEnvironmentPublisher.getter()
{
  sub_1001F1160(&qword_100ADED00, &qword_10081ED70);
  sub_100005920(&qword_100ADED08, &qword_100ADED00, &qword_10081ED70, &protocol conformance descriptor for PassthroughSubject<A, B>);
  return sub_10079BA14();
}

uint64_t BookReaderLayoutController.userInterfaceStylePublisher.getter()
{
  sub_1001F1160(&qword_100ADED10, &qword_10081ED78);
  sub_100005920(&qword_100ADED18, &qword_100ADED10, &qword_10081ED78, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  return sub_10079BA14();
}

uint64_t BookReaderLayoutController.isLowLightPublisher.getter()
{
  swift_getObjectType();
  sub_1007A0CC4();
  sub_1001F1160(&unk_100AF27D0, &qword_10081ED80);
  sub_100005920(&qword_100AEA160, &unk_100AF27D0, &qword_10081ED80, &protocol conformance descriptor for AnyPublisher<A, B>);
  v0 = sub_10079BA14();

  return v0;
}

uint64_t BookReaderLayoutController.applicationForegroundStatePublisher.getter()
{
  sub_1001F1160(&qword_100ADED20, &qword_10081ED88);
  sub_100005920(&qword_100ADED28, &qword_100ADED20, &qword_10081ED88, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  return sub_10079BA14();
}

Swift::Void __swiftcall BookReaderLayoutController.willEnterForeground()()
{
  v0 = sub_10079F844();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  BookReaderLayoutController.validateUserInterfaceStyle()();
  (*(v1 + 104))(v3, enum case for BookContentApplicationForegroundState.foreground(_:), v0);
  sub_10079B914();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong willEnterForeground];
    swift_unknownObjectRelease();
  }
}

void *BookReaderLayoutController.validateUserInterfaceStyle()()
{
  v0 = sub_10079ACE4();
  v62 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v54 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v61 = &v54 - v4;
  v5 = sub_10079F7E4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v54 - v10;
  __chkstk_darwin(v12);
  v14 = &v54 - v13;
  __chkstk_darwin(v15);
  v17 = &v54 - v16;
  __chkstk_darwin(v18);
  v20 = &v54 - v19;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v59 = result;
    v60 = v0;
    v22 = [result traitCollection];
    sub_10079B904();
    v23 = v22;
    sub_10079F7C4();
    sub_100388AFC();
    v24 = (v6 + 16);
    if (sub_1007A2124())
    {
      sub_1007A0934();
      (*v24)(v8, v20, v5);
      v25 = sub_10079ACC4();
      v26 = sub_1007A29D4();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v57 = v23;
        v28 = v27;
        v29 = swift_slowAlloc();
        v61 = v17;
        v30 = v29;
        v63 = v29;
        *v28 = 136446210;
        v56 = v25;
        v31 = sub_10079F7B4();
        v33 = v32;
        v58 = v20;
        v34 = *(v6 + 8);
        v34(v8, v5);
        v35 = sub_1000070F4(v31, v33, &v63);

        *(v28 + 4) = v35;
        v36 = v56;
        _os_log_impl(&_mh_execute_header, v56, v26, "on foreground, #userInterfaceStyle is %{public}s", v28, 0xCu);
        sub_1000074E0(v30);

        swift_unknownObjectRelease();
        (*(v62 + 8))(v2, v60);
        v34(v61, v5);
        return (v34)(v58, v5);
      }

      else
      {

        swift_unknownObjectRelease();
        v53 = *(v6 + 8);
        v53(v8, v5);
        (*(v62 + 8))(v2, v60);
        v53(v17, v5);
        return (v53)(v20, v5);
      }
    }

    else
    {
      sub_1007A0934();
      v37 = v20;
      v38 = *v24;
      (*v24)(v14, v17, v5);
      v58 = v37;
      v38(v11, v37, v5);
      v39 = sub_10079ACC4();
      v40 = sub_1007A29B4();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v63 = v56;
        *v41 = 136446466;
        v54 = v39;
        v42 = sub_10079F7B4();
        v57 = v23;
        v43 = v17;
        v45 = v44;
        v55 = v40;
        v46 = *(v6 + 8);
        v46(v14, v5);
        v47 = sub_1000070F4(v42, v45, &v63);

        *(v41 + 4) = v47;
        *(v41 + 12) = 2082;
        v48 = sub_10079F7B4();
        v50 = v49;
        v46(v11, v5);
        v51 = sub_1000070F4(v48, v50, &v63);
        v17 = v43;
        v23 = v57;

        *(v41 + 14) = v51;
        v52 = v54;
        _os_log_impl(&_mh_execute_header, v54, v55, "found different #userInterfaceStyle %{public}s than expected %{public}s.  Force updating", v41, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v46 = *(v6 + 8);
        v46(v11, v5);
        v46(v14, v5);
      }

      (*(v62 + 8))(v61, v60);
      [v59 setTraitCollection:v23];

      swift_unknownObjectRelease();
      v46(v17, v5);
      return (v46)(v58, v5);
    }
  }

  return result;
}

Swift::Void __swiftcall BookReaderLayoutController.didEnterBackground()()
{
  v0 = sub_10079F844();
  v1 = __chkstk_darwin(v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for BookContentApplicationForegroundState.background(_:), v1);
  sub_10079B914();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong didEnterBackground];
    swift_unknownObjectRelease();
  }
}

void *BookReaderLayoutController.layoutEnvironment.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

double BookReaderLayoutController.infoBarHeight.getter()
{
  if (qword_100AD14A8 != -1)
  {
    swift_once();
  }

  return *&qword_100B23168;
}

double sub_100387578(__int128 *a1, uint64_t a2)
{
  swift_unownedRetainStrong();

  v5 = a1[1];
  v6 = *a1;
  sub_10079B8C4();

  swift_unownedRetainStrong();
  *(a2 + 72) = v5;
  *(a2 + 56) = v6;

  return result;
}

double sub_100387600(void *a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  swift_unownedRetainStrong();
  v19 = a1;
  sub_100388554(v19);

  swift_unownedRetainStrong();
  *v21 = a3;
  *&v21[1] = a4;
  *&v21[2] = a5;
  *&v21[3] = a6;
  v22 = 0;
  *v23 = a7;
  *&v23[1] = a8;
  *&v23[2] = a9;
  *&v23[3] = a10;
  v24 = 0;
  sub_10038873C(v21, v23);

  return result;
}

void sub_1003876CC(uint64_t *a1, uint64_t a2)
{
  v4 = sub_10079ACE4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if (v8)
  {
    swift_unownedRetainStrong();
    v9 = *(a2 + 288);

    if (v8 != v9)
    {
      swift_unownedRetainStrong();
      *(a2 + 288) = v8;

      swift_unownedRetainStrong();
      memset(v17, 0, sizeof(v17));
      v18 = 1;
      memset(v19, 0, sizeof(v19));
      v20 = 1;
      sub_10038873C(v17, v19);
    }
  }

  else
  {
    sub_1007A0934();
    swift_unownedRetain();
    v10 = sub_10079ACC4();
    v11 = sub_1007A29B4();
    swift_unownedRelease();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v19[0] = v13;
      *v12 = 136446210;
      swift_unownedRetainStrong();

      v14 = sub_1007A2BA4();
      v16 = sub_1000070F4(v14, v15, v19);

      *(v12 + 4) = v16;
      sub_1000074E0(v13);
    }

    (*(v5 + 8))(v7, v4);
  }
}

double BookReaderLayoutController.computedEdgeInsets.getter()
{
  if (*(v0 + 288) == 2)
  {
    return UIEdgeInsetsZero.top;
  }

  else
  {
    return BookReaderLayoutController.hostInsets.getter();
  }
}

uint64_t BookReaderLayoutController.updateMenuMargin(safeAreaInsets:)(double a1, double a2, double a3, double a4)
{
  v8 = sub_10079ACE4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v53 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001F1160(&unk_100ADB6B0, qword_100816980);
  __chkstk_darwin(v11 - 8);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v48 - v15;
  v17 = sub_10079CEE4();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v51 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v52 = &v48 - v21;
  __chkstk_darwin(v22);
  v24 = &v48 - v23;
  swift_beginAccess();
  [*(v4 + 88) horizontalSizeClass];
  sub_10079CEF4();
  v25 = *(v18 + 48);
  if (v25(v16, 1, v17) != 1)
  {
    v48 = v9;
    v49 = v8;
    v26 = *(v18 + 32);
    v26(v24, v16, v17);
    v50 = v4;
    [*(v4 + 88) verticalSizeClass];
    sub_10079CEF4();
    if (v25(v13, 1, v17) == 1)
    {
      (*(v18 + 8))(v24, v17);
      v9 = v48;
      v8 = v49;
      goto LABEL_5;
    }

    v26(v52, v13, v17);
    if (qword_100AD17D0 != -1)
    {
      swift_once();
    }

    v32 = *&static REConstants.floatingButtonHeight;
    v33 = enum case for UserInterfaceSizeClass.compact(_:);
    v34 = *(v18 + 104);
    v35 = v51;
    v34(v51, enum case for UserInterfaceSizeClass.compact(_:), v17);
    v36 = v24;
    v37 = v35;
    v38 = sub_10079CED4();
    v39 = *(v18 + 8);
    v39(v35, v17);
    v40 = v50;
    if (v38)
    {
      v41 = 24.0;
      if (a3 == 0.0)
      {
        goto LABEL_18;
      }

      if (a3 > 24.0)
      {
        v42 = 0.0;
        if (a3 >= 0.0)
        {
          v42 = a3;
        }

        v41 = v42 + 8.0;
LABEL_18:
        v34(v37, v33, v17);
        v43 = sub_10079CED4();
        v39(v37, v17);
        if (v43)
        {
          v39(v52, v17);
          v39(v36, v17);
        }

        else
        {
          v34(v37, v33, v17);
          v44 = v52;
          v45 = sub_10079CED4();
          v39(v37, v17);
          v39(v44, v17);
          v39(v36, v17);
          if ((v45 & 1) == 0)
          {
            v46 = 32.0;
            v47 = 32.0;
LABEL_25:
            result = swift_beginAccess();
            *(v40 + 96) = 0;
            *(v40 + 104) = v47;
            *(v40 + 112) = v32 + v41;
            *(v40 + 120) = v46;
            return result;
          }
        }

        if (a2 != 0.0 || (v46 = 16.0, v47 = 16.0, a4 != 0.0))
        {
          v47 = a2 + 16.0;
          v46 = a4 + 16.0;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v34(v37, v33, v17);
      sub_10079CED4();
      v39(v37, v17);
    }

    v41 = 32.0;
    goto LABEL_18;
  }

  v13 = v16;
LABEL_5:
  sub_1003886D4(v13);
  v27 = v53;
  sub_1007A0934();
  v28 = sub_10079ACC4();
  v29 = sub_1007A2994();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Cannot calculate margin without size classes", v30, 2u);
  }

  return (*(v9 + 8))(v27, v8);
}

uint64_t BookReaderLayoutController.userInterfaceStyle.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 88);
  return sub_10079F7C4();
}

uint64_t BookReaderLayoutController.deinit()
{

  sub_1000074E0((v0 + 128));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_10002B130(v0 + 328);

  return v0;
}

uint64_t BookReaderLayoutController.__deallocating_deinit()
{
  BookReaderLayoutController.deinit();

  return swift_deallocClassInstance();
}

double sub_100388054()
{
  if (qword_100AD14A8 != -1)
  {
    swift_once();
  }

  return *&qword_100B23168;
}

double BookReaderLayoutController.infoBarTopInset.getter()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 88);
  v3 = sub_1007A2E24();

  result = 10.0;
  if ((v3 & 1) == 0)
  {
    v5 = *(v1 + 88);
    v6 = sub_1007A2E14();

    result = 0.0;
    if ((v6 & 1) == 0)
    {
      v7 = sub_1007A2BB4();
      result = 8.0;
      if (v7)
      {
        return 0.0;
      }
    }
  }

  return result;
}

double BookReaderLayoutController.infoBarBottomInset.getter()
{
  v0 = sub_1007A2BB4();
  result = 12.0;
  if (v0)
  {
    return 0.0;
  }

  return result;
}

double BookReaderLayoutController.hostInsets.getter()
{
  if (qword_100AD14A8 != -1)
  {
    swift_once();
  }

  v1 = *&qword_100B23168;
  v2 = v1 + sub_100388368();
  swift_beginAccess();
  if ([*(v0 + 88) verticalSizeClass] != 1)
  {
    if ([*(v0 + 88) horizontalSizeClass] == 1)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong defaultStatusBarHeight];
        v5 = v4;
        swift_unknownObjectRelease();
      }

      else
      {
        v5 = 0.0;
      }

      v2 = v2 + v5;
      swift_beginAccess();
    }

    else if (*(v0 + 72) < *(v0 + 80))
    {
      return v2 + 44.0;
    }

    else
    {
      return v2 + 24.0;
    }
  }

  return v2;
}

uint64_t sub_100388334(uint64_t a1)
{
  result = sub_10079E404();
  v2 = 48.0;
  if ((result & 1) == 0)
  {
    v2 = 28.0;
  }

  qword_100B23168 = *&v2;
  return result;
}

double sub_100388368()
{
  v1 = v0;
  v2 = sub_10079ACE4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v6 = *(v0 + 88);
  v7 = sub_1007A2E24();

  v8 = 10.0;
  if ((v7 & 1) == 0)
  {
    v9 = *(v1 + 88);
    v10 = sub_1007A2E14();

    v8 = 0.0;
    if ((v10 & 1) == 0)
    {
      if (sub_1007A2BB4())
      {
        v8 = 0.0;
      }

      else
      {
        v8 = 8.0;
      }
    }
  }

  if (sub_1007A2BB4())
  {
    v11 = 0.0;
  }

  else
  {
    v11 = 12.0;
  }

  sub_1007A0934();
  v12 = sub_10079ACC4();
  v13 = sub_1007A29A4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134218240;
    *(v14 + 4) = v8;
    *(v14 + 12) = 2048;
    *(v14 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "InfoBar top inset %f bottom inset %f", v14, 0x16u);
  }

  (*(v3 + 8))(v5, v2);
  return v8 + v11;
}

uint64_t sub_100388554(void *a1)
{
  v2 = v1;
  v4 = sub_10079F7E4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(v2 + 88);
  *(v2 + 88) = a1;
  v9 = a1;

  sub_1007A1024();
  sub_1007A1014();
  v10 = *(v2 + 88);
  sub_1007A0FD4();

  v15 = *(v2 + 88);
  v16 = &protocol witness table for UITraitCollection;
  v11 = v15;
  sub_10079B8C4();

  v12 = *(v2 + 88);
  sub_10079F7C4();
  sub_10079B8F4();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1003886D4(uint64_t a1)
{
  v2 = sub_1001F1160(&unk_100ADB6B0, qword_100816980);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_10038873C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *a1;
  v41 = *(a1 + 16);
  v40 = v6;
  v7 = sub_10079FFF4();
  __chkstk_darwin(v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    if (*(a1 + 32))
    {
      swift_beginAccess();
      v12 = *(v2 + 16);
      v13 = *(v2 + 32);
    }

    else
    {
      v12 = v40;
      v13 = v41;
    }

    *(v2 + 56) = v12;
    *(v2 + 72) = v13;
    v14 = sub_1007A3024() & 1;
    swift_beginAccess();
    if (v14 != (sub_1007A3024() & 1) && *(v2 + 312))
    {
      swift_getObjectType();
      swift_storeEnumTagMultiPayload();
      sub_1007A1A94();
      sub_100343710(v9);
    }

    if ((*(a2 + 32) & 1) == 0)
    {
      v15 = *a2;
      v16 = *(a2 + 8);
      v17 = *(a2 + 16);
      v18 = *(a2 + 24);
      if (*a2 == 0.0)
      {
        swift_beginAccess();
        v19 = *(v2 + 88);
        v20 = sub_1007A2E24();

        if ((v20 & 1) == 0)
        {
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            [Strong defaultStatusBarHeight];
            v15 = v22;
            swift_unknownObjectRelease();
          }

          else
          {
            v15 = 0.0;
          }
        }
      }

      swift_beginAccess();
      *(v3 + 168) = v15;
      *(v3 + 176) = v16;
      *(v3 + 184) = v17;
      *(v3 + 192) = v18;
    }

    if (*(v3 + 288) == 2)
    {
      v23 = *&UIEdgeInsetsZero.top;
      v24 = *&UIEdgeInsetsZero.bottom;
    }

    else
    {
      v23.f64[0] = BookReaderLayoutController.hostInsets.getter();
      v24 = v25;
      v23 = *&v23.f64[0];
    }

    v26 = v41;
    v27 = v40;
    v28 = *(a1 + 32);
    v41 = v24;
    v40 = v23;
    if (v28)
    {
      [v11 frame];
      v23 = v40;
      v24.f64[1] = v41.f64[1];
    }

    else
    {
      v29 = v27.f64[1];
      v30 = v26.f64[1];
    }

    v31 = v23.f64[1];
    v32 = v24.f64[1];
    v46.origin.x = sub_1002840F0(v27.f64[0], v29, v26.f64[0], v30, v23.f64[0], v23.f64[1]);
    x = v46.origin.x;
    y = v46.origin.y;
    width = v46.size.width;
    height = v46.size.height;
    if (!CGRectEqualToRect(v46, *(v3 + 16)) || (swift_beginAccess(), (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v3 + 208), v40), vceqq_f64(*(v3 + 224), v41)))) & 1) == 0))
    {
      swift_beginAccess();
      v37 = v40.f64[0];
      *(v3 + 208) = v40.f64[0];
      *(v3 + 216) = v31;
      v38 = v41.f64[0];
      *(v3 + 224) = v41.f64[0];
      *(v3 + 232) = v32;
      v42 = v37;
      v43 = v31;
      v44 = v38;
      v45 = v32;
      sub_10079B8C4();
      *(v3 + 16) = x;
      *(v3 + 24) = y;
      *(v3 + 32) = width;
      *(v3 + 40) = height;
      v42 = x;
      v43 = y;
      v44 = width;
      v45 = height;

      sub_10079B8F4();
    }

    swift_beginAccess();
    BookReaderLayoutController.updateMenuMargin(safeAreaInsets:)(v39, *(v3 + 176), *(v3 + 184), *(v3 + 192));
    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_100388AFC()
{
  result = qword_100ADF060;
  if (!qword_100ADF060)
  {
    sub_10079F7E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF060);
  }

  return result;
}

double sub_100388B6C(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_10038DEC0, v4);

  return result;
}

void sub_100388C00(uint64_t a1, uint64_t a2)
{
  sub_10000A7C4(0, &qword_100AE8DB0, UIMenuElement_ptr);
  isa = sub_1007A25D4().super.isa;
  (*(a2 + 16))(a2, isa);
}

uint64_t sub_100388CFC(uint64_t a1)
{
  v2 = type metadata accessor for BuyButtonView.Style(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_10038DEC8(a1, &v9 - v6);
  sub_10038DEC8(v7, v4);
  sub_10038DF2C();
  sub_10079C844();
  return sub_10038DF80(v7);
}

char *sub_100388DCC()
{
  v1 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController____lazy_storage___miniPlayerView;
  v2 = *(v0 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController____lazy_storage___miniPlayerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController____lazy_storage___miniPlayerView);
  }

  else
  {
    v4 = v0;
    sub_100388E8C(v10);
    v5 = objc_allocWithZone(type metadata accessor for AudiobookNowPlayingMiniTouchView());
    v6 = sub_1005B86A8(v10, 0.0, 0.0, 0.0, 0.0);
    *&v6[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_delegate + 8] = &off_100A18560;
    swift_unknownObjectWeakAssign();
    v7 = *(v4 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_100388E8C(uint64_t a1@<X8>)
{
  v29 = sub_10038BAC4();
  v30 = v3;
  v31 = v4;
  v6 = v5;
  v7 = [v1 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  v28 = sub_1007A2EF4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v33);

  v27 = v33;

  v9 = [v1 traitCollection];
  v10 = [v9 verticalSizeClass];

  if (v10 == 1)
  {
    v11 = 1;
  }

  else
  {
    v12 = [v1 traitCollection];
    v13 = [v12 horizontalSizeClass];

    v11 = v13 == 1;
  }

  sub_10038B8DC();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_10038B764();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v32);

  v26 = v32;
  *a1 = v27;
  *(a1 + 8) = v29;
  *(a1 + 16) = v30;
  *(a1 + 24) = v31;
  *(a1 + 32) = v6;
  *(a1 + 40) = v31;
  *(a1 + 48) = v6;
  *(a1 + 56) = v11;
  *(a1 + 57) = v28 & 1;
  *(a1 + 64) = v15 & 1;
  *(a1 + 72) = v17 & 1;
  *(a1 + 73) = HIBYTE(v17) & 1;
  *(a1 + 80) = v19;
  *(a1 + 88) = v21 & 1;
  *(a1 + 96) = v23 & 1;
  *(a1 + 97) = HIBYTE(v23) & 1;
  *(a1 + 104) = v25;
  *(a1 + 112) = v26;
}

void sub_100389174()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "viewDidLoad");
  sub_100389248(*&v0[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_viewModel]);
  v1 = sub_100388DCC();
  v2 = [objc_allocWithZone(UIContextMenuInteraction) initWithDelegate:v0];
  [v1 addInteraction:v2];

  v3 = *&v0[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController____lazy_storage___miniPlayerView];
  sub_100388E8C(v5);
  sub_1005BD790(v5);
  sub_10038DFDC(v5);
}

double sub_100389248(uint64_t a1)
{
  v111 = sub_1001F1160(&qword_100AD8178, &qword_10081F260);
  v112 = *(v111 - 8);
  __chkstk_darwin(v111);
  v109 = &v87 - v2;
  v113 = sub_1001F1160(&unk_100ADF100, &qword_10081F268);
  v114 = *(v113 - 8);
  __chkstk_darwin(v113);
  v110 = &v87 - v3;
  v106 = sub_1001F1160(&unk_100AE1530, &unk_10081F270);
  __chkstk_darwin(v106);
  v102 = &v87 - v4;
  v103 = sub_1001F1160(&qword_100AD81B0, &unk_100815420);
  __chkstk_darwin(v103);
  v99 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v98 = &v87 - v7;
  __chkstk_darwin(v8);
  v97 = &v87 - v9;
  v104 = sub_1001F1160(&qword_100AD81B8, &unk_10081F280);
  v105 = *(v104 - 8);
  __chkstk_darwin(v104);
  v100 = &v87 - v10;
  v107 = sub_1001F1160(&qword_100AD81C0, &qword_100815430);
  v108 = *(v107 - 8);
  __chkstk_darwin(v107);
  v101 = &v87 - v11;
  v123 = sub_1001F1160(&unk_100AE1520, &unk_10081F290);
  v127 = *(v123 - 8);
  __chkstk_darwin(v123);
  v95 = &v87 - v12;
  v121 = sub_1001F1160(&qword_100AD8220, &unk_100815490);
  v128 = *(v121 - 8);
  __chkstk_darwin(v121);
  v96 = &v87 - v13;
  v14 = sub_1001F1160(&qword_100AD81E8, &unk_10081F2A0);
  v15 = *(v14 - 8);
  v117 = v14;
  v118 = v15;
  __chkstk_darwin(v14);
  v94 = &v87 - v16;
  v17 = sub_1001F1160(&unk_100AD81F0, &unk_100815460);
  v18 = *(v17 - 8);
  v119 = v17;
  v120 = v18;
  __chkstk_darwin(v17);
  v116 = &v87 - v19;
  v90 = sub_1001F1160(&qword_100AD8228, &unk_10081F2B0);
  v91 = *(v90 - 8);
  __chkstk_darwin(v90);
  v88 = &v87 - v20;
  v92 = sub_1001F1160(&qword_100AD8230, &qword_1008154A0);
  v93 = *(v92 - 8);
  __chkstk_darwin(v92);
  v89 = &v87 - v21;
  v22 = sub_1001F1160(&qword_100AD7EB0, &qword_10080EFD0);
  __chkstk_darwin(v22 - 8);
  v24 = &v87 - v23;
  v25 = sub_1001F1160(&unk_100AD8250, &unk_1008154C0);
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v87 - v27;
  v124 = sub_1001F1160(&qword_100AE1560, &unk_10081F2C0);
  v29 = *(v124 - 8);
  __chkstk_darwin(v124);
  v31 = &v87 - v30;
  v125 = a1;
  swift_beginAccess();
  sub_1001F1160(&unk_100AD8260, &unk_1008154D0);
  sub_10079B974();
  swift_endAccess();
  v32 = sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v33 = sub_1007A2D74();
  v134 = v33;
  v132 = sub_1007A2D24();
  v34 = *(v132 - 8);
  v131 = *(v34 + 56);
  v133 = v34 + 56;
  v131(v24, 1, 1, v132);
  v126 = &protocol conformance descriptor for Published<A>.Publisher;
  sub_100005920(&unk_100AD8270, &unk_100AD8250, &unk_1008154C0, &protocol conformance descriptor for Published<A>.Publisher);
  v130 = sub_100017E1C();
  v35 = v24;
  sub_10079BAB4();
  sub_100007840(v24, &qword_100AD7EB0, &qword_10080EFD0);

  (*(v26 + 8))(v28, v25);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v122 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_100005920(&unk_100AD8280, &qword_100AE1560, &unk_10081F2C0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v36 = v124;
  sub_10079BB04();

  (*(v29 + 8))(v31, v36);
  v37 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController_cancellables;
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  sub_1001F1160(&unk_100AD5110, &unk_10080FC10);
  v38 = v88;
  sub_10079B974();
  swift_endAccess();
  v129 = v32;
  v39 = sub_1007A2D74();
  v134 = v39;
  v40 = v35;
  v42 = v131;
  v41 = v132;
  v131(v35, 1, 1, v132);
  sub_100005920(&unk_100ADF110, &qword_100AD8228, &unk_10081F2B0, v126);
  v43 = v89;
  v115 = v35;
  v44 = v90;
  sub_10079BAB4();
  sub_100007840(v40, &qword_100AD7EB0, &qword_10080EFD0);

  (*(v91 + 8))(v38, v44);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005920(&unk_100AD82A0, &qword_100AD8230, &qword_1008154A0, v122);
  v45 = v92;
  sub_10079BB04();

  (*(v93 + 8))(v43, v45);
  v124 = v37;
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  sub_1001F1160(&qword_100AD82E0, &unk_1008154E0);
  v46 = v94;
  sub_10079B974();
  swift_endAccess();
  v47 = sub_1007A2D74();
  v134 = v47;
  v48 = v115;
  v42(v115, 1, 1, v41);
  v49 = v126;
  sub_100005920(&qword_100AD82E8, &qword_100AD81E8, &unk_10081F2A0, v126);
  v50 = v116;
  v51 = v117;
  sub_10079BAB4();
  sub_100007840(v48, &qword_100AD7EB0, &qword_10080EFD0);

  v118[1](v46, v51);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v52 = v122;
  sub_100005920(&unk_100AD82F0, &unk_100AD81F0, &unk_100815460, v122);
  v53 = v119;
  sub_10079BB04();

  (*(v120 + 8))(v50, v53);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  v120 = sub_1001F1160(&unk_100AD5120, &qword_10080FC20);
  v54 = v95;
  sub_10079B974();
  swift_endAccess();
  v55 = sub_1007A2D74();
  v134 = v55;
  v131(v48, 1, 1, v132);
  v119 = sub_100005920(&qword_100AD82B0, &unk_100AE1520, &unk_10081F290, v49);
  v56 = v96;
  v57 = v123;
  sub_10079BAB4();
  sub_100007840(v48, &qword_100AD7EB0, &qword_10080EFD0);

  v58 = *(v127 + 8);
  v127 += 8;
  v118 = v58;
  v59 = v54;
  (v58)(v54, v57);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v117 = sub_100005920(&unk_100AE1590, &qword_100AD8220, &unk_100815490, v52);
  v60 = v121;
  sub_10079BB04();

  v61 = *(v128 + 8);
  v128 += 8;
  v116 = v61;
  (v61)(v56, v60);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  sub_10079B974();
  swift_endAccess();
  v62 = sub_1007A2D74();
  v134 = v62;
  v63 = v131;
  v131(v48, 1, 1, v132);
  v64 = v123;
  sub_10079BAB4();
  sub_100007840(v48, &qword_100AD7EB0, &qword_10080EFD0);

  v65 = v59;
  (v118)(v59, v64);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v66 = v121;
  sub_10079BB04();

  v67 = v56;
  (v116)(v56, v66);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  v68 = v65;
  sub_10079B974();
  swift_endAccess();
  v69 = sub_1007A2D74();
  v134 = v69;
  v70 = v115;
  v63(v115, 1, 1, v132);
  v71 = v123;
  sub_10079BAB4();
  sub_100007840(v70, &qword_100AD7EB0, &qword_10080EFD0);

  (v118)(v68, v71);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10079BB04();

  (v116)(v67, v66);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  sub_1001F1160(&unk_100ADF120, &qword_100822620);
  sub_10079B974();
  swift_endAccess();
  swift_beginAccess();
  sub_10079B974();
  swift_endAccess();
  swift_beginAccess();
  sub_10079B974();
  swift_endAccess();
  swift_beginAccess();
  sub_1001F1160(&qword_100AD50E0, &qword_10080FBE0);
  sub_10079B974();
  swift_endAccess();
  v72 = v126;
  sub_100005920(&unk_100AD8320, &qword_100AD81B0, &unk_100815420, v126);
  sub_100005920(&qword_100AD82D0, &unk_100AE1530, &unk_10081F270, v72);
  v73 = v100;
  sub_10079B7C4();
  v74 = sub_1007A2D74();
  v134 = v74;
  v131(v70, 1, 1, v132);
  sub_100005920(&unk_100ADF130, &qword_100AD81B8, &unk_10081F280, &protocol conformance descriptor for Publishers.CombineLatest4<A, B, C, D>);
  v75 = v101;
  v76 = v104;
  sub_10079BAB4();
  sub_100007840(v70, &qword_100AD7EB0, &qword_10080EFD0);

  (*(v105 + 8))(v73, v76);
  v77 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v78 = swift_allocObject();
  *(v78 + 16) = sub_10038E060;
  *(v78 + 24) = v77;
  v79 = v122;
  sub_100005920(&unk_100AD8330, &qword_100AD81C0, &qword_100815430, v122);
  v80 = v107;
  sub_10079BB04();

  (*(v108 + 8))(v75, v80);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  sub_1001F1160(&qword_100AD50C0, &qword_10080FBC0);
  v81 = v109;
  sub_10079B974();
  swift_endAccess();
  v82 = sub_1007A2D74();
  v134 = v82;
  v131(v70, 1, 1, v132);
  sub_100005920(&qword_100AD8360, &qword_100AD8178, &qword_10081F260, v126);
  v83 = v110;
  v84 = v111;
  sub_10079BAB4();
  sub_100007840(v70, &qword_100AD7EB0, &qword_10080EFD0);

  (*(v112 + 8))(v81, v84);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005920(&unk_100ADF140, &unk_100ADF100, &qword_10081F268, v79);
  v85 = v113;
  sub_10079BB04();

  (*(v114 + 8))(v83, v85);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  return result;
}

void sub_10038ABB8(uint64_t a1, uint64_t a2)
{
  v5 = sub_1001F1160(&unk_100AD83B0, &qword_10081F2D0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v13 - v7;
  v9 = [v2 view];
  v10 = v9;
  if (a2)
  {
    if (v9)
    {
      v13[0] = a1;
      v13[1] = a2;
      sub_100282BC4();

      sub_100795ED4();
      v11 = sub_100795EE4();
      (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
LABEL_6:
      sub_1007A30D4();

      return;
    }

    __break(1u);
  }

  else if (v9)
  {
    v12 = sub_100795EE4();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    goto LABEL_6;
  }

  __break(1u);
}

void sub_10038ADA8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1001F1160(&qword_100AD8378, &qword_10081F220);
  __chkstk_darwin(v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = (&v36 - v8);
  v10 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController_buyButtonViewController;
  v11 = *&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController_buyButtonViewController];
  if (v11)
  {
    v12 = v11;
    [v12 willMoveToParentViewController:0];
    [v12 removeFromParentViewController];
    v13 = [v12 view];
    if (!v13)
    {
      __break(1u);
LABEL_10:
      __break(1u);
      return;
    }

    v14 = v13;
    [v13 removeFromSuperview];

    [v12 didMoveToParentViewController:0];
  }

  v15 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController_buyButtonProvider;
  swift_beginAccess();
  sub_100282A38(a1, &v2[v15]);
  swift_endAccess();
  sub_1000077D8(a1, &v36, &qword_100AD4FA0, &qword_10081F020);
  if (v37)
  {
    sub_1000077C0(&v36, v38);
    v16 = sub_10000E3E8(v38, v39);
    sub_10038D48C(*v16, v2);
    v17 = sub_10000E3E8(v38, v39);
    v19 = sub_100221B70(v17, v18);
    KeyPath = swift_getKeyPath();
    v21 = (v9 + *(v4 + 36));
    v22 = sub_1001F1160(&qword_100AD8380, &unk_10081F250);
    sub_10038BFE0(v21 + *(v22 + 28));
    *v21 = KeyPath;
    *v9 = v19;
    sub_1000077D8(v9, v6, &qword_100AD8378, &qword_10081F220);
    v23 = objc_allocWithZone(sub_1001F1160(&qword_100AD8388, &qword_100815530));
    v24 = sub_10079CBC4();
    sub_10079CB94();
    v25 = *&v2[v10];
    *&v2[v10] = v24;
    v26 = v24;

    sub_10000E3E8(v38, v39);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_100392FC4();
    v27 = swift_unknownObjectRelease();
    sub_1005353C0(v27, v28);
    sub_100535160();
    swift_unknownObjectRelease();
    [v26 willMoveToParentViewController:v2];
    [v2 addChildViewController:v26];
    v29 = *&v2[v10];
    *&v2[v10] = v24;

    v30 = [v26 view];
    if (v30)
    {
      v31 = v30;
      v32 = [objc_opt_self() clearColor];
      [v31 setBackgroundColor:v32];

      v33 = sub_100388DCC();
      v34 = [v26 view];

      sub_1005BA8DC(v34);
      [v26 didMoveToParentViewController:v2];

      sub_100007840(v9, &qword_100AD8378, &qword_10081F220);
      sub_1000074E0(v38);
      return;
    }

    goto LABEL_10;
  }

  sub_100007840(&v36, &qword_100AD4FA0, &qword_10081F020);
  v35 = sub_100388DCC();
  sub_1005BA8DC(0);
}

uint64_t sub_10038B294()
{
  v0 = sub_100388DCC();
  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v1 = swift_allocObject();
  v2 = *&v0[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_skipBackwardButton];
  *(v1 + 16) = xmmword_100811370;
  v3 = *&v0[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_skipForwardButton];
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v4 = *&v0[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_togglePlayingButton];
  *(v1 + 48) = v4;
  v5 = v2;
  v6 = v3;
  v7 = v4;

  return v1;
}

void sub_10038B330(void *a1)
{
  v2 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController_springLoadedInteraction;
  v3 = *&v1[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController_springLoadedInteraction];
  *&v1[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController_springLoadedInteraction] = a1;
  if (v3)
  {
    v4 = a1;
    v5 = v3;
    v6 = [v1 view];
    if (!v6)
    {
      __break(1u);
      goto LABEL_12;
    }

    v7 = v6;
    [v6 removeInteraction:v5];

    v8 = *&v1[v2];
    if (!v8)
    {
      goto LABEL_8;
    }

LABEL_6:
    v10 = v8;
    v11 = [v1 view];
    if (v11)
    {
      v12 = v11;
      v13 = v10;
      [v12 addInteraction:v13];

      goto LABEL_8;
    }

LABEL_12:
    __break(1u);
    return;
  }

  v9 = a1;
  v8 = a1;
  if (a1)
  {
    goto LABEL_6;
  }

LABEL_8:
}

void sub_10038B44C()
{

  sub_100007840(v0 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController_buyButtonProvider, &qword_100AD4FA0, &qword_10081F020);

  sub_100007840(v0 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController_contextMenuAppearDate, &unk_100ADB5C0, &unk_100816880);
  v1 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController_logger;
  v2 = sub_10079ACE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController_springLoadedInteraction);
}

uint64_t type metadata accessor for AudiobookNowPlayingMiniTouchViewController(uint64_t a1)
{
  result = qword_100ADF0D0;
  if (!qword_100ADF0D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10038B674(uint64_t a1)
{
  sub_1002CDD3C(319);
  if (v1 <= 0x3F)
  {
    sub_10079ACE4();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10038B764()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v0);

  if ((*&v0[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v0[0] <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v0[0] >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v0);

  if (*&v0[1])
  {

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(v0);
  }
}

void sub_10038B8DC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v4);

  if ((*&v4[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v4[0] <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v4[0] >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v4);

  if (*&v4[1])
  {

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(v4);

    if ((LOBYTE(v4[0]) & 1) == 0)
    {
      v1 = [v0 traitCollection];
      v2 = [v1 verticalSizeClass];

      if (v2 != 1)
      {
        v3 = [v0 traitCollection];
        [v3 horizontalSizeClass];
      }
    }
  }
}

uint64_t sub_10038BAC4()
{
  v0 = sub_100796CF4();
  v20 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v18 - v4;
  v6 = sub_1007A21D4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v18 - v11;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v21);

  if (v21 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(&v21);

    v19 = v21;
    sub_1007A2154();
    sub_100796C94();
    (*(v7 + 16))(v9, v12, v6);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v15 = v20;
    (*(v20 + 16))(v2, v5, v0);
    sub_1007A22D4(v9, 0, 0, v14, v2, "Subtitle in audiobook mini player view when listening to an audiobook sample/preview", 84, 2);
    (*(v15 + 8))(v5, v0);
    (*(v7 + 8))(v12, v6);
    return v19;
  }

  else
  {
    v16 = sub_1002034C8();
    sub_1004C1DB0(1);
  }

  return v16;
}

void sub_10038BE20()
{
  v1 = v0;
  v2 = sub_10038BAC4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_100388DCC();
  v10 = *&v9[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 48];
  v12 = *&v9[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state];
  v11 = *&v9[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 16];
  *&v38[16] = *&v9[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 32];
  *&v38[32] = v10;
  v37 = v12;
  *v38 = v11;
  v14 = *&v9[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 80];
  v13 = *&v9[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 96];
  v15 = *&v9[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 64];
  v38[96] = v9[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 112];
  *&v38[64] = v14;
  *&v38[80] = v13;
  *&v38[48] = v15;

  sub_10038E0AC(&v37, &v39);

  v34 = *&v38[40];
  v35 = *&v38[56];
  v36[0] = *&v38[72];
  *(v36 + 9) = *&v38[81];
  v32 = *&v38[8];
  v33 = *&v38[24];
  v31[0] = v37;
  v31[1] = v2;
  v31[2] = v4;
  sub_1005BD790(v31);
  sub_10038DFDC(v31);

  v16 = *(v1 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController____lazy_storage___miniPlayerView);

  v18 = *&v16[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state];
  v17 = *&v16[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 16];
  v19 = *&v16[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 48];
  *v41 = *&v16[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 32];
  *&v41[16] = v19;
  v39 = v18;
  v40 = v17;
  v21 = *&v16[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 80];
  v20 = *&v16[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 96];
  v22 = *&v16[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 64];
  v41[80] = v16[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 112];
  *&v41[48] = v21;
  *&v41[64] = v20;
  *&v41[32] = v22;
  sub_10038E0AC(&v39, &v23);

  v23 = v39;
  v28 = *&v41[24];
  v29 = *&v41[40];
  v30[0] = *&v41[56];
  *(v30 + 9) = *&v41[65];
  v27 = *&v41[8];
  v24 = v40;
  v25 = v6;
  v26 = v8;
  sub_1005BD790(&v23);
  sub_10038DFDC(&v23);
}

double sub_10038BFE0@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() bc_booksTransportControlsColor];
  v3 = sub_10079DD24();
  v4 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  v5 = objc_allocWithZone(UIColor);
  v18[4] = sub_10038C1C4;
  v18[5] = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_10038D350;
  v18[3] = &unk_100A18680;
  v6 = _Block_copy(v18);
  [v5 initWithDynamicProvider:v6];
  _Block_release(v6);

  v7 = sub_10079DD24();
  swift_retain_n();

  v8 = sub_10079DE24();
  v9 = sub_10079DE24();

  v10 = *(type metadata accessor for BuyButtonView.Style(0) + 44);
  v11 = sub_10079E534();
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  *a1 = v3;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 8) = _Q0;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_100815050;
  *(a1 + 48) = v4;
  *(a1 + 56) = v7;
  *(a1 + 64) = v8;
  *(a1 + 72) = v9;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  return result;
}

id sub_10038C1DC(void *a1, SEL *a2)
{
  v3 = [a1 userInterfaceStyle];
  v4 = objc_opt_self();
  v5 = &selRef_bc_booksSeparatorColor;
  if (v3 != 2)
  {
    v5 = a2;
  }

  v6 = [v4 *v5];

  return v6;
}

Class sub_10038C244()
{
  v0 = objc_opt_self();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10038DEB8;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100388B6C;
  aBlock[3] = &unk_100A18630;
  v2 = _Block_copy(aBlock);

  v3 = [v0 elementWithUncachedProvider:v2];
  _Block_release(v2);
  sub_10000A7C4(0, &qword_100AD8170, UIMenu_ptr);
  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100811390;
  *(v4 + 32) = v3;
  v7 = v4;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v12.value._countAndFlagsBits = 0;
  v12.value._object = 0;
  v10.value.super.isa = 0;
  v10.is_nil = 0;
  v5.value = 0;
  return sub_1007A30C4(v11, v12, v10, v5, 0xFFFFFFFFFFFFFFFFLL, v7, v8).super.super.isa;
}

void sub_10038C3B4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = sub_1007971A4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(Strong + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_eventHandler);
    swift_unknownObjectRetain();
    v11 = [v9 view];
    if (v11)
    {
      v12 = v11;
      (*(v5 + 104))(v7, enum case for ContextActionSource.miniPlayer(_:), v4);
      sub_100797194();
      (*(v5 + 8))(v7, v4);
      v13 = sub_1007A2214();

      v14 = [v10 contextMenuItemsFor:v9 from:v12 actionSource:v13];

      swift_unknownObjectRelease();
      sub_10000A7C4(0, &qword_100AD8170, UIMenu_ptr);
      v15 = sub_1007A25E4();

      if (v15 >> 62)
      {
        sub_10000A7C4(0, &qword_100AE8DB0, UIMenuElement_ptr);

        v16 = sub_1007A38C4();
      }

      else
      {

        sub_1007A3AD4();
        sub_10000A7C4(0, &qword_100AE8DB0, UIMenuElement_ptr);
        v16 = v15;
      }

      a1(v16);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    a1(_swiftEmptyArrayStorage);
  }
}

void sub_10038C888(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_100388DCC();

    v6 = *&v5[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 48];
    v8 = *&v5[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state];
    v7 = *&v5[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 16];
    *&v14[32] = *&v5[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 32];
    *&v14[48] = v6;
    *v14 = v8;
    *&v14[16] = v7;
    v10 = *&v5[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 80];
    v9 = *&v5[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 96];
    v11 = *&v5[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 64];
    v14[112] = v5[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 112];
    *&v14[80] = v10;
    *&v14[96] = v9;
    *&v14[64] = v11;
    v12 = v8;
    v13 = v2;
    sub_10038E0AC(v14, &v15);

    v19 = *&v14[56];
    v20 = *&v14[72];
    v21[0] = *&v14[88];
    *(v21 + 9) = *&v14[97];
    v16 = *&v14[8];
    v17 = *&v14[24];
    v18 = *&v14[40];
    v15 = v2;
    sub_1005BD790(&v15);
    sub_10038DFDC(&v15);
  }
}

void sub_10038C99C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_10038ABB8(v2, v3);
  }
}

void sub_10038CA08(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_100388DCC();

    v6 = *&v5[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 32];
    v7 = *&v5[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 48];
    v8 = *&v5[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 16];
    v13[0] = *&v5[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state];
    v13[2] = v6;
    v13[3] = v7;
    v13[1] = v8;
    v10 = *&v5[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 80];
    v9 = *&v5[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 96];
    v11 = *&v5[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 64];
    v14 = v5[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 112];
    v13[5] = v10;
    v13[6] = v9;
    v13[4] = v11;
    memmove(__dst, &v5[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state], 0x70uLL);
    __dst[112] = v2;
    sub_10038E0AC(v13, v12);
    sub_1005BD790(__dst);
    sub_10038DFDC(__dst);
  }
}

void sub_10038CAE8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_100388DCC();
    sub_10038B764();
    v6 = v5;
    v7 = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 32];
    v8 = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 48];
    v9 = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 16];
    v24[0] = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state];
    v24[3] = v8;
    v24[2] = v7;
    v24[1] = v9;
    v11 = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 80];
    v10 = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 96];
    v12 = v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 112];
    v24[4] = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 64];
    v25 = v12;
    v24[6] = v10;
    v24[5] = v11;
    v13 = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 89];
    *(v23 + 3) = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 92];
    v23[0] = v13;
    v14 = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 98];
    v22 = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 102];
    v21 = v14;
    v16 = v15 & 1;
    v18 = v17 & 1;
    v19 = (v17 >> 8) & 1;
    memmove(__dst, &v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state], 0x58uLL);
    __dst[88] = v16;
    *v27 = v23[0];
    *&v27[3] = *(v23 + 3);
    v28 = v18;
    v29 = v19;
    v30 = v21;
    v31 = v22;
    v32 = v6;
    v33 = v25;
    sub_10038E0AC(v24, v20);
    sub_1005BD790(__dst);
    sub_10038DFDC(__dst);
  }
}

void sub_10038CC4C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_100388DCC();
    sub_10038B8DC();
    v5 = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 48];
    v7 = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state];
    v6 = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 16];
    v26[2] = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 32];
    v26[3] = v5;
    v26[0] = v7;
    v26[1] = v6;
    v9 = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 80];
    v8 = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 96];
    v10 = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 64];
    v27 = v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 112];
    v26[5] = v9;
    v26[6] = v8;
    v26[4] = v10;
    v11 = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 65];
    *(v25 + 3) = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 68];
    v25[0] = v11;
    v12 = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 74];
    v24 = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 78];
    v23 = v12;
    v13 = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 88];
    *(v22 + 9) = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 97];
    v22[0] = v13;
    v14 = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 48];
    v16 = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state];
    v15 = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 16];
    v28[2] = *&v4[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 32];
    v28[3] = v14;
    v28[0] = v16;
    v28[1] = v15;
    v29 = v17 & 1;
    *v30 = v25[0];
    *&v30[3] = *(v25 + 3);
    v31 = v18 & 1;
    v32 = v19 & 1;
    v34 = v24;
    v33 = v12;
    v35 = v20;
    *(v36 + 9) = *(v22 + 9);
    v36[0] = v13;
    sub_10038E0AC(v26, v21);
    sub_1005BD790(v28);
    sub_10038DFDC(v28);
  }
}

void sub_10038CDAC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10038BE20();
  }
}

void sub_10038CE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_10038BE20();
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    v12 = sub_100388DCC();
    sub_10038B8DC();
    v13 = *&v12[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 32];
    v14 = *&v12[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 48];
    v15 = *&v12[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 16];
    v50[0] = *&v12[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state];
    v50[3] = v14;
    v50[2] = v13;
    v50[1] = v15;
    v17 = *&v12[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 80];
    v16 = *&v12[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 96];
    v18 = v12[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 112];
    v50[4] = *&v12[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 64];
    v51 = v18;
    v50[6] = v16;
    v50[5] = v17;
    v19 = *&v12[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 65];
    *(v46 + 3) = *&v12[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 68];
    v46[0] = v19;
    v20 = *&v12[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 74];
    *&v49[4] = *&v12[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 78];
    *v49 = v20;
    v21 = *&v12[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 88];
    *(v52 + 9) = *&v12[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 97];
    v52[0] = v21;
    v22 = *&v12[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 32];
    v23 = *&v12[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 48];
    v24 = *&v12[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 16];
    v62[0] = *&v12[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state];
    v62[3] = v23;
    v62[2] = v22;
    v62[1] = v24;
    v63 = v25 & 1;
    *v64 = v46[0];
    *&v64[3] = *(v46 + 3);
    v65 = v26 & 1;
    v66 = v27 & 1;
    v68 = *&v49[4];
    v67 = v20;
    v69 = v28;
    *(v70 + 9) = *(v52 + 9);
    v70[0] = v52[0];
    sub_10038E0AC(v50, __dst);
    sub_1005BD790(v62);
    sub_10038DFDC(v62);

    v29 = *&v11[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController____lazy_storage___miniPlayerView];
    sub_10038B764();
    v31 = v30;
    v32 = *&v29[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 32];
    v33 = *&v29[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 48];
    v34 = *&v29[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 16];
    v52[0] = *&v29[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state];
    v52[3] = v33;
    v52[2] = v32;
    v52[1] = v34;
    v36 = *&v29[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 80];
    v35 = *&v29[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 96];
    v37 = v29[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 112];
    v52[4] = *&v29[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 64];
    v53 = v37;
    v52[6] = v35;
    v52[5] = v36;
    v38 = *&v29[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 89];
    *&v49[3] = *&v29[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 92];
    *v49 = v38;
    v39 = *&v29[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 98];
    v48 = *&v29[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 102];
    v47 = v39;
    v40 = v53;
    v42 = v41 & 1;
    v44 = v43 & 1;
    v45 = (v43 >> 8) & 1;
    memmove(__dst, &v29[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state], 0x58uLL);
    __dst[88] = v42;
    *v55 = *v49;
    *&v55[3] = *&v49[3];
    v56 = v44;
    v57 = v45;
    v58 = v47;
    v59 = v48;
    v60 = v31;
    v61 = v40;
    sub_10038E0AC(v52, v46);
    sub_1005BD790(__dst);
    sub_10038DFDC(__dst);
  }
}

void sub_10038D0A4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10038ADA8(a1);
  }
}

id sub_10038D218(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10079ACC4();
  v4 = sub_1007A29D4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Stopping playback of audiobook due to undocking the mini player", v5, 2u);
  }

  v6 = *&v2[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_eventHandler];
  [v6 stop];
  [v6 clearAudiobook];

  return [v2 close:1];
}

id sub_10038D350(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

void sub_10038D3B8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  swift_unknownObjectRetain();
  v5(v6, a3);

  swift_unknownObjectRelease();
}

void sub_10038D440(int a1, id a2)
{
  if ([a2 state] == 3)
  {
    sub_1003443D4(0, 0);
  }
}

uint64_t sub_10038D48C(void *a1, void *a2)
{
  v32 = sub_10079CAE4();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for BuyButtonPresenter();
  v36 = &off_100A0F178;
  v34[0] = a1;
  v5 = *(*sub_10000E3E8(v34, v35) + OBJC_IVAR____TtC5Books18BuyButtonPresenter_style);
  v6 = objc_opt_self();
  v7 = a1;

  v8 = [v6 bc_booksSecondaryIconBackgroundColor];
  v9 = sub_10079DD24();
  v10 = [v6 bc_booksBackground];
  v11 = sub_10079DD24();
  v12 = [v6 labelColor];
  v13 = sub_10079DEA4();
  v14 = [v6 bc_booksOrange];
  v15 = sub_10079DEA4();
  v16 = objc_allocWithZone(UIColor);
  aBlock[4] = sub_10038C1D0;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10038D350;
  aBlock[3] = &unk_100A186A8;
  v17 = _Block_copy(aBlock);
  [v16 initWithDynamicProvider:v17];
  _Block_release(v17);

  v18 = sub_10079DD24();
  *(v5 + 4) = v9;

  *(v5 + 5) = v18;

  *(v5 + 6) = sub_10079DDC4();

  *(v5 + 2) = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();

  *(v5 + 8) = v13;

  *(v5 + 9) = v11;

  *(v5 + 10) = v13;

  *(v5 + 13) = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();

  *(v5 + 14) = v15;

  *(v5 + 15) = v15;

  *(v5 + 7) = 0;
  v19 = [v6 bc_booksTransportControlsColor];
  *(v5 + 28) = sub_10079DD24();

  v20 = [a2 traitCollection];
  v21 = [v20 verticalSizeClass];

  if (v21 == 1)
  {
  }

  else
  {
    v22 = [a2 traitCollection];
    v23 = [v22 horizontalSizeClass];

    if (v23 != 1)
    {
      v24 = &enum case for ContentSizeCategory.extraLarge(_:);
      goto LABEL_6;
    }
  }

  v24 = &enum case for ContentSizeCategory.small(_:);
LABEL_6:
  v25 = v30;
  v26 = v31;
  v27 = v32;
  (*(v30 + 104))(v31, *v24, v32);
  v28 = OBJC_IVAR____TtC5Books14BuyButtonStyle_maximumContentSizeCategory;
  swift_beginAccess();
  (*(v25 + 40))(&v5[v28], v26, v27);
  swift_endAccess();

  return sub_1000074E0(v34);
}

void sub_10038D930()
{
  swift_getObjectType();
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController_cancellables) = &_swiftEmptySetSingleton;
  v1 = v0 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController_buyButtonProvider;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController_buyButtonViewController) = 0;
  v2 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController_contextMenuAppearDate;
  v3 = sub_100796BB4();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  sub_1001F1160(&qword_100ADF158, &qword_10081F2D8);
  sub_1007A22E4();
  sub_10079ACD4();
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController____lazy_storage___miniPlayerView) = 0;
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController_springLoadedInteraction) = 0;
  sub_1007A38A4();
  __break(1u);
}

id sub_10038DA90()
{
  v35 = sub_1007971A4();
  v1 = *(v35 - 8);
  __chkstk_darwin(v35);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v30 - v8;
  v10 = sub_100796BB4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchViewController_contextMenuAppearDate;
  swift_beginAccess();
  v34 = v14;
  v15 = &v0[v14];
  v16 = v0;
  sub_1000077D8(v15, v9, &unk_100ADB5C0, &unk_100816880);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_100007840(v9, &unk_100ADB5C0, &unk_100816880);
  }

  v31 = v6;
  v18 = *(v11 + 32);
  v33 = v13;
  v18(v13, v9, v10);
  v32 = *&v0[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_eventHandler];
  result = [v0 view];
  if (result)
  {
    v19 = result;
    v20 = v35;
    (*(v1 + 104))(v3, enum case for ContextActionSource.miniPlayer(_:), v35);
    sub_100797194();
    (*(v1 + 8))(v3, v20);
    v21 = sub_1007A2214();

    v22 = [v32 analyticsAssetPropertyProviderFor:v19 actionSource:v21];

    if (v22)
    {
      sub_100798004();
      v23 = sub_100797FF4();
      v24 = [v16 ba_effectiveAnalyticsTracker];
      v25 = v33;
      isa = sub_100796AF4().super.isa;
      [v23 emitContextualActionSheetExposureEventWithTracker:v24 startDate:isa propertyProvider:v22];
      swift_unknownObjectRelease();

      (*(v11 + 8))(v25, v10);
      v27 = v31;
      (*(v11 + 56))(v31, 1, 1, v10);
      v28 = v16;
      v29 = v34;
      swift_beginAccess();
      sub_100217AB4(v27, v28 + v29);
      return swift_endAccess();
    }

    else
    {
      return (*(v11 + 8))(v33, v10);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10038DEC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BuyButtonView.Style(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10038DF2C()
{
  result = qword_100ADF0F0;
  if (!qword_100ADF0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF0F0);
  }

  return result;
}

uint64_t sub_10038DF80(uint64_t a1)
{
  v2 = type metadata accessor for BuyButtonView.Style(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10038E17C()
{
  v1 = [objc_allocWithZone(UIView) init];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [objc_allocWithZone(UILabel) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle3];
  [v2 setFont:v3];

  v4 = objc_opt_self();
  v5 = [v4 bc_booksLabelColor];
  [v2 setTextColor:v5];

  [v2 setAdjustsFontForContentSizeCategory:1];
  v6 = sub_1007A2214();
  [v2 setText:v6];

  [v2 setTextAlignment:4];
  [v2 sizeToFit];
  [v1 addSubview:v2];
  v7 = objc_opt_self();
  v8 = sub_1007A2214();
  v9 = [v7 __systemImageNamedSwift:v8];

  v10 = [objc_allocWithZone(UIImageView) initWithImage:v9];
  v11 = [v2 font];
  if (v11)
  {
    v12 = v11;
    v13 = [objc_opt_self() configurationWithFont:v11];

    [v10 setPreferredSymbolConfiguration:v13];
    v36 = v10;
    [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [v4 bc_booksLabelColor];
    [v36 setTintColor:v14];

    [v1 addSubview:v36];
    v35 = objc_opt_self();
    sub_1001F1160(&unk_100AD8160, &unk_100813160);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_10081F2E0;
    v16 = [v1 leadingAnchor];
    v17 = [v36 leadingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17 constant:-10.0];

    *(v15 + 32) = v18;
    v19 = [v1 heightAnchor];
    v20 = [v19 constraintEqualToConstant:50.0];

    *(v15 + 40) = v20;
    v21 = [v2 centerYAnchor];
    v22 = [v1 centerYAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];

    *(v15 + 48) = v23;
    v24 = [v2 leadingAnchor];
    v25 = [v36 trailingAnchor];
    v26 = [v24 constraintEqualToAnchor:v25 constant:10.0];

    *(v15 + 56) = v26;
    v27 = [v2 trailingAnchor];

    v28 = [v1 layoutMarginsGuide];
    v29 = [v28 trailingAnchor];

    v30 = [v27 constraintLessThanOrEqualToAnchor:v29 constant:-10.0];
    *(v15 + 64) = v30;
    v31 = [v36 centerYAnchor];

    v32 = [v1 centerYAnchor];
    v33 = [v31 constraintEqualToAnchor:v32];

    *(v15 + 72) = v33;
    sub_10002267C();
    isa = sub_1007A25D4().super.isa;

    [v35 activateConstraints:isa];

    [v0 setView:v1];
  }

  else
  {
    __break(1u);
  }
}

void sub_10038E844()
{
  v36 = sub_100796CF4();
  v0 = *(v36 - 8);
  __chkstk_darwin(v36);
  v2 = &v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v36 - v4;
  v6 = sub_1007A21D4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  v37 = [objc_allocWithZone(UIView) init];
  [v37 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = [objc_allocWithZone(UILabel) init];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle3];
  [v13 setFont:v14];

  v15 = [objc_opt_self() bc_booksLabelColor];
  [v13 setTextColor:v15];

  sub_1007A2154();
  sub_100796C94();
  (*(v7 + 16))(v9, v12, v6);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v18 = v36;
  (*(v0 + 16))(v2, v5, v36);
  sub_1007A22D4(v9, 0, 0, v17, v2, "Done", 4, 2);
  (*(v0 + 8))(v5, v18);
  (*(v7 + 8))(v12, v6);
  v19 = sub_1007A2214();

  [v13 setText:v19];

  [v13 setTextAlignment:1];
  [v13 setAdjustsFontForContentSizeCategory:1];
  v20 = v37;
  [v37 addSubview:v13];
  v21 = objc_opt_self();
  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100816E30;
  v23 = [v13 widthAnchor];
  v24 = [v20 widthAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  *(v22 + 32) = v25;
  v26 = [v13 heightAnchor];
  v27 = [v20 heightAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];

  *(v22 + 40) = v28;
  v29 = [v13 centerYAnchor];
  v30 = [v20 centerYAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  *(v22 + 48) = v31;
  v32 = [v13 leadingAnchor];

  v33 = [v20 leadingAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];

  *(v22 + 56) = v34;
  sub_10002267C();
  isa = sub_1007A25D4().super.isa;

  [v21 activateConstraints:isa];

  [v38 setView:v20];
}

void sub_10038EFA8()
{
  v1 = v0;
  v2 = sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  __chkstk_darwin(v2 - 8);
  v4 = &v30 - v3;
  v5 = sub_100796BB4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  v12 = *&v1[OBJC_IVAR____TtC5Books28EditDatePickerViewController_datePicker];
  sub_100217B24(&v1[OBJC_IVAR____TtC5Books28EditDatePickerViewController_initialDate], v4);
  v13 = *(v6 + 48);
  if (v13(v4, 1, v5) == 1)
  {
    sub_100796B74();
    if (v13(v4, 1, v5) != 1)
    {
      sub_10038F7FC(v4);
    }
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
  }

  isa = sub_100796AF4().super.isa;
  v15 = *(v6 + 8);
  v15(v11, v5);
  [v12 setDate:isa];

  sub_100796B74();
  v16 = sub_100796AF4().super.isa;
  v15(v8, v5);
  [v12 setMaximumDate:v16];

  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v12 setDatePickerMode:1];
  [v12 setPreferredDatePickerStyle:3];
  v17 = [objc_allocWithZone(UIView) init];
  [v17 addSubview:v12];
  v18 = objc_opt_self();
  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100811370;
  v20 = [v12 leadingAnchor];
  v21 = [v17 leadingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:8.0];

  *(v19 + 32) = v22;
  v23 = [v12 trailingAnchor];
  v24 = [v17 trailingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:-8.0];

  *(v19 + 40) = v25;
  v26 = [v17 heightAnchor];
  v27 = [v12 heightAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];

  *(v19 + 48) = v28;
  sub_10002267C();
  v29 = sub_1007A25D4().super.isa;

  [v18 activateConstraints:v29];

  [v1 setView:v17];
}

id sub_10038F684(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for EditDatePickerViewController(uint64_t a1)
{
  result = qword_100ADF1F0;
  if (!qword_100ADF1F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10038F75C(uint64_t a1)
{
  sub_1002CDD3C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10038F7FC(uint64_t a1)
{
  v2 = sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10038F864(uint64_t a1)
{
  sub_10028B574(319);
  if (v1 <= 0x3F)
  {
    sub_100247D20();
    if (v2 <= 0x3F)
    {
      sub_10038F974();
      if (v3 <= 0x3F)
      {
        sub_10038F9CC();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10038F974()
{
  if (!qword_100ADF280)
  {
    v0 = sub_1007A2114();
    if (!v1)
    {
      atomic_store(v0, &qword_100ADF280);
    }
  }
}

unint64_t sub_10038F9CC()
{
  result = qword_100ADF288;
  if (!qword_100ADF288)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100ADF288);
  }

  return result;
}

uint64_t sub_10038FA94(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_10079E5D4();
}

uint64_t sub_10038FC64@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10079C824();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001F1160(&unk_100ADB4E0, &qword_100815F30);
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  sub_1000077D8(v2, &v15 - v9, &unk_100ADB4E0, &qword_100815F30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10079CAE4();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_1007A29C4();
    v14 = sub_10079D244();
    sub_10079AB44(v13, &_mh_execute_header, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_10079C814();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

double sub_10038FE64(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(a1);
  (*(v3 + 16))(v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1, v5);
  sub_1007A26F4();
  v6 = sub_1007A26E4();
  v7 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = &protocol witness table for MainActor;
  *(v8 + 32) = *(a1 + 16);
  (*(v3 + 32))(v8 + v7, v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v9 = (v1 + *(a1 + 60));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v11;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = sub_1003922D8;
  v13[5] = v12;

  sub_10079E204();
  return *&v15[3];
}

uint64_t sub_100390048(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 56));
  isa = sub_1007A27B4().super.super.isa;
  v4 = [v2 stringFromNumber:isa];

  if (v4)
  {
    v5 = sub_1007A2254();

    return v5;
  }

  else
  {

    return sub_1007A27C4();
  }
}

uint64_t sub_1003900F8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v22 = a2;
  sub_1001F1234(&qword_100ADF290, &qword_10081F3E8);
  v21 = *(a1 + 16);
  sub_10079C2A4();
  sub_10079C2A4();
  sub_10079D1C4();
  sub_10079C2A4();
  sub_1001F1234(&qword_100ADF298, &qword_10081F3F0);
  sub_1001F1234(&qword_100ADF2A0, &qword_10081F3F8);
  swift_getTupleTypeMetadata3();
  v4 = sub_10079E5C4();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for OptionsAdaptiveStack(255, v4, WitnessTable, v6);
  swift_getTupleTypeMetadata2();
  sub_10079E5C4();
  swift_getWitnessTable();
  v7 = sub_10079E184();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  v14 = sub_100390048(a1);
  v16 = v15;
  sub_10079CB34();
  v17 = *(a1 + 24);
  v23 = v21;
  v24 = v17;
  v25 = v2;
  v26 = v14;
  v27 = v16;
  sub_10079E174();

  swift_getWitnessTable();
  v18 = *(v8 + 16);
  v18(v13, v10, v7);
  v19 = *(v8 + 8);
  v19(v10, v7);
  v18(v22, v13, v7);
  return (v19)(v13, v7);
}

uint64_t sub_1003903E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v75 = a5;
  v74 = a4;
  v79 = a3;
  v78 = a2;
  v63 = a1;
  v80 = a6;
  v9 = sub_1001F1160(&qword_100AD6E98, &unk_100816030);
  __chkstk_darwin(v9 - 8);
  v77 = (&v62 - v10);
  v11 = sub_1001F1160(&qword_100AE3E60, &unk_100813BB0);
  __chkstk_darwin(v11 - 8);
  v76 = (&v62 - v12);
  v14 = type metadata accessor for OptionSlider(0, a4, a5, v13);
  v64 = v14;
  v72 = *(v14 - 8);
  v73 = *(v72 + 64);
  __chkstk_darwin(v14);
  v71 = &v62 - v15;
  sub_10079C2A4();
  sub_10079C2A4();
  sub_10079D1C4();
  sub_10079C2A4();
  sub_1001F1234(&qword_100ADF298, &qword_10081F3F0);
  sub_1001F1234(&qword_100ADF2A0, &qword_10081F3F8);
  swift_getTupleTypeMetadata3();
  v16 = sub_10079E5C4();
  v66 = v16;
  WitnessTable = swift_getWitnessTable();
  v18 = type metadata accessor for OptionsAdaptiveStack(0, v16, WitnessTable, v17);
  v69 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v68 = &v62 - v22;
  v70 = sub_1001F1160(&qword_100ADF290, &qword_10081F3E8);
  __chkstk_darwin(v70);
  v67 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v62 = &v62 - v25;
  v26 = (a1 + *(v14 + 36));
  v27 = v26[1];
  *&v90[0] = *v26;
  *(&v90[0] + 1) = v27;
  sub_100206ECC();

  v28 = sub_10079D5D4();
  v30 = v29;
  LOBYTE(v14) = v31;
  v33 = v32;
  KeyPath = swift_getKeyPath();
  v35 = sub_10079D494();
  v36 = swift_getKeyPath();
  v37 = v14 & 1;
  LOBYTE(v90[0]) = v14 & 1;
  LOBYTE(v84) = 0;
  v38 = _s5Books11ChromeStyleC14secondaryColor7SwiftUI0E0Vvg_0();
  v39 = swift_getKeyPath();
  *&v84 = v28;
  *(&v84 + 1) = v30;
  LOBYTE(v85) = v37;
  *(&v85 + 1) = v33;
  *&v86 = KeyPath;
  *(&v86 + 1) = 2;
  LOBYTE(v87) = 0;
  *(&v87 + 1) = v36;
  *&v88 = v35;
  *(&v88 + 1) = v39;
  v89 = v38;
  sub_1001F1160(&qword_100ADF2A8, &qword_10081F490);
  sub_1003917A4();
  v40 = v62;
  sub_10079D944();
  v90[3] = v87;
  v90[4] = v88;
  v91 = v89;
  v90[0] = v84;
  v90[1] = v85;
  v90[2] = v86;
  sub_100007840(v90, &qword_100ADF2A8, &qword_10081F490);
  v41 = v72;
  v42 = v71;
  v43 = v64;
  (*(v72 + 16))(v71, v63, v64);
  v44 = v41;
  v45 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v46 = (v73 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  v48 = v75;
  *(v47 + 16) = v74;
  *(v47 + 24) = v48;
  (*(v44 + 32))(v47 + v45, v42, v43);
  v49 = (v47 + v46);
  v50 = v79;
  *v49 = v78;
  v49[1] = v50;
  v51 = v76;
  v52 = v66;
  v53 = WitnessTable;
  sub_10028C804(v76);
  v54 = v77;
  sub_10028C820(v77);
  sub_10028C8A0(v51, v54, 0x4024000000000000, 0, sub_100391914, v47, v52, v53, v20);
  v55 = swift_getWitnessTable();
  v56 = v69;
  v57 = *(v69 + 16);
  v58 = v68;
  v57(v68, v20, v18);
  v59 = *(v56 + 8);

  v59(v20, v18);
  v60 = v67;
  sub_1000077D8(v40, v67, &qword_100ADF290, &qword_10081F3E8);
  *&v84 = v60;
  v57(v20, v58, v18);
  *(&v84 + 1) = v20;
  v83[0] = v70;
  v83[1] = v18;
  v81 = sub_1003919D0();
  v82 = v55;
  sub_10038FA94(&v84, 2uLL, v83);
  v59(v58, v18);
  sub_100007840(v40, &qword_100ADF290, &qword_10081F3E8);
  v59(v20, v18);
  return sub_100007840(v60, &qword_100ADF290, &qword_10081F3E8);
}

uint64_t sub_100390B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *&v100 = a2;
  *(&v100 + 1) = a3;
  v91 = a1;
  v112 = a6;
  v109 = sub_10079CAE4();
  v107 = *(v109 - 8);
  __chkstk_darwin(v109);
  v106 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v103 = &v90 - v11;
  v102 = sub_1001F1160(&qword_100ADF2D0, &qword_10081F4A0) - 8;
  __chkstk_darwin(v102);
  v101 = &v90 - v12;
  v108 = sub_1001F1160(&qword_100ADF2D8, &qword_10081F4A8);
  __chkstk_darwin(v108);
  v105 = &v90 - v13;
  v111 = sub_1001F1160(&qword_100ADF2A0, &qword_10081F3F8);
  __chkstk_darwin(v111);
  v110 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v104 = &v90 - v16;
  v97 = sub_1001F1160(&qword_100ADF2E0, &qword_10081F4B0);
  __chkstk_darwin(v97);
  v94 = &v90 - v17;
  v99 = sub_1001F1160(&qword_100ADF2E8, &qword_10081F4B8);
  __chkstk_darwin(v99);
  v96 = &v90 - v18;
  v118 = sub_1001F1160(&qword_100ADF298, &qword_10081F3F0);
  __chkstk_darwin(v118);
  v117 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v115 = &v90 - v21;
  v93 = *(a4 - 8);
  __chkstk_darwin(v22);
  v24 = &v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10079C2A4();
  v95 = *(v25 - 8);
  __chkstk_darwin(v25);
  v27 = &v90 - v26;
  v28 = sub_10079C2A4();
  v98 = *(v28 - 8);
  __chkstk_darwin(v28);
  v30 = &v90 - v29;
  sub_10079D1C4();
  v114 = sub_10079C2A4();
  v119 = *(v114 - 8);
  __chkstk_darwin(v114);
  v32 = &v90 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v116 = &v90 - v34;
  v90 = type metadata accessor for OptionSlider(0, a4, a5, v35);
  (*(a1 + v90[10]))();
  sub_10079E474();
  sub_10079DB14();
  v93[1](v24, a4);
  sub_10079D2E4();
  v134 = a5;
  v135 = &protocol witness table for _FrameLayout;
  WitnessTable = swift_getWitnessTable();
  sub_10079DBE4();
  (*(v95 + 8))(v27, v25);
  v132 = WitnessTable;
  v133 = &protocol witness table for _PaddingLayout;
  v37 = swift_getWitnessTable();
  sub_10079D944();
  v98[1](v30, v28);
  v38 = sub_100391A5C();
  v130 = v37;
  v131 = v38;
  v39 = v114;
  v95 = swift_getWitnessTable();
  v40 = v119;
  v41 = *(v119 + 16);
  v92 = v119 + 16;
  v93 = v41;
  v113 = v32;
  (v41)(v116, v32, v39);
  v42 = *(v40 + 8);
  v119 = v40 + 8;
  v98 = v42;
  (v42)(v32, v39);
  v43 = v90;
  v44 = v91;
  v45 = sub_10038FE64(v90);
  *&v138 = v46;
  *(&v138 + 1) = v47;
  *&v139 = v45;
  v48 = v43[12];
  v125 = *(v44 + v43[11]);
  v124[0] = *(v44 + v48);
  sub_100247DCC();
  v49 = v94;
  sub_10079E144();
  v50 = sub_10079DE34();
  KeyPath = swift_getKeyPath();
  v52 = (v49 + *(v97 + 36));
  *v52 = KeyPath;
  v52[1] = v50;
  v53 = (v44 + v43[9]);
  v55 = *v53;
  v54 = v53[1];
  *&v138 = v55;
  *(&v138 + 1) = v54;
  sub_100391AB4();
  sub_100206ECC();
  v56 = v96;
  sub_10079D8E4();
  sub_100007840(v49, &qword_100ADF2E0, &qword_10081F4B0);
  v57 = v100;
  v138 = v100;
  v58 = v115;
  sub_10079C1E4();
  sub_100007840(v56, &qword_100ADF2E8, &qword_10081F4B8);
  *(v58 + *(v118 + 36)) = 1;
  v138 = v57;

  v59 = sub_10079D5D4();
  v61 = v60;
  LOBYTE(v37) = v62;
  v64 = v63;
  v65 = swift_getKeyPath();
  v66 = sub_10079D374();
  v67 = swift_getKeyPath();
  LOBYTE(v124[0]) = v37 & 1;
  LOBYTE(v123[0]) = 0;
  *&v125 = v59;
  *(&v125 + 1) = v61;
  LOBYTE(v126) = v37 & 1;
  *(&v126 + 1) = *v137;
  DWORD1(v126) = *&v137[3];
  *(&v126 + 1) = v64;
  *&v127 = v65;
  *(&v127 + 1) = 1;
  LOBYTE(v128) = 0;
  *(&v128 + 1) = *v136;
  DWORD1(v128) = *&v136[3];
  *(&v128 + 1) = v67;
  v129 = v66;
  sub_1001F1160(&qword_100ADF2C0, &qword_10081F498);
  sub_10039185C();
  v68 = v101;
  sub_10079D814();
  v139 = v126;
  v140 = v127;
  v141 = v128;
  v142 = v129;
  v138 = v125;
  sub_100007840(&v138, &qword_100ADF2C0, &qword_10081F498);
  v69 = _s5Books11ChromeStyleC14secondaryColor7SwiftUI0E0Vvg_0();
  v70 = swift_getKeyPath();
  v71 = v103;
  v72 = (v68 + *(v102 + 44));
  *v72 = v70;
  v72[1] = v69;
  sub_10038FC64(v71);
  v74 = v106;
  v73 = v107;
  v75 = v109;
  (*(v107 + 104))(v106, enum case for ContentSizeCategory.extraLarge(_:), v109);
  v76 = v71;
  sub_100391B98(v71, v74);
  v77 = *(v73 + 8);
  v77(v74, v75);
  v77(v76, v75);
  sub_10079E474();
  sub_10079BE54();
  v78 = v105;
  sub_1000362A0(v68, v105);
  v79 = (v78 + *(v108 + 36));
  v80 = v126;
  *v79 = v125;
  v79[1] = v80;
  v79[2] = v127;
  sub_100391FB0();
  v81 = v104;
  sub_10079D944();
  sub_100007840(v78, &qword_100ADF2D8, &qword_10081F4A8);
  v82 = v113;
  v83 = v114;
  v84 = v116;
  (v93)(v113, v116, v114);
  v124[0] = v82;
  v85 = v115;
  v86 = v117;
  sub_1000077D8(v115, v117, &qword_100ADF298, &qword_10081F3F0);
  v124[1] = v86;
  v87 = v110;
  sub_100036310(v81, v110);
  v124[2] = v87;
  v123[0] = v83;
  v123[1] = v118;
  v123[2] = v111;
  v120 = v95;
  v121 = sub_100392130();
  v122 = sub_1003921E8(&qword_100ADF328, &qword_100ADF2A0, &qword_10081F3F8, sub_100391FB0);
  sub_10038FA94(v124, 3uLL, v123);
  sub_100007840(v81, &qword_100ADF2A0, &qword_10081F3F8);
  sub_100007840(v85, &qword_100ADF298, &qword_10081F3F0);
  v88 = v98;
  (v98)(v84, v83);
  sub_100007840(v87, &qword_100ADF2A0, &qword_10081F3F8);
  sub_100007840(v117, &qword_100ADF298, &qword_10081F3F0);
  return (v88)(v113, v83);
}

unint64_t sub_1003917A4()
{
  result = qword_100ADF2B0;
  if (!qword_100ADF2B0)
  {
    sub_1001F1234(&qword_100ADF2A8, &qword_10081F490);
    sub_10039185C();
    sub_100005920(&unk_100AD1D10, &qword_100ADB490, &unk_10080B730, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF2B0);
  }

  return result;
}

unint64_t sub_10039185C()
{
  result = qword_100ADF2B8;
  if (!qword_100ADF2B8)
  {
    sub_1001F1234(&qword_100ADF2C0, &qword_10081F498);
    sub_100324064();
    sub_100005920(&unk_100AD1CF0, &qword_100ADBDA0, &unk_10080B720, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF2B8);
  }

  return result;
}

uint64_t sub_100391914@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(type metadata accessor for OptionSlider(0, v4, v5, a1) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = (v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_100390B88(v2 + v7, v9, v10, v4, v5, a2);
}

unint64_t sub_1003919D0()
{
  result = qword_100ADF2C8;
  if (!qword_100ADF2C8)
  {
    sub_1001F1234(&qword_100ADF290, &qword_10081F3E8);
    sub_1003917A4();
    sub_100391A5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF2C8);
  }

  return result;
}

unint64_t sub_100391A5C()
{
  result = qword_100AF45F0;
  if (!qword_100AF45F0)
  {
    sub_10079D1C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF45F0);
  }

  return result;
}

unint64_t sub_100391AB4()
{
  result = qword_100ADF2F0;
  if (!qword_100ADF2F0)
  {
    sub_1001F1234(&qword_100ADF2E0, &qword_10081F4B0);
    sub_100005920(&qword_100ADF2F8, &qword_100ADF300, &unk_10081F4F0, &protocol conformance descriptor for Slider<A, B>);
    sub_100005920(&unk_100AD1D10, &qword_100ADB490, &unk_10080B730, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF2F0);
  }

  return result;
}

BOOL sub_100391B98(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v3 = sub_10079CAE4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v11 = *(v4 + 16);
  v11(&v19 - v9, a2, v3, v8);
  v12 = *(v4 + 88);
  v13 = v12(v10, v3);
  v14 = 0;
  v15 = enum case for ContentSizeCategory.extraSmall(_:);
  if (v13 != enum case for ContentSizeCategory.extraSmall(_:))
  {
    if (v13 == enum case for ContentSizeCategory.small(_:))
    {
      v14 = 1;
      goto LABEL_24;
    }

    if (v13 == enum case for ContentSizeCategory.medium(_:))
    {
      v14 = 2;
      goto LABEL_24;
    }

    if (v13 == enum case for ContentSizeCategory.large(_:))
    {
      goto LABEL_7;
    }

    if (v13 == enum case for ContentSizeCategory.extraLarge(_:))
    {
      v14 = 4;
    }

    else if (v13 == enum case for ContentSizeCategory.extraExtraLarge(_:))
    {
      v14 = 5;
    }

    else if (v13 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
    {
      v14 = 6;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityMedium(_:))
    {
      v14 = 7;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityLarge(_:))
    {
      v14 = 8;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
    {
      v14 = 9;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
    {
      v14 = 10;
    }

    else
    {
      if (v13 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        (*(v4 + 8))(v10, v3);
LABEL_7:
        v14 = 3;
        goto LABEL_24;
      }

      v14 = 11;
    }
  }

LABEL_24:
  (v11)(v6, v20, v3);
  v16 = v12(v6, v3);
  if (v16 == v15)
  {
    v17 = 0;
  }

  else if (v16 == enum case for ContentSizeCategory.small(_:))
  {
    v17 = 1;
  }

  else if (v16 == enum case for ContentSizeCategory.medium(_:))
  {
    v17 = 2;
  }

  else
  {
    if (v16 != enum case for ContentSizeCategory.large(_:))
    {
      if (v16 == enum case for ContentSizeCategory.extraLarge(_:))
      {
        v17 = 4;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.extraExtraLarge(_:))
      {
        v17 = 5;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
      {
        v17 = 6;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityMedium(_:))
      {
        v17 = 7;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityLarge(_:))
      {
        v17 = 8;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
      {
        v17 = 9;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
      {
        v17 = 10;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        v17 = 11;
        return v14 < v17;
      }

      (*(v4 + 8))(v6, v3);
    }

    v17 = 3;
  }

  return v14 < v17;
}

unint64_t sub_100391FB0()
{
  result = qword_100ADF308;
  if (!qword_100ADF308)
  {
    sub_1001F1234(&qword_100ADF2D8, &qword_10081F4A8);
    sub_10039203C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF308);
  }

  return result;
}

unint64_t sub_10039203C()
{
  result = qword_100ADF310;
  if (!qword_100ADF310)
  {
    sub_1001F1234(&qword_100ADF2D0, &qword_10081F4A0);
    sub_1001F1234(&qword_100ADF2C0, &qword_10081F498);
    sub_10039185C();
    swift_getOpaqueTypeConformance2();
    sub_100005920(&unk_100AD1D10, &qword_100ADB490, &unk_10080B730, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF310);
  }

  return result;
}

unint64_t sub_100392130()
{
  result = qword_100ADF318;
  if (!qword_100ADF318)
  {
    sub_1001F1234(&qword_100ADF298, &qword_10081F3F0);
    sub_1003921E8(&qword_100ADF320, &qword_100ADF2E8, &qword_10081F4B8, sub_100391AB4);
    sub_100303C54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF318);
  }

  return result;
}

uint64_t sub_1003921E8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001F1234(a2, a3);
    a4();
    sub_100391A5C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_10039226C@<D0>(uint64_t a1@<X3>, double *a2@<X8>)
{
  v4 = type metadata accessor for OptionSlider(0, *(v2 + 32), *(v2 + 40), a1);
  result = *(v2 + ((*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80)) + *(v4 + 52));
  *a2 = result;
  return result;
}

uint64_t sub_100392330()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100ADF330);
  sub_100008B98(v0, qword_100ADF330);
  sub_10000A7C4(0, &qword_100AD20A0, OS_os_log_ptr);
  return sub_1007A33F4();
}

void sub_1003923B4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_getObjectType();
    v3 = swift_allocObject();
    swift_weakInit();

    v4 = sub_100392728(sub_100392BB8, v3);
  }

  else
  {
    v4 = 0;
  }

  *(v0 + OBJC_IVAR____TtC5Books40AppIntentsAssetViewControllerInfoTracker_task) = v4;

  sub_100392554();
}

uint64_t sub_100392488()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v1);

  return v1;
}

double sub_1003924FC(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100392554();
  }

  return result;
}

void sub_100392554()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong appIntentsInfo];
  }

  else
  {
    v2 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v9);

  v3 = v9[0];
  if (v9[0])
  {
    if (!v2)
    {

      v5 = 0;
      v6 = 0;
      goto LABEL_11;
    }

    sub_10000A7C4(0, &qword_100AEA140, BCAppIntentsAssetViewControllerInfo_ptr);
    v2 = v2;
    v4 = sub_1007A3184();

    if (v4)
    {

      return;
    }
  }

  else if (!v2)
  {
    return;
  }

  v5 = v2;
  [v5 copyWithZone:0];
  sub_1007A3504();
  swift_unknownObjectRelease();

  sub_10000A7C4(0, &qword_100AEA140, BCAppIntentsAssetViewControllerInfo_ptr);
  swift_dynamicCast();
  v6 = v8;
LABEL_11:
  swift_getKeyPath();
  swift_getKeyPath();
  v9[0] = v6;
  v7 = v6;

  sub_10079B9B4();
}

uint64_t sub_100392728(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v8[4] = sub_100392BC0;
  v8[5] = v4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1003323D0;
  v8[3] = &unk_100A18840;
  v5 = _Block_copy(v8);

  v6 = BCAppIntentsAssetViewControllerAddInfoChangeObserver();
  _Block_release(v5);
  *(swift_allocObject() + 16) = v6;
  sub_10079B884();
  swift_allocObject();
  return sub_10079B894();
}

uint64_t sub_100392860()
{
  sub_10002B130(v0 + 16);
  v1 = OBJC_IVAR____TtC5Books40AppIntentsAssetViewControllerInfoTracker__appIntentsInfo;
  v2 = sub_1001F1160(&unk_100AE8330, &qword_10081F580);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_100392928(uint64_t a1, uint64_t a2)
{
  v4 = sub_1007A1D04();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);

  *v7 = sub_1007A2D74();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  LOBYTE(a2) = sub_1007A1D34();
  result = (*(v5 + 8))(v7, v4);
  if (a2)
  {

    (*(v8 + 16))(v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100392AC0(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v3);

  *a2 = v3;
}

uint64_t sub_100392B40(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return sub_10079B9B4();
}

uint64_t sub_100392BD8()
{
  v1 = sub_100796CF4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v24 - v6;
  v8 = sub_1007A21D4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v24 - v14;
  if (*(v0 + 56))
  {
    v16 = *(v0 + 48);
    if (*(v0 + 80))
    {
LABEL_3:

      return v16;
    }
  }

  else
  {
    v16 = 0;
    if (*(v0 + 80))
    {
      goto LABEL_3;
    }
  }

  v24[0] = v2;
  v17 = v13;
  v18 = *(v0 + 72);

  if (v18 <= 1)
  {
    if (v18 == 1)
    {
      return v16;
    }

LABEL_10:

    return 0;
  }

  if (v18 == 2)
  {

    sub_1007A2154();
    sub_100796C94();
    v19 = v17;
    (*(v9 + 16))(v11, v15, v17);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v21 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v22 = v24[0];
    (*(v24[0] + 16))(v4, v7, v1);
    v16 = sub_1007A22D4(v11, 0, 0, v21, v4, "Accessibility Free Label Text", 29, 2);
    (*(v22 + 8))(v7, v1);
    (*(v9 + 8))(v15, v19);
    return v16;
  }

  if (v18 != 3)
  {
    goto LABEL_10;
  }

  return v16;
}

uint64_t sub_100392ED8(void *a1, uint64_t a2)
{
  *(v2 + 104) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 128) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 136) = 0;
  *(v2 + 144) = 2;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 80) = 514;
  *(v2 + 88) = 0;
  *(v2 + 96) = 1;
  v4 = *(v2 + 104);
  *(v2 + 104) = a1;
  v5 = a1;

  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;

    [v7 setServiceDelegate:v2];
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  return v2;
}

void sub_100392FC4()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(v0 + 128);
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = [v5 isAudiobook];
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = 0;
    }

    *(v1 + 81) = v6;
    v7 = *(v1 + 24);
    v8 = *(v1 + 80);
    v9 = (v3 + OBJC_IVAR____TtC5Books19BuyButtonInteractor_buyParameters);
    *v9 = *(v1 + 16);
    v9[1] = v7;
    swift_bridgeObjectRetain_n();

    *(v3 + OBJC_IVAR____TtC5Books19BuyButtonInteractor_canPreorder) = v8;
    sub_1005353C0(v10, v11);
    sub_100535160();

    v12 = *(v1 + 104);
    if (v12)
    {
      v13 = swift_allocObject();
      v13[2] = v1;
      v13[3] = v3;
      v13[4] = v4;
      v24[4] = sub_100393A5C;
      v24[5] = v13;
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 1107296256;
      v24[2] = sub_100393608;
      v24[3] = &unk_100A189D8;
      v14 = _Block_copy(v24);
      v15 = v12;

      swift_unknownObjectRetain();

      [v15 get:v14];
      _Block_release(v14);
    }

    v16 = [objc_opt_self() processInfo];
    v17 = [v16 environment];

    v18 = sub_1007A2044();
    if (*(v18 + 16) && (sub_10000E53C(0xD00000000000001BLL, 0x80000001008CE990), (v19 & 1) != 0))
    {
      swift_unknownObjectRelease();
    }

    else
    {

      v20 = [objc_opt_self() reachabilityForInternetConnection];
      v21 = *(v1 + 136);
      *(v1 + 136) = v20;

      v22 = [objc_opt_self() defaultCenter];
      if (qword_100AD14B8 != -1)
      {
        swift_once();
      }

      [v22 addObserver:v1 selector:? name:? object:?];

      v23 = *(v1 + 136);
      [v23 startNotifier];

      swift_unknownObjectRelease();
    }
  }
}

void *sub_100393334(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!result)
  {
    return result;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    return result;
  }

  v6 = result;
  swift_unknownObjectRetain();
  v7 = [v6 buyParameters];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1007A2254();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  *(a3 + 16) = v9;
  *(a3 + 24) = v11;

  v12 = [v6 priceString];
  if (!v12 || (v13 = v12, v14 = sub_1007A2254(), v16 = v15, v13, *&v39[0] = v14, *(&v39[0] + 1) = v16, sub_1002060B4(), LOBYTE(v13) = sub_1007A28A4(), , (v13 & 1) == 0))
  {
    v17 = [v6 actionTextWithType:0];
    if (!v17)
    {
      goto LABEL_9;
    }

LABEL_11:
    v20 = v17;
    v18 = sub_1007A2254();
    v19 = v21;

    goto LABEL_12;
  }

  v17 = [v6 priceString];
  if (v17)
  {
    goto LABEL_11;
  }

LABEL_9:
  v18 = 0;
  v19 = 0;
LABEL_12:
  *(a3 + 32) = v18;
  *(a3 + 40) = v19;

  v22 = [v6 priceString];
  if (v22)
  {
    v23 = v22;
    v24 = sub_1007A2254();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  *(a3 + 64) = v24;
  *(a3 + 72) = v26;

  v27 = [v6 actionTextWithType:0];
  if (v27)
  {
    v28 = v27;
    v29 = sub_1007A2254();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  *(a3 + 48) = v29;
  *(a3 + 56) = v31;

  *(a3 + 80) = [v6 isPreorder];
  *(a3 + 88) = [v6 offerType];
  *(a3 + 96) = 0;
  v33 = *(a3 + 48);
  v32 = *(a3 + 64);
  v34 = *(a3 + 32);
  v39[0] = *(a3 + 16);
  v39[1] = v34;
  v39[2] = v33;
  v35 = *(a3 + 80);
  v39[3] = v32;
  v40 = v35;
  v41 = *(a3 + 96);
  *(a4 + OBJC_IVAR____TtC5Books19BuyButtonInteractor_buyParameters) = v39[0];
  sub_1002242F8(v39, v38);

  *(a4 + OBJC_IVAR____TtC5Books19BuyButtonInteractor_canPreorder) = v40;
  sub_1005353C0(v36, v37);
  sub_100535160();
  sub_100224354(v39);
  return swift_unknownObjectRelease();
}

uint64_t sub_100393608(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

id sub_100393718()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ([Strong respondsToSelector:"storeReachable"])
    {
      v2 = [v1 storeReachable];
      goto LABEL_9;
    }

    swift_unknownObjectRelease();
  }

  if ([objc_opt_self() isOffline])
  {
    return 0;
  }

  v3 = [objc_opt_self() sharedProvider];
  v4 = [v3 isStoreAccountManagedAppleID];

  if (v4)
  {
    return 0;
  }

  v2 = [objc_msgSend(objc_opt_self() "sharedInstance")];
LABEL_9:
  v6 = v2;
  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_100393810()
{

  sub_10002B130(v0 + 112);
  sub_10002B130(v0 + 120);

  return swift_deallocClassInstance();
}

__n128 sub_100393928(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10039394C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 81))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1003939A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

NSString sub_100393A24()
{
  result = sub_1007A2214();
  qword_100B23178 = result;
  return result;
}

void sub_100393B10(double a1)
{
  v2 = OBJC_IVAR___BKNowPlayingIndicatorView_levelCornerRadius;
  *(v1 + OBJC_IVAR___BKNowPlayingIndicatorView_levelCornerRadius) = a1;
  v3 = OBJC_IVAR___BKNowPlayingIndicatorView_levelViews;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
    v5 = sub_1007A38D4();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {

    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = sub_1007A3784();
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      v9 = [v7 layer];
      [v9 setCornerRadius:*(v1 + v2)];
    }

    while (v5 != v6);
  }
}

id sub_100393F68(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR___BKNowPlayingIndicatorView_levelViews] = _swiftEmptyArrayStorage;
  v4[OBJC_IVAR___BKNowPlayingIndicatorView_needsLevelUpdate] = 0;
  *&v4[OBJC_IVAR___BKNowPlayingIndicatorView_interLevelSpacing] = 0x3FE0000000000000;
  *&v4[OBJC_IVAR___BKNowPlayingIndicatorView_levelCornerRadius] = 0x3FE0000000000000;
  *&v4[OBJC_IVAR___BKNowPlayingIndicatorView_levelWidth] = 0x4008000000000000;
  *&v4[OBJC_IVAR___BKNowPlayingIndicatorView_maximumLevelHeight] = 0x402A000000000000;
  *&v4[OBJC_IVAR___BKNowPlayingIndicatorView_minimumLevelHeight] = 0x4008000000000000;
  *&v4[OBJC_IVAR___BKNowPlayingIndicatorView_numberOfLevels] = 3;
  *&v4[OBJC_IVAR___BKNowPlayingIndicatorView_playbackState] = 0;
  v4[OBJC_IVAR___BKNowPlayingIndicatorView_showsLevelGutters] = 0;
  v9 = OBJC_IVAR___BKNowPlayingIndicatorView_levelGuttersColor;
  v10 = objc_opt_self();
  v11 = [v10 whiteColor];
  v12 = [v11 colorWithAlphaComponent:0.2];

  *&v4[v9] = v12;
  v13 = OBJC_IVAR___BKNowPlayingIndicatorView_levelColor;
  *&v4[v13] = [v10 whiteColor];
  v16.receiver = v4;
  v16.super_class = type metadata accessor for NowPlayingIndicatorView();
  v14 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  sub_1003947FC();

  return v14;
}

Swift::Void __swiftcall NowPlayingIndicatorView.layoutSubviews()()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for NowPlayingIndicatorView();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  v1 = OBJC_IVAR___BKNowPlayingIndicatorView_levelViews;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2 >> 62)
  {
    v3 = sub_1007A38D4();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    v4 = OBJC_IVAR___BKNowPlayingIndicatorView_levelWidth;
    v5 = OBJC_IVAR___BKNowPlayingIndicatorView_interLevelSpacing;

    v6 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = sub_1007A3784();
      }

      else
      {
        v7 = *(v2 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      [v7 frame];
      v11 = v10;
      v12 = *&v0[v4];
      v13 = (v12 + *&v0[v5]) * v6;
      [v0 bounds];
      MaxY = CGRectGetMaxY(v17);
      [v8 setFrame:{v13, MaxY, v12, v11}];
      v15 = [v8 layer];
      [v15 setFrame:{v13, MaxY, v12, v11}];

      v6 = v9;
    }

    while (v3 != v9);
  }
}

void NowPlayingIndicatorView.draw(_:)(double a1, double a2, double a3, double a4)
{
  v16.receiver = v4;
  v16.super_class = type metadata accessor for NowPlayingIndicatorView();
  objc_msgSendSuper2(&v16, "drawRect:", a1, a2, a3, a4);
  if (v4[OBJC_IVAR___BKNowPlayingIndicatorView_showsLevelGutters] == 1)
  {
    v9 = *&v4[OBJC_IVAR___BKNowPlayingIndicatorView_levelGuttersColor];
    if (v9)
    {
      v10 = *&v4[OBJC_IVAR___BKNowPlayingIndicatorView_levelGuttersColor];
    }

    else
    {
      v10 = [*&v4[OBJC_IVAR___BKNowPlayingIndicatorView_levelColor] colorWithAlphaComponent:0.2];
      v9 = 0;
    }

    v11 = v9;
    [v10 setFill];
    [v4 bounds];
    CGRectGetMaxY(v17);
    v12 = *&v4[OBJC_IVAR___BKNowPlayingIndicatorView_numberOfLevels];
    if (v12 < 0)
    {
      __break(1u);
      return;
    }

    v13 = 0;
    while (1)
    {
      UIRectFillUsingOperation();
      if (v12 == v13)
      {
        break;
      }

      if (__OFADD__(v13++, 1))
      {
        __break(1u);
        break;
      }
    }
  }

  v15 = OBJC_IVAR___BKNowPlayingIndicatorView_needsLevelUpdate;
  if (v4[OBJC_IVAR___BKNowPlayingIndicatorView_needsLevelUpdate] == 1)
  {
    sub_1003947FC();
    v4[v15] = 0;
  }
}

Swift::Void __swiftcall NowPlayingIndicatorView.tintColorDidChange()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for NowPlayingIndicatorView();
  objc_msgSendSuper2(&v1, "tintColorDidChange");
  if (*(v0 + OBJC_IVAR___BKNowPlayingIndicatorView_showsLevelGutters) == 1)
  {
    [v0 setNeedsDisplay];
  }

  sub_1003947FC();
}

id NowPlayingIndicatorView.isHidden.getter(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for NowPlayingIndicatorView();
  return objc_msgSendSuper2(&v4, "isHidden");
}

void NowPlayingIndicatorView.isHidden.setter(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = type metadata accessor for NowPlayingIndicatorView();
  v7.receiver = v2;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, "isHidden");
  v6.receiver = v2;
  v6.super_class = v4;
  objc_msgSendSuper2(&v6, "setHidden:", v3 & 1);
  if (([v2 isHidden] & 1) == 0)
  {
    if (v5)
    {
      sub_100394C64();
    }
  }
}

id sub_1003947FC()
{
  v3 = OBJC_IVAR___BKNowPlayingIndicatorView_numberOfLevels;
  v4 = *(v1 + OBJC_IVAR___BKNowPlayingIndicatorView_numberOfLevels);
  if (v4 < 0)
  {
    goto LABEL_43;
  }

  v0 = v1;
  v5 = &off_100ADF000;
  if (!v4)
  {
    v1 = 0;
LABEL_19:
    v2 = v5[190];
    swift_beginAccess();
    v15 = *(v2 + v0);
    if (v15 >> 62)
    {
      goto LABEL_44;
    }

    result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1 < result)
    {
      goto LABEL_21;
    }

LABEL_24:
    sub_100394C64();
    return [v0 setNeedsLayout];
  }

  v6 = OBJC_IVAR___BKNowPlayingIndicatorView_levelViews;
  v29 = OBJC_IVAR___BKNowPlayingIndicatorView_numberOfLevels;
  v30 = OBJC_IVAR___BKNowPlayingIndicatorView_levelCornerRadius;
  v7 = OBJC_IVAR___BKNowPlayingIndicatorView_levelColor;
  swift_beginAccess();
  v3 = 0;
  v2 = &selRef_iq_downloadProgressStatusesWithAssetID_item_;
  while (1)
  {
    v10 = *&v0[v6];
    if (v10 >> 62)
    {
      break;
    }

    if (v3 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

LABEL_13:
    v12 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    if (!v12)
    {
      goto LABEL_6;
    }

    v13 = v12;
    v14 = [v13 layer];
    [v14 setCornerRadius:*&v0[v30]];
    [v14 setAnchorPoint:{0.5, 1.0}];
    swift_beginAccess();
    v11 = v13;
    sub_1007A25C4();
    if (*((*&v0[v6] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v0[v6] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v28 = *((*&v0[v6] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1007A2614();
    }

    sub_1007A2644();
    swift_endAccess();
    [v0 addSubview:v11];

LABEL_5:
    v8 = [v11 layer];
    v9 = [*&v0[v7] CGColor];
    [v8 setBackgroundColor:v9];

LABEL_6:
    if (v4 == ++v3)
    {
      v3 = v29;
      v1 = *&v0[v29];
      v5 = &off_100ADF000;
      goto LABEL_19;
    }
  }

  if (v3 >= sub_1007A38D4())
  {
    goto LABEL_13;
  }

LABEL_9:
  v1 = *&v0[v6];
  if ((v1 & 0xC000000000000001) != 0)
  {

    v11 = sub_1007A3784();

    goto LABEL_5;
  }

  if (v3 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v1 + 8 * v3 + 32);
    goto LABEL_5;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  result = sub_1007A38D4();
  if (v1 >= result)
  {
    goto LABEL_24;
  }

LABEL_21:
  v3 = *&v0[v3];
  v17 = *(v2 + v0);
  if (v17 >> 62)
  {
    result = sub_1007A38D4();
    v1 = result;
    if (result < v3)
    {
      goto LABEL_47;
    }

LABEL_23:
    if (v3 == v1)
    {
      goto LABEL_24;
    }

    if (v3 < v1)
    {
      v18 = ~v3;
      while (1)
      {
        v19 = *(v2 + v0);
        if ((v19 & 0xC000000000000001) != 0)
        {

          v20 = sub_1007A3784();
        }

        else
        {
          if (v3 < 0)
          {
            goto LABEL_40;
          }

          if (v3 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v20 = *(v19 + 8 * v3 + 32);
        }

        [v20 removeFromSuperview];
        swift_beginAccess();
        v21 = *(v2 + v0);
        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        *(v2 + v0) = v21;
        if (!isUniquelyReferenced_nonNull_bridgeObject || v21 < 0 || (v21 & 0x4000000000000000) != 0)
        {
          v21 = sub_1002F9CE0();
          *(v2 + v0) = v21;
        }

        v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v3 >= v23)
        {
          goto LABEL_41;
        }

        v24 = v3 + 1;
        v25 = v23 - 1;
        v26 = (v21 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 32;
        v27 = *((v21 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 0x20);
        memmove(v26, (v26 + 8), 8 * (v18 + v23));
        *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) = v25;
        *(v2 + v0) = v21;
        swift_endAccess();

        --v18;
        v3 = v24;
        if (v1 == v24)
        {
          goto LABEL_24;
        }
      }
    }
  }

  else
  {
    v1 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1 >= v3)
    {
      goto LABEL_23;
    }

LABEL_47:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100394C64()
{
  v1 = OBJC_IVAR___BKNowPlayingIndicatorView_levelViews;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
LABEL_23:
    v3 = sub_1007A38D4();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = OBJC_IVAR___BKNowPlayingIndicatorView_playbackState;
      v37 = OBJC_IVAR___BKNowPlayingIndicatorView_maximumLevelHeight;
      v42 = v2 & 0xC000000000000001;
      v39 = v2 & 0xFFFFFFFFFFFFFF8;
      v40 = OBJC_IVAR___BKNowPlayingIndicatorView_minimumLevelHeight;

      v5 = 0;
      v36 = xmmword_100812CF0;
      v41 = v3;
      v38 = v2;
      while (1)
      {
        if (v42)
        {
          v21 = sub_1007A3784();
        }

        else
        {
          if (v5 >= *(v39 + 16))
          {
            goto LABEL_22;
          }

          v21 = *(v2 + 8 * v5 + 32);
        }

        v22 = v21;
        v23 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        v24 = [v21 layer];
        v25 = [v24 presentationLayer];
        if (v25)
        {
          v26 = *(v0 + v4);
          if (!v26)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v25 = v24;
          v26 = *(v0 + v4);
          if (!v26)
          {
LABEL_17:
            v32 = sub_1007A2214();
            v33 = [objc_opt_self() animationWithKeyPath:v32];

            v19 = v33;
            [(objc_class *)v19 setDuration:0.45];
            v34 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
            [(objc_class *)v19 setTimingFunction:v34];

            [(objc_class *)v19 setRemovedOnCompletion:0];
            [(objc_class *)v19 setFillMode:kCAFillModeBoth];

            [v25 bounds];
            isa = sub_100797BE4().super.super.isa;
            [(objc_class *)v19 setFromValue:isa];

            v31.super.super.isa = sub_1007A2884().super.super.isa;
LABEL_18:
            v10 = v31.super.super.isa;
            [(objc_class *)v19 setToValue:v31.super.super.isa, v36];
            goto LABEL_5;
          }
        }

        if (v26 != 1)
        {
          if (v26 != 2)
          {
            sub_1007A3AF4();
            __break(1u);
            return;
          }

          v27 = sub_1007A2214();
          v28 = [objc_opt_self() animationWithKeyPath:v27];

          v19 = v28;
          [(objc_class *)v19 setDuration:0.45];
          v29 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
          [(objc_class *)v19 setTimingFunction:v29];

          [(objc_class *)v19 setRemovedOnCompletion:0];
          [(objc_class *)v19 setFillMode:kCAFillModeBoth];

          [v25 bounds];
          v30 = sub_100797BE4().super.super.isa;
          [(objc_class *)v19 setFromValue:v30];

          v31.super.super.isa = sub_100797BE4().super.super.isa;
          goto LABEL_18;
        }

        v6 = sub_1007A2214();
        v7 = [objc_opt_self() animationWithKeyPath:v6];

        v8 = v4;
        v9 = objc_opt_self();
        v10 = v7;
        v11 = [v9 functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
        [(objc_class *)v10 setTimingFunction:v11];

        [(objc_class *)v10 setRemovedOnCompletion:0];
        [(objc_class *)v10 setFillMode:kCAFillModeBoth];
        v12 = arc4random();
        v13 = *(v0 + v37);
        v14 = v13 * 0.5 + v13 * 0.5 * ((v12 % 0xB) / 10.0);
        [(objc_class *)v10 setDuration:v13 / v14 * 0.65];
        sub_1001F1160(&qword_100AD7FB0, &unk_100820560);
        v15 = swift_allocObject();
        *(v15 + 16) = v36;
        v16 = *(v0 + v40);
        *(v15 + 56) = &type metadata for CGFloat;
        *(v15 + 32) = v16;
        *(v15 + 88) = &type metadata for CGFloat;
        *(v15 + 64) = v14;
        *(v15 + 120) = &type metadata for CGFloat;
        *(v15 + 96) = v16;
        v17 = sub_1007A25D4().super.isa;
        v4 = v8;
        v2 = v38;

        [(objc_class *)v10 setValues:v17];

        LODWORD(v18) = 2139095040;
        [(objc_class *)v10 setRepeatCount:v18];
        v19 = v10;
LABEL_5:

        v20 = sub_1007A2214();
        [v24 addAnimation:v19 forKey:v20];

        ++v5;
        if (v23 == v41)
        {

          return;
        }
      }
    }
  }
}

id NowPlayingIndicatorView.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for NowPlayingIndicatorView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_100395380()
{
  *(v0 + OBJC_IVAR___BKNowPlayingIndicatorView_levelViews) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR___BKNowPlayingIndicatorView_needsLevelUpdate) = 0;
  *(v0 + OBJC_IVAR___BKNowPlayingIndicatorView_interLevelSpacing) = 0x3FE0000000000000;
  *(v0 + OBJC_IVAR___BKNowPlayingIndicatorView_levelCornerRadius) = 0x3FE0000000000000;
  *(v0 + OBJC_IVAR___BKNowPlayingIndicatorView_levelWidth) = 0x4008000000000000;
  *(v0 + OBJC_IVAR___BKNowPlayingIndicatorView_maximumLevelHeight) = 0x402A000000000000;
  *(v0 + OBJC_IVAR___BKNowPlayingIndicatorView_minimumLevelHeight) = 0x4008000000000000;
  *(v0 + OBJC_IVAR___BKNowPlayingIndicatorView_numberOfLevels) = 3;
  *(v0 + OBJC_IVAR___BKNowPlayingIndicatorView_playbackState) = 0;
  *(v0 + OBJC_IVAR___BKNowPlayingIndicatorView_showsLevelGutters) = 0;
  v1 = OBJC_IVAR___BKNowPlayingIndicatorView_levelGuttersColor;
  v2 = objc_opt_self();
  v3 = [v2 whiteColor];
  v4 = [v3 colorWithAlphaComponent:0.2];

  *(v0 + v1) = v4;
  v5 = OBJC_IVAR___BKNowPlayingIndicatorView_levelColor;
  *(v0 + v5) = [v2 whiteColor];
  sub_1007A38A4();
  __break(1u);
}

void _s5Books23NowPlayingIndicatorViewC12sizeThatFitsySo6CGSizeVAFF_0()
{
  v1 = *(v0 + OBJC_IVAR___BKNowPlayingIndicatorView_numberOfLevels);
  if (v1)
  {
    if (__OFSUB__(v1, 1))
    {
      __break(1u);
    }
  }
}

unint64_t sub_100395558()
{
  result = qword_100ADF630;
  if (!qword_100ADF630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF630);
  }

  return result;
}

uint64_t sub_1003955BC()
{
  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v1 = swift_allocObject();
  v2 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadButton);
  v3 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_grabberView);
  v4 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_overflowButton);
  v5 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_playbackSpeed);
  v6 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__playPause);
  *(v1 + 16) = xmmword_10081F7C0;
  v7 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_progressSlider);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v8 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__skipBackwardButton);
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  v9 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__skipForwardButton);
  *(v1 + 64) = v6;
  *(v1 + 72) = v7;
  v10 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_sleepButton);
  *(v1 + 80) = v8;
  *(v1 + 88) = v9;
  v11 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_tocButton);
  *(v1 + 96) = v10;
  *(v1 + 104) = v11;
  v37 = v11;
  v38 = v1;
  v12 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__routeView);
  if (v12)
  {
    v13 = v12;
    v14 = v2;
    v15 = v3;
    v16 = v4;
    v17 = v5;
    v18 = v6;
    v19 = v7;
    v20 = v8;
    v21 = v9;
    v22 = v10;
    v23 = v37;
    v24 = v13;
    sub_1007A25C4();
    if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1007A2614();
    }

    sub_1007A2644();

    return v38;
  }

  else
  {
    v26 = v1;
    v27 = v2;
    v28 = v3;
    v29 = v4;
    v30 = v5;
    v31 = v6;
    v32 = v7;
    v33 = v8;
    v34 = v9;
    v35 = v10;
    v36 = v37;
    return v26;
  }
}

void sub_100395798()
{
  v0 = [objc_opt_self() bc_nowPlayingVibrantQuaternary];
  [v0 set];

  v1 = [objc_opt_self() bezierPathWithOvalInRect:{0.0, 0.0, 28.0, 28.0}];
  [v1 fill];
}

void sub_100395844(double a1, double a2)
{
  v3 = [v2 titleLabel];
  if (v3)
  {
    v4 = v3;
    CGRectMakeWithSize();
    [v2 setBounds:?];
    [v2 layoutIfNeeded];
    v5 = [v2 titleLabel];
    if (v5 && (v6 = v5, [v5 _baselineOffsetFromBottom], v8 = v7, v6, v8 != 0.0))
    {
      [v4 bounds];
      [v2 convertPoint:v4 fromCoordinateSpace:{0.0, CGRectGetHeight(v20) - v8}];
    }

    else
    {
      CGRectMakeWithSize();
      [v2 contentRectForBounds:?];
      [v2 titleRectForContentRect:?];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v17 = [v4 font];
      if (v17)
      {
        v18 = v17;
        [v17 ascender];

        v19.origin.x = v10;
        v19.origin.y = v12;
        v19.size.width = v14;
        v19.size.height = v16;
        CGRectGetMinY(v19);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

id sub_100395A10(uint64_t a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();
  v7 = [v3 subviews];
  sub_10000A7C4(0, &qword_100AD7620, UIView_ptr);
  v8 = sub_1007A25E4();

  v24 = v3;
  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_18:

    v12 = 0;
    v14 = v24;
    v20 = a1;
    goto LABEL_19;
  }

LABEL_17:
  v9 = sub_1007A38D4();
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_3:
  v10 = 0;
  while (1)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = sub_1007A3784();
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v11 = *(v8 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    sub_10000A7C4(0, &qword_100ADF7D8, UISlider_ptr);
    if ([v12 isKindOfClass:swift_getObjCClassFromMetadata()])
    {
      break;
    }

    ++v10;
    if (v13 == v9)
    {
      goto LABEL_18;
    }
  }

  v14 = v24;
  [v12 convertPoint:v24 fromCoordinateSpace:{a2, a3}];
  v16 = v15;
  v18 = v17;
  if ([v12 pointInside:? withEvent:?])
  {
    v19 = [v12 hitTest:a1 withEvent:{v16, v18}];
    goto LABEL_20;
  }

  v20 = a1;
LABEL_19:
  v25.receiver = v14;
  v25.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v25, "hitTest:withEvent:", v20, a2, a3);
LABEL_20:
  v21 = v19;

  return v21;
}

id sub_100395CC8(void *a1, double a2, double a3, double a4, double a5)
{
  v10.receiver = a1;
  v10.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a2, a3, a4, a5);
}

id sub_100395D38(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", v4);

  if (v5)
  {
  }

  return v5;
}

id sub_100395DD8()
{
  v1 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView____lazy_storage___backgroundImageView;
  v2 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView____lazy_storage___backgroundImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView____lazy_storage___backgroundImageView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = [v4 layer];
    [v5 addSublayer:*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_backgroundGradientLayer)];

    v6 = [v4 layer];
    [v6 addSublayer:*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lowerHalfGradientLayer)];

    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_100395EDC()
{
  v0 = [objc_opt_self() blackColor];
  v1 = [v0 CGColor];

  qword_100ADF680 = v1;
}

id sub_100395F40(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  *&v5[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v62 = type metadata accessor for AudiobookNowPlayingFullscreenTouchView(0);
  v64 = v62;
  sub_1001F1160(&qword_100ADF7D0, &qword_10081F9D8);
  sub_1007A22E4();
  sub_10079ACD4();
  *&v5[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_playImage] = 0;
  *&v5[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_pauseImage] = 0;
  *&v5[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_scrubberImpactBehavior] = 0;
  v5[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadState] = 3;
  *&v5[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView____lazy_storage___backgroundImageView] = 0;
  v11 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_artworkImageView;
  *&v6[v11] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_artworkImageShadowView;
  *&v6[v12] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v13 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_bottomToolbarContainer;
  *&v6[v13] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v14 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_dismissButton;
  v15 = objc_opt_self();
  *&v6[v14] = [v15 buttonWithType:0];
  v16 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadIndicator;
  *&v6[v16] = [objc_allocWithZone(IMRadialProgressButton) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v17 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadSpinner;
  *&v6[v17] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v18 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadButton;
  *&v6[v18] = [v15 buttonWithType:0];
  v19 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_grabberView;
  *&v6[v19] = [objc_allocWithZone(_UIGrabber) init];
  v20 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_hudTrack;
  *&v6[v20] = [objc_allocWithZone(BKHUDTrack) init];
  v21 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_loadingSpinner;
  *&v6[v21] = [objc_allocWithZone(UIActivityIndicatorView) init];
  v22 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_overflowButton;
  *&v6[v22] = [objc_opt_self() buttonWithType:0];
  v23 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_played;
  *&v6[v23] = [objc_allocWithZone(UILabel) init];
  v24 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_progressSlider;
  *&v6[v24] = [objc_allocWithZone(BKScrubberSlider) init];
  v25 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_playbackSpeed;
  *&v6[v25] = [v15 buttonWithType:0];
  v26 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_primaryTitleLabel;
  *&v6[v26] = [objc_allocWithZone(UILabel) init];
  v27 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_primaryTitleMarqueeView;
  *&v6[v27] = [objc_allocWithZone(MPUMarqueeView) init];
  v28 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_secondaryTitleLabel;
  *&v6[v28] = [objc_allocWithZone(UILabel) init];
  v29 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_secondaryTitleMarqueeView;
  *&v6[v29] = [objc_allocWithZone(MPUMarqueeView) init];
  v30 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_sleepButton;
  type metadata accessor for SleepButton();
  *&v6[v30] = [swift_getObjCClassFromMetadata() buttonWithType:0];
  v31 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_toPlay;
  *&v6[v31] = [objc_allocWithZone(UILabel) init];
  v32 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_titlesContainer;
  *&v6[v32] = [objc_allocWithZone(type metadata accessor for ConstraintsDisabledView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v33 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_tocButton;
  *&v6[v33] = [objc_allocWithZone(type metadata accessor for AudiobookNowPlayingTOCButton()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v34 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_transportContainer;
  *&v6[v34] = [objc_allocWithZone(type metadata accessor for TransportContainer()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v35 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_backgroundGradientLayer;
  *&v6[v35] = [objc_allocWithZone(CAGradientLayer) init];
  v36 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lowerHalfGradientLayer;
  *&v6[v36] = [objc_allocWithZone(CAGradientLayer) init];
  v37 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__playPause;
  type metadata accessor for NowPlayingTransportButton();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v6[v37] = [ObjCClassFromMetadata buttonWithType:0];
  v39 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__skipForwardButton;
  *&v6[v39] = [ObjCClassFromMetadata buttonWithType:0];
  v40 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__skipBackwardButton;
  *&v6[v40] = [ObjCClassFromMetadata buttonWithType:0];
  v41 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__toPlayInAudiobook;
  *&v6[v41] = [objc_allocWithZone(UILabel) init];
  v42 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__mainViewContainer;
  *&v6[v42] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v43 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__transportSubcontainer;
  *&v6[v43] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v44 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__volumeContainer;
  *&v6[v44] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v45 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__volumeMaxImageView;
  *&v6[v45] = [objc_allocWithZone(UIImageView) init];
  v46 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__volumeMinImageView;
  *&v6[v46] = [objc_allocWithZone(UIImageView) init];
  *&v6[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_buyButton] = 0;
  v47 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__routeView;
  *&v6[v47] = [objc_allocWithZone(AVRoutePickerView) init];
  v48 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__volumeView;
  *&v6[v48] = [objc_allocWithZone(MPVolumeView) init];
  v49 = &v6[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm];
  *(v49 + 22) = 0u;
  *(v49 + 23) = 0u;
  *(v49 + 20) = 0u;
  *(v49 + 21) = 0u;
  *(v49 + 18) = 0u;
  *(v49 + 19) = 0u;
  *(v49 + 16) = 0u;
  *(v49 + 17) = 0u;
  *(v49 + 14) = 0u;
  *(v49 + 15) = 0u;
  *(v49 + 12) = 0u;
  *(v49 + 13) = 0u;
  *(v49 + 10) = 0u;
  *(v49 + 11) = 0u;
  *(v49 + 8) = 0u;
  *(v49 + 9) = 0u;
  *(v49 + 6) = 0u;
  *(v49 + 7) = 0u;
  *(v49 + 4) = 0u;
  *(v49 + 5) = 0u;
  *(v49 + 2) = 0u;
  *(v49 + 3) = 0u;
  *v49 = 0u;
  *(v49 + 1) = 0u;
  *(v49 + 383) = 0u;
  v50 = &v6[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_toPlayInAudiobookTextLong];
  *v50 = 0;
  *(v50 + 1) = 0;
  v51 = &v6[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_toPlayInAudiobookTextShort];
  *v51 = 0;
  *(v51 + 1) = 0;
  *&v6[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_viewModel] = a1;
  v52 = *&v6[v40];
  v53 = type metadata accessor for NowPlayingVibrancyEffectView();
  objc_allocWithZone(v53);
  v54 = a1;
  *&v6[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__skipBackwardVibrancyEffectContainerView] = sub_10060211C(v52, 0);
  v55 = *&v6[v37];
  v56 = objc_allocWithZone(v53);
  *&v6[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__playPauseVibrancyEffectContainerView] = sub_10060211C(v55, 0);
  v57 = *&v6[v39];
  v58 = objc_allocWithZone(v53);
  *&v6[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__skipForwardVibrancyEffectContainerView] = sub_10060211C(v57, 0);
  v63.receiver = v6;
  v63.super_class = v62;
  v59 = objc_msgSendSuper2(&v63, "initWithFrame:", a2, a3, a4, a5);
  [v59 setOverrideUserInterfaceStyle:{2, sub_100396714()}];

  return v59;
}

double sub_100396714()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 secondaryLabelColor];
  [v1 setTintColor:v3];

  v4 = *&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__mainViewContainer];
  [v1 addSubview:v4];
  v5 = sub_100395DD8();
  [v4 addSubview:v5];

  v6 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView____lazy_storage___backgroundImageView;
  v7 = *&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView____lazy_storage___backgroundImageView];
  v8 = [v2 bc_booksBackground];
  [v7 setBackgroundColor:v8];

  [*&v1[v6] setOpaque:1];
  v9 = *&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lowerHalfGradientLayer];
  sub_1001F1160(&qword_100AD7FB0, &unk_100820560);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10080EFF0;
  v11 = [v2 blackColor];
  v12 = [v11 colorWithAlphaComponent:0.0];

  v13 = [v12 CGColor];
  type metadata accessor for CGColor(0);
  v15 = v14;
  *(v10 + 56) = v14;
  *(v10 + 32) = v13;
  v16 = [v2 blackColor];
  v17 = [v16 colorWithAlphaComponent:0.3];

  v18 = [v17 CGColor];
  *(v10 + 88) = v15;
  *(v10 + 64) = v18;
  isa = sub_1007A25D4().super.isa;

  [v9 setColors:isa];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v34);

  v20 = v34[0];
  if (v34[0])
  {
    v21 = v34[1];

    v20(v34, v22);
    v23 = v34[0];
    sub_100399320(v34[0]);

    sub_100007020(v20, v21);
    sub_100007020(v20, v21);
  }

  else
  {
    sub_100399320(0);
  }

  v24 = *&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_artworkImageView];
  [v24 _setContinuousCornerRadius:10.0];
  [v24 setClipsToBounds:1];
  v25 = *&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_artworkImageShadowView];
  v26 = [v25 layer];
  if (qword_100AD14C0 != -1)
  {
    swift_once();
  }

  [v26 setShadowColor:qword_100ADF680];

  v27 = [v25 layer];
  LODWORD(v28) = 1050253722;
  [v27 setShadowOpacity:v28];

  v29 = [v25 layer];
  v30 = v29;
  v31 = 32.0;
  if (!v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm + 396])
  {
    v31 = 24.0;
  }

  [v29 setShadowRadius:v31];

  v32 = [v25 layer];
  [v32 setShadowOffset:{0.0, 16.0}];

  sub_100399BB8();
  sub_100399F44();
  [v4 addSubview:v25];
  [v4 addSubview:v24];
  sub_10039AB18();
  sub_10039ADE0();
  sub_10039BC44();
  sub_10000A7C4(0, &qword_100AE15B0, UITraitCollection_ptr);
  sub_1007A2E04();
  sub_1007A3104();
  swift_unknownObjectRelease();

  return result;
}

id sub_100396C30()
{
  v1 = type metadata accessor for AudiobookNowPlayingFullscreenTouchView(0);
  v5[3] = v1;
  v5[0] = v0;
  v2 = v0;
  sub_1007A2B34();
  sub_1000074E0(v5);
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for AudiobookNowPlayingFullscreenTouchView(uint64_t a1)
{
  result = qword_100ADF7C0;
  if (!qword_100ADF7C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100397148(void *a1)
{
  v2 = v1;
  sub_10039728C();
  sub_1003974A8();
  v4 = sub_10039779C();
  if (a1)
  {
    v5 = [a1 accessibilityContrast];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v2 traitCollection];
  v7 = [v6 accessibilityContrast];

  if (!a1 || v5 != v7)
  {
    sub_100397D70();
    sub_100397EB4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(v13);

    v9 = v13[0];
    if (v13[0])
    {
      v10 = v13[1];
      (v13[0])(v13, v8);
      sub_100007020(v9, v10);
      v11 = v13[0];
      if (v13[0])
      {
        v12 = v13[0];
        sub_100399320(v11);
      }
    }
  }
}

void sub_10039728C()
{
  v1 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v1 _scaledValueForValue:100.0];
  v3 = v2;

  v4 = fmin(v3, 110.0) / 100.0 * 46.0;
  sub_10039F224();
  if (v3 < 100.0)
  {
    v5 = 46.0;
  }

  else
  {
    v5 = v4;
  }

  v6 = [objc_opt_self() configurationWithPointSize:7 weight:2 scale:v5];
  v7 = objc_opt_self();
  v8 = sub_1007A2214();
  v9 = [v7 __systemImageNamedSwift:v8];

  if (v9)
  {
    v10 = [v9 imageWithConfiguration:v6];
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_playImage);
  *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_playImage) = v10;

  v12 = sub_1007A2214();
  v13 = [v7 __systemImageNamedSwift:v12];

  if (v13)
  {
    v14 = [v13 imageWithConfiguration:v6];
  }

  else
  {

    v14 = 0;
  }

  v15 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_pauseImage);
  *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_pauseImage) = v14;
}

void sub_1003974A8()
{
  v1 = objc_opt_self();
  v2 = [v1 bc_nowPlayingVibrantSecondary];
  v15 = [v1 bc_nowPlayingVibrantTertiary];
  v3 = sub_10039F8C0(0, v2, 4.0, 3.0);
  if (v3)
  {
    v4 = v3;
    v5 = sub_10039F8C0(1, v15, 4.0, 3.0);
    if (v5)
    {
      v6 = v5;
      v7 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_progressSlider];
      [v7 setMinimumTrackImage:v4 forState:0];
      [v7 setMaximumTrackImage:v6 forState:0];
      [v7 setMinimumValueImage:0];
      [v7 setMaximumValueImage:0];
      [v7 setFineScrubbing:1];
      v8 = 0;
      v9 = 0;
      if (_UISolariumEnabled() & 1) == 0 && (v14 = [v0 traitCollection], v9 = swift_allocObject(), *(v9 + 16) = v0, v10 = swift_allocObject(), v8 = sub_10039FAE4, *(v10 + 16) = sub_10039FAE4, *(v10 + 24) = v9, aBlock[4] = sub_10025D79C, aBlock[5] = v10, aBlock[0] = _NSConcreteStackBlock, aBlock[1] = 1107296256, aBlock[2] = sub_100685954, aBlock[3] = &unk_100A18B90, v11 = _Block_copy(aBlock), v12 = v0, , , objc_msgSend(v14, "performAsCurrentTraitCollection:", v11), v14, _Block_release(v11), isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation(), , (isEscapingClosureAtFileLocation))
      {
        __break(1u);
      }

      else
      {
        [v7 setSemanticContentAttribute:{1, v14}];

        sub_100007020(v8, v9);
      }

      return;
    }
  }
}

double sub_10039779C()
{
  v1 = v0;
  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10081F7D0;
  v3 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_grabberView);
  v4 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_primaryTitleMarqueeView);
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  v5 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_secondaryTitleMarqueeView);
  v6 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadButton);
  *(v2 + 48) = v5;
  *(v2 + 56) = v6;
  v7 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadIndicator);
  v8 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_progressSlider);
  *(v2 + 64) = v7;
  *(v2 + 72) = v8;
  v9 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_played);
  v10 = *(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__toPlayInAudiobook);
  *(v2 + 80) = v9;
  *(v2 + 88) = v10;
  v68 = *(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_toPlay);
  v69 = *(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__volumeMinImageView);
  *(v2 + 96) = v68;
  *(v2 + 104) = v69;
  v70 = *(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__volumeMaxImageView);
  v71 = *(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_playbackSpeed);
  *(v2 + 112) = v70;
  *(v2 + 120) = v71;
  v72 = *(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_sleepButton);
  v73 = *(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_tocButton);
  *(v2 + 128) = v72;
  *(v2 + 136) = v73;
  v74 = *(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_overflowButton);
  *(v2 + 144) = v74;
  v76 = v2;
  v11 = *(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__routeView);
  if (v11)
  {
    v12 = v11;
    v13 = v3;
    v14 = v4;
    v15 = v5;
    v16 = v6;
    v17 = v7;
    v18 = v8;
    v19 = v9;
    v20 = v10;
    v21 = v68;
    v22 = v69;
    v23 = v70;
    v24 = v71;
    v25 = v72;
    v26 = v73;
    v27 = v74;
    v28 = v12;
    sub_1007A25C4();
    if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1007A2614();
    }

    sub_1007A2644();

    v29 = v76;
  }

  else
  {
    v29 = v2;
    v30 = v3;
    v31 = v4;
    v32 = v5;
    v33 = v6;
    v34 = v7;
    v35 = v8;
    v36 = v9;
    v37 = v10;
    v38 = v68;
    v39 = v69;
    v40 = v70;
    v41 = v71;
    v42 = v72;
    v43 = v73;
    v44 = v74;
  }

  v45 = *(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__volumeView);
  if (v45)
  {
    v46 = v45;
    sub_1007A25C4();
    if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1007A2614();
    }

    sub_1007A2644();

    v29 = v76;
  }

  v75 = v29;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100811370;
  v48 = *(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__skipBackwardButton);
  *(inited + 32) = v48;
  v49 = *(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__playPause);
  *(inited + 40) = v49;
  v50 = *(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__skipForwardButton);
  *(inited + 48) = v50;
  v51 = v48;
  v52 = v49;
  v53 = v50;
  v54 = 0;
  while (1)
  {
    if (v54 == 3)
    {
      swift_setDeallocating();
      swift_arrayDestroy();
      if (_swiftEmptyArrayStorage >> 62)
      {
        goto LABEL_37;
      }

      sub_1007A3AD4();
      sub_10000A7C4(0, &qword_100AD7620, UIView_ptr);
      v59 = _swiftEmptyArrayStorage;
      goto LABEL_23;
    }

    if ((inited & 0xC000000000000001) != 0)
    {
      v55 = sub_1007A3784();
    }

    else
    {
      if (v54 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v55 = *(inited + 8 * v54 + 32);
    }

    v56 = v55;
    v57 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      break;
    }

    v58 = [v55 imageView];

    ++v54;
    if (v58)
    {
      sub_1007A25C4();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1007A2614();
      }

      sub_1007A2644();
      v54 = v57;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    sub_10000A7C4(0, &qword_100AD7620, UIView_ptr);

    v59 = sub_1007A38C4();

LABEL_23:

    sub_1004840B8(v59);
    if (v75 >> 62)
    {
      break;
    }

    v60 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v60)
    {
      goto LABEL_39;
    }

LABEL_25:
    v61 = 0;
    v62 = kCAFilterPlusL;
    while (1)
    {
      if ((v75 & 0xC000000000000001) != 0)
      {
        v63 = sub_1007A3784();
      }

      else
      {
        if (v61 >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v63 = *(v75 + 8 * v61 + 32);
      }

      v64 = v63;
      v65 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        break;
      }

      v66 = [v63 layer];
      [v66 setCompositingFilter:v62];

      ++v61;
      if (v65 == v60)
      {
        goto LABEL_39;
      }
    }
  }

  v60 = sub_1007A38D4();
  if (v60)
  {
    goto LABEL_25;
  }

LABEL_39:

  return result;
}

void sub_100397D70()
{
  v1 = [objc_opt_self() currentTraitCollection];
  v2 = [v1 accessibilityContrast];

  v3 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_primaryTitleLabel);
  v4 = objc_opt_self();
  v5 = [v4 bc_nowPlayingVibrantPrimary];
  v6 = v5;
  if (v2 == 1)
  {
    v7 = [v5 colorWithAlphaComponent:1.0];

    v8 = &selRef_bc_nowPlayingVibrantPrimary;
    v6 = v7;
  }

  else
  {
    v8 = &selRef_bc_nowPlayingVibrantSecondary;
  }

  [v3 setTextColor:v6];

  v9 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_secondaryTitleLabel);
  v10 = [v4 *v8];
  [v9 setTextColor:v10];
}

void sub_100397EB4()
{
  v1 = [objc_opt_self() currentTraitCollection];
  v2 = [v1 accessibilityContrast];

  v3 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_played);
  v4 = objc_opt_self();
  v5 = [v4 bc_nowPlayingVibrantTertiary];
  v6 = v5;
  if (v2 == 1)
  {
    v7 = [v5 colorWithAlphaComponent:1.0];

    [v3 setTextColor:v7];
    v8 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_toPlay);
    v9 = [v4 bc_nowPlayingVibrantTertiary];
    v10 = [v9 colorWithAlphaComponent:1.0];

    [v8 setTextColor:v10];
    v11 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__toPlayInAudiobook);
    v12 = [v4 bc_nowPlayingVibrantTertiary];
    v15 = [v12 colorWithAlphaComponent:1.0];
  }

  else
  {
    [v3 setTextColor:v5];

    v13 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_toPlay);
    v14 = [v4 bc_nowPlayingVibrantTertiary];
    [v13 setTextColor:v14];

    v11 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__toPlayInAudiobook);
    v15 = [v4 bc_nowPlayingVibrantTertiary];
  }

  [v11 setTextColor:v15];
}

void sub_1003980E0()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  *(v2 + 4) = 0u;
  *(v2 + 5) = 0u;
  *(v2 + 6) = 0u;
  *(v2 + 7) = 0u;
  *(v2 + 8) = 0u;
  *(v2 + 9) = 0u;
  *(v2 + 10) = 0u;
  *(v2 + 11) = 0u;
  *(v2 + 12) = 0u;
  *(v2 + 13) = 0u;
  *(v2 + 14) = 0u;
  *(v2 + 15) = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 17) = 0u;
  *(v2 + 18) = 0u;
  *(v2 + 19) = 0u;
  *(v2 + 20) = 0u;
  *(v2 + 21) = 0u;
  *(v2 + 22) = 0u;
  *(v2 + 23) = 0u;
  *(v2 + 383) = 0u;
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 userInterfaceIdiom];

  *v2 = v4;
  [v1 bounds];
  *(v2 + 2) = v5;
  *(v2 + 3) = v6;
  [v1 safeAreaInsets];
  v2[392] = v7 <= 30.0;
  v2[394] = isMegaPad();
  v8 = *(v2 + 2);
  if (v8 <= *(v2 + 3))
  {
    v8 = *(v2 + 3);
  }

  v2[396] = v8 < 570.0;
  v2[395] = v8 < 670.0;
  v9 = *&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__routeView];
  if (v9)
  {
    v10 = [v9 isHidden] ^ 1;
  }

  else
  {
    v10 = 0;
  }

  v2[397] = v10;
  sub_10039CE34();
  v11 = *&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_buyButton];
  if (v11)
  {
    [v11 sizeThatFits:{*(v2 + 2), *(v2 + 3)}];
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  *(v2 + 4) = v12;
  *(v2 + 5) = v13;
  [*&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_grabberView] sizeThatFits:{*(v2 + 2), *(v2 + 3)}];
  *(v2 + 6) = v14;
  *(v2 + 7) = v15;
  v16 = [objc_opt_self() mainScreen];
  [v16 scale];
  v18 = v17;

  v19 = [objc_opt_self() stringWithDuration:0 explicitPositive:-28800.0];
  if (!v19)
  {
    sub_10000A7C4(0, &unk_100AEB920, NSString_ptr);
    v19 = sub_1007A31C4();
  }

  v109 = *&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_played];
  v20 = [v109 attributedText];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 attributesAtIndex:0 effectiveRange:0];

    type metadata accessor for Key(0);
    sub_100282B6C();
    sub_1007A2044();
  }

  else
  {
    sub_1001ED420(_swiftEmptyArrayStorage);
  }

  type metadata accessor for Key(0);
  v24 = v23;
  v107 = sub_100282B6C();
  v108 = v24;
  isa = sub_1007A2024().super.isa;
  [v19 sizeWithAttributes:isa];

  CGSizeCeilForScale();
  *(v2 + 8) = v26;
  *(v2 + 9) = v27;
  v28 = *&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_primaryTitleLabel];
  [v28 sizeThatFits:{*(v2 + 2), *(v2 + 3)}];
  *(v2 + 10) = v29;
  *(v2 + 11) = v30;
  v31 = *&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_secondaryTitleLabel];
  [v31 sizeThatFits:{*(v2 + 2), *(v2 + 3)}];
  *(v2 + 12) = v32;
  *(v2 + 13) = v33;
  *(v2 + 7) = *(v2 + 4);
  [*&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__toPlayInAudiobook] sizeThatFits:{*(v2 + 2), *(v2 + 3)}];
  *(v2 + 16) = v34;
  *(v2 + 17) = v35;
  [*&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_progressSlider] sizeThatFits:{*(v2 + 2), *(v2 + 3)}];
  *(v2 + 18) = v36;
  *(v2 + 19) = v37;
  [*&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__skipBackwardButton] sizeThatFits:{*(v2 + 2), *(v2 + 3)}];
  *(v2 + 20) = v38;
  *(v2 + 21) = v39;
  [*&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__playPause] sizeThatFits:{*(v2 + 2), *(v2 + 3)}];
  *(v2 + 22) = v40;
  *(v2 + 23) = v41;
  [*&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__skipForwardButton] sizeThatFits:{*(v2 + 2), *(v2 + 3)}];
  *(v2 + 24) = v42;
  *(v2 + 25) = v43;
  [*&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_sleepButton] sizeThatFits:{*(v2 + 2), *(v2 + 3)}];
  *(v2 + 28) = v44;
  *(v2 + 29) = v45;
  v46 = *&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_playbackSpeed];
  [v46 sizeThatFits:{*(v2 + 2), *(v2 + 3)}];
  *(v2 + 26) = v47;
  *(v2 + 27) = v48;
  v49 = *&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__volumeView];
  if (v49)
  {
    [v49 sizeThatFits:{*(v2 + 2), *(v2 + 3)}];
  }

  else
  {
    v50 = 0;
    v51 = 0;
  }

  *(v2 + 30) = v50;
  *(v2 + 31) = v51;
  [v1 bounds];
  v52 = 1.0;
  if (v53 > 0.0)
  {
    [v1 bounds];
    v55 = v54;
    [v1 bounds];
    v52 = v55 / v56;
  }

  *(v2 + 32) = v52;
  *(v2 + 33) = 0x3FF0000000000000;
  v57 = [*&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_artworkImageView] image];
  if (v57)
  {
    v58 = v57;
    [v57 size];
    if (v59 <= 0.0)
    {
    }

    else
    {
      [v58 size];
      v61 = v60;
      [v58 size];
      v63 = v62;

      *(v2 + 33) = v61 / v63;
    }
  }

  [v1 bounds];
  CGSizeLength();
  *(v2 + 34) = v64;
  *(v2 + 35) = v18;
  v65 = [v28 font];
  v66 = v65;
  if (v65)
  {
    [v65 ascender];
    *(v2 + 36) = v67;
    [v66 capHeight];
    *(v2 + 37) = v68;
    [v66 lineHeight];
  }

  else
  {
    *(v2 + 36) = 0;
    *(v2 + 37) = 0;
    v69 = 0;
  }

  *(v2 + 38) = v69;
  v70 = [v31 font];
  v71 = v70;
  if (v70)
  {
    [v70 ascender];
    *(v2 + 39) = v72;
    [v71 lineHeight];
  }

  else
  {
    *(v2 + 39) = 0;
    v73 = 0;
  }

  *(v2 + 40) = v73;
  v74 = [v109 font];
  if (v74)
  {
    v75 = v74;

    [v75 ascender];
    v77 = v76;

    *(v2 + 41) = v77;
    v78 = [v1 window];
    if (v78)
    {
      v79 = v78;
      v80 = [v1 superview];
      if (v80)
      {
        v81 = v80;
        v82 = 0.0;
        if (([v1 im_isCompactHeight] & 1) == 0)
        {
          v83 = [v79 windowScene];
          if (v83)
          {
            v84 = v83;
            v85 = [v83 statusBarManager];

            if (v85)
            {
              [v85 bc_defaultPortraitStatusBarHeight];
              v82 = v86;
            }
          }
        }

        [v1 frame];
        [v79 convertRect:v81 fromCoordinateSpace:?];
        MinY = CGRectGetMinY(v111);

        v88 = v82 - MinY;
        if (v82 - MinY < 0.0)
        {
          v88 = 0.0;
        }

        *(v2 + 42) = v88;
      }

      else
      {
      }
    }

    *(v2 + 43) = *(v2 + 3) - *(v2 + 42) + -647.0;
    v89 = [v46 titleLabel];
    v90 = 0;
    if (v89)
    {
      v91 = v89;
      v92 = [v89 font];

      if (v92)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_10079B9A4(&v110);

        v93 = sub_1007A2214();

        sub_1001F1160(qword_100AEFD60, qword_100836260);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10080B690;
        *(inited + 32) = NSFontAttributeName;
        *(inited + 64) = sub_10000A7C4(0, &unk_100AEB3C0, UIFont_ptr);
        *(inited + 40) = v92;
        v95 = NSFontAttributeName;
        v96 = v92;
        sub_1001ED420(inited);
        swift_setDeallocating();
        sub_10039FAF4(inited + 32);
        v97 = sub_1007A2024().super.isa;

        [v93 sizeWithAttributes:v97];
        v90 = v98;
      }
    }

    *(v2 + 44) = v90;
    v2[393] = *(v2 + 2) <= *(v2 + 3);
    v99 = [objc_opt_self() sharedApplication];
    v100 = [v99 userInterfaceLayoutDirection];

    v2[398] = v100 == 1;
    v101 = *v2;
    v102 = *(v2 + 2);
    if (*v2 == 1)
    {
      v101 = v102 >= 428.0;
    }

    *(v2 + 1) = v101;
    if (v101)
    {
      v103 = fmin(v102, 270.0);
      v104 = v102 * 0.5 + -148.0;
      if (v103 > v104)
      {
        v104 = v103;
      }

      v105 = v102 + -156.0;
      if (v103 > v105)
      {
        v105 = v103;
      }

      *(v2 + 46) = v104;
      *(v2 + 47) = v105;
      if (!v2[393])
      {
        v105 = v104;
      }

      *(v2 + 48) = v105;
    }

    else
    {
      v106 = 32.0;
      if (!v2[392])
      {
        v106 = 24.0;
      }

      *(v2 + 45) = v106;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100398AFC()
{
  v1 = &v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm];
  v2 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm + 8];
  if (v2)
  {
    if (v2 == 1)
    {
      [v0 bounds];
      v11.origin.x = 0.0;
      v11.origin.y = 0.0;
      v11.size.width = 0.0;
      v11.size.height = 0.0;
      if (!CGRectEqualToRect(v8, v11))
      {
        sub_10039D19C();
        sub_10039D360();
        sub_10039D4AC(v3);
        sub_100398C90();
        sub_10039D744();

        sub_10039D910();
      }
    }
  }

  else if (v1[3] >= v1[2])
  {
    [v0 bounds];
    v12.origin.x = 0.0;
    v12.origin.y = 0.0;
    v12.size.width = 0.0;
    v12.size.height = 0.0;
    if (!CGRectEqualToRect(v9, v12))
    {
      sub_10039D19C();
      sub_10039D360();
      [*&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_dismissButton] frame];
      MaxY = CGRectGetMaxY(v10);
      v6 = 16.0;
      if (!*(v1 + 392))
      {
        v6 = 0.0;
      }

      sub_10039DA74(v4, MaxY + v6);
      sub_100398FDC();
      sub_10039DC10();

      sub_10039DD38();
    }
  }
}

id sub_100398C90()
{
  [*&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_artworkImageView] frame];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = &v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm];
  [v0 bounds];
  CGRectGetWidth(v37);
  v38.origin.x = v2;
  v38.origin.y = v4;
  v38.size.width = v6;
  v38.size.height = v8;
  CGRectGetMaxY(v38);
  if (v9[3] > 0.0)
  {
    [v0 safeAreaInsets];
    [v0 safeAreaInsets];
  }

  CGRectRoundedForScale();
  v10 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_titlesContainer];
  [v10 setFrame:?];
  [v10 bounds];
  sub_10039DEF0(v11, v12, v13, v14);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  if (*(v9 + 398) == 1)
  {
    [*&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_primaryTitleMarqueeView] animationDirection];
  }

  v39.origin.x = v16;
  v39.origin.y = v18;
  v39.size.width = v20;
  v39.size.height = v22;
  CGRectGetMinX(v39);
  v40.size.height = v22;
  v35 = v22;
  v40.origin.x = v16;
  v40.origin.y = v18;
  v40.size.width = v20;
  CGRectGetWidth(v40);
  CGRectRoundedForScale();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v34 = v18;
  v30 = v29;
  [*&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_primaryTitleMarqueeView] setFrame:?];
  v31 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_primaryTitleLabel];
  CGRectRoundedForScale();
  [v31 setFrame:?];
  v41.origin.x = v24;
  v41.origin.y = v26;
  v41.size.width = v28;
  v41.size.height = v30;
  CGRectGetMinY(v41);
  v42.origin.x = v24;
  v42.origin.y = v26;
  v42.size.width = v28;
  v42.size.height = v30;
  CGRectGetHeight(v42);
  v43.origin.x = v16;
  v43.origin.y = v34;
  v43.size.width = v20;
  v43.size.height = v35;
  CGRectGetMinX(v43);
  v44.origin.x = v16;
  v44.origin.y = v34;
  v44.size.width = v20;
  v44.size.height = v35;
  CGRectGetWidth(v44);
  CGRectRoundedForScale();
  [*&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_secondaryTitleMarqueeView] setFrame:?];
  v32 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_secondaryTitleLabel];
  CGRectRoundedForScale();

  return [v32 setFrame:?];
}

id sub_100398FDC()
{
  [*&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_artworkImageView] frame];
  MaxY = CGRectGetMaxY(v31);
  v2 = &v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm];
  if ((v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm + 392] & 1) == 0 && v2[3] > 0.0)
  {
    [v0 safeAreaInsets];
    [v0 safeAreaInsets];
  }

  CGRectRoundedForScale();
  v3 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_titlesContainer];
  [v3 setFrame:?];
  [v3 bounds];
  sub_10039DEF0(v4, v5, v6, v7);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if (*(v2 + 398) == 1)
  {
    [*&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_primaryTitleMarqueeView] animationDirection];
  }

  v32.origin.x = v9;
  v32.origin.y = v11;
  v32.size.width = v13;
  v32.size.height = v15;
  CGRectGetMinX(v32);
  v33.size.width = v13;
  v29 = v13;
  v33.origin.x = v9;
  v33.origin.y = v11;
  v33.size.height = v15;
  CGRectGetWidth(v33);
  CGRectRoundedForScale();
  v17 = v16;
  v27 = v9;
  v28 = v15;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [*&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_primaryTitleMarqueeView] setFrame:?];
  v24 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_primaryTitleLabel];
  CGRectRoundedForScale();
  [v24 setFrame:?];
  v34.origin.x = v17;
  v34.origin.y = v19;
  v34.size.width = v21;
  v34.size.height = v23;
  CGRectGetMinY(v34);
  v35.origin.x = v17;
  v35.origin.y = v19;
  v35.size.width = v21;
  v35.size.height = v23;
  CGRectGetHeight(v35);
  v36.origin.x = v27;
  v36.origin.y = v11;
  v36.size.width = v29;
  v36.size.height = v28;
  CGRectGetMinX(v36);
  v37.origin.x = v27;
  v37.origin.y = v11;
  v37.size.width = v29;
  v37.size.height = v28;
  CGRectGetWidth(v37);
  CGRectRoundedForScale();
  [*&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_secondaryTitleMarqueeView] setFrame:?];
  v25 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_secondaryTitleLabel];
  CGRectRoundedForScale();

  return [v25 setFrame:?];
}

void sub_100399320(void *a1)
{
  v3 = [objc_opt_self() currentTraitCollection];
  v4 = [v3 accessibilityContrast];

  if (v4 == 1)
  {
    v5 = 0.25;
  }

  else
  {
    v5 = 0.0;
  }

  if (a1)
  {
    v30 = v1;
    v6 = objc_opt_self();
    v7 = a1;
    v8 = [v6 whiteColor];
    v9 = UIColor.mix(withColor:factor:)(v8, 0.2);

    v10 = [v6 blackColor];
    v11 = UIColor.mix(withColor:factor:)(v10, 0.3);

    v12 = [v11 bc_resaturatedColorByFactor:1.5];
    if (!v12)
    {
      v12 = v11;
    }

    v13 = [v6 whiteColor];
    v14 = UIColor.mix(withColor:factor:)(v13, 0.08);

    v15 = [v6 blackColor];
    v16 = UIColor.mix(withColor:factor:)(v15, v5);

    v17 = [v6 blackColor];
    v18 = UIColor.mix(withColor:factor:)(v17, 0.3);

    v19 = [v18 bc_resaturatedColorByFactor:1.5];
    if (!v19)
    {
      v19 = v18;
    }

    v20 = [v6 whiteColor];
    v32 = UIColor.mix(withColor:factor:)(v20, 0.08);

    v1 = v31;
  }

  else
  {
    v21 = objc_opt_self();
    v14 = [v21 bc_booksBackground];
    v32 = [v21 bc_booksBackground];
  }

  v22 = *(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_backgroundGradientLayer);
  sub_1001F1160(&qword_100AD7FB0, &unk_100820560);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10080EFF0;
  v24 = v32;
  if (v4 != 1)
  {
    v24 = v14;
  }

  v25 = [v24 CGColor];
  type metadata accessor for CGColor(0);
  v27 = v26;
  *(v23 + 56) = v26;
  *(v23 + 32) = v25;
  v28 = [v32 CGColor];
  *(v23 + 88) = v27;
  *(v23 + 64) = v28;
  isa = sub_1007A25D4().super.isa;

  [v22 setColors:isa];

  sub_10039779C();
}

void sub_1003996B4(void *a1, void *a2)
{
  v5 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v5 _scaledValueForValue:100.0];
  v7 = v6;

  v8 = fmin(v7, 110.0) / 100.0 * 32.0;
  sub_10039F2CC();
  if (v7 < 100.0)
  {
    v9 = 32.0;
  }

  else
  {
    v9 = v8;
  }

  v10 = [objc_opt_self() configurationWithPointSize:5 weight:2 scale:v9];
  v11 = [a1 imageByApplyingSymbolConfiguration:v10];
  [*(v2 + *a2) setImage:v11 forState:0];
}

void sub_1003997F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__toPlayInAudiobook);
  v9 = [v1 attributedText];
  if (v9 && [v9 length] >= 1)
  {
    v2 = [v9 attributesAtIndex:0 effectiveRange:0];
    type metadata accessor for Key(0);
    sub_100282B6C();
    sub_1007A2044();
  }

  else
  {
    sub_1001ED420(_swiftEmptyArrayStorage);
  }

  v3 = v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_toPlayInAudiobookTextLong;
  if (*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_toPlayInAudiobookTextLong + 8))
  {

    v4 = sub_1007A2214();

    type metadata accessor for Key(0);
    sub_100282B6C();
    isa = sub_1007A2024().super.isa;

    [v4 sizeWithAttributes:isa];
    v7 = v6;

    [v1 frame];
    if (CGRectGetWidth(v11) < v7)
    {
      if (*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_toPlayInAudiobookTextShort + 8))
      {

        v8 = sub_1007A2214();
      }

      else
      {
        v8 = 0;
      }

      [v1 setText:v8];

      goto LABEL_16;
    }

    if (!*(v3 + 8))
    {
      goto LABEL_12;
    }
  }

  else
  {

    if (!*(v3 + 8))
    {
LABEL_12:
      v8 = 0;
      goto LABEL_13;
    }
  }

  v8 = sub_1007A2214();

LABEL_13:
  [v1 setText:v8];
LABEL_16:
}

uint64_t sub_100399A8C(uint64_t a1)
{
  result = sub_10079ACE4();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

id sub_100399BB8()
{
  v1 = v0;
  v2 = sub_100796CF4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v24 - v7;
  v9 = sub_1007A21D4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = v24 - v15;
  v24[0] = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__mainViewContainer);
  [v24[0] addSubview:{*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_grabberView), v14}];
  v17 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_dismissButton);
  [v17 setExclusiveTouch:1];
  [v17 addTarget:v1 action:"onClose:" forControlEvents:64];
  sub_1007A2154();
  sub_100796C94();
  (*(v10 + 16))(v12, v16, v9);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v3 + 16))(v5, v8, v2);
  sub_1007A22D4(v12, 0, 0, v19, v5, "Accessibility label for a close button", 38, 2);
  (*(v3 + 8))(v8, v2);
  (*(v10 + 8))(v16, v9);
  v20 = sub_1007A2214();
  [v17 setAccessibilityLabel:v20];

  [v17 setShowsLargeContentViewer:1];
  v21 = sub_1007A2214();

  [v17 setLargeContentTitle:v21];

  v22 = [objc_allocWithZone(UILargeContentViewerInteraction) init];
  [v17 addInteraction:v22];

  return [v24[0] addSubview:v17];
}

void sub_100399F44()
{
  v94 = sub_100796CF4();
  v1 = *(v94 - 8);
  __chkstk_darwin(v94);
  v3 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v75 - v5;
  v93 = sub_1007A21D4();
  v7 = *(v93 - 8);
  __chkstk_darwin(v93);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v75 - v12;
  v14 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_bottomToolbarContainer);
  [v14 setOpaque:{0, v11}];
  v96 = v14;
  v15 = [v14 layer];
  [v15 setAllowsGroupBlending:0];

  [*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__mainViewContainer) addSubview:v14];
  v16 = [objc_opt_self() boldSystemFontOfSize:20.0];
  v95 = [objc_opt_self() configurationWithFont:v16];

  v98 = v0;
  v17 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_playbackSpeed);
  v97 = objc_opt_self();
  v18 = [v97 bc_nowPlayingVibrantSecondary];
  [v17 setTitleColor:v18 forState:0];

  [v17 setContentHorizontalAlignment:1];
  [v17 addTarget:v0 action:"onNarrationSpeed:" forControlEvents:64];
  sub_1007A2154();
  sub_100796C94();
  v19 = v93;
  v84 = *(v7 + 16);
  v85 = v7 + 16;
  v84(v9, v13, v93);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v81 = objc_opt_self();
  v83 = ObjCClassFromMetadata;
  v21 = [v81 bundleForClass:ObjCClassFromMetadata];
  v22 = v94;
  v79 = *(v1 + 16);
  v80 = v1 + 16;
  v79(v3, v6, v94);
  v86 = v9;
  v89 = v3;
  sub_1007A22D4(v9, 0, 0, v21, v3, "Narration Speed", 15, 2);
  v23 = *(v1 + 8);
  v90 = v6;
  v91 = v1 + 8;
  v78 = v23;
  v23(v6, v22);
  v24 = *(v7 + 8);
  v87 = v13;
  v88 = v7 + 8;
  v25 = v19;
  v26 = v98;
  v27 = v96;
  v77 = v24;
  v24(v13, v25);
  v28 = sub_1007A2214();

  [v17 setAccessibilityLabel:v28];

  [v17 setShowsLargeContentViewer:1];
  v29 = [objc_allocWithZone(UILargeContentViewerInteraction) init];
  [v17 addInteraction:v29];

  [v27 addSubview:v17];
  v30 = *(v26 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_sleepButton);
  v31 = objc_opt_self();
  v32 = sub_1007A2214();
  v82 = v31;
  v33 = [v31 __systemImageNamedSwift:v32];

  v34 = v95;
  if (v33)
  {
    v35 = [v33 imageWithConfiguration:?];

    v33 = [v35 imageWithRenderingMode:2];
  }

  [v30 setImage:v33 forState:0];

  [v30 setTitle:0 forState:0];
  v36 = v97;
  v37 = [v97 bc_nowPlayingVibrantSecondary];
  [v30 setTintColor:v37];

  v38 = [v36 bc_nowPlayingVibrantSecondary];
  [v30 setTitleColor:v38 forState:0];

  *&v30[OBJC_IVAR____TtC5Books11SleepButton_fixedHeight] = 0x4044000000000000;
  *&v30[OBJC_IVAR____TtC5Books11SleepButton_internalPadding] = 0x4024000000000000;
  [v30 setShowsLargeContentViewer:1];
  v39 = [objc_allocWithZone(UILargeContentViewerInteraction) init];
  [v30 addInteraction:v39];

  v40 = &selRef__setupSizeRestrictionsForWindowScene_sceneType_;
  [v27 addSubview:v30];
  v41 = *(v26 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__routeView);
  if (!v41)
  {
    goto LABEL_23;
  }

  v42 = v41;
  v43 = [v36 bc_nowPlayingVibrantSecondary];
  [v42 setTintColor:v43];

  [v27 insertSubview:v42 belowSubview:v30];
  v44 = [v42 subviews];

  sub_10000A7C4(0, &qword_100AD7620, UIView_ptr);
  v45 = sub_1007A25E4();

  v92 = v42;
  if (!(v45 >> 62))
  {
    v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v46)
    {
      goto LABEL_6;
    }

LABEL_22:

    v36 = v97;
    v26 = v98;
    v34 = v95;
    v27 = v96;
    v40 = &selRef__setupSizeRestrictionsForWindowScene_sceneType_;
    goto LABEL_23;
  }

LABEL_21:
  v46 = sub_1007A38D4();
  if (!v46)
  {
    goto LABEL_22;
  }

LABEL_6:
  v47 = 0;
  while (1)
  {
    if ((v45 & 0xC000000000000001) != 0)
    {
      v48 = sub_1007A3784();
    }

    else
    {
      if (v47 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v48 = *(v45 + 8 * v47 + 32);
    }

    v49 = v48;
    v50 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    sub_10000A7C4(0, qword_100ADAA50, UIButton_ptr);
    if ([v49 isKindOfClass:swift_getObjCClassFromMetadata()])
    {
      break;
    }

    ++v47;
    if (v50 == v46)
    {
      goto LABEL_22;
    }
  }

  objc_opt_self();
  v51 = swift_dynamicCastObjCClass();
  v36 = v97;
  v26 = v98;
  v27 = v96;
  if (v51)
  {
    v76 = v51;
    v52 = v87;
    sub_1007A2154();
    v53 = v90;
    sub_100796C94();
    v54 = v86;
    v55 = v27;
    v56 = v93;
    v84(v86, v52, v93);
    v57 = [v81 bundleForClass:v83];
    v58 = v89;
    v59 = v94;
    v79(v89, v53, v94);
    sub_1007A22D4(v54, 0, 0, v57, v58, "AirPlay", 7, 2);
    v78(v53, v59);
    v60 = v56;
    v27 = v55;
    v26 = v98;
    v77(v52, v60);
    v61 = v49;
    v62 = sub_1007A2214();
    v63 = v76;
    [v76 setAccessibilityIdentifier:v62];

    v64 = sub_1007A2214();
    [v63 setAccessibilityLabel:v64];

    v65 = v61;
    [v63 setShowsLargeContentViewer:1];
    v36 = v97;
    v66 = sub_1007A2214();

    [v63 setLargeContentTitle:v66];

    v67 = sub_1007A2214();
    v68 = [v82 _systemImageNamed:v67];

    [v63 setLargeContentImage:v68];
    v69 = [objc_allocWithZone(UILargeContentViewerInteraction) init];
    [v63 addInteraction:v69];
  }

  else
  {
  }

  v40 = &selRef__setupSizeRestrictionsForWindowScene_sceneType_;
  v34 = v95;
LABEL_23:
  v70 = *(v26 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_tocButton);
  v71 = [v36 bc_nowPlayingVibrantSecondary];
  [v70 setTintColor:v71];

  v72 = [v36 bc_nowPlayingVibrantQuaternary];
  v73 = *&v70[OBJC_IVAR____TtC5Books28AudiobookNowPlayingTOCButton_platterColor];
  *&v70[OBJC_IVAR____TtC5Books28AudiobookNowPlayingTOCButton_platterColor] = v72;
  v74 = v72;

  [*&v70[OBJC_IVAR____TtC5Books28AudiobookNowPlayingTOCButton_supplementalView] setBackgroundColor:v74];
  sub_1002AC5BC([v36 bc_nowPlayingVibrantPrimary]);
  [v70 setContentHorizontalAlignment:2];
  [v70 addTarget:v26 action:"onTOC:" forControlEvents:64];
  [v27 v40[269]];
}

uint64_t sub_10039AB18()
{
  v1 = sub_1007A2214();
  [v0 setAccessibilityIdentifier:v1];

  v2 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_dismissButton];
  v3 = sub_1007A2214();
  [v2 setAccessibilityIdentifier:v3];

  v4 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__playPause];
  v5 = sub_1007A2214();
  [v4 setAccessibilityIdentifier:v5];

  v6 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__skipForwardButton];
  v7 = sub_1007A2214();
  [v6 setAccessibilityIdentifier:v7];

  v8 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__skipBackwardButton];
  v9 = sub_1007A2214();
  [v8 setAccessibilityIdentifier:v9];

  v10 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_artworkImageView];
  v11 = sub_1007A2214();
  [v10 setAccessibilityIdentifier:v11];

  v12 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_overflowButton];
  v13 = sub_1007A2214();
  [v12 setAccessibilityIdentifier:v13];

  v14 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_playbackSpeed];
  v15 = sub_1007A2214();
  [v14 setAccessibilityIdentifier:v15];

  v16 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_sleepButton];
  v17 = sub_1007A2214();
  [v16 setAccessibilityIdentifier:v17];

  v18 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_tocButton];
  v19 = sub_1007A2214();
  [v18 setAccessibilityIdentifier:v19];

  v22[3] = type metadata accessor for AudiobookNowPlayingFullscreenTouchView(0);
  v22[0] = v0;
  v20 = v0;
  sub_1007A2B14();
  return sub_1000074E0(v22);
}

void sub_10039ADE0()
{
  v108 = sub_100796CF4();
  v110 = *(v108 - 8);
  __chkstk_darwin(v108);
  v105 = &v83 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v107 = &v83 - v3;
  v106 = sub_1007A21D4();
  v109 = *(v106 - 8);
  __chkstk_darwin(v106);
  v103 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v5);
  v104 = &v83 - v7;
  v8 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_titlesContainer);
  v9 = [v8 layer];
  [v9 setAllowsGroupBlending:0];

  [*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__mainViewContainer) addSubview:v8];
  v10 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_primaryTitleLabel);
  [v10 setTextAlignment:4];
  v11 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_primaryTitleMarqueeView);
  [v11 setContentGap:32.0];
  [v11 setAnimationReferenceView:v8];
  [v11 setFadeEdgeInsets:{0.0, 24.0, 0.0, 24.0}];
  v12 = [v11 contentView];
  if (!v12)
  {
    goto LABEL_16;
  }

  v13 = v12;
  [v12 addSubview:v10];

  [v11 setViewForContentSize:v10];
  v14 = sub_1007A2214();
  [v11 _setLayoutDebuggingIdentifier:v14];

  [v8 addSubview:v11];
  v15 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_secondaryTitleLabel);
  [v15 setTextAlignment:4];
  v16 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_secondaryTitleMarqueeView);
  [v16 setContentGap:32.0];
  [v16 setAnimationReferenceView:v8];
  [v16 setFadeEdgeInsets:{0.0, 24.0, 0.0, 24.0}];
  v17 = [v16 contentView];
  if (!v17)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v18 = v17;
  [v17 addSubview:v15];

  [v16 setViewForContentSize:v15];
  v19 = sub_1007A2214();
  [v16 _setLayoutDebuggingIdentifier:v19];

  [v11 addCoordinatedMarqueeView:v16];
  [v8 addSubview:v16];
  v99 = objc_opt_self();
  v20 = [v99 configurationWithPointSize:4 weight:20.0];
  v21 = objc_opt_self();
  v22 = sub_1007A2214();
  v98 = v21;
  v23 = [v21 __systemImageNamedSwift:v22];

  v24 = v8;
  if (v23)
  {
    v25 = [v23 imageWithConfiguration:v20];
  }

  else
  {
    v25 = 0;
  }

  v26 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_overflowButton);
  [v26 setImage:v25 forState:0];
  sub_10000A7C4(0, &qword_100AF71C0, UIGraphicsImageRendererFormat_ptr);
  v27 = [swift_getObjCClassFromMetadata() preferredFormat];
  v28 = [objc_opt_self() mainScreen];
  [v28 scale];
  v30 = v29;

  [v27 setScale:v30];
  v31 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:v27 format:{28.0, 28.0}];
  aBlock[4] = sub_100395798;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1004091A8;
  aBlock[3] = &unk_100A18BB8;
  v32 = _Block_copy(aBlock);

  v33 = [v31 imageWithActions:v32];
  _Block_release(v32);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v94 = v31;
  v95 = v27;
  v96 = v25;
  v97 = v20;
  v93 = v33;
  [v26 setBackgroundImage:v33 forState:0];
  v100 = objc_opt_self();
  v34 = [v100 bc_nowPlayingVibrantPrimary];
  [v26 setTintColor:v34];

  [v26 setContentHorizontalAlignment:0];
  v102 = v0;
  v35 = v104;
  sub_1007A2154();
  v36 = v107;
  sub_100796C94();
  v37 = v109;
  v38 = *(v109 + 16);
  v101 = v24;
  v39 = v103;
  v40 = v106;
  v92 = v109 + 16;
  v91 = v38;
  v38(v103, v35, v106);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v89 = objc_opt_self();
  v90 = ObjCClassFromMetadata;
  v42 = [v89 bundleForClass:ObjCClassFromMetadata];
  v43 = v110;
  v44 = *(v110 + 16);
  v45 = v105;
  v46 = v108;
  v88 = v110 + 16;
  v87 = v44;
  v44(v105, v36, v108);
  v47 = v39;
  v48 = v101;
  sub_1007A22D4(v47, 0, 0, v42, v45, "More Actions", 12, 2);
  v49 = *(v43 + 8);
  v110 = v43 + 8;
  v86 = v49;
  v49(v36, v46);
  v50 = *(v37 + 8);
  v51 = v35;
  v52 = v102;
  v109 = v37 + 8;
  v85 = v50;
  v50(v51, v40);
  v53 = sub_1007A2214();

  [v26 setAccessibilityLabel:v53];

  [v26 setShowsLargeContentViewer:1];
  v54 = [objc_allocWithZone(UILargeContentViewerInteraction) init];
  [v26 addInteraction:v54];

  [v48 addSubview:v26];
  v55 = *(v52 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadIndicator);
  [v55 setInscribeProgress:0];
  [v55 setProgressLineCap:1];
  [v55 setProgressThickness:2.0];
  v56 = [v100 bc_booksTableSelectionColor];
  [v55 setTrackColor:v56];

  [v55 setTrackDiameter:28.0];
  [v55 setTrackThickness:2.0];
  [v55 setShowsTouchWhenHighlighted:0];
  v57 = v99;
  v58 = [v99 configurationWithPointSize:9.0];
  v59 = sub_1007A2214();
  v60 = v98;
  v61 = [v98 __systemImageNamedSwift:v59];

  v84 = v58;
  if (v61)
  {
    v62 = [v61 imageWithConfiguration:v58];

    v61 = [v62 imageWithRenderingMode:2];
  }

  [v55 setCenterImageNormal:v61];

  [v55 setAlpha:0.0];
  [v48 addSubview:v55];
  [v55 addTarget:v52 action:"cancelDownload:" forControlEvents:64];
  v63 = *(v52 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadSpinner);
  [v63 setAlpha:0.0];
  [v48 addSubview:v63];
  v64 = [v57 configurationWithPointSize:28.0];
  v65 = sub_1007A2214();
  v66 = [v60 __systemImageNamedSwift:v65];

  if (v66)
  {
    v67 = [v66 imageWithConfiguration:v64];

    v68 = [v67 imageWithRenderingMode:2];
  }

  else
  {
    v68 = 0;
  }

  v69 = v100;
  v70 = *(v52 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadButton);
  [v70 setImage:v68 forState:0];
  v71 = [v70 imageView];
  if (v71)
  {
    v72 = v71;
    [v71 setContentMode:1];
  }

  [v70 setAlpha:0.0];
  v73 = [v69 bc_nowPlayingVibrantPrimary];
  [v70 setTintColor:v73];

  v74 = v104;
  sub_1007A2154();
  v75 = v107;
  sub_100796C94();
  v76 = v103;
  v77 = v106;
  v91(v103, v74, v106);
  v78 = [v89 bundleForClass:v90];
  v79 = v105;
  v80 = v108;
  v87(v105, v75, v108);
  sub_1007A22D4(v76, 0, 0, v78, v79, "Download", 8, 2);
  v86(v75, v80);
  v85(v74, v77);
  v81 = sub_1007A2214();

  [v70 setAccessibilityLabel:v81];

  [v70 setShowsLargeContentViewer:1];
  v82 = [objc_allocWithZone(UILargeContentViewerInteraction) init];
  [v70 addInteraction:v82];

  [v101 addSubview:v70];
  [v70 addTarget:v102 action:"startDownload:" forControlEvents:64];
  sub_100397D70();
}

void sub_10039BC44()
{
  v1 = v0;
  v132 = sub_100796CF4();
  v136 = *(v132 - 8);
  __chkstk_darwin(v132);
  v130 = &v118 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v128 = &v118 - v4;
  v129 = sub_1007A21D4();
  v137 = *(v129 - 8);
  __chkstk_darwin(v129);
  v131 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v127 = &v118 - v8;
  v9 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_transportContainer);
  [v9 setOpaque:{0, v7}];
  v10 = [v9 layer];
  [v10 setAllowsGroupBlending:0];

  [*(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__mainViewContainer) addSubview:v9];
  v11 = *(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_hudTrack);
  v12 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [v11 setFont:v12];

  v13 = objc_opt_self();
  v14 = [v13 bc_nowPlayingVibrantPrimary];
  [v11 setTextColor:v14];

  [v11 setTitle:0];
  [v11 setAlpha:0.0];
  v135 = v9;
  [v9 addSubview:v11];
  v15 = *(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__transportSubcontainer);
  [v15 setOpaque:0];
  v16 = [v15 layer];
  [v16 setAllowsGroupBlending:0];

  [v9 addSubview:v15];
  v17 = *(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__skipForwardButton);
  v18 = [v13 bc_nowPlayingVibrantPrimary];
  [v17 setTintColor:v18];

  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v17 addTarget:v1 action:"skipForwardStart:" forControlEvents:17];
  [v17 addTarget:v1 action:"skipForwardTouchUpInside:" forControlEvents:64];
  [v17 addTarget:v1 action:"skipForwardTouchCancel:" forControlEvents:288];
  [v15 addSubview:*(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__skipForwardVibrancyEffectContainerView)];
  sub_10039728C();
  v19 = *(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__playPause);
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v19 setBackgroundImage:*(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_playImage) forState:0];
  v20 = [v13 bc_nowPlayingVibrantPrimary];
  [v19 setTintColor:v20];

  [v19 addTarget:v1 action:"onPlayPause:" forControlEvents:64];
  [v15 addSubview:*(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__playPauseVibrancyEffectContainerView)];
  v21 = *(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__skipBackwardButton);
  v133 = v13;
  v22 = [v13 bc_nowPlayingVibrantPrimary];
  [v21 setTintColor:v22];

  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  v134 = v1;
  [v21 addTarget:v1 action:"skipBackwardStart:" forControlEvents:17];
  [v21 addTarget:v1 action:"skipBackwardTouchUpInside:" forControlEvents:64];
  [v21 addTarget:v1 action:"skipBackwardTouchCancel:" forControlEvents:288];
  [v15 addSubview:*(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__skipBackwardVibrancyEffectContainerView)];
  v23 = *(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_played);
  v24 = sub_1007A2214();
  [v23 setText:v24];

  [v23 setTextAlignment:0];
  v25 = v127;
  sub_1007A2154();
  v26 = v128;
  sub_100796C94();
  v27 = *(v137 + 2);
  v125 = v137 + 16;
  v126 = v27;
  v28 = v131;
  v29 = v25;
  v30 = v129;
  v27(v131, v25, v129);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v124 = ObjCClassFromMetadata;
  v123 = objc_opt_self();
  v32 = [v123 bundleForClass:ObjCClassFromMetadata];
  v33 = v136;
  v121 = *(v136 + 16);
  v122 = v136 + 16;
  v34 = v130;
  v35 = v26;
  v36 = v26;
  v37 = v132;
  v121(v130, v35, v132);
  v38 = v34;
  sub_1007A22D4(v28, 0, 0, v32, v34, "Accessibility label for the amount of time that has already been played within an audiobook chapter", 99, 2);
  v39 = *(v33 + 8);
  v136 = v33 + 8;
  v120 = v39;
  v40 = v36;
  v39(v36, v37);
  v41 = *(v137 + 1);
  v137 += 8;
  v119 = v41;
  v42 = v29;
  v43 = v30;
  v41(v29, v30);
  v44 = sub_1007A2214();

  [v23 setAccessibilityLabel:v44];

  v45 = UIAccessibilityTraitUpdatesFrequently;
  v46 = [v23 accessibilityTraits];
  if ((v45 & ~v46) != 0)
  {
    v47 = v45;
  }

  else
  {
    v47 = 0;
  }

  [v23 setAccessibilityTraits:v47 | v46];
  [v135 addSubview:v23];
  v48 = v134;
  v49 = *(v134 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_toPlay);
  v50 = sub_1007A2214();
  [v49 setText:v50];

  [v49 setTextAlignment:2];
  sub_1007A2154();
  v51 = v40;
  sub_100796C94();
  v52 = v131;
  v53 = v43;
  v126(v131, v42, v43);
  v54 = [v123 bundleForClass:v124];
  v55 = v38;
  v56 = v38;
  v57 = v132;
  v121(v56, v51, v132);
  sub_1007A22D4(v52, 0, 0, v54, v55, "Accessibility label for the amount of time that remains to be played within an audiobook chapter", 96, 2);
  v120(v51, v57);
  v119(v42, v53);
  v58 = sub_1007A2214();

  [v49 setAccessibilityLabel:v58];

  v59 = [v49 accessibilityTraits];
  if ((v45 & ~v59) != 0)
  {
    v60 = v45;
  }

  else
  {
    v60 = 0;
  }

  [v49 setAccessibilityTraits:v60 | v59];
  v61 = v49;
  v62 = v135;
  [v135 addSubview:v61];
  v63 = *(v48 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__toPlayInAudiobook);
  v64 = sub_1007A2214();
  [v63 setText:v64];

  [v63 setTextAlignment:1];
  [v62 addSubview:v63];
  v65 = *(v48 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_loadingSpinner);
  [v65 intrinsicContentSize];
  if (v66 == 0.0)
  {
    v67 = 0.0;
  }

  else
  {
    v67 = 14.0 / v66;
  }

  CGAffineTransformMakeScale(&v138, v67, v67);
  [v65 setTransform:&v138];
  [v62 addSubview:v65];
  v68 = *(v48 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__volumeContainer);
  [v68 setOpaque:0];
  v69 = [v68 layer];
  [v69 setAllowsGroupBlending:0];

  [v62 addSubview:v68];
  v70 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleFootnote scale:2];
  v71 = objc_opt_self();
  v72 = sub_1007A2214();
  v73 = [v71 __systemImageNamedSwift:v72];

  if (v73)
  {
    v74 = [v73 imageWithConfiguration:v70];

    v75 = [v74 imageWithRenderingMode:2];
  }

  else
  {
    v75 = 0;
  }

  v76 = v134;
  v77 = *(v134 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__volumeMinImageView);
  [v77 setImage:v75];
  v78 = [v133 bc_nowPlayingVibrantSecondary];
  [v77 setTintColor:v78];

  [v68 addSubview:v77];
  v79 = *(v76 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__volumeView);
  if (v79)
  {
    v80 = v79;
    v81 = [v133 bc_nowPlayingVibrantSecondary];
    [v80 setTintColor:v81];

    [v80 setShowsRouteButton:0];
    if (!_UISolariumEnabled())
    {

      v93 = sub_1007A2214();
      v94 = [v71 imageNamed:v93];

      v95 = [v94 im_imageWithSize:{33.0, 33.0}];
      [v80 setVolumeThumbImage:v95 forState:0];

      goto LABEL_44;
    }

    v82 = [v80 subviews];

    sub_10000A7C4(0, &qword_100AD7620, UIView_ptr);
    v83 = sub_1007A25E4();

    if (v83 >> 62)
    {
      if (!sub_1007A38D4())
      {
        goto LABEL_43;
      }
    }

    else if (!*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_43;
    }

    if ((v83 & 0xC000000000000001) != 0)
    {
      v84 = sub_1007A3784();
    }

    else
    {
      if (!*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_50;
      }

      v84 = *(v83 + 32);
    }

    v85 = v84;

    v86 = [v85 subviews];

    v87 = sub_1007A25E4();
    if (v87 >> 62)
    {
      if (sub_1007A38D4())
      {
LABEL_22:
        if ((v87 & 0xC000000000000001) == 0)
        {
          if (!*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_53;
          }

          v88 = *(v87 + 32);
LABEL_25:
          v89 = v88;

          v137 = v89;
          v90 = [v89 subviews];
          v91 = sub_1007A25E4();

          if (v91 >> 62)
          {
            v92 = sub_1007A38D4();
          }

          else
          {
            v92 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v92 < 2)
          {

LABEL_44:
            [v68 addSubview:v80];

            goto LABEL_45;
          }

          v96 = [v137 subviews];
          v97 = sub_1007A25E4();

          if ((v97 & 0xC000000000000001) == 0)
          {
            if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
            {
              __break(1u);
              goto LABEL_57;
            }

            v98 = *(v97 + 40);
LABEL_33:
            v99 = v98;

            v100 = [v99 subviews];

            v101 = sub_1007A25E4();
            if (v101 >> 62)
            {
              v117 = sub_1007A38D4();
              v102 = v137;
              if (v117)
              {
LABEL_35:
                if ((v101 & 0xC000000000000001) == 0)
                {
                  if (!*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    __break(1u);
                    return;
                  }

                  v103 = *(v101 + 32);
                  goto LABEL_38;
                }

LABEL_57:
                v103 = sub_1007A3784();
LABEL_38:
                v104 = v103;

                [v104 setHidden:1];

                goto LABEL_44;
              }
            }

            else
            {
              v102 = v137;
              if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_35;
              }
            }

            goto LABEL_44;
          }

LABEL_53:
          v98 = sub_1007A3784();
          goto LABEL_33;
        }

LABEL_50:
        v88 = sub_1007A3784();
        goto LABEL_25;
      }
    }

    else if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_22;
    }

LABEL_43:

    goto LABEL_44;
  }

LABEL_45:
  v105 = sub_1007A2214();
  v106 = [v71 __systemImageNamedSwift:v105];

  if (v106)
  {
    v107 = [v106 imageWithConfiguration:v70];

    v108 = [v107 imageWithRenderingMode:2];
  }

  else
  {
    v108 = 0;
  }

  v109 = v134;
  v110 = *(v134 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__volumeMaxImageView);
  [v110 setImage:v108];
  v111 = v133;
  v112 = [v133 bc_nowPlayingVibrantSecondary];
  [v110 setTintColor:v112];

  [v68 addSubview:v110];
  v113 = v109;
  sub_1003974A8();
  v114 = *(v109 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_progressSlider);
  v115 = [v111 bc_nowPlayingVibrantQuaternary];
  [v114 setBufferIndicatorColor:v115];

  v116 = [v111 bc_nowPlayingVibrantSecondary];
  [v114 setSessionIndicatorColor:v116];

  [v114 addTarget:v113 action:"setChapterProgress:" forControlEvents:4096];
  [v114 setTouchInsets:{-10.0, -20.0, -10.0, -20.0}];
  [v135 addSubview:v114];
  sub_100397EB4();
}

void sub_10039CE34()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_primaryTitleLabel);
  v2 = sub_10069D3B8(UIFontTextStyleTitle3, UIContentSizeCategoryExtraExtraExtraLarge);
  [v1 setFont:v2];

  v3 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_secondaryTitleLabel);
  v4 = objc_opt_self();
  v5 = [v4 _preferredFontForTextStyle:UIFontTextStyleTitle3 maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  [v3 setFont:v5];

  if (*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm + 8) == 1)
  {
    if (*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm + 394))
    {
      v6 = &UIFontTextStyleBody;
    }

    else
    {
      v6 = &UIFontTextStyleCaption1;
    }

    v7 = *v6;
    v8 = [v4 _preferredFontForTextStyle:v7 maximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraExtraLarge];

    if (v8)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v8 = [v4 _preferredFontForTextStyle:UIFontTextStyleCaption1 maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
    if (v8)
    {
LABEL_6:
      [v8 pointSize];
      v19 = [v4 monospacedDigitSystemFontOfSize:? weight:?];

      v9 = v19;
      goto LABEL_9;
    }
  }

  v9 = 0;
LABEL_9:
  v20 = v9;
  [*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_played) setFont:?];
  [*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_toPlay) setFont:v20];
  [*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__toPlayInAudiobook) setFont:v20];
  v10 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_playbackSpeed);
  v11 = [v10 titleLabel];
  if (v11)
  {
    v12 = v11;
    v13 = [objc_opt_self() defaultFontSpec];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 fontSpecWithDesign:UIFontDescriptorSystemDesignRounded];

      if (v15)
      {
        v16 = [v15 fontSpecWithWeight:UIFontWeightSemibold];

        if (v16)
        {
          v17 = [v16 fontSpecWithPointSize:22.0];

          if (v17)
          {
            v18 = [v17 font];

            [v12 setFont:v18];
            goto LABEL_15;
          }

LABEL_21:
          __break(1u);
          return;
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

LABEL_15:
  [v10 _setTouchInsets:{-20.0, -20.0, -20.0, -20.0}];
}

id sub_10039D19C()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__mainViewContainer];
  [v9 setFrame:?];
  v10 = sub_100395DD8();
  [v10 setFrame:{v2, v4, v6, v8}];

  v11 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView____lazy_storage___backgroundImageView];
  [v9 bounds];
  [v11 setFrame:?];

  v12 = objc_opt_self();
  [v12 begin];
  [v12 setDisableActions:1];
  v13 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_backgroundGradientLayer];
  [v9 bounds];
  [v13 setFrame:?];
  v14 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lowerHalfGradientLayer];
  [v9 bounds];
  MinX = CGRectGetMinX(v21);
  [v9 bounds];
  MidY = CGRectGetMidY(v22);
  [v9 bounds];
  Width = CGRectGetWidth(v23);
  [v9 bounds];
  MaxY = CGRectGetMaxY(v24);
  [v9 bounds];
  [v14 setFrame:{MinX, MidY, Width, MaxY - CGRectGetMidY(v25)}];

  return [v12 commit];
}

id sub_10039D360()
{
  [*&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__mainViewContainer] bounds];
  v5 = v1;
  v6 = v2;
  v7 = v3;
  v8 = v4;
  v9 = &v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm];
  if (*&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm + 8] || (v10 = 12.0, (v9[49] & 1) == 0))
  {
    v10 = 0.0;
  }

  CGRectGetMidX(*&v1);
  CGFloatRoundForScale();
  v12 = v11;
  [v0 safeAreaInsets];
  [*&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_grabberView] setFrame:{v12, v10 + v13 + 7.0, v9[6], v9[7]}];
  [v0 safeAreaInsets];
  v15 = v10 + v14;
  v20.origin.x = v5;
  v20.origin.y = v6;
  v20.size.width = v7;
  v20.size.height = v8;
  Width = CGRectGetWidth(v20);
  v17 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_dismissButton];

  return [v17 setFrame:{0.0, v15, Width, 32.0}];
}

void sub_10039D4AC(__n128 a1)
{
  v2 = &v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm];
  if (*&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm + 256] > 1.5 && v2[3] > 0.0)
  {
    [v1 safeAreaInsets];
    [v1 safeAreaInsets];
  }

  if (*(v2 + 393) == 1 && v2[3] > 0.0)
  {
    [v1 safeAreaInsets];
    [v1 safeAreaInsets];
  }

  CGRectFitRectInRectAbsoluteNoRounding();
  CGRectRoundedForScale();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [*&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_artworkImageView] setFrame:?];
  v11 = *&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_artworkImageShadowView];
  [v11 setFrame:{v4, v6, v8, v10}];
  v12 = [v11 layer];
  [v11 bounds];
  v17 = [objc_opt_self() bezierPathWithRoundedRect:v13 cornerRadius:{v14, v15, v16, 10.0}];
  v18 = [v17 CGPath];

  [v12 setShadowPath:v18];
}

id sub_10039D744()
{
  [*&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_titlesContainer] frame];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = &v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm];
  sub_100395844(v9[26], v9[27]);
  [v0 safeAreaInsets];
  if (*(v9 + 393) == 1 && v9[3] > 0.0)
  {
    [v0 safeAreaInsets];
    [v0 safeAreaInsets];
  }

  v12.origin.x = v2;
  v12.origin.y = v4;
  v12.size.width = v6;
  v12.size.height = v8;
  CGRectGetMinX(v12);
  v13.origin.x = v2;
  v13.origin.y = v4;
  v13.size.width = v6;
  v13.size.height = v8;
  CGRectGetWidth(v13);
  CGRectRoundedForScale();
  [*&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_bottomToolbarContainer] setFrame:?];

  return sub_10039ED24();
}

id sub_10039D910()
{
  [*&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_titlesContainer] frame];
  x = v8.origin.x;
  width = v8.size.width;
  height = v8.size.height;
  MaxY = CGRectGetMaxY(v8);
  [*&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_bottomToolbarContainer] frame];
  CGRectGetMinY(v9);
  v5 = &v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm];
  CGFloatRoundForScale();
  if ((*(v5 + 393) & 1) == 0 && v5[3] > 0.0)
  {
    [v0 safeAreaInsets];
    [v0 safeAreaInsets];
  }

  v10.origin.x = x;
  v10.origin.y = MaxY + 27.0;
  v10.size.width = width;
  v10.size.height = height;
  CGRectGetMinY(v10);

  return sub_10039E2EC();
}

void sub_10039DA74(uint64_t a1, double a2)
{
  CGRectRoundedForScale();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [*(v2 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_artworkImageView) setFrame:?];
  v11 = *(v2 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_artworkImageShadowView);
  [v11 setFrame:{v4, v6, v8, v10}];
  v12 = [v11 layer];
  [v11 bounds];
  v17 = [objc_opt_self() bezierPathWithRoundedRect:v13 cornerRadius:{v14, v15, v16, 10.0}];
  v18 = [v17 CGPath];

  [v12 setShadowPath:v18];
}

id sub_10039DC10()
{
  sub_100395844(*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm + 208), *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm + 216));
  [*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_titlesContainer) frame];
  x = v7.origin.x;
  y = v7.origin.y;
  width = v7.size.width;
  height = v7.size.height;
  CGRectGetMinX(v7);
  v8.origin.x = x;
  v8.origin.y = y;
  v8.size.width = width;
  v8.size.height = height;
  CGRectGetWidth(v8);
  CGRectRoundedForScale();
  [*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_bottomToolbarContainer) setFrame:?];

  return sub_10039EF44();
}

id sub_10039DD38()
{
  [*&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_titlesContainer] frame];
  x = v13.origin.x;
  width = v13.size.width;
  height = v13.size.height;
  MaxY = CGRectGetMaxY(v13);
  v4 = &v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm];
  v5 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm + 24];
  v6 = 0.0;
  if (v5 > 0.0)
  {
    [v0 safeAreaInsets];
    v8 = v7;
    [v0 safeAreaInsets];
    v6 = fmin((v4[3] - v4[42]) * ((v5 - (v8 + v9)) * 0.04 / v4[3]), 32.0);
  }

  [*&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_bottomToolbarContainer] frame];
  CGRectGetMinY(v14);
  CGFloatRoundForScale();
  if (v4[3] > 0.0)
  {
    [v0 safeAreaInsets];
    [v0 safeAreaInsets];
  }

  v15.origin.x = x;
  v15.origin.y = MaxY + v6;
  v15.size.width = width;
  v15.size.height = height;
  CGRectGetMinY(v15);

  return sub_10039E2EC();
}

void sub_10039DEF0(double a1, double a2, double a3, double a4)
{
  v5 = v4 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm;
  v6 = *(v4 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm + 398) == 0;
  memset(&slice, 0, sizeof(slice));
  if (v6)
  {
    v7 = CGRectMaxXEdge;
  }

  else
  {
    v7 = CGRectMinXEdge;
  }

  memset(&v41, 0, sizeof(v41));
  v8 = 0;
  v9 = 0;
  CGRectDivide(*(&a3 - 2), &slice, &v41, 28.0, v7);
  y = v41.origin.y;
  x = v41.origin.x;
  height = v41.size.height;
  width = v41.size.width;
  CGRectCenterRectInRect();
  CGRectRoundedForScale();
  [*(v4 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_overflowButton) setFrame:?];
  v14 = *(v4 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_buyButton);
  if (v14)
  {
    memset(&slice, 0, sizeof(slice));
    memset(&v41, 0, sizeof(v41));
    v15 = v14;
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    CGRectDivide(v43, &slice, &v41, 16.0, v7);
    v44 = v41;
    v16 = *(v5 + 32);
    memset(&slice, 0, sizeof(slice));
    memset(&v41, 0, sizeof(v41));
    CGRectDivide(v44, &slice, &v41, v16, v7);
    y = v41.origin.y;
    x = v41.origin.x;
    height = v41.size.height;
    width = v41.size.width;
    CGRectCenterRectInRect();
    CGRectRoundedForScale();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    [v15 setFrame:?];
    memset(&slice, 0, sizeof(slice));
    memset(&v41, 0, sizeof(v41));
    v45.origin.x = v18;
    v45.origin.y = v20;
    v45.size.width = v22;
    v45.size.height = v24;
    CGRectDivide(v45, &slice, &v41, 28.0, v7);
    CGRectCenterRectInRect();
    CGRectRoundedForScale();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    [*(v4 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadIndicator) setFrame:?];
    [*(v4 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadSpinner) setFrame:{v26, v28, v30, v32}];
    [*(v4 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadButton) setFrame:{v26, v28, v30, v32}];
  }

  else
  {
    if (*(v4 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadState) == 3)
    {
      memset(&slice, 0, sizeof(slice));
      memset(&v41, 0, sizeof(v41));
      v46.origin.x = x;
      v46.origin.y = y;
      v46.size.width = width;
      v46.size.height = height;
      CGRectDivide(v46, &slice, &v41, 40.0, v7);
    }

    else
    {
      memset(&slice, 0, sizeof(slice));
      memset(&v41, 0, sizeof(v41));
      v47.origin.x = x;
      v47.origin.y = y;
      v47.size.width = width;
      v47.size.height = height;
      CGRectDivide(v47, &slice, &v41, 16.0, v7);
      v48 = v41;
      memset(&slice, 0, sizeof(slice));
      memset(&v41, 0, sizeof(v41));
      CGRectDivide(v48, &slice, &v41, 28.0, v7);
      y = v41.origin.y;
      x = v41.origin.x;
      height = v41.size.height;
      width = v41.size.width;
    }

    CGRectCenterRectInRect();
    CGRectRoundedForScale();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    [*(v4 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadIndicator) setFrame:?];
    [*(v4 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadSpinner) setFrame:{v34, v36, v38, v40}];
    [*(v4 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadButton) setFrame:{v34, v36, v38, v40}];
  }

  memset(&slice, 0, sizeof(slice));
  memset(&v41, 0, sizeof(v41));
  v49.origin.x = x;
  v49.origin.y = y;
  v49.size.width = width;
  v49.size.height = height;
  CGRectDivide(v49, &slice, &v41, 20.0, v7);
}

id sub_10039E2EC()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_transportContainer);
  [v1 setFrame:?];
  sub_10039E440();
  [v1 bounds];
  CGRectGetMaxY(v12);
  [v1 bounds];
  CGRectRoundedForScale();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__volumeContainer) setFrame:?];
  sub_10039E704();
  v13.origin.x = v3;
  v13.origin.y = v5;
  v13.size.width = v7;
  v13.size.height = v9;
  CGRectGetMinY(v13);
  [v1 bounds];
  CGRectGetWidth(v14);
  CGRectRoundedForScale();
  [*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__transportSubcontainer) setFrame:?];

  return sub_10039E964();
}

void sub_10039E440()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_transportContainer);
  [v1 bounds];
  CGRectGetWidth(v25);
  CGRectRoundedForScale();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_progressSlider) setFrame:?];
  v26.origin.x = v3;
  v26.origin.y = v5;
  v26.size.width = v7;
  v26.size.height = v9;
  CGRectGetMinX(v26);
  v27.origin.x = v3;
  v27.origin.y = v5;
  v27.size.width = v7;
  v27.size.height = v9;
  CGRectGetMinY(v27);
  v28.origin.x = v3;
  v28.origin.y = v5;
  v28.size.width = v7;
  v28.size.height = v9;
  CGRectGetWidth(v28);
  CGRectRoundedForScale();
  [*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_hudTrack) setFrame:?];
  CGRectRoundedForScale();
  v22 = v11;
  v23 = v10;
  v13 = v12;
  v15 = v14;
  [*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_played) setFrame:?];
  v16 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_loadingSpinner);
  CGRectRoundedForScale();
  [v16 setFrame:?];
  [v1 bounds];
  CGRectRoundedForScale();
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  v21 = v29.origin.x - CGRectGetWidth(v29);
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  [*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_toPlay) setFrame:{v21, y, width + CGRectGetWidth(v30), height}];
  v31.origin.x = v13;
  v31.origin.y = v15;
  v31.size.width = v23;
  v31.size.height = v22;
  CGRectGetMaxX(v31);
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  CGRectGetMinX(v32);
  v33.origin.x = v13;
  v33.origin.y = v15;
  v33.size.width = v23;
  v33.size.height = v22;
  CGRectGetMaxX(v33);
  CGRectRoundedForScale();
  [*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__toPlayInAudiobook) setFrame:?];

  sub_1003997F8();
}

id sub_10039E704()
{
  [*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__volumeContainer) bounds];
  v2 = v1;
  v4 = v3;
  v5 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__volumeMaxImageView);
  [v5 sizeThatFits:{v1, v3}];
  v6 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__volumeMinImageView);
  [v6 sizeThatFits:{v2, v4}];
  if (*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm + 398) == 1)
  {
    CGRectRoundedForScale();
    x = v40.origin.x;
    y = v40.origin.y;
    width = v40.size.width;
    height = v40.size.height;
    CGRectGetMaxX(v40);
    v10 = x;
    CGRectRoundedForScale();
    v37 = v12;
    v38 = v11;
    v35 = v14;
    v36 = v13;
    v15 = height;
    CGRectRoundedForScale();
  }

  else
  {
    CGRectRoundedForScale();
    v20 = v41.origin.x;
    v21 = v41.origin.y;
    v22 = v41.size.width;
    v34 = v41.size.height;
    CGRectGetMaxX(v41);
    CGRectRoundedForScale();
    v37 = v24;
    v38 = v23;
    v35 = v26;
    v36 = v25;
    CGRectRoundedForScale();
    v10 = v27;
    v16 = v20;
    y = v28;
    v17 = v21;
    width = v29;
    v18 = v22;
    v15 = v30;
    v19 = v34;
  }

  [v6 setFrame:{v16, v17, v18, v19}];
  v31 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__volumeView);
  if (v31)
  {
    [v31 setFrame:{v38, v37, v36, v35}];
  }

  return [v5 setFrame:{v10, y, width, v15}];
}

id sub_10039E964()
{
  [*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__transportSubcontainer) bounds];
  v1 = (v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm);
  CGFloatRoundForScale();
  v3 = v2;
  CGFloatRoundForScale();
  v4 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__skipBackwardButton);
  [v4 setHitRectInsets:{v5, v3, v5, v3}];
  *&v4[OBJC_IVAR____TtC5Books25NowPlayingTransportButton_highlightIndicatorWidth] = v1[21] + 8.0;
  result = *&v4[OBJC_IVAR____TtC5Books25NowPlayingTransportButton_highlightIndicatorWidthConstraint];
  if (!result)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [result setConstant:?];
  [v4 invalidateIntrinsicContentSize];
  CGRectRoundedForScale();
  [*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__skipBackwardVibrancyEffectContainerView) setFrame:?];
  v7 = [v4 titleLabel];
  if (v7)
  {
    v8 = v7;
    [v7 setTextAlignment:1];
  }

  [v4 setContentHorizontalAlignment:0];
  [v4 setContentVerticalAlignment:0];
  CGFloatRoundForScale();
  v10 = v9;
  CGFloatRoundForScale();
  v11 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__playPause);
  [v11 setHitRectInsets:{v12, v10, v12, v10}];
  *&v11[OBJC_IVAR____TtC5Books25NowPlayingTransportButton_highlightIndicatorWidth] = v1[23] + 8.0;
  result = *&v11[OBJC_IVAR____TtC5Books25NowPlayingTransportButton_highlightIndicatorWidthConstraint];
  if (!result)
  {
    goto LABEL_12;
  }

  [result setConstant:?];
  [v11 invalidateIntrinsicContentSize];
  CGRectRoundedForScale();
  [*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__playPauseVibrancyEffectContainerView) setFrame:?];
  CGFloatRoundForScale();
  v14 = v13;
  CGFloatRoundForScale();
  v15 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__skipForwardButton);
  [v15 setHitRectInsets:{v16, v14, v16, v14}];
  *&v15[OBJC_IVAR____TtC5Books25NowPlayingTransportButton_highlightIndicatorWidth] = v1[25] + 8.0;
  result = *&v15[OBJC_IVAR____TtC5Books25NowPlayingTransportButton_highlightIndicatorWidthConstraint];
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  [result setConstant:?];
  [v15 invalidateIntrinsicContentSize];
  CGRectRoundedForScale();
  [*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__skipForwardVibrancyEffectContainerView) setFrame:?];
  v17 = [v15 titleLabel];
  if (v17)
  {
    v18 = v17;
    [v17 setTextAlignment:1];
  }

  [v15 setContentHorizontalAlignment:0];

  return [v15 setContentVerticalAlignment:0];
}

id sub_10039ED24()
{
  v1 = v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm;
  if (*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm + 397))
  {
    v2 = 3.0;
  }

  else
  {
    v2 = 2.0;
  }

  [*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_bottomToolbarContainer) bounds];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  fmin((CGRectGetWidth(v10) - (v2 * 40.0 + *(v1 + 224))) / v2, 40.0);
  v7 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_playbackSpeed);
  CGRectMakeWithSize();
  [v7 contentRectForBounds:?];
  [v7 titleRectForContentRect:?];
  CGRectGetMinX(v11);
  CGRectRoundedForScale();
  [v7 setFrame:?];
  CGRectRoundedForScale();
  [*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_sleepButton) setFrame:?];
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  CGRectGetMaxX(v12);
  CGRectRoundedForScale();
  [*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_tocButton) setFrame:?];
  CGRectRoundedForScale();
  result = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__routeView);
  if (result)
  {

    return [result setFrame:?];
  }

  return result;
}

id sub_10039EF44()
{
  [*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_bottomToolbarContainer) bounds];
  CGRectGetWidth(v6);
  v1 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_playbackSpeed);
  CGRectMakeWithSize();
  [v1 contentRectForBounds:?];
  [v1 titleRectForContentRect:?];
  CGRectGetMinX(v7);
  CGRectRoundedForScale();
  [v1 setFrame:?];
  CGRectRoundedForScale();
  [*(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_sleepButton) setFrame:?];
  CGRectRoundedForScale();
  v2 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__routeView);
  if (v2)
  {
    [v2 setFrame:?];
  }

  CGRectRoundedForScale();
  v3 = *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_tocButton);

  return [v3 setFrame:?];
}

void sub_10039F114(uint64_t a1)
{
  v6 = [objc_opt_self() bc_nowPlayingVibrantPrimary];
  v8.width = 6.0;
  v8.height = 6.5;
  UIGraphicsBeginImageContextWithOptions(v8, 0, 0.0);
  v2 = UIGraphicsGetCurrentContext();
  if (v2)
  {
    v3 = v2;
    v4 = [v6 CGColor];
    CGContextSetFillColorWithColor(v3, v4);

    v9.origin.x = 0.0;
    v9.origin.y = 0.5;
    v9.size.width = 6.0;
    v9.size.height = 6.0;
    CGContextFillEllipseInRect(v3, v9);
    v5 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    [*(a1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_progressSlider) setThumbImage:v5 forState:0];
  }
}

double sub_10039F224()
{
  [v0 bounds];
  if (CGRectGetHeight(v3) > 0.0)
  {
    [v0 bounds];
    [v0 bounds];
    CGRectGetHeight(v5);
  }

  v1 = [objc_opt_self() currentDevice];
  [v1 userInterfaceIdiom];

  [v0 bounds];
  return 46.0;
}

double sub_10039F2CC()
{
  [v0 bounds];
  if (CGRectGetHeight(v3) > 0.0)
  {
    [v0 bounds];
    [v0 bounds];
    CGRectGetHeight(v5);
  }

  v1 = [objc_opt_self() currentDevice];
  [v1 userInterfaceIdiom];

  [v0 bounds];
  return 32.0;
}

uint64_t sub_10039F420(char *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain_n();
    v7 = a1;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    v9 = v8;
    if (!v8)
    {
      v8 = swift_unknownObjectRelease();
    }

    a4(v8);
    swift_unknownObjectRelease();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10039F4EC(uint64_t a1)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    if (swift_unknownObjectWeakLoadStrong())
    {
      [v2 value];
      sub_1002822D0(v3);
      swift_unknownObjectRelease();
    }
  }

  return swift_unknownObjectRelease();
}

void sub_10039F5F4(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  swift_unknownObjectRetain();
  v7 = a1;
  sub_10039F66C(a3, a4);
  swift_unknownObjectRelease();
}

uint64_t sub_10039F66C(uint64_t a1, SEL *a2)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [*(Strong + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_eventHandler) *a2];
      swift_unknownObjectRelease();
    }
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_10039F72C(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [*(result + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_eventHandler) *a4];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10039F7A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 399))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 392);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10039F7FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
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
    *(result + 398) = 0;
    *(result + 396) = 0;
    *(result + 392) = 0;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 399) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 399) = 0;
    }

    if (a2)
    {
      *(result + 392) = a2 + 1;
    }
  }

  return result;
}

UIImage *sub_10039F8C0(char a1, void *a2, double a3, double a4)
{
  UIGraphicsBeginImageContextWithOptions(*&a3, 0, 0.0);
  [a2 set];
  v8 = [objc_allocWithZone(UIBezierPath) init];
  v9 = v8;
  if (a1)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = a3;
  }

  v11 = a3 + -1.0;
  if (a1)
  {
    v12 = 1.0;
  }

  else
  {
    v12 = a3 + -1.0;
  }

  [v8 moveToPoint:{v10, 0.0}];
  [v9 addLineToPoint:{v12, 0.0}];
  [v9 addArcWithCenter:a1 & 1 radius:v12 startAngle:a4 * 0.5 endAngle:a4 * 0.5 clockwise:{4.71238898, 1.57079633}];
  [v9 addLineToPoint:{v10, a4}];
  [v9 closePath];
  [v9 fill];
  v13 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  if (v13)
  {
    if (a1)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0.0;
    }

    if (a1)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = v11;
    }

    v16 = [(UIImage *)v13 resizableImageWithCapInsets:0.0, v15, 0.0, v14];
  }

  else
  {

    return 0;
  }

  return v16;
}

void sub_10039FA54(void *a1)
{
  v2 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_buyButton;
  v4 = *&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_buyButton];
  *&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_buyButton] = a1;
  v3 = a1;
  [v4 removeFromSuperview];
  if (*&v1[v2])
  {
    [*&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_titlesContainer] addSubview:?];
  }

  [v1 setNeedsLayout];
}

uint64_t sub_10039FAF4(uint64_t a1)
{
  v2 = sub_1001F1160(&unk_100ADA6C0, &unk_10080CBF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10039FB5C()
{
  *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for AudiobookNowPlayingFullscreenTouchView(0);
  sub_1001F1160(&qword_100ADF7D0, &qword_10081F9D8);
  sub_1007A22E4();
  sub_10079ACD4();
  *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_playImage) = 0;
  *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_pauseImage) = 0;
  *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_scrubberImpactBehavior) = 0;
  *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadState) = 3;
  *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView____lazy_storage___backgroundImageView) = 0;
  v1 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_artworkImageView;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_artworkImageShadowView;
  *(v0 + v2) = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_bottomToolbarContainer;
  *(v0 + v3) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v4 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_dismissButton;
  v5 = objc_opt_self();
  *(v0 + v4) = [v5 buttonWithType:0];
  v6 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadIndicator;
  *(v0 + v6) = [objc_allocWithZone(IMRadialProgressButton) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v7 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadSpinner;
  *(v0 + v7) = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v8 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadButton;
  *(v0 + v8) = [v5 buttonWithType:0];
  v9 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_grabberView;
  *(v0 + v9) = [objc_allocWithZone(_UIGrabber) init];
  v10 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_hudTrack;
  *(v0 + v10) = [objc_allocWithZone(BKHUDTrack) init];
  v11 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_loadingSpinner;
  *(v0 + v11) = [objc_allocWithZone(UIActivityIndicatorView) init];
  v12 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_overflowButton;
  *(v0 + v12) = [objc_opt_self() buttonWithType:0];
  v13 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_played;
  *(v0 + v13) = [objc_allocWithZone(UILabel) init];
  v14 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_progressSlider;
  *(v0 + v14) = [objc_allocWithZone(BKScrubberSlider) init];
  v15 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_playbackSpeed;
  *(v0 + v15) = [v5 buttonWithType:0];
  v16 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_primaryTitleLabel;
  *(v0 + v16) = [objc_allocWithZone(UILabel) init];
  v17 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_primaryTitleMarqueeView;
  *(v0 + v17) = [objc_allocWithZone(MPUMarqueeView) init];
  v18 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_secondaryTitleLabel;
  *(v0 + v18) = [objc_allocWithZone(UILabel) init];
  v19 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_secondaryTitleMarqueeView;
  *(v0 + v19) = [objc_allocWithZone(MPUMarqueeView) init];
  v20 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_sleepButton;
  type metadata accessor for SleepButton();
  *(v0 + v20) = [swift_getObjCClassFromMetadata() buttonWithType:0];
  v21 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_toPlay;
  *(v0 + v21) = [objc_allocWithZone(UILabel) init];
  v22 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_titlesContainer;
  *(v0 + v22) = [objc_allocWithZone(type metadata accessor for ConstraintsDisabledView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v23 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_tocButton;
  *(v0 + v23) = [objc_allocWithZone(type metadata accessor for AudiobookNowPlayingTOCButton()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v24 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_transportContainer;
  *(v0 + v24) = [objc_allocWithZone(type metadata accessor for TransportContainer()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v25 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_backgroundGradientLayer;
  *(v0 + v25) = [objc_allocWithZone(CAGradientLayer) init];
  v26 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lowerHalfGradientLayer;
  *(v0 + v26) = [objc_allocWithZone(CAGradientLayer) init];
  v27 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__playPause;
  type metadata accessor for NowPlayingTransportButton();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v27) = [ObjCClassFromMetadata buttonWithType:0];
  v29 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__skipForwardButton;
  *(v0 + v29) = [ObjCClassFromMetadata buttonWithType:0];
  v30 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__skipBackwardButton;
  *(v0 + v30) = [ObjCClassFromMetadata buttonWithType:0];
  v31 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__toPlayInAudiobook;
  *(v0 + v31) = [objc_allocWithZone(UILabel) init];
  v32 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__mainViewContainer;
  *(v0 + v32) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v33 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__transportSubcontainer;
  *(v0 + v33) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v34 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__volumeContainer;
  *(v0 + v34) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v35 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__volumeMaxImageView;
  *(v0 + v35) = [objc_allocWithZone(UIImageView) init];
  v36 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__volumeMinImageView;
  *(v0 + v36) = [objc_allocWithZone(UIImageView) init];
  *(v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_buyButton) = 0;
  v37 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__routeView;
  *(v0 + v37) = [objc_allocWithZone(AVRoutePickerView) init];
  v38 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__volumeView;
  *(v0 + v38) = [objc_allocWithZone(MPVolumeView) init];
  v39 = (v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm);
  v39[22] = 0u;
  v39[23] = 0u;
  v39[20] = 0u;
  v39[21] = 0u;
  v39[18] = 0u;
  v39[19] = 0u;
  v39[16] = 0u;
  v39[17] = 0u;
  v39[14] = 0u;
  v39[15] = 0u;
  v39[12] = 0u;
  v39[13] = 0u;
  v39[10] = 0u;
  v39[11] = 0u;
  v39[8] = 0u;
  v39[9] = 0u;
  v39[6] = 0u;
  v39[7] = 0u;
  v39[4] = 0u;
  v39[5] = 0u;
  v39[2] = 0u;
  v39[3] = 0u;
  *v39 = 0u;
  v39[1] = 0u;
  *(v39 + 383) = 0u;
  v40 = (v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_toPlayInAudiobookTextLong);
  *v40 = 0;
  v40[1] = 0;
  v41 = (v0 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_toPlayInAudiobookTextShort);
  *v41 = 0;
  v41[1] = 0;
  sub_1007A38A4();
  __break(1u);
}

uint64_t type metadata accessor for GetSampleActionItem(uint64_t a1)
{
  result = qword_100ADF838;
  if (!qword_100ADF838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003A02D8(uint64_t a1)
{
  sub_1001FEBC8(319, &unk_100AE9C00, &protocol descriptor for ContextActionDataProtocol);
  if (v1 <= 0x3F)
  {
    sub_1001FEBC8(319, &qword_100AD4AF0, &protocol descriptor for ContextMenuPresentationContextProtocol);
    if (v2 <= 0x3F)
    {
      sub_1001FEB70(319);
      if (v3 <= 0x3F)
      {
        sub_1001FEBC8(319, &qword_100AE9C10, &protocol descriptor for FigaroProviding);
        if (v4 <= 0x3F)
        {
          sub_100797144();
          if (v5 <= 0x3F)
          {
            sub_1001FEBC8(319, &unk_100ADF848, &protocol descriptor for ContextActionIconProviding);
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

uint64_t sub_1003A0444()
{
  v1 = v0;
  v2 = sub_1007971A4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v23 - v7;
  sub_10000E3E8(v0, v0[3]);
  sub_100797784();
  v9 = *(v3 + 104);
  v9(v5, enum case for ContextActionSource.unifiedProductItem(_:), v2);
  v10 = sub_100797184();
  v11 = *(v3 + 8);
  v11(v5, v2);
  v11(v8, v2);
  if ((v10 & 1) == 0)
  {
    v12 = v1[3];
    v23[1] = v1[4];
    sub_10000E3E8(v1, v12);
    sub_100797784();
    v9(v5, enum case for ContextActionSource.productPage(_:), v2);
    v13 = sub_100797184();
    v11(v5, v2);
    v11(v8, v2);
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  sub_10025FCD8(&v24);
  if (!v25)
  {
    sub_100007840(&v24, &qword_100AD4B40, &unk_1008171A0);
    return 0;
  }

  sub_1001FF7C8(&v24, &v26);
  sub_10000E3E8(&v26, v27);
  v14 = *(sub_1007975C4() + 16);

  if (v14 < 2)
  {
    sub_1000074E0(&v26);
    return 0;
  }

  sub_10000E3E8(&v26, v27);
  result = sub_1007975C4();
  v16 = result;
  v17 = result + 32;
  v18 = -*(result + 16);
  v19 = -1;
  while (1)
  {
    v20 = v18 + v19 != -1;
    if (v18 + v19 == -1)
    {
LABEL_10:

LABEL_15:
      sub_1000074E0(&v26);
      return v20;
    }

    if (++v19 >= *(v16 + 16))
    {
      break;
    }

    sub_100009864(v17, &v24);
    sub_10000E3E8(&v24, v25);
    v21 = sub_100799504();
    if (v21 == 2)
    {

      sub_1000074E0(&v24);
      goto LABEL_15;
    }

    v22 = v21;
    v17 += 40;
    result = sub_1000074E0(&v24);
    if ((v22 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void *sub_1003A0780()
{
  sub_10025FCD8(&v40);
  if (!v41)
  {
    sub_100007840(&v40, &qword_100AD4B40, &unk_1008171A0);
    return _swiftEmptyArrayStorage;
  }

  v36 = v0;
  sub_1001FF7C8(&v40, &v42);
  v39 = _swiftEmptyArrayStorage;
  v1 = _swiftEmptyDictionarySingleton;
  v38 = _swiftEmptyDictionarySingleton;
  sub_10000E3E8(&v42, v43);
  v2 = sub_1007975C4();
  v3 = v2;
  v4 = *(v2 + 16);
  if (!v4)
  {
LABEL_24:

    sub_10000E3E8(&v42, v43);
    v29 = sub_1007975C4();
    v30 = v29;
    v31 = *(v29 + 16);
    if (v31)
    {
      v32 = 0;
      v33 = v29 + 32;
      while (v32 < *(v30 + 16))
      {
        sub_100009864(v33, &v40);
        sub_1003A0AD0(&v40, v36, &v42, &v38, &v39);
        ++v32;
        sub_1000074E0(&v40);
        v33 += 40;
        if (v31 == v32)
        {
          goto LABEL_28;
        }
      }

      goto LABEL_32;
    }

LABEL_28:

    v34 = v39;
    sub_1000074E0(&v42);
    return v34;
  }

  v5 = 0;
  v6 = v2 + 32;
  while (v5 < *(v3 + 16))
  {
    sub_100009864(v6, &v40);
    sub_10000E3E8(&v40, v41);
    v8 = sub_1007994F4();
    if (!v9)
    {
      goto LABEL_6;
    }

    v10 = v8;
    v11 = v9;
    v12 = v1[2];
    if (v12)
    {
      v13 = sub_10000E53C(v8, v9);
      if (v14)
      {
        v12 = *(v1[7] + 8 * v13);
      }

      else
      {
        v12 = 0;
      }
    }

    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_33;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = v38;
    v17 = sub_10000E53C(v10, v11);
    v19 = v38[2];
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      goto LABEL_34;
    }

    v23 = v18;
    if (v38[3] < v22)
    {
      sub_1003D4D6C(v22, isUniquelyReferenced_nonNull_native);
      v17 = sub_10000E53C(v10, v11);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_36;
      }

LABEL_19:
      if ((v23 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_4;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_19;
    }

    v28 = v17;
    sub_1002F15B4();
    v17 = v28;
    if ((v23 & 1) == 0)
    {
LABEL_20:
      v1 = v38;
      v38[(v17 >> 6) + 8] |= 1 << v17;
      v25 = (v37[6] + 16 * v17);
      *v25 = v10;
      v25[1] = v11;
      *(v37[7] + 8 * v17) = v15;
      v26 = v37[2];
      v21 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v21)
      {
        goto LABEL_35;
      }

      v37[2] = v27;
      goto LABEL_5;
    }

LABEL_4:
    v7 = v17;

    v1 = v38;
    *(v38[7] + 8 * v7) = v15;
LABEL_5:
    v38 = v1;
LABEL_6:
    ++v5;
    sub_1000074E0(&v40);
    v6 += 40;
    if (v4 == v5)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);

  sub_1000074E0(&v40);
  __break(1u);
LABEL_36:
  result = sub_1007A3B24();
  __break(1u);
  return result;
}

void sub_1003A0AD0(void *a1, void *a2, void *a3, objc_class *a4, uint64_t *a5)
{
  v88 = a5;
  v89 = a3;
  v90 = a4;
  v83 = type metadata accessor for ListenSampleActionItem(0);
  __chkstk_darwin(v83);
  v84 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v82 = &v82 - v9;
  SampleActionItem = type metadata accessor for ReadSampleActionItem(0);
  __chkstk_darwin(SampleActionItem);
  v87 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v85 = &v82 - v12;
  v13 = sub_100797474();
  v93 = *(v13 - 8);
  v94 = v13;
  __chkstk_darwin(v13);
  v92 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v91 = &v82 - v16;
  v17 = sub_1007971A4();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009864(a1, &v95);
  v21 = objc_allocWithZone(sub_100797424());
  sub_100797414();
  sub_10000E3E8(a2, a2[3]);
  v22 = a2;
  sub_100797714();
  v23 = objc_allocWithZone(sub_100797454());
  v24 = sub_100797434();
  (*(v18 + 104))(v20, enum case for ContextActionSource.getSampleActionItem(_:), v17);
  v25 = sub_100797194();
  v27 = v26;
  (*(v18 + 8))(v20, v17);
  v28 = a1;
  v96 = &type metadata for String;
  *&v95 = v25;
  *(&v95 + 1) = v27;
  sub_100797384();
  sub_10000E3E8(v89, v89[3]);
  sub_100797674();
  sub_100797334();
  sub_10000E3E8(a2, a2[3]);
  sub_100797734();
  sub_100797354();
  sub_10000E3E8(a1, a1[3]);
  v29 = sub_1007994F4();
  if (v30)
  {
    v31 = v30;
  }

  else
  {
    v31 = 0xE000000000000000;
  }

  if (*(*v90 + 16))
  {
    if (!v30)
    {
      v29 = 0;
    }

    sub_10000E53C(v29, v31);
  }

  else
  {
  }

  sub_1007973D4();
  v32 = objc_opt_self();
  v33 = v24;
  v34 = [v32 defaultManager];
  v35 = v91;
  sub_100797464();
  v90 = type metadata accessor for ContextActionData();
  v36 = objc_allocWithZone(v90);
  v37 = v92;
  v38 = v93;
  v39 = v94;
  (*(v93 + 16))(v92, v35, v94);
  v40 = sub_1003DC344(v33, v34, v37, v36);
  (*(v38 + 8))(v35, v39);
  if (!v40)
  {

    return;
  }

  sub_10000E3E8(v28, v28[3]);
  sub_1007994E4();
  v41 = sub_100799534();
  v43 = v42;
  if (v41 == sub_100799534() && v43 == v44)
  {

    v45 = v33;
LABEL_15:
    v47 = v85;
    *(v85 + 3) = v90;
    *(v47 + 4) = sub_1003A2170(&qword_100ADF908, type metadata accessor for ContextActionData, &unk_100818764);
    *v47 = v40;
    sub_100009864((v22 + 5), (v47 + 40));
    v48 = v22[10];
    sub_100009864((v22 + 11), (v47 + 88));
    v49 = SampleActionItem;
    v50 = *(SampleActionItem + 32);
    v51 = enum case for ContextActionType.readSample(_:);
    v52 = sub_100797144();
    (*(*(v52 - 8) + 104))(&v47[v50], v51, v52);
    *(v47 + 10) = v48;
    v47[*(v49 + 36)] = 1;
    v53 = v87;
    sub_1003A20A8(v47, v87, type metadata accessor for ReadSampleActionItem);
    v54 = v88;
    v55 = *v88;
    v56 = v48;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v54 = v55;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v55 = sub_10066B4F4(0, v55[2] + 1, 1, v55);
      *v54 = v55;
    }

    v59 = v55[2];
    v58 = v55[3];
    v60 = v59 + 1;
    if (v59 >= v58 >> 1)
    {
      *v54 = sub_10066B4F4((v58 > 1), v59 + 1, 1, v55);
    }

    v61 = type metadata accessor for ReadSampleActionItem;
    sub_1003A2110(v47, type metadata accessor for ReadSampleActionItem);
    v96 = v49;
    v62 = &qword_100AD1EA0;
    v63 = type metadata accessor for ReadSampleActionItem;
    v64 = &unk_100841FD0;
LABEL_20:
    v97 = sub_1003A2170(v62, v63, v64);
    v65 = sub_1002256EC(&v95);
    sub_1003A20A8(v53, v65, v61);
    v66 = *v54;
    *(v66 + 16) = v60;
    sub_1000077C0(&v95, v66 + 40 * v59 + 32);
    sub_1003A2110(v53, v61);
    return;
  }

  v46 = sub_1007A3AB4();

  v45 = v33;
  if (v46)
  {
    goto LABEL_15;
  }

  sub_10000E3E8(v28, v28[3]);
  sub_1007994E4();
  v67 = sub_100799534();
  v69 = v68;
  if (v67 == sub_100799534() && v69 == v70)
  {

LABEL_25:
    v72 = v82;
    *(v82 + 3) = v90;
    *(v72 + 4) = sub_1003A2170(&qword_100ADF908, type metadata accessor for ContextActionData, &unk_100818764);
    *v72 = v40;
    sub_100009864((v22 + 5), (v72 + 40));
    v73 = v22[10];
    sub_100009864((v22 + 11), (v72 + 88));
    v74 = v83;
    v75 = *(v83 + 32);
    v76 = enum case for ContextActionType.audioSample(_:);
    v77 = sub_100797144();
    (*(*(v77 - 8) + 104))(&v72[v75], v76, v77);
    *(v72 + 10) = v73;
    v72[*(v74 + 36)] = 1;
    v53 = v84;
    sub_1003A20A8(v72, v84, type metadata accessor for ListenSampleActionItem);
    v54 = v88;
    v78 = *v88;
    v79 = v73;
    v80 = swift_isUniquelyReferenced_nonNull_native();
    *v54 = v78;
    if ((v80 & 1) == 0)
    {
      v78 = sub_10066B4F4(0, v78[2] + 1, 1, v78);
      *v54 = v78;
    }

    v59 = v78[2];
    v81 = v78[3];
    v60 = v59 + 1;
    if (v59 >= v81 >> 1)
    {
      *v54 = sub_10066B4F4((v81 > 1), v59 + 1, 1, v78);
    }

    v61 = type metadata accessor for ListenSampleActionItem;
    sub_1003A2110(v72, type metadata accessor for ListenSampleActionItem);
    v96 = v74;
    v62 = &qword_100AD1E98;
    v63 = type metadata accessor for ListenSampleActionItem;
    v64 = &unk_10083CF40;
    goto LABEL_20;
  }

  v71 = sub_1007A3AB4();

  if (v71)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1003A1484()
{
  sub_1003A0780();
  swift_getKeyPath();
  sub_1001F1160(&qword_100ADF8F8, &unk_10081FB70);
  sub_100005920(&qword_100ADF900, &qword_100ADF8F8, &unk_10081FB70, &protocol conformance descriptor for [A]);
  return sub_10079E264();
}

uint64_t sub_1003A15B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10000E3E8(a1, a1[3]);
  sub_100796FD4();
  v3 = sub_10000E3E8(v9, v9[3]);
  v4 = __chkstk_darwin(v3);
  (*(v6 + 16))(&v9[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *a2 = sub_10079E1B4();
  return sub_1000074E0(v9);
}