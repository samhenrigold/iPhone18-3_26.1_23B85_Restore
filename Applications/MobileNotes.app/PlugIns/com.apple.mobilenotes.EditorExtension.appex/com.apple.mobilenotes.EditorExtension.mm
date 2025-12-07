id sub_100001FE8()
{
  v0 = objc_opt_self();
  sub_10000AE88(0, &qword_100014E70, ICInlineDrawingTextAttachment_ptr);
  [v0 registerTextAttachmentClass:swift_getObjCClassFromMetadata() forFileType:PKAppleDrawingTypeIdentifier];
  sub_10000AE88(0, &qword_100014E78, ICSystemPaperTextAttachment_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = PKApplePaperTypeIdentifier;

  return [v0 registerTextAttachmentClass:ObjCClassFromMetadata forFileType:v2];
}

uint64_t sub_100002094()
{
  v0 = sub_10000B3E4();
  sub_10000A7B4(v0, qword_100014B50);
  sub_10000A6D0(v0, qword_100014B50);
  return sub_10000B3D4();
}

void sub_10000211C()
{
  sub_10000AE88(0, &qword_100014E80, UIApplication_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = sub_10000B3B4();
  InstanceMethod = class_getInstanceMethod(ObjCClassFromMetadata, v1);
  if (InstanceMethod && (v3 = InstanceMethod, (v4 = class_getInstanceMethod(ObjCClassFromMetadata, "my_openURL:originatingView:options:completionHandler:")) != 0))
  {

    method_exchangeImplementations(v3, v4);
  }

  else
  {
    if (qword_100014B48 != -1)
    {
      swift_once();
    }

    v5 = sub_10000B3E4();
    sub_10000A6D0(v5, qword_100014B50);
    oslog = sub_10000B3C4();
    v6 = sub_10000B554();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v6, "Failed to get method: [UIApplication _openURL:originatingView:options:completionHandler:]", v7, 2u);
    }
  }
}

uint64_t sub_100002290(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

char *sub_100002448(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR___ICEditorExtensionViewController_analyticsController;
  *&v3[v6] = [objc_opt_self() sharedController];
  *&v3[OBJC_IVAR___ICEditorExtensionViewController_noteEditor] = 0;
  v3[OBJC_IVAR___ICEditorExtensionViewController_needToOpenNotesFirst] = 0;
  v3[OBJC_IVAR___ICEditorExtensionViewController_didSetWindowTintColor] = 0;
  *&v3[OBJC_IVAR___ICEditorExtensionViewController_linkContentItem] = 0;
  *&v3[OBJC_IVAR___ICEditorExtensionViewController_imageData] = &_swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR___ICEditorExtensionViewController_webURLs] = &_swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR___ICEditorExtensionViewController_hostConnection] = 0;
  v3[OBJC_IVAR___ICEditorExtensionViewController_suppressLinkBar] = 0;
  v7 = &v3[OBJC_IVAR___ICEditorExtensionViewController_hostBundleIdentifier];
  *v7 = 0;
  v7[1] = 0;
  *&v3[OBJC_IVAR___ICEditorExtensionViewController_feedbackGenerator] = 0;
  if (a2)
  {
    v8 = sub_10000B464();
  }

  else
  {
    v8 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for EditorExtensionViewController();
  v9 = objc_msgSendSuper2(&v12, "initWithNibName:bundle:", v8, a3);

  v10 = *&v9[OBJC_IVAR___ICEditorExtensionViewController_analyticsController];
  [v10 startAppSession];

  return v9;
}

char *sub_10000260C(void *a1)
{
  v3 = OBJC_IVAR___ICEditorExtensionViewController_analyticsController;
  *&v1[v3] = [objc_opt_self() sharedController];
  *&v1[OBJC_IVAR___ICEditorExtensionViewController_noteEditor] = 0;
  v1[OBJC_IVAR___ICEditorExtensionViewController_needToOpenNotesFirst] = 0;
  v1[OBJC_IVAR___ICEditorExtensionViewController_didSetWindowTintColor] = 0;
  *&v1[OBJC_IVAR___ICEditorExtensionViewController_linkContentItem] = 0;
  *&v1[OBJC_IVAR___ICEditorExtensionViewController_imageData] = &_swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR___ICEditorExtensionViewController_webURLs] = &_swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR___ICEditorExtensionViewController_hostConnection] = 0;
  v1[OBJC_IVAR___ICEditorExtensionViewController_suppressLinkBar] = 0;
  v4 = &v1[OBJC_IVAR___ICEditorExtensionViewController_hostBundleIdentifier];
  *v4 = 0;
  v4[1] = 0;
  *&v1[OBJC_IVAR___ICEditorExtensionViewController_feedbackGenerator] = 0;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for EditorExtensionViewController();
  v5 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);
  v6 = v5;
  if (v5)
  {
    v7 = *&v5[OBJC_IVAR___ICEditorExtensionViewController_analyticsController];
    [v7 startAppSession];
  }

  return v6;
}

id sub_100002760()
{
  [*&v0[OBJC_IVAR___ICEditorExtensionViewController_analyticsController] appSessionDidTerminate];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditorExtensionViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000028BC()
{
  v1 = v0;
  v2 = sub_10000A4D0(&qword_100014E18, &qword_10000BFA0);
  __chkstk_darwin(v2 - 8);
  v4 = aBlock - v3;
  v5 = sub_10000A4D0(&qword_100014E60, &qword_10000BFD8);
  __chkstk_darwin(v5 - 8);
  v7 = aBlock - v6;
  v8 = type metadata accessor for EditorExtensionViewController();
  v81.receiver = v0;
  v81.super_class = v8;
  objc_msgSendSuper2(&v81, "viewDidLoad");
  v9 = [objc_opt_self() sharedInstance];
  v10 = sub_10000B594();

  if ((v10 & 1) == 0)
  {
    sub_10000B504();
    v11 = sub_10000B524();
    (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
    sub_10000B4F4();
    v12 = sub_10000B4E4();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = &protocol witness table for MainActor;
    sub_100003700(0, 0, v7, &unk_10000BFE8, v13);
  }

  v14 = objc_opt_self();
  v15 = sub_10000B464();
  [v14 setCurrentAttributionKey:0 andApp:v15];

  if (qword_100014B68 != -1)
  {
    swift_once();
  }

  v16 = *&v1[OBJC_IVAR___ICEditorExtensionViewController_analyticsController];
  if (v16)
  {
    sub_10000B474();
    sub_10000B334();

    v17 = sub_10000B344();
    v18 = *(v17 - 8);
    v20 = 0;
    if ((*(v18 + 48))(v4, 1, v17) != 1)
    {
      sub_10000B304(v19);
      v20 = v21;
      (*(v18 + 8))(v4, v17);
    }

    [v16 startSessionWithReferralURL:v20 referralApplication:0 startingSessionType:1];
  }

  v22 = objc_opt_self();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10000ADEC;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003BB0;
  aBlock[3] = &unk_100010B20;
  v24 = _Block_copy(aBlock);

  [v22 setOpenURLHandler:v24];
  _Block_release(v24);
  if (qword_100014B40 != -1)
  {
    swift_once();
  }

  IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();
  v26 = ICTK2NoteEditorViewController_ptr;
  if (!IsTextKit2Enabled)
  {
    v26 = ICNoteEditorViewController_ptr;
  }

  v27 = [objc_allocWithZone(*v26) initWithIdentifier:-1 options:3];
  v28 = OBJC_IVAR___ICEditorExtensionViewController_noteEditor;
  v29 = *&v1[OBJC_IVAR___ICEditorExtensionViewController_noteEditor];
  *&v1[OBJC_IVAR___ICEditorExtensionViewController_noteEditor] = v27;
  v30 = v27;

  [v30 setDelegate:v1];
  v31 = *&v1[v28];
  if (!v31)
  {
    goto LABEL_55;
  }

  if (*&v1[OBJC_IVAR___ICEditorExtensionViewController_hostBundleIdentifier + 8])
  {
    v32 = v31;

    v33 = sub_10000B464();
  }

  else
  {
    v34 = v31;
    v33 = 0;
  }

  [v31 setHostBundleIdentifier:v33];

  v35 = *&v1[v28];
  if (!v35)
  {
    goto LABEL_56;
  }

  [v35 setCanShowLinkBar:(v1[OBJC_IVAR___ICEditorExtensionViewController_suppressLinkBar] & 1) == 0];
  v36 = *&v1[v28];
  if (!v36)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v37 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v36];
  [v1 addChildViewController:v37];
  v38 = [v37 view];
  if (!v38)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v39 = v38;
  v40 = [v1 view];
  if (!v40)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v41 = v40;
  [v40 bounds];
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;

  [v39 setFrame:{v43, v45, v47, v49}];
  v50 = [v37 view];

  if (!v50)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  [v50 setTranslatesAutoresizingMaskIntoConstraints:1];

  v51 = [v37 view];
  if (!v51)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  [v51 setAutoresizingMask:18];

  v52 = [v1 view];
  if (!v52)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v53 = v52;
  v54 = [v37 view];

  if (!v54)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  [v53 addSubview:v54];

  [v37 didMoveToParentViewController:v1];
  v55 = objc_opt_self();
  [v55 startSharedContextWithOptions:546];
  v56 = [v55 sharedContext];
  if (!v56)
  {
    if (qword_100014B48 != -1)
    {
      swift_once();
    }

    v72 = sub_10000B3E4();
    sub_10000A6D0(v72, qword_100014B50);
    v73 = sub_10000B3C4();
    v74 = sub_10000B564();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&_mh_execute_header, v73, v74, "No note context; preparing to show alert", v75, 2u);
    }

    goto LABEL_52;
  }

  v57 = v56;
  [v56 addOrDeleteLocalAccountIfNecessary];
  v58 = [v57 managedObjectContext];
  v59 = objc_opt_self();
  if (![v59 hasModernAccountInContext:v58])
  {
LABEL_47:
    if (qword_100014B48 != -1)
    {
      swift_once();
    }

    v76 = sub_10000B3E4();
    sub_10000A6D0(v76, qword_100014B50);
    v77 = sub_10000B3C4();
    v78 = sub_10000B564();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&_mh_execute_header, v77, v78, "No modern account; preparing to show alert", v79, 2u);
    }

LABEL_52:
    v1[OBJC_IVAR___ICEditorExtensionViewController_needToOpenNotesFirst] = 1;
    return;
  }

  v60 = [v59 defaultAccountInContext:v58];
  if (v60)
  {
    goto LABEL_34;
  }

  v61 = [v59 allActiveAccountsInContext:v58];
  sub_10000AE88(0, &qword_100014E68, ICAccount_ptr);
  v62 = sub_10000B4C4();

  if (!(v62 >> 62))
  {
    if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_30;
    }

    goto LABEL_46;
  }

  if (!sub_10000B624())
  {
LABEL_46:

    goto LABEL_47;
  }

LABEL_30:
  if ((v62 & 0xC000000000000001) != 0)
  {
    v63 = sub_10000B604();
    goto LABEL_33;
  }

  if (!*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v63 = *(v62 + 32);
LABEL_33:
  v60 = v63;

LABEL_34:
  v64 = objc_opt_self();
  v65 = [v60 defaultFolder];
  v66 = [v64 newEmptyNoteInFolder:v65];

  [v66 markAsSystemPaperIfNeeded:1];
  [v58 ic_save];
  v67 = *&v1[v28];
  if (!v67)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  [v67 setNote:v66];
  v68 = *&v1[v28];
  if (!v68)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  [v68 startEditing];
  v69 = *&v1[v28];
  if (!v69)
  {
LABEL_66:
    __break(1u);
    return;
  }

  v70 = [v69 eventReporter];
  if (v70)
  {
    v71 = v70;
    [v70 submitNoteCreateEventForModernNote:v66 createApproach:18];
  }
}

uint64_t sub_100003390()
{
  sub_10000B4F4();
  v0[18] = sub_10000B4E4();
  v2 = sub_10000B4D4();
  v0[19] = v2;
  v0[20] = v1;

  return _swift_task_switch(sub_100003424, v2, v1);
}

uint64_t sub_100003424()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[21] = v1;
  v0[2] = v0;
  v0[3] = sub_10000355C;
  v2 = swift_continuation_init();
  v0[17] = sub_10000A4D0(&qword_100014E88, qword_10000C008);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000036CC;
  v0[13] = &unk_100010C10;
  v0[14] = v2;
  [v1 fetchAndCacheAsyncAvailabilities:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000355C()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);

  return _swift_task_switch(sub_100003664, v2, v1);
}

uint64_t sub_100003664()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000036CC(uint64_t a1)
{
  v1 = *sub_10000B158((a1 + 32), *(a1 + 56));

  return _swift_continuation_resume(v1);
}

uint64_t sub_100003700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000A4D0(&qword_100014E60, &qword_10000BFD8);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000AED0(a3, v25 - v10, &qword_100014E60, &qword_10000BFD8);
  v12 = sub_10000B524();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000AF38(v11, &qword_100014E60, &qword_10000BFD8);
  }

  else
  {
    sub_10000B514();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_10000B4D4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_10000B494() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10000AF38(a3, &qword_100014E60, &qword_10000BFD8);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000AF38(a3, &qword_100014E60, &qword_10000BFD8);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_100003A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR___ICEditorExtensionViewController_hostConnection);
    if (v8)
    {
      v9 = [v8 remoteObjectProxy];
      sub_10000B5A4();
      swift_unknownObjectRelease();

      sub_10000A4D0(&qword_100014DD0, &qword_10000BF78);
      if (swift_dynamicCast())
      {
        v11 = v16[6];
        sub_10000B304(v10);
        v13 = v12;
        v14 = swift_allocObject();
        *(v14 + 16) = a2;
        *(v14 + 24) = a3;
        v16[4] = sub_10000AE44;
        v16[5] = v14;
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 1107296256;
        v16[2] = sub_100002290;
        v16[3] = &unk_100010B98;
        v15 = _Block_copy(v16);
        sub_10000AE78(a2, a3);

        [v11 openURL:v13 completion:v15];
        swift_unknownObjectRelease();
        _Block_release(v15);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_100003BB0(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_10000B344();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 32);
  sub_10000B314();
  v12 = _Block_copy(a3);
  if (v12)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v12 = sub_10000B26C;
  }

  else
  {
    v13 = 0;
  }

  v11(v10, v12, v13);
  sub_10000ADF4(v12, v13);

  return (*(v8 + 8))(v10, v7);
}

void sub_100003D54(uint64_t a1)
{
  v17.receiver = v1;
  v17.super_class = type metadata accessor for EditorExtensionViewController();
  objc_msgSendSuper2(&v17, "viewWillLayoutSubviews");
  v2 = OBJC_IVAR___ICEditorExtensionViewController_didSetWindowTintColor;
  if ((*(v1 + OBJC_IVAR___ICEditorExtensionViewController_didSetWindowTintColor) & 1) == 0)
  {
    v3 = [v1 view];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 window];

      if (v5)
      {
        v6 = sub_10000B464();
        v7 = [objc_opt_self() colorNamed:v6];

        [v5 setTintColor:v7];
      }

      v8 = [v1 view];
      if (v8)
      {
        v9 = v8;
        v10 = [v8 window];

        if (v10)
        {
          v11 = sub_10000B464();
          v12 = [v10 valueForKey:v11];

          if (v12)
          {
            sub_10000B5A4();
            swift_unknownObjectRelease();
          }

          else
          {
            *v13 = 0u;
            v14 = 0u;
          }

          v15 = *v13;
          v16 = v14;
          if (*(&v14 + 1))
          {
            sub_10000AE88(0, &qword_100014E58, UIPresentationController_ptr);
            if (swift_dynamicCast())
            {
              [v13[0] setDelegate:v1];
            }

            goto LABEL_15;
          }
        }

        else
        {
          v15 = 0u;
          v16 = 0u;
        }

        sub_10000AF38(&v15, &qword_100014E08, &qword_10000BF98);
LABEL_15:
        *(v1 + v2) = 1;
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_100003FF0(char a1)
{
  v3 = sub_10000A4D0(&qword_100014E20, &qword_10000BFA8);
  __chkstk_darwin(v3 - 8);
  v45 = &v34 - v4;
  v5 = sub_10000B344();
  v6 = *(v5 - 8);
  v43 = v5;
  v44 = v6;
  __chkstk_darwin(v5);
  v42 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EditorExtensionViewController();
  v46.receiver = v1;
  v46.super_class = v8;
  objc_msgSendSuper2(&v46, "viewDidAppear:", a1 & 1);
  if (v1[OBJC_IVAR___ICEditorExtensionViewController_needToOpenNotesFirst] == 1)
  {
    sub_100006EB0();
    return;
  }

  v9 = OBJC_IVAR___ICEditorExtensionViewController_linkContentItem;
  if (*&v1[OBJC_IVAR___ICEditorExtensionViewController_linkContentItem])
  {
    v10 = *&v1[OBJC_IVAR___ICEditorExtensionViewController_noteEditor];
    if (!v10)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    [v10 addSystemPaperLink:? updateFirstResponder:?];
    v11 = *&v1[v9];
    *&v1[v9] = 0;
  }

  v12 = OBJC_IVAR___ICEditorExtensionViewController_imageData;
  if (*(*&v1[OBJC_IVAR___ICEditorExtensionViewController_imageData] + 16))
  {
    v13 = *&v1[OBJC_IVAR___ICEditorExtensionViewController_noteEditor];
    if (!v13)
    {
LABEL_21:
      __break(1u);
      return;
    }

    v14 = v13;

    isa = sub_10000B4B4().super.isa;

    [v14 addSystemPaperImageData:isa updateFirstResponder:1];

    *&v1[v12] = &_swiftEmptyArrayStorage;
  }

  v16 = *&v1[OBJC_IVAR___ICEditorExtensionViewController_webURLs];
  v41 = *(v16 + 16);
  if (v41)
  {
    v34 = OBJC_IVAR___ICEditorExtensionViewController_webURLs;
    v39 = OBJC_IVAR___ICEditorExtensionViewController_noteEditor;
    v40 = SYContentItemSourceIdentifierWeb;
    v38 = v16 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
    v36 = v44 + 8;
    v37 = v44 + 16;

    v18 = 0;
    v35 = v17;
    while (v18 < *(v17 + 16))
    {
      v19 = v1;
      v20 = v43;
      v21 = v44;
      v22 = v42;
      (*(v44 + 16))(v42, v38 + *(v44 + 72) * v18, v43);
      v23 = sub_10000B3A4();
      v24 = *(v23 - 8);
      v25 = v45;
      (*(v24 + 56))(v45, 1, 1, v23);
      v26 = v40;
      sub_10000B304(v27);
      v29 = v28;
      (*(v21 + 8))(v22, v20);
      v30 = 0;
      if ((*(v24 + 48))(v25, 1, v23) != 1)
      {
        v31 = v45;
        v30 = sub_10000B384().super.isa;
        (*(v24 + 8))(v31, v23);
      }

      v32 = [objc_allocWithZone(SYContentItem) initWithDisplayTitle:0 sourceIdentifier:v26 sourceName:0 itemURL:v29 identifier:v30];

      v33 = *&v19[v39];
      if (!v33)
      {
        goto LABEL_19;
      }

      v1 = v19;
      ++v18;
      [v33 addSystemPaperLink:v32 updateFirstResponder:1];

      v17 = v35;
      if (v41 == v18)
      {

        *&v19[v34] = &_swiftEmptyArrayStorage;

        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }
}

void sub_100004464(void *a1)
{
  v2 = sub_10000B424();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000AE88(0, &qword_100014DD8, OS_dispatch_queue_ptr);
  *v5 = sub_10000B574();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = sub_10000B434();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v7 = [a1 userInfo];
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v7;
  v9 = sub_10000B454();

  v21[1] = sub_10000B474();
  v21[2] = v10;
  sub_10000B5E4();
  if (!*(v9 + 16) || (v11 = sub_100009728(v22), (v12 & 1) == 0))
  {

    sub_10000AB78(v22);
LABEL_10:
    v23 = 0u;
    v24 = 0u;
    goto LABEL_11;
  }

  sub_10000A754(*(v9 + 56) + 32 * v11, &v23);
  sub_10000AB78(v22);

  if (!*(&v24 + 1))
  {
LABEL_11:
    sub_10000AF38(&v23, &qword_100014E08, &qword_10000BF98);
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    v14 = v22[0];
    v13 = v22[1];
    v15 = objc_allocWithZone(SYContentItem);
    sub_10000A5D0(v14, v13);
    v20 = sub_100009B1C(v14, v13);
    sub_10000A518(v14, v13);
    if (v20)
    {
      sub_100006870(v20);

      sub_10000A518(v14, v13);
      return;
    }

    sub_10000A518(v14, v13);
  }

LABEL_12:
  if (qword_100014B48 != -1)
  {
LABEL_19:
    swift_once();
  }

  v16 = sub_10000B3E4();
  sub_10000A6D0(v16, qword_100014B50);
  v17 = sub_10000B3C4();
  v18 = sub_10000B544();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Failed to insert link; user activity has no SYContentItem", v19, 2u);
  }
}

uint64_t sub_1000047D4(void *a1)
{
  v2 = sub_10000B424();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000AE88(0, &qword_100014DD8, OS_dispatch_queue_ptr);
  *v5 = sub_10000B574();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = sub_10000B434();
  result = (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v8 = [a1 userInfo];
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = v8;
  v10 = sub_10000B454();

  v14[1] = sub_10000B474();
  v14[2] = v11;
  sub_10000B5E4();
  if (!*(v10 + 16) || (v12 = sub_100009728(v15), (v13 & 1) == 0))
  {

    sub_10000AB78(v15);
LABEL_11:
    v16 = 0u;
    v17 = 0u;
    return sub_10000AF38(&v16, &qword_100014E08, &qword_10000BF98);
  }

  sub_10000A754(*(v10 + 56) + 32 * v12, &v16);
  sub_10000AB78(v15);

  if (!*(&v17 + 1))
  {
    return sub_10000AF38(&v16, &qword_100014E08, &qword_10000BF98);
  }

  sub_10000A4D0(&qword_100014E40, &qword_10000BFC0);
  result = swift_dynamicCast();
  if (result)
  {
    if (*(v15[0] + 16))
    {
      sub_1000069C4(v15[0]);
    }
  }

  return result;
}

uint64_t sub_100004A38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = sub_10000B344();
  v9 = *(v8 - 8);
  v62 = v8;
  v63 = v9;
  v10 = __chkstk_darwin(v8);
  v64 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = v57 - v12;
  v14 = sub_10000B424();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000AE88(0, &qword_100014DD8, OS_dispatch_queue_ptr);
  *v17 = sub_10000B574();
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v18 = sub_10000B434();
  result = (*(v15 + 8))(v17, v14);
  if ((v18 & 1) == 0)
  {
LABEL_56:
    __break(1u);
    return result;
  }

  v20 = &OBJC_CATEGORY_UIApplication___com_apple_mobilenotes_EditorExtension;
  v21 = [a1 userInfo];
  if (!v21)
  {
    goto LABEL_10;
  }

  v22 = v21;
  v23 = sub_10000B454();

  v65 = sub_10000B474();
  v66 = v24;
  sub_10000B5E4();
  if (!*(v23 + 16) || (v25 = sub_100009728(v67), (v26 & 1) == 0))
  {

    sub_10000AB78(v67);
LABEL_10:
    v68 = 0u;
    v69 = 0u;
    goto LABEL_11;
  }

  sub_10000A754(*(v23 + 56) + 32 * v25, &v68);
  sub_10000AB78(v67);

  if (!*(&v69 + 1))
  {
LABEL_11:
    sub_10000AF38(&v68, &qword_100014E08, &qword_10000BF98);
    goto LABEL_12;
  }

  if (swift_dynamicCast() && (v67[0] & 1) != 0)
  {
    sub_1000051BC();
    goto LABEL_39;
  }

LABEL_12:
  v27 = [a1 userInfo];
  if (!v27)
  {
LABEL_37:
    v68 = 0u;
    v69 = 0u;
    goto LABEL_38;
  }

  v28 = v27;
  v29 = sub_10000B454();

  v65 = sub_10000B474();
  v66 = v30;
  sub_10000B5E4();
  if (!*(v29 + 16) || (v31 = sub_100009728(v67), (v32 & 1) == 0))
  {

    sub_10000AB78(v67);
    goto LABEL_37;
  }

  sub_10000A754(*(v29 + 56) + 32 * v31, &v68);
  sub_10000AB78(v67);

  if (!*(&v69 + 1))
  {
LABEL_38:
    sub_10000AF38(&v68, &qword_100014E08, &qword_10000BF98);
    goto LABEL_39;
  }

  sub_10000A4D0(&qword_100014E48, &qword_10000BFC8);
  result = swift_dynamicCast();
  if (result)
  {
    v57[0] = a1;
    v57[1] = v6;
    v33 = v67[0];
    v60 = *(v67[0] + 16);
    if (v60)
    {
      v34 = 0;
      v35 = v62;
      v61 = (v63 + 32);
      v58 = (v63 + 8);
      v59 = v63 + 16;
      v36 = &_swiftEmptyArrayStorage;
      while (1)
      {
        if (v34 >= *(v33 + 16))
        {
          __break(1u);
          goto LABEL_56;
        }

        v37 = (*(v63 + 80) + 32) & ~*(v63 + 80);
        v38 = *(v63 + 72);
        (*(v63 + 16))(v13, v33 + v37 + v38 * v34, v35);
        sub_10000B324();
        if (v39)
        {
          v40 = sub_10000B484();
          v42 = v41;

          if (v40 == 1886680168 && v42 == 0xE400000000000000 || (sub_10000B654() & 1) != 0 || v40 == 0x7370747468 && v42 == 0xE500000000000000)
          {

LABEL_29:
            v43 = *v61;
            (*v61)(v64, v13, v35);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v67[0] = v36;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_100009834(0, v36[2] + 1, 1, v45, v46);
              v36 = v67[0];
            }

            v48 = v36[2];
            v47 = v36[3];
            if (v48 >= v47 >> 1)
            {
              sub_100009834((v47 > 1), v48 + 1, 1, v45, v46);
              v36 = v67[0];
            }

            v36[2] = v48 + 1;
            v49 = v36 + v37 + v48 * v38;
            v35 = v62;
            result = (v43)(v49, v64, v62);
            goto LABEL_20;
          }

          v50 = sub_10000B654();

          if (v50)
          {
            goto LABEL_29;
          }
        }

        result = (*v58)(v13, v35);
LABEL_20:
        if (v60 == ++v34)
        {
          goto LABEL_52;
        }
      }
    }

    v36 = &_swiftEmptyArrayStorage;
LABEL_52:

    if (v36[2])
    {
      sub_100006AF8(v36);
    }

    a1 = v57[0];
    v20 = &OBJC_CATEGORY_UIApplication___com_apple_mobilenotes_EditorExtension;
  }

LABEL_39:
  v51 = [a1 v20[32].name];
  if (!v51)
  {
LABEL_48:
    v68 = 0u;
    v69 = 0u;
    return sub_10000AF38(&v68, &qword_100014E08, &qword_10000BF98);
  }

  v52 = v51;
  v53 = sub_10000B454();

  v65 = sub_10000B474();
  v66 = v54;
  sub_10000B5E4();
  if (!*(v53 + 16) || (v55 = sub_100009728(v67), (v56 & 1) == 0))
  {

    sub_10000AB78(v67);
    goto LABEL_48;
  }

  sub_10000A754(*(v53 + 56) + 32 * v55, &v68);
  sub_10000AB78(v67);

  if (!*(&v69 + 1))
  {
    return sub_10000AF38(&v68, &qword_100014E08, &qword_10000BF98);
  }

  sub_10000A4D0(&qword_100014E40, &qword_10000BFC0);
  result = swift_dynamicCast();
  if (result)
  {
    if (*(v67[0] + 16))
    {
      sub_1000069C4(v67[0]);
    }
  }

  return result;
}

void sub_1000051BC()
{
  v1 = OBJC_IVAR___ICEditorExtensionViewController_suppressLinkBar;
  v0[OBJC_IVAR___ICEditorExtensionViewController_suppressLinkBar] = 1;
  if (![v0 isViewLoaded])
  {
    goto LABEL_4;
  }

  v2 = *&v0[OBJC_IVAR___ICEditorExtensionViewController_noteEditor];
  if (v2)
  {
    [v2 setCanShowLinkBar:(v0[v1] & 1) == 0];
LABEL_4:
    v3 = objc_opt_self();
    sub_100009BDC(&_swiftEmptyArrayStorage);
    isa = sub_10000B444().super.isa;

    v5 = swift_allocObject();
    *(v5 + 16) = v0;
    v8[4] = sub_10000A92C;
    v8[5] = v5;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_1000066E4;
    v8[3] = &unk_1000109B8;
    v6 = _Block_copy(v8);
    v7 = v0;

    [v3 _currentUserActivityUUIDWithOptions:isa completionHandler:v6];
    _Block_release(v6);

    return;
  }

  __break(1u);
}

void sub_10000533C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v33 = a5;
  v7 = sub_10000A4D0(&qword_100014E20, &qword_10000BFA8);
  __chkstk_darwin(v7 - 8);
  v9 = &v32 - v8;
  v10 = sub_10000B3A4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v32 - v15;
  sub_10000AED0(a1, v9, &qword_100014E20, &qword_10000BFA8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10000AF38(v9, &qword_100014E20, &qword_10000BFA8);
    if (qword_100014B48 != -1)
    {
      swift_once();
    }

    v17 = sub_10000B3E4();
    sub_10000A6D0(v17, qword_100014B50);
    swift_errorRetain();
    v18 = sub_10000B3C4();
    v19 = sub_10000B544();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      if (a4)
      {
        swift_errorRetain();
        v22 = _swift_stdlib_bridgeErrorToNSError();
        v23 = v22;
      }

      else
      {
        v22 = 0;
        v23 = 0;
      }

      *(v20 + 4) = v22;
      *v21 = v23;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to get current user activity uuid. Error: %@", v20, 0xCu);
      sub_10000AF38(v21, &qword_100014E00, &qword_10000BF90);
    }
  }

  else
  {
    v24 = *(v11 + 32);
    v24(v16, v9, v10);
    v32 = objc_opt_self();
    isa = sub_10000B384().super.isa;
    (*(v11 + 16))(v14, v16, v10);
    v26 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v27 = (v12 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v28 = swift_allocObject();
    v24((v28 + v26), v14, v10);
    v29 = v33;
    *(v28 + v27) = v33;
    aBlock[4] = sub_10000A9D0;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006658;
    aBlock[3] = &unk_100010A08;
    v30 = _Block_copy(aBlock);
    v31 = v29;

    [v32 _fetchUserActivityWithUUID:isa completionHandler:v30];
    _Block_release(v30);

    (*(v11 + 8))(v16, v10);
  }
}

void sub_100005758(void *a1, uint64_t a2, void *a3, void *a4)
{
  v49 = a4;
  v51 = a3;
  v6 = sub_10000B3A4();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v48 - v11;
  v13 = sub_10000B3F4();
  v50 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000B414();
  __chkstk_darwin(v16);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v48 = v17;
    v20 = a1;
    if (sub_100005ECC())
    {
      sub_10000AE88(0, &qword_100014DD8, OS_dispatch_queue_ptr);
      v21 = sub_10000B574();
      v22 = swift_allocObject();
      v23 = v49;
      *(v22 + 16) = v20;
      *(v22 + 24) = v23;
      aBlock[4] = sub_10000AB04;
      aBlock[5] = v22;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100006614;
      aBlock[3] = &unk_100010A58;
      v24 = _Block_copy(aBlock);
      v25 = v20;
      v26 = v23;

      sub_10000B404();
      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_10000AA7C(&qword_100014DE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10000A4D0(&qword_100014DE8, &qword_10000BF80);
      sub_10000A624();
      sub_10000B5B4();
      sub_10000B584();
      _Block_release(v24);

      (*(v50 + 8))(v15, v13);
      (*(v48 + 8))(v19, v16);
    }

    else
    {
      if (qword_100014B48 != -1)
      {
        swift_once();
      }

      v39 = sub_10000B3E4();
      sub_10000A6D0(v39, qword_100014B50);
      (*(v7 + 16))(v12, v51, v6);
      v40 = sub_10000B3C4();
      v41 = sub_10000B544();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        aBlock[0] = v43;
        *v42 = 136315138;
        sub_10000AA7C(&qword_100014E28, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v44 = sub_10000B644();
        v46 = v45;
        (*(v7 + 8))(v12, v6);
        v47 = sub_100009180(v44, v46, aBlock);

        *(v42 + 4) = v47;
        _os_log_impl(&_mh_execute_header, v40, v41, "Fetched user activity %s, but it was not linkable.", v42, 0xCu);
        sub_10000A708(v43);
      }

      else
      {

        (*(v7 + 8))(v12, v6);
      }
    }
  }

  else
  {
    v27 = a2;
    if (qword_100014B48 != -1)
    {
      swift_once();
    }

    v28 = sub_10000B3E4();
    sub_10000A6D0(v28, qword_100014B50);
    (*(v7 + 16))(v10, v51, v6);
    swift_errorRetain();
    v29 = sub_10000B3C4();
    v30 = sub_10000B544();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      aBlock[0] = v51;
      *v31 = 136315394;
      sub_10000AA7C(&qword_100014E28, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v33 = sub_10000B644();
      v35 = v34;
      (*(v7 + 8))(v10, v6);
      v36 = sub_100009180(v33, v35, aBlock);

      *(v31 + 4) = v36;
      *(v31 + 12) = 2112;
      if (v27)
      {
        swift_errorRetain();
        v37 = _swift_stdlib_bridgeErrorToNSError();
        v38 = v37;
      }

      else
      {
        v37 = 0;
        v38 = 0;
      }

      *(v31 + 14) = v37;
      *v32 = v38;
      _os_log_impl(&_mh_execute_header, v29, v30, "Failed to fetch user activity %s. Error: %@", v31, 0x16u);
      sub_10000AF38(v32, &qword_100014E00, &qword_10000BF90);

      sub_10000A708(v51);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }
  }
}

BOOL sub_100005ECC()
{
  v1 = sub_10000A4D0(&qword_100014E18, &qword_10000BFA0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v40 - v5;
  v7 = [v0 webpageURL];
  if (v7)
  {
    v8 = v7;
    sub_10000B314();

    v9 = sub_10000B344();
    v10 = 1;
    (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
    v11 = v6;
LABEL_5:
    sub_10000AF38(v11, &qword_100014E18, &qword_10000BFA0);
    goto LABEL_6;
  }

  v12 = sub_10000B344();
  v13 = *(*(v12 - 8) + 56);
  v13(v6, 1, 1, v12);
  sub_10000AF38(v6, &qword_100014E18, &qword_10000BFA0);
  v14 = [v0 _canonicalURL];
  if (v14)
  {
    v15 = v14;
    sub_10000B314();

    v10 = 1;
    v13(v4, 0, 1, v12);
    v11 = v4;
    goto LABEL_5;
  }

  v13(v4, 1, 1, v12);
  sub_10000AF38(v4, &qword_100014E18, &qword_10000BFA0);
  v28 = [v0 persistentIdentifier];
  if (!v28)
  {
    goto LABEL_20;
  }

  v29 = v28;
  v30 = sub_10000B474();
  v32 = v31;

  v33 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v33 = v30 & 0xFFFFFFFFFFFFLL;
  }

  if (v33)
  {
    v10 = 1;
  }

  else
  {
LABEL_20:
    v34 = [v0 targetContentIdentifier];
    if (v34)
    {
      v35 = v34;
      v36 = sub_10000B474();
      v38 = v37;

      v39 = HIBYTE(v38) & 0xF;
      if ((v38 & 0x2000000000000000) == 0)
      {
        v39 = v36 & 0xFFFFFFFFFFFFLL;
      }

      v10 = v39 != 0;
    }

    else
    {
      v10 = 0;
    }
  }

LABEL_6:
  v16 = [v0 activityType];
  v17 = sub_10000B474();
  v19 = v18;

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {
    return 0;
  }

  v21 = [v0 activityType];
  v22 = sub_10000B474();
  v24 = v23;

  if (v22 == sub_10000B474() && v24 == v25)
  {

    return 0;
  }

  v26 = sub_10000B654();

  if (v26)
  {
    return 0;
  }

  return v10;
}

void sub_10000627C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A4D0(&qword_100014E20, &qword_10000BFA8);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = *(a2 + OBJC_IVAR___ICEditorExtensionViewController_hostConnection);
  if (!v7 || (v8 = v7, sub_100006464(), v10 = v9, v8, !v10))
  {
  }

  v11 = sub_10000B3A4();
  v12 = *(v11 - 8);
  (*(v12 + 56))(v6, 1, 1, v11);
  v13 = sub_10000B464();

  isa = 0;
  if ((*(v12 + 48))(v6, 1, v11) != 1)
  {
    isa = sub_10000B384().super.isa;
    (*(v12 + 8))(v6, v11);
  }

  v15 = [objc_allocWithZone(SYContentItem) initWithUserActivity:a1 sourceAppID:v13 sourceAppName:0 identifier:isa];

  sub_100006870(v15);
}

uint64_t sub_100006464()
{
  [v0 auditToken];
  v1 = SecTaskCreateWithAuditToken(0, &v14);
  if (v1)
  {
    v2 = v1;
    v3 = SecTaskCopySigningIdentifier(v1, 0);
    if (v3)
    {
      v4 = v3;
      v5 = sub_10000B474();

      return v5;
    }
  }

  if (qword_100014B48 != -1)
  {
    swift_once();
  }

  v7 = sub_10000B3E4();
  sub_10000A6D0(v7, qword_100014B50);
  v8 = v0;
  v9 = sub_10000B3C4();
  v10 = sub_10000B544();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, "Failed to get signing info for connection %@", v11, 0xCu);
    sub_10000AF38(v12, &qword_100014E00, &qword_10000BF90);
  }

  return 0;
}

uint64_t sub_100006614(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_100006658(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1000066E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_10000A4D0(&qword_100014E20, &qword_10000BFA8);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = *(a1 + 32);
  if (a2)
  {
    sub_10000B394();
    v12 = sub_10000B3A4();
    (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  }

  else
  {
    v13 = sub_10000B3A4();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  }

  if (a3)
  {
    v14 = sub_10000B474();
    a3 = v15;
  }

  else
  {
    v14 = 0;
  }

  v16 = a4;
  v11(v10, v14, a3, a4);

  return sub_10000AF38(v10, &qword_100014E20, &qword_10000BFA8);
}

void sub_100006870(void *a1)
{
  v3 = OBJC_IVAR___ICEditorExtensionViewController_suppressLinkBar;
  v1[OBJC_IVAR___ICEditorExtensionViewController_suppressLinkBar] = 1;
  if ([v1 isViewLoaded])
  {
    v4 = *&v1[OBJC_IVAR___ICEditorExtensionViewController_noteEditor];
    if (!v4)
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    [v4 setCanShowLinkBar:(v1[v3] & 1) == 0];
  }

  if (![v1 isViewLoaded])
  {
    goto LABEL_10;
  }

  v5 = OBJC_IVAR___ICEditorExtensionViewController_noteEditor;
  v6 = *&v1[OBJC_IVAR___ICEditorExtensionViewController_noteEditor];
  if (!v6)
  {
    goto LABEL_18;
  }

  if (![v6 isViewLoaded])
  {
    goto LABEL_10;
  }

  v7 = *&v1[v5];
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = [v7 note];
  if (!v8 || (v8, (v1[OBJC_IVAR___ICEditorExtensionViewController_needToOpenNotesFirst] & 1) != 0))
  {
LABEL_10:
    v11 = *&v1[OBJC_IVAR___ICEditorExtensionViewController_linkContentItem];
    *&v1[OBJC_IVAR___ICEditorExtensionViewController_linkContentItem] = a1;
    v9 = a1;

    return;
  }

  v10 = *&v1[v5];
  if (!v10)
  {
LABEL_20:
    __break(1u);
    return;
  }

  [v10 addSystemPaperLink:a1 updateFirstResponder:1];
}

void sub_1000069C4(uint64_t a1)
{
  if (![v1 isViewLoaded])
  {
LABEL_7:
    *&v1[OBJC_IVAR___ICEditorExtensionViewController_imageData] = a1;

    return;
  }

  v3 = OBJC_IVAR___ICEditorExtensionViewController_noteEditor;
  v4 = *&v1[OBJC_IVAR___ICEditorExtensionViewController_noteEditor];
  if (!v4)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (![v4 isViewLoaded])
  {
    goto LABEL_7;
  }

  v5 = *&v1[v3];
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = [v5 note];
  if (!v6)
  {
    goto LABEL_7;
  }

  if (v1[OBJC_IVAR___ICEditorExtensionViewController_needToOpenNotesFirst])
  {
    goto LABEL_7;
  }

  v7 = *&v1[v3];
  if (!v7)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v8 = v7;
  isa = sub_10000B4B4().super.isa;
  [v8 addSystemPaperImageData:isa updateFirstResponder:1];
}

void *sub_100006AF8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000A4D0(&qword_100014E20, &qword_10000BFA8);
  __chkstk_darwin(v4 - 8);
  v6 = v24 - v5;
  v7 = sub_10000B344();
  v8 = *(v7 - 8);
  v30 = v7;
  v31 = v8;
  __chkstk_darwin(v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v2 isViewLoaded])
  {
    v29 = OBJC_IVAR___ICEditorExtensionViewController_noteEditor;
    result = *&v2[OBJC_IVAR___ICEditorExtensionViewController_noteEditor];
    if (result)
    {
      if (![result isViewLoaded])
      {
        goto LABEL_7;
      }

      result = *&v2[v29];
      if (!result)
      {
LABEL_22:
        __break(1u);
        return result;
      }

      v12 = [result note];
      if (!v12)
      {
        goto LABEL_7;
      }

      if (v2[OBJC_IVAR___ICEditorExtensionViewController_needToOpenNotesFirst])
      {
        goto LABEL_7;
      }

      result = *&v2[OBJC_IVAR___ICEditorExtensionViewController_webURLs];
      v28 = result[2];
      if (!v28)
      {
        return result;
      }

      v25 = result + ((*(v31 + 80) + 32) & ~*(v31 + 80));
      v26 = SYContentItemSourceIdentifierWeb;
      v24[1] = v31 + 8;
      v24[2] = v31 + 16;

      v13 = 0;
      v27 = v2;
      v24[0] = result;
      while (v13 < result[2])
      {
        v14 = v30;
        v15 = v31;
        (*(v31 + 16))(v10, &v25[*(v31 + 72) * v13], v30);
        v16 = sub_10000B3A4();
        v17 = *(v16 - 8);
        (*(v17 + 56))(v6, 1, 1, v16);
        v18 = v26;
        sub_10000B304(v19);
        v21 = v20;
        (*(v15 + 8))(v10, v14);
        isa = 0;
        if ((*(v17 + 48))(v6, 1, v16) != 1)
        {
          isa = sub_10000B384().super.isa;
          (*(v17 + 8))(v6, v16);
        }

        v23 = [objc_allocWithZone(SYContentItem) initWithDisplayTitle:0 sourceIdentifier:v18 sourceName:0 itemURL:v21 identifier:isa];

        result = *&v27[v29];
        if (!result)
        {
          goto LABEL_20;
        }

        ++v13;
        [result addSystemPaperLink:v23 updateFirstResponder:1];

        result = v24[0];
        if (v28 == v13)
        {
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_7:
  *&v2[OBJC_IVAR___ICEditorExtensionViewController_webURLs] = a1;
}

void sub_100006EB0()
{
  IsAppleAccountBrandingEnabled = ICInternalSettingsIsAppleAccountBrandingEnabled();
  v2 = [objc_opt_self() mainBundle];
  v3 = "notes.EditorExtension";
  if (IsAppleAccountBrandingEnabled)
  {
    v3 = "alert button title";
    v4._countAndFlagsBits = 0x1000000000000053;
  }

  else
  {
    v4._countAndFlagsBits = 0xD000000000000053;
  }

  v25._countAndFlagsBits = 0x800000010000CFE0;
  v4._object = (v3 | 0x8000000000000000);
  v38.value._countAndFlagsBits = 0;
  v38.value._object = 0;
  v5.super.isa = v2;
  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  sub_10000B2E4(v4, v38, v5, v42, 0xD000000000000033, v25);

  v6 = objc_opt_self();
  v7 = [v6 mainBundle];
  v26._countAndFlagsBits = 0x800000010000D020;
  v35._countAndFlagsBits = 0x6F4E206B63697551;
  v35._object = 0xEB00000000736574;
  v39.value._countAndFlagsBits = 0;
  v39.value._object = 0;
  v8.super.isa = v7;
  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  sub_10000B2E4(v35, v39, v8, v43, 0xD00000000000002DLL, v26);

  v9 = sub_10000B464();

  v10 = sub_10000B464();

  v11 = [objc_opt_self() alertControllerWithTitle:v9 message:v10 preferredStyle:1];

  v12 = [v6 mainBundle];
  v27._countAndFlagsBits = 0x800000010000D050;
  v36._countAndFlagsBits = 0x746F4E206E65704FLL;
  v36._object = 0xEA00000000007365;
  v40.value._countAndFlagsBits = 0;
  v40.value._object = 0;
  v13.super.isa = v12;
  v44._countAndFlagsBits = 0;
  v44._object = 0xE000000000000000;
  sub_10000B2E4(v36, v40, v13, v44, 0xD000000000000027, v27);

  v14 = swift_allocObject();
  swift_unknownObjectUnownedInit();

  v15 = sub_10000B464();

  v33 = sub_10000A8E4;
  v34 = v14;
  aBlock = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_1000077D4;
  v32 = &unk_100010918;
  v16 = _Block_copy(&aBlock);

  v17 = objc_opt_self();
  v18 = [v17 actionWithTitle:v15 style:0 handler:v16];
  _Block_release(v16);

  [v11 addAction:v18];
  v19 = [v6 mainBundle];
  v28._countAndFlagsBits = 0x800000010000D0A0;
  v37._countAndFlagsBits = 0x6C65636E6143;
  v37._object = 0xE600000000000000;
  v41.value._countAndFlagsBits = 0;
  v41.value._object = 0;
  v20.super.isa = v19;
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  sub_10000B2E4(v37, v41, v20, v45, 0xD000000000000012, v28);

  v21 = swift_allocObject();
  swift_unknownObjectUnownedInit();

  v22 = sub_10000B464();

  v33 = sub_10000A8EC;
  v34 = v21;
  aBlock = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_1000077D4;
  v32 = &unk_100010940;
  v23 = _Block_copy(&aBlock);

  v24 = [v17 actionWithTitle:v22 style:1 handler:v23];
  _Block_release(v23);

  [v11 addAction:v24];
  [v0 presentViewController:v11 animated:1 completion:0];
}

uint64_t sub_100007394(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v2 = sub_10000A4D0(&qword_100014E18, &qword_10000BFA0);
  __chkstk_darwin(v2 - 8);
  v4 = &aBlock[-1] - v3;
  v5 = sub_10000B2D4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000B344();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &aBlock[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000B2C4();
  v13 = ICNotesAppURLScheme();
  sub_10000B474();

  sub_10000B2B4();
  sub_10000B2A4();
  result = (*(v10 + 48))(v4, 1, v9);
  if (result != 1)
  {
    (*(v6 + 8))(v8, v5);
    (*(v10 + 32))(v12, v4, v9);
    v15 = v23;
    Strong = swift_unknownObjectUnownedLoadStrong();
    v17 = *&Strong[OBJC_IVAR___ICEditorExtensionViewController_hostConnection];
    if (v17)
    {
      v18 = [v17 remoteObjectProxy];
      sub_10000B5A4();
      swift_unknownObjectRelease();

      sub_10000A4D0(&qword_100014DD0, &qword_10000BF78);
      if ((swift_dynamicCast() & 1) == 0)
      {
        return (*(v10 + 8))(v12, v9);
      }

      v20 = aBlock[6];
      sub_10000B304(v19);
      Strong = v21;
      aBlock[4] = sub_10000A8EC;
      aBlock[5] = v15;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100002290;
      aBlock[3] = &unk_100010968;
      v22 = _Block_copy(aBlock);

      [v20 openURL:Strong completion:v22];
      _Block_release(v22);
      swift_unknownObjectRelease();
    }

    return (*(v10 + 8))(v12, v9);
  }

  __break(1u);
  return result;
}

void sub_100007708(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = *&Strong[OBJC_IVAR___ICEditorExtensionViewController_hostConnection];
  if (v3)
  {
    v4 = [v3 remoteObjectProxy];
    sub_10000B5A4();
    swift_unknownObjectRelease();

    sub_10000A4D0(&qword_100014DD0, &qword_10000BF78);
    if (swift_dynamicCast())
    {
      [v5 dismissViewControllerCancelled:1];
      swift_unknownObjectRelease();
    }
  }

  else
  {
  }
}

void sub_1000077D4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_10000783C()
{
  v1 = *(v0 + OBJC_IVAR___ICEditorExtensionViewController_noteEditor);
  if (v1)
  {
    v2 = [v1 note];
    if (v2)
    {
      v3 = v2;
      if ([v2 isEmpty] && (objc_msgSend(v3, "isDeletedOrInTrash") & 1) == 0)
      {
        [objc_opt_self() deleteEmptyNote:v3];
        v4 = [v3 managedObjectContext];
        [v4 ic_save];
      }
    }
  }

  v5 = [objc_opt_self() sharedContext];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 crossProcessChangeCoordinator];

    [v7 postEditorExtensionDidSaveNotification];
  }

  v8 = OBJC_IVAR___ICEditorExtensionViewController_hostConnection;
  [*(v0 + OBJC_IVAR___ICEditorExtensionViewController_hostConnection) invalidate];
  v9 = *(v0 + v8);
  *(v0 + v8) = 0;

  result = *(v0 + OBJC_IVAR___ICEditorExtensionViewController_analyticsController);
  if (result)
  {

    return [result endSessionSynchronously:0 forSessionType:1 endReason:1];
  }

  return result;
}

id sub_1000079BC()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = [result window];

  if (v3)
  {
    v4 = sub_10000B464();
    v5 = [v3 valueForKey:v4];

    if (v5)
    {
      sub_10000B5A4();
      swift_unknownObjectRelease();
    }

    else
    {
      *v7 = 0u;
      v8 = 0u;
    }

    v9 = *v7;
    v10 = v8;
    if (*(&v8 + 1))
    {
      sub_10000AE88(0, &qword_100014E10, UIView_ptr);
      if (swift_dynamicCast())
      {
        v6 = [v7[0] undoManager];

        return v6;
      }

      return 0;
    }
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  sub_10000AF38(&v9, &qword_100014E08, &qword_10000BF98);
  return 0;
}

void sub_100007BA0(uint64_t a1, uint64_t a2, const char **a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *a3;
    v6 = Strong;
    [Strong v5];
  }
}

uint64_t sub_100007D3C(void *a1)
{
  v2 = v1;
  v4 = sub_10000B3F4();
  v31 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10000B414();
  v7 = *(v30 - 8);
  __chkstk_darwin(v30);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_opt_self();
  v11 = [v10 ic_extensionInterface];
  [a1 setExportedInterface:v11];

  [a1 setExportedObject:v2];
  v12 = [v10 ic_hostInterface];
  [a1 setRemoteObjectInterface:v12];

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = sub_10000A850;
  v37 = v13;
  aBlock = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_100006614;
  v35 = &unk_100010850;
  v14 = _Block_copy(&aBlock);

  [a1 setInvalidationHandler:v14];
  _Block_release(v14);
  [a1 resume];
  v15 = *&v2[OBJC_IVAR___ICEditorExtensionViewController_hostConnection];
  *&v2[OBJC_IVAR___ICEditorExtensionViewController_hostConnection] = a1;
  v16 = a1;

  v17 = sub_100006464();
  v19 = v18;
  v20 = ICSystemPaperViewServiceBundleIdentifier();
  v21 = sub_10000B474();
  v23 = v22;

  if (!v19)
  {

    goto LABEL_8;
  }

  if (v17 != v21 || v19 != v23)
  {
    v24 = sub_10000B654();

    if (v24)
    {

      return 1;
    }

LABEL_8:
    sub_10000AE88(0, &qword_100014DD8, OS_dispatch_queue_ptr);
    v25 = sub_10000B574();
    v26 = swift_allocObject();
    v26[2] = v2;
    v26[3] = v17;
    v26[4] = v19;
    v36 = sub_10000A898;
    v37 = v26;
    aBlock = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_100006614;
    v35 = &unk_1000108A0;
    v27 = _Block_copy(&aBlock);
    v28 = v2;

    sub_10000B404();
    aBlock = &_swiftEmptyArrayStorage;
    sub_10000AA7C(&qword_100014DE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000A4D0(&qword_100014DE8, &qword_10000BF80);
    sub_10000A624();
    sub_10000B5B4();
    sub_10000B584();
    _Block_release(v27);

    (*(v31 + 8))(v6, v4);
    (*(v7 + 8))(v9, v30);
    return 1;
  }

  return 1;
}

uint64_t sub_100008204(uint64_t a1)
{
  v2 = sub_10000B3F4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000B414();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100014B48 != -1)
  {
    swift_once();
  }

  v10 = sub_10000B3E4();
  sub_10000A6D0(v10, qword_100014B50);
  v11 = sub_10000B3C4();
  v12 = sub_10000B534();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Host connection invalidated", v13, 2u);
  }

  sub_10000AE88(0, &qword_100014DD8, OS_dispatch_queue_ptr);
  v14 = sub_10000B574();
  aBlock[4] = sub_10000A8A4;
  aBlock[5] = a1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006614;
  aBlock[3] = &unk_1000108C8;
  v15 = _Block_copy(aBlock);

  sub_10000B404();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000AA7C(&qword_100014DE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000A4D0(&qword_100014DE8, &qword_10000BF80);
  sub_10000A624();
  sub_10000B5B4();
  sub_10000B584();
  _Block_release(v15);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

void sub_100008568(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_10000783C();
  }
}

void sub_1000085BC(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = &a1[OBJC_IVAR___ICEditorExtensionViewController_hostBundleIdentifier];
  *v4 = a2;
  *(v4 + 1) = a3;

  if ([a1 isViewLoaded])
  {
    v5 = *&a1[OBJC_IVAR___ICEditorExtensionViewController_noteEditor];
    if (v5)
    {
      if (*(v4 + 1))
      {
        v6 = v5;

        v8 = sub_10000B464();
      }

      else
      {
        v7 = v5;
        v8 = 0;
      }

      [v5 setHostBundleIdentifier:v8];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100008748(uint64_t a1, unint64_t a2)
{
  v5 = sub_10000B3F4();
  v17 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000B414();
  v8 = *(v16 - 8);
  __chkstk_darwin(v16);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000AE88(0, &qword_100014DD8, OS_dispatch_queue_ptr);
  v11 = sub_10000B574();
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = v2;
  aBlock[4] = sub_10000A5AC;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006614;
  aBlock[3] = &unk_100010800;
  v13 = _Block_copy(aBlock);
  sub_10000A5D0(a1, a2);
  v14 = v2;

  sub_10000B404();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000AA7C(&qword_100014DE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000A4D0(&qword_100014DE8, &qword_10000BF80);
  sub_10000A624();
  sub_10000B5B4();
  sub_10000B584();
  _Block_release(v13);

  (*(v17 + 8))(v7, v5);
  return (*(v8 + 8))(v10, v16);
}

void sub_100008A28(uint64_t a1, unint64_t a2)
{
  if (qword_100014B48 != -1)
  {
    swift_once();
  }

  v4 = sub_10000B3E4();
  sub_10000A6D0(v4, qword_100014B50);
  sub_10000A5D0(a1, a2);
  v5 = sub_10000B3C4();
  v6 = sub_10000B534();
  sub_10000A518(a1, a2);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v38 = v8;
    *v7 = 136315138;
    v9 = sub_10000B354();
    v11 = sub_100009180(v9, v10, &v38);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "got data: %s", v7, 0xCu);
    sub_10000A708(v8);
  }

  v12 = objc_opt_self();
  isa = sub_10000B364().super.isa;
  v37 = [v12 ic_userActivityWithData:isa];

  if (v37)
  {
    v14 = [v37 activityType];
    v15 = sub_10000B474();
    v17 = v16;

    if (sub_10000B474() == v15 && v18 == v17)
    {
    }

    else
    {
      v19 = sub_10000B654();

      if ((v19 & 1) == 0)
      {
        if (sub_10000B474() == v15 && v20 == v17)
        {
        }

        else
        {
          v21 = sub_10000B654();

          if ((v21 & 1) == 0)
          {
            if (sub_10000B474() == v15 && v22 == v17)
            {
            }

            else
            {
              v27 = sub_10000B654();

              if ((v27 & 1) == 0)
              {
                v28 = v37;
                v37 = sub_10000B3C4();
                v29 = sub_10000B544();

                if (os_log_type_enabled(v37, v29))
                {
                  v30 = swift_slowAlloc();
                  v31 = swift_slowAlloc();
                  v38 = v31;
                  *v30 = 136315138;
                  v32 = [v28 activityType];
                  v33 = sub_10000B474();
                  v35 = v34;

                  v36 = sub_100009180(v33, v35, &v38);

                  *(v30 + 4) = v36;
                  _os_log_impl(&_mh_execute_header, v37, v29, "Ignoring unexpected user activity type %s", v30, 0xCu);
                  sub_10000A708(v31);

                  return;
                }

                goto LABEL_11;
              }
            }

            sub_100004A38(v37, v23, v24, v25, v26);
LABEL_11:

            return;
          }
        }

        sub_1000047D4(v37);
        goto LABEL_11;
      }
    }

    sub_100004464(v37);
    goto LABEL_11;
  }
}

uint64_t sub_100008F90(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100009088;

  return v6(a1);
}

uint64_t sub_100009088()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_100009180(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000924C(v11, 0, 0, 1, a1, a2);
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
    sub_10000A754(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000A708(v11);
  return v7;
}

unint64_t sub_10000924C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100009358(a5, a6);
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
    result = sub_10000B614();
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

char *sub_100009358(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000093A4(a1, a2);
  sub_1000094D4(&off_1000107B0);
  return v3;
}

char *sub_1000093A4(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000095C0(v5, 0);
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

  result = sub_10000B614();
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
        v10 = sub_10000B4A4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000095C0(v10, 0);
        result = sub_10000B5F4();
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

uint64_t sub_1000094D4(uint64_t result)
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

  result = sub_100009634(result, v11, 1, v3);
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

void *sub_1000095C0(uint64_t a1, uint64_t a2)
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

  sub_10000A4D0(&qword_100014DF8, &qword_10000BF88);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100009634(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000A4D0(&qword_100014DF8, &qword_10000BF88);
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

unint64_t sub_100009728(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000B5C4(*(v2 + 40));

  return sub_10000976C(a1, v4);
}

unint64_t sub_10000976C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10000AB1C(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_10000B5D4();
      sub_10000AB78(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void *sub_100009834(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_100009854(a1, a2, a3, *v5, a5);
  *v5 = result;
  return result;
}

void *sub_100009854(void *result, int64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = result;
  if (a3)
  {
    v7 = a4[3];
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = a4[2];
  if (v8 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v8;
  }

  if (!v10)
  {
    v14 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000A4D0(&qword_100014E50, &qword_10000BFD0);
  v11 = *(sub_10000B344() - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  result = j__malloc_size(v14);
  if (!v12)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v13) == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_29;
  }

  v14[2] = v9;
  v14[3] = 2 * ((result - v13) / v12);
LABEL_19:
  v16 = *(sub_10000B344() - 8);
  if (v6)
  {
    if (v14 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v14 + v17 >= a4 + v17 + *(v16 + 72) * v9))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v14 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v14;
}

void sub_100009A2C(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, NSURL *x8_0@<X8>)
{
  sub_10000B304(x8_0);
  v9 = v8;
  if (a3)
  {
    v11[4] = a3;
    v11[5] = a4;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_100002290;
    v11[3] = &unk_100010C60;
    v10 = _Block_copy(v11);
  }

  else
  {
    v10 = 0;
  }

  [objc_opt_self() openURL:v9 originatingView:a2 completionHandler:v10];
  _Block_release(v10);
}

id sub_100009B1C(uint64_t a1, uint64_t a2)
{
  isa = sub_10000B364().super.isa;
  v8 = 0;
  v4 = [v2 initWithData:isa error:&v8];

  if (v4)
  {
    v5 = v8;
  }

  else
  {
    v6 = v8;
    sub_10000B2F4();

    swift_willThrow();
  }

  return v4;
}

unint64_t sub_100009BDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000A4D0(&qword_100014E30, &qword_10000BFB0);
    v3 = sub_10000B634();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000AED0(v4, v13, &qword_100014E38, &qword_10000BFB8);
      result = sub_100009728(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10000AB0C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

void sub_100009D18()
{
  if (UIAccessibilityIsShakeToUndoEnabled())
  {
    v1 = sub_1000079BC();
    if (v1)
    {
      v5 = v1;
      if (([v1 canUndo] & 1) != 0 || objc_msgSend(v5, "canRedo"))
      {
        v2 = [objc_allocWithZone(UINotificationFeedbackGenerator) init];
        v3 = *(v0 + OBJC_IVAR___ICEditorExtensionViewController_feedbackGenerator);
        *(v0 + OBJC_IVAR___ICEditorExtensionViewController_feedbackGenerator) = v2;
        v4 = v2;

        if (v4)
        {
          [v4 prepare];
        }
      }
    }
  }
}

void sub_100009DF0()
{
  if (UIAccessibilityIsShakeToUndoEnabled())
  {
    v1 = sub_1000079BC();
    if (v1)
    {
      v32 = v1;
      if (([v1 canUndo] & 1) != 0 || objc_msgSend(v32, "canRedo"))
      {
        v31 = OBJC_IVAR___ICEditorExtensionViewController_feedbackGenerator;
        v2 = *&v0[OBJC_IVAR___ICEditorExtensionViewController_feedbackGenerator];
        if (v2)
        {
          [v2 notificationOccurred:0];
        }

        v3 = [v32 canUndo];
        v4 = &selRef_undoMenuItemTitle;
        if (!v3)
        {
          v4 = &selRef_redoMenuItemTitle;
        }

        v5 = [v32 *v4];
        sub_10000B474();

        if ([v32 canUndo])
        {
          v6 = [objc_opt_self() mainBundle];
          v28._countAndFlagsBits = 0x800000010000D0A0;
          v40._countAndFlagsBits = 1868852821;
          v40._object = 0xE400000000000000;
          v43.value._countAndFlagsBits = 0;
          v43.value._object = 0;
          v7.super.isa = v6;
          v46._countAndFlagsBits = 0;
          v46._object = 0xE000000000000000;
          sub_10000B2E4(v40, v43, v7, v46, 0xD000000000000012, v28);
        }

        if ([v32 canUndo])
        {
          v8 = [v32 redoMenuItemTitle];
          v9 = sub_10000B474();
        }

        else
        {
          v8 = [objc_opt_self() mainBundle];
          v28._countAndFlagsBits = 0x800000010000D0A0;
          v41._countAndFlagsBits = 1868850514;
          v41._object = 0xE400000000000000;
          v44.value._countAndFlagsBits = 0;
          v44.value._object = 0;
          v10.super.isa = v8;
          v47._countAndFlagsBits = 0;
          v47._object = 0xE000000000000000;
          v9 = sub_10000B2E4(v41, v44, v10, v47, 0xD000000000000012, v28);
        }

        v29._object = v9;

        v11 = sub_10000B464();

        v12 = sub_10000B464();
        v13 = [objc_opt_self() alertControllerWithTitle:v11 message:v12 preferredStyle:1];

        v30 = v13;
        if ([v32 canUndo])
        {
          v14 = swift_allocObject();
          swift_unknownObjectWeakInit();

          v15 = sub_10000B464();

          v37 = sub_10000ABF0;
          v38 = v14;
          aBlock = _NSConcreteStackBlock;
          v34 = 1107296256;
          v35 = sub_1000077D4;
          v36 = &unk_100010AD0;
          v16 = _Block_copy(&aBlock);

          v17 = [objc_opt_self() actionWithTitle:v15 style:0 handler:v16];
          _Block_release(v16);

          [v13 addAction:v17];
        }

        else
        {
        }

        if ([v32 canRedo])
        {
          v18 = swift_allocObject();
          swift_unknownObjectWeakInit();

          v19 = sub_10000B464();

          v37 = sub_10000ABCC;
          v38 = v18;
          aBlock = _NSConcreteStackBlock;
          v34 = 1107296256;
          v35 = sub_1000077D4;
          v36 = &unk_100010AA8;
          v20 = _Block_copy(&aBlock);

          v21 = [objc_opt_self() actionWithTitle:v19 style:0 handler:v20];
          _Block_release(v20);

          v22 = v30;
          [v30 addAction:v21];
        }

        else
        {

          v22 = v13;
        }

        v23 = [objc_opt_self() mainBundle];
        v29._countAndFlagsBits = 0x800000010000D0A0;
        v42._countAndFlagsBits = 0x6C65636E6143;
        v42._object = 0xE600000000000000;
        v45.value._countAndFlagsBits = 0;
        v45.value._object = 0;
        v24.super.isa = v23;
        v48._countAndFlagsBits = 0;
        v48._object = 0xE000000000000000;
        sub_10000B2E4(v42, v45, v24, v48, 0xD000000000000012, v29);

        v25 = sub_10000B464();

        v26 = [objc_opt_self() actionWithTitle:v25 style:1 handler:0];

        [v22 addAction:v26];
        [v0 presentViewController:v22 animated:1 completion:0];

        v27 = *&v0[v31];
        *&v0[v31] = 0;
      }

      else
      {
      }
    }
  }
}

uint64_t sub_10000A418(char a1)
{
  result = *(v1 + OBJC_IVAR___ICEditorExtensionViewController_hostConnection);
  if (result)
  {
    v4 = [result remoteObjectProxy];
    sub_10000B5A4();
    swift_unknownObjectRelease();
    sub_10000A4D0(&qword_100014DD0, &qword_10000BF78);
    result = swift_dynamicCast();
    if (result)
    {
      [v5 dismissViewControllerCancelled:a1 & 1];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_10000A4D0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000A518(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10000A56C()
{
  sub_10000A518(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000A5B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000A5D0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_10000A624()
{
  result = qword_100014DF0;
  if (!qword_100014DF0)
  {
    sub_10000A688(&qword_100014DE8, &qword_10000BF80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014DF0);
  }

  return result;
}

uint64_t sub_10000A688(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000A6D0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000A708(void *a1)
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

uint64_t sub_10000A754(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_10000A7B4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10000A818()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000A858()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000A8AC()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000A8F4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000A934()
{
  v1 = sub_10000B3A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_10000A9D0(void *a1, uint64_t a2)
{
  v5 = *(sub_10000B3A4() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100005758(a1, a2, (v2 + v6), v7);
}

uint64_t sub_10000AA7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000AAC4()
{

  return _swift_deallocObject(v0, 32, 7);
}

_OWORD *sub_10000AB0C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000AC14()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000AC4C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000ACF8;

  return sub_100003390();
}

uint64_t sub_10000ACF8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000ADF4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000AE04()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000AE44(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    return v2(result & 1);
  }

  return result;
}

uint64_t sub_10000AE78(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000AE88(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_10000AED0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000A4D0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000AF38(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000A4D0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000AF98()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000AFD0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000B230;

  return sub_100008F90(a1, v4);
}

uint64_t sub_10000B088(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000ACF8;

  return sub_100008F90(a1, v4);
}

void *sub_10000B158(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000B19C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}